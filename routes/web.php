<?php


use App\Models\Order;
use Illuminate\Support\Facades\Route;

Route::get('/test', function () {
    $order = Order::findOrFail(1);
    try {
        $order->status = 'completed';
        $order->save();
    } catch (\Throwable $th) {
        throw $th;
    }

    return 1;
});
