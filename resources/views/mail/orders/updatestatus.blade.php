<x-mail::message>
# Cập Nhật Trạng Thái Đơn Hàng

Xin chào **{{ $order->shipping_name ?? 'Khách hàng' }}**,

Đơn hàng **#{{ $order->order_code ?? $order->id }}** của bạn vừa được cập nhật trạng thái mới:

<x-mail::panel>
**Trạng thái hiện tại:** {{ $statusVietnamese ?? 'Đang xử lý' }}
</x-mail::panel>

<x-mail::button :url="'https://localhost:3000/profile/orders/' . $order->id">
Xem Chi Tiết Đơn Hàng
</x-mail::button>

Nếu bạn có bất kỳ thắc mắc nào, xin vui lòng liên hệ với bộ phận hỗ trợ của chúng tôi.

Trân trọng,<br>
**{{ config('app.name') }}**
</x-mail::message>