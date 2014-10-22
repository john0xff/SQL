-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2014 at 10:02 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `z_company`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
`companyID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`companyID`, `name`) VALUES
(1, 'A'),
(2, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `companyoffices`
--

CREATE TABLE IF NOT EXISTS `companyoffices` (
`id` int(11) NOT NULL,
  `companyID` int(11) NOT NULL,
  `officeID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companyoffices`
--

INSERT INTO `companyoffices` (`id`, `companyID`, `officeID`) VALUES
(1, 1, 1),
(2, 1, 4),
(3, 1, 5),
(4, 1, 6),
(5, 2, 1),
(6, 2, 2),
(7, 2, 3),
(8, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE IF NOT EXISTS `office` (
`officeID` int(11) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zipCode` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `office`
--

INSERT INTO `office` (`officeID`, `city`, `zipCode`, `street`) VALUES
(1, 'London', '2222', 'Long'),
(2, 'Newcastle', '4444', 'Short'),
(3, 'Derby', '1111', 'Mine'),
(4, 'Birmingham', '9999', 'Metropoli'),
(5, 'Liverpool', '7777', 'Richmond'),
(6, 'Norwitch', '6666', 'Wimbledon');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
 ADD PRIMARY KEY (`companyID`);

--
-- Indexes for table `companyoffices`
--
ALTER TABLE `companyoffices`
 ADD PRIMARY KEY (`id`), ADD KEY `companyID` (`companyID`), ADD KEY `officeID` (`officeID`);

--
-- Indexes for table `office`
--
ALTER TABLE `office`
 ADD PRIMARY KEY (`officeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
MODIFY `companyID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `companyoffices`
--
ALTER TABLE `companyoffices`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `office`
--
ALTER TABLE `office`
MODIFY `officeID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `companyoffices`
--
ALTER TABLE `companyoffices`
ADD CONSTRAINT `companyoffices_ibfk_2` FOREIGN KEY (`officeID`) REFERENCES `office` (`officeID`),
ADD CONSTRAINT `companyoffices_ibfk_1` FOREIGN KEY (`companyID`) REFERENCES `company` (`companyID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
