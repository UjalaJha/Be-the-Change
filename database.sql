-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2018 at 02:15 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ngo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `AID` int(11) NOT NULL,
  `ANAME` varchar(50) DEFAULT NULL,
  `A_EMAIL` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `DNID` int(11) NOT NULL,
  `DAMOUNT` int(11) DEFAULT NULL,
  `NID` int(11) DEFAULT NULL,
  `D_DESCRIPTION` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `donationtransaction`
--

CREATE TABLE `donationtransaction` (
  `DTID` int(11) NOT NULL,
  `DNID` int(11) DEFAULT NULL,
  `DID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `DID` int(11) NOT NULL,
  `DNAME` varchar(50) DEFAULT NULL,
  `DADDRESS` varchar(100) DEFAULT NULL,
  `D_EMAIL` varchar(100) DEFAULT NULL,
  `USER_LEVEL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ngo`
--

CREATE TABLE `ngo` (
  `NID` int(11) NOT NULL,
  `ORGNAME` varchar(100) DEFAULT NULL,
  `OPASS` varchar(64) DEFAULT NULL,
  `FIELD` varchar(50) DEFAULT NULL,
  `OADDRESS` varchar(200) DEFAULT NULL,
  `N_EMAIL` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngo`
--

INSERT INTO `ngo` (`NID`, `ORGNAME`, `OPASS`, `FIELD`, `OADDRESS`, `N_EMAIL`) VALUES
(1, 'YourNGO', NULL, NULL, NULL, 'YourNGO@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `ngoevents`
--

CREATE TABLE `ngoevents` (
  `EID` int(11) NOT NULL,
  `NID` int(11) DEFAULT NULL,
  `E_DESCRIPTION` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ngoeventspartcpn`
--

CREATE TABLE `ngoeventspartcpn` (
  `EPID` int(11) NOT NULL,
  `EID` int(11) DEFAULT NULL,
  `VID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UID` int(11) NOT NULL,
  `UNAME` varchar(50) DEFAULT NULL,
  `U_EMAIL` varchar(100) DEFAULT NULL,
  `U_TYPE` enum('1','2','3') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UID`, `UNAME`, `U_EMAIL`, `U_TYPE`) VALUES
(1, 'Nicholas', 'lacus.Mauris@auctornon.edu', '1'),
(2, 'Bertha', 'Suspendisse.aliquet.sem@mauris.net', '3'),
(3, 'Thomas', 'ut.mi.Duis@purusactellus.org', '2'),
(4, 'Kim', 'pharetra.felis.eget@cursus.edu', '3'),
(5, 'Scott', 'feugiat.tellus@tellus.ca', '1'),
(6, 'Althea', 'mauris.Morbi.non@nequeNullam.edu', '2'),
(7, 'Aspen', 'Suspendisse.tristique@turpisegestasFusce.com', '2'),
(8, 'Emmanuel', 'ipsum.nunc@sitamet.com', '2'),
(9, 'Grant', 'pede.ultrices@ullamcorperDuis.ca', '3'),
(10, 'Kenneth', 'egestas.ligula@infaucibus.edu', '2');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `VID` int(11) NOT NULL,
  `VNAME` varchar(50) DEFAULT NULL,
  `VADDRESS` varchar(100) DEFAULT NULL,
  `V_EMAIL` varchar(100) DEFAULT NULL,
  `USER_LEVEL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`AID`),
  ADD UNIQUE KEY `ANAME` (`ANAME`),
  ADD UNIQUE KEY `A_EMAIL` (`A_EMAIL`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`DNID`),
  ADD KEY `NID` (`NID`);

--
-- Indexes for table `donationtransaction`
--
ALTER TABLE `donationtransaction`
  ADD PRIMARY KEY (`DTID`),
  ADD KEY `DNID` (`DNID`),
  ADD KEY `DNID_2` (`DNID`),
  ADD KEY `DID` (`DID`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`DID`),
  ADD UNIQUE KEY `D_EMAIL` (`D_EMAIL`);

--
-- Indexes for table `ngo`
--
ALTER TABLE `ngo`
  ADD PRIMARY KEY (`NID`),
  ADD UNIQUE KEY `N_EMAIL` (`N_EMAIL`);

--
-- Indexes for table `ngoevents`
--
ALTER TABLE `ngoevents`
  ADD PRIMARY KEY (`EID`),
  ADD KEY `NID` (`NID`);

--
-- Indexes for table `ngoeventspartcpn`
--
ALTER TABLE `ngoeventspartcpn`
  ADD PRIMARY KEY (`EPID`),
  ADD KEY `VID` (`VID`),
  ADD KEY `EID` (`EID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UID`),
  ADD UNIQUE KEY `U_EMAIL` (`U_EMAIL`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`VID`),
  ADD UNIQUE KEY `V_EMAIL` (`V_EMAIL`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_ibfk_1` FOREIGN KEY (`AID`) REFERENCES `users` (`UID`);

--
-- Constraints for table `donations`
--
ALTER TABLE `donations`
  ADD CONSTRAINT `donations_ibfk_1` FOREIGN KEY (`NID`) REFERENCES `ngo` (`NID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `donationtransaction`
--
ALTER TABLE `donationtransaction`
  ADD CONSTRAINT `donationtransaction_ibfk_1` FOREIGN KEY (`DNID`) REFERENCES `donations` (`DNID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `donationtransaction_ibfk_2` FOREIGN KEY (`DID`) REFERENCES `donors` (`DID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `donors`
--
ALTER TABLE `donors`
  ADD CONSTRAINT `donors_ibfk_1` FOREIGN KEY (`DID`) REFERENCES `users` (`UID`);

--
-- Constraints for table `ngoevents`
--
ALTER TABLE `ngoevents`
  ADD CONSTRAINT `ngoevents_ibfk_1` FOREIGN KEY (`NID`) REFERENCES `ngo` (`NID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ngoeventspartcpn`
--
ALTER TABLE `ngoeventspartcpn`
  ADD CONSTRAINT `ngoeventspartcpn_ibfk_1` FOREIGN KEY (`EID`) REFERENCES `ngoevents` (`EID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ngoeventspartcpn_ibfk_2` FOREIGN KEY (`VID`) REFERENCES `volunteers` (`VID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD CONSTRAINT `volunteers_ibfk_1` FOREIGN KEY (`VID`) REFERENCES `users` (`UID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
