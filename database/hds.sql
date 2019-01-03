-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2019 at 10:04 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hds`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `groupId` int(11) NOT NULL,
  `groupName` varchar(55) NOT NULL,
  `groupValue` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`groupId`, `groupName`, `groupValue`) VALUES
(1, 'admin', 0),
(2, 'members', 0);

-- --------------------------------------------------------

--
-- Table structure for table `group_panel`
--

CREATE TABLE `group_panel` (
  `panelId` int(11) NOT NULL,
  `panelName` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `group_permissions`
--

CREATE TABLE `group_permissions` (
  `id_group` int(11) NOT NULL,
  `id_permission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_permissions`
--

INSERT INTO `group_permissions` (`id_group`, `id_permission`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(1, '::1', 'tertetertert', 1546331133);

-- --------------------------------------------------------

--
-- Table structure for table `permission_mst`
--

CREATE TABLE `permission_mst` (
  `permissionId` int(11) NOT NULL,
  `permissionName` varchar(255) NOT NULL,
  `status` enum('active','inActive','delete') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `activation_code` varchar(40) NOT NULL,
  `otp_verify` enum('0','1') NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `forgotten_password_code` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `status` enum('active','inActive','delete') NOT NULL,
  `remember_code` varchar(40) NOT NULL,
  `userType` enum('super_admin','sub_admin','employee','customer') NOT NULL DEFAULT 'customer',
  `dateAdded` datetime NOT NULL,
  `addedBy` int(11) DEFAULT NULL,
  `dateUpdated` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `ip_address` varchar(255) NOT NULL,
  `deviceType` enum('android','iPhone','web') NOT NULL,
  `deviceId` varchar(255) NOT NULL,
  `deviceToken` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `email`, `activation_code`, `otp_verify`, `mobile`, `password`, `forgotten_password_code`, `salt`, `status`, `remember_code`, `userType`, `dateAdded`, `addedBy`, `dateUpdated`, `updatedBy`, `ip_address`, `deviceType`, `deviceId`, `deviceToken`) VALUES
(1, 'superadmin@gmail.com', '', '0', '9999999999', '4e670dc4ca1e0a79cf663d8c8f8f49f1b871b27efe6e08a2e5493f7bfca9144edd5fb618e86d0f40c69d06b184d13dcb9aae2977bea4b3bcf3b0d9b4f06cfe38eJu0jDGYb1x3OZPtKcrpAJLBorquZ+W9Z8OGUBEMmNM=', '', '', 'active', '', 'super_admin', '2018-09-05 00:00:00', NULL, '2019-01-01 09:31:27', NULL, '', 'web', '', ''),
(2, 'user@gmail.com', '', '0', '7043432268', '44e903d6a8ecde2e33505f60fd26557dedc1018c1a81af7b16144e6bb418fea1a54f992e7d4c1f0e68ebd5ebb399c8a152c093ffbd290ca6d0b5f7b7eba78dfbOnf2PruHAY5c6zomy0akyTZm1d51/taNElGeOrGycAc=', '', '', 'active', '', '', '2018-12-01 07:28:02', NULL, '2018-12-01 09:58:57', NULL, '::1', 'web', '56645646546', '5675675677756756757567'),
(3, 'rmg@gmail.com', '', '0', '4455445454', 'd0569d989b9f53b49656e1c7384cf653235b02178b80558c16978f30d9c738a876e58742ab4071ef87c86916c9fa676db8162436ff8898672ba1d464a5ac31c4c6iCn0KPG2UyHIY2jJ6RjCuWjU/MimeK6jSXJ4ovZfY=', '', '', 'active', '', '', '2018-12-01 07:46:18', NULL, '2018-12-01 10:31:38', NULL, '::1', 'web', '5636345353455', 'dsf345553RTYTR534535353453');

-- --------------------------------------------------------

--
-- Table structure for table `user_details_mst`
--

CREATE TABLE `user_details_mst` (
  `userDetailsId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `serviceTypeId` bigint(20) DEFAULT NULL,
  `serviceId` varchar(255) DEFAULT '0',
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `gstNumber` varchar(200) DEFAULT NULL,
  `aadharcard_number` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `accountPoints` varchar(255) DEFAULT '0',
  `userImageName` varchar(255) DEFAULT NULL,
  `userImagePath` varchar(300) DEFAULT NULL,
  `rateCard` varchar(255) DEFAULT NULL,
  `aboutUs` longtext,
  `countryId` int(11) DEFAULT NULL,
  `stateId` int(11) DEFAULT NULL,
  `cityId` int(11) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lan` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `address2` text,
  `youtubeUrl` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details_mst`
--

INSERT INTO `user_details_mst` (`userDetailsId`, `userId`, `serviceTypeId`, `serviceId`, `fname`, `lname`, `gstNumber`, `aadharcard_number`, `experience`, `gender`, `accountPoints`, `userImageName`, `userImagePath`, `rateCard`, `aboutUs`, `countryId`, `stateId`, `cityId`, `lat`, `lan`, `address`, `address2`, `youtubeUrl`) VALUES
(1, 1, 0, '0', 'Admin', 'Admin', '', NULL, NULL, 'male', '0', NULL, '', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL,
'');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `groupId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `userId`, `groupId`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `userId` bigint(20) NOT NULL,
  `permissionId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_session`
--

CREATE TABLE `user_session` (
  `id` bigint(20) NOT NULL,
  `ipAddress` varchar(255) NOT NULL,
  `dateAdded` datetime NOT NULL,
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_token_mst`
--

CREATE TABLE `user_token_mst` (
  `userTokenId` bigint(20) NOT NULL,
  `user_token` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`groupId`);

--
-- Indexes for table `group_panel`
--
ALTER TABLE `group_panel`
  ADD PRIMARY KEY (`panelId`);

--
-- Indexes for table `group_permissions`
--
ALTER TABLE `group_permissions`
  ADD PRIMARY KEY (`id_group`,`id_permission`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_mst`
--
ALTER TABLE `permission_mst`
  ADD PRIMARY KEY (`permissionId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `user_details_mst`
--
ALTER TABLE `user_details_mst`
  ADD PRIMARY KEY (`userDetailsId`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD KEY `userId` (`userId`),
  ADD KEY `permissionId` (`permissionId`);

--
-- Indexes for table `user_session`
--
ALTER TABLE `user_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token_mst`
--
ALTER TABLE `user_token_mst`
  ADD PRIMARY KEY (`userTokenId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `groupId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `group_panel`
--
ALTER TABLE `group_panel`
  MODIFY `panelId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permission_mst`
--
ALTER TABLE `permission_mst`
  MODIFY `permissionId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_details_mst`
--
ALTER TABLE `user_details_mst`
  MODIFY `userDetailsId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_session`
--
ALTER TABLE `user_session`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_token_mst`
--
ALTER TABLE `user_token_mst`
  MODIFY `userTokenId` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
