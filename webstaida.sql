-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 28, 2024 at 06:10 AM
-- Server version: 8.0.37-0ubuntu0.22.04.3
-- PHP Version: 8.1.2-1ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webstaida`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add news', 7, 'add_news'),
(26, 'Can change news', 7, 'change_news'),
(27, 'Can delete news', 7, 'delete_news'),
(28, 'Can view news', 7, 'view_news'),
(29, 'Can add program detail', 8, 'add_programdetail'),
(30, 'Can change program detail', 8, 'change_programdetail'),
(31, 'Can delete program detail', 8, 'delete_programdetail'),
(32, 'Can view program detail', 8, 'view_programdetail'),
(33, 'Can add program', 9, 'add_program'),
(34, 'Can change program', 9, 'change_program'),
(35, 'Can delete program', 9, 'delete_program'),
(36, 'Can view program', 9, 'view_program'),
(37, 'Can add program_ detail', 8, 'add_program_detail'),
(38, 'Can change program_ detail', 8, 'change_program_detail'),
(39, 'Can delete program_ detail', 8, 'delete_program_detail'),
(40, 'Can view program_ detail', 8, 'view_program_detail'),
(41, 'Can add journal', 10, 'add_journal'),
(42, 'Can change journal', 10, 'change_journal'),
(43, 'Can delete journal', 10, 'delete_journal'),
(44, 'Can view journal', 10, 'view_journal');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$WkSR8eLUZjyj4i3RArRnJK$LFfZYjMgEQ4yiSwhkm+L6XTR1auzRAsFLoIz9uSisYg=', '2024-07-27 03:57:29.275195', 1, 'admin', '', '', '', 1, 1, '2024-07-22 00:47:44.799075');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-07-22 00:49:32.714794', '1', 'Stadium General STAI Darussalam Sumatera Selatan Mengawali tahun Akademik 2023/2024', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-07-22 00:51:19.312771', '1', 'Stadium General STAI Darussalam Sumatera Selatan Mengawali tahun Akademik 2023/2024', 3, '', 7, 1),
(3, '2024-07-22 00:52:50.338021', '2', 'Stadium General STAI Darussalam Sumatera Selatan Mengawali tahun Akademik 2023/2024', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-07-22 00:58:51.468284', '2', 'Stadium General STAI Darussalam Sumatera Selatan Mengawali tahun Akademik 2023/2024', 3, '', 7, 1),
(5, '2024-07-22 00:59:22.429399', '3', 'Stadium General STAI Darussalam Sumatera Selatan Mengawali tahun Akademik 2023/2024', 1, '[{\"added\": {}}]', 7, 1),
(6, '2024-07-22 01:00:06.448512', '3', 'Stadium General STAI Darussalam Sumatera Selatan Mengawali tahun Akademik 2023/2024', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(7, '2024-07-22 01:00:28.066266', '3', 'Stadium General STAI Darussalam Sumatera Selatan Mengawali tahun Akademik 2023/2024', 3, '', 7, 1),
(8, '2024-07-22 01:02:56.569714', '4', 'Stadium General STAI Darussalam Sumatera Selatan Mengawali tahun Akademik 2023/2024', 1, '[{\"added\": {}}]', 7, 1),
(9, '2024-07-22 01:03:26.325549', '4', 'Stadium General STAI Darussalam Sumatera Selatan Mengawali tahun Akademik 2023/2024', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(10, '2024-07-22 06:29:05.158285', '5', '5 Kuliah Kerja Lapangan STAI Darussalam Sumatera selatan: Menambah Wawasan dan pengalaman', 1, '[{\"added\": {}}]', 7, 1),
(11, '2024-07-22 09:30:06.073422', '6', '6 test', 1, '[{\"added\": {}}]', 7, 1),
(12, '2024-07-22 09:30:59.520589', '6', '6 test', 3, '', 7, 1),
(13, '2024-07-25 05:28:30.051803', '7', '7 Stadium General STAI Darussalam Sumatera Selatan Mengawali tahun Akademik 2023/2024', 1, '[{\"added\": {}}]', 7, 1),
(14, '2024-07-25 05:29:10.351328', '8', '8 Kuliah Kerja Lapangan STAI Darussalam Sumatera selatan: Menambah Wawasan dan pengalaman', 1, '[{\"added\": {}}]', 7, 1),
(15, '2024-07-27 04:17:19.232310', '1', 'ekonomi', 1, '[{\"added\": {}}]', 9, 1),
(16, '2024-07-27 04:17:34.160416', '2', 'perbankan', 1, '[{\"added\": {}}]', 9, 1),
(17, '2024-07-27 04:17:48.290972', '3', 'pendidikan agama islam', 1, '[{\"added\": {}}]', 9, 1),
(18, '2024-07-27 04:18:01.775178', '4', 'manajemen pendidikan islam', 1, '[{\"added\": {}}]', 9, 1),
(19, '2024-07-27 04:18:14.288045', '5', 'bahasa inggris', 1, '[{\"added\": {}}]', 9, 1),
(20, '2024-07-27 04:18:26.195495', '6', 'bahasa indonesia', 1, '[{\"added\": {}}]', 9, 1),
(21, '2024-07-27 04:23:29.665131', '1', 'test', 1, '[{\"added\": {}}]', 8, 1),
(22, '2024-07-27 04:23:39.234060', '2', 'test 1', 1, '[{\"added\": {}}]', 8, 1),
(23, '2024-07-27 04:23:46.132602', '1', 'test 2', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 8, 1),
(24, '2024-07-27 04:23:55.417172', '3', 'test 3', 1, '[{\"added\": {}}]', 8, 1),
(25, '2024-07-27 08:57:25.698613', '1', 'test', 1, '[{\"added\": {}}]', 10, 1),
(26, '2024-07-27 08:58:13.713595', '1', 'test', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(27, '2024-07-27 09:20:59.675136', '1', 'test', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 10, 1),
(28, '2024-07-27 09:25:00.032501', '2', 'test 2', 1, '[{\"added\": {}}]', 10, 1),
(29, '2024-07-27 09:25:04.938233', '1', 'test 1', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(10, 'webstaida', 'journal'),
(7, 'webstaida', 'news'),
(9, 'webstaida', 'program'),
(8, 'webstaida', 'programdetail');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-07-22 00:34:30.101642'),
(2, 'auth', '0001_initial', '2024-07-22 00:34:30.906649'),
(3, 'admin', '0001_initial', '2024-07-22 00:34:31.088769'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-07-22 00:34:31.101178'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-22 00:34:31.110122'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-07-22 00:34:31.396611'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-07-22 00:34:31.463824'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-07-22 00:34:31.500200'),
(9, 'auth', '0004_alter_user_username_opts', '2024-07-22 00:34:31.511180'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-07-22 00:34:31.573380'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-07-22 00:34:31.578519'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-07-22 00:34:31.592243'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-07-22 00:34:31.670026'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-07-22 00:34:31.748427'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-07-22 00:34:31.773352'),
(16, 'auth', '0011_update_proxy_permissions', '2024-07-22 00:34:31.785354'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-07-22 00:34:31.925970'),
(18, 'sessions', '0001_initial', '2024-07-22 00:34:31.974066'),
(19, 'webstaida', '0001_initial', '2024-07-22 00:44:32.179452'),
(20, 'webstaida', '0002_remove_news_created_at_remove_news_updated_at', '2024-07-22 00:45:18.609008'),
(21, 'webstaida', '0003_alter_news_image', '2024-07-22 00:51:49.107397'),
(22, 'webstaida', '0004_alter_news_image', '2024-07-22 00:58:34.739478'),
(23, 'webstaida', '0005_news_created_at_news_updated_at', '2024-07-24 23:52:19.071791'),
(24, 'webstaida', '0006_program_programdetail', '2024-07-27 03:55:09.116561'),
(25, 'webstaida', '0007_rename_programdetail_program_detail', '2024-07-27 03:56:38.916922'),
(26, 'webstaida', '0008_rename_program_detail_programdetail', '2024-07-27 04:13:53.379174'),
(27, 'webstaida', '0009_journal', '2024-07-27 08:54:07.291208');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('03yjfe73vo3xr4mhivz036abyjn1bidw', '.eJxVjEEOwiAQRe_C2hAgQMGle89AhplBqoYmpV013t026UK3_733N5FgXWpaO89pJHEVWlx-twz44nYAekJ7TBKntsxjlociT9rlfSJ-307376BCr3ttbWGbVXSlIHFUSgPoiGQyO4vgQ4mgOFCOoYBWXrsheHC7ZFTAwYjPFwZ9OFk:1sX97G:4Ey9kGPhQ7gLP9_nAJH-oFiwXTD5M_veFvAqcBW6WKU', '2024-08-09 00:47:26.442481'),
('1r6hwab8s0u0nj3775c95wokb33v774m', '.eJxVjEEOwiAQRe_C2hAgQMGle89AhplBqoYmpV013t026UK3_733N5FgXWpaO89pJHEVWlx-twz44nYAekJ7TBKntsxjlociT9rlfSJ-307376BCr3ttbWGbVXSlIHFUSgPoiGQyO4vgQ4mgOFCOoYBWXrsheHC7ZFTAwYjPFwZ9OFk:1sWr01:HPdTIpevAtL5tg1vWoxyHBBycgYYItcVfvmuZxFSyWM', '2024-08-08 05:26:45.320314'),
('2ombuhgurgyijcfpd1zu3b2xfb02v1sj', '.eJxVjEEOwiAQRe_C2hAgQMGle89AhplBqoYmpV013t026UK3_733N5FgXWpaO89pJHEVWlx-twz44nYAekJ7TBKntsxjlociT9rlfSJ-307376BCr3ttbWGbVXSlIHFUSgPoiGQyO4vgQ4mgOFCOoYBWXrsheHC7ZFTAwYjPFwZ9OFk:1sVhDY:CVAMgCYevDSvN2uEguofczu4zbsj6VO57piLqP2tBFk', '2024-08-05 00:47:56.350671'),
('55uwc2jud9q108f55zqzlvszck6iiu1y', '.eJxVjEEOwiAQRe_C2hAgQMGle89AhplBqoYmpV013t026UK3_733N5FgXWpaO89pJHEVWlx-twz44nYAekJ7TBKntsxjlociT9rlfSJ-307376BCr3ttbWGbVXSlIHFUSgPoiGQyO4vgQ4mgOFCOoYBWXrsheHC7ZFTAwYjPFwZ9OFk:1sVmSU:-TgTjvGI54nFR7trocz5Lvsvl8bjvK_pYDM3IGv1a04', '2024-08-05 06:23:42.164857'),
('c5v3rovqyv762g82mjpo5f4tzmeewmd0', '.eJxVjEEOwiAQRe_C2hAgQMGle89AhplBqoYmpV013t026UK3_733N5FgXWpaO89pJHEVWlx-twz44nYAekJ7TBKntsxjlociT9rlfSJ-307376BCr3ttbWGbVXSlIHFUSgPoiGQyO4vgQ4mgOFCOoYBWXrsheHC7ZFTAwYjPFwZ9OFk:1sVtIf:SptZlKTjsbYMr5O5VzcqwLysA9ydp6-g1LOJnvYniGc', '2024-08-05 13:42:01.074193'),
('k85892k7yrdcbvviwx1up1kf6t5i940f', '.eJxVjEEOwiAQRe_C2hAgQMGle89AhplBqoYmpV013t026UK3_733N5FgXWpaO89pJHEVWlx-twz44nYAekJ7TBKntsxjlociT9rlfSJ-307376BCr3ttbWGbVXSlIHFUSgPoiGQyO4vgQ4mgOFCOoYBWXrsheHC7ZFTAwYjPFwZ9OFk:1sXJl6:scNr2aq8DmIxDuITzGbIlP2oQG0abSzGHCBwB2jJa5E', '2024-08-09 12:09:16.021966'),
('kyejvk75a9nd795zlidx3pf7yeuqg9r6', '.eJxVjEEOwiAQRe_C2hAgQMGle89AhplBqoYmpV013t026UK3_733N5FgXWpaO89pJHEVWlx-twz44nYAekJ7TBKntsxjlociT9rlfSJ-307376BCr3ttbWGbVXSlIHFUSgPoiGQyO4vgQ4mgOFCOoYBWXrsheHC7ZFTAwYjPFwZ9OFk:1sWlmh:8gb2VBwmJAwLc6Sz7_xpRKnrIQwbi0s-e3DSvp-3WIA', '2024-08-07 23:52:39.292107'),
('ycb9i50496th8zumgnoljm5b4p2n8by7', '.eJxVjEEOwiAQRe_C2hAgQMGle89AhplBqoYmpV013t026UK3_733N5FgXWpaO89pJHEVWlx-twz44nYAekJ7TBKntsxjlociT9rlfSJ-307376BCr3ttbWGbVXSlIHFUSgPoiGQyO4vgQ4mgOFCOoYBWXrsheHC7ZFTAwYjPFwZ9OFk:1sXYYj:rfOdUHgcQ54NQqNk9ytEugJ_o_oYuK0m9QlPbPtWOoI', '2024-08-10 03:57:29.280434');

-- --------------------------------------------------------

--
-- Table structure for table `webstaida_journal`
--

CREATE TABLE `webstaida_journal` (
  `id` bigint NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webstaida_journal`
--

INSERT INTO `webstaida_journal` (`id`, `title`, `description`, `image`) VALUES
(1, 'test 1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae voluptatibus quis facere rerum soluta pariatur.', 'static/img/journal/3675aa76-6783-49e6-bf82-92c04f96e1c2.jpg'),
(2, 'test 2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae voluptatibus quis facere rerum soluta pariatur.', 'static/img/journal/91204957-17d8-42e7-bd74-98f380492e18.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `webstaida_news`
--

CREATE TABLE `webstaida_news` (
  `id` bigint NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webstaida_news`
--

INSERT INTO `webstaida_news` (`id`, `title`, `sub_title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(4, 'Stadium General STAI Darussalam Sumatera Selatan Mengawali tahun Akademik 2023/2024', 'Stadium General STAI Darussalam Sumatera Selatan Mengawali tahun Akademik 2023/2024', 'Sebagai tradisi di lingkungan perguruan tinggi, STAI Darussalam Sumatera Selatan menyelenggarakan Stadium General di awal tahun akademik 2023/2024. Pada kesempatan ini, stadium general mengangkat tema “Peluang dan Tantangan perekonomian di era society 5.0” dengan narasumber Prof. Maya Panorama, S.E., M.Si., Ph.D (Guru Besar UIN Raden Fatah Palembang).\r\n\r\nAcara ini dihadiri oleh Camat Kecamatan Lempuing, Kepala Sekolah SMA/SMK se-kecamatan Lempuing, Asosiasi Forum Pesantren dan Kepala Lembaga-Lembaga otonom PCNU Kabupaten OKI.\r\n\r\nDalam sambutannya, Pengasuh Pondok Pesantren Darussalam Tugumulyo, KH Nurhadi Hizbulloh, S.Pd.I., M.M Menyampaikan bahwa mahasiswa harus semangat dan percayA untuk mempersiapkan diri menghadapi lingkungan sudah berbeda jauh dari sebelumnya. Tentunya dalam menghadapinya perlu wawasan, keterampilan, dan kecerdasan umum dan religius. \r\n\r\nAcara yang bertempat di Halaman Kampus ini menjadi lebih menarik ketika narasumber menyampaikan materi yang sangat relevan dengan kondisi saat ini. Sebelum memahami tantangan dan peluang di era saat ini, kita perlu memahami di generasi apakah kita? Dan bagaimana kita beradaptasi dengan lingkungan yang serba digital dan fleksibel ini. Beliau juga menambahkan, bahwa focus pada era society ini adalah pada pengembangan sumber daya manusia, dimana harapannya adalah mampu beradaptasi dan memanfaatkan setiap peluang yang ada. Pungkasnya.', 'static/img/news/c47b3b36-2757-4339-804e-4e5e5e232258.jpg', '2024-07-24 23:52:18.703867', '2024-07-24 23:52:19.017851'),
(5, 'Kuliah Kerja Lapangan STAI Darussalam Sumatera selatan: Menambah Wawasan dan pengalaman', 'Mahasiswa Ekonomi Syariah dan perbankan Syariah melaksanakan kegiatan Kuliah Kerja Lapangan yang dilaksanakan selama', 'Mahasiswa Ekonomi Syariah dan perbankan Syariah melaksanakan kegiatan Kuliah Kerja Lapangan yang dilaksanakan selama 7 hari di beberapa kota, yaitu Purbalingga, Banyuwangi, Malang, Surabaya dan Yogyakarta \r\n\r\nKegiatan ini diikuti oleh 96 mahasiswa dengan mengunjungi PT Nippon Indosari Corpindo, Purbalingga, Industri sepatu Bigstoffle, Surabaya dan Coklat Monggo Yogyakarta. Tidak hanya mengunjungi industry.\r\n\r\nDalam kunjungan industry ini, mahasiswa mendapatkan pengalaman yang sangat berharga tentang manajemen perusahaan baik perusahaan skala besar seperti produsen roti terkemuka yaitu Sari ROTI maupun UMKM yaitu produsen sepatu kulit Bigstoffle\r\n\r\n\r\nDi sela perjalanan, rombongan juga melakukan perjalan religi ke beberapa makan ulama, yaitu makam sunan Raden Rahmat/Ampel Surabaya, makam KH. Abdurrahman Wahid di Jombang. Makam KH. Mukhtar Syafaat di Banyuwangi dan makam Syaikh Kholil Bangkalan, Madura.', 'static/img/news/bd52ce74-64ff-4fef-b588-b95ed9b8283c.jpg', '2024-07-24 23:52:18.703867', '2024-07-24 23:52:19.017851'),
(7, 'Stadium General STAI Darussalam Sumatera Selatan Mengawali tahun Akademik 2023/2024', 'Stadium General STAI Darussalam Sumatera Selatan Mengawali tahun Akademik 2023/2024', 'Sebagai tradisi di lingkungan perguruan tinggi, STAI Darussalam Sumatera Selatan menyelenggarakan Stadium General di awal tahun akademik 2023/2024. Pada kesempatan ini, stadium general mengangkat tema “Peluang dan Tantangan perekonomian di era society 5.0” dengan narasumber Prof. Maya Panorama, S.E., M.Si., Ph.D (Guru Besar UIN Raden Fatah Palembang).\r\n\r\nAcara ini dihadiri oleh Camat Kecamatan Lempuing, Kepala Sekolah SMA/SMK se-kecamatan Lempuing, Asosiasi Forum Pesantren dan Kepala Lembaga-Lembaga otonom PCNU Kabupaten OKI.\r\n\r\nDalam sambutannya, Pengasuh Pondok Pesantren Darussalam Tugumulyo, KH Nurhadi Hizbulloh, S.Pd.I., M.M Menyampaikan bahwa mahasiswa harus semangat dan percayA untuk mempersiapkan diri menghadapi lingkungan sudah berbeda jauh dari sebelumnya. Tentunya dalam menghadapinya perlu wawasan, keterampilan, dan kecerdasan umum dan religius. \r\n\r\nAcara yang bertempat di Halaman Kampus ini menjadi lebih menarik ketika narasumber menyampaikan materi yang sangat relevan dengan kondisi saat ini. Sebelum memahami tantangan dan peluang di era saat ini, kita perlu memahami di generasi apakah kita? Dan bagaimana kita beradaptasi dengan lingkungan yang serba digital dan fleksibel ini. Beliau juga menambahkan, bahwa focus pada era society ini adalah pada pengembangan sumber daya manusia, dimana harapannya adalah mampu beradaptasi dan memanfaatkan setiap peluang yang ada. Pungkasnya.', 'static/img/news/63caebb5-54ec-4bfb-a749-304f5741b455.jpg', '2024-07-25 05:28:30.049168', '2024-07-25 05:28:30.049211'),
(8, 'Kuliah Kerja Lapangan STAI Darussalam Sumatera selatan: Menambah Wawasan dan pengalaman', 'Mahasiswa Ekonomi Syariah dan perbankan Syariah melaksanakan kegiatan Kuliah Kerja Lapangan yang dilaksanakan selama', 'Mahasiswa Ekonomi Syariah dan perbankan Syariah melaksanakan kegiatan Kuliah Kerja Lapangan yang dilaksanakan selama 7 hari di beberapa kota, yaitu Purbalingga, Banyuwangi, Malang, Surabaya dan Yogyakarta \r\n\r\nKegiatan ini diikuti oleh 96 mahasiswa dengan mengunjungi PT Nippon Indosari Corpindo, Purbalingga, Industri sepatu Bigstoffle, Surabaya dan Coklat Monggo Yogyakarta. Tidak hanya mengunjungi industry.\r\n\r\nDalam kunjungan industry ini, mahasiswa mendapatkan pengalaman yang sangat berharga tentang manajemen perusahaan baik perusahaan skala besar seperti produsen roti terkemuka yaitu Sari ROTI maupun UMKM yaitu produsen sepatu kulit Bigstoffle\r\n\r\n\r\nDi sela perjalanan, rombongan juga melakukan perjalan religi ke beberapa makan ulama, yaitu makam sunan Raden Rahmat/Ampel Surabaya, makam KH. Abdurrahman Wahid di Jombang. Makam KH. Mukhtar Syafaat di Banyuwangi dan makam Syaikh Kholil Bangkalan, Madura.', 'static/img/news/c6e3010e-0004-470b-8e00-226fa3548b85.jpg', '2024-07-25 05:29:10.349116', '2024-07-25 05:29:10.349153');

-- --------------------------------------------------------

--
-- Table structure for table `webstaida_program`
--

CREATE TABLE `webstaida_program` (
  `id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webstaida_program`
--

INSERT INTO `webstaida_program` (`id`, `name`, `icon`) VALUES
(1, 'ekonomi', 'fa-solid fa-scale-balanced'),
(2, 'perbankan', 'fa-solid fa-landmark'),
(3, 'pendidikan agama islam', 'fa-solid fa-book-quran'),
(4, 'manajemen pendidikan islam', 'fa-solid fa-mosque'),
(5, 'bahasa inggris', 'fa-solid fa-globe'),
(6, 'bahasa indonesia', 'fa-solid fa-earth-americas');

-- --------------------------------------------------------

--
-- Table structure for table `webstaida_programdetail`
--

CREATE TABLE `webstaida_programdetail` (
  `id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `program_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `webstaida_programdetail`
--

INSERT INTO `webstaida_programdetail` (`id`, `name`, `description`, `program_id`) VALUES
(1, 'test 2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae voluptatibus quis facere rerum soluta pariatur.', 1),
(2, 'test 1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae voluptatibus quis facere rerum soluta pariatur.', 1),
(3, 'test 3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae voluptatibus quis facere rerum soluta pariatur.', 1);

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `webstaida_journal`
--
ALTER TABLE `webstaida_journal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webstaida_news`
--
ALTER TABLE `webstaida_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webstaida_program`
--
ALTER TABLE `webstaida_program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webstaida_programdetail`
--
ALTER TABLE `webstaida_programdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `webstaida_programdet_program_id_5000e047_fk_webstaida` (`program_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `webstaida_journal`
--
ALTER TABLE `webstaida_journal`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `webstaida_news`
--
ALTER TABLE `webstaida_news`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `webstaida_program`
--
ALTER TABLE `webstaida_program`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `webstaida_programdetail`
--
ALTER TABLE `webstaida_programdetail`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `webstaida_programdetail`
--
ALTER TABLE `webstaida_programdetail`
  ADD CONSTRAINT `webstaida_programdet_program_id_5000e047_fk_webstaida` FOREIGN KEY (`program_id`) REFERENCES `webstaida_program` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
