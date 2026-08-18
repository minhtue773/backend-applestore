<?php

namespace App\Services;

use App\Models\Category;
use Spatie\QueryBuilder\AllowedFilter;
use Spatie\QueryBuilder\QueryBuilder;

class CategoryService
{
  /**
   * Lấy danh sách danh mục có hỗ trợ Filter, Sort, Include (Spatie)
   */
  public function getAllCategories()
  {
    return QueryBuilder::for(Category::class)
      ->allowedFilters(
        'name',
        'slug',
        AllowedFilter::exact('parent_id'),
      )
      ->allowedIncludes('parent', 'children', 'products')
      ->allowedSorts('name', 'created_at', 'id')
      ->defaultSort('id')
      ->get(); // Sử dụng get() để lấy toàn bộ dữ liệu
  }



  /**
   * Chi tiết danh mục
   */
  public function getCategoryBySlug(string $slug)
  {
    return QueryBuilder::for(Category::class)
      ->where('slug', $slug)
      ->allowedIncludes('parent', 'children')
      ->firstOrFail();
  }
}
