<x-mail::message>
# Xác thực tài khoản của bạn

Bạn vừa yêu cầu mã xác thực (OTP) để đăng nhập hoặc hoàn tất đăng ký tài khoản tại **{{ config('app.name') }}**. 

Vui lòng sử dụng mã bên dưới để tiếp tục:

<x-mail::panel>
<div style="text-align: center;">
    <span style="font-size: 14px; color: #666; display: block; margin-bottom: 5px;">Mã xác thực của bạn là:</span>
    <strong style="font-size: 32px; letter-spacing: 6px; color: #2d3748;">{{ $otp }}</strong>
</div>
</x-mail::panel>

**Mã này sẽ hết hạn sau 5 phút.**

---

###Lưu ý bảo mật:
* **KHÔNG** chia sẻ mã này với bất kỳ ai, kể cả nhân viên hỗ trợ.
* Nếu bạn không thực hiện yêu cầu này, vui lòng bỏ qua email hoặc [đổi mật khẩu ngay].


Nếu cần trợ giúp, bạn có thể liên hệ với chúng tôi qua email: [{{ config('mail.from.address') }}](mailto:{{ config('mail.from.address') }}).

Trân trọng,<br>
**Đội ngũ {{ config('app.name') }}**
</x-mail::message>