-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2020 at 03:53 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mypos`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `gender`, `phone`, `address`, `created`, `updated`) VALUES
(1, 'Zoelva Hafiizh', 'L', '0812312731', 'Komplek Saadah 1\r\nJl.Muslim No.21A', '2020-07-27 21:42:47', '2020-07-29 15:02:44'),
(2, 'Khairani', 'L', '08317312312', 'Komplek Saadah 2\r\nJl.Muslim', '2020-07-27 21:53:39', '2020-07-27 15:54:08'),
(3, 'Zoelva', 'L', '08213121', 'Sungai Ulin', '2020-07-29 20:53:55', NULL),
(4, 'Hafiizh', 'L', '08123123123', 'Martapura Kota Kabupaten Banjar', '2020-07-29 20:54:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p_category`
--

CREATE TABLE `p_category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `p_category`
--

INSERT INTO `p_category` (`category_id`, `name`, `created`, `updated`) VALUES
(2, 'Makanan', '2020-07-27 22:07:25', NULL),
(3, 'Minuman', '2020-07-27 22:17:41', '2020-07-28 08:37:51');

-- --------------------------------------------------------

--
-- Table structure for table `p_item`
--

CREATE TABLE `p_item` (
  `item_id` int(11) NOT NULL,
  `barcode` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `stock` int(10) NOT NULL DEFAULT 0,
  `image` varchar(100) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `p_item`
--

INSERT INTO `p_item` (`item_id`, `barcode`, `name`, `category_id`, `unit_id`, `price`, `stock`, `image`, `created`, `updated`) VALUES
(2, 'A001', 'Indomie', 2, 2, 2000, 45, 'item200728-a2657ce050.png', '2020-07-28 12:17:45', '2020-07-28 17:03:28'),
(4, 'A002', 'Susu Indomilk', 3, 4, 12000, 13, 'item200728-5bec580e2b.jpg', '2020-07-28 12:20:29', '2020-07-28 17:03:37'),
(6, 'A003', 'Teh Gelas', 3, 4, 3000, 0, 'item200728-f5e90357bf.jpg', '2020-07-28 14:37:42', '2020-07-28 17:03:44'),
(13, 'A006', 'Milo', 3, 4, 4000, 23, 'item200728-ca1e177e42.jpg', '2020-07-28 21:11:56', '2020-07-28 17:01:55'),
(14, 'A007', 'Biskuit roma', 2, 4, 40000, 42, 'item200728-4cc3498279.jpg', '2020-07-28 23:03:02', NULL),
(15, 'A008', 'kong guan', 2, 2, 100000, 14, 'item200728-1a39e7e4e4.jpg', '2020-07-28 23:04:38', NULL),
(16, 'A009', 'Ultramilk', 3, 4, 5000, 0, 'item200728-c4c7678125.jpg', '2020-07-28 23:06:20', NULL),
(17, 'A010', 'Oreo', 2, 4, 9000, 0, 'item200728-371e8b4699.jpg', '2020-07-28 23:07:34', NULL),
(18, 'A011', 'Biskuat', 2, 4, 12000, 0, 'item200728-09ac29eb16.jpg', '2020-07-28 23:08:44', NULL),
(19, 'A012', 'Aqua', 2, 4, 1000, 0, 'item200728-09583256bd.jpg', '2020-07-28 23:10:25', NULL),
(20, 'A013', 'Ades', 2, 4, 10000, 0, 'item200728-719e14a9d1.jpg', '2020-07-28 23:11:04', NULL),
(21, 'A014', 'bumbu nasi goreng', 2, 4, 9000, 0, 'item200728-50a117088f.jpg', '2020-07-28 23:13:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p_unit`
--

CREATE TABLE `p_unit` (
  `unit_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `p_unit`
--

INSERT INTO `p_unit` (`unit_id`, `name`, `created`, `updated`) VALUES
(2, 'Kilogram', '2020-07-27 22:07:25', '2020-07-27 16:28:37'),
(4, 'Buah', '2020-07-27 22:28:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `name`, `phone`, `address`, `description`, `created`, `updated`) VALUES
(1, 'Toko A', '0812312314', 'Komplek saadah 2', 'Toko Pakaian Muslim', '2020-07-27 14:06:19', '2020-07-27 14:24:45'),
(2, 'Toko B', '082137324', 'Komplek saadah 1, Jl.Muslim', NULL, '2020-07-27 14:06:19', NULL),
(4, 'Toko C', '081231231', 'Komplek saadah 3', 'Toko Handphone', '2020-07-27 20:03:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_sale`
--

CREATE TABLE `t_sale` (
  `sale_id` int(11) NOT NULL,
  `invoice` varchar(50) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `total_price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `final_price` int(11) NOT NULL,
  `cash` int(11) NOT NULL,
  `remaining` int(11) NOT NULL,
  `note` text NOT NULL,
  `date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_sale`
--

INSERT INTO `t_sale` (`sale_id`, `invoice`, `customer_id`, `total_price`, `discount`, `final_price`, `cash`, `remaining`, `note`, `date`, `user_id`, `created`) VALUES
(1, 'MP2007290001', NULL, 234234, 2342, 234234, 23424, 23423, '', '2020-07-29', 1, '2020-07-29 21:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `t_stock`
--

CREATE TABLE `t_stock` (
  `stock_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `type` enum('in','out') NOT NULL,
  `detail` varchar(200) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  `date` date NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_stock`
--

INSERT INTO `t_stock` (`stock_id`, `item_id`, `type`, `detail`, `supplier_id`, `qty`, `date`, `created`, `user_id`) VALUES
(1, 2, 'in', 'Kulakan', 1, 20, '2020-07-29', '2020-07-29 13:43:12', 1),
(3, 4, 'in', 'Kulakan', 4, 13, '2020-07-29', '2020-07-29 14:45:43', 1),
(4, 13, 'in', 'Kulakan', 2, 23, '2020-07-29', '2020-07-29 14:46:00', 1),
(5, 14, 'in', 'Kulakan', 2, 42, '2020-07-29', '2020-07-29 14:46:14', 1),
(6, 2, 'in', 'Tambahan', 2, 25, '2020-07-29', '2020-07-29 15:01:14', 1),
(7, 15, 'in', 'Kulakan', 2, 15, '2020-07-29', '2020-07-29 15:01:25', 1),
(12, 2, 'in', 'Tambahan', 2, 21, '2020-07-29', '2020-07-29 16:27:54', 1),
(14, 15, 'out', 'Hilang', NULL, 1, '2020-07-29', '2020-07-29 16:29:57', 1),
(15, 2, 'out', 'Rusak', NULL, 5, '2020-07-29', '2020-07-29 16:34:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `level` int(1) NOT NULL COMMENT '1:Admin, 2:Kasir'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `address`, `level`) VALUES
(1, 'admin', '75efb145482ce22f4544390cad233c749c1b43e4', 'Hafiizh Zoelva Khairani', 'Martapura Kota', 1),
(3, 'zoelva', '75efb145482ce22f4544390cad233c749c1b43e4', 'Zoelva Hafiizh', 'komplek saadah 2, jl.Muslimin', 2),
(5, 'khairani', '8cb2237d0679ca88db6464eac60da96345513964', 'Khairani Hafiizh Zoelva', 'Komplek saadah 1', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `p_category`
--
ALTER TABLE `p_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `p_item`
--
ALTER TABLE `p_item`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `barcode` (`barcode`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `unit_id` (`unit_id`);

--
-- Indexes for table `p_unit`
--
ALTER TABLE `p_unit`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `t_sale`
--
ALTER TABLE `t_sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `t_stock`
--
ALTER TABLE `t_stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `p_category`
--
ALTER TABLE `p_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `p_item`
--
ALTER TABLE `p_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `p_unit`
--
ALTER TABLE `p_unit`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `t_sale`
--
ALTER TABLE `t_sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_stock`
--
ALTER TABLE `t_stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `p_item`
--
ALTER TABLE `p_item`
  ADD CONSTRAINT `p_item_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `p_category` (`category_id`),
  ADD CONSTRAINT `p_item_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `p_unit` (`unit_id`);

--
-- Constraints for table `t_stock`
--
ALTER TABLE `t_stock`
  ADD CONSTRAINT `t_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `p_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_stock_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`),
  ADD CONSTRAINT `t_stock_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
