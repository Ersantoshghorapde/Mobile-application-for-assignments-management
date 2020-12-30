-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: fdb29.awardspace.net
-- Generation Time: Dec 30, 2020 at 12:52 PM
-- Server version: 5.7.20-log
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `3565056_assignmentss`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `rollno` int(10) NOT NULL,
  `title` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `rollno`, `title`, `file_name`, `subject`, `type`, `uploaded_on`, `status`) VALUES
(9, 5, 'ghorpade', 'Screenshot (2).png', '', '', '0000-00-00 00:00:00', '1'),
(17, 2, 'dbms ass 2', 'internshala.pdf', 'dbms', '', '0000-00-00 00:00:00', '1'),
(18, 44, 'toc ass 1', 'application ssr 2019.pdf', 'dbms', '', '0000-00-00 00:00:00', '1'),
(21, 2, 'toc ass 3', 'ssc result.pdf', 'toc', '', '0000-00-00 00:00:00', '1'),
(27, 4, 'de', 'application ssr 2019.pdf', 'dbms', 'teacher', '0000-00-00 00:00:00', '1'),
(28, 222, 'santosh', 'navy admit card 2019.pdf', 'dbms', 'student', '0000-00-00 00:00:00', '1'),
(30, 1, 'uni 1', 'ssc.pdf', 'toc', 'teacher', '0000-00-00 00:00:00', '1'),
(31, 4, 'e', 'internshala.pdf', 'isee', 'teacher', '0000-00-00 00:00:00', '1'),
(32, 1, 'unit 1', 'ssc result.pdf', 'cn', 'teacher', '0000-00-00 00:00:00', '1'),
(33, 1, 'Unit 1', 'doc.pdf', 'dbms', 'teacher', '0000-00-00 00:00:00', '1'),
(34, 1, 'Unit 3', 'IMG_20200117_230052.jpg', 'dbms', 'teacher', '0000-00-00 00:00:00', '1'),
(35, 1, 'ass 2', 'smart india hackethon 2k18.pdf', 'toc', 'student', '0000-00-00 00:00:00', '1'),
(36, 4, 'assignment 1', 'typing certificate.pdf', 'toc', 'teacher', '0000-00-00 00:00:00', '1'),
(37, 4, 'Unit 4', 'sable cet form.pdf', 'cn', 'teacher', '0000-00-00 00:00:00', '1'),
(38, 3, 'Unit 6', '1599283884585.jpg', 'sepm', 'teacher', '0000-00-00 00:00:00', '1'),
(40, 1, 'unit 2', 'railway application.pdf', 'dbms', 'student', '0000-00-00 00:00:00', '1'),
(41, 15, 'Unit 1', 'IMG-20200922-WA0014.jpg', 'dbms', 'student', '0000-00-00 00:00:00', '1'),
(42, 1, 'Unit 1', 'IMG-20200921-WA0011.jpg', 'toc', 'teacher', '0000-00-00 00:00:00', '1'),
(43, 20, 'Unit 2', 'Exam december 2020_03.122020.pdf', 'dbms', 'student', '0000-00-00 00:00:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `Student_Registration`
--

CREATE TABLE `Student_Registration` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `dep` varchar(20) NOT NULL,
  `sem` varchar(10) NOT NULL,
  `rollno` int(10) NOT NULL,
  `Clgid` int(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Student_Registration`
--

INSERT INTO `Student_Registration` (`fname`, `lname`, `dep`, `sem`, `rollno`, `Clgid`, `email`, `pass`) VALUES
('Sharon', 'Philip', 'Computer', '5th', 20, 1234, 'philipsharon1999@gmail.com', 'sha1'),
('Santosh', 'Ghorpade ', 'Computer', '5th', 68, 123456, 'santosh@gmail.com', '1234'),
('San', 'Ghor', 'computer', '1st', 45, 25, 'ghor@gmail.com', '1234'),
('Sharon', 'Philip', 'Computer', '5th', 73, 7996699, 'philipsharon@gmail.com', 'sharon'),
('Prathamesh', 'Ghan', 'Computer', '1st', 72, 1, 'ghan.prathamesh@gmail.com', 'pass123'),
('Shashank ', 'Naik', 'Mechanical', '7th', 20, 67854, 'shashanknaik@gmail.com', 'shashank'),
('mr santosh', 'ghorpade', 'Computer', '5th', 4, 123456, 'ghorpadesantosh001@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `techers`
--

CREATE TABLE `techers` (
  `fname` varchar(30) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `department` varchar(20) NOT NULL,
  `sub` varchar(30) NOT NULL,
  `clgid` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `repass` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `techers`
--

INSERT INTO `techers` (`fname`, `lname`, `department`, `sub`, `clgid`, `email`, `pass`, `repass`) VALUES
('San', 'Ghor', 'Computer', '', '1234', 't@gmail.com', '1234', '1234'),
('Bhatat', 'Ggorpade', 'IT', 'TOC', '123456789', 'ghorpadesantosh01@gmail.c', '1234567890', '1234567890'),
('mr sharon', 'philips', 'Computer', 'DBMS', '6666', 'shankar@gmail.com', '1234', '1234'),
('Norahs', 'Pilihp', 'Computer', 'CN', '7888999', 'philipsharon99@gmail.com', 'sha123', 'sha123'),
('San', 'Tosh', 'Computer', 'TOC', '123456', 'santosh12@gmail.com', '1234', '1234'),
('', '', 'Computer', 'DBMS', '', '', '', ''),
('Xyz', 'Abc', 'Computer', 'DBMS', '123456', 'xyzabc@gmail.com', 'Xyzabc', 'Xyzabc'),
('Xyz', 'Abv', 'Computer', 'DBMS', '1234', 'xyzabv@gmail.com', 'xyzab', 'xyzab');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Student_Registration`
--
ALTER TABLE `Student_Registration`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `techers`
--
ALTER TABLE `techers`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
