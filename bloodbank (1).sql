-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2023 at 01:49 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'Staff'),
(1, 'Superviser');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 37),
(2, 1, 38),
(3, 1, 39),
(4, 1, 40),
(5, 1, 49),
(6, 1, 50),
(7, 1, 51),
(8, 1, 52),
(9, 1, 53),
(10, 1, 54),
(11, 1, 55),
(12, 1, 56),
(13, 1, 57),
(14, 1, 58),
(15, 1, 59),
(16, 1, 60),
(17, 1, 61),
(18, 1, 62),
(19, 1, 63),
(20, 1, 64),
(21, 1, 69),
(22, 1, 70),
(23, 1, 71),
(24, 1, 72),
(25, 1, 77),
(26, 1, 78),
(27, 1, 79),
(28, 1, 80),
(29, 1, 81),
(30, 1, 82),
(31, 1, 83),
(32, 1, 84),
(33, 1, 85),
(34, 1, 86),
(35, 1, 87),
(36, 1, 88),
(37, 1, 89),
(38, 1, 90),
(39, 1, 91),
(40, 1, 92),
(41, 2, 40),
(42, 2, 49),
(43, 2, 50),
(44, 2, 51),
(45, 2, 52),
(46, 2, 53),
(47, 2, 54),
(48, 2, 55),
(49, 2, 56),
(50, 2, 57),
(51, 2, 58),
(52, 2, 60),
(53, 2, 61),
(54, 2, 62),
(55, 2, 63),
(56, 2, 64),
(57, 2, 73),
(58, 2, 76),
(59, 2, 81),
(60, 2, 84),
(61, 2, 85),
(62, 2, 88);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add address', 7, 'add_address'),
(26, 'Can change address', 7, 'change_address'),
(27, 'Can delete address', 7, 'delete_address'),
(28, 'Can view address', 7, 'view_address'),
(29, 'Can add district', 8, 'add_district'),
(30, 'Can change district', 8, 'change_district'),
(31, 'Can delete district', 8, 'delete_district'),
(32, 'Can view district', 8, 'view_district'),
(33, 'Can add province', 9, 'add_province'),
(34, 'Can change province', 9, 'change_province'),
(35, 'Can delete province', 9, 'delete_province'),
(36, 'Can view province', 9, 'view_province'),
(37, 'Can add person', 10, 'add_person'),
(38, 'Can change person', 10, 'change_person'),
(39, 'Can delete person', 10, 'delete_person'),
(40, 'Can view person', 10, 'view_person'),
(41, 'Can add municipality', 11, 'add_municipality'),
(42, 'Can change municipality', 11, 'change_municipality'),
(43, 'Can delete municipality', 11, 'delete_municipality'),
(44, 'Can view municipality', 11, 'view_municipality'),
(45, 'Can add ward', 12, 'add_ward'),
(46, 'Can change ward', 12, 'change_ward'),
(47, 'Can delete ward', 12, 'delete_ward'),
(48, 'Can view ward', 12, 'view_ward'),
(49, 'Can add gallery', 13, 'add_gallery'),
(50, 'Can change gallery', 13, 'change_gallery'),
(51, 'Can delete gallery', 13, 'delete_gallery'),
(52, 'Can view gallery', 13, 'view_gallery'),
(53, 'Can add gallery image', 14, 'add_galleryimage'),
(54, 'Can change gallery image', 14, 'change_galleryimage'),
(55, 'Can delete gallery image', 14, 'delete_galleryimage'),
(56, 'Can view gallery image', 14, 'view_galleryimage'),
(57, 'Can add blog', 15, 'add_blog'),
(58, 'Can change blog', 15, 'change_blog'),
(59, 'Can delete blog', 15, 'delete_blog'),
(60, 'Can view blog', 15, 'view_blog'),
(61, 'Can add user review', 16, 'add_userreview'),
(62, 'Can change user review', 16, 'change_userreview'),
(63, 'Can delete user review', 16, 'delete_userreview'),
(64, 'Can view user review', 16, 'view_userreview'),
(65, 'Can add emergency donor', 17, 'add_emergencydonor'),
(66, 'Can change emergency donor', 17, 'change_emergencydonor'),
(67, 'Can delete emergency donor', 17, 'delete_emergencydonor'),
(68, 'Can view emergency donor', 17, 'view_emergencydonor'),
(69, 'Can add associate volunteer', 18, 'add_associatevolunteer'),
(70, 'Can change associate volunteer', 18, 'change_associatevolunteer'),
(71, 'Can delete associate volunteer', 18, 'delete_associatevolunteer'),
(72, 'Can view associate volunteer', 18, 'view_associatevolunteer'),
(73, 'Can add associate volunteer member', 19, 'add_associatevolunteermember'),
(74, 'Can change associate volunteer member', 19, 'change_associatevolunteermember'),
(75, 'Can delete associate volunteer member', 19, 'delete_associatevolunteermember'),
(76, 'Can view associate volunteer member', 19, 'view_associatevolunteermember'),
(77, 'Can add associate hospital', 20, 'add_associatehospital'),
(78, 'Can change associate hospital', 20, 'change_associatehospital'),
(79, 'Can delete associate hospital', 20, 'delete_associatehospital'),
(80, 'Can view associate hospital', 20, 'view_associatehospital'),
(81, 'Can add associate hospital member', 21, 'add_associatehospitalmember'),
(82, 'Can change associate hospital member', 21, 'change_associatehospitalmember'),
(83, 'Can delete associate hospital member', 21, 'delete_associatehospitalmember'),
(84, 'Can view associate hospital member', 21, 'view_associatehospitalmember'),
(85, 'Can add emergency donor organization member', 22, 'add_emergencydonororganizationmember'),
(86, 'Can change emergency donor organization member', 22, 'change_emergencydonororganizationmember'),
(87, 'Can delete emergency donor organization member', 22, 'delete_emergencydonororganizationmember'),
(88, 'Can view emergency donor organization member', 22, 'view_emergencydonororganizationmember'),
(89, 'Can add emergency donor organization', 23, 'add_emergencydonororganization'),
(90, 'Can change emergency donor organization', 23, 'change_emergencydonororganization'),
(91, 'Can delete emergency donor organization', 23, 'delete_emergencydonororganization'),
(92, 'Can view emergency donor organization', 23, 'view_emergencydonororganization'),
(93, 'Can add blood donor request', 24, 'add_blooddonorrequest'),
(94, 'Can change blood donor request', 24, 'change_blooddonorrequest'),
(95, 'Can delete blood donor request', 24, 'delete_blooddonorrequest'),
(96, 'Can view blood donor request', 24, 'view_blooddonorrequest'),
(97, 'Can add volunteer request', 25, 'add_volunteerrequest'),
(98, 'Can change volunteer request', 25, 'change_volunteerrequest'),
(99, 'Can delete volunteer request', 25, 'delete_volunteerrequest'),
(100, 'Can view volunteer request', 25, 'view_volunteerrequest'),
(101, 'Can add sponsor', 26, 'add_sponsor'),
(102, 'Can change sponsor', 26, 'change_sponsor'),
(103, 'Can delete sponsor', 26, 'delete_sponsor'),
(104, 'Can view sponsor', 26, 'view_sponsor'),
(105, 'Can add otp', 27, 'add_otp'),
(106, 'Can change otp', 27, 'change_otp'),
(107, 'Can delete otp', 27, 'delete_otp'),
(108, 'Can view otp', 27, 'view_otp'),
(109, 'Can add associate volunteer quick contact', 28, 'add_associatevolunteerquickcontact'),
(110, 'Can change associate volunteer quick contact', 28, 'change_associatevolunteerquickcontact'),
(111, 'Can delete associate volunteer quick contact', 28, 'delete_associatevolunteerquickcontact'),
(112, 'Can view associate volunteer quick contact', 28, 'view_associatevolunteerquickcontact'),
(113, 'Can add municipality quick contact', 29, 'add_municipalityquickcontact'),
(114, 'Can change municipality quick contact', 29, 'change_municipalityquickcontact'),
(115, 'Can delete municipality quick contact', 29, 'delete_municipalityquickcontact'),
(116, 'Can view municipality quick contact', 29, 'view_municipalityquickcontact'),
(117, 'Can add emergency donor organization quick contact', 30, 'add_emergencydonororganizationquickcontact'),
(118, 'Can change emergency donor organization quick contact', 30, 'change_emergencydonororganizationquickcontact'),
(119, 'Can delete emergency donor organization quick contact', 30, 'delete_emergencydonororganizationquickcontact'),
(120, 'Can view emergency donor organization quick contact', 30, 'view_emergencydonororganizationquickcontact'),
(121, 'Can add associate hospital quick contact', 31, 'add_associatehospitalquickcontact'),
(122, 'Can change associate hospital quick contact', 31, 'change_associatehospitalquickcontact'),
(123, 'Can delete associate hospital quick contact', 31, 'delete_associatehospitalquickcontact'),
(124, 'Can view associate hospital quick contact', 31, 'view_associatehospitalquickcontact');

-- --------------------------------------------------------

--
-- Table structure for table `core_otp`
--

CREATE TABLE `core_otp` (
  `id` bigint(20) NOT NULL,
  `new_password` varchar(255) DEFAULT NULL,
  `otp_code` varchar(4) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_user`
--

CREATE TABLE `core_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_superviser` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_volunteer` tinyint(1) NOT NULL,
  `is_donor` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_user`
--

INSERT INTO `core_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `is_active`, `date_joined`, `email`, `is_superviser`, `is_staff`, `is_volunteer`, `is_donor`) VALUES
(9, 'pbkdf2_sha256$600000$BF8CO7rZkauUO3Xo7KaJvW$o2cdjWB7pqPWbeB85tLctNOGOjBOQSS7nTU7YgQHFHE=', '2023-10-20 16:53:47.923002', 1, 'adminU', 'Admin', 'User', 1, '2023-10-19 19:26:58.000000', 'mail@admin.com', 0, 1, 1, 0),
(10, 'pbkdf2_sha256$600000$mdw24gDuzSb6AJVpbxa6UY$wElKxCk2u9C9ZlxfgTh+q18JwK9BUQ8FqykPkwbjSh8=', NULL, 0, 'Princejung', 'prince', 'prince', 1, '2023-10-19 19:59:31.000000', 'prince@gmail.com', 0, 0, 0, 1),
(11, 'pbkdf2_sha256$600000$prNgHZTj2QzU1fQEbMQHOL$5PXtHJ1Oi+ssV1JqTQ2rh09D06xkEWsQraivd/0oKxA=', NULL, 0, 'shyam', 'shyam', '', 1, '2023-10-19 20:11:12.712351', 'shyam@gmail.com', 0, 0, 0, 1),
(12, 'pbkdf2_sha256$600000$HpscmL0ocYNbH2iE7yg8Gr$/fE2ny5S6jfiatLA5u4zUoRExXknRCELZc/wZwx/pEw=', NULL, 0, 'ramesh', 'ramesh', '', 1, '2023-10-19 20:22:50.000000', 'ramesh@gmail.com', 0, 0, 1, 1),
(13, 'pbkdf2_sha256$600000$tKPjcyRgMfhaYINuU4G4sJ$109pJbCl1lE5cjWAbGxVvn19NhcNamUamBk8jBKlX30=', NULL, 0, 'krishna', 'krishna', 'Rimal', 1, '2023-10-19 20:40:49.000000', 'gjkkunwar07@gmail.com', 0, 0, 1, 1),
(14, 'pbkdf2_sha256$600000$NGeHsZZ8VpoqIdg6Utd5jk$lo/fG8njtKAEODb07dBDqbo+xeLhuZ+xySWCjcVDAPE=', NULL, 0, 'nitesh', 'nitesh', '', 1, '2023-10-19 20:55:24.000000', 'kunwarnitesh07@gmail.com', 1, 1, 1, 1),
(15, 'pbkdf2_sha256$600000$qD2dujwMZekWz4NwceEj5g$nXsjNHA/sFkhPLSDE+5JifnDR+AscaFY0lRPb4uNDSY=', NULL, 0, 'Harish', 'Harish', '', 1, '2023-10-21 04:00:38.777937', 'Harish@gmail.com', 0, 0, 1, 1),
(16, 'pbkdf2_sha256$600000$QIfl07HJHy29FWYOYlXpRk$B+PHUVIhpiGdJGGhEm8bG9ozPnJaKo4R6bqSwbr5Hm4=', NULL, 0, 'sasa', 'sasa', '', 1, '2023-10-21 06:27:56.748040', 'sasa@admin.com', 0, 0, 0, 0),
(17, 'pbkdf2_sha256$600000$M4rQaW8mpRhbvjMIJa5K2s$7Uu5YU4q9AZOkZt+M4iIN3DbySfJgzSC46i/+/JvMmY=', NULL, 0, 'laxmi', 'laxmi', 'kunwar', 1, '2023-10-21 06:35:26.651844', 'laxmi@gmail.com', 0, 0, 0, 0),
(18, 'pbkdf2_sha256$600000$fOUn7Jngmo5ECMPYlxOP4U$Z41gJlq7r9z52WQo6U6jIpwbIKItD3wTb8tjxrOU81I=', NULL, 0, 'abikesh', 'Abishek', '', 1, '2023-10-21 15:08:55.183663', 'abishek@gmail.com', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_user_groups`
--

CREATE TABLE `core_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_user_user_permissions`
--

CREATE TABLE `core_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(203, '2023-10-19 19:27:22.136595', '9', 'Admin User', 2, '[{\"changed\": {\"fields\": [\"Username\", \"First name\", \"Last name\"]}}]', 6, 9),
(204, '2023-10-19 19:27:39.230248', '12', 'sanfebagar, sanfebagar, Ghorahi, Kathmandu, Achham, Sudurpashchim Pradesh', 3, '', 7, 9),
(205, '2023-10-19 19:27:39.235406', '11', 'Sanfebagar, Sanfebagar, Panauti, Kathmandu, Achham, Sudurpashchim Pradesh', 3, '', 7, 9),
(206, '2023-10-19 19:27:39.250626', '9', 'dfghjkl, dfghjkl, Panauti, Kathmandu, Kathmandu, Koshi Pradesh', 3, '', 7, 9),
(207, '2023-10-19 19:27:39.253788', '2', '05, Deurali Marg, Ghorahi, Nepalgunj, Banke, Lumbini Pradesh', 3, '', 7, 9),
(208, '2023-10-19 19:27:39.265150', '1', '32, dfjk djf, Panauti, Kathmandu, Kathmandu, Bagmati Pradesh', 3, '', 7, 9),
(209, '2023-10-19 19:28:36.065497', '5', 'Ward No', 3, '', 12, 9),
(210, '2023-10-19 19:28:36.066629', '2', 'Ghorahi', 3, '', 12, 9),
(211, '2023-10-19 19:28:36.078656', '1', 'Panauti', 3, '', 12, 9),
(212, '2023-10-19 19:31:21.408061', '3', 'Sankhuwasabha', 3, '', 11, 9),
(213, '2023-10-19 19:31:21.418529', '2', 'Nepalgunj', 3, '', 11, 9),
(214, '2023-10-19 19:31:21.423518', '1', 'Kathmandu', 3, '', 11, 9),
(215, '2023-10-19 19:31:40.474707', '4', 'Sanfebagar', 1, '[{\"added\": {}}]', 11, 9),
(216, '2023-10-19 19:31:49.186531', '5', 'Ramaroshan', 1, '[{\"added\": {}}]', 11, 9),
(217, '2023-10-19 19:32:19.891561', '6', 'Ward No', 1, '[{\"added\": {}}]', 12, 9),
(218, '2023-10-19 19:32:36.328290', '7', 'Shiddheshowor', 1, '[{\"added\": {}}]', 12, 9),
(219, '2023-10-19 19:33:47.800349', '6', 'Ward No', 2, '[]', 12, 9),
(220, '2023-10-19 19:34:40.096063', '7', 'Shiddheshowor', 2, '[]', 12, 9),
(221, '2023-10-19 19:35:48.015608', '7', 'Shiddheshowor', 2, '[]', 12, 9),
(222, '2023-10-19 19:36:37.246529', '7', 'Shiddheshowor', 2, '[]', 12, 9),
(223, '2023-10-19 19:36:56.287196', '7', 'Shiddheshowor', 2, '[]', 12, 9),
(224, '2023-10-19 19:38:40.272861', '7', 'Shiddheshowor', 2, '[]', 12, 9),
(225, '2023-10-19 19:41:43.110819', '7', 'Shiddheshowor', 2, '[{\"changed\": {\"fields\": [\"Ward number\"]}}]', 12, 9),
(226, '2023-10-19 19:41:50.098501', '6', '10', 2, '[{\"changed\": {\"fields\": [\"Ward number\"]}}]', 12, 9),
(227, '2023-10-19 19:42:27.438001', '13', 'djfkdjf, djfkj, 10, Ramaroshan, Achham, Sudurpashchim Pradesh', 1, '[{\"added\": {}}]', 7, 9),
(228, '2023-10-19 19:42:38.245750', '14', 'dkfj, djfkf, Shiddheshowor, Sanfebagar, Achham, Sudurpashchim Pradesh', 1, '[{\"added\": {}}]', 7, 9),
(229, '2023-10-19 19:43:25.786489', '11', 'Admin User', 1, '[{\"added\": {}}]', 10, 9),
(230, '2023-10-19 19:51:52.703216', '11', 'Admin User', 2, '[{\"changed\": {\"fields\": [\"Permanent address\"]}}]', 10, 9),
(231, '2023-10-19 19:59:33.362933', '10', ' ', 1, '[{\"added\": {}}]', 6, 9),
(232, '2023-10-19 20:00:01.569659', '10', ' ', 2, '[]', 6, 9),
(233, '2023-10-19 20:00:55.926954', '10', 'prince prince', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 6, 9),
(234, '2023-10-19 20:02:47.056791', '15', '12, budakot, Shiddheshowor, Sanfebagar, Achham, Sudurpashchim Pradesh', 1, '[{\"added\": {}}]', 7, 9),
(235, '2023-10-19 20:04:59.451019', '12', 'prince prince', 1, '[{\"added\": {}}]', 10, 9),
(236, '2023-10-19 20:05:43.528514', '6', '9', 2, '[{\"changed\": {\"fields\": [\"Municipality\", \"Ward number\"]}}]', 12, 9),
(237, '2023-10-19 20:08:23.533736', '5', 'Ramaroshan', 2, '[]', 11, 9),
(238, '2023-10-19 20:09:34.088775', '8', 'Rampur', 1, '[{\"added\": {}}]', 12, 9),
(239, '2023-10-19 20:10:08.763835', '9', 'siddipur', 1, '[{\"added\": {}}]', 12, 9),
(240, '2023-10-19 20:15:12.024721', '12', 'BloodDonorRequest object (12)', 2, '[{\"changed\": {\"fields\": [\"BloodGroup\"]}}]', 24, 9),
(241, '2023-10-19 20:17:45.062119', '6', 'KamalBazar', 1, '[{\"added\": {}}]', 11, 9),
(242, '2023-10-19 20:17:58.705771', '7', 'Mellekh', 1, '[{\"added\": {}}]', 11, 9),
(243, '2023-10-19 20:18:13.499282', '8', 'Chaurpati', 1, '[{\"added\": {}}]', 11, 9),
(244, '2023-10-19 20:19:09.562376', '10', '1', 1, '[{\"added\": {}}]', 12, 9),
(245, '2023-10-19 20:19:33.775783', '9', 'Budakot', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 9),
(246, '2023-10-19 20:19:45.100692', '8', 'Babla', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 12, 9),
(247, '2023-10-19 20:19:52.524965', '7', 'Shiddheshowor', 2, '[]', 12, 9),
(248, '2023-10-19 20:20:02.020707', '9', 'Budakot', 2, '[{\"changed\": {\"fields\": [\"Ward number\"]}}]', 12, 9),
(249, '2023-10-19 20:22:12.634916', '17', '10, Simri, 9, Sanfebagar, Achham, Sudurpashchim Pradesh', 1, '[{\"added\": {}}]', 7, 9),
(250, '2023-10-19 20:22:52.586972', '12', ' ', 1, '[{\"added\": {}}]', 6, 9),
(251, '2023-10-19 20:23:35.753184', '12', 'ramesh ', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 6, 9),
(252, '2023-10-19 20:24:43.331425', '14', 'ramesh ', 1, '[{\"added\": {}}]', 10, 9),
(253, '2023-10-19 20:26:37.991437', '16', 'Prabha Dayagada, Prabha Dayagada, Babla, Sanfebagar, Achham, Sudurpashchim Pradesh', 2, '[{\"changed\": {\"fields\": [\"Ward\", \"Local name\"]}}]', 7, 9),
(254, '2023-10-19 20:27:14.590523', '8', 'Babla', 2, '[{\"changed\": {\"fields\": [\"Ward number\"]}}]', 12, 9),
(255, '2023-10-19 20:31:30.273241', '11', '8', 1, '[{\"added\": {}}]', 12, 9),
(256, '2023-10-19 20:31:41.124963', '12', '8', 1, '[{\"added\": {}}]', 12, 9),
(257, '2023-10-19 20:34:40.695503', '2', 'VolunteerRequest object (2)', 2, '[]', 25, 9),
(258, '2023-10-19 20:35:41.331854', '9', 'UserReview object (9)', 1, '[{\"added\": {}}]', 16, 9),
(259, '2023-10-19 20:35:51.066270', '10', 'UserReview object (10)', 1, '[{\"added\": {}}]', 16, 9),
(260, '2023-10-19 20:36:00.163947', '11', 'UserReview object (11)', 1, '[{\"added\": {}}]', 16, 9),
(261, '2023-10-19 20:43:52.521929', '13', 'BloodDonorRequest object (13)', 2, '[]', 24, 9),
(262, '2023-10-19 20:44:20.906662', '3', 'VolunteerRequest object (3)', 2, '[]', 25, 9),
(263, '2023-10-19 20:44:59.858907', '13', '1', 1, '[{\"added\": {}}]', 12, 9),
(264, '2023-10-19 20:45:32.456622', '14', '2', 1, '[{\"added\": {}}]', 12, 9),
(265, '2023-10-19 20:51:14.806104', '13', 'krishna Rimal', 2, '[{\"changed\": {\"fields\": [\"Email\"]}}]', 6, 9),
(266, '2023-10-19 20:55:51.251339', '14', 'nitesh ', 2, '[{\"changed\": {\"fields\": [\"Is superviser\", \"Is volunteer\", \"Is donor\"]}}]', 6, 9),
(267, '2023-10-19 20:57:04.755265', '14', 'nitesh ', 2, '[{\"changed\": {\"fields\": [\"Is staff\"]}}]', 6, 9),
(268, '2023-10-19 20:59:25.384424', '5', 'Lumbini Pradesh', 3, '', 9, 9),
(269, '2023-10-19 20:59:35.576461', '4', 'Gandaki Pradesh', 3, '', 9, 9),
(270, '2023-10-20 01:31:17.135293', '15', 'Bablaa', 1, '[{\"added\": {}}]', 12, 9),
(271, '2023-10-20 01:59:23.013831', '13', '1', 3, '', 12, 9),
(272, '2023-10-20 01:59:23.032684', '12', '8', 3, '', 12, 9),
(273, '2023-10-20 01:59:36.667305', '15', 'Bablaa', 3, '', 12, 9),
(274, '2023-10-21 03:39:51.548765', '15', 'krishna Rimal', 2, '[{\"changed\": {\"fields\": [\"Current address\"]}}]', 10, 9),
(275, '2023-10-21 03:42:56.806318', '14', 'ramesh ', 2, '[{\"changed\": {\"fields\": [\"Current address\"]}}]', 10, 9),
(276, '2023-10-21 03:43:02.909821', '13', 'shyam ', 2, '[{\"changed\": {\"fields\": [\"Current address\"]}}]', 10, 9),
(277, '2023-10-21 03:43:22.021157', '11', 'Admin User', 2, '[{\"changed\": {\"fields\": [\"Current address\"]}}]', 10, 9),
(278, '2023-10-21 04:06:45.940153', '14', 'BloodDonorRequest object (14)', 2, '[]', 24, 9),
(279, '2023-10-21 04:36:37.563192', '15', 'BloodDonorRequest object (15)', 2, '[]', 24, 9),
(280, '2023-10-21 04:46:32.992737', '16', 'BloodDonorRequest object (16)', 2, '[]', 24, 9),
(281, '2023-10-21 05:21:27.324087', '17', 'BloodDonorRequest object (17)', 2, '[]', 24, 9),
(282, '2023-10-21 05:21:42.321111', '4', 'VolunteerRequest object (4)', 2, '[]', 25, 9),
(283, '2023-10-21 05:30:52.622923', '12', 'prince prince', 3, '', 10, 9),
(284, '2023-10-21 05:31:02.024049', '14', 'ramesh ', 3, '', 10, 9),
(285, '2023-10-21 05:31:02.026281', '13', 'shyam ', 3, '', 10, 9),
(286, '2023-10-21 05:31:12.551159', '15', 'krishna Rimal', 3, '', 10, 9),
(287, '2023-10-21 05:31:51.341523', '16', 'Harish ', 3, '', 10, 9),
(288, '2023-10-21 05:33:23.614238', '17', 'prince prince', 1, '[{\"added\": {}}]', 10, 9),
(289, '2023-10-21 05:36:14.663236', '17', 'prince prince', 2, '[{\"changed\": {\"fields\": [\"Latest received\"]}}]', 10, 9),
(290, '2023-10-21 06:30:58.521974', '12', 'UserReview object (12)', 1, '[{\"added\": {}}]', 16, 9);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(27, 'core', 'otp'),
(6, 'core', 'user'),
(5, 'sessions', 'session'),
(7, 'store', 'address'),
(20, 'store', 'associatehospital'),
(21, 'store', 'associatehospitalmember'),
(31, 'store', 'associatehospitalquickcontact'),
(18, 'store', 'associatevolunteer'),
(19, 'store', 'associatevolunteermember'),
(28, 'store', 'associatevolunteerquickcontact'),
(15, 'store', 'blog'),
(24, 'store', 'blooddonorrequest'),
(8, 'store', 'district'),
(17, 'store', 'emergencydonor'),
(23, 'store', 'emergencydonororganization'),
(22, 'store', 'emergencydonororganizationmember'),
(30, 'store', 'emergencydonororganizationquickcontact'),
(13, 'store', 'gallery'),
(14, 'store', 'galleryimage'),
(11, 'store', 'municipality'),
(29, 'store', 'municipalityquickcontact'),
(10, 'store', 'person'),
(9, 'store', 'province'),
(26, 'store', 'sponsor'),
(16, 'store', 'userreview'),
(25, 'store', 'volunteerrequest'),
(12, 'store', 'ward');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-08-11 02:21:45.883338'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-08-11 02:21:46.495927'),
(3, 'auth', '0001_initial', '2023-08-11 02:21:49.342306'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-08-11 02:21:50.073804'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-08-11 02:21:50.121391'),
(6, 'auth', '0004_alter_user_username_opts', '2023-08-11 02:21:50.155101'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-08-11 02:21:50.188985'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-08-11 02:21:50.221685'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-08-11 02:21:50.266403'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-08-11 02:21:50.344080'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-08-11 02:21:50.704919'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-08-11 02:21:51.064949'),
(13, 'auth', '0011_update_proxy_permissions', '2023-08-11 02:21:51.100587'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-08-11 02:21:51.137545'),
(15, 'core', '0001_initial', '2023-08-11 02:21:55.225236'),
(16, 'admin', '0001_initial', '2023-08-11 02:21:57.707608'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-08-11 02:21:57.776108'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-08-11 02:21:57.859927'),
(19, 'sessions', '0001_initial', '2023-08-11 02:21:58.207342'),
(20, 'store', '0001_initial', '2023-08-11 02:22:13.634024'),
(21, 'store', '0002_alter_district_province_alter_municipality_name_and_more', '2023-08-11 02:22:15.421472'),
(22, 'store', '0003_ward_alter_address_ward', '2023-08-11 02:22:20.359018'),
(23, 'store', '0004_alter_person_current_address_and_more', '2023-08-11 02:22:33.464317'),
(24, 'store', '0005_alter_address_municipality', '2023-08-11 02:22:36.457968'),
(25, 'store', '0006_alter_address_municipality', '2023-08-11 02:22:38.469136'),
(26, 'store', '0007_alter_person_current_address_and_more', '2023-08-11 02:22:46.961351'),
(27, 'store', '0008_gallery_galleryimage', '2023-08-11 02:22:51.803256'),
(28, 'store', '0009_gallery_created_at', '2023-08-11 02:22:52.380228'),
(29, 'store', '0010_blog', '2023-08-11 02:22:54.589827'),
(30, 'store', '0011_alter_blog_author', '2023-08-11 02:22:55.881848'),
(31, 'store', '0012_userreview', '2023-08-11 02:22:58.592852'),
(32, 'store', '0013_delete_userreview', '2023-08-11 02:22:58.808886'),
(33, 'store', '0014_userreview', '2023-08-11 02:23:58.691502'),
(34, 'core', '0002_user_is_dooner', '2023-08-11 14:25:02.268353'),
(35, 'store', '0015_alter_gallery_options', '2023-08-11 14:25:02.315356'),
(36, 'core', '0003_rename_is_dooner_user_is_donor', '2023-08-11 14:35:26.116655'),
(37, 'core', '0004_user_is_emergency_donor', '2023-08-12 03:45:00.850465'),
(38, 'core', '0005_remove_user_is_emergency_donor', '2023-08-12 03:58:24.613443'),
(39, 'store', '0016_emergencydonor', '2023-08-12 03:58:24.920895'),
(40, 'store', '0017_rename_profission_type_emergencydonor_profession_type', '2023-08-12 04:06:22.937799'),
(41, 'store', '0018_associatevolunteer_associatevolunteermember', '2023-08-12 04:46:52.458416'),
(42, 'store', '0019_associatehospital_associatehospitalmember', '2023-08-12 05:47:50.993007'),
(43, 'store', '0020_remove_associatehospitalmember_organization_and_more', '2023-08-12 05:50:02.617722'),
(44, 'store', '0021_emergencydonororganization_and_more', '2023-08-12 06:27:00.534953'),
(45, 'core', '0006_alter_user_is_donor', '2023-08-12 08:29:29.351235'),
(46, 'store', '0022_blooddonorrequest', '2023-08-12 08:29:33.098929'),
(47, 'store', '0023_blooddonorrequest_user', '2023-08-12 09:49:11.239481'),
(48, 'store', '0024_remove_person_age_person_dob', '2023-08-12 10:11:41.314853'),
(49, 'store', '0025_volunteerrequest', '2023-08-12 10:28:29.701856'),
(50, 'store', '0026_sponsor', '2023-08-12 10:36:22.469973'),
(51, 'store', '0027_address_temporary', '2023-10-12 01:59:34.295879'),
(52, 'store', '0028_rename_temporary_address_local_name', '2023-10-12 01:59:34.318180'),
(53, 'store', '0029_alter_userreview_review', '2023-10-12 01:59:34.397210'),
(54, 'store', '0030_alter_province_name', '2023-10-12 01:59:34.409237'),
(55, 'store', '0031_person_latest_donation', '2023-10-12 02:25:57.923654'),
(56, 'core', '0007_otp', '2023-10-15 11:00:47.074950'),
(57, 'store', '0032_associatevolunteerquickcontact', '2023-10-15 13:35:04.248711'),
(58, 'store', '0033_municipalityquickcontact_and_more', '2023-10-15 14:06:40.229622'),
(59, 'store', '0034_alter_address_district', '2023-10-16 14:36:00.090849'),
(60, 'store', '0035_person_latest_received_alter_address_municipality_and_more', '2023-10-19 17:42:25.440687'),
(61, 'store', '0036_alter_municipality_name_alter_ward_name_and_more', '2023-10-19 19:17:31.354153'),
(62, 'store', '0037_alter_ward_ward_number', '2023-10-19 19:35:36.138865'),
(63, 'store', '0038_alter_ward_ward_number_alter_ward_unique_together', '2023-10-20 02:01:14.605156'),
(64, 'store', '0039_alter_person_current_address', '2023-10-21 03:37:38.605455'),
(65, 'store', '0040_alter_person_workplace', '2023-10-21 03:47:26.490563'),
(66, 'store', '0041_blooddonorrequest_current_address_and_more', '2023-10-21 04:05:51.768957'),
(67, 'store', '0042_remove_blooddonorrequest_workplace', '2023-10-21 04:21:53.090093'),
(68, 'store', '0043_blooddonorrequest_workplace', '2023-10-21 04:22:07.965906'),
(69, 'store', '0002_alter_blooddonorrequest_workplace', '2023-10-21 04:26:16.378753'),
(70, 'store', '0003_volunteerrequest_current_address_and_more', '2023-10-21 04:31:36.545050');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('hl0y3g171wcpmstrfgqh8z4eyz6i5ajc', '.eJxVjDsOwyAQBe9CHSFsWFhSpvcZ0PILTiKQjF1FuXuE5CJp38y8N3N07MUdPW1ujezKLLv8bp7CM9UB4oPqvfHQ6r6tng-Fn7TzpcX0up3u30GhXkaNAqNMFpQXmmxGyIZQaSWQco4SZJgzSICM0qrJw4SazAwSjSESwD5f11s3BQ:1qtYfh:nENkPEcFhWIg6pcttncZOHBPWRsvFScB8Q4utLo71aY', '2023-11-02 19:27:05.501525'),
('vnsy5pmghtr5jzwbdgzx4of899sonbdi', '.eJxVjEEOwiAQAP_C2RCWssB69N43kC1QqRqalPZk_Lsh6UGvM5N5i8DHXsLR8haWJK4CxOWXTRyfuXaRHlzvq4xr3bdlkj2Rp21yXFN-3c72b1C4lb5ltIMhnx3kmMk7YpMAcQY9OG0BDTAoRcqgSxAJcNbekrbeKGWJxecLqEk1zA:1qUli8:P5aUwdj7HbAf2dxIw4w-lFY36i6hZqZUujDjQ_9uRfA', '2023-08-26 10:19:08.573870'),
('wdqjd1fie0ve1266xrro8zieumxos8dw', '.eJxVjDsOwyAQBe9CHSFsWFhSpvcZ0PILTiKQjF1FuXuE5CJp38y8N3N07MUdPW1ujezKLLv8bp7CM9UB4oPqvfHQ6r6tng-Fn7TzpcX0up3u30GhXkaNAqNMFpQXmmxGyIZQaSWQco4SZJgzSICM0qrJw4SazAwSjSESwD5f11s3BQ:1qtskt:nd96BG96ijMF0yAcRyIm6_XWiO9VS-8tWjvRaEMrWRY', '2023-11-03 16:53:47.928437');

-- --------------------------------------------------------

--
-- Table structure for table `store_address`
--

CREATE TABLE `store_address` (
  `id` bigint(20) NOT NULL,
  `ward_id` bigint(20) NOT NULL,
  `tole` varchar(150) NOT NULL,
  `house_number` varchar(20) NOT NULL,
  `district_id` bigint(20) NOT NULL,
  `municipality_id` bigint(20) NOT NULL,
  `province_id` bigint(20) NOT NULL,
  `local_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_address`
--

INSERT INTO `store_address` (`id`, `ward_id`, `tole`, `house_number`, `district_id`, `municipality_id`, `province_id`, `local_name`) VALUES
(13, 6, 'djfkj', 'djfkdjf', 3, 5, 8, 'fjdkf'),
(14, 7, 'djfkf', 'dkfj', 3, 4, 8, 'jdkfj'),
(15, 7, 'budakot', '12', 3, 4, 8, 'sanfebagar'),
(16, 8, 'Prabha Dayagada', 'Prabha Dayagada', 3, 4, 8, 'margu'),
(17, 6, 'Simri', '10', 3, 4, 8, 'Sanfebagar'),
(18, 10, 'budakot', 'budakot', 3, 6, 8, NULL),
(19, 7, 'jfkdfj', 'jfkdfj', 1, 8, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `store_associatehospital`
--

CREATE TABLE `store_associatehospital` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_associatehospital`
--

INSERT INTO `store_associatehospital` (`id`, `name`, `address`, `contact`) VALUES
(1, 'Civil', 'Baneshwor', '9875637265'),
(2, 'Bayalpata Hospital', 'sanfebagar', '9810228669');

-- --------------------------------------------------------

--
-- Table structure for table `store_associatehospitalmember`
--

CREATE TABLE `store_associatehospitalmember` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(10) UNSIGNED NOT NULL CHECK (`age` >= 0),
  `contact` varchar(10) DEFAULT NULL,
  `permanent_address` varchar(255) NOT NULL,
  `current_address` varchar(255) NOT NULL,
  `workplace` varchar(255) NOT NULL,
  `bloodGroup` varchar(5) NOT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `hospital_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_associatehospitalmember`
--

INSERT INTO `store_associatehospitalmember` (`id`, `name`, `age`, `contact`, `permanent_address`, `current_address`, `workplace`, `bloodGroup`, `profession`, `hospital_id`) VALUES
(1, 'Mani Ram Rimal', 55, '23456789', 'djfkfj', 'dfmkdjf', 'jdkfjdkfj', 'AB+', 'doctor', 1),
(2, 'Abhiman', 22, NULL, 'ds', 'dsad', 'dad', 'O+', 'dsa', 1),
(3, 'Ramji ram', 76, '9810228669', 'sanfebagar', 'bayalapata', 'Hospital', 'AB+', 'Hr', 2),
(4, 'ramesh kharel', 34, '9811991199', 'ds', 'dsad', 'nayahealth', 'B+', 'senior doctor', 2);

-- --------------------------------------------------------

--
-- Table structure for table `store_associatehospitalquickcontact`
--

CREATE TABLE `store_associatehospitalquickcontact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `organization_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_associatehospitalquickcontact`
--

INSERT INTO `store_associatehospitalquickcontact` (`id`, `name`, `contact`, `organization_id`) VALUES
(1, 'Rajesh Swar', '9810229669', 2),
(2, 'Ramesh Khanal', '9810228669', 2),
(3, 'Purna Bahadur Kunwar', '9865768537', 2),
(4, 'Krishna Rimal', '9865768537', 1),
(5, 'Upa Mayor', '9810228669', 1),
(6, 'Rajendra kunwar', '9865768537', 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_associatevolunteer`
--

CREATE TABLE `store_associatevolunteer` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_associatevolunteer`
--

INSERT INTO `store_associatevolunteer` (`id`, `name`, `address`, `contact`) VALUES
(3, 'Mega Bank', 'sanfebagar', NULL),
(4, 'Rapti', 'sanfebagar', '9810228669'),
(5, 'NICASIA', 'bds', '9810228669');

-- --------------------------------------------------------

--
-- Table structure for table `store_associatevolunteermember`
--

CREATE TABLE `store_associatevolunteermember` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(10) UNSIGNED NOT NULL CHECK (`age` >= 0),
  `contact` varchar(10) DEFAULT NULL,
  `permanent_address` varchar(255) NOT NULL,
  `current_address` varchar(255) NOT NULL,
  `workplace` varchar(255) NOT NULL,
  `bloodGroup` varchar(5) NOT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `organization_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_associatevolunteermember`
--

INSERT INTO `store_associatevolunteermember` (`id`, `name`, `age`, `contact`, `permanent_address`, `current_address`, `workplace`, `bloodGroup`, `profession`, `organization_id`) VALUES
(5, 'Ramesh Chaudary', 34, '8798764536', 'sanfebagar', 'sanfebafar', 'sange', 'A+', 'Banker', 3),
(6, 'Ramshah', 23, '8798764536', 'kathamandu', 'ewew', 'dsds', 'O+', 'student', 4),
(7, 'Abishek', 34, '8888888888', 'malikabazar', 'lalitpur', 'ramechapp', 'B', 'dds', 4),
(8, 'Ganesh Kunwar', 20, '8798764536', 'sanfebagar', 'sanfebafar', 'sangrilla', 'O+', 'student', 5),
(9, 'Ashish chand', 22, '9810228669', 'malikabazar', 'sanfu', 'ramechapp', 'B+', 'banker', 5),
(10, 'susma bhandari', 24, '9865768543', 'lalitpur', 'kathamandu', 'Cg net', 'AB+', 'ramosaha', 5),
(11, 'abishek khadka', 23, '4312321212', 'samjhana', 'sbsbsb', 'sss', 'A+', 'sdds', 5);

-- --------------------------------------------------------

--
-- Table structure for table `store_associatevolunteerquickcontact`
--

CREATE TABLE `store_associatevolunteerquickcontact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `organization_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_associatevolunteerquickcontact`
--

INSERT INTO `store_associatevolunteerquickcontact` (`id`, `name`, `contact`, `organization_id`) VALUES
(1, 'Ganesh Kunwar', '9808876876', 5),
(2, 'Ganesh khakdka', '9876543345', 5),
(3, 'Nitesh Kunwar', '9810228667', 3),
(4, 'ramjiram', '9876543345', 5),
(5, 'ramesh kharel', '9810228669', 4);

-- --------------------------------------------------------

--
-- Table structure for table `store_blog`
--

CREATE TABLE `store_blog` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `author_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `store_blooddonorrequest`
--

CREATE TABLE `store_blooddonorrequest` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` datetime(6) NOT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `tole` varchar(255) NOT NULL,
  `bloodGroup` varchar(5) NOT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `district_id` bigint(20) NOT NULL,
  `municipality_id` bigint(20) NOT NULL,
  `province_id` bigint(20) NOT NULL,
  `ward_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `current_address` varchar(100) DEFAULT NULL,
  `workplace` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `store_district`
--

CREATE TABLE `store_district` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `province_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_district`
--

INSERT INTO `store_district` (`id`, `name`, `province_id`) VALUES
(1, 'Kathmandu', 3),
(4, 'Lalitpur', 3),
(3, 'Achham', 8);

-- --------------------------------------------------------

--
-- Table structure for table `store_emergencydonororganization`
--

CREATE TABLE `store_emergencydonororganization` (
  `id` bigint(20) NOT NULL,
  `profession` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_emergencydonororganization`
--

INSERT INTO `store_emergencydonororganization` (`id`, `profession`) VALUES
(1, 'Hari'),
(2, 'Ram');

-- --------------------------------------------------------

--
-- Table structure for table `store_emergencydonororganizationmember`
--

CREATE TABLE `store_emergencydonororganizationmember` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(10) UNSIGNED NOT NULL CHECK (`age` >= 0),
  `contact` varchar(10) DEFAULT NULL,
  `bloodGroup` varchar(5) NOT NULL,
  `organization_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_emergencydonororganizationmember`
--

INSERT INTO `store_emergencydonororganizationmember` (`id`, `name`, `age`, `contact`, `bloodGroup`, `organization_id`) VALUES
(1, 'Suman Koirala', 44, '56789', 'B-', 1),
(2, 'Ganesh Kunwar', 32, '9810228669', 'AB-', 2),
(3, 'Roshan Kunwar', 23, '9810228669', 'B+', 2),
(4, 'Abishek yadhav', 11, NULL, 'A+', 1),
(5, 'Harish bhatta', 11, '76767676', 'O+', 2);

-- --------------------------------------------------------

--
-- Table structure for table `store_emergencydonororganizationquickcontact`
--

CREATE TABLE `store_emergencydonororganizationquickcontact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `organization_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_emergencydonororganizationquickcontact`
--

INSERT INTO `store_emergencydonororganizationquickcontact` (`id`, `name`, `contact`, `organization_id`) VALUES
(1, 'Birendra kunwar', '9810229778', 2),
(2, 'Mahendra kunwar', '9810229778', 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_gallery`
--

CREATE TABLE `store_gallery` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_gallery`
--

INSERT INTO `store_gallery` (`id`, `title`, `thumbnail`, `created_at`) VALUES
(1, 'Test Gallery', 'gallery/thumbnails/WhatsApp_Image_2023-03-21_at_4.41.00_PM.jpeg', '2023-08-11 13:44:37.301257'),
(2, 'Blood donation on Achham', 'gallery/thumbnails/prasad2.jpg', '2023-08-12 03:17:44.574409');

-- --------------------------------------------------------

--
-- Table structure for table `store_galleryimage`
--

CREATE TABLE `store_galleryimage` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `gallery_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_galleryimage`
--

INSERT INTO `store_galleryimage` (`id`, `image`, `gallery_id`) VALUES
(1, 'gallery/images/bulakhi_67fty9Q.jpg', 1),
(2, 'gallery/images/harrykipyari_KRn05Ef.jpg', 1),
(3, 'gallery/images/prasad2_YErenOo.jpg', 1),
(4, 'gallery/images/Capture.PNG', 1),
(5, 'gallery/images/WhatsApp_Image_2023-03-21_at_4.41.00_PM_QyTzXKW.jpeg', 2),
(6, 'gallery/images/bulakhi_PGC8zPe.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `store_municipality`
--

CREATE TABLE `store_municipality` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `district_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_municipality`
--

INSERT INTO `store_municipality` (`id`, `name`, `district_id`) VALUES
(8, 'Chaurpati', 3),
(6, 'KamalBazar', 3),
(7, 'Mellekh', 3),
(5, 'Ramaroshan', 3),
(4, 'Sanfebagar', 3);

-- --------------------------------------------------------

--
-- Table structure for table `store_municipalityquickcontact`
--

CREATE TABLE `store_municipalityquickcontact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `organization_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `store_person`
--

CREATE TABLE `store_person` (
  `id` bigint(20) NOT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `bloodGroup` varchar(5) NOT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `current_address` varchar(100) DEFAULT NULL,
  `permanent_address_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `workplace` varchar(100) DEFAULT NULL,
  `dob` datetime(6) NOT NULL,
  `latest_donation` date DEFAULT NULL,
  `latest_received` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_person`
--

INSERT INTO `store_person` (`id`, `contact`, `bloodGroup`, `profession`, `image`, `current_address`, `permanent_address_id`, `user_id`, `workplace`, `dob`, `latest_donation`, `latest_received`) VALUES
(11, '2322222323', 'o+', 'student', 'person/images/IMG_0459.JPG', 'Chabahill', 14, 9, '13', '2023-10-19 19:42:50.000000', '2023-10-19', NULL),
(17, '9810228669', 'O+', 'doctor', 'person/images/download_yx2ryFB.jpeg', 'kalopul hon hai', 16, 10, 'sanfebagar', '2023-10-21 05:32:26.000000', '2023-10-21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `store_province`
--

CREATE TABLE `store_province` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_province`
--

INSERT INTO `store_province` (`id`, `name`) VALUES
(3, 'Bagmati Pradesh'),
(1, 'Koshi Pradesh'),
(2, 'Madesh Pradesh'),
(8, 'Sudurpashchim Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `store_sponsor`
--

CREATE TABLE `store_sponsor` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_sponsor`
--

INSERT INTO `store_sponsor` (`id`, `name`, `link`, `image`) VALUES
(10, 'hh', 'h', 'sponsors/images/361342672_236277422569617_6115675314873081145_n_3CFGMuE.jpg'),
(11, 'hello', 'hee', 'sponsors/images/361342672_236277422569617_6115675314873081145_n_nfZVrY8.jpg'),
(12, 'dsds', 'dsada', 'sponsors/images/361634773_150029978109307_4451900604874077437_n.jpg'),
(13, 'Ganesh kunwar', 'ddsa', 'sponsors/images/361634773_150029978109307_4451900604874077437_n_q9YmgsE.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `store_userreview`
--

CREATE TABLE `store_userreview` (
  `id` bigint(20) NOT NULL,
  `review` varchar(200) NOT NULL,
  `person_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_userreview`
--

INSERT INTO `store_userreview` (`id`, `review`, `person_id`) VALUES
(11, 'Used to make professional-quality documents, letters, reports, etc., MS Word is a word processor developed by Microsoft. It has advanced features which allow you to format and edit your files and docu', 11),
(12, 'A grid-connected, 100kW photovoltaic array, installed across all south-facing roofs, generates more energy on site than the campus requires. Passive heating and cooling are also essential to the desig', 17);

-- --------------------------------------------------------

--
-- Table structure for table `store_volunteerrequest`
--

CREATE TABLE `store_volunteerrequest` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` datetime(6) NOT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `tole` varchar(255) NOT NULL,
  `bloodGroup` varchar(5) NOT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `district_id` bigint(20) NOT NULL,
  `municipality_id` bigint(20) NOT NULL,
  `province_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `ward_id` bigint(20) NOT NULL,
  `current_address` varchar(100) DEFAULT NULL,
  `workplace` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_volunteerrequest`
--

INSERT INTO `store_volunteerrequest` (`id`, `name`, `dob`, `contact`, `tole`, `bloodGroup`, `profession`, `image`, `district_id`, `municipality_id`, `province_id`, `user_id`, `ward_id`, `current_address`, `workplace`) VALUES
(5, 'ramesh', '2023-10-12 00:00:00.000000', '9810228669', 'dsds', 'B+', 'ssssssssssss', 'volunteerrequest/images/IMG_0494_5rhVkNd.jpg', 3, 4, 8, 16, 14, 'setopul,kathmandu', 'zzzzzzzzzzzz');

-- --------------------------------------------------------

--
-- Table structure for table `store_ward`
--

CREATE TABLE `store_ward` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `ward_number` varchar(50) NOT NULL,
  `municipality_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_ward`
--

INSERT INTO `store_ward` (`id`, `name`, `ward_number`, `municipality_id`) VALUES
(6, NULL, '9', 4),
(7, 'Shiddheshowor', '6', 4),
(8, 'Babla', '15', 4),
(9, 'Budakot', '7', 4),
(10, NULL, '1', 8),
(11, NULL, '8', 7),
(14, NULL, '2', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `core_otp`
--
ALTER TABLE `core_otp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `core_user`
--
ALTER TABLE `core_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `core_user_groups`
--
ALTER TABLE `core_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_user_groups_user_id_group_id_c82fcad1_uniq` (`user_id`,`group_id`),
  ADD KEY `core_user_groups_group_id_fe8c697f_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `core_user_user_permissions`
--
ALTER TABLE `core_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_user_user_permissions_user_id_permission_id_73ea0daa_uniq` (`user_id`,`permission_id`),
  ADD KEY `core_user_user_permi_permission_id_35ccf601_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_core_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `store_address`
--
ALTER TABLE `store_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_address_district_id_88290175_fk_store_district_id` (`district_id`),
  ADD KEY `store_address_province_id_7a9c48eb_fk_store_province_id` (`province_id`),
  ADD KEY `store_address_ward_id_6413747c` (`ward_id`),
  ADD KEY `store_address_municipality_id_50763754` (`municipality_id`);

--
-- Indexes for table `store_associatehospital`
--
ALTER TABLE `store_associatehospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_associatehospitalmember`
--
ALTER TABLE `store_associatehospitalmember`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_associatehospi_hospital_id_ad58b196_fk_store_ass` (`hospital_id`);

--
-- Indexes for table `store_associatehospitalquickcontact`
--
ALTER TABLE `store_associatehospitalquickcontact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_associatehospi_organization_id_8569fad6_fk_store_ass` (`organization_id`);

--
-- Indexes for table `store_associatevolunteer`
--
ALTER TABLE `store_associatevolunteer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_associatevolunteermember`
--
ALTER TABLE `store_associatevolunteermember`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_associatevolun_organization_id_80262e47_fk_store_ass` (`organization_id`);

--
-- Indexes for table `store_associatevolunteerquickcontact`
--
ALTER TABLE `store_associatevolunteerquickcontact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_associatevolun_organization_id_7fc0c415_fk_store_ass` (`organization_id`);

--
-- Indexes for table `store_blog`
--
ALTER TABLE `store_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_blog_author_id_6851b5bc_fk_core_user_id` (`author_id`);

--
-- Indexes for table `store_blooddonorrequest`
--
ALTER TABLE `store_blooddonorrequest`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `store_blooddonorrequ_district_id_fec0f979_fk_store_dis` (`district_id`),
  ADD KEY `store_blooddonorrequ_municipality_id_9a1a1afe_fk_store_mun` (`municipality_id`),
  ADD KEY `store_blooddonorrequ_province_id_ad62dadb_fk_store_pro` (`province_id`),
  ADD KEY `store_blooddonorrequest_ward_id_26c2765a_fk_store_ward_id` (`ward_id`);

--
-- Indexes for table `store_district`
--
ALTER TABLE `store_district`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `store_district_province_id_name_f7b907f1_uniq` (`province_id`,`name`);

--
-- Indexes for table `store_emergencydonororganization`
--
ALTER TABLE `store_emergencydonororganization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_emergencydonororganizationmember`
--
ALTER TABLE `store_emergencydonororganizationmember`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_emergencydonor_organization_id_e2d2d4bb_fk_store_eme` (`organization_id`);

--
-- Indexes for table `store_emergencydonororganizationquickcontact`
--
ALTER TABLE `store_emergencydonororganizationquickcontact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_emergencydonor_organization_id_c92288dd_fk_store_eme` (`organization_id`);

--
-- Indexes for table `store_gallery`
--
ALTER TABLE `store_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_galleryimage`
--
ALTER TABLE `store_galleryimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_galleryimage_gallery_id_532c1830_fk_store_gallery_id` (`gallery_id`);

--
-- Indexes for table `store_municipality`
--
ALTER TABLE `store_municipality`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `store_municipality_district_id_name_4e06dd43_uniq` (`district_id`,`name`);

--
-- Indexes for table `store_municipalityquickcontact`
--
ALTER TABLE `store_municipalityquickcontact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_municipalityqu_organization_id_7ec0d726_fk_store_mun` (`organization_id`);

--
-- Indexes for table `store_person`
--
ALTER TABLE `store_person`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `store_person_permanent_address_id_7667c5d9` (`permanent_address_id`);

--
-- Indexes for table `store_province`
--
ALTER TABLE `store_province`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `store_sponsor`
--
ALTER TABLE `store_sponsor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_userreview`
--
ALTER TABLE `store_userreview`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_userreview_person_id_7990f152_fk_store_person_id` (`person_id`);

--
-- Indexes for table `store_volunteerrequest`
--
ALTER TABLE `store_volunteerrequest`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `store_volunteerrequest_district_id_fa9a4524_fk_store_district_id` (`district_id`),
  ADD KEY `store_volunteerreque_municipality_id_f003c2e4_fk_store_mun` (`municipality_id`),
  ADD KEY `store_volunteerrequest_province_id_7fa92e6e_fk_store_province_id` (`province_id`),
  ADD KEY `store_volunteerrequest_ward_id_54a698d1_fk_store_ward_id` (`ward_id`);

--
-- Indexes for table `store_ward`
--
ALTER TABLE `store_ward`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `store_ward_ward_number_90fa4bef_uniq` (`ward_number`),
  ADD UNIQUE KEY `store_ward_name_ward_number_219bc01e_uniq` (`name`,`ward_number`),
  ADD KEY `store_ward_municipality_id_f20b768b_fk_store_municipality_id` (`municipality_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `core_otp`
--
ALTER TABLE `core_otp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `core_user`
--
ALTER TABLE `core_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `core_user_groups`
--
ALTER TABLE `core_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `core_user_user_permissions`
--
ALTER TABLE `core_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `store_address`
--
ALTER TABLE `store_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `store_associatehospital`
--
ALTER TABLE `store_associatehospital`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store_associatehospitalmember`
--
ALTER TABLE `store_associatehospitalmember`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store_associatehospitalquickcontact`
--
ALTER TABLE `store_associatehospitalquickcontact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `store_associatevolunteer`
--
ALTER TABLE `store_associatevolunteer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `store_associatevolunteermember`
--
ALTER TABLE `store_associatevolunteermember`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `store_associatevolunteerquickcontact`
--
ALTER TABLE `store_associatevolunteerquickcontact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `store_blog`
--
ALTER TABLE `store_blog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `store_blooddonorrequest`
--
ALTER TABLE `store_blooddonorrequest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `store_district`
--
ALTER TABLE `store_district`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store_emergencydonororganization`
--
ALTER TABLE `store_emergencydonororganization`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store_emergencydonororganizationmember`
--
ALTER TABLE `store_emergencydonororganizationmember`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `store_emergencydonororganizationquickcontact`
--
ALTER TABLE `store_emergencydonororganizationquickcontact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store_gallery`
--
ALTER TABLE `store_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store_galleryimage`
--
ALTER TABLE `store_galleryimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `store_municipality`
--
ALTER TABLE `store_municipality`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `store_municipalityquickcontact`
--
ALTER TABLE `store_municipalityquickcontact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_person`
--
ALTER TABLE `store_person`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `store_province`
--
ALTER TABLE `store_province`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `store_sponsor`
--
ALTER TABLE `store_sponsor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `store_userreview`
--
ALTER TABLE `store_userreview`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `store_volunteerrequest`
--
ALTER TABLE `store_volunteerrequest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `store_ward`
--
ALTER TABLE `store_ward`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `core_otp`
--
ALTER TABLE `core_otp`
  ADD CONSTRAINT `core_otp_user_id_20a9e364_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `core_user_groups`
--
ALTER TABLE `core_user_groups`
  ADD CONSTRAINT `core_user_groups_group_id_fe8c697f_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `core_user_groups_user_id_70b4d9b8_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `core_user_user_permissions`
--
ALTER TABLE `core_user_user_permissions`
  ADD CONSTRAINT `core_user_user_permi_permission_id_35ccf601_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `core_user_user_permissions_user_id_085123d3_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `store_address`
--
ALTER TABLE `store_address`
  ADD CONSTRAINT `store_address_district_id_88290175_fk_store_district_id` FOREIGN KEY (`district_id`) REFERENCES `store_district` (`id`),
  ADD CONSTRAINT `store_address_municipality_id_50763754_fk_store_municipality_id` FOREIGN KEY (`municipality_id`) REFERENCES `store_municipality` (`id`),
  ADD CONSTRAINT `store_address_province_id_7a9c48eb_fk_store_province_id` FOREIGN KEY (`province_id`) REFERENCES `store_province` (`id`),
  ADD CONSTRAINT `store_address_ward_id_6413747c_fk_store_ward_id` FOREIGN KEY (`ward_id`) REFERENCES `store_ward` (`id`);

--
-- Constraints for table `store_associatehospitalmember`
--
ALTER TABLE `store_associatehospitalmember`
  ADD CONSTRAINT `store_associatehospi_hospital_id_ad58b196_fk_store_ass` FOREIGN KEY (`hospital_id`) REFERENCES `store_associatehospital` (`id`);

--
-- Constraints for table `store_associatehospitalquickcontact`
--
ALTER TABLE `store_associatehospitalquickcontact`
  ADD CONSTRAINT `store_associatehospi_organization_id_8569fad6_fk_store_ass` FOREIGN KEY (`organization_id`) REFERENCES `store_associatehospital` (`id`);

--
-- Constraints for table `store_associatevolunteermember`
--
ALTER TABLE `store_associatevolunteermember`
  ADD CONSTRAINT `store_associatevolun_organization_id_80262e47_fk_store_ass` FOREIGN KEY (`organization_id`) REFERENCES `store_associatevolunteer` (`id`);

--
-- Constraints for table `store_associatevolunteerquickcontact`
--
ALTER TABLE `store_associatevolunteerquickcontact`
  ADD CONSTRAINT `store_associatevolun_organization_id_7fc0c415_fk_store_ass` FOREIGN KEY (`organization_id`) REFERENCES `store_associatevolunteer` (`id`);

--
-- Constraints for table `store_blog`
--
ALTER TABLE `store_blog`
  ADD CONSTRAINT `store_blog_author_id_6851b5bc_fk_core_user_id` FOREIGN KEY (`author_id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `store_blooddonorrequest`
--
ALTER TABLE `store_blooddonorrequest`
  ADD CONSTRAINT `store_blooddonorrequ_district_id_fec0f979_fk_store_dis` FOREIGN KEY (`district_id`) REFERENCES `store_district` (`id`),
  ADD CONSTRAINT `store_blooddonorrequ_municipality_id_9a1a1afe_fk_store_mun` FOREIGN KEY (`municipality_id`) REFERENCES `store_municipality` (`id`),
  ADD CONSTRAINT `store_blooddonorrequ_province_id_ad62dadb_fk_store_pro` FOREIGN KEY (`province_id`) REFERENCES `store_province` (`id`),
  ADD CONSTRAINT `store_blooddonorrequest_user_id_13744b42_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`),
  ADD CONSTRAINT `store_blooddonorrequest_ward_id_26c2765a_fk_store_ward_id` FOREIGN KEY (`ward_id`) REFERENCES `store_ward` (`id`);

--
-- Constraints for table `store_district`
--
ALTER TABLE `store_district`
  ADD CONSTRAINT `store_district_province_id_d5764d09_fk_store_province_id` FOREIGN KEY (`province_id`) REFERENCES `store_province` (`id`);

--
-- Constraints for table `store_emergencydonororganizationmember`
--
ALTER TABLE `store_emergencydonororganizationmember`
  ADD CONSTRAINT `store_emergencydonor_organization_id_e2d2d4bb_fk_store_eme` FOREIGN KEY (`organization_id`) REFERENCES `store_emergencydonororganization` (`id`);

--
-- Constraints for table `store_emergencydonororganizationquickcontact`
--
ALTER TABLE `store_emergencydonororganizationquickcontact`
  ADD CONSTRAINT `store_emergencydonor_organization_id_c92288dd_fk_store_eme` FOREIGN KEY (`organization_id`) REFERENCES `store_emergencydonororganization` (`id`);

--
-- Constraints for table `store_galleryimage`
--
ALTER TABLE `store_galleryimage`
  ADD CONSTRAINT `store_galleryimage_gallery_id_532c1830_fk_store_gallery_id` FOREIGN KEY (`gallery_id`) REFERENCES `store_gallery` (`id`);

--
-- Constraints for table `store_municipality`
--
ALTER TABLE `store_municipality`
  ADD CONSTRAINT `store_municipality_district_id_04c7ab2f_fk_store_district_id` FOREIGN KEY (`district_id`) REFERENCES `store_district` (`id`);

--
-- Constraints for table `store_municipalityquickcontact`
--
ALTER TABLE `store_municipalityquickcontact`
  ADD CONSTRAINT `store_municipalityqu_organization_id_7ec0d726_fk_store_mun` FOREIGN KEY (`organization_id`) REFERENCES `store_municipality` (`id`);

--
-- Constraints for table `store_person`
--
ALTER TABLE `store_person`
  ADD CONSTRAINT `store_person_permanent_address_id_7667c5d9_fk_store_address_id` FOREIGN KEY (`permanent_address_id`) REFERENCES `store_address` (`id`),
  ADD CONSTRAINT `store_person_user_id_2892ef74_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`);

--
-- Constraints for table `store_userreview`
--
ALTER TABLE `store_userreview`
  ADD CONSTRAINT `store_userreview_person_id_7990f152_fk_store_person_id` FOREIGN KEY (`person_id`) REFERENCES `store_person` (`id`);

--
-- Constraints for table `store_volunteerrequest`
--
ALTER TABLE `store_volunteerrequest`
  ADD CONSTRAINT `store_volunteerreque_municipality_id_f003c2e4_fk_store_mun` FOREIGN KEY (`municipality_id`) REFERENCES `store_municipality` (`id`),
  ADD CONSTRAINT `store_volunteerrequest_district_id_fa9a4524_fk_store_district_id` FOREIGN KEY (`district_id`) REFERENCES `store_district` (`id`),
  ADD CONSTRAINT `store_volunteerrequest_province_id_7fa92e6e_fk_store_province_id` FOREIGN KEY (`province_id`) REFERENCES `store_province` (`id`),
  ADD CONSTRAINT `store_volunteerrequest_user_id_a5e85538_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`),
  ADD CONSTRAINT `store_volunteerrequest_ward_id_54a698d1_fk_store_ward_id` FOREIGN KEY (`ward_id`) REFERENCES `store_ward` (`id`);

--
-- Constraints for table `store_ward`
--
ALTER TABLE `store_ward`
  ADD CONSTRAINT `store_ward_municipality_id_f20b768b_fk_store_municipality_id` FOREIGN KEY (`municipality_id`) REFERENCES `store_municipality` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
