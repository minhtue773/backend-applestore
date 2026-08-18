<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Payment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Symfony\Component\HttpFoundation\Response;

/**
 * @ignore
 * 
 */
class SepayWebhookController extends Controller
{
    public function handleIpn(Request $request)
    {
        Log::info('SePay IPN Payload:', $request->all());

        // 1. Lấy thông tin từ Payload thực tế của SePay Sandbox
        $orderInvoiceNumber = $request->input('order.order_invoice_number'); // "ORD-TTQ6OCCYPA"
        $transactionAmount  = (float) $request->input('transaction.transaction_amount'); // "27780000"
        $transactionId      = $request->input('transaction.transaction_id'); // "6a81e9e2c9a02"
        $notificationType   = $request->input('notification_type'); // "ORDER_PAID"

        if ($notificationType !== 'ORDER_PAID') {
            return response()->json(['message' => 'Ignored non-paid notification'], Response::HTTP_OK);
        }

        // 2. Tìm đơn hàng
        $order = Order::where('order_code', $orderInvoiceNumber)->first();

        if (!$order) {
            Log::error("SePay IPN Error: Order {$orderInvoiceNumber} not found");
            return response()->json(['message' => 'Order not found'], Response::HTTP_NOT_FOUND);
        }

        if ($order->payment_status === 'paid') {
            return response()->json(['message' => 'Order already paid'], Response::HTTP_OK);
        }

        DB::beginTransaction();
        try {
            // Cập nhật trạng thái Order
            $order->update([
                'status'         => 'processing',
                'payment_status' => 'paid',
            ]);

            // Cập nhật bản ghi Payment
            Payment::where('order_id', $order->id)->update([
                'status'         => 'successful',
                'transaction_id' => $transactionId,
                'payload'        => json_encode($request->all()),
            ]);

            DB::commit();

            // Phản hồi HTTP 200 ngay lập tức để SePay không bị timeout
            return response()->json(['success' => true, 'message' => 'IPN Processed Successfully'], Response::HTTP_OK);
        } catch (\Exception $e) {
            DB::rollBack();
            Log::error('SePay IPN DB Error: ' . $e->getMessage());
            return response()->json(['message' => 'Server Error'], Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }
}
