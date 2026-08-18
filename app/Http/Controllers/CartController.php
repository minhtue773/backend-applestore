<?php

namespace App\Http\Controllers;

use App\Http\Requests\AddToCartRequest;
use App\Http\Requests\UpdateCartItemRequest;
use App\Http\Resources\CartResource;
use App\Services\CartService;
use App\Traits\ApiResponse;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Response;

class CartController extends Controller
{
    use ApiResponse;

    protected CartService $cartService;

    public function __construct(CartService $cartService)
    {
        $this->cartService = $cartService;
    }

    /**
     * GET /api/cart
     */
    public function index(): JsonResponse
    {
        try {
            $cart = $this->cartService->getCart();

            // Eager load relationships để tránh N+1 Query
            $cart->load([
                'items.productVariant.product',
                'items.productVariant.attributeValues.attribute'
            ]);
            return $this->successResponse(new CartResource($cart), 'Lấy giỏ hàng thành công.');
        } catch (\Exception $e) {
            return $this->errorResponse('', $e->getMessage(), Response::HTTP_BAD_REQUEST);
        }
    }

    /**
     * POST /api/cart/items
     */
    public function store(AddToCartRequest $request): JsonResponse
    {
        try {
            $this->cartService->addToCart(
                $request->validated('product_variant_id'),
                $request->validated('quantity', 1)
            );

            // Re-fetch cart đã được load relations
            $cart = $this->cartService->getCart()->load([
                'items.productVariant.product',
                'items.productVariant.attributeValues.attribute'
            ]);
            return $this->successResponse(new CartResource($cart), 'Đã thêm sản phẩm vào giỏ hàng.', Response::HTTP_OK);
        } catch (\Exception $e) {
            return $this->errorResponse('', $e->getMessage(), Response::HTTP_BAD_REQUEST);
        }
    }

    /**
     * PUT/PATCH /api/cart/items/{itemId}
     */
    public function update(UpdateCartItemRequest $request, int $itemId): JsonResponse
    {
        try {
            $this->cartService->updateQuantity(
                $itemId,
                $request->validated('quantity')
            );

            $cart = $this->cartService->getCart()->load([
                'items.productVariant.product',
                'items.productVariant.attributeValues.attribute'
            ]);
            return $this->successResponse(new CartResource($cart), 'Cập nhật giỏ hàng thành công.', Response::HTTP_OK);
        } catch (\Exception $e) {
            return $this->errorResponse('', $e->getMessage(), Response::HTTP_BAD_REQUEST);
        }
    }

    /**
     * DELETE /api/cart/items/{itemId}
     */
    public function destroy(int $itemId): JsonResponse
    {
        try {
            $this->cartService->removeItem($itemId);

            $cart = $this->cartService->getCart()->load([
                'items.productVariant.product',
                'items.productVariant.attributeValues.attribute'
            ]);
            return $this->successResponse(new CartResource($cart), 'Đã xóa sản phẩm khỏi giỏ hàng.', Response::HTTP_OK);
        } catch (\Exception $e) {
            return $this->errorResponse('', $e->getMessage(), Response::HTTP_BAD_REQUEST);
        }
    }

    /**
     * DELETE /api/cart/clear
     */
    public function clear(): JsonResponse
    {
        try {
            $this->cartService->clearCart();
            return $this->successResponse('', 'Đã làm sạch giỏ hàng.', Response::HTTP_OK);
        } catch (\Exception $e) {
            return $this->errorResponse('', $e->getMessage(), Response::HTTP_BAD_REQUEST);
        }
    }
}
