<?php

namespace App\Filament\Resources\Orders\Schemas;

use App\Models\Order;
use Filament\Infolists\Components\TextEntry;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;

class OrderInfolist
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('Thông tin đơn hàng')
                    ->schema([
                        TextEntry::make('order_code'),
                        TextEntry::make('user.name')
                            ->label('User')
                            ->placeholder('-'),
                        TextEntry::make('shipping_name'),
                        TextEntry::make('shipping_phone'),
                        TextEntry::make('shipping_email'),
                        TextEntry::make('shipping_address'),
                        TextEntry::make('note')
                            ->placeholder('-')
                            ->columnSpanFull(),
                        TextEntry::make('reason_for_cancellation')
                            ->placeholder('-')
                            ->columnSpanFull(),
                        TextEntry::make('subtotal')
                            ->numeric(),
                        TextEntry::make('shipping_fee')
                            ->numeric(),
                        TextEntry::make('discount_amount')
                            ->numeric(),
                        TextEntry::make('grand_total')
                            ->numeric(),
                        TextEntry::make('status')
                            ->badge(),
                        TextEntry::make('payment_status')
                            ->badge(),
                        TextEntry::make('created_at')
                            ->dateTime()
                            ->placeholder('-'),
                        TextEntry::make('updated_at')
                            ->dateTime()
                            ->placeholder('-'),
                        TextEntry::make('deleted_at')
                            ->dateTime()
                            ->visible(fn(Order $record): bool => $record->trashed()),
                    ])->columnSpanFull(),
            ]);
    }
}
