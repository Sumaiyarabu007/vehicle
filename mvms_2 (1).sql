-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 05, 2022 at 06:20 PM
-- Server version: 8.0.31-0ubuntu0.20.04.1
-- PHP Version: 7.3.33-8+ubuntu20.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvms_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `driverlists`
--

CREATE TABLE `driverlists` (
  `id` bigint UNSIGNED NOT NULL,
  `snk_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_expire_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `able_to_drive` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience_duration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driverlists`
--

INSERT INTO `driverlists` (`id`, `snk_no`, `rank`, `name`, `date_of_birth`, `mobile_number`, `license_expire_date`, `able_to_drive`, `experience_duration`, `comment`, `created_at`, `updated_at`) VALUES
(1, '10749', 'Lcpl', 'Tahia', '2022-11-01', '01764496580', '2022-11-16', 'Only Pickup', '7', 'good', '2022-11-05 10:46:58', '2022-11-05 10:46:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fueling_records`
--

CREATE TABLE `fueling_records` (
  `id` bigint UNSIGNED NOT NULL,
  `vehicle_id` int NOT NULL,
  `fuel_amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fueling_records`
--

INSERT INTO `fueling_records` (`id`, `vehicle_id`, `fuel_amount`, `date`, `created_at`, `updated_at`) VALUES
(1, 8, '100', '2022-12-05', '2022-12-05 16:58:59', '2022-12-05 16:58:59');

-- --------------------------------------------------------

--
-- Table structure for table `infolists`
--

CREATE TABLE `infolists` (
  `id` bigint UNSIGNED NOT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `authority` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destination` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `km_reading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `when_in` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `when_out` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_fuel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `infolists`
--

INSERT INTO `infolists` (`id`, `date`, `authority`, `destination`, `km_reading`, `when_in`, `when_out`, `present_fuel`, `comment`, `created_at`, `updated_at`) VALUES
(1, '2022-11-21', 'Admin', 'GEC', '50', '22:07', '23:07', '54', 'Bad', '2022-11-02 05:07:33', '2022-11-12 23:34:35'),
(2, '2023-02-16', 'Ammenity', 'Barishal', '88', '15:22', '18:22', '78', 'bad', '2022-11-03 00:22:14', '2022-11-12 02:09:53'),
(3, '2022-11-17', 'Training', 'Barishal', '88', '15:08', '17:09', '78', 'good', '2022-11-06 00:09:19', '2022-11-06 00:09:19'),
(4, '2022-11-16', 'Training', 'Barishal', '50', '17:30', '20:30', '78', 'good', '2022-11-11 02:30:47', '2022-11-11 02:30:47'),
(5, '2022-11-18', 'Authority', 'test destination', '80', '15:29', '22:29', '50', 'good', '2022-11-18 03:30:04', '2022-11-18 03:30:22');

-- --------------------------------------------------------

--
-- Table structure for table `jeeplists`
--

CREATE TABLE `jeeplists` (
  `id` bigint UNSIGNED NOT NULL,
  `v_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `v_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorized_mileage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorized_fuel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `collection_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_maintenance_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_refuelling_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jeeplists`
--

INSERT INTO `jeeplists` (`id`, `v_id`, `v_name`, `license_number`, `authorized_mileage`, `authorized_fuel`, `collection_date`, `last_maintenance_date`, `last_refuelling_date`, `created_at`, `updated_at`) VALUES
(1, '7231', 'jeep5', '10749', '56', '90', '2022-11-29', '2022-11-25', '2022-11-22', '2022-11-02 04:09:19', '2022-11-02 04:09:19'),
(2, '7232', 'jeep1', '3123', '23', '32', '2022-11-21', '2022-11-30', '2022-12-22', '2022-11-05 09:44:51', '2022-11-05 09:44:51'),
(6, '4664', 'jeep2', '3642734', '09', '90', '2022-11-23', '2022-11-24', '2022-12-02', '2022-11-12 10:42:46', '2022-11-12 10:42:46');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(6, '2022_11_02_060242_create_sessions_table', 2),
(7, '2022_11_02_061632_requestlist', 3),
(8, '2022_11_02_075723_driverlist', 3),
(9, '2022_11_02_075833_infolist', 3),
(10, '2022_11_02_075855_tonlist', 3),
(11, '2022_11_02_075914_jeeplist', 3),
(12, '2022_11_02_110154_tonlist', 4),
(13, '2022_11_05_170809_pickuplist', 5),
(14, '2022_11_12_190805_create_sessions_table', 6),
(15, '2022_11_18_134441_add_status_column_in_requestlists_table', 7),
(16, '2022_12_03_034022_create_vehicles_table', 8),
(17, '2022_12_03_055445_create_shedule_requests_table', 9),
(19, '2022_12_03_081421_create_vdra_records_table', 10),
(20, '2022_12_03_163249_add_column_to_vhecles_table', 11),
(21, '2022_12_05_213608_add_column_to_vehicles_table', 12),
(22, '2022_12_05_215244_add_column_to_vehicles_table', 13),
(23, '2022_12_05_223726_create_fueling_records_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pickuplists`
--

CREATE TABLE `pickuplists` (
  `id` bigint UNSIGNED NOT NULL,
  `v_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `v_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorized_mileage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorized_fuel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `collection_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_maintenance_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_refuelling_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pickuplists`
--

INSERT INTO `pickuplists` (`id`, `v_id`, `v_name`, `license_number`, `authorized_mileage`, `authorized_fuel`, `collection_date`, `last_maintenance_date`, `last_refuelling_date`, `created_at`, `updated_at`) VALUES
(1, '13467', 'pickup1', '87655', '87', '34', '2022-11-07', '2023-02-09', '2022-11-18', '2022-11-05 11:46:16', '2022-11-05 11:46:16');

-- --------------------------------------------------------

--
-- Table structure for table `requestlists`
--

CREATE TABLE `requestlists` (
  `id` bigint UNSIGNED NOT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `v_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `drivers_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `second_seater_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `authority` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `km_reading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `probable_end_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_fuel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_maintenance_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requestlists`
--

INSERT INTO `requestlists` (`id`, `date`, `vehicle_type`, `v_id`, `drivers_name`, `second_seater_name`, `authority`, `destination`, `km_reading`, `start_time`, `probable_end_time`, `present_fuel`, `last_maintenance_date`, `comment`, `created_at`, `updated_at`, `status`) VALUES
(1, '2022-11-02', '3ton', '45', 'Fahim', 'Mannan', 'Admin', 'Farm house', '88', '12:15', '14:15', '34', '2022-11-25', 'Assalamu Alaikum Sir', '2022-11-03 11:16:27', '2022-11-03 11:16:27', 'pending'),
(2, '2022-08-02', 'pickup', '2345', 'Daud', 'mehedi', 'Training', 'Barishal', '56', '15:17', '16:17', '56', '2022-11-29', 'Very good', '2022-11-03 11:18:07', '2022-11-18 10:30:04', 'approved'),
(3, '2022-11-09', '3ton', '2114', 'ewfas', 'sdvsfv', 'Training', 'GEC', '324', '13:24', '15:24', '34', '2022-11-29', 'good', '2022-11-05 09:24:24', '2022-11-18 10:29:55', 'declined'),
(4, '2022-11-16', 'jeep', '7231', 'mamun', 'mehedi', 'Admin', 'Barishal', '50', '20:32', '22:32', '34', '2022-11-27', 'good', '2022-11-11 04:33:08', '2022-11-18 10:29:45', 'approved'),
(5, '2022-11-13', 'jeep', '7232', 'Shorif', 'shofiq', 'Admin', 'Dhaka', '88', '22:17', '12:15', '56', '2022-11-29', 'good', '2022-11-12 10:15:40', '2022-11-18 10:28:20', 'approved'),
(10, '2022-11-02', '3ton', '45', 'Fahim', 'Mannan', 'Authority', 'Farm house', '88', '12:15', '14:15', '56', '2022-11-25', 'Approved', '2022-11-12 23:36:20', '2022-11-18 08:44:32', 'approved'),
(11, '2022-11-25', 'jeep', '7232', 'Shorif', 'shofiq', 'Admin', 'Dhaka', '44', '22:17', '12:15', '56', '2022-11-29', 'good', '2022-11-26 16:37:35', '2022-11-26 16:37:35', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('VSa0bKxl4Y2r6ovOQtizDwL7yhtgB9GmaRtv1ojh', 2, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoianBHelJnUkt6cTBYTUFGTEptNWtyYlZGT0Z6Tzg4emJZNTFKVXlkMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9qZWVwbGlzdCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1670264301);

-- --------------------------------------------------------

--
-- Table structure for table `shedule_requests`
--

CREATE TABLE `shedule_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `vehicle_id` int NOT NULL,
  `driver_id` int NOT NULL,
  `second_seater_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authority` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `km_reading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` time NOT NULL,
  `probable_end_time` time NOT NULL,
  `present_mileage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_fuel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shedule_requests`
--

INSERT INTO `shedule_requests` (`id`, `date`, `vehicle_id`, `driver_id`, `second_seater_name`, `authority`, `destination`, `km_reading`, `start_time`, `probable_end_time`, `present_mileage`, `present_fuel`, `status`, `comment`, `created_at`, `updated_at`) VALUES
(1, '2022-12-03', 1, 1, 'test sector', 'Training', 'test destination', '1000', '18:29:00', '23:29:00', '1000', '50', 'approved', 'test', '2022-12-03 06:37:25', '2022-12-03 06:37:25'),
(2, '2022-12-03', 1, 1, 'test sector', 'Training', 'test destination', '1050', '21:02:00', '14:02:00', '1050', '40', 'approved', 'asdf', '2022-12-03 09:02:11', '2022-12-03 09:02:11'),
(3, '2022-12-04', 7, 1, 'test sector', 'Training', 'test destination', '1000', '00:36:00', '05:37:00', '1000', '100', 'approved', 'asdf', '2022-12-03 12:37:15', '2022-12-03 12:37:15'),
(4, '2022-12-04', 7, 1, 'test sector', 'Training', 'test destination', '1050', '00:50:00', '04:50:00', '1050', '90', 'approved', NULL, '2022-12-03 18:50:15', '2022-12-03 18:50:15'),
(5, '2022-12-05', 7, 1, 'test sector', 'Training', 'test destination', '1150', '01:00:00', '06:00:00', '1150', '70', 'approved', 'asdf', '2022-12-03 19:00:09', '2022-12-03 19:00:09'),
(6, '2022-12-04', 2, 1, 'test sector', 'Training', 'test destination', '5000', '01:58:00', '01:58:00', '5000', '50', 'approved', NULL, '2022-12-03 19:58:26', '2022-12-03 19:58:42'),
(7, '2022-12-04', 8, 1, 'asdf', 'Training', 'test destination', '1000', '23:58:00', '15:58:00', '1000', '100', 'approved', 'sdaf', '2022-12-05 17:58:25', '2022-12-05 17:58:50'),
(8, '2022-12-06', 8, 1, 'sdf', 'Training', 'sdf', '1000', '00:00:00', '06:00:00', '1000', '100', 'approved', 'asdf', '2022-12-05 18:00:47', '2022-12-05 18:03:12'),
(9, '2022-12-06', 8, 1, 'sdf', 'Training', 'sdfa', '1100', '00:15:00', '00:15:00', '1100', '90', 'approved', 'asdf', '2022-12-05 18:15:37', '2022-12-05 18:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `tonlists`
--

CREATE TABLE `tonlists` (
  `id` bigint UNSIGNED NOT NULL,
  `v_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `v_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorized_mileage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorized_fuel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `collection_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_maintenance_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_refuelling_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tonlists`
--

INSERT INTO `tonlists` (`id`, `v_id`, `v_name`, `license_number`, `authorized_mileage`, `authorized_fuel`, `collection_date`, `last_maintenance_date`, `last_refuelling_date`, `created_at`, `updated_at`) VALUES
(1, '45', 'ton3', '3642734', '12', '23', '2022-11-03', '2022-11-05', NULL, '2022-11-02 05:05:44', '2022-11-02 05:05:44'),
(2, '45', 'ton1', '87655', '09', '23', '2022-11-20', '2022-11-23', NULL, '2022-11-02 05:06:26', '2022-11-02 05:06:26'),
(3, '1224', 'ton5', '3642734', '12', '23', '2022-11-06', '2022-11-17', '2022-11-29', '2022-11-05 11:27:58', '2022-11-05 11:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` int DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', 1, NULL, '$2y$10$qbs.0A/KNCBvNfWYIwtH5uDh4O5HnhTxUQ7gJapBxbpLwgUFeej3W', NULL, NULL, NULL, NULL, '2022-11-02 03:11:51', '2022-11-02 03:11:51'),
(2, 'MT Nco', 'mtnco@gmail.com', 0, NULL, '$2y$10$qbs.0A/KNCBvNfWYIwtH5uDh4O5HnhTxUQ7gJapBxbpLwgUFeej3W', NULL, NULL, NULL, 'rTisr5xMjJlpMbIMOwIVl3dy6dEcBbGRBLu4YsjtBGDS1UeDxNwiwiidMFDj', '2022-11-02 03:15:34', '2022-11-02 03:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `vdra_records`
--

CREATE TABLE `vdra_records` (
  `id` bigint UNSIGNED NOT NULL,
  `vehicle_id_vdra` int NOT NULL,
  `shedule_id_vdra` int NOT NULL,
  `meter_image_vdra` text COLLATE utf8mb4_unicode_ci,
  `date_vdra` date NOT NULL,
  `when_check_in_vdra` time NOT NULL,
  `when_check_out_vdra` time NOT NULL,
  `km_reading_vdra` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_fuel_vdra` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shedule_km_ride_vdra` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shedule_fuel_spend_vdra` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vdra_records`
--

INSERT INTO `vdra_records` (`id`, `vehicle_id_vdra`, `shedule_id_vdra`, `meter_image_vdra`, `date_vdra`, `when_check_in_vdra`, `when_check_out_vdra`, `km_reading_vdra`, `present_fuel_vdra`, `shedule_km_ride_vdra`, `shedule_fuel_spend_vdra`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, 1, NULL, '2022-12-03', '18:38:00', '20:38:00', '1050', '40', '50', '10', 'good', '2022-12-03 08:38:51', '2022-12-03 08:38:51'),
(4, 1, 2, NULL, '2022-12-03', '21:04:00', '13:04:00', '1100', '30', '50', '10', 'good', '2022-12-03 09:04:23', '2022-12-03 09:04:23'),
(5, 7, 3, NULL, '2022-12-04', '02:44:00', '05:44:00', '1050', '90', '50', '10', 'good', '2022-12-03 18:44:11', '2022-12-03 18:44:11'),
(6, 7, 4, NULL, '2022-12-04', '00:55:00', '03:55:00', '1150', '70', '100', '20', 'good', '2022-12-03 18:55:40', '2022-12-03 18:55:40'),
(7, 7, 5, NULL, '2022-12-05', '01:03:00', '04:03:00', '1350', '30', '200', '40', 'good', '2022-12-03 19:03:09', '2022-12-03 19:03:09'),
(8, 8, 8, NULL, '2022-12-06', '00:05:00', '03:05:00', '1100', '90', '100', '9', 'good', '2022-12-05 18:05:14', '2022-12-05 18:05:14'),
(9, 8, 9, NULL, '2022-12-06', '00:17:00', '04:17:00', '1200', '81', '100', '9', 'good', '2022-12-05 18:17:30', '2022-12-05 18:17:30');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint UNSIGNED NOT NULL,
  `v_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `v_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `v_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorized_mileage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorized_fuel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collection_date` datetime DEFAULT NULL,
  `last_maintenance_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_refuelling_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `next_maintenance_date` date DEFAULT NULL,
  `maintenance_km_limit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refuling_limit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `milage_per_leter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `present_refueling_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `v_id`, `v_name`, `v_type`, `license_number`, `authorized_mileage`, `authorized_fuel`, `collection_date`, `last_maintenance_date`, `last_refuelling_date`, `status`, `created_at`, `updated_at`, `next_maintenance_date`, `maintenance_km_limit`, `refuling_limit`, `milage_per_leter`, `present_refueling_date`) VALUES
(1, '010101', 'test jeep', 'jeep', '01010101', '1100', '30', '2022-12-03 22:51:06', '2022-12-05', '2022-12-01', 'active', '2022-12-02 22:53:48', '2022-12-05 16:16:12', '2022-12-30', '1000', '10', '8', NULL),
(2, '020202', 'test2 jeep', 'jeep', '02020202', '5000', '50', '2022-12-03 00:00:00', '2022-12-04', '2022-12-01', 'active', '2022-12-02 22:55:53', '2022-12-05 16:17:38', '2022-12-31', '1000', '10', '4', NULL),
(3, '030303', 'test 3top', '3ton', '03030303', '1000', '40', '2022-12-03 00:00:00', '2022-12-03', '2022-12-03', 'active', '2022-12-02 22:58:06', '2022-12-05 17:46:22', '2022-12-31', NULL, NULL, '8', NULL),
(4, '040404', 'test2 3ton', '3ton', '04040404', '444', '22', '2022-12-03 00:00:00', '2022-12-01', '2022-12-01', 'active', '2022-12-02 22:58:50', '2022-12-05 17:46:30', '2022-12-31', NULL, NULL, '9', NULL),
(5, '050505', 'test pickup', 'pickup', '05050505', '555', '55', '2022-12-03 00:00:00', '2022-12-02', '2022-12-02', 'active', '2022-12-02 22:59:27', '2022-12-05 17:12:42', '2022-12-31', NULL, NULL, '4', NULL),
(6, '090909', 'test 3ton jeep', '3ton', '09090909', '1000', '70', '2022-12-04 00:00:00', '2022-12-01', '2022-12-01', 'active', '2022-12-03 12:23:05', '2022-12-03 12:23:05', '2022-12-31', '800', '10', '6', NULL),
(7, '121212', 'test8 jeep', 'jeep', '12121212', '1350', '30', '2022-12-04 00:00:00', '2022-12-01', '2022-12-01', 'active', '2022-12-03 12:36:20', '2022-12-03 19:03:09', '2022-12-31', '1000', '10', '3', NULL),
(8, '6666', 'final jeep', 'jeep', '66666', '1200', '81', '2022-12-05 00:00:00', '2022-12-01', '2022-12-05', 'active', '2022-12-05 16:58:59', '2022-12-05 18:17:30', '2022-12-31', '1000', '20', '11', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `driverlists`
--
ALTER TABLE `driverlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fueling_records`
--
ALTER TABLE `fueling_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infolists`
--
ALTER TABLE `infolists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jeeplists`
--
ALTER TABLE `jeeplists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `pickuplists`
--
ALTER TABLE `pickuplists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requestlists`
--
ALTER TABLE `requestlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shedule_requests`
--
ALTER TABLE `shedule_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tonlists`
--
ALTER TABLE `tonlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vdra_records`
--
ALTER TABLE `vdra_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `driverlists`
--
ALTER TABLE `driverlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fueling_records`
--
ALTER TABLE `fueling_records`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `infolists`
--
ALTER TABLE `infolists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jeeplists`
--
ALTER TABLE `jeeplists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pickuplists`
--
ALTER TABLE `pickuplists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `requestlists`
--
ALTER TABLE `requestlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `shedule_requests`
--
ALTER TABLE `shedule_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tonlists`
--
ALTER TABLE `tonlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vdra_records`
--
ALTER TABLE `vdra_records`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
