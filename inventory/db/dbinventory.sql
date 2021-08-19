-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2021 at 06:16 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbinventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `invento_categories`
--

CREATE TABLE `invento_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `place` varchar(200) NOT NULL,
  `descrp` varchar(400) NOT NULL,
  `date_added` date DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invento_categories`
--

INSERT INTO `invento_categories` (`id`, `name`, `place`, `descrp`, `date_added`) VALUES
(1, 'Laptops', 'laptop', 'laptop', '2021-06-12');

-- --------------------------------------------------------

--
-- Table structure for table `invento_items`
--

CREATE TABLE `invento_items` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `descrp` varchar(400) NOT NULL,
  `category` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `date_added` date DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invento_items`
--

INSERT INTO `invento_items` (`id`, `name`, `descrp`, `category`, `qty`, `price`, `date_added`) VALUES
(1, 'hp', 'hp', 1, 992, '50000.00', '2021-06-12');

-- --------------------------------------------------------

--
-- Table structure for table `invento_logs`
--

CREATE TABLE `invento_logs` (
  `id` int(11) NOT NULL,
  `type` int(1) NOT NULL,
  `item` int(11) NOT NULL,
  `fromqty` int(11) NOT NULL,
  `toqty` int(11) NOT NULL,
  `fromprice` decimal(15,2) NOT NULL,
  `toprice` decimal(15,2) NOT NULL,
  `date_added` date DEFAULT '0000-00-00',
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invento_logs`
--

INSERT INTO `invento_logs` (`id`, `type`, `item`, `fromqty`, `toqty`, `fromprice`, `toprice`, `date_added`, `user`) VALUES
(1, 2, 1, 1000, 992, '400000.00', '0.00', '2021-06-12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invento_settings`
--

CREATE TABLE `invento_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `val` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invento_settings`
--

INSERT INTO `invento_settings` (`id`, `name`, `val`) VALUES
(1, 'site_title', 'Invento - %page%'),
(2, 'site_logo', 'media/img/logo3x.png'),
(3, 'allow_userchange', 'y'),
(4, 'allow_namechange', 'y'),
(5, 'allow_emailchange', 'y'),
(6, 'installed', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `invento_users`
--

CREATE TABLE `invento_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` char(32) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` int(1) NOT NULL,
  `date_added` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invento_users`
--

INSERT INTO `invento_users` (`id`, `username`, `password`, `name`, `email`, `role`, `date_added`) VALUES
(1, 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', 'Admin Account', 'admin@admin.com', 1, '2017-01-28'),
(2, 'cosmas', 'e10adc3949ba59abbe56e057f20f883e', 'Cosmas', 'cosmas@gmail.com', 3, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invento_categories`
--
ALTER TABLE `invento_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invento_items`
--
ALTER TABLE `invento_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invento_logs`
--
ALTER TABLE `invento_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invento_settings`
--
ALTER TABLE `invento_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invento_users`
--
ALTER TABLE `invento_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `invento_categories`
--
ALTER TABLE `invento_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invento_items`
--
ALTER TABLE `invento_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invento_logs`
--
ALTER TABLE `invento_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invento_settings`
--
ALTER TABLE `invento_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `invento_users`
--
ALTER TABLE `invento_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
