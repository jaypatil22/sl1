-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2020 at 07:38 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrishi`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  `cf_name` varchar(100) NOT NULL,
  `cl_name` varchar(100) NOT NULL,
  `c_email` varchar(100) NOT NULL,
  `c_mobile` varchar(100) NOT NULL,
  `nid` varchar(100) DEFAULT NULL,
  `w_start` date NOT NULL,
  `w_end` date NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `invoice_id` varchar(100) DEFAULT NULL,
  `c_address` varchar(400) DEFAULT NULL,
  `c_pass` varchar(30) NOT NULL,
  `extra` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `v_id`, `cf_name`, `cl_name`, `c_email`, `c_mobile`, `nid`, `w_start`, `w_end`, `payment_type`, `invoice_id`, `c_address`, `c_pass`, `extra`) VALUES
(1, 2, 'asd', 'asd', 'ad', 'asd', 'asd', '2017-01-05', '2017-01-24', '', NULL, NULL, '', NULL),
(2, 1, 'asd', 'asd', 'ad', 'asd', 'asd', '2017-01-05', '2017-01-24', '', NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `manufacturer_name` varchar(100) NOT NULL,
  `manufacturer_logo` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`manufacturer_id`, `manufacturer_name`, `manufacturer_logo`) VALUES
(30, 'BMW', NULL),
(32, 'LambourGini', NULL),
(33, 'Newww', NULL),
(35, 'oasdad', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `model_id` int(11) NOT NULL,
  `model_name` varchar(100) NOT NULL,
  `manufacturer_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`model_id`, `model_name`, `manufacturer_name`) VALUES
(27, 'JXER', 'BMW'),
(28, 'FF23', 'LambourGini'),
(29, 'Laxus', 'BMW');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `test_id` int(11) NOT NULL,
  `tyre` tinyint(1) NOT NULL,
  `steering` tinyint(1) NOT NULL,
  `engine` tinyint(1) NOT NULL,
  `suspension` tinyint(1) NOT NULL,
  `horn` tinyint(1) NOT NULL,
  `brake` tinyint(1) NOT NULL,
  `headlight` tinyint(1) NOT NULL,
  `wiper` tinyint(1) NOT NULL,
  `body` tinyint(1) NOT NULL,
  `electricals` tinyint(1) NOT NULL,
  `saftey_belts` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `t_id` int(100) NOT NULL,
  `v_uid` int(100) NOT NULL,
  `tyre` varchar(50) NOT NULL,
  `steering` varchar(50) NOT NULL,
  `engine` varchar(100) NOT NULL,
  `suspension` varchar(100) NOT NULL,
  `horn` varchar(100) NOT NULL,
  `brake` varchar(100) NOT NULL,
  `headlight` varchar(100) NOT NULL,
  `wiper` varchar(100) NOT NULL,
  `body` varchar(100) NOT NULL,
  `electricals` varchar(100) NOT NULL,
  `safety_belts` varchar(100) NOT NULL,
  `v_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`t_id`, `v_uid`, `tyre`, `steering`, `engine`, `suspension`, `horn`, `brake`, `headlight`, `wiper`, `body`, `electricals`, `safety_belts`, `v_id`) VALUES
(230, 133, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 0),
(231, 133, '', '', '', '', '', '', '', '1', '1', '', '', 0),
(232, 149, '', '', '', '', '', '', '', '', '', '', '1', 0),
(233, 149, '1', '1', '1', '1', '1', '1', '1', '1', '1', '', '', 0),
(234, 149, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 0),
(235, 149, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 0),
(236, 135, '', '', '1', '1', '1', '1', '1', '1', '', '', '', 0),
(237, 156, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 0),
(238, 156, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 0),
(239, 0, '1', '1', '1', '1', '1', '1', '1', '1', '', '', '', 124),
(240, 0, '1', '1', '1', '1', '1', '1', '1', '1', '', '', '', 124),
(241, 0, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 124),
(242, 156, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 124);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `u_email` varchar(100) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `u_bday` date NOT NULL,
  `u_position` varchar(100) NOT NULL,
  `u_type` varchar(100) NOT NULL,
  `u_pass` varchar(100) NOT NULL,
  `u_mobile` varchar(100) NOT NULL,
  `u_gender` varchar(30) NOT NULL,
  `u_address` varchar(100) NOT NULL,
  `s_question` varchar(100) DEFAULT NULL,
  `s_ans` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `last_login` bigint(20) NOT NULL,
  `t_status` int(100) NOT NULL,
  `t_result` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `u_email`, `f_name`, `l_name`, `u_bday`, `u_position`, `u_type`, `u_pass`, `u_mobile`, `u_gender`, `u_address`, `s_question`, `s_ans`, `password`, `last_login`, `t_status`, `t_result`) VALUES
(1, 'admin@gmail.com', 'admin', '', '2016-04-14', 'Manager', 'Admin', '21232f297a57a5a743894a0e4a801fc3', '1', 'Male', 'address address address address address, address address', 'test?', 'test', 'admin', 1607409503, 0, 0),
(133, 'swap1@gmail.com', 'swap1', 'swap1', '2020-10-29', '', '', '', '1234567890', '', '', NULL, NULL, '123', 1606779734, 0, 0),
(135, 'swap2@gmail.com', 'swap2', 'swap2', '2020-11-06', '', '', '', ' 1234567890', '', '', NULL, NULL, '123', 1606808440, 0, 1),
(137, 'swap3@gmail.com', 'swap3', 'swap3', '2020-11-20', '', '', '', '1234567890', '', '', NULL, NULL, '123', 0, 0, 0),
(149, 'swap4@gmail.com', 'swap4', 'swap4', '1998-07-05', '', '', '', '23423423442', '', '', NULL, NULL, '123', 1606779229, 0, 2),
(154, 'Swapnil@gmail.com', 'Swapnil', 'Jadhav', '1998-07-05', '', '', '', '4838383838', '', '', NULL, NULL, '123', 1606808114, 0, 0),
(156, 'vp20000525@gmail.com', 'Vijay', 'Patil', '2020-12-23', '', '', '', '9373303994', '', '', NULL, NULL, '123', 1607408904, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `v_id` int(11) NOT NULL,
  `manufacturer_name` varchar(100) NOT NULL,
  `model_name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `mileage` double NOT NULL,
  `status` varchar(40) NOT NULL,
  `registration_year` int(11) NOT NULL,
  `insurance_id` int(11) DEFAULT NULL,
  `image` varchar(400) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  `v_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`v_id`, `manufacturer_name`, `model_name`, `category`, `mileage`, `status`, `registration_year`, `insurance_id`, `image`, `u_id`, `v_no`) VALUES
(1, 'LambourGini', 'JXER', 'asdasd', 200, 'Available', 2001, 121212, NULL, NULL, ''),
(2, 'LambourGini', 'JXER', 'asdasd', 200, 'Available', 2001, 121212, NULL, NULL, ''),
(110, 'BMW', 'JXER', 'asdasd', 200, 'Available', 2001, 121212, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `v_id` int(100) NOT NULL,
  `v_uid` int(100) NOT NULL,
  `v_custo` varchar(100) NOT NULL,
  `v_no` varchar(100) NOT NULL,
  `v_manufacture` varchar(100) NOT NULL,
  `v_status` varchar(100) NOT NULL,
  `v_model` varchar(100) NOT NULL,
  `v_category` varchar(100) NOT NULL,
  `v_mileage` varchar(100) NOT NULL,
  `v_registration_year` varchar(100) NOT NULL,
  `v_insurance` varchar(100) NOT NULL,
  `v_test` varchar(100) NOT NULL,
  `v_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`v_id`, `v_uid`, `v_custo`, `v_no`, `v_manufacture`, `v_status`, `v_model`, `v_category`, `v_mileage`, `v_registration_year`, `v_insurance`, `v_test`, `v_pic`) VALUES
(121, 156, 'Vijay', '1564654', 'lamborghini', 'hurracan performante', 'supercar', '10', 'working', '2020', '4645643', '4', 'docs/2020-12-05.png'),
(122, 156, 'Vijay', '2415525', 'honda', 'rc250', 'superbike', '10', 'working', '2020', '1545674534', '4', 'docs/Screenshot (7).png'),
(123, 156, 'Vijay', '46547874564', 'ducati', 'pinagale v4', 'superbike', '10', 'working', '2020', '548574545', '3', 'docs/Screenshot (8).png'),
(124, 156, 'Vijay', '4564874534123', 'ferrari', '488 spyder', 'supercar', '10', 'working', '2020', '4854541321645653', '4', 'docs/Screenshot (12).png'),
(125, 156, 'Vijay', '5641512341', 'tesla', 'model X', 'ev', '100', 'working', '2020', '46454846685', '2', 'docs/Screenshot (8).png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `v_id_2` (`v_id`),
  ADD UNIQUE KEY `c_id` (`c_id`),
  ADD UNIQUE KEY `invoice_id` (`invoice_id`),
  ADD KEY `v_id` (`v_id`),
  ADD KEY `c_id_2` (`c_id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`),
  ADD UNIQUE KEY `manufacturer_name` (`manufacturer_name`),
  ADD KEY `manufacturer_name_2` (`manufacturer_name`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`model_id`),
  ADD UNIQUE KEY `model_name` (`model_name`),
  ADD KEY `manufacturer_name` (`manufacturer_name`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`),
  ADD UNIQUE KEY `email` (`u_email`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`v_id`),
  ADD KEY `manufacturer_name` (`manufacturer_name`),
  ADD KEY `model_name` (`model_name`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `model`
--
ALTER TABLE `model`
  MODIFY `model_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `t_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `v_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`v_id`) REFERENCES `vehicle` (`v_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `model_ibfk_1` FOREIGN KEY (`manufacturer_name`) REFERENCES `manufacturer` (`manufacturer_name`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`manufacturer_name`) REFERENCES `model` (`manufacturer_name`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_ibfk_2` FOREIGN KEY (`model_name`) REFERENCES `model` (`model_name`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_ibfk_3` FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
