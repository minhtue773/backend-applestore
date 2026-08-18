<?php

namespace App\Filament\Widgets;

use App\Models\Order;
use App\Models\ProductVariant;
use App\Models\Voucher;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use Illuminate\Support\Carbon;

class StatsOverview extends BaseWidget
{
    // CỐ ĐỊNH LỖI: Bỏ từ khóa 'static' ở $pollingInterval
    protected ?string $pollingInterval = '30s';

    // $sort giữ nguyên static theo đúng định nghĩa của BaseWidget
    protected static ?int $sort = 1;

    protected function getStats(): array
    {
        // 1. Tính toán doanh thu tháng này & so sánh tháng trước
        $currentMonthRevenue = Order::query()
            ->where('status', 'completed')
            ->where('payment_status', 'paid')
            ->whereMonth('created_at', Carbon::now()->month)
            ->whereYear('created_at', Carbon::now()->year)
            ->sum('grand_total');

        $lastMonthRevenue = Order::query()
            ->where('status', 'completed')
            ->where('payment_status', 'paid')
            ->whereMonth('created_at', Carbon::now()->subMonth()->month)
            ->whereYear('created_at', Carbon::now()->subMonth()->year)
            ->sum('grand_total');

        $revenueChange = $lastMonthRevenue > 0
            ? (($currentMonthRevenue - $lastMonthRevenue) / $lastMonthRevenue) * 100
            : 0;

        // 2. Đơn hàng mới cần xử lý
        $pendingOrdersCount = Order::query()
            ->where('status', 'pending')
            ->count();

        // 3. Biến thể sản phẩm sắp hết hàng
        $lowStockCount = ProductVariant::query()
            ->where('stock_quantity', '<=', 5)
            ->count();

        // 4. Voucher đang hoạt động
        $activeVouchersCount = Voucher::query()
            ->where('is_active', true)
            ->where(function ($query) {
                $query->whereNull('expires_at')
                    ->orWhere('expires_at', '>', Carbon::now());
            })
            ->where(function ($query) {
                $query->whereNull('usage_limit')
                    ->orWhereRaw('used_count < usage_limit');
            })
            ->count();

        return [
            Stat::make('Doanh thu tháng này', number_format($currentMonthRevenue, 0, ',', '.') . ' VNĐ')
                ->description(
                    $revenueChange >= 0
                        ? '+' . number_format($revenueChange, 1) . '% so với tháng trước'
                        : number_format($revenueChange, 1) . '% so với tháng trước'
                )
                ->descriptionIcon($revenueChange >= 0 ? 'heroicon-m-arrow-trending-up' : 'heroicon-m-arrow-trending-down')
                ->color($revenueChange >= 0 ? 'success' : 'danger')
                ->chart([15, 20, 18, 25, 30, $currentMonthRevenue > 0 ? 35 : 10]),

            Stat::make('Đơn hàng cần xử lý', $pendingOrdersCount)
                ->description('Đơn hàng ở trạng thái Chờ duyệt')
                ->descriptionIcon('heroicon-m-clock')
                ->color($pendingOrdersCount > 0 ? 'warning' : 'gray'),

            Stat::make('Sản phẩm sắp hết hàng', $lowStockCount)
                ->description('Biến thể có tồn kho ≤ 5')
                ->descriptionIcon('heroicon-m-exclamation-triangle')
                ->color($lowStockCount > 0 ? 'danger' : 'success'),

            Stat::make('Voucher đang hoạt động', $activeVouchersCount)
                ->description('Chương trình khuyến mãi sẵn sàng')
                ->descriptionIcon('heroicon-m-ticket')
                ->color('info'),
        ];
    }
}
