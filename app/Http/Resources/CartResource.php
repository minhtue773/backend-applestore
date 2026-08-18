<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CartResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        $items = $this->whenLoaded('items');

        // Tính tổng tiền & tổng số lượng sản phẩm trong giỏ
        $totalAmount = $items ? $items->sum(function ($item) {
            $price = $item->productVariant?->sale_price ?? $item->productVariant?->price ?? 0;
            return $price * $item->quantity;
        }) : 0;

        $totalQuantity = $items ? $items->sum('quantity') : 0;

        return [
            'id'             => $this->id,
            'total_quantity' => $totalQuantity,
            'total_amount'   => (float) $totalAmount,
            'items'          => CartItemResource::collection($items),
        ];
    }
}
