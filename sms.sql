-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2022 at 06:30 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(20) NOT NULL,
  `AdminPass` varchar(20) NOT NULL,
  `Gender` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `AdminName`, `AdminPass`, `Gender`) VALUES
(1, 'Admin', 'Admin', ''),
(2, 'Admin', '1234', ''),
(3, 's', 's', ''),
(4, 'nv', 'nvnb', 'Male'),
(5, 'sss', '1234', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `catagorytbl`
--

CREATE TABLE `catagorytbl` (
  `CatID` int(11) NOT NULL,
  `CatName` varchar(20) NOT NULL,
  `CatDesc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catagorytbl`
--

INSERT INTO `catagorytbl` (`CatID`, `CatName`, `CatDesc`) VALUES
(1, 'Eletronic', 'all'),
(2, 'Vachiles', 'all'),
(3, 'Tv & Home Aplifire', 'all'),
(4, 'Health & Beauty', 'all'),
(5, 'Baby &Toy', 'all'),
(6, 'Fruit', 'Fresh Fruit');

-- --------------------------------------------------------

--
-- Table structure for table `protbl`
--

CREATE TABLE `protbl` (
  `ProID` int(11) NOT NULL,
  `ProName` varchar(20) NOT NULL,
  `ProQunt` int(11) NOT NULL,
  `ProPrice` double NOT NULL,
  `ProCat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `protbl`
--

INSERT INTO `protbl` (`ProID`, `ProName`, `ProQunt`, `ProPrice`, `ProCat`) VALUES
(1, 'Egg', 100, 7, 'Health & Beauty'),
(2, 'Glasses', 750, 1000, 'Home & Lifestyle'),
(3, 'Shirt', 100, 150, 'Health & Beauty'),
(4, 'Pant', 105, 488, 'Men Fassion'),
(5, 'Apple', 500, 10, 'Fruit');

-- --------------------------------------------------------

--
-- Table structure for table `selertbl`
--

CREATE TABLE `selertbl` (
  `SelID` int(20) NOT NULL,
  `SelName` varchar(20) NOT NULL,
  `SelPass` varchar(20) NOT NULL,
  `SelGender` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `selertbl`
--

INSERT INTO `selertbl` (`SelID`, `SelName`, `SelPass`, `SelGender`) VALUES
(1, 'Sudipto', '1234', 'Male'),
(2, 'Bukhari', '12345', 'Male'),
(3, 'Ifran', '1234', 'Male'),
(4, 'Sahasa', '12345', 'Female'),
(7, 'seller', '1234', 'Male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `catagorytbl`
--
ALTER TABLE `catagorytbl`
  ADD PRIMARY KEY (`CatID`);

--
-- Indexes for table `protbl`
--
ALTER TABLE `protbl`
  ADD PRIMARY KEY (`ProID`);

--
-- Indexes for table `selertbl`
--
ALTER TABLE `selertbl`
  ADD PRIMARY KEY (`SelID`),
  ADD UNIQUE KEY `SelID` (`SelID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `selertbl`
--
ALTER TABLE `selertbl`
  MODIFY `SelID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
