-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2025 at 04:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fourjs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ac_parts`
--

CREATE TABLE `ac_parts` (
  `id` int(11) NOT NULL,
  `part_name` varchar(255) NOT NULL,
  `part_code` varchar(100) DEFAULT NULL,
  `part_category` enum('compressor','condenser','evaporator','filter','capacitor','thermostat','fan_motor','refrigerant','electrical','other') NOT NULL,
  `compatible_brands` text DEFAULT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `labor_cost` decimal(10,2) DEFAULT 0.00,
  `warranty_months` int(11) DEFAULT 12,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ac_parts`
--

INSERT INTO `ac_parts` (`id`, `part_name`, `part_code`, `part_category`, `compatible_brands`, `unit_price`, `labor_cost`, `warranty_months`, `created_at`, `updated_at`, `category_id`) VALUES
(2, 'Coolant', 'COOL-001', 'refrigerant', '[\"All Brands\"]', 5500.00, 500.00, 12, '2025-08-13 12:04:24', '2025-09-03 13:37:12', 8),
(3, 'Evaporator Coil', 'EVAP-001', 'evaporator', '[\"All Brands\"]', 1200.00, 500.00, 12, '2025-08-13 12:04:24', '2025-09-03 13:37:12', 3),
(5, 'Capacitor 35uF', 'CAP-35UF', 'compressor', '[\"All Brands\"]', 250.00, 100.00, 6, '2025-08-13 12:04:24', '2025-09-03 13:37:12', 1),
(6, 'Digital Thermostat', 'THERM-DIG-001', 'thermostat', '[\"All Brands\"]', 800.00, 300.00, 12, '2025-08-13 12:04:24', '2025-09-03 13:37:12', 6),
(7, 'Fan Motor 1/4HP', 'FAN-025HP', 'fan_motor', '[\"All Brands\"]', 1800.00, 400.00, 18, '2025-08-13 12:04:24', '2025-09-03 13:37:12', 7),
(9, 'Control Board', 'PCB-001', 'electrical', '[\"Carrier\", \"Daikin\", \"Panasonic\"]', 2500.00, 600.00, 12, '2025-08-13 12:04:24', '2025-09-03 13:37:12', 9),
(10, 'Drain Pump', 'PUMP-001', 'other', '[\"All Brands\"]', 600.00, 300.00, 12, '2025-08-13 12:04:24', '2025-09-03 13:37:12', 10);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `name`, `email`, `phone`, `profile_picture`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator - Staff', 'student.joshmcdowelltrapal@gmail.com', '09958714112', 'uploads/profile_pictures/profile_683fca5baffdd.jpg', '$2y$10$XjUWLHUsYb5Woq9Erh/xgOK3Aa756Lu2eSqKDjEfOhNxGX5jx4zzy', '2025-06-02 12:30:32', '2025-08-15 11:39:47'),
(6, 'fourjs-admin', '4Js Telecommunications', '4jstelcom@gmail.com', '09958714112', 'uploads/profile_pictures/admin_6_68b6cbcbb867f.jpg', '$2y$10$iwdteayO/dOg4tYQ0pWI6OZPgRMTPyh93fxny457oa5omJXNdjq9u', '2025-08-10 04:30:56', '2025-09-02 10:49:47'),
(7, 'josh-admin', 'Josh McDowell Trapal', 'joshmcdowellramireztrapal@gmail.com', '09958714112', 'uploads/profile_pictures/admin_689df1d24e917.jpg', '$2y$10$TvS3VYq13.TqZTEVuh6QsuMTULyfinWg2UAvTkWKhQpelllcxRieG', '2025-08-14 14:25:22', '2025-08-15 11:39:10'),
(8, 'test-admin', 'Four J\'s Aircon Services', '4jsadministrator@gmail.com', '09958714112', 'uploads/profile_pictures/admin_68b9688ce983e.jpg', '$2y$10$VbQTz0TtuYAwyhJ1nIE9eOMJY2204s9M4uzx3/Zv6mhc4lUNs1Yea', '2025-09-04 10:23:09', '2025-09-04 10:23:09');

-- --------------------------------------------------------

--
-- Table structure for table `aircon_hp`
--

CREATE TABLE `aircon_hp` (
  `id` int(11) NOT NULL,
  `hp` decimal(4,1) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aircon_hp`
--

INSERT INTO `aircon_hp` (`id`, `hp`, `price`, `created_at`, `updated_at`) VALUES
(1, 2.0, 500000.00, '2025-09-17 13:32:17', '2025-09-17 13:39:49'),
(2, 1.0, 600.00, '2025-09-17 13:58:59', '2025-09-17 13:58:59');

-- --------------------------------------------------------

--
-- Table structure for table `aircon_installations`
--

CREATE TABLE `aircon_installations` (
  `id` int(11) NOT NULL,
  `job_order_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `has_filter` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aircon_models`
--

CREATE TABLE `aircon_models` (
  `id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `model_name` varchar(100) NOT NULL,
  `hp` decimal(3,1) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aircon_models`
--

INSERT INTO `aircon_models` (`id`, `brand`, `model_name`, `hp`, `price`, `created_at`) VALUES
(14, 'AUX', 'J Series - Wall Mounted - Inverter', 1.0, 34000.00, '2025-08-14 05:22:35'),
(15, 'AUX', 'J Series - Wall Mounted - Inverter', 2.0, 51799.00, '2025-08-14 05:22:59'),
(16, 'AUX', 'J Series - Wall Mounted - Inverter', 1.5, 38999.00, '2025-08-14 05:23:46'),
(17, 'AUX', 'F Series - Wall Mounted - Inverter', 1.0, 35499.00, '2025-08-14 05:24:35'),
(18, 'AUX', 'F Series - Wall Mounted - Inverter', 1.5, 39999.00, '2025-08-14 05:24:50'),
(19, 'AUX', 'F Series - Wall Mounted - Inverter', 2.0, 49999.00, '2025-08-14 05:25:07'),
(20, 'AUX', 'F Series - Wall Mounted - Inverter', 2.5, 59999.00, '2025-08-14 05:25:24'),
(21, 'AUX', 'J Series - Wall Mounted - Inverter', 3.0, 74999.00, '2025-08-14 05:26:07'),
(22, 'TCL', 'TAC-10CSD/KEI2 - Wall Mounted - Inverter', 1.0, 25998.00, '2025-08-14 05:29:10'),
(23, 'TCL', 'TAC-13CSD/KEI2 - Wall Mounted - Inverter', 1.5, 27998.00, '2025-08-14 05:29:41'),
(24, 'TCL', 'TAC-25CSD/KEI2 - Wall Mounted - Inverter', 2.5, 40998.00, '2025-08-14 05:30:21'),
(25, 'TCL', 'TAC-07CWI/UB2 - Window Type - Inverter', 0.7, 16998.00, '2025-08-14 05:32:09'),
(26, 'TCL', 'TAC-09CWI/UB2 - Window Type - Inverter', 1.0, 17998.00, '2025-08-14 05:32:46'),
(27, 'TCL', 'TAC-12CWI/UB2 - Window Type - Inverter', 1.5, 19998.00, '2025-08-14 05:33:20'),
(28, 'CHIQ', 'Morandi CSD-10DA - Wall Mounted - Inverter', 1.0, 18999.00, '2025-08-14 05:44:01'),
(29, 'CHIQ', 'Morandi CSD-15DA - Wall Mounted - Inverter', 1.5, 21500.00, '2025-08-14 05:44:42'),
(30, 'CHIQ', 'Morandi CSD-20DA - Wall Mounted - Inverter', 2.0, 27500.00, '2025-08-14 05:45:12'),
(31, 'CHIQ', 'Morandi CSD-25DA - Wall Mounted - Inverter', 2.5, 33000.00, '2025-08-14 05:45:34');

-- --------------------------------------------------------

--
-- Table structure for table `cleaning_services`
--

CREATE TABLE `cleaning_services` (
  `id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `service_description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `service_type` enum('basic_cleaning','deep_cleaning','chemical_wash','coil_cleaning','filter_cleaning') NOT NULL DEFAULT 'basic_cleaning',
  `base_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `unit_type` enum('per_unit','per_hour','per_service') DEFAULT 'per_unit',
  `aircon_type` enum('window','split','cassette','floor_standing','all') DEFAULT 'all'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cleaning_services`
--

INSERT INTO `cleaning_services` (`id`, `service_name`, `service_description`, `created_at`, `updated_at`, `service_type`, `base_price`, `unit_type`, `aircon_type`) VALUES
(1, 'Basic Cleaning', 'Standard cleaning of filters and external parts', '2025-08-14 01:47:15', '2025-09-17 13:55:40', 'basic_cleaning', 500.00, 'per_unit', 'all');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `email`, `created_at`) VALUES
(27, 'Ann Marisse Cuya', '09958714112', 'Sitio Highway Roxas, 5212 Oriental Mindoro', NULL, '2025-08-07 01:46:16'),
(28, 'Angel Lamadrid', '09958714113', 'Sitio Manggahan, Dangay, Roxas, Oriental Mindoro', NULL, '2025-08-07 02:00:20'),
(29, 'Desiree Ortega', '09958714556', 'Mansalay, Oriental Mindoro', NULL, '2025-08-12 11:35:56'),
(30, 'Eciel Semeniano', '09958714116', 'San Mariano, Roxas, Oriental Mindoro', NULL, '2025-08-14 03:58:39'),
(31, 'AJ Nicole Salamente`', '0995872166', 'San Rafael, Roxas, Oriental Mindoro', NULL, '2025-08-16 04:05:26'),
(32, 'Sharah Jane Trapal', '09452592763', 'Ogbot, Bongabong, Oriental Mindoro', NULL, '2025-08-16 13:00:38'),
(33, 'Clarendon College Inc.', '09958714112', 'Odiong, Roxas, Oriental Mindoro', NULL, '2025-09-03 00:49:31'),
(34, 'Erick Mayo', '09958714112', 'San Mariano', NULL, '2025-09-04 02:08:12'),
(35, 'Khiss Nina Iyo', '09452592763', 'Paclasan Roxas Oriental Mindoro', NULL, '2025-09-04 04:44:46'),
(36, 'Jen Camo', '09452592763', 'San Aquilino', NULL, '2025-09-04 10:34:46'),
(37, 'Khate Ortiz', '09958714112', 'Sitio Highway Roxas, 5212 Oriental Mindoro', NULL, '2025-09-10 00:57:47'),
(38, 'Mary Grace', '09958714112', 'Ogbot', NULL, '2025-09-12 08:44:24'),
(39, 'Peddy Trapal', '09958714112', 'Sitio Highway Roxas, 5212 Oriental Mindoro', NULL, '2025-09-12 08:46:33'),
(44, 'Josh McDowell Trapal', '09958714112', 'Ogbot', '', '2025-09-17 17:49:30'),
(45, 'Renz', '09958714112', 'ogbot', 'student.joshmcdowelltrapal@gmail.com', '2025-09-18 01:55:10');

-- --------------------------------------------------------

--
-- Table structure for table `job_orders`
--

CREATE TABLE `job_orders` (
  `id` int(11) NOT NULL,
  `job_order_number` varchar(20) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `service_type` enum('installation','repair','survey','cleaning') NOT NULL,
  `aircon_model_id` int(11) DEFAULT NULL,
  `assigned_technician_id` int(11) DEFAULT NULL,
  `secondary_technician_id` int(11) DEFAULT NULL,
  `status` enum('pending','in_progress','completed','cancelled') DEFAULT 'pending',
  `price` decimal(10,2) DEFAULT NULL,
  `base_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_by` int(11) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `customer_id` int(11) DEFAULT NULL,
  `additional_fee` decimal(10,2) DEFAULT 0.00,
  `discount` decimal(10,2) DEFAULT 0.00,
  `part_id` int(11) DEFAULT NULL,
  `cleaning_service_id` int(11) DEFAULT NULL,
  `aircon_hp_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_orders`
--

INSERT INTO `job_orders` (`id`, `job_order_number`, `customer_name`, `customer_address`, `customer_phone`, `customer_email`, `service_type`, `aircon_model_id`, `assigned_technician_id`, `secondary_technician_id`, `status`, `price`, `base_price`, `created_by`, `due_date`, `completed_at`, `created_at`, `updated_at`, `customer_id`, `additional_fee`, `discount`, `part_id`, `cleaning_service_id`, `aircon_hp_id`) VALUES
(54, 'JO-20250812-4895', 'Desiree Ortega', 'Mansalay, Oriental Mindoro', '09958714556', NULL, 'survey', NULL, 2, NULL, 'completed', 500.00, 500.00, 6, NULL, '2025-08-12 11:36:37', '2025-08-12 11:35:56', '2025-08-12 11:36:37', 29, 0.00, 0.00, NULL, NULL, NULL),
(55, 'JO-20250812-2464', 'Desiree Ortega', 'Mansalay, Oriental Mindoro', '09958714556', NULL, 'installation', 4, 2, NULL, 'completed', 18999.00, 18999.00, NULL, NULL, '2025-08-12 11:37:18', '2025-08-12 11:37:09', '2025-08-12 11:37:18', 29, 0.00, 0.00, NULL, NULL, NULL),
(56, 'JO-20250812-1563', 'Desiree Ortega', 'Mansalay, Oriental Mindoro', '09958714556', NULL, 'installation', 1, 2, NULL, 'completed', 15999.00, 15999.00, NULL, NULL, '2025-08-12 11:37:19', '2025-08-12 11:37:09', '2025-08-12 11:37:19', 29, 0.00, 0.00, NULL, NULL, NULL),
(57, 'JO-20250812-2909', 'Desiree Ortega', 'Mansalay, Oriental Mindoro', '09958714556', NULL, 'installation', 2, 2, NULL, 'completed', 24999.00, 24999.00, NULL, NULL, '2025-08-12 11:37:20', '2025-08-12 11:37:09', '2025-08-12 11:37:20', 29, 0.00, 0.00, NULL, NULL, NULL),
(58, 'JO-20250812-3341', 'Desiree Ortega', 'Mansalay, Oriental Mindoro', '09958714556', NULL, 'installation', 3, 2, NULL, 'completed', 32999.00, 32999.00, NULL, NULL, '2025-08-12 11:37:20', '2025-08-12 11:37:09', '2025-08-12 11:37:20', 29, 0.00, 0.00, NULL, NULL, NULL),
(59, 'JO-20250812-6636', 'Desiree Ortega', 'Mansalay, Oriental Mindoro', '09958714556', NULL, 'installation', 1, 2, NULL, 'completed', 15999.00, 15999.00, NULL, NULL, '2025-08-12 11:37:21', '2025-08-12 11:37:09', '2025-08-12 11:37:21', 29, 0.00, 0.00, NULL, NULL, NULL),
(60, 'JO-20250812-4069', 'Desiree Ortega', 'Mansalay, Oriental Mindoro', '09958714556', NULL, 'installation', 1, 2, NULL, 'completed', 15999.00, 15999.00, NULL, NULL, '2025-08-12 11:37:32', '2025-08-12 11:37:09', '2025-08-12 11:37:32', 29, 0.00, 0.00, NULL, NULL, NULL),
(61, 'JO-20250813-0094', 'Ann Marisse Cuya', 'Sitio Highway Roxas, 5212 Oriental Mindoro', '09958714112', NULL, 'survey', NULL, 9, NULL, 'completed', 500.00, 500.00, 6, NULL, '2025-09-03 12:13:02', '2025-08-13 11:38:49', '2025-09-03 12:13:02', 27, 0.00, 0.00, NULL, NULL, NULL),
(62, 'JO-20250813-4456', 'Ann Marisse Cuya', 'Sitio Highway Roxas, 5212 Oriental Mindoro', '09958714112', NULL, 'repair', 1, 3, NULL, 'completed', 1200.00, 1200.00, 6, NULL, '2025-08-13 12:29:08', '2025-08-13 12:28:57', '2025-08-13 12:49:36', 27, 0.00, 0.00, NULL, NULL, NULL),
(63, 'JO-20250814-5089', 'Ann Marisse Cuya', 'Sitio Highway Roxas, 5212 Oriental Mindoro', '09958714112', NULL, 'repair', 21, 9, NULL, 'cancelled', 2500.00, 2500.00, 6, NULL, '2025-08-14 01:56:13', '2025-08-14 01:56:09', '2025-08-16 01:27:06', 27, 0.00, 0.00, NULL, NULL, NULL),
(64, 'JO-20250814-3989', 'Eciel Semeniano', 'San Mariano, Roxas, Oriental Mindoro', '09958714116', NULL, 'survey', NULL, 9, NULL, 'completed', 500.00, 500.00, 6, NULL, '2025-08-14 04:18:24', '2025-08-14 03:58:39', '2025-08-14 04:18:24', 30, 1.00, 1.00, NULL, NULL, NULL),
(65, 'JO-20250814-4037', 'Eciel Semeniano', 'San Mariano, Roxas, Oriental Mindoro', '09958714116', NULL, 'installation', 1, 9, NULL, 'completed', 15999.00, 15999.00, NULL, NULL, '2025-08-14 04:18:23', '2025-08-14 03:59:02', '2025-08-14 04:18:23', 30, 0.00, 0.00, NULL, NULL, NULL),
(66, 'JO-20250814-2065', 'Eciel Semeniano', 'San Mariano, Roxas, Oriental Mindoro', '09958714116', NULL, 'installation', 1, 3, NULL, 'completed', 15999.00, 15999.00, NULL, NULL, '2025-08-14 03:59:17', '2025-08-14 03:59:14', '2025-08-14 03:59:17', 30, 0.00, 0.00, NULL, NULL, NULL),
(67, 'JO-20250814-8690', 'Eciel Semeniano', 'San Mariano, Roxas, Oriental Mindoro', '09958714116', NULL, 'installation', 2, 3, NULL, 'completed', 24999.00, 24999.00, NULL, NULL, '2025-08-14 04:18:21', '2025-08-14 03:59:14', '2025-08-14 04:18:21', 30, 0.00, 0.00, NULL, NULL, NULL),
(68, 'JO-20250814-1531', 'Eciel Semeniano', 'San Mariano, Roxas, Oriental Mindoro', '09958714116', NULL, 'repair', NULL, 9, NULL, 'completed', 600.00, 600.00, 6, NULL, '2025-08-14 04:18:20', '2025-08-14 03:59:26', '2025-08-14 04:27:31', 30, 0.00, 0.00, 10, NULL, NULL),
(71, 'JO-20250814-7462', 'Eciel Semeniano', 'San Mariano, Roxas, Oriental Mindoro', '09958714116', NULL, 'repair', 5, 3, NULL, 'completed', 250.00, 250.00, 6, NULL, '2025-08-14 04:18:18', '2025-08-14 04:17:27', '2025-08-14 04:18:18', 30, 0.00, 0.00, 5, NULL, NULL),
(72, 'JO-20250814-1673', 'Angel Lamadrid', 'Sitio Manggahan, Dangay, Roxas, Oriental Mindoro', '09958714113', NULL, 'survey', NULL, 10, NULL, 'completed', 500.00, 500.00, 6, NULL, '2025-08-14 05:26:32', '2025-08-14 04:29:32', '2025-08-14 05:26:32', 28, 0.00, 0.00, NULL, NULL, NULL),
(73, 'JO-20250814-6301', 'Angel Lamadrid', 'Sitio Manggahan, Dangay, Roxas, Oriental Mindoro', '09958714113', NULL, 'repair', NULL, 10, NULL, 'completed', 800.00, 800.00, 6, NULL, '2025-08-14 05:26:32', '2025-08-14 04:29:47', '2025-08-14 05:26:32', 28, 0.00, 0.00, 6, NULL, NULL),
(74, 'JO-20250814-6675', 'Eciel Semeniano', 'San Mariano, Roxas, Oriental Mindoro', '09958714116', NULL, 'installation', 28, 10, NULL, 'completed', 18999.00, 18999.00, NULL, NULL, '2025-08-14 13:46:55', '2025-08-14 13:46:11', '2025-08-14 13:46:55', 30, 0.00, 0.00, NULL, NULL, NULL),
(75, 'JO-20250814-2168', 'Eciel Semeniano', 'San Mariano, Roxas, Oriental Mindoro', '09958714116', NULL, 'installation', 21, 10, NULL, 'completed', 74999.00, 74999.00, NULL, NULL, '2025-08-14 13:46:54', '2025-08-14 13:46:11', '2025-08-14 13:46:54', 30, 0.00, 0.00, NULL, NULL, NULL),
(76, 'JO-20250815-7011', 'Desiree Ortega', 'Mansalay, Oriental Mindoro', '09958714556', NULL, 'installation', 30, 9, NULL, 'completed', 27500.00, 27500.00, NULL, NULL, '2025-09-06 07:12:18', '2025-08-15 02:49:13', '2025-09-06 07:12:18', 29, 0.00, 0.00, NULL, NULL, NULL),
(77, 'JO-20250815-3281', 'Desiree Ortega', 'Mansalay, Oriental Mindoro', '09958714556', NULL, 'installation', 29, 9, NULL, 'completed', 21500.00, 21500.00, NULL, NULL, '2025-09-06 07:12:20', '2025-08-15 02:49:13', '2025-09-06 07:12:20', 29, 0.00, 0.00, NULL, NULL, NULL),
(78, 'JO-20250815-5994', 'Desiree Ortega', 'Mansalay, Oriental Mindoro', '09958714556', NULL, 'installation', 27, 9, NULL, 'completed', 19998.00, 19998.00, NULL, NULL, '2025-09-06 07:12:21', '2025-08-15 02:49:13', '2025-09-06 07:12:21', 29, 0.00, 0.00, NULL, NULL, NULL),
(79, 'JO-20250815-0370', 'Desiree Ortega', 'Mansalay, Oriental Mindoro', '09958714556', NULL, 'installation', 22, 9, NULL, 'completed', 25998.00, 25998.00, NULL, NULL, '2025-09-06 07:12:22', '2025-08-15 02:49:13', '2025-09-06 07:12:22', 29, 0.00, 0.00, NULL, NULL, NULL),
(80, 'JO-20250815-6261', 'Desiree Ortega', 'Mansalay, Oriental Mindoro', '09958714556', NULL, 'installation', 19, 9, NULL, 'completed', 49999.00, 49999.00, NULL, NULL, '2025-09-06 07:12:23', '2025-08-15 02:49:13', '2025-09-06 07:12:23', 29, 0.00, 0.00, NULL, NULL, NULL),
(81, 'JO-20250815-9433', 'Desiree Ortega', 'Mansalay, Oriental Mindoro', '09958714556', NULL, 'installation', 16, 9, NULL, 'completed', 38999.00, 38999.00, NULL, NULL, '2025-09-06 07:12:23', '2025-08-15 02:49:13', '2025-09-06 07:12:23', 29, 0.00, 0.00, NULL, NULL, NULL),
(82, 'JO-20250815-4879', 'Desiree Ortega', 'Mansalay, Oriental Mindoro', '09958714556', NULL, 'installation', 21, 9, NULL, 'completed', 74999.00, 74999.00, NULL, NULL, '2025-09-06 07:12:24', '2025-08-15 02:49:13', '2025-09-06 07:12:24', 29, 0.00, 0.00, NULL, NULL, NULL),
(83, 'JO-20250816-9278', 'AJ Nicole Salamente`', 'San Rafael, Roxas, Oriental Mindoro', '0995872166', NULL, 'survey', NULL, 10, NULL, 'completed', 500.00, 500.00, 6, NULL, '2025-09-04 01:49:47', '2025-08-16 04:05:26', '2025-09-04 01:49:47', 31, 0.00, 0.00, NULL, NULL, NULL),
(84, 'JO-20250816-7673', 'Sharah Jane Trapal', 'Ogbot, Bongabong, Oriental Mindoro', '09452592763', NULL, 'survey', NULL, 10, NULL, 'completed', 500.00, 500.00, 7, NULL, '2025-08-16 13:00:45', '2025-08-16 13:00:38', '2025-08-16 13:00:45', 32, 0.00, 0.00, NULL, NULL, NULL),
(85, 'JO-20250816-1347', 'Sharah Jane Trapal', 'Ogbot, Bongabong, Oriental Mindoro', '09452592763', NULL, 'installation', 21, 10, NULL, 'completed', 74749.00, 74999.00, NULL, NULL, '2025-09-04 02:00:30', '2025-08-16 13:01:26', '2025-09-04 02:00:30', 32, 0.00, 250.00, NULL, NULL, NULL),
(86, 'JO-20250816-6752', 'Sharah Jane Trapal', 'Ogbot, Bongabong, Oriental Mindoro', '09452592763', NULL, 'installation', 15, 10, NULL, 'completed', 52049.00, 51799.00, NULL, NULL, '2025-09-04 02:00:31', '2025-08-16 13:01:26', '2025-09-04 02:00:31', 32, 500.00, 250.00, NULL, NULL, NULL),
(87, 'JO-20250903-4266', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'survey', NULL, 3, NULL, 'completed', 500.00, 500.00, 6, NULL, '2025-09-03 01:03:39', '2025-09-03 00:49:31', '2025-09-03 01:03:39', 33, 0.00, 0.00, NULL, NULL, NULL),
(88, 'JO-20250903-2867', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'repair', NULL, 9, NULL, 'completed', 5500.00, 5500.00, 6, NULL, '2025-09-03 11:41:22', '2025-09-03 01:16:18', '2025-09-03 11:41:22', 33, 0.00, 0.00, 2, NULL, NULL),
(91, '', 'AJ Nicole Salamente`', 'San Rafael, Roxas, Oriental Mindoro', '0995872166', NULL, 'repair', NULL, 9, NULL, 'pending', 800.00, 800.00, NULL, NULL, NULL, '2025-09-03 11:32:39', '2025-09-03 11:32:39', NULL, 0.00, 0.00, 6, NULL, NULL),
(93, 'JO-20250903-8530', 'AJ Nicole Salamente`', 'San Rafael, Roxas, Oriental Mindoro', '0995872166', NULL, 'repair', NULL, 3, NULL, 'completed', 2500.00, 2500.00, NULL, NULL, '2025-09-04 04:38:28', '2025-09-03 11:36:52', '2025-09-04 04:38:28', NULL, 0.00, 0.00, 9, NULL, NULL),
(94, 'JO-20250903-1526', 'AJ Nicole Salamente`', 'San Rafael, Roxas, Oriental Mindoro', '0995872166', NULL, 'repair', NULL, 3, NULL, 'completed', 5500.00, 5500.00, NULL, NULL, '2025-09-04 04:38:29', '2025-09-03 11:36:52', '2025-09-04 04:38:29', NULL, 0.00, 0.00, 2, NULL, NULL),
(95, 'JO-20250903-7586', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'repair', NULL, 9, NULL, 'pending', 2500.00, 2500.00, NULL, NULL, NULL, '2025-09-03 11:50:09', '2025-09-03 11:50:09', NULL, 0.00, 0.00, 9, NULL, NULL),
(96, 'JO-20250903-6111', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'repair', NULL, 9, NULL, 'pending', 5500.00, 5500.00, NULL, NULL, NULL, '2025-09-03 11:50:10', '2025-09-03 11:50:10', NULL, 0.00, 0.00, 2, NULL, NULL),
(97, 'JO-20250903-5592', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'repair', NULL, 9, NULL, 'completed', 2500.00, 2500.00, NULL, NULL, '2025-09-04 02:24:06', '2025-09-03 11:52:05', '2025-09-04 02:24:06', 33, 0.00, 0.00, 9, NULL, NULL),
(98, 'JO-20250903-3802', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'repair', NULL, 9, NULL, 'completed', 5500.00, 5500.00, NULL, NULL, '2025-09-04 02:24:07', '2025-09-03 11:52:05', '2025-09-04 02:24:07', 33, 0.00, 0.00, 2, NULL, NULL),
(99, 'JO-20250903-1414', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'repair', NULL, 10, NULL, 'completed', 2500.00, 2500.00, NULL, NULL, '2025-09-04 02:24:04', '2025-09-03 11:52:27', '2025-09-04 02:24:04', 33, 0.00, 0.00, 9, NULL, NULL),
(100, 'JO-20250903-7789', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'repair', NULL, 10, NULL, 'completed', 5500.00, 5500.00, NULL, NULL, '2025-09-04 02:24:04', '2025-09-03 11:52:27', '2025-09-04 02:24:04', 33, 0.00, 0.00, 2, NULL, NULL),
(101, 'JO-20250903-5621', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'repair', NULL, 9, NULL, 'completed', 800.00, 800.00, NULL, NULL, '2025-09-04 02:24:02', '2025-09-03 11:52:58', '2025-09-04 02:24:02', 33, 0.00, 0.00, 6, NULL, NULL),
(102, 'JO-20250903-9003', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'repair', NULL, 9, NULL, 'completed', 800.00, 800.00, NULL, NULL, '2025-09-04 02:24:03', '2025-09-03 11:52:58', '2025-09-04 02:24:03', 33, 0.00, 0.00, 6, NULL, NULL),
(103, 'JO-20250903-1674', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'repair', NULL, 9, NULL, 'completed', 5500.00, 5500.00, NULL, NULL, '2025-09-04 02:24:01', '2025-09-03 11:53:51', '2025-09-04 02:24:01', 33, 0.00, 0.00, 2, NULL, NULL),
(104, 'JO-20250903-0251', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'repair', NULL, 9, NULL, 'completed', 600.00, 600.00, NULL, NULL, '2025-09-04 02:24:02', '2025-09-03 11:53:51', '2025-09-04 02:24:02', 33, 0.00, 0.00, 10, NULL, NULL),
(105, 'JO-20250903-1532', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'repair', NULL, 10, NULL, 'completed', 5500.00, 5500.00, NULL, NULL, '2025-09-04 02:23:59', '2025-09-03 11:56:19', '2025-09-04 02:23:59', 33, 0.00, 0.00, 2, NULL, NULL),
(106, 'JO-20250903-8537', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'repair', NULL, 10, NULL, 'completed', 1200.00, 1200.00, NULL, NULL, '2025-09-04 02:24:00', '2025-09-03 11:56:19', '2025-09-04 02:24:00', 33, 0.00, 0.00, 3, NULL, NULL),
(107, 'JO-20250903-3351', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'repair', NULL, 9, NULL, 'completed', 800.00, 800.00, NULL, NULL, '2025-09-04 02:23:58', '2025-09-03 11:57:19', '2025-09-04 02:23:58', 33, 0.00, 0.00, 6, NULL, NULL),
(108, 'JO-20250903-9103', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'repair', NULL, 9, NULL, 'completed', 5500.00, 5500.00, NULL, NULL, '2025-09-04 02:23:59', '2025-09-03 11:57:19', '2025-09-04 02:23:59', 33, 0.00, 0.00, 2, NULL, NULL),
(109, 'JO-20250903-0166', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'repair', 28, 3, NULL, 'completed', 2500.00, 2500.00, NULL, NULL, '2025-09-03 12:05:33', '2025-09-03 12:05:12', '2025-09-03 12:05:33', 33, 0.00, 0.00, 9, NULL, NULL),
(110, 'JO-20250903-2490', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'repair', 28, 3, NULL, 'completed', 5500.00, 5500.00, NULL, NULL, '2025-09-04 02:23:54', '2025-09-03 12:05:12', '2025-09-04 02:23:54', 33, 0.00, 0.00, 2, NULL, NULL),
(111, 'JO-20250903-0263', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'repair', 22, 9, NULL, 'completed', 2500.00, 2500.00, NULL, NULL, '2025-09-03 12:13:12', '2025-09-03 12:07:57', '2025-09-03 12:13:12', 33, 0.00, 0.00, 9, NULL, NULL),
(112, 'JO-20250903-1317', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'repair', 26, 9, NULL, 'completed', 250.00, 250.00, NULL, NULL, '2025-09-04 02:23:53', '2025-09-03 12:07:57', '2025-09-04 02:23:53', 33, 0.00, 0.00, 5, NULL, NULL),
(113, 'JO-20250904-6115', 'AJ Nicole Salamente`', 'San Rafael, Roxas, Oriental Mindoro', '0995872166', NULL, 'repair', 22, 3, NULL, 'completed', 250.00, 250.00, NULL, NULL, '2025-09-04 04:38:27', '2025-09-04 01:51:18', '2025-09-04 04:38:27', 31, 0.00, 0.00, 5, NULL, NULL),
(114, 'JO-20250904-1448', 'AJ Nicole Salamente`', 'San Rafael, Roxas, Oriental Mindoro', '0995872166', NULL, 'repair', 28, 3, NULL, 'completed', 800.00, 800.00, NULL, NULL, '2025-09-04 04:38:27', '2025-09-04 01:51:18', '2025-09-04 04:38:27', 31, 0.00, 0.00, 6, NULL, NULL),
(115, '202500057', 'Erick Mayo', 'San Mariano', '09958714112', NULL, 'cleaning', 26, 9, NULL, 'completed', 500.00, 500.00, 6, NULL, '2025-09-11 23:14:26', '2025-09-04 02:08:12', '2025-09-11 23:14:26', 34, 0.00, 0.00, NULL, 1, NULL),
(116, '202500058', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'cleaning', 14, 3, NULL, 'completed', 500.00, 500.00, 6, NULL, '2025-09-04 02:23:48', '2025-09-04 02:21:38', '2025-09-04 02:23:48', 33, 0.00, 0.00, NULL, 1, NULL),
(117, '202500060', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'cleaning', 27, 3, NULL, 'completed', 500.00, 500.00, 6, NULL, '2025-09-04 02:23:49', '2025-09-04 02:21:38', '2025-09-04 02:23:49', 33, 0.00, 0.00, NULL, 1, NULL),
(118, '202500062', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'cleaning', 23, 3, NULL, 'completed', 1200.00, 1200.00, 6, NULL, '2025-09-04 02:23:50', '2025-09-04 02:21:38', '2025-09-04 02:23:50', 33, 0.00, 0.00, NULL, NULL, NULL),
(119, '202500064', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'cleaning', 28, 3, NULL, 'completed', 800.00, 800.00, 6, NULL, '2025-09-04 02:23:51', '2025-09-04 02:21:38', '2025-09-04 02:23:51', 33, 0.00, 0.00, NULL, NULL, NULL),
(120, '202500066', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'cleaning', 16, 3, NULL, 'completed', 2500.00, 2500.00, 6, NULL, '2025-09-04 02:23:51', '2025-09-04 02:21:38', '2025-09-04 02:23:51', 33, 0.00, 0.00, NULL, NULL, NULL),
(121, '202500068', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'cleaning', 27, 3, NULL, 'completed', 300.00, 300.00, 6, NULL, '2025-09-04 02:23:52', '2025-09-04 02:21:38', '2025-09-04 02:23:52', 33, 0.00, 0.00, NULL, NULL, NULL),
(122, '202500070', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'cleaning', 28, 3, NULL, 'completed', 300.00, 300.00, 6, NULL, '2025-09-04 02:23:53', '2025-09-04 02:21:38', '2025-09-04 02:23:53', 33, 0.00, 0.00, NULL, NULL, NULL),
(123, 'JO-20250904-2250', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'cleaning', 26, 3, NULL, 'completed', 392.31, 300.00, 6, NULL, '2025-09-04 02:23:46', '2025-09-04 02:23:36', '2025-09-04 02:23:46', 33, 115.38, 23.08, NULL, NULL, NULL),
(124, 'JO-20250904-7288', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'cleaning', 24, 3, NULL, 'completed', 653.85, 500.00, 6, NULL, '2025-09-04 02:23:47', '2025-09-04 02:23:36', '2025-09-04 02:23:47', 33, 192.31, 38.46, NULL, 1, NULL),
(125, 'JO-20250904-5397', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'cleaning', 17, 3, NULL, 'completed', 653.85, 500.00, 6, NULL, '2025-09-04 02:23:48', '2025-09-04 02:23:36', '2025-09-04 02:23:48', 33, 192.31, 38.46, NULL, NULL, NULL),
(126, 'JO-20250904-0886', 'Khiss Nina Iyo', 'Paclasan Roxas Oriental Mindoro', '09452592763', NULL, 'cleaning', 27, 3, NULL, 'completed', 500.00, 500.00, 6, NULL, '2025-09-04 04:46:54', '2025-09-04 04:44:46', '2025-09-04 04:46:54', 35, 0.00, 0.00, NULL, 1, NULL),
(127, 'JO-20250904-2806', 'Khiss Nina Iyo', 'Paclasan Roxas Oriental Mindoro', '09452592763', NULL, 'cleaning', 24, 3, NULL, 'completed', 800.00, 800.00, 6, NULL, '2025-09-04 04:46:55', '2025-09-04 04:44:46', '2025-09-04 04:46:55', 35, 0.00, 0.00, NULL, NULL, NULL),
(128, 'JO-20250904-9100', 'Eciel Semeniano', 'San Mariano, Roxas, Oriental Mindoro', '09958714116', NULL, 'cleaning', 32, 9, NULL, 'completed', 700.00, 700.00, 6, NULL, '2025-09-10 01:43:15', '2025-09-04 10:28:56', '2025-09-10 01:43:15', 30, 0.00, 0.00, NULL, NULL, NULL),
(129, 'JO-20250904-7703', 'Jen Camo', 'San Aquilino', '09452592763', NULL, 'cleaning', NULL, 9, 12, 'in_progress', 2000.00, 1500.00, 6, NULL, NULL, '2025-09-04 10:34:46', '2025-09-17 10:59:59', 36, 500.00, 0.00, NULL, NULL, NULL),
(130, 'JO-20250904-5345', 'Jen Camo', 'San Aquilino', '09452592763', NULL, 'cleaning', 32, 9, NULL, 'in_progress', 300.00, 300.00, 6, NULL, NULL, '2025-09-04 10:34:46', '2025-09-17 11:00:01', 36, 0.00, 0.00, NULL, NULL, NULL),
(131, 'JO-20250910-5992', 'Khate Ortiz', 'Sitio Highway Roxas, 5212 Oriental Mindoro', '09958714112', NULL, 'cleaning', 27, 9, NULL, 'pending', 1500.00, 1500.00, 6, NULL, NULL, '2025-09-10 00:57:47', '2025-09-10 00:57:47', 37, 214.29, 214.29, NULL, NULL, NULL),
(132, 'JO-20250910-4024', 'Khate Ortiz', 'Sitio Highway Roxas, 5212 Oriental Mindoro', '09958714112', NULL, 'cleaning', 26, 9, NULL, 'pending', 2000.00, 2000.00, 6, NULL, NULL, '2025-09-10 00:57:47', '2025-09-10 00:57:47', 37, 285.71, 285.71, NULL, NULL, NULL),
(133, 'JO-20250912-0718', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'survey', NULL, 3, NULL, 'completed', 500.00, 500.00, 6, NULL, '2025-09-12 01:33:20', '2025-09-12 01:32:40', '2025-09-12 01:33:20', 33, 0.00, 0.00, NULL, NULL, NULL),
(134, 'JO-20250912-4649', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'installation', 33, 3, NULL, 'completed', 38948.00, 38698.00, NULL, NULL, '2025-09-12 01:38:43', '2025-09-12 01:35:00', '2025-09-12 01:38:43', 33, 500.00, 250.00, NULL, NULL, NULL),
(135, 'JO-20250912-4687', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'installation', 22, 3, NULL, 'cancelled', 25748.00, 25998.00, NULL, NULL, NULL, '2025-09-12 01:35:00', '2025-09-12 01:38:54', 33, 0.00, 250.00, NULL, NULL, NULL),
(137, 'JO-20250912-3594', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'repair', 14, 3, NULL, 'completed', 241.91, 250.00, NULL, NULL, '2025-09-12 08:13:14', '2025-09-12 01:42:02', '2025-09-12 08:13:14', 33, 0.00, 8.09, 5, NULL, NULL),
(138, 'JO-20250912-1850', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'repair', 22, 3, NULL, 'completed', 2419.09, 2500.00, NULL, NULL, '2025-09-12 01:42:29', '2025-09-12 01:42:02', '2025-09-12 01:42:29', 33, 0.00, 80.91, 9, NULL, NULL),
(139, 'JO-20250912-7183', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'cleaning', 14, 3, NULL, 'completed', 500.00, 500.00, 6, NULL, '2025-09-12 01:56:55', '2025-09-12 01:46:07', '2025-09-12 01:56:55', 33, 0.00, 0.00, NULL, 1, NULL),
(140, 'JO-20250912-6941', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'cleaning', 18, 3, NULL, 'completed', 500.00, 500.00, 6, NULL, '2025-09-12 08:13:13', '2025-09-12 01:46:07', '2025-09-12 08:13:13', 33, 0.00, 0.00, NULL, 1, NULL),
(141, 'JO-20250912-2668', 'Ann Marisse Cuya', 'Sitio Highway Roxas, 5212 Oriental Mindoro', '09958714112', NULL, 'cleaning', NULL, 3, 9, 'completed', 1428.57, 2000.00, 6, NULL, '2025-09-12 09:20:37', '2025-09-12 08:15:11', '2025-09-12 09:20:37', 27, 0.00, 571.43, NULL, NULL, NULL),
(142, 'JO-20250912-0879', 'Ann Marisse Cuya', 'Sitio Highway Roxas, 5212 Oriental Mindoro', '09958714112', NULL, 'cleaning', NULL, 3, 9, 'completed', 571.43, 800.00, 6, NULL, '2025-09-12 09:20:38', '2025-09-12 08:15:11', '2025-09-12 09:20:38', 27, 0.00, 228.57, NULL, NULL, NULL),
(143, 'JO-20250912-9754', 'Clarendon College Inc.', 'Odiong, Roxas, Oriental Mindoro', '09958714112', NULL, 'cleaning', NULL, 3, 9, 'completed', 500.00, 500.00, 6, NULL, NULL, '2025-09-12 08:41:38', '2025-09-12 08:42:16', 33, 0.00, 0.00, NULL, 1, NULL),
(144, 'JO-20250912-8111', 'Mary Grace', 'Ogbot', '09958714112', NULL, 'survey', NULL, 9, 3, 'completed', 500.00, 500.00, 6, NULL, '2025-09-18 02:38:12', '2025-09-12 08:44:24', '2025-09-18 02:38:12', 38, 0.00, 0.00, NULL, NULL, NULL),
(145, 'JO-20250912-2163', 'Peddy Trapal', 'Sitio Highway Roxas, 5212 Oriental Mindoro', '09958714112', NULL, 'survey', NULL, 3, 12, 'completed', 500.00, 500.00, 6, NULL, '2025-09-18 02:38:12', '2025-09-12 08:46:33', '2025-09-18 02:38:12', 39, 0.00, 0.00, NULL, NULL, NULL),
(146, 'JO-20250912-8260', 'AJ Nicole Salamente`', 'San Rafael, Roxas, Oriental Mindoro', '0995872166', NULL, 'installation', 25, 9, NULL, 'cancelled', 16998.00, 16998.00, NULL, NULL, NULL, '2025-09-12 09:13:17', '2025-09-12 09:13:28', 31, 0.00, 0.00, NULL, NULL, NULL),
(147, 'JO-20250917-5011', 'Jen Camo', 'San Aquilino', '09452592763', NULL, 'repair', 28, 3, 9, 'completed', 2500.00, 2500.00, NULL, NULL, '2025-09-18 02:38:11', '2025-09-17 13:37:45', '2025-09-18 02:38:11', 36, 0.00, 0.00, 9, NULL, NULL),
(150, 'JO-20250917-0734', 'Ann Marisse Cuya', 'Sitio Highway Roxas, 5212 Oriental Mindoro', '09958714112', NULL, 'cleaning', 14, 9, 3, 'completed', 500000.00, 500000.00, 6, NULL, '2025-09-17 15:29:22', '2025-09-17 14:18:22', '2025-09-17 15:29:22', 27, 0.00, 0.00, NULL, NULL, 1),
(151, 'JO-20250917-1137', 'Ann Marisse Cuya', 'Sitio Highway Roxas, 5212 Oriental Mindoro', '09958714112', NULL, 'cleaning', 14, 9, 3, 'completed', 600.00, 600.00, 6, NULL, '2025-09-17 15:29:26', '2025-09-17 14:18:22', '2025-09-17 15:29:26', 27, 0.00, 0.00, NULL, NULL, 2),
(152, 'JO-20250917-0116', 'Ann Marisse Cuya', 'Sitio Highway Roxas, 5212 Oriental Mindoro', '09958714112', NULL, 'survey', 14, 3, 9, 'completed', 500.00, 500.00, 6, NULL, '2025-09-17 15:29:21', '2025-09-17 14:19:24', '2025-09-17 15:29:21', 27, 0.00, 0.00, NULL, NULL, NULL),
(153, 'JO-20250917-1798', 'Ann Marisse Cuya', 'Sitio Highway Roxas, 5212 Oriental Mindoro', '09958714112', NULL, 'installation', 29, 3, 9, 'completed', 21500.00, 21500.00, NULL, NULL, '2025-09-17 15:29:18', '2025-09-17 15:11:32', '2025-09-17 15:29:18', 27, 0.00, 0.00, NULL, NULL, NULL),
(154, 'JO-20250917-4206', 'Ann Marisse Cuya', 'Sitio Highway Roxas, 5212 Oriental Mindoro', '09958714112', NULL, 'installation', 21, 3, 9, 'completed', 74999.00, 74999.00, NULL, NULL, '2025-09-17 15:29:17', '2025-09-17 15:11:32', '2025-09-17 15:29:17', 27, 0.00, 0.00, NULL, NULL, NULL),
(155, 'JO-20250917-0283', 'Ann Marisse Cuya', 'Sitio Highway Roxas, 5212 Oriental Mindoro', '09958714112', NULL, 'installation', 30, 3, 9, 'completed', 27500.00, 27500.00, NULL, NULL, '2025-09-17 15:29:19', '2025-09-17 15:11:32', '2025-09-17 15:29:19', 27, 0.00, 0.00, NULL, NULL, NULL),
(156, 'JO-20250918-6621', 'John Mark', 'Ogbot', '09958714112', 'student.joshmcdowelltrapal@gmail.com', 'survey', NULL, 3, NULL, 'completed', 500.00, 500.00, 6, NULL, '2025-09-18 02:38:11', '2025-09-17 17:32:14', '2025-09-18 02:38:11', NULL, 0.00, 0.00, NULL, NULL, NULL),
(157, 'JO-20250918-6460', 'John Mark', 'Ogbot', '09958714112', 'student.joshmcdowelltrapal@gmail.com', 'survey', NULL, 3, NULL, 'completed', 500.00, 500.00, 6, NULL, '2025-09-18 02:38:10', '2025-09-17 17:32:16', '2025-09-18 02:38:10', NULL, 0.00, 0.00, NULL, NULL, NULL),
(158, 'JO-20250918-1417', 'John Mark', 'Ogbot', '09958714112', 'student.joshmcdowelltrapal@gmail.com', 'survey', NULL, 3, NULL, 'completed', 500.00, 500.00, 6, NULL, '2025-09-18 02:38:10', '2025-09-17 17:32:18', '2025-09-18 02:38:10', NULL, 0.00, 0.00, NULL, NULL, NULL),
(159, 'JO-20250918-0696', 'John Mark', 'Ogbot', '09958714112', 'student.joshmcdowelltrapal@gmail.com', 'survey', NULL, 3, NULL, 'completed', 500.00, 500.00, 6, NULL, '2025-09-18 02:38:09', '2025-09-17 17:32:20', '2025-09-18 02:38:09', NULL, 0.00, 0.00, NULL, NULL, NULL),
(160, 'JO-20250918-8635', 'John Mark', 'Ogbot', '09958714112', 'student.joshmcdowelltrapal@gmail.com', 'survey', NULL, 3, NULL, 'completed', 500.00, 500.00, 6, NULL, '2025-09-18 02:38:09', '2025-09-17 17:32:22', '2025-09-18 02:38:09', NULL, 0.00, 0.00, NULL, NULL, NULL),
(161, 'JO-20250918-0348', 'John Mark', 'Ogbot', '09958714112', 'student.joshmcdowelltrapal@gmail.com', 'survey', NULL, 3, NULL, 'completed', 500.00, 500.00, 6, NULL, '2025-09-18 02:38:08', '2025-09-17 17:32:24', '2025-09-18 02:38:08', NULL, 0.00, 0.00, NULL, NULL, NULL),
(162, 'JO-20250918-1926', 'Josh Trapal', 'Ogbot', '09958714112', 'student.joshmcdowelltrapal@gmail.com', 'cleaning', NULL, 3, NULL, 'completed', 600.00, 600.00, 6, NULL, '2025-09-18 02:38:07', '2025-09-17 17:36:11', '2025-09-18 02:38:07', NULL, 0.00, 0.00, NULL, 1, NULL),
(163, 'JO-20250918-0163', 'Josh Trapal', 'Ogbot', '09958714112', 'student.joshmcdowelltrapal@gmail.com', 'cleaning', NULL, 3, NULL, 'completed', 600.00, 600.00, 6, NULL, '2025-09-18 02:38:08', '2025-09-17 17:36:11', '2025-09-18 02:38:08', NULL, 0.00, 0.00, NULL, 1, NULL),
(164, 'JO-20250918-2624', 'Josh McDowell Trapal', 'Ogbot', '09958714112', 'joshmcdowelltrapal@gmail.com', 'survey', NULL, 3, 3, 'completed', 500.00, 500.00, 6, NULL, '2025-09-18 02:38:06', '2025-09-17 17:41:43', '2025-09-18 02:38:06', NULL, 0.00, 0.00, NULL, NULL, NULL),
(165, 'JO-20250918-9907', 'Josh McDowell Trapal', 'Ogbot', '09958714112', 'joshmcdowelltrapal@gmail.com', 'survey', NULL, 9, NULL, 'completed', 500.00, 500.00, 6, NULL, '2025-09-17 18:07:54', '2025-09-17 17:49:30', '2025-09-17 18:07:54', 44, 0.00, 0.00, NULL, NULL, NULL),
(166, 'JO-20250918-8270', 'Josh McDowell Trapal', 'Ogbot', '09958714112', 'joshmcdowelltrapal@gmail.com', 'cleaning', 16, 9, NULL, 'completed', 500000.00, 500000.00, 6, NULL, '2025-09-17 17:59:57', '2025-09-17 17:50:32', '2025-09-17 17:59:57', 44, 0.00, 0.00, NULL, 1, NULL),
(167, 'JO-20250918-6543', 'Josh McDowell Trapal', 'Ogbot', '09958714112', 'joshmcdowelltrapal@gmail.com', 'cleaning', 29, 9, NULL, 'completed', 600.00, 600.00, 6, NULL, '2025-09-17 18:11:33', '2025-09-17 17:50:32', '2025-09-17 18:11:33', 44, 0.00, 0.00, NULL, 1, NULL),
(168, 'JO-20250918-6185', 'Josh McDowell Trapal', 'Ogbot', '09958714112', 'joshmcdowelltrapal@gmail.com', 'cleaning', 29, 9, NULL, 'completed', 600.00, 600.00, 6, NULL, '2025-09-17 18:11:53', '2025-09-17 17:50:32', '2025-09-17 18:11:53', 44, 0.00, 0.00, NULL, 1, NULL),
(169, 'JO-20250918-0540', 'Josh McDowell Trapal', 'Ogbot', '09958714112', NULL, 'repair', 29, 9, NULL, 'pending', 250.00, 250.00, NULL, NULL, NULL, '2025-09-17 18:12:19', '2025-09-17 18:12:19', 44, 0.00, 0.00, 5, NULL, NULL),
(170, 'JO-20250918-6093', 'Josh McDowell Trapal', 'Ogbot', '09958714112', NULL, 'installation', 29, 9, NULL, 'in_progress', 21500.00, 21500.00, NULL, NULL, NULL, '2025-09-17 18:12:46', '2025-09-17 18:13:01', 44, 0.00, 0.00, NULL, NULL, NULL),
(171, 'JO-20250918-6964', 'Josh McDowell Trapal', 'Ogbot', '09958714112', NULL, 'repair', 15, 9, 9, 'pending', 2500.00, 2500.00, NULL, NULL, NULL, '2025-09-17 18:14:11', '2025-09-17 18:14:11', 44, 0.00, 0.00, 9, NULL, NULL),
(172, 'JO-20250918-5227', 'Josh McDowell Trapal', 'Ogbot', '09958714112', 'student.joshmcdowelltrapal@gmail.com', 'survey', NULL, 3, NULL, 'completed', 500.00, 500.00, 6, NULL, '2025-09-17 18:25:06', '2025-09-17 18:18:10', '2025-09-17 18:25:06', 44, 0.00, 0.00, NULL, NULL, NULL),
(173, 'JO-20250918-6076', 'Josh McDowell Trapal', 'Ogbot', '09958714112', 'joshmcdowelltrapal@gmail.com', 'cleaning', NULL, 9, NULL, 'completed', 500000.00, 500000.00, 6, NULL, '2025-09-17 18:24:59', '2025-09-17 18:18:50', '2025-09-17 18:24:59', 44, 0.00, 0.00, NULL, 1, NULL),
(174, 'JO-20250918-1746', 'Renz', 'ogbot', '09958714112', 'student.joshmcdowelltrapal@gmail.com', 'survey', NULL, 3, 3, 'completed', 500.00, 500.00, 6, NULL, '2025-09-18 02:10:30', '2025-09-18 01:55:10', '2025-09-18 02:10:30', 45, 0.00, 0.00, NULL, NULL, NULL),
(175, 'JO-20250918-2869', 'Josh McDowell Trapal', 'Ogbot', '09958714112', '', 'survey', NULL, 3, 12, 'completed', 500.00, 500.00, 6, NULL, '2025-09-18 02:10:28', '2025-09-18 02:05:01', '2025-09-18 02:10:28', 44, 0.00, 0.00, NULL, NULL, NULL),
(176, 'JO-20250918-0102', 'Josh McDowell Trapal', 'Ogbot', '09958714112', 'joshmcdowelltrapal@gmail.com', 'cleaning', 28, 9, 3, 'completed', 600.00, 600.00, 6, NULL, '2025-09-18 02:38:05', '2025-09-18 02:06:30', '2025-09-18 02:38:05', 44, 0.00, 0.00, NULL, 1, NULL),
(177, 'JO-20250918-5383', 'Josh McDowell Trapal', 'Ogbot', '09958714112', '', 'cleaning', 29, 9, NULL, 'in_progress', 500000.00, 500000.00, 6, NULL, NULL, '2025-09-18 02:07:06', '2025-09-18 02:07:13', 44, 0.00, 0.00, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `part_categories`
--

CREATE TABLE `part_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_description` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `part_categories`
--

INSERT INTO `part_categories` (`id`, `category_name`, `category_description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'compressor', 'Compressor parts and components', 1, '2025-09-03 13:37:12', '2025-09-03 13:37:12'),
(2, 'condenser', 'Condenser coils and related parts', 1, '2025-09-03 13:37:12', '2025-09-03 13:37:12'),
(3, 'evaporator', 'Evaporator coils and components', 1, '2025-09-03 13:37:12', '2025-09-03 13:37:12'),
(4, 'filter', 'Air filters and filtration systems', 1, '2025-09-03 13:37:12', '2025-09-03 13:37:12'),
(5, 'Capacitor - Test', 'Electrical capacitors', 1, '2025-09-03 13:37:12', '2025-09-03 13:52:08'),
(6, 'thermostat', 'Temperature control devices', 1, '2025-09-03 13:37:12', '2025-09-03 13:37:12'),
(7, 'fan_motor', 'Fan motors and related components', 1, '2025-09-03 13:37:12', '2025-09-03 13:37:12'),
(8, 'refrigerant', 'Refrigerant gases and chemicals', 1, '2025-09-03 13:37:12', '2025-09-03 13:37:12'),
(9, 'electrical', 'Electrical components and wiring', 1, '2025-09-03 13:37:12', '2025-09-03 13:37:12'),
(10, 'other', 'Miscellaneous parts and accessories', 1, '2025-09-03 13:37:12', '2025-09-03 13:37:12');

-- --------------------------------------------------------

--
-- Table structure for table `technicians`
--

CREATE TABLE `technicians` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technicians`
--

INSERT INTO `technicians` (`id`, `username`, `password`, `name`, `email`, `phone`, `profile_picture`, `created_at`, `updated_at`) VALUES
(3, 'eciel', '$2y$10$UObZIT9OlApxi4rd/C47f.1WmkZJr3Vgq/Rs3ByDf1OkYfCIErsb.', 'Eciel Semeniano', 'ecielsemeniano@gmail.com', '09958714113', 'uploads/profile_pictures/technician_3_1758162453.png', '2025-06-03 06:56:19', '2025-09-18 02:27:33'),
(9, 'maan-admin', '$2y$10$tk3olYazbTW4nt5UOboJQOFEaEtSoo2BUTrFDWtVLAcrW17izQzqS', 'Marianne Dela Cruz', NULL, '09958714110', 'uploads/profile_pictures/technician_1755002855_689b37e7157d0.png', '2025-08-12 12:47:35', '2025-08-12 12:47:35'),
(12, 'tech001', '$2y$10$Uo1lHofYLbQlE4LSQKpm9OMIvV6RW1.VIUVe1.0s2LZv4VEYkj6tG', 'Technician-test', NULL, '09452592763', 'uploads/profile_pictures/technician_1756982354_68b96c52f1cee.png', '2025-09-04 10:39:15', '2025-09-04 10:39:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ac_parts`
--
ALTER TABLE `ac_parts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ac_parts_category` (`part_category`),
  ADD KEY `idx_ac_parts_category_id` (`category_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `idx_username` (`username`),
  ADD UNIQUE KEY `idx_email` (`email`);

--
-- Indexes for table `aircon_hp`
--
ALTER TABLE `aircon_hp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aircon_installations`
--
ALTER TABLE `aircon_installations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_order_id` (`job_order_id`);

--
-- Indexes for table `cleaning_services`
--
ALTER TABLE `cleaning_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_customers_name_phone` (`name`,`phone`),
  ADD KEY `idx_customers_email` (`email`);

--
-- Indexes for table `job_orders`
--
ALTER TABLE `job_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `job_order_number` (`job_order_number`),
  ADD KEY `aircon_model_id` (`aircon_model_id`),
  ADD KEY `assigned_technician_id` (`assigned_technician_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `idx_job_orders_customer_id` (`customer_id`),
  ADD KEY `idx_job_orders_status` (`status`),
  ADD KEY `idx_job_orders_part_id` (`part_id`),
  ADD KEY `idx_job_orders_cleaning_service` (`cleaning_service_id`),
  ADD KEY `idx_secondary_technician` (`secondary_technician_id`),
  ADD KEY `idx_job_orders_customer_email` (`customer_email`);

--
-- Indexes for table `part_categories`
--
ALTER TABLE `part_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `technicians`
--
ALTER TABLE `technicians`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `idx_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ac_parts`
--
ALTER TABLE `ac_parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `aircon_hp`
--
ALTER TABLE `aircon_hp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `aircon_installations`
--
ALTER TABLE `aircon_installations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cleaning_services`
--
ALTER TABLE `cleaning_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `job_orders`
--
ALTER TABLE `job_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `part_categories`
--
ALTER TABLE `part_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `technicians`
--
ALTER TABLE `technicians`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ac_parts`
--
ALTER TABLE `ac_parts`
  ADD CONSTRAINT `fk_ac_parts_category_id` FOREIGN KEY (`category_id`) REFERENCES `part_categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `aircon_installations`
--
ALTER TABLE `aircon_installations`
  ADD CONSTRAINT `aircon_installations_ibfk_1` FOREIGN KEY (`job_order_id`) REFERENCES `job_orders` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `job_orders`
--
ALTER TABLE `job_orders`
  ADD CONSTRAINT `fk_job_orders_created_by` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_job_orders_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_job_orders_part_id` FOREIGN KEY (`part_id`) REFERENCES `ac_parts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `job_orders_ibfk_1` FOREIGN KEY (`cleaning_service_id`) REFERENCES `cleaning_services` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
