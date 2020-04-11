-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 11, 2020 at 05:53 PM
-- Server version: 10.3.17-MariaDB-log
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yellowzacket_rent`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `dob` varchar(30) DEFAULT NULL,
  `emailid` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `mobile_no` varchar(25) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `zip_code` varchar(15) DEFAULT NULL,
  `status` varchar(10) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_active` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first_name`, `last_name`, `dob`, `emailid`, `password`, `image`, `mobile_no`, `address`, `city`, `state`, `country`, `zip_code`, `status`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 'Super admin', 'Dsoi', '16/08/1945', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'images/admin_image/1.jpg', '9999098890', 'jabalpur', 'jabalpur', 'Madhya pradesh', 'india', '482002', 'yes', '2020-03-23 10:46:54', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `allotment`
--

CREATE TABLE `allotment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `building_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `rent` varchar(255) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=active 2=inactive',
  `createdat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allotment`
--

INSERT INTO `allotment` (`id`, `customer_id`, `employee_id`, `building_id`, `room_id`, `amount`, `rent`, `from_date`, `to_date`, `status`, `createdat`) VALUES
(2, 17, 8, 6, 25, '11000', '12000', '2018-07-01', '2018-07-01', 2, '2020-03-27 09:31:46'),
(3, 1, 1, 10, 141, '11000', '1', '2020-03-01', '2020-03-22', 2, '2020-03-27 09:31:46'),
(4, 18, 7, 6, 22, '7500', '7000', '2020-03-18', '2020-03-23', 2, '2020-03-27 15:07:18'),
(5, 1, 1, 10, 141, '11000', '10000', '2020-04-06', '2020-04-07', 2, '2020-04-01 07:16:51'),
(6, 19, 8, 10, 142, '11000', '9000', '2020-01-01', '2020-01-01', 2, '2020-04-01 10:30:24'),
(7, 19, 8, 10, 142, '11000', '9000', '2020-01-01', '2020-01-01', 2, '2020-04-01 10:31:49'),
(8, 19, 8, 10, 142, '11000', '9000', '2020-01-01', '2020-01-01', 2, '2020-04-01 10:34:22'),
(9, 19, 8, 10, 143, '9000', '9000', '2020-04-01', '2020-04-01', 2, '2020-04-02 15:18:52'),
(10, 18, 8, 1, 146, '20000', '18000', '2020-04-01', '2020-04-01', 1, '2020-04-02 15:32:57'),
(11, 19, 1, 10, 143, '9000', '9000', '2020-04-01', '2020-04-30', 1, '2020-04-03 16:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`id`, `name`, `address`, `status`) VALUES
(1, '41D1', '41D1', 1),
(2, '41F1', '41F1', 1),
(3, '41G1', '41G1', 1),
(4, '41G2', '41G2', 1),
(5, '41G3', '41G3', 1),
(6, '40C1', '40C1', 1),
(7, 'Common', 'Common', 1),
(8, 'Noida', 'Noida Home', 1),
(9, 'GGN', 'GGN', 1),
(10, '41J1', 'J-61 sector - 41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `buil_details`
--

CREATE TABLE `buil_details` (
  `id` int(11) NOT NULL,
  `Bullding_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rent` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `booking_status` enum('1','2') NOT NULL COMMENT '1 for avilable 2 for booked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buil_details`
--

INSERT INTO `buil_details` (`id`, `Bullding_id`, `name`, `rent`, `status`, `booking_status`) VALUES
(1, 6, '40C1-G11', 11000, 1, '1'),
(2, 6, '40C1-G12', 11000, 1, '1'),
(3, 6, '40C1-G21', 8500, 1, '1'),
(4, 6, '40C1-G22', 8500, 1, '1'),
(5, 6, '40C1-G23', 8500, 1, '1'),
(6, 6, '40C1-G31', 9000, 1, '1'),
(7, 6, '40C1-G32', 9000, 1, '1'),
(8, 6, '40C1-G41', 7500, 1, '1'),
(9, 6, '40C1-G42', 7500, 1, '1'),
(10, 6, '40C1-G43', 7500, 1, '1'),
(11, 6, '40C1-G51', 11000, 1, '1'),
(12, 6, '40C1-F11', 11000, 1, '1'),
(13, 6, '40C1-F12', 11000, 1, '1'),
(14, 6, '40C1-F21', 8500, 1, '1'),
(15, 6, '40C1-F22', 8500, 1, '1'),
(16, 6, '40C1-F23', 8500, 1, '1'),
(18, 6, '40C1-F31', 9000, 1, '1'),
(21, 6, '40C1-F32', 9000, 1, '1'),
(22, 6, '40C1-F41', 7500, 1, '1'),
(23, 6, '40C1-F42', 7500, 1, '1'),
(24, 6, '40C1-F43', 7500, 1, '1'),
(25, 6, '40C1-F51', 11000, 1, '1'),
(40, 1, '41D1-F11', 20000, 1, '2'),
(41, 1, '41D1-F21', 13500, 1, '1'),
(42, 1, '41D1-F22', 13500, 1, '1'),
(43, 1, '41D1-F31', 14500, 1, '1'),
(44, 1, '41D1-F32', 14500, 1, '1'),
(45, 1, '41D1-F41', 14500, 1, '1'),
(46, 1, '41D1-F42', 14500, 1, '1'),
(47, 1, '41D1-S11', 11500, 1, '1'),
(48, 1, '41D1-S12', 11500, 1, '1'),
(49, 1, '41D1-S21', 13000, 1, '1'),
(50, 1, '41D1-S22', 13000, 1, '1'),
(51, 1, '41D1-S31', 10500, 1, '1'),
(52, 1, '41D1-S32', 10500, 1, '1'),
(53, 1, '41D1-S33', 10500, 1, '1'),
(54, 1, '41D1-S41', 13000, 1, '1'),
(55, 1, '41D1-S42', 13000, 1, '1'),
(56, 1, '41D1-S51', 11500, 1, '1'),
(57, 1, '41D1-T11', 8000, 1, '1'),
(58, 2, '41F1-G11', 10500, 1, '1'),
(59, 2, '41F1-G21', 7000, 1, '1'),
(60, 2, '41F1-G22', 7000, 1, '1'),
(61, 2, '41F1-G23', 7000, 1, '1'),
(63, 2, '41F1-G31', 8500, 1, '1'),
(64, 2, '41F1-G32', 8500, 1, '1'),
(65, 2, '41F1-G33', 8500, 1, '1'),
(66, 2, '41F1-F11', 11000, 1, '1'),
(67, 2, '41F1-F12', 11000, 1, '1'),
(68, 2, '41F1-F21', 10500, 1, '1'),
(69, 2, '41F1-F22', 10500, 1, '1'),
(70, 2, '41F1-F31', 10500, 1, '1'),
(71, 2, '41F1-F32', 10500, 1, '1'),
(72, 2, '41F1-F41', 10000, 1, '1'),
(73, 2, '41F1-F42', 10000, 1, '1'),
(74, 2, '41F1-S11', 7000, 1, '1'),
(75, 3, '41G1-G11', 10000, 1, '1'),
(76, 3, '41G1-G12', 10000, 1, '1'),
(77, 3, '41G1-G21', 10000, 1, '1'),
(78, 3, '41G1-G22', 10000, 1, '1'),
(79, 3, '41G1-G31', 10000, 1, '1'),
(80, 3, '41G1-G32', 10000, 1, '1'),
(81, 3, '41G1-G41', 10000, 1, '1'),
(82, 3, '41G1-G42', 10000, 1, '1'),
(83, 3, '41G1-F11', 13000, 1, '1'),
(84, 3, '41G1-F21', 10500, 1, '1'),
(85, 3, '41G1-F22', 10500, 1, '1'),
(86, 3, '41G1-F31', 9500, 1, '1'),
(87, 3, '41G1-F32', 9500, 1, '1'),
(88, 3, '41G1-F41', 10000, 1, '1'),
(89, 3, '41G1-F42', 10000, 1, '1'),
(90, 3, '41G1-F51', 12500, 1, '1'),
(91, 3, '41G1-S11', 11500, 1, '1'),
(92, 3, '41G1-S12', 11500, 1, '1'),
(93, 3, '41G1-S21', 9000, 1, '1'),
(94, 3, '41G1-S22', 9000, 1, '1'),
(95, 3, '41G1-S23', 9000, 1, '1'),
(96, 4, '41G2-G11', 7000, 1, '1'),
(97, 4, '41G2-G12', 7000, 1, '1'),
(98, 4, '41G2-G13', 7000, 1, '1'),
(99, 4, '41G2-G21', 9000, 1, '1'),
(100, 4, '41G2-G22', 9000, 1, '1'),
(101, 4, '41G2-G31', 9500, 1, '1'),
(102, 4, '41G2-G33', 9500, 1, '1'),
(103, 4, '41G2-F11', 8500, 1, '1'),
(104, 3, '41G2-F12', 8500, 1, '1'),
(105, 4, '41G2-F21', 9000, 1, '1'),
(106, 4, '41G2-F22', 9000, 1, '1'),
(107, 4, '41G2-F31', 10500, 1, '1'),
(108, 4, '41G2-F32', 10500, 1, '1'),
(109, 4, '41G2-F41', 9000, 1, '1'),
(110, 4, '41G2-S11', 8500, 1, '1'),
(111, 4, '41G2-S12', 8500, 1, '1'),
(112, 4, '41G2-S21', 9000, 1, '1'),
(113, 4, '41G2-S22', 9000, 1, '1'),
(114, 4, '41G2-S31', 9500, 1, '1'),
(115, 4, '41G2-S32', 9500, 1, '1'),
(116, 4, '41G2-S41', 10500, 1, '1'),
(121, 5, '41G3-G11', 11500, 1, '1'),
(122, 5, '41G3-G12', 11500, 1, '1'),
(123, 5, '41G3-G21', 12500, 1, '1'),
(124, 5, '41G3-G22', 12500, 1, '1'),
(125, 5, '41G3-G31', 12500, 1, '1'),
(126, 5, '41G3-G32', 12500, 1, '1'),
(127, 5, '41G3-F11', 11000, 1, '1'),
(128, 5, '41G3-F12', 11000, 1, '1'),
(129, 5, '41G3-F21', 12000, 1, '1'),
(130, 5, '41G3-F22', 12000, 1, '1'),
(131, 5, '41G3-F31', 12500, 1, '1'),
(132, 5, '41G3-F32', 12500, 1, '1'),
(133, 5, '41G3-S11', 11000, 1, '1'),
(134, 5, '41G3-S12', 11000, 1, '1'),
(135, 5, '41G3-S21', 12000, 1, '1'),
(136, 5, '41G3-S22', 12000, 1, '1'),
(137, 5, '41G3-S31', 12000, 1, '1'),
(138, 5, '41G3-S32', 12000, 1, '1'),
(139, 5, '41G3-S41', 12000, 1, '1'),
(140, 5, '41G3-S51', 12000, 1, '1'),
(141, 10, '41J1-G11', 11000, 1, '1'),
(142, 10, '41J1-G12', 11000, 1, '1'),
(143, 10, '41J1-G21', 9000, 1, '2'),
(144, 10, '41J1-G22', 9000, 1, '1'),
(145, 10, '41J1-G23', 9000, 1, '1'),
(146, 1, '41D1-F11', 20000, 1, '2');

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `log_type` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `building_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `com_category` int(11) NOT NULL,
  `com_subcategory` int(11) NOT NULL,
  `com_status` int(11) NOT NULL,
  `com_details` text NOT NULL,
  `asset_id` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `bill` varchar(255) DEFAULT NULL,
  `warranty` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `closure_remark` varchar(255) DEFAULT NULL,
  `closure_remark_by` varchar(255) DEFAULT NULL,
  `agreed_amount` bigint(20) DEFAULT NULL,
  `tat` int(11) DEFAULT NULL,
  `icr` varchar(255) DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL,
  `assign_vender` int(11) DEFAULT NULL,
  `pri_status` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `standard` int(11) DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `location` text NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `part_details` text DEFAULT NULL,
  `material_cost` int(11) DEFAULT NULL,
  `labour_cost` int(11) DEFAULT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp(),
  `re_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`id`, `log_id`, `log_type`, `date`, `building_id`, `room_id`, `com_category`, `com_subcategory`, `com_status`, `com_details`, `asset_id`, `model`, `bill`, `warranty`, `image`, `closure_remark`, `closure_remark_by`, `agreed_amount`, `tat`, `icr`, `closed_by`, `assign_vender`, `pri_status`, `category`, `standard`, `vendor_name`, `shop_name`, `mobile`, `location`, `amount`, `part_details`, `material_cost`, `labour_cost`, `createdat`, `re_amount`) VALUES
(1, 0, 0, '07-04-2020', 9, 2321, 1, 1, 1, 'dfdfdsf', '2141', '', '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', 0, '', 0, 0, '2020-04-07 09:55:16', 5000),
(2, 0, 0, '09-04-2020', 10, 2321, 1, 1, 3, 'fgfgf', '2141', '', '', '', '', '', '', 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', 0, '', 0, 0, '2020-04-07 10:39:54', 0),
(3, 0, 0, '07-04-2020', 8, 2321, 2, 2, 2, 'dfdf', '2141', '', 'sadsa', '', 'uploads/5e8c5ab507e70_download (3).jpg', '', '', 0, 0, '', 0, 0, 0, 0, 0, '', '', '', '', 0, '', 0, 0, '2020-04-07 10:49:25', 3000),
(4, 0, 0, '07-04-2020', 6, 2, 2, 2, 1, 'Test Complaint Details', 'AssetId1', 'Model1', 'BillDetails1', 'Warranty1', '', 'Closure Remark 1', '', 0, 0, '', 1, 1, 0, 1, 0, 'Naval Kishor (Jivan)', '8826419656', '', '143 Adarsh Kunj Barola Sector - 49\r\nNoida - 201301', 0, '', 0, 0, '2020-04-07 17:33:26', 100),
(5, 0, 0, '07-04-2020', 6, 2, 2, 2, 1, 'Test Complaint Details', 'AssetId1', 'Model1', 'BillDetails1', 'Warranty1', '', 'Closure Remark 1', '', 0, 0, '', 1, 1, 0, 1, 0, 'Naval Kishor (Jivan)', '8826419656', '', '143 Adarsh Kunj Barola Sector - 49\r\nNoida - 201301', 0, '', 0, 0, '2020-04-07 17:33:37', 100),
(6, 6, 4, '04-04-2020', 10, 141, 2, 2, 1, 'dfdf', '12', '', 'sadsa', '', '', '', '', 0, 0, '', 0, 1, 0, 1, 1, 'Naval Kishor (Jivan)', '8826419656', 'erefsfdsf', '143 Adarsh Kunj Barola Sector - 49\r\nNoida - 201301', 4000, 'dgfs', 2000, 2000, '2020-04-08 13:45:52', 0),
(7, 6, 4, '08-04-2020', 10, 141, 1, 1, 2, 'change pump', '', '', NULL, '', '', '', '', 0, 0, '', 0, 1, 0, 2, 2, 'amar', 'this is a field for vendor comment 9303119152', '9303119152', 'xfddf', 800, 'Anchor', 300, 500, '2020-04-10 17:17:23', 0),
(8, 17, 3, '09-04-2020', 10, 142, 1, 1, 1, 'change it not working', '', '', '', '', '', '', '', 0, 0, '', 0, 1, 0, 2, 2, 'amar', '9303119152', '', 'xfddf', 0, '', 0, 0, '2020-04-08 19:01:09', 0),
(9, 17, 3, '10-04-2020', 10, 141, 2, 2, 1, 'fgfdg', '2141', 'Expense_model', NULL, '', 'uploads/5e90b9a300bec_bg_2.jpg', '', '', 0, 0, '', 0, 0, 0, 0, NULL, '', '', '', '', 0, '', 0, 0, '2020-04-10 18:23:31', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `com_category`
--

CREATE TABLE `com_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_category`
--

INSERT INTO `com_category` (`id`, `name`, `status`) VALUES
(1, 'ac repair', 1),
(2, 'Electric Equipment', 1);

-- --------------------------------------------------------

--
-- Table structure for table `com_sub_category`
--

CREATE TABLE `com_sub_category` (
  `id` int(11) NOT NULL,
  `com_cat_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_sub_category`
--

INSERT INTO `com_sub_category` (`id`, `com_cat_id`, `name`, `status`) VALUES
(1, 1, 'pump', 1),
(2, 2, 'microwave', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pri_mobile` bigint(20) NOT NULL,
  `whatsup_no` bigint(255) NOT NULL,
  `sec_mobile` bigint(20) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `aadharcard_no` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=active 2=inactive 3=alloted',
  `booking_status` int(11) NOT NULL DEFAULT 1 COMMENT '1=available 2=booked 0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `pri_mobile`, `whatsup_no`, `sec_mobile`, `dob`, `address`, `aadharcard_no`, `image`, `status`, `booking_status`) VALUES
(1, 'Dummy', 'stayinclassluxurypg@gmail.com', 123456, 321, 123, '2009-08-25', 'F-32 sector - 41', 123456, '', 2, 0),
(2, 'Bhumika', 'abcd@gmail.com', 9958987511, 9958987511, 9958987511, '1998-08-05', '', 123, '', 1, 1),
(3, 'Shivangini Agarwal', 'abcd@gmal.com', 9732304710, 9732304710, 9732304710, '2001-04-16', '', 1234, '', 1, 1),
(4, 'Samarpita', 'abcd@gmal.com', 9568524055, 9568524055, 9568524055, '1995-06-29', '', 1234, '', 1, 1),
(5, 'Manisha Goyal', 'abcd@gmal.com', 7665919488, 7665919488, 7665919488, '1997-06-12', '', 12345, '', 1, 1),
(6, 'Naina Kumari', 'abcd@gmal.com', 9958365943, 9958365943, 9958365943, '1995-08-15', '', 12345, '', 1, 1),
(7, 'Arpita Jaiswal', 'abcd@gmal.com', 8800779299, 8800779299, 8800779299, '2018-08-12', '', 12345, '', 1, 1),
(8, 'Pragya Singh', 'abcd@gmal.com', 8449069357, 8449069357, 8449069357, '1997-08-19', '', 12345, '', 1, 1),
(9, 'Khushboo Iqbal', 'abcd@gmal.com', 7006435862, 7006435862, 7006435862, '1997-02-06', '', 12345, '', 1, 1),
(10, 'Nikita Jaiswal', 'abcd@gmal.com', 8527110909, 8527110909, 8527110909, '1992-03-25', '', 12345, '', 1, 1),
(11, 'Sambhavi  Nanda', 'abcd@gmal.com', 9097890366, 9097890366, 9097890366, '1995-01-27', '', 12345, '', 1, 1),
(12, 'Tanya Saxena', 'abcd@gmal.com', 9818079172, 9818079172, 9818079172, '1998-08-01', '', 12345, '', 1, 1),
(13, 'Pooja Missing', 'abcd@gmal.com', 8800209459, 8800209459, 8800209459, '1994-10-20', '', 12345, '', 1, 1),
(14, 'Antra Nag', 'abcd@gmal.com', 9460258301, 9460258301, 9460258301, '1994-03-06', '', 12345, '', 1, 1),
(15, 'Pragya Singh 2', 'abcd@gmal.com', 8295051761, 8295051761, 8295051761, '1998-01-25', '', 12345, '', 1, 1),
(16, 'Sunita Missing', 'abcd@gmal.com', 9999098810, 9999098810, 9999098810, '2020-03-01', '', 12345, '', 1, 1),
(17, 'Megha Basu', 'abcd@gmal.com', 7838039095, 7838039095, 7838039095, '1993-04-17', '', 1234, '', 1, 1),
(18, 'Shreya Gupta', 'abcd@gmal.com', 9411442193, 9411442193, 9411442193, '1988-01-27', '', 1234, '', 1, 2),
(19, 'Sahil Gupta', 'abcd@gmail.com', 9758777845, 9758777845, 9758777845, '1990-01-01', 'Noida', 12345, 'uploads/5e846ce9f3c09_Sahil gupta.jpg', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `phone`, `email`, `address`, `type`, `status`) VALUES
(1, 'Mohit', 9810565610, 'gguptamohit@gmail.com', 'NA', 4, 1),
(2, 'Rajni Poddar', 9999098890, 'stayinclassluxuryhome@gmail.com', 'NA', 1, 1),
(3, 'Naveen Poddar', 9999098890, 'stayinclassluxuryhome@gmail.com', 'Na', 1, 1),
(4, 'Suresh Gupta', 9312360821, 'stayinclassluxuryhome@gmail.com', 'na', 1, 1),
(5, 'Sneh Gupta', 9999098860, 'stayinclassluxuryhome@gmail.com', 'NA', 1, 1),
(6, 'Pallavi P', 9873913094, 'stayinclassluxuryhome@gmail.com', 'NA', 4, 1),
(7, 'Abhimanyu', 8800779299, 'stayinclassluxurypg@gmail.com', 'NA', 1, 1),
(8, 'Yogesh', 9999098840, 'stayinclassluxurypg@gmail.com', 'NA', 4, 1),
(11, 'Arun', 9999098810, 'stayinclassluxurypg@gmail.com', 'na', 2, 1),
(12, 'admin', 9303119152, 'admin@matrimonial.com', 'jabalpur', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `emp_to_emp`
--

CREATE TABLE `emp_to_emp` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `other_emp_id` int(11) NOT NULL,
  `income` int(11) NOT NULL,
  `expense` int(11) NOT NULL,
  `mode` int(11) NOT NULL,
  `other_mode` int(11) NOT NULL,
  `comment` text NOT NULL,
  `payment_status` int(11) NOT NULL DEFAULT 1,
  `delete_status` int(11) NOT NULL DEFAULT 1 COMMENT '2=delete',
  `reason` text NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp(),
  `date` date DEFAULT NULL,
  `date_diff` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_to_emp`
--

INSERT INTO `emp_to_emp` (`id`, `transaction_id`, `employee_id`, `other_emp_id`, `income`, `expense`, `mode`, `other_mode`, `comment`, `payment_status`, `delete_status`, `reason`, `createdat`, `date`, `date_diff`) VALUES
(1, 1, 8, 11, 0, 6000, 1, 1, '  Handover to Arun', 1, 1, '', '2020-03-24 13:19:33', NULL, 0),
(2, 1, 11, 8, 6000, 0, 1, 1, '  Handover to Arun', 1, 1, '', '2020-03-24 13:19:33', NULL, 0),
(3, 3, 11, 1, 0, 1200, 2, 2, '  Transfer amount 1200', 1, 1, '', '2020-03-24 13:21:51', NULL, 0),
(4, 3, 1, 11, 1200, 0, 2, 2, '  Transfer amount 1200', 1, 1, '', '2020-03-24 13:21:51', NULL, 0),
(5, 5, 8, 7, 0, 2800, 3, 3, '  Transfer 2800 Rs /-', 1, 1, '', '2020-03-24 13:25:46', NULL, 0),
(6, 5, 7, 8, 2800, 0, 3, 3, '  Transfer 2800 Rs /-', 1, 1, '', '2020-03-24 13:25:46', NULL, 0),
(7, 7, 11, 8, 0, 500, 1, 1, '  handover', 1, 1, '', '2020-03-24 13:44:41', NULL, 0),
(8, 7, 8, 11, 500, 0, 1, 1, '  handover', 1, 1, '', '2020-03-24 13:44:41', NULL, 0),
(9, 9, 7, 11, 0, 200, 1, 1, '  sdns', 1, 1, '', '2020-03-25 19:31:17', '2020-03-28', 2),
(10, 9, 11, 7, 200, 0, 1, 1, '  sdns', 1, 1, '', '2020-03-25 19:31:17', NULL, 0),
(11, 11, 8, 11, 0, 200, 1, 1, '  transfer amount 200', 1, 1, '', '2020-03-26 07:01:13', '2020-03-24', 2),
(12, 11, 11, 8, 200, 0, 1, 1, '  transfer amount 200', 1, 1, '', '2020-03-26 07:01:13', NULL, 0),
(13, 13, 1, 11, 0, 100, 1, 1, '  ', 1, 1, '', '2020-04-07 10:41:34', '2020-04-07', 0),
(14, 13, 11, 1, 100, 0, 1, 1, '  ', 1, 1, '', '2020-04-07 10:41:34', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `category` int(11) NOT NULL,
  `subcategory` int(11) DEFAULT NULL,
  `Item_detail` text NOT NULL,
  `paying_employee` int(11) NOT NULL,
  `amount_paid` bigint(11) NOT NULL,
  `payment_mode` int(11) NOT NULL,
  `ref_no` varchar(255) DEFAULT NULL,
  `building_id` int(11) NOT NULL,
  `room_id` varchar(255) NOT NULL,
  `room_type` bigint(11) NOT NULL,
  `sic_bill` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `vendor_bill` varchar(255) DEFAULT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `vendor_type` varchar(255) DEFAULT NULL,
  `location` text DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `asset_id` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `manufacturing_company` varchar(255) DEFAULT NULL,
  `warranty` varchar(255) DEFAULT NULL,
  `stayinclass_asset_id` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL COMMENT '1=emp to vender ,2=vender to emp',
  `delete_status` int(11) NOT NULL DEFAULT 1 COMMENT '2=delete',
  `reason` text NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_diff` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `date`, `transaction_id`, `category`, `subcategory`, `Item_detail`, `paying_employee`, `amount_paid`, `payment_mode`, `ref_no`, `building_id`, `room_id`, `room_type`, `sic_bill`, `comment`, `vendor_bill`, `shop_name`, `vendor_type`, `location`, `mobile`, `asset_id`, `model`, `manufacturing_company`, `warranty`, `stayinclass_asset_id`, `type`, `delete_status`, `reason`, `createdat`, `date_diff`) VALUES
(1, '2020-03-24', 1, 11, 35, 'CT100 Services', 11, 1860, 1, '0', 7, '0', 1, '0', 'CT100 Services ', '', '', '0', '', '', '0', '', '', '', '0', 1, 1, '', '2020-03-24 13:02:57', 0),
(2, '2020-03-20', 2, 1, 3, 'Brush 2 Set Each 150 Rs/- Total 6', 11, 300, 1, '1234', 7, '0', 1, '0', 'Brush 2 Set Each 150 Rs/- Total 6', '', '', '0', '', '', '0', '', '', '', '0', 1, 1, '', '2020-03-24 13:09:28', 0),
(3, '2020-03-24', 3, 2, 0, 'Washroom seepage Problem', 11, 500, 1, '1234', 6, '40', 1, '0', 'Washroom seepage Problem 40C1-G2', '', '', '0', '', '', '0', '', '', '', '0', 1, 1, '', '2020-03-24 13:34:19', 0),
(4, '2020-03-10', 4, 1, 4, 'Ro Repair', 11, 700, 1, '12345', 2, '41', 1, '0', 'Ro Repair ', '', '', '0', '', '', '0', 'Aqua', '', '', '0', 1, 1, '', '2020-03-24 13:54:11', 0),
(5, '2020-03-05', 5, 1, 49, 'Gas Refil', 8, 2000, 1, '12345', 2, '41', 1, '0', 'Gas Refil', '', '', '0', '', '', '0', '', '', '', '0', 1, 1, '', '2020-03-24 14:06:40', 0),
(6, '2020-03-25', 6, 11, 40, 'Pulsar Petrol', 8, 290, 1, '0', 7, '0', 1, '0', 'Pulsar Petrol ', '', '', '0', '', '', '9495', '', '', '', '0', 1, 1, '', '2020-03-26 07:16:54', 1),
(7, '2020-03-25', 7, 5, 20, 'Hand sanitizer', 11, 165, 1, '0', 7, '0', 1, '0', 'Hand sanitizer', '', '', '0', '', '', '0', '', '', '', '0', 1, 1, '', '2020-03-26 07:20:29', 1),
(8, '2020-03-22', 8, 1, 2, 'Led Tv Repair', 8, 500, 1, '0', 2, '41', 1, '0', 'motherboard change ', '1234', 'AtoZ ', '0', 'chandnichowk ', '8800779299', '0', 'Samsung', '', '1yrs', '0', 1, 1, '', '2020-03-26 07:47:35', 4),
(9, '2020-03-26', 9, 1, 5, 'Geyser Repair', 7, 600, 1, '0', 6, '40', 1, '0', 'Geyser Repair-Gey105', '105', 'Naval Kisho', '0', 'Sector 49, Noida', '8368119653', '0', 'A O Smith- HSE', 'A O Smith', '1 Year', '0', 1, 1, '', '2020-03-27 09:54:20', 1),
(10, '2020-03-27', 10, 11, 35, 'petrol', 7, 3123124, 1, '12', 10, '2321', 1, '4546', 'hi ajay', '123', 'erefsfdsf', '0', 'jabalpur', '9303119152', '12345', 'Invoice_install_model', 'dss', 'wewe', '45654', 1, 1, '', '2020-03-27 13:30:07', 0),
(11, '2020-03-27', 11, 12, 44, 'petrol', 7, 3123124, 1, '12', 10, '12', 1, '4546', 'cdcd', '344', 'erefsfdsf', '0', 'dsdsdsdddsdsds', '42343253252', '12345', 'Payment_mode_model', 'ghg', '65465', '45654', 1, 1, '', '2020-03-27 13:33:44', 0),
(12, '2020-03-27', 12, 12, 45, 'xcxzcxxzcxcxcx', 7, 12345, 2, '12', 7, '2321', 1, '0', 'dsdsads', '3424', 'erefsfdsf', 'reliance petrol pump', 'jabalpur', '42343253252', '12', 'Income_register_model', 'ghg', '65465', '45654', 2, 1, '', '2020-03-27 13:40:28', 0),
(13, '2020-03-21', 13, 1, 51, 'Inverter Repair', 7, 1000, 1, '0', 2, '41F1-ground floor', 1, '0', 'Inverter Repair ', '12345', 'naval kishor Elictrical ', 'temp', 'sec- 49 Noida - 201301\r\n', '8800779299', '0', 'Luminos ', 'Luminos', '1yrs', '0', 1, 1, '', '2020-03-27 14:42:21', 6),
(14, '2020-03-27', 14, 4, 12, 'Item details commenItem Detailt', 1, 1000, 1, '0', 9, '40C1-G1', 1, '0', 'Comment Comment', 'VendorBill12', 'Shopname is Jivan Electrician', 'VendorType21', 'FGurgaon', 'Mobile_Test1', '0', 'Model_Test1', 'ManufacturingCompany_Test1', 'Warranty_test1', '0', 1, 1, '', '2020-03-27 14:54:48', 0),
(15, '2020-04-07', 15, 1, 1, 'plug', 1, 30, 1, '', 10, 'coomon', 1, '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '', '2020-04-07 10:40:27', 0);

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense_category`
--

INSERT INTO `expense_category` (`id`, `name`, `status`) VALUES
(1, 'Maintenance - Electrical', 1),
(2, 'Maintenance - Plumber', 1),
(3, 'Maintenance - Carpenter', 1),
(4, 'Monthly Recurring Expense', 1),
(5, 'Grocery', 1),
(6, 'Vegetables', 1),
(7, 'Building Expenses', 1),
(8, 'Staff', 1),
(9, 'Mother Dairy', 1),
(10, 'Fixed Assets Purchase', 1),
(11, 'Vehicle', 1),
(12, 'Infrastructure and Setup Expenses', 1);

-- --------------------------------------------------------

--
-- Table structure for table `expense_subcategory`
--

CREATE TABLE `expense_subcategory` (
  `id` int(11) NOT NULL,
  `exp_category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense_subcategory`
--

INSERT INTO `expense_subcategory` (`id`, `exp_category_id`, `name`, `status`) VALUES
(1, 1, 'Fan', 1),
(2, 1, 'LED TV', 1),
(3, 1, 'AC', 1),
(4, 1, 'RO', 1),
(5, 1, 'Geyser', 1),
(6, 2, 'Tap', 1),
(7, 2, 'Naali Block', 1),
(8, 2, 'Water Tank', 1),
(9, 3, 'Door', 1),
(10, 3, 'Almirah', 1),
(11, 4, 'Mobile Bill', 1),
(12, 4, 'Broadband', 1),
(13, 4, 'Cable', 1),
(14, 4, 'Sweeper', 1),
(15, 4, 'RWA', 1),
(16, 4, 'Pipeline Gas', 1),
(18, 4, 'Electricity Bill', 1),
(19, 4, 'Cylinder', 1),
(20, 5, 'Grocery', 1),
(21, 5, 'Pulses', 1),
(22, 6, 'Vegetables', 1),
(23, 7, 'Rent', 1),
(24, 7, 'Maintenance on Landlord Behalf', 1),
(25, 7, 'Water Bill', 1),
(26, 8, 'Salary', 1),
(27, 8, 'Incentive', 1),
(28, 9, 'Monthly Bill', 1),
(29, 9, 'Milk', 1),
(30, 9, 'Curd', 1),
(31, 9, 'Chhanchh', 1),
(32, 9, 'Bread', 1),
(33, 10, 'AC', 1),
(34, 10, 'LED TV', 1),
(35, 11, 'CT 100 Maintenance', 1),
(36, 11, 'Pulsar Maintenance', 1),
(37, 11, 'Eeco Maintenance', 1),
(38, 11, 'Wagon R Maintenance', 1),
(39, 11, 'CT 100 Petrol', 1),
(40, 11, 'Pulsar Petrol', 1),
(41, 11, 'Eeco Petrol', 1),
(42, 11, 'Wagon R Petrol', 1),
(43, 11, 'Eeco CNG', 1),
(44, 12, 'Plyboard', 1),
(45, 12, 'Electrical', 1),
(46, 12, 'Carpenter', 1),
(47, 12, 'Plumber', 1),
(48, 12, 'Material', 1),
(49, 1, 'Refrigerator', 1),
(50, 1, 'Microwave', 1),
(51, 1, 'Inverter', 1);

-- --------------------------------------------------------

--
-- Table structure for table `income_register`
--

CREATE TABLE `income_register` (
  `register_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  `other_emp_id` int(11) DEFAULT NULL,
  `income` int(11) DEFAULT NULL,
  `expense` int(11) DEFAULT NULL,
  `mode` int(11) NOT NULL,
  `other_mode` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `payment_status` int(11) DEFAULT NULL,
  `source` varchar(255) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `income_register`
--

INSERT INTO `income_register` (`register_id`, `transaction_id`, `customer_id`, `employee_id`, `other_emp_id`, `income`, `expense`, `mode`, `other_mode`, `comment`, `payment_status`, `source`, `createdat`) VALUES
(2, 1, NULL, 11, NULL, 0, 1860, 1, 0, 'CT100 Services ', NULL, 'Exp', '2020-03-24 13:02:57'),
(3, 2, NULL, 11, NULL, 0, 300, 1, 0, 'Brush 2 Set Each 150 Rs/- Total 6', NULL, 'Exp', '2020-03-24 13:09:28'),
(4, 2, 17, 8, NULL, 12000, 0, 1, 0, NULL, NULL, 'Rev', '2020-03-24 13:18:02'),
(5, 1, NULL, 8, 11, NULL, 6000, 1, 1, '  Handover to Arun', NULL, 'E', '2020-03-24 13:19:33'),
(6, 1, NULL, 11, 8, 6000, NULL, 1, 1, '  Handover to Arun', NULL, 'E', '2020-03-24 13:19:33'),
(7, 3, NULL, 11, 1, NULL, 1200, 2, 2, '  Transfer amount 1200', NULL, 'E', '2020-03-24 13:21:51'),
(9, 5, NULL, 8, 7, NULL, 2800, 3, 3, '  Transfer 2800 Rs /-', NULL, 'E', '2020-03-24 13:25:46'),
(14, 4, NULL, 11, NULL, 0, 700, 1, 0, 'Ro Repair ', NULL, 'Exp', '2020-03-24 13:54:11'),
(15, 5, NULL, 8, NULL, 0, 2000, 1, 0, 'Gas Refil', NULL, 'Exp', '2020-03-24 14:06:40'),
(16, 3, 17, 7, NULL, 4000, 0, 1, 0, NULL, NULL, 'Rev', '2020-03-25 18:52:15'),
(19, 11, NULL, 8, 11, NULL, 200, 1, 1, '  transfer amount 200', NULL, 'E', '2020-03-26 07:01:13'),
(20, 11, NULL, 11, 8, 200, NULL, 1, 1, '  transfer amount 200', NULL, 'E', '2020-03-26 07:01:13'),
(21, 6, NULL, 8, NULL, 0, 290, 1, 0, 'Pulsar Petrol ', NULL, 'Exp', '2020-03-26 07:16:54'),
(23, 8, NULL, 8, NULL, 0, 500, 1, 0, 'motherboard change ', NULL, 'Exp', '2020-03-26 07:47:35'),
(25, 4, 17, 7, NULL, 12000, 0, 1, 0, NULL, NULL, 'Rev', '2020-03-27 10:27:32'),
(26, 10, NULL, 7, NULL, 0, 3123124, 1, 0, 'hi ajay', NULL, 'Exp', '2020-03-27 13:30:07'),
(27, 11, NULL, 7, NULL, 0, 3123124, 1, 0, 'cdcd', NULL, 'Exp', '2020-03-27 13:33:44'),
(30, 14, NULL, 1, NULL, 0, 1000, 1, 0, 'Comment Comment', NULL, 'Exp', '2020-03-27 14:54:48'),
(31, 5, 19, 8, NULL, 9000, 0, 1, 0, NULL, NULL, 'Rev', '2020-04-01 10:36:22'),
(32, 6, 19, 8, NULL, 12000, 0, 1, 0, NULL, NULL, 'Rev', '2020-04-02 15:20:55'),
(34, 15, NULL, 1, NULL, 0, 30, 1, 0, '', NULL, 'Exp', '2020-04-07 10:40:27'),
(37, 8, 19, 11, NULL, 0, 1000, 1, 0, NULL, NULL, 'Rev', '2020-04-10 17:39:04'),
(39, 10, 19, 7, NULL, 200, 0, 1, 0, NULL, NULL, 'Rev', '2020-04-10 18:29:54'),
(40, 11, 19, 7, NULL, 300, 0, 1, 0, NULL, NULL, 'Rev', '2020-04-10 18:41:23');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `customer_id`, `month`, `amount`, `total_amount`, `status`) VALUES
(1, 2, '02-2020', 3000, 3000, 0),
(2, 3, '02-2020', 6000, 6000, 0),
(3, 1001, '02-2020', 17000, 17000, 0),
(4, 1002, '02-2020', 13000, 13000, 0),
(5, 1003, '02-2020', 13000, 13000, 0),
(6, 1004, '02-2020', 14000, 14000, 0),
(7, 1017, '02-2020', 2000, 2000, 0),
(8, 1005, '02-2020', 14500, 14500, 0),
(9, 1006, '02-2020', 13000, 13000, 0),
(10, 1007, '02-2020', 13000, 13000, 0),
(11, 1008, '02-2020', 10500, 10500, 0),
(12, 1009, '02-2020', 10500, 10500, 0),
(13, 1010, '02-2020', 13000, 13000, 0),
(14, 1011, '02-2020', 13000, 13000, 0),
(15, 1012, '02-2020', 10500, 10500, 0),
(16, 1013, '02-2020', 10500, 10500, 0),
(17, 1014, '02-2020', 10500, 10500, 0),
(18, 1015, '02-2020', 13000, 13000, 0),
(19, 1016, '02-2020', 14000, 14000, 0),
(20, 1018, '02-2020', 7500, 7500, 0),
(21, 1019, '02-2020', 11500, 11500, 0),
(22, 1020, '02-2020', 12000, 12000, 0),
(23, 1021, '02-2020', 9000, 9000, 0),
(24, 1022, '02-2020', 9000, 9000, 0),
(25, 1023, '02-2020', 9000, 9000, 0),
(26, 1024, '02-2020', 9000, 9000, 0),
(27, 1025, '02-2020', 9000, 9000, 0),
(28, 1026, '02-2020', 7500, 7500, 0),
(29, 1027, '02-2020', 7500, 7500, 0),
(30, 1028, '02-2020', 10000, 10000, 0),
(31, 1029, '02-2020', 10500, 10500, 0),
(32, 1030, '02-2020', 9000, 9000, 0),
(33, 1031, '02-2020', 9500, 9500, 0),
(34, 1032, '02-2020', 9500, 9500, 0),
(35, 1033, '02-2020', 7500, 7500, 0),
(36, 1034, '02-2020', 8000, 8000, 0),
(37, 1035, '02-2020', 11900, 11900, 0),
(38, 1036, '02-2020', 10000, 10000, 0),
(39, 1037, '02-2020', 7000, 7000, 0),
(40, 1038, '02-2020', 17000, 17000, 0),
(41, 1039, '02-2020', 20000, 20000, 0),
(42, 1040, '02-2020', 11000, 11000, 0),
(43, 1041, '02-2020', 11000, 11000, 0),
(44, 1042, '02-2020', 11000, 11000, 0),
(45, 1043, '02-2020', 11000, 11000, 0),
(46, 1044, '02-2020', 7250, 7250, 0),
(47, 1045, '02-2020', 9500, 9500, 0),
(48, 1046, '02-2020', 9000, 9000, 0),
(49, 1047, '02-2020', 10000, 10000, 0),
(50, 1048, '02-2020', 10000, 10000, 0),
(51, 1049, '02-2020', 9500, 9500, 0),
(52, 1050, '02-2020', 10500, 10500, 0),
(53, 1051, '02-2020', 13000, 13000, 0),
(54, 1052, '02-2020', 10500, 10500, 0),
(55, 1053, '02-2020', 10500, 10500, 0),
(56, 1054, '02-2020', 9000, 9000, 0),
(57, 1055, '02-2020', 9000, 9000, 0),
(58, 1056, '02-2020', 10000, 10000, 0),
(59, 1057, '02-2020', 10000, 10000, 0),
(60, 1058, '02-2020', 12500, 12500, 0),
(61, 1059, '02-2020', 11500, 11500, 0),
(62, 1060, '02-2020', 11500, 11500, 0),
(63, 1061, '02-2020', 8000, 8000, 0),
(64, 1062, '02-2020', 8000, 8000, 0),
(65, 1063, '02-2020', 8000, 8000, 0),
(66, 1064, '02-2020', 7000, 7000, 0),
(67, 1065, '02-2020', 7000, 7000, 0),
(68, 1066, '02-2020', 7000, 7000, 0),
(69, 1067, '02-2020', 9500, 9500, 0),
(70, 1068, '02-2020', 9500, 9500, 0),
(71, 1069, '02-2020', 11500, 11500, 0),
(72, 1070, '02-2020', 11500, 11500, 0),
(73, 1071, '02-2020', 10500, 10500, 0),
(74, 1072, '02-2020', 9500, 9500, 0),
(75, 1073, '02-2020', 9500, 9500, 0),
(76, 1074, '02-2020', 11500, 11500, 0),
(77, 1075, '02-2020', 10000, 10000, 0),
(78, 1076, '02-2020', 8000, 8000, 0),
(79, 1077, '02-2020', 9000, 9000, 0),
(80, 1078, '02-2020', 9000, 9000, 0),
(81, 1079, '02-2020', 12000, 12000, 0),
(82, 1080, '02-2020', 10500, 10500, 0),
(83, 1081, '02-2020', 10000, 10000, 0),
(84, 1082, '02-2020', 11500, 11500, 0),
(85, 1083, '02-2020', 12500, 12500, 0),
(86, 1084, '02-2020', 12500, 12500, 0),
(87, 1085, '02-2020', 12500, 12500, 0),
(88, 1086, '02-2020', 11000, 11000, 0),
(89, 1087, '02-2020', 12000, 12000, 0),
(90, 1088, '02-2020', 11000, 11000, 0),
(91, 1089, '02-2020', 11000, 11000, 0),
(92, 1090, '02-2020', 17500, 17500, 0),
(93, 1091, '02-2020', 20000, 20000, 0),
(94, 1092, '02-2020', 18500, 18500, 0),
(95, 1093, '02-2020', 12500, 12500, 0),
(96, 1094, '02-2020', 12000, 12000, 0),
(97, 1095, '02-2020', 7500, 7500, 0),
(98, 1096, '03-2020', 5000, 5000, 0),
(99, 18, '03-2020', 18500, 18500, 0),
(100, 17, '03-2020', 12000, 12000, 0),
(101, 1, '03-2020', 1, 1, 0),
(102, 18, '03-2020', 7000, 7000, 0),
(103, 1, '04-2020', 10000, 10000, 0),
(104, 19, '04-2020', 9000, 9000, 0),
(105, 19, '04-2020', 9000, 9000, 0),
(106, 19, '04-2020', 9000, 9000, 0),
(107, 19, '04-2020', 9000, 9000, 0),
(108, 18, '04-2020', 18000, 18000, 0),
(109, 19, '04-2020', 9000, 9000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_install`
--

CREATE TABLE `invoice_install` (
  `invoice_instaill_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` bigint(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `designation` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL COMMENT '1=admin 2=emp 3=user 4=super admin 5=vender',
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `log_id`, `name`, `number`, `email`, `password`, `designation`, `type`, `status`) VALUES
(1, 1, 'Mohit', 9810565610, 'gguptamohit@gmail.com', '3d22fb308dea9489845fcfa8511320c5', 0, '4', 1),
(2, 2, 'Rajni Poddar', 9999098890, 'stayinclassluxuryhome@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 0, '1', 1),
(3, 3, 'Naveen Poddar', 9999098890, 'stayinclassluxuryhome@gmail.com', 'f76d0e7f935a1753e740d61cda58f715', 0, '1', 1),
(4, 4, 'Suresh Gupta', 9312360821, 'stayinclassluxuryhome@gmail.com', '03416352b248edf0c2f3097002fb7b21', 0, '1', 1),
(5, 5, 'Sneh Gupta', 9999098860, 'stayinclassluxuryhome@gmail.com', '56ccb866271d84b2d2f7405da14e1bf8', 0, '1', 1),
(6, 6, 'Pallavi P', 9873913094, 'stayinclassluxuryhome@gmail.com', '1c267ec7f1ad167ed967b91788f4dc7b', 0, '4', 1),
(7, 7, 'Abhimanyu', 8800779299, 'stayinclassluxurypg@gmail.com', '9c247d5a2380f91279237463bfdc4d2a', 0, '4', 1),
(8, 8, 'Yogesh', 9999098840, 'stayinclassluxurypg@gmail.com', '8731e002db77e03c83ad8398bb272655', 0, '1', 1),
(11, 11, 'Arun', 9999098810, 'stayinclassluxurypg@gmail.com', '27352b2261b96e0a82ea98e881c68d1b', 0, '2', 1),
(12, 1, 'Dummy', 123456, 'stayinclassluxurypg@gmail.com', '3d22fb308dea9489845fcfa8511320c5', 0, '3', 1),
(13, 2, 'Bhumika', 9958987511, 'abcd@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 0, '3', 1),
(14, 3, 'Shivangini Agarwal', 9732304710, 'abcd@gmal.com', 'be7f1e97165394e27054b7195545b5c2', 0, '3', 1),
(15, 4, 'Samarpita', 9568524055, 'abcd@gmal.com', '3d770e9f62e2acdc065256a65d0d61a5', 0, '3', 1),
(16, 5, 'Manisha Goyal', 7665919488, 'abcd@gmal.com', '9233075dd75ba2eb1d07cbc972964cfe', 0, '3', 1),
(17, 6, 'Naina Kumari', 9958365943, 'abcd@gmal.com', '4647b7762b9f6c7ebb416396555a0834', 0, '3', 1),
(18, 7, 'Arpita Jaiswal', 8800779299, 'abcd@gmal.com', '9c247d5a2380f91279237463bfdc4d2a', 0, '3', 1),
(19, 8, 'Pragya Singh', 8449069357, 'abcd@gmal.com', '6212cc30821720eb02a7736c40a92a44', 0, '3', 1),
(20, 9, 'Khushboo Iqbal', 7006435862, 'abcd@gmal.com', '1acc613c1cd12bb6b598d84e4462b253', 0, '3', 1),
(21, 10, 'Nikita Jaiswal', 8527110909, 'abcd@gmal.com', 'ff6219f46bba77409f62fc8f016c1094', 0, '3', 1),
(22, 11, 'Sambhavi  Nanda', 9097890366, 'abcd@gmal.com', '8a822f1e237c4080a9cb2b974437389d', 0, '3', 1),
(23, 12, 'Tanya Saxena', 9818079172, 'abcd@gmal.com', 'ab8688194080a989ada3f245431cd7c1', 0, '3', 1),
(24, 13, 'Pooja Missing', 8800209459, 'abcd@gmal.com', 'a6d1b20bb16a978f6976b24dde950561', 0, '3', 1),
(25, 14, 'Antra Nag', 9460258301, 'abcd@gmal.com', 'bf373644f120614d3e5cf2d66ededcfa', 0, '3', 1),
(26, 15, 'Pragya Singh 2', 8295051761, 'abcd@gmal.com', 'c96e1f94b0625b78f443fcd2bef6e539', 0, '3', 1),
(27, 16, 'Sunita Missing', 9999098810, 'abcd@gmal.com', '27352b2261b96e0a82ea98e881c68d1b', 0, '3', 1),
(28, 17, 'Megha Basu', 7838039095, 'abcd@gmal.com', 'f7904be46c56cf3888cb356f1265eda4', 0, '3', 1),
(29, 18, 'Shreya Gupta', 9411442193, 'abcd@gmal.com', '91538dd1faaa89d548e6314474fb2ca7', 0, '3', 1),
(30, 19, 'Sahil Gupta', 9758777845, 'abcd@gmail.com', 'd234ef2fd6e0f6df86dee30e66b3a73a', 0, '3', 1),
(31, 12, 'admin', 9303119152, 'admin@matrimonial.com', 'a50f9f5a8643aaa841e19a07f35f6c34', 0, '4', 1),
(32, 2, 'amar', 9303119100, NULL, '827ccb0eea8a706c4c34a16891f84e7b', NULL, '5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `note` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`id`, `date`, `image`, `note`, `description`, `status`, `createdat`) VALUES
(1, '01-04-2020', 'uploads/5e8eea371d602_user_image.jpg', 'ajay work ', 'fdfdf', 1, '0000-00-00 00:00:00'),
(2, '03-04-2020', 'uploads/5e8ef5ed2f0be_download (2).jpg', 'sadsdfd', 'dfd', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `payment` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment_mode`
--

CREATE TABLE `payment_mode` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_mode`
--

INSERT INTO `payment_mode` (`id`, `name`, `status`) VALUES
(1, 'Cash', 1),
(2, 'Phone pay', 1),
(3, 'Paytm', 1),
(5, 'Bank', 1);

-- --------------------------------------------------------

--
-- Table structure for table `refund`
--

CREATE TABLE `refund` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `building_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `rent` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_mode` int(11) NOT NULL,
  `ref_no` bigint(20) DEFAULT NULL,
  `date` date NOT NULL,
  `comment` text NOT NULL,
  `status` int(11) NOT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 1 COMMENT '2=delete',
  `reason` text NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `refund_new`
--

CREATE TABLE `refund_new` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `building_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_mode` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `comment` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `revenue`
--

CREATE TABLE `revenue` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `building_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `rent` int(11) NOT NULL,
  `room_type` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_mode` int(11) NOT NULL,
  `ref_no` bigint(20) DEFAULT NULL,
  `date` date NOT NULL,
  `comment` text NOT NULL,
  `status` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1=customer to employee 2=emp to Customer',
  `delete_status` int(11) NOT NULL DEFAULT 1 COMMENT '2=delete',
  `reason` text NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_diff` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `revenue`
--

INSERT INTO `revenue` (`id`, `transaction_id`, `emp_id`, `building_id`, `room_id`, `customer_id`, `rent`, `room_type`, `amount`, `payment_mode`, `ref_no`, `date`, `comment`, `status`, `type`, `delete_status`, `reason`, `createdat`, `date_diff`) VALUES
(1, 1, 11, 1, 40, 18, 18500, 1, 18500, 1, 1234, '2020-03-24', 'Rent Received ', 0, 1, 2, 'wrong entry', '2020-03-24 12:59:59', 0),
(2, 2, 8, 6, 25, 17, 12000, 1, 12000, 1, 1234, '2020-03-01', '', 0, 1, 1, '', '2020-03-24 13:18:02', 0),
(3, 3, 7, 6, 25, 17, 12000, 1, 4000, 1, 56, '2020-03-16', 'nj', 0, 1, 1, '', '2020-03-25 18:52:15', 10),
(4, 4, 7, 6, 25, 17, 12000, 1, 12000, 1, 0, '2020-03-26', 'Rent Collected from Balbir', 0, 1, 1, '', '2020-03-27 10:27:32', 1),
(5, 5, 8, 10, 142, 19, 9000, 1, 9000, 1, 0, '2020-04-01', 'Rent collected', 0, 1, 1, '', '2020-04-01 10:36:22', 0),
(6, 6, 8, 10, 142, 19, 9000, 1, 12000, 1, 0, '2020-04-02', 'Rent Received', 0, 1, 1, '', '2020-04-02 15:20:55', 0),
(7, 7, 1, 10, 143, 19, 9000, 1, 100, 1, 0, '2020-04-07', 'recd 100', 0, 1, 2, 'dfsd', '2020-04-07 10:37:42', 0),
(8, 8, 11, 10, 143, 19, 9000, 1, 1000, 1, 0, '2020-04-10', 'refund to Sahil Rs 1000... Arun Bal was 2475 Cash, 1275 total...now will change', 0, 2, 2, 'incorrect tran...Arun Bal should get again increased', '2020-04-10 17:39:04', 0),
(9, 9, 8, 10, 143, 19, 9000, 1, 0, 1, 0, '2020-04-10', 'Cust conversation documented', 0, 1, 2, 'sfsg', '2020-04-10 17:44:27', 0),
(10, 10, 7, 10, 143, 19, 9000, 1, 200, 1, 12, '2020-04-10', 'ddds', 0, 1, 2, 'chek', '2020-04-10 18:29:54', 0),
(11, 11, 7, 10, 143, 19, 9000, 1, 300, 1, 0, '2020-04-11', 'sds', 0, 1, 2, 'chek', '2020-04-10 18:41:23', 0),
(12, 12, 7, 10, 143, 19, 9000, 1, 134, 3, 0, '2020-04-11', 'dsfds', 0, 1, 2, 'vfgf', '2020-04-10 18:47:25', 0),
(13, 13, 7, 10, 143, 19, 9000, 1, 203, 5, 0, '2020-04-11', 'sdf', 0, 1, 2, 'sfdsf', '2020-04-10 18:54:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`id`, `name`, `status`) VALUES
(1, 'Pg', 1),
(2, 'Individual', 1),
(3, 'Personal', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vender`
--

CREATE TABLE `vender` (
  `id` int(11) NOT NULL,
  `exep_category` int(11) NOT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `vendor_type` int(11) NOT NULL,
  `vdor_business` varchar(255) NOT NULL,
  `building_id` int(11) NOT NULL,
  `date_of_onboarding` date NOT NULL,
  `date_of_leaving` date NOT NULL,
  `refrence_name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `mobile2` varchar(255) NOT NULL,
  `landline` varchar(255) NOT NULL,
  `shop_address` text NOT NULL,
  `gst` int(11) NOT NULL,
  `stauts` int(11) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vender`
--

INSERT INTO `vender` (`id`, `exep_category`, `vendor_name`, `vendor_type`, `vdor_business`, `building_id`, `date_of_onboarding`, `date_of_leaving`, `refrence_name`, `mobile`, `mobile2`, `landline`, `shop_address`, `gst`, `stauts`, `createdat`) VALUES
(1, 1, 'Naval Kishor (Jivan)', 0, 'Electrician ', 7, '2020-03-01', '1970-01-01', 'Mohit Sir', '8826419656', '8368119653', '', '143 Adarsh Kunj Barola Sector - 49\r\nNoida - 201301', 123456, 1, '2020-03-27 07:11:54'),
(2, 2, 'amar', 0, 'plumber', 0, '2020-04-08', '2020-04-08', 'cdfd', '9303119152', '9303119152', '35354', 'xfddf', 0, 1, '2020-04-08 09:50:37');

-- --------------------------------------------------------

--
-- Table structure for table `vender_type`
--

CREATE TABLE `vender_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allotment`
--
ALTER TABLE `allotment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buil_details`
--
ALTER TABLE `buil_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `com_category`
--
ALTER TABLE `com_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `com_sub_category`
--
ALTER TABLE `com_sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_to_emp`
--
ALTER TABLE `emp_to_emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_subcategory`
--
ALTER TABLE `expense_subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income_register`
--
ALTER TABLE `income_register`
  ADD PRIMARY KEY (`register_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `invoice_install`
--
ALTER TABLE `invoice_install`
  ADD PRIMARY KEY (`invoice_instaill_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_mode`
--
ALTER TABLE `payment_mode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund`
--
ALTER TABLE `refund`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_new`
--
ALTER TABLE `refund_new`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revenue`
--
ALTER TABLE `revenue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vender`
--
ALTER TABLE `vender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vender_type`
--
ALTER TABLE `vender_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allotment`
--
ALTER TABLE `allotment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `building`
--
ALTER TABLE `building`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `buil_details`
--
ALTER TABLE `buil_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `complain`
--
ALTER TABLE `complain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `com_category`
--
ALTER TABLE `com_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `com_sub_category`
--
ALTER TABLE `com_sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `emp_to_emp`
--
ALTER TABLE `emp_to_emp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `expense_subcategory`
--
ALTER TABLE `expense_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `income_register`
--
ALTER TABLE `income_register`
  MODIFY `register_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `invoice_install`
--
ALTER TABLE `invoice_install`
  MODIFY `invoice_instaill_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_mode`
--
ALTER TABLE `payment_mode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `refund`
--
ALTER TABLE `refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund_new`
--
ALTER TABLE `refund_new`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `revenue`
--
ALTER TABLE `revenue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vender`
--
ALTER TABLE `vender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vender_type`
--
ALTER TABLE `vender_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
