<?php

namespace App\Filament\Resources\Users\Schemas;

use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Schemas\Schema;

class UserForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('name')
                    ->required(),
                TextInput::make('email')
                    ->label('Email address')
                    ->email()
                    ->required(),
                DateTimePicker::make('email_verified_at'),
                TextInput::make('phone')
                    ->tel()
                    ->default(null),
                TextInput::make('address')
                    ->default(null),
                TextInput::make('password')
                    ->password()
                    ->required(),
                TextInput::make('avatar')
                    ->default(null),
                TextInput::make('avatar_public_id')
                    ->default(null),
                Select::make('role')
                    ->options(['admin' => 'Admin', 'client' => 'Client'])
                    ->default('client')
                    ->required(),
                TextInput::make('otp_code')
                    ->default(null),
                DateTimePicker::make('otp_expires_at'),
                TextInput::make('otp_attempts')
                    ->required()
                    ->numeric()
                    ->default(0),
                DateTimePicker::make('otp_last_sent_at'),
            ]);
    }
}
