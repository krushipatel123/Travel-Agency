-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 15, 2016 at 11:28 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `travel_agency`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL auto_increment,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(60) NOT NULL,
  `phone_no` varchar(30) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `date` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;



--
-- Table structure for table `cash`
--

CREATE TABLE `cash` (
  `cashID` int(11) NOT NULL auto_increment,
  `amount` int(11) NOT NULL,
  `date` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `debitCredit` enum('Dr','Cr') NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY  (`cashID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `cash`
--


--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `topic` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `comments` varchar(10000) NOT NULL,
  `date` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`contact_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- Table structure for table `costomer`
--

CREATE TABLE `costomer` (
  `costomer_id` int(11) NOT NULL auto_increment,
  `uploadimage` text NOT NULL,
  `full_name` varchar(60) NOT NULL,
  `son_of` varchar(60) NOT NULL,
  `status` varchar(15) NOT NULL,
  `date_of_birth` varchar(15) NOT NULL,
  `place_of_birth` varchar(60) NOT NULL,
  `previous_nationality` varchar(30) NOT NULL,
  `present_nationality` varchar(30) NOT NULL,
  `sex` varchar(30) NOT NULL,
  `marital_status` varchar(30) NOT NULL,
  `sect` varchar(30) NOT NULL,
  `religion` varchar(30) NOT NULL,
  `place_of_issue` varchar(30) NOT NULL,
  `qualification` varchar(30) NOT NULL,
  `profession` varchar(40) NOT NULL,
  `home_address` varchar(90) NOT NULL,
  `telephone_no` varchar(30) NOT NULL,
  `purpose_of_travel` varchar(60) NOT NULL,
  `date_of_passport` varchar(15) NOT NULL,
  `passport_no` varchar(30) NOT NULL,
  `date_of_passport_expiry` varchar(15) NOT NULL,
  `duration_of_stay_in_kindom` float NOT NULL,
  `date_of_arrival` varchar(15) NOT NULL,
  `date_of_departure` varchar(15) NOT NULL,
  `mode_of_payment` varchar(30) NOT NULL,
  `relationship` varchar(30) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `carriers_name` varchar(30) NOT NULL,
  `visa_no` varchar(30) NOT NULL,
  `date_of_insertion` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `inserted_by` varchar(11) NOT NULL,
  PRIMARY KEY  (`costomer_id`),
  UNIQUE KEY `date_of_passport_expiry` (`date_of_passport_expiry`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=105 ;


--
-- Table structure for table `daily_expenditure`
--

CREATE TABLE `daily_expenditure` (
  `id` int(11) NOT NULL auto_increment,
  `voucher_no` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` varchar(60) NOT NULL,
  `amount` float NOT NULL,
  `date` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `inserted_by` varchar(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `voucher_no` (`voucher_no`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;



--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `document_id` int(11) NOT NULL auto_increment,
  `costomer_id` int(11) NOT NULL,
  `document_type` varchar(30) NOT NULL,
  `document` text NOT NULL,
  `inserted_by` varchar(11) NOT NULL,
  PRIMARY KEY  (`document_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;


--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(100) NOT NULL auto_increment,
  `emp_name` varchar(100) NOT NULL,
  `emp_picture` varchar(100) NOT NULL,
  `emp_contact` varchar(100) NOT NULL,
  `emp_email` varchar(100) NOT NULL,
  `emp_address` varchar(100) NOT NULL,
  `emp_reference` varchar(100) NOT NULL,
  `emp_desc` varchar(100) NOT NULL,
  `emp_join` varchar(100) NOT NULL,
  `emp_close` varchar(100) NOT NULL,
  PRIMARY KEY  (`emp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;



--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(100) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `page_type` varchar(100) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `date` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;


-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL auto_increment,
  `costomer_id` int(11) NOT NULL,
  `payment_type` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `description` varchar(60) NOT NULL,
  `date_of_insertion` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `inserted_by` varchar(11) NOT NULL,
  PRIMARY KEY  (`payment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;


--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `salary_id` int(100) NOT NULL auto_increment,
  `employee` varchar(50) NOT NULL,
  `month` varchar(100) NOT NULL,
  `amount` int(100) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `inserted_by` varchar(11) NOT NULL,
  `date` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`salary_id`),
  KEY `emp_id` (`employee`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;



--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL auto_increment,
  `ticket_no` int(11) NOT NULL,
  `costomer_id` int(11) NOT NULL,
  `date` varchar(15) NOT NULL,
  `sector` varchar(30) NOT NULL,
  `sector_from` varchar(30) NOT NULL,
  `sector_to` varchar(30) NOT NULL,
  `airline_name` varchar(30) NOT NULL,
  `airline_no` varchar(30) NOT NULL,
  `pnr_no` varchar(30) NOT NULL,
  `date_of_insertion` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `inserted_by` varchar(11) NOT NULL,
  PRIMARY KEY  (`ticket_id`),
  UNIQUE KEY `ticket_no` (`ticket_no`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;


-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionID` int(11) NOT NULL auto_increment,
  `cashID` int(11) NOT NULL,
  `paymentID` int(11) default NULL,
  `expenseID` int(11) default NULL,
  `salaryID` int(11) default NULL,
  PRIMARY KEY  (`transactionID`),
  KEY `cashID` (`cashID`),
  KEY `paymentID` (`paymentID`),
  KEY `expenseID` (`expenseID`),
  KEY `salaryID` (`salaryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

