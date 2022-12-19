-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2022 at 08:04 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zoo`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `full_name`, `email`, `message`) VALUES
(1, 'chijiuba onyedikachukwu', 'chijiuba@gmail.com', 'Sed ut perspiciaatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas'),
(2, 'Naomi Ezefuna', 'kelvin@gmail.com', 'Sed ut perspiciaatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `permission` varchar(255) CHARACTER SET latin1 NOT NULL,
  `createuser` varchar(255) DEFAULT NULL,
  `deleteuser` varchar(255) DEFAULT NULL,
  `createbid` varchar(255) DEFAULT NULL,
  `updatebid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `permission`, `createuser`, `deleteuser`, `createbid`, `updatebid`) VALUES
(1, 'Superuser', '1', '1', '1', '1'),
(2, 'Admin', NULL, NULL, '1', '1'),
(3, 'User', NULL, NULL, '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `Staffid` varchar(255) DEFAULT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Status` int(11) NOT NULL DEFAULT 1,
  `Photo` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT 'avatar15.jpg',
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `Staffid`, `AdminName`, `UserName`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Status`, `Photo`, `Password`, `AdminRegdate`) VALUES
(2, '10002', 'Admin', 'admin', 'John', 'Smith  ', 770546590, 'admin@gmail.com', 1, 'face19.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2021-06-21 10:18:39'),
(9, '10003', 'Admin', 'harry', 'Harry ', 'Ronald ', 757537271, 'harry@gmail.com', 0, 'face27.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2021-06-21 07:08:48'),
(29, 'U002', 'User', 'morgan', 'Happy', 'Morgan', 770546590, 'morgan@gmail.com', 1, 'avatar15.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2021-07-21 14:26:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblanimal`
--

CREATE TABLE `tblanimal` (
  `ID` int(10) NOT NULL,
  `AnimalName` varchar(200) DEFAULT NULL,
  `AnimalCategory` varchar(255) DEFAULT NULL,
  `CageNumber` varchar(255) DEFAULT NULL,
  `FeedNumber` varchar(200) DEFAULT NULL,
  `Breed` varchar(200) DEFAULT NULL,
  `AnimalImage` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `Status` varchar(255) CHARACTER SET latin1 DEFAULT 'Live',
  `Dateofbirth` varchar(255) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `LastUpdate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblanimal`
--

INSERT INTO `tblanimal` (`ID`, `AnimalName`, `AnimalCategory`, `CageNumber`, `FeedNumber`, `Breed`, `AnimalImage`, `Description`, `Status`, `Dateofbirth`, `CreationDate`, `LastUpdate`) VALUES
(1, 'Giraffe', 'Mammals', '12300', 'FN-1001', 'Masai giraffe', '694cb29edd30cd1d86dda55dd904ee4b1596609931.jpg', 'The Masai giraffe (Giraffa camelopardalis tippelskirchii), also spelled Maasai giraffe, also called Kilimanjaro giraffe, is the largest subspecies of giraffe. It is native to East Africa. The Masai giraffe can be found in central and southern Kenya and in Tanzania.', 'Live', NULL, '2021-11-06 00:28:41', NULL),
(2, 'Giraffe', 'Mammals', '12301', 'FN-1002', 'Reticulated giraffe', '7fdc1a630c238af0815181f9faa190f51596609868.jpg', 'The reticulated giraffe (Giraffa camelopardalis reticulata), also known as the Somali giraffe, is a subspecies of giraffe native to the Horn of Africa. It lives in Somalia, southern Ethiopia, and northern Kenya. There are approximately 8,500 individuals living in the wild.', 'Live', NULL, '2021-11-06 00:28:30', NULL),
(3, 'Tiger', 'Mammals', '12302', 'FN-1003', 'Bengal Tiger', 'e692bd84570d9f467b75af761bf15c7c1596609789.jpg', 'The Bengal tiger is a tiger from a specific population of the Panthera tigris tigris subspecies that is native to the Indian subcontinent. It is threatened by poaching, loss, and fragmentation of habitat, and was estimated at comprising fewer than 2,500 individuals by 2011.', 'Live', NULL, '2022-12-08 21:42:19', '2022/12/08'),
(4, 'Tiger', 'Mammals', '12303', 'FN-1004', ' chinese Tiger', '031a51aa205bd3138f7afeb0d86999e51596611280.png', 'The Indochinese tiger is a tiger from a specific population of the Panthera tigris tigris subspecies that is native to Southeast Asia. This population occurs in Myanmar, Thailand, Laos, Vietnam, Cambodia and southwestern China.', 'Live', NULL, '2021-11-06 00:28:01', NULL),
(5, 'Tiger', 'Mammals', '12304', 'FN-1005', 'Siberian Tiger', '1e6ae4ada992769567b71815f124fac51596609708.jpg', 'The Siberian tiger is a tiger from a specific population of the Panthera tigris tigris subspecies that is native to the Russian Far East, Northeast China, and possibly North Korea. It once ranged throughout the Korean Peninsula, north China, Russian Far East, and eastern Mongolia.', 'Live', NULL, '2021-11-06 00:27:41', NULL),
(6, 'Tiger', 'Mammals', '12305', 'FN-1006', 'chinese Tiger', '37b3f2f8b979f990fbe8bbf02fb87ddb1596609488.jpg', 'The Indochinese tiger is a tiger from a specific population of the Panthera tigris tigris subspecies that is native to Southeast Asia. This population occurs in Myanmar, Thailand, Laos, Vietnam, Cambodia and southwestern China.', 'Live', NULL, '2021-11-06 00:27:17', NULL),
(7, 'Bear', 'Mammals', '12307', 'FN-1007', 'Sloth Bear', 'efc1a80c391be252d7d777a437f868701596611141.jpg', 'The sloth bear (Melursus ursinus) is a myrmecophagous bear species native to the Indian subcontinent. It feeds on fruits, ants and termites. It is listed as Vulnerable on the IUCN Red List, mainly because of habitat loss and degradation.', 'Live', NULL, '2021-11-06 00:26:43', NULL),
(8, 'Bear', 'Mammals', '12308', 'FN-1008', 'Sun Bear', '6c09a06117fd4daa8fd74f6d1560d6a01596609406.jpg', 'The sun bear (Helarctos malayanus) is a species in the family Ursidae occurring in the tropical forests of Southeast Asia. It is the smallest bear, standing nearly 70 centimetres (28 inches) at the shoulder and weighing 25–65 kilograms (55–143 pounds). It is stockily built, with large paws, strongly curved claws, small rounded ears and a short snout. The fur is generally jet-black, but can vary from grey to red. Sun bears get their name from the characteristic orange to cream coloured chest patch. Its unique morphology—inward-turned front feet, flattened chest, powerful forelimbs with large claws—suggests adaptations for climbing.', 'Live', NULL, '2021-11-06 00:26:26', NULL),
(11, 'lion', 'Mammals', '12309', 'FN-1009', 'Local lion', 'g2.jpg', '50 years old', 'Dead', NULL, '2021-11-06 01:00:07', '2021/11/06'),
(12, 'crocodile', 'Reptiles', 'A005', NULL, 'African crocodile', 'crocodile3.jpg', 'Found in Murchison falls national park in western Uganda ', 'Live', '', '2021-11-06 18:01:58', NULL),
(13, 'fish', 'Fish', 'A006', NULL, 'Tilapia', 'tilapia.jpg', 'found in deep clean water of Atlantic ocean and it can live for more than 100 years.', 'Live', '', '2021-11-06 17:56:20', '2021/11/06'),
(14, 'crested crane', 'Birds', 'A007', NULL, 'Uganda crested crane', 'crane.jpg', 'created crane is found in Uganda in East Africa with must respect from government and people of Uganda', 'Live', '', '2021-11-06 18:05:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbilling`
--

CREATE TABLE `tblbilling` (
  `ID` int(10) NOT NULL,
  `TicketID` int(10) NOT NULL,
  `FirstName` varchar(255) CHARACTER SET latin1 NOT NULL,
  `LastName` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `State` varchar(255) CHARACTER SET latin1 NOT NULL,
  `City` varchar(255) CHARACTER SET latin1 NOT NULL,
  `Status` varchar(255) NOT NULL DEFAULT 'on',
  `CreationDate` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbilling`
--

INSERT INTO `tblbilling` (`ID`, `TicketID`, `FirstName`, `LastName`, `Phone`, `Email`, `State`, `City`, `Status`, `CreationDate`) VALUES
(1, 942483371, 'Amanya', 'Owen', '770546590', 'owen@gmail.com', 'Goa', 'New York', 'on', '2021-11-06 13:56:07'),
(2, 607715136, 'Arinaitwe', 'Gerald', '770546590', 'gerald@gmail.com', 'Assam', 'Canada', 'Used', '2021-11-06 10:54:55'),
(3, 248776410, 'John', 'Simith', '770546590', 'john@gmail.com', 'Goa', 'California', 'on', '2021-11-06 14:18:13'),
(4, 367351586, 'Nabimanya', 'Gloria', '770546590', 'gloria@gmail.com', 'Central Region', 'New York', 'on', '2021-11-06 14:21:55'),
(5, 151689475, 'Chijiuba', 'Victory', '2147483647', 'chijiubaonyedikachukwu@gmail.com', 'Enugu', 'Nsukka', 'Used', '2022-12-05 11:21:33'),
(6, 947743606, 'Chijiuba', 'Victory', '2147483647', 'chijiubaonyedikachukwu@gmail.com', 'Enugu', 'Nsukka', 'Used', '2022-12-05 13:33:52'),
(7, 582056744, 'Ishiwu', 'Burna', '2147483647', 'kelvin@gmail.com', 'Anambra', 'Oko', 'on', '2022-12-08 23:26:09'),
(8, 754248812, 'Ebenezer', 'Emeka', '81325479', 'kelvin@gmail.com', 'Ebonyi', 'Oba', 'on', '2022-12-08 23:34:08'),
(9, 739969892, 'Gambo', 'Josaiah', '08132547926', 'damian@gmail.com', 'Plateau', 'Jos', 'on', '2022-12-08 23:43:24'),
(10, 424119112, 'Prince', 'Eze', '08132547926', 'chijiuba@gmail.com', 'Ebonyi', 'Oko', 'on', '2022-12-09 00:40:39'),
(11, 973066156, 'Gambo', 'Josaiah', '08132547926', 'kelvin@gmail.com', 'Plateau', 'Jos', 'Used', '2022-12-10 11:49:54'),
(12, 627286373, 'Noble', 'Guy', '08132547926', 'kelvin@gmail.com', 'Ebonyi', 'Oba', 'on', '2022-12-13 01:36:22'),
(13, 193730169, 'Chijiuba', 'Mouse', '08132547926', 'obuchinonso@gmail.com', 'Anambra', 'Nsukka', 'on', '2022-12-13 01:53:54'),
(14, 295945693, 'Gambo', 'Josaiah', '08132547926', 'kelvin@gmail.com', 'Anambra', 'Nsukka', 'on', '2022-12-13 01:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `tblticforeigner`
--

CREATE TABLE `tblticforeigner` (
  `ID` int(10) NOT NULL,
  `TicketID` varchar(200) DEFAULT NULL,
  `NoAdult` int(10) DEFAULT NULL,
  `NoChildren` int(10) DEFAULT NULL,
  `AdultUnitprice` varchar(50) DEFAULT NULL,
  `ChildUnitprice` varchar(50) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblticforeigner`
--

INSERT INTO `tblticforeigner` (`ID`, `TicketID`, `NoAdult`, `NoChildren`, `AdultUnitprice`, `ChildUnitprice`, `PostingDate`) VALUES
(1, '162529017', 2, 2, '300', '150', '2022-12-06 11:25:53'),
(2, '820306515', 2, 1, '300', '150', '2022-12-06 12:16:06'),
(3, '582056744', 1, 1, '300', '150', '2022-12-08 22:22:20'),
(4, '193730169', 2, 1, '300', '150', '2022-12-13 00:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblticindian`
--

CREATE TABLE `tblticindian` (
  `ID` int(10) NOT NULL,
  `TicketID` varchar(100) NOT NULL,
  `NoAdult` int(10) DEFAULT NULL,
  `NoChildren` int(10) DEFAULT NULL,
  `AdultUnitprice` varchar(50) DEFAULT NULL,
  `ChildUnitprice` varchar(50) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblticindian`
--

INSERT INTO `tblticindian` (`ID`, `TicketID`, `NoAdult`, `NoChildren`, `AdultUnitprice`, `ChildUnitprice`, `PostingDate`) VALUES
(1, '449422712', 2, 3, '200', '100', '2022-12-06 11:28:21'),
(2, '767054451', 1, 0, '200', '100', '2022-12-06 12:12:57'),
(3, '832886053', 2, 1, '200', '100', '2022-12-07 08:29:07'),
(4, '567059732', 2, 1, '200', '100', '2022-12-08 21:52:10'),
(5, '754248812', 1, 1, '200', '100', '2022-12-08 22:32:13'),
(6, '739969892', 1, 4, '200', '100', '2022-12-08 22:41:24'),
(7, '424119112', 3, 1, '200', '100', '2022-12-08 23:38:47'),
(8, '759921405', 2, 1, '200', '100', '2022-12-10 10:37:14'),
(9, '389312685', 1, 2, '200', '100', '2022-12-10 10:45:08'),
(10, '973066156', 2, 1, '200', '100', '2022-12-10 10:47:25'),
(11, '627286373', 2, 3, '200', '100', '2022-12-13 00:28:14'),
(12, '295945693', 2, 1, '200', '100', '2022-12-13 00:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbltickettype`
--

CREATE TABLE `tbltickettype` (
  `ID` int(10) NOT NULL,
  `TicketType` varchar(200) DEFAULT NULL,
  `Price` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltickettype`
--

INSERT INTO `tbltickettype` (`ID`, `TicketType`, `Price`, `CreationDate`) VALUES
(1, 'Normal Adult', '200', '2019-12-30 06:31:56'),
(2, 'Normal Child', '100', '2019-12-30 06:32:27'),
(3, 'Foreigner Adult', '300', '2019-12-30 06:33:16'),
(4, 'Foreigner Child', '150', '2019-12-30 06:33:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblanimal`
--
ALTER TABLE `tblanimal`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbilling`
--
ALTER TABLE `tblbilling`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblticforeigner`
--
ALTER TABLE `tblticforeigner`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `TicketID` (`TicketID`),
  ADD KEY `TicketID_2` (`TicketID`);

--
-- Indexes for table `tblticindian`
--
ALTER TABLE `tblticindian`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TicketID` (`TicketID`);

--
-- Indexes for table `tbltickettype`
--
ALTER TABLE `tbltickettype`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TicketType` (`TicketType`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblanimal`
--
ALTER TABLE `tblanimal`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblbilling`
--
ALTER TABLE `tblbilling`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblticforeigner`
--
ALTER TABLE `tblticforeigner`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblticindian`
--
ALTER TABLE `tblticindian`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbltickettype`
--
ALTER TABLE `tbltickettype`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
