-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2024 at 12:49 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votingdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `AutoID` int(11) NOT NULL,
  `AutoStart` varchar(30) NOT NULL,
  `AutoEnd` int(11) NOT NULL,
  `AutoInc` int(11) NOT NULL,
  `AutoType` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblautonumber`
--

INSERT INTO `tblautonumber` (`AutoID`, `AutoStart`, `AutoEnd`, `AutoInc`, `AutoType`) VALUES
(1, '2017', 58, 1, 'AuthPrint');

-- --------------------------------------------------------

--
-- Table structure for table `tblcandidate`
--

CREATE TABLE `tblcandidate` (
  `CandidateID` int(11) NOT NULL,
  `StudentID` varchar(50) NOT NULL,
  `Position` varchar(30) NOT NULL,
  `PartyList` varchar(99) NOT NULL,
  `RunningDate` date NOT NULL,
  `Platform` longtext NOT NULL,
  `TotalVotes` int(11) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcandidate`
--

INSERT INTO `tblcandidate` (`CandidateID`, `StudentID`, `Position`, `PartyList`, `RunningDate`, `Platform`, `TotalVotes`, `Remarks`) VALUES
(21, '023256469', 'President', 'PartyList 1', '2017-02-22', 'ssadasd', 0, ''),
(22, '12312312', 'President', 'PartyList 2', '2017-02-22', 'asdasdasdasd asd asdas', 0, ''),
(23, '0010266936', 'Vice-President', 'PartyList 1', '2017-02-22', 'asdasdas', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `CourseID` int(11) NOT NULL,
  `CourseCode` varchar(30) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `DepartmentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcourse`
--

INSERT INTO `tblcourse` (`CourseID`, `CourseCode`, `Description`, `DepartmentID`) VALUES
(3, 'BSIT', 'BACHELOR OF SCIENCE IN INFORMATION TECHNOLOGY', 1),
(4, 'BEED', 'BACHELOR OF SCIENCE IN ELEMENTARY EDUCATION', 4),
(5, 'BSBA Financial Management', 'BACHELOR OF SCIENCE IN BUSINES ADMINISTRATION', 3),
(6, 'BSED', 'BACHELOR  OF SCIENCE IN SECONDARY EDUCATION', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartment`
--

CREATE TABLE `tbldepartment` (
  `DepartmentID` int(11) NOT NULL,
  `Department` varchar(30) NOT NULL,
  `Description` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbldepartment`
--

INSERT INTO `tbldepartment` (`DepartmentID`, `Department`, `Description`) VALUES
(1, 'ITE', 'IT DEPARTMENT'),
(3, 'BITE', 'BUSINESS AND IT EDUCATION'),
(4, 'TEA', 'TEACHER EDUCATION DEPARTMENT');

-- --------------------------------------------------------

--
-- Table structure for table `tblevents`
--

CREATE TABLE `tblevents` (
  `EventID` int(11) NOT NULL,
  `Event` varchar(99) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `EventDate` date NOT NULL,
  `EventTime` varchar(30) NOT NULL,
  `EventPhoto` varchar(125) NOT NULL,
  `Incharge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblevents`
--

INSERT INTO `tblevents` (`EventID`, `Event`, `Description`, `EventDate`, `EventTime`, `EventPhoto`, `Incharge`) VALUES
(7, 'BASKETBALL', 'A VS B', '2024-02-06', '10:22 pm', 'photo/Chrysanthemum.jpg', 1),
(8, 'FOOTBALL', 'MICROBIOLOGY ', '2024-06-10', '04:30 pm', 'photo/LOGO.1.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbleventwinner`
--

CREATE TABLE `tbleventwinner` (
  `EWID` int(11) NOT NULL,
  `EventID` int(11) NOT NULL,
  `EWinners` varchar(90) NOT NULL,
  `ACCOUNT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbleventwinner`
--

INSERT INTO `tbleventwinner` (`EWID`, `EventID`, `EWinners`, `ACCOUNT_ID`) VALUES
(4, 4, 'FOURTH YEAR', 1),
(5, 5, 'THIRD YEAR', 1),
(6, 6, 'A', 1),
(7, 7, 'A', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbllogs`
--

CREATE TABLE `tbllogs` (
  `LOGID` int(11) NOT NULL,
  `USERID` int(11) NOT NULL,
  `LOGDATETIME` datetime NOT NULL,
  `LOGROLE` varchar(30) NOT NULL,
  `LOGMODE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbllogs`
--

INSERT INTO `tbllogs` (`LOGID`, `USERID`, `LOGDATETIME`, `LOGROLE`, `LOGMODE`) VALUES
(1, 1, '2017-01-24 01:53:37', 'Administrator', 'Logged out'),
(2, 1, '2017-01-24 02:48:48', 'Administrator', 'Logged in'),
(3, 1, '2017-01-24 06:45:15', 'Administrator', 'Logged out'),
(4, 1, '2017-01-24 06:45:19', 'Administrator', 'Logged in'),
(5, 1, '2017-01-24 06:51:14', 'Administrator', 'Logged out'),
(6, 1, '2017-01-29 07:40:53', 'Administrator', 'Logged in'),
(7, 1, '2017-01-29 07:41:02', 'Administrator', 'Logged out'),
(8, 1, '2017-01-29 07:43:38', 'Administrator', 'Logged in'),
(9, 1, '2017-01-29 07:44:28', 'Administrator', 'Logged in'),
(10, 1, '2017-01-29 07:44:38', 'Administrator', 'Logged out'),
(11, 1, '2017-01-29 07:44:45', 'Administrator', 'Logged in'),
(12, 1, '2017-01-29 07:44:52', 'Administrator', 'Logged out'),
(13, 1, '2017-01-29 07:45:47', 'Administrator', 'Logged in'),
(14, 1, '2017-01-29 07:49:33', 'Administrator', 'Logged out'),
(15, 1, '2017-01-29 07:49:38', 'Administrator', 'Logged in'),
(16, 1, '2017-01-29 07:53:10', 'Administrator', 'Logged out'),
(17, 1, '2017-01-29 07:53:37', 'Administrator', 'Logged in'),
(18, 1, '2017-01-29 09:05:02', 'Administrator', 'Logged out'),
(19, 1, '2017-01-29 09:05:15', 'Administrator', 'Logged in'),
(20, 1, '2017-01-29 09:21:21', 'Administrator', 'Logged out'),
(21, 1, '2017-01-29 09:21:27', 'Administrator', 'Logged in'),
(22, 1, '2017-01-29 09:22:12', 'Administrator', 'Logged out'),
(23, 1, '2017-01-29 09:22:16', 'Administrator', 'Logged in'),
(24, 1, '2017-01-29 11:22:09', 'Administrator', 'Logged out'),
(25, 1, '2017-01-29 11:22:39', 'Administrator', 'Logged in'),
(26, 1, '2017-01-29 11:37:32', 'Administrator', 'Logged out'),
(27, 1, '2017-01-30 08:28:49', 'Administrator', 'Logged in'),
(28, 1, '2017-01-30 09:40:52', 'Administrator', 'Logged out'),
(29, 1, '2017-01-30 09:41:39', 'Administrator', 'Logged in'),
(30, 1, '2017-01-30 11:15:50', 'Administrator', 'Logged out'),
(31, 1, '2017-02-03 05:57:55', 'Administrator', 'Logged in'),
(32, 1, '2017-02-03 06:23:40', 'Administrator', 'Logged out'),
(33, 1, '2017-02-06 03:44:59', 'Administrator', 'Logged in'),
(34, 1, '2017-02-10 10:56:48', 'Administrator', 'Logged in'),
(35, 1, '2017-02-11 06:40:48', 'Administrator', 'Logged in'),
(36, 1, '2017-02-11 08:22:58', 'Administrator', 'Logged out'),
(37, 1, '2017-02-11 08:23:08', 'Administrator', 'Logged in'),
(38, 1, '2017-02-11 10:21:32', 'Administrator', 'Logged out'),
(39, 1, '2017-02-11 10:21:36', 'Administrator', 'Logged in'),
(40, 1, '2017-02-11 12:44:15', 'Administrator', 'Logged out'),
(41, 1, '2017-02-11 12:44:22', 'Administrator', 'Logged in'),
(42, 1, '2017-02-11 13:09:14', 'Administrator', 'Logged out'),
(43, 1, '2017-02-11 13:09:42', 'Administrator', 'Logged in'),
(44, 1, '2017-02-12 08:21:30', 'Administrator', 'Logged in'),
(45, 1, '2017-02-12 11:52:58', 'Administrator', 'Logged in'),
(46, 1, '2017-02-12 13:11:42', 'Administrator', 'Logged out'),
(47, 1, '2017-02-12 13:12:00', 'Administrator', 'Logged in'),
(48, 1, '2017-02-12 13:14:59', 'Administrator', 'Logged out'),
(49, 1, '2017-02-12 13:17:23', 'Administrator', 'Logged in'),
(50, 1, '2017-02-13 06:35:27', 'Administrator', 'Logged out'),
(51, 1, '2017-02-13 06:35:54', 'Administrator', 'Logged in'),
(52, 1, '2017-02-13 06:44:05', 'Administrator', 'Logged out'),
(53, 1, '2017-02-13 06:46:07', 'Administrator', 'Logged in'),
(54, 1, '2017-02-13 07:10:54', 'Administrator', 'Logged out'),
(55, 1, '2017-02-13 07:11:57', 'Administrator', 'Logged in'),
(56, 1, '2017-02-13 07:55:22', 'Administrator', 'Logged in'),
(57, 1, '2017-02-13 07:55:38', 'Administrator', 'Logged out'),
(58, 1, '2017-02-13 07:57:00', 'Administrator', 'Logged in'),
(59, 1, '2017-02-13 08:03:54', 'Administrator', 'Logged out'),
(60, 1, '2017-02-13 08:04:05', 'Administrator', 'Logged in'),
(61, 1, '2017-02-13 08:42:41', 'Administrator', 'Logged out'),
(62, 1, '2017-02-13 08:42:49', 'Administrator', 'Logged in'),
(63, 1, '2017-02-13 09:07:34', 'Administrator', 'Logged out'),
(64, 1, '2017-02-13 09:07:43', 'Administrator', 'Logged in'),
(65, 1, '2017-02-13 09:25:02', 'Administrator', 'Logged out'),
(66, 1, '2017-02-13 09:25:11', 'Administrator', 'Logged in'),
(67, 1, '2017-02-13 09:26:01', 'Administrator', 'Logged out'),
(68, 1, '2017-02-13 09:26:17', 'Administrator', 'Logged in'),
(69, 1, '2017-02-13 09:48:09', 'Administrator', 'Logged out'),
(70, 1, '2017-02-13 09:48:51', 'Administrator', 'Logged in'),
(71, 1, '2017-02-13 09:52:24', 'Administrator', 'Logged out'),
(72, 1, '2017-02-13 09:53:22', 'Administrator', 'Logged in'),
(73, 1, '2017-02-13 10:04:28', 'Administrator', 'Logged out'),
(74, 1, '2017-02-13 10:04:33', 'Administrator', 'Logged in'),
(75, 1, '2017-02-13 10:04:58', 'Administrator', 'Logged out'),
(76, 1, '2017-02-13 10:05:05', 'Administrator', 'Logged in'),
(77, 1, '2017-02-14 05:24:23', 'Administrator', 'Logged in'),
(78, 1, '2017-02-14 06:08:35', 'Administrator', 'Logged out'),
(79, 1, '2017-02-14 08:08:19', 'Administrator', 'Logged in'),
(80, 1, '2017-02-14 08:37:12', 'Administrator', 'Logged out'),
(81, 1, '2017-02-14 08:37:23', 'Administrator', 'Logged in'),
(82, 1, '2017-02-14 08:52:18', 'Administrator', 'Logged out'),
(83, 1, '2017-02-14 08:54:10', 'Administrator', 'Logged in'),
(84, 1, '2017-02-17 00:51:27', 'Administrator', 'Logged in'),
(85, 1, '2017-02-17 05:10:46', 'Administrator', 'Logged out'),
(86, 1, '2017-02-17 05:11:57', 'Administrator', 'Logged in'),
(87, 1, '2017-02-17 05:18:17', 'Administrator', 'Logged out'),
(88, 1, '2017-02-17 05:20:56', 'Administrator', 'Logged in'),
(89, 1, '2017-02-17 05:36:58', 'Administrator', 'Logged in'),
(90, 1, '2017-02-17 06:07:09', 'Administrator', 'Logged out'),
(91, 1, '2017-02-18 02:00:39', 'Administrator', 'Logged in'),
(92, 1, '2017-02-19 03:15:19', 'Administrator', 'Logged in'),
(93, 1, '2017-02-19 06:33:26', 'Administrator', 'Logged out'),
(94, 1, '2017-02-19 06:33:54', 'Administrator', 'Logged in'),
(95, 1, '2017-02-19 06:34:02', 'Administrator', 'Logged out'),
(96, 1, '2017-02-20 03:42:46', 'Administrator', 'Logged in'),
(97, 1, '2017-02-23 06:46:15', 'Administrator', 'Logged in'),
(98, 1, '2017-02-26 12:38:40', 'Administrator', 'Logged in'),
(99, 1, '2017-02-26 12:50:05', 'Administrator', 'Logged out'),
(100, 1, '2017-02-26 12:50:17', 'Administrator', 'Logged in'),
(101, 1, '2017-02-26 12:53:11', 'Administrator', 'Logged out'),
(102, 1, '2017-02-26 13:11:17', 'Administrator', 'Logged in'),
(103, 1, '2017-03-02 06:34:19', 'Administrator', 'Logged in'),
(104, 1, '2017-03-02 08:29:24', 'Administrator', 'Logged in'),
(105, 1, '2017-03-02 11:37:04', 'Administrator', 'Logged out'),
(106, 1, '2017-03-02 11:37:45', 'Administrator', 'Logged in'),
(107, 1, '2017-03-02 11:38:33', 'Administrator', 'Logged out'),
(108, 6, '2017-03-02 11:38:45', 'Registrar', 'Logged in'),
(109, 6, '2017-03-02 11:51:59', 'Registrar', 'Logged out'),
(110, 1, '2017-03-02 13:42:16', 'Administrator', 'Logged in'),
(111, 1, '2017-03-02 13:45:38', 'Administrator', 'Logged out'),
(112, 1, '2017-03-02 13:45:44', 'Administrator', 'Logged in'),
(113, 1, '2017-03-03 03:00:06', 'Administrator', 'Logged out'),
(114, 1, '2017-03-03 05:56:11', 'Administrator', 'Logged in'),
(115, 1, '2017-03-03 10:11:18', 'Administrator', 'Logged out'),
(116, 1, '2017-03-03 10:28:36', 'Administrator', 'Logged in'),
(117, 1, '2017-03-03 10:43:02', 'Administrator', 'Logged out'),
(118, 7, '2017-03-03 10:43:10', 'Registrar', 'Logged in'),
(119, 7, '2017-03-03 10:43:36', 'Registrar', 'Logged out'),
(120, 1, '2017-03-03 10:43:41', 'Administrator', 'Logged in'),
(121, 1, '2017-03-03 10:44:50', 'Administrator', 'Logged out'),
(122, 7, '2017-03-03 10:44:55', 'Registrar', 'Logged in'),
(123, 7, '2017-03-03 10:48:53', 'Registrar', 'Logged out'),
(124, 1, '2017-03-03 10:48:57', 'Administrator', 'Logged in'),
(125, 1, '2017-03-03 11:17:36', 'Administrator', 'Logged in'),
(126, 1, '2017-03-03 18:21:25', 'Administrator', 'Logged in'),
(127, 1, '2017-03-04 00:16:04', 'Administrator', 'Logged in'),
(128, 1, '2017-03-04 10:59:24', 'Administrator', 'Logged in'),
(129, 1, '2017-03-04 11:13:16', 'Administrator', 'Logged in'),
(130, 1, '2017-03-04 11:15:49', 'Administrator', 'Logged out'),
(131, 8, '2017-03-04 11:15:57', 'Registrar', 'Logged in'),
(132, 8, '2017-03-04 11:16:32', 'Registrar', 'Logged out'),
(133, 1, '2017-03-04 11:16:37', 'Administrator', 'Logged in'),
(134, 1, '2017-03-04 17:55:52', 'Administrator', 'Logged in'),
(135, 1, '2017-03-05 09:43:48', 'Administrator', 'Logged in'),
(136, 1, '2017-03-05 13:36:22', 'Administrator', 'Logged out'),
(137, 1, '2017-03-05 13:36:45', 'Administrator', 'Logged in'),
(138, 1, '2017-03-05 13:54:39', 'Administrator', 'Logged out'),
(139, 1, '2017-03-08 07:54:02', 'Administrator', 'Logged in'),
(140, 1, '2017-03-08 08:02:08', 'Administrator', 'Logged out'),
(141, 1, '2017-03-13 10:52:30', 'Administrator', 'Logged in'),
(142, 1, '2017-03-14 20:18:18', 'Administrator', 'Logged in'),
(143, 1, '2017-03-14 22:36:17', 'Administrator', 'Logged in'),
(144, 1, '2017-03-15 02:02:32', 'Administrator', 'Logged in'),
(145, 1, '2017-03-16 03:43:51', 'Administrator', 'Logged in'),
(146, 1, '2017-03-16 04:05:04', 'Administrator', 'Logged out'),
(147, 1, '2024-05-07 17:06:48', 'Administrator', 'Logged in'),
(148, 1, '2024-05-10 11:37:45', 'Administrator', 'Logged in'),
(149, 1, '2024-05-10 11:59:59', 'Administrator', 'Logged out'),
(150, 1, '2024-05-10 12:00:02', 'Administrator', 'Logged in'),
(151, 1, '2024-05-10 12:35:36', 'Administrator', 'Logged out'),
(152, 1, '2024-05-10 12:39:47', 'Administrator', 'Logged in');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `ID` int(11) NOT NULL,
  `StudentID` varchar(30) NOT NULL,
  `Firstname` varchar(99) NOT NULL,
  `Lastname` varchar(99) NOT NULL,
  `Middlename` varchar(99) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Gender` varchar(30) NOT NULL,
  `BirthDate` date NOT NULL,
  `Age` int(11) NOT NULL,
  `ContactNo` varchar(30) NOT NULL,
  `YearLevel` varchar(11) NOT NULL,
  `CourseID` int(11) NOT NULL,
  `StudPhoto` varchar(255) NOT NULL,
  `Cand_Status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`ID`, `StudentID`, `Firstname`, `Lastname`, `Middlename`, `Address`, `Gender`, `BirthDate`, `Age`, `ContactNo`, `YearLevel`, `CourseID`, `StudPhoto`, `Cand_Status`) VALUES
(1, '023256469', 'ABUBAKAR ', 'SADIQ', 'SANI', 'DAKWA, ABUJA', 'Male', '2000-01-01', 24, '07040785134', 'Fourth', 3, 'photo/login.png', 'Candidate'),
(2, '12312312', 'JAMIL', 'UMAR', '   ', 'KADUNA CITY', 'Male', '2002-11-11', 21, '12312312312', 'Third', 3, 'photo/import1.png', 'Candidate'),
(3, '8583362', 'AUWAL', 'SHUAIBU', 'MUHAMMAD ', 'KATSINA', 'Male', '1991-08-16', 32, '12312312312', 'First', 3, '', 'Candidate'),
(4, '0010266936', 'ISMAIL', 'MUHAMMAD', 'SANI', 'JOS', 'Male', '1994-02-14', 30, '21312312312321', 'First', 3, 'photo/Koala.jpg', 'Candidate'),
(5, '8798794', 'JEGA', 'ATTAHIR', 'ISMAIL', 'KATSINA', 'Male', '1989-04-26', 35, '09047894777', 'Second', 4, '', ''),
(6, '8675543', 'CHESKA', 'RAMIREZ', 'UY', 'KABANKALAN CITY', 'Female', '1990-01-31', 27, '09567435788', 'Third', 5, '', ''),
(7, '1253235', 'RAMON', 'CORPUZ', 'SANTOS', 'DANCALAN, ILOG', 'Male', '1994-02-17', 23, '09567453453', 'First', 3, '', ''),
(8, '654567896', 'KAREN', 'VARGAS', 'ONG', 'KABANKALAN CITY', 'Female', '1993-03-22', 23, '09457545699', 'First', 3, '', ''),
(9, '5434689', 'KENMARK', 'REYES', 'DELA CRUZ', 'SUAY, HIMAMAYLAN CITY', 'Male', '1992-11-16', 24, '09567534689', 'First', 6, '', ''),
(10, '57053590', 'CHERYL', 'LACSON', 'PADILLA', 'KABANKALAN CITY', 'Female', '1990-05-25', 26, '09206543456', 'Second', 3, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbltimetable`
--

CREATE TABLE `tbltimetable` (
  `TimeTableID` int(11) NOT NULL,
  `StudentID` varchar(90) NOT NULL,
  `TimeInAM` varchar(30) NOT NULL,
  `TimeOutAM` varchar(30) NOT NULL,
  `TimeInPM` varchar(30) NOT NULL,
  `TimeOutPM` varchar(30) NOT NULL,
  `AttendDate` date NOT NULL,
  `AttendEvent` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltimetable`
--

INSERT INTO `tbltimetable` (`TimeTableID`, `StudentID`, `TimeInAM`, `TimeOutAM`, `TimeInPM`, `TimeOutPM`, `AttendDate`, `AttendEvent`) VALUES
(1, '0010266936', '05:31 AM', '', '', '', '2017-03-14', 'BASKETBALL'),
(2, '0010266936', '', '', '01:55 PM', '', '2017-03-15', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblverifytimeintimeout`
--

CREATE TABLE `tblverifytimeintimeout` (
  `VerifyID` int(11) NOT NULL,
  `StudentID` varchar(90) NOT NULL,
  `TimeIn` varchar(30) NOT NULL,
  `TimeOut` varchar(30) NOT NULL,
  `Verification` varchar(90) NOT NULL,
  `DateValidation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblverifytimeintimeout`
--

INSERT INTO `tblverifytimeintimeout` (`VerifyID`, `StudentID`, `TimeIn`, `TimeOut`, `Verification`, `DateValidation`) VALUES
(1, '0010266936', '01:55 PM', '05:31 AM', 'TimeIn', '2017-03-15');

-- --------------------------------------------------------

--
-- Table structure for table `tblvotes`
--

CREATE TABLE `tblvotes` (
  `VotesId` int(11) NOT NULL,
  `Voters` varchar(90) NOT NULL,
  `Candidate` varchar(90) NOT NULL,
  `VoteDate` date NOT NULL,
  `Course` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblvotingcode`
--

CREATE TABLE `tblvotingcode` (
  `VCID` int(11) NOT NULL,
  `CodeNo` varchar(30) NOT NULL,
  `GenerateDate` date NOT NULL,
  `CVUse` tinyint(1) NOT NULL,
  `AuthPrint` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvotingcode`
--

INSERT INTO `tblvotingcode` (`VCID`, `CodeNo`, `GenerateDate`, `CVUse`, `AuthPrint`) VALUES
(1, 'a2pxnw5p', '2017-03-03', 1, 201751),
(2, 'cxaf235u', '2017-03-03', 1, 201752),
(3, 'euknyvi3', '2017-03-04', 1, 201753),
(4, 'av6xdhih', '2017-03-04', 1, 201754),
(5, 'qaz5td87', '2017-03-04', 1, 201755),
(6, 'nohimcnw', '2024-05-10', 1, 201757),
(7, 'ufdtei3e', '2024-05-10', 1, 201757),
(8, '3zv7zxay', '2024-05-10', 1, 201757),
(9, 'cot0qhez', '2024-05-10', 1, 201757),
(10, 's53aza8g', '2024-05-10', 1, 201757),
(11, 'm6yo7x0p', '2024-05-10', 1, 201757),
(12, 'wywcnwx2', '2024-05-10', 1, 201757),
(13, 'hspbw4mn', '2024-05-10', 1, 201757),
(14, 'njy7ebmi', '2024-05-10', 1, 201757),
(15, 'e5kmcxv4', '2024-05-10', 1, 201757),
(16, '4gu44pyp', '2024-05-10', 1, 201757),
(17, 'mjyk0jzh', '2024-05-10', 1, 201757),
(18, 'x5gdgjvu', '2024-05-10', 1, 201757),
(19, '450ki0ji', '2024-05-10', 1, 201757),
(20, '88x04pjm', '2024-05-10', 1, 201757),
(21, '8thz85sr', '2024-05-10', 1, 201757),
(22, 'aw5t5yeb', '2024-05-10', 1, 201757),
(23, '63vwfuin', '2024-05-10', 1, 201757),
(24, 'n5qo3imh', '2024-05-10', 1, 201757),
(25, 'v3kugy67', '2024-05-10', 1, 201757),
(26, 'rdp7tev0', '2024-05-10', 1, 201757),
(27, 'z7a6a6d5', '2024-05-10', 1, 201757),
(28, 'fzxjgfkq', '2024-05-10', 1, 201757),
(29, 'feuza2kw', '2024-05-10', 1, 201757),
(30, 'kx80m27d', '2024-05-10', 1, 201757),
(31, 'xhiq527m', '2024-05-10', 1, 201757),
(32, '3gygov0r', '2024-05-10', 1, 201757),
(33, 'dhqra2x6', '2024-05-10', 1, 201757),
(34, '6x2qpggd', '2024-05-10', 1, 201757),
(35, 'jywegfpi', '2024-05-10', 1, 201757),
(36, '4qams28x', '2024-05-10', 1, 201757),
(37, 'g8iwu4cf', '2024-05-10', 1, 201757),
(38, 'biskiv6e', '2024-05-10', 1, 201757),
(39, 'b4f78tze', '2024-05-10', 1, 201757),
(40, 'g3xgimi3', '2024-05-10', 1, 201757),
(41, '0c2afhs0', '2024-05-10', 1, 201757),
(42, 'kgjrk0u0', '2024-05-10', 1, 201757),
(43, '572fsggy', '2024-05-10', 1, 201757),
(44, 'jrvzc6br', '2024-05-10', 1, 201757),
(45, 'wpfau0tk', '2024-05-10', 1, 201757),
(46, 'v4ewbsq7', '2024-05-10', 1, 201757),
(47, '5q7x3gos', '2024-05-10', 1, 201757),
(48, 'gsvtvcbk', '2024-05-10', 1, 201757),
(49, 'gfpg8vgu', '2024-05-10', 1, 201757),
(50, 'h2v8uahw', '2024-05-10', 1, 201757),
(51, 'q2nka4oa', '2024-05-10', 1, 201757),
(52, 'hs8d3tbu', '2024-05-10', 1, 201757),
(53, 'mtwc4uhd', '2024-05-10', 1, 201757),
(54, 'jsdjjouc', '2024-05-10', 1, 201757),
(55, 'tcgtr3ps', '2024-05-10', 1, 201757),
(56, 'syu5vtsj', '2024-05-10', 1, 201757),
(57, 'g856xney', '2024-05-10', 1, 201757),
(58, 'gvta4eo0', '2024-05-10', 1, 201757),
(59, 'yqemzs2b', '2024-05-10', 1, 201757),
(60, 'ys0844gd', '2024-05-10', 1, 201757),
(61, 'gyzgpdqu', '2024-05-10', 1, 201757),
(62, 'ce305vor', '2024-05-10', 1, 201757),
(63, '2im76xdn', '2024-05-10', 1, 201757),
(64, 'i5zqaus0', '2024-05-10', 1, 201757),
(65, 'gex8crbs', '2024-05-10', 1, 201757),
(66, 'hwaa3eku', '2024-05-10', 1, 201757),
(67, 'zezypkzr', '2024-05-10', 1, 201757),
(68, '06ehxjr5', '2024-05-10', 1, 201757),
(69, 'tbt5wkuy', '2024-05-10', 1, 201757),
(70, '5djzwofx', '2024-05-10', 1, 201757),
(71, 's747mpzg', '2024-05-10', 1, 201757),
(72, '6ypvte86', '2024-05-10', 1, 201757),
(73, 'f4qxjgrg', '2024-05-10', 1, 201757),
(74, 'xxnsefuj', '2024-05-10', 1, 201757),
(75, 'urmrhseo', '2024-05-10', 1, 201757),
(76, 'kfxrurnm', '2024-05-10', 1, 201757),
(77, 'sifzz8dg', '2024-05-10', 1, 201757),
(78, '82no80nq', '2024-05-10', 1, 201757),
(79, 'j4i7724t', '2024-05-10', 1, 201757),
(80, 'o2kox75s', '2024-05-10', 1, 201757),
(81, 'dv8pvgma', '2024-05-10', 1, 201757),
(82, 'xs4uba8k', '2024-05-10', 1, 201757),
(83, '5p3b87nd', '2024-05-10', 1, 201757),
(84, 'xrimq3ui', '2024-05-10', 1, 201757),
(85, 'b5xm50no', '2024-05-10', 1, 201757),
(86, 'b3zcoz0i', '2024-05-10', 1, 201757),
(87, 'cwmbrqzx', '2024-05-10', 1, 201757),
(88, 'hcnr4vki', '2024-05-10', 1, 201757),
(89, 'q0zv5j4f', '2024-05-10', 1, 201757),
(90, 'izehi3i7', '2024-05-10', 1, 201757),
(91, 'm7zd4tqv', '2024-05-10', 1, 201757),
(92, 'rqhm8kn5', '2024-05-10', 1, 201757),
(93, 'qbcumi7c', '2024-05-10', 1, 201757),
(94, 'bzu80dib', '2024-05-10', 1, 201757),
(95, 'aarfkmof', '2024-05-10', 1, 201757),
(96, 'jt5nwsuc', '2024-05-10', 1, 201757),
(97, '4tb7n3p7', '2024-05-10', 1, 201757),
(98, '2qp6v4ko', '2024-05-10', 1, 201757),
(99, 'rkrsf48q', '2024-05-10', 1, 201757),
(100, 'ophq2jqd', '2024-05-10', 1, 201757),
(101, '8qbkeu8g', '2024-05-10', 1, 201757),
(102, 'n5f8x05g', '2024-05-10', 1, 201757),
(103, 'bknfsw3v', '2024-05-10', 1, 201757),
(104, 'my8td67y', '2024-05-10', 1, 201757),
(105, 'pnmp6hwk', '2024-05-10', 1, 201757),
(106, 'hpdeig6n', '2024-05-10', 1, 201757),
(107, 'qdthaau3', '2024-05-10', 1, 201757),
(108, '3aoxgrbn', '2024-05-10', 1, 201757),
(109, '2hyzry3a', '2024-05-10', 1, 201757),
(110, 'h806sjjk', '2024-05-10', 1, 201757),
(111, 'ptawq8eo', '2024-05-10', 1, 201757),
(112, 'cap2jd62', '2024-05-10', 1, 201757),
(113, 't6t75for', '2024-05-10', 1, 201757),
(114, 'xwtnmggm', '2024-05-10', 1, 201757),
(115, 'rrq755ab', '2024-05-10', 1, 201757),
(116, 'qr3nccpv', '2024-05-10', 1, 201757),
(117, 'ne0ck8a4', '2024-05-10', 1, 201757),
(118, 'djmdk5jr', '2024-05-10', 1, 201757),
(119, 'zpb7shjw', '2024-05-10', 1, 201757),
(120, 'fuf4bunv', '2024-05-10', 1, 201757),
(121, 'vtiqeuyn', '2024-05-10', 1, 201757),
(122, 'th8rgrfq', '2024-05-10', 1, 201757),
(123, '5jsb27ye', '2024-05-10', 1, 201757),
(124, 'fjntpoqx', '2024-05-10', 1, 201757),
(125, 'yysrvek7', '2024-05-10', 1, 201757),
(126, 'r276oyv8', '2024-05-10', 1, 201757),
(127, 'z0r5adpr', '2024-05-10', 1, 201757),
(128, 'o0a7pdv5', '2024-05-10', 1, 201757),
(129, 'jocpxpff', '2024-05-10', 1, 201757),
(130, 'v6gx7oh5', '2024-05-10', 1, 201757),
(131, 'qce2caob', '2024-05-10', 1, 201757),
(132, 'f5ru7imd', '2024-05-10', 1, 201757),
(133, '6ogquaay', '2024-05-10', 1, 201757),
(134, 'pm5qtts5', '2024-05-10', 1, 201757),
(135, '85qmq634', '2024-05-10', 1, 201757),
(136, 'wwtw5prt', '2024-05-10', 1, 201757),
(137, '4dgreqs5', '2024-05-10', 1, 201757),
(138, 'j5i2recm', '2024-05-10', 1, 201757),
(139, 'x7pbcoec', '2024-05-10', 1, 201757),
(140, '43tuafd6', '2024-05-10', 1, 201757),
(141, 'h2ryi8gc', '2024-05-10', 1, 201757),
(142, 'xjodrmt2', '2024-05-10', 1, 201757),
(143, '2aof3exa', '2024-05-10', 1, 201757),
(144, '6wqfo7jx', '2024-05-10', 1, 201757),
(145, 's2ajsnrp', '2024-05-10', 1, 201757),
(146, 'jswopn3p', '2024-05-10', 1, 201757),
(147, 'fy02rvs0', '2024-05-10', 1, 201757),
(148, 'h7223c8g', '2024-05-10', 1, 201757),
(149, '473gxf8d', '2024-05-10', 1, 201757),
(150, 'ife4hp7n', '2024-05-10', 1, 201757),
(151, 'ftrrio78', '2024-05-10', 1, 201757),
(152, 'vyuz3h8t', '2024-05-10', 1, 201757),
(153, '3fcxnf5b', '2024-05-10', 1, 201757),
(154, 'unkee7ih', '2024-05-10', 1, 201757),
(155, '5mpkm4uv', '2024-05-10', 1, 201757),
(156, 's0m25d65', '2024-05-10', 1, 201757),
(157, 'vkahz08s', '2024-05-10', 1, 201757),
(158, 'qxhr5cyw', '2024-05-10', 1, 201757),
(159, '6rr42w3q', '2024-05-10', 1, 201757),
(160, '8nhhnesh', '2024-05-10', 1, 201757),
(161, 'ppiqzzga', '2024-05-10', 1, 201757),
(162, 'pri48cx2', '2024-05-10', 1, 201757),
(163, 'bpni8247', '2024-05-10', 1, 201757),
(164, 'umdvcypv', '2024-05-10', 1, 201757),
(165, '7z3mvir8', '2024-05-10', 1, 201757),
(166, 'r8yt7pvk', '2024-05-10', 1, 201757),
(167, '7dc5s4xu', '2024-05-10', 1, 201757),
(168, 'v4tn0b7u', '2024-05-10', 1, 201757),
(169, '5v2fg5mv', '2024-05-10', 1, 201757),
(170, 'j7x88tjf', '2024-05-10', 1, 201757),
(171, 'dnnvxt5e', '2024-05-10', 1, 201757),
(172, 'hhdruz27', '2024-05-10', 1, 201757),
(173, 'biy2y374', '2024-05-10', 1, 201757),
(174, 'v4ewbsq7', '2024-05-10', 1, 201757),
(175, 'ftzgg06w', '2024-05-10', 1, 201757),
(176, 'wpgxcjik', '2024-05-10', 1, 201757),
(177, 'kuudsvxd', '2024-05-10', 1, 201757),
(178, 'nenjncyn', '2024-05-10', 1, 201757),
(179, 'rqg7o4z3', '2024-05-10', 1, 201757),
(180, 'agipza0m', '2024-05-10', 1, 201757),
(181, 'bqz0b2xi', '2024-05-10', 1, 201757),
(182, '7crmkp20', '2024-05-10', 1, 201757),
(183, '0qkoit85', '2024-05-10', 1, 201757),
(184, 'ce7iahdo', '2024-05-10', 1, 201757),
(185, 'cjsnwhut', '2024-05-10', 1, 201757),
(186, 'qovbewie', '2024-05-10', 1, 201757),
(187, '7qakb5t0', '2024-05-10', 1, 201757),
(188, 'ujoacxoe', '2024-05-10', 1, 201757),
(189, 'rv288fss', '2024-05-10', 1, 201757),
(190, 'wkdhv8a6', '2024-05-10', 1, 201757),
(191, '0hy6z44f', '2024-05-10', 1, 201757),
(192, 'yuy05fg6', '2024-05-10', 1, 201757),
(193, 'jpcft2o6', '2024-05-10', 1, 201757),
(194, '85kak7vf', '2024-05-10', 1, 201757),
(195, 'v52gj5gv', '2024-05-10', 1, 201757),
(196, 'f0a57ocd', '2024-05-10', 1, 201757),
(197, 'qgmby847', '2024-05-10', 1, 201757),
(198, 'gtsjn64d', '2024-05-10', 1, 201757),
(199, 'ujkuzzqj', '2024-05-10', 1, 201757),
(200, '36pbhso8', '2024-05-10', 1, 201757),
(201, 'iivmw7o4', '2024-05-10', 1, 201757),
(202, '3bpsq03f', '2024-05-10', 1, 201757),
(203, 'xzydx5is', '2024-05-10', 1, 201757),
(204, '54iobtg0', '2024-05-10', 1, 201757),
(205, 'q6wpbca4', '2024-05-10', 1, 201757),
(206, 'etha05jp', '2024-05-10', 1, 201757),
(207, '3pyshxnm', '2024-05-10', 1, 201757),
(208, 'ab3c2ryw', '2024-05-10', 1, 201757),
(209, 'rkrsf48q', '2024-05-10', 1, 201757),
(210, 'shuje6fs', '2024-05-10', 1, 201757),
(211, 'w4z2nqef', '2024-05-10', 1, 201757),
(212, 'mbca80du', '2024-05-10', 1, 201757),
(213, 'njsawxui', '2024-05-10', 1, 201757),
(214, 'm7azbc56', '2024-05-10', 1, 201757),
(215, 'tmkepe5g', '2024-05-10', 1, 201757),
(216, 'ehi0g444', '2024-05-10', 1, 201757),
(217, 'oczje37e', '2024-05-10', 1, 201757),
(218, '4v4stxft', '2024-05-10', 1, 201757),
(219, 'h8c04xmd', '2024-05-10', 1, 201757),
(220, 'vhsftd8v', '2024-05-10', 1, 201757),
(221, 'tibig7xv', '2024-05-10', 1, 201757),
(222, 'pgms42za', '2024-05-10', 1, 201757),
(223, '6xnf7wx4', '2024-05-10', 1, 201757),
(224, 'reup4jkv', '2024-05-10', 1, 201757),
(225, 'cxqzvr3t', '2024-05-10', 1, 201757),
(226, 'hm5vcfw3', '2024-05-10', 1, 201757),
(227, '4dc272xv', '2024-05-10', 1, 201757),
(228, 'tf54dzds', '2024-05-10', 1, 201757),
(229, 'f7m3brd4', '2024-05-10', 1, 201757),
(230, 'sippx3bq', '2024-05-10', 1, 201757),
(231, '5vag8frr', '2024-05-10', 1, 201757),
(232, 'g8rntt54', '2024-05-10', 1, 201757),
(233, 'in7ou8tk', '2024-05-10', 1, 201757),
(234, '4cbg2w7b', '2024-05-10', 1, 201757),
(235, 'wt7h2teo', '2024-05-10', 1, 201757),
(236, 'ww5vmnnf', '2024-05-10', 1, 201757),
(237, '43ea3ghq', '2024-05-10', 1, 201757),
(238, 'fitnf5yp', '2024-05-10', 1, 201757),
(239, 'ovz7f2o0', '2024-05-10', 1, 201757),
(240, '88qyddeg', '2024-05-10', 1, 201757),
(241, '4hnqqyqo', '2024-05-10', 1, 201757),
(242, 'b0rzndoq', '2024-05-10', 1, 201757),
(243, 'hhorw5af', '2024-05-10', 1, 201757),
(244, 'qrexsucm', '2024-05-10', 1, 201757),
(245, '4tfv5ryv', '2024-05-10', 1, 201757),
(246, 't70k248s', '2024-05-10', 1, 201757),
(247, '8x70aqvy', '2024-05-10', 1, 201757),
(248, '3jipgf2r', '2024-05-10', 1, 201757),
(249, 'uhis8yad', '2024-05-10', 1, 201757),
(250, 'cqpn22kj', '2024-05-10', 1, 201757),
(251, 'tuejzxxg', '2024-05-10', 1, 201757),
(252, 'xnzw3mm0', '2024-05-10', 1, 201757),
(253, 'gdpzziph', '2024-05-10', 1, 201757),
(254, 'f7x5ugpn', '2024-05-10', 1, 201757),
(255, 'adqcfrwb', '2024-05-10', 1, 201757),
(256, 'qp3vitsw', '2024-05-10', 1, 201757),
(257, 'fhhjn8uf', '2024-05-10', 1, 201757),
(258, '7mvcai26', '2024-05-10', 1, 201757),
(259, '6wqfo7jx', '2024-05-10', 1, 201757),
(260, '4j7szwa7', '2024-05-10', 1, 201757),
(261, '0zn0onyn', '2024-05-10', 1, 201757),
(262, 'fj652bx8', '2024-05-10', 1, 201757),
(263, 's2yxhjrc', '2024-05-10', 1, 201757),
(264, 'jsdzh05b', '2024-05-10', 1, 201757),
(265, 'dssni5bz', '2024-05-10', 1, 201757),
(266, '02do0nht', '2024-05-10', 1, 201757),
(267, 'ozrds000', '2024-05-10', 1, 201757),
(268, 'ez2og2c8', '2024-05-10', 1, 201757),
(269, 'vvasw2h7', '2024-05-10', 1, 201757),
(270, '50knjyfg', '2024-05-10', 1, 201757),
(271, 'z42iygoi', '2024-05-10', 1, 201757),
(272, 'rq7pexkb', '2024-05-10', 1, 201757),
(273, 'z58xjghf', '2024-05-10', 1, 201757),
(274, 'ampma6xw', '2024-05-10', 1, 201757),
(275, 'kjx3dqty', '2024-05-10', 1, 201757),
(276, 'fgu7vmxe', '2024-05-10', 1, 201757),
(277, 'uirjw2da', '2024-05-10', 1, 201757),
(278, 'cuqscsvh', '2024-05-10', 1, 201757),
(279, 'ip85v24k', '2024-05-10', 1, 201757),
(280, 'v66orycy', '2024-05-10', 1, 201757),
(281, '2w4muony', '2024-05-10', 1, 201757),
(282, '0skyuyxn', '2024-05-10', 1, 201757),
(283, 'xgstyy57', '2024-05-10', 1, 201757),
(284, 'sm08fj3t', '2024-05-10', 1, 201757),
(285, 'c4uvqsdc', '2024-05-10', 1, 201757),
(286, 'xq0iaeh7', '2024-05-10', 1, 201757),
(287, 'rwvaepyg', '2024-05-10', 1, 201757),
(288, '8xz7n6r2', '2024-05-10', 1, 201757),
(289, 'timqehqm', '2024-05-10', 1, 201757),
(290, 'qrx086us', '2024-05-10', 1, 201757),
(291, '6avczjmm', '2024-05-10', 1, 201757),
(292, 'zdz50za0', '2024-05-10', 1, 201757),
(293, '3bh7jjtn', '2024-05-10', 1, 201757),
(294, 'u7y0mqrg', '2024-05-10', 1, 201757),
(295, '50parujc', '2024-05-10', 1, 201757),
(296, 'gop5toyi', '2024-05-10', 1, 201757),
(297, 'gu7fp3u3', '2024-05-10', 1, 201757),
(298, 'nmqdn2kw', '2024-05-10', 1, 201757),
(299, '2mz5yshe', '2024-05-10', 1, 201757),
(300, 'f4red4b2', '2024-05-10', 1, 201757),
(301, 'wsk3shzs', '2024-05-10', 1, 201757),
(302, 'f025h7a5', '2024-05-10', 1, 201757),
(303, 'xvn450zo', '2024-05-10', 1, 201757),
(304, '0btadit2', '2024-05-10', 1, 201757),
(305, '7qi5eho3', '2024-05-10', 1, 201757),
(306, 'hpqq7yxg', '2024-05-10', 1, 201757),
(307, 'x420hubz', '2024-05-10', 1, 201757),
(308, 'vcohp55w', '2024-05-10', 1, 201757),
(309, 'qjaa3ex7', '2024-05-10', 1, 201757),
(310, 'np6kuamp', '2024-05-10', 1, 201757),
(311, 'esti7syb', '2024-05-10', 1, 201757),
(312, 'naoomjf4', '2024-05-10', 1, 201757),
(313, 'skagrd7w', '2024-05-10', 1, 201757),
(314, 'n5jj6dvv', '2024-05-10', 1, 201757),
(315, '542tgbeg', '2024-05-10', 1, 201757),
(316, 'cpdjwmgo', '2024-05-10', 1, 201757),
(317, 'idgtqhtj', '2024-05-10', 1, 201757),
(318, 'xu5woizj', '2024-05-10', 1, 201757),
(319, 'zp8emomi', '2024-05-10', 1, 201757),
(320, 'cp6c3mm0', '2024-05-10', 1, 201757),
(321, '0kighauz', '2024-05-10', 1, 201757),
(322, 'xf583kvt', '2024-05-10', 1, 201757),
(323, 'r6ky540f', '2024-05-10', 1, 201757),
(324, 'de6f6wt0', '2024-05-10', 1, 201757),
(325, 'vpjgpfn3', '2024-05-10', 1, 201757),
(326, 'jnthtbyh', '2024-05-10', 1, 201757),
(327, 'fkktno5d', '2024-05-10', 1, 201757),
(328, 'j0iittck', '2024-05-10', 1, 201757),
(329, 'cyb0f6x8', '2024-05-10', 1, 201757),
(330, '4u0nkzni', '2024-05-10', 1, 201757),
(331, 'ua3ummy8', '2024-05-10', 1, 201757),
(332, '26frpt38', '2024-05-10', 1, 201757),
(333, 't2ikp3gc', '2024-05-10', 1, 201757),
(334, 'is8rwdfs', '2024-05-10', 1, 201757),
(335, '8q0i6fq7', '2024-05-10', 1, 201757),
(336, 'unpvux7s', '2024-05-10', 1, 201757),
(337, '7480tqxd', '2024-05-10', 1, 201757),
(338, 'q45x0gqw', '2024-05-10', 1, 201757),
(339, 'h38vpm3j', '2024-05-10', 1, 201757),
(340, 'yfdv3qqc', '2024-05-10', 1, 201757),
(341, 'fa75eei5', '2024-05-10', 1, 201757),
(342, 'uqmqh4b7', '2024-05-10', 1, 201757),
(343, 'vni4mwnt', '2024-05-10', 1, 201757),
(344, 'geoc4ju4', '2024-05-10', 1, 201757),
(345, 'hug8u5cp', '2024-05-10', 1, 201757),
(346, 'iuqnhjdr', '2024-05-10', 1, 201757),
(347, 'hkp462yx', '2024-05-10', 1, 201757),
(348, 'nn3hxz8o', '2024-05-10', 1, 201757),
(349, 'cu7u7a52', '2024-05-10', 1, 201757),
(350, 'bwat6r2s', '2024-05-10', 1, 201757),
(351, 'no6qfmi2', '2024-05-10', 1, 201757),
(352, 'wm0n5vva', '2024-05-10', 1, 201757),
(353, '0jhnh0fx', '2024-05-10', 1, 201757),
(354, 'jd3jnuo5', '2024-05-10', 1, 201757),
(355, '4twzby4v', '2024-05-10', 1, 201757),
(356, 'vx6u8eb8', '2024-05-10', 1, 201757),
(357, '2zmby8me', '2024-05-10', 1, 201757),
(358, 'upv0oi6m', '2024-05-10', 1, 201757),
(359, '22q6oq2k', '2024-05-10', 1, 201757),
(360, 'dju08rsb', '2024-05-10', 1, 201757),
(361, 'i6axyiqs', '2024-05-10', 1, 201757),
(362, 'bsa4kf78', '2024-05-10', 1, 201757),
(363, 'ez5c4bp5', '2024-05-10', 1, 201757),
(364, 'o8tiinja', '2024-05-10', 1, 201757),
(365, '884juszg', '2024-05-10', 1, 201757),
(366, 'r07bsmpd', '2024-05-10', 1, 201757),
(367, 'cm66ze6t', '2024-05-10', 1, 201757),
(368, '5xzhcy8f', '2024-05-10', 1, 201757),
(369, 'bm2kqq27', '2024-05-10', 1, 201757),
(370, 'nqe2arj8', '2024-05-10', 1, 201757),
(371, 'ofdxagb8', '2024-05-10', 1, 201757),
(372, '4fadvdd8', '2024-05-10', 1, 201757),
(373, 'iedav0gk', '2024-05-10', 1, 201757),
(374, 'kts7v7vn', '2024-05-10', 1, 201757),
(375, 'xmshehu7', '2024-05-10', 1, 201757),
(376, 'rtkzsrwt', '2024-05-10', 1, 201757),
(377, '2u0ftiu4', '2024-05-10', 1, 201757),
(378, 'bwq8hq4f', '2024-05-10', 1, 201757),
(379, 'c5odyk33', '2024-05-10', 1, 201757),
(380, 'myick3sj', '2024-05-10', 1, 201757),
(381, '7r4kyc57', '2024-05-10', 1, 201757),
(382, 'qe4krvtu', '2024-05-10', 1, 201757),
(383, 'k0eeq73z', '2024-05-10', 1, 201757),
(384, '74zvvzku', '2024-05-10', 1, 201757),
(385, 's7vhc3gx', '2024-05-10', 1, 201757),
(386, 'ckv3t8e5', '2024-05-10', 1, 201757),
(387, 'zjp7jz24', '2024-05-10', 1, 201757),
(388, 'd0ept5fv', '2024-05-10', 1, 201757),
(389, '5gye5apd', '2024-05-10', 1, 201757),
(390, '0zf37anf', '2024-05-10', 1, 201757),
(391, 'qceg5ay4', '2024-05-10', 1, 201757),
(392, 'ohidz35o', '2024-05-10', 1, 201757),
(393, 'p8fsup67', '2024-05-10', 1, 201757),
(394, 'g4osi8wf', '2024-05-10', 1, 201757),
(395, 'zkw80a8m', '2024-05-10', 1, 201757),
(396, 'e4j6eckb', '2024-05-10', 1, 201757),
(397, 'hxhi5sag', '2024-05-10', 1, 201757),
(398, 'ecwdvjff', '2024-05-10', 1, 201757),
(399, 'kyzbq2am', '2024-05-10', 1, 201757),
(400, 'cbwtzmbr', '2024-05-10', 1, 201757),
(401, 'pzq4r577', '2024-05-10', 1, 201757),
(402, 'cqgcmb3s', '2024-05-10', 1, 201757),
(403, '6huxvpip', '2024-05-10', 1, 201757),
(404, 'i7i20mpe', '2024-05-10', 1, 201757),
(405, 'khikj0rz', '2024-05-10', 1, 201757),
(406, '2ockhmug', '2024-05-10', 1, 201757),
(407, 'hzbf26jp', '2024-05-10', 1, 201757),
(408, '80f65ofo', '2024-05-10', 1, 201757),
(409, 's0vk8t5f', '2024-05-10', 1, 201757),
(410, 'qaajbtwt', '2024-05-10', 1, 201757),
(411, 'gaiyuhfd', '2024-05-10', 1, 201757),
(412, 'hkvkqcym', '2024-05-10', 1, 201757),
(413, 'mhjsgayh', '2024-05-10', 1, 201757),
(414, 'xnb2ih2q', '2024-05-10', 1, 201757),
(415, 'tecnn260', '2024-05-10', 1, 201757),
(416, '85a8m04k', '2024-05-10', 1, 201757),
(417, '3p674dgh', '2024-05-10', 1, 201757),
(418, 'ff3q4wbb', '2024-05-10', 1, 201757),
(419, 'ppyej44c', '2024-05-10', 1, 201757),
(420, 'ctzeuy6a', '2024-05-10', 1, 201757),
(421, 'ucemsixw', '2024-05-10', 1, 201757),
(422, '7whgcgjk', '2024-05-10', 1, 201757),
(423, '65zwmk2g', '2024-05-10', 1, 201757),
(424, 'onvrjcfh', '2024-05-10', 1, 201757),
(425, 'a0f3s74q', '2024-05-10', 1, 201757),
(426, 'dmp74rga', '2024-05-10', 1, 201757),
(427, '4umusnbs', '2024-05-10', 1, 201757),
(428, 'xt06btfw', '2024-05-10', 1, 201757),
(429, 'cnq3cmf2', '2024-05-10', 1, 201757),
(430, 'q05serai', '2024-05-10', 1, 201757),
(431, 'mogi54zv', '2024-05-10', 1, 201757),
(432, 'sh4bj8hw', '2024-05-10', 1, 201757),
(433, 'mhf3cr7e', '2024-05-10', 1, 201757),
(434, 'udtgab2q', '2024-05-10', 1, 201757),
(435, '6obrmx6a', '2024-05-10', 1, 201757),
(436, 'tyq7rp0n', '2024-05-10', 1, 201757),
(437, 'pnbsog0j', '2024-05-10', 1, 201757),
(438, 'amwpdgqj', '2024-05-10', 1, 201757),
(439, 'yeyy8zq4', '2024-05-10', 1, 201757),
(440, 'jexwsu34', '2024-05-10', 1, 201757),
(441, '78t7c5ur', '2024-05-10', 1, 201757),
(442, 'ebgcb232', '2024-05-10', 1, 201757),
(443, 'h6yro2q6', '2024-05-10', 1, 201757),
(444, '5fort2ci', '2024-05-10', 1, 201757),
(445, 'w8upxu2q', '2024-05-10', 1, 201757),
(446, 'mz462ei0', '2024-05-10', 1, 201757),
(447, 'rkyrfkg4', '2024-05-10', 1, 201757),
(448, 'cf8wqqmb', '2024-05-10', 1, 201757),
(449, 'fzkwhhat', '2024-05-10', 1, 201757),
(450, 'ehxufqqy', '2024-05-10', 1, 201757),
(451, 'kmyf03bg', '2024-05-10', 1, 201757),
(452, '6xkjud7n', '2024-05-10', 1, 201757),
(453, 'meh2q3d7', '2024-05-10', 1, 201757),
(454, 'k3p6yddy', '2024-05-10', 1, 201757),
(455, '6cpoxdhd', '2024-05-10', 1, 201757),
(456, 'yvegepjy', '2024-05-10', 1, 201757),
(457, 'q7nuodan', '2024-05-10', 1, 201757),
(458, 'jyb4k24j', '2024-05-10', 1, 201757),
(459, 'uu7pztko', '2024-05-10', 1, 201757),
(460, 'fvydni22', '2024-05-10', 1, 201757),
(461, 'fwuwdtk8', '2024-05-10', 1, 201757),
(462, '3hw553zo', '2024-05-10', 1, 201757),
(463, 'gtgi5nsv', '2024-05-10', 1, 201757),
(464, 'ubc4qvxa', '2024-05-10', 1, 201757),
(465, '3sbraftf', '2024-05-10', 1, 201757),
(466, 'ea5mas8u', '2024-05-10', 1, 201757),
(467, 'j4arpidg', '2024-05-10', 1, 201757),
(468, 'rk076ve6', '2024-05-10', 1, 201757),
(469, 'ng82g7gt', '2024-05-10', 1, 201757),
(470, 'neaf8vf6', '2024-05-10', 1, 201757),
(471, '3tdqweur', '2024-05-10', 1, 201757),
(472, 'kuehnbbk', '2024-05-10', 1, 201757),
(473, 't7pamtak', '2024-05-10', 1, 201757),
(474, 'iriznrew', '2024-05-10', 1, 201757),
(475, '8jgh2fji', '2024-05-10', 1, 201757),
(476, 'pejhren8', '2024-05-10', 1, 201757),
(477, 'j4sfkdby', '2024-05-10', 1, 201757),
(478, '3zjrk8ey', '2024-05-10', 1, 201757),
(479, 'exm52ko4', '2024-05-10', 1, 201757),
(480, 'ft605wy0', '2024-05-10', 1, 201757),
(481, 'syxngaat', '2024-05-10', 1, 201757),
(482, '7pwsuqzk', '2024-05-10', 1, 201757),
(483, 'oscy4c8p', '2024-05-10', 1, 201757),
(484, 'dyzyf3tq', '2024-05-10', 1, 201757),
(485, '22doywqm', '2024-05-10', 1, 201757),
(486, 't4hgeo24', '2024-05-10', 1, 201757),
(487, 'whc45k6q', '2024-05-10', 1, 201757),
(488, 'jpnkfrx8', '2024-05-10', 1, 201757),
(489, 'zm20xg5c', '2024-05-10', 1, 201757),
(490, 'exrbrw86', '2024-05-10', 1, 201757),
(491, 'y8v85y77', '2024-05-10', 1, 201757),
(492, 'dyggied4', '2024-05-10', 1, 201757),
(493, 'sdtk7pa2', '2024-05-10', 1, 201757),
(494, 'szg34r5x', '2024-05-10', 1, 201757),
(495, 'xtsufep8', '2024-05-10', 1, 201757),
(496, 'xzk5ogg2', '2024-05-10', 1, 201757),
(497, 'ohguowk8', '2024-05-10', 1, 201757),
(498, 'pz0v85qd', '2024-05-10', 1, 201757),
(499, 'hd2fcvg2', '2024-05-10', 1, 201757),
(500, 'wya44rw2', '2024-05-10', 1, 201757),
(501, '36vitarp', '2024-05-10', 1, 201757),
(502, 'xe5qag0w', '2024-05-10', 1, 201757),
(503, 'hoqrc6tu', '2024-05-10', 1, 201757),
(504, 'jr8c4vva', '2024-05-10', 1, 201757),
(505, 'igf5r7ti', '2024-05-10', 1, 201757),
(506, 'v8msh8wd', '2024-05-10', 1, 201757),
(507, '50q6qhqg', '2024-05-10', 1, 201757),
(508, 'f5v2aqb6', '2024-05-10', 1, 201757),
(509, '0jcxpdrt', '2024-05-10', 1, 201757),
(510, '5cbr2onn', '2024-05-10', 1, 201757),
(511, 'ghff72ru', '2024-05-10', 1, 201757),
(512, 'djoiizi7', '2024-05-10', 1, 201757),
(513, 'p4xqmyvh', '2024-05-10', 1, 201757),
(514, 'rnjexqy7', '2024-05-10', 1, 201757),
(515, '2fyejuci', '2024-05-10', 1, 201757),
(516, 'swhi7zpd', '2024-05-10', 1, 201757),
(517, '3cmdzhto', '2024-05-10', 1, 201757),
(518, 'zoexe2uq', '2024-05-10', 1, 201757),
(519, 'tqnxisy4', '2024-05-10', 1, 201757),
(520, '6yhhuzqa', '2024-05-10', 1, 201757),
(521, 'qaoxu6yb', '2024-05-10', 1, 201757),
(522, 'jbdimnb6', '2024-05-10', 1, 201757),
(523, 'ng2bgb8w', '2024-05-10', 1, 201757),
(524, 'by54ac2y', '2024-05-10', 1, 201757),
(525, 'pqa0mp4i', '2024-05-10', 1, 201757),
(526, 'vepw2zcz', '2024-05-10', 1, 201757),
(527, 'mtgwmfpf', '2024-05-10', 1, 201757),
(528, 'k643ftom', '2024-05-10', 1, 201757),
(529, 'obpjx2b3', '2024-05-10', 1, 201757),
(530, '3g4omytt', '2024-05-10', 1, 201757),
(531, 'dygygpu0', '2024-05-10', 1, 201757),
(532, 'wof3c6hs', '2024-05-10', 1, 201757),
(533, '5ok7ehbu', '2024-05-10', 1, 201757),
(534, 'g2qgamzs', '2024-05-10', 1, 201757),
(535, 'cgcsiy0r', '2024-05-10', 1, 201757),
(536, '6qow5qaq', '2024-05-10', 1, 201757),
(537, 'ugjrdihj', '2024-05-10', 1, 201757),
(538, 'ga0fjatu', '2024-05-10', 1, 201757),
(539, '7roavmby', '2024-05-10', 1, 201757),
(540, 'c5awa7xi', '2024-05-10', 1, 201757),
(541, '6orshnvs', '2024-05-10', 1, 201757),
(542, 'bmspb6cn', '2024-05-10', 1, 201757),
(543, 'u386jd76', '2024-05-10', 1, 201757),
(544, 'u6h6nuxn', '2024-05-10', 1, 201757),
(545, 'ybvjgxu5', '2024-05-10', 1, 201757),
(546, 'w7biwgkb', '2024-05-10', 1, 201757),
(547, 'gfvs75e5', '2024-05-10', 1, 201757),
(548, 'gsi3x7h2', '2024-05-10', 1, 201757),
(549, 'g5oa53au', '2024-05-10', 1, 201757),
(550, 'gvcg6cxe', '2024-05-10', 1, 201757),
(551, 'oy7cdga8', '2024-05-10', 1, 201757),
(552, 'ox2mqyga', '2024-05-10', 1, 201757),
(553, 'b2zdne7c', '2024-05-10', 1, 201757),
(554, 'nvdeijyu', '2024-05-10', 1, 201757),
(555, '264m2hw2', '2024-05-10', 1, 201757),
(556, 'yp4earke', '2024-05-10', 1, 201757),
(557, 'fia3esco', '2024-05-10', 1, 201757),
(558, 'y863mkez', '2024-05-10', 1, 201757),
(559, '7mph6fok', '2024-05-10', 1, 201757),
(560, 'qrxrn5hv', '2024-05-10', 1, 201757),
(561, 'trv23uso', '2024-05-10', 1, 201757),
(562, 'c502itky', '2024-05-10', 1, 201757),
(563, 'ep4c0kuy', '2024-05-10', 1, 201757),
(564, 'xhkqfthy', '2024-05-10', 1, 201757),
(565, 'ce8wns3k', '2024-05-10', 1, 201757),
(566, '7oaoi3ff', '2024-05-10', 1, 201757),
(567, 'r27gj6hz', '2024-05-10', 1, 201757),
(568, '2q4x5psc', '2024-05-10', 1, 201757),
(569, '0irxi3es', '2024-05-10', 1, 201757),
(570, 'aaa0hywu', '2024-05-10', 1, 201757),
(571, 'huoo5crh', '2024-05-10', 1, 201757),
(572, 'xwgd2n7m', '2024-05-10', 1, 201757),
(573, '3optcuo3', '2024-05-10', 1, 201757),
(574, '8xvph0d4', '2024-05-10', 1, 201757),
(575, '84da4sxc', '2024-05-10', 1, 201757),
(576, 'ianb6bd8', '2024-05-10', 1, 201757),
(577, 'r4ttywph', '2024-05-10', 1, 201757),
(578, 'q6qvdc84', '2024-05-10', 1, 201757),
(579, 'p2i60wq7', '2024-05-10', 1, 201757),
(580, 'u75ebou5', '2024-05-10', 1, 201757),
(581, 'y3nhtetj', '2024-05-10', 1, 201757),
(582, 'pkfka6or', '2024-05-10', 1, 201757),
(583, '6wmmp5io', '2024-05-10', 1, 201757),
(584, 'z8cy8inb', '2024-05-10', 1, 201757),
(585, 'i5u8nzpg', '2024-05-10', 1, 201757),
(586, 'yddyk0h5', '2024-05-10', 1, 201757),
(587, 'txa5aq5x', '2024-05-10', 1, 201757),
(588, 'ck7xvjxt', '2024-05-10', 1, 201757),
(589, 'boeu4upy', '2024-05-10', 1, 201757),
(590, '4eimfkn8', '2024-05-10', 1, 201757),
(591, 'yaq73b5b', '2024-05-10', 1, 201757),
(592, 'vd0ptmn5', '2024-05-10', 1, 201757),
(593, '4qp3x8mr', '2024-05-10', 1, 201757),
(594, 'ym74ywwe', '2024-05-10', 1, 201757),
(595, '007bfoq2', '2024-05-10', 1, 201757),
(596, '5ngiweeq', '2024-05-10', 1, 201757),
(597, 'cwauosgk', '2024-05-10', 1, 201757),
(598, '7xw0pp7k', '2024-05-10', 1, 201757),
(599, '8ek7vfkj', '2024-05-10', 1, 201757),
(600, 'ucnbn60i', '2024-05-10', 1, 201757),
(601, 'ixqo4e7e', '2024-05-10', 1, 201757),
(602, 'putjap5y', '2024-05-10', 1, 201757),
(603, 'fkfjp8hv', '2024-05-10', 1, 201757),
(604, '5vgju3s5', '2024-05-10', 1, 201757),
(605, 'nr6uptib', '2024-05-10', 1, 201757),
(606, 'mxmsqdxo', '2024-05-10', 1, 201757),
(607, '5w6i8m0s', '2024-05-10', 1, 201757),
(608, 'ofn2acz5', '2024-05-10', 1, 201757),
(609, 'yeaipm57', '2024-05-10', 1, 201757),
(610, 's6t7iffp', '2024-05-10', 1, 201757),
(611, '2p0ktya3', '2024-05-10', 1, 201757),
(612, 'rj0viupm', '2024-05-10', 1, 201757),
(613, '7fog6bnz', '2024-05-10', 1, 201757),
(614, 'bmyzgq52', '2024-05-10', 1, 201757),
(615, 'smopb0ap', '2024-05-10', 1, 201757),
(616, '27jumk66', '2024-05-10', 1, 201757),
(617, 'y2sdbnu4', '2024-05-10', 1, 201757),
(618, 'a5y7573z', '2024-05-10', 1, 201757),
(619, 'quxko0y5', '2024-05-10', 1, 201757),
(620, 'iiquu008', '2024-05-10', 1, 201757),
(621, 'xtugids5', '2024-05-10', 1, 201757),
(622, 'eqonex7f', '2024-05-10', 1, 201757),
(623, '5tcfkim0', '2024-05-10', 1, 201757),
(624, 'u6a83cps', '2024-05-10', 1, 201757),
(625, 'sihn8vdr', '2024-05-10', 1, 201757),
(626, 'k5v8kfhw', '2024-05-10', 1, 201757),
(627, 'b3hig36o', '2024-05-10', 1, 201757),
(628, '7avz06f4', '2024-05-10', 1, 201757),
(629, '0k6equ5q', '2024-05-10', 1, 201757),
(630, '7cyg3zq6', '2024-05-10', 1, 201757),
(631, 'ueiron3g', '2024-05-10', 1, 201757),
(632, 'qq0dhabk', '2024-05-10', 1, 201757),
(633, 'vq4fdp83', '2024-05-10', 1, 201757),
(634, 't6rwqmcq', '2024-05-10', 1, 201757),
(635, '6cd32e7j', '2024-05-10', 1, 201757),
(636, 'npkqx5wo', '2024-05-10', 1, 201757),
(637, 'up6m72qu', '2024-05-10', 1, 201757),
(638, '7ri0tj3s', '2024-05-10', 1, 201757),
(639, 'k35j8d6g', '2024-05-10', 1, 201757),
(640, 'uj6scugu', '2024-05-10', 1, 201757),
(641, 'w3zy8fsa', '2024-05-10', 1, 201757),
(642, 'vshmbg6n', '2024-05-10', 1, 201757),
(643, 'xhddwchr', '2024-05-10', 1, 201757),
(644, '7ien0m3n', '2024-05-10', 1, 201757),
(645, 'j267y64a', '2024-05-10', 1, 201757),
(646, 'kxbreb4v', '2024-05-10', 1, 201757),
(647, 'tvt6j8ed', '2024-05-10', 1, 201757),
(648, 'fzeh3enu', '2024-05-10', 1, 201757),
(649, 'bx2godz6', '2024-05-10', 1, 201757),
(650, '5zppjhyu', '2024-05-10', 1, 201757),
(651, 'x0u4gerr', '2024-05-10', 1, 201757),
(652, 'd7puoebf', '2024-05-10', 1, 201757),
(653, 'huh6tbvf', '2024-05-10', 1, 201757),
(654, 'yepf0q8y', '2024-05-10', 1, 201757),
(655, 'czy8bi5g', '2024-05-10', 1, 201757),
(656, 'p3ui574d', '2024-05-10', 1, 201757),
(657, '83xuwut3', '2024-05-10', 1, 201757),
(658, '3zovefqx', '2024-05-10', 1, 201757),
(659, 'zeqq2uhr', '2024-05-10', 1, 201757),
(660, 'bnfs8coe', '2024-05-10', 1, 201757),
(661, 'uyqym6cw', '2024-05-10', 1, 201757),
(662, 'y7u26jpc', '2024-05-10', 1, 201757),
(663, 'hrm6uigz', '2024-05-10', 1, 201757),
(664, '6vbahe7c', '2024-05-10', 1, 201757),
(665, 'nppwo7ms', '2024-05-10', 1, 201757),
(666, 'g547ghg2', '2024-05-10', 1, 201757),
(667, 'ucmwrriu', '2024-05-10', 1, 201757),
(668, 'k27kgd2p', '2024-05-10', 1, 201757),
(669, 'nnt5gcq7', '2024-05-10', 1, 201757),
(670, '3umaxzzq', '2024-05-10', 1, 201757),
(671, 'th7mukba', '2024-05-10', 1, 201757),
(672, 'tp83qwki', '2024-05-10', 1, 201757),
(673, '4vq8yxhr', '2024-05-10', 1, 201757),
(674, 'osetqbpk', '2024-05-10', 1, 201757),
(675, 'rh7vy8ku', '2024-05-10', 1, 201757),
(676, 'mvoc7njt', '2024-05-10', 1, 201757),
(677, 'pzfh7cqp', '2024-05-10', 1, 201757),
(678, '2qm83zfp', '2024-05-10', 1, 201757),
(679, '6t0b0ops', '2024-05-10', 1, 201757),
(680, 'qw25avyr', '2024-05-10', 1, 201757),
(681, '6zbonnvg', '2024-05-10', 1, 201757),
(682, 'u3dods4a', '2024-05-10', 1, 201757),
(683, 'fc8fd47s', '2024-05-10', 1, 201757),
(684, 'pkbn0r3i', '2024-05-10', 1, 201757),
(685, '3j2j83q2', '2024-05-10', 1, 201757),
(686, 'zmxqjdg8', '2024-05-10', 1, 201757),
(687, 'ie75cvoi', '2024-05-10', 1, 201757),
(688, 'i6vmjnpt', '2024-05-10', 1, 201757),
(689, 'fz6amswx', '2024-05-10', 1, 201757),
(690, 'rgsnpmvs', '2024-05-10', 1, 201757),
(691, 'o24uoft4', '2024-05-10', 1, 201757),
(692, 'k8gjkdnm', '2024-05-10', 1, 201757),
(693, 'i4dh7kin', '2024-05-10', 1, 201757),
(694, 'oj685fn8', '2024-05-10', 1, 201757),
(695, 'kijmm40k', '2024-05-10', 1, 201757),
(696, '6i6xiygf', '2024-05-10', 1, 201757),
(697, 'bap3okz4', '2024-05-10', 1, 201757),
(698, 'ne3f3s66', '2024-05-10', 1, 201757),
(699, 'rmhtkdnn', '2024-05-10', 1, 201757),
(700, 'qwgziq4u', '2024-05-10', 1, 201757),
(701, 'qpo2n8yo', '2024-05-10', 1, 201757),
(702, 'a2bp7f62', '2024-05-10', 1, 201757),
(703, 'qdzxncr2', '2024-05-10', 1, 201757),
(704, '8dyh8rtz', '2024-05-10', 1, 201757),
(705, 'fjwymdfq', '2024-05-10', 1, 201757),
(706, 'gi5pmbw5', '2024-05-10', 1, 201757),
(707, 'ejpmbxsf', '2024-05-10', 1, 201757),
(708, 'kap0sox7', '2024-05-10', 1, 201757),
(709, '0zezagy5', '2024-05-10', 1, 201757),
(710, 'iqxo0xfg', '2024-05-10', 1, 201757),
(711, '5ven7m3f', '2024-05-10', 1, 201757),
(712, '8o0iin8u', '2024-05-10', 1, 201757),
(713, 'a42annmx', '2024-05-10', 1, 201757),
(714, '53k4rcwt', '2024-05-10', 1, 201757),
(715, 'ksef4uru', '2024-05-10', 1, 201757),
(716, '0eek5ppf', '2024-05-10', 1, 201757),
(717, 'uf8odve4', '2024-05-10', 1, 201757),
(718, 'zugmy3gh', '2024-05-10', 1, 201757),
(719, '86fb66hf', '2024-05-10', 1, 201757),
(720, 'rxas7uej', '2024-05-10', 1, 201757),
(721, '5rnwo640', '2024-05-10', 1, 201757),
(722, 'zrbjzquo', '2024-05-10', 1, 201757),
(723, '5xrcqvsc', '2024-05-10', 1, 201757),
(724, '4spefe8q', '2024-05-10', 1, 201757),
(725, 'rc0gap3j', '2024-05-10', 1, 201757),
(726, 'vni7ndcg', '2024-05-10', 1, 201757),
(727, 'ic3yavte', '2024-05-10', 1, 201757),
(728, 'zwfye5xa', '2024-05-10', 1, 201757),
(729, 'nr6uptib', '2024-05-10', 1, 201757),
(730, 'idgjjm8y', '2024-05-10', 1, 201757),
(731, '0rwrth7c', '2024-05-10', 1, 201757),
(732, '0n2pgsqg', '2024-05-10', 1, 201757),
(733, 'vx6pges0', '2024-05-10', 1, 201757),
(734, '70vucpon', '2024-05-10', 1, 201757),
(735, 'ffvmu2cu', '2024-05-10', 1, 201757),
(736, 'miheur2q', '2024-05-10', 1, 201757),
(737, 'vr7fhcw2', '2024-05-10', 1, 201757),
(738, 'qgatvc30', '2024-05-10', 1, 201757),
(739, 'ugfbzsun', '2024-05-10', 1, 201757),
(740, 'nf84or8r', '2024-05-10', 1, 201757),
(741, 'rgznp8fd', '2024-05-10', 1, 201757),
(742, 'kgujv0xb', '2024-05-10', 1, 201757),
(743, 'ixqdpnif', '2024-05-10', 1, 201757),
(744, 'mg3y345g', '2024-05-10', 1, 201757),
(745, 'p3h36q7n', '2024-05-10', 1, 201757),
(746, 'oi7aux0w', '2024-05-10', 1, 201757),
(747, 'vw3umqwh', '2024-05-10', 1, 201757),
(748, 'a8ma0pzg', '2024-05-10', 1, 201757),
(749, 'gse3x6x0', '2024-05-10', 1, 201757),
(750, 'sihn8vdr', '2024-05-10', 1, 201757),
(751, 'wmteief0', '2024-05-10', 1, 201757),
(752, '0ka5myjc', '2024-05-10', 1, 201757),
(753, 'dxmcv35f', '2024-05-10', 1, 201757),
(754, 'u7zjjof3', '2024-05-10', 1, 201757),
(755, 'kp03s0g5', '2024-05-10', 1, 201757),
(756, 'ru4yowyu', '2024-05-10', 1, 201757),
(757, 'e2ywehzf', '2024-05-10', 1, 201757),
(758, 'zi2mi2cq', '2024-05-10', 1, 201757),
(759, 'nkwc28yd', '2024-05-10', 1, 201757),
(760, 'v6osv24t', '2024-05-10', 1, 201757),
(761, 'pybjvyey', '2024-05-10', 1, 201757),
(762, '877rpygb', '2024-05-10', 1, 201757),
(763, 'iujq7is5', '2024-05-10', 1, 201757),
(764, 'kyohztkh', '2024-05-10', 1, 201757),
(765, 'tvsizk6d', '2024-05-10', 1, 201757),
(766, '6ka7w65x', '2024-05-10', 1, 201757),
(767, 'j77v4nm0', '2024-05-10', 1, 201757),
(768, 'cj4mb30c', '2024-05-10', 1, 201757),
(769, 'fnykfoxh', '2024-05-10', 1, 201757),
(770, 'wg8kaejm', '2024-05-10', 1, 201757),
(771, '5fnjxh5u', '2024-05-10', 1, 201757),
(772, 'int0qr0z', '2024-05-10', 1, 201757),
(773, '0y476kic', '2024-05-10', 1, 201757),
(774, 'oxfema75', '2024-05-10', 1, 201757),
(775, 'iverpzbu', '2024-05-10', 1, 201757),
(776, 'a86kwhmg', '2024-05-10', 1, 201757),
(777, 'k2smqpia', '2024-05-10', 1, 201757),
(778, '7pcekeer', '2024-05-10', 1, 201757),
(779, 'mzix2jok', '2024-05-10', 1, 201757),
(780, '3vm4xbo6', '2024-05-10', 1, 201757),
(781, 'zswj5ghk', '2024-05-10', 1, 201757),
(782, 'giibe6tk', '2024-05-10', 1, 201757),
(783, 'djv2f0yb', '2024-05-10', 1, 201757),
(784, 'n66qmpgq', '2024-05-10', 1, 201757),
(785, 'bx0nadx7', '2024-05-10', 1, 201757),
(786, '0vu2rdnu', '2024-05-10', 1, 201757),
(787, 'ujejtnx7', '2024-05-10', 1, 201757),
(788, 'qmxpnexa', '2024-05-10', 1, 201757),
(789, 'gwus4dem', '2024-05-10', 1, 201757),
(790, '6rg6ahb3', '2024-05-10', 1, 201757),
(791, '6dx635fj', '2024-05-10', 1, 201757),
(792, 'v4naianm', '2024-05-10', 1, 201757),
(793, 'vkbsohyi', '2024-05-10', 1, 201757),
(794, 'n7s3idje', '2024-05-10', 1, 201757),
(795, 'ugh4cdw2', '2024-05-10', 1, 201757),
(796, 'qsomrbuq', '2024-05-10', 1, 201757),
(797, 'apdr3j76', '2024-05-10', 1, 201757),
(798, '6r6omkkh', '2024-05-10', 1, 201757),
(799, 'co60otnm', '2024-05-10', 1, 201757),
(800, 'r7udzqa4', '2024-05-10', 1, 201757),
(801, 'rxqm4dot', '2024-05-10', 1, 201757),
(802, 'fzp76ois', '2024-05-10', 1, 201757),
(803, '334rivu4', '2024-05-10', 1, 201757),
(804, 'zan3twi0', '2024-05-10', 1, 201757),
(805, '383abpt2', '2024-05-10', 1, 201757),
(806, 'quzybiqb', '2024-05-10', 1, 201757),
(807, '77iej638', '2024-05-10', 1, 201757),
(808, 'e0vu2rbu', '2024-05-10', 1, 201757),
(809, 'sm0sfjzj', '2024-05-10', 1, 201757),
(810, 'wkrgtwpo', '2024-05-10', 1, 201757),
(811, 'bo2xi7si', '2024-05-10', 1, 201757),
(812, '724na4zb', '2024-05-10', 1, 201757),
(813, 'kqbcjnm3', '2024-05-10', 1, 201757),
(814, '3zdp3nm6', '2024-05-10', 1, 201757),
(815, 'jronagq7', '2024-05-10', 1, 201757),
(816, 'adpdzwbe', '2024-05-10', 1, 201757),
(817, 'uja5qemb', '2024-05-10', 1, 201757),
(818, '07bw27bt', '2024-05-10', 1, 201757),
(819, 'bwmrdjtx', '2024-05-10', 1, 201757),
(820, 'cxzgz26f', '2024-05-10', 1, 201757),
(821, 'gnighwuw', '2024-05-10', 1, 201757),
(822, 'pc7jc6gw', '2024-05-10', 1, 201757),
(823, '6vz470ay', '2024-05-10', 1, 201757),
(824, 'vc77s6hr', '2024-05-10', 1, 201757),
(825, 'ddzr3r33', '2024-05-10', 1, 201757),
(826, 'eqjv72nm', '2024-05-10', 1, 201757),
(827, 'c06r4nfw', '2024-05-10', 1, 201757),
(828, '4veso2v6', '2024-05-10', 1, 201757),
(829, 'kahc2hom', '2024-05-10', 1, 201757),
(830, 'fgwb25z2', '2024-05-10', 1, 201757),
(831, 'ddos5fcm', '2024-05-10', 1, 201757),
(832, 'fzob77vi', '2024-05-10', 1, 201757),
(833, 'vm5boo5f', '2024-05-10', 1, 201757),
(834, 'khidnf0r', '2024-05-10', 1, 201757),
(835, 'h0ruvn5m', '2024-05-10', 1, 201757),
(836, 'ef5537zy', '2024-05-10', 1, 201757),
(837, 'cw3bxdkn', '2024-05-10', 1, 201757),
(838, 'g8e78xgr', '2024-05-10', 1, 201757),
(839, 'yktcbueb', '2024-05-10', 1, 201757),
(840, 'dad7i8r7', '2024-05-10', 1, 201757),
(841, '8hqzww6c', '2024-05-10', 1, 201757),
(842, 'pb6a4me0', '2024-05-10', 1, 201757),
(843, 'dvgwn7c2', '2024-05-10', 1, 201757),
(844, 'hd5q6ysg', '2024-05-10', 1, 201757),
(845, 'cxcfnyt3', '2024-05-10', 1, 201757),
(846, '03f3uiak', '2024-05-10', 1, 201757),
(847, 'x6vs3az5', '2024-05-10', 1, 201757),
(848, 'iz6j5xi6', '2024-05-10', 1, 201757),
(849, 'yprnbb2h', '2024-05-10', 1, 201757),
(850, 'pyy3sxgn', '2024-05-10', 1, 201757),
(851, 'buon7wtf', '2024-05-10', 1, 201757),
(852, '0p232eme', '2024-05-10', 1, 201757),
(853, 'ke6xpcjp', '2024-05-10', 1, 201757),
(854, '0t4ocudi', '2024-05-10', 1, 201757),
(855, 'wz8ohbps', '2024-05-10', 1, 201757),
(856, 'gngbm7u5', '2024-05-10', 1, 201757),
(857, 'yufh8o4f', '2024-05-10', 1, 201757),
(858, 'gb0qc6ha', '2024-05-10', 1, 201757),
(859, 'p66go8vj', '2024-05-10', 1, 201757),
(860, 'jc67xk7k', '2024-05-10', 1, 201757),
(861, 't50m0kwh', '2024-05-10', 1, 201757),
(862, 'byhafjzw', '2024-05-10', 1, 201757),
(863, 'egjt6gr5', '2024-05-10', 1, 201757),
(864, 'z3i3ueo7', '2024-05-10', 1, 201757),
(865, 'ucyv5qyk', '2024-05-10', 1, 201757),
(866, '7zhaatbn', '2024-05-10', 1, 201757),
(867, 'b2f0t7iu', '2024-05-10', 1, 201757),
(868, 'ekdsemgg', '2024-05-10', 1, 201757),
(869, 'h2s7nsj6', '2024-05-10', 1, 201757),
(870, 'k0xdo35n', '2024-05-10', 1, 201757),
(871, 'byk4rzfs', '2024-05-10', 1, 201757),
(872, '0iwd2s4z', '2024-05-10', 1, 201757),
(873, '7ogxnko6', '2024-05-10', 1, 201757),
(874, '3vfs0mzu', '2024-05-10', 1, 201757),
(875, 'sfgfmuby', '2024-05-10', 1, 201757),
(876, 'ztmx8s70', '2024-05-10', 1, 201757),
(877, '7osw3vzz', '2024-05-10', 1, 201757),
(878, '3iyd0p85', '2024-05-10', 1, 201757),
(879, 'zgokmsb7', '2024-05-10', 1, 201757),
(880, 's53oewfd', '2024-05-10', 1, 201757),
(881, 'bvzdwomc', '2024-05-10', 1, 201757),
(882, 'qv3jskvz', '2024-05-10', 1, 201757),
(883, 'bzvxzugz', '2024-05-10', 1, 201757),
(884, 'tb3bie4m', '2024-05-10', 1, 201757),
(885, 'mxbanwvs', '2024-05-10', 1, 201757),
(886, 'sxgmgn45', '2024-05-10', 1, 201757),
(887, 'taquvfue', '2024-05-10', 1, 201757),
(888, 'tqyzziqo', '2024-05-10', 1, 201757),
(889, '7tvzcax0', '2024-05-10', 1, 201757),
(890, 'jnoot3vi', '2024-05-10', 1, 201757),
(891, 'ptsgdup6', '2024-05-10', 1, 201757),
(892, '6zactnuh', '2024-05-10', 1, 201757),
(893, 'fxbxaxxo', '2024-05-10', 1, 201757),
(894, 'ai2vq7t7', '2024-05-10', 1, 201757),
(895, 'ntrrg334', '2024-05-10', 1, 201757),
(896, 'xgfzqcn8', '2024-05-10', 1, 201757),
(897, 'yqurjk25', '2024-05-10', 1, 201757),
(898, 'pha0s5v0', '2024-05-10', 1, 201757),
(899, '0ckagox5', '2024-05-10', 1, 201757),
(900, 'kx0wobq6', '2024-05-10', 1, 201757),
(901, 'u6jfy2fw', '2024-05-10', 1, 201757),
(902, 'mt3ntjt4', '2024-05-10', 1, 201757),
(903, '8dny8p7n', '2024-05-10', 1, 201757),
(904, 'ibp48piq', '2024-05-10', 1, 201757),
(905, 'xk2bk6kc', '2024-05-10', 1, 201757),
(906, 'ptiyf08y', '2024-05-10', 1, 201757),
(907, 'yqj6dc3s', '2024-05-10', 1, 201757),
(908, 'demw0dty', '2024-05-10', 1, 201757),
(909, '0dxd8rwu', '2024-05-10', 1, 201757),
(910, 'qk3y4rva', '2024-05-10', 1, 201757),
(911, 'eha8v3t0', '2024-05-10', 1, 201757),
(912, '3beervc0', '2024-05-10', 1, 201757),
(913, 'tza8pikz', '2024-05-10', 1, 201757),
(914, 'p65kmmju', '2024-05-10', 1, 201757),
(915, '84qnz4yn', '2024-05-10', 1, 201757),
(916, '7hwkdrv2', '2024-05-10', 1, 201757),
(917, '2d5cqn3z', '2024-05-10', 1, 201757),
(918, '2en2fbmb', '2024-05-10', 1, 201757),
(919, 'wcxthdh5', '2024-05-10', 1, 201757),
(920, 'y024dvef', '2024-05-10', 1, 201757),
(921, 'smmg4ieb', '2024-05-10', 1, 201757),
(922, 'anvkspv4', '2024-05-10', 1, 201757),
(923, '0fq6gyio', '2024-05-10', 1, 201757),
(924, 'cuz6daqa', '2024-05-10', 1, 201757),
(925, 'yy7na0j0', '2024-05-10', 1, 201757),
(926, '37et7kjk', '2024-05-10', 1, 201757),
(927, '4j4ko3h7', '2024-05-10', 1, 201757),
(928, '4zgvfr76', '2024-05-10', 1, 201757),
(929, 'pqt54cbi', '2024-05-10', 1, 201757),
(930, 'spputivu', '2024-05-10', 1, 201757),
(931, '766dqhw2', '2024-05-10', 1, 201757),
(932, 'amseyfmj', '2024-05-10', 1, 201757),
(933, '8r04btyy', '2024-05-10', 1, 201757),
(934, 'aud06n4a', '2024-05-10', 1, 201757),
(935, '5knxaynz', '2024-05-10', 1, 201757),
(936, 'z87irci5', '2024-05-10', 1, 201757),
(937, 'gfbb70fv', '2024-05-10', 1, 201757),
(938, 'ke7iig0h', '2024-05-10', 1, 201757),
(939, 'iqk2m2nn', '2024-05-10', 1, 201757),
(940, 'md7nn32m', '2024-05-10', 1, 201757),
(941, 't857uqsa', '2024-05-10', 1, 201757),
(942, 'bbcw8hby', '2024-05-10', 1, 201757),
(943, 'd3cmicmq', '2024-05-10', 1, 201757),
(944, 'jhupu3ze', '2024-05-10', 1, 201757),
(945, 'mrwqmm00', '2024-05-10', 1, 201757),
(946, 'xy7j85ix', '2024-05-10', 1, 201757),
(947, 'kq2poa75', '2024-05-10', 1, 201757),
(948, 'sxurhbcg', '2024-05-10', 1, 201757),
(949, 'xr2fo2ex', '2024-05-10', 1, 201757),
(950, 'da4y4n3h', '2024-05-10', 1, 201757),
(951, 'gr20tebb', '2024-05-10', 1, 201757),
(952, 'jz6gzqed', '2024-05-10', 1, 201757),
(953, 'v6a2w2xp', '2024-05-10', 1, 201757),
(954, 'tg6pm366', '2024-05-10', 1, 201757),
(955, 'vtfcs7zo', '2024-05-10', 1, 201757),
(956, 'hrj6nsm4', '2024-05-10', 1, 201757),
(957, 's8mx7dq8', '2024-05-10', 1, 201757),
(958, 'kr5mv0zi', '2024-05-10', 1, 201757),
(959, '8243yqyj', '2024-05-10', 1, 201757),
(960, 'u3kspn4d', '2024-05-10', 1, 201757),
(961, 'xzzio6io', '2024-05-10', 1, 201757),
(962, 'd8e736qr', '2024-05-10', 1, 201757),
(963, 'xak535j2', '2024-05-10', 1, 201757),
(964, 'eeakxi5h', '2024-05-10', 1, 201757),
(965, 'gmvu5fkj', '2024-05-10', 1, 201757),
(966, '8vph8tyj', '2024-05-10', 1, 201757),
(967, 'cy7podzj', '2024-05-10', 1, 201757),
(968, 'b7kq4jka', '2024-05-10', 1, 201757),
(969, 'ki0uh6nu', '2024-05-10', 1, 201757),
(970, 'r5ycih5p', '2024-05-10', 1, 201757),
(971, 'yh8p58fr', '2024-05-10', 1, 201757),
(972, 'nnrti2pq', '2024-05-10', 1, 201757),
(973, 'sxxwebhj', '2024-05-10', 1, 201757),
(974, 'pa88fti8', '2024-05-10', 1, 201757),
(975, 'kwci4rja', '2024-05-10', 1, 201757),
(976, '4dqmh5z8', '2024-05-10', 1, 201757),
(977, 'bh0yy52e', '2024-05-10', 1, 201757),
(978, 'ie8genkg', '2024-05-10', 1, 201757),
(979, 'i2yv6ybg', '2024-05-10', 1, 201757),
(980, 'up8fmduw', '2024-05-10', 1, 201757),
(981, 'oidpo7ev', '2024-05-10', 1, 201757),
(982, '8pq34szi', '2024-05-10', 1, 201757),
(983, 'ono7jedn', '2024-05-10', 1, 201757),
(984, 'yqrr4pk5', '2024-05-10', 1, 201757),
(985, '04obfyr8', '2024-05-10', 1, 201757),
(986, 'd6asupj2', '2024-05-10', 1, 201757),
(987, 'n0m2srnp', '2024-05-10', 1, 201757),
(988, 'zefdszgh', '2024-05-10', 1, 201757),
(989, '3sa3q7w6', '2024-05-10', 1, 201757),
(990, '2c6vjtnm', '2024-05-10', 1, 201757),
(991, 'xcukkofi', '2024-05-10', 1, 201757),
(992, 'gbicci4i', '2024-05-10', 1, 201757),
(993, 'hmbdq4ii', '2024-05-10', 1, 201757),
(994, 'xkiuhv7k', '2024-05-10', 1, 201757),
(995, 'esxvxk82', '2024-05-10', 1, 201757),
(996, 'bdyxysbp', '2024-05-10', 1, 201757),
(997, '6nfshnb6', '2024-05-10', 1, 201757),
(998, '6u4iybqe', '2024-05-10', 1, 201757),
(999, 'hvkecsjw', '2024-05-10', 1, 201757),
(1000, '72zdwovt', '2024-05-10', 1, 201757),
(1001, '6d70rydn', '2024-05-10', 1, 201757),
(1002, '0ckg70kr', '2024-05-10', 1, 201757),
(1003, 'p7c4c6jo', '2024-05-10', 1, 201757),
(1004, '6iurs6cs', '2024-05-10', 1, 201757),
(1005, '5icx04hz', '2024-05-10', 1, 201757),
(1006, 'oyv63mht', '2024-05-10', 1, 201757),
(1007, 'to52owjk', '2024-05-10', 1, 201757),
(1008, 'edpaiz4k', '2024-05-10', 1, 201757),
(1009, '5icc5df0', '2024-05-10', 1, 201757),
(1010, 'qr8gka3k', '2024-05-10', 1, 201757),
(1011, 'rgtxvgop', '2024-05-10', 1, 201757),
(1012, 'dqchojna', '2024-05-10', 1, 201757),
(1013, '5wgh2vwm', '2024-05-10', 1, 201757),
(1014, 'pf4x6eho', '2024-05-10', 1, 201757),
(1015, '5xaoi2t5', '2024-05-10', 1, 201757),
(1016, '3imgunmx', '2024-05-10', 1, 201757),
(1017, '7dubjhze', '2024-05-10', 1, 201757),
(1018, 'jcyk0pvu', '2024-05-10', 1, 201757),
(1019, 'wxdvpnnv', '2024-05-10', 1, 201757),
(1020, 'qzj7y8do', '2024-05-10', 1, 201757),
(1021, 'vad3auqa', '2024-05-10', 1, 201757),
(1022, 'fqsho4x5', '2024-05-10', 1, 201757),
(1023, '5kr35rdp', '2024-05-10', 1, 201757),
(1024, '3fxvhtqu', '2024-05-10', 1, 201757),
(1025, 'yn8kb8e3', '2024-05-10', 1, 201757),
(1026, 'kbyd74sf', '2024-05-10', 1, 201757),
(1027, 'xqttdw2g', '2024-05-10', 1, 201757),
(1028, 'qbn760pd', '2024-05-10', 1, 201757),
(1029, '0zjwwvve', '2024-05-10', 1, 201757),
(1030, 'cgxrrdzx', '2024-05-10', 1, 201757),
(1031, 'afkucc3o', '2024-05-10', 1, 201757),
(1032, '323kc3cg', '2024-05-10', 1, 201757),
(1033, 'gtays60t', '2024-05-10', 1, 201757),
(1034, '0dm673qz', '2024-05-10', 1, 201757),
(1035, '3xup3xtg', '2024-05-10', 1, 201757),
(1036, 'jgjisd4q', '2024-05-10', 1, 201757),
(1037, 'nr288zi5', '2024-05-10', 1, 201757),
(1038, 'aov7wikb', '2024-05-10', 1, 201757),
(1039, 'xb0wdrju', '2024-05-10', 1, 201757),
(1040, 'f3y3yam2', '2024-05-10', 1, 201757),
(1041, 'k483ukqx', '2024-05-10', 1, 201757),
(1042, '32gjjpmx', '2024-05-10', 1, 201757),
(1043, 'wauifaxd', '2024-05-10', 1, 201757),
(1044, 'jutzpnaz', '2024-05-10', 1, 201757),
(1045, 'opxmhgoi', '2024-05-10', 1, 201757),
(1046, 'gkvafbo3', '2024-05-10', 1, 201757),
(1047, '65rbq8w2', '2024-05-10', 1, 201757),
(1048, 'mkmwcyzq', '2024-05-10', 1, 201757),
(1049, '7c38qjis', '2024-05-10', 1, 201757),
(1050, 't0yrtu6w', '2024-05-10', 1, 201757),
(1051, 'c6hwgypn', '2024-05-10', 1, 201757),
(1052, '674yuy4q', '2024-05-10', 1, 201757),
(1053, '075dd6ex', '2024-05-10', 1, 201757),
(1054, 'vxiv682x', '2024-05-10', 1, 201757),
(1055, 'ssb7hn3h', '2024-05-10', 1, 201757),
(1056, '3g7wkkxb', '2024-05-10', 1, 201757),
(1057, '6gppwqvp', '2024-05-10', 1, 201757),
(1058, 'dunfrhni', '2024-05-10', 1, 201757),
(1059, 'medxxk72', '2024-05-10', 1, 201757),
(1060, '8ymzs6g0', '2024-05-10', 1, 201757),
(1061, 'e66xzz6z', '2024-05-10', 1, 201757),
(1062, 'inwu8arw', '2024-05-10', 1, 201757),
(1063, 'd00d5tmy', '2024-05-10', 1, 201757),
(1064, 'xyu8wwbt', '2024-05-10', 1, 201757),
(1065, 'ty5yde2d', '2024-05-10', 1, 201757),
(1066, 'zpobiki6', '2024-05-10', 1, 201757),
(1067, 'of2e5sdk', '2024-05-10', 1, 201757),
(1068, 'tfz25ddq', '2024-05-10', 1, 201757),
(1069, 'dz3rota2', '2024-05-10', 1, 201757),
(1070, 'u52kxuk8', '2024-05-10', 1, 201757),
(1071, 'hy7gm7xc', '2024-05-10', 1, 201757),
(1072, '0n0pvvfk', '2024-05-10', 1, 201757),
(1073, 'msaojmom', '2024-05-10', 1, 201757),
(1074, 'usjjzn2j', '2024-05-10', 1, 201757),
(1075, 'iaqh45b0', '2024-05-10', 1, 201757),
(1076, 'z7it2m3f', '2024-05-10', 1, 201757),
(1077, 'jv8b7jvs', '2024-05-10', 1, 201757),
(1078, '82i72oex', '2024-05-10', 1, 201757),
(1079, 'ox5ceikg', '2024-05-10', 1, 201757),
(1080, 't8nmvztu', '2024-05-10', 1, 201757),
(1081, 'trkhrfwb', '2024-05-10', 1, 201757),
(1082, 'acrpzn5y', '2024-05-10', 1, 201757),
(1083, 'xtxxmgx6', '2024-05-10', 1, 201757),
(1084, '368ew065', '2024-05-10', 1, 201757),
(1085, 'u6r0ucsu', '2024-05-10', 1, 201757),
(1086, 'nbq053j7', '2024-05-10', 1, 201757),
(1087, 'r4md76ve', '2024-05-10', 1, 201757),
(1088, 'm0mvgdnw', '2024-05-10', 1, 201757),
(1089, 'x4kzkfx4', '2024-05-10', 1, 201757),
(1090, 'p7azxt58', '2024-05-10', 1, 201757),
(1091, 'g3pivc2f', '2024-05-10', 1, 201757),
(1092, 'hisejvk7', '2024-05-10', 1, 201757),
(1093, 'urniwgj2', '2024-05-10', 1, 201757),
(1094, 'mvuuzgnw', '2024-05-10', 1, 201757),
(1095, '5bgddkx4', '2024-05-10', 1, 201757),
(1096, '0ei7gc5j', '2024-05-10', 1, 201757),
(1097, 'w82pox25', '2024-05-10', 1, 201757),
(1098, 'p7rgjjga', '2024-05-10', 1, 201757),
(1099, 'w0qpd4zw', '2024-05-10', 1, 201757),
(1100, '5inni2nh', '2024-05-10', 1, 201757),
(1101, 'zfcej2uq', '2024-05-10', 1, 201757),
(1102, 'wxvnv06g', '2024-05-10', 1, 201757),
(1103, 'gz7dv5o2', '2024-05-10', 1, 201757),
(1104, 'bajkut4a', '2024-05-10', 1, 201757),
(1105, 'ufgqwmbj', '2024-05-10', 1, 201757),
(1106, 'xxo250y7', '2024-05-10', 1, 201757),
(1107, 'boj08yr5', '2024-05-10', 1, 201757),
(1108, 'k20x2byp', '2024-05-10', 1, 201757),
(1109, '7guhje77', '2024-05-10', 1, 201757),
(1110, '53nqoegg', '2024-05-10', 1, 201757),
(1111, '0ihmpf2i', '2024-05-10', 1, 201757),
(1112, '2tfsz3gs', '2024-05-10', 1, 201757),
(1113, '5j5ntstm', '2024-05-10', 1, 201757),
(1114, 'vc0vmbh4', '2024-05-10', 1, 201757),
(1115, 'jsdcb0a6', '2024-05-10', 1, 201757),
(1116, 'xmdsacq5', '2024-05-10', 1, 201757),
(1117, 'vcbvvzd4', '2024-05-10', 1, 201757),
(1118, 'p2vt8swx', '2024-05-10', 1, 201757),
(1119, 'y25mgiiu', '2024-05-10', 1, 201757),
(1120, '6q8i5q83', '2024-05-10', 1, 201757),
(1121, '6rk6ku05', '2024-05-10', 1, 201757),
(1122, 'cjftcgtb', '2024-05-10', 1, 201757),
(1123, '8o58wkwm', '2024-05-10', 1, 201757),
(1124, 'z7d8ugxv', '2024-05-10', 1, 201757),
(1125, 'wcf0wrb6', '2024-05-10', 1, 201757),
(1126, 'ddzno4pu', '2024-05-10', 1, 201757),
(1127, 'aq3ykjxd', '2024-05-10', 1, 201757),
(1128, 'jcu4dikw', '2024-05-10', 1, 201757),
(1129, '5o36mph7', '2024-05-10', 1, 201757),
(1130, 'vabpbm3q', '2024-05-10', 1, 201757),
(1131, 'mfdo0c2r', '2024-05-10', 1, 201757),
(1132, 'vpg0nnhi', '2024-05-10', 1, 201757),
(1133, '7srn2wpx', '2024-05-10', 1, 201757),
(1134, 'cnpgjjip', '2024-05-10', 1, 201757),
(1135, 'sn25six0', '2024-05-10', 1, 201757),
(1136, 'rafi84kp', '2024-05-10', 1, 201757),
(1137, 'auiqxc7k', '2024-05-10', 1, 201757),
(1138, 'o4cp4xx2', '2024-05-10', 1, 201757),
(1139, 'rom7u6xb', '2024-05-10', 1, 201757),
(1140, 'e207nyaw', '2024-05-10', 1, 201757),
(1141, 'u8wwycqm', '2024-05-10', 1, 201757),
(1142, 'acaxt8r2', '2024-05-10', 1, 201757),
(1143, 'a4ctig3q', '2024-05-10', 1, 201757),
(1144, '7aogwo0h', '2024-05-10', 1, 201757),
(1145, 'ohrguasd', '2024-05-10', 1, 201757),
(1146, 'kzjmbwc6', '2024-05-10', 1, 201757),
(1147, 'cybxpckf', '2024-05-10', 1, 201757),
(1148, 'tjp023cj', '2024-05-10', 1, 201757),
(1149, '004wi2vj', '2024-05-10', 1, 201757),
(1150, '8nxf4aut', '2024-05-10', 1, 201757),
(1151, 'ph2tskav', '2024-05-10', 1, 201757),
(1152, '3pefa6k8', '2024-05-10', 1, 201757),
(1153, 'pemgz52i', '2024-05-10', 1, 201757),
(1154, 'rxup6wo8', '2024-05-10', 1, 201757),
(1155, 'hy2onigj', '2024-05-10', 1, 201757),
(1156, 'nkjui3bu', '2024-05-10', 1, 201757),
(1157, 'ecyub3pk', '2024-05-10', 1, 201757),
(1158, '4qotakah', '2024-05-10', 1, 201757),
(1159, 'jjzh7g35', '2024-05-10', 1, 201757),
(1160, '478gc0pg', '2024-05-10', 1, 201757),
(1161, 'hreuvsp5', '2024-05-10', 1, 201757),
(1162, 'tifqxjvd', '2024-05-10', 1, 201757),
(1163, 'rh3dmzk8', '2024-05-10', 1, 201757),
(1164, 'kbhaijm3', '2024-05-10', 1, 201757),
(1165, '334eefmh', '2024-05-10', 1, 201757),
(1166, 'xdwjpeup', '2024-05-10', 1, 201757),
(1167, 'npsvfzii', '2024-05-10', 1, 201757),
(1168, 'wqpg4ryd', '2024-05-10', 1, 201757),
(1169, 'mesor8zf', '2024-05-10', 1, 201757),
(1170, 'ew7dqtq7', '2024-05-10', 1, 201757),
(1171, 'g62cp7gc', '2024-05-10', 1, 201757),
(1172, '5fyk7ipo', '2024-05-10', 1, 201757),
(1173, 'mtytmwav', '2024-05-10', 1, 201757),
(1174, '7aur8vsd', '2024-05-10', 1, 201757),
(1175, 'yii5ab5m', '2024-05-10', 1, 201757),
(1176, '7q74y7ur', '2024-05-10', 1, 201757),
(1177, 'py7jx24t', '2024-05-10', 1, 201757),
(1178, 'wsx0u0mn', '2024-05-10', 1, 201757),
(1179, '70oekq7f', '2024-05-10', 1, 201757),
(1180, 'po67d40v', '2024-05-10', 1, 201757),
(1181, 'eeji0r0z', '2024-05-10', 1, 201757),
(1182, 'hzbub2vn', '2024-05-10', 1, 201757),
(1183, 'qdw43zzy', '2024-05-10', 1, 201757),
(1184, 'qpcfph63', '2024-05-10', 1, 201757),
(1185, 'yd8bf6e3', '2024-05-10', 1, 201757),
(1186, '630mji2y', '2024-05-10', 1, 201757);
INSERT INTO `tblvotingcode` (`VCID`, `CodeNo`, `GenerateDate`, `CVUse`, `AuthPrint`) VALUES
(1187, 'tn7pttib', '2024-05-10', 1, 201757),
(1188, 'ethwh0q3', '2024-05-10', 1, 201757),
(1189, '2afdhy8i', '2024-05-10', 1, 201757),
(1190, '8ubwekse', '2024-05-10', 1, 201757),
(1191, '6sbi2zz6', '2024-05-10', 1, 201757),
(1192, 'xnmh6jk2', '2024-05-10', 1, 201757),
(1193, 'tghwvgw5', '2024-05-10', 1, 201757),
(1194, '8wir5teb', '2024-05-10', 1, 201757),
(1195, '4sptv6k2', '2024-05-10', 1, 201757),
(1196, 'n4gq5qkw', '2024-05-10', 1, 201757),
(1197, 'w0mmyua0', '2024-05-10', 1, 201757),
(1198, 'uvtsyvmv', '2024-05-10', 1, 201757),
(1199, 'gdqsyij7', '2024-05-10', 1, 201757),
(1200, 'k80pmicu', '2024-05-10', 1, 201757),
(1201, '2kx87f70', '2024-05-10', 1, 201757),
(1202, 'tkhjj2ky', '2024-05-10', 1, 201757),
(1203, 'd83ccfp8', '2024-05-10', 1, 201757),
(1204, 'u8c57mvb', '2024-05-10', 1, 201757),
(1205, 'eot2aw3h', '2024-05-10', 1, 201757),
(1206, 'rwy08oqm', '2024-05-10', 1, 201757),
(1207, 'hc3nm24n', '2024-05-10', 1, 201757),
(1208, 'cvyhuz0d', '2024-05-10', 1, 201757),
(1209, 'kxnhiuhf', '2024-05-10', 1, 201757),
(1210, 'bjj2doc4', '2024-05-10', 1, 201757),
(1211, 'e6qf8vsp', '2024-05-10', 1, 201757),
(1212, 'zik6c6rk', '2024-05-10', 1, 201757),
(1213, 'w2yekrnk', '2024-05-10', 1, 201757),
(1214, 'eu2tqn3y', '2024-05-10', 1, 201757),
(1215, 'twfgjuwi', '2024-05-10', 1, 201757),
(1216, 'mhx353ip', '2024-05-10', 1, 201757),
(1217, 'vwpmfizj', '2024-05-10', 1, 201757),
(1218, 'gh0b66np', '2024-05-10', 1, 201757),
(1219, '6s4i2ax5', '2024-05-10', 1, 201757),
(1220, '06w5s3o4', '2024-05-10', 1, 201757),
(1221, 't6sxr2ys', '2024-05-10', 1, 201757),
(1222, 'ox8hhzvr', '2024-05-10', 1, 201757),
(1223, 'usqxrx6n', '2024-05-10', 1, 201757),
(1224, 'jx6y2rea', '2024-05-10', 1, 201757),
(1225, 'z44daaps', '2024-05-10', 1, 201757),
(1226, '8y23x8iy', '2024-05-10', 1, 201757),
(1227, 'uwuz8yiy', '2024-05-10', 1, 201757),
(1228, 'arbde7m8', '2024-05-10', 1, 201757),
(1229, 'mdraead3', '2024-05-10', 1, 201757),
(1230, 'iz6j5xi6', '2024-05-10', 1, 201757),
(1231, '663dft0b', '2024-05-10', 1, 201757),
(1232, '5svvqsqv', '2024-05-10', 1, 201757),
(1233, 'ppte7u68', '2024-05-10', 1, 201757),
(1234, '28vsyddw', '2024-05-10', 1, 201757),
(1235, '6p3qh6vs', '2024-05-10', 1, 201757),
(1236, '0a0jebk2', '2024-05-10', 1, 201757),
(1237, 'ghyvsi5j', '2024-05-10', 1, 201757),
(1238, 'h5dbdg0p', '2024-05-10', 1, 201757),
(1239, 'rowx63ux', '2024-05-10', 1, 201757),
(1240, 'scaoxg2z', '2024-05-10', 1, 201758),
(1241, 'nyf0k5ny', '2024-05-10', 1, 201758),
(1242, '5udvmtdu', '2024-05-10', 1, 201758),
(1243, '7xnemxnh', '2024-05-10', 1, 201758),
(1244, '57njbhrk', '2024-05-10', 1, 201758),
(1245, 'vge6s6h5', '2024-05-10', 1, 201758),
(1246, 'gajfxhhq', '2024-05-10', 1, 201758),
(1247, 'ae0y5aq2', '2024-05-10', 1, 201758),
(1248, 'wz76grvi', '2024-05-10', 1, 201758),
(1249, 'bj8zhh5j', '2024-05-10', 1, 201758);

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `ACCOUNT_ID` int(11) NOT NULL,
  `ACCOUNT_NAME` varchar(255) NOT NULL,
  `ACCOUNT_USERNAME` varchar(255) NOT NULL,
  `ACCOUNT_PASSWORD` text NOT NULL,
  `ACCOUNT_TYPE` varchar(30) NOT NULL,
  `EMPID` int(11) NOT NULL,
  `USERIMAGE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`ACCOUNT_ID`, `ACCOUNT_NAME`, `ACCOUNT_USERNAME`, `ACCOUNT_PASSWORD`, `ACCOUNT_TYPE`, `EMPID`, `USERIMAGE`) VALUES
(1, 'Adamu Muhammad Shafiu', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 1234, 'photos/import2.png'),
(9, 'ABUBAKAR SANI SADIQ', 'Sadiq', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'SSG', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`AutoID`);

--
-- Indexes for table `tblcandidate`
--
ALTER TABLE `tblcandidate`
  ADD PRIMARY KEY (`CandidateID`),
  ADD KEY `StudentID` (`StudentID`);

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`CourseID`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- Indexes for table `tbldepartment`
--
ALTER TABLE `tbldepartment`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `tblevents`
--
ALTER TABLE `tblevents`
  ADD PRIMARY KEY (`EventID`);

--
-- Indexes for table `tbleventwinner`
--
ALTER TABLE `tbleventwinner`
  ADD PRIMARY KEY (`EWID`);

--
-- Indexes for table `tbllogs`
--
ALTER TABLE `tbllogs`
  ADD PRIMARY KEY (`LOGID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `StudentID` (`StudentID`);

--
-- Indexes for table `tbltimetable`
--
ALTER TABLE `tbltimetable`
  ADD PRIMARY KEY (`TimeTableID`);

--
-- Indexes for table `tblverifytimeintimeout`
--
ALTER TABLE `tblverifytimeintimeout`
  ADD PRIMARY KEY (`VerifyID`),
  ADD UNIQUE KEY `StudentID` (`StudentID`);

--
-- Indexes for table `tblvotes`
--
ALTER TABLE `tblvotes`
  ADD PRIMARY KEY (`VotesId`);

--
-- Indexes for table `tblvotingcode`
--
ALTER TABLE `tblvotingcode`
  ADD PRIMARY KEY (`VCID`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`ACCOUNT_ID`),
  ADD UNIQUE KEY `ACCOUNT_USERNAME` (`ACCOUNT_USERNAME`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `AutoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcandidate`
--
ALTER TABLE `tblcandidate`
  MODIFY `CandidateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblcourse`
--
ALTER TABLE `tblcourse`
  MODIFY `CourseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbldepartment`
--
ALTER TABLE `tbldepartment`
  MODIFY `DepartmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblevents`
--
ALTER TABLE `tblevents`
  MODIFY `EventID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbleventwinner`
--
ALTER TABLE `tbleventwinner`
  MODIFY `EWID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbllogs`
--
ALTER TABLE `tbllogs`
  MODIFY `LOGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbltimetable`
--
ALTER TABLE `tbltimetable`
  MODIFY `TimeTableID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblverifytimeintimeout`
--
ALTER TABLE `tblverifytimeintimeout`
  MODIFY `VerifyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblvotes`
--
ALTER TABLE `tblvotes`
  MODIFY `VotesId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblvotingcode`
--
ALTER TABLE `tblvotingcode`
  MODIFY `VCID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1250;

--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
