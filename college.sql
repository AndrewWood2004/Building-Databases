-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2023 at 02:34 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `collages`
--

CREATE TABLE `collages` (
  `Col_name` varchar(50) DEFAULT NULL,
  `Col_location` varchar(25) DEFAULT NULL,
  `dean_ssn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collages`
--

INSERT INTO `collages` (`Col_name`, `Col_location`, `dean_ssn`) VALUES
('College of Graduate Studies', 'Magnolia', 100654122),
('College of Business', 'Magnolia', 135800135),
('College of Liberal and Performing Arts', 'Magnolia', 238532591),
('College of Honors Studies', 'Magnolia', 284302460),
('College of Online Studies', 'Online', 381501350),
('College of Science and Technology', 'Magnolia', 738359271);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `Cou_name` varchar(50) DEFAULT NULL,
  `Cou_Id` varchar(13) NOT NULL,
  `Cou_College` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`Cou_name`, `Cou_Id`, `Cou_College`) VALUES
('Intro to Computing', 'CSCI-1101', 'College of Online'),
('Computer Science I Lab', 'CSCI-2101', 'College of Science and Technology'),
('Computer Science I', 'CSCI-2103', 'College of Science and Technology'),
('Data Structures and Algorithms', 'CSCI-3103', 'College of Science and Technology'),
('Computer Science I Lab-H', 'HCSCI-2101', 'College of Science and Technology'),
('Data Structures and Algorithms-H', 'HCSCI-3103', 'College of Science and Technology');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_ssn` int(11) NOT NULL,
  `emp_name` varchar(20) DEFAULT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `emp_Address` varchar(50) DEFAULT NULL,
  `emp_Salary` int(10) DEFAULT NULL,
  `emp_sex` varchar(1) DEFAULT NULL,
  `emp_Birthdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_ssn`, `emp_name`, `cname`, `emp_Address`, `emp_Salary`, `emp_sex`, `emp_Birthdate`) VALUES
(100000011, 'Joan Softball', 'College of Science and Technology', '220 S Mainstreet', 52000, 'F', '1980-07-18'),
(100654122, 'Jojo Rugby', 'College of Graduate Studies', '102 Saint Andrew Drive', 69000, 'M', '1993-10-10'),
(102200011, 'James Golfer', 'College of Science and Technology', '030 S Mainstreet', 49000, 'M', '1981-05-30'),
(135800135, 'Daphnie Potter', 'College of Business', '4921 Great Oak', 46500, 'F', '1969-10-10'),
(165400112, 'Juan Soccer', 'College of Science and Technology', '9138 Great John Str', 58000, 'M', '1970-12-27'),
(238532591, 'Harry Styler', 'College of Liberal and Performing Arts', '381 Overgrove Blvd', 74000, 'M', '0000-00-00'),
(284302460, 'Jeremy Glossup', 'College of Honors Studies', '31 W 2nd Str', 89000, 'M', '1986-11-01'),
(381501350, 'Lana Mana', 'College of Online Studies', '102 Saint Andrew Drive', 69000, 'F', '1975-01-01'),
(738359271, 'Jeremy Granger', 'College of Science and Technology', '72 Timberbrooke Blvd', 74000, 'M', '1997-11-01');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `SInstructor_ssn` int(11) DEFAULT NULL,
  `SCou_Id` varchar(13) DEFAULT NULL,
  `Sec_room` varchar(20) DEFAULT NULL,
  `Sec_location` varchar(25) DEFAULT NULL,
  `Sec_start_date` date DEFAULT NULL,
  `Sec_end_date` date DEFAULT NULL,
  `Sec_Meeting_Day` varchar(6) DEFAULT NULL,
  `Sec_start_time` varchar(10) DEFAULT NULL,
  `Sec_end_time` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`SInstructor_ssn`, `SCou_Id`, `Sec_room`, `Sec_location`, `Sec_start_date`, `Sec_end_date`, `Sec_Meeting_Day`, `Sec_start_time`, `Sec_end_time`) VALUES
(100000011, 'CSCI-2103', 'WIL100', 'Magnolia', '0000-00-00', '0000-00-00', 'MWF', '11:00AM', '11:50AM'),
(100000011, 'CSCI-2101', 'WIL106', 'Magnolia', '0000-00-00', '0000-00-00', 'R', '01:00PM', '01:00PM'),
(100000011, 'HCSCI-2101', 'WIL106', 'Magnolia', '0000-00-00', '0000-00-00', 'R', '01:00PM', '01:00PM'),
(102200011, 'CSCI-3103', 'AGRI112', 'Magnolia', '0000-00-00', '0000-00-00', 'MW', '02:10PM', '03:30PM'),
(102200011, 'HCSCI-3103', 'AGRI112', 'Magnolia', '0000-00-00', '0000-00-00', 'MW', '02:10PM', '03:30PM'),
(100000011, 'CSCI-3103', 'WIL202', 'Magnolia', '0000-00-00', '0000-00-00', 'TR', '02:10PM', '03:30PM'),
(100000011, 'CSCI-1101', 'Online', 'Online', '0000-00-00', '0000-00-00', 'Online', 'Online', 'Online');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `stu_ssn` int(11) NOT NULL,
  `stu_student_id` int(9) DEFAULT NULL,
  `stu_name` varchar(20) DEFAULT NULL,
  `stu_dob` date DEFAULT NULL,
  `stu_major` varchar(20) DEFAULT NULL,
  `stu_college` varchar(50) DEFAULT NULL,
  `stu_advisor` int(11) DEFAULT NULL,
  `stu_class` varchar(29) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`stu_ssn`, `stu_student_id`, `stu_name`, `stu_dob`, `stu_major`, `stu_college`, `stu_advisor`, `stu_class`) VALUES
(111111111, 45893458, 'Joe Football', '2000-01-01', 'Computer Science', 'College of Science and Technology', 100000011, 'Junior'),
(111333444, 98765432, 'Peter Johnson', '2001-12-10', 'Business', 'College of Business', 135800135, 'Freshman'),
(222222222, 11122111, 'Peter Hill', '2000-01-12', 'Computer Science', 'College of Science and Technology', 165400112, 'Junior'),
(333333333, 11122112, 'Jose Caldaron', '2001-03-19', 'Agriculture', 'College of Science and Technology', 102200011, 'Freshman'),
(432109876, 99988877, 'Gregory Mitchell', '2001-03-19', 'Computer Science', 'College of Science and Technology', 165400112, 'Sophomore'),
(444444444, 43215432, 'Jonathan Caminga', '1999-09-29', 'Computer Science', 'College of Science and Technology', 165400112, 'Senior'),
(999887774, 12345678, 'Donavan Hefley', '2001-03-19', 'Agriculture', 'College of Science and Technology', 102200011, 'Senior');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collages`
--
ALTER TABLE `collages`
  ADD PRIMARY KEY (`dean_ssn`),
  ADD KEY `Col_name` (`Col_name`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`Cou_Id`),
  ADD KEY `Cou_name` (`Cou_name`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_ssn`),
  ADD KEY `emp_name` (`emp_name`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD KEY `SCou_Id` (`SCou_Id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`stu_ssn`),
  ADD KEY `stu_name` (`stu_name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `collages`
--
ALTER TABLE `collages`
  ADD CONSTRAINT `FK1` FOREIGN KEY (`dean_ssn`) REFERENCES `employees` (`emp_ssn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
