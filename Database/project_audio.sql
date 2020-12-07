-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2020 at 11:13 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_audio`
--

-- --------------------------------------------------------

--
-- Table structure for table `music_details`
--

CREATE TABLE `music_details` (
  `music_id` int(32) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `artist` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `duration` int(16) NOT NULL,
  `shared_album_id` int(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `music_details`
--

INSERT INTO `music_details` (`music_id`, `name`, `artist`, `duration`, `shared_album_id`) VALUES
(37, 'SafalFrom2050', 'Safal', 4000, 111),
(38, 'SafalFrom2051', 'Safal', 5000, 111),
(39, 'SafalFrom2052', 'Safal', 6000, 111),
(40, 'SafalFrom2053', 'Safal', 7000, 111),
(41, 'SafalGenius', 'Safal', 9000, 111),
(42, 'SafalFrom2050', 'Safal', 4000, 112),
(43, 'SafalFrom2051', 'Safal', 5000, 112),
(44, 'SafalFrom2052', 'Safal', 6000, 112),
(45, 'SafalFrom2053', 'Safal', 7000, 112),
(46, 'SafalGenius', 'Safal', 9000, 112),
(47, 'SafalFrom2050', 'Safal', 4000, 113),
(48, 'SafalFrom2051', 'Safal', 5000, 113),
(49, 'SafalFrom2052', 'Safal', 6000, 113),
(50, 'SafalFrom2053', 'Safal', 7000, 113),
(51, 'SafalGenius', 'Safal', 9000, 113),
(52, 'SafalFrom2050', 'Safal', 4000, 114),
(53, 'SafalFrom2050', 'Safal', 4000, 115),
(54, 'SafalFrom2051', 'Safal', 5000, 115),
(55, 'SafalFrom2052', 'Safal', 6000, 115),
(56, 'SafalFrom2053', 'Safal', 7000, 115),
(57, 'SafalGenius', 'Safal', 9000, 115),
(58, 'SafalFrom2050', 'Safal', 4000, 116),
(59, 'SafalFrom2051', 'Safal', 5000, 116),
(60, 'SafalFrom2052', 'Safal', 6000, 116),
(61, 'SafalFrom2053', 'Safal', 7000, 116),
(62, 'SafalGenius', 'Safal', 9000, 116),
(63, 'SafalFrom2050', 'Safal', 4000, 117),
(64, 'SafalFrom2051', 'Safal', 5000, 117),
(65, 'SafalFrom2052', 'Safal', 6000, 117),
(66, 'SafalFrom2053', 'Safal', 7000, 117),
(67, 'SafalGenius', 'Safal', 9000, 117),
(68, 'SafalFrom2050', 'Safal', 4000, 118),
(69, 'SafalFrom2051', 'Safal', 5000, 118),
(70, 'SafalFrom2052', 'Safal', 6000, 118),
(71, 'SafalFrom2053', 'Safal', 7000, 118),
(72, 'SafalGenius', 'Safal', 9000, 118);

-- --------------------------------------------------------

--
-- Table structure for table `shared_albums`
--

CREATE TABLE `shared_albums` (
  `shared_album_id` int(64) NOT NULL,
  `pin` int(6) NOT NULL,
  `device_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Your Device'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shared_albums`
--

INSERT INTO `shared_albums` (`shared_album_id`, `pin`, `device_name`) VALUES
(2, 12343, 'test2'),
(3, 12343, 'test2'),
(4, 12343, 'test2'),
(5, 12343, 'test2'),
(6, 12343, 'test2'),
(7, 12343, 'test2'),
(90, 12343, 'test2'),
(91, 12343, 'test2'),
(93, 12343, 'test2'),
(94, 12343, 'test2'),
(95, 0, '12343'),
(96, 12343, 'test2'),
(97, 12343, 'test2'),
(98, 12343, 'test2'),
(99, 8787, 'undefined'),
(100, 8787, 'undefined'),
(101, 8787, 'undefined'),
(102, 8787, 'undefined'),
(105, 8787, 'undefined'),
(106, 8787, 'Xiaomi'),
(111, 8787, 'Xiaomi'),
(112, 8787, 'Xiaomi'),
(113, 8787, 'Xiaomi'),
(114, 8787, 'Xiaomi'),
(115, 8787, 'Xiaomi'),
(116, 8787, 'Xiaomi'),
(117, 8787, 'Xiaomi'),
(118, 8787, 'Xiaomi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `music_details`
--
ALTER TABLE `music_details`
  ADD PRIMARY KEY (`music_id`),
  ADD KEY `shared_album_id` (`shared_album_id`);

--
-- Indexes for table `shared_albums`
--
ALTER TABLE `shared_albums`
  ADD PRIMARY KEY (`shared_album_id`),
  ADD KEY `shared_album_id` (`shared_album_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `music_details`
--
ALTER TABLE `music_details`
  MODIFY `music_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `shared_albums`
--
ALTER TABLE `shared_albums`
  MODIFY `shared_album_id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `music_details`
--
ALTER TABLE `music_details`
  ADD CONSTRAINT `fk_shared_album_id` FOREIGN KEY (`shared_album_id`) REFERENCES `shared_albums` (`shared_album_id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
