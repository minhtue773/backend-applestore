<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\SepayWebhookController;
use Illuminate\Support\Facades\Route;

// Client
Route::prefix('categories')->group(function () {
    Route::get('/', [CategoryController::class, 'index']);
    Route::get('/{slug}', [CategoryController::class, 'show']);
});

Route::prefix('products')->group(function () {
    Route::get('/', [ProductController::class, 'index']);
    Route::get('{slug}', [ProductController::class, 'show']);
});

Route::middleware(['auth:sanctum', 'verified'])->prefix('cart')->group(function () {
    Route::get('/', [CartController::class, 'index']);
    Route::post('/items', [CartController::class, 'store']);
    Route::put('/items/{itemId}', [CartController::class, 'update']);
    Route::delete('/items/{itemId}', [CartController::class, 'destroy']);
    Route::delete('/clear', [CartController::class, 'clear']);
});

Route::middleware(['auth:sanctum', 'verified'])->group(function () {
    Route::post('/checkout', [CheckoutController::class, 'process']);
});
Route::post('/sepay/ipn', [SepayWebhookController::class, 'handleIpn']);

Route::prefix('auth')->group(function () {
    Route::post('/register', [AuthController::class, 'register']);
    Route::post('/login', [AuthController::class, 'login']);
    Route::post('/logout', [AuthController::class, 'logout'])->middleware('auth:sanctum');
    Route::post('/password/forgot', [AuthController::class, 'forgotPassword']);
    Route::post('/password/reset', [AuthController::class, 'resetPassword']);
    Route::middleware('auth:sanctum')->group(function () {
        Route::post('/email/resend-otp', [AuthController::class, 'resendOtp'])
            ->middleware('throttle:3,1');
        Route::post('/email/verify-otp', [AuthController::class, 'verifyOtp']);
    });
    Route::get('/me', [AuthController::class, 'me'])->middleware(['auth:sanctum', 'verified']);
});
