<?php

namespace App\Http\Controllers;

use App\Http\Resources\CategoryResource;
use App\Services\CategoryService;
use App\Traits\ApiResponse;
use Illuminate\Http\JsonResponse;



class CategoryController extends Controller
{

    use ApiResponse;

    public function __construct(
        protected CategoryService $categoryService
    ) {}

    /**
     * GET /api/categories
     */
    public function index(): JsonResponse
    {
        $categories = $this->categoryService->getAllCategories();

        return $this->successResponse(
            CategoryResource::collection($categories),
            'Lấy danh sách danh mục thành công'
        );
    }

    /**
     * GET /api/categories/{slug}
     */
    public function show(string $slug): JsonResponse
    {
        $category = $this->categoryService->getCategoryBySlug($slug);

        return $this->successResponse(
            new CategoryResource($category),
            'Lấy chi tiết danh mục thành công'
        );
    }
}
