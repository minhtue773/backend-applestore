<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('slug')->unique();
            $table->foreignId('parent_id')->nullable()->constrained('categories')->onDelete('set null');
            $table->timestamps();
            $table->softDeletes();
        });

        // 2. Products
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->foreignId('category_id')->nullable()->constrained()->onDelete('set null');
            $table->string('name');
            $table->string('slug')->unique();
            $table->text('description')->nullable();
            $table->string('status')->default('active'); // active, inactive, draft
            $table->timestamps();
            $table->softDeletes();

            $table->index('category_id');
        });

        // 3. Attributes
        Schema::create('attributes', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('code')->unique();
            $table->timestamps();
        });

        // 4. Attribute Values
        Schema::create('attribute_values', function (Blueprint $table) {
            $table->id();
            $table->foreignId('attribute_id')->constrained()->onDelete('cascade');
            $table->string('value');
            $table->timestamps();
        });

        // 5. Product Variants
        Schema::create('product_variants', function (Blueprint $table) {
            $table->id();
            $table->foreignId('product_id')->constrained()->onDelete('cascade');
            $table->string('sku')->unique();
            $table->decimal('price', 15, 2);
            $table->decimal('sale_price', 15, 2)->nullable();
            $table->unsignedInteger('stock_quantity')->default(0);
            $table->string('image')->nullable();
            $table->string('image_public_id')->nullable();
            $table->timestamps();
            $table->softDeletes();

            $table->index('product_id');
            $table->index('sku');
        });

        // 6. Pivot Variant - Attribute Values
        Schema::create('variant_attribute_values', function (Blueprint $table) {
            $table->foreignId('variant_id')->constrained('product_variants')->onDelete('cascade');
            $table->foreignId('attribute_value_id')->constrained('attribute_values')->onDelete('cascade');
            $table->primary(['variant_id', 'attribute_value_id']);
        });

        // 7. Vouchers / Coupons
        Schema::create('vouchers', function (Blueprint $table) {
            $table->id();
            $table->string('code')->unique(); // VD: SUMMERSALE2026
            $table->string('name');
            $table->enum('type', ['fixed', 'percentage']); // Giảm theo số tiền cố định hoặc %
            $table->decimal('value', 15, 2); // Giá trị giảm (100000 VNĐ hoặc 10%)
            $table->decimal('min_order_value', 15, 2)->default(0); // Giá trị đơn hàng tối thiểu
            $table->decimal('max_discount_amount', 15, 2)->nullable(); // Giảm tối đa (áp dụng cho percentage)

            $table->unsignedInteger('usage_limit')->nullable(); // Tổng số lần cho phép sử dụng
            $table->unsignedInteger('used_count')->default(0); // Số lần đã dùng
            $table->unsignedInteger('user_limit')->default(1); // Số lần tối đa mỗi User được dùng

            $table->timestamp('starts_at')->nullable();
            $table->timestamp('expires_at')->nullable();
            $table->boolean('is_active')->default(true);
            $table->timestamps();
            $table->softDeletes();
        });

        // 8. Carts
        Schema::create('carts', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->nullable()->constrained()->onDelete('cascade');
            $table->string('session_id')->nullable()->index();
            $table->timestamps();
        });

        // 9. Cart Items
        Schema::create('cart_items', function (Blueprint $table) {
            $table->id();
            $table->foreignId('cart_id')->constrained()->onDelete('cascade');
            $table->foreignId('product_variant_id')->constrained('product_variants')->onDelete('cascade');
            $table->unsignedInteger('quantity')->default(1);
            $table->timestamps();
        });

        // 10. Orders
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->string('order_code')->unique();
            $table->foreignId('user_id')->nullable()->constrained()->onDelete('set null');

            // Snapshot thông tin giao hàng
            $table->string('shipping_name');
            $table->string('shipping_phone');
            $table->string('shipping_email');
            $table->string('shipping_address');
            $table->text('note')->nullable();
            $table->text('reason_for_cancellation')->nullable();

            $table->decimal('subtotal', 15, 2);
            $table->decimal('shipping_fee', 15, 2)->default(0);
            $table->decimal('discount_amount', 15, 2)->default(0);
            $table->decimal('grand_total', 15, 2);

            $table->enum('status', ['pending', 'confirmed', 'shipping', 'completed', 'cancelled'])->default('pending');
            $table->enum('payment_status', ['unpaid', 'paid', 'refunded'])->default('unpaid');

            $table->timestamps();
            $table->softDeletes();
        });

        // 11. Order Vouchers (Pivot lưu vết áp dụng giảm giá)
        Schema::create('order_vouchers', function (Blueprint $table) {
            $table->id();
            $table->foreignId('order_id')->constrained()->onDelete('cascade');
            $table->foreignId('voucher_id')->nullable()->constrained()->onDelete('set null');
            $table->string('voucher_code');
            $table->decimal('discount_amount', 15, 2); // Số tiền thực tế voucher giảm cho đơn này
            $table->timestamps();
        });

        // 12. Order Items
        Schema::create('order_items', function (Blueprint $table) {
            $table->id();
            $table->foreignId('order_id')->constrained()->onDelete('cascade');
            $table->foreignId('product_variant_id')->nullable()->constrained('product_variants')->onDelete('set null');

            // Snapshot thông tin sản phẩm lúc đặt
            $table->string('product_name');
            $table->string('variant_sku');
            $table->decimal('price', 15, 2);
            $table->unsignedInteger('quantity');
            $table->decimal('total', 15, 2);

            $table->timestamps();
        });

        // 13. Payments
        Schema::create('payments', function (Blueprint $table) {
            $table->id();
            $table->foreignId('order_id')->constrained()->onDelete('cascade');
            $table->string('payment_method'); // cod, vnpay, momo, paypal, stripe
            $table->string('transaction_id')->nullable()->index();
            $table->decimal('amount', 15, 2);
            $table->enum('status', ['pending', 'successful', 'failed', 'refunded'])->default('pending');
            $table->json('payload')->nullable();
            $table->timestamps();
        });

        // 14. Inventory Logs (Quản lý nhập xuất kho)
        Schema::create('inventory_logs', function (Blueprint $table) {
            $table->id();
            $table->foreignId('product_variant_id')->constrained('product_variants')->onDelete('cascade');
            $table->foreignId('user_id')->nullable()->constrained()->onDelete('set null'); // Người thực hiện (Admin/Nhân viên)
            $table->foreignId('order_id')->nullable()->constrained()->onDelete('cascade'); // Liên kết nếu biến động từ đơn hàng

            $table->integer('quantity'); // Số lượng thay đổi (+10 là nhập, -2 là xuất/bán)
            $table->integer('stock_after'); // Số tồn kho ngay sau thời điểm thay đổi
            $table->string('reason'); // import, order_placed, order_cancelled, manual_adjustment, damaged, return
            $table->text('note')->nullable(); // Ghi chú chi tiết

            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('inventory_logs');
        Schema::dropIfExists('payments');
        Schema::dropIfExists('order_items');
        Schema::dropIfExists('order_vouchers');
        Schema::dropIfExists('orders');
        Schema::dropIfExists('cart_items');
        Schema::dropIfExists('carts');
        Schema::dropIfExists('vouchers');
        Schema::dropIfExists('variant_attribute_values');
        Schema::dropIfExists('product_variants');
        Schema::dropIfExists('attribute_values');
        Schema::dropIfExists('attributes');
        Schema::dropIfExists('products');
        Schema::dropIfExists('categories');
    }
};
