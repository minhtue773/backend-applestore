<?php

namespace App\Traits;

use Illuminate\Http\JsonResponse;

trait ApiResponse
{
  public function successResponse(
    mixed $data = null,
    string $message = 'Success',
    int $code = 200
  ): JsonResponse {
    return response()->json([
      'success' => true,
      'message' => $message,
      'data'    => $data,
    ], $code);
  }

  public function errorResponse(
    mixed $errors = null,
    string $message = 'Error',
    int $code = 400
  ): JsonResponse {
    return response()->json([
      'success' => false,
      'message' => $message,
      'errors'  => $errors,
    ], $code);
  }
}
