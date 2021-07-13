-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 31, 2019 at 01:48 AM
-- Server version: 10.1.38-MariaDB-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buyands1_buyandsellbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'BcvjDCK04fACKxdUN59hVIu0rEcYh8Aw', 1, '2019-03-20 03:03:26', '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(2, 2, 'chYml9BZt1MyET034afwAusFIei4HbZ5', 1, '2019-03-27 11:34:47', '2019-03-27 15:34:47', '2019-03-27 15:34:47'),
(3, 3, 'VrJNvfOGU4e5r6yMK0LrHyVo114fQYau', 1, '2019-03-27 11:42:04', '2019-03-27 15:42:04', '2019-03-27 15:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `is_filterable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `attribute_set_id`, `is_filterable`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '2019-03-25 20:05:26', '2019-03-25 20:05:26');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_categories`
--

CREATE TABLE `attribute_categories` (
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_sets`
--

CREATE TABLE `attribute_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_sets`
--

INSERT INTO `attribute_sets` (`id`, `created_at`, `updated_at`) VALUES
(1, '2019-03-25 20:01:03', '2019-03-25 20:01:03'),
(2, '2019-03-25 20:01:37', '2019-03-25 20:01:37'),
(3, '2019-03-25 20:02:12', '2019-03-25 20:02:12'),
(4, '2019-03-25 21:50:51', '2019-03-25 21:50:51'),
(5, '2019-03-25 21:51:01', '2019-03-25 21:51:01'),
(6, '2019-03-25 21:54:46', '2019-03-25 21:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_set_translations`
--

CREATE TABLE `attribute_set_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_set_translations`
--

INSERT INTO `attribute_set_translations` (`id`, `attribute_set_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Specifications'),
(2, 2, 'en', 'Network'),
(3, 3, 'en', 'Display'),
(4, 4, 'en', 'RAM'),
(5, 5, 'en', 'Storage'),
(6, 6, 'en', 'Pant');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_translations`
--

CREATE TABLE `attribute_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_translations`
--

INSERT INTO `attribute_translations` (`id`, `attribute_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Color');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `attribute_id`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '2019-03-25 20:05:26', '2019-03-25 20:05:26'),
(2, 1, 1, '2019-03-25 20:05:26', '2019-03-25 20:05:26'),
(3, 1, 2, '2019-03-25 20:05:26', '2019-03-25 20:05:26'),
(4, 1, 3, '2019-03-25 20:05:26', '2019-03-25 20:05:26'),
(5, 1, 4, '2019-03-25 20:05:26', '2019-03-25 20:05:26'),
(6, 1, 5, '2019-03-25 20:05:26', '2019-03-25 20:05:26'),
(7, 1, 6, '2019-03-25 20:05:26', '2019-03-25 20:05:26'),
(8, 1, 7, '2019-03-25 20:05:26', '2019-03-25 20:05:26');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value_translations`
--

CREATE TABLE `attribute_value_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_value_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_value_translations`
--

INSERT INTO `attribute_value_translations` (`id`, `attribute_value_id`, `locale`, `value`) VALUES
(1, 1, 'en', 'Black'),
(2, 2, 'en', 'Silver'),
(3, 3, 'en', 'Grey'),
(4, 4, 'en', 'Brown'),
(5, 5, 'en', 'Gold'),
(6, 6, 'en', 'Blue'),
(7, 7, 'en', 'Navy'),
(8, 8, 'en', 'Multicolor');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `is_searchable` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `slug`, `position`, `is_searchable`, `is_active`, `created_at`, `updated_at`) VALUES
(1, NULL, 'mobile', 0, 1, 1, '2019-03-20 09:27:43', '2019-03-27 16:18:19'),
(7, 1, 'mobiles', 1, 1, 1, '2019-03-25 15:29:59', '2019-03-27 16:18:19'),
(8, 7, 'samsung', 2, 0, 1, '2019-03-25 15:34:20', '2019-03-27 16:18:19'),
(9, 7, 'iphone', 3, 0, 1, '2019-03-25 15:34:52', '2019-03-27 16:18:19'),
(10, 7, 'nokia', 4, 0, 1, '2019-03-25 15:35:17', '2019-03-27 16:18:19'),
(13, 1, 'ac', 5, 0, 1, '2019-03-26 20:16:25', '2019-03-27 16:18:19'),
(14, 1, 'cctv', 8, 0, 1, '2019-03-26 20:16:47', '2019-03-27 16:18:19'),
(15, 1, 'tv', 9, 0, 1, '2019-03-26 20:17:27', '2019-03-27 16:18:19'),
(16, 1, 'other-electronics', 7, 0, 1, '2019-03-26 20:18:03', '2019-03-27 16:18:19'),
(17, 1, 'gadget', 6, 0, 1, '2019-03-26 20:18:28', '2019-03-27 16:18:19'),
(18, NULL, 'clothing', 10, 1, 1, '2019-03-26 20:19:35', '2019-03-27 16:18:19'),
(19, 18, 'men-s', 11, 0, 1, '2019-03-26 20:20:08', '2019-03-27 16:18:19'),
(20, 18, 'women-s', 15, 0, 1, '2019-03-26 20:20:34', '2019-03-27 16:18:19'),
(21, 18, 'kid-s', 16, 0, 1, '2019-03-26 20:22:00', '2019-03-27 16:18:19'),
(22, NULL, 'furniture', 17, 1, 1, '2019-03-26 20:22:31', '2019-03-27 16:18:19'),
(23, 22, 'sofa', 18, 0, 1, '2019-03-26 20:22:59', '2019-03-27 16:18:19'),
(24, 22, 'bed', 19, 0, 1, '2019-03-26 20:23:25', '2019-03-27 16:18:19'),
(25, 22, 'tea-table', 20, 0, 1, '2019-03-26 20:23:48', '2019-03-27 16:18:19'),
(26, 22, 'chair', 21, 0, 1, '2019-03-26 20:24:19', '2019-03-27 16:18:19'),
(27, 22, 'daining-table', 22, 0, 1, '2019-03-26 20:25:05', '2019-03-27 16:18:19'),
(28, 19, 't-shirts', 14, 0, 1, '2019-03-27 16:11:04', '2019-03-27 16:18:19'),
(29, 19, 'buyandsell.com/en/pant', 12, 0, 1, '2019-03-27 16:11:30', '2019-03-27 18:48:51'),
(30, 19, 'jackets-coats', 13, 0, 1, '2019-03-27 16:17:58', '2019-03-27 16:18:19'),
(31, 20, 'abaya', NULL, 0, 1, '2019-03-27 18:42:56', '2019-03-27 18:43:34'),
(32, 20, 'lehenga', NULL, 0, 1, '2019-03-27 18:43:25', '2019-03-27 18:43:25'),
(33, 20, 'three-piece', NULL, 0, 1, '2019-03-27 18:44:52', '2019-03-27 18:44:52'),
(34, 20, 'sharee', NULL, 0, 1, '2019-03-27 18:45:05', '2019-03-27 18:45:05'),
(35, 20, 'western-dress', NULL, 0, 1, '2019-03-27 18:45:41', '2019-03-27 18:45:41'),
(36, 20, 'bra-panty', NULL, 0, 1, '2019-03-27 18:47:12', '2019-03-27 18:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Electronics'),
(7, 7, 'en', 'Mobiles'),
(8, 8, 'en', 'Samsung'),
(9, 9, 'en', 'Iphone'),
(10, 10, 'en', 'Nokia'),
(13, 13, 'en', 'AC'),
(14, 14, 'en', 'CCTV'),
(15, 15, 'en', 'TV'),
(16, 16, 'en', 'Other Electronics'),
(17, 17, 'en', 'Gadget'),
(18, 18, 'en', 'Clothing'),
(19, 19, 'en', 'Men\'s'),
(20, 20, 'en', 'Women\'s'),
(21, 21, 'en', 'Kid\'s'),
(22, 22, 'en', 'Furniture'),
(23, 23, 'en', 'Sofa'),
(24, 24, 'en', 'Bed'),
(25, 25, 'en', 'Tea-Table'),
(26, 26, 'en', 'Chair'),
(27, 27, 'en', 'Daining Table'),
(28, 28, 'en', 'Shirts'),
(29, 29, 'en', 'Pant'),
(30, 30, 'en', 'Jackets & Coats'),
(31, 31, 'en', 'Abaya'),
(32, 32, 'en', 'Lehenga'),
(33, 33, 'en', 'Three Piece'),
(34, 34, 'en', 'Sharee'),
(35, 35, 'en', 'Western Collections'),
(36, 36, 'en', 'Bra Panty');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(18,4) UNSIGNED DEFAULT NULL,
  `is_percent` tinyint(1) NOT NULL,
  `free_shipping` tinyint(1) NOT NULL,
  `minimum_spend` decimal(18,4) UNSIGNED DEFAULT NULL,
  `maximum_spend` decimal(18,4) UNSIGNED DEFAULT NULL,
  `usage_limit_per_coupon` int(10) UNSIGNED DEFAULT NULL,
  `usage_limit_per_customer` int(10) UNSIGNED DEFAULT NULL,
  `used` int(11) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_categories`
--

CREATE TABLE `coupon_categories` (
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `exclude` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_products`
--

CREATE TABLE `coupon_products` (
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `exclude` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_translations`
--

CREATE TABLE `coupon_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cross_sell_products`
--

CREATE TABLE `cross_sell_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `cross_sell_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency_rates`
--

CREATE TABLE `currency_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(8,4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_rates`
--

INSERT INTO `currency_rates` (`id`, `currency`, `rate`, `created_at`, `updated_at`) VALUES
(1, 'USD', '1.0000', '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(2, 'BDT', '1.0000', '2019-03-21 16:15:59', '2019-03-21 16:15:59');

-- --------------------------------------------------------

--
-- Table structure for table `entity_files`
--

CREATE TABLE `entity_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` bigint(20) UNSIGNED NOT NULL,
  `zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entity_files`
--

INSERT INTO `entity_files` (`id`, `file_id`, `entity_type`, `entity_id`, `zone`, `created_at`, `updated_at`) VALUES
(7, 37, 'Modules\\Product\\Entities\\Product', 1, 'base_image', '2019-03-25 16:40:23', '2019-03-25 16:40:23'),
(8, 37, 'Modules\\Product\\Entities\\Product', 1, 'additional_images', '2019-03-25 16:40:23', '2019-03-25 16:40:23'),
(11, 40, 'Modules\\Product\\Entities\\Product', 2, 'base_image', '2019-03-25 20:09:07', '2019-03-25 20:09:07'),
(12, 40, 'Modules\\Product\\Entities\\Product', 2, 'additional_images', '2019-03-25 20:09:07', '2019-03-25 20:09:07');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `user_id`, `filename`, `disk`, `path`, `extension`, `mime`, `size`, `created_at`, `updated_at`) VALUES
(1, 1, 'logo.png', 'public', 'media/TUZngcbh5nHirAhDi6ZIVxpLLnxjDyXgT68IAJrJ.png', 'png', 'image/png', '26413', '2019-03-20 08:05:06', '2019-03-20 08:05:06'),
(2, 1, 'iphone.jpg', 'public', 'media/QbK6dTdqqCFAfI2PB5YGHbuysI1haBEiG28CwH5R.jpeg', 'jpeg', 'image/jpeg', '84407', '2019-03-20 08:06:16', '2019-03-20 08:06:16'),
(3, 1, 'GPS-Tracker.jpg', 'public', 'media/u0Xkr7DG9Xq2tXzwcYjpiNCZ1g9ZFoCkMMMsuvTS.jpeg', 'jpeg', 'image/jpeg', '69476', '2019-03-20 08:06:16', '2019-03-20 08:06:16'),
(5, 1, 'nokia.jpg', 'public', 'media/EEQBOf5AMMwGeYboxSLkVbbHM88aIfs4BctGW6NZ.jpeg', 'jpeg', 'image/jpeg', '97132', '2019-03-20 08:06:18', '2019-03-20 08:06:18'),
(32, 1, 'banner.jpg', 'public', 'media/dvr3xGKNz3z0I6QTBWO9aiQpFKQWEgE2tTrRby3t.jpeg', 'jpeg', 'image/jpeg', '827397', '2019-03-25 02:43:20', '2019-03-25 02:43:20'),
(33, 1, 'banner2.jpeg', 'public', 'media/gbF8FKtoRpbMSK5q7llfUuCHNuvPKFQnCXAhsAz2.jpeg', 'jpeg', 'image/jpeg', '15612', '2019-03-25 14:16:59', '2019-03-25 14:16:59'),
(34, 1, 'banner3.jpeg', 'public', 'media/m5Nie2KROFh3QmptRMei4i86xOYbHHxvVRBKngWT.jpeg', 'jpeg', 'image/jpeg', '21356', '2019-03-25 14:17:30', '2019-03-25 14:17:30'),
(35, 1, 'banner1.jpeg', 'public', 'media/WUF1QFGD0MD86NPQfP9oUwWd7UVxynXubp9zkDBO.jpeg', 'jpeg', 'image/jpeg', '39329', '2019-03-25 14:17:30', '2019-03-25 14:17:30'),
(36, 1, 'banner4jpeg.jpeg', 'public', 'media/lrqBCPYwI6ohI0Zp4zfqCeZpQHTuL2p9zUMnLswo.jpeg', 'jpeg', 'image/jpeg', '65937', '2019-03-25 14:56:18', '2019-03-25 14:56:18'),
(37, 1, 'Apple Iphone 6-32GB-Gray.jpg', 'public', 'media/DiWJCKokE4dI97KXeAv44hneQ1BMjwuLf7APhu9G.jpeg', 'jpeg', 'image/jpeg', '25238', '2019-03-25 15:41:56', '2019-03-25 15:41:56'),
(38, 1, 'banner5.jpeg', 'public', 'media/b7RKADNAD4lXEa6Nba45WNpggCCUCe3hI5d2hw6d.jpeg', 'jpeg', 'image/jpeg', '21556', '2019-03-25 16:23:15', '2019-03-25 16:23:15'),
(39, 1, 'banner6.jpeg', 'public', 'media/kVVsWXUA1zApvF8IppgBFVOAI9Z0nT61fruPWg8S.jpeg', 'jpeg', 'image/jpeg', '38318', '2019-03-25 16:23:16', '2019-03-25 16:23:16'),
(40, 1, 'iphone-6-570x570.jpg', 'public', 'media/Y0idkQdRJffhS5U6709bSRmhcVLGiqV4bSSyjUbV.jpeg', 'jpeg', 'image/jpeg', '8853', '2019-03-25 16:37:44', '2019-03-25 16:37:44'),
(42, 1, 'facebook.jpg', 'public', 'media/XvE6PYkLHUw2QTuUuvwKG8cF5Fj3Oai22Inn5R3Y.jpeg', 'jpeg', 'image/jpeg', '4762', '2019-03-25 19:18:40', '2019-03-25 19:18:40'),
(43, 1, 'google.png', 'public', 'media/8Pju6CU1ibcG8z87drepIxQxJ8judz0rN0rgK3ij.png', 'png', 'image/png', '9813', '2019-03-25 19:20:41', '2019-03-25 19:20:41'),
(44, 1, 'hubspot.png', 'public', 'media/OVGoXDo7SmwiCHWkLAvtsLl84TGEvGdPmF6BtT1Q.png', 'png', 'image/png', '10150', '2019-03-25 19:20:41', '2019-03-25 19:20:41'),
(45, 1, 'Instagram.png', 'public', 'media/HayMYgQKWzqK69RI3rd6YGg4Ef9WRnELReH28M3D.png', 'png', 'image/png', '9084', '2019-03-25 19:20:42', '2019-03-25 19:20:42'),
(46, 1, 'laravel.png', 'public', 'media/sIa8wT47VWhRXlCETzHXgvfHEoLfw6azqQ8eP2Nb.png', 'png', 'image/png', '7691', '2019-03-25 19:20:42', '2019-03-25 19:20:42'),
(47, 1, 'wordpress.png', 'public', 'media/NIO8Ir7w3fUYHnhwAd0e0BWXUHAV5SEXgHvg3WUR.png', 'png', 'image/png', '8346', '2019-03-25 19:20:42', '2019-03-25 19:20:42'),
(48, 1, 'youtube.png', 'public', 'media/ZHOwpp946ptFNBClepvnDmJSkboFIYtMZ3smXlc4.png', 'png', 'image/png', '6301', '2019-03-25 19:20:43', '2019-03-25 19:20:43'),
(49, 1, 'F1.png', 'public', 'media/B7mMVJlnuUaoon5fDDWcCu3awkrxo8CVhrLAPc5Q.png', 'png', 'image/png', '688668', '2019-03-25 20:32:47', '2019-03-25 20:32:47'),
(50, 1, 'o.png', 'public', 'media/CaGhiBh8OerrtGuuZqgUGaAd7TChCr6Qg5VNY8fD.png', 'png', 'image/png', '630292', '2019-03-25 20:36:15', '2019-03-25 20:36:15'),
(51, 1, 't2.jpg', 'public', 'media/EanhtWQTndqMp27aW0EDcfRAxxQfjJmoxRU1Uyco.jpeg', 'jpeg', 'image/jpeg', '43891', '2019-03-25 21:00:33', '2019-03-25 21:00:33'),
(60, 1, 'logo.png', 'public', 'media/gcb28bA9j1gy0iGECzZcjcuIEU3QziK96NVTJgwA.png', 'png', 'image/png', '5676', '2019-03-26 19:31:40', '2019-03-26 19:31:40'),
(64, 1, 'gps tracker.png', 'public', 'media/QnetAZC3zhzjspboBRzUWGwmH20qapf6mopX1Dmr.png', 'png', 'image/png', '377339', '2019-03-27 17:22:31', '2019-03-27 17:22:31'),
(65, 1, 'ip camera.png', 'public', 'media/RHCLDNaolhDld9YFGXbrMmPsex0arTRVr7CDW0Vd.png', 'png', 'image/png', '321225', '2019-03-27 17:28:04', '2019-03-27 17:28:04'),
(66, 1, 'AC.png', 'public', 'media/vDzD5LeL0L1v1gDWkLZLfeOVE6E8P7yrJZrUBzTn.png', 'png', 'image/png', '356196', '2019-03-27 17:49:35', '2019-03-27 17:49:35'),
(68, 1, 'sunglass.png', 'public', 'media/iS4ByD985UUMJYydvzZxraU3d6lXFnMPUsOmcfWF.png', 'png', 'image/png', '294781', '2019-03-27 18:12:54', '2019-03-27 18:12:54'),
(70, 1, 'blazure.png', 'public', 'media/bjmLePHxhQEZsysqFAy1H8zbTIlxOvKUfqgXUBSk.png', 'png', 'image/png', '64995', '2019-03-27 18:22:46', '2019-03-27 18:22:46'),
(71, 1, 'p1.png', 'public', 'media/YHFrm65BafnhVByjqribijyvOYN8gGQcRWR7DDbo.png', 'png', 'image/png', '250594', '2019-03-31 04:51:01', '2019-03-31 04:51:01'),
(72, 1, 'p2.png', 'public', 'media/eJDu3ACZyQ3sYBeygTErNmtYBIJvRa50GfUdUPTL.png', 'png', 'image/png', '112244', '2019-03-31 04:51:19', '2019-03-31 04:51:19'),
(73, 1, 'p3.jpg', 'public', 'media/CVRPYDV8moiBhHiBwkxO9TQrl6DaM9PDmZrXkKun.jpeg', 'jpeg', 'image/jpeg', '329527', '2019-03-31 04:51:37', '2019-03-31 04:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-03-20 08:08:18', '2019-03-20 08:08:18'),
(2, 1, '2019-03-20 09:26:30', '2019-03-20 09:26:30'),
(3, 1, '2019-03-20 09:30:06', '2019-03-20 09:30:06'),
(4, 0, '2019-03-27 05:44:52', '2019-03-27 05:44:52');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `page_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `is_root` tinyint(1) NOT NULL DEFAULT '0',
  `is_fluid` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `parent_id`, `category_id`, `page_id`, `type`, `url`, `target`, `position`, `is_root`, `is_fluid`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, 'URL', NULL, '_self', 0, 1, 0, 1, '2019-03-20 08:08:18', '2019-03-20 08:08:18'),
(2, 1, 1, NULL, 1, 'page', NULL, '_self', 1, 0, 0, 1, '2019-03-20 08:52:33', '2019-03-20 08:53:04'),
(3, 1, 1, NULL, NULL, 'url', 'http://buyandsellbd.com', '_self', 0, 0, 0, 1, '2019-03-20 08:52:59', '2019-03-20 08:53:04'),
(4, 1, 1, NULL, NULL, 'url', '#', '_self', NULL, 0, 0, 1, '2019-03-20 08:53:30', '2019-03-20 08:53:30'),
(5, 2, NULL, NULL, NULL, 'URL', NULL, '_self', 0, 1, 0, 1, '2019-03-20 09:26:30', '2019-03-20 09:26:30'),
(6, 2, 5, 1, NULL, 'category', NULL, '_self', NULL, 0, 0, 1, '2019-03-20 09:28:16', '2019-03-20 09:28:16'),
(7, 3, NULL, NULL, NULL, 'URL', NULL, '_self', 0, 1, 0, 1, '2019-03-20 09:30:06', '2019-03-20 09:30:06'),
(8, 3, 7, NULL, 2, 'page', NULL, '_self', NULL, 0, 0, 1, '2019-03-20 09:30:43', '2019-03-20 09:30:43'),
(9, 3, 7, NULL, 3, 'page', NULL, '_self', NULL, 0, 0, 1, '2019-03-20 10:26:06', '2019-03-20 10:26:06'),
(10, 4, NULL, NULL, NULL, 'URL', NULL, '_self', 0, 1, 0, 1, '2019-03-27 05:44:52', '2019-03-27 05:44:52');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item_translations`
--

CREATE TABLE `menu_item_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_item_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_item_translations`
--

INSERT INTO `menu_item_translations` (`id`, `menu_item_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'root'),
(2, 2, 'en', 'About Us'),
(3, 3, 'en', 'Home'),
(4, 4, 'en', 'Shop'),
(5, 5, 'en', 'root'),
(6, 6, 'en', 'Mobile'),
(7, 7, 'en', 'root'),
(8, 8, 'en', 'Privacy Policy'),
(9, 9, 'en', 'Terms & Use'),
(10, 10, 'bn_BD', 'root'),
(11, 10, 'en', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `menu_translations`
--

CREATE TABLE `menu_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_translations`
--

INSERT INTO `menu_translations` (`id`, `menu_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Main Menu'),
(2, 2, 'en', 'Category Menu'),
(3, 3, 'en', 'Footer Menu'),
(4, 4, 'en', 'New');

-- --------------------------------------------------------

--
-- Table structure for table `meta_data`
--

CREATE TABLE `meta_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_data`
--

INSERT INTO `meta_data` (`id`, `entity_type`, `entity_id`, `created_at`, `updated_at`) VALUES
(1, 'Modules\\Page\\Entities\\Page', 1, '2019-03-20 08:48:19', '2019-03-20 08:48:19'),
(2, 'Modules\\Page\\Entities\\Page', 2, '2019-03-20 08:51:52', '2019-03-20 08:51:52'),
(3, 'Modules\\Page\\Entities\\Page', 3, '2019-03-20 10:25:23', '2019-03-20 10:25:23'),
(4, 'Modules\\Product\\Entities\\Product', 1, '2019-03-25 15:43:50', '2019-03-25 15:43:50'),
(5, 'Modules\\Product\\Entities\\Product', 2, '2019-03-25 16:38:44', '2019-03-25 16:38:44');

-- --------------------------------------------------------

--
-- Table structure for table `meta_data_translations`
--

CREATE TABLE `meta_data_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_data_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_data_translations`
--

INSERT INTO `meta_data_translations` (`id`, `meta_data_id`, `locale`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, 'en', 'buyandsell-about', '[\"about\",\"buyandsell-about\",\"about-us\"]', 'Buy and sell is a best online shop in bangladesh'),
(2, 2, 'en', 'privacy-policy', '[\"privacy policy\",\"buyandsell-privacy-policy\"]', 'buy and sell is a best online shop in bangladesh'),
(3, 3, 'en', 'terms-and-use', '[\"terms and use\",\"buyandsell-terms-and-use\"]', 'Trusted online shop with 100% buyer protection.'),
(4, 4, 'en', NULL, '[]', NULL),
(5, 5, 'en', NULL, '[]', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
(2, '2014_10_14_200250_create_settings_table', 1),
(3, '2014_10_26_162751_create_files_table', 1),
(4, '2014_10_30_191858_create_pages_table', 1),
(5, '2014_11_31_125848_create_page_translations_table', 1),
(6, '2015_02_27_105241_create_entity_files_table', 1),
(7, '2015_11_20_184604486385_create_translations_table', 1),
(8, '2015_11_20_184604743083_create_translation_translations_table', 1),
(9, '2017_05_29_155126144426_create_products_table', 1),
(10, '2017_05_30_155126416338_create_product_translations_table', 1),
(11, '2017_08_02_153217_create_options_table', 1),
(12, '2017_08_02_153348_create_option_translations_table', 1),
(13, '2017_08_02_153406_create_option_values_table', 1),
(14, '2017_08_02_153736_create_option_value_translations_table', 1),
(15, '2017_08_03_156576_create_product_options_table', 1),
(16, '2017_08_17_170128_create_related_products_table', 1),
(17, '2017_08_17_175236_create_up_sell_products_table', 1),
(18, '2017_08_17_175828_create_cross_sell_products_table', 1),
(19, '2017_11_09_141332910964_create_categories_table', 1),
(20, '2017_11_09_141332931539_create_category_translations_table', 1),
(21, '2017_11_26_083614526622_create_meta_data_table', 1),
(22, '2017_11_26_083614526828_create_meta_data_translations_table', 1),
(23, '2018_01_24_125642_create_product_categories_table', 1),
(24, '2018_02_04_150917488267_create_coupons_table', 1),
(25, '2018_02_04_150917488698_create_coupon_translations_table', 1),
(26, '2018_03_11_181317_create_coupon_products_table', 1),
(27, '2018_03_15_091937_create_coupon_categories_table', 1),
(28, '2018_04_18_154028776225_create_reviews_table', 1),
(29, '2018_05_17_115822452977_create_currency_rates_table', 1),
(30, '2018_07_03_124153537506_create_sliders_table', 1),
(31, '2018_07_03_124153537695_create_slider_translations_table', 1),
(32, '2018_07_03_133107770172_create_slider_slides_table', 1),
(33, '2018_07_03_133107770486_create_slider_slide_translations_table', 1),
(34, '2018_07_28_190524758357_create_attribute_sets_table', 1),
(35, '2018_07_28_190524758497_create_attribute_set_translations_table', 1),
(36, '2018_07_28_190524758646_create_attributes_table', 1),
(37, '2018_07_28_190524758877_create_attribute_translations_table', 1),
(38, '2018_07_28_190524759461_create_product_attributes_table', 1),
(39, '2018_08_01_001919718631_create_tax_classes_table', 1),
(40, '2018_08_01_001919718935_create_tax_class_translations_table', 1),
(41, '2018_08_01_001919723551_create_tax_rates_table', 1),
(42, '2018_08_01_001919723781_create_tax_rate_translations_table', 1),
(43, '2018_08_03_195922206748_create_attribute_values_table', 1),
(44, '2018_08_03_195922207019_create_attribute_value_translations_table', 1),
(45, '2018_08_04_190524764275_create_product_attribute_values_table', 1),
(46, '2018_08_07_135631306565_create_orders_table', 1),
(47, '2018_08_07_135631309451_create_order_products_table', 1),
(48, '2018_08_07_135631309512_create_order_product_options_table', 1),
(49, '2018_08_07_135631309624_create_order_product_option_values_table', 1),
(50, '2018_09_11_213926106353_create_transactions_table', 1),
(51, '2018_09_19_081602135631_create_order_taxes_table', 1),
(52, '2018_09_19_103745_create_setting_translations_table', 1),
(53, '2018_10_01_224852175056_create_wish_lists_table', 1),
(54, '2018_10_04_185608_create_search_terms_table', 1),
(55, '2018_11_03_160015_create_menus_table', 1),
(56, '2018_11_03_160138_create_menu_translations_table', 1),
(57, '2018_11_03_160753_create_menu_items_table', 1),
(58, '2018_11_03_160804_create_menu_item_translation_table', 1),
(59, '2019_02_05_162605_add_position_to_slider_slides_table', 1),
(60, '2019_02_09_164343_remove_file_id_from_slider_slides_table', 1),
(61, '2019_02_09_164434_add_file_id_to_slider_slide_translations_table', 1),
(62, '2019_02_14_103408_create_attribute_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` tinyint(1) NOT NULL,
  `is_global` tinyint(1) NOT NULL DEFAULT '1',
  `position` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `option_translations`
--

CREATE TABLE `option_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `option_values`
--

CREATE TABLE `option_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `price_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `option_value_translations`
--

CREATE TABLE `option_value_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_value_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` decimal(18,4) UNSIGNED NOT NULL,
  `shipping_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_cost` decimal(18,4) UNSIGNED NOT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `discount` decimal(18,4) UNSIGNED NOT NULL,
  `total` decimal(18,4) UNSIGNED NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` decimal(18,4) NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `customer_email`, `customer_phone`, `customer_first_name`, `customer_last_name`, `billing_first_name`, `billing_last_name`, `billing_address_1`, `billing_address_2`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_first_name`, `shipping_last_name`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `sub_total`, `shipping_method`, `shipping_cost`, `coupon_id`, `discount`, `total`, `payment_method`, `currency`, `currency_rate`, `locale`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'mailtoashikkhan@gmail.com', '9613221221', 'Ashik', 'Khan', 'Ashik', 'Khan', '70 Bir Uttam CR Dattaw road hatirpool Dhanmondi Dhaka 1205', NULL, 'Dhaka', 'DHA', '1205', 'BD', 'Ashik', 'Khan', '70 Bir Uttam CR Dattaw road hatirpool Dhanmondi Dhaka 1205', NULL, 'Dhaka', 'DHA', '1205', 'BD', '15000.0000', 'free_shipping', '0.0000', NULL, '0.0000', '15000.0000', 'cod', 'USD', '1.0000', 'bn_BD', 'refunded', NULL, '2019-03-27 15:52:05', '2019-03-27 18:57:13'),
(2, NULL, 'mgmilon97@gmail.com', NULL, 'Milon', 'Mia', 'Milon', 'Mia', 'Banglamotor', NULL, 'Dhaka', 'DHA', '1000', 'BD', 'Milon', 'Mia', 'Banglamotor', NULL, 'Dhaka', 'DHA', '1000', 'BD', '30000.0000', 'free_shipping', '0.0000', NULL, '0.0000', '30000.0000', 'cod', 'BDT', '1.0000', 'en', 'pending', NULL, '2019-03-27 21:34:51', '2019-03-27 21:34:51'),
(3, NULL, NULL, '01781013627', 'Milon', 'Mahmud', 'Milon', 'Mahmud', 'Farmgate', NULL, 'Dhaka', 'DHA', '1215', 'BD', 'Milon', 'Mahmud', 'Farmgate', NULL, 'Dhaka', 'DHA', '1215', 'BD', '15000.0000', 'free_shipping', '0.0000', NULL, '0.0000', '15000.0000', 'cod', 'BDT', '1.0000', 'en', 'pending', NULL, '2019-03-28 02:18:04', '2019-03-28 02:18:04'),
(4, NULL, NULL, '01781013627', 'Milon', 'Mahmud', 'Milon', 'Mahmud', 'Farmgate', NULL, 'Dhaka', 'BHO', '1000', 'BD', 'Milon', 'Mahmud', 'Farmgate', NULL, 'Dhaka', 'BHO', '1000', 'BD', '15000.0000', 'free_shipping', '0.0000', NULL, '0.0000', '15000.0000', 'cod', 'BDT', '1.0000', 'en', 'pending', NULL, '2019-03-28 02:23:53', '2019-03-28 02:23:53'),
(5, NULL, NULL, '01781013627', 'Milon', 'Mahmud', 'Milon', 'Mahmud', 'Farmgate', NULL, 'Dhaka', 'CT', '1000', 'US', 'Milon', 'Mahmud', 'Farmgate', NULL, 'Dhaka', 'CT', '1000', 'US', '15000.0000', 'free_shipping', '0.0000', NULL, '0.0000', '15000.0000', 'cod', 'BDT', '1.0000', 'en', 'pending', NULL, '2019-03-28 02:25:54', '2019-03-28 02:25:54'),
(6, NULL, NULL, '01925883214', 'Milon', 'Mahmud', 'Milon', 'Mahmud', 'Dhamondi', NULL, 'Dhaka', 'DIN', '1215', 'BD', 'Milon', 'Mahmud', 'Dhamondi', NULL, 'Dhaka', 'DIN', '1215', 'BD', '15000.0000', 'free_shipping', '0.0000', NULL, '0.0000', '15000.0000', 'cod', 'BDT', '1.0000', 'en', 'pending', NULL, '2019-03-28 02:58:12', '2019-03-28 02:58:12'),
(7, NULL, 'adsfdfdd@gmail.com', '01925883214', 'Milon', 'Mia', 'Milon', 'Mia', 'Banglamotor, Dhaka', NULL, 'Dhaka', 'DHA', '1000', 'BD', 'Milon', 'Mia', 'Banglamotor, Dhaka', NULL, 'Dhaka', 'DHA', '1000', 'BD', '15000.0000', 'free_shipping', '0.0000', NULL, '0.0000', '15000.0000', 'cod', 'BDT', '1.0000', 'en', 'pending', NULL, '2019-03-28 03:11:52', '2019-03-28 03:11:52'),
(8, NULL, 'buyandsell.office@gmail.com', '9613221221', 'Ashik', 'Khan', 'Ashik', 'Khan', '70 Bir Uttam CR Dattaw road hatirpool Dhanmondi Dhaka 1205', NULL, 'Dhaka', 'DHA', '1205', 'BD', 'Ashik', 'Khan', '70 Bir Uttam CR Dattaw road hatirpool Dhanmondi Dhaka 1205', NULL, 'Dhaka', 'DHA', '1205', 'BD', '15000.0000', 'free_shipping', '0.0000', NULL, '0.0000', '15000.0000', 'cod', 'USD', '1.0000', 'en', 'pending', NULL, '2019-03-29 00:08:39', '2019-03-29 00:08:39');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `unit_price` decimal(18,4) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `line_total` decimal(18,4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `unit_price`, `qty`, `line_total`) VALUES
(1, 1, 1, '15000.0000', 1, '15000.0000'),
(2, 2, 1, '15000.0000', 2, '30000.0000'),
(3, 3, 1, '15000.0000', 1, '15000.0000'),
(4, 4, 1, '15000.0000', 1, '15000.0000'),
(5, 5, 1, '15000.0000', 1, '15000.0000'),
(6, 6, 1, '15000.0000', 1, '15000.0000'),
(7, 7, 1, '15000.0000', 1, '15000.0000'),
(8, 8, 1, '15000.0000', 1, '15000.0000');

-- --------------------------------------------------------

--
-- Table structure for table `order_product_options`
--

CREATE TABLE `order_product_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_product_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_product_option_values`
--

CREATE TABLE `order_product_option_values` (
  `order_product_option_id` int(10) UNSIGNED NOT NULL,
  `option_value_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(18,4) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_taxes`
--

CREATE TABLE `order_taxes` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(15,4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'about-us', 1, '2019-03-20 08:48:19', '2019-03-20 08:48:19'),
(2, 'praivacy-policy', 1, '2019-03-20 08:51:52', '2019-03-20 08:51:52'),
(3, 'terms-and-use', 1, '2019-03-20 10:25:23', '2019-03-20 10:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `page_translations`
--

CREATE TABLE `page_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_translations`
--

INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `name`, `body`) VALUES
(1, 1, 'en', 'About Us', '<p class=\"aboutus\">Launched in Jun 2011 with trending goods in ecommerce industry for you.</p>\r\n<p class=\"aboutus\">We constantly update focusing on leates upcoming goods from world wide markeplace.&nbsp;</p>\r\n<p class=\"aboutus\">Our dedicated team members are working to deliver the right goods at your door anywhere across Bangladesh. Have a nice experience!&nbsp;</p>'),
(2, 2, 'en', 'একান্ততা ও গোপনীয়তা', '<p><span style=\"font-weight: 400;\">বাই এন্ড সেল এ আপনাকে স্বাগতম। আমরা আপনার গোপনীয়তার প্রতি শ্রদ্ধা জানাই এবং আপনার ব্যক্তিগত তথ্যসমূহকে সুরক্ষিত রাখতে চাই। </span></p>\r\n<p><span style=\"font-weight: 400;\">আপনার ব্যক্তিগত তথ্যসমূহ কিভাবে আমরা সংগ্রহ, ব্যবহার ও প্রকাশ করি।এই সাইটে সরাসরি অথবা অন্য মাধ্যমে প্রবেশের মাধ্যমে আপনি নীতিমালাটি মেনে নিলেন। </span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-weight: 400;\">ডেটা সুরক্ষা বিশ্বাসের ব্যাপার এবং আপনার গোপনীয়তা আমাদের জন্য খুবই গুরুত্বপূর্ণ। সেক্ষেত্রে আমরা শুধুমাত্র আপনার নাম এবং এই গোপনীয়তার নীতিমালার সঙ্গে সম্পর্কিত অন্যান্য তথ্য প্রকাশ করবো। আমরা কেবলমাত্র আমাদের জন্য দরকারি এবং লেনদেনের সঙ্গে প্রাসঙ্গিক তথ্যসমূহ সংগ্রহ করবো। </span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-weight: 400;\">আমরা শুধুমাত্র আইনসঙ্গত কারনে অথবা প্রাসঙ্গিক উদ্দেশ্যে আপনার তথ্য যতদিন রাখা প্রয়োজন, ঠিক ততদিন রাখবো। </span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-weight: 400;\">ব্যক্তিগত তথ্যাদি প্রদান না করেও আপনি এই সাইটে ভিজিট করতে পারেন। ওয়েবসাইট ভিজিটের সময়কালে আপনি নামবিহীন থাকতে পারেন এবং ইউজার আইডি ও পাসওয়ার্ড সহ আপনার কোন অ্যাকাউন্ট না থাকলে আমরা সেক্ষেত্রে আপনাকে সনাক্ত করতে পারবো না।</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-weight: 400;\">এই সাইটে আপনি যদি কোন পণ্যের অর্ডার করেন, তাহলে আমরা কিছু তথ্য সংগ্রহ করতে পারি। </span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-weight: 400;\">এই সাইটে আপনার কেনাকাটা প্রসেস করতে আমরা আপনার ডেটা সংগ্রহ, স্টোর ও প্রসেস করি এবং আমাদের সার্ভিসের মাধ্যমে দরকারি সবকিছু আপনাকে প্রদান করে থাকি। আমরা আপনার কিছু ব্যক্তিগত তথ্য বিশেষ করে আপনার পদবি, নাম, লিঙ্গ, জন্মদিন, ই-মেইল অ্যাড্রেস, পোষ্টাল অ্যাড্রেস, ডেলিভারি অ্যাড্রেস (যদি ব্যতিক্রমধর্মী হয়), টেলিফোন নম্বার, মোবাইল নম্বার, ফ্যাক্স নম্বার, পেমেন্টের বিবরণ, পেমেন্ট কার্ডের বিবরণ অথবা ব্যাংক অ্যাকাউন্টের বিবরণ সংগ্রহ করতে পারি। আমরা আপনার কার্ড নম্বর ভ্যালিডিটি এন্ড সিবিসি কখনই সরাসরি নেইনা &nbsp;&nbsp;</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-weight: 400;\">আপনার অর্ডার প্রসেস করতে আপনার দেওয়া তথ্য আমরা ব্যবহার করবো এবং আপনার অনুরোধের ভিত্তিতেই আমাদের ওয়েবসাইটে প্রয়োজনীয় সার্ভিস ও তথ্য দিয়ে আপনাকে সহায়তা করবো। পরবর্তীতে, আপনার অ্যাকাউন্ট পরিচালনার জন্য আপনার দেওয়া তথ্য আমরা ব্যবহার করবো; আপনার পেমেন্টের কাজে ব্যবহৃত সকল অর্থনৈতিক লেনদেন যাচাই এবং সম্পন্ন করব; আমাদের ওয়েবসাইট থেকে ডাউনলোড হওয়া সকল ডেটা অডিট করা হবে; আমাদের ওয়েবসাইটের পেইজগুলোর লে-আউট ও কনটেন্ট উন্নত করা হবে এবং ব্যবহারকারীদের জন্য কাস্টমাইজ করে দেওয়া হবে; আমাদের ওয়েবসাইটে ভিজিটরদেরকে সনাক্ত করা হবে; আমাদের ব্যবহারকারীর ডেমোগ্রাফীর উপর রিসার্চ করা হবে; আপনার অনুরোধের ভিত্তিতে আমাদের পণ্য ও সার্ভিস সহ আপনার জন্য দরকারি সব তথ্য পাঠানো হবে। আর প্রয়োজন অনুসারে অন্য পণ্য ও সার্ভিস সম্পর্কে বিস্তারিত তথ্য আপনাকে ই-মেইল করে জানানো হবে। আমাদের থেকে যদি কোন বিজ্ঞাপন সংক্রান্ত তথ্য পেতে না চান, তাহলে অপশনটি দেখা থেকে বিরত থাকতে পারেন। </span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-weight: 400;\">আপনার পণ্য ডেলিভারি করতে আমরা আপনার নাম ও ঠিকানা একটি তৃতীয় পক্ষের নিকট হস্তান্তর করতে পারি (যেমন আমাদের কুরিয়ার অথবা সাপ্লায়ার)। আপনাকে অবশ্যই সাইটের তথ্য সঠিকভাবে জমা দিতে হবে এবং তথ্যসমূহ হালনাগাদ করার পাশাপাশি সব পরিবর্তন সম্পর্কে আমাদেরকে জানাতে হবে। </span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-weight: 400;\">আপনার প্রকৃত অর্ডারের বিবরণী আমাদের কাছে স্টোর করা থাকতে পারে কিন্তু নিরাপত্তাজনিত কারনে এটা সরাসরি আমাদের থেকে পুনরুদ্ধার নাও করা যেতে পারে। তবে এই তথ্যের অ্যাক্সেস আপনার অ্যাকাউন্ট দ্বারা সাইটে লগ ইন করেও পেতে পারেন। এখানে আপনার সম্পন্ন করা সকল অর্ডার দেখতে পাবেন, খুবই দ্রুত গতিতে প্রসেস উপযোগী যে অর্ডার সমূহ ওপেন করা আছে এবং এখানে আপনার ঠিকানার বিবরণ, ব্যাংকের বিবরণ (রিফান্ডের উদ্দেশ্যে) এবং আপনার সাবস্ক্রাইব করা যেকোন নিউজলেটার পরিচালনা করতে পারবেন। অবশ্য আপনার ব্যক্তিগত ডেটা চাইলেই নিজের আয়ত্বে রাখতে পারেন এবং অস্বীকৃত তৃতীয় পক্ষের নিকট এটি প্রকাশ নাও করতে পারেন। আপনার পাসওয়ার্ডের কোন প্রকার অপব্যবহারের দ্বায়ভার আমরা বহন্ করতে পারবো না, যদি না আমাদের দ্বারা কোন ভুল হয়।</span></p>\r\n<p><br /><br /></p>\r\n<p><span style=\"font-weight: 400;\">আমরা মার্কেট গবেষণা ও মতামতের জন্য আপনার ব্যক্তিগত তথ্য ব্যবহার করতে পারি। আপনার সকল বিবরণ বেনামি থাকবে এবং শুধুমাত্র পরিসংখ্যান-সংক্রান্ত উদ্দেশ্যে এগুলো ব্যবহৃত হবে। আপনি যেকোন মূহুর্তেই এই অপশনটি পরিবর্তন করে নিতে পারেন। জরিপ কিংবা মতামতের পোল সংক্রান্ত আপনার যেকোন প্রশ্নোত্তর আমরা তৃতীয় পক্ষের নিকট সরবরাহ করি না। আপনি যদি কোন প্রতিযোগিতায় অংশ নিতে চান, তাহলে শুধুমাত্র ই-মেইল অ্যাড্রেস প্রকাশ করা হবে। আপনার ই-মেইল অ্যাড্রেস থেকে পাওয়া জরিপ সংক্রান্ত সকল উত্তর আমরা পর্যায়ক্রমে আলাদাভাবে সংরক্ষণ করে রাখবো। </span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-weight: 400;\">আমাদের আরো কিছু তথ্য আপনাকে পাঠাতে পারি, যেগুলো হতে পারে ওয়েবসাইট, আমাদের অন্যান্য ওয়েবসাইট, আমাদের পণ্য, বিক্রয়ের প্রচারণা, আমাদের নিউজলেটার, আমাদের গ্রুপে অন্যান্য কোম্পানি সম্পর্কিত যে কোন তথ্য অথবা আমাদের ব্যবসায়িক পার্টনারদের তথ্য। এই অনুচ্ছেদে (অথবা এটার অন্য কোন অংশ) উল্লেখিত এসকল বাড়তি তথ্য আপনি যদি পছন্দ করতে না চান, তাহলে আপনাকে পাঠানো যেকোন ইমেইলে দেওয়া লিংকে অনুগ্রহ করে &lsquo;আনসাবস্ক্রাইব&rsquo; - এ ক্লিক করুন। সাত কর্মদিবসের মধ্যে (বাংলাদেশে শুক্রবার নতুবা যেকোন সরকারি ছুটির দিন ছাড়া) সব নির্দেশনা আপনাকে অনুরোধের ভিত্তিতে জানানো হবে। যদি আপনার তথ্য অস্পষ্ট হয়, তাহলে তথ্য যাচাইকরণের জন্য আপনার সাথে যোগাযোগ করা হবে। </span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-weight: 400;\">সাধারণভাবে আমরা ব্যবহারকারীদের ডেটা সাইটে গোপন রাখতে পারি এবং বিভিন্ন কাজে ব্যবহার করতে পারি যেমন ব্যবহারকারীর সাধারণ অবস্থান ও সাইটে ব্যবহারকারীর বিশেষ তথ্য অথবা ই-মেইলে ব্যবহারকারীর জন্য পাঠানো যে কোন লিংক এবং প্রকাশকদের মত কিছু তৃতীয় পক্ষের নিকট আমরা ডেটাসমূহ সরবরাহ করতে পারি। এছাড়া, এই গোপনীয় ডেটাসমূহ কখনোই আপনাকে ব্যক্তিগতভাবে সনাক্ত করতে সক্ষম হবে না।</span></p>\r\n<p><br /><br /></p>\r\n<p><span style=\"font-weight: 400;\">যে কোন প্রতিযোগিতায় বিজয়ীদেরকে তথ্য জানাতে এবং আমাদের অফারের বিজ্ঞাপন করতে আমরা ডেটা ব্যবহার করে থাকি। কোন বিশেষ প্রতিযোগিতায় অংশগ্রহণের নীতিমালা সম্পর্কে জানতে আরো বিস্তারিত তথ্য দেখে নিতে পারেন।</span></p>\r\n<p><br /><br /></p>\r\n<p><span style=\"font-weight: 400;\">আমাদের গ্রুপের মধ্যে থাকা অন্যান্য কোম্পানি সমূহকে আমরা আপনার বিবরণী প্রদান করতে পারি। গোপনীয়তার নীতিমালা মেনেই আপনার ব্যবহৃত সকল ডেটা আমাদের এজেন্ট ও সাব-কন্ট্রাকটরদেরকে প্রদান করতে পারি। উদাহরণস্বরূপ, আপনাকে পণ্য ডেলিভার করতে, আপনার থেকে পেমেন্ট সংগ্রহ করতে, ডেটা অ্যানালাইজ করতে এবং মার্কেটিং অথবা কাস্টমার সার্ভিস সহ অন্যান্য সহযোগিতার খাতিরে আমরা তৃতীয় পক্ষকে ব্যবহার করতে পারি। </span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-weight: 400;\">জালিয়াতি থেকে সুরক্ষা পাবার উদ্দেশ্যে এবং ক্রেডিটের ঝুঁকি কমানোর লক্ষ্যে আমরা আপনার তথ্যসমূহ তৃতীয় পক্ষের সাথে আদান-প্রদান করতে পারি। আমরা আপনার ব্যক্তিগত তথ্যের ডাটাবেজ ট্রান্সফার করতে পারি, যদি আমাদের ব্যবসা অথবা এটার কিছু অংশ বিক্রয় করে ফেলি। আমাদের গোপনীয়তার নীতিমালা অনুসারে আপনার যথাযথ অনুমতি ব্যাতিত আপনার কোন তথ্য আমরা তৃতীয় পক্ষের নিকট বিক্রয় অথবা প্রকাশ করবো না, যদিনা আইন অনুসারে এটা করা আমাদের জন্য দরকারি হয়। এই সাইটে তৃতীয় পক্ষের বিভিন্ন বিজ্ঞাপন থাকতে পারে অথবা অন্য সাইটের ফ্রেম ও লিংক থাকতে পারে। অনুগ্রহ করে সতর্ক থাকবেন যে, আমরা কোন তৃতীয় পক্ষ অথবা অন্য কোন সাইটের গোপনীয়তা অথবা কনটেন্ট সম্পর্কে দায়বদ্ধ থাকবো না, এমনকি আমাদের গোপনীয়তার নীতিমালার আওতায় তৃতীয় পক্ষকে পাঠানো আপনার ডেটা সমূহের দায়ভারও আমাদের কাছে থাকবে না।</span></p>\r\n<p><br /><br /></p>\r\n<p><span style=\"font-weight: 400;\">সাইটের পরিদর্শন করার জন্য কুকিজের স্বীকৃতি প্রয়োজন নয়। যাইহোক আমরা ইঙ্গিত করতে চাই যে সাইট এবং অর্ডারের \'টোপ\' কার্যকারিতা ব্যবহার শুধুমাত্র কুকিজ অ্যাক্টিভেশন সহ সম্ভব। কুকিজ ক্ষুদ্র পাঠ্য ফাইল যা আপনার কম্পিউটারকে আমাদের সার্ভারে একটি অনন্য ব্যবহারকারী হিসাবে সনাক্ত করে যখন আপনি সাইটের নির্দিষ্ট পৃষ্ঠাগুলি পরিদর্শন করেন এবং আপনার কম্পিউটারের হার্ডড্রয়ে আপনার ইন্টারনেট ব্রাউজারে সেগুলি সংরক্ষণ করা হয়। কুকিজ আপনার ইন্টারনেট প্রোটোকল ঠিকানাটি সনাক্ত করার জন্য ব্যবহার করা যেতে পারে, আপনি যখন থাকবেন বা সাইটে ঢুকতে চান তখন আপনাকে সংরক্ষণ করতে পারবেন। সাইটটি ব্যবহার করার জন্য আমরা শুধুমাত্র আপনার সুবিধার জন্য কুকি ব্যবহার করি (উদাহরণস্বরূপ, আপনি যখন আপনার শপিং কার্টে আপনার ইমেইল ঠিকানাটি পুনরায় প্রবেশ না করে আপনার কাস্টমস পরিবর্তন করতে চান তখন আপনি কে মনে রাখবেন) এবং আপনার সম্পর্কে অন্য কোন তথ্য প্রাপ্ত বা ব্যবহার না করার জন্য (জন্য উদাহরণস্বরূপ লক্ষ্যযুক্ত বিজ্ঞাপন) আপনার ব্রাউজার কুকি গ্রহণ না করার জন্য সেট করা যেতে পারে, কিন্তু এটি আপনার সাইটের ব্যবহারের সীমিত করবে। দয়া করে আমাদের নিশ্চয়তা স্বীকার করুন যে কুকিগুলির আমাদের ব্যবহারে কোনও ব্যক্তিগত বা ব্যক্তিগত বিবরণ নেই এবং ভাইরাস থেকে মুক্ত। ওয়েবসাইটটি আপনার ওয়েবসাইটের মূল্যায়নের উদ্দেশ্যে, ওয়েবসাইট অপারেটরদের ওয়েবসাইটে কার্যকলাপের রিপোর্টগুলি সংকলন এবং ওয়েবসাইট ক্রিয়াকলাপ এবং ইন্টারনেট ব্যবহারের সাথে সম্পর্কিত অন্যান্য পরিষেবাগুলি প্রদানের জন্য গুগল এই তথ্যটি ব্যবহার করবে। গুগল তৃতীয় পক্ষের কাছে এই তথ্য স্থানান্তর করতে পারে যেখানে আইন দ্বারা এটি করতে হয়, অথবা এমন তৃতীয় পক্ষ গুগল এর পক্ষ থেকে তথ্য প্রক্রিয়া করে। গুগল আপনার আইপি ঠিকানাকে গুগল এর যে কোনও তথ্য দিয়ে সংযুক্ত করবে না আপনি আপনার ব্রাউজারের যথাযথ সেটিংস নির্বাচন করে কুকিজ ব্যবহার অস্বীকার করতে পারেন, তবে দয়া করে মনে রাখবেন যে যদি আপনি এটি করেন তবে আপনি এই ওয়েবসাইটের সম্পূর্ণ কার্যকারিতা ব্যবহার করতে সক্ষম হবেন না। এই ওয়েবসাইটটি ব্যবহার করে, আপনি গুগল এর মাধ্যমে আপনার সম্পর্কে ডেটা প্রক্রিয়াকরণ এবং পদ্ধতিতে প্রক্রিয়াকরণের সাথে সম্মত হন।</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-weight: 400;\">অস্বীকৃত অথবা বেআইনি সংযোগ বন্ধে অথবা দুর্ঘটনালব্ধ ক্ষয়-ক্ষতি কিংবা কোন তথ্যের ক্ষতি এড়াতে আমরা উন্নত প্রযুক্তি এবং শক্তিশালী সুরক্ষা ব্যবস্থা ব্যবহার করে থাকি। সাইটে যখন আমরা কোন ডাটা সংগ্রহ করি, তখন আপনার ব্যক্তিগত বিবরণ একটি সুরক্ষিত সার্ভারে সংগ্রহ করে থাকি। আমাদের সার্ভারে আমরা ফায়ারওয়েল ব্যবহার করি। আমাদের সুরক্ষা ব্যবস্থায় আমরা আপনার ব্যক্তিগত তথ্য প্রকাশের পূর্বে খুব কমই ব্যক্তির পরিচিতি প্রমাণের জন্য অনুরোধ পাঠাই। আপনার কম্পিউটারে এবং আপনার পাসওয়ার্ডে অস্বীকৃত সংযোগ প্রতিরক্ষার ক্ষেত্রে একমাত্র আপনিই দায়বদ্ধ থাকবেন।</span></p>'),
(3, 3, 'en', 'নীতি এবং শর্তাবলী', '<p>অর্ডার কনফার্মেশনের পরেও অনিবার্য কারনবশত যেকোনো সময়ে বাই এন্ড সেল আপনার অর্ডার বাতিল করার ক্ষমতা রাখে।</p>\r\n<p>আপনার অর্ডারকৃত প্রোডাক্ট স্টকে থাকা সাপেক্ষে ডেলিভারি করা হবে |</p>\r\n<p>প্রোডাক্ট ডেলিভারি নেয়ার&nbsp;পর যদি মনে হয় সঠিক প্রোডাক্ট আপনি পাননি তবে সাথে সাথে আমাদের কে&nbsp;০৯৬১৩ ২২১ ২২১ এই নম্বর এ অবহিত করুন |</p>\r\n<p>প্রোডাক্ট ভাঙ্গা, ছেঁড়া, ভুল সাইজ, প্রোডাক্ট কাজ না করা, ছবির সাথে প্রোডাক্টের মিল না থাকা ইত্যাদি সমস্যার ক্ষেত্রে আপনি ক্রয়কৃত প্রোডাক্টটির সম্পূর্ণ মূল্য নিচের শর্ত সাপেক্ষে ফেরত পেতে পারেন।</p>\r\n<p>&nbsp;</p>\r\n<p>শর্ত ক. সর্বোচ্চ&nbsp;<strong>৪৮</strong>&nbsp;ঘণ্টার মধ্যে আপনাকে&nbsp;<a href=\"mailto:buyandsell.complain@gmail.com\">buyandsell.complain@gmail.com</a>&nbsp; এ মেইল&nbsp;কমপ্লেইন রেজিস্টার করতে হবে।&nbsp;<br />শর্ত খ. রিফান্ডের ক্ষেত্রে প্রোডাক্টটির বাক্স সহ সম্পূর্ণ অক্ষত অবস্থায় থাকতে হবে।&nbsp;<br />শর্ত গ. আপনাকে উক্ত প্রোডাক্টটি আজকেরডিল-এর অফিসে অবশ্যই সর্বোচ্চ&nbsp;<strong>৭</strong>&nbsp;কার্যদিবসের মধ্যে নিজ দায়িত্বে ফেরত পাঠাতে হবে।</p>');

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 'VbTqE6VMGbC4i57U13q9LE0AZKDoj4vV', '2019-03-20 07:04:16', '2019-03-20 07:04:16'),
(2, 1, 'gDkRZBZGzB0666cSuhIeyauq6XnKcjNE', '2019-03-20 08:04:28', '2019-03-20 08:04:28'),
(3, 1, 'Xfn7LvETyGNNdJH2J2pzXIer65QDIBfx', '2019-03-20 19:23:11', '2019-03-20 19:23:11'),
(4, 1, 'bN6wVgfztGOVLdj6v5cLtxxUD6VtNjVC', '2019-03-21 01:29:15', '2019-03-21 01:29:15'),
(5, 1, 'UErGMxbXSFpGnoWqncsNwAccS46irgmU', '2019-03-21 15:29:14', '2019-03-21 15:29:14'),
(6, 1, 'JlCH0AsnQi6yGHuaG4lSnwPrG8lCs4HP', '2019-03-21 16:10:57', '2019-03-21 16:10:57'),
(7, 1, 'simCj9W9KLzlV6ZZAF9WXvK5KVHvNTHi', '2019-03-21 17:02:19', '2019-03-21 17:02:19'),
(8, 1, 'Glsd289VHNwPRRn4LzxpuZymbJxrLyyz', '2019-03-21 19:32:18', '2019-03-21 19:32:18'),
(9, 1, 'nzpuF4kgAhvM7wX65LzyozZU3zKGWH90', '2019-03-22 02:27:36', '2019-03-22 02:27:36'),
(11, 1, 'zKfN9NDPKRLnlL0GXiOMRzhEr8IYJW0E', '2019-03-23 21:43:57', '2019-03-23 21:43:57'),
(12, 1, '6kfibS6zd45BY6WxxpWVpvlfDlAlUNti', '2019-03-24 16:58:27', '2019-03-24 16:58:27'),
(13, 1, 'QjktzAZT9RFGIBEDQQWE7BEhu7aGYivW', '2019-03-24 20:21:25', '2019-03-24 20:21:25'),
(14, 1, 'A2mo2zOZlwnUjtQRZFRPSJAT1ce9eGDv', '2019-03-25 02:26:58', '2019-03-25 02:26:58'),
(15, 1, '0LT8AHezDpLn4dbhOxZZq5Wg2iVqANXT', '2019-03-25 02:40:32', '2019-03-25 02:40:32'),
(17, 1, '530cRchTBGT9QdVeMcQ7o7mLqzFz1fFd', '2019-03-25 20:19:35', '2019-03-25 20:19:35'),
(18, 1, 'wdePP9hKDvEKghHCeewCf7s4yxzQGkP7', '2019-03-25 22:04:44', '2019-03-25 22:04:44'),
(19, 1, 'yx26GBK8yemHdDvUvboixXYHuS6y4xAJ', '2019-03-26 18:37:56', '2019-03-26 18:37:56'),
(20, 1, 'gFXmAZcwmUMWpTxjxwoPuVNl5zBWKmvP', '2019-03-26 18:41:30', '2019-03-26 18:41:30'),
(21, 1, 'nZFtehoHvZZlqmrjQW8JNg3xS0Le4aYC', '2019-03-26 18:49:19', '2019-03-26 18:49:19'),
(22, 1, '69rMpRNk5QqVSMKVQx5rjBi9Z2HwyXBy', '2019-03-26 19:00:08', '2019-03-26 19:00:08'),
(23, 1, 'DIvXvogEyewfwH2oOHCHfVsqL2C5wtjj', '2019-03-27 00:25:05', '2019-03-27 00:25:05'),
(25, 1, '5qiZhp8GvTAPKmFLE0X1j6q8FKXojGDR', '2019-03-27 05:39:22', '2019-03-27 05:39:22'),
(26, 1, '215KgmOCsLwiEm3ZhITDV3Avv7nEnXOJ', '2019-03-27 14:09:36', '2019-03-27 14:09:36'),
(28, 1, 'b9PEcIWfQwjUJFXmh6R0DHtqmyghq56M', '2019-03-27 14:57:23', '2019-03-27 14:57:23'),
(31, 1, 'BgYhrwl933seF5tKqIZ23Ir5yhyoZ3Dw', '2019-03-27 15:47:02', '2019-03-27 15:47:02'),
(32, 1, 'mDdC14aZmHYeaJvzuE7Issymzic8olZB', '2019-03-27 17:03:35', '2019-03-27 17:03:35'),
(33, 1, '674axpHiu7bn35aIPriUoAMuIcbRJjrg', '2019-03-27 23:35:33', '2019-03-27 23:35:33'),
(34, 1, 'pWhiu0hUdOX0kCJW5kShMb7yQXZltfaW', '2019-03-28 03:00:00', '2019-03-28 03:00:00'),
(35, 1, 'gkUWAZ1jayILV82OD3fEcHhUpcqHpN59', '2019-03-28 05:16:09', '2019-03-28 05:16:09'),
(36, 1, 'olCJdWkkgBwKWnLfQMa4erufG43awLJv', '2019-03-28 17:27:18', '2019-03-28 17:27:18'),
(37, 1, 'Uav025sJud9IIvWVHaCfOWb53RucgOsR', '2019-03-29 00:14:43', '2019-03-29 00:14:43'),
(38, 1, '5FHswjCyGD5tj4akuzkWwlY9kQ2Pnnbd', '2019-03-29 00:51:13', '2019-03-29 00:51:13'),
(39, 1, 'FPDeWu32rNtDpVCv7NodjOLT3UT4u6wi', '2019-03-29 11:29:26', '2019-03-29 11:29:26'),
(40, 1, 'XX46WejPp1dvgGIRkq3HU855p8hBtuUh', '2019-03-30 16:14:42', '2019-03-30 16:14:42'),
(41, 1, 'bWlJOfJHjBTmDE0nyg76VBbTpqTe9e3g', '2019-03-30 23:56:07', '2019-03-30 23:56:07'),
(42, 1, 'ea1BeYWHo9VqwxwqVrBzH9D9qiWGE8iz', '2019-03-31 04:45:53', '2019-03-31 04:45:53'),
(43, 1, 'F58QrOJWNwN6upC9X4vYGx1aMfRiRAI0', '2019-03-31 14:46:27', '2019-03-31 14:46:27');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_class_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(18,4) UNSIGNED NOT NULL,
  `special_price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `special_price_start` date DEFAULT NULL,
  `special_price_end` date DEFAULT NULL,
  `selling_price` decimal(18,4) UNSIGNED DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manage_stock` tinyint(1) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `in_stock` tinyint(1) NOT NULL,
  `viewed` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL,
  `new_from` datetime DEFAULT NULL,
  `new_to` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `tax_class_id`, `slug`, `price`, `special_price`, `special_price_start`, `special_price_end`, `selling_price`, `sku`, `manage_stock`, `qty`, `in_stock`, `viewed`, `is_active`, `new_from`, `new_to`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'apple-iphone-6-32gb-gray', '15000.0000', '12000.0000', '2019-03-31', '2019-03-31', '15000.0000', '01', 0, NULL, 1, 26, 1, NULL, NULL, NULL, '2019-03-25 15:43:49', '2019-03-31 15:38:36'),
(2, NULL, 'iphone-6-570x570', '50000.0000', '45000.0000', '2019-03-25', '2019-03-31', '45000.0000', '02', 0, NULL, 0, 8, 1, NULL, NULL, NULL, '2019-03-25 16:38:44', '2019-03-30 18:10:07');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `product_id`, `attribute_id`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_values`
--

CREATE TABLE `product_attribute_values` (
  `product_attribute_id` int(10) UNSIGNED NOT NULL,
  `attribute_value_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attribute_values`
--

INSERT INTO `product_attribute_values` (`product_attribute_id`, `attribute_value_id`) VALUES
(1, 1),
(1, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`product_id`, `category_id`) VALUES
(1, 9),
(2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `product_options`
--

CREATE TABLE `product_options` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

CREATE TABLE `product_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `locale`, `name`, `description`, `short_description`) VALUES
(1, 1, 'en', 'Apple Iphone 6-32GB-Gray', '<p>Apple Iphone 6-32GB-Gray</p>', NULL),
(2, 2, 'en', 'iphone-6-570x570', '<table class=\"table\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<h4>Specifications</h4>\r\n</td>\r\n<td>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">Brand</label>Huawei</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<h4>Network</h4>\r\n</td>\r\n<td>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">Technology</label>GSM / HSPA / LTE</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<h4>Display</h4>\r\n</td>\r\n<td>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">Type</label>IPS LCD capacitive touchscreen, 16M colors</div>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">Size</label>6.5 inches, 103.2 cm2 (~84.0% screen-to-body ratio)</div>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">Resolution</label>1080 x 2280 pixels, 19:9 ratio (~408 ppi density)</div>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">Multitouch</label>Yes</div>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">Protection</label>Corning Gorilla Glass 3</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<h4>Platform</h4>\r\n</td>\r\n<td>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">OS</label>Android 9.0 (Pie)</div>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">Chipset</label>Hisilicon Kirin 970 (10 nm)</div>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">CPU</label>Octa-core (4x2.8 GHz Kryo 385 Gold &amp; 4x1.7 GHz Kryo 385 Silver)</div>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">GPU</label>Adreno 630</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<h4>Memory</h4>\r\n</td>\r\n<td>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">Card Slot</label>microSD, up to 400 GB (uses SIM 2 slot), microSD, up to 512 GB (dedicated slot)</div>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">Internal</label>128 GB, 8 GB RAM</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<h4>Main Camera</h4>\r\n</td>\r\n<td>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">Tripple</label>48 MP, f/1.8, PDAF, 16 MP, f/2.2, PDAF, 2 MP, f/2.4, depth sensor</div>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">Video</label>2160p@30fps, 1080p@30fps (gyro-EIS)</div>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">Video</label>2160p@30fps, 1080p@30fps</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<h4>Selfie Camera</h4>\r\n</td>\r\n<td>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">Single</label>24 MP, f/2.0, 26mm (wide)</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<h4>Sound</h4>\r\n</td>\r\n<td>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">Alert types</label>Vibration; MP3, WAV ringtones</div>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">Loudspeaker</label>Yes</div>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">3.5mm jack</label>Yes</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<h4>Comms</h4>\r\n</td>\r\n<td>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">WLAN</label>Wi-Fi 802.11 a/b/g/n/ac, dual-band, WiFi Direct, hotspot</div>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">Bluetooth</label>5.0, A2DP, EDR, LE</div>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">GPS</label>Yes, with A-GPS, GLONASS, BDS</div>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">Radio</label>No</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<h4>Features</h4>\r\n</td>\r\n<td>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">Messaging</label>SMS(threaded view), MMS, Email, Push Email, IM</div>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">Browser</label>HTML5</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<h4>Battery</h4>\r\n</td>\r\n<td>\r\n<div class=\"information-data clearfix\"><label class=\"pull-left\">Battery</label>Non-removable Li-Ion 3750 mAh battery</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `related_products`
--

CREATE TABLE `related_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `related_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `reviewer_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `reviewer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `permissions`, `created_at`, `updated_at`) VALUES
(1, '{\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.products.index\":true,\"admin.products.create\":true,\"admin.products.edit\":true,\"admin.products.destroy\":true,\"admin.attributes.index\":true,\"admin.attributes.create\":true,\"admin.attributes.edit\":true,\"admin.attributes.destroy\":true,\"admin.attribute_sets.index\":true,\"admin.attribute_sets.create\":true,\"admin.attribute_sets.edit\":true,\"admin.attribute_sets.destroy\":true,\"admin.options.index\":true,\"admin.options.create\":true,\"admin.options.edit\":true,\"admin.options.destroy\":true,\"admin.filters.index\":true,\"admin.filters.create\":true,\"admin.filters.edit\":true,\"admin.filters.destroy\":true,\"admin.reviews.index\":true,\"admin.reviews.create\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.orders.index\":true,\"admin.orders.show\":true,\"admin.orders.edit\":true,\"admin.transactions.index\":true,\"admin.coupons.index\":true,\"admin.coupons.create\":true,\"admin.coupons.edit\":true,\"admin.coupons.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.media.index\":true,\"admin.media.create\":true,\"admin.media.destroy\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.currency_rates.index\":true,\"admin.currency_rates.edit\":true,\"admin.taxes.index\":true,\"admin.taxes.create\":true,\"admin.taxes.edit\":true,\"admin.taxes.destroy\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.reports.index\":true,\"admin.settings.edit\":true,\"admin.storefront.edit\":true}', '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(2, NULL, '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(3, '{\"admin.attributes.index\":false,\"admin.attributes.create\":false,\"admin.attributes.edit\":false,\"admin.attributes.destroy\":false,\"admin.attribute_sets.index\":false,\"admin.attribute_sets.create\":false,\"admin.attribute_sets.edit\":false,\"admin.attribute_sets.destroy\":false,\"admin.categories.index\":false,\"admin.categories.create\":false,\"admin.categories.edit\":false,\"admin.categories.destroy\":false,\"admin.coupons.index\":false,\"admin.coupons.create\":false,\"admin.coupons.edit\":false,\"admin.coupons.destroy\":false,\"admin.currency_rates.index\":false,\"admin.currency_rates.edit\":false,\"admin.media.destroy\":false,\"admin.menus.index\":false,\"admin.menus.create\":false,\"admin.menus.edit\":false,\"admin.menus.destroy\":false,\"admin.menu_items.index\":false,\"admin.menu_items.create\":false,\"admin.menu_items.edit\":false,\"admin.menu_items.destroy\":false,\"admin.options.index\":false,\"admin.options.create\":false,\"admin.options.edit\":false,\"admin.options.destroy\":false,\"admin.orders.edit\":false,\"admin.pages.index\":false,\"admin.pages.create\":false,\"admin.pages.edit\":false,\"admin.pages.destroy\":false,\"admin.products.create\":false,\"admin.products.destroy\":false,\"admin.settings.edit\":false,\"admin.sliders.index\":false,\"admin.sliders.create\":false,\"admin.sliders.edit\":false,\"admin.sliders.destroy\":false,\"admin.taxes.index\":false,\"admin.taxes.create\":false,\"admin.taxes.edit\":false,\"admin.taxes.destroy\":false,\"admin.transactions.index\":false,\"admin.translations.index\":false,\"admin.translations.edit\":false,\"admin.users.index\":false,\"admin.users.create\":false,\"admin.users.edit\":false,\"admin.users.destroy\":false,\"admin.roles.index\":false,\"admin.roles.create\":false,\"admin.roles.edit\":false,\"admin.roles.destroy\":false,\"admin.storefront.edit\":false}', '2019-03-27 15:35:59', '2019-03-27 15:40:49');

-- --------------------------------------------------------

--
-- Table structure for table `role_translations`
--

CREATE TABLE `role_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_translations`
--

INSERT INTO `role_translations` (`id`, `role_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Admin'),
(2, 2, 'en', 'Customer'),
(3, 3, 'en', 'In charge');

-- --------------------------------------------------------

--
-- Table structure for table `search_terms`
--

CREATE TABLE `search_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `term` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `results` int(10) UNSIGNED NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `search_terms`
--

INSERT INTO `search_terms` (`id`, `term`, `results`, `hits`, `created_at`, `updated_at`) VALUES
(1, 'Salman', 0, 3, '2019-03-23 00:11:40', '2019-03-23 14:54:48'),
(2, 'New', 0, 8, '2019-03-27 00:06:23', '2019-03-27 14:56:07'),
(3, 'apple iphone 6-32gb-gray', 1, 1, '2019-03-31 04:42:13', '2019-03-31 04:42:13'),
(4, 'a', 1, 1, '2019-03-31 04:43:12', '2019-03-31 04:43:12');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_translatable` tinyint(1) NOT NULL DEFAULT '0',
  `plain_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `is_translatable`, `plain_value`, `created_at`, `updated_at`) VALUES
(1, 'store_name', 1, NULL, '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(2, 'store_email', 0, 's:27:\"buyandsell.office@gmail.com\";', '2019-03-20 07:03:26', '2019-03-27 05:07:02'),
(3, 'search_engine', 0, 's:5:\"mysql\";', '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(4, 'algolia_app_id', 0, 'N;', '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(5, 'algolia_secret', 0, 'N;', '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(6, 'active_theme', 0, 's:10:\"Storefront\";', '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(7, 'supported_countries', 0, 'a:2:{i:0;s:2:\"BD\";i:1;s:2:\"US\";}', '2019-03-20 07:03:26', '2019-03-21 19:43:49'),
(8, 'default_country', 0, 's:2:\"BD\";', '2019-03-20 07:03:26', '2019-03-27 05:07:02'),
(9, 'supported_locales', 0, 'a:2:{i:0;s:5:\"bn_BD\";i:1;s:2:\"en\";}', '2019-03-20 07:03:26', '2019-03-21 19:43:49'),
(10, 'default_locale', 0, 's:2:\"en\";', '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(11, 'default_timezone', 0, 's:10:\"Asia/Dhaka\";', '2019-03-20 07:03:26', '2019-03-20 10:34:26'),
(12, 'customer_role', 0, 's:1:\"2\";', '2019-03-20 07:03:26', '2019-03-20 10:34:26'),
(13, 'reviews_enabled', 0, 's:1:\"1\";', '2019-03-20 07:03:26', '2019-03-20 10:34:26'),
(14, 'auto_approve_reviews', 0, 's:1:\"1\";', '2019-03-20 07:03:26', '2019-03-20 10:34:26'),
(15, 'supported_currencies', 0, 'a:2:{i:0;s:3:\"BDT\";i:1;s:3:\"USD\";}', '2019-03-20 07:03:26', '2019-03-27 16:28:41'),
(16, 'default_currency', 0, 's:3:\"BDT\";', '2019-03-20 07:03:26', '2019-03-25 17:06:23'),
(17, 'send_order_invoice_email', 0, 's:1:\"1\";', '2019-03-20 07:03:26', '2019-03-27 05:07:02'),
(18, 'local_pickup_cost', 0, 's:3:\"150\";', '2019-03-20 07:03:26', '2019-03-25 17:11:06'),
(19, 'flat_rate_cost', 0, 's:3:\"250\";', '2019-03-20 07:03:26', '2019-03-25 17:12:26'),
(20, 'free_shipping_label', 1, NULL, '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(21, 'local_pickup_label', 1, NULL, '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(22, 'flat_rate_label', 1, NULL, '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(23, 'paypal_express_label', 1, NULL, '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(24, 'paypal_express_description', 1, NULL, '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(25, 'stripe_label', 1, NULL, '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(26, 'stripe_description', 1, NULL, '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(27, 'cod_label', 1, NULL, '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(28, 'cod_description', 1, NULL, '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(29, 'bank_transfer_label', 1, NULL, '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(30, 'bank_transfer_description', 1, NULL, '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(31, 'check_payment_label', 1, NULL, '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(32, 'check_payment_description', 1, NULL, '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(33, 'storefront_copyright_text', 0, 's:43:\"2011-2019 Buy And Sell. All rights reserved\";', '2019-03-20 07:03:26', '2019-03-27 04:58:09'),
(34, 'storefront_feature_1_icon', 0, 's:11:\"fa fa-truck\";', '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(35, 'storefront_feature_1_title', 1, 's:13:\"Free Delivery\";', '2019-03-20 07:03:26', '2019-03-20 08:05:25'),
(36, 'storefront_feature_1_subtitle', 1, 's:15:\"Orders over $60\";', '2019-03-20 07:03:26', '2019-03-20 08:05:25'),
(37, 'storefront_feature_2_icon', 0, 's:18:\"fa fa-commenting-o\";', '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(38, 'storefront_feature_2_title', 1, 's:12:\"99% Customer\";', '2019-03-20 07:03:26', '2019-03-20 08:05:25'),
(39, 'storefront_feature_2_subtitle', 1, 's:9:\"Feedbacks\";', '2019-03-20 07:03:26', '2019-03-20 08:05:25'),
(40, 'storefront_feature_3_icon', 0, 's:17:\"fa fa-credit-card\";', '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(41, 'storefront_feature_3_title', 1, 's:7:\"Payment\";', '2019-03-20 07:03:26', '2019-03-20 08:05:25'),
(42, 'storefront_feature_3_subtitle', 1, 's:14:\"Secured system\";', '2019-03-20 07:03:26', '2019-03-20 08:05:25'),
(43, 'storefront_feature_4_icon', 0, 's:16:\"fa fa-headphones\";', '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(44, 'storefront_feature_4_title', 1, 's:12:\"24/7 Support\";', '2019-03-20 07:03:26', '2019-03-20 08:05:25'),
(45, 'storefront_feature_4_subtitle', 1, 's:14:\"Helpline - 121\";', '2019-03-20 07:03:26', '2019-03-20 08:05:25'),
(46, 'storefront_recently_viewed_section_enabled', 0, 's:1:\"1\";', '2019-03-20 07:03:26', '2019-03-20 08:05:26'),
(47, 'storefront_recently_viewed_section_title', 1, 's:15:\"Recently Viewed\";', '2019-03-20 07:03:26', '2019-03-20 08:05:25'),
(48, 'storefront_recently_viewed_section_total_products', 0, 's:1:\"5\";', '2019-03-20 07:03:26', '2019-03-20 08:05:26'),
(49, 'storefront_theme', 0, 's:17:\"theme-marrs-green\";', '2019-03-20 08:05:24', '2019-03-27 04:55:45'),
(50, 'storefront_layout', 0, 's:19:\"slider_with_banners\";', '2019-03-20 08:05:24', '2019-03-31 06:22:59'),
(51, 'storefront_slider', 0, 's:1:\"3\";', '2019-03-20 08:05:24', '2019-03-31 04:54:45'),
(52, 'storefront_terms_page', 0, 's:1:\"3\";', '2019-03-20 08:05:24', '2019-03-25 20:44:53'),
(53, 'storefront_privacy_page', 0, 's:1:\"2\";', '2019-03-20 08:05:24', '2019-03-25 20:44:53'),
(54, 'storefront_footer_address', 0, 's:58:\"70 Bir Uttam CR dattaw road hatirpool Dhanmondi Dhaka 1205\";', '2019-03-20 08:05:25', '2019-03-27 04:58:09'),
(55, 'storefront_favicon', 0, 's:1:\"1\";', '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(56, 'storefront_header_logo', 0, 's:2:\"60\";', '2019-03-20 08:05:25', '2019-03-26 19:31:51'),
(57, 'storefront_footer_logo', 0, 's:2:\"60\";', '2019-03-20 08:05:25', '2019-03-27 04:59:55'),
(58, 'storefront_primary_menu', 0, 's:1:\"1\";', '2019-03-20 08:05:25', '2019-03-20 08:53:45'),
(59, 'storefront_category_menu_title', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(60, 'storefront_footer_menu_title', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(61, 'storefront_slider_banner_1_file_id', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(62, 'storefront_slider_banner_1_caption_1', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(63, 'storefront_slider_banner_1_caption_2', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(64, 'storefront_slider_banner_1_call_to_action_text', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(65, 'storefront_slider_banner_2_file_id', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(66, 'storefront_slider_banner_2_caption_1', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(67, 'storefront_slider_banner_2_caption_2', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(68, 'storefront_slider_banner_2_call_to_action_text', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(69, 'storefront_banner_section_1_banner_1_file_id', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(70, 'storefront_banner_section_1_banner_1_caption_1', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(71, 'storefront_banner_section_1_banner_1_caption_2', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(72, 'storefront_banner_section_1_banner_1_call_to_action_text', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(73, 'storefront_banner_section_1_banner_2_file_id', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(74, 'storefront_banner_section_1_banner_2_caption_1', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(75, 'storefront_banner_section_1_banner_2_caption_2', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(76, 'storefront_banner_section_1_banner_2_call_to_action_text', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(77, 'storefront_banner_section_1_banner_3_file_id', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(78, 'storefront_banner_section_1_banner_3_caption_1', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(79, 'storefront_banner_section_1_banner_3_caption_2', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(80, 'storefront_banner_section_1_banner_3_call_to_action_text', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(81, 'storefront_product_carousel_section_title', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(82, 'storefront_recent_products_section_title', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(83, 'storefront_banner_section_2_banner_file_id', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(84, 'storefront_banner_section_2_banner_caption_1', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(85, 'storefront_banner_section_2_banner_caption_2', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(86, 'storefront_banner_section_2_banner_call_to_action_text', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(87, 'storefront_three_column_vertical_product_carousel_section_column_1_title', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(88, 'storefront_three_column_vertical_product_carousel_section_column_2_title', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(89, 'storefront_three_column_vertical_product_carousel_section_column_3_title', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(90, 'storefront_landscape_products_section_title', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(91, 'storefront_banner_section_3_banner_1_file_id', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(92, 'storefront_banner_section_3_banner_1_caption_1', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(93, 'storefront_banner_section_3_banner_1_caption_2', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(94, 'storefront_banner_section_3_banner_1_call_to_action_text', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(95, 'storefront_banner_section_3_banner_2_file_id', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(96, 'storefront_banner_section_3_banner_2_caption_1', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(97, 'storefront_banner_section_3_banner_2_caption_2', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(98, 'storefront_banner_section_3_banner_2_call_to_action_text', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(99, 'storefront_product_tabs_section_title', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(100, 'storefront_product_tabs_section_tab_1_title', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(101, 'storefront_product_tabs_section_tab_2_title', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(102, 'storefront_product_tabs_section_tab_3_title', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(103, 'storefront_product_tabs_section_tab_4_title', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(104, 'storefront_two_column_product_carousel_section_column_1_title', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(105, 'storefront_two_column_product_carousel_section_column_2_title', 1, NULL, '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(106, 'storefront_category_menu', 0, 's:1:\"2\";', '2019-03-20 08:05:25', '2019-03-20 09:29:23'),
(107, 'storefront_footer_menu', 0, 's:1:\"3\";', '2019-03-20 08:05:25', '2019-03-27 05:02:08'),
(108, 'storefront_fb_link', 0, 's:1:\"#\";', '2019-03-20 08:05:25', '2019-03-25 14:24:37'),
(109, 'storefront_twitter_link', 0, 's:1:\"#\";', '2019-03-20 08:05:25', '2019-03-25 14:24:37'),
(110, 'storefront_instagram_link', 0, 's:1:\"#\";', '2019-03-20 08:05:25', '2019-03-25 14:24:37'),
(111, 'storefront_linkedin_link', 0, 's:1:\"#\";', '2019-03-20 08:05:25', '2019-03-25 14:24:37'),
(112, 'storefront_pinterest_link', 0, 'N;', '2019-03-20 08:05:25', '2019-03-25 14:24:45'),
(113, 'storefront_google_plus_link', 0, 'N;', '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(114, 'storefront_youtube_link', 0, 's:1:\"#\";', '2019-03-20 08:05:25', '2019-03-25 14:24:37'),
(115, 'storefront_slider_banner_1_call_to_action_url', 0, 'N;', '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(116, 'storefront_slider_banner_1_open_in_new_window', 0, 's:1:\"0\";', '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(117, 'storefront_slider_banner_2_call_to_action_url', 0, 'N;', '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(118, 'storefront_slider_banner_2_open_in_new_window', 0, 's:1:\"0\";', '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(119, 'storefront_banner_section_1_enabled', 0, 's:1:\"1\";', '2019-03-20 08:05:25', '2019-03-25 02:43:42'),
(120, 'storefront_banner_section_1_banner_1_call_to_action_url', 0, 'N;', '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(121, 'storefront_banner_section_1_banner_1_open_in_new_window', 0, 's:1:\"0\";', '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(122, 'storefront_banner_section_1_banner_2_call_to_action_url', 0, 'N;', '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(123, 'storefront_banner_section_1_banner_2_open_in_new_window', 0, 's:1:\"0\";', '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(124, 'storefront_banner_section_1_banner_3_call_to_action_url', 0, 'N;', '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(125, 'storefront_banner_section_1_banner_3_open_in_new_window', 0, 's:1:\"0\";', '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(126, 'storefront_features_section_enabled', 0, 's:1:\"1\";', '2019-03-20 08:05:25', '2019-03-25 14:15:56'),
(127, 'storefront_product_carousel_section_enabled', 0, 's:1:\"1\";', '2019-03-20 08:05:25', '2019-03-25 15:01:49'),
(128, 'storefront_recent_products_section_enabled', 0, 's:1:\"1\";', '2019-03-20 08:05:25', '2019-03-25 15:48:15'),
(129, 'storefront_recent_products_section_total_products', 0, 's:2:\"10\";', '2019-03-20 08:05:25', '2019-03-25 15:48:15'),
(130, 'storefront_banner_section_2_enabled', 0, 's:1:\"1\";', '2019-03-20 08:05:25', '2019-03-25 14:58:15'),
(131, 'storefront_banner_section_2_banner_call_to_action_url', 0, 's:1:\"#\";', '2019-03-20 08:05:25', '2019-03-25 14:57:45'),
(132, 'storefront_banner_section_2_banner_open_in_new_window', 0, 's:1:\"1\";', '2019-03-20 08:05:25', '2019-03-25 21:01:26'),
(133, 'storefront_three_column_vertical_product_carousel_section_enabled', 0, 's:1:\"1\";', '2019-03-20 08:05:25', '2019-03-25 16:28:51'),
(134, 'storefront_landscape_products_section_enabled', 0, 's:1:\"1\";', '2019-03-20 08:05:25', '2019-03-25 16:17:38'),
(135, 'storefront_banner_section_3_enabled', 0, 's:1:\"1\";', '2019-03-20 08:05:25', '2019-03-25 16:24:42'),
(136, 'storefront_banner_section_3_banner_1_call_to_action_url', 0, 's:1:\"#\";', '2019-03-20 08:05:25', '2019-03-25 16:24:42'),
(137, 'storefront_banner_section_3_banner_1_open_in_new_window', 0, 's:1:\"0\";', '2019-03-20 08:05:25', '2019-03-20 08:05:25'),
(138, 'storefront_banner_section_3_banner_2_call_to_action_url', 0, 's:1:\"#\";', '2019-03-20 08:05:25', '2019-03-25 16:24:42'),
(139, 'storefront_banner_section_3_banner_2_open_in_new_window', 0, 's:1:\"0\";', '2019-03-20 08:05:26', '2019-03-20 08:05:26'),
(140, 'storefront_product_tabs_section_enabled', 0, 's:1:\"1\";', '2019-03-20 08:05:26', '2019-03-25 19:10:35'),
(141, 'storefront_two_column_product_carousel_section_enabled', 0, 's:1:\"1\";', '2019-03-20 08:05:26', '2019-03-25 19:14:31'),
(142, 'storefront_product_carousel_section_products', 0, 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}', '2019-03-20 08:05:26', '2019-03-27 22:00:51'),
(143, 'storefront_three_column_vertical_product_carousel_section_column_2_products', 0, 'a:1:{i:0;s:1:\"1\";}', '2019-03-20 08:05:26', '2019-03-25 16:28:20'),
(144, 'storefront_landscape_products_section_products', 0, 'a:1:{i:0;s:1:\"1\";}', '2019-03-20 08:05:26', '2019-03-25 16:17:38'),
(145, 'storefront_product_tabs_section_tab_1_products', 0, 'a:1:{i:0;s:1:\"2\";}', '2019-03-20 08:05:26', '2019-03-25 19:10:35'),
(146, 'storefront_product_tabs_section_tab_2_products', 0, 'a:1:{i:0;s:1:\"1\";}', '2019-03-20 08:05:26', '2019-03-25 19:10:35'),
(147, 'storefront_product_tabs_section_tab_3_products', 0, 'a:1:{i:0;s:1:\"2\";}', '2019-03-20 08:05:26', '2019-03-25 19:10:35'),
(148, 'storefront_product_tabs_section_tab_4_products', 0, 'a:1:{i:0;s:1:\"1\";}', '2019-03-20 08:05:26', '2019-03-25 19:10:35'),
(149, 'storefront_two_column_product_carousel_section_column_1_products', 0, 'a:1:{i:0;s:1:\"2\";}', '2019-03-20 08:05:26', '2019-03-25 19:14:31'),
(150, 'storefront_two_column_product_carousel_section_column_2_products', 0, 'a:1:{i:0;s:1:\"1\";}', '2019-03-20 08:05:26', '2019-03-25 19:14:31'),
(151, 'store_tagline', 1, NULL, '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(152, 'bank_transfer_instructions', 1, NULL, '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(153, 'check_payment_instructions', 1, NULL, '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(154, 'store_phone', 0, 's:13:\"09613 221 221\";', '2019-03-20 10:34:26', '2019-03-27 05:07:02'),
(155, 'store_address_1', 0, 's:58:\"70 Bir Uttam CR Dattaw road hatirpool Dhanmondi Dhaka 1205\";', '2019-03-20 10:34:26', '2019-03-27 05:07:02'),
(156, 'store_address_2', 0, 's:58:\"70 Bir Uttam CR Dattaw road hatirpool Dhanmondi Dhaka 1205\";', '2019-03-20 10:34:26', '2019-03-27 05:07:02'),
(157, 'store_city', 0, 's:5:\"Dhaka\";', '2019-03-20 10:34:26', '2019-03-25 14:28:58'),
(158, 'store_country', 0, 's:2:\"BD\";', '2019-03-20 10:34:26', '2019-03-21 16:14:03'),
(159, 'store_state', 0, 's:3:\"DHA\";', '2019-03-20 10:34:26', '2019-03-21 16:14:03'),
(160, 'store_zip', 0, 's:4:\"1205\";', '2019-03-20 10:34:26', '2019-03-27 05:07:02'),
(161, 'currency_rate_exchange_service', 0, 's:18:\"currency_data_feed\";', '2019-03-20 10:34:26', '2019-03-27 05:11:50'),
(162, 'fixer_access_key', 0, 'N;', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(163, 'forge_api_key', 0, 'N;', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(164, 'currency_data_feed_api_key', 0, 's:64:\"https://openexchangerates.org/api/latest.json?app_id=YOUR_APP_ID\";', '2019-03-20 10:34:26', '2019-03-27 05:11:50'),
(165, 'auto_refresh_currency_rates', 0, 's:1:\"1\";', '2019-03-20 10:34:26', '2019-03-21 16:15:59'),
(166, 'auto_refresh_currency_rate_frequency', 0, 's:5:\"daily\";', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(167, 'mail_from_address', 0, 'N;', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(168, 'mail_from_name', 0, 'N;', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(169, 'mail_host', 0, 'N;', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(170, 'mail_port', 0, 'N;', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(171, 'mail_username', 0, 'N;', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(172, 'mail_password', 0, 'N;', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(173, 'custom_header_assets', 0, 'N;', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(174, 'custom_footer_assets', 0, 'N;', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(175, 'facebook_login_enabled', 0, 's:1:\"1\";', '2019-03-20 10:34:26', '2019-03-28 05:33:35'),
(176, 'facebook_login_app_id', 0, 's:15:\"337393333557258\";', '2019-03-20 10:34:26', '2019-03-28 05:33:35'),
(177, 'facebook_login_app_secret', 0, 's:32:\"015aaca14e1fd7e41a45ff92e8863ac6\";', '2019-03-20 10:34:26', '2019-03-28 05:33:35'),
(178, 'google_login_enabled', 0, 's:1:\"0\";', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(179, 'google_login_client_id', 0, 'N;', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(180, 'google_login_client_secret', 0, 'N;', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(181, 'free_shipping_enabled', 0, 's:1:\"1\";', '2019-03-20 10:34:26', '2019-03-25 16:44:35'),
(182, 'free_shipping_min_amount', 0, 'N;', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(183, 'local_pickup_enabled', 0, 's:1:\"0\";', '2019-03-20 10:34:26', '2019-03-25 17:16:47'),
(184, 'flat_rate_enabled', 0, 's:1:\"0\";', '2019-03-20 10:34:26', '2019-03-25 17:16:47'),
(185, 'paypal_express_enabled', 0, 's:1:\"0\";', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(186, 'paypal_express_test_mode', 0, 's:1:\"0\";', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(187, 'paypal_express_username', 0, 'N;', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(188, 'paypal_express_password', 0, 'N;', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(189, 'paypal_express_signature', 0, 'N;', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(190, 'stripe_enabled', 0, 's:1:\"0\";', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(191, 'stripe_publishable_key', 0, 'N;', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(192, 'stripe_secret_key', 0, 'N;', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(193, 'cod_enabled', 0, 's:1:\"1\";', '2019-03-20 10:34:26', '2019-03-25 16:43:53'),
(194, 'bank_transfer_enabled', 0, 's:1:\"0\";', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(195, 'check_payment_enabled', 0, 's:1:\"0\";', '2019-03-20 10:34:26', '2019-03-20 10:34:26'),
(196, 'storefront_three_column_vertical_product_carousel_section_column_1_products', 0, 'a:1:{i:0;s:1:\"1\";}', '2019-03-25 16:28:20', '2019-03-25 16:28:20'),
(197, 'storefront_three_column_vertical_product_carousel_section_column_3_products', 0, 'a:1:{i:0;s:1:\"1\";}', '2019-03-25 16:28:20', '2019-03-25 16:28:20'),
(198, 'storefront_brands', 0, 'a:7:{i:0;s:2:\"42\";i:1;s:2:\"43\";i:2;s:2:\"44\";i:3;s:2:\"45\";i:4;s:2:\"46\";i:5;s:2:\"47\";i:6;s:2:\"48\";}', '2019-03-25 19:19:22', '2019-03-25 20:44:53');

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

CREATE TABLE `setting_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `setting_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `locale`, `value`) VALUES
(1, 1, 'en', 's:12:\"Buy And Sell\";'),
(2, 20, 'en', 's:32:\"Free Shipping for online payment\";'),
(3, 21, 'en', 's:12:\"Local Pickup\";'),
(4, 22, 'en', 's:9:\"Flat Rate\";'),
(5, 23, 'en', 's:14:\"PayPal Express\";'),
(6, 24, 'en', 's:28:\"Pay via your PayPal account.\";'),
(7, 25, 'en', 's:6:\"Stripe\";'),
(8, 26, 'en', 's:29:\"Pay via credit or debit card.\";'),
(9, 27, 'en', 's:16:\"Cash On Delivery\";'),
(10, 28, 'en', 's:28:\"Pay with cash upon delivery.\";'),
(11, 29, 'en', 's:13:\"Bank Transfer\";'),
(12, 30, 'en', 's:100:\"Make your payment directly into our bank account. Please use your Order ID as the payment reference.\";'),
(13, 31, 'en', 's:19:\"Check / Money Order\";'),
(14, 32, 'en', 's:33:\"Please send a check to our store.\";'),
(15, 59, 'en', 's:8:\"Category\";'),
(16, 60, 'en', 's:11:\"Information\";'),
(17, 61, 'en', 's:2:\"70\";'),
(18, 62, 'en', 'N;'),
(19, 63, 'en', 'N;'),
(20, 64, 'en', 'N;'),
(21, 65, 'en', 's:2:\"49\";'),
(22, 66, 'en', 'N;'),
(23, 67, 'en', 'N;'),
(24, 68, 'en', 'N;'),
(25, 69, 'en', 's:2:\"33\";'),
(26, 70, 'en', 'N;'),
(27, 71, 'en', 'N;'),
(28, 72, 'en', 'N;'),
(29, 73, 'en', 's:2:\"34\";'),
(30, 74, 'en', 'N;'),
(31, 75, 'en', 'N;'),
(32, 76, 'en', 'N;'),
(33, 77, 'en', 's:2:\"35\";'),
(34, 78, 'en', 'N;'),
(35, 79, 'en', 'N;'),
(36, 80, 'en', 'N;'),
(37, 35, 'en', 's:13:\"Free Delivery\";'),
(38, 36, 'en', 's:15:\"Orders over $60\";'),
(39, 38, 'en', 's:12:\"99% Customer\";'),
(40, 39, 'en', 's:9:\"Feedbacks\";'),
(41, 41, 'en', 's:7:\"Payment\";'),
(42, 42, 'en', 's:14:\"Secured system\";'),
(43, 44, 'en', 's:12:\"24/7 Support\";'),
(44, 45, 'en', 's:14:\"Helpline - 121\";'),
(45, 81, 'en', 's:6:\"Iphone\";'),
(46, 82, 'en', 's:14:\"Recent Product\";'),
(47, 83, 'en', 's:2:\"39\";'),
(48, 84, 'en', 's:13:\"Indian Shirts\";'),
(49, 85, 'en', 's:18:\"Starts From 99 BDT\";'),
(50, 86, 'en', 's:7:\"Buy Now\";'),
(51, 87, 'en', 's:6:\"Iphone\";'),
(52, 88, 'en', 's:7:\"Samsung\";'),
(53, 89, 'en', 's:5:\"Nokia\";'),
(54, 90, 'en', 's:18:\"Landscape Products\";'),
(55, 91, 'en', 's:2:\"38\";'),
(56, 92, 'en', 's:8:\"Banner 5\";'),
(57, 93, 'en', 's:20:\"Banner 5 Description\";'),
(58, 94, 'en', 's:9:\"View More\";'),
(59, 95, 'en', 's:2:\"39\";'),
(60, 96, 'en', 's:8:\"Banner 6\";'),
(61, 97, 'en', 's:20:\"Banner 6 Description\";'),
(62, 98, 'en', 's:9:\"View More\";'),
(63, 99, 'en', 's:6:\"Iphone\";'),
(64, 100, 'en', 's:6:\"Iphone\";'),
(65, 101, 'en', 's:7:\"Samsung\";'),
(66, 102, 'en', 's:5:\"Nokia\";'),
(67, 103, 'en', 's:6:\"Huawei\";'),
(68, 104, 'en', 's:15:\"Popular Product\";'),
(69, 105, 'en', 's:10:\"Best Rated\";'),
(70, 47, 'en', 's:15:\"Recently Viewed\";'),
(71, 151, 'en', 's:16:\"Lets make a deal\";'),
(72, 152, 'en', 'N;'),
(73, 153, 'en', 'N;'),
(74, 1, 'bn_BD', 's:12:\"Buy and Sell\";'),
(75, 151, 'bn_BD', 'N;'),
(76, 20, 'bn_BD', 's:13:\"Free Shipping\";'),
(77, 21, 'bn_BD', 's:12:\"Local Pickup\";'),
(78, 22, 'bn_BD', 's:9:\"Flat Rate\";'),
(79, 23, 'bn_BD', 's:14:\"PayPal Express\";'),
(80, 24, 'bn_BD', 's:28:\"Pay via your PayPal account.\";'),
(81, 25, 'bn_BD', 's:6:\"Stripe\";'),
(82, 26, 'bn_BD', 's:29:\"Pay via credit or debit card.\";'),
(83, 27, 'bn_BD', 's:16:\"Cash On Delivery\";'),
(84, 28, 'bn_BD', 's:28:\"Pay with cash upon delivery.\";'),
(85, 29, 'bn_BD', 's:13:\"Bank Transfer\";'),
(86, 30, 'bn_BD', 's:100:\"Make your payment directly into our bank account. Please use your Order ID as the payment reference.\";'),
(87, 152, 'bn_BD', 'N;'),
(88, 31, 'bn_BD', 's:19:\"Check / Money Order\";'),
(89, 32, 'bn_BD', 's:33:\"Please send a check to our store.\";'),
(90, 153, 'bn_BD', 'N;');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `autoplay` tinyint(1) DEFAULT NULL,
  `autoplay_speed` int(11) DEFAULT NULL,
  `arrows` tinyint(1) DEFAULT NULL,
  `dots` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `autoplay`, `autoplay_speed`, `arrows`, `dots`, `created_at`, `updated_at`) VALUES
(1, 1, 3000, 1, NULL, '2019-03-20 08:05:54', '2019-03-20 08:05:54'),
(2, 1, 3000, 1, NULL, '2019-03-25 20:38:14', '2019-03-25 20:38:14'),
(3, 1, 3000, 1, NULL, '2019-03-31 04:54:24', '2019-03-31 04:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `slider_slides`
--

CREATE TABLE `slider_slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_id` int(10) UNSIGNED NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `call_to_action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_in_new_window` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_slides`
--

INSERT INTO `slider_slides` (`id`, `slider_id`, `options`, `call_to_action_url`, `open_in_new_window`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_3\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', NULL, 0, 0, '2019-03-20 08:05:55', '2019-03-20 08:05:55'),
(2, 1, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_3\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', NULL, 0, 1, '2019-03-20 08:06:57', '2019-03-20 08:06:57'),
(3, 1, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_3\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', NULL, 0, 2, '2019-03-20 08:06:57', '2019-03-20 08:06:57'),
(4, 1, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_3\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', NULL, 0, 3, '2019-03-20 08:06:57', '2019-03-20 08:06:57'),
(5, 2, '{\"caption_1\":{\"delay\":\"1000\",\"effect\":\"fadeInLeft\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_3\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', '#', 1, 0, '2019-03-25 20:38:14', '2019-03-25 20:38:14'),
(6, 2, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_3\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', NULL, 1, 1, '2019-03-25 20:38:14', '2019-03-25 20:38:14'),
(7, 3, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_3\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', NULL, 1, 0, '2019-03-31 04:54:24', '2019-03-31 04:54:24'),
(8, 3, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_3\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', NULL, 1, 1, '2019-03-31 04:54:24', '2019-03-31 04:54:24'),
(9, 3, '{\"caption_1\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_2\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"caption_3\":{\"delay\":null,\"effect\":\"fadeInUp\"},\"call_to_action\":{\"delay\":null,\"effect\":\"fadeInUp\"}}', NULL, 1, 2, '2019-03-31 04:54:24', '2019-03-31 04:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `slider_slide_translations`
--

CREATE TABLE `slider_slide_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_slide_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `caption_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_to_action_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_slide_translations`
--

INSERT INTO `slider_slide_translations` (`id`, `slider_slide_id`, `locale`, `file_id`, `caption_1`, `caption_2`, `caption_3`, `call_to_action_text`) VALUES
(1, 1, 'en', 64, NULL, NULL, NULL, NULL),
(2, 2, 'en', 66, NULL, NULL, NULL, NULL),
(3, 3, 'en', 65, NULL, NULL, NULL, NULL),
(4, 4, 'en', 68, NULL, NULL, NULL, NULL),
(5, 5, 'en', 50, 'Black Friday Discount !!!', 'UP TO 83%', 'Stock Limited ! Hurry !!!', 'Know Details'),
(6, 6, 'en', 49, NULL, NULL, 'General AC 1.5 Ton Only 79000 Taka', NULL),
(7, 7, 'en', 73, NULL, NULL, NULL, NULL),
(8, 8, 'en', 72, NULL, NULL, NULL, NULL),
(9, 9, 'en', 71, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slider_translations`
--

CREATE TABLE `slider_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_translations`
--

INSERT INTO `slider_translations` (`id`, `slider_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'Main Slider'),
(2, 2, 'en', 'Slider AK'),
(3, 3, 'en', 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `tax_classes`
--

CREATE TABLE `tax_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `based_on` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_class_translations`
--

CREATE TABLE `tax_class_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_class_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_class_id` int(10) UNSIGNED NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(8,4) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rate_translations`
--

CREATE TABLE `tax_rate_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2019-03-22 02:23:41', '2019-03-22 02:23:41'),
(2, NULL, 'ip', '182.16.156.101', '2019-03-22 02:23:41', '2019-03-22 02:23:41'),
(3, NULL, 'global', NULL, '2019-03-22 02:23:49', '2019-03-22 02:23:49'),
(4, NULL, 'ip', '182.16.156.101', '2019-03-22 02:23:49', '2019-03-22 02:23:49'),
(5, NULL, 'global', NULL, '2019-03-22 02:27:11', '2019-03-22 02:27:11'),
(6, NULL, 'ip', '182.16.156.101', '2019-03-22 02:27:11', '2019-03-22 02:27:11'),
(7, NULL, 'global', NULL, '2019-03-23 21:43:12', '2019-03-23 21:43:12'),
(8, NULL, 'ip', '182.16.156.101', '2019-03-23 21:43:12', '2019-03-23 21:43:12'),
(9, NULL, 'global', NULL, '2019-03-27 00:24:46', '2019-03-27 00:24:46'),
(10, NULL, 'ip', '103.96.36.10', '2019-03-27 00:24:46', '2019-03-27 00:24:46'),
(11, 1, 'user', NULL, '2019-03-27 00:24:46', '2019-03-27 00:24:46'),
(12, NULL, 'global', NULL, '2019-03-27 14:57:10', '2019-03-27 14:57:10'),
(13, NULL, 'ip', '182.16.156.101', '2019-03-27 14:57:10', '2019-03-27 14:57:10'),
(14, 1, 'user', NULL, '2019-03-27 14:57:10', '2019-03-27 14:57:10'),
(15, NULL, 'global', NULL, '2019-03-27 15:46:31', '2019-03-27 15:46:31'),
(16, NULL, 'ip', '119.30.39.21', '2019-03-27 15:46:31', '2019-03-27 15:46:31'),
(17, 2, 'user', NULL, '2019-03-27 15:46:31', '2019-03-27 15:46:31'),
(18, NULL, 'global', NULL, '2019-03-27 15:46:47', '2019-03-27 15:46:47'),
(19, NULL, 'ip', '119.30.39.21', '2019-03-27 15:46:47', '2019-03-27 15:46:47'),
(20, 2, 'user', NULL, '2019-03-27 15:46:47', '2019-03-27 15:46:47'),
(21, NULL, 'global', NULL, '2019-03-28 05:14:44', '2019-03-28 05:14:44'),
(22, NULL, 'ip', '103.131.90.2', '2019-03-28 05:14:44', '2019-03-28 05:14:44'),
(23, 1, 'user', NULL, '2019-03-28 05:14:44', '2019-03-28 05:14:44');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `key`, `created_at`, `updated_at`) VALUES
(1, 'account::messages.product_removed_from_wishlist', '2019-03-20 16:36:16', '2019-03-20 16:36:16'),
(2, 'account::messages.profile_updated', '2019-03-20 16:36:42', '2019-03-20 16:36:42'),
(3, 'admin::admin.buttons.cancel', '2019-03-20 16:37:11', '2019-03-20 16:37:11'),
(4, 'admin::admin.buttons.delete', '2019-03-20 16:38:03', '2019-03-20 16:38:03'),
(5, 'admin::admin.buttons.save', '2019-03-20 16:38:27', '2019-03-20 16:38:27'),
(6, 'admin::admin.delete.confirmation', '2019-03-20 16:38:48', '2019-03-20 16:38:48'),
(7, 'admin::admin.delete.confirmation_message', '2019-03-20 16:39:05', '2019-03-20 16:39:05'),
(8, 'admin::admin.errors.404', '2019-03-20 16:39:29', '2019-03-20 16:39:29'),
(9, 'admin::admin.errors.404_description', '2019-03-20 16:48:17', '2019-03-20 16:48:17'),
(10, 'admin::admin.errors.404_title', '2019-03-20 16:48:40', '2019-03-20 16:48:40'),
(11, 'admin::admin.errors.500', '2019-03-20 16:48:46', '2019-03-20 16:48:46'),
(12, 'admin::admin.errors.500_description', '2019-03-20 16:49:14', '2019-03-20 16:49:14'),
(13, 'admin::admin.errors.500_title', '2019-03-20 16:49:39', '2019-03-20 16:49:39'),
(14, 'admin::admin.pagination.next', '2019-03-20 16:49:58', '2019-03-20 16:49:58'),
(15, 'admin::admin.pagination.previous', '2019-03-20 16:50:13', '2019-03-20 16:50:13'),
(16, 'admin::admin.shortcuts.available_shortcuts', '2019-03-20 16:50:31', '2019-03-20 16:50:31'),
(17, 'admin::admin.shortcuts.back_to_index', '2019-03-20 16:50:58', '2019-03-20 16:50:58'),
(18, 'admin::admin.shortcuts.this_menu', '2019-03-20 16:51:13', '2019-03-20 16:51:13'),
(19, 'admin::admin.table.created', '2019-03-20 16:51:26', '2019-03-20 16:51:26'),
(20, 'admin::admin.table.date', '2019-03-20 16:51:38', '2019-03-20 16:51:38'),
(21, 'admin::admin.table.status', '2019-03-20 16:54:19', '2019-03-20 16:54:19'),
(22, 'admin::admin.visit_store', '2019-03-20 16:54:38', '2019-03-20 16:54:38'),
(23, 'admin::dashboard.dashboard', '2019-03-20 16:54:52', '2019-03-20 16:54:52'),
(24, 'admin::dashboard.latest_orders', '2019-03-20 16:55:31', '2019-03-20 16:55:31'),
(25, 'admin::dashboard.latest_reviews', '2019-03-20 16:55:57', '2019-03-20 16:55:57'),
(26, 'admin::dashboard.latest_search_terms', '2019-03-20 16:56:15', '2019-03-20 16:56:15'),
(27, 'admin::dashboard.no_data', '2019-03-20 16:56:32', '2019-03-20 16:56:32'),
(28, 'admin::dashboard.sales_analytics.day_names.0', '2019-03-20 16:56:44', '2019-03-20 16:56:44'),
(29, 'admin::dashboard.sales_analytics.day_names.1', '2019-03-20 16:56:57', '2019-03-20 16:56:57'),
(30, 'admin::dashboard.sales_analytics.day_names.2', '2019-03-20 16:57:09', '2019-03-20 16:57:09'),
(31, 'admin::dashboard.sales_analytics.day_names.3', '2019-03-20 16:57:23', '2019-03-20 16:57:23'),
(32, 'admin::dashboard.sales_analytics.day_names.4', '2019-03-20 16:57:35', '2019-03-20 16:57:35'),
(33, 'admin::dashboard.sales_analytics.day_names.5', '2019-03-20 16:57:47', '2019-03-20 16:57:47'),
(34, 'admin::dashboard.sales_analytics.day_names.6', '2019-03-20 16:58:09', '2019-03-20 16:58:09'),
(35, 'admin::dashboard.sales_analytics.orders', '2019-03-20 16:58:25', '2019-03-20 16:58:25'),
(36, 'admin::dashboard.sales_analytics.sales', '2019-03-20 16:58:37', '2019-03-20 16:58:37'),
(37, 'admin::dashboard.table.customer', '2019-03-20 16:58:50', '2019-03-20 16:58:50'),
(38, 'admin::dashboard.table.latest_orders.order_id', '2019-03-20 16:59:02', '2019-03-20 16:59:02'),
(39, 'admin::dashboard.table.latest_orders.status', '2019-03-20 16:59:13', '2019-03-20 16:59:13'),
(40, 'admin::dashboard.table.latest_orders.total', '2019-03-20 16:59:25', '2019-03-20 16:59:25'),
(41, 'admin::dashboard.table.latest_reviews.product', '2019-03-20 16:59:41', '2019-03-20 16:59:41'),
(42, 'admin::dashboard.table.latest_reviews.rating', '2019-03-20 16:59:54', '2019-03-20 16:59:54'),
(43, 'admin::dashboard.table.latest_search_terms.hits', '2019-03-20 17:00:06', '2019-03-20 17:00:06'),
(44, 'admin::dashboard.table.latest_search_terms.keyword', '2019-03-20 17:00:28', '2019-03-20 17:00:28'),
(45, 'admin::dashboard.table.latest_search_terms.results', '2019-03-20 17:00:40', '2019-03-20 17:00:40'),
(46, 'admin::dashboard.total_customers', '2019-03-20 17:01:06', '2019-03-20 17:01:06'),
(47, 'admin::dashboard.total_orders', '2019-03-20 17:02:05', '2019-03-20 17:02:05'),
(48, 'admin::dashboard.total_products', '2019-03-20 17:02:20', '2019-03-20 17:02:20'),
(49, 'admin::dashboard.total_sales', '2019-03-20 17:03:03', '2019-03-20 17:03:03'),
(50, 'admin::messages.permission_denied', '2019-03-20 17:03:28', '2019-03-20 17:03:28'),
(51, 'admin::messages.resource_deleted', '2019-03-20 17:03:48', '2019-03-20 17:03:48'),
(52, 'admin::messages.resource_saved', '2019-03-20 17:04:10', '2019-03-20 17:04:10'),
(53, 'admin::resource.create', '2019-03-20 17:04:27', '2019-03-20 17:04:27'),
(54, 'admin::resource.delete', '2019-03-20 17:04:40', '2019-03-20 17:04:40'),
(55, 'admin::resource.edit', '2019-03-20 17:05:00', '2019-03-20 17:05:00'),
(56, 'admin::resource.show', '2019-03-20 17:05:11', '2019-03-20 17:05:11'),
(57, 'admin::sidebar.appearance', '2019-03-20 17:06:13', '2019-03-20 17:06:13'),
(58, 'admin::sidebar.content', '2019-03-20 17:07:15', '2019-03-20 17:07:15'),
(59, 'admin::sidebar.localization', '2019-03-20 17:32:03', '2019-03-20 17:32:03'),
(60, 'admin::sidebar.sales', '2019-03-20 17:32:20', '2019-03-20 17:32:20'),
(61, 'admin::sidebar.system', '2019-03-20 17:47:08', '2019-03-20 17:47:08'),
(62, 'attribute::admin.attribute', '2019-03-20 17:47:40', '2019-03-20 17:47:40'),
(63, 'attribute::admin.attributes', '2019-03-20 17:47:59', '2019-03-20 17:47:59'),
(64, 'attribute::admin.form.add_new_value', '2019-03-20 17:48:17', '2019-03-20 17:48:17'),
(65, 'attribute::admin.form.delete_value', '2019-03-20 17:48:37', '2019-03-20 17:48:37'),
(66, 'attribute::admin.form.please_select', '2019-03-20 17:49:03', '2019-03-20 17:49:03'),
(67, 'attribute::admin.form.product.add_new_attribute', '2019-03-20 17:49:20', '2019-03-20 17:49:20'),
(68, 'attribute::admin.form.product.attribute', '2019-03-20 17:49:42', '2019-03-20 17:49:42'),
(69, 'attribute::admin.form.product.delete_attribute', '2019-03-20 17:49:54', '2019-03-20 17:49:54'),
(70, 'attribute::admin.form.product.values', '2019-03-20 17:50:06', '2019-03-20 17:50:06'),
(71, 'attribute::admin.form.use_this_attribute_for_filtering_products', '2019-03-20 17:50:24', '2019-03-20 17:50:24'),
(72, 'attribute::admin.form.value', '2019-03-20 17:50:38', '2019-03-20 17:50:38'),
(73, 'attribute::admin.table.attribute_set', '2019-03-20 17:51:00', '2019-03-20 17:51:00'),
(74, 'attribute::admin.table.filterable', '2019-03-20 17:51:24', '2019-03-20 17:51:24'),
(75, 'attribute::admin.table.name', '2019-03-20 17:51:43', '2019-03-20 17:51:43'),
(76, 'attribute::admin.table.no', '2019-03-20 17:52:11', '2019-03-20 17:52:11'),
(77, 'attribute::admin.table.yes', '2019-03-20 17:53:00', '2019-03-20 17:53:00'),
(78, 'attribute::admin.tabs.general', '2019-03-20 17:53:16', '2019-03-20 17:53:16'),
(79, 'attribute::admin.tabs.group.attribute_information', '2019-03-20 17:53:33', '2019-03-20 17:53:33'),
(80, 'attribute::admin.tabs.product.attributes', '2019-03-20 17:53:53', '2019-03-20 17:53:53'),
(81, 'attribute::admin.tabs.values', '2019-03-20 17:59:27', '2019-03-20 17:59:27'),
(82, 'attribute::attribute_sets.attribute_set', '2019-03-20 17:59:38', '2019-03-20 17:59:38'),
(83, 'attribute::attribute_sets.attribute_sets', '2019-03-20 18:00:05', '2019-03-20 18:00:05'),
(84, 'attribute::attribute_sets.table.name', '2019-03-20 18:00:28', '2019-03-20 18:00:28'),
(85, 'attribute::attribute_sets.tabs.general', '2019-03-20 18:00:42', '2019-03-20 18:00:42'),
(86, 'attribute::attribute_sets.tabs.group.attribute_set_information', '2019-03-20 18:01:09', '2019-03-20 18:01:09'),
(87, 'attribute::attribute_values.attribute_value', '2019-03-20 18:01:53', '2019-03-20 18:01:53'),
(88, 'attribute::attribute_values.attribute_values', '2019-03-20 18:04:25', '2019-03-20 18:04:25'),
(89, 'attribute::attributes.attribute_sets.name', '2019-03-20 18:04:38', '2019-03-20 18:04:38'),
(90, 'attribute::attributes.attributes.attribute_set_id', '2019-03-20 18:05:43', '2019-03-20 18:05:43'),
(91, 'attribute::attributes.attributes.categories', '2019-03-20 18:06:47', '2019-03-20 18:06:47'),
(92, 'attribute::attributes.attributes.is_filterable', '2019-03-20 18:07:01', '2019-03-20 18:07:01'),
(93, 'attribute::attributes.attributes.name', '2019-03-20 18:07:14', '2019-03-20 18:07:14'),
(94, 'attribute::attributes.product_attributes.attributes.*.attribute_id', '2019-03-20 18:07:36', '2019-03-20 18:07:36'),
(95, 'attribute::attributes.product_attributes.attributes.*.values', '2019-03-20 18:07:54', '2019-03-20 18:07:54'),
(96, 'attribute::permissions.attribute_sets.create', '2019-03-20 18:08:13', '2019-03-20 18:08:13'),
(97, 'attribute::permissions.attribute_sets.destroy', '2019-03-20 18:08:39', '2019-03-20 18:08:39'),
(98, 'attribute::permissions.attribute_sets.edit', '2019-03-20 18:08:55', '2019-03-20 18:08:55'),
(99, 'attribute::permissions.attribute_sets.index', '2019-03-20 18:09:06', '2019-03-20 18:09:06'),
(100, 'attribute::permissions.attributes.create', '2019-03-20 18:09:24', '2019-03-20 18:09:24'),
(101, 'attribute::permissions.attributes.destroy', '2019-03-20 19:26:38', '2019-03-20 19:26:38'),
(102, 'attribute::permissions.attributes.edit', '2019-03-20 19:26:56', '2019-03-20 19:26:56'),
(103, 'attribute::permissions.attributes.index', '2019-03-20 19:27:11', '2019-03-20 19:27:11'),
(104, 'attribute::sidebar.attribute_sets', '2019-03-20 19:27:28', '2019-03-20 19:27:28'),
(105, 'attribute::sidebar.attributes', '2019-03-20 19:27:54', '2019-03-20 19:27:54'),
(106, 'cart::messages.added', '2019-03-20 19:28:23', '2019-03-20 19:28:23'),
(107, 'cart::messages.confirm', '2019-03-20 19:28:42', '2019-03-20 19:28:42'),
(108, 'cart::messages.not_have_enough_quantity_in_stock', '2019-03-20 19:30:15', '2019-03-20 19:30:15'),
(109, 'cart::messages.out_of_stock', '2019-03-20 19:31:14', '2019-03-20 19:31:14'),
(110, 'cart::messages.quantity_updated', '2019-03-20 19:31:30', '2019-03-20 19:31:30'),
(111, 'cart::messages.removed', '2019-03-20 19:31:48', '2019-03-20 19:31:48'),
(112, 'cart::validation.the_selected_option_is_invalid', '2019-03-20 19:32:26', '2019-03-20 19:32:26'),
(113, 'cart::validation.this_field_is_required', '2019-03-20 19:32:38', '2019-03-20 19:32:38'),
(114, 'category::attributes.is_active', '2019-03-20 19:32:47', '2019-03-20 19:32:47'),
(115, 'category::attributes.is_searchable', '2019-03-20 19:33:34', '2019-03-20 19:33:34'),
(116, 'category::attributes.name', '2019-03-20 19:33:46', '2019-03-20 19:33:46'),
(117, 'category::attributes.slug', '2019-03-20 19:34:03', '2019-03-20 19:34:03'),
(118, 'category::categories.categories', '2019-03-20 19:34:20', '2019-03-20 19:34:20'),
(119, 'category::categories.category', '2019-03-20 19:34:50', '2019-03-20 19:34:50'),
(120, 'category::categories.form.enable_the_category', '2019-03-20 19:35:13', '2019-03-20 19:35:13'),
(121, 'category::categories.form.show_this_category_in_search_box', '2019-03-20 19:35:43', '2019-03-20 19:35:43'),
(122, 'category::categories.tabs.general', '2019-03-20 19:35:54', '2019-03-20 19:35:54'),
(123, 'category::categories.tabs.seo', '2019-03-20 19:36:06', '2019-03-20 19:36:06'),
(124, 'category::categories.tree.add_root_category', '2019-03-20 19:36:25', '2019-03-20 19:36:25'),
(125, 'category::categories.tree.add_sub_category', '2019-03-20 19:37:10', '2019-03-20 19:37:10'),
(126, 'category::categories.tree.collapse_all', '2019-03-20 19:37:48', '2019-03-20 19:37:48'),
(127, 'category::categories.tree.expand_all', '2019-03-20 19:39:26', '2019-03-20 19:39:26'),
(128, 'category::messages.category_order_saved', '2019-03-20 19:46:27', '2019-03-20 19:46:27'),
(129, 'category::permissions.create', '2019-03-20 19:46:43', '2019-03-20 19:46:43'),
(130, 'category::permissions.destroy', '2019-03-20 19:47:01', '2019-03-20 19:47:01'),
(131, 'category::permissions.edit', '2019-03-20 19:47:13', '2019-03-20 19:47:13'),
(132, 'category::permissions.index', '2019-03-20 19:47:25', '2019-03-20 19:47:25'),
(133, 'category::sidebar.categories', '2019-03-20 19:47:59', '2019-03-20 19:47:59'),
(134, 'compare::messages.added', '2019-03-20 19:48:18', '2019-03-20 19:48:18'),
(135, 'compare::messages.removed', '2019-03-20 19:48:39', '2019-03-20 19:48:39'),
(136, 'core::messages.mail_is_not_configured', '2019-03-20 19:49:02', '2019-03-20 19:49:02'),
(137, 'core::validation.accepted', '2019-03-20 19:49:15', '2019-03-20 19:49:15'),
(138, 'core::validation.active_url', '2019-03-20 19:49:33', '2019-03-20 19:49:33'),
(139, 'core::validation.after', '2019-03-20 19:49:52', '2019-03-20 19:49:52'),
(140, 'core::validation.after_or_equal', '2019-03-20 19:50:12', '2019-03-20 19:50:12'),
(141, 'core::validation.alpha', '2019-03-20 19:50:35', '2019-03-20 19:50:35'),
(142, 'core::validation.alpha_dash', '2019-03-20 19:50:49', '2019-03-20 19:50:49'),
(143, 'core::validation.alpha_num', '2019-03-20 19:51:08', '2019-03-20 19:51:08'),
(144, 'core::validation.array', '2019-03-20 19:51:27', '2019-03-20 19:51:27'),
(145, 'core::validation.before', '2019-03-20 19:51:43', '2019-03-20 19:51:43'),
(146, 'core::validation.before_or_equal', '2019-03-20 19:52:02', '2019-03-20 19:52:02'),
(147, 'core::validation.between.array', '2019-03-20 19:52:14', '2019-03-20 19:52:14'),
(148, 'core::validation.between.file', '2019-03-20 19:52:32', '2019-03-20 19:52:32'),
(149, 'core::validation.between.numeric', '2019-03-20 19:54:55', '2019-03-20 19:54:55'),
(150, 'core::validation.between.string', '2019-03-20 19:55:35', '2019-03-20 19:55:35'),
(151, 'core::validation.boolean', '2019-03-20 19:56:11', '2019-03-20 19:56:11'),
(152, 'core::validation.confirmed', '2019-03-20 19:56:26', '2019-03-20 19:56:26'),
(153, 'core::validation.date', '2019-03-20 19:56:41', '2019-03-20 19:56:41'),
(154, 'core::validation.date_format', '2019-03-20 19:57:38', '2019-03-20 19:57:38'),
(155, 'core::validation.different', '2019-03-20 19:58:39', '2019-03-20 19:58:39'),
(156, 'core::validation.digits', '2019-03-20 19:59:13', '2019-03-20 19:59:13'),
(157, 'core::validation.digits_between', '2019-03-20 19:59:32', '2019-03-20 19:59:32'),
(158, 'core::validation.dimensions', '2019-03-20 19:59:51', '2019-03-20 19:59:51'),
(159, 'core::validation.distinct', '2019-03-20 20:00:05', '2019-03-20 20:00:05'),
(160, 'core::validation.email', '2019-03-20 20:00:21', '2019-03-20 20:00:21'),
(161, 'core::validation.exists', '2019-03-20 20:01:00', '2019-03-20 20:01:00'),
(162, 'core::validation.file', '2019-03-20 20:01:15', '2019-03-20 20:01:15'),
(163, 'core::validation.filled', '2019-03-20 20:01:30', '2019-03-20 20:01:30'),
(164, 'core::validation.image', '2019-03-20 20:01:43', '2019-03-20 20:01:43'),
(165, 'core::validation.in', '2019-03-20 20:01:59', '2019-03-20 20:01:59'),
(166, 'core::validation.in_array', '2019-03-20 20:02:16', '2019-03-20 20:02:16'),
(167, 'core::validation.integer', '2019-03-20 20:02:30', '2019-03-20 20:02:30'),
(168, 'core::validation.ip', '2019-03-20 20:02:46', '2019-03-20 20:02:46'),
(169, 'core::validation.ipv4', '2019-03-20 20:03:00', '2019-03-20 20:03:00'),
(170, 'core::validation.ipv6', '2019-03-20 20:03:15', '2019-03-20 20:03:15'),
(171, 'core::validation.json', '2019-03-20 20:08:29', '2019-03-20 20:08:29'),
(172, 'core::validation.max.array', '2019-03-20 20:09:39', '2019-03-20 20:09:39'),
(173, 'core::validation.max.file', '2019-03-20 20:09:59', '2019-03-20 20:09:59'),
(174, 'core::validation.max.numeric', '2019-03-20 20:10:19', '2019-03-20 20:10:19'),
(175, 'core::validation.max.string', '2019-03-20 20:10:36', '2019-03-20 20:10:36'),
(176, 'core::validation.mimes', '2019-03-20 20:11:16', '2019-03-20 20:11:16'),
(177, 'core::validation.mimetypes', '2019-03-20 20:11:41', '2019-03-20 20:11:41'),
(178, 'core::validation.min.array', '2019-03-20 20:13:48', '2019-03-20 20:13:48'),
(179, 'core::validation.min.file', '2019-03-20 20:14:47', '2019-03-20 20:14:47'),
(180, 'core::validation.min.numeric', '2019-03-20 20:15:57', '2019-03-20 20:15:57'),
(181, 'core::validation.min.string', '2019-03-20 20:16:57', '2019-03-20 20:16:57'),
(182, 'core::validation.not_in', '2019-03-20 20:17:13', '2019-03-20 20:17:13'),
(183, 'core::validation.numeric', '2019-03-20 20:17:25', '2019-03-20 20:17:25'),
(184, 'core::validation.present', '2019-03-20 20:17:38', '2019-03-20 20:17:38'),
(185, 'core::validation.redis', '2019-03-20 20:17:56', '2019-03-20 20:17:56'),
(186, 'core::validation.regex', '2019-03-20 20:18:08', '2019-03-20 20:18:08'),
(187, 'core::validation.required', '2019-03-20 20:18:41', '2019-03-20 20:18:41'),
(188, 'core::validation.required_if', '2019-03-20 20:19:03', '2019-03-20 20:19:03'),
(189, 'core::validation.required_unless', '2019-03-20 20:19:44', '2019-03-20 20:19:44'),
(190, 'core::validation.required_with', '2019-03-20 20:20:03', '2019-03-20 20:20:03'),
(191, 'core::validation.required_with_all', '2019-03-20 20:20:26', '2019-03-20 20:20:26'),
(192, 'core::validation.required_without', '2019-03-20 20:20:43', '2019-03-20 20:20:43'),
(193, 'core::validation.required_without_all', '2019-03-20 20:21:06', '2019-03-20 20:21:06'),
(194, 'core::validation.same', '2019-03-20 20:21:22', '2019-03-20 20:21:22'),
(195, 'core::validation.size.array', '2019-03-20 20:21:36', '2019-03-20 20:21:36'),
(196, 'core::validation.size.file', '2019-03-20 20:21:50', '2019-03-20 20:21:50'),
(197, 'core::validation.size.numeric', '2019-03-20 20:22:06', '2019-03-20 20:22:06'),
(198, 'core::validation.size.string', '2019-03-20 20:22:20', '2019-03-20 20:22:20'),
(199, 'core::validation.string', '2019-03-20 20:22:39', '2019-03-20 20:22:39'),
(200, 'core::validation.timezone', '2019-03-20 20:22:55', '2019-03-20 20:22:55'),
(201, 'core::validation.unique', '2019-03-20 21:50:03', '2019-03-20 21:50:03'),
(202, 'core::validation.uploaded', '2019-03-20 21:50:25', '2019-03-20 21:50:25'),
(203, 'core::validation.url', '2019-03-20 21:50:40', '2019-03-20 21:50:40'),
(204, 'coupon::attributes.categories', '2019-03-20 21:51:06', '2019-03-20 21:51:06'),
(205, 'coupon::attributes.code', '2019-03-20 21:51:19', '2019-03-20 21:51:19'),
(206, 'coupon::attributes.end_date', '2019-03-20 21:51:34', '2019-03-20 21:51:34'),
(207, 'coupon::attributes.exclude_categories', '2019-03-20 21:51:45', '2019-03-20 21:51:45'),
(208, 'coupon::attributes.exclude_products', '2019-03-20 21:51:55', '2019-03-20 21:51:55'),
(209, 'coupon::attributes.free_shipping', '2019-03-20 21:52:18', '2019-03-20 21:52:18'),
(210, 'coupon::attributes.is_active', '2019-03-20 21:52:32', '2019-03-20 21:52:32'),
(211, 'coupon::attributes.is_percent', '2019-03-20 21:52:49', '2019-03-20 21:52:49'),
(212, 'coupon::attributes.maximum_spend', '2019-03-20 21:53:03', '2019-03-20 21:53:03'),
(213, 'coupon::attributes.minimum_spend', '2019-03-20 21:53:15', '2019-03-20 21:53:15'),
(214, 'coupon::attributes.name', '2019-03-20 21:53:28', '2019-03-20 21:53:28'),
(215, 'coupon::attributes.products', '2019-03-20 21:53:40', '2019-03-20 21:53:40'),
(216, 'coupon::attributes.start_date', '2019-03-20 21:53:54', '2019-03-20 21:53:54'),
(217, 'coupon::attributes.usage_limit_per_coupon', '2019-03-20 21:54:08', '2019-03-20 21:54:08'),
(218, 'coupon::attributes.usage_limit_per_customer', '2019-03-20 21:54:22', '2019-03-20 21:54:22'),
(219, 'coupon::attributes.value', '2019-03-20 21:54:32', '2019-03-20 21:54:32'),
(220, 'coupon::coupons.coupon', '2019-03-20 21:54:47', '2019-03-20 21:54:47'),
(221, 'coupon::coupons.coupons', '2019-03-20 21:55:30', '2019-03-20 21:55:30'),
(222, 'coupon::coupons.form.allow_free_shipping', '2019-03-20 21:56:34', '2019-03-20 21:56:34'),
(223, 'coupon::coupons.form.enable_the_coupon', '2019-03-20 21:57:13', '2019-03-20 21:57:13'),
(224, 'coupon::coupons.form.price_types.0', '2019-03-20 21:57:24', '2019-03-20 21:57:24'),
(225, 'coupon::coupons.form.price_types.1', '2019-03-20 21:57:36', '2019-03-20 21:57:36'),
(226, 'coupon::coupons.table.code', '2019-03-20 21:58:59', '2019-03-20 21:58:59'),
(227, 'coupon::coupons.table.discount', '2019-03-20 21:59:11', '2019-03-20 21:59:11'),
(228, 'coupon::coupons.table.name', '2019-03-20 21:59:25', '2019-03-20 21:59:25'),
(229, 'coupon::coupons.tabs.general', '2019-03-20 21:59:33', '2019-03-20 21:59:33'),
(230, 'coupon::coupons.tabs.group.coupon_information', '2019-03-20 21:59:51', '2019-03-20 21:59:51'),
(231, 'coupon::coupons.tabs.usage_limits', '2019-03-20 22:00:05', '2019-03-20 22:00:05'),
(232, 'coupon::coupons.tabs.usage_restrictions', '2019-03-20 22:00:16', '2019-03-20 22:00:16'),
(233, 'coupon::messages.applied', '2019-03-20 22:00:33', '2019-03-20 22:00:33'),
(234, 'coupon::messages.inapplicable', '2019-03-20 22:00:47', '2019-03-20 22:00:47'),
(235, 'product::products.tabs.images', '2019-03-21 16:22:16', '2019-03-21 16:22:16'),
(236, 'product::products.form.base_image', '2019-03-21 16:22:36', '2019-03-21 16:22:36'),
(237, 'product::products.form.additional_images', '2019-03-21 16:22:52', '2019-03-21 16:22:52'),
(238, 'media::messages.image_has_been_added', '2019-03-21 16:23:14', '2019-03-21 16:23:14'),
(239, 'slider::sliders.slide.image_slide', '2019-03-21 16:46:40', '2019-03-21 16:46:40'),
(240, 'storefront::attributes.storefront_primary_menu', '2019-03-21 16:47:22', '2019-03-21 16:47:22'),
(241, 'coupon::messages.invalid_coupon', '2019-03-21 19:48:54', '2019-03-21 19:48:54'),
(242, 'coupon::messages.maximum_spend', '2019-03-21 19:50:11', '2019-03-21 19:50:11'),
(243, 'coupon::messages.minimum_spend', '2019-03-21 19:50:57', '2019-03-21 19:50:57'),
(244, 'coupon::messages.not_exists', '2019-03-21 19:51:21', '2019-03-21 19:51:21'),
(245, 'coupon::messages.usage_limit_reached', '2019-03-21 19:52:04', '2019-03-21 19:52:04'),
(246, 'coupon::permissions.create', '2019-03-21 19:52:15', '2019-03-21 19:52:15'),
(247, 'coupon::permissions.destroy', '2019-03-21 19:52:34', '2019-03-21 19:52:34'),
(248, 'coupon::permissions.edit', '2019-03-21 19:52:56', '2019-03-21 19:52:56'),
(249, 'coupon::permissions.index', '2019-03-21 19:53:59', '2019-03-21 19:53:59'),
(250, 'currency::attributes.rate', '2019-03-21 19:54:15', '2019-03-21 19:54:15'),
(251, 'currency::currency_rates.currency_rate', '2019-03-21 19:54:45', '2019-03-21 19:54:45'),
(252, 'currency::currency_rates.currency_rates', '2019-03-21 19:55:25', '2019-03-21 19:55:25'),
(253, 'currency::currency_rates.refresh_currency_rates_from', '2019-03-21 19:55:40', '2019-03-21 19:55:40'),
(254, 'currency::currency_rates.refresh_rates', '2019-03-21 19:55:52', '2019-03-21 19:55:52'),
(255, 'currency::currency_rates.table.code', '2019-03-21 19:56:04', '2019-03-21 19:56:04'),
(256, 'currency::currency_rates.table.currency', '2019-03-21 19:56:18', '2019-03-21 19:56:18'),
(257, 'currency::currency_rates.table.last_updated', '2019-03-21 19:56:32', '2019-03-21 19:56:32'),
(258, 'currency::currency_rates.table.rate', '2019-03-21 19:56:43', '2019-03-21 19:56:43'),
(259, 'currency::currency_rates.tabs.general', '2019-03-21 19:56:54', '2019-03-21 19:56:54'),
(260, 'currency::currency_rates.tabs.group.currency_rate_information', '2019-03-21 19:58:00', '2019-03-21 19:58:00'),
(261, 'currency::messages.exchange_service_is_not_configured', '2019-03-21 19:58:47', '2019-03-21 19:58:47'),
(262, 'currency::permissions.edit', '2019-03-21 19:59:56', '2019-03-21 19:59:56'),
(263, 'currency::permissions.index', '2019-03-21 20:00:11', '2019-03-21 20:00:11'),
(264, 'currency::services.currency_data_feed', '2019-03-21 20:00:26', '2019-03-21 20:00:26'),
(265, 'currency::services.fixer', '2019-03-21 20:00:56', '2019-03-21 20:00:56'),
(266, 'currency::services.forge', '2019-03-21 20:01:12', '2019-03-21 20:01:12'),
(267, 'media::media.browse', '2019-03-21 20:01:37', '2019-03-21 20:01:37'),
(268, 'media::media.drop_files_here', '2019-03-21 20:01:50', '2019-03-21 20:01:50'),
(269, 'media::media.file_manager.select_this_file', '2019-03-21 20:02:04', '2019-03-21 20:02:04'),
(270, 'media::media.file_manager.title', '2019-03-21 20:02:35', '2019-03-21 20:02:35'),
(271, 'media::media.media', '2019-03-21 20:02:52', '2019-03-21 20:02:52'),
(272, 'media::media.table.filename', '2019-03-21 20:03:03', '2019-03-21 20:03:03'),
(273, 'media::media.table.height', '2019-03-21 20:03:13', '2019-03-21 20:03:13'),
(274, 'media::media.table.thumbnail', '2019-03-21 20:03:42', '2019-03-21 20:03:42'),
(275, 'media::media.table.width', '2019-03-21 20:03:53', '2019-03-21 20:03:53'),
(276, 'media::media.thumbnails', '2019-03-21 20:04:16', '2019-03-21 20:04:16'),
(277, 'media::media.upload_new_file', '2019-03-21 20:04:35', '2019-03-21 20:04:35'),
(278, 'media::permissions.create', '2019-03-21 20:04:46', '2019-03-21 20:04:46'),
(279, 'media::permissions.destroy', '2019-03-21 20:04:56', '2019-03-21 20:04:56'),
(280, 'media::permissions.edit', '2019-03-21 20:05:10', '2019-03-21 20:05:10'),
(281, 'media::permissions.index', '2019-03-21 20:05:30', '2019-03-21 20:05:30'),
(282, 'menu::attributes.category_id', '2019-03-21 20:05:50', '2019-03-21 20:05:50'),
(283, 'menu::attributes.is_active', '2019-03-21 20:06:10', '2019-03-21 20:06:10'),
(284, 'menu::attributes.is_fluid', '2019-03-21 20:06:27', '2019-03-21 20:06:27'),
(285, 'menu::attributes.name', '2019-03-21 20:06:38', '2019-03-21 20:06:38'),
(286, 'menu::attributes.page_id', '2019-03-21 20:06:51', '2019-03-21 20:06:51'),
(287, 'menu::attributes.parent_id', '2019-03-21 20:07:04', '2019-03-21 20:07:04'),
(288, 'menu::attributes.target', '2019-03-21 20:07:14', '2019-03-21 20:07:14'),
(289, 'menu::attributes.type', '2019-03-21 20:07:25', '2019-03-21 20:07:25'),
(290, 'menu::attributes.url', '2019-03-21 20:07:42', '2019-03-21 20:07:42'),
(291, 'menu::menu_items.back_to_menu_edit_page', '2019-03-21 20:08:33', '2019-03-21 20:08:33'),
(292, 'menu::menu_items.form.enable_the_menu_item', '2019-03-21 20:08:51', '2019-03-21 20:08:51'),
(293, 'menu::menu_items.form.full_width_menu', '2019-03-21 20:09:05', '2019-03-21 20:09:05'),
(294, 'menu::menu_items.form.select_category', '2019-03-21 20:09:17', '2019-03-21 20:09:17'),
(295, 'menu::menu_items.form.select_page', '2019-03-21 20:09:30', '2019-03-21 20:09:30'),
(296, 'menu::menu_items.form.select_parent', '2019-03-21 20:09:50', '2019-03-21 20:09:50'),
(297, 'menu::menu_items.form.targets._blank', '2019-03-21 20:10:02', '2019-03-21 20:10:02'),
(298, 'menu::menu_items.form.targets._self', '2019-03-21 20:10:15', '2019-03-21 20:10:15'),
(299, 'menu::menu_items.form.types.category', '2019-03-21 20:10:31', '2019-03-21 20:10:31'),
(300, 'menu::menu_items.form.types.page', '2019-03-21 20:10:42', '2019-03-21 20:10:42'),
(301, 'menu::menu_items.form.types.url', '2019-03-21 20:10:49', '2019-03-21 20:10:49'),
(302, 'menu::menu_items.menu_item', '2019-03-21 20:10:59', '2019-03-21 20:10:59'),
(303, 'menu::menu_items.tabs.general', '2019-03-21 20:11:12', '2019-03-21 20:11:12'),
(304, 'menu::menu_items.tabs.group.menu_item_information', '2019-03-21 20:11:28', '2019-03-21 20:11:28'),
(305, 'menu::menus.form.enable_the_menu', '2019-03-21 20:11:48', '2019-03-21 20:11:48'),
(306, 'menu::menus.form.please_save_the_menu_first', '2019-03-21 20:12:06', '2019-03-21 20:12:06'),
(307, 'menu::menus.menu', '2019-03-21 20:12:15', '2019-03-21 20:12:15'),
(308, 'menu::menus.menus', '2019-03-21 20:13:37', '2019-03-21 20:13:37'),
(309, 'menu::menus.table.name', '2019-03-21 20:13:50', '2019-03-21 20:13:50'),
(310, 'menu::messages.menu_item_deleted', '2019-03-21 20:14:03', '2019-03-21 20:14:03'),
(311, 'menu::messages.menu_items_order_updated', '2019-03-21 20:14:15', '2019-03-21 20:14:15'),
(312, 'menu::permissions.menu_items.create', '2019-03-21 20:14:27', '2019-03-21 20:14:27'),
(313, 'menu::permissions.menu_items.destroy', '2019-03-21 20:14:39', '2019-03-21 20:14:39'),
(314, 'menu::permissions.menu_items.edit', '2019-03-21 20:14:49', '2019-03-21 20:14:49'),
(315, 'menu::permissions.menu_items.index', '2019-03-21 20:15:03', '2019-03-21 20:15:03'),
(316, 'menu::permissions.menus.create', '2019-03-21 22:12:53', '2019-03-21 22:12:53'),
(317, 'menu::permissions.menus.destroy', '2019-03-21 22:13:16', '2019-03-21 22:13:16'),
(318, 'menu::permissions.menus.edit', '2019-03-21 22:13:33', '2019-03-21 22:13:33'),
(319, 'menu::permissions.menus.index', '2019-03-21 22:13:48', '2019-03-21 22:13:48'),
(320, 'menu::sidebar.menus', '2019-03-21 22:14:17', '2019-03-21 22:14:17'),
(321, 'meta::attributes.meta_description', '2019-03-21 22:15:24', '2019-03-21 22:15:24'),
(322, 'meta::attributes.meta_keywords', '2019-03-21 22:15:38', '2019-03-21 22:15:38'),
(323, 'meta::attributes.meta_title', '2019-03-21 22:15:54', '2019-03-21 22:15:54'),
(324, 'option::attributes.is_required', '2019-03-21 22:16:08', '2019-03-21 22:16:08'),
(325, 'option::attributes.label', '2019-03-21 22:16:19', '2019-03-21 22:16:19'),
(326, 'option::attributes.name', '2019-03-21 22:17:17', '2019-03-21 22:17:17'),
(327, 'option::attributes.options.*.name', '2019-03-21 22:17:25', '2019-03-21 22:17:25'),
(328, 'option::attributes.options.*.type', '2019-03-21 22:17:46', '2019-03-21 22:17:46'),
(329, 'option::attributes.options.*.values.*.label', '2019-03-21 22:18:04', '2019-03-21 22:18:04'),
(330, 'option::attributes.options.*.values.*.price', '2019-03-21 22:19:50', '2019-03-21 22:19:50'),
(331, 'option::attributes.options.*.values.*.price_type', '2019-03-21 22:20:04', '2019-03-21 22:20:04'),
(332, 'option::attributes.price', '2019-03-21 22:20:37', '2019-03-21 22:20:37'),
(333, 'option::attributes.price_type', '2019-03-21 22:20:42', '2019-03-21 22:20:42'),
(334, 'option::attributes.type', '2019-03-21 22:21:08', '2019-03-21 22:21:08'),
(335, 'option::attributes.values.*.label', '2019-03-21 22:21:16', '2019-03-21 22:21:16'),
(336, 'option::attributes.values.*.price', '2019-03-21 22:21:26', '2019-03-21 22:21:26'),
(337, 'option::attributes.values.*.price_type', '2019-03-21 22:21:32', '2019-03-21 22:21:32'),
(338, 'option::options.form.add_global_option', '2019-03-21 22:21:46', '2019-03-21 22:21:46'),
(339, 'option::options.form.add_new_option', '2019-03-21 22:34:10', '2019-03-21 22:34:10'),
(340, 'option::options.form.add_new_row', '2019-03-21 22:34:55', '2019-03-21 22:34:55'),
(341, 'option::options.form.delete_option', '2019-03-21 22:35:10', '2019-03-21 22:35:10'),
(342, 'option::options.form.delete_row', '2019-03-21 22:35:21', '2019-03-21 22:35:21'),
(343, 'option::options.form.new_option', '2019-03-21 22:35:42', '2019-03-21 22:35:42'),
(344, 'option::options.form.option_types.checkbox', '2019-03-21 22:35:54', '2019-03-21 22:35:54'),
(345, 'option::options.form.option_types.dropdown', '2019-03-21 22:36:08', '2019-03-21 22:36:08'),
(346, 'option::options.form.option_types.multiple_select', '2019-03-24 20:29:11', '2019-03-24 20:29:11'),
(347, 'option::options.form.option_types.please_select', '2019-03-24 20:29:27', '2019-03-24 20:29:27'),
(348, 'option::options.form.option_types.radio', '2019-03-24 20:29:44', '2019-03-24 20:29:44'),
(349, 'option::options.form.price', '2019-03-24 20:30:01', '2019-03-24 20:30:01'),
(350, 'option::options.form.price_types.fixed', '2019-03-24 20:30:14', '2019-03-24 20:30:14'),
(351, 'option::options.form.price_types.percent', '2019-03-24 20:30:26', '2019-03-24 20:30:26'),
(352, 'option::options.form.this_option_is_required', '2019-03-24 20:30:49', '2019-03-24 20:30:49'),
(353, 'option::options.option', '2019-03-24 20:31:05', '2019-03-24 20:31:05'),
(354, 'option::options.options', '2019-03-24 20:31:29', '2019-03-24 20:31:29'),
(355, 'option::options.select_global_option', '2019-03-24 20:31:45', '2019-03-24 20:31:45'),
(356, 'option::options.table.name', '2019-03-24 20:32:00', '2019-03-24 20:32:00'),
(357, 'option::options.table.type', '2019-03-24 20:32:27', '2019-03-24 20:32:27'),
(358, 'option::options.tabs.general', '2019-03-24 20:32:44', '2019-03-24 20:32:44'),
(359, 'option::options.tabs.group.option_information', '2019-03-24 20:32:58', '2019-03-24 20:32:58'),
(360, 'option::options.tabs.product.options', '2019-03-24 20:33:13', '2019-03-24 20:33:13'),
(361, 'option::options.tabs.values', '2019-03-24 20:33:29', '2019-03-24 20:33:29'),
(362, 'option::permissions.options.create', '2019-03-24 20:33:50', '2019-03-24 20:33:50'),
(363, 'option::permissions.options.destroy', '2019-03-24 20:34:03', '2019-03-24 20:34:03'),
(364, 'option::permissions.options.edit', '2019-03-24 20:34:19', '2019-03-24 20:34:19'),
(365, 'option::permissions.options.index', '2019-03-24 20:34:38', '2019-03-24 20:34:38'),
(366, 'option::sidebar.options', '2019-03-24 20:34:57', '2019-03-24 20:34:57'),
(367, 'order::messages.invoice_sent', '2019-03-24 20:35:43', '2019-03-24 20:35:43'),
(368, 'order::messages.payment_canceled', '2019-03-24 20:36:03', '2019-03-24 20:36:03'),
(369, 'order::messages.status_updated', '2019-03-24 20:36:34', '2019-03-24 20:36:34'),
(370, 'order::orders.account_information', '2019-03-24 20:36:51', '2019-03-24 20:36:51'),
(371, 'order::orders.address_information', '2019-03-24 20:37:11', '2019-03-24 20:37:11'),
(372, 'order::orders.billing_address', '2019-03-24 20:37:32', '2019-03-24 20:37:32'),
(373, 'order::orders.coupon', '2019-03-24 20:37:49', '2019-03-24 20:37:49'),
(374, 'order::orders.currency', '2019-03-24 20:38:03', '2019-03-24 20:38:03'),
(375, 'order::orders.currency_rate', '2019-03-24 20:38:24', '2019-03-24 20:38:24'),
(376, 'order::orders.customer_email', '2019-03-24 20:38:41', '2019-03-24 20:38:41'),
(377, 'order::orders.customer_group', '2019-03-24 20:39:06', '2019-03-24 20:39:06'),
(378, 'order::orders.customer_name', '2019-03-24 20:39:22', '2019-03-24 20:39:22'),
(379, 'order::orders.customer_phone', '2019-03-24 20:39:39', '2019-03-24 20:39:39'),
(380, 'order::orders.guest', '2019-03-24 20:39:59', '2019-03-24 20:39:59'),
(381, 'order::orders.items_ordered', '2019-03-24 20:40:48', '2019-03-24 20:40:48'),
(382, 'order::orders.line_total', '2019-03-24 20:41:11', '2019-03-24 20:41:11'),
(383, 'order::orders.order', '2019-03-24 20:41:30', '2019-03-24 20:41:30'),
(384, 'order::orders.order_and_account_information', '2019-03-24 20:42:08', '2019-03-24 20:42:08'),
(385, 'order::orders.order_date', '2019-03-24 20:42:27', '2019-03-24 20:42:27'),
(386, 'order::orders.order_information', '2019-03-24 20:43:42', '2019-03-24 20:43:42'),
(387, 'order::orders.order_status', '2019-03-24 20:44:08', '2019-03-24 20:44:08'),
(388, 'order::orders.payment_method', '2019-03-24 20:44:58', '2019-03-24 20:44:58'),
(389, 'order::orders.print', '2019-03-24 20:45:12', '2019-03-24 20:45:12'),
(390, 'order::orders.product', '2019-03-24 20:45:29', '2019-03-24 20:45:29'),
(391, 'order::orders.quantity', '2019-03-24 20:45:55', '2019-03-24 20:45:55'),
(392, 'order::orders.registered', '2019-03-24 20:46:15', '2019-03-24 20:46:15'),
(393, 'order::orders.send_email', '2019-03-24 20:46:31', '2019-03-24 20:46:31'),
(394, 'order::orders.shipping_address', '2019-03-24 20:46:49', '2019-03-24 20:46:49'),
(395, 'order::orders.subtotal', '2019-03-24 20:47:24', '2019-03-24 20:47:24'),
(396, 'order::orders.table.customer_email', '2019-03-24 20:47:37', '2019-03-24 20:47:37'),
(397, 'order::orders.table.customer_name', '2019-03-24 20:47:56', '2019-03-24 20:47:56'),
(398, 'order::orders.table.order_id', '2019-03-24 20:48:11', '2019-03-24 20:48:11'),
(399, 'order::orders.table.total', '2019-03-24 20:48:28', '2019-03-24 20:48:28'),
(400, 'order::orders.total', '2019-03-24 20:48:34', '2019-03-24 20:48:34'),
(401, 'order::orders.unit_price', '2019-03-24 20:48:49', '2019-03-24 20:48:49'),
(402, 'order::permissions.edit', '2019-03-24 20:49:05', '2019-03-24 20:49:05'),
(403, 'order::permissions.index', '2019-03-24 20:49:22', '2019-03-24 20:49:22'),
(404, 'order::permissions.show', '2019-03-24 20:50:04', '2019-03-24 20:50:04'),
(405, 'order::print.billing_address', '2019-03-24 20:54:19', '2019-03-24 20:54:19'),
(406, 'order::print.date', '2019-03-24 20:54:50', '2019-03-24 20:54:50'),
(407, 'order::print.email', '2019-03-24 20:55:18', '2019-03-24 20:55:18'),
(408, 'order::print.invoice', '2019-03-24 20:55:40', '2019-03-24 20:55:40'),
(409, 'order::print.invoice_id', '2019-03-24 20:56:45', '2019-03-24 20:56:45'),
(410, 'order::print.line_total', '2019-03-24 20:57:03', '2019-03-24 20:57:03'),
(411, 'order::print.order_details', '2019-03-24 20:57:54', '2019-03-24 20:57:54'),
(412, 'order::print.payment_method', '2019-03-24 20:58:08', '2019-03-24 20:58:08'),
(413, 'order::print.phone', '2019-03-24 20:58:19', '2019-03-24 20:58:19'),
(414, 'order::print.product', '2019-03-24 20:58:50', '2019-03-24 20:58:50'),
(415, 'order::print.quantity', '2019-03-24 20:59:01', '2019-03-24 20:59:01'),
(416, 'order::print.shipping_address', '2019-03-24 20:59:25', '2019-03-24 20:59:25'),
(417, 'order::print.subtotal', '2019-03-24 20:59:44', '2019-03-24 20:59:44'),
(418, 'order::print.total', '2019-03-24 21:00:06', '2019-03-24 21:00:06'),
(419, 'order::print.unit_price', '2019-03-24 21:00:23', '2019-03-24 21:00:23'),
(420, 'order::statuses.canceled', '2019-03-24 21:00:53', '2019-03-24 21:00:53'),
(421, 'order::statuses.completed', '2019-03-24 21:01:10', '2019-03-24 21:01:10'),
(422, 'order::statuses.on_hold', '2019-03-24 21:01:39', '2019-03-24 21:01:39'),
(423, 'order::statuses.pending', '2019-03-24 21:02:02', '2019-03-24 21:02:02'),
(424, 'order::statuses.pending_payment', '2019-03-24 21:02:23', '2019-03-24 21:02:23'),
(425, 'order::statuses.processing', '2019-03-24 21:02:46', '2019-03-24 21:02:46'),
(426, 'order::statuses.refunded', '2019-03-24 21:03:06', '2019-03-24 21:03:06'),
(427, 'page::attributes.body', '2019-03-24 21:03:24', '2019-03-24 21:03:24'),
(428, 'page::attributes.is_active', '2019-03-24 21:03:47', '2019-03-24 21:03:47'),
(429, 'page::attributes.name', '2019-03-24 21:04:07', '2019-03-24 21:04:07'),
(430, 'page::attributes.slug', '2019-03-24 21:04:26', '2019-03-24 21:04:26'),
(431, 'page::pages.form.enable_the_page', '2019-03-24 21:04:45', '2019-03-24 21:04:45'),
(432, 'page::pages.page', '2019-03-24 21:05:00', '2019-03-24 21:05:00'),
(433, 'page::pages.pages', '2019-03-24 21:05:16', '2019-03-24 21:05:16'),
(434, 'page::pages.table.name', '2019-03-24 21:05:27', '2019-03-24 21:05:27'),
(435, 'page::pages.tabs.general', '2019-03-24 21:05:42', '2019-03-24 21:05:42'),
(436, 'page::pages.tabs.group.page_information', '2019-03-24 21:06:00', '2019-03-24 21:06:00'),
(437, 'page::pages.tabs.seo', '2019-03-24 21:06:04', '2019-03-24 21:06:04'),
(438, 'page::permissions.create', '2019-03-24 21:06:39', '2019-03-24 21:06:39'),
(439, 'page::permissions.destroy', '2019-03-24 21:07:02', '2019-03-24 21:07:02'),
(440, 'page::permissions.edit', '2019-03-24 21:07:23', '2019-03-24 21:07:23'),
(441, 'page::permissions.index', '2019-03-24 21:07:40', '2019-03-24 21:07:40'),
(442, 'page::sidebar.pages', '2019-03-24 21:07:57', '2019-03-24 21:07:57'),
(443, 'product::attributes.categories', '2019-03-24 21:08:26', '2019-03-24 21:08:26'),
(444, 'product::attributes.description', '2019-03-24 21:08:44', '2019-03-24 21:08:44'),
(445, 'product::attributes.in_stock', '2019-03-24 21:09:07', '2019-03-24 21:09:07'),
(446, 'product::attributes.is_active', '2019-03-24 21:09:21', '2019-03-24 21:09:21'),
(447, 'product::attributes.is_reviewable', '2019-03-24 21:09:59', '2019-03-24 21:09:59'),
(448, 'product::attributes.manage_stock', '2019-03-24 21:10:31', '2019-03-24 21:10:31'),
(449, 'product::attributes.name', '2019-03-24 21:11:14', '2019-03-24 21:11:14'),
(450, 'product::attributes.new_from', '2019-03-24 21:11:56', '2019-03-24 21:11:56'),
(451, 'product::attributes.new_to', '2019-03-24 21:13:08', '2019-03-24 21:13:08'),
(452, 'product::attributes.price', '2019-03-24 21:13:30', '2019-03-24 21:13:30'),
(453, 'product::attributes.qty', '2019-03-24 21:13:54', '2019-03-24 21:13:54'),
(454, 'product::attributes.short_description', '2019-03-24 21:14:25', '2019-03-24 21:14:25'),
(455, 'product::attributes.sku', '2019-03-24 21:14:34', '2019-03-24 21:14:34'),
(456, 'product::attributes.slug', '2019-03-24 21:14:40', '2019-03-24 21:14:40'),
(457, 'product::attributes.special_price', '2019-03-24 21:15:04', '2019-03-24 21:15:04'),
(458, 'product::attributes.special_price_end', '2019-03-24 21:15:16', '2019-03-24 21:15:16'),
(459, 'product::attributes.special_price_start', '2019-03-24 21:15:29', '2019-03-24 21:15:29'),
(460, 'product::attributes.tax_class_id', '2019-03-24 21:16:14', '2019-03-24 21:16:14'),
(461, 'product::permissions.create', '2019-03-24 21:16:16', '2019-03-24 21:16:16'),
(462, 'product::permissions.destroy', '2019-03-24 21:16:26', '2019-03-24 21:16:26'),
(463, 'product::permissions.edit', '2019-03-24 21:16:38', '2019-03-24 21:16:38'),
(464, 'product::permissions.index', '2019-03-24 21:16:51', '2019-03-24 21:16:51'),
(465, 'product::products.form.enable_the_product', '2019-03-24 21:47:46', '2019-03-24 21:47:46'),
(466, 'product::products.form.manage_stock_states.0', '2019-03-24 21:48:13', '2019-03-24 21:48:13'),
(467, 'product::products.form.manage_stock_states.1', '2019-03-24 21:48:32', '2019-03-24 21:48:32'),
(468, 'product::products.form.please_select', '2019-03-24 21:48:43', '2019-03-24 21:48:43'),
(469, 'product::products.form.stock_availability_states.0', '2019-03-24 21:48:53', '2019-03-24 21:48:53'),
(470, 'product::products.form.stock_availability_states.1', '2019-03-24 21:49:05', '2019-03-24 21:49:05'),
(471, 'product::products.product', '2019-03-24 21:49:17', '2019-03-24 21:49:17'),
(472, 'product::products.products', '2019-03-24 21:50:11', '2019-03-24 21:50:11'),
(473, 'product::products.table.name', '2019-03-24 21:50:38', '2019-03-24 21:50:38'),
(474, 'product::products.table.price', '2019-03-24 21:50:54', '2019-03-24 21:50:54'),
(475, 'product::products.table.thumbnail', '2019-03-24 21:51:18', '2019-03-24 21:51:18'),
(476, 'product::products.tabs.additionals', '2019-03-24 21:51:34', '2019-03-24 21:51:34'),
(477, 'product::products.tabs.cross_sells', '2019-03-24 21:51:58', '2019-03-24 21:51:58'),
(478, 'product::products.tabs.general', '2019-03-24 21:52:28', '2019-03-24 21:52:28'),
(479, 'product::products.tabs.group.advanced_information', '2019-03-24 21:53:15', '2019-03-24 21:53:15'),
(480, 'product::products.tabs.group.basic_information', '2019-03-24 21:53:36', '2019-03-24 21:53:36'),
(481, 'product::products.tabs.inventory', '2019-03-24 21:55:11', '2019-03-24 21:55:11'),
(482, 'product::products.tabs.price', '2019-03-24 21:55:31', '2019-03-24 21:55:31'),
(483, 'product::products.tabs.related_products', '2019-03-24 21:55:52', '2019-03-24 21:55:52'),
(484, 'product::products.tabs.seo', '2019-03-24 21:55:57', '2019-03-24 21:55:57'),
(485, 'product::products.tabs.up_sells', '2019-03-24 21:56:09', '2019-03-24 21:56:09'),
(486, 'product::sidebar.catalog', '2019-03-24 21:56:27', '2019-03-24 21:56:27'),
(487, 'product::sidebar.products', '2019-03-24 21:56:41', '2019-03-24 21:56:41'),
(488, 'report::admin.filter', '2019-03-24 21:57:23', '2019-03-24 21:57:23'),
(489, 'report::admin.filters.coupon_code', '2019-03-24 21:57:37', '2019-03-24 21:57:37'),
(490, 'report::admin.filters.customer_email', '2019-03-24 21:57:52', '2019-03-24 21:57:52'),
(491, 'report::admin.filters.customer_name', '2019-03-24 21:58:03', '2019-03-24 21:58:03'),
(492, 'report::admin.filters.date_end', '2019-03-24 21:58:30', '2019-03-24 21:58:30'),
(493, 'report::admin.filters.date_start', '2019-03-24 21:58:50', '2019-03-24 21:58:50'),
(494, 'report::admin.filters.group_by', '2019-03-24 22:00:02', '2019-03-24 22:00:02'),
(495, 'report::admin.filters.groups.days', '2019-03-24 22:00:21', '2019-03-24 22:00:21'),
(496, 'report::admin.filters.groups.months', '2019-03-24 22:00:33', '2019-03-24 22:00:33'),
(497, 'report::admin.filters.groups.weeks', '2019-03-24 22:00:43', '2019-03-24 22:00:43'),
(498, 'report::admin.filters.groups.years', '2019-03-24 22:00:53', '2019-03-24 22:00:53'),
(499, 'report::admin.filters.keyword', '2019-03-24 22:01:07', '2019-03-24 22:01:07'),
(500, 'report::admin.filters.please_select', '2019-03-24 22:01:23', '2019-03-24 22:01:23'),
(501, 'report::admin.filters.product', '2019-03-24 22:01:36', '2019-03-24 22:01:36'),
(502, 'report::admin.filters.quantity_above', '2019-03-24 22:06:08', '2019-03-24 22:06:08'),
(503, 'report::admin.filters.quantity_below', '2019-03-24 22:06:34', '2019-03-24 22:06:34'),
(504, 'report::admin.filters.report_type', '2019-03-24 22:08:13', '2019-03-24 22:08:13'),
(505, 'report::admin.filters.report_types.coupons_report', '2019-03-24 22:08:28', '2019-03-24 22:08:28'),
(506, 'report::admin.filters.report_types.customers_order_report', '2019-03-24 22:09:03', '2019-03-24 22:09:03'),
(507, 'report::admin.filters.report_types.products_purchase_report', '2019-03-24 22:09:23', '2019-03-24 22:09:23'),
(508, 'report::admin.filters.report_types.products_stock_report', '2019-03-24 22:09:59', '2019-03-24 22:09:59'),
(509, 'report::admin.filters.report_types.products_view_report', '2019-03-24 22:10:53', '2019-03-24 22:10:53'),
(510, 'report::admin.filters.report_types.sales_report', '2019-03-24 22:11:10', '2019-03-24 22:11:10'),
(511, 'report::admin.filters.report_types.search_report', '2019-03-24 22:11:20', '2019-03-24 22:11:20'),
(512, 'report::admin.filters.report_types.shipping_report', '2019-03-24 22:11:44', '2019-03-24 22:11:44'),
(513, 'report::admin.filters.report_types.tax_report', '2019-03-24 22:11:55', '2019-03-24 22:11:55'),
(514, 'report::admin.filters.shipping_method', '2019-03-24 22:12:09', '2019-03-24 22:12:09'),
(515, 'report::admin.filters.sku', '2019-03-24 22:12:12', '2019-03-24 22:12:12'),
(516, 'report::admin.filters.status', '2019-03-24 22:12:40', '2019-03-24 22:12:40'),
(517, 'report::admin.filters.stock_availability', '2019-03-24 22:12:54', '2019-03-24 22:12:54'),
(518, 'report::admin.filters.stock_availability_states.in_stock', '2019-03-24 22:13:07', '2019-03-24 22:13:07'),
(519, 'report::admin.filters.stock_availability_states.out_of_stock', '2019-03-24 22:13:18', '2019-03-24 22:13:18'),
(520, 'report::admin.filters.tax_name', '2019-03-24 22:13:27', '2019-03-24 22:13:27'),
(521, 'report::admin.no_data', '2019-03-24 22:13:39', '2019-03-24 22:13:39'),
(522, 'report::admin.reports', '2019-03-24 22:14:02', '2019-03-24 22:14:02'),
(523, 'report::admin.table.coupon_code', '2019-03-24 22:14:27', '2019-03-24 22:14:27'),
(524, 'report::admin.table.coupon_name', '2019-03-24 22:14:36', '2019-03-24 22:14:36'),
(525, 'report::admin.table.customer_email', '2019-03-24 22:14:55', '2019-03-24 22:14:55'),
(526, 'report::admin.table.customer_group', '2019-03-24 22:15:33', '2019-03-24 22:15:33'),
(527, 'report::admin.table.customer_name', '2019-03-24 22:15:48', '2019-03-24 22:15:48'),
(528, 'report::admin.table.date', '2019-03-24 22:15:58', '2019-03-24 22:15:58'),
(529, 'report::admin.table.discount', '2019-03-24 22:16:10', '2019-03-24 22:16:10'),
(530, 'report::admin.table.guest', '2019-03-24 22:16:35', '2019-03-24 22:16:35'),
(531, 'report::admin.table.hits', '2019-03-24 22:16:48', '2019-03-24 22:16:48'),
(532, 'report::admin.table.keyword', '2019-03-24 22:17:00', '2019-03-24 22:17:00'),
(533, 'report::admin.table.orders', '2019-03-24 22:17:11', '2019-03-24 22:17:11'),
(534, 'report::admin.table.product', '2019-03-24 22:17:32', '2019-03-24 22:17:32'),
(535, 'report::admin.table.products', '2019-03-24 22:17:58', '2019-03-24 22:17:58'),
(536, 'report::admin.table.qty', '2019-03-24 22:18:02', '2019-03-24 22:18:02'),
(537, 'report::admin.table.registered', '2019-03-24 22:18:24', '2019-03-24 22:18:24'),
(538, 'report::admin.table.results', '2019-03-24 22:18:41', '2019-03-24 22:18:41'),
(539, 'report::admin.table.shipping', '2019-03-24 22:18:54', '2019-03-24 22:18:54'),
(540, 'report::admin.table.shipping_method', '2019-03-24 22:19:31', '2019-03-24 22:19:31'),
(541, 'report::admin.table.stock_availability', '2019-03-24 22:19:45', '2019-03-24 22:19:45'),
(542, 'report::admin.table.subtotal', '2019-03-24 22:20:25', '2019-03-24 22:20:25'),
(543, 'report::admin.table.tax', '2019-03-24 22:20:37', '2019-03-24 22:20:37'),
(544, 'report::admin.table.tax_name', '2019-03-24 22:20:47', '2019-03-24 22:20:47'),
(545, 'storefront::products.sort_options.price_high_to_low', '2019-03-27 04:53:22', '2019-03-27 04:53:22'),
(546, 'report::admin.table.total', '2019-03-27 14:15:04', '2019-03-27 14:15:04'),
(547, 'report::admin.table.views', '2019-03-27 14:20:07', '2019-03-27 14:20:07'),
(548, 'report::permissions.index', '2019-03-27 14:20:17', '2019-03-27 14:20:17'),
(549, 'report::sidebar.reports', '2019-03-27 14:20:27', '2019-03-27 14:20:27'),
(550, 'review::attributes.comment', '2019-03-27 14:20:40', '2019-03-27 14:20:40'),
(551, 'review::attributes.is_approved', '2019-03-27 14:20:50', '2019-03-27 14:20:50'),
(552, 'review::attributes.rating', '2019-03-27 14:21:19', '2019-03-27 14:21:19'),
(553, 'review::attributes.reviewer_name', '2019-03-27 14:21:31', '2019-03-27 14:21:31'),
(554, 'review::messages.submitted_for_approval', '2019-03-27 14:21:45', '2019-03-27 14:21:45'),
(555, 'review::messages.thank_you', '2019-03-27 14:22:00', '2019-03-27 14:22:00'),
(556, 'review::permissions.destroy', '2019-03-27 14:22:15', '2019-03-27 14:22:15'),
(557, 'review::permissions.edit', '2019-03-27 14:22:22', '2019-03-27 14:22:22'),
(558, 'review::permissions.index', '2019-03-27 14:22:43', '2019-03-27 14:22:43'),
(559, 'review::reviews.form.approve_this_review', '2019-03-27 14:22:52', '2019-03-27 14:22:52'),
(560, 'review::reviews.review', '2019-03-27 14:23:05', '2019-03-27 14:23:05'),
(561, 'review::reviews.reviews', '2019-03-27 14:23:09', '2019-03-27 14:23:09'),
(562, 'review::reviews.shortcuts.back_to_product_edit_page', '2019-03-27 14:23:21', '2019-03-27 14:23:21'),
(563, 'review::reviews.table.approved', '2019-03-27 14:23:36', '2019-03-27 14:23:36'),
(564, 'review::reviews.table.product', '2019-03-27 14:23:49', '2019-03-27 14:23:49'),
(565, 'review::reviews.table.reviewer_name', '2019-03-27 14:24:39', '2019-03-27 14:24:39'),
(566, 'review::reviews.tabs.general', '2019-03-27 14:24:49', '2019-03-27 14:24:49'),
(567, 'review::reviews.tabs.group.review_information', '2019-03-27 14:25:30', '2019-03-27 14:25:30'),
(568, 'review::reviews.tabs.products.reviews', '2019-03-27 14:25:41', '2019-03-27 14:25:41'),
(569, 'review::sidebar.reviews', '2019-03-27 14:25:44', '2019-03-27 14:25:44'),
(570, 'setting::attributes.auto_approve_reviews', '2019-03-27 14:25:55', '2019-03-27 14:25:55'),
(571, 'setting::attributes.auto_refresh_currency_rate_frequency', '2019-03-27 14:26:33', '2019-03-27 14:26:33'),
(572, 'setting::attributes.auto_refresh_currency_rates', '2019-03-27 14:26:44', '2019-03-27 14:26:44'),
(573, 'setting::attributes.bank_transfer_enabled', '2019-03-27 14:26:52', '2019-03-27 14:26:52'),
(574, 'setting::attributes.check_payment_enabled', '2019-03-27 14:26:56', '2019-03-27 14:26:56'),
(575, 'setting::attributes.cod_enabled', '2019-03-27 14:26:58', '2019-03-27 14:26:58'),
(576, 'setting::attributes.currency_data_feed_api_key', '2019-03-27 14:27:11', '2019-03-27 14:27:11'),
(577, 'setting::attributes.currency_rate_exchange_service', '2019-03-27 14:27:23', '2019-03-27 14:27:23'),
(578, 'setting::attributes.custom_footer_assets', '2019-03-27 14:27:41', '2019-03-27 14:27:41'),
(579, 'setting::attributes.custom_header_assets', '2019-03-27 14:35:59', '2019-03-27 14:35:59');
INSERT INTO `translations` (`id`, `key`, `created_at`, `updated_at`) VALUES
(580, 'setting::attributes.customer_role', '2019-03-27 14:36:08', '2019-03-27 14:36:08'),
(581, 'setting::attributes.default_country', '2019-03-27 14:36:20', '2019-03-27 14:36:20'),
(582, 'setting::attributes.default_currency', '2019-03-27 14:45:31', '2019-03-27 14:45:31'),
(583, 'setting::attributes.default_locale', '2019-03-27 14:45:39', '2019-03-27 14:45:39'),
(584, 'setting::attributes.default_timezone', '2019-03-27 14:45:56', '2019-03-27 14:45:56'),
(585, 'setting::attributes.facebook_login_app_id', '2019-03-27 14:46:11', '2019-03-27 14:46:11'),
(586, 'setting::attributes.facebook_login_app_secret', '2019-03-27 14:46:23', '2019-03-27 14:46:23'),
(587, 'setting::attributes.facebook_login_enabled', '2019-03-27 14:46:38', '2019-03-27 14:46:38'),
(588, 'setting::attributes.fixer_access_key', '2019-03-27 14:46:49', '2019-03-27 14:46:49'),
(589, 'setting::attributes.flat_rate_cost', '2019-03-27 14:46:58', '2019-03-27 14:46:58'),
(590, 'setting::attributes.flat_rate_enabled', '2019-03-27 14:47:13', '2019-03-27 14:47:13'),
(591, 'setting::attributes.forge_api_key', '2019-03-27 14:47:24', '2019-03-27 14:47:24'),
(592, 'setting::attributes.free_shipping_enabled', '2019-03-27 14:47:33', '2019-03-27 14:47:33'),
(593, 'setting::attributes.free_shipping_min_amount', '2019-03-27 14:47:58', '2019-03-27 14:47:58'),
(594, 'setting::attributes.google_login_client_id', '2019-03-27 14:48:06', '2019-03-27 14:48:06'),
(595, 'setting::attributes.google_login_client_secret', '2019-03-27 14:48:18', '2019-03-27 14:48:18'),
(596, 'setting::attributes.google_login_enabled', '2019-03-27 14:48:26', '2019-03-27 14:48:26'),
(597, 'setting::attributes.local_pickup_cost', '2019-03-27 14:48:38', '2019-03-27 14:48:38'),
(598, 'setting::attributes.local_pickup_enabled', '2019-03-27 14:48:49', '2019-03-27 14:48:49'),
(599, 'setting::attributes.mail_from_address', '2019-03-27 14:48:58', '2019-03-27 14:48:58'),
(600, 'setting::attributes.mail_from_name', '2019-03-27 14:49:08', '2019-03-27 14:49:08'),
(601, 'setting::attributes.mail_host', '2019-03-27 14:49:21', '2019-03-27 14:49:21'),
(602, 'setting::attributes.mail_password', '2019-03-27 14:49:38', '2019-03-27 14:49:38'),
(603, 'setting::attributes.mail_port', '2019-03-27 14:49:49', '2019-03-27 14:49:49'),
(604, 'setting::attributes.mail_username', '2019-03-27 14:50:03', '2019-03-27 14:50:03'),
(605, 'setting::attributes.paypal_express_enabled', '2019-03-27 14:50:14', '2019-03-27 14:50:14'),
(606, 'setting::attributes.paypal_express_password', '2019-03-27 14:50:24', '2019-03-27 14:50:24'),
(607, 'setting::attributes.paypal_express_signature', '2019-03-27 15:00:13', '2019-03-27 15:00:13'),
(608, 'setting::attributes.paypal_express_test_mode', '2019-03-27 15:00:49', '2019-03-27 15:00:49'),
(609, 'setting::attributes.paypal_express_username', '2019-03-27 15:40:27', '2019-03-27 15:40:27'),
(610, 'setting::attributes.reviews_enabled', '2019-03-27 15:40:47', '2019-03-27 15:40:47'),
(611, 'setting::attributes.send_order_invoice_email', '2019-03-27 15:41:31', '2019-03-27 15:41:31'),
(612, 'setting::attributes.store_address_1', '2019-03-27 15:41:52', '2019-03-27 15:41:52'),
(613, 'setting::attributes.store_address_2', '2019-03-27 15:42:07', '2019-03-27 15:42:07'),
(614, 'setting::attributes.store_city', '2019-03-27 15:42:22', '2019-03-27 15:42:22'),
(615, 'setting::attributes.store_country', '2019-03-27 15:43:04', '2019-03-27 15:43:04'),
(616, 'setting::attributes.store_email', '2019-03-27 15:43:04', '2019-03-27 15:43:04'),
(617, 'setting::attributes.store_phone', '2019-03-27 15:43:05', '2019-03-27 15:43:05'),
(618, 'setting::attributes.store_state', '2019-03-27 15:43:24', '2019-03-27 15:43:24'),
(619, 'setting::attributes.store_zip', '2019-03-27 15:43:43', '2019-03-27 15:43:43'),
(620, 'setting::attributes.stripe_enabled', '2019-03-27 15:44:36', '2019-03-27 15:44:36'),
(621, 'setting::attributes.stripe_publishable_key', '2019-03-27 15:44:56', '2019-03-27 15:44:56'),
(622, 'setting::attributes.stripe_secret_key', '2019-03-27 15:47:18', '2019-03-27 15:47:18'),
(623, 'setting::attributes.supported_countries', '2019-03-27 15:47:24', '2019-03-27 15:47:24'),
(624, 'setting::attributes.supported_countries.*', '2019-03-27 15:47:50', '2019-03-27 15:47:50'),
(625, 'setting::attributes.supported_currencies', '2019-03-27 15:47:53', '2019-03-27 15:47:53'),
(626, 'setting::attributes.supported_currencies.*', '2019-03-27 15:47:58', '2019-03-27 15:47:58'),
(627, 'setting::attributes.supported_locales', '2019-03-27 15:48:32', '2019-03-27 15:48:32'),
(628, 'setting::attributes.supported_locales.*', '2019-03-27 15:49:03', '2019-03-27 15:49:03'),
(629, 'setting::attributes.translatable.bank_transfer_description', '2019-03-27 15:49:16', '2019-03-27 15:49:16'),
(630, 'setting::attributes.translatable.bank_transfer_instructions', '2019-03-27 15:49:28', '2019-03-27 15:49:28'),
(631, 'setting::attributes.translatable.bank_transfer_label', '2019-03-27 15:49:43', '2019-03-27 15:49:43'),
(632, 'setting::attributes.translatable.check_payment_description', '2019-03-27 15:49:56', '2019-03-27 15:49:56'),
(633, 'setting::attributes.translatable.check_payment_instructions', '2019-03-27 15:50:05', '2019-03-27 15:50:05'),
(634, 'setting::attributes.translatable.check_payment_label', '2019-03-27 15:50:13', '2019-03-27 15:50:13'),
(635, 'setting::attributes.translatable.cod_description', '2019-03-27 15:50:19', '2019-03-27 15:50:19'),
(636, 'setting::attributes.translatable.cod_label', '2019-03-27 15:50:27', '2019-03-27 15:50:27'),
(637, 'setting::attributes.translatable.flat_rate_label', '2019-03-27 15:50:30', '2019-03-27 15:50:30'),
(638, 'setting::attributes.translatable.free_shipping_label', '2019-03-27 15:50:32', '2019-03-27 15:50:32'),
(639, 'setting::attributes.translatable.local_pickup_label', '2019-03-27 15:50:35', '2019-03-27 15:50:35'),
(640, 'setting::attributes.translatable.paypal_express_description', '2019-03-27 15:50:54', '2019-03-27 15:50:54'),
(641, 'setting::attributes.translatable.paypal_express_label', '2019-03-27 15:51:09', '2019-03-27 15:51:09'),
(642, 'setting::attributes.translatable.store_name', '2019-03-27 15:51:41', '2019-03-27 15:51:41'),
(643, 'setting::attributes.translatable.store_tagline', '2019-03-27 15:52:11', '2019-03-27 15:52:11'),
(644, 'setting::attributes.translatable.stripe_description', '2019-03-27 15:52:22', '2019-03-27 15:52:22'),
(645, 'setting::attributes.translatable.stripe_label', '2019-03-27 15:52:35', '2019-03-27 15:52:35'),
(646, 'setting::permissions.edit', '2019-03-27 15:52:49', '2019-03-27 15:52:49'),
(647, 'setting::settings.form.allow_reviews', '2019-03-27 15:53:05', '2019-03-27 15:53:05'),
(648, 'setting::settings.form.approve_reviews_automatically', '2019-03-27 15:53:20', '2019-03-27 15:53:20'),
(649, 'setting::settings.form.auto_refresh_currency_rate_frequencies.daily', '2019-03-27 15:53:31', '2019-03-27 15:53:31'),
(650, 'setting::settings.form.auto_refresh_currency_rate_frequencies.monthly', '2019-03-27 15:53:41', '2019-03-27 15:53:41'),
(651, 'setting::settings.form.auto_refresh_currency_rate_frequencies.weekly', '2019-03-27 15:53:52', '2019-03-27 15:53:52'),
(652, 'setting::settings.form.enable_auto_refreshing_currency_rates', '2019-03-27 15:54:12', '2019-03-27 15:54:12'),
(653, 'setting::settings.form.enable_bank_transfer', '2019-03-27 15:54:29', '2019-03-27 15:54:29'),
(654, 'setting::settings.form.enable_check_payment', '2019-03-27 15:54:45', '2019-03-27 15:54:45'),
(655, 'setting::settings.form.enable_cod', '2019-03-27 15:54:58', '2019-03-27 15:54:58'),
(656, 'setting::settings.form.enable_facebook_login', '2019-03-27 15:55:12', '2019-03-27 15:55:12'),
(657, 'setting::settings.form.enable_flat_rate', '2019-03-27 15:55:27', '2019-03-27 15:55:27'),
(658, 'setting::settings.form.enable_free_shipping', '2019-03-27 15:55:54', '2019-03-27 15:55:54'),
(659, 'setting::settings.form.enable_google_login', '2019-03-27 15:56:09', '2019-03-27 15:56:09'),
(660, 'setting::settings.form.enable_local_pickup', '2019-03-27 15:56:24', '2019-03-27 15:56:24'),
(661, 'setting::settings.form.enable_paypal_express', '2019-03-27 15:56:38', '2019-03-27 15:56:38'),
(662, 'setting::settings.form.enable_stripe', '2019-03-27 15:57:10', '2019-03-27 15:57:10'),
(663, 'setting::settings.form.leave_it_blank_to_disable_fuzzy_search', '2019-03-27 15:57:35', '2019-03-27 15:57:35'),
(664, 'setting::settings.form.please_select', '2019-03-27 15:57:47', '2019-03-27 15:57:47'),
(665, 'setting::settings.form.search_engines.algolia', '2019-03-27 15:58:26', '2019-03-27 15:58:26'),
(666, 'setting::settings.form.search_engines.mysql', '2019-03-27 15:59:53', '2019-03-27 15:59:53'),
(667, 'setting::settings.form.select_service', '2019-03-27 16:00:02', '2019-03-27 16:00:02'),
(668, 'setting::settings.form.send_invoice_automatically', '2019-03-27 16:00:39', '2019-03-27 16:00:39'),
(669, 'setting::settings.form.use_paypal_sandbox_for_test_payments', '2019-03-27 16:00:50', '2019-03-27 16:00:50'),
(670, 'setting::settings.settings', '2019-03-27 16:01:06', '2019-03-27 16:01:06'),
(671, 'setting::settings.tabs.bank_transfer', '2019-03-27 16:01:20', '2019-03-27 16:01:20'),
(672, 'setting::settings.tabs.check_payment', '2019-03-27 16:01:30', '2019-03-27 16:01:30'),
(673, 'setting::settings.tabs.cod', '2019-03-27 16:01:47', '2019-03-27 16:01:47'),
(674, 'setting::settings.tabs.currency', '2019-03-27 16:05:47', '2019-03-27 16:05:47'),
(675, 'setting::settings.tabs.custom_css_js', '2019-03-27 16:06:01', '2019-03-27 16:06:01'),
(676, 'setting::settings.tabs.facebook', '2019-03-27 16:06:17', '2019-03-27 16:06:17'),
(677, 'setting::settings.tabs.flat_rate', '2019-03-27 16:06:37', '2019-03-27 16:06:37'),
(678, 'setting::settings.tabs.free_shipping', '2019-03-27 16:06:51', '2019-03-27 16:06:51'),
(679, 'setting::settings.tabs.general', '2019-03-27 16:08:27', '2019-03-27 16:08:27'),
(680, 'setting::settings.tabs.google', '2019-03-27 16:08:37', '2019-03-27 16:08:37'),
(681, 'setting::settings.tabs.group.general_settings', '2019-03-27 16:08:49', '2019-03-27 16:08:49'),
(682, 'setting::settings.tabs.group.payment_methods', '2019-03-27 16:08:58', '2019-03-27 16:08:58'),
(683, 'setting::settings.tabs.group.shipping_methods', '2019-03-27 16:09:49', '2019-03-27 16:09:49'),
(684, 'setting::settings.tabs.group.social_logins', '2019-03-27 16:10:02', '2019-03-27 16:10:02'),
(685, 'setting::settings.tabs.local_pickup', '2019-03-27 16:10:13', '2019-03-27 16:10:13'),
(686, 'setting::settings.tabs.mail', '2019-03-27 16:10:29', '2019-03-27 16:10:29'),
(687, 'setting::settings.tabs.paypal_express', '2019-03-27 16:10:58', '2019-03-27 16:10:58'),
(688, 'setting::settings.tabs.redis', '2019-03-27 16:11:28', '2019-03-27 16:11:28'),
(689, 'setting::settings.tabs.store', '2019-03-27 16:11:39', '2019-03-27 16:11:39'),
(690, 'setting::settings.tabs.stripe', '2019-03-27 16:11:51', '2019-03-27 16:11:51'),
(691, 'setting::settings.validation.sqlite_is_not_installed', '2019-03-27 16:12:16', '2019-03-27 16:12:16'),
(692, 'setting::sidebar.general', '2019-03-27 16:12:26', '2019-03-27 16:12:26'),
(693, 'setting::sidebar.settings', '2019-03-27 16:12:36', '2019-03-27 16:12:36'),
(694, 'slider::attributes.arrows', '2019-03-27 16:12:56', '2019-03-27 16:12:56'),
(695, 'slider::attributes.autoplay', '2019-03-27 16:13:09', '2019-03-27 16:13:09'),
(696, 'slider::attributes.autoplay_speed', '2019-03-27 16:13:24', '2019-03-27 16:13:24'),
(697, 'slider::attributes.call_to_action_delay', '2019-03-27 16:13:32', '2019-03-27 16:13:32'),
(698, 'slider::attributes.call_to_action_effect', '2019-03-27 16:13:42', '2019-03-27 16:13:42'),
(699, 'slider::attributes.call_to_action_text', '2019-03-27 16:13:53', '2019-03-27 16:13:53'),
(700, 'slider::attributes.call_to_action_url', '2019-03-27 16:14:03', '2019-03-27 16:14:03'),
(701, 'slider::attributes.caption_1', '2019-03-27 16:14:13', '2019-03-27 16:14:13'),
(702, 'slider::attributes.caption_1_delay', '2019-03-27 16:14:31', '2019-03-27 16:14:31'),
(703, 'slider::attributes.caption_1_effect', '2019-03-27 16:14:46', '2019-03-27 16:14:46'),
(704, 'slider::attributes.caption_2', '2019-03-27 16:14:55', '2019-03-27 16:14:55'),
(705, 'slider::attributes.caption_2_delay', '2019-03-27 16:15:07', '2019-03-27 16:15:07'),
(706, 'slider::attributes.caption_2_effect', '2019-03-27 16:15:13', '2019-03-27 16:15:13'),
(707, 'slider::attributes.caption_3', '2019-03-27 16:15:22', '2019-03-27 16:15:22'),
(708, 'slider::attributes.caption_3_delay', '2019-03-27 16:15:28', '2019-03-27 16:15:28'),
(709, 'slider::attributes.caption_3_effect', '2019-03-27 16:15:33', '2019-03-27 16:15:33'),
(710, 'slider::attributes.name', '2019-03-27 16:15:46', '2019-03-27 16:15:46'),
(711, 'slider::attributes.open_in_new_window', '2019-03-27 16:15:58', '2019-03-27 16:15:58'),
(712, 'slider::permissions.create', '2019-03-27 16:16:09', '2019-03-27 16:16:09'),
(713, 'slider::permissions.destroy', '2019-03-27 16:16:20', '2019-03-27 16:16:20'),
(714, 'slider::permissions.edit', '2019-03-27 16:16:31', '2019-03-27 16:16:31'),
(715, 'slider::permissions.index', '2019-03-27 16:16:46', '2019-03-27 16:16:46'),
(716, 'slider::sliders.effects.fadeInDown', '2019-03-27 16:17:44', '2019-03-27 16:17:44'),
(717, 'slider::sliders.effects.fadeInLeft', '2019-03-27 16:19:46', '2019-03-27 16:19:46'),
(718, 'slider::sliders.effects.fadeInRight', '2019-03-27 16:20:32', '2019-03-27 16:20:32'),
(719, 'slider::sliders.effects.fadeInUp', '2019-03-27 16:20:48', '2019-03-27 16:20:48'),
(720, 'slider::sliders.effects.lightSpeedIn', '2019-03-27 16:21:05', '2019-03-27 16:21:05'),
(721, 'slider::sliders.effects.slideInDown', '2019-03-27 16:21:21', '2019-03-27 16:21:21'),
(722, 'slider::sliders.effects.slideInLeft', '2019-03-27 16:23:10', '2019-03-27 16:23:10'),
(723, 'slider::sliders.effects.slideInRight', '2019-03-27 16:27:16', '2019-03-27 16:27:16'),
(724, 'slider::sliders.effects.slideInUp', '2019-03-27 16:30:28', '2019-03-27 16:30:28'),
(725, 'slider::sliders.effects.zoomIn', '2019-03-27 16:30:43', '2019-03-27 16:30:43'),
(726, 'slider::sliders.form.3000ms', '2019-03-27 16:31:07', '2019-03-27 16:31:07'),
(727, 'slider::sliders.form.enable_autoplay', '2019-03-27 16:31:41', '2019-03-27 16:31:41'),
(728, 'slider::sliders.form.show_arrows', '2019-03-27 16:31:58', '2019-03-27 16:31:58'),
(729, 'slider::sliders.slide.add_slide', '2019-03-27 16:32:12', '2019-03-27 16:32:12'),
(730, 'slider::sliders.slide.form.1500ms', '2019-03-27 16:32:49', '2019-03-27 16:32:49'),
(731, 'slider::sliders.slide.form.call_to_action', '2019-03-27 16:33:04', '2019-03-27 16:33:04'),
(732, 'slider::sliders.slide.form.call_to_action_url', '2019-03-27 16:33:16', '2019-03-27 16:33:16'),
(733, 'slider::sliders.slide.form.caption_1', '2019-03-27 16:33:30', '2019-03-27 16:33:30'),
(734, 'slider::sliders.slide.form.caption_2', '2019-03-27 16:33:44', '2019-03-27 16:33:44'),
(735, 'slider::sliders.slide.form.caption_3', '2019-03-27 16:33:51', '2019-03-27 16:33:51'),
(736, 'slider::sliders.slide.form.open_in_new_window', '2019-03-27 16:34:33', '2019-03-27 16:34:33'),
(737, 'slider::sliders.slide.form.tabs.general', '2019-03-27 16:35:08', '2019-03-27 16:35:08'),
(738, 'slider::sliders.slide.form.tabs.options', '2019-03-27 16:35:20', '2019-03-27 16:35:20'),
(739, 'slider::sliders.slider', '2019-03-27 16:35:32', '2019-03-27 16:35:32'),
(740, 'slider::sliders.sliders', '2019-03-27 16:35:42', '2019-03-27 16:35:42'),
(741, 'slider::sliders.table.name', '2019-03-27 16:36:05', '2019-03-27 16:36:05'),
(742, 'slider::sliders.tabs.group.slider_information', '2019-03-27 16:36:17', '2019-03-27 16:36:17'),
(743, 'slider::sliders.tabs.settings', '2019-03-27 16:36:31', '2019-03-27 16:36:31'),
(744, 'slider::sliders.tabs.slides', '2019-03-27 16:36:40', '2019-03-27 16:36:40'),
(745, 'storefront::404.not_found', '2019-03-27 16:36:58', '2019-03-27 16:36:58'),
(746, 'storefront::404.oops', '2019-03-27 16:37:20', '2019-03-27 16:37:20'),
(747, 'storefront::404.the_page_not_found', '2019-03-27 16:37:33', '2019-03-27 16:37:33'),
(748, 'storefront::account.dashboard.account_information', '2019-03-27 16:37:47', '2019-03-27 16:37:47'),
(749, 'storefront::account.dashboard.edit', '2019-03-27 16:37:58', '2019-03-27 16:37:58'),
(750, 'storefront::account.dashboard.recent_orders', '2019-03-27 16:38:16', '2019-03-27 16:38:16'),
(751, 'storefront::account.dashboard.view_all', '2019-03-27 16:38:34', '2019-03-27 16:38:34'),
(752, 'storefront::account.links.dashboard', '2019-03-27 16:38:45', '2019-03-27 16:38:45'),
(753, 'storefront::account.links.logout', '2019-03-27 16:38:55', '2019-03-27 16:38:55'),
(754, 'storefront::account.links.my_account', '2019-03-27 16:39:06', '2019-03-27 16:39:06'),
(755, 'storefront::account.links.my_orders', '2019-03-27 16:39:17', '2019-03-27 16:39:17'),
(756, 'storefront::account.links.my_profile', '2019-03-27 16:39:28', '2019-03-27 16:39:28'),
(757, 'storefront::account.links.my_reviews', '2019-03-27 16:39:39', '2019-03-27 16:39:39'),
(758, 'storefront::account.links.my_wishlist', '2019-03-27 16:39:48', '2019-03-27 16:39:48'),
(759, 'storefront::account.orders.date', '2019-03-27 16:39:58', '2019-03-27 16:39:58'),
(760, 'storefront::account.orders.no_orders', '2019-03-27 16:40:18', '2019-03-27 16:40:18'),
(761, 'storefront::account.orders.order_id', '2019-03-27 16:41:40', '2019-03-27 16:41:40'),
(762, 'storefront::account.orders.status', '2019-03-27 16:41:52', '2019-03-27 16:41:52'),
(763, 'storefront::account.orders.total', '2019-03-27 16:42:50', '2019-03-27 16:42:50'),
(764, 'storefront::account.orders.view_order', '2019-03-27 16:43:02', '2019-03-27 16:43:02'),
(765, 'storefront::account.profile.account', '2019-03-27 16:43:18', '2019-03-27 16:43:18'),
(766, 'storefront::account.profile.confirm_password', '2019-03-27 16:43:32', '2019-03-27 16:43:32'),
(767, 'storefront::account.profile.email', '2019-03-27 16:43:41', '2019-03-27 16:43:41'),
(768, 'storefront::account.profile.first_name', '2019-03-27 16:43:55', '2019-03-27 16:43:55'),
(769, 'storefront::account.profile.last_name', '2019-03-27 16:44:11', '2019-03-27 16:44:11'),
(770, 'storefront::account.profile.new_password', '2019-03-27 16:44:28', '2019-03-27 16:44:28'),
(771, 'storefront::account.profile.password', '2019-03-27 16:44:39', '2019-03-27 16:44:39'),
(772, 'storefront::account.profile.save_changes', '2019-03-27 16:44:54', '2019-03-27 16:44:54'),
(773, 'storefront::account.reviews.date', '2019-03-27 16:45:05', '2019-03-27 16:45:05'),
(774, 'storefront::account.reviews.no_reviews', '2019-03-27 16:45:19', '2019-03-27 16:45:19'),
(775, 'storefront::account.reviews.product', '2019-03-27 16:45:28', '2019-03-27 16:45:28'),
(776, 'storefront::account.reviews.rating', '2019-03-27 16:45:39', '2019-03-27 16:45:39'),
(777, 'storefront::account.view_order.billing_address', '2019-03-27 16:45:57', '2019-03-27 16:45:57'),
(778, 'storefront::account.view_order.coupon', '2019-03-27 16:46:05', '2019-03-27 16:46:05'),
(779, 'storefront::account.view_order.date', '2019-03-27 16:46:15', '2019-03-27 16:46:15'),
(780, 'storefront::account.view_order.email', '2019-03-27 16:46:24', '2019-03-27 16:46:24'),
(781, 'storefront::account.view_order.line_total', '2019-03-27 16:46:41', '2019-03-27 16:46:41'),
(782, 'storefront::account.view_order.payment_method', '2019-03-27 16:47:15', '2019-03-27 16:47:15'),
(783, 'storefront::account.view_order.product', '2019-03-27 16:47:26', '2019-03-27 16:47:26'),
(784, 'storefront::account.view_order.quantity', '2019-03-27 16:47:36', '2019-03-27 16:47:36'),
(785, 'storefront::account.view_order.shipping_address', '2019-03-27 16:47:51', '2019-03-27 16:47:51'),
(786, 'storefront::account.view_order.subtotal', '2019-03-27 16:48:04', '2019-03-27 16:48:04'),
(787, 'storefront::account.view_order.telephone', '2019-03-27 16:48:15', '2019-03-27 16:48:15'),
(788, 'storefront::account.view_order.total', '2019-03-27 16:48:31', '2019-03-27 16:48:31'),
(789, 'storefront::account.view_order.unit_price', '2019-03-27 16:48:43', '2019-03-27 16:48:43'),
(790, 'storefront::account.view_order.view_order', '2019-03-27 16:48:55', '2019-03-27 16:48:55'),
(791, 'storefront::account.wishlist.availability', '2019-03-27 16:49:04', '2019-03-27 16:49:04'),
(792, 'storefront::account.wishlist.empty_wishlist', '2019-03-27 16:49:18', '2019-03-27 16:49:18'),
(793, 'storefront::account.wishlist.in_stock', '2019-03-27 16:49:40', '2019-03-27 16:49:40'),
(794, 'storefront::account.wishlist.out_of_stock', '2019-03-27 16:50:29', '2019-03-27 16:50:29'),
(795, 'storefront::account.wishlist.price', '2019-03-27 16:50:41', '2019-03-27 16:50:41'),
(796, 'storefront::account.wishlist.product', '2019-03-27 16:50:50', '2019-03-27 16:50:50'),
(797, 'storefront::account.wishlist.remove', '2019-03-27 16:51:30', '2019-03-27 16:51:30'),
(798, 'storefront::attributes.call_to_action_text', '2019-03-27 16:52:18', '2019-03-27 16:52:18'),
(799, 'storefront::attributes.call_to_action_url', '2019-03-27 16:52:37', '2019-03-27 16:52:37'),
(800, 'storefront::attributes.caption_1', '2019-03-27 16:52:46', '2019-03-27 16:52:46'),
(801, 'storefront::attributes.caption_2', '2019-03-27 16:52:57', '2019-03-27 16:52:57'),
(802, 'storefront::attributes.column_products', '2019-03-27 16:53:08', '2019-03-27 16:53:08'),
(803, 'storefront::attributes.column_title', '2019-03-27 16:53:18', '2019-03-27 16:53:18'),
(804, 'storefront::attributes.enabled', '2019-03-27 16:53:28', '2019-03-27 16:53:28'),
(805, 'storefront::attributes.icon', '2019-03-27 16:53:39', '2019-03-27 16:53:39'),
(806, 'storefront::attributes.open_in_new_window', '2019-03-27 16:53:49', '2019-03-27 16:53:49'),
(807, 'storefront::attributes.products', '2019-03-27 16:53:58', '2019-03-27 16:53:58'),
(808, 'storefront::attributes.section_status', '2019-03-27 16:54:08', '2019-03-27 16:54:08'),
(809, 'storefront::attributes.section_title', '2019-03-27 16:54:18', '2019-03-27 16:54:18'),
(810, 'storefront::attributes.storefront_category_menu', '2019-03-27 16:54:29', '2019-03-27 16:54:29'),
(811, 'storefront::attributes.storefront_category_menu_title', '2019-03-27 16:54:42', '2019-03-27 16:54:42'),
(812, 'storefront::attributes.storefront_copyright_text', '2019-03-27 16:54:52', '2019-03-27 16:54:52'),
(813, 'storefront::attributes.storefront_fb_link', '2019-03-27 16:55:02', '2019-03-27 16:55:02'),
(814, 'storefront::attributes.storefront_footer_address', '2019-03-27 16:55:11', '2019-03-27 16:55:11'),
(815, 'storefront::attributes.storefront_footer_menu', '2019-03-27 16:55:23', '2019-03-27 16:55:23'),
(816, 'storefront::attributes.storefront_footer_menu_title', '2019-03-27 16:55:31', '2019-03-27 16:55:31'),
(817, 'storefront::attributes.storefront_google_plus_link', '2019-03-27 16:55:41', '2019-03-27 16:55:41'),
(818, 'storefront::attributes.storefront_instagram_link', '2019-03-27 16:55:52', '2019-03-27 16:55:52'),
(819, 'storefront::attributes.storefront_layout', '2019-03-27 16:56:45', '2019-03-27 16:56:45'),
(820, 'storefront::attributes.storefront_linkedin_link', '2019-03-27 16:56:54', '2019-03-27 16:56:54'),
(821, 'storefront::attributes.storefront_pinterest_link', '2019-03-27 16:57:04', '2019-03-27 16:57:04'),
(822, 'storefront::attributes.storefront_privacy_page', '2019-03-27 16:57:19', '2019-03-27 16:57:19'),
(823, 'storefront::attributes.storefront_slider', '2019-03-27 16:57:29', '2019-03-27 16:57:29'),
(824, 'storefront::attributes.storefront_terms_page', '2019-03-27 16:57:41', '2019-03-27 16:57:41'),
(825, 'storefront::attributes.storefront_theme', '2019-03-27 16:58:43', '2019-03-27 16:58:43'),
(826, 'storefront::attributes.storefront_twitter_link', '2019-03-27 16:58:57', '2019-03-27 16:58:57'),
(827, 'storefront::attributes.storefront_youtube_link', '2019-03-27 16:59:08', '2019-03-27 16:59:08'),
(828, 'storefront::attributes.subtitle', '2019-03-27 16:59:19', '2019-03-27 16:59:19'),
(829, 'storefront::attributes.tab_title', '2019-03-27 16:59:38', '2019-03-27 16:59:38'),
(830, 'storefront::attributes.tab_products', '2019-03-27 16:59:48', '2019-03-27 16:59:48'),
(831, 'storefront::attributes.title', '2019-03-27 17:00:07', '2019-03-27 17:00:07'),
(832, 'storefront::attributes.total_products', '2019-03-27 17:00:21', '2019-03-27 17:00:21'),
(833, 'storefront::attributes.url', '2019-03-27 17:00:30', '2019-03-27 17:00:30'),
(834, 'storefront::cart.apply_coupon', '2019-03-27 17:00:42', '2019-03-27 17:00:42'),
(835, 'storefront::cart.cart', '2019-03-27 17:00:51', '2019-03-27 17:00:51'),
(836, 'storefront::cart.cart_totals', '2019-03-27 17:01:01', '2019-03-27 17:01:01'),
(837, 'storefront::cart.checkout', '2019-03-27 17:01:09', '2019-03-27 17:01:09'),
(838, 'storefront::cart.coupon', '2019-03-27 17:03:16', '2019-03-27 17:03:16'),
(839, 'storefront::cart.no_shipping_method_is_available', '2019-03-27 17:04:03', '2019-03-27 17:04:03'),
(840, 'storefront::cart.price', '2019-03-27 17:04:12', '2019-03-27 17:04:12'),
(841, 'storefront::cart.product', '2019-03-27 17:05:21', '2019-03-27 17:05:21'),
(842, 'storefront::cart.quantity', '2019-03-27 17:05:40', '2019-03-27 17:05:40'),
(843, 'storefront::cart.remove', '2019-03-27 17:05:49', '2019-03-27 17:05:49'),
(844, 'storefront::cart.shipping_method', '2019-03-27 17:06:07', '2019-03-27 17:06:07'),
(845, 'storefront::cart.subtotal', '2019-03-27 17:07:24', '2019-03-27 17:07:24'),
(846, 'storefront::cart.total', '2019-03-27 17:07:48', '2019-03-27 17:07:48'),
(847, 'storefront::cart.update', '2019-03-27 17:07:56', '2019-03-27 17:07:56'),
(848, 'storefront::cart.your_cart_is_empty', '2019-03-27 17:08:51', '2019-03-27 17:08:51'),
(849, 'storefront::checkout.address', '2019-03-27 17:09:36', '2019-03-27 17:09:36'),
(850, 'storefront::checkout.back', '2019-03-27 17:09:47', '2019-03-27 17:09:47'),
(851, 'storefront::checkout.checkout', '2019-03-27 17:09:58', '2019-03-27 17:09:58'),
(852, 'storefront::checkout.confirm', '2019-03-27 17:10:19', '2019-03-27 17:10:19'),
(853, 'storefront::checkout.continue', '2019-03-27 17:10:32', '2019-03-27 17:10:32'),
(854, 'storefront::checkout.i_agree_to_the', '2019-03-27 17:10:42', '2019-03-27 17:10:42'),
(855, 'storefront::checkout.payment', '2019-03-27 17:11:12', '2019-03-27 17:11:12'),
(856, 'storefront::checkout.place_order', '2019-03-27 17:11:35', '2019-03-27 17:11:35'),
(857, 'storefront::checkout.please_select', '2019-03-27 17:11:48', '2019-03-27 17:11:48'),
(858, 'storefront::checkout.tabs.address', '2019-03-27 17:12:02', '2019-03-27 17:12:02'),
(859, 'storefront::checkout.tabs.attributes.billing.address_2', '2019-03-27 17:12:21', '2019-03-27 17:12:21'),
(860, 'storefront::checkout.tabs.attributes.billing.city', '2019-03-27 17:12:33', '2019-03-27 17:12:33'),
(861, 'storefront::checkout.tabs.attributes.billing.country', '2019-03-27 17:12:44', '2019-03-27 17:12:44'),
(862, 'storefront::checkout.tabs.attributes.billing.first_name', '2019-03-27 17:12:57', '2019-03-27 17:12:57'),
(863, 'storefront::checkout.tabs.attributes.billing.last_name', '2019-03-27 17:13:09', '2019-03-27 17:13:09'),
(864, 'storefront::checkout.tabs.attributes.billing.state', '2019-03-27 17:13:21', '2019-03-27 17:13:21'),
(865, 'storefront::checkout.tabs.attributes.billing.zip', '2019-03-27 17:13:34', '2019-03-27 17:13:34'),
(866, 'storefront::checkout.tabs.attributes.create_an_account', '2019-03-27 17:13:46', '2019-03-27 17:13:46'),
(867, 'storefront::checkout.tabs.attributes.customer_email', '2019-03-27 17:13:56', '2019-03-27 17:13:56'),
(868, 'storefront::checkout.tabs.attributes.customer_phone', '2019-03-27 17:14:05', '2019-03-27 17:14:05'),
(869, 'storefront::checkout.tabs.attributes.password', '2019-03-27 17:14:18', '2019-03-27 17:14:18'),
(870, 'storefront::checkout.tabs.attributes.ship_to_a_different_address', '2019-03-27 17:15:23', '2019-03-27 17:15:23'),
(871, 'storefront::checkout.tabs.attributes.shipping.address_1', '2019-03-27 17:15:35', '2019-03-27 17:15:35'),
(872, 'storefront::checkout.tabs.attributes.shipping.address_2', '2019-03-27 17:15:43', '2019-03-27 17:15:43'),
(873, 'storefront::checkout.tabs.attributes.shipping.city', '2019-03-27 17:15:55', '2019-03-27 17:15:55'),
(874, 'storefront::checkout.tabs.attributes.shipping.country', '2019-03-27 17:16:03', '2019-03-27 17:16:03'),
(875, 'storefront::checkout.tabs.attributes.shipping.first_name', '2019-03-27 17:16:19', '2019-03-27 17:16:19'),
(876, 'storefront::checkout.tabs.attributes.shipping.last_name', '2019-03-27 17:16:22', '2019-03-27 17:16:22'),
(877, 'storefront::checkout.tabs.attributes.shipping.state', '2019-03-27 17:16:57', '2019-03-27 17:16:57'),
(878, 'storefront::checkout.tabs.attributes.shipping.zip', '2019-03-27 17:17:08', '2019-03-27 17:17:08'),
(879, 'storefront::checkout.tabs.billing_address', '2019-03-27 17:17:18', '2019-03-27 17:17:18'),
(880, 'storefront::checkout.tabs.confirm.item_list', '2019-03-27 17:17:58', '2019-03-27 17:17:58'),
(881, 'storefront::checkout.tabs.confirm.payment_instructions', '2019-03-27 17:18:08', '2019-03-27 17:18:08'),
(882, 'storefront::checkout.tabs.confirm.price', '2019-03-27 17:18:24', '2019-03-27 17:18:24'),
(883, 'storefront::checkout.tabs.confirm.product', '2019-03-27 17:18:42', '2019-03-27 17:18:42'),
(884, 'storefront::checkout.tabs.confirm.quantity', '2019-03-27 17:19:03', '2019-03-27 17:19:03'),
(885, 'storefront::checkout.tabs.confirm.total', '2019-03-27 17:19:12', '2019-03-27 17:19:12'),
(886, 'storefront::checkout.tabs.payment.no_payment_method', '2019-03-27 17:19:28', '2019-03-27 17:19:28'),
(887, 'storefront::checkout.tabs.payment.payment_method', '2019-03-27 17:19:38', '2019-03-27 17:19:38'),
(888, 'storefront::checkout.tabs.personal_information', '2019-03-27 17:20:13', '2019-03-27 17:20:13'),
(889, 'storefront::checkout.tabs.shipping_address', '2019-03-27 17:20:25', '2019-03-27 17:20:25'),
(890, 'storefront::checkout.terms_and_conditions', '2019-03-27 17:22:24', '2019-03-27 17:22:24'),
(891, 'storefront::compare.add_to_cart', '2019-03-27 17:22:45', '2019-03-27 17:22:45'),
(892, 'storefront::compare.compare', '2019-03-27 17:22:54', '2019-03-27 17:22:54'),
(893, 'storefront::compare.go_back', '2019-03-27 17:23:03', '2019-03-27 17:23:03'),
(894, 'storefront::compare.no_product', '2019-03-27 17:24:04', '2019-03-27 17:24:04'),
(895, 'storefront::compare.price', '2019-03-27 17:24:16', '2019-03-27 17:24:16'),
(896, 'storefront::compare.product_overview', '2019-03-27 17:24:28', '2019-03-27 17:24:28'),
(897, 'storefront::compare.view_details', '2019-03-27 17:26:24', '2019-03-27 17:26:24'),
(898, 'storefront::contact.contact', '2019-03-27 17:26:34', '2019-03-27 17:26:34'),
(899, 'storefront::contact.email', '2019-03-27 17:26:46', '2019-03-27 17:26:46'),
(900, 'storefront::contact.message', '2019-03-27 17:26:58', '2019-03-27 17:26:58'),
(901, 'storefront::contact.phone', '2019-03-27 17:27:07', '2019-03-27 17:27:07'),
(902, 'storefront::contact.send_us_a_message', '2019-03-27 17:27:20', '2019-03-27 17:27:20'),
(903, 'storefront::contact.subject', '2019-03-27 17:27:30', '2019-03-27 17:27:30'),
(904, 'storefront::contact.submit', '2019-03-27 17:27:40', '2019-03-27 17:27:40'),
(905, 'storefront::contact.your_email', '2019-03-27 17:27:52', '2019-03-27 17:27:52'),
(906, 'storefront::contact.your_message_has_been_sent', '2019-03-27 17:28:04', '2019-03-27 17:28:04'),
(907, 'storefront::invoice.billing_address', '2019-03-27 17:28:13', '2019-03-27 17:28:13'),
(908, 'storefront::invoice.coupon', '2019-03-27 17:28:23', '2019-03-27 17:28:23'),
(909, 'storefront::invoice.date', '2019-03-27 17:28:34', '2019-03-27 17:28:34'),
(910, 'storefront::invoice.email', '2019-03-27 17:28:43', '2019-03-27 17:28:43'),
(911, 'storefront::invoice.invoice', '2019-03-27 17:28:53', '2019-03-27 17:28:53'),
(912, 'storefront::invoice.line_total', '2019-03-27 17:29:02', '2019-03-27 17:29:02'),
(913, 'storefront::invoice.order_details', '2019-03-27 17:29:13', '2019-03-27 17:29:13'),
(914, 'storefront::invoice.order_id', '2019-03-27 17:29:25', '2019-03-27 17:29:25'),
(915, 'storefront::invoice.payment_method', '2019-03-27 17:29:39', '2019-03-27 17:29:39'),
(916, 'storefront::invoice.phone', '2019-03-27 17:29:48', '2019-03-27 17:29:48'),
(917, 'storefront::invoice.product', '2019-03-27 17:32:11', '2019-03-27 17:32:11'),
(918, 'storefront::invoice.quantity', '2019-03-27 17:32:19', '2019-03-27 17:32:19'),
(919, 'storefront::invoice.shipping_address', '2019-03-27 17:32:30', '2019-03-27 17:32:30'),
(920, 'storefront::invoice.subject', '2019-03-27 17:32:42', '2019-03-27 17:32:42'),
(921, 'storefront::invoice.subtotal', '2019-03-27 17:32:50', '2019-03-27 17:32:50'),
(922, 'storefront::invoice.total', '2019-03-27 17:32:59', '2019-03-27 17:32:59'),
(923, 'storefront::invoice.unit_price', '2019-03-27 17:33:11', '2019-03-27 17:33:11'),
(924, 'storefront::layout.account_settings', '2019-03-27 17:33:20', '2019-03-27 17:33:20'),
(925, 'storefront::layout.all_categories', '2019-03-27 17:33:29', '2019-03-27 17:33:29'),
(926, 'storefront::layout.compare', '2019-03-27 17:33:40', '2019-03-27 17:33:40'),
(927, 'storefront::layout.enter_your_email', '2019-03-27 17:34:26', '2019-03-27 17:34:26'),
(928, 'storefront::layout.log_in', '2019-03-27 17:34:37', '2019-03-27 17:34:37'),
(929, 'storefront::layout.mini_cart.checkout', '2019-03-27 17:34:46', '2019-03-27 17:34:46'),
(930, 'storefront::layout.mini_cart.my_cart', '2019-03-27 17:34:55', '2019-03-27 17:34:55'),
(931, 'storefront::layout.mini_cart.remove', '2019-03-27 17:35:04', '2019-03-27 17:35:04'),
(932, 'storefront::layout.mini_cart.subtotal', '2019-03-27 17:35:13', '2019-03-27 17:35:13'),
(933, 'storefront::layout.mini_cart.view_cart', '2019-03-27 17:35:23', '2019-03-27 17:35:23'),
(934, 'storefront::layout.mini_cart.your_cart_is_empty', '2019-03-27 17:35:44', '2019-03-27 17:35:44'),
(935, 'storefront::layout.product_tags', '2019-03-27 17:35:57', '2019-03-27 17:35:57'),
(936, 'storefront::layout.search', '2019-03-27 17:36:06', '2019-03-27 17:36:06'),
(937, 'storefront::layout.search_for_products', '2019-03-27 17:36:26', '2019-03-27 17:36:26'),
(938, 'storefront::layout.subscribe', '2019-03-27 17:36:35', '2019-03-27 17:36:35'),
(939, 'storefront::layouts.default', '2019-03-27 17:36:43', '2019-03-27 17:36:43'),
(940, 'storefront::layouts.slider_with_banners', '2019-03-27 17:36:57', '2019-03-27 17:36:57'),
(941, 'storefront::order_placed.order_id', '2019-03-27 17:37:10', '2019-03-27 17:37:10'),
(942, 'storefront::order_placed.thanks', '2019-03-27 17:37:26', '2019-03-27 17:37:26'),
(943, 'storefront::order_placed.your_order_has_been_placed', '2019-03-27 17:37:51', '2019-03-27 17:37:51'),
(944, 'storefront::permissions.storefront.edit', '2019-03-27 17:39:30', '2019-03-27 17:39:30'),
(945, 'storefront::product.add_to_cart', '2019-03-27 17:39:45', '2019-03-27 17:39:45'),
(946, 'storefront::product.add_to_compare', '2019-03-27 17:40:46', '2019-03-27 17:40:46'),
(947, 'storefront::product.add_to_wishlist', '2019-03-27 17:41:01', '2019-03-27 17:41:01'),
(948, 'storefront::product.availability', '2019-03-27 17:41:19', '2019-03-27 17:41:19'),
(949, 'storefront::product.customer_reviews', '2019-03-27 17:41:27', '2019-03-27 17:41:27'),
(950, 'storefront::product.in_stock', '2019-03-27 17:41:59', '2019-03-27 17:41:59'),
(951, 'storefront::product.options.choose_an_option', '2019-03-27 17:42:12', '2019-03-27 17:42:12'),
(952, 'storefront::product.out_of_stock', '2019-03-27 17:42:29', '2019-03-27 17:42:29'),
(953, 'storefront::product.qty', '2019-03-27 17:42:47', '2019-03-27 17:42:47'),
(954, 'storefront::product.related_products', '2019-03-27 17:42:57', '2019-03-27 17:42:57'),
(955, 'storefront::product.reviews.1_star', '2019-03-27 17:43:10', '2019-03-27 17:43:10'),
(956, 'storefront::product.reviews.2_star', '2019-03-27 17:43:19', '2019-03-27 17:43:19'),
(957, 'storefront::product.reviews.3_star', '2019-03-27 17:58:46', '2019-03-27 17:58:46'),
(958, 'storefront::product.reviews.5_star', '2019-03-27 17:59:05', '2019-03-27 17:59:05'),
(959, 'storefront::product.reviews.4_star', '2019-03-27 17:59:17', '2019-03-27 17:59:17'),
(960, 'storefront::product.reviews.add_a_review', '2019-03-27 17:59:31', '2019-03-27 17:59:31'),
(961, 'storefront::product.reviews.add_review', '2019-03-27 17:59:43', '2019-03-27 17:59:43'),
(962, 'storefront::product.reviews.html_is_not_translated', '2019-03-27 18:00:19', '2019-03-27 18:00:19'),
(963, 'storefront::product.reviews.note', '2019-03-27 18:00:28', '2019-03-27 18:00:28'),
(964, 'storefront::product.reviews.out_of_5', '2019-03-27 18:01:56', '2019-03-27 18:01:56'),
(965, 'storefront::product.reviews.reviewer_name', '2019-03-27 18:02:05', '2019-03-27 18:02:05'),
(966, 'storefront::product.reviews.there_are_no_reviews_for_this_product', '2019-03-27 18:02:44', '2019-03-27 18:02:44'),
(967, 'storefront::product.reviews.star', '2019-03-27 18:02:52', '2019-03-27 18:02:52'),
(968, 'storefront::product.reviews.your_rating', '2019-03-27 18:03:10', '2019-03-27 18:03:10'),
(969, 'storefront::product.reviews.your_review', '2019-03-27 18:03:19', '2019-03-27 18:03:19'),
(970, 'storefront::product.sku', '2019-03-27 18:04:30', '2019-03-27 18:04:30'),
(971, 'storefront::product.tabs.additional_information', '2019-03-27 18:04:42', '2019-03-27 18:04:42'),
(972, 'storefront::product.tabs.description', '2019-03-27 18:04:52', '2019-03-27 18:04:52'),
(973, 'storefront::product.tabs.reviews', '2019-03-27 18:05:02', '2019-03-27 18:05:02'),
(974, 'storefront::product.you_might_also_like', '2019-03-27 18:05:34', '2019-03-27 18:05:34'),
(975, 'storefront::product_card.add_to_cart', '2019-03-27 18:05:45', '2019-03-27 18:05:45'),
(976, 'storefront::product_card.add_to_compare', '2019-03-27 18:06:19', '2019-03-27 18:06:19'),
(977, 'storefront::product_card.add_to_wishlist', '2019-03-27 18:06:45', '2019-03-27 18:06:45'),
(978, 'storefront::product_card.new', '2019-03-27 18:06:54', '2019-03-27 18:06:54'),
(979, 'storefront::product_card.out_of_stock', '2019-03-27 18:07:09', '2019-03-27 18:07:09'),
(980, 'storefront::product_card.quick_view', '2019-03-27 18:07:33', '2019-03-27 18:07:33'),
(981, 'storefront::product_card.view_details', '2019-03-27 18:11:25', '2019-03-27 18:11:25'),
(982, 'storefront::products.category', '2019-03-27 18:11:45', '2019-03-27 18:11:45'),
(983, 'storefront::products.filter', '2019-03-27 18:11:59', '2019-03-27 18:11:59'),
(984, 'storefront::products.from', '2019-03-27 18:12:12', '2019-03-27 18:12:12'),
(985, 'storefront::products.grid_view', '2019-03-27 18:12:24', '2019-03-27 18:12:24'),
(986, 'storefront::products.list_view', '2019-03-27 18:12:34', '2019-03-27 18:12:34'),
(987, 'storefront::products.loading', '2019-03-27 18:12:43', '2019-03-27 18:12:43'),
(988, 'storefront::products.no_products_were_found', '2019-03-27 18:12:52', '2019-03-27 18:12:52'),
(989, 'storefront::products.products_found', '2019-03-27 18:13:27', '2019-03-27 18:13:27'),
(990, 'storefront::products.search_results_for', '2019-03-27 18:14:16', '2019-03-27 18:14:16'),
(991, 'storefront::products.shop', '2019-03-27 18:14:24', '2019-03-27 18:14:24'),
(992, 'storefront::products.sort_options.latest', '2019-03-27 18:14:34', '2019-03-27 18:14:34'),
(993, 'storefront::products.sort_options.price_low_to_high', '2019-03-27 18:15:25', '2019-03-27 18:15:25'),
(994, 'storefront::products.sort_options.relevance', '2019-03-27 18:15:39', '2019-03-27 18:15:39'),
(995, 'storefront::products.sort_options.top_rated', '2019-03-27 18:15:52', '2019-03-27 18:15:52'),
(996, 'storefront::products.to', '2019-03-27 18:16:05', '2019-03-27 18:16:05'),
(997, 'storefront::sidebar.storefront', '2019-03-27 18:16:51', '2019-03-27 18:16:51'),
(998, 'storefront::storefront.form.banner', '2019-03-27 18:23:58', '2019-03-27 18:23:58'),
(999, 'storefront::storefront.form.banner_1', '2019-03-27 18:24:20', '2019-03-27 18:24:20'),
(1000, 'storefront::storefront.form.banner_2', '2019-03-27 18:24:28', '2019-03-27 18:24:28'),
(1001, 'storefront::storefront.form.banner_3', '2019-03-27 18:24:35', '2019-03-27 18:24:35'),
(1002, 'storefront::storefront.form.brands', '2019-03-27 18:24:58', '2019-03-27 18:24:58'),
(1003, 'storefront::storefront.form.column_1', '2019-03-27 18:25:11', '2019-03-27 18:25:11'),
(1004, 'storefront::storefront.form.column_2', '2019-03-27 18:25:14', '2019-03-27 18:25:14'),
(1005, 'storefront::storefront.form.column_3', '2019-03-27 18:25:18', '2019-03-27 18:25:18'),
(1006, 'storefront::storefront.form.enable_banner_section_1', '2019-03-27 18:25:32', '2019-03-27 18:25:32'),
(1007, 'storefront::storefront.form.enable_banner_section_2', '2019-03-27 18:25:41', '2019-03-27 18:25:41'),
(1008, 'storefront::storefront.form.enable_banner_section_3', '2019-03-27 18:25:48', '2019-03-27 18:25:48'),
(1009, 'storefront::storefront.form.enable_features_section', '2019-03-27 18:26:46', '2019-03-27 18:26:46'),
(1010, 'storefront::storefront.form.enable_landscape_products_section', '2019-03-27 18:26:59', '2019-03-27 18:26:59'),
(1011, 'storefront::storefront.form.enable_product_carousel_section', '2019-03-27 18:27:15', '2019-03-27 18:27:15'),
(1012, 'storefront::storefront.form.enable_product_tabs_section', '2019-03-27 18:27:29', '2019-03-27 18:27:29'),
(1013, 'storefront::storefront.form.enable_recent_products_section', '2019-03-27 18:27:39', '2019-03-27 18:27:39'),
(1014, 'storefront::storefront.form.enable_recently_viewed_section', '2019-03-27 18:27:49', '2019-03-27 18:27:49'),
(1015, 'storefront::storefront.form.enable_three_column_vertical_product_carousel_section', '2019-03-27 18:28:02', '2019-03-27 18:28:02'),
(1016, 'storefront::storefront.form.enable_two_column_product_carousel_section', '2019-03-27 18:28:25', '2019-03-27 18:28:25'),
(1017, 'storefront::storefront.form.favicon', '2019-03-27 18:28:34', '2019-03-27 18:28:34'),
(1018, 'storefront::storefront.form.feature_1', '2019-03-27 18:28:50', '2019-03-27 18:28:50'),
(1019, 'storefront::storefront.form.feature_2', '2019-03-27 18:28:56', '2019-03-27 18:28:56'),
(1020, 'storefront::storefront.form.feature_3', '2019-03-27 18:29:02', '2019-03-27 18:29:02'),
(1021, 'storefront::storefront.form.feature_4', '2019-03-27 18:29:11', '2019-03-27 18:29:11'),
(1022, 'storefront::storefront.form.footer_logo', '2019-03-27 18:29:38', '2019-03-27 18:29:38'),
(1023, 'storefront::storefront.form.header_logo', '2019-03-27 18:30:11', '2019-03-27 18:30:11'),
(1024, 'storefront::storefront.form.please_select', '2019-03-27 18:32:40', '2019-03-27 18:32:40'),
(1025, 'storefront::storefront.form.tab_1', '2019-03-27 18:32:50', '2019-03-27 18:32:50'),
(1026, 'storefront::storefront.form.tab_2', '2019-03-27 18:32:54', '2019-03-27 18:32:54'),
(1027, 'storefront::storefront.form.tab_3', '2019-03-27 18:32:58', '2019-03-27 18:32:58'),
(1028, 'storefront::storefront.form.tab_4', '2019-03-27 18:33:02', '2019-03-27 18:33:02'),
(1029, 'storefront::storefront.storefront', '2019-03-27 18:33:29', '2019-03-27 18:33:29'),
(1030, 'storefront::storefront.tabs.banner_section_1', '2019-03-27 18:33:39', '2019-03-27 18:33:39'),
(1031, 'storefront::storefront.tabs.banner_section_2', '2019-03-27 18:33:48', '2019-03-27 18:33:48'),
(1032, 'storefront::storefront.tabs.banner_section_3', '2019-03-27 18:34:13', '2019-03-27 18:34:13'),
(1033, 'storefront::storefront.tabs.brands', '2019-03-27 18:34:25', '2019-03-27 18:34:25'),
(1034, 'storefront::storefront.tabs.features', '2019-03-27 18:34:43', '2019-03-27 18:34:43'),
(1035, 'storefront::storefront.tabs.general', '2019-03-27 18:35:00', '2019-03-27 18:35:00'),
(1036, 'storefront::storefront.tabs.group.general_settings', '2019-03-27 18:35:31', '2019-03-27 18:35:31'),
(1037, 'storefront::storefront.tabs.group.home_page_sections', '2019-03-27 18:35:44', '2019-03-27 18:35:44'),
(1038, 'storefront::storefront.tabs.landscape_products', '2019-03-27 18:36:10', '2019-03-27 18:36:10'),
(1039, 'storefront::storefront.tabs.logo', '2019-03-27 18:36:24', '2019-03-27 18:36:24'),
(1040, 'storefront::storefront.tabs.menus', '2019-03-27 18:36:37', '2019-03-27 18:36:37'),
(1041, 'storefront::storefront.tabs.product_carousel', '2019-03-27 18:36:50', '2019-03-27 18:36:50'),
(1042, 'storefront::storefront.tabs.product_tabs', '2019-03-27 18:37:06', '2019-03-27 18:37:06'),
(1043, 'storefront::storefront.tabs.recent_products', '2019-03-27 18:37:20', '2019-03-27 18:37:20'),
(1044, 'storefront::storefront.tabs.recently_viewed', '2019-03-27 18:37:37', '2019-03-27 18:37:37'),
(1045, 'storefront::storefront.tabs.slider_banners', '2019-03-27 18:37:52', '2019-03-27 18:37:52'),
(1046, 'storefront::storefront.tabs.social_links', '2019-03-27 18:38:06', '2019-03-27 18:38:06'),
(1047, 'storefront::storefront.tabs.three_column_vertical_product_carousel', '2019-03-27 18:38:22', '2019-03-27 18:38:22'),
(1048, 'storefront::storefront.tabs.two_column_product_carousel', '2019-03-27 18:38:51', '2019-03-27 18:38:51'),
(1049, 'storefront::themes.theme-black', '2019-03-27 18:39:11', '2019-03-27 18:39:11'),
(1050, 'storefront::themes.theme-blue', '2019-03-27 18:39:20', '2019-03-27 18:39:20'),
(1051, 'storefront::themes.theme-marrs-green', '2019-03-27 18:39:31', '2019-03-27 18:39:31'),
(1052, 'storefront::themes.theme-navy-blue', '2019-03-27 18:39:49', '2019-03-27 18:39:49'),
(1053, 'storefront::themes.theme-pink', '2019-03-27 18:40:15', '2019-03-27 18:40:15'),
(1054, 'storefront::themes.theme-red', '2019-03-27 18:40:23', '2019-03-27 18:40:23'),
(1055, 'storefront::themes.theme-sky-blue', '2019-03-27 18:40:34', '2019-03-27 18:40:34'),
(1056, 'storefront::themes.theme-violet', '2019-03-27 18:41:13', '2019-03-27 18:41:13'),
(1057, 'tax::attributes.based_on', '2019-03-27 18:41:24', '2019-03-27 18:41:24'),
(1058, 'tax::attributes.city', '2019-03-27 18:41:34', '2019-03-27 18:41:34'),
(1059, 'tax::attributes.country', '2019-03-27 18:41:43', '2019-03-27 18:41:43'),
(1060, 'tax::attributes.label', '2019-03-27 18:41:59', '2019-03-27 18:41:59'),
(1061, 'tax::attributes.name', '2019-03-27 18:42:08', '2019-03-27 18:42:08'),
(1062, 'tax::attributes.rate', '2019-03-27 18:42:22', '2019-03-27 18:42:22'),
(1063, 'tax::attributes.rates.*.name', '2019-03-27 18:42:36', '2019-03-27 18:42:36'),
(1064, 'tax::attributes.rates.*.rate', '2019-03-27 18:42:45', '2019-03-27 18:42:45'),
(1065, 'tax::attributes.state', '2019-03-27 18:42:59', '2019-03-27 18:42:59'),
(1066, 'tax::attributes.zip', '2019-03-27 18:43:30', '2019-03-27 18:43:30'),
(1067, 'tax::permissions.taxes.create', '2019-03-27 18:43:40', '2019-03-27 18:43:40'),
(1068, 'tax::permissions.taxes.destroy', '2019-03-27 18:43:55', '2019-03-27 18:43:55'),
(1069, 'tax::permissions.taxes.edit', '2019-03-27 18:44:04', '2019-03-27 18:44:04'),
(1070, 'tax::sidebar.taxes', '2019-03-27 18:44:59', '2019-03-27 18:44:59'),
(1071, 'tax::taxes.form.add_new_rate', '2019-03-27 18:45:11', '2019-03-27 18:45:11'),
(1072, 'tax::taxes.form.based_on.billing_address', '2019-03-27 18:45:25', '2019-03-27 18:45:25'),
(1073, 'tax::taxes.form.based_on.shipping_address', '2019-03-27 18:45:36', '2019-03-27 18:45:36'),
(1074, 'tax::taxes.form.based_on.store_address', '2019-03-27 18:46:05', '2019-03-27 18:46:05'),
(1075, 'tax::taxes.form.delete_rate', '2019-03-27 18:47:51', '2019-03-27 18:47:51'),
(1076, 'tax::taxes.form.please_select', '2019-03-27 18:48:00', '2019-03-27 18:48:00'),
(1077, 'tax::taxes.table.tax_class', '2019-03-27 18:48:10', '2019-03-27 18:48:10'),
(1078, 'tax::taxes.tabs.general', '2019-03-27 18:48:22', '2019-03-27 18:48:22'),
(1079, 'tax::taxes.tabs.group.tax_information', '2019-03-27 18:48:34', '2019-03-27 18:48:34'),
(1080, 'tax::taxes.tabs.rates', '2019-03-27 18:48:42', '2019-03-27 18:48:42'),
(1081, 'tax::taxes.tax', '2019-03-27 18:48:53', '2019-03-27 18:48:53'),
(1082, 'tax::taxes.taxes', '2019-03-27 18:49:04', '2019-03-27 18:49:04'),
(1083, 'transaction::permissions.index', '2019-03-27 18:49:15', '2019-03-27 18:49:15'),
(1084, 'transaction::transactions.table.order_id', '2019-03-27 18:49:30', '2019-03-27 18:49:30'),
(1085, 'transaction::transactions.table.payment_method', '2019-03-27 18:49:40', '2019-03-27 18:49:40'),
(1086, 'transaction::transactions.table.transaction_id', '2019-03-27 18:49:49', '2019-03-27 18:49:49'),
(1087, 'transaction::transactions.transactions', '2019-03-27 18:50:01', '2019-03-27 18:50:01'),
(1088, 'translation::permissions.edit', '2019-03-27 18:50:10', '2019-03-27 18:50:10'),
(1089, 'translation::translations.table.key', '2019-03-27 18:50:46', '2019-03-27 18:50:46'),
(1090, 'translation::sidebar.translations', '2019-03-27 18:50:53', '2019-03-27 18:50:53'),
(1091, 'translation::permissions.index', '2019-03-27 18:51:03', '2019-03-27 18:51:03'),
(1092, 'translation::translations.translation', '2019-03-27 18:51:10', '2019-03-27 18:51:10'),
(1093, 'translation::translations.translations', '2019-03-27 18:51:13', '2019-03-27 18:51:13'),
(1094, 'user::attributes.auth.remember_me', '2019-03-27 18:51:49', '2019-03-27 18:51:49'),
(1095, 'user::attributes.roles.name', '2019-03-27 18:52:04', '2019-03-27 18:52:04'),
(1096, 'user::attributes.users.activated', '2019-03-27 18:52:15', '2019-03-27 18:52:15'),
(1097, 'user::attributes.users.email', '2019-03-27 18:52:24', '2019-03-27 18:52:24'),
(1098, 'user::attributes.users.first_name', '2019-03-27 18:52:36', '2019-03-27 18:52:36'),
(1099, 'user::attributes.users.last_name', '2019-03-27 18:52:51', '2019-03-27 18:52:51'),
(1100, 'user::attributes.users.new_password', '2019-03-27 18:53:02', '2019-03-27 18:53:02'),
(1101, 'user::attributes.users.new_password_confirmation', '2019-03-27 18:53:25', '2019-03-27 18:53:25'),
(1102, 'user::attributes.users.password', '2019-03-27 18:53:34', '2019-03-27 18:53:34'),
(1103, 'user::attributes.users.password_confirmation', '2019-03-27 18:53:47', '2019-03-27 18:53:47'),
(1104, 'user::attributes.users.roles', '2019-03-27 18:53:56', '2019-03-27 18:53:56'),
(1105, 'user::auth.email', '2019-03-27 18:54:07', '2019-03-27 18:54:07'),
(1106, 'user::auth.enter_email', '2019-03-27 18:54:45', '2019-03-27 18:54:45'),
(1107, 'user::auth.first_name', '2019-03-27 18:54:56', '2019-03-27 18:54:56'),
(1108, 'user::auth.forgot_password', '2019-03-27 18:55:05', '2019-03-27 18:55:05'),
(1109, 'user::auth.i_agree_to_the', '2019-03-27 18:55:15', '2019-03-27 18:55:15'),
(1110, 'user::auth.i_remembered_my_password', '2019-03-27 18:56:11', '2019-03-27 18:56:11'),
(1111, 'user::auth.last_name', '2019-03-27 18:56:20', '2019-03-27 18:56:20'),
(1112, 'user::auth.log_in_with_facebook', '2019-03-27 18:56:32', '2019-03-27 18:56:32'),
(1113, 'user::auth.log_in_with_google', '2019-03-27 18:56:42', '2019-03-27 18:56:42'),
(1114, 'user::auth.login', '2019-03-27 18:56:54', '2019-03-27 18:56:54'),
(1115, 'user::auth.logout', '2019-03-27 18:57:35', '2019-03-27 18:57:35'),
(1116, 'user::auth.or', '2019-03-27 18:57:44', '2019-03-27 18:57:44'),
(1117, 'user::auth.password', '2019-03-27 18:57:54', '2019-03-27 18:57:54'),
(1118, 'user::auth.password_confirmation', '2019-03-27 18:58:04', '2019-03-27 18:58:04'),
(1119, 'user::auth.privacy_policy', '2019-03-27 18:58:13', '2019-03-27 18:58:13'),
(1120, 'user::auth.register', '2019-03-27 18:58:21', '2019-03-27 18:58:21'),
(1121, 'user::auth.remember_me', '2019-03-27 18:59:04', '2019-03-27 18:59:04'),
(1122, 'user::auth.reset_password', '2019-03-27 18:59:13', '2019-03-27 18:59:13');
INSERT INTO `translations` (`id`, `key`, `created_at`, `updated_at`) VALUES
(1123, 'user::email.all_rights_reserved', '2019-03-27 18:59:24', '2019-03-27 18:59:24'),
(1124, 'user::email.hello', '2019-03-27 18:59:43', '2019-03-27 18:59:43'),
(1125, 'user::email.if_you\\’re_having_trouble', '2019-03-27 19:00:37', '2019-03-27 19:00:37'),
(1126, 'user::email.no_further_action_is_required', '2019-03-27 19:00:55', '2019-03-27 19:00:55'),
(1127, 'user::email.received_a_password_reset_request', '2019-03-27 19:01:17', '2019-03-27 19:01:17'),
(1128, 'user::email.reset_password', '2019-03-27 19:01:28', '2019-03-27 19:01:28'),
(1129, 'user::email.reset_your_account_password', '2019-03-27 19:01:39', '2019-03-27 19:01:39'),
(1130, 'user::messages.email.reset_password', '2019-03-27 19:01:50', '2019-03-27 19:01:50'),
(1131, 'user::messages.users.account_created', '2019-03-27 19:02:02', '2019-03-27 19:02:02'),
(1132, 'user::messages.users.account_is_blocked', '2019-03-27 19:02:13', '2019-03-27 19:02:13'),
(1133, 'user::messages.users.account_not_activated', '2019-03-27 19:02:22', '2019-03-27 19:02:22'),
(1134, 'user::messages.users.check_email_to_reset_password', '2019-03-27 19:02:37', '2019-03-27 19:02:37'),
(1135, 'user::messages.users.invalid_credentials', '2019-03-27 19:04:39', '2019-03-27 19:04:39'),
(1136, 'user::messages.users.invalid_reset_code', '2019-03-27 19:05:05', '2019-03-27 19:05:05'),
(1137, 'user::messages.users.no_user_found', '2019-03-27 19:05:20', '2019-03-27 19:05:20'),
(1138, 'user::messages.users.password_has_been_reset', '2019-03-27 19:08:03', '2019-03-27 19:08:03'),
(1139, 'user::messages.users.reset_password_email_sent', '2019-03-27 19:08:13', '2019-03-27 19:08:13'),
(1140, 'user::permissions.roles.create', '2019-03-27 19:08:26', '2019-03-27 19:08:26'),
(1141, 'user::permissions.roles.destroy', '2019-03-27 19:08:53', '2019-03-27 19:08:53'),
(1142, 'user::permissions.roles.edit', '2019-03-27 19:09:05', '2019-03-27 19:09:05'),
(1143, 'user::permissions.roles.index', '2019-03-27 19:09:20', '2019-03-27 19:09:20'),
(1144, 'user::permissions.users.create', '2019-03-27 19:09:46', '2019-03-27 19:09:46'),
(1145, 'user::permissions.users.destroy', '2019-03-27 19:09:56', '2019-03-27 19:09:56'),
(1146, 'user::permissions.users.edit', '2019-03-27 19:10:05', '2019-03-27 19:10:05'),
(1147, 'user::permissions.users.index', '2019-03-27 19:10:14', '2019-03-27 19:10:14'),
(1148, 'user::roles.permissions.allow', '2019-03-27 19:10:31', '2019-03-27 19:10:31'),
(1149, 'user::roles.permissions.allow_all', '2019-03-27 19:10:42', '2019-03-27 19:10:42'),
(1150, 'user::roles.permissions.deny', '2019-03-27 19:11:07', '2019-03-27 19:11:07'),
(1151, 'user::roles.permissions.deny_all', '2019-03-27 19:11:16', '2019-03-27 19:11:16'),
(1152, 'user::roles.permissions.inherit', '2019-03-27 19:11:45', '2019-03-27 19:11:45'),
(1153, 'user::roles.permissions.inherit_all', '2019-03-27 19:11:56', '2019-03-27 19:11:56'),
(1154, 'user::roles.role', '2019-03-27 19:12:03', '2019-03-27 19:12:03'),
(1155, 'user::users.user', '2019-03-27 19:12:31', '2019-03-27 19:12:31'),
(1156, 'user::users.users', '2019-03-27 19:12:40', '2019-03-27 19:12:40'),
(1157, 'wishlist::messages.added', '2019-03-27 19:12:54', '2019-03-27 19:12:54'),
(1158, 'user::roles.roles', '2019-03-27 19:13:44', '2019-03-27 19:13:44'),
(1159, 'user::roles.table.name', '2019-03-27 19:13:51', '2019-03-27 19:13:51'),
(1160, 'user::roles.tabs.general', '2019-03-27 19:14:00', '2019-03-27 19:14:00'),
(1161, 'user::roles.tabs.permissions', '2019-03-27 19:14:22', '2019-03-27 19:14:22'),
(1162, 'user::roles.tabs.role_information', '2019-03-27 19:14:30', '2019-03-27 19:14:30'),
(1163, 'user::sidebar.roles', '2019-03-27 19:14:39', '2019-03-27 19:14:39'),
(1164, 'user::sidebar.users', '2019-03-27 19:14:48', '2019-03-27 19:14:48'),
(1165, 'user::users.form.activated', '2019-03-27 19:14:59', '2019-03-27 19:14:59'),
(1166, 'user::users.or_reset_password', '2019-03-27 19:15:09', '2019-03-27 19:15:09'),
(1167, 'user::users.profile', '2019-03-27 19:15:17', '2019-03-27 19:15:17'),
(1168, 'user::users.send_reset_password_email', '2019-03-27 19:15:27', '2019-03-27 19:15:27'),
(1169, 'user::users.table.email', '2019-03-27 19:15:36', '2019-03-27 19:15:36'),
(1170, 'user::users.table.first_name', '2019-03-27 19:15:45', '2019-03-27 19:15:45'),
(1171, 'user::users.table.last_login', '2019-03-27 19:15:53', '2019-03-27 19:15:53'),
(1172, 'user::users.table.last_name', '2019-03-27 19:16:02', '2019-03-27 19:16:02'),
(1173, 'user::users.tabs.account', '2019-03-27 19:16:12', '2019-03-27 19:16:12'),
(1174, 'user::users.tabs.group.profile_information', '2019-03-27 19:16:23', '2019-03-27 19:16:23'),
(1175, 'user::users.tabs.group.user_information', '2019-03-27 19:16:32', '2019-03-27 19:16:32'),
(1176, 'user::users.tabs.new_password', '2019-03-27 19:16:44', '2019-03-27 19:16:44'),
(1177, 'user::users.tabs.permissions', '2019-03-27 19:17:00', '2019-03-27 19:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `translation_translations`
--

CREATE TABLE `translation_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `translation_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translation_translations`
--

INSERT INTO `translation_translations` (`id`, `translation_id`, `locale`, `value`) VALUES
(1, 1, 'bn_BD', 'পণ্য আপনার ইচ্ছা তালিকা থেকে মুছে ফেলা হয়েছে।'),
(2, 2, 'bn_BD', 'আপনার প্রোফাইল আপডেট করা হয়েছে।'),
(3, 3, 'bn_BD', 'বাতিল'),
(4, 4, 'bn_BD', 'মুছে ফেলুন'),
(5, 5, 'bn_BD', 'সংরক্ষণ করুন'),
(6, 6, 'bn_BD', 'অনুমোদন'),
(7, 7, 'bn_BD', 'আপনি মুছে ফেলতে চান?'),
(8, 8, 'bn_BD', '404'),
(9, 9, 'bn_BD', 'আপনি যে পৃষ্ঠাটি খুঁজছেন তা পাওয়া যায় নি।'),
(10, 10, 'bn_BD', 'ওহো! এই পাতা পাওয়া যায় নি'),
(11, 11, 'bn_BD', '500'),
(12, 12, 'bn_BD', 'একটি প্রশাসক অবহিত করা হয়।'),
(13, 13, 'bn_BD', 'ওহো! কিছু ভুল হয়েছে'),
(14, 14, 'bn_BD', 'পরবর্তী'),
(15, 15, 'bn_BD', 'আগে'),
(16, 16, 'bn_BD', 'এই পৃষ্ঠায় উপলব্ধ কীবোর্ড শর্টকাট'),
(17, 17, 'bn_BD', 'ফিরে যান: নাম সূচক'),
(18, 18, 'bn_BD', 'এই মেনু'),
(19, 19, 'bn_BD', 'নির্মিত'),
(20, 20, 'bn_BD', 'তারিখ'),
(21, 21, 'bn_BD', 'অবস্থা'),
(22, 22, 'bn_BD', 'দোকান দর্শন কর'),
(23, 23, 'bn_BD', 'ড্যাশবোর্ড'),
(24, 24, 'bn_BD', 'সর্বশেষ অর্ডার'),
(25, 25, 'bn_BD', 'সর্বশেষ পর্যালোচনা'),
(26, 26, 'bn_BD', 'সর্বশেষ অনুসন্ধান শর্তাবলী'),
(27, 27, 'bn_BD', 'কোন তথ্য নেই!'),
(28, 28, 'bn_BD', 'সোমবার'),
(29, 29, 'bn_BD', 'মঙ্গলবার'),
(30, 30, 'bn_BD', 'বুধবার'),
(31, 31, 'bn_BD', 'বৃহস্পতিবার'),
(32, 32, 'bn_BD', 'শুক্রবার'),
(33, 33, 'bn_BD', 'শনিবার'),
(34, 34, 'bn_BD', 'রবিবার'),
(35, 35, 'bn_BD', 'অর্ডার'),
(36, 36, 'bn_BD', 'বিক্রয়'),
(37, 37, 'bn_BD', 'ক্রেতা'),
(38, 38, 'bn_BD', 'অর্ডার আইডি'),
(39, 39, 'bn_BD', 'অবস্থা'),
(40, 40, 'bn_BD', 'মোট'),
(41, 41, 'bn_BD', 'প্রোডাক্ট'),
(42, 42, 'bn_BD', 'নির্ধারণ'),
(43, 43, 'bn_BD', 'আঘাত'),
(44, 44, 'bn_BD', 'কীওয়ার্ড'),
(45, 45, 'bn_BD', 'ফলাফল'),
(46, 46, 'bn_BD', 'মোট গ্রাহক'),
(47, 47, 'bn_BD', 'মোট ওয়ার্ডার্স'),
(48, 48, 'bn_BD', 'মোট পণ্য'),
(49, 49, 'bn_BD', 'মোট বিক্রয়'),
(50, 50, 'bn_BD', 'অনুমতি প্রত্যাখ্যাত (প্রয়োজনীয় অনুমতি: \": অনুমতি\")।'),
(51, 51, 'bn_BD', ': সম্পদ মুছে ফেলা হয়েছে।'),
(52, 52, 'bn_BD', ': সম্পদ সংরক্ষণ করা হয়েছে।'),
(53, 53, 'bn_BD', 'তৈরি করুন: সম্পদ'),
(54, 54, 'bn_BD', 'মুছুন: সম্পদ'),
(55, 55, 'bn_BD', 'সম্পাদনা: সম্পদ'),
(56, 56, 'bn_BD', 'দেখান: সম্পদ'),
(57, 57, 'bn_BD', 'এপিয়ারেন্স'),
(58, 58, 'bn_BD', 'কনটেন্ট'),
(59, 59, 'bn_BD', 'লোকালাইজেশন'),
(60, 60, 'bn_BD', 'বিক্রয়'),
(61, 61, 'bn_BD', 'পদ্ধতি'),
(62, 62, 'bn_BD', 'এট্রিবিউট'),
(63, 63, 'bn_BD', 'বৈশিষ্ট্যাবলী'),
(64, 64, 'bn_BD', 'নতুন মান যোগ করুন'),
(65, 65, 'bn_BD', 'মান মুছে ফেলুন'),
(66, 66, 'bn_BD', 'অনুগ্রহ করে নির্বাচন করুন'),
(67, 67, 'bn_BD', 'নতুন বৈশিষ্ট্য যুক্ত করুন'),
(68, 68, 'bn_BD', 'বৈশিষ্ট্যাবলী'),
(69, 69, 'bn_BD', 'বৈশিষ্ট্য মুছে দিন'),
(70, 70, 'bn_BD', 'মানগুলি'),
(71, 71, 'bn_BD', 'পণ্য ফিল্টারিং জন্য এই বৈশিষ্ট্য ব্যবহার করুন'),
(72, 72, 'bn_BD', 'মান'),
(73, 73, 'bn_BD', 'বৈশিষ্ট্য সেট'),
(74, 74, 'bn_BD', 'ফিল্টার করার'),
(75, 75, 'bn_BD', 'নাম'),
(76, 76, 'bn_BD', 'না'),
(77, 77, 'bn_BD', 'হ্যাঁ'),
(78, 78, 'bn_BD', 'সাধারণ'),
(79, 79, 'bn_BD', 'বৈশিষ্ট্য তথ্য'),
(80, 80, 'bn_BD', 'বৈশিষ্ট্যাবলী'),
(81, 81, 'bn_BD', 'মানগুলি'),
(82, 82, 'bn_BD', 'বৈশিষ্ট্য সেট'),
(83, 83, 'bn_BD', 'বৈশিষ্ট্য সেট'),
(84, 84, 'bn_BD', 'নাম'),
(85, 85, 'bn_BD', 'সাধারণ'),
(86, 86, 'bn_BD', 'বৈশিষ্ট্য সেট তথ্য'),
(87, 87, 'bn_BD', 'বৈশিষ্ট্য মান'),
(88, 88, 'bn_BD', 'বৈশিষ্ট্য মান'),
(89, 89, 'bn_BD', 'নাম'),
(90, 90, 'bn_BD', 'বৈশিষ্ট্য সেট'),
(91, 91, 'bn_BD', 'ক্যাটাগরিস'),
(92, 92, 'bn_BD', 'ফিল্টার করার'),
(93, 93, 'bn_BD', 'নাম'),
(94, 94, 'bn_BD', 'এট্রিবিউট'),
(95, 95, 'bn_BD', 'মানগুলি'),
(96, 96, 'bn_BD', 'বৈশিষ্ট্য সেট করুন'),
(97, 97, 'bn_BD', 'বৈশিষ্ট্য সেট মুছে দিন'),
(98, 98, 'bn_BD', 'বৈশিষ্ট্যাবলী সেট সম্পাদনা করুন'),
(99, 99, 'bn_BD', 'সূচক বৈশিষ্ট্য সেট'),
(100, 100, 'bn_BD', 'বৈশিষ্ট্য তৈরি করুন'),
(101, 101, 'bn_BD', 'বৈশিষ্ট্য মুছে দিন'),
(102, 102, 'bn_BD', 'বৈশিষ্ট্য সম্পাদনা করুন'),
(103, 103, 'bn_BD', 'সূচক বৈশিষ্ট্য'),
(104, 104, 'bn_BD', 'বৈশিষ্ট্য সেট'),
(105, 105, 'bn_BD', 'বৈশিষ্ট্যাবলী'),
(106, 106, 'bn_BD', 'পণ্য আপনার কার্ট যোগ করা হয়েছে।'),
(107, 107, 'bn_BD', 'আপনি আপনার কার্ট থেকে এই পণ্য মুছে ফেলতে চান?'),
(108, 108, 'bn_BD', 'দুঃখিত, আমরা শুধুমাত্র আছে: স্টক স্টক পরিমাণ: নাম।'),
(109, 109, 'bn_BD', 'দুঃখিত, পণ্য স্টক আউট হয়।'),
(110, 110, 'bn_BD', 'পরিমাণ আপডেট করা হয়েছে।'),
(111, 111, 'bn_BD', 'পণ্য আপনার কার্ট থেকে মুছে ফেলা হয়েছে।'),
(112, 112, 'bn_BD', 'নির্বাচিত বিকল্প অবৈধ।'),
(113, 113, 'bn_BD', 'ঘরটি অবশ্যই পূরণ করতে হবে.'),
(114, 114, 'bn_BD', 'অবস্থা'),
(115, 115, 'bn_BD', 'এষণীয়'),
(116, 116, 'bn_BD', 'নাম'),
(117, 117, 'bn_BD', 'URL'),
(118, 118, 'bn_BD', 'ক্যাটাগরিস'),
(119, 119, 'bn_BD', 'বিভাগ'),
(120, 120, 'bn_BD', 'বিভাগ সক্রিয় করুন'),
(121, 121, 'bn_BD', 'অনুসন্ধান বক্স বিভাগ তালিকা এই বিষয়শ্রেণীতে প্রদর্শন করুন'),
(122, 122, 'bn_BD', 'সাধারণ'),
(123, 123, 'bn_BD', 'SEO'),
(124, 124, 'bn_BD', 'রুট বিভাগ যোগ করুন'),
(125, 125, 'bn_BD', 'সাবক্যাটাগরি  যোগ করুন'),
(126, 126, 'bn_BD', 'Collapse All'),
(127, 127, 'bn_BD', 'সব ভেঙ্গে'),
(128, 128, 'bn_BD', 'বিভাগের আদেশ সংরক্ষিত হয়েছে।'),
(129, 129, 'bn_BD', 'বিভাগ তৈরি করুন'),
(130, 130, 'bn_BD', 'বিভাগ মুছে দিন'),
(131, 131, 'bn_BD', 'বিভাগ সম্পাদনা করুন'),
(132, 132, 'bn_BD', 'সূচক বিভাগ'),
(133, 133, 'bn_BD', 'ক্যাটাগরিস'),
(134, 134, 'bn_BD', 'পণ্য আপনার তুলনা তালিকায় যোগ করা হয়েছে।'),
(135, 135, 'bn_BD', 'পণ্য আপনার তুলনা তালিকা থেকে মুছে ফেলা হয়েছে।'),
(136, 136, 'bn_BD', 'মেইল সঠিকভাবে কনফিগার করা হয় না, প্রশাসক যোগাযোগ করুন।'),
(137, 137, 'bn_BD', ': বৈশিষ্ট্য স্বীকার করা আবশ্যক।'),
(138, 138, 'bn_BD', 'বৈশিষ্ট্য: একটি বৈধ URL নয়।'),
(139, 139, 'bn_BD', ': বৈশিষ্ট্যটি তারিখের পরে হতে হবে: তারিখ।'),
(140, 140, 'bn_BD', ': বৈশিষ্ট্যটি তারিখের পরে বা সমান তারিখ হতে হবে: তারিখ।'),
(141, 141, 'bn_BD', 'বৈশিষ্ট্য: শুধুমাত্র অক্ষর থাকতে পারে।'),
(142, 142, 'bn_BD', 'বৈশিষ্ট্য: শুধুমাত্র অক্ষর, সংখ্যা এবং ড্যাশ থাকতে পারে।'),
(143, 143, 'bn_BD', 'বৈশিষ্ট্য: শুধুমাত্র অক্ষর এবং সংখ্যা থাকতে পারে।'),
(144, 144, 'bn_BD', ': বৈশিষ্ট্য একটি অ্যারের হতে হবে।'),
(145, 145, 'bn_BD', ': বৈশিষ্ট্যটি তারিখের আগে হতে হবে: তারিখ।'),
(146, 146, 'bn_BD', ': বৈশিষ্ট্যটি তারিখের আগে বা সমান তারিখ হতে হবে: তারিখ।'),
(147, 147, 'bn_BD', 'বৈশিষ্ট্য: এর মধ্যে অবশ্যই থাকতে হবে: সর্বনিম্ন এবং সর্বাধিক আইটেম।'),
(148, 148, 'bn_BD', ': বৈশিষ্ট্যটি অবশ্যই হতে হবে: সর্বনিম্ন এবং সর্বোচ্চ কিলোবাইট।'),
(149, 149, 'bn_BD', ': বৈশিষ্ট্যটি অবশ্যই হতে হবে: সর্বনিম্ন  এবং সর্বোচ্চ।'),
(150, 150, 'bn_BD', ': বৈশিষ্ট্যটি অবশ্যই হতে হবে: সর্বনিম্ন  এবং: সর্বোচ্চ অক্ষর।'),
(151, 151, 'bn_BD', 'বৈশিষ্ট্য: ক্ষেত্রটি সত্য বা মিথ্যা হতে হবে।'),
(152, 152, 'bn_BD', ': বৈশিষ্ট্য নিশ্চিতকরণ মেলে না।'),
(153, 153, 'bn_BD', 'বৈশিষ্ট্য: একটি বৈধ তারিখ নয়।'),
(154, 154, 'bn_BD', 'বৈশিষ্ট্য: ফরমেট বিন্যাস মেলে না: বিন্যাস।'),
(155, 155, 'bn_BD', 'বৈশিষ্ট্য: এবং অন্যান্য: ভিন্ন হতে হবে।'),
(156, 156, 'bn_BD', ': বৈশিষ্ট্য অবশ্যই হতে হবে: সংখ্যা সংখ্যা।'),
(157, 157, 'bn_BD', ': বৈশিষ্ট্যটি অবশ্যই হতে হবে: সর্বনিম্ন এবং সর্বোচ্চ সংখ্যা।'),
(158, 158, 'bn_BD', 'বৈশিষ্ট্য: অকার্যকর অবৈধ চিত্র মাত্রা আছে।'),
(159, 159, 'bn_BD', 'বৈশিষ্ট্য: ক্ষেত্রের একটি সদৃশ মান আছে।'),
(160, 160, 'bn_BD', '৪৫/৫০০০ : বৈশিষ্ট্য একটি বৈধ ইমেল ঠিকানা হতে হবে।'),
(161, 161, 'bn_BD', 'নির্বাচিত: বৈশিষ্ট্য অবৈধ।'),
(162, 162, 'bn_BD', ': বৈশিষ্ট্য একটি ফাইল হতে হবে।'),
(163, 163, 'bn_BD', 'বৈশিষ্ট্য: ক্ষেত্রের একটি মান থাকতে হবে।'),
(164, 164, 'bn_BD', ': বৈশিষ্ট্য একটি ছবি হতে হবে।'),
(165, 165, 'bn_BD', 'নির্বাচিত: বৈশিষ্ট্য অবৈধ।'),
(166, 166, 'bn_BD', ': বৈশিষ্ট্য ক্ষেত্র বিদ্যমান নেই: অন্যান্য।'),
(167, 167, 'bn_BD', ': বৈশিষ্ট্য একটি পূর্ণসংখ্যা হতে হবে।'),
(168, 168, 'bn_BD', ': বৈশিষ্ট্য একটি বৈধ আইপি ঠিকানা হতে হবে।'),
(169, 169, 'bn_BD', ': বৈশিষ্ট্য একটি বৈধ IPv4 ঠিকানা হতে হবে।'),
(170, 170, 'bn_BD', ': বৈশিষ্ট্য একটি বৈধ IPv6 ঠিকানা হতে হবে।'),
(171, 171, 'bn_BD', 'বৈশিষ্ট্য: একটি বৈধ JSON স্ট্রিং আবশ্যক।'),
(172, 172, 'bn_BD', 'বৈশিষ্ট্য: সর্বোচ্চ আইটেমের চেয়ে বেশি থাকতে পারে না।'),
(173, 173, 'bn_BD', 'বৈশিষ্ট্য: সর্বোচ্চ কিলোবাইটের চেয়ে বেশি হতে পারে না।'),
(174, 174, 'bn_BD', ': বৈশিষ্ট্যটি সর্বাধিক হতে পারে না: সর্বোচ্চ।'),
(175, 175, 'bn_BD', 'বৈশিষ্ট্য: সর্বোচ্চ অক্ষর চেয়ে বেশি হতে পারে না।'),
(176, 176, 'bn_BD', ': বৈশিষ্ট্যটি অবশ্যই ফাইলের একটি ফাইল হতে হবে:: মান।'),
(177, 177, 'bn_BD', ': বৈশিষ্ট্যটি অবশ্যই ফাইলের একটি ফাইল হতে হবে:: মান।'),
(178, 178, 'bn_BD', 'বৈশিষ্ট্য: অন্তত থাকতে হবে: সর্বনিম্ন আইটেম।'),
(179, 179, 'bn_BD', 'বৈশিষ্ট্য: অন্তত হতে হবে: সর্বনিম্ন কিলোবাইট।'),
(180, 180, 'bn_BD', 'বৈশিষ্ট্য: অন্তত অন্তত হতে হবে: সর্বনিম্ন ।'),
(181, 181, 'bn_BD', 'বৈশিষ্ট্য: অন্তত হতে হবে: সর্বনিম্ন অক্ষর।'),
(182, 182, 'bn_BD', 'নির্বাচিত: বৈশিষ্ট্য অবৈধ।'),
(183, 183, 'bn_BD', 'বৈশিষ্ট্য: একটি সংখ্যা হতে হবে।'),
(184, 184, 'bn_BD', ': বৈশিষ্ট্য ক্ষেত্র উপস্থিত হতে হবে।'),
(185, 185, 'bn_BD', 'Redis সার্ভারে সংযোগ করতে পারে নি।'),
(186, 186, 'bn_BD', ': বৈশিষ্ট্য বিন্যাস অবৈধ।'),
(187, 187, 'bn_BD', 'বৈশিষ্ট্য ক্ষেত্র প্রয়োজন বোধ করা হয়।'),
(188, 188, 'bn_BD', ': বৈশিষ্ট্য ক্ষেত্র প্রয়োজন হয় যখন: অন্য হয়: মান।'),
(189, 189, 'bn_BD', ': বৈশিষ্ট্যাবলী ক্ষেত্র প্রয়োজন হয় না: অন্য মধ্যে: মান।'),
(190, 190, 'bn_BD', ': বৈশিষ্ট্য ক্ষেত্র প্রয়োজন হয় যখন: মান উপস্থিত থাকে।'),
(191, 191, 'bn_BD', ': বৈশিষ্ট্য ক্ষেত্র প্রয়োজন হয় যখন: মান উপস্থিত থাকে।'),
(192, 192, 'bn_BD', ': বৈশিষ্ট্য ক্ষেত্র প্রয়োজন হয় যখন: মান উপস্থিত না।'),
(193, 193, 'bn_BD', '৬৬/৫০০০ : বৈশিষ্ট্যাবলী ক্ষেত্রের প্রয়োজন নেই যখন কোনও: মান উপস্থিত থাকে না।'),
(194, 194, 'bn_BD', ': বৈশিষ্ট্য এবং: অন্য মিলতে হবে।'),
(195, 195, 'bn_BD', ': বৈশিষ্ট্য থাকতে হবে: আকার আইটেম।'),
(196, 196, 'bn_BD', ': বৈশিষ্ট্য অবশ্যই হতে হবে: আকার কিলোবাইট।'),
(197, 197, 'bn_BD', ': বৈশিষ্ট্য হতে হবে: আকার।'),
(198, 198, 'bn_BD', ': বৈশিষ্ট্য অবশ্যই হতে হবে: আকার অক্ষর।'),
(199, 199, 'bn_BD', 'বৈশিষ্ট্য: একটি স্ট্রিং আবশ্যক।'),
(200, 200, 'bn_BD', ': বৈশিষ্ট্য একটি বৈধ অঞ্চল হতে হবে।'),
(201, 201, 'bn_BD', ': বৈশিষ্ট্য ইতিমধ্যে গ্রহণ করা হয়েছে।'),
(202, 202, 'bn_BD', 'বৈশিষ্ট্য: আপলোড  ব্যর্থ হয়েছে।'),
(203, 203, 'bn_BD', ': বৈশিষ্ট্য বিন্যাস অবৈধ।'),
(204, 204, 'bn_BD', 'ক্যাটাগরিস'),
(205, 205, 'bn_BD', 'কোড'),
(206, 206, 'bn_BD', 'শেষ তারিখ'),
(207, 207, 'bn_BD', 'বিভাগ বাদ দাও'),
(208, 208, 'bn_BD', 'পণ্য বাদ দাও'),
(209, 209, 'bn_BD', 'বিনামূল্যে পরিবহন'),
(210, 210, 'bn_BD', 'অবস্থা'),
(211, 211, 'bn_BD', 'ছাড় প্রকার'),
(212, 212, 'bn_BD', 'সর্বাধিক ব্যয়'),
(213, 213, 'bn_BD', 'নূন্যতম ব্যয়'),
(214, 214, 'bn_BD', 'নাম'),
(215, 215, 'bn_BD', 'পণ্য'),
(216, 216, 'bn_BD', 'শুরুর তারিখ'),
(217, 217, 'bn_BD', 'কুপন ব্যবহার সীমা'),
(218, 218, 'bn_BD', 'গ্রাহক প্রতি ব্যবহার সীমিত'),
(219, 219, 'bn_BD', 'মান'),
(220, 220, 'bn_BD', 'কুপন'),
(221, 221, 'bn_BD', 'কুপন গুলো'),
(222, 222, 'bn_BD', 'বিনামূল্যে পরিবহন অনুমতি দিন'),
(223, 223, 'bn_BD', 'কুপন সক্রিয় করুন'),
(224, 224, 'bn_BD', 'স্থায়ী'),
(225, 225, 'bn_BD', 'শতাংশ'),
(226, 226, 'bn_BD', 'কোড'),
(227, 227, 'bn_BD', 'ডিসকাউন্ট'),
(228, 228, 'bn_BD', 'নাম'),
(229, 229, 'bn_BD', 'সাধারণ'),
(230, 230, 'bn_BD', 'কুপন তথ্য'),
(231, 231, 'bn_BD', 'ব্যবহারের সীমা'),
(232, 232, 'bn_BD', 'ব্যবহার নিষেধাজ্ঞা'),
(233, 233, 'bn_BD', 'কুপন প্রয়োগ করা হয়েছে।'),
(234, 234, 'bn_BD', 'এই কুপন আপনার কার্ট প্রযোজ্য নয়।'),
(235, 235, 'bn_BD', 'ছবিগুলো'),
(236, 236, 'bn_BD', 'বেস ইমেজ'),
(237, 237, 'bn_BD', 'অতিরিক্ত ছবি'),
(238, 238, 'bn_BD', 'ছবি যোগ করা হয়েছে।'),
(239, 239, 'bn_BD', 'ছবি স্লাইড'),
(240, 240, 'bn_BD', 'প্রাথমিক মেনু'),
(241, 241, 'bn_BD', 'কুপন বৈধ নয়।'),
(242, 242, 'bn_BD', 'আপনি কম খরচ করতে হবে: এই কুপন প্রয়োগ করতে পরিমাণ।'),
(243, 243, 'bn_BD', 'আপনি অন্তত ব্যয় করতে হবে: এই কুপন প্রয়োগ করতে পরিমাণ।'),
(244, 244, 'bn_BD', 'কুপন বিদ্যমান নেই।'),
(245, 245, 'bn_BD', 'কুপন ব্যবহার সীমা পৌঁছানো হয়েছে।'),
(246, 246, 'bn_BD', 'কুপন তৈরি করুন'),
(247, 247, 'bn_BD', 'কুপন মুছুন'),
(248, 248, 'bn_BD', 'কুপন সম্পাদনা করুন'),
(249, 249, 'bn_BD', 'সূচক কুপন'),
(250, 250, 'bn_BD', 'হার'),
(251, 251, 'bn_BD', 'মুদ্রার হার'),
(252, 252, 'bn_BD', 'মুদ্রা হার'),
(253, 253, 'bn_BD', 'পরিষেবা থেকে মুদ্রা হার রিফ্রেশ করুন'),
(254, 254, 'bn_BD', 'রিফ্রেশ হার'),
(255, 255, 'bn_BD', 'কোড'),
(256, 256, 'bn_BD', 'মুদ্রা'),
(257, 257, 'bn_BD', 'সর্বশেষ সংষ্করণ'),
(258, 258, 'bn_BD', 'হার'),
(259, 259, 'bn_BD', 'সাধারণ'),
(260, 260, 'bn_BD', 'মুদ্রা হার তথ্য'),
(261, 261, 'bn_BD', 'মুদ্রা হার বিনিময় পরিষেবা কনফিগার করা হয় না।'),
(262, 262, 'bn_BD', 'মুদ্রা হার সম্পাদনা করুন'),
(263, 263, 'bn_BD', 'সূচক মুদ্রা হার'),
(264, 264, 'bn_BD', 'মুদ্রা তথ্য ফিড'),
(265, 265, 'bn_BD', 'সালিস'),
(266, 266, 'bn_BD', 'কামারশালা'),
(267, 267, 'bn_BD', 'ব্রাউজ করুন'),
(268, 268, 'bn_BD', 'এখানে ফাইল ড্রপ বা আপলোড ক্লিক করুন'),
(269, 269, 'bn_BD', 'এই ফাইল নির্বাচন করুন'),
(270, 270, 'bn_BD', 'ফাইল ম্যানেজার'),
(271, 271, 'bn_BD', 'মিডিয়া'),
(272, 272, 'bn_BD', 'ফাইলের নাম'),
(273, 273, 'bn_BD', 'উচ্চতা'),
(274, 274, 'bn_BD', 'ছোট'),
(275, 275, 'bn_BD', 'প্রস্থ'),
(276, 276, 'bn_BD', 'থাম্বনেল'),
(277, 277, 'bn_BD', 'নতুন ফাইল আপলোড করুন'),
(278, 278, 'bn_BD', 'মিডিয়া তৈরি করুন'),
(279, 279, 'bn_BD', 'মিডিয়া মুছে ফেলুন'),
(280, 280, 'bn_BD', 'মিডিয়া সম্পাদনা করুন'),
(281, 281, 'bn_BD', 'সূচক মিডিয়া'),
(282, 282, 'bn_BD', 'ক্যাটাগরি'),
(283, 283, 'bn_BD', 'অবস্থা'),
(284, 284, 'bn_BD', 'তরল মেনু'),
(285, 285, 'bn_BD', 'নাম'),
(286, 286, 'bn_BD', 'পৃষ্ঠা'),
(287, 287, 'bn_BD', 'মূল মেনু আইটেম'),
(288, 288, 'bn_BD', 'লক্ষ্য'),
(289, 289, 'bn_BD', 'আদর্শ'),
(290, 290, 'bn_BD', 'URL'),
(291, 291, 'bn_BD', 'মেনুতে  ফিরে পৃষ্ঠা সম্পাদনা করুন'),
(292, 292, 'bn_BD', 'মেনু আইটেম সক্রিয় করুন'),
(293, 293, 'bn_BD', 'এটি একটি সম্পূর্ণ প্রস্থ মেনু'),
(294, 294, 'bn_BD', 'বিভাগ নির্বাচন করুন'),
(295, 295, 'bn_BD', 'পৃষ্ঠা নির্বাচন করুন'),
(296, 296, 'bn_BD', 'অভিভাবক নির্বাচন করুন'),
(297, 297, 'bn_BD', 'নতুন ট্যাব'),
(298, 298, 'bn_BD', 'একই ট্যাব'),
(299, 299, 'bn_BD', 'ক্যাটাগরি'),
(300, 300, 'bn_BD', 'পৃষ্ঠা'),
(301, 301, 'bn_BD', 'URL'),
(302, 302, 'bn_BD', 'মেনু আইটেম'),
(303, 303, 'bn_BD', 'সাধারণ'),
(304, 304, 'bn_BD', 'মেনু আইটেম তথ্য'),
(305, 305, 'bn_BD', 'মেনু সক্রিয় করুন'),
(306, 306, 'bn_BD', 'মেনু আইটেম যোগ করার জন্য প্রথমে মেনু সংরক্ষণ করুন।'),
(307, 307, 'bn_BD', 'মেনু'),
(308, 308, 'bn_BD', 'মেনুচ'),
(309, 309, 'bn_BD', 'নাম'),
(310, 310, 'bn_BD', 'মেনু আইটেম মুছে ফেলা হয়েছে।'),
(311, 311, 'bn_BD', 'মেনু আইটেম অর্ডার আপডেট করা হয়েছে।'),
(312, 312, 'bn_BD', 'মেনু আইটেম তৈরি করুন'),
(313, 313, 'bn_BD', 'মেনু আইটেম মুছুন'),
(314, 314, 'bn_BD', 'মেনু আইটেম সম্পাদনা করুন'),
(315, 315, 'bn_BD', 'সূচক মেনু আইটেম'),
(316, 316, 'bn_BD', 'মেনু তৈরি করুন'),
(317, 317, 'bn_BD', 'মেনু মুছুন'),
(318, 318, 'bn_BD', 'মেনু সম্পাদনা করুন'),
(319, 319, 'bn_BD', 'সূচক মেনু'),
(320, 320, 'bn_BD', 'মেনুচ'),
(321, 321, 'bn_BD', 'মেটা বর্ণনা'),
(322, 322, 'bn_BD', 'মেটা কীওয়ার্ড'),
(323, 323, 'bn_BD', 'মেটা শিরোনাম'),
(324, 324, 'bn_BD', 'প্রয়োজনীয়'),
(325, 325, 'bn_BD', 'লেবেল'),
(326, 326, 'bn_BD', 'নাম'),
(327, 327, 'bn_BD', 'নাম'),
(328, 328, 'bn_BD', 'টাইপ'),
(329, 329, 'bn_BD', 'লেবেল'),
(330, 330, 'bn_BD', 'মূল্য'),
(331, 331, 'bn_BD', 'মূল্য প্রকার'),
(332, 332, 'bn_BD', 'মূল্য'),
(333, 333, 'bn_BD', 'মূল্য প্রকার'),
(334, 334, 'bn_BD', 'টাইপ'),
(335, 335, 'bn_BD', 'লেবেল'),
(336, 336, 'bn_BD', 'মূল্য'),
(337, 337, 'bn_BD', 'মূল্য প্রকার'),
(338, 338, 'bn_BD', 'গ্লোবাল অপশন যোগ করুন'),
(339, 339, 'bn_BD', 'নতুন অপশন যোগ করুন'),
(340, 340, 'bn_BD', 'নতুন সারি যোগ করুন'),
(341, 341, 'bn_BD', 'অপশন মুছে দিন'),
(342, 342, 'bn_BD', 'সারি মুছুন'),
(343, 343, 'bn_BD', 'নিউ অপসন'),
(344, 344, 'bn_BD', 'চেকবক্স'),
(345, 345, 'bn_BD', 'ড্রপডাউন'),
(346, 346, 'bn_BD', 'একাধিক নির্বাচন'),
(347, 347, 'bn_BD', 'অনুগ্রহ করে নির্বাচন করুন'),
(348, 348, 'bn_BD', 'রেডিও বোতাম'),
(349, 349, 'bn_BD', 'মূল্য'),
(350, 350, 'bn_BD', 'স্থায়ী'),
(351, 351, 'bn_BD', 'শতাংশ'),
(352, 352, 'bn_BD', 'এই বিকল্প প্রয়োজন হয়'),
(353, 353, 'bn_BD', 'অপশন'),
(354, 354, 'bn_BD', 'অপশনস'),
(355, 355, 'bn_BD', 'গ্লোবাল অপশন নির্বাচন করুন'),
(356, 356, 'bn_BD', 'নাম'),
(357, 357, 'bn_BD', 'টাইপ'),
(358, 358, 'bn_BD', 'সাধারণ'),
(359, 359, 'bn_BD', 'অপশন তথ্য'),
(360, 360, 'bn_BD', 'অপশনস'),
(361, 361, 'bn_BD', 'মানগুলি'),
(362, 362, 'bn_BD', 'অপশন তৈরি করুন'),
(363, 363, 'bn_BD', 'অপশন মুছে দিন'),
(364, 364, 'bn_BD', 'সম্পাদনা অপশন'),
(365, 365, 'bn_BD', 'সূচক অপশন'),
(366, 366, 'bn_BD', 'অপশনস'),
(367, 367, 'bn_BD', 'চালান গ্রাহক পাঠানো হয়েছে।'),
(368, 368, 'bn_BD', 'আপনি পেমেন্ট বাতিল করেছেন।'),
(369, 369, 'bn_BD', 'অর্ডার স্থিতি আপডেট করা হয়েছে।'),
(370, 370, 'bn_BD', 'হিসাবের তথ্য'),
(371, 371, 'bn_BD', 'ঠিকানার তথ্য'),
(372, 372, 'bn_BD', 'বিলিং ঠিকানা'),
(373, 373, 'bn_BD', 'কুপন'),
(374, 374, 'bn_BD', 'মুদ্রা'),
(375, 375, 'bn_BD', 'মুদ্রার হার'),
(376, 376, 'bn_BD', 'গ্রাহক ইমেইল'),
(377, 377, 'bn_BD', 'গ্রাহকগণ'),
(378, 378, 'bn_BD', 'ক্রেতার নাম'),
(379, 379, 'bn_BD', 'গ্রাহক ফোন'),
(380, 380, 'bn_BD', 'অতিথি'),
(381, 381, 'bn_BD', 'অর্ডার সামগ্রী'),
(382, 382, 'bn_BD', 'মোট রেখা'),
(383, 383, 'bn_BD', 'অর্ডার'),
(384, 384, 'bn_BD', 'অর্ডার ও অ্যাকাউন্ট তথ্য'),
(385, 385, 'bn_BD', 'অর্ডারের তারিখ'),
(386, 386, 'bn_BD', 'অর্ডার তথ্য'),
(387, 387, 'bn_BD', 'অর্ডারের অবস্থা'),
(388, 388, 'bn_BD', 'মূল্যপরিশোধ পদ্ধতি'),
(389, 389, 'bn_BD', 'ছাপা'),
(390, 390, 'bn_BD', 'প্রোডাক্ট'),
(391, 391, 'bn_BD', 'পরিমাণ'),
(392, 392, 'bn_BD', 'নিবন্ধভুক্ত'),
(393, 393, 'bn_BD', 'ইমেইল পাঠান'),
(394, 394, 'bn_BD', 'প্রেরণের ঠিকানা'),
(395, 395, 'bn_BD', 'উপমোট'),
(396, 396, 'bn_BD', 'গ্রাহক ইমেইল'),
(397, 397, 'bn_BD', 'ক্রেতার নাম'),
(398, 398, 'bn_BD', 'অর্ডার আইডি'),
(399, 399, 'bn_BD', 'মোট'),
(400, 400, 'bn_BD', 'মোট'),
(401, 401, 'bn_BD', 'একক দাম'),
(402, 402, 'bn_BD', 'আদেশ সম্পাদনা করুন'),
(403, 403, 'bn_BD', 'সূচক আদেশ'),
(404, 404, 'bn_BD', 'অর্ডার প্রদর্শন'),
(405, 405, 'bn_BD', 'বিলিং ঠিকানা'),
(406, 406, 'bn_BD', 'তারিখ'),
(407, 407, 'bn_BD', 'ইমেইল'),
(408, 408, 'bn_BD', 'ইনভয়েস'),
(409, 409, 'bn_BD', 'ইনভয়েস আইডি'),
(410, 410, 'bn_BD', 'মোট রেখা'),
(411, 411, 'bn_BD', 'অর্ডার বিবরণী'),
(412, 412, 'bn_BD', 'মূল্যপরিশোধ পদ্ধতি'),
(413, 413, 'bn_BD', 'ফোন'),
(414, 414, 'bn_BD', 'প্রোডাক্ট'),
(415, 415, 'bn_BD', 'পরিমাণ'),
(416, 416, 'bn_BD', 'প্রেরণের ঠিকানা'),
(417, 417, 'bn_BD', 'উপমোট'),
(418, 418, 'bn_BD', 'মোট'),
(419, 419, 'bn_BD', 'একক দাম'),
(420, 420, 'bn_BD', 'বাতিল করা হয়েছে'),
(421, 421, 'bn_BD', 'সম্পন্ন'),
(422, 422, 'bn_BD', 'On Hold'),
(423, 423, 'bn_BD', 'পেন্ডিং'),
(424, 424, 'bn_BD', 'অপেক্ষারত পেমেন্ট'),
(425, 425, 'bn_BD', 'প্রসেসিং'),
(426, 426, 'bn_BD', 'ফেরত দেওয়া'),
(427, 427, 'bn_BD', 'বডি'),
(428, 428, 'bn_BD', 'অবস্থা'),
(429, 429, 'bn_BD', 'নাম'),
(430, 430, 'bn_BD', 'URL'),
(431, 431, 'bn_BD', 'পৃষ্ঠা সক্রিয় করুন'),
(432, 432, 'bn_BD', 'পৃষ্ঠা'),
(433, 433, 'bn_BD', 'পৃষ্ঠাগুলি'),
(434, 434, 'bn_BD', 'নাম'),
(435, 435, 'bn_BD', 'সাধারণ'),
(436, 436, 'bn_BD', 'পৃষ্ঠা তথ্য'),
(437, 437, 'bn_BD', 'SEO'),
(438, 438, 'bn_BD', 'পেজ তৈরি করুন'),
(439, 439, 'bn_BD', 'পৃষ্ঠা মুছে দিন'),
(440, 440, 'bn_BD', 'পৃষ্ঠা সম্পাদনা করুন'),
(441, 441, 'bn_BD', 'সূচক পৃষ্ঠা'),
(442, 442, 'bn_BD', 'পৃষ্ঠাগুলি'),
(443, 443, 'bn_BD', 'ক্যাটাগরিস'),
(444, 444, 'bn_BD', 'বিবরণ'),
(445, 445, 'bn_BD', 'মজুদ প্রাপ্যতা'),
(446, 446, 'bn_BD', 'অবস্থা'),
(447, 447, 'bn_BD', 'Reviewable'),
(448, 448, 'bn_BD', 'ইনভেন্টরি ম্যানেজমেন্ট'),
(449, 449, 'bn_BD', 'নাম'),
(450, 450, 'bn_BD', 'নতুন পণ্য থেকে'),
(451, 451, 'bn_BD', 'নতুন পণ্য পর্যন্ত'),
(452, 452, 'bn_BD', 'মূল্য'),
(453, 453, 'bn_BD', 'Qty'),
(454, 454, 'bn_BD', 'সংক্ষিপ্ত বিবরণ'),
(455, 455, 'bn_BD', 'SKU'),
(456, 456, 'bn_BD', 'URL'),
(457, 457, 'bn_BD', 'বিশেষ মূল্য'),
(458, 458, 'bn_BD', 'বিশেষ মূল্য শেষ'),
(459, 459, 'bn_BD', 'বিশেষ মূল্য শুরু'),
(460, 460, 'bn_BD', 'কর শ্রেনী'),
(461, 461, 'bn_BD', 'পণ্য তৈরি করুন'),
(462, 462, 'bn_BD', 'পণ্য মুছুন'),
(463, 463, 'bn_BD', 'পণ্য সম্পাদনা করুন'),
(464, 464, 'bn_BD', 'সূচক পণ্য'),
(465, 465, 'bn_BD', 'পণ্য সক্রিয় করুন'),
(466, 466, 'bn_BD', 'ইনভেন্টরি ট্র্যাক করবেন না'),
(467, 467, 'bn_BD', 'ট্র্যাক জায়'),
(468, 468, 'bn_BD', 'অনুগ্রহ করে নির্বাচন করুন'),
(469, 469, 'bn_BD', 'স্টক আউট'),
(470, 470, 'bn_BD', 'স্টক ইন'),
(471, 471, 'bn_BD', 'প্রোডাক্ট'),
(472, 472, 'bn_BD', 'পণ্যগুলি'),
(473, 473, 'bn_BD', 'নাম'),
(474, 474, 'bn_BD', 'মূল্য'),
(475, 475, 'bn_BD', 'থাম্বনেইল'),
(476, 476, 'bn_BD', 'সংযুক্তিসমূহ'),
(477, 477, 'bn_BD', 'ক্রস-বিক্রি'),
(478, 478, 'bn_BD', 'সাধারণ'),
(479, 479, 'bn_BD', 'উন্নত তথ্য'),
(480, 480, 'bn_BD', 'মৌলিক তথ্য'),
(481, 481, 'bn_BD', 'ইনভেন্টরি'),
(482, 482, 'bn_BD', 'মূল্য'),
(483, 483, 'bn_BD', 'সংশ্লিষ্ট পণ্য'),
(484, 484, 'bn_BD', 'SEO'),
(485, 485, 'bn_BD', 'আপ-বিক্রি'),
(486, 486, 'bn_BD', 'ক্যাটালগ'),
(487, 487, 'bn_BD', 'পণ্য'),
(488, 488, 'bn_BD', 'পণ্যগুলি'),
(489, 489, 'bn_BD', 'কুপন কোড'),
(490, 490, 'bn_BD', 'গ্রাহক ইমেইল'),
(491, 491, 'bn_BD', 'ক্রেতার নাম'),
(492, 492, 'bn_BD', 'শেষ তারিখ'),
(493, 493, 'bn_BD', 'তারিখ শুরু'),
(494, 494, 'bn_BD', 'Group By'),
(495, 495, 'bn_BD', 'দিন'),
(496, 496, 'bn_BD', 'মাস'),
(497, 497, 'bn_BD', 'সপ্তাহ'),
(498, 498, 'bn_BD', 'বছর'),
(499, 499, 'bn_BD', 'কীওয়ার্ড'),
(500, 500, 'bn_BD', 'অনুগ্রহ করে নির্বাচন করুন'),
(501, 501, 'bn_BD', 'প্রোডাক্ট'),
(502, 502, 'bn_BD', 'কোয়ান্টিটি এবোভ'),
(503, 503, 'bn_BD', 'কোয়ান্টিটি বেলও'),
(504, 504, 'bn_BD', 'প্রতিবেদনের প্রকার'),
(505, 505, 'bn_BD', 'কুপন রিপোর্ট'),
(506, 506, 'bn_BD', 'গ্রাহক অর্ডার রিপোর্ট'),
(507, 507, 'bn_BD', 'পণ্য ক্রয় রিপোর্ট'),
(508, 508, 'bn_BD', 'পণ্য স্টক রিপোর্ট'),
(509, 509, 'bn_BD', 'পণ্যের রিপোর্ট দেখুন'),
(510, 510, 'bn_BD', 'বিক্রয় রিপোর্ট'),
(511, 511, 'bn_BD', 'অনুসন্ধান রিপোর্ট'),
(512, 512, 'bn_BD', 'শিপিং রিপোর্ট'),
(513, 513, 'bn_BD', 'ট্যাক্স রিপোর্ট'),
(514, 514, 'bn_BD', 'শিপিং পদ্ধতি'),
(515, 515, 'bn_BD', 'SKU'),
(516, 516, 'bn_BD', 'অর্ডারের অবস্থা'),
(517, 517, 'bn_BD', 'মজুদ প্রাপ্যতা'),
(518, 518, 'bn_BD', 'স্টক ইন'),
(519, 519, 'bn_BD', 'স্টক আউট'),
(520, 520, 'bn_BD', 'ট্যাক্স নাম'),
(521, 521, 'bn_BD', 'কোন তথ্য নেই!'),
(522, 522, 'bn_BD', 'প্রতিবেদন'),
(523, 523, 'bn_BD', 'কুপন কোড'),
(524, 524, 'bn_BD', 'কুপন নাম'),
(525, 525, 'bn_BD', 'গ্রাহক ইমেইল'),
(526, 526, 'bn_BD', 'গ্রাহকগণ'),
(527, 527, 'bn_BD', 'গ্রাহক ইমেইল'),
(528, 528, 'bn_BD', 'তারিখ'),
(529, 529, 'bn_BD', 'ডিসকাউন্ট'),
(530, 530, 'bn_BD', 'অতিথি'),
(531, 531, 'bn_BD', 'হিটস'),
(532, 532, 'bn_BD', 'কী খুঁজতে হবে'),
(533, 533, 'bn_BD', 'অর্ডার'),
(534, 534, 'bn_BD', 'প্রোডাক্ট'),
(535, 535, 'bn_BD', 'পণ্যগুলি'),
(536, 536, 'bn_BD', 'Qty'),
(537, 537, 'bn_BD', 'নিবন্ধভুক্ত'),
(538, 538, 'bn_BD', 'ফলাফল'),
(539, 539, 'bn_BD', 'পাঠানো'),
(540, 540, 'bn_BD', 'শিপিং পদ্ধতি'),
(541, 541, 'bn_BD', 'মজুদ প্রাপ্যতা'),
(542, 542, 'bn_BD', 'উপমোট'),
(543, 543, 'bn_BD', 'কর'),
(544, 544, 'bn_BD', 'ট্যাক্স নাম'),
(545, 545, 'bn_BD', 'সৰ্বোচ্চ মূলো  থেকে সর্বনিম্ন মূল্য'),
(546, 546, 'bn_BD', 'মোট'),
(547, 547, 'bn_BD', 'দেখেছে'),
(548, 548, 'bn_BD', 'সূচক প্রতিবেদন'),
(549, 549, 'bn_BD', 'প্রতিবেদন'),
(550, 550, 'bn_BD', 'পর্যালোচনা'),
(551, 551, 'bn_BD', 'অবস্থা'),
(552, 552, 'bn_BD', 'নির্ধারণ'),
(553, 553, 'bn_BD', 'পর্যালোচক নাম'),
(554, 554, 'bn_BD', 'আপনার পর্যালোচনার জন্য, আপনাকে ধন্যবাদ. এটি অনুমোদনের জন্য জমা দেওয়া হয়েছে।'),
(555, 555, 'bn_BD', 'আপনার পর্যালোচনার জন্য, আপনাকে ধন্যবাদ.'),
(556, 556, 'bn_BD', 'পর্যালোচনা মুছুন'),
(557, 557, 'bn_BD', 'পর্যালোচনা সম্পাদনা করুন'),
(558, 558, 'bn_BD', 'সূচক পর্যালোচনা'),
(559, 559, 'bn_BD', 'এই পর্যালোচনা অনুমোদন'),
(560, 560, 'bn_BD', 'পর্যালোচনা'),
(561, 561, 'bn_BD', 'পর্যালোচনা'),
(562, 562, 'bn_BD', 'ফিরে পণ্য সম্পাদনা পৃষ্ঠা'),
(563, 563, 'bn_BD', 'অনুমোদিত'),
(564, 564, 'bn_BD', 'প্রোডাক্ট'),
(565, 565, 'bn_BD', 'পর্যালোচক নাম'),
(566, 566, 'bn_BD', 'সাধারণ'),
(567, 567, 'bn_BD', 'পর্যালোচনা তথ্য'),
(568, 568, 'bn_BD', 'পর্যালোচনা'),
(569, 569, 'bn_BD', 'পর্যালোচনা'),
(570, 570, 'bn_BD', 'অটো পর্যালোচনা অনুমোদন'),
(571, 571, 'bn_BD', 'ফ্রিকোয়েন্সি'),
(572, 572, 'bn_BD', 'স্বয়ংক্রিয় ভাবে সতেজ করা'),
(573, 573, 'bn_BD', 'অবস্থা'),
(574, 574, 'bn_BD', 'অবস্থা'),
(575, 575, 'bn_BD', 'অবস্থা'),
(576, 576, 'bn_BD', 'মুদ্রা ডেটা ফিড API কী'),
(577, 577, 'bn_BD', 'এক্সচেঞ্জ রেট সেবা'),
(578, 578, 'bn_BD', 'ফুটার'),
(579, 579, 'bn_BD', 'শিরোলেখ'),
(580, 580, 'bn_BD', 'গ্রাহক ভূমিকা'),
(581, 581, 'bn_BD', 'ডিফল্ট দেশ'),
(582, 582, 'bn_BD', 'ডিফল্ট মুদ্রা'),
(583, 583, 'bn_BD', 'ডিফল্ট লোকেল'),
(584, 584, 'bn_BD', 'ডিফল্ট টাইমজোন'),
(585, 585, 'bn_BD', 'অ্যাপ্লিকেশন আইডি'),
(586, 586, 'bn_BD', 'অ্যাপ গোপন'),
(587, 587, 'bn_BD', 'অবস্থা'),
(588, 588, 'bn_BD', 'ফিক্সার অ্যাক্সেস কী'),
(589, 589, 'bn_BD', 'মূল্য'),
(590, 590, 'bn_BD', 'অবস্থা'),
(591, 591, 'bn_BD', 'ফোর্স এপিআই কী'),
(592, 592, 'bn_BD', 'অবস্থা'),
(593, 593, 'bn_BD', 'ন্যূনতম পরিমাণ'),
(594, 594, 'bn_BD', 'ক্লায়েন্ট আইডি'),
(595, 595, 'bn_BD', 'ক্লায়েন্ট গোপন'),
(596, 596, 'bn_BD', 'অবস্থা'),
(597, 597, 'bn_BD', 'মূল্য'),
(598, 598, 'bn_BD', 'অবস্থা'),
(599, 599, 'bn_BD', 'ঠিকানা থেকে মেইল'),
(600, 600, 'bn_BD', 'নাম থেকে মেইল'),
(601, 601, 'bn_BD', 'মেইল হোস্ট'),
(602, 602, 'bn_BD', 'মেইল পাসওয়ার্ড'),
(603, 603, 'bn_BD', 'মেইল পোর্ট'),
(604, 604, 'bn_BD', 'মেইল ব্যবহারকারী নাম'),
(605, 605, 'bn_BD', 'অবস্থা'),
(606, 606, 'bn_BD', 'API পাসওয়ার্ড'),
(607, 607, 'bn_BD', 'API স্বাক্ষর'),
(608, 608, 'bn_BD', 'স্যান্ডবক্স'),
(609, 609, 'bn_BD', 'API ব্যবহারকারীর নাম'),
(610, 610, 'bn_BD', 'পর্যালোচনা & রেটিং'),
(611, 611, 'bn_BD', 'চালান ইমেল পাঠান'),
(612, 612, 'bn_BD', 'দোকান ঠিকানা 1'),
(613, 613, 'bn_BD', 'দোকান ঠিকানা 2'),
(614, 614, 'bn_BD', 'স্টোর সিটি'),
(615, 615, 'bn_BD', 'দোকান দেশ'),
(616, 617, 'bn_BD', 'দোকান ফোন'),
(617, 618, 'bn_BD', 'দোকান বিভাগ'),
(618, 619, 'bn_BD', 'দোকান ZIP'),
(619, 620, 'bn_BD', 'অবস্থা'),
(620, 621, 'bn_BD', 'প্রকাশযোগ্য কী'),
(621, 622, 'bn_BD', 'গোপন Key'),
(622, 623, 'bn_BD', 'সমর্থিত দেশ'),
(623, 624, 'bn_BD', 'সমর্থিত দেশ'),
(624, 625, 'bn_BD', 'সমর্থিত দেশ'),
(625, 626, 'bn_BD', 'সমর্থিত দেশ'),
(626, 627, 'bn_BD', 'সমর্থিত স্থানীয়'),
(627, 627, 'en', 'Supported Locals'),
(628, 628, 'bn_BD', 'সমর্থিত স্থানীয়'),
(629, 629, 'bn_BD', 'বিবরণ'),
(630, 630, 'bn_BD', 'নির্দেশনা'),
(631, 631, 'bn_BD', 'লেবেল'),
(632, 632, 'bn_BD', 'বিবরণ'),
(633, 633, 'bn_BD', 'নির্দেশনা'),
(634, 634, 'bn_BD', 'লেবেল'),
(635, 635, 'bn_BD', 'বিবরণ'),
(636, 636, 'bn_BD', 'লেবেল'),
(637, 637, 'bn_BD', 'লেবেল'),
(638, 638, 'bn_BD', 'লেবেল'),
(639, 639, 'bn_BD', 'লেবেল'),
(640, 640, 'bn_BD', 'বিবরণ'),
(641, 641, 'bn_BD', 'লেবেল'),
(642, 642, 'bn_BD', 'দোকানের নাম'),
(643, 643, 'bn_BD', 'দোকান ট্যাগলাইন'),
(644, 644, 'bn_BD', 'বিবরণ'),
(645, 645, 'bn_BD', 'লেবেল'),
(646, 646, 'bn_BD', 'সেটিংস সম্পাদনা'),
(647, 647, 'bn_BD', 'গ্রাহকদের রিভিউ এবং রেটিং দিতে অনুমতি দিন'),
(648, 648, 'bn_BD', 'গ্রাহক রিভিউ স্বয়ংক্রিয়ভাবে অনুমোদিত হবে'),
(649, 649, 'bn_BD', 'দৈনন্দিন'),
(650, 650, 'bn_BD', 'মাসিক'),
(651, 651, 'bn_BD', 'সাপ্তাহিক'),
(652, 652, 'bn_BD', 'স্বয়ংক্রিয়-রিফ্রেশ মুদ্রা হার সক্ষম করুন'),
(653, 653, 'bn_BD', 'ব্যাংক স্থানান্তর সক্ষম করুন'),
(654, 654, 'bn_BD', 'চেক / মানি অর্ডার সক্রিয় করুন'),
(655, 655, 'bn_BD', 'ডেলিভারি উপর নগদ সক্রিয় করুন'),
(656, 656, 'bn_BD', 'ফেসবুক লগইন সক্ষম করুন'),
(657, 657, 'bn_BD', 'ফ্ল্যাট রেট সক্রিয় করুন'),
(658, 658, 'bn_BD', 'ফ্রি শিপিং সক্ষম করুন'),
(659, 659, 'bn_BD', 'গুগল লগইন সক্রিয় করুন'),
(660, 660, 'bn_BD', 'গুগল লগইন সক্রিয় করুন'),
(661, 661, 'bn_BD', 'পেপ্যাল এক্সপ্রেস সক্রিয় করুন'),
(662, 662, 'bn_BD', 'কপাটক সক্ষম করুন'),
(663, 663, 'bn_BD', 'অস্পষ্ট অনুসন্ধান নিষ্ক্রিয় করতে এটি ফাঁকা ছেড়ে দিন।'),
(664, 664, 'bn_BD', 'অনুগ্রহ করে নির্বাচন করুন'),
(665, 665, 'bn_BD', 'আলগোলিয়া'),
(666, 666, 'bn_BD', 'আমার এসকিউএল'),
(667, 667, 'bn_BD', 'সেবা নির্বাচন করুন'),
(668, 668, 'bn_BD', 'চেকআউট পরে গ্রাহক স্বয়ংক্রিয়ভাবে চালান ইমেল পাঠান'),
(669, 669, 'bn_BD', 'পরীক্ষা পেমেন্ট জন্য পেপ্যাল স্যান্ডবক্স ব্যবহার করুন'),
(670, 670, 'bn_BD', 'সেটিংস'),
(671, 671, 'bn_BD', 'ব্যাংক লেনদেন'),
(672, 672, 'bn_BD', 'পরীক্ষা করে দেখুন / মানি অর্ডার'),
(673, 673, 'bn_BD', 'প্রদানোত্তর পরিশোধ'),
(674, 674, 'bn_BD', 'মুদ্রা'),
(675, 675, 'bn_BD', 'কাস্টম সিএসএস / জেএস'),
(676, 676, 'bn_BD', 'ফেসবুক'),
(677, 677, 'bn_BD', 'একদর'),
(678, 678, 'bn_BD', 'বিনামূল্যে পরিবহন'),
(679, 679, 'bn_BD', 'সাধারণ'),
(680, 680, 'bn_BD', 'গুগল'),
(681, 681, 'bn_BD', 'সাধারণ সেটিংস'),
(682, 682, 'bn_BD', 'মুল্য পরিশোধ পদ্ধতি'),
(683, 683, 'bn_BD', 'পরিবহন পদ্ধতি'),
(684, 684, 'bn_BD', 'সামাজিক লগইন'),
(685, 685, 'bn_BD', 'স্থানীয় পিক'),
(686, 686, 'bn_BD', 'মেইল'),
(687, 687, 'bn_BD', 'পেপ্যাল এক্সপ্রেস'),
(688, 688, 'bn_BD', 'রেডিস'),
(689, 689, 'bn_BD', 'দোকান'),
(690, 690, 'bn_BD', 'ডোরা'),
(691, 691, 'bn_BD', 'SQLite ইনস্টল করা হয় না।'),
(692, 692, 'bn_BD', 'সাধারণ'),
(693, 693, 'bn_BD', 'সেটিংস'),
(694, 694, 'bn_BD', 'তীর'),
(695, 695, 'bn_BD', 'স্বয়ংক্রিয় চালু'),
(696, 696, 'bn_BD', 'অটোপ্লে গতি'),
(697, 697, 'bn_BD', 'বিলম্ব'),
(698, 698, 'bn_BD', 'প্রভাব'),
(699, 699, 'bn_BD', 'অ্যাকশন টেক্সট কল'),
(700, 700, 'bn_BD', 'অ্যাকশন URL এ কল করুন'),
(701, 701, 'bn_BD', 'ক্যাপশন 1'),
(702, 702, 'bn_BD', 'বিলম্ব'),
(703, 703, 'bn_BD', 'প্রভাব'),
(704, 704, 'bn_BD', 'ক্যাপশন 2'),
(705, 705, 'bn_BD', 'বিলম্ব'),
(706, 706, 'bn_BD', 'প্রভাব'),
(707, 707, 'bn_BD', 'ক্যাপশন 3'),
(708, 708, 'bn_BD', 'বিলম্ব'),
(709, 709, 'bn_BD', 'প্রভাব'),
(710, 710, 'bn_BD', 'নাম'),
(711, 711, 'bn_BD', 'নতুন উইন্ডোতে খুলুন'),
(712, 712, 'bn_BD', 'স্লাইডার তৈরি করুন'),
(713, 713, 'bn_BD', 'স্লাইডার মুছুন'),
(714, 714, 'bn_BD', 'স্লাইডার সম্পাদনা করুন'),
(715, 715, 'bn_BD', 'সূচক স্লাইডার'),
(716, 716, 'bn_BD', 'নিচে বিবর্ণ'),
(717, 717, 'bn_BD', 'বামে বিবর্ণ'),
(718, 718, 'bn_BD', 'ডান থেকে বিবর্ণ'),
(719, 719, 'bn_BD', 'উপরে থেকে বিবর্ণ'),
(720, 720, 'bn_BD', 'হালকা গতি ইন'),
(721, 721, 'bn_BD', 'নিচে স্লাইড'),
(722, 722, 'bn_BD', 'বাম স্লাইড'),
(723, 723, 'bn_BD', 'ডান স্লাইড'),
(724, 724, 'bn_BD', 'উপরে স্লাইড'),
(725, 725, 'bn_BD', 'প্রসারিত করো'),
(726, 726, 'bn_BD', '৩০০০ms'),
(727, 727, 'bn_BD', 'Autoplay সক্রিয় করুন'),
(728, 728, 'bn_BD', 'পূর্ব / পরবর্তী তীর প্রদর্শন করুন'),
(729, 729, 'bn_BD', 'স্লাইড যোগ করুন'),
(730, 730, 'bn_BD', '১৫০০ms'),
(731, 731, 'bn_BD', 'অ্যাকশন কল'),
(732, 732, 'bn_BD', 'অ্যাকশন URL এ কল করুন'),
(733, 733, 'bn_BD', 'ক্যাপশন 1'),
(734, 734, 'bn_BD', 'ক্যাপশন 2'),
(735, 735, 'bn_BD', 'ক্যাপশন 3'),
(736, 736, 'bn_BD', 'নতুন উইন্ডোতে খুলুন'),
(737, 737, 'bn_BD', 'সাধারণ'),
(738, 738, 'bn_BD', 'বিকল্প'),
(739, 739, 'bn_BD', 'স্লাইডার'),
(740, 740, 'bn_BD', 'স্লাইডার'),
(741, 741, 'bn_BD', 'নাম'),
(742, 742, 'bn_BD', 'স্লাইডার তথ্য'),
(743, 743, 'bn_BD', 'সেটিংস'),
(744, 744, 'bn_BD', 'স্লাইড'),
(745, 745, 'bn_BD', '৪০৪'),
(746, 746, 'bn_BD', 'ওহো!'),
(747, 747, 'bn_BD', 'পৃষ্ঠা পাওয়া যায় নি।'),
(748, 748, 'bn_BD', 'হিসাবের তথ্য'),
(749, 749, 'bn_BD', 'সম্পাদন করা'),
(750, 750, 'bn_BD', 'সাম্প্রতিক আদেশ'),
(751, 751, 'bn_BD', 'সব দেখ'),
(752, 752, 'bn_BD', 'ড্যাশবোর্ড'),
(753, 753, 'bn_BD', 'প্রস্থান'),
(754, 754, 'bn_BD', 'আমার অ্যাকাউন্ট'),
(755, 755, 'bn_BD', 'আমার আদেশ'),
(756, 756, 'bn_BD', 'আমার প্রোফাইল'),
(757, 757, 'bn_BD', 'আমার পর্যালোচনা'),
(758, 758, 'bn_BD', 'আমার ইচ্ছাগুলি'),
(759, 759, 'bn_BD', 'তারিখ'),
(760, 760, 'bn_BD', 'আপনি এখনও কোন আদেশ স্থাপন করা হয় নি।'),
(761, 761, 'bn_BD', 'অর্ডার আইডি'),
(762, 762, 'bn_BD', 'অবস্থা'),
(763, 763, 'bn_BD', 'মোট'),
(764, 764, 'bn_BD', 'অর্ডার দেখুন'),
(765, 765, 'bn_BD', 'হিসাব'),
(766, 766, 'bn_BD', 'পাসওয়ার্ড নিশ্চিত করুন'),
(767, 767, 'bn_BD', 'ইমেইল'),
(768, 768, 'bn_BD', 'নামের প্রথম অংশ'),
(769, 769, 'bn_BD', 'নামের শেষাংশ'),
(770, 770, 'bn_BD', 'নতুন পাসওয়ার্ড'),
(771, 771, 'bn_BD', 'পাসওয়ার্ড'),
(772, 772, 'bn_BD', 'পরিবর্তনগুলোর সংরক্ষন'),
(773, 773, 'bn_BD', 'তারিখ'),
(774, 774, 'bn_BD', 'আপনি এখনও কোন পণ্য পর্যালোচনা করা হয় নি।'),
(775, 775, 'bn_BD', 'প্রোডাক্ট'),
(776, 776, 'bn_BD', 'নির্ধারণ'),
(777, 777, 'bn_BD', 'বিলিং ঠিকানা'),
(778, 778, 'bn_BD', 'কুপন'),
(779, 779, 'bn_BD', 'কুপনের তারিখ'),
(780, 780, 'bn_BD', 'ইমেইল'),
(781, 781, 'bn_BD', 'মোট রেখা'),
(782, 782, 'bn_BD', 'মূল্যপরিশোধ পদ্ধতি'),
(783, 783, 'bn_BD', 'প্রোডাক্ট'),
(784, 784, 'bn_BD', 'পরিমাণ'),
(785, 785, 'bn_BD', 'প্রেরণের ঠিকানা'),
(786, 786, 'bn_BD', 'উপমোট'),
(787, 787, 'bn_BD', 'টেলিফোন'),
(788, 788, 'bn_BD', 'মোট'),
(789, 789, 'bn_BD', 'একক দাম'),
(790, 790, 'bn_BD', 'অর্ডার দেখুন'),
(791, 791, 'bn_BD', 'উপস্থিতি'),
(792, 792, 'bn_BD', 'আপনার ইচ্ছা তালিকা খালি.'),
(793, 793, 'bn_BD', 'এখন মজুদ আছে'),
(794, 794, 'bn_BD', 'স্টক আউট'),
(795, 795, 'bn_BD', 'মূল্য'),
(796, 796, 'bn_BD', 'প্রোডাক্ট'),
(797, 797, 'bn_BD', 'অপসারণ'),
(798, 798, 'bn_BD', 'অ্যাকশন টেক্সট কল'),
(799, 799, 'bn_BD', 'অ্যাকশন URL এ কল করুন'),
(800, 800, 'bn_BD', 'ক্যাপশন 1'),
(801, 801, 'bn_BD', 'ক্যাপশন 2'),
(802, 802, 'bn_BD', 'কলাম পণ্য'),
(803, 803, 'bn_BD', 'কলাম শিরোনাম'),
(804, 804, 'bn_BD', 'সক্ষম করা'),
(805, 805, 'bn_BD', 'আইকন'),
(806, 806, 'bn_BD', 'নতুন উইন্ডোতে খুলুন'),
(807, 807, 'bn_BD', 'পণ্য'),
(808, 808, 'bn_BD', 'বিভাগের অবস্থা'),
(809, 809, 'bn_BD', 'বিভাগ শিরোনাম'),
(810, 810, 'bn_BD', 'বিভাগ মেনু'),
(811, 811, 'bn_BD', 'বিভাগ মেনু শিরোনাম'),
(812, 812, 'bn_BD', 'পাদচরণ কপিরাইট টেক্সট'),
(813, 813, 'bn_BD', 'ফেসবুক'),
(814, 814, 'bn_BD', 'পাদচরণ ঠিকানা'),
(815, 815, 'bn_BD', 'নীচের ম্যানু'),
(816, 816, 'bn_BD', 'পাদচরণ মেনু শিরোনাম'),
(817, 817, 'bn_BD', 'গুগল প্লাস'),
(818, 818, 'bn_BD', 'ইনস্টাগ্রাম'),
(819, 819, 'bn_BD', 'বিন্যাস'),
(820, 820, 'bn_BD', 'লিঙ্কডইন'),
(821, 821, 'bn_BD', 'পিন্টারেস্ট'),
(822, 822, 'bn_BD', 'গোপনীয়তা নীতি পৃষ্ঠা'),
(823, 823, 'bn_BD', 'স্লাইডার'),
(824, 824, 'bn_BD', 'শর্তাবলী এবং শর্তাবলী পৃষ্ঠা'),
(825, 825, 'bn_BD', 'থিম'),
(826, 826, 'bn_BD', 'টুইটার'),
(827, 827, 'bn_BD', 'ইউটিউব'),
(828, 828, 'bn_BD', 'বাড়তি নাম'),
(829, 829, 'bn_BD', 'ট্যাব শিরোনাম'),
(830, 830, 'bn_BD', 'ট্যাব পণ্য'),
(831, 831, 'bn_BD', 'শিরোনাম'),
(832, 832, 'bn_BD', 'মোট পণ্য'),
(833, 833, 'bn_BD', 'URL টি'),
(834, 834, 'bn_BD', 'কুপন প্রয়োগ করুন'),
(835, 835, 'bn_BD', 'কার্ট'),
(836, 836, 'bn_BD', 'কার্ট টোটাল'),
(837, 837, 'bn_BD', 'চেকআউট'),
(838, 838, 'bn_BD', 'কুপন'),
(839, 839, 'bn_BD', 'কোন প্রেরণ পদ্ধতি পাওয়া যায়।'),
(840, 840, 'bn_BD', 'মূল্য'),
(841, 841, 'bn_BD', 'প্রোডাক্ট'),
(842, 842, 'bn_BD', 'পরিমাণ'),
(843, 843, 'bn_BD', 'অপসারণ'),
(844, 844, 'bn_BD', 'শিপিং পদ্ধতি'),
(845, 845, 'bn_BD', 'উপমোট'),
(846, 846, 'bn_BD', 'মোট'),
(847, 847, 'bn_BD', 'হালনাগাদ'),
(848, 848, 'bn_BD', 'কার্ট খালি!'),
(849, 849, 'bn_BD', 'ঠিকানা'),
(850, 850, 'bn_BD', 'পিছনে'),
(851, 851, 'bn_BD', 'চেকআউট'),
(852, 852, 'bn_BD', 'নিশ্চিত করুন'),
(853, 853, 'bn_BD', 'চালিয়ে যান'),
(854, 854, 'bn_BD', 'আমি একমত'),
(855, 855, 'bn_BD', 'মূল্যপরিশোধ'),
(856, 856, 'bn_BD', 'অর্ডার করুন'),
(857, 857, 'bn_BD', 'অনুগ্রহ করে নির্বাচন করুন'),
(858, 858, 'bn_BD', 'ঠিকানা'),
(859, 859, 'bn_BD', 'ঠিকানা ২'),
(860, 860, 'bn_BD', 'শহর'),
(861, 861, 'bn_BD', 'দেশ'),
(862, 862, 'bn_BD', 'নামের প্রথম অংশ'),
(863, 863, 'bn_BD', 'নামের শেষাংশ'),
(864, 864, 'bn_BD', 'রাজ্য / প্রদেশ'),
(865, 865, 'bn_BD', 'পিন কোড / জিপ'),
(866, 866, 'bn_BD', 'একটি অ্যাকাউন্ট তৈরি করুন?'),
(867, 867, 'bn_BD', 'ইমেইল'),
(868, 868, 'bn_BD', 'ফোন'),
(869, 869, 'bn_BD', 'পাসওয়ার্ড'),
(870, 870, 'bn_BD', 'একটি ভিন্ন ঠিকানা পাঠান'),
(871, 871, 'bn_BD', 'ঠিকানা 1'),
(872, 872, 'bn_BD', 'ঠিকানা ২'),
(873, 873, 'bn_BD', 'শহর'),
(874, 874, 'bn_BD', 'দেশ'),
(875, 875, 'bn_BD', 'নামের প্রথম অংশ'),
(876, 876, 'bn_BD', 'নামের শেষাংশ'),
(877, 877, 'bn_BD', 'রাজ্য / প্রদেশ'),
(878, 878, 'bn_BD', 'পিন কোড / জিপ'),
(879, 879, 'bn_BD', 'বিলিং ঠিকানা'),
(880, 880, 'bn_BD', 'উপকরণ তালিকা'),
(881, 881, 'bn_BD', 'অর্থ প্রদান নির্দেশনাবলী'),
(882, 882, 'bn_BD', 'মূল্য'),
(883, 883, 'bn_BD', 'প্রোডাক্ট'),
(884, 884, 'bn_BD', 'পরিমাণ'),
(885, 885, 'bn_BD', 'মোট'),
(886, 886, 'bn_BD', 'কোন পেমেন্ট পদ্ধতি পাওয়া যায় নি।'),
(887, 887, 'bn_BD', 'মূল্যপরিশোধ পদ্ধতি'),
(888, 888, 'bn_BD', 'ব্যক্তিগত তথ্য'),
(889, 889, 'bn_BD', 'প্রেরণের ঠিকানা'),
(890, 890, 'bn_BD', 'শর্তাবলী'),
(891, 891, 'bn_BD', 'কার্ট যোগ করুন'),
(892, 892, 'bn_BD', 'তুলনা করা'),
(893, 893, 'bn_BD', 'ফিরে যাও'),
(894, 894, 'bn_BD', 'তুলনা তালিকায় কোন পণ্য নেই।'),
(895, 895, 'bn_BD', 'মূল্য'),
(896, 896, 'bn_BD', 'পন্যের স্বল্প বিবরনী'),
(897, 897, 'bn_BD', 'বিস্তারিত দেখুন'),
(898, 898, 'bn_BD', 'যোগাযোগ'),
(899, 899, 'bn_BD', 'ইমেইল'),
(900, 900, 'bn_BD', 'বার্তা'),
(901, 901, 'bn_BD', 'ফোন'),
(902, 902, 'bn_BD', 'আমাদের একটি বার্তা পাঠান'),
(903, 903, 'bn_BD', 'বিষয়'),
(904, 904, 'bn_BD', 'জমা দিন'),
(905, 905, 'bn_BD', 'তোমার ইমেইল'),
(906, 906, 'bn_BD', 'আপনার মেসেজ পৌঁছে গেছে'),
(907, 907, 'bn_BD', 'বিলিং ঠিকানা'),
(908, 908, 'bn_BD', 'কুপন'),
(909, 909, 'bn_BD', 'তারিখ'),
(910, 910, 'bn_BD', 'ইমেইল'),
(911, 911, 'bn_BD', 'চালান'),
(912, 912, 'bn_BD', 'মোট রেখা'),
(913, 913, 'bn_BD', 'আদেশ বিবরণী'),
(914, 914, 'bn_BD', 'অর্ডার আইডি'),
(915, 915, 'bn_BD', 'মূল্যপরিশোধ পদ্ধতি'),
(916, 916, 'bn_BD', 'ফোন'),
(917, 917, 'bn_BD', 'প্রোডাক্ট'),
(918, 918, 'bn_BD', 'পরিমাণ'),
(919, 919, 'bn_BD', 'প্রেরণের ঠিকানা'),
(920, 920, 'bn_BD', 'আদেশের জন্য চালান #: আইডি'),
(921, 921, 'bn_BD', 'উপমোট'),
(922, 922, 'bn_BD', 'মোট'),
(923, 923, 'bn_BD', 'একক দাম'),
(924, 924, 'bn_BD', 'অ্যাকাউন্ট সেটিংস'),
(925, 925, 'bn_BD', 'সব ধরনের'),
(926, 926, 'bn_BD', 'তুলনা'),
(927, 927, 'bn_BD', 'আপনার  ইমেল লিখুন'),
(928, 928, 'bn_BD', 'লগ ইন করুন'),
(929, 929, 'bn_BD', 'চেকআউট'),
(930, 930, 'bn_BD', 'আমার কার্ট'),
(931, 931, 'bn_BD', 'অপসারণ'),
(932, 932, 'bn_BD', 'উপসমষ্টি:'),
(933, 933, 'bn_BD', 'কার্ট দেখুন'),
(934, 934, 'bn_BD', 'কার্ট খালি'),
(935, 935, 'bn_BD', 'পণ্য ট্যাগ'),
(936, 936, 'bn_BD', 'অনুসন্ধান'),
(937, 937, 'bn_BD', 'পণ্য জন্য অনুসন্ধান করুন ...'),
(938, 938, 'bn_BD', 'সাবস্ক্রাইব'),
(939, 939, 'bn_BD', 'ডিফল্ট'),
(940, 940, 'bn_BD', 'ব্যানার সঙ্গে স্লাইডার'),
(941, 941, 'bn_BD', 'আপনার অর্ডার আইডি'),
(942, 942, 'bn_BD', 'আমাদের সাথে কেনাকাটা করার জন্য ধন্যবাদ.'),
(943, 943, 'bn_BD', 'আপনার অর্ডার গৃহীত হয়েছে!'),
(944, 944, 'bn_BD', 'Storefront সেটিংস সম্পাদনা করুন'),
(945, 945, 'bn_BD', 'কার্ট যোগ করুন'),
(946, 946, 'bn_BD', '+ তুলনা জন্য যোগ করুন'),
(947, 947, 'bn_BD', '+ উইশলিস্ট যোগ করুন'),
(948, 948, 'bn_BD', 'উপস্থিতি'),
(949, 949, 'bn_BD', 'ক্রেতার পর্যালোচনা'),
(950, 950, 'bn_BD', 'এখন মজুদ আছে'),
(951, 951, 'bn_BD', 'একটি বিকল্প নির্বাচন করুন'),
(952, 952, 'bn_BD', 'স্টক আউট'),
(953, 953, 'bn_BD', 'পরিমাণ'),
(954, 954, 'bn_BD', 'সংশ্লিষ্ট পণ্য'),
(955, 955, 'bn_BD', '1 তারকা'),
(956, 956, 'bn_BD', '2 তারকা'),
(957, 957, 'bn_BD', '3 তারকা'),
(958, 958, 'bn_BD', '5 তারকা'),
(959, 959, 'bn_BD', '4 তারকা'),
(960, 960, 'bn_BD', 'একটি পর্যালোচনা যোগ করুন'),
(961, 961, 'bn_BD', 'পর্যালোচনা যোগ করুন'),
(962, 962, 'bn_BD', 'এইচটিএমএল অনুবাদযোগ্য নয়'),
(963, 963, 'bn_BD', 'বিঃদ্রঃ:'),
(964, 964, 'bn_BD', '5 এর মধ্যে'),
(965, 965, 'bn_BD', 'নাম'),
(966, 966, 'bn_BD', 'এই পণ্যের জন্য কোন রিভিউ নেই।'),
(967, 967, 'bn_BD', ': তারকা গণনা'),
(968, 968, 'bn_BD', 'আপনার রেটিং'),
(969, 969, 'bn_BD', 'আপনার পর্যালোচনা'),
(970, 970, 'bn_BD', 'এস কে ইউ'),
(971, 971, 'bn_BD', 'অতিরিক্ত তথ্য'),
(972, 972, 'bn_BD', 'বিবরণ'),
(973, 973, 'bn_BD', 'পর্যালোচনা'),
(974, 974, 'bn_BD', 'তুমি এটাও পছন্দ করতে পারো'),
(975, 975, 'bn_BD', 'কার্ট যোগ করুন'),
(976, 976, 'bn_BD', 'তুলনা যোগ করুন'),
(977, 977, 'bn_BD', 'চাহিদাপত্রে যোগ করা'),
(978, 978, 'bn_BD', 'নতুন'),
(979, 979, 'bn_BD', 'স্টক আউট'),
(980, 980, 'bn_BD', 'দ্রুত দেখুন'),
(981, 981, 'bn_BD', 'বিস্তারিত দেখুন'),
(982, 982, 'bn_BD', 'বিভাগ'),
(983, 983, 'bn_BD', 'ফিল্টার'),
(984, 984, 'bn_BD', 'বনাম থেকে'),
(985, 985, 'bn_BD', 'গ্রিড দেখুন'),
(986, 986, 'bn_BD', 'তালিকা দেখুন'),
(987, 987, 'bn_BD', 'লোড হচ্ছে ...'),
(988, 988, 'bn_BD', 'কোন পণ্য পাওয়া যায়নি।'),
(989, 989, 'bn_BD', 'পণ্য পাওয়া গেছে'),
(990, 989, 'en', 'product found'),
(991, 990, 'bn_BD', 'জন্য অনুসন্ধান ফলাফল'),
(992, 991, 'bn_BD', 'দোকান'),
(993, 992, 'bn_BD', 'সর্বশেষ'),
(994, 993, 'bn_BD', 'সর্বনিম্নমূলো থেকে সৰ্বোচ্চ  মূল্য'),
(995, 994, 'bn_BD', 'প্রাসঙ্গিকতা'),
(996, 995, 'bn_BD', 'শীর্ষ রেট'),
(997, 996, 'bn_BD', 'থেকে'),
(998, 997, 'bn_BD', 'স্টোরফ্রন্ট'),
(999, 998, 'bn_BD', 'ব্যানার'),
(1000, 999, 'bn_BD', 'ব্যানার ১'),
(1001, 1000, 'bn_BD', 'ব্যানার 2'),
(1002, 1001, 'bn_BD', 'ব্যানার 3'),
(1003, 1002, 'bn_BD', 'ব্র্যান্ডস'),
(1004, 1003, 'bn_BD', 'কলাম 1'),
(1005, 1004, 'bn_BD', 'কলাম 2'),
(1006, 1005, 'bn_BD', 'কলাম 3'),
(1007, 1006, 'bn_BD', 'ব্যানার বিভাগ 1 সক্রিয় করুন'),
(1008, 1007, 'bn_BD', 'ব্যানার বিভাগ 2 সক্রিয় করুন'),
(1009, 1008, 'bn_BD', 'ব্যানার বিভাগ 3 সক্রিয় করুন'),
(1010, 1009, 'bn_BD', 'বৈশিষ্ট্য বিভাগ সক্রিয় করুন'),
(1011, 1010, 'bn_BD', 'আড়াআড়ি পণ্য বিভাগ সক্রিয় করুন'),
(1012, 1011, 'bn_BD', 'পণ্য ক্যারোজেল বিভাগ সক্রিয় করুন'),
(1013, 1012, 'bn_BD', 'পণ্য ট্যাব বিভাগ সক্রিয় করুন'),
(1014, 1013, 'bn_BD', 'সাম্প্রতিক পণ্য বিভাগ সক্রিয় করুন'),
(1015, 1014, 'bn_BD', 'সম্প্রতি দেখা অংশ সক্রিয় করুন'),
(1016, 1015, 'bn_BD', 'তিন কলাম উল্লম্ব পণ্য ক্যারোজেল বিভাগ সক্রিয় করুন'),
(1017, 1016, 'bn_BD', 'দুটি কলাম পণ্য ক্যারোজেল বিভাগ সক্রিয় করুন'),
(1018, 1017, 'bn_BD', 'ফেভিকন'),
(1019, 1018, 'bn_BD', 'বৈশিষ্ট্য 1'),
(1020, 1019, 'bn_BD', 'বৈশিষ্ট্য 2'),
(1021, 1020, 'bn_BD', 'বৈশিষ্ট্য 4'),
(1022, 1021, 'bn_BD', 'বৈশিষ্ট্য 4'),
(1023, 1022, 'bn_BD', 'নিম্ন লোগো'),
(1024, 1023, 'bn_BD', 'হেডার লোগো'),
(1025, 1024, 'bn_BD', 'অনুগ্রহ করে নির্বাচন করুন'),
(1026, 1025, 'bn_BD', 'ট্যাব 1'),
(1027, 1026, 'bn_BD', 'ট্যাব 2'),
(1028, 1027, 'bn_BD', 'ট্যাব 3'),
(1029, 1028, 'bn_BD', 'ট্যাব 4'),
(1030, 1029, 'bn_BD', 'স্টোরফ্রন্ট'),
(1031, 1030, 'bn_BD', 'ব্যানার সেকশন 1'),
(1032, 1031, 'bn_BD', 'ব্যানার সেকশন 2'),
(1033, 1032, 'bn_BD', 'ব্যানার বিভাগ 3'),
(1034, 1033, 'bn_BD', 'ব্র্যান্ডস'),
(1035, 1034, 'bn_BD', 'বৈশিষ্ট্য'),
(1036, 1035, 'bn_BD', 'সাধারণ'),
(1037, 1036, 'bn_BD', 'সাধারণ সেটিংস'),
(1038, 1037, 'bn_BD', 'হোম পেজ বিভাগ'),
(1039, 1038, 'bn_BD', 'ল্যান্ডস্কেপ পণ্য'),
(1040, 1039, 'bn_BD', 'লোগো'),
(1041, 1040, 'bn_BD', 'মেনু'),
(1042, 1041, 'bn_BD', 'পণ্য ক্যারোজেল'),
(1043, 1042, 'bn_BD', 'পণ্য ট্যাব'),
(1044, 1043, 'bn_BD', 'সাম্প্রতিক পণ্য'),
(1045, 1044, 'bn_BD', 'সম্প্রতি দেখা'),
(1046, 1045, 'bn_BD', 'স্লাইডার ব্যানার'),
(1047, 1046, 'bn_BD', 'সামাজিক লিংক'),
(1048, 1047, 'bn_BD', 'তিন কলাম উল্লম্ব পণ্য ক্যারোজেল'),
(1049, 1048, 'bn_BD', 'দুই কলাম পণ্য ক্যারোজেল'),
(1050, 1049, 'bn_BD', 'কালো'),
(1051, 1050, 'bn_BD', 'নীল'),
(1052, 1051, 'bn_BD', 'মার্স সবুজ'),
(1053, 1052, 'bn_BD', 'গাঢ় নীল'),
(1054, 1053, 'bn_BD', 'গোলাপী'),
(1055, 1054, 'bn_BD', 'লাল'),
(1056, 1055, 'bn_BD', 'আকাশী নীল'),
(1057, 1056, 'bn_BD', 'বেগুনী'),
(1058, 1057, 'bn_BD', 'উপর ভিত্তি করে'),
(1059, 1058, 'bn_BD', 'শহর'),
(1060, 1059, 'bn_BD', 'দেশ'),
(1061, 1060, 'bn_BD', 'কর শ্রেনী'),
(1062, 1061, 'bn_BD', 'ট্যাক্স নাম'),
(1063, 1062, 'bn_BD', 'হার%'),
(1064, 1063, 'bn_BD', 'ট্যাক্স নাম'),
(1065, 1064, 'bn_BD', 'হার'),
(1066, 1065, 'bn_BD', 'রাষ্ট্র'),
(1067, 1066, 'bn_BD', 'জিপ'),
(1068, 1067, 'bn_BD', 'কর তৈরি করুন'),
(1069, 1068, 'bn_BD', 'ট্যাক্স মুছুন'),
(1070, 1069, 'bn_BD', 'ট্যাক্স সম্পাদনা করুন'),
(1071, 1070, 'bn_BD', 'সব ট্যাক্স'),
(1072, 1071, 'bn_BD', 'নতুন হার যোগ করুন'),
(1073, 1072, 'bn_BD', 'বিলিং ঠিকানা'),
(1074, 1073, 'bn_BD', 'প্রেরণের ঠিকানা'),
(1075, 1074, 'bn_BD', 'দোকান ঠিকানা'),
(1076, 1075, 'bn_BD', 'হার মুছে ফেলুন'),
(1077, 1076, 'bn_BD', 'অনুগ্রহ করে নির্বাচন করুন'),
(1078, 1077, 'bn_BD', 'কর শ্রেনী'),
(1079, 1078, 'bn_BD', 'সাধারণ'),
(1080, 1079, 'bn_BD', 'ট্যাক্স তথ্য'),
(1081, 1080, 'bn_BD', 'হার'),
(1082, 1081, 'bn_BD', 'কর'),
(1083, 1082, 'bn_BD', 'করের'),
(1084, 1083, 'bn_BD', 'সূচক লেনদেন'),
(1085, 1084, 'bn_BD', 'অর্ডার আইডি'),
(1086, 1085, 'bn_BD', 'মূল্যপরিশোধ পদ্ধতি'),
(1087, 1086, 'bn_BD', 'লেনদেন নাম্বার'),
(1088, 1087, 'bn_BD', 'লেনদেন'),
(1089, 1088, 'bn_BD', 'অনুবাদ সম্পাদনা করুন'),
(1090, 1089, 'bn_BD', 'কী'),
(1091, 1090, 'bn_BD', 'অনুবাদ'),
(1092, 1091, 'bn_BD', 'সূচী অনুবাদ'),
(1093, 1092, 'bn_BD', 'অনুবাদ'),
(1094, 1093, 'bn_BD', 'অনুবাদ'),
(1095, 1094, 'bn_BD', 'আমাকে মনে রেখ'),
(1096, 1095, 'bn_BD', 'নাম'),
(1097, 1096, 'bn_BD', 'অবস্থা'),
(1098, 1097, 'bn_BD', 'ইমেইল'),
(1099, 1098, 'bn_BD', 'নামের প্রথম অংশ'),
(1100, 1099, 'bn_BD', 'নামের শেষাংশ'),
(1101, 1100, 'bn_BD', 'নতুন পাসওয়ার্ড'),
(1102, 1101, 'bn_BD', 'নতুন পাসওয়ার্ড নিশ্চিত করুন'),
(1103, 1102, 'bn_BD', 'পাসওয়ার্ড'),
(1104, 1103, 'bn_BD', 'পাসওয়ার্ড নিশ্চিত করুন'),
(1105, 1104, 'bn_BD', 'ভূমিকা'),
(1106, 1105, 'bn_BD', 'ইমেইল'),
(1107, 1106, 'bn_BD', 'আপনার পাসওয়ার্ডটি রিসেট করার অনুমতি দেয় এমন একটি লিঙ্ক পেতে আপনার অ্যাকাউন্ট ইমেল লিখুন।'),
(1108, 1107, 'bn_BD', 'নামের প্রথম অংশ'),
(1109, 1108, 'bn_BD', 'পাসওয়ার্ড ভুলে গেছেন?'),
(1110, 1109, 'bn_BD', 'আমি একমত'),
(1111, 1110, 'bn_BD', 'আমার পাসওয়ার্ড মনে আছে'),
(1112, 1111, 'bn_BD', 'নামের শেষাংশ'),
(1113, 1112, 'bn_BD', 'ফেসবুক দিয়ে লগ ইন করুন'),
(1114, 1113, 'bn_BD', 'গুগলের সাথে লগ ইন করুন'),
(1115, 1114, 'bn_BD', 'লগইন'),
(1116, 1115, 'bn_BD', 'প্রস্থান'),
(1117, 1116, 'bn_BD', 'অথবা'),
(1118, 1117, 'bn_BD', 'পাসওয়ার্ড'),
(1119, 1118, 'bn_BD', 'পাসওয়ার্ড নিশ্চিত করুন'),
(1120, 1119, 'bn_BD', 'গোপনীয়তা নীতি'),
(1121, 1120, 'bn_BD', 'নিবন্ধন'),
(1122, 1121, 'bn_BD', 'আমাকে মনে কর'),
(1123, 1122, 'bn_BD', 'পাসওয়ার্ড রিসেট করুন'),
(1124, 1123, 'bn_BD', 'সর্বস্বত্ব সংরক্ষিত.'),
(1125, 1124, 'bn_BD', 'হ্যালো: first_name!'),
(1126, 1125, 'bn_BD', 'যদি আপনার \"পাসওয়ার্ড পুনরায় সেট করুন\" বোতামটি ক্লিক করতে সমস্যা হয়, তবে নীচের URL টি অনুলিপি করুন এবং আপনার ওয়েব ব্রাউজারে আটকান:'),
(1127, 1126, 'bn_BD', 'আপনি যদি পাসওয়ার্ড পুনরায় সেট করার অনুরোধ না করে থাকেন তবে কোনও পদক্ষেপের প্রয়োজন নেই।'),
(1128, 1127, 'bn_BD', 'আপনি এই ইমেলটি গ্রহণ করছেন কারণ আমরা আপনার অ্যাকাউন্টের জন্য একটি পাসওয়ার্ড পুনরায় সেট করার অনুরোধ পেয়েছি।'),
(1129, 1128, 'bn_BD', 'পাসওয়ার্ড রিসেট করুন'),
(1130, 1129, 'bn_BD', 'আপনার অ্যাকাউন্ট পাসওয়ার্ড রিসেট করুন'),
(1131, 1130, 'bn_BD', 'আপনার অ্যাকাউন্ট পাসওয়ার্ড রিসেট করুন।'),
(1132, 1131, 'bn_BD', 'আপনার অ্যাকাউন্ট তৈরি করা হয়েছে।'),
(1133, 1132, 'bn_BD', 'আপনার অ্যাকাউন্টের জন্য অবরুদ্ধ: বিলম্ব সেকেন্ড।'),
(1134, 1133, 'bn_BD', 'আপনার অ্যাকাউন্ট সক্রিয় করা হয় না। অনুগ্রহপূর্বক আপনার ইমেইল চেক করুন.'),
(1135, 1134, 'bn_BD', 'পাসওয়ার্ড রিসেট করার জন্য আপনার ইমেল ঠিকানা চেক করুন।'),
(1136, 1135, 'bn_BD', 'অবৈধ ইমেইল ঠিকানা বা পাসওয়ার্ড.'),
(1137, 1136, 'bn_BD', 'অবৈধ বা মেয়াদ শেষ রিসেট কোড।'),
(1138, 1137, 'bn_BD', 'এই ইমেইল আমাদের সিস্টেমের অন্তর্গত নয়'),
(1139, 1138, 'bn_BD', 'পাসওয়ার্ড রিসেট করা হয়েছে। আপনি এখন আপনার নতুন পাসওয়ার্ড দিয়ে লগইন করতে পারেন।'),
(1140, 1139, 'bn_BD', 'পাসওয়ার্ড ইমেইল রিসেট পাঠানো'),
(1141, 1140, 'bn_BD', 'ভূমিকা তৈরি করুন'),
(1142, 1141, 'bn_BD', 'ভূমিকা মুছে ফেলুন'),
(1143, 1142, 'bn_BD', 'ভূমিকা সম্পাদনা করুন'),
(1144, 1143, 'bn_BD', 'সূচক ভূমিকা'),
(1145, 1144, 'bn_BD', 'ব্যবহারকারী তৈরি করুন'),
(1146, 1145, 'bn_BD', 'ব্যবহারকারী মুছে দিন'),
(1147, 1146, 'bn_BD', 'ব্যবহারকারীদের সম্পাদনা করুন'),
(1148, 1147, 'bn_BD', 'সূচক ব্যবহারকারীদের'),
(1149, 1148, 'bn_BD', 'অনুমতি দিন'),
(1150, 1149, 'bn_BD', 'সকলের অনুমদিত'),
(1151, 1150, 'bn_BD', 'অস্বীকার করুন'),
(1152, 1151, 'bn_BD', 'সব অস্বীকার করুন'),
(1153, 1152, 'bn_BD', 'উত্তরাধিকারী'),
(1154, 1153, 'bn_BD', 'সমস্ত উত্তরাধিকারী'),
(1155, 1154, 'bn_BD', 'ভূমিকা'),
(1156, 1155, 'bn_BD', 'ব্যবহারকারী'),
(1157, 1156, 'bn_BD', 'ব্যবহারকারীরা'),
(1158, 1157, 'bn_BD', 'এই পণ্য আপনার লিস্টে যোগ করা হয়েছে.'),
(1159, 1158, 'bn_BD', 'ভূমিকা'),
(1160, 1159, 'bn_BD', 'নাম'),
(1161, 1160, 'bn_BD', 'সাধারণ'),
(1162, 1161, 'bn_BD', 'অনুমতিসমূহ'),
(1163, 1162, 'bn_BD', 'ভূমিকা তথ্য'),
(1164, 1163, 'bn_BD', 'ভূমিকা'),
(1165, 1164, 'bn_BD', 'ব্যবহারকারীরা'),
(1166, 1165, 'bn_BD', 'সক্রিয়'),
(1167, 1166, 'bn_BD', 'অথবা, পাসওয়ার্ড রিসেট করুন'),
(1168, 1167, 'bn_BD', 'প্রোফাইলের'),
(1169, 1168, 'bn_BD', 'পাসওয়ার্ড ইমেইল রিসেট পাঠান'),
(1170, 1169, 'bn_BD', 'ইমেইল'),
(1171, 1170, 'bn_BD', 'First Name'),
(1172, 1171, 'bn_BD', 'শেষ লগইন'),
(1173, 1172, 'bn_BD', 'নামের শেষাংশ'),
(1174, 1173, 'bn_BD', 'হিসাব'),
(1175, 1174, 'bn_BD', 'জীবন তথ্য'),
(1176, 1175, 'bn_BD', 'ব্যবহারকারীর তথ্য'),
(1177, 1176, 'bn_BD', 'নতুন পাসওয়ার্ড'),
(1178, 1177, 'bn_BD', 'অনুমতিসমূহ');

-- --------------------------------------------------------

--
-- Table structure for table `up_sell_products`
--

CREATE TABLE `up_sell_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `up_sell_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `permissions`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'Ashik', 'Khan', 'advertbangladesh@gmail.com', '$2y$10$ik3oaFcOW8lL4J2G0firKeNfMVIyqG9DY0zyLrEx4lzENe0cbDK9K', NULL, '2019-03-31 10:46:27', '2019-03-20 07:03:26', '2019-03-31 14:46:27'),
(2, 'Ashik', 'Khan', 'mailtoashikkhan@gmail.com', '$2y$10$bLWcUpr4slu8KqRw1wHq.OkeTt0lH7Jty2xZIETECefBaXwhH1Shq', '{\"admin.attributes.index\":true,\"admin.attributes.create\":true,\"admin.attributes.edit\":true,\"admin.attributes.destroy\":true,\"admin.attribute_sets.index\":true,\"admin.attribute_sets.create\":true,\"admin.attribute_sets.edit\":true,\"admin.attribute_sets.destroy\":true,\"admin.categories.index\":true,\"admin.categories.create\":true,\"admin.categories.edit\":true,\"admin.categories.destroy\":true,\"admin.coupons.index\":true,\"admin.coupons.create\":true,\"admin.coupons.edit\":true,\"admin.coupons.destroy\":true,\"admin.currency_rates.index\":true,\"admin.currency_rates.edit\":true,\"admin.media.index\":true,\"admin.media.create\":true,\"admin.media.edit\":true,\"admin.media.destroy\":true,\"admin.menus.index\":true,\"admin.menus.create\":true,\"admin.menus.edit\":true,\"admin.menus.destroy\":true,\"admin.menu_items.index\":true,\"admin.menu_items.create\":true,\"admin.menu_items.edit\":true,\"admin.menu_items.destroy\":true,\"admin.options.index\":true,\"admin.options.create\":true,\"admin.options.edit\":true,\"admin.options.destroy\":true,\"admin.orders.index\":true,\"admin.orders.show\":true,\"admin.orders.edit\":true,\"admin.pages.index\":true,\"admin.pages.create\":true,\"admin.pages.edit\":true,\"admin.pages.destroy\":true,\"admin.products.index\":true,\"admin.products.create\":true,\"admin.products.edit\":true,\"admin.products.destroy\":true,\"admin.reports.index\":true,\"admin.reviews.index\":true,\"admin.reviews.edit\":true,\"admin.reviews.destroy\":true,\"admin.settings.edit\":true,\"admin.sliders.index\":true,\"admin.sliders.create\":true,\"admin.sliders.edit\":true,\"admin.sliders.destroy\":true,\"admin.taxes.index\":true,\"admin.taxes.create\":true,\"admin.taxes.edit\":true,\"admin.taxes.destroy\":true,\"admin.transactions.index\":true,\"admin.translations.index\":true,\"admin.translations.edit\":true,\"admin.users.index\":true,\"admin.users.create\":true,\"admin.users.edit\":true,\"admin.users.destroy\":true,\"admin.roles.index\":true,\"admin.roles.create\":true,\"admin.roles.edit\":true,\"admin.roles.destroy\":true,\"admin.storefront.edit\":true}', NULL, '2019-03-27 15:34:47', '2019-03-27 15:34:47'),
(3, 'Reduan', 'Zaman', 'buyandsell.crm3@gmail.com', '$2y$10$o/oJCqz8ob.9t0DrYU.fT.J2jAm5PVbcIOyB0VrX6LtOXEtOnW6Ky', '[]', '2019-03-27 11:43:05', '2019-03-27 15:42:04', '2019-03-27 15:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-03-20 07:03:26', '2019-03-20 07:03:26'),
(2, 1, '2019-03-27 15:34:47', '2019-03-27 15:34:47'),
(3, 3, '2019-03-27 15:42:04', '2019-03-27 15:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `wish_lists`
--

CREATE TABLE `wish_lists` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attributes_attribute_set_id_index` (`attribute_set_id`);

--
-- Indexes for table `attribute_categories`
--
ALTER TABLE `attribute_categories`
  ADD PRIMARY KEY (`attribute_id`,`category_id`),
  ADD KEY `attribute_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `attribute_sets`
--
ALTER TABLE `attribute_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_set_translations`
--
ALTER TABLE `attribute_set_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_set_translations_attribute_set_id_locale_unique` (`attribute_set_id`,`locale`);

--
-- Indexes for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_translations_attribute_id_locale_unique` (`attribute_id`,`locale`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_attribute_id_index` (`attribute_id`);

--
-- Indexes for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_value_translations_attribute_value_id_locale_unique` (`attribute_value_id`,`locale`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_locale_unique` (`category_id`,`locale`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupons_code_index` (`code`);

--
-- Indexes for table `coupon_categories`
--
ALTER TABLE `coupon_categories`
  ADD PRIMARY KEY (`coupon_id`,`category_id`,`exclude`),
  ADD KEY `coupon_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `coupon_products`
--
ALTER TABLE `coupon_products`
  ADD PRIMARY KEY (`coupon_id`,`product_id`),
  ADD KEY `coupon_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupon_translations_coupon_id_locale_unique` (`coupon_id`,`locale`);

--
-- Indexes for table `cross_sell_products`
--
ALTER TABLE `cross_sell_products`
  ADD PRIMARY KEY (`product_id`,`cross_sell_product_id`),
  ADD KEY `cross_sell_products_cross_sell_product_id_foreign` (`cross_sell_product_id`);

--
-- Indexes for table `currency_rates`
--
ALTER TABLE `currency_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currency_rates_currency_unique` (`currency`);

--
-- Indexes for table `entity_files`
--
ALTER TABLE `entity_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entity_files_entity_type_entity_id_index` (`entity_type`,`entity_id`),
  ADD KEY `entity_files_file_id_index` (`file_id`),
  ADD KEY `entity_files_zone_index` (`zone`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_user_id_index` (`user_id`),
  ADD KEY `files_filename_index` (`filename`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_parent_id_foreign` (`parent_id`),
  ADD KEY `menu_items_category_id_foreign` (`category_id`),
  ADD KEY `menu_items_page_id_foreign` (`page_id`),
  ADD KEY `menu_items_menu_id_index` (`menu_id`);

--
-- Indexes for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_item_translations_menu_item_id_locale_unique` (`menu_item_id`,`locale`);

--
-- Indexes for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_translations_menu_id_locale_unique` (`menu_id`,`locale`);

--
-- Indexes for table `meta_data`
--
ALTER TABLE `meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_data_entity_type_entity_id_index` (`entity_type`,`entity_id`);

--
-- Indexes for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meta_data_translations_meta_data_id_locale_unique` (`meta_data_id`,`locale`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `option_translations`
--
ALTER TABLE `option_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_translations_option_id_locale_unique` (`option_id`,`locale`);

--
-- Indexes for table `option_values`
--
ALTER TABLE `option_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `option_values_option_id_index` (`option_id`);

--
-- Indexes for table `option_value_translations`
--
ALTER TABLE `option_value_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_value_translations_option_value_id_locale_unique` (`option_value_id`,`locale`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_index` (`customer_id`),
  ADD KEY `orders_coupon_id_index` (`coupon_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `order_product_options`
--
ALTER TABLE `order_product_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_product_options_order_product_id_option_id_unique` (`order_product_id`,`option_id`),
  ADD KEY `order_product_options_option_id_foreign` (`option_id`);

--
-- Indexes for table `order_product_option_values`
--
ALTER TABLE `order_product_option_values`
  ADD PRIMARY KEY (`order_product_option_id`,`option_value_id`),
  ADD KEY `order_product_option_values_option_value_id_foreign` (`option_value_id`);

--
-- Indexes for table `order_taxes`
--
ALTER TABLE `order_taxes`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `order_taxes_tax_rate_id_foreign` (`tax_rate_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_translations_page_id_locale_unique` (`page_id`,`locale`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`),
  ADD KEY `persistences_user_id_foreign` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attributes_product_id_index` (`product_id`),
  ADD KEY `product_attributes_attribute_id_index` (`attribute_id`);

--
-- Indexes for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD PRIMARY KEY (`product_attribute_id`,`attribute_value_id`),
  ADD KEY `product_attribute_values_attribute_value_id_foreign` (`attribute_value_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `product_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_options`
--
ALTER TABLE `product_options`
  ADD PRIMARY KEY (`product_id`,`option_id`),
  ADD KEY `product_options_option_id_foreign` (`option_id`);

--
-- Indexes for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_translations_product_id_locale_unique` (`product_id`,`locale`);
ALTER TABLE `product_translations` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `related_products`
--
ALTER TABLE `related_products`
  ADD PRIMARY KEY (`product_id`,`related_product_id`),
  ADD KEY `related_products_related_product_id_foreign` (`related_product_id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_reviewer_id_index` (`reviewer_id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_translations`
--
ALTER TABLE `role_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_translations_role_id_locale_unique` (`role_id`,`locale`);

--
-- Indexes for table `search_terms`
--
ALTER TABLE `search_terms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `search_terms_term_unique` (`term`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_translations_setting_id_locale_unique` (`setting_id`,`locale`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_slides`
--
ALTER TABLE `slider_slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slider_slides_slider_id_foreign` (`slider_id`);

--
-- Indexes for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slider_slide_translations_slider_slide_id_locale_unique` (`slider_slide_id`,`locale`);

--
-- Indexes for table `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slider_translations_slider_id_locale_unique` (`slider_id`,`locale`);

--
-- Indexes for table `tax_classes`
--
ALTER TABLE `tax_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_class_translations`
--
ALTER TABLE `tax_class_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_class_translations_tax_class_id_locale_unique` (`tax_class_id`,`locale`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_rates_tax_class_id_index` (`tax_class_id`);

--
-- Indexes for table `tax_rate_translations`
--
ALTER TABLE `tax_rate_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_rate_translations_tax_rate_id_locale_unique` (`tax_rate_id`,`locale`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_foreign` (`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_order_id_unique` (`order_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_key_index` (`key`);

--
-- Indexes for table `translation_translations`
--
ALTER TABLE `translation_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translation_translations_translation_id_locale_unique` (`translation_id`,`locale`);

--
-- Indexes for table `up_sell_products`
--
ALTER TABLE `up_sell_products`
  ADD PRIMARY KEY (`product_id`,`up_sell_product_id`),
  ADD KEY `up_sell_products_up_sell_product_id_foreign` (`up_sell_product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD PRIMARY KEY (`user_id`,`product_id`),
  ADD KEY `wish_lists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attribute_sets`
--
ALTER TABLE `attribute_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attribute_set_translations`
--
ALTER TABLE `attribute_set_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency_rates`
--
ALTER TABLE `currency_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `entity_files`
--
ALTER TABLE `entity_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `menu_translations`
--
ALTER TABLE `menu_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `meta_data`
--
ALTER TABLE `meta_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `option_translations`
--
ALTER TABLE `option_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `option_values`
--
ALTER TABLE `option_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `option_value_translations`
--
ALTER TABLE `option_value_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_product_options`
--
ALTER TABLE `order_product_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_translations`
--
ALTER TABLE `role_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `search_terms`
--
ALTER TABLE `search_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider_slides`
--
ALTER TABLE `slider_slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `slider_translations`
--
ALTER TABLE `slider_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tax_classes`
--
ALTER TABLE `tax_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_class_translations`
--
ALTER TABLE `tax_class_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rate_translations`
--
ALTER TABLE `tax_rate_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1178;

--
-- AUTO_INCREMENT for table `translation_translations`
--
ALTER TABLE `translation_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1179;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activations`
--
ALTER TABLE `activations`
  ADD CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_attribute_set_id_foreign` FOREIGN KEY (`attribute_set_id`) REFERENCES `attribute_sets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_categories`
--
ALTER TABLE `attribute_categories`
  ADD CONSTRAINT `attribute_categories_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_set_translations`
--
ALTER TABLE `attribute_set_translations`
  ADD CONSTRAINT `attribute_set_translations_attribute_set_id_foreign` FOREIGN KEY (`attribute_set_id`) REFERENCES `attribute_sets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD CONSTRAINT `attribute_translations_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_value_translations`
--
ALTER TABLE `attribute_value_translations`
  ADD CONSTRAINT `attribute_value_translations_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_categories`
--
ALTER TABLE `coupon_categories`
  ADD CONSTRAINT `coupon_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_categories_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_products`
--
ALTER TABLE `coupon_products`
  ADD CONSTRAINT `coupon_products_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_translations`
--
ALTER TABLE `coupon_translations`
  ADD CONSTRAINT `coupon_translations_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cross_sell_products`
--
ALTER TABLE `cross_sell_products`
  ADD CONSTRAINT `cross_sell_products_cross_sell_product_id_foreign` FOREIGN KEY (`cross_sell_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cross_sell_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entity_files`
--
ALTER TABLE `entity_files`
  ADD CONSTRAINT `entity_files_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_item_translations`
--
ALTER TABLE `menu_item_translations`
  ADD CONSTRAINT `menu_item_translations_menu_item_id_foreign` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_translations`
--
ALTER TABLE `menu_translations`
  ADD CONSTRAINT `menu_translations_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meta_data_translations`
--
ALTER TABLE `meta_data_translations`
  ADD CONSTRAINT `meta_data_translations_meta_data_id_foreign` FOREIGN KEY (`meta_data_id`) REFERENCES `meta_data` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_translations`
--
ALTER TABLE `option_translations`
  ADD CONSTRAINT `option_translations_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_values`
--
ALTER TABLE `option_values`
  ADD CONSTRAINT `option_values_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `option_value_translations`
--
ALTER TABLE `option_value_translations`
  ADD CONSTRAINT `option_value_translations_option_value_id_foreign` FOREIGN KEY (`option_value_id`) REFERENCES `option_values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product_options`
--
ALTER TABLE `order_product_options`
  ADD CONSTRAINT `order_product_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_options_order_product_id_foreign` FOREIGN KEY (`order_product_id`) REFERENCES `order_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product_option_values`
--
ALTER TABLE `order_product_option_values`
  ADD CONSTRAINT `order_product_option_values_option_value_id_foreign` FOREIGN KEY (`option_value_id`) REFERENCES `option_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_option_values_order_product_option_id_foreign` FOREIGN KEY (`order_product_option_id`) REFERENCES `order_product_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_taxes`
--
ALTER TABLE `order_taxes`
  ADD CONSTRAINT `order_taxes_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_taxes_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_translations`
--
ALTER TABLE `page_translations`
  ADD CONSTRAINT `page_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `persistences`
--
ALTER TABLE `persistences`
  ADD CONSTRAINT `persistences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD CONSTRAINT `product_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD CONSTRAINT `product_attribute_values_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attribute_values_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_options`
--
ALTER TABLE `product_options`
  ADD CONSTRAINT `product_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_translations`
--
ALTER TABLE `product_translations`
  ADD CONSTRAINT `product_translations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `related_products`
--
ALTER TABLE `related_products`
  ADD CONSTRAINT `related_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `related_products_related_product_id_foreign` FOREIGN KEY (`related_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reminders`
--
ALTER TABLE `reminders`
  ADD CONSTRAINT `reminders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_translations`
--
ALTER TABLE `role_translations`
  ADD CONSTRAINT `role_translations_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD CONSTRAINT `setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_slides`
--
ALTER TABLE `slider_slides`
  ADD CONSTRAINT `slider_slides_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_slide_translations`
--
ALTER TABLE `slider_slide_translations`
  ADD CONSTRAINT `slider_slide_translations_slider_slide_id_foreign` FOREIGN KEY (`slider_slide_id`) REFERENCES `slider_slides` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slider_translations`
--
ALTER TABLE `slider_translations`
  ADD CONSTRAINT `slider_translations_slider_id_foreign` FOREIGN KEY (`slider_id`) REFERENCES `sliders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_class_translations`
--
ALTER TABLE `tax_class_translations`
  ADD CONSTRAINT `tax_class_translations_tax_class_id_foreign` FOREIGN KEY (`tax_class_id`) REFERENCES `tax_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD CONSTRAINT `tax_rates_tax_class_id_foreign` FOREIGN KEY (`tax_class_id`) REFERENCES `tax_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_rate_translations`
--
ALTER TABLE `tax_rate_translations`
  ADD CONSTRAINT `tax_rate_translations_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `throttle`
--
ALTER TABLE `throttle`
  ADD CONSTRAINT `throttle_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `translation_translations`
--
ALTER TABLE `translation_translations`
  ADD CONSTRAINT `translation_translations_translation_id_foreign` FOREIGN KEY (`translation_id`) REFERENCES `translations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_sell_products`
--
ALTER TABLE `up_sell_products`
  ADD CONSTRAINT `up_sell_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_sell_products_up_sell_product_id_foreign` FOREIGN KEY (`up_sell_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD CONSTRAINT `wish_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wish_lists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
