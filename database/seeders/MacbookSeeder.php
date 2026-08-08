<?php

namespace Database\Seeders;

use App\Jobs\UploadImageToCloudinaryJob;
use App\Models\Attribute;
use App\Models\AttributeValue;
use App\Models\InventoryLog;
use App\Models\Product;
use App\Models\ProductVariant;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class MacbookSeeder extends Seeder
{
    public function run(): void
    {
        $jsonPath = database_path('data/macbook_data.json');

        if (!File::exists($jsonPath)) {
            $this->command->error("File không tồn tại: {$jsonPath}");
            return;
        }

        $jsonData = json_decode(File::get($jsonPath), true);

        DB::transaction(function () use ($jsonData) {

            // 1. Khởi tạo các thuộc tính
            $attributes = [
                'color' => Attribute::firstOrCreate(['code' => 'color'], ['name' => 'Màu sắc']),
                'ssd'   => Attribute::firstOrCreate(['code' => 'ssd'], ['name' => 'Ổ cứng (SSD)']),
                'cpu'   => Attribute::firstOrCreate(['code' => 'cpu'], ['name' => 'CPU']),
                'gpu'   => Attribute::firstOrCreate(['code' => 'gpu'], ['name' => 'GPU']),
                'ram'   => Attribute::firstOrCreate(['code' => 'ram'], ['name' => 'RAM']),
            ];

            foreach ($jsonData as $item) {
                // 2. Tạo Product
                $product = Product::create([
                    'category_id' => $item['category_id'] ?? null,
                    'name'        => $item['product_name'],
                    'slug'        => $item['slug'],
                    'description' => $item['description'] ?? null,
                    'status'      => 'active',
                ]);

                // 3. Duyệt qua các biến thể
                if (!empty($item['variants'])) {
                    foreach ($item['variants'] as $variantData) {

                        // Tạo ProductVariant
                        $variant = ProductVariant::create([
                            'product_id'     => $product->id,
                            'sku'            => $variantData['sku'],
                            'price'          => $variantData['price'],
                            'stock_quantity' => 100,
                            'image'          => $variantData['image'] ?? null,
                        ]);

                        // Định nghĩa giá trị mặc định nếu thiếu trong JSON
                        // Bạn có thể đổi chữ 'Không có' thành bất cứ giá trị nào bạn muốn hiển thị
                        $attributeValuesMap = [
                            'color' => $variantData['color'] ?? 'Mặc định',
                            'ssd'   => $variantData['ssd']   ?? 'Không có',
                            'cpu'   => $variantData['cpu']   ?? 'Không có',
                            'gpu'   => $variantData['gpu']   ?? 'Không có', // Nếu thiếu GPU sẽ tự gán là 'Không có'
                            'ram'   => $variantData['ram']   ?? 'Không có',
                        ];

                        $attributeValueIds = [];

                        // Duyệt qua từng thuộc tính và tạo giá trị (kể cả giá trị mặc định)
                        foreach ($attributes as $key => $attributeObj) {
                            $value = $attributeValuesMap[$key];

                            $attrVal = AttributeValue::firstOrCreate([
                                'attribute_id' => $attributeObj->id,
                                'value'        => $value,
                            ]);

                            $attributeValueIds[] = $attrVal->id;
                        }

                        // Gán tất cả Attribute Values vào Pivot
                        if (!empty($attributeValueIds)) {
                            $variant->attributeValues()->attach($attributeValueIds);
                        }

                        // Dispatch Job upload ảnh
                        if (!empty($variantData['image'])) {
                            UploadImageToCloudinaryJob::dispatch($variant, $variantData['image'])->afterCommit();
                        }

                        // Tạo Log tồn kho
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
