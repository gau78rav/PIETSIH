-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2018 at 07:55 AM
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

--
-- Dumping data for table `court_list`
--

INSERT INTO `court_list` (`c_id`, `c_name`, `d_id`) VALUES
(1, 'Civil Court', 12),
(2, 'Sessions Court', 12),
(3, 'District And Sessions Court', 12),
(4, 'ACD Court', 12),
(5, 'District court', 28),
(6, 'Consumer Court', 28),
(7, 'Labor Court', 28);

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
(0, 'Betul', 20),
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
(44, 'Udaipur', 29),
(45, 'Shivpuri', 20),
(46, 'Sidhi', 20),
(47, 'Singrauli', 20),
(48, 'Tikamgarh', 20),
(49, 'Ujjain', 20),
(50, 'Umaria', 20),
(51, 'Vidisha', 20),
(52, 'Agar Malwa', 20),
(53, 'Alirajpur', 20),
(54, 'Anuppur', 20),
(55, 'Ashoknagar', 20),
(56, 'Balaghat', 20),
(57, 'Barwani', 20),
(58, 'Betul', 20),
(59, 'Bhind', 20),
(60, 'Bhopal', 20),
(61, 'Burhanpur', 20),
(62, 'Chhatarpur', 20),
(63, 'Chhindwara', 20),
(64, 'Damoh', 20),
(65, 'Datia', 20),
(66, 'Dewas', 20),
(67, 'Dhar', 20),
(68, 'Dindori', 20),
(69, 'Guna', 20),
(70, 'Gwalior', 20),
(71, 'Harda', 20),
(72, 'Hoshangabad', 20),
(73, 'Indore', 20),
(74, 'Jabalpur', 20),
(75, 'Jhabua', 20),
(76, 'Katni', 20),
(77, 'Khandwa', 20),
(78, 'Khargone', 20),
(79, 'Mandla', 20),
(80, 'Mandsaur', 20),
(81, 'Morena', 20),
(82, 'Narsinghpur', 20),
(83, 'Neemuch', 20),
(84, 'Panna', 20),
(85, 'Raisen', 20),
(86, 'Rajgarh', 20),
(87, 'Ratlam', 20),
(88, 'Rewa', 20),
(89, 'Sagar', 20),
(90, 'Satna', 20),
(91, 'Sehore', 20),
(92, 'Seoni', 20),
(93, 'Shahdol', 20),
(94, 'Shajapur', 20),
(95, 'Sheopur', 20),
(96, 'Shivpuri', 20),
(97, 'Sidhi', 20),
(98, 'Singrauli', 20),
(99, 'Tikamgarh', 20),
(100, 'Ujjain', 20),
(101, 'Umaria', 20),
(102, 'Vidisha', 20);

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
  `district_id` int(6) NOT NULL COMMENT 'FK (district_list)',
  `Place_of_matter` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `judge_advocate`
--

CREATE TABLE `judge_advocate` (
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bcn_id` varchar(30) NOT NULL COMMENT 'Judge/Advocate unique ID',
  `dob` date DEFAULT NULL,
  `mobile` varchar(14) NOT NULL,
  `alternate_mobile` varchar(14) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `address` varchar(300) NOT NULL,
  `state_id` int(3) NOT NULL COMMENT 'FK (state_list)',
  `district_id` int(6) NOT NULL COMMENT 'FK (district_list)',
  `court_id` int(6) DEFAULT NULL COMMENT 'FK (court_list)',
  `experience` int(5) NOT NULL,
  `specialization` varchar(40) NOT NULL,
  `type` varchar(40) NOT NULL COMMENT 'gov/non-gov',
  `image` blob,
  `user_type` varchar(10) NOT NULL COMMENT 'advocate/judge',
  `active` int(1) NOT NULL DEFAULT '0' COMMENT 'account activate or not',
  `hash` varchar(32) NOT NULL COMMENT 'account verification',
  `education` varchar(12) NOT NULL,
  `greading` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `judge_advocate`
--

INSERT INTO `judge_advocate` (`fname`, `lname`, `gender`, `bcn_id`, `dob`, `mobile`, `alternate_mobile`, `email`, `passwd`, `address`, `state_id`, `district_id`, `court_id`, `experience`, `specialization`, `type`, `image`, `user_type`, `active`, `hash`, `education`, `greading`) VALUES
('Tiger Prabhakhar', 'ji', 'm', 'M21025', '0000-00-00', '9876543234', '', 'prabhakhar@gmail.com', '12345', 'abc', 20, 60, 1, 5, 'Landlord&Tenant issue', 'govt', '', 'judge', 1, 'sih', 'LLB', 0),
('Mahesh Bhupati', 'ji', 'm', 'M21026', '0000-00-00', '9876543235', '', 'mahesh.bhupati@gmail.com', '12345', 'abc', 20, 60, 1, 4, 'Divorce&Family claims', 'non-govt', '', 'judge', 1, 'sih', 'LLB', 0),
('Mubarak Begum', 'ji', 'f', 'M21030', '0000-00-00', '9876543239', '', 'mubarak.begum@gmail.com', '12345', 'abc', 20, 85, 1, 9, 'Divorce&Family claims', 'non-govt', '', 'judge', 1, 'sih', 'LLM', 0),
('Sidduique Alam', 'ji', 'f', 'M21031', '0000-00-00', '9876543240', '', 'sidduique.alam@gmail.com', '12345', 'abc', 20, 85, 1, 11, 'Landlord&Tenant issue', 'non-govt', '', 'judge', 1, 'sih', 'LLM', 0),
('M S Hussain', 'ji', 'm', 'M21035', '0000-00-00', '9876543244', '', 'mshussain@gmail.com', '12345', 'abc', 20, 85, 1, 13, 'Equitable claims', 'govt', '', 'judge', 1, 'sih', 'LLB', 0),
('Sameer Hussain', 'ji', 'm', 'M21037', '0000-00-00', '9876543246', '', 'sameer.hussain@gmail.com', '12345', 'abc', 20, 91, 1, 2, 'Divorce&Family claims', 'govt', '', 'judge', 1, 'sih', 'LLB', 0),
('Navikiran Singh', 'ji', 'm', 'M21038', '0000-00-00', '9876543247', '', 'navikiran.singh@gmail.com', '12345', 'abc', 20, 91, 1, 7, 'Tort claims', 'govt', '', 'judge', 1, 'sih', 'LLB', 0),
('K.T.S Tulsi', 'ji', 'm', 'M21042', '0000-00-00', '9876543251', '', 'ktusli@gmail.com', '12345', 'abc', 20, 91, 1, 15, 'Divorce&Family claims', 'govt', '', 'judge', 1, 'sih', 'LLM', 0),
('Sikha Khan', 'ji', 'f', 'M21044', '0000-00-00', '9876543253', '', 'sikha.khan@gmail.com', '12345', 'abc', 20, 70, 1, 4, 'Tort claims', 'govt', '', 'judge', 1, 'sih', 'LLB', 0),
('Sana Quhershi', 'ji', 'f', 'M21045', '0000-00-00', '9876543254', '', 'sana.quhershi@gmail.com', '12345', 'abc', 20, 70, 1, 15, 'Contract claims', 'non-govt', '', 'judge', 1, 'sih', 'LLM', 0),
('Sushil Kumar', 'ji', 'm', 'M21049', '0000-00-00', '9876543258', '', 'sushil.kumar@gmail.com', '12345', 'abc', 20, 55, 1, 3, 'Equitable claims', 'govt', '', 'judge', 1, 'sih', 'LLB', 0),
('L. Nageshwara Rao', 'ji', 'm', 'M21052', '0000-00-00', '9876543261', '', 'nageshwara.rao@gmail.com', '12345', 'abc', 20, 96, 1, 1, 'Divorce&Family claims', 'govt', '', 'judge', 1, 'sih', 'LLB', 0),
('Shrikant Shivade', 'ji', 'm', 'M21054', '0000-00-00', '9876543263', '', 'shrikant.shivade@gmail.com', '12345', 'abc', 20, 65, 1, 7, 'Divorce&Family claims', 'govt', '', 'judge', 1, 'sih', 'LLB', 0),
('Rubi Singh Ahuja', 'ji', 'f', 'M21057', '0000-00-00', '9876543266', '', 'rubi.ahuja@gmail.com', '12345', 'abc', 20, 69, 1, 14, 'Landlord&Tenant issue', 'govt', '', 'judge', 1, 'sih', 'LLM', 0),
('Indira Arora', 'ji', 'f', 'M21062', '0000-00-00', '9876543271', '', 'indira.arora@gmail.com', '12345', 'abc', 20, 63, 1, 3, 'Divorce&Family claims', 'non-govt', '', 'judge', 1, 'sih', 'LLB', 0),
('Vrinda Grover', 'ji', 'f', 'M21065', '0000-00-00', '9876543274', '', 'vrinda.grover@gmail.com', '12345', 'abc', 20, 74, 1, 12, 'Landlord&Tenant issue', 'non-govt', '', 'judge', 1, 'sih', 'LLM', 0),
('Gaurav Patel', 'ji', 'm', 'M21070', '0000-00-00', '9876543279', '', 'gaurav.patel@gmail.com', '12345', 'abc', 20, 76, 1, 9, 'Contract claims', 'govt', '', 'judge', 1, 'sih', 'LLB', 0),
('Rakesh Kumar', 'ji', 'm', 'R21001', '0000-00-00', '9876543210', '', 'rakesh.kumar@gmail.com', '12345', 'abc', 29, 12, 1, 4, 'Tort claims', 'govt', '', 'judge', 1, 'sih', 'LLB', 0),
('Mukesh Sharma', 'ji', 'm', 'R21002', '0000-00-00', '9876543211', '', 'mukesh@gmail.com', '12345', 'abc', 29, 12, 1, 7, 'Contract claims', 'non-govt', '', 'judge', 1, 'sih', 'LLM', 0),
('Shruti ', 'ji', 'f', 'R21007', '0000-00-00', '9876543216', '', 'shruti@gmail.com', '12345', 'abc', 29, 28, 2, 4, 'Equitable claims', 'non-govt', '', 'judge', 1, 'sih', 'LLB', 0),
('Manoj Kumar', 'ji', 'm', 'R21008', '0000-00-00', '9876543217', '', 'manoj.shrama@gmail.com', '12345', 'abc', 29, 28, 3, 8, 'Tort claims', 'govt', '', 'judge', 1, 'sih', 'LLB', 0),
('Saurabh Sain', 'ji', 'm', 'R21009', '0000-00-00', '9876543218', '', 'saurabh.sain@gmail.com', '12345', 'abc', 29, 28, 3, 12, 'Contract claims', 'govt', '', 'judge', 1, 'sih', 'LLM', 0),
('Tanmay Mehra', 'ji', 'f', 'R21014', '0000-00-00', '9876543223', '', 'tanmay.mehra@gmail.com', '12345', 'abc', 29, 23, 1, 6, 'Contract claims', 'non-govt', '', 'judge', 1, 'sih', 'LLB', 0),
('Fatima Khan', 'ji', 'f', 'R21015', '0000-00-00', '9876543224', '', 'fatima.khan@gmail.com', '12345', 'abc', 29, 23, 1, 4, 'Landlord&Tenant issue', 'govt', '', 'judge', 1, 'sih', 'LLB', 0),
('Shalima Qhureshi', 'ji', 'f', 'R21020', '0000-00-00', '9876543229', '', 'shalima@gmail.com', '12345', 'abc', 29, 26, 1, 14, 'Equitable claims', 'govt', '', 'judge', 1, 'sih', 'LLM', 0),
('Rohit Datt', 'ji', 'm', 'R21021', '0000-00-00', '9876543230', '', 'rohit.datt@gmail.com', '12345', 'abc', 29, 26, 1, 11, 'Landlord&Tenant issue', 'govt', '', 'judge', 1, 'sih', 'LLM', 0);

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
  `caste` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL COMMENT 'FK (state_list)',
  `district` varchar(20) NOT NULL COMMENT 'FK (district_list)',
  `hash` varchar(32) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_client`
--

INSERT INTO `reg_client` (`id`, `fname`, `lname`, `fathername`, `mothername`, `gender`, `dob`, `mobile`, `email`, `passwd`, `address`, `caste`, `state`, `district`, `hash`, `active`) VALUES
(6, 'aa', 'aa', 'aa', 'aa', 0, '0222-02-02', '222222', 'aaa@gmail.com', '1de84af5a569cdab9e1a3603a224ec9c', '2222', '', 'Madhya Pradesh', 'Betul', 'a49e9411d64ff53eccfdd09ad10a15b3', 0),
(7, 'gaurav', 'goyal', 'ramkumar goyal', 'manju goyal', 0, '2018-10-31', '7611858675', 'gaurav1997dlp@gmail.com', '857f12c7851f6931f1c1ea871cce12e2', 'jaipur', '', 'Rajasthan', 'Dholpur', '9be40cee5b0eee1462c82c6964087ff9', 0),
(8, 'Rajat', 'Bhardwaj', 'OP Sharma', 'Mamta Sharma', 0, '1998-09-23', '99999999', 'brajat9090@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'Mansarovar, Jaipur', '', 'Rajasthan', 'Jaipur', '6c4b761a28b734fe93831e3fb400ce87', 0);

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
  ADD KEY `state_id` (`state`),
  ADD KEY `district_id` (`district`);

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'PK', AUTO_INCREMENT=9;
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
  ADD CONSTRAINT `court_list_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `district_list` (`d_id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `judge_advocate_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `state_list` (`state_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `judge_advocate_ibfk_2` FOREIGN KEY (`district_id`) REFERENCES `district_list` (`d_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `judge_advocate_ibfk_3` FOREIGN KEY (`court_id`) REFERENCES `court_list` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `opponent_record`
--
ALTER TABLE `opponent_record`
  ADD CONSTRAINT `opponent_record_ibfk_1` FOREIGN KEY (`case_no`) REFERENCES `file_petition` (`case_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
