-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 16, 2020 at 07:30 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id15305735_listofrents`
--
CREATE DATABASE IF NOT EXISTS `id15305735_listofrents` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id15305735_listofrents`;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `rrp` decimal(7,2) NOT NULL DEFAULT 0.00,
  `img` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `desc`, `price`, `rrp`, `img`, `date_added`) VALUES
(1, 'إيجار 1', 'مساحة واسعة وغرفتين، بكل غرفة سريرين مع وجود تلفاز', 1500.00, 0.00, 'rent1.jpg', '2020-11-15 00:23:39'),
(2, 'إيجار 2', 'إيجار شقة بغرفة واحدة وبكل غرفة سريرين مع وجود تلفاز', 1000.00, 0.00, 'rent2.jpg', '2020-11-14 00:27:34'),
(3, 'إيجار 3', 'إيجار شقة بغرفة واحدة وبكل غرفة سريرين مع وجود تلفاز', 1000.00, 0.00, 'rent3.jpg', '2020-11-14 07:27:34'),
(4, 'إيجار 4', 'إيجار شقة بغرفة واحدة وبكل غرفة سريرين مع وجود تلفاز', 900.00, 0.00, 'rent4.jpg', '2020-11-13 07:27:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
