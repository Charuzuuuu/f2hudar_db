-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2024 at 01:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
(42, 'SET HOME ADDRESS', 'Philippines', 'SET CONTACT NUMBER', 'SET HOBBY', 42),
(43, 'SET HOME ADDRESS', 'SET COUNTRY', 'SET CONTACT NUMBER', 'SET HOBBY', 43),
(44, 'SET HOME ADDRESS', 'SET COUNTRY', 'SET CONTACT NUMBER', 'SET HOBBY', 44),
(45, 'SET HOME ADDRESS', 'SET COUNTRY', 'SET CONTACT NUMBER', 'SET HOBBY', 45),
(46, 'Tondo, Manila', 'Philippines', '+63432123', 'gripo king', 46),
(47, 'SET HOME ADDRESS', 'SET COUNTRY', 'SET CONTACT NUMBER', 'SET HOBBY', 47);

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
(42, 'johndoe12', '$2y$10$vt0SKOTFz2xv2EevkY.Hv.XYSfCNbOKbkhNnXTqF7ZnVDGCVD79Om', 42),
(43, 'JB22', '$2y$10$iBFykiQFWZiqM8NDHcWqF.Uc687tURCWoyWyDxkYAwCIK7ClGLjK2', 43),
(44, 'johnSmith', '$2y$10$vL/UKvh7G9vQ5qLv2bg6Qu38Dr5tEp78FM2ERuWBk7lA5nNQ7hSmm', 44),
(45, 'andrei0', '$2y$10$luJq.reiIR1rGKkQXdLRC.pqby1AFEaQJ7DGKdymdbZRHxQQtStCO', 45),
(46, 'jamesdoe', '$2y$10$Ea0XbEt92pifp1EuzMPoXOwekrYDDs4MuDRCRdw/IWaXJJks6Jy02', 46),
(47, 'lanceigop', '$2y$10$oTB1EYKI3yTtLCQFtHYMqeYNo2o1A9Qh8.ppk7QqXk8p2og9xmcym', 47);

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
(42, 'John', 'Doe', 'Male', 'johndoe123@gmail.com', '2022-12-30', 'Single', 1),
(43, 'James', 'Bond', 'Male', 'jamesbond12@gmail.com', '2022-12-30', 'Single', 1),
(44, 'John', 'Smith', 'Male', 'johnsmith12@gmail.com', '2003-05-20', 'Single', 1),
(45, 'Andrei', 'Bond', 'Male', 'andrei21@gmail.com', '2003-06-20', 'Single', 1),
(46, 'James', 'Doe', 'Male', 'jamesdoe12@gmail.com', '2003-06-20', 'Married', 1),
(47, 'lance', 'gwapo', 'Male', 'lancegwapo2@gmail.com', '2003-06-20', 'Married', 1);

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
  MODIFY `profileid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `acctid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbluseradmin`
--
ALTER TABLE `tbluseradmin`
  MODIFY `useradminID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbluserprofile`
--
ALTER TABLE `tbluserprofile`
  MODIFY `userid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

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
