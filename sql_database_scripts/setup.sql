-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 15, 2014 at 10:11 AM
-- Server version: 5.5.29
-- PHP Version: 5.4.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `forge_server_core`
--

-- --------------------------------------------------------

--
-- Table structure for table `fsc_account`
--

CREATE TABLE `fsc_account` (
  `fsc_account_id` int(11) NOT NULL AUTO_INCREMENT,
  `fsc_account_email` varchar(255) NOT NULL,
  `fsc_account_name` varchar(255) NOT NULL,
  `fsc_account_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fsc_account_id`),
  UNIQUE KEY `fsc_account_email` (`fsc_account_email`,`fsc_account_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fsc_acl`
--

CREATE TABLE `fsc_acl` (
  `fsc_acl_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`fsc_acl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fsc_group`
--

CREATE TABLE `fsc_group` (
  `fsc_group_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`fsc_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fsc_log`
--

CREATE TABLE `fsc_log` (
  `fsc_log` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`fsc_log`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fsc_rank`
--

CREATE TABLE `fsc_rank` (
  `fsc_rank_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`fsc_rank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mc_account`
--

CREATE TABLE `mc_account` (
  `mc_account_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Database Minecraft account ID',
  `mc_account_name` varchar(255) DEFAULT NULL,
  `mc_account_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mc_account_id`),
  UNIQUE KEY `mc_account_name` (`mc_account_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mc_account_ban`
--

CREATE TABLE `mc_account_ban` (
  `mc_account_ban_id` int(11) NOT NULL AUTO_INCREMENT,
  `mc_account_id` int(11) NOT NULL,
  `server_id` int(11) NOT NULL,
  `ban_by_mc_account_id` int(11) NOT NULL,
  `mc_account_ban_reason` varchar(255) NOT NULL,
  `mc_account_ban_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mc_account_ban_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mc_account_login`
--

CREATE TABLE `mc_account_login` (
  `mc_account_id` int(11) NOT NULL,
  `mc_account_login_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mc_account_login_ip_address` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mc_block_interaction_type`
--

CREATE TABLE `mc_block_interaction_type` (
  `mc_block_interaction_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `mc_block_interaction_type` varchar(255) NOT NULL,
  PRIMARY KEY (`mc_block_interaction_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mc_block_log`
--

CREATE TABLE `mc_block_log` (
  `mc_block_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `mc_server_id` int(11) NOT NULL,
  `mc_world_id` int(11) NOT NULL,
  `mc_account_id` int(11) NOT NULL,
  `mc_item_id` int(11) NOT NULL,
  `mc_block_log_item_qty` int(11) NOT NULL,
  `mc_block_log_cord_x` float NOT NULL,
  `mc_block_log_cord_y` int(11) NOT NULL,
  `mc_block_log_cord_z` float NOT NULL,
  `mc_interaction_type_id` int(11) NOT NULL,
  `mc_block_log_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mc_block_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mc_item`
--

CREATE TABLE `mc_item` (
  `mc_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `mc_item_name` varchar(50) NOT NULL,
  `mc_mod_id` int(11) NOT NULL,
  PRIMARY KEY (`mc_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mc_item_ban`
--

CREATE TABLE `mc_item_ban` (
  `mc_item_ban_id` int(11) NOT NULL AUTO_INCREMENT,
  `mc_item_id` int(11) NOT NULL,
  `ban_by_mc_account_id` int(11) NOT NULL,
  `server_id` int(11) NOT NULL,
  `ban_item_reason` varchar(255) NOT NULL,
  `ban_item_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mc_item_ban_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mc_mod`
--

CREATE TABLE `mc_mod` (
  `mc_mod_id` int(11) NOT NULL AUTO_INCREMENT,
  `mc_mod_name` varchar(255) NOT NULL,
  `mc_mod_version` varchar(50) NOT NULL,
  `mc_mod_wiki` varchar(255) NOT NULL,
  `mc_mod_path` varchar(255) NOT NULL,
  `mc_mod_change_log` blob NOT NULL,
  PRIMARY KEY (`mc_mod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mc_mod_pack`
--

CREATE TABLE `mc_mod_pack` (
  `mc_mod_pack_id` int(11) NOT NULL AUTO_INCREMENT,
  `mc_mod_pack_name` varchar(255) NOT NULL,
  `mc_mod_pack_version` varchar(25) NOT NULL,
  `mc_mod_pack_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mc_mod_pack_bitsync_full` varchar(255) NOT NULL,
  `mc_mod_pack_bitsync_readonly` varchar(255) NOT NULL,
  PRIMARY KEY (`mc_mod_pack_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mc_mod_to_mod_pack`
--

CREATE TABLE `mc_mod_to_mod_pack` (
  `mc_mod` int(11) NOT NULL,
  `mc_mod_pack` int(11) NOT NULL,
  `mc_mod_to_mod_pack_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mc_mod_to_version`
--

CREATE TABLE `mc_mod_to_version` (
  `mc_mod` int(11) NOT NULL,
  `mc_version` int(11) NOT NULL,
  `mc_mod_to_mc_version_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mc_permission`
--

CREATE TABLE `mc_permission` (
  `mc_permission_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`mc_permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mc_server`
--

CREATE TABLE `mc_server` (
  `mc_server_id` int(11) NOT NULL AUTO_INCREMENT,
  `mc_server_name` varchar(255) NOT NULL,
  `mc_server_ip` varchar(15) NOT NULL,
  `mc_server_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mc_server_active` tinyint(4) NOT NULL COMMENT '0 = Disabled, 1 = Active',
  `mc_server_key` varchar(26) NOT NULL,
  PRIMARY KEY (`mc_server_id`),
  UNIQUE KEY `mc_server_name` (`mc_server_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mc_server_to_mod`
--

CREATE TABLE `mc_server_to_mod` (
  `mc_server_id` int(11) NOT NULL,
  `mc_mod_id` int(11) NOT NULL,
  `mc_server_to_mod_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mc_server_to_modpack`
--

CREATE TABLE `mc_server_to_modpack` (
  `mc_server_id` int(11) NOT NULL,
  `mc_modpack_id` int(11) NOT NULL,
  `mc_server_to_mod_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mc_version`
--

CREATE TABLE `mc_version` (
  `mc_version_id` int(11) NOT NULL AUTO_INCREMENT,
  `mc_version_name` varchar(50) NOT NULL,
  `mc_version_number` varchar(15) NOT NULL,
  `mc_version_path` varchar(255) NOT NULL,
  PRIMARY KEY (`mc_version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mc_world`
--

CREATE TABLE `mc_world` (
  `mc_world_id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) NOT NULL,
  `mc_world_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mc_world_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
