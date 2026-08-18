<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ProductDetailResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $hasVariants = $this->relationLoaded('variants') && $this->variants->isNotEmpty();
        $firstVariant = $hasVariants ? $this->variants->first() : null;

        $minPrice = null;
        $maxPrice = null;

        if ($hasVariants) {
            $prices = $this->variants->map(fn($v) => (float) ($v->sale_price ?? $v->price));
            $minPrice = $prices->min();
            $maxPrice = $prices->max();
        }

        return [
            'id'             => $this->id,
            'name'           => $this->name,
            'slug'           => $this->slug,
            'featured_image' => $this->featured_image ?? $firstVariant?->image,
            'description'    => $this->description, // Đầy đủ mô tả
            'status'         => $this->status,

            'price_range'    => [
                'min'         => $minPrice,
                'max'         => $maxPrice,
                'is_variable' => $minPrice !== null && $minPrice !== $maxPrice,
            ],

            'category'       => new CategoryResource($this->whenLoaded('category')),

            // Trả về full danh sách biến thể & thuộc tính
            'variants'       => ProductVariantResource::collection($this->whenLoaded('variants')),

            'created_at'     => $this->created_at?->toISOString(),
        ];
    }
}
