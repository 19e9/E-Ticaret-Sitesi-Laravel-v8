-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 05, 2023 at 11:55 AM
-- Server version: 5.7.40
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eticar48_dbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_qty` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`, `updated_at`) VALUES
(1, '2', '1', '1', '2022-12-25 14:54:53', '2022-12-25 14:54:53'),
(4, '6', '2', '1', '2022-12-29 03:55:49', '2022-12-29 03:55:49'),
(5, '9', '2', '1', '2023-01-01 16:31:07', '2023-01-01 16:31:07'),
(8, '1', '4', '1', '2023-01-05 05:28:17', '2023-01-05 05:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `popular` tinyint(4) NOT NULL DEFAULT '0',
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_descrip` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_descrip`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Cep-Telefon', 'cep-telefon', 'cep-telefon', 0, 1, '1671689207.png', 'cep telefonler', 'ceptelefonler', 'phone,cep telefon, telefon,iphone, nokia, ipad', '2022-12-22 03:04:13', '2022-12-22 03:06:47'),
(2, 'Laptop', 'laptop', 'laptop', 0, 1, '1671691164.png', 'laptop', 'laptop', 'laptop, lenvo, hp, msi, asus, dash f15, tuf', '2022-12-22 03:39:24', '2022-12-22 03:39:24'),
(3, 'Televizyon', 'televizyon', 'televizyon', 0, 1, '1671693010.png', 'Televizyon', 'Televizyon', 'televizyon, samsung, Lg, LCD, Full HD, HD', '2022-12-22 04:10:10', '2022-12-22 04:10:10'),
(4, 'Ev Aletleri', 'ev-aletleri', 'ev-aletleri', 0, 1, '1671693338.png', 'Ev Aletleri', 'Ev Aletleri', 'ev, ev aletleri', '2022-12-22 04:15:38', '2022-12-22 04:15:38'),
(5, 'Beyaz Eşya', 'beyaz-esya', 'Beyaz Eşya', 0, 1, '1671693916.png', 'Beyaz Eşya', 'Beyaz Eşya', 'Beyaz eşya, çoğunlukla buzdolabı, çamaşır makinesi, bulaşık makinesi, fırın ve mikrodalga fırın', '2022-12-22 04:25:16', '2022-12-22 04:25:16'),
(7, 'Isıtma&Soğutma', 'isitma-sogutma', 'iklimlendirme', 0, 1, '1671989685.png', 'Isıtma&Soğutma', 'Isıtma&Soğutma', 'Isıtma&Soğutma', '2022-12-25 14:34:45', '2022-12-25 14:34:45'),
(9, 'Oyun Konsolları', 'Oyun-Konsollari', 'Oyun Konsolları', 0, 1, '1672898728.png', 'Oyun Konsolları', 'Oyun Konsolları', 'Oyun Konsolları', '2023-01-05 03:05:28', '2023-01-05 03:05:28'),
(10, 'iphone 12', 'iphone-12', 'iphone12', 0, 1, '1672908017.jpg', 'test', 'test1', 'test', '2023-01-05 05:40:17', '2023-01-05 05:40:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, '1', '3', '1', '11499', '2022-12-31 17:15:22', '2022-12-31 17:15:22'),
(2, '2', '2', '1', '17899', '2023-01-02 05:09:23', '2023-01-02 05:09:23'),
(3, '3', '4', '1', '11699', '2023-01-05 03:53:18', '2023-01-05 03:53:18'),
(4, '5', '2', '1', '17899', '2023-01-05 05:27:57', '2023-01-05 05:27:57');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_13_202928_create_categories_table', 1),
(6, '2022_05_17_120718_create_products_table', 1),
(7, '2022_05_22_104952_create_carts_table', 1),
(8, '2022_05_23_014101_create_orders_table', 1),
(9, '2022_05_23_015617_create_items_table', 1),
(10, '2022_05_23_060430_create_ratings_table', 1),
(11, '2022_05_23_224608_create_reviews_table', 1),
(12, '2022_07_17_210610_create_wishlists_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nhood` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addres1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addres2` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `message` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_no` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `last_name`, `email`, `phone`, `city`, `state`, `nhood`, `addres1`, `addres2`, `zipcode`, `total_price`, `status`, `message`, `tracking_no`, `created_at`, `updated_at`) VALUES
(1, '1', 'Halıt', 'Tarık', 'khalid.tariqx@gmail.com', '55253577162', 'İstanbul', 'atakum', 'Körfez', '5082 Sk.', 'Yurt', '55200', 11499, 0, NULL, 'eticaret2819', '2022-12-31 17:15:22', '2022-12-31 17:15:22'),
(2, '1', 'Halıt', 'Tarık', 'khalid.tariqx@gmail.com', '55253577162', 'Seçiniz', 'atakum', 'Körfez', '5082 Sk.', 'Yurt', '55200', 17899, 0, NULL, 'eticaret8082', '2023-01-02 05:09:23', '2023-01-02 05:09:23'),
(3, '1', 'Halıt', 'Tarık', 'khalid.tariqx@gmail.com', '55253577162', 'Seçiniz', 'atakum', 'Körfez', '5082 Sk.', 'Yurt', '55200', 11699, 0, NULL, 'eticaret8023', '2023-01-05 03:53:18', '2023-01-05 03:53:18'),
(4, '1', 'Halıt', 'Tarık', 'khalid.tariqx@gmail.com', '55253577162', 'Ankara', 'atakum', 'Körfez', '5082 Sk.', 'Yurt', '55200', 0, 0, NULL, 'eticaret1180', '2023-01-05 03:53:26', '2023-01-05 03:53:26'),
(5, '1', 'Halıt', 'Tarık', 'khalid.tariqx@gmail.com', '55253577162', 'Seçiniz', 'atakum', 'Körfez', '5082 Sk.', 'Yurt', '55200', 17899, 0, NULL, 'eticaret8528', '2023-01-05 05:27:57', '2023-01-05 05:27:57');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('khalid.tariqx@gmail.com', '$2y$10$5pJR.i5ZMGIK6U5a9kQuU.bovh8hAaojHRUAtlEDSAYPUjsOYugxC', '2022-12-22 02:57:01');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cate_id` bigint(20) NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(2, 1, 'iPhone 11 128 GB Siyah Cep Telefonu Aksesuarsız Kutu (Apple Türkiye Garantili)', 'iPhone-11-128-GB-Siyah', 'cep telefonu', '24 Ay Apple Türkiye Garantili Yeni üretim iPhone\'ların Kutu içeriğinde USB-C to Lightning Kablosu bulunmaktadır. Adaptör ve Kulaklık bulunmaz.\r\nBu üründen en fazla 1 adet sipariş verilebilir. 1 adetin üzerindeki siparişleri Trendyol iptal etme hakkını saklı tutar.\r\nKampanya fiyatından satılmak üzere 100 adetten fazla stok sunulmuştur.\r\nBir ürün, birden fazla satıcı tarafından satılabilir. Birden fazla satıcı tarafından satışa sunulan ürünlerin satıcıları ürün için belirledikleri fiyata, satıcı puanlarına, teslimat statülerine, ürünlerdeki promosyonlara, kargonun bedava olup olmamasına ve ürünlerin hızlı teslimat ile teslim edilip edilememesine, ürünlerin stok ve kategorileri bilgilerine göre sıralanmaktadır.', '18000', '17899', '1671992054.png', '2', '3', 0, 1, 'cep telefonu', 'cep telefonu', 'akıllı cep telefonu', '2022-12-25 15:14:14', '2023-01-05 05:27:57'),
(3, 3, 'Samsung 50AU7000 50\" 125 Ekran Uydu Alıcılı Crystal 4K Ultra HD Smart LED TV TV-AU7000', 'Samsung-50AU7000-50-125 Ekran-Uydu-Alıcılı-Crystal-4K-Ultra-HD-Smart LED-TV-AU7000', 'Bu üründen en fazla 1 adet sipariş verilebilir. 1 adetin üzerindeki siparişleri Trendyol iptal etme hakkını saklı tutar.', 'Bu üründen en fazla 1 adet sipariş verilebilir. 1 adetin üzerindeki siparişleri Trendyol iptal etme hakkını saklı tutar.\r\nKampanya fiyatından satılmak üzere 5 adetten fazla stok sunulmuştur.\r\nİncelemiş olduğunuz ürünün satış fiyatını satıcı belirlemektedir.\r\nBir ürün, birden fazla satıcı tarafından satılabilir. Birden fazla satıcı tarafından satışa sunulan ürünlerin satıcıları ürün için belirledikleri fiyata, satıcı puanlarına, teslimat statülerine, ürünlerdeki promosyonlara, kargonun bedava olup olmamasına ve ürünlerin hızlı teslimat ile teslim edilip edilememesine, ürünlerin stok ve kategorileri bilgilerine göre sıralanmaktadır.', '11600', '11499', '1671992161.png', '9', '600', 0, 1, 'Samsung 50AU7000 50\" 125 Ekran Uydu Alıcılı Crystal 4K Ultra HD Smart LED TV TV-AU7000', 'samsung,led,led50', 'Bu üründen en fazla 1 adet sipariş verilebilir. 1 adetin üzerindeki siparişleri Trendyol iptal etme hakkını saklı tutar.\r\nKampanya fiyatından satılmak üzere 5 adetten fazla stok sunulmuştur.', '2022-12-25 15:16:01', '2022-12-31 17:15:22'),
(4, 2, 'Matebook D15 AMD Ryzen 5 5500U 8GB 512GB SSD Gri Dizüstü Bilgisayar (Huawei Türkiye Garantili) MBOOKD15R5', 'Matebook-D15-AMD-Ryzen5-5500U-8GB-512GB-SSD', 'laptop', 'Huawei Türkiye Garantili\r\nBu üründen en fazla 1 adet sipariş verilebilir. 1 adetin üzerindeki siparişleri Trendyol iptal etme hakkını saklı tutar.\r\nKampanya fiyatından satılmak üzere 100 adetten fazla stok sunulmuştur.\r\nBir ürün, birden fazla satıcı tarafından satılabilir. Birden fazla satıcı tarafından satışa sunulan ürünlerin satıcıları ürün için belirledikleri fiyata, satıcı puanlarına, teslimat statülerine, ürünlerdeki promosyonlara, kargonun bedava olup olmamasına ve ürünlerin hızlı teslimat ile teslim edilip edilememesine, ürünlerin stok ve kategorileri bilgilerine göre sıralanmaktadır.', '11799', '11699', '1671992333.png', '1', '8', 0, 1, 'laptop', 'bilgisayar', 'huawei', '2022-12-25 15:18:53', '2023-01-05 03:53:18'),
(5, 5, 'Al 434 P 4 Programlı Bulaşık Makinası ALTUS AL 434 P', 'Al-434-P-4-Programlı-Bulaşık-Makinası-ALTUS-AL-434-P', 'beyaz eşya', '13 Kişilik Yemek Takımı Yıkama Kapasitesi, Paslanmaz Çelik Gövde, Bardak Koruma Sistemi, Su Taşma Emniyeti, Ayarlı Fincan Rafları, Kayar Çatal / Kaşık Sepeti, Alt Sepette Katlanır Teller, Parlatıcı Göstergesi, Tuz Göstergesi\r\nFonksiyonlar\r\nYarım Yük Fonksiyonu\r\nProgramlar\r\nEko 50°, Yoğun 70°, Hızlı Yıkama 58, Mini 30\r\nPerformans\r\nEnerji Sınıfı: E\r\nSu Tüketimi: 12.9 litre\r\nSes Seviyesi: 51 dBA\r\nÜrün Boyutları\r\nYxGxD (cm): 85x59.8x60\r\nRenk\r\nBeyaz\r\nBu üründen en fazla 1 adet sipariş verilebilir. 1 adetin üzerindeki siparişleri Trendyol iptal etme hakkını saklı tutar.\r\nKampanya fiyatından satılmak üzere 100 adetten fazla stok sunulmuştur.\r\nİncelemiş olduğunuz ürünün satış fiyatını satıcı belirlemektedir.\r\nBir ürün, birden fazla satıcı tarafından satılabilir. Birden fazla satıcı tarafından satışa sunulan ürünlerin satıcıları ürün için belirledikleri fiyata, satıcı puanlarına, teslimat statülerine, ürünlerdeki promosyonlara, kargonun bedava olup olmamasına ve ürünlerin hızlı teslimat ile teslim edilip edilememesine, ürünlerin stok ve kategorileri bilgilerine göre sıralanmaktadır.', '5860', '5460', '1671992688.png', '3', '2', 0, 1, 'beyaz eşya', 'beyaz eşya', 'bulaşık makinesi', '2022-12-25 15:24:48', '2022-12-25 15:24:48'),
(6, 4, 'Philips 5000 Series Dst5020/30 2400 W Buharlı Ütü PHLDST5020', 'Philips-5000-Series-Dst5020/30-2400-W-Buharlı-Ütü-PHLDST5020', 'Bir ürün, birden fazla satıcı tarafından satılabilir. Birden fazla satıcı tarafından satışa sunulan ürünlerin satıcıları ürün için belirledikleri fiyata, satıcı puanlarına, teslimat statülerine, ürünlerdeki promosyonlara, kargonun bedava olup olmamasına ve ürünlerin hızlı teslimat ile teslim edilip edilememesine, ürünlerin stok ve kategorileri bilgilerine göre sıralanmaktadır.', 'Philips DST5020/30 Ütü Özellikleri GENEL ÖZELLİKLER Ütü Tipi\r\nTaban\r\nGüç\r\nSu Haznesi\r\nTEKNOLOJİ Kireç Önleme\r\nDamlama Önleme\r\nYumuşak Tutma Yeri Var\r\nBUHAR ÖZELLİKLERİ Şok Buhar\r\nŞok Buhar Değeri\r\nSürekli Buhar\r\nTASARIM Renk SeçenekleriMor', '749', '733', '1671992798.png', '20', '29', 0, 1, 'Philips 5000 Series', 'ütü,iron', 'Philips DST5020/30 Ütü Özellikleri GENEL ÖZELLİKLER Ütü Tipi', '2022-12-25 15:26:38', '2022-12-25 15:26:38'),
(7, 8, 'Sony Playstation 5 ( Ithalatçı Garantili) +2. Dualsense Kol + Ps5 Fifa 23 ps5 + fifa23 +2.kol', 'sony-playstation5-ps5-fifa-23', 'Sony Playstation 5 ( Ithalatçı Garantili) +2. Dualsense Kol + Ps5 Fifa 23', 'Sony Playstation 5 ( Ithalatçı Garantili) +2. Dualsense kol + Ps5 Fifa 23\r\nBu üründen en fazla 3 adet sipariş verilebilir. 3 adetin üzerindeki siparişleri Trendyol iptal etme hakkını saklı tutar.\r\nKampanya fiyatından satılmak üzere 5 adetten az stok bulunmaktadır.\r\nİncelemiş olduğunuz ürünün satış fiyatını satıcı belirlemektedir.\r\nBir ürün, birden fazla satıcı tarafından satılabilir. Birden fazla satıcı tarafından satışa sunulan ürünlerin satıcıları ürün için belirledikleri fiyata, satıcı puanlarına, teslimat statülerine, ürünlerdeki promosyonlara, kargonun bedava olup olmamasına ve ürünlerin hızlı teslimat ile teslim edilip edilememesine, ürünlerin stok ve kategorileri bilgilerine göre sıralanmaktadır.', '22000', '21499', '1672125335.png', '6', '3869', 0, 1, 'Sony Playstation 5', 'ps5,ps4,playstation,ps,fifa23', 'Sony Playstation 5 + fifa 23', '2022-12-27 04:15:35', '2022-12-27 04:15:35');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stars_rated` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `prod_id`, `stars_rated`, `created_at`, `updated_at`) VALUES
(1, '1', '2', '5', '2023-01-02 05:09:39', '2023-01-02 05:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_review` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `prod_id`, `user_review`, `created_at`, `updated_at`) VALUES
(1, '1', '2', 'zafer hocam kıyma bıze', '2023-01-02 05:10:15', '2023-01-02 05:10:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nhood` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addres1` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addres2` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `email_verified_at`, `password`, `phone`, `city`, `state`, `nhood`, `addres1`, `addres2`, `zipcode`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Halıt', 'Tarık', 'khalid.tariqx@gmail.com', NULL, '$2y$10$WXfaAL9cX1RcuNBViT/QLuolW3CQVSlO9Itqztf5Ko5H44vRPjBEq', '55253577162', 'İstanbul', 'atakum', 'Körfez', '5082 Sk.', 'Yurt', '55200', 1, 'zZofpIAt64OxsCfrRApt1I8UFkUPOoIUYL0lrAtCjyIEfhTc7Urral3RONVd', '2022-12-21 13:48:43', '2022-12-31 17:15:22'),
(2, 'Cüneyd', 'Sabuncu', '191118024@samsun.edu.tr', NULL, '$2y$10$CG3I1THDYhv0wg6dp05c7egjSB/M/a9p1DxMHn53gkRbodIibrkgu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-12-25 14:22:28', '2022-12-25 14:22:28'),
(3, 'Halit', 'Tarık 1', 'khaledtg17@gmail.com', NULL, '$2y$10$.9zst8K/8YvukueEARreYu1cs00yUo4FWwpxa9OnnOa.mTqdo56gi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2022-12-26 02:50:00', '2022-12-26 02:50:00'),
(4, 'Xw!Afrax', 'Dahabo', 'safaaf253@gmail.com', NULL, '$2y$10$1hc2movHMejXo7BSRCnJ8u8uApaos11TSE1U7sfX0PmyONASz2xbK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2022-12-26 02:52:26', '2022-12-26 02:52:26'),
(5, 'Hamza Samet', 'Bükte', 'hamzabukte@gmail.com', NULL, '$2y$10$Hh0P9NUVVcZiYUeI2Vi0huloFy9rAiymEHgEWGY12MqWXz30kqt6G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2022-12-26 16:49:24', '2022-12-26 16:49:24'),
(6, 'saad', 'moustafa', 'moustafa.saad@gmail.com', NULL, '$2y$10$slO3opkjbPCQZFhxYAl4be0bIglXsor52T2ZEjlAN8kjhvGP1accW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2022-12-29 03:55:31', '2022-12-29 03:55:31'),
(7, 'ahmad', 'alsaleh', 'alslaeh.ahmad@gmail.com', NULL, '$2y$10$ZbnF6Sfh4MWpQTdFa9Jy1ewZnysF0Cw6FlxN8WkgGx6.rLKeF124G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2022-12-31 17:18:29', '2022-12-31 17:18:29'),
(8, 'Salih', 'Visca', 'visca.salih@gmail.com', NULL, '$2y$10$aCu6JHexFdkN.X.AOMSDNuS09VcqvsTtb1VQHq4vng8r/SsRkLXpu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2022-12-31 17:31:23', '2022-12-31 17:31:23'),
(9, 'saad', 'moustafa', 'fbaerba@gmail.com', NULL, '$2y$10$6hKoptPQC9Sc6CJMWl1CMO1lQz4Wt.fjsF8C1/LgsN.lM/a52y6gm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2JGwBfBxRHMAivBHCId3O81nCNJyBFodkXqjSjCFWng4JZ2mulHHPZhaem0N', '2023-01-01 13:26:35', '2023-01-01 13:26:35'),
(10, 'qazwsxedc', 'qaz', 'asderba@gmail.com', NULL, '$2y$10$T9bGEeMhePZnd32OVjIABOYVTshxUqef4cR7PL7IA6wd7DBV41Dhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2023-01-01 13:35:08', '2023-01-01 13:35:08'),
(11, 'Ali', 'Emre', 'Emre.ali@gmail.com', NULL, '$2y$10$1z0CkcACG3Pex05Xi7u9Uuh7yvAFzof.uX2RJH0fJ45QbHBN4U1gW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2023-01-05 02:45:58', '2023-01-05 02:45:58');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
