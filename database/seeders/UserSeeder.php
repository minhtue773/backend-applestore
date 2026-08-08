<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class UserSeeder extends Seeder
{

    public function run(): void
    {
        Faker::create('vi_VN');
        User::factory()->count(100)->create([
            'name' => fn() => fake()->name(),
            'email' => fn() => fake()->unique()->safeEmail(), // Callback giúp gọi hàm unique() 100 lần
            'address' => fn() => fake()->address(),
            'phone' => fn() => fake()->phoneNumber(),
            'password' => Hash::make('password'),
            'role' => 'client',
        ]);
    }
}
