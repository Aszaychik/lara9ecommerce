-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for aszshop
DROP DATABASE IF EXISTS `aszshop`;
CREATE DATABASE IF NOT EXISTS `aszshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `aszshop`;

-- Dumping structure for table aszshop.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table aszshop.categories: ~9 rows (approximately)
DELETE FROM `categories`;
INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`, `image`, `is_popular`) VALUES
	(9, 'Console', 'console', '2022-12-16 03:52:54', '2022-12-18 16:51:01', '1671407461.jpg', 1),
	(13, 'CPU ', 'cpu', '2022-12-20 01:50:53', '2022-12-20 01:50:53', '1671526253.jpg', 1),
	(14, 'motherboard', 'motherboard', '2022-12-20 06:37:16', '2022-12-20 06:37:16', '1671543436.jpg', 1),
	(15, 'mouse & keyboard', 'mouse-keyboard', '2022-12-20 06:38:19', '2022-12-21 08:11:50', '1671543499.jpg', 1),
	(16, 'memory', 'memory', '2022-12-20 06:39:23', '2022-12-20 06:40:40', '1671543563.jpg', 1),
	(17, 'storage', 'storage', '2022-12-20 06:40:17', '2022-12-21 08:12:20', '1671543617.jpg', 1),
	(18, 'accessories', 'accessories', '2022-12-20 06:41:44', '2022-12-20 06:41:44', '1671543704.jpg', 0),
	(19, 'monitor', 'monitor', '2022-12-20 06:49:09', '2022-12-20 06:49:09', '1671544149.jpg', 1),
	(20, 'vga', 'vga', '2022-12-20 06:50:22', '2022-12-21 08:12:04', '1671544222.jpg', 1);

-- Dumping structure for table aszshop.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table aszshop.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;

-- Dumping structure for table aszshop.home_sliders
DROP TABLE IF EXISTS `home_sliders`;
CREATE TABLE IF NOT EXISTS `home_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `top_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table aszshop.home_sliders: ~4 rows (approximately)
DELETE FROM `home_sliders`;
INSERT INTO `home_sliders` (`id`, `top_title`, `title`, `sub_title`, `offer`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
	(4, 'MONITOR', 'MSI Optix G27C4 Curved Gaming Monitor 165Hz 27 inch', 'monitor gaming', 'gaming', 'http://127.0.0.1:8000/product/msi-optix-g27c4-curved-gaming-monitor-165hz-27-inch', '1671620115.jpg', 1, '2022-12-21 03:55:15', '2022-12-21 08:08:58'),
	(5, 'VGA CARD', 'VGA Colorful iGame Geforce RTX 3060 Ultra White OC-V 12GB GDDR6', 'VGA CARD RTX', 'VGA', 'http://127.0.0.1:8000/product/vga-colorful-igame-geforce-rtx-3060-ultra-white-oc-v-12gb-gddr6', '1671620597.jpg', 1, '2022-12-21 04:03:17', '2022-12-21 08:09:11'),
	(6, 'MOTHERBOARD', 'Motherboard Gigabyte X570 Aorus Extreme - AMD X570 DDR4 EATX Wifi6', 'GIGABYTE', 'motherboard', 'http://127.0.0.1:8000/product/motherboard-gigabyte-x570-aorus-extreme-amd-x570-ddr4-eatx-wifi6', '1671620711.jpg', 1, '2022-12-21 04:05:11', '2022-12-21 08:09:28'),
	(7, 'storege', 'Seagate Ironwolf 10TB  NAS HDD 3 years warranty - Air', 'storege seagate', 'storage', 'http://127.0.0.1:8000/product/seagate-ironwolf-10tb-nas-hdd-3-years-warranty-air', '1671620783.jpg', 1, '2022-12-21 04:06:23', '2022-12-21 08:09:44');

-- Dumping structure for table aszshop.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table aszshop.migrations: ~10 rows (approximately)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2022_12_15_103504_create_categories_table', 2),
	(6, '2022_12_15_103521_create_products_table', 2),
	(9, '2022_12_18_202516_create_home_sliders_table', 3),
	(10, '2022_12_18_220904_rename_sku_in_products_table', 4),
	(11, '2022_12_18_231610_add_image_and_is_popular_column_to_categories_table', 5),
	(12, '2022_12_19_020930_update_regular_price_and_sale_price_column_to_products_table', 6);

-- Dumping structure for table aszshop.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table aszshop.password_resets: ~1 rows (approximately)
DELETE FROM `password_resets`;
INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
	('aszaychik@gmail.com', '$2y$10$UQLQ5p/UEGdRPJXRxCHG2ekTGHAXegk/LSlH0CtuP991twzEoAllm', '2022-12-19 21:15:52');

-- Dumping structure for table aszshop.personal_access_tokens
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table aszshop.personal_access_tokens: ~0 rows (approximately)
DELETE FROM `personal_access_tokens`;

-- Dumping structure for table aszshop.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `regular_price` decimal(16,2) NOT NULL,
  `sale_price` decimal(16,2) DEFAULT NULL,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `quantity` int unsigned NOT NULL DEFAULT '10',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_name_unique` (`name`),
  UNIQUE KEY `products_slug_unique` (`slug`),
  KEY `products_category_id_foreign` (`category_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table aszshop.products: ~17 rows (approximately)
DELETE FROM `products`;
INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `sku`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
	(20, 'Nintendo Switch GameDev', 'nintendo-switch-gamedev', 'test', 'testtest', 3600000.00, 3000000.00, 'NSGD00', 'instock', 1, 1, '1671402595.png', NULL, 9, '2022-12-18 15:29:55', '2022-12-18 19:12:20'),
	(21, 'Logitech MX Keys Mini Keyboard Wireless Bluetooth', 'logitech-mx-keys-mini-keyboard-wireless-bluetooth', 'keyboard logitech', 'Spesifikasi:\nHeight: 5.19 in (131.95 mm)\nWidth: 11.65 in (295.99 mm)\nDepth: 0.82 in (20.97 mm)\nWeight: 17.86 oz (506.4 g)\nBluetooth\n•Required: Bluetooth Low Energy\n•Windows 10 or later\n•macOS 10.15 or later\n•Chrome OS™\n•Linux®\n•iOS 13.4 or later 7D\n•iPadOS 14 or later 8\n•Android™ 5.0 or later\n', 1499000.00, 1499000.00, 'logitech', 'instock', 1, 1, '1671585535.jpg', NULL, 15, '2022-12-20 18:18:55', '2022-12-20 18:18:55'),
	(22, 'Logitech MX Anywhere 3 Mouse Wireless Performance Compact', 'logitech-mx-anywhere-3-mouse-wireless-performance-compact', 'mouse keyboard', 'SPESIFIKASI TEKNIS\nTeknologi sensor\nTeknologi sensor: Darkfield high precision\nNilai nominal: 1000 dpi\nDPI (Nilai minimal dan maksimal): 200-4000 hingga 50 dpi (penambahannya dapat diatur agar kelipatan 50 dpi)\nTombol\nTombol: 6 tombol (Klik kiri/kanan, Maju/Mundur, Berganti mode wheel, Klik tengah)\nScroll Wheel: Ya, dengan auto-shift\nScroll horizontal: Ya, dengan menahan tombol samping saat memutar wheel\nJarak pengoperasian wireless: 10 m\n\nBaterai\nBaterai: baterai Li-Po (500 mAh) yang dapat diisi ulang\nBaterai: hingga maksimal 70 hari pada sekali pengisian penuh. Dapatkan waktu penggunaan selama tiga jam dari pengisian cepat satu menit\nSoftware opsional: Logitech Options dan Logitech Flow', 1119000.00, 1119000.00, 'logitech', 'instock', 0, 100, '1671585992.jpg', NULL, 15, '2022-12-20 18:26:32', '2022-12-20 18:26:32'),
	(23, 'MSI Optix G27C4 Curved Gaming Monitor 165Hz 27 inch', 'msi-optix-g27c4-curved-gaming-monitor-165hz-27-inch', 'monitor 27 inch IPS msi', '27" (69cm)\n1920 x 1080 (FHD)\n165Hz\n1ms\nVA\n250 nits\n178° (H) / 178° (V)\n16:9\n1500R\n3000:1\n597.888(H) x 336.312(V)\n0.3114(H) x 0.3114(V)\nAnti-glare\n16.7M\n90% / 115%\n1x DP (1.2a)\n2x HDMI (1.4b)\n1x Earphone out\nYes\n100 x 100 mm\n5-way OSD navigation joystick\nExternal Adaptor 20V 2.25A\n100~240V, 50~60Hz\n100000000:1\n30W\n53.28 to 183.15KHz (H)\n48 to 165Hz (V)\n-5° ~ 20°\n611.5 x 457.9 x 225.4 mm / 24.08 x 18.23 x 8.87 inch\n5.4kg / 9.0kg\n11.9lbs / 19.84lbs\nYes\nFHD @ 120Hz\nPC, Mac, PS5™, PS4™, Xbox, Mobile, Notebook\n* All trademarks and the registered trademarks are the property of their respective owners.\nDisplay Port: 1920 x 1080 (Up to 165Hz)\nHDMI: 1920 x 1080 (Up to 144Hz)', 3249000.00, 3249000.00, 'monitor msi', 'instock', 1, 100, '1671586644.jpg', NULL, 19, '2022-12-20 18:37:24', '2022-12-20 18:37:24'),
	(24, 'LED Monitor Gaming LENOVO G27-20 27" 144Hz FHD HDMI DP', 'led-monitor-gaming-lenovo-g27-20-27-144hz-fhd-hdmi-dp', 'LED Monitor Gaming LENOVO G27-20 27" 144Hz FHD HDMI DP', 'LED Monitor Gaming LENOVO G27-20 27" 144Hz FHD HDMI DP (66C2GAC1WW)\n\nBrand Type : G27-20\nPanel Size(Inch) : 27\nPanel Type : IPS\nPanel Resolution : 1920 x 1080\nAspect Ratio :16:9\n\nBrightness (cd/㎡) :400\nRefresh Rate(hz) : 144\nResponse Time (ms) :1ms\nSync : FreeSync + G-Sync Compatible\nConnectivity :\n1 x HDMI 1.4\n1 x DP 1.2\n\nAudio port : 1x 3.5mm Audio Out\nBuild in Speaker : No\nVESA mounting (mm) : 100x100mm\nErgonomic Stand : Yes\nUSB Ports : -\n\nPanel bit : 8 bits\nHDR : Yes\nNTSC (%) : -\nSRGB (%) :99\nAdobe RGB : -\nDCI-P3 (%) : -\n\nPower Cons (watt) : 22\nProduct Weight (nw/kg) : 5.94\nBox Dimension (cm) : 17 x 50 x 88\nVolume Weight (kg) : 14', 3375000.00, 3375000.00, 'monitor lenovo', 'instock', 0, 100, '1671587302.jpg', NULL, 19, '2022-12-20 18:48:22', '2022-12-20 18:48:22'),
	(25, 'Intel Core i9 13900K 24 Core 32 Threads 5.80GHz Raptor Lake - LGA1700', 'intel-core-i9-13900k-24-core-32-threads-580ghz-raptor-lake-lga1700', 'cpu intel terbaru', 'CPU Specifications\nTotal Cores : 24\n# of Performance-cores : 8\n# of Efficient-cores : 16\nTotal Threads : 32\nMax Turbo Frequency : 5.80 GHz\nIntel® Thermal Velocity Boost Frequency : 5.80 GHz\nIntel® Turbo Boost Max Technology 3.0 Frequency : 5.70 GHz\nPerformance-core Max Turbo Frequency : 5.40 GHz\nEfficient-core Max Turbo Frequency : 4.30 GHz\nPerformance-core Base Frequency : 3.00 GHz\nEfficient-core Base Frequency : 2.20 GHz\nCache : 36 MB Intel® Smart Cache\nTotal L2 Cache : 32 MB\nProcessor Base Power : 125 W\nMaximum Turbo Power : 253 W\n\nMemory Specifications :\nMax Memory Size (dependent on memory type) : 128 GB\nMemory Types :\nUp to DDR5 5600 MT/s\nUp to DDR4 3200 MT/s\nMax # of Memory Channels : 2\nMax Memory Bandwidth : 89.6 GB/s\n\nProcessor Graphics\nProcessor Graphics : Intel® UHD Graphics 770\nGraphics Base Frequency : 300 MHz\nGraphics Max Dynamic Frequency : 1.65 GHz\nGraphics Output : eDP 1.4b, DP 1.4a, HDMI 2.1\nExecution Units : 32\nMax Resolution (HDMI) : 4096 x 2160 @ 60Hz\nMax Resolution (DP)‡ :7680 x 4320 @ 60Hz\nMax Resolution (eDP - Integrated Flat Panel) :5120 x 3200 @ 120Hz\nDirectX* Support : 12\nOpenGL* Support : 4.5\nOpenCL* Support : 3.0\nMulti-Format Codec Engines : 2\nIntel® Quick Sync Video : Yes\nIntel® Clear Video HD Technology : Yes\n# of Displays Supported : 4\nDevice : ID0xA780\n\nExpansion Options\nDirect Media Interface (DMI) Revision : 4.0\nMax # of DMI Lanes : 8\nScalability : 1S Only\nPCI Express Revision : 5.0 and 4.0\nPCI Express Configurations : Up to 1x16+4, 2x8+4\nMax # of PCI Express Lanes : 20', 10999000.00, 10999000.00, 'cpu intel', 'instock', 0, 100, '1671587535.jpg', NULL, 13, '2022-12-20 18:52:15', '2022-12-20 18:52:15'),
	(26, 'AMD CPU Processor RYZEN 9 7950X', 'amd-cpu-processor-ryzen-9-7950x', 'AMD CPU Processor RYZEN 9 7950X', 'Spesifikasi :\nGeneral Specifications\nPlatform Desktop\nMarket Segment Enthusiast Desktop\nProduct Family AMD Ryzen™ Processors\nProduct Line AMD Ryzen™ 9 Desktop Processors\nAMD PRO Technologies No\nConsumer Use Yes\nRegional Availability Global\nFormer Codename "Raphael AM5"\nArchitecture "Zen 4"\n# of CPU Cores 16\nMultithreading (SMT) Yes\n# of Threads 32\nMax. Boost Clock Up to 5.7GHz\nBase Clock 4.5GHz\nL1 Cache 1MB\nL2 Cache 16MB\nL3 Cache 64MB\nDefault TDP 170W\nProcessor Technology for CPU Cores TSMC 5nm FinFET\nProcessor Technology for I/O Die TSMC 6nm FinFET\nCPU Compute Die (CCD) Size 71mm²\nI/O Die (IOD) Size 122mm²\nPackage Die Count 3\nUnlocked for Overclocking Yes\nAMD EXPO™ Memory Overclocking Technology Yes\nPrecision Boost Overdrive Yes\nCurve Optimizer Voltage Offsets Yes\nAMD Ryzen™ Master Support Yes\nCPU Socket AM5\nSupporting Chipsets : X670E X670 B650E B650\nCPU Boost Technology Precision Boost 2\nInstruction Set x86-64\nSupported Extensions AES, AMD-V, AVX, AVX2, AVX512, FMA3, MMX(+), SHA, SSE, SSE2, SSE3, SSE4.1, SSE4.2, SSE4A, SSSE3, x86-64\nThermal Solution (PIB) Not included\nMax. Operating Temperature (Tjmax) 95°C\nLaunch Date 9/27/2022\n*OS Support :\nWindows 11 - 64-Bit Edition\nWindows 10 - 64-Bit Edition\nRHEL x86 64-Bit\nUbuntu x86 64-Bit\n*Operating System (OS) support will vary by manufacturer.', 9399000.00, 9399000.00, 'cpu ryzen', 'instock', 1, 100, '1671587934.jpg', NULL, 13, '2022-12-20 18:58:54', '2022-12-21 08:11:07'),
	(27, 'CORSAIR VENGEANCE RGB 32GB (2x16GB) DDR5 DRAM 5200MHz C40', 'corsair-vengeance-rgb-32gb-2x16gb-ddr5-dram-5200mhz-c40', 'Memory Series VENGEANCE RGB DDR5', 'Fan Included No\nMemory Series VENGEANCE RGB DDR5\nMemory Type DDR5\nPMIC Type Overclock PMIC\nMemory Size 32GB (2 x 16GB)\nTested Latency 40-40-40-77\nTested Voltage 1.25V\nTested Speed 5200\n\nMemory Color BLACK\nLED Lighting RGB\nSingle Zone / Multi-Zone Lighting Dynamic Multi-Zone\nSPD Latency 40-40-40-77\nSPD Voltage 1.1V\nSpeed Rating PC5-41600 (DDR5-5200)\nCompatibility Intel 600 Series\nHeat Spreader Aluminum\nPackage Memory Format DIMM\nPerformance Profile XMP 3.0\nPackage Memory Pin 288', 3039000.00, 3039000.00, 'memory ram VENGEANCE RGB DDR5', 'instock', 0, 100, '1671588291.jpg', NULL, 16, '2022-12-20 19:04:51', '2022-12-20 19:04:51'),
	(28, 'Memory Kingston Fury Beast RGB PC41600 5200Mhz DDR5 32GB', 'memory-kingston-fury-beast-rgb-pc41600-5200mhz-ddr5-32gb', 'Memory Kingston Fury Beast RGB PC41600 5200Mhz DDR5 32GB - 2x16GB Ram', 'Features:\n-Enhanced RGB lighting with new heat spreader design1\n-Patented Kingston FURY Infrared Sync Technology™\n-Intel® XMP 3.0-Ready and Certified\n-Qualified by the world’s leading motherboard manufacturers3\n-Improved stability for overclocking\n-Plug N Play at 4800MT/s2\n\nSpecification:\nBrand : Kingston\nMemory : 32GB (16GBx2)\nSpeed : 5200MHz (PC5-41600)\nError Check Non-ECC\nModel/Series/Type : Fury Beast\nModule Type : DIMM\nCAS Latency : CL40\nForm Factor : DDR5', 2880000.00, 2880000.00, 'memory kingston', 'instock', 0, 100, '1671588585.jpg', NULL, 16, '2022-12-20 19:09:45', '2022-12-20 19:09:45'),
	(29, 'Asus ROG Maximus Z790 Hero - ATX Motherboard LGA 1700 DDR5', 'asus-rog-maximus-z790-hero-atx-motherboard-lga-1700-ddr5', 'Asus ROG Maximus Z790 Hero - ATX Motherboard LGA 1700 DDR5', 'CPU\nIntel® Socket LGA1700 for 13th Gen Intel® Core™ Processors & 12th Gen Intel® Core™, Pentium® Gold and Celeron® Processors*\nSupports Intel® Turbo Boost Technology 2.0 and Intel® Turbo Boost Max Technology 3.0**\n\nMemory\n4 x DIMM, Max. 128GB, DDR5 7800+(OC)/7600(OC)/7400(OC)/7200(OC)/7000(OC)/6800(OC)/6600(OC)/6400(OC)/ 6200(OC)/ 6000(OC)/ 5800(OC)/ 5600/ 5400/ 5200/ 5000/ 4800MHz Non-ECC, Un-buffered Memory*\n\nGraphics\n1 x HDMI® port**\n2 x Intel® Thunderbolt™ 4 ports (USB Type-C®) support DisplayPort 1.4 and Thunderbolt™ video outputs***\n\nExpansion Slots\nIntel® 13th & 12th Gen Processors*\n2 x PCIe 5.0 x16 slots (support x16 or x8/x8 modes)**\nIntel® Z790 Chipset\n1 x PCIe 4.0 x16 slot (supports x4, x4/x4 modes)\n\nStorage\nTotal supports 5 x M.2 slots and 6 x SATA 6Gb/s ports*\nIntel® 13th & 12th Gen Processors*\nM.2_1 slot (Key M), type 2242/2260/2280/22110 (supports PCIe 4.0 x4 mode.)\nHyper M.2_1 slot (Key M) via ROG Hyper M.2 card, type 2242/2260/2280/22110 (supports PCIe 5.0 x4 mode.)**\nIntel® Z790 Chipset**\nM.2_2 slot (Key M), type 2242/2260/2280 (supports PCIe 4.0 x4 mode)\nM.2_3 slot (Key M), type 2242/2260/2280 (supports PCIe 4.0 x4 & SATA modes)\nHyper M.2_1 slot (Key M) via ROG Hyper M.2 card, type 2242/2260/2280/22110 (suppports PCIe 4.0 x4 mode)**\nHyper M.2_2 slot (Key M) via ROG Hyper M.2 card, type 2242/2260/2280/22110 (suppports PCIe 4.0 x4 mode)***\n6 x SATA 6Gb/s ports****\n\nWireless & Bluetooth\nWi-Fi 6E\n2x2 Wi-Fi 6E (802.11 a/b/g/n/ac/ax)\nSupports 2.4/5/6GHz frequency band*\nBluetooth® v5.3**\n\nForm Factor\nATX Form Factor\n12 inch x 9.6 inch ( 30.5 cm x 24.4 cm )', 9399000.00, 9399000.00, 'motherboard', 'instock', 0, 100, '1671588878.jpg', NULL, 14, '2022-12-20 19:14:38', '2022-12-20 19:28:14'),
	(30, 'Motherboard Gigabyte X570 Aorus Extreme - AMD X570 DDR4 EATX Wifi6', 'motherboard-gigabyte-x570-aorus-extreme-amd-x570-ddr4-eatx-wifi6', 'Motherboard Gigabyte X570 Aorus Extreme - AMD X570 DDR4 EATX Wifi6', 'AMD X570 AORUS Motherboard with Direct 16 Phases Infineon Digital VRM, Fins-Array Heatsink, NanoCarbon Baseplate, Triple PCIe 4.0 M.2 with Thermal Guards, Intel® WiFi 6 802.11ax, ESS SABRE HiFi 9218, AQUANTIA® 10GbE LAN+1GbE LAN, RGB FAN COMMANDER, RGB Fusion 2.0\n\nSupports AMD 3rd Gen Ryzen™/ 2nd Gen Ryzen™/ New Gen Ryzen™ with Radeon™ Graphics/ 2nd Gen Ryzen™ with Radeon™ Vega Graphics/ 1st Gen Ryzen™ with Radeon™ Vega Graphics Processors\nDual Channel ECC/ Non-ECC Unbuffered DDR4, 4 DIMMs\nDirect 16 Phases Infineon Digital VRM Solution with 70A Power Stage\nThermal Reactive Armor Design with Fins-Array Heatsink, Direct Touch Heatpipe and NanoCarbon Baseplate\nTriple Ultra-Fast NVMe PCIe 4.0/3.0 x4 M.2 with Triple Thermal Guards\nOnboard Intel® WiFi 6 802.11ax 2T2R & BT 5 with 2X AORUS Antenna\nRear 130dB SNR AMP-UP Audio with ALC1220-VB & ESS SABRE 9218 DAC with WIMA Audio Capacitors\nAQUANTIA® 10GbE BASE-T LAN + Intel® Gigabit LAN with cFosSpeed\nExclusive RGB FAN COMMANDER for Professional Casemoders\nUSB TurboCharger for Mobile Device Fast Charge Support\nRGB FUSION with Multi-Zone Addressable LED Light Show Design, Support Addressable LED & RGB LED Strips\nSmart Fan 5 Features Multiple Temperature Sensors , Hybrid Fan Headers with FAN STOP and Noise Detection\nFront & Rear USB 3.2 Gen 2 Type-C™ Headers\nQ-Flash Plus Update BIOS Without Installing CPU, Memory and Graphics Card', 9270000.00, 9270000.00, 'gigabyt', 'instock', 0, 1000, '1671589105.jpg', NULL, 14, '2022-12-20 19:18:25', '2022-12-20 19:31:30'),
	(31, 'VGA Colorful iGame Geforce RTX 3060 Ultra White OC-V 12GB GDDR6', 'vga-colorful-igame-geforce-rtx-3060-ultra-white-oc-v-12gb-gddr6', 'VGA Colorful iGame Geforce RTX 3060 Ultra White OC-V 12GB GDDR6', 'Chip Series : GeForce® RTX 3060\nProduct Series : iGame Series\nGPU Code Name : GA106\nManufacturing Process : 8nm\nCUDA Cores : 3584\nCore Clock : Base:1320Mhz; Boost:1777Mhz\nOne-Key OC : Base:1320Mhz; Boost:1822Mhz\nMemory Clock : 15Gbps\nMemory Size : 12GB\nMemory Bus Width : 192bit\nMemory Type : GDDR6\nMemory Bandwidth : 360GB/s\nPower Connector : 2*8Pin\nPower Supply : 7+2\nTDP : 200W\nDisplay Ports : 3DP+HDMI\nFans Type : FAN\nHeat Pipe Number/Spec : 2*Φ6+2*Φ8\nAuto Stop Technology : Y\nPower Suggest : 550W\nDirectX : DirectX 12 Ultimate/OpenGL4.6\nNV technology Support : NVIDIA DLSS, NVIDIA G-SYNC, 2nd Gen Ray Tracing Cores\nSlot Number : over 2 slot\nProduct Size : 310*131.5*56mm\nProduct Weight : 1.6KG(N.W)\nAccessories : Warranty Card,Manual', 6090000.00, 6090000.00, 'rtx 3060', 'instock', 0, 100, '1671589664.jpg', NULL, 20, '2022-12-20 19:27:44', '2022-12-20 19:27:44'),
	(32, 'MSI RADEON 6700 XT MECH 2X 12G OC | Radeon RX 6700 XT 12GB GDDR6', 'msi-radeon-6700-xt-mech-2x-12g-oc-radeon-rx-6700-xt-12gb-gddr6', 'MSI RADEON 6700 XT MECH 2X 12G OC | Radeon RX 6700 XT 12GB GDDR6', 'Graphics Engine\n- AMD Radeon RX 6700 XT\nBus Standard\n- PCI® Express x16 Gen4\nDirectX\n- 12\nOpenGL\n- 4.6\nMemory\n- GDDR6 12GB\nEngine Clock\n- Boost Clock: Up to Up to 2620 MHz\n- Game Clock: Up to 2474 MHz\nStream Processors\n- 2560\nCompute Units\n- 40\nMemory Clock\n- 16.0 Gbps\nMemory Bus\n- 192-bit\nResolution\n- Digital Max Resolution: 8K HDR 60Hz\nInterface\n- 1 x HDMI™ 2.1 VRR\n- 3 x DisplayPort 1.4™ with DSC\nHDCP\n- Yes\nMulti-view\n- 4\nRecommended PSU\n- 650W\nPower Connector\n- 2 x 8-pin\nDimensions\n- 247 x 131 x 51 mm', 5511000.00, 5511000.00, 'rx 6700 xt', 'instock', 1, 100, '1671589827.jpg', NULL, 20, '2022-12-20 19:30:27', '2022-12-21 08:11:25'),
	(33, 'JBL Quantum 610 Wireless Gaming Headsets', 'jbl-quantum-610-wireless-gaming-headsets', 'JBL Quantum 610 Wireless Gaming Headsets', 'Driver sensitivity at 1kHz/1mW (dB)\n100\nDynamic frequency response range (Hz)\n20 Hz - 20 kHz\nImpedance (ohms)\n32\nRespons Frekuensi Pasif\n20 Hz – 20 kHz\nRespons Frekuensi Aktif\n20 Hz – 20 kHz\n\nWeight (g)\n357\nWeight (oz)\n12.6\nPanjang Kabel Headphone (m)\n1.5\nPanjang Kabel Headphone (ft)\n4.9\nTinggi (in)\n3.8\nLebar (in)\n3.4\nLebar Internal (in)\n2.4\nTinggi Internal (in)\n1.8\nKedalaman (in)\n1.1\nTinggi (cm)\n9.7\nLebar (cm)\n8.7\nLebar Internal (cm)\n6.2\nTinggi Internal (cm)\n4.5\nKedalaman (cm)\n2.7', 2999000.00, 2999000.00, 'jbl headsets', 'instock', 1, 100, '1671590263.jpg', NULL, 18, '2022-12-20 19:37:43', '2022-12-20 19:37:43'),
	(34, 'SSD WD Black SN850 2TB NVMe', 'ssd-wd-black-sn850-2tb-nvme', 'SSD WD Black SN850 2TB NVMe', 'Capacity : 2 TB\nInterface : PCIe Gen4 x4\nDimensi (L x W x H) : 80mm x 22mm x 2.38mm\nSequential Read Performance : 7000MB/s\nSequential Write Performance : 5100MB/s\nENDURANCE1 (TBW) : 2TB: 1,200\nGaransi Resmi : 5 Tahun', 5020000.00, 5020000.00, 'ssd', 'instock', 1, 100, '1671590733.jpg', NULL, 17, '2022-12-20 19:45:33', '2022-12-20 19:45:33'),
	(35, 'Seagate Ironwolf 10TB / NAS HDD / 3 years warranty - Air', 'seagate-ironwolf-10tb-nas-hdd-3-years-warranty-air', 'Seagate Ironwolf 10TB / NAS HDD / 3 years warranty - Air', 'Spec :\nCapacity : 10TB\nMode: ST10000VN000\nRpm : 7200rpm\ncache : 256MB\nGaransi : 3 tahun\nInterface SATA III, 6Gb/s\nForm Factor : 3.5 inch\nBay : 1 to 16 bay per NAS\nData Rate : 210 MB/s\nWorkload : up to 180TB /year\nRV Sensor : Ada\nOperating Power : 7.8W\nTechnology : Helium based, jadi lebih dingin (tidak cepat panas) dan hemat daya / Air (NEW)', 4499000.00, 4499000.00, 'hdd', 'instock', 1, 100, '1671590847.jpg', NULL, 17, '2022-12-20 19:47:27', '2022-12-20 19:47:27'),
	(36, 'AUKEY KM-P2 Mousepad Gaming Mouse Keyboard Desk Mat Pad PD Laptop', 'aukey-km-p2-mousepad-gaming-mouse-keyboard-desk-mat-pad-pd-laptop', 'AUKEY KM-P2 Mousepad Gaming Mouse Keyboard Desk Mat Pad PD Laptop', 'Model : KM-P2\nMaterial : Natural rubber, Cloth\nDimensi : 800 x 300 x 4mm', 70000.00, 70000.00, 'mousepad', 'instock', 0, 100, '1671591169.png', NULL, 18, '2022-12-20 19:52:49', '2022-12-20 19:52:49');

-- Dumping structure for table aszshop.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `utype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for Normal User',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table aszshop.users: ~4 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `utype`, `remember_token`, `created_at`, `updated_at`) VALUES
	(2, 'Onikata Kayoko', 'kayokoonikatasz@gmail.com', NULL, '$2y$10$21EWA6OhPqXrLUZEajAqTeapQ2dAxf86ycCnStMy4CsaknCH.h4We', 'USR', NULL, '2022-12-15 03:09:43', '2022-12-15 03:09:43'),
	(3, 'admin', 'admin@example.com', NULL, '$2y$10$Kq7NhEp1r0D4cShsX5bCsO/WRUGpkc1pk/TGNpA.VU9DMYtdwzkv2', 'ADM', NULL, '2022-12-15 03:13:14', '2022-12-15 03:13:14'),
	(4, 'AsZaychik', 'aszaychik@gmail.com', NULL, '$2y$10$WwkbQO84wuornxSRz91XQ.GndLrnk4lkkP65vM5tothgefd9oH60u', 'ADM', NULL, '2022-12-19 21:16:54', '2022-12-19 21:16:54'),
	(5, 'anjir', 'anjir@gmail.com', NULL, '$2y$10$qu2X044JJIdMRiEzeG6VOuNWFxPl8uvGqdsC6qWLlpgXvwAlh0Fbq', 'ADM', NULL, '2022-12-20 01:42:41', '2022-12-20 01:42:41');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
