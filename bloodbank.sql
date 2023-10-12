-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2023 at 05:20 AM
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
(104, 'Can view sponsor', 26, 'view_sponsor');

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
(1, 'pbkdf2_sha256$600000$P3dP0UarcKDsGMOjVbSX5V$xzd09J9jULFXQC3qPC9DekDwAod5Lv30tl7426HC+7E=', '2023-10-12 01:51:55.109174', 1, 'adminUser', 'Admin', 'User', 1, '2023-08-11 02:26:11.000000', 'mail@admin.com', 0, 1, 1, 1),
(2, 'pbkdf2_sha256$600000$efYsmqUGGbqH3eklE5fNoS$AUk6tCOR/Eku38MjgRCVXna4r8riFhshcQiUhW9RKxg=', '2023-08-12 07:47:03.387139', 0, 'rahulR', 'Rahul', 'Rimal', 1, '2023-08-11 02:26:57.000000', 'mail@rahul.com', 0, 1, 1, 1),
(3, 'pbkdf2_sha256$600000$zVpBqXJMHGO544Pryyzmep$R1H3I/wsqoiL0aDDSvEMa6GFu4A1jHhZ/U4fvJZhPV4=', NULL, 0, 'GaneshK', 'Ganesh', 'Kunwar', 1, '2023-08-12 03:41:45.000000', 'mail@ganesh.com', 0, 1, 1, 0),
(5, 'pbkdf2_sha256$600000$wv024zIBSC6zSpZ30GVNpT$e3huI6c53OB85AMZGBWnVfcdVGAGiLAHNMoQEH9SFOg=', NULL, 0, 'ramayan', 'ram', '', 1, '2023-10-12 01:54:47.000000', 'ram@gmail.com', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_user_groups`
--

CREATE TABLE `core_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_user_groups`
--

INSERT INTO `core_user_groups` (`id`, `user_id`, `group_id`) VALUES
(2, 2, 2),
(1, 3, 2);

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
(1, '2023-08-11 02:26:32.399601', '1', 'Admin User', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 6, 1),
(2, '2023-08-11 02:26:57.816561', '2', ' ', 1, '[{\"added\": {}}]', 6, 1),
(3, '2023-08-11 02:27:03.602449', '2', 'Rahul Rimal', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 6, 1),
(4, '2023-08-11 02:28:43.802267', '1', 'Koshi Pradesh', 1, '[{\"added\": {}}]', 9, 1),
(5, '2023-08-11 02:28:46.733241', '2', 'Madesh Pradesh', 1, '[{\"added\": {}}]', 9, 1),
(6, '2023-08-11 02:28:49.520186', '3', 'Bagmati Pradesh', 1, '[{\"added\": {}}]', 9, 1),
(7, '2023-08-11 02:28:52.288221', '4', 'Gandaki Pradesh', 1, '[{\"added\": {}}]', 9, 1),
(8, '2023-08-11 02:28:54.959423', '5', 'Lumbini Pradesh', 1, '[{\"added\": {}}]', 9, 1),
(9, '2023-08-11 02:28:57.852584', '6', 'Karnali Pradesh', 1, '[{\"added\": {}}]', 9, 1),
(10, '2023-08-11 02:29:24.782355', '1', 'Kathmandu', 1, '[{\"added\": {}}]', 8, 1),
(11, '2023-08-11 02:29:45.832899', '2', 'Banke', 1, '[{\"added\": {}}]', 8, 1),
(12, '2023-08-11 02:29:55.534760', '1', 'Kathmandu', 1, '[{\"added\": {}}]', 11, 1),
(13, '2023-08-11 02:30:05.480414', '2', 'Nepalgunj', 1, '[{\"added\": {}}]', 11, 1),
(14, '2023-08-11 02:30:25.227216', '1', 'Kathmandu', 1, '[{\"added\": {}}]', 12, 1),
(15, '2023-08-11 02:30:33.926115', '2', 'Nepalgunj', 1, '[{\"added\": {}}]', 12, 1),
(16, '2023-08-11 02:30:57.657681', '1', '32, dfjk djf, Kathmandu, Kathmandu, Kathmandu, Bagmati Pradesh', 1, '[{\"added\": {}}]', 7, 1),
(17, '2023-08-11 02:31:14.898175', '2', '05, Deurali Marg, Nepalgunj, Nepalgunj, Banke, Lumbini Pradesh', 1, '[{\"added\": {}}]', 7, 1),
(18, '2023-08-11 02:31:57.012387', '1', '1 => Admin User', 1, '[{\"added\": {}}]', 10, 1),
(19, '2023-08-11 02:32:17.144227', '2', '2 => Rahul Rimal', 1, '[{\"added\": {}}]', 10, 1),
(20, '2023-08-11 02:34:08.187605', '1', 'UserReview object (1)', 1, '[{\"added\": {}}]', 16, 1),
(21, '2023-08-11 02:58:42.781615', '2', 'UserReview object (2)', 1, '[{\"added\": {}}]', 16, 1),
(22, '2023-08-11 03:00:06.749046', '3', 'UserReview object (3)', 1, '[{\"added\": {}}]', 16, 1),
(23, '2023-08-11 13:44:37.772689', '1', 'Test Gallery', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"gallery image\", \"object\": \"GalleryImage object (1)\"}}, {\"added\": {\"name\": \"gallery image\", \"object\": \"GalleryImage object (2)\"}}, {\"added\": {\"name\": \"gallery image\", \"object\": \"GalleryImage object (3)\"}}, {\"added\": {\"name\": \"gallery image\", \"object\": \"GalleryImage object (4)\"}}]', 13, 1),
(24, '2023-08-11 14:36:40.334106', '1', 'Admin User', 2, '[{\"changed\": {\"fields\": [\"Is donor\"]}}]', 6, 1),
(25, '2023-08-11 15:19:24.166961', '1', 'Admin User', 2, '[{\"changed\": {\"fields\": [\"Is volunteer\"]}}]', 6, 1),
(26, '2023-08-11 15:19:38.531470', '2', 'Rahul Rimal', 2, '[{\"changed\": {\"fields\": [\"Is volunteer\"]}}]', 6, 1),
(27, '2023-08-12 03:17:44.720363', '2', 'Blood donation on Achham', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"gallery image\", \"object\": \"GalleryImage object (5)\"}}, {\"added\": {\"name\": \"gallery image\", \"object\": \"GalleryImage object (6)\"}}]', 13, 1),
(28, '2023-08-12 03:18:50.191065', '1', 'Blog object (1)', 1, '[{\"added\": {}}]', 15, 1),
(29, '2023-08-12 03:19:06.897349', '2', 'Blog object (2)', 1, '[{\"added\": {}}]', 15, 1),
(30, '2023-08-12 03:19:28.197091', '3', 'Blog object (3)', 1, '[{\"added\": {}}]', 15, 1),
(31, '2023-08-12 03:23:42.903716', '1', 'Admin User', 2, '[{\"changed\": {\"fields\": [\"Is donor\"]}}]', 6, 1),
(32, '2023-08-12 03:25:34.345744', '2', 'Rahul Rimal', 2, '[{\"changed\": {\"fields\": [\"Is volunteer\"]}}]', 6, 1),
(33, '2023-08-12 03:25:44.955273', '2', 'Rahul Rimal', 2, '[{\"changed\": {\"fields\": [\"Is volunteer\"]}}]', 6, 1),
(34, '2023-08-12 03:37:40.403853', '1', 'Admin User', 2, '[{\"changed\": {\"fields\": [\"Permanent address\"]}}]', 10, 1),
(35, '2023-08-12 03:38:46.543521', '1', 'Admin User', 2, '[{\"changed\": {\"fields\": [\"BloodGroup\"]}}]', 10, 1),
(36, '2023-08-12 03:42:46.181823', '3', 'Ganesh Kunwar', 2, '[{\"changed\": {\"fields\": [\"Is staff\"]}}]', 6, 1),
(37, '2023-08-12 03:45:51.490447', '3', 'Ganesh Kunwar', 2, '[{\"changed\": {\"fields\": [\"Is emergency donor\"]}}]', 6, 1),
(38, '2023-08-12 03:45:58.475028', '2', 'Rahul Rimal', 2, '[{\"changed\": {\"fields\": [\"Is emergency donor\"]}}]', 6, 1),
(39, '2023-08-12 03:47:48.705461', '3', 'Ganesh Kunwar', 2, '[{\"changed\": {\"fields\": [\"Is donor\", \"Is emergency donor\"]}}]', 6, 1),
(40, '2023-08-12 03:47:54.131943', '1', 'Admin User', 2, '[{\"changed\": {\"fields\": [\"Is emergency donor\"]}}]', 6, 1),
(41, '2023-08-12 04:01:52.573279', '1', 'EmergencyDonor object (1)', 1, '[{\"added\": {}}]', 17, 1),
(42, '2023-08-12 04:07:00.203822', '2', 'EmergencyDonor object (2)', 1, '[{\"added\": {}}]', 17, 1),
(43, '2023-08-12 04:35:47.312718', '3', 'EmergencyDonor object (3)', 1, '[{\"added\": {}}]', 17, 1),
(44, '2023-08-12 04:52:57.133561', '1', 'AssociateVolunteer object (1)', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"associate volunteer member\", \"object\": \"GAnesh bdr. Kunwar\"}}]', 18, 1),
(45, '2023-08-12 04:54:09.174793', '1', 'AssociateVolunteer object (1)', 2, '[{\"added\": {\"name\": \"associate volunteer member\", \"object\": \"Suresh B.K.\"}}]', 18, 1),
(46, '2023-08-12 04:55:11.633505', '1', 'AssociateVolunteer object (1)', 2, '[{\"added\": {\"name\": \"associate volunteer member\", \"object\": \"Manita Kc.\"}}]', 18, 1),
(47, '2023-08-12 05:12:52.207475', '2', 'AssociateVolunteer object (2)', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"associate volunteer member\", \"object\": \"Nitesh J. Kunwar\"}}]', 18, 1),
(48, '2023-08-12 05:50:58.615179', '1', 'AssociateHospital object (1)', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"associate hospital member\", \"object\": \"Mani Ram Rimal\"}}]', 20, 1),
(49, '2023-08-12 06:29:42.727628', '1', 'EmergencyDonorOrganization object (1)', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"emergency donor organization member\", \"object\": \"Suman Koirala\"}}]', 23, 1),
(50, '2023-08-12 06:45:08.005054', '2', 'EmergencyDonorOrganization object (2)', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"emergency donor organization member\", \"object\": \"fdk kjdfk\"}}]', 23, 1),
(51, '2023-08-12 07:26:43.912811', '3', 'prince jung', 1, '[{\"added\": {}}]', 10, 1),
(52, '2023-08-12 07:27:11.056192', '4', 'UserReview object (4)', 1, '[{\"added\": {}}]', 16, 1),
(53, '2023-08-12 07:41:00.755365', '1', 'Superviser', 1, '[{\"added\": {}}]', 3, 1),
(54, '2023-08-12 07:43:25.675321', '2', 'Staff', 1, '[{\"added\": {}}]', 3, 1),
(55, '2023-08-12 07:44:33.684247', '3', 'Ganesh Kunwar', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 6, 1),
(56, '2023-08-12 07:44:42.702617', '2', 'Rahul Rimal', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 6, 1),
(57, '2023-08-12 07:45:01.767880', '4', 'prince jung', 2, '[{\"changed\": {\"fields\": [\"Is staff\", \"Groups\", \"Is superviser\"]}}]', 6, 1),
(58, '2023-08-12 07:45:25.825900', '2', 'Rahul Rimal', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 6, 1),
(59, '2023-08-12 09:12:50.043476', '1', 'BloodDonorRequest object (1)', 3, '', 24, 1),
(60, '2023-08-12 09:20:29.858162', '6', 'BloodDonorRequest object (6)', 3, '', 24, 1),
(61, '2023-08-12 09:20:29.924161', '5', 'BloodDonorRequest object (5)', 3, '', 24, 1),
(62, '2023-08-12 09:20:29.961158', '4', 'BloodDonorRequest object (4)', 3, '', 24, 1),
(63, '2023-08-12 09:20:29.994157', '3', 'BloodDonorRequest object (3)', 3, '', 24, 1),
(64, '2023-08-12 09:20:30.028208', '2', 'BloodDonorRequest object (2)', 3, '', 24, 1),
(70, '2023-08-12 10:05:26.792065', '3', 'prince jung', 3, '', 10, 1),
(75, '2023-08-12 10:12:28.875141', '7', 'BloodDonorRequest object (7)', 2, '[]', 24, 1),
(76, '2023-08-12 10:14:24.822815', '4', 'prince jung', 3, '', 6, 1),
(77, '2023-08-12 10:14:37.322767', '6', 'Deurali Marg, Deurali Marg, Kathmandu, Kathmandu, Kathmandu, Gandaki Pradesh', 3, '', 7, 1),
(78, '2023-08-12 10:19:08.428095', '3', 'Ganesh Kunwar', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 6, 1),
(79, '2023-08-12 10:20:26.258184', '8', 'BloodDonorRequest object (8)', 2, '[]', 24, 1),
(81, '2023-08-12 10:32:01.636833', '5', 'Ganesh Kunwar', 3, '', 10, 1),
(82, '2023-08-12 10:32:10.357241', '1', 'VolunteerRequest object (1)', 2, '[]', 25, 1),
(83, '2023-08-12 10:38:17.792707', '1', 'Sponsor object (1)', 1, '[{\"added\": {}}]', 26, 1),
(84, '2023-08-12 10:38:36.455921', '2', 'Sponsor object (2)', 1, '[{\"added\": {}}]', 26, 1),
(86, '2023-10-12 01:59:51.116968', '9', 'BloodDonorRequest object (9)', 2, '[]', 24, 1),
(87, '2023-10-12 02:11:24.145977', '5', 'ram ', 2, '[{\"changed\": {\"fields\": [\"Is staff\"]}}]', 6, 1),
(88, '2023-10-12 02:26:22.355961', '8', 'ram ', 2, '[{\"changed\": {\"fields\": [\"Latest donation\"]}}]', 10, 1),
(89, '2023-10-12 02:28:10.748695', '8', 'ram ', 2, '[{\"changed\": {\"fields\": [\"Latest donation\"]}}]', 10, 1),
(90, '2023-10-12 02:28:44.199013', '8', 'ram ', 2, '[{\"changed\": {\"fields\": [\"Latest donation\"]}}]', 10, 1),
(91, '2023-10-12 02:29:00.394383', '8', 'ram ', 2, '[{\"changed\": {\"fields\": [\"Latest donation\"]}}]', 10, 1),
(92, '2023-10-12 02:29:08.104392', '8', 'ram ', 2, '[{\"changed\": {\"fields\": [\"Latest donation\"]}}]', 10, 1),
(93, '2023-10-12 02:29:24.243186', '2', 'Rahul Rimal', 2, '[{\"changed\": {\"fields\": [\"Latest donation\"]}}]', 10, 1),
(94, '2023-10-12 02:33:23.398538', '2', 'Sponsor object (2)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 26, 1),
(95, '2023-10-12 02:33:33.362872', '1', 'Sponsor object (1)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 26, 1);

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
(6, 'core', 'user'),
(5, 'sessions', 'session'),
(7, 'store', 'address'),
(20, 'store', 'associatehospital'),
(21, 'store', 'associatehospitalmember'),
(18, 'store', 'associatevolunteer'),
(19, 'store', 'associatevolunteermember'),
(15, 'store', 'blog'),
(24, 'store', 'blooddonorrequest'),
(8, 'store', 'district'),
(17, 'store', 'emergencydonor'),
(23, 'store', 'emergencydonororganization'),
(22, 'store', 'emergencydonororganizationmember'),
(13, 'store', 'gallery'),
(14, 'store', 'galleryimage'),
(11, 'store', 'municipality'),
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
(55, 'store', '0031_person_latest_donation', '2023-10-12 02:25:57.923654');

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
('ec03z0qbcn2u639sye1ieznku1p5fte6', '.eJxVjEEOwiAQAP_C2RCWssB69N43kC1QqRqalPZk_Lsh6UGvM5N5i8DHXsLR8haWJK4CxOWXTRyfuXaRHlzvq4xr3bdlkj2Rp21yXFN-3c72b1C4lb5ltIMhnx3kmMk7YpMAcQY9OG0BDTAoRcqgSxAJcNbekrbeKGWJxecLqEk1zA:1qqkrj:P-ZO16hfckjiwsbKVUiZ2rtofewu0lx-mACbVfgf5io', '2023-10-26 01:51:55.112164'),
('vnsy5pmghtr5jzwbdgzx4of899sonbdi', '.eJxVjEEOwiAQAP_C2RCWssB69N43kC1QqRqalPZk_Lsh6UGvM5N5i8DHXsLR8haWJK4CxOWXTRyfuXaRHlzvq4xr3bdlkj2Rp21yXFN-3c72b1C4lb5ltIMhnx3kmMk7YpMAcQY9OG0BDTAoRcqgSxAJcNbekrbeKGWJxecLqEk1zA:1qUli8:P5aUwdj7HbAf2dxIw4w-lFY36i6hZqZUujDjQ_9uRfA', '2023-08-26 10:19:08.573870');

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
(1, 1, 'dfjk djf', '32', 1, 1, 3, NULL),
(2, 2, 'Deurali Marg', '05', 2, 2, 5, NULL),
(7, 1, 'Deurali Marg', 'Deurali Marg', 1, 1, 3, NULL),
(9, 1, 'dfghjkl', 'dfghjkl', 1, 1, 1, NULL),
(10, 2, 'sanfebagar', 'sanfebagar', 1, 2, 3, NULL);

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
(1, 'Civil', 'Baneshwor', '9875637265');

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
(1, 'Mani Ram Rimal', 55, '23456789', 'djfkfj', 'dfmkdjf', 'jdkfjdkfj', 'AB+', 'doctor', 1);

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
(1, 'XYZ', 'Sanfebagar', '9876453798'),
(2, 'CYP Youths', 'Srikot', '3456789');

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
(1, 'GAnesh bdr. Kunwar', 34, '7645367586', 'Achham', 'Ktm', 'Ktm', 'B-', 'Businessman', 1),
(2, 'Suresh B.K.', 33, '75678989', 'Dailekh', 'Npj', 'Npj', 'A+', 'Student', 1),
(3, 'Manita Kc.', 23, '456789', 'kfdjf', 'djfkdfjk', 'dkjfd', 'B+', 'Student', 1),
(4, 'Nitesh J. Kunwar', 18, '234567899', 'fghjkl', 'fghjkl', 'ghjkll', 'A-', 'ghjkl', 2);

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

--
-- Dumping data for table `store_blog`
--

INSERT INTO `store_blog` (`id`, `title`, `content`, `thumbnail`, `created_at`, `author_id`) VALUES
(1, 'Test Blog', 'em Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem', 'blog/thumbnails/WhatsApp_Image_2023-03-21_at_4.41.00_PM.jpeg', '2023-08-12 03:18:50.110065', 2),
(2, 'Test 2', 'em Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem', 'blog/thumbnails/prasad2_at2hj5R.jpg', '2023-08-12 03:19:06.880712', 2),
(3, 'TEst 3', 'em Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem', 'blog/thumbnails/bulakhi.jpg', '2023-08-12 03:19:28.187105', 1);

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
  `user_id` bigint(20) NOT NULL
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
(2, 'Banke', 5);

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
(1, 'Army'),
(2, 'APF');

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
(2, 'fdk kjdfk', 32, '567890-', 'AB-', 2);

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
(1, 'Kathmandu', 1),
(2, 'Nepalgunj', 2);

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
  `current_address_id` bigint(20) NOT NULL,
  `permanent_address_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `workplace_id` bigint(20) NOT NULL,
  `dob` datetime(6) NOT NULL,
  `latest_donation` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_person`
--

INSERT INTO `store_person` (`id`, `contact`, `bloodGroup`, `profession`, `image`, `current_address_id`, `permanent_address_id`, `user_id`, `workplace_id`, `dob`, `latest_donation`) VALUES
(1, '9868957429', 'A-', 'Businessman', 'person/images/prasad2.jpg', 1, 2, 1, 1, '2023-08-12 10:10:45.171213', NULL),
(2, '9868957429', 'B+', 'Actor', 'person/images/bulakhi_9MFZZb2.jpg', 1, 2, 2, 1, '2023-08-12 10:10:45.000000', '2023-10-12'),
(7, '9876564756', 'AB-', 'Army', 'volunteerrequest/images/bulakhi.jpg', 9, 9, 3, 9, '2023-08-22 00:00:00.000000', NULL),
(8, '9810228669', 'AB+', 'student', 'donerrequest/images/IMG_0459.JPG', 10, 10, 5, 10, '2018-05-12 00:00:00.000000', '2023-10-12');

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
(4, 'Gandaki Pradesh'),
(6, 'Karnali Pradesh'),
(1, 'Koshi Pradesh'),
(5, 'Lumbini Pradesh'),
(2, 'Madesh Pradesh');

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
(1, 'Hotel Samarpan', 'https://chat.openai.com/', 'sponsors/images/IMG_0494.jpg'),
(2, 'Test sponsor', 'https://chat.openai.com/', 'sponsors/images/IMG_0459.JPG');

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
(1, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distrib', 2),
(2, 'This is a test review Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a se', 2),
(3, 'This is a test review', 2);

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
  `ward_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `store_ward`
--

CREATE TABLE `store_ward` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ward_number` int(11) NOT NULL,
  `municipality_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_ward`
--

INSERT INTO `store_ward` (`id`, `name`, `ward_number`, `municipality_id`) VALUES
(1, 'Kathmandu', 32, 1),
(2, 'Nepalgunj', 11, 2);

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
-- Indexes for table `store_person`
--
ALTER TABLE `store_person`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `store_person_current_address_id_34d59469` (`current_address_id`),
  ADD KEY `store_person_permanent_address_id_7667c5d9` (`permanent_address_id`),
  ADD KEY `store_person_workplace_id_7a86dc37` (`workplace_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `core_user`
--
ALTER TABLE `core_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `store_address`
--
ALTER TABLE `store_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `store_associatehospital`
--
ALTER TABLE `store_associatehospital`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_associatehospitalmember`
--
ALTER TABLE `store_associatehospitalmember`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_associatevolunteer`
--
ALTER TABLE `store_associatevolunteer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store_associatevolunteermember`
--
ALTER TABLE `store_associatevolunteermember`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store_blog`
--
ALTER TABLE `store_blog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `store_blooddonorrequest`
--
ALTER TABLE `store_blooddonorrequest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `store_district`
--
ALTER TABLE `store_district`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store_emergencydonororganization`
--
ALTER TABLE `store_emergencydonororganization`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store_emergencydonororganizationmember`
--
ALTER TABLE `store_emergencydonororganizationmember`
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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store_person`
--
ALTER TABLE `store_person`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `store_province`
--
ALTER TABLE `store_province`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `store_sponsor`
--
ALTER TABLE `store_sponsor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store_userreview`
--
ALTER TABLE `store_userreview`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store_volunteerrequest`
--
ALTER TABLE `store_volunteerrequest`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_ward`
--
ALTER TABLE `store_ward`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Constraints for table `store_associatevolunteermember`
--
ALTER TABLE `store_associatevolunteermember`
  ADD CONSTRAINT `store_associatevolun_organization_id_80262e47_fk_store_ass` FOREIGN KEY (`organization_id`) REFERENCES `store_associatevolunteer` (`id`);

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
-- Constraints for table `store_person`
--
ALTER TABLE `store_person`
  ADD CONSTRAINT `store_person_current_address_id_34d59469_fk_store_address_id` FOREIGN KEY (`current_address_id`) REFERENCES `store_address` (`id`),
  ADD CONSTRAINT `store_person_permanent_address_id_7667c5d9_fk_store_address_id` FOREIGN KEY (`permanent_address_id`) REFERENCES `store_address` (`id`),
  ADD CONSTRAINT `store_person_user_id_2892ef74_fk_core_user_id` FOREIGN KEY (`user_id`) REFERENCES `core_user` (`id`),
  ADD CONSTRAINT `store_person_workplace_id_7a86dc37_fk_store_address_id` FOREIGN KEY (`workplace_id`) REFERENCES `store_address` (`id`);

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
