<?php

namespace App\Services;

use App\Models\Cart;
use App\Models\CartItem;
use App\Models\ProductVariant;
use Illuminate\Support\Facades\Auth;

class CartService
{
  /**
   * Lấy hoặc tạo giỏ hàng cho User đang đăng nhập
   */
  public function getCart(): Cart
  {
    $userId = Auth::id();

    if (!$userId) {
      throw new \Exception('Vui lòng đăng nhập để sử dụng giỏ hàng.');
    }

    return Cart::firstOrCreate(['user_id' => $userId]);
  }

  /**
   * Thêm sản phẩm vào giỏ
   */
  public function addToCart(int $productVariantId, int $quantity = 1): CartItem
  {
    if ($quantity <= 0) {
      throw new \Exception('Số lượng thêm vào phải lớn hơn 0.');
    }

    $cart = $this->getCart();
    $variant = ProductVariant::findOrFail($productVariantId);

    if ($variant->stock_quantity < $quantity) {
      throw new \Exception('Số lượng sản phẩm trong kho không đủ.');
    }

    $cartItem = $cart->items()->where('product_variant_id', $productVariantId)->first();

    if ($cartItem) {
      $newQuantity = $cartItem->quantity + $quantity;
      if ($variant->stock_quantity < $newQuantity) {
        throw new \Exception('Số lượng sản phẩm trong kho không đủ.');
      }
      $cartItem->update(['quantity' => $newQuantity]);
    } else {
      $cartItem = $cart->items()->create([
        'product_variant_id' => $productVariantId,
        'quantity' => $quantity,
      ]);
    }

    return $cartItem;
  }

  /**
   * Cập nhật số lượng (Bảo mật: Chỉ cho phép sửa Item thuộc giỏ của User hiện tại)
   */
  public function updateQuantity(int $cartItemId, int $quantity): bool
  {
    if ($quantity <= 0) {
      return $this->removeItem($cartItemId);
    }

    $cart = $this->getCart();

    // Ràng buộc điều kiện item phải thuộc cart của user này
    $cartItem = $cart->items()->with('productVariant')->findOrFail($cartItemId);

    // Lấy thông tin biến thể từ relationship
    $variant = $cartItem->productVariant;

    if ($variant && $variant->stock_quantity < $quantity) {
      throw new \Exception('Số lượng vượt quá tồn kho.');
    }

    return $cartItem->update(['quantity' => $quantity]);
  }

  /**
   * Xóa 1 item (Bảo mật: Chỉ xóa Item thuộc giỏ của User hiện tại)
   */
  public function removeItem(int $cartItemId): bool
  {
    $cart = $this->getCart();
    return (bool) $cart->items()->where('id', $cartItemId)->delete();
  }

  /**
   * Làm sạch giỏ hàng
   */
  public function clearCart(): bool
  {
    $cart = $this->getCart();
    return (bool) $cart->items()->delete();
  }
}