-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 20, 2013 at 05:38 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `host`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `current_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `confirmpassword` varchar(20) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `access` char(10) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=143 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `current_date`, `username`, `password`, `confirmpassword`, `email`, `access`) VALUES
(7, '0000-00-00 00:00:00', 'admin', 'admin', '', 'admin@gmail.com', ''),
(140, '2013-05-08 12:18:38', 'SENTL', 'sentl', 'sentl', 'sentl@tts-consulting.in', 'General'),
(139, '2013-05-08 12:15:55', 'KUMARS', 'kumars', 'kumars', 'kumars@tts-consulting.in', 'General'),
(19, '2013-05-08 09:58:16', 'meena', '123', '123', 'me.smeena@gmail.com', 'Admin'),
(34, '2013-04-30 04:32:20', 'SATHEESH', 'host2343', 'host2343', 'SatheeshS@tts-consulting.in', 'Admin'),
(35, '2013-04-30 04:50:31', 'VIVEKANAND', 'vivekanand', 'vivek123', 'vivekanandm@tts-consulting.in', 'General'),
(6, '2013-02-17 16:05:28', 'kumar', 'sdf', '', 'kumar@gmail.com', 'General'),
(137, '2013-05-07 12:23:15', 'SATHEESHS', 'host123', 'host123', 'satheeshs@tts-consulting.in', 'General'),
(138, '2013-05-08 12:14:07', 'ANUP', 'anup', 'anup', 'anup@tts-consulting.in', 'General'),
(141, '2013-05-08 12:26:19', 'DON', 'don', 'don', 'don@tts-consulting.in', 'General'),
(142, '2013-05-08 12:41:51', 'VIVEK_NEW', 'asdf', 'asdf', 'vie@vie.com', 'General');

-- --------------------------------------------------------

--
-- Table structure for table `category1`
--

CREATE TABLE IF NOT EXISTS `category1` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `category1` char(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `category1`
--

INSERT INTO `category1` (`id`, `category1`) VALUES
(2, 'medicines'),
(3, 'Beverages'),
(4, 'medicines'),
(5, 'medicines'),
(7, 'medicines'),
(8, 'RoomSpray'),
(9, 'RoomSpray'),
(10, 'macvities'),
(12, 'category1'),
(13, 'category2');

-- --------------------------------------------------------

--
-- Table structure for table `category2`
--

CREATE TABLE IF NOT EXISTS `category2` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `category2` char(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `category2`
--

INSERT INTO `category2` (`id`, `category2`) VALUES
(1, 'Foodproducts'),
(2, 'Beverages'),
(3, 'foodproducts'),
(4, 'perfumes'),
(7, 'Chocolates'),
(8, 'Chocolates'),
(9, 'Biscuits'),
(10, 'catsample1'),
(11, 'catsample2'),
(12, 'catsample3'),
(13, 'catsample5'),
(14, 'catsample6'),
(15, 'catsample7'),
(16, 'catsample8');

-- --------------------------------------------------------

--
-- Table structure for table `category3`
--

CREATE TABLE IF NOT EXISTS `category3` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `category3` char(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `category3`
--

INSERT INTO `category3` (`id`, `category3`) VALUES
(2, 'Medicines'),
(3, 'foodproduct'),
(5, 'fddfd'),
(6, 'catsample3'),
(7, 'catsampleitem'),
(8, 'catsamples'),
(9, 'cat1');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `city` varchar(50) NOT NULL,
  `state_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `city`, `state_id`) VALUES
(1, 'Thirupathi', 'Andhra'),
(3, 'mycity', 'samplestatee'),
(5, 'kdp', 'Undefined'),
(6, 'city1', 'Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `currency` varchar(50) NOT NULL,
  `symbol` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `currency`, `symbol`) VALUES
(1, 'Naira', 'N'),
(2, 'Yen', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `KD_Code` char(20) NOT NULL,
  `KDName` char(20) NOT NULL,
  `Date` date NOT NULL,
  `customer_code` char(20) NOT NULL,
  `Customer_Name` varchar(150) NOT NULL,
  `AddressLine1` varchar(150) NOT NULL,
  `AddressLine2` varchar(150) NOT NULL,
  `AddressLine3` varchar(150) NOT NULL,
  `City` varchar(150) NOT NULL,
  `State` varchar(150) NOT NULL,
  `Province` varchar(150) NOT NULL,
  `lga` varchar(50) NOT NULL,
  `Pin` varchar(10) NOT NULL,
  `GPS` char(20) NOT NULL,
  `contactperson1` varchar(150) NOT NULL,
  `contactnumber1` char(20) NOT NULL,
  `contactperson2` varchar(150) NOT NULL,
  `contactnumber2` char(20) NOT NULL,
  `route1` char(10) NOT NULL,
  `route2` char(10) NOT NULL,
  `DSR_Id` char(20) NOT NULL,
  `DSRName` char(20) NOT NULL,
  `category1` varchar(150) NOT NULL,
  `category2` varchar(150) NOT NULL,
  `category3` varchar(150) NOT NULL,
  `customer_type` varchar(50) NOT NULL,
  `Total_Collection_Value` float NOT NULL,
  `Total_returned_value` float NOT NULL,
  `Total_paid_value` float NOT NULL,
  `current_outstanding` float NOT NULL,
  `Discount` enum('Yes','No') NOT NULL,
  `Max_Discount` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `KD_Code`, `KDName`, `Date`, `customer_code`, `Customer_Name`, `AddressLine1`, `AddressLine2`, `AddressLine3`, `City`, `State`, `Province`, `lga`, `Pin`, `GPS`, `contactperson1`, `contactnumber1`, `contactperson2`, `contactnumber2`, `route1`, `route2`, `DSR_Id`, `DSRName`, `category1`, `category2`, `category3`, `customer_type`, `Total_Collection_Value`, `Total_returned_value`, `Total_paid_value`, `current_outstanding`, `Discount`, `Max_Discount`) VALUES
(18, 'B12', 'BALOGUN', '2013-03-07', '1519', 'Felix', '20,Velacherry', 'Teledata Technology', 'fsdf', 'Edostate', 'Punjab', 'central', 'myplace', '600042', 'GP1', 'Kandan', '9845612341', 'kumaran', '9841562310', '1001', 'dfdfdfdfd', '5', 'EMMA', 'category1', 'catsample5', 'cat1', '0', 0, 0, 0, 0, 'Yes', 15),
(21, 'B12', '', '2013-03-21', '1023', 'John smith', '20,Velacherry', 'Teledata Technology', 'fsdf', 'Thirupathi', 'newstate', 'NORTH CENTRAL', 'ABA NORTH', '600042', 'H12', 'vbnbv', '9845612301', 'kumaran', '9841562310', '1001', 'kandanchav', '5', '', 'Beautyproducts', 'Foodproducts', 'Medicines', 'sample2', 0, 0, 0, 0, 'No', 0),
(22, 'B12', '', '2013-03-21', '1023', 'john', '20,Velacherry', 'Teledata Technology', 'fsdf', 'Heroyi', 'Andhra', 'NORTH CENTRAL', 'ABA NORTH', '600042', 'H12', 'vbnbv', '9845612301', 'kumaran', '9841562310', '1001', 'kandanchav', '5', '', 'Beautyproducts', 'Foodproducts', 'Medicines', '0', 0, 0, 0, 0, 'No', 0),
(24, 'B12', '', '2013-04-01', '1025', 'FELIX', '20,Velacherry', 'Teledata Technology', 'fsdf', 'owerri', 'FCT', 'SOUTH WEST', 'ABA NORTH', '600042', 'vbvbv', 'bvbv', '9845612341', 'kumaran', '9841562310', '1001', 'kandanchav', '5', '', 'Beautyproducts', 'Foodproducts', 'Beautyproducts', '0', 0, 0, 0, 0, 'No', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer_complaint`
--

CREATE TABLE IF NOT EXISTS `customer_complaint` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `KD_Code` char(20) NOT NULL,
  `DSR_id` char(20) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `GPS` varchar(20) NOT NULL,
  `Transaction_Number` varchar(150) NOT NULL,
  `Customer_Code` varchar(50) NOT NULL,
  `Customer_Name` varchar(150) NOT NULL,
  `Complaint_type` varchar(150) NOT NULL,
  `Complaint` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `customer_complaint`
--

INSERT INTO `customer_complaint` (`id`, `KD_Code`, `DSR_id`, `Date`, `Time`, `GPS`, `Transaction_Number`, `Customer_Code`, `Customer_Name`, `Complaint_type`, `Complaint`) VALUES
(1, 'B12', '5', '2013-03-12', '05:56:27', 'H12', '21345', '1519', 'John', 'good', 'very good'),
(2, 'B13', '5', '2013-03-18', '05:56:52', 'H12', '21345', '1023', 'John', 'good', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `customer_stock`
--

CREATE TABLE IF NOT EXISTS `customer_stock` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `KD_Code` char(20) NOT NULL,
  `DSR_id` char(20) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `GPS` varchar(20) NOT NULL,
  `Transaction_Number` varchar(20) NOT NULL,
  `Product_code` varchar(150) NOT NULL,
  `UOM` varchar(150) NOT NULL,
  `quantity` bigint(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `customer_stock`
--

INSERT INTO `customer_stock` (`id`, `KD_Code`, `DSR_id`, `Date`, `Time`, `GPS`, `Transaction_Number`, `Product_code`, `UOM`, `quantity`) VALUES
(2, 'B12', '5', '2013-03-18', '03:17:05', 'H12', 'A1234	', '1002', '5', 12),
(3, 'B14', '8', '2013-03-19', '03:17:05', 'H12', 'B1234	', '1005', '5', 12);

-- --------------------------------------------------------

--
-- Table structure for table `customer_type`
--

CREATE TABLE IF NOT EXISTS `customer_type` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `customer_type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `customer_type`
--

INSERT INTO `customer_type` (`id`, `customer_type`) VALUES
(1, 'sample1'),
(2, 'sample2');

-- --------------------------------------------------------

--
-- Table structure for table `daily_assignment`
--

CREATE TABLE IF NOT EXISTS `daily_assignment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `KD_ID` char(20) NOT NULL,
  `Date` date NOT NULL,
  `DSR_id` char(20) NOT NULL,
  `device_id` varchar(150) NOT NULL,
  `vehicle_id` varchar(150) NOT NULL,
  `Location` varchar(150) NOT NULL,
  `Route` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `devicetransactions`
--

CREATE TABLE IF NOT EXISTS `devicetransactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kd_id` varchar(50) NOT NULL,
  `dsr_id` varchar(50) NOT NULL,
  `device_id` varchar(50) NOT NULL,
  `fromdate` date NOT NULL,
  `todate` date NOT NULL,
  `Salesperson_id` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(150) NOT NULL,
  `customer` varchar(150) NOT NULL,
  `transactiontype` int(11) NOT NULL,
  `transactionno` varchar(50) NOT NULL,
  `referenceno` varchar(50) NOT NULL,
  `productitem` varchar(50) NOT NULL,
  `posm` varchar(50) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `balancedue` varchar(50) NOT NULL,
  `customerImage` varchar(50) NOT NULL,
  `customerSignature` varchar(50) NOT NULL,
  `feedback` varchar(50) NOT NULL,
  `lineno` varchar(50) NOT NULL,
  `batchno` varchar(50) NOT NULL,
  `expirydate` varchar(50) NOT NULL,
  `feedbacktype` varchar(50) NOT NULL,
  `Product_code` varchar(50) NOT NULL,
  `UOM` varchar(50) NOT NULL,
  `focus` varchar(50) NOT NULL,
  `scheme` varchar(50) NOT NULL,
  `customerstock` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `orderquantity` varchar(50) NOT NULL,
  `salequantity` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `salevalue` varchar(50) NOT NULL,
  `return` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `devicetransactions`
--

INSERT INTO `devicetransactions` (`id`, `kd_id`, `dsr_id`, `device_id`, `fromdate`, `todate`, `Salesperson_id`, `date`, `time`, `customer`, `transactiontype`, `transactionno`, `referenceno`, `productitem`, `posm`, `currency`, `balancedue`, `customerImage`, `customerSignature`, `feedback`, `lineno`, `batchno`, `expirydate`, `feedbacktype`, `Product_code`, `UOM`, `focus`, `scheme`, `customerstock`, `quantity`, `orderquantity`, `salequantity`, `price`, `salevalue`, `return`, `value`) VALUES
(1, '0', '0', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '', '', 0, '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', 'FDABFAD001', '0', '0', '0', '0', '0', '0', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `device_assignment`
--

CREATE TABLE IF NOT EXISTS `device_assignment` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `KD_ID` char(20) NOT NULL,
  `date` date NOT NULL,
  `device_id` char(20) NOT NULL,
  `DSR_id` char(20) NOT NULL,
  `vehicle_id` char(20) NOT NULL,
  `location` varchar(50) NOT NULL,
  `route_id` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `device_assignment`
--

INSERT INTO `device_assignment` (`id`, `KD_ID`, `date`, `device_id`, `DSR_id`, `vehicle_id`, `location`, `route_id`) VALUES
(19, 'B12', '2013-02-21', '1', '3', '2', 'abc', '1002'),
(22, 'B13', '2013-03-02', '2', '2', '1', 'xyz', '1001');

-- --------------------------------------------------------

--
-- Table structure for table `device_collections`
--

CREATE TABLE IF NOT EXISTS `device_collections` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `KD_ID` char(20) NOT NULL,
  `Date` date NOT NULL,
  `device_id` char(20) NOT NULL,
  `DSR_id` char(20) NOT NULL,
  `cumulative_collections` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `device_data`
--

CREATE TABLE IF NOT EXISTS `device_data` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `KD_Code` char(20) NOT NULL,
  `device_id` char(20) NOT NULL,
  `dsr_id` varchar(50) NOT NULL,
  `Salesperson_id` varchar(20) NOT NULL,
  `fromDate` date NOT NULL,
  `toDate` date NOT NULL,
  `SKU_stock` varchar(50) NOT NULL,
  `UOM_Stock` varchar(50) NOT NULL,
  `stock_qty` char(20) NOT NULL,
  `stock_price` float NOT NULL,
  `stock_value` float NOT NULL,
  `Return_quantity` varchar(50) NOT NULL,
  `invoice` varchar(50) NOT NULL,
  `collections` varchar(50) NOT NULL,
  `SKU_sale` char(20) NOT NULL,
  `UOM_Sale` varchar(50) NOT NULL,
  `customer_code` char(20) NOT NULL,
  `transactiontype` varchar(50) NOT NULL,
  `sale_qty` varchar(50) NOT NULL,
  `sale_price` float NOT NULL,
  `sale_value` float NOT NULL,
  `visits` varchar(50) NOT NULL,
  `invoices` varchar(50) NOT NULL,
  `SKU_products` varchar(50) NOT NULL,
  `dropsize` varchar(50) NOT NULL,
  `basketsize` varchar(50) NOT NULL,
  `totalinvoicelineitems` varchar(50) NOT NULL,
  `feedback_type` varchar(50) NOT NULL,
  `feedback_date` date NOT NULL,
  `feedback` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `device_data`
--

INSERT INTO `device_data` (`id`, `KD_Code`, `device_id`, `dsr_id`, `Salesperson_id`, `fromDate`, `toDate`, `SKU_stock`, `UOM_Stock`, `stock_qty`, `stock_price`, `stock_value`, `Return_quantity`, `invoice`, `collections`, `SKU_sale`, `UOM_Sale`, `customer_code`, `transactiontype`, `sale_qty`, `sale_price`, `sale_value`, `visits`, `invoices`, `SKU_products`, `dropsize`, `basketsize`, `totalinvoicelineitems`, `feedback_type`, `feedback_date`, `feedback`) VALUES
(1, 'KD001', '2', '', '', '2013-04-17', '0000-00-00', '5', '6', '5', 20, 20, '4', '15', '14', '12', '12', 'CU001', 'Cancelled Sale', '23', 20, 12, '', '', '', '', '', '', 'Bests', '2013-05-04', 'Normal'),
(2, 'KD002', '2', '', '', '2013-04-17', '0000-00-00', '5', '6', '5', 20, 20, '4', '15', '14', '12', '12', 'CU001', 'Sale Return', '23', 20, 12, '', '', '', '', '', '', '', '0000-00-00', ''),
(3, 'KD003', '2', '12', '10', '2013-04-17', '0000-00-00', '5', '6', '5', 20, 20, '4', '15', '14', '12', '12', 'CU001', 'Cancelled Sale', '23', 20, 5, '5', '20', '50', '4', '', '100', '', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `device_data_view`
--
CREATE TABLE IF NOT EXISTS `device_data_view` (
`id` int(50)
,`KD_Code` char(20)
,`device_id` char(20)
,`dsr_id` varchar(50)
,`Salesperson_id` varchar(20)
,`fromDate` date
,`toDate` date
,`SKU_stock` varchar(50)
,`UOM_Stock` varchar(50)
,`stock_qty` char(20)
,`stock_price` float
,`stock_value` float
,`Return_quantity` varchar(50)
,`invoice` varchar(50)
,`collections` varchar(50)
,`SKU_sale` char(20)
,`UOM_Sale` varchar(50)
,`customer_code` char(20)
,`transactiontype` varchar(50)
,`sale_qty` varchar(50)
,`sale_price` float
,`sale_value` float
,`visits` varchar(50)
,`invoices` varchar(50)
,`SKU_products` varchar(50)
,`dropsize` varchar(50)
,`basketsize` varchar(50)
,`totalinvoicelineitems` varchar(50)
,`feedback_type` varchar(50)
,`feedback_date` date
,`feedback` varchar(50)
);
-- --------------------------------------------------------

--
-- Table structure for table `device_loading`
--

CREATE TABLE IF NOT EXISTS `device_loading` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `KD_ID` char(20) NOT NULL,
  `Date` date NOT NULL,
  `device_id` char(20) NOT NULL,
  `DSR_id` char(20) NOT NULL,
  `SKU` char(20) NOT NULL,
  `loaded_qty` varchar(150) NOT NULL,
  `sold_qty` varchar(150) NOT NULL,
  `expected_balance_qty` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `device_master`
--

CREATE TABLE IF NOT EXISTS `device_master` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `KD_Code` char(20) NOT NULL,
  `KDName` char(20) NOT NULL,
  `Date` date NOT NULL,
  `device_id` char(20) NOT NULL,
  `device_desc` varchar(150) NOT NULL,
  `device_spec` varchar(150) NOT NULL,
  `device_call_no` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=119 ;

--
-- Dumping data for table `device_master`
--

INSERT INTO `device_master` (`id`, `KD_Code`, `KDName`, `Date`, `device_id`, `device_desc`, `device_spec`, `device_call_no`) VALUES
(1, '', '', '0000-00-00', '100', 'test', 'test', '32'),
(2, '', '', '0000-00-00', '1000', 'test test', 'test tetstet', '302'),
(3, '', '', '0000-00-00', '1001', 'test test1', 'test tetstettest tetstet', '303'),
(4, '', '', '0000-00-00', '1002', 'test test2', 'test tetstettest tetstet', '304'),
(10, '', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '305'),
(11, '', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '306'),
(12, '', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '307'),
(13, '', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '308'),
(14, '', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '309'),
(15, 'KD00', '', '0000-00-00', '1000', 'test test', 'test tetstet', '302'),
(16, 'KD01', '', '0000-00-00', '1001', 'test test1', 'test tetstettest tetstet', '303'),
(17, 'KD02', '', '0000-00-00', '1002', 'test test2', 'test tetstettest tetstet', '304'),
(18, 'KD03', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '305'),
(19, 'KD04', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '306'),
(20, 'KD05', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '307'),
(21, 'KD06', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '308'),
(22, 'KD07', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '309'),
(23, 'KD00', '', '0000-00-00', '1000', 'test test', 'test tetstet', '302'),
(24, 'KD01', '', '0000-00-00', '1001', 'test test1', 'test tetstettest tetstet', '303'),
(25, 'KD02', '', '0000-00-00', '1002', 'test test2', 'test tetstettest tetstet', '304'),
(26, 'KD03', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '305'),
(27, 'KD04', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '306'),
(28, 'KD05', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '307'),
(29, 'KD06', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '308'),
(30, 'KD07', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '309'),
(31, 'KD00', '', '0000-00-00', '1000', 'test test', 'test tetstet', '302'),
(32, 'KD01', '', '0000-00-00', '1001', 'test test1', 'test tetstettest tetstet', '303'),
(33, 'KD02', '', '0000-00-00', '1002', 'test test2', 'test tetstettest tetstet', '304'),
(34, 'KD03', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '305'),
(35, 'KD04', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '306'),
(36, 'KD05', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '307'),
(37, 'KD06', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '308'),
(38, 'KD07', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '309'),
(39, 'KD00', '', '0000-00-00', '1000', 'test test', 'test tetstet', '302'),
(40, 'KD01', '', '0000-00-00', '1001', 'test test1', 'test tetstettest tetstet', '303'),
(41, 'KD02', '', '0000-00-00', '1002', 'test test2', 'test tetstettest tetstet', '304'),
(42, 'KD03', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '305'),
(43, 'KD04', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '306'),
(44, 'KD05', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '307'),
(45, 'KD06', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '308'),
(46, 'KD07', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '309'),
(47, 'KD00', '', '0000-00-00', '1000', 'test test', 'test tetstet', '302'),
(48, 'KD01', '', '0000-00-00', '1001', 'test test1', 'test tetstettest tetstet', '303'),
(49, 'KD02', '', '0000-00-00', '1002', 'test test2', 'test tetstettest tetstet', '304'),
(50, 'KD03', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '305'),
(51, 'KD04', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '306'),
(52, 'KD05', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '307'),
(53, 'KD06', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '308'),
(54, 'KD07', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '309'),
(55, 'KD00', '', '0000-00-00', '1000', 'test test', 'test tetstet', '302'),
(56, 'KD01', '', '0000-00-00', '1001', 'test test1', 'test tetstettest tetstet', '303'),
(57, 'KD02', '', '0000-00-00', '1002', 'test test2', 'test tetstettest tetstet', '304'),
(58, 'KD03', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '305'),
(59, 'KD04', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '306'),
(60, 'KD05', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '307'),
(61, 'KD06', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '308'),
(62, 'KD07', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '309'),
(63, 'KD00', '', '0000-00-00', '1000', 'test test', 'test tetstet', '302'),
(64, 'KD01', '', '0000-00-00', '1001', 'test test1', 'test tetstettest tetstet', '303'),
(65, 'KD02', '', '0000-00-00', '1002', 'test test2', 'test tetstettest tetstet', '304'),
(66, 'KD03', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '305'),
(67, 'KD04', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '306'),
(68, 'KD05', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '307'),
(69, 'KD06', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '308'),
(70, 'KD07', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '309'),
(71, 'KD00', '', '0000-00-00', '1000', 'test test', 'test tetstet', '302'),
(72, 'KD01', '', '0000-00-00', '1001', 'test test1', 'test tetstettest tetstet', '303'),
(73, 'KD02', '', '0000-00-00', '1002', 'test test2', 'test tetstettest tetstet', '304'),
(74, 'KD03', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '305'),
(75, 'KD04', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '306'),
(76, 'KD05', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '307'),
(77, 'KD06', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '308'),
(78, 'KD07', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '309'),
(79, 'KD00', '', '0000-00-00', '1000', 'test test', 'test tetstet', '302'),
(80, 'KD01', '', '0000-00-00', '1001', 'test test1', 'test tetstettest tetstet', '303'),
(81, 'KD02', '', '0000-00-00', '1002', 'test test2', 'test tetstettest tetstet', '304'),
(82, 'KD03', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '305'),
(83, 'KD04', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '306'),
(84, 'KD05', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '307'),
(85, 'KD06', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '308'),
(86, 'KD07', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '309'),
(87, 'KD00', '', '0000-00-00', '1000', 'test test', 'test tetstet', '302'),
(88, 'KD01', '', '0000-00-00', '1001', 'test test1', 'test tetstettest tetstet', '303'),
(89, 'KD02', '', '0000-00-00', '1002', 'test test2', 'test tetstettest tetstet', '304'),
(90, 'KD03', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '305'),
(91, 'KD04', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '306'),
(92, 'KD05', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '307'),
(93, 'KD06', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '308'),
(94, 'KD07', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '309'),
(95, 'KD00', '', '0000-00-00', '1000', 'test test', 'test tetstet', '302'),
(96, 'KD01', '', '0000-00-00', '1001', 'test test1', 'test tetstettest tetstet', '303'),
(97, 'KD02', '', '0000-00-00', '1002', 'test test2', 'test tetstettest tetstet', '304'),
(98, 'KD03', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '305'),
(99, 'KD04', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '306'),
(100, 'KD05', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '307'),
(101, 'KD06', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '308'),
(102, 'KD07', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '309'),
(103, 'KD00', '', '0000-00-00', '1000', 'test test', 'test tetstet', '302'),
(104, 'KD01', '', '0000-00-00', '1001', 'test test1', 'test tetstettest tetstet', '303'),
(105, 'KD02', '', '0000-00-00', '1002', 'test test2', 'test tetstettest tetstet', '304'),
(106, 'KD03', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '305'),
(107, 'KD04', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '306'),
(108, 'KD05', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '307'),
(109, 'KD06', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '308'),
(110, 'KD07', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '309'),
(111, 'KD00', '', '0000-00-00', '1000', 'test test', 'test tetstet', '302'),
(112, 'KD01', '', '0000-00-00', '1001', 'test test1', 'test tetstettest tetstet', '303'),
(113, 'KD02', '', '0000-00-00', '1002', 'test test2', 'test tetstettest tetstet', '304'),
(114, 'KD03', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '305'),
(115, 'KD04', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '306'),
(116, 'KD05', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '307'),
(117, 'KD06', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '308'),
(118, 'KD07', '', '0000-00-00', '1003', 'test test3', 'test tetstettest tetstet', '309');

-- --------------------------------------------------------

--
-- Table structure for table `device_stock`
--

CREATE TABLE IF NOT EXISTS `device_stock` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `KD_ID` char(20) NOT NULL,
  `Date` date NOT NULL,
  `device_id` char(20) NOT NULL,
  `DSR_id` char(20) NOT NULL,
  `SKU` char(20) NOT NULL,
  `UOM1` varchar(50) NOT NULL,
  `Quantity_UOM1` varchar(50) NOT NULL,
  `Price` float NOT NULL,
  `Value` float NOT NULL,
  `Return_quantity_UOM1` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dsr`
--

CREATE TABLE IF NOT EXISTS `dsr` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `KD_Code` char(20) NOT NULL,
  `KDName` char(20) NOT NULL,
  `Date` date NOT NULL,
  `DSR_id` varchar(150) NOT NULL,
  `DSRName` char(20) NOT NULL,
  `Salesrep_name` varchar(150) NOT NULL,
  `Salesrep_contact_num` char(20) NOT NULL,
  `Salesrep_addr_line1` varchar(150) NOT NULL,
  `Salesrep_addr_line2` varchar(150) NOT NULL,
  `Salesrep_addr_line3` varchar(150) NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `Alternate_cont_num` char(20) NOT NULL,
  `Salesperson_id` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `dsr`
--

INSERT INTO `dsr` (`id`, `KD_Code`, `KDName`, `Date`, `DSR_id`, `DSRName`, `Salesrep_name`, `Salesrep_contact_num`, `Salesrep_addr_line1`, `Salesrep_addr_line2`, `Salesrep_addr_line3`, `city`, `state`, `Alternate_cont_num`, `Salesperson_id`) VALUES
(3, 'B12', 'BALOGUN', '2013-03-19', '3', 'EMMA', 'BALOGUN', '984561234', '20,Ram Nagar', 'Chennai', 'velacherry', 'city1', 'Delhi', '94561237', '1'),
(4, 'B13', '', '2013-04-11', '3', '', 'BB', '984561234', '20,Ram Nagar', 'Chennai', 'velacherry', 'Abuja', 'AKWA IBOM', '94561237', '1');

-- --------------------------------------------------------

--
-- Table structure for table `dsr_comments`
--

CREATE TABLE IF NOT EXISTS `dsr_comments` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `KD_Code` char(20) NOT NULL,
  `DSR_id` char(20) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `GPS` varchar(20) NOT NULL,
  `Transaction_Number` varchar(150) NOT NULL,
  `customer_code` varchar(150) NOT NULL,
  `Customer_Name` varchar(150) NOT NULL,
  `Remarks` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `dsr_comments`
--

INSERT INTO `dsr_comments` (`id`, `KD_Code`, `DSR_id`, `Date`, `Time`, `GPS`, `Transaction_Number`, `customer_code`, `Customer_Name`, `Remarks`) VALUES
(3, 'B12', '5', '2013-03-27', '03:45:44', 'H12', 'A1234', '1023', 'John', 'Test Remarks'),
(4, 'B13', '6', '2013-04-01', '03:45:44', 'H12', 'A1234', '1023', 'Felix', 'Test Remarks2'),
(5, 'KD15', '8', '2013-04-17', '00:00:45', 'test', 'test', 'cu67', 'test', 'gd'),
(6, '89', '78', '2013-04-22', '00:00:45', 'test', 'test', '12', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `dsr_metrices`
--

CREATE TABLE IF NOT EXISTS `dsr_metrices` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `KD_ID` char(20) NOT NULL,
  `Date` date NOT NULL,
  `device_id` char(20) NOT NULL,
  `DSR_id` char(20) NOT NULL,
  `stock` char(20) NOT NULL,
  `invoice` varchar(50) NOT NULL,
  `collections` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `error_message`
--

CREATE TABLE IF NOT EXISTS `error_message` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `error_code` varchar(50) NOT NULL,
  `error_msg` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `error_type` varchar(50) NOT NULL,
  `active_flag` varchar(50) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `error_message`
--

INSERT INTO `error_message` (`id`, `error_code`, `error_msg`, `description`, `error_type`, `active_flag`, `creation_date`, `last_update_date`) VALUES
(1, '0001', 'Data Entered Successfully', 'Data Entered Successfully', 'Information', 'Yes', '2013-04-22 22:40:39', '0000-00-00 00:00:00'),
(2, '0002', 'Data Updated Successfully', 'Data Updated Successfully', 'Information', 'Yes', '2013-04-20 20:46:05', '0000-00-00 00:00:00'),
(3, '0003', 'Data Deleted Successfully', 'Data Deleted Successfully', 'Information', 'Yes', '2013-04-20 20:44:32', '0000-00-00 00:00:00'),
(4, '0004', 'No Data found for the search Criteria', 'No Data found for the search Criteria', 'Warning', 'Yes', '2013-04-20 20:44:32', '0000-00-00 00:00:00'),
(5, '0005', 'Confirm Save', 'Confirm Save', 'Warning', 'Yes', '2013-04-20 20:44:32', '0000-00-00 00:00:00'),
(6, '0006', 'Old Password entered is wrong', 'Old Password entered is wrong', 'Error', 'Yes', '2013-04-20 20:44:32', '0000-00-00 00:00:00'),
(7, '0007', 'New & Confirm Passwords Must Be The Same', 'New & Confirm Passwords Must Be The Same', 'Error', 'Yes', '2013-05-08 09:03:06', '0000-00-00 00:00:00'),
(8, '0008', 'User Name/ Password Entered is wrong', 'User Name/ Password Entered is wrong', 'Error', 'Yes', '2013-04-20 20:44:32', '0000-00-00 00:00:00'),
(9, '0009', 'Please enter all mandatory (*) data', 'Please enter all mandatory (*) data', 'Error', 'Yes', '2013-05-08 07:09:17', '0000-00-00 00:00:00'),
(10, '1000', 'Confirm Delete', 'Confirm Delete', 'Warning', 'Yes', '2013-04-20 20:44:32', '0000-00-00 00:00:00'),
(11, '0011', 'Invalid Email ID', 'Invalid Email ID', 'Error', 'Yes', '2013-04-21 18:58:04', '0000-00-00 00:00:00'),
(12, '0012', 'Email ID does not exist', 'Email ID does not exist', 'Warning', 'Yes', '2013-04-21 18:50:48', '0000-00-00 00:00:00'),
(13, '0013', 'User Name Does Not Exist', 'User Name Does Not Exist', 'Warning', 'Yes', '2013-05-08 09:01:40', '0000-00-00 00:00:00'),
(14, '0014', 'Your Password Has Been Sent To Your Registered Email ID', 'Your Password Has Been Sent To Your Registered Email ID', 'Success', 'Yes', '2013-05-08 09:47:10', '0000-00-00 00:00:00'),
(15, '0015', 'User And / Or Email Already Exists', 'User And / Or Email Already Exists', 'Error', 'Yes', '2013-05-08 09:04:16', '0000-00-00 00:00:00'),
(16, '0016', 'Please Enter The Text in the Image Correctly', 'Please Enter The Text in the Image Correctly.', 'Error', 'Yes', '2013-04-21 19:37:37', '0000-00-00 00:00:00'),
(17, '0017', 'You Have Registered Successfully', 'You Have Registered Successfully', 'Information', 'Yes', '2013-04-21 21:12:30', '0000-00-00 00:00:00'),
(18, '0018', 'Data Already Exists', 'Data Already Exists', 'Information', 'Yes', '2013-04-21 21:12:30', '0000-00-00 00:00:00'),
(19, '0019', 'Province is assigned to State', 'Province is assigned to State', 'Information', 'Yes', '2013-04-28 04:57:29', '0000-00-00 00:00:00'),
(20, '0020', 'State is assigned to city', 'State is assigned to city', 'Error', 'Yes', '2013-04-26 16:23:47', '0000-00-00 00:00:00'),
(21, '0021', 'City is assigned to LGA', 'City is assigned to LGA', 'Error', 'Yes', '2013-04-26 16:41:27', '0000-00-00 00:00:00'),
(22, '0022', 'LGA is assigned to Location', 'LGA is assigned to Location', 'Error', 'Yes', '2013-04-26 16:42:08', '0000-00-00 00:00:00'),
(23, '0023', '''Cannot Delete''Province is assigned to Customer', '''Cannot Delete''Province is assigned to Customer', 'Information', 'Yes', '2013-04-29 06:12:48', '0000-00-00 00:00:00'),
(24, '0024', '''Cannot Delete''State is assigned to Customer', '''Cannot Delete''State is assigned to Customer ', 'Information', 'Yes', '2013-04-29 08:00:45', '0000-00-00 00:00:00'),
(25, '0025', '''Cannot Delete''State is assigned to DSR', '''Cannot Delete''State is assigned to DSR', 'Information', 'Yes', '2013-04-29 08:00:45', '0000-00-00 00:00:00'),
(26, '0026', '''Cannot Delete''City is assigned to Customer', '''Cannot Delete''City is assigned to Customer', 'Information', 'Yes', '2013-05-02 15:23:16', '0000-00-00 00:00:00'),
(27, '0027', '''Cannot Delete''City is assigned to DSR', '''Cannot Delete''City is assigned to DSR', 'Information', 'Yes', '2013-04-29 08:00:45', '0000-00-00 00:00:00'),
(28, '0028', '''Cannot Delete''City is assigned to KD', '''Cannot Delete''City is assigned to KD', 'Information', 'Yes', '2013-04-29 08:00:45', '0000-00-00 00:00:00'),
(29, '0029', 'Your password has been changed successfully', 'Your password has been changed successfully', 'Information', 'Yes', '2013-04-29 11:39:32', '0000-00-00 00:00:00'),
(30, '0030', '''Cannot Delete'' Location is assigned to Route', '''Cannot Delete'' Location is assigned to Route', 'Information', 'Yes', '2013-04-29 11:25:45', '0000-00-00 00:00:00'),
(31, '0031', '''Cannot Delete'' LGA is mapped to Customer', '''Cannot Delete'' LGA is mapped to Customer', 'Information', 'Yes', '2013-04-30 19:21:59', '0000-00-00 00:00:00'),
(32, '0032', '''Cannot Delete'' Category1 is mapped to Customer', '''Cannot Delete'' Category1 is mapped to Customer', 'Information', 'Yes', '2013-04-29 11:25:45', '0000-00-00 00:00:00'),
(33, '0033', '''Cannot Delete'' Category2 is mapped to Customer', '''Cannot Delete'' Category2 is mapped to Customer', 'Information', 'Yes', '2013-04-30 19:06:19', '0000-00-00 00:00:00'),
(34, '0034', '''Cannot Delete'' Category3 is mapped to Customer', '''Cannot Delete'' Category3 is mapped to Customer', 'Information', 'Yes', '2013-04-30 19:06:30', '0000-00-00 00:00:00'),
(35, '0035', '''Cannot Delete'' CustomerType is mapped to Customer', '''Cannot Delete'' CustomerType  is mapped to Customer', 'Information', 'Yes', '2013-04-30 19:06:42', '0000-00-00 00:00:00'),
(36, '0036', '''Cannot Delete'' ProductType is mapped to Customer', '''Cannot Delete'' ProductType  is mapped to Customer', 'Information', 'Yes', '2013-04-30 19:06:53', '0000-00-00 00:00:00'),
(37, '0037', '''Cannot Delete'' SR is mapped to DSR', '''Cannot Delete'' SR  is mapped to DSR', 'Information', 'Yes', '2013-04-30 19:07:05', '0000-00-00 00:00:00'),
(38, '0038', '''Cannot Delete'' KD Category is mapped to KD', '''Cannot Delete'' KD Category is mapped to KD', 'inormation', 'Yes', '2013-05-01 01:09:16', '0000-00-00 00:00:00'),
(39, '0039', '''Cannot Delete'' KD Category is mapped to KD Product', '''Cannot Delete'' KD Category is mapped to KD Product', 'Information', 'Yes', '2013-05-01 01:10:04', '0000-00-00 00:00:00'),
(40, '0040', '''Cannot Delete'' KD Category is mapped to Price', '''Cannot Delete'' KD Category is mapped to Price', 'Information', 'Yes', '2013-05-01 01:10:42', '0000-00-00 00:00:00'),
(41, '0041', '''Cannot Delete'' KD Category is mapped to Product Scheme', '''Cannot Delete'' KD Category is mapped to Product Scheme', 'Information', 'Yes', '2013-05-01 01:11:44', '0000-00-00 00:00:00'),
(42, '0042', '''Cannot Delete'' Location is mapped to Route', '''Cannot Delete'' Location is mapped to Route', 'Information', 'Yes', '2013-05-01 01:11:44', '0000-00-00 00:00:00'),
(43, '0043', '''Cannot Delete'' Product is mapped to KD Product', '''Cannot Delete'' Product is mapped to KD Product', 'Information', 'Yes', '2013-05-01 01:11:44', '0000-00-00 00:00:00'),
(44, '0044', '''Cannot Delete'' Product is mapped to Product Scheme', '''Cannot Delete'' Product is mapped to Product Scheme', 'Information', 'Yes', '2013-05-01 01:11:44', '0000-00-00 00:00:00'),
(45, '0045', '''Cannot Delete'' Product is mapped to Price', '''Cannot Delete'' Product is mapped to Price', 'Information', 'Yes', '2013-05-01 01:11:44', '0000-00-00 00:00:00'),
(46, '0046', '''Cannot Delete'' KD  is mapped to KD Product', '''Cannot Delete'' KD  is mapped to KD Product', 'Information', 'Yes', '2013-05-01 01:11:44', '0000-00-00 00:00:00'),
(47, '0047', '''Cannot Delete'' KD  is mapped to Device', '''Cannot Delete'' KD  is mapped to Device', 'Information', 'Yes', '2013-05-01 01:11:44', '0000-00-00 00:00:00'),
(48, '0048', '''Cannot Delete'' KD  is mapped to DSR', '''Cannot Delete'' KD  is mapped to DSR', 'Information', 'Yes', '2013-05-02 05:34:29', '0000-00-00 00:00:00'),
(49, '0049', '''Cannot Delete'' SR  is mapped to DSR', '''Cannot Delete'' SR is mapped to DSR', 'Information', 'Yes', '2013-05-02 05:34:29', '0000-00-00 00:00:00'),
(50, '0050', 'Cannot Delete SKU is mapped to Device Transactions', 'Cannot Delete'' SKU Code is mapped to Device Transactions', 'error', 'yes', '2013-05-02 00:33:53', '0000-00-00 00:00:00'),
(51, '0051', 'SKU is already exist', 'SKU is already exist', 'error', 'Yes', '2013-05-02 08:35:57', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_type`
--

CREATE TABLE IF NOT EXISTS `feedback_type` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `feedback_type` char(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `feedback_type`
--

INSERT INTO `feedback_type` (`id`, `feedback_type`) VALUES
(1, 'Bests'),
(2, 'Good'),
(5, 'normal'),
(7, 'Better'),
(8, 'Excellent');

-- --------------------------------------------------------

--
-- Table structure for table `focus`
--

CREATE TABLE IF NOT EXISTS `focus` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `focus` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `focus`
--

INSERT INTO `focus` (`id`, `focus`) VALUES
(1, 'Yes'),
(2, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `kd`
--

CREATE TABLE IF NOT EXISTS `kd` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `KD_Code` varchar(20) NOT NULL,
  `KD_Name` varchar(150) NOT NULL,
  `Address_Line_1` varchar(150) NOT NULL,
  `Address_Line_2` varchar(150) NOT NULL,
  `Address_Line_3` varchar(150) NOT NULL,
  `City` varchar(150) NOT NULL,
  `Pin` varchar(150) NOT NULL,
  `Contact_Person` varchar(150) NOT NULL,
  `Contact_Number` varchar(150) NOT NULL,
  `Email_ID` varchar(150) NOT NULL,
  `Kd_category` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `kd`
--

INSERT INTO `kd` (`id`, `KD_Code`, `KD_Name`, `Address_Line_1`, `Address_Line_2`, `Address_Line_3`, `City`, `Pin`, `Contact_Person`, `Contact_Number`, `Email_ID`, `Kd_category`) VALUES
(1, 'B12', 'BOLARINWA', '1855 : 2ODOALAGBAFO STREET-LAGOS-LAGOS---NG', 'Nigeria', 'Nga', 'kdp', '600042', 'Ran', '9845612345', 'ran@gmail.com', 'Tropika'),
(4, '', 'Baswan', 'KD00123', 'erere', 'xcxc', 'Abuja', '89673456', 'kkaaa', '982345789', 'baswan@gmail.com', 'czzczcxzccx'),
(5, '', 'Snimz Ventures ', '40', '0kera road', 'ogba', 'Logos', '600006', 'Kumar', '9846098460', 'kumar@fmcl.com', 'Medicine'),
(6, '', 'kumar', 'ZxXZ', 'XZXz', 'xZXZ', 'chennai', '62313654', 'kandan', '9865789543', 'kandan@gmail.com', ''),
(7, '', 'zxX', 'zXzX', 'zXZX', 'ZXZ', 'chennai', '46532323', 'xzXz', 'XXZ', 'XXZx', ''),
(8, 'terert', '', '', '', '', '', '', '', '', '', ''),
(9, 'wedfsd', 'ewwe', 'fsdfsdf', '', '', '', '', '', '', '', ''),
(10, 'werwe', 'ewrwe', '3223', '', '', 'Thirupathi', 'das', '', '', '', ''),
(11, 'das', 'dasd', 'dasdas', '', '', 'mycity', 'ds', 'dasdsadsa', 'sasad', '', ''),
(12, 'cxzcx', 'cxzc', 'zxczc', 'zxczx', 'xzcc', 'Thirupathi', 'zcxxzc', 'xzcxz', 'czxcxz', 'xczc', ''),
(13, 'xcxc', 'xccc', 'xcx', 'xcxc', 'xcx', 'Thirupathi', 'xcxc', 'xcxcxcx', 'xcxc', 'xcxc', '');

-- --------------------------------------------------------

--
-- Table structure for table `kd_category`
--

CREATE TABLE IF NOT EXISTS `kd_category` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `kd_category` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `kd_category`
--

INSERT INTO `kd_category` (`id`, `kd_category`, `Status`) VALUES
(1, 'Macvities', ''),
(2, 'Ovaltine', ''),
(3, 'Health Foods', ''),
(4, 'Health Drink', ''),
(11, 'Hairsparay', ''),
(12, 'Hairsprayer', ''),
(14, 'Hairsprayer', ''),
(16, 'wrappers', ''),
(20, 'Tropika', ''),
(25, 'tests', '');

-- --------------------------------------------------------

--
-- Table structure for table `kd_product`
--

CREATE TABLE IF NOT EXISTS `kd_product` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `Kd_Category` varchar(50) NOT NULL,
  `UOM1` varchar(50) NOT NULL,
  `Product_code` char(20) NOT NULL,
  `Product_description1` varchar(50) NOT NULL,
  `product_type` varchar(20) NOT NULL,
  `Effective_date` date NOT NULL,
  `Status_kd_product` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `kd_product`
--

INSERT INTO `kd_product` (`id`, `Kd_Category`, `UOM1`, `Product_code`, `Product_description1`, `product_type`, `Effective_date`, `Status_kd_product`) VALUES
(33, 'Macvities', 'pcs', 'FDABFAD004', 'Ovaltine Caps', '', '0000-00-00', 'Checked'),
(34, 'Macvities', 'pcs', 'FDASFG005', 'Ovaltine Caps', '', '0000-00-00', 'Checked'),
(35, 'Hairsprayer', 'pcs', 'FDABFAD001', 'Ovaltine Caps', '', '0000-00-00', 'Checked'),
(36, 'Hairsprayer', 'pcs', 'FDABFAD002', 'Ovaltine Caps', '', '0000-00-00', 'Checked'),
(37, 'Hairsprayer', 'Pieces', 'FDASFG005', 'Testdata', '', '0000-00-00', 'Checked'),
(38, 'Tropika', 'pcs', 'FDABFAD004', 'Ovaltine Caps', '', '0000-00-00', 'Checked'),
(39, 'Tropika', 'pcs', 'FDASFG005', 'Ovaltine Caps', '', '0000-00-00', 'Checked'),
(40, 'wrappers', 'pcs', 'FDASFG005', 'Ovaltine Caps', '', '0000-00-00', 'Checked'),
(41, 'Ovaltine', 'pcs', 'FDASFG005', 'Ovaltine Caps', '', '0000-00-00', 'Checked'),
(42, 'tests', 'pcs', 'FDASFG005', 'Ovaltine Caps', '', '0000-00-00', 'Checked'),
(43, 'Health Drink', 'pcs', 'FDASFG005', 'Ovaltine Caps', '', '0000-00-00', 'Checked'),
(44, 'Health Drink', 'pcs', 'FDABFAD004', 'Ovaltine Caps', '', '0000-00-00', 'Checked'),
(45, 'Health Drink', 'pcs', 'FDABFAD001', 'Ovaltine Caps', '', '0000-00-00', 'Checked'),
(46, 'Health Foods', 'Pieces', 'FDABFAD002', 'Product7', '', '0000-00-00', 'Checked'),
(47, 'Health Foods', 'Pieces', 'FDABFAD001', 'Product7', '', '0000-00-00', 'Checked'),
(48, 'Health Foods', 'Pieces', 'FDABFAD004', 'Product7', '', '0000-00-00', 'Checked'),
(49, 'Health Foods', 'Pieces', 'FDABFAD005', 'Product7', '', '0000-00-00', 'Checked'),
(50, 'Health Foods', 'Pieces', 'FDABFAD006', 'Product7', '', '0000-00-00', 'Checked'),
(51, 'Health Foods', 'Pieces', 'FDABFAD007', 'Product7', '', '0000-00-00', 'Checked');

-- --------------------------------------------------------

--
-- Table structure for table `lga`
--

CREATE TABLE IF NOT EXISTS `lga` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lga` varchar(50) NOT NULL,
  `city_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `lga`
--

INSERT INTO `lga` (`id`, `lga`, `city_id`) VALUES
(2, 'vcvcvcvc', 'mycity'),
(3, 'myplace', 'Thirupathi');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(50) NOT NULL,
  `lga_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `location`, `lga_id`) VALUES
(2, 'zyx', '5'),
(3, 'abc', '1'),
(6, 'Logos', '3'),
(7, 'Logos', '3'),
(8, 'Logos', '3'),
(9, 'Chitlapakkam', '12'),
(10, 'tambaram', '1'),
(11, 'zxzzxz', 'Undefined'),
(14, 'mylocation', 'vcvcvcvc');

-- --------------------------------------------------------

--
-- Table structure for table `master_code`
--

CREATE TABLE IF NOT EXISTS `master_code` (
  `master_id` bigint(10) NOT NULL AUTO_INCREMENT,
  `document` char(20) NOT NULL,
  `length` char(10) NOT NULL,
  `entry` char(20) NOT NULL,
  `type` char(20) NOT NULL,
  `alpha` varchar(20) NOT NULL,
  `numeric` varchar(20) NOT NULL,
  `format` char(20) NOT NULL,
  `startingvalue` char(20) NOT NULL,
  PRIMARY KEY (`master_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `master_code`
--

INSERT INTO `master_code` (`master_id`, `document`, `length`, `entry`, `type`, `alpha`, `numeric`, `format`, `startingvalue`) VALUES
(1, 'Scheme', '22', 'Manual', 'Numeric', 'B', '1', 'B1', '23'),
(2, 'KD', '22', 'Manual', 'Numeric', 'B', '1', 'B1', '23');

-- --------------------------------------------------------

--
-- Table structure for table `parameters`
--

CREATE TABLE IF NOT EXISTS `parameters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoicedesc` varchar(30) NOT NULL,
  `specialchar` varchar(30) NOT NULL,
  `displaydateformat` varchar(30) NOT NULL,
  `editmasterpwd` varchar(30) NOT NULL,
  `priceauth` varchar(30) NOT NULL,
  `leftlogo` varchar(30) NOT NULL,
  `rightlogo` varchar(30) NOT NULL,
  `static` varchar(30) NOT NULL,
  `currency` varchar(30) NOT NULL,
  `uploaddownload` varchar(30) NOT NULL,
  `batchctrl` char(20) NOT NULL,
  `header` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `parameters`
--

INSERT INTO `parameters` (`id`, `invoicedesc`, `specialchar`, `displaydateformat`, `editmasterpwd`, `priceauth`, `leftlogo`, `rightlogo`, `static`, `currency`, `uploaddownload`, `batchctrl`, `header`) VALUES
(1, '55', '', 'd-m-Y', '222', '', '1368018669_Jellyfish.jpg', '1368018669_Jellyfish.jpg', '', 'Dollar', '', 'OFF', 'TEST TEST');

-- --------------------------------------------------------

--
-- Table structure for table `price_master`
--

CREATE TABLE IF NOT EXISTS `price_master` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `KD_Code` varchar(50) NOT NULL,
  `Kd_Category` varchar(50) NOT NULL,
  `Product_code` char(20) NOT NULL,
  `Product_description1` varchar(50) NOT NULL,
  `UOM1` varchar(150) NOT NULL,
  `Price` varchar(50) NOT NULL,
  `Effective_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `price_master`
--

INSERT INTO `price_master` (`id`, `KD_Code`, `Kd_Category`, `Product_code`, `Product_description1`, `UOM1`, `Price`, `Effective_date`) VALUES
(1, 'KD001', 'Ovaltine', 'FDABFAD007', 'Product7', 'Pieces', '500', '2013-05-20 15:02:46'),
(2, 'KD001', 'Ovaltine', 'FDABFAD006', 'Product6', 'Pieces', '450', '2013-05-20 15:02:46'),
(3, 'KD001', 'Ovaltine', 'FDABFAD005', 'Product4', 'Pieces', '300', '2013-05-20 15:02:46'),
(4, 'KD001', 'Ovaltine', 'FDABFAD004', 'Product3', 'Pieces', '120', '2013-05-20 15:02:46'),
(5, 'KD001', 'Ovaltine', 'FDABFAD001', 'Ovaltine T Shirts', 'Pieces', '250', '2013-05-20 15:02:46'),
(6, 'KD001', 'Ovaltine', 'FDABFAD002', 'Ovaltine Caps', 'Pieces', '450', '2013-05-20 15:02:46'),
(7, 'KD001', 'Ovaltine', 'FDABFAD007', 'Product7', 'Pieces', '23', '2013-05-20 15:07:21'),
(8, 'KD001', 'Ovaltine', 'FDABFAD006', 'Product6', 'Pieces', '22', '2013-05-20 15:07:21'),
(9, 'KD001', 'Ovaltine', 'FDABFAD005', 'Product4', 'Pieces', '22', '2013-05-20 15:07:21'),
(10, 'KD001', 'Ovaltine', 'FDABFAD004', 'Product3', 'Pieces', '22', '2013-05-20 15:07:21'),
(11, 'KD001', 'Ovaltine', 'FDABFAD001', 'Ovaltine T Shirts', 'Pieces', '34', '2013-05-20 15:07:21'),
(12, 'KD001', 'Ovaltine', 'FDABFAD002', 'Ovaltine Caps', 'Pieces', '45', '2013-05-20 15:07:21'),
(13, 'KD001', 'Macvities', 'FDABFAD007', 'Product7', 'Pieces', '23', '2013-05-20 15:15:20'),
(14, 'KD001', 'Macvities', 'FDABFAD006', 'Product6', 'Pieces', '45', '2013-05-20 15:15:20'),
(15, 'KD001', 'Macvities', 'FDABFAD005', 'Product4', 'Pieces', '56', '2013-05-20 15:15:20'),
(16, 'KD001', 'Macvities', 'FDABFAD004', 'Product3', 'Pieces', '78', '2013-05-20 15:15:20'),
(17, 'KD001', 'Macvities', 'FDABFAD001', 'Ovaltine T Shirts', 'Pieces', '90', '2013-05-20 15:15:20'),
(18, 'KD001', 'Macvities', 'FDABFAD002', 'Ovaltine Caps', 'Pieces', '123', '2013-05-20 15:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `KD_Code` char(20) NOT NULL,
  `KDName` char(20) NOT NULL,
  `Date` date NOT NULL,
  `Product_code` char(20) NOT NULL,
  `Product_description1` varchar(150) NOT NULL,
  `Product_description2` varchar(150) NOT NULL,
  `UOM1` varchar(150) NOT NULL,
  `UOM2` varchar(150) NOT NULL,
  `Uom_conversion` float NOT NULL,
  `product_type` varchar(50) NOT NULL,
  `Focus` varchar(50) NOT NULL,
  `Effective_date` date NOT NULL,
  `Status` char(20) NOT NULL,
  `Status_price_master` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `KD_Code`, `KDName`, `Date`, `Product_code`, `Product_description1`, `Product_description2`, `UOM1`, `UOM2`, `Uom_conversion`, `product_type`, `Focus`, `Effective_date`, `Status`, `Status_price_master`) VALUES
(1, '', 'Snimz', '0000-00-00', 'FDABFAD001', 'Ovaltine T Shirts', 'Ovaltine T Shirts', 'Pieces', 'Pieces', 1, 'Standard', 'No', '0000-00-00', 'Checked', 'Checked_price'),
(2, '', '', '0000-00-00', 'FDABFAD002', 'Ovaltine Caps', 'Ovaltine Caps', 'Pieces', 'Pieces', 1, 'POSM', 'Yes', '0000-00-00', 'Checked', 'Checked_price'),
(5, '', '', '0000-00-00', 'FDABFAD004', 'Product3', 'Product3', 'Pieces', 'Pieces', 1, 'Standard', 'No', '0000-00-00', 'Checked', 'Checked_price'),
(8, '', '', '0000-00-00', 'FDABFAD005', 'Product4', 'Product4', 'Pieces', 'Pieces', 1, 'POSM', 'No', '0000-00-00', 'Checked', 'Checked_price'),
(9, '', '', '0000-00-00', 'FDABFAD006', 'Product6', 'Product6', 'Pieces', 'Pieces', 2, 'POSM', 'No', '0000-00-00', 'Checked', 'Checked_price'),
(10, '', '', '0000-00-00', 'FDABFAD007', 'Product7', 'Product7', 'Pieces', 'Pieces', 2, 'POSM', 'No', '0000-00-00', 'Checked', 'Checked_price');

-- --------------------------------------------------------

--
-- Table structure for table `product_scheme_master`
--

CREATE TABLE IF NOT EXISTS `product_scheme_master` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `Scheme_Description` varchar(50) NOT NULL,
  `Scheme_code` varchar(20) NOT NULL,
  `Header_Product_description1` varchar(50) NOT NULL,
  `Header_Product_code` char(20) NOT NULL,
  `Header_UOM` varchar(20) NOT NULL,
  `Header_Quantity` int(50) NOT NULL,
  `line_Product_Name` varchar(50) NOT NULL,
  `line_Product_Code` varchar(50) NOT NULL,
  `line_Product_UOM1` varchar(50) NOT NULL,
  `line_Product_quantity` varchar(50) NOT NULL,
  `Effective_from` date NOT NULL,
  `Effective_to` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `product_scheme_master`
--

INSERT INTO `product_scheme_master` (`id`, `Scheme_Description`, `Scheme_code`, `Header_Product_description1`, `Header_Product_code`, `Header_UOM`, `Header_Quantity`, `line_Product_Name`, `line_Product_Code`, `line_Product_UOM1`, `line_Product_quantity`, `Effective_from`, `Effective_to`) VALUES
(22, 'Pongal Offer', 'SVHF9', 'Ovaltine Caps', 'FDABFAD002', 'Pieces', 2, 'Ovaltine T Shirts', 'FDABFAD001', '', '2', '2013-05-13', '2013-05-23'),
(23, 'Holy Day Festival Bonanza', 'SR001', 'Ovaltine Caps', 'FDABFAD002', 'Pieces', 2, 'Ovaltine Caps', 'FDABFAD002', '', '1', '2013-04-24', '2013-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE IF NOT EXISTS `product_type` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `product_type` char(30) NOT NULL,
  `Status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `product_type`, `Status`) VALUES
(7, 'Standard', 'active'),
(8, 'POSM', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE IF NOT EXISTS `province` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `province` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `province`) VALUES
(20, 'South'),
(21, 'West'),
(23, 'East'),
(24, 'Centralp'),
(26, 'Data'),
(27, 'small'),
(28, 'newprovince'),
(29, 'mydattaa'),
(30, 'Province1'),
(31, 'myprovince'),
(32, 'Province4'),
(33, 'Province6'),
(34, 'Province9'),
(35, 'Province7'),
(36, 'Province10'),
(37, 'Province11'),
(38, 'pro1');

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE IF NOT EXISTS `receipts` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `KD_Code` char(20) NOT NULL,
  `DSR_id` char(20) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `GPS` varchar(20) NOT NULL,
  `Receipt_Serial_Number` varchar(150) NOT NULL,
  `customer_code` varchar(150) NOT NULL,
  `Amount` bigint(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`id`, `KD_Code`, `DSR_id`, `Date`, `Time`, `GPS`, `Receipt_Serial_Number`, `customer_code`, `Amount`) VALUES
(2, 'B12', '5', '2013-03-18', '04:14:12', 'GP1', 'A234', '1023', 4),
(3, '12', '23', '2013-04-03', '00:00:23', '3232', '233', '23', 232);

-- --------------------------------------------------------

--
-- Table structure for table `route_master`
--

CREATE TABLE IF NOT EXISTS `route_master` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `KD_Code` char(20) NOT NULL,
  `KDName` char(20) NOT NULL,
  `Date` date NOT NULL,
  `route_id` char(20) NOT NULL,
  `route_desc` varchar(150) NOT NULL,
  `location` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `route_master`
--

INSERT INTO `route_master` (`id`, `KD_Code`, `KDName`, `Date`, `route_id`, `route_desc`, `location`) VALUES
(1, '', '', '0000-00-00', '1', '1001', 'mylocation'),
(2, '', '', '0000-00-00', '2', '1002', 'Opebi - Allen Avenue'),
(3, '', '', '0000-00-00', '3', '1003', 'GRA - Maryland'),
(4, '1', '', '0000-00-00', 'Allen Avenue - Airpo', 'test', ''),
(5, '2', '', '0000-00-00', 'Opebi - Allen Avenue', 'test1', ''),
(6, '3', '', '0000-00-00', 'GRA - Maryland', 'test1', ''),
(7, '1', '', '0000-00-00', 'Allen Avenue - Airpo', 'test', ''),
(8, '2', '', '0000-00-00', 'Opebi - Allen Avenue', 'test1', ''),
(9, '3', '', '0000-00-00', 'GRA - Maryland', 'test1', ''),
(10, '1', '', '0000-00-00', 'Allen Avenue - Airpo', 'test', ''),
(11, '2', '', '0000-00-00', 'Opebi - Allen Avenue', 'test1', ''),
(12, '3', '', '0000-00-00', 'GRA - Maryland', 'test1', ''),
(13, '1', '', '0000-00-00', 'Allen Avenue - Airpo', 'test', ''),
(14, '2', '', '0000-00-00', 'Opebi - Allen Avenue', 'test1', ''),
(15, '3', '', '0000-00-00', 'GRA - Maryland', 'test1', ''),
(16, '1', '', '0000-00-00', 'Allen Avenue - Airpo', 'test', ''),
(17, '2', '', '0000-00-00', 'Opebi - Allen Avenue', 'test1', ''),
(18, '3', '', '0000-00-00', 'GRA - Maryland', 'test1', ''),
(19, '1', '', '0000-00-00', 'Allen Avenue - Airpo', 'test', ''),
(20, '2', '', '0000-00-00', 'Opebi - Allen Avenue', 'test1', ''),
(21, '3', '', '0000-00-00', 'GRA - Maryland', 'test1', ''),
(22, '1', '', '0000-00-00', 'Allen Avenue - Airpo', 'test', ''),
(23, '2', '', '0000-00-00', 'Opebi - Allen Avenue', 'test1', ''),
(24, '3', '', '0000-00-00', 'GRA - Maryland', 'test1', ''),
(25, '1', '', '0000-00-00', 'Allen Avenue - Airpo', 'test', ''),
(26, '2', '', '0000-00-00', 'Opebi - Allen Avenue', 'test1', ''),
(27, '3', '', '0000-00-00', 'GRA - Maryland', 'test1', ''),
(28, '1', '', '0000-00-00', 'Allen Avenue - Airpo', 'test', ''),
(29, '2', '', '0000-00-00', 'Opebi - Allen Avenue', 'test1', ''),
(30, '3', '', '0000-00-00', 'GRA - Maryland', 'test1', ''),
(31, '1', '', '0000-00-00', 'Allen Avenue - Airpo', 'test', ''),
(32, '2', '', '0000-00-00', 'Opebi - Allen Avenue', 'test1', ''),
(33, '3', '', '0000-00-00', 'GRA - Maryland', 'test1', ''),
(34, '1', '', '0000-00-00', 'Allen Avenue - Airpo', 'test', ''),
(35, '2', '', '0000-00-00', 'Opebi - Allen Avenue', 'test1', ''),
(36, '3', '', '0000-00-00', 'GRA - Maryland', 'test1', ''),
(37, '1', '', '0000-00-00', 'Allen Avenue - Airpo', 'test', ''),
(38, '2', '', '0000-00-00', 'Opebi - Allen Avenue', 'test1', ''),
(39, '3', '', '0000-00-00', 'GRA - Maryland', 'test1', ''),
(40, '1', '', '0000-00-00', 'Allen Avenue - Airpo', 'test', ''),
(41, '2', '', '0000-00-00', 'Opebi - Allen Avenue', 'test1', ''),
(42, '3', '', '0000-00-00', 'GRA - Maryland', 'test1', '');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE IF NOT EXISTS `sale` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `KD_ID` char(20) NOT NULL,
  `Date` date NOT NULL,
  `device_id` char(20) NOT NULL,
  `DSR_id` char(20) NOT NULL,
  `SKU` char(20) NOT NULL,
  `UOM1` varchar(150) NOT NULL,
  `customer_id` varchar(50) NOT NULL,
  `Quantity_UOM1` varchar(50) NOT NULL,
  `Price` float NOT NULL,
  `Value` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sales_representative`
--

CREATE TABLE IF NOT EXISTS `sales_representative` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `Salesperson_id` varchar(20) NOT NULL,
  `salesperson_name` varchar(150) NOT NULL,
  `salesperson_email_id` varchar(150) NOT NULL,
  `salesperson_cont_num` varchar(150) NOT NULL,
  `DSR_mapped` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `sales_representative`
--

INSERT INTO `sales_representative` (`id`, `Salesperson_id`, `salesperson_name`, `salesperson_email_id`, `salesperson_cont_num`, `DSR_mapped`, `Status`) VALUES
(1, 'A12', 'Balogun', 'Balogun@gmail.com', '9845612341', '', 'inactive'),
(2, 'A13', 'Balraj', 'Balraj@gmail.com', '9845612343', '', ''),
(3, 'B2', 'Balogun', 'Balogun@gmail.com', '9845612341', '', 'active'),
(4, 'SP0012', 'Bolarwa', 'bolarwa@gmail.com', '98345677', '', 'active'),
(5, 'SP00123', 'Bolarwana', 'bolarwana@gmail.com', '9834567745', 'Yes', 'inactive'),
(6, 'SR001', 'COKER', 'COKER@gmail.com', '9894198492', 'Yes', 'active'),
(7, 'SR002', 'Shankarasubramaniyam Shasthri Swamiji', 'shankara@yahoo.com', '9000990009', 'Yes', 'active'),
(8, 'SR003', 'Dhayanandha Sharaswathi Kirubhanandha Variyar Swamiji Avargal', 'Dhaya@yahoo.com', '9600009600', 'Yes', 'inactive'),
(9, 'SR004', 'John', 'John', '9809809809', 'No', 'active'),
(10, 'vbvb', 'vbvbvb', 'vbvbv', 'vbvb', 'Yes', '');

-- --------------------------------------------------------

--
-- Table structure for table `sale_header`
--

CREATE TABLE IF NOT EXISTS `sale_header` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `KD_ID` char(20) NOT NULL,
  `DSR_id` char(20) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `GPS` varchar(20) NOT NULL,
  `Document_Number` varchar(150) NOT NULL,
  `customer_id` varchar(150) NOT NULL,
  `Total_lines` varchar(150) NOT NULL,
  `Total_sale_value` enum('10','2') NOT NULL,
  `Discount` bigint(50) NOT NULL,
  `Discount_value` bigint(50) NOT NULL,
  `Net_value` bigint(50) NOT NULL,
  `Received_value` bigint(50) NOT NULL,
  `Balance_due` bigint(50) NOT NULL,
  `Signature_image` varchar(50) NOT NULL,
  `Card_Number` bigint(50) NOT NULL,
  `Status` varchar(150) NOT NULL,
  `Cancel_Number` bigint(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `sale_header`
--

INSERT INTO `sale_header` (`id`, `KD_ID`, `DSR_id`, `Date`, `Time`, `GPS`, `Document_Number`, `customer_id`, `Total_lines`, `Total_sale_value`, `Discount`, `Discount_value`, `Net_value`, `Received_value`, `Balance_due`, `Signature_image`, `Card_Number`, `Status`, `Cancel_Number`) VALUES
(6, 'B12', '5', '2013-03-13', '02:51:25', 'GP1', '21345', '1519', '2', '10', 10, 5, 34, 25, 3, '', 34, 'o', 234),
(8, 'B13', '5', '2013-03-13', '02:53:41', 'GP1', '21345', '1519', '2', '10', 10, 5, 34, 25, 3, '', 34, 'o', 234),
(9, 'B12', '5', '2013-03-14', '02:56:08', 'GP1', '21345', '1519', '2', '10', 10, 5, 60, 20, 40, '', 34, 'c', 234),
(10, 'B13', '5', '2013-03-13', '02:53:41', 'GP1', '21345', '1519', '2', '10', 10, 5, 60, 25, 35, 'img-3.jpg', 34, 'o', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sale_line`
--

CREATE TABLE IF NOT EXISTS `sale_line` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `KD_ID` char(20) NOT NULL,
  `DSR_id` char(20) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `GPS` varchar(20) NOT NULL,
  `Document_Number` varchar(150) NOT NULL,
  `customer_id` varchar(50) NOT NULL,
  `Product_id` varchar(50) NOT NULL,
  `product_description` varchar(150) NOT NULL,
  `UOM1` varchar(150) NOT NULL,
  `Quantity_UOM1` varchar(150) NOT NULL,
  `Scheme_quantity` varchar(150) NOT NULL,
  `Total_quantity` varchar(150) NOT NULL,
  `Price` bigint(50) NOT NULL,
  `Line_value` varchar(150) NOT NULL,
  `Status` varchar(150) NOT NULL,
  `Cancel_Number` bigint(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sale_line`
--

INSERT INTO `sale_line` (`id`, `KD_ID`, `DSR_id`, `Date`, `Time`, `GPS`, `Document_Number`, `customer_id`, `Product_id`, `product_description`, `UOM1`, `Quantity_UOM1`, `Scheme_quantity`, `Total_quantity`, `Price`, `Line_value`, `Status`, `Cancel_Number`) VALUES
(1, 'B13', '2013-03-13', '0000-00-00', '00:15:19', '5', '02:52:54', '21345', '1004', 'Test', '10pcs', '3', '1', '23', 3, '2', 'c', 2345);

-- --------------------------------------------------------

--
-- Table structure for table `sale_line_batch_lot`
--

CREATE TABLE IF NOT EXISTS `sale_line_batch_lot` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `KD_ID` char(20) NOT NULL,
  `DSR_id` char(20) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `GPS` varchar(20) NOT NULL,
  `Document_Number` varchar(150) NOT NULL,
  `customer_id` varchar(150) NOT NULL,
  `Product_id` varchar(150) NOT NULL,
  `product_description` varchar(150) NOT NULL,
  `UOM1` varchar(150) NOT NULL,
  `Batch_Number` varchar(150) NOT NULL,
  `Lot_Number` varchar(150) NOT NULL,
  `Expiry_date` date NOT NULL,
  `quantity` bigint(50) NOT NULL,
  `Status` varchar(150) NOT NULL,
  `Cancel_Number` bigint(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sale_master`
--

CREATE TABLE IF NOT EXISTS `sale_master` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `KD_ID` char(20) NOT NULL,
  `DSR_id` char(20) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `GPS` varchar(20) NOT NULL,
  `Document_Number` varchar(150) NOT NULL,
  `Image` varchar(50) NOT NULL,
  `customer_id` varchar(50) NOT NULL,
  `Customer_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `sale_master`
--

INSERT INTO `sale_master` (`id`, `KD_ID`, `DSR_id`, `Date`, `Time`, `GPS`, `Document_Number`, `Image`, `customer_id`, `Customer_Name`) VALUES
(3, 'B13', '5', '2013-03-13', '02:53:41', 'GP1', '21345', 'LEDS_1.jpg', '1519', 'John'),
(4, 'B12', '5', '2013-03-13', '02:56:08', 'GP1', '21345', 'img-1.jpg', '1519', 'John'),
(6, 'B12', '5', '2013-03-14', '02:57:22', 'H12', '21345', 'img-1.jpg', '1519', 'mohan'),
(7, 'B12', '5', '2013-03-14', '02:50:04', 'bvnvbn', '21345', 'img-2.jpg', '1023', 'Felix'),
(8, 'B12', '5', '2013-03-15', '02:51:25', 'GP1', '21345', 'img-5.jpg', '2', 'mohan');

-- --------------------------------------------------------

--
-- Table structure for table `sale_return_header`
--

CREATE TABLE IF NOT EXISTS `sale_return_header` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `KD_ID` char(20) NOT NULL,
  `DSR_id` char(150) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `GPS` varchar(20) NOT NULL,
  `Return_Document_Number` varchar(150) NOT NULL,
  `customer_id` varchar(150) NOT NULL,
  `Total_lines` varchar(150) NOT NULL,
  `Total_Return_Value` varchar(150) NOT NULL,
  `Signature_image` blob NOT NULL,
  `Card_Number` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `sale_return_header`
--

INSERT INTO `sale_return_header` (`id`, `KD_ID`, `DSR_id`, `Date`, `Time`, `GPS`, `Return_Document_Number`, `customer_id`, `Total_lines`, `Total_Return_Value`, `Signature_image`, `Card_Number`) VALUES
(1, 'B13', '5', '2013-03-13', '02:53:41', 'GP1', '21345', '1519', '2', '5', 0x323234315370616365736869702e6a7067, '2345678'),
(2, 'B14', '5', '2013-03-14', '02:53:41', 'GP1', '21345', '1519', '2', '5', '', '2345678');

-- --------------------------------------------------------

--
-- Table structure for table `sale_return_line`
--

CREATE TABLE IF NOT EXISTS `sale_return_line` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `KD_ID` char(20) NOT NULL,
  `DSR_id` char(20) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `GPS` varchar(20) NOT NULL,
  `Return_Document_Number` varchar(150) NOT NULL,
  `customer_id` varchar(50) NOT NULL,
  `Product_id` varchar(50) NOT NULL,
  `product_description` varchar(150) NOT NULL,
  `UOM1` varchar(150) NOT NULL,
  `Quantity_UOM1` varchar(150) NOT NULL,
  `Price` varchar(150) NOT NULL,
  `Line_value` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sale_return_line_batch_lot`
--

CREATE TABLE IF NOT EXISTS `sale_return_line_batch_lot` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `KD_ID` char(20) NOT NULL,
  `DSR_id` char(20) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `GPS` varchar(20) NOT NULL,
  `Return_Document_Number` varchar(150) NOT NULL,
  `customer_id` varchar(150) NOT NULL,
  `Product_id` varchar(150) NOT NULL,
  `product_description` varchar(150) NOT NULL,
  `UOM1` varchar(150) NOT NULL,
  `Batch_Number` varchar(150) NOT NULL,
  `Lot_Number` varchar(150) NOT NULL,
  `Expiry_date` date NOT NULL,
  `quantity` bigint(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sale_return_line_batch_lot`
--

INSERT INTO `sale_return_line_batch_lot` (`id`, `KD_ID`, `DSR_id`, `Date`, `Time`, `GPS`, `Return_Document_Number`, `customer_id`, `Product_id`, `product_description`, `UOM1`, `Batch_Number`, `Lot_Number`, `Expiry_date`, `quantity`) VALUES
(1, 'B13', '5', '2013-03-13', '02:53:41', 'GP1', '21345', '1519', '1004', 'Test', '12', '', '', '2013-03-27', 10);

-- --------------------------------------------------------

--
-- Table structure for table `scheme_master`
--

CREATE TABLE IF NOT EXISTS `scheme_master` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `Scheme_code` varchar(20) NOT NULL,
  `Scheme_Description` varchar(150) NOT NULL,
  `Effective_from` date NOT NULL,
  `Effective_to` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `scheme_master`
--

INSERT INTO `scheme_master` (`id`, `Scheme_code`, `Scheme_Description`, `Effective_from`, `Effective_to`) VALUES
(8, 'SR001', 'Holy Day Festival Bonanza', '2013-04-24', '2013-05-24'),
(9, 'RVHF9', 'Dasara Bonanza', '2013-05-10', '2013-05-24'),
(10, 'SVHF9', 'Pongal Offer', '2013-05-13', '2013-05-23'),
(11, 'RVHF10', 'New year Offer', '2013-05-29', '2013-06-10'),
(12, 'RVHF12', 'Festival Offer', '2013-05-25', '2013-06-17');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `state` varchar(50) NOT NULL,
  `province_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `state`, `province_id`) VALUES
(4, 'Delhi', 'Undefined'),
(5, 'Punjab', 'undefined'),
(8, 'Andhra', 'South'),
(9, 'Tamil Nadu', 'South'),
(10, 'Mumbai', 'West'),
(11, '', 'Undefined'),
(12, 'mumbai', 'Undefined'),
(13, 'state2', '26'),
(15, 'newstate', 'newprovince'),
(20, 'samplestatee', 'West');

-- --------------------------------------------------------

--
-- Table structure for table `uom`
--

CREATE TABLE IF NOT EXISTS `uom` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `UOM_code` char(20) NOT NULL,
  `UOM_description` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `uom`
--

INSERT INTO `uom` (`id`, `UOM_code`, `UOM_description`) VALUES
(1, 'pcs', 'Pieces');

-- --------------------------------------------------------

--
-- Table structure for table `uom1`
--

CREATE TABLE IF NOT EXISTS `uom1` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `UOM1` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `uom1`
--

INSERT INTO `uom1` (`id`, `UOM1`) VALUES
(1, '2pcs'),
(2, '3pcs');

-- --------------------------------------------------------

--
-- Table structure for table `uom2`
--

CREATE TABLE IF NOT EXISTS `uom2` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `UOM2` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `uom2`
--

INSERT INTO `uom2` (`id`, `UOM2`) VALUES
(1, '3pcs'),
(2, '1pcs');

-- --------------------------------------------------------

--
-- Table structure for table `uom_conversion`
--

CREATE TABLE IF NOT EXISTS `uom_conversion` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `UOM1` char(20) NOT NULL,
  `UOM2` char(20) NOT NULL,
  `Uom_conversion` float NOT NULL,
  `Status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `uom_conversion`
--

INSERT INTO `uom_conversion` (`id`, `UOM1`, `UOM2`, `Uom_conversion`, `Status`) VALUES
(1, '4', '5', 2.3, 'active'),
(2, '', '', 1970, 'inactive'),
(3, 'pcs', 'pcs', 1, 'active'),
(4, 'pcs', 'pcs', 1, 'inactive'),
(5, '', '', 0, 'inactive'),
(6, 'Each', 'Dozen', 12, 'active'),
(7, '', '', 0, 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_master`
--

CREATE TABLE IF NOT EXISTS `vehicle_master` (
  `id` bigint(50) NOT NULL AUTO_INCREMENT,
  `KD_Code` char(20) NOT NULL,
  `KDName` char(20) NOT NULL,
  `Date` date NOT NULL,
  `Vehicle_id` char(20) NOT NULL,
  `Registration_number` char(30) NOT NULL,
  `vehicle_desc` varchar(150) NOT NULL,
  `Stock_point_flag` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=402 ;

--
-- Dumping data for table `vehicle_master`
--

INSERT INTO `vehicle_master` (`id`, `KD_Code`, `KDName`, `Date`, `Vehicle_id`, `Registration_number`, `vehicle_desc`, `Stock_point_flag`) VALUES
(3, '', '', '0000-00-00', '2', '2345', 'Sample', '0'),
(4, '', '', '0000-00-00', '3', '2346', 'test2', '0'),
(5, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(6, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(7, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(8, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(9, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(10, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(11, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(12, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(13, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(14, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(15, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(16, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(17, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(18, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(19, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(20, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(21, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(22, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(23, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(24, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(25, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(26, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(27, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(28, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(29, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(30, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(31, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(32, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(33, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(34, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(35, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(36, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(37, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(38, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(39, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(40, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(41, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(42, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(43, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(44, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(45, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(46, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(47, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(48, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(49, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(50, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(51, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(52, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(53, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(54, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(55, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(56, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(57, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(58, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(59, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(60, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(61, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(62, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(63, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(64, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(65, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(66, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(67, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(68, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(69, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(70, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(71, '', '', '0000-00-00', '', '', '', ''),
(72, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(73, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(74, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(75, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(76, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(77, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(78, '', '', '0000-00-00', '', '', '', ''),
(79, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(80, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(81, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(82, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(83, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(84, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(85, '', '', '0000-00-00', '', '', '', ''),
(86, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(87, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(88, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(89, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(90, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(91, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(92, '', '', '0000-00-00', '', '', '', ''),
(93, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(94, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(95, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(96, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(97, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(98, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(99, '', '', '0000-00-00', '', '', '', ''),
(100, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(101, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(102, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(103, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(104, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(105, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(106, '', '', '0000-00-00', '', '', '', ''),
(107, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(108, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(109, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(110, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(111, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(112, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(113, '', '', '0000-00-00', '', '', '', ''),
(114, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(115, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(116, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(117, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(118, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(119, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(120, '', '', '0000-00-00', '', '', '', ''),
(121, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(122, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(123, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(124, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(125, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(126, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(127, '', '', '0000-00-00', '', '', '', ''),
(128, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(129, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(130, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(131, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(132, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(133, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(134, '', '', '0000-00-00', '', '', '', ''),
(135, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(136, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(137, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(138, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(139, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(140, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(141, '', '', '0000-00-00', '', '', '', ''),
(142, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(143, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(144, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(145, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(146, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(147, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(148, '', '', '0000-00-00', '', '', '', ''),
(149, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(150, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(151, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(152, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(153, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(154, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(155, '', '', '0000-00-00', '', '', '', ''),
(156, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(157, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(158, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(159, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(160, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(161, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(162, '', '', '0000-00-00', '', '', '', ''),
(163, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(164, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(165, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(166, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(167, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(168, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(169, '', '', '0000-00-00', '', '', '', ''),
(170, '', '', '0000-00-00', '"2"', '"1"', '"2346"', '"tes"'),
(171, '', '', '0000-00-00', '"3"', '"2"', '"2345"', '"Sample"'),
(172, '', '', '0000-00-00', '"4"', '"3"', '"2346"', '"test2"'),
(173, '', '', '0000-00-00', '"5"', '"""2"";""1"";""2346"";""tes"""', '', ''),
(174, '', '', '0000-00-00', '"6"', '"""3"";""2"";""2345"";""Samp"', '', ''),
(175, '', '', '0000-00-00', '"7"', '"""4"";""3"";""2346"";""test"', '', ''),
(176, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(177, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(178, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(179, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(180, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(181, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(182, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(183, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(184, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(185, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(186, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(187, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(188, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(189, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(190, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(191, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(192, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(193, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(194, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(195, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(196, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(197, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(198, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(199, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(200, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(201, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(202, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(203, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(204, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(205, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(206, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(207, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(208, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(209, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(210, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(211, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(212, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(213, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(214, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(215, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(216, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(217, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(218, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(219, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(220, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(221, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(222, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(223, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(224, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(225, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(226, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(227, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(228, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(229, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(230, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(231, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(232, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(233, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(234, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(235, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(236, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(237, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(238, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(239, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(240, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(241, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(242, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(243, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(244, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(245, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(246, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(247, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(248, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(249, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(250, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(251, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(252, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(253, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(254, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(255, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(256, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(257, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(258, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(259, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(260, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(261, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(262, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(263, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(264, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(265, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(266, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(267, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(268, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(269, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(270, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(271, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(272, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(273, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(274, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(275, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(276, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(277, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(278, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(279, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(280, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(281, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(282, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(283, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(284, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(285, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(286, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(287, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(288, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(289, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(290, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(291, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(292, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(293, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(294, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(295, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(296, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(297, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(298, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(299, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(300, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(301, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(302, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(303, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(304, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(305, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(306, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(307, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(308, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(309, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(310, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(311, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(312, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(313, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(314, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(315, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(316, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(317, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(318, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(319, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(320, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(321, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(322, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(323, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(324, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(325, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(326, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(327, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(328, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(329, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(330, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(331, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(332, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(333, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(334, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(335, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(336, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(337, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(338, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(339, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(340, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(341, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(342, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(343, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(344, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(345, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(346, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(347, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(348, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(349, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(350, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(351, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(352, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(353, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(354, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(355, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(356, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(357, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(358, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(359, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(360, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(361, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(362, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(363, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(364, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(365, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(366, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(367, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(368, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(369, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(370, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(371, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(372, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(373, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(374, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(375, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(376, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(377, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(378, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(379, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(380, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(381, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(382, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(383, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(384, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(385, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(386, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(387, '', '', '0000-00-00', '3', '2', '2345', 'Sample'),
(388, '', '', '0000-00-00', '4', '3', '2346', 'test2'),
(389, '', '', '0000-00-00', '5', '"2";"1";"2346";"tes"', '', ''),
(390, '', '', '0000-00-00', '6', '"3";"2";"2345";"Samp', '', ''),
(391, '', '', '0000-00-00', '7', '"4";"3";"2346";"test', '', ''),
(392, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(393, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(394, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(395, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(396, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(397, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(398, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(399, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(400, '', '', '0000-00-00', '2', '1', '2346', 'tes'),
(401, '', '', '0000-00-00', '2', '1', '2346', 'tes');

-- --------------------------------------------------------

--
-- Structure for view `device_data_view`
--
DROP TABLE IF EXISTS `device_data_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `device_data_view` AS select `device_data`.`id` AS `id`,`device_data`.`KD_Code` AS `KD_Code`,`device_data`.`device_id` AS `device_id`,`device_data`.`dsr_id` AS `dsr_id`,`device_data`.`Salesperson_id` AS `Salesperson_id`,`device_data`.`fromDate` AS `fromDate`,`device_data`.`toDate` AS `toDate`,`device_data`.`SKU_stock` AS `SKU_stock`,`device_data`.`UOM_Stock` AS `UOM_Stock`,`device_data`.`stock_qty` AS `stock_qty`,`device_data`.`stock_price` AS `stock_price`,`device_data`.`stock_value` AS `stock_value`,`device_data`.`Return_quantity` AS `Return_quantity`,`device_data`.`invoice` AS `invoice`,`device_data`.`collections` AS `collections`,`device_data`.`SKU_sale` AS `SKU_sale`,`device_data`.`UOM_Sale` AS `UOM_Sale`,`device_data`.`customer_code` AS `customer_code`,`device_data`.`transactiontype` AS `transactiontype`,`device_data`.`sale_qty` AS `sale_qty`,`device_data`.`sale_price` AS `sale_price`,`device_data`.`sale_value` AS `sale_value`,`device_data`.`visits` AS `visits`,`device_data`.`invoices` AS `invoices`,`device_data`.`SKU_products` AS `SKU_products`,`device_data`.`dropsize` AS `dropsize`,`device_data`.`basketsize` AS `basketsize`,`device_data`.`totalinvoicelineitems` AS `totalinvoicelineitems`,`device_data`.`feedback_type` AS `feedback_type`,`device_data`.`feedback_date` AS `feedback_date`,`device_data`.`feedback` AS `feedback` from `device_data`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
