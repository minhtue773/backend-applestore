<?php

namespace Database\Seeders;

use App\Models\InventoryLog;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\Payment; // Import Model Payment
use App\Models\ProductVariant;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Carbon;

class OrderSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // 1. Lấy danh sách Users & Product Variants hiện có
        $users = User::all();
        $variants = ProductVariant::with('product')->get();

        if ($variants->isEmpty()) {
            $this->command->warn('⚠️ Chưa có ProductVariant nào trong DB! Hãy chạy ProductSeeder trước.');
            return;
        }

        $statuses = ['pending', 'confirmed', 'shipping', 'completed', 'cancelled'];
        $paymentMethods = ['cod', 'vnpay', 'momo'];

        // 2. Tạo 30 đơn hàng mẫu rải rác trong 30 ngày qua
        for ($i = 1; $i <= 30; $i++) {
            $user = $users->random();
            $status = $statuses[array_rand($statuses)];
            $paymentMethod = $paymentMethods[array_rand($paymentMethods)];
            $createdAt = Carbon::now()->subDays(rand(0, 30))->subHours(rand(1, 23));

            // Khai báo đơn hàng ban đầu
            $order = Order::create([
                'order_code'       => 'ORD-' . strtoupper(Carbon::now()->format('Ymd')) . '-' . str_pad($i, 4, '0', STR_PAD_LEFT),
                'user_id'          => $user->id,
                'shipping_name'    => $user->name,
                'shipping_phone'   => '09' . rand(10000000, 99999999),
                'shipping_email'   => $user->email,
                'shipping_address' => rand(1, 100) . ' Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh',
                'subtotal'         => 0,
                'grand_total'      => 0,
                'status'           => $status,
                'created_at'       => $createdAt,
                'updated_at'       => $createdAt,
            ]);

            $subtotal = 0;
            // Chọn ngẫu nhiên từ 1 đến 3 sản phẩm cho mỗi đơn hàng
            $randomVariants = $variants->random(rand(1, 3));

            foreach ($randomVariants as $variant) {
                $quantity = rand(1, 2);
                $price = $variant->sale_price ?? $variant->price;
                $total = $price * $quantity;
                $subtotal += $total;

                // Tạo Chi tiết đơn hàng (OrderItem)
                OrderItem::create([
                    'order_id'           => $order->id,
                    'product_variant_id' => $variant->id,
                    'product_name'       => $variant->product->name,
                    'variant_sku'        => $variant->sku,
                    'price'              => $price,
                    'quantity'           => $quantity,
                    'total'              => $total,
                    'created_at'         => $createdAt,
                    'updated_at'         => $createdAt,
                ]);

                // Tạo Log lịch sử xuất kho (Nếu đơn hàng đã xác nhận/vận chuyển/hoàn thành)
                if (in_array($status, ['confirmed', 'shipping', 'completed'])) {
                    InventoryLog::create([
                        'product_variant_id' => $variant->id,
                        'user_id'            => $user->id,
                        'order_id'           => $order->id,
                        'quantity'           => -$quantity,
                        'stock_after'        => max(0, $variant->stock_quantity - $quantity),
                        'reason'             => 'order_placed',
                        'created_at'         => $createdAt,
                        'updated_at'         => $createdAt,
                    ]);
                }
            }

            // Cập nhật lại tổng tiền cho Đơn hàng
            $order->update([
                'subtotal'    => $subtotal,
                'grand_total' => $subtotal,
            ]);

            // ==========================================
            // 3. TẠO DỮ LIỆU THANH TOÁN (PAYMENT)
            // ==========================================
            $paymentStatus = 'pending';

            if ($status === 'completed') {
                $paymentStatus = 'successful';
            } elseif ($status === 'cancelled') {
                $paymentStatus = rand(0, 1) ? 'failed' : 'refunded';
            } elseif (in_array($status, ['confirmed', 'shipping'])) {
                // Online gateways (VNPAY/MOMO) đã trả tiền trước, COD trả sau
                $paymentStatus = ($paymentMethod === 'cod') ? 'pending' : 'successful';
            }

            Payment::create([
                'order_id'       => $order->id,
                'payment_method' => $paymentMethod, // cod, vnpay, momo
                'transaction_id' => $paymentMethod === 'cod' ? null : 'TXN-' . strtoupper(uniqid()),
                'amount'         => $subtotal,
                'status'         => $paymentStatus, // pending, successful, failed, refunded
                'payload' => $paymentMethod === 'cod' ? null : json_encode([
                    'bank_code' => 'NCB',
                    'card_type' => 'ATM',
                    'response_code' => '00',
                ]),
                'created_at'     => $createdAt,
                'updated_at'     => $createdAt,
            ]);
        }

        $this->command->info('✅ Đã khởi tạo thành công 30 Đơn hàng mẫu kèm Thanh toán (Payment)!');
    }
}
