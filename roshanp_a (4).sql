-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2016 at 03:47 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roshanp_a`
--

-- --------------------------------------------------------

--
-- Table structure for table `biriyani`
--

CREATE TABLE `biriyani` (
  `Image` varchar(255) NOT NULL,
  `Iname` varchar(255) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biriyani`
--

INSERT INTO `biriyani` (`Image`, `Iname`, `Price`) VALUES
('choick biryani.jpg', 'Chicken Biriyani', 340),
('mutton-biryani.jpg', 'Mutton Biriyani', 400),
('veg biryani super.jpg', 'Veg Biriyani', 360);

-- --------------------------------------------------------

--
-- Table structure for table `burger`
--

CREATE TABLE `burger` (
  `Image` varchar(255) NOT NULL,
  `Iname` varchar(255) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `burger`
--

INSERT INTO `burger` (`Image`, `Iname`, `Price`) VALUES
('', 'Cheese Burger', 120),
('burger.jpg', 'Cheese Burger', 280),
('ham.jpg', 'Ham Burger', 220);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `Iname` varchar(25) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`Iname`, `Price`) VALUES
('Cheese Pizza', 120),
('Mixed Pizza', 150);

-- --------------------------------------------------------

--
-- Table structure for table `chowmien`
--

CREATE TABLE `chowmien` (
  `Image` varchar(255) NOT NULL,
  `Iname` varchar(255) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chowmien`
--

INSERT INTO `chowmien` (`Image`, `Iname`, `Price`) VALUES
('buffchow.jpg', 'Buff Chowmien', 180),
('Chicken Chow Mein.jpg', 'Chicken Chowmien', 260);

-- --------------------------------------------------------

--
-- Table structure for table `drinks`
--

CREATE TABLE `drinks` (
  `Image` varchar(255) NOT NULL,
  `Iname` varchar(255) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drinks`
--

INSERT INTO `drinks` (`Image`, `Iname`, `Price`) VALUES
('cokefantasprite.jpg', 'Coke/Fanta/Sprite', 50);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `Image` varchar(20) NOT NULL,
  `Iname` varchar(25) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `type` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`Image`, `Iname`, `Description`, `type`) VALUES
('cheesepizza.jpg', 'Pizza', 'Fast Food', 0),
('buffburger.jpg', 'Burger', 'Fast Food', 1),
('buffchowmin.jpg', 'Chowmien', 'Fast Food', 2),
('vegbiryani.jpg', 'Biriyani ', 'Indian dish', 3),
('mocktails.jpg', 'Drinks', 'Beverages', 4),
('momo1.jpg', 'MOMO', 'Fast Fodd', 5),
('newa.jpg', 'Newari', 'Newari', 6);

-- --------------------------------------------------------

--
-- Table structure for table `momo`
--

CREATE TABLE `momo` (
  `Image` varchar(255) NOT NULL,
  `Iname` varchar(255) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `newari`
--

CREATE TABLE `newari` (
  `Image` varchar(255) NOT NULL,
  `Iname` varchar(255) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pizza`
--

CREATE TABLE `pizza` (
  `Image` varchar(255) NOT NULL,
  `Iname` varchar(255) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pizza`
--

INSERT INTO `pizza` (`Image`, `Iname`, `Price`) VALUES
('cheesepizza.jpg', 'Cheese Pizza', 120),
('mixedpizza.jpg', 'Mixed Pizza', 150);

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `Name` varchar(25) NOT NULL,
  `Address` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`Name`, `Address`) VALUES
('Roshan', 'imadol'),
('Rohan', 'Sanogaun');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
