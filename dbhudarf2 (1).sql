-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2024 at 04:16 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbhudarf2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `adminID` int(7) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `emailadd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`adminID`, `firstname`, `lastname`, `gender`, `emailadd`) VALUES
(12, 'Darwin', 'Hudar', 'Male', 'darwin@cit.edu');

-- --------------------------------------------------------

--
-- Table structure for table `tblprofile`
--

CREATE TABLE `tblprofile` (
  `profileid` int(10) NOT NULL,
  `homeaddress` varchar(50) NOT NULL DEFAULT 'SET HOME ADDRESS',
  `country` varchar(30) NOT NULL DEFAULT 'SET COUNTRY',
  `contactnumber` varchar(100) NOT NULL DEFAULT 'SET CONTACT NUMBER',
  `hobbies` varchar(1000) NOT NULL DEFAULT 'SET HOBBY',
  `user_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblprofile`
--

INSERT INTO `tblprofile` (`profileid`, `homeaddress`, `country`, `contactnumber`, `hobbies`, `user_id`) VALUES
(48, 'New York, USA', 'USA', '+632482348', 'inventing', 48),
(49, 'SET HOME ADDRESS', 'SET COUNTRY', 'SET CONTACT NUMBER', 'SET HOBBY', 49),
(50, 'SET HOME ADDRESS', 'SET COUNTRY', 'SET CONTACT NUMBER', 'SET HOBBY', 50),
(51, 'SET HOME ADDRESS', 'SET COUNTRY', 'SET CONTACT NUMBER', 'SET HOBBY', 51),
(52, 'SET HOME ADDRESS', 'SET COUNTRY', 'SET CONTACT NUMBER', 'SET HOBBY', 52),
(53, 'SET HOME ADDRESS', 'SET COUNTRY', 'SET CONTACT NUMBER', 'SET HOBBY', 53),
(54, 'SET HOME ADDRESS', 'SET COUNTRY', 'SET CONTACT NUMBER', 'SET HOBBY', 54),
(55, 'SET HOME ADDRESS', 'SET COUNTRY', 'SET CONTACT NUMBER', 'SET HOBBY', 55),
(56, 'SET HOME ADDRESS', 'SET COUNTRY', 'SET CONTACT NUMBER', 'SET HOBBY', 56),
(57, 'SET HOME ADDRESS', 'SET COUNTRY', 'SET CONTACT NUMBER', 'SET HOBBY', 57);

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `acctid` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `user_id_2` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`acctid`, `username`, `password`, `user_id_2`) VALUES
(48, 'Ironman', '$2y$10$bJccluCIGyie2X2..6NEAu23G8w8n1cVnA/BYpn95VTyDb.4XY3fG', 48),
(49, 'Blackwidow', '$2y$10$uEzIbSPFhHwG9/znXkTfauJifTVylKZvnOfrCr/dyggoQAJqqGe/a', 49),
(50, 'Jane123', '$2y$10$RHD2bgyF55d2PGA8m1/sFuo87gGinW2MIFsuVBHeMoLthAafYJFou', 50),
(51, 'John123', '$2y$10$75hPeWy3l6Xfa23Cnljk4.1kUpICNesc5oHnnwFZ4BWrphu8O6x4S', 51),
(52, 'DoctorStrange', '$2y$10$AkDzxWeO/iNhCyuXHL9gdO4uXBCv3J8fFM/5OOgalLL0j796hgsXi', 52),
(53, 'Charuzu123', '$2y$10$Z8iBwx1BH4BjQwFFrxvVau0LTIuY81QGHssn.gmEPVGaqK61a/mbS', 53),
(54, 'Spiderman', '$2y$10$J41xi6.MH/5V7erUEs6.OuBJrgBnm9xkUt5Z6BJduWnbbcXn.SOBy', 54),
(55, 'Morgan123', '$2y$10$sPAtQ5XVi/wnBojjva/iS..sWO1vDNnUVhCl9AgEYV9eM2.RaLD.G', 55),
(56, 'Pepper123', '$2y$10$rlOwwahxNUmKDbgV05f.4eEB0Q9A3/CsUPCgReI.iyQYWYbD5vD8C', 56),
(57, 'Ben10', '$2y$10$INtS1O6.3uG/6LUM19F4uuRrwvA6bWB2vfIyCp0.WH9TxFTREU1.q', 57);

-- --------------------------------------------------------

--
-- Table structure for table `tbluseradmin`
--

CREATE TABLE `tbluseradmin` (
  `useradminID` int(7) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluseradmin`
--

INSERT INTO `tbluseradmin` (`useradminID`, `username`, `password`) VALUES
(12, 'admin', '$2y$10$C2YmTDcOdadFtHvDR6npmu3J7SowBVlza4Ei.yq1FRtWDkUM8wmju');

-- --------------------------------------------------------

--
-- Table structure for table `tbluserprofile`
--

CREATE TABLE `tbluserprofile` (
  `userid` int(5) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `emailadd` varchar(100) NOT NULL,
  `birthdate` date NOT NULL,
  `userstatus` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluserprofile`
--

INSERT INTO `tbluserprofile` (`userid`, `firstname`, `lastname`, `gender`, `emailadd`, `birthdate`, `userstatus`, `status`) VALUES
(48, 'Tony', 'Stark', 'Male', 'iron@cit.edu', '1973-09-23', 'Married', 1),
(49, 'Natasha', 'Romanoff', 'Female', 'widow@cit.edu', '1986-12-09', 'Single', 1),
(50, 'Jane', 'Doe', 'Female', 'jane@cit.edu', '1975-01-02', 'Married', 1),
(51, 'John', 'Doe', 'Male', 'john@cit.edu', '1976-02-03', 'Married', 1),
(52, 'Stephen', 'Strange', 'Male', 'doc@cit.edu', '1985-06-12', 'Single', 1),
(53, 'Charuzu', 'Darney', 'Male', 'charuzu@cit.edu', '2003-09-12', 'Single', 1),
(54, 'Peter', 'Parker', 'Male', 'spider@cit.edu', '2005-06-12', 'Single', 1),
(55, 'Morgan', 'Stark', 'Female', 'morgan@cit.edu', '2010-03-15', 'Single', 1),
(56, 'Pepper', 'Potts', 'Female', 'pepper@cit.edu', '1978-02-03', 'Married', 1),
(57, 'Ben', 'Tenesson', 'Male', 'ben@cit.edu', '2003-10-12', 'Single', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `tblprofile`
--
ALTER TABLE `tblprofile`
  ADD PRIMARY KEY (`profileid`),
  ADD KEY `tbluserprofile_profile` (`user_id`);

--
-- Indexes for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`acctid`),
  ADD KEY `tbluseraccount_userprofile` (`user_id_2`);

--
-- Indexes for table `tbluseradmin`
--
ALTER TABLE `tbluseradmin`
  ADD PRIMARY KEY (`useradminID`);

--
-- Indexes for table `tbluserprofile`
--
ALTER TABLE `tbluserprofile`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `adminID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblprofile`
--
ALTER TABLE `tblprofile`
  MODIFY `profileid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `acctid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbluseradmin`
--
ALTER TABLE `tbluseradmin`
  MODIFY `useradminID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbluserprofile`
--
ALTER TABLE `tbluserprofile`
  MODIFY `userid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblprofile`
--
ALTER TABLE `tblprofile`
  ADD CONSTRAINT `tbluserprofile_profile` FOREIGN KEY (`user_id`) REFERENCES `tbluserprofile` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD CONSTRAINT `tbluseraccount_userprofile` FOREIGN KEY (`user_id_2`) REFERENCES `tbluserprofile` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
