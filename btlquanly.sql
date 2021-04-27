-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2021 at 02:27 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `btlquanly`
--

-- --------------------------------------------------------

--
-- Table structure for table `donationamount`
--

CREATE TABLE `donationamount` (
  `ID` int(11) NOT NULL,
  `DonationAmount` longtext CHARACTER SET utf8mb4 NOT NULL,
  `Date` date NOT NULL,
  `AnnualFee` longtext CHARACTER SET utf8mb4 NOT NULL,
  `TotalDonationAmount` longtext CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_nopad_ci;

--
-- Dumping data for table `donationamount`
--

INSERT INTO `donationamount` (`ID`, `DonationAmount`, `Date`, `AnnualFee`, `TotalDonationAmount`) VALUES
(2, '100000', '2020-12-18', '6000', '106000');

-- --------------------------------------------------------

--
-- Table structure for table `infohouseholddonated`
--

CREATE TABLE `infohouseholddonated` (
  `ID` int(11) NOT NULL,
  `NameHouseHoldHead` text NOT NULL,
  `NumerMemberOfHouseHold` int(100) NOT NULL,
  `Age` int(100) NOT NULL,
  `Adress` varchar(100) NOT NULL,
  `IdentityCard` text NOT NULL,
  `Job` text NOT NULL,
  `WorkPlace` varchar(100) NOT NULL,
  `TelephoneNumber` text NOT NULL,
  `EmailAdress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `infohouseholddonated`
--

INSERT INTO `infohouseholddonated` (`ID`, `NameHouseHoldHead`, `NumerMemberOfHouseHold`, `Age`, `Adress`, `IdentityCard`, `Job`, `WorkPlace`, `TelephoneNumber`, `EmailAdress`) VALUES
(1, 'Khiem', 1, 20, '123 Tran Dai Nghia', '001200012012', 'Student', 'Hanoi University of Science and Technology', '0900000000', 'habaokhiem000@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `namecampaign`
--

CREATE TABLE `namecampaign` (
  `ID` int(11) NOT NULL,
  `NameCampaign` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `AdressOccur` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `namecampaign`
--

INSERT INTO `namecampaign` (`ID`, `NameCampaign`, `Date`, `AdressOccur`) VALUES
(1, 'Supply for SouthSide', '2020-12-30', '5 Ta Quang Buu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donationamount`
--
ALTER TABLE `donationamount`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `infohouseholddonated`
--
ALTER TABLE `infohouseholddonated`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `namecampaign`
--
ALTER TABLE `namecampaign`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donationamount`
--
ALTER TABLE `donationamount`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `infohouseholddonated`
--
ALTER TABLE `infohouseholddonated`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `namecampaign`
--
ALTER TABLE `namecampaign`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
