-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2021 at 05:53 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ospjsp`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `email` varchar(100) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `mobilenumber` bigint(20) DEFAULT NULL,
  `orderdate` varchar(100) DEFAULT NULL,
  `deliverydate` varchar(100) DEFAULT NULL,
  `paymentmethod` varchar(100) DEFAULT NULL,
  `transactionid` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`email`, `product_id`, `quantity`, `price`, `total`, `address`, `city`, `state`, `country`, `mobilenumber`, `orderdate`, `deliverydate`, `paymentmethod`, `transactionid`, `status`) VALUES
('alok1@gmail.com', 2, 1, 899, 899, 'New Gulabnagar', 'Rajkot', 'Gujarat', 'India', 987654321, '2021-09-06 18:57:52', '2021-09-13 18:57:52.000000', 'Cash On Delivery(COD', 'TID-00001', 'Cancel'),
('alok2@gmail.com', 1, 1, 599, 599, 'GulabNagar', 'Rajkot', 'Gujarat', 'India', 9876543210, '2021-09-07 13:11:15', '2021-09-14 13:11:15.000000', 'Cash On Delivery(COD', '', 'bill'),
('alok2@gmail.com', 3, 1, 7999, 7999, 'Silver City', 'Rajkot', 'Gujarat', 'India', 9876543210, '2021-09-07 13:20:19', '2021-09-14 13:20:19.000000', 'Cash On Delivery(COD', '', 'bill'),
('alok1@gmail.com', 2, 1, 899, 899, 'New Gulabnagar-2', 'Rajkot', 'Gujarat', 'India', 987654321, '2021-09-07 13:25:46', '2021-09-14 13:25:46.000000', 'Cash On Delivery(COD', '', 'Cancel'),
('alok1@gmail.com', 1, 1, 599, 599, 'New Gulabnagar-2', 'Rajkot', 'Gujarat', 'India', 987654321, '2021-09-07 20:29:49', '2021-09-14 20:29:49.000000', 'Cash On Delivery(COD', '', 'Cancel'),
('alok5@gmail.com', 5, 1, 12999, 12999, 'Sliver City', 'Los Angles', 'UN', 'America', 9409733595, '2021-09-07 20:35:04', '2021-09-14 20:35:04.000000', 'Online Payment', 'TID-00005', 'Delivered'),
('alok@gmail.com', 5, 2, 12999, 25998, 'RajHans-1', 'Rajjkot', 'Gujarat', 'India', 1234567890, '2021-09-07 20:47:07', '2021-09-14 20:47:07.000000', 'Cash On Delivery(COD', '', 'Cancel'),
('alok@gmail.com', 4, 1, 599, 599, 'RajHans-1', 'Rajjkot', 'Gujarat', 'India', 1234567890, '2021-09-08 10:12:46', '2021-09-15 10:12:46.000000', 'Cash On Delivery(COD', '', 'Cancel'),
('alok@gmail.com', 5, 1, 12999, 12999, 'RajHans-1', 'Rajjkot', 'Gujarat', 'India', 1234567890, '2021-09-08 11:47:57', '2021-09-15 11:47:57.000000', 'Cash On Delivery(COD', '', 'Cancel'),
('alok@gmail.com', 1, 1, 599, 599, 'RajHans-1', 'Rajjkot', 'Gujarat', 'India', 1234567890, '2021-09-08 11:48:17', '2021-09-15 11:48:17.000000', 'Cash On Delivery(COD', '', 'Cancel'),
('alok5@gmail.com', 2, 1, 899, 899, 'Sliver City', 'Los Angles', 'UN', 'America', 9409733595, '2021-09-08 12:02:43', '2021-09-15 12:02:43.000000', 'Cash On Delivery(COD', '', 'processing'),
('alok@gmail.com', 1, 1, 599, 599, 'RajHans-1', 'Rajjkot', 'Gujarat', 'India', 1234567890, '2021-09-08 12:12:33', '2021-09-15 12:12:33.000000', 'Cash On Delivery(COD', '', 'Cancel'),
('alok5@gmail.com', 5, 1, 12999, 12999, 'Sliver City', 'Los Angles', 'UN', 'America', 9409733595, '2021-09-08 12:33:46', '2021-09-15 12:33:46.000000', 'Cash On Delivery(COD', '', 'Delivered'),
('alok5@gmail.com', 4, 1, 599, 599, 'Sliver City', 'Los Angles', 'UN', 'America', 9409733595, '2021-09-08 12:33:46', '2021-09-15 12:33:46.000000', 'Cash On Delivery(COD', '', 'processing'),
('alok5@gmail.com', 3, 1, 7999, 7999, 'Sliver City', 'Los Angles', 'UN', 'America', 9409733595, '2021-09-08 12:33:46', '2021-09-15 12:33:46.000000', 'Cash On Delivery(COD', '', 'processing'),
('alok5@gmail.com', 5, 1, 12999, 12999, 'Sliver City-1', 'LOS Angles', 'UN', 'American', 9409733595, '2021-09-09 13:25:34', '2021-09-16 13:25:34.000000', 'Cash On Delivery(COD', '', 'Delivered'),
('alok5@gmail.com', 4, 6, 599, 3594, 'Sliver City-1', 'LOS Angles', 'UN', 'American', 9409733595, '2021-09-09 13:27:03', '2021-09-16 13:27:03.000000', 'Cash On Delivery(COD', '', 'processing'),
('alok5@gmail.com', 2, 1, 899, 899, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('alok5@gmail.com', 5, 1, 12999, 12999, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('alok@gmail.com', 1, 2, 599, 1198, 'RajHans-1', 'Rajjkot', 'Gujarat', 'India', 1234567890, '2021-09-09 13:34:12', '2021-09-16 13:34:12.000000', 'Cash On Delivery(COD', '', 'Cancel');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `body` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `email`, `subject`, `body`) VALUES
(1, 'alok@gmail.com', 'Related to Product', 'Your Service so Good!');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `category` varchar(500) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `active` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `category`, `price`, `active`) VALUES
(1, 'Sports Shoes', 'Sohes', 599, 'Yes'),
(2, 'Casual  Shoes', 'Men Shoes', 899, 'Yes'),
(3, 'MI 5A', 'Mobile', 7999, 'Yes'),
(4, 'Party  Shoes', 'Men Shoes', 599, 'Yes'),
(5, 'MI Note 5 Pro', 'Mobile', 12999, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `mobileNumber` bigint(20) DEFAULT NULL,
  `securityQuestion` varchar(100) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `mobileNumber`, `securityQuestion`, `answer`, `password`, `address`, `city`, `state`, `country`) VALUES
('admin', 'admin@gmail.com', 9409733596, 'What  your favorite movie?', 'Avengers Infinity War', 'admin1', NULL, NULL, NULL, NULL),
('Alok', 'alok5@gmail.com', 9409733595, 'What  your favorite movie?', 'Avengers Endgame', '123', 'Sliver City-1', 'LOS Angles', 'UN', 'American'),
('Alok Guriya', 'alok@gmail.com', 7573935329, 'What was your first car?', 'Audi', '123', 'RajHans-1', 'Rajjkot', 'Gujarat', 'India');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
