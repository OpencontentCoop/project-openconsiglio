-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 27, 2018 at 04:25 PM
-- Server version: 5.7.23
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `openconsiglio`
--

-- --------------------------------------------------------

--
-- Table structure for table `ezapprove_items`
--

CREATE TABLE `ezapprove_items` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `workflow_process_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezbasket`
--

CREATE TABLE `ezbasket` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `session_id` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezbinaryfile`
--

CREATE TABLE `ezbinaryfile` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `download_count` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `original_filename` varchar(255) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezcobj_state`
--

CREATE TABLE `ezcobj_state` (
  `default_language_id` bigint(20) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `identifier` varchar(45) NOT NULL DEFAULT '',
  `language_mask` bigint(20) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezcobj_state`
--

INSERT INTO `ezcobj_state` (`default_language_id`, `group_id`, `id`, `identifier`, `language_mask`, `priority`) VALUES
(2, 2, 1, 'not_locked', 3, 0),
(2, 2, 2, 'locked', 3, 1),
(2, 3, 3, 'draft', 7, 0),
(2, 3, 4, 'pending', 7, 1),
(2, 3, 5, 'published', 7, 2),
(2, 3, 6, 'sent', 7, 3),
(2, 3, 7, 'in_progress', 7, 4),
(2, 3, 8, 'closed', 7, 5),
(2, 4, 9, 'proposal', 7, 0),
(2, 4, 10, 'pending', 7, 1),
(2, 4, 11, 'draft', 7, 2),
(2, 4, 12, 'published', 7, 3),
(2, 4, 13, 'in_progress', 7, 4),
(2, 4, 14, 'closed', 7, 5),
(2, 5, 15, 'consiglieri', 7, 0),
(2, 5, 16, 'referenti', 7, 1),
(2, 5, 17, 'pubblico', 7, 2),
(2, 6, 18, 'consiglieri', 7, 0),
(2, 6, 19, 'referenti', 7, 1),
(2, 7, 20, 'draft', 7, 0),
(2, 7, 21, 'wip', 7, 1),
(2, 7, 22, 'approved', 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ezcobj_state_group`
--

CREATE TABLE `ezcobj_state_group` (
  `default_language_id` bigint(20) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `identifier` varchar(45) NOT NULL DEFAULT '',
  `language_mask` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezcobj_state_group`
--

INSERT INTO `ezcobj_state_group` (`default_language_id`, `id`, `identifier`, `language_mask`) VALUES
(2, 2, 'ez_lock', 3),
(2, 3, 'seduta', 7),
(2, 4, 'punto', 7),
(2, 5, 'visibilita_allegato_seduta', 7),
(2, 6, 'visibilita_osservazione_seduta', 7),
(2, 7, 'verbale', 7);

-- --------------------------------------------------------

--
-- Table structure for table `ezcobj_state_group_language`
--

CREATE TABLE `ezcobj_state_group_language` (
  `contentobject_state_group_id` int(11) NOT NULL DEFAULT '0',
  `description` longtext NOT NULL,
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL DEFAULT '',
  `real_language_id` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezcobj_state_group_language`
--

INSERT INTO `ezcobj_state_group_language` (`contentobject_state_group_id`, `description`, `language_id`, `name`, `real_language_id`) VALUES
(2, '', 3, 'Lock', 2),
(3, 'Seduta', 3, 'Seduta', 2),
(3, 'Seduta', 4, 'Seduta', 4),
(4, 'Punto', 3, 'Punto', 2),
(4, 'Punto', 4, 'Punto', 4),
(5, 'Visibilita allegato seduta', 3, 'Visibilita allegato seduta', 2),
(5, 'Visibilita allegato seduta', 4, 'Visibilita allegato seduta', 4),
(6, 'Visibilita osservazione seduta', 3, 'Visibilita osservazione seduta', 2),
(6, 'Visibilita osservazione seduta', 4, 'Visibilita osservazione seduta', 4),
(7, 'Verbale', 3, 'Verbale', 2),
(7, 'Verbale', 4, 'Verbale', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ezcobj_state_language`
--

CREATE TABLE `ezcobj_state_language` (
  `contentobject_state_id` int(11) NOT NULL DEFAULT '0',
  `description` longtext NOT NULL,
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezcobj_state_language`
--

INSERT INTO `ezcobj_state_language` (`contentobject_state_id`, `description`, `language_id`, `name`) VALUES
(1, '', 3, 'Not locked'),
(2, '', 3, 'Locked'),
(3, 'Non visibile', 3, 'Non visibile'),
(3, 'Non visibile', 4, 'Non visibile'),
(4, 'Non confermata', 3, 'Non confermata'),
(4, 'Non confermata', 4, 'Non confermata'),
(5, 'Confermata', 3, 'Confermata'),
(5, 'Confermata', 4, 'Confermata'),
(6, 'Invio convocazione', 3, 'Invio convocazione'),
(6, 'Invio convocazione', 4, 'Invio convocazione'),
(7, 'In corso', 3, 'In corso'),
(7, 'In corso', 4, 'In corso'),
(8, 'Conclusa', 3, 'Conclusa'),
(8, 'Conclusa', 4, 'Conclusa'),
(9, 'Proposta', 3, 'Proposta'),
(9, 'Proposta', 4, 'Proposta'),
(10, 'In attesa di approvazione', 3, 'In attesa di approvazione'),
(10, 'In attesa di approvazione', 4, 'In attesa di approvazione'),
(11, 'Bozza', 3, 'Bozza'),
(11, 'Bozza', 4, 'Bozza'),
(12, 'Pubblicato', 3, 'Pubblicato'),
(12, 'Pubblicato', 4, 'Pubblicato'),
(13, 'In corso', 3, 'In corso'),
(13, 'In corso', 4, 'In corso'),
(14, 'Concluso', 3, 'Concluso'),
(14, 'Concluso', 4, 'Concluso'),
(15, 'Consiglieri', 3, 'Consiglieri'),
(15, 'Consiglieri', 4, 'Consiglieri'),
(16, 'Referenti all\'argomento', 3, 'Referenti all\'argomento'),
(16, 'Referenti all\'argomento', 4, 'Referenti all\'argomento'),
(17, 'Pubblico', 3, 'Pubblico'),
(17, 'Pubblico', 4, 'Pubblico'),
(18, 'Consiglieri', 3, 'Consiglieri'),
(18, 'Consiglieri', 4, 'Consiglieri'),
(19, 'Referenti all\'argomento', 3, 'Referenti all\'argomento'),
(19, 'Referenti all\'argomento', 4, 'Referenti all\'argomento'),
(20, 'Bozza', 3, 'Bozza'),
(20, 'Bozza', 4, 'Bozza'),
(21, 'In lavorazione', 3, 'In lavorazione'),
(21, 'In lavorazione', 4, 'In lavorazione'),
(22, 'Approvato', 3, 'Approvato'),
(22, 'Approvato', 4, 'Approvato');

-- --------------------------------------------------------

--
-- Table structure for table `ezcobj_state_link`
--

CREATE TABLE `ezcobj_state_link` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_state_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezcobj_state_link`
--

INSERT INTO `ezcobj_state_link` (`contentobject_id`, `contentobject_state_id`) VALUES
(4, 1),
(4, 3),
(4, 9),
(4, 15),
(4, 18),
(4, 20),
(10, 1),
(10, 3),
(10, 9),
(10, 15),
(10, 18),
(10, 20),
(11, 1),
(11, 3),
(11, 9),
(11, 15),
(11, 18),
(11, 20),
(12, 1),
(12, 3),
(12, 9),
(12, 15),
(12, 18),
(12, 20),
(14, 1),
(14, 3),
(14, 9),
(14, 15),
(14, 18),
(14, 20),
(41, 1),
(41, 3),
(41, 9),
(41, 15),
(41, 18),
(41, 20),
(42, 1),
(42, 3),
(42, 9),
(42, 15),
(42, 18),
(42, 20),
(45, 1),
(45, 3),
(45, 9),
(45, 15),
(45, 18),
(45, 20),
(49, 1),
(49, 3),
(49, 9),
(49, 15),
(49, 18),
(49, 20),
(50, 1),
(50, 3),
(50, 9),
(50, 15),
(50, 18),
(50, 20),
(51, 1),
(51, 3),
(51, 9),
(51, 15),
(51, 18),
(51, 20),
(52, 1),
(52, 3),
(52, 9),
(52, 15),
(52, 18),
(52, 20),
(54, 1),
(54, 3),
(54, 9),
(54, 15),
(54, 18),
(54, 20),
(56, 1),
(56, 3),
(56, 9),
(56, 15),
(56, 18),
(56, 20),
(57, 1),
(57, 3),
(57, 9),
(57, 15),
(57, 18),
(57, 20),
(60, 1),
(60, 3),
(60, 9),
(60, 15),
(60, 18),
(60, 20),
(61, 1),
(61, 3),
(61, 9),
(61, 15),
(61, 18),
(61, 20),
(62, 1),
(62, 3),
(62, 9),
(62, 15),
(62, 18),
(62, 20),
(63, 1),
(63, 3),
(63, 9),
(63, 15),
(63, 18),
(63, 20),
(64, 1),
(64, 3),
(64, 9),
(64, 15),
(64, 18),
(64, 20),
(65, 1),
(65, 3),
(65, 9),
(65, 15),
(65, 18),
(65, 20),
(66, 1),
(66, 3),
(66, 9),
(66, 15),
(66, 18),
(66, 20),
(67, 1),
(67, 3),
(67, 9),
(67, 15),
(67, 18),
(67, 20),
(68, 1),
(68, 3),
(68, 9),
(68, 15),
(68, 18),
(68, 20),
(69, 1),
(69, 3),
(69, 9),
(69, 15),
(69, 18),
(69, 20),
(70, 1),
(70, 3),
(70, 9),
(70, 15),
(70, 18),
(70, 20),
(71, 1),
(71, 3),
(71, 9),
(71, 15),
(71, 18),
(71, 20),
(72, 1),
(72, 3),
(72, 9),
(72, 15),
(72, 18),
(72, 20),
(73, 1),
(73, 3),
(73, 9),
(73, 15),
(73, 18),
(73, 20),
(74, 1),
(74, 3),
(74, 9),
(74, 15),
(74, 18),
(74, 20),
(75, 1),
(75, 3),
(75, 9),
(75, 15),
(75, 18),
(75, 20),
(76, 1),
(76, 3),
(76, 9),
(76, 15),
(76, 18),
(76, 20),
(77, 1),
(77, 3),
(77, 9),
(77, 15),
(77, 18),
(78, 1),
(78, 3),
(78, 9),
(78, 15),
(78, 18),
(79, 1),
(79, 3),
(79, 9),
(79, 15),
(79, 18),
(80, 1),
(80, 3),
(80, 9),
(80, 15),
(80, 18),
(81, 1),
(81, 3),
(81, 9),
(81, 15),
(81, 18),
(82, 1),
(82, 3),
(82, 9),
(82, 15),
(82, 18),
(83, 1),
(83, 3),
(83, 9),
(83, 15),
(83, 18),
(84, 1),
(84, 3),
(84, 9),
(84, 15),
(84, 18),
(85, 1),
(85, 3),
(85, 9),
(85, 15),
(85, 18),
(86, 1),
(86, 3),
(86, 9),
(86, 15),
(86, 18),
(87, 1),
(87, 3),
(87, 9),
(87, 15),
(87, 18),
(88, 1),
(88, 3),
(88, 9),
(88, 15),
(88, 18),
(89, 1),
(89, 3),
(89, 9),
(89, 15),
(89, 18),
(90, 1),
(90, 3),
(90, 9),
(90, 15),
(90, 18),
(91, 1),
(91, 3),
(91, 9),
(91, 15),
(91, 18),
(92, 1),
(92, 3),
(92, 9),
(92, 15),
(92, 18),
(93, 1),
(93, 3),
(93, 9),
(93, 15),
(93, 18),
(94, 1),
(94, 3),
(94, 9),
(94, 15),
(94, 18),
(95, 1),
(95, 3),
(95, 9),
(95, 15),
(95, 18),
(96, 1),
(96, 3),
(96, 9),
(96, 15),
(96, 18),
(97, 1),
(97, 3),
(97, 9),
(97, 15),
(97, 18),
(98, 1),
(98, 3),
(98, 9),
(98, 15),
(98, 18),
(99, 1),
(99, 3),
(99, 9),
(99, 15),
(99, 18),
(100, 1),
(100, 3),
(100, 9),
(100, 15),
(100, 18),
(101, 1),
(101, 3),
(101, 9),
(101, 15),
(101, 18),
(102, 1),
(102, 3),
(102, 9),
(102, 15),
(102, 18),
(103, 1),
(103, 3),
(103, 9),
(103, 15),
(103, 18),
(104, 1),
(104, 3),
(104, 9),
(104, 15),
(104, 18),
(105, 1),
(105, 3),
(105, 9),
(105, 15),
(105, 18),
(106, 1),
(106, 3),
(106, 9),
(106, 15),
(106, 18),
(107, 1),
(107, 3),
(107, 9),
(107, 15),
(107, 18),
(108, 1),
(108, 3),
(108, 9),
(108, 15),
(108, 18),
(109, 1),
(109, 3),
(109, 9),
(109, 15),
(109, 18),
(110, 1),
(110, 3),
(110, 9),
(110, 15),
(110, 18),
(111, 1),
(111, 3),
(111, 9),
(111, 15),
(111, 18),
(112, 1),
(112, 3),
(112, 9),
(112, 15),
(112, 18),
(113, 1),
(113, 3),
(113, 9),
(113, 15),
(113, 18),
(114, 1),
(114, 3),
(114, 9),
(114, 15),
(114, 18),
(115, 1),
(115, 3),
(115, 9),
(115, 15),
(115, 18),
(116, 1),
(116, 3),
(116, 9),
(116, 15),
(116, 18),
(117, 1),
(117, 3),
(117, 9),
(117, 15),
(117, 18),
(118, 1),
(118, 3),
(118, 9),
(118, 15),
(118, 18),
(119, 1),
(119, 3),
(119, 9),
(119, 15),
(119, 18),
(120, 1),
(120, 3),
(120, 9),
(120, 15),
(120, 18),
(121, 1),
(121, 3),
(121, 9),
(121, 15),
(121, 18),
(122, 1),
(122, 3),
(122, 9),
(122, 15),
(122, 18),
(123, 1),
(123, 3),
(123, 9),
(123, 15),
(123, 18),
(124, 1),
(124, 3),
(124, 9),
(124, 15),
(124, 18),
(125, 1),
(125, 3),
(125, 9),
(125, 15),
(125, 18),
(126, 1),
(126, 3),
(126, 9),
(126, 15),
(126, 18),
(127, 1),
(127, 3),
(127, 9),
(127, 15),
(127, 18),
(128, 1),
(128, 3),
(128, 9),
(128, 15),
(128, 18),
(129, 1),
(129, 3),
(129, 9),
(129, 15),
(129, 18),
(130, 1),
(130, 3),
(130, 9),
(130, 15),
(130, 18),
(131, 1),
(131, 3),
(131, 9),
(131, 15),
(131, 18),
(132, 1),
(132, 3),
(132, 9),
(132, 15),
(132, 18),
(133, 1),
(133, 3),
(133, 9),
(133, 15),
(133, 18),
(134, 1),
(134, 3),
(134, 9),
(134, 15),
(134, 18),
(154, 1),
(154, 3),
(154, 9),
(154, 15),
(154, 18),
(154, 20),
(155, 1),
(155, 3),
(155, 9),
(155, 15),
(155, 18),
(155, 20),
(156, 1),
(156, 3),
(156, 9),
(156, 15),
(156, 18),
(156, 20),
(157, 1),
(157, 3),
(157, 9),
(157, 15),
(157, 18),
(157, 20),
(158, 1),
(158, 3),
(158, 9),
(158, 15),
(158, 18),
(158, 20),
(159, 1),
(159, 3),
(159, 9),
(159, 15),
(159, 18),
(159, 20),
(160, 1),
(160, 3),
(160, 9),
(160, 15),
(160, 18),
(160, 20),
(161, 1),
(161, 3),
(161, 9),
(161, 15),
(161, 18),
(161, 20),
(162, 1),
(162, 3),
(162, 9),
(162, 15),
(162, 18),
(162, 20),
(163, 1),
(163, 3),
(163, 9),
(163, 15),
(163, 18),
(163, 20),
(166, 1),
(166, 3),
(166, 9),
(166, 15),
(166, 18),
(166, 20),
(171, 1),
(171, 3),
(171, 9),
(171, 15),
(171, 18),
(171, 20),
(172, 1),
(172, 3),
(172, 9),
(172, 15),
(172, 18),
(172, 20),
(173, 1),
(173, 3),
(173, 9),
(173, 15),
(173, 18),
(173, 20),
(174, 1),
(174, 3),
(174, 9),
(174, 15),
(174, 18),
(175, 1),
(175, 3),
(175, 9),
(175, 15),
(175, 18),
(176, 1),
(176, 3),
(176, 9),
(176, 15),
(176, 18),
(177, 1),
(177, 3),
(177, 9),
(177, 15),
(177, 18);

-- --------------------------------------------------------

--
-- Table structure for table `ezcollab_group`
--

CREATE TABLE `ezcollab_group` (
  `created` int(11) NOT NULL DEFAULT '0',
  `depth` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `is_open` int(11) NOT NULL DEFAULT '1',
  `modified` int(11) NOT NULL DEFAULT '0',
  `parent_group_id` int(11) NOT NULL DEFAULT '0',
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezcollab_item`
--

CREATE TABLE `ezcollab_item` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `data_float1` float NOT NULL DEFAULT '0',
  `data_float2` float NOT NULL DEFAULT '0',
  `data_float3` float NOT NULL DEFAULT '0',
  `data_int1` int(11) NOT NULL DEFAULT '0',
  `data_int2` int(11) NOT NULL DEFAULT '0',
  `data_int3` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `id` int(11) NOT NULL,
  `modified` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `type_identifier` varchar(40) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezcollab_item_group_link`
--

CREATE TABLE `ezcollab_item_group_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_read` int(11) NOT NULL DEFAULT '0',
  `last_read` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezcollab_item_message_link`
--

CREATE TABLE `ezcollab_item_message_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL DEFAULT '0',
  `message_type` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `participant_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezcollab_item_participant_link`
--

CREATE TABLE `ezcollab_item_participant_link` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_read` int(11) NOT NULL DEFAULT '0',
  `last_read` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `participant_id` int(11) NOT NULL DEFAULT '0',
  `participant_role` int(11) NOT NULL DEFAULT '1',
  `participant_type` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezcollab_item_status`
--

CREATE TABLE `ezcollab_item_status` (
  `collaboration_id` int(11) NOT NULL DEFAULT '0',
  `is_active` int(11) NOT NULL DEFAULT '1',
  `is_read` int(11) NOT NULL DEFAULT '0',
  `last_read` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezcollab_notification_rule`
--

CREATE TABLE `ezcollab_notification_rule` (
  `collab_identifier` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezcollab_profile`
--

CREATE TABLE `ezcollab_profile` (
  `created` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `id` int(11) NOT NULL,
  `main_group` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezcollab_simple_message`
--

CREATE TABLE `ezcollab_simple_message` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `data_float1` float NOT NULL DEFAULT '0',
  `data_float2` float NOT NULL DEFAULT '0',
  `data_float3` float NOT NULL DEFAULT '0',
  `data_int1` int(11) NOT NULL DEFAULT '0',
  `data_int2` int(11) NOT NULL DEFAULT '0',
  `data_int3` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `id` int(11) NOT NULL,
  `message_type` varchar(40) NOT NULL DEFAULT '',
  `modified` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezcontentbrowsebookmark`
--

CREATE TABLE `ezcontentbrowsebookmark` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezcontentbrowserecent`
--

CREATE TABLE `ezcontentbrowserecent` (
  `created` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezcontentbrowserecent`
--

INSERT INTO `ezcontentbrowserecent` (`created`, `id`, `name`, `node_id`, `user_id`) VALUES
(1537996701, 1, 'eZ Publish', 2, 14),
(1537996702, 2, 'Users', 5, 14),
(1538001233, 3, 'organo', 69, 14),
(1538001295, 4, 'seduta', 62, 14);

-- --------------------------------------------------------

--
-- Table structure for table `ezcontentclass`
--

CREATE TABLE `ezcontentclass` (
  `always_available` int(11) NOT NULL DEFAULT '0',
  `contentobject_name` varchar(255) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL DEFAULT '',
  `initial_language_id` bigint(20) NOT NULL DEFAULT '0',
  `is_container` int(11) NOT NULL DEFAULT '0',
  `language_mask` bigint(20) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `serialized_description_list` longtext,
  `serialized_name_list` longtext,
  `sort_field` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '1',
  `url_alias_name` varchar(255) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezcontentclass`
--

INSERT INTO `ezcontentclass` (`always_available`, `contentobject_name`, `created`, `creator_id`, `id`, `identifier`, `initial_language_id`, `is_container`, `language_mask`, `modified`, `modifier_id`, `remote_id`, `serialized_description_list`, `serialized_name_list`, `sort_field`, `sort_order`, `url_alias_name`, `version`) VALUES
(1, '<short_name|name>', 1024392098, 14, 1, 'folder', 2, 1, 3, 1082454875, 14, 'a3d405b81be900468eb153d774f4f0d2', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:6:\"Folder\";}', 1, 1, '', 0),
(1, '<name>', 1024392098, 14, 3, 'user_group', 2, 1, 3, 1048494743, 14, '25b4268cdcd01921b808a0d854b877ef', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:10:\"User group\";}', 1, 1, '', 0),
(1, '<cognome> <nome>', 1024392098, 14, 4, 'user', 2, 0, 3, 1538037818, 14, '40faa822edc579b02c25f6bb7beec3ad', 'a:3:{i:0;s:0:\"\";s:16:\"always-available\";b:0;s:6:\"ita-IT\";s:0:\"\";}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:4:\"User\";}', 1, 1, '', 0),
(1, '<name>', 1081858024, 14, 14, 'common_ini_settings', 2, 0, 3, 1081858024, 14, 'ffedf2e73b1ea0c3e630e42e2db9c900', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:19:\"Common ini settings\";}', 1, 1, '', 0),
(1, '<title>', 1081858045, 14, 15, 'template_look', 2, 0, 3, 1081858045, 14, '59b43cd9feaaf0e45ac974fb4bbd3f92', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:13:\"Template look\";}', 1, 1, '', 0),
(0, '<name>', 1537996699, 14, 23, 'landing_page', 4, 1, 5, 1537996699, 14, 'e36c458e3e4a81298a0945f53a2c81f4', 'a:1:{s:6:\"eng-GB\";s:0:\"\";}', 'a:2:{s:6:\"eng-GB\";s:12:\"Landing Page\";s:16:\"always-available\";s:6:\"eng-GB\";}', 1, 1, '', 0),
(0, '<name>', 1537996699, 14, 26, 'file', 4, 0, 5, 1538058265, 14, '637d58bfddf164627bdfd265733280a0', 'a:1:{s:6:\"eng-GB\";s:0:\"\";}', 'a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}', 1, 1, '', 0),
(0, '<name>', 1537996699, 14, 27, 'image', 4, 0, 5, 1537996699, 14, 'f6df12aa74e36230eb675f364fccd25a', 'a:1:{s:6:\"eng-GB\";s:0:\"\";}', 'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}', 1, 1, '', 0),
(0, '<name>', 1537996699, 14, 28, 'link', 4, 0, 5, 1537996699, 14, '74ec6507063150bc813549b22534ad48', 'a:0:{}', 'a:2:{s:6:\"eng-GB\";s:4:\"Link\";s:16:\"always-available\";s:6:\"eng-GB\";}', 1, 1, '', 0),
(0, '<title>', 1537996699, 14, 33, 'event', 4, 0, 5, 1538058265, 14, '563cb5edc2adfd2b240efa456c81525f', 'a:1:{s:6:\"eng-GB\";s:0:\"\";}', 'a:2:{s:6:\"eng-GB\";s:5:\"Event\";s:16:\"always-available\";s:6:\"eng-GB\";}', 1, 1, '', 0),
(0, '<name>', 1537996699, 14, 37, 'video', 4, 0, 5, 1537996699, 14, 'b38417e8194fb8f893ca918d297b4fa8', 'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}', 'a:2:{s:6:\"eng-GB\";s:5:\"Video\";s:16:\"always-available\";s:6:\"eng-GB\";}', 1, 1, '', 0),
(0, '<name>', 1537999116, 14, 40, 'allegato_seduta', 0, 0, 3, 1538058264, 14, '510ec8eeedba3828fb0aca2aaaa4751b', 'a:1:{s:6:\"ita-IT\";s:76:\"Documenti allegati ai punti dell\'ordine del giorno delle sedute di consiglio\";}', 'a:2:{s:16:\"always-available\";s:16:\"always-available\";s:6:\"ita-IT\";s:15:\"Allegato seduta\";}', 1, 1, '', 0),
(1, '<short_name|name>', 1537999116, 14, 41, 'openpa_consiglio_collaboration_area', 2, 1, 3, 1538058264, 14, '8be527f74c85005188e39e5b424341bb', 'a:3:{i:0;s:0:\"\";s:16:\"always-available\";b:0;s:6:\"ita-IT\";s:0:\"\";}', 'a:2:{s:6:\"ita-IT\";s:18:\"Area collaborativa\";s:16:\"always-available\";s:6:\"ita-IT\";}', 9, 1, '', 0),
(1, '<short_name|name>', 1537999116, 14, 42, 'openpa_consiglio_collaboration_room', 2, 1, 3, 1538058264, 14, '2a0684c183f20ec7c7cede32c6e5df03', 'a:3:{i:0;s:0:\"\";s:16:\"always-available\";b:0;s:6:\"ita-IT\";s:0:\"\";}', 'a:2:{s:6:\"ita-IT\";s:29:\"Tematica (area collaborativa)\";s:16:\"always-available\";s:6:\"ita-IT\";}', 9, 1, '', 0),
(0, '<subject>', 1537999117, 14, 43, 'openpa_consiglio_collaboration_comment', 2, 0, 3, 1538058264, 14, '9c6a20696f3fe00e02077d7d58fb27ab', 'a:1:{s:6:\"ita-IT\";s:0:\"\";}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:29:\"Commento (area collaborativa)\";}', 1, 1, '', 0),
(0, '<subject>', 1537999117, 14, 44, 'openpa_consiglio_collaboration_file', 2, 0, 3, 1538058264, 14, '799f2504fc17c6dd80434104f856e161', 'a:1:{s:6:\"ita-IT\";s:0:\"\";}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:30:\"Documento (area collaborativa)\";}', 1, 1, '', 0),
(0, '<seduta>', 1537999117, 14, 45, 'convocazione_seduta', 2, 0, 3, 1538058264, 14, 'a8f1c42aa104ced59420f54dcd6c6550', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:24:\"Convocazione alla seduta\";s:16:\"always-available\";s:6:\"ita-IT\";}', 1, 1, '', 0),
(1, '<titolo> <nome> <cognome>', 1537999118, 14, 46, 'invitato', 2, 1, 3, 1538058264, 14, '57bf4c193e39e9aaf992c0d74b479c28', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:8:\"Invitato\";s:16:\"always-available\";s:6:\"ita-IT\";}', 9, 1, '', 0),
(0, '<protocollo> <object>: <user>', 1537999118, 14, 47, 'invito', 2, 0, 3, 1538058264, 14, 'dbf003ec1d2a99544a32f8cff1bb4c9a', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:6:\"Invito\";s:16:\"always-available\";s:6:\"ita-IT\";}', 1, 1, '', 0),
(0, '<descrizione>', 1537999118, 14, 48, 'materia', 2, 0, 3, 1538058264, 14, '9af20f13cff731137c54700cbb7d4ca0', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:7:\"Materia\";s:16:\"always-available\";s:6:\"ita-IT\";}', 1, 1, '', 0),
(0, '<messaggio>', 1537999119, 14, 49, 'osservazione', 2, 0, 3, 1538058264, 14, '642a9cb61fecdb2dce5de8b65ce4f2e1', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:12:\"Osservazione\";s:16:\"always-available\";s:6:\"ita-IT\";}', 1, 1, '', 0),
(1, 'Punto <n_punto>', 1537999119, 14, 50, 'punto', 2, 1, 3, 1538058264, 14, '7660918cf132af1d327be0fe658592d3', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:27:\"Punto all\'ordine del giorno\";s:16:\"always-available\";s:6:\"ita-IT\";}', 1, 1, '', 0),
(0, 'Seduta di <organo> di <data>', 1537999120, 14, 51, 'seduta', 2, 1, 3, 1538058264, 14, '00e37c9a2928a6f63d124a9e21dabb0d', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:6:\"Seduta\";s:16:\"always-available\";s:6:\"ita-IT\";}', 9, 1, '', 0),
(1, '<short_text>', 1537999120, 14, 52, 'votazione', 2, 0, 3, 1538058265, 14, '8e59cdf9a3bc6680a221fcbc52eac6d0', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:9:\"Votazione\";s:16:\"always-available\";s:6:\"ita-IT\";}', 1, 1, '', 0),
(1, '<titolo>', 1537999120, 14, 53, 'organo_sociale', 2, 1, 3, 1538058265, 14, 'a4c3b05cafbebf434ee8233060e2e9c2', 'a:1:{s:6:\"ita-IT\";s:0:\"\";}', 'a:2:{s:6:\"ita-IT\";s:14:\"Organo Sociale\";s:16:\"always-available\";s:6:\"ita-IT\";}', 9, 1, '', 0),
(0, '<description>', 1537999121, 14, 54, 'rendiconto_spese', 2, 0, 3, 1538058265, 14, '0152f1ca501be1b3f9a74fbf7f641543', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:16:\"Rendiconto spese\";s:16:\"always-available\";s:6:\"ita-IT\";}', 1, 1, '', 0),
(1, '<oggetto>', 1537999121, 14, 55, 'proposta_punto', 2, 1, 3, 1538058265, 14, '307a0b06f8b6e886ee2afd029db2834f', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:39:\"Proposta di punto all\'ordine del giorno\";s:16:\"always-available\";s:6:\"ita-IT\";}', 1, 1, '', 0),
(0, 'Verbale della <seduta>', 1538054133, 14, 56, 'verbale', 2, 0, 3, 1538058265, 14, '10cac28d2ef151520d0a942700572bcd', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:7:\"Verbale\";s:16:\"always-available\";s:6:\"ita-IT\";}', 1, 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ezcontentclassgroup`
--

CREATE TABLE `ezcontentclassgroup` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezcontentclassgroup`
--

INSERT INTO `ezcontentclassgroup` (`created`, `creator_id`, `id`, `modified`, `modifier_id`, `name`) VALUES
(1031216928, 14, 1, 1033922106, 14, 'Content'),
(1031216941, 14, 2, 1033922113, 14, 'Users'),
(1032009743, 14, 3, 1033922120, 14, 'Media'),
(1081858024, 14, 4, 1081858024, 14, 'Setup'),
(1537999116, 14, 14, 1537999116, 14, 'OpenConsiglio');

-- --------------------------------------------------------

--
-- Table structure for table `ezcontentclass_attribute`
--

CREATE TABLE `ezcontentclass_attribute` (
  `can_translate` int(11) DEFAULT '1',
  `category` varchar(25) NOT NULL DEFAULT '',
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `data_float1` double DEFAULT NULL,
  `data_float2` double DEFAULT NULL,
  `data_float3` double DEFAULT NULL,
  `data_float4` double DEFAULT NULL,
  `data_int1` int(11) DEFAULT NULL,
  `data_int2` int(11) DEFAULT NULL,
  `data_int3` int(11) DEFAULT NULL,
  `data_int4` int(11) DEFAULT NULL,
  `data_text1` varchar(50) DEFAULT NULL,
  `data_text2` varchar(50) DEFAULT NULL,
  `data_text3` varchar(50) DEFAULT NULL,
  `data_text4` varchar(255) DEFAULT NULL,
  `data_text5` longtext,
  `data_type_string` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL DEFAULT '',
  `is_information_collector` int(11) NOT NULL DEFAULT '0',
  `is_required` int(11) NOT NULL DEFAULT '0',
  `is_searchable` int(11) NOT NULL DEFAULT '0',
  `placement` int(11) NOT NULL DEFAULT '0',
  `serialized_data_text` longtext,
  `serialized_description_list` longtext,
  `serialized_name_list` longtext NOT NULL,
  `version` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezcontentclass_attribute`
--

INSERT INTO `ezcontentclass_attribute` (`can_translate`, `category`, `contentclass_id`, `data_float1`, `data_float2`, `data_float3`, `data_float4`, `data_int1`, `data_int2`, `data_int3`, `data_int4`, `data_text1`, `data_text2`, `data_text3`, `data_text4`, `data_text5`, `data_type_string`, `id`, `identifier`, `is_information_collector`, `is_required`, `is_searchable`, `placement`, `serialized_data_text`, `serialized_description_list`, `serialized_name_list`, `version`) VALUES
(1, '', 1, 0, 0, 0, 0, 255, 0, 0, 0, 'Folder', '', '', '', '', 'ezstring', 4, 'name', 0, 1, 1, 1, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:4:\"Name\";}', 0),
(1, '', 3, 0, 0, 0, 0, 255, 0, 0, 0, '', '', '', '', '', 'ezstring', 6, 'name', 0, 1, 1, 1, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:4:\"Name\";}', 0),
(1, '', 3, 0, 0, 0, 0, 255, 0, 0, 0, '', '', '', '', '', 'ezstring', 7, 'description', 0, 0, 1, 2, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:11:\"Description\";}', 0),
(1, '', 4, 0, 0, 0, 0, 255, 0, 0, 0, '', '', '', '', '', 'ezstring', 8, 'nome', 0, 1, 1, 1, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:3:{i:0;s:0:\"\";s:16:\"always-available\";b:0;s:6:\"ita-IT\";s:0:\"\";}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:4:\"Nome\";}', 0),
(1, '', 4, 0, 0, 0, 0, 255, 0, 0, 0, '', '', '', '', '', 'ezstring', 9, 'cognome', 0, 1, 1, 2, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:3:{i:0;s:0:\"\";s:16:\"always-available\";b:0;s:6:\"ita-IT\";s:0:\"\";}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:7:\"Cognome\";}', 0),
(0, '', 4, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezuser', 12, 'user_account', 0, 1, 1, 3, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:3:{i:0;s:0:\"\";s:16:\"always-available\";b:0;s:6:\"ita-IT\";s:0:\"\";}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:12:\"User account\";}', 0),
(1, '', 1, 0, 0, 0, 0, 5, 0, 0, 0, '', '', '', '', '', 'ezxmltext', 119, 'short_description', 0, 0, 1, 3, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:7:\"Summary\";}', 0),
(1, '', 1, 0, 0, 0, 0, 100, 0, 0, 0, '', '', '', '', '', 'ezstring', 155, 'short_name', 0, 0, 1, 2, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:10:\"Short name\";}', 0),
(1, '', 1, 0, 0, 0, 0, 20, 0, 0, 0, '', '', '', '', '', 'ezxmltext', 156, 'description', 0, 0, 1, 4, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:11:\"Description\";}', 0),
(0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', '', '', 'ezboolean', 158, 'show_children', 0, 0, 0, 5, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:17:\"Display sub items\";}', 0),
(1, '', 14, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 159, 'name', 0, 0, 1, 1, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:4:\"Name\";}', 0),
(0, '', 14, 0, 0, 0, 0, 1, 0, 0, 0, 'site.ini', 'SiteSettings', 'IndexPage', '', 'override;user;admin;demo', 'ezinisetting', 160, 'indexpage', 0, 0, 0, 2, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:10:\"Index Page\";}', 0),
(0, '', 14, 0, 0, 0, 0, 1, 0, 0, 0, 'site.ini', 'SiteSettings', 'DefaultPage', '', 'override;user;admin;demo', 'ezinisetting', 161, 'defaultpage', 0, 0, 0, 3, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:12:\"Default Page\";}', 0),
(0, '', 14, 0, 0, 0, 0, 2, 0, 0, 0, 'site.ini', 'DebugSettings', 'DebugOutput', '', 'override;user;admin;demo', 'ezinisetting', 162, 'debugoutput', 0, 0, 0, 4, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:12:\"Debug Output\";}', 0),
(0, '', 14, 0, 0, 0, 0, 2, 0, 0, 0, 'site.ini', 'DebugSettings', 'DebugByIP', '', 'override;user;admin;demo', 'ezinisetting', 163, 'debugbyip', 0, 0, 0, 5, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:11:\"Debug By IP\";}', 0),
(0, '', 14, 0, 0, 0, 0, 6, 0, 0, 0, 'site.ini', 'DebugSettings', 'DebugIPList', '', 'override;user;admin;demo', 'ezinisetting', 164, 'debugiplist', 0, 0, 0, 6, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:13:\"Debug IP List\";}', 0),
(0, '', 14, 0, 0, 0, 0, 2, 0, 0, 0, 'site.ini', 'DebugSettings', 'DebugRedirection', '', 'override;user;admin;demo', 'ezinisetting', 165, 'debugredirection', 0, 0, 0, 7, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:17:\"Debug Redirection\";}', 0),
(0, '', 14, 0, 0, 0, 0, 2, 0, 0, 0, 'site.ini', 'ContentSettings', 'ViewCaching', '', 'override;user;admin;demo', 'ezinisetting', 166, 'viewcaching', 0, 0, 0, 8, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:12:\"View Caching\";}', 0),
(0, '', 14, 0, 0, 0, 0, 2, 0, 0, 0, 'site.ini', 'TemplateSettings', 'TemplateCache', '', 'override;user;admin;demo', 'ezinisetting', 167, 'templatecache', 0, 0, 0, 9, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:14:\"Template Cache\";}', 0),
(0, '', 14, 0, 0, 0, 0, 2, 0, 0, 0, 'site.ini', 'TemplateSettings', 'TemplateCompile', '', 'override;user;admin;demo', 'ezinisetting', 168, 'templatecompile', 0, 0, 0, 10, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:16:\"Template Compile\";}', 0),
(0, '', 14, 0, 0, 0, 0, 6, 0, 0, 0, 'image.ini', 'small', 'Filters', '', 'override;user;admin;demo', 'ezinisetting', 169, 'imagesmall', 0, 0, 0, 11, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:16:\"Image Small Size\";}', 0),
(0, '', 14, 0, 0, 0, 0, 6, 0, 0, 0, 'image.ini', 'medium', 'Filters', '', 'override;user;admin;demo', 'ezinisetting', 170, 'imagemedium', 0, 0, 0, 12, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:17:\"Image Medium Size\";}', 0),
(0, '', 14, 0, 0, 0, 0, 6, 0, 0, 0, 'image.ini', 'large', 'Filters', '', 'override;user;admin;demo', 'ezinisetting', 171, 'imagelarge', 0, 0, 0, 13, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:16:\"Image Large Size\";}', 0),
(0, '', 15, 0, 0, 0, 0, 1, 0, 0, 0, 'site.ini', 'SiteSettings', 'SiteName', '', 'override;user;admin;demo', 'ezinisetting', 172, 'title', 0, 0, 0, 1, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:5:\"Title\";}', 0),
(0, '', 15, 0, 0, 0, 0, 6, 0, 0, 0, 'site.ini', 'SiteSettings', 'MetaDataArray', '', 'override;user;admin;demo', 'ezinisetting', 173, 'meta_data', 0, 0, 0, 2, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:9:\"Meta data\";}', 0),
(1, '', 15, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezimage', 174, 'image', 0, 0, 0, 3, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:5:\"Image\";}', 0),
(1, '', 15, 0, 0, 0, 0, 0, 0, 0, 0, 'sitestyle', '', '', '', '', 'ezpackage', 175, 'sitestyle', 0, 0, 0, 4, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:9:\"Sitestyle\";}', 0),
(0, '', 15, 0, 0, 0, 0, 1, 0, 0, 0, 'site.ini', 'MailSettings', 'AdminEmail', '', 'override;user;admin;demo', 'ezinisetting', 177, 'email', 0, 0, 0, 6, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:5:\"Email\";}', 0),
(0, '', 15, 0, 0, 0, 0, 1, 0, 0, 0, 'site.ini', 'SiteSettings', 'SiteURL', '', 'override;user;admin;demo', 'ezinisetting', 178, 'siteurl', 0, 0, 0, 7, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:8:\"Site URL\";}', 0),
(1, '', 4, 0, 0, 0, 0, 1, 0, 0, 0, '', '', '', '', '', 'ezimage', 180, 'image', 0, 0, 0, 4, 'a:2:{i:0;s:0:\"\";s:16:\"always-available\";b:0;}', 'a:3:{i:0;s:0:\"\";s:16:\"always-available\";b:0;s:6:\"ita-IT\";s:0:\"\";}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:10:\"Fotografia\";}', 0),
(1, '', 23, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 230, 'name', 0, 1, 1, 1, 'a:0:{}', 'a:1:{s:6:\"eng-GB\";s:0:\"\";}', 'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}', 0),
(1, '', 23, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezpage', 231, 'page', 0, 0, 0, 2, 'a:0:{}', 'a:1:{s:6:\"eng-GB\";s:0:\"\";}', 'a:2:{s:6:\"eng-GB\";s:6:\"Layout\";s:16:\"always-available\";s:6:\"eng-GB\";}', 0),
(1, '', 26, 0, 0, 0, 0, 0, 0, 0, 0, 'New file', '', '', '', '', 'ezstring', 240, 'name', 0, 1, 1, 1, 'a:0:{}', 'a:1:{s:6:\"eng-GB\";s:0:\"\";}', 'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}', 0),
(1, '', 26, 0, 0, 0, 0, 10, 0, 0, 0, '', '', '', '', '', 'ezxmltext', 241, 'description', 0, 0, 1, 2, 'a:0:{}', 'a:1:{s:6:\"eng-GB\";s:0:\"\";}', 'a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}', 0),
(1, '', 26, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezbinaryfile', 242, 'file', 0, 1, 0, 3, 'a:0:{}', 'a:1:{s:6:\"eng-GB\";s:0:\"\";}', 'a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}', 0),
(1, '', 27, 0, 0, 0, 0, 150, 0, 0, 0, '', '', '', '', '', 'ezstring', 245, 'name', 0, 1, 1, 1, 'a:0:{}', 'a:1:{s:6:\"eng-GB\";s:0:\"\";}', 'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}', 0),
(1, '', 27, 0, 0, 0, 0, 10, 0, 0, 0, '', '', '', '', '', 'ezxmltext', 246, 'caption', 0, 0, 1, 2, 'a:0:{}', 'a:1:{s:6:\"eng-GB\";s:0:\"\";}', 'a:2:{s:6:\"eng-GB\";s:7:\"Caption\";s:16:\"always-available\";s:6:\"eng-GB\";}', 0),
(1, '', 27, 0, 0, 0, 0, 2, 0, 0, 0, '', '', '', '', '', 'ezimage', 247, 'image', 0, 0, 0, 3, 'a:0:{}', 'a:1:{s:6:\"eng-GB\";s:0:\"\";}', 'a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}', 0),
(1, '', 27, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezsrrating', 248, 'star_rating', 0, 0, 1, 4, 'a:0:{}', 'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}', 'a:2:{s:6:\"eng-GB\";s:11:\"Star Rating\";s:16:\"always-available\";s:6:\"eng-GB\";}', 0),
(1, '', 27, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezkeyword', 249, 'tags', 0, 0, 1, 5, 'a:0:{}', 'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}', 'a:2:{s:6:\"eng-GB\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"eng-GB\";}', 0),
(1, '', 28, 0, 0, 0, 0, 255, 0, 0, 0, '', '', '', '', '', 'ezstring', 250, 'name', 0, 1, 1, 1, 'a:0:{}', 'a:0:{}', 'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}', 0),
(1, '', 28, 0, 0, 0, 0, 20, 0, 0, 0, '', '', '', '', '', 'ezxmltext', 251, 'description', 0, 0, 1, 2, 'a:0:{}', 'a:0:{}', 'a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}', 0),
(1, '', 28, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezurl', 252, 'location', 0, 0, 0, 3, 'a:0:{}', 'a:0:{}', 'a:2:{s:6:\"eng-GB\";s:8:\"Location\";s:16:\"always-available\";s:6:\"eng-GB\";}', 0),
(1, '', 28, 0, 0, 0, 0, 0, 0, 1, 0, '', '', '', '', '', 'ezboolean', 253, 'open_in_new_window', 0, 0, 1, 4, 'a:0:{}', 'a:0:{}', 'a:2:{s:6:\"eng-GB\";s:18:\"Open in new window\";s:16:\"always-available\";s:6:\"eng-GB\";}', 0),
(1, '', 33, 0, 0, 0, 0, 55, 0, 0, 0, '', '', '', '', '', 'ezstring', 267, 'title', 0, 0, 1, 1, 'a:0:{}', 'a:1:{s:6:\"eng-GB\";s:0:\"\";}', 'a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}', 0),
(1, '', 33, 0, 0, 0, 0, 10, 0, 0, 0, '', '', '', '', '', 'ezxmltext', 269, 'text', 0, 0, 1, 2, 'a:0:{}', 'a:1:{s:6:\"eng-GB\";s:0:\"\";}', 'a:2:{s:6:\"eng-GB\";s:4:\"Text\";s:16:\"always-available\";s:6:\"eng-GB\";}', 0),
(0, '', 33, 0, 0, 0, 0, 1, 0, 0, 0, '', '', '', '', '', 'ezdatetime', 271, 'from_time', 0, 1, 1, 3, 'a:0:{}', 'a:1:{s:6:\"eng-GB\";s:0:\"\";}', 'a:2:{s:6:\"eng-GB\";s:9:\"From Time\";s:16:\"always-available\";s:6:\"eng-GB\";}', 0),
(0, '', 33, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezdatetime', 272, 'to_time', 0, 0, 1, 4, 'a:0:{}', 'a:1:{s:6:\"eng-GB\";s:0:\"\";}', 'a:2:{s:6:\"eng-GB\";s:7:\"To Time\";s:16:\"always-available\";s:6:\"eng-GB\";}', 0),
(1, '', 37, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 283, 'name', 0, 0, 1, 1, 'a:0:{}', 'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}', 'a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}', 0),
(1, '', 37, 0, 0, 0, 0, 10, 0, 0, 0, '', '', '', '', '', 'ezxmltext', 284, 'caption', 0, 0, 1, 2, 'a:0:{}', 'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}', 'a:2:{s:6:\"eng-GB\";s:7:\"Caption\";s:16:\"always-available\";s:6:\"eng-GB\";}', 0),
(1, '', 37, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezbinaryfile', 285, 'file', 0, 0, 1, 3, 'a:0:{}', 'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}', 'a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}', 0),
(1, '', 37, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezsrrating', 286, 'star_rating', 0, 0, 1, 4, 'a:0:{}', 'a:2:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";}', 'a:2:{s:6:\"eng-GB\";s:11:\"Star Rating\";s:16:\"always-available\";s:6:\"eng-GB\";}', 0),
(1, '', 15, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezurl', 296, 'site_map_url', 0, 0, 0, 8, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:12:\"Site map URL\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 15, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezurl', 297, 'tag_cloud_url', 0, 0, 0, 9, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:13:\"Tag Cloud URL\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 15, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 298, 'login_label', 0, 0, 0, 10, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:13:\"Login (label)\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 15, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 299, 'logout_label', 0, 0, 0, 11, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:14:\"Logout (label)\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 15, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 300, 'my_profile_label', 0, 0, 0, 12, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:18:\"My profile (label)\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 15, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 301, 'register_user_label', 0, 0, 0, 13, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:25:\"Register new user (label)\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 15, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 302, 'rss_feed', 0, 0, 0, 14, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:8:\"RSS feed\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 15, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 303, 'shopping_basket_label', 0, 0, 0, 15, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:23:\"Shopping basket (label)\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 15, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 304, 'site_settings_label', 0, 0, 0, 16, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:21:\"Site settings (label)\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 15, 0, 0, 0, 0, 10, 0, 0, 0, '', '', '', '', '', 'eztext', 305, 'footer_text', 0, 0, 0, 17, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:11:\"Footer text\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 15, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezboolean', 306, 'hide_powered_by', 0, 0, 0, 18, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:17:\"Hide \"Powered by\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 15, 0, 0, 0, 0, 10, 0, 0, 0, '', '', '', '', '', 'eztext', 307, 'footer_script', 0, 0, 0, 19, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:17:\"Footer Javascript\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezpage', 308, 'call_for_action', 0, 0, 0, 6, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:15:\"Call For Action\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezkeyword', 309, 'tags', 0, 0, 0, 7, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:4:\"Tags\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 40, 0, 0, 0, 0, 0, 0, 0, 0, 'New file', '', '', '', '', 'ezstring', 310, 'name', 0, 1, 0, 1, 'a:0:{}', 'a:1:{s:6:\"ita-IT\";s:0:\"\";}', 'a:2:{s:16:\"always-available\";s:16:\"always-available\";s:6:\"ita-IT\";s:13:\"Nome del file\";}', 0),
(1, 'hidden', 40, 0, 0, 0, 0, 10, 0, 0, 0, '', '', '', '', '', 'ezxmltext', 311, 'description', 0, 0, 0, 2, 'a:0:{}', 'a:1:{s:6:\"ita-IT\";s:0:\"\";}', 'a:2:{s:16:\"always-available\";s:16:\"always-available\";s:6:\"ita-IT\";s:11:\"Descrizione\";}', 0),
(1, '', 40, 0, 0, 0, 0, 80, 0, 0, 0, '', '', '', '', '', 'ezbinaryfile', 312, 'file', 0, 1, 0, 3, 'a:0:{}', 'a:1:{s:6:\"ita-IT\";s:0:\"\";}', 'a:2:{s:16:\"always-available\";s:16:\"always-available\";s:6:\"ita-IT\";s:4:\"File\";}', 0),
(1, 'hidden', 40, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezkeyword', 313, 'tags', 0, 0, 0, 4, 'a:0:{}', 'a:1:{s:6:\"ita-IT\";s:0:\"\";}', 'a:2:{s:16:\"always-available\";s:16:\"always-available\";s:6:\"ita-IT\";s:4:\"Tags\";}', 0),
(1, '', 40, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezselection><options><option id=\"0\" name=\"Documento\"/><option id=\"1\" name=\"Elenco presenze\"/><option id=\"2\" name=\"Esito dell\'attività istruttoria\"/><option id=\"3\" name=\"Risultati dell\'attività\"/><option id=\"4\" name=\"Verbale della seduta\"/><option id=\"5\" name=\"Parere presentato\"/></options></ezselection>\n', 'ezselection', 314, 'tipo', 0, 1, 1, 5, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:4:\"Tipo\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 40, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezboolean', 315, 'sostituito', 0, 0, 1, 6, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:10:\"Sostituito\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 41, 0, 0, 0, 0, 255, 0, 0, 0, 'Folder', '', '', '', '', 'ezstring', 316, 'name', 0, 1, 1, 1, 'a:0:{}', 'a:3:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";s:6:\"ita-IT\";s:0:\"\";}', 'a:2:{s:6:\"ita-IT\";s:6:\"Titolo\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 41, 0, 0, 0, 0, 20, 0, 0, 0, '', '', '', '', '', 'ezxmltext', 317, 'description', 0, 0, 1, 2, 'a:0:{}', 'a:3:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";s:6:\"ita-IT\";s:0:\"\";}', 'a:2:{s:6:\"ita-IT\";s:11:\"Descrizione\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, 'meta', 41, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezdatetime', 318, 'publish_date', 0, 0, 0, 3, 'a:0:{}', 'a:3:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";s:6:\"ita-IT\";s:0:\"\";}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:28:\"Data di inizio pubblicazione\";}', 0),
(1, '', 41, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><constraints><allowed-class contentclass-identifier=\"personale\"/></constraints><type value=\"2\"/><selection_type value=\"0\"/><object_class value=\"\"/><contentobject-placement/></related-objects>\n', 'ezobjectrelationlist', 319, 'politici', 0, 0, 1, 4, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:8:\"Politici\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 42, 0, 0, 0, 0, 255, 0, 0, 0, 'Folder', '', '', '', '', 'ezstring', 320, 'name', 0, 1, 1, 1, 'a:0:{}', 'a:3:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";s:6:\"ita-IT\";s:0:\"\";}', 'a:2:{s:6:\"ita-IT\";s:6:\"Titolo\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 42, 0, 0, 0, 0, 20, 0, 0, 0, '', '', '', '', '', 'ezxmltext', 321, 'description', 0, 0, 1, 2, 'a:0:{}', 'a:3:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";s:6:\"ita-IT\";s:0:\"\";}', 'a:2:{s:6:\"ita-IT\";s:11:\"Descrizione\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, 'meta', 42, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezdatetime', 322, 'publish_date', 0, 0, 0, 3, 'a:0:{}', 'a:3:{s:6:\"eng-GB\";s:0:\"\";s:16:\"always-available\";s:6:\"eng-GB\";s:6:\"ita-IT\";s:0:\"\";}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:28:\"Data di inizio pubblicazione\";}', 0),
(1, '', 42, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-object><constraints/></related-object>\n', 'ezobjectrelation', 323, 'relation', 0, 0, 1, 4, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:11:\"Riferimento\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 42, 0, 0, 0, 0, 1, 0, 0, 0, '', '', '', '', '', 'ezdatetime', 324, 'expiry', 0, 0, 1, 5, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:16:\"Data di scadenza\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 43, 0, 0, 0, 0, 100, 0, 0, 0, '', '', '', '', '', 'ezstring', 325, 'subject', 0, 1, 1, 1, 'a:0:{}', 'a:1:{s:6:\"ita-IT\";s:0:\"\";}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:7:\"Oggetto\";}', 0),
(1, '', 43, 0, 0, 0, 0, 20, 0, 0, 0, '', '', '', '', '', 'eztext', 326, 'message', 0, 1, 1, 2, 'a:0:{}', 'a:1:{s:6:\"ita-IT\";s:0:\"\";}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:18:\"Messaggio testuale\";}', 0),
(1, '', 44, 0, 0, 0, 0, 100, 0, 0, 0, '', '', '', '', '', 'ezstring', 327, 'subject', 0, 1, 1, 1, 'a:0:{}', 'a:1:{s:6:\"ita-IT\";s:0:\"\";}', 'a:2:{s:16:\"always-available\";s:6:\"ita-IT\";s:6:\"ita-IT\";s:7:\"Oggetto\";}', 0),
(1, '', 44, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezbinaryfile', 328, 'file', 0, 0, 1, 2, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:4:\"File\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 44, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-object><constraints/></related-object>\n', 'ezobjectrelation', 329, 'relation', 0, 0, 1, 3, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:11:\"Riferimento\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 45, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-object><constraints/></related-object>\n', 'ezobjectrelation', 330, 'seduta', 0, 1, 1, 1, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:6:\"Seduta\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 45, 0, 0, 0, 0, 10, 0, 0, 0, '', '', '', '', '', 'eztext', 331, 'odg', 0, 0, 1, 2, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:3:\"Odg\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 45, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezdatetime', 332, 'data_ora', 0, 1, 1, 3, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:8:\"Data ora\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 45, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 333, 'protocollo', 0, 0, 1, 4, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:10:\"Protocollo\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 46, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 334, 'titolo', 0, 0, 1, 1, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:6:\"Titolo\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 46, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 335, 'cognome', 0, 1, 1, 2, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:7:\"Cognome\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 46, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 336, 'nome', 0, 1, 1, 3, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:4:\"Nome\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 46, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezselection><options><option id=\"0\" name=\"Maschio\"/><option id=\"1\" name=\"Femmina\"/></options></ezselection>\n', 'ezselection', 337, 'sesso', 0, 0, 1, 4, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:5:\"Sesso\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 46, 0, 0, 0, 0, 10, 0, 0, 0, '', '', '', '', '', 'eztext', 338, 'ruolo', 0, 0, 1, 5, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:5:\"Ruolo\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 46, 0, 0, 0, 0, 5, 0, 0, 0, '', '', '', '', '', 'ezxmltext', 339, 'abstract', 0, 0, 1, 6, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:17:\"Descrizione breve\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 46, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezimage', 340, 'image', 0, 0, 0, 7, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:10:\"Fotografia\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 46, 0, 0, 0, 0, 10, 0, 0, 0, '', '', '', '', '', 'eztext', 341, 'indirizzo', 0, 0, 1, 8, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:9:\"Indirizzo\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 46, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 342, 'telefono', 0, 0, 1, 9, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:8:\"Telefono\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 46, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 343, 'cellulare', 0, 0, 1, 10, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:18:\"Telefono cellulare\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 46, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 344, 'fax', 0, 0, 1, 11, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:3:\"Fax\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 46, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezemail', 345, 'email', 0, 0, 1, 12, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:15:\"Indirizzo email\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 47, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-object><constraints/></related-object>\n', 'ezobjectrelation', 346, 'user', 0, 1, 1, 1, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:6:\"Utente\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 47, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 347, 'protocollo', 0, 0, 1, 2, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:10:\"Protocollo\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 47, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><constraints/><type value=\"2\"/><selection_type value=\"0\"/><object_class value=\"\"/><contentobject-placement/></related-objects>\n', 'ezobjectrelationlist', 348, 'object', 0, 0, 1, 3, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:7:\"Oggetto\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 47, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'eztime', 349, 'ora', 0, 0, 0, 4, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:3:\"Ora\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 48, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 350, 'descrizione', 0, 1, 1, 1, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:11:\"Descrizione\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 48, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><constraints><allowed-class contentclass-identifier=\"personale\"/></constraints><type value=\"2\"/><selection_type value=\"1\"/><object_class value=\"\"/><contentobject-placement/></related-objects>\n', 'ezobjectrelationlist', 351, 'referente_politico', 0, 0, 1, 2, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:23:\"Referente istituzionale\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 48, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><constraints><allowed-class contentclass-identifier=\"personale\"/></constraints><type value=\"2\"/><selection_type value=\"1\"/><object_class value=\"\"/><contentobject-placement/></related-objects>\n', 'ezobjectrelationlist', 352, 'referente_tecnico', 0, 0, 1, 3, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:17:\"Referente tecnico\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 49, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 353, 'messaggio', 0, 0, 1, 1, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:9:\"Messaggio\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 49, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'eztime', 354, 'data', 0, 0, 0, 2, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:4:\"Data\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 49, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezbinaryfile', 355, 'allegato', 0, 0, 0, 3, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:8:\"Allegato\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 50, 0, 0, 0, 0, 10, 0, 0, 0, '', '', '', '', '', 'eztext', 356, 'oggetto', 0, 0, 1, 1, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:7:\"Oggetto\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 50, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'eztime', 357, 'orario_trattazione', 0, 1, 0, 2, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:21:\"Orario di trattazione\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 50, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><constraints><allowed-class contentclass-identifier=\"materia\"/></constraints><type value=\"2\"/><selection_type value=\"1\"/><object_class value=\"\"/><contentobject-placement/></related-objects>\n', 'ezobjectrelationlist', 358, 'materia', 0, 1, 1, 3, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:7:\"Materia\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 50, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><constraints><allowed-class contentclass-identifier=\"politico\"/></constraints><type value=\"2\"/><selection_type value=\"1\"/><object_class value=\"\"/><contentobject-placement/></related-objects>\n', 'ezobjectrelationlist', 359, 'referente_politico', 0, 0, 1, 4, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:23:\"Referente istituzionale\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 50, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><constraints><allowed-class contentclass-identifier=\"personale\"/></constraints><type value=\"2\"/><selection_type value=\"1\"/><object_class value=\"\"/><contentobject-placement/></related-objects>\n', 'ezobjectrelationlist', 360, 'referente_tecnico', 0, 0, 1, 5, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:17:\"Referente tecnico\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, 'admin', 50, 0, 0, 0, 0, 2, 0, 0, 0, '', '', '', '', '', 'eztext', 361, 'note', 0, 0, 1, 6, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:4:\"Note\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, 'hidden', 50, 0, 0, 0, 0, 2, 0, 0, 0, '', '', '', '', '', 'eztext', 362, 'avviso', 0, 0, 1, 7, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:17:\"Avviso importante\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, 'hidden', 50, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><constraints><allowed-class contentclass-identifier=\"allegato_seduta\"/></constraints><type value=\"2\"/><selection_type value=\"0\"/><object_class value=\"188\"/><contentobject-placement/></related-objects>\n', 'ezobjectrelationlist', 363, 'documenti', 0, 0, 1, 8, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:9:\"Documenti\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, 'admin', 50, 0, 0, 0, 0, 5, 0, 0, 0, '', '', '', '', '', 'ezxmltext', 364, 'alert', 0, 0, 0, 9, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:26:\"Notifica spostamento punto\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, 'hidden', 50, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><constraints><allowed-class contentclass-identifier=\"invitato\"/></constraints><type value=\"2\"/><selection_type value=\"0\"/><object_class value=\"\"/><contentobject-placement/></related-objects>\n', 'ezobjectrelationlist', 365, 'invitati', 0, 0, 1, 10, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:8:\"Invitati\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, 'admin', 50, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezboolean', 366, 'consenti_osservazioni', 0, 0, 1, 11, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:21:\"Consenti osservazioni\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, 'admin', 50, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezdatetime', 367, 'termine_osservazioni', 0, 0, 1, 12, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:20:\"Termine osservazioni\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, 'hidden', 50, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><constraints><allowed-class contentclass-identifier=\"osservazione\"/></constraints><type value=\"2\"/><selection_type value=\"0\"/><object_class value=\"491\"/><contentobject-placement/></related-objects>\n', 'ezobjectrelationlist', 368, 'osservazioni', 0, 0, 1, 13, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:12:\"Osservazioni\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, 'hidden', 50, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><constraints><allowed-class contentclass-identifier=\"seduta\"/></constraints><type value=\"2\"/><selection_type value=\"0\"/><object_class value=\"\"/><contentobject-placement/></related-objects>\n', 'ezobjectrelationlist', 369, 'seduta_di_riferimento', 0, 0, 1, 14, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:21:\"Seduta di riferimento\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, 'hidden', 50, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezinteger', 370, 'n_punto', 0, 0, 1, 15, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:9:\"Punto n°\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, 'hidden', 50, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><constraints><allowed-class contentclass-identifier=\"proposta_punto\"/></constraints><type value=\"2\"/><selection_type value=\"0\"/><object_class value=\"\"/><contentobject-placement/></related-objects>\n', 'ezobjectrelationlist', 371, 'proposte', 0, 0, 1, 16, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:8:\"Proposte\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 50, 0, 0, 0, 0, 5, 0, 0, 0, '', 'mini', '', '', '', 'ezxmltext', 372, 'verbale', 0, 0, 1, 17, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:19:\"Proposta di verbale\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 51, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><constraints><allowed-class contentclass-identifier=\"organo_politico\"/></constraints><type value=\"2\"/><selection_type value=\"2\"/><object_class value=\"\"/><contentobject-placement/></related-objects>\n', 'ezobjectrelationlist', 373, 'organo', 0, 1, 1, 1, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:6:\"Organo\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 51, 0, 0, 0, 0, 0, 0, 0, 0, 'la Sala Consiglio al 6° piano della Sede sociale', '', '', '', '', 'ezstring', 374, 'luogo', 0, 0, 1, 2, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:18:\"Luogo della seduta\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 51, 0, 0, 0, 0, 1, 0, 0, 0, '', '', '', '', '', 'ezdate', 375, 'data', 0, 1, 1, 3, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:17:\"Data della seduta\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 51, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'eztime', 376, 'orario', 0, 1, 0, 4, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:19:\"Orario della seduta\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 51, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'eztime', 377, 'orario_conclusione', 0, 0, 0, 5, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:30:\"Orario previsto di conclusione\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 51, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezinteger', 378, 'protocollo', 0, 0, 1, 6, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:10:\"Protocollo\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 51, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><constraints><allowed-class contentclass-identifier=\"personale\"/></constraints><type value=\"2\"/><selection_type value=\"0\"/><object_class value=\"\"/><contentobject-placement/></related-objects>\n', 'ezobjectrelationlist', 379, 'firmatario', 0, 0, 1, 7, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:10:\"Firmatario\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, 'hidden', 51, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><constraints><allowed-class contentclass-identifier=\"allegato_seduta\"/></constraints><type value=\"2\"/><selection_type value=\"0\"/><object_class value=\"188\"/><contentobject-placement/></related-objects>\n', 'ezobjectrelationlist', 380, 'documenti', 0, 0, 1, 8, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:9:\"Documenti\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, 'hidden', 51, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 381, 'step', 0, 0, 1, 9, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:11:\"Titolo step\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, 'hidden', 51, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><column-name id=\"punto\" idx=\"0\">Punto</column-name><column-name id=\"testo\" idx=\"1\">Testo</column-name></ezmatrix>\n', 'ezmatrix', 382, 'verbale', 0, 0, 1, 10, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:7:\"Verbale\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 51, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><constraints><allowed-class contentclass-identifier=\"personale\"/></constraints><type value=\"2\"/><selection_type value=\"0\"/><object_class value=\"\"/><contentobject-placement/></related-objects>\n', 'ezobjectrelationlist', 383, 'segretario_verbalizzante', 0, 0, 1, 11, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:24:\"Segretario verbalizzante\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, 'hidden', 51, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><constraints/><type value=\"2\"/><selection_type value=\"0\"/><object_class value=\"\"/><contentobject-placement/></related-objects>\n', 'ezobjectrelationlist', 384, 'presenti', 0, 0, 1, 12, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:8:\"Presenti\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, 'hidden', 51, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezbinaryfile', 385, 'convocazione', 0, 0, 0, 13, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:12:\"Convocazione\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0);
INSERT INTO `ezcontentclass_attribute` (`can_translate`, `category`, `contentclass_id`, `data_float1`, `data_float2`, `data_float3`, `data_float4`, `data_int1`, `data_int2`, `data_int3`, `data_int4`, `data_text1`, `data_text2`, `data_text3`, `data_text4`, `data_text5`, `data_type_string`, `id`, `identifier`, `is_information_collector`, `is_required`, `is_searchable`, `placement`, `serialized_data_text`, `serialized_description_list`, `serialized_name_list`, `version`) VALUES
(1, 'hidden', 51, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><constraints><allowed-class contentclass-identifier=\"politico\"/></constraints><type value=\"2\"/><selection_type value=\"0\"/><object_class value=\"\"/><contentobject-placement/></related-objects>\n', 'ezobjectrelationlist', 386, 'partecipanti', 0, 0, 1, 14, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:12:\"Partecipanti\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, 'hidden', 51, 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', 'ezdatetime', 387, 'orario_inizio_effettivo', 0, 0, 1, 15, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:26:\"Orario effettivo di inizio\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, 'hidden', 51, 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', '', 'ezdatetime', 388, 'orario_conclusione_effettivo', 0, 0, 1, 16, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:31:\"Orario effettivo di conclusione\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 52, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 389, 'short_text', 0, 0, 1, 1, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:6:\"Titolo\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 52, 0, 0, 0, 0, 10, 0, 0, 0, '', '', '', '', '', 'eztext', 390, 'text', 0, 0, 1, 2, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:5:\"Testo\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 52, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-object><constraints/></related-object>\n', 'ezobjectrelation', 391, 'seduta', 0, 0, 1, 3, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:6:\"Seduta\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 52, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-object><constraints/></related-object>\n', 'ezobjectrelation', 392, 'punto', 0, 0, 1, 4, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:5:\"Punto\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 52, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 393, 'type', 0, 0, 1, 5, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:4:\"Tipo\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 52, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezdatetime', 394, 'start_datetime', 0, 0, 1, 6, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:16:\"Inizio votazione\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 52, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezdatetime', 395, 'end_datetime', 0, 0, 1, 7, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:14:\"Fine votazione\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 52, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezinteger', 396, 'presenti', 0, 0, 1, 8, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:8:\"Presenti\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 52, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezinteger', 397, 'votanti', 0, 0, 1, 9, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:7:\"Votanti\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 52, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezinteger', 398, 'astenuti', 0, 0, 1, 10, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:8:\"Astenuti\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 52, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezinteger', 399, 'favorevoli', 0, 0, 1, 11, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:10:\"Favorevoli\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 52, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezinteger', 400, 'contrari', 0, 0, 1, 12, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:8:\"Contrari\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 53, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 401, 'titolo', 0, 1, 1, 1, 'a:0:{}', 'a:1:{s:6:\"ita-IT\";s:25:\"Nome dell\'organo politico\";}', 'a:2:{s:6:\"ita-IT\";s:25:\"Nome dell\'organo politico\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 53, 0, 0, 0, 0, 5, 0, 0, 0, '', '', '', '', '', 'ezxmltext', 402, 'abstract', 0, 1, 1, 2, 'a:0:{}', 'a:1:{s:6:\"ita-IT\";s:42:\"Sintetica descrizione dell\'organo politico\";}', 'a:2:{s:6:\"ita-IT\";s:17:\"Descrizione breve\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 53, 0, 0, 0, 0, 15, 0, 0, 0, '', '', '', '', '', 'ezxmltext', 403, 'descrizione', 0, 0, 1, 3, 'a:0:{}', 'a:1:{s:6:\"ita-IT\";s:41:\"Descrizione completa dell\'organo politico\";}', 'a:2:{s:6:\"ita-IT\";s:11:\"Descrizione\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 53, 0, 0, 0, 0, 15, 0, 0, 0, '', '', '', '', '', 'ezxmltext', 404, 'competenze', 0, 0, 0, 4, 'a:0:{}', 'a:1:{s:6:\"ita-IT\";s:65:\"Elenco/descrizione delle competenze assegnate all\'organo politico\";}', 'a:2:{s:6:\"ita-IT\";s:10:\"Competenze\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 53, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezimage', 405, 'image', 0, 0, 0, 5, 'a:0:{}', 'a:1:{s:6:\"ita-IT\";s:40:\"Immagine principale dell\'organo politico\";}', 'a:2:{s:6:\"ita-IT\";s:8:\"Immagine\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 53, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><constraints><allowed-class contentclass-identifier=\"personale\"/></constraints><type value=\"2\"/><selection_type value=\"3\"/><object_class value=\"\"/><contentobject-placement node-id=\"20693\"/></related-objects>\n', 'ezobjectrelationlist', 406, 'membri', 0, 0, 0, 6, 'a:0:{}', 'a:1:{s:6:\"ita-IT\";s:41:\"Soggetti che compongono l\'organo politico\";}', 'a:2:{s:6:\"ita-IT\";s:6:\"Membri\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 53, 0, 0, 0, 0, 10, 0, 0, 0, '', '', '', '', '', 'ezxmltext', 407, 'nota', 0, 0, 1, 7, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:4:\"Note\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 54, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 408, 'description', 0, 1, 1, 1, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:11:\"Descrizione\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 54, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezfloat', 409, 'amount', 0, 0, 0, 2, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:7:\"Importo\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 54, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezbinaryfile', 410, 'file', 0, 0, 1, 3, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:4:\"File\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 54, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><constraints/><type value=\"2\"/><selection_type value=\"0\"/><object_class value=\"\"/><contentobject-placement/></related-objects>\n', 'ezobjectrelationlist', 411, 'relations', 0, 0, 1, 4, 'a:0:{}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:11:\"Riferimento\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 55, 0, 0, 0, 0, 10, 0, 0, 0, '', '', '', '', '', 'eztext', 412, 'oggetto', 0, 0, 1, 1, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:7:\"Oggetto\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 55, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-objects><constraints><allowed-class contentclass-identifier=\"materia\"/></constraints><type value=\"2\"/><selection_type value=\"1\"/><object_class value=\"\"/><contentobject-placement/></related-objects>\n', 'ezobjectrelationlist', 413, 'materia', 0, 1, 1, 2, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:7:\"Materia\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 55, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezbinaryfile', 414, 'file', 0, 0, 1, 3, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:4:\"File\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 55, 0, 0, 0, 0, 10, 0, 0, 0, '', '', '', '', '', 'eztext', 415, 'proposta_verbale', 0, 0, 1, 4, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:19:\"Proposta di verbale\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 4, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezselection><options><option id=\"0\" name=\"Maschio\"/><option id=\"1\" name=\"Femmina\"/></options></ezselection>\n', 'ezselection', 416, 'sesso', 0, 0, 1, 5, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:5:\"Sesso\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 4, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezimage', 417, 'firma', 0, 0, 0, 6, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:5:\"Firma\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 4, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><column-name id=\"email\" idx=\"0\">E-mail</column-name></ezmatrix>\n', 'ezmatrix', 418, 'altre_email', 0, 0, 1, 7, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:26:\"Ulteriori indirizzi e-mail\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 4, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezstring', 419, 'pre_firma', 0, 0, 1, 8, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:14:\"Prefisso firma\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 4, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><column-name id=\"tel\" idx=\"0\">Telefono</column-name><column-name id=\"mobile\" idx=\"1\">Cellulare</column-name></ezmatrix>\n', 'ezmatrix', 420, 'contatti', 0, 0, 1, 9, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:21:\" Contatti telefonici:\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, '', 56, 0, 0, 0, 0, 25, 0, 0, 0, '', 'mini', '', '', '', 'ezxmltext', 421, 'testo', 0, 0, 1, 1, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:5:\"Testo\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, 'hidden', 56, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<related-object><constraints><allowed-class contentclass-identifier=\"seduta\"/></constraints></related-object>\n', 'ezobjectrelation', 422, 'seduta', 0, 0, 1, 2, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:6:\"Seduta\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0),
(1, 'hidden', 56, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', 'ezbinaryfile', 423, 'file', 0, 0, 1, 3, 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:0:\"\";s:16:\"always-available\";s:6:\"ita-IT\";}', 'a:2:{s:6:\"ita-IT\";s:4:\"File\";s:16:\"always-available\";s:6:\"ita-IT\";}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ezcontentclass_classgroup`
--

CREATE TABLE `ezcontentclass_classgroup` (
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_version` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `group_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezcontentclass_classgroup`
--

INSERT INTO `ezcontentclass_classgroup` (`contentclass_id`, `contentclass_version`, `group_id`, `group_name`) VALUES
(1, 0, 1, 'Content'),
(3, 0, 2, 'Users'),
(4, 0, 2, 'Users'),
(14, 0, 4, 'Setup'),
(15, 0, 4, 'Setup'),
(23, 0, 1, 'Content'),
(26, 0, 3, 'Media'),
(27, 0, 3, 'Media'),
(28, 0, 1, 'Content'),
(33, 0, 1, 'Content'),
(37, 0, 3, 'Media'),
(40, 0, 14, 'OpenConsiglio'),
(41, 0, 14, 'OpenConsiglio'),
(42, 0, 14, 'OpenConsiglio'),
(43, 0, 14, 'OpenConsiglio'),
(44, 0, 14, 'OpenConsiglio'),
(45, 0, 14, 'OpenConsiglio'),
(46, 0, 14, 'OpenConsiglio'),
(47, 0, 14, 'OpenConsiglio'),
(48, 0, 14, 'OpenConsiglio'),
(49, 0, 14, 'OpenConsiglio'),
(50, 0, 14, 'OpenConsiglio'),
(51, 0, 14, 'OpenConsiglio'),
(52, 0, 14, 'OpenConsiglio'),
(53, 0, 14, 'OpenConsiglio'),
(54, 0, 14, 'OpenConsiglio'),
(55, 0, 14, 'OpenConsiglio'),
(56, 0, 14, 'OpenConsiglio');

-- --------------------------------------------------------

--
-- Table structure for table `ezcontentclass_name`
--

CREATE TABLE `ezcontentclass_name` (
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_version` int(11) NOT NULL DEFAULT '0',
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `language_locale` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezcontentclass_name`
--

INSERT INTO `ezcontentclass_name` (`contentclass_id`, `contentclass_version`, `language_id`, `language_locale`, `name`) VALUES
(1, 0, 3, 'ita-IT', 'Folder'),
(3, 0, 3, 'ita-IT', 'User group'),
(4, 0, 3, 'ita-IT', 'User'),
(14, 0, 3, 'ita-IT', 'Common ini settings'),
(15, 0, 3, 'ita-IT', 'Template look'),
(23, 0, 5, 'eng-GB', 'Landing Page'),
(26, 0, 5, 'eng-GB', 'File'),
(27, 0, 5, 'eng-GB', 'Image'),
(28, 0, 5, 'eng-GB', 'Link'),
(33, 0, 5, 'eng-GB', 'Event'),
(37, 0, 5, 'eng-GB', 'Video'),
(40, 0, 2, 'ita-IT', 'Allegato seduta'),
(41, 0, 3, 'ita-IT', 'Area collaborativa'),
(42, 0, 3, 'ita-IT', 'Tematica (area collaborativa)'),
(43, 0, 3, 'ita-IT', 'Commento (area collaborativa)'),
(44, 0, 3, 'ita-IT', 'Documento (area collaborativa)'),
(45, 0, 3, 'ita-IT', 'Convocazione alla seduta'),
(46, 0, 3, 'ita-IT', 'Invitato'),
(47, 0, 3, 'ita-IT', 'Invito'),
(48, 0, 3, 'ita-IT', 'Materia'),
(49, 0, 3, 'ita-IT', 'Osservazione'),
(50, 0, 3, 'ita-IT', 'Punto all\'ordine del giorno'),
(51, 0, 3, 'ita-IT', 'Seduta'),
(52, 0, 3, 'ita-IT', 'Votazione'),
(53, 0, 3, 'ita-IT', 'Organo Sociale'),
(54, 0, 3, 'ita-IT', 'Rendiconto spese'),
(55, 0, 3, 'ita-IT', 'Proposta di punto all\'ordine del giorno'),
(56, 0, 3, 'ita-IT', 'Verbale');

-- --------------------------------------------------------

--
-- Table structure for table `ezcontentobject`
--

CREATE TABLE `ezcontentobject` (
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `current_version` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `initial_language_id` bigint(20) NOT NULL DEFAULT '0',
  `language_mask` bigint(20) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) DEFAULT NULL,
  `section_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezcontentobject`
--

INSERT INTO `ezcontentobject` (`contentclass_id`, `current_version`, `id`, `initial_language_id`, `language_mask`, `modified`, `name`, `owner_id`, `published`, `remote_id`, `section_id`, `status`) VALUES
(3, 1, 4, 2, 3, 1033917596, 'Users', 14, 1033917596, 'f5c88a2209584891056f987fd965b0ba', 2, 1),
(4, 2, 10, 2, 3, 1072180405, 'Anonymous User', 14, 1033920665, 'faaeb9be3bd98ed09f606fc16d144eca', 2, 1),
(3, 2, 11, 2, 3, 1537996703, 'Members', 14, 1033920746, '5f7f0bdb3381d6a461d8c29ff53d908f', 2, 1),
(3, 1, 12, 2, 3, 1033920775, 'Administrator users', 14, 1033920775, '9b47a45624b023b1a76c73b74d704acf', 2, 1),
(4, 5, 14, 2, 3, 1538001657, 'Administrator User', 14, 1033920830, '1bb4fe25487f05527efa8bfd394cecc7', 2, 1),
(1, 1, 41, 2, 3, 1060695457, 'Media', 14, 1060695457, 'a6e35cbcb7cd6ae4b691f3eee30cd262', 3, 1),
(3, 1, 42, 2, 3, 1072180330, 'Anonymous Users', 14, 1072180330, '15b256dbea2ae72418ff5facc999e8f9', 2, 1),
(1, 1, 45, 2, 3, 1079684190, 'Setup', 14, 1079684190, '241d538ce310074e602f29f49e44e938', 4, 1),
(1, 1, 49, 2, 3, 1080220197, 'Images', 14, 1080220197, 'e7ff633c6b8e0fd3531e74c6e712bead', 3, 1),
(1, 1, 50, 2, 3, 1080220220, 'Files', 14, 1080220220, '732a5acd01b51a6fe6eab448ad4138a9', 3, 1),
(1, 1, 51, 2, 3, 1080220233, 'Multimedia', 14, 1080220233, '09082deb98662a104f325aaa8c4933d3', 3, 1),
(14, 1, 52, 2, 2, 1082016591, 'Common INI settings', 14, 1082016591, '27437f3547db19cf81a33c92578b2c89', 4, 1),
(15, 2, 54, 2, 2, 1301062376, 'openconsiglio', 14, 1082016652, '8b8b22fe3c6061ed500fbd2b377b885f', 5, 1),
(1, 1, 56, 2, 3, 1103023132, 'Design', 14, 1103023132, '08799e609893f7aba22f10cb466d9cc8', 5, 1),
(23, 2, 57, 2, 3, 1537997918, 'Home', 14, 1195480486, '8a9c9c761004866fb458d89910f52bee', 1, 1),
(1, 1, 60, 2, 3, 1537999083, 'seduta', 14, 1537999083, 'openpa_consiglio_seduta', 1, 1),
(1, 1, 61, 2, 3, 1537999084, 'Aree collaborative', 14, 1537999084, 'openpa_consiglio_collaboration_container', 3, 1),
(1, 1, 62, 2, 3, 1537999084, 'allegati_seduta', 14, 1537999084, 'openpa_consiglio_allegati_seduta', 1, 1),
(3, 1, 63, 2, 3, 1537999084, 'invitato', 14, 1537999084, 'openpa_consiglio_invitato', 1, 1),
(3, 1, 64, 2, 3, 1537999084, 'politico', 14, 1537999084, 'openpa_consiglio_politico', 1, 1),
(3, 1, 65, 2, 3, 1537999084, 'tecnico', 14, 1537999084, 'openpa_consiglio_tecnico', 1, 1),
(1, 1, 66, 2, 3, 1537999084, 'materia', 14, 1537999084, 'openpa_consiglio_materia', 1, 1),
(1, 1, 67, 2, 3, 1537999084, 'organo', 14, 1537999084, 'openpa_consiglio_organo', 1, 1),
(1, 1, 68, 2, 3, 1537999084, 'votazione', 14, 1537999084, 'openpa_consiglio_votazione', 1, 1),
(1, 1, 69, 2, 3, 1537999084, 'osservazioni', 14, 1537999084, 'openpa_consiglio_osservazioni', 1, 1),
(3, 1, 70, 2, 3, 1537999084, 'referentelocale', 14, 1537999084, 'openpa_consiglio_referentelocale', 1, 1),
(1, 1, 71, 2, 3, 1537999085, 'areacollaborativa', 14, 1537999085, 'openpa_consiglio_areacollaborativa', 1, 1),
(1, 1, 72, 2, 3, 1537999085, 'rendiconto_spese', 14, 1537999085, 'openpa_consiglio_rendiconto_spese', 1, 1),
(1, 1, 73, 2, 3, 1537999085, 'proposta', 14, 1537999085, 'openpa_consiglio_proposta', 1, 1),
(3, 1, 74, 2, 3, 1537999085, 'responsabilearea', 14, 1537999085, 'openpa_consiglio_responsabilearea', 1, 1),
(1, 1, 75, 2, 3, 1537999085, 'cda_evento', 14, 1537999085, 'openpa_consiglio_cda_evento', 1, 1),
(1, 1, 76, 2, 3, 1537999085, 'cda_documento', 14, 1537999085, 'openpa_consiglio_cda_documento', 1, 1),
(4, 3, 154, 2, 3, 1538037029, 'Germano\n         Preghenella\n        ', 14, 1342541962, '585bb7f3559c345a4d243de6be4036f7', 2, 1),
(4, 3, 155, 2, 3, 1538037030, 'Serenella\n         Cipriani\n        ', 14, 1342542890, 'd77cb615af28256b57d71a1ed8c65151', 2, 1),
(4, 3, 156, 2, 3, 1538037030, 'Patrizia\n         Gentil\n        ', 14, 1342545357, 'cb6b27c0e4ae00e3029d2639fe6017e8', 2, 1),
(4, 3, 157, 2, 3, 1538037031, 'Lucia\n         Corradini\n        ', 14, 1342545536, '4178aafd728d9c1a3f0e80e6725bdd7a', 2, 1),
(4, 3, 158, 2, 3, 1538037031, 'Emiliano\n         Trainotti\n        ', 14, 1371350453, 'a0874dcf960b431b44d2256d7e8dd6b9', 2, 1),
(4, 3, 159, 2, 3, 1538037032, 'Antonio\n         Borghetti\n        ', 14, 1371350537, 'd5090fc37dc4b42960337959ada424f3', 2, 1),
(4, 3, 160, 2, 3, 1538037032, 'Renzo\n         Tommasi\n        ', 14, 1397961104, 'b67b3cb04aa6831176a3dbb906029faf', 2, 1),
(4, 3, 161, 2, 3, 1538037033, 'Sara\n         Ghezzer\n        ', 14, 1406428744, '0fdd6093f4412ca922e1d7758153540b', 2, 1),
(4, 3, 162, 2, 3, 1538037034, 'Nadia\n         Martinelli\n        ', 14, 1434854695, 'e43f1141df0e1d3ac868f2295e9b0ab5', 2, 1),
(4, 5, 163, 2, 3, 1538037060, 'Alessandro Ceschi', 14, 1489653932, '28a8dcc76352767f3cc9329a4471d4f4', 2, 1),
(4, 1, 166, 2, 3, 1538036087, 'Martina DeGramatica', 14, 1487479283, 'ElnTl212b08349393f54993c9f273f633b91e', 2, 1),
(4, 2, 171, 2, 3, 1538037059, 'Enrico Cozzio', 14, 1342546869, 'ElnTl070954b338dc24059b32f13831e0f737', 2, 1),
(4, 1, 172, 2, 3, 1538036093, 'Giulia Comper', 14, 1416111489, 'ElnTl4206ad8a02b188876a7fad739a1b4496', 2, 1),
(4, 1, 173, 2, 3, 1538036094, 'Federico Genetti', 14, 1527769000, '4868c6c3b1871dd902174c3ab1b3fbe3', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ezcontentobject_attribute`
--

CREATE TABLE `ezcontentobject_attribute` (
  `attribute_original_id` int(11) DEFAULT '0',
  `contentclassattribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `data_float` double DEFAULT NULL,
  `data_int` int(11) DEFAULT NULL,
  `data_text` longtext,
  `data_type_string` varchar(50) DEFAULT '',
  `id` int(11) NOT NULL,
  `language_code` varchar(20) NOT NULL DEFAULT '',
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `sort_key_int` int(11) NOT NULL DEFAULT '0',
  `sort_key_string` varchar(255) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezcontentobject_attribute`
--

INSERT INTO `ezcontentobject_attribute` (`attribute_original_id`, `contentclassattribute_id`, `contentobject_id`, `data_float`, `data_int`, `data_text`, `data_type_string`, `id`, `language_code`, `language_id`, `sort_key_int`, `sort_key_string`, `version`) VALUES
(0, 7, 4, NULL, NULL, 'Main group', 'ezstring', 7, 'ita-IT', 3, 0, '', 1),
(0, 6, 4, NULL, NULL, 'Users', 'ezstring', 8, 'ita-IT', 3, 0, '', 1),
(0, 8, 10, 0, 0, 'Anonymous', 'ezstring', 19, 'ita-IT', 3, 0, 'anonymous', 2),
(0, 9, 10, 0, 0, 'User', 'ezstring', 20, 'ita-IT', 3, 0, 'user', 2),
(0, 12, 10, 0, 0, '', 'ezuser', 21, 'ita-IT', 3, 0, '', 2),
(0, 6, 11, 0, 0, 'Guest accounts', 'ezstring', 22, 'ita-IT', 3, 0, '', 1),
(0, 6, 11, 0, 0, 'Members', 'ezstring', 22, 'ita-IT', 3, 0, 'members', 2),
(0, 7, 11, 0, 0, '', 'ezstring', 23, 'ita-IT', 3, 0, '', 1),
(0, 7, 11, 0, 0, '', 'ezstring', 23, 'ita-IT', 3, 0, '', 2),
(0, 6, 12, 0, 0, 'Administrator users', 'ezstring', 24, 'ita-IT', 3, 0, '', 1),
(0, 7, 12, 0, 0, '', 'ezstring', 25, 'ita-IT', 3, 0, '', 1),
(0, 8, 14, 0, 0, 'Administrator', 'ezstring', 28, 'ita-IT', 3, 0, 'administrator', 3),
(0, 8, 14, 0, 0, 'Administrator', 'ezstring', 28, 'ita-IT', 3, 0, 'administrator', 4),
(0, 8, 14, 0, 0, 'Administrator', 'ezstring', 28, 'ita-IT', 3, 0, 'administrator', 5),
(0, 9, 14, 0, 0, 'User', 'ezstring', 29, 'ita-IT', 3, 0, 'user', 3),
(0, 9, 14, 0, 0, 'User', 'ezstring', 29, 'ita-IT', 3, 0, 'user', 4),
(0, 9, 14, 0, 0, 'User', 'ezstring', 29, 'ita-IT', 3, 0, 'user', 5),
(30, 12, 14, 0, 0, '', 'ezuser', 30, 'ita-IT', 3, 0, '', 3),
(30, 12, 14, 0, 0, '{\"login\":\"admin\",\"password_hash\":\"$2y$10$1dKf8nMxfQA3LaaxEoOndOSAp55dbmZ.HALaxxjjbYA\\/LCkfwxgNe\",\"email\":\"lr@opencontent.it\",\"password_hash_type\":7}', 'ezuser', 30, 'ita-IT', 3, 0, '', 4),
(30, 12, 14, 0, 0, '{\"login\":\"admin\",\"password_hash\":\"$2y$10$1dKf8nMxfQA3LaaxEoOndOSAp55dbmZ.HALaxxjjbYA\\/LCkfwxgNe\",\"email\":\"webmaster@opencontent.it\",\"password_hash_type\":7}', 'ezuser', 30, 'ita-IT', 3, 0, '', 5),
(0, 4, 41, 0, 0, 'Media', 'ezstring', 98, 'ita-IT', 3, 0, '', 1),
(0, 119, 41, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />', 'ezxmltext', 99, 'ita-IT', 3, 0, '', 1),
(0, 6, 42, 0, 0, 'Anonymous Users', 'ezstring', 100, 'ita-IT', 3, 0, 'anonymous users', 1),
(0, 7, 42, 0, 0, 'User group for the anonymous user', 'ezstring', 101, 'ita-IT', 3, 0, 'user group for the anonymous user', 1),
(0, 155, 41, 0, 0, '', 'ezstring', 103, 'ita-IT', 3, 0, '', 1),
(0, 156, 41, 0, 1045487555, '', 'ezxmltext', 105, 'ita-IT', 3, 0, '', 1),
(0, 158, 41, 0, 0, '', 'ezboolean', 109, 'ita-IT', 3, 0, '', 1),
(0, 4, 45, 0, 0, 'Setup', 'ezstring', 123, 'ita-IT', 3, 0, 'setup', 1),
(0, 155, 45, 0, 0, '', 'ezstring', 124, 'ita-IT', 3, 0, '', 1),
(0, 119, 45, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />', 'ezxmltext', 125, 'ita-IT', 3, 0, '', 1),
(0, 156, 45, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />', 'ezxmltext', 126, 'ita-IT', 3, 0, '', 1),
(0, 158, 45, 0, 0, '', 'ezboolean', 128, 'ita-IT', 3, 0, '', 1),
(0, 4, 49, 0, 0, 'Images', 'ezstring', 142, 'ita-IT', 3, 0, 'images', 1),
(0, 155, 49, 0, 0, '', 'ezstring', 143, 'ita-IT', 3, 0, '', 1),
(0, 119, 49, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />', 'ezxmltext', 144, 'ita-IT', 3, 0, '', 1),
(0, 156, 49, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />', 'ezxmltext', 145, 'ita-IT', 3, 0, '', 1),
(0, 158, 49, 0, 1, '', 'ezboolean', 146, 'ita-IT', 3, 1, '', 1),
(0, 4, 50, 0, 0, 'Files', 'ezstring', 147, 'ita-IT', 3, 0, 'files', 1),
(0, 155, 50, 0, 0, '', 'ezstring', 148, 'ita-IT', 3, 0, '', 1),
(0, 119, 50, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />', 'ezxmltext', 149, 'ita-IT', 3, 0, '', 1),
(0, 156, 50, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />', 'ezxmltext', 150, 'ita-IT', 3, 0, '', 1),
(0, 158, 50, 0, 1, '', 'ezboolean', 151, 'ita-IT', 3, 1, '', 1),
(0, 4, 51, 0, 0, 'Multimedia', 'ezstring', 152, 'ita-IT', 3, 0, 'multimedia', 1),
(0, 155, 51, 0, 0, '', 'ezstring', 153, 'ita-IT', 3, 0, '', 1),
(0, 119, 51, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />', 'ezxmltext', 154, 'ita-IT', 3, 0, '', 1),
(0, 156, 51, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />', 'ezxmltext', 155, 'ita-IT', 3, 0, '', 1),
(0, 158, 51, 0, 1, '', 'ezboolean', 156, 'ita-IT', 3, 1, '', 1),
(0, 159, 52, 0, 0, 'Common INI settings', 'ezstring', 157, 'ita-IT', 2, 0, 'common ini settings', 1),
(0, 160, 52, 0, 0, '/content/view/full/2/', 'ezinisetting', 158, 'ita-IT', 2, 0, '', 1),
(0, 161, 52, 0, 0, '/content/view/full/2', 'ezinisetting', 159, 'ita-IT', 2, 0, '', 1),
(0, 162, 52, 0, 0, 'disabled', 'ezinisetting', 160, 'ita-IT', 2, 0, '', 1),
(0, 163, 52, 0, 0, 'disabled', 'ezinisetting', 161, 'ita-IT', 2, 0, '', 1),
(0, 164, 52, 0, 0, '', 'ezinisetting', 162, 'ita-IT', 2, 0, '', 1),
(0, 165, 52, 0, 0, 'enabled', 'ezinisetting', 163, 'ita-IT', 2, 0, '', 1),
(0, 166, 52, 0, 0, 'disabled', 'ezinisetting', 164, 'ita-IT', 2, 0, '', 1),
(0, 167, 52, 0, 0, 'enabled', 'ezinisetting', 165, 'ita-IT', 2, 0, '', 1),
(0, 168, 52, 0, 0, 'enabled', 'ezinisetting', 166, 'ita-IT', 2, 0, '', 1),
(0, 169, 52, 0, 0, '=geometry/scale=100;100', 'ezinisetting', 167, 'ita-IT', 2, 0, '', 1),
(0, 170, 52, 0, 0, '=geometry/scale=200;200', 'ezinisetting', 168, 'ita-IT', 2, 0, '', 1),
(0, 171, 52, 0, 0, '=geometry/scale=300;300', 'ezinisetting', 169, 'ita-IT', 2, 0, '', 1),
(0, 172, 54, 0, 0, 'openconsiglio', 'ezinisetting', 170, 'ita-IT', 2, 0, '', 2),
(0, 173, 54, 0, 0, 'author=eZ Systems\ncopyright=eZ Systems\ndescription=Content Management System\nkeywords=cms, publish, e-commerce, content management, development framework', 'ezinisetting', 171, 'ita-IT', 2, 0, '', 2),
(0, 174, 54, 0, 0, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"openconsiglio1.png\" suffix=\"png\" basename=\"openconsiglio1\" dirpath=\"var/ezdemo_site/storage/images/design/plain-site/172-2-ita-IT\" url=\"var/ezdemo_site/storage/images/design/plain-site/172-2-ita-IT/openconsiglio1.png\" original_filename=\"logo.png\" mime_type=\"image/png\" width=\"138\" height=\"46\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1537996702\"><original attribute_id=\"172\" attribute_version=\"2\" attribute_language=\"ita-IT\"/></ezimage>\n', 'ezimage', 172, 'ita-IT', 2, 0, '', 2),
(0, 175, 54, 0, 0, '0', 'ezpackage', 173, 'ita-IT', 2, 0, '0', 2),
(0, 177, 54, 0, 0, 'lr@opencontent.it', 'ezinisetting', 175, 'ita-IT', 2, 0, '', 2),
(0, 178, 54, 0, 0, 'openconsiglio.local', 'ezinisetting', 176, 'ita-IT', 2, 0, '', 2),
(0, 180, 10, 0, 0, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1537999773\"/>\n', 'ezimage', 179, 'ita-IT', 3, 0, '', 2),
(0, 180, 14, 0, 0, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1301057722\"><original attribute_id=\"180\" attribute_version=\"3\" attribute_language=\"eng-GB\"/></ezimage>\n', 'ezimage', 180, 'ita-IT', 3, 0, '', 3),
(0, 180, 14, 0, 0, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1301057722\"><original attribute_id=\"180\" attribute_version=\"3\" attribute_language=\"eng-GB\"/></ezimage>\n', 'ezimage', 180, 'ita-IT', 3, 0, '', 4),
(0, 180, 14, 0, 0, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1301057722\"><original attribute_id=\"180\" attribute_version=\"3\" attribute_language=\"eng-GB\"/></ezimage>\n', 'ezimage', 180, 'ita-IT', 3, 0, '', 5),
(0, 4, 56, 0, NULL, 'Design', 'ezstring', 181, 'ita-IT', 3, 0, 'design', 1),
(0, 155, 56, 0, NULL, '', 'ezstring', 182, 'ita-IT', 3, 0, '', 1),
(0, 119, 56, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />', 'ezxmltext', 183, 'ita-IT', 3, 0, '', 1),
(0, 156, 56, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\"\n         xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\"\n         xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\" />', 'ezxmltext', 184, 'ita-IT', 3, 0, '', 1),
(0, 158, 56, 0, 1, '', 'ezboolean', 185, 'ita-IT', 3, 1, '', 1),
(0, 296, 54, 0, 29, 'Site map', 'ezurl', 200, 'ita-IT', 2, 0, '', 2),
(0, 297, 54, 0, 30, 'Tag cloud', 'ezurl', 201, 'ita-IT', 2, 0, '', 2),
(0, 298, 54, 0, NULL, 'Login', 'ezstring', 202, 'ita-IT', 2, 0, 'login', 2),
(0, 299, 54, 0, NULL, 'Logout', 'ezstring', 203, 'ita-IT', 2, 0, 'logout', 2),
(0, 300, 54, 0, NULL, 'My profile', 'ezstring', 204, 'ita-IT', 2, 0, 'my profile', 2),
(0, 301, 54, 0, NULL, 'Register', 'ezstring', 205, 'ita-IT', 2, 0, 'register', 2),
(0, 302, 54, 0, NULL, '/rss/feed/my_feed', 'ezstring', 206, 'ita-IT', 2, 0, '/rss/feed/my_feed', 2),
(0, 303, 54, 0, NULL, 'Shopping basket', 'ezstring', 207, 'ita-IT', 2, 0, 'shopping basket', 2),
(0, 304, 54, 0, NULL, 'Site settings', 'ezstring', 208, 'ita-IT', 2, 0, 'site settings', 2),
(0, 305, 54, 0, NULL, 'Copyright &#169; 2018 <a href=\"http://ez.no\" title=\"eZ Systems\">eZ Systems AS</a> (except where otherwise noted). All rights reserved.', 'eztext', 209, 'ita-IT', 2, 0, '', 2),
(0, 306, 54, 0, 0, '', 'ezboolean', 210, 'ita-IT', 2, 0, '', 2),
(0, 307, 54, 0, NULL, '', 'eztext', 211, 'ita-IT', 2, 0, '', 2),
(0, 308, 41, 0, NULL, '<?xml version=\"1.0\"?>\n<page/>\n', 'ezpage', 214, 'ita-IT', 2, 0, '', 1),
(0, 308, 45, 0, NULL, '<?xml version=\"1.0\"?>\n<page/>\n', 'ezpage', 215, 'ita-IT', 2, 0, '', 1),
(0, 308, 49, 0, NULL, '<?xml version=\"1.0\"?>\n<page/>\n', 'ezpage', 216, 'ita-IT', 2, 0, '', 1),
(0, 308, 50, 0, NULL, '<?xml version=\"1.0\"?>\n<page/>\n', 'ezpage', 217, 'ita-IT', 2, 0, '', 1),
(0, 308, 51, 0, NULL, '<?xml version=\"1.0\"?>\n<page/>\n', 'ezpage', 218, 'ita-IT', 2, 0, '', 1),
(0, 308, 56, 0, NULL, '<?xml version=\"1.0\"?>\n<page/>\n', 'ezpage', 219, 'ita-IT', 2, 0, '', 1),
(0, 309, 41, 0, NULL, '', 'ezkeyword', 220, 'ita-IT', 2, 0, '', 1),
(0, 309, 45, 0, NULL, '', 'ezkeyword', 221, 'ita-IT', 2, 0, '', 1),
(0, 309, 49, 0, NULL, '', 'ezkeyword', 222, 'ita-IT', 2, 0, '', 1),
(0, 309, 50, 0, NULL, '', 'ezkeyword', 223, 'ita-IT', 2, 0, '', 1),
(0, 309, 51, 0, NULL, '', 'ezkeyword', 224, 'ita-IT', 2, 0, '', 1),
(0, 309, 56, 0, NULL, '', 'ezkeyword', 225, 'ita-IT', 2, 0, '', 1),
(0, 230, 57, 0, NULL, 'Home', 'ezstring', 226, 'ita-IT', 3, 0, 'home', 2),
(0, 4, 60, 0, NULL, 'seduta', 'ezstring', 227, 'ita-IT', 3, 0, 'seduta', 1),
(0, 155, 60, 0, NULL, '', 'ezstring', 228, 'ita-IT', 3, 0, '', 1),
(0, 119, 60, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n', 'ezxmltext', 229, 'ita-IT', 3, 0, '', 1),
(0, 156, 60, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n', 'ezxmltext', 230, 'ita-IT', 3, 0, '', 1),
(231, 158, 60, 0, 1, '', 'ezboolean', 231, 'ita-IT', 3, 1, '', 1),
(0, 309, 60, 0, NULL, '', 'ezkeyword', 232, 'ita-IT', 3, 0, '', 1),
(0, 4, 61, 0, NULL, 'Aree collaborative', 'ezstring', 233, 'ita-IT', 3, 0, 'aree collaborative', 1),
(0, 155, 61, 0, NULL, '', 'ezstring', 234, 'ita-IT', 3, 0, '', 1),
(0, 119, 61, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n', 'ezxmltext', 235, 'ita-IT', 3, 0, '', 1),
(0, 156, 61, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n', 'ezxmltext', 236, 'ita-IT', 3, 0, '', 1),
(237, 158, 61, 0, 1, '', 'ezboolean', 237, 'ita-IT', 3, 1, '', 1),
(0, 309, 61, 0, NULL, '', 'ezkeyword', 238, 'ita-IT', 3, 0, '', 1),
(0, 4, 62, 0, NULL, 'allegati_seduta', 'ezstring', 239, 'ita-IT', 3, 0, 'allegati_seduta', 1),
(0, 155, 62, 0, NULL, '', 'ezstring', 240, 'ita-IT', 3, 0, '', 1),
(0, 119, 62, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n', 'ezxmltext', 241, 'ita-IT', 3, 0, '', 1),
(0, 156, 62, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n', 'ezxmltext', 242, 'ita-IT', 3, 0, '', 1),
(243, 158, 62, 0, 1, '', 'ezboolean', 243, 'ita-IT', 3, 1, '', 1),
(0, 309, 62, 0, NULL, '', 'ezkeyword', 244, 'ita-IT', 3, 0, '', 1),
(0, 6, 63, 0, NULL, 'invitato', 'ezstring', 245, 'ita-IT', 3, 0, 'invitato', 1),
(0, 7, 63, 0, NULL, '', 'ezstring', 246, 'ita-IT', 3, 0, '', 1),
(0, 6, 64, 0, NULL, 'politico', 'ezstring', 247, 'ita-IT', 3, 0, 'politico', 1),
(0, 7, 64, 0, NULL, '', 'ezstring', 248, 'ita-IT', 3, 0, '', 1),
(0, 6, 65, 0, NULL, 'tecnico', 'ezstring', 249, 'ita-IT', 3, 0, 'tecnico', 1),
(0, 7, 65, 0, NULL, '', 'ezstring', 250, 'ita-IT', 3, 0, '', 1),
(0, 4, 66, 0, NULL, 'materia', 'ezstring', 251, 'ita-IT', 3, 0, 'materia', 1),
(0, 155, 66, 0, NULL, '', 'ezstring', 252, 'ita-IT', 3, 0, '', 1),
(0, 119, 66, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n', 'ezxmltext', 253, 'ita-IT', 3, 0, '', 1),
(0, 156, 66, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n', 'ezxmltext', 254, 'ita-IT', 3, 0, '', 1),
(255, 158, 66, 0, 1, '', 'ezboolean', 255, 'ita-IT', 3, 1, '', 1),
(0, 309, 66, 0, NULL, '', 'ezkeyword', 256, 'ita-IT', 3, 0, '', 1),
(0, 4, 67, 0, NULL, 'organo', 'ezstring', 257, 'ita-IT', 3, 0, 'organo', 1),
(0, 155, 67, 0, NULL, '', 'ezstring', 258, 'ita-IT', 3, 0, '', 1),
(0, 119, 67, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n', 'ezxmltext', 259, 'ita-IT', 3, 0, '', 1),
(0, 156, 67, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n', 'ezxmltext', 260, 'ita-IT', 3, 0, '', 1),
(261, 158, 67, 0, 1, '', 'ezboolean', 261, 'ita-IT', 3, 1, '', 1),
(0, 309, 67, 0, NULL, '', 'ezkeyword', 262, 'ita-IT', 3, 0, '', 1),
(0, 4, 68, 0, NULL, 'votazione', 'ezstring', 263, 'ita-IT', 3, 0, 'votazione', 1),
(0, 155, 68, 0, NULL, '', 'ezstring', 264, 'ita-IT', 3, 0, '', 1),
(0, 119, 68, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n', 'ezxmltext', 265, 'ita-IT', 3, 0, '', 1),
(0, 156, 68, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n', 'ezxmltext', 266, 'ita-IT', 3, 0, '', 1),
(267, 158, 68, 0, 1, '', 'ezboolean', 267, 'ita-IT', 3, 1, '', 1),
(0, 309, 68, 0, NULL, '', 'ezkeyword', 268, 'ita-IT', 3, 0, '', 1),
(0, 4, 69, 0, NULL, 'osservazioni', 'ezstring', 269, 'ita-IT', 3, 0, 'osservazioni', 1),
(0, 155, 69, 0, NULL, '', 'ezstring', 270, 'ita-IT', 3, 0, '', 1),
(0, 119, 69, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n', 'ezxmltext', 271, 'ita-IT', 3, 0, '', 1),
(0, 156, 69, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n', 'ezxmltext', 272, 'ita-IT', 3, 0, '', 1),
(273, 158, 69, 0, 1, '', 'ezboolean', 273, 'ita-IT', 3, 1, '', 1),
(0, 309, 69, 0, NULL, '', 'ezkeyword', 274, 'ita-IT', 3, 0, '', 1),
(0, 6, 70, 0, NULL, 'referentelocale', 'ezstring', 275, 'ita-IT', 3, 0, 'referentelocale', 1),
(0, 7, 70, 0, NULL, '', 'ezstring', 276, 'ita-IT', 3, 0, '', 1),
(0, 4, 71, 0, NULL, 'areacollaborativa', 'ezstring', 277, 'ita-IT', 3, 0, 'areacollaborativa', 1),
(0, 155, 71, 0, NULL, '', 'ezstring', 278, 'ita-IT', 3, 0, '', 1),
(0, 119, 71, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n', 'ezxmltext', 279, 'ita-IT', 3, 0, '', 1),
(0, 156, 71, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n', 'ezxmltext', 280, 'ita-IT', 3, 0, '', 1),
(281, 158, 71, 0, 1, '', 'ezboolean', 281, 'ita-IT', 3, 1, '', 1),
(0, 309, 71, 0, NULL, '', 'ezkeyword', 282, 'ita-IT', 3, 0, '', 1),
(0, 4, 72, 0, NULL, 'rendiconto_spese', 'ezstring', 283, 'ita-IT', 3, 0, 'rendiconto_spese', 1),
(0, 155, 72, 0, NULL, '', 'ezstring', 284, 'ita-IT', 3, 0, '', 1),
(0, 119, 72, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n', 'ezxmltext', 285, 'ita-IT', 3, 0, '', 1),
(0, 156, 72, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n', 'ezxmltext', 286, 'ita-IT', 3, 0, '', 1),
(287, 158, 72, 0, 1, '', 'ezboolean', 287, 'ita-IT', 3, 1, '', 1),
(0, 309, 72, 0, NULL, '', 'ezkeyword', 288, 'ita-IT', 3, 0, '', 1),
(0, 4, 73, 0, NULL, 'proposta', 'ezstring', 289, 'ita-IT', 3, 0, 'proposta', 1),
(0, 155, 73, 0, NULL, '', 'ezstring', 290, 'ita-IT', 3, 0, '', 1),
(0, 119, 73, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n', 'ezxmltext', 291, 'ita-IT', 3, 0, '', 1),
(0, 156, 73, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n', 'ezxmltext', 292, 'ita-IT', 3, 0, '', 1),
(293, 158, 73, 0, 1, '', 'ezboolean', 293, 'ita-IT', 3, 1, '', 1),
(0, 309, 73, 0, NULL, '', 'ezkeyword', 294, 'ita-IT', 3, 0, '', 1),
(0, 6, 74, 0, NULL, 'responsabilearea', 'ezstring', 295, 'ita-IT', 3, 0, 'responsabilearea', 1),
(0, 7, 74, 0, NULL, '', 'ezstring', 296, 'ita-IT', 3, 0, '', 1),
(0, 4, 75, 0, NULL, 'cda_evento', 'ezstring', 297, 'ita-IT', 3, 0, 'cda_evento', 1),
(0, 155, 75, 0, NULL, '', 'ezstring', 298, 'ita-IT', 3, 0, '', 1),
(0, 119, 75, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n', 'ezxmltext', 299, 'ita-IT', 3, 0, '', 1),
(0, 156, 75, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n', 'ezxmltext', 300, 'ita-IT', 3, 0, '', 1),
(301, 158, 75, 0, 1, '', 'ezboolean', 301, 'ita-IT', 3, 1, '', 1),
(0, 309, 75, 0, NULL, '', 'ezkeyword', 302, 'ita-IT', 3, 0, '', 1),
(0, 4, 76, 0, NULL, 'cda_documento', 'ezstring', 303, 'ita-IT', 3, 0, 'cda_documento', 1),
(0, 155, 76, 0, NULL, '', 'ezstring', 304, 'ita-IT', 3, 0, '', 1),
(0, 119, 76, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n', 'ezxmltext', 305, 'ita-IT', 3, 0, '', 1),
(0, 156, 76, 0, 1045487555, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<section xmlns:image=\"http://ez.no/namespaces/ezpublish3/image/\" xmlns:xhtml=\"http://ez.no/namespaces/ezpublish3/xhtml/\" xmlns:custom=\"http://ez.no/namespaces/ezpublish3/custom/\"/>\n', 'ezxmltext', 306, 'ita-IT', 3, 0, '', 1),
(307, 158, 76, 0, 1, '', 'ezboolean', 307, 'ita-IT', 3, 1, '', 1),
(0, 309, 76, 0, NULL, '', 'ezkeyword', 308, 'ita-IT', 3, 0, '', 1),
(0, 416, 10, NULL, NULL, NULL, 'ezselection', 309, 'ita-IT', 3, 0, '', 2),
(0, 416, 14, NULL, NULL, NULL, 'ezselection', 310, 'ita-IT', 3, 0, '', 3),
(0, 416, 14, NULL, NULL, NULL, 'ezselection', 310, 'ita-IT', 3, 0, '', 4),
(0, 416, 14, 0, NULL, '0', 'ezselection', 310, 'ita-IT', 3, 0, '0', 5),
(0, 417, 10, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1537999773\"/>\n', 'ezimage', 312, 'ita-IT', 3, 0, '', 2),
(0, 417, 14, NULL, NULL, NULL, 'ezimage', 313, 'ita-IT', 3, 0, '', 3),
(0, 417, 14, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538001271\"/>\n', 'ezimage', 313, 'ita-IT', 3, 0, '', 4),
(0, 417, 14, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538001271\"><original attribute_id=\"313\" attribute_version=\"5\" attribute_language=\"ita-IT\"/></ezimage>\n', 'ezimage', 313, 'ita-IT', 3, 0, '', 5),
(0, 418, 10, NULL, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 315, 'ita-IT', 3, 0, '', 2),
(0, 418, 14, NULL, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 316, 'ita-IT', 3, 0, '', 3),
(0, 418, 14, NULL, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 316, 'ita-IT', 3, 0, '', 4),
(0, 418, 14, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 316, 'ita-IT', 3, 0, '', 5),
(0, 419, 10, NULL, NULL, NULL, 'ezstring', 318, 'ita-IT', 3, 0, '', 2),
(0, 419, 14, NULL, NULL, NULL, 'ezstring', 319, 'ita-IT', 3, 0, '', 3),
(0, 419, 14, NULL, NULL, NULL, 'ezstring', 319, 'ita-IT', 3, 0, '', 4),
(0, 419, 14, 0, NULL, '', 'ezstring', 319, 'ita-IT', 3, 0, '', 5),
(0, 420, 10, NULL, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 321, 'ita-IT', 3, 0, '', 2),
(0, 420, 14, NULL, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 322, 'ita-IT', 3, 0, '', 3),
(0, 420, 14, NULL, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 322, 'ita-IT', 3, 0, '', 4),
(0, 420, 14, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 322, 'ita-IT', 3, 0, '', 5),
(0, 8, 154, 0, NULL, 'Germano\n        ', 'ezstring', 1016, 'ita-IT', 3, 0, 'germano\n        ', 1),
(0, 8, 154, 0, NULL, 'Germano\n        ', 'ezstring', 1016, 'ita-IT', 3, 0, 'germano\n        ', 2),
(0, 8, 154, 0, NULL, 'Germano\n        ', 'ezstring', 1016, 'ita-IT', 3, 0, 'germano\n        ', 3),
(0, 9, 154, 0, NULL, 'Preghenella\n        ', 'ezstring', 1017, 'ita-IT', 3, 0, 'preghenella\n        ', 1),
(0, 9, 154, 0, NULL, 'Preghenella\n        ', 'ezstring', 1017, 'ita-IT', 3, 0, 'preghenella\n        ', 2),
(0, 9, 154, 0, NULL, 'Preghenella\n        ', 'ezstring', 1017, 'ita-IT', 3, 0, 'preghenella\n        ', 3),
(1018, 12, 154, 0, NULL, '{\"login\":\"\\n            germano.preghenella\",\"password_hash\":\"3c4b907244f2d7fb0490d59ef97eff63\",\"email\":\"germano.preghenella@gruppomultiservizi.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1018, 'ita-IT', 3, 0, '', 1),
(1018, 12, 154, 0, NULL, '{\"login\":\"\\n            germano.preghenella\",\"password_hash\":\"3c4b907244f2d7fb0490d59ef97eff63\",\"email\":\"germano.preghenella@gruppomultiservizi.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1018, 'ita-IT', 3, 0, '', 2),
(1018, 12, 154, 0, NULL, '{\"login\":\"\\n            germano.preghenella\",\"password_hash\":\"3c4b907244f2d7fb0490d59ef97eff63\",\"email\":\"germano.preghenella@gruppomultiservizi.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1018, 'ita-IT', 3, 0, '', 3),
(0, 180, 154, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1019, 'ita-IT', 3, 0, '', 1),
(0, 180, 154, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Germano-Preghenella.jpg\" suffix=\"jpg\" basename=\"Germano-Preghenella\" dirpath=\"var/openconsiglio/storage/images/users/members/germano-preghenella/1019-2-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/germano-preghenella/1019-2-ita-IT/Germano-Preghenella.jpg\" original_filename=\"Preghenella-Germano.jpg\" mime_type=\"image/jpeg\" width=\"1300\" height=\"2004\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035857\"><original attribute_id=\"1019\" attribute_version=\"2\" attribute_language=\"ita-IT\"/><information Height=\"2004\" Width=\"1300\" IsColor=\"1\" ByteOrderMotorola=\"1\" ApertureFNumber=\"f/9.0\" FocusDistance=\"9441.00m\" UserComment=\" \" UserCommentEncoding=\"ASCII\" Copyright=\"©DinoPanato\" Thumbnail.FileType=\"2\" Thumbnail.MimeType=\"image/jpeg\"><serialized name=\"ifd0\" data=\"a:19:{s:10:&quot;ImageWidth&quot;;i:3280;s:11:&quot;ImageLength&quot;;i:4928;s:13:&quot;BitsPerSample&quot;;a:3:{i:0;i:8;i:1;i:8;i:2;i:8;}s:25:&quot;PhotometricInterpretation&quot;;i:2;s:16:&quot;ImageDescription&quot;;s:71:&quot;Assemblea federazione trentina cooperative 2015 Federcooop Cooperazione&quot;;s:4:&quot;Make&quot;;s:17:&quot;NIKON CORPORATION&quot;;s:5:&quot;Model&quot;;s:8:&quot;NIKON D4&quot;;s:11:&quot;Orientation&quot;;i:1;s:15:&quot;SamplesPerPixel&quot;;i:3;s:11:&quot;XResolution&quot;;s:5:&quot;300/1&quot;;s:11:&quot;YResolution&quot;;s:5:&quot;300/1&quot;;s:14:&quot;ResolutionUnit&quot;;i:2;s:8:&quot;Software&quot;;s:29:&quot;Adobe Photoshop CS5 Macintosh&quot;;s:8:&quot;DateTime&quot;;s:19:&quot;2015:06:12 17:53:52&quot;;s:6:&quot;Artist&quot;;s:14:&quot;DANIELE_PANATO&quot;;s:16:&quot;YCbCrPositioning&quot;;i:2;s:9:&quot;Copyright&quot;;s:12:&quot;©DinoPanato&quot;;s:16:&quot;Exif_IFD_Pointer&quot;;i:444;s:15:&quot;GPS_IFD_Pointer&quot;;i:1172;}\"/><array name=\"exif\"><item key=\"ExposureTime\" base64=\"1\">MTAvMzIwMA==</item><item key=\"FNumber\" base64=\"1\">OTAvMTA=</item><item key=\"ExposureProgram\" base64=\"1\">Mg==</item><item key=\"ISOSpeedRatings\" base64=\"1\">MjUwMA==</item><item key=\"UndefinedTag:0x8830\" base64=\"1\">Mg==</item><item key=\"ExifVersion\" base64=\"1\">MDIzMA==</item><item key=\"DateTimeOriginal\" base64=\"1\">MjAxNTowNjoxMiAxMzoxNjo1OA==</item><item key=\"DateTimeDigitized\" base64=\"1\">MjAxNTowNjoxMiAxMzoxNjo1OA==</item><item key=\"ComponentsConfiguration\" base64=\"1\">AQIDAA==</item><item key=\"CompressedBitsPerPixel\" base64=\"1\">NC8x</item><item key=\"ShutterSpeedValue\" base64=\"1\">ODMyMTkyOC8xMDAwMDAw</item><item key=\"ApertureValue\" base64=\"1\">NjMzOTg1LzEwMDAwMA==</item><item key=\"ExposureBiasValue\" base64=\"1\">MC82</item><item key=\"MaxApertureValue\" base64=\"1\">MzAvMTA=</item><item key=\"SubjectDistance\" base64=\"1\">OTQ0MS8x</item><item key=\"MeteringMode\" base64=\"1\">NQ==</item><item key=\"LightSource\" base64=\"1\">MA==</item><item key=\"Flash\" base64=\"1\">MA==</item><item key=\"FocalLength\" base64=\"1\">NDgwLzEw</item><item key=\"UserComment\" base64=\"1\">QVNDSUkAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</item><item key=\"SubSecTime\" base64=\"1\">MjA=</item><item key=\"SubSecTimeOriginal\" base64=\"1\">MjA=</item><item key=\"SubSecTimeDigitized\" base64=\"1\">MjA=</item><item key=\"FlashPixVersion\" base64=\"1\">MDEwMA==</item><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">MjgzNQ==</item><item key=\"ExifImageLength\" base64=\"1\">NDM3MA==</item><item key=\"InteroperabilityOffset\" base64=\"1\">MTE0MA==</item><item key=\"SensingMethod\" base64=\"1\">Mg==</item><item key=\"FileSource\" base64=\"1\">Aw==</item><item key=\"SceneType\" base64=\"1\">AQ==</item><item key=\"CFAPattern\" base64=\"1\">AAIAAgABAQI=</item><item key=\"CustomRendered\" base64=\"1\">MA==</item><item key=\"ExposureMode\" base64=\"1\">MA==</item><item key=\"WhiteBalance\" base64=\"1\">MA==</item><item key=\"DigitalZoomRatio\" base64=\"1\">MS8x</item><item key=\"FocalLengthIn35mmFilm\" base64=\"1\">NDg=</item><item key=\"SceneCaptureType\" base64=\"1\">MA==</item><item key=\"GainControl\" base64=\"1\">Mg==</item><item key=\"Contrast\" base64=\"1\">MA==</item><item key=\"Saturation\" base64=\"1\">MA==</item><item key=\"Sharpness\" base64=\"1\">MA==</item><item key=\"SubjectDistanceRange\" base64=\"1\">MA==</item></array></information></ezimage>\n', 'ezimage', 1019, 'ita-IT', 3, 0, '', 2),
(0, 180, 154, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Germano-Preghenella.jpg\" suffix=\"jpg\" basename=\"Germano-Preghenella\" dirpath=\"var/openconsiglio/storage/images/users/members/germano-preghenella/1019-3-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/germano-preghenella/1019-3-ita-IT/Germano-Preghenella.jpg\" original_filename=\"Preghenella-Germano.jpg\" mime_type=\"image/jpeg\" width=\"1300\" height=\"2004\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538037029\"><original attribute_id=\"1019\" attribute_version=\"3\" attribute_language=\"ita-IT\"/><information Height=\"2004\" Width=\"1300\" IsColor=\"1\" ByteOrderMotorola=\"1\" ApertureFNumber=\"f/9.0\" FocusDistance=\"9441.00m\" UserComment=\" \" UserCommentEncoding=\"ASCII\" Copyright=\"©DinoPanato\" Thumbnail.FileType=\"2\" Thumbnail.MimeType=\"image/jpeg\"><serialized name=\"ifd0\" data=\"a:19:{s:10:&quot;ImageWidth&quot;;i:3280;s:11:&quot;ImageLength&quot;;i:4928;s:13:&quot;BitsPerSample&quot;;a:3:{i:0;i:8;i:1;i:8;i:2;i:8;}s:25:&quot;PhotometricInterpretation&quot;;i:2;s:16:&quot;ImageDescription&quot;;s:71:&quot;Assemblea federazione trentina cooperative 2015 Federcooop Cooperazione&quot;;s:4:&quot;Make&quot;;s:17:&quot;NIKON CORPORATION&quot;;s:5:&quot;Model&quot;;s:8:&quot;NIKON D4&quot;;s:11:&quot;Orientation&quot;;i:1;s:15:&quot;SamplesPerPixel&quot;;i:3;s:11:&quot;XResolution&quot;;s:5:&quot;300/1&quot;;s:11:&quot;YResolution&quot;;s:5:&quot;300/1&quot;;s:14:&quot;ResolutionUnit&quot;;i:2;s:8:&quot;Software&quot;;s:29:&quot;Adobe Photoshop CS5 Macintosh&quot;;s:8:&quot;DateTime&quot;;s:19:&quot;2015:06:12 17:53:52&quot;;s:6:&quot;Artist&quot;;s:14:&quot;DANIELE_PANATO&quot;;s:16:&quot;YCbCrPositioning&quot;;i:2;s:9:&quot;Copyright&quot;;s:12:&quot;©DinoPanato&quot;;s:16:&quot;Exif_IFD_Pointer&quot;;i:444;s:15:&quot;GPS_IFD_Pointer&quot;;i:1172;}\"/><array name=\"exif\"><item key=\"ExposureTime\" base64=\"1\">MTAvMzIwMA==</item><item key=\"FNumber\" base64=\"1\">OTAvMTA=</item><item key=\"ExposureProgram\" base64=\"1\">Mg==</item><item key=\"ISOSpeedRatings\" base64=\"1\">MjUwMA==</item><item key=\"UndefinedTag:0x8830\" base64=\"1\">Mg==</item><item key=\"ExifVersion\" base64=\"1\">MDIzMA==</item><item key=\"DateTimeOriginal\" base64=\"1\">MjAxNTowNjoxMiAxMzoxNjo1OA==</item><item key=\"DateTimeDigitized\" base64=\"1\">MjAxNTowNjoxMiAxMzoxNjo1OA==</item><item key=\"ComponentsConfiguration\" base64=\"1\">AQIDAA==</item><item key=\"CompressedBitsPerPixel\" base64=\"1\">NC8x</item><item key=\"ShutterSpeedValue\" base64=\"1\">ODMyMTkyOC8xMDAwMDAw</item><item key=\"ApertureValue\" base64=\"1\">NjMzOTg1LzEwMDAwMA==</item><item key=\"ExposureBiasValue\" base64=\"1\">MC82</item><item key=\"MaxApertureValue\" base64=\"1\">MzAvMTA=</item><item key=\"SubjectDistance\" base64=\"1\">OTQ0MS8x</item><item key=\"MeteringMode\" base64=\"1\">NQ==</item><item key=\"LightSource\" base64=\"1\">MA==</item><item key=\"Flash\" base64=\"1\">MA==</item><item key=\"FocalLength\" base64=\"1\">NDgwLzEw</item><item key=\"UserComment\" base64=\"1\">QVNDSUkAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</item><item key=\"SubSecTime\" base64=\"1\">MjA=</item><item key=\"SubSecTimeOriginal\" base64=\"1\">MjA=</item><item key=\"SubSecTimeDigitized\" base64=\"1\">MjA=</item><item key=\"FlashPixVersion\" base64=\"1\">MDEwMA==</item><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">MjgzNQ==</item><item key=\"ExifImageLength\" base64=\"1\">NDM3MA==</item><item key=\"InteroperabilityOffset\" base64=\"1\">MTE0MA==</item><item key=\"SensingMethod\" base64=\"1\">Mg==</item><item key=\"FileSource\" base64=\"1\">Aw==</item><item key=\"SceneType\" base64=\"1\">AQ==</item><item key=\"CFAPattern\" base64=\"1\">AAIAAgABAQI=</item><item key=\"CustomRendered\" base64=\"1\">MA==</item><item key=\"ExposureMode\" base64=\"1\">MA==</item><item key=\"WhiteBalance\" base64=\"1\">MA==</item><item key=\"DigitalZoomRatio\" base64=\"1\">MS8x</item><item key=\"FocalLengthIn35mmFilm\" base64=\"1\">NDg=</item><item key=\"SceneCaptureType\" base64=\"1\">MA==</item><item key=\"GainControl\" base64=\"1\">Mg==</item><item key=\"Contrast\" base64=\"1\">MA==</item><item key=\"Saturation\" base64=\"1\">MA==</item><item key=\"Sharpness\" base64=\"1\">MA==</item><item key=\"SubjectDistanceRange\" base64=\"1\">MA==</item></array></information><alias name=\"small\" filename=\"Germano-Preghenella_small.jpg\" suffix=\"jpg\" dirpath=\"var/openconsiglio/storage/images/users/members/germano-preghenella/1019-3-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/germano-preghenella/1019-3-ita-IT/Germano-Preghenella_small.jpg\" mime_type=\"image/jpeg\" width=\"100\" height=\"154\" alias_key=\"18164146\" timestamp=\"1538037687\" is_valid=\"1\"/></ezimage>\n', 'ezimage', 1019, 'ita-IT', 3, 0, '', 3),
(0, 416, 154, 0, NULL, '', 'ezselection', 1020, 'ita-IT', 3, 0, '', 1),
(0, 416, 154, 0, NULL, '', 'ezselection', 1020, 'ita-IT', 3, 0, '', 2),
(0, 416, 154, 0, NULL, '', 'ezselection', 1020, 'ita-IT', 3, 0, '', 3),
(0, 417, 154, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1021, 'ita-IT', 3, 0, '', 1),
(0, 417, 154, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1021, 'ita-IT', 3, 0, '', 2),
(0, 417, 154, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1021, 'ita-IT', 3, 0, '', 3),
(0, 418, 154, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1022, 'ita-IT', 3, 0, '', 1),
(0, 418, 154, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1022, 'ita-IT', 3, 0, '', 2),
(0, 418, 154, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1022, 'ita-IT', 3, 0, '', 3),
(0, 419, 154, 0, NULL, '', 'ezstring', 1023, 'ita-IT', 3, 0, '', 1),
(0, 419, 154, 0, NULL, '', 'ezstring', 1023, 'ita-IT', 3, 0, '', 2),
(0, 419, 154, 0, NULL, '', 'ezstring', 1023, 'ita-IT', 3, 0, '', 3),
(0, 420, 154, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1024, 'ita-IT', 3, 0, '', 1),
(0, 420, 154, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1024, 'ita-IT', 3, 0, '', 2),
(0, 420, 154, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1024, 'ita-IT', 3, 0, '', 3),
(0, 8, 155, 0, NULL, 'Serenella\n        ', 'ezstring', 1025, 'ita-IT', 3, 0, 'serenella\n        ', 1),
(0, 8, 155, 0, NULL, 'Serenella\n        ', 'ezstring', 1025, 'ita-IT', 3, 0, 'serenella\n        ', 2),
(0, 8, 155, 0, NULL, 'Serenella\n        ', 'ezstring', 1025, 'ita-IT', 3, 0, 'serenella\n        ', 3),
(0, 9, 155, 0, NULL, 'Cipriani\n        ', 'ezstring', 1026, 'ita-IT', 3, 0, 'cipriani\n        ', 1),
(0, 9, 155, 0, NULL, 'Cipriani\n        ', 'ezstring', 1026, 'ita-IT', 3, 0, 'cipriani\n        ', 2),
(0, 9, 155, 0, NULL, 'Cipriani\n        ', 'ezstring', 1026, 'ita-IT', 3, 0, 'cipriani\n        ', 3),
(1027, 12, 155, 0, NULL, '{\"login\":\"\\n            serenella.cipriani\",\"password_hash\":\"68b442415c76a6d1d5b863bc39d944df\",\"email\":\"serenella.cipriani@gruppo78.org\",\"password_hash_type\":\"2\"}', 'ezuser', 1027, 'ita-IT', 3, 0, '', 1),
(1027, 12, 155, 0, NULL, '{\"login\":\"\\n            serenella.cipriani\",\"password_hash\":\"68b442415c76a6d1d5b863bc39d944df\",\"email\":\"serenella.cipriani@gruppo78.org\",\"password_hash_type\":\"2\"}', 'ezuser', 1027, 'ita-IT', 3, 0, '', 2),
(1027, 12, 155, 0, NULL, '{\"login\":\"\\n            serenella.cipriani\",\"password_hash\":\"68b442415c76a6d1d5b863bc39d944df\",\"email\":\"serenella.cipriani@gruppo78.org\",\"password_hash_type\":\"2\"}', 'ezuser', 1027, 'ita-IT', 3, 0, '', 3),
(0, 180, 155, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1028, 'ita-IT', 3, 0, '', 1),
(0, 180, 155, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Serenella-Cipriani.jpg\" suffix=\"jpg\" basename=\"Serenella-Cipriani\" dirpath=\"var/openconsiglio/storage/images/users/members/serenella-cipriani/1028-2-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/serenella-cipriani/1028-2-ita-IT/Serenella-Cipriani.jpg\" original_filename=\"Cipriani-Serenella.jpg\" mime_type=\"image/jpeg\" width=\"1300\" height=\"865\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035858\"><original attribute_id=\"1028\" attribute_version=\"2\" attribute_language=\"ita-IT\"/><information Height=\"865\" Width=\"1300\" IsColor=\"1\"/></ezimage>\n', 'ezimage', 1028, 'ita-IT', 3, 0, '', 2),
(0, 180, 155, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Serenella-Cipriani.jpg\" suffix=\"jpg\" basename=\"Serenella-Cipriani\" dirpath=\"var/openconsiglio/storage/images/users/members/serenella-cipriani/1028-3-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/serenella-cipriani/1028-3-ita-IT/Serenella-Cipriani.jpg\" original_filename=\"Cipriani-Serenella.jpg\" mime_type=\"image/jpeg\" width=\"1300\" height=\"865\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538037030\"><original attribute_id=\"1028\" attribute_version=\"3\" attribute_language=\"ita-IT\"/><information Height=\"865\" Width=\"1300\" IsColor=\"1\"/><alias name=\"small\" filename=\"Serenella-Cipriani_small.jpg\" suffix=\"jpg\" dirpath=\"var/openconsiglio/storage/images/users/members/serenella-cipriani/1028-3-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/serenella-cipriani/1028-3-ita-IT/Serenella-Cipriani_small.jpg\" mime_type=\"image/jpeg\" width=\"100\" height=\"67\" alias_key=\"18164146\" timestamp=\"1538037687\" is_valid=\"1\"/></ezimage>\n', 'ezimage', 1028, 'ita-IT', 3, 0, '', 3),
(0, 416, 155, 0, NULL, '', 'ezselection', 1029, 'ita-IT', 3, 0, '', 1),
(0, 416, 155, 0, NULL, '', 'ezselection', 1029, 'ita-IT', 3, 0, '', 2),
(0, 416, 155, 0, NULL, '', 'ezselection', 1029, 'ita-IT', 3, 0, '', 3),
(0, 417, 155, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1030, 'ita-IT', 3, 0, '', 1),
(0, 417, 155, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1030, 'ita-IT', 3, 0, '', 2),
(0, 417, 155, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1030, 'ita-IT', 3, 0, '', 3),
(0, 418, 155, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1031, 'ita-IT', 3, 0, '', 1),
(0, 418, 155, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1031, 'ita-IT', 3, 0, '', 2),
(0, 418, 155, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1031, 'ita-IT', 3, 0, '', 3),
(0, 419, 155, 0, NULL, '', 'ezstring', 1032, 'ita-IT', 3, 0, '', 1),
(0, 419, 155, 0, NULL, '', 'ezstring', 1032, 'ita-IT', 3, 0, '', 2),
(0, 419, 155, 0, NULL, '', 'ezstring', 1032, 'ita-IT', 3, 0, '', 3),
(0, 420, 155, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1033, 'ita-IT', 3, 0, '', 1),
(0, 420, 155, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1033, 'ita-IT', 3, 0, '', 2),
(0, 420, 155, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1033, 'ita-IT', 3, 0, '', 3),
(0, 8, 156, 0, NULL, 'Patrizia\n        ', 'ezstring', 1034, 'ita-IT', 3, 0, 'patrizia\n        ', 1),
(0, 8, 156, 0, NULL, 'Patrizia\n        ', 'ezstring', 1034, 'ita-IT', 3, 0, 'patrizia\n        ', 2),
(0, 8, 156, 0, NULL, 'Patrizia\n        ', 'ezstring', 1034, 'ita-IT', 3, 0, 'patrizia\n        ', 3),
(0, 9, 156, 0, NULL, 'Gentil\n        ', 'ezstring', 1035, 'ita-IT', 3, 0, 'gentil\n        ', 1),
(0, 9, 156, 0, NULL, 'Gentil\n        ', 'ezstring', 1035, 'ita-IT', 3, 0, 'gentil\n        ', 2),
(0, 9, 156, 0, NULL, 'Gentil\n        ', 'ezstring', 1035, 'ita-IT', 3, 0, 'gentil\n        ', 3);
INSERT INTO `ezcontentobject_attribute` (`attribute_original_id`, `contentclassattribute_id`, `contentobject_id`, `data_float`, `data_int`, `data_text`, `data_type_string`, `id`, `language_code`, `language_id`, `sort_key_int`, `sort_key_string`, `version`) VALUES
(1036, 12, 156, 0, NULL, '{\"login\":\"\\n            patrizia.gentil\",\"password_hash\":\"cbdbac7e8d88cb18bfd7488ca8f65c04\",\"email\":\"patrizia.gentil@taxconsulting.tn.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1036, 'ita-IT', 3, 0, '', 1),
(1036, 12, 156, 0, NULL, '{\"login\":\"\\n            patrizia.gentil\",\"password_hash\":\"cbdbac7e8d88cb18bfd7488ca8f65c04\",\"email\":\"patrizia.gentil@taxconsulting.tn.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1036, 'ita-IT', 3, 0, '', 2),
(1036, 12, 156, 0, NULL, '{\"login\":\"\\n            patrizia.gentil\",\"password_hash\":\"cbdbac7e8d88cb18bfd7488ca8f65c04\",\"email\":\"patrizia.gentil@taxconsulting.tn.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1036, 'ita-IT', 3, 0, '', 3),
(0, 180, 156, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1037, 'ita-IT', 3, 0, '', 1),
(0, 180, 156, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Patrizia-Gentil.jpg\" suffix=\"jpg\" basename=\"Patrizia-Gentil\" dirpath=\"var/openconsiglio/storage/images/users/members/patrizia-gentil/1037-2-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/patrizia-gentil/1037-2-ita-IT/Patrizia-Gentil.jpg\" original_filename=\"Gentil-Patrizia.jpg\" mime_type=\"image/jpeg\" width=\"1300\" height=\"865\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035858\"><original attribute_id=\"1037\" attribute_version=\"2\" attribute_language=\"ita-IT\"/><information Height=\"865\" Width=\"1300\" IsColor=\"1\"/></ezimage>\n', 'ezimage', 1037, 'ita-IT', 3, 0, '', 2),
(0, 180, 156, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Patrizia-Gentil.jpg\" suffix=\"jpg\" basename=\"Patrizia-Gentil\" dirpath=\"var/openconsiglio/storage/images/users/members/patrizia-gentil/1037-3-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/patrizia-gentil/1037-3-ita-IT/Patrizia-Gentil.jpg\" original_filename=\"Gentil-Patrizia.jpg\" mime_type=\"image/jpeg\" width=\"1300\" height=\"865\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538037030\"><original attribute_id=\"1037\" attribute_version=\"3\" attribute_language=\"ita-IT\"/><information Height=\"865\" Width=\"1300\" IsColor=\"1\"/><alias name=\"small\" filename=\"Patrizia-Gentil_small.jpg\" suffix=\"jpg\" dirpath=\"var/openconsiglio/storage/images/users/members/patrizia-gentil/1037-3-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/patrizia-gentil/1037-3-ita-IT/Patrizia-Gentil_small.jpg\" mime_type=\"image/jpeg\" width=\"100\" height=\"67\" alias_key=\"18164146\" timestamp=\"1538037687\" is_valid=\"1\"/></ezimage>\n', 'ezimage', 1037, 'ita-IT', 3, 0, '', 3),
(0, 416, 156, 0, NULL, '', 'ezselection', 1038, 'ita-IT', 3, 0, '', 1),
(0, 416, 156, 0, NULL, '', 'ezselection', 1038, 'ita-IT', 3, 0, '', 2),
(0, 416, 156, 0, NULL, '', 'ezselection', 1038, 'ita-IT', 3, 0, '', 3),
(0, 417, 156, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1039, 'ita-IT', 3, 0, '', 1),
(0, 417, 156, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1039, 'ita-IT', 3, 0, '', 2),
(0, 417, 156, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1039, 'ita-IT', 3, 0, '', 3),
(0, 418, 156, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1040, 'ita-IT', 3, 0, '', 1),
(0, 418, 156, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1040, 'ita-IT', 3, 0, '', 2),
(0, 418, 156, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1040, 'ita-IT', 3, 0, '', 3),
(0, 419, 156, 0, NULL, '', 'ezstring', 1041, 'ita-IT', 3, 0, '', 1),
(0, 419, 156, 0, NULL, '', 'ezstring', 1041, 'ita-IT', 3, 0, '', 2),
(0, 419, 156, 0, NULL, '', 'ezstring', 1041, 'ita-IT', 3, 0, '', 3),
(0, 420, 156, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1042, 'ita-IT', 3, 0, '', 1),
(0, 420, 156, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1042, 'ita-IT', 3, 0, '', 2),
(0, 420, 156, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1042, 'ita-IT', 3, 0, '', 3),
(0, 8, 157, 0, NULL, 'Lucia\n        ', 'ezstring', 1043, 'ita-IT', 3, 0, 'lucia\n        ', 1),
(0, 8, 157, 0, NULL, 'Lucia\n        ', 'ezstring', 1043, 'ita-IT', 3, 0, 'lucia\n        ', 2),
(0, 8, 157, 0, NULL, 'Lucia\n        ', 'ezstring', 1043, 'ita-IT', 3, 0, 'lucia\n        ', 3),
(0, 9, 157, 0, NULL, 'Corradini\n        ', 'ezstring', 1044, 'ita-IT', 3, 0, 'corradini\n        ', 1),
(0, 9, 157, 0, NULL, 'Corradini\n        ', 'ezstring', 1044, 'ita-IT', 3, 0, 'corradini\n        ', 2),
(0, 9, 157, 0, NULL, 'Corradini\n        ', 'ezstring', 1044, 'ita-IT', 3, 0, 'corradini\n        ', 3),
(1045, 12, 157, 0, NULL, '{\"login\":\"\\n            lucia.corradini\",\"password_hash\":\"1e9a8add9b515d07d14a116e078e831b\",\"email\":\"luciacorradini@studiocorradini.info\",\"password_hash_type\":\"2\"}', 'ezuser', 1045, 'ita-IT', 3, 0, '', 1),
(1045, 12, 157, 0, NULL, '{\"login\":\"\\n            lucia.corradini\",\"password_hash\":\"1e9a8add9b515d07d14a116e078e831b\",\"email\":\"luciacorradini@studiocorradini.info\",\"password_hash_type\":\"2\"}', 'ezuser', 1045, 'ita-IT', 3, 0, '', 2),
(1045, 12, 157, 0, NULL, '{\"login\":\"\\n            lucia.corradini\",\"password_hash\":\"1e9a8add9b515d07d14a116e078e831b\",\"email\":\"luciacorradini@studiocorradini.info\",\"password_hash_type\":\"2\"}', 'ezuser', 1045, 'ita-IT', 3, 0, '', 3),
(0, 180, 157, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1046, 'ita-IT', 3, 0, '', 1),
(0, 180, 157, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Lucia-Corradini.jpg\" suffix=\"jpg\" basename=\"Lucia-Corradini\" dirpath=\"var/openconsiglio/storage/images/users/members/lucia-corradini/1046-2-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/lucia-corradini/1046-2-ita-IT/Lucia-Corradini.jpg\" original_filename=\"Corradini-Lucia.jpg\" mime_type=\"image/jpeg\" width=\"1300\" height=\"1954\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035859\"><original attribute_id=\"1046\" attribute_version=\"2\" attribute_language=\"ita-IT\"/><information Height=\"1954\" Width=\"1300\" IsColor=\"1\"/></ezimage>\n', 'ezimage', 1046, 'ita-IT', 3, 0, '', 2),
(0, 180, 157, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Lucia-Corradini.jpg\" suffix=\"jpg\" basename=\"Lucia-Corradini\" dirpath=\"var/openconsiglio/storage/images/users/members/lucia-corradini/1046-3-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/lucia-corradini/1046-3-ita-IT/Lucia-Corradini.jpg\" original_filename=\"Corradini-Lucia.jpg\" mime_type=\"image/jpeg\" width=\"1300\" height=\"1954\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538037031\"><original attribute_id=\"1046\" attribute_version=\"3\" attribute_language=\"ita-IT\"/><information Height=\"1954\" Width=\"1300\" IsColor=\"1\"/><alias name=\"small\" filename=\"Lucia-Corradini_small.jpg\" suffix=\"jpg\" dirpath=\"var/openconsiglio/storage/images/users/members/lucia-corradini/1046-3-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/lucia-corradini/1046-3-ita-IT/Lucia-Corradini_small.jpg\" mime_type=\"image/jpeg\" width=\"100\" height=\"150\" alias_key=\"18164146\" timestamp=\"1538037688\" is_valid=\"1\"/></ezimage>\n', 'ezimage', 1046, 'ita-IT', 3, 0, '', 3),
(0, 416, 157, 0, NULL, '', 'ezselection', 1047, 'ita-IT', 3, 0, '', 1),
(0, 416, 157, 0, NULL, '', 'ezselection', 1047, 'ita-IT', 3, 0, '', 2),
(0, 416, 157, 0, NULL, '', 'ezselection', 1047, 'ita-IT', 3, 0, '', 3),
(0, 417, 157, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1048, 'ita-IT', 3, 0, '', 1),
(0, 417, 157, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1048, 'ita-IT', 3, 0, '', 2),
(0, 417, 157, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1048, 'ita-IT', 3, 0, '', 3),
(0, 418, 157, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"1\"/><c>lucia.corradini@libero.it\n        </c></ezmatrix>\n', 'ezmatrix', 1049, 'ita-IT', 3, 0, '', 1),
(0, 418, 157, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"1\"/><c>lucia.corradini@libero.it\n        </c></ezmatrix>\n', 'ezmatrix', 1049, 'ita-IT', 3, 0, '', 2),
(0, 418, 157, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"1\"/><c>lucia.corradini@libero.it\n        </c></ezmatrix>\n', 'ezmatrix', 1049, 'ita-IT', 3, 0, '', 3),
(0, 419, 157, 0, NULL, '', 'ezstring', 1050, 'ita-IT', 3, 0, '', 1),
(0, 419, 157, 0, NULL, '', 'ezstring', 1050, 'ita-IT', 3, 0, '', 2),
(0, 419, 157, 0, NULL, '', 'ezstring', 1050, 'ita-IT', 3, 0, '', 3),
(0, 420, 157, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1051, 'ita-IT', 3, 0, '', 1),
(0, 420, 157, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1051, 'ita-IT', 3, 0, '', 2),
(0, 420, 157, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1051, 'ita-IT', 3, 0, '', 3),
(0, 8, 158, 0, NULL, 'Emiliano\n        ', 'ezstring', 1052, 'ita-IT', 3, 0, 'emiliano\n        ', 1),
(0, 8, 158, 0, NULL, 'Emiliano\n        ', 'ezstring', 1052, 'ita-IT', 3, 0, 'emiliano\n        ', 2),
(0, 8, 158, 0, NULL, 'Emiliano\n        ', 'ezstring', 1052, 'ita-IT', 3, 0, 'emiliano\n        ', 3),
(0, 9, 158, 0, NULL, 'Trainotti\n        ', 'ezstring', 1053, 'ita-IT', 3, 0, 'trainotti\n        ', 1),
(0, 9, 158, 0, NULL, 'Trainotti\n        ', 'ezstring', 1053, 'ita-IT', 3, 0, 'trainotti\n        ', 2),
(0, 9, 158, 0, NULL, 'Trainotti\n        ', 'ezstring', 1053, 'ita-IT', 3, 0, 'trainotti\n        ', 3),
(1054, 12, 158, 0, NULL, '{\"login\":\"\\n            emiliano.trainotti\",\"password_hash\":\"b5ac539feb663ae1c9c21ecebf1bc2bd\",\"email\":\"emiliano@trainottiplast.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1054, 'ita-IT', 3, 0, '', 1),
(1054, 12, 158, 0, NULL, '{\"login\":\"\\n            emiliano.trainotti\",\"password_hash\":\"b5ac539feb663ae1c9c21ecebf1bc2bd\",\"email\":\"emiliano@trainottiplast.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1054, 'ita-IT', 3, 0, '', 2),
(1054, 12, 158, 0, NULL, '{\"login\":\"\\n            emiliano.trainotti\",\"password_hash\":\"b5ac539feb663ae1c9c21ecebf1bc2bd\",\"email\":\"emiliano@trainottiplast.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1054, 'ita-IT', 3, 0, '', 3),
(0, 180, 158, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1055, 'ita-IT', 3, 0, '', 1),
(0, 180, 158, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Emiliano-Trainotti.jpg\" suffix=\"jpg\" basename=\"Emiliano-Trainotti\" dirpath=\"var/openconsiglio/storage/images/users/members/emiliano-trainotti/1055-2-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/emiliano-trainotti/1055-2-ita-IT/Emiliano-Trainotti.jpg\" original_filename=\"Trainotti-Emiliano.jpg\" mime_type=\"image/jpeg\" width=\"1500\" height=\"1503\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035860\"><original attribute_id=\"1055\" attribute_version=\"2\" attribute_language=\"ita-IT\"/><information Height=\"1503\" Width=\"1500\" IsColor=\"1\"/></ezimage>\n', 'ezimage', 1055, 'ita-IT', 3, 0, '', 2),
(0, 180, 158, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Emiliano-Trainotti.jpg\" suffix=\"jpg\" basename=\"Emiliano-Trainotti\" dirpath=\"var/openconsiglio/storage/images/users/members/emiliano-trainotti/1055-3-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/emiliano-trainotti/1055-3-ita-IT/Emiliano-Trainotti.jpg\" original_filename=\"Trainotti-Emiliano.jpg\" mime_type=\"image/jpeg\" width=\"1500\" height=\"1503\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538037031\"><original attribute_id=\"1055\" attribute_version=\"3\" attribute_language=\"ita-IT\"/><information Height=\"1503\" Width=\"1500\" IsColor=\"1\"/><alias name=\"small\" filename=\"Emiliano-Trainotti_small.jpg\" suffix=\"jpg\" dirpath=\"var/openconsiglio/storage/images/users/members/emiliano-trainotti/1055-3-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/emiliano-trainotti/1055-3-ita-IT/Emiliano-Trainotti_small.jpg\" mime_type=\"image/jpeg\" width=\"100\" height=\"100\" alias_key=\"18164146\" timestamp=\"1538037688\" is_valid=\"1\"/></ezimage>\n', 'ezimage', 1055, 'ita-IT', 3, 0, '', 3),
(0, 416, 158, 0, NULL, '', 'ezselection', 1056, 'ita-IT', 3, 0, '', 1),
(0, 416, 158, 0, NULL, '', 'ezselection', 1056, 'ita-IT', 3, 0, '', 2),
(0, 416, 158, 0, NULL, '', 'ezselection', 1056, 'ita-IT', 3, 0, '', 3),
(0, 417, 158, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1057, 'ita-IT', 3, 0, '', 1),
(0, 417, 158, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1057, 'ita-IT', 3, 0, '', 2),
(0, 417, 158, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1057, 'ita-IT', 3, 0, '', 3),
(0, 418, 158, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1058, 'ita-IT', 3, 0, '', 1),
(0, 418, 158, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1058, 'ita-IT', 3, 0, '', 2),
(0, 418, 158, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1058, 'ita-IT', 3, 0, '', 3),
(0, 419, 158, 0, NULL, '', 'ezstring', 1059, 'ita-IT', 3, 0, '', 1),
(0, 419, 158, 0, NULL, '', 'ezstring', 1059, 'ita-IT', 3, 0, '', 2),
(0, 419, 158, 0, NULL, '', 'ezstring', 1059, 'ita-IT', 3, 0, '', 3),
(0, 420, 158, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1060, 'ita-IT', 3, 0, '', 1),
(0, 420, 158, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1060, 'ita-IT', 3, 0, '', 2),
(0, 420, 158, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1060, 'ita-IT', 3, 0, '', 3),
(0, 8, 159, 0, NULL, 'Antonio\n        ', 'ezstring', 1061, 'ita-IT', 3, 0, 'antonio\n        ', 1),
(0, 8, 159, 0, NULL, 'Antonio\n        ', 'ezstring', 1061, 'ita-IT', 3, 0, 'antonio\n        ', 2),
(0, 8, 159, 0, NULL, 'Antonio\n        ', 'ezstring', 1061, 'ita-IT', 3, 0, 'antonio\n        ', 3),
(0, 9, 159, 0, NULL, 'Borghetti\n        ', 'ezstring', 1062, 'ita-IT', 3, 0, 'borghetti\n        ', 1),
(0, 9, 159, 0, NULL, 'Borghetti\n        ', 'ezstring', 1062, 'ita-IT', 3, 0, 'borghetti\n        ', 2),
(0, 9, 159, 0, NULL, 'Borghetti\n        ', 'ezstring', 1062, 'ita-IT', 3, 0, 'borghetti\n        ', 3),
(1063, 12, 159, 0, NULL, '{\"login\":\"\\n            antonio.borghetti\",\"password_hash\":\"fa8440b9f6393bddcaea834ea05e18df\",\"email\":\"ab@studio-borghetti.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1063, 'ita-IT', 3, 0, '', 1),
(1063, 12, 159, 0, NULL, '{\"login\":\"\\n            antonio.borghetti\",\"password_hash\":\"fa8440b9f6393bddcaea834ea05e18df\",\"email\":\"ab@studio-borghetti.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1063, 'ita-IT', 3, 0, '', 2),
(1063, 12, 159, 0, NULL, '{\"login\":\"\\n            antonio.borghetti\",\"password_hash\":\"fa8440b9f6393bddcaea834ea05e18df\",\"email\":\"ab@studio-borghetti.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1063, 'ita-IT', 3, 0, '', 3),
(0, 180, 159, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1064, 'ita-IT', 3, 0, '', 1),
(0, 180, 159, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Antonio-Borghetti.jpg\" suffix=\"jpg\" basename=\"Antonio-Borghetti\" dirpath=\"var/openconsiglio/storage/images/users/members/antonio-borghetti/1064-2-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/antonio-borghetti/1064-2-ita-IT/Antonio-Borghetti.jpg\" original_filename=\"Borghetti-Antonio.jpg\" mime_type=\"image/jpeg\" width=\"564\" height=\"642\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035860\"><original attribute_id=\"1064\" attribute_version=\"2\" attribute_language=\"ita-IT\"/><information Height=\"642\" Width=\"564\" IsColor=\"1\"/></ezimage>\n', 'ezimage', 1064, 'ita-IT', 3, 0, '', 2),
(0, 180, 159, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Antonio-Borghetti.jpg\" suffix=\"jpg\" basename=\"Antonio-Borghetti\" dirpath=\"var/openconsiglio/storage/images/users/members/antonio-borghetti/1064-3-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/antonio-borghetti/1064-3-ita-IT/Antonio-Borghetti.jpg\" original_filename=\"Borghetti-Antonio.jpg\" mime_type=\"image/jpeg\" width=\"564\" height=\"642\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538037032\"><original attribute_id=\"1064\" attribute_version=\"3\" attribute_language=\"ita-IT\"/><information Height=\"642\" Width=\"564\" IsColor=\"1\"/><alias name=\"small\" filename=\"Antonio-Borghetti_small.jpg\" suffix=\"jpg\" dirpath=\"var/openconsiglio/storage/images/users/members/antonio-borghetti/1064-3-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/antonio-borghetti/1064-3-ita-IT/Antonio-Borghetti_small.jpg\" mime_type=\"image/jpeg\" width=\"100\" height=\"114\" alias_key=\"18164146\" timestamp=\"1538037688\" is_valid=\"1\"/></ezimage>\n', 'ezimage', 1064, 'ita-IT', 3, 0, '', 3),
(0, 416, 159, 0, NULL, '', 'ezselection', 1065, 'ita-IT', 3, 0, '', 1),
(0, 416, 159, 0, NULL, '', 'ezselection', 1065, 'ita-IT', 3, 0, '', 2),
(0, 416, 159, 0, NULL, '', 'ezselection', 1065, 'ita-IT', 3, 0, '', 3),
(0, 417, 159, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1066, 'ita-IT', 3, 0, '', 1),
(0, 417, 159, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1066, 'ita-IT', 3, 0, '', 2),
(0, 417, 159, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1066, 'ita-IT', 3, 0, '', 3),
(0, 418, 159, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1067, 'ita-IT', 3, 0, '', 1),
(0, 418, 159, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1067, 'ita-IT', 3, 0, '', 2),
(0, 418, 159, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1067, 'ita-IT', 3, 0, '', 3),
(0, 419, 159, 0, NULL, '', 'ezstring', 1068, 'ita-IT', 3, 0, '', 1),
(0, 419, 159, 0, NULL, '', 'ezstring', 1068, 'ita-IT', 3, 0, '', 2),
(0, 419, 159, 0, NULL, '', 'ezstring', 1068, 'ita-IT', 3, 0, '', 3),
(0, 420, 159, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1069, 'ita-IT', 3, 0, '', 1),
(0, 420, 159, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1069, 'ita-IT', 3, 0, '', 2),
(0, 420, 159, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1069, 'ita-IT', 3, 0, '', 3),
(0, 8, 160, 0, NULL, 'Renzo\n        ', 'ezstring', 1070, 'ita-IT', 3, 0, 'renzo\n        ', 1),
(0, 8, 160, 0, NULL, 'Renzo\n        ', 'ezstring', 1070, 'ita-IT', 3, 0, 'renzo\n        ', 2),
(0, 8, 160, 0, NULL, 'Renzo\n        ', 'ezstring', 1070, 'ita-IT', 3, 0, 'renzo\n        ', 3),
(0, 9, 160, 0, NULL, 'Tommasi\n        ', 'ezstring', 1071, 'ita-IT', 3, 0, 'tommasi\n        ', 1),
(0, 9, 160, 0, NULL, 'Tommasi\n        ', 'ezstring', 1071, 'ita-IT', 3, 0, 'tommasi\n        ', 2),
(0, 9, 160, 0, NULL, 'Tommasi\n        ', 'ezstring', 1071, 'ita-IT', 3, 0, 'tommasi\n        ', 3),
(1072, 12, 160, 0, NULL, '{\"login\":\"\\n            renzo.tommasi\",\"password_hash\":\"6d09c119be8bd40a08e08ea810960e9c\",\"email\":\"tommasirenzo@yahoo.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1072, 'ita-IT', 3, 0, '', 1),
(1072, 12, 160, 0, NULL, '{\"login\":\"\\n            renzo.tommasi\",\"password_hash\":\"6d09c119be8bd40a08e08ea810960e9c\",\"email\":\"tommasirenzo@yahoo.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1072, 'ita-IT', 3, 0, '', 2),
(1072, 12, 160, 0, NULL, '{\"login\":\"\\n            renzo.tommasi\",\"password_hash\":\"6d09c119be8bd40a08e08ea810960e9c\",\"email\":\"tommasirenzo@yahoo.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1072, 'ita-IT', 3, 0, '', 3),
(0, 180, 160, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1073, 'ita-IT', 3, 0, '', 1),
(0, 180, 160, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Renzo-Tommasi.jpg\" suffix=\"jpg\" basename=\"Renzo-Tommasi\" dirpath=\"var/openconsiglio/storage/images/users/members/renzo-tommasi/1073-2-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/renzo-tommasi/1073-2-ita-IT/Renzo-Tommasi.jpg\" original_filename=\"Tommasi-Renzo.jpg\" mime_type=\"image/jpeg\" width=\"778\" height=\"1200\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035860\"><original attribute_id=\"1073\" attribute_version=\"2\" attribute_language=\"ita-IT\"/><information Height=\"1200\" Width=\"778\" IsColor=\"1\"/></ezimage>\n', 'ezimage', 1073, 'ita-IT', 3, 0, '', 2),
(0, 180, 160, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Renzo-Tommasi.jpg\" suffix=\"jpg\" basename=\"Renzo-Tommasi\" dirpath=\"var/openconsiglio/storage/images/users/members/renzo-tommasi/1073-3-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/renzo-tommasi/1073-3-ita-IT/Renzo-Tommasi.jpg\" original_filename=\"Tommasi-Renzo.jpg\" mime_type=\"image/jpeg\" width=\"778\" height=\"1200\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538037032\"><original attribute_id=\"1073\" attribute_version=\"3\" attribute_language=\"ita-IT\"/><information Height=\"1200\" Width=\"778\" IsColor=\"1\"/><alias name=\"small\" filename=\"Renzo-Tommasi_small.jpg\" suffix=\"jpg\" dirpath=\"var/openconsiglio/storage/images/users/members/renzo-tommasi/1073-3-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/renzo-tommasi/1073-3-ita-IT/Renzo-Tommasi_small.jpg\" mime_type=\"image/jpeg\" width=\"100\" height=\"154\" alias_key=\"18164146\" timestamp=\"1538037709\" is_valid=\"1\"/></ezimage>\n', 'ezimage', 1073, 'ita-IT', 3, 0, '', 3),
(0, 416, 160, 0, NULL, '', 'ezselection', 1074, 'ita-IT', 3, 0, '', 1),
(0, 416, 160, 0, NULL, '', 'ezselection', 1074, 'ita-IT', 3, 0, '', 2),
(0, 416, 160, 0, NULL, '', 'ezselection', 1074, 'ita-IT', 3, 0, '', 3),
(0, 417, 160, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1075, 'ita-IT', 3, 0, '', 1),
(0, 417, 160, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1075, 'ita-IT', 3, 0, '', 2),
(0, 417, 160, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1075, 'ita-IT', 3, 0, '', 3),
(0, 418, 160, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1076, 'ita-IT', 3, 0, '', 1),
(0, 418, 160, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1076, 'ita-IT', 3, 0, '', 2),
(0, 418, 160, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1076, 'ita-IT', 3, 0, '', 3),
(0, 419, 160, 0, NULL, '', 'ezstring', 1077, 'ita-IT', 3, 0, '', 1),
(0, 419, 160, 0, NULL, '', 'ezstring', 1077, 'ita-IT', 3, 0, '', 2),
(0, 419, 160, 0, NULL, '', 'ezstring', 1077, 'ita-IT', 3, 0, '', 3),
(0, 420, 160, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1078, 'ita-IT', 3, 0, '', 1),
(0, 420, 160, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1078, 'ita-IT', 3, 0, '', 2),
(0, 420, 160, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1078, 'ita-IT', 3, 0, '', 3),
(0, 8, 161, 0, NULL, 'Sara\n        ', 'ezstring', 1079, 'ita-IT', 3, 0, 'sara\n        ', 1),
(0, 8, 161, 0, NULL, 'Sara\n        ', 'ezstring', 1079, 'ita-IT', 3, 0, 'sara\n        ', 2),
(0, 8, 161, 0, NULL, 'Sara\n        ', 'ezstring', 1079, 'ita-IT', 3, 0, 'sara\n        ', 3),
(0, 9, 161, 0, NULL, 'Ghezzer\n        ', 'ezstring', 1080, 'ita-IT', 3, 0, 'ghezzer\n        ', 1),
(0, 9, 161, 0, NULL, 'Ghezzer\n        ', 'ezstring', 1080, 'ita-IT', 3, 0, 'ghezzer\n        ', 2),
(0, 9, 161, 0, NULL, 'Ghezzer\n        ', 'ezstring', 1080, 'ita-IT', 3, 0, 'ghezzer\n        ', 3),
(1081, 12, 161, 0, NULL, '{\"login\":\"\\n            sara.ghezzer\",\"password_hash\":\"a45448c3cb381fc90664325b940cc138\",\"email\":\"sara.ghezzer@neuroimpronta.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1081, 'ita-IT', 3, 0, '', 1),
(1081, 12, 161, 0, NULL, '{\"login\":\"\\n            sara.ghezzer\",\"password_hash\":\"a45448c3cb381fc90664325b940cc138\",\"email\":\"sara.ghezzer@neuroimpronta.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1081, 'ita-IT', 3, 0, '', 2),
(1081, 12, 161, 0, NULL, '{\"login\":\"\\n            sara.ghezzer\",\"password_hash\":\"a45448c3cb381fc90664325b940cc138\",\"email\":\"sara.ghezzer@neuroimpronta.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1081, 'ita-IT', 3, 0, '', 3),
(0, 180, 161, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035575\"/>\n', 'ezimage', 1082, 'ita-IT', 3, 0, '', 1),
(0, 180, 161, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Sara-Ghezzer.jpg\" suffix=\"jpg\" basename=\"Sara-Ghezzer\" dirpath=\"var/openconsiglio/storage/images/users/members/sara-ghezzer/1082-2-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/sara-ghezzer/1082-2-ita-IT/Sara-Ghezzer.jpg\" original_filename=\"Ghezzer-Sara.jpg\" mime_type=\"image/jpeg\" width=\"711\" height=\"716\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035861\"><original attribute_id=\"1082\" attribute_version=\"2\" attribute_language=\"ita-IT\"/><information Height=\"716\" Width=\"711\" IsColor=\"1\"/></ezimage>\n', 'ezimage', 1082, 'ita-IT', 3, 0, '', 2),
(0, 180, 161, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Sara-Ghezzer.jpg\" suffix=\"jpg\" basename=\"Sara-Ghezzer\" dirpath=\"var/openconsiglio/storage/images/users/members/sara-ghezzer/1082-3-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/sara-ghezzer/1082-3-ita-IT/Sara-Ghezzer.jpg\" original_filename=\"Ghezzer-Sara.jpg\" mime_type=\"image/jpeg\" width=\"711\" height=\"716\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538037033\"><original attribute_id=\"1082\" attribute_version=\"3\" attribute_language=\"ita-IT\"/><information Height=\"716\" Width=\"711\" IsColor=\"1\"/><alias name=\"small\" filename=\"Sara-Ghezzer_small.jpg\" suffix=\"jpg\" dirpath=\"var/openconsiglio/storage/images/users/members/sara-ghezzer/1082-3-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/sara-ghezzer/1082-3-ita-IT/Sara-Ghezzer_small.jpg\" mime_type=\"image/jpeg\" width=\"100\" height=\"101\" alias_key=\"18164146\" timestamp=\"1538037709\" is_valid=\"1\"/></ezimage>\n', 'ezimage', 1082, 'ita-IT', 3, 0, '', 3),
(0, 416, 161, 0, NULL, '', 'ezselection', 1083, 'ita-IT', 3, 0, '', 1),
(0, 416, 161, 0, NULL, '', 'ezselection', 1083, 'ita-IT', 3, 0, '', 2),
(0, 416, 161, 0, NULL, '', 'ezselection', 1083, 'ita-IT', 3, 0, '', 3),
(0, 417, 161, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035576\"/>\n', 'ezimage', 1084, 'ita-IT', 3, 0, '', 1),
(0, 417, 161, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035576\"/>\n', 'ezimage', 1084, 'ita-IT', 3, 0, '', 2),
(0, 417, 161, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035576\"/>\n', 'ezimage', 1084, 'ita-IT', 3, 0, '', 3),
(0, 418, 161, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"1\"/><c>sara.ghezzer@gmail.com\n        </c></ezmatrix>\n', 'ezmatrix', 1085, 'ita-IT', 3, 0, '', 1),
(0, 418, 161, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"1\"/><c>sara.ghezzer@gmail.com\n        </c></ezmatrix>\n', 'ezmatrix', 1085, 'ita-IT', 3, 0, '', 2),
(0, 418, 161, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"1\"/><c>sara.ghezzer@gmail.com\n        </c></ezmatrix>\n', 'ezmatrix', 1085, 'ita-IT', 3, 0, '', 3),
(0, 419, 161, 0, NULL, '', 'ezstring', 1086, 'ita-IT', 3, 0, '', 1),
(0, 419, 161, 0, NULL, '', 'ezstring', 1086, 'ita-IT', 3, 0, '', 2),
(0, 419, 161, 0, NULL, '', 'ezstring', 1086, 'ita-IT', 3, 0, '', 3),
(0, 420, 161, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1087, 'ita-IT', 3, 0, '', 1),
(0, 420, 161, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1087, 'ita-IT', 3, 0, '', 2),
(0, 420, 161, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1087, 'ita-IT', 3, 0, '', 3),
(0, 8, 162, 0, NULL, 'Nadia\n        ', 'ezstring', 1088, 'ita-IT', 3, 0, 'nadia\n        ', 1),
(0, 8, 162, 0, NULL, 'Nadia\n        ', 'ezstring', 1088, 'ita-IT', 3, 0, 'nadia\n        ', 2),
(0, 8, 162, 0, NULL, 'Nadia\n        ', 'ezstring', 1088, 'ita-IT', 3, 0, 'nadia\n        ', 3),
(0, 9, 162, 0, NULL, 'Martinelli\n        ', 'ezstring', 1089, 'ita-IT', 3, 0, 'martinelli\n        ', 1),
(0, 9, 162, 0, NULL, 'Martinelli\n        ', 'ezstring', 1089, 'ita-IT', 3, 0, 'martinelli\n        ', 2),
(0, 9, 162, 0, NULL, 'Martinelli\n        ', 'ezstring', 1089, 'ita-IT', 3, 0, 'martinelli\n        ', 3),
(1090, 12, 162, 0, NULL, '{\"login\":\"\\n            nadia.martinelli\",\"password_hash\":\"d0bb3ac1a973762c361918d9596c4493\",\"email\":\"namartin@hotmail.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1090, 'ita-IT', 3, 0, '', 1),
(1090, 12, 162, 0, NULL, '{\"login\":\"\\n            nadia.martinelli\",\"password_hash\":\"d0bb3ac1a973762c361918d9596c4493\",\"email\":\"namartin@hotmail.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1090, 'ita-IT', 3, 0, '', 2),
(1090, 12, 162, 0, NULL, '{\"login\":\"\\n            nadia.martinelli\",\"password_hash\":\"d0bb3ac1a973762c361918d9596c4493\",\"email\":\"namartin@hotmail.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1090, 'ita-IT', 3, 0, '', 3),
(0, 180, 162, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035576\"/>\n', 'ezimage', 1091, 'ita-IT', 3, 0, '', 1),
(0, 180, 162, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Nadia-Martinelli.jpg\" suffix=\"jpg\" basename=\"Nadia-Martinelli\" dirpath=\"var/openconsiglio/storage/images/users/members/nadia-martinelli/1091-2-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/nadia-martinelli/1091-2-ita-IT/Nadia-Martinelli.jpg\" original_filename=\"Martinelli-Nadia.jpg\" mime_type=\"image/jpeg\" width=\"1300\" height=\"2004\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035861\"><original attribute_id=\"1091\" attribute_version=\"2\" attribute_language=\"ita-IT\"/><information Height=\"2004\" Width=\"1300\" IsColor=\"1\" ByteOrderMotorola=\"1\" ApertureFNumber=\"f/9.0\" FocusDistance=\"0.01m\" UserComment=\" \" UserCommentEncoding=\"ASCII\" Copyright=\"©DinoPanato\" Thumbnail.FileType=\"2\" Thumbnail.MimeType=\"image/jpeg\"><serialized name=\"ifd0\" data=\"a:19:{s:10:&quot;ImageWidth&quot;;i:3280;s:11:&quot;ImageLength&quot;;i:4928;s:13:&quot;BitsPerSample&quot;;a:3:{i:0;i:8;i:1;i:8;i:2;i:8;}s:25:&quot;PhotometricInterpretation&quot;;i:2;s:16:&quot;ImageDescription&quot;;s:71:&quot;Assemblea federazione trentina cooperative 2015 Federcooop Cooperazione&quot;;s:4:&quot;Make&quot;;s:17:&quot;NIKON CORPORATION&quot;;s:5:&quot;Model&quot;;s:8:&quot;NIKON D4&quot;;s:11:&quot;Orientation&quot;;i:1;s:15:&quot;SamplesPerPixel&quot;;i:3;s:11:&quot;XResolution&quot;;s:5:&quot;300/1&quot;;s:11:&quot;YResolution&quot;;s:5:&quot;300/1&quot;;s:14:&quot;ResolutionUnit&quot;;i:2;s:8:&quot;Software&quot;;s:29:&quot;Adobe Photoshop CS5 Macintosh&quot;;s:8:&quot;DateTime&quot;;s:19:&quot;2015:06:12 17:54:00&quot;;s:6:&quot;Artist&quot;;s:14:&quot;DANIELE_PANATO&quot;;s:16:&quot;YCbCrPositioning&quot;;i:2;s:9:&quot;Copyright&quot;;s:12:&quot;©DinoPanato&quot;;s:16:&quot;Exif_IFD_Pointer&quot;;i:444;s:15:&quot;GPS_IFD_Pointer&quot;;i:1172;}\"/><array name=\"exif\"><item key=\"ExposureTime\" base64=\"1\">MTAvMzIwMA==</item><item key=\"FNumber\" base64=\"1\">OTAvMTA=</item><item key=\"ExposureProgram\" base64=\"1\">Mg==</item><item key=\"ISOSpeedRatings\" base64=\"1\">MjUwMA==</item><item key=\"UndefinedTag:0x8830\" base64=\"1\">Mg==</item><item key=\"ExifVersion\" base64=\"1\">MDIzMA==</item><item key=\"DateTimeOriginal\" base64=\"1\">MjAxNTowNjoxMiAxMzoxNTo1MQ==</item><item key=\"DateTimeDigitized\" base64=\"1\">MjAxNTowNjoxMiAxMzoxNTo1MQ==</item><item key=\"ComponentsConfiguration\" base64=\"1\">AQIDAA==</item><item key=\"CompressedBitsPerPixel\" base64=\"1\">NC8x</item><item key=\"ShutterSpeedValue\" base64=\"1\">ODMyMTkyOC8xMDAwMDAw</item><item key=\"ApertureValue\" base64=\"1\">NjMzOTg1LzEwMDAwMA==</item><item key=\"ExposureBiasValue\" base64=\"1\">MC82</item><item key=\"MaxApertureValue\" base64=\"1\">MzAvMTA=</item><item key=\"SubjectDistance\" base64=\"1\">MS8xMDA=</item><item key=\"MeteringMode\" base64=\"1\">NQ==</item><item key=\"LightSource\" base64=\"1\">MA==</item><item key=\"Flash\" base64=\"1\">MA==</item><item key=\"FocalLength\" base64=\"1\">NTYwLzEw</item><item key=\"UserComment\" base64=\"1\">QVNDSUkAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</item><item key=\"SubSecTime\" base64=\"1\">MDA=</item><item key=\"SubSecTimeOriginal\" base64=\"1\">MDA=</item><item key=\"SubSecTimeDigitized\" base64=\"1\">MDA=</item><item key=\"FlashPixVersion\" base64=\"1\">MDEwMA==</item><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">MjgzNQ==</item><item key=\"ExifImageLength\" base64=\"1\">NDM3MA==</item><item key=\"InteroperabilityOffset\" base64=\"1\">MTE0MA==</item><item key=\"SensingMethod\" base64=\"1\">Mg==</item><item key=\"FileSource\" base64=\"1\">Aw==</item><item key=\"SceneType\" base64=\"1\">AQ==</item><item key=\"CFAPattern\" base64=\"1\">AAIAAgABAQI=</item><item key=\"CustomRendered\" base64=\"1\">MA==</item><item key=\"ExposureMode\" base64=\"1\">MA==</item><item key=\"WhiteBalance\" base64=\"1\">MA==</item><item key=\"DigitalZoomRatio\" base64=\"1\">MS8x</item><item key=\"FocalLengthIn35mmFilm\" base64=\"1\">NTY=</item><item key=\"SceneCaptureType\" base64=\"1\">MA==</item><item key=\"GainControl\" base64=\"1\">Mg==</item><item key=\"Contrast\" base64=\"1\">MA==</item><item key=\"Saturation\" base64=\"1\">MA==</item><item key=\"Sharpness\" base64=\"1\">MA==</item><item key=\"SubjectDistanceRange\" base64=\"1\">MA==</item></array></information></ezimage>\n', 'ezimage', 1091, 'ita-IT', 3, 0, '', 2);
INSERT INTO `ezcontentobject_attribute` (`attribute_original_id`, `contentclassattribute_id`, `contentobject_id`, `data_float`, `data_int`, `data_text`, `data_type_string`, `id`, `language_code`, `language_id`, `sort_key_int`, `sort_key_string`, `version`) VALUES
(0, 180, 162, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Nadia-Martinelli.jpg\" suffix=\"jpg\" basename=\"Nadia-Martinelli\" dirpath=\"var/openconsiglio/storage/images/users/members/nadia-martinelli/1091-3-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/nadia-martinelli/1091-3-ita-IT/Nadia-Martinelli.jpg\" original_filename=\"Martinelli-Nadia.jpg\" mime_type=\"image/jpeg\" width=\"1300\" height=\"2004\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538037034\"><original attribute_id=\"1091\" attribute_version=\"3\" attribute_language=\"ita-IT\"/><information Height=\"2004\" Width=\"1300\" IsColor=\"1\" ByteOrderMotorola=\"1\" ApertureFNumber=\"f/9.0\" FocusDistance=\"0.01m\" UserComment=\" \" UserCommentEncoding=\"ASCII\" Copyright=\"©DinoPanato\" Thumbnail.FileType=\"2\" Thumbnail.MimeType=\"image/jpeg\"><serialized name=\"ifd0\" data=\"a:19:{s:10:&quot;ImageWidth&quot;;i:3280;s:11:&quot;ImageLength&quot;;i:4928;s:13:&quot;BitsPerSample&quot;;a:3:{i:0;i:8;i:1;i:8;i:2;i:8;}s:25:&quot;PhotometricInterpretation&quot;;i:2;s:16:&quot;ImageDescription&quot;;s:71:&quot;Assemblea federazione trentina cooperative 2015 Federcooop Cooperazione&quot;;s:4:&quot;Make&quot;;s:17:&quot;NIKON CORPORATION&quot;;s:5:&quot;Model&quot;;s:8:&quot;NIKON D4&quot;;s:11:&quot;Orientation&quot;;i:1;s:15:&quot;SamplesPerPixel&quot;;i:3;s:11:&quot;XResolution&quot;;s:5:&quot;300/1&quot;;s:11:&quot;YResolution&quot;;s:5:&quot;300/1&quot;;s:14:&quot;ResolutionUnit&quot;;i:2;s:8:&quot;Software&quot;;s:29:&quot;Adobe Photoshop CS5 Macintosh&quot;;s:8:&quot;DateTime&quot;;s:19:&quot;2015:06:12 17:54:00&quot;;s:6:&quot;Artist&quot;;s:14:&quot;DANIELE_PANATO&quot;;s:16:&quot;YCbCrPositioning&quot;;i:2;s:9:&quot;Copyright&quot;;s:12:&quot;©DinoPanato&quot;;s:16:&quot;Exif_IFD_Pointer&quot;;i:444;s:15:&quot;GPS_IFD_Pointer&quot;;i:1172;}\"/><array name=\"exif\"><item key=\"ExposureTime\" base64=\"1\">MTAvMzIwMA==</item><item key=\"FNumber\" base64=\"1\">OTAvMTA=</item><item key=\"ExposureProgram\" base64=\"1\">Mg==</item><item key=\"ISOSpeedRatings\" base64=\"1\">MjUwMA==</item><item key=\"UndefinedTag:0x8830\" base64=\"1\">Mg==</item><item key=\"ExifVersion\" base64=\"1\">MDIzMA==</item><item key=\"DateTimeOriginal\" base64=\"1\">MjAxNTowNjoxMiAxMzoxNTo1MQ==</item><item key=\"DateTimeDigitized\" base64=\"1\">MjAxNTowNjoxMiAxMzoxNTo1MQ==</item><item key=\"ComponentsConfiguration\" base64=\"1\">AQIDAA==</item><item key=\"CompressedBitsPerPixel\" base64=\"1\">NC8x</item><item key=\"ShutterSpeedValue\" base64=\"1\">ODMyMTkyOC8xMDAwMDAw</item><item key=\"ApertureValue\" base64=\"1\">NjMzOTg1LzEwMDAwMA==</item><item key=\"ExposureBiasValue\" base64=\"1\">MC82</item><item key=\"MaxApertureValue\" base64=\"1\">MzAvMTA=</item><item key=\"SubjectDistance\" base64=\"1\">MS8xMDA=</item><item key=\"MeteringMode\" base64=\"1\">NQ==</item><item key=\"LightSource\" base64=\"1\">MA==</item><item key=\"Flash\" base64=\"1\">MA==</item><item key=\"FocalLength\" base64=\"1\">NTYwLzEw</item><item key=\"UserComment\" base64=\"1\">QVNDSUkAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=</item><item key=\"SubSecTime\" base64=\"1\">MDA=</item><item key=\"SubSecTimeOriginal\" base64=\"1\">MDA=</item><item key=\"SubSecTimeDigitized\" base64=\"1\">MDA=</item><item key=\"FlashPixVersion\" base64=\"1\">MDEwMA==</item><item key=\"ColorSpace\" base64=\"1\">MQ==</item><item key=\"ExifImageWidth\" base64=\"1\">MjgzNQ==</item><item key=\"ExifImageLength\" base64=\"1\">NDM3MA==</item><item key=\"InteroperabilityOffset\" base64=\"1\">MTE0MA==</item><item key=\"SensingMethod\" base64=\"1\">Mg==</item><item key=\"FileSource\" base64=\"1\">Aw==</item><item key=\"SceneType\" base64=\"1\">AQ==</item><item key=\"CFAPattern\" base64=\"1\">AAIAAgABAQI=</item><item key=\"CustomRendered\" base64=\"1\">MA==</item><item key=\"ExposureMode\" base64=\"1\">MA==</item><item key=\"WhiteBalance\" base64=\"1\">MA==</item><item key=\"DigitalZoomRatio\" base64=\"1\">MS8x</item><item key=\"FocalLengthIn35mmFilm\" base64=\"1\">NTY=</item><item key=\"SceneCaptureType\" base64=\"1\">MA==</item><item key=\"GainControl\" base64=\"1\">Mg==</item><item key=\"Contrast\" base64=\"1\">MA==</item><item key=\"Saturation\" base64=\"1\">MA==</item><item key=\"Sharpness\" base64=\"1\">MA==</item><item key=\"SubjectDistanceRange\" base64=\"1\">MA==</item></array></information><alias name=\"small\" filename=\"Nadia-Martinelli_small.jpg\" suffix=\"jpg\" dirpath=\"var/openconsiglio/storage/images/users/members/nadia-martinelli/1091-3-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/nadia-martinelli/1091-3-ita-IT/Nadia-Martinelli_small.jpg\" mime_type=\"image/jpeg\" width=\"100\" height=\"154\" alias_key=\"18164146\" timestamp=\"1538037709\" is_valid=\"1\"/></ezimage>\n', 'ezimage', 1091, 'ita-IT', 3, 0, '', 3),
(0, 416, 162, 0, NULL, '', 'ezselection', 1092, 'ita-IT', 3, 0, '', 1),
(0, 416, 162, 0, NULL, '', 'ezselection', 1092, 'ita-IT', 3, 0, '', 2),
(0, 416, 162, 0, NULL, '', 'ezselection', 1092, 'ita-IT', 3, 0, '', 3),
(0, 417, 162, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035576\"/>\n', 'ezimage', 1093, 'ita-IT', 3, 0, '', 1),
(0, 417, 162, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035576\"/>\n', 'ezimage', 1093, 'ita-IT', 3, 0, '', 2),
(0, 417, 162, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035576\"/>\n', 'ezimage', 1093, 'ita-IT', 3, 0, '', 3),
(0, 418, 162, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1094, 'ita-IT', 3, 0, '', 1),
(0, 418, 162, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1094, 'ita-IT', 3, 0, '', 2),
(0, 418, 162, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1094, 'ita-IT', 3, 0, '', 3),
(0, 419, 162, 0, NULL, '', 'ezstring', 1095, 'ita-IT', 3, 0, '', 1),
(0, 419, 162, 0, NULL, '', 'ezstring', 1095, 'ita-IT', 3, 0, '', 2),
(0, 419, 162, 0, NULL, '', 'ezstring', 1095, 'ita-IT', 3, 0, '', 3),
(0, 420, 162, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1096, 'ita-IT', 3, 0, '', 1),
(0, 420, 162, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1096, 'ita-IT', 3, 0, '', 2),
(0, 420, 162, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1096, 'ita-IT', 3, 0, '', 3),
(0, 8, 163, 0, NULL, 'Alessandro\n        ', 'ezstring', 1097, 'ita-IT', 3, 0, 'alessandro\n        ', 1),
(0, 8, 163, 0, NULL, 'Alessandro\n        ', 'ezstring', 1097, 'ita-IT', 3, 0, 'alessandro\n        ', 2),
(0, 8, 163, 0, NULL, 'Alessandro', 'ezstring', 1097, 'ita-IT', 3, 0, 'alessandro', 3),
(0, 8, 163, 0, NULL, 'Alessandro\n        ', 'ezstring', 1097, 'ita-IT', 3, 0, 'alessandro\n        ', 4),
(0, 8, 163, 0, NULL, 'Alessandro', 'ezstring', 1097, 'ita-IT', 3, 0, 'alessandro', 5),
(0, 9, 163, 0, NULL, 'Ceschi\n        ', 'ezstring', 1098, 'ita-IT', 3, 0, 'ceschi\n        ', 1),
(0, 9, 163, 0, NULL, 'Ceschi\n        ', 'ezstring', 1098, 'ita-IT', 3, 0, 'ceschi\n        ', 2),
(0, 9, 163, 0, NULL, 'Ceschi', 'ezstring', 1098, 'ita-IT', 3, 0, 'ceschi', 3),
(0, 9, 163, 0, NULL, 'Ceschi\n        ', 'ezstring', 1098, 'ita-IT', 3, 0, 'ceschi\n        ', 4),
(0, 9, 163, 0, NULL, 'Ceschi', 'ezstring', 1098, 'ita-IT', 3, 0, 'ceschi', 5),
(1099, 12, 163, 0, NULL, '{\"login\":\"\\n            alessandro.ceschi\",\"password_hash\":\"33ed096b7721618501b7d800f41c8a0e\",\"email\":\"alessandro.ceschi@ftcoop.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1099, 'ita-IT', 3, 0, '', 1),
(1099, 12, 163, 0, NULL, '{\"login\":\"\\n            alessandro.ceschi\",\"password_hash\":\"33ed096b7721618501b7d800f41c8a0e\",\"email\":\"alessandro.ceschi@ftcoop.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1099, 'ita-IT', 3, 0, '', 2),
(1099, 12, 163, 0, NULL, '{\"login\":\"\\n            alessandro.ceschi\",\"password_hash\":\"33ed096b7721618501b7d800f41c8a0e\",\"email\":\"alessandro.ceschi@ftcoop.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1099, 'ita-IT', 3, 0, '', 3),
(1099, 12, 163, 0, NULL, '{\"login\":\"\\n            alessandro.ceschi\",\"password_hash\":\"33ed096b7721618501b7d800f41c8a0e\",\"email\":\"alessandro.ceschi@ftcoop.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1099, 'ita-IT', 3, 0, '', 4),
(1099, 12, 163, 0, NULL, '{\"login\":\"\\n            alessandro.ceschi\",\"password_hash\":\"33ed096b7721618501b7d800f41c8a0e\",\"email\":\"alessandro.ceschi@ftcoop.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1099, 'ita-IT', 3, 0, '', 5),
(0, 180, 163, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035576\"/>\n', 'ezimage', 1100, 'ita-IT', 3, 0, '', 1),
(0, 180, 163, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Alessandro-Ceschi.jpg\" suffix=\"jpg\" basename=\"Alessandro-Ceschi\" dirpath=\"var/openconsiglio/storage/images/users/members/alessandro-ceschi/1100-2-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/alessandro-ceschi/1100-2-ita-IT/Alessandro-Ceschi.jpg\" original_filename=\"Ceschi-Alessandro.jpg\" mime_type=\"image/jpeg\" width=\"1170\" height=\"658\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035862\"><original attribute_id=\"1100\" attribute_version=\"2\" attribute_language=\"ita-IT\"/><information Height=\"658\" Width=\"1170\" IsColor=\"1\"/></ezimage>\n', 'ezimage', 1100, 'ita-IT', 3, 0, '', 2),
(0, 180, 163, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Alessandro-Ceschi.jpg\" suffix=\"jpg\" basename=\"Alessandro-Ceschi\" dirpath=\"var/openconsiglio/storage/images/users/members/alessandro-ceschi/1100-3-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/alessandro-ceschi/1100-3-ita-IT/Alessandro-Ceschi.jpg\" original_filename=\"Ceschi-Alessandro.jpg\" mime_type=\"image/jpeg\" width=\"1170\" height=\"658\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538036093\"><original attribute_id=\"1100\" attribute_version=\"3\" attribute_language=\"ita-IT\"/><information Height=\"658\" Width=\"1170\" IsColor=\"1\"/></ezimage>\n', 'ezimage', 1100, 'ita-IT', 3, 0, '', 3),
(0, 180, 163, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Alessandro-Ceschi.jpg\" suffix=\"jpg\" basename=\"Alessandro-Ceschi\" dirpath=\"var/openconsiglio/storage/images/users/members/alessandro-ceschi/1100-4-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/alessandro-ceschi/1100-4-ita-IT/Alessandro-Ceschi.jpg\" original_filename=\"Ceschi-Alessandro.jpg\" mime_type=\"image/jpeg\" width=\"1170\" height=\"658\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538037034\"><original attribute_id=\"1100\" attribute_version=\"4\" attribute_language=\"ita-IT\"/><information Height=\"658\" Width=\"1170\" IsColor=\"1\"/></ezimage>\n', 'ezimage', 1100, 'ita-IT', 3, 0, '', 4),
(0, 180, 163, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Alessandro-Ceschi.jpg\" suffix=\"jpg\" basename=\"Alessandro-Ceschi\" dirpath=\"var/openconsiglio/storage/images/users/members/alessandro-ceschi/1100-5-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/alessandro-ceschi/1100-5-ita-IT/Alessandro-Ceschi.jpg\" original_filename=\"Ceschi-Alessandro.jpg\" mime_type=\"image/jpeg\" width=\"1170\" height=\"658\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538037060\"><original attribute_id=\"1100\" attribute_version=\"5\" attribute_language=\"ita-IT\"/><information Height=\"658\" Width=\"1170\" IsColor=\"1\"/><alias name=\"small\" filename=\"Alessandro-Ceschi_small.jpg\" suffix=\"jpg\" dirpath=\"var/openconsiglio/storage/images/users/members/alessandro-ceschi/1100-5-ita-IT\" url=\"var/openconsiglio/storage/images/users/members/alessandro-ceschi/1100-5-ita-IT/Alessandro-Ceschi_small.jpg\" mime_type=\"image/jpeg\" width=\"100\" height=\"56\" alias_key=\"18164146\" timestamp=\"1538037701\" is_valid=\"1\"/></ezimage>\n', 'ezimage', 1100, 'ita-IT', 3, 0, '', 5),
(0, 416, 163, 0, NULL, '', 'ezselection', 1101, 'ita-IT', 3, 0, '', 1),
(0, 416, 163, 0, NULL, '', 'ezselection', 1101, 'ita-IT', 3, 0, '', 2),
(0, 416, 163, 0, NULL, '', 'ezselection', 1101, 'ita-IT', 3, 0, '', 3),
(0, 416, 163, 0, NULL, '', 'ezselection', 1101, 'ita-IT', 3, 0, '', 4),
(0, 416, 163, 0, NULL, '', 'ezselection', 1101, 'ita-IT', 3, 0, '', 5),
(0, 417, 163, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035576\"/>\n', 'ezimage', 1102, 'ita-IT', 3, 0, '', 1),
(0, 417, 163, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035576\"/>\n', 'ezimage', 1102, 'ita-IT', 3, 0, '', 2),
(0, 417, 163, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035576\"/>\n', 'ezimage', 1102, 'ita-IT', 3, 0, '', 3),
(0, 417, 163, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035576\"/>\n', 'ezimage', 1102, 'ita-IT', 3, 0, '', 4),
(0, 417, 163, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538035576\"/>\n', 'ezimage', 1102, 'ita-IT', 3, 0, '', 5),
(0, 418, 163, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1103, 'ita-IT', 3, 0, '', 1),
(0, 418, 163, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1103, 'ita-IT', 3, 0, '', 2),
(0, 418, 163, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1103, 'ita-IT', 3, 0, '', 3),
(0, 418, 163, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1103, 'ita-IT', 3, 0, '', 4),
(0, 418, 163, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1103, 'ita-IT', 3, 0, '', 5),
(0, 419, 163, 0, NULL, '', 'ezstring', 1104, 'ita-IT', 3, 0, '', 1),
(0, 419, 163, 0, NULL, '', 'ezstring', 1104, 'ita-IT', 3, 0, '', 2),
(0, 419, 163, 0, NULL, '', 'ezstring', 1104, 'ita-IT', 3, 0, '', 3),
(0, 419, 163, 0, NULL, '', 'ezstring', 1104, 'ita-IT', 3, 0, '', 4),
(0, 419, 163, 0, NULL, '', 'ezstring', 1104, 'ita-IT', 3, 0, '', 5),
(0, 420, 163, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1105, 'ita-IT', 3, 0, '', 1),
(0, 420, 163, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1105, 'ita-IT', 3, 0, '', 2),
(0, 420, 163, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1105, 'ita-IT', 3, 0, '', 3),
(0, 420, 163, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1105, 'ita-IT', 3, 0, '', 4),
(0, 420, 163, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1105, 'ita-IT', 3, 0, '', 5),
(0, 8, 166, 0, NULL, 'Martina', 'ezstring', 1124, 'ita-IT', 3, 0, 'martina', 1),
(0, 9, 166, 0, NULL, 'DeGramatica', 'ezstring', 1125, 'ita-IT', 3, 0, 'degramatica', 1),
(1126, 12, 166, 0, NULL, '{\"login\":\"martina.degramatica\",\"password_hash\":\"0f5ae4b94c6de8fa2c9b8fa57c51e3e5\",\"email\":\"martina.degramatica@ftcoop.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1126, 'ita-IT', 3, 0, '', 1),
(0, 180, 166, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538037054\"/>\n', 'ezimage', 1127, 'ita-IT', 3, 0, '', 1),
(0, 416, 166, 0, NULL, '', 'ezselection', 1128, 'ita-IT', 3, 0, '', 1),
(0, 417, 166, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538036087\"/>\n', 'ezimage', 1129, 'ita-IT', 3, 0, '', 1),
(0, 418, 166, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"1\"/><c>martina.degramatica@ftcoop.it</c></ezmatrix>\n', 'ezmatrix', 1130, 'ita-IT', 3, 0, '', 1),
(0, 419, 166, 0, NULL, '', 'ezstring', 1131, 'ita-IT', 3, 0, '', 1),
(0, 420, 166, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1132, 'ita-IT', 3, 0, '', 1),
(0, 8, 171, 0, NULL, 'Enrico', 'ezstring', 1169, 'ita-IT', 3, 0, 'enrico', 1),
(0, 8, 171, 0, NULL, 'Enrico', 'ezstring', 1169, 'ita-IT', 3, 0, 'enrico', 2),
(0, 9, 171, 0, NULL, 'Cozzio', 'ezstring', 1170, 'ita-IT', 3, 0, 'cozzio', 1),
(0, 9, 171, 0, NULL, 'Cozzio', 'ezstring', 1170, 'ita-IT', 3, 0, 'cozzio', 2),
(1171, 12, 171, 0, NULL, '{\"login\":\"\",\"password_hash\":\"\",\"email\":\"\",\"password_hash_type\":\"1\"}', 'ezuser', 1171, 'ita-IT', 3, 0, '', 1),
(1171, 12, 171, 0, NULL, '{\"login\":\"\",\"password_hash\":\"\",\"email\":\"\",\"password_hash_type\":\"1\"}', 'ezuser', 1171, 'ita-IT', 3, 0, '', 2),
(0, 180, 171, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538037059\"/>\n', 'ezimage', 1172, 'ita-IT', 3, 0, '', 1),
(0, 180, 171, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538037059\"/>\n', 'ezimage', 1172, 'ita-IT', 3, 0, '', 2),
(0, 416, 171, 0, NULL, '', 'ezselection', 1173, 'ita-IT', 3, 0, '', 1),
(0, 416, 171, 0, NULL, '', 'ezselection', 1173, 'ita-IT', 3, 0, '', 2),
(0, 417, 171, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538036093\"/>\n', 'ezimage', 1174, 'ita-IT', 3, 0, '', 1),
(0, 417, 171, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538036093\"/>\n', 'ezimage', 1174, 'ita-IT', 3, 0, '', 2),
(0, 418, 171, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"1\"/><c>enrico.cozzio@ftcoop.it</c></ezmatrix>\n', 'ezmatrix', 1175, 'ita-IT', 3, 0, '', 1),
(0, 418, 171, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"1\"/><c>enrico.cozzio@ftcoop.it</c></ezmatrix>\n', 'ezmatrix', 1175, 'ita-IT', 3, 0, '', 2),
(0, 419, 171, 0, NULL, '', 'ezstring', 1176, 'ita-IT', 3, 0, '', 1),
(0, 419, 171, 0, NULL, '', 'ezstring', 1176, 'ita-IT', 3, 0, '', 2),
(0, 420, 171, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1177, 'ita-IT', 3, 0, '', 1),
(0, 420, 171, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1177, 'ita-IT', 3, 0, '', 2),
(0, 8, 172, 0, NULL, 'Giulia', 'ezstring', 1178, 'ita-IT', 3, 0, 'giulia', 1),
(0, 9, 172, 0, NULL, 'Comper', 'ezstring', 1179, 'ita-IT', 3, 0, 'comper', 1),
(1180, 12, 172, 0, NULL, '{\"login\":\"giulia.comper\",\"password_hash\":\"8d0f1de2d5656f8dad6e0423b4060949\",\"email\":\"giulia.comper@ftcoop.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1180, 'ita-IT', 3, 0, '', 1),
(0, 180, 172, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538037059\"/>\n', 'ezimage', 1181, 'ita-IT', 3, 0, '', 1),
(0, 416, 172, 0, NULL, '', 'ezselection', 1182, 'ita-IT', 3, 0, '', 1),
(0, 417, 172, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538036093\"/>\n', 'ezimage', 1183, 'ita-IT', 3, 0, '', 1),
(0, 418, 172, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"1\"/><c>giulia.comper@ftcoop.it</c></ezmatrix>\n', 'ezmatrix', 1184, 'ita-IT', 3, 0, '', 1),
(0, 419, 172, 0, NULL, '', 'ezstring', 1185, 'ita-IT', 3, 0, '', 1),
(0, 420, 172, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1186, 'ita-IT', 3, 0, '', 1),
(0, 8, 173, 0, NULL, 'Federico', 'ezstring', 1187, 'ita-IT', 3, 0, 'federico', 1),
(0, 9, 173, 0, NULL, 'Genetti', 'ezstring', 1188, 'ita-IT', 3, 0, 'genetti', 1),
(1189, 12, 173, 0, NULL, '{\"login\":\"federico.genetti\",\"password_hash\":\"f03e2c844f4480e472d6f8e51c650017\",\"email\":\"federico.genetti@ftcoop.it\",\"password_hash_type\":\"2\"}', 'ezuser', 1189, 'ita-IT', 3, 0, '', 1),
(0, 180, 173, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538037060\"/>\n', 'ezimage', 1190, 'ita-IT', 3, 0, '', 1),
(0, 416, 173, 0, NULL, '', 'ezselection', 1191, 'ita-IT', 3, 0, '', 1),
(0, 417, 173, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1538036094\"/>\n', 'ezimage', 1192, 'ita-IT', 3, 0, '', 1),
(0, 418, 173, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"1\"><column num=\"0\" id=\"email\">E-mail</column></columns><rows number=\"1\"/><c>federico.genetti@ftcoop.it</c></ezmatrix>\n', 'ezmatrix', 1193, 'ita-IT', 3, 0, '', 1),
(0, 419, 173, 0, NULL, '', 'ezstring', 1194, 'ita-IT', 3, 0, '', 1),
(0, 420, 173, 0, NULL, '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezmatrix><name/><columns number=\"2\"><column num=\"0\" id=\"tel\">Telefono</column><column num=\"1\" id=\"mobile\">Cellulare</column></columns><rows number=\"0\"/></ezmatrix>\n', 'ezmatrix', 1195, 'ita-IT', 3, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ezcontentobject_link`
--

CREATE TABLE `ezcontentobject_link` (
  `contentclassattribute_id` int(11) NOT NULL DEFAULT '0',
  `from_contentobject_id` int(11) NOT NULL DEFAULT '0',
  `from_contentobject_version` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `relation_type` int(11) NOT NULL DEFAULT '1',
  `to_contentobject_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezcontentobject_name`
--

CREATE TABLE `ezcontentobject_name` (
  `content_translation` varchar(20) NOT NULL DEFAULT '',
  `content_version` int(11) NOT NULL DEFAULT '0',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `language_id` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `real_translation` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezcontentobject_name`
--

INSERT INTO `ezcontentobject_name` (`content_translation`, `content_version`, `contentobject_id`, `language_id`, `name`, `real_translation`) VALUES
('ita-IT', 1, 4, 3, 'Users', 'ita-IT'),
('ita-IT', 2, 10, 3, 'Anonymous User', 'ita-IT'),
('ita-IT', 1, 11, 3, 'Guest accounts', 'ita-IT'),
('ita-IT', 2, 11, 3, 'Members', 'ita-IT'),
('ita-IT', 1, 12, 3, 'Administrator users', 'ita-IT'),
('ita-IT', 3, 14, 3, 'Administrator User', 'ita-IT'),
('ita-IT', 4, 14, 3, 'Administrator User', 'ita-IT'),
('ita-IT', 5, 14, 3, 'Administrator User', 'ita-IT'),
('ita-IT', 1, 41, 3, 'Media', 'ita-IT'),
('ita-IT', 1, 42, 3, 'Anonymous Users', 'ita-IT'),
('ita-IT', 1, 45, 3, 'Setup', 'ita-IT'),
('ita-IT', 1, 49, 3, 'Images', 'ita-IT'),
('ita-IT', 1, 50, 3, 'Files', 'ita-IT'),
('ita-IT', 1, 51, 3, 'Multimedia', 'ita-IT'),
('ita-IT', 1, 52, 2, 'Common INI settings', 'ita-IT'),
('ita-IT', 2, 54, 2, 'openconsiglio', 'ita-IT'),
('ita-IT', 1, 56, 3, 'Design', 'ita-IT'),
('ita-IT', 2, 57, 3, 'Home', 'ita-IT'),
('ita-IT', 1, 60, 3, 'seduta', 'ita-IT'),
('ita-IT', 1, 61, 3, 'Aree collaborative', 'ita-IT'),
('ita-IT', 1, 62, 3, 'allegati_seduta', 'ita-IT'),
('ita-IT', 1, 63, 3, 'invitato', 'ita-IT'),
('ita-IT', 1, 64, 3, 'politico', 'ita-IT'),
('ita-IT', 1, 65, 3, 'tecnico', 'ita-IT'),
('ita-IT', 1, 66, 3, 'materia', 'ita-IT'),
('ita-IT', 1, 67, 3, 'organo', 'ita-IT'),
('ita-IT', 1, 68, 3, 'votazione', 'ita-IT'),
('ita-IT', 1, 69, 3, 'osservazioni', 'ita-IT'),
('ita-IT', 1, 70, 3, 'referentelocale', 'ita-IT'),
('ita-IT', 1, 71, 3, 'areacollaborativa', 'ita-IT'),
('ita-IT', 1, 72, 3, 'rendiconto_spese', 'ita-IT'),
('ita-IT', 1, 73, 3, 'proposta', 'ita-IT'),
('ita-IT', 1, 74, 3, 'responsabilearea', 'ita-IT'),
('ita-IT', 1, 75, 3, 'cda_evento', 'ita-IT'),
('ita-IT', 1, 76, 3, 'cda_documento', 'ita-IT'),
('ita-IT', 1, 154, 3, 'Germano\n         Preghenella\n        ', 'ita-IT'),
('ita-IT', 2, 154, 3, 'Germano\n         Preghenella\n        ', 'ita-IT'),
('ita-IT', 3, 154, 3, 'Germano\n         Preghenella\n        ', 'ita-IT'),
('ita-IT', 1, 155, 3, 'Serenella\n         Cipriani\n        ', 'ita-IT'),
('ita-IT', 2, 155, 3, 'Serenella\n         Cipriani\n        ', 'ita-IT'),
('ita-IT', 3, 155, 3, 'Serenella\n         Cipriani\n        ', 'ita-IT'),
('ita-IT', 1, 156, 3, 'Patrizia\n         Gentil\n        ', 'ita-IT'),
('ita-IT', 2, 156, 3, 'Patrizia\n         Gentil\n        ', 'ita-IT'),
('ita-IT', 3, 156, 3, 'Patrizia\n         Gentil\n        ', 'ita-IT'),
('ita-IT', 1, 157, 3, 'Lucia\n         Corradini\n        ', 'ita-IT'),
('ita-IT', 2, 157, 3, 'Lucia\n         Corradini\n        ', 'ita-IT'),
('ita-IT', 3, 157, 3, 'Lucia\n         Corradini\n        ', 'ita-IT'),
('ita-IT', 1, 158, 3, 'Emiliano\n         Trainotti\n        ', 'ita-IT'),
('ita-IT', 2, 158, 3, 'Emiliano\n         Trainotti\n        ', 'ita-IT'),
('ita-IT', 3, 158, 3, 'Emiliano\n         Trainotti\n        ', 'ita-IT'),
('ita-IT', 1, 159, 3, 'Antonio\n         Borghetti\n        ', 'ita-IT'),
('ita-IT', 2, 159, 3, 'Antonio\n         Borghetti\n        ', 'ita-IT'),
('ita-IT', 3, 159, 3, 'Antonio\n         Borghetti\n        ', 'ita-IT'),
('ita-IT', 1, 160, 3, 'Renzo\n         Tommasi\n        ', 'ita-IT'),
('ita-IT', 2, 160, 3, 'Renzo\n         Tommasi\n        ', 'ita-IT'),
('ita-IT', 3, 160, 3, 'Renzo\n         Tommasi\n        ', 'ita-IT'),
('ita-IT', 1, 161, 3, 'Sara\n         Ghezzer\n        ', 'ita-IT'),
('ita-IT', 2, 161, 3, 'Sara\n         Ghezzer\n        ', 'ita-IT'),
('ita-IT', 3, 161, 3, 'Sara\n         Ghezzer\n        ', 'ita-IT'),
('ita-IT', 1, 162, 3, 'Nadia\n         Martinelli\n        ', 'ita-IT'),
('ita-IT', 2, 162, 3, 'Nadia\n         Martinelli\n        ', 'ita-IT'),
('ita-IT', 3, 162, 3, 'Nadia\n         Martinelli\n        ', 'ita-IT'),
('ita-IT', 1, 163, 3, 'Alessandro\n         Ceschi\n        ', 'ita-IT'),
('ita-IT', 2, 163, 3, 'Alessandro\n         Ceschi\n        ', 'ita-IT'),
('ita-IT', 3, 163, 3, 'Alessandro Ceschi', 'ita-IT'),
('ita-IT', 4, 163, 3, 'Alessandro\n         Ceschi\n        ', 'ita-IT'),
('ita-IT', 5, 163, 3, 'Alessandro Ceschi', 'ita-IT'),
('ita-IT', 1, 166, 3, 'Martina DeGramatica', 'ita-IT'),
('ita-IT', 1, 171, 3, 'Enrico Cozzio', 'ita-IT'),
('ita-IT', 2, 171, 3, 'Enrico Cozzio', 'ita-IT'),
('ita-IT', 1, 172, 3, 'Giulia Comper', 'ita-IT'),
('ita-IT', 1, 173, 3, 'Federico Genetti', 'ita-IT');

-- --------------------------------------------------------

--
-- Table structure for table `ezcontentobject_trash`
--

CREATE TABLE `ezcontentobject_trash` (
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL DEFAULT '0',
  `is_hidden` int(11) NOT NULL DEFAULT '0',
  `is_invisible` int(11) NOT NULL DEFAULT '0',
  `main_node_id` int(11) DEFAULT NULL,
  `modified_subnode` int(11) DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `parent_node_id` int(11) NOT NULL DEFAULT '0',
  `path_identification_string` longtext,
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `sort_field` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezcontentobject_tree`
--

CREATE TABLE `ezcontentobject_tree` (
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_is_published` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `depth` int(11) NOT NULL DEFAULT '0',
  `is_hidden` int(11) NOT NULL DEFAULT '0',
  `is_invisible` int(11) NOT NULL DEFAULT '0',
  `main_node_id` int(11) DEFAULT NULL,
  `modified_subnode` int(11) DEFAULT '0',
  `node_id` int(11) NOT NULL,
  `parent_node_id` int(11) NOT NULL DEFAULT '0',
  `path_identification_string` longtext,
  `path_string` varchar(255) NOT NULL DEFAULT '',
  `priority` int(11) NOT NULL DEFAULT '0',
  `remote_id` varchar(100) NOT NULL DEFAULT '',
  `sort_field` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezcontentobject_tree`
--

INSERT INTO `ezcontentobject_tree` (`contentobject_id`, `contentobject_is_published`, `contentobject_version`, `depth`, `is_hidden`, `is_invisible`, `main_node_id`, `modified_subnode`, `node_id`, `parent_node_id`, `path_identification_string`, `path_string`, `priority`, `remote_id`, `sort_field`, `sort_order`) VALUES
(0, 1, 1, 0, 0, 0, 1, 1538037743, 1, 1, '', '/1/', 0, '629709ba256fe317c3ddcee35453a96a', 1, 1),
(57, 1, 2, 1, 0, 0, 2, 1538037721, 2, 1, '', '/1/2/', 0, 'f3e90596361e31d496d4026eb624c983', 8, 1),
(4, 1, 1, 1, 0, 0, 5, 1538037743, 5, 1, 'users', '/1/5/', 0, '3f6d92f8044aed134f32153517850f5a', 1, 1),
(11, 1, 2, 2, 0, 0, 12, 1538037743, 12, 5, 'users/members', '/1/5/12/', 0, '602dcf84765e56b7f999eaafd3821dd3', 1, 1),
(12, 1, 1, 2, 0, 0, 13, 1538001657, 13, 5, 'users/administrator_users', '/1/5/13/', 0, '769380b7aa94541679167eab817ca893', 1, 1),
(14, 1, 5, 3, 0, 0, 15, 1538001657, 15, 13, 'users/administrator_users/administrator_user', '/1/5/13/15/', 0, 'e5161a99f733200b9ed4e80f9c16187b', 1, 1),
(41, 1, 1, 1, 0, 0, 43, 1537999084, 43, 1, 'media', '/1/43/', 0, '75c715a51699d2d309a924eca6a95145', 9, 1),
(42, 1, 1, 2, 0, 0, 44, 1081860719, 44, 5, 'users/anonymous_users', '/1/5/44/', 0, '4fdf0072da953bb276c0c7e0141c5c9b', 9, 1),
(10, 1, 2, 3, 0, 0, 45, 1081860719, 45, 44, 'users/anonymous_users/anonymous_user', '/1/5/44/45/', 0, '2cf8343bee7b482bab82b269d8fecd76', 9, 1),
(45, 1, 1, 1, 0, 0, 48, 1184592117, 48, 1, 'setup2', '/1/48/', 0, '182ce1b5af0c09fa378557c462ba2617', 9, 1),
(49, 1, 1, 2, 0, 0, 51, 1081860720, 51, 43, 'media/images', '/1/43/51/', 0, '1b26c0454b09bb49dfb1b9190ffd67cb', 9, 1),
(50, 1, 1, 2, 0, 0, 52, 1081860720, 52, 43, 'media/files', '/1/43/52/', 0, '0b113a208f7890f9ad3c24444ff5988c', 9, 1),
(51, 1, 1, 2, 0, 0, 53, 1081860720, 53, 43, 'media/multimedia', '/1/43/53/', 0, '4f18b82c75f10aad476cae5adf98c11f', 9, 1),
(52, 1, 1, 2, 0, 0, 54, 1184592117, 54, 48, 'setup2/common_ini_settings', '/1/48/54/', 0, 'fa9f3cff9cf90ecfae335718dcbddfe2', 1, 1),
(54, 1, 2, 2, 0, 0, 56, 1537996702, 56, 58, 'design/plain_site', '/1/58/56/', 0, '772da20ecf88b3035d73cbdfcea0f119', 1, 1),
(56, 1, 1, 1, 0, 0, 58, 1537996702, 58, 1, 'design', '/1/58/', 0, '79f2d67372ab56f59b5d65bb9e0ca3b9', 2, 0),
(60, 1, 1, 2, 0, 0, 62, 1538001627, 62, 2, 'seduta', '/1/2/62/', 0, 'f5715cfe7bf8caa1bb51592007d069cf', 1, 1),
(61, 1, 1, 2, 0, 0, 63, 1537999084, 63, 43, 'media/aree_collaborative', '/1/43/63/', 0, 'ac7fff82b48347a2908a4b0580bb8b16', 1, 1),
(62, 1, 1, 2, 0, 0, 64, 1537999084, 64, 2, 'allegati_seduta', '/1/2/64/', 0, '10061a56fcbccc3a4bfa2eab8f0d8af4', 1, 1),
(63, 1, 1, 2, 0, 0, 65, 1537999084, 65, 2, 'invitato', '/1/2/65/', 0, 'c65e48a14e2604cab3e17316dd992b1b', 1, 1),
(64, 1, 1, 2, 0, 0, 66, 1538037721, 66, 2, 'politico', '/1/2/66/', 0, 'd3868ae95be8c4854a5e634aae0da7dd', 1, 1),
(65, 1, 1, 2, 0, 0, 67, 1538037715, 67, 2, 'tecnico', '/1/2/67/', 0, 'dc80a17e5476e97d3d77f02031b54472', 1, 1),
(66, 1, 1, 2, 0, 0, 68, 1537999084, 68, 2, 'materia', '/1/2/68/', 0, '62f1bf7827837574f2ca6a0bc5693c0b', 1, 1),
(67, 1, 1, 2, 0, 0, 69, 1538037673, 69, 2, 'organo', '/1/2/69/', 0, 'ee55dc8f8d464b74722c3918cd1e04cc', 1, 1),
(68, 1, 1, 2, 0, 0, 70, 1537999084, 70, 2, 'votazione', '/1/2/70/', 0, 'fb380f2349fef17c54a627a24408d1bc', 1, 1),
(69, 1, 1, 2, 0, 0, 71, 1537999084, 71, 2, 'osservazioni', '/1/2/71/', 0, 'a577d6c719bacd297f630f0cc347b834', 1, 1),
(70, 1, 1, 2, 0, 0, 72, 1537999084, 72, 2, 'referentelocale', '/1/2/72/', 0, 'dd62357a9d17f3e9f3410639a949778b', 1, 1),
(71, 1, 1, 2, 0, 0, 73, 1537999085, 73, 2, 'areacollaborativa', '/1/2/73/', 0, '8956e9adef38d5d8cbc505fbb407aa93', 1, 1),
(72, 1, 1, 2, 0, 0, 74, 1537999085, 74, 2, 'rendiconto_spese', '/1/2/74/', 0, '60434c648fbeec4b0170976c39d0a1fd', 1, 1),
(73, 1, 1, 2, 0, 0, 75, 1537999085, 75, 2, 'proposta', '/1/2/75/', 0, '03ba106e96743673fbdd47c44c16dea5', 1, 1),
(74, 1, 1, 2, 0, 0, 76, 1538037706, 76, 2, 'responsabilearea', '/1/2/76/', 0, '7157f9e0ba6fe23143e1226b4a447f53', 1, 1),
(75, 1, 1, 2, 0, 0, 77, 1537999085, 77, 2, 'cda_evento', '/1/2/77/', 0, '7e331ddc36f1a46a1602f4d4951b513f', 1, 1),
(76, 1, 1, 2, 0, 0, 78, 1537999085, 78, 2, 'cda_documento', '/1/2/78/', 0, '044dd5b3be219ec1905a98732e6e6ab7', 1, 1),
(154, 1, 3, 3, 0, 0, 98, 1538037029, 98, 12, 'users/members/germano_preghenella', '/1/5/12/98/', 0, '3ae51711b28227841ed2e05a40e87e9e', 1, 1),
(155, 1, 3, 3, 0, 0, 99, 1538037030, 99, 12, 'users/members/serenella_cipriani', '/1/5/12/99/', 0, '1c251a8302bb0a36a0a8c7af78c30a88', 1, 1),
(156, 1, 3, 3, 0, 0, 100, 1538037030, 100, 12, 'users/members/patrizia_gentil', '/1/5/12/100/', 0, '98cf0e5f4eba66c988770450c84732a0', 1, 1),
(157, 1, 3, 3, 0, 0, 101, 1538037031, 101, 12, 'users/members/lucia_corradini', '/1/5/12/101/', 0, 'd2846774f0bf0c123a6c3e7f0ad680d5', 1, 1),
(158, 1, 3, 3, 0, 0, 102, 1538037032, 102, 12, 'users/members/emiliano_trainotti', '/1/5/12/102/', 0, 'a07e1c21bb1cfdbb42af37e6b2e26a4f', 1, 1),
(159, 1, 3, 3, 0, 0, 103, 1538037032, 103, 12, 'users/members/antonio_borghetti', '/1/5/12/103/', 0, '7e2affa67618b141eeb0ca0733f60bc8', 1, 1),
(160, 1, 3, 3, 0, 0, 104, 1538037033, 104, 12, 'users/members/renzo_tommasi', '/1/5/12/104/', 0, '8d034592706f4bf67755cfad511d99f4', 1, 1),
(161, 1, 3, 3, 0, 0, 105, 1538037033, 105, 12, 'users/members/sara_ghezzer', '/1/5/12/105/', 0, '3655e3e42972287749cdc346373fddde', 1, 1),
(162, 1, 3, 3, 0, 0, 106, 1538037034, 106, 12, 'users/members/nadia_martinelli', '/1/5/12/106/', 0, 'c1432cb9e84de2a025ea59fbf40695c1', 1, 1),
(163, 1, 5, 3, 0, 0, 107, 1538037060, 107, 12, 'users/members/alessandro_ceschi', '/1/5/12/107/', 0, 'f9b881d6614b79e6e9a840c3f9136ad7', 1, 1),
(166, 1, 1, 3, 0, 0, 110, 1538037054, 110, 12, 'users/members/martina_degramatica', '/1/5/12/110/', 0, '499f74c9b56da509e29f1e8fbf84275b', 1, 1),
(171, 1, 2, 3, 0, 0, 115, 1538037059, 115, 12, 'users/members/enrico_cozzio', '/1/5/12/115/', 0, '46940ea4d6291796ee4b8a1f6d8651fc', 1, 1),
(172, 1, 1, 3, 0, 0, 116, 1538037059, 116, 12, 'users/members/giulia_comper', '/1/5/12/116/', 0, '8c4a5e26e57424243ce6e390c559f56d', 1, 1),
(173, 1, 1, 3, 0, 0, 117, 1538037060, 117, 12, 'users/members/federico_genetti', '/1/5/12/117/', 0, 'f57b223228dfb33eb91f8f8d2903d547', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ezcontentobject_version`
--

CREATE TABLE `ezcontentobject_version` (
  `contentobject_id` int(11) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `initial_language_id` bigint(20) NOT NULL DEFAULT '0',
  `language_mask` bigint(20) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `version` int(11) NOT NULL DEFAULT '0',
  `workflow_event_pos` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezcontentobject_version`
--

INSERT INTO `ezcontentobject_version` (`contentobject_id`, `created`, `creator_id`, `id`, `initial_language_id`, `language_mask`, `modified`, `status`, `user_id`, `version`, `workflow_event_pos`) VALUES
(4, 0, 14, 4, 2, 3, 0, 1, 0, 1, 1),
(11, 1033920737, 14, 439, 2, 3, 1033920746, 3, 0, 1, 0),
(12, 1033920760, 14, 440, 2, 3, 1033920775, 1, 0, 1, 0),
(41, 1060695450, 14, 472, 2, 3, 1060695457, 1, 0, 1, 0),
(42, 1072180278, 14, 473, 2, 3, 1072180330, 1, 0, 1, 0),
(10, 1072180337, 14, 474, 2, 3, 1072180405, 1, 0, 2, 0),
(45, 1079684084, 14, 477, 2, 3, 1079684190, 1, 0, 1, 0),
(49, 1080220181, 14, 488, 2, 3, 1080220197, 1, 0, 1, 0),
(50, 1080220211, 14, 489, 2, 3, 1080220220, 1, 0, 1, 0),
(51, 1080220225, 14, 490, 2, 3, 1080220233, 1, 0, 1, 0),
(52, 1082016497, 14, 491, 2, 2, 1082016591, 1, 0, 1, 0),
(56, 1103023120, 14, 495, 2, 3, 1103023120, 1, 0, 1, 0),
(14, 1301061783, 14, 499, 2, 3, 1301062024, 3, 0, 3, 0),
(54, 1301062300, 14, 500, 2, 2, 1301062375, 1, 0, 2, 0),
(14, 1537996701, 14, 506, 2, 3, 1537996701, 3, 0, 4, 0),
(11, 1537996703, 14, 508, 2, 3, 1537996703, 1, 0, 2, 0),
(57, 1537997915, 14, 509, 2, 2, 1537997918, 1, 0, 2, 0),
(60, 1537999083, 14, 510, 2, 3, 1537999083, 1, 0, 1, 0),
(61, 1537999084, 14, 511, 2, 3, 1537999084, 1, 0, 1, 0),
(62, 1537999084, 14, 512, 2, 3, 1537999084, 1, 0, 1, 0),
(63, 1537999084, 14, 513, 2, 3, 1537999084, 1, 0, 1, 0),
(64, 1537999084, 14, 514, 2, 3, 1537999084, 1, 0, 1, 0),
(65, 1537999084, 14, 515, 2, 3, 1537999084, 1, 0, 1, 0),
(66, 1537999084, 14, 516, 2, 3, 1537999084, 1, 0, 1, 0),
(67, 1537999084, 14, 517, 2, 3, 1537999084, 1, 0, 1, 0),
(68, 1537999084, 14, 518, 2, 3, 1537999084, 1, 0, 1, 0),
(69, 1537999084, 14, 519, 2, 3, 1537999084, 1, 0, 1, 0),
(70, 1537999084, 14, 520, 2, 3, 1537999084, 1, 0, 1, 0),
(71, 1537999085, 14, 521, 2, 3, 1537999085, 1, 0, 1, 0),
(72, 1537999085, 14, 522, 2, 3, 1537999085, 1, 0, 1, 0),
(73, 1537999085, 14, 523, 2, 3, 1537999085, 1, 0, 1, 0),
(74, 1537999085, 14, 524, 2, 3, 1537999085, 1, 0, 1, 0),
(75, 1537999085, 14, 525, 2, 3, 1537999085, 1, 0, 1, 0),
(76, 1537999085, 14, 526, 2, 3, 1537999085, 1, 0, 1, 0),
(14, 1538001650, 14, 532, 2, 3, 1538001656, 1, 0, 5, 0),
(154, 1538035575, 14, 610, 2, 3, 1538035575, 3, 0, 1, 0),
(155, 1538035575, 14, 611, 2, 3, 1538035575, 3, 0, 1, 0),
(156, 1538035575, 14, 612, 2, 3, 1538035575, 3, 0, 1, 0),
(157, 1538035575, 14, 613, 2, 3, 1538035575, 3, 0, 1, 0),
(158, 1538035575, 14, 614, 2, 3, 1538035575, 3, 0, 1, 0),
(159, 1538035575, 14, 615, 2, 3, 1538035575, 3, 0, 1, 0),
(160, 1538035575, 14, 616, 2, 3, 1538035575, 3, 0, 1, 0),
(161, 1538035575, 14, 617, 2, 3, 1538035575, 3, 0, 1, 0),
(162, 1538035576, 14, 618, 2, 3, 1538035576, 3, 0, 1, 0),
(163, 1538035576, 14, 619, 2, 3, 1538035576, 3, 0, 1, 0),
(154, 1538035857, 14, 639, 2, 3, 1538035857, 3, 0, 2, 0),
(155, 1538035858, 14, 640, 2, 3, 1538035858, 3, 0, 2, 0),
(156, 1538035858, 14, 641, 2, 3, 1538035858, 3, 0, 2, 0),
(157, 1538035859, 14, 642, 2, 3, 1538035859, 3, 0, 2, 0),
(158, 1538035859, 14, 643, 2, 3, 1538035859, 3, 0, 2, 0),
(159, 1538035860, 14, 644, 2, 3, 1538035860, 3, 0, 2, 0),
(160, 1538035860, 14, 645, 2, 3, 1538035860, 3, 0, 2, 0),
(161, 1538035861, 14, 646, 2, 3, 1538035861, 3, 0, 2, 0),
(162, 1538035861, 14, 647, 2, 3, 1538035861, 3, 0, 2, 0),
(163, 1538035862, 14, 648, 2, 3, 1538035862, 3, 0, 2, 0),
(166, 1538036087, 14, 651, 2, 3, 1538036087, 1, 0, 1, 0),
(171, 1538036093, 14, 657, 2, 3, 1538036093, 3, 0, 1, 0),
(172, 1538036093, 14, 658, 2, 3, 1538036093, 1, 0, 1, 0),
(163, 1538036093, 14, 659, 2, 3, 1538036093, 3, 0, 3, 0),
(173, 1538036094, 14, 660, 2, 3, 1538036094, 1, 0, 1, 0),
(154, 1538037029, 14, 685, 2, 3, 1538037029, 1, 0, 3, 0),
(155, 1538037029, 14, 686, 2, 3, 1538037029, 1, 0, 3, 0),
(156, 1538037030, 14, 687, 2, 3, 1538037030, 1, 0, 3, 0),
(157, 1538037031, 14, 688, 2, 3, 1538037031, 1, 0, 3, 0),
(158, 1538037031, 14, 689, 2, 3, 1538037031, 1, 0, 3, 0),
(159, 1538037032, 14, 690, 2, 3, 1538037032, 1, 0, 3, 0),
(160, 1538037032, 14, 691, 2, 3, 1538037032, 1, 0, 3, 0),
(161, 1538037033, 14, 692, 2, 3, 1538037033, 1, 0, 3, 0),
(162, 1538037033, 14, 693, 2, 3, 1538037033, 1, 0, 3, 0),
(163, 1538037034, 14, 694, 2, 3, 1538037034, 3, 0, 4, 0),
(171, 1538037059, 14, 696, 2, 3, 1538037059, 1, 0, 2, 0),
(163, 1538037060, 14, 697, 2, 3, 1538037060, 1, 0, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ezcontent_language`
--

CREATE TABLE `ezcontent_language` (
  `disabled` int(11) NOT NULL DEFAULT '0',
  `id` bigint(20) NOT NULL DEFAULT '0',
  `locale` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezcontent_language`
--

INSERT INTO `ezcontent_language` (`disabled`, `id`, `locale`, `name`) VALUES
(0, 2, 'ita-IT', 'Italiano'),
(0, 4, 'eng-GB', 'English (United Kingdom)');

-- --------------------------------------------------------

--
-- Table structure for table `ezcurrencydata`
--

CREATE TABLE `ezcurrencydata` (
  `auto_rate_value` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `code` varchar(4) NOT NULL DEFAULT '',
  `custom_rate_value` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `id` int(11) NOT NULL,
  `locale` varchar(255) NOT NULL DEFAULT '',
  `rate_factor` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `status` int(11) NOT NULL DEFAULT '1',
  `symbol` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezdiscountrule`
--

CREATE TABLE `ezdiscountrule` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezdiscountsubrule`
--

CREATE TABLE `ezdiscountsubrule` (
  `discount_percent` float DEFAULT NULL,
  `discountrule_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `limitation` char(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezdiscountsubrule_value`
--

CREATE TABLE `ezdiscountsubrule_value` (
  `discountsubrule_id` int(11) NOT NULL DEFAULT '0',
  `issection` int(11) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezenumobjectvalue`
--

CREATE TABLE `ezenumobjectvalue` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attribute_version` int(11) NOT NULL DEFAULT '0',
  `enumelement` varchar(255) NOT NULL DEFAULT '',
  `enumid` int(11) NOT NULL DEFAULT '0',
  `enumvalue` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezenumvalue`
--

CREATE TABLE `ezenumvalue` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_attribute_version` int(11) NOT NULL DEFAULT '0',
  `enumelement` varchar(255) NOT NULL DEFAULT '',
  `enumvalue` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `placement` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezfind_elevate_configuration`
--

CREATE TABLE `ezfind_elevate_configuration` (
  `search_query` varchar(255) NOT NULL DEFAULT '',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `language_code` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezforgot_password`
--

CREATE TABLE `ezforgot_password` (
  `hash_key` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezgeneral_digest_user_settings`
--

CREATE TABLE `ezgeneral_digest_user_settings` (
  `day` varchar(255) NOT NULL DEFAULT '',
  `digest_type` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `receive_digest` int(11) NOT NULL DEFAULT '0',
  `time` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezgmaplocation`
--

CREATE TABLE `ezgmaplocation` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_version` int(11) NOT NULL DEFAULT '0',
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `address` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezimagefile`
--

CREATE TABLE `ezimagefile` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `filepath` longtext NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezimagefile`
--

INSERT INTO `ezimagefile` (`contentobject_attribute_id`, `filepath`, `id`) VALUES
(172, 'var/ezdemo_site/storage/images/design/plain-site/172-2-ita-IT/openconsiglio1.png', 1),
(1019, 'var/openconsiglio/storage/images/users/members/germano-preghenella/1019-2-ita-IT/Germano-Preghenella.jpg', 39),
(1028, 'var/openconsiglio/storage/images/users/members/serenella-cipriani/1028-2-ita-IT/Serenella-Cipriani.jpg', 41),
(1037, 'var/openconsiglio/storage/images/users/members/patrizia-gentil/1037-2-ita-IT/Patrizia-Gentil.jpg', 43),
(1046, 'var/openconsiglio/storage/images/users/members/lucia-corradini/1046-2-ita-IT/Lucia-Corradini.jpg', 45),
(1055, 'var/openconsiglio/storage/images/users/members/emiliano-trainotti/1055-2-ita-IT/Emiliano-Trainotti.jpg', 47),
(1064, 'var/openconsiglio/storage/images/users/members/antonio-borghetti/1064-2-ita-IT/Antonio-Borghetti.jpg', 49),
(1073, 'var/openconsiglio/storage/images/users/members/renzo-tommasi/1073-2-ita-IT/Renzo-Tommasi.jpg', 51),
(1082, 'var/openconsiglio/storage/images/users/members/sara-ghezzer/1082-2-ita-IT/Sara-Ghezzer.jpg', 53),
(1091, 'var/openconsiglio/storage/images/users/members/nadia-martinelli/1091-2-ita-IT/Nadia-Martinelli.jpg', 55),
(1100, 'var/openconsiglio/storage/images/users/members/alessandro-ceschi/1100-2-ita-IT/Alessandro-Ceschi.jpg', 57),
(965, 'var/openconsiglio/storage/images/users/members/marina-castaldo/965-2-ita-IT/Marina-Castaldo_reference.jpg', 58),
(965, 'var/openconsiglio/storage/images/users/members/marina-castaldo/965-2-ita-IT/Marina-Castaldo_large.jpg', 59),
(1100, 'var/openconsiglio/storage/images/users/members/alessandro-ceschi/1100-3-ita-IT/Alessandro-Ceschi.jpg', 63),
(1019, 'var/openconsiglio/storage/images/users/members/germano-preghenella/1019-3-ita-IT/Germano-Preghenella.jpg', 121),
(1028, 'var/openconsiglio/storage/images/users/members/serenella-cipriani/1028-3-ita-IT/Serenella-Cipriani.jpg', 123),
(1037, 'var/openconsiglio/storage/images/users/members/patrizia-gentil/1037-3-ita-IT/Patrizia-Gentil.jpg', 125),
(1046, 'var/openconsiglio/storage/images/users/members/lucia-corradini/1046-3-ita-IT/Lucia-Corradini.jpg', 127),
(1055, 'var/openconsiglio/storage/images/users/members/emiliano-trainotti/1055-3-ita-IT/Emiliano-Trainotti.jpg', 129),
(1064, 'var/openconsiglio/storage/images/users/members/antonio-borghetti/1064-3-ita-IT/Antonio-Borghetti.jpg', 131),
(1073, 'var/openconsiglio/storage/images/users/members/renzo-tommasi/1073-3-ita-IT/Renzo-Tommasi.jpg', 133),
(1082, 'var/openconsiglio/storage/images/users/members/sara-ghezzer/1082-3-ita-IT/Sara-Ghezzer.jpg', 135),
(1091, 'var/openconsiglio/storage/images/users/members/nadia-martinelli/1091-3-ita-IT/Nadia-Martinelli.jpg', 137),
(1100, 'var/openconsiglio/storage/images/users/members/alessandro-ceschi/1100-4-ita-IT/Alessandro-Ceschi.jpg', 139),
(1100, 'var/openconsiglio/storage/images/users/members/alessandro-ceschi/1100-5-ita-IT/Alessandro-Ceschi.jpg', 141),
(1019, 'var/openconsiglio/storage/images/users/members/germano-preghenella/1019-3-ita-IT/Germano-Preghenella_small.jpg', 160),
(1028, 'var/openconsiglio/storage/images/users/members/serenella-cipriani/1028-3-ita-IT/Serenella-Cipriani_small.jpg', 161),
(1037, 'var/openconsiglio/storage/images/users/members/patrizia-gentil/1037-3-ita-IT/Patrizia-Gentil_small.jpg', 162),
(1046, 'var/openconsiglio/storage/images/users/members/lucia-corradini/1046-3-ita-IT/Lucia-Corradini_small.jpg', 163),
(1055, 'var/openconsiglio/storage/images/users/members/emiliano-trainotti/1055-3-ita-IT/Emiliano-Trainotti_small.jpg', 164),
(1064, 'var/openconsiglio/storage/images/users/members/antonio-borghetti/1064-3-ita-IT/Antonio-Borghetti_small.jpg', 165),
(1100, 'var/openconsiglio/storage/images/users/members/alessandro-ceschi/1100-5-ita-IT/Alessandro-Ceschi_small.jpg', 166),
(1073, 'var/openconsiglio/storage/images/users/members/renzo-tommasi/1073-3-ita-IT/Renzo-Tommasi_small.jpg', 167),
(1082, 'var/openconsiglio/storage/images/users/members/sara-ghezzer/1082-3-ita-IT/Sara-Ghezzer_small.jpg', 168),
(1091, 'var/openconsiglio/storage/images/users/members/nadia-martinelli/1091-3-ita-IT/Nadia-Martinelli_small.jpg', 169);

-- --------------------------------------------------------

--
-- Table structure for table `ezinfocollection`
--

CREATE TABLE `ezinfocollection` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `modified` int(11) DEFAULT '0',
  `user_identifier` varchar(34) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezinfocollection_attribute`
--

CREATE TABLE `ezinfocollection_attribute` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attribute_id` int(11) DEFAULT NULL,
  `contentobject_id` int(11) DEFAULT NULL,
  `data_float` float DEFAULT NULL,
  `data_int` int(11) DEFAULT NULL,
  `data_text` longtext,
  `id` int(11) NOT NULL,
  `informationcollection_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezisbn_group`
--

CREATE TABLE `ezisbn_group` (
  `description` varchar(255) NOT NULL DEFAULT '',
  `group_number` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezisbn_group`
--

INSERT INTO `ezisbn_group` (`description`, `group_number`, `id`) VALUES
('English language', 0, 1),
('English language', 1, 2),
('French language', 2, 3),
('German language', 3, 4),
('Japan', 4, 5),
('Russian Federation and former USSR', 5, 6),
('Iran', 600, 7),
('Kazakhstan', 601, 8),
('Indonesia', 602, 9),
('Saudi Arabia', 603, 10),
('Vietnam', 604, 11),
('Turkey', 605, 12),
('Romania', 606, 13),
('Mexico', 607, 14),
('Macedonia', 608, 15),
('Lithuania', 609, 16),
('Thailand', 611, 17),
('Peru', 612, 18),
('Mauritius', 613, 19),
('Lebanon', 614, 20),
('Hungary', 615, 21),
('Thailand', 616, 22),
('Ukraine', 617, 23),
('China, People\'s Republic', 7, 24),
('Czech Republic and Slovakia', 80, 25),
('India', 81, 26),
('Norway', 82, 27),
('Poland', 83, 28),
('Spain', 84, 29),
('Brazil', 85, 30),
('Serbia and Montenegro', 86, 31),
('Denmark', 87, 32),
('Italy', 88, 33),
('Korea, Republic', 89, 34),
('Netherlands', 90, 35),
('Sweden', 91, 36),
('International NGO Publishers and EC Organizations', 92, 37),
('India', 93, 38),
('Netherlands', 94, 39),
('Argentina', 950, 40),
('Finland', 951, 41),
('Finland', 952, 42),
('Croatia', 953, 43),
('Bulgaria', 954, 44),
('Sri Lanka', 955, 45),
('Chile', 956, 46),
('Taiwan', 957, 47),
('Colombia', 958, 48),
('Cuba', 959, 49),
('Greece', 960, 50),
('Slovenia', 961, 51),
('Hong Kong, China', 962, 52),
('Hungary', 963, 53),
('Iran', 964, 54),
('Israel', 965, 55),
('Ukraine', 966, 56),
('Malaysia', 967, 57),
('Mexico', 968, 58),
('Pakistan', 969, 59),
('Mexico', 970, 60),
('Philippines', 971, 61),
('Portugal', 972, 62),
('Romania', 973, 63),
('Thailand', 974, 64),
('Turkey', 975, 65),
('Caribbean Community', 976, 66),
('Egypt', 977, 67),
('Nigeria', 978, 68),
('Indonesia', 979, 69),
('Venezuela', 980, 70),
('Singapore', 981, 71),
('South Pacific', 982, 72),
('Malaysia', 983, 73),
('Bangladesh', 984, 74),
('Belarus', 985, 75),
('Taiwan', 986, 76),
('Argentina', 987, 77),
('Hong Kong, China', 988, 78),
('Portugal', 989, 79),
('Qatar', 9927, 80),
('Albania', 9928, 81),
('Guatemala', 9929, 82),
('Costa Rica', 9930, 83),
('Algeria', 9931, 84),
('Lao People\'s Democratic Republic', 9932, 85),
('Syria', 9933, 86),
('Latvia', 9934, 87),
('Iceland', 9935, 88),
('Afghanistan', 9936, 89),
('Nepal', 9937, 90),
('Tunisia', 9938, 91),
('Armenia', 9939, 92),
('Montenegro', 9940, 93),
('Georgia', 9941, 94),
('Ecuador', 9942, 95),
('Uzbekistan', 9943, 96),
('Turkey', 9944, 97),
('Dominican Republic', 9945, 98),
('Korea, P.D.R.', 9946, 99),
('Algeria', 9947, 100),
('United Arab Emirates', 9948, 101),
('Estonia', 9949, 102),
('Palestine', 9950, 103),
('Kosova', 9951, 104),
('Azerbaijan', 9952, 105),
('Lebanon', 9953, 106),
('Morocco', 9954, 107),
('Lithuania', 9955, 108),
('Cameroon', 9956, 109),
('Jordan', 9957, 110),
('Bosnia and Herzegovina', 9958, 111),
('Libya', 9959, 112),
('Saudi Arabia', 9960, 113),
('Algeria', 9961, 114),
('Panama', 9962, 115),
('Cyprus', 9963, 116),
('Ghana', 9964, 117),
('Kazakhstan', 9965, 118),
('Kenya', 9966, 119),
('Kyrgyz Republic', 9967, 120),
('Costa Rica', 9968, 121),
('Uganda', 9970, 122),
('Singapore', 9971, 123),
('Peru', 9972, 124),
('Tunisia', 9973, 125),
('Uruguay', 9974, 126),
('Moldova', 9975, 127),
('Tanzania', 9976, 128),
('Costa Rica', 9977, 129),
('Ecuador', 9978, 130),
('Iceland', 9979, 131),
('Papua New Guinea', 9980, 132),
('Morocco', 9981, 133),
('Zambia', 9982, 134),
('Gambia', 9983, 135),
('Latvia', 9984, 136),
('Estonia', 9985, 137),
('Lithuania', 9986, 138),
('Tanzania', 9987, 139),
('Ghana', 9988, 140),
('Macedonia', 9989, 141),
('Bahrain', 99901, 142),
('Gabon', 99902, 143),
('Mauritius', 99903, 144),
('Netherlands Antilles and Aruba', 99904, 145),
('Bolivia', 99905, 146),
('Kuwait', 99906, 147),
('Malawi', 99908, 148),
('Malta', 99909, 149),
('Sierra Leone', 99910, 150),
('Lesotho', 99911, 151),
('Botswana', 99912, 152),
('Andorra', 99913, 153),
('Suriname', 99914, 154),
('Maldives', 99915, 155),
('Namibia', 99916, 156),
('Brunei Darussalam', 99917, 157),
('Faroe Islands', 99918, 158),
('Benin', 99919, 159),
('Andorra', 99920, 160),
('Qatar', 99921, 161),
('Guatemala', 99922, 162),
('El Salvador', 99923, 163),
('Nicaragua', 99924, 164),
('Paraguay', 99925, 165),
('Honduras', 99926, 166),
('Albania', 99927, 167),
('Georgia', 99928, 168),
('Mongolia', 99929, 169),
('Armenia', 99930, 170),
('Seychelles', 99931, 171),
('Malta', 99932, 172),
('Nepal', 99933, 173),
('Dominican Republic', 99934, 174),
('Haiti', 99935, 175),
('Bhutan', 99936, 176),
('Macau', 99937, 177),
('Srpska, Republic of', 99938, 178),
('Guatemala', 99939, 179),
('Georgia', 99940, 180),
('Armenia', 99941, 181),
('Sudan', 99942, 182),
('Albania', 99943, 183),
('Ethiopia', 99944, 184),
('Namibia', 99945, 185),
('Nepal', 99946, 186),
('Tajikistan', 99947, 187),
('Eritrea', 99948, 188),
('Mauritius', 99949, 189),
('Cambodia', 99950, 190),
('Congo', 99951, 191),
('Mali', 99952, 192),
('Paraguay', 99953, 193),
('Bolivia', 99954, 194),
('Srpska, Republic of', 99955, 195),
('Albania', 99956, 196),
('Malta', 99957, 197),
('Bahrain', 99958, 198),
('Luxembourg', 99959, 199),
('Malawi', 99960, 200),
('El Salvador', 99961, 201),
('Mongolia', 99962, 202),
('Cambodia', 99963, 203),
('Nicaragua', 99964, 204),
('Macau', 99965, 205),
('Kuwait', 99966, 206),
('Paraguay', 99967, 207),
('Botswana', 99968, 208),
('France', 10, 209);

-- --------------------------------------------------------

--
-- Table structure for table `ezisbn_group_range`
--

CREATE TABLE `ezisbn_group_range` (
  `from_number` int(11) NOT NULL DEFAULT '0',
  `group_from` varchar(32) NOT NULL DEFAULT '',
  `group_length` int(11) NOT NULL DEFAULT '0',
  `group_to` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `to_number` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezisbn_group_range`
--

INSERT INTO `ezisbn_group_range` (`from_number`, `group_from`, `group_length`, `group_to`, `id`, `to_number`) VALUES
(0, '0', 1, '5', 1, 59999),
(60000, '600', 3, '649', 2, 64999),
(70000, '7', 1, '7', 3, 79999),
(80000, '80', 2, '94', 4, 94999),
(95000, '950', 3, '989', 5, 98999),
(99000, '9900', 4, '9989', 6, 99899),
(99900, '99900', 5, '99999', 7, 99999),
(10000, '10', 2, '10', 8, 10999);

-- --------------------------------------------------------

--
-- Table structure for table `ezisbn_registrant_range`
--

CREATE TABLE `ezisbn_registrant_range` (
  `from_number` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `isbn_group_id` int(11) NOT NULL DEFAULT '0',
  `registrant_from` varchar(32) NOT NULL DEFAULT '',
  `registrant_length` int(11) NOT NULL DEFAULT '0',
  `registrant_to` varchar(32) NOT NULL DEFAULT '',
  `to_number` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezisbn_registrant_range`
--

INSERT INTO `ezisbn_registrant_range` (`from_number`, `id`, `isbn_group_id`, `registrant_from`, `registrant_length`, `registrant_to`, `to_number`) VALUES
(0, 1, 1, '00', 2, '19', 19999),
(20000, 2, 1, '200', 3, '699', 69999),
(70000, 3, 1, '7000', 4, '8499', 84999),
(85000, 4, 1, '85000', 5, '89999', 89999),
(90000, 5, 1, '900000', 6, '949999', 94999),
(95000, 6, 1, '9500000', 7, '9999999', 99999),
(0, 7, 2, '00', 2, '09', 9999),
(10000, 8, 2, '100', 3, '399', 39999),
(40000, 9, 2, '4000', 4, '5499', 54999),
(55000, 10, 2, '55000', 5, '86979', 86979),
(86980, 11, 2, '869800', 6, '998999', 99899),
(99900, 12, 2, '9990000', 7, '9999999', 99999),
(0, 13, 3, '00', 2, '19', 19999),
(20000, 14, 3, '200', 3, '349', 34999),
(35000, 15, 3, '35000', 5, '39999', 39999),
(40000, 16, 3, '400', 3, '699', 69999),
(70000, 17, 3, '7000', 4, '8399', 83999),
(84000, 18, 3, '84000', 5, '89999', 89999),
(90000, 19, 3, '900000', 6, '949999', 94999),
(95000, 20, 3, '9500000', 7, '9999999', 99999),
(0, 21, 4, '00', 2, '02', 2999),
(3000, 22, 4, '030', 3, '033', 3399),
(3400, 23, 4, '0340', 4, '0369', 3699),
(3700, 24, 4, '03700', 5, '03999', 3999),
(4000, 25, 4, '04', 2, '19', 19999),
(20000, 26, 4, '200', 3, '699', 69999),
(70000, 27, 4, '7000', 4, '8499', 84999),
(85000, 28, 4, '85000', 5, '89999', 89999),
(90000, 29, 4, '900000', 6, '949999', 94999),
(95000, 30, 4, '9500000', 7, '9539999', 95399),
(95400, 31, 4, '95400', 5, '96999', 96999),
(97000, 32, 4, '9700000', 7, '9899999', 98999),
(99000, 33, 4, '99000', 5, '99499', 99499),
(99500, 34, 4, '99500', 5, '99999', 99999),
(0, 35, 5, '00', 2, '19', 19999),
(20000, 36, 5, '200', 3, '699', 69999),
(70000, 37, 5, '7000', 4, '8499', 84999),
(85000, 38, 5, '85000', 5, '89999', 89999),
(90000, 39, 5, '900000', 6, '949999', 94999),
(95000, 40, 5, '9500000', 7, '9999999', 99999),
(0, 41, 6, '00', 2, '19', 19999),
(20000, 42, 6, '200', 3, '420', 42099),
(42100, 43, 6, '4210', 4, '4299', 42999),
(43000, 44, 6, '430', 3, '430', 43099),
(43100, 45, 6, '4310', 4, '4399', 43999),
(44000, 46, 6, '440', 3, '440', 44099),
(44100, 47, 6, '4410', 4, '4499', 44999),
(45000, 48, 6, '450', 3, '699', 69999),
(70000, 49, 6, '7000', 4, '8499', 84999),
(85000, 50, 6, '85000', 5, '89999', 89999),
(90000, 51, 6, '900000', 6, '909999', 90999),
(91000, 52, 6, '91000', 5, '91999', 91999),
(92000, 53, 6, '9200', 4, '9299', 92999),
(93000, 54, 6, '93000', 5, '94999', 94999),
(95000, 55, 6, '9500000', 7, '9500999', 95009),
(95010, 56, 6, '9501', 4, '9799', 97999),
(98000, 57, 6, '98000', 5, '98999', 98999),
(99000, 58, 6, '9900000', 7, '9909999', 99099),
(99100, 59, 6, '9910', 4, '9999', 99999),
(0, 60, 7, '00', 2, '09', 9999),
(10000, 61, 7, '100', 3, '499', 49999),
(50000, 62, 7, '5000', 4, '8999', 89999),
(90000, 63, 7, '90000', 5, '99999', 99999),
(0, 64, 8, '00', 2, '19', 19999),
(20000, 65, 8, '200', 3, '699', 69999),
(70000, 66, 8, '7000', 4, '7999', 79999),
(80000, 67, 8, '80000', 5, '84999', 84999),
(85000, 68, 8, '85', 2, '99', 99999),
(0, 69, 9, '00', 2, '19', 19999),
(20000, 70, 9, '200', 3, '799', 79999),
(80000, 71, 9, '8000', 4, '9499', 94999),
(95000, 72, 9, '95000', 5, '99999', 99999),
(0, 73, 10, '00', 2, '04', 4999),
(5000, 74, 10, '05', 2, '49', 49999),
(50000, 75, 10, '500', 3, '799', 79999),
(80000, 76, 10, '8000', 4, '8999', 89999),
(90000, 77, 10, '90000', 5, '99999', 99999),
(0, 78, 11, '0', 1, '4', 49999),
(50000, 79, 11, '50', 2, '89', 89999),
(90000, 80, 11, '900', 3, '979', 97999),
(98000, 81, 11, '9800', 4, '9999', 99999),
(1000, 82, 12, '01', 2, '09', 9999),
(10000, 83, 12, '100', 3, '399', 39999),
(40000, 84, 12, '4000', 4, '5999', 59999),
(60000, 85, 12, '60000', 5, '89999', 89999),
(90000, 86, 12, '90', 2, '99', 99999),
(0, 87, 13, '0', 1, '0', 9999),
(10000, 88, 13, '10', 2, '49', 49999),
(50000, 89, 13, '500', 3, '799', 79999),
(80000, 90, 13, '8000', 4, '9199', 91999),
(92000, 91, 13, '92000', 5, '99999', 99999),
(0, 92, 14, '00', 2, '39', 39999),
(40000, 93, 14, '400', 3, '749', 74999),
(75000, 94, 14, '7500', 4, '9499', 94999),
(95000, 95, 14, '95000', 5, '99999', 99999),
(0, 96, 15, '0', 1, '0', 9999),
(10000, 97, 15, '10', 2, '19', 19999),
(20000, 98, 15, '200', 3, '449', 44999),
(45000, 99, 15, '4500', 4, '6499', 64999),
(65000, 100, 15, '65000', 5, '69999', 69999),
(70000, 101, 15, '7', 1, '9', 99999),
(0, 102, 16, '00', 2, '39', 39999),
(40000, 103, 16, '400', 3, '799', 79999),
(80000, 104, 16, '8000', 4, '9499', 94999),
(95000, 105, 16, '95000', 5, '99999', 99999),
(0, 106, 18, '00', 2, '29', 29999),
(30000, 107, 18, '300', 3, '399', 39999),
(40000, 108, 18, '4000', 4, '4499', 44999),
(45000, 109, 18, '45000', 5, '49999', 49999),
(50000, 110, 18, '50', 2, '99', 99999),
(0, 111, 19, '0', 1, '9', 99999),
(0, 112, 20, '00', 2, '39', 39999),
(40000, 113, 20, '400', 3, '799', 79999),
(80000, 114, 20, '8000', 4, '9499', 94999),
(95000, 115, 20, '95000', 5, '99999', 99999),
(0, 116, 21, '00', 2, '09', 9999),
(10000, 117, 21, '100', 3, '499', 49999),
(50000, 118, 21, '5000', 4, '7999', 79999),
(80000, 119, 21, '80000', 5, '89999', 89999),
(0, 120, 22, '00', 2, '19', 19999),
(20000, 121, 22, '200', 3, '699', 69999),
(70000, 122, 22, '7000', 4, '8999', 89999),
(90000, 123, 22, '90000', 5, '99999', 99999),
(0, 124, 23, '00', 2, '49', 49999),
(50000, 125, 23, '500', 3, '699', 69999),
(70000, 126, 23, '7000', 4, '8999', 89999),
(90000, 127, 23, '90000', 5, '99999', 99999),
(0, 128, 24, '00', 2, '09', 9999),
(10000, 129, 24, '100', 3, '499', 49999),
(50000, 130, 24, '5000', 4, '7999', 79999),
(80000, 131, 24, '80000', 5, '89999', 89999),
(90000, 132, 24, '900000', 6, '999999', 99999),
(0, 133, 25, '00', 2, '19', 19999),
(20000, 134, 25, '200', 3, '699', 69999),
(70000, 135, 25, '7000', 4, '8499', 84999),
(85000, 136, 25, '85000', 5, '89999', 89999),
(90000, 137, 25, '900000', 6, '999999', 99999),
(0, 138, 26, '00', 2, '19', 19999),
(20000, 139, 26, '200', 3, '699', 69999),
(70000, 140, 26, '7000', 4, '8499', 84999),
(85000, 141, 26, '85000', 5, '89999', 89999),
(90000, 142, 26, '900000', 6, '999999', 99999),
(0, 143, 27, '00', 2, '19', 19999),
(20000, 144, 27, '200', 3, '699', 69999),
(70000, 145, 27, '7000', 4, '8999', 89999),
(90000, 146, 27, '90000', 5, '98999', 98999),
(99000, 147, 27, '990000', 6, '999999', 99999),
(0, 148, 28, '00', 2, '19', 19999),
(20000, 149, 28, '200', 3, '599', 59999),
(60000, 150, 28, '60000', 5, '69999', 69999),
(70000, 151, 28, '7000', 4, '8499', 84999),
(85000, 152, 28, '85000', 5, '89999', 89999),
(90000, 153, 28, '900000', 6, '999999', 99999),
(0, 154, 29, '00', 2, '14', 14999),
(15000, 155, 29, '15000', 5, '19999', 19999),
(20000, 156, 29, '200', 3, '699', 69999),
(70000, 157, 29, '7000', 4, '8499', 84999),
(85000, 158, 29, '85000', 5, '89999', 89999),
(90000, 159, 29, '9000', 4, '9199', 91999),
(92000, 160, 29, '920000', 6, '923999', 92399),
(92400, 161, 29, '92400', 5, '92999', 92999),
(93000, 162, 29, '930000', 6, '949999', 94999),
(95000, 163, 29, '95000', 5, '96999', 96999),
(97000, 164, 29, '9700', 4, '9999', 99999),
(0, 165, 30, '00', 2, '19', 19999),
(20000, 166, 30, '200', 3, '599', 59999),
(60000, 167, 30, '60000', 5, '69999', 69999),
(70000, 168, 30, '7000', 4, '8499', 84999),
(85000, 169, 30, '85000', 5, '89999', 89999),
(90000, 170, 30, '900000', 6, '979999', 97999),
(98000, 171, 30, '98000', 5, '99999', 99999),
(0, 172, 31, '00', 2, '29', 29999),
(30000, 173, 31, '300', 3, '599', 59999),
(60000, 174, 31, '6000', 4, '7999', 79999),
(80000, 175, 31, '80000', 5, '89999', 89999),
(90000, 176, 31, '900000', 6, '999999', 99999),
(0, 177, 32, '00', 2, '29', 29999),
(40000, 178, 32, '400', 3, '649', 64999),
(70000, 179, 32, '7000', 4, '7999', 79999),
(85000, 180, 32, '85000', 5, '94999', 94999),
(97000, 181, 32, '970000', 6, '999999', 99999),
(0, 182, 33, '00', 2, '19', 19999),
(20000, 183, 33, '200', 3, '599', 59999),
(60000, 184, 33, '6000', 4, '8499', 84999),
(85000, 185, 33, '85000', 5, '89999', 89999),
(90000, 186, 33, '900000', 6, '949999', 94999),
(95000, 187, 33, '95000', 5, '99999', 99999),
(0, 188, 34, '00', 2, '24', 24999),
(25000, 189, 34, '250', 3, '549', 54999),
(55000, 190, 34, '5500', 4, '8499', 84999),
(85000, 191, 34, '85000', 5, '94999', 94999),
(95000, 192, 34, '950000', 6, '969999', 96999),
(97000, 193, 34, '97000', 5, '98999', 98999),
(99000, 194, 34, '990', 3, '999', 99999),
(0, 195, 35, '00', 2, '19', 19999),
(20000, 196, 35, '200', 3, '499', 49999),
(50000, 197, 35, '5000', 4, '6999', 69999),
(70000, 198, 35, '70000', 5, '79999', 79999),
(80000, 199, 35, '800000', 6, '849999', 84999),
(85000, 200, 35, '8500', 4, '8999', 89999),
(90000, 201, 35, '90', 2, '90', 90999),
(91000, 202, 35, '910000', 6, '939999', 93999),
(94000, 203, 35, '94', 2, '94', 94999),
(95000, 204, 35, '950000', 6, '999999', 99999),
(0, 205, 36, '0', 1, '1', 19999),
(20000, 206, 36, '20', 2, '49', 49999),
(50000, 207, 36, '500', 3, '649', 64999),
(70000, 208, 36, '7000', 4, '7999', 79999),
(85000, 209, 36, '85000', 5, '94999', 94999),
(97000, 210, 36, '970000', 6, '999999', 99999),
(0, 211, 37, '0', 1, '5', 59999),
(60000, 212, 37, '60', 2, '79', 79999),
(80000, 213, 37, '800', 3, '899', 89999),
(90000, 214, 37, '9000', 4, '9499', 94999),
(95000, 215, 37, '95000', 5, '98999', 98999),
(99000, 216, 37, '990000', 6, '999999', 99999),
(0, 217, 38, '00', 2, '09', 9999),
(10000, 218, 38, '100', 3, '499', 49999),
(50000, 219, 38, '5000', 4, '7999', 79999),
(80000, 220, 38, '80000', 5, '94999', 94999),
(95000, 221, 38, '950000', 6, '999999', 99999),
(0, 222, 39, '000', 3, '599', 59999),
(60000, 223, 39, '6000', 4, '8999', 89999),
(90000, 224, 39, '90000', 5, '99999', 99999),
(0, 225, 40, '00', 2, '49', 49999),
(50000, 226, 40, '500', 3, '899', 89999),
(90000, 227, 40, '9000', 4, '9899', 98999),
(99000, 228, 40, '99000', 5, '99999', 99999),
(0, 229, 41, '0', 1, '1', 19999),
(20000, 230, 41, '20', 2, '54', 54999),
(55000, 231, 41, '550', 3, '889', 88999),
(89000, 232, 41, '8900', 4, '9499', 94999),
(95000, 233, 41, '95000', 5, '99999', 99999),
(0, 234, 42, '00', 2, '19', 19999),
(20000, 235, 42, '200', 3, '499', 49999),
(50000, 236, 42, '5000', 4, '5999', 59999),
(60000, 237, 42, '60', 2, '65', 65999),
(66000, 238, 42, '6600', 4, '6699', 66999),
(67000, 239, 42, '67000', 5, '69999', 69999),
(70000, 240, 42, '7000', 4, '7999', 79999),
(80000, 241, 42, '80', 2, '94', 94999),
(95000, 242, 42, '9500', 4, '9899', 98999),
(99000, 243, 42, '99000', 5, '99999', 99999),
(0, 244, 43, '0', 1, '0', 9999),
(10000, 245, 43, '10', 2, '14', 14999),
(15000, 246, 43, '150', 3, '549', 54999),
(55000, 247, 43, '55000', 5, '59999', 59999),
(60000, 248, 43, '6000', 4, '9499', 94999),
(95000, 249, 43, '95000', 5, '99999', 99999),
(0, 250, 44, '00', 2, '28', 28999),
(29000, 251, 44, '2900', 4, '2999', 29999),
(30000, 252, 44, '300', 3, '799', 79999),
(80000, 253, 44, '8000', 4, '8999', 89999),
(90000, 254, 44, '90000', 5, '92999', 92999),
(93000, 255, 44, '9300', 4, '9999', 99999),
(0, 256, 45, '0000', 4, '1999', 19999),
(20000, 257, 45, '20', 2, '49', 49999),
(50000, 258, 45, '50000', 5, '54999', 54999),
(55000, 259, 45, '550', 3, '799', 79999),
(80000, 260, 45, '8000', 4, '9499', 94999),
(95000, 261, 45, '95000', 5, '99999', 99999),
(0, 262, 46, '00', 2, '19', 19999),
(20000, 263, 46, '200', 3, '699', 69999),
(70000, 264, 46, '7000', 4, '9999', 99999),
(0, 265, 47, '00', 2, '02', 2999),
(3000, 266, 47, '0300', 4, '0499', 4999),
(5000, 267, 47, '05', 2, '19', 19999),
(20000, 268, 47, '2000', 4, '2099', 20999),
(21000, 269, 47, '21', 2, '27', 27999),
(28000, 270, 47, '28000', 5, '30999', 30999),
(31000, 271, 47, '31', 2, '43', 43999),
(44000, 272, 47, '440', 3, '819', 81999),
(82000, 273, 47, '8200', 4, '9699', 96999),
(97000, 274, 47, '97000', 5, '99999', 99999),
(0, 275, 48, '00', 2, '56', 56999),
(57000, 276, 48, '57000', 5, '59999', 59999),
(60000, 277, 48, '600', 3, '799', 79999),
(80000, 278, 48, '8000', 4, '9499', 94999),
(95000, 279, 48, '95000', 5, '99999', 99999),
(0, 280, 49, '00', 2, '19', 19999),
(20000, 281, 49, '200', 3, '699', 69999),
(70000, 282, 49, '7000', 4, '8499', 84999),
(85000, 283, 49, '85000', 5, '99999', 99999),
(0, 284, 50, '00', 2, '19', 19999),
(20000, 285, 50, '200', 3, '659', 65999),
(66000, 286, 50, '6600', 4, '6899', 68999),
(69000, 287, 50, '690', 3, '699', 69999),
(70000, 288, 50, '7000', 4, '8499', 84999),
(85000, 289, 50, '85000', 5, '92999', 92999),
(93000, 290, 50, '93', 2, '93', 93999),
(94000, 291, 50, '9400', 4, '9799', 97999),
(98000, 292, 50, '98000', 5, '99999', 99999),
(0, 293, 51, '00', 2, '19', 19999),
(20000, 294, 51, '200', 3, '599', 59999),
(60000, 295, 51, '6000', 4, '8999', 89999),
(90000, 296, 51, '90000', 5, '94999', 94999),
(0, 297, 52, '00', 2, '19', 19999),
(20000, 298, 52, '200', 3, '699', 69999),
(70000, 299, 52, '7000', 4, '8499', 84999),
(85000, 300, 52, '85000', 5, '86999', 86999),
(87000, 301, 52, '8700', 4, '8999', 89999),
(90000, 302, 52, '900', 3, '999', 99999),
(0, 303, 53, '00', 2, '19', 19999),
(20000, 304, 53, '200', 3, '699', 69999),
(70000, 305, 53, '7000', 4, '8499', 84999),
(85000, 306, 53, '85000', 5, '89999', 89999),
(90000, 307, 53, '9000', 4, '9999', 99999),
(0, 308, 54, '00', 2, '14', 14999),
(15000, 309, 54, '150', 3, '249', 24999),
(25000, 310, 54, '2500', 4, '2999', 29999),
(30000, 311, 54, '300', 3, '549', 54999),
(55000, 312, 54, '5500', 4, '8999', 89999),
(90000, 313, 54, '90000', 5, '96999', 96999),
(97000, 314, 54, '970', 3, '989', 98999),
(99000, 315, 54, '9900', 4, '9999', 99999),
(0, 316, 55, '00', 2, '19', 19999),
(20000, 317, 55, '200', 3, '599', 59999),
(70000, 318, 55, '7000', 4, '7999', 79999),
(90000, 319, 55, '90000', 5, '99999', 99999),
(0, 320, 56, '00', 2, '14', 14999),
(15000, 321, 56, '1500', 4, '1699', 16999),
(17000, 322, 56, '170', 3, '199', 19999),
(20000, 323, 56, '2000', 4, '2999', 29999),
(30000, 324, 56, '300', 3, '699', 69999),
(70000, 325, 56, '7000', 4, '8999', 89999),
(90000, 326, 56, '90000', 5, '99999', 99999),
(0, 327, 57, '00', 2, '00', 999),
(1000, 328, 57, '0100', 4, '0999', 9999),
(10000, 329, 57, '10000', 5, '19999', 19999),
(30000, 330, 57, '300', 3, '499', 49999),
(50000, 331, 57, '5000', 4, '5999', 59999),
(60000, 332, 57, '60', 2, '89', 89999),
(90000, 333, 57, '900', 3, '989', 98999),
(99000, 334, 57, '9900', 4, '9989', 99899),
(99900, 335, 57, '99900', 5, '99999', 99999),
(1000, 336, 58, '01', 2, '39', 39999),
(40000, 337, 58, '400', 3, '499', 49999),
(50000, 338, 58, '5000', 4, '7999', 79999),
(80000, 339, 58, '800', 3, '899', 89999),
(90000, 340, 58, '9000', 4, '9999', 99999),
(0, 341, 59, '0', 1, '1', 19999),
(20000, 342, 59, '20', 2, '39', 39999),
(40000, 343, 59, '400', 3, '799', 79999),
(80000, 344, 59, '8000', 4, '9999', 99999),
(1000, 345, 60, '01', 2, '59', 59999),
(60000, 346, 60, '600', 3, '899', 89999),
(90000, 347, 60, '9000', 4, '9099', 90999),
(91000, 348, 60, '91000', 5, '96999', 96999),
(97000, 349, 60, '9700', 4, '9999', 99999),
(0, 350, 61, '000', 3, '015', 1599),
(1600, 351, 61, '0160', 4, '0199', 1999),
(2000, 352, 61, '02', 2, '02', 2999),
(3000, 353, 61, '0300', 4, '0599', 5999),
(6000, 354, 61, '06', 2, '09', 9999),
(10000, 355, 61, '10', 2, '49', 49999),
(50000, 356, 61, '500', 3, '849', 84999),
(85000, 357, 61, '8500', 4, '9099', 90999),
(91000, 358, 61, '91000', 5, '98999', 98999),
(99000, 359, 61, '9900', 4, '9999', 99999),
(0, 360, 62, '0', 1, '1', 19999),
(20000, 361, 62, '20', 2, '54', 54999),
(55000, 362, 62, '550', 3, '799', 79999),
(80000, 363, 62, '8000', 4, '9499', 94999),
(95000, 364, 62, '95000', 5, '99999', 99999),
(0, 365, 63, '0', 1, '0', 9999),
(10000, 366, 63, '100', 3, '169', 16999),
(17000, 367, 63, '1700', 4, '1999', 19999),
(20000, 368, 63, '20', 2, '54', 54999),
(55000, 369, 63, '550', 3, '759', 75999),
(76000, 370, 63, '7600', 4, '8499', 84999),
(85000, 371, 63, '85000', 5, '88999', 88999),
(89000, 372, 63, '8900', 4, '9499', 94999),
(95000, 373, 63, '95000', 5, '99999', 99999),
(0, 374, 64, '00', 2, '19', 19999),
(20000, 375, 64, '200', 3, '699', 69999),
(70000, 376, 64, '7000', 4, '8499', 84999),
(85000, 377, 64, '85000', 5, '89999', 89999),
(90000, 378, 64, '90000', 5, '94999', 94999),
(95000, 379, 64, '9500', 4, '9999', 99999),
(0, 380, 65, '00000', 5, '01999', 1999),
(2000, 381, 65, '02', 2, '24', 24999),
(25000, 382, 65, '250', 3, '599', 59999),
(60000, 383, 65, '6000', 4, '9199', 91999),
(92000, 384, 65, '92000', 5, '98999', 98999),
(99000, 385, 65, '990', 3, '999', 99999),
(0, 386, 66, '0', 1, '3', 39999),
(40000, 387, 66, '40', 2, '59', 59999),
(60000, 388, 66, '600', 3, '799', 79999),
(80000, 389, 66, '8000', 4, '9499', 94999),
(95000, 390, 66, '95000', 5, '99999', 99999),
(0, 391, 67, '00', 2, '19', 19999),
(20000, 392, 67, '200', 3, '499', 49999),
(50000, 393, 67, '5000', 4, '6999', 69999),
(70000, 394, 67, '700', 3, '999', 99999),
(0, 395, 68, '000', 3, '199', 19999),
(20000, 396, 68, '2000', 4, '2999', 29999),
(30000, 397, 68, '30000', 5, '79999', 79999),
(80000, 398, 68, '8000', 4, '8999', 89999),
(90000, 399, 68, '900', 3, '999', 99999),
(0, 400, 69, '000', 3, '099', 9999),
(10000, 401, 69, '1000', 4, '1499', 14999),
(15000, 402, 69, '15000', 5, '19999', 19999),
(20000, 403, 69, '20', 2, '29', 29999),
(30000, 404, 69, '3000', 4, '3999', 39999),
(40000, 405, 69, '400', 3, '799', 79999),
(80000, 406, 69, '8000', 4, '9499', 94999),
(95000, 407, 69, '95000', 5, '99999', 99999),
(0, 408, 70, '00', 2, '19', 19999),
(20000, 409, 70, '200', 3, '599', 59999),
(60000, 410, 70, '6000', 4, '9999', 99999),
(0, 411, 71, '00', 2, '11', 11999),
(12000, 412, 71, '1200', 4, '1999', 19999),
(20000, 413, 71, '200', 3, '289', 28999),
(29000, 414, 71, '2900', 4, '9999', 99999),
(0, 415, 72, '00', 2, '09', 9999),
(10000, 416, 72, '100', 3, '699', 69999),
(70000, 417, 72, '70', 2, '89', 89999),
(90000, 418, 72, '9000', 4, '9799', 97999),
(98000, 419, 72, '98000', 5, '99999', 99999),
(0, 420, 73, '00', 2, '01', 1999),
(2000, 421, 73, '020', 3, '199', 19999),
(20000, 422, 73, '2000', 4, '3999', 39999),
(40000, 423, 73, '40000', 5, '44999', 44999),
(45000, 424, 73, '45', 2, '49', 49999),
(50000, 425, 73, '50', 2, '79', 79999),
(80000, 426, 73, '800', 3, '899', 89999),
(90000, 427, 73, '9000', 4, '9899', 98999),
(99000, 428, 73, '99000', 5, '99999', 99999),
(0, 429, 74, '00', 2, '39', 39999),
(40000, 430, 74, '400', 3, '799', 79999),
(80000, 431, 74, '8000', 4, '8999', 89999),
(90000, 432, 74, '90000', 5, '99999', 99999),
(0, 433, 75, '00', 2, '39', 39999),
(40000, 434, 75, '400', 3, '599', 59999),
(60000, 435, 75, '6000', 4, '8999', 89999),
(90000, 436, 75, '90000', 5, '99999', 99999),
(0, 437, 76, '00', 2, '11', 11999),
(12000, 438, 76, '120', 3, '559', 55999),
(56000, 439, 76, '5600', 4, '7999', 79999),
(80000, 440, 76, '80000', 5, '99999', 99999),
(0, 441, 77, '00', 2, '09', 9999),
(10000, 442, 77, '1000', 4, '1999', 19999),
(20000, 443, 77, '20000', 5, '29999', 29999),
(30000, 444, 77, '30', 2, '49', 49999),
(50000, 445, 77, '500', 3, '899', 89999),
(90000, 446, 77, '9000', 4, '9499', 94999),
(95000, 447, 77, '95000', 5, '99999', 99999),
(0, 448, 78, '00', 2, '14', 14999),
(15000, 449, 78, '15000', 5, '16999', 16999),
(17000, 450, 78, '17000', 5, '19999', 19999),
(20000, 451, 78, '200', 3, '799', 79999),
(80000, 452, 78, '8000', 4, '9699', 96999),
(97000, 453, 78, '97000', 5, '99999', 99999),
(0, 454, 79, '0', 1, '1', 19999),
(20000, 455, 79, '20', 2, '54', 54999),
(55000, 456, 79, '550', 3, '799', 79999),
(80000, 457, 79, '8000', 4, '9499', 94999),
(95000, 458, 79, '95000', 5, '99999', 99999),
(0, 459, 80, '00', 2, '09', 9999),
(10000, 460, 80, '100', 3, '399', 39999),
(40000, 461, 80, '4000', 4, '4999', 49999),
(0, 462, 81, '00', 2, '09', 9999),
(10000, 463, 81, '100', 3, '399', 39999),
(40000, 464, 81, '4000', 4, '4999', 49999),
(0, 465, 82, '0', 1, '3', 39999),
(40000, 466, 82, '40', 2, '54', 54999),
(55000, 467, 82, '550', 3, '799', 79999),
(80000, 468, 82, '8000', 4, '9999', 99999),
(0, 469, 83, '00', 2, '49', 49999),
(50000, 470, 83, '500', 3, '939', 93999),
(94000, 471, 83, '9400', 4, '9999', 99999),
(0, 472, 84, '00', 2, '29', 29999),
(30000, 473, 84, '300', 3, '899', 89999),
(90000, 474, 84, '9000', 4, '9999', 99999),
(0, 475, 85, '00', 2, '39', 39999),
(40000, 476, 85, '400', 3, '849', 84999),
(85000, 477, 85, '8500', 4, '9999', 99999),
(0, 478, 86, '0', 1, '0', 9999),
(10000, 479, 86, '10', 2, '39', 39999),
(40000, 480, 86, '400', 3, '899', 89999),
(90000, 481, 86, '9000', 4, '9999', 99999),
(0, 482, 87, '0', 1, '0', 9999),
(10000, 483, 87, '10', 2, '49', 49999),
(50000, 484, 87, '500', 3, '799', 79999),
(80000, 485, 87, '8000', 4, '9999', 99999),
(0, 486, 88, '0', 1, '0', 9999),
(10000, 487, 88, '10', 2, '39', 39999),
(40000, 488, 88, '400', 3, '899', 89999),
(90000, 489, 88, '9000', 4, '9999', 99999),
(0, 490, 89, '0', 1, '1', 19999),
(20000, 491, 89, '20', 2, '39', 39999),
(40000, 492, 89, '400', 3, '799', 79999),
(80000, 493, 89, '8000', 4, '9999', 99999),
(0, 494, 90, '0', 1, '2', 29999),
(30000, 495, 90, '30', 2, '49', 49999),
(50000, 496, 90, '500', 3, '799', 79999),
(80000, 497, 90, '8000', 4, '9999', 99999),
(0, 498, 91, '00', 2, '79', 79999),
(80000, 499, 91, '800', 3, '949', 94999),
(95000, 500, 91, '9500', 4, '9999', 99999),
(0, 501, 92, '0', 1, '4', 49999),
(50000, 502, 92, '50', 2, '79', 79999),
(80000, 503, 92, '800', 3, '899', 89999),
(90000, 504, 92, '9000', 4, '9999', 99999),
(0, 505, 93, '0', 1, '1', 19999),
(20000, 506, 93, '20', 2, '49', 49999),
(50000, 507, 93, '500', 3, '899', 89999),
(90000, 508, 93, '9000', 4, '9999', 99999),
(0, 509, 94, '0', 1, '0', 9999),
(10000, 510, 94, '10', 2, '39', 39999),
(40000, 511, 94, '400', 3, '899', 89999),
(90000, 512, 94, '9000', 4, '9999', 99999),
(0, 513, 95, '00', 2, '89', 89999),
(90000, 514, 95, '900', 3, '984', 98499),
(98500, 515, 95, '9850', 4, '9999', 99999),
(0, 516, 96, '00', 2, '29', 29999),
(30000, 517, 96, '300', 3, '399', 39999),
(40000, 518, 96, '4000', 4, '9999', 99999),
(0, 519, 97, '0000', 4, '0999', 9999),
(10000, 520, 97, '100', 3, '499', 49999),
(50000, 521, 97, '5000', 4, '5999', 59999),
(60000, 522, 97, '60', 2, '69', 69999),
(70000, 523, 97, '700', 3, '799', 79999),
(80000, 524, 97, '80', 2, '89', 89999),
(90000, 525, 97, '900', 3, '999', 99999),
(0, 526, 98, '00', 2, '00', 999),
(1000, 527, 98, '010', 3, '079', 7999),
(8000, 528, 98, '08', 2, '39', 39999),
(40000, 529, 98, '400', 3, '569', 56999),
(57000, 530, 98, '57', 2, '57', 57999),
(58000, 531, 98, '580', 3, '849', 84999),
(85000, 532, 98, '8500', 4, '9999', 99999),
(0, 533, 99, '0', 1, '1', 19999),
(20000, 534, 99, '20', 2, '39', 39999),
(40000, 535, 99, '400', 3, '899', 89999),
(90000, 536, 99, '9000', 4, '9999', 99999),
(0, 537, 100, '0', 1, '1', 19999),
(20000, 538, 100, '20', 2, '79', 79999),
(80000, 539, 100, '800', 3, '999', 99999),
(0, 540, 101, '00', 2, '39', 39999),
(40000, 541, 101, '400', 3, '849', 84999),
(85000, 542, 101, '8500', 4, '9999', 99999),
(0, 543, 102, '0', 1, '0', 9999),
(10000, 544, 102, '10', 2, '39', 39999),
(40000, 545, 102, '400', 3, '899', 89999),
(90000, 546, 102, '9000', 4, '9999', 99999),
(0, 547, 103, '00', 2, '29', 29999),
(30000, 548, 103, '300', 3, '849', 84999),
(85000, 549, 103, '8500', 4, '9999', 99999),
(0, 550, 104, '00', 2, '39', 39999),
(40000, 551, 104, '400', 3, '849', 84999),
(85000, 552, 104, '8500', 4, '9999', 99999),
(0, 553, 105, '0', 1, '1', 19999),
(20000, 554, 105, '20', 2, '39', 39999),
(40000, 555, 105, '400', 3, '799', 79999),
(80000, 556, 105, '8000', 4, '9999', 99999),
(0, 557, 106, '0', 1, '0', 9999),
(10000, 558, 106, '10', 2, '39', 39999),
(40000, 559, 106, '400', 3, '599', 59999),
(60000, 560, 106, '60', 2, '89', 89999),
(90000, 561, 106, '9000', 4, '9999', 99999),
(0, 562, 107, '0', 1, '1', 19999),
(20000, 563, 107, '20', 2, '39', 39999),
(40000, 564, 107, '400', 3, '799', 79999),
(80000, 565, 107, '8000', 4, '9999', 99999),
(0, 566, 108, '00', 2, '39', 39999),
(40000, 567, 108, '400', 3, '929', 92999),
(93000, 568, 108, '9300', 4, '9999', 99999),
(0, 569, 109, '0', 1, '0', 9999),
(10000, 570, 109, '10', 2, '39', 39999),
(40000, 571, 109, '400', 3, '899', 89999),
(90000, 572, 109, '9000', 4, '9999', 99999),
(0, 573, 110, '00', 2, '39', 39999),
(40000, 574, 110, '400', 3, '699', 69999),
(70000, 575, 110, '70', 2, '84', 84999),
(85000, 576, 110, '8500', 4, '8799', 87999),
(88000, 577, 110, '88', 2, '99', 99999),
(0, 578, 111, '0', 1, '0', 9999),
(10000, 579, 111, '10', 2, '18', 18999),
(19000, 580, 111, '1900', 4, '1999', 19999),
(20000, 581, 111, '20', 2, '49', 49999),
(50000, 582, 111, '500', 3, '899', 89999),
(90000, 583, 111, '9000', 4, '9999', 99999),
(0, 584, 112, '0', 1, '1', 19999),
(20000, 585, 112, '20', 2, '79', 79999),
(80000, 586, 112, '800', 3, '949', 94999),
(95000, 587, 112, '9500', 4, '9999', 99999),
(0, 588, 113, '00', 2, '59', 59999),
(60000, 589, 113, '600', 3, '899', 89999),
(90000, 590, 113, '9000', 4, '9999', 99999),
(0, 591, 114, '0', 1, '2', 29999),
(30000, 592, 114, '30', 2, '69', 69999),
(70000, 593, 114, '700', 3, '949', 94999),
(95000, 594, 114, '9500', 4, '9999', 99999),
(0, 595, 115, '00', 2, '54', 54999),
(55000, 596, 115, '5500', 4, '5599', 55999),
(56000, 597, 115, '56', 2, '59', 59999),
(60000, 598, 115, '600', 3, '849', 84999),
(85000, 599, 115, '8500', 4, '9999', 99999),
(0, 600, 116, '0', 1, '2', 29999),
(30000, 601, 116, '30', 2, '54', 54999),
(55000, 602, 116, '550', 3, '734', 73499),
(73500, 603, 116, '7350', 4, '7499', 74999),
(75000, 604, 116, '7500', 4, '9999', 99999),
(0, 605, 117, '0', 1, '6', 69999),
(70000, 606, 117, '70', 2, '94', 94999),
(95000, 607, 117, '950', 3, '999', 99999),
(0, 608, 118, '00', 2, '39', 39999),
(40000, 609, 118, '400', 3, '899', 89999),
(90000, 610, 118, '9000', 4, '9999', 99999),
(0, 611, 119, '000', 3, '149', 14999),
(15000, 612, 119, '1500', 4, '1999', 19999),
(20000, 613, 119, '20', 2, '69', 69999),
(70000, 614, 119, '7000', 4, '7499', 74999),
(75000, 615, 119, '750', 3, '959', 95999),
(96000, 616, 119, '9600', 4, '9999', 99999),
(0, 617, 120, '00', 2, '39', 39999),
(40000, 618, 120, '400', 3, '899', 89999),
(90000, 619, 120, '9000', 4, '9999', 99999),
(0, 620, 121, '00', 2, '49', 49999),
(50000, 621, 121, '500', 3, '939', 93999),
(94000, 622, 121, '9400', 4, '9999', 99999),
(0, 623, 122, '00', 2, '39', 39999),
(40000, 624, 122, '400', 3, '899', 89999),
(90000, 625, 122, '9000', 4, '9999', 99999),
(0, 626, 123, '0', 1, '5', 59999),
(60000, 627, 123, '60', 2, '89', 89999),
(90000, 628, 123, '900', 3, '989', 98999),
(99000, 629, 123, '9900', 4, '9999', 99999),
(0, 630, 124, '00', 2, '09', 9999),
(10000, 631, 124, '1', 1, '1', 19999),
(20000, 632, 124, '200', 3, '249', 24999),
(25000, 633, 124, '2500', 4, '2999', 29999),
(30000, 634, 124, '30', 2, '59', 59999),
(60000, 635, 124, '600', 3, '899', 89999),
(90000, 636, 124, '9000', 4, '9999', 99999),
(0, 637, 125, '00', 2, '05', 5999),
(6000, 638, 125, '060', 3, '089', 8999),
(9000, 639, 125, '0900', 4, '0999', 9999),
(10000, 640, 125, '10', 2, '69', 69999),
(70000, 641, 125, '700', 3, '969', 96999),
(97000, 642, 125, '9700', 4, '9999', 99999),
(0, 643, 126, '0', 1, '2', 29999),
(30000, 644, 126, '30', 2, '54', 54999),
(55000, 645, 126, '550', 3, '749', 74999),
(75000, 646, 126, '7500', 4, '9499', 94999),
(95000, 647, 126, '95', 2, '99', 99999),
(0, 648, 127, '0', 1, '0', 9999),
(10000, 649, 127, '100', 3, '399', 39999),
(40000, 650, 127, '4000', 4, '4499', 44999),
(45000, 651, 127, '45', 2, '89', 89999),
(90000, 652, 127, '900', 3, '949', 94999),
(95000, 653, 127, '9500', 4, '9999', 99999),
(0, 654, 128, '0', 1, '5', 59999),
(60000, 655, 128, '60', 2, '89', 89999),
(90000, 656, 128, '900', 3, '989', 98999),
(99000, 657, 128, '9900', 4, '9999', 99999),
(0, 658, 129, '00', 2, '89', 89999),
(90000, 659, 129, '900', 3, '989', 98999),
(99000, 660, 129, '9900', 4, '9999', 99999),
(0, 661, 130, '00', 2, '29', 29999),
(30000, 662, 130, '300', 3, '399', 39999),
(40000, 663, 130, '40', 2, '94', 94999),
(95000, 664, 130, '950', 3, '989', 98999),
(99000, 665, 130, '9900', 4, '9999', 99999),
(0, 666, 131, '0', 1, '4', 49999),
(50000, 667, 131, '50', 2, '64', 64999),
(65000, 668, 131, '650', 3, '659', 65999),
(66000, 669, 131, '66', 2, '75', 75999),
(76000, 670, 131, '760', 3, '899', 89999),
(90000, 671, 131, '9000', 4, '9999', 99999),
(0, 672, 132, '0', 1, '3', 39999),
(40000, 673, 132, '40', 2, '89', 89999),
(90000, 674, 132, '900', 3, '989', 98999),
(99000, 675, 132, '9900', 4, '9999', 99999),
(0, 676, 133, '00', 2, '09', 9999),
(10000, 677, 133, '100', 3, '159', 15999),
(16000, 678, 133, '1600', 4, '1999', 19999),
(20000, 679, 133, '20', 2, '79', 79999),
(80000, 680, 133, '800', 3, '949', 94999),
(95000, 681, 133, '9500', 4, '9999', 99999),
(0, 682, 134, '00', 2, '79', 79999),
(80000, 683, 134, '800', 3, '989', 98999),
(99000, 684, 134, '9900', 4, '9999', 99999),
(80000, 685, 135, '80', 2, '94', 94999),
(95000, 686, 135, '950', 3, '989', 98999),
(99000, 687, 135, '9900', 4, '9999', 99999),
(0, 688, 136, '00', 2, '49', 49999),
(50000, 689, 136, '500', 3, '899', 89999),
(90000, 690, 136, '9000', 4, '9999', 99999),
(0, 691, 137, '0', 1, '4', 49999),
(50000, 692, 137, '50', 2, '79', 79999),
(80000, 693, 137, '800', 3, '899', 89999),
(90000, 694, 137, '9000', 4, '9999', 99999),
(0, 695, 138, '00', 2, '39', 39999),
(40000, 696, 138, '400', 3, '899', 89999),
(90000, 697, 138, '9000', 4, '9399', 93999),
(94000, 698, 138, '940', 3, '969', 96999),
(97000, 699, 138, '97', 2, '99', 99999),
(0, 700, 139, '00', 2, '39', 39999),
(40000, 701, 139, '400', 3, '879', 87999),
(88000, 702, 139, '8800', 4, '9999', 99999),
(0, 703, 140, '0', 1, '2', 29999),
(30000, 704, 140, '30', 2, '54', 54999),
(55000, 705, 140, '550', 3, '749', 74999),
(75000, 706, 140, '7500', 4, '9999', 99999),
(0, 707, 141, '0', 1, '0', 9999),
(10000, 708, 141, '100', 3, '199', 19999),
(20000, 709, 141, '2000', 4, '2999', 29999),
(30000, 710, 141, '30', 2, '59', 59999),
(60000, 711, 141, '600', 3, '949', 94999),
(95000, 712, 141, '9500', 4, '9999', 99999),
(0, 713, 142, '00', 2, '49', 49999),
(50000, 714, 142, '500', 3, '799', 79999),
(80000, 715, 142, '80', 2, '99', 99999),
(0, 716, 144, '0', 1, '1', 19999),
(20000, 717, 144, '20', 2, '89', 89999),
(90000, 718, 144, '900', 3, '999', 99999),
(0, 719, 145, '0', 1, '5', 59999),
(60000, 720, 145, '60', 2, '89', 89999),
(90000, 721, 145, '900', 3, '999', 99999),
(0, 722, 146, '0', 1, '3', 39999),
(40000, 723, 146, '40', 2, '79', 79999),
(80000, 724, 146, '800', 3, '999', 99999),
(0, 725, 147, '0', 1, '2', 29999),
(30000, 726, 147, '30', 2, '59', 59999),
(60000, 727, 147, '600', 3, '699', 69999),
(70000, 728, 147, '70', 2, '89', 89999),
(90000, 729, 147, '90', 2, '94', 94999),
(95000, 730, 147, '950', 3, '999', 99999),
(0, 731, 148, '0', 1, '0', 9999),
(10000, 732, 148, '10', 2, '89', 89999),
(90000, 733, 148, '900', 3, '999', 99999),
(0, 734, 149, '0', 1, '3', 39999),
(40000, 735, 149, '40', 2, '94', 94999),
(95000, 736, 149, '950', 3, '999', 99999),
(0, 737, 150, '0', 1, '2', 29999),
(30000, 738, 150, '30', 2, '89', 89999),
(90000, 739, 150, '900', 3, '999', 99999),
(0, 740, 151, '00', 2, '59', 59999),
(60000, 741, 151, '600', 3, '999', 99999),
(0, 742, 152, '0', 1, '3', 39999),
(40000, 743, 152, '400', 3, '599', 59999),
(60000, 744, 152, '60', 2, '89', 89999),
(90000, 745, 152, '900', 3, '999', 99999),
(0, 746, 153, '0', 1, '2', 29999),
(30000, 747, 153, '30', 2, '35', 35999),
(60000, 748, 153, '600', 3, '604', 60499),
(0, 749, 154, '0', 1, '4', 49999),
(50000, 750, 154, '50', 2, '89', 89999),
(90000, 751, 154, '900', 3, '999', 99999),
(0, 752, 155, '0', 1, '4', 49999),
(50000, 753, 155, '50', 2, '79', 79999),
(80000, 754, 155, '800', 3, '999', 99999),
(0, 755, 156, '0', 1, '2', 29999),
(30000, 756, 156, '30', 2, '69', 69999),
(70000, 757, 156, '700', 3, '999', 99999),
(0, 758, 157, '0', 1, '2', 29999),
(30000, 759, 157, '30', 2, '89', 89999),
(90000, 760, 157, '900', 3, '999', 99999),
(0, 761, 158, '0', 1, '3', 39999),
(40000, 762, 158, '40', 2, '79', 79999),
(80000, 763, 158, '800', 3, '999', 99999),
(0, 764, 159, '0', 1, '2', 29999),
(30000, 765, 159, '300', 3, '399', 39999),
(40000, 766, 159, '40', 2, '69', 69999),
(90000, 767, 159, '900', 3, '999', 99999),
(0, 768, 160, '0', 1, '4', 49999),
(50000, 769, 160, '50', 2, '89', 89999),
(90000, 770, 160, '900', 3, '999', 99999),
(0, 771, 161, '0', 1, '1', 19999),
(20000, 772, 161, '20', 2, '69', 69999),
(70000, 773, 161, '700', 3, '799', 79999),
(80000, 774, 161, '8', 1, '8', 89999),
(90000, 775, 161, '90', 2, '99', 99999),
(0, 776, 162, '0', 1, '3', 39999),
(40000, 777, 162, '40', 2, '69', 69999),
(70000, 778, 162, '700', 3, '999', 99999),
(0, 779, 163, '0', 1, '1', 19999),
(20000, 780, 163, '20', 2, '79', 79999),
(80000, 781, 163, '800', 3, '999', 99999),
(0, 782, 164, '0', 1, '1', 19999),
(20000, 783, 164, '20', 2, '79', 79999),
(80000, 784, 164, '800', 3, '999', 99999),
(0, 785, 165, '0', 1, '3', 39999),
(40000, 786, 165, '40', 2, '79', 79999),
(80000, 787, 165, '800', 3, '999', 99999),
(0, 788, 166, '0', 1, '0', 9999),
(10000, 789, 166, '10', 2, '59', 59999),
(60000, 790, 166, '600', 3, '999', 99999),
(0, 791, 167, '0', 1, '2', 29999),
(30000, 792, 167, '30', 2, '59', 59999),
(60000, 793, 167, '600', 3, '999', 99999),
(0, 794, 168, '0', 1, '0', 9999),
(10000, 795, 168, '10', 2, '79', 79999),
(80000, 796, 168, '800', 3, '999', 99999),
(0, 797, 169, '0', 1, '4', 49999),
(50000, 798, 169, '50', 2, '79', 79999),
(80000, 799, 169, '800', 3, '999', 99999),
(0, 800, 170, '0', 1, '4', 49999),
(50000, 801, 170, '50', 2, '79', 79999),
(80000, 802, 170, '800', 3, '999', 99999),
(0, 803, 171, '0', 1, '4', 49999),
(50000, 804, 171, '50', 2, '79', 79999),
(80000, 805, 171, '800', 3, '999', 99999),
(0, 806, 172, '0', 1, '0', 9999),
(10000, 807, 172, '10', 2, '59', 59999),
(60000, 808, 172, '600', 3, '699', 69999),
(70000, 809, 172, '7', 1, '7', 79999),
(80000, 810, 172, '80', 2, '99', 99999),
(0, 811, 173, '0', 1, '2', 29999),
(30000, 812, 173, '30', 2, '59', 59999),
(60000, 813, 173, '600', 3, '999', 99999),
(0, 814, 174, '0', 1, '1', 19999),
(20000, 815, 174, '20', 2, '79', 79999),
(80000, 816, 174, '800', 3, '999', 99999),
(0, 817, 175, '0', 1, '2', 29999),
(30000, 818, 175, '30', 2, '59', 59999),
(60000, 819, 175, '600', 3, '699', 69999),
(70000, 820, 175, '7', 1, '8', 89999),
(90000, 821, 175, '90', 2, '99', 99999),
(0, 822, 176, '0', 1, '0', 9999),
(10000, 823, 176, '10', 2, '59', 59999),
(60000, 824, 176, '600', 3, '999', 99999),
(0, 825, 177, '0', 1, '1', 19999),
(20000, 826, 177, '20', 2, '59', 59999),
(60000, 827, 177, '600', 3, '999', 99999),
(0, 828, 178, '0', 1, '1', 19999),
(20000, 829, 178, '20', 2, '59', 59999),
(60000, 830, 178, '600', 3, '899', 89999),
(90000, 831, 178, '90', 2, '99', 99999),
(0, 832, 179, '0', 1, '5', 59999),
(60000, 833, 179, '60', 2, '89', 89999),
(90000, 834, 179, '900', 3, '999', 99999),
(0, 835, 180, '0', 1, '0', 9999),
(10000, 836, 180, '10', 2, '69', 69999),
(70000, 837, 180, '700', 3, '999', 99999),
(0, 838, 181, '0', 1, '2', 29999),
(30000, 839, 181, '30', 2, '79', 79999),
(80000, 840, 181, '800', 3, '999', 99999),
(0, 841, 182, '0', 1, '4', 49999),
(50000, 842, 182, '50', 2, '79', 79999),
(80000, 843, 182, '800', 3, '999', 99999),
(0, 844, 183, '0', 1, '2', 29999),
(30000, 845, 183, '30', 2, '59', 59999),
(60000, 846, 183, '600', 3, '999', 99999),
(0, 847, 184, '0', 1, '4', 49999),
(50000, 848, 184, '50', 2, '79', 79999),
(80000, 849, 184, '800', 3, '999', 99999),
(0, 850, 185, '0', 1, '5', 59999),
(60000, 851, 185, '60', 2, '89', 89999),
(90000, 852, 185, '900', 3, '999', 99999),
(0, 853, 186, '0', 1, '2', 29999),
(30000, 854, 186, '30', 2, '59', 59999),
(60000, 855, 186, '600', 3, '999', 99999),
(0, 856, 187, '0', 1, '2', 29999),
(30000, 857, 187, '30', 2, '69', 69999),
(70000, 858, 187, '700', 3, '999', 99999),
(0, 859, 188, '0', 1, '4', 49999),
(50000, 860, 188, '50', 2, '79', 79999),
(80000, 861, 188, '800', 3, '999', 99999),
(0, 862, 189, '0', 1, '1', 19999),
(20000, 863, 189, '20', 2, '89', 89999),
(90000, 864, 189, '900', 3, '999', 99999),
(0, 865, 190, '0', 1, '4', 49999),
(50000, 866, 190, '50', 2, '79', 79999),
(80000, 867, 190, '800', 3, '999', 99999),
(0, 868, 192, '0', 1, '4', 49999),
(50000, 869, 192, '50', 2, '79', 79999),
(80000, 870, 192, '800', 3, '999', 99999),
(0, 871, 193, '0', 1, '2', 29999),
(30000, 872, 193, '30', 2, '79', 79999),
(80000, 873, 193, '800', 3, '939', 93999),
(94000, 874, 193, '94', 2, '99', 99999),
(0, 875, 194, '0', 1, '2', 29999),
(30000, 876, 194, '30', 2, '69', 69999),
(70000, 877, 194, '700', 3, '999', 99999),
(0, 878, 195, '0', 1, '1', 19999),
(20000, 879, 195, '20', 2, '59', 59999),
(60000, 880, 195, '600', 3, '799', 79999),
(80000, 881, 195, '80', 2, '89', 89999),
(90000, 882, 195, '90', 2, '99', 99999),
(0, 883, 196, '00', 2, '59', 59999),
(60000, 884, 196, '600', 3, '859', 85999),
(86000, 885, 196, '86', 2, '99', 99999),
(0, 886, 197, '0', 1, '1', 19999),
(20000, 887, 197, '20', 2, '79', 79999),
(80000, 888, 197, '800', 3, '999', 99999),
(0, 889, 198, '0', 1, '4', 49999),
(50000, 890, 198, '50', 2, '94', 94999),
(95000, 891, 198, '950', 3, '999', 99999),
(0, 892, 199, '0', 1, '2', 29999),
(30000, 893, 199, '30', 2, '59', 59999),
(60000, 894, 199, '600', 3, '999', 99999),
(0, 895, 200, '0', 1, '0', 9999),
(10000, 896, 200, '10', 2, '94', 94999),
(95000, 897, 200, '950', 3, '999', 99999),
(0, 898, 201, '0', 1, '3', 39999),
(40000, 899, 201, '40', 2, '89', 89999),
(90000, 900, 201, '900', 3, '999', 99999),
(0, 901, 202, '0', 1, '4', 49999),
(50000, 902, 202, '50', 2, '79', 79999),
(80000, 903, 202, '800', 3, '999', 99999),
(0, 904, 203, '00', 2, '49', 49999),
(50000, 905, 203, '500', 3, '999', 99999),
(0, 906, 204, '0', 1, '1', 19999),
(20000, 907, 204, '20', 2, '79', 79999),
(80000, 908, 204, '800', 3, '999', 99999),
(0, 909, 205, '0', 1, '3', 39999),
(40000, 910, 205, '40', 2, '79', 79999),
(80000, 911, 205, '800', 3, '999', 99999),
(0, 912, 206, '0', 1, '2', 29999),
(30000, 913, 206, '30', 2, '69', 69999),
(70000, 914, 206, '700', 3, '799', 79999),
(0, 915, 207, '0', 1, '1', 19999),
(20000, 916, 207, '20', 2, '59', 59999),
(60000, 917, 207, '600', 3, '899', 89999),
(0, 918, 208, '0', 1, '3', 39999),
(40000, 919, 208, '400', 3, '599', 59999),
(60000, 920, 208, '60', 2, '89', 89999),
(90000, 921, 208, '900', 3, '999', 99999),
(0, 922, 209, '00', 2, '19', 19999),
(20000, 923, 209, '200', 3, '699', 69999),
(70000, 924, 209, '7000', 4, '8999', 89999),
(90000, 925, 209, '90000', 5, '97599', 97599),
(97600, 926, 209, '976000', 6, '999999', 99999);

-- --------------------------------------------------------

--
-- Table structure for table `ezkeyword`
--

CREATE TABLE `ezkeyword` (
  `class_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `keyword` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezkeyword_attribute_link`
--

CREATE TABLE `ezkeyword_attribute_link` (
  `id` int(11) NOT NULL,
  `keyword_id` int(11) NOT NULL DEFAULT '0',
  `objectattribute_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezmedia`
--

CREATE TABLE `ezmedia` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `controls` varchar(50) DEFAULT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `has_controller` int(11) DEFAULT '0',
  `height` int(11) DEFAULT NULL,
  `is_autoplay` int(11) DEFAULT '0',
  `is_loop` int(11) DEFAULT '0',
  `mime_type` varchar(50) NOT NULL DEFAULT '',
  `original_filename` varchar(255) NOT NULL DEFAULT '',
  `pluginspage` varchar(255) DEFAULT NULL,
  `quality` varchar(50) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0',
  `width` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezmessage`
--

CREATE TABLE `ezmessage` (
  `body` longtext,
  `destination_address` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `is_sent` int(11) NOT NULL DEFAULT '0',
  `send_method` varchar(50) NOT NULL DEFAULT '',
  `send_time` varchar(50) NOT NULL DEFAULT '',
  `send_weekday` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezmodule_run`
--

CREATE TABLE `ezmodule_run` (
  `function_name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `module_data` longtext,
  `module_name` varchar(255) DEFAULT NULL,
  `workflow_process_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezmultipricedata`
--

CREATE TABLE `ezmultipricedata` (
  `contentobject_attr_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attr_version` int(11) NOT NULL DEFAULT '0',
  `currency_code` varchar(4) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `value` decimal(15,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezm_block`
--

CREATE TABLE `ezm_block` (
  `id` char(32) NOT NULL,
  `zone_id` char(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `node_id` int(10) UNSIGNED NOT NULL,
  `overflow_id` char(32) DEFAULT NULL,
  `last_update` int(10) UNSIGNED DEFAULT '0',
  `block_type` varchar(255) DEFAULT NULL,
  `fetch_params` longtext,
  `rotation_type` int(10) UNSIGNED DEFAULT NULL,
  `rotation_interval` int(10) UNSIGNED DEFAULT NULL,
  `is_removed` int(2) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezm_pool`
--

CREATE TABLE `ezm_pool` (
  `block_id` char(32) NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL,
  `priority` int(10) UNSIGNED DEFAULT '0',
  `ts_publication` int(11) DEFAULT '0',
  `ts_visible` int(10) UNSIGNED DEFAULT '0',
  `ts_hidden` int(10) UNSIGNED DEFAULT '0',
  `rotation_until` int(10) UNSIGNED DEFAULT '0',
  `moved_to` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eznode_assignment`
--

CREATE TABLE `eznode_assignment` (
  `contentobject_id` int(11) DEFAULT NULL,
  `contentobject_version` int(11) DEFAULT NULL,
  `from_node_id` int(11) DEFAULT '0',
  `id` int(11) NOT NULL,
  `is_main` int(11) NOT NULL DEFAULT '0',
  `op_code` int(11) NOT NULL DEFAULT '0',
  `parent_node` int(11) DEFAULT NULL,
  `parent_remote_id` varchar(100) NOT NULL DEFAULT '',
  `remote_id` varchar(100) NOT NULL DEFAULT '0',
  `sort_field` int(11) DEFAULT '1',
  `sort_order` int(11) DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '0',
  `is_hidden` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eznode_assignment`
--

INSERT INTO `eznode_assignment` (`contentobject_id`, `contentobject_version`, `from_node_id`, `id`, `is_main`, `op_code`, `parent_node`, `parent_remote_id`, `remote_id`, `sort_field`, `sort_order`, `priority`, `is_hidden`) VALUES
(8, 2, 0, 4, 1, 2, 5, '', '0', 1, 1, 0, 0),
(42, 1, 0, 5, 1, 2, 5, '', '0', 9, 1, 0, 0),
(10, 2, -1, 6, 1, 2, 44, '', '0', 9, 1, 0, 0),
(4, 1, 0, 7, 1, 2, 1, '', '0', 1, 1, 0, 0),
(12, 1, 0, 8, 1, 2, 5, '', '0', 1, 1, 0, 0),
(41, 1, 0, 11, 1, 2, 1, '', '0', 1, 1, 0, 0),
(11, 1, 0, 12, 1, 2, 5, '', '0', 1, 1, 0, 0),
(45, 1, -1, 16, 1, 2, 1, '', '0', 9, 1, 0, 0),
(49, 1, 0, 27, 1, 2, 43, '', '0', 9, 1, 0, 0),
(50, 1, 0, 28, 1, 2, 43, '', '0', 9, 1, 0, 0),
(51, 1, 0, 29, 1, 2, 43, '', '0', 9, 1, 0, 0),
(52, 1, 0, 30, 1, 2, 48, '', '0', 1, 1, 0, 0),
(56, 1, 0, 34, 1, 2, 1, '', '0', 2, 0, 0, 0),
(14, 3, -1, 38, 1, 2, 13, '', '0', 1, 1, 0, 0),
(54, 2, -1, 39, 1, 2, 58, '', '0', 1, 1, 0, 0),
(14, 4, -1, 45, 1, 2, 13, 'e5161a99f733200b9ed4e80f9c16187b', '0', 1, 1, 0, 0),
(11, 2, -1, 47, 1, 2, 5, '602dcf84765e56b7f999eaafd3821dd3', '0', 1, 1, 0, 0),
(57, 2, -1, 48, 1, 2, 1, 'f3e90596361e31d496d4026eb624c983', '0', 8, 1, 0, 0),
(60, 1, 0, 49, 1, 2, 2, 'f5715cfe7bf8caa1bb51592007d069cf', '0', 1, 1, 0, 0),
(61, 1, 0, 50, 1, 2, 43, 'ac7fff82b48347a2908a4b0580bb8b16', '0', 1, 1, 0, 0),
(62, 1, 0, 51, 1, 2, 2, '10061a56fcbccc3a4bfa2eab8f0d8af4', '0', 1, 1, 0, 0),
(63, 1, 0, 52, 1, 2, 2, 'c65e48a14e2604cab3e17316dd992b1b', '0', 1, 1, 0, 0),
(64, 1, 0, 53, 1, 2, 2, 'd3868ae95be8c4854a5e634aae0da7dd', '0', 1, 1, 0, 0),
(65, 1, 0, 54, 1, 2, 2, 'dc80a17e5476e97d3d77f02031b54472', '0', 1, 1, 0, 0),
(66, 1, 0, 55, 1, 2, 2, '62f1bf7827837574f2ca6a0bc5693c0b', '0', 1, 1, 0, 0),
(67, 1, 0, 56, 1, 2, 2, 'ee55dc8f8d464b74722c3918cd1e04cc', '0', 1, 1, 0, 0),
(68, 1, 0, 57, 1, 2, 2, 'fb380f2349fef17c54a627a24408d1bc', '0', 1, 1, 0, 0),
(69, 1, 0, 58, 1, 2, 2, 'a577d6c719bacd297f630f0cc347b834', '0', 1, 1, 0, 0),
(70, 1, 0, 59, 1, 2, 2, 'dd62357a9d17f3e9f3410639a949778b', '0', 1, 1, 0, 0),
(71, 1, 0, 60, 1, 2, 2, '8956e9adef38d5d8cbc505fbb407aa93', '0', 1, 1, 0, 0),
(72, 1, 0, 61, 1, 2, 2, '60434c648fbeec4b0170976c39d0a1fd', '0', 1, 1, 0, 0),
(73, 1, 0, 62, 1, 2, 2, '03ba106e96743673fbdd47c44c16dea5', '0', 1, 1, 0, 0),
(74, 1, 0, 63, 1, 2, 2, '7157f9e0ba6fe23143e1226b4a447f53', '0', 1, 1, 0, 0),
(75, 1, 0, 64, 1, 2, 2, '7e331ddc36f1a46a1602f4d4951b513f', '0', 1, 1, 0, 0),
(76, 1, 0, 65, 1, 2, 2, '044dd5b3be219ec1905a98732e6e6ab7', '0', 1, 1, 0, 0),
(14, 5, -1, 71, 1, 2, 13, 'e5161a99f733200b9ed4e80f9c16187b', '0', 1, 1, 0, 0),
(154, 1, 0, 91, 1, 2, 12, '3ae51711b28227841ed2e05a40e87e9e', '0', 1, 1, 0, 0),
(155, 1, 0, 92, 1, 2, 12, '1c251a8302bb0a36a0a8c7af78c30a88', '0', 1, 1, 0, 0),
(156, 1, 0, 93, 1, 2, 12, '98cf0e5f4eba66c988770450c84732a0', '0', 1, 1, 0, 0),
(157, 1, 0, 94, 1, 2, 12, 'd2846774f0bf0c123a6c3e7f0ad680d5', '0', 1, 1, 0, 0),
(158, 1, 0, 95, 1, 2, 12, 'a07e1c21bb1cfdbb42af37e6b2e26a4f', '0', 1, 1, 0, 0),
(159, 1, 0, 96, 1, 2, 12, '7e2affa67618b141eeb0ca0733f60bc8', '0', 1, 1, 0, 0),
(160, 1, 0, 97, 1, 2, 12, '8d034592706f4bf67755cfad511d99f4', '0', 1, 1, 0, 0),
(161, 1, 0, 98, 1, 2, 12, '3655e3e42972287749cdc346373fddde', '0', 1, 1, 0, 0),
(162, 1, 0, 99, 1, 2, 12, 'c1432cb9e84de2a025ea59fbf40695c1', '0', 1, 1, 0, 0),
(163, 1, 0, 100, 1, 2, 12, 'f9b881d6614b79e6e9a840c3f9136ad7', '0', 1, 1, 0, 0),
(154, 2, -1, 120, 1, 2, 12, '3ae51711b28227841ed2e05a40e87e9e', '0', 1, 1, 0, 0),
(155, 2, -1, 121, 1, 2, 12, '1c251a8302bb0a36a0a8c7af78c30a88', '0', 1, 1, 0, 0),
(156, 2, -1, 122, 1, 2, 12, '98cf0e5f4eba66c988770450c84732a0', '0', 1, 1, 0, 0),
(157, 2, -1, 123, 1, 2, 12, 'd2846774f0bf0c123a6c3e7f0ad680d5', '0', 1, 1, 0, 0),
(158, 2, -1, 124, 1, 2, 12, 'a07e1c21bb1cfdbb42af37e6b2e26a4f', '0', 1, 1, 0, 0),
(159, 2, -1, 125, 1, 2, 12, '7e2affa67618b141eeb0ca0733f60bc8', '0', 1, 1, 0, 0),
(160, 2, -1, 126, 1, 2, 12, '8d034592706f4bf67755cfad511d99f4', '0', 1, 1, 0, 0),
(161, 2, -1, 127, 1, 2, 12, '3655e3e42972287749cdc346373fddde', '0', 1, 1, 0, 0),
(162, 2, -1, 128, 1, 2, 12, 'c1432cb9e84de2a025ea59fbf40695c1', '0', 1, 1, 0, 0),
(163, 2, -1, 129, 1, 2, 12, 'f9b881d6614b79e6e9a840c3f9136ad7', '0', 1, 1, 0, 0),
(166, 1, 0, 132, 1, 2, 12, '499f74c9b56da509e29f1e8fbf84275b', '0', 1, 1, 0, 0),
(171, 1, 0, 138, 1, 2, 12, '46940ea4d6291796ee4b8a1f6d8651fc', '0', 1, 1, 0, 0),
(172, 1, 0, 139, 1, 2, 12, '8c4a5e26e57424243ce6e390c559f56d', '0', 1, 1, 0, 0),
(163, 3, -1, 140, 1, 2, 12, 'f9b881d6614b79e6e9a840c3f9136ad7', '0', 1, 1, 0, 0),
(173, 1, 0, 141, 1, 2, 12, 'f57b223228dfb33eb91f8f8d2903d547', '0', 1, 1, 0, 0),
(154, 3, -1, 202, 1, 2, 12, '3ae51711b28227841ed2e05a40e87e9e', '0', 1, 1, 0, 0),
(155, 3, -1, 205, 1, 2, 12, '1c251a8302bb0a36a0a8c7af78c30a88', '0', 1, 1, 0, 0),
(156, 3, -1, 208, 1, 2, 12, '98cf0e5f4eba66c988770450c84732a0', '0', 1, 1, 0, 0),
(157, 3, -1, 211, 1, 2, 12, 'd2846774f0bf0c123a6c3e7f0ad680d5', '0', 1, 1, 0, 0),
(158, 3, -1, 214, 1, 2, 12, 'a07e1c21bb1cfdbb42af37e6b2e26a4f', '0', 1, 1, 0, 0),
(159, 3, -1, 217, 1, 2, 12, '7e2affa67618b141eeb0ca0733f60bc8', '0', 1, 1, 0, 0),
(160, 3, -1, 220, 1, 2, 12, '8d034592706f4bf67755cfad511d99f4', '0', 1, 1, 0, 0),
(161, 3, -1, 223, 1, 2, 12, '3655e3e42972287749cdc346373fddde', '0', 1, 1, 0, 0),
(162, 3, -1, 226, 1, 2, 12, 'c1432cb9e84de2a025ea59fbf40695c1', '0', 1, 1, 0, 0),
(163, 4, -1, 229, 1, 2, 12, 'f9b881d6614b79e6e9a840c3f9136ad7', '0', 1, 1, 0, 0),
(171, 2, -1, 243, 1, 2, 12, '46940ea4d6291796ee4b8a1f6d8651fc', '0', 1, 1, 0, 0),
(163, 5, -1, 248, 1, 2, 12, 'f9b881d6614b79e6e9a840c3f9136ad7', '0', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `eznotificationcollection`
--

CREATE TABLE `eznotificationcollection` (
  `data_subject` longtext NOT NULL,
  `data_text` longtext NOT NULL,
  `event_id` int(11) NOT NULL DEFAULT '0',
  `handler` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `transport` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eznotificationcollection_item`
--

CREATE TABLE `eznotificationcollection_item` (
  `address` varchar(255) NOT NULL DEFAULT '',
  `collection_id` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `send_date` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eznotificationevent`
--

CREATE TABLE `eznotificationevent` (
  `data_int1` int(11) NOT NULL DEFAULT '0',
  `data_int2` int(11) NOT NULL DEFAULT '0',
  `data_int3` int(11) NOT NULL DEFAULT '0',
  `data_int4` int(11) NOT NULL DEFAULT '0',
  `data_text1` longtext NOT NULL,
  `data_text2` longtext NOT NULL,
  `data_text3` longtext NOT NULL,
  `data_text4` longtext NOT NULL,
  `event_type_string` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eznotificationevent`
--

INSERT INTO `eznotificationevent` (`data_int1`, `data_int2`, `data_int3`, `data_int4`, `data_text1`, `data_text2`, `data_text3`, `data_text4`, `event_type_string`, `id`, `status`) VALUES
(57, 1, 0, 0, '', '', '', '', 'ezpublish', 1, 0),
(58, 1, 0, 0, '', '', '', '', 'ezpublish', 2, 0),
(14, 4, 0, 0, '', '', '', '', 'ezpublish', 3, 0),
(59, 1, 0, 0, '', '', '', '', 'ezpublish', 4, 0),
(11, 2, 0, 0, '', '', '', '', 'ezpublish', 5, 0),
(57, 2, 0, 0, '', '', '', '', 'ezpublish', 6, 0),
(61, 1, 0, 0, '', '', '', '', 'ezpublish', 7, 0),
(60, 1, 0, 0, '', '', '', '', 'ezpublish', 8, 0),
(62, 1, 0, 0, '', '', '', '', 'ezpublish', 9, 0),
(63, 1, 0, 0, '', '', '', '', 'ezpublish', 10, 0),
(64, 1, 0, 0, '', '', '', '', 'ezpublish', 11, 0),
(65, 1, 0, 0, '', '', '', '', 'ezpublish', 12, 0),
(66, 1, 0, 0, '', '', '', '', 'ezpublish', 13, 0),
(67, 1, 0, 0, '', '', '', '', 'ezpublish', 14, 0),
(68, 1, 0, 0, '', '', '', '', 'ezpublish', 15, 0),
(69, 1, 0, 0, '', '', '', '', 'ezpublish', 16, 0),
(70, 1, 0, 0, '', '', '', '', 'ezpublish', 17, 0),
(71, 1, 0, 0, '', '', '', '', 'ezpublish', 18, 0),
(72, 1, 0, 0, '', '', '', '', 'ezpublish', 19, 0),
(73, 1, 0, 0, '', '', '', '', 'ezpublish', 20, 0),
(74, 1, 0, 0, '', '', '', '', 'ezpublish', 21, 0),
(75, 1, 0, 0, '', '', '', '', 'ezpublish', 22, 0),
(76, 1, 0, 0, '', '', '', '', 'ezpublish', 23, 0),
(78, 1, 0, 0, '', '', '', '', 'ezpublish', 24, 0),
(79, 1, 0, 0, '', '', '', '', 'ezpublish', 25, 0),
(79, 2, 0, 0, '', '', '', '', 'ezpublish', 26, 0),
(80, 1, 0, 0, '', '', '', '', 'ezpublish', 27, 0),
(14, 5, 0, 0, '', '', '', '', 'ezpublish', 28, 0),
(135, 1, 0, 0, '', '', '', '', 'ezpublish', 29, 0),
(136, 1, 0, 0, '', '', '', '', 'ezpublish', 30, 0),
(137, 1, 0, 0, '', '', '', '', 'ezpublish', 31, 0),
(138, 1, 0, 0, '', '', '', '', 'ezpublish', 32, 0),
(139, 1, 0, 0, '', '', '', '', 'ezpublish', 33, 0),
(140, 1, 0, 0, '', '', '', '', 'ezpublish', 34, 0),
(141, 1, 0, 0, '', '', '', '', 'ezpublish', 35, 0),
(142, 1, 0, 0, '', '', '', '', 'ezpublish', 36, 0),
(143, 1, 0, 0, '', '', '', '', 'ezpublish', 37, 0),
(144, 1, 0, 0, '', '', '', '', 'ezpublish', 38, 0),
(145, 1, 0, 0, '', '', '', '', 'ezpublish', 39, 0),
(146, 1, 0, 0, '', '', '', '', 'ezpublish', 40, 0),
(147, 1, 0, 0, '', '', '', '', 'ezpublish', 41, 0),
(148, 1, 0, 0, '', '', '', '', 'ezpublish', 42, 0),
(149, 1, 0, 0, '', '', '', '', 'ezpublish', 43, 0),
(150, 1, 0, 0, '', '', '', '', 'ezpublish', 44, 0),
(151, 1, 0, 0, '', '', '', '', 'ezpublish', 45, 0),
(152, 1, 0, 0, '', '', '', '', 'ezpublish', 46, 0),
(153, 1, 0, 0, '', '', '', '', 'ezpublish', 47, 0),
(154, 1, 0, 0, '', '', '', '', 'ezpublish', 48, 0),
(155, 1, 0, 0, '', '', '', '', 'ezpublish', 49, 0),
(156, 1, 0, 0, '', '', '', '', 'ezpublish', 50, 0),
(157, 1, 0, 0, '', '', '', '', 'ezpublish', 51, 0),
(158, 1, 0, 0, '', '', '', '', 'ezpublish', 52, 0),
(159, 1, 0, 0, '', '', '', '', 'ezpublish', 53, 0),
(160, 1, 0, 0, '', '', '', '', 'ezpublish', 54, 0),
(161, 1, 0, 0, '', '', '', '', 'ezpublish', 55, 0),
(162, 1, 0, 0, '', '', '', '', 'ezpublish', 56, 0),
(163, 1, 0, 0, '', '', '', '', 'ezpublish', 57, 0),
(148, 2, 0, 0, '', '', '', '', 'ezpublish', 58, 0),
(135, 2, 0, 0, '', '', '', '', 'ezpublish', 59, 0),
(136, 2, 0, 0, '', '', '', '', 'ezpublish', 60, 0),
(137, 2, 0, 0, '', '', '', '', 'ezpublish', 61, 0),
(138, 2, 0, 0, '', '', '', '', 'ezpublish', 62, 0),
(139, 2, 0, 0, '', '', '', '', 'ezpublish', 63, 0),
(140, 2, 0, 0, '', '', '', '', 'ezpublish', 64, 0),
(141, 2, 0, 0, '', '', '', '', 'ezpublish', 65, 0),
(142, 2, 0, 0, '', '', '', '', 'ezpublish', 66, 0),
(143, 2, 0, 0, '', '', '', '', 'ezpublish', 67, 0),
(144, 2, 0, 0, '', '', '', '', 'ezpublish', 68, 0),
(145, 2, 0, 0, '', '', '', '', 'ezpublish', 69, 0),
(146, 2, 0, 0, '', '', '', '', 'ezpublish', 70, 0),
(147, 2, 0, 0, '', '', '', '', 'ezpublish', 71, 0),
(149, 2, 0, 0, '', '', '', '', 'ezpublish', 72, 0),
(150, 2, 0, 0, '', '', '', '', 'ezpublish', 73, 0),
(151, 2, 0, 0, '', '', '', '', 'ezpublish', 74, 0),
(152, 2, 0, 0, '', '', '', '', 'ezpublish', 75, 0),
(153, 2, 0, 0, '', '', '', '', 'ezpublish', 76, 0),
(154, 2, 0, 0, '', '', '', '', 'ezpublish', 77, 0),
(155, 2, 0, 0, '', '', '', '', 'ezpublish', 78, 0),
(156, 2, 0, 0, '', '', '', '', 'ezpublish', 79, 0),
(157, 2, 0, 0, '', '', '', '', 'ezpublish', 80, 0),
(158, 2, 0, 0, '', '', '', '', 'ezpublish', 81, 0),
(159, 2, 0, 0, '', '', '', '', 'ezpublish', 82, 0),
(160, 2, 0, 0, '', '', '', '', 'ezpublish', 83, 0),
(161, 2, 0, 0, '', '', '', '', 'ezpublish', 84, 0),
(162, 2, 0, 0, '', '', '', '', 'ezpublish', 85, 0),
(163, 2, 0, 0, '', '', '', '', 'ezpublish', 86, 0),
(164, 1, 0, 0, '', '', '', '', 'ezpublish', 87, 0),
(165, 1, 0, 0, '', '', '', '', 'ezpublish', 88, 0),
(166, 1, 0, 0, '', '', '', '', 'ezpublish', 89, 0),
(167, 1, 0, 0, '', '', '', '', 'ezpublish', 90, 0),
(168, 1, 0, 0, '', '', '', '', 'ezpublish', 91, 0),
(169, 1, 0, 0, '', '', '', '', 'ezpublish', 92, 0),
(170, 1, 0, 0, '', '', '', '', 'ezpublish', 93, 0),
(147, 3, 0, 0, '', '', '', '', 'ezpublish', 94, 0),
(171, 1, 0, 0, '', '', '', '', 'ezpublish', 95, 0),
(172, 1, 0, 0, '', '', '', '', 'ezpublish', 96, 0),
(163, 3, 0, 0, '', '', '', '', 'ezpublish', 97, 0),
(173, 1, 0, 0, '', '', '', '', 'ezpublish', 98, 0),
(178, 1, 0, 0, '', '', '', '', 'ezpublish', 99, 0),
(148, 3, 0, 0, '', '', '', '', 'ezpublish', 100, 0),
(135, 3, 0, 0, '', '', '', '', 'ezpublish', 101, 0),
(136, 3, 0, 0, '', '', '', '', 'ezpublish', 102, 0),
(137, 3, 0, 0, '', '', '', '', 'ezpublish', 103, 0),
(138, 3, 0, 0, '', '', '', '', 'ezpublish', 104, 0),
(139, 3, 0, 0, '', '', '', '', 'ezpublish', 105, 0),
(140, 3, 0, 0, '', '', '', '', 'ezpublish', 106, 0),
(141, 3, 0, 0, '', '', '', '', 'ezpublish', 107, 0),
(142, 3, 0, 0, '', '', '', '', 'ezpublish', 108, 0),
(143, 3, 0, 0, '', '', '', '', 'ezpublish', 109, 0),
(144, 3, 0, 0, '', '', '', '', 'ezpublish', 110, 0),
(145, 3, 0, 0, '', '', '', '', 'ezpublish', 111, 0),
(146, 3, 0, 0, '', '', '', '', 'ezpublish', 112, 0),
(147, 4, 0, 0, '', '', '', '', 'ezpublish', 113, 0),
(149, 3, 0, 0, '', '', '', '', 'ezpublish', 114, 0),
(150, 3, 0, 0, '', '', '', '', 'ezpublish', 115, 0),
(151, 3, 0, 0, '', '', '', '', 'ezpublish', 116, 0),
(152, 3, 0, 0, '', '', '', '', 'ezpublish', 117, 0),
(153, 3, 0, 0, '', '', '', '', 'ezpublish', 118, 0),
(154, 3, 0, 0, '', '', '', '', 'ezpublish', 119, 0),
(155, 3, 0, 0, '', '', '', '', 'ezpublish', 120, 0),
(156, 3, 0, 0, '', '', '', '', 'ezpublish', 121, 0),
(157, 3, 0, 0, '', '', '', '', 'ezpublish', 122, 0),
(158, 3, 0, 0, '', '', '', '', 'ezpublish', 123, 0),
(159, 3, 0, 0, '', '', '', '', 'ezpublish', 124, 0),
(160, 3, 0, 0, '', '', '', '', 'ezpublish', 125, 0),
(161, 3, 0, 0, '', '', '', '', 'ezpublish', 126, 0),
(162, 3, 0, 0, '', '', '', '', 'ezpublish', 127, 0),
(163, 4, 0, 0, '', '', '', '', 'ezpublish', 128, 0),
(147, 5, 0, 0, '', '', '', '', 'ezpublish', 129, 0),
(171, 2, 0, 0, '', '', '', '', 'ezpublish', 130, 0),
(163, 5, 0, 0, '', '', '', '', 'ezpublish', 131, 0),
(179, 1, 0, 0, '', '', '', '', 'ezpublish', 132, 0),
(180, 1, 0, 0, '', '', '', '', 'ezpublish', 133, 0),
(181, 1, 0, 0, '', '', '', '', 'ezpublish', 134, 0),
(182, 1, 0, 0, '', '', '', '', 'ezpublish', 135, 0),
(183, 1, 0, 0, '', '', '', '', 'ezpublish', 136, 0),
(184, 1, 0, 0, '', '', '', '', 'ezpublish', 137, 0),
(185, 1, 0, 0, '', '', '', '', 'ezpublish', 138, 0),
(182, 2, 0, 0, '', '', '', '', 'ezpublish', 139, 0),
(183, 2, 0, 0, '', '', '', '', 'ezpublish', 140, 0),
(184, 2, 0, 0, '', '', '', '', 'ezpublish', 141, 0),
(185, 2, 0, 0, '', '', '', '', 'ezpublish', 142, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ezoperation_memento`
--

CREATE TABLE `ezoperation_memento` (
  `id` int(11) NOT NULL,
  `main` int(11) NOT NULL DEFAULT '0',
  `main_key` varchar(32) NOT NULL DEFAULT '',
  `memento_data` longtext NOT NULL,
  `memento_key` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezorder`
--

CREATE TABLE `ezorder` (
  `account_identifier` varchar(100) NOT NULL DEFAULT 'default',
  `created` int(11) NOT NULL DEFAULT '0',
  `data_text_1` longtext,
  `data_text_2` longtext,
  `email` varchar(150) DEFAULT '',
  `id` int(11) NOT NULL,
  `ignore_vat` int(11) NOT NULL DEFAULT '0',
  `is_archived` int(11) NOT NULL DEFAULT '0',
  `is_temporary` int(11) NOT NULL DEFAULT '1',
  `order_nr` int(11) NOT NULL DEFAULT '0',
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `status_id` int(11) DEFAULT '0',
  `status_modified` int(11) DEFAULT '0',
  `status_modifier_id` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezorder_item`
--

CREATE TABLE `ezorder_item` (
  `description` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `is_vat_inc` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `price` float DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `vat_value` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezorder_nr_incr`
--

CREATE TABLE `ezorder_nr_incr` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezorder_status`
--

CREATE TABLE `ezorder_status` (
  `id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `status_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezorder_status`
--

INSERT INTO `ezorder_status` (`id`, `is_active`, `name`, `status_id`) VALUES
(1, 1, 'Pending', 1),
(2, 1, 'Processing', 2),
(3, 1, 'Delivered', 3);

-- --------------------------------------------------------

--
-- Table structure for table `ezorder_status_history`
--

CREATE TABLE `ezorder_status_history` (
  `id` int(11) NOT NULL,
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `status_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezpackage`
--

CREATE TABLE `ezpackage` (
  `id` int(11) NOT NULL,
  `install_date` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `version` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezpackage`
--

INSERT INTO `ezpackage` (`id`, `install_date`, `name`, `version`) VALUES
(1, 1301057838, 'plain_site_data', '1.0-1'),
(2, 1537996677, 'ezwt_extension', '5.3-0'),
(3, 1537996684, 'ezstarrating_extension', '5.3-0'),
(4, 1537996689, 'ezgmaplocation_extension', '5.3-0'),
(5, 1537996693, 'ezflow_extension', '5.3-0'),
(6, 1537996699, 'ezdemo_extension', '5.4-0'),
(7, 1537996699, 'ezdemo_classes', '5.4-0'),
(8, 1537996701, 'ezdemo_democontent_clean', '5.4-0');

-- --------------------------------------------------------

--
-- Table structure for table `ezpaymentobject`
--

CREATE TABLE `ezpaymentobject` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `payment_string` varchar(255) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `workflowprocess_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezpdf_export`
--

CREATE TABLE `ezpdf_export` (
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `export_classes` varchar(255) DEFAULT NULL,
  `export_structure` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `intro_text` longtext,
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `pdf_filename` varchar(255) DEFAULT NULL,
  `show_frontpage` int(11) DEFAULT NULL,
  `site_access` varchar(255) DEFAULT NULL,
  `source_node_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sub_text` longtext,
  `title` varchar(255) DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezpending_actions`
--

CREATE TABLE `ezpending_actions` (
  `id` int(11) NOT NULL,
  `action` varchar(64) NOT NULL DEFAULT '',
  `created` int(11) DEFAULT NULL,
  `param` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezpolicy`
--

CREATE TABLE `ezpolicy` (
  `function_name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `original_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezpolicy`
--

INSERT INTO `ezpolicy` (`function_name`, `id`, `module_name`, `original_id`, `role_id`) VALUES
('*', 308, '*', 0, 2),
('call', 503, 'ezjscore', 0, 5),
('password', 505, 'user', 0, 5),
('selfedit', 506, 'user', 0, 5),
('login', 533, 'user', 0, 1),
('read', 620, 'content', 0, 26),
('read', 621, 'content', 0, 26),
('read', 622, 'content', 0, 26),
('read', 623, 'content', 0, 26),
('collaboration', 624, 'consiglio', 0, 27),
('full_dashboard', 625, 'editorialstuff', 0, 27),
('read', 626, 'content', 0, 27),
('create', 627, 'content', 0, 27),
('collaboration', 628, 'consiglio', 0, 28),
('full_dashboard', 629, 'editorialstuff', 0, 28),
('read', 630, 'content', 0, 28),
('create', 631, 'content', 0, 28),
('create', 632, 'content', 0, 28),
('use', 633, 'consiglio', 0, 29),
('create', 634, 'content', 0, 29),
('create', 635, 'content', 0, 29),
('edit', 636, 'content', 0, 29),
('edit', 637, 'content', 0, 29),
('read', 638, 'content', 0, 29),
('read', 639, 'content', 0, 29),
('dashboard', 640, 'editorialstuff', 0, 29),
('file', 641, 'editorialstuff', 0, 29),
('full_dashboard', 642, 'editorialstuff', 0, 29),
('assign', 643, 'state', 0, 29),
('read', 644, 'content', 0, 30),
('read', 645, 'content', 0, 30),
('read', 646, 'content', 0, 30),
('read', 647, 'content', 0, 30),
('*', 648, 'add', 0, 31),
('*', 649, 'consiglio', 0, 31),
('read', 650, 'content', 0, 31),
('edit', 651, 'content', 0, 31),
('*', 652, 'editorialstuff', 0, 31),
('*', 653, 'ezflow', 0, 31),
('*', 654, 'ezjscore', 0, 31),
('*', 655, 'ezoe', 0, 31),
('editor_tools', 656, 'ocbtools', 0, 31),
('assign', 657, 'state', 0, 31),
('*', 658, 'websitetoolbar', 0, 31),
('create', 659, 'content', 0, 31),
('create', 660, 'content', 0, 31),
('create', 661, 'content', 0, 31),
('create', 662, 'content', 0, 31),
('create', 663, 'content', 0, 31),
('create', 664, 'content', 0, 31),
('create', 665, 'content', 0, 31),
('create', 666, 'content', 0, 31),
('create', 667, 'content', 0, 31),
('create', 668, 'content', 0, 31),
('create', 669, 'content', 0, 31),
('create', 670, 'content', 0, 31),
('create', 671, 'content', 0, 31),
('create', 672, 'content', 0, 31),
('create', 673, 'content', 0, 31),
('create', 674, 'content', 0, 31),
('create', 675, 'content', 0, 31),
('create', 676, 'content', 0, 31),
('create', 677, 'content', 0, 31),
('create', 678, 'content', 0, 31),
('create', 679, 'content', 0, 31),
('create', 680, 'content', 0, 31),
('create', 681, 'content', 0, 31),
('use', 682, 'consiglio', 0, 32),
('create', 683, 'content', 0, 32),
('edit', 684, 'content', 0, 32),
('edit', 685, 'content', 0, 32),
('read', 686, 'content', 0, 32),
('read', 687, 'content', 0, 32),
('read', 688, 'content', 0, 32),
('read', 689, 'content', 0, 32),
('dashboard', 690, 'editorialstuff', 0, 32),
('file', 691, 'editorialstuff', 0, 32),
('full_dashboard', 692, 'editorialstuff', 0, 32),
('editor', 693, 'ezoe', 0, 32),
('assign', 694, 'state', 0, 32);

-- --------------------------------------------------------

--
-- Table structure for table `ezpolicy_limitation`
--

CREATE TABLE `ezpolicy_limitation` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `policy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezpolicy_limitation`
--

INSERT INTO `ezpolicy_limitation` (`id`, `identifier`, `policy_id`) VALUES
(492, 'SiteAccess', 533),
(602, 'Class', 620),
(603, 'Class', 621),
(604, 'StateGroup_punto', 621),
(605, 'Class', 622),
(606, 'StateGroup_seduta', 622),
(607, 'Class', 623),
(608, 'StateGroup_visibilita_allegato_seduta', 623),
(609, 'Class', 626),
(610, 'Class', 627),
(611, 'ParentClass', 627),
(612, 'Class', 630),
(613, 'Class', 631),
(614, 'ParentClass', 631),
(615, 'Class', 632),
(616, 'ParentClass', 632),
(617, 'Class', 634),
(618, 'Subtree', 634),
(619, 'Class', 635),
(620, 'Subtree', 635),
(621, 'Class', 636),
(622, 'Owner', 636),
(623, 'Class', 637),
(624, 'Owner', 637),
(625, 'Class', 638),
(626, 'Owner', 638),
(627, 'Class', 639),
(628, 'StateGroup_visibilita_osservazione_seduta', 639),
(629, 'Class', 643),
(630, 'Owner', 643),
(631, 'StateGroup_visibilita_osservazione_seduta', 643),
(632, 'NewState', 643),
(633, 'Class', 644),
(634, 'StateGroup_punto', 644),
(635, 'Class', 645),
(636, 'StateGroup_visibilita_allegato_seduta', 645),
(637, 'Class', 646),
(638, 'StateGroup_seduta', 646),
(639, 'Class', 647),
(640, 'StateGroup_verbale', 647),
(641, 'Class', 659),
(642, 'Subtree', 659),
(643, 'Class', 660),
(644, 'Subtree', 660),
(645, 'Class', 661),
(646, 'Subtree', 661),
(647, 'Class', 662),
(648, 'Subtree', 662),
(649, 'Class', 663),
(650, 'Subtree', 663),
(651, 'Class', 664),
(652, 'Subtree', 664),
(653, 'Class', 665),
(654, 'Subtree', 665),
(655, 'Class', 666),
(656, 'Subtree', 666),
(657, 'Class', 667),
(658, 'Subtree', 667),
(659, 'Class', 668),
(660, 'Subtree', 668),
(661, 'Class', 669),
(662, 'Subtree', 669),
(663, 'Class', 670),
(664, 'Subtree', 670),
(665, 'Class', 671),
(666, 'Subtree', 671),
(667, 'Class', 672),
(668, 'Subtree', 672),
(669, 'Class', 673),
(670, 'Subtree', 673),
(671, 'Class', 674),
(672, 'Subtree', 674),
(673, 'Class', 675),
(674, 'Class', 676),
(675, 'Class', 677),
(676, 'Class', 678),
(677, 'Class', 679),
(678, 'Class', 680),
(679, 'Class', 681),
(680, 'Class', 683),
(681, 'ParentClass', 683),
(682, 'Class', 684),
(683, 'Owner', 684),
(684, 'Class', 685),
(685, 'Owner', 685),
(686, 'Class', 686),
(687, 'StateGroup_seduta', 686),
(688, 'Class', 687),
(689, 'Class', 688),
(690, 'Owner', 688),
(691, 'Class', 689),
(692, 'StateGroup_visibilita_osservazione_seduta', 689),
(693, 'Class', 694),
(694, 'Owner', 694),
(695, 'StateGroup_punto', 694),
(696, 'NewState', 694);

-- --------------------------------------------------------

--
-- Table structure for table `ezpolicy_limitation_value`
--

CREATE TABLE `ezpolicy_limitation_value` (
  `id` int(11) NOT NULL,
  `limitation_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezpolicy_limitation_value`
--

INSERT INTO `ezpolicy_limitation_value` (`id`, `limitation_id`, `value`) VALUES
(834, 492, '2582995467'),
(975, 602, '4'),
(976, 602, '48'),
(977, 603, '50'),
(978, 604, '12'),
(979, 604, '13'),
(980, 604, '14'),
(981, 605, '51'),
(982, 606, '7'),
(983, 606, '8'),
(984, 606, '6'),
(985, 607, '40'),
(986, 608, '17'),
(987, 609, '41'),
(988, 609, '43'),
(989, 609, '44'),
(990, 609, '42'),
(991, 609, '4'),
(992, 610, '43'),
(993, 610, '44'),
(994, 611, '42'),
(995, 612, '41'),
(996, 612, '43'),
(997, 612, '42'),
(998, 612, '44'),
(999, 612, '4'),
(1000, 613, '43'),
(1001, 613, '44'),
(1002, 614, '42'),
(1003, 615, '42'),
(1004, 616, '41'),
(1005, 617, '54'),
(1006, 618, '/1/2/74/'),
(1007, 619, '49'),
(1008, 620, '/1/2/71/'),
(1009, 621, '4'),
(1010, 622, '1'),
(1011, 623, '54'),
(1012, 624, '1'),
(1013, 625, '49'),
(1014, 626, '1'),
(1015, 627, '49'),
(1016, 628, '18'),
(1017, 629, '49'),
(1018, 630, '1'),
(1019, 631, '18'),
(1020, 631, '19'),
(1021, 632, '18'),
(1022, 632, '19'),
(1023, 633, '50'),
(1024, 634, '12'),
(1025, 634, '13'),
(1026, 634, '14'),
(1027, 635, '40'),
(1028, 636, '15'),
(1029, 637, '51'),
(1030, 638, '4'),
(1031, 638, '7'),
(1032, 638, '8'),
(1033, 638, '6'),
(1034, 638, '5'),
(1035, 639, '56'),
(1036, 640, '21'),
(1037, 640, '22'),
(1038, 641, '51'),
(1039, 642, '/1/2/62/'),
(1040, 643, '40'),
(1041, 644, '/1/2/64/'),
(1042, 645, '46'),
(1043, 646, '/1/2/65/'),
(1044, 647, '4'),
(1045, 648, '/1/2/66/'),
(1046, 649, '4'),
(1047, 650, '/1/2/67/'),
(1048, 651, '48'),
(1049, 652, '/1/2/68/'),
(1050, 653, '53'),
(1051, 654, '/1/2/69/'),
(1052, 655, '52'),
(1053, 656, '/1/2/70/'),
(1054, 657, '49'),
(1055, 658, '/1/2/71/'),
(1056, 659, '4'),
(1057, 660, '/1/2/72/'),
(1058, 661, '41'),
(1059, 662, '/1/2/73/'),
(1060, 663, '55'),
(1061, 664, '/1/2/75/'),
(1062, 665, '4'),
(1063, 666, '/1/2/76/'),
(1064, 667, '33'),
(1065, 668, '/1/2/77/'),
(1066, 669, '26'),
(1067, 670, '/1/2/78/'),
(1068, 671, '54'),
(1069, 672, '/1/2/74/'),
(1070, 673, '42'),
(1071, 674, '43'),
(1072, 675, '44'),
(1073, 676, '45'),
(1074, 677, '47'),
(1075, 678, '50'),
(1076, 679, '56'),
(1077, 680, '50'),
(1078, 681, '51'),
(1079, 682, '4'),
(1080, 683, '1'),
(1081, 684, '50'),
(1082, 685, '1'),
(1083, 686, '51'),
(1084, 687, '4'),
(1085, 687, '7'),
(1086, 687, '8'),
(1087, 687, '6'),
(1088, 687, '5'),
(1089, 688, '4'),
(1090, 689, '50'),
(1091, 690, '1'),
(1092, 691, '49'),
(1093, 692, '19'),
(1094, 693, '50'),
(1095, 694, '1'),
(1096, 695, '9'),
(1097, 696, '10');

-- --------------------------------------------------------

--
-- Table structure for table `ezpreferences`
--

CREATE TABLE `ezpreferences` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezpreferences`
--

INSERT INTO `ezpreferences` (`id`, `name`, `user_id`, `value`) VALUES
(1, 'admin_navigation_content', 14, '1'),
(2, 'admin_navigation_roles', 14, '1'),
(3, 'admin_navigation_policies', 14, '1'),
(4, 'admin_list_limit', 14, '2'),
(5, 'admin_treemenu', 14, '1'),
(6, 'admin_bookmark_menu', 14, '1'),
(7, 'admin_right_menu_show', 14, '1'),
(8, 'admin_clearcache_type', 14, 'Ini'),
(9, 'admin_left_menu_size', 14, '22.38461538em'),
(10, 'admin_role_list_limit', 14, '3');

-- --------------------------------------------------------

--
-- Table structure for table `ezprest_authcode`
--

CREATE TABLE `ezprest_authcode` (
  `client_id` varchar(200) NOT NULL DEFAULT '',
  `expirytime` bigint(20) NOT NULL DEFAULT '0',
  `id` varchar(200) NOT NULL DEFAULT '',
  `scope` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezprest_authorized_clients`
--

CREATE TABLE `ezprest_authorized_clients` (
  `created` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `rest_client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezprest_clients`
--

CREATE TABLE `ezprest_clients` (
  `client_id` varchar(200) DEFAULT NULL,
  `client_secret` varchar(200) DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `description` longtext,
  `endpoint_uri` varchar(200) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `updated` int(11) NOT NULL DEFAULT '0',
  `version` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezprest_token`
--

CREATE TABLE `ezprest_token` (
  `client_id` varchar(200) NOT NULL DEFAULT '',
  `expirytime` bigint(20) NOT NULL DEFAULT '0',
  `id` varchar(200) NOT NULL DEFAULT '',
  `refresh_token` varchar(200) NOT NULL DEFAULT '',
  `scope` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezproductcategory`
--

CREATE TABLE `ezproductcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezproductcollection`
--

CREATE TABLE `ezproductcollection` (
  `created` int(11) DEFAULT NULL,
  `currency_code` varchar(4) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezproductcollection_item`
--

CREATE TABLE `ezproductcollection_item` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `discount` float DEFAULT NULL,
  `id` int(11) NOT NULL,
  `is_vat_inc` int(11) DEFAULT NULL,
  `item_count` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `price` float DEFAULT '0',
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `vat_value` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezproductcollection_item_opt`
--

CREATE TABLE `ezproductcollection_item_opt` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `object_attribute_id` int(11) DEFAULT NULL,
  `option_item_id` int(11) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezpublishingqueueprocesses`
--

CREATE TABLE `ezpublishingqueueprocesses` (
  `created` int(11) DEFAULT NULL,
  `ezcontentobject_version_id` int(11) NOT NULL DEFAULT '0',
  `finished` int(11) DEFAULT NULL,
  `pid` int(8) DEFAULT NULL,
  `started` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezrole`
--

CREATE TABLE `ezrole` (
  `id` int(11) NOT NULL,
  `is_new` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` char(1) DEFAULT NULL,
  `version` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezrole`
--

INSERT INTO `ezrole` (`id`, `is_new`, `name`, `value`, `version`) VALUES
(1, 0, 'Anonymous', '', 0),
(2, 0, 'Administrator', '*', 0),
(5, 0, 'Member', NULL, 0),
(26, 0, 'OpenConsiglio - Anonimo', NULL, 0),
(27, 0, 'OpenConsiglio - Area Collaborativa', NULL, 0),
(28, 0, 'OpenConsiglio - Area Collaborativa - Politico', NULL, 0),
(29, 0, 'OpenConsiglio - Politico', NULL, 0),
(30, 0, 'OpenConsiglio - Politico (per organo)', NULL, 0),
(31, 0, 'OpenConsiglio - Segreteria', NULL, 0),
(32, 0, 'OpenConsiglio - Responsabile d\'area', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ezrss_export`
--

CREATE TABLE `ezrss_export` (
  `access_url` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `description` longtext,
  `id` int(11) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `main_node_only` int(11) NOT NULL DEFAULT '1',
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `node_id` int(11) DEFAULT NULL,
  `number_of_objects` int(11) NOT NULL DEFAULT '0',
  `rss_version` varchar(255) DEFAULT NULL,
  `site_access` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezrss_export`
--

INSERT INTO `ezrss_export` (`access_url`, `active`, `created`, `creator_id`, `description`, `id`, `image_id`, `main_node_only`, `modified`, `modifier_id`, `node_id`, `number_of_objects`, `rss_version`, `site_access`, `status`, `title`, `url`) VALUES
('my_feed', 1, 1537996703, 14, '', 1, 0, 1, 1537996703, 14, 0, 10, '2.0', '', 1, 'My RSS Feed', 'http://example.com');

-- --------------------------------------------------------

--
-- Table structure for table `ezrss_export_item`
--

CREATE TABLE `ezrss_export_item` (
  `category` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `enclosure` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `rssexport_id` int(11) DEFAULT NULL,
  `source_node_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `subnodes` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezrss_export_item`
--

INSERT INTO `ezrss_export_item` (`category`, `class_id`, `description`, `enclosure`, `id`, `rssexport_id`, `source_node_id`, `status`, `subnodes`, `title`) VALUES
('', 16, 'intro', '', 1, 1, 139, 1, 0, 'title');

-- --------------------------------------------------------

--
-- Table structure for table `ezrss_import`
--

CREATE TABLE `ezrss_import` (
  `active` int(11) DEFAULT NULL,
  `class_description` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `class_title` varchar(255) DEFAULT NULL,
  `class_url` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `destination_node_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `import_description` longtext NOT NULL,
  `modified` int(11) DEFAULT NULL,
  `modifier_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `object_owner_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `url` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezscheduled_script`
--

CREATE TABLE `ezscheduled_script` (
  `command` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `last_report_timestamp` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `process_id` int(11) NOT NULL DEFAULT '0',
  `progress` int(3) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezsearch_object_word_link`
--

CREATE TABLE `ezsearch_object_word_link` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `frequency` float NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `integer_value` int(11) NOT NULL DEFAULT '0',
  `next_word_id` int(11) NOT NULL DEFAULT '0',
  `placement` int(11) NOT NULL DEFAULT '0',
  `prev_word_id` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '0',
  `section_id` int(11) NOT NULL DEFAULT '0',
  `word_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezsearch_object_word_link`
--

INSERT INTO `ezsearch_object_word_link` (`contentclass_attribute_id`, `contentclass_id`, `contentobject_id`, `frequency`, `id`, `identifier`, `integer_value`, `next_word_id`, `placement`, `prev_word_id`, `published`, `section_id`, `word_id`) VALUES
(6, 3, 4, 0, 4663, 'name', 0, 951, 0, 0, 1033917596, 2, 930),
(7, 3, 4, 0, 4664, 'description', 0, 952, 1, 930, 1033917596, 2, 951),
(7, 3, 4, 0, 4665, 'description', 0, 0, 2, 951, 1033917596, 2, 952),
(8, 4, 10, 0, 4666, 'first_name', 0, 954, 0, 0, 1033920665, 2, 953),
(9, 4, 10, 0, 4667, 'last_name', 0, 953, 1, 953, 1033920665, 2, 954),
(12, 4, 10, 0, 4668, 'user_account', 0, 955, 2, 954, 1033920665, 2, 953),
(12, 4, 10, 0, 4669, 'user_account', 0, 927, 3, 953, 1033920665, 2, 955),
(12, 4, 10, 0, 4670, 'user_account', 0, 0, 4, 955, 1033920665, 2, 927),
(6, 3, 12, 0, 4673, 'name', 0, 930, 0, 0, 1033920775, 2, 958),
(6, 3, 12, 0, 4674, 'name', 0, 0, 1, 958, 1033920775, 2, 930),
(6, 3, 13, 0, 4675, 'name', 0, 0, 0, 0, 1033920794, 2, 959),
(4, 1, 41, 0, 4681, 'name', 0, 0, 0, 0, 1060695457, 3, 961),
(6, 3, 42, 0, 4682, 'name', 0, 930, 0, 0, 1072180330, 2, 953),
(6, 3, 42, 0, 4683, 'name', 0, 954, 1, 953, 1072180330, 2, 930),
(7, 3, 42, 0, 4684, 'description', 0, 952, 2, 930, 1072180330, 2, 954),
(7, 3, 42, 0, 4685, 'description', 0, 816, 3, 954, 1072180330, 2, 952),
(7, 3, 42, 0, 4686, 'description', 0, 814, 4, 952, 1072180330, 2, 816),
(7, 3, 42, 0, 4687, 'description', 0, 953, 5, 816, 1072180330, 2, 814),
(7, 3, 42, 0, 4688, 'description', 0, 954, 6, 814, 1072180330, 2, 953),
(7, 3, 42, 0, 4689, 'description', 0, 0, 7, 953, 1072180330, 2, 954),
(4, 1, 45, 0, 4690, 'name', 0, 0, 0, 0, 1079684190, 4, 812),
(4, 1, 49, 0, 4691, 'name', 0, 0, 0, 0, 1080220197, 3, 962),
(4, 1, 50, 0, 4692, 'name', 0, 0, 0, 0, 1080220220, 3, 963),
(4, 1, 51, 0, 4693, 'name', 0, 0, 0, 0, 1080220233, 3, 964),
(159, 14, 52, 0, 4694, 'name', 0, 965, 0, 0, 1082016591, 4, 877),
(159, 14, 52, 0, 4695, 'name', 0, 966, 1, 877, 1082016591, 4, 965),
(159, 14, 52, 0, 4696, 'name', 0, 0, 2, 965, 1082016591, 4, 966),
(176, 15, 54, 0, 4697, 'id', 0, 0, 0, 0, 1082016652, 5, 967),
(4, 1, 56, 0, 4698, 'name', 0, 0, 0, 0, 1103023132, 5, 968),
(230, 23, 57, 0, 4699, 'name', 0, 0, 0, 0, 1537996700, 1, 969),
(181, 16, 58, 0, 4700, 'title', 0, 970, 0, 0, 1537996701, 1, 970),
(182, 16, 58, 0, 4701, 'short_title', 0, 802, 1, 970, 1537996701, 1, 970),
(183, 16, 58, 0, 4702, 'intro', 0, 805, 2, 970, 1537996701, 1, 802),
(183, 16, 58, 0, 4703, 'intro', 0, 810, 3, 802, 1537996701, 1, 805),
(183, 16, 58, 0, 4704, 'intro', 0, 971, 4, 805, 1537996701, 1, 810),
(183, 16, 58, 0, 4705, 'intro', 0, 972, 5, 810, 1537996701, 1, 971),
(183, 16, 58, 0, 4706, 'intro', 0, 809, 6, 971, 1537996701, 1, 972),
(183, 16, 58, 0, 4707, 'intro', 0, 973, 7, 972, 1537996701, 1, 809),
(183, 16, 58, 0, 4708, 'intro', 0, 974, 8, 809, 1537996701, 1, 973),
(183, 16, 58, 0, 4709, 'intro', 0, 814, 9, 973, 1537996701, 1, 974),
(183, 16, 58, 0, 4710, 'intro', 0, 975, 10, 974, 1537996701, 1, 814),
(183, 16, 58, 0, 4711, 'intro', 0, 976, 11, 814, 1537996701, 1, 975),
(183, 16, 58, 0, 4712, 'intro', 0, 977, 12, 975, 1537996701, 1, 976),
(183, 16, 58, 0, 4713, 'intro', 0, 978, 13, 976, 1537996701, 1, 977),
(183, 16, 58, 0, 4714, 'intro', 0, 929, 14, 977, 1537996701, 1, 978),
(183, 16, 58, 0, 4715, 'intro', 0, 979, 15, 978, 1537996701, 1, 929),
(183, 16, 58, 0, 4716, 'intro', 0, 980, 16, 929, 1537996701, 1, 979),
(183, 16, 58, 0, 4717, 'intro', 0, 981, 17, 979, 1537996701, 1, 980),
(183, 16, 58, 0, 4718, 'intro', 0, 978, 18, 980, 1537996701, 1, 981),
(183, 16, 58, 0, 4719, 'intro', 0, 982, 19, 981, 1537996701, 1, 978),
(183, 16, 58, 0, 4720, 'intro', 0, 983, 20, 978, 1537996701, 1, 982),
(183, 16, 58, 0, 4721, 'intro', 0, 984, 21, 982, 1537996701, 1, 983),
(183, 16, 58, 0, 4722, 'intro', 0, 985, 22, 983, 1537996701, 1, 984),
(183, 16, 58, 0, 4723, 'intro', 0, 986, 23, 984, 1537996701, 1, 985),
(183, 16, 58, 0, 4724, 'intro', 0, 985, 24, 985, 1537996701, 1, 986),
(183, 16, 58, 0, 4725, 'intro', 0, 987, 25, 986, 1537996701, 1, 985),
(183, 16, 58, 0, 4726, 'intro', 0, 988, 26, 985, 1537996701, 1, 987),
(183, 16, 58, 0, 4727, 'intro', 0, 989, 27, 987, 1537996701, 1, 988),
(183, 16, 58, 0, 4728, 'intro', 0, 990, 28, 988, 1537996701, 1, 989),
(183, 16, 58, 0, 4729, 'intro', 0, 991, 29, 989, 1537996701, 1, 990),
(183, 16, 58, 0, 4730, 'intro', 0, 992, 30, 990, 1537996701, 1, 991),
(183, 16, 58, 0, 4731, 'intro', 0, 993, 31, 991, 1537996701, 1, 992),
(183, 16, 58, 0, 4732, 'intro', 0, 994, 32, 992, 1537996701, 1, 993),
(183, 16, 58, 0, 4733, 'intro', 0, 995, 33, 993, 1537996701, 1, 994),
(183, 16, 58, 0, 4734, 'intro', 0, 816, 34, 994, 1537996701, 1, 995),
(183, 16, 58, 0, 4735, 'intro', 0, 921, 35, 995, 1537996701, 1, 816),
(183, 16, 58, 0, 4736, 'intro', 0, 922, 36, 816, 1537996701, 1, 921),
(183, 16, 58, 0, 4737, 'intro', 0, 802, 37, 921, 1537996701, 1, 922),
(184, 16, 58, 0, 4738, 'body', 0, 907, 38, 922, 1537996701, 1, 802),
(184, 16, 58, 0, 4739, 'body', 0, 807, 39, 802, 1537996701, 1, 907),
(184, 16, 58, 0, 4740, 'body', 0, 996, 40, 907, 1537996701, 1, 807),
(184, 16, 58, 0, 4741, 'body', 0, 927, 41, 807, 1537996701, 1, 996),
(184, 16, 58, 0, 4742, 'body', 0, 802, 42, 996, 1537996701, 1, 927),
(184, 16, 58, 0, 4743, 'body', 0, 997, 43, 927, 1537996701, 1, 802),
(184, 16, 58, 0, 4744, 'body', 0, 807, 44, 802, 1537996701, 1, 997),
(184, 16, 58, 0, 4745, 'body', 0, 996, 45, 997, 1537996701, 1, 807),
(184, 16, 58, 0, 4746, 'body', 0, 998, 46, 807, 1537996701, 1, 996),
(184, 16, 58, 0, 4747, 'body', 0, 874, 47, 996, 1537996701, 1, 998),
(184, 16, 58, 0, 4748, 'body', 0, 996, 48, 998, 1537996701, 1, 874),
(184, 16, 58, 0, 4749, 'body', 0, 999, 49, 874, 1537996701, 1, 996),
(184, 16, 58, 0, 4750, 'body', 0, 1000, 50, 996, 1537996701, 1, 999),
(184, 16, 58, 0, 4751, 'body', 0, 995, 51, 999, 1537996701, 1, 1000),
(184, 16, 58, 0, 4752, 'body', 0, 1001, 52, 1000, 1537996701, 1, 995),
(184, 16, 58, 0, 4753, 'body', 0, 1002, 53, 995, 1537996701, 1, 1001),
(184, 16, 58, 0, 4754, 'body', 0, 1003, 54, 1001, 1537996701, 1, 1002),
(184, 16, 58, 0, 4755, 'body', 0, 833, 55, 1002, 1537996701, 1, 1003),
(184, 16, 58, 0, 4756, 'body', 0, 1004, 56, 1003, 1537996701, 1, 833),
(184, 16, 58, 0, 4757, 'body', 0, 1005, 57, 833, 1537996701, 1, 1004),
(184, 16, 58, 0, 4758, 'body', 0, 1006, 58, 1004, 1537996701, 1, 1005),
(184, 16, 58, 0, 4759, 'body', 0, 1007, 59, 1005, 1537996701, 1, 1006),
(184, 16, 58, 0, 4760, 'body', 0, 802, 60, 1006, 1537996701, 1, 1007),
(184, 16, 58, 0, 4761, 'body', 0, 925, 61, 1007, 1537996701, 1, 802),
(184, 16, 58, 0, 4762, 'body', 0, 1008, 62, 802, 1537996701, 1, 925),
(184, 16, 58, 0, 4763, 'body', 0, 1009, 63, 925, 1537996701, 1, 1008),
(184, 16, 58, 0, 4764, 'body', 0, 1010, 64, 1008, 1537996701, 1, 1009),
(184, 16, 58, 0, 4765, 'body', 0, 1011, 65, 1009, 1537996701, 1, 1010),
(184, 16, 58, 0, 4766, 'body', 0, 1012, 66, 1010, 1537996701, 1, 1011),
(184, 16, 58, 0, 4767, 'body', 0, 1013, 67, 1011, 1537996701, 1, 1012),
(184, 16, 58, 0, 4768, 'body', 0, 1014, 68, 1012, 1537996701, 1, 1013),
(184, 16, 58, 0, 4769, 'body', 0, 1015, 69, 1013, 1537996701, 1, 1014),
(184, 16, 58, 0, 4770, 'body', 0, 1016, 70, 1014, 1537996701, 1, 1015),
(190, 16, 58, 0, 4771, 'publish_date', 1341417600, 0, 71, 1015, 1537996701, 1, 1016),
(8, 4, 14, 0, 4772, 'first_name', 0, 954, 0, 0, 1033920830, 2, 958),
(9, 4, 14, 0, 4773, 'last_name', 0, 1017, 1, 958, 1033920830, 2, 954),
(12, 4, 14, 0, 4774, 'user_account', 0, 1018, 2, 954, 1033920830, 2, 1017),
(12, 4, 14, 0, 4775, 'user_account', 0, 1019, 3, 1017, 1033920830, 2, 1018),
(12, 4, 14, 0, 4776, 'user_account', 0, 0, 4, 1018, 1033920830, 2, 1019),
(6, 3, 59, 0, 4777, 'name', 0, 0, 0, 0, 1537996702, 2, 1020),
(6, 3, 11, 0, 4778, 'name', 0, 0, 0, 0, 1033920746, 2, 1021);

-- --------------------------------------------------------

--
-- Table structure for table `ezsearch_search_phrase`
--

CREATE TABLE `ezsearch_search_phrase` (
  `id` int(11) NOT NULL,
  `phrase` varchar(250) DEFAULT NULL,
  `phrase_count` int(11) DEFAULT '0',
  `result_count` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezsearch_word`
--

CREATE TABLE `ezsearch_word` (
  `id` int(11) NOT NULL,
  `object_count` int(11) NOT NULL DEFAULT '0',
  `word` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezsearch_word`
--

INSERT INTO `ezsearch_word` (`id`, `object_count`, `word`) VALUES
(802, 1, 'ez'),
(805, 1, 'is'),
(807, 1, 'site'),
(809, 1, 'with'),
(810, 1, 'a'),
(812, 1, 'setup'),
(814, 2, 'the'),
(816, 2, 'for'),
(833, 1, 'and'),
(874, 1, 'documentation'),
(877, 1, 'common'),
(907, 1, 'official'),
(921, 1, 'more'),
(922, 1, 'information'),
(925, 1, 'systems'),
(927, 2, 'ez.no'),
(929, 1, 'new'),
(930, 3, 'users'),
(951, 1, 'main'),
(952, 2, 'group'),
(953, 2, 'anonymous'),
(954, 3, 'user'),
(955, 1, 'nospam'),
(958, 2, 'administrator'),
(959, 1, 'editors'),
(961, 1, 'media'),
(962, 1, 'images'),
(963, 1, 'files'),
(964, 1, 'multimedia'),
(965, 1, 'ini'),
(966, 1, 'settings'),
(967, 1, 'sitestyle_identifier'),
(968, 1, 'design'),
(969, 1, 'home'),
(970, 1, 'footer'),
(971, 1, 'global'),
(972, 1, 'company'),
(973, 1, 'offices'),
(974, 1, 'around'),
(975, 1, 'world'),
(976, 1, 'including'),
(977, 1, 'skien'),
(978, 1, 'norway'),
(979, 1, 'york'),
(980, 1, 'usa'),
(981, 1, 'oslo'),
(982, 1, 'cologne'),
(983, 1, 'germany'),
(984, 1, 'paris'),
(985, 1, 'france'),
(986, 1, 'lyon'),
(987, 1, 'beijing'),
(988, 1, 'china'),
(989, 1, 'tokyo'),
(990, 1, 'japan'),
(991, 1, 'singapore'),
(992, 1, 'london'),
(993, 1, 'uk'),
(994, 1, 'contact'),
(995, 1, 'us'),
(996, 1, 'http'),
(997, 1, 'community'),
(998, 1, 'share.ez.no'),
(999, 1, 'doc.ez.no'),
(1000, 1, 'follow'),
(1001, 1, 'on'),
(1002, 1, 'twitter'),
(1003, 1, 'facebook'),
(1004, 1, 'linkedin'),
(1005, 1, 'copyright'),
(1006, 1, 'c'),
(1007, 1, '2014'),
(1008, 1, 'as'),
(1009, 1, 'except'),
(1010, 1, 'where'),
(1011, 1, 'otherwise'),
(1012, 1, 'noted'),
(1013, 1, 'all'),
(1014, 1, 'rights'),
(1015, 1, 'reserved'),
(1016, 1, '1341417600'),
(1017, 1, 'admin'),
(1018, 1, 'lr'),
(1019, 1, 'opencontent.it'),
(1020, 1, 'partners'),
(1021, 1, 'members');

-- --------------------------------------------------------

--
-- Table structure for table `ezsection`
--

CREATE TABLE `ezsection` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `navigation_part_identifier` varchar(100) DEFAULT 'ezcontentnavigationpart'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezsection`
--

INSERT INTO `ezsection` (`id`, `identifier`, `locale`, `name`, `navigation_part_identifier`) VALUES
(1, 'standard', '', 'Standard', 'ezcontentnavigationpart'),
(2, 'users', '', 'Users', 'ezusernavigationpart'),
(3, 'media', '', 'Media', 'ezmedianavigationpart'),
(4, 'setup', '', 'Setup', 'ezsetupnavigationpart'),
(5, 'design', '', 'Design', 'ezvisualnavigationpart'),
(6, '', '', 'Restricted', 'ezcontentnavigationpart'),
(7, 'openpaconsiglio_178', '', 'OpenConsiglio - Consiglio di amministrazione\n            e Collegio sindacale\n        ', 'ezcontentnavigationpart'),
(8, 'openpaconsiglio_179', '', 'OpenConsiglio - Collegio sindacale\n        ', 'ezcontentnavigationpart'),
(9, 'openpaconsiglio_180', '', 'OpenConsiglio - Comitato esecutivo\n        ', 'ezcontentnavigationpart'),
(10, 'openpaconsiglio_181', '', 'OpenConsiglio - Consiglio di amministrazione\n        ', 'ezcontentnavigationpart'),
(11, 'openpaconsiglio_182', '', 'OpenConsiglio - Consiglio di amministrazione\n            e Collegio sindacale\n        ', 'ezcontentnavigationpart'),
(12, 'openpaconsiglio_183', '', 'OpenConsiglio - Collegio sindacale\n        ', 'ezcontentnavigationpart'),
(13, 'openpaconsiglio_184', '', 'OpenConsiglio - Comitato esecutivo\n        ', 'ezcontentnavigationpart'),
(14, 'openpaconsiglio_185', '', 'OpenConsiglio - Consiglio di amministrazione\n        ', 'ezcontentnavigationpart');

-- --------------------------------------------------------

--
-- Table structure for table `ezsession`
--

CREATE TABLE `ezsession` (
  `data` longtext NOT NULL,
  `expiration_time` int(11) NOT NULL DEFAULT '0',
  `session_key` varchar(32) NOT NULL DEFAULT '',
  `user_hash` varchar(32) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezsite_data`
--

CREATE TABLE `ezsite_data` (
  `name` varchar(60) NOT NULL DEFAULT '',
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezsite_data`
--

INSERT INTO `ezsite_data` (`name`, `value`) VALUES
('ezdemo', '2.0'),
('ezfind_site_id', 'c3a197a4aba3392be0d1f42e6e0de717'),
('ezpublish-release', '1'),
('ezpublish-version', '5.90.0alpha1');

-- --------------------------------------------------------

--
-- Table structure for table `ezstarrating`
--

CREATE TABLE `ezstarrating` (
  `contentobject_id` int(11) NOT NULL,
  `contentobject_attribute_id` int(11) NOT NULL,
  `rating_average` float NOT NULL,
  `rating_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezstarrating_data`
--

CREATE TABLE `ezstarrating_data` (
  `id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_key` varchar(32) NOT NULL,
  `rating` float NOT NULL,
  `contentobject_id` int(11) NOT NULL,
  `contentobject_attribute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezsubtree_notification_rule`
--

CREATE TABLE `ezsubtree_notification_rule` (
  `id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL DEFAULT '0',
  `use_digest` int(11) DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eztipafriend_counter`
--

CREATE TABLE `eztipafriend_counter` (
  `count` int(11) NOT NULL DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `requested` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eztipafriend_request`
--

CREATE TABLE `eztipafriend_request` (
  `created` int(11) NOT NULL DEFAULT '0',
  `email_receiver` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eztrigger`
--

CREATE TABLE `eztrigger` (
  `connect_type` char(1) NOT NULL DEFAULT '',
  `function_name` varchar(200) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `module_name` varchar(200) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `workflow_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eztrigger`
--

INSERT INTO `eztrigger` (`connect_type`, `function_name`, `id`, `module_name`, `name`, `workflow_id`) VALUES
('b', 'publish', 1, 'content', 'pre_publish', 2),
('a', 'publish', 2, 'content', 'post_publish', 1),
('b', 'delete', 3, 'content', 'pre_delete', 4),
('a', 'delete', 4, 'content', 'post_delete', 3);

-- --------------------------------------------------------

--
-- Table structure for table `ezurl`
--

CREATE TABLE `ezurl` (
  `created` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `is_valid` int(11) NOT NULL DEFAULT '1',
  `last_checked` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `original_url_md5` varchar(32) NOT NULL DEFAULT '',
  `url` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezurl`
--

INSERT INTO `ezurl` (`created`, `id`, `is_valid`, `last_checked`, `modified`, `original_url_md5`, `url`) VALUES
(1537996702, 29, 1, 0, 1537996702, '9b492048041e95b32de08bafc86d759b', '/content/view/sitemap/2'),
(1537996702, 30, 1, 0, 1537996702, 'c86bcb109d8e70f9db65c803baafd550', '/content/view/tagcloud/2');

-- --------------------------------------------------------

--
-- Table structure for table `ezurlalias`
--

CREATE TABLE `ezurlalias` (
  `destination_url` longtext NOT NULL,
  `forward_to_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `is_imported` int(11) NOT NULL DEFAULT '0',
  `is_internal` int(11) NOT NULL DEFAULT '1',
  `is_wildcard` int(11) NOT NULL DEFAULT '0',
  `source_md5` varchar(32) DEFAULT NULL,
  `source_url` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezurlalias`
--

INSERT INTO `ezurlalias` (`destination_url`, `forward_to_id`, `id`, `is_imported`, `is_internal`, `is_wildcard`, `source_md5`, `source_url`) VALUES
('content/view/full/2', 0, 12, 1, 1, 0, 'd41d8cd98f00b204e9800998ecf8427e', ''),
('content/view/full/5', 0, 13, 1, 1, 0, '9bc65c2abec141778ffaa729489f3e87', 'users'),
('content/view/full/12', 0, 15, 1, 1, 0, '02d4e844e3a660857a3f81585995ffe1', 'users/guest_accounts'),
('content/view/full/13', 0, 16, 1, 1, 0, '1b1d79c16700fd6003ea7be233e754ba', 'users/administrator_users'),
('content/view/full/14', 0, 17, 1, 1, 0, '0bb9dd665c96bbc1cf36b79180786dea', 'users/editors'),
('content/view/full/15', 0, 18, 1, 1, 0, 'f1305ac5f327a19b451d82719e0c3f5d', 'users/administrator_users/administrator_user'),
('content/view/full/43', 0, 20, 1, 1, 0, '62933a2951ef01f4eafd9bdf4d3cd2f0', 'media'),
('content/view/full/44', 0, 21, 1, 1, 0, '3ae1aac958e1c82013689d917d34967a', 'users/anonymous_users'),
('content/view/full/45', 0, 22, 1, 1, 0, 'aad93975f09371695ba08292fd9698db', 'users/anonymous_users/anonymous_user'),
('content/view/full/48', 0, 25, 1, 1, 0, 'a0f848942ce863cf53c0fa6cc684007d', 'setup'),
('content/view/full/50', 0, 27, 1, 1, 0, 'c60212835de76414f9bfd21eecb8f221', 'foo_bar_folder/images/vbanner'),
('content/view/full/51', 0, 28, 1, 1, 0, '38985339d4a5aadfc41ab292b4527046', 'media/images'),
('content/view/full/52', 0, 29, 1, 1, 0, 'ad5a8c6f6aac3b1b9df267fe22e7aef6', 'media/files'),
('content/view/full/53', 0, 30, 1, 1, 0, '562a0ac498571c6c3529173184a2657c', 'media/multimedia'),
('content/view/full/54', 0, 31, 1, 1, 0, 'e501fe6c81ed14a5af2b322d248102d8', 'setup/common_ini_settings'),
('content/view/full/56', 0, 32, 1, 1, 0, '2dd3db5dc7122ea5f3ee539bb18fe97d', 'design/ez_publish'),
('content/view/full/58', 0, 33, 1, 1, 0, '31c13f47ad87dd7baa2d558a91e0fbb9', 'design');

-- --------------------------------------------------------

--
-- Table structure for table `ezurlalias_ml`
--

CREATE TABLE `ezurlalias_ml` (
  `action` longtext NOT NULL,
  `action_type` varchar(32) NOT NULL DEFAULT '',
  `alias_redirects` int(11) NOT NULL DEFAULT '1',
  `id` int(11) NOT NULL DEFAULT '0',
  `is_alias` int(11) NOT NULL DEFAULT '0',
  `is_original` int(11) NOT NULL DEFAULT '0',
  `lang_mask` bigint(20) NOT NULL DEFAULT '0',
  `link` int(11) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0',
  `text` longtext NOT NULL,
  `text_md5` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezurlalias_ml`
--

INSERT INTO `ezurlalias_ml` (`action`, `action_type`, `alias_redirects`, `id`, `is_alias`, `is_original`, `lang_mask`, `link`, `parent`, `text`, `text_md5`) VALUES
('nop:', 'nop', 1, 14, 0, 0, 1, 14, 0, 'foo_bar_folder', '0288b6883046492fa92e4a84eb67acc9'),
('eznode:74', 'eznode', 1, 54, 0, 1, 3, 54, 0, 'rendiconto_spese', '0af983ac0ff24bff48a0b10e12820364'),
('eznode:72', 'eznode', 1, 52, 0, 1, 3, 52, 0, 'referentelocale', '0e4b9106f21ad6b62ac4663334ac7b5f'),
('eznode:59', 'eznode', 1, 38, 0, 1, 5, 38, 0, 'Home', '106a6c241b8797f52e1e77317b96a201'),
('eznode:59', 'eznode', 1, 38, 0, 1, 3, 38, 0, 'eZ-Publish', '10e4c3cb527fb9963258469986c16240'),
('eznode:77', 'eznode', 1, 57, 0, 1, 3, 57, 0, 'cda_evento', '134a4abf39fddaa1282671220b4560f8'),
('eznode:73', 'eznode', 1, 53, 0, 1, 3, 53, 0, 'areacollaborativa', '1be64e72afe38509585469bed6cae4af'),
('eznode:64', 'eznode', 1, 44, 0, 1, 3, 44, 0, 'allegati_seduta', '21e61c815215d80ef477d73bf44015fa'),
('eznode:75', 'eznode', 1, 55, 0, 1, 3, 55, 0, 'proposta', '22627cdf7dfdbf6f50149a54f0c6274e'),
('eznode:58', 'eznode', 1, 25, 0, 1, 3, 25, 0, 'Design', '31c13f47ad87dd7baa2d558a91e0fbb9'),
('eznode:71', 'eznode', 1, 51, 0, 1, 3, 51, 0, 'osservazioni', '337d60d01224f2ae219244a9a6cd9f24'),
('eznode:48', 'eznode', 1, 13, 0, 1, 3, 13, 0, 'Setup2', '475e97c0146bfb1c490339546d9e72ee'),
('nop:', 'nop', 1, 17, 0, 0, 1, 17, 0, 'media2', '50e2736330de124f6edea9b008556fe6'),
('eznode:78', 'eznode', 1, 58, 0, 1, 3, 58, 0, 'cda_documento', '51cd38b1c49e0aeb08fbde80c55ac323'),
('eznode:76', 'eznode', 1, 56, 0, 1, 3, 56, 0, 'responsabilearea', '58bbe3b6bd3f754988a49b0406331254'),
('eznode:43', 'eznode', 1, 9, 0, 1, 3, 9, 0, 'Media', '62933a2951ef01f4eafd9bdf4d3cd2f0'),
('eznode:69', 'eznode', 1, 49, 0, 1, 3, 49, 0, 'organo', '6a3e0dcca305968dc8ebeeff79a95fdc'),
('eznode:65', 'eznode', 1, 45, 0, 1, 3, 45, 0, 'invitato', '71f5721ce6608327b299a480b5bcbc55'),
('nop:', 'nop', 1, 21, 0, 0, 1, 21, 0, 'setup3', '732cefcf28bf4547540609fb1a786a30'),
('eznode:67', 'eznode', 1, 47, 0, 1, 3, 47, 0, 'tecnico', '75f33e6eebce7012b8c74a889fa8a7ed'),
('nop:', 'nop', 1, 3, 0, 0, 1, 3, 0, 'users2', '86425c35a33507d479f71ade53a669aa'),
('eznode:70', 'eznode', 1, 50, 0, 1, 3, 50, 0, 'votazione', '90e1daccc047b8f1a10be3c9f3d61aed'),
('eznode:5', 'eznode', 1, 2, 0, 1, 3, 2, 0, 'Users', '9bc65c2abec141778ffaa729489f3e87'),
('eznode:62', 'eznode', 1, 42, 0, 1, 3, 42, 0, 'seduta', 'b4ece1e36716a932421c4367fd91a541'),
('eznode:2', 'eznode', 1, 1, 0, 1, 3, 1, 0, '', 'd41d8cd98f00b204e9800998ecf8427e'),
('eznode:66', 'eznode', 1, 46, 0, 1, 3, 46, 0, 'politico', 'e73fe9e2c2a2f7bf602fd223c0613f45'),
('eznode:68', 'eznode', 1, 48, 0, 1, 3, 48, 0, 'materia', 'ea9f44d47a98e4434fe1ad9105c0c64a'),
('eznode:44', 'eznode', 1, 10, 0, 1, 3, 10, 2, 'Anonymous-Users', 'c2803c3fa1b0b5423237b4e018cae755'),
('eznode:12', 'eznode', 1, 4, 0, 1, 3, 4, 2, 'Members', 'd2e3083420929d8bfae81f58fa4594cb'),
('eznode:12', 'eznode', 1, 41, 0, 0, 3, 4, 2, 'Guest-accounts', 'e57843d836e3af8ab611fde9e2139b3a'),
('eznode:13', 'eznode', 1, 5, 0, 1, 3, 5, 2, 'Administrator-users', 'f89fad7f8a3abc8c09e1deb46a420007'),
('nop:', 'nop', 1, 11, 0, 0, 1, 11, 3, 'anonymous_users2', '505e93077a6dde9034ad97a14ab022b1'),
('eznode:12', 'eznode', 1, 26, 0, 0, 0, 4, 3, 'guest_accounts', '70bb992820e73638731aa8de79b3329e'),
('nop:', 'nop', 1, 7, 0, 0, 1, 7, 3, 'administrator_users2', 'a7da338c20bf65f9f789c87296379c2a'),
('eznode:13', 'eznode', 1, 27, 0, 0, 1, 5, 3, 'administrator_users', 'aeb8609aa933b0899aa012c71139c58c'),
('eznode:44', 'eznode', 1, 30, 0, 0, 1, 10, 3, 'anonymous_users', 'e9e5ad0c05ee1a43715572e5cc545926'),
('eznode:116', 'eznode', 1, 99, 0, 1, 3, 99, 4, 'Giulia-Comper', '1301546f8e9285181361a0676d8a5887'),
('eznode:98', 'eznode', 1, 81, 0, 1, 3, 81, 4, 'Germano-Preghenella', '1dd7e1305fae767367b2fd7709a11b1e'),
('eznode:106', 'eznode', 1, 89, 0, 1, 3, 89, 4, 'Nadia-Martinelli', '1e13518a7ec7346f4ed549d8bcc2159d'),
('eznode:103', 'eznode', 1, 86, 0, 1, 3, 86, 4, 'Antonio-Borghetti', '37dd18cf160da4af94c4a80878c9213d'),
('eznode:102', 'eznode', 1, 85, 0, 1, 3, 85, 4, 'Emiliano-Trainotti', '530dcca4859ebf64ace726fbae91d762'),
('eznode:99', 'eznode', 1, 82, 0, 1, 3, 82, 4, 'Serenella-Cipriani', '5e6a36a11697ce361fc655acaf61c171'),
('eznode:117', 'eznode', 1, 100, 0, 1, 3, 100, 4, 'Federico-Genetti', '7af3177a49685c391ea676c9df5b8783'),
('eznode:100', 'eznode', 1, 83, 0, 1, 3, 83, 4, 'Patrizia-Gentil', '8001285104046de4f53a3b31c748b4f9'),
('eznode:107', 'eznode', 1, 90, 0, 1, 3, 90, 4, 'Alessandro-Ceschi', '9548230eb652945fe9061537ff1506d9'),
('eznode:110', 'eznode', 1, 93, 0, 1, 3, 93, 4, 'Martina-DeGramatica', '970e78e64ee6a8509ae77e035dc31222'),
('eznode:105', 'eznode', 1, 88, 0, 1, 3, 88, 4, 'Sara-Ghezzer', 'a1fa5d4b91af30420829fb9b6673b2f3'),
('eznode:104', 'eznode', 1, 87, 0, 1, 3, 87, 4, 'Renzo-Tommasi', 'ab78ddb20090d9f91b2a4cb453ae6622'),
('eznode:115', 'eznode', 1, 98, 0, 1, 3, 98, 4, 'Enrico-Cozzio', 'cf9fe6b3f229dbc595084780976a0b93'),
('eznode:101', 'eznode', 1, 84, 0, 1, 3, 84, 4, 'Lucia-Corradini', 'eb71cd0d5d8d2277052140afc5a503e3'),
('eznode:15', 'eznode', 1, 8, 0, 1, 3, 8, 5, 'Administrator-User', '5a9d7b0ec93173ef4fedee023209cb61'),
('eznode:15', 'eznode', 1, 28, 0, 0, 0, 8, 7, 'administrator_user', 'a3cca2de936df1e2f805710399989971'),
('eznode:63', 'eznode', 1, 43, 0, 1, 3, 43, 9, 'Aree-collaborative', '2512fb1552a8be7c76e515eea4e1a497'),
('eznode:53', 'eznode', 1, 20, 0, 1, 3, 20, 9, 'Multimedia', '2e5bc8831f7ae6a29530e7f1bbf2de9c'),
('eznode:52', 'eznode', 1, 19, 0, 1, 3, 19, 9, 'Files', '45b963397aa40d4a0063e0d85e4fe7a1'),
('eznode:51', 'eznode', 1, 18, 0, 1, 3, 18, 9, 'Images', '59b514174bffe4ae402b3d63aad79fe0'),
('eznode:45', 'eznode', 1, 12, 0, 1, 3, 12, 10, 'Anonymous-User', 'ccb62ebca03a31272430bc414bd5cd5b'),
('eznode:45', 'eznode', 1, 31, 0, 0, 1, 12, 11, 'anonymous_user', 'c593ec85293ecb0e02d50d4c5c6c20eb'),
('eznode:54', 'eznode', 1, 22, 0, 1, 2, 22, 13, 'Common-INI-settings', '4434993ac013ae4d54bb1f51034d6401'),
('nop:', 'nop', 1, 15, 0, 0, 1, 15, 14, 'images', '59b514174bffe4ae402b3d63aad79fe0'),
('eznode:50', 'eznode', 1, 16, 0, 1, 2, 16, 15, 'vbanner', 'c54e2d1b93642e280bdc5d99eab2827d'),
('eznode:53', 'eznode', 1, 34, 0, 0, 1, 20, 17, 'multimedia', '2e5bc8831f7ae6a29530e7f1bbf2de9c'),
('eznode:52', 'eznode', 1, 33, 0, 0, 1, 19, 17, 'files', '45b963397aa40d4a0063e0d85e4fe7a1'),
('eznode:51', 'eznode', 1, 32, 0, 0, 1, 18, 17, 'images', '59b514174bffe4ae402b3d63aad79fe0'),
('eznode:54', 'eznode', 1, 35, 0, 0, 1, 22, 21, 'common_ini_settings', 'e59d6834e86cee752ed841f9cd8d5baf'),
('eznode:56', 'eznode', 1, 37, 0, 0, 2, 24, 25, 'eZ-publish', '10e4c3cb527fb9963258469986c16240'),
('eznode:56', 'eznode', 1, 24, 0, 1, 2, 24, 25, 'Plain-site', '49a39d99a955d95aa5d636275656a07a');

-- --------------------------------------------------------

--
-- Table structure for table `ezurlalias_ml_incr`
--

CREATE TABLE `ezurlalias_ml_incr` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezurlalias_ml_incr`
--

INSERT INTO `ezurlalias_ml_incr` (`id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48),
(49),
(50),
(51),
(52),
(53),
(54),
(55),
(56),
(57),
(58),
(59),
(60),
(61),
(62),
(63),
(64),
(65),
(66),
(67),
(68),
(69),
(70),
(71),
(72),
(73),
(74),
(75),
(76),
(77),
(78),
(79),
(80),
(81),
(82),
(83),
(84),
(85),
(86),
(87),
(88),
(89),
(90),
(91),
(92),
(93),
(94),
(95),
(96),
(97),
(98),
(99),
(100),
(101),
(102),
(103),
(104),
(105),
(106),
(107),
(108),
(109),
(110),
(111),
(112),
(113),
(114),
(115),
(116),
(117),
(118),
(119),
(120),
(121),
(122),
(123),
(124),
(125),
(126),
(127),
(128),
(129),
(130),
(131),
(132),
(133),
(134),
(135),
(136),
(137),
(138),
(139),
(140),
(141),
(142),
(143),
(144),
(145),
(146),
(147),
(148),
(149);

-- --------------------------------------------------------

--
-- Table structure for table `ezurlwildcard`
--

CREATE TABLE `ezurlwildcard` (
  `destination_url` longtext NOT NULL,
  `id` int(11) NOT NULL,
  `source_url` longtext NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezurl_object_link`
--

CREATE TABLE `ezurl_object_link` (
  `contentobject_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentobject_attribute_version` int(11) NOT NULL DEFAULT '0',
  `url_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezurl_object_link`
--

INSERT INTO `ezurl_object_link` (`contentobject_attribute_id`, `contentobject_attribute_version`, `url_id`) VALUES
(200, 2, 29),
(201, 2, 30);

-- --------------------------------------------------------

--
-- Table structure for table `ezuser`
--

CREATE TABLE `ezuser` (
  `contentobject_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(150) NOT NULL DEFAULT '',
  `login` varchar(150) NOT NULL DEFAULT '',
  `password_hash` varchar(255) DEFAULT NULL,
  `password_hash_type` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezuser`
--

INSERT INTO `ezuser` (`contentobject_id`, `email`, `login`, `password_hash`, `password_hash_type`) VALUES
(10, 'nospam@ez.no', 'anonymous', '$2y$10$ucfC921pDYoruiPZdod7hO2oiGbsHQ/5OmRqRui7v5Txc.Oaq15rW', 7),
(14, 'webmaster@opencontent.it', 'admin', '$2y$10$1dKf8nMxfQA3LaaxEoOndOSAp55dbmZ.HALaxxjjbYA/LCkfwxgNe', 7),
(77, '', '', '', 1),
(78, '', '', '', 1),
(79, '', '', '', 1),
(80, '', '', '', 1),
(81, '', '', '', 1),
(82, '', '', '', 1),
(83, '', '', '', 1),
(84, '', '', '', 1),
(85, '', '', '', 1),
(86, '', '', '', 1),
(87, '', '', '', 1),
(88, '', '', '', 1),
(89, '', '', '', 1),
(90, '', '', '', 1),
(91, '', '', '', 1),
(92, '', '', '', 1),
(93, '', '', '', 1),
(94, '', '', '', 1),
(95, '', '', '', 1),
(96, '', '', '', 1),
(97, '', '', '', 1),
(98, '', '', '', 1),
(99, '', '', '', 1),
(100, '', '', '', 1),
(101, '', '', '', 1),
(102, '', '', '', 1),
(103, '', '', '', 1),
(104, '', '', '', 1),
(105, '', '', '', 1),
(106, '', '', '', 1),
(107, '', '', '', 1),
(108, '', '', '', 1),
(109, '', '', '', 1),
(110, '', '', '', 1),
(111, '', '', '', 1),
(112, '', '', '', 1),
(113, '', '', '', 1),
(114, '', '', '', 1),
(115, '', '', '', 1),
(116, '', '', '', 1),
(117, '', '', '', 1),
(118, '', '', '', 1),
(119, '', '', '', 1),
(120, '', '', '', 1),
(121, '', '', '', 1),
(122, '', '', '', 1),
(123, '', '', '', 1),
(124, '', '', '', 1),
(125, '', '', '', 1),
(126, '', '', '', 1),
(127, '', '', '', 1),
(128, '', '', '', 1),
(129, '', '', '', 1),
(130, '', '', '', 1),
(131, '', '', '', 1),
(132, '', '', '', 1),
(133, '', '', '', 1),
(134, '', '', '', 1),
(154, 'germano.preghenella@gruppomultiservizi.it', '\n            germano.preghenella', '3c4b907244f2d7fb0490d59ef97eff63', 2),
(155, 'serenella.cipriani@gruppo78.org', '\n            serenella.cipriani', '68b442415c76a6d1d5b863bc39d944df', 2),
(156, 'patrizia.gentil@taxconsulting.tn.it', '\n            patrizia.gentil', 'cbdbac7e8d88cb18bfd7488ca8f65c04', 2),
(157, 'luciacorradini@studiocorradini.info', '\n            lucia.corradini', '1e9a8add9b515d07d14a116e078e831b', 2),
(158, 'emiliano@trainottiplast.it', '\n            emiliano.trainotti', 'b5ac539feb663ae1c9c21ecebf1bc2bd', 2),
(159, 'ab@studio-borghetti.it', '\n            antonio.borghetti', 'fa8440b9f6393bddcaea834ea05e18df', 2),
(160, 'tommasirenzo@yahoo.it', '\n            renzo.tommasi', '6d09c119be8bd40a08e08ea810960e9c', 2),
(161, 'sara.ghezzer@neuroimpronta.it', '\n            sara.ghezzer', 'a45448c3cb381fc90664325b940cc138', 2),
(162, 'namartin@hotmail.it', '\n            nadia.martinelli', 'd0bb3ac1a973762c361918d9596c4493', 2),
(163, 'alessandro.ceschi@ftcoop.it', '\n            alessandro.ceschi', '33ed096b7721618501b7d800f41c8a0e', 2),
(166, 'martina.degramatica@ftcoop.it', 'martina.degramatica', '0f5ae4b94c6de8fa2c9b8fa57c51e3e5', 2),
(171, '', '', '', 1),
(172, 'giulia.comper@ftcoop.it', 'giulia.comper', '8d0f1de2d5656f8dad6e0423b4060949', 2),
(173, 'federico.genetti@ftcoop.it', 'federico.genetti', 'f03e2c844f4480e472d6f8e51c650017', 2),
(174, '', '', '', 1),
(175, '', '', '', 1),
(176, '', '', '', 1),
(177, '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ezuservisit`
--

CREATE TABLE `ezuservisit` (
  `current_visit_timestamp` int(11) NOT NULL DEFAULT '0',
  `failed_login_attempts` int(11) NOT NULL DEFAULT '0',
  `last_visit_timestamp` int(11) NOT NULL DEFAULT '0',
  `login_count` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezuservisit`
--

INSERT INTO `ezuservisit` (`current_visit_timestamp`, `failed_login_attempts`, `last_visit_timestamp`, `login_count`, `user_id`) VALUES
(1538037030, 0, 1538035928, 6, 14);

-- --------------------------------------------------------

--
-- Table structure for table `ezuser_accountkey`
--

CREATE TABLE `ezuser_accountkey` (
  `hash_key` varchar(32) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezuser_discountrule`
--

CREATE TABLE `ezuser_discountrule` (
  `contentobject_id` int(11) DEFAULT NULL,
  `discountrule_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezuser_role`
--

CREATE TABLE `ezuser_role` (
  `contentobject_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `limit_identifier` varchar(255) DEFAULT '',
  `limit_value` varchar(255) DEFAULT '',
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezuser_role`
--

INSERT INTO `ezuser_role` (`contentobject_id`, `id`, `limit_identifier`, `limit_value`, `role_id`) VALUES
(12, 25, '', '', 2),
(11, 28, '', '', 1),
(42, 31, '', '', 1),
(11, 34, '', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `ezuser_setting`
--

CREATE TABLE `ezuser_setting` (
  `is_enabled` int(11) NOT NULL DEFAULT '0',
  `max_login` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezuser_setting`
--

INSERT INTO `ezuser_setting` (`is_enabled`, `max_login`, `user_id`) VALUES
(1, 1000, 10),
(1, 10, 14),
(1, 0, 77),
(1, 0, 78),
(1, 0, 79),
(1, 0, 80),
(1, 0, 81),
(1, 0, 82),
(1, 0, 83),
(1, 0, 84),
(1, 0, 85),
(1, 0, 86),
(1, 0, 87),
(1, 0, 88),
(1, 0, 89),
(1, 0, 90),
(1, 0, 91),
(1, 0, 92),
(1, 0, 93),
(1, 0, 94),
(1, 0, 95),
(1, 0, 96),
(1, 0, 97),
(1, 0, 98),
(1, 0, 99),
(1, 0, 100),
(1, 0, 101),
(1, 0, 102),
(1, 0, 103),
(1, 0, 104),
(1, 0, 105),
(1, 0, 106),
(1, 0, 107),
(1, 0, 108),
(1, 0, 109),
(1, 0, 110),
(1, 0, 111),
(1, 0, 112),
(1, 0, 113),
(1, 0, 114),
(1, 0, 115),
(1, 0, 116),
(1, 0, 117),
(1, 0, 118),
(1, 0, 119),
(1, 0, 120),
(1, 0, 121),
(1, 0, 122),
(1, 0, 123),
(1, 0, 124),
(1, 0, 125),
(1, 0, 126),
(1, 0, 127),
(1, 0, 128),
(1, 0, 129),
(1, 0, 130),
(1, 0, 131),
(1, 0, 132),
(1, 0, 133),
(1, 0, 134),
(1, 0, 154),
(1, 0, 155),
(1, 0, 156),
(1, 0, 157),
(1, 0, 158),
(1, 0, 159),
(1, 0, 160),
(1, 0, 161),
(1, 0, 162),
(1, 0, 163),
(1, 0, 166),
(1, 0, 171),
(1, 0, 172),
(1, 0, 173),
(1, 0, 174),
(1, 0, 175),
(1, 0, 176),
(1, 0, 177);

-- --------------------------------------------------------

--
-- Table structure for table `ezvatrule`
--

CREATE TABLE `ezvatrule` (
  `country_code` varchar(255) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `vat_type` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezvatrule_product_category`
--

CREATE TABLE `ezvatrule_product_category` (
  `product_category_id` int(11) NOT NULL DEFAULT '0',
  `vatrule_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezvattype`
--

CREATE TABLE `ezvattype` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `percentage` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezvattype`
--

INSERT INTO `ezvattype` (`id`, `name`, `percentage`) VALUES
(1, 'Std', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ezview_counter`
--

CREATE TABLE `ezview_counter` (
  `count` int(11) NOT NULL DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezwaituntildatevalue`
--

CREATE TABLE `ezwaituntildatevalue` (
  `contentclass_attribute_id` int(11) NOT NULL DEFAULT '0',
  `contentclass_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `workflow_event_id` int(11) NOT NULL DEFAULT '0',
  `workflow_event_version` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezwishlist`
--

CREATE TABLE `ezwishlist` (
  `id` int(11) NOT NULL,
  `productcollection_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezworkflow`
--

CREATE TABLE `ezworkflow` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `is_enabled` int(11) NOT NULL DEFAULT '0',
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  `workflow_type_string` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezworkflow`
--

INSERT INTO `ezworkflow` (`created`, `creator_id`, `id`, `is_enabled`, `modified`, `modifier_id`, `name`, `version`, `workflow_type_string`) VALUES
(1538001404, 14, 1, 1, 1538001416, 14, 'Post Pubblicazione', 0, 'group_ezserial'),
(1538001445, 14, 2, 1, 1538001457, 14, 'Pre Pubblicazione', 0, 'group_ezserial'),
(1538001458, 14, 3, 1, 1538001471, 14, 'Post Cancellazione', 0, 'group_ezserial'),
(1538001473, 14, 4, 1, 1538001486, 14, 'Pre Cancellazione', 0, 'group_ezserial');

-- --------------------------------------------------------

--
-- Table structure for table `ezworkflow_assign`
--

CREATE TABLE `ezworkflow_assign` (
  `access_type` int(11) NOT NULL DEFAULT '0',
  `as_tree` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ezworkflow_event`
--

CREATE TABLE `ezworkflow_event` (
  `data_int1` int(11) DEFAULT NULL,
  `data_int2` int(11) DEFAULT NULL,
  `data_int3` int(11) DEFAULT NULL,
  `data_int4` int(11) DEFAULT NULL,
  `data_text1` varchar(255) DEFAULT NULL,
  `data_text2` varchar(255) DEFAULT NULL,
  `data_text3` varchar(255) DEFAULT NULL,
  `data_text4` varchar(255) DEFAULT NULL,
  `data_text5` longtext,
  `description` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `placement` int(11) NOT NULL DEFAULT '0',
  `version` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  `workflow_type_string` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezworkflow_event`
--

INSERT INTO `ezworkflow_event` (`data_int1`, `data_int2`, `data_int3`, `data_int4`, `data_text1`, `data_text2`, `data_text3`, `data_text4`, `data_text5`, `description`, `id`, `placement`, `version`, `workflow_id`, `workflow_type_string`) VALUES
(0, 0, 0, 0, '', '', '', '', '', '', 1, 1, 0, 1, 'event_editorialstuff'),
(0, 0, 0, 0, '', '', '', '', '', '', 2, 1, 0, 2, 'event_editorialstuff'),
(0, 0, 0, 0, '', '', '', '', '', '', 3, 1, 0, 3, 'event_editorialstuff'),
(0, 0, 0, 0, '', '', '', '', '', '', 4, 1, 0, 4, 'event_editorialstuff');

-- --------------------------------------------------------

--
-- Table structure for table `ezworkflow_group`
--

CREATE TABLE `ezworkflow_group` (
  `created` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `modified` int(11) NOT NULL DEFAULT '0',
  `modifier_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezworkflow_group`
--

INSERT INTO `ezworkflow_group` (`created`, `creator_id`, `id`, `modified`, `modifier_id`, `name`) VALUES
(1024392098, 14, 1, 1024392098, 14, 'Standard');

-- --------------------------------------------------------

--
-- Table structure for table `ezworkflow_group_link`
--

CREATE TABLE `ezworkflow_group_link` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `group_name` varchar(255) DEFAULT NULL,
  `workflow_id` int(11) NOT NULL DEFAULT '0',
  `workflow_version` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezworkflow_group_link`
--

INSERT INTO `ezworkflow_group_link` (`group_id`, `group_name`, `workflow_id`, `workflow_version`) VALUES
(1, 'Standard', 1, 0),
(1, 'Standard', 2, 0),
(1, 'Standard', 3, 0),
(1, 'Standard', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ezworkflow_process`
--

CREATE TABLE `ezworkflow_process` (
  `activation_date` int(11) DEFAULT NULL,
  `content_id` int(11) NOT NULL DEFAULT '0',
  `content_version` int(11) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `event_position` int(11) NOT NULL DEFAULT '0',
  `event_state` int(11) DEFAULT NULL,
  `event_status` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL,
  `last_event_id` int(11) NOT NULL DEFAULT '0',
  `last_event_position` int(11) NOT NULL DEFAULT '0',
  `last_event_status` int(11) NOT NULL DEFAULT '0',
  `memento_key` varchar(32) DEFAULT NULL,
  `modified` int(11) NOT NULL DEFAULT '0',
  `node_id` int(11) NOT NULL DEFAULT '0',
  `parameters` longtext,
  `process_key` varchar(32) NOT NULL DEFAULT '',
  `session_key` varchar(32) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `workflow_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezworkflow_process`
--

INSERT INTO `ezworkflow_process` (`activation_date`, `content_id`, `content_version`, `created`, `event_id`, `event_position`, `event_state`, `event_status`, `id`, `last_event_id`, `last_event_position`, `last_event_status`, `memento_key`, `modified`, `node_id`, `parameters`, `process_key`, `session_key`, `status`, `user_id`, `workflow_id`) VALUES
(0, 0, 0, 1538036731, 0, 0, 0, 0, 142, 0, 0, 0, '', 1538036731, 0, 'a:7:{s:9:\"object_id\";i:178;s:7:\"version\";s:1:\"1\";s:11:\"workflow_id\";s:1:\"1\";s:12:\"trigger_name\";s:12:\"post_publish\";s:11:\"module_name\";s:7:\"content\";s:15:\"module_function\";s:7:\"publish\";s:7:\"user_id\";s:2:\"14\";}', '5c32d84ab62e709e90f96efea5046323', '0', 0, 14, 1),
(0, 0, 0, 1538037067, 0, 0, 0, 0, 210, 0, 0, 0, '', 1538037067, 0, 'a:7:{s:9:\"object_id\";i:180;s:7:\"version\";s:1:\"1\";s:11:\"workflow_id\";s:1:\"1\";s:12:\"trigger_name\";s:12:\"post_publish\";s:11:\"module_name\";s:7:\"content\";s:15:\"module_function\";s:7:\"publish\";s:7:\"user_id\";s:2:\"14\";}', '024114d168fdeab7525e6d128fdcd28b', '0', 0, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oceditorialstuffhistory`
--

CREATE TABLE `oceditorialstuffhistory` (
  `id` int(11) NOT NULL,
  `handler` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `object_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `params_serialized` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oceditorialstuffnotificationrule`
--

CREATE TABLE `oceditorialstuffnotificationrule` (
  `id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_bin NOT NULL,
  `post_id` int(11) NOT NULL,
  `use_digest` int(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `openpaconsiglionotificationitem`
--

CREATE TABLE `openpaconsiglionotificationitem` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_bin NOT NULL,
  `subject` varchar(250) COLLATE utf8_bin NOT NULL,
  `body` text COLLATE utf8_bin NOT NULL,
  `expected_send_time` int(11) NOT NULL,
  `sent` int(1) NOT NULL,
  `sent_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `openpa_consiglio_presenza`
--

CREATE TABLE `openpa_consiglio_presenza` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seduta_id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_bin NOT NULL,
  `in_out` int(1) NOT NULL,
  `created_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `openpa_consiglio_voto`
--

CREATE TABLE `openpa_consiglio_voto` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seduta_id` int(11) NOT NULL,
  `votazione_id` int(11) NOT NULL,
  `value` varchar(100) COLLATE utf8_bin NOT NULL,
  `anomaly` int(1) NOT NULL,
  `presenza_id` int(11) NOT NULL,
  `created_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `sqliimport_item`
--

CREATE TABLE `sqliimport_item` (
  `id` int(11) NOT NULL,
  `handler` varchar(50) DEFAULT NULL,
  `options_serialized` longtext,
  `user_id` int(11) DEFAULT NULL,
  `requested_time` int(11) DEFAULT '0',
  `status` tinyint(4) DEFAULT '0',
  `percentage_int` smallint(6) DEFAULT '0',
  `type` tinyint(4) DEFAULT '1',
  `progression_notes` longtext,
  `process_time` int(11) UNSIGNED DEFAULT '0',
  `scheduled_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sqliimport_item`
--

INSERT INTO `sqliimport_item` (`id`, `handler`, `options_serialized`, `user_id`, `requested_time`, `status`, `percentage_int`, `type`, `progression_notes`, `process_time`, `scheduled_id`) VALUES
(1, 'exportasXMLhandler', NULL, 14, 1538032377, 2, 0, 1, NULL, 0, NULL),
(2, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:1:{s:4:\"file\";s:45:\"extension/ftcoop-cda/import/data/politico.xml\";}}', 14, 1538032427, 2, 0, 1, NULL, 0, NULL),
(3, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:1:{s:4:\"file\";s:49:\"extension/ftcoop-cda/import/data/politico.xml;url\";}}', 14, 1538032473, 2, 0, 1, NULL, 0, NULL),
(4, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:1:{s:4:\"file\";s:49:\"extension/ftcoop-cda/import/data/politico.xml;url\";}}', 14, 1538032508, 2, 0, 1, NULL, 0, NULL),
(5, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:1:{s:4:\"file\";s:49:\"extension/ftcoop-cda/import/data/politico.xml;url\";}}', 14, 1538032520, 2, 0, 1, NULL, 0, NULL),
(6, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:45:\"extension/ftcoop-cda/import/data/politico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";}}', 14, 1538032565, 2, 0, 1, NULL, 0, NULL),
(7, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:45:\"extension/ftcoop-cda/import/data/politico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";}}', 14, 1538034080, 3, 10000, 1, 'Currently importing : 28a8dcc76352767f3cc9329a4471d4f4', 1, NULL),
(8, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:45:\"extension/ftcoop-cda/import/data/politico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";}}', 14, 1538034327, 3, 10000, 1, 'Currently importing : 28a8dcc76352767f3cc9329a4471d4f4', 1, NULL),
(9, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:45:\"extension/ftcoop-cda/import/data/politico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";}}', 14, 1538034353, 2, 0, 1, NULL, 0, NULL),
(10, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:45:\"extension/ftcoop-cda/import/data/politico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";}}', 14, 1538034377, 2, 0, 1, NULL, 0, NULL),
(11, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:45:\"extension/ftcoop-cda/import/data/politico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";}}', 14, 1538034425, 2, 0, 1, NULL, 0, NULL),
(12, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:45:\"extension/ftcoop-cda/import/data/politico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";}}', 14, 1538034523, 2, 0, 1, NULL, 0, NULL),
(13, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:45:\"extension/ftcoop-cda/import/data/politico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";}}', 14, 1538034527, 2, 0, 1, NULL, 0, NULL),
(14, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:45:\"extension/ftcoop-cda/import/data/politico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";}}', 14, 1538034587, 2, 0, 1, NULL, 0, NULL),
(15, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:45:\"extension/ftcoop-cda/import/data/politico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";}}', 14, 1538034626, 2, 0, 1, NULL, 0, NULL),
(16, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:45:\"extension/ftcoop-cda/import/data/politico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";}}', 14, 1538034631, 2, 0, 1, NULL, 0, NULL),
(17, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:45:\"extension/ftcoop-cda/import/data/politico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";}}', 14, 1538034669, 2, 0, 1, NULL, 0, NULL),
(18, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:45:\"extension/ftcoop-cda/import/data/politico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";}}', 14, 1538034757, 2, 0, 1, NULL, 0, NULL),
(19, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:45:\"extension/ftcoop-cda/import/data/politico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";}}', 14, 1538035481, 2, 0, 1, NULL, 0, NULL),
(20, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:45:\"extension/ftcoop-cda/import/data/politico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";}}', 14, 1538035571, 3, 10000, 1, 'Currently importing : 28a8dcc76352767f3cc9329a4471d4f4', 5, NULL),
(21, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:45:\"extension/ftcoop-cda/import/data/politico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";}}', 14, 1538035740, 3, 10000, 1, 'Currently importing : 28a8dcc76352767f3cc9329a4471d4f4', 0, NULL),
(22, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:45:\"extension/ftcoop-cda/import/data/politico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";}}', 14, 1538035780, 2, 0, 1, NULL, 0, NULL),
(23, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:45:\"extension/ftcoop-cda/import/data/politico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";}}', 14, 1538035796, 2, 0, 1, NULL, 0, NULL),
(24, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:45:\"extension/ftcoop-cda/import/data/politico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";}}', 14, 1538035831, 2, 0, 1, NULL, 0, NULL),
(25, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:45:\"extension/ftcoop-cda/import/data/politico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";}}', 14, 1538035835, 2, 0, 1, NULL, 0, NULL),
(26, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:45:\"extension/ftcoop-cda/import/data/politico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";}}', 14, 1538035848, 3, 10000, 1, 'Currently importing : 28a8dcc76352767f3cc9329a4471d4f4', 14, NULL),
(27, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:44:\"extension/ftcoop-cda/import/data/tecnico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";}}', 14, 1538036086, 3, 10000, 1, 'Currently importing : ElnTl212b08349393f54993c9f273f633b91e', 0, NULL),
(28, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:53:\"extension/ftcoop-cda/import/data/responsabilearea.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";}}', 14, 1538036092, 3, 10000, 1, 'Currently importing : 4868c6c3b1871dd902174c3ab1b3fbe3', 2, NULL),
(29, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:43:\"extension/ftcoop-cda/import/data/organo.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"69\";}}', 14, 1538036188, 3, 10000, 1, 'Currently importing : d089f39fba4cba905544393978c7b576', 0, NULL),
(30, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:4:{s:4:\"file\";s:44:\"extension/ftcoop-cda/import/data/tecnico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";s:6:\"mapper\";s:14:\"PoliticoMapper\";}}', 14, 1538036459, 2, 0, 1, NULL, 0, NULL),
(31, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:4:{s:4:\"file\";s:44:\"extension/ftcoop-cda/import/data/tecnico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";s:6:\"mapper\";s:14:\"PoliticoMapper\";}}', 14, 1538036475, 3, 10000, 1, 'Currently importing : ElnTl212b08349393f54993c9f273f633b91e', 0, NULL),
(32, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:43:\"extension/ftcoop-cda/import/data/organo.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"69\";}}', 14, 1538036480, 2, 0, 1, NULL, 0, NULL),
(33, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:43:\"extension/ftcoop-cda/import/data/organo.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"69\";}}', 14, 1538036502, 2, 0, 1, NULL, 0, NULL),
(34, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:43:\"extension/ftcoop-cda/import/data/organo.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"69\";}}', 14, 1538036554, 2, 0, 1, NULL, 0, NULL),
(35, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:43:\"extension/ftcoop-cda/import/data/organo.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"69\";}}', 14, 1538036662, 2, 0, 1, NULL, 0, NULL),
(36, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:43:\"extension/ftcoop-cda/import/data/organo.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"69\";}}', 14, 1538036730, 2, 0, 1, NULL, 0, NULL),
(37, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:4:{s:4:\"file\";s:53:\"extension/ftcoop-cda/import/data/responsabilearea.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";s:6:\"mapper\";s:14:\"PoliticoMapper\";}}', 14, 1538036892, 2, 0, 1, NULL, 0, NULL),
(38, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:4:{s:4:\"file\";s:45:\"extension/ftcoop-cda/import/data/politico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";s:6:\"mapper\";s:14:\"PoliticoMapper\";}}', 14, 1538037018, 3, 10000, 1, 'Currently importing : 28a8dcc76352767f3cc9329a4471d4f4', 16, NULL),
(39, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:4:{s:4:\"file\";s:44:\"extension/ftcoop-cda/import/data/tecnico.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";s:6:\"mapper\";s:14:\"PoliticoMapper\";}}', 14, 1538037054, 3, 10000, 1, 'Currently importing : ElnTl212b08349393f54993c9f273f633b91e', 0, NULL),
(40, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:4:{s:4:\"file\";s:53:\"extension/ftcoop-cda/import/data/responsabilearea.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"12\";s:6:\"mapper\";s:14:\"PoliticoMapper\";}}', 14, 1538037058, 3, 10000, 1, 'Currently importing : 4868c6c3b1871dd902174c3ab1b3fbe3', 2, NULL),
(41, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:43:\"extension/ftcoop-cda/import/data/organo.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"69\";}}', 14, 1538037067, 2, 5000, 1, 'Currently importing : a26b151661b9ba8571b56500cb7126cf', 0, NULL),
(42, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:43:\"extension/ftcoop-cda/import/data/organo.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"69\";}}', 14, 1538037153, 3, 10000, 1, 'Currently importing : d089f39fba4cba905544393978c7b576', 0, NULL),
(43, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:43:\"extension/ftcoop-cda/import/data/organo.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"69\";}}', 14, 1538037192, 3, 10000, 1, 'Currently importing : d089f39fba4cba905544393978c7b576', 1, NULL),
(44, 'exportasXMLhandler', 'O:24:\"SQLIImportHandlerOptions\":1:{s:13:\"\0*\0properties\";a:3:{s:4:\"file\";s:43:\"extension/ftcoop-cda/import/data/organo.xml\";s:3:\"url\";s:35:\"https://www.cooperazionetrentina.it\";s:6:\"parent\";s:2:\"69\";}}', 14, 1538037276, 3, 10000, 1, 'Currently importing : d089f39fba4cba905544393978c7b576', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sqliimport_scheduled`
--

CREATE TABLE `sqliimport_scheduled` (
  `id` int(11) NOT NULL,
  `handler` varchar(50) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `options_serialized` longtext,
  `frequency` varchar(30) NOT NULL,
  `next` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `requested_time` int(11) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '0',
  `manual_frequency` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ezapprove_items`
--
ALTER TABLE `ezapprove_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezbasket`
--
ALTER TABLE `ezbasket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezbasket_session_id` (`session_id`);

--
-- Indexes for table `ezbinaryfile`
--
ALTER TABLE `ezbinaryfile`
  ADD PRIMARY KEY (`contentobject_attribute_id`,`version`);

--
-- Indexes for table `ezcobj_state`
--
ALTER TABLE `ezcobj_state`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ezcobj_state_identifier` (`group_id`,`identifier`),
  ADD KEY `ezcobj_state_lmask` (`language_mask`),
  ADD KEY `ezcobj_state_priority` (`priority`);

--
-- Indexes for table `ezcobj_state_group`
--
ALTER TABLE `ezcobj_state_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ezcobj_state_group_identifier` (`identifier`),
  ADD KEY `ezcobj_state_group_lmask` (`language_mask`);

--
-- Indexes for table `ezcobj_state_group_language`
--
ALTER TABLE `ezcobj_state_group_language`
  ADD PRIMARY KEY (`contentobject_state_group_id`,`real_language_id`);

--
-- Indexes for table `ezcobj_state_language`
--
ALTER TABLE `ezcobj_state_language`
  ADD PRIMARY KEY (`contentobject_state_id`,`language_id`);

--
-- Indexes for table `ezcobj_state_link`
--
ALTER TABLE `ezcobj_state_link`
  ADD PRIMARY KEY (`contentobject_id`,`contentobject_state_id`);

--
-- Indexes for table `ezcollab_group`
--
ALTER TABLE `ezcollab_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezcollab_group_depth` (`depth`),
  ADD KEY `ezcollab_group_path` (`path_string`);

--
-- Indexes for table `ezcollab_item`
--
ALTER TABLE `ezcollab_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezcollab_item_group_link`
--
ALTER TABLE `ezcollab_item_group_link`
  ADD PRIMARY KEY (`collaboration_id`,`group_id`,`user_id`);

--
-- Indexes for table `ezcollab_item_message_link`
--
ALTER TABLE `ezcollab_item_message_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezcollab_item_participant_link`
--
ALTER TABLE `ezcollab_item_participant_link`
  ADD PRIMARY KEY (`collaboration_id`,`participant_id`);

--
-- Indexes for table `ezcollab_item_status`
--
ALTER TABLE `ezcollab_item_status`
  ADD PRIMARY KEY (`collaboration_id`,`user_id`);

--
-- Indexes for table `ezcollab_notification_rule`
--
ALTER TABLE `ezcollab_notification_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezcollab_profile`
--
ALTER TABLE `ezcollab_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezcollab_simple_message`
--
ALTER TABLE `ezcollab_simple_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezcontentbrowsebookmark`
--
ALTER TABLE `ezcontentbrowsebookmark`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezcontentbrowsebookmark_user` (`user_id`);

--
-- Indexes for table `ezcontentbrowserecent`
--
ALTER TABLE `ezcontentbrowserecent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezcontentbrowserecent_user` (`user_id`);

--
-- Indexes for table `ezcontentclass`
--
ALTER TABLE `ezcontentclass`
  ADD PRIMARY KEY (`id`,`version`),
  ADD KEY `ezcontentclass_version` (`version`),
  ADD KEY `ezcontentclass_identifier` (`identifier`,`version`);

--
-- Indexes for table `ezcontentclassgroup`
--
ALTER TABLE `ezcontentclassgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezcontentclass_attribute`
--
ALTER TABLE `ezcontentclass_attribute`
  ADD PRIMARY KEY (`id`,`version`),
  ADD KEY `ezcontentclass_attr_ccid` (`contentclass_id`);

--
-- Indexes for table `ezcontentclass_classgroup`
--
ALTER TABLE `ezcontentclass_classgroup`
  ADD PRIMARY KEY (`contentclass_id`,`contentclass_version`,`group_id`);

--
-- Indexes for table `ezcontentclass_name`
--
ALTER TABLE `ezcontentclass_name`
  ADD PRIMARY KEY (`contentclass_id`,`contentclass_version`,`language_id`);

--
-- Indexes for table `ezcontentobject`
--
ALTER TABLE `ezcontentobject`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ezcontentobject_remote_id` (`remote_id`),
  ADD KEY `ezcontentobject_classid` (`contentclass_id`),
  ADD KEY `ezcontentobject_currentversion` (`current_version`),
  ADD KEY `ezcontentobject_lmask` (`language_mask`),
  ADD KEY `ezcontentobject_owner` (`owner_id`),
  ADD KEY `ezcontentobject_pub` (`published`),
  ADD KEY `ezcontentobject_status` (`status`);

--
-- Indexes for table `ezcontentobject_attribute`
--
ALTER TABLE `ezcontentobject_attribute`
  ADD PRIMARY KEY (`id`,`version`),
  ADD KEY `ezcontentobject_attribute_co_id_ver_lang_code` (`contentobject_id`,`version`,`language_code`),
  ADD KEY `ezcontentobject_attribute_language_code` (`language_code`),
  ADD KEY `ezcontentobject_classattr_id` (`contentclassattribute_id`),
  ADD KEY `sort_key_int` (`sort_key_int`),
  ADD KEY `sort_key_string` (`sort_key_string`);

--
-- Indexes for table `ezcontentobject_link`
--
ALTER TABLE `ezcontentobject_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezco_link_from` (`from_contentobject_id`,`from_contentobject_version`,`contentclassattribute_id`),
  ADD KEY `ezco_link_to_co_id` (`to_contentobject_id`);

--
-- Indexes for table `ezcontentobject_name`
--
ALTER TABLE `ezcontentobject_name`
  ADD PRIMARY KEY (`contentobject_id`,`content_version`,`content_translation`),
  ADD KEY `ezcontentobject_name_cov_id` (`content_version`),
  ADD KEY `ezcontentobject_name_lang_id` (`language_id`),
  ADD KEY `ezcontentobject_name_name` (`name`);

--
-- Indexes for table `ezcontentobject_trash`
--
ALTER TABLE `ezcontentobject_trash`
  ADD PRIMARY KEY (`node_id`),
  ADD KEY `ezcobj_trash_co_id` (`contentobject_id`),
  ADD KEY `ezcobj_trash_depth` (`depth`),
  ADD KEY `ezcobj_trash_modified_subnode` (`modified_subnode`),
  ADD KEY `ezcobj_trash_p_node_id` (`parent_node_id`),
  ADD KEY `ezcobj_trash_path` (`path_string`),
  ADD KEY `ezcobj_trash_path_ident` (`path_identification_string`(50));

--
-- Indexes for table `ezcontentobject_tree`
--
ALTER TABLE `ezcontentobject_tree`
  ADD PRIMARY KEY (`node_id`),
  ADD KEY `ezcontentobject_tree_remote_id` (`remote_id`),
  ADD KEY `ezcontentobject_tree_co_id` (`contentobject_id`),
  ADD KEY `ezcontentobject_tree_depth` (`depth`),
  ADD KEY `ezcontentobject_tree_p_node_id` (`parent_node_id`),
  ADD KEY `ezcontentobject_tree_path` (`path_string`),
  ADD KEY `ezcontentobject_tree_path_ident` (`path_identification_string`(50)),
  ADD KEY `modified_subnode` (`modified_subnode`);

--
-- Indexes for table `ezcontentobject_version`
--
ALTER TABLE `ezcontentobject_version`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezcobj_version_creator_id` (`creator_id`),
  ADD KEY `ezcobj_version_status` (`status`),
  ADD KEY `idx_object_version_objver` (`contentobject_id`,`version`),
  ADD KEY `ezcontobj_version_obj_status` (`contentobject_id`,`status`);

--
-- Indexes for table `ezcontent_language`
--
ALTER TABLE `ezcontent_language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezcontent_language_name` (`name`);

--
-- Indexes for table `ezcurrencydata`
--
ALTER TABLE `ezcurrencydata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezcurrencydata_code` (`code`);

--
-- Indexes for table `ezdiscountrule`
--
ALTER TABLE `ezdiscountrule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezdiscountsubrule`
--
ALTER TABLE `ezdiscountsubrule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezdiscountsubrule_value`
--
ALTER TABLE `ezdiscountsubrule_value`
  ADD PRIMARY KEY (`discountsubrule_id`,`value`,`issection`);

--
-- Indexes for table `ezenumobjectvalue`
--
ALTER TABLE `ezenumobjectvalue`
  ADD PRIMARY KEY (`contentobject_attribute_id`,`contentobject_attribute_version`,`enumid`);

--
-- Indexes for table `ezenumvalue`
--
ALTER TABLE `ezenumvalue`
  ADD PRIMARY KEY (`id`,`contentclass_attribute_id`,`contentclass_attribute_version`),
  ADD KEY `ezenumvalue_co_cl_attr_id_co_class_att_ver` (`contentclass_attribute_id`,`contentclass_attribute_version`);

--
-- Indexes for table `ezfind_elevate_configuration`
--
ALTER TABLE `ezfind_elevate_configuration`
  ADD PRIMARY KEY (`search_query`,`contentobject_id`,`language_code`),
  ADD KEY `ezfind_elevate_configuration__search_query` (`search_query`(100));

--
-- Indexes for table `ezforgot_password`
--
ALTER TABLE `ezforgot_password`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezforgot_password_user` (`user_id`);

--
-- Indexes for table `ezgeneral_digest_user_settings`
--
ALTER TABLE `ezgeneral_digest_user_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ezgeneral_digest_user_id` (`user_id`);

--
-- Indexes for table `ezgmaplocation`
--
ALTER TABLE `ezgmaplocation`
  ADD PRIMARY KEY (`contentobject_attribute_id`,`contentobject_version`),
  ADD KEY `latitude_longitude_key` (`latitude`,`longitude`);

--
-- Indexes for table `ezimagefile`
--
ALTER TABLE `ezimagefile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezimagefile_coid` (`contentobject_attribute_id`),
  ADD KEY `ezimagefile_file` (`filepath`(200));

--
-- Indexes for table `ezinfocollection`
--
ALTER TABLE `ezinfocollection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezinfocollection_co_id_created` (`contentobject_id`,`created`);

--
-- Indexes for table `ezinfocollection_attribute`
--
ALTER TABLE `ezinfocollection_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezinfocollection_attr_cca_id` (`contentclass_attribute_id`),
  ADD KEY `ezinfocollection_attr_co_id` (`contentobject_id`),
  ADD KEY `ezinfocollection_attr_coa_id` (`contentobject_attribute_id`),
  ADD KEY `ezinfocollection_attr_ic_id` (`informationcollection_id`);

--
-- Indexes for table `ezisbn_group`
--
ALTER TABLE `ezisbn_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezisbn_group_range`
--
ALTER TABLE `ezisbn_group_range`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezisbn_registrant_range`
--
ALTER TABLE `ezisbn_registrant_range`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezkeyword`
--
ALTER TABLE `ezkeyword`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezkeyword_keyword` (`keyword`);

--
-- Indexes for table `ezkeyword_attribute_link`
--
ALTER TABLE `ezkeyword_attribute_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezkeyword_attr_link_kid_oaid` (`keyword_id`,`objectattribute_id`),
  ADD KEY `ezkeyword_attr_link_oaid` (`objectattribute_id`);

--
-- Indexes for table `ezmedia`
--
ALTER TABLE `ezmedia`
  ADD PRIMARY KEY (`contentobject_attribute_id`,`version`);

--
-- Indexes for table `ezmessage`
--
ALTER TABLE `ezmessage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezmodule_run`
--
ALTER TABLE `ezmodule_run`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ezmodule_run_workflow_process_id_s` (`workflow_process_id`);

--
-- Indexes for table `ezmultipricedata`
--
ALTER TABLE `ezmultipricedata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezmultipricedata_coa_id` (`contentobject_attr_id`),
  ADD KEY `ezmultipricedata_coa_version` (`contentobject_attr_version`),
  ADD KEY `ezmultipricedata_currency_code` (`currency_code`);

--
-- Indexes for table `ezm_block`
--
ALTER TABLE `ezm_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezm_block__is_removed` (`is_removed`),
  ADD KEY `ezm_block__node_id` (`node_id`);

--
-- Indexes for table `ezm_pool`
--
ALTER TABLE `ezm_pool`
  ADD PRIMARY KEY (`block_id`,`object_id`),
  ADD KEY `ezm_pool__block_id__ts_publication__priority` (`block_id`,`ts_publication`,`priority`),
  ADD KEY `ezm_pool__block_id__ts_visible` (`block_id`,`ts_visible`),
  ADD KEY `ezm_pool__block_id__ts_hidden` (`block_id`,`ts_hidden`);

--
-- Indexes for table `eznode_assignment`
--
ALTER TABLE `eznode_assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eznode_assignment_co_version` (`contentobject_version`),
  ADD KEY `eznode_assignment_coid_cov` (`contentobject_id`,`contentobject_version`),
  ADD KEY `eznode_assignment_is_main` (`is_main`),
  ADD KEY `eznode_assignment_parent_node` (`parent_node`);

--
-- Indexes for table `eznotificationcollection`
--
ALTER TABLE `eznotificationcollection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eznotificationcollection_item`
--
ALTER TABLE `eznotificationcollection_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eznotificationevent`
--
ALTER TABLE `eznotificationevent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezoperation_memento`
--
ALTER TABLE `ezoperation_memento`
  ADD PRIMARY KEY (`id`,`memento_key`),
  ADD KEY `ezoperation_memento_memento_key_main` (`memento_key`,`main`);

--
-- Indexes for table `ezorder`
--
ALTER TABLE `ezorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezorder_is_archived` (`is_archived`),
  ADD KEY `ezorder_is_tmp` (`is_temporary`);

--
-- Indexes for table `ezorder_item`
--
ALTER TABLE `ezorder_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezorder_item_order_id` (`order_id`),
  ADD KEY `ezorder_item_type` (`type`);

--
-- Indexes for table `ezorder_nr_incr`
--
ALTER TABLE `ezorder_nr_incr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezorder_status`
--
ALTER TABLE `ezorder_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezorder_status_active` (`is_active`),
  ADD KEY `ezorder_status_name` (`name`),
  ADD KEY `ezorder_status_sid` (`status_id`);

--
-- Indexes for table `ezorder_status_history`
--
ALTER TABLE `ezorder_status_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezorder_status_history_mod` (`modified`),
  ADD KEY `ezorder_status_history_oid` (`order_id`),
  ADD KEY `ezorder_status_history_sid` (`status_id`);

--
-- Indexes for table `ezpackage`
--
ALTER TABLE `ezpackage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezpaymentobject`
--
ALTER TABLE `ezpaymentobject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezpdf_export`
--
ALTER TABLE `ezpdf_export`
  ADD PRIMARY KEY (`id`,`version`);

--
-- Indexes for table `ezpending_actions`
--
ALTER TABLE `ezpending_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezpending_actions_action` (`action`),
  ADD KEY `ezpending_actions_created` (`created`);

--
-- Indexes for table `ezpolicy`
--
ALTER TABLE `ezpolicy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezpolicy_original_id` (`original_id`),
  ADD KEY `ezpolicy_role_id` (`role_id`);

--
-- Indexes for table `ezpolicy_limitation`
--
ALTER TABLE `ezpolicy_limitation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `policy_id` (`policy_id`);

--
-- Indexes for table `ezpolicy_limitation_value`
--
ALTER TABLE `ezpolicy_limitation_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezpolicy_limitation_value_val` (`value`),
  ADD KEY `ezpolicy_limit_value_limit_id` (`limitation_id`);

--
-- Indexes for table `ezpreferences`
--
ALTER TABLE `ezpreferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezpreferences_name` (`name`),
  ADD KEY `ezpreferences_user_id_idx` (`user_id`,`name`);

--
-- Indexes for table `ezprest_authcode`
--
ALTER TABLE `ezprest_authcode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authcode_client_id` (`client_id`);

--
-- Indexes for table `ezprest_authorized_clients`
--
ALTER TABLE `ezprest_authorized_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_user` (`rest_client_id`,`user_id`);

--
-- Indexes for table `ezprest_clients`
--
ALTER TABLE `ezprest_clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `client_id_unique` (`client_id`,`version`);

--
-- Indexes for table `ezprest_token`
--
ALTER TABLE `ezprest_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `token_client_id` (`client_id`);

--
-- Indexes for table `ezproductcategory`
--
ALTER TABLE `ezproductcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezproductcollection`
--
ALTER TABLE `ezproductcollection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezproductcollection_item`
--
ALTER TABLE `ezproductcollection_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezproductcollection_item_contentobject_id` (`contentobject_id`),
  ADD KEY `ezproductcollection_item_productcollection_id` (`productcollection_id`);

--
-- Indexes for table `ezproductcollection_item_opt`
--
ALTER TABLE `ezproductcollection_item_opt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezproductcollection_item_opt_item_id` (`item_id`);

--
-- Indexes for table `ezpublishingqueueprocesses`
--
ALTER TABLE `ezpublishingqueueprocesses`
  ADD PRIMARY KEY (`ezcontentobject_version_id`);

--
-- Indexes for table `ezrole`
--
ALTER TABLE `ezrole`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezrss_export`
--
ALTER TABLE `ezrss_export`
  ADD PRIMARY KEY (`id`,`status`);

--
-- Indexes for table `ezrss_export_item`
--
ALTER TABLE `ezrss_export_item`
  ADD PRIMARY KEY (`id`,`status`),
  ADD KEY `ezrss_export_rsseid` (`rssexport_id`);

--
-- Indexes for table `ezrss_import`
--
ALTER TABLE `ezrss_import`
  ADD PRIMARY KEY (`id`,`status`);

--
-- Indexes for table `ezscheduled_script`
--
ALTER TABLE `ezscheduled_script`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezscheduled_script_timestamp` (`last_report_timestamp`);

--
-- Indexes for table `ezsearch_object_word_link`
--
ALTER TABLE `ezsearch_object_word_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezsearch_object_word_link_frequency` (`frequency`),
  ADD KEY `ezsearch_object_word_link_identifier` (`identifier`),
  ADD KEY `ezsearch_object_word_link_integer_value` (`integer_value`),
  ADD KEY `ezsearch_object_word_link_object` (`contentobject_id`),
  ADD KEY `ezsearch_object_word_link_word` (`word_id`);

--
-- Indexes for table `ezsearch_search_phrase`
--
ALTER TABLE `ezsearch_search_phrase`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ezsearch_search_phrase_phrase` (`phrase`),
  ADD KEY `ezsearch_search_phrase_count` (`phrase_count`);

--
-- Indexes for table `ezsearch_word`
--
ALTER TABLE `ezsearch_word`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezsearch_word_obj_count` (`object_count`),
  ADD KEY `ezsearch_word_word_i` (`word`);

--
-- Indexes for table `ezsection`
--
ALTER TABLE `ezsection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezsession`
--
ALTER TABLE `ezsession`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `expiration_time` (`expiration_time`),
  ADD KEY `ezsession_user_id` (`user_id`);

--
-- Indexes for table `ezsite_data`
--
ALTER TABLE `ezsite_data`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `ezstarrating`
--
ALTER TABLE `ezstarrating`
  ADD PRIMARY KEY (`contentobject_id`,`contentobject_attribute_id`);

--
-- Indexes for table `ezstarrating_data`
--
ALTER TABLE `ezstarrating_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_session_key` (`user_id`,`session_key`),
  ADD KEY `contentobject_id_contentobject_attribute_id` (`contentobject_id`,`contentobject_attribute_id`);

--
-- Indexes for table `ezsubtree_notification_rule`
--
ALTER TABLE `ezsubtree_notification_rule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezsubtree_notification_rule_user_id` (`user_id`);

--
-- Indexes for table `eztipafriend_counter`
--
ALTER TABLE `eztipafriend_counter`
  ADD PRIMARY KEY (`node_id`,`requested`);

--
-- Indexes for table `eztipafriend_request`
--
ALTER TABLE `eztipafriend_request`
  ADD KEY `eztipafriend_request_created` (`created`),
  ADD KEY `eztipafriend_request_email_rec` (`email_receiver`);

--
-- Indexes for table `eztrigger`
--
ALTER TABLE `eztrigger`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `eztrigger_def_id` (`module_name`(50),`function_name`(50),`connect_type`),
  ADD KEY `eztrigger_fetch` (`name`(25),`module_name`(50),`function_name`(50));

--
-- Indexes for table `ezurl`
--
ALTER TABLE `ezurl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezurl_url` (`url`(255));

--
-- Indexes for table `ezurlalias`
--
ALTER TABLE `ezurlalias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezurlalias_desturl` (`destination_url`(200)),
  ADD KEY `ezurlalias_forward_to_id` (`forward_to_id`),
  ADD KEY `ezurlalias_imp_wcard_fwd` (`is_imported`,`is_wildcard`,`forward_to_id`),
  ADD KEY `ezurlalias_source_md5` (`source_md5`),
  ADD KEY `ezurlalias_source_url` (`source_url`(255)),
  ADD KEY `ezurlalias_wcard_fwd` (`is_wildcard`,`forward_to_id`);

--
-- Indexes for table `ezurlalias_ml`
--
ALTER TABLE `ezurlalias_ml`
  ADD PRIMARY KEY (`parent`,`text_md5`),
  ADD KEY `ezurlalias_ml_act_org` (`action`(32),`is_original`),
  ADD KEY `ezurlalias_ml_actt_org_al` (`action_type`,`is_original`,`is_alias`),
  ADD KEY `ezurlalias_ml_id` (`id`),
  ADD KEY `ezurlalias_ml_par_act_id_lnk` (`action`(32),`id`,`link`,`parent`),
  ADD KEY `ezurlalias_ml_par_lnk_txt` (`parent`,`text`(32),`link`),
  ADD KEY `ezurlalias_ml_text` (`text`(32),`id`,`link`),
  ADD KEY `ezurlalias_ml_text_lang` (`text`(32),`lang_mask`,`parent`);

--
-- Indexes for table `ezurlalias_ml_incr`
--
ALTER TABLE `ezurlalias_ml_incr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezurlwildcard`
--
ALTER TABLE `ezurlwildcard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezurl_object_link`
--
ALTER TABLE `ezurl_object_link`
  ADD KEY `ezurl_ol_coa_id` (`contentobject_attribute_id`),
  ADD KEY `ezurl_ol_coa_version` (`contentobject_attribute_version`),
  ADD KEY `ezurl_ol_url_id` (`url_id`);

--
-- Indexes for table `ezuser`
--
ALTER TABLE `ezuser`
  ADD PRIMARY KEY (`contentobject_id`),
  ADD KEY `ezuser_login` (`login`);

--
-- Indexes for table `ezuservisit`
--
ALTER TABLE `ezuservisit`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `ezuservisit_co_visit_count` (`current_visit_timestamp`,`login_count`);

--
-- Indexes for table `ezuser_accountkey`
--
ALTER TABLE `ezuser_accountkey`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash_key` (`hash_key`);

--
-- Indexes for table `ezuser_discountrule`
--
ALTER TABLE `ezuser_discountrule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezuser_role`
--
ALTER TABLE `ezuser_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezuser_role_contentobject_id` (`contentobject_id`),
  ADD KEY `ezuser_role_role_id` (`role_id`);

--
-- Indexes for table `ezuser_setting`
--
ALTER TABLE `ezuser_setting`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `ezvatrule`
--
ALTER TABLE `ezvatrule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezvatrule_product_category`
--
ALTER TABLE `ezvatrule_product_category`
  ADD PRIMARY KEY (`vatrule_id`,`product_category_id`);

--
-- Indexes for table `ezvattype`
--
ALTER TABLE `ezvattype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezview_counter`
--
ALTER TABLE `ezview_counter`
  ADD PRIMARY KEY (`node_id`);

--
-- Indexes for table `ezwaituntildatevalue`
--
ALTER TABLE `ezwaituntildatevalue`
  ADD PRIMARY KEY (`id`,`workflow_event_id`,`workflow_event_version`),
  ADD KEY `ezwaituntildateevalue_wf_ev_id_wf_ver` (`workflow_event_id`,`workflow_event_version`);

--
-- Indexes for table `ezwishlist`
--
ALTER TABLE `ezwishlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezworkflow`
--
ALTER TABLE `ezworkflow`
  ADD PRIMARY KEY (`id`,`version`);

--
-- Indexes for table `ezworkflow_assign`
--
ALTER TABLE `ezworkflow_assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezworkflow_event`
--
ALTER TABLE `ezworkflow_event`
  ADD PRIMARY KEY (`id`,`version`),
  ADD KEY `wid_version_placement` (`workflow_id`,`version`,`placement`);

--
-- Indexes for table `ezworkflow_group`
--
ALTER TABLE `ezworkflow_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezworkflow_group_link`
--
ALTER TABLE `ezworkflow_group_link`
  ADD PRIMARY KEY (`workflow_id`,`group_id`,`workflow_version`);

--
-- Indexes for table `ezworkflow_process`
--
ALTER TABLE `ezworkflow_process`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ezworkflow_process_process_key` (`process_key`);

--
-- Indexes for table `oceditorialstuffhistory`
--
ALTER TABLE `oceditorialstuffhistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `handler` (`handler`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `oceditorialstuffnotificationrule`
--
ALTER TABLE `oceditorialstuffnotificationrule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `openpaconsiglionotificationitem`
--
ALTER TABLE `openpaconsiglionotificationitem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `openpa_consiglio_presenza`
--
ALTER TABLE `openpa_consiglio_presenza`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `type` (`type`),
  ADD KEY `seduta_id` (`seduta_id`);

--
-- Indexes for table `openpa_consiglio_voto`
--
ALTER TABLE `openpa_consiglio_voto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `votazione_id` (`votazione_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `seduta_id` (`seduta_id`);

--
-- Indexes for table `sqliimport_item`
--
ALTER TABLE `sqliimport_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `import_item_handler` (`handler`),
  ADD KEY `import_item_user` (`user_id`),
  ADD KEY `import_item_status` (`status`),
  ADD KEY `import_scheduled_id` (`scheduled_id`);

--
-- Indexes for table `sqliimport_scheduled`
--
ALTER TABLE `sqliimport_scheduled`
  ADD PRIMARY KEY (`id`),
  ADD KEY `next_import` (`next`),
  ADD KEY `import_handler` (`handler`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ezapprove_items`
--
ALTER TABLE `ezapprove_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezbasket`
--
ALTER TABLE `ezbasket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezcobj_state`
--
ALTER TABLE `ezcobj_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ezcobj_state_group`
--
ALTER TABLE `ezcobj_state_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ezcollab_group`
--
ALTER TABLE `ezcollab_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezcollab_item`
--
ALTER TABLE `ezcollab_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezcollab_item_message_link`
--
ALTER TABLE `ezcollab_item_message_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezcollab_notification_rule`
--
ALTER TABLE `ezcollab_notification_rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezcollab_profile`
--
ALTER TABLE `ezcollab_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezcollab_simple_message`
--
ALTER TABLE `ezcollab_simple_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezcontentbrowsebookmark`
--
ALTER TABLE `ezcontentbrowsebookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezcontentbrowserecent`
--
ALTER TABLE `ezcontentbrowserecent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ezcontentclass`
--
ALTER TABLE `ezcontentclass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `ezcontentclassgroup`
--
ALTER TABLE `ezcontentclassgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ezcontentclass_attribute`
--
ALTER TABLE `ezcontentclass_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=424;

--
-- AUTO_INCREMENT for table `ezcontentobject`
--
ALTER TABLE `ezcontentobject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `ezcontentobject_attribute`
--
ALTER TABLE `ezcontentobject_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1307;

--
-- AUTO_INCREMENT for table `ezcontentobject_link`
--
ALTER TABLE `ezcontentobject_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=484;

--
-- AUTO_INCREMENT for table `ezcontentobject_tree`
--
ALTER TABLE `ezcontentobject_tree`
  MODIFY `node_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `ezcontentobject_version`
--
ALTER TABLE `ezcontentobject_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=711;

--
-- AUTO_INCREMENT for table `ezcurrencydata`
--
ALTER TABLE `ezcurrencydata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezdiscountrule`
--
ALTER TABLE `ezdiscountrule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezdiscountsubrule`
--
ALTER TABLE `ezdiscountsubrule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezenumvalue`
--
ALTER TABLE `ezenumvalue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezforgot_password`
--
ALTER TABLE `ezforgot_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezgeneral_digest_user_settings`
--
ALTER TABLE `ezgeneral_digest_user_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezimagefile`
--
ALTER TABLE `ezimagefile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `ezinfocollection`
--
ALTER TABLE `ezinfocollection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezinfocollection_attribute`
--
ALTER TABLE `ezinfocollection_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezisbn_group`
--
ALTER TABLE `ezisbn_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `ezisbn_group_range`
--
ALTER TABLE `ezisbn_group_range`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ezisbn_registrant_range`
--
ALTER TABLE `ezisbn_registrant_range`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=927;

--
-- AUTO_INCREMENT for table `ezkeyword`
--
ALTER TABLE `ezkeyword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezkeyword_attribute_link`
--
ALTER TABLE `ezkeyword_attribute_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezmessage`
--
ALTER TABLE `ezmessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezmodule_run`
--
ALTER TABLE `ezmodule_run`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezmultipricedata`
--
ALTER TABLE `ezmultipricedata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eznode_assignment`
--
ALTER TABLE `eznode_assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `eznotificationcollection`
--
ALTER TABLE `eznotificationcollection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eznotificationcollection_item`
--
ALTER TABLE `eznotificationcollection_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eznotificationevent`
--
ALTER TABLE `eznotificationevent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `ezoperation_memento`
--
ALTER TABLE `ezoperation_memento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezorder`
--
ALTER TABLE `ezorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezorder_item`
--
ALTER TABLE `ezorder_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezorder_nr_incr`
--
ALTER TABLE `ezorder_nr_incr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezorder_status`
--
ALTER TABLE `ezorder_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ezorder_status_history`
--
ALTER TABLE `ezorder_status_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezpackage`
--
ALTER TABLE `ezpackage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ezpaymentobject`
--
ALTER TABLE `ezpaymentobject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezpdf_export`
--
ALTER TABLE `ezpdf_export`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezpending_actions`
--
ALTER TABLE `ezpending_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- AUTO_INCREMENT for table `ezpolicy`
--
ALTER TABLE `ezpolicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=695;

--
-- AUTO_INCREMENT for table `ezpolicy_limitation`
--
ALTER TABLE `ezpolicy_limitation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=697;

--
-- AUTO_INCREMENT for table `ezpolicy_limitation_value`
--
ALTER TABLE `ezpolicy_limitation_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1098;

--
-- AUTO_INCREMENT for table `ezpreferences`
--
ALTER TABLE `ezpreferences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ezprest_authorized_clients`
--
ALTER TABLE `ezprest_authorized_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezprest_clients`
--
ALTER TABLE `ezprest_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezproductcategory`
--
ALTER TABLE `ezproductcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezproductcollection`
--
ALTER TABLE `ezproductcollection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezproductcollection_item`
--
ALTER TABLE `ezproductcollection_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezproductcollection_item_opt`
--
ALTER TABLE `ezproductcollection_item_opt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezrole`
--
ALTER TABLE `ezrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `ezrss_export`
--
ALTER TABLE `ezrss_export`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ezrss_export_item`
--
ALTER TABLE `ezrss_export_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ezrss_import`
--
ALTER TABLE `ezrss_import`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezscheduled_script`
--
ALTER TABLE `ezscheduled_script`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezsearch_object_word_link`
--
ALTER TABLE `ezsearch_object_word_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4779;

--
-- AUTO_INCREMENT for table `ezsearch_search_phrase`
--
ALTER TABLE `ezsearch_search_phrase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezsearch_word`
--
ALTER TABLE `ezsearch_word`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1022;

--
-- AUTO_INCREMENT for table `ezsection`
--
ALTER TABLE `ezsection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ezstarrating_data`
--
ALTER TABLE `ezstarrating_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezsubtree_notification_rule`
--
ALTER TABLE `ezsubtree_notification_rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eztrigger`
--
ALTER TABLE `eztrigger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ezurl`
--
ALTER TABLE `ezurl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `ezurlalias`
--
ALTER TABLE `ezurlalias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `ezurlalias_ml_incr`
--
ALTER TABLE `ezurlalias_ml_incr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `ezurlwildcard`
--
ALTER TABLE `ezurlwildcard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezuser_accountkey`
--
ALTER TABLE `ezuser_accountkey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezuser_discountrule`
--
ALTER TABLE `ezuser_discountrule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezuser_role`
--
ALTER TABLE `ezuser_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `ezvatrule`
--
ALTER TABLE `ezvatrule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezvattype`
--
ALTER TABLE `ezvattype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ezwaituntildatevalue`
--
ALTER TABLE `ezwaituntildatevalue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezwishlist`
--
ALTER TABLE `ezwishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezworkflow`
--
ALTER TABLE `ezworkflow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ezworkflow_assign`
--
ALTER TABLE `ezworkflow_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ezworkflow_event`
--
ALTER TABLE `ezworkflow_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ezworkflow_group`
--
ALTER TABLE `ezworkflow_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ezworkflow_process`
--
ALTER TABLE `ezworkflow_process`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `oceditorialstuffhistory`
--
ALTER TABLE `oceditorialstuffhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oceditorialstuffnotificationrule`
--
ALTER TABLE `oceditorialstuffnotificationrule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `openpaconsiglionotificationitem`
--
ALTER TABLE `openpaconsiglionotificationitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `openpa_consiglio_presenza`
--
ALTER TABLE `openpa_consiglio_presenza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `openpa_consiglio_voto`
--
ALTER TABLE `openpa_consiglio_voto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sqliimport_item`
--
ALTER TABLE `sqliimport_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `sqliimport_scheduled`
--
ALTER TABLE `sqliimport_scheduled`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
