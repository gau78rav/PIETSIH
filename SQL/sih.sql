-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2018 at 04:04 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sih`
--

-- --------------------------------------------------------

--
-- Table structure for table `case_file_record`
--

CREATE TABLE `case_file_record` (
  `id` int(3) NOT NULL COMMENT 'PK',
  `client_id` int(10) NOT NULL COMMENT 'FK (reg_client)',
  `advocate_id` varchar(30) NOT NULL COMMENT 'FK (judge_advocate)',
  `case_no` varchar(30) NOT NULL COMMENT 'FK (file_petition)',
  `case_status` tinyint(4) NOT NULL,
  `court_id` int(6) NOT NULL COMMENT 'FK (court_list)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `court_list`
--

CREATE TABLE `court_list` (
  `c_id` int(6) NOT NULL,
  `c_name` varchar(30) DEFAULT NULL,
  `d_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `district_list`
--

CREATE TABLE `district_list` (
  `d_id` int(4) NOT NULL,
  `d_name` varchar(30) DEFAULT NULL,
  `s_id` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district_list`
--

INSERT INTO `district_list` (`d_id`, `d_name`, `s_id`) VALUES
(1, 'Central Delhi', 10),
(2, 'East Delhi', 10),
(3, 'New Delhi', 10),
(4, 'North Delhi', 10),
(5, 'North East Delhi', 10),
(6, 'North West Delhi', 10),
(7, 'Shahdara', 10),
(8, 'South Delhi', 10),
(9, 'South East Delhi', 10),
(10, 'South West Delhi', 10),
(11, 'West Delhi', 10),
(12, 'Ajmer', 29),
(13, 'Alwar', 29),
(14, 'Banswara', 29),
(15, 'Baran', 29),
(16, 'Barmer', 29),
(17, 'Bharatpur', 29),
(18, 'Bhilwara', 29),
(19, 'Bikaner', 29),
(20, 'Bundi', 29),
(21, 'Chittorgarh', 29),
(22, 'Churu', 29),
(23, 'Dausa', 29),
(24, 'Dholpur', 29),
(25, 'Dungarpur', 29),
(26, 'Ganganagar', 29),
(27, 'Hanumangarh', 29),
(28, 'Jaipur', 29),
(29, 'Jaisalmer', 29),
(30, 'Jalore', 29),
(31, 'Jhalawar', 29),
(32, 'Jhunjhunu', 29),
(33, 'Jodhpur', 29),
(34, 'Karauli', 29),
(35, 'Kota', 29),
(36, 'Nagaur', 29),
(37, 'Pali', 29),
(38, 'Pratapgarh', 29),
(39, 'Rajsamand', 29),
(40, 'Sawai Madhopur', 29),
(41, 'Sikar', 29),
(42, 'Sirohi', 29),
(43, 'Tonk', 29),
(44, 'Udaipur', 29);

-- --------------------------------------------------------

--
-- Table structure for table `file_petition`
--

CREATE TABLE `file_petition` (
  `case_no` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL COMMENT 'Civil/Criminal/Religious',
  `case_info` varchar(1000) NOT NULL,
  `related_doc` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `remark` varchar(500) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fir_no` varchar(30) NOT NULL COMMENT 'Unique key',
  `state_id` int(3) NOT NULL COMMENT 'FK (state_list)',
  `district_id` int(6) NOT NULL COMMENT 'FK (district_list)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `judge_advocate`
--

CREATE TABLE `judge_advocate` (
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `bcn_id` varchar(30) NOT NULL COMMENT 'Judge/Advocate unique ID',
  `dob` date NOT NULL,
  `mobile` varchar(14) NOT NULL,
  `alternate_mobile` varchar(14) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `address` varchar(300) NOT NULL,
  `state_id` int(3) NOT NULL COMMENT 'FK (state_list)',
  `district_id` int(6) NOT NULL COMMENT 'FK (district_list)',
  `court_id` int(6) NOT NULL COMMENT 'FK (court_list)',
  `experience` int(5) NOT NULL,
  `specialization` varchar(40) NOT NULL,
  `type` varchar(40) NOT NULL COMMENT 'gov/non-gov',
  `image` blob,
  `user_type` varchar(10) NOT NULL COMMENT 'advocate/judge',
  `active` int(1) NOT NULL DEFAULT '0' COMMENT 'account activate or not',
  `hash` varchar(32) NOT NULL COMMENT 'account verification'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `next_date_time`
--

CREATE TABLE `next_date_time` (
  `id` int(14) NOT NULL COMMENT 'PK',
  `case_no` varchar(30) DEFAULT NULL COMMENT 'FK (case_file_record)',
  `next_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `opponent_record`
--

CREATE TABLE `opponent_record` (
  `opponent_id` int(10) NOT NULL COMMENT 'PK',
  `case_no` varchar(30) DEFAULT NULL COMMENT 'FK (file_petition)',
  `opponent_name` varchar(40) DEFAULT NULL,
  `fathers_name` varchar(40) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reg_client`
--

CREATE TABLE `reg_client` (
  `id` int(10) NOT NULL COMMENT 'PK',
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `fathername` varchar(40) NOT NULL,
  `mothername` varchar(40) NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `dob` date NOT NULL,
  `mobile` varchar(14) NOT NULL,
  `email` varchar(40) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `address` varchar(300) NOT NULL,
  `state_id` int(3) NOT NULL COMMENT 'FK (state_list)',
  `district_id` int(6) NOT NULL COMMENT 'FK (district_list)',
  `hash` varchar(32) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state_list`
--

CREATE TABLE `state_list` (
  `state_id` int(3) NOT NULL,
  `state_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state_list`
--

INSERT INTO `state_list` (`state_id`, `state_name`) VALUES
(1, 'Andaman & Nicobar Is'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh'),
(7, 'Chattisgarh'),
(8, 'Dadra & Nagar Haveli'),
(9, 'Daman & Diu'),
(10, 'Delhi'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu & Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(19, 'Lakshadweep'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Poducherry'),
(28, 'Punjab'),
(29, 'Rajasthan'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttar Pradesh'),
(35, 'Uttarakhand'),
(36, 'West Bengal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `case_file_record`
--
ALTER TABLE `case_file_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `case_no` (`case_no`),
  ADD KEY `court_id` (`court_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `advocate_id` (`advocate_id`);

--
-- Indexes for table `court_list`
--
ALTER TABLE `court_list`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `d_id` (`d_id`);

--
-- Indexes for table `district_list`
--
ALTER TABLE `district_list`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `file_petition`
--
ALTER TABLE `file_petition`
  ADD PRIMARY KEY (`case_no`),
  ADD KEY `state_id` (`state_id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `judge_advocate`
--
ALTER TABLE `judge_advocate`
  ADD PRIMARY KEY (`bcn_id`),
  ADD KEY `state_id` (`state_id`),
  ADD KEY `district_id` (`district_id`),
  ADD KEY `court_id` (`court_id`);

--
-- Indexes for table `next_date_time`
--
ALTER TABLE `next_date_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opponent_record`
--
ALTER TABLE `opponent_record`
  ADD PRIMARY KEY (`opponent_id`),
  ADD KEY `case_no` (`case_no`);

--
-- Indexes for table `reg_client`
--
ALTER TABLE `reg_client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_id` (`state_id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `state_list`
--
ALTER TABLE `state_list`
  ADD PRIMARY KEY (`state_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `next_date_time`
--
ALTER TABLE `next_date_time`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT COMMENT 'PK';
--
-- AUTO_INCREMENT for table `reg_client`
--
ALTER TABLE `reg_client`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'PK';
--
-- AUTO_INCREMENT for table `state_list`
--
ALTER TABLE `state_list`
  MODIFY `state_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `case_file_record`
--
ALTER TABLE `case_file_record`
  ADD CONSTRAINT `case_file_record_ibfk_1` FOREIGN KEY (`case_no`) REFERENCES `file_petition` (`case_no`),
  ADD CONSTRAINT `case_file_record_ibfk_2` FOREIGN KEY (`court_id`) REFERENCES `court_list` (`c_id`),
  ADD CONSTRAINT `case_file_record_ibfk_3` FOREIGN KEY (`client_id`) REFERENCES `reg_client` (`id`),
  ADD CONSTRAINT `case_file_record_ibfk_4` FOREIGN KEY (`advocate_id`) REFERENCES `judge_advocate` (`bcn_id`);

--
-- Constraints for table `court_list`
--
ALTER TABLE `court_list`
  ADD CONSTRAINT `court_list_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `district_list` (`d_id`);

--
-- Constraints for table `district_list`
--
ALTER TABLE `district_list`
  ADD CONSTRAINT `district_list_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `state_list` (`state_id`);

--
-- Constraints for table `file_petition`
--
ALTER TABLE `file_petition`
  ADD CONSTRAINT `file_petition_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `state_list` (`state_id`),
  ADD CONSTRAINT `file_petition_ibfk_2` FOREIGN KEY (`district_id`) REFERENCES `district_list` (`d_id`);

--
-- Constraints for table `judge_advocate`
--
ALTER TABLE `judge_advocate`
  ADD CONSTRAINT `judge_advocate_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `state_list` (`state_id`),
  ADD CONSTRAINT `judge_advocate_ibfk_2` FOREIGN KEY (`district_id`) REFERENCES `district_list` (`d_id`),
  ADD CONSTRAINT `judge_advocate_ibfk_3` FOREIGN KEY (`court_id`) REFERENCES `court_list` (`c_id`);

--
-- Constraints for table `opponent_record`
--
ALTER TABLE `opponent_record`
  ADD CONSTRAINT `opponent_record_ibfk_1` FOREIGN KEY (`case_no`) REFERENCES `file_petition` (`case_no`);

--
-- Constraints for table `reg_client`
--
ALTER TABLE `reg_client`
  ADD CONSTRAINT `reg_client_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `state_list` (`state_id`),
  ADD CONSTRAINT `reg_client_ibfk_2` FOREIGN KEY (`district_id`) REFERENCES `district_list` (`d_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
