-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2018 at 01:32 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoutit`
--

-- --------------------------------------------------------

--
-- Table structure for table `shouts`
--

CREATE TABLE `shouts` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shouts`
--

INSERT INTO `shouts` (`id`, `user`, `message`, `time`) VALUES
(1, 'Brad', 'CSS Margins. The CSS margin properties are used to create space around elements, outside of any defined borders.', '11:00:00'),
(2, 'SuSu', ' With CSS, you have full control over the margins. There are properties for setting the margin for each side of an element (top, right, bottom, and left).', '11:01:00'),
(3, 'Ko Ko', 'There are properties for setting the margin for each side of an element (top, right, bottom, and left).', '11:06:00'),
(4, 'John', ' you have full control over the margins. There are properties for setting the margin for each side of an element (top, right, bottom, and left).', '11:03:00'),
(5, 'Ko Ko ', 'Hi', '10:21:23'),
(6, 'Aye Aye', 'Hi again ', '04:27:18'),
(7, 'sai', 'Kyaw', '10:54:31'),
(8, 'Aye Aye 1', 'fafdsfsfsf', '11:00:50'),
(9, 'Aye Aye 1', '3333333', '03:34:48');

-- --------------------------------------------------------

--
-- Table structure for table `shout_table`
--

CREATE TABLE `shout_table` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shout_table`
--

INSERT INTO `shout_table` (`id`, `user`, `message`, `time`) VALUES
(5, 'Aung Myo Myint', 'Hi all ! My Name is AUng Myo Myint. ', '02:24:16'),
(6, 'Mya Mya', 'Hi... Aung...!! This is Mya Mya Kyi. Nice to meet you .', '02:24:49'),
(7, 'Ko Ko ', 'Hey Nice to meet you both. I am Ko Ko Htet. I am from Korea. I am currently learning Android Development in Korean University. If you want to know anything about android, pleases ask me. I wan to help you guy :)', '02:28:52'),
(8, 'Ko Ko ', 'Hey Nice to meet you both. I am Ko Ko Htet. I am from Korea. I am currently learning Android Development in Korean University. If you want to know anything about android, pleases ask me. I wan to help you guy :)Hey Nice to meet you both. I am Ko Ko Htet. I am from Korea. I am currently learning Android Development in Korean University. If you want to know anything about android, pleases ask me. I wan to help you guy :)Hey Nice to meet you both. I am Ko Ko Htet. I am from Korea. I am currently learning Android Development in Korean University. If you want to know anything about android, pleases ask me. I wan to help you guy :)Hey Nice to meet you both. I am Ko Ko Htet. I am from Korea. I am currently learning Android Development in Korean University. If you want to know anything about android, pleases ask me. I wan to help you guy :)', '02:29:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shouts`
--
ALTER TABLE `shouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shout_table`
--
ALTER TABLE `shout_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shouts`
--
ALTER TABLE `shouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shout_table`
--
ALTER TABLE `shout_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
