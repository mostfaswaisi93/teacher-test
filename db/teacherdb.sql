-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 01, 2020 at 12:43 PM
-- Server version: 10.5.4-MariaDB-log
-- PHP Version: 7.4.10

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
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner_translations`
--

CREATE TABLE `banner_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `country_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `city_translations`
--

CREATE TABLE `city_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `constants`
--

CREATE TABLE `constants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `constant_translations`
--

CREATE TABLE `constant_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `constant_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `readable` int(11) NOT NULL DEFAULT 0,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `phone_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country_translations`
--

CREATE TABLE `country_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_translations`
--

CREATE TABLE `discount_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
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
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `created_at`, `updated_at`) VALUES
(1, '2020-10-01 08:48:25', '2020-10-01 08:48:25'),
(2, '2020-10-01 08:48:25', '2020-10-01 08:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `gender_translations`
--

CREATE TABLE `gender_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gender_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gender_translations`
--

INSERT INTO `gender_translations` (`id`, `gender_id`, `name`, `locale`) VALUES
(1, 1, 'ذكر', 'ar'),
(2, 1, 'Male', 'en'),
(3, 2, 'أنثى', 'ar'),
(4, 2, 'Female', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade_translations`
--

CREATE TABLE `grade_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `grade_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
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
(9, '2020_08_31_152611_create_banners_table', 1),
(10, '2020_08_31_152731_create_schools_table', 1),
(11, '2020_08_31_152801_create_teachers_table', 1),
(12, '2020_08_31_152823_create_parents_table', 1),
(13, '2020_08_31_152843_create_students_table', 1),
(14, '2020_08_31_152904_create_reservations_table', 1),
(15, '2020_08_31_152926_create_subjects_table', 1),
(16, '2020_08_31_153148_create_packages_table', 1),
(17, '2020_08_31_153221_create_facilities_table', 1),
(18, '2020_09_01_142547_create_grades_table', 1),
(19, '2020_09_01_142559_create_sub_grades_table', 1),
(20, '2020_09_01_142917_create_discounts_table', 1),
(21, '2020_09_01_143107_create_qualifications_table', 1),
(22, '2020_09_01_143428_create_rates_table', 1),
(23, '2020_09_01_144200_create_edu_types_table', 1),
(24, '2020_09_01_144504_create_payment_methods_table', 1),
(25, '2020_09_01_144623_create_acceptance_terms_table', 1),
(26, '2020_09_02_115720_create_genders_table', 1),
(27, '2020_09_06_123919_create_facility_translations_table', 1),
(28, '2020_09_10_133544_create_constants_table', 1),
(29, '2020_09_12_111517_create_grade_translations_table', 1),
(30, '2020_09_12_111941_create_sub_grade_translations_table', 1),
(31, '2020_09_12_112459_create_country_translations_table', 1),
(32, '2020_09_12_112512_create_city_translations_table', 1),
(33, '2020_09_12_113307_create_banner_translations_table', 1),
(34, '2020_09_12_113453_create_school_translations_table', 1),
(35, '2020_09_12_113516_create_teacher_translations_table', 1),
(36, '2020_09_12_113538_create_student_translations_table', 1),
(37, '2020_09_13_161843_create_discount_translations_table', 1),
(38, '2020_09_13_162047_create_gender_translations_table', 1),
(39, '2020_09_13_162101_create_package_translations_table', 1),
(40, '2020_09_13_162121_create_subject_translations_table', 1),
(41, '2020_09_13_162143_create_rate_translations_table', 1),
(42, '2020_09_15_162135_create_constant_translations_table', 1),
(43, '2020_10_01_105640_laratrust_setup_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
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
  `active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `package_translations`
--

CREATE TABLE `package_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
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
(1, 'banners_create', 'Create Banners', 'Create Banners', '2020-10-01 08:48:19', '2020-10-01 08:48:19'),
(2, 'banners_read', 'Read Banners', 'Read Banners', '2020-10-01 08:48:19', '2020-10-01 08:48:19'),
(3, 'banners_update', 'Update Banners', 'Update Banners', '2020-10-01 08:48:19', '2020-10-01 08:48:19'),
(4, 'banners_delete', 'Delete Banners', 'Delete Banners', '2020-10-01 08:48:19', '2020-10-01 08:48:19'),
(5, 'schools_create', 'Create Schools', 'Create Schools', '2020-10-01 08:48:19', '2020-10-01 08:48:19'),
(6, 'schools_read', 'Read Schools', 'Read Schools', '2020-10-01 08:48:19', '2020-10-01 08:48:19'),
(7, 'schools_update', 'Update Schools', 'Update Schools', '2020-10-01 08:48:19', '2020-10-01 08:48:19'),
(8, 'schools_delete', 'Delete Schools', 'Delete Schools', '2020-10-01 08:48:19', '2020-10-01 08:48:19'),
(9, 'teachers_create', 'Create Teachers', 'Create Teachers', '2020-10-01 08:48:19', '2020-10-01 08:48:19'),
(10, 'teachers_read', 'Read Teachers', 'Read Teachers', '2020-10-01 08:48:19', '2020-10-01 08:48:19'),
(11, 'teachers_update', 'Update Teachers', 'Update Teachers', '2020-10-01 08:48:19', '2020-10-01 08:48:19'),
(12, 'teachers_delete', 'Delete Teachers', 'Delete Teachers', '2020-10-01 08:48:19', '2020-10-01 08:48:19'),
(13, 'parents_create', 'Create Parents', 'Create Parents', '2020-10-01 08:48:19', '2020-10-01 08:48:19'),
(14, 'parents_read', 'Read Parents', 'Read Parents', '2020-10-01 08:48:19', '2020-10-01 08:48:19'),
(15, 'parents_update', 'Update Parents', 'Update Parents', '2020-10-01 08:48:19', '2020-10-01 08:48:19'),
(16, 'parents_delete', 'Delete Parents', 'Delete Parents', '2020-10-01 08:48:19', '2020-10-01 08:48:19'),
(17, 'students_create', 'Create Students', 'Create Students', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(18, 'students_read', 'Read Students', 'Read Students', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(19, 'students_update', 'Update Students', 'Update Students', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(20, 'students_delete', 'Delete Students', 'Delete Students', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(21, 'reservations_create', 'Create Reservations', 'Create Reservations', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(22, 'reservations_read', 'Read Reservations', 'Read Reservations', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(23, 'reservations_update', 'Update Reservations', 'Update Reservations', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(24, 'reservations_delete', 'Delete Reservations', 'Delete Reservations', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(25, 'subjects_create', 'Create Subjects', 'Create Subjects', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(26, 'subjects_read', 'Read Subjects', 'Read Subjects', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(27, 'subjects_update', 'Update Subjects', 'Update Subjects', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(28, 'subjects_delete', 'Delete Subjects', 'Delete Subjects', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(29, 'packages_create', 'Create Packages', 'Create Packages', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(30, 'packages_read', 'Read Packages', 'Read Packages', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(31, 'packages_update', 'Update Packages', 'Update Packages', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(32, 'packages_delete', 'Delete Packages', 'Delete Packages', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(33, 'notifications_create', 'Create Notifications', 'Create Notifications', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(34, 'notifications_read', 'Read Notifications', 'Read Notifications', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(35, 'notifications_update', 'Update Notifications', 'Update Notifications', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(36, 'notifications_delete', 'Delete Notifications', 'Delete Notifications', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(37, 'contacts_create', 'Create Contacts', 'Create Contacts', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(38, 'contacts_read', 'Read Contacts', 'Read Contacts', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(39, 'contacts_update', 'Update Contacts', 'Update Contacts', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(40, 'contacts_delete', 'Delete Contacts', 'Delete Contacts', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(41, 'facilities_create', 'Create Facilities', 'Create Facilities', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(42, 'facilities_read', 'Read Facilities', 'Read Facilities', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(43, 'facilities_update', 'Update Facilities', 'Update Facilities', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(44, 'facilities_delete', 'Delete Facilities', 'Delete Facilities', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(45, 'grades_create', 'Create Grades', 'Create Grades', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(46, 'grades_read', 'Read Grades', 'Read Grades', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(47, 'grades_update', 'Update Grades', 'Update Grades', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(48, 'grades_delete', 'Delete Grades', 'Delete Grades', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(49, 'sub_grades_create', 'Create Sub_grades', 'Create Sub_grades', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(50, 'sub_grades_read', 'Read Sub_grades', 'Read Sub_grades', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(51, 'sub_grades_update', 'Update Sub_grades', 'Update Sub_grades', '2020-10-01 08:48:20', '2020-10-01 08:48:20'),
(52, 'sub_grades_delete', 'Delete Sub_grades', 'Delete Sub_grades', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(53, 'countries_create', 'Create Countries', 'Create Countries', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(54, 'countries_read', 'Read Countries', 'Read Countries', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(55, 'countries_update', 'Update Countries', 'Update Countries', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(56, 'countries_delete', 'Delete Countries', 'Delete Countries', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(57, 'cities_create', 'Create Cities', 'Create Cities', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(58, 'cities_read', 'Read Cities', 'Read Cities', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(59, 'cities_update', 'Update Cities', 'Update Cities', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(60, 'cities_delete', 'Delete Cities', 'Delete Cities', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(61, 'payment_methods_create', 'Create Payment_methods', 'Create Payment_methods', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(62, 'payment_methods_read', 'Read Payment_methods', 'Read Payment_methods', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(63, 'payment_methods_update', 'Update Payment_methods', 'Update Payment_methods', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(64, 'payment_methods_delete', 'Delete Payment_methods', 'Delete Payment_methods', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(65, 'edu_types_create', 'Create Edu_types', 'Create Edu_types', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(66, 'edu_types_read', 'Read Edu_types', 'Read Edu_types', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(67, 'edu_types_update', 'Update Edu_types', 'Update Edu_types', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(68, 'edu_types_delete', 'Delete Edu_types', 'Delete Edu_types', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(69, 'discounts_create', 'Create Discounts', 'Create Discounts', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(70, 'discounts_read', 'Read Discounts', 'Read Discounts', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(71, 'discounts_update', 'Update Discounts', 'Update Discounts', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(72, 'discounts_delete', 'Delete Discounts', 'Delete Discounts', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(73, 'acceptance_terms_create', 'Create Acceptance_terms', 'Create Acceptance_terms', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(74, 'acceptance_terms_read', 'Read Acceptance_terms', 'Read Acceptance_terms', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(75, 'acceptance_terms_update', 'Update Acceptance_terms', 'Update Acceptance_terms', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(76, 'acceptance_terms_delete', 'Delete Acceptance_terms', 'Delete Acceptance_terms', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(77, 'rates_create', 'Create Rates', 'Create Rates', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(78, 'rates_read', 'Read Rates', 'Read Rates', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(79, 'rates_update', 'Update Rates', 'Update Rates', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(80, 'rates_delete', 'Delete Rates', 'Delete Rates', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(81, 'qualifications_create', 'Create Qualifications', 'Create Qualifications', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(82, 'qualifications_read', 'Read Qualifications', 'Read Qualifications', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(83, 'qualifications_update', 'Update Qualifications', 'Update Qualifications', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(84, 'qualifications_delete', 'Delete Qualifications', 'Delete Qualifications', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(85, 'users_create', 'Create Users', 'Create Users', '2020-10-01 08:48:21', '2020-10-01 08:48:21'),
(86, 'users_read', 'Read Users', 'Read Users', '2020-10-01 08:48:22', '2020-10-01 08:48:22'),
(87, 'users_update', 'Update Users', 'Update Users', '2020-10-01 08:48:22', '2020-10-01 08:48:22'),
(88, 'users_delete', 'Delete Users', 'Delete Users', '2020-10-01 08:48:22', '2020-10-01 08:48:22'),
(89, 'roles_create', 'Create Roles', 'Create Roles', '2020-10-01 08:48:22', '2020-10-01 08:48:22'),
(90, 'roles_read', 'Read Roles', 'Read Roles', '2020-10-01 08:48:22', '2020-10-01 08:48:22'),
(91, 'roles_update', 'Update Roles', 'Update Roles', '2020-10-01 08:48:22', '2020-10-01 08:48:22'),
(92, 'roles_delete', 'Delete Roles', 'Delete Roles', '2020-10-01 08:48:22', '2020-10-01 08:48:22'),
(93, 'settings_create', 'Create Settings', 'Create Settings', '2020-10-01 08:48:22', '2020-10-01 08:48:22'),
(94, 'settings_read', 'Read Settings', 'Read Settings', '2020-10-01 08:48:22', '2020-10-01 08:48:22'),
(95, 'settings_update', 'Update Settings', 'Update Settings', '2020-10-01 08:48:22', '2020-10-01 08:48:22'),
(96, 'settings_delete', 'Delete Settings', 'Delete Settings', '2020-10-01 08:48:22', '2020-10-01 08:48:22');

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
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
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
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rate_translations`
--

CREATE TABLE `rate_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
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
(1, 'super_admin', 'Super Admin', 'Super Admin', '2020-10-01 08:48:19', '2020-10-01 08:48:19'),
(2, 'admin', 'Admin', 'Admin', '2020-10-01 08:48:25', '2020-10-01 08:48:25');

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
(1, 1, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school_translations`
--

CREATE TABLE `school_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting_number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
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
  `active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_translations`
--

CREATE TABLE `student_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject_translations`
--

CREATE TABLE `subject_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_grades`
--

CREATE TABLE `sub_grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_grade_translations`
--

CREATE TABLE `sub_grade_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_translations`
--

CREATE TABLE `teacher_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `enabled`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'super', 'super@admin.com', NULL, '$2y$10$VhLeb/uq8aeRAKza04b/7uuKEwuLRwvqiTZvZmtWD0OohnztStEsW', 1, NULL, '2020-10-01 08:48:25', '2020-10-01 08:48:25', NULL);

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
-- Indexes for table `banner_translations`
--
ALTER TABLE `banner_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city_translations`
--
ALTER TABLE `city_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `constants`
--
ALTER TABLE `constants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `constant_translations`
--
ALTER TABLE `constant_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `constant_translations_constant_id_locale_unique` (`constant_id`,`locale`),
  ADD KEY `constant_translations_locale_index` (`locale`);

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
-- Indexes for table `country_translations`
--
ALTER TABLE `country_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_translations`
--
ALTER TABLE `discount_translations`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender_translations`
--
ALTER TABLE `gender_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gender_translations_gender_id_locale_unique` (`gender_id`,`locale`),
  ADD KEY `gender_translations_locale_index` (`locale`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade_translations`
--
ALTER TABLE `grade_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grade_translations_grade_id_locale_unique` (`grade_id`,`locale`),
  ADD KEY `grade_translations_locale_index` (`locale`);

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
-- Indexes for table `package_translations`
--
ALTER TABLE `package_translations`
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
-- Indexes for table `rate_translations`
--
ALTER TABLE `rate_translations`
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
-- Indexes for table `school_translations`
--
ALTER TABLE `school_translations`
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
-- Indexes for table `student_translations`
--
ALTER TABLE `student_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_translations`
--
ALTER TABLE `subject_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_grades`
--
ALTER TABLE `sub_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_grade_translations`
--
ALTER TABLE `sub_grade_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_translations`
--
ALTER TABLE `teacher_translations`
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
-- AUTO_INCREMENT for table `banner_translations`
--
ALTER TABLE `banner_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `city_translations`
--
ALTER TABLE `city_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `constants`
--
ALTER TABLE `constants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `constant_translations`
--
ALTER TABLE `constant_translations`
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
-- AUTO_INCREMENT for table `country_translations`
--
ALTER TABLE `country_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_translations`
--
ALTER TABLE `discount_translations`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gender_translations`
--
ALTER TABLE `gender_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade_translations`
--
ALTER TABLE `grade_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

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
-- AUTO_INCREMENT for table `package_translations`
--
ALTER TABLE `package_translations`
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
-- AUTO_INCREMENT for table `rate_translations`
--
ALTER TABLE `rate_translations`
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
-- AUTO_INCREMENT for table `school_translations`
--
ALTER TABLE `school_translations`
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
-- AUTO_INCREMENT for table `student_translations`
--
ALTER TABLE `student_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject_translations`
--
ALTER TABLE `subject_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_grades`
--
ALTER TABLE `sub_grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_grade_translations`
--
ALTER TABLE `sub_grade_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_translations`
--
ALTER TABLE `teacher_translations`
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
