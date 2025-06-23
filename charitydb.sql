-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2025 at 07:52 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `charitydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `donation_logs`
--

CREATE TABLE `donation_logs` (
  `donation_id` int(100) NOT NULL,
  `donor_id` varchar(100) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `donate_date` varchar(1000) NOT NULL,
  `donate_time` varchar(1000) NOT NULL,
  `donate_amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donation_logs`
--

INSERT INTO `donation_logs` (`donation_id`, `donor_id`, `project_id`, `donate_date`, `donate_time`, `donate_amount`) VALUES
(9, '1', '1', '2024-07-21', '14:29', '5000'),
(10, '1', '1', '2024-07-22', '12:23', '10000'),
(11, '1', '1', '2024-07-22', '12:23', '10000'),
(12, '1', '1', '2024-07-22', '12:23', '10000');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `d_id` int(100) NOT NULL,
  `d_name` varchar(100) NOT NULL,
  `d_address` varchar(100) NOT NULL,
  `d_city` varchar(1000) NOT NULL,
  `d_pincode` varchar(1000) NOT NULL,
  `d_contact` varchar(100) NOT NULL,
  `d_email` varchar(100) NOT NULL,
  `d_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`d_id`, `d_name`, `d_address`, `d_city`, `d_pincode`, `d_contact`, `d_email`, `d_password`) VALUES
(1, 'admin@gmail.com', 'Nimazari naka', 'Shirpur', '425405', '4562863842', 'rohit@gmail.com', 'rohit');

-- --------------------------------------------------------

--
-- Table structure for table `ngo`
--

CREATE TABLE `ngo` (
  `nid` int(100) NOT NULL,
  `nemail` varchar(100) NOT NULL,
  `npassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ngo`
--

INSERT INTO `ngo` (`nid`, `nemail`, `npassword`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `p_id` int(100) NOT NULL,
  `p_ngo_id` int(100) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_details` varchar(1000) NOT NULL,
  `p_address` varchar(1000) NOT NULL,
  `p_city` varchar(100) NOT NULL,
  `p_pincode` varchar(100) NOT NULL,
  `p_state` varchar(100) NOT NULL,
  `p_latitude` decimal(30,0) NOT NULL,
  `p_longitude` decimal(30,0) NOT NULL,
  `p_r_cost` varchar(100) NOT NULL,
  `p_status` varchar(100) NOT NULL,
  `p_d_cost` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`p_id`, `p_ngo_id`, `p_name`, `p_details`, `p_address`, `p_city`, `p_pincode`, `p_state`, `p_latitude`, `p_longitude`, `p_r_cost`, `p_status`, `p_d_cost`) VALUES
(1, 1, 'Free child vaccination', 'Let\'s come together to fully vaccinated every children in our city ', 'Karvand naka', 'Shirpur', '425405', 'Maharashtra', 45, 61, '50000', 'Ongoing', 35000),
(10, 1, 'Clothing drive', 'ad3ff3ff', 'Karvand naka', 'Shirpur', '425405', 'Maharashtra', 45, 61, '60000', 'Completed', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donation_logs`
--
ALTER TABLE `donation_logs`
  ADD PRIMARY KEY (`donation_id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `ngo`
--
ALTER TABLE `ngo`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donation_logs`
--
ALTER TABLE `donation_logs`
  MODIFY `donation_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `d_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ngo`
--
ALTER TABLE `ngo`
  MODIFY `nid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `p_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
