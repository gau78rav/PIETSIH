-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2018 at 05:48 AM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `district_list`
--
ALTER TABLE `district_list`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `s_id` (`s_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `district_list`
--
ALTER TABLE `district_list`
  ADD CONSTRAINT `district_list_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `state_list` (`state_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
