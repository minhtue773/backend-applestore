<?php

namespace App\Services;

use App\Models\Order;
use SePay\Builders\CheckoutBuilder;
use SePay\SePayClient;

class SepayService
{
  protected SePayClient $sepay;

  public function __construct()
  {
    // Khởi tạo Client với Keys lấy từ config/services.php hoặc env()
    $this->sepay = new SePayClient(
      config('services.sepay.merchant_id', env('SEPAY_MERCHANT_ID', '')),
      config('services.sepay.secret_key', env('SEPAY_SECRET_KEY', '')),
      config('services.sepay.env', env('SEPAY_ENV', 'sandbox')) // 'sandbox' hoặc 'production'
    );
  }

  /**
   * Tạo Form HTML thanh toán Sepay dynamic theo Đơn hàng
   */
  public function generateFormHtml(Order $order): string
  {
    // Lấy domain gốc của trang web
    $baseUrl = config('app.frontend_url');

    $checkoutData = CheckoutBuilder::make()
      ->currency('VND')
      ->orderInvoiceNumber($order->order_code ?? 'DH-' . $order->id)
      ->orderAmount((int) $order->grand_total)
      ->operation('PURCHASE')
      ->orderDescription("Thanh toan don hang {$order->order_code}")
      // URL Callback động theo thông tin đơn hàng
      ->successUrl("{$baseUrl}/orders/{$order->id}/payment-callback?status=success")
      ->errorUrl("{$baseUrl}/orders/{$order->id}/payment-callback?status=error")
      ->cancelUrl("{$baseUrl}/orders/{$order->id}/payment-callback?status=cancel")
      ->build();

    return $this->sepay->checkout()->generateFormHtml($checkoutData);
  }
}