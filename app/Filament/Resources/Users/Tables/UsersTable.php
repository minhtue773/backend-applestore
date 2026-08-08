<?php

namespace App\Filament\Resources\Users\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ViewAction;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class UsersTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                ImageColumn::make('avatar')
                    ->label('Ảnh đại diện')
                    ->circular(),
                TextColumn::make('name')
                    ->searchable(),
                TextColumn::make('email')
                    ->label('Email')
                    ->searchable(),
                TextColumn::make('email_verified_at')
                    ->label('Veryfied')
                    ->badge()
                    ->formatStateUsing(fn($state): string => $state ? 'Đã xác thực' : 'Chưa xác thực')
                    ->color(fn($state): string => $state ? 'success' : 'danger')
                    ->alignCenter(),
                TextColumn::make('phone')
                    ->searchable(),
                TextColumn::make('address')
                    ->limit(30)
                    ->tooltip(fn(TextColumn $column): ?string => $column->getState())
                    ->searchable(),
                TextColumn::make('role')
                    ->badge()
                    ->formatStateUsing(fn($state): string => $state === 'admin' ? 'Admin' : 'Khách hàng')
                    ->color(fn($state): string => $state === 'admin' ? 'warning' : 'info')
                    ->alignCenter(),
                TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->recordActions([
                ViewAction::make(),
                EditAction::make(),
            ])
            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);
    }
}
