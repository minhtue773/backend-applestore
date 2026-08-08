-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th8 06, 2026 lúc 06:28 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `apple`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Màu sắc', 'color', '2026-08-05 01:44:32', '2026-08-05 01:44:32'),
(2, 'Bộ nhớ', 'storage', '2026-08-05 01:44:32', '2026-08-05 01:44:32'),
(3, 'Ổ cứng (SSD)', 'ssd', '2026-08-05 02:02:01', '2026-08-05 02:02:01'),
(4, 'CPU', 'cpu', '2026-08-05 02:02:01', '2026-08-05 02:02:01'),
(5, 'GPU', 'gpu', '2026-08-05 02:02:01', '2026-08-05 02:02:01'),
(6, 'RAM', 'ram', '2026-08-05 02:02:01', '2026-08-05 02:02:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `attribute_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'Black', '2026-08-05 01:44:32', '2026-08-05 01:44:32'),
(2, 2, '128GB', '2026-08-05 01:44:32', '2026-08-05 01:44:32'),
(3, 1, 'White', '2026-08-05 01:44:32', '2026-08-05 01:44:32'),
(4, 1, 'Starlight', '2026-08-05 01:44:32', '2026-08-05 01:44:32'),
(5, 1, 'Blue', '2026-08-05 01:44:32', '2026-08-05 01:44:32'),
(6, 2, '256GB', '2026-08-05 01:44:32', '2026-08-05 01:44:32'),
(7, 1, 'Pink', '2026-08-05 01:44:32', '2026-08-05 01:44:32'),
(8, 1, 'Green', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(9, 1, 'Yellow', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(10, 2, 'Không xác định', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(11, 1, 'Hồng', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(12, 1, 'Xanh Mòng Két', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(13, 1, 'Đen', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(14, 1, 'Xanh Lưu Ly', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(15, 1, 'Trắng', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(16, 2, '512GB', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(17, 1, 'Titan Đen', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(18, 1, 'Titan Trắng', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(19, 1, 'Titan Tự Nhiên', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(20, 1, 'Titan Sa Mạc', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(21, 2, '1TB', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(22, 1, 'Tím Oải Hương', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(23, 1, 'Xanh Lam Khói', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(24, 1, 'Xanh Lá Xô Thơm', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(25, 1, 'Bạc', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(26, 1, 'Cam Vũ Trụ', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(27, 1, 'Xanh Đậm', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(28, 2, '2TB', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(29, 1, 'Xanh Đen', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(30, 1, 'Xanh Da Trời', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(31, 1, 'Trắng Mây', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(32, 1, 'Đen Không Gian', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(33, 1, 'Vàng Nhạt', '2026-08-05 01:44:33', '2026-08-05 01:44:33'),
(34, 1, 'Xám', '2026-08-05 01:54:17', '2026-08-05 01:54:17'),
(35, 1, 'Xanh Dương', '2026-08-05 01:54:18', '2026-08-05 01:54:18'),
(36, 1, 'Tím', '2026-08-05 01:54:18', '2026-08-05 01:54:18'),
(37, 1, 'Ánh Sao', '2026-08-05 01:54:18', '2026-08-05 01:54:18'),
(38, 1, 'Gray', '2026-08-05 01:54:18', '2026-08-05 01:54:18'),
(39, 1, 'Purple', '2026-08-05 01:54:18', '2026-08-05 01:54:18'),
(40, 1, 'Hồng Phớt', '2026-08-05 02:02:01', '2026-08-05 02:02:01'),
(41, 3, 'Khôngxácđịnh', '2026-08-05 02:02:01', '2026-08-05 02:02:01'),
(42, 4, '', '2026-08-05 02:02:01', '2026-08-05 02:02:01'),
(43, 5, '', '2026-08-05 02:02:01', '2026-08-05 02:02:01'),
(44, 6, '256GB', '2026-08-05 02:02:01', '2026-08-05 02:02:01'),
(45, 1, 'Xanh Indigo', '2026-08-05 02:02:01', '2026-08-05 02:02:01'),
(46, 1, 'Vàng Citrus', '2026-08-05 02:02:01', '2026-08-05 02:02:01'),
(47, 6, '512GB', '2026-08-05 02:02:01', '2026-08-05 02:02:01'),
(48, 1, 'Đêm Xanh Thẳm', '2026-08-05 02:02:01', '2026-08-05 02:02:01'),
(49, 3, '512GB', '2026-08-05 02:02:01', '2026-08-05 02:02:01'),
(50, 4, '10CPU', '2026-08-05 02:02:01', '2026-08-05 02:02:01'),
(51, 5, '8GPU', '2026-08-05 02:02:01', '2026-08-05 02:02:01'),
(52, 6, '16GB', '2026-08-05 02:02:01', '2026-08-05 02:02:01'),
(53, 5, '10GPU', '2026-08-05 02:02:01', '2026-08-05 02:02:01'),
(54, 3, '1TB', '2026-08-05 02:02:01', '2026-08-05 02:02:01'),
(55, 6, '24GB', '2026-08-05 02:02:01', '2026-08-05 02:02:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6', 'i:5;', 1785944561),
('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6:timer', 'i:1785944561;', 1785944561);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_items`
--

CREATE TABLE `cart_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'iPhone', 'dien-thoai', NULL, '2026-08-05 01:43:35', '2026-08-05 01:43:35', NULL),
(2, 'iPad', 'laptop', NULL, '2026-08-05 01:43:35', '2026-08-05 01:43:35', NULL),
(3, 'Macbook', 'tablet', NULL, '2026-08-05 01:43:35', '2026-08-05 01:43:35', NULL),
(4, 'iPhone 13 Series', 'iPhone-13-series', 1, '2026-08-05 01:43:35', '2026-08-05 01:43:35', NULL),
(5, 'iPhone 14 Series', 'iPhone-14-series', 1, '2026-08-05 01:43:35', '2026-08-05 01:43:35', NULL),
(6, 'iPhone 15 Series', 'iPhone-15-series', 1, '2026-08-05 01:43:35', '2026-08-05 01:43:35', NULL),
(7, 'iPhone 16 Series', 'iPhone-16-series', 1, '2026-08-05 01:43:35', '2026-08-05 01:43:35', NULL),
(8, 'iPhone 17 Series', 'iPhone-17-series', 1, '2026-08-05 01:43:35', '2026-08-05 01:43:35', NULL),
(9, 'iPhone Air Series', 'iPhone-air-series', 1, '2026-08-05 01:43:35', '2026-08-05 01:43:35', NULL),
(10, 'iPad Air Series', 'iPad-Air-series', 2, '2026-08-05 01:43:35', '2026-08-05 01:43:35', NULL),
(11, 'iPad Mini Series', 'iPad-Mini-series', 2, '2026-08-05 01:43:35', '2026-08-05 01:43:35', NULL),
(12, 'iPad Pro Series', 'iPad-Pro-series', 2, '2026-08-05 01:43:35', '2026-08-05 01:43:35', NULL),
(13, 'Macbook Air Series', 'Macbook-Air-series', 3, '2026-08-05 01:43:35', '2026-08-05 01:43:35', NULL),
(14, 'Macbook Neo Series', 'Macbook-neo-series', 3, '2026-08-05 01:43:35', '2026-08-05 01:43:35', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inventory_logs`
--

CREATE TABLE `inventory_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `stock_after` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `inventory_logs`
--

INSERT INTO `inventory_logs` (`id`, `product_variant_id`, `user_id`, `order_id`, `quantity`, `stock_after`, `reason`, `note`, `created_at`, `updated_at`) VALUES
(1, 43, 28, 1, -2, 98, 'order_placed', NULL, '2026-08-03 20:30:13', '2026-08-03 20:30:13'),
(2, 111, 28, 1, -2, 98, 'order_placed', NULL, '2026-08-03 20:30:13', '2026-08-03 20:30:13'),
(3, 22, 71, 3, -1, 99, 'order_placed', NULL, '2026-07-19 07:30:13', '2026-07-19 07:30:13'),
(4, 117, 71, 3, -2, 98, 'order_placed', NULL, '2026-07-19 07:30:13', '2026-07-19 07:30:13'),
(5, 20, 74, 4, -1, 99, 'order_placed', NULL, '2026-08-02 20:30:13', '2026-08-02 20:30:13'),
(6, 37, 74, 4, -2, 98, 'order_placed', NULL, '2026-08-02 20:30:13', '2026-08-02 20:30:13'),
(7, 188, 77, 5, -2, 98, 'order_placed', NULL, '2026-07-13 23:30:13', '2026-07-13 23:30:13'),
(8, 218, 77, 5, -1, 99, 'order_placed', NULL, '2026-07-13 23:30:13', '2026-07-13 23:30:13'),
(9, 133, 99, 7, -1, 99, 'order_placed', NULL, '2026-07-26 04:30:13', '2026-07-26 04:30:13'),
(10, 172, 99, 7, -1, 99, 'order_placed', NULL, '2026-07-26 04:30:13', '2026-07-26 04:30:13'),
(11, 195, 99, 7, -1, 99, 'order_placed', NULL, '2026-07-26 04:30:13', '2026-07-26 04:30:13'),
(12, 56, 44, 9, -2, 98, 'order_placed', NULL, '2026-07-30 07:30:13', '2026-07-30 07:30:13'),
(13, 124, 44, 9, -2, 98, 'order_placed', NULL, '2026-07-30 07:30:13', '2026-07-30 07:30:13'),
(14, 209, 44, 9, -1, 99, 'order_placed', NULL, '2026-07-30 07:30:13', '2026-07-30 07:30:13'),
(15, 92, 72, 10, -1, 99, 'order_placed', NULL, '2026-07-16 05:30:13', '2026-07-16 05:30:13'),
(16, 123, 72, 10, -2, 98, 'order_placed', NULL, '2026-07-16 05:30:13', '2026-07-16 05:30:13'),
(17, 104, 34, 14, -1, 99, 'order_placed', NULL, '2026-07-26 01:30:13', '2026-07-26 01:30:13'),
(18, 181, 2, 17, -2, 98, 'order_placed', NULL, '2026-07-13 09:30:13', '2026-07-13 09:30:13'),
(19, 157, 59, 18, -2, 98, 'order_placed', NULL, '2026-07-29 22:30:13', '2026-07-29 22:30:13'),
(20, 172, 68, 19, -1, 99, 'order_placed', NULL, '2026-07-25 15:30:13', '2026-07-25 15:30:13'),
(21, 194, 68, 19, -1, 99, 'order_placed', NULL, '2026-07-25 15:30:13', '2026-07-25 15:30:13'),
(22, 22, 6, 20, -2, 98, 'order_placed', NULL, '2026-07-27 11:30:13', '2026-07-27 11:30:13'),
(23, 47, 6, 20, -1, 99, 'order_placed', NULL, '2026-07-27 11:30:13', '2026-07-27 11:30:13'),
(24, 27, 80, 21, -1, 99, 'order_placed', NULL, '2026-07-24 06:30:13', '2026-07-24 06:30:13'),
(25, 61, 20, 22, -2, 98, 'order_placed', NULL, '2026-07-20 00:30:13', '2026-07-20 00:30:13'),
(26, 59, 24, 23, -1, 99, 'order_placed', NULL, '2026-07-31 04:30:13', '2026-07-31 04:30:13'),
(27, 114, 24, 23, -1, 99, 'order_placed', NULL, '2026-07-31 04:30:13', '2026-07-31 04:30:13'),
(28, 201, 24, 23, -1, 99, 'order_placed', NULL, '2026-07-31 04:30:13', '2026-07-31 04:30:13'),
(29, 133, 84, 24, -2, 98, 'order_placed', NULL, '2026-07-28 17:30:13', '2026-07-28 17:30:13'),
(30, 170, 84, 24, -1, 99, 'order_placed', NULL, '2026-07-28 17:30:13', '2026-07-28 17:30:13'),
(31, 71, 98, 27, -1, 99, 'order_placed', NULL, '2026-07-21 23:30:13', '2026-07-21 23:30:13'),
(32, 47, 14, 29, -2, 98, 'order_placed', NULL, '2026-07-06 22:30:13', '2026-07-06 22:30:13'),
(33, 95, 14, 29, -1, 99, 'order_placed', NULL, '2026-07-06 22:30:13', '2026-07-06 22:30:13'),
(34, 168, 14, 29, -1, 99, 'order_placed', NULL, '2026-07-06 22:30:13', '2026-07-06 22:30:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '0001_01_01_000000_create_users_table', 1),
(10, '0001_01_01_000001_create_cache_table', 1),
(11, '0001_01_01_000002_create_jobs_table', 1),
(12, '2026_08_05_044113_migrate', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_code` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipping_name` varchar(255) NOT NULL,
  `shipping_phone` varchar(255) NOT NULL,
  `shipping_email` varchar(255) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `note` text DEFAULT NULL,
  `reason_for_cancellation` text DEFAULT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `shipping_fee` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `grand_total` decimal(15,2) NOT NULL,
  `status` enum('pending','confirmed','shipping','completed','cancelled') NOT NULL DEFAULT 'pending',
  `payment_status` enum('unpaid','paid','refunded') NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `order_code`, `user_id`, `shipping_name`, `shipping_phone`, `shipping_email`, `shipping_address`, `note`, `reason_for_cancellation`, `subtotal`, `shipping_fee`, `discount_amount`, `grand_total`, `status`, `payment_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ORD-20260805-0001', 101, 'Dr. Tara Hessel', '0967921832', 'kailyn76@example.com', '27 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 191960000.00, 0.00, 0.00, 191960000.00, 'completed', 'unpaid', '2026-08-03 20:30:13', '2026-08-05 10:10:05', NULL),
(2, 'ORD-20260805-0002', 27, 'Prof. Mohammad Ferry IV', '0998836020', 'ivory.oconner@example.net', '28 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 27990000.00, 0.00, 0.00, 27990000.00, 'pending', 'unpaid', '2026-07-05 16:30:13', '2026-08-05 08:30:13', NULL),
(3, 'ORD-20260805-0003', 71, 'Coy Herman', '0923942841', 'ellsworth.jenkins@example.org', '77 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 101470000.00, 0.00, 0.00, 101470000.00, 'completed', 'unpaid', '2026-07-19 07:30:13', '2026-08-05 08:30:13', NULL),
(4, 'ORD-20260805-0004', 74, 'Mr. Earnest Reinger MD', '0991553936', 'kunze.marilou@example.com', '67 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 76970000.00, 0.00, 0.00, 76970000.00, 'completed', 'unpaid', '2026-08-02 20:30:13', '2026-08-05 08:30:13', NULL),
(5, 'ORD-20260805-0005', 77, 'Carmine Corwin III', '0999316544', 'twiegand@example.com', '75 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 126370000.00, 0.00, 0.00, 126370000.00, 'confirmed', 'unpaid', '2026-07-13 23:30:13', '2026-08-05 08:30:13', NULL),
(6, 'ORD-20260805-0006', 91, 'Ms. Karlee Schmitt MD', '0945531923', 'pedro94@example.com', '80 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 52570000.00, 0.00, 0.00, 52570000.00, 'pending', 'unpaid', '2026-07-06 09:30:13', '2026-08-05 08:30:13', NULL),
(7, 'ORD-20260805-0007', 99, 'Darwin Emmerich', '0925128607', 'dale26@example.com', '67 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 68870000.00, 0.00, 0.00, 68870000.00, 'confirmed', 'unpaid', '2026-07-26 04:30:13', '2026-08-05 08:30:13', NULL),
(8, 'ORD-20260805-0008', 59, 'Hannah Gerhold', '0947323245', 'mrobel@example.com', '80 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 88980000.00, 0.00, 0.00, 88980000.00, 'pending', 'unpaid', '2026-07-24 20:30:13', '2026-08-05 08:30:13', NULL),
(9, 'ORD-20260805-0009', 44, 'Sylvan Mertz', '0986446222', 'alyson76@example.com', '56 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 136750000.00, 0.00, 0.00, 136750000.00, 'shipping', 'unpaid', '2026-07-30 07:30:13', '2026-08-05 08:30:13', NULL),
(10, 'ORD-20260805-0010', 72, 'Missouri McLaughlin', '0935373155', 'anthony.pacocha@example.net', '9 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 69270000.00, 0.00, 0.00, 69270000.00, 'shipping', 'unpaid', '2026-07-16 05:30:13', '2026-08-05 08:30:13', NULL),
(11, 'ORD-20260805-0011', 76, 'Josue Cummings', '0930862332', 'qmcdermott@example.com', '86 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 155550000.00, 0.00, 0.00, 155550000.00, 'cancelled', 'unpaid', '2026-07-05 20:30:13', '2026-08-05 08:30:13', NULL),
(12, 'ORD-20260805-0012', 2, 'Krista Baumbach DDS', '0911507941', 'jrowe@example.net', '17 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 48190000.00, 0.00, 0.00, 48190000.00, 'pending', 'unpaid', '2026-07-31 06:30:13', '2026-08-05 08:30:13', NULL),
(13, 'ORD-20260805-0013', 21, 'Miss Wanda Jones', '0989698165', 'elliot69@example.org', '88 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 36390000.00, 0.00, 0.00, 36390000.00, 'pending', 'unpaid', '2026-07-21 22:30:13', '2026-08-05 08:30:13', NULL),
(14, 'ORD-20260805-0014', 34, 'Donnell Treutel', '0970178323', 'talia.cronin@example.net', '80 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 34790000.00, 0.00, 0.00, 34790000.00, 'completed', 'unpaid', '2026-07-26 01:30:13', '2026-08-05 08:30:13', NULL),
(15, 'ORD-20260805-0015', 5, 'Magnolia Grady', '0961814624', 'joconner@example.com', '75 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 40980000.00, 0.00, 0.00, 40980000.00, 'cancelled', 'unpaid', '2026-07-22 12:30:13', '2026-08-05 08:30:13', NULL),
(16, 'ORD-20260805-0016', 30, 'Juliet Cruickshank', '0999254182', 'lonzo62@example.net', '55 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 89670000.00, 0.00, 0.00, 89670000.00, 'pending', 'unpaid', '2026-07-29 01:30:13', '2026-08-05 08:30:13', NULL),
(17, 'ORD-20260805-0017', 2, 'Krista Baumbach DDS', '0913065863', 'jrowe@example.net', '12 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 78980000.00, 0.00, 0.00, 78980000.00, 'confirmed', 'unpaid', '2026-07-13 09:30:13', '2026-08-05 08:30:13', NULL),
(18, 'ORD-20260805-0018', 59, 'Hannah Gerhold', '0961617612', 'mrobel@example.com', '26 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 55180000.00, 0.00, 0.00, 55180000.00, 'completed', 'unpaid', '2026-07-29 22:30:13', '2026-08-05 08:30:13', NULL),
(19, 'ORD-20260805-0019', 68, 'Cruz O\'Connell I', '0932764520', 'wschiller@example.net', '46 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 92780000.00, 0.00, 0.00, 92780000.00, 'confirmed', 'unpaid', '2026-07-25 15:30:13', '2026-08-05 08:30:13', NULL),
(20, 'ORD-20260805-0020', 6, 'Prof. Cedrick Lind DVM', '0995603485', 'kohler.marlon@example.com', '65 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 89770000.00, 0.00, 0.00, 89770000.00, 'completed', 'unpaid', '2026-07-27 11:30:13', '2026-08-05 08:30:13', NULL),
(21, 'ORD-20260805-0021', 80, 'Keith Brakus', '0944374642', 'cwest@example.com', '16 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 27490000.00, 0.00, 0.00, 27490000.00, 'shipping', 'unpaid', '2026-07-24 06:30:13', '2026-08-05 08:30:13', NULL),
(22, 'ORD-20260805-0022', 20, 'Earl Schoen', '0992880652', 'gisselle26@example.com', '76 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 71380000.00, 0.00, 0.00, 71380000.00, 'completed', 'unpaid', '2026-07-20 00:30:13', '2026-08-05 08:30:13', NULL),
(23, 'ORD-20260805-0023', 24, 'Tomas Jacobson', '0964138207', 'vlakin@example.com', '80 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 84470000.00, 0.00, 0.00, 84470000.00, 'completed', 'unpaid', '2026-07-31 04:30:13', '2026-08-05 08:30:13', NULL),
(24, 'ORD-20260805-0024', 84, 'Payton D\'Amore', '0928101286', 'kertzmann.broderick@example.com', '73 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 81270000.00, 0.00, 0.00, 81270000.00, 'shipping', 'unpaid', '2026-07-28 17:30:13', '2026-08-05 08:30:13', NULL),
(25, 'ORD-20260805-0025', 93, 'Orin Donnelly', '0913680884', 'orutherford@example.org', '38 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 70980000.00, 0.00, 0.00, 70980000.00, 'cancelled', 'unpaid', '2026-07-10 02:30:13', '2026-08-05 08:30:13', NULL),
(26, 'ORD-20260805-0026', 87, 'Dr. Reece Nicolas Jr.', '0968287915', 'leta59@example.com', '65 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 71380000.00, 0.00, 0.00, 71380000.00, 'pending', 'unpaid', '2026-07-13 18:30:13', '2026-08-05 08:30:13', NULL),
(27, 'ORD-20260805-0027', 98, 'Mr. Alfred Brakus I', '0965308838', 'xtorphy@example.com', '25 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 20390000.00, 0.00, 0.00, 20390000.00, 'confirmed', 'unpaid', '2026-07-21 23:30:13', '2026-08-05 08:30:13', NULL),
(28, 'ORD-20260805-0028', 22, 'Erich Feeney', '0942862151', 'grace.berge@example.org', '34 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 77870000.00, 0.00, 0.00, 77870000.00, 'cancelled', 'unpaid', '2026-07-09 00:30:13', '2026-08-05 08:30:13', NULL),
(29, 'ORD-20260805-0029', 14, 'Jett Legros', '0920840262', 'donnelly.claudia@example.net', '90 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 119660000.00, 0.00, 0.00, 119660000.00, 'completed', 'unpaid', '2026-07-06 22:30:13', '2026-08-05 08:30:13', NULL),
(30, 'ORD-20260805-0030', 51, 'Delta Torp', '0920816662', 'cortez.abbott@example.net', '63 Đường Nguyễn Huệ, Quận 1, TP. Hồ Chí Minh', NULL, NULL, 122860000.00, 0.00, 0.00, 122860000.00, 'cancelled', 'unpaid', '2026-07-26 00:30:13', '2026-08-05 08:30:13', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `variant_sku` varchar(255) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `total` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_variant_id`, `product_name`, `variant_sku`, `price`, `quantity`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 43, 'iPhone 16 Pro Max', 'MYX13VN/A', 35490000.00, 2, 70980000.00, '2026-08-03 20:30:13', '2026-08-03 20:30:13'),
(2, 1, 111, 'iPhone 17 Pro Max', 'MG004ZP/A', 60490000.00, 2, 120980000.00, '2026-08-03 20:30:13', '2026-08-03 20:30:13'),
(3, 2, 145, 'iPad Air M4 11 inch', 'MH3D4ZA/A', 27990000.00, 1, 27990000.00, '2026-07-05 16:30:13', '2026-07-05 16:30:13'),
(4, 3, 22, 'iPhone 16 Plus', 'MXVW3VN/A', 24490000.00, 1, 24490000.00, '2026-07-19 07:30:13', '2026-07-19 07:30:13'),
(5, 3, 117, 'iPhone 17 Pro', 'MG8M4ZP/A', 38490000.00, 2, 76980000.00, '2026-07-19 07:30:13', '2026-07-19 07:30:13'),
(6, 4, 20, 'iPhone 15 Plus', 'MU173VN/A', 17990000.00, 1, 17990000.00, '2026-08-02 20:30:13', '2026-08-02 20:30:13'),
(7, 4, 37, 'iPhone 16 Pro Max', 'MYWV3VN/A', 29490000.00, 2, 58980000.00, '2026-08-02 20:30:13', '2026-08-02 20:30:13'),
(8, 5, 188, 'iPad Pro M5 13 inch', 'MDYK4ZA/A', 43290000.00, 2, 86580000.00, '2026-07-13 23:30:13', '2026-07-13 23:30:13'),
(9, 5, 218, 'MacBook Air M5 13 inch ', 'Z1L0000P1', 39790000.00, 1, 39790000.00, '2026-07-13 23:30:13', '2026-07-13 23:30:13'),
(10, 6, 20, 'iPhone 15 Plus', 'MU173VN/A', 17990000.00, 1, 17990000.00, '2026-07-06 09:30:13', '2026-07-06 09:30:13'),
(11, 6, 174, 'iPad Mini 7', 'MXNC3ZA/A', 17290000.00, 2, 34580000.00, '2026-07-06 09:30:13', '2026-07-06 09:30:13'),
(12, 7, 133, 'iPhone Air', 'MG2X4ZP/A', 33490000.00, 1, 33490000.00, '2026-07-26 04:30:13', '2026-07-26 04:30:13'),
(13, 7, 172, 'iPad Mini 7', 'MXNE3ZA/A', 17290000.00, 1, 17290000.00, '2026-07-26 04:30:13', '2026-07-26 04:30:13'),
(14, 7, 195, 'MacBook Neo A18 Pro 13 inch', 'MHFH4SA/A', 18090000.00, 1, 18090000.00, '2026-07-26 04:30:13', '2026-07-26 04:30:13'),
(15, 8, 121, 'iPhone 17 Pro', 'MG8Q4ZP/A', 44490000.00, 2, 88980000.00, '2026-07-24 20:30:13', '2026-07-24 20:30:13'),
(16, 9, 56, 'iPhone 16 Pro', 'MYNH3VN/A', 26990000.00, 2, 53980000.00, '2026-07-30 07:30:13', '2026-07-30 07:30:13'),
(17, 9, 124, 'iPhone Air', 'MG2M4ZP/A', 23190000.00, 2, 46380000.00, '2026-07-30 07:30:13', '2026-07-30 07:30:13'),
(18, 9, 209, 'MacBook Air M5 13 inch ', 'Z1L90003R', 36390000.00, 1, 36390000.00, '2026-07-30 07:30:13', '2026-07-30 07:30:13'),
(19, 10, 92, 'iPhone 17', 'MG6M4ZP/A', 23490000.00, 1, 23490000.00, '2026-07-16 05:30:13', '2026-07-16 05:30:13'),
(20, 10, 123, 'iPhone Air', 'MG2P4ZP/A', 22890000.00, 2, 45780000.00, '2026-07-16 05:30:13', '2026-07-16 05:30:13'),
(21, 11, 49, 'iPhone 16 Pro', 'MYNF3VN/A', 24690000.00, 2, 49380000.00, '2026-07-05 20:30:13', '2026-07-05 20:30:13'),
(22, 11, 159, 'iPad Air M4 13 inch', 'MH624ZA/A', 33190000.00, 2, 66380000.00, '2026-07-05 20:30:13', '2026-07-05 20:30:13'),
(23, 11, 217, 'MacBook Air M5 13 inch ', 'Z1L9000P5', 39790000.00, 1, 39790000.00, '2026-07-05 20:30:13', '2026-07-05 20:30:13'),
(24, 12, 219, 'MacBook Air M5 13 inch ', 'MDHK4SA/A', 48190000.00, 1, 48190000.00, '2026-07-31 06:30:13', '2026-07-31 06:30:13'),
(25, 13, 210, 'MacBook Air M5 13 inch ', 'Z1L00003Q', 36390000.00, 1, 36390000.00, '2026-07-21 22:30:13', '2026-07-21 22:30:13'),
(26, 14, 104, 'iPhone 17 Pro Max', 'MFYP4ZP/A', 34790000.00, 1, 34790000.00, '2026-07-26 01:30:13', '2026-07-26 01:30:13'),
(27, 15, 74, 'iPhone 16', 'MYED3VN/A', 20490000.00, 2, 40980000.00, '2026-07-22 12:30:13', '2026-07-22 12:30:13'),
(28, 16, 54, 'iPhone 16 Pro', 'MYNL3VN/A', 26990000.00, 2, 53980000.00, '2026-07-29 01:30:13', '2026-07-29 01:30:13'),
(29, 16, 62, 'iPhone 16 Pro', 'MYNR3VN/A', 35690000.00, 1, 35690000.00, '2026-07-29 01:30:13', '2026-07-29 01:30:13'),
(30, 17, 181, 'iPad Pro M5 11 inch', 'MDWM4ZA/A', 39490000.00, 2, 78980000.00, '2026-07-13 09:30:13', '2026-07-13 09:30:13'),
(31, 18, 157, 'iPad Air M4 13 inch', 'MH5X4ZA/A', 27590000.00, 2, 55180000.00, '2026-07-29 22:30:13', '2026-07-29 22:30:13'),
(32, 19, 172, 'iPad Mini 7', 'MXNE3ZA/A', 17290000.00, 1, 17290000.00, '2026-07-25 15:30:13', '2026-07-25 15:30:13'),
(33, 19, 194, 'iPad Pro M5 13 inch', 'MDYU4ZA/A', 75490000.00, 1, 75490000.00, '2026-07-25 15:30:13', '2026-07-25 15:30:13'),
(34, 20, 22, 'iPhone 16 Plus', 'MXVW3VN/A', 24490000.00, 2, 48980000.00, '2026-07-27 11:30:13', '2026-07-27 11:30:13'),
(35, 20, 47, 'iPhone 16 Pro Max', 'MYX43VN/A', 40790000.00, 1, 40790000.00, '2026-07-27 11:30:13', '2026-07-27 11:30:13'),
(36, 21, 27, 'iPhone 16 Plus', 'MXWV3VN/A', 27490000.00, 1, 27490000.00, '2026-07-24 06:30:13', '2026-07-24 06:30:13'),
(37, 22, 61, 'iPhone 16 Pro', 'MYNX3VN/A', 35690000.00, 2, 71380000.00, '2026-07-20 00:30:13', '2026-07-20 00:30:13'),
(38, 23, 59, 'iPhone 16 Pro', 'MYNN3VN/A', 31890000.00, 1, 31890000.00, '2026-07-31 04:30:13', '2026-07-31 04:30:13'),
(39, 23, 114, 'iPhone 17 Pro', 'MG8G4ZP/A', 31790000.00, 1, 31790000.00, '2026-07-31 04:30:13', '2026-07-31 04:30:13'),
(40, 23, 201, 'MacBook Neo A18 Pro 13 inch', 'MHFC4SA/A', 20790000.00, 1, 20790000.00, '2026-07-31 04:30:13', '2026-07-31 04:30:13'),
(41, 24, 133, 'iPhone Air', 'MG2X4ZP/A', 33490000.00, 2, 66980000.00, '2026-07-28 17:30:13', '2026-07-28 17:30:13'),
(42, 24, 170, 'iPad Mini 7', 'MXN93ZA/A', 14290000.00, 1, 14290000.00, '2026-07-28 17:30:13', '2026-07-28 17:30:13'),
(43, 25, 41, 'iPhone 16 Pro Max', 'MYX23VN/A', 35490000.00, 2, 70980000.00, '2026-07-10 02:30:13', '2026-07-10 02:30:13'),
(44, 26, 62, 'iPhone 16 Pro', 'MYNR3VN/A', 35690000.00, 2, 71380000.00, '2026-07-13 18:30:13', '2026-07-13 18:30:13'),
(45, 27, 71, 'iPhone 16', 'MYE93VN/A', 20390000.00, 1, 20390000.00, '2026-07-21 23:30:13', '2026-07-21 23:30:13'),
(46, 28, 59, 'iPhone 16 Pro', 'MYNN3VN/A', 31890000.00, 1, 31890000.00, '2026-07-09 00:30:13', '2026-07-09 00:30:13'),
(47, 28, 89, 'iPhone 17e', 'MHU34ZP/A', 22990000.00, 2, 45980000.00, '2026-07-09 00:30:13', '2026-07-09 00:30:13'),
(48, 29, 47, 'iPhone 16 Pro Max', 'MYX43VN/A', 40790000.00, 2, 81580000.00, '2026-07-06 22:30:13', '2026-07-06 22:30:13'),
(49, 29, 95, 'iPhone 17', 'MG6L4ZP/A', 23790000.00, 1, 23790000.00, '2026-07-06 22:30:13', '2026-07-06 22:30:13'),
(50, 29, 168, 'iPad Mini 7', 'MXN83ZA/A', 14290000.00, 1, 14290000.00, '2026-07-06 22:30:13', '2026-07-06 22:30:13'),
(51, 30, 42, 'iPhone 16 Pro Max', 'MYX33VN/A', 35490000.00, 1, 35490000.00, '2026-07-26 00:30:13', '2026-07-26 00:30:13'),
(52, 30, 96, 'iPhone 17', 'MG6N4ZP/A', 23790000.00, 2, 47580000.00, '2026-07-26 00:30:13', '2026-07-26 00:30:13'),
(53, 30, 215, 'MacBook Air M5 13 inch ', 'Z1L6000P0', 39790000.00, 1, 39790000.00, '2026-07-26 00:30:13', '2026-07-26 00:30:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_vouchers`
--

CREATE TABLE `order_vouchers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `voucher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `voucher_code` varchar(255) NOT NULL,
  `discount_amount` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL,
  `status` enum('pending','successful','failed','refunded') NOT NULL DEFAULT 'pending',
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payload`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_method`, `transaction_id`, `amount`, `status`, `payload`, `created_at`, `updated_at`) VALUES
(1, 1, 'momo', 'TXN-6A7357059131C', 191960000.00, 'successful', '\"{\\\"bank_code\\\":\\\"NCB\\\",\\\"card_type\\\":\\\"ATM\\\",\\\"response_code\\\":\\\"00\\\"}\"', '2026-08-03 20:30:13', '2026-08-03 20:30:13'),
(2, 2, 'vnpay', 'TXN-6A7357059281F', 27990000.00, 'pending', '\"{\\\"bank_code\\\":\\\"NCB\\\",\\\"card_type\\\":\\\"ATM\\\",\\\"response_code\\\":\\\"00\\\"}\"', '2026-07-05 16:30:13', '2026-07-05 16:30:13'),
(3, 3, 'cod', NULL, 101470000.00, 'successful', NULL, '2026-07-19 07:30:13', '2026-07-19 07:30:13'),
(4, 4, 'vnpay', 'TXN-6A735705957D6', 76970000.00, 'successful', '\"{\\\"bank_code\\\":\\\"NCB\\\",\\\"card_type\\\":\\\"ATM\\\",\\\"response_code\\\":\\\"00\\\"}\"', '2026-08-02 20:30:13', '2026-08-02 20:30:13'),
(5, 5, 'momo', 'TXN-6A73570596F43', 126370000.00, 'successful', '\"{\\\"bank_code\\\":\\\"NCB\\\",\\\"card_type\\\":\\\"ATM\\\",\\\"response_code\\\":\\\"00\\\"}\"', '2026-07-13 23:30:13', '2026-07-13 23:30:13'),
(6, 6, 'momo', 'TXN-6A73570597FEB', 52570000.00, 'pending', '\"{\\\"bank_code\\\":\\\"NCB\\\",\\\"card_type\\\":\\\"ATM\\\",\\\"response_code\\\":\\\"00\\\"}\"', '2026-07-06 09:30:13', '2026-07-06 09:30:13'),
(7, 7, 'cod', NULL, 68870000.00, 'pending', NULL, '2026-07-26 04:30:13', '2026-07-26 04:30:13'),
(8, 8, 'momo', 'TXN-6A7357059AB3F', 88980000.00, 'pending', '\"{\\\"bank_code\\\":\\\"NCB\\\",\\\"card_type\\\":\\\"ATM\\\",\\\"response_code\\\":\\\"00\\\"}\"', '2026-07-24 20:30:13', '2026-07-24 20:30:13'),
(9, 9, 'cod', NULL, 136750000.00, 'pending', NULL, '2026-07-30 07:30:13', '2026-07-30 07:30:13'),
(10, 10, 'momo', 'TXN-6A7357059DE54', 69270000.00, 'successful', '\"{\\\"bank_code\\\":\\\"NCB\\\",\\\"card_type\\\":\\\"ATM\\\",\\\"response_code\\\":\\\"00\\\"}\"', '2026-07-16 05:30:13', '2026-07-16 05:30:13'),
(11, 11, 'cod', NULL, 155550000.00, 'failed', NULL, '2026-07-05 20:30:13', '2026-07-05 20:30:13'),
(12, 12, 'cod', NULL, 48190000.00, 'pending', NULL, '2026-07-31 06:30:13', '2026-07-31 06:30:13'),
(13, 13, 'momo', 'TXN-6A735705A0E27', 36390000.00, 'pending', '\"{\\\"bank_code\\\":\\\"NCB\\\",\\\"card_type\\\":\\\"ATM\\\",\\\"response_code\\\":\\\"00\\\"}\"', '2026-07-21 22:30:13', '2026-07-21 22:30:13'),
(14, 14, 'cod', NULL, 34790000.00, 'successful', NULL, '2026-07-26 01:30:13', '2026-07-26 01:30:13'),
(15, 15, 'cod', NULL, 40980000.00, 'failed', NULL, '2026-07-22 12:30:13', '2026-07-22 12:30:13'),
(16, 16, 'vnpay', 'TXN-6A735705A3FC7', 89670000.00, 'pending', '\"{\\\"bank_code\\\":\\\"NCB\\\",\\\"card_type\\\":\\\"ATM\\\",\\\"response_code\\\":\\\"00\\\"}\"', '2026-07-29 01:30:13', '2026-07-29 01:30:13'),
(17, 17, 'momo', 'TXN-6A735705A5032', 78980000.00, 'successful', '\"{\\\"bank_code\\\":\\\"NCB\\\",\\\"card_type\\\":\\\"ATM\\\",\\\"response_code\\\":\\\"00\\\"}\"', '2026-07-13 09:30:13', '2026-07-13 09:30:13'),
(18, 18, 'cod', NULL, 55180000.00, 'successful', NULL, '2026-07-29 22:30:13', '2026-07-29 22:30:13'),
(19, 19, 'cod', NULL, 92780000.00, 'pending', NULL, '2026-07-25 15:30:13', '2026-07-25 15:30:13'),
(20, 20, 'momo', 'TXN-6A735705A8D83', 89770000.00, 'successful', '\"{\\\"bank_code\\\":\\\"NCB\\\",\\\"card_type\\\":\\\"ATM\\\",\\\"response_code\\\":\\\"00\\\"}\"', '2026-07-27 11:30:13', '2026-07-27 11:30:13'),
(21, 21, 'cod', NULL, 27490000.00, 'pending', NULL, '2026-07-24 06:30:13', '2026-07-24 06:30:13'),
(22, 22, 'vnpay', 'TXN-6A735705AAE89', 71380000.00, 'successful', '\"{\\\"bank_code\\\":\\\"NCB\\\",\\\"card_type\\\":\\\"ATM\\\",\\\"response_code\\\":\\\"00\\\"}\"', '2026-07-20 00:30:13', '2026-07-20 00:30:13'),
(23, 23, 'momo', 'TXN-6A735705ACBE7', 84470000.00, 'successful', '\"{\\\"bank_code\\\":\\\"NCB\\\",\\\"card_type\\\":\\\"ATM\\\",\\\"response_code\\\":\\\"00\\\"}\"', '2026-07-31 04:30:13', '2026-07-31 04:30:13'),
(24, 24, 'cod', NULL, 81270000.00, 'pending', NULL, '2026-07-28 17:30:13', '2026-07-28 17:30:13'),
(25, 25, 'vnpay', 'TXN-6A735705AF856', 70980000.00, 'failed', '\"{\\\"bank_code\\\":\\\"NCB\\\",\\\"card_type\\\":\\\"ATM\\\",\\\"response_code\\\":\\\"00\\\"}\"', '2026-07-10 02:30:13', '2026-07-10 02:30:13'),
(26, 26, 'vnpay', 'TXN-6A735705B0B88', 71380000.00, 'pending', '\"{\\\"bank_code\\\":\\\"NCB\\\",\\\"card_type\\\":\\\"ATM\\\",\\\"response_code\\\":\\\"00\\\"}\"', '2026-07-13 18:30:13', '2026-07-13 18:30:13'),
(27, 27, 'cod', NULL, 20390000.00, 'pending', NULL, '2026-07-21 23:30:13', '2026-07-21 23:30:13'),
(28, 28, 'vnpay', 'TXN-6A735705B3317', 77870000.00, 'refunded', '\"{\\\"bank_code\\\":\\\"NCB\\\",\\\"card_type\\\":\\\"ATM\\\",\\\"response_code\\\":\\\"00\\\"}\"', '2026-07-09 00:30:13', '2026-07-09 00:30:13'),
(29, 29, 'momo', 'TXN-6A735705B57CF', 119660000.00, 'successful', '\"{\\\"bank_code\\\":\\\"NCB\\\",\\\"card_type\\\":\\\"ATM\\\",\\\"response_code\\\":\\\"00\\\"}\"', '2026-07-06 22:30:13', '2026-07-06 22:30:13'),
(30, 30, 'momo', 'TXN-6A735705C769F', 122860000.00, 'failed', '\"{\\\"bank_code\\\":\\\"NCB\\\",\\\"card_type\\\":\\\"ATM\\\",\\\"response_code\\\":\\\"00\\\"}\"', '2026-07-26 00:30:13', '2026-07-26 00:30:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, 'iPhone 13', 'iphone-13', '<div class=\"dcontent prodetail__box__content_collapse\">\n<table>\n<tbody>\n<tr>\n<th>Kích thước màn hình </th>\n<td>\n<p>6.1 inches</p>\n<p>2532 x 1170 pixels</p>\n</td>\n</tr>\n<tr>\n<th>Công nghệ màn hình</th>\n<td>OLED LPTS</td>\n</tr>\n<tr>\n<th>Tốc độ làm mới</th>\n<td>60Hz</td>\n</tr>\n<tr>\n<th>Chipset</th>\n<td>Apple A15 Bionic</td>\n</tr>\n<tr>\n<th>GPU:</th>\n<td>Apple GPU (5 lõi)</td>\n</tr>\n<tr>\n<th>Bộ nhớ trong</th>\n<td>128 GB</td>\n</tr>\n<tr>\n<th>Hệ điều hành</th>\n<td>iOS</td>\n</tr>\n<tr>\n<th>Camera</th>\n<td>\n<p>- camera kép 12 MP, f/1.8</p>\n<p>- Camera góc rộng 12 MP, f/2.4, 120 độ</p>\n</td>\n</tr>\n<tr>\n<th>Quay video</th>\n<td>3840x2160 (4K UHD) (60 fps), 1920x1080 (Full HD) (240 fps), 1280x720 (HD) (30 fps)</td>\n</tr>\n<tr>\n<th>Chức năng</th>\n<td>OIS, HDR, Time-lapse video, Continuous autofocus, Picture-taking during video recording, Video light</td>\n</tr>\n<tr>\n<th>Camera trước</th>\n<td>12 MP (Time-of-Flight (ToF), EIS, HDR, Slow-motion videos)</td>\n</tr>\n<tr>\n<th>Quay video</th>\n<td>3840x2160 (4K UHD) (60 fps)</td>\n</tr>\n<tr>\n<th>Bluetooth</th>\n<td>Bluetooth 5.0</td>\n</tr>\n<tr>\n<th>Wi-Fi</th>\n<td>802.11 a, b, g, n, ac, ax (Wi-Fi 6), dual-band; MIMO, Wi-Fi Direct, Hotspot</td>\n</tr>\n<tr>\n<th>Cổng sạc:</th>\n<td>Lightning</td>\n</tr>\n<tr>\n<th>Định vị</th>\n<td>GPS, A-GPS, Glonass, Galileo, BeiDou, QZSS, Cell ID, Wi-Fi positioning</td>\n</tr>\n<tr>\n<th>Tính năng khác</th>\n<td>Accelerometer, Gyroscope, Compass, Barometer</td>\n</tr>\n<tr>\n<th>Kiểu màn hình</th>\n<td>Notch tai thỏ</td>\n</tr>\n<tr>\n<th>Dung lượng pin</th>\n<td>3240 mAh</td>\n</tr>\n<tr>\n<th>Loại pin</th>\n<td>Li - Ion, Không thể thay thế</td>\n</tr>\n<tr>\n<th>Chức năng sạc</th>\n<td>Sạc nhanh có dây 20W, sạc MagSafe 15W, sạc không dây chuẩn Qi 7.5W</td>\n</tr>\n<tr>\n<th>SIM kép</th>\n<td>Có</td>\n</tr>\n<tr>\n<th>Loại SIM</th>\n<td>Nano SIM, eSIM</td>\n</tr>\n<tr>\n<th>HD Voice:</th>\n<td>Có</td>\n</tr>\n<tr>\n<th>VoLTE:</th>\n<td>Có</td>\n</tr>\n</tbody>\n</table>\n</div>', 'active', '2026-08-05 01:44:32', '2026-08-05 01:44:32', NULL),
(2, 5, 'iPhone 14', 'iphone-14', '<div class=\"dcontent prodetail__box__content_collapse\">\n<table class=\"w-100\">\n<tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Màn Hình</td></tr><tr><td>Kích thước</td><td>6.1 inches</td></tr><tr><td>Công nghệ</td><td>OLED</td></tr><tr><td>Chất liệu mặt kính</td><td>Kính cường lực Ceramic Shield</td></tr><tr><td>Loại cảm ứng</td><td>Điện dung đa điểm</td></tr><tr><td>Độ phân giải</td><td>2532 x 1170 pixels</td></tr><tr><td>Tần số quét</td><td>60Hz</td></tr><tr><td>Độ sáng</td><td>1200 nits</td></tr><tr><td>Mật độ điểm ảnh</td><td>460 ppi</td></tr><tr><td>Các tính năng khác</td><td>Super Retina XDR</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Pin &amp; Sạc</td></tr><tr><td>Dung lượng pin</td><td>3279 mAh</td></tr><tr><td>Loại pin</td><td>Li-Ion</td></tr><tr><td>Hỗ trợ sạc tối đa</td><td>20 W</td></tr><tr><td>Sạc kèm theo máy</td><td>Không</td></tr><tr><td>Công nghệ pin</td><td>Tiết kiệm pin<br/>\r\nSạc pin nhanh<br/>\r\nSạc không dây MagSafe<br/>\r\nSạc không dây</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Thông tin chung</td></tr><tr><td>Thời điểm ra mắt</td><td>09/2022</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Camera sau</td></tr><tr><td>Độ phân giải</td><td>2 camera 12 MP</td></tr><tr><td>Quay phim</td><td>HD 720p@30fps<br/>\r\nFullHD 1080p@60fps<br/>\r\nFullHD 1080p@30fps<br/>\r\nFullHD 1080p@25fps<br/>\r\nFullHD 1080p@240fps<br/>\r\nFullHD 1080p@120fps<br/>\r\n4K 2160p@60fps<br/>\r\n4K 2160p@30fps<br/>\r\n4K 2160p@25fps<br/>\r\n4K 2160p@24fps</td></tr><tr><td>Tính năng</td><td>Zoom quang học<br/>\r\nZoom kỹ thuật số<br/>\r\nXóa phông<br/>\r\nTrôi nhanh thời gian (Time Lapse)<br/>\r\nToàn cảnh (Panorama)<br/>\r\nSmart HDR 4<br/>\r\nSiêu độ phân giải<br/>\r\nQuay chậm (Slow Motion)<br/>\r\nLive Photos<br/>\r\nGóc siêu rộng (Ultrawide)<br/>\r\nGóc rộng (Wide)<br/>\r\nDolby Vision HDR<br/>\r\nDeep Fusion<br/>\r\nCinematic<br/>\r\nChống rung quang học (OIS)<br/>\r\nChế độ hành động (Action Mode)<br/>\r\nBộ lọc màu<br/>\r\nBan đêm (Night Mode)<br/>\r\nPhotonic Engine</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Camera trước</td></tr><tr><td>Độ phân giải</td><td>12 MP</td></tr><tr><td>Quay phim</td><td>4230p@60/30/24fps</td></tr><tr><td>Tính năng</td><td>Xóa phông<br/>\r\nTrôi nhanh thời gian (Time Lapse)<br/>\r\nSmart HDR 4<br/>\r\nRetina Flash<br/>\r\nQuay video Full HD<br/>\r\nQuay video 4K<br/>\r\nQuay chậm (Slow Motion)<br/>\r\nNhãn dán (AR Stickers)<br/>\r\nLive Photos<br/>\r\nDeep Fusion<br/>\r\nCinematic<br/>\r\nChụp đêm<br/>\r\nChống rung điện tử kỹ thuật số (EIS)<br/>\r\nChế độ chân dung<br/>\r\nBộ lọc màu<br/>\r\nTrueDepth<br/>\r\nPhotonic Engine</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Cấu hình &amp; Bộ nhớ</td></tr><tr><td>Hệ điều hành</td><td>iOS 17</td></tr><tr><td>Chip xử lý (CPU)</td><td>Apple A15 Bionic</td></tr><tr><td>Tốc độ CPU</td><td>3.22 GHz</td></tr><tr><td>Chip đồ họa (GPU)</td><td>Apple GPU 5 nhân</td></tr><tr><td>RAM</td><td>6 GB</td></tr><tr><td>Dung lượng lưu trữ</td><td>128 GB</td></tr><tr><td>Thẻ nhớ</td><td>Không</td></tr><tr><td>Danh bạ</td><td>Không giới hạn</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Kết nối</td></tr><tr><td>Mạng di động</td><td>Hỗ trợ 5G</td></tr><tr><td>SIM</td><td>1 Nano SIM &amp; 1 eSIM</td></tr><tr><td>Wifi</td><td>Wi-Fi MIMO<br/>\r\nWi-Fi 802.11 a/b/g/n/ac/ax<br/>\r\nDual-band (2.4 GHz/5 GHz)</td></tr><tr><td>GPS</td><td>QZSS<br/>\r\nGPS<br/>\r\nGLONASS<br/>\r\nGALILEO<br/>\r\nBEIDOU</td></tr><tr><td>Bluetooth</td><td>v5.3</td></tr><tr><td>Cổng kết nối/sạc</td><td>Lightning</td></tr><tr><td>Jack tai nghe</td><td>Lightning</td></tr><tr><td>Kết nối khác</td><td>NFC</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Thiết kế &amp; Chất liệu</td></tr><tr><td>Thiết kế</td><td>Nguyên khối</td></tr><tr><td>Chất liệu</td><td>Khung nhôm</td></tr><tr><td>Kích thước</td><td>Dài 146.7 mm - Ngang 71.5 mm - Dày 7.8 mm</td></tr><tr><td>Trọng lượng</td><td>Nặng 172 g</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Tiện ích</td></tr><tr><td>Bảo mật nâng cao</td><td>Secure Enclave<br/>\r\nChế độ phong tỏa (Lockdown Mode)<br/>\r\nChuyển tiếp bảo mật (iCloud Private Relay)<br/>\r\nBảo vệ dữ liệu nâng cao (Advanced Data Protection)<br/>\r\nKhóa kích hoạt iCloud (iCloud Activation Lock)</td></tr><tr><td>Tính năng đặc biệt</td><td>Đang cập nhật</td></tr><tr><td>Kháng nước, bụi</td><td>IP68</td></tr><tr><td>Ghi âm</td><td>Ghi âm mặc định</td></tr><tr><td>Xem phim</td><td>H.264(MPEG4-AVC)<br/>\r\nProRes<br/>\r\nHEVC</td></tr><tr><td>Nghe nhạc</td><td>MP3<br/>\r\nAAC</td></tr><tr><td>Tiện ích khác</td><td>Phát hiện va chạm (Crash Detection)<br/>\r\nSOS Khẩn Cấp<br/>\r\nChạm 2 lần sáng màn hình<br/>\r\nApple Pay</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Bảo mật &amp; Cảm biến</td></tr><tr><td>Bảo mật</td><td>Face ID</td></tr><tr><td>Cảm biến</td><td>Cảm biến gia tốc<br/>\r\nCảm biến tiệm cận<br/>\r\nCảm biến ánh sáng<br/>\r\nCon quay hồi chuyển</td></tr>\n</table>\n</div>', 'active', '2026-08-05 01:44:32', '2026-08-05 01:44:32', NULL),
(3, 6, 'iPhone 15', 'iphone-15', '<div class=\"dcontent product-detail-quote-wrapper prodetail__box__content_collapse\">\n<div class=\"quote-icon--checked\"><p>Quà tặng lưu niệm <span style=\"color:#ff0000;\"><strong>Minh Tuấn Mobile</strong></span></p>\n</div><div class=\"quote-icon--checked\"><p><strong>Ưu đãi mua kèm (01.08 - 31.08)</strong></p>\n<ul>\n<li>Giảm <span style=\"color:#ff0000;\"><strong><span style=\"font-size:16px;\">200K</span></strong></span> khi mua thêm sản phẩm trong hệ sinh thái Apple</li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>30</strong></span><span style=\"font-size:12px;\"><strong>%</strong></span></span> cường lực khi mua gói bảo hành VIP</li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>100K</strong></span></span> khi mua <strong><a href=\"https://minhtuanmobile.com/phu-kien/laptop/phan-mem/microsoft/\"><span style=\"color:#ff0000;\">Microsoft Office</span></a></strong></li>\n<li>Giảm <span style=\"color:#ff0000;\"><strong><span style=\"font-size:16px;\">50K</span></strong></span> khi mua <strong><a href=\"https://minhtuanmobile.com/phu-kien/thiet-bi-luu-tru/\">Ổ cứng/USB/Thẻ nhớ</a></strong></li>\n<li>Giảm <strong><span style=\"color:#ff0000;\"><span style=\"font-size:16px;\">10</span><span style=\"font-size:12px;\">%</span></span></strong> tối đa <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>600K</strong></span></span> khi mua <strong><a href=\"https://minhtuanmobile.com/am-thanh/\">Tai Nghe/Loa</a></strong></li>\n</ul>\n<p>(Chỉ áp dụng với sản phẩm đủ điều kiện)</p>\n</div> </div>', 'active', '2026-08-05 01:44:32', '2026-08-05 01:44:32', NULL),
(4, 6, 'iPhone 15 Plus', 'iphone-15-plus', '<div class=\"dcontent prodetail__box__content_collapse\">\n<table class=\"w-100\">\n<tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Màn Hình</td></tr><tr><td>Kích thước</td><td>6.7 inches</td></tr><tr><td>Công nghệ</td><td>Super Retina XDR OLED</td></tr><tr><td>Chất liệu mặt kính</td><td>Kính cường lực Ceramic Shield</td></tr><tr><td>Loại cảm ứng</td><td>Điện dung đa điểm</td></tr><tr><td>Độ phân giải</td><td>2796 x 1290-pixel</td></tr><tr><td>Tần số quét</td><td>60Hz</td></tr><tr><td>Độ sáng</td><td>2000 nits</td></tr><tr><td>Mật độ điểm ảnh</td><td>460 ppi</td></tr><tr><td>Các tính năng khác</td><td>Dynamic Island<br/>\r\nHDR display<br/>\r\nTrue Tone<br/>\r\nWide color (P3)<br/>\r\nHaptic Touch<br/>\r\nLớp phủ oleophobia chống dấu vân tay</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Pin &amp; Sạc</td></tr><tr><td>Dung lượng pin</td><td>4383 mAh</td></tr><tr><td>Loại pin</td><td>Li-Ion</td></tr><tr><td>Hỗ trợ sạc tối đa</td><td>20 W</td></tr><tr><td>Sạc kèm theo máy</td><td>Không</td></tr><tr><td>Công nghệ pin</td><td>Tiết kiệm pin<br/>\r\nSạc pin nhanh<br/>\r\nSạc ngược qua cáp<br/>\r\nSạc không dây MagSafe<br/>\r\nSạc không dây</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Thông tin chung</td></tr><tr><td>Thời điểm ra mắt</td><td>09/2023</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Camera sau</td></tr><tr><td>Độ phân giải</td><td>Chính 48 MP &amp; Phụ 12 MP</td></tr><tr><td>Quay phim</td><td>HD 720p@30fps<br/>\r\nFullHD 1080p@60fps<br/>\r\nFullHD 1080p@30fps<br/>\r\nFullHD 1080p@240fps<br/>\r\nFullHD 1080p@120fps<br/>\r\n4K 2160p@60fps<br/>\r\n4K 2160p@30fps<br/>\r\n4K 2160p@24fps</td></tr><tr><td>Tính năng</td><td>Zoom quang học<br/>\r\nZoom kỹ thuật số<br/>\r\nXóa phông<br/>\r\nTrôi nhanh thời gian (Time Lapse)<br/>\r\nToàn cảnh (Panorama)<br/>\r\nSmart HDR 5<br/>\r\nSiêu độ phân giải<br/>\r\nQuay Siêu chậm (Super Slow Motion)<br/>\r\nQuay chậm (Slow Motion)<br/>\r\nLive Photos<br/>\r\nGóc siêu rộng (Ultrawide)<br/>\r\nGóc rộng (Wide)<br/>\r\nDolby Vision HDR<br/>\r\nDeep Fusion<br/>\r\nCinematic<br/>\r\nChống rung quang học (OIS)<br/>\r\nChế độ hành động (Action Mode)<br/>\r\nBộ lọc màu<br/>\r\nBan đêm (Night Mode)</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Camera trước</td></tr><tr><td>Độ phân giải</td><td>12 MP</td></tr><tr><td>Quay phim</td><td>4K@24/25/30/60 fps<br/>\r\nHD 1080p@25/30/60 fps</td></tr><tr><td>Tính năng</td><td>Smart HDR 5<br/>\r\nXóa phông<br/>\r\nTrôi nhanh thời gian (Time Lapse)<br/>\r\nQuay video HD<br/>\r\nQuay video Full HD<br/>\r\nQuay video 4K<br/>\r\nQuay chậm (Slow Motion)<br/>\r\nNhãn dán (AR Stickers)<br/>\r\nLive Photos<br/>\r\nCinematic<br/>\r\nChụp đêm<br/>\r\nBộ lọc màu</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Cấu hình &amp; Bộ nhớ</td></tr><tr><td>Hệ điều hành</td><td>iOS 17</td></tr><tr><td>Chip xử lý (CPU)</td><td>Apple A16 Bionic</td></tr><tr><td>Tốc độ CPU</td><td>3.46 GHz</td></tr><tr><td>Chip đồ họa (GPU)</td><td>Apple GPU 5 nhân</td></tr><tr><td>RAM</td><td>6 GB</td></tr><tr><td>Dung lượng lưu trữ</td><td>128 GB</td></tr><tr><td>Thẻ nhớ</td><td>Không</td></tr><tr><td>Danh bạ</td><td>Không giới hạn</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Kết nối</td></tr><tr><td>Mạng di động</td><td>Hỗ trợ 5G</td></tr><tr><td>SIM</td><td>1 Nano SIM &amp; 1 eSIM</td></tr><tr><td>Wifi</td><td>Wi-Fi MIMO<br/>\r\nWi-Fi 802.11 a/b/g/n/ac/ax<br/>\r\nWi-Fi 6</td></tr><tr><td>GPS</td><td>QZSS<br/>\r\nGPS<br/>\r\nGLONASS<br/>\r\nGALILEO<br/>\r\nBEIDOU</td></tr><tr><td>Bluetooth</td><td>v5.3</td></tr><tr><td>Cổng kết nối/sạc</td><td>USB Type-C</td></tr><tr><td>Jack tai nghe</td><td>USB Type-C</td></tr><tr><td>Kết nối khác</td><td>NFC</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Thiết kế &amp; Chất liệu</td></tr><tr><td>Thiết kế</td><td>Nguyên khối</td></tr><tr><td>Chất liệu</td><td>Khung nhôm</td></tr><tr><td>Kích thước</td><td>Dài 160.9 mm - Ngang 77.8 mm - Dày 7.8 mm </td></tr><tr><td>Trọng lượng</td><td>Nặng 201g</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Tiện ích</td></tr><tr><td>Bảo mật nâng cao</td><td>Chế độ khóa (Lockdown Mode)<br/>\r\nBảo vệ dữ liệu nâng cao cho iCloud<br/>\r\nBảo vệ thiết bị khi bị đánh cắp</td></tr><tr><td>Tính năng đặc biệt</td><td>Sạc không dây</td></tr><tr><td>Kháng nước, bụi</td><td>IP68 </td></tr><tr><td>Ghi âm</td><td>Ghi âm mặc định</td></tr><tr><td>Xem phim</td><td>H.264(MPEG4-AVC)<br/>\r\nProRes<br/>\r\nHEVC</td></tr><tr><td>Nghe nhạc</td><td>MP3<br/>\r\nFLAC<br/>\r\nAAC</td></tr><tr><td>Tiện ích khác</td><td>SOS Khẩn Cấp<br/>\r\nPhát Hiện Va Chạm</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Bảo mật &amp; Cảm biến</td></tr><tr><td>Bảo mật</td><td>Face ID</td></tr><tr><td>Cảm biến</td><td>Cảm biến gia tốc<br/>\r\nCảm biến tiệm cận<br/>\r\nCảm biến ánh sáng<br/>\r\nCon quay hồi chuyển<br/>\r\nCảm biến áp kế<br/>\r\nCảm biến trọng lực</td></tr>\n</table>\n</div>', 'active', '2026-08-05 01:44:33', '2026-08-05 01:44:33', NULL),
(5, 7, 'iPhone 16 Plus', 'iphone-16-plus', '<div class=\"dcontent product-detail-quote-wrapper prodetail__box__content_collapse\">\n<div class=\"quote-icon--checked\"><p>Quà tặng lưu niệm <span style=\"color:#ff0000;\"><strong>Minh Tuấn Mobile</strong></span></p>\n</div><div class=\"quote-icon--checked\"><p><strong>Ưu đãi mua kèm (01.08 - 31.08)</strong></p>\n<ul>\n<li>Giảm <span style=\"color:#ff0000;\"><strong><span style=\"font-size:16px;\">200K</span></strong></span> khi mua thêm sản phẩm trong hệ sinh thái Apple</li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>100K</strong></span></span> khi mua gói bảo hành VIP 6 tháng </li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>150K</strong></span></span> khi mua gói bảo hành VIP 12 tháng</li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>30</strong></span><span style=\"font-size:12px;\"><strong>%</strong></span></span> cường lực khi mua gói bảo hành VIP</li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>100K</strong></span></span> khi mua <strong><a href=\"https://minhtuanmobile.com/phu-kien/laptop/phan-mem/microsoft/\"><span style=\"color:#ff0000;\">Microsoft Office</span></a></strong></li>\n<li>Giảm <span style=\"color:#ff0000;\"><strong><span style=\"font-size:16px;\">50K</span></strong></span> khi mua <strong><a href=\"https://minhtuanmobile.com/phu-kien/thiet-bi-luu-tru/\">Ổ cứng/USB/Thẻ nhớ</a></strong></li>\n<li>Giảm <strong><span style=\"color:#ff0000;\"><span style=\"font-size:16px;\">10</span><span style=\"font-size:12px;\">%</span></span></strong> tối đa <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>600K</strong></span></span> khi mua <strong><a href=\"https://minhtuanmobile.com/am-thanh/\">Tai Nghe/Loa</a></strong></li>\n</ul>\n<p>(Chỉ áp dụng với sản phẩm đủ điều kiện)</p>\n</div> </div>', 'active', '2026-08-05 01:44:33', '2026-08-05 01:44:33', NULL),
(6, 7, 'iPhone 16 Pro Max', 'iphone-16-pro-max', '<div class=\"dcontent prodetail__box__content_collapse\">\n<table class=\"w-100\">\n<tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Màn Hình</td></tr><tr><td>Kích thước</td><td>6.9 inch</td></tr><tr><td>Công nghệ</td><td>OLED</td></tr><tr><td>Chất liệu mặt kính</td><td>Kính cường lực Ceramic Shield</td></tr><tr><td>Loại cảm ứng</td><td>Điện dung đa điểm</td></tr><tr><td>Độ phân giải</td><td>Super Retina XDR (2886 x 1320 Pixels)</td></tr><tr><td>Tần số quét</td><td>120 Hz</td></tr><tr><td>Độ sáng</td><td>2000 nits</td></tr><tr><td>Mật độ điểm ảnh</td><td>Không có thông tin</td></tr><tr><td>Các tính năng khác</td><td>Màn hình luôn hiển thị (Always-On display), True Tone, HDR10, Dolby Vision, DCI-P3, Độ tương phản 2.000.000:1</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Pin &amp; Sạc</td></tr><tr><td>Dung lượng pin</td><td>4.676 mAh</td></tr><tr><td>Loại pin</td><td>Li-Ion</td></tr><tr><td>Hỗ trợ sạc tối đa</td><td>20W</td></tr><tr><td>Sạc kèm theo máy</td><td>Không</td></tr><tr><td>Công nghệ pin</td><td>Tiết kiệm pin, Sạc nhanh, Sạc không dây, Sạc không dây MagSafe, Sạc ngược qua cáp</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Thông tin chung</td></tr><tr><td>Thời điểm ra mắt</td><td>09/2024</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Camera sau</td></tr><tr><td>Độ phân giải</td><td>Chính 48 MP, Siêu rộng 48 MP, Telephoto 12 MP</td></tr><tr><td>Quay phim</td><td>4K, 2.8K, FullHD, HD ở nhiều tốc độ khung hình</td></tr><tr><td>Tính năng</td><td>Chống rung quang học (OIS), Chế độ hành động (Action Mode), Zoom quang học, Smart HDR 5, Chụp ảnh Raw, Quay video ProRes, Xóa phông (Chế độ chân dung), Toàn cảnh (Panorama), Chụp đêm, Siêu cận (Macro), Góc siêu rộng (Ultrawide), Cinematic, Deep Fusion, Photonic Engine, Tự động lấy nét (AF)</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Camera trước</td></tr><tr><td>Độ phân giải</td><td>12 MP</td></tr><tr><td>Quay phim</td><td>Quay video 4K, Quay video FullHD</td></tr><tr><td>Tính năng</td><td>Chống rung quang học, Tự động lấy nét (AF), Xóa phông (Chế độ chân dung), Chụp đêm, HDR, Flash màn hình</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Cấu hình &amp; Bộ nhớ</td></tr><tr><td>Hệ điều hành</td><td>iOS 18</td></tr><tr><td>Chip xử lý (CPU)</td><td>Apple A18 Pro (6 nhân)</td></tr><tr><td>Tốc độ CPU</td><td>Hãng không công bố</td></tr><tr><td>Chip đồ họa (GPU)</td><td>Apple GPU 6 nhân</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Dung lượng lưu trữ</td><td>256 GB</td></tr><tr><td>Thẻ nhớ</td><td>Không</td></tr><tr><td>Danh bạ</td><td>Không giới hạn</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Kết nối</td></tr><tr><td>Mạng di động</td><td>Hỗ trợ 5G</td></tr><tr><td>SIM</td><td>1 Nano SIM &amp; 1 eSIM</td></tr><tr><td>Wifi</td><td>Wi-Fi 7, Wi-Fi MIMO</td></tr><tr><td>GPS</td><td>BEIDOU, GALILEO, GLONASS, GPS, QZSS, iBeacon</td></tr><tr><td>Bluetooth</td><td>v5.3</td></tr><tr><td>Cổng kết nối/sạc</td><td>USB Type-C</td></tr><tr><td>Jack tai nghe</td><td>Type-C</td></tr><tr><td>Kết nối khác</td><td>NFC, Apple Pay</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Thiết kế &amp; Chất liệu</td></tr><tr><td>Thiết kế</td><td>Nguyên khối</td></tr><tr><td>Chất liệu</td><td>Khung Titan &amp; Mặt lưng kính cường lực</td></tr><tr><td>Kích thước</td><td>Dài 163 mm - Ngang 77.6 mm - Dày 8.25 mm</td></tr><tr><td>Trọng lượng</td><td>227 g</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Tiện ích</td></tr><tr><td>Bảo mật nâng cao</td><td>Mở khóa khuôn mặt Face ID</td></tr><tr><td>Tính năng đặc biệt</td><td>Phát hiện va chạm (Crash Detection), Loa kép, Âm thanh Dolby Atmos, Màn hình luôn hiển thị AOD, Chạm 2 lần sáng màn hình</td></tr><tr><td>Kháng nước, bụi</td><td>IP68</td></tr><tr><td>Ghi âm</td><td>Ghi âm mặc định</td></tr><tr><td>Xem phim</td><td>MP4, HEVC</td></tr><tr><td>Nghe nhạc</td><td>AAC, APAC, Apple Lossless, FLAC, MP3</td></tr><tr><td>Tiện ích khác</td><td>La bàn</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Bảo mật &amp; Cảm biến</td></tr><tr><td>Bảo mật</td><td>Mở khóa bằng mật mã, Mở khóa khuôn mặt</td></tr><tr><td>Cảm biến</td><td>Cảm biến khí áp kế, Con quay hồi chuyển, Cảm biến ánh sáng, Cảm biến gia tốc, Cảm biến la bàn, Cảm biến tiệm cận</td></tr>\n</table>\n</div>', 'active', '2026-08-05 01:44:33', '2026-08-05 01:44:33', NULL),
(7, 7, 'iPhone 16 Pro', 'iphone-16-pro', '<div class=\"dcontent prodetail__box__content_collapse\">\n<table class=\"w-100\">\n<tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Màn Hình</td></tr><tr><td>Kích thước</td><td>6.3 inch</td></tr><tr><td>Công nghệ</td><td>OLED, ProMotion 120 Hz, Always‑On Display</td></tr><tr><td>Chất liệu mặt kính</td><td>Ceramic Shield</td></tr><tr><td>Loại cảm ứng</td><td>Cảm ứng điện dung đa điểm</td></tr><tr><td>Độ phân giải</td><td>2622 x 1206 pixels</td></tr><tr><td>Tần số quét</td><td>120Hz</td></tr><tr><td>Độ sáng</td><td>2000 nits</td></tr><tr><td>Mật độ điểm ảnh</td><td>460 ppi</td></tr><tr><td>Các tính năng khác</td><td>Dynamic Island, viền siêu mỏng, Always‑On display</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Pin &amp; Sạc</td></tr><tr><td>Dung lượng pin</td><td>3.582 mAh</td></tr><tr><td>Loại pin</td><td>Lithium-ion</td></tr><tr><td>Hỗ trợ sạc tối đa</td><td>20W</td></tr><tr><td>Sạc kèm theo máy</td><td>Không có</td></tr><tr><td>Công nghệ pin</td><td>Tiết kiệm pin<br/>\r\nSạc pin nhanh<br/>\r\nSạc ngược qua cáp<br/>\r\nSạc không dây MagSafe<br/>\r\nSạc không dây</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Thông tin chung</td></tr><tr><td>Thời điểm ra mắt</td><td>02/2025</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Camera sau</td></tr><tr><td>Độ phân giải</td><td>Chính 48 MP &amp; Phụ 48 MP, 12 MP</td></tr><tr><td>Quay phim</td><td>HD 720p@30fps<br/>\r\nFullHD 1080p@60fps<br/>\r\nFullHD 1080p@30fps<br/>\r\nFullHD 1080p@25fps<br/>\r\nFullHD 1080p@240fps<br/>\r\nFullHD 1080p@120fps<br/>\r\n4K 2160p@60fps<br/>\r\n4K 2160p@30fps<br/>\r\n4K 2160p@25fps<br/>\r\n4K 2160p@24fps<br/>\r\n4K 2160p@120fps<br/>\r\n4K 2160p@100fps<br/>\r\n2.8K 60fps</td></tr><tr><td>Tính năng</td><td>Ảnh Raw<br/>\r\nĐiều khiển camera (Camera Control)<br/>\r\nZoom quang học<br/>\r\nZoom kỹ thuật số<br/>\r\nXóa phông<br/>\r\nTrôi nhanh thời gian (Time Lapse)<br/>\r\nSmart HDR 5<br/>\r\nSiêu độ phân giải<br/>\r\nSiêu cận (Macro)<br/>\r\nQuay video định dạng Log<br/>\r\nQuay video ProRes<br/>\r\nQuay chậm (Slow Motion)<br/>\r\nLive Photos<br/>\r\nGóc siêu rộng (Ultrawide)<br/>\r\nDolby Vision HDR<br/>\r\nDeep Fusion<br/>\r\nCinematic<br/>\r\nChụp ảnh liên tục<br/>\r\nChống rung quang học (OIS)<br/>\r\nChế độ hành động (Action Mode)<br/>\r\nChân dung đêm<br/>\r\nBộ lọc màu<br/>\r\nBan đêm (Night Mode)<br/>\r\nPhotonic Engine</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Camera trước</td></tr><tr><td>Độ phân giải</td><td>12 MP</td></tr><tr><td>Quay phim</td><td>4K@24 fps<br/>\r\n4K@25 fps<br/>\r\n4K@30 fps<br/>\r\n4K@60 fps<br/>\r\n1080p@25fps<br/>\r\n1080p@30 fps<br/>\r\n1080p@60 fp</td></tr><tr><td>Tính năng</td><td>Smart HDR 5<br/>\r\nXóa phông<br/>\r\nTrôi nhanh thời gian (Time Lapse)<br/>\r\nRetina Flash<br/>\r\nQuay video định dạng Log<br/>\r\nQuay video ProRes<br/>\r\nQuay video Full HD<br/>\r\nQuay video 4K<br/>\r\nQuay chậm (Slow Motion)<br/>\r\nLive Photos<br/>\r\nDeep Fusion<br/>\r\nCinematic<br/>\r\nChụp ảnh Raw<br/>\r\nChụp ảnh liên tục<br/>\r\nChụp đêm<br/>\r\nChống rung<br/>\r\nBộ lọc màu<br/>\r\nPhotonic Engine</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Cấu hình &amp; Bộ nhớ</td></tr><tr><td>Hệ điều hành</td><td>iOS 18</td></tr><tr><td>Chip xử lý (CPU)</td><td>Apple A18 Pro</td></tr><tr><td>Tốc độ CPU</td><td>Hãng không công bố</td></tr><tr><td>Chip đồ họa (GPU)</td><td>6‑core Apple GPU</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Dung lượng lưu trữ</td><td>128GB</td></tr><tr><td>Thẻ nhớ</td><td>Không hỗ trợ thẻ nhớ ngoài</td></tr><tr><td>Danh bạ</td><td>Không giới hạn</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Kết nối</td></tr><tr><td>Mạng di động</td><td>2G–5G NR</td></tr><tr><td>SIM</td><td>Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim</td></tr><tr><td>Wifi</td><td>Wi‑Fi 7 (802.11be) với 2x2 MIMO7</td></tr><tr><td>GPS</td><td>QZSS<br/>\r\nNavIC<br/>\r\niBeacon<br/>\r\nGPS<br/>\r\nGLONASS<br/>\r\nGALILEO<br/>\r\nBEIDOU</td></tr><tr><td>Bluetooth</td><td>v5.3</td></tr><tr><td>Cổng kết nối/sạc</td><td>Type-C</td></tr><tr><td>Jack tai nghe</td><td>Type-C</td></tr><tr><td>Kết nối khác</td><td>NFC</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Thiết kế &amp; Chất liệu</td></tr><tr><td>Thiết kế</td><td>Nguyên khối</td></tr><tr><td>Chất liệu</td><td>Khung Titan &amp; Mặt lưng kính cường lực</td></tr><tr><td>Kích thước</td><td>Dài 149.6 mm - Ngang 71.5 mm - Dày 8.25 mm </td></tr><tr><td>Trọng lượng</td><td>199 g</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Tiện ích</td></tr><tr><td>Bảo mật nâng cao</td><td>Mã hóa dữ liệu<br/>\r\nEmergency SOS via Satellite</td></tr><tr><td>Tính năng đặc biệt</td><td>Âm thanh Dolby Atmos<br/>\r\nPhát hiện va chạm (Crash Detection)<br/>\r\nMàn hình luôn hiển thị AOD<br/>\r\nLoa kép<br/>\r\nHDR10+<br/>\r\nHDR10<br/>\r\nDCI-P3<br/>\r\nCông nghệ âm thanh Dolby Digital Plus<br/>\r\nCông nghệ hình ảnh Dolby Vision<br/>\r\nCông nghệ HLG<br/>\r\nCông nghê âm thanh Dolby Digital<br/>\r\nChạm 2 lần sáng màn hình<br/>\r\nApple Pay</td></tr><tr><td>Kháng nước, bụi</td><td>IP68</td></tr><tr><td>Ghi âm</td><td>Ghi âm mặc định</td></tr><tr><td>Xem phim</td><td>MP4<br/>\r\nHEVC</td></tr><tr><td>Nghe nhạc</td><td>MP3<br/>\r\nFLAC<br/>\r\nApple Lossless<br/>\r\nAPAC<br/>\r\nAAC</td></tr><tr><td>Tiện ích khác</td><td>Camera Control Button<br/>\r\nApple Intelligence (AI)</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Bảo mật &amp; Cảm biến</td></tr><tr><td>Bảo mật</td><td>Mở khóa bằng mật mã<br/>\r\nMở khóa khuôn mặt</td></tr><tr><td>Cảm biến</td><td>Cảm biến gia tốc<br/>\r\nCảm biến tiệm cận<br/>\r\nCảm biến ánh sáng<br/>\r\nLa bàn<br/>\r\nCon quay hồi chuyển<br/>\r\nCảm biến áp kế<br/>\r\nCảm biến trọng lực</td></tr>\n</table>\n</div>', 'active', '2026-08-05 01:44:33', '2026-08-05 01:44:33', NULL),
(8, 7, 'iPhone 16e', 'iphone-16e', '<div class=\"dcontent prodetail__box__content_collapse\">\n<table class=\"w-100\">\n<tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Màn Hình</td></tr><tr><td>Kích thước</td><td>6.1 inch</td></tr><tr><td>Công nghệ</td><td>OLED</td></tr><tr><td>Chất liệu mặt kính</td><td>Kính cường lực Ceramic Shield</td></tr><tr><td>Loại cảm ứng</td><td>Haptic Touch</td></tr><tr><td>Độ phân giải</td><td>2532 x 1170 pixels</td></tr><tr><td>Tần số quét</td><td>60 Hz</td></tr><tr><td>Độ sáng</td><td>800 nit (tiêu chuẩn); 1200 nit (HDR)</td></tr><tr><td>Mật độ điểm ảnh</td><td>Không có thông tin</td></tr><tr><td>Các tính năng khác</td><td>Màn hình HDR, True Tone, Dải màu rộng P3, Tỷ lệ tương phản 2.000.000:1, Thu Phóng Màn Hình, Kiểu màn hình Tai thỏ</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Pin &amp; Sạc</td></tr><tr><td>Dung lượng pin</td><td>3.961 mAh</td></tr><tr><td>Loại pin</td><td>Li-Ion</td></tr><tr><td>Hỗ trợ sạc tối đa</td><td>20W</td></tr><tr><td>Sạc kèm theo máy</td><td>Không</td></tr><tr><td>Công nghệ pin</td><td>Sạc nhanh 50% trong 30 phút, Sạc không dây Qi 7.5W</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Thông tin chung</td></tr><tr><td>Thời điểm ra mắt</td><td>02/2025</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Camera sau</td></tr><tr><td>Độ phân giải</td><td>Chính (Fusion) 48 MP, f/1.6<br/>\r\nTelephoto 2x 12 MP, f/1.6</td></tr><tr><td>Quay phim</td><td>4K Dolby Vision@24/25/30/60 fps<br/>\r\n1080p@25/30/60 fps<br/>\r\nVideo chậm 1080p@120/240 fps</td></tr><tr><td>Tính năng</td><td>Chống rung quang học (OIS), Chống rung điện tử (EIS), Zoom quang học, Zoom kỹ thuật số, Smart HDR 5, Xóa phông, Toàn cảnh (Panorama), Trôi nhanh thời gian (Time Lapse), Chụp đêm, Live Photos, Deep Fusion, Gắn thẻ địa lý</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Camera trước</td></tr><tr><td>Độ phân giải</td><td>12 MP, f/1.9</td></tr><tr><td>Quay phim</td><td>4K Dolby Vision@24/25/30/60 fps<br/>\r\n1080p@25/30/60 fps<br/>\r\nVideo chậm 1080p@120/240 fps</td></tr><tr><td>Tính năng</td><td>Chống rung điện tử (EIS), Xóa phông, Quay chậm (Slow Motion), Trôi nhanh thời gian (Time Lapse), Chụp đêm, Live Photos, Deep Fusion, Photonic Engine, Retina Flash</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Cấu hình &amp; Bộ nhớ</td></tr><tr><td>Hệ điều hành</td><td>iOS 18</td></tr><tr><td>Chip xử lý (CPU)</td><td>Chip A18 (CPU 6 lõi: 2 lõi hiệu năng + 4 lõi tiết kiệm điện)</td></tr><tr><td>Tốc độ CPU</td><td>GPU 4 lõi</td></tr><tr><td>Chip đồ họa (GPU)</td><td>Apple GPU 4 nhân</td></tr><tr><td>RAM</td><td>8 GB</td></tr><tr><td>Dung lượng lưu trữ</td><td>128 GB</td></tr><tr><td>Thẻ nhớ</td><td>Không</td></tr><tr><td>Danh bạ</td><td>Không giới hạn</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Kết nối</td></tr><tr><td>Mạng di động</td><td>Hỗ trợ 5G</td></tr><tr><td>SIM</td><td>1 Nano SIM &amp; 1 eSIM</td></tr><tr><td>Wifi</td><td>Wi-Fi 6, Dual-band (2.4 GHz/5 GHz/6GHz), Wi-Fi hotspot, Wi-Fi MIMO</td></tr><tr><td>GPS</td><td>BEIDOU, GALILEO, GLONASS, GPS, NavIC, QZSS, iBeacon</td></tr><tr><td>Bluetooth</td><td>v5.3</td></tr><tr><td>Cổng kết nối/sạc</td><td>USB Type-C</td></tr><tr><td>Jack tai nghe</td><td>Type-C</td></tr><tr><td>Kết nối khác</td><td>NFC, Định vị vi mô iBeacon, AirPlay</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Thiết kế &amp; Chất liệu</td></tr><tr><td>Thiết kế</td><td>Nguyên khối</td></tr><tr><td>Chất liệu</td><td>Khung nhôm &amp; Mặt lưng kính cường lực</td></tr><tr><td>Kích thước</td><td>Cao 146.7 mm - Rộng 71.5 mm - Dày 7.80 mm</td></tr><tr><td>Trọng lượng</td><td>167 g</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Tiện ích</td></tr><tr><td>Bảo mật nâng cao</td><td>Nhận diện khuôn mặt Face ID</td></tr><tr><td>Tính năng đặc biệt</td><td>Phát hiện va chạm, Âm thanh Dolby Atmos, HDR10+, DCI-P3, Dolby Vision, HLG</td></tr><tr><td>Kháng nước, bụi</td><td>IP68 (sâu 6 mét trong 30 phút)</td></tr><tr><td>Ghi âm</td><td>Có (Micrô tích hợp sẵn)</td></tr><tr><td>Xem phim</td><td>MP4, HEVC</td></tr><tr><td>Nghe nhạc</td><td>AAC, MP3, Apple Lossless, FLAC, Dolby Digital, Dolby Digital Plus, Dolby Atmos, Âm Thanh Không Gian, Loa stereo</td></tr><tr><td>Tiện ích khác</td><td>La bàn kỹ thuật số, Thanh toán qua iPhone</td></tr><tr><td class=\"bold bg-warning-subtle\" colspan=\"2\">Bảo mật &amp; Cảm biến</td></tr><tr><td>Bảo mật</td><td>Face ID</td></tr><tr><td>Cảm biến</td><td>Không có thông tin</td></tr>\n</table>\n</div>', 'active', '2026-08-05 01:44:33', '2026-08-05 01:44:33', NULL),
(9, 7, 'iPhone 16', 'iphone-16', '<div class=\"dcontent product-detail-quote-wrapper prodetail__box__content_collapse\">\n<div class=\"quote-icon--checked\"><p>Quà tặng lưu niệm <span style=\"color:#ff0000;\"><strong>Minh Tuấn Mobile</strong></span></p>\n</div><div class=\"quote-icon--checked\"><p><strong>Ưu đãi mua kèm (01.08 - 31.08)</strong></p>\n<ul>\n<li>Giảm <span style=\"color:#ff0000;\"><strong><span style=\"font-size:16px;\">200K</span></strong></span> khi mua thêm sản phẩm trong hệ sinh thái Apple</li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>100K</strong></span></span> khi mua gói bảo hành VIP 6 tháng </li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>150K</strong></span></span> khi mua gói bảo hành VIP 12 tháng</li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>30</strong></span><span style=\"font-size:12px;\"><strong>%</strong></span></span> cường lực khi mua gói bảo hành VIP</li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>100K</strong></span></span> khi mua <strong><a href=\"https://minhtuanmobile.com/phu-kien/laptop/phan-mem/microsoft/\"><span style=\"color:#ff0000;\">Microsoft Office</span></a></strong></li>\n<li>Giảm <span style=\"color:#ff0000;\"><strong><span style=\"font-size:16px;\">50K</span></strong></span> khi mua <strong><a href=\"https://minhtuanmobile.com/phu-kien/thiet-bi-luu-tru/\">Ổ cứng/USB/Thẻ nhớ</a></strong></li>\n<li>Giảm <strong><span style=\"color:#ff0000;\"><span style=\"font-size:16px;\">10</span><span style=\"font-size:12px;\">%</span></span></strong> tối đa <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>600K</strong></span></span> khi mua <strong><a href=\"https://minhtuanmobile.com/am-thanh/\">Tai Nghe/Loa</a></strong></li>\n</ul>\n<p>(Chỉ áp dụng với sản phẩm đủ điều kiện)</p>\n</div> </div>', 'active', '2026-08-05 01:44:33', '2026-08-05 01:44:33', NULL),
(10, 8, 'iPhone 17e', 'iphone-17e', '<div class=\"dcontent product-detail-quote-wrapper prodetail__box__content_collapse\">\n<div class=\"quote-icon--checked\"><p>Quà tặng lưu niệm <span style=\"color:#ff0000;\"><strong>Minh Tuấn Mobile</strong></span></p>\n</div><div class=\"quote-icon--checked\"><p><strong>Ưu đãi mua kèm (01.08 - 31.08)</strong></p>\n<ul>\n<li>Giảm <span style=\"color:#ff0000;\"><strong><span style=\"font-size:16px;\">200K</span></strong></span> khi mua thêm sản phẩm trong hệ sinh thái Apple</li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>100K</strong></span></span> khi mua gói bảo hành VIP 6 tháng </li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>250K</strong></span></span> khi mua gói bảo hành VIP 12 tháng</li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>30</strong></span><span style=\"font-size:12px;\"><strong>%</strong></span></span> cường lực khi mua gói bảo hành VIP</li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>100K</strong></span></span> khi mua <strong><a href=\"https://minhtuanmobile.com/phu-kien/laptop/phan-mem/microsoft/\"><span style=\"color:#ff0000;\">Microsoft Office</span></a></strong></li>\n<li>Giảm <span style=\"color:#ff0000;\"><strong><span style=\"font-size:16px;\">50K</span></strong></span> khi mua <strong><a href=\"https://minhtuanmobile.com/phu-kien/thiet-bi-luu-tru/\">Ổ cứng/USB/Thẻ nhớ</a></strong></li>\n<li>Giảm <strong><span style=\"color:#ff0000;\"><span style=\"font-size:16px;\">10</span><span style=\"font-size:12px;\">%</span></span></strong> tối đa <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>600K</strong></span></span> khi mua <strong><a href=\"https://minhtuanmobile.com/am-thanh/\">Tai Nghe/Loa</a></strong></li>\n</ul>\n<p>(Chỉ áp dụng với sản phẩm đủ điều kiện)</p>\n</div> </div>', 'active', '2026-08-05 01:44:33', '2026-08-05 01:44:33', NULL),
(11, 8, 'iPhone 17', 'iphone-17', '<div class=\"dcontent product-detail-quote-wrapper prodetail__box__content_collapse\">\n<div class=\"quote-icon--checked\"><p>Quà tặng lưu niệm <span style=\"color:#ff0000;\"><strong>Minh Tuấn Mobile</strong></span></p>\n</div><div class=\"quote-icon--checked\"><p><strong>Ưu đãi mua kèm (01.08 - 31.08)</strong></p>\n<ul>\n<li>Giảm <span style=\"color:#ff0000;\"><strong><span style=\"font-size:16px;\">200K</span></strong></span> khi mua thêm sản phẩm trong hệ sinh thái Apple</li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>100K</strong></span></span> khi mua gói bảo hành VIP 6 tháng </li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>250K</strong></span></span> khi mua gói bảo hành VIP 12 tháng</li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>30</strong></span><span style=\"font-size:12px;\"><strong>%</strong></span></span> cường lực khi mua gói bảo hành VIP</li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>100K</strong></span></span> khi mua <strong><a href=\"https://minhtuanmobile.com/phu-kien/laptop/phan-mem/microsoft/\"><span style=\"color:#ff0000;\">Microsoft Office</span></a></strong></li>\n<li>Giảm <span style=\"color:#ff0000;\"><strong><span style=\"font-size:16px;\">50K</span></strong></span> khi mua <strong><a href=\"https://minhtuanmobile.com/phu-kien/thiet-bi-luu-tru/\">Ổ cứng/USB/Thẻ nhớ</a></strong></li>\n<li>Giảm <strong><span style=\"color:#ff0000;\"><span style=\"font-size:16px;\">10</span><span style=\"font-size:12px;\">%</span></span></strong> tối đa <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>600K</strong></span></span> khi mua <strong><a href=\"https://minhtuanmobile.com/am-thanh/\">Tai Nghe/Loa</a></strong></li>\n</ul>\n<p>(Chỉ áp dụng với sản phẩm đủ điều kiện)</p>\n</div> </div>', 'active', '2026-08-05 01:44:33', '2026-08-05 01:44:33', NULL),
(12, 8, 'iPhone 17 Pro Max', 'iphone-17-pro-max', '<div class=\"dcontent product-detail-quote-wrapper prodetail__box__content_collapse\">\n<div class=\"quote-icon--checked\"><p>Quà tặng lưu niệm <span style=\"color:#ff0000;\"><strong>Minh Tuấn Mobile</strong></span></p>\n</div><div class=\"quote-icon--checked\"><p><strong>Ưu đãi mua kèm (01.08 - 31.08)</strong></p>\n<ul>\n<li>Giảm <span style=\"color:#ff0000;\"><strong><span style=\"font-size:16px;\">200K</span></strong></span> khi mua thêm sản phẩm trong hệ sinh thái Apple</li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>100K</strong></span></span> khi mua gói bảo hành VIP 6 tháng </li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>250K</strong></span></span> khi mua gói bảo hành VIP 12 tháng</li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>30</strong></span><span style=\"font-size:12px;\"><strong>%</strong></span></span> cường lực khi mua gói bảo hành VIP</li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>100K</strong></span></span> khi mua <strong><a href=\"https://minhtuanmobile.com/phu-kien/laptop/phan-mem/microsoft/\"><span style=\"color:#ff0000;\">Microsoft Office</span></a></strong></li>\n<li>Giảm <span style=\"color:#ff0000;\"><strong><span style=\"font-size:16px;\">50K</span></strong></span> khi mua <strong><a href=\"https://minhtuanmobile.com/phu-kien/thiet-bi-luu-tru/\">Ổ cứng/USB/Thẻ nhớ</a></strong></li>\n<li>Giảm <strong><span style=\"color:#ff0000;\"><span style=\"font-size:16px;\">10</span><span style=\"font-size:12px;\">%</span></span></strong> tối đa <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>600K</strong></span></span> khi mua <strong><a href=\"https://minhtuanmobile.com/am-thanh/\">Tai Nghe/Loa</a></strong></li>\n</ul>\n<p>(Chỉ áp dụng với sản phẩm đủ điều kiện)</p>\n</div> </div>', 'active', '2026-08-05 01:44:33', '2026-08-05 01:44:33', NULL),
(13, 8, 'iPhone 17 Pro', 'iphone-17-pro', '<div class=\"dcontent product-detail-quote-wrapper prodetail__box__content_collapse\">\n<div class=\"quote-icon--checked\"><p>Quà tặng lưu niệm <span style=\"color:#ff0000;\"><strong>Minh Tuấn Mobile</strong></span></p>\n</div><div class=\"quote-icon--checked\"><p><strong>Ưu đãi mua kèm (01.08 - 31.08)</strong></p>\n<ul>\n<li>Giảm <span style=\"color:#ff0000;\"><strong><span style=\"font-size:16px;\">200K</span></strong></span> khi mua thêm sản phẩm trong hệ sinh thái Apple</li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>100K</strong></span></span> khi mua gói bảo hành VIP 6 tháng </li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>250K</strong></span></span> khi mua gói bảo hành VIP 12 tháng</li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>30</strong></span><span style=\"font-size:12px;\"><strong>%</strong></span></span> cường lực khi mua gói bảo hành VIP</li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>100K</strong></span></span> khi mua <strong><a href=\"https://minhtuanmobile.com/phu-kien/laptop/phan-mem/microsoft/\"><span style=\"color:#ff0000;\">Microsoft Office</span></a></strong></li>\n<li>Giảm <span style=\"color:#ff0000;\"><strong><span style=\"font-size:16px;\">50K</span></strong></span> khi mua <strong><a href=\"https://minhtuanmobile.com/phu-kien/thiet-bi-luu-tru/\">Ổ cứng/USB/Thẻ nhớ</a></strong></li>\n<li>Giảm <strong><span style=\"color:#ff0000;\"><span style=\"font-size:16px;\">10</span><span style=\"font-size:12px;\">%</span></span></strong> tối đa <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>600K</strong></span></span> khi mua <strong><a href=\"https://minhtuanmobile.com/am-thanh/\">Tai Nghe/Loa</a></strong></li>\n</ul>\n<p>(Chỉ áp dụng với sản phẩm đủ điều kiện)</p>\n</div> </div>', 'active', '2026-08-05 01:44:33', '2026-08-05 01:44:33', NULL),
(14, 9, 'iPhone Air', 'iphone-air', '<div class=\"dcontent product-detail-quote-wrapper prodetail__box__content_collapse\">\n<div class=\"quote-icon--checked\"><p>Quà tặng lưu niệm <span style=\"color:#ff0000;\"><strong>Minh Tuấn Mobile</strong></span></p>\n</div><div class=\"quote-icon--checked\"><p><strong>Ưu đãi mua kèm (01.08 - 31.08)</strong></p>\n<ul>\n<li>Giảm <span style=\"color:#ff0000;\"><strong><span style=\"font-size:16px;\">200K</span></strong></span> khi mua thêm sản phẩm trong hệ sinh thái Apple</li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>100K</strong></span></span> khi mua gói bảo hành VIP 6 tháng </li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>250K</strong></span></span> khi mua gói bảo hành VIP 12 tháng</li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>30</strong></span><span style=\"font-size:12px;\"><strong>%</strong></span></span> cường lực khi mua gói bảo hành VIP</li>\n<li>Giảm <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>100K</strong></span></span> khi mua <strong><a href=\"https://minhtuanmobile.com/phu-kien/laptop/phan-mem/microsoft/\"><span style=\"color:#ff0000;\">Microsoft Office</span></a></strong></li>\n<li>Giảm <span style=\"color:#ff0000;\"><strong><span style=\"font-size:16px;\">50K</span></strong></span> khi mua <strong><a href=\"https://minhtuanmobile.com/phu-kien/thiet-bi-luu-tru/\">Ổ cứng/USB/Thẻ nhớ</a></strong></li>\n<li>Giảm <strong><span style=\"color:#ff0000;\"><span style=\"font-size:16px;\">10</span><span style=\"font-size:12px;\">%</span></span></strong> tối đa <span style=\"color:#ff0000;\"><span style=\"font-size:16px;\"><strong>600K</strong></span></span> khi mua <strong><a href=\"https://minhtuanmobile.com/am-thanh/\">Tai Nghe/Loa</a></strong></li>\n</ul>\n<p>(Chỉ áp dụng với sản phẩm đủ điều kiện)</p>\n</div> </div>', 'active', '2026-08-05 01:44:33', '2026-08-05 01:44:33', NULL),
(15, 10, 'iPad Air M4 11 inch', 'ipad-air-m4-11-inch', '<div class=\"flashsale-text dcontent\">\n<p><strong>Giá bán:</strong> <font color=\"#ff0000\"><span style=\"font-size:16px\"><b><span class=\"flashsale-replace--priceSale\">18,790,000đ</span></b></span></font></p>\n<p><strong>Lưu ý:</strong> Giá hiển thị đã áp dụng ưu đãi Khung Giờ Vàng giảm 200.000đ</p>\n</div>', 'active', '2026-08-05 01:54:17', '2026-08-05 01:54:17', NULL),
(16, 10, 'iPad Air M4 13 inch', 'ipad-air-m4-13-inch', '<div class=\"flashsale-text dcontent\">\n<p><strong>Giá bán:</strong> <font color=\"#ff0000\"><span style=\"font-size:16px\"><b><span class=\"flashsale-replace--priceSale\">24,390,000đ</span></b></span></font></p>\n<p><strong>Lưu ý:</strong> Giá hiển thị đã áp dụng ưu đãi Khung Giờ Vàng giảm 200.000đ</p>\n</div>', 'active', '2026-08-05 01:54:18', '2026-08-05 01:54:18', NULL),
(17, 11, 'iPad Mini 7', 'ipad-mini-7', '<div class=\"flashsale-text dcontent\">\n<p><strong>Giá bán:</strong> <font color=\"#ff0000\"><span style=\"font-size:16px\"><b><span class=\"flashsale-replace--priceSale\">14,490,000đ</span></b></span></font></p>\n<p><strong>Lưu ý:</strong> Giá hiển thị đã áp dụng ưu đãi Khung Giờ Vàng giảm 200.000đ</p>\n</div>', 'active', '2026-08-05 01:54:18', '2026-08-05 01:54:18', NULL),
(18, 12, 'iPad Pro M5 11 inch', 'ipad-pro-m5-11-inch', '<div class=\"flashsale-text dcontent\">\n<p><strong>Giá bán:</strong> <font color=\"#ff0000\"><span style=\"font-size: 16px;\"><b><span class=\"flashsale-replace--priceSale\">33,790,000đ</span></b></span></font></p>\n<p><strong>Lưu ý:</strong> Giá hiển thị đã áp dụng ưu đãi Khung Giờ Vàng giảm 200.000đ</p>\n</div>', 'active', '2026-08-05 01:54:18', '2026-08-05 01:54:18', NULL),
(19, 12, 'iPad Pro M5 13 inch', 'ipad-pro-m5-13-inch', '<div class=\"flashsale-text dcontent\">\n<p><strong>Giá bán:</strong> <font color=\"#ff0000\"><span style=\"font-size: 16px;\"><b><span class=\"flashsale-replace--priceSale\">43,490,000đ</span></b></span></font></p>\n<p><strong>Lưu ý:</strong> Giá hiển thị đã áp dụng ưu đãi Khung Giờ Vàng giảm 200.000đ</p>\n</div>', 'active', '2026-08-05 01:54:18', '2026-08-05 01:54:18', NULL),
(20, 14, 'MacBook Neo A18 Pro 13 inch', 'macbook-neo-a18-pro-13-inch', '<div class=\"flashsale-text dcontent\">\n<p><strong>Giá bán:</strong> <font color=\"#ff0000\"><span style=\"font-size:16px\"><b><span class=\"flashsale-replace--priceSale\">18,290,000đ</span></b></span></font></p>\n<p><strong>Lưu ý:</strong> Giá hiển thị đã áp dụng ưu đãi Khung Giờ Vàng giảm 200.000đ</p>\n</div>', 'active', '2026-08-05 02:02:01', '2026-08-05 02:02:01', NULL),
(21, 13, 'MacBook Air M5 13 inch ', 'macbook-air-m5-13-inch', '<div class=\"flashsale-text dcontent\">\n<p><strong>Giá bán:</strong> <font color=\"#ff0000\"><span style=\"font-size:16px\"><b><span class=\"flashsale-replace--priceSale\">34,590,000đ</span></b></span></font></p>\n<p><strong>Lưu ý:</strong> Giá hiển thị đã áp dụng ưu đãi Khung Giờ Vàng giảm 200.000đ</p>\n</div>', 'active', '2026-08-05 02:02:01', '2026-08-05 02:02:01', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `sale_price` decimal(15,2) DEFAULT NULL,
  `stock_quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `image_public_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `sku`, `price`, `sale_price`, `stock_quantity`, `image`, `image_public_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'MLPF3VN/A', 11990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919497/products/dwknjvc6oirzzfkmnpac.jpg', 'products/dwknjvc6oirzzfkmnpac', '2026-08-05 01:44:32', '2026-08-05 01:44:57', NULL),
(2, 1, 'MLPG3VN/A', 12190000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919499/products/tuzxjwnfdvnfyzo75yem.jpg', 'products/tuzxjwnfdvnfyzo75yem', '2026-08-05 01:44:32', '2026-08-05 01:45:00', NULL),
(3, 2, 'MPUR3VN/A', 13890000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919502/products/tp2mk2scfklefg6b4w8p.jpg', 'products/tp2mk2scfklefg6b4w8p', '2026-08-05 01:44:32', '2026-08-05 01:45:02', NULL),
(4, 2, 'MPUF3VN/A', 13990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919504/products/nalglbzhbaahbvul9jon.jpg', 'products/nalglbzhbaahbvul9jon', '2026-08-05 01:44:32', '2026-08-05 01:45:04', NULL),
(5, 2, 'MPVN3VN/A', 13990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919506/products/oqbavxazslczwtdzlypm.jpg', 'products/oqbavxazslczwtdzlypm', '2026-08-05 01:44:32', '2026-08-05 01:45:07', NULL),
(6, 2, 'MPW43VN/A', 16190000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919508/products/ddulqw5ghxtzv9eckvdy.jpg', 'products/ddulqw5ghxtzv9eckvdy', '2026-08-05 01:44:32', '2026-08-05 01:45:09', NULL),
(7, 2, 'MPVX3VN/A', 16190000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919511/products/wfmpw4q9gk5fkvwfkadt.jpg', 'products/wfmpw4q9gk5fkvwfkadt', '2026-08-05 01:44:32', '2026-08-05 01:45:11', NULL),
(8, 2, 'MPWP3VN/A', 16190000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919513/products/kpkafrmojeqkawrf1wkn.jpg', 'products/kpkafrmojeqkawrf1wkn', '2026-08-05 01:44:32', '2026-08-05 01:45:13', NULL),
(9, 3, 'MTP03VN/A', 17990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919515/products/h5ojtbwugdanyoe46xze.jpg', 'products/h5ojtbwugdanyoe46xze', '2026-08-05 01:44:32', '2026-08-05 01:45:16', NULL),
(10, 3, 'MTP13VN/A', 17990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919517/products/iy5y0znalry02ifyxeo5.jpg', 'products/iy5y0znalry02ifyxeo5', '2026-08-05 01:44:32', '2026-08-05 01:45:18', NULL),
(11, 3, 'MTP43VN/A', 17990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919520/products/a73izbkvmuhp6mylascy.jpg', 'products/a73izbkvmuhp6mylascy', '2026-08-05 01:44:32', '2026-08-05 01:45:20', NULL),
(12, 3, 'MTP93VN/A', 20790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919522/products/lotufnoxwo7qi8ci86cy.jpg', 'products/lotufnoxwo7qi8ci86cy', '2026-08-05 01:44:32', '2026-08-05 01:45:22', NULL),
(13, 3, 'MTP73VN/A', 20790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919524/products/crifkvjstbxxn0eeejcb.jpg', 'products/crifkvjstbxxn0eeejcb', '2026-08-05 01:44:33', '2026-08-05 01:45:24', NULL),
(14, 3, 'MTP63VN/A', 20790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919526/products/ubjvy47felwbza8xk6gp.jpg', 'products/ubjvy47felwbza8xk6gp', '2026-08-05 01:44:33', '2026-08-05 01:45:27', NULL),
(15, 3, 'MTPA3VN/A', 19990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919529/products/halqj2duln6ccn4s2hgt.jpg', 'products/halqj2duln6ccn4s2hgt', '2026-08-05 01:44:33', '2026-08-05 01:45:29', NULL),
(16, 3, 'MTP83VN/A', 19990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919531/products/p13z8ubsjrmc6lnucd0i.jpg', 'products/p13z8ubsjrmc6lnucd0i', '2026-08-05 01:44:33', '2026-08-05 01:45:32', NULL),
(17, 4, 'MU0Y3VN/A', 17990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919535/products/ssjtnav8xl0qcxsbznov.png', 'products/ssjtnav8xl0qcxsbznov', '2026-08-05 01:44:33', '2026-08-05 01:45:35', NULL),
(18, 4, 'MU163VN/A', 17990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919538/products/ogqnuqkb1mde6nocwkzt.png', 'products/ogqnuqkb1mde6nocwkzt', '2026-08-05 01:44:33', '2026-08-05 01:45:38', NULL),
(19, 4, 'MU103VN/A', 17990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919541/products/nftwuxrlhbmdohpk4gtr.png', 'products/nftwuxrlhbmdohpk4gtr', '2026-08-05 01:44:33', '2026-08-05 01:45:41', NULL),
(20, 4, 'MU173VN/A', 17990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919544/products/l73aeu26kdghas1tx59r.png', 'products/l73aeu26kdghas1tx59r', '2026-08-05 01:44:33', '2026-08-05 01:45:45', NULL),
(21, 4, 'MU123VN/A', 17990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919547/products/ummaubwd82zapmmn6jzk.png', 'products/ummaubwd82zapmmn6jzk', '2026-08-05 01:44:33', '2026-08-05 01:45:48', NULL),
(22, 5, 'MXVW3VN/A', 24490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919550/products/l8iufltbttae3i1so242.jpg', 'products/l8iufltbttae3i1so242', '2026-08-05 01:44:33', '2026-08-05 01:45:50', NULL),
(23, 5, 'MXVY3VN/A', 24490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919552/products/rtjjea6dh9sz73nx51e8.jpg', 'products/rtjjea6dh9sz73nx51e8', '2026-08-05 01:44:33', '2026-08-05 01:45:52', NULL),
(24, 5, 'MXVU3VN/A', 24490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919554/products/ky3eyvnogtdwk3ez7zeo.jpg', 'products/ky3eyvnogtdwk3ez7zeo', '2026-08-05 01:44:33', '2026-08-05 01:45:55', NULL),
(25, 5, 'MXVX3VN/A', 24490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919557/products/kbugxhrql9fb7gmcdmtl.jpg', 'products/kbugxhrql9fb7gmcdmtl', '2026-08-05 01:44:33', '2026-08-05 01:45:57', NULL),
(26, 5, 'MXVV3VN/A', 24490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919559/products/mjfqh15xwwwaoixsqh0o.jpg', 'products/mjfqh15xwwwaoixsqh0o', '2026-08-05 01:44:33', '2026-08-05 01:45:59', NULL),
(27, 5, 'MXWV3VN/A', 27490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919561/products/hbpmjjkqqdjvbsvzrsv6.jpg', 'products/hbpmjjkqqdjvbsvzrsv6', '2026-08-05 01:44:33', '2026-08-05 01:46:01', NULL),
(28, 5, 'MXY23VN/A', 27490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919563/products/rhqv6dxxg0gsvd1cm3eq.jpg', 'products/rhqv6dxxg0gsvd1cm3eq', '2026-08-05 01:44:33', '2026-08-05 01:46:04', NULL),
(29, 5, 'MXY13VN/A', 27490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919566/products/fupt2rus6lruydq93cwt.jpg', 'products/fupt2rus6lruydq93cwt', '2026-08-05 01:44:33', '2026-08-05 01:46:06', NULL),
(30, 5, 'MXWN3VN/A', 27490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919568/products/hqdjlzlwg2229qzy5nhl.jpg', 'products/hqdjlzlwg2229qzy5nhl', '2026-08-05 01:44:33', '2026-08-05 01:46:08', NULL),
(31, 5, 'MXY53VN/A', 27490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919572/products/sqicqq2ur4beyn2wnaik.jpg', 'products/sqicqq2ur4beyn2wnaik', '2026-08-05 01:44:33', '2026-08-05 01:46:13', NULL),
(32, 5, 'MY253VN/A', 28990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919575/products/n2sy38pvkcdy7gurpf49.jpg', 'products/n2sy38pvkcdy7gurpf49', '2026-08-05 01:44:33', '2026-08-05 01:46:15', NULL),
(33, 5, 'MY1P3VN/A', 28990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919577/products/boqsuqpzsgjbec2wym1v.jpg', 'products/boqsuqpzsgjbec2wym1v', '2026-08-05 01:44:33', '2026-08-05 01:46:17', NULL),
(34, 5, 'MY2D3VN/A', 28990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919579/products/qwd65lqy5jejgsukp31n.jpg', 'products/qwd65lqy5jejgsukp31n', '2026-08-05 01:44:33', '2026-08-05 01:46:20', NULL),
(35, 5, 'MY2J3VN/A', 28990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919582/products/cagnogcbdywmk8oqohfd.jpg', 'products/cagnogcbdywmk8oqohfd', '2026-08-05 01:44:33', '2026-08-05 01:46:22', NULL),
(36, 5, 'MY1X3VN/A', 28990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919584/products/c6dfrls9zra4eqs6anbi.jpg', 'products/c6dfrls9zra4eqs6anbi', '2026-08-05 01:44:33', '2026-08-05 01:46:24', NULL),
(37, 6, 'MYWV3VN/A', 29490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919587/products/typqfdtqpzyoa8bf0sys.jpg', 'products/typqfdtqpzyoa8bf0sys', '2026-08-05 01:44:33', '2026-08-05 01:46:28', NULL),
(38, 6, 'MYWW3VN/A', 29490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919590/products/zw9q777pfmyzzqv9dff6.jpg', 'products/zw9q777pfmyzzqv9dff6', '2026-08-05 01:44:33', '2026-08-05 01:46:30', NULL),
(39, 6, 'MYWY3VN/A', 29490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919592/products/xzcomvte5axk1qu2quwh.jpg', 'products/xzcomvte5axk1qu2quwh', '2026-08-05 01:44:33', '2026-08-05 01:46:32', NULL),
(40, 6, 'MYWX3VN/A', 29490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919596/products/gmh62fklqwxjkpvju1gw.png', 'products/gmh62fklqwxjkpvju1gw', '2026-08-05 01:44:33', '2026-08-05 01:46:36', NULL),
(41, 6, 'MYX23VN/A', 35490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919599/products/rm1nladivwxpoqwjdk7n.jpg', 'products/rm1nladivwxpoqwjdk7n', '2026-08-05 01:44:33', '2026-08-05 01:46:39', NULL),
(42, 6, 'MYX33VN/A', 35490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919602/products/ch8wexra3g3dfctaqqpm.jpg', 'products/ch8wexra3g3dfctaqqpm', '2026-08-05 01:44:33', '2026-08-05 01:46:42', NULL),
(43, 6, 'MYX13VN/A', 35490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919604/products/xxsbeybbrbmf4zwqlfir.jpg', 'products/xxsbeybbrbmf4zwqlfir', '2026-08-05 01:44:33', '2026-08-05 01:46:45', NULL),
(44, 6, 'MYX03VN/A', 35490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919607/products/hxrnh811oazlqvzjvpbj.jpg', 'products/hxrnh811oazlqvzjvpbj', '2026-08-05 01:44:33', '2026-08-05 01:46:48', NULL),
(45, 6, 'MYX73VN/A', 40790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919610/products/jgmeow7zbcznwdb4gnxt.jpg', 'products/jgmeow7zbcznwdb4gnxt', '2026-08-05 01:44:33', '2026-08-05 01:46:51', NULL),
(46, 6, 'MYX53VN/A', 40790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919613/products/heb65ivymq6n8ftm496w.jpg', 'products/heb65ivymq6n8ftm496w', '2026-08-05 01:44:33', '2026-08-05 01:46:54', NULL),
(47, 6, 'MYX43VN/A', 40790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919616/products/mbjnxrccmbbsipeugysb.jpg', 'products/mbjnxrccmbbsipeugysb', '2026-08-05 01:44:33', '2026-08-05 01:46:56', NULL),
(48, 6, 'MYX63VN/A', 40790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919619/products/v2lqbh4kwaodjrgxnntk.jpg', 'products/v2lqbh4kwaodjrgxnntk', '2026-08-05 01:44:33', '2026-08-05 01:46:59', NULL),
(49, 7, 'MYNF3VN/A', 24690000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919621/products/ghhnjaspgnsqaygqugcx.jpg', 'products/ghhnjaspgnsqaygqugcx', '2026-08-05 01:44:33', '2026-08-05 01:47:02', NULL),
(50, 7, 'MYNG3VN/A', 24690000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919624/products/jmbj6sz8vkgzfip3kasy.jpg', 'products/jmbj6sz8vkgzfip3kasy', '2026-08-05 01:44:33', '2026-08-05 01:47:05', NULL),
(51, 7, 'MYND3VN/A', 24690000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919627/products/vcgi5tndki72ci45nzlg.jpg', 'products/vcgi5tndki72ci45nzlg', '2026-08-05 01:44:33', '2026-08-05 01:47:08', NULL),
(52, 7, 'MYNE3VN/A', 24690000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919630/products/ubdybmpwox9ht4lrxijw.jpg', 'products/ubdybmpwox9ht4lrxijw', '2026-08-05 01:44:33', '2026-08-05 01:47:11', NULL),
(53, 7, 'MYNK3VN/A', 26990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919633/products/bg7xrqlszusbckjmjflb.jpg', 'products/bg7xrqlszusbckjmjflb', '2026-08-05 01:44:33', '2026-08-05 01:47:13', NULL),
(54, 7, 'MYNL3VN/A', 26990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919636/products/vhunttyi7066td6obe74.jpg', 'products/vhunttyi7066td6obe74', '2026-08-05 01:44:33', '2026-08-05 01:47:16', NULL),
(55, 7, 'MYNJ3VN/A', 26990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919639/products/xvanxzvrrpxeucp9hkoz.jpg', 'products/xvanxzvrrpxeucp9hkoz', '2026-08-05 01:44:33', '2026-08-05 01:47:19', NULL),
(56, 7, 'MYNH3VN/A', 26990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919642/products/xzwurxy6qjqptko1cmno.jpg', 'products/xzwurxy6qjqptko1cmno', '2026-08-05 01:44:33', '2026-08-05 01:47:22', NULL),
(57, 7, 'MYNP3VN/A', 31890000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919645/products/pozql1cmyder1guj1cge.jpg', 'products/pozql1cmyder1guj1cge', '2026-08-05 01:44:33', '2026-08-05 01:47:25', NULL),
(58, 7, 'MYNM3VN/A', 31890000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919647/products/dgx1j9a9amw6fk0djfom.jpg', 'products/dgx1j9a9amw6fk0djfom', '2026-08-05 01:44:33', '2026-08-05 01:47:28', NULL),
(59, 7, 'MYNN3VN/A', 31890000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919650/products/lycxc3rofiofzqpl8orv.jpg', 'products/lycxc3rofiofzqpl8orv', '2026-08-05 01:44:33', '2026-08-05 01:47:31', NULL),
(60, 7, 'MYNQ3VN/A', 31890000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919653/products/shgvdeyzusrvgl9f6rba.jpg', 'products/shgvdeyzusrvgl9f6rba', '2026-08-05 01:44:33', '2026-08-05 01:47:33', NULL),
(61, 7, 'MYNX3VN/A', 35690000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919656/products/ypnwqcvg1bmld2ukzwat.jpg', 'products/ypnwqcvg1bmld2ukzwat', '2026-08-05 01:44:33', '2026-08-05 01:47:37', NULL),
(62, 7, 'MYNR3VN/A', 35690000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919660/products/idzwuvqjlp9k3cukqef0.jpg', 'products/idzwuvqjlp9k3cukqef0', '2026-08-05 01:44:33', '2026-08-05 01:47:40', NULL),
(63, 7, 'MYNT3VN/A', 35690000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919662/products/jf07jpoj6rnkpo9zbbv9.jpg', 'products/jf07jpoj6rnkpo9zbbv9', '2026-08-05 01:44:33', '2026-08-05 01:47:43', NULL),
(64, 7, 'MYNW3VN/A', 35690000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919665/products/qisjr30ornkuqjnxpc7g.jpg', 'products/qisjr30ornkuqjnxpc7g', '2026-08-05 01:44:33', '2026-08-05 01:47:46', NULL),
(65, 8, 'MD1R4VN/A', 11990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919668/products/vonnv3alc97wzzrpn598.png', 'products/vonnv3alc97wzzrpn598', '2026-08-05 01:44:33', '2026-08-05 01:47:49', NULL),
(66, 8, 'MD1Q4VN/A', 11990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919672/products/eljrwpwltbgrfz9xvgn6.png', 'products/eljrwpwltbgrfz9xvgn6', '2026-08-05 01:44:33', '2026-08-05 01:47:52', NULL),
(67, 8, 'MD1W4VN/A', 14490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919675/products/gilx4vio5w1ycc0plcgu.png', 'products/gilx4vio5w1ycc0plcgu', '2026-08-05 01:44:33', '2026-08-05 01:47:55', NULL),
(68, 8, 'MD1T4VN/A', 14490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919678/products/macmafmfvxfwq4w337rk.png', 'products/macmafmfvxfwq4w337rk', '2026-08-05 01:44:33', '2026-08-05 01:47:58', NULL),
(69, 8, 'MD1X4VN/A', 23990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919681/products/lm7rvwcj2hoqyziqbiis.png', 'products/lm7rvwcj2hoqyziqbiis', '2026-08-05 01:44:33', '2026-08-05 01:48:02', NULL),
(70, 8, 'MD274VN/A', 23990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919685/products/khorztuvcrlyrxrr4lx2.png', 'products/khorztuvcrlyrxrr4lx2', '2026-08-05 01:44:33', '2026-08-05 01:48:06', NULL),
(71, 9, 'MYE93VN/A', 20390000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919687/products/k3zqj8cr0ewt8emcgsg5.jpg', 'products/k3zqj8cr0ewt8emcgsg5', '2026-08-05 01:44:33', '2026-08-05 01:48:08', NULL),
(72, 9, 'MYEA3VN/A', 20490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919690/products/prhzbbbq6ufrdrcnw7me.jpg', 'products/prhzbbbq6ufrdrcnw7me', '2026-08-05 01:44:33', '2026-08-05 01:48:10', NULL),
(73, 9, 'MYE73VN/A', 20490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919692/products/h7dq1ygzlv2bdonuqbtz.jpg', 'products/h7dq1ygzlv2bdonuqbtz', '2026-08-05 01:44:33', '2026-08-05 01:48:13', NULL),
(74, 9, 'MYED3VN/A', 20490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919694/products/rh32nnim2jlipzoynxy4.jpg', 'products/rh32nnim2jlipzoynxy4', '2026-08-05 01:44:33', '2026-08-05 01:48:15', NULL),
(75, 9, 'MYEC3VN/A', 20490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919697/products/gd8yncptyrfhueiyboql.jpg', 'products/gd8yncptyrfhueiyboql', '2026-08-05 01:44:33', '2026-08-05 01:48:17', NULL),
(76, 9, 'MYEF3VN/A', 21790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919699/products/qh1qsmbl288zbfk3bfbo.jpg', 'products/qh1qsmbl288zbfk3bfbo', '2026-08-05 01:44:33', '2026-08-05 01:48:20', NULL),
(77, 9, 'MYEH3VN/A', 21790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919701/products/zg2xd7kwzik2qky7b25g.jpg', 'products/zg2xd7kwzik2qky7b25g', '2026-08-05 01:44:33', '2026-08-05 01:48:22', NULL),
(78, 9, 'MYEG3VN/A', 21790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919704/products/m4yhdeooazw9j4fjgrrr.jpg', 'products/m4yhdeooazw9j4fjgrrr', '2026-08-05 01:44:33', '2026-08-05 01:48:28', NULL),
(79, 9, 'MYEJ3VN/A', 21790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919709/products/rgb4n73d3xn7tnbuvtkb.jpg', 'products/rgb4n73d3xn7tnbuvtkb', '2026-08-05 01:44:33', '2026-08-05 01:48:30', NULL),
(80, 9, 'MYEE3VN/A', 21790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919712/products/awza2ubqzuvyuz7eputs.jpg', 'products/awza2ubqzuvyuz7eputs', '2026-08-05 01:44:33', '2026-08-05 01:48:32', NULL),
(81, 9, 'MYER3VN/A', 27290000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919714/products/d6htyfjui8ffkumbjbha.jpg', 'products/d6htyfjui8ffkumbjbha', '2026-08-05 01:44:33', '2026-08-05 01:48:34', NULL),
(82, 9, 'MYEU3VN/A', 27290000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919716/products/ubdtbqhqoukfofarwgt9.jpg', 'products/ubdtbqhqoukfofarwgt9', '2026-08-05 01:44:33', '2026-08-05 01:48:37', NULL),
(83, 9, 'MYEK3VN/A', 27290000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919719/products/ztze1epbnse5gbl1kdii.jpg', 'products/ztze1epbnse5gbl1kdii', '2026-08-05 01:44:33', '2026-08-05 01:48:40', NULL),
(84, 9, 'MYEQ3VN/A', 27290000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919722/products/vloa22v6enq0atwju6or.jpg', 'products/vloa22v6enq0atwju6or', '2026-08-05 01:44:33', '2026-08-05 01:48:42', NULL),
(85, 9, 'MYEP3VN/A', 27290000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919724/products/yqqxzzoc4tv5hfo7hy8m.jpg', 'products/yqqxzzoc4tv5hfo7hy8m', '2026-08-05 01:44:33', '2026-08-05 01:48:45', NULL),
(86, 10, 'MHRV4ZP/A', 17290000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919727/products/cy4k3fq1ka3eyrfewf0s.jpg', 'products/cy4k3fq1ka3eyrfewf0s', '2026-08-05 01:44:33', '2026-08-05 01:48:47', NULL),
(87, 10, 'MHRW4ZP/A', 17390000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919729/products/bg1i2q6hn675z2ura75p.jpg', 'products/bg1i2q6hn675z2ura75p', '2026-08-05 01:44:33', '2026-08-05 01:48:49', NULL),
(88, 10, 'MHRX4ZP/A', 17390000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919731/products/zcwmyu71jajmqqbilv7l.jpg', 'products/zcwmyu71jajmqqbilv7l', '2026-08-05 01:44:33', '2026-08-05 01:48:52', NULL),
(89, 10, 'MHU34ZP/A', 22990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919734/products/g8t2wzuxwc6kiay6dxnq.jpg', 'products/g8t2wzuxwc6kiay6dxnq', '2026-08-05 01:44:33', '2026-08-05 01:48:54', NULL),
(90, 10, 'MHRY4ZP/A', 22990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919736/products/mkimc15sbbthgnwtsuih.jpg', 'products/mkimc15sbbthgnwtsuih', '2026-08-05 01:44:33', '2026-08-05 01:48:56', NULL),
(91, 10, 'MHU04ZP/A', 22990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919738/products/ynsqcozrksj8bn9oi7bd.jpg', 'products/ynsqcozrksj8bn9oi7bd', '2026-08-05 01:44:33', '2026-08-05 01:48:59', NULL),
(92, 11, 'MG6M4ZP/A', 23490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919741/products/noq6vowhy9xzuapht6rd.jpg', 'products/noq6vowhy9xzuapht6rd', '2026-08-05 01:44:33', '2026-08-05 01:49:01', NULL),
(93, 11, 'MG6K4ZP/A', 23790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919743/products/h7qas7eq4dh2crwveohx.jpg', 'products/h7qas7eq4dh2crwveohx', '2026-08-05 01:44:33', '2026-08-05 01:49:03', NULL),
(94, 11, 'MG6J4ZP/A', 23790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919745/products/n5bmautsippjzvqf7oq5.jpg', 'products/n5bmautsippjzvqf7oq5', '2026-08-05 01:44:33', '2026-08-05 01:49:06', NULL),
(95, 11, 'MG6L4ZP/A', 23790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919747/products/lhjaehwyv6piojfmgvuq.jpg', 'products/lhjaehwyv6piojfmgvuq', '2026-08-05 01:44:33', '2026-08-05 01:49:08', NULL),
(96, 11, 'MG6N4ZP/A', 23790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919750/products/ialpp7qldr1zkn4lcr5w.jpg', 'products/ialpp7qldr1zkn4lcr5w', '2026-08-05 01:44:33', '2026-08-05 01:49:10', NULL),
(97, 11, 'MG6P4ZP/A', 29790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919752/products/ceqcacc2tktyzrkb8smj.jpg', 'products/ceqcacc2tktyzrkb8smj', '2026-08-05 01:44:33', '2026-08-05 01:49:16', NULL),
(98, 11, 'MG6T4ZP/A', 29790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919759/products/uas85usurcibd4y1fza0.jpg', 'products/uas85usurcibd4y1fza0', '2026-08-05 01:44:33', '2026-08-05 01:49:20', NULL),
(99, 11, 'MG6Q4ZP/A', 29790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919761/products/ejgj6d6fbhfvored8bsu.jpg', 'products/ejgj6d6fbhfvored8bsu', '2026-08-05 01:44:33', '2026-08-05 01:49:22', NULL),
(100, 11, 'MG6V4ZP/A', 29790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919764/products/f1mdostw7oyin54dt8sn.jpg', 'products/f1mdostw7oyin54dt8sn', '2026-08-05 01:44:33', '2026-08-05 01:49:25', NULL),
(101, 11, 'MG6U4ZP/A', 29790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919766/products/fgjushoo37nnm5qof7am.jpg', 'products/fgjushoo37nnm5qof7am', '2026-08-05 01:44:33', '2026-08-05 01:49:27', NULL),
(102, 12, 'MFYM4ZP/A', 34790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919769/products/qk9mglia3zj4p13bwbdz.jpg', 'products/qk9mglia3zj4p13bwbdz', '2026-08-05 01:44:33', '2026-08-05 01:49:29', NULL),
(103, 12, 'MFYN4ZP/A', 34790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919771/products/utm2nnom7mucf5bnksdp.jpg', 'products/utm2nnom7mucf5bnksdp', '2026-08-05 01:44:33', '2026-08-05 01:49:32', NULL),
(104, 12, 'MFYP4ZP/A', 34790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919781/products/d5gf9nym3z15kx89qs8k.jpg', 'products/d5gf9nym3z15kx89qs8k', '2026-08-05 01:44:33', '2026-08-05 01:49:41', NULL),
(105, 12, 'MFYQ4ZP/A', 41290000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919783/products/bglcabtnpnruqtpwfw9v.jpg', 'products/bglcabtnpnruqtpwfw9v', '2026-08-05 01:44:33', '2026-08-05 01:49:43', NULL),
(106, 12, 'MFYU4ZP/A', 41290000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919785/products/eyai5x6srxbdeskagfe8.jpg', 'products/eyai5x6srxbdeskagfe8', '2026-08-05 01:44:33', '2026-08-05 01:49:46', NULL),
(107, 12, 'MFYT4ZP/A', 41290000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919789/products/d5d7mex2fwvzmqddmb2p.jpg', 'products/d5d7mex2fwvzmqddmb2p', '2026-08-05 01:44:33', '2026-08-05 01:49:49', NULL),
(108, 12, 'MFYX4ZP/A', 47690000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919791/products/w6fj56xqhgx7tvia8l8j.jpg', 'products/w6fj56xqhgx7tvia8l8j', '2026-08-05 01:44:33', '2026-08-05 01:49:52', NULL),
(109, 12, 'MFYW4ZP/A', 47690000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919794/products/ic3maj9rg5gqbbregmtx.jpg', 'products/ic3maj9rg5gqbbregmtx', '2026-08-05 01:44:33', '2026-08-05 01:49:55', NULL),
(110, 12, 'MFYV4ZP/A', 47690000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919798/products/blulmuobveoqadxcaqtm.jpg', 'products/blulmuobveoqadxcaqtm', '2026-08-05 01:44:33', '2026-08-05 01:49:58', NULL),
(111, 12, 'MG004ZP/A', 60490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919800/products/fbtdylkkhb9lohzmsqer.jpg', 'products/fbtdylkkhb9lohzmsqer', '2026-08-05 01:44:33', '2026-08-05 01:50:01', NULL),
(112, 12, 'MFYY4ZP/A', 60490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919803/products/zhr8vip66he7migtuh0b.jpg', 'products/zhr8vip66he7migtuh0b', '2026-08-05 01:44:33', '2026-08-05 01:50:03', NULL),
(113, 12, 'MG014ZP/A', 60490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919805/products/ddvy7frptmzlctmkpbdm.jpg', 'products/ddvy7frptmzlctmkpbdm', '2026-08-05 01:44:33', '2026-08-05 01:50:05', NULL),
(114, 13, 'MG8G4ZP/A', 31790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919808/products/y1kpspdvykrrtwhe0jcb.jpg', 'products/y1kpspdvykrrtwhe0jcb', '2026-08-05 01:44:33', '2026-08-05 01:50:08', NULL),
(115, 13, 'MG8H4ZP/A', 31790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919810/products/bhy78zodnihc5oeb6svh.jpg', 'products/bhy78zodnihc5oeb6svh', '2026-08-05 01:44:33', '2026-08-05 01:50:11', NULL),
(116, 13, 'MG8J4ZP/A', 31790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919813/products/okcbe7vmtttahb4qetw8.jpg', 'products/okcbe7vmtttahb4qetw8', '2026-08-05 01:44:33', '2026-08-05 01:50:13', NULL),
(117, 13, 'MG8M4ZP/A', 38490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919815/products/idx4idmjcpuaopaauqpm.jpg', 'products/idx4idmjcpuaopaauqpm', '2026-08-05 01:44:33', '2026-08-05 01:50:16', NULL),
(118, 13, 'MG8N4ZP/A', 38490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919818/products/e7yxdrh6obtboljuhou3.jpg', 'products/e7yxdrh6obtboljuhou3', '2026-08-05 01:44:33', '2026-08-05 01:50:18', NULL),
(119, 13, 'MG8K4ZP/A', 38490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919820/products/ivakdas9ljy82mqicytx.jpg', 'products/ivakdas9ljy82mqicytx', '2026-08-05 01:44:33', '2026-08-05 01:50:20', NULL),
(120, 13, 'MG8P4ZP/A', 44490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919822/products/gg7ywlvinlnnend3yqsn.jpg', 'products/gg7ywlvinlnnend3yqsn', '2026-08-05 01:44:33', '2026-08-05 01:50:23', NULL),
(121, 13, 'MG8Q4ZP/A', 44490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919825/products/lxeeehonku4wuq5tq8wx.jpg', 'products/lxeeehonku4wuq5tq8wx', '2026-08-05 01:44:33', '2026-08-05 01:50:25', NULL),
(122, 13, 'MG8R4ZP/A', 44490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919827/products/ait7brrcxc4iffnszgpw.jpg', 'products/ait7brrcxc4iffnszgpw', '2026-08-05 01:44:33', '2026-08-05 01:50:27', NULL),
(123, 14, 'MG2P4ZP/A', 22890000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919829/products/gbtbz0plvrz0jh4x9acx.jpg', 'products/gbtbz0plvrz0jh4x9acx', '2026-08-05 01:44:33', '2026-08-05 01:50:30', NULL),
(124, 14, 'MG2M4ZP/A', 23190000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919831/products/m7uelcwudaoi7q5umlbv.jpg', 'products/m7uelcwudaoi7q5umlbv', '2026-08-05 01:44:33', '2026-08-05 01:50:32', NULL),
(125, 14, 'MG2L4ZP/A', 23190000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919834/products/xjhsweijwvc83zjslost.jpg', 'products/xjhsweijwvc83zjslost', '2026-08-05 01:44:33', '2026-08-05 01:50:34', NULL),
(126, 14, 'MG2N4ZP/A', 23190000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919836/products/doz4l9bggaj8mgpwzwnn.jpg', 'products/doz4l9bggaj8mgpwzwnn', '2026-08-05 01:44:33', '2026-08-05 01:50:37', NULL),
(127, 14, 'MG2U4ZP/A', 28990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919839/products/z33ufvt1npqrmdl51s9a.jpg', 'products/z33ufvt1npqrmdl51s9a', '2026-08-05 01:44:33', '2026-08-05 01:50:39', NULL),
(128, 14, 'MG2Q4ZP/A', 28990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919841/products/g8mfyi4zelqzp5fqdlsv.jpg', 'products/g8mfyi4zelqzp5fqdlsv', '2026-08-05 01:44:33', '2026-08-05 01:50:41', NULL),
(129, 14, 'MG2T4ZP/A', 28990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919843/products/qhsvvitfbe4wiuuo6hwl.jpg', 'products/qhsvvitfbe4wiuuo6hwl', '2026-08-05 01:44:33', '2026-08-05 01:50:44', NULL),
(130, 14, 'MG2V4ZP/A', 28990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919845/products/hcwli1ojujuaqvbdadu3.jpg', 'products/hcwli1ojujuaqvbdadu3', '2026-08-05 01:44:33', '2026-08-05 01:50:46', NULL),
(131, 14, 'MG304ZP/A', 33490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919848/products/yak2ioymvsgeydpcreek.jpg', 'products/yak2ioymvsgeydpcreek', '2026-08-05 01:44:33', '2026-08-05 01:50:48', NULL),
(132, 14, 'MG2W4ZP/A', 33490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919850/products/afj6e8gzrjia3exqmefe.jpg', 'products/afj6e8gzrjia3exqmefe', '2026-08-05 01:44:33', '2026-08-05 01:50:50', NULL),
(133, 14, 'MG2X4ZP/A', 33490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919852/products/qwv2ilgxpgu6uapl9uok.jpg', 'products/qwv2ilgxpgu6uapl9uok', '2026-08-05 01:44:33', '2026-08-05 01:50:53', NULL),
(134, 14, 'MG2Y4ZP/A', 33490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785919855/products/j1azrutogtkynwl9bjdf.jpg', 'products/j1azrutogtkynwl9bjdf', '2026-08-05 01:44:33', '2026-08-05 01:50:55', NULL),
(135, 15, 'MH304ZA/A', 18590000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920062/products/j3wtvke9tar4vex2r7zk.jpg', 'products/j3wtvke9tar4vex2r7zk', '2026-08-05 01:54:17', '2026-08-05 01:54:22', NULL),
(136, 15, 'MH314ZA/A', 18590000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920064/products/hq6gjm2x577utdrb3gdt.jpg', 'products/hq6gjm2x577utdrb3gdt', '2026-08-05 01:54:18', '2026-08-05 01:54:25', NULL),
(137, 15, 'MH344ZA/A', 18590000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920067/products/gojl2esmioggqvysjg6l.jpg', 'products/gojl2esmioggqvysjg6l', '2026-08-05 01:54:18', '2026-08-05 01:54:27', NULL),
(138, 15, 'MH334ZA/A', 18590000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920069/products/i0jsijsk4dy9ddbn60pn.jpg', 'products/i0jsijsk4dy9ddbn60pn', '2026-08-05 01:54:18', '2026-08-05 01:54:30', NULL),
(139, 15, 'MH354ZA/A', 21690000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920072/products/sqfhexjbaftjycpacekl.jpg', 'products/sqfhexjbaftjycpacekl', '2026-08-05 01:54:18', '2026-08-05 01:54:33', NULL),
(140, 15, 'MH394ZA/A', 21690000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920075/products/bbsjevmwyq6kybxd6omf.jpg', 'products/bbsjevmwyq6kybxd6omf', '2026-08-05 01:54:18', '2026-08-05 01:54:35', NULL),
(141, 15, 'MH374ZA/A', 21690000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920077/products/b1ecuc1ygqdqxuphnvtz.jpg', 'products/b1ecuc1ygqdqxuphnvtz', '2026-08-05 01:54:18', '2026-08-05 01:54:38', NULL),
(142, 15, 'MH364ZA/A', 21690000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920080/products/cjurfabd9ck1eapr8xcd.jpg', 'products/cjurfabd9ck1eapr8xcd', '2026-08-05 01:54:18', '2026-08-05 01:54:40', NULL),
(143, 15, 'MH3E4ZA/A', 27990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920082/products/fwwuzc386unjprvopagl.jpg', 'products/fwwuzc386unjprvopagl', '2026-08-05 01:54:18', '2026-08-05 01:54:43', NULL),
(144, 15, 'MH3C4ZA/A', 27990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920085/products/r26hbgu8zfhkgi6srf47.jpg', 'products/r26hbgu8zfhkgi6srf47', '2026-08-05 01:54:18', '2026-08-05 01:54:45', NULL),
(145, 15, 'MH3D4ZA/A', 27990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920088/products/sganmcybo2jrygwna7db.jpg', 'products/sganmcybo2jrygwna7db', '2026-08-05 01:54:18', '2026-08-05 01:54:48', NULL),
(146, 15, 'MH3A4ZA/A', 27990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920090/products/ywb7rvrw8gtetn9ajstg.jpg', 'products/ywb7rvrw8gtetn9ajstg', '2026-08-05 01:54:18', '2026-08-05 01:54:51', NULL),
(147, 15, 'MH3J4ZA/A', 36290000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920093/products/mfgxrzug0tnr4wtkjktw.jpg', 'products/mfgxrzug0tnr4wtkjktw', '2026-08-05 01:54:18', '2026-08-05 01:54:53', NULL),
(148, 15, 'MH3K4ZA/A', 36290000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920095/products/ysiugtg5qgiukfpsiynu.jpg', 'products/ysiugtg5qgiukfpsiynu', '2026-08-05 01:54:18', '2026-08-05 01:54:56', NULL),
(149, 15, 'MH3H4ZA/A', 36290000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920098/products/fuskr7rchnl0fzbi3wdv.jpg', 'products/fuskr7rchnl0fzbi3wdv', '2026-08-05 01:54:18', '2026-08-05 01:54:58', NULL),
(150, 15, 'MH3G4ZA/A', 36290000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920101/products/y3izmwarf9bzfqi9zexl.jpg', 'products/y3izmwarf9bzfqi9zexl', '2026-08-05 01:54:18', '2026-08-05 01:55:01', NULL),
(151, 16, 'MH5N4ZA/A', 24190000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920103/products/kxpftuscynenahhjxaox.jpg', 'products/kxpftuscynenahhjxaox', '2026-08-05 01:54:18', '2026-08-05 01:55:04', NULL),
(152, 16, 'MH5T4ZA/A', 24190000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920106/products/mtiksta8b0ub3vgxdeqy.jpg', 'products/mtiksta8b0ub3vgxdeqy', '2026-08-05 01:54:18', '2026-08-05 01:55:07', NULL),
(153, 16, 'MH5Q4ZA/A', 24190000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920109/products/etzhsnea4mi6qcin5xqk.jpg', 'products/etzhsnea4mi6qcin5xqk', '2026-08-05 01:54:18', '2026-08-05 01:55:09', NULL),
(154, 16, 'MH5P4ZA/A', 24190000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920112/products/jghfvtzmv7wjezdyt6gz.png', 'products/jghfvtzmv7wjezdyt6gz', '2026-08-05 01:54:18', '2026-08-05 01:55:13', NULL),
(155, 16, 'MH5V4ZA/A', 27590000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920115/products/vkryntvgkt7gnz8sfa3n.jpg', 'products/vkryntvgkt7gnz8sfa3n', '2026-08-05 01:54:18', '2026-08-05 01:55:15', NULL),
(156, 16, 'MH5U4ZA/A', 27590000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920117/products/ohuxt11p7qtuz5iozbln.jpg', 'products/ohuxt11p7qtuz5iozbln', '2026-08-05 01:54:18', '2026-08-05 01:55:18', NULL),
(157, 16, 'MH5X4ZA/A', 27590000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920120/products/cdsicexrs7hb6kno5n5w.jpg', 'products/cdsicexrs7hb6kno5n5w', '2026-08-05 01:54:18', '2026-08-05 01:55:20', NULL),
(158, 16, 'MH5W4ZA/A', 27590000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920122/products/twdxfquztvkvn3bdhmur.jpg', 'products/twdxfquztvkvn3bdhmur', '2026-08-05 01:54:18', '2026-08-05 01:55:23', NULL),
(159, 16, 'MH624ZA/A', 33190000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920125/products/hgyw17jkws46qdlnqyvv.jpg', 'products/hgyw17jkws46qdlnqyvv', '2026-08-05 01:54:18', '2026-08-05 01:55:25', NULL),
(160, 16, 'MH604ZA/A', 33190000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920128/products/ln2k6tf2thswqlgyywud.jpg', 'products/ln2k6tf2thswqlgyywud', '2026-08-05 01:54:18', '2026-08-05 01:55:28', NULL),
(161, 16, 'MH5Y4ZA/A', 33190000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920131/products/l7mxhmlbo3higv6jw19y.jpg', 'products/l7mxhmlbo3higv6jw19y', '2026-08-05 01:54:18', '2026-08-05 01:55:31', NULL),
(162, 16, 'MH614ZA/A', 33190000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920133/products/ibt33kwp7nglqksqmulr.jpg', 'products/ibt33kwp7nglqksqmulr', '2026-08-05 01:54:18', '2026-08-05 01:55:34', NULL),
(163, 16, 'MH654ZA/A', 41990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920136/products/nxhi3rzmyqrunqoesd3s.jpg', 'products/nxhi3rzmyqrunqoesd3s', '2026-08-05 01:54:18', '2026-08-05 01:55:36', NULL),
(164, 16, 'MHDK4ZA/A', 41990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920139/products/mrrb4zaoorgjaya1t9jf.jpg', 'products/mrrb4zaoorgjaya1t9jf', '2026-08-05 01:54:18', '2026-08-05 01:55:39', NULL),
(165, 16, 'MH644ZA/A', 41990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920141/products/resm5bgh8f61n8mav68f.jpg', 'products/resm5bgh8f61n8mav68f', '2026-08-05 01:54:18', '2026-08-05 01:55:42', NULL),
(166, 16, 'MH634ZA/A', 41990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920144/products/ayd5njk86nzismbcwsvp.jpg', 'products/ayd5njk86nzismbcwsvp', '2026-08-05 01:54:18', '2026-08-05 01:55:44', NULL),
(167, 17, 'MXN73ZA/A', 14290000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920147/products/wjq6otjuqdwwait5fxsy.png', 'products/wjq6otjuqdwwait5fxsy', '2026-08-05 01:54:18', '2026-08-05 01:55:47', NULL),
(168, 17, 'MXN83ZA/A', 14290000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920150/products/efaicnzlwaadgeahjdy8.png', 'products/efaicnzlwaadgeahjdy8', '2026-08-05 01:54:18', '2026-08-05 01:55:50', NULL),
(169, 17, 'MXN63ZA/A', 14290000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920153/products/kpft8ciutvida3nyp7l2.png', 'products/kpft8ciutvida3nyp7l2', '2026-08-05 01:54:18', '2026-08-05 01:55:53', NULL),
(170, 17, 'MXN93ZA/A', 14290000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920156/products/rjepyugcegvcbu391n0n.png', 'products/rjepyugcegvcbu391n0n', '2026-08-05 01:54:18', '2026-08-05 01:55:56', NULL),
(171, 17, 'MXND3ZA/A', 17290000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920159/products/ypk71okztocftjhsgvcw.png', 'products/ypk71okztocftjhsgvcw', '2026-08-05 01:54:18', '2026-08-05 01:55:59', NULL),
(172, 17, 'MXNE3ZA/A', 17290000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920162/products/ngedjf63ltr87nco9tvp.png', 'products/ngedjf63ltr87nco9tvp', '2026-08-05 01:54:18', '2026-08-05 01:56:03', NULL),
(173, 17, 'MXNA3ZA/A', 17290000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920165/products/moaymt07ugq6q1vs9y9g.png', 'products/moaymt07ugq6q1vs9y9g', '2026-08-05 01:54:18', '2026-08-05 01:56:06', NULL),
(174, 17, 'MXNC3ZA/A', 17290000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920168/products/vasqgobn20t4jlxodaa0.png', 'products/vasqgobn20t4jlxodaa0', '2026-08-05 01:54:18', '2026-08-05 01:56:09', NULL),
(175, 17, 'IPAD-MINI-7-WIFI-512GB.1', 23990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920172/products/r8pb8nmzgioytuhxmle6.png', 'products/r8pb8nmzgioytuhxmle6', '2026-08-05 01:54:18', '2026-08-05 01:56:12', NULL),
(176, 17, 'IPAD-MINI-7-WIFI-512GB.2', 23990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920175/products/p5hc1zcqlpp2uiijlukx.png', 'products/p5hc1zcqlpp2uiijlukx', '2026-08-05 01:54:18', '2026-08-05 01:56:16', NULL),
(177, 17, 'IPAD-MINI-7-WIFI-512GB.3', 23990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920178/products/qgoaaad30owfyifmeyhu.png', 'products/qgoaaad30owfyifmeyhu', '2026-08-05 01:54:18', '2026-08-05 01:56:19', NULL),
(178, 17, 'IPAD-MINI-7-WIFI-512GB.4', 23990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920182/products/hwmbiydn5on1hdqhpygo.png', 'products/hwmbiydn5on1hdqhpygo', '2026-08-05 01:54:18', '2026-08-05 01:56:22', NULL),
(179, 18, 'MDWK4ZA/A', 33590000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920184/products/wstas3gdjan10idbzmuo.png', 'products/wstas3gdjan10idbzmuo', '2026-08-05 01:54:18', '2026-08-05 01:56:25', NULL),
(180, 18, 'MDWL4ZA/A', 33590000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920187/products/pju2januseb6txq6tleu.png', 'products/pju2januseb6txq6tleu', '2026-08-05 01:54:18', '2026-08-05 01:56:28', NULL),
(181, 18, 'MDWM4ZA/A', 39490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920190/products/yelyadaagenj3yijuwm5.png', 'products/yelyadaagenj3yijuwm5', '2026-08-05 01:54:18', '2026-08-05 01:56:31', NULL),
(182, 18, 'MDWN4ZA/A', 39490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920194/products/kxnp3fgzvpistlpwuhjj.png', 'products/kxnp3fgzvpistlpwuhjj', '2026-08-05 01:54:18', '2026-08-05 01:56:34', NULL),
(183, 18, 'MDWQ4ZA/A', 50990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920196/products/hml7vkqyxm5166uciaxd.png', 'products/hml7vkqyxm5166uciaxd', '2026-08-05 01:54:18', '2026-08-05 01:56:37', NULL),
(184, 18, 'MDWP4ZA/A', 50990000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920199/products/lrpjkvypuirv9rice5w8.png', 'products/lrpjkvypuirv9rice5w8', '2026-08-05 01:54:18', '2026-08-05 01:56:40', NULL),
(185, 18, 'MDWU4ZA/A', 64590000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920202/products/pci7ibhkve18n8fudvqh.png', 'products/pci7ibhkve18n8fudvqh', '2026-08-05 01:54:18', '2026-08-05 01:56:43', NULL),
(186, 18, 'MDWV4ZA/A', 64590000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920205/products/jfvxcwypn4q4duigt1qf.png', 'products/jfvxcwypn4q4duigt1qf', '2026-08-05 01:54:18', '2026-08-05 01:56:46', NULL),
(187, 19, 'MDYJ4ZA/A', 43290000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920208/products/vb8bnksydzcmizrb1ovf.png', 'products/vb8bnksydzcmizrb1ovf', '2026-08-05 01:54:18', '2026-08-05 01:56:49', NULL),
(188, 19, 'MDYK4ZA/A', 43290000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920211/products/nvl6uaciw0w9e7f8lr9v.png', 'products/nvl6uaciw0w9e7f8lr9v', '2026-08-05 01:54:18', '2026-08-05 01:56:52', NULL),
(189, 19, 'MDYM4ZA/A', 49490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920214/products/bjo4pummneaxszgycyvw.png', 'products/bjo4pummneaxszgycyvw', '2026-08-05 01:54:18', '2026-08-05 01:56:55', NULL),
(190, 19, 'MDYL4ZA/A', 49490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920217/products/zabpfnb61vi3nttkoke4.png', 'products/zabpfnb61vi3nttkoke4', '2026-08-05 01:54:18', '2026-08-05 01:56:57', NULL),
(191, 19, 'MDYP4ZA/A', 61490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920220/products/pp0ha34a3pnzrgmeshdu.png', 'products/pp0ha34a3pnzrgmeshdu', '2026-08-05 01:54:18', '2026-08-05 01:57:00', NULL),
(192, 19, 'MDYN4ZA/A', 61490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920223/products/rt9n1cba0amnntkebglr.png', 'products/rt9n1cba0amnntkebglr', '2026-08-05 01:54:18', '2026-08-05 01:57:03', NULL),
(193, 19, 'MDYT4ZA/A', 75490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920226/products/yv4tktzponjch9qn2u89.png', 'products/yv4tktzponjch9qn2u89', '2026-08-05 01:54:18', '2026-08-05 01:57:06', NULL),
(194, 19, 'MDYU4ZA/A', 75490000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920228/products/i6nkwck8lybbm2v7ara5.png', 'products/i6nkwck8lybbm2v7ara5', '2026-08-05 01:54:18', '2026-08-05 01:57:09', NULL),
(195, 20, 'MHFH4SA/A', 18090000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920525/products/hn87sn3kplxxykuwr7iw.jpg', 'products/hn87sn3kplxxykuwr7iw', '2026-08-05 02:02:01', '2026-08-05 02:02:06', NULL),
(196, 20, 'MHFF4SA/A', 18090000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920528/products/dcqeumg8woip6lbufmha.jpg', 'products/dcqeumg8woip6lbufmha', '2026-08-05 02:02:01', '2026-08-05 02:02:09', NULL),
(197, 20, 'MHFD4SA/A', 18090000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920531/products/zaxqd3fzknsr0jrgnhqe.jpg', 'products/zaxqd3fzknsr0jrgnhqe', '2026-08-05 02:02:01', '2026-08-05 02:02:11', NULL),
(198, 20, 'MHFA4SA/A', 18090000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920533/products/naqi8mf5pj7wobyubomb.jpg', 'products/naqi8mf5pj7wobyubomb', '2026-08-05 02:02:01', '2026-08-05 02:02:14', NULL),
(199, 20, 'MHFJ4SA/A', 20790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920536/products/vyknlwd3tbv540rtquu2.jpg', 'products/vyknlwd3tbv540rtquu2', '2026-08-05 02:02:01', '2026-08-05 02:02:16', NULL),
(200, 20, 'MHFG4SA/A', 20790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920538/products/swpdmkm01lvaw4y6koj7.jpg', 'products/swpdmkm01lvaw4y6koj7', '2026-08-05 02:02:01', '2026-08-05 02:02:19', NULL),
(201, 20, 'MHFC4SA/A', 20790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920541/products/bkdoyzkb9emf061x8rg0.jpg', 'products/bkdoyzkb9emf061x8rg0', '2026-08-05 02:02:01', '2026-08-05 02:02:21', NULL),
(202, 20, 'MHFE4SA/A', 20790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920543/products/m1vydiwoukfmqgnpmmgw.jpg', 'products/m1vydiwoukfmqgnpmmgw', '2026-08-05 02:02:01', '2026-08-05 02:02:23', NULL),
(203, 21, 'MDHE4SA/A', 34390000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920546/products/bofbjjie2wzjjeeht4vj.png', 'products/bofbjjie2wzjjeeht4vj', '2026-08-05 02:02:01', '2026-08-05 02:02:26', NULL),
(204, 21, 'MDH74SA/A', 34390000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920549/products/lnir4f7tqkwa5uqxsdcq.jpg', 'products/lnir4f7tqkwa5uqxsdcq', '2026-08-05 02:02:01', '2026-08-05 02:02:29', NULL),
(205, 21, 'MDHH4SA/A', 34390000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920551/products/zt84dnhdz79ylyttbddm.jpg', 'products/zt84dnhdz79ylyttbddm', '2026-08-05 02:02:01', '2026-08-05 02:02:32', NULL),
(206, 21, 'MDHA4SA/A', 34390000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920555/products/ag7ykpygnkbxc1ssofs7.jpg', 'products/ag7ykpygnkbxc1ssofs7', '2026-08-05 02:02:01', '2026-08-05 02:02:36', NULL),
(207, 21, 'Z1L30003N', 36390000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920558/products/fxajwtee7r0gigzlgspp.jpg', 'products/fxajwtee7r0gigzlgspp', '2026-08-05 02:02:01', '2026-08-05 02:02:39', NULL),
(208, 21, 'Z1L60003N', 36390000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920561/products/hxhmr0gpvl0ahk0iwa9r.jpg', 'products/hxhmr0gpvl0ahk0iwa9r', '2026-08-05 02:02:01', '2026-08-05 02:02:42', NULL),
(209, 21, 'Z1L90003R', 36390000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920564/products/dimfqhnrgx9g4ggxbqnl.jpg', 'products/dimfqhnrgx9g4ggxbqnl', '2026-08-05 02:02:01', '2026-08-05 02:02:45', NULL),
(210, 21, 'Z1L00003Q', 36390000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920567/products/qmheaav4thkmrbg7lxww.jpg', 'products/qmheaav4thkmrbg7lxww', '2026-08-05 02:02:01', '2026-08-05 02:02:47', NULL),
(211, 21, 'MDH84SA/A', 42390000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920570/products/bcsx7rmyrqkekhlsjeit.jpg', 'products/bcsx7rmyrqkekhlsjeit', '2026-08-05 02:02:01', '2026-08-05 02:02:50', NULL),
(212, 21, 'MDHF4SA/A', 42390000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920573/products/bcunqhk17dxvcnpp1sgm.jpg', 'products/bcunqhk17dxvcnpp1sgm', '2026-08-05 02:02:01', '2026-08-05 02:02:53', NULL),
(213, 21, 'MDHC4SA/A', 42390000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920575/products/hqc0qva6he2lp7adz3ml.jpg', 'products/hqc0qva6he2lp7adz3ml', '2026-08-05 02:02:01', '2026-08-05 02:02:56', NULL),
(214, 21, 'MDHJ4SA/A', 42390000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920578/products/octqtp4fzxbu718s193f.jpg', 'products/octqtp4fzxbu718s193f', '2026-08-05 02:02:01', '2026-08-05 02:02:59', NULL),
(215, 21, 'Z1L6000P0', 39790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920581/products/f1gz406mxu5d1amgtirj.jpg', 'products/f1gz406mxu5d1amgtirj', '2026-08-05 02:02:01', '2026-08-05 02:03:02', NULL),
(216, 21, 'Z1L3000P0', 39790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920584/products/hxd0dkfgjkxophfjybuj.jpg', 'products/hxd0dkfgjkxophfjybuj', '2026-08-05 02:02:01', '2026-08-05 02:03:04', NULL),
(217, 21, 'Z1L9000P5', 39790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920588/products/xej2jelojs5ktumtembb.jpg', 'products/xej2jelojs5ktumtembb', '2026-08-05 02:02:01', '2026-08-05 02:03:09', NULL);
INSERT INTO `product_variants` (`id`, `product_id`, `sku`, `price`, `sale_price`, `stock_quantity`, `image`, `image_public_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(218, 21, 'Z1L0000P1', 39790000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920591/products/uouuxzyyaxnikzles4uf.jpg', 'products/uouuxzyyaxnikzles4uf', '2026-08-05 02:02:01', '2026-08-05 02:03:12', NULL),
(219, 21, 'MDHK4SA/A', 48190000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920594/products/zshgtspyp0lud0dsgosg.jpg', 'products/zshgtspyp0lud0dsgosg', '2026-08-05 02:02:01', '2026-08-05 02:03:15', NULL),
(220, 21, 'MDHD4SA/A', 48190000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920597/products/jcz6mdoos2ffgo94igxd.jpg', 'products/jcz6mdoos2ffgo94igxd', '2026-08-05 02:02:01', '2026-08-05 02:03:17', NULL),
(221, 21, 'MDH94SA/A', 48190000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920600/products/eacmiglzotnsfvt99v5a.jpg', 'products/eacmiglzotnsfvt99v5a', '2026-08-05 02:02:01', '2026-08-05 02:03:20', NULL),
(222, 21, 'MDHG4SA/A', 48190000.00, NULL, 100, 'https://res.cloudinary.com/dhwomymqn/image/upload/v1785920602/products/md3wieolpm1vlbowrfhh.jpg', 'products/md3wieolpm1vlbowrfhh', '2026-08-05 02:02:01', '2026-08-05 02:03:23', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('msKmW3U6baBb8rLsPVKjNGVy0OBMRo96HAnBgDSY', 101, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiUW9rcHVIdHNHa1JVZmhqN3RDTjNDWGVOaWtXSFNxcWpyYVNFRWVGMSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvYWRtaW4iO3M6NToicm91dGUiO3M6MzA6ImZpbGFtZW50LmFkbWluLnBhZ2VzLmRhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjEwMTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2NDoiYzgyMjI2ZGU3OTU1NGVjODJmNjljMzE2ODZhZTc1MWU2NGMzN2QwNzQ2M2U2Y2RlZGI3YWNkMzVkODExY2Y0MCI7czo2OiJ0YWJsZXMiO2E6MTp7czo0MDoiZTY0NDgzM2Y0ZTRlMDg3MTIzMTVkYTcxYjMzZmFjZDJfY29sdW1ucyI7YToxNDp7aTowO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjQ6Im5hbWUiO3M6NToibGFiZWwiO3M6NDoiTmFtZSI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjE7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NToiZW1haWwiO3M6NToibGFiZWwiO3M6MTM6IkVtYWlsIGFkZHJlc3MiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToyO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjE3OiJlbWFpbF92ZXJpZmllZF9hdCI7czo1OiJsYWJlbCI7czoxNzoiRW1haWwgdmVyaWZpZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTozO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjU6InBob25lIjtzOjU6ImxhYmVsIjtzOjU6IlBob25lIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NDthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo3OiJhZGRyZXNzIjtzOjU6ImxhYmVsIjtzOjc6IkFkZHJlc3MiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo1O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjY6ImF2YXRhciI7czo1OiJsYWJlbCI7czo2OiJBdmF0YXIiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo2O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjE2OiJhdmF0YXJfcHVibGljX2lkIjtzOjU6ImxhYmVsIjtzOjE2OiJBdmF0YXIgcHVibGljIGlkIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6NzthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo0OiJyb2xlIjtzOjU6ImxhYmVsIjtzOjQ6IlJvbGUiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTo4O2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjg6Im90cF9jb2RlIjtzOjU6ImxhYmVsIjtzOjg6Ik90cCBjb2RlIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6OTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxNDoib3RwX2V4cGlyZXNfYXQiO3M6NToibGFiZWwiO3M6MTQ6Ik90cCBleHBpcmVzIGF0IjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTI6Im90cF9hdHRlbXB0cyI7czo1OiJsYWJlbCI7czoxMjoiT3RwIGF0dGVtcHRzIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTE7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTY6Im90cF9sYXN0X3NlbnRfYXQiO3M6NToibGFiZWwiO3M6MTY6Ik90cCBsYXN0IHNlbnQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToxMjthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czoxMDoiY3JlYXRlZF9hdCI7czo1OiJsYWJlbCI7czoxMDoiQ3JlYXRlZCBhdCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjA7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjE7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtiOjE7fWk6MTM7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6InVwZGF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IlVwZGF0ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO319fX0=', 1785945344),
('rONTKu9cYXvoun3d2BuOrg4wqQcWtOwiPmwO4RQe', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQTJTNXV1U0F5dERNajJ1UHJIc1NyV1QzUzJxeFQ4SWVnSTJOWXk3aiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2FkbWluIjt9czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC90ZXN0IjtzOjU6InJvdXRlIjtOO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1785949810);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `avatar_public_id` varchar(255) DEFAULT NULL,
  `role` enum('admin','client') NOT NULL DEFAULT 'client',
  `otp_code` varchar(255) DEFAULT NULL,
  `otp_expires_at` timestamp NULL DEFAULT NULL,
  `otp_attempts` int(11) NOT NULL DEFAULT 0,
  `otp_last_sent_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `phone`, `address`, `password`, `avatar`, `avatar_public_id`, `role`, `otp_code`, `otp_expires_at`, `otp_attempts`, `otp_last_sent_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Freddie Block Jr.', 'osborne33@example.net', '2026-08-05 08:23:04', '1-934-973-0124', '61846 Graham Common\nBoyleside, OH 86284-7486', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'Hn5h5NEzOp', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(2, 'Krista Baumbach DDS', 'jrowe@example.net', '2026-08-05 08:23:05', '+1.347.404.7483', '272 Elvera Drive\nPort Jo, IL 86471-7658', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'HYM0OO1b4R', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(3, 'Jerad Becker', 'lia66@example.com', '2026-08-05 08:23:05', '1-364-756-7927', '449 Bogisich Shores\nNew Isom, NY 86359', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'qDa924RVeK', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(4, 'Dina Veum II', 'tanya.reichel@example.org', '2026-08-05 08:23:05', '351-778-0964', '704 Naomie Village\nParisianmouth, WA 94536', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'mEmxoBdDrh', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(5, 'Magnolia Grady', 'joconner@example.com', '2026-08-05 08:23:05', '315.510.8580', '3569 Murray Courts\nNorth Bridgette, VT 43176-6588', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, '47s5JcPSC9', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(6, 'Prof. Cedrick Lind DVM', 'kohler.marlon@example.com', '2026-08-05 08:23:05', '+1 (830) 721-7889', '24776 Bechtelar Terrace Suite 384\nSouth Alexzanderfort, VA 57221', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'uLyP6jCwmT', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(7, 'Lorna Stanton', 'carter.stephen@example.org', '2026-08-05 08:23:05', '971-474-0089', '957 Fannie Walk\nStreichmouth, CO 40969-7650', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'NPinyz221b', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(8, 'Mr. Fabian Metz DDS', 'wiegand.river@example.org', '2026-08-05 08:23:05', '1-410-569-7477', '830 Alejandra Valley\nBeierhaven, ME 76973-5256', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, '6A31nxgQYQ', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(9, 'Christy Rutherford MD', 'khyatt@example.com', '2026-08-05 08:23:05', '+1 (903) 330-0853', '37470 Dawn Run\nWest Brad, OR 75422', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, '2RUd3jqKJK', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(10, 'Marielle Nitzsche Jr.', 'major.upton@example.net', '2026-08-05 08:23:05', '+1.559.825.9276', '19332 Bernhard Island Suite 042\nLake Ottisfort, VT 60438-0306', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'El0A7nFJ16', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(11, 'Pearline Conroy', 'dixie.swift@example.org', '2026-08-05 08:23:05', '737.325.1969', '7545 Batz Station\nPort Cristopher, KY 14860-6434', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, '18aJ35xNvI', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(12, 'Antonietta Turner', 'zita11@example.net', '2026-08-05 08:23:05', '540.960.0682', '352 Kutch Squares\nLake Briana, OR 43258-6081', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, '757grvKnFP', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(13, 'Darlene Considine', 'goyette.bria@example.com', '2026-08-05 08:23:05', '+1-308-365-7102', '461 Therese Inlet\nSouth Edgardo, NY 14299', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'tjJyXSAWTz', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(14, 'Jett Legros', 'donnelly.claudia@example.net', '2026-08-05 08:23:05', '+1-252-395-4467', '5989 Leanna Club\nNovaburgh, TN 81658', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, '33WtyRyMq7', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(15, 'Rozella Hermann', 'minerva24@example.com', '2026-08-05 08:23:05', '+1-629-399-2574', '1142 Kshlerin Heights Suite 057\nUptontown, TX 95836-0767', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'g6LpqC7tc4', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(16, 'Prof. Creola Paucek', 'candice45@example.org', '2026-08-05 08:23:05', '+18787491950', '7216 Toby Mews Suite 417\nLake Ericktown, GA 82206-3915', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'KEsWAew3EH', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(17, 'Pierce Bauch', 'ulices.johns@example.com', '2026-08-05 08:23:05', '531.739.5746', '1724 Erick Pines\nPort Eleonoremouth, AZ 11903', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'ivNk5Ldacc', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(18, 'Crystal Renner', 'aida05@example.net', '2026-08-05 08:23:05', '+1 (870) 774-0582', '16541 Nola Brook Suite 459\nVernicemouth, SD 41156', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'ozEQpJx92F', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(19, 'Prof. Noah Funk', 'dameon51@example.net', '2026-08-05 08:23:05', '781.766.4059', '8983 Earnestine Camp Suite 264\nLake Salmaborough, CA 02621-5381', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'gMzhyIOZOd', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(20, 'Earl Schoen', 'gisselle26@example.com', '2026-08-05 08:23:05', '+1 (260) 858-9896', '409 Ashly Shoals Apt. 021\nWest Ethel, RI 18876', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'j81d4zZykz', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(21, 'Miss Wanda Jones', 'elliot69@example.org', '2026-08-05 08:23:05', '539.320.2476', '976 Llewellyn Row Apt. 039\nNew Diamond, MO 78962-6492', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'afaXSYFtH8', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(22, 'Erich Feeney', 'grace.berge@example.org', '2026-08-05 08:23:05', '212-377-4958', '75728 Otha Parkways Suite 855\nPort Edwinmouth, NY 31904-0143', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, '2Vi25oxCtN', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(23, 'Prof. Clifton Effertz', 'nona83@example.com', '2026-08-05 08:23:05', '1-714-388-0571', '194 Clementina Villages Suite 106\nMayberg, AR 70116', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'ub316w1Xe5', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(24, 'Tomas Jacobson', 'vlakin@example.com', '2026-08-05 08:23:05', '847.567.1638', '10734 Hirthe Oval Apt. 665\nMiachester, MD 49995', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'e6CML4xkVJ', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(25, 'Dr. Aaliyah Harber', 'beth.huels@example.com', '2026-08-05 08:23:05', '+1-239-932-5547', '7828 Lia Trail Suite 267\nGloverport, IN 98795-3009', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 's3iwSQy8Pb', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(26, 'Eloy Wolff', 'izabella32@example.net', '2026-08-05 08:23:05', '256-910-1376', '523 Schultz Light Suite 058\nNorth Wellington, IA 56957-9593', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'zRXxb3YP3D', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(27, 'Prof. Mohammad Ferry IV', 'ivory.oconner@example.net', '2026-08-05 08:23:05', '+1-619-881-5600', '3171 Stark Street\nEast Brannon, WI 06315-6996', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'kJNS2PtZHc', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(28, 'Dr. Tara Hessel', 'kailyn76@example.com', '2026-08-05 08:23:05', '458.696.4795', '509 Melvina Burgs\nLake Paolo, OK 97537', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'wMUol677es', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(29, 'Carlos Dietrich', 'ibailey@example.com', '2026-08-05 08:23:05', '952.693.7824', '85683 Yundt Squares Apt. 438\nRonside, AK 07470-3612', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'kFXWqPGKCG', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(30, 'Juliet Cruickshank', 'lonzo62@example.net', '2026-08-05 08:23:05', '+14144215594', '37974 Roberts Creek Suite 430\nProvidenciton, NY 73570-1436', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, '3KQOokWbab', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(31, 'Santino Bartell', 'virginia.senger@example.org', '2026-08-05 08:23:05', '+1.936.695.2971', '457 Monica Lake Suite 424\nNorth Hillaryberg, SC 04326-8900', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'imBYOZct2G', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(32, 'Magnus Waelchi', 'pstokes@example.org', '2026-08-05 08:23:05', '1-504-991-9958', '98420 Dasia Junctions\nStammstad, IA 55621-5672', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'zM15ZU3kzP', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(33, 'Makenna Hudson', 'nreichel@example.com', '2026-08-05 08:23:05', '1-463-932-4682', '137 Katarina Trafficway Apt. 225\nMcCulloughberg, NM 48397-1250', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'zoSPVc9SBS', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(34, 'Donnell Treutel', 'talia.cronin@example.net', '2026-08-05 08:23:05', '+13603677403', '891 Geo Lodge Suite 903\nArvillaville, VA 74726-1092', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'ttZ87jRuCA', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(35, 'Prof. Jessy Eichmann MD', 'moshe.zboncak@example.com', '2026-08-05 08:23:05', '+1.716.817.9360', '925 Romaine Glens Apt. 282\nDessieburgh, PA 33699-0138', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'i6E42OUSgc', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(36, 'Dana Mertz', 'olen.parker@example.com', '2026-08-05 08:23:05', '+1.260.987.1586', '9654 Donnelly Corner\nPort Shaniyabury, ID 76690-8756', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'wAww4ZYGdL', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(37, 'Shania Rogahn', 'mavis.friesen@example.org', '2026-08-05 08:23:05', '1-907-734-7159', '9407 Shanel Court Apt. 196\nNew Anastasia, IL 71678', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'ajF35JMCBo', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(38, 'Prof. Ophelia Berge PhD', 'andres.rath@example.net', '2026-08-05 08:23:05', '+19493440932', '2820 Hoppe Knoll Suite 051\nNew Consueloburgh, NC 24076', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'jHXzg3FZJ8', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(39, 'Mr. Maxwell Stehr', 'jayce.quitzon@example.net', '2026-08-05 08:23:05', '+1-279-352-6492', '11718 Kyler Rapid Apt. 263\nNorth Assuntafurt, HI 80949', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'foNFqbVlOE', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(40, 'Maiya Wuckert', 'gorczany.nat@example.org', '2026-08-05 08:23:05', '458.509.0823', '72487 Ellsworth Rapids Apt. 109\nRunolfsdottirfurt, DE 15186-3015', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'Lup4jQtatQ', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(41, 'Name Rempel', 'jolie48@example.org', '2026-08-05 08:23:05', '954-982-0128', '39346 Manuel Plains\nWest Wilmashire, AL 12920', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, '1kXi0Z0wg3', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(42, 'Dexter Schowalter', 'markus.donnelly@example.org', '2026-08-05 08:23:05', '(580) 949-8298', '553 Lacy Fall\nEast Eileenhaven, MI 09983', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'ZwiCVLf8aR', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(43, 'Prof. Stefanie Bergnaum', 'reece97@example.com', '2026-08-05 08:23:05', '772.997.3549', '413 Fahey Tunnel\nNew Rene, AK 94441-9568', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, '78bkBJxXEJ', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(44, 'Sylvan Mertz', 'alyson76@example.com', '2026-08-05 08:23:05', '+1 (978) 240-4989', '380 Nels Neck Apt. 885\nNorth Sidneyburgh, RI 86306-8184', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'ry3cGb45d0', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(45, 'Linnea Pfannerstill', 'mark.abernathy@example.org', '2026-08-05 08:23:05', '+1-567-490-1492', '9944 Nienow Rest\nNedratown, NE 85347-1125', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'kpL0fhX4qX', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(46, 'Malika Turcotte DVM', 'jay.swaniawski@example.com', '2026-08-05 08:23:05', '+1-810-263-3006', '547 Brian Forges Suite 078\nSwaniawskiview, AK 46670', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'hVZSEGaGoZ', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(47, 'Louisa Lang', 'junior.lueilwitz@example.net', '2026-08-05 08:23:05', '347.379.9936', '270 Moore Courts Suite 932\nEast Lesleymouth, KY 05316', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'IB2m958z7A', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(48, 'Walton Carter', 'ryan.faye@example.org', '2026-08-05 08:23:05', '+1-907-825-0248', '7146 Adams Cliffs\nSouth Zechariahberg, WV 56255', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'wJkDQreN7f', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(49, 'Arvilla Wiegand', 'gerhold.anika@example.com', '2026-08-05 08:23:05', '(704) 971-9930', '4609 Whitney Ridges\nSchimmelland, RI 85512-9813', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'yROHLQnECy', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(50, 'April Hagenes', 'rhamill@example.com', '2026-08-05 08:23:05', '252-872-7304', '901 Witting Street\nNorth Keenanfurt, SC 15780', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'Hu4kUgxpNU', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(51, 'Delta Torp', 'cortez.abbott@example.net', '2026-08-05 08:23:05', '+1-947-252-6659', '33141 Kovacek Fall Apt. 351\nNikkoshire, CO 53479-3310', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'SGdKW3XrsN', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(52, 'Prof. Liliana Rempel IV', 'eloisa77@example.org', '2026-08-05 08:23:05', '1-430-581-5738', '355 Gust Lock Suite 467\nPfefferton, KS 82371-3995', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'XLRT4811Hi', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(53, 'Miss Lynn O\'Kon', 'ynicolas@example.com', '2026-08-05 08:23:05', '+1 (480) 653-5898', '823 Cesar Green\nSchaeferberg, NM 24916', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'XD508vvujD', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(54, 'Marcelino Nicolas', 'lavon72@example.org', '2026-08-05 08:23:05', '+1 (469) 803-0187', '187 Dayana Inlet\nPort Bettytown, CT 54083', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'SQder5rw8C', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(55, 'Carolina Pollich', 'xhettinger@example.org', '2026-08-05 08:23:05', '928-769-9045', '250 Hickle Island Apt. 312\nKulaston, IN 88428-6883', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'IfVGjFfc2S', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(56, 'Ms. Kasandra Ruecker', 'pacocha.glenda@example.com', '2026-08-05 08:23:05', '(252) 843-3079', '37633 Harvey Loaf\nBogantown, NY 37207-2882', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'DugwYdu8xL', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(57, 'Mrs. Sandrine Zboncak', 'carmel.gerlach@example.org', '2026-08-05 08:23:05', '+1-254-246-4170', '66496 Cristal Squares Suite 277\nJohnsborough, NC 99871-7609', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'WpvlY1WNvR', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(58, 'Kayleigh D\'Amore', 'zhoppe@example.com', '2026-08-05 08:23:05', '+1 (854) 452-3909', '280 Kessler Mountains Apt. 589\nBatzstad, NC 31081-0694', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'dUXZXzzzez', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(59, 'Hannah Gerhold', 'mrobel@example.com', '2026-08-05 08:23:05', '1-763-344-1919', '606 Jermain Light Apt. 586\nNew Marianneland, SD 07372', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'n1F00npUkE', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(60, 'Katelynn Mayer', 'lindgren.roger@example.net', '2026-08-05 08:23:05', '+19098094748', '346 Arch Orchard\nPort Adrian, NE 57121', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'WURiTKACH9', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(61, 'Cristobal Gleichner DDS', 'nlangworth@example.net', '2026-08-05 08:23:05', '1-412-480-5954', '996 Kreiger Motorway Apt. 535\nNorth Beaulah, AZ 90622-0147', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'Om8VXxlwf1', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(62, 'Lisette Marvin', 'helga.oreilly@example.net', '2026-08-05 08:23:05', '469.595.4443', '5599 Bailey Ranch Suite 715\nWildermanmouth, DE 26651-3779', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'NmXK1UKiVY', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(63, 'Mr. Manuela Tillman', 'funk.skylar@example.org', '2026-08-05 08:23:05', '+1.512.498.4917', '5885 Abdullah Neck Apt. 193\nNorth Ginaland, MO 52751-7311', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, '3NQZuYlpQg', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(64, 'Dolores Dickinson', 'feil.verda@example.net', '2026-08-05 08:23:05', '+12628068100', '2419 Marilyne Island Suite 891\nWalterbury, WI 61326-2532', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'NmiLbrevoS', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(65, 'Ashtyn Rath', 'georgette.weimann@example.com', '2026-08-05 08:23:05', '+1.435.930.8572', '3930 Rodriguez Pine\nEast George, MD 53502', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'DuSKBevyd7', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(66, 'Dr. Kasandra O\'Kon', 'jenkins.heaven@example.org', '2026-08-05 08:23:05', '+1.919.694.6338', '9640 Muller Groves\nEast Francisstad, VT 39125', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, '34sw6eGZe4', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(67, 'Rhoda Hintz', 'germaine.ebert@example.net', '2026-08-05 08:23:05', '(541) 338-9244', '661 Collier Inlet\nRaustad, CO 84242-5624', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'xgSybnperv', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(68, 'Cruz O\'Connell I', 'wschiller@example.net', '2026-08-05 08:23:05', '424-899-6036', '96642 Herman Stravenue Suite 920\nRonnymouth, IL 28852-4567', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'JFleKAmN4w', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(69, 'Dean Emard', 'murray.rosamond@example.com', '2026-08-05 08:23:05', '(458) 570-6740', '90832 Johnson Radial\nNicolasland, SC 58712-6533', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'oloUZ27Q6p', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(70, 'Mr. Haley Russel', 'juwan03@example.org', '2026-08-05 08:23:05', '1-228-987-1088', '597 Amalia Stravenue Suite 229\nDorotheaside, HI 63105', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'GgfeXgfMRq', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(71, 'Coy Herman', 'ellsworth.jenkins@example.org', '2026-08-05 08:23:05', '430-845-6167', '2902 Oswald Mills\nJaclynberg, GA 45757', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, '6Uvtxa3Ic6', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(72, 'Missouri McLaughlin', 'anthony.pacocha@example.net', '2026-08-05 08:23:05', '+1.435.599.7102', '50745 Runolfsdottir Run\nCarmellaton, WI 66430', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, '0q8VQI6KDO', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(73, 'Prof. Lloyd Champlin IV', 'svonrueden@example.org', '2026-08-05 08:23:05', '+1-813-802-8311', '385 Beahan Crescent\nNew Candidoview, WY 70136-8185', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'SyAHvI1hxj', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(74, 'Mr. Earnest Reinger MD', 'kunze.marilou@example.com', '2026-08-05 08:23:05', '689.300.0902', '97422 Schmeler Prairie Suite 008\nOberbrunnershire, CA 02160-3883', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'osi1MYc5Q0', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(75, 'Tito Parisian Sr.', 'romaguera.zachariah@example.com', '2026-08-05 08:23:05', '770-414-9276', '25313 Goodwin Turnpike\nVernieburgh, ID 14515-4288', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'chj7pQLor2', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(76, 'Josue Cummings', 'qmcdermott@example.com', '2026-08-05 08:23:05', '863-380-3450', '851 Mann Lane\nPort Zita, MN 52442', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, '992W2CI79o', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(77, 'Carmine Corwin III', 'twiegand@example.com', '2026-08-05 08:23:05', '+1-351-229-2587', '35273 Hyatt Falls Apt. 009\nDibbertbury, ME 91957', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'gMohUIroFC', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(78, 'Megane Breitenberg', 'kirk27@example.net', '2026-08-05 08:23:05', '+1-407-695-3622', '7684 Moore Harbors\nNorth Amber, ID 92517-6477', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'RrSdqEfgN5', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(79, 'Miss Pat Senger I', 'floyd63@example.com', '2026-08-05 08:23:05', '+1.623.976.0174', '359 Sheila Avenue\nNienowbury, ME 49241', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'fpUZgOBo5Y', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(80, 'Keith Brakus', 'cwest@example.com', '2026-08-05 08:23:05', '1-929-747-4341', '4047 Courtney Roads\nMeganechester, PA 83174-5941', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, '5mmiEYUmlH', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(81, 'Shanel Parisian', 'mateo61@example.com', '2026-08-05 08:23:05', '380.862.7548', '28927 Runolfsson Camp\nAnkundingtown, MA 72515-5554', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'tGckesPM0g', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(82, 'Miss Alisha Moore', 'fwelch@example.com', '2026-08-05 08:23:05', '1-458-759-9279', '369 Mann Crossroad Suite 214\nAndreanneton, SD 51221', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'IvjKpSOWeO', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(83, 'Miss Maxie Thiel I', 'christelle64@example.net', '2026-08-05 08:23:05', '352.971.0769', '79375 Hamill Estate\nKaceystad, NE 97211-3415', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'sCCn72AO5x', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(84, 'Payton D\'Amore', 'kertzmann.broderick@example.com', '2026-08-05 08:23:05', '947.342.9750', '321 Bridgette Curve\nClovismouth, CT 79554-7474', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'fpfe5osAtO', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(85, 'Cristina Marquardt V', 'rogelio09@example.com', '2026-08-05 08:23:05', '+16063438682', '846 Green Cliff\nEast Casandratown, CT 67184', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'e35goXa9yg', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(86, 'Trey Kling', 'schimmel.julius@example.com', '2026-08-05 08:23:05', '347-377-2700', '2800 Llewellyn Freeway\nPort Xzavierton, SD 47413', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'CFm42XHokR', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(87, 'Dr. Reece Nicolas Jr.', 'leta59@example.com', '2026-08-05 08:23:05', '832.389.4592', '38389 Mosciski Path Suite 037\nEast Arloberg, AR 43850-6007', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'boDsyAfxRa', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(88, 'Kirsten Yundt', 'dannie63@example.net', '2026-08-05 08:23:05', '(860) 935-7228', '12280 Terry Corner\nWeberfurt, AZ 57761-5262', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'AVeHAd4u5p', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(89, 'Newton Armstrong', 'blaise.greenfelder@example.org', '2026-08-05 08:23:05', '973.509.5329', '718 Wilkinson Square Apt. 614\nEast Keeleyfort, RI 00795-2144', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'T2NRYTBsXu', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(90, 'Mrs. Mayra Wisozk', 'vkoelpin@example.com', '2026-08-05 08:23:05', '(323) 424-6002', '904 Rohan Harbors\nRohantown, DC 72147-0801', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'aW0ypUPjpj', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(91, 'Ms. Karlee Schmitt MD', 'pedro94@example.com', '2026-08-05 08:23:05', '680-566-7985', '70687 Bette View\nJulienside, CO 60722-8650', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'NRWenyMCqC', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(92, 'Mrs. Jacinthe Sipes', 'tracy.larkin@example.org', '2026-08-05 08:23:05', '865.724.8994', '38059 Dortha Pine Suite 835\nEast Serenity, WY 03071-6751', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'CmBF2tL1iM', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(93, 'Orin Donnelly', 'orutherford@example.org', '2026-08-05 08:23:05', '+1.515.426.0551', '703 Stracke Forge\nNorth Sarina, AZ 97922', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'sVg7iGX57E', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(94, 'Jamar Blick', 'greyson68@example.com', '2026-08-05 08:23:05', '616.405.3566', '534 Wilhelmine Vista\nEast Jovaniton, UT 44196', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'iIj3sWWXxg', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(95, 'Stone Nicolas', 'ryley98@example.org', '2026-08-05 08:23:05', '559.236.8866', '871 Jake Row Apt. 709\nKrajcikberg, DC 75388-9616', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'gczMWCctft', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(96, 'Dr. Jacynthe Rippin MD', 'borer.winnifred@example.net', '2026-08-05 08:23:05', '1-660-895-3485', '58857 Wehner Cliffs Suite 950\nNorth Orlo, PA 97680-5647', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'usJiVcxdY2', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(97, 'Benny Crooks II', 'thora.mclaughlin@example.com', '2026-08-05 08:23:05', '+1-364-406-4832', '8851 Bradford Brooks\nBryceburgh, NM 93693', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'CDw6h8oB9h', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(98, 'Mr. Alfred Brakus I', 'xtorphy@example.com', '2026-08-05 08:23:05', '(520) 532-6665', '71998 Geoffrey Mall Suite 864\nHickleland, VT 13817-9932', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'jHYP3sJm8a', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(99, 'Darwin Emmerich', 'dale26@example.com', '2026-08-05 08:23:05', '361.777.3589', '557 Orion Park Suite 414\nLemkeburgh, ME 96924', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'cqewXINQLe', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(100, 'Prof. Marion Rempel', 'flind@example.org', '2026-08-05 08:23:05', '(781) 245-5560', '61851 Wilford Plains\nNew Joy, HI 54205', '$2y$12$5feUvDEV00Yayw33hP4QN.2OMltcycwjBNKOuPvz6zN.Yvh/WrTkW', NULL, NULL, 'client', NULL, NULL, 0, NULL, 'k03yxsjSwj', '2026-08-05 08:23:05', '2026-08-05 08:23:05'),
(101, 'minh tuệ', 'minhtue773@gmail.com', '2026-08-01 15:42:27', NULL, NULL, '$2y$12$6QY8tbKeHn2n4t85rywVi..09BSlwP8jB4G6c.WppRMITmTD6h0g2', NULL, NULL, 'admin', NULL, NULL, 0, NULL, NULL, NULL, '2026-08-05 08:42:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `variant_attribute_values`
--

CREATE TABLE `variant_attribute_values` (
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_value_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `variant_attribute_values`
--

INSERT INTO `variant_attribute_values` (`variant_id`, `attribute_value_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(3, 2),
(3, 4),
(4, 1),
(4, 2),
(5, 2),
(5, 5),
(6, 4),
(6, 6),
(7, 1),
(7, 6),
(8, 5),
(8, 6),
(9, 1),
(9, 2),
(10, 2),
(10, 7),
(11, 2),
(11, 5),
(12, 5),
(12, 6),
(13, 6),
(13, 7),
(14, 1),
(14, 6),
(15, 6),
(15, 8),
(16, 6),
(16, 9),
(17, 1),
(17, 10),
(18, 5),
(18, 10),
(19, 7),
(19, 10),
(20, 8),
(20, 10),
(21, 9),
(21, 10),
(22, 2),
(22, 11),
(23, 2),
(23, 12),
(24, 2),
(24, 13),
(25, 2),
(25, 14),
(26, 2),
(26, 15),
(27, 6),
(27, 15),
(28, 6),
(28, 14),
(29, 6),
(29, 11),
(30, 6),
(30, 13),
(31, 6),
(31, 12),
(32, 11),
(32, 16),
(33, 13),
(33, 16),
(34, 14),
(34, 16),
(35, 12),
(35, 16),
(36, 15),
(36, 16),
(37, 6),
(37, 17),
(38, 6),
(38, 18),
(39, 6),
(39, 19),
(40, 6),
(40, 20),
(41, 16),
(41, 20),
(42, 16),
(42, 19),
(43, 16),
(43, 18),
(44, 16),
(44, 17),
(45, 19),
(45, 21),
(46, 18),
(46, 21),
(47, 17),
(47, 21),
(48, 20),
(48, 21),
(49, 2),
(49, 20),
(50, 2),
(50, 19),
(51, 2),
(51, 17),
(52, 2),
(52, 18),
(53, 6),
(53, 20),
(54, 6),
(54, 19),
(55, 6),
(55, 18),
(56, 6),
(56, 17),
(57, 16),
(57, 20),
(58, 16),
(58, 17),
(59, 16),
(59, 18),
(60, 16),
(60, 19),
(61, 19),
(61, 21),
(62, 17),
(62, 21),
(63, 18),
(63, 21),
(64, 20),
(64, 21),
(65, 2),
(65, 15),
(66, 2),
(66, 13),
(67, 6),
(67, 15),
(68, 6),
(68, 13),
(69, 13),
(69, 16),
(70, 15),
(70, 16),
(71, 2),
(71, 15),
(72, 2),
(72, 11),
(73, 2),
(73, 13),
(74, 2),
(74, 12),
(75, 2),
(75, 14),
(76, 6),
(76, 15),
(77, 6),
(77, 14),
(78, 6),
(78, 11),
(79, 6),
(79, 12),
(80, 6),
(80, 13),
(81, 14),
(81, 16),
(82, 12),
(82, 16),
(83, 13),
(83, 16),
(84, 11),
(84, 16),
(85, 15),
(85, 16),
(86, 6),
(86, 13),
(87, 6),
(87, 15),
(88, 6),
(88, 11),
(89, 11),
(89, 16),
(90, 13),
(90, 16),
(91, 15),
(91, 16),
(92, 6),
(92, 22),
(93, 6),
(93, 15),
(94, 6),
(94, 13),
(95, 6),
(95, 23),
(96, 6),
(96, 24),
(97, 13),
(97, 16),
(98, 16),
(98, 23),
(99, 15),
(99, 16),
(100, 16),
(100, 24),
(101, 16),
(101, 22),
(102, 6),
(102, 25),
(103, 6),
(103, 26),
(104, 6),
(104, 27),
(105, 16),
(105, 25),
(106, 16),
(106, 27),
(107, 16),
(107, 26),
(108, 21),
(108, 27),
(109, 21),
(109, 26),
(110, 21),
(110, 25),
(111, 26),
(111, 28),
(112, 25),
(112, 28),
(113, 28),
(113, 29),
(114, 6),
(114, 25),
(115, 6),
(115, 26),
(116, 6),
(116, 27),
(117, 16),
(117, 26),
(118, 16),
(118, 27),
(119, 16),
(119, 25),
(120, 21),
(120, 25),
(121, 21),
(121, 26),
(122, 21),
(122, 27),
(123, 6),
(123, 30),
(124, 6),
(124, 31),
(125, 6),
(125, 32),
(126, 6),
(126, 33),
(127, 16),
(127, 33),
(128, 16),
(128, 32),
(129, 16),
(129, 31),
(130, 16),
(130, 30),
(131, 21),
(131, 30),
(132, 21),
(132, 32),
(133, 21),
(133, 31),
(134, 21),
(134, 33),
(135, 2),
(135, 34),
(136, 2),
(136, 35),
(137, 2),
(137, 36),
(138, 2),
(138, 37),
(139, 6),
(139, 34),
(140, 6),
(140, 36),
(141, 6),
(141, 37),
(142, 6),
(142, 35),
(143, 16),
(143, 36),
(144, 16),
(144, 35),
(145, 16),
(145, 37),
(146, 16),
(146, 34),
(147, 21),
(147, 37),
(148, 21),
(148, 36),
(149, 21),
(149, 35),
(150, 21),
(150, 34),
(151, 2),
(151, 34),
(152, 2),
(152, 36),
(153, 2),
(153, 37),
(154, 2),
(154, 35),
(155, 6),
(155, 35),
(156, 6),
(156, 34),
(157, 6),
(157, 36),
(158, 6),
(158, 37),
(159, 16),
(159, 36),
(160, 16),
(160, 35),
(161, 16),
(161, 34),
(162, 16),
(162, 37),
(163, 21),
(163, 37),
(164, 21),
(164, 36),
(165, 21),
(165, 35),
(166, 21),
(166, 34),
(167, 2),
(167, 5),
(168, 2),
(168, 4),
(169, 2),
(169, 38),
(170, 2),
(170, 39),
(171, 4),
(171, 6),
(172, 6),
(172, 39),
(173, 6),
(173, 38),
(174, 5),
(174, 6),
(175, 5),
(175, 16),
(176, 4),
(176, 16),
(177, 16),
(177, 38),
(178, 16),
(178, 39),
(179, 6),
(179, 13),
(180, 6),
(180, 25),
(181, 13),
(181, 16),
(182, 16),
(182, 25),
(183, 21),
(183, 25),
(184, 13),
(184, 21),
(185, 13),
(185, 28),
(186, 25),
(186, 28),
(187, 6),
(187, 13),
(188, 6),
(188, 25),
(189, 16),
(189, 25),
(190, 13),
(190, 16),
(191, 21),
(191, 25),
(192, 13),
(192, 21),
(193, 13),
(193, 28),
(194, 25),
(194, 28),
(195, 40),
(195, 41),
(195, 42),
(195, 43),
(195, 44),
(196, 41),
(196, 42),
(196, 43),
(196, 44),
(196, 45),
(197, 41),
(197, 42),
(197, 43),
(197, 44),
(197, 46),
(198, 25),
(198, 41),
(198, 42),
(198, 43),
(198, 44),
(199, 40),
(199, 41),
(199, 42),
(199, 43),
(199, 47),
(200, 41),
(200, 42),
(200, 43),
(200, 45),
(200, 47),
(201, 25),
(201, 41),
(201, 42),
(201, 43),
(201, 47),
(202, 41),
(202, 42),
(202, 43),
(202, 46),
(202, 47),
(203, 48),
(203, 49),
(203, 50),
(203, 51),
(203, 52),
(204, 25),
(204, 49),
(204, 50),
(204, 51),
(204, 52),
(205, 30),
(205, 49),
(205, 50),
(205, 51),
(205, 52),
(206, 37),
(206, 49),
(206, 50),
(206, 51),
(206, 52),
(207, 37),
(207, 49),
(207, 50),
(207, 52),
(207, 53),
(208, 48),
(208, 49),
(208, 50),
(208, 52),
(208, 53),
(209, 30),
(209, 49),
(209, 50),
(209, 52),
(209, 53),
(210, 25),
(210, 49),
(210, 50),
(210, 52),
(210, 53),
(211, 25),
(211, 50),
(211, 52),
(211, 53),
(211, 54),
(212, 48),
(212, 50),
(212, 52),
(212, 53),
(212, 54),
(213, 37),
(213, 50),
(213, 52),
(213, 53),
(213, 54),
(214, 30),
(214, 50),
(214, 52),
(214, 53),
(214, 54),
(215, 48),
(215, 49),
(215, 50),
(215, 53),
(215, 55),
(216, 37),
(216, 49),
(216, 50),
(216, 53),
(216, 55),
(217, 30),
(217, 49),
(217, 50),
(217, 53),
(217, 55),
(218, 25),
(218, 49),
(218, 50),
(218, 53),
(218, 55),
(219, 30),
(219, 50),
(219, 53),
(219, 54),
(219, 55),
(220, 37),
(220, 50),
(220, 53),
(220, 54),
(220, 55),
(221, 25),
(221, 50),
(221, 53),
(221, 54),
(221, 55),
(222, 48),
(222, 50),
(222, 53),
(222, 54),
(222, 55);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vouchers`
--

CREATE TABLE `vouchers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` enum('fixed','percentage') NOT NULL,
  `value` decimal(15,2) NOT NULL,
  `min_order_value` decimal(15,2) NOT NULL DEFAULT 0.00,
  `max_discount_amount` decimal(15,2) DEFAULT NULL,
  `usage_limit` int(10) UNSIGNED DEFAULT NULL,
  `used_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_limit` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `starts_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_code_unique` (`code`);

--
-- Chỉ mục cho bảng `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_attribute_id_foreign` (`attribute_id`);

--
-- Chỉ mục cho bảng `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Chỉ mục cho bảng `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_session_id_index` (`session_id`);

--
-- Chỉ mục cho bảng `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_items_cart_id_foreign` (`cart_id`),
  ADD KEY `cart_items_product_variant_id_foreign` (`product_variant_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `inventory_logs`
--
ALTER TABLE `inventory_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_logs_product_variant_id_foreign` (`product_variant_id`),
  ADD KEY `inventory_logs_user_id_foreign` (`user_id`),
  ADD KEY `inventory_logs_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_order_code_unique` (`order_code`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_variant_id_foreign` (`product_variant_id`);

--
-- Chỉ mục cho bảng `order_vouchers`
--
ALTER TABLE `order_vouchers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_vouchers_order_id_foreign` (`order_id`),
  ADD KEY `order_vouchers_voucher_id_foreign` (`voucher_id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_order_id_foreign` (`order_id`),
  ADD KEY `payments_transaction_id_index` (`transaction_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_index` (`category_id`);

--
-- Chỉ mục cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_variants_sku_unique` (`sku`),
  ADD KEY `product_variants_product_id_index` (`product_id`),
  ADD KEY `product_variants_sku_index` (`sku`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `variant_attribute_values`
--
ALTER TABLE `variant_attribute_values`
  ADD PRIMARY KEY (`variant_id`,`attribute_value_id`),
  ADD KEY `variant_attribute_values_attribute_value_id_foreign` (`attribute_value_id`);

--
-- Chỉ mục cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vouchers_code_unique` (`code`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `inventory_logs`
--
ALTER TABLE `inventory_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `order_vouchers`
--
ALTER TABLE `order_vouchers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT cho bảng `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `inventory_logs`
--
ALTER TABLE `inventory_logs`
  ADD CONSTRAINT `inventory_logs_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `inventory_logs_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `inventory_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `order_vouchers`
--
ALTER TABLE `order_vouchers`
  ADD CONSTRAINT `order_vouchers_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_vouchers_voucher_id_foreign` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `variant_attribute_values`
--
ALTER TABLE `variant_attribute_values`
  ADD CONSTRAINT `variant_attribute_values_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `variant_attribute_values_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
