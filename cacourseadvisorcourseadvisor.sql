-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2019 at 03:06 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cacourseadvisor`
--

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `PROGRAMSTRUCTURE` int(11) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`PROGRAMSTRUCTURE`, `batch`, `ID`) VALUES
(1, 193, 1),
(2, 193, 2),
(3, 193, 3),
(4, 193, 4),
(5, 193, 5),
(6, 193, 6),
(7, 193, 7),
(8, 193, 8);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CatId` int(11) NOT NULL,
  `catName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CatId`, `catName`) VALUES
(1, 'Core'),
(2, 'University Elective'),
(3, 'Supporting'),
(4, 'General Education'),
(5, 'Design Project'),
(6, 'Computer Science Elective'),
(7, 'Internship'),
(8, 'Community Service'),
(9, 'SE Domain Supporting');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `coursecode` varchar(50) NOT NULL,
  `cTitle` varchar(50) DEFAULT NULL,
  `sem` int(11) NOT NULL,
  `credithour` int(11) DEFAULT NULL,
  `CATEGORY` int(11) DEFAULT NULL,
  `subcategory` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`coursecode`, `cTitle`, `sem`, `credithour`, `CATEGORY`, `subcategory`) VALUES
('ACC2003', 'Principles of Accounting-1', 7, 3, 4, NULL),
('CS1123', 'Introduction to Programming', 1, 3, 1, NULL),
('CS1131', 'Introduction to Programming Lab', 1, 1, 1, NULL),
('CS1141', 'Object Oriented Programming Lab', 2, 1, 1, NULL),
('CS1143', 'Object Oriented Programming', 2, 3, 1, NULL),
('CS2141', 'Data Structures Lab', 3, 1, 1, NULL),
('CS2143', 'Data Structures', 3, 3, 1, NULL),
('CS2151', 'Advanced Computer Programming Lab', 4, 1, 1, NULL),
('CS2153', 'Advanced Computer Programming', 4, 3, 1, NULL),
('CS2223', 'Software Engineering-1', 4, 3, 1, NULL),
('CS2311', 'Introduction to Database Systems Lab', 3, 1, 1, NULL),
('CS2313', 'Introduction to Database Systems', 3, 3, 1, NULL),
('CS2511', 'Digital Logic Design Lab', 3, 1, 1, NULL),
('CS2513', 'Digital Logic Design', 3, 3, 1, NULL),
('CS2521', 'Computer Organization and Assembly  Lab', 4, 1, 1, NULL),
('CS2523', 'Computer Organization and Assembly Language', 4, 3, 1, NULL),
('CS3163', 'Design and Analysis of Algorithm', 5, 3, 1, NULL),
('CS3181', 'Enterprise Application Development Lab', 6, 1, 2, NULL),
('CS3183', 'Enterprise Application Development ', 6, 3, 2, NULL),
('CS3191', 'Web Application Development Lab', 6, 1, 2, NULL),
('CS3193', 'Web Application Development', 6, 3, 2, NULL),
('CS3213', 'Object Oriented Analysis and Design', 5, 3, 1, NULL),
('CS3263', 'Software Requirment Engineering', 5, 3, 1, NULL),
('CS3271', 'Human Computer Interaction Lab', 6, 1, 1, NULL),
('CS3272', 'Human Computer Interaction ', 6, 2, 1, NULL),
('CS3323', 'Advance Database System', 6, 3, 2, NULL),
('CS3411', 'Operating Systems Lab', 5, 1, 1, NULL),
('CS3413', 'Operating Systems', 5, 3, 1, NULL),
('CS3513', 'ComputerArchitechure', 5, 3, 1, NULL),
('CS3613', 'Theory of Automa and formal languages', 6, 3, 1, NULL),
('CS3633', 'Software Testing', 6, 3, 1, NULL),
('CS3643', 'Software Architechure', 5, 3, 1, NULL),
('CS3743', 'Network Programming', 6, 3, 2, NULL),
('CS3753', 'Network design and managment', 6, 3, 2, NULL),
('CS3771', 'Computer Communications and Networks Lab', 6, 1, 1, NULL),
('CS3772', 'Computer Communications and Networks', 6, 2, 1, NULL),
('CS3823', 'Agile Software Development', 6, 3, 1, NULL),
('CS3843', 'Data Security and Cyptography', 3, 3, 6, NULL),
('CS4193', 'Information Visualization', 8, 3, 2, NULL),
('CS4323', 'Semantic Web', 7, 3, 2, NULL),
('CS4621', 'Compiler Construction Lab', 7, 1, 1, NULL),
('CS4622', 'Compiler Construction', 7, 3, 1, NULL),
('CS4811', 'Artificial Intelligence Lab', 7, 1, 1, NULL),
('CS4812', 'Artificial Intelligence', 7, 3, 1, NULL),
('CS4883', 'Introduction to DataScience', 4, 3, 6, NULL),
('CS4912', 'Design Project-1', 7, 2, 5, NULL),
('CS4924', 'Design Project-2', 8, 4, 5, NULL),
('HMC1002', 'Pakistan Studies', 1, 3, 4, NULL),
('HMC1012', 'Islamic Studies', 2, 3, 4, NULL),
('HMC1013', 'English-1', 1, 3, 4, NULL),
('HMC1023', 'English-2', 2, 3, 4, NULL),
('HMC2013', 'Professional Ethics and Legal Issues', 2, 3, 4, NULL),
('HMC2033', 'Technical Report Writing', 3, 3, 1, NULL),
('HMC2053', 'Introduction to Psychology', 2, 3, 4, NULL),
('HMC2063', 'Introduction to Sociology', 2, 3, 4, NULL),
('HMC2113', 'Major World Religions', 3, 3, 4, NULL),
('HMC3123', 'Introduction to Logic', 3, 3, 4, NULL),
('MGC1003', 'Introduction to Management', 8, 3, 4, NULL),
('MT2053', 'Discrete Mathematics', 4, 3, 3, NULL),
('MT3063', 'Probability and Statistics', 4, 3, 3, NULL),
('MTC1013', 'Calculus-1', 1, 3, 3, NULL),
('MTC1023', 'Calculus 2', 2, 3, 3, NULL),
('MTC1033', 'Linear Algebra', 2, 3, 3, NULL),
('MTC2043', 'Applied Differntial Equation', 5, 3, 3, NULL),
('PHC1013', 'Applied Physics', 1, 3, 3, NULL),
('SE3223', 'Formal Software Specification', 6, 3, 2, NULL),
('SE3233', 'Software Engineering-2', 6, 3, 2, NULL),
('SE3243', 'Software Quality Engineering', 6, 3, 2, NULL),
('SE3253', 'Software Process Engineering', 6, 3, 2, NULL),
('SE4191', 'Mobile Application Development Lab', 7, 1, 2, NULL),
('SE4193', 'Mobile Application Development', 7, 3, 2, NULL),
('SE4213', 'Software Configuration and Change Management', 8, 3, 2, NULL),
('SE4233', 'Software Engineering Economics', 8, 3, 2, NULL),
('SE4243', 'Software Quality Assurance and Testing', 7, 3, 2, NULL),
('SE4253', 'Software Metrics', 7, 3, 2, NULL),
('SE4263', 'Service Oriented Architechure', 7, 3, 2, NULL),
('SE4273', 'Software Project Management', 7, 3, 1, NULL),
('SE4283', 'Evolutionary Testing', 7, 3, 2, NULL),
('SE4293', 'Component Based Development ', 8, 3, 2, NULL),
('SE4313', 'Agent Based Software Engineering', 8, 3, 2, NULL),
('SE4513', 'Developing Reusable Software', 7, 3, 2, NULL),
('SE4912', 'Design Project-1', 7, 2, 5, NULL),
('SE4924', 'Design Project-2', 8, 4, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courseoffering`
--

CREATE TABLE `courseoffering` (
  `COURSE` varchar(50) DEFAULT NULL,
  `SEMESTER` varchar(50) DEFAULT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackId` int(11) NOT NULL,
  `comments` text,
  `coursecode` varchar(50) DEFAULT NULL,
  `points` double DEFAULT NULL,
  `STUDENT` varchar(50) DEFAULT NULL,
  `rateNo` int(11) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `neg` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackId`, `comments`, `coursecode`, `points`, `STUDENT`, `rateNo`, `pos`, `neg`) VALUES
(45, 'in start the course was boring but by the time passes it becomes interesting and it was a good course', 'CS1143', 0.7750261656256, 'bse161002', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inscrssem`
--

CREATE TABLE `inscrssem` (
  `INSTRUCTOR` varchar(50) DEFAULT NULL,
  `coursecode` varchar(50) DEFAULT NULL,
  `SEMESTER` varchar(50) DEFAULT NULL,
  `Id` int(11) NOT NULL,
  `details` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inscrssem`
--

INSERT INTO `inscrssem` (`INSTRUCTOR`, `coursecode`, `SEMESTER`, `Id`, `details`) VALUES
('Aamer Nadeem', 'CS2141', '1', 26, 'so much to study there is nothing predefined. everything will be decidied on runtime.'),
('Syed Awais Haider', 'CS2513', '4', 28, NULL),
('Nayyer Masood', 'CS2313', '8', 37, NULL),
('Aamer Nadeem', 'MT2053', '8', 38, NULL),
('Aamer Nadeem', 'CS3163', '8', 41, '3 credit hours thats enough to know. Good Luck.'),
('Bilal Ahmed', 'SE4273', '8', 42, NULL),
('Aamer Nadeem', 'MT2053', '8', 43, NULL),
('Samir Obaid ', 'CS3163', '6', 44, NULL),
('Abdul Qadir1', 'CS3163', '5', 46, NULL),
('Abdul Qadir1', 'CS3413', '5', 47, NULL),
('Abdul Qadir1', 'CS3263', '5', 48, NULL),
('Bilal Ahmed', 'CS3263', '6', 52, NULL),
('Bilal Ahmed', 'CS3643', '6', 53, 'In this course we study different design patterns and we will try to make model of a software. Good Luck');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `iUserName` varchar(50) NOT NULL,
  `iPassword` varchar(50) NOT NULL,
  `iEmail` varchar(50) NOT NULL,
  `program` char(10) DEFAULT NULL,
  `iName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`iUserName`, `iPassword`, `iEmail`, `program`, `iName`) VALUES
('Aamer Nadeem', 'nadeem', 'Aamernadeem12@gmail.com', 'CS', 'Dr. Aamer Nadeem'),
('Abdul Qadir1', '1234', 'MabdQ@gmail.com', 'CS', 'Dr M.Abdul Qadir1'),
('Ansar Javed', 'ansar123', 'ansar123@gmail.com', 'CS', 'Ansar Javed'),
('Azhar iqbal ', 'az123', 'azhariqbal@gmail.com', 'CS', 'Dr.M.Azhar Iqbal'),
('Bilal Ahmed', 'bilal123', 'bilal.ahmed1@gmail.com', 'CS', 'Mr.Bilal Ahmed'),
('Humaira Aftab', 'humaira123', 'Humaira123@gmail.com', 'CS', 'Humaira Aftab Shiekh'),
('Ibrar Arshad', 'ibrar123', 'ibrar.arshad', 'CS', 'Mr.Ibrar Arshad'),
('Mr.Qamar uz Zaman', 'qamzam123', 'qamar.zaman123', 'CS', 'Qamar Zaman'),
('Muhammad Sagheer', 'sagheer123', 'm.sagheer@gmail.com', 'CS', 'Dr.Muhammad Sagheer'),
('Nayyer Masood', 'na123', 'nayyer@gmail.com', 'CS', 'Dr.NayyerMasood'),
('Qaiser Nadeem', '123', 'qaiser@yahoo.com', 'CS', 'Qaiser Nadeem'),
('Qamar Mehmood', 'qammehm123', 'Qamar.mehmood123@gmail.com', 'CS', 'Qammar Mehmood'),
('Salman Ahmed', 'salman123', 'salmanahmed123@gmail.com', 'CS', 'Mr. Salman Ahmed'),
('Samir Obaid ', 'sam123', 'Samirobaid123@gmail.com', 'CS', 'Mr. Samir Obaid'),
('Shehwar Sagheer', 'shehwar123', 'Shehwar123', 'CS', 'Dr. Dur e Shehwar Sagheer'),
('Syed Awais Haider', 'awais123', 'Awaishaider234@gmail.com', 'CS', 'Awais Haider'),
('Tanvir Afzal', 'tan123', 'tanveerafzal12', 'CS', 'Dr.M.Tanvir Afzal');

-- --------------------------------------------------------

--
-- Table structure for table `prereq`
--

CREATE TABLE `prereq` (
  `coursecode` varchar(50) DEFAULT NULL,
  `preReq` varchar(50) DEFAULT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prereq`
--

INSERT INTO `prereq` (`coursecode`, `preReq`, `ID`) VALUES
('CS1141', 'CS1131', 1),
('CS1143', 'CS1123', 2),
('CS2141', 'CS1141', 3),
('CS2143', 'CS1143', 4),
('CS3272', 'CS2223', 5),
('CS3263', 'CS2223', 6),
('CS3643', 'CS2223', 7),
('MTC1033', 'MTC1013', 8),
('SE3243', 'CS2223', 9),
('SE4273', 'CS2513', 10),
('SE4924', 'SE4912', 11);

-- --------------------------------------------------------

--
-- Table structure for table `programstructure`
--

CREATE TABLE `programstructure` (
  `id` int(11) NOT NULL,
  `creditHours` int(11) DEFAULT NULL,
  `CATEGORY` int(11) DEFAULT NULL,
  `department` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programstructure`
--

INSERT INTO `programstructure` (`id`, `creditHours`, `CATEGORY`, `department`) VALUES
(1, 57, 1, 'cs'),
(2, 21, 3, 'cs'),
(3, 19, 4, 'cs'),
(4, 12, 2, 'cs'),
(5, 15, 6, 'cs'),
(6, 6, 5, 'cs'),
(7, 0, 7, 'cs'),
(8, 0, 8, 'cs'),
(9, 57, 1, 'se'),
(10, 15, 2, 'se'),
(11, 12, 3, 'se'),
(12, 31, 4, 'se'),
(13, 0, 8, 'se'),
(14, 0, 7, 'se'),
(15, 6, 5, 'se'),
(16, 9, 9, 'se');

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `rateNo` int(11) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`rateNo`, `status`) VALUES
(1, 'bad'),
(2, 'satisfactory'),
(3, 'good'),
(4, 'very good'),
(5, 'excellent');

-- --------------------------------------------------------

--
-- Table structure for table `roadmap`
--

CREATE TABLE `roadmap` (
  `course` varchar(50) DEFAULT NULL,
  `SEMESTER` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `credithour` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roadmap`
--

INSERT INTO `roadmap` (`course`, `SEMESTER`, `id`, `title`, `credithour`) VALUES
('CS1123', '1', 1, '	Introduction to Programming', 3),
('CS1121', '1', 2, 'Introduction to Programming Lab', 1),
('MTC1013', '1', 3, 'Calculus and Analytical Geometry', 3),
('PHC1013', '1', 4, 'Applied Physics', 3),
('HMC1002', '1', 5, 'Pakistan Studies', 2),
('HMC1013', '1', 6, 'English – I (Functional English)', 3),
('CS1143', '2', 7, 'Object Oriented Programming', 3),
('CS1141', '2', 8, 'Object Oriented Programming Lab', 1),
('MTC1023', '2', 9, 'Calculus II', 3),
('MTC1033', '2', 10, 'Linear Algebra', 3),
('HMC1012', '2', 11, 'Islamic Studies/Ethics', 2),
('HMC1023', '2', 12, 'English – II (Communication Skills)', 3),
('HM2xx3', '2', 13, 'Humanities – I', 3),
('CS2143', '3', 14, 'Data Structures', 3),
('CS2141', '3', 15, 'Data Structures Lab', 1),
('CS2313', '3', 16, 'Introduction to Database Systems', 3),
('CS2311', '3', 17, 'Introduction to Database Lab', 1),
('CS2513', '3', 18, 'Digital Logic Design', 3),
('HMC2033', '3', 19, 'Technical Report Writing', 3),
('HM3xx3', '3', 20, 'Humanities – II', 3),
('CS2223', '4', 21, 'Software Engineering – I', 3),
('CS2523', '4', 22, 'Computer Organization and Assembly Language', 3),
('CS2153', '4', 23, 'Advanced Computer Programming', 3),
('CS2151', '4', 24, 'Advanced Computer Programming Lab', 1),
('MT2053', '4', 25, 'Discrete Mathematics	', 3),
('MT3063', '4', 26, 'Probability and Statistics	', 3),
('CS3163', '5', 27, 'Design and Analysis of Algorithms	', 3),
('CS3213', '5', 28, 'Object Oriented Analysis and Design	', 3),
('CS3413', '5', 29, 'Operating Systems	', 3),
('CS3643', '5', 30, 'Software Architecture	', 3),
('CS3513', '5', 31, 'Software Requirement Engineering	', 3),
('CS3411', '5', 32, 'Operating Systems Lab	', 1),
('CS3773', '6', 33, 'Computer Communications and Networks	', 3),
('CS3633', '6', 34, 'Software Testing	', 3),
('CS3273', '6', 35, 'Human Computer Interaction	', 3),
('CS3823', '6', 36, 'Agile Software Development', 3),
('CS3xx3', '6', 37, 'Elective 1	', 3),
('CS3xx3', '6', 38, 'Elective 2', 3),
('CS4273', '7', 39, 'Software Project Management', 3),
('CS4912', '7', 40, 'Design Project (Part – I)', 2),
('MGT3xx3', '7', 41, 'Management Elective-I', 3),
('CS4xx3', '7', 42, 'Elective3', 3),
('CS4xx3', '7', 43, 'Elective4', 3),
('CS4xx3', '7', 44, 'Elective5	', 3),
('CS4924', '8', 45, 'Design Project (Part – II)', 4),
('MGTC3xx3', '8', 46, 'Management Elective – II', 3),
('CS4xx3', '8', 47, 'Elective 6', 3),
(' CS4xx3', '8', 48, 'Elective 7', 3),
(' CS4xx3', '8', 49, 'Elective 8', 3);

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `scoreId` int(11) NOT NULL,
  `words` varchar(50) DEFAULT NULL,
  `points` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`scoreId`, `words`, `points`) VALUES
(1, 'good', 0.5),
(2, 'nice', 0.5),
(4, 'very nice', 0.75),
(5, 'very good', 0.75),
(8, 'bad', -0.5),
(9, 'irritating', -1),
(10, 'boring', -0.5);

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `semNo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`semNo`) VALUES
('1'),
('10'),
('11'),
('12'),
('2'),
('3'),
('4'),
('5'),
('6'),
('7'),
('8'),
('9');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `regno` varchar(50) NOT NULL,
  `sName` varchar(50) DEFAULT NULL,
  `sPassword` varchar(50) NOT NULL,
  `program` char(10) NOT NULL,
  `CGPA` double DEFAULT NULL,
  `batch` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`regno`, `sName`, `sPassword`, `program`, `CGPA`, `batch`) VALUES
('bcs161999', 'Sherjil Malik', '1999', 'CS', 3.79, '161'),
('bse161002', 'Syeda Farwa Zahra', '1002', 'SE', 3.29, '161'),
('bse161007', 'Alishba Kousar', '1007', 'SE', 3.05, '161'),
('bse161017', 'Ifra Naseer', '1017', 'SE', 3.05, '161');

-- --------------------------------------------------------

--
-- Table structure for table `transcript`
--

CREATE TABLE `transcript` (
  `id` int(11) NOT NULL,
  `STUDENT` varchar(50) DEFAULT NULL,
  `coursecode` varchar(50) DEFAULT NULL,
  `SEMESTER` varchar(50) DEFAULT NULL,
  `grade` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transcript`
--

INSERT INTO `transcript` (`id`, `STUDENT`, `coursecode`, `SEMESTER`, `grade`) VALUES
(1, 'bse161017', 'CS1131', '1', 'C+'),
(2, 'bse161017', 'CS1123', '1', 'C+'),
(3, 'bse161017', 'HMC1002', '1', 'B'),
(4, 'bse161017', 'HMC1013', '1', 'C+'),
(5, 'bse161017', 'MTC1013', '1', 'B+'),
(6, 'bse161017', 'PHC1013', '1', 'C'),
(7, 'bse161017', 'CS1141', '2', 'B+'),
(8, 'bse161017', 'CS1143', '2', 'C+'),
(9, 'bse161017', 'HMC1012', '2', 'B-'),
(10, 'bse161017', 'HMC1023', '2', 'B-'),
(11, 'bse161017', 'HMC2053', '2', 'B'),
(12, 'bse161017', 'MTC1023', '2', 'C'),
(13, 'bse161017', 'CS2141', '3', 'A'),
(14, 'bse161017', 'CS2143', '3', 'B-'),
(15, 'bse161017', 'CS2311', '3', 'B'),
(16, 'bse161017', 'CS2313', '3', 'B'),
(17, 'bse161017', 'CS2513', '3', 'B+'),
(18, 'bse161017', 'HMC2033', '3', 'B'),
(19, 'bse161017', 'CS2511', '3', 'B'),
(20, 'bse161017', 'HMC3123', '3', 'A'),
(21, 'bse161017', 'CS2151', '4', 'B-'),
(22, 'bse161017', 'CS2153', '4', 'B-'),
(23, 'bse161017', 'CS2223', '4', 'B'),
(24, 'bse161017', 'MT2053', '4', 'B'),
(25, 'bse161017', 'MT3063', '4', 'B-'),
(26, 'bse161017', 'CS2523', '4', 'B+'),
(27, 'bse161017', 'CS2521', '4', 'B'),
(28, 'bse161017', 'CS3163', '5', 'A-'),
(29, 'bse161017', 'CS3213', '5', 'B+'),
(30, 'bse161017', 'CS3411', '5', 'C'),
(31, 'bse161017', 'CS3413', '5', 'B'),
(32, 'bse161017', 'CS3263', '5', 'B+'),
(33, 'bse161017', 'CS3643', '5', 'B+'),
(34, 'bse161017', 'CS3191', '6', 'A-'),
(35, 'bse161017', 'CS3193', '6', 'B'),
(36, 'bse161017', 'CS3272', '6', 'B+'),
(37, 'bse161017', 'CS3633', '6', 'A-'),
(38, 'bse161017', 'CS3271', '6', 'A'),
(39, 'bse161017', 'SE4293', '6', 'B+'),
(40, 'bse161017', 'CS3823', '6', 'B+'),
(41, 'bse161017', 'CS3771', '6', 'B-'),
(42, 'bse161017', 'CS3772', '6', 'B-'),
(43, 'bse161017', 'ACC2003', '7', 'B+'),
(44, 'bse161017', 'SE4193', '7', 'B'),
(45, 'bse161017', 'SE4191', '7', 'B'),
(46, 'bse161017', 'MTC1033', '7', 'A'),
(47, 'bse161017', 'SE4273', '7', 'B-'),
(48, 'bse161017', 'SE4912', '7', 'B+'),
(49, 'bse161017', 'SE3233', '7', 'B+'),
(50, 'bse161007', 'CS1131', '1', 'B-'),
(51, 'bse161007', 'CS1123', '1', 'C+'),
(52, 'bse161007', 'HMC1002', '1', 'A'),
(53, 'bse161007', 'HMC1013', '1', 'C'),
(54, 'bse161007', 'MTC1013', '1', 'B'),
(55, 'bse161007', 'PHC1013', '1', 'C+'),
(56, 'bse161007', 'CS1141', '2', 'B'),
(57, 'bse161007', 'CS1143', '2', 'B-'),
(58, 'bse161007', 'HMC1023', '2', 'B'),
(59, 'bse161007', 'HMC2053', '2', 'B+'),
(60, 'bse161007', 'MTC1023', '2', 'B'),
(61, 'bse161007', 'HMC2053', '2', 'A-'),
(62, 'bse161007', 'CS2141', '3', 'C+'),
(63, 'bse161007', 'CS2143', '3', 'C+'),
(64, 'bse161007', 'CS2311', '3', 'C+'),
(65, 'bse161007', 'CS2313', '3', 'C+'),
(66, 'bse161007', 'CS2511', '3', 'A-'),
(67, 'bse161007', 'CS2513', '3', 'A-'),
(68, 'bse161007', 'HMC2033', '3', 'A-'),
(69, 'bse161007', 'HMC3123', '3', 'A-'),
(70, 'bse161007', 'CS2151', '4', 'A-'),
(71, 'bse161007', 'CS2153', '4', 'B-'),
(72, 'bse161007', 'CS2523', '4', 'C+'),
(73, 'bse161007', 'CS2521', '4', 'B'),
(74, 'bse161007', 'MTC1033', '4', 'B'),
(75, 'bse161007', 'MT2053', '4', 'B'),
(76, 'bse161007', 'CS2223', '4', 'B+'),
(77, 'bse161007', 'CS3163', '5', 'B+'),
(78, 'bse161007', 'CS3213', '5', 'C'),
(79, 'bse161007', 'CS3411', '5', 'C'),
(80, 'bse161007', 'CS3413', '5', 'B-'),
(81, 'bse161007', 'MT3063', '5', 'B+'),
(82, 'bse161007', 'CS3263', '5', 'A-'),
(83, 'bse161007', 'CS3643', '5', 'B'),
(84, 'bse161007', 'CS3191', '6', 'B-'),
(85, 'bse161007', 'CS3193', '6', 'B-'),
(86, 'bse161007', 'CS3272', '6', 'A'),
(87, 'bse161007', 'CS3271', '6', 'A-'),
(88, 'bse161007', 'CS3771', '6', 'B-'),
(89, 'bse161007', 'CS3772', '6', 'B'),
(90, 'bse161007', 'CS3633', '6', 'B+'),
(91, 'bse161007', 'CS3823', '6', 'A-'),
(92, 'bse161007', 'ACC2003', '7', 'B-'),
(93, 'bse161007', 'SE4273', '7', 'B'),
(94, 'bse161007', 'SE4191', '7', 'B+'),
(95, 'bse161007', 'SE4193', '7', 'B'),
(96, 'bse161007', 'SE4912', '7', 'B+'),
(97, 'bse161007', 'SE3233', '7', 'A-'),
(98, 'bse161007', 'CS3181', '7', 'B-'),
(99, 'bse161007', 'CS3183', '7', 'A-'),
(100, 'bcs161999', 'CS1131', '1', 'B+'),
(101, 'bcs161999', 'CS1123', '1', 'A'),
(102, 'bcs161999', 'HMC1002', '1', 'A'),
(103, 'bcs161999', 'HMC1013', '1', 'A'),
(104, 'bcs161999', 'MTC1013', '1', 'A'),
(105, 'bcs161999', 'PHC1013', '1', 'A'),
(106, 'bcs161999', 'CS1141', '2', 'A'),
(107, 'bcs161999', 'CS1143', '2', 'A'),
(108, 'bcs161999', 'HMC1023', '2', 'A-'),
(109, 'bcs161999', 'HMC2053', '2', 'A-'),
(110, 'bcs161999', 'HMC1012', '2', 'A'),
(111, 'bcs161999', 'MTC1023', '2', 'B+'),
(112, 'bcs161999', 'MTC1023', '2', 'A-'),
(113, 'bcs161999', 'CS2141', '3', 'A'),
(114, 'bcs161999', 'CS2143', '3', 'A'),
(115, 'bcs161999', 'CS2311', '3', 'A'),
(116, 'bcs161999', 'CS2313', '3', 'B+'),
(117, 'bcs161999', 'CS2511', '3', 'A-'),
(118, 'bcs161999', 'CS2513', '3', 'A'),
(119, 'bcs161999', 'HMC2033', '3', 'A'),
(120, 'bcs161999', 'HMC3123', '3', 'A'),
(121, 'bcs161999', 'CS2151', '4', 'A-'),
(122, 'bcs161999', 'CS2153', '4', 'A'),
(123, 'bcs161999', 'CS2521', '4', 'A'),
(124, 'bcs161999', 'CS2523', '4', 'A'),
(125, 'bcs161999', 'MT2053', '4', 'B+'),
(126, 'bcs161999', 'CS2223', '4', 'B+'),
(127, 'bcs161999', 'MTC2043', '4', 'A'),
(128, 'bcs161999', 'CS3163', '5', 'A-'),
(129, 'bcs161999', 'CS3411', '5', 'A'),
(130, 'bcs161999', 'CS3513', '5', 'A'),
(131, 'bcs161999', 'CS3772', '5', 'A'),
(132, 'bcs161999', 'MT3063', '5', 'B+'),
(133, 'bcs161999', 'CS3413', '5', 'A'),
(134, 'bcs161999', 'CS3191', '6', 'A'),
(135, 'bcs161999', 'CS3193', '6', 'A'),
(136, 'bcs161999', 'CS3271', '6', 'A'),
(137, 'bcs161999', 'CS3272', '6', 'A'),
(138, 'bcs161999', 'CS3613', '6', 'B+'),
(139, 'bcs161999', 'CS4883', '6', 'B+'),
(140, 'bcs161999', 'CS3843', '6', 'A'),
(141, 'bcs161999', 'CS3213', '6', 'A'),
(142, 'bcs161999', 'ACC2003', '7', 'A-'),
(143, 'bcs161999', 'CS3181', '7', 'A'),
(144, 'bcs161999', 'CS3183', '7', 'A'),
(145, 'bcs161999', 'SE4191', '7', 'A'),
(146, 'bcs161999', 'SE4193', '7', 'A-'),
(147, 'bcs161999', 'CS4621', '7', 'A'),
(148, 'bcs161999', 'CS4622', '7', 'A'),
(149, 'bcs161999', 'CS4811', '7', 'A'),
(150, 'bcs161999', 'CS4812', '7', 'B+');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PROGRAMSTRUCTURE` (`PROGRAMSTRUCTURE`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CatId`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`coursecode`),
  ADD KEY `CATEGORY` (`CATEGORY`);

--
-- Indexes for table `courseoffering`
--
ALTER TABLE `courseoffering`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `course` (`COURSE`),
  ADD KEY `SEMESTER` (`SEMESTER`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackId`),
  ADD KEY `coursecode` (`coursecode`),
  ADD KEY `STUDENT` (`STUDENT`),
  ADD KEY `rate` (`rateNo`);

--
-- Indexes for table `inscrssem`
--
ALTER TABLE `inscrssem`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `COURSE` (`coursecode`),
  ADD KEY `INSTRUCTOR` (`INSTRUCTOR`),
  ADD KEY `SEMESTER` (`SEMESTER`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`iUserName`);

--
-- Indexes for table `prereq`
--
ALTER TABLE `prereq`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `coursecode` (`coursecode`),
  ADD KEY `preReq` (`preReq`);

--
-- Indexes for table `programstructure`
--
ALTER TABLE `programstructure`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CATEGORY` (`CATEGORY`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`rateNo`);

--
-- Indexes for table `roadmap`
--
ALTER TABLE `roadmap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sem` (`SEMESTER`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`scoreId`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semNo`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`regno`);

--
-- Indexes for table `transcript`
--
ALTER TABLE `transcript`
  ADD PRIMARY KEY (`id`),
  ADD KEY `COURSE` (`coursecode`),
  ADD KEY `SEMESTER` (`SEMESTER`),
  ADD KEY `STUDENT` (`STUDENT`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CatId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `courseoffering`
--
ALTER TABLE `courseoffering`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `inscrssem`
--
ALTER TABLE `inscrssem`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `prereq`
--
ALTER TABLE `prereq`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `programstructure`
--
ALTER TABLE `programstructure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roadmap`
--
ALTER TABLE `roadmap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `scoreId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transcript`
--
ALTER TABLE `transcript`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `batch`
--
ALTER TABLE `batch`
  ADD CONSTRAINT `batch_ibfk_1` FOREIGN KEY (`PROGRAMSTRUCTURE`) REFERENCES `programstructure` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`CATEGORY`) REFERENCES `category` (`CatId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `courseoffering`
--
ALTER TABLE `courseoffering`
  ADD CONSTRAINT `course` FOREIGN KEY (`COURSE`) REFERENCES `course` (`coursecode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `courseoffering_ibfk_1` FOREIGN KEY (`SEMESTER`) REFERENCES `semester` (`semNo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`coursecode`) REFERENCES `course` (`coursecode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`STUDENT`) REFERENCES `student` (`regno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feedback_ibfk_3` FOREIGN KEY (`rateNo`) REFERENCES `rate` (`rateNo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inscrssem`
--
ALTER TABLE `inscrssem`
  ADD CONSTRAINT `inscrssem_ibfk_1` FOREIGN KEY (`coursecode`) REFERENCES `course` (`coursecode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inscrssem_ibfk_2` FOREIGN KEY (`INSTRUCTOR`) REFERENCES `instructor` (`iUserName`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inscrssem_ibfk_3` FOREIGN KEY (`SEMESTER`) REFERENCES `semester` (`semNo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prereq`
--
ALTER TABLE `prereq`
  ADD CONSTRAINT `prereq_ibfk_1` FOREIGN KEY (`coursecode`) REFERENCES `course` (`coursecode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prereq_ibfk_2` FOREIGN KEY (`preReq`) REFERENCES `course` (`coursecode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `programstructure`
--
ALTER TABLE `programstructure`
  ADD CONSTRAINT `CATEGORY` FOREIGN KEY (`CATEGORY`) REFERENCES `category` (`CatId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `roadmap`
--
ALTER TABLE `roadmap`
  ADD CONSTRAINT `roadmap_ibfk_1` FOREIGN KEY (`SEMESTER`) REFERENCES `semester` (`semNo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transcript`
--
ALTER TABLE `transcript`
  ADD CONSTRAINT `transcript_ibfk_1` FOREIGN KEY (`coursecode`) REFERENCES `course` (`coursecode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transcript_ibfk_2` FOREIGN KEY (`SEMESTER`) REFERENCES `semester` (`semNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transcript_ibfk_3` FOREIGN KEY (`STUDENT`) REFERENCES `student` (`regno`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
