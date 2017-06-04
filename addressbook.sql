-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 04, 2017 at 08:23 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `addressbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `grouplist`
--

CREATE TABLE IF NOT EXISTS `grouplist` (
  `group_id` int(50) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `grouplist`
--

INSERT INTO `grouplist` (`group_id`, `group_name`) VALUES
(1, 'family'),
(2, 'friend'),
(3, 'office');

-- --------------------------------------------------------

--
-- Table structure for table `userlist`
--

CREATE TABLE IF NOT EXISTS `userlist` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `mobile1` varchar(50) DEFAULT NULL,
  `mobile2` varchar(50) DEFAULT NULL,
  `email1` varchar(50) DEFAULT NULL,
  `email2` varchar(50) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL,
  `homephone` varchar(50) DEFAULT NULL,
  `picture` varchar(50) DEFAULT NULL,
  `group` varchar(50) NOT NULL,
  `entrydate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `userlist`
--

INSERT INTO `userlist` (`id`, `name`, `mobile1`, `mobile2`, `email1`, `email2`, `web`, `homephone`, `picture`, `group`, `entrydate`) VALUES
(1, 'piyali das', '1234567890', '', 'piyali@gmail.com', '', 'www.piyalidas.in', '23213123', 'piyali.jpg', 'family', '2017-05-13'),
(2, 'rina roy', '233213123', '', 'rina@gmail.com', '', '', '', 'rina.jpg', 'family', '2017-05-13'),
(3, 'Json Roy', '1234567890', '', 'json.roy@yahoo.com', '', '', '', 'json.png', 'friend', '0000-00-00'),
(4, 'Michel Dew', '1234567890', '', 'michel.drew@gmail.com', 'michel.drew@yahoo.com', '', '3213213', 'michel.jpg', 'friend', '2017-05-20'),
(5, 'piyali', '99999999999', '5424234234', 'piyali@gmail.com', '', 'piyalidas.in', '', '', 'family', '2017-06-04'),
(35, 'josh', '235423534', '324234234', 'josh@yahoo.com', '', 'josh.in', '', '', 'friend', '2017-06-04'),
(34, 'tttttttt', '70980890', '756756', '', '', 'adeasd', '', '', '', '2017-06-04');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
