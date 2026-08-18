<?php

namespace App\Filament\Widgets;

use App\Filament\Resources\Orders\OrderResource;
use App\Models\InventoryLog;
use Filament\Actions\Action;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;

class RecentInventoryLogs extends BaseWidget
{
  // Bỏ 'static' ở $heading theo quy chuẩn Filament
  protected static ?string $heading = 'Nhật ký biến động kho gần đây';

  // Đặt độ rộng hiển thị toàn bảng (full width) trên Dashboard
  protected int | string | array $columnSpan = 'full';

  // $sort giữ nguyên static
  protected static ?int $sort = 5;

  public function table(Table $table): Table
  {
    return $table
      ->query(
        InventoryLog::query()
          ->with(['productVariant.product', 'user', 'order'])
          ->latest()
      )
      ->defaultPaginationPageOption(5) // Hiển thị 5 dòng mỗi trang
      ->columns([
        Tables\Columns\TextColumn::make('created_at')
          ->label('Thời gian')
          ->dateTime('d/m/Y H:i')
          ->sortable(),

        Tables\Columns\TextColumn::make('productVariant.product.name')
          ->label('Sản phẩm')
          ->description(fn(InventoryLog $record): string => "SKU: {$record->productVariant->sku}")
          ->searchable()
          ->wrap(),

        Tables\Columns\TextColumn::make('quantity')
          ->label('Biến động')
          ->badge()
          ->color(fn(int $state): string => $state > 0 ? 'success' : 'danger')
          ->formatStateUsing(fn(int $state): string => $state > 0 ? "+{$state}" : (string) $state)
          ->alignCenter(),

        Tables\Columns\TextColumn::make('stock_after')
          ->label('Tồn sau đổi')
          ->numeric()
          ->alignCenter(),

        Tables\Columns\TextColumn::make('reason')
          ->label('Lý do')
          ->badge()
          ->formatStateUsing(fn(string $state): string => match ($state) {
            'import' => 'Nhập kho',
            'order_placed' => 'Đơn hàng mới',
            'order_cancelled' => 'Đơn bị hủy (Hoàn kho)',
            'manual_adjustment' => 'Điều chỉnh thủ công',
            'damaged' => 'Hàng hư hỏng',
            'return' => 'Khách trả hàng',
            default => $state,
          })
          ->color(fn(string $state): string => match ($state) {
            'import', 'order_cancelled', 'return' => 'success',
            'order_placed' => 'info',
            'manual_adjustment' => 'warning',
            'damaged' => 'danger',
            default => 'gray',
          }),

        Tables\Columns\TextColumn::make('user.name')
          ->label('Người thực hiện')
          ->default('Hệ thống')
          ->icon('heroicon-m-user'),

        Tables\Columns\TextColumn::make('note')
          ->label('Ghi chú')
          ->limit(30)
          ->toggleable(isToggledHiddenByDefault: true),
      ])
      ->actions([
        Action::make('view_order')
          ->label('Xem đơn')
          ->icon('heroicon-m-shopping-bag')
          ->color('info')
          ->url(fn(InventoryLog $record): ?string => $record->order_id
            ? OrderResource::getUrl('view', ['record' => $record->order_id])
            : null)
          ->visible(fn(InventoryLog $record): bool => !is_null($record->order_id)),
      ]);
  }
}
