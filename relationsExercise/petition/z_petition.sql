-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2014 at 09:37 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `z_petition`
--

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE IF NOT EXISTS `person` (
`personID` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`personID`, `firstname`, `lastname`, `email`) VALUES
(1, 'Ann', 'Tan', 'ann@gmail.com'),
(2, 'Ben', 'Men', 'ben@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `petition`
--

CREATE TABLE IF NOT EXISTS `petition` (
`petitionID` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petition`
--

INSERT INTO `petition` (`petitionID`, `type`, `content`) VALUES
(1, 'A', 'test content'),
(2, 'B', 'test content2'),
(3, 'C', 'test content3'),
(4, 'D', 'test content4'),
(5, 'E', 'test content5');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
`registerID` int(11) NOT NULL,
  `personID` int(11) NOT NULL,
  `petitionID` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`registerID`, `personID`, `petitionID`, `date`) VALUES
(1, 1, 2, '2014-10-09'),
(2, 1, 4, '2014-10-12'),
(3, 2, 1, '2014-10-13'),
(4, 2, 3, '2014-10-15'),
(5, 2, 5, '2014-10-17'),
(6, 1, 5, '2014-10-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `person`
--
ALTER TABLE `person`
 ADD PRIMARY KEY (`personID`);

--
-- Indexes for table `petition`
--
ALTER TABLE `petition`
 ADD PRIMARY KEY (`petitionID`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
 ADD PRIMARY KEY (`registerID`), ADD KEY `personID` (`personID`), ADD KEY `petitionID` (`petitionID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
MODIFY `personID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `petition`
--
ALTER TABLE `petition`
MODIFY `petitionID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
MODIFY `registerID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `register`
--
ALTER TABLE `register`
ADD CONSTRAINT `ibfk_register_2` FOREIGN KEY (`petitionID`) REFERENCES `petition` (`petitionID`),
ADD CONSTRAINT `ibfk_register_1` FOREIGN KEY (`personID`) REFERENCES `person` (`personID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
