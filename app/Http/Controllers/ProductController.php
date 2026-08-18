<?php

namespace App\Http\Controllers;

use App\Http\Resources\ProductDetailResource;
use App\Http\Resources\ProductResource;
use App\Services\ProductService;
use App\Traits\ApiResponse;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    use ApiResponse;

    public function __construct(
        protected ProductService $productService
    ) {}

    /**
     * GET /api/products
     */
    public function index(Request $request): JsonResponse
    {
        $perPage = (int) $request->input('per_page', 15);
        $products = $this->productService->getPaginatedProducts($perPage);

        return $this->successResponse([
            'items' => ProductResource::collection($products),
            'meta'  => [
                'current_page' => $products->currentPage(),
                'last_page'    => $products->lastPage(),
                'per_page'     => $products->perPage(),
                'total'        => $products->total(),
            ],
        ], 'Lấy danh sách sản phẩm thành công');
    }

    /**
     * GET /api/products/{slug}
     */
    public function show(string $slug): JsonResponse
    {
        $product = $this->productService->getProductBySlug($slug);

        return $this->successResponse(
            new ProductDetailResource($product),
            'Lấy chi tiết sản phẩm thành công'
        );
    }
}
