-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 26, 2019 at 07:50 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `creditmng`
--

-- --------------------------------------------------------

--
-- Table structure for table `trans`
--

CREATE TABLE IF NOT EXISTS `trans` (
  `uaccno1` varchar(100) NOT NULL,
  `uaccno2` varchar(100) NOT NULL,
  `ucredit` int(10) NOT NULL,
  `tdate` date NOT NULL
) TYPE=MyISAM;

--
-- Dumping data for table `trans`
--

INSERT INTO `trans` (`uaccno1`, `uaccno2`, `ucredit`, `tdate`) VALUES
('GRIP000222', 'GRIP000013', 50, '2019-03-09'),
('GRIP000012', 'GRIP000222', 43, '2019-03-07'),
('GRIP000123', 'GRIP000001', 299, '2019-03-15'),
('GRIP000123', 'GRIP000312', 121, '2019-03-12'),
('GRIP000001', 'GRIP000312', 67, '2019-03-11'),
('GRIP000223', 'GRIP000002', 78, '2019-03-19'),
('GRIP000012', 'GRIP000313', 132, '2019-01-15'),
('GRIP000012', 'GRIP000222', 97, '2019-03-12');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `uid` int(10) NOT NULL,
  `unm` varchar(50) NOT NULL,
  `uemail` varchar(100) NOT NULL,
  `udob` date NOT NULL,
  `uadd` varchar(100) NOT NULL,
  `ucredit` int(10) NOT NULL DEFAULT '0',
  `uaccno` varchar(50) NOT NULL,
  PRIMARY KEY (`uaccno`),
  UNIQUE KEY `uaccno` (`uaccno`),
  UNIQUE KEY `uaccno_2` (`uaccno`),
  UNIQUE KEY `uaccno_3` (`uaccno`)
) TYPE=MyISAM;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `unm`, `uemail`, `udob`, `uadd`, `ucredit`, `uaccno`) VALUES
(1, 'aditya yadav', 'yadavaditya205gmail.com', '1997-03-24', 'khalgaon , gopalganj, Bihar', 3232, 'AC000001'),
(2, 'sumi ', 'jhangarasumit@yahoo.com', '1994-10-13', 'malad,mumbai', 3580, 'AC000123'),
(3, 'vishesh ', 'vi12345@gmail.com', '1997-03-19', 'jamuna apartment,raipur', 11728, 'AC000012'),
(4, 'angesh', 'ang3378@gmail.com', '1994-03-20', 'house 23,sk puri, bhopal', 3688, 'AC000312'),
(5, 'alok', 'alok334@yahoo.com', '1995-06-13', 't. nagar chennai', 5900, 'AC000124'),
(6, 'rohit', 'kumarro@gmail.com', '1997-08-24', 'gandhi colony khandwa', 5640, 'AC000222'),
(7, 'naveen roy', 'roynaveen121@gmail.com', '1998-11-12', 'patliputra colony, patna', 6832, 'AC000225'),
(8, 'swasti swaroopa', 'swati420@gmail.com', '1994-01-12', 'chatta chowk,muzaffarpur', 9668, 'AC000002'),
(9, 'amardeep', 'amar990@yahoo.com', '1995-09-11', 'central colony,ahemdabad', 7050, 'AC000013'),
(10, 'ratnesh', 'ratneshj@gmail.com', '1997-12-24', 'khetan market,singrauli', 9952, 'AC000313');
