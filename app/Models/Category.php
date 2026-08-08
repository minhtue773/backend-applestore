<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;

class Category extends Model
{
    use SoftDeletes;

    protected $guarded = [];

    // Danh mục cha
    public function parent(): BelongsTo
    {
        return $this->belongsTo(Category::class, 'parent_id');
    }

    // Danh mục con
    public function children(): HasMany
    {
        return $this->hasMany(Category::class, 'parent_id');
    }

    // Danh sách sản phẩm thuộc danh mục
    public function products(): HasMany
    {
        return $this->hasMany(Product::class);
    }
}
