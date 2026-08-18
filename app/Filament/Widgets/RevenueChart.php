<?php

namespace App\Filament\Widgets;

use App\Models\Order;
use Filament\Widgets\ChartWidget;
use Illuminate\Support\Carbon;

class RevenueChart extends ChartWidget
{
    protected  ?string $heading = 'Doanh thu & Số đơn hàng trong tháng';

    // Thuộc tính không static theo chuẩn Filament
    protected ?string $maxHeight = '300px';
    protected ?string $pollingInterval = '60s';
    protected int | string | array $columnSpan = 'full';
    protected static ?int $sort = 2;

    protected function getData(): array
    {
        $daysInMonth = Carbon::now()->daysInMonth;
        $currentMonth = Carbon::now()->month;
        $currentYear = Carbon::now()->year;

        // Khởi tạo mảng dữ liệu mặc định cho tất cả các ngày trong tháng
        $labels = [];
        $revenueData = array_fill(1, $daysInMonth, 0);
        $orderCountData = array_fill(1, $daysInMonth, 0);

        for ($day = 1; $day <= $daysInMonth; $day++) {
            $labels[] = "Ngày " . $day;
        }

        // Truy vấn doanh thu và số đơn hàng theo từng ngày
        $orders = Order::query()
            ->where('status', 'completed')
            ->whereMonth('created_at', $currentMonth)
            ->whereYear('created_at', $currentYear)
            ->selectRaw('DAY(created_at) as day, SUM(grand_total) as total_revenue, COUNT(id) as total_orders')
            ->groupBy('day')
            ->get();

        foreach ($orders as $order) {
            $revenueData[$order->day] = (float) $order->total_revenue;
            $orderCountData[$order->day] = (int) $order->total_orders;
        }

        return [
            'datasets' => [
                [
                    'label' => 'Doanh thu (VNĐ)',
                    'data' => array_values($revenueData),
                    'borderColor' => '#10b981', // Màu xanh lục
                    'backgroundColor' => 'rgba(16, 185, 129, 0.1)',
                    'fill' => true,
                    'yAxisID' => 'y',
                ],
                [
                    'label' => 'Số đơn hàng',
                    'data' => array_values($orderCountData),
                    'borderColor' => '#3b82f6', // Màu xanh dương
                    'backgroundColor' => 'rgba(59, 130, 246, 0.1)',
                    'fill' => false,
                    'yAxisID' => 'y1',
                ],
            ],
            'labels' => $labels,
        ];
    }

    protected function getType(): string
    {
        return 'line';
    }

    protected function getOptions(): array
    {
        return [
            'scales' => [
                'y' => [
                    'type' => 'linear',
                    'display' => true,
                    'position' => 'left',
                    'title' => [
                        'display' => true,
                        'text' => 'Doanh thu (VNĐ)',
                    ],
                ],
                'y1' => [
                    'type' => 'linear',
                    'display' => true,
                    'position' => 'right',
                    'grid' => [
                        'drawOnChartArea' => false, // Tránh đè lưới lên trục Y chính
                    ],
                    'title' => [
                        'display' => true,
                        'text' => 'Số đơn hàng',
                    ],
                ],
            ],
        ];
    }
}
