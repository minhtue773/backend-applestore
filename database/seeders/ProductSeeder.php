<?php

namespace Database\Seeders;

use App\Jobs\UploadImageToCloudinaryJob;
use App\Models\Attribute;
use App\Models\AttributeValue;
use App\Models\InventoryLog;
use App\Models\Product;
use App\Models\ProductVariant;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class ProductSeeder extends Seeder
{

    public function run(): void
    {
        $jsonPath = database_path('data/iphone_data.json');

        if (!File::exists($jsonPath)) {
            $this->command->error("File không tồn tại: {$jsonPath}");
            return;
        }

        $jsonData = json_decode(File::get($jsonPath), true);
        DB::transaction(function () use ($jsonData) {
            // 2. Đảm bảo thuộc tính "Màu sắc" tồn tại trong hệ thống
            $colorAttribute = Attribute::firstOrCreate(
                ['code' => 'color'],
                ['name' => 'Màu sắc']
            );
            $storageAttribute = Attribute::firstOrCreate(
                ['code' => 'storage'],
                ['name' => 'Bộ nhớ']
            );

            foreach ($jsonData as $item) {
                // 3. Tạo Product
                $product = Product::create([
                    'category_id' => $item['category_id'] ?? null,
                    'name'        => $item['product_name'],
                    'slug'        => $item['slug'],
                    'description' => $item['description'] ?? null,
                    'status'      => 'active',
                ]);

                // 4. Duyệt qua danh sách biến thể (variants)
                if (!empty($item['variants'])) {
                    foreach ($item['variants'] as $variantData) {

                        // Tạo hoặc lấy AttributeValue cho Màu sắc (Black, White,...)
                        $colorValue = AttributeValue::firstOrCreate([
                            'attribute_id' => $colorAttribute->id,
                            'value'        => $variantData['color'],
                        ]);

                        $storageAttributeValue = AttributeValue::firstOrCreate([
                            'attribute_id' => $storageAttribute->id,
                            'value'        => $variantData['storage'],
                        ]);

                        // Tạo ProductVariant
                        $variant = ProductVariant::create([
                            'product_id'     => $product->id,
                            'sku'            => $variantData['sku'],
                            'price'          => $variantData['price'],
                            'stock_quantity' => 100, // Khởi tạo số lượng tồn kho mặc định
                            'image'          => $variantData['image'] ?? null,
                        ]);

                        // Gán mối quan hệ Pivot (ProductVariant <-> AttributeValue)
                        $variant->attributeValues()->attach($colorValue->id);
                        $variant->attributeValues()->attach($storageAttributeValue->id);

                        if (!empty($variantData['image'])) {
                            UploadImageToCloudinaryJob::dispatch($variant, $variantData['image'])->afterCommit();
                        }

                        // Tạo log tồn kho ban đầu (Tùy chọn)
                        InventoryLog::create([
                            'product_variant_id' => $variant->id,
                            'user_id'            => null,
                            'quantity'           => 100,
                            'stock_after'        => 100,
                            'reason'             => 'import',
                            'note'               => 'Khởi tạo dữ liệu từ Seeder',
                        ]);
                    }
                }
            }
        });

        $this->command->info('Import dữ liệu sản phẩm thành công!');
    }
}
