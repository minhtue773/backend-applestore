<?php

namespace App\Mail;

use App\Models\Order;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class OrderUpdateStatus extends Mailable
{
    use Queueable, SerializesModels;
    public Order $order;
    public string $statusVietnamese;

    public function __construct(Order $order)
    {
        $this->order = $order;
        $statuses = [
            'pending'   => 'Chờ xử lý',
            'confirmed' => 'Đã xác nhận',
            'shipping'  => 'Đang giao hàng',
            'completed' => 'Đã hoàn thành',
            'cancelled' => 'Đã hủy',
        ];
        $this->statusVietnamese = $statuses[$order->status] ?? $order->status;
    }

    public function envelope(): Envelope
    {
        return new Envelope(
            subject: 'Cập nhật trạng thái đơn hàng #' . $this->order->order_code,
        );
    }

    public function content(): Content
    {
        return new Content(
            markdown: 'mail.orders.updatestatus',
            with: [
                'statusVietnamese' => $this->statusVietnamese,
            ],
        );
    }
}
