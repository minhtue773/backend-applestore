<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ProductVariantResource extends JsonResource
{
  public function toArray(Request $request): array
  {
    return [
      'id'              => $this->id,
      'sku'             => $this->sku,
      'price'           => (float) $this->price,
      'stock_quantity' => (int) $this->stock_quantity,
      'image'           => $this->image,
      'attribute_values' => AttributeValueResource::collection(
        $this->whenLoaded('attributeValues')
      ),
    ];
  }
}
