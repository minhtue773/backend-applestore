<?php

namespace App\Filament\Resources\Products\Schemas;

use App\Models\Attribute;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;
use Illuminate\Database\Eloquent\Builder;

class ProductForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('Thông tin chung')
                    ->schema([
                        Select::make('category_id')
                            ->label('Danh mục')
                            ->relationship('category', 'name')
                            ->searchable()
                            ->preload()
                            ->required(),

                        TextInput::make('name')
                            ->label('Tên sản phẩm')
                            ->required(),

                        TextInput::make('slug')
                            ->label('Slug')
                            ->required(),

                        Select::make('status')
                            ->label('Trạng thái')
                            ->options([
                                'active' => 'Đang bán',
                                'discontinued' => 'Ngừng kinh doanh',
                                'hidden' => 'Đã ẩn',
                            ])
                            ->default('active')
                            ->required(),
                    ])->columns(2)->columnSpanFull(),
                Section::make('Mô tả chi tiết')
                    ->schema([
                        RichEditor::make('description')
                            ->hiddenLabel() // Ẩn label trùng lặp
                            ->columnSpanFull(),
                    ])
                    ->collapsible() // Cho phép bấm để thu gọn/mở rộng
                    ->collapsed()   // Mặc định thu gọn lại khi vừa mở trang
                    ->columnSpanFull(),

                Repeater::make('variants')
                    ->relationship('variants') // Khai báo quan hệ hasMany với Model ProductVariant
                    ->label('Danh sách biến thể')
                    ->addActionLabel('Thêm biến thể mới')
                    ->schema([
                        TextInput::make('sku')
                            ->label('Mã SKU')
                            ->placeholder('VD: IP15PM-256-BLK')
                            ->required()
                            ->unique(
                                table: 'product_variants',
                                column: 'sku',
                                ignoreRecord: true
                            )
                            ->validationMessages([
                                'distinct' => 'Mã SKU này đang bị trùng lặp trong các biến thể trên!',
                                'unique' => 'Mã SKU này đã tồn tại trong hệ thống, vui lòng đổi mã khác!',
                                'required' => 'Vui lòng nhập mã SKU cho biến thể!',
                            ]),

                        ...collect(Attribute::with('values')->get())->map(function ($attribute) {
                            return Select::make("attribute_val_{$attribute->id}")
                                ->label($attribute->name)
                                ->relationship(
                                    'attributeValues',
                                    'value',
                                    fn($query) => $query->where('attribute_id', $attribute->id)
                                )
                                ->preload()
                                ->searchable();
                        })->toArray(),

                        TextInput::make('price')
                            ->label('Giá bán')
                            ->numeric()
                            ->prefix('VNĐ')
                            ->required(),

                        TextInput::make('stock_quantity')
                            ->label('Số lượng tồn kho')
                            ->numeric()
                            ->default(0)
                            ->required(),

                        FileUpload::make('image')
                            ->label('Ảnh biến thể')
                            ->image()
                            ->directory('products/variants'),
                    ])
                    ->collapseAllAction(
                        fn($action) => $action->label('Thu gọn tất cả')
                    )
                    ->expandAllAction(
                        fn($action) => $action->label('Mở rộng tất cả')
                    )
                    ->columns(3)
                    ->collapsible()
                    ->cloneable()
                    ->defaultItems(1)
                    ->columnSpanFull(),
            ]);
    }
}
