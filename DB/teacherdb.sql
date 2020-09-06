-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 06, 2020 at 12:55 PM
-- Server version: 10.5.4-MariaDB-log
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teacherdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `acceptance_terms`
--

CREATE TABLE `acceptance_terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `edu_types`
--

CREATE TABLE `edu_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `facility_translations`
--

CREATE TABLE `facility_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facility_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_08_31_130136_create_cities_table', 1),
(5, '2020_08_31_130144_create_contacts_table', 1),
(6, '2020_08_31_130152_create_countries_table', 1),
(7, '2020_08_31_130234_create_notifications_table', 1),
(8, '2020_08_31_130257_create_settings_table', 1),
(9, '2020_08_31_132533_laratrust_setup_tables', 1),
(10, '2020_08_31_152611_create_banners_table', 1),
(11, '2020_08_31_152731_create_schools_table', 1),
(12, '2020_08_31_152801_create_teachers_table', 1),
(13, '2020_08_31_152823_create_parents_table', 1),
(14, '2020_08_31_152843_create_students_table', 1),
(15, '2020_08_31_152904_create_reservations_table', 1),
(16, '2020_08_31_152926_create_subjects_table', 1),
(17, '2020_08_31_153148_create_packages_table', 1),
(18, '2020_08_31_153221_create_facilities_table', 1),
(19, '2020_09_01_142547_create_grades_table', 1),
(20, '2020_09_01_142559_create_sub_grades_table', 1),
(21, '2020_09_01_142917_create_discounts_table', 1),
(22, '2020_09_01_143107_create_qualifications_table', 1),
(23, '2020_09_01_143428_create_rates_table', 1),
(24, '2020_09_01_144200_create_edu_types_table', 1),
(25, '2020_09_01_144504_create_payment_methods_table', 1),
(26, '2020_09_01_144623_create_acceptance_terms_table', 1),
(27, '2020_09_02_115720_create_genders_table', 1),
(28, '2020_09_06_123919_create_facility_translations_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'create_banners', 'Create Banners', 'Create Banners', '2020-09-06 09:54:39', '2020-09-06 09:54:39'),
(2, 'read_banners', 'Read Banners', 'Read Banners', '2020-09-06 09:54:39', '2020-09-06 09:54:39'),
(3, 'update_banners', 'Update Banners', 'Update Banners', '2020-09-06 09:54:39', '2020-09-06 09:54:39'),
(4, 'delete_banners', 'Delete Banners', 'Delete Banners', '2020-09-06 09:54:39', '2020-09-06 09:54:39'),
(5, 'create_schools', 'Create Schools', 'Create Schools', '2020-09-06 09:54:39', '2020-09-06 09:54:39'),
(6, 'read_schools', 'Read Schools', 'Read Schools', '2020-09-06 09:54:39', '2020-09-06 09:54:39'),
(7, 'update_schools', 'Update Schools', 'Update Schools', '2020-09-06 09:54:39', '2020-09-06 09:54:39'),
(8, 'delete_schools', 'Delete Schools', 'Delete Schools', '2020-09-06 09:54:39', '2020-09-06 09:54:39'),
(9, 'create_teachers', 'Create Teachers', 'Create Teachers', '2020-09-06 09:54:39', '2020-09-06 09:54:39'),
(10, 'read_teachers', 'Read Teachers', 'Read Teachers', '2020-09-06 09:54:39', '2020-09-06 09:54:39'),
(11, 'update_teachers', 'Update Teachers', 'Update Teachers', '2020-09-06 09:54:39', '2020-09-06 09:54:39'),
(12, 'delete_teachers', 'Delete Teachers', 'Delete Teachers', '2020-09-06 09:54:39', '2020-09-06 09:54:39'),
(13, 'create_parents', 'Create Parents', 'Create Parents', '2020-09-06 09:54:39', '2020-09-06 09:54:39'),
(14, 'read_parents', 'Read Parents', 'Read Parents', '2020-09-06 09:54:39', '2020-09-06 09:54:39'),
(15, 'update_parents', 'Update Parents', 'Update Parents', '2020-09-06 09:54:39', '2020-09-06 09:54:39'),
(16, 'delete_parents', 'Delete Parents', 'Delete Parents', '2020-09-06 09:54:39', '2020-09-06 09:54:39'),
(17, 'create_students', 'Create Students', 'Create Students', '2020-09-06 09:54:39', '2020-09-06 09:54:39'),
(18, 'read_students', 'Read Students', 'Read Students', '2020-09-06 09:54:39', '2020-09-06 09:54:39'),
(19, 'update_students', 'Update Students', 'Update Students', '2020-09-06 09:54:39', '2020-09-06 09:54:39'),
(20, 'delete_students', 'Delete Students', 'Delete Students', '2020-09-06 09:54:39', '2020-09-06 09:54:39'),
(21, 'create_reservations', 'Create Reservations', 'Create Reservations', '2020-09-06 09:54:39', '2020-09-06 09:54:39'),
(22, 'read_reservations', 'Read Reservations', 'Read Reservations', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(23, 'update_reservations', 'Update Reservations', 'Update Reservations', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(24, 'delete_reservations', 'Delete Reservations', 'Delete Reservations', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(25, 'create_subjects', 'Create Subjects', 'Create Subjects', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(26, 'read_subjects', 'Read Subjects', 'Read Subjects', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(27, 'update_subjects', 'Update Subjects', 'Update Subjects', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(28, 'delete_subjects', 'Delete Subjects', 'Delete Subjects', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(29, 'create_packages', 'Create Packages', 'Create Packages', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(30, 'read_packages', 'Read Packages', 'Read Packages', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(31, 'update_packages', 'Update Packages', 'Update Packages', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(32, 'delete_packages', 'Delete Packages', 'Delete Packages', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(33, 'create_notifications', 'Create Notifications', 'Create Notifications', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(34, 'read_notifications', 'Read Notifications', 'Read Notifications', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(35, 'update_notifications', 'Update Notifications', 'Update Notifications', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(36, 'delete_notifications', 'Delete Notifications', 'Delete Notifications', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(37, 'create_contacts', 'Create Contacts', 'Create Contacts', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(38, 'read_contacts', 'Read Contacts', 'Read Contacts', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(39, 'update_contacts', 'Update Contacts', 'Update Contacts', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(40, 'delete_contacts', 'Delete Contacts', 'Delete Contacts', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(41, 'create_facilities', 'Create Facilities', 'Create Facilities', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(42, 'read_facilities', 'Read Facilities', 'Read Facilities', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(43, 'update_facilities', 'Update Facilities', 'Update Facilities', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(44, 'delete_facilities', 'Delete Facilities', 'Delete Facilities', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(45, 'create_grades', 'Create Grades', 'Create Grades', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(46, 'read_grades', 'Read Grades', 'Read Grades', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(47, 'update_grades', 'Update Grades', 'Update Grades', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(48, 'delete_grades', 'Delete Grades', 'Delete Grades', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(49, 'create_sub_grades', 'Create Sub_grades', 'Create Sub_grades', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(50, 'read_sub_grades', 'Read Sub_grades', 'Read Sub_grades', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(51, 'update_sub_grades', 'Update Sub_grades', 'Update Sub_grades', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(52, 'delete_sub_grades', 'Delete Sub_grades', 'Delete Sub_grades', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(53, 'create_countries', 'Create Countries', 'Create Countries', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(54, 'read_countries', 'Read Countries', 'Read Countries', '2020-09-06 09:54:40', '2020-09-06 09:54:40'),
(55, 'update_countries', 'Update Countries', 'Update Countries', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(56, 'delete_countries', 'Delete Countries', 'Delete Countries', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(57, 'create_cities', 'Create Cities', 'Create Cities', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(58, 'read_cities', 'Read Cities', 'Read Cities', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(59, 'update_cities', 'Update Cities', 'Update Cities', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(60, 'delete_cities', 'Delete Cities', 'Delete Cities', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(61, 'create_payment_methods', 'Create Payment_methods', 'Create Payment_methods', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(62, 'read_payment_methods', 'Read Payment_methods', 'Read Payment_methods', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(63, 'update_payment_methods', 'Update Payment_methods', 'Update Payment_methods', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(64, 'delete_payment_methods', 'Delete Payment_methods', 'Delete Payment_methods', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(65, 'create_edu_types', 'Create Edu_types', 'Create Edu_types', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(66, 'read_edu_types', 'Read Edu_types', 'Read Edu_types', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(67, 'update_edu_types', 'Update Edu_types', 'Update Edu_types', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(68, 'delete_edu_types', 'Delete Edu_types', 'Delete Edu_types', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(69, 'create_discounts', 'Create Discounts', 'Create Discounts', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(70, 'read_discounts', 'Read Discounts', 'Read Discounts', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(71, 'update_discounts', 'Update Discounts', 'Update Discounts', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(72, 'delete_discounts', 'Delete Discounts', 'Delete Discounts', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(73, 'create_acceptance_terms', 'Create Acceptance_terms', 'Create Acceptance_terms', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(74, 'read_acceptance_terms', 'Read Acceptance_terms', 'Read Acceptance_terms', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(75, 'update_acceptance_terms', 'Update Acceptance_terms', 'Update Acceptance_terms', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(76, 'delete_acceptance_terms', 'Delete Acceptance_terms', 'Delete Acceptance_terms', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(77, 'create_rates', 'Create Rates', 'Create Rates', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(78, 'read_rates', 'Read Rates', 'Read Rates', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(79, 'update_rates', 'Update Rates', 'Update Rates', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(80, 'delete_rates', 'Delete Rates', 'Delete Rates', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(81, 'create_qualifications', 'Create Qualifications', 'Create Qualifications', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(82, 'read_qualifications', 'Read Qualifications', 'Read Qualifications', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(83, 'update_qualifications', 'Update Qualifications', 'Update Qualifications', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(84, 'delete_qualifications', 'Delete Qualifications', 'Delete Qualifications', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(85, 'create_users', 'Create Users', 'Create Users', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(86, 'read_users', 'Read Users', 'Read Users', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(87, 'update_users', 'Update Users', 'Update Users', '2020-09-06 09:54:41', '2020-09-06 09:54:41'),
(88, 'delete_users', 'Delete Users', 'Delete Users', '2020-09-06 09:54:42', '2020-09-06 09:54:42'),
(89, 'create_roles', 'Create Roles', 'Create Roles', '2020-09-06 09:54:42', '2020-09-06 09:54:42'),
(90, 'read_roles', 'Read Roles', 'Read Roles', '2020-09-06 09:54:42', '2020-09-06 09:54:42'),
(91, 'update_roles', 'Update Roles', 'Update Roles', '2020-09-06 09:54:42', '2020-09-06 09:54:42'),
(92, 'delete_roles', 'Delete Roles', 'Delete Roles', '2020-09-06 09:54:42', '2020-09-06 09:54:42'),
(93, 'create_settings', 'Create Settings', 'Create Settings', '2020-09-06 09:54:42', '2020-09-06 09:54:42'),
(94, 'read_settings', 'Read Settings', 'Read Settings', '2020-09-06 09:54:42', '2020-09-06 09:54:42'),
(95, 'update_settings', 'Update Settings', 'Update Settings', '2020-09-06 09:54:42', '2020-09-06 09:54:42'),
(96, 'delete_settings', 'Delete Settings', 'Delete Settings', '2020-09-06 09:54:42', '2020-09-06 09:54:42');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qualifications`
--

CREATE TABLE `qualifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'Super Admin', 'Super Admin', '2020-09-06 09:54:39', '2020-09-06 09:54:39'),
(2, 'admin', 'Admin', 'Admin', '2020-09-06 09:54:44', '2020-09-06 09:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_grades`
--

CREATE TABLE `sub_grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'super', 'super@admin.com', NULL, '$2y$10$aTnjDThW7BAp91K5vyRCrup/vXMqorQ4U93MNAbMiW.cpJlGArgse', NULL, '2020-09-05 21:00:00', '2020-09-05 21:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acceptance_terms`
--
ALTER TABLE `acceptance_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edu_types`
--
ALTER TABLE `edu_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facility_translations`
--
ALTER TABLE `facility_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `facility_translations_facility_id_locale_unique` (`facility_id`,`locale`),
  ADD KEY `facility_translations_locale_index` (`locale`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_grades`
--
ALTER TABLE `sub_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acceptance_terms`
--
ALTER TABLE `acceptance_terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `edu_types`
--
ALTER TABLE `edu_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `facility_translations`
--
ALTER TABLE `facility_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `qualifications`
--
ALTER TABLE `qualifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_grades`
--
ALTER TABLE `sub_grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
