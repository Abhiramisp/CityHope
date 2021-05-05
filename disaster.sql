-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 05, 2021 at 06:31 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `disaster`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_visitor`
--

CREATE TABLE IF NOT EXISTS `add_visitor` (
  `vid` int(20) NOT NULL AUTO_INCREMENT,
  `visitor_name` varchar(30) NOT NULL,
  `address` varchar(300) NOT NULL,
  `phone_num` int(15) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `pswd` varchar(25) NOT NULL,
  `skill` varchar(20) NOT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `add_visitor`
--

INSERT INTO `add_visitor` (`vid`, `visitor_name`, `address`, `phone_num`, `dob`, `gender`, `email`, `username`, `pswd`, `skill`) VALUES
(1, 'abhi', 'ami kannur', 1234567890, '0000-00-00', 'female', 'zxcvbn@zxcv.mnv', 'abhi', '1234', 'swimming'),
(2, '1', '1', 1, '0000-00-00', '1', '', '1', '1', '1'),
(3, 'wertyui', 'wertyui', 1234567890, '2019-03-14', 'on', 'aa@aa.aa', 'aa', 'aa', 'sdfghjkl'),
(4, 'qwert', 'qwert', 1234567890, '2019-03-09', 'on', 'sd@dfg.sd', 'sdf', '123', 'sdfg'),
(5, 'asdfg', 'dfgh', 1234567899, '2019-03-24', 'male', 'wedfrg@sdfgh', 'wsdfgh', '123', 'sdfgh'),
(6, 'xcvbn', 'dfgh', 1234567890, '2019-03-17', 'male', 'dfghj@dfghj', 'qwerty', '123', 'wedfghj'),
(7, 'asdfg', 'sdfghj', 1234567890, '2019-03-03', 'male', 'dfghj@sdfgh', 'ertgh', '123', 'dfgh');

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE IF NOT EXISTS `adminlogin` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`aid`, `username`, `password`) VALUES
(1, 'abhi', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `catagerylist`
--

CREATE TABLE IF NOT EXISTS `catagerylist` (
  `cid` int(10) NOT NULL AUTO_INCREMENT,
  `Items` varchar(30) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `catagerylist`
--

INSERT INTO `catagerylist` (`cid`, `Items`) VALUES
(1, 'Money'),
(2, 'Food'),
(3, 'Dress'),
(4, 'Medicines'),
(5, 'water'),
(6, 'books'),
(7, 'bedsheet');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_message`
--

CREATE TABLE IF NOT EXISTS `complaint_message` (
  `mid` int(25) NOT NULL AUTO_INCREMENT,
  `uid` int(25) NOT NULL,
  `complaint_message` varchar(250) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `complaint_message`
--

INSERT INTO `complaint_message` (`mid`, `uid`, `complaint_message`) VALUES
(2, 3, 'asdfghj'),
(3, 3, 'asdfghj'),
(4, 4, ''),
(5, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `investreg`
--

CREATE TABLE IF NOT EXISTS `investreg` (
  `iid` int(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `second_name` varchar(30) NOT NULL,
  `address` varchar(300) NOT NULL,
  `phone_number` int(13) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `Skill` varchar(25) NOT NULL,
  `uname` varchar(25) NOT NULL,
  `pswd` varchar(25) NOT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `investreg`
--

INSERT INTO `investreg` (`iid`, `first_name`, `second_name`, `address`, `phone_number`, `blood_group`, `gender`, `Skill`, `uname`, `pswd`) VALUES
(1, 'abhi', 'ami', 'ami kannur', 1234567890, 'o+', 'female', '', 'ami', '1234'),
(2, 'sdf', 'dfgh', 'sdfghjkl', 1234567890, 'A+', 'female', 'ascdfgfhjk', 'abhi', '1234'),
(3, 'lavanya', '', '', 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `invest_item`
--

CREATE TABLE IF NOT EXISTS `invest_item` (
  `invest_num` int(20) NOT NULL AUTO_INCREMENT,
  `iid` int(20) NOT NULL,
  `cid` int(20) NOT NULL,
  PRIMARY KEY (`invest_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `invest_item`
--


-- --------------------------------------------------------

--
-- Table structure for table `rqst_snd`
--

CREATE TABLE IF NOT EXISTS `rqst_snd` (
  `rid` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(20) NOT NULL,
  `cid` int(20) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `rqst_snd`
--

INSERT INTO `rqst_snd` (`rid`, `uid`, `cid`) VALUES
(1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `send_site`
--

CREATE TABLE IF NOT EXISTS `send_site` (
  `sid` int(20) NOT NULL AUTO_INCREMENT,
  `vid` int(20) NOT NULL,
  `msg` varchar(300) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `send_site`
--

INSERT INTO `send_site` (`sid`, `vid`, `msg`) VALUES
(7, 1, 'sdfgh');

-- --------------------------------------------------------

--
-- Table structure for table `site_manager`
--

CREATE TABLE IF NOT EXISTS `site_manager` (
  `site_id` int(25) NOT NULL AUTO_INCREMENT,
  `vid` int(25) NOT NULL,
  `confirmation_status` int(25) NOT NULL,
  `reject_status` int(25) NOT NULL,
  `msg` varchar(100) NOT NULL,
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `site_manager`
--

INSERT INTO `site_manager` (`site_id`, `vid`, `confirmation_status`, `reject_status`, `msg`) VALUES
(8, 1, 0, 1, 'fake request');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `iid` int(10) NOT NULL,
  `amount` int(250) NOT NULL,
  `tdat` date NOT NULL,
  `Tmode` varchar(50) NOT NULL,
  `Account_Number` varchar(50) NOT NULL,
  `Bank_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `transaction`
--


-- --------------------------------------------------------

--
-- Table structure for table `transaction_mode`
--

CREATE TABLE IF NOT EXISTS `transaction_mode` (
  `rno` int(25) NOT NULL AUTO_INCREMENT,
  `t_mode` varchar(30) NOT NULL,
  PRIMARY KEY (`rno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `transaction_mode`
--

INSERT INTO `transaction_mode` (`rno`, `t_mode`) VALUES
(1, 'cheque'),
(2, 'bank'),
(3, 'direct pay');

-- --------------------------------------------------------

--
-- Table structure for table `user_reg`
--

CREATE TABLE IF NOT EXISTS `user_reg` (
  `uid` int(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `second_name` varchar(30) NOT NULL,
  `address` varchar(300) NOT NULL,
  `phone_number` int(13) NOT NULL,
  `email` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `pswd` varchar(25) NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `user_reg`
--

INSERT INTO `user_reg` (`uid`, `first_name`, `second_name`, `address`, `phone_number`, `email`, `username`, `pswd`, `status`) VALUES
(1, 'abhi', 'ami', 'ami kannur', 1234567890, 'ami@gmail.com', 'abhi', '1234', 1),
(2, 'as', 'c', 'xfghj', 2147483647, 'as@asdc', 'rs', '12', 0),
(3, 'neha', 'm', 'sdfg', 1234567890, 'cv@gmail.com', '123', 'abc', 0),
(4, 'abhirami', 'suresh', 'CHUVATTA KALIDILL, MAHADEVA GRAMMAM, PAYYANUR', 2147483647, 'amicheeku007@gmail.com', 'amicheeku', 'abhirami', 0),
(5, 'abhi', 'ami', 'aoqisj', 2147483647, 'adrfgh@dfg.g', 'abhiami', 'abhiami', 0),
(6, 'sdxfghb', 'sedrftgh', 'szderfgth', 2147483647, 'qjsdnalq@ws', 'abhirami', 'abhirami', 0),
(7, 'zxcv', 'zsxdcfvg', 'sxdcfvgb', 2147483647, 'asdfg@de.dwsw', 'abhirami', 'abhirami', 0),
(15, '', '', '', 2147483647, 'amicheeku007@gmail.com', 'abhi', 'abhirami', 0),
(16, '', '', '', 0, '', '', '', 0),
(17, '', '', '', 2147483647, 'aswde@frd.def', 'abhirami', '123456789', 0),
(18, 'abhirami', 'sp', 'wedhiuewqjfoi', 2147483647, 'wedhf@eif.sf', 'chekan', 'chekan', 0);
