-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2024 at 11:35 AM
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
-- Database: `uas_pw`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `activity_type` varchar(50) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  `record_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_role` varchar(50) NOT NULL,
  `activity_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `activity_type`, `table_name`, `record_id`, `user_id`, `user_role`, `activity_time`, `description`) VALUES
(1, 'DELETE', 'Employee', 1, 1, 'unknown', '2024-07-17 07:20:53', 'Deleting an employee record'),
(2, 'DELETE', 'Employee', 2, 2, 'Assistant Manager', '2024-07-17 07:25:44', 'Deleting an employee record'),
(3, 'UPDATE', 'Employee', 3, 3, 'HR Specialist', '2024-07-17 07:25:59', 'Updating an employee record'),
(4, 'DELETE', 'inventory', 7, 7, 'unknown', '2024-07-17 08:11:12', 'Deleting a product record'),
(5, 'UPDATE', 'inventory', 12, 12, 'unknown', '2024-07-17 08:15:40', 'Updating a product record'),
(6, 'UPDATE', 'inventory', 8, 8, 'unknown', '2024-07-17 08:17:31', 'Updating a product record'),
(7, 'UPDATE', 'Employee', 3, 3, 'HR Specialist', '2024-07-17 08:18:22', 'Updating an employee record'),
(8, 'INSERT', 'Produk', 0, 0, 'unknown', '2024-07-17 08:25:05', 'Inserting a new product record'),
(9, 'UPDATE', 'inventory', 13, 13, 'unknown', '2024-07-17 08:29:48', 'Updating a product record'),
(10, 'UPDATE', 'inventory', 8, 8, 'unknown', '2024-07-17 08:35:20', 'Updating a product record'),
(11, 'UPDATE', 'inventory', 9, 9, 'unknown', '2024-07-17 08:35:34', 'Updating a product record'),
(12, 'UPDATE', 'inventory', 11, 11, 'unknown', '2024-07-17 08:35:40', 'Updating a product record'),
(13, 'DELETE', 'inventory', 14, 14, 'unknown', '2024-07-17 08:35:44', 'Deleting a product record'),
(15, 'DELETE', 'Employee', 3, 3, 'HR Specialist', '2024-07-18 05:25:27', 'Deleting an employee record'),
(16, 'DELETE', 'orders', 16, 0, 'unknown', '2024-07-18 05:56:02', 'Deleted order with ID 16'),
(17, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-18 06:16:46', 'Inserted new order with ID 0'),
(21, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-18 06:21:12', 'Inserted new order with ID 0'),
(22, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-18 06:30:51', 'Inserted new order with ID 0'),
(23, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-18 06:46:15', 'Inserted new order with ID 0'),
(24, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-18 07:28:30', 'Inserted new order with ID 0'),
(25, 'DELETE', 'admin', 3, 3, 'unknown', '2024-07-19 04:40:07', 'Deleting an admin record'),
(26, 'DELETE', 'admin', 2, 2, 'unknown', '2024-07-19 04:40:10', 'Deleting an admin record'),
(27, 'DELETE', 'Employee', 4, 4, 'Marketing Coordinator', '2024-07-19 04:43:38', 'Deleting an employee record'),
(28, 'DELETE', 'Employee', 5, 5, 'Sales Representative', '2024-07-19 04:43:38', 'Deleting an employee record'),
(29, 'DELETE', 'Employee', 6, 6, 'IT Support', '2024-07-19 04:43:38', 'Deleting an employee record'),
(30, 'DELETE', 'Employee', 7, 7, 'Accountant', '2024-07-19 04:43:38', 'Deleting an employee record'),
(31, 'DELETE', 'Employee', 8, 8, 'Logistics Specialist', '2024-07-19 04:43:38', 'Deleting an employee record'),
(32, 'DELETE', 'Employee', 9, 9, 'Customer Service', '2024-07-19 04:43:38', 'Deleting an employee record'),
(33, 'DELETE', 'Employee', 10, 10, 'Project Manager', '2024-07-19 04:43:38', 'Deleting an employee record'),
(34, 'DELETE', 'Employee', 49, 49, 'Software Engineer', '2024-07-19 04:43:38', 'Deleting an employee record'),
(35, 'INSERT', 'Employee', 0, 0, 'Manajer', '2024-07-19 04:43:54', 'Inserting a new employee record'),
(36, 'INSERT', 'Employee', 0, 0, 'Supervisor', '2024-07-19 04:43:54', 'Inserting a new employee record'),
(37, 'INSERT', 'Employee', 0, 0, 'Asisten Manajer', '2024-07-19 04:43:54', 'Inserting a new employee record'),
(38, 'INSERT', 'Employee', 0, 0, 'Staff HRD', '2024-07-19 04:43:54', 'Inserting a new employee record'),
(39, 'INSERT', 'Employee', 0, 0, 'Akuntan', '2024-07-19 04:43:54', 'Inserting a new employee record'),
(40, 'INSERT', 'Employee', 0, 0, 'Marketing', '2024-07-19 04:43:54', 'Inserting a new employee record'),
(41, 'INSERT', 'Employee', 0, 0, 'Sekretaris', '2024-07-19 04:43:54', 'Inserting a new employee record'),
(42, 'INSERT', 'Employee', 0, 0, 'Kepala Gudang', '2024-07-19 04:43:54', 'Inserting a new employee record'),
(43, 'INSERT', 'Employee', 0, 0, 'Customer Service', '2024-07-19 04:43:54', 'Inserting a new employee record'),
(44, 'INSERT', 'Employee', 0, 0, 'IT Support', '2024-07-19 04:43:55', 'Inserting a new employee record'),
(45, 'INSERT', 'Employee', 0, 0, 'Desainer Grafis', '2024-07-19 04:43:55', 'Inserting a new employee record'),
(46, 'INSERT', 'Employee', 0, 0, 'Produksi', '2024-07-19 04:43:55', 'Inserting a new employee record'),
(47, 'INSERT', 'Employee', 0, 0, 'Quality Control', '2024-07-19 04:43:55', 'Inserting a new employee record'),
(48, 'INSERT', 'Employee', 0, 0, 'Analis', '2024-07-19 04:43:55', 'Inserting a new employee record'),
(49, 'INSERT', 'Employee', 0, 0, 'Penjualan', '2024-07-19 04:43:55', 'Inserting a new employee record'),
(50, 'INSERT', 'Employee', 0, 0, 'Logistik', '2024-07-19 04:43:55', 'Inserting a new employee record'),
(51, 'INSERT', 'Employee', 0, 0, 'Research and Development', '2024-07-19 04:43:55', 'Inserting a new employee record'),
(52, 'INSERT', 'Employee', 0, 0, 'Keuangan', '2024-07-19 04:43:55', 'Inserting a new employee record'),
(53, 'INSERT', 'Employee', 0, 0, 'Sumber Daya Manusia', '2024-07-19 04:43:55', 'Inserting a new employee record'),
(54, 'INSERT', 'Employee', 0, 0, 'Humas', '2024-07-19 04:43:55', 'Inserting a new employee record'),
(55, 'INSERT', 'Employee', 0, 0, 'Pemeliharaan', '2024-07-19 04:43:55', 'Inserting a new employee record'),
(56, 'INSERT', 'Employee', 0, 0, 'Administrasi', '2024-07-19 04:43:55', 'Inserting a new employee record'),
(57, 'INSERT', 'Employee', 0, 0, 'Teknik', '2024-07-19 04:43:55', 'Inserting a new employee record'),
(58, 'INSERT', 'Employee', 0, 0, 'Pengadaan', '2024-07-19 04:43:55', 'Inserting a new employee record'),
(59, 'INSERT', 'Employee', 0, 0, 'Manajemen Risiko', '2024-07-19 04:43:55', 'Inserting a new employee record'),
(60, 'INSERT', 'Employee', 0, 0, 'Pengembangan Produk', '2024-07-19 04:43:55', 'Inserting a new employee record'),
(61, 'INSERT', 'Employee', 0, 0, 'Konsultan', '2024-07-19 04:43:55', 'Inserting a new employee record'),
(62, 'INSERT', 'Employee', 0, 0, 'Analis Data', '2024-07-19 04:43:55', 'Inserting a new employee record'),
(63, 'INSERT', 'Employee', 0, 0, 'Asisten Administrasi', '2024-07-19 04:43:55', 'Inserting a new employee record'),
(64, 'INSERT', 'Employee', 0, 0, 'Teknisi', '2024-07-19 04:43:55', 'Inserting a new employee record'),
(65, 'DELETE', 'inventory', 8, 8, 'unknown', '2024-07-19 05:40:54', 'Deleting a product record'),
(66, 'DELETE', 'inventory', 9, 9, 'unknown', '2024-07-19 05:40:54', 'Deleting a product record'),
(67, 'DELETE', 'inventory', 10, 10, 'unknown', '2024-07-19 05:40:54', 'Deleting a product record'),
(68, 'DELETE', 'inventory', 11, 11, 'unknown', '2024-07-19 05:40:54', 'Deleting a product record'),
(69, 'DELETE', 'inventory', 12, 12, 'unknown', '2024-07-19 05:40:54', 'Deleting a product record'),
(70, 'DELETE', 'inventory', 13, 13, 'unknown', '2024-07-19 05:40:54', 'Deleting a product record'),
(71, 'INSERT', 'Produk', 0, 0, 'unknown', '2024-07-19 05:41:01', 'Inserting a new product record'),
(72, 'INSERT', 'Produk', 0, 0, 'unknown', '2024-07-19 05:41:01', 'Inserting a new product record'),
(73, 'INSERT', 'Produk', 0, 0, 'unknown', '2024-07-19 05:41:01', 'Inserting a new product record'),
(74, 'INSERT', 'Produk', 0, 0, 'unknown', '2024-07-19 05:41:01', 'Inserting a new product record'),
(75, 'INSERT', 'Produk', 0, 0, 'unknown', '2024-07-19 05:41:01', 'Inserting a new product record'),
(76, 'INSERT', 'Produk', 0, 0, 'unknown', '2024-07-19 05:41:01', 'Inserting a new product record'),
(77, 'INSERT', 'Produk', 0, 0, 'unknown', '2024-07-19 05:41:01', 'Inserting a new product record'),
(78, 'INSERT', 'Produk', 0, 0, 'unknown', '2024-07-19 05:41:01', 'Inserting a new product record'),
(79, 'INSERT', 'Produk', 0, 0, 'unknown', '2024-07-19 05:41:01', 'Inserting a new product record'),
(80, 'INSERT', 'Produk', 0, 0, 'unknown', '2024-07-19 05:41:01', 'Inserting a new product record'),
(81, 'INSERT', 'Produk', 0, 0, 'unknown', '2024-07-19 05:41:01', 'Inserting a new product record'),
(82, 'INSERT', 'Produk', 0, 0, 'unknown', '2024-07-19 05:41:01', 'Inserting a new product record'),
(83, 'INSERT', 'Produk', 0, 0, 'unknown', '2024-07-19 05:41:01', 'Inserting a new product record'),
(84, 'INSERT', 'Produk', 0, 0, 'unknown', '2024-07-19 05:41:01', 'Inserting a new product record'),
(85, 'INSERT', 'Produk', 0, 0, 'unknown', '2024-07-19 05:41:01', 'Inserting a new product record'),
(86, 'DELETE', 'orders', 1, 0, 'unknown', '2024-07-19 05:44:55', 'Deleted order with ID 1'),
(87, 'DELETE', 'orders', 3, 0, 'unknown', '2024-07-19 05:44:55', 'Deleted order with ID 3'),
(88, 'DELETE', 'orders', 4, 0, 'unknown', '2024-07-19 05:44:55', 'Deleted order with ID 4'),
(89, 'DELETE', 'orders', 5, 0, 'unknown', '2024-07-19 05:44:55', 'Deleted order with ID 5'),
(90, 'DELETE', 'orders', 6, 0, 'unknown', '2024-07-19 05:44:55', 'Deleted order with ID 6'),
(91, 'DELETE', 'orders', 7, 0, 'unknown', '2024-07-19 05:44:55', 'Deleted order with ID 7'),
(92, 'DELETE', 'orders', 8, 0, 'unknown', '2024-07-19 05:44:55', 'Deleted order with ID 8'),
(93, 'DELETE', 'orders', 9, 0, 'unknown', '2024-07-19 05:44:55', 'Deleted order with ID 9'),
(94, 'DELETE', 'orders', 10, 0, 'unknown', '2024-07-19 05:44:55', 'Deleted order with ID 10'),
(95, 'DELETE', 'orders', 14, 0, 'unknown', '2024-07-19 05:44:55', 'Deleted order with ID 14'),
(96, 'DELETE', 'orders', 15, 0, 'unknown', '2024-07-19 05:44:55', 'Deleted order with ID 15'),
(97, 'DELETE', 'orders', 16, 0, 'unknown', '2024-07-19 05:44:55', 'Deleted order with ID 16'),
(98, 'DELETE', 'orders', 17, 0, 'unknown', '2024-07-19 05:44:55', 'Deleted order with ID 17'),
(99, 'DELETE', 'orders', 18, 0, 'unknown', '2024-07-19 05:44:55', 'Deleted order with ID 18'),
(100, 'DELETE', 'orders', 19, 0, 'unknown', '2024-07-19 05:44:55', 'Deleted order with ID 19'),
(101, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(102, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(103, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(104, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(105, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(106, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(107, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(108, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(109, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(110, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(111, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(112, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(113, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(114, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(115, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(116, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(117, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(118, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(119, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(120, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(121, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(122, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(123, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(124, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(125, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(126, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(127, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(128, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(129, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(130, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(131, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(132, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(133, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(134, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(135, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(136, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(137, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(138, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(139, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(140, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(141, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(142, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(143, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(144, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(145, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(146, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(147, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(148, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(149, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 05:45:04', 'Inserted new order with ID 0'),
(150, 'INSERT', 'Employee', 0, 0, 'S.E.O', '2024-07-19 06:50:26', 'Inserting a new employee record'),
(151, 'UPDATE', 'Employee', 50, 50, 'Manajer', '2024-07-19 06:51:11', 'Updating an employee record'),
(152, 'DELETE', 'Employee', 51, 51, 'Supervisor', '2024-07-19 06:51:44', 'Deleting an employee record'),
(153, 'INSERT', 'Produk', 0, 0, 'unknown', '2024-07-19 06:52:52', 'Inserting a new product record'),
(154, 'UPDATE', 'inventory', 15, 15, 'unknown', '2024-07-19 06:53:17', 'Updating a product record'),
(155, 'DELETE', 'inventory', 16, 16, 'unknown', '2024-07-19 06:53:33', 'Deleting a product record'),
(156, 'UPDATE', 'orders', 20, 0, 'unknown', '2024-07-19 07:02:43', 'Updated order with ID 20'),
(157, 'UPDATE', 'orders', 20, 0, 'unknown', '2024-07-19 07:04:59', 'Updated order with ID 20'),
(158, 'UPDATE', 'orders', 20, 0, 'unknown', '2024-07-19 07:14:33', 'Updated order with ID 20'),
(159, 'UPDATE', 'orders', 21, 0, 'unknown', '2024-07-19 07:44:30', 'Updated order with ID 21'),
(160, 'UPDATE', 'orders', 22, 0, 'unknown', '2024-07-19 07:46:50', 'Updated order with ID 22'),
(161, 'UPDATE', 'orders', 23, 0, 'unknown', '2024-07-19 07:49:04', 'Updated order with ID 23'),
(162, 'UPDATE', 'orders', 23, 0, 'unknown', '2024-07-19 07:49:16', 'Updated order with ID 23'),
(163, 'UPDATE', 'orders', 22, 0, 'unknown', '2024-07-19 07:49:30', 'Updated order with ID 22'),
(164, 'DELETE', 'orders', 20, 0, 'unknown', '2024-07-19 07:51:42', 'Deleted order with ID 20'),
(165, 'INSERT', 'orders', 0, 0, 'unknown', '2024-07-19 07:52:13', 'Inserted new order with ID 0'),
(166, 'DELETE', 'orders', 22, 0, 'unknown', '2024-07-20 16:40:45', 'Deleted order with ID 22');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `email`, `username`, `password`) VALUES
(1, 'Admin User 1', 'admin@example.com', 'admin', 'admin');

--
-- Triggers `admin`
--
DELIMITER $$
CREATE TRIGGER `after_admin_delete` AFTER DELETE ON `admin` FOR EACH ROW BEGIN
    UPDATE activity_log SET user_id = OLD.id WHERE table_name = 'admin' AND record_id = OLD.id AND activity_type = 'DELETE';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_admin_insert` AFTER INSERT ON `admin` FOR EACH ROW BEGIN
    UPDATE activity_log SET user_id = NEW.id WHERE table_name = 'admin' AND record_id = NEW.id AND activity_type = 'INSERT';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_admin_update` AFTER UPDATE ON `admin` FOR EACH ROW BEGIN
    UPDATE activity_log SET user_id = NEW.id WHERE table_name = 'admin' AND record_id = NEW.id AND activity_type = 'UPDATE';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_admin_delete` BEFORE DELETE ON `admin` FOR EACH ROW BEGIN
    INSERT INTO activity_log (activity_type, table_name, record_id, user_id, user_role, description)
    VALUES ('DELETE', 'admin', OLD.id, OLD.id, 'unknown', 'Deleting an admin record');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_admin_insert` BEFORE INSERT ON `admin` FOR EACH ROW BEGIN
    INSERT INTO activity_log (activity_type, table_name, record_id, user_id, user_role, description)
    VALUES ('INSERT', 'admin', NEW.id, NEW.id, 'unknown', 'Inserting a new admin record');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_admin_update` BEFORE UPDATE ON `admin` FOR EACH ROW BEGIN
    INSERT INTO activity_log (activity_type, table_name, record_id, user_id, user_role, description)
    VALUES ('UPDATE', 'admin', OLD.id, OLD.id, 'unknown', 'Updating an admin record');
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `posisi` varchar(255) NOT NULL,
  `tanggal_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `nama`, `posisi`, `tanggal_masuk`) VALUES
(50, 'Ahmad Setiawan #Test Edit', 'Manajer', '2023-01-10'),
(52, 'Citra Dewi', 'Asisten Manajer', '2023-03-20'),
(53, 'Diana Kusuma', 'Staff HRD', '2023-04-25'),
(54, 'Eko Prasetyo', 'Akuntan', '2023-05-30'),
(55, 'Fajar Saputra', 'Marketing', '2023-06-05'),
(56, 'Gita Maharani', 'Sekretaris', '2023-07-10'),
(57, 'Hadi Wijaya', 'Kepala Gudang', '2023-08-15'),
(58, 'Ika Putri', 'Customer Service', '2023-09-20'),
(59, 'Joko Susanto', 'IT Support', '2023-10-25'),
(60, 'Kiki Amelia', 'Desainer Grafis', '2023-11-30'),
(61, 'Lia Rahmawati', 'Produksi', '2023-12-05'),
(62, 'Miko Anggoro', 'Quality Control', '2024-01-10'),
(63, 'Nina Sari', 'Analis', '2024-02-15'),
(64, 'Oki Seto', 'Penjualan', '2024-03-20'),
(65, 'Pandu Rizky', 'Logistik', '2024-04-25'),
(66, 'Qori Andika', 'Research and Development', '2024-05-30'),
(67, 'Rina Ayu', 'Keuangan', '2024-06-05'),
(68, 'Satria Adi', 'Sumber Daya Manusia', '2024-07-10'),
(69, 'Tina Widya', 'Humas', '2024-08-15'),
(70, 'Udin Purwanto', 'Pemeliharaan', '2024-09-20'),
(71, 'Vina Lestari', 'Administrasi', '2024-10-25'),
(72, 'Wawan Nugroho', 'Teknik', '2024-11-30'),
(73, 'Xenia Putra', 'Pengadaan', '2024-12-05'),
(74, 'Yoga Ardi', 'Manajemen Risiko', '2025-01-10'),
(75, 'Zahra Laila', 'Pengembangan Produk', '2025-02-15'),
(76, 'Ayu Kartika', 'Konsultan', '2025-03-20'),
(77, 'Bambang Sugiarto', 'Analis Data', '2025-04-25'),
(78, 'Cindy Lestari', 'Asisten Administrasi', '2025-05-30'),
(79, 'Dwi Haryanto', 'Teknisi', '2025-06-05'),
(80, 'Wisnu Nugroho 22.11.4942', 'S.E.O', '2024-03-08');

--
-- Triggers `employee`
--
DELIMITER $$
CREATE TRIGGER `after_employee_delete` AFTER DELETE ON `employee` FOR EACH ROW BEGIN
    UPDATE activity_log SET user_id = OLD.id, user_role = OLD.posisi WHERE table_name = 'Employee' AND record_id = OLD.id AND activity_type = 'DELETE';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_employee_insert` AFTER INSERT ON `employee` FOR EACH ROW BEGIN
    UPDATE activity_log SET user_id = NEW.id, user_role = NEW.posisi WHERE table_name = 'Employee' AND record_id = NEW.id AND activity_type = 'INSERT';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_employee_update` AFTER UPDATE ON `employee` FOR EACH ROW BEGIN
    UPDATE activity_log SET user_id = NEW.id, user_role = NEW.posisi WHERE table_name = 'Employee' AND record_id = NEW.id AND activity_type = 'UPDATE';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_employee_delete` BEFORE DELETE ON `employee` FOR EACH ROW BEGIN
    INSERT INTO activity_log (activity_type, table_name, record_id, user_id, user_role, description)
    VALUES ('DELETE', 'Employee', OLD.id, OLD.id, OLD.posisi, 'Deleting an employee record');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_employee_insert` BEFORE INSERT ON `employee` FOR EACH ROW BEGIN
    INSERT INTO activity_log (activity_type, table_name, record_id, user_id, user_role, description)
    VALUES ('INSERT', 'Employee', NEW.id, NEW.id, NEW.posisi, 'Inserting a new employee record');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_employee_update` BEFORE UPDATE ON `employee` FOR EACH ROW BEGIN
    INSERT INTO activity_log (activity_type, table_name, record_id, user_id, user_role, description)
    VALUES ('UPDATE', 'Employee', OLD.id, OLD.id, OLD.posisi, 'Updating an employee record');
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `nama_produk`, `stok`, `harga`) VALUES
(15, 'Es Teh Manis #Tes Edit', 100, 5000.00),
(17, 'Es Teh Susu', 60, 8000.00),
(18, 'Es Teh Hijau', 70, 6500.00),
(19, 'Es Teh Melati', 50, 7000.00),
(20, 'Es Teh Jahe', 40, 7500.00),
(21, 'Es Teh Buah', 90, 8500.00),
(22, 'Es Teh Jeruk Nipis', 80, 7000.00),
(23, 'Es Teh Vanila', 60, 8000.00),
(24, 'Es Teh Stroberi', 70, 9000.00),
(25, 'Es Teh Mangga', 50, 8500.00),
(26, 'Es Teh Lychee', 40, 10000.00),
(27, 'Es Teh Kelapa', 90, 9500.00),
(28, 'Es Teh Tarik', 80, 7500.00),
(29, 'Es Teh Markisa', 60, 9000.00),
(30, 'Es Teh #Tes Toast', 43, 4000.00);

--
-- Triggers `inventory`
--
DELIMITER $$
CREATE TRIGGER `after_produk_delete` AFTER DELETE ON `inventory` FOR EACH ROW BEGIN
    UPDATE activity_log SET user_id = OLD.id WHERE table_name = 'inventory' AND record_id = OLD.id AND activity_type = 'DELETE';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_produk_insert` AFTER INSERT ON `inventory` FOR EACH ROW BEGIN
    UPDATE activity_log SET user_id = NEW.id WHERE table_name = 'inventory' AND record_id = NEW.id AND activity_type = 'INSERT';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_produk_update` AFTER UPDATE ON `inventory` FOR EACH ROW BEGIN
    UPDATE activity_log SET user_id = NEW.id WHERE table_name = 'inventory' AND record_id = NEW.id AND activity_type = 'UPDATE';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_produk_delete` BEFORE DELETE ON `inventory` FOR EACH ROW BEGIN
    INSERT INTO activity_log (activity_type, table_name, record_id, user_id, user_role, description)
    VALUES ('DELETE', 'inventory', OLD.id, OLD.id, 'unknown', 'Deleting a product record');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_produk_insert` BEFORE INSERT ON `inventory` FOR EACH ROW BEGIN
    INSERT INTO activity_log (activity_type, table_name, record_id, user_id, user_role, description)
    VALUES ('INSERT', 'Produk', NEW.id, NEW.id, 'unknown', 'Inserting a new product record');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_produk_update` BEFORE UPDATE ON `inventory` FOR EACH ROW BEGIN
    INSERT INTO activity_log (activity_type, table_name, record_id, user_id, user_role, description)
    VALUES ('UPDATE', 'inventory', OLD.id, OLD.id, 'unknown', 'Updating a product record');
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `total_harga` decimal(10,2) NOT NULL,
  `order_date` date NOT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `nama_produk`, `total_harga`, `order_date`, `qty`) VALUES
(21, 'Es Teh Lemon', 8.00, '2024-05-17', 0),
(23, 'Es Teh Hijau', 39000.00, '2024-05-04', 6),
(24, 'Es Teh Melati', 70000.00, '2024-05-05', 10),
(25, 'Es Teh Jahe', 37500.00, '2024-05-06', 5),
(26, 'Es Teh Buah', 59500.00, '2024-05-07', 7),
(27, 'Es Teh Jeruk Nipis', 49000.00, '2024-05-08', 7),
(28, 'Es Teh Vanila', 32000.00, '2024-05-09', 4),
(29, 'Es Teh Stroberi', 45000.00, '2024-05-10', 5),
(30, 'Es Teh Mangga', 42500.00, '2024-05-11', 5),
(31, 'Es Teh Lychee', 50000.00, '2024-05-12', 5),
(32, 'Es Teh Kelapa', 85500.00, '2024-05-13', 9),
(33, 'Es Teh Tarik', 52500.00, '2024-05-14', 7),
(34, 'Es Teh Markisa', 90000.00, '2024-05-15', 10),
(35, 'Es Teh Manis', 25000.00, '2024-05-16', 5),
(36, 'Es Teh Lemon', 49000.00, '2024-05-17', 7),
(37, 'Es Teh Susu', 48000.00, '2024-05-18', 6),
(38, 'Es Teh Hijau', 32500.00, '2024-05-19', 5),
(39, 'Es Teh Melati', 42000.00, '2024-05-20', 6),
(40, 'Es Teh Jahe', 22500.00, '2024-05-21', 3),
(41, 'Es Teh Buah', 59500.00, '2024-05-22', 7),
(42, 'Es Teh Jeruk Nipis', 70000.00, '2024-05-23', 10),
(43, 'Es Teh Vanila', 56000.00, '2024-05-24', 7),
(44, 'Es Teh Stroberi', 63000.00, '2024-05-25', 7),
(45, 'Es Teh Mangga', 51000.00, '2024-05-26', 6),
(46, 'Es Teh Lychee', 60000.00, '2024-05-27', 6),
(47, 'Es Teh Kelapa', 57000.00, '2024-05-28', 6),
(48, 'Es Teh Tarik', 7500.00, '2024-05-29', 1),
(49, 'Es Teh Markisa', 54000.00, '2024-05-30', 6),
(50, 'Es Teh Manis', 35000.00, '2024-06-01', 7),
(51, 'Es Teh Lemon', 56000.00, '2024-06-02', 8),
(52, 'Es Teh Susu', 32000.00, '2024-06-03', 4),
(53, 'Es Teh Hijau', 6500.00, '2024-06-04', 1),
(54, 'Es Teh Melati', 56000.00, '2024-06-05', 8),
(55, 'Es Teh Jahe', 37500.00, '2024-06-06', 5),
(56, 'Es Teh Buah', 59500.00, '2024-06-07', 7),
(57, 'Es Teh Jeruk Nipis', 21000.00, '2024-06-08', 3),
(58, 'Es Teh Vanila', 48000.00, '2024-06-09', 6),
(59, 'Es Teh Stroberi', 9000.00, '2024-06-10', 1),
(60, 'Es Teh Mangga', 17000.00, '2024-06-11', 2),
(61, 'Es Teh Lychee', 30000.00, '2024-06-12', 3),
(62, 'Es Teh Kelapa', 19000.00, '2024-06-13', 2),
(63, 'Es Teh Tarik', 45000.00, '2024-06-14', 6),
(64, 'Es Teh Markisa', 4500.00, '2024-06-15', 1),
(65, 'Es Teh Manis', 25000.00, '2024-06-16', 5),
(66, 'Es Teh Lemon', 35000.00, '2024-06-17', 5),
(67, 'Es Teh Susu', 40000.00, '2024-06-18', 5),
(68, 'Es Teh Hijau', 19500.00, '2024-06-19', 3),
(69, 'Es Teh Susu', 40000.00, '2024-07-27', 5);

--
-- Triggers `orders`
--
DELIMITER $$
CREATE TRIGGER `before_delete_activity_log` BEFORE DELETE ON `orders` FOR EACH ROW BEGIN
    INSERT INTO activity_log (activity_type, table_name, record_id, user_id, user_role, description)
    VALUES ('DELETE', 'orders', OLD.id, 'unknown', 'unknown', CONCAT('Deleted order with ID ', OLD.id));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_insert_activity_log` BEFORE INSERT ON `orders` FOR EACH ROW BEGIN
    INSERT INTO activity_log (activity_type, table_name, record_id, user_id, user_role, description)
    VALUES ('INSERT', 'orders', NEW.id, 'unknown', 'unknown', CONCAT('Inserted new order with ID ', NEW.id));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_update_activity_log` BEFORE UPDATE ON `orders` FOR EACH ROW BEGIN
    INSERT INTO activity_log (activity_type, table_name, record_id, user_id, user_role, description)
    VALUES ('UPDATE', 'orders', NEW.id, 'unknown', 'unknown', CONCAT('Updated order with ID ', NEW.id));
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
