<?php

namespace App\Filament\Resources\Products\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ForceDeleteBulkAction;
use Filament\Actions\RestoreBulkAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\TrashedFilter;
use Filament\Tables\Table;

class ProductsTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('category.name')
                    ->label('Danh mục')
                    ->searchable(),
                TextColumn::make('name')
                    ->searchable(),
                TextColumn::make('variants_count')
                    ->label('Số biến thể')
                    ->counts('variants')
                    ->alignCenter()
                    ->sortable()
                    ->badge()
                    ->color('info'),
                TextColumn::make('variants_sum_stock_quantity')
                    ->label('Tổng tồn kho')
                    ->sum('variants', 'stock_quantity')
                    ->alignCenter()
                    ->sortable()
                    ->numeric(),
                TextColumn::make('slug')
                    ->searchable(),
                TextColumn::make('status')
                    ->label('Trạng thái')
                    ->badge()
                    ->color(fn(string $state): string => match ($state) {
                        'active' => 'success',       // Màu xanh lá
                        'discontinued' => 'warning', // Màu cam/vàng
                        'hidden' => 'danger',        // Màu đỏ
                        default => 'gray',
                    })
                    ->formatStateUsing(fn(string $state): string => match ($state) {
                        'active' => 'Đang bán',
                        'discontinued' => 'Ngừng kinh doanh',
                        'hidden' => 'Đã ẩn',
                        default => $state,
                    }),
                TextColumn::make('created_at')
                    ->dateTime('d/m/Y')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('updated_at')
                    ->dateTime('d/m/Y')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('deleted_at')
                    ->dateTime('d/m/Y')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                TrashedFilter::make()->label('Thùng rác'),
            ])
            ->recordActions([
                EditAction::make(),
            ])
            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make()
                        ->label('Chuyển vào thùng rác')
                        ->modalHeading('Chuyển các mục đã chọn vào thùng rác')
                        ->modalDescription('Bạn có chắc chắn muốn chuyển các sản phẩm này vào thùng rác không?')
                        ->modalSubmitActionLabel('Đồng ý')
                        ->modalCancelActionLabel('Hủy'),

                    RestoreBulkAction::make()
                        ->label('Khôi phục')
                        ->modalHeading('Khôi phục các mục đã chọn')
                        ->modalDescription('Bạn có chắc chắn muốn khôi phục các sản phẩm này?')
                        ->modalSubmitActionLabel('Khôi phục')
                        ->modalCancelActionLabel('Hủy'),

                    ForceDeleteBulkAction::make()
                        ->label('Xóa vĩnh viễn')
                        ->modalHeading('Xóa vĩnh viễn các mục đã chọn')
                        ->modalDescription('Cảnh báo: Hành động này sẽ xóa hoàn toàn dữ liệu và không thể khôi phục!')
                        ->modalSubmitActionLabel('Xóa vĩnh viễn')
                        ->modalCancelActionLabel('Hủy'),
                ])->label('Hành động hàng loạt'),
            ]);
    }
}
