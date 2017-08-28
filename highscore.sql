-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2017 at 01:54 PM
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
  `name` varchar(10) DEFAULT NULL,
  `highscore` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `highscoredata`
--

INSERT INTO `highscoredata` (`ID`, `name`, `highscore`) VALUES
(1, 'AAA', '58748'),
(2, 'BBB', '48574'),
(3, 'AAB', '58741'),
(4, 'ABBAA', '54784'),
(5, 'CCCC', '84579'),
(7, 'HHHH', '895475'),
(8, 'hehehe', '87477'),
(9, 'Eglute', '99999999'),
(10, 'efefefrgr', '54515');

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
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
