<?php

namespace App\Jobs;

use App\Models\ProductVariant;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use CloudinaryLabs\CloudinaryLaravel\Facades\Cloudinary;
use Illuminate\Support\Facades\Log;

class UploadImageToCloudinaryJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public $tries = 3;
    public $backoff = 5;

    public function __construct(
        public ProductVariant $variant,
        public string $imageUrl
    ) {}

    public function handle(): void
    {
        if (!filter_var($this->imageUrl, FILTER_VALIDATE_URL)) {
            Log::warning("URL ảnh không hợp lệ cho Variant ID {$this->variant->id}: {$this->imageUrl}");
            return;
        }

        try {
            // Upload theo v3.x chuẩn đã test thành công
            $response = Cloudinary::uploadApi()->upload($this->imageUrl, [
                'folder' => 'products'
            ]);

            // Cập nhật URL & Public ID trả về dạng array
            $this->variant->update([
                'image'           => $response['secure_url'],
                'image_public_id' => $response['public_id'],
            ]);
        } catch (\Exception $e) {
            Log::error("Upload Cloudinary failed for Variant ID {$this->variant->id}: " . $e->getMessage());
            throw $e;
        }
    }
}
