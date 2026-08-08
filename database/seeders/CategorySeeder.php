<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $categories = [
            ['id' => 1, 'name' => 'iPhone', 'slug' => 'dien-thoai'],
            ['id' => 2, 'name' => 'iPad', 'slug' => 'laptop'],
            ['id' => 3, 'name' => 'Macbook', 'slug' => 'tablet'],
            ['id' => 4, 'name' => 'iPhone 13 Series', 'slug' => 'iPhone-13-series', 'parent_id' => 1],
            ['id' => 5, 'name' => 'iPhone 14 Series', 'slug' => 'iPhone-14-series', 'parent_id' => 1],
            ['id' => 6, 'name' => 'iPhone 15 Series', 'slug' => 'iPhone-15-series', 'parent_id' => 1],
            ['id' => 7, 'name' => 'iPhone 16 Series', 'slug' => 'iPhone-16-series', 'parent_id' => 1],
            ['id' => 8, 'name' => 'iPhone 17 Series', 'slug' => 'iPhone-17-series', 'parent_id' => 1],
            ['id' => 9, 'name' => 'iPhone Air Series', 'slug' => 'iPhone-air-series', 'parent_id' => 1],
            ['id' => 10, 'name' => 'iPad Air Series', 'slug' => 'iPad-Air-series', 'parent_id' => 2],
            ['id' => 11, 'name' => 'iPad Mini Series', 'slug' => 'iPad-Mini-series', 'parent_id' => 2],
            ['id' => 12, 'name' => 'iPad Pro Series', 'slug' => 'iPad-Pro-series', 'parent_id' => 2],
            ['id' => 13, 'name' => 'Macbook Air Series', 'slug' => 'Macbook-Air-series', 'parent_id' => 3],
            ['id' => 14, 'name' => 'Macbook Neo Series', 'slug' => 'Macbook-neo-series', 'parent_id' => 3],
        ];

        foreach ($categories as $category) {
            Category::create($category);
        }
    }
}
