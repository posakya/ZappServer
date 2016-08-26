-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2016 at 01:48 PM
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
  `ID` int(11) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Iname` varchar(255) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biriyani`
--

INSERT INTO `biriyani` (`ID`, `Image`, `Iname`, `Price`) VALUES
(1, 'choick biryani.jpg', 'Chicken Biriyani', 340),
(2, 'mutton-biryani.jpg', 'Mutton Biriyani', 400),
(3, 'veg biryani super.jpg', 'Veg Biriyani', 360);

-- --------------------------------------------------------

--
-- Table structure for table `burger`
--

CREATE TABLE `burger` (
  `ID` int(11) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Iname` varchar(255) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `burger`
--

INSERT INTO `burger` (`ID`, `Image`, `Iname`, `Price`) VALUES
(2, 'ham.jpg', 'Ham Burger', 120),
(3, 'burger.jpg', 'Cheese Burger', 140),
(4, 'chickenburger.jpg', 'Chicken Burger', 160);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `Iname` varchar(25) NOT NULL,
  `Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`Iname`, `Price`, `Quantity`, `Total`) VALUES
('Vegpizza', 160, 0, 0),
('Beer', 300, 0, 0),
('Beer', 300, 0, 0),
('Veg MoMo', 100, 0, 0),
('Veg MoMo', 100, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `chowmien`
--

CREATE TABLE `chowmien` (
  `ID` int(11) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Iname` varchar(255) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chowmien`
--

INSERT INTO `chowmien` (`ID`, `Image`, `Iname`, `Price`) VALUES
(1, 'Chicken Chow Mein.jpg', 'Chicken Chowmien', 260),
(2, 'vegchowmin.jpg', 'Veg Chowmien', 100),
(3, 'chow.jpg', 'Buff Chowmien', 120);

-- --------------------------------------------------------

--
-- Table structure for table `drinks`
--

CREATE TABLE `drinks` (
  `ID` int(11) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Iname` varchar(255) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drinks`
--

INSERT INTO `drinks` (`ID`, `Image`, `Iname`, `Price`) VALUES
(1, 'cokefantasprite.jpg', 'Coke/Fanta/Sprite', 100),
(2, 'beer.jpg', 'Beer', 300),
(3, 'mocktails.jpg', 'Mocktails', 300);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `Id` int(11) NOT NULL,
  `Image` varchar(20) NOT NULL,
  `Categorie` varchar(25) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `type` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`Id`, `Image`, `Categorie`, `Description`, `type`) VALUES
(1, 'cheesepizza.jpg', 'Pizza', 'Fast Food', 0),
(2, 'buffburger.jpg', 'Burger', 'Fast Food', 1),
(3, 'buffchowmin.jpg', 'Chowmien', 'Fast Food', 2),
(4, 'vegbiryani.jpg', 'Biriyani ', 'Indian dish', 3),
(5, 'mocktails.jpg', 'Drinks', 'Beverages', 4),
(6, 'momo1.jpg', 'MOMO', 'Fast Fodd', 5),
(7, 'newa.jpg', 'Newari', 'Newari', 6);

-- --------------------------------------------------------

--
-- Table structure for table `momo`
--

CREATE TABLE `momo` (
  `ID` int(11) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Iname` varchar(255) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `momo`
--

INSERT INTO `momo` (`ID`, `Image`, `Iname`, `Price`) VALUES
(1, 'momo.jpg', 'Veg MoMo', 100),
(2, 'momo1.jpg', 'Buff MoMo', 120);

-- --------------------------------------------------------

--
-- Table structure for table `newari`
--

CREATE TABLE `newari` (
  `ID` int(11) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Iname` varchar(255) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newari`
--

INSERT INTO `newari` (`ID`, `Image`, `Iname`, `Price`) VALUES
(1, 'newari-food.jpg', 'Newa Food', 200);

-- --------------------------------------------------------

--
-- Table structure for table `pizza`
--

CREATE TABLE `pizza` (
  `ID` int(11) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Iname` varchar(255) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pizza`
--

INSERT INTO `pizza` (`ID`, `Image`, `Iname`, `Price`) VALUES
(7, 'cheesepizza.jpg', 'Cheese Pizza', 200),
(8, 'mixedpizza.jpg', 'Mixed Pizza', 250),
(9, 'vegpizza.jpg', 'Vegpizza', 160);

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biriyani`
--
ALTER TABLE `biriyani`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `burger`
--
ALTER TABLE `burger`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `chowmien`
--
ALTER TABLE `chowmien`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `drinks`
--
ALTER TABLE `drinks`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `momo`
--
ALTER TABLE `momo`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `newari`
--
ALTER TABLE `newari`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biriyani`
--
ALTER TABLE `biriyani`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `burger`
--
ALTER TABLE `burger`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `chowmien`
--
ALTER TABLE `chowmien`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `drinks`
--
ALTER TABLE `drinks`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `momo`
--
ALTER TABLE `momo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `newari`
--
ALTER TABLE `newari`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pizza`
--
ALTER TABLE `pizza`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
