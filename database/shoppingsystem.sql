-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2024 at 06:01 PM
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
-- Database: `shoppingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` bigint(20) NOT NULL,
  `added_date` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `added_date`, `email`, `password`, `name`) VALUES
(1, '2023-12-28 22:38:00', 'admin@gmail.com', 'admin', 'nsbm');

-- --------------------------------------------------------

--
-- Table structure for table `tblcart`
--

CREATE TABLE `tblcart` (
  `id` bigint(20) NOT NULL,
  `discount_price` varchar(200) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` varchar(200) DEFAULT NULL,
  `customer_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `mrp_price` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcart`
--

INSERT INTO `tblcart` (`id`, `discount_price`, `quantity`, `total_price`, `customer_id`, `product_id`, `mrp_price`) VALUES
(3, '400', 1, '400', 5, 3, '40'),
(5, '400', 1, '400', 7, 3, '40'),
(7, '500', 1, '500', 7, 14, ''),
(8, '40', 1, '40', 7, 33, ''),
(9, '40', 1, '40', 7, 33, ''),
(10, '200', 1, '200', 7, 34, ''),
(11, '300', 1, '300', 7, 35, ''),
(12, '300', 1, '300', 7, 36, ''),
(13, '340', 1, '340', 7, 50, '300'),
(14, '490', 1, '490', 7, 55, '390'),
(15, '340', 1, '340', 7, 50, '300'),
(16, '340', 1, '340', 7, 50, '300'),
(17, '340', 1, '340', 7, 50, '300'),
(18, '340', 1, '340', 7, 50, '300'),
(19, '340', 1, '340', 7, 54, '300'),
(25, '500', 1, '500', 10, 69, ''),
(26, '1000', 1, '1000', 10, 70, ''),
(27, '320', 1, '320', 10, 68, ''),
(33, '1200', 1, '1200', 8, 71, '1650'),
(34, '320', 1, '320', 8, 68, '350');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `added_date` timestamp NULL DEFAULT current_timestamp(),
  `email` varchar(100) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `pin_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`id`, `address`, `added_date`, `email`, `gender`, `name`, `password`, `phone`, `pin_code`) VALUES
(8, 'c7/sf/01, government housing scheme, jalthara', '2024-01-03 11:45:35', 'deelaka.lakpura94@gmail.com', 'Male', 'Deelaka Lakpura', 'nimal2001', '+94752056898', '10650'),
(9, 'c7/sf/01, government housing scheme, jalthara', '2024-01-04 02:40:29', 'deelaka.lakpura94@gmail.com', 'Male', 'Deelaka Lakpura', 'deelaka2001', '+94752056898', '10650'),
(10, 'gampaha', '2024-01-04 15:29:01', 'mahagamamudalige@gmail.com', 'Female', 'dilshi', 'dilshi2001', '0769433403', '10650');

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `id` int(11) NOT NULL,
  `order_no` int(11) DEFAULT NULL,
  `customer_name` varchar(200) DEFAULT NULL,
  `mobile_number` varchar(100) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  `address_type` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `product_name` varchar(400) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `product_price` varchar(100) DEFAULT NULL,
  `product_selling_price` varchar(100) DEFAULT NULL,
  `product_total_price` varchar(100) DEFAULT NULL,
  `order_status` varchar(100) DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT current_timestamp(),
  `payment_mode` varchar(100) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `id` bigint(20) NOT NULL,
  `active` varchar(100) DEFAULT NULL,
  `code` varchar(5) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `image_name` varchar(400) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `mrp_price` varchar(200) DEFAULT NULL,
  `product_category` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `active`, `code`, `create_date`, `description`, `image`, `image_name`, `name`, `price`, `mrp_price`, `product_category`) VALUES
(68, 'Active', '2YF', '2023-12-31 09:13:40', 'fresh', 'duriyan-11.jpg', 'duriyan-11.jpg', 'Duriyan', '320', '350', 'fruits'),
(69, 'Active', 'WZG', '2023-12-31 09:14:56', 'fresh', 'C:UsersRaveen GunawardanaDocumentsNetBeansProjectsOnlineShoppingSystemwebuploadssa99.jpg', 'strawberry-11.jpg', 'strawberry', '500', '650', 'fruits'),
(70, 'Active', '1RH', '2023-12-31 09:15:35', 'fresh', 'C:UsersRaveen GunawardanaDocumentsNetBeansProjectsOnlineShoppingSystemwebuploadsch99.jpg', 'pngegg.png', 'Chicken', '1000', '1200', 'meat'),
(71, 'Active', 'WMN', '2023-12-31 09:16:45', 'fresh', 'C:UsersRaveen GunawardanaDocumentsNetBeansProjectsOnlineShoppingSystemwebuploadsis99.jpg', 'prowns.png', 'Prawns', '1200', '1650', 'meat'),
(72, 'Active', 'J7F', '2023-12-31 09:17:22', 'fresh', 'C:UsersRaveen GunawardanaDocumentsNetBeansProjectsOnlineShoppingSystemwebuploadslu99.jpg', 'onion.png', 'Onion', '200', '350', 'Vegetables'),
(73, 'Active', 'XC0', '2023-12-31 09:17:53', 'fresh', 'C:UsersRaveen GunawardanaDocumentsNetBeansProjectsOnlineShoppingSystemwebuploadsma99.jpg', 'potato.jpg', 'Potatoes', '175', '230', 'Vegetables'),
(74, 'Active', '8Q0', '2023-12-31 09:18:33', 'soft drinks', 'C:UsersRaveen GunawardanaDocumentsNetBeansProjectsOnlineShoppingSystemwebuploadsor99.jpg', 'fa12.jpg', 'Fanta', '200', '300', 'beverages'),
(75, 'Active', 'FNI', '2023-12-31 09:19:25', 'soft drinks', 'C:UsersRaveen GunawardanaDocumentsNetBeansProjectsOnlineShoppingSystemwebuploadscin99.jpg', 'sp12.jpg', 'Sprite', '200', '240', 'beverages'),
(76, 'Active', '30W', '2023-12-31 09:20:03', 'fresh', 'C:UsersRaveen GunawardanaDocumentsNetBeansProjectsOnlineShoppingSystemwebuploadsba99.png', 'Banana11.jpg', 'Banana', '300', '410', 'fruits'),
(77, 'Active', 'J2U', '2023-12-31 09:20:54', 'fresh', 'C:UsersRaveen GunawardanaDocumentsNetBeansProjectsOnlineShoppingSystemwebuploadsfi99.jpg', 'fish.png', 'Fish', '600', '760', 'meat'),
(80, 'Active', 'A3D', '2024-01-04 12:38:18', 'Fresh', 'C:UsersDeelakaDesktoponline shopping siteshopping siteOnlineShoppingSystemwebuploadsPic913014.jpg', 'Pic913014.jpg', 'Cabbage', '130', '200', 'vagitables');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `dfsdf` int(11) NOT NULL,
  `sdsd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcart`
--
ALTER TABLE `tblcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcart`
--
ALTER TABLE `tblcart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
