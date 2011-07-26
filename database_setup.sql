-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Vært: localhost
-- Genereringstid: 25. 07 2011 kl. 22:11:02
-- Serverversion: 5.1.44
-- PHP-version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ituplan`
--
CREATE DATABASE `ituplan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ituplan`;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `uid` int(100) NOT NULL,
  `rid` int(100) NOT NULL,
  `time` int(4) NOT NULL,
  `endtime` int(10) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `day` int(2) NOT NULL,
  `duration` int(10) NOT NULL,
  `confirmed` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Data dump for tabellen `booking`
--

INSERT INTO `booking` (`id`, `uid`, `rid`, `time`, `endtime`, `year`, `month`, `day`, `duration`, `confirmed`) VALUES
(1, 0, 23, 480, 750, 2011, 5, 16, 270, 1),
(2, 0, 8, 660, 690, 2011, 5, 13, 30, 1),
(3, 0, 20, 600, 660, 2011, 5, 15, 60, 1),
(4, 0, 7, 540, 720, 2011, 5, 17, 180, 1),
(5, 0, 12, 780, 990, 2011, 5, 11, 210, 1),
(6, 0, 6, 600, 690, 2011, 5, 13, 90, 1),
(7, 0, 23, 480, 570, 2011, 5, 14, 90, 1),
(8, 0, 13, 780, 1050, 2011, 5, 12, 270, 1),
(9, 0, 13, 420, 510, 2011, 5, 17, 90, 1),
(10, 0, 21, 900, 1200, 2011, 5, 15, 300, 1),
(11, 0, 5, 480, 630, 2011, 5, 14, 150, 1),
(12, 0, 15, 720, 780, 2011, 5, 12, 60, 1),
(13, 0, 29, 420, 450, 2011, 5, 17, 30, 1),
(14, 0, 28, 540, 780, 2011, 5, 15, 240, 1),
(15, 0, 26, 600, 750, 2011, 5, 15, 150, 1),
(16, 0, 7, 780, 870, 2011, 5, 16, 90, 1),
(17, 0, 13, 660, 720, 2011, 5, 15, 60, 1),
(18, 0, 7, 780, 990, 2011, 5, 15, 210, 1),
(19, 0, 6, 480, 510, 2011, 5, 16, 30, 1),
(20, 0, 8, 720, 870, 2011, 5, 12, 150, 1),
(22, 0, 3, 960, 1020, 2011, 5, 11, 60, 1),
(53, 4, 4, 1110, 1350, 2011, 7, 13, 240, 1),
(51, 1, 15, 900, 1140, 2011, 5, 18, 240, 1),
(50, 4, 4, 900, 1140, 2011, 5, 18, 240, 1),
(47, 4, 18, 1110, 1350, 2011, 5, 15, 240, 1),
(46, 4, 28, 1110, 1350, 2011, 5, 15, 240, 1),
(45, 4, 26, 1110, 1350, 2011, 5, 15, 240, 1),
(44, 4, 33, 1110, 1350, 2011, 5, 15, 240, 1),
(43, 4, 13, 1110, 1350, 2011, 5, 15, 240, 1),
(42, 4, 4, 1110, 1350, 2011, 5, 15, 240, 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `ccode` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `start_week` int(5) NOT NULL,
  `end_week` int(5) NOT NULL,
  `duration` int(5) NOT NULL,
  `start_time` varchar(10) NOT NULL,
  `attendees` int(5) NOT NULL,
  `room_req` int(1) NOT NULL,
  `week_day` int(1) NOT NULL,
  `req_req` int(1) NOT NULL,
  `active` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Data dump for tabellen `course`
--


-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `planning`
--

CREATE TABLE IF NOT EXISTS `planning` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `rid` int(100) NOT NULL,
  `cid` int(100) NOT NULL,
  `week_duration` int(10) NOT NULL,
  `time` int(4) NOT NULL,
  `duration` int(10) NOT NULL,
  `start_year` int(4) NOT NULL,
  `start_month` int(2) NOT NULL,
  `start_day` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Data dump for tabellen `planning`
--


-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `rid` varchar(100) NOT NULL,
  `use_in_plan` int(1) NOT NULL,
  `meeting_room` int(1) NOT NULL,
  `capacity` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Data dump for tabellen `room`
--

INSERT INTO `room` (`id`, `rid`, `use_in_plan`, `meeting_room`, `capacity`) VALUES
(4, '4A62', 0, 0, 4),
(2, '2A12', 1, 0, 70),
(3, '4A64', 0, 0, 4),
(5, '2A14', 1, 0, 40),
(6, '2A18', 1, 0, 24),
(7, '2A20', 1, 0, 24),
(8, 'AUD3', 1, 0, 70),
(9, '3A12', 1, 0, 70),
(10, '3A14', 1, 0, 40),
(11, '4A46', 0, 0, 4),
(12, '3A18', 1, 0, 24),
(13, '4A44', 0, 0, 4),
(14, '4A14', 1, 0, 45),
(15, '4A08', 0, 0, 4),
(16, '4A10', 0, 0, 4),
(17, '4A16', 1, 0, 50),
(18, '4A30', 0, 0, 4),
(19, '4A20', 1, 0, 24),
(20, '4A32', 0, 0, 4),
(21, '4A22', 1, 0, 24),
(22, 'AUD4', 1, 0, 70),
(23, 'AUD2', 1, 0, 130),
(24, '4A34', 0, 0, 4),
(25, 'AUD1', 1, 0, 300),
(26, '3A60', 0, 0, 4),
(27, '2A50', 1, 0, 15),
(28, '3A58', 0, 0, 4),
(29, '2A52', 1, 0, 25),
(30, '3A42', 0, 0, 4),
(31, '2A54', 1, 0, 16),
(32, '3A40', 0, 0, 4),
(33, '3A30', 0, 0, 4),
(34, '3A50', 1, 0, 15),
(35, '3A08', 0, 0, 15),
(36, '3A52', 1, 0, 25),
(37, '2A60', 0, 0, 4),
(38, '4A54', 1, 0, 15),
(39, '2A58', 0, 0, 4),
(40, '2A42', 0, 0, 4),
(41, '4A56', 1, 0, 25),
(42, '2A40', 0, 0, 4),
(43, '4A58', 1, 0, 20),
(44, '2A30', 0, 0, 4),
(45, 'DesignLab', 0, 0, 50),
(46, '3A20', 1, 0, 20),
(47, 'GameLab', 0, 0, 36),
(48, '2A08', 0, 0, 15),
(49, 'Midlertidigt_GameLab_4E', 0, 0, 20),
(50, 'ScrollBar', 0, 0, 82);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `room_equipment`
--

CREATE TABLE IF NOT EXISTS `room_equipment` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `rid` int(100) NOT NULL,
  `equipment` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Data dump for tabellen `room_equipment`
--


-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `track`
--

CREATE TABLE IF NOT EXISTS `track` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `active` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Data dump for tabellen `track`
--


-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `track_courses`
--

CREATE TABLE IF NOT EXISTS `track_courses` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `cid` int(100) NOT NULL,
  `tid` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Data dump for tabellen `track_courses`
--


-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `mail` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `level` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Data dump for tabellen `user`
--

INSERT INTO `user` (`id`, `mail`, `pwd`, `level`) VALUES
(1, 'mail@mail.mail', 'mail', 1),
(2, 'lol@lol.lol', 'lol', 2),
(3, 'mor@mor.mor', 'mor', 1),
(4, 'a', 'a', 1);
