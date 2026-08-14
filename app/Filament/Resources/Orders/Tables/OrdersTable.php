<?php

namespace App\Filament\Resources\Orders\Tables;

use Filament\Actions\ViewAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Filters\TrashedFilter;
use Filament\Tables\Table;

class OrdersTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('order_code')
                    ->searchable(),
                TextColumn::make('shipping_name')
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('shipping_phone')
                    ->searchable(),
                TextColumn::make('shipping_email')
                    ->limit(30)
                    ->searchable(),
                TextColumn::make('shipping_address')
                    ->limit(30)
                    ->searchable()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('subtotal')
                    ->numeric()
                    ->money('VND')
                    ->sortable(),
                TextColumn::make('discount_amount')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('grand_total')
                    ->numeric()
                    ->money('VND')
                    ->sortable(),
                TextColumn::make('status')
                    ->label('Trạng thái')
                    ->badge()
                    ->color(fn(string $state): string => match ($state) {
                        'pending' => 'warning',
                        'confirmed' => 'info',
                        'shipping' => 'primary',
                        'completed' => 'success',
                        'cancelled' => 'danger',
                        default => 'gray',
                    })
                    ->formatStateUsing(fn(string $state): string => match ($state) {
                        'pending' => 'Chờ xử lý',
                        'confirmed' => 'Đã xác nhận',
                        'shipping' => 'Đang giao hàng',
                        'completed' => 'Hoàn thành',
                        'cancelled' => 'Đã hủy',
                        default => $state,
                    }),
                TextColumn::make('payment_status')
                    ->label('Thanh toán')
                    ->badge()
                    ->color(fn(string $state): string => match ($state) {
                        'unpaid' => 'warning',
                        'paid' => 'success',
                        'refunded' => 'danger',
                        default => 'gray',
                    })
                    ->formatStateUsing(fn(string $state): string => match ($state) {
                        'unpaid' => 'Chưa thanh toán',
                        'paid' => 'Đã thanh toán',
                        'refunded' => 'Đã hoàn tiền',
                        default => $state,
                    }),
                TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('deleted_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                TrashedFilter::make(),
                SelectFilter::make('status')
                    ->options([
                        'pending' => 'Chờ xử lý',
                        'confirmed' => 'Đã xác nhận',
                        'shipping' => 'Đang giao hàng',
                        'completed' => 'Hoàn thành',
                        'cancelled' => 'Đã hủy'
                    ]),
                SelectFilter::make('payment_status')
                    ->options([
                        'unpaid' => 'Chưa thanh toán',
                        'paid' => 'Đã thanh toán',
                    ]),
            ])
            ->recordActions([
                ViewAction::make(),
            ]);
    }
}