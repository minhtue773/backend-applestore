<?php

namespace App\Services;

use App\Filters\FilterPriceBetween;
use App\Models\Product;
use Spatie\QueryBuilder\AllowedFilter;
use Spatie\QueryBuilder\QueryBuilder;

class ProductService
{
  public function getPaginatedProducts(int $perPage = 15)
  {
    return QueryBuilder::for(Product::class)
      ->with('variants')
      ->allowedFilters(
        'name',
        'slug',
        'status',
        AllowedFilter::exact('category_id'),
        AllowedFilter::custom('price_between', new FilterPriceBetween),
        AllowedFilter::callback('q', function ($query, $value) {
          $searchTerm = trim((string) $value);
          if (empty($searchTerm)) {
            return;
          }
          $query->where(function ($q) use ($searchTerm) {
            $q->where('name', 'LIKE', "%{$searchTerm}%")
              ->orWhere('slug', 'LIKE', "%{$searchTerm}%");
          });
        }),
      )
      ->allowedIncludes('category')
      ->allowedSorts('name', 'created_at', 'id')
      ->defaultSort('-created_at')
      ->paginate($perPage);
  }

  public function getProductBySlug(string $slug)
  {
    return QueryBuilder::for(Product::class)
      ->where('slug', $slug)
      ->with(['category', 'variants.attributeValues.attribute'])
      ->firstOrFail();
  }
}
