-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2022 at 03:14 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `motaah`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'تطوير الويب', 1, '2022-05-17 07:17:40', '2022-05-18 06:32:14'),
(2, 'اعمال وخدمات استشارية', -1, '2022-05-17 07:17:40', '2022-05-19 05:38:48'),
(3, '   تصميم صوتيات وفديوهات', -1, '2022-05-17 07:17:41', '2022-05-19 04:38:38'),
(4, '     تسويق الكتروني ومبيعات', 1, '2022-05-17 07:17:41', '2022-05-17 07:17:41');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `duration` double NOT NULL,
  `cost` double NOT NULL,
  `cost_after_taxs` double NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `duration`, `cost`, `cost_after_taxs`, `description`, `is_active`, `file`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 22, 77, 154, 'websitewebsitewebsitewebsitewebsitewebsitewebsitewebsitewebsitewebsitewebsitewebsitewebsite', 1, NULL, 4, 1, '2022-05-17 07:40:57', '2022-05-17 07:40:57'),
(2, 66, 655, 1310, 'reports_projectreports_projectreports_projectreports_projectreports_projectreports_projectv', 1, NULL, 4, 2, '2022-05-17 17:05:50', '2022-05-17 17:05:50'),
(3, 22, 555, 1110, 'laldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedffffffffff', 1, NULL, 4, 5, '2022-05-21 03:30:13', '2022-05-21 03:30:13'),
(4, 55, 555, 1110, '34254524645245343425452464524534342545246452453434254524645245343425452464524534342545246452453434254524645245343425452464524534342545246452453434254524645245343425452464524534342545246452453434254524645245343425452464524534', 1, NULL, 4, 6, '2022-05-21 04:58:33', '2022-05-21 04:58:33'),
(5, 66, 777, 1554, '34254524645245343425452464524534343425452464524534342545246452453425452464524534342545246452453434254524645245343425452464524534342545246452453434254524645245343425452464524534', 1, NULL, 4, 3, '2022-05-21 05:13:45', '2022-05-21 05:15:02');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'بلاؤ', 'afnanalkadasi22@gmail.com', 'نبؤبلاتتتتتتتتتتممممممممةةةةةةةةةةةةةةةةةةةة', '2022-05-20 10:57:16', '2022-05-20 10:57:16'),
(2, 'بلاؤ', 'afnanalkadasi22@gmail.com', 'نبؤبلاتتتتتتتتتتممممممممةةةةةةةةةةةةةةةةةةةة', '2022-05-20 11:00:04', '2022-05-20 11:00:04'),
(3, 'afnan', 'afnancoding@gmail.com', 'user_queryuser_queryuser_queryuser_queryuser_queryuser_queryuser_queryuser_queryuser_queryuser_query', '2022-05-20 11:03:35', '2022-05-20 11:03:35');

-- --------------------------------------------------------

--
-- Table structure for table `evaluations`
--

CREATE TABLE `evaluations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `evaluater_id` bigint(20) UNSIGNED NOT NULL,
  `value` int(11) NOT NULL DEFAULT 0,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `evaluations`
--

INSERT INTO `evaluations` (`id`, `project_id`, `user_id`, `evaluater_id`, `value`, `message`, `created_at`, `updated_at`) VALUES
(1, 3, 4, 10, 4, 'jl', '2022-05-21 05:04:32', '2022-05-21 05:04:32'),
(2, 4, 4, 10, 2, 'kjcxfsdjkf', '2022-05-21 05:06:12', '2022-05-21 05:06:12'),
(3, 4, 4, 10, 2, 'kjcxfsdjkf', '2022-05-21 05:07:01', '2022-05-21 05:07:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `receiver` bigint(20) UNSIGNED NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT 0,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message`, `user_id`, `receiver`, `is_seen`, `file_name`, `file`, `created_at`, `updated_at`) VALUES
(1, 'سلام', 10, 4, 1, NULL, NULL, '2022-06-20 11:03:27', '2022-06-20 11:08:33');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_06_222923_create_transactions_table', 1),
(4, '2018_11_07_192923_create_transfers_table', 1),
(5, '2018_11_15_124230_create_wallets_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2021_11_02_202021_update_wallets_uuid_table', 1),
(9, '2022_04_13_055516_laratrust_setup_tables', 1),
(10, '2022_04_19_171523_create_skills_table', 1),
(11, '2022_04_19_202827_create_categories_table', 1),
(12, '2022_04_22_015528_create_user_skills_table', 1),
(13, '2022_04_22_194934_create_profiles_table', 1),
(14, '2022_04_26_015037_add_google_id_column', 1),
(15, '2022_04_26_184946_add_profile_active_to_hired', 1),
(16, '2022_04_28_091202_create_posts_table', 1),
(17, '2022_04_28_091229_create_post_skills_table', 1),
(18, '2022_04_28_095507_create_comments_table', 1),
(19, '2022_04_28_100846_add_active_to_posts', 1),
(20, '2022_04_28_111054_create_specializations_table', 1),
(21, '2022_04_28_201402_create_works_table', 1),
(22, '2022_04_29_144243_create_work_skills_table', 1),
(24, '2022_05_03_181111_create_reports_table', 1),
(25, '2022_05_04_064831_create_projects_table', 1),
(26, '2022_05_04_184520_add_amount_to_projects', 1),
(27, '2022_05_05_172016_add_limition_to_profiles', 1),
(28, '2022_05_05_172451_add_reseved_to_profiles', 1),
(29, '2022_05_05_181315_add_duration_to_projects', 1),
(30, '2022_05_05_192027_add_post_id_to_projects', 1),
(31, '2022_05_06_075742_add_file_to_projects', 1),
(32, '2022_05_06_095809_add_project_to_report', 1),
(34, '2022_05_08_113951_create_orders_table', 1),
(35, '2022_05_08_160410_add_other_option_to_projects', 1),
(36, '2022_05_11_182756_add_total_amount_to_projects', 1),
(37, '2022_05_12_185220_create_messages_table', 1),
(38, '2022_05_13_054438_add_invoice_to_projects', 1),
(39, '2022_05_13_114857_add_is_onlineto_users_table', 1),
(40, '2022_05_13_114948_add_last_activity_to_users_table', 1),
(41, '2022_05_06_122134_create_evaluations_table', 2),
(42, '2022_05_15_130438_add_evaluater_id_to_evaluations_table', 3),
(43, '2022_05_03_175048_create_notifications_table', 4),
(44, '2022_05_20_130926_create_contacts_table', 5),
(45, '2022_05_17_063124_create_messages_table', 6),
(46, '2022_05_25_084328_add_last_seen_to_users_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('04cca515-f973-4e8b-85b7-0db193ad4145', 'App\\Notifications\\AcceptProjectNotification', 'App\\Models\\User', 10, '{\"name\":\"amalasasasa\",\"project_id\":null,\"project_title\":\"bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb\",\"url\":\"http:\\/\\/localhost:8000\\/myProject#\",\"type\":\"accept_offer\",\"message\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645\\u0623\\u0641\\u0646\\u0627\\u0646 \\u0627\\u0644\\u0642\\u062f\\u0633\\u064a\\u0628\\u0642\\u0628\\u0648\\u0644 \\u0645\\u0634\\u0631\\u0648\\u0639\\u0643 bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb\",\"userId\":10}', NULL, '2022-05-21 05:01:00', '2022-05-21 05:01:00'),
('13c4646c-6d2a-4f10-8b90-985ad63e09d7', 'App\\Notifications\\MarkAsAcceptReceviceNotification', 'App\\Models\\User', 4, '{\"name\":\"\\u0623\\u0641\\u0646\\u0627\\u0646 \\u0627\\u0644\\u0642\\u062f\\u0633\\u064a\",\"project_id\":4,\"project_title\":\"bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb\",\"url\":\"http:\\/\\/localhost:8000\\/user-profile\\/4\",\"type\":\"accept_offer\",\"message\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645\\u0623\\u0641\\u0646\\u0627\\u0646 \\u0627\\u0644\\u0642\\u062f\\u0633\\u064a \\u0628\\u0642\\u0628\\u0648\\u0644  \\u0645\\u0634\\u0631\\u0648\\u0639\\u0643 \\u0627\\u0644\\u0645\\u0633\\u0644\\u0645 bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb\",\"userId\":4}', NULL, '2022-05-21 05:07:08', '2022-05-21 05:07:08'),
('4b06bd2b-9352-427d-ac62-8425f254d93e', 'App\\Notifications\\AcceptOfferNotification', 'App\\Models\\User', 4, '{\"name\":\"amalasasasa\",\"project_id\":3,\"project_title\":\"laldkfl;skdlsewedffffffffff\",\"url\":\"http:\\/\\/localhost:8000\\/confirm-project\\/3\\/10\",\"type\":\"accept_offer\",\"message\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645amalasasasa\\u0628\\u0642\\u0628\\u0648\\u0644 \\u0639\\u0631\\u0636\\u0643 \\u0644\\u0645\\u0634\\u0631\\u0648\\u0639  laldkfl;skdlsewedffffffffff\",\"userId\":4}', NULL, '2022-05-21 03:31:36', '2022-05-21 03:31:36'),
('5159530b-f106-4fc8-9caf-cca142c5291d', 'App\\Notifications\\AcceptOfferNotification', 'App\\Models\\User', 4, '{\"name\":\"amalasasasa\",\"project_id\":4,\"project_title\":\"bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb\",\"url\":\"http:\\/\\/localhost:8000\\/confirm-project\\/4\\/10\",\"type\":\"accept_offer\",\"message\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645amalasasasa\\u0628\\u0642\\u0628\\u0648\\u0644 \\u0639\\u0631\\u0636\\u0643 \\u0644\\u0645\\u0634\\u0631\\u0648\\u0639  bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb\",\"userId\":4}', NULL, '2022-05-21 05:00:25', '2022-05-21 05:00:25'),
('62c9bfc2-b128-4976-b413-77f254f4818a', 'App\\Notifications\\MarkAsDoneNotification', 'App\\Models\\User', 10, '{\"name\":\"\\u0623\\u0641\\u0646\\u0627\\u0646 \\u0627\\u0644\\u0642\\u062f\\u0633\\u064a\",\"project_id\":3,\"project_title\":\"laldkfl;skdlsewedffffffffff\",\"url\":\"http:\\/\\/localhost:8000\\/confirm-receive\\/3\\/4\",\"type\":\"accept_offer\",\"message\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645\\u0623\\u0641\\u0646\\u0627\\u0646 \\u0627\\u0644\\u0642\\u062f\\u0633\\u064a\\u0628\\u062a\\u0633\\u0644\\u064a\\u0645  \\u0645\\u0634\\u0631\\u0648\\u0639\\u0643 laldkfl;skdlsewedffffffffff\",\"userId\":10}', NULL, '2022-05-21 05:04:01', '2022-05-21 05:04:01'),
('6bf21892-208f-401b-9f2f-533482f23ffc', 'App\\Notifications\\MarkAsAcceptReceviceNotification', 'App\\Models\\User', 4, '{\"name\":\"\\u0623\\u0641\\u0646\\u0627\\u0646 \\u0627\\u0644\\u0642\\u062f\\u0633\\u064a\",\"project_id\":3,\"project_title\":\"laldkfl;skdlsewedffffffffff\",\"url\":\"http:\\/\\/localhost:8000\\/user-profile\\/4\",\"type\":\"accept_offer\",\"message\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645\\u0623\\u0641\\u0646\\u0627\\u0646 \\u0627\\u0644\\u0642\\u062f\\u0633\\u064a \\u0628\\u0642\\u0628\\u0648\\u0644  \\u0645\\u0634\\u0631\\u0648\\u0639\\u0643 \\u0627\\u0644\\u0645\\u0633\\u0644\\u0645 laldkfl;skdlsewedffffffffff\",\"userId\":4}', NULL, '2022-05-21 05:04:40', '2022-05-21 05:04:40'),
('715fcd1e-9021-447f-b06f-1c62f589b301', 'App\\Notifications\\AcceptProjectNotification', 'App\\Models\\User', 10, '{\"name\":\"amalasasasa\",\"project_id\":null,\"project_title\":\"laldkfl;skdlsewedffffffffff\",\"url\":\"http:\\/\\/localhost:8000\\/myProject#\",\"type\":\"accept_offer\",\"message\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645\\u0623\\u0641\\u0646\\u0627\\u0646 \\u0627\\u0644\\u0642\\u062f\\u0633\\u064a\\u0628\\u0642\\u0628\\u0648\\u0644 \\u0645\\u0634\\u0631\\u0648\\u0639\\u0643 laldkfl;skdlsewedffffffffff\",\"userId\":10}', NULL, '2022-05-21 03:32:30', '2022-05-21 03:32:30'),
('8c0e6cbe-b171-4235-b6b9-da202b1c3690', 'App\\Notifications\\CommentNotification', 'App\\Models\\User', 10, '{\"name\":\"amalasasasa\",\"post_title\":\"bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb\",\"url\":\"http:\\/\\/localhost:8000\\/posts\\/details\\/6\",\"type\":\"comment\",\"message\":\"\\u0642\\u0627\\u0645 amalasasasa \\u0628\\u0627\\u0636\\u0627\\u0641\\u0647 \\u062a\\u0639\\u0644\\u064a\\u0642 \\u0639\\u0644\\u0649  \\u0645\\u0634\\u0631\\u0648\\u0639\\u0643 bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb\",\"userId\":10}', NULL, '2022-05-21 04:58:42', '2022-05-21 04:58:42'),
('a5f2389b-be38-478b-8cc4-a68ca28e0efd', 'App\\Notifications\\CommentNotification', 'App\\Models\\User', 10, '{\"name\":\"amalasasasa\",\"post_title\":\"laldkfl;skdlsewedffffffffff\",\"url\":\"http:\\/\\/localhost:8000\\/posts\\/details\\/5\",\"type\":\"comment\",\"message\":\"\\u0642\\u0627\\u0645 amalasasasa \\u0628\\u0627\\u0636\\u0627\\u0641\\u0647 \\u062a\\u0639\\u0644\\u064a\\u0642 \\u0639\\u0644\\u0649  \\u0645\\u0634\\u0631\\u0648\\u0639\\u0643 laldkfl;skdlsewedffffffffff\",\"userId\":10}', NULL, '2022-05-21 03:30:27', '2022-05-21 03:30:27'),
('bac3307d-1121-49a8-bd57-bea330e62d92', 'App\\Notifications\\MarkAsDoneNotification', 'App\\Models\\User', 10, '{\"name\":\"\\u0623\\u0641\\u0646\\u0627\\u0646 \\u0627\\u0644\\u0642\\u062f\\u0633\\u064a\",\"project_id\":4,\"project_title\":\"bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb\",\"url\":\"http:\\/\\/localhost:8000\\/confirm-receive\\/4\\/4\",\"type\":\"accept_offer\",\"message\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645\\u0623\\u0641\\u0646\\u0627\\u0646 \\u0627\\u0644\\u0642\\u062f\\u0633\\u064a\\u0628\\u062a\\u0633\\u0644\\u064a\\u0645  \\u0645\\u0634\\u0631\\u0648\\u0639\\u0643 bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb\",\"userId\":10}', NULL, '2022-05-21 05:05:38', '2022-05-21 05:05:38'),
('ca6fb439-20db-4604-ba4c-1aad828c3fd3', 'App\\Notifications\\CommentNotification', 'App\\Models\\User', 10, '{\"name\":\"amalasasasa\",\"post_title\":\"reports_projectreports_project\",\"url\":\"http:\\/\\/localhost:8000\\/posts\\/details\\/3\",\"type\":\"comment\",\"message\":\"\\u0642\\u0627\\u0645 amalasasasa \\u0628\\u0627\\u0636\\u0627\\u0641\\u0647 \\u062a\\u0639\\u0644\\u064a\\u0642 \\u0639\\u0644\\u0649  \\u0645\\u0634\\u0631\\u0648\\u0639\\u0643 reports_projectreports_project\",\"userId\":10}', NULL, '2022-05-21 05:13:55', '2022-05-21 05:13:55'),
('d983a72a-47f9-4e15-a768-9f06b85d4ff9', 'App\\Notifications\\CommentNotification', 'App\\Models\\User', 10, '{\"name\":\"amalasasasa\",\"post_title\":\"uuuuuuuuuuuuuuuuuu\",\"url\":\"http:\\/\\/localhost:8000\\/posts\\/details\\/2\",\"type\":\"comment\",\"message\":\"\\u0642\\u0627\\u0645 amalasasasa \\u0628\\u0627\\u0636\\u0627\\u0641\\u0647 \\u062a\\u0639\\u0644\\u064a\\u0642 \\u0639\\u0644\\u0649  \\u0645\\u0634\\u0631\\u0648\\u0639\\u0643 uuuuuuuuuuuuuuuuuu\",\"userId\":10}', NULL, '2022-05-17 17:06:00', '2022-05-17 17:06:00'),
('dbee6043-046f-4be6-bea2-54332f624477', 'App\\Notifications\\AcceptOfferNotification', 'App\\Models\\User', 4, '{\"name\":\"amalasasasa\",\"project_id\":2,\"project_title\":\"laldkfl;skdlsewedffffffffff\",\"url\":\"http:\\/\\/localhost:8000\\/confirm-project\\/2\\/10\",\"type\":\"accept_offer\",\"message\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645amalasasasa\\u0628\\u0642\\u0628\\u0648\\u0644 \\u0639\\u0631\\u0636\\u0643 \\u0644\\u0645\\u0634\\u0631\\u0648\\u0639  laldkfl;skdlsewedffffffffff\",\"userId\":4}', NULL, '2022-05-21 03:31:25', '2022-05-21 03:31:25'),
('ed5e97da-aa93-4547-9a41-b955f6a5064b', 'App\\Notifications\\MarkAsAcceptReceviceNotification', 'App\\Models\\User', 4, '{\"name\":\"\\u0623\\u0641\\u0646\\u0627\\u0646 \\u0627\\u0644\\u0642\\u062f\\u0633\\u064a\",\"project_id\":4,\"project_title\":\"bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb\",\"url\":\"http:\\/\\/localhost:8000\\/user-profile\\/4\",\"type\":\"accept_offer\",\"message\":\"\\u0644\\u0642\\u062f \\u0642\\u0627\\u0645\\u0623\\u0641\\u0646\\u0627\\u0646 \\u0627\\u0644\\u0642\\u062f\\u0633\\u064a \\u0628\\u0642\\u0628\\u0648\\u0644  \\u0645\\u0634\\u0631\\u0648\\u0639\\u0643 \\u0627\\u0644\\u0645\\u0633\\u0644\\u0645 bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb\",\"userId\":4}', NULL, '2022-05-21 05:06:45', '2022-05-21 05:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total_amount` int(11) NOT NULL,
  `site_amount` int(11) NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seeker_id` bigint(20) UNSIGNED NOT NULL,
  `provider_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offers` int(11) NOT NULL DEFAULT 0,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `cost`, `duration`, `file`, `status`, `offers`, `category_id`, `user_id`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 'taiz school website', 'websitewebsitewebsitewebsitewebsitewebsitewebsitewebsitewewebsitewebsitewebsitewebsitewebsitewebsitewebsitewebsitewebsitewebsitewebsitewebsitewebsitewebsitewebsitewebsitewebsitebsitewebsitewebsite', '0-25', 33, NULL, 'closed', 1, 1, 10, '2022-05-17 07:39:46', '2022-05-17 08:05:47', 1),
(2, 'uuuuuuuuuuuuuuuuuu', 'Reconnecting to Wi-Fi\r\nRunning Windows Network DiagnosticsReconnecting to Wi-Fi\r\nRunning Windows Network DiagnosticsReconnecting to Wi-Fi\r\nRunning Windows Network DiagnosticsReconnecting to Wi-Fi\r\nRunning Windows Network DiagnosticsReconnecting to Wi-Fi\r\nRunning Windows Network DiagnosticsReconnecting to Wi-Fi\r\nRunning Windows Network DiagnosticsReconnecting to Wi-Fi\r\nRunning Windows Network DiagnosticsReconnecting to Wi-Fi\r\nRunning Windows Network DiagnosticsReconnecting to Wi-Fi\r\nRunning Windows Network DiagnosticsReconnecting to Wi-Fi\r\nRunning Windows Network DiagnosticsReconnecting to Wi-Fi\r\nRunning Windows Network DiagnosticsReconnecting to Wi-Fi\r\nRunning Windows Network DiagnosticsReconnecting to Wi-Fi\r\nRunning Windows Network DiagnosticsReconnecting to Wi-Fi\r\nRunning Windows Network Diagnostics', '0-25', 44, NULL, 'open', 1, 1, 10, '2022-05-17 08:07:54', '2022-05-20 12:07:51', 1),
(3, 'reports_projectreports_project', 'reports_projectreports_projectreports_projectreports_projectreports_projectreports_projectreports_projectreports_project', '0-25', 55, NULL, 'open', 1, 1, 10, '2022-05-17 17:05:10', '2022-05-21 05:13:45', 1),
(4, 'مشروع التلحيم للمصنع 2022', 'class=\"appearance-none block w-full bg-sacondary-light-white-pinky border-primary-light-pink border-sm text-gray-700 border border-red-500 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-primary-pink\"', '0-25', 30, NULL, 'open', 0, 1, 10, '2022-05-20 11:35:36', '2022-05-20 12:07:02', 1),
(5, 'laldkfl;skdlsewedffffffffff', 'laldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedffffffffff', '0-25', 44, NULL, 'closed', 1, 1, 10, '2022-05-21 03:29:12', '2022-05-21 05:04:32', 1),
(6, 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', '342545246452453434254524645245343425452464524534342545246452453434254524645245343425452464524534342545246452453434254524645245343425452464524534342545246452453434254524645245343425452464524534', '500-250', 56, NULL, 'closed', 1, 1, 10, '2022-05-21 04:57:38', '2022-05-21 05:06:12', 1),
(7, 'عمل موقع مدرسي للتعز', 'للللللللللللللللللللللللللللم\r\nتباثنانقبللللللللللللللللللللللللللللم\r\nتباثنانقبللللللللللللللللللللللللللللم\r\nتباثنانقبللللللللللللللللللللللللللللم\r\nتباثنانقبللللللللللللللللللللللللللللم\r\nتباثنانقبللللللللللللللللللللللللللللم\r\nتباثنانقب', '0-25', 12, NULL, 'open', 0, 1, 10, '2022-06-20 11:07:49', '2022-06-20 11:07:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_skills`
--

CREATE TABLE `post_skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `skill_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double NOT NULL DEFAULT 0,
  `account_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialization` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hire_me` tinyint(1) DEFAULT NULL,
  `limit` int(11) NOT NULL DEFAULT 4,
  `reseved` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`user_id`, `name`, `avatar`, `gender`, `mobile`, `country`, `rating`, `account_type`, `job_title`, `specialization`, `bio`, `video`, `category_id`, `created_at`, `updated_at`, `hire_me`, `limit`, `reseved`) VALUES
(2, 'ضحى الخراساني', NULL, 'female', '773065471', 'Yemen', 0, 'provider', 'backend developer', 'backend developer', '\"إنه قارئ ومفسر ومبدع في آنٍ واحد.. ذلك هو المترجم.\" بيجاي كومار داس.\r\n\r\n            مترجمة محترفة على مستوى عالي من الدقة والمهارة. خريجة بكالوريوس لغة انجليزية وترجمة وحاصلة على شهادة التوفل وتدريبات مكثفة في اللغة الانجليزية والترجمة. امتلك من الخبرة مايزيد عن 12 عام في هذا المجال.\r\n            \r\n            لا اتقدم لاي مشروع الا اذا كنت واثقة انني استطيع انجازه باحترافية بنسبة 100%. انا مواظبة جدا واهتم بالتفاصيل الصغيرة لاي عمل انجزه.\r\n            \r\n            الخدمات التي اقدمها:\r\n            \r\n            *الترجمة من اللغة العربية <> اللغة الانجليزية.\r\n            \r\n            *التدقيق اللغوي.\r\n            \r\n            *اعمال التلخيص واعادة الصياغة من والى اللغتين.\r\n            \r\n            *التفريغ الصوتي.\r\n            \r\n            *الترجمة المرئية Subtitles.\r\n            انه لمن دواعي سروري ان انجز مشاريعك باقل وقت ممكن وعلى درجة عالية من الدقة والمهنية.\r\n            \r\n            رضا الزبائن هو هدفي الاول واضمن لك تسليمك العمل في اقرب وقت وبافضل نتيجة.\r\n            تواصل معي عبر الرسائل لمناقشة تفاصيل مشروعك.', NULL, NULL, '2022-05-17 07:17:39', '2022-05-17 07:17:39', NULL, 4, 0),
(3, 'فاطمة المشهور', NULL, 'female', '771951728', 'Yemen', 0, 'provider', 'fullstack developer', 'fullstack developer', '\"هداء\" مصممة جرافيك .\r\n\r\n            أمتلك خبرة العديد من السنوات في العمل على برامج التصميم المتنوعة بإتقان وإحترافية.\r\n            \r\n            أسعى دائماً لإخراج تصاميم مميزة، وابداعية تتناسب مع متطلبات العميل لمساعدته في تحقيق أهدافه المرجوة من التصميم .\r\n            \r\n            توظيفي للعمل على مشروعك سيوفر لك خدمات مميزة وإبداعية تناسب ذوقك :\r\n            \r\n            - تصميم المطبوعات.\r\n            \r\n            - تصميم الشعارات والهوية البصرية .\r\n            \r\n            - تصميم ورسم الشخصيات ثنائية الأبعاد\r\n            \r\n            - المونتاج\r\n            \r\n            - الموشن جرافيك\r\n            \r\n            - تصميم مقاطع الرسوم المتحركة\r\n            \r\n            - التعليق الصوتي\r\n            \r\n            عند عملك معي ستجدني شغوفة, ملهمة , صبورة, ومبدعة .. وسأحرص على أن أرتقي بتصميمك ليحقق اهداف ومتطلبات مشروعك .\r\n            \r\n            يسعدني زيارتكم معرض أعمالي ،،\r\n            \r\n            اشكركم لاهتمامكم وطابت أوقاتكم بالخير ،،', NULL, NULL, '2022-05-17 07:17:39', '2022-05-17 07:17:39', NULL, 4, 0),
(4, 'أفنان القدسي', NULL, 'female', '774971302', 'Yemen', 3, 'provider', 'frontend developer', 'frontend developer', 'خليل النوونو\r\n\r\n            مصمم جرافيك من سنة 2009\r\n            \r\n            حاصل على شهادة Adobe\r\n            \r\n            خبير في تصميم packaging ( تغليف المنتجات )\r\n            \r\n            خبير في تصميم branding ( الهويات البصرية والشعارات )\r\n            \r\n            خبير في تصميم المطبوعات و الاعلانات ( بوسترات - بيلبرود - رول اب الخ)\r\n            \r\n            خبير في تصميم اعلانات السوشيال ميديا\r\n            قمت بتفعيل حسابي في موقع مستقل في شهر 10 / 2021', NULL, NULL, '2022-05-17 07:17:39', '2022-05-21 05:07:13', NULL, 2, 4),
(5, 'رقية سيف', NULL, 'female', '770695605', 'Yemen', 0, 'provider', 'frontend developer', 'frontend developer', 'مصمم جرافيك\r\n\r\n            مخرج صحفي\r\n            \r\n            متخصص في تنسيق الكتب والرسائل الجامعية\r\n            \r\n            أعمل في المجال منذ 18 سنة تقريبا\r\n            \r\n            خبرة في برامج الإنديزاين والفوتوشوب والإليستريتور والكورل درو والورد\r\n            \r\n            خبرة في تصميم البوسترات الاعلانية ، المطبوعات ، الشعارات، وتصميم الهوية التجاريه الكامله وتصاميم السوشيال ميديا وتصميم الكتب التعليمية للاطفال والقصص والانفوجرافيك ، الملصقات الاعلانية ،\r\n            \r\n            - يمكنني فعل أي شيء في Photoshop و Illustrator و In Design\r\n            \r\n            - جودة العمل هي أهم شيء بالنسبة لي ويمكنني دائمًا تقديمها سواء كان المشروع كبيرًا أو صغيرًا.', NULL, NULL, '2022-05-17 07:17:40', '2022-05-17 07:17:40', NULL, 4, 0),
(6, 'محمد الدعيس', NULL, 'male', '770527144', 'Yemen', 0, 'provider', 'photoshop designer', 'photoshop designer', 'انا مطور ويب full stack اعمل بلغات html5 ,css3. javascript, jquery, ajax, laravel framework, json, bootstrap\r\n\r\n            حاصل على بكالريوس نظم معلومات ادارية بتقدير امتياز\r\n            \r\n            حاصل على شهادة معتمدة من مركز يات التعليمى بالمعادى فى مصر', NULL, NULL, '2022-05-17 07:17:40', '2022-05-17 07:17:40', NULL, 4, 0),
(7, 'هيفاء نبيل', NULL, 'female', '777526457', 'Yemen', 0, 'provider', 'illustratior designer', 'illustratior designe', 'مهندس مدني حاصل على شهادة بكالوريوس الهندسة المدنية بتقدير جيد جدا.\r\n\r\n            عملت في مكتب استشاري لإعداد وتصميم المخططات الهندسية ، وأعمل في مجال المقاولات كمهندس موقع ... وبهذا جمعت بين الجانب النظري والعملي للإتقان والوصول لأفضل جودة بأقل تكلفة.\r\n            \r\n            أقدم خدماتي في مجالات متنوعة من خلال:\r\n            \r\n            -تصميم المخططات المعمارية والإنشائية والكهربائية والميكانيكية للمنشآت .\r\n            \r\n            -تجهيز المخططات التنفيذية للمنشآت\r\n            \r\n            -حساب الكميات بدقة عالية في الأعمال الخرسانية وفي أعمال التشطيبات .\r\n            \r\n            -تحليل الأسعار وحساب التكلفة التقديرية للأعمال.\r\n            \r\n            -مراجعة المخططات الإنشائية.\r\n            \r\n            -إعداد الجداول الزمنية للمشروع الإنشائي\r\n            \r\n            -إعداد كافة مستخلصات الاعمال (الحصر والمالية).\r\n            \r\n            -مهندس تصميم وإخراج المخططات بكل حرافية باستخدام كل من برامج التصميم.\r\n            \r\n            -استخدام البرامج الهندسية اللازمة مثل Auto Cad civil ،Robot Structural ، Prokon ،CSI Safe & Etabs ،Microsoft Office programs : (Word, PowerPoint, Excel and Access).\r\n            \r\n            -استخدام الاكسل والوورد باحترافية عالية .\r\n            \r\n            -تصميم عروض البوربوينت.\r\n            \r\n            أشكرك على وقتك الثمين، وكن مطمئنًا لأن عملك معي سيفوق توقعاتك.', NULL, NULL, '2022-05-17 07:17:40', '2022-05-17 07:17:40', NULL, 4, 0),
(8, 'مختار غالب', NULL, NULL, NULL, 'Yemen', 0, 'provider', 'Flutter programm', 'Flutter programming', 'مرحبا بكم وأسعد بزيارتكم ملفي الشخصي.\r\n\r\n            شريف سمير مصمم جرافيك ومحترف في رسم الكاريكاتير والشخصيات الكرتونية\r\n            \r\n            متخصص في تصميم الشعارات - وكافة انواع الدعاية المطبوعة والبصرية -\r\n            \r\n            بناء علامات تجارية ( Logo design )\r\n            \r\n            تصميم هويات بصرية تجارية بجميع محتوياتها ( كروت شخصية - خطابات\r\n            \r\n            مراسلة -أظرف - ختم - فواتير الخ )\r\n            \r\n            تصميم المطبوعات بكافة أنواعها (فلاير - بروشور - بانرات - رول أب - بوب أب - أسطوانات - فولدرات)\r\n            \r\n            التزم الدقة في التنفيذ والأحترافية في الأداء والالتزام بموعد التسليم\r\n            \r\n            أهم شيء بالنسبة لي هو ارضاء العميل عن العمل\r\n            \r\n            يسعدني رأيتك لمعرض اعمالي\r\n            \r\n            تحياتي....', NULL, NULL, '2022-05-17 07:17:40', '2022-05-17 07:17:40', NULL, 4, 0),
(9, 'هيثم أمين', NULL, NULL, NULL, 'Yemen', 0, 'provider', 'C++ programm', 'C++ programming', 'مرحبا بك، شكرا لك على زيارة ملفي الشخصي.\r\n\r\n            أنا بلال مصمم جرافيك محترف،\r\n            \r\n            - لدي أزيد من اربع سنوات من الخبرة في مجال التصميم الإعلاني\r\n            \r\n            - حاصل على لقب بائع موثوق في خمسات\r\n            \r\n            - أصمم البوستات لمواقع التواصل الاجتماعي - ( فيسبوك - تويتر - انستقرام - سناب شات - لينكدن - يوتيوب .. الخ ) وكذلك الصور المصغرة - التي توضع في فيديوهات يوتيوب ( YouTube thumbnail ) .\r\n            \r\n            - أصمم صور للمقالات والتدوينات بجودة عالية وبتصميمات مميزة ومعبرة عن المحتوى.\r\n            \r\n            - أصمم ستيكرات ( اغلفة ) المنتجات بمختلف انواعها.\r\n            \r\n            - أصمم الاعلانات بمختلف أنواعها سواء كانت للنشر في الانترنت او للطباعة ( بروشورات، مطويات، بوسترات، فلاير ..الخ ).\r\n            \r\n            - أصمم السير الذاتية (CV or Resume ) ، بطائق الأعمال ( Card business ).\r\n            \r\n            - أصمم أغلفة ( Cover ) لمواقع التواصل الاجتماعي، وكذلك أغلفة للكتب او الكتيبات وتكون جاهزة للطباعة.\r\n            تواصل(ي) معي إذا كان لديك أي استفسار حول عملي وسأكون سعيد بالرد عليك في أقرب وقت ممكن.', NULL, NULL, '2022-05-17 07:17:40', '2022-05-17 07:17:40', NULL, 4, 0),
(10, 'amalasasasa', NULL, NULL, NULL, NULL, 0, NULL, 'صاحب عمل', '1', NULL, NULL, 1, '2022-05-17 07:23:48', '2022-06-20 11:02:27', 0, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seeker_id` bigint(20) UNSIGNED DEFAULT NULL,
  `provider_id` bigint(20) UNSIGNED DEFAULT NULL,
  `offer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `stated_at` timestamp NULL DEFAULT NULL,
  `duration` double DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `files` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finshed` tinyint(1) NOT NULL DEFAULT 0,
  `finshed_at` timestamp NULL DEFAULT NULL,
  `other_way_send_files` tinyint(1) DEFAULT 0,
  `totalAmount` double DEFAULT 0,
  `invoice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'unpaid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `seeker_id`, `provider_id`, `offer_id`, `status`, `created_at`, `updated_at`, `amount`, `stated_at`, `duration`, `post_id`, `files`, `url`, `finshed`, `finshed_at`, `other_way_send_files`, `totalAmount`, `invoice`, `payment_status`) VALUES
(1, 10, 4, 1, 'at_work', '2022-05-17 07:41:46', '2022-05-17 08:05:47', 88, '2022-05-16 21:00:00', 22, 1, NULL, NULL, 1, '2022-05-16 21:00:00', 1, 83.6, 'bJOO8lNb0k', 'received'),
(2, 10, 4, 3, 'pending', '2022-05-21 03:31:20', '2022-05-21 03:31:20', 600, NULL, 20, 5, NULL, NULL, 0, NULL, 0, 570, NULL, 'unpaid'),
(3, 10, 4, 3, 'received', '2022-05-21 03:31:31', '2022-05-21 05:04:32', 600, '2022-05-20 21:00:00', 20, 5, NULL, NULL, 1, '2022-05-20 21:00:00', 1, 570, 'F33FoG53kQ', 'received'),
(4, 10, 4, 4, 'received', '2022-05-21 05:00:21', '2022-05-21 05:07:01', 400, '2022-05-20 21:00:00', 44, 6, NULL, NULL, 1, '2022-05-20 21:00:00', 1, 380, 'nYbJUNrQ5D', 'received'),
(5, 10, 4, 5, 'pending', '2022-05-21 05:15:48', '2022-05-21 05:15:48', 899, NULL, 22, 3, NULL, NULL, 0, NULL, 0, 854.05, NULL, 'unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_report` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `massege` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `type_report`, `massege`, `provider_id`, `is_active`, `user_id`, `post_id`, `created_at`, `updated_at`, `project_id`) VALUES
(1, 'هذا المحتوى يخالف شروط استخدام الموقع', 'vvvvvvvv', NULL, 1, 4, 2, '2022-05-17 08:09:58', '2022-05-18 06:30:00', NULL),
(2, 'هذا المسخدم يخالف شروط استخدام الموقع', 'xxxxxxxxxxx', '2', 1, 10, NULL, '2022-05-17 08:21:26', '2022-05-19 05:42:10', NULL),
(3, NULL, 'pro_mpro_mpro_m_mpro_mpro_mpro_mpro_mpro_m', NULL, 1, 4, 2, '2022-05-17 08:21:26', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'إدارة النظام', 'This is role of super admin, has full permissions', '2022-05-17 07:17:37', '2022-05-17 07:17:37'),
(2, 'admin', 'إدارة المحتوى', 'This is role of admin, has partially permissions', '2022-05-17 07:17:37', '2022-05-17 07:17:37'),
(3, 'seeker', 'طالب الخدمة', 'This is role of seeker, who register to post to get a service', '2022-05-17 07:17:37', '2022-05-17 07:17:37'),
(4, 'provider', 'مقدم الخدمة', 'This is role of provider, who register to provide and offer a service', '2022-05-17 07:17:37', '2022-05-17 07:17:37');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(2, 1, 'App\\Models\\User'),
(4, 2, 'App\\Models\\User'),
(4, 3, 'App\\Models\\User'),
(4, 4, 'App\\Models\\User'),
(4, 5, 'App\\Models\\User'),
(4, 6, 'App\\Models\\User'),
(4, 7, 'App\\Models\\User'),
(4, 8, 'App\\Models\\User'),
(4, 9, 'App\\Models\\User'),
(3, 10, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'فتشوب', 1, '2022-05-17 07:17:40', '2022-05-17 07:17:40'),
(2, 'التصميم الابداعي', -1, '2022-05-17 07:17:40', '2022-05-19 05:44:33'),
(3, ' اعلان', 0, '2022-05-17 07:17:40', '2022-05-17 07:17:40'),
(4, ' مايكروسوفت وورد', 1, '2022-05-17 07:17:40', '2022-05-17 07:17:40'),
(5, '  الترجمة', 1, '2022-05-17 07:17:40', '2022-05-17 07:17:40'),
(6, 'jkkhkj', 1, '2022-05-18 15:22:32', '2022-05-18 15:22:32');

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

CREATE TABLE `specializations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specializations`
--

INSERT INTO `specializations` (`id`, `title`, `is_active`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'vbcb', 1, '2022-05-19 05:44:16', '2022-05-19 05:44:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payable_id` bigint(20) UNSIGNED NOT NULL,
  `wallet_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('deposit','withdraw') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(64,0) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `payable_type`, `payable_id`, `wallet_id`, `type`, `amount`, `confirmed`, `meta`, `uuid`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 10, 11, 'withdraw', '-88', 1, '{\"project_id\":\"1\",\"invoice_referance\":\"bJOO8lNb0k\"}', '6e3e04de-a889-489a-8215-344816919bd5', '2022-05-17 08:03:02', '2022-05-17 08:03:02'),
(2, 'App\\Models\\User', 1, 12, 'deposit', '88', 1, '{\"project_id\":\"1\",\"invoice_referance\":\"bJOO8lNb0k\"}', '55e2bbbf-e5be-4538-a7aa-a133a399b5e4', '2022-05-17 08:03:02', '2022-05-17 08:03:02'),
(3, 'App\\Models\\User', 1, 12, 'withdraw', '-83', 1, NULL, '5d952dd4-9aec-4f6a-a85a-2b9524470676', '2022-05-17 08:05:15', '2022-05-17 08:05:15'),
(4, 'App\\Models\\User', 4, 13, 'deposit', '83', 1, NULL, 'a859f13e-9c5f-41bc-9cd5-f87b24f5d9ba', '2022-05-17 08:05:15', '2022-05-17 08:05:15'),
(5, 'App\\Models\\User', 10, 11, 'withdraw', '-600', 1, '{\"project_id\":\"3\",\"invoice_referance\":\"F33FoG53kQ\"}', '8bbd4912-d1d7-469c-9940-1b7bf3e8a209', '2022-05-21 04:48:09', '2022-05-21 04:48:09'),
(6, 'App\\Models\\User', 1, 12, 'deposit', '600', 1, '{\"project_id\":\"3\",\"invoice_referance\":\"F33FoG53kQ\"}', '77823f7c-0968-4e2d-b797-afe6bddce1b9', '2022-05-21 04:48:09', '2022-05-21 04:48:09'),
(7, 'App\\Models\\User', 10, 11, 'withdraw', '-400', 1, '{\"project_id\":\"4\",\"invoice_referance\":\"nYbJUNrQ5D\"}', 'fac4f70b-220e-47da-adbf-23a30d81dbed', '2022-05-21 05:02:13', '2022-05-21 05:02:13'),
(8, 'App\\Models\\User', 1, 12, 'deposit', '400', 1, '{\"project_id\":\"4\",\"invoice_referance\":\"nYbJUNrQ5D\"}', '51474368-ad5e-4e07-970c-c300ca9f4faa', '2022-05-21 05:02:13', '2022-05-21 05:02:13'),
(9, 'App\\Models\\User', 1, 12, 'withdraw', '-570', 1, '{\"project_id\":\"3\",\"invoice_referance\":\"F33FoG53kQ\"}', '1729bbb7-0522-4908-86e5-f8d5f6700966', '2022-05-21 05:04:32', '2022-05-21 05:04:32'),
(10, 'App\\Models\\User', 4, 13, 'deposit', '570', 1, '{\"project_id\":\"3\",\"invoice_referance\":\"F33FoG53kQ\"}', '877032af-a5ff-4110-8694-b8475bf82089', '2022-05-21 05:04:32', '2022-05-21 05:04:32'),
(11, 'App\\Models\\User', 1, 12, 'withdraw', '-380', 1, '{\"project_id\":\"4\",\"invoice_referance\":\"nYbJUNrQ5D\"}', '72570199-4f60-48ab-9d6f-8eec1eff71fe', '2022-05-21 05:06:11', '2022-05-21 05:06:11'),
(12, 'App\\Models\\User', 4, 13, 'deposit', '380', 1, '{\"project_id\":\"4\",\"invoice_referance\":\"nYbJUNrQ5D\"}', 'f319d9a8-301a-4c61-a556-ecc609086e1c', '2022-05-21 05:06:11', '2022-05-21 05:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) UNSIGNED NOT NULL,
  `to_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('exchange','transfer','paid','refund','gift') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'transfer',
  `status_last` enum('exchange','transfer','paid','refund','gift') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_id` bigint(20) UNSIGNED NOT NULL,
  `withdraw_id` bigint(20) UNSIGNED NOT NULL,
  `discount` decimal(64,0) NOT NULL DEFAULT 0,
  `fee` decimal(64,0) NOT NULL DEFAULT 0,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `from_type`, `from_id`, `to_type`, `to_id`, `status`, `status_last`, `deposit_id`, `withdraw_id`, `discount`, `fee`, `uuid`, `created_at`, `updated_at`) VALUES
(1, 'Bavix\\Wallet\\Models\\Wallet', 11, 'Bavix\\Wallet\\Models\\Wallet', 12, 'transfer', NULL, 2, 1, '0', '0', 'acf00576-897b-43b6-9bde-b07159ae9cb4', '2022-05-17 08:03:03', '2022-05-17 08:03:03'),
(2, 'Bavix\\Wallet\\Models\\Wallet', 12, 'Bavix\\Wallet\\Models\\Wallet', 13, 'transfer', NULL, 4, 3, '0', '0', 'ac5c99bb-c8d0-49a5-b141-f28a3d1abee7', '2022-05-17 08:05:15', '2022-05-17 08:05:15'),
(3, 'Bavix\\Wallet\\Models\\Wallet', 11, 'Bavix\\Wallet\\Models\\Wallet', 12, 'transfer', NULL, 6, 5, '0', '0', '71bde21d-a418-48f1-91ca-2126217bc1d9', '2022-05-21 04:48:10', '2022-05-21 04:48:10'),
(4, 'Bavix\\Wallet\\Models\\Wallet', 11, 'Bavix\\Wallet\\Models\\Wallet', 12, 'transfer', NULL, 8, 7, '0', '0', '3456e923-f0db-45c1-8059-45ff95d4448e', '2022-05-21 05:02:14', '2022-05-21 05:02:14'),
(5, 'Bavix\\Wallet\\Models\\Wallet', 12, 'Bavix\\Wallet\\Models\\Wallet', 13, 'transfer', NULL, 10, 9, '0', '0', '13b0bc29-cea7-46f6-bf56-e24a1962a184', '2022-05-21 05:04:32', '2022-05-21 05:04:32'),
(6, 'Bavix\\Wallet\\Models\\Wallet', 12, 'Bavix\\Wallet\\Models\\Wallet', 13, 'transfer', NULL, 12, 11, '0', '0', 'bbc33045-5da7-4950-99d8-f3f66c0cc7a5', '2022-05-21 05:06:12', '2022-05-21 05:06:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `isban` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_online` tinyint(1) NOT NULL DEFAULT 0,
  `last_activity` timestamp NOT NULL DEFAULT '2022-05-17 07:17:37',
  `last_seen` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_active`, `isban`, `remember_token`, `created_at`, `updated_at`, `google_id`, `is_online`, `last_activity`, `last_seen`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$So5M2zRQ6S6QurPuvZ/Gl.FXR9ZYmlCedmYEieU5pHJ0uxY.KXfeC', 1, 0, '0T3lcovhMt3IXufc5ZLGjHyfTBxWpRZBcbi589ICO6uzico0U3Zx57z4llVQ', '2022-05-17 07:17:37', '2022-05-25 14:41:57', NULL, 0, '2022-05-17 07:17:37', NULL),
(2, 'ضحى الخراساني', 'raihanahit2016@gmail.com', NULL, '$2y$10$Odr7V.k7ZlkV7umz2zN3wu2SxAKisjV/0pb87/bdzbOW4hi4.YjTG', 1, 0, 'Xuuzt9x7genuf2yrToXxvuxWZq8ektdhGf1RrODqwbE7r1sVpw0gcib4TGiN', '2022-05-17 07:17:38', '2022-05-25 14:41:57', NULL, 0, '2022-05-17 07:17:37', NULL),
(3, 'فاطمة المشهور', 'fatima.almashhor@gmail.com', NULL, '$2y$10$K6YtQQRObV8D6sMv7sjagOOwcqQNNpCNKMdELvLILfnNfRQ6LrpBm', 1, 0, 'saEQkhvYUjwtmmkyWkLrXlm4ztgOjD7nE0oDsy2pctcTunV94LcQWItpZKof', '2022-05-17 07:17:38', '2022-05-25 14:41:57', NULL, 0, '2022-05-17 07:17:37', NULL),
(4, 'أفنان القدسي', 'afnanalkadasi22@gmail.com', '2022-05-17 07:37:19', '$2y$10$tyHMMYdoX7hSlgz2Aokt9.2ZyS/PTXBqnDCRUy/NM9uFYPYxu.PF6', 1, 0, 'oDPBzzUGxHZr0o3RJOfCYNKu52asdsNioMT7Q9gNdpo6g3ALqfVOWgR0FRfZ', '2022-05-17 07:17:38', '2022-06-20 11:04:10', '113335493962683985375', 0, '2022-05-25 13:57:13', '2022-05-25 13:56:13'),
(5, 'رقية سيف', 'ruqaiah.saif@gmail.com', NULL, '$2y$10$MNXeEboPmpuZUMoYNVxAA.GhofIY/AJXD4HJYAu.JlDMy.M4B2t4a', 1, 0, '8gbbg5PbEsW2FpqHxvx9CDPf9icmfJZ2eYmdnYQbu6COcxOuEXp6OpGivfvI', '2022-05-17 07:17:38', '2022-05-25 14:41:57', NULL, 0, '2022-05-17 07:17:37', NULL),
(6, 'محمد الدعيس', 'mohammedaldoais1996@gmail.com', NULL, '$2y$10$JHTxeLa06tVG2UrDhb/Gbud6d7FsdKdUPFYLXPRmbSIJHVL407P4e', 1, 0, 'OfwzOAfPHqFl8pa8BmAF3GT8Z1qvjozjdy1vTkCXor4ATmgK3m9UCIYBqSzw', '2022-05-17 07:17:38', '2022-05-25 14:41:57', NULL, 0, '2022-05-17 07:17:37', NULL),
(7, 'هيفاء نبيل', 'haifa@gmail.com', NULL, '$2y$10$a/uodJg0/zknHHoiQqrLeOPQ0q8.zgZnxncZY88ctTwk245as4EXe', 1, 0, 'KMUHSYNLmUlHlzDXSpVVcKZk0IWgTuMj6tOut9RXmPnoPUsSq7exMnPVzs9Z', '2022-05-17 07:17:39', '2022-05-25 14:41:57', NULL, 0, '2022-05-17 07:17:37', NULL),
(8, 'مختار غالب', 'mokhtar@gmail.com', NULL, '$2y$10$xh.FVtUUL1HjTbwhw27HgeIdLfjVnIzdXIaUdzWjhNe0Bg5fjMuWO', 1, 0, 'tYlHJgO4OwUiEFFGxpwt3d3uZ19OJELXHR0XM8le1POhq6eE0ZIwn47nayWA', '2022-05-17 07:17:39', '2022-05-25 14:41:57', NULL, 0, '2022-05-17 07:17:37', NULL),
(9, 'هيثم أمين', 'haitham@gmail.com', NULL, '$2y$10$Iv6Aj6SHe3wZ4qRmrxGa2uI.5cWzc9GrtxzZAb4pLApxiqNeb9ydm', 1, 0, 'LKRVbef6w31IDbFXa6Wtsu8z8Cn8vo9RLqWa7y25gIThsONLiOdgUjennHzL', '2022-05-17 07:17:39', '2022-05-25 14:41:57', NULL, 0, '2022-05-17 07:17:37', NULL),
(10, 'amalasasasa', 'afnancoding@gmail.com', '2022-05-17 07:31:30', '$2y$10$VOjCZ2G5FDn6qWl2j3eOOeOwM7YqRVjfpryHJmZwvQw511Dttuhiy', 1, 0, '81SCdjTbHkdN6mkGdnN5NW0mCrun2DbpKzbjxHLTLZlF5yF3gkgO0Fehsx0w', '2022-05-17 07:23:37', '2022-06-20 11:00:54', '107685530576118423501', 1, '2022-05-25 14:42:57', '2022-05-25 14:41:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_skills`
--

CREATE TABLE `user_skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `skill_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `holder_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `holder_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `balance` decimal(64,0) NOT NULL DEFAULT 0,
  `decimal_places` smallint(5) UNSIGNED NOT NULL DEFAULT 2,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `holder_type`, `holder_id`, `name`, `slug`, `uuid`, `description`, `meta`, `balance`, `decimal_places`, `created_at`, `updated_at`) VALUES
(1, 'App\\Model\\User', 1, 'Default Wallet', 'default', 'f4223175-9474-4571-9f12-0273c3743793', 'Error aut quis dolor sequi et iste ut quia nobis minus perferendis odit nam quia a tempore molestias totam.', '[]', '10000', 2, '2006-08-09 21:00:00', '2016-02-20 21:00:00'),
(2, 'App\\Model\\User', 2, 'Default Wallet', 'default', '4945c752-eed6-4987-b349-b7bc73f2543c', 'Ipsa consequatur laudantium similique non cumque alias quae vero corporis similique itaque officia rem et ab maiores aut quos perspiciatis.', '[]', '10000', 2, '2012-10-10 21:00:00', '2005-07-10 21:00:00'),
(3, 'App\\Model\\User', 3, 'Default Wallet', 'default', '6dcae53d-12a9-4880-a490-029cafaa7e03', 'Et repudiandae vero enim fuga et est illo natus praesentium perspiciatis nihil non voluptatum eum quod consequatur.', '[]', '10000', 2, '1980-06-13 21:00:00', '1999-08-13 21:00:00'),
(4, 'App\\Model\\User', 4, 'Default Wallet', 'default', 'a0ff3702-a047-4214-bd32-c82ab71545cb', 'Eos quos aut id dolorum voluptates aut asperiores est vel tempora enim sed est similique alias nihil consequuntur veritatis quasi.', '[]', '10000', 2, '1978-02-22 21:00:00', '2004-03-27 21:00:00'),
(5, 'App\\Model\\User', 5, 'Default Wallet', 'default', 'c6c61a9d-7ded-4fa7-a498-d5fdb6cdc6bb', 'Ut molestiae numquam expedita et soluta voluptatem non reiciendis est minima dolor omnis aut ullam necessitatibus esse quo qui et distinctio ea vitae.', '[]', '10000', 2, '1982-11-10 21:00:00', '2001-01-31 21:00:00'),
(6, 'App\\Model\\User', 6, 'Default Wallet', 'default', '45d6b8c1-915f-4951-b5cb-bb33eee5009c', 'Quis aut totam a illum eligendi quo perferendis facere et saepe aut sunt odit voluptatem fugiat quae sit voluptas sed aut.', '[]', '10000', 2, '1991-12-10 21:00:00', '2015-11-18 21:00:00'),
(7, 'App\\Model\\User', 7, 'Default Wallet', 'default', 'c5f291c0-dad2-45ae-a64b-170fa5668422', 'Delectus in consequuntur alias voluptatibus libero est qui et est vel quia recusandae aliquid perferendis enim veritatis quam magnam laboriosam.', '[]', '10000', 2, '1985-11-05 21:00:00', '1982-05-13 21:00:00'),
(8, 'App\\Model\\User', 8, 'Default Wallet', 'default', '03215958-21a1-48d1-a627-96b9129bfe19', 'Et sequi molestiae voluptatem et et laborum dolorum autem laborum aut voluptatem recusandae odio.', '[]', '10000', 2, '1995-09-05 21:00:00', '1983-05-26 21:00:00'),
(9, 'App\\Model\\User', 9, 'Default Wallet', 'default', '77db80b5-4aa0-4987-83fa-a97c3b3c7f55', 'Dolores tempore distinctio qui et asperiores perspiciatis et veniam mollitia aut sed dolor modi eveniet temporibus eius qui labore et.', '[]', '10000', 2, '1979-08-26 21:00:00', '2002-03-14 21:00:00'),
(10, 'App\\Model\\User', 10, 'Default Wallet', 'default', '0c8c44e1-166b-4065-97c1-2bc2879c0404', 'Dolor nihil libero tempore eius quam aut quod laboriosam sequi minus fugit doloremque soluta quia deleniti dolorem non aut eos ipsa fuga eum iste dolorem tenetur molestias beatae.', '[]', '10000', 2, '2014-05-14 21:00:00', '1975-10-02 21:00:00'),
(11, 'App\\Models\\User', 10, 'Default Wallet', 'default', '75e533f8-6e1b-4d8f-a163-6cc04df17b5e', NULL, '[]', '58912', 2, '2022-05-17 08:00:53', '2022-05-21 05:02:14'),
(12, 'App\\Models\\User', 1, 'Default Wallet', 'default', '68bd0295-87e9-4b30-8362-fbd868868e5a', NULL, '[]', '55', 2, '2022-05-17 08:03:02', '2022-05-21 05:06:12'),
(13, 'App\\Models\\User', 4, 'Default Wallet', 'default', '2ad7e0b0-2c35-4b2e-b631-54069de347f7', NULL, '[]', '1033', 2, '2022-05-17 08:05:15', '2022-05-21 05:06:12');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comple_date` date NOT NULL,
  `main_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `more_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `title`, `comple_date`, `main_image`, `link`, `details`, `more_file`, `is_active`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'cvbbdfbdf', '2022-05-01', 'default.png', 'https://app.slack.com/client/T02NJQUM6BD/C02NC3GEK9U?cdn_fallback=2&force_cold_boot=1', 'laldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedffffffffff', NULL, 1, '2022-05-21 03:46:45', '2022-05-21 03:46:45', 4),
(2, 'cvbbdfbdf', '2022-05-10', 'default.png', 'https://app.slack.com/client/T02NJQUM6BD/C02NC3GEK9U?cdn_fallback=2&force_cold_boot=1', 'laldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedfffffffffflaldkfl;skdlsewedffffffffff', NULL, 1, '2022-05-21 03:47:12', '2022-05-21 03:47:12', 4);

-- --------------------------------------------------------

--
-- Table structure for table `work_skills`
--

CREATE TABLE `work_skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `work_id` bigint(20) UNSIGNED DEFAULT NULL,
  `skill_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_skills`
--

INSERT INTO `work_skills` (`id`, `work_id`, `skill_id`, `created_at`, `updated_at`) VALUES
(1, 1, 4, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluations`
--
ALTER TABLE `evaluations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evaluations_project_id_foreign` (`project_id`),
  ADD KEY `evaluations_user_id_foreign` (`user_id`),
  ADD KEY `evaluations_evaluater_id_foreign` (`evaluater_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_user_id_foreign` (`user_id`),
  ADD KEY `messages_receiver_foreign` (`receiver`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_seeker_id_foreign` (`seeker_id`),
  ADD KEY `orders_provider_id_foreign` (`provider_id`),
  ADD KEY `orders_project_id_foreign` (`project_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_skills`
--
ALTER TABLE `post_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_skills_post_id_foreign` (`post_id`),
  ADD KEY `post_skills_skill_id_foreign` (`skill_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD KEY `profiles_user_id_foreign` (`user_id`),
  ADD KEY `profiles_category_id_foreign` (`category_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_seeker_id_foreign` (`seeker_id`),
  ADD KEY `projects_provider_id_foreign` (`provider_id`),
  ADD KEY `projects_offer_id_foreign` (`offer_id`),
  ADD KEY `projects_post_id_foreign` (`post_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_user_id_foreign` (`user_id`),
  ADD KEY `reports_post_id_foreign` (`post_id`),
  ADD KEY `reports_project_id_foreign` (`project_id`);

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
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specializations_category_id_foreign` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_uuid_unique` (`uuid`),
  ADD KEY `transactions_payable_type_payable_id_index` (`payable_type`,`payable_id`),
  ADD KEY `payable_type_payable_id_ind` (`payable_type`,`payable_id`),
  ADD KEY `payable_type_ind` (`payable_type`,`payable_id`,`type`),
  ADD KEY `payable_confirmed_ind` (`payable_type`,`payable_id`,`confirmed`),
  ADD KEY `payable_type_confirmed_ind` (`payable_type`,`payable_id`,`type`,`confirmed`),
  ADD KEY `transactions_type_index` (`type`),
  ADD KEY `transactions_wallet_id_foreign` (`wallet_id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transfers_uuid_unique` (`uuid`),
  ADD KEY `transfers_from_type_from_id_index` (`from_type`,`from_id`),
  ADD KEY `transfers_to_type_to_id_index` (`to_type`,`to_id`),
  ADD KEY `transfers_deposit_id_foreign` (`deposit_id`),
  ADD KEY `transfers_withdraw_id_foreign` (`withdraw_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_skills`
--
ALTER TABLE `user_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_skills_user_id_foreign` (`user_id`),
  ADD KEY `user_skills_skill_id_foreign` (`skill_id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallets_holder_type_holder_id_slug_unique` (`holder_type`,`holder_id`,`slug`),
  ADD UNIQUE KEY `wallets_uuid_unique` (`uuid`),
  ADD KEY `wallets_holder_type_holder_id_index` (`holder_type`,`holder_id`),
  ADD KEY `wallets_slug_index` (`slug`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`),
  ADD KEY `works_user_id_foreign` (`user_id`);

--
-- Indexes for table `work_skills`
--
ALTER TABLE `work_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `work_skills_work_id_foreign` (`work_id`),
  ADD KEY `work_skills_skill_id_foreign` (`skill_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post_skills`
--
ALTER TABLE `post_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_skills`
--
ALTER TABLE `user_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `work_skills`
--
ALTER TABLE `work_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `evaluations`
--
ALTER TABLE `evaluations`
  ADD CONSTRAINT `evaluations_evaluater_id_foreign` FOREIGN KEY (`evaluater_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `evaluations_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `evaluations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_receiver_foreign` FOREIGN KEY (`receiver`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_seeker_id_foreign` FOREIGN KEY (`seeker_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_skills`
--
ALTER TABLE `post_skills`
  ADD CONSTRAINT `post_skills_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_skills_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projects_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_seeker_id_foreign` FOREIGN KEY (`seeker_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reports_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `specializations`
--
ALTER TABLE `specializations`
  ADD CONSTRAINT `specializations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_deposit_id_foreign` FOREIGN KEY (`deposit_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfers_withdraw_id_foreign` FOREIGN KEY (`withdraw_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_skills`
--
ALTER TABLE `user_skills`
  ADD CONSTRAINT `user_skills_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_skills_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `works`
--
ALTER TABLE `works`
  ADD CONSTRAINT `works_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `work_skills`
--
ALTER TABLE `work_skills`
  ADD CONSTRAINT `work_skills_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `work_skills_work_id_foreign` FOREIGN KEY (`work_id`) REFERENCES `works` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
