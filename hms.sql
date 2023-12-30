-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 06, 2023 at 08:05 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment_details`
--

DROP TABLE IF EXISTS `appointment_details`;
CREATE TABLE IF NOT EXISTS `appointment_details` (
  `specialization` varchar(40) NOT NULL,
  `doctor` varchar(40) NOT NULL,
  `apt_date` date NOT NULL,
  `apt_time` varchar(20) NOT NULL,
  `apt_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`apt_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `appointment_details`
--

INSERT INTO `appointment_details` (`specialization`, `doctor`, `apt_date`, `apt_time`, `apt_id`) VALUES
('neurologist', 'sumit', '2023-02-20', '2:00 pm', 12),
('cardiologist', 'amit', '2023-10-10', '', 7),
('neurologist', 'harsh mishra', '2023-10-10', '4:00 pm', 10);

-- --------------------------------------------------------

--
-- Table structure for table `contact_data`
--

DROP TABLE IF EXISTS `contact_data`;
CREATE TABLE IF NOT EXISTS `contact_data` (
  `name` varchar(20) DEFAULT NULL,
  `phone_no` int DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  `contact_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`contact_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact_data`
--

INSERT INTO `contact_data` (`name`, `phone_no`, `email`, `message`, `contact_id`) VALUES
('sumit raj', 2147483647, 'sky00@gmail.com', 'nothing because you cant\r\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

DROP TABLE IF EXISTS `diagnosis`;
CREATE TABLE IF NOT EXISTS `diagnosis` (
  `diagnosis_name` varchar(20) DEFAULT NULL,
  `diagnosis_id` int NOT NULL,
  `diagnosis_type` varchar(20) DEFAULT NULL,
  `result` varchar(30) DEFAULT NULL,
  `diagnosis_description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`diagnosis_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `doctor_id` int NOT NULL,
  `doctor_name` varchar(20) DEFAULT NULL,
  `doctor_address` varchar(20) DEFAULT NULL,
  `speciality` varchar(20) DEFAULT NULL,
  `doctor_mobile` int DEFAULT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_login`
--

DROP TABLE IF EXISTS `doctor_login`;
CREATE TABLE IF NOT EXISTS `doctor_login` (
  `doct_username` varchar(20) NOT NULL,
  `doct_password` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_info`
--

DROP TABLE IF EXISTS `login_info`;
CREATE TABLE IF NOT EXISTS `login_info` (
  `username` varchar(20) NOT NULL,
  `password` int NOT NULL,
  `email` varchar(40) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone_no` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login_info`
--

INSERT INTO `login_info` (`username`, `password`, `email`, `gender`, `phone_no`) VALUES
('amit', 1234, 'abcdefg00@gmail.com', 'male', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
CREATE TABLE IF NOT EXISTS `medicine` (
  `medicine_id` int NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `medicine_price` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `medicine_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`medicine_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `patient_name` varchar(20) DEFAULT NULL,
  `phone_no` int DEFAULT NULL,
  `blood_group` varchar(5) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `patient_id` int NOT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient_login`
--

DROP TABLE IF EXISTS `patient_login`;
CREATE TABLE IF NOT EXISTS `patient_login` (
  `usernam` varchar(20) NOT NULL,
  `password` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `patient_login`
--

INSERT INTO `patient_login` (`usernam`, `password`) VALUES
('abhishek', 45),
('sumit', 0),
('abhishek', 0),
('abhishek', 0),
('abhishek', 0),
('sumit', 1234),
('abhishek', 1234),
('abhishek', 1234),
('abhishek', 123),
('sumit', 0),
('sumit', 0),
('abhishek', 0),
('abhishek', 0),
('abhishek', 1234),
('abhishek', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reception_login`
--

DROP TABLE IF EXISTS `reception_login`;
CREATE TABLE IF NOT EXISTS `reception_login` (
  `recep_username` varchar(20) NOT NULL,
  `recep_password` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reception_login`
--

INSERT INTO `reception_login` (`recep_username`, `recep_password`) VALUES
('roshan', 456),
('roshan', 456),
('roshan', 123),
('hrithik', 1234),
('hrithik', 12345),
('hrithik', 1234),
('roshan', 12345),
('hrithik', 1234),
('hrithik', 1234),
('hrithik', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

DROP TABLE IF EXISTS `records`;
CREATE TABLE IF NOT EXISTS `records` (
  `record_id` int NOT NULL,
  `date_submitted` date DEFAULT NULL,
  `date_discharged` date DEFAULT NULL,
  `treatment` varchar(20) DEFAULT NULL,
  `patient_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `record_fk` (`patient_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `staff_name` varchar(20) DEFAULT NULL,
  `staff_id` int NOT NULL,
  `Gender` varchar(5) DEFAULT NULL,
  `phone_no` int DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
