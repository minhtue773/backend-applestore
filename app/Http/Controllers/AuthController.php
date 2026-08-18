<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Mail\SendOtpMail;
use App\Traits\ApiResponse;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Password;
use Illuminate\Support\Str;
use Symfony\Component\HttpFoundation\Response;


class AuthController extends Controller
{
    use ApiResponse;

    /**
     * POST /api/auth/register
     */
    public function register(Request $request): JsonResponse
    {
        $validatedData = $request->validate([
            'name'     => 'required|string|max:255',
            'email'    => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6',
        ]);

        $user = User::create([
            'name'     => $validatedData['name'],
            'email'    => $validatedData['email'],
            'password' => Hash::make($validatedData['password']),
        ]);

        $otp = rand(100000, 999999);

        $user->update([
            'otp_code'         => Hash::make($otp),
            'otp_expires_at'   => now()->addMinutes(5),
            'otp_attempts'     => 0,
            'otp_last_sent_at' => now(),
        ]);

        Mail::to($user->email)->send(new SendOtpMail($otp));

        // Trả về access_token ngay sau khi đăng ký
        $token = $user->createToken('auth_token')->plainTextToken;

        return $this->successResponse([
            'access_token'   => $token,
            'token_type'     => 'Bearer',
            'user'           => $user,
            'email_verified' => $user->hasVerifiedEmail(),
        ], 'Đăng ký tài khoản thành công. Vui lòng kiểm tra email để nhập mã OTP.', Response::HTTP_CREATED);
    }

    /**
     * POST /api/auth/login
     */
    public function login(Request $request): JsonResponse
    {
        $credentials = $request->validate([
            'email'    => 'required|string|email',
            'password' => 'required|string',
        ]);

        if (!Auth::attempt($credentials)) {
            return $this->errorResponse(null, 'Thông tin đăng nhập không chính xác', Response::HTTP_UNAUTHORIZED);
        }

        $user = Auth::user();
        $token = $user->createToken('auth_token')->plainTextToken;

        return $this->successResponse([
            'access_token'   => $token,
            'token_type'     => 'Bearer',
            'user'           => $user,
            'email_verified' => $user->hasVerifiedEmail(),
        ], 'Đăng nhập thành công', Response::HTTP_OK);
    }

    /**
     * POST /api/auth/logout
     */
    public function logout(Request $request): JsonResponse
    {
        $request->user()->tokens()->delete();
        return $this->successResponse(null, 'Đăng xuất thành công', Response::HTTP_OK);
    }

    /**
     * POST /api/auth/password/forgot
     */
    public function forgotPassword(Request $request): JsonResponse
    {
        $request->validate(['email' => 'required|email']);

        $status = Password::sendResetLink([
            'email' => $request->email
        ]);

        if ($status === Password::RESET_LINK_SENT) {
            return $this->successResponse(null, 'Email reset mật khẩu đã được gửi', Response::HTTP_OK);
        }

        return $this->errorResponse(null, 'Không thể gửi email reset mật khẩu', Response::HTTP_BAD_REQUEST);
    }

    /**
     * POST /api/auth/password/reset
     */
    public function resetPassword(Request $request): JsonResponse
    {
        $request->validate([
            'email'    => 'required|email',
            'token'    => 'required',
            'password' => 'required|min:6|confirmed',
        ]);

        $status = Password::reset(
            $request->only('email', 'password', 'password_confirmation', 'token'),
            function ($user, $password) {
                $user->forceFill([
                    'password'       => Hash::make($password),
                    'remember_token' => Str::random(60),
                ])->save();
            }
        );

        return $status === Password::PASSWORD_RESET
            ? $this->successResponse(null, 'Reset mật khẩu thành công', Response::HTTP_OK)
            : $this->errorResponse(null, __($status), Response::HTTP_BAD_REQUEST);
    }

    /**
     * POST /api/auth/email/resend-otp
     */
    public function resendOtp(Request $request): JsonResponse
    {
        $user = $request->user();

        if ($user->hasVerifiedEmail()) {
            return $this->errorResponse(null, 'Email đã được xác thực', Response::HTTP_BAD_REQUEST);
        }

        // Chống spam 60s
        if ($user->otp_last_sent_at && now()->diffInSeconds($user->otp_last_sent_at) < 60) {
            return $this->errorResponse(null, 'Vui lòng đợi 60 giây trước khi thử lại', Response::HTTP_TOO_MANY_REQUESTS);
        }

        $otp = rand(100000, 999999);

        $user->update([
            'otp_code'         => Hash::make($otp),
            'otp_expires_at'   => now()->addMinutes(5),
            'otp_attempts'     => 0,
            'otp_last_sent_at' => now(),
        ]);

        Mail::to($user->email)->send(new SendOtpMail($otp));

        return $this->successResponse(null, 'Mã OTP mới đã được gửi vào email của bạn', Response::HTTP_OK);
    }

    /**
     * POST /api/auth/email/verify-otp
     */
    public function verifyOtp(Request $request): JsonResponse
    {
        $request->validate([
            'otp' => 'required|digits:6',
        ]);

        $user = $request->user();

        if ($user->hasVerifiedEmail()) {
            return $this->errorResponse(null, 'Email đã được xác thực trước đó', Response::HTTP_BAD_REQUEST);
        }

        if (!$user->otp_expires_at) {
            return $this->errorResponse(null, 'Mã OTP không tồn tại hoặc chưa được yêu cầu', Response::HTTP_BAD_REQUEST);
        }

        if (now()->gt($user->otp_expires_at)) {
            return $this->errorResponse(null, 'Mã OTP đã hết hạn', Response::HTTP_BAD_REQUEST);
        }

        if (!Hash::check($request->otp, $user->otp_code)) {
            $user->increment('otp_attempts');

            if ($user->otp_attempts >= 5) {
                return $this->errorResponse(null, 'Bạn đã nhập sai quá 5 lần. Vui lòng yêu cầu gửi lại mã OTP.', Response::HTTP_TOO_MANY_REQUESTS);
            }

            return $this->errorResponse(null, 'Mã OTP không đúng', Response::HTTP_BAD_REQUEST);
        }

        $user->update([
            'email_verified_at' => now(),
            'otp_code'          => null,
            'otp_expires_at'    => null,
            'otp_attempts'      => 0,
            'otp_last_sent_at'  => null,
        ]);

        return $this->successResponse([
            'user'           => $user->fresh(),
            'email_verified' => true,
        ], 'Xác thực email thành công', Response::HTTP_OK);
    }

    /**
     * GET /api/auth/me
     */
    public function me(Request $request): JsonResponse
    {
        return $this->successResponse([
            'user' => $request->user(),
        ], 'Lấy người dùng thành công', Response::HTTP_OK);
    }
}
