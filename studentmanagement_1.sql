-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2021 at 07:56 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentmanagement_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_record`
--

CREATE TABLE `add_record` (
  `Id` int(11) NOT NULL,
  `Course` varchar(255) NOT NULL,
  `Student_id` varchar(255) NOT NULL,
  `Assignment_1` int(255) NOT NULL,
  `Quiz_1` int(250) NOT NULL,
  `Mid` int(255) NOT NULL,
  `Assignment_2` int(255) NOT NULL,
  `Quiz_2` int(11) NOT NULL,
  `Final` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_record`
--

INSERT INTO `add_record` (`Id`, `Course`, `Student_id`, `Assignment_1`, `Quiz_1`, `Mid`, `Assignment_2`, `Quiz_2`, `Final`) VALUES
(20, 'OOPs', 'CSC-20F-001', 7, 9, 19, 5, 5, 36),
(21, 'OOPs', 'CSC-20F-005', 7, 10, 14, 6, 88, 82),
(22, 'OOPs', 'CSC-20F-016', 6, 2, 14, 86, 54, 43),
(23, 'OOPs', 'CSC-20F-149', 4, 7, 9, 6, 4, 40);

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `Id` int(11) NOT NULL,
  `batchname` varchar(255) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`Id`, `batchname`, `year`) VALUES
(6, '18f ', 2018),
(7, '19F', 2019),
(8, '20F', 2020);

-- --------------------------------------------------------

--
-- Table structure for table `class_attendence`
--

CREATE TABLE `class_attendence` (
  `Id` int(11) NOT NULL,
  `roll_no` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class_attendence`
--

INSERT INTO `class_attendence` (`Id`, `roll_no`, `date`, `status`) VALUES
(9, 'CSC-20F-016', '6-30-2021', 'Present'),
(10, 'CSC-20F-001', '6-30-2021', 'Absent'),
(11, 'CSC-20F-005', '6-30-2021', 'Absent'),
(12, 'CSC-20F-149', '6-30-2021', 'Present'),
(13, 'CSC-20F-016', '12may2020', 'Present'),
(14, 'CSC-20F-016', '11-06-2021', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `class_schedule`
--

CREATE TABLE `class_schedule` (
  `Id` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class_schedule`
--

INSERT INTO `class_schedule` (`Id`, `day`, `time`, `course`) VALUES
(1, 'monday', '12:00-1:30', 'OOPs'),
(2, 'monday', '12:00-1:30', 'DLD'),
(3, 'monday', '12:00-1:30', 'OOPs'),
(4, 'monday', '12:00-1:30', 'OOPs'),
(5, 'monday', '12:00-1:30', 'DLD'),
(6, 'tuesday', '12:00-1:30', 'Eng'),
(7, 'tuesday', '12:00-1:30', 'OOPs'),
(8, 'tuesday', '12:00-1:30', 'stats'),
(9, 'wednesday', '12:00-1:30', 'DlD'),
(10, 'wednesday', '3:00-4:30', 'OOPs'),
(11, 'wednesday', '11:00-1:30', 'arabic'),
(12, 'thursday', '9:00-10:30', 'stats'),
(13, 'thursday', '12:00-1:30', 'OOPs'),
(14, 'monday', '1:00-2:30', 'Eng');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Id` int(11) NOT NULL,
  `coursename` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL,
  `optionn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Id`, `coursename`, `duration`, `optionn`) VALUES
(8, 'OOPs', 6, 'Month'),
(9, 'DLD', 6, 'Month'),
(10, 'Arabic', 6, 'Month'),
(11, 'Communication', 6, 'Month');

-- --------------------------------------------------------

--
-- Table structure for table `registation`
--

CREATE TABLE `registation` (
  `Id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `nic` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `course` varchar(255) NOT NULL,
  `batch` varchar(255) NOT NULL,
  `telephone` int(11) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registation`
--

INSERT INTO `registation` (`Id`, `firstname`, `lastname`, `nic`, `gender`, `course`, `batch`, `telephone`, `address`) VALUES
(7, 'Ahzam', 'Ahmed', '241234', 'Male', 'OOPs', '18f ', 12341324, 'asfwgdfasfewf'),
(8, 'zargham', 'Kazmi', '32422', 'Female', 'Arabic', '18f ', 2341234, '13421241');

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

CREATE TABLE `student_login` (
  `Id` int(11) NOT NULL,
  `Student_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_login`
--

INSERT INTO `student_login` (`Id`, `Student_id`, `password`) VALUES
(1, 'CSC-20F-016', 'aaa'),
(2, 'CSC-20F-001', 'abc'),
(3, 'CSC-20F-149', 'xyz');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_login`
--

CREATE TABLE `teacher_login` (
  `Id` int(11) NOT NULL,
  `teacher_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_login`
--

INSERT INTO `teacher_login` (`Id`, `teacher_name`, `password`) VALUES
(1, 'zargham', 'zzz');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_record`
--
ALTER TABLE `add_record`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `class_attendence`
--
ALTER TABLE `class_attendence`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `class_schedule`
--
ALTER TABLE `class_schedule`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `registation`
--
ALTER TABLE `registation`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `student_login`
--
ALTER TABLE `student_login`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `teacher_login`
--
ALTER TABLE `teacher_login`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_record`
--
ALTER TABLE `add_record`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `class_attendence`
--
ALTER TABLE `class_attendence`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `class_schedule`
--
ALTER TABLE `class_schedule`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `registation`
--
ALTER TABLE `registation`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_login`
--
ALTER TABLE `student_login`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teacher_login`
--
ALTER TABLE `teacher_login`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
