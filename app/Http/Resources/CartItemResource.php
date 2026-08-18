<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CartItemResource extends JsonResource
{
    public function toArray(Request $request): array
    {
        $variant = $this->productVariant;
        $product = $variant?->product;

        $price = (float) ($variant?->sale_price ?? $variant?->price ?? 0);
        $subtotal = $price * $this->quantity;

        return [
            'id'                 => $this->id,
            'product_variant_id' => $this->product_variant_id,
            'quantity'           => $this->quantity,
            'price'              => $price,
            'subtotal'           => $subtotal,

            'variant' => [
                'id'             => $variant?->id,
                'sku'            => $variant?->sku,
                'price'          => (float) $variant?->price,
                'sale_price'     => $variant?->sale_price ? (float) $variant->sale_price : null,
                'stock_quantity' => $variant?->stock_quantity,
                'image'          => $variant?->image ?? $product?->featured_image,
                'product_name'   => $product?->name,
                'product_slug'   => $product?->slug,

                // Load danh sách thuộc tính (VD: Màu: Đỏ, Size: L)
                'attributes'     => $variant && $variant->relationLoaded('attributeValues')
                    ? $variant->attributeValues->map(fn($attr) => [
                        'attribute' => $attr->attribute?->name,
                        'value'     => $attr->value,
                    ])
                    : [],
            ],
        ];
    }
}
