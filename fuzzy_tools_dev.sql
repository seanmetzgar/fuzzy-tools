-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 11, 2017 at 05:00 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fuzzy_tools_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `toa_calendar_rolls`
--

DROP TABLE IF EXISTS `toa_calendar_rolls`;
CREATE TABLE IF NOT EXISTS `toa_calendar_rolls` (
  `day_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `weather_am` tinyint(3) UNSIGNED NOT NULL,
  `weather_pm` tinyint(3) UNSIGNED NOT NULL,
  `storm_am` tinyint(3) UNSIGNED NOT NULL,
  `storm_pm` tinyint(3) UNSIGNED NOT NULL,
  `encounter_1_check` tinyint(3) UNSIGNED NOT NULL,
  `encounter_1_type` tinyint(3) UNSIGNED NOT NULL,
  `encounter_2_check` tinyint(3) UNSIGNED NOT NULL,
  `encounter_2_type` tinyint(3) UNSIGNED NOT NULL,
  `encounter_3_check` tinyint(3) UNSIGNED NOT NULL,
  `encounter_3_type` tinyint(3) UNSIGNED NOT NULL,
  `navigate_1` tinyint(3) UNSIGNED NOT NULL,
  `navigate_2` tinyint(3) UNSIGNED NOT NULL,
  `navigate_displacement` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`day_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `toa_calendar_rolls`
--

INSERT INTO `toa_calendar_rolls` (`day_id`, `weather_am`, `weather_pm`, `storm_am`, `storm_pm`, `encounter_1_check`, `encounter_1_type`, `encounter_2_check`, `encounter_2_type`, `encounter_3_check`, `encounter_3_type`, `navigate_1`, `navigate_2`, `navigate_displacement`) VALUES
(1, 11, 12, 2, 2, 18, 98, 18, 73, 11, 15, 4, 13, 1),
(2, 7, 8, 2, 4, 12, 19, 5, 52, 1, 85, 2, 20, 5),
(3, 7, 4, 2, 3, 6, 34, 13, 44, 16, 69, 16, 8, 1),
(4, 14, 16, 4, 3, 7, 32, 6, 83, 20, 64, 17, 3, 5),
(5, 1, 15, 4, 4, 4, 33, 6, 42, 6, 56, 9, 20, 6),
(6, 19, 16, 2, 1, 13, 51, 20, 65, 11, 4, 5, 19, 3),
(7, 2, 19, 2, 4, 6, 72, 15, 79, 18, 25, 19, 13, 5),
(8, 15, 4, 1, 2, 10, 5, 16, 67, 17, 40, 19, 17, 1),
(9, 12, 5, 4, 3, 17, 64, 15, 50, 1, 20, 6, 2, 1),
(10, 15, 3, 4, 4, 15, 18, 12, 47, 16, 53, 6, 17, 3),
(11, 18, 2, 1, 4, 19, 70, 17, 69, 1, 3, 12, 20, 5),
(12, 17, 16, 4, 3, 5, 39, 19, 38, 5, 72, 17, 3, 2),
(13, 18, 12, 1, 1, 3, 27, 4, 40, 14, 71, 6, 15, 3),
(14, 18, 14, 1, 4, 15, 9, 11, 27, 3, 31, 20, 2, 3),
(15, 13, 3, 4, 3, 10, 58, 14, 89, 14, 64, 17, 18, 6),
(16, 12, 16, 4, 3, 1, 62, 5, 32, 5, 77, 6, 7, 2),
(17, 9, 5, 2, 2, 14, 29, 19, 50, 17, 6, 6, 19, 2),
(18, 12, 11, 4, 1, 4, 41, 15, 73, 4, 77, 18, 3, 3),
(19, 16, 8, 3, 4, 20, 60, 9, 11, 2, 21, 13, 11, 4),
(20, 1, 9, 1, 2, 14, 77, 15, 91, 11, 60, 4, 5, 5),
(21, 18, 6, 3, 3, 20, 74, 11, 44, 1, 3, 19, 15, 3),
(22, 7, 10, 1, 1, 20, 59, 8, 81, 10, 26, 4, 13, 4),
(23, 18, 15, 1, 3, 20, 13, 20, 100, 7, 18, 18, 18, 2),
(24, 6, 11, 2, 3, 2, 33, 11, 83, 16, 71, 7, 7, 4),
(25, 13, 11, 1, 1, 18, 61, 11, 2, 5, 66, 13, 4, 6),
(26, 1, 7, 2, 3, 15, 55, 20, 92, 3, 99, 7, 20, 4),
(27, 18, 20, 2, 4, 3, 71, 17, 16, 11, 85, 12, 12, 1),
(28, 15, 9, 3, 3, 17, 84, 1, 15, 14, 66, 17, 5, 6),
(29, 15, 12, 3, 4, 20, 96, 16, 48, 3, 16, 16, 19, 3),
(30, 10, 16, 3, 2, 17, 90, 5, 53, 11, 55, 15, 2, 5),
(31, 6, 1, 3, 1, 3, 90, 9, 30, 10, 69, 8, 16, 5),
(32, 3, 18, 4, 1, 4, 29, 16, 94, 20, 1, 6, 11, 2),
(33, 4, 3, 1, 3, 3, 71, 11, 35, 6, 60, 14, 19, 3),
(34, 8, 18, 3, 1, 5, 55, 1, 36, 5, 45, 14, 1, 2),
(35, 7, 4, 4, 1, 18, 27, 12, 74, 8, 8, 15, 17, 1),
(36, 9, 5, 4, 1, 2, 35, 7, 1, 5, 38, 4, 15, 6),
(37, 5, 6, 3, 3, 19, 91, 6, 100, 9, 17, 19, 2, 2),
(38, 6, 13, 1, 3, 19, 3, 11, 53, 18, 86, 19, 17, 4),
(39, 16, 8, 3, 3, 20, 31, 4, 62, 11, 38, 17, 5, 1),
(40, 19, 3, 2, 2, 8, 10, 1, 6, 12, 36, 6, 8, 5),
(41, 7, 8, 3, 2, 7, 81, 3, 31, 16, 32, 9, 14, 1),
(42, 1, 3, 3, 3, 17, 70, 19, 78, 2, 79, 9, 14, 3),
(43, 3, 5, 2, 1, 7, 74, 15, 64, 15, 47, 12, 6, 2),
(44, 19, 10, 2, 3, 6, 39, 13, 46, 10, 71, 15, 14, 1),
(45, 11, 3, 3, 2, 17, 6, 19, 68, 17, 44, 2, 14, 5),
(46, 16, 5, 2, 3, 7, 98, 19, 36, 10, 37, 7, 15, 5),
(47, 18, 6, 1, 3, 6, 75, 18, 84, 10, 100, 17, 3, 3),
(48, 3, 17, 3, 3, 19, 84, 18, 27, 20, 15, 17, 3, 1),
(49, 3, 9, 3, 1, 2, 64, 5, 79, 18, 93, 10, 13, 5),
(50, 7, 15, 4, 2, 12, 6, 4, 38, 12, 80, 19, 19, 5),
(51, 8, 8, 1, 2, 9, 3, 15, 31, 10, 9, 5, 7, 2),
(52, 4, 9, 3, 1, 15, 79, 18, 100, 18, 22, 13, 16, 4),
(53, 3, 16, 2, 2, 10, 84, 1, 94, 13, 59, 20, 12, 6),
(54, 3, 13, 4, 4, 7, 66, 15, 49, 13, 56, 2, 11, 2),
(55, 15, 3, 3, 4, 10, 10, 14, 58, 13, 23, 14, 20, 6),
(56, 13, 8, 4, 4, 19, 40, 2, 93, 13, 89, 9, 12, 3),
(57, 13, 7, 2, 1, 2, 6, 14, 53, 6, 67, 14, 7, 4),
(58, 9, 19, 3, 2, 2, 1, 3, 61, 3, 98, 14, 15, 4),
(59, 20, 1, 2, 2, 3, 71, 9, 81, 6, 99, 7, 12, 5),
(60, 15, 19, 4, 4, 17, 79, 16, 50, 15, 58, 20, 9, 3),
(61, 5, 19, 2, 1, 4, 80, 16, 49, 11, 19, 5, 20, 2),
(62, 8, 4, 2, 2, 4, 89, 17, 64, 19, 59, 19, 2, 6),
(63, 8, 4, 3, 2, 1, 9, 3, 20, 1, 24, 11, 10, 4),
(64, 7, 20, 4, 4, 19, 74, 17, 97, 18, 65, 19, 16, 3),
(65, 3, 9, 4, 3, 17, 28, 20, 18, 3, 84, 5, 16, 4),
(66, 10, 7, 1, 3, 17, 41, 10, 76, 5, 2, 8, 4, 4),
(67, 1, 5, 4, 4, 7, 68, 3, 3, 3, 13, 7, 7, 5),
(68, 16, 19, 2, 2, 6, 73, 10, 5, 10, 27, 4, 2, 1),
(69, 4, 13, 3, 2, 7, 82, 8, 53, 13, 24, 1, 14, 3),
(70, 1, 7, 2, 1, 8, 23, 12, 88, 10, 27, 15, 20, 1),
(71, 3, 6, 2, 2, 13, 71, 14, 33, 6, 61, 5, 5, 6),
(72, 15, 9, 4, 4, 18, 26, 3, 97, 20, 21, 20, 3, 5),
(73, 10, 9, 3, 2, 2, 11, 6, 11, 18, 40, 6, 16, 3),
(74, 13, 11, 1, 4, 15, 51, 19, 6, 19, 85, 2, 10, 5),
(75, 17, 5, 4, 2, 12, 97, 4, 60, 17, 29, 10, 3, 4),
(76, 18, 3, 1, 1, 8, 5, 5, 66, 4, 24, 16, 18, 6),
(77, 15, 8, 1, 4, 20, 86, 6, 17, 20, 80, 14, 11, 3),
(78, 11, 10, 1, 1, 1, 75, 10, 54, 13, 48, 15, 5, 1),
(79, 1, 20, 4, 1, 13, 28, 18, 15, 6, 28, 8, 11, 5),
(80, 1, 19, 3, 4, 2, 64, 17, 66, 9, 30, 6, 11, 2),
(81, 10, 4, 2, 4, 6, 80, 13, 9, 12, 99, 14, 6, 1),
(82, 11, 6, 4, 1, 12, 88, 6, 90, 4, 71, 6, 18, 6),
(83, 13, 7, 4, 2, 12, 20, 19, 37, 17, 73, 12, 5, 1),
(84, 8, 9, 1, 2, 4, 90, 16, 10, 4, 37, 5, 7, 5),
(85, 12, 11, 4, 2, 7, 88, 12, 23, 5, 46, 4, 12, 4),
(86, 15, 8, 3, 1, 4, 12, 14, 30, 6, 47, 14, 14, 2),
(87, 1, 8, 1, 3, 13, 46, 20, 100, 4, 42, 18, 20, 3),
(88, 17, 19, 3, 4, 9, 5, 8, 86, 6, 5, 4, 20, 2),
(89, 4, 20, 1, 3, 11, 45, 12, 78, 4, 22, 1, 17, 3),
(90, 14, 20, 4, 1, 14, 88, 6, 82, 5, 19, 16, 15, 4),
(91, 12, 16, 1, 4, 14, 29, 1, 49, 9, 71, 9, 9, 3),
(92, 3, 18, 1, 3, 9, 90, 9, 39, 6, 19, 7, 3, 5),
(93, 12, 8, 3, 4, 8, 32, 1, 72, 18, 87, 1, 11, 5),
(94, 13, 13, 2, 4, 14, 53, 16, 13, 7, 81, 11, 17, 4),
(95, 15, 7, 4, 2, 7, 30, 17, 57, 11, 18, 12, 20, 4),
(96, 18, 5, 2, 2, 16, 93, 15, 68, 19, 73, 15, 11, 1),
(97, 12, 2, 3, 2, 9, 61, 10, 59, 5, 56, 8, 5, 5),
(98, 18, 20, 4, 2, 20, 100, 9, 67, 18, 82, 7, 19, 5),
(99, 16, 10, 3, 4, 6, 11, 17, 29, 6, 87, 19, 2, 4),
(100, 4, 4, 4, 2, 13, 70, 18, 60, 17, 92, 20, 1, 4),
(101, 20, 16, 3, 4, 8, 74, 13, 59, 10, 43, 20, 7, 4),
(102, 20, 14, 4, 4, 5, 27, 14, 72, 1, 43, 2, 12, 4),
(103, 7, 7, 2, 2, 13, 42, 7, 49, 20, 47, 7, 6, 3),
(104, 12, 5, 3, 3, 2, 58, 3, 7, 11, 59, 8, 18, 3),
(105, 11, 2, 3, 4, 4, 93, 11, 10, 12, 20, 13, 13, 3),
(106, 2, 10, 4, 3, 20, 16, 9, 35, 8, 85, 7, 13, 4),
(107, 12, 11, 2, 3, 12, 13, 9, 83, 11, 79, 6, 10, 5),
(108, 19, 20, 4, 1, 18, 61, 18, 37, 11, 69, 10, 10, 5),
(109, 13, 1, 4, 1, 18, 35, 10, 24, 9, 51, 12, 10, 4),
(110, 3, 2, 3, 4, 18, 77, 13, 31, 12, 79, 5, 17, 2),
(111, 11, 3, 4, 3, 10, 58, 5, 58, 3, 82, 12, 4, 5),
(112, 15, 2, 2, 2, 19, 37, 13, 33, 16, 88, 20, 3, 4),
(113, 19, 3, 1, 2, 14, 51, 2, 23, 13, 3, 17, 14, 2),
(114, 11, 16, 2, 4, 6, 7, 9, 82, 16, 85, 9, 13, 3),
(115, 16, 1, 3, 3, 18, 22, 5, 4, 5, 30, 6, 5, 1),
(116, 6, 7, 4, 1, 9, 42, 5, 90, 13, 37, 17, 1, 2),
(117, 14, 11, 2, 4, 13, 49, 19, 30, 8, 26, 7, 5, 2),
(118, 13, 11, 3, 4, 9, 18, 1, 21, 10, 84, 12, 19, 2),
(119, 17, 9, 4, 2, 7, 3, 10, 98, 15, 66, 9, 13, 1),
(120, 12, 16, 3, 2, 19, 97, 8, 2, 5, 78, 18, 15, 1),
(121, 11, 12, 1, 4, 13, 4, 15, 59, 14, 97, 4, 10, 5),
(122, 20, 13, 2, 1, 8, 23, 12, 23, 19, 86, 15, 13, 4),
(123, 6, 11, 1, 2, 9, 21, 6, 7, 18, 51, 19, 8, 6),
(124, 6, 8, 2, 2, 17, 61, 7, 27, 8, 97, 7, 2, 1),
(125, 11, 9, 3, 4, 15, 48, 7, 62, 1, 81, 2, 17, 2),
(126, 16, 3, 4, 3, 15, 43, 1, 88, 14, 86, 10, 18, 5),
(127, 20, 2, 4, 1, 7, 71, 10, 69, 5, 99, 13, 4, 5),
(128, 13, 18, 2, 4, 17, 83, 5, 30, 14, 93, 9, 16, 2),
(129, 1, 18, 2, 2, 5, 63, 1, 65, 4, 50, 8, 20, 5),
(130, 16, 5, 4, 1, 14, 65, 12, 56, 3, 20, 15, 14, 6),
(131, 17, 16, 4, 3, 2, 70, 15, 9, 14, 71, 17, 16, 1),
(132, 9, 11, 4, 1, 9, 11, 14, 26, 14, 17, 13, 9, 4),
(133, 16, 15, 4, 3, 2, 66, 10, 74, 14, 82, 17, 6, 3),
(134, 16, 1, 1, 2, 6, 35, 20, 83, 20, 10, 7, 2, 6),
(135, 18, 8, 1, 1, 15, 54, 17, 29, 13, 85, 19, 11, 4),
(136, 3, 4, 1, 3, 1, 41, 14, 74, 15, 38, 1, 19, 2),
(137, 9, 8, 3, 1, 9, 24, 13, 92, 10, 78, 12, 10, 3),
(138, 12, 20, 3, 1, 2, 53, 13, 75, 19, 93, 13, 2, 1),
(139, 3, 3, 2, 2, 20, 90, 16, 44, 10, 27, 9, 7, 2),
(140, 17, 8, 1, 4, 1, 26, 4, 12, 11, 9, 4, 9, 3),
(141, 17, 4, 4, 1, 15, 86, 16, 32, 14, 67, 7, 7, 2),
(142, 6, 7, 2, 4, 15, 16, 15, 87, 13, 53, 11, 10, 3),
(143, 5, 4, 4, 2, 14, 9, 7, 63, 13, 7, 16, 19, 5),
(144, 7, 12, 1, 2, 7, 41, 13, 41, 11, 32, 9, 4, 5),
(145, 19, 16, 3, 3, 20, 77, 1, 51, 10, 17, 16, 16, 1),
(146, 11, 20, 3, 3, 6, 69, 2, 74, 9, 86, 12, 10, 5),
(147, 14, 8, 3, 2, 2, 99, 4, 71, 8, 60, 18, 5, 2),
(148, 20, 16, 3, 3, 10, 28, 5, 3, 20, 93, 18, 9, 4),
(149, 3, 10, 1, 2, 14, 77, 1, 95, 2, 10, 18, 7, 5),
(150, 17, 11, 2, 2, 16, 9, 9, 26, 18, 50, 17, 14, 5),
(151, 15, 6, 1, 4, 5, 60, 2, 56, 7, 92, 2, 6, 6),
(152, 10, 3, 1, 3, 3, 86, 12, 32, 5, 39, 4, 11, 2),
(153, 7, 12, 3, 1, 7, 47, 1, 22, 2, 16, 16, 11, 6),
(154, 15, 13, 4, 4, 20, 37, 7, 33, 8, 67, 7, 3, 2),
(155, 11, 14, 2, 2, 2, 67, 2, 1, 20, 96, 12, 7, 5),
(156, 15, 18, 3, 1, 20, 52, 2, 36, 13, 57, 8, 2, 1),
(157, 1, 8, 2, 4, 10, 7, 15, 66, 14, 93, 17, 7, 4),
(158, 8, 13, 1, 4, 2, 82, 19, 22, 20, 51, 7, 11, 3),
(159, 10, 3, 1, 1, 4, 11, 6, 46, 11, 79, 5, 3, 1),
(160, 6, 12, 1, 2, 14, 50, 2, 23, 15, 35, 14, 18, 5),
(161, 9, 5, 2, 3, 11, 46, 19, 66, 19, 86, 18, 3, 5),
(162, 3, 3, 4, 3, 15, 30, 3, 54, 11, 87, 6, 3, 3),
(163, 18, 4, 2, 3, 4, 99, 18, 73, 9, 20, 20, 12, 6),
(164, 11, 1, 1, 2, 5, 71, 19, 69, 2, 31, 1, 7, 5),
(165, 8, 17, 2, 1, 7, 7, 2, 23, 18, 9, 12, 4, 1),
(166, 17, 14, 1, 4, 20, 47, 8, 33, 3, 65, 4, 3, 1),
(167, 6, 6, 4, 3, 20, 72, 15, 60, 20, 6, 10, 11, 2),
(168, 13, 11, 4, 1, 9, 16, 6, 41, 14, 93, 8, 2, 3),
(169, 14, 3, 4, 3, 5, 54, 3, 54, 3, 100, 4, 20, 6),
(170, 1, 13, 1, 3, 7, 82, 19, 30, 7, 93, 14, 5, 6),
(171, 9, 15, 2, 2, 14, 19, 13, 98, 19, 60, 12, 6, 6),
(172, 2, 5, 1, 2, 7, 96, 10, 56, 9, 34, 13, 9, 1),
(173, 2, 13, 4, 2, 9, 28, 7, 78, 20, 57, 9, 11, 6),
(174, 19, 6, 1, 3, 9, 78, 16, 86, 4, 57, 13, 12, 5),
(175, 20, 7, 2, 4, 4, 12, 5, 71, 16, 11, 18, 8, 6),
(176, 6, 1, 2, 4, 13, 88, 16, 72, 17, 44, 4, 15, 3),
(177, 4, 6, 1, 4, 3, 15, 4, 60, 18, 79, 13, 19, 5),
(178, 3, 11, 4, 2, 9, 80, 15, 66, 7, 20, 16, 19, 2),
(179, 4, 8, 1, 3, 16, 84, 2, 77, 13, 81, 20, 1, 6),
(180, 6, 3, 1, 1, 5, 79, 11, 88, 1, 96, 12, 5, 4),
(181, 1, 15, 1, 3, 9, 44, 18, 17, 19, 26, 10, 20, 3),
(182, 5, 14, 3, 2, 3, 43, 11, 67, 7, 7, 11, 8, 2),
(183, 17, 1, 1, 4, 3, 7, 20, 35, 13, 83, 3, 5, 3),
(184, 12, 16, 1, 3, 10, 54, 12, 40, 1, 100, 12, 7, 1),
(185, 16, 17, 1, 1, 4, 5, 11, 100, 20, 29, 19, 5, 6),
(186, 20, 7, 1, 2, 16, 85, 5, 78, 2, 32, 7, 5, 5),
(187, 2, 13, 1, 3, 19, 65, 12, 5, 8, 1, 10, 9, 5),
(188, 4, 15, 1, 1, 7, 29, 4, 41, 16, 16, 6, 12, 1),
(189, 3, 19, 3, 3, 9, 69, 6, 82, 19, 15, 11, 18, 1),
(190, 2, 6, 3, 1, 13, 3, 12, 94, 9, 28, 15, 10, 3),
(191, 6, 6, 2, 2, 16, 34, 4, 8, 17, 45, 19, 9, 4),
(192, 1, 2, 4, 3, 19, 43, 1, 71, 18, 28, 10, 4, 6),
(193, 11, 17, 3, 1, 5, 43, 2, 29, 14, 14, 20, 9, 1),
(194, 10, 1, 3, 1, 10, 40, 10, 22, 16, 93, 10, 11, 4),
(195, 4, 2, 3, 2, 5, 81, 14, 46, 13, 23, 15, 9, 4),
(196, 8, 6, 4, 1, 17, 56, 5, 79, 4, 81, 3, 4, 5),
(197, 18, 19, 3, 1, 8, 18, 1, 15, 17, 33, 9, 10, 3),
(198, 12, 15, 3, 4, 12, 39, 7, 95, 20, 77, 15, 13, 1),
(199, 6, 18, 2, 1, 18, 23, 2, 47, 15, 63, 12, 16, 2),
(200, 20, 19, 4, 1, 17, 85, 10, 29, 9, 80, 9, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `toa_campaign_meta`
--

DROP TABLE IF EXISTS `toa_campaign_meta`;
CREATE TABLE IF NOT EXISTS `toa_campaign_meta` (
  `meta_name` varchar(200) NOT NULL,
  `meta_value` text NOT NULL,
  PRIMARY KEY (`meta_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `toa_campaign_meta`
--

INSERT INTO `toa_campaign_meta` (`meta_name`, `meta_value`) VALUES
('current_day', '28');

-- --------------------------------------------------------

--
-- Table structure for table `toa_character_stats`
--

DROP TABLE IF EXISTS `toa_character_stats`;
CREATE TABLE IF NOT EXISTS `toa_character_stats` (
  `character_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `exhaustion_levels` tinyint(3) UNSIGNED NOT NULL,
  `survival` tinyint(4) NOT NULL,
  `perception` tinyint(4) NOT NULL,
  PRIMARY KEY (`character_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `toa_character_stats`
--

INSERT INTO `toa_character_stats` (`character_id`, `name`, `exhaustion_levels`, `survival`, `perception`) VALUES
(0, 'DM', 0, 0, 0),
(1, 'Inete', 0, 0, 0),
(2, 'Qawashe', 0, 0, 0),
(3, 'Weed', 0, 0, 0),
(4, 'Beric', 0, 0, 0),
(5, 'Keira', 0, 0, 0),
(6, 'Reyhan', 0, 0, 0),
(7, 'Rovera', 0, 0, 0),
(8, 'Theran', 0, 0, 0),
(9, 'Gabby', 0, 0, 0),
(10, 'Naso', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `toa_dc_afflicted`
--

DROP TABLE IF EXISTS `toa_dc_afflicted`;
CREATE TABLE IF NOT EXISTS `toa_dc_afflicted` (
  `afflicted_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `orig_max_hp` int(10) UNSIGNED NOT NULL,
  `alive` tinyint(1) NOT NULL DEFAULT '1',
  `soul_consumed` tinyint(1) NOT NULL DEFAULT '0',
  `death_day_id` smallint(5) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`afflicted_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `toa_dc_afflicted`
--

INSERT INTO `toa_dc_afflicted` (`afflicted_id`, `name`, `orig_max_hp`, `alive`, `soul_consumed`, `death_day_id`) VALUES
(1, 'Syndra Silvane', 99, 1, 0, 0),
(2, 'Jessamine', 78, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `toa_encounter_chart`
--

DROP TABLE IF EXISTS `toa_encounter_chart`;
CREATE TABLE IF NOT EXISTS `toa_encounter_chart` (
  `encounter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_id` int(10) UNSIGNED NOT NULL,
  `terrain_id` int(10) UNSIGNED NOT NULL,
  `min_roll` int(10) UNSIGNED NOT NULL,
  `max_roll` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`encounter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=370 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toa_encounter_chart`
--

INSERT INTO `toa_encounter_chart` (`encounter_id`, `type_id`, `terrain_id`, `min_roll`, `max_roll`) VALUES
(1, 1, 1, 1, 7),
(2, 6, 1, 8, 8),
(3, 10, 1, 9, 10),
(4, 12, 1, 11, 12),
(5, 15, 1, 13, 14),
(6, 19, 1, 15, 16),
(7, 21, 1, 17, 21),
(8, 22, 1, 22, 28),
(9, 23, 1, 29, 31),
(10, 27, 1, 32, 37),
(11, 29, 1, 38, 40),
(12, 31, 1, 41, 42),
(13, 33, 1, 43, 46),
(14, 36, 1, 47, 49),
(15, 37, 1, 50, 52),
(16, 38, 1, 53, 55),
(17, 39, 1, 56, 57),
(18, 43, 1, 58, 63),
(19, 45, 1, 64, 67),
(20, 52, 1, 68, 71),
(21, 60, 1, 72, 74),
(22, 62, 1, 75, 84),
(23, 69, 1, 85, 87),
(24, 71, 1, 88, 89),
(25, 74, 1, 90, 94),
(26, 76, 1, 95, 100),
(27, 2, 2, 1, 1),
(28, 4, 2, 2, 2),
(29, 5, 2, 3, 4),
(30, 6, 2, 5, 5),
(31, 7, 2, 6, 7),
(32, 8, 2, 8, 8),
(33, 9, 2, 9, 9),
(34, 10, 2, 10, 11),
(35, 11, 2, 12, 13),
(36, 12, 2, 14, 15),
(37, 14, 2, 16, 16),
(38, 15, 2, 17, 17),
(39, 16, 2, 18, 18),
(40, 17, 2, 19, 19),
(41, 18, 2, 20, 21),
(42, 20, 2, 22, 23),
(43, 22, 2, 24, 24),
(44, 24, 2, 25, 26),
(45, 25, 2, 27, 28),
(46, 26, 2, 29, 30),
(47, 27, 2, 31, 35),
(48, 28, 2, 36, 36),
(49, 30, 2, 37, 37),
(50, 31, 2, 38, 42),
(51, 32, 2, 43, 44),
(52, 33, 2, 45, 45),
(53, 35, 2, 46, 46),
(54, 36, 2, 47, 50),
(55, 37, 2, 51, 51),
(56, 38, 2, 52, 53),
(57, 39, 2, 54, 55),
(58, 40, 2, 56, 56),
(59, 42, 2, 57, 57),
(60, 43, 2, 58, 58),
(61, 44, 2, 59, 59),
(62, 46, 2, 60, 60),
(63, 47, 2, 61, 62),
(64, 48, 2, 63, 64),
(65, 49, 2, 65, 66),
(66, 50, 2, 67, 67),
(67, 51, 2, 68, 68),
(68, 52, 2, 69, 70),
(69, 53, 2, 71, 72),
(70, 55, 2, 73, 73),
(71, 57, 2, 74, 74),
(72, 58, 2, 75, 75),
(73, 59, 2, 76, 76),
(74, 60, 2, 77, 77),
(75, 64, 2, 78, 79),
(76, 65, 2, 80, 80),
(77, 66, 2, 81, 81),
(78, 67, 2, 82, 82),
(79, 68, 2, 83, 85),
(80, 69, 2, 86, 86),
(81, 70, 2, 87, 87),
(82, 71, 2, 88, 88),
(83, 72, 2, 89, 89),
(84, 74, 2, 90, 90),
(85, 75, 2, 91, 91),
(86, 76, 2, 92, 92),
(87, 83, 2, 93, 93),
(88, 84, 2, 94, 94),
(89, 85, 2, 95, 95),
(90, 86, 2, 96, 96),
(91, 87, 2, 97, 97),
(92, 88, 2, 98, 98),
(93, 89, 2, 99, 99),
(94, 90, 2, 100, 100),
(95, 2, 3, 1, 1),
(96, 6, 3, 2, 2),
(97, 7, 3, 3, 5),
(98, 8, 3, 6, 6),
(99, 10, 3, 7, 8),
(100, 11, 3, 9, 10),
(101, 15, 3, 11, 11),
(102, 16, 3, 12, 12),
(103, 18, 3, 13, 13),
(104, 20, 3, 14, 14),
(105, 22, 3, 15, 15),
(106, 24, 3, 16, 16),
(107, 25, 3, 17, 17),
(108, 26, 3, 18, 18),
(109, 31, 3, 19, 20),
(110, 32, 3, 21, 22),
(111, 33, 3, 23, 23),
(112, 36, 3, 24, 26),
(113, 38, 3, 27, 27),
(114, 43, 3, 28, 28),
(115, 46, 3, 29, 29),
(116, 47, 3, 30, 31),
(117, 48, 3, 32, 33),
(118, 49, 3, 34, 35),
(119, 53, 3, 36, 39),
(120, 55, 3, 40, 41),
(121, 57, 3, 42, 42),
(122, 58, 3, 43, 44),
(123, 59, 3, 45, 45),
(124, 60, 3, 46, 46),
(125, 64, 3, 47, 48),
(126, 65, 3, 49, 49),
(127, 66, 3, 50, 50),
(128, 67, 3, 51, 52),
(129, 68, 3, 53, 55),
(130, 69, 3, 56, 57),
(131, 70, 3, 58, 59),
(132, 71, 3, 60, 62),
(133, 72, 3, 63, 65),
(134, 76, 3, 66, 66),
(135, 77, 3, 67, 67),
(136, 78, 3, 68, 72),
(137, 79, 3, 73, 77),
(138, 80, 3, 78, 79),
(139, 81, 3, 80, 80),
(140, 82, 3, 81, 89),
(141, 83, 3, 90, 91),
(142, 84, 3, 92, 92),
(143, 85, 3, 93, 93),
(144, 86, 3, 94, 94),
(145, 87, 3, 95, 96),
(146, 88, 3, 97, 98),
(147, 89, 3, 99, 99),
(148, 90, 3, 100, 100),
(149, 6, 4, 1, 1),
(150, 7, 4, 2, 2),
(151, 10, 4, 3, 5),
(152, 15, 4, 6, 6),
(153, 16, 4, 7, 7),
(154, 20, 4, 8, 8),
(155, 22, 4, 9, 9),
(156, 24, 4, 10, 10),
(157, 26, 4, 11, 12),
(158, 27, 4, 13, 14),
(159, 31, 4, 15, 16),
(160, 32, 4, 17, 20),
(161, 33, 4, 21, 21),
(162, 36, 4, 22, 23),
(163, 46, 4, 24, 24),
(164, 55, 4, 25, 25),
(165, 58, 4, 26, 26),
(166, 59, 4, 27, 27),
(167, 60, 4, 28, 28),
(168, 64, 4, 29, 31),
(169, 65, 4, 32, 32),
(170, 66, 4, 33, 33),
(171, 67, 4, 34, 36),
(172, 68, 4, 37, 40),
(173, 69, 4, 41, 44),
(174, 70, 4, 45, 45),
(175, 71, 4, 46, 46),
(176, 72, 4, 47, 49),
(177, 76, 4, 50, 50),
(178, 77, 4, 51, 51),
(179, 78, 4, 52, 63),
(180, 79, 4, 64, 67),
(181, 80, 4, 68, 70),
(182, 81, 4, 71, 73),
(183, 82, 4, 74, 85),
(184, 83, 4, 86, 87),
(185, 84, 4, 88, 89),
(186, 85, 4, 90, 91),
(187, 86, 4, 92, 92),
(188, 87, 4, 93, 96),
(189, 88, 4, 97, 98),
(190, 90, 4, 99, 100),
(191, 1, 5, 1, 11),
(192, 2, 5, 12, 17),
(193, 5, 5, 18, 20),
(194, 9, 5, 21, 22),
(195, 10, 5, 23, 25),
(196, 12, 5, 26, 27),
(197, 14, 5, 28, 29),
(198, 22, 5, 30, 38),
(199, 23, 5, 39, 42),
(200, 29, 5, 43, 45),
(201, 31, 5, 46, 47),
(202, 32, 5, 48, 50),
(203, 33, 5, 51, 53),
(204, 37, 5, 54, 59),
(205, 38, 5, 60, 61),
(206, 40, 5, 62, 62),
(207, 43, 5, 63, 63),
(208, 46, 5, 64, 65),
(209, 47, 5, 66, 70),
(210, 57, 5, 71, 73),
(211, 58, 5, 74, 80),
(212, 60, 5, 81, 81),
(213, 66, 5, 82, 84),
(214, 69, 5, 85, 87),
(215, 71, 5, 88, 90),
(216, 74, 5, 91, 92),
(217, 77, 5, 93, 97),
(218, 84, 5, 98, 100),
(219, 1, 6, 1, 3),
(220, 3, 6, 4, 7),
(221, 6, 6, 8, 9),
(222, 7, 6, 10, 10),
(223, 10, 6, 11, 12),
(224, 11, 6, 13, 15),
(225, 12, 6, 16, 18),
(226, 13, 6, 19, 23),
(227, 17, 6, 24, 24),
(228, 19, 6, 25, 26),
(229, 20, 6, 27, 28),
(230, 21, 6, 29, 31),
(231, 22, 6, 32, 34),
(232, 23, 6, 35, 36),
(233, 28, 6, 37, 37),
(234, 30, 6, 38, 40),
(235, 31, 6, 41, 43),
(236, 32, 6, 44, 45),
(237, 33, 6, 46, 49),
(238, 36, 6, 50, 51),
(239, 37, 6, 52, 53),
(240, 38, 6, 54, 55),
(241, 41, 6, 56, 58),
(242, 42, 6, 59, 60),
(243, 45, 6, 61, 62),
(244, 46, 6, 63, 63),
(245, 49, 6, 64, 66),
(246, 50, 6, 67, 67),
(247, 52, 6, 68, 68),
(248, 53, 6, 69, 70),
(249, 58, 6, 71, 72),
(250, 59, 6, 73, 73),
(251, 60, 6, 74, 74),
(252, 62, 6, 75, 76),
(253, 64, 6, 77, 79),
(254, 65, 6, 80, 80),
(255, 68, 6, 81, 81),
(256, 69, 6, 82, 83),
(257, 72, 6, 84, 85),
(258, 73, 6, 86, 91),
(259, 74, 6, 92, 93),
(260, 78, 6, 94, 94),
(261, 79, 6, 95, 95),
(262, 82, 6, 96, 96),
(263, 88, 6, 97, 98),
(264, 89, 6, 99, 100),
(265, 2, 7, 1, 2),
(266, 4, 7, 3, 3),
(267, 5, 7, 4, 6),
(268, 6, 7, 7, 8),
(269, 7, 7, 9, 12),
(270, 9, 7, 13, 14),
(271, 10, 7, 15, 18),
(272, 12, 7, 19, 19),
(273, 14, 7, 20, 21),
(274, 18, 7, 22, 22),
(275, 27, 7, 23, 23),
(276, 31, 7, 24, 26),
(277, 32, 7, 27, 28),
(278, 33, 7, 29, 31),
(279, 35, 7, 32, 33),
(280, 36, 7, 34, 36),
(281, 37, 7, 37, 38),
(282, 38, 7, 39, 39),
(283, 39, 7, 40, 41),
(284, 43, 7, 42, 42),
(285, 44, 7, 43, 45),
(286, 46, 7, 46, 48),
(287, 47, 7, 49, 50),
(288, 48, 7, 51, 52),
(289, 50, 7, 53, 54),
(290, 51, 7, 55, 57),
(291, 52, 7, 58, 58),
(292, 53, 7, 59, 60),
(293, 57, 7, 61, 61),
(294, 59, 7, 62, 62),
(295, 60, 7, 63, 63),
(296, 66, 7, 64, 66),
(297, 67, 7, 67, 68),
(298, 68, 7, 69, 73),
(299, 69, 7, 74, 75),
(300, 71, 7, 76, 77),
(301, 74, 7, 78, 78),
(302, 76, 7, 79, 80),
(303, 77, 7, 81, 81),
(304, 78, 7, 82, 84),
(305, 79, 7, 85, 87),
(306, 80, 7, 88, 89),
(307, 81, 7, 90, 91),
(308, 82, 7, 92, 93),
(309, 85, 7, 94, 94),
(310, 86, 7, 95, 95),
(311, 87, 7, 96, 96),
(312, 88, 7, 97, 98),
(313, 89, 7, 99, 100),
(314, 3, 8, 1, 10),
(315, 6, 8, 11, 11),
(316, 7, 8, 12, 14),
(317, 12, 8, 15, 16),
(318, 13, 8, 17, 21),
(319, 15, 8, 22, 22),
(320, 16, 8, 23, 23),
(321, 17, 8, 24, 25),
(322, 19, 8, 26, 30),
(323, 20, 8, 31, 33),
(324, 22, 8, 34, 35),
(325, 30, 8, 36, 39),
(326, 32, 8, 40, 41),
(327, 33, 8, 42, 45),
(328, 35, 8, 46, 47),
(329, 38, 8, 48, 50),
(330, 41, 8, 51, 53),
(331, 42, 8, 54, 56),
(332, 43, 8, 57, 58),
(333, 45, 8, 59, 60),
(334, 46, 8, 61, 62),
(335, 49, 8, 63, 64),
(336, 52, 8, 65, 66),
(337, 53, 8, 67, 69),
(338, 56, 8, 70, 70),
(339, 57, 8, 71, 71),
(340, 59, 8, 72, 72),
(341, 63, 8, 73, 76),
(342, 64, 8, 77, 80),
(343, 65, 8, 81, 82),
(344, 68, 8, 83, 85),
(345, 69, 8, 86, 87),
(346, 71, 8, 88, 89),
(347, 72, 8, 90, 94),
(348, 78, 8, 95, 95),
(349, 79, 8, 96, 97),
(350, 82, 8, 98, 98),
(351, 87, 8, 99, 99),
(352, 88, 8, 100, 100),
(353, 6, 9, 1, 1),
(354, 10, 9, 2, 5),
(355, 29, 9, 6, 9),
(356, 32, 9, 10, 18),
(357, 33, 9, 19, 19),
(358, 34, 9, 20, 37),
(359, 44, 9, 38, 45),
(360, 54, 9, 46, 54),
(361, 56, 9, 55, 71),
(362, 57, 9, 72, 78),
(363, 68, 9, 79, 79),
(364, 77, 9, 80, 83),
(365, 78, 9, 84, 85),
(366, 79, 9, 86, 95),
(367, 81, 9, 96, 97),
(368, 82, 9, 98, 98),
(369, 89, 9, 99, 100);

-- --------------------------------------------------------

--
-- Table structure for table `toa_encounter_type`
--

DROP TABLE IF EXISTS `toa_encounter_type`;
CREATE TABLE IF NOT EXISTS `toa_encounter_type` (
  `type_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toa_encounter_type`
--

INSERT INTO `toa_encounter_type` (`type_id`, `name`) VALUES
(1, 'Aarakocra'),
(2, 'Albino dwarves'),
(3, 'Aldani'),
(4, 'Almiraj'),
(5, 'Apes'),
(6, 'Artus Cimber'),
(7, 'Assassin vines'),
(8, 'Axe beaks'),
(9, 'Baboons'),
(10, 'Cache'),
(11, 'Cannibals'),
(12, 'Chwinga'),
(13, 'Crocodiles'),
(14, 'Cyclops'),
(15, 'Dinosaurs, allosaurus'),
(16, 'Dinosaurs, ankylosaurus'),
(17, 'Dinosaurs, brontosaurus'),
(18, 'Dinosaurs, deinonychus'),
(19, 'Dinosaurs, dimetrodon'),
(20, 'Dinosaurs, hadrosaurus'),
(21, 'Dinosaurs, plesiosaurus'),
(22, 'Dinosaurs, pteranodon'),
(23, 'Dinosaurs, quetzalcoatlus'),
(24, 'Dinosaurs, stegosaurus'),
(25, 'Dinosaurs, triceratops'),
(26, 'Dinosaurs, tyrannosaurus'),
(27, 'Dinosaurs, velociraptor'),
(28, 'Dragon, faerie'),
(29, 'Dragon, red'),
(30, 'Eblis'),
(31, 'Emerald Enclave'),
(32, 'Explorer, dead'),
(33, 'Explorers'),
(34, 'Firenewts'),
(35, 'Flail snail'),
(36, 'Flaming Fist'),
(37, 'Flying monkeys'),
(38, 'Flying snakes'),
(39, 'Frost giants'),
(40, 'Giant boars'),
(41, 'Giant crocodile'),
(42, 'Giant frogs'),
(43, 'Giant lizards'),
(44, 'Giant scorpions'),
(45, 'Giant snapping turtle'),
(46, 'Giant wasps'),
(47, 'Girallons'),
(48, 'Goblins'),
(49, 'Grungs'),
(50, 'Jaculis'),
(51, 'Kamadans'),
(52, 'Lizardfolk'),
(53, 'Mad monkey mist'),
(54, 'Magmins'),
(55, 'Mantraps'),
(56, 'Mephits'),
(57, 'Night hag'),
(58, 'Pterafolk'),
(59, 'Rare plant(s)'),
(60, 'Red Wizard'),
(61, 'Salamander'),
(62, 'Sea hags'),
(63, 'Shambling mound'),
(64, 'Snake, constrictor'),
(65, 'Snake, giant constrictor'),
(66, 'Snake, giant poisonous'),
(67, 'Spiders'),
(68, 'Statue of Ubtao'),
(69, 'Stirges'),
(70, 'Su-monsters'),
(71, 'Swarms of bats'),
(72, 'Swarms of insects'),
(73, 'Swarms of quippers'),
(74, 'Tabaxi hunter'),
(75, 'Tiger'),
(76, 'Tri-flower frond'),
(77, 'Troll'),
(78, 'Undead, ghouls'),
(79, 'Undead, skeletons'),
(80, 'Undead, specter'),
(81, 'Undead, wight'),
(82, 'Undead, zombies'),
(83, 'Vegepygmies'),
(84, 'Wereboar'),
(85, 'Weretiger'),
(86, 'Winterscape'),
(87, 'Yellow musk creeper and zombies'),
(88, 'Yuan-ti'),
(89, 'Zhentarim'),
(90, 'Zorbos');

-- --------------------------------------------------------

--
-- Table structure for table `toa_map_locations`
--

DROP TABLE IF EXISTS `toa_map_locations`;
CREATE TABLE IF NOT EXISTS `toa_map_locations` (
  `location_id` varchar(8) NOT NULL,
  `terrain` int(11) NOT NULL,
  `is_poi` tinyint(1) NOT NULL DEFAULT '0',
  `location_name` text,
  `explored` tinyint(1) NOT NULL DEFAULT '0',
  `originally_known` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `toa_map_locations`
--

INSERT INTO `toa_map_locations` (`location_id`, `terrain`, `is_poi`, `location_name`, `explored`, `originally_known`) VALUES
('41,41', 0, 1, 'Port Nyanzaru', 1, 1),
('45,31', 0, 1, 'Fort Beluarian', 0, 1),
('49,55', 0, 1, 'Kitcher\'s Inlet', 0, 1),
('53,87', 8, 1, 'Ishua', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `toa_navigation_details`
--

DROP TABLE IF EXISTS `toa_navigation_details`;
CREATE TABLE IF NOT EXISTS `toa_navigation_details` (
  `day_id` smallint(5) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `start_location_perceived` varchar(8) DEFAULT NULL,
  `end_location_perceived` varchar(8) DEFAULT NULL,
  `start_location_actual` varchar(8) DEFAULT NULL,
  `end_location_actual` varchar(8) DEFAULT NULL,
  `navigator_character_id` int(11) DEFAULT NULL,
  `travel_direction` tinyint(1) DEFAULT NULL,
  `travel_speed` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `toa_navigation_details`
--

INSERT INTO `toa_navigation_details` (`day_id`, `status`, `start_location_perceived`, `end_location_perceived`, `start_location_actual`, `end_location_actual`, `navigator_character_id`, `travel_direction`, `travel_speed`) VALUES
(1, 9, '41,41', '41,41', '41,41', '41,41', 0, NULL, 1),
(2, 9, '41,41', '41,41', '41,41', '41,41', 0, NULL, 1),
(3, 9, '41,41', '41,41', '41,41', '41,41', 0, NULL, 1),
(4, 9, '41,41', '41,41', '41,41', '41,41', 0, NULL, 1),
(5, 9, '41,41', '41,41', '41,41', '41,41', 0, NULL, 1),
(6, 9, '41,41', '41,41', '41,41', '41,41', 0, NULL, 1),
(7, 9, '41,41', '41,41', '41,41', '41,41', 0, NULL, 1),
(8, 9, '41,41', '41,41', '41,41', '41,41', 0, NULL, 1),
(9, 9, '41,41', '41,41', '41,41', '41,41', 0, NULL, 1),
(10, 9, '41,41', '41,41', '41,41', '41,41', 0, NULL, 1),
(11, 9, '41,41', '41,41', '41,41', '41,41', 0, NULL, 1),
(12, 9, '41,41', '41,41', '41,41', '41,41', 0, NULL, 1),
(13, 9, '41,41', '41,41', '41,41', '41,41', 0, NULL, 1),
(14, 9, '41,41', '41,41', '41,41', '41,41', 0, NULL, 1),
(15, 9, '41,41', '41,41', '41,41', '41,41', 0, NULL, 1),
(16, 9, '41,41', '41,41', '41,41', '41,41', 0, NULL, 1),
(17, 9, '41,41', '41,41', '41,41', '41,41', 0, NULL, 1),
(18, 9, '41,41', '41,41', '41,41', '41,41', 0, NULL, 1),
(19, 9, '41,41', '41,41', '41,41', '41,41', 0, NULL, 1),
(20, 9, '41,41', '41,41', '41,41', '41,41', 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `toa_quests`
--

DROP TABLE IF EXISTS `toa_quests`;
CREATE TABLE IF NOT EXISTS `toa_quests` (
  `quest_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `details` text NOT NULL,
  `giver` tinytext NOT NULL,
  `reward` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`quest_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toa_quests`
--

INSERT INTO `toa_quests` (`quest_id`, `title`, `details`, `giver`, `reward`, `status`) VALUES
(1, 'The Soulmonger', 'Syndra Silvane, a former adventurer, and archmage from Baldur&rsquo;s Gate, has recruited your services to hunt down and destroy the cause of the Death Curse afflicting all of Faer&ucirc;n.<br><br>She has learned of something called the Soulmonger, which she has tracked to the peninsula of Chult on the far reaches of the continent. She believes this is the root of the problem.<br><br>Syndra has been afflicted with the death curse and will succumb to its effects on its 99th day.', 'Syndra Silvane', '1 Uncommon/Rare Magic Item (each); 50gp (up-front)', 1),
(2, 'Find Artus Cimber', 'Xandala approached your expedition outside the Temple of Savras. She claims to be the daughter of Artus Cimber and is worried about him. She heard he had left the city with a reptilian man who doesn&rsquo;t talk and smells funny. Both were last seen heading into the jungle.<br><br>Xandala has a pet pseudodragon with her, named Summerwise. Upon swaying him, he has revealed that Xandala is not Artus&rsquo; daughter, and in fact wishes to steal a ring of great power he has in his possession.<br><br>He also reveals that Artus is a former member of the Harpers, and is currently exploring the jungle in search of a place of great wisdom.', 'Xandala / Summerwise', 'Unknown', 1),
(3, 'Explore the Aldani Basin', 'Inete has had disturbing visions of red-robed wizards operating a secret base somewhere in the Aldani Basin. The head of her temple, Grandfather Zitembe, has too many other things on his mind, but has given Inete permission to investigate. If you are headed in that directions, she would like to accompany your expedition for safety. She will provide her own food and supplies, as well as donate 100gp towards other expedition expenses.', 'Inete (w/ party)', '100gp (up-front)', 1),
(4, 'Seek Wisdom at Orolunga', 'Eshek stumbles up to the party in the street, whispering &ldquo;Speak to the wise guardian of Orolunga, east of Mbala. She can direct you to that which you seek.&rdquo; Then he collapsed, awakening a few minutes later. He remembers nothing from the last 12-hours except a desire to find a group of people matching your description.<br><br>He is as puzzled as you are but offers as much help as he can. He knows where Mbala is, from speaking with porters who have been to Camp Vengeance.', 'Eshek', 'Unknown', 1),
(5, 'Create a Distraction at Fort Beluarian', 'Rokah gains the attention of your party on the streets of Port Nyanzaru, and asks for your help. He works with the Zhentarim, who believes that pirates have infiltrated the Flaming Fist (a group of mercenaries).<br><br>He has been tasked with going to Fort Beluarian, infiltrating the Flaming Fist, and find the needed proof. He would like you to escort him to Fort Beluarian, so he can ransack the commander&rsquo;s quarters.', 'Rokah (w/ party)', 'Pays for Charter of Exploration', 1),
(6, 'The Wizard\'s Journal', 'After befriending Wakanga, he gives your party a tattered, weather-damaged explorer&rsquo;s journal that was brought out of the jungle 15 years prior. It describes a wizard&rsquo;s exploration of various places in Chult, but not in enough detail to locate them on the map. The unnamed author does, however, make many mentions of his only companion: a shield guardian named Vorn.<br><br>Wakanga has marked the location of where the journal was found on your map, and wishes you to retrieve the construct and its control amulet. The journal contains a picture of the control amulet for reference, but no clues as to where it may be located now.', 'Wakanga', 'Spellbook containing 15 spells of various levels', 1),
(7, 'Hunt Pirates', 'Now that you have gained his trust, Zindar would like help hunting down 3 pirates ships that have been attacking merchant vessels heading to and from the Bay of Chult. He knows these ships are called the Dragonfang, the Emerald Eye and the Stirge. <br><br>He has permission from the Merchant Princes to offer you 2000gp for each ship captured and brought to port, and an additional 500gp for each captain captured.', 'Zindar', 'Lots of Gold (2000gp per ship, 500gp per captain... captured)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `toa_rumors`
--

DROP TABLE IF EXISTS `toa_rumors`;
CREATE TABLE IF NOT EXISTS `toa_rumors` (
  `rumor_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `details` text NOT NULL,
  PRIMARY KEY (`rumor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toa_rumors`
--

INSERT INTO `toa_rumors` (`rumor_id`, `details`) VALUES
(1, 'Bird folk inhabit a monastery that hangs on the side of a plateau many miles up the Olung River, past the Laughing Gorge. The bird folk are holding the last royal heir of Chult as their prisoner.'),
(2, 'Deep in the heart of the jungle is a city built by minotaurs. It\'s now overrun by snake people, but even worse things dwell below. In visions, I have seen strange devils screaming in the dark.'),
(3, 'One must purchase a charter of exploration at Fort Beluarian before undertaking any jungle expedition. The Flaming Fist punishes explorers who don\'t have the required paperwork.'),
(4, 'Chult was once a playground for a green dragon. Her bones mark the location of a hidden treasure trove. If you travel to Mezro and head east across the Laughing Gorge, then south toward Kir Sabal, you might stumble on the dragon\'s bones and earn yourself a place in the history books!'),
(5, 'Dwarves are determined to reclaim Wyrmheart Mine, but a red dragon lives there now. Haven\'t seen one of them in a while.'),
(6, 'The jungle is full of nature spirits &ndash; weird little elemental creatures with masks. They don\'t speak, and I\'ve never known one to be harmful, but their magical powers should not be taken lightly.'),
(7, 'There are giant snapping turtles in Snapping Turtle Bay. One of them is as big as a house. He\'s known as King Toba, and his shell has gemstones embedded in it.'),
(8, 'The Order of the Gauntlet came here to cleanse the jungle of undead. They lost one of their encampments not too long ago. They\'re just barely hanging on to another one. I see their emissaries all the time, heading up the River Soshenstar in canoes to get more supplies and templars from Port Nyanzaru.'),
(9, 'The great god Ubtao once guided the people of Chult, be he tired of their constant warring and abandoned them. Since then, Chultans have turned to the worship of other gods, some of which were tricksters and deceivers.'),
(10, 'Perched atop a plateau overlooking the Aldani Basin is a ghost village. All the people there disappeared. No one knows why. You can reach the Aldani Basin by following the River Soshenstar.');

-- --------------------------------------------------------

--
-- Table structure for table `toa_terrain`
--

DROP TABLE IF EXISTS `toa_terrain`;
CREATE TABLE IF NOT EXISTS `toa_terrain` (
  `terrain_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`terrain_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toa_terrain`
--

INSERT INTO `toa_terrain` (`terrain_id`, `name`) VALUES
(1, 'Beach'),
(2, 'Jungle: No Undead'),
(3, 'Jungle: Lesser Undead'),
(4, 'Jungle: Greater Undead'),
(5, 'Mountains'),
(6, 'Rivers'),
(7, 'Ruins'),
(8, 'Swamp'),
(9, 'Wasteland');

-- --------------------------------------------------------

--
-- Table structure for table `toa_weather_types`
--

DROP TABLE IF EXISTS `toa_weather_types`;
CREATE TABLE IF NOT EXISTS `toa_weather_types` (
  `weather_type_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `icon` text NOT NULL,
  `travel_effect` tinytext NOT NULL,
  `visibility` tinytext NOT NULL,
  `missile_range` tinytext NOT NULL,
  `weather_roll_min` tinyint(3) UNSIGNED NOT NULL,
  `weather_roll_max` tinyint(3) UNSIGNED NOT NULL,
  `trigger_roll_min` tinyint(3) UNSIGNED NOT NULL,
  `trigger_roll_max` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`weather_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `toa_weather_types`
--

INSERT INTO `toa_weather_types` (`weather_type_id`, `name`, `icon`, `travel_effect`, `visibility`, `missile_range`, `weather_roll_min`, `weather_roll_max`, `trigger_roll_min`, `trigger_roll_max`) VALUES
(1, 'Sunny', 'sunny', 'Normal', 'Normal', 'Normal', 1, 1, 1, 4),
(2, 'Cloudy', 'cloudy', 'Normal', 'Normal', 'Normal', 2, 5, 1, 4),
(3, 'Showers', 'showers', 'Normal', 'Reduced', 'Normal', 6, 8, 1, 4),
(4, 'Rain', 'rain', 'Normal', 'Reduced', '1/2', 9, 16, 1, 4),
(5, 'Heavy Rain', 'heavy-rain', 'Normal', '50 Yards', '1/2', 17, 20, 1, 3),
(6, 'Storm', 'storm', 'Exhausting', '25 Yards', '1/4', 17, 20, 4, 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
