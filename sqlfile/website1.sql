-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 05, 2021 at 03:39 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website1`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `id` int(11) NOT NULL,
  `text` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`id`, `text`) VALUES
(1, 'Classic and some of the best features in this website i hope you have enjoyed scrolling down and choose to enjoy our about section. This is a temporary web page designed for only personal use.');

-- --------------------------------------------------------

--
-- Table structure for table `admin_panel`
--

CREATE TABLE `admin_panel` (
  `id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_panel`
--

INSERT INTO `admin_panel` (`id`, `f_name`, `l_name`, `email`, `password`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', 'admin'),
(3, 'Bhavin', 'Patil', 'bhavin@gmail.com', 'Bhavin'),
(4, 'Pro', 'Human', 'prohuman001@gmail.com', 'ProHuman');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `catname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `p_name` varchar(60) NOT NULL,
  `p_desc` varchar(100) NOT NULL,
  `p_value` float NOT NULL,
  `p_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `p_name`, `p_desc`, `p_value`, `p_image`) VALUES
(18, 'iPhone 11 ', 'Apple ', 70000, 'store/71i2XhHU3pL._SL1500_.jpg'),
(21, 'One Plus Nord', 'One Plus', 10000, 'store/da502c9b7c4eb1168eb3b8db6861c1e33501f6d3.jpeg'),
(22, 'Huawei P30 Pro', 'Huawei', 70000, 'store/51e-Kgi8kSL._SL1000_.jpg'),
(23, 'JBL SPEAKER', 'JBL', 10000, 'store/JBL-Flip-4-Headphones-and-Headsets-491350547-i-1-1200Wx1200H.jpeg'),
(25, 'Pixel 3XL', 'Pixel Google ', 50000, 'store/aa-600x600.png'),
(26, 'Pixel 4A', 'Google ', 45000, 'store/google-pixel-4a-black-desktop-Format-488.png'),
(27, 'Macbook Pro', 'Apple', 140000, 'store/apro2.jpg'),
(28, 'HP 15 DS', 'HP', 70000, 'store/hp1.jpg'),
(29, 'Dell Vostro', 'Dell', 58999, 'store/dell1.jpg'),
(30, 'Beats', 'Headphones ', 15000, 'store/beats.jpg'),
(32, 'Omega Watch', 'Omega', 70000, 'store/OM-Aqua-Terra-Banner-GB_b20fba25-a9b2-4594-bd96-6c6fa9053630_760x.jpg'),
(33, 'Logitech M557', 'Accessories: Mouse Logitech', 1000, 'store/fiji-3-bt-m557.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `l_name`, `email`, `password`) VALUES
(2, 'Rahul', 'Chowan', 'user@gmail.com', 'user'),
(3, 'Bhavesh', 'Patel', 'lion@gmail.com', 'lion'),
(4, 'Chaitanya', 'Pawar', 'tiger@gmail.com', 'tiger'),
(6, 'Rohit', 'Iparkar', 'ajay@gmail.com', 'ajay'),
(7, 'Abhishek', 'Jadhav', 'doom@gmail.com', 'doom'),
(8, 'Jay', 'Patil', 'jay@gda.com', 'jay'),
(9, 'Ajay', 'Lohar', 'jad@gma.com', 'jay'),
(10, 'Pranali', 'Raut', 'pad@gmail.com', 'pads'),
(11, 'Shubham', 'Jadhav', 'prohuman001@gmail.com', 'hada'),
(12, 'Ashish', 'Pathan', 'd1a@gmail.com', '@gmads'),
(13, 'Ms', 'Dhoni', 'affa@afdds', 'adsds'),
(14, 'Rohit', 'Sharma', 'ada@adfsd', 'asd'),
(15, 'Virat', 'Kohli', 'asda@asd.ca', 'asd'),
(17, 'Rohan', 'Kar', 'baj@aka.com', 'por'),
(18, 'John', 'Pro', 'lak@ha.com', 'jaa');

-- --------------------------------------------------------

--
-- Stand-in structure for view `u_products`
-- (See below for the actual view)
--
CREATE TABLE `u_products` (
`id` int(11)
,`p_name` varchar(60)
,`p_desc` varchar(100)
,`p_value` float
,`p_image` varchar(100)
);

-- --------------------------------------------------------

--
-- Structure for view `u_products`
--
DROP TABLE IF EXISTS `u_products`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `u_products`  AS SELECT `products`.`id` AS `id`, `products`.`p_name` AS `p_name`, `products`.`p_desc` AS `p_desc`, `products`.`p_value` AS `p_value`, `products`.`p_image` AS `p_image` FROM `products` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_panel`
--
ALTER TABLE `admin_panel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_panel`
--
ALTER TABLE `admin_panel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
