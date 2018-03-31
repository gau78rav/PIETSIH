-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2018 at 07:49 AM
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
  `client_email` varchar(40) NOT NULL,
  `case_no` varchar(15) NOT NULL,
  `Place_of_matter` text NOT NULL,
  `state_id` varchar(20) NOT NULL COMMENT 'FK (state_list)',
  `district_id` varchar(20) NOT NULL COMMENT 'FK (district_list)',
  `option_self_other` varchar(20) NOT NULL,
  `subject` varchar(30) DEFAULT NULL,
  `description` varchar(1000) NOT NULL,
  `advocate_name` varchar(30) DEFAULT NULL,
  `affidavite` blob,
  `license_no` varchar(30) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `date_time` date NOT NULL,
  `document` blob,
  `status` tinyint(1) NOT NULL,
  `advocate_approval` tinyint(4) NOT NULL DEFAULT '0',
  `advocate_reject` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file_petition`
--

INSERT INTO `file_petition` (`client_email`, `case_no`, `Place_of_matter`, `state_id`, `district_id`, `option_self_other`, `subject`, `description`, `advocate_name`, `affidavite`, `license_no`, `type`, `date_time`, `document`, `status`, `advocate_approval`, `advocate_reject`) VALUES
('brajat9090@gmail.com', 'delsha30032018', 'Mansarovar', 'Delhi', 'Shahdara', 'other', 'Landlord&Tenant issue', 'This is trial 2', 'M21026', NULL, '222', 'civil', '1990-09-23', NULL, 1, 1, 0),
('brajat9090@gmail.com', 'rajjai30032018', 'Mansarovar', 'Rajasthan', 'Jaipur', 'other', 'Landlord&Tenant issue', 'This is trial', 'M21026', '', '111', 'civil', '1998-09-23', 0x417263686976652e7a6970, 0, 0, 0),
('', 'rajjai31032018', 'Jaipur', 'Rajasthan', 'Jaipur', 'other', 'Contract claims', 'TEst', '', '', '12345678', 'civil', '2018-03-30', 0x392d312e7a6970, 0, 0, 0);

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
  `grading` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `judge_advocate`
--

INSERT INTO `judge_advocate` (`fname`, `lname`, `gender`, `bcn_id`, `dob`, `mobile`, `alternate_mobile`, `email`, `passwd`, `address`, `state_id`, `district_id`, `court_id`, `experience`, `specialization`, `type`, `image`, `user_type`, `active`, `hash`, `education`, `grading`) VALUES
('Tiger Prabhakhar', 'ji', 'male', 'M21025', '0000-00-00', '9876543275', '', 'prabhakhar@gmail.com', '29be54a52396750258d886abc5417fda', 'abc', 20, 60, 1, 3, 'Landlord&Tenant issue', 'govt', '', 'judge', 0, 'sih', 'LLB', 2.5),
('Mahesh Bhupati', 'ji', 'male', 'M21026', '0000-00-00', '9876543235', '', 'mahesh.bhupati@gmail.com', '12345', 'abc', 20, 60, 1, 4, 'Divorce&Family claims', 'non-govt', '', 'judge', 0, 'sih', 'LLB', 0),
('Lal Behari Reddy', 'ji', 'male', 'M21027', '0000-00-00', '9876543236', '', 'behari.reddy@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'jaipur', 20, 60, 2, 5, 'Tort claims', 'govt', '', 'advocate', 0, 'sih', 'LLB', 4),
('Nirmal Joshi', 'ji', 'Female', 'M21028', '0000-00-00', '9876543237', '', 'nirmal.joshi@gmail.com', '12345', 'abc', 20, 60, 2, 9, 'Landlord&Tenant issue', 'govt', '', 'advocate', 0, 'sih', 'LLM', 4),
('Pravez Ahmad', 'ji', 'male', 'M21029', '0000-00-00', '9876543238', '', 'pravez.ahmad@gmail.com', '12345', 'abc', 20, 60, 2, 8, 'Tort claims', 'non-govt', '', 'advocate', 0, 'sih', 'LLB', 4),
('Mubarak Begum', 'ji', 'Female', 'M21030', '0000-00-00', '9876543239', '', 'mubarak.begum@gmail.com', '12345', 'abc', 20, 85, 1, 9, 'Divorce&Family claims', 'non-govt', '', 'judge', 0, 'sih', 'LLM', 0),
('Sidduique Alam', 'ji', 'female', 'M21031', '0000-00-00', '9876543240', '', 'sidduique.alam@gmail.com', '12345', 'abc', 20, 85, 1, 11, 'Landlord&Tenant issue', 'non-govt', '', 'judge', 0, 'sih', 'LLM', 0),
('Samina Mirza', 'ji', 'female', 'M21032', '0000-00-00', '9876543241', '', 'samina.mirza@gmail.com', '12345', 'abc', 20, 85, 1, 14, 'Contract claims', 'govt', '', 'advocate', 0, 'sih', 'LLM', 4.5),
('Sania Khan', 'ji', 'female', 'M21033', '0000-00-00', '9876543242', '', 'sania.khan@gmail.com', '12345', 'abc', 20, 85, 1, 11, 'Landlord&Tenant issue', 'govt', '', 'advocate', 0, 'sih', 'LLM', 4),
('Sahil Pravez', 'ji', 'male', 'M21034', '0000-00-00', '9876543243', '', 'sahil.praveez@gmail.com', '12345', 'abc', 20, 86, 1, 16, 'Divorce&Family claims', 'non-govt', '', 'advocate', 0, 'sih', 'LLM', 4),
('M S Hussain', 'ji', 'male', 'M21035', '0000-00-00', '9876543244', '', 'mshussain@gmail.com', '12345', 'abc', 20, 85, 1, 13, 'Equitable claims', 'govt', '', 'judge', 0, 'sih', 'LLB', 0),
('Kiran Singh', 'ji', 'female', 'M21036', '0000-00-00', '9876543245', '', 'kiran.singh@gmail.com', '12345', 'abc', 20, 86, 1, 6, 'Contract claims', 'govt', '', 'advocate', 0, 'sih', 'LLB', 5),
('Sameer Hussain', 'ji', 'male', 'M21037', '0000-00-00', '9876543246', '', 'sameer.hussain@gmail.com', '12345', 'abc', 20, 91, 1, 2, 'Divorce&Family claims', 'govt', '', 'judge', 0, 'sih', 'LLB', 0),
('Navikiran Singh', 'ji', 'male', 'M21038', '0000-00-00', '9876543247', '', 'navikiran.singh@gmail.com', '12345', 'abc', 20, 91, 1, 7, 'Tort claims', 'govt', '', 'judge', 0, 'sih', 'LLB', 0),
('Jaskirit Singh', 'ji', 'male', 'M21039', '0000-00-00', '9876543248', '', 'jaskirit.singh@gmail.com', '12345', 'abc', 20, 91, 1, 5, 'Landlord&Tenant issue', 'non-govt', '', 'advocate', 0, 'sih', 'LLB', 4),
('Ram Jethalmini', 'ji', 'male', 'M21040', '0000-00-00', '9876543249', '', 'ram.jethalmini@gmail.com', '12345', 'abc', 20, 91, 2, 3, 'Contract claims', 'non-govt', '', 'advocate', 0, 'sih', 'LLB', 5),
('Priyanka Singh', 'ji', 'female', 'M21041', '0000-00-00', '9876543250', '', 'priyanka.singh@gmail.com', '12345', 'abc', 20, 102, 2, 11, 'Tort claims', 'non-govt', '', 'advocate', 0, 'sih', 'LLM', 3),
('K.T.S Tulsi', 'ji', 'male', 'M21042', '0000-00-00', '9876543251', '', 'ktusli@gmail.com', '12345', 'abc', 20, 91, 1, 15, 'Divorce&Family claims', 'govt', '', 'judge', 0, 'sih', 'LLM', 0),
('Kiran Gaur', 'ji', 'female', 'M21043', '0000-00-00', '9876543252', '', 'kiran.gaur@gmail.com', '12345', 'abc', 20, 102, 2, 12, 'Equitable claims', 'non-govt', '', 'advocate', 0, 'sih', 'LLM', 5),
('Sikha Khan', 'ji', 'female', 'M21044', '0000-00-00', '9876543253', '', 'sikha.khan@gmail.com', '12345', 'abc', 20, 70, 1, 4, 'Tort claims', 'govt', '', 'judge', 0, 'sih', 'LLB', 0),
('Sana Quhershi', 'ji', 'female', 'M21045', '0000-00-00', '9876543254', '', 'sana.quhershi@gmail.com', '12345', 'abc', 20, 70, 1, 15, 'Contract claims', 'non-govt', '', 'judge', 0, 'sih', 'LLM', 4.9),
('Indira Jaising', 'ji', 'female', 'M21046', '0000-00-00', '9876543255', '', 'indira.jaising@gmail.com', '12345', 'abc', 20, 70, 2, 13, 'Landlord&Tenant issue', 'govt', '', 'advocate', 0, 'sih', 'LLM', 5),
('Shanti Bhushan', 'ji', 'female', 'M21047', '0000-00-00', '9876543256', '', 'shanti.bhushan@gmail.com', '12345', 'abc', 20, 70, 3, 11, 'Equitable claims', 'non-govt', '', 'advocate', 0, 'sih', 'LLM', 4),
('Gopal Subramanium', 'ji', 'male', 'M21048', '0000-00-00', '9876543257', '', 'gopal.subramanium@gmail.com', '12345', 'abc', 20, 70, 3, 13, 'Contract claims', 'govt', '', 'advocate', 0, 'sih', 'LLM', 4.1),
('Sushil Kumar', 'ji', 'male', 'M21049', '0000-00-00', '9876543258', '', 'sushil.kumar@gmail.com', '12345', 'abc', 20, 55, 1, 3, 'Equitable claims', 'govt', '', 'judge', 0, 'sih', 'LLB', 0),
('Majeed Memon', 'ji', 'male', 'M21050', '0000-00-00', '9876543259', '', 'majeed.memon@gmail.com', '12345', 'abc', 20, 70, 3, 5, 'Landlord&Tenant issue', 'govt', '', 'advocate', 0, 'sih', 'LLB', 4),
('Ujwal Nikam', 'ji', 'male', 'M21051', '0000-00-00', '9876543260', '', 'ujwal.nikam@gmail.com', '12345', 'abc', 20, 70, 3, 2, 'Tort claims', 'non-govt', '', 'advocate', 0, 'sih', 'LLB', 4),
('L. Nageshwara Rao', 'ji', 'male', 'M21052', '0000-00-00', '9876543261', '', 'nageshwara.rao@gmail.com', '12345', 'abc', 20, 96, 1, 1, 'Divorce&Family claims', 'govt', '', 'judge', 0, 'sih', 'LLB', 0),
('Satish Manishinde', 'ji', 'male', 'M21053', '0000-00-00', '9876543262', '', 'satish.manishinde@gmail.com', '12345', 'abc', 20, 70, 3, 6, 'Landlord&Tenant issue', 'non-govt', '', 'advocate', 0, 'sih', 'LLB', 5),
('Shrikant Shivade', 'ji', 'male', 'M21054', '0000-00-00', '9876543263', '', 'shrikant.shivade@gmail.com', '12345', 'abc', 20, 65, 1, 7, 'Divorce&Family claims', 'govt', '', 'judge', 0, 'sih', 'LLB', 0),
('Avirub Nag', 'ji', 'male', 'M21055', '0000-00-00', '9876543264', '', 'avirub.nag@gmail.com', '12345', 'abc', 20, 70, 3, 7, 'Contract claims', 'govt', '', 'advocate', 0, 'sih', 'LLB', 3.5),
('Mishi Choudhary', 'ji', 'female', 'M21056', '0000-00-00', '9876543265', '', 'mishi.choudhary@gmail.com', '12345', 'abc', 20, 70, 3, 11, 'Tort claims', 'govt', '', 'advocate', 0, 'sih', 'LLM', 5),
('Rubi Singh Ahuja', 'ji', 'female', 'M21057', '0000-00-00', '9876543266', '', 'rubi.ahuja@gmail.com', '12345', 'abc', 20, 69, 1, 14, 'Landlord&Tenant issue', 'govt', '', 'judge', 0, 'sih', 'LLM', 0),
('Bhumesh Verma', 'ji', 'male', 'M21058', '0000-00-00', '9876543267', '', 'bhumesh.verma@gmail.com', '12345', 'abc', 20, 70, 3, 12, 'Equitable claims', 'govt', '', 'advocate', 0, 'sih', 'LLM', 5),
('Rohit Kochhar', 'ji', 'male', 'M21059', '0000-00-00', '9876543268', '', 'rohit.kochhar@gmail.com', '12345', 'abc', 20, 70, 3, 12, 'Landlord&Tenant issue', 'non-govt', '', 'advocate', 0, 'sih', 'LLM', 5),
('Karuna Neddy', 'ji', 'female', 'M21060', '0000-00-00', '9876543269', '', 'karuna.neddy@gmail.com', '12345', 'abc', 20, 70, 3, 4, 'Tort claims', 'non-govt', '', 'advocate', 0, 'sih', 'LLB', 4),
('Sudha Bhardwaj', 'ji', 'female', 'M21061', '0000-00-00', '9876543270', '', 'sudha.bhardwaj@gmail.com', '12345', 'abc', 20, 70, 1, 4, 'Divorce&Family claims', 'non-govt', '', 'advocate', 0, 'sih', 'LLB', 4),
('Indira Arora', 'ji', 'female', 'M21062', '0000-00-00', '9876543271', '', 'indira.arora@gmail.com', '12345', 'abc', 20, 63, 1, 3, 'Divorce&Family claims', 'non-govt', '', 'judge', 0, 'sih', 'LLB', 0),
('Meneka Gurushawmi', 'ji', 'female', 'M21063', '0000-00-00', '9876543272', '', 'meneka.gurushawmi@gmail.com', '12345', 'abc', 20, 70, 1, 6, 'Landlord&Tenant issue', 'govt', '', 'advocate', 0, 'sih', 'LLB', 4),
('Meenakshi', 'ji', 'female', 'M21064', '0000-00-00', '9876543273', '', 'meenakshi@gmail.com', '12345', 'abc', 20, 70, 1, 14, 'Contract claims', 'govt', '', 'advocate', 0, 'sih', 'LLM', 3.1),
('Vrinda Grover', 'ji', 'female', 'M21065', '0000-00-00', '9876543274', '', 'vrinda.grover@gmail.com', '12345', 'abc', 20, 74, 1, 12, 'Landlord&Tenant issue', 'non-govt', '', 'judge', 0, 'sih', 'LLM', 0),
('Suhail Nathani', 'ji', 'male', 'M21066', '0000-00-00', '9876543275', '', 'suhail.nathani@gmail.com', '12345', 'abc', 20, 70, 1, 3, 'Equitable claims', 'non-govt', '', 'advocate', 0, 'sih', 'LLB', 4),
('Mohit Saraf', 'ji', 'male', 'M21067', '0000-00-00', '9876543276', '', 'mohit.saraf@gmail.com', '12345', 'abc', 20, 70, 1, 12, 'Divorce&Family claims', 'govt', '', 'advocate', 0, 'sih', 'LLM', 4),
('Akil Hirani', 'ji', 'male', 'M21068', '0000-00-00', '9876543277', '', 'akil.kirani@gmail.com', '12345', 'abc', 20, 70, 1, 12, 'Tort claims', 'govt', '', 'advocate', 0, 'sih', 'LLM', 4),
('Gopika Pant', 'ji', 'female', 'M21069', '0000-00-00', '9876543278', '', 'gopika.pant@gmail.com', '12345', 'abc', 20, 70, 1, 3, 'Divorce&Family claims', 'govt', '', 'advocate', 0, 'sih', 'LLB', 4),
('Gaurav Patel', 'ji', 'male', 'M21070', '0000-00-00', '9876543279', '', 'gaurav.patel@gmail.com', '12345', 'abc', 20, 76, 1, 9, 'Contract claims', 'govt', '', 'judge', 0, 'sih', 'LLB', 3.4),
('Rakesh Kumar', 'ji', 'male', 'R21001', '0000-00-00', '9876543210', '', 'rakesh.kumar@gmail.com', '12345', 'abc', 29, 12, 1, 4, 'Tort claims', 'govt', '', 'judge', 0, 'sih', 'LLB', 0),
('Mukesh Sharma', 'ji', 'male', 'R21002', '0000-00-00', '9876543211', '', 'mukesh@gmail.com', '12345', 'abc', 29, 12, 1, 7, 'Contract claims', 'non-govt', '', 'judge', 0, 'sih', 'LLM', 3.7),
('Sunil Sinha', 'ji', 'male', 'R21003', '0000-00-00', '9876543212', '', 'sunil@gmail.com', '12345', 'abc', 29, 12, 1, 5, 'Landlord&Tenant issue', 'govt', '', 'advocate', 0, 'sih', 'LLB', 4),
('Shalini Singh', 'ji', 'female', 'R21004', '0000-00-00', '9876543213', '', 'shalini@gmail.com', '12345', 'abc', 29, 12, 1, 6, 'Equitable claims', 'govt', '', 'advocate', 0, 'sih', 'LLB', 4),
('Priyanka Sharma', 'ji', 'female', 'R21005', '0000-00-00', '9876543214', '', 'priyanka.sharma@gmail.com', '12345', 'abc', 29, 12, 1, 11, 'Tort claims', 'non-govt', '', 'advocate', 0, 'sih', 'LLM', 3),
('Akshay Sain', 'ji', 'male', 'R21006', '0000-00-00', '9876543215', '', 'akshay.sain@gmail.com', '12345', 'abc', 29, 28, 1, 2, 'Divorce&Family claims', 'non-govt', '', 'advocate', 0, 'sih', 'LLB', 4),
('Shruti ', 'ji', 'female', 'R21007', '0000-00-00', '9876543216', '', 'shruti@gmail.com', '12345', 'abc', 29, 28, 2, 4, 'Equitable claims', 'non-govt', '', 'judge', 0, 'sih', 'LLB', 0),
('Manoj Kumar', 'ji', 'male', 'R21008', '0000-00-00', '9876543217', '', 'manoj.shrama@gmail.com', '12345', 'abc', 29, 28, 3, 8, 'Tort claims', 'govt', '', 'judge', 0, 'sih', 'LLB', 0),
('Saurabh Sain', 'ji', 'male', 'R21009', '0000-00-00', '9876543218', '', 'saurabh.sain@gmail.com', '12345', 'abc', 29, 28, 3, 12, 'Contract claims', 'govt', '', 'judge', 0, 'sih', 'LLM', 0),
('Akshay Singh', 'ji', 'male', 'R21010', '0000-00-00', '9876543219', '', 'akshay.singh@gmail.com', '12345', 'abc', 29, 28, 1, 4, 'Divorce&Family claims', 'govt', '', 'advocate', 0, 'sih', 'LLB', 5),
('Piyush Kumawat', 'ji', 'male', 'R21011', '0000-00-00', '9876543220', '', 'piyush.k@gmail.com', '12345', 'abc', 29, 28, 1, 5, 'Landlord&Tenant issue', 'govt', '', 'advocate', 0, 'sih', 'LLB', 5),
('Rajesh ', 'ji', 'male', 'R21012', '0000-00-00', '9876543221', '', 'rajesh@gmail.com', '12345', 'abc', 29, 28, 1, 11, 'Equitable claims', 'govt', '', 'advocate', 0, 'sih', 'LLM', 3),
('Saroj Meera', 'ji', 'female', 'R21013', '0000-00-00', '9876543222', '', 'saroj.meera@gmail.com', '12345', 'abc', 29, 28, 1, 12, 'Tort claims', 'non-govt', '', 'advocate', 0, 'sih', 'LLM', 3),
('Tanmay Mehra', 'ji', 'female', 'R21014', '0000-00-00', '9876543223', '', 'tanmay.mehra@gmail.com', '12345', 'abc', 29, 23, 1, 6, 'Contract claims', 'non-govt', '', 'judge', 0, 'sih', 'LLB', 0),
('Fatima Khan', 'ji', 'female', 'R21015', '0000-00-00', '9876543224', '', 'fatima.khan@gmail.com', '12345', 'abc', 29, 23, 1, 4, 'Landlord&Tenant issue', 'govt', '', 'judge', 0, 'sih', 'LLB', 0),
('Y.S Reddy', 'ji', 'female', 'R21016', '0000-00-00', '9876543225', '', 'reddy@gmail.com', '12345', 'abc', 29, 23, 2, 2, 'Equitable claims', 'non-govt', '', 'advocate', 0, 'sih', 'LLB', 4),
('Dinesh Moera', 'ji', 'female', 'R21017', '0000-00-00', '9876543226', '', 'dinesh.mehra@gmail.com', '12345', 'abc', 29, 23, 2, 4, 'Contract claims', 'govt', '', 'advocate', 0, 'sih', 'LLB', 4),
('Md. Rafeek', 'ji', 'male', 'R21018', '0000-00-00', '9876543227', '', 'rafeek@gmail.com', '12345', 'abc', 29, 23, 2, 7, 'Tort claims', 'non-govt', '', 'advocate', 0, 'sih', 'LLM', 5),
('Sana Khan', 'ji', 'female', 'R21019', '0000-00-00', '9876543228', '', 'sana.khan@gmail.com', '12345', 'abc', 29, 23, 2, 13, 'Divorce&Family claims', 'govt', '', 'advocate', 0, 'sih', 'LLM', 4),
('Shalima Qhureshi', 'ji', 'female', 'R21020', '0000-00-00', '9876543229', '', 'shalima@gmail.com', '12345', 'abc', 29, 26, 1, 14, 'Equitable claims', 'govt', '', 'judge', 0, 'sih', 'LLM', 0),
('Rohit Datt', 'ji', 'male', 'R21021', '0000-00-00', '9876543230', '', 'rohit.datt@gmail.com', '12345', 'abc', 29, 26, 1, 11, 'Landlord&Tenant issue', 'govt', '', 'judge', 0, 'sih', 'LLM', 0),
('Baghirath Sharma', 'ji', 'male', 'R21022', '0000-00-00', '9876543231', '', 'baghirath@gmail.com', '12345', 'abc', 29, 26, 2, 10, 'Tort claims', 'non-govt', '', 'advocate', 0, 'sih', 'LLM', 4),
('Rishabh Awasthi', 'ji', 'male', 'R21023', '0000-00-00', '9876543232', '', 'rishabh.awasthi@gmail.com', '12345', 'abc', 29, 26, 2, 3, 'Landlord&Tenant issue', 'non-govt', '', 'advocate', 0, 'sih', 'LLB', 4),
('Josheph Vijay', 'ji', 'male', 'R21024', '0000-00-00', '9876543233', '', 'josheph.vijay@gmail.com', '12345', 'abc', 29, 26, 2, 6, 'Contract claims', 'non-govt', '', 'advocate', 0, 'sih', 'LLB', 4);

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

--
-- Dumping data for table `opponent_record`
--

INSERT INTO `opponent_record` (`opponent_id`, `case_no`, `opponent_name`, `fathers_name`, `address`) VALUES
(6, 'rajjai30032018', 'Loki', 'TRY', 'Jaipur'),
(7, 'rajjai30032018', 'Harshit', 'TRy2', 'Dholpur'),
(8, 'rajjai31032018', 'Rsjst', 'Rajat', '12345');

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
  `gender` varchar(7) NOT NULL,
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
(1, 'Rajat', 'Bhardwaj', 'OP Sharma', 'Mamta Sharma', 'Male', '1998-09-23', '9999999999', 'brajat9090@gmail.com', '698d51a19d8a121ce581499d7b701668', '123', 'General', 'Rajasthan', 'Jaipur', '698d51a19d8a121ce581499d7b701668', 0),
(11, 'Prateek', 'Jaim', 'Jain', 'Jain', 'Male', '1990-03-16', '8600024743', 'prateeknitish.jain@gmail.com', '882e23ac5289d0f9b354fa734e205c16', 'Jaipur', 'General', 'Rajasthan', 'Jaipur', 'f5f8590cd58a54e94377e6ae2eded4d9', 0),
(12, 'Prateek', 'Jaim', 'Jain', 'Jain', 'Male', '1990-03-16', '8600024743', 'prateeknitish.jain@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'Jaipur', 'General', 'Rajasthan', 'Ajmer', 'a3c65c2974270fd093ee8a9bf8ae7d0b', 0),
(13, 'Prateek', 'Jaim', 'Jain', 'Jain', 'Male', '1990-03-16', '8600024743', 'prateeknitish.jain@gmail.com', 'bbb8aae57c104cda40c93843ad5e6db8', 'Jaipur', 'General', 'Delhi', 'Central Delhi', '5c04925674920eb58467fb52ce4ef728', 0);

-- --------------------------------------------------------

--
-- Table structure for table `state_list`
--

CREATE TABLE `state_list` (
  `state_id` int(3) NOT NULL,
  `state_name` varchar(20) NOT NULL,
  `state_name_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state_list`
--

INSERT INTO `state_list` (`state_id`, `state_name`, `state_name_code`) VALUES
(1, 'Andaman & Nicobar Is', 'AN'),
(2, 'Andhra Pradesh', 'AP'),
(3, 'Arunachal Pradesh', 'AR'),
(4, 'Assam', 'AS'),
(5, 'Bihar', 'BR'),
(6, 'Chandigarh', 'CH'),
(7, 'Chattisgarh', 'CT'),
(8, 'Dadra & Nagar Haveli', 'DN'),
(9, 'Daman & Diu', 'DD'),
(10, 'Delhi', 'DL'),
(11, 'Goa', 'GA'),
(12, 'Gujarat', 'GJ'),
(13, 'Haryana', 'HR'),
(14, 'Himachal Pradesh', 'HP'),
(15, 'Jammu & Kashmir', 'JK'),
(16, 'Jharkhand', 'JH'),
(17, 'Karnataka', 'KA'),
(18, 'Kerala', 'KL'),
(19, 'Lakshadweep', 'LD'),
(20, 'Madhya Pradesh', 'MP'),
(21, 'Maharashtra', 'MH'),
(22, 'Manipur', 'MN'),
(23, 'Meghalaya', 'ML'),
(24, 'Mizoram', 'MZ'),
(25, 'Nagaland', 'NL'),
(26, 'Odisha', 'OR'),
(27, 'Poducherry', 'PY'),
(28, 'Punjab', 'PB'),
(29, 'Rajasthan', 'RJ'),
(30, 'Sikkim', 'SK'),
(31, 'Tamil Nadu', 'TN'),
(32, 'Telangana', 'TG'),
(33, 'Tripura', 'TR'),
(34, 'Uttar Pradesh', 'UP'),
(35, 'Uttarakhand', 'UT'),
(36, 'West Bengal', 'WB');

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
-- AUTO_INCREMENT for table `opponent_record`
--
ALTER TABLE `opponent_record`
  MODIFY `opponent_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'PK', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `reg_client`
--
ALTER TABLE `reg_client`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'PK', AUTO_INCREMENT=14;
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
