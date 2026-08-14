<?php

namespace App\Http\Controllers;

use App\Services\CartService;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class CartController extends Controller
{
    protected CartService $cartService;

    public function __construct(CartService $cartService)
    {
        $this->cartService = $cartService;
    }

    public function index(): JsonResponse
    {
        try {
            $cart = $this->cartService->getCart();

            // Load các mối quan hệ để lấy ảnh, tên sản phẩm và thuộc tính biến thể
            $cart->load([
                'items.productVariant.product',
                'items.productVariant.attributeValues.attribute',
            ]);

            return response()->json([
                'success' => true,
                'data' => $cart,
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => $e->getMessage(),
            ], 400);
        }
    }

    /**
     * Thêm sản phẩm vào giỏ hàng
     */
    public function add(Request $request): JsonResponse
    {
        $request->validate([
            'product_variant_id' => 'required|integer|exists:product_variants,id',
            'quantity' => 'nullable|integer|min:1',
        ]);

        try {
            $cartItem = $this->cartService->addToCart(
                $request->input('product_variant_id'),
                $request->input('quantity', 1)
            );

            return response()->json([
                'success' => true,
                'message' => 'Đã thêm sản phẩm vào giỏ hàng thành công.',
                'data' => $cartItem,
            ], 201);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => $e->getMessage(),
            ], 400);
        }
    }

    /**
     * Cập nhật số lượng của một item trong giỏ
     */
    public function update(Request $request, int $id): JsonResponse
    {
        $request->validate([
            'quantity' => 'required|integer',
        ]);

        try {
            $this->cartService->updateQuantity($id, $request->input('quantity'));

            return response()->json([
                'success' => true,
                'message' => 'Đã cập nhật giỏ hàng thành công.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => $e->getMessage(),
            ], 400);
        }
    }

    /**
     * Xóa 1 item khỏi giỏ hàng
     */
    public function remove(int $id): JsonResponse
    {
        try {
            $this->cartService->removeItem($id);

            return response()->json([
                'success' => true,
                'message' => 'Đã xóa sản phẩm khỏi giỏ hàng.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => $e->getMessage(),
            ], 400);
        }
    }

    /**
     * Xóa toàn bộ giỏ hàng
     */
    public function clear(): JsonResponse
    {
        try {
            $this->cartService->clearCart();

            return response()->json([
                'success' => true,
                'message' => 'Đã làm sạch giỏ hàng.',
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => $e->getMessage(),
            ], 400);
        }
    }
}