-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2018 at 06:19 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contact`
--
CREATE DATABASE IF NOT EXISTS `contact` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `contact`;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `name`, `email`, `contact_no`, `deleted`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'khushboo', '2016.khushboo.chandani@ves.ac.in', '9673334456', 1, '2018-09-11 12:53:32', '0000-00-00 00:00:00', '2018-09-11 17:34:33', 0, 0, 0),
(2, 'nikhil', '2016.hiro.nihil@ves.ac.in', '7021197094', 1, '2018-09-11 13:20:52', '2018-09-11 17:33:19', '2018-09-11 17:33:25', 0, 2, 0),
(3, 'nikita', 'dfghjv@gmail.com', '1234567891', 1, '2018-09-11 14:25:49', '2018-09-11 16:26:16', '2018-09-11 17:19:08', 0, 3, 0),
(4, 'diksha', 'diksha.chandnani@yahoo.co', '9673334455', 0, '2018-09-11 15:36:38', '2018-09-11 17:34:41', '0000-00-00 00:00:00', 0, 4, 0),
(5, 'sushil', 'dfghjv@gmail.co', '9673334452', 1, '2018-09-11 17:24:01', '0000-00-00 00:00:00', '2018-09-11 17:24:45', 0, 0, 0),
(6, 'nikhil', '2016.iro.nihil@ves.ac.in', '7021197093', 1, '2018-09-11 17:35:08', '0000-00-00 00:00:00', '2018-09-11 18:07:15', 0, 0, 0),
(7, 'hjghx', 'svsgha@gmail.com', '1234567899', 1, '2018-09-11 17:55:44', '0000-00-00 00:00:00', '2018-09-11 18:26:34', 0, 0, 0),
(8, 'khushbooo', 'asd@gmail.com', '122356679', 1, '2018-09-11 18:06:00', '2018-09-15 12:46:05', '2018-09-15 12:46:18', 0, 8, 0),
(9, 'aabc', 'hfff@gmail.com', '7021197024', 0, '2018-09-11 18:08:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0),
(10, 'nikhill', 'hirp.nikhil@gmail.com', '233579988', 1, '2018-09-11 18:11:33', '0000-00-00 00:00:00', '2018-09-15 12:44:39', 0, 0, 0),
(11, 'jatin', 'fff@gmail.com', '8989877656', 1, '2018-09-11 18:13:10', '0000-00-00 00:00:00', '2018-09-15 12:44:45', 0, 0, 0),
(12, 'KhushbooChandnan', 'diksha.chandnani@yahoo.co', '1111111111', 1, '2018-09-11 18:17:37', '0000-00-00 00:00:00', '2018-09-11 18:26:49', 0, 0, 0),
(13, 'dik', 'jatinsumai50@gmail.co', '9673334422', 1, '2018-09-11 18:25:05', '0000-00-00 00:00:00', '2018-09-11 18:26:40', 0, 0, 0),
(14, 'Khushboo', '2016.khushboo.chandnanni@ves.ac.in', '9673334450', 0, '2018-09-15 12:44:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Database: `degree`
--
CREATE DATABASE IF NOT EXISTS `degree` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `degree`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `email`, `password`, `name`) VALUES
(1, 'sir@gmail.com', '$2y$12$XwG0dp5ccA1X6EF57dMXk.ciOOgz6GyVZ7fwMczIliddrs1c.D45S', 'Himanshu Sir'),
(2, 'khushboo@gmail.com', '$2y$12$UXLkTDT9qGm2Z/EaQ2ikleyQaZjesvnEUipnq118Wj41rQ/T0GCES', 'Khushboo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `ecertificate`
--
CREATE DATABASE IF NOT EXISTS `ecertificate` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ecertificate`;

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `participant_id` int(11) NOT NULL,
  `participant_name` varchar(255) NOT NULL,
  `participant_rank` int(11) NOT NULL,
  `participant_email` varchar(255) NOT NULL,
  `participant_number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`participant_id`, `participant_name`, `participant_rank`, `participant_email`, `participant_number`) VALUES
(1, 'Khushboo Chandnani', 1, '2016.khushboo.chandnani@ves.ac.in', '9673334456'),
(2, 'Nikhil Ghind', 3, '2016.hiro.nikhil@ves.ac.in', '7021197094');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`participant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `participant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `erp`
--
CREATE DATABASE IF NOT EXISTS `erp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `erp`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `hsn_code` int(11) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `hsn_code`, `deleted`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Hard Disk', 871017, 0, '2018-08-21 15:39:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(2, 'Hard Drive', 4567, 1, '2018-08-21 15:45:39', '0000-00-00 00:00:00', '2018-08-25 09:26:27', 1, 0, 1),
(3, 'pd', 7867, 0, '2018-08-21 15:48:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(4, 'Hard d', 345, 1, '2018-08-21 16:05:59', '0000-00-00 00:00:00', '2018-09-17 14:23:01', 1, 0, 1),
(5, 'laptop', 1234, 0, '2018-08-24 12:38:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(6, 'tabasdfghj', 12345, 1, '2018-08-24 12:46:05', '2018-08-28 19:54:55', '2018-09-18 19:25:29', 1, 1, 1),
(7, 'Motherboard', 5678, 0, '2018-08-24 14:08:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(8, 'RAM', 456, 1, '2018-08-24 14:09:05', '0000-00-00 00:00:00', '2018-09-18 19:28:18', 1, 0, 1),
(9, 'Screen', 123456, 1, '2018-08-24 14:09:32', '0000-00-00 00:00:00', '2018-09-18 17:44:16', 1, 0, 1),
(10, 'Keyboard', 8710172, 0, '2018-08-24 14:09:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(11, 'Mouse', 45678, 0, '2018-08-24 14:10:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(12, 'Web cam', 54378, 1, '2018-08-24 14:10:40', '0000-00-00 00:00:00', '2018-08-24 16:21:44', 1, 0, 1),
(13, 'Cooling Fans', 8997, 0, '2018-08-24 14:11:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(14, 'Mouse2', 12345555, 0, '2018-08-25 09:25:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_contact` varchar(10) NOT NULL,
  `gst_no` varchar(255) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_address`, `customer_email`, `customer_contact`, `gst_no`, `deleted`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, '', '', '', '9673334456', '', 1, '2018-09-04 18:53:51', '2018-09-04 19:37:57', '2018-09-04 19:39:00', 0, 1, 1),
(2, 'nikhil', 'esrdtfyuiofgfxcgvhbjn', 'xyz@gmail.com', '1234567892', '12', 1, '2018-09-04 19:41:20', '2018-09-04 20:01:51', '2018-09-04 20:06:30', 0, 1, 1),
(3, 'khushboo', 'ulhasnagar', 'xyz@gmail.com', '1257556789', '14', 1, '2018-09-04 19:47:01', '2018-09-04 20:07:53', '2018-09-04 20:07:57', 0, 1, 1),
(4, 'chirag', 'ulhasnanagr', '123@gmail.com', '1234567892', '11', 0, '2018-09-04 20:11:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0),
(5, 'jatin', 'ulhas', 'xyaz@gmail.com', '1257556789', '1111', 1, '2018-09-04 20:12:12', '2018-09-04 20:12:31', '2018-09-04 20:12:54', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `employee_contact` varchar(10) NOT NULL,
  `employee_email` varchar(255) NOT NULL,
  `employee_address` text NOT NULL,
  `employee_type` int(11) NOT NULL,
  `employee_password` varchar(255) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_name`, `employee_contact`, `employee_email`, `employee_address`, `employee_type`, `employee_password`, `deleted`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Gaurav Punjabi', '9820098200', 'gaurav@gmail.com', 'Some Huge Vills,\r\nSome Private Road,\r\nThane-W,\r\nThane', 1, '$2y$10$Mskag0PB.SpnyYBkaeOR4OxSBuaJryJNVSu8JjHnNKuBd1EA5XXBe', 0, '2018-08-15 20:39:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gst`
--

CREATE TABLE `gst` (
  `hsn_code` int(11) NOT NULL,
  `gst_rate` float NOT NULL,
  `wef` date NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gst`
--

INSERT INTO `gst` (`hsn_code`, `gst_rate`, `wef`, `deleted`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(345, 9, '2018-08-21', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(456, 14, '2018-08-24', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(1234, 9, '2018-08-24', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(4567, 19, '2018-08-21', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(5678, 13, '2018-08-24', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(7867, 15, '2018-08-15', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(8997, 13, '2018-08-24', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(9787, 15, '2018-08-15', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(12345, 16, '2018-08-24', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(45678, 11, '2018-08-24', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(54378, 16, '2018-08-24', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(123456, 14, '2018-08-24', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(871017, 12, '2018-08-21', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(8710172, 12, '2018-08-24', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(12345555, 11, '2018-08-25', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(123456789, 77, '2018-08-25', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `eoq` int(5) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sale_quantity` int(11) NOT NULL,
  `discount` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_mode`
--

CREATE TABLE `payment_mode` (
  `paymode` int(11) NOT NULL,
  `paymode_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `eoq` int(11) NOT NULL DEFAULT '0',
  `additional_specification` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `image_extension` varchar(255) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `eoq`, `additional_specification`, `category_id`, `image_extension`, `deleted`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, '', 0, '', 0, '', 0, '2018-09-11 21:31:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(2, 'pp', 0, 'asdfghjkl', 3, '', 0, '2018-09-11 21:38:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(3, 'gg', 0, 'srdtfyguhjik', 3, '', 0, '2018-09-11 21:38:41', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(4, 'gg', 0, 'srdtfyguhjik', 3, '', 1, '2018-09-11 21:39:18', '0000-00-00 00:00:00', '2018-09-18 20:02:43', 1, 0, 1),
(5, 'gg', 0, 'srdtfyguhjik', 3, '', 0, '2018-09-11 21:39:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(6, 'Microsoft Keyboard', 2, 'Leather', 10, '', 1, '2018-09-17 12:26:08', '0000-00-00 00:00:00', '2018-09-18 19:31:29', 1, 0, 1),
(7, 'Microsoft Keyboard', 2, 'Leather', 10, '', 1, '2018-09-17 12:26:27', '0000-00-00 00:00:00', '2018-09-18 19:35:55', 1, 0, 1),
(8, 'Microsft Mouse', 3, '', 11, 'jpg', 0, '2018-09-17 12:28:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(9, 'Branded HardDisk', 4, '', 1, '', 0, '2018-09-17 13:41:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(10, 'Branded HardDisk', 4, '', 1, '', 0, '2018-09-17 13:41:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_sale_rate`
--

CREATE TABLE `product_sale_rate` (
  `product_id` int(11) NOT NULL,
  `rate_of_sale` float NOT NULL,
  `wef` date NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_sale_rate`
--

INSERT INTO `product_sale_rate` (`product_id`, `rate_of_sale`, `wef`, `deleted`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(2, 12, '2018-09-11', 0, '2018-09-11 21:38:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(3, 122, '2018-09-11', 0, '2018-09-11 21:38:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(4, 122, '2018-09-11', 1, '2018-09-11 21:39:18', '0000-00-00 00:00:00', '2018-09-18 20:02:43', 1, 0, 1),
(5, 122, '2018-09-11', 0, '2018-09-11 21:39:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(6, 1200, '2018-09-17', 0, '2018-09-17 12:26:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(7, 1200, '2018-09-17', 0, '2018-09-17 12:26:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(8, 1000, '2018-09-17', 0, '2018-09-17 12:28:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(9, 1500, '2018-09-17', 0, '2018-09-17 13:41:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0),
(10, 1500, '2018-09-17', 0, '2018-09-17 13:41:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_supplier`
--

CREATE TABLE `product_supplier` (
  `product_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_supplier`
--

INSERT INTO `product_supplier` (`product_id`, `supplier_id`) VALUES
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 2),
(10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchase_id` int(11) NOT NULL,
  `date_of_purchase` date NOT NULL,
  `gst_type` int(1) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_product`
--

CREATE TABLE `purchase_product` (
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rate_of_purchase` int(11) NOT NULL,
  `quantity_purchased` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_supplier`
--

CREATE TABLE `purchase_supplier` (
  `purchase_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `employee_type` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `access_rights` text NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date_of_sale` date NOT NULL,
  `invoice_detail` text NOT NULL,
  `employee_id` int(11) NOT NULL,
  `paymode` int(11) NOT NULL,
  `cheque_number` int(11) NOT NULL,
  `cheque_date` date NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `gst_type` int(11) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `currency_append_mode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `supplier_address` text NOT NULL,
  `supplier_contact` varchar(10) NOT NULL,
  `supplier_email` varchar(255) NOT NULL,
  `gst_no` varchar(255) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_name`, `supplier_address`, `supplier_contact`, `supplier_email`, `gst_no`, `deleted`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'nikhil', 'ulhasnagar', '1234567891', '123@gmail.com', '11', 0, '2018-09-04 20:55:16', '2018-09-05 19:34:15', '0000-00-00 00:00:00', 0, 1, 0),
(2, 'hello', 'jhiihgfdhjg', '111111', '1223@gmail.com', '111', 0, '2018-09-04 21:02:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `gst`
--
ALTER TABLE `gst`
  ADD PRIMARY KEY (`hsn_code`,`wef`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`sale_id`,`product_id`);

--
-- Indexes for table `payment_mode`
--
ALTER TABLE `payment_mode`
  ADD PRIMARY KEY (`paymode`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_sale_rate`
--
ALTER TABLE `product_sale_rate`
  ADD PRIMARY KEY (`product_id`,`wef`);

--
-- Indexes for table `product_supplier`
--
ALTER TABLE `product_supplier`
  ADD PRIMARY KEY (`product_id`,`supplier_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `purchase_product`
--
ALTER TABLE `purchase_product`
  ADD PRIMARY KEY (`purchase_id`,`product_id`);

--
-- Indexes for table `purchase_supplier`
--
ALTER TABLE `purchase_supplier`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`employee_type`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_mode`
--
ALTER TABLE `payment_mode`
  MODIFY `paymode` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `employee_type` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `ngo`
--
CREATE DATABASE IF NOT EXISTS `ngo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ngo`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `AID` int(11) NOT NULL,
  `ANAME` varchar(50) DEFAULT NULL,
  `A_EMAIL` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`AID`, `ANAME`, `A_EMAIL`) VALUES
(1, 'Nicholas', 'lacus.Mauris@auctornon.edu'),
(5, 'Scott', 'feugiat.tellus@tellus.ca');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `DNID` int(11) NOT NULL,
  `DAMOUNT` int(11) DEFAULT NULL,
  `COLLECTED_AMT` int(11) NOT NULL,
  `NID` int(11) DEFAULT NULL,
  `D_TITLE` varchar(100) DEFAULT NULL,
  `D_DESCRIPTION` varchar(500) NOT NULL,
  `D_IMAGE` blob NOT NULL,
  `STATUS` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`DNID`, `DAMOUNT`, `COLLECTED_AMT`, `NID`, `D_TITLE`, `D_DESCRIPTION`, `D_IMAGE`, `STATUS`) VALUES
(1, 1000, 95758, 1, 'Educate poor', 'A charitable donation is a gift made by an individual or an organization to a nonprofit organization, charity or private foundation...', '', ''),
(2, 2000, 2147483647, 2, 'Help students', 'A charitable donation is a gift made by an individual or an organization to a nonprofit organization, charity or private foundation...', '', '1'),
(3, 3000, 564, 3, 'Awareness', 'A charitable donation is a gift made by an individual or an organization to a nonprofit organization, charity or private foundation.', '', '1'),
(4, 1700, 2147483647, 1, 'Help the Orphans', 'A charitable donation is a gift made by an individual or an organization to a nonprofit organization, charity or private foundation', '', '1'),
(5, 3000, 3010, 4, 'Women Empowerment', 'A charitable donation is a gift made by an individual or an organization to a nonprofit organization, charity or private foundation', '', '1'),
(6, 3000, 3100, 3, 'ABC', 'adefvnbjgkg ', '', '0'),
(7, 3500, 3000, 2, 'XYZ', 'bfbhirihfjfnmsfdlkjewe', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `donationtransaction`
--

CREATE TABLE `donationtransaction` (
  `DTID` int(11) NOT NULL,
  `DNID` int(11) DEFAULT NULL,
  `DID` int(11) DEFAULT NULL,
  `amount` int(121) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donationtransaction`
--

INSERT INTO `donationtransaction` (`DTID`, `DNID`, `DID`, `amount`) VALUES
(1, 1, 2, 0),
(2, 2, 4, 0),
(3, 3, 9, 0),
(4, 1, 4, 0),
(5, 2, 9, 0),
(6, 3, 2, 0),
(7, 0, 1, 46554645),
(8, 0, 1, 46554645),
(9, 0, 1, 46554645),
(10, 0, 1, 46554645),
(11, 0, 1, 46554645),
(12, 0, 1, 46554645),
(13, 1, 1, 1),
(14, 1, 1, 1),
(15, 1, 1, 1),
(16, 1, 1, 222),
(17, 1, 1, 234234),
(54, 1, 1, 5),
(55, 1, 1, 4545),
(56, 1, 1, 45454),
(57, 1, 1, 45454),
(58, 2, 1, 2147483647),
(59, 3, 1, 564),
(60, 4, 1, 2147483647),
(61, 4, 1, 12121),
(62, 6, 1, 4546),
(63, 6, 1, 26000),
(65, 5, 1, 2000),
(66, 5, 1, 1010),
(67, 1, 1, 300);

--
-- Triggers `donationtransaction`
--
DELIMITER $$
CREATE TRIGGER `NewDonation` AFTER INSERT ON `donationtransaction` FOR EACH ROW update donations set COLLECTED_AMT=(COLLECTED_AMT+NEW.AMOUNT) WHERE (DNID=NEW.DNID)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ValidateDonation` BEFORE INSERT ON `donationtransaction` FOR EACH ROW update donations set STATUS=0 WHERE (DAMOUNT<=COLLECTED_AMT) AND (DNID=NEW.DNID)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `DID` int(11) NOT NULL,
  `DNAME` varchar(50) DEFAULT NULL,
  `DADDRESS` varchar(100) DEFAULT NULL,
  `D_EMAIL` varchar(100) DEFAULT NULL,
  `USER_LEVEL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`DID`, `DNAME`, `DADDRESS`, `D_EMAIL`, `USER_LEVEL`) VALUES
(2, 'Bertha', NULL, 'Suspendisse.aliquet.sem@mauris.net', NULL),
(4, 'Kim', NULL, 'pharetra.felis.eget@cursus.edu', NULL),
(9, 'Grant', NULL, 'pede.ultrices@ullamcorperDuis.ca', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ngo`
--

CREATE TABLE `ngo` (
  `NID` int(11) NOT NULL,
  `ORGNAME` varchar(100) DEFAULT NULL,
  `OPASS` varchar(64) DEFAULT NULL,
  `FIELD` varchar(50) DEFAULT NULL,
  `OADDRESS` varchar(200) DEFAULT NULL,
  `N_EMAIL` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngo`
--

INSERT INTO `ngo` (`NID`, `ORGNAME`, `OPASS`, `FIELD`, `OADDRESS`, `N_EMAIL`) VALUES
(1, 'YourNGO', NULL, NULL, NULL, 'YourNGO@gmail.com'),
(3, 'YourStoryNGO', NULL, NULL, NULL, 'YourStoryNGO@gmail.com'),
(4, 'WeNGO', NULL, NULL, NULL, 'WeNGO@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `ngoevents`
--

CREATE TABLE `ngoevents` (
  `EID` int(11) NOT NULL,
  `NID` int(11) DEFAULT NULL,
  `E_TITLE` varchar(100) DEFAULT NULL,
  `E_DESCRIPTION` varchar(2000) NOT NULL,
  `location` varchar(100) NOT NULL,
  `REQ_REGISTERED` int(11) NOT NULL,
  `REGISTERED` int(11) NOT NULL,
  `STATUS` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngoevents`
--

INSERT INTO `ngoevents` (`EID`, `NID`, `E_TITLE`, `E_DESCRIPTION`, `location`, `REQ_REGISTERED`, `REGISTERED`, `STATUS`) VALUES
(1, 1, 'Educate poor', ' HOME GLOBAL GOALS THE EXPO SPEAKERS 2018 PARTICIP...', 'kurla', 2, 0, '1'),
(2, 2, 'Help students', ' HOME GLOBAL GOALS THE EXPO SPEAKERS 2018 PARTICIP...', 'mulund', 2, 1, '1'),
(3, 3, 'Awareness', ' HOME GLOBAL GOALS THE EXPO SPEAKERS 2018 PARTICIP...', 'chembur', 2, 1, '1'),
(4, 2, 'Donate for food for all', ' HOME GLOBAL GOALS THE EXPO SPEAKERS 2018 PARTICIP...', 'bhandup', 2, 1, '1'),
(5, 2, 'Help Children Study', ' HOME GLOBAL GOALS THE EXPO SPEAKERS 2018 PARTICIP...', 'thane', 2, 1, '1'),
(7, 3, 'Women Empowerment', 'support the women empowerment moment in your area.', 'alibaug', 2, 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `ngoeventspartcpn`
--

CREATE TABLE `ngoeventspartcpn` (
  `EPID` int(11) NOT NULL,
  `EID` int(11) DEFAULT NULL,
  `VID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngoeventspartcpn`
--

INSERT INTO `ngoeventspartcpn` (`EPID`, `EID`, `VID`) VALUES
(2, 2, 6),
(3, 3, 7),
(4, 1, 8),
(5, 2, 10),
(6, 3, 10),
(7, 1, 6),
(8, 2, 7),
(35, 2, 8),
(36, 3, 8),
(37, 4, 8),
(38, 5, 8),
(39, 7, 8);

--
-- Triggers `ngoeventspartcpn`
--
DELIMITER $$
CREATE TRIGGER `NewVolunteer` BEFORE INSERT ON `ngoeventspartcpn` FOR EACH ROW update ngoevents set REGISTERED=(REGISTERED+1) WHERE (EID=NEW.EID AND REQ_REGISTERED>REGISTERED)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ValidateEvent` AFTER INSERT ON `ngoeventspartcpn` FOR EACH ROW update ngoevents set STATUS=0 WHERE (REQ_REGISTERED>=REGISTERED) AND (EID=NEW.EID)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UID` int(11) NOT NULL,
  `UNAME` varchar(50) DEFAULT NULL,
  `U_EMAIL` varchar(100) DEFAULT NULL,
  `PASSWORD` varchar(20) NOT NULL DEFAULT '123456',
  `U_TYPE` enum('1','2','3') NOT NULL,
  `U_PHONE` varchar(10) NOT NULL,
  `U_FIRST_LOGIN` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UID`, `UNAME`, `U_EMAIL`, `PASSWORD`, `U_TYPE`, `U_PHONE`, `U_FIRST_LOGIN`) VALUES
(1, 'Nicholas', 'lacus.Mauris@auctornon.edu', '123456', '1', '9673334456', 0),
(2, 'Bertha', 'Suspendisse.aliquet.sem@mauris.net', '123456', '3', '7744818656', 0),
(3, 'Thomas', 'ut.mi.Duis@purusactellus.org', '123456', '2', '7021197094', 0),
(4, 'Kim', 'pharetra.felis.eget@cursus.edu', '123456', '3', '', 0),
(5, 'Scott', 'feugiat.tellus@tellus.ca', '123456', '1', '', 0),
(6, 'Althea', 'mauris.Morbi.non@nequeNullam.edu', '123456', '2', '', 0),
(7, 'Aspen', 'Suspendisse.tristique@turpisegestasFusce.com', '123456', '2', '', 0),
(8, 'Emmanuel', 'ipsum.nunc@sitamet.com', '123456', '2', '', 0),
(9, 'Grant', 'pede.ultrices@ullamcorperDuis.ca', '123456', '3', '', 0),
(10, 'Kenneth', 'egestas.ligula@infaucibus.edu', '123456', '2', '', 0),
(11, 'khushboo', 'khushboo@gmail.com', '1234556', '1', '8275116900', 0),
(12, 'nikhil', 'nikhil@gmail.com', '123456', '1', '9673334456', 0),
(13, 'Mohit', 'mohit@gmail.com', '123456', '1', '9511567897', 0),
(14, 'piyush', 'piyush@gmail.com', '123456', '1', '9673334456', 0),
(15, 'UJALA', 'ujala@gmail.com', '123456', '1', '9511738058', 0),
(16, 'Gayatri', 'gayatri@gmail.com', 'gayatri', '1', '9511738058', 0),
(17, 'akshay', 'akshay@gmail.com', 'akshay', '1', '8080335642', 0),
(18, 'akshay', 'shyam@gmail.com', '1234567', '1', '8080335642', 0),
(19, 'juhi', 'juhi@gmail.com', '123456', '1', '9673334456', 0),
(20, 'gayatri', 'gauaytri@gmailll.com', 'gayu', '1', '9323048363', 0),
(21, 'ujala', 'uju@gmail.com', 'ujala', '1', '9323048363', 0),
(22, 'divya', 'divya@gmail.com', 'divya', '1', '8329090492', 0),
(28, 'UJALA', 'J@JH.COM', '123456', '1', '9323048363', 0),
(29, 'yu', 'yu@yu.com', '123456', '1', '9323048363', 0);

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `VID` int(11) NOT NULL,
  `VNAME` varchar(50) DEFAULT NULL,
  `VADDRESS` varchar(100) DEFAULT NULL,
  `V_EMAIL` varchar(100) DEFAULT NULL,
  `USER_LEVEL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`VID`, `VNAME`, `VADDRESS`, `V_EMAIL`, `USER_LEVEL`) VALUES
(3, 'Thomas', NULL, 'ut.mi.Duis@purusactellus.org', NULL),
(6, 'Althea', NULL, 'mauris.Morbi.non@nequeNullam.edu', NULL),
(7, 'Aspen', NULL, 'Suspendisse.tristique@turpisegestasFusce.com', NULL),
(8, 'Emmanuel', NULL, 'ipsum.nunc@sitamet.com', NULL),
(10, 'Kenneth', NULL, 'egestas.ligula@infaucibus.edu', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`AID`),
  ADD UNIQUE KEY `ANAME` (`ANAME`),
  ADD UNIQUE KEY `A_EMAIL` (`A_EMAIL`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`DNID`),
  ADD KEY `NID` (`NID`);

--
-- Indexes for table `donationtransaction`
--
ALTER TABLE `donationtransaction`
  ADD PRIMARY KEY (`DTID`),
  ADD KEY `DNID` (`DNID`),
  ADD KEY `DNID_2` (`DNID`),
  ADD KEY `DID` (`DID`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`DID`),
  ADD UNIQUE KEY `D_EMAIL` (`D_EMAIL`);

--
-- Indexes for table `ngo`
--
ALTER TABLE `ngo`
  ADD PRIMARY KEY (`NID`),
  ADD UNIQUE KEY `N_EMAIL` (`N_EMAIL`);

--
-- Indexes for table `ngoevents`
--
ALTER TABLE `ngoevents`
  ADD PRIMARY KEY (`EID`),
  ADD KEY `NID` (`NID`);

--
-- Indexes for table `ngoeventspartcpn`
--
ALTER TABLE `ngoeventspartcpn`
  ADD PRIMARY KEY (`EPID`),
  ADD KEY `VID` (`VID`),
  ADD KEY `EID` (`EID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UID`),
  ADD UNIQUE KEY `U_EMAIL` (`U_EMAIL`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`VID`),
  ADD UNIQUE KEY `V_EMAIL` (`V_EMAIL`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `AID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `DNID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `donationtransaction`
--
ALTER TABLE `donationtransaction`
  MODIFY `DTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `DID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ngo`
--
ALTER TABLE `ngo`
  MODIFY `NID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ngoevents`
--
ALTER TABLE `ngoevents`
  MODIFY `EID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ngoeventspartcpn`
--
ALTER TABLE `ngoeventspartcpn`
  MODIFY `EPID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `VID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

--
-- Dumping data for table `pma__central_columns`
--

INSERT INTO `pma__central_columns` (`db_name`, `col_name`, `col_type`, `col_length`, `col_collation`, `col_isNull`, `col_extra`, `col_default`) VALUES
('erp', 'created_at', 'datetime', '', '', 0, ',', 'CURRENT_TIMESTAMP'),
('erp', 'created_by', 'int', '11', '', 0, ',', ''),
('erp', 'deleted', 'int', '1', '', 0, ',', ''),
('erp', 'deleted_at', 'datetime', '', '', 0, ',', ''),
('erp', 'deleted_by', 'int', '11', '', 0, ',', ''),
('erp', 'updated_at', 'datetime', '', '', 0, ',', ''),
('erp', 'updated_by', 'int', '11', '', 0, ',', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'ngo', 'donations', '{\"sorted_col\":\"`donations`.`DNID` ASC\"}', '2018-10-17 08:29:43'),
('root', 'ngo', 'ngoevents', '{\"sorted_col\":\"`ngoevents`.`REQ_REGISTERED` ASC\"}', '2018-10-17 06:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-10-17 16:19:31', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `practice`
--
CREATE DATABASE IF NOT EXISTS `practice` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `practice`;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dno` int(11) NOT NULL,
  `dname` varchar(20) NOT NULL,
  `dlocation` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(11) NOT NULL,
  `ename` varchar(20) NOT NULL,
  `ecity` varchar(20) NOT NULL,
  `egender` varchar(20) DEFAULT NULL,
  `join_data` datetime DEFAULT CURRENT_TIMESTAMP,
  `salary` int(11) DEFAULT NULL,
  `dno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dno`),
  ADD UNIQUE KEY `dlocation` (`dlocation`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `training`
--
CREATE DATABASE IF NOT EXISTS `training` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `training`;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('2016.milan.hazra@ves.ac.in', '$2y$10$H9ihE4B7BOCjYPeUbOzJ.ObSi/DXSRl2DH.ZUznvumNnUvv1JEhty', '2018-09-22 04:25:00'),
('2016.khushboo.chandnani@ves.ac.in', '$2y$10$5L230ViuJlf8cHLFiAIqI.HZjDkp1b0tXsPKZZFzeMmMu8QwmPRqG', '2018-09-22 07:52:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'milan', '2016.milan.hazra@ves.ac.in', NULL, '$2y$10$Mlz/UbhMptsBfYmfLxhlte1lY/jEbWlbIyY0KDkSdU3Hvvk7UFK12', 'qPN2yWkzxoZHV0R98LppAcUxVt6hqUFwovp1Qyw2m4qmwPxyj4FlBHlHW89W', '2018-09-22 03:44:25', '2018-09-22 03:44:25'),
(2, 'Khushboo', 'nanda.chandnani1234@gmail.com', NULL, '$2y$10$2zAa6mhglca219TG3Q8g0uiBbhlWy.FO.pBjP90HXcsDTTFKJtkzW', 'ZnQwYzj193WBGXmglvKsTaPgetl0LCVrNaGh8d8C8xBsOFBW3hKvCTkV3LXR', '2018-09-22 04:27:52', '2018-09-22 04:29:21'),
(3, 'kash', '2016.khushboo.chandnani@ves.ac.in', NULL, '$2y$10$rEexnMK/49fLqPG3/aAureYpSDZlf.RtEVAyQtIv9miY7xB3HQmIG', 'EirBv3DF6L9cb2NyXWGenQrjW0aLroIdd6EFHhyEUYEOitwL512abXtuQjpu', '2018-09-22 07:52:24', '2018-09-22 07:52:24');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `users`
--
CREATE DATABASE IF NOT EXISTS `users` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `users`;
--
-- Database: `vcloud`
--
CREATE DATABASE IF NOT EXISTS `vcloud` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `vcloud`;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `dept_id` int(10) UNSIGNED NOT NULL,
  `dept_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dept_id`, `dept_name`) VALUES
(1, 'Instrumentation'),
(2, 'Electronics'),
(3, 'Computer Science'),
(4, 'Electronics & Telecommunication'),
(5, 'MCA'),
(6, 'Information Technology'),
(7, 'Un');

-- --------------------------------------------------------

--
-- Table structure for table `labs`
--

CREATE TABLE `labs` (
  `lab_id` int(10) UNSIGNED NOT NULL,
  `lab_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept_id` int(10) UNSIGNED NOT NULL,
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labs`
--

INSERT INTO `labs` (`lab_id`, `lab_no`, `dept_id`, `id`) VALUES
(1, '505', 6, 20),
(2, '510', 3, 21),
(3, '509', 2, 22),
(4, '511', 5, 23),
(5, '512', 6, 14);

-- --------------------------------------------------------

--
-- Table structure for table `lab__components`
--

CREATE TABLE `lab__components` (
  `lc_id` int(10) UNSIGNED NOT NULL,
  `lab_id` int(10) UNSIGNED NOT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spare` int(10) UNSIGNED NOT NULL,
  `working` int(10) UNSIGNED NOT NULL,
  `not_working` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lab__components`
--

INSERT INTO `lab__components` (`lc_id`, `lab_id`, `item_name`, `spare`, `working`, `not_working`) VALUES
(0, 1, '0', 0, 4, 0),
(1, 1, 'Mouse', 4, 3, 1),
(2, 2, 'PC', 5, 3, 2),
(3, 3, 'Cables', 9, 5, 4),
(4, 4, 'CPU', 4, 2, 2),
(14, 1, '0', 0, 4, 0),
(15, 5, 'KeyBoard', 10, 20, 5),
(16, 5, 'CPU', 2, 10, 2);

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2018_09_23_112022_create_roles_table', 1),
(3, '2018_09_23_112311_create_departments_table', 1),
(4, '2018_09_23_112603_create_statuses_table', 1),
(5, '2014_10_12_000000_create_users_table', 2),
(6, '2018_09_23_112358_create_labs_table', 3),
(7, '2018_09_23_112440_create_requests_table', 4),
(8, '2018_09_23_112513_create_lab__components_table', 5),
(9, '2018_09_23_112547_create_staff__components_table', 5),
(10, '2018_09_23_115202_create_track_requests_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `request_id` int(10) UNSIGNED NOT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `request_type` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_count` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`request_id`, `id`, `request_type`, `status_id`, `item_name`, `item_count`, `role_id`) VALUES
(1, 15, 0, 6, 'Mouse', 4, 1),
(2, 14, 1, 6, 'Cables', 5, 2),
(3, 14, 0, 1, 'Mouse', 12, NULL);

--
-- Triggers `requests`
--
DELIMITER $$
CREATE TRIGGER `update_when_status_6` AFTER UPDATE ON `requests` FOR EACH ROW BEGIN
   DECLARE request_id_old integer;
   DECLARE id_old integer;
   DECLARE status_id_old integer;
   DECLARE item_name_old integer;
   DECLARE item_count_old integer;
   DECLARE lab_no_old integer;
   DECLARE role integer;
   Declare status_id_new integer;


          set request_id_old = OLD.request_id;
          set id_old = OLD.id;
          set status_id_old = OLD.status_id;
          set item_name_old = OLD.item_name;
          set item_count_old = OLD.item_count;
          set status_id_new = NEW.status_id;
          set role = (SELECT role_id from roles where role_id in(SELECT role_id from users where id = id_old));       

          if status_id_new = 6 THEN
          BEGIN
			
            
            
               if role = 1 THEN
               BEGIN
                   INSERT INTO `staff__components`(`sc_id`, `id`, `item_name`, `spare`, `working`, `not_working`) VALUES ('',id_old,item_name_old,0,item_count_old,0);
               END;
               END IF;

               if role = 2 THEN
               BEGIN
               set lab_no_old = (select lab_id from labs where id=id_old);
                   INSERT INTO `lab__components`(`lc_id`, `lab_id`, `item_name`, `spare`, `working`, `not_working`) VALUES ('',lab_no_old,item_name_old,0,item_count_old,0);
               END;
               END IF;



          END;
          END IF;
   end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `role_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Staff'),
(2, 'Lab Assistant'),
(3, 'Department Officer'),
(4, 'HOD'),
(5, 'Principal'),
(6, 'Store Manager'),
(7, 'Un'),
(8, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `staff__components`
--

CREATE TABLE `staff__components` (
  `sc_id` int(10) UNSIGNED NOT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spare` int(10) UNSIGNED NOT NULL,
  `working` int(10) UNSIGNED NOT NULL,
  `not_working` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff__components`
--

INSERT INTO `staff__components` (`sc_id`, `id`, `item_name`, `spare`, `working`, `not_working`) VALUES
(0, 15, '0', 0, 5, 0),
(1, 15, 'Staplers', 8, 4, 4),
(2, 15, 'PCs', 4, 2, 2),
(3, 15, 'Mouse', 8, 4, 4),
(4, 15, '0', 0, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `status_id` int(10) UNSIGNED NOT NULL,
  `status_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`status_id`, `status_type`) VALUES
(1, 'sent_for_approval'),
(2, 'request_forwarded'),
(3, 'approved_by_hod'),
(4, 'Approved_by_princi'),
(5, 'order_placed'),
(6, 'order_recieved'),
(7, 'acknowledge_by_stakeholder');

-- --------------------------------------------------------

--
-- Table structure for table `track_requests`
--

CREATE TABLE `track_requests` (
  `track_id` int(10) UNSIGNED NOT NULL,
  `request_id` int(10) UNSIGNED NOT NULL,
  `do_id` int(10) UNSIGNED NOT NULL,
  `avail_staff_id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `track_requests`
--

INSERT INTO `track_requests` (`track_id`, `request_id`, `do_id`, `avail_staff_id`, `status_id`) VALUES
(1, 1, 2, 1, 2),
(2, 2, 3, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_img` blob,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '7',
  `dept_id` int(10) UNSIGNED NOT NULL DEFAULT '7',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_img`, `email`, `email_verified_at`, `password`, `role_id`, `dept_id`, `remember_token`) VALUES
(13, 'Rajpreet Singh', NULL, 'p@gmail.com', NULL, '$2y$10$xcurdypKrb9VEZu7zpdMV./uvmWB7Aj2h.kY7RqK1N2TmArsWLA.C', 8, 1, 'ni76eB4H2pIeid3IaEJ1uIEmGSNOExBW9KaWJFNhuYViepgkzr7L8bmGj6IZ'),
(14, 'Amar', NULL, 'amar@gmail.com', NULL, '$2y$10$qxBT14ivYKVJzVc/HS7gg.1EUVl/sa3ZhwbE3EJADJr9wDUBWGuOG', 2, 6, 'FTisiID0DUfr2e6S4WRpi7tCGG3w8SvvIFtNlbszHukYKcVOSarByXVctydt'),
(15, 'Raj', NULL, 'raj@gmail.com', NULL, '$2y$10$8xMMyfO4dxgVuupHERRaveyKGkhl.k0pOsPTi5mMvYXqc8OEkBus2', 1, 5, 'eVexLq4Nq1XUUkCitjEMRUDPf03WhW0vNB8dyjsnhzrgcymvFJnCLdVYqL79'),
(16, 'AthulB', NULL, 'athul@gmail.com', NULL, '$2y$10$dyh/qpkhsLL.8v4ruZc44uriJrT2BzoZGEP.apHb0MTLOdhEXbxSK', 3, 2, 'vnwynf3qLdjWOtMJeiFuUGO4Ny867JhFBT2nRLGSkuRCUmAiTbUevGwVQyvx'),
(17, 'Pranali', NULL, 'pranali@gmail.com', NULL, '$2y$10$DO.EwdduA88JvLt2hH0Hz.D/14YpPsishNNxUlCeGbW3HhzWOR.KW', 4, 4, 'xy6i43fbnXGqkHYd5WHxdDgiVHfkvVvn1a8LMlwg96w5TtutsQmquIE2HJ61'),
(18, 'Milan', NULL, 'milan@gmail.com', NULL, '$2y$10$dEPMAfLhD4z9ylRAsxUw/uZTANdgAGU9NMUKCl5UNOakRLd386zAa', 5, 6, '9T3i2H8Y17cgIBH2ZCX5Q0bHByTIO0hHkJbBXO9nzoNNDaHMBFkkuUlbWs9N'),
(19, 'Amit', NULL, 'amit@gmail.com', NULL, '$2y$10$ACEVU654wOdlQ0EumRbmR.KInECvaPvzI3NxGzUjhk757r/XIxtZ2', 6, 5, 't487sSbevgtYb65WLz2kTmzlU3yiZtebkPq8JJDZh60jPLY9tDa7y4pwbuXr'),
(20, 'Mach1', NULL, 'mach@gmail.com', NULL, '$2y$10$tU7p3I4VCC06ynayenT/gea3NrCIuPA4p89GgGd.nA34cKhjsRSAy', 2, 7, 'WIM3zLCCkXqyDWfqIORKElMtdnLTCH7Ab7m4hwkFUNKBzGlnbUlZtQyZMIPb'),
(21, 'Labass1', NULL, 'lab1@gmail.com', NULL, '$2y$10$gObA7vwHei8BDnCan2kqDutwS379b5YEscNGgEfH92Zp6s/Mp15o6', 2, 1, NULL),
(22, 'Labass2', NULL, 'lab2@gmail.com', NULL, '$2y$10$H8V6/1Y1FBKWRu/LvlHKZOiAV6DXIHS2novJysHhnZaAfdodOmDMG', 2, 2, NULL),
(23, 'Labass3', NULL, 'lab3@gmail.com', NULL, '$2y$10$EqCiJiQqssJVfOl1P4P9o.DQMctUnBXfX7V.tqlTopw5eirsj74ia', 2, 4, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `labs`
--
ALTER TABLE `labs`
  ADD PRIMARY KEY (`lab_id`),
  ADD KEY `labs_dept_id_foreign` (`dept_id`),
  ADD KEY `labs_id_foreign` (`id`);

--
-- Indexes for table `lab__components`
--
ALTER TABLE `lab__components`
  ADD PRIMARY KEY (`lc_id`),
  ADD KEY `lab__components_lab_id_foreign` (`lab_id`);

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
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `requests_id_foreign` (`id`),
  ADD KEY `requests_status_id_foreign` (`status_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `staff__components`
--
ALTER TABLE `staff__components`
  ADD PRIMARY KEY (`sc_id`),
  ADD KEY `staff__components_id_foreign` (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `track_requests`
--
ALTER TABLE `track_requests`
  ADD PRIMARY KEY (`track_id`),
  ADD KEY `track_requests_status_id_foreign` (`status_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_dept_id_foreign` (`dept_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `dept_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `labs`
--
ALTER TABLE `labs`
  MODIFY `lab_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lab__components`
--
ALTER TABLE `lab__components`
  MODIFY `lc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `request_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `staff__components`
--
ALTER TABLE `staff__components`
  MODIFY `sc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `status_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `track_requests`
--
ALTER TABLE `track_requests`
  MODIFY `track_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `labs`
--
ALTER TABLE `labs`
  ADD CONSTRAINT `labs_dept_id_foreign` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dept_id`),
  ADD CONSTRAINT `labs_id_foreign` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Constraints for table `lab__components`
--
ALTER TABLE `lab__components`
  ADD CONSTRAINT `lab__components_lab_id_foreign` FOREIGN KEY (`lab_id`) REFERENCES `labs` (`lab_id`);

--
-- Constraints for table `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_id_foreign` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `requests_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`status_id`);

--
-- Constraints for table `staff__components`
--
ALTER TABLE `staff__components`
  ADD CONSTRAINT `staff__components_id_foreign` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Constraints for table `track_requests`
--
ALTER TABLE `track_requests`
  ADD CONSTRAINT `track_requests_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`status_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_dept_id_foreign` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dept_id`),
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
