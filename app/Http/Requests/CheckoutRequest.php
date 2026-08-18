<?php

namespace App\Http\Requests;

use Illuminate\Contracts\Validation\ValidationRule;
use Illuminate\Foundation\Http\FormRequest;

class CheckoutRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
            'shipping_name'    => ['required', 'string', 'max:255'],
            'shipping_phone'   => ['required', 'string', 'max:20'],
            'shipping_email'   => ['required', 'email', 'max:255'],
            'shipping_address' => ['required', 'string', 'max:500'],
            'payment_method'   => ['required', 'string', 'in:cod,sepay,vnpay,momo'],
            'note'             => ['nullable', 'string', 'max:1000'],
            'voucher_code'     => ['nullable', 'string', 'exists:vouchers,code'],
        ];
    }
}
