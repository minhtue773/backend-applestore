<?php

namespace App\Http\Controllers;

use App\Http\Requests\CheckoutRequest;
use App\Models\Order;
use App\Models\Payment;
use App\Models\Voucher;
use App\Services\CartService;
use App\Services\SepayService;
use App\Traits\ApiResponse;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Symfony\Component\HttpFoundation\Response;

class CheckoutController extends Controller
{
    use ApiResponse;

    protected CartService $cartService;
    protected SepayService $sepayService;

    public function __construct(CartService $cartService, SepayService $sepayService)
    {
        $this->cartService = $cartService;
        $this->sepayService = $sepayService;
    }

    /**
     * POST /api/checkout
     */
    public function process(CheckoutRequest $request): JsonResponse
    {
        $user = $request->user();

        // 1. Lấy giỏ hàng của user
        $cart = $this->cartService->getCart()->load('items.productVariant');

        if ($cart->items->isEmpty()) {
            return $this->errorResponse(null, 'Giỏ hàng của bạn đang trống.', Response::HTTP_BAD_REQUEST);
        }

        // 2. Kiểm tra tồn kho trước khi đặt
        foreach ($cart->items as $item) {
            if (!$item->productVariant || $item->productVariant->stock_quantity < $item->quantity) {
                return $this->errorResponse(
                    null,
                    "Sản phẩm {$item->productVariant->sku} không đủ số lượng trong kho.",
                    Response::HTTP_BAD_REQUEST
                );
            }
        }

        DB::beginTransaction();
        try {
            // 3. Tính toán tiền hàng
            $subtotal = $cart->items->sum(function ($item) {
                $price = $item->productVariant->sale_price ?? $item->productVariant->price;
                return $price * $item->quantity;
            });

            $shippingFee = 0; // Có thể tính phí vận chuyển động ở đây
            $discountAmount = 0;
            $voucherId = null;

            // 4. Xử lý Voucher (nếu có)
            if ($request->filled('voucher_code')) {
                $voucher = Voucher::where('code', $request->voucher_code)
                    ->where('is_active', true)
                    ->first();

                if ($voucher && $subtotal >= $voucher->min_order_value) {
                    $voucherId = $voucher->id;
                    if ($voucher->type === 'percentage') {
                        $discountAmount = ($subtotal * $voucher->value) / 100;
                        if ($voucher->max_discount_amount && $discountAmount > $voucher->max_discount_amount) {
                            $discountAmount = $voucher->max_discount_amount;
                        }
                    } else {
                        $discountAmount = $voucher->value;
                    }
                    $voucher->increment('used_count');
                }
            }

            $grandTotal = max(0, $subtotal + $shippingFee - $discountAmount);

            // 5. Tạo đơn hàng (Order)
            $order = Order::create([
                'order_code'       => 'ORD-' . strtoupper(Str::random(10)),
                'user_id'          => $user->id,
                'shipping_name'    => $request->shipping_name,
                'shipping_phone'   => $request->shipping_phone,
                'shipping_email'   => $request->shipping_email,
                'shipping_address' => $request->shipping_address,
                'note'             => $request->note,
                'subtotal'         => $subtotal,
                'shipping_fee'     => $shippingFee,
                'discount_amount'  => $discountAmount,
                'grand_total'      => $grandTotal,
                'status'           => 'pending',
                'payment_status'   => 'unpaid',
            ]);

            // 6. Lưu Order Items & trừ stock kho
            foreach ($cart->items as $item) {
                $variant = $item->productVariant;
                $price = $variant->sale_price ?? $variant->price;

                $order->items()->create([
                    'product_variant_id' => $variant->id,
                    'product_name'       => $variant->product->name ?? 'Sản phẩm',
                    'variant_sku'        => $variant->sku,
                    'price'              => $price,
                    'quantity'           => $item->quantity,
                    'total'              => $price * $item->quantity,
                ]);

                // Trừ tồn kho & ghi log kho
                $variant->decrement('stock_quantity', $item->quantity);
            }

            // 7. Tạo bản ghi Payment
            $payment = Payment::create([
                'order_id'       => $order->id,
                'payment_method' => $request->payment_method,
                'amount'         => $grandTotal,
                'status'         => 'pending',
            ]);

            // 8. Dọn dẹp giỏ hàng
            $this->cartService->clearCart();

            DB::commit();

            // 9. Xử lý phản hồi theo phương thức thanh toán
            $responseData = [
                'order_id'     => $order->id,
                'order_code'   => $order->order_code,
                'grand_total'  => $grandTotal,
                'payment_method' => $request->payment_method,
            ];

            // Nếu thanh toán bằng SePay -> Tạo HTML Form Checkout
            if ($request->payment_method === 'sepay') {
                $responseData['payment_url_or_form'] = $this->sepayService->generateFormHtml($order);
            }

            return $this->successResponse(
                $responseData,
                'Đặt hàng thành công.',
                Response::HTTP_CREATED
            );
        } catch (\Exception $e) {
            DB::rollBack();
            return $this->errorResponse(
                null,
                'Đã xảy ra lỗi trong quá trình xử lý đơn hàng: ' . $e->getMessage(),
                Response::HTTP_INTERNAL_SERVER_ERROR
            );
        }
    }
}
