<?php

namespace App\Filament\Resources\Orders\Schemas;

use App\Models\Order;
use Filament\Actions\Action;
use Filament\Infolists\Components\RepeatableEntry;
use Filament\Infolists\Components\TextEntry;
use Filament\Infolists\Components\ViewEntry;
use Filament\Schemas\Components\Actions;
use Filament\Schemas\Components\Grid;
use Filament\Schemas\Components\Group;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;

class OrderInfolist
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Grid::make(3)
                    ->schema([
                        // Cột trái & giữa (Chiếm 2/3 màn hình)
                        Section::make('Tiến trình đơn hàng')
                            ->icon('heroicon-o-clock')
                            ->schema([
                                // Timeline UI
                                ViewEntry::make('status')
                                    ->hiddenLabel()
                                    ->view('filament.infolists.components.order-timeline-actions')
                                    ->columnSpanFull(),

                                // Khai báo các Action nút bấm ngay trong Infolist
                                Actions::make([
                                    Action::make('confirmOrder')
                                        ->label('Xác nhận đơn hàng')
                                        ->color('info')
                                        ->requiresConfirmation()
                                        ->visible(fn($record) => $record->status === 'pending')
                                        ->action(function ($record) {
                                            $record->update(['status' => 'confirmed']);
                                            \Filament\Notifications\Notification::make()->title('Đã xác nhận đơn hàng')->success()->send();
                                        }),

                                    Action::make('shipOrder')
                                        ->label('Giao cho DVVC')
                                        ->color('primary')
                                        ->requiresConfirmation()
                                        ->visible(fn($record) => $record->status === 'confirmed')
                                        ->action(function ($record) {
                                            $record->update(['status' => 'shipping']);
                                            \Filament\Notifications\Notification::make()->title('Đang giao hàng')->success()->send();
                                        }),

                                    Action::make('completeOrder')
                                        ->label('Xác nhận hoàn thành')
                                        ->color('success')
                                        ->requiresConfirmation()
                                        ->visible(fn($record) => $record->status === 'shipping')
                                        ->action(function ($record) {
                                            $record->update(['status' => 'completed']);
                                            \Filament\Notifications\Notification::make()->title('Đơn hàng hoàn thành')->success()->send();
                                        }),

                                    Action::make('cancelOrder')
                                        ->label('Hủy đơn hàng')
                                        ->color('danger')
                                        ->outlined()
                                        ->visible(fn($record) => !in_array($record->status, ['completed', 'cancelled']))
                                        ->form([
                                            \Filament\Forms\Components\Textarea::make('reason_for_cancellation')
                                                ->label('Lý do hủy')
                                                ->required(),
                                        ])
                                        ->action(function (array $data, $record) {
                                            $record->update([
                                                'status' => 'cancelled',
                                                'reason_for_cancellation' => $data['reason_for_cancellation'],
                                            ]);
                                            \Filament\Notifications\Notification::make()->title('Đã hủy đơn hàng')->danger()->send();
                                        }),
                                ])
                                    ->alignment(\Filament\Support\Enums\Alignment::End)
                                    ->columnSpanFull(),
                            ])
                            ->columnSpanFull(),

                        Group::make()
                            ->schema([
                                // Section: Thông tin giao hàng & Người nhận
                                Section::make('Thông tin nhận hàng')
                                    ->icon('heroicon-o-truck')
                                    ->schema([
                                        TextEntry::make('shipping_name')
                                            ->label('Người nhận')
                                            ->icon('heroicon-o-user')
                                            ->weight('bold'),

                                        TextEntry::make('shipping_phone')
                                            ->label('Số điện thoại')
                                            ->icon('heroicon-o-phone')
                                            ->copyable(),

                                        TextEntry::make('shipping_email')
                                            ->label('Email')
                                            ->icon('heroicon-o-envelope')
                                            ->placeholder('-'),

                                        TextEntry::make('user.name')
                                            ->label('Tài khoản đặt hàng')
                                            ->icon('heroicon-o-identification')
                                            ->placeholder('Khách vãng lai'),

                                        TextEntry::make('shipping_address')
                                            ->label('Địa chỉ giao hàng')
                                            ->icon('heroicon-o-map-pin')
                                            ->columnSpanFull(),

                                        TextEntry::make('note')
                                            ->label('Ghi chú của khách')
                                            ->placeholder('Không có ghi chú')
                                            ->columnSpanFull(),

                                        TextEntry::make('reason_for_cancellation')
                                            ->label('Lý do hủy đơn')
                                            ->placeholder('-')
                                            ->color('danger')
                                            ->columnSpanFull()
                                            ->visible(fn(Order $record): bool => !empty($record->reason_for_cancellation)),
                                    ])
                                    ->columns(2),

                                // Section: Thông tin đơn hàng / Sản phẩm
                                Section::make('Chi tiết đơn hàng')
                                    ->icon('heroicon-o-shopping-bag')
                                    ->schema([
                                        RepeatableEntry::make('items')
                                            ->label('Danh sách sản phẩm')
                                            ->schema([
                                                TextEntry::make('variant_sku')
                                                    ->label('SKU'),
                                                TextEntry::make('product_name')
                                                    ->label('Tên sản phẩm')
                                                    ->weight('bold'),
                                                // Đơn giá
                                                TextEntry::make('price')
                                                    ->label('Đơn giá')
                                                    ->money('VND'),

                                                // Số lượng
                                                TextEntry::make('quantity')
                                                    ->label('Số lượng')
                                                    ->numeric()
                                                    ->badge()
                                                    ->color('gray'),

                                                // Thành tiền (Tính toán trực tiếp hoặc đọc từ DB)
                                                TextEntry::make('total')
                                                    ->label('Thành tiền')
                                                    ->money('VND')
                                                    ->weight('bold')
                                                    ->color('primary')
                                                    ->state(fn($record) => $record->total ?? ($record->price * $record->quantity)),
                                            ])
                                            ->columns(5)
                                            ->columnSpanFull(),
                                    ]),
                            ])
                            ->columnSpan(2),

                        // Cột phải (Chiếm 1/3 màn hình - Chứa thông tin tổng quan & Trạng thái)
                        Group::make()
                            ->schema([
                                // Section: Trạng thái & Mã đơn
                                Section::make('Thông tin chung')
                                    ->icon('heroicon-o-information-circle')
                                    ->schema([
                                        TextEntry::make('order_code')
                                            ->label('Mã đơn hàng')
                                            ->weight('bold')
                                            ->copyable()
                                            ->icon('heroicon-o-hashtag'),

                                        TextEntry::make('status')
                                            ->label('Trạng thái đơn')
                                            ->badge()
                                            ->formatStateUsing(fn(string $state): string => match ($state) {
                                                'pending' => 'Chờ xử lý',
                                                'confirmed' => 'Đã xác nhận',
                                                'shipping' => 'Đang giao hàng',
                                                'completed' => 'Hoàn thành',
                                                'cancelled' => 'Đã hủy',
                                                default => $state,
                                            })
                                            ->color(fn(string $state): string => match ($state) {
                                                'completed', 'confirmed' => 'success', // Xanh lá
                                                'shipping' => 'info',    // Xanh dương
                                                'pending' => 'warning', // Vàng / Cam
                                                'cancelled' => 'danger',  // Đỏ
                                                default => 'gray',
                                            }),

                                        TextEntry::make('payment_status')
                                            ->label('Thanh toán')
                                            ->badge()
                                            ->formatStateUsing(fn(string $state): string => match ($state) {
                                                'paid' => 'Đã thanh toán',
                                                'unpaid' => 'Chưa thanh toán',
                                                'refunded' => 'Đã hoàn tiền',
                                                default => $state,
                                            })
                                            ->color(fn(string $state): string => match ($state) {
                                                'paid' => 'success',
                                                'unpaid' => 'warning',
                                                'refunded' => 'danger',
                                                default => 'gray',
                                            }),

                                        TextEntry::make('created_at')
                                            ->label('Ngày đặt')
                                            ->dateTime('d/m/Y H:i'),

                                        TextEntry::make('updated_at')
                                            ->label('Cập nhật cuối')
                                            ->dateTime('d/m/Y H:i')
                                            ->since(),

                                        TextEntry::make('deleted_at')
                                            ->label('Thời gian xóa')
                                            ->dateTime('d/m/Y H:i')
                                            ->color('danger')
                                            ->visible(fn(Order $record): bool => $record->trashed()),
                                    ])
                                    ->columns(1),

                                // Section: Tổng tiền & Tài chính
                                Section::make('Thanh toán')
                                    ->icon('heroicon-o-banknotes')
                                    ->schema([
                                        TextEntry::make('subtotal')
                                            ->label('Tạm tính')
                                            ->money('VND'),

                                        TextEntry::make('discount_amount')
                                            ->label('Giảm giá')
                                            ->money('VND')
                                            ->color('danger'),

                                        TextEntry::make('grand_total')
                                            ->label('Tổng tiền thanh toán')
                                            ->money('VND')
                                            ->size('lg')
                                            ->weight('bold')
                                            ->color('primary'),
                                    ])
                                    ->columns(1),
                            ])
                            ->columnSpan(1),
                    ])
                    ->columnSpanFull(),
            ]);
    }
}