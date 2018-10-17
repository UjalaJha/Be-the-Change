-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2018 at 07:02 PM
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

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`AID`, `ANAME`, `A_EMAIL`) VALUES
(1, 'Nicholas', 'lacus.Mauris@auctornon.edu'),
(5, 'Scott', 'feugiat.tellus@tellus.ca');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `DNID` int(11) NOT NULL,
  `DAMOUNT` int(11) DEFAULT NULL,
  `NID` int(11) DEFAULT NULL,
  `D_TITLE` varchar(100) DEFAULT NULL,
  `D_DESCRIPTION` varchar(500) NOT NULL,
  `D_IMAGE` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`DNID`, `DAMOUNT`, `NID`, `D_TITLE`, `D_DESCRIPTION`, `D_IMAGE`) VALUES
(1, 1000, 1, 'Educate poor', 'A charitable donation is a gift made by an individual or an organization to a nonprofit organization, charity or private foundation...', ''),
(2, 2000, 2, 'Help students', 'A charitable donation is a gift made by an individual or an organization to a nonprofit organization, charity or private foundation...', ''),
(3, 3000, 3, 'Awareness', 'A charitable donation is a gift made by an individual or an organization to a nonprofit organization, charity or private foundation.', ''),
(4, 1700, 1, 'Help the Orphans', 'A charitable donation is a gift made by an individual or an organization to a nonprofit organization, charity or private foundation', ''),
(5, 3000, 4, 'Women Empowerment', 'A charitable donation is a gift made by an individual or an organization to a nonprofit organization, charity or private foundation', ''),
(6, 30000, 4, 'Donate for rehab', 'A charitable donation is a gift made by an individual or an organization to a nonprofit organization, charity or private foundation', '');

-- --------------------------------------------------------

--
-- Table structure for table `donationtransaction`
--

CREATE TABLE `donationtransaction` (
  `DTID` int(11) NOT NULL,
  `DNID` int(11) DEFAULT NULL,
  `DID` int(11) DEFAULT NULL,
  `amount` int(121) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donationtransaction`
--

INSERT INTO `donationtransaction` (`DTID`, `DNID`, `DID`, `amount`) VALUES
(1, 1, 2, 0),
(2, 2, 4, 0),
(3, 3, 9, 0),
(4, 1, 4, 0),
(5, 2, 9, 0),
(6, 3, 2, 0);

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

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`DID`, `DNAME`, `DADDRESS`, `D_EMAIL`, `USER_LEVEL`) VALUES
(2, 'Bertha', NULL, 'Suspendisse.aliquet.sem@mauris.net', NULL),
(4, 'Kim', NULL, 'pharetra.felis.eget@cursus.edu', NULL),
(9, 'Grant', NULL, 'pede.ultrices@ullamcorperDuis.ca', NULL);

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
(1, 'YourNGO', NULL, NULL, NULL, 'YourNGO@gmail.com'),
(3, 'YourStoryNGO', NULL, NULL, NULL, 'YourStoryNGO@gmail.com'),
(4, 'WeNGO', NULL, NULL, NULL, 'WeNGO@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `ngoevents`
--

CREATE TABLE `ngoevents` (
  `EID` int(11) NOT NULL,
  `NID` int(11) DEFAULT NULL,
  `E_TITLE` varchar(100) DEFAULT NULL,
  `E_DESCRIPTION` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngoevents`
--

INSERT INTO `ngoevents` (`EID`, `NID`, `E_TITLE`, `E_DESCRIPTION`) VALUES
(1, 1, 'Educate poor', ' HOME GLOBAL GOALS THE EXPO SPEAKERS 2018 PARTICIP...'),
(2, 2, 'Help students', ' HOME GLOBAL GOALS THE EXPO SPEAKERS 2018 PARTICIP...'),
(3, 3, 'Awareness', ' HOME GLOBAL GOALS THE EXPO SPEAKERS 2018 PARTICIP...'),
(4, 2, 'Donate for food for all', ' HOME GLOBAL GOALS THE EXPO SPEAKERS 2018 PARTICIP...'),
(5, 2, 'Help Children Study', ' HOME GLOBAL GOALS THE EXPO SPEAKERS 2018 PARTICIP...');

-- --------------------------------------------------------

--
-- Table structure for table `ngoeventspartcpn`
--

CREATE TABLE `ngoeventspartcpn` (
  `EPID` int(11) NOT NULL,
  `EID` int(11) DEFAULT NULL,
  `VID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngoeventspartcpn`
--

INSERT INTO `ngoeventspartcpn` (`EPID`, `EID`, `VID`) VALUES
(1, 1, 3),
(2, 2, 6),
(3, 3, 7),
(4, 1, 8),
(5, 2, 10),
(6, 3, 10),
(7, 1, 6),
(8, 2, 7),
(9, 3, 3),
(30, 2, 8),
(31, 3, 8),
(32, 5, 8),
(33, 4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UID` int(11) NOT NULL,
  `UNAME` varchar(50) DEFAULT NULL,
  `U_EMAIL` varchar(100) DEFAULT NULL,
  `PASSWORD` varchar(20) NOT NULL DEFAULT '123456',
  `U_TYPE` enum('1','2','3') NOT NULL,
  `U_PHONE` varchar(10) NOT NULL,
  `U_FIRST_LOGIN` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UID`, `UNAME`, `U_EMAIL`, `PASSWORD`, `U_TYPE`, `U_PHONE`, `U_FIRST_LOGIN`) VALUES
(1, 'Nicholas', 'lacus.Mauris@auctornon.edu', '123456', '1', '9673334456', 0),
(2, 'Bertha', 'Suspendisse.aliquet.sem@mauris.net', '123456', '3', '7744818656', 0),
(3, 'Thomas', 'ut.mi.Duis@purusactellus.org', '123456', '2', '7021197094', 0),
(4, 'Kim', 'pharetra.felis.eget@cursus.edu', '123456', '3', '', 0),
(5, 'Scott', 'feugiat.tellus@tellus.ca', '123456', '1', '', 0),
(6, 'Althea', 'mauris.Morbi.non@nequeNullam.edu', '123456', '2', '', 0),
(7, 'Aspen', 'Suspendisse.tristique@turpisegestasFusce.com', '123456', '2', '', 0),
(8, 'Emmanuel', 'ipsum.nunc@sitamet.com', '123456', '2', '', 0),
(9, 'Grant', 'pede.ultrices@ullamcorperDuis.ca', '123456', '3', '', 0),
(10, 'Kenneth', 'egestas.ligula@infaucibus.edu', '123456', '2', '', 0),
(11, 'khushboo', 'khushboo@gmail.com', '1234556', '1', '8275116900', 0),
(12, 'nikhil', 'nikhil@gmail.com', '123456', '1', '9673334456', 0),
(13, 'Mohit', 'mohit@gmail.com', '123456', '1', '9511567897', 0),
(14, 'piyush', 'piyush@gmail.com', '123456', '1', '9673334456', 0),
(15, 'UJALA', 'ujala@gmail.com', '123456', '1', '9511738058', 0),
(16, 'Gayatri', 'gayatri@gmail.com', 'gayatri', '1', '9511738058', 0),
(17, 'akshay', 'akshay@gmail.com', 'akshay', '1', '8080335642', 0),
(18, 'akshay', 'shyam@gmail.com', '1234567', '1', '8080335642', 0),
(19, 'juhi', 'juhi@gmail.com', '123456', '1', '9673334456', 0),
(20, 'gayatri', 'gauaytri@gmailll.com', 'gayu', '1', '9323048363', 0),
(21, 'ujala', 'uju@gmail.com', 'ujala', '1', '9323048363', 0);

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
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`VID`, `VNAME`, `VADDRESS`, `V_EMAIL`, `USER_LEVEL`) VALUES
(3, 'Thomas', NULL, 'ut.mi.Duis@purusactellus.org', NULL),
(6, 'Althea', NULL, 'mauris.Morbi.non@nequeNullam.edu', NULL),
(7, 'Aspen', NULL, 'Suspendisse.tristique@turpisegestasFusce.com', NULL),
(8, 'Emmanuel', NULL, 'ipsum.nunc@sitamet.com', NULL),
(10, 'Kenneth', NULL, 'egestas.ligula@infaucibus.edu', NULL);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `AID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `DNID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `donationtransaction`
--
ALTER TABLE `donationtransaction`
  MODIFY `DTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `DID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ngo`
--
ALTER TABLE `ngo`
  MODIFY `NID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ngoevents`
--
ALTER TABLE `ngoevents`
  MODIFY `EID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ngoeventspartcpn`
--
ALTER TABLE `ngoeventspartcpn`
  MODIFY `EPID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `VID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
