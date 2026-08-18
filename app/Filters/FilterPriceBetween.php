<?php

namespace App\Filters;

use Illuminate\Database\Eloquent\Builder;
use Spatie\QueryBuilder\Filters\Filter;

class FilterPriceBetween implements Filter
{
  /**
   * @param Builder $query
   * @param mixed $value
   * @param string $property
   * @return void
   */
  public function __invoke(Builder $query, mixed $value, string $property): void
  {
    // $value có thể là array hoặc chuỗi "min,max"
    $prices = is_array($value) ? $value : explode(',', (string) $value);

    $min = $prices[0] ?? 0;
    $max = $prices[1] ?? null;

    $query->whereHas('variants', function (Builder $q) use ($min, $max) {
      $q->where('price', '>=', $min);
      if (!is_null($max) && $max !== '') {
        $q->where('price', '<=', $max);
      }
    });
  }
}
