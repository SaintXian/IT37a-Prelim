-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2017 at 11:52 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dynamic_queuing`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL DEFAULT '0',
  `admin_pass` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_pass`) VALUES
(1, 'daniel', '123');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `costumer_id` int(11) NOT NULL,
  `form` varchar(255) NOT NULL,
  `date_queued` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`costumer_id`, `form`, `date_queued`) VALUES
(43, '[{"names":"133","number":"3123"}]', '2017-02-05 16:56:10'),
(44, '[{"names":"1233","number":"33333"}]', '2017-02-05 16:56:15'),
(45, '[{"names":"1121","number":"11222"}]', '2017-02-06 05:27:07'),
(46, '[{"names":"1212","number":"4444"}]', '2017-02-06 05:27:11'),
(47, '[{"names":"123123","number":"11555"}]', '2017-02-06 05:27:15');

-- --------------------------------------------------------

--
-- Stand-in structure for view `customer_queues`
--
CREATE TABLE `customer_queues` (
`queue_id` int(11)
,`teller_id` int(11)
,`customer_info` varchar(255)
,`service_id` int(11)
,`service` varchar(255)
,`burst_time` int(11)
,`priority` varchar(50)
,`status` varchar(50)
,`time_queued` date
,`start_time` time
,`text` int(11)
,`mobile` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `daily_services`
--

CREATE TABLE `daily_services` (
  `ds_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT '0',
  `time_service` time DEFAULT NULL,
  `date_service` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_services`
--

INSERT INTO `daily_services` (`ds_id`, `service_id`, `time_service`, `date_service`) VALUES
(1, 1, '11:37:23', '2017-01-11'),
(2, 2, '12:11:22', '2017-01-11'),
(3, 3, '11:37:56', '2017-01-11'),
(4, 1, NULL, '2017-01-12'),
(5, 2, '10:16:08', '2017-01-12'),
(6, 3, NULL, '2017-01-12'),
(7, 1, NULL, '2017-01-13'),
(8, 2, NULL, '2017-01-13'),
(9, 3, NULL, '2017-01-13'),
(10, 1, NULL, '2017-01-14'),
(11, 2, '02:25:50', '2017-01-14'),
(12, 3, NULL, '2017-01-14'),
(13, 1, '12:41:55', '2017-01-15'),
(14, 2, '11:15:33', '2017-01-15'),
(15, 3, '12:42:12', '2017-01-15'),
(19, 1, NULL, '2017-01-17'),
(20, 2, '04:08:44', '2017-01-17'),
(21, 3, NULL, '2017-01-17'),
(22, 1, NULL, '2017-01-18'),
(23, 2, NULL, '2017-01-18'),
(24, 3, NULL, '2017-01-18'),
(25, 1, NULL, '2017-01-20'),
(26, 2, NULL, '2017-01-20'),
(27, 3, NULL, '2017-01-20'),
(28, 1, '11:22:13', '2017-01-21'),
(29, 2, '11:19:03', '2017-01-21'),
(30, 3, '11:22:43', '2017-01-21'),
(31, 1, NULL, '2017-01-23'),
(32, 2, '11:59:37', '2017-01-23'),
(33, 3, NULL, '2017-01-23'),
(34, 1, '12:57:21', '2017-01-24'),
(35, 2, '03:05:09', '2017-01-24'),
(36, 3, NULL, '2017-01-24'),
(40, 1, '10:55:54', '2017-01-26'),
(41, 2, '10:55:18', '2017-01-26'),
(42, 3, NULL, '2017-01-26'),
(49, 1, '03:57:43', '2017-01-27'),
(50, 2, NULL, '2017-01-27'),
(51, 3, NULL, '2017-01-27'),
(52, 1, '11:48:02', '2017-01-29'),
(53, 2, '12:04:34', '2017-01-29'),
(54, 3, NULL, '2017-01-29'),
(55, 1, '11:18:09', '2017-01-31'),
(56, 2, '08:06:56', '2017-01-31'),
(57, 3, NULL, '2017-01-31'),
(58, 1, NULL, '2017-02-01'),
(59, 2, '02:41:00', '2017-02-01'),
(60, 3, NULL, '2017-02-01'),
(61, 14, NULL, '2017-02-01'),
(62, 1, NULL, '2017-02-04'),
(63, 2, '02:41:09', '2017-02-04'),
(64, 3, NULL, '2017-02-04'),
(65, 14, NULL, '2017-02-04'),
(66, 1, NULL, '2017-02-05'),
(67, 2, NULL, '2017-02-05'),
(68, 3, NULL, '2017-02-05'),
(69, 14, NULL, '2017-02-05'),
(70, 1, '05:34:45', '2017-02-06'),
(71, 2, NULL, '2017-02-06'),
(72, 3, NULL, '2017-02-06'),
(73, 14, NULL, '2017-02-06');

-- --------------------------------------------------------

--
-- Stand-in structure for view `display_queues`
--
CREATE TABLE `display_queues` (
`queue_id` int(11)
,`service` varchar(255)
,`customer_info` varchar(255)
,`window` varchar(50)
,`burst_time` int(11)
,`priority` varchar(50)
,`time_queued` date
,`start_time` time
,`date_queued` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `form_id` int(11) NOT NULL,
  `form_name` varchar(255) NOT NULL,
  `form_type` varchar(255) DEFAULT NULL,
  `form_placeholder` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`form_id`, `form_name`, `form_type`, `form_placeholder`) VALUES
(1, 'names', 'text', 'Full Name'),
(2, 'number', 'number', 'Number');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `history_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `date_history` date NOT NULL,
  `burst_time` int(11) NOT NULL,
  `total` varchar(244) DEFAULT NULL,
  `divide` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`history_id`, `service_id`, `date_history`, `burst_time`, `total`, `divide`) VALUES
(4, 1, '2017-01-06', 3, NULL, NULL),
(5, 2, '2017-01-06', 4, NULL, NULL),
(6, 3, '2017-01-06', 9, NULL, NULL),
(7, 1, '2017-01-07', 10, NULL, NULL),
(8, 2, '2017-01-07', 5, NULL, NULL),
(9, 3, '2017-01-07', 10, NULL, NULL),
(13, 1, '2017-01-08', 10, NULL, NULL),
(14, 2, '2017-01-08', 5, NULL, NULL),
(15, 3, '2017-01-08', 10, NULL, NULL),
(16, 1, '2017-01-09', 10, NULL, NULL),
(17, 2, '2017-01-09', 5, NULL, NULL),
(18, 3, '2017-01-09', 10, NULL, NULL),
(19, 1, '2017-01-10', 10, NULL, NULL),
(20, 2, '2017-01-10', 5, NULL, NULL),
(21, 3, '2017-01-10', 10, NULL, NULL),
(22, 1, '2017-01-11', 10, NULL, NULL),
(23, 2, '2017-01-11', 5, NULL, NULL),
(24, 3, '2017-01-11', 10, NULL, NULL),
(25, 1, '2017-01-12', 10, NULL, NULL),
(26, 2, '2017-01-12', 5, NULL, NULL),
(27, 3, '2017-01-12', 10, NULL, NULL),
(28, 1, '2017-01-13', 10, NULL, NULL),
(29, 2, '2017-01-13', 5, NULL, NULL),
(30, 3, '2017-01-13', 10, NULL, NULL),
(31, 1, '2017-01-14', 10, NULL, NULL),
(32, 2, '2017-01-14', 5, NULL, NULL),
(33, 3, '2017-01-14', 10, NULL, NULL),
(34, 1, '2017-01-15', 10, NULL, NULL),
(35, 2, '2017-01-15', 5, NULL, NULL),
(36, 3, '2017-01-15', 10, NULL, NULL),
(37, 1, '2017-01-17', 10, NULL, NULL),
(38, 2, '2017-01-17', 4, NULL, NULL),
(39, 3, '2017-01-17', 10, NULL, NULL),
(40, 1, '2017-01-18', 10, NULL, NULL),
(41, 2, '2017-01-18', 4, NULL, NULL),
(42, 3, '2017-01-18', 10, NULL, NULL),
(43, 1, '2017-01-20', 10, NULL, NULL),
(44, 2, '2017-01-20', 4, NULL, NULL),
(45, 3, '2017-01-20', 10, NULL, NULL),
(46, 1, '2017-01-21', 10, NULL, NULL),
(47, 2, '2017-01-21', 4, NULL, NULL),
(48, 3, '2017-01-21', 10, NULL, NULL),
(49, 1, '2017-01-23', 10, NULL, NULL),
(50, 2, '2017-01-23', 6, NULL, NULL),
(51, 3, '2017-01-23', 10, NULL, NULL),
(52, 1, '2017-01-24', 10, NULL, NULL),
(53, 2, '2017-01-24', 6, NULL, NULL),
(54, 3, '2017-01-24', 10, NULL, NULL),
(55, 1, '2017-01-26', 5, NULL, NULL),
(56, 2, '2017-01-26', 6, NULL, NULL),
(57, 3, '2017-01-26', 10, NULL, NULL),
(58, 1, '2017-01-27', 5, NULL, NULL),
(59, 2, '2017-01-27', 6, NULL, NULL),
(60, 3, '2017-01-27', 10, NULL, NULL),
(61, 1, '2017-01-29', 5, '4+7+4', 3),
(62, 2, '2017-01-29', 5, '5+5+6+6+4', 5),
(63, 3, '2017-01-29', 10, NULL, NULL),
(64, 1, '2017-01-31', 5, NULL, NULL),
(65, 2, '2017-01-31', 5, NULL, NULL),
(66, 3, '2017-01-31', 10, NULL, NULL),
(70, 14, '2017-01-31', 3, NULL, NULL),
(71, 1, '2017-02-01', 5, NULL, NULL),
(72, 2, '2017-02-01', 5, NULL, NULL),
(73, 3, '2017-02-01', 10, NULL, NULL),
(74, 14, '2017-02-01', 3, NULL, NULL),
(75, 1, '2017-02-04', 5, NULL, NULL),
(76, 2, '2017-02-04', 5, NULL, NULL),
(77, 3, '2017-02-04', 10, NULL, NULL),
(78, 14, '2017-02-04', 3, NULL, NULL),
(79, 1, '2017-02-05', 5, NULL, NULL),
(80, 2, '2017-02-05', 5, NULL, NULL),
(81, 3, '2017-02-05', 10, NULL, NULL),
(82, 14, '2017-02-05', 3, NULL, NULL),
(83, 1, '2017-02-06', 5, NULL, NULL),
(84, 2, '2017-02-06', 5, NULL, NULL),
(85, 3, '2017-02-06', 10, NULL, NULL),
(86, 14, '2017-02-06', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `option_id` int(11) NOT NULL,
  `option_name` varchar(50) DEFAULT '0',
  `option_status` varchar(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`option_id`, `option_name`, `option_status`) VALUES
(1, 'special', 'enabled'),
(2, 'service', 'disabled'),
(3, 'one_category', 'disabled');

-- --------------------------------------------------------

--
-- Table structure for table `queues`
--

CREATE TABLE `queues` (
  `queue_id` int(11) NOT NULL,
  `priority_code` varchar(50) NOT NULL DEFAULT '0',
  `teller_id` int(11) DEFAULT NULL,
  `time_queued` date DEFAULT NULL,
  `customer_id` int(11) DEFAULT '0',
  `service_id` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `burst_time` int(11) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `text` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `queues`
--

INSERT INTO `queues` (`queue_id`, `priority_code`, `teller_id`, `time_queued`, `customer_id`, `service_id`, `status`, `start_time`, `end_time`, `burst_time`, `mobile`, `text`) VALUES
(44, 'C001', NULL, '2017-02-05', 43, 1, 'waiting', NULL, NULL, 5, 0, 0),
(45, 'C002', NULL, '2017-02-05', 44, 1, 'waiting', NULL, NULL, 5, 0, 0),
(46, 'C001', 2, '2017-02-06', 45, 1, 'skip', '05:36:39', NULL, 1, 0, 0),
(47, 'C002', 2, '2017-02-06', 46, 1, 'active', '05:38:11', NULL, 5, 0, 0),
(48, 'C003', NULL, '2017-02-06', 47, 1, 'waiting', NULL, NULL, 5, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `queue_cutoff`
--

CREATE TABLE `queue_cutoff` (
  `qc_id` int(11) NOT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `service_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_name`, `service_code`) VALUES
(1, 'Cashier', 'C000'),
(2, 'Assesment', 'ASS000'),
(3, 'other', 'ER000'),
(14, 'eeeq', 'EE000');

-- --------------------------------------------------------

--
-- Table structure for table `tellers`
--

CREATE TABLE `tellers` (
  `teller_id` int(11) NOT NULL,
  `teller_name` varchar(255) NOT NULL,
  `teller_pass` varchar(255) NOT NULL,
  `window` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date_created` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tellers`
--

INSERT INTO `tellers` (`teller_id`, `teller_name`, `teller_pass`, `window`, `status`, `date_created`) VALUES
(2, 'Dan', '123', 'W1', 'active', NULL),
(3, 'Jessa', '123', 'W2', 'active', NULL),
(4, 'Aik', '123', 'W3', 'active', NULL),
(5, 'Dulf', '123', 'W4', 'active', NULL),
(6, '123', '333', 'W333', 'active', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teller_breaks`
--

CREATE TABLE `teller_breaks` (
  `tb_id` int(11) NOT NULL,
  `teller_id` int(11) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `date_now` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teller_breaks`
--

INSERT INTO `teller_breaks` (`tb_id`, `teller_id`, `start_time`, `end_time`, `date_now`) VALUES
(1, 2, '06:08:08', NULL, '2017-02-06'),
(2, 2, '06:11:51', NULL, '2017-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `teller_logs`
--

CREATE TABLE `teller_logs` (
  `tl_id` int(11) NOT NULL,
  `teller_id` int(11) NOT NULL DEFAULT '0',
  `date_log` date DEFAULT NULL,
  `online` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teller_logs`
--

INSERT INTO `teller_logs` (`tl_id`, `teller_id`, `date_log`, `online`) VALUES
(8, 2, '2017-01-27', 0),
(9, 5, '2017-01-27', 0),
(10, 2, '2017-01-29', 1),
(11, 3, '2017-01-29', 0),
(12, 3, '2017-01-31', 1),
(13, 2, '2017-01-31', 0),
(14, 3, '2017-02-01', 1),
(15, 2, '2017-02-04', 1),
(16, 2, '2017-02-06', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `teller_s`
--
CREATE TABLE `teller_s` (
`teller_name` varchar(255)
,`teller_id` int(11)
,`service_id` int(11)
,`service_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `teller_services`
--

CREATE TABLE `teller_services` (
  `ts_id` int(11) NOT NULL,
  `teller_id` int(11) NOT NULL DEFAULT '0',
  `service_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teller_services`
--

INSERT INTO `teller_services` (`ts_id`, `teller_id`, `service_id`) VALUES
(1, 2, 1),
(3, 2, 2),
(9, 2, 3),
(12, 2, 14),
(2, 3, 2),
(13, 4, 1),
(4, 5, 1),
(14, 6, 3);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ts_views`
--
CREATE TABLE `ts_views` (
`teller_name` varchar(255)
,`teller_id` int(11)
,`service_id` int(11)
,`service_name` varchar(255)
,`date_log` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `t_logs`
--
CREATE TABLE `t_logs` (
`teller_id` int(11)
,`teller_name` varchar(255)
,`date_log` date
,`window` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `customer_queues`
--
DROP TABLE IF EXISTS `customer_queues`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `customer_queues`  AS  select `queues`.`queue_id` AS `queue_id`,`queues`.`teller_id` AS `teller_id`,`customer`.`form` AS `customer_info`,`queues`.`service_id` AS `service_id`,`services`.`service_name` AS `service`,`queues`.`burst_time` AS `burst_time`,`queues`.`priority_code` AS `priority`,`queues`.`status` AS `status`,`queues`.`time_queued` AS `time_queued`,`queues`.`start_time` AS `start_time`,`queues`.`text` AS `text`,`queues`.`mobile` AS `mobile` from (((`customer` join `queues`) join `services`) join `histories`) where ((`customer`.`costumer_id` = `queues`.`customer_id`) and (`queues`.`service_id` = `services`.`service_id`) and (`histories`.`service_id` = `services`.`service_id`) and (`histories`.`date_history` = curdate())) order by `queues`.`queue_id` ;

-- --------------------------------------------------------

--
-- Structure for view `display_queues`
--
DROP TABLE IF EXISTS `display_queues`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `display_queues`  AS  select `queues`.`queue_id` AS `queue_id`,`services`.`service_name` AS `service`,`customer`.`form` AS `customer_info`,`tellers`.`window` AS `window`,`histories`.`burst_time` AS `burst_time`,`queues`.`priority_code` AS `priority`,`queues`.`time_queued` AS `time_queued`,`queues`.`start_time` AS `start_time`,`customer`.`date_queued` AS `date_queued` from ((((`customer` join `queues`) join `services`) join `histories`) join `tellers`) where ((`customer`.`costumer_id` = `queues`.`customer_id`) and (`queues`.`service_id` = `services`.`service_id`) and (`histories`.`service_id` = `services`.`service_id`) and (`tellers`.`teller_id` = `queues`.`teller_id`) and (`histories`.`date_history` = `queues`.`time_queued`)) ;

-- --------------------------------------------------------

--
-- Structure for view `teller_s`
--
DROP TABLE IF EXISTS `teller_s`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `teller_s`  AS  select `tellers`.`teller_name` AS `teller_name`,`tellers`.`teller_id` AS `teller_id`,`teller_services`.`service_id` AS `service_id`,`services`.`service_name` AS `service_name` from ((`tellers` join `teller_services`) join `services`) where ((`tellers`.`teller_id` = `teller_services`.`teller_id`) and (`teller_services`.`service_id` = `services`.`service_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `ts_views`
--
DROP TABLE IF EXISTS `ts_views`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ts_views`  AS  select `tellers`.`teller_name` AS `teller_name`,`teller_services`.`teller_id` AS `teller_id`,`teller_services`.`service_id` AS `service_id`,`services`.`service_name` AS `service_name`,`teller_logs`.`date_log` AS `date_log` from (((`teller_services` join `services`) join `tellers`) join `teller_logs`) where ((`teller_services`.`service_id` = `services`.`service_id`) and (`tellers`.`teller_id` = `teller_services`.`teller_id`) and (`teller_logs`.`teller_id` = `tellers`.`teller_id`) and (`teller_logs`.`teller_id` = `teller_services`.`teller_id`) and (`teller_logs`.`online` = 1) and (`teller_logs`.`date_log` = curdate())) ;

-- --------------------------------------------------------

--
-- Structure for view `t_logs`
--
DROP TABLE IF EXISTS `t_logs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `t_logs`  AS  select `tellers`.`teller_id` AS `teller_id`,`tellers`.`teller_name` AS `teller_name`,`teller_logs`.`date_log` AS `date_log`,`tellers`.`window` AS `window` from (`tellers` join `teller_logs`) where (`tellers`.`teller_id` = `teller_logs`.`teller_id`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`costumer_id`);

--
-- Indexes for table `daily_services`
--
ALTER TABLE `daily_services`
  ADD PRIMARY KEY (`ds_id`),
  ADD KEY `FK_service_daily_services` (`service_id`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `FK_history_services` (`service_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `queues`
--
ALTER TABLE `queues`
  ADD PRIMARY KEY (`queue_id`),
  ADD KEY `FK__teller` (`teller_id`),
  ADD KEY `FK_queue_services` (`service_id`),
  ADD KEY `FK_queue_customer` (`customer_id`);

--
-- Indexes for table `queue_cutoff`
--
ALTER TABLE `queue_cutoff`
  ADD PRIMARY KEY (`qc_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `tellers`
--
ALTER TABLE `tellers`
  ADD PRIMARY KEY (`teller_id`);

--
-- Indexes for table `teller_breaks`
--
ALTER TABLE `teller_breaks`
  ADD PRIMARY KEY (`tb_id`),
  ADD KEY `FK__tellers_break` (`teller_id`);

--
-- Indexes for table `teller_logs`
--
ALTER TABLE `teller_logs`
  ADD PRIMARY KEY (`tl_id`),
  ADD KEY `FK__teller_logs` (`teller_id`);

--
-- Indexes for table `teller_services`
--
ALTER TABLE `teller_services`
  ADD PRIMARY KEY (`ts_id`),
  ADD UNIQUE KEY `my_unique_key` (`teller_id`,`service_id`),
  ADD KEY `teller_id` (`teller_id`),
  ADD KEY `service_id` (`service_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `costumer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `daily_services`
--
ALTER TABLE `daily_services`
  MODIFY `ds_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `queues`
--
ALTER TABLE `queues`
  MODIFY `queue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tellers`
--
ALTER TABLE `tellers`
  MODIFY `teller_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `teller_breaks`
--
ALTER TABLE `teller_breaks`
  MODIFY `tb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `teller_logs`
--
ALTER TABLE `teller_logs`
  MODIFY `tl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `teller_services`
--
ALTER TABLE `teller_services`
  MODIFY `ts_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `daily_services`
--
ALTER TABLE `daily_services`
  ADD CONSTRAINT `FK_service_daily_services` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`);

--
-- Constraints for table `histories`
--
ALTER TABLE `histories`
  ADD CONSTRAINT `FK_history_services` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`);

--
-- Constraints for table `queues`
--
ALTER TABLE `queues`
  ADD CONSTRAINT `FK__teller` FOREIGN KEY (`teller_id`) REFERENCES `tellers` (`teller_id`),
  ADD CONSTRAINT `FK_queue_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`costumer_id`),
  ADD CONSTRAINT `FK_queue_services` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`);

--
-- Constraints for table `teller_breaks`
--
ALTER TABLE `teller_breaks`
  ADD CONSTRAINT `FK__tellers_break` FOREIGN KEY (`teller_id`) REFERENCES `tellers` (`teller_id`);

--
-- Constraints for table `teller_logs`
--
ALTER TABLE `teller_logs`
  ADD CONSTRAINT `FK__teller_logs` FOREIGN KEY (`teller_id`) REFERENCES `tellers` (`teller_id`);

--
-- Constraints for table `teller_services`
--
ALTER TABLE `teller_services`
  ADD CONSTRAINT `FK__services` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`),
  ADD CONSTRAINT `FK__tellers` FOREIGN KEY (`teller_id`) REFERENCES `tellers` (`teller_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
