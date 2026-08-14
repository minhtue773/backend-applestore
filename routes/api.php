<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CheckoutController;

use Illuminate\Support\Facades\Route;


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
});

// Route::middleware(['auth:sanctum', 'verified'])->group(function () {
//     Route::get('checkout', [CheckoutController::class, 'checkout']);
// });

Route::middleware('auth:sanctum')->prefix('cart')->group(function () {
    Route::get('/', [CartController::class, 'index']);
    Route::post('/add', [CartController::class, 'add']);
    Route::put('/items/{id}', [CartController::class, 'update']);
    Route::delete('/items/{id}', [CartController::class, 'remove']);
    Route::delete('/clear', [CartController::class, 'clear']);
});

Route::get('checkout', [CheckoutController::class, 'checkout']);