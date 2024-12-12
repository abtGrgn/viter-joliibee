-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2024 at 01:11 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jollibee_v1`
--

-- --------------------------------------------------------

--
-- Table structure for table `jollibee_category`
--

CREATE TABLE `jollibee_category` (
  `category_aid` int(11) NOT NULL,
  `category_is_active` tinyint(1) NOT NULL,
  `category_image` varchar(20) NOT NULL,
  `category_title` varchar(30) NOT NULL,
  `category_datetime` varchar(20) NOT NULL,
  `category_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jollibee_category`
--

INSERT INTO `jollibee_category` (`category_aid`, `category_is_active`, `category_image`, `category_title`, `category_datetime`, `category_created`) VALUES
(5, 1, 'nav-chickenjoy.webp', 'Chicken', '2024-12-11 15:04:54', 2024),
(6, 1, 'nav-burger.webp', 'Burger', '2024-12-11 15:05:02', 2024),
(7, 1, 'nav-spaghetti.webp', 'Spaghetti', '2024-12-11 15:05:11', 2024),
(8, 1, 'nav-sides.webp', 'Sides', '2024-12-11 15:05:18', 2024),
(9, 1, 'nav-value-meal.webp', 'Value Meal', '2024-12-11 15:05:34', 2024),
(10, 1, 'steak-1.webp', 'Burger Steak', '2024-12-11 15:22:25', 2024),
(11, 1, 'nav-desserts.webp', 'Dessert', '2024-12-11 15:06:07', 2024),
(12, 1, 'palabok-1.webp', 'Palabok', '2024-12-11 15:06:27', 2024);

-- --------------------------------------------------------

--
-- Table structure for table `jollibee_food`
--

CREATE TABLE `jollibee_food` (
  `food_aid` int(11) NOT NULL,
  `food_is_active` tinyint(1) NOT NULL,
  `food_image` varchar(20) NOT NULL,
  `food_title` varchar(30) NOT NULL,
  `food_price` int(20) NOT NULL,
  `food_category_id` int(11) NOT NULL,
  `food_datetime` varchar(30) NOT NULL,
  `food_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jollibee_food`
--

INSERT INTO `jollibee_food` (`food_aid`, `food_is_active`, `food_image`, `food_title`, `food_price`, `food_category_id`, `food_datetime`, `food_created`) VALUES
(9, 1, 'nav-chickenjoy.webp', '2pc Chickenjoy Solo', 180, 5, '2024-12-12 07:26:44', 2024),
(12, 1, 'nav-burger.webp', 'Burger Supreme Solo', 39, 6, '2024-12-12 07:35:16', 2024),
(13, 1, 'nav-spaghetti.webp', 'Jolly Spaghetti Solo', 59, 7, '2024-12-12 07:36:30', 2024),
(14, 1, 'sides-1.webp', 'Large Fries', 59, 8, '2024-12-12 07:37:16', 2024),
(15, 1, 'nav-value-meal.webp', 'Value Meal 1', 249, 9, '2024-12-12 07:38:42', 2024),
(16, 1, 'steak-1.webp', '2pc Burger Steak Solo', 119, 10, '2024-12-12 07:42:01', 2024),
(17, 1, 'dessert-1.webp', 'Peach Mango Pie', 45, 11, '2024-12-12 07:40:30', 2024),
(18, 1, 'palabok-1.webp', 'Jolly Palabok Solo', 75, 12, '2024-12-12 07:41:10', 2024);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jollibee_category`
--
ALTER TABLE `jollibee_category`
  ADD PRIMARY KEY (`category_aid`);

--
-- Indexes for table `jollibee_food`
--
ALTER TABLE `jollibee_food`
  ADD PRIMARY KEY (`food_aid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jollibee_category`
--
ALTER TABLE `jollibee_category`
  MODIFY `category_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `jollibee_food`
--
ALTER TABLE `jollibee_food`
  MODIFY `food_aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
