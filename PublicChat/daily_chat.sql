-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 26, 2020 at 09:32 AM
-- Server version: 5.6.49
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `z2dte654_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `daily_chat`
--

CREATE TABLE `daily_chat` (
  `id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message` text NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_chat`
--

INSERT INTO `daily_chat` (`id`, `timestamp`, `message`, `status`) VALUES
(1, '2020-09-17 15:38:21', 'hi', 0),
(2, '2020-09-17 15:50:21', 'hi', 0),
(3, '2020-09-17 15:52:12', 'aa', 0),
(4, '2020-09-17 15:53:57', 'hey', 0),
(5, '2020-09-17 15:54:43', 'tk', 0),
(6, '2020-09-17 15:55:32', 'hi', 0),
(7, '2020-09-17 15:58:00', 'guf', 0),
(8, '2020-09-17 15:58:14', 'hy', 0),
(9, '2020-09-17 15:58:19', 're', 0),
(10, '2020-09-17 16:04:55', 'Message', 0),
(11, '2020-09-17 16:07:49', 'Hello', 0),
(12, '2020-09-17 16:09:14', 'Welcome', 0),
(13, '2020-09-17 16:09:58', 'Welcome', 0),
(14, '2020-09-17 16:10:08', 'Go', 0),
(15, '2020-11-26 02:42:15', 'Hi', 0),
(16, '2020-11-26 02:43:37', 'Hi', 0),
(17, '2020-11-26 02:44:00', 'Good morning', 0),
(18, '2020-11-26 02:44:13', 'Good morning', 0),
(19, '2020-11-26 02:52:12', 'Hwh', 0),
(20, '2020-11-26 02:53:27', 'vanakam di mapla salem la iruthu', 0),
(21, '2020-11-26 03:01:37', 'Gud morn ðŸ¤©', 0),
(22, '2020-11-26 03:08:05', 'Good morning dudes', 0),
(23, '2020-11-26 04:41:33', 'Hii', 0),
(24, '2020-11-26 04:42:19', 'â¤', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daily_chat`
--
ALTER TABLE `daily_chat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daily_chat`
--
ALTER TABLE `daily_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
