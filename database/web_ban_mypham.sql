-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 06, 2023 lúc 09:59 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_ban_mypham`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `log_login` text DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Thành Trung', 'admin@gmail.com', '$2y$10$wkjMG/vGGEJ21wIARDJDiOZnBxO8p5eyDrc3gw.0E9.oKNKqp0QD.', '0343754517', NULL, 'CDTH18', '225 Điện Biên Phủ Bình Thạnh HCM', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(255) NOT NULL,
  `a_slug` varchar(255) NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` int(11) NOT NULL DEFAULT 0,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext DEFAULT NULL,
  `a_avatar` varchar(255) DEFAULT NULL,
  `a_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(1, 'Tháng 5 Mỹ Phẩm Giảm Mạnh', 'thang-5-my-pham-giam-manh', 1, 1, 1, 0, 'aaaaaaaaaaaaa', '2023-05-06__google-shopping-kem-chong-nang-innisfree-nang-tong-kiem-dau-50ml-1682496278-img-380x380-64adc6-fit-center.jpg', '<p>aaaaaaaaaaaaaaaaaaaa</p>', '2023-05-06 00:56:21', 1, 1, '2023-05-06 00:56:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(255) NOT NULL,
  `atb_slug` varchar(255) NOT NULL,
  `atb_type_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type_id`, `created_at`, `updated_at`) VALUES
(1, '50ml', '50ml', 1, '2023-05-06 00:22:17', NULL),
(2, '100ml', '100ml', 1, '2023-05-06 00:22:21', NULL),
(3, '200ml', '200ml', 1, '2023-05-06 00:29:02', NULL),
(4, '500ml', '500ml', 1, '2023-05-06 00:29:07', NULL),
(5, '1l', '1l', 1, '2023-05-06 00:29:11', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT 0,
  `c_slug` varchar(255) NOT NULL,
  `c_avatar` varchar(255) DEFAULT NULL,
  `c_banner` varchar(255) DEFAULT NULL,
  `c_description` varchar(255) DEFAULT NULL,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_parent_id`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Chống nắng da mặt', 0, 'chong-nang-da-mat', NULL, NULL, NULL, 0, 1, '2023-05-06 00:27:16', NULL),
(2, 'Kem dưỡng', 0, 'kem-duong', NULL, NULL, NULL, 0, 1, '2023-05-06 00:27:30', NULL),
(3, 'Sữa rửa mặt', 0, 'sua-rua-mat', NULL, NULL, NULL, 0, 1, '2023-05-06 00:27:40', NULL),
(4, 'Phấn nước', 0, 'phan-nuoc', NULL, NULL, NULL, 0, 1, '2023-05-06 00:27:47', NULL),
(5, 'Son dưỡng môi', 0, 'son-duong-moi', NULL, NULL, NULL, 0, 1, '2023-05-06 00:27:57', NULL),
(6, 'Dầu dưỡng tóc', 0, 'dau-duong-toc', NULL, NULL, NULL, 0, 1, '2023-05-06 00:28:17', NULL),
(7, 'Thực phẩm chức năng', 0, 'thuc-pham-chuc-nang', NULL, NULL, NULL, 0, 1, '2023-05-06 00:28:33', NULL),
(8, 'Sữa tắm', 0, 'sua-tam', NULL, NULL, NULL, 0, 1, '2023-05-06 00:28:46', NULL),
(9, 'Nước Hoa', 0, 'nuoc-hoa', NULL, NULL, NULL, 0, 1, '2023-05-06 00:41:06', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(255) DEFAULT NULL,
  `cmt_email` varchar(255) DEFAULT NULL,
  `cmt_content` text DEFAULT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_product_id` int(11) NOT NULL DEFAULT 0,
  `cmt_admin_id` int(11) NOT NULL DEFAULT 0,
  `cmt_user_id` int(11) NOT NULL DEFAULT 0,
  `cmt_like` int(11) NOT NULL DEFAULT 0,
  `cmt_disk_like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_title` varchar(255) DEFAULT NULL,
  `c_phone` char(11) DEFAULT NULL,
  `c_email` varchar(255) DEFAULT NULL,
  `c_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discount_code`
--

CREATE TABLE `discount_code` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `d_code` varchar(191) NOT NULL,
  `d_number_code` int(11) NOT NULL DEFAULT 0,
  `d_date_start` datetime DEFAULT NULL,
  `d_date_end` datetime DEFAULT NULL,
  `d_percentage` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `discount_code`
--

INSERT INTO `discount_code` (`id`, `d_code`, `d_number_code`, `d_date_start`, `d_date_end`, `d_percentage`, `created_at`, `updated_at`) VALUES
(1, 'abc', 5, '2023-05-06 14:55:00', '2023-05-31 14:55:00', 10, '2023-05-06 00:55:31', '2023-05-06 00:55:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(255) DEFAULT NULL,
  `e_banner` varchar(255) DEFAULT NULL,
  `e_link` varchar(255) DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_3` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_4` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `created_at`, `updated_at`) VALUES
(1, 'Event 1', '2023-05-06__25.jpg', 'http', 1, 0, 0, 0, '2023-05-06 00:33:32', '2023-05-06 00:33:32'),
(2, 'Event 2', '2023-05-06__1665475978elc-415x130.jpg', 'http', 0, 1, 0, 0, '2023-05-06 00:34:06', NULL),
(3, 'Event 3', '2023-05-06__1676436066banner-kiehls-1.jpg', 'http', 0, 0, 1, 0, '2023-05-06 00:34:16', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(255) NOT NULL,
  `k_slug` varchar(255) NOT NULL,
  `k_description` varchar(255) DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `keywords`
--

INSERT INTO `keywords` (`id`, `k_name`, `k_slug`, `k_description`, `k_hot`, `created_at`, `updated_at`) VALUES
(1, 'Mỹ Phẩm Việt Nam', 'my-pham-viet-nam', 'aaaaaaa', 0, '2023-05-06 00:30:13', NULL),
(2, 'Mỹ Phẩm Hàn Quốc', 'my-pham-han-quoc', 'aaaaaaaa', 0, '2023-05-06 00:30:27', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(255) NOT NULL,
  `mn_slug` varchar(255) NOT NULL,
  `mn_avatar` varchar(255) DEFAULT NULL,
  `mn_banner` varchar(255) DEFAULT NULL,
  `mn_description` varchar(255) DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Bài Viết Mới Nhất', 'bai-viet-moi-nhat', NULL, NULL, NULL, 0, 1, '2023-05-06 00:55:48', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_product_id` int(11) NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `od_size` varchar(50) DEFAULT NULL,
  `od_color` varchar(100) DEFAULT NULL,
  `od_gender` tinyint(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `od_size`, `od_color`, `od_gender`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 2, 267000, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
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
  `p_transaction_id` int(11) DEFAULT NULL,
  `p_user_id` int(11) DEFAULT NULL,
  `p_money` double(8,2) DEFAULT NULL COMMENT 'Số tiền thanh toán',
  `p_note` varchar(191) DEFAULT NULL COMMENT 'Nội dung thanh toán',
  `p_transaction_code` varchar(191) NOT NULL,
  `p_vnp_response_code` varchar(255) DEFAULT NULL COMMENT 'Mã phản hồi',
  `p_code_vnpay` varchar(255) DEFAULT NULL COMMENT 'Mã giao dịch vnpay',
  `p_code_bank` varchar(255) DEFAULT NULL COMMENT 'Mã ngân hàng',
  `p_time` datetime DEFAULT NULL COMMENT 'Thời gian chuyển khoản',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producer`
--

CREATE TABLE `producer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pdr_name` varchar(255) NOT NULL,
  `pdr_slug` varchar(255) NOT NULL,
  `pdr_email` varchar(100) NOT NULL,
  `pdr_phone` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `producer`
--

INSERT INTO `producer` (`id`, `pdr_name`, `pdr_slug`, `pdr_email`, `pdr_phone`, `created_at`, `updated_at`) VALUES
(1, 'Hoa Mộc Lan', 'hoa-moc-lan', 'hoamoclam@gmail.com', '0999999999', '2023-05-06 00:26:06', NULL),
(2, 'Đại lý KissA Skincare', 'dai-ly-kissa-skincare', 'snk@gmail.com', '0999999999', '2023-05-06 00:26:26', NULL),
(3, 'Bo shop', 'bo-shop', 'bos@gmail.com', '0999999999', '2023-05-06 00:26:44', NULL),
(4, 'White Beauty Shop', 'white-beauty-shop', 'whs@gmail.com', '0999999999', '2023-05-06 00:27:01', NULL),
(5, 'NSX 5', 'nsx-5', 'nsx5@gmail.com', '0999999999', '2023-05-06 00:54:15', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(255) DEFAULT NULL,
  `pro_slug` varchar(255) NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_price_entry` int(11) NOT NULL DEFAULT 0 COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` tinyint(4) NOT NULL DEFAULT 0,
  `pro_avatar` varchar(255) DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` mediumtext DEFAULT NULL,
  `pro_content` text DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `pro_country` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_admin_id`, `pro_sale`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_country`, `updated_at`) VALUES
(1, 'Kem Chống Nắng Skin1004 Cho Da Nhạy Cảm SPF 50+ 50ml Madagascar Centella Air-Fit Suncream Plus SPF50+ PA++++', 'kem-chong-nang-skin1004-cho-da-nhay-cam-spf-50-50ml-madagascar-centella-air-fit-suncream-plus-spf50-pa', 267000, 0, 1, 0, 0, '2023-05-06__promotions-auto-kem-chong-nang-skin1004-chiet-xuat-rau-ma-spf50-pa-50ml-abssksnr7wgp74dj-img-380x380-64adc6-fit-center.png', 1, 1, 1, 2, NULL, '<p><strong>Kem Chống Nắng Skin1004 Cho Da Nhạy Cảm 50ml</strong>&nbsp;l&agrave; sản phẩm kem chống nắng đến từ&nbsp;<strong><a href=\"https://hasaki.vn/thuong-hieu/skin1004.html\" target=\"_blank\">thương hiệu mỹ phẩm Skin1004</a></strong>&nbsp;của H&agrave;n Quốc, l&agrave; kem chống nắng vật l&yacute; với chiết xuất rau m&aacute; v&agrave; chất kem mỏng nhẹ c&oacute; m&agrave;u gi&uacute;p che phủ nhẹ khuyết điểm cho da. C&ocirc;ng thức đa năng vừa chống nắng vừa đều m&agrave;u da lại dưỡng ẩm ch&iacute;nh l&agrave; sản phẩm m&agrave; những c&ocirc; n&agrave;ng da mụn hay da dầu nhạy cảm cần v&igrave; kh&ocirc;ng cần sử dụng qu&aacute; nhiều bước lỉnh kỉnh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Kem Chống Nắng Skin1004 Cho Da Nhạy Cảm 50ml \" src=\"https://media.hasaki.vn/wysiwyg/minhchau/kem-chong-nang-skin1004-chiet-xuat-rau-ma-spf50-pa-50ml-1.jpg\" style=\"width:800px\" title=\"Kem Chống Nắng Skin1004 Cho Da Nhạy Cảm\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&Aacute;nh nắng mặt trời l&agrave; một trong những nguy&ecirc;n nh&acirc;n h&agrave;ng đầu dẫn đến l&atilde;o h&oacute;a da sớm, b&ecirc;n cạnh qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a tự nhi&ecirc;n do vấn đề tuổi t&aacute;c. Việc tiếp x&uacute;c thường xuy&ecirc;n qu&aacute; mức với &aacute;nh nắng mặt trời sẽ khiến da mất đi Collagen v&agrave; Elastin, đồng thời l&agrave;m suy yếu đi qu&aacute; tr&igrave;nh tổng hợp Collagen mới, dẫn đến da mất đi độ đ&agrave;n hồi v&agrave; săn chắc vốn c&oacute;, trở n&ecirc;n ch&ugrave;ng nh&atilde;o, chảy xệ, h&igrave;nh th&agrave;nh nếp nhăn&hellip; Ngo&agrave;i ra &aacute;nh nắng mặt trời c&ograve;n khiến da trở n&ecirc;n đen sạm, h&igrave;nh th&agrave;nh c&aacute;c đốm sắc tố như t&agrave;n nhang, th&acirc;m n&aacute;m, đồi mồi&hellip; V&igrave; thế, việc sử dụng kem chống nắng hằng ng&agrave;y l&agrave; cực k&igrave; quan trọng v&agrave; l&agrave; bước đầu ti&ecirc;n gi&uacute;p ngăn ngừa l&atilde;o h&oacute;a da sớm m&agrave; bạn tuyệt đối kh&ocirc;ng thể bỏ qua. Tuy nhi&ecirc;n, c&oacute; rất nhiều bạn lo ngại về l&agrave;n da qu&aacute; nhạy cảm, da bị mụn kh&ocirc;ng thể d&ugrave;ng được&nbsp;<strong><a href=\"https://hasaki.vn/danh-muc/chong-nang-da-mat-c11.html\" target=\"_blank\">kem chống nắng</a></strong>, hoặc c&aacute;c loại kem chống nắng tr&ecirc;n thị trường g&acirc;y trắng da, bệch mặt, b&oacute;ng nhẫy như chảo dầu&hellip; Đ&acirc;y ch&iacute;nh l&agrave; l&uacute;c bạn n&ecirc;n thử qua d&ograve;ng sản phẩm n&agrave;y nh&eacute;.</p>\r\n\r\n<p><a href=\"https://hasaki.vn/\" target=\"_blank\"><strong>Hasaki</strong></a>&nbsp;xin giới thiệu d&ograve;ng&nbsp;<strong>Kem Chống Nắng Skin1004 Madagascar Centella Air-Fit Suncream Plus SPF50+ PA++++ 50ml&nbsp;</strong>mang đến cho bạn loại kem chống nắng ho&agrave;n hảo cho l&agrave;n da mụn nhạy cảm, dịu nhẹ v&agrave; an to&agrave;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Kem Chống Nắng Skin1004 Cho Da Nhạy Cảm\" src=\"https://media.hasaki.vn/wysiwyg/minhchau/kem-chong-nang-skin1004-chiet-xuat-rau-ma-spf50-pa-50ml-2.jpg\" style=\"width:800px\" title=\"Kem Chống Nắng Skin1004 Cho Da Nhạy Cảm 50ml \" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Loại da ph&ugrave; hợp:</strong></h2>\r\n\r\n<ul>\r\n	<li>Sản phẩm ph&ugrave; hợp mọi loại da.&nbsp;</li>\r\n</ul>\r\n\r\n<h2>Giải ph&aacute;p cho t&igrave;nh trạng da:&nbsp;</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Da thường xuy&ecirc;n tiếp x&uacute;c &aacute;nh nắng mặt trời.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Da&nbsp;<a href=\"https://hasaki.vn/danh-muc/nhay-cam-kich-ung-c1885.html\" target=\"_blank\">nhạy cảm - k&iacute;ch ứng</a>.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>Ưu thế nổi bật:</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Th&ecirc;m 20% chiết xuất&nbsp;<strong>rau m&aacute;</strong>&nbsp;so với phi&ecirc;n bản trước,&nbsp;rau m&aacute; v&ugrave;ng Madagascar gi&agrave;u vitamin B,C v&agrave; polyphenols c&oacute; khả năng chống oxi h&oacute;a, phục hồi, l&agrave;m dịu da, kh&aacute;ng vi&ecirc;m, giảm th&acirc;m, gi&uacute;p da trắng s&aacute;ng mịn m&agrave;ng, hỗ trợ giảm mụn.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kem chống nắng vật l&yacute; kh&ocirc;ng chứa kho&aacute;ng chất nano c&ugrave;ng với độ&nbsp;<strong>SPF 50+ PA++++</strong>&nbsp;gi&uacute;p bảo vệ l&agrave;n da tối ưu.</p>\r\n	</li>\r\n	<li>\r\n	<p>Chứa th&agrave;nh phần<strong>&nbsp;Multiex BASAM</strong>&nbsp;với 7 chiết xuất từ thực vật gi&uacute;p dưỡng ẩm da nhẹ nh&agrave;ng, bảo vệ da lu&ocirc;n khoẻ mạnh, củng cố khả năng t&aacute;i tạo da.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Madewhite</strong>&nbsp;th&agrave;nh phần n&acirc;ng t&ocirc;ng từ chiết xuất rau m&aacute; c&oacute; khả năng n&acirc;ng t&ocirc;ng da tự nhi&ecirc;n, dưỡng s&aacute;ng da tự nhi&ecirc;n.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>C&ocirc;ng thức dạng kem tạo ra lớp bảo vệ m&agrave; kh&ocirc;ng bết d&iacute;nh v&agrave; tạo độ dưỡng ẩm vừa phải.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Kem Chống Nắng Skin1004 Madagascar Centella Air-Fit Suncream Plus SPF50+ PA++++ 50ml \" src=\"https://media.hasaki.vn/wysiwyg/ThuyHao/kem-chong-nang-chiet-xuat-rau-ma-skin1004-madagascar-centella-air-fit-suncream-spf50-pa-50ml-4.png\" style=\"width:800px\" title=\"Kem Chống Nắng Skin1004 Madagascar Centella Air-Fit Suncream Plus SPF50+ PA++++ \" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Độ an to&agrave;n:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Kh&ocirc;ng chứa dầu, kh&ocirc;ng Parabens.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>Bảo quản:</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tr&aacute;nh &aacute;nh nắng trực tiếp, nơi c&oacute; nhiệt độ cao hoặc ẩm ướt.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đậy nắp lại sau khi d&ugrave;ng</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2><strong>Th&ocirc;ng số sản phẩm:</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Dung t&iacute;ch:&nbsp;</strong>50ml</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Xuất xứ thương hiệu:</strong>&nbsp;H&agrave;n Quốc</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Thương hiệu:</strong>&nbsp;Skin1004</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sản xuất tại:&nbsp;</strong>H&agrave;n Quốc</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>\r\n\r\n<p><a href=\"javascript:;\">Xem th&ecirc;m nội dung</a></p>', 0, 0, 0, '2023-05-06 00:36:28', 5, 1, '2023-05-06 00:52:33'),
(2, 'Kem Dưỡng Thể Paula\'s Choice Giảm Viêm Lỗ Chân Lông 210ml Weightless Body Treatment 2% BHA', 'kem-duong-the-paulas-choice-giam-viem-lo-chan-long-210ml-weightless-body-treatment-2-bha', 639000, 0, 2, 0, 2, '2023-05-06__promotions-auto-kem-duong-the-paula-s-choice-2-bha-tay-te-bao-chet-210ml-selixkbibtd1mfjj-img-380x380-64adc6-fit-center.png', 1, 0, 1, 0, NULL, '<p><strong><strong>Paula&#39;s Choice&nbsp;</strong>Weightless Body Treatment With 2%&nbsp;BHA</strong>&nbsp;l&agrave; sản phẩm kem&nbsp;<a href=\"https://hasaki.vn/danh-muc/duong-the-c1897.html\" target=\"_blank\">dưỡng thể</a>&nbsp;tẩy tế b&agrave;o chết to&agrave;n th&acirc;n đến từ&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/paula-s-choice.html\" target=\"_blank\">thương hiệu dược mỹ phẩm Paula&#39;s Choice</a>. C&ocirc;ng thức chứa nồng độ 2% Salicylic Acid (BHA) c&oacute; khả năng cải thiện c&aacute;c vấn đề về mụn, vi&ecirc;m lỗ ch&acirc;n l&ocirc;ng, mẩn đỏ c&aacute;c v&ugrave;ng da tr&ecirc;n cơ thể, mang đến cho bạn l&agrave;n da sạch tho&aacute;ng mịn m&agrave;ng hơn.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, kem dưỡng thể&nbsp;<strong>Paula&#39;s Choice&nbsp;Weightless Body Treatment With 2%&nbsp;BHA</strong>&nbsp;ho&agrave;n to&agrave;n kh&ocirc;ng chứa c&aacute;c chất g&acirc;y b&agrave;o m&ograve;n da, nhẹ nh&agrave;ng l&agrave;m sạch đồng thời duy tr&igrave; độ mềm mịn cần thiết. Sản phẩm c&oacute; độ pH l&yacute; tưởng từ 3.5 &ndash; 3.9, ph&ugrave; hợp với mọi loại da, kể cả da nhạy cảm.</p>\r\n\r\n<p><strong>Kem Dưỡng Thể Giảm Vi&ecirc;m Lỗ Ch&acirc;n L&ocirc;ng, L&agrave;m Mềm Da Paula&#39;s Choice Weightless Body Treatment 2% BHA</strong>&nbsp;hiện đ&atilde; c&oacute; mặt tại&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\">Hasaki</a>&nbsp;với 2 dung t&iacute;ch cho bạn lựa chọn:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>60ml (Trial Size)</strong></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>210ml (Full Size)</strong></p>\r\n	</li>\r\n</ul>', 0, 0, 0, '2023-05-06 00:40:41', 10, 3, NULL),
(3, 'Nước Hoa Nữ Lancôme La Vie Est Belle EDP 75ml La Vie Est Belle Eau de Parfum', 'nuoc-hoa-nu-lancome-la-vie-est-belle-edp-75ml-la-vie-est-belle-eau-de-parfum', 2900000, 0, 9, 0, 5, '2023-05-06__google-shopping-nuoc-hoa-lancome-la-vie-est-belle-eau-de-parfum-75ml-1663663298-img-358x358-843626-fit-center.jpg', 0, 1, 1, 0, NULL, '<p><strong>Nước Hoa Nữ Lanc&ocirc;me La Vie Est Belle EDP&nbsp;</strong>l&agrave; d&ograve;ng sản phẩm nước hoa&nbsp;<a href=\"https://hasaki.vn/danh-muc/nuoc-hoa-nu-eau-de-parfum-c104.html\" target=\"_blank\">eau de parfum cho nữ</a>&nbsp;ra đời trong m&ugrave;a thu năm 2012 bởi&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/lancome.html\" target=\"_blank\"><strong>thương hiệu cao cấp</strong>&nbsp;<strong>Lanc&ocirc;me</strong></a>&nbsp;của Ph&aacute;p. Kh&aacute;i niệm hương thơm n&agrave;y tập trung &yacute; tưởng về vẻ đẹp tự nhi&ecirc;n v&agrave; giản dị, tự do từ c&aacute;c c&ocirc;ng ước v&agrave; chọn lựa tầm nh&igrave;n cho hạnh ph&uacute;c ri&ecirc;ng của bạn. Nước hoa mang một phẩm chất triển vọng về cuộc sống v&agrave; được lấy cảm hứng từ niềm vui trong những điều nhỏ nhặt.</p>', 0, 0, 0, '2023-05-06 00:42:19', 10, 2, '2023-05-06 00:45:45'),
(4, 'Phấn Nước Gilaa Kiềm Dầu Và Dưỡng Da #02 Natural Beige 13g Long Wear DD Cushion #02 Natural Beige', 'phan-nuoc-gilaa-kiem-dau-va-duong-da-02-natural-beige-13g-long-wear-dd-cushion-02-natural-beige', 520000, 0, 4, 0, 0, '2023-05-06__phan-nuoc-gilaa-kiem-dau-va-duong-da-2-natural-beige-13g-10-img-380x380-64adc6-fit-center.jpg', 0, 1, 1, 0, NULL, '<p><strong>Phấn Nước Gilaa Long Wear DD Cushion 13g</strong>&nbsp;l&agrave; d&ograve;ng&nbsp;<a href=\"https://hasaki.vn/danh-muc/phan-nuoc-cushion-c252.html\" target=\"_blank\">phấn nước cushion</a>&nbsp;đến từ&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/gilaa.html\" target=\"_blank\">thương hiệu mỹ phẩm Gilaa</a>&nbsp;của H&agrave;n Quốc, với khả năng che phủ khuyết điểm l&ecirc;n đến 90% chỉ với 1 lần dặm phấn, sản phẩm tạo lớp nền mịn l&igrave;, kiềm dầu v&agrave; bền m&agrave;u suốt cả ng&agrave;y. Đặc biệt, phấn nước kết hợp c&aacute;c th&agrave;nh phần dưỡng da v&agrave; chỉ số chống nắng SPF 50+ PA+++ gi&uacute;p nu&ocirc;i dưỡng v&agrave; bảo vệ da mạnh mẽ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Phấn Nước Gilaa Long Wear DD Cushion 13g\" src=\"https://media.hasaki.vn/wysiwyg/minhchau/phan-nuoc-gilaa-kiem-dau-va-duong-da-13g-1.jpg\" style=\"height:800px; width:800px\" title=\"Phấn Nước Gilaa Long Wear DD Cushion \" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Gilaa Long Wear DD Cushion</strong>&nbsp;với c&ocirc;ng nghệ&nbsp;<strong>DD cushion</strong>&nbsp;ho&agrave;n to&agrave;n mới kết hợp tối ưu giữa c&aacute;c th&agrave;nh phần dưỡng da v&agrave; trang điểm. Sản phẩm với c&aacute;c th&agrave;nh phần ch&iacute;nh như&nbsp;<strong>Nhuỵ hoa nghệ t&acirc;y, Bisabolol, Niacinamide, Madecassoside &amp; Multiex Bsasm, Adenosine.&nbsp;</strong>Phấn nước vừa trang điểm vừa c&oacute; khả năng dưỡng s&aacute;ng, cung cấp độ ẩm, hỗ trợ l&agrave;m dịu, phục hồi s&acirc;u, t&aacute;i tạo da, c&acirc;n bằng lượng dầu thừa v&agrave; ngăn ngừa c&aacute;c dấu hiệu l&atilde;o ho&aacute; da.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Phấn Nước Gilaa Long Wear DD Cushion 13g Hasaki\" src=\"https://media.hasaki.vn/wysiwyg/minhchau/phan-nuoc-gilaa-kiem-dau-va-duong-da-13g-2.jpg\" style=\"height:800px; width:800px\" title=\"Phấn Nước Gilaa Long Wear DD Cushion Hasaki\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hiện sản phẩm&nbsp;<strong>Phấn Nước Gilaa Long Wear DD Cushion 13g</strong>&nbsp;đ&atilde; c&oacute; mặt tại&nbsp;<strong>Hasaki</strong>&nbsp;với c&aacute;c m&agrave;u:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>01 Light Beige:</strong>&nbsp;Ph&ugrave; hợp cho da s&aacute;ng, hoặc muốn trang điểm n&acirc;ng t&ocirc;ng da.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>02 Natural Beige:</strong>&nbsp;Ph&ugrave; hợp cho trung b&igrave;nh đến ngăm hoặc kiểu trang điểm tự nhi&ecirc;n.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Bảng màu Phấn Nước Gilaa Long Wear DD Cushion 13g\" src=\"https://media.hasaki.vn/wysiwyg/minhchau/phan-nuoc-gilaa-kiem-dau-va-duong-da-13g-4.jpg\" style=\"height:800px; width:800px\" title=\"Bảng màu Phấn Nước Gilaa Long Wear DD Cushion \" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Loại da ph&ugrave; hợp:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Sản phẩm ph&ugrave; hợp với mọi loại da.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Giải ph&aacute;p t&igrave;nh trạng da:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Da dễ đổ dầu thừa, b&atilde; nhờn.</p>\r\n	</li>\r\n	<li>\r\n	<p>Da c&oacute; khuyết điểm, th&acirc;m sạm, tối m&agrave;u.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Ưu thế nổi bật:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Hạt phấn si&ecirc;u vi gi&uacute;p tạo lớp nền mỏng nhẹ, tự nhi&ecirc;n, dễ d&agrave;ng b&aacute;m v&agrave;o da gi&uacute;p lớp nền bền m&agrave;u cả ng&agrave;y.</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp nền semi &ndash; matte, kiềm dầu hơn 24 giờ, c&oacute; cảm gi&aacute;c mịn m&aacute;t v&agrave; kh&ocirc;ng c&oacute; m&ugrave;i.</p>\r\n	</li>\r\n	<li>\r\n	<p>Che 5 khuyết điểm da: Da mụn, th&acirc;m mụn, da ửng đỏ, da kh&ocirc;ng đều m&agrave;u, da xỉn m&agrave;u</p>\r\n	</li>\r\n	<li>\r\n	<p>Chỉ số chống nắng SPF 50+ PA+++ hỗ trợ bảo vệ da khỏi c&aacute;c tia UV hiệu quả.</p>\r\n	</li>\r\n	<li>\r\n	<p>Bao b&igrave; c&oacute; t&ocirc;ng m&agrave;u chủ đạo l&agrave; hồng đất v&agrave; v&agrave;ng &aacute;nh kim kết hợp với hiệu ứng phản s&aacute;ng Hologram Shine đem lại cảm gi&aacute;c sang trọng, nữ t&iacute;nh.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Phấn Nước Gilaa Long Wear DD Cushion \" src=\"https://media.hasaki.vn/wysiwyg/minhchau/phan-nuoc-gilaa-kiem-dau-va-duong-da-13g-3.jpg\" style=\"height:800px; width:800px\" title=\"Gilaa Long Wear DD Cushion \" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Bảo quản:</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tr&aacute;nh &aacute;nh nắng trực tiếp, nơi c&oacute; nhiệt độ cao hoặc ẩm ướt.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đậy nắp k&iacute;n sau khi sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>Dung t&iacute;ch:</strong>&nbsp;13g</p>\r\n\r\n<p><strong>Thương hiệu:</strong>&nbsp;Gilaa</p>\r\n\r\n<p><strong>Xuất xứ thương hiệu:</strong>&nbsp;H&agrave;n Quốc</p>\r\n\r\n<p><strong>Sản xuất tại:</strong>&nbsp;H&agrave;n Quốc.</p>\r\n\r\n<p>*Lưu &yacute;: T&aacute;c dụng c&oacute; thể kh&aacute;c nhau tuỳ cơ địa của người d&ugrave;ng</p>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>\r\n\r\n<p><a href=\"javascript:;\">Xem th&ecirc;m nội dung</a></p>', 0, 0, 0, '2023-05-06 00:43:48', 5, 2, '2023-05-06 00:45:43'),
(5, 'Sữa Tắm Hatomugi Dưỡng Ẩm Và Làm Sáng Da 800ml Reihaku Hatomugi Body Soap', 'sua-tam-hatomugi-duong-am-va-lam-sang-da-800ml-reihaku-hatomugi-body-soap', 560000, 0, 3, 0, 0, '2023-05-06__google-shopping-sua-tam-hatomugi-duong-sang-da-800ml-1683085255-img-380x380-64adc6-fit-center.jpg', 0, 1, 1, 0, NULL, '<p><strong>Sữa Tắm Hatomugi&nbsp;<strong>Dưỡng S&aacute;ng Da 800g</strong></strong>&nbsp;đến từ thương hiệu&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/hatomugi.html\" target=\"_blank\">HATOMUGI</a>&nbsp;thường xuy&ecirc;n lọt v&agrave;o top&nbsp;<a href=\"https://hasaki.vn/danh-muc/sua-tam-xa-bong-tam-c26.html\" target=\"_blank\">sữa tắm</a>&nbsp;được y&ecirc;u th&iacute;ch của c&aacute;c tạp ch&iacute; l&agrave;m đẹp h&agrave;ng đầu tại Nhật, với th&agrave;nh phần&nbsp;<strong>chiết xuất hạt &yacute; dĩ</strong>&nbsp;gi&agrave;u dưỡng chất, kh&ocirc;ng chỉ gi&uacute;p l&agrave;m sạch da m&agrave; c&ograve;n&nbsp;dưỡng ẩm cho da, nu&ocirc;i dưỡng cho l&agrave;n da s&aacute;ng mịn từ b&ecirc;n trong.</p>\r\n\r\n<p>Hiện sản phẩm&nbsp;<strong>Sữa Tắm Hatomugi&nbsp;<strong>Moisturizing &amp; Washing</strong>&nbsp;800ml&nbsp;</strong>đ&atilde; c&oacute; mặt tại&nbsp;<a href=\"https://hasaki.vn/\" target=\"_blank\">Hasaki</a>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Sữa Tắm Hatomugi Chiết Xuất Ý Dĩ Làm Sáng Da đã có mặt tại Hasaki\" src=\"https://media.hasaki.vn/wysiwyg/MinhTu/sua-tam-hatomugi-duong-sang-da-800ml-4.jpg\" style=\"height:700px; width:700px\" title=\"Sữa Tắm Hatomugi làm sáng da\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Một l&agrave;n da cơ thể s&aacute;ng mịn m&agrave;ng, mượt m&agrave; v&agrave; rạng rỡ lu&ocirc;n l&agrave; ước mơ của bất k&igrave; c&ocirc; g&aacute;i n&agrave;o. Thế nhưng nếu đ&atilde; thử nhiều sản phẩm m&agrave; da cơ thể vẫn xỉn m&agrave;u, sạm đen th&igrave; phải l&agrave;m sao? Đừng lo v&igrave; đ&atilde; c&oacute;&nbsp;<a href=\"https://hasaki.vn/danh-muc/sua-tam-xa-bong-tam-c26.html\" target=\"_blank\">sữa tắm</a>&nbsp;<strong>HATOMUGI Moisturizing &amp; Washing</strong>&nbsp;đến từ Nhật Bản sẽ gi&uacute;p bạn l&agrave;m sạch da nhẹ nh&agrave;ng, loại bỏ c&aacute;c tế b&agrave;o da sừng h&oacute;a cứng đầu, t&aacute;i tạo da hiệu quả. Đồng thời nu&ocirc;i dưỡng da từ s&acirc;u b&ecirc;n trong v&agrave; cung cấp độ ẩm cần thiết cho da để da lu&ocirc;n mềm ẩm, mịn m&agrave;ng v&agrave; mờ th&acirc;m sạm, đều m&agrave;u hơn.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; sản phẩm sữa tắm được săn l&ugrave;ng kh&ocirc;ng chỉ ở nước sở tại Nhật Bản m&agrave; c&ograve;n lan rộng ra khắp c&aacute;c nước ở khu vực ch&acirc;u &Aacute; nhờ độ dưỡng ẩm tốt v&agrave; khả năng dưỡng s&aacute;ng da hiệu quả.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Sữa Tắm Hatomugi Chiết Xuất Ý Dĩ Làm Sáng Da 800ml Moisturizing &amp; Washing\" src=\"https://media.hasaki.vn/wysiwyg/MinhTu/sua-tam-hatomugi-duong-sang-da-800ml-1_1.jpg\" style=\"height:700px; width:700px\" title=\"Sữa Tắm Hatomugi Chiết Xuất Ý Dĩ Làm Sáng Da \" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"https://hasaki.vn/thuong-hieu/hatomugi.html\" target=\"_blank\">HATOMUGI</a>&nbsp;</strong>l&agrave; một nh&aacute;nh con thuộc thương hiệu mỹ phẩm KUMANO Cosmetics đến từ Nhật Bản. Được th&agrave;nh lập từ năm 1953,&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/kumano.html\" target=\"_blank\">KUMANO&nbsp;</a>l&agrave; thương hiệu mỹ phẩm nổi tiếng v&agrave; được ưa chuộng tại thị trường Nhật Bản nhờ c&aacute;c sản phẩm chiết xuất từ thi&ecirc;n nhi&ecirc;n như: dầu mỡ ngựa, tinh chất hoa tr&agrave;, bơ hạt mỡ, hạt &yacute; dĩ&hellip; an to&agrave;n v&agrave; l&agrave;nh t&iacute;nh cho l&agrave;n da cũng như m&aacute;i t&oacute;c, ph&ugrave; hợp với mọi độ tuổi v&agrave; mọi đối tượng sử dụng.</p>\r\n\r\n<p>C&aacute;c d&ograve;ng sản phẩm của KUMANO&nbsp;hạn chế đến mức tối đa việc d&ugrave;ng c&aacute;c h&oacute;a chất g&acirc;y hại hay c&oacute; khả năng k&iacute;ch ứng da. Tất cả c&aacute;c sản phẩm&nbsp;KUMANO&nbsp;sản xuất v&agrave; ph&acirc;n phối đều th&acirc;n thiện với m&ocirc;i trường, an to&agrave;n với người sử dụng.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<img alt=\"Sữa Tắm Hatomugi Chiết Xuất Ý Dĩ Làm Sáng Da luôn có sẵn tại Hasaki \" src=\"https://media.hasaki.vn/wysiwyg/MinhTu/sua-tam-hatomugi-duong-sang-da-800ml-3.jpg\" style=\"height:653px; width:700px\" title=\"Sữa Tắm Hatomugi Chiết Xuất Ý Dĩ Làm Sáng Da\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Sữa tắm HATOMUGI Moisturizing &amp; Washing</strong>&nbsp;chứa chiết xuất từ &yacute; dĩ &ndash; l&agrave; th&agrave;nh phần phổ biến trong c&aacute;c sản phẩm chăm s&oacute;c da, l&agrave;m đẹp ở Nhật Bản. &Yacute; dĩ rất gi&agrave;u c&aacute;c vitamin nh&oacute;m B, vitamin E, axit b&eacute;o&hellip; c&oacute; khả năng cung cấp độ ẩm cho da ẩm mượt hơn, đồng thời giảm sự h&igrave;nh th&agrave;nh nếp nhăn, l&agrave;m mờ c&aacute;c đốm n&acirc;u, dưỡng da s&aacute;ng v&agrave; đều m&agrave;u. Ngo&agrave;i ra, c&aacute;c enzyme ph&acirc;n giải protein c&oacute; trong chiết xuất hạt &yacute; dĩ c&oacute; thể h&ograve;a tan lớp keratin của da, do đ&oacute; gi&uacute;p l&agrave;m mềm v&agrave; l&agrave;m ẩm da.</p>\r\n\r\n<h2>Loại da ph&ugrave; hợp:</h2>\r\n\r\n<ul>\r\n	<li>Sản phẩm ph&ugrave; hợp cho mọi loại da.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<img alt=\"Sữa Tắm Hatomugi Chiết Xuất Ý Dĩ Làm Sáng Da được yêu thích\" src=\"https://media.hasaki.vn/wysiwyg/MinhTu/sua-tam-hatomugi-duong-sang-da-800ml-2.jpg\" style=\"height:929px; width:700px\" title=\"Sữa Tắm Hatomugi Ý Dĩ Làm Sáng Da\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Ưu thế nổi bật:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Chứa&nbsp;<strong>chiết xuất &yacute; dĩ &amp; vitamin c&aacute;c loại</strong>&nbsp;cung cấp độ ẩm cho da ẩm mượt hơn, đồng thời giảm sự h&igrave;nh th&agrave;nh nếp nhăn, l&agrave;m mờ c&aacute;c đốm n&acirc;u, dưỡng da s&aacute;ng v&agrave; đều m&agrave;u.</p>\r\n	</li>\r\n	<li>\r\n	<p>Ngo&agrave;i ra, c&aacute;c&nbsp;<strong>enzyme ph&acirc;n giải protein</strong>&nbsp;c&oacute; trong chiết xuất hạt &yacute; dĩ c&oacute; thể h&ograve;a tan lớp keratin của da, từ đ&oacute; l&agrave;m mềm v&agrave; l&agrave;m ẩm da.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Sữa tắm nhẹ nh&agrave;ng loại bỏ tạp chất, mồ h&ocirc;i, b&atilde; nhờn&hellip; mang lại l&agrave;n da th&ocirc;ng tho&aacute;ng &amp; sạch sẽ.</p>\r\n	</li>\r\n	<li>\r\n	<p>Dưỡng ẩm cho da mềm mượt, th&iacute;ch hợp với l&agrave;n da kh&ocirc; th&ocirc; r&aacute;p do thường xuy&ecirc;n ngồi điều h&ograve;a, l&agrave;m việc trong m&ocirc;i trường kh&ocirc; lạnh.</p>\r\n	</li>\r\n	<li>\r\n	<p>L&agrave;m dịu v&agrave; phục hồi l&agrave;n da tổn thương do tiếp x&uacute;c với &aacute;nh nắng mặt trời, mang lại cảm gi&aacute;c tươi m&aacute;t v&agrave; thoải m&aacute;i tức th&igrave;.</p>\r\n	</li>\r\n	<li>\r\n	<p>Dưỡng da khỏe mạnh, hỗ trợ bảo vệ da khỏi t&aacute;c hại của tia UV v&agrave; c&aacute;c yếu tố kh&aacute;c từ m&ocirc;i trường b&ecirc;n ngo&agrave;i.</p>\r\n	</li>\r\n	<li>\r\n	<p>M&ugrave;i hương sữa, gạo, &yacute; dĩ nhẹ nh&agrave;ng mang đến cảm gi&aacute;c thư gi&atilde;n khi tắm.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Bảo quản:</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Đậy nắp lại sau khi sử dụng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Bảo quản tr&aacute;nh xa tầm tay trẻ nhỏ.</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng đặt ở những nơi c&oacute; &aacute;nh s&aacute;ng trực tiếp chiếu v&agrave;o, hay những nơi c&oacute; nhiệt độ qu&aacute; cao hoặc qu&aacute; thấp.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Th&ocirc;ng số sản phẩm:&nbsp;</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Dung t&iacute;ch:</strong>&nbsp;800ml</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Thương hiệu:</strong>&nbsp;Hatomugi</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Xuất xứ thương hiệu:</strong>&nbsp;Nhật Bản</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sản xuất tại:</strong>&nbsp;Nhật Bản.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>L&agrave;m sao để ph&acirc;n biệt h&agrave;ng c&oacute; trộn hay kh&ocirc;ng ?</p>\r\n\r\n<ul>\r\n	<li>H&agrave;ng trộn sẽ kh&ocirc;ng thể&nbsp;<strong>xuất ho&aacute; đơn đỏ (VAT) 100%</strong>&nbsp;được do c&oacute; h&agrave;ng kh&ocirc;ng nguồn gốc trong đ&oacute;.</li>\r\n	<li>Tại Hasaki, 100% h&agrave;ng b&aacute;n ra sẽ được&nbsp;<strong>xuất ho&aacute; đơn đỏ</strong>&nbsp;cho d&ugrave; kh&aacute;ch h&agrave;ng c&oacute; lấy hay kh&ocirc;ng. Nếu c&oacute; nhu cầu lấy ho&aacute; đơn đỏ, qu&yacute; kh&aacute;ch vui l&ograve;ng lấy trước 22h c&ugrave;ng ng&agrave;y. V&igrave; sau 22h, hệ thống Hasaki sẽ tự động xuất hết ho&aacute; đơn cho những h&agrave;ng ho&aacute; m&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng đăng k&iacute; lấy ho&aacute; đơn.</li>\r\n	<li>Do&nbsp;<strong>xuất được ho&aacute; đơn đỏ 100%</strong>&nbsp;n&ecirc;n đảm bảo 100% h&agrave;ng tại Hasaki l&agrave; h&agrave;ng ch&iacute;nh h&atilde;ng c&oacute; nguồn gốc r&otilde; r&agrave;ng.</li>\r\n</ul>\r\n\r\n<p><a href=\"javascript:;\">Xem th&ecirc;m nội dung</a></p>', 0, 0, 0, '2023-05-06 00:45:35', 10, 2, '2023-05-06 00:45:46'),
(6, 'Product 10', 'product-10', 295000, 0, 2, 0, 2, '2023-05-06__google-shopping-kem-chong-nang-innisfree-nang-tong-kiem-dau-50ml-1682496278-img-380x380-64adc6-fit-center.jpg', 0, 0, 1, 0, NULL, '<p>Mỹ Phẩm</p>', 0, 0, 0, '2023-05-06 00:55:01', 5, 4, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(1, 1, 3),
(2, 2, 2),
(3, 2, 3),
(4, 3, 3),
(5, 4, 2),
(6, 5, 3),
(7, 6, 2),
(8, 6, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_keywords`
--

INSERT INTO `products_keywords` (`id`, `pk_product_id`, `pk_keyword_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 5, 2),
(6, 6, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(255) DEFAULT NULL,
  `pi_slug` varchar(255) DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT 0,
  `r_product_id` int(11) NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(255) DEFAULT NULL,
  `sd_link` varchar(255) DEFAULT NULL,
  `sd_image` varchar(255) DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'Slide 1', 'https://www.google.com/', '2023-05-06__1683285933homegia846x250.jpg', 1, 1, 0, '2023-05-06 00:31:57', NULL),
(2, 'Slide 2', 'https://www.google.com/', '2023-05-06__1683087936banner-mun-149k.jpg', 1, 1, 0, '2023-05-06 00:32:07', NULL),
(3, 'Slide 3', 'https://www.google.com/', '2023-05-06__1683282455home-184.jpg', 1, 1, 0, '2023-05-06 00:32:17', NULL),
(4, 'Banner  4', 'https://www.google.com/', '2023-05-06__tai-xuong.jpg', 1, 1, 0, '2023-05-06 00:57:46', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(255) DEFAULT NULL,
  `s_slug` varchar(255) DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT 0,
  `s_md5` varchar(255) DEFAULT NULL,
  `s_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(255) DEFAULT NULL,
  `tst_email` varchar(255) DEFAULT NULL,
  `tst_phone` varchar(255) DEFAULT NULL,
  `tst_address` varchar(255) DEFAULT NULL,
  `tst_note` varchar(255) DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `tst_code` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `tst_code`, `created_at`, `updated_at`) VALUES
(1, 1, 534000, 'Nguyễn Thành Trung', 'thanhtrung@gmail.com', '0999999999', '55A Điện Biên Phủ TP Hồ Chí Minh', 'OK', 3, 1, '6TsZU4p9yZGfG1p', '2023-05-06 00:52:33', '2023-05-06 00:57:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `t_name` varchar(255) DEFAULT NULL,
  `t_slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `types`
--

INSERT INTO `types` (`id`, `t_name`, `t_slug`, `created_at`, `updated_at`) VALUES
(1, 'Dung Tích', 'dung-tich', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `log_login` text DEFAULT NULL,
  `count_comment` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Thành Trung', 'thanhtrung@gmail.com', NULL, '$2y$10$Qcqep01KsOf5UkVr5aw0xub54FJGNcuN0MkPwn.5BgarQEZ6PnBpi', '0999999999', '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"112.0.0.0\",\"time\":\"2023-05-06T07:50:49.247028Z\"}]', 1, 'Điện Biên Phủ HCM', NULL, NULL, '2023-05-06 00:50:36', '2023-05-06 00:52:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT 0,
  `uf_user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_type_id_index` (`atb_type_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `discount_code`
--
ALTER TABLE `discount_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discount_code_d_code_unique` (`d_code`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `producer_pdr_slug_unique` (`pdr_slug`),
  ADD UNIQUE KEY `producer_pdr_email_unique` (`pdr_email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`);

--
-- Chỉ mục cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Chỉ mục cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`);

--
-- Chỉ mục cho bảng `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `types_t_name_unique` (`t_name`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `discount_code`
--
ALTER TABLE `discount_code`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `producer`
--
ALTER TABLE `producer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
