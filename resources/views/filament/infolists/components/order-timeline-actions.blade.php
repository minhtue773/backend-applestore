@php
    $order = $getRecord();
    $currentStatus = $order->status;

    // Định nghĩa các bước đúng cấu trúc mẫu
    $steps = [
        'pending' => ['step' => 1, 'label' => 'Chờ xác nhận', 'sub' => 'Đơn mới tạo'],
        'confirmed' => ['step' => 2, 'label' => 'Đã xác nhận', 'sub' => 'Đang xử lý'],
        'shipping' => ['step' => 3, 'label' => 'Đang giao hàng', 'sub' => 'Đã giao DVVC'],
        'completed' => ['step' => 4, 'label' => 'Hoàn thành', 'sub' => 'Giao thành công'],
    ];

    $isCancelled = $currentStatus === 'cancelled';
    $keys = array_keys($steps);
    $currentIndex = array_search($currentStatus, $keys);
    if ($currentIndex === false) {
        $currentIndex = -1;
    }
@endphp

<div class="py-4 px-2">
    @if (!$isCancelled)
        <div class="flex items-center justify-between w-full max-w-5xl mx-auto overflow-x-auto gap-4">
            @foreach ($steps as $key => $step)
                @php
                    $stepIndex = array_search($key, $keys);
                    $isPassed = $stepIndex < $currentIndex;
                    $isCurrent = $key === $currentStatus;
                    $isLast = $loop->last;
                @endphp

                <!-- Step Item -->
                <div class="flex items-center gap-3 shrink-0">
                    <!-- Circle Number -->
                    <div
                        class="w-11 h-11 rounded-full flex items-center justify-center font-bold text-sm transition-all duration-200
                        {{ $isCurrent
                            ? 'bg-amber-500 text-slate-950 dark:bg-amber-500 dark:text-slate-950 shadow-sm'
                            : ($isPassed
                                ? 'bg-emerald-600 text-white'
                                : 'bg-slate-100 text-slate-500 dark:bg-slate-800 dark:text-slate-400') }}">
                        @if ($isPassed)
                            <x-filament::icon icon="heroicon-m-check" class="w-5 h-5 stroke-[2.5]" />
                        @else
                            {{ $step['step'] }}
                        @endif
                    </div>

                    <!-- Label & Subtitle -->
                    <div class="flex flex-col">
                        <span
                            class="text-sm font-bold tracking-tight {{ $isCurrent || $isPassed ? 'text-slate-900 dark:text-white' : 'text-slate-500 dark:text-slate-400' }}">
                            {{ $step['label'] }}
                        </span>
                        <span class="text-xs font-normal text-slate-400 dark:text-slate-500">
                            {{ $step['sub'] }}
                        </span>
                    </div>
                </div>

                <!-- Arrow Separator (Mũi tên ngăn cách như trong ảnh mẫu) -->
                @if (!$isLast)
                    <div class="px-2 text-slate-300 dark:text-slate-600 shrink-0">
                        <x-filament::icon icon="heroicon-m-chevron-right" class="w-5 h-5" />
                    </div>
                @endif
            @endforeach
        </div>
    @else
        <!-- Hiển thị khi đơn bị hủy -->
        <div
            class="flex items-center gap-3 p-4 rounded-xl bg-slate-50 dark:bg-slate-900 border border-slate-200 dark:border-slate-800">
            <div
                class="w-10 h-10 rounded-full bg-red-100 dark:bg-red-950/50 text-red-600 dark:text-red-400 flex items-center justify-center shrink-0">
                <x-filament::icon icon="heroicon-m-x-mark" class="w-6 h-6 stroke-[2.5]" />
            </div>
            <div>
                <h4 class="text-sm font-bold text-slate-900 dark:text-white">Đơn hàng này đã bị hủy</h4>
                <p class="text-xs text-slate-500 dark:text-slate-400 mt-0.5">
                    Lý do: <span class="italic">{{ $order->reason_for_cancellation ?: 'Không có lý do cụ thể' }}</span>
                </p>
            </div>
        </div>
    @endif
</div>
