-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2017 at 01:54 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `highscore`
--

-- --------------------------------------------------------

--
-- Table structure for table `highscoredata`
--

CREATE TABLE `highscoredata` (
  `ID` int(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `highscore` varchar(40) DEFAULT NULL,
  `timeplayed` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `highscoredata`
--

INSERT INTO `highscoredata` (`ID`, `name`, `highscore`, `timeplayed`) VALUES
(15, 'AAA', '10000', '40'),
(16, 'AAB', '2000', '5'),
(17, 'ABB', '5000', '50'),
(19, 'Paulius', '1600', '11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `highscoredata`
--
ALTER TABLE `highscoredata`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `highscoredata`
--
ALTER TABLE `highscoredata`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
