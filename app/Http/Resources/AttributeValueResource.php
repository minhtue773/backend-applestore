<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class AttributeValueResource extends JsonResource
{

    public function toArray(Request $request): array
    {
        return [
            'value_id'       => $this->id,
            'value'          => $this->value,
            'attribute_id'   => $this->attribute_id,
            'attribute_name' => $this->whenLoaded('attribute', function () {
                return $this->attribute->name;
            }),
        ];
    }
}
