-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2020 at 04:05 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `samsa`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_advising_settings`
--

CREATE TABLE `academic_advising_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academic_advising_settings`
--

INSERT INTO `academic_advising_settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, NULL, '1', '2020-11-10 11:12:56', '2020-11-10 11:12:56'),
(2, NULL, '2', '2020-11-10 11:12:56', '2020-11-10 11:12:56'),
(3, NULL, '12', '2020-11-10 11:12:56', '2020-11-10 11:12:56'),
(4, NULL, '18', '2020-11-10 11:12:56', '2020-11-10 11:12:56'),
(5, NULL, '6', '2020-11-10 11:12:56', '2020-11-10 11:12:56'),
(6, NULL, '1', '2020-11-10 11:12:56', '2020-11-11 04:59:36'),
(7, NULL, NULL, '2020-11-10 11:13:23', '2020-11-10 11:13:23'),
(8, NULL, '144', '2020-11-14 06:54:53', '2020-11-14 06:54:53'),
(9, NULL, '135', '2020-11-14 06:59:46', '2020-11-14 06:59:46'),
(10, NULL, '6', '2020-11-14 06:59:46', '2020-11-14 06:59:46');

-- --------------------------------------------------------

--
-- Table structure for table `academic_courses`
--

CREATE TABLE `academic_courses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `year_work_degree` float NOT NULL,
  `practical_degree` float NOT NULL,
  `academic_degree` float NOT NULL,
  `small_degree` float NOT NULL,
  `large_degree` float NOT NULL,
  `has_project` tinyint(1) DEFAULT NULL,
  `division_id` int(11) NOT NULL,
  `credit_hour` int(11) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `subject_category_id` int(11) NOT NULL,
  `is_required` tinyint(1) DEFAULT NULL,
  `book_price` float DEFAULT NULL,
  `failed_degree` float NOT NULL,
  `level_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academic_courses`
--

INSERT INTO `academic_courses` (`id`, `name`, `code`, `year_work_degree`, `practical_degree`, `academic_degree`, `small_degree`, `large_degree`, `has_project`, `division_id`, `credit_hour`, `notes`, `subject_category_id`, `is_required`, `book_price`, `failed_degree`, `level_id`, `created_at`, `updated_at`) VALUES
(1, 'الاقتصاد الجزئى', 'اق 101', 20, 40, 60, 60, 100, NULL, 1, 3, NULL, 1, NULL, 100, 60, 1, '2020-11-11 08:19:55', '2020-11-11 08:19:55'),
(2, 'الحاسب الالى ونظم التشغيل (1)', 'عا 102', 40, 20, 60, 60, 100, NULL, 1, 3, NULL, 1, NULL, 100, 60, 1, '2020-11-11 08:26:02', '2020-11-11 08:26:02'),
(3, 'رياضيات الأعمال (1)', 'ري 101', 20, 40, 60, 60, 100, NULL, 1, 3, NULL, 1, NULL, 100, 60, 1, '2020-11-11 08:27:25', '2020-11-11 08:27:25'),
(4, 'لغة انجليزية (1)', 'عا 101', 20, 40, 60, 60, 100, NULL, 1, 3, NULL, 1, NULL, 100, 60, 1, '2020-11-11 08:29:35', '2020-11-11 08:29:35'),
(5, 'مبادئ الإدارة', 'اد 101', 20, 40, 60, 60, 100, NULL, 1, 3, NULL, 1, NULL, 100, 60, 1, '2020-11-11 08:30:35', '2020-11-11 08:30:35'),
(6, 'مبادئ القانون', '/ 101', 20, 40, 60, 60, 100, NULL, 1, 3, NULL, 1, NULL, 100, 60, 1, '2020-11-11 08:31:39', '2020-11-11 08:31:39'),
(7, 'مبادئ المحاسبة (1)', 'مح 101', 20, 40, 60, 60, 100, NULL, 1, 3, NULL, 1, NULL, 100, 60, 1, '2020-11-11 08:32:31', '2020-11-11 08:32:31'),
(8, 'التفكير المنطقى ومناهج البحث العلمى', 'عا 205', 20, 40, 60, 60, 100, NULL, 1, 3, NULL, 1, NULL, 100, 60, 2, '2020-11-11 08:33:43', '2020-11-11 08:33:43'),
(9, 'قانون الائتمان والمصارف', '/ 301', 20, 40, 60, 60, 100, NULL, 2, 3, NULL, 1, NULL, 100, 60, 3, '2020-11-11 08:35:33', '2020-11-11 08:35:33'),
(10, 'الاتصالات والتفاوض', 'عا 306', 20, 40, 60, 60, 100, NULL, 2, 3, NULL, 1, NULL, 100, 60, 3, '2020-11-11 08:36:59', '2020-11-11 08:36:59'),
(11, 'دراسة متخصصه بلغه', '/ 418', 20, 40, 60, 60, 100, NULL, 3, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 08:40:57', '2020-11-11 08:40:57'),
(12, 'حقوق الانسان والسكان', 'عا 407', 20, 40, 60, 60, 100, NULL, 3, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 09:05:43', '2020-11-11 09:05:43'),
(13, 'الاقتصاد الكلى', 'اق 204', 20, 40, 60, 60, 100, NULL, 1, 3, NULL, 1, NULL, 100, 60, 1, '2020-11-11 09:11:26', '2020-11-11 09:11:26'),
(16, 'لغة انجليزية (2)', 'عا103', 20, 50, 60, 60, 100, NULL, 1, 3, NULL, 1, NULL, 100, 60, 1, '2020-11-11 09:27:44', '2020-11-11 09:27:44'),
(17, 'مبادئ السلوك التنظيمى', 'اد 102', 20, 40, 60, 60, 100, NULL, 1, 3, NULL, 1, NULL, 100, 60, 1, '2020-11-11 09:32:23', '2020-11-11 09:32:23'),
(18, 'مبادئ المحاسبة (2)', 'مح 202', 20, 40, 60, 60, 100, NULL, 1, 3, NULL, 1, NULL, 100, 60, 1, '2020-11-11 09:33:50', '2020-11-11 09:33:50'),
(19, 'نظم معلومات ادارية', 'اد 315', 20, 40, 60, 60, 100, NULL, 1, 3, NULL, 1, NULL, 100, 60, 1, '2020-11-11 09:35:26', '2020-11-11 09:35:26'),
(20, 'ادارة الموارد البشرية', 'اد 314', 20, 40, 60, 60, 100, NULL, 1, 3, NULL, 1, NULL, 100, 60, 2, '2020-11-11 09:36:53', '2020-11-11 09:36:53'),
(21, 'التمويل الادراى', 'اد 205', 20, 40, 60, 60, 100, NULL, 1, 3, NULL, 1, NULL, 100, 60, 2, '2020-11-11 09:38:22', '2020-11-11 09:38:22'),
(22, 'بحوث العمليات', 'اد 312', 20, 40, 60, 60, 100, NULL, 1, 3, NULL, 1, NULL, 100, 60, 2, '2020-11-11 09:47:48', '2020-11-11 09:47:48'),
(23, 'محاسبه متوسطه (2)', 'مح 203', 20, 40, 60, 60, 100, NULL, 1, 3, NULL, 1, NULL, 100, 60, 2, '2020-11-11 09:49:53', '2020-11-11 09:49:53'),
(24, 'نقود وبنوك', 'اق 205', 20, 40, 60, 60, 100, NULL, 1, 3, NULL, 1, NULL, 100, 60, 2, '2020-11-11 09:51:12', '2020-11-11 09:51:12'),
(25, 'اساسيات التجارة الالكترونية', 'نع 301', 20, 40, 60, 60, 100, NULL, 3, 3, NULL, 1, NULL, 100, 60, 3, '2020-11-11 09:52:54', '2020-11-11 09:52:54'),
(26, 'تسويق الخدمات التأمينية', 'اد 320', 20, 40, 60, 60, 100, NULL, 3, 3, NULL, 1, NULL, 100, 60, 3, '2020-11-11 09:54:02', '2020-11-11 09:54:02'),
(27, 'تطبيقات الانترنت والوسائط المتعددة', 'نع 303', 20, 40, 60, 60, 100, NULL, 3, 3, NULL, 1, NULL, 100, 60, 3, '2020-11-11 09:55:07', '2020-11-11 09:55:07'),
(28, 'تصميم مواقع الويب', 'نع 408', 20, 40, 60, 60, 100, NULL, 3, 3, NULL, 1, NULL, 100, 60, 3, '2020-11-11 09:56:22', '2020-11-11 09:56:22'),
(29, 'مشروع التخرج', '------', 20, 40, 60, 60, 100, NULL, 3, 3, NULL, 1, NULL, 100, 60, 3, '2020-11-11 09:58:32', '2020-11-11 09:58:32'),
(30, 'اقتصاديات المصارف', 'اق 305', 20, 40, 60, 60, 100, NULL, 2, 3, NULL, 1, NULL, 100, 60, 3, '2020-11-11 09:59:55', '2020-11-11 09:59:55'),
(31, 'التحليل المحاسبى للقوائم المالية', 'مح 313', 20, 40, 60, 60, 100, NULL, 4, 3, NULL, 1, NULL, 100, 60, 3, '2020-11-11 10:02:16', '2020-11-11 10:02:16'),
(32, 'المراجعة', 'مح 305', 20, 40, 60, 60, 100, NULL, 3, 3, NULL, 1, NULL, 100, 60, 3, '2020-11-11 10:03:33', '2020-11-11 10:03:33'),
(33, 'محاسبة إدارية', 'مح 427', 20, 40, 60, 60, 100, NULL, 2, 3, NULL, 1, NULL, 100, 60, 3, '2020-11-11 10:05:42', '2020-11-11 10:05:42'),
(34, 'محاسبة المنشآت المالية', 'مح 306', 20, 40, 60, 60, 100, NULL, 2, 3, NULL, 1, NULL, 100, 60, 3, '2020-11-11 10:07:01', '2020-11-11 10:07:01'),
(35, 'معايير المحاسبة المصرية', 'مح 426', 20, 40, 60, 60, 100, NULL, 2, 3, NULL, 1, NULL, 100, 60, 3, '2020-11-11 10:08:19', '2020-11-11 10:08:19'),
(36, 'إدارة المواد والامداد', 'اد 306', 20, 40, 60, 60, 100, NULL, 2, 3, NULL, 1, NULL, 100, 60, 3, '2020-11-11 10:10:32', '2020-11-11 10:10:32'),
(37, 'السيولة الدولية ونظام النقد الدولى', 'اق 422', 20, 40, 60, 60, 100, NULL, 2, 3, NULL, 1, NULL, 100, 60, 3, '2020-11-11 10:11:48', '2020-11-11 10:11:48'),
(38, 'محاسبة التكاليف', 'مج 307', 20, 40, 60, 60, 100, NULL, 2, 3, NULL, 1, NULL, 100, 60, 3, '2020-11-11 10:13:52', '2020-11-11 10:13:52'),
(39, 'التسويق الالكترونى', 'نع 411', 20, 40, 60, 60, 100, NULL, 3, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 10:16:09', '2020-11-11 10:16:09'),
(40, 'التسويق الدولى', 'اد 427', 20, 40, 60, 60, 100, NULL, 3, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 10:17:26', '2020-11-11 10:17:26'),
(41, 'بحوث التسويق', 'اد 308', 20, 40, 60, 60, 100, NULL, 3, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 10:18:46', '2020-11-11 10:18:46'),
(42, 'تسويق الخدمات المصرفية', 'اد 432', 20, 40, 60, 60, 100, NULL, 3, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 10:20:00', '2020-11-11 10:20:00'),
(43, 'دراسة متقدمة فى التجارة الالكترونية', 'نع 410', 20, 40, 60, 60, 100, NULL, 3, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 10:21:06', '2020-11-11 10:21:06'),
(44, 'مشروع التخرج', '----------', 20, 40, 60, 60, 100, NULL, 3, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 10:21:55', '2020-11-11 10:21:55'),
(45, 'الإدارة الاستراتيجية', 'اد 428', 20, 40, 60, 60, 100, NULL, 3, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 10:23:06', '2020-11-11 10:23:06'),
(46, 'نظم واداره قواعد البيانات', 'نع 404', 20, 40, 60, 60, 100, NULL, 3, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 10:24:25', '2020-11-11 10:24:25'),
(47, 'ادارة الاعمال المصرفية', 'اد 451', 20, 40, 60, 60, 100, NULL, 3, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 10:25:32', '2020-11-11 10:25:32'),
(48, 'الاسواق المالية والبورصات', 'اد 422', 20, 40, 60, 60, 100, NULL, 2, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 10:55:15', '2020-11-11 10:55:15'),
(49, 'الهندسة المالية', 'اد 421', 20, 40, 60, 60, 100, NULL, 2, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 10:56:16', '2020-11-11 10:56:16'),
(50, 'تطبيقات الحاسب فى المنشأت المالية', 'نع 423', 20, 40, 60, 60, 100, NULL, 2, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 10:57:03', '2020-11-11 10:57:03'),
(51, 'رياضيات التأمين والخطر تمويل', 'ري 424', 20, 40, 60, 60, 100, NULL, 2, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 10:57:59', '2020-11-11 10:57:59'),
(52, 'المراجعه والرقابة المصرفية', 'مح 419', 20, 40, 60, 60, 100, NULL, 2, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 10:58:52', '2020-11-11 10:58:52'),
(53, 'نظم معلومات مصرفية', 'نع 420', 20, 40, 60, 60, 100, NULL, 2, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 11:00:08', '2020-11-11 11:00:08'),
(54, 'التنمية الاقتصادية', 'اق 424', 20, 40, 60, 60, 100, NULL, 2, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 11:01:10', '2020-11-11 11:01:10'),
(55, 'المحاسبة الإدارية (2)', 'مح 424', 20, 40, 60, 60, 100, NULL, 4, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 11:02:21', '2020-11-11 11:02:21'),
(56, 'سياسات التجارة الدولية', 'اق 418', 20, 40, 60, 60, 100, NULL, 4, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 11:03:29', '2020-11-11 11:03:29'),
(57, 'محاسبة دولية', 'مح 319', 20, 40, 60, 60, 100, NULL, 4, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 11:05:25', '2020-11-11 11:05:25'),
(58, 'محاسبة ضريبية (2)', 'مح 318', 20, 40, 60, 60, 100, NULL, 4, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 11:06:23', '2020-11-11 11:06:23'),
(59, 'مراجعه (مشاكل تطبيقية)', 'مح 219', 20, 40, 60, 60, 100, NULL, 4, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 11:07:35', '2020-11-11 11:07:35'),
(60, 'نظم معلومات محاسبية', 'مح 421', 20, 40, 60, 60, 100, NULL, 4, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 11:08:19', '2020-11-11 11:08:19'),
(61, 'الجودة الشاملة', 'اد 425', 20, 40, 60, 60, 100, NULL, 3, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 11:09:36', '2020-11-11 11:09:36'),
(62, 'نظم اتكاليف', 'مح 309', 20, 40, 60, 60, 100, NULL, 4, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 11:10:51', '2020-11-11 11:10:51'),
(63, 'بحوث العمليات فى المحاسبة', 'مح 314', 20, 40, 60, 60, 100, NULL, 2, 3, NULL, 1, NULL, 100, 60, 4, '2020-11-11 11:12:51', '2020-11-11 11:12:51');

-- --------------------------------------------------------

--
-- Table structure for table `academic_course_categories`
--

CREATE TABLE `academic_course_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_hours` int(11) NOT NULL,
  `required_hours` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academic_course_categories`
--

INSERT INTO `academic_course_categories` (`id`, `name`, `total_hours`, `required_hours`, `created_at`, `updated_at`) VALUES
(1, 'مقررات عامة', 144, 144, '2020-11-11 07:59:59', '2020-11-11 07:59:59'),
(2, 'محاسبة', 20, 10, '2020-11-11 08:24:36', '2020-11-11 08:24:36');

-- --------------------------------------------------------

--
-- Table structure for table `academic_degree_map`
--

CREATE TABLE `academic_degree_map` (
  `id` int(11) NOT NULL,
  `percent_from` int(11) NOT NULL,
  `percent_to` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `gpa` float NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academic_degree_map`
--

INSERT INTO `academic_degree_map` (`id`, `percent_from`, `percent_to`, `key`, `gpa`, `name`, `created_at`, `updated_at`) VALUES
(1, 95, 100, 'A+', 4, 'ممتاز', '2020-11-11 07:44:05', '2020-11-11 07:44:05'),
(2, 90, 94, 'A', 3.7, 'ممتاز', '2020-11-11 07:46:40', '2020-11-11 07:49:15'),
(3, 85, 89, 'A-', 3.3, 'ممتاز', '2020-11-11 07:49:51', '2020-11-11 07:49:51'),
(4, 80, 84, 'B+', 3, 'جيد جدا', '2020-11-11 07:50:52', '2020-11-11 07:50:52'),
(5, 75, 79, 'B', 2.8, 'جيد جدا', '2020-11-11 07:51:35', '2020-11-11 07:51:35'),
(6, 70, 74, 'C+', 2.6, 'جيد', '2020-11-11 07:52:29', '2020-11-11 07:52:29'),
(7, 65, 69, 'C', 2.3, 'جيد', '2020-11-11 07:53:03', '2020-11-11 07:53:03'),
(8, 60, 64, 'D+', 2, 'مقبول', '2020-11-11 07:53:37', '2020-11-11 07:53:37'),
(9, 55, 59, 'D', 1.7, 'راسب', '2020-11-11 07:54:27', '2020-11-11 07:54:27'),
(10, 50, 54, 'D-', 1.4, 'راسب', '2020-11-11 07:55:20', '2020-11-11 07:55:20');

-- --------------------------------------------------------

--
-- Table structure for table `academic_open_courses`
--

CREATE TABLE `academic_open_courses` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academic_open_courses`
--

INSERT INTO `academic_open_courses` (`id`, `course_id`, `term_id`, `academic_year_id`, `date`, `created_at`, `updated_at`) VALUES
(85, 63, 1, 1, '2020-11-14', '2020-11-14 08:11:50', '2020-11-14 08:11:50'),
(86, 62, 1, 1, '2020-11-14', '2020-11-14 08:11:50', '2020-11-14 08:11:50'),
(87, 61, 1, 1, '2020-11-14', '2020-11-14 08:11:50', '2020-11-14 08:11:50'),
(88, 60, 1, 1, '2020-11-14', '2020-11-14 08:11:50', '2020-11-14 08:11:50'),
(89, 59, 1, 1, '2020-11-14', '2020-11-14 08:11:50', '2020-11-14 08:11:50'),
(90, 58, 1, 1, '2020-11-14', '2020-11-14 08:11:51', '2020-11-14 08:11:51'),
(91, 57, 1, 1, '2020-11-14', '2020-11-14 08:11:51', '2020-11-14 08:11:51'),
(92, 56, 1, 1, '2020-11-14', '2020-11-14 08:11:51', '2020-11-14 08:11:51'),
(93, 55, 1, 1, '2020-11-14', '2020-11-14 08:11:51', '2020-11-14 08:11:51'),
(94, 54, 1, 1, '2020-11-14', '2020-11-14 08:11:51', '2020-11-14 08:11:51'),
(95, 38, 1, 1, '2020-11-14', '2020-11-14 08:11:51', '2020-11-14 08:11:51'),
(96, 37, 1, 1, '2020-11-14', '2020-11-14 08:11:51', '2020-11-14 08:11:51'),
(97, 36, 1, 1, '2020-11-14', '2020-11-14 08:11:51', '2020-11-14 08:11:51'),
(98, 35, 1, 1, '2020-11-14', '2020-11-14 08:11:51', '2020-11-14 08:11:51'),
(99, 34, 1, 1, '2020-11-14', '2020-11-14 08:11:51', '2020-11-14 08:11:51'),
(100, 33, 1, 1, '2020-11-14', '2020-11-14 08:11:52', '2020-11-14 08:11:52'),
(101, 32, 1, 1, '2020-11-14', '2020-11-14 08:11:52', '2020-11-14 08:11:52'),
(102, 24, 1, 1, '2020-11-14', '2020-11-14 08:11:52', '2020-11-14 08:11:52'),
(103, 23, 1, 1, '2020-11-14', '2020-11-14 08:11:52', '2020-11-14 08:11:52'),
(104, 22, 1, 1, '2020-11-14', '2020-11-14 08:11:52', '2020-11-14 08:11:52'),
(105, 21, 1, 1, '2020-11-14', '2020-11-14 08:11:52', '2020-11-14 08:11:52'),
(106, 20, 1, 1, '2020-11-14', '2020-11-14 08:11:52', '2020-11-14 08:11:52'),
(107, 19, 1, 1, '2020-11-14', '2020-11-14 08:11:52', '2020-11-14 08:11:52'),
(108, 18, 1, 1, '2020-11-14', '2020-11-14 08:11:52', '2020-11-14 08:11:52'),
(109, 17, 1, 1, '2020-11-14', '2020-11-14 08:11:52', '2020-11-14 08:11:52'),
(110, 16, 1, 1, '2020-11-14', '2020-11-14 08:11:52', '2020-11-14 08:11:52'),
(111, 13, 1, 1, '2020-11-14', '2020-11-14 08:11:53', '2020-11-14 08:11:53'),
(112, 8, 1, 1, '2020-11-14', '2020-11-14 08:11:53', '2020-11-14 08:11:53'),
(113, 7, 1, 1, '2020-11-14', '2020-11-14 08:11:53', '2020-11-14 08:11:53'),
(114, 6, 1, 1, '2020-11-14', '2020-11-14 08:11:53', '2020-11-14 08:11:53'),
(115, 5, 1, 1, '2020-11-14', '2020-11-14 08:11:53', '2020-11-14 08:11:53'),
(116, 4, 1, 1, '2020-11-14', '2020-11-14 08:11:53', '2020-11-14 08:11:53'),
(117, 3, 1, 1, '2020-11-14', '2020-11-14 08:11:53', '2020-11-14 08:11:53'),
(118, 2, 1, 1, '2020-11-14', '2020-11-14 08:11:53', '2020-11-14 08:11:53'),
(119, 1, 1, 1, '2020-11-14', '2020-11-14 08:11:53', '2020-11-14 08:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `academic_student_gpa`
--

CREATE TABLE `academic_student_gpa` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  `gpa` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `academic_student_register_courses`
--

CREATE TABLE `academic_student_register_courses` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `gpa` float DEFAULT NULL,
  `term_id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `division_id` int(11) NOT NULL,
  `degree_map_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_degree` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academic_student_register_courses`
--

INSERT INTO `academic_student_register_courses` (`id`, `course_id`, `gpa`, `term_id`, `academic_year_id`, `student_id`, `level_id`, `division_id`, `degree_map_id`, `created_at`, `updated_at`, `student_degree`) VALUES
(1, 1, NULL, 1, 1, 14, 2, 14, NULL, '2020-11-14 08:53:48', '2020-11-14 08:53:48', NULL),
(2, 2, NULL, 1, 1, 14, 2, 14, NULL, '2020-11-14 08:53:49', '2020-11-14 08:53:49', NULL),
(3, 3, NULL, 1, 1, 14, 2, 14, NULL, '2020-11-14 08:53:49', '2020-11-14 08:53:49', NULL),
(4, 4, NULL, 1, 1, 14, 2, 14, NULL, '2020-11-14 08:53:49', '2020-11-14 08:53:49', NULL),
(5, 5, NULL, 1, 1, 14, 2, 14, NULL, '2020-11-14 08:53:50', '2020-11-14 08:53:50', NULL),
(6, 6, NULL, 1, 1, 14, 2, 14, NULL, '2020-11-14 08:53:50', '2020-11-14 08:53:50', NULL),
(19, 1, NULL, 1, 1, 30, 1, 1, NULL, '2020-11-14 13:02:06', '2020-11-14 13:02:06', NULL),
(20, 2, NULL, 1, 1, 30, 1, 1, NULL, '2020-11-14 13:02:06', '2020-11-14 13:02:06', NULL),
(21, 3, NULL, 1, 1, 30, 1, 1, NULL, '2020-11-14 13:02:06', '2020-11-14 13:02:06', NULL),
(22, 4, NULL, 1, 1, 30, 1, 1, NULL, '2020-11-14 13:02:06', '2020-11-14 13:02:06', NULL),
(23, 5, NULL, 1, 1, 30, 1, 1, NULL, '2020-11-14 13:02:06', '2020-11-14 13:02:06', NULL),
(24, 6, NULL, 1, 1, 30, 1, 1, NULL, '2020-11-14 13:02:07', '2020-11-14 13:02:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `academic_years`
--

CREATE TABLE `academic_years` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `academic_years`
--

INSERT INTO `academic_years` (`id`, `name`, `start_date`, `end_date`, `notes`, `created_at`, `updated_at`) VALUES
(1, '2020-2021', '2020-01-01', '2021-12-30', NULL, '2020-09-07 08:47:25', '2020-09-07 08:47:25');

-- --------------------------------------------------------

--
-- Table structure for table `acadmic_course_prerequsites`
--

CREATE TABLE `acadmic_course_prerequsites` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `related_course_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acadmic_course_prerequsites`
--

INSERT INTO `acadmic_course_prerequsites` (`id`, `course_id`, `related_course_id`, `created_at`, `updated_at`) VALUES
(5, 13, 1, '2020-11-11 09:20:12', '2020-11-11 09:20:12'),
(6, 16, 4, '2020-11-11 09:27:44', '2020-11-11 09:27:44'),
(7, 17, 5, '2020-11-11 09:32:23', '2020-11-11 09:32:23'),
(8, 18, 7, '2020-11-11 09:33:50', '2020-11-11 09:33:50'),
(9, 19, 2, '2020-11-11 09:35:26', '2020-11-11 09:35:26'),
(10, 20, 5, '2020-11-11 09:36:53', '2020-11-11 09:36:53'),
(11, 21, 5, '2020-11-11 09:38:22', '2020-11-11 09:38:22'),
(12, 22, 5, '2020-11-11 09:47:48', '2020-11-11 09:47:48'),
(13, 23, 7, '2020-11-11 09:49:53', '2020-11-11 09:49:53'),
(14, 24, 13, '2020-11-11 09:51:12', '2020-11-11 09:51:12'),
(15, 25, 8, '2020-11-11 09:52:55', '2020-11-11 09:52:55'),
(16, 26, 21, '2020-11-11 09:54:02', '2020-11-11 09:54:02'),
(17, 27, 8, '2020-11-11 09:55:07', '2020-11-11 09:55:07'),
(18, 28, 8, '2020-11-11 09:56:22', '2020-11-11 09:56:22'),
(19, 30, 13, '2020-11-11 09:59:56', '2020-11-11 09:59:56'),
(20, 31, 23, '2020-11-11 10:02:16', '2020-11-11 10:02:16'),
(21, 32, 23, '2020-11-11 10:03:33', '2020-11-11 10:03:33'),
(22, 33, 32, '2020-11-11 10:05:42', '2020-11-11 10:05:42'),
(23, 34, 23, '2020-11-11 10:07:02', '2020-11-11 10:07:02'),
(24, 35, 23, '2020-11-11 10:08:19', '2020-11-11 10:08:19'),
(25, 36, 21, '2020-11-11 10:10:32', '2020-11-11 10:10:32'),
(26, 37, 24, '2020-11-11 10:11:48', '2020-11-11 10:11:48'),
(27, 38, 23, '2020-11-11 10:13:53', '2020-11-11 10:13:53'),
(28, 39, 25, '2020-11-11 10:16:09', '2020-11-11 10:16:09'),
(29, 40, 21, '2020-11-11 10:17:26', '2020-11-11 10:17:26'),
(30, 41, 21, '2020-11-11 10:18:46', '2020-11-11 10:18:46'),
(31, 42, 21, '2020-11-11 10:20:00', '2020-11-11 10:20:00'),
(32, 43, 25, '2020-11-11 10:21:06', '2020-11-11 10:21:06'),
(33, 45, 5, '2020-11-11 10:23:06', '2020-11-11 10:23:06'),
(34, 46, 8, '2020-11-11 10:24:25', '2020-11-11 10:24:25'),
(35, 47, 21, '2020-11-11 10:25:33', '2020-11-11 10:25:33'),
(36, 48, 21, '2020-11-11 10:55:15', '2020-11-11 10:55:15'),
(37, 49, 21, '2020-11-11 10:56:16', '2020-11-11 10:56:16'),
(38, 50, 8, '2020-11-11 10:57:03', '2020-11-11 10:57:03'),
(39, 51, 3, '2020-11-11 10:57:59', '2020-11-11 10:57:59'),
(40, 52, 23, '2020-11-11 10:58:52', '2020-11-11 10:58:52'),
(41, 53, 8, '2020-11-11 11:00:08', '2020-11-11 11:00:08'),
(42, 54, 13, '2020-11-11 11:01:10', '2020-11-11 11:01:10'),
(43, 55, 33, '2020-11-11 11:02:21', '2020-11-11 11:02:21'),
(44, 56, 30, '2020-11-11 11:03:29', '2020-11-11 11:03:29'),
(45, 57, 23, '2020-11-11 11:05:25', '2020-11-11 11:05:25'),
(46, 58, 23, '2020-11-11 11:06:23', '2020-11-11 11:06:23'),
(47, 59, 32, '2020-11-11 11:07:35', '2020-11-11 11:07:35'),
(48, 60, 23, '2020-11-11 11:08:19', '2020-11-11 11:08:19'),
(49, 61, 21, '2020-11-11 11:09:36', '2020-11-11 11:09:36'),
(50, 62, 34, '2020-11-11 11:10:51', '2020-11-11 11:10:51'),
(51, 63, 22, '2020-11-11 11:12:51', '2020-11-11 11:12:51');

-- --------------------------------------------------------

--
-- Table structure for table `account_academic_year_expenses`
--

CREATE TABLE `account_academic_year_expenses` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `division_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_academic_year_expenses`
--

INSERT INTO `account_academic_year_expenses` (`id`, `academic_year_id`, `level_id`, `division_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, NULL, NULL),
(3, 1, 2, 1, '2020-09-08 08:56:00', '2020-09-08 08:56:00'),
(4, 1, 3, NULL, '2020-09-28 13:57:38', '2020-09-28 13:57:38'),
(5, 1, 4, NULL, '2020-09-28 13:57:41', '2020-09-28 13:57:41');

-- --------------------------------------------------------

--
-- Table structure for table `account_academic_year_expenses_details`
--

CREATE TABLE `account_academic_year_expenses_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priorty` int(11) NOT NULL,
  `value` float NOT NULL,
  `term_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `discount` float DEFAULT NULL,
  `academic_year_expense_id` int(11) NOT NULL,
  `registeration_status_id` int(11) DEFAULT NULL,
  `wz_value` float DEFAULT NULL,
  `service_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_academic_year_expenses_details`
--

INSERT INTO `account_academic_year_expenses_details` (`id`, `name`, `priorty`, `value`, `term_id`, `store_id`, `discount`, `academic_year_expense_id`, `registeration_status_id`, `wz_value`, `service_id`, `created_at`, `updated_at`) VALUES
(1, 'فتح ملف', 1, 100, 1, 1, 0, 1, NULL, NULL, 0, NULL, '2020-09-28 08:06:28'),
(2, 'مصاريف تحويل(تحويل من معهد)', 1, 100, 1, 3, 0, 1, 9, NULL, 0, NULL, '2020-10-13 06:23:49'),
(5, 'مصاريف ترم اول', 2, 1685, 1, 2, 0, 1, NULL, 285, 0, '2020-09-08 06:54:12', '2020-10-13 06:22:45'),
(6, 'مصاريف ترم ثانى', 3, 2000, 2, 1, 0, 1, NULL, 285, 0, '2020-09-28 10:16:58', '2020-10-13 06:23:57'),
(8, 'مصاريف تحويل (مقاصه)', 1, 100, 1, 1, 0, 1, 4, NULL, 0, '2020-09-29 05:05:54', '2020-10-12 14:24:08'),
(9, 'مصاريف مقاصه', 1, 100, 1, 1, 0, 1, 4, NULL, 0, '2020-09-29 05:20:19', '2020-09-29 05:20:19'),
(10, 'فتح ملف', 1, 110, 1, 1, 0, 3, NULL, NULL, 0, '2020-10-05 04:58:46', '2020-10-05 04:59:48'),
(11, 'تحويل', 1, 120, 1, 1, 0, 3, 9, NULL, 0, '2020-10-05 04:58:47', '2020-10-05 04:59:48'),
(12, 'تحويل', 1, 130, 1, 1, 0, 3, 3, NULL, 0, '2020-10-05 04:58:47', '2020-10-05 04:59:48'),
(13, 'مقاصه', 1, 100, 1, 1, 0, 3, 3, NULL, 0, '2020-10-05 04:58:47', '2020-10-05 04:58:47'),
(14, 'مصاريف ترم اول', 2, 2785, 1, 1, 0, 3, NULL, 285, 0, '2020-10-05 04:58:47', '2020-10-13 06:24:51'),
(15, 'مصاريف ترم ثانى', 2, 3000, 1, 1, 0, 3, NULL, NULL, 0, '2020-10-05 04:58:48', '2020-10-13 06:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `account_balance_reset`
--

CREATE TABLE `account_balance_reset` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `value` float NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_banks`
--

CREATE TABLE `account_banks` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `account_number` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `branche` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `init_balance` float NOT NULL,
  `balance` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `notes` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account_banks`
--

INSERT INTO `account_banks` (`id`, `name`, `account_number`, `branche`, `init_balance`, `balance`, `created_at`, `updated_at`, `notes`) VALUES
(3, 'بنك القاهرة', '15465463131212', 'القاهرة', 10000, -190000, '2020-08-22 19:53:39', '2020-08-24 11:14:17', NULL),
(4, 'الاهلى', '12312300', 'القاهرة', 200000, 98800, '2020-08-23 12:39:52', '2020-08-25 05:56:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `account_dailies`
--

CREATE TABLE `account_dailies` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `value` float NOT NULL,
  `tree_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_dailies`
--

INSERT INTO `account_dailies` (`id`, `date`, `value`, `tree_id`, `user_id`, `notes`, `store_id`, `created_at`, `updated_at`) VALUES
(2, '2020-08-29', 200, 'j1_25', 1, NULL, 2, '2020-08-29 11:54:54', '2020-08-29 11:54:54'),
(3, '2020-08-14', 300, 'j1_8', 1, NULL, 2, '2020-08-29 11:57:05', '2020-08-29 11:57:05');

-- --------------------------------------------------------

--
-- Table structure for table `account_discounts`
--

CREATE TABLE `account_discounts` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `value` float NOT NULL,
  `discount_request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_discount_requests`
--

CREATE TABLE `account_discount_requests` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `discount_type_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `student_affairs_notes` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_discount_types`
--

CREATE TABLE `account_discount_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_discount_types`
--

INSERT INTO `account_discount_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'تفوق رياضى', '2020-11-10 10:01:35', '2020-11-10 10:01:35');

-- --------------------------------------------------------

--
-- Table structure for table `account_installments`
--

CREATE TABLE `account_installments` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `type` enum('old','new') COLLATE utf8_unicode_ci NOT NULL,
  `value` float NOT NULL,
  `date` date NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `model_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account_installments`
--

INSERT INTO `account_installments` (`id`, `student_id`, `type`, `value`, `date`, `paid`, `academic_year_id`, `model_id`, `created_at`, `updated_at`) VALUES
(7, 2, 'new', 500, '2020-09-28', 1, 1, NULL, '2020-09-28 15:25:34', '2020-09-28 15:45:56'),
(8, 2, 'new', 685, '2020-09-28', 1, 1, NULL, '2020-09-28 15:25:34', '2020-09-28 15:38:43'),
(9, 2, 'new', 500, '2020-09-28', 1, 1, NULL, '2020-09-28 15:25:34', '2020-09-28 15:49:47'),
(10, 4, 'new', 85, '2020-09-28', 1, 1, NULL, '2020-09-28 17:54:32', '2020-09-28 18:03:06'),
(11, 4, 'new', 100, '2020-09-28', 1, 1, NULL, '2020-09-28 17:54:32', '2020-09-28 18:03:33'),
(12, 4, 'new', 100, '2020-09-28', 1, 1, NULL, '2020-09-28 17:54:32', '2020-09-29 09:45:49'),
(13, 4, 'new', 400, '2020-09-28', 1, 1, NULL, '2020-09-28 17:54:32', '2020-09-29 09:55:06'),
(14, 4, 'new', 500, '2020-09-28', 0, 1, NULL, '2020-09-28 17:54:33', '2020-09-28 17:54:33'),
(15, 4, 'new', 500, '2020-09-28', 0, 1, NULL, '2020-09-28 17:54:33', '2020-09-28 17:54:33'),
(16, 7, 'new', 685, '2020-09-29', 1, 1, NULL, '2020-09-29 05:13:34', '2020-09-29 09:44:21'),
(17, 7, 'new', 1000, '2020-10-04', 0, 1, NULL, '2020-09-29 05:13:35', '2020-09-29 05:13:35'),
(18, 8, 'new', 685, '2020-09-29', 1, 1, NULL, '2020-09-29 06:14:30', '2020-09-29 06:15:26'),
(19, 8, 'new', 1000, '2020-09-30', 0, 1, NULL, '2020-09-29 06:14:31', '2020-09-29 06:20:10'),
(20, 11, 'old', 1000, '2020-10-03', 1, 1, NULL, '2020-10-03 09:56:51', '2020-10-03 10:11:37'),
(21, 11, 'old', 1000, '2020-10-03', 1, 1, NULL, '2020-10-03 09:56:51', '2020-10-03 10:27:57'),
(22, 11, 'old', 1000, '2020-10-03', 1, 1, NULL, '2020-10-03 09:56:51', '2020-10-03 10:28:46'),
(23, 13, 'new', 385, '2020-10-05', 1, 1, NULL, '2020-10-05 05:13:31', '2020-10-05 05:13:46'),
(24, 13, 'new', 2000, '2020-10-20', 0, 1, NULL, '2020-10-05 05:13:31', '2020-10-05 05:13:31'),
(25, 15, 'old', 1000, '2020-10-05', 1, 1, NULL, '2020-10-05 05:19:59', '2020-10-05 05:20:18'),
(26, 15, 'old', 1000, '2020-10-30', 0, 1, NULL, '2020-10-05 05:20:00', '2020-10-05 05:20:00'),
(27, 15, 'old', 2000, '2020-11-11', 0, 1, NULL, '2020-10-05 05:20:00', '2020-10-05 05:20:00'),
(28, 16, 'new', 185, '2020-10-06', 1, 1, NULL, '2020-10-06 06:51:31', '2020-10-06 07:03:09'),
(29, 16, 'new', 500, '2020-10-06', 1, 1, NULL, '2020-10-06 06:51:31', '2020-10-06 07:04:24'),
(30, 16, 'new', 1000, '2020-10-06', 0, 1, NULL, '2020-10-06 06:51:31', '2020-10-06 06:51:31'),
(31, 17, 'new', 685, '2020-10-06', 1, 1, NULL, '2020-10-06 10:08:15', '2020-10-06 10:08:48'),
(32, 17, 'new', 1000, '2020-10-21', 0, 1, NULL, '2020-10-06 10:08:15', '2020-10-06 10:08:15'),
(33, 19, 'new', 385, '2020-10-06', 1, 1, NULL, '2020-10-06 11:00:36', '2020-10-06 11:00:51'),
(34, 19, 'new', 2000, '2020-10-06', 0, 1, NULL, '2020-10-06 11:00:36', '2020-10-06 11:03:29'),
(35, 24, 'new', 1000, '2020-10-12', 1, 1, NULL, '2020-10-12 12:44:47', '2020-10-12 12:44:58'),
(36, 24, 'new', 685, '2020-10-22', 0, 1, NULL, '2020-10-12 12:44:47', '2020-10-12 12:44:47'),
(37, 26, 'old', 5000, '2020-10-12', 1, 1, NULL, '2020-10-12 13:31:06', '2020-10-12 13:31:15'),
(38, 26, 'old', 1000, '2020-10-12', 1, 1, NULL, '2020-10-12 13:31:06', '2020-10-12 13:40:48');

-- --------------------------------------------------------

--
-- Table structure for table `account_payments`
--

CREATE TABLE `account_payments` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `model_type` enum('academic_year_expense','service','installment','old_academic_year_expense','refund') COLLATE utf8_unicode_ci NOT NULL,
  `model_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `value` float NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `installment_id` int(11) DEFAULT NULL,
  `installment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_count` int(11) DEFAULT NULL,
  `is_refund` int(11) DEFAULT 0,
  `refund_id` int(11) DEFAULT NULL,
  `academic_year_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account_payments`
--

INSERT INTO `account_payments` (`id`, `date`, `model_type`, `model_id`, `student_id`, `value`, `user_id`, `store_id`, `installment_id`, `installment_type`, `service_count`, `is_refund`, `refund_id`, `academic_year_id`, `created_at`, `updated_at`) VALUES
(1, '2020-09-28', 'academic_year_expense', 1, 2, 100, 1, 1, NULL, NULL, NULL, 1, 80, 1, '2020-09-28 14:25:52', '2020-10-07 09:37:13'),
(2, '2020-09-28', 'academic_year_expense', 2, 2, 100, 1, 3, NULL, NULL, NULL, 0, NULL, 1, '2020-09-28 14:25:52', '2020-09-28 14:25:52'),
(3, '2020-09-28', 'academic_year_expense', 1, 1, 100, 1, 1, NULL, NULL, NULL, 1, 79, 1, '2020-09-28 15:02:39', '2020-10-07 09:33:18'),
(4, '2020-09-28', 'academic_year_expense', 2, 1, 100, 1, 3, NULL, NULL, NULL, 0, NULL, 1, '2020-09-28 15:02:39', '2020-09-28 15:02:39'),
(5, '2020-09-28', 'academic_year_expense', 5, 1, 185, 1, 2, NULL, NULL, NULL, 0, NULL, 1, '2020-09-28 15:06:57', '2020-09-28 15:06:57'),
(6, '2020-09-28', 'academic_year_expense', 6, 1, 1500, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-09-28 15:06:57', '2020-09-28 15:06:57'),
(8, '2020-09-28', 'academic_year_expense', 5, 2, 185, 1, 2, 8, NULL, NULL, 0, NULL, 1, '2020-09-28 15:38:43', '2020-09-28 15:38:43'),
(9, '2020-09-28', 'academic_year_expense', 6, 2, 500, 1, 1, 8, NULL, NULL, 0, NULL, 1, '2020-09-28 15:38:44', '2020-09-28 15:38:44'),
(10, '2020-09-28', 'academic_year_expense', 6, 2, 500, 1, 1, 7, NULL, NULL, 0, NULL, 1, '2020-09-28 15:45:56', '2020-09-28 15:45:56'),
(12, '2020-09-28', 'academic_year_expense', 6, 2, 500, 1, 1, 9, NULL, NULL, 0, NULL, 1, '2020-09-28 15:49:47', '2020-09-28 15:49:47'),
(13, '2020-09-28', 'academic_year_expense', 1, 3, 100, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-09-28 17:09:33', '2020-09-28 17:09:33'),
(14, '2020-09-28', 'academic_year_expense', 2, 3, 100, 1, 3, NULL, NULL, NULL, 0, NULL, 1, '2020-09-28 17:09:34', '2020-09-28 17:09:34'),
(15, '2020-09-28', 'academic_year_expense', 5, 3, 185, 1, 2, NULL, NULL, NULL, 0, NULL, 1, '2020-09-28 17:34:04', '2020-09-28 17:34:04'),
(16, '2020-09-28', 'academic_year_expense', 6, 3, 1500, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-09-28 17:34:05', '2020-09-28 17:34:05'),
(17, '2020-09-28', 'academic_year_expense', 1, 4, 100, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-09-28 17:52:02', '2020-09-28 17:52:02'),
(18, '2020-09-28', 'academic_year_expense', 2, 4, 100, 1, 3, NULL, NULL, NULL, 0, NULL, 1, '2020-09-28 17:52:03', '2020-09-28 17:52:03'),
(19, '2020-09-28', 'academic_year_expense', 5, 4, 85, 1, 2, 10, NULL, NULL, 0, NULL, 1, '2020-09-28 18:03:05', '2020-09-28 18:03:05'),
(20, '2020-09-28', 'academic_year_expense', 6, 4, 85, 1, 1, 10, NULL, NULL, 0, NULL, 1, '2020-09-28 18:03:06', '2020-09-28 18:03:06'),
(21, '2020-09-28', 'academic_year_expense', 5, 4, 100, 1, 2, 11, NULL, NULL, 0, NULL, 1, '2020-09-28 18:03:33', '2020-09-28 18:03:33'),
(22, '2020-09-28', 'academic_year_expense', 6, 4, 100, 1, 1, 11, NULL, NULL, 0, NULL, 1, '2020-09-28 18:03:34', '2020-09-28 18:03:34'),
(23, '2020-09-29', 'academic_year_expense', 1, 7, 100, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-09-29 05:11:00', '2020-09-29 05:11:00'),
(24, '2020-09-29', 'academic_year_expense', 2, 7, 100, 1, 3, NULL, NULL, NULL, 0, NULL, 1, '2020-09-29 05:11:01', '2020-09-29 05:11:01'),
(25, '2020-09-29', 'academic_year_expense', 8, 7, 100, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-09-29 05:11:01', '2020-09-29 05:11:01'),
(26, '2020-09-29', 'academic_year_expense', 1, 6, 100, 1, 1, NULL, NULL, NULL, 1, 81, 1, '2020-09-29 06:08:34', '2020-10-07 09:39:30'),
(28, '2020-09-29', 'academic_year_expense', 2, 8, 100, 1, 3, NULL, NULL, NULL, 0, NULL, 1, '2020-09-29 06:13:57', '2020-09-29 06:13:57'),
(29, '2020-09-29', 'academic_year_expense', 5, 8, 185, 1, 2, 18, NULL, NULL, 0, NULL, 1, '2020-09-29 06:15:26', '2020-09-29 06:15:26'),
(30, '2020-09-29', 'academic_year_expense', 6, 8, 500, 1, 1, 18, NULL, NULL, 0, NULL, 1, '2020-09-29 06:15:26', '2020-09-29 06:15:26'),
(31, '2020-09-29', 'academic_year_expense', 5, 7, 185, 1, 2, 16, NULL, NULL, 0, NULL, 1, '2020-09-29 09:44:21', '2020-09-29 09:44:21'),
(32, '2020-09-29', 'academic_year_expense', 6, 7, 500, 1, 1, 16, NULL, NULL, 0, NULL, 1, '2020-09-29 09:44:21', '2020-09-29 09:44:21'),
(33, '2020-09-29', 'academic_year_expense', 6, 4, 100, 1, 1, 12, NULL, NULL, 0, NULL, 1, '2020-09-29 09:45:49', '2020-09-29 09:45:49'),
(34, '2020-09-29', 'academic_year_expense', 5, 6, 185, 1, 2, NULL, NULL, NULL, 0, NULL, 1, '2020-09-29 09:52:51', '2020-09-29 09:52:51'),
(35, '2020-09-29', 'academic_year_expense', 6, 6, 1500, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-09-29 09:52:52', '2020-09-29 09:52:52'),
(36, '2020-09-29', 'academic_year_expense', 6, 4, 400, 1, 1, 13, NULL, NULL, 0, NULL, 1, '2020-09-29 09:55:06', '2020-09-29 09:55:06'),
(37, '2020-09-29', 'academic_year_expense', 1, 5, 100, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-09-29 10:02:10', '2020-09-29 10:02:10'),
(38, '2020-09-29', 'academic_year_expense', 8, 5, 100, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-09-29 10:02:11', '2020-09-29 10:02:11'),
(39, '2020-09-29', 'academic_year_expense', 9, 5, 100, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-09-29 10:02:11', '2020-09-29 10:02:11'),
(40, '2020-09-29', 'academic_year_expense', 1, 9, 100, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-09-29 10:04:58', '2020-09-29 10:04:58'),
(41, '2020-09-29', 'academic_year_expense', 2, 9, 100, 1, 3, NULL, NULL, NULL, 0, NULL, 1, '2020-09-29 10:04:59', '2020-09-29 10:04:59'),
(44, '2020-10-03', 'installment', NULL, 11, 1000, 1, 1, 20, NULL, NULL, 0, NULL, 1, '2020-10-03 10:11:37', '2020-10-03 10:11:37'),
(45, '2020-10-03', 'installment', NULL, 11, 1000, 1, 1, 21, NULL, NULL, 0, NULL, 1, '2020-10-03 10:27:57', '2020-10-03 10:27:57'),
(46, '2020-10-03', 'installment', NULL, 11, 1000, 1, 1, 22, NULL, NULL, 0, NULL, 1, '2020-10-03 10:28:46', '2020-10-03 10:28:46'),
(48, '2020-10-05', 'academic_year_expense', 15, 14, 2000, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-10-05 05:09:39', '2020-10-05 05:09:39'),
(49, '2020-10-05', 'academic_year_expense', 10, 13, 110, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-10-05 05:11:57', '2020-10-05 05:11:57'),
(50, '2020-10-05', 'academic_year_expense', 11, 13, 120, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-10-05 05:11:58', '2020-10-05 05:11:58'),
(51, '2020-10-05', 'academic_year_expense', 14, 13, 385, 1, 1, 23, NULL, NULL, 0, NULL, 1, '2020-10-05 05:13:46', '2020-10-05 05:13:46'),
(52, '2020-10-05', 'academic_year_expense', 15, 13, 385, 1, 1, 23, NULL, NULL, 0, NULL, 1, '2020-10-05 05:13:46', '2020-10-05 05:13:46'),
(53, '2020-10-05', 'installment', NULL, 15, 1000, 1, 1, 25, NULL, NULL, 0, NULL, 1, '2020-10-05 05:20:17', '2020-10-05 05:20:17'),
(54, '2020-10-06', 'academic_year_expense', 1, 16, 100, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-10-06 06:40:25', '2020-10-06 06:40:25'),
(55, '2020-10-06', 'academic_year_expense', 5, 16, 185, 1, 2, 28, NULL, NULL, 0, NULL, 1, '2020-10-06 07:03:08', '2020-10-06 07:03:08'),
(56, '2020-10-06', 'academic_year_expense', 6, 16, 185, 1, 1, 28, NULL, NULL, 0, NULL, 1, '2020-10-06 07:03:09', '2020-10-06 07:03:09'),
(57, '2020-10-06', 'academic_year_expense', 6, 16, 500, 1, 1, 29, NULL, NULL, 0, NULL, 1, '2020-10-06 07:04:24', '2020-10-06 07:04:24'),
(58, '2020-10-06', 'academic_year_expense', 1, 17, 100, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-10-06 10:06:07', '2020-10-06 10:06:07'),
(59, '2020-10-06', 'academic_year_expense', 8, 17, 100, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-10-06 10:06:07', '2020-10-06 10:06:07'),
(60, '2020-10-06', 'academic_year_expense', 9, 17, 100, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-10-06 10:06:08', '2020-10-06 10:06:08'),
(61, '2020-10-06', 'academic_year_expense', 5, 17, 185, 1, 2, 31, NULL, NULL, 0, NULL, 1, '2020-10-06 10:08:47', '2020-10-06 10:08:47'),
(62, '2020-10-06', 'academic_year_expense', 6, 17, 500, 1, 1, 31, NULL, NULL, 0, NULL, 1, '2020-10-06 10:08:48', '2020-10-06 10:08:48'),
(63, '2020-10-06', 'old_academic_year_expense', NULL, 18, 2000, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-10-06 10:50:21', '2020-10-06 10:50:21'),
(64, '2020-10-06', 'old_academic_year_expense', NULL, 19, 1500, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-10-06 10:58:58', '2020-10-06 10:58:58'),
(65, '2020-10-06', 'academic_year_expense', 14, 19, 385, 1, 1, 33, NULL, NULL, 0, NULL, 1, '2020-10-06 11:00:51', '2020-10-06 11:00:51'),
(66, '2020-10-06', 'academic_year_expense', 15, 19, 385, 1, 1, 33, NULL, NULL, 0, NULL, 1, '2020-10-06 11:00:52', '2020-10-06 11:00:52'),
(71, '2020-10-07', 'service', 1, 14, 50, 1, 1, NULL, NULL, 1, 0, NULL, 1, '2020-10-07 07:17:25', '2020-10-07 07:17:25'),
(72, '2020-10-07', 'service', 4, 14, 0, 1, 4, NULL, NULL, 1, 0, NULL, 1, '2020-10-07 07:17:25', '2020-10-07 07:17:25'),
(73, '2020-10-07', 'academic_year_expense', 1, 12, 100, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-10-07 07:28:04', '2020-10-07 07:28:04'),
(74, '2020-10-07', 'service', 4, 12, 0, 1, 4, NULL, NULL, 2, 0, NULL, 1, '2020-10-07 07:38:45', '2020-10-07 07:38:45'),
(75, '2020-10-07', 'service', 1, 12, 50, 1, 1, NULL, NULL, 1, 0, NULL, 1, '2020-10-07 07:38:45', '2020-10-07 07:38:45'),
(79, '2020-10-07', 'refund', 3, 1, 100, 1, 1, NULL, NULL, NULL, 1, NULL, 1, '2020-10-07 09:33:18', '2020-10-07 09:33:18'),
(80, '2020-10-07', 'refund', 1, 2, 100, 1, 1, NULL, NULL, NULL, 1, NULL, 1, '2020-10-07 09:37:12', '2020-10-07 09:37:12'),
(81, '2020-10-07', 'refund', 26, 6, 100, 1, 1, NULL, NULL, NULL, 1, NULL, 1, '2020-10-07 09:39:30', '2020-10-07 09:39:30'),
(82, '2020-10-07', 'refund', 27, 8, 100, 1, 1, NULL, NULL, NULL, 1, NULL, 1, '2020-10-07 09:40:47', '2020-10-07 09:40:47'),
(84, '2020-10-05', 'academic_year_expense', 14, 14, 385, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-10-07 11:11:04', '2020-10-07 11:11:04'),
(85, '2020-10-07', 'service', 6, 13, 100, 1, 4, NULL, NULL, 1, 0, NULL, 1, '2020-10-07 11:30:37', '2020-10-07 11:30:37'),
(86, '2020-10-10', 'old_academic_year_expense', NULL, 21, 1000, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-10-10 09:13:59', '2020-10-10 09:13:59'),
(87, '2020-10-11', 'academic_year_expense', 1, 23, 100, 1, 1, NULL, NULL, NULL, 1, 89, 1, '2020-10-11 11:40:02', '2020-10-11 11:49:15'),
(89, '2020-10-11', 'refund', 87, 23, 100, 1, 1, NULL, NULL, NULL, 1, NULL, 1, '2020-10-11 11:49:15', '2020-10-11 11:49:15'),
(90, '2020-10-12', 'academic_year_expense', 1, 24, 100, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-10-12 11:40:05', '2020-10-12 11:40:05'),
(91, '2020-10-12', 'academic_year_expense', 2, 24, 100, 1, 3, NULL, NULL, NULL, 0, NULL, 1, '2020-10-12 11:40:05', '2020-10-12 11:40:05'),
(92, '2020-10-12', 'service', 1, 24, 50, 1, 1, NULL, NULL, 1, 0, NULL, 1, '2020-10-12 12:05:57', '2020-10-12 12:05:57'),
(93, '2020-10-12', 'service', 4, 24, 0, 1, 4, NULL, NULL, 1, 0, NULL, 1, '2020-10-12 12:43:28', '2020-10-12 12:43:28'),
(94, '2020-10-12', 'academic_year_expense', 5, 24, 185, 1, 2, 35, 'new', NULL, 0, NULL, 1, '2020-10-12 12:44:58', '2020-10-12 12:44:58'),
(95, '2020-10-12', 'academic_year_expense', 6, 24, 815, 1, 1, 35, 'new', NULL, 0, NULL, 1, '2020-10-12 12:44:58', '2020-10-12 12:44:58'),
(96, '2020-10-12', 'academic_year_expense', 10, 25, 110, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-10-12 12:50:44', '2020-10-12 12:50:44'),
(97, '2020-10-12', 'service', 4, 25, 0, 1, 4, NULL, NULL, 1, 0, NULL, 1, '2020-10-12 12:51:18', '2020-10-12 12:51:18'),
(98, '2020-10-12', 'academic_year_expense', 14, 25, 385, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-10-12 12:51:29', '2020-10-12 12:51:29'),
(99, '2020-10-12', 'academic_year_expense', 15, 25, 2000, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-10-12 12:51:30', '2020-10-12 12:51:30'),
(100, '2020-10-12', 'installment', NULL, 26, 5000, 1, 1, 37, 'old', NULL, 0, NULL, 1, '2020-10-12 13:31:15', '2020-10-12 13:31:15'),
(101, '2020-10-12', 'installment', NULL, 26, 1000, 1, 1, 38, 'old', NULL, 0, NULL, 1, '2020-10-12 13:40:47', '2020-10-12 13:40:47'),
(102, '2020-10-12', 'academic_year_expense', 14, 26, 385, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-10-12 13:40:55', '2020-10-12 13:40:55'),
(103, '2020-10-12', 'academic_year_expense', 15, 26, 2000, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-10-12 13:40:56', '2020-10-12 13:40:56'),
(104, '2020-10-12', 'service', 5, 26, 50, 1, 4, NULL, NULL, 1, 0, NULL, 1, '2020-10-12 13:41:38', '2020-10-12 13:41:38'),
(105, '2020-10-12', 'service', 4, 26, 0, 1, 4, NULL, NULL, 1, 0, NULL, 1, '2020-10-12 13:41:38', '2020-10-12 13:41:38'),
(106, '2020-10-12', 'service', 1, 26, 50, 1, 1, NULL, NULL, 1, 1, 107, 1, '2020-10-12 13:41:38', '2020-10-12 13:44:59'),
(107, '2020-10-12', 'refund', 106, 26, 50, 1, 1, NULL, NULL, NULL, 1, NULL, 1, '2020-10-12 13:44:59', '2020-10-12 13:44:59'),
(108, '2020-10-13', 'service', 1, 24, 50, 1, 1, NULL, NULL, 1, 0, NULL, 1, '2020-10-13 04:33:35', '2020-10-13 04:33:35'),
(109, '2020-10-13', 'service', 1, 24, 50, 1, 1, NULL, NULL, 1, 0, NULL, 1, '2020-10-13 04:35:11', '2020-10-13 04:35:11'),
(110, '2020-10-13', 'service', 1, 24, 50, 1, 1, NULL, NULL, 1, 0, NULL, 1, '2020-10-13 04:54:51', '2020-10-13 04:54:51'),
(111, '2020-10-13', 'service', 1, 24, 50, 1, 1, NULL, NULL, 1, 0, NULL, 1, '2020-10-13 04:55:49', '2020-10-13 04:55:49'),
(112, '2020-10-13', 'academic_year_expense', 1, 29, 100, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-10-13 06:46:50', '2020-10-13 06:46:50'),
(113, '2020-10-13', 'service', 3, 29, 100, 1, 4, NULL, NULL, 1, 0, NULL, 1, '2020-10-13 06:58:18', '2020-10-13 06:58:18'),
(114, '2020-10-13', 'academic_year_expense', 1, 30, 100, 1, 1, NULL, NULL, NULL, 0, NULL, 1, '2020-10-13 07:02:02', '2020-10-13 07:02:02'),
(115, '2020-10-13', 'academic_year_expense', 2, 30, 100, 1, 3, NULL, NULL, NULL, 0, NULL, 1, '2020-10-13 07:02:02', '2020-10-13 07:02:02'),
(116, '2020-10-13', 'service', 1, 30, 50, 1, 1, NULL, NULL, 1, 0, NULL, 1, '2020-10-13 07:03:18', '2020-10-13 07:03:18'),
(117, '2020-10-13', 'service', 3, 30, 100, 1, 4, NULL, NULL, 1, 0, NULL, 1, '2020-10-13 07:03:19', '2020-10-13 07:03:19'),
(118, '2020-10-13', 'service', 2, 30, 50, 1, 1, NULL, NULL, 1, 0, NULL, 1, '2020-10-13 07:03:19', '2020-10-13 07:03:19'),
(119, '2020-10-13', 'service', 2, 30, 50, 1, 1, NULL, NULL, 1, 0, NULL, 1, '2020-10-13 07:08:04', '2020-10-13 07:08:04'),
(120, '2020-10-13', 'service', 1, 30, 50, 1, 1, NULL, NULL, 1, 0, NULL, 1, '2020-10-13 07:08:04', '2020-10-13 07:08:04'),
(121, '2020-10-13', 'academic_year_expense', 5, 29, 1685, 1, 2, NULL, NULL, NULL, 0, NULL, 1, '2020-10-13 07:18:17', '2020-10-13 07:18:17'),
(122, '2020-10-14', 'service', 3, 24, 100, 1, 4, NULL, NULL, 1, 0, NULL, 1, '2020-10-14 05:18:05', '2020-10-14 05:18:05'),
(123, '2020-10-14', 'service', 6, 24, 100, 1, 4, NULL, NULL, 1, 0, NULL, 1, '2020-10-14 05:18:06', '2020-10-14 05:18:06');

-- --------------------------------------------------------

--
-- Table structure for table `account_registeration_status_expenses`
--

CREATE TABLE `account_registeration_status_expenses` (
  `id` int(11) NOT NULL,
  `registeration_status_id` int(11) NOT NULL,
  `expenses_maincategory_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account_registeration_status_expenses`
--

INSERT INTO `account_registeration_status_expenses` (`id`, `registeration_status_id`, `expenses_maincategory_id`, `created_at`, `updated_at`) VALUES
(1, 9, 1, '2020-08-23 10:05:52', '2020-08-23 10:05:52'),
(2, 3, 1, '2020-08-23 10:06:25', '2020-08-23 10:06:25'),
(3, 3, 2, '2020-08-23 10:06:25', '2020-08-23 10:06:25'),
(4, 3, 3, '2020-08-23 10:06:25', '2020-08-23 10:06:25');

-- --------------------------------------------------------

--
-- Table structure for table `account_rewords`
--

CREATE TABLE `account_rewords` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` float NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account_rewords`
--

INSERT INTO `account_rewords` (`id`, `name`, `value`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'مكافة 1', 100, NULL, '2020-08-26 05:49:19', '2020-08-26 05:49:19'),
(2, 'مكافة 2', 50, NULL, '2020-08-26 05:49:42', '2020-08-26 05:49:42');

-- --------------------------------------------------------

--
-- Table structure for table `account_services`
--

CREATE TABLE `account_services` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` float NOT NULL,
  `except_level_id` int(11) DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `copy` tinyint(1) DEFAULT NULL,
  `repeat` tinyint(1) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `additional_value` float DEFAULT NULL,
  `installment_percent` int(11) DEFAULT NULL,
  `from_installment_id` int(11) DEFAULT NULL,
  `type` enum('wz','in') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_refund` int(11) DEFAULT 0,
  `is_in_store` tinyint(1) DEFAULT 0,
  `active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_academic_year_expense` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_services`
--

INSERT INTO `account_services` (`id`, `name`, `value`, `except_level_id`, `division_id`, `copy`, `repeat`, `store_id`, `additional_value`, `installment_percent`, `from_installment_id`, `type`, `is_refund`, `is_in_store`, `active`, `created_at`, `updated_at`, `is_academic_year_expense`) VALUES
(1, 'شهادة اثبات قيد', 50, NULL, NULL, 1, 1, 1, 0, NULL, NULL, 'wz', 1, 0, 1, '2020-09-08 08:29:21', '2020-10-10 10:11:45', NULL),
(2, 'شهادة تخرج', 50, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 'wz', 0, 0, 1, '2020-09-08 08:29:21', '2020-10-07 06:47:34', NULL),
(3, 'التماس اعادة رصد درجات', 100, NULL, NULL, 1, 1, 4, NULL, 0, 1, 'in', 1, 1, 1, '2020-09-26 17:01:05', '2020-10-14 05:05:27', NULL),
(4, 'افاده', 0, NULL, NULL, 1, 0, 4, NULL, NULL, NULL, 'in', 1, 1, 1, '2020-10-07 05:04:04', '2020-10-14 05:05:23', NULL),
(5, 'كرنيه بدل فاقد', 50, 1, NULL, 0, NULL, 4, NULL, 100, 1, 'wz', 1, 0, 1, '2020-10-07 05:06:12', '2020-10-14 05:22:34', NULL),
(6, 'كارنيه بدل فاقد 1', 100, NULL, NULL, 0, 0, 4, 0, 100, 1, 'in', 1, 1, 1, '2020-10-07 11:29:23', '2020-10-14 05:05:08', NULL),
(7, 'الاشتراك فى الاتوبيس ترم اول', 700, NULL, NULL, 1, 1, 4, NULL, 60, 1, 'in', 1, 0, 0, '2020-10-12 11:35:41', '2020-10-14 04:55:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `account_settings`
--

CREATE TABLE `account_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_settings`
--

INSERT INTO `account_settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'old balance store', '1', '2020-10-02 22:00:00', '2020-10-05 06:19:19'),
(2, NULL, '2', '2020-11-14 10:43:23', '2020-11-14 10:43:23');

-- --------------------------------------------------------

--
-- Table structure for table `account_stores`
--

CREATE TABLE `account_stores` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `init_balance` float NOT NULL,
  `balance` float NOT NULL,
  `notes` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account_stores`
--

INSERT INTO `account_stores` (`id`, `name`, `address`, `init_balance`, `balance`, `notes`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'خزنة شؤن الطلاب', NULL, 0, 28985, NULL, 1, '2020-08-22 18:18:23', '2020-10-13 07:08:04'),
(2, 'خزنة الوزاره', NULL, 0, 2240, NULL, 1, '2020-09-23 08:53:37', '2020-10-13 07:18:17'),
(3, 'خزنة التقدمات', NULL, 0, 200, NULL, 1, '2020-09-28 14:05:36', '2020-10-13 07:02:02'),
(4, 'خزنة المعهد', NULL, 0, 550, NULL, 1, '2020-10-07 05:02:30', '2020-10-14 05:18:06');

-- --------------------------------------------------------

--
-- Table structure for table `account_student_old_balances`
--

CREATE TABLE `account_student_old_balances` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `value` float NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_student_old_balances`
--

INSERT INTO `account_student_old_balances` (`id`, `student_id`, `value`, `notes`, `created_at`, `updated_at`) VALUES
(1, 11, 3000, NULL, '2020-10-03 09:53:52', '2020-10-03 09:53:52'),
(2, 15, 3000, NULL, '2020-10-05 05:17:31', '2020-10-05 05:56:51'),
(3, 18, 2000, NULL, '2020-10-06 10:47:24', '2020-10-06 10:48:54'),
(4, 19, 1500, NULL, '2020-10-06 10:55:06', '2020-10-06 10:55:06'),
(5, 20, 2000, 'مصاريف سابقه عن عام 2019', '2020-10-06 11:51:51', '2020-10-06 11:54:57'),
(6, 21, 1000, 'رسوم سابقه', '2020-10-10 09:13:13', '2020-10-10 09:13:13'),
(7, 26, 6000, 'رسوم  دراسيه  عن 2018 -2019', '2020-10-12 10:59:21', '2020-10-12 10:59:21'),
(8, 27, 4000, 'باقى رسوم سابقه عن عام2016-2017', '2020-10-13 06:28:49', '2020-10-13 06:28:49');

-- --------------------------------------------------------

--
-- Table structure for table `account_student_services`
--

CREATE TABLE `account_student_services` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_student_services`
--

INSERT INTO `account_student_services` (`id`, `service_id`, `student_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 4, 12, '2020-10-07 07:38:45', '2020-10-07 07:38:45'),
(3, 1, 12, '2020-10-07 07:38:46', '2020-10-07 07:38:46'),
(4, 6, 13, '2020-10-07 11:30:37', '2020-10-07 11:30:37'),
(5, 1, 23, '2020-10-11 11:41:41', '2020-10-11 11:41:41'),
(6, 1, 24, '2020-10-12 12:05:57', '2020-10-12 12:05:57'),
(7, 4, 24, '2020-10-12 12:43:28', '2020-10-12 12:43:28'),
(8, 4, 25, '2020-10-12 12:51:18', '2020-10-12 12:51:18'),
(9, 5, 26, '2020-10-12 13:41:38', '2020-10-12 13:41:38'),
(10, 4, 26, '2020-10-12 13:41:38', '2020-10-12 13:41:38'),
(11, 1, 26, '2020-10-12 13:41:38', '2020-10-12 13:41:38'),
(12, 1, 24, '2020-10-13 04:33:35', '2020-10-13 04:33:35'),
(13, 1, 24, '2020-10-13 04:35:11', '2020-10-13 04:35:11'),
(14, 1, 24, '2020-10-13 04:54:51', '2020-10-13 04:54:51'),
(15, 1, 24, '2020-10-13 04:55:49', '2020-10-13 04:55:49'),
(16, 3, 29, '2020-10-13 06:58:18', '2020-10-13 06:58:18'),
(17, 1, 30, '2020-10-13 07:03:19', '2020-10-13 07:03:19'),
(18, 3, 30, '2020-10-13 07:03:19', '2020-10-13 07:03:19'),
(19, 2, 30, '2020-10-13 07:03:19', '2020-10-13 07:03:19'),
(20, 2, 30, '2020-10-13 07:08:04', '2020-10-13 07:08:04'),
(21, 1, 30, '2020-10-13 07:08:04', '2020-10-13 07:08:04'),
(22, 3, 24, '2020-10-14 05:18:06', '2020-10-14 05:18:06'),
(23, 6, 24, '2020-10-14 05:18:06', '2020-10-14 05:18:06');

-- --------------------------------------------------------

--
-- Table structure for table `account_transformations`
--

CREATE TABLE `account_transformations` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `bank_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `value` float NOT NULL,
  `notes` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` enum('bank_to_store','store_to_bank') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account_transformations`
--

INSERT INTO `account_transformations` (`id`, `date`, `bank_id`, `store_id`, `value`, `notes`, `attachment`, `user_id`, `type`, `created_at`, `updated_at`) VALUES
(3, '2020-08-22', 3, 2, 500, NULL, NULL, 1, 'bank_to_store', '2020-08-22 19:58:40', '2020-08-22 19:58:40'),
(4, '2020-08-22', 3, 2, 100, NULL, NULL, 1, 'bank_to_store', '2020-08-22 20:00:06', '2020-08-22 20:00:06'),
(5, '2020-08-22', 3, 2, 100, NULL, NULL, 1, 'bank_to_store', '2020-08-22 20:00:50', '2020-08-22 20:00:50'),
(6, '2020-08-22', 3, 2, 100, NULL, NULL, 1, 'bank_to_store', '2020-08-22 20:01:26', '2020-08-22 20:01:26'),
(7, '2020-08-22', 3, 2, 100, NULL, NULL, 1, 'bank_to_store', '2020-08-22 20:02:44', '2020-08-22 20:02:44'),
(8, '2020-08-22', 3, 2, 100, NULL, NULL, 1, 'bank_to_store', '2020-08-22 20:03:25', '2020-08-22 20:03:25'),
(9, '2020-08-22', 3, 2, 100, NULL, NULL, 1, 'bank_to_store', '2020-08-22 20:06:33', '2020-08-22 20:06:33'),
(10, '2020-08-22', 3, 2, 100, NULL, NULL, 1, 'bank_to_store', '2020-08-22 20:07:16', '2020-08-22 20:07:16'),
(11, '2020-08-22', 3, 2, 100, NULL, NULL, 1, 'store_to_bank', '2020-08-22 20:07:32', '2020-08-22 20:07:32'),
(12, '2020-08-24', 3, 2, 200000, NULL, NULL, 1, 'bank_to_store', '2020-08-24 11:14:17', '2020-08-24 11:14:17'),
(13, '2020-08-25', 4, 2, 1000, NULL, 'img_sem_elements.gif', 1, 'bank_to_store', '2020-08-25 05:38:14', '2020-08-25 05:38:14'),
(14, '2020-08-25', 4, 2, 100, NULL, 'uploads/transformations/159834216872295.png', 1, 'bank_to_store', '2020-08-25 07:56:08', '2020-08-25 05:56:08'),
(15, '2020-08-25', 4, 2, 100, NULL, 'uploads/transformations/159834158063075.gif', 1, 'bank_to_store', '2020-08-25 07:46:20', '2020-08-25 05:46:20');

-- --------------------------------------------------------

--
-- Table structure for table `account_trees`
--

CREATE TABLE `account_trees` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_trees`
--

INSERT INTO `account_trees` (`id`, `parent`, `icon`, `type`, `text`, `created_at`, `updated_at`) VALUES
('j1_1', '#', 'fa  fa-folder-o', 'default', 'ايرادات', '2018-09-10 16:50:19', '2018-09-10 16:50:19'),
('j1_2', '#', 'fa  fa-folder-o', 'default', 'مصروفات', '2018-09-10 16:50:20', '2018-09-10 16:50:20'),
('j1_6', 'j1_2', 'fa  fa-folder-o', 'default', 'عربيه', '2019-01-30 21:08:34', '2019-01-30 21:08:38'),
('j1_8', 'j1_2', 'fa  fa-folder-o', 'default', 'سلفه', '2019-02-05 23:09:51', '2019-02-05 23:09:55'),
('j1_9', 'j1_2', 'fa  fa-folder-o', 'default', 'شهريه', '2019-02-05 23:09:58', '2019-02-05 23:10:11'),
('j1_10', 'j1_2', 'fa  fa-folder-o', 'default', 'صدقه', '2019-02-10 22:45:04', '2019-02-10 22:45:12'),
('j1_14', 'j1_2', 'fa  fa-folder-o', 'default', 'ادوات مكتبيه', '2019-02-12 23:38:50', '2019-02-12 23:39:06'),
('j1_15', 'j1_2', 'fa  fa-folder-o', 'default', 'مواصلات', '2019-02-12 23:58:51', '2019-02-12 23:58:56'),
('j1_16', 'j1_2', 'fa  fa-folder-o', 'default', 'عمله', '2019-02-23 17:27:17', '2019-02-23 17:27:21'),
('j1_17', 'j1_2', 'fa  fa-folder-o', 'default', 'صنفره', '2019-02-23 17:27:24', '2019-02-23 17:27:28'),
('j1_18', 'j1_2', 'fa  fa-folder-o', 'default', 'مصروفات عامة', '2019-02-23 23:54:26', '2019-02-23 23:54:54'),
('j1_19', 'j1_1', 'fa  fa-folder-o', 'default', 'صرافه', '2019-02-24 17:49:07', '2019-02-24 17:49:12'),
('j1_5', 'j1_2', 'fa  fa-folder-o', 'default', 'مرتبات', '2019-02-28 22:05:24', '2019-02-28 22:05:35'),
('j1_21', 'j1_2', 'fa  fa-folder-o', 'default', 'اكراميات', '2019-02-28 22:33:22', '2019-02-28 22:33:35'),
('j1_24', 'j1_2', 'fa  fa-folder-o', 'default', 'ايجار', '2019-03-03 22:47:50', '2019-03-03 22:48:01'),
('j1_25', 'j1_1', 'fa  fa-folder-o', 'default', 'خرده', '2019-03-03 23:34:32', '2019-03-03 23:34:36'),
('j1_29', 'j1_2', 'fa  fa-folder-o', 'default', 'تصنيع', '2019-03-07 21:41:39', '2019-03-07 21:41:49'),
('j1_7', 'j1_2', 'fa  fa-folder-o', 'default', 'تامينات', '2019-03-09 20:28:29', '2019-03-09 20:28:35'),
('j1_32', 'j1_1', 'fa  fa-folder-o', 'default', 'عربيه', '2019-03-14 23:18:22', '2019-03-14 23:18:27'),
('j1_35', 'j1_1', 'fa  fa-folder-o', 'default', 'مردود نقديه', '2019-03-17 23:41:16', '2019-03-17 23:41:36'),
('j1_20', 'j1_2', 'fa  fa-folder-o', 'default', 'منظفات', '2019-03-27 17:24:13', '2019-03-27 17:24:59'),
('j1_4', 'j1_2', 'fa  fa-folder-o', 'default', 'ضرائب', '2019-09-05 01:15:28', '2019-09-05 01:15:39'),
('j1_11', 'j1_2', 'fa  fa-folder-o', 'default', 'صيانة', '2019-10-28 22:08:37', '2019-10-28 22:08:45'),
('j1_12', 'j1_2', 'fa  fa-folder-o', 'default', 'نقل', '2020-02-11 22:46:26', '2020-02-11 22:46:31'),
('j1_13', 'j1_2', 'fa  fa-folder-o', 'default', 'ضرائب', '2020-07-28 20:38:10', '2020-07-28 20:38:20');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality_id` int(10) UNSIGNED DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `academic_years_id` int(10) UNSIGNED DEFAULT NULL,
  `registeration_date` date DEFAULT NULL,
  `qualification_types_id` int(10) UNSIGNED DEFAULT NULL,
  `qualification_id` int(11) DEFAULT NULL,
  `qualification_date` date DEFAULT NULL,
  `qualification_set_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_1_id` int(10) UNSIGNED DEFAULT NULL,
  `language_2_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `government_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `religion` enum('muslim','christian') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `military_status_id` int(10) UNSIGNED DEFAULT NULL,
  `military_area_id` int(10) UNSIGNED DEFAULT NULL,
  `national_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade` float DEFAULT NULL,
  `triple_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_status_id` int(10) UNSIGNED DEFAULT NULL,
  `registration_method_id` int(10) UNSIGNED DEFAULT NULL,
  `national_id_date` date DEFAULT NULL,
  `national_id_place` int(10) UNSIGNED DEFAULT NULL,
  `parent_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_national_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_job_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relative_relation_id` int(10) UNSIGNED DEFAULT NULL,
  `personal_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acceptance_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acceptance_date` date DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `writen_by` int(10) UNSIGNED DEFAULT NULL,
  `case_constraint_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `name`, `code`, `email`, `nationality_id`, `gender`, `academic_years_id`, `registeration_date`, `qualification_types_id`, `qualification_id`, `qualification_date`, `qualification_set_number`, `language_1_id`, `language_2_id`, `city_id`, `government_id`, `country_id`, `religion`, `military_status_id`, `military_area_id`, `national_id`, `password`, `grade`, `triple_number`, `address`, `birth_address`, `phone_1`, `registration_status_id`, `registration_method_id`, `national_id_date`, `national_id_place`, `parent_name`, `parent_national_id`, `parent_job_id`, `parent_address`, `parent_phone`, `relative_relation_id`, `personal_photo`, `acceptance_code`, `acceptance_date`, `level_id`, `status`, `writen_by`, `case_constraint_id`, `created_at`, `updated_at`) VALUES
(10, 'محمد رفعت', '2020-08-25-07:46:59-79440', '', 1, 'male', 11, '2020-08-08', 7, 1, '2020-08-01', '1250', 1, 2, 6, 3, 1, 'muslim', 1, 1, '58742251232444', '1250', 400, '123456789', 'Cairo - Giza', 'Cairo', '01100968182', 3, 3, '2013-08-12', 1, 'رفعت', '45871254782', 2, 'القاهرة', '01100968184', NULL, '/uploads/applications/10/159834161944785.jpeg', '2540', '2020-08-27', 2, '1', 1, NULL, '2020-08-25 13:46:59', '2020-08-25 21:23:55'),
(11, 'مريم محمد ابوالخير محمد عبدالصمد', '2020-09-22-22:15:19-98306', 'mariam@fa-hists.edu.eg', NULL, '', 1, '2020-09-21', 1, 1, '2020-07-21', '20845', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '29908200103123', '20845', 541, NULL, NULL, NULL, NULL, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/applications/11/160081291939235.webp', '2540', '2020-08-27', 1, '0', 1, 1, '2020-08-25 15:06:36', '2020-09-22 20:15:19'),
(12, 'على ماهر معوض محمد', '2020-09-22-21:51:05-73377', 'ee@email.com', NULL, 'male', 1, '2020-09-05', 1, 1, '2020-07-15', '20565', NULL, NULL, NULL, NULL, NULL, 'muslim', NULL, NULL, '29905022201974', '20565', 420, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/applications/12/159836533221237.jpeg', '2540', '2020-08-27', 1, '1', 1, 2, '2020-08-25 15:16:01', '2020-09-22 21:22:47'),
(14, 'وسام جيد نجاح توفيق', '2020-08-29-11:48:43-34080', 'wessam@email.com', 1, '', 11, '2020-08-22', 16, 1, '2020-08-01', '5050', 1, 2, 4, 3, 1, '', 2, 1, '20000501805019', '102030', 440, '123456789', 'بنى سويف - الواسطى', 'بنى سويف - الواسطى', '011542541211', 3, 2, '2018-08-01', 3, 'جيد', '19640805214566', 6, 'بنى سويف - الواسطى', '01245789632', NULL, '/uploads/applications/14/159870172398851.jpeg', '44404', '2020-08-27', 1, NULL, 1, 11, '2020-08-29 16:31:12', '2020-08-29 17:48:43'),
(15, 'على ابراهيم على', '2020-08-29-10:41:58-55841', 'ali@gmail.com', 1, '', 11, '2020-08-08', 16, 1, '2020-08-22', '2101400', 1, 2, 9, 3, 1, '', NULL, NULL, '19990201055855', '2012325', 500, NULL, 'بنى سويف - الفشن', 'بنى سويف - الفشن', '01020305060', 2, 2, '2020-08-20', 3, 'ابراهيم على صابر', '1969020506666', 4, 'بنى سويف - الفشن', '012548774410', NULL, '/uploads/applications/15/159869751816476.jpeg', '102020', '2020-08-21', NULL, NULL, 1, 2, '2020-08-29 16:38:38', '2020-08-29 16:41:58'),
(16, 'امال ماهر عباس', '2020-08-29-10:46:51-35673', 'amal@gmail.com', 1, '', 11, '2020-08-21', 16, 1, '2020-08-13', '102030', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '23232323232323', '255587', 6000, NULL, 'اى كلام', 'اى كلام', NULL, 2, 2, '2020-08-20', 8, 'اى كلام', '223234343242424', 3, 'اى كلام', 'اى كلام', NULL, NULL, '34343434', '2020-08-21', 1, NULL, 1, 10, '2020-08-29 16:46:51', '2020-08-29 16:46:51'),
(17, 'هالة فهمى', '2020-08-29-11:43:47-29473', 'hala@gmail.com', 1, '', 11, '2020-08-28', 16, 1, '2020-08-27', '3210', 1, 2, 8, 3, 1, '', NULL, NULL, '322333323344343', '123112132', 500, NULL, 'بنى سويف - الفشن', 'بنى سويف - الفشن', '2323', 2, 8, '2020-08-16', 6, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/applications/17/159870142798562.jpg', '2323', '2020-08-11', 1, NULL, 1, 12, '2020-08-29 17:43:47', '2020-08-29 17:43:47'),
(19, 'محمد طارق محمد اسماعيل', '2020-08-29-11:59:54-86411', 'touriq@email.com', NULL, '', 11, '2020-09-04', 16, 1, '2020-08-01', '741852', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '741852963789123', '45689', 450, NULL, 'بنى سويف', 'بنى سويف', NULL, 3, 2, '2020-08-07', 3, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/applications/19/159870239429792.png', '7441852963', '2020-08-06', 1, '1', 1, 9, '2020-08-29 17:59:54', '2020-08-29 19:16:22'),
(20, 'مختار عبد الله محمد', '2020-09-01-09:44:57-67354', 'admin@adamin.com', NULL, '', 11, '2020-08-21', 19, 4, '2020-08-16', '222222000', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '858453564365', '25550', 710, NULL, '22458', NULL, NULL, 4, 8, '2020-08-01', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8080', '2020-08-14', 1, NULL, 1, 12, '2020-08-29 21:14:41', '2020-09-01 15:44:57'),
(21, 'mohamed osama', '2020-09-21-18:01:28-24095', NULL, NULL, NULL, 1, NULL, 1, 1, '2020-09-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123456789', NULL, 220, NULL, NULL, NULL, NULL, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, '2020-09-21 16:01:28', '2020-09-21 16:01:28'),
(22, 'Ahmed taha', '2020-09-21-18:23:48-68351', NULL, NULL, NULL, 1, NULL, 2, 1, '2020-09-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123456789', NULL, 380, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, '2020-09-21 16:23:48', '2020-09-21 16:23:48'),
(23, 'معتز اشرف', '2020-09-22-09:58:38-15766', NULL, NULL, NULL, 1, NULL, 1, 1, '2020-09-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123456789', NULL, 226, NULL, NULL, NULL, NULL, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/applications/23/160081504347791.jpeg', NULL, NULL, 1, '1', 1, 1, '2020-09-21 16:26:46', '2020-09-22 20:50:43'),
(24, 'هانى جمالى', '2020-09-23-10:07:50-89584', NULL, NULL, NULL, 1, NULL, 1, 1, '2020-09-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin@admin.com', '123456', 220, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, '2020-09-23 08:07:51', '2020-09-23 08:07:51'),
(25, 'احمد فؤاد', '2020-09-23-10:36:11-45010', NULL, NULL, 'male', 1, NULL, 1, 1, '2020-09-23', NULL, NULL, NULL, NULL, NULL, NULL, 'muslim', NULL, NULL, 'admin@admin.com', '123456', 220, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, '2020-09-23 08:36:11', '2020-09-23 08:36:11');

-- --------------------------------------------------------

--
-- Table structure for table `application_attachment`
--

CREATE TABLE `application_attachment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `application_required`
--

CREATE TABLE `application_required` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `application_required`
--

INSERT INTO `application_required` (`id`, `name`, `display_name`, `required`, `created_at`, `updated_at`) VALUES
(2, 'address', 'عنوان الطالب', 0, '2020-08-05 06:53:19', '2020-09-28 07:41:43'),
(4, 'national_id', 'رقم البطاقة الشخصية', 0, '2020-08-05 06:53:19', '2020-09-28 07:41:43'),
(5, 'national_id_date', 'تاريخ اصدار البطاقة الشخصية', 0, '2020-08-05 06:53:19', '2020-09-28 07:41:44'),
(6, 'national_id_place', 'مكان اصدار البطاقة الشخصية', 0, '2020-08-05 06:53:19', '2020-09-28 07:41:44'),
(7, 'triple_number', 'الرقم الثلاثى', 0, '2020-08-05 06:53:19', '2020-09-28 07:41:44'),
(8, 'registeration_date', 'تاريخ تقديم طلب الالتحاق', 0, '2020-08-05 06:53:19', '2020-09-28 07:41:44'),
(9, 'military_area_id', 'جهة التجنيد', 0, '2020-08-05 06:53:19', '2020-09-28 07:41:44'),
(10, 'military_status_id', 'حالة التجنيد', 0, '2020-08-05 06:53:19', '2020-09-28 07:41:45'),
(14, 'qualification_date', 'تاريخ الحصول على شهادة المؤهل', 0, '2020-08-05 06:53:19', '2020-09-28 07:41:45'),
(15, 'qualification_set_number', 'رقم الجلوس', 0, '2020-08-05 06:53:19', '2020-09-28 07:41:45'),
(16, 'nationality_id', 'الجنسية', 0, '2020-08-05 06:53:19', '2020-09-28 07:41:45'),
(17, 'religion', 'الديانة', 0, '2020-08-05 06:53:19', '2020-09-28 07:41:45'),
(18, 'gender', 'الجنس', 0, '2020-08-05 06:53:19', '2020-09-28 07:41:45'),
(19, 'country_id', 'الدولة', 0, '2020-08-05 06:53:19', '2020-09-28 07:41:46'),
(20, 'government_id', 'المحافظة', 0, '2020-08-05 06:53:19', '2020-09-28 07:41:46'),
(21, 'city_id', 'المدينة', 0, '2020-08-05 06:53:19', '2020-09-28 07:41:46'),
(22, 'language_1_id', 'لغة اجنبية اولى', 0, '2020-08-05 06:53:19', '2020-09-28 07:41:46'),
(23, 'language_2_id', 'لغة اجنبية ثانية', 0, '2020-08-05 06:53:19', '2020-09-28 07:41:46'),
(25, 'phone_1', 'تليفون الطالب المتقدم', 0, '2020-08-05 06:53:19', '2020-09-28 07:41:46'),
(26, 'parent_name', 'اسم ولى الامر', 0, '2020-08-05 06:53:19', '2020-09-28 07:41:47'),
(27, 'parent_national_id', 'رقم البطاقة الشخصية لولى الامر', 0, '2020-08-05 06:53:19', '2020-09-28 07:41:47'),
(28, 'parent_job_id', 'وظيفة ولى الامر', 0, '2020-08-05 06:53:19', '2020-09-28 07:41:47'),
(29, 'parent_address', 'عنوان ولى الامر', 0, '2020-08-05 06:53:19', '2020-09-28 07:41:47'),
(30, 'parent_phone', 'تليفون ولى الامر', 0, '2020-08-05 06:53:19', '2020-09-28 07:41:47');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `card_exports`
--

CREATE TABLE `card_exports` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `rf_code` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `card_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `card_types`
--

CREATE TABLE `card_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `service_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `case_constraints`
--

CREATE TABLE `case_constraints` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `case_constraints`
--

INSERT INTO `case_constraints` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'متقدم', NULL, NULL, NULL),
(2, 'مقيد', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `government_id` int(10) UNSIGNED NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `government_id`, `notes`, `created_at`, `updated_at`) VALUES
(2, 'الخرطوم', 2, NULL, '2020-08-05 08:17:08', '2020-08-05 08:17:08'),
(3, 'مركز بنى سويف', 3, NULL, '2020-08-08 21:03:32', '2020-08-11 14:13:21'),
(4, 'مركز الواسطى', 3, NULL, '2020-08-08 21:04:26', '2020-08-15 18:18:25'),
(5, 'مركز ناصر', 3, NULL, '2020-08-08 21:04:42', '2020-08-11 14:14:22'),
(6, 'مركز اهناسيا', 3, NULL, '2020-08-08 21:05:40', '2020-08-11 14:14:50'),
(7, 'مركز ببا', 3, NULL, '2020-08-08 21:07:13', '2020-08-11 14:15:17'),
(8, 'مركز سمسطا', 3, NULL, '2020-08-08 21:07:37', '2020-08-11 14:18:42'),
(9, 'مركز الفشن', 3, NULL, '2020-08-09 12:37:26', '2020-08-11 14:19:06'),
(10, 'مركز ابشواي', 4, NULL, '2020-08-11 14:25:32', '2020-08-11 19:08:52'),
(11, 'مركز اطسا', 4, NULL, '2020-08-11 14:26:15', '2020-08-11 19:08:31'),
(12, 'مركز الفيوم', 4, NULL, '2020-08-11 14:26:44', '2020-08-11 14:26:44'),
(13, 'مركز سنورس', 4, NULL, '2020-08-11 14:27:08', '2020-08-11 14:27:08'),
(14, 'مركز طامية', 4, NULL, '2020-08-11 14:27:46', '2020-08-11 14:27:46'),
(15, 'مركز كرداسة', 7, NULL, '2020-08-11 19:09:15', '2020-08-11 19:09:15'),
(16, 'مركز الحوامدية', 7, NULL, '2020-08-11 19:09:32', '2020-08-11 19:09:32'),
(17, 'مركز الواحات', 7, NULL, '2020-08-11 19:09:52', '2020-08-11 19:09:52'),
(18, 'مركز أطفيح', 7, NULL, '2020-08-11 19:10:19', '2020-08-11 19:10:19'),
(19, 'مركز أبو النمرس', 7, NULL, '2020-08-11 19:10:43', '2020-08-11 19:10:43'),
(20, 'مركز البدرشين', 7, NULL, '2020-08-11 19:10:59', '2020-08-11 19:10:59'),
(21, 'مركز القناطر', 7, NULL, '2020-08-11 19:11:18', '2020-08-11 19:11:18'),
(22, 'بنها العسل', 8, NULL, '2020-08-15 16:10:48', '2020-08-15 16:10:48'),
(23, 'قليوب', 8, NULL, '2020-08-15 16:57:07', '2020-08-15 16:57:07'),
(24, 'القناطر الخيرية', 8, NULL, '2020-08-15 16:58:52', '2020-08-15 16:58:52'),
(25, 'شبرا الخيمة', 8, NULL, '2020-08-15 17:33:46', '2020-08-15 17:33:46'),
(26, 'الخانكة', 8, NULL, '2020-08-15 17:35:44', '2020-08-15 17:35:44'),
(27, 'كفر شكر', 8, NULL, '2020-08-15 17:36:28', '2020-08-15 17:36:28'),
(28, 'شبين القناطر', 8, NULL, '2020-08-15 17:36:48', '2020-08-15 17:36:48'),
(29, 'طوخ', 8, NULL, '2020-08-15 17:37:30', '2020-08-15 17:37:30'),
(30, 'عين حلوان', 9, NULL, '2020-08-15 17:55:01', '2020-08-15 17:55:01'),
(31, 'وادي حوف', 9, NULL, '2020-08-15 17:55:23', '2020-08-15 17:55:23'),
(32, 'حدائق حلوان', 9, NULL, '2020-08-15 17:56:35', '2020-08-15 17:56:35'),
(33, 'حي المعصرة', 9, NULL, '2020-08-15 17:56:58', '2020-08-15 17:57:26'),
(34, 'مدينة 15 مايو', 9, NULL, '2020-08-15 17:58:16', '2020-08-15 17:58:16'),
(35, 'مدينة المعادي', 9, NULL, '2020-08-15 18:09:06', '2020-08-15 18:09:06'),
(36, 'مدينة الصف', 9, NULL, '2020-08-15 18:10:42', '2020-08-15 18:10:42'),
(37, 'مركز أطفيح', 9, NULL, '2020-08-15 18:11:28', '2020-08-15 18:11:28'),
(38, 'حي النهضة والهايكستب', 9, NULL, '2020-08-15 18:12:11', '2020-08-15 18:12:11'),
(39, 'حي المرج', 1, NULL, '2020-08-15 18:22:36', '2020-08-15 18:22:36'),
(40, 'حي المطرية', 1, NULL, '2020-08-15 18:24:44', '2020-08-15 18:24:44'),
(41, 'حي عين شمس', 1, NULL, '2020-08-15 18:25:22', '2020-08-15 18:25:22'),
(42, 'حي عين شمس', 1, NULL, '2020-08-15 18:27:57', '2020-08-15 18:27:57'),
(43, 'حي السلام أول', 1, NULL, '2020-08-15 18:28:24', '2020-08-15 18:28:24'),
(44, 'حي السلام ثان', 1, NULL, '2020-08-15 18:28:42', '2020-08-15 18:28:42'),
(45, 'حي النزهة', 1, NULL, '2020-08-15 18:29:08', '2020-08-15 18:29:08'),
(46, 'حي مصر الجديدة', 1, NULL, '2020-08-15 18:29:25', '2020-08-15 18:29:25'),
(47, 'حي شرق مدينة نصر', 1, NULL, '2020-08-15 18:29:47', '2020-08-15 18:29:47'),
(48, 'حي غرب مدينة نصر', 1, NULL, '2020-08-15 18:30:06', '2020-08-15 18:30:06'),
(49, 'حي منشأة ناصر', 1, NULL, '2020-08-15 18:30:27', '2020-08-15 18:30:27'),
(50, 'حى الوايلي', 1, NULL, '2020-08-15 18:31:08', '2020-08-15 18:31:08'),
(51, 'حى باب الشعرية', 1, NULL, '2020-08-15 18:31:31', '2020-08-15 18:31:31'),
(52, 'حي وسط', 1, NULL, '2020-08-15 18:32:14', '2020-08-15 18:32:14'),
(53, 'حي الموسكى', 1, NULL, '2020-08-15 18:32:28', '2020-08-15 18:32:28'),
(54, 'حي الأزبكية', 1, NULL, '2020-08-15 18:32:51', '2020-08-15 18:32:51'),
(55, 'حي عابدين', 1, NULL, '2020-08-15 18:33:08', '2020-08-15 18:33:27'),
(56, 'حي بولاق', 1, NULL, '2020-08-15 18:33:57', '2020-08-15 18:33:57'),
(57, 'حي غرب', 1, NULL, '2020-08-15 18:34:25', '2020-08-15 18:34:25'),
(58, 'حي الزيتون', 1, NULL, '2020-08-15 18:40:06', '2020-08-15 18:40:06'),
(59, 'حي حدائق القبة', 1, NULL, '2020-08-15 18:40:37', '2020-08-15 18:40:37'),
(60, 'حي الزاوية الحمراء', 1, NULL, '2020-08-15 18:41:01', '2020-08-15 18:41:01'),
(61, 'حي الشرابية', 1, NULL, '2020-08-15 18:41:34', '2020-08-15 18:41:34'),
(62, 'حي الساحل', 1, NULL, '2020-08-15 18:42:06', '2020-08-15 18:42:06'),
(63, 'حي شبرا', 1, NULL, '2020-08-15 18:42:27', '2020-08-15 18:42:27'),
(64, 'حي روض الفرج', 1, NULL, '2020-08-15 18:42:58', '2020-08-15 18:42:58'),
(65, 'حي السيدة زينب', 1, NULL, '2020-08-15 18:43:44', '2020-08-15 18:43:44'),
(67, 'حي الخليفة', 1, NULL, '2020-08-15 18:45:04', '2020-08-15 18:45:04'),
(68, 'حي المقطم', 1, NULL, '2020-08-15 18:45:47', '2020-08-15 18:45:47'),
(69, 'حي البساتين', 1, NULL, '2020-08-15 19:12:43', '2020-08-15 19:12:43'),
(70, 'حي دار السلام', 1, NULL, '2020-08-15 19:13:05', '2020-08-15 19:13:05'),
(71, 'حي المعادي', 1, NULL, '2020-08-15 19:13:47', '2020-08-15 19:13:47'),
(72, 'حي طرة', 1, NULL, '2020-08-15 19:14:28', '2020-08-15 19:14:28'),
(73, 'حلوان', 1, NULL, '2020-08-15 19:14:55', '2020-09-28 16:00:58');

-- --------------------------------------------------------

--
-- Table structure for table `constraint_status`
--

CREATE TABLE `constraint_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `constraint_status`
--

INSERT INTO `constraint_status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'متقدم', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'جمهورية مصر العربية', NULL, '2020-08-05 08:16:16', '2020-08-05 08:16:16'),
(2, 'جمهورية السودان', NULL, '2020-08-05 08:16:24', '2020-08-05 08:16:24'),
(4, 'جمهوريه ليبيا', NULL, '2020-08-11 13:54:07', '2020-08-11 18:14:25'),
(5, 'سويا', NULL, '2020-09-20 10:27:06', '2020-09-20 10:27:06'),
(6, 'لبنان', 'fgd', '2020-09-20 10:28:39', '2020-09-28 15:59:46');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_id` int(10) UNSIGNED NOT NULL,
  `division_id` int(11) DEFAULT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `level_id`, `division_id`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'عام', 1, 1, NULL, NULL, NULL),
(4, 'عام', 2, 1, NULL, '2020-08-09 20:51:07', '2020-08-09 20:51:07'),
(5, 'عام', 3, 1, NULL, '2020-08-09 20:51:27', '2020-08-09 20:51:27'),
(6, 'عام', 4, 1, NULL, '2020-08-09 20:51:45', '2020-08-09 20:51:45'),
(7, 'إداره الأعمال', 3, 3, NULL, '2020-08-09 20:52:44', '2020-08-09 20:52:44'),
(8, 'إداره الأعمال', 4, 3, NULL, '2020-08-09 20:53:07', '2020-08-09 20:53:07'),
(9, 'المحاسبه', 3, 4, NULL, '2020-08-09 20:53:59', '2020-08-09 20:53:59'),
(10, 'المحاسبه', 4, 4, NULL, '2020-08-09 20:54:48', '2020-08-09 20:54:48'),
(11, 'تمويل', 3, 2, NULL, '2020-08-09 20:52:44', '2020-08-09 20:52:44'),
(12, 'تمويل', 4, 2, NULL, '2020-08-09 20:53:07', '2020-08-09 20:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `departments_levels`
--

CREATE TABLE `departments_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'عام', NULL, '2020-08-11 18:48:33', '2020-08-11 18:48:33'),
(2, 'تمويل', NULL, '2020-08-11 18:50:11', '2020-08-11 18:50:11'),
(3, 'اداره', NULL, '2020-08-11 18:51:05', '2020-08-11 18:51:05'),
(4, 'محاسبه', NULL, '2020-08-11 18:53:14', '2020-08-11 18:53:14');

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
-- Table structure for table `globale_settings`
--

CREATE TABLE `globale_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `globale_settings`
--

INSERT INTO `globale_settings` (`id`, `name`, `value`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'عميد المعهد', 'ا.د / احمد ابو القمصان', NULL, '2020-08-09 19:02:05', '2020-08-09 19:02:05'),
(2, 'institute name', 'المعهد العالى للعلوم الادارية', NULL, '2020-08-09 19:02:05', '2020-08-09 19:02:05'),
(3, 'institute address', 'بنى سويف', NULL, '2020-08-09 19:02:05', '2020-08-09 19:02:05'),
(4, '-', '2020-08-11', NULL, '2020-08-11 20:01:02', '2020-08-11 20:02:35'),
(5, 'Adminsion setting', '3', NULL, NULL, NULL),
(6, 'current term', '1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `governments`
--

CREATE TABLE `governments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `governments`
--

INSERT INTO `governments` (`id`, `name`, `country_id`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'القاهرة', 1, NULL, '2020-08-05 08:16:36', '2020-08-05 08:16:36'),
(2, 'الخرطوم', 2, NULL, '2020-08-05 08:16:44', '2020-08-05 08:16:44'),
(3, 'بنى سويف', 1, NULL, '2020-08-11 14:07:08', '2020-08-11 14:07:08'),
(4, 'الفيوم', 1, NULL, '2020-08-11 14:07:47', '2020-08-11 14:07:47'),
(6, 'المنيا', 1, NULL, '2020-08-11 14:10:55', '2020-08-11 14:10:55'),
(7, 'الجيزه', 1, NULL, '2020-08-11 19:07:15', '2020-08-11 19:07:15'),
(8, 'القليوبيه', 1, NULL, '2020-08-15 16:08:31', '2020-08-15 16:08:31'),
(9, 'حلوان', 1, NULL, '2020-08-15 16:08:44', '2020-08-15 16:08:44'),
(10, 'بسيتنمبايسانتب', 1, NULL, '2020-09-20 10:29:40', '2020-09-20 10:29:40');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'اللغة الانجليزية', NULL, '2020-08-05 08:26:16', '2020-08-05 08:26:16'),
(2, 'اللغة الفرنسية', NULL, '2020-08-05 08:26:26', '2020-08-05 08:26:26'),
(3, 'اللغه التركيه', NULL, '2020-08-11 13:48:08', '2020-08-11 13:48:08'),
(5, 'اللغه الالمانيه', NULL, '2020-08-11 13:48:52', '2020-08-11 13:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'الاول', 'ok', '2020-08-05 08:24:02', '2020-08-11 18:49:17'),
(2, 'الثانى', NULL, '2020-08-05 08:24:02', '2020-08-05 08:24:02'),
(3, 'الثالث', NULL, '2020-08-09 20:49:09', '2020-08-09 20:49:09'),
(4, 'الرابع', NULL, '2020-08-09 20:49:57', '2020-08-09 20:49:57');

-- --------------------------------------------------------

--
-- Table structure for table `login_histories`
--

CREATE TABLE `login_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_histories`
--

INSERT INTO `login_histories` (`id`, `created_at`, `updated_at`, `phone_details`, `user_id`, `ip`) VALUES
(2, '2020-05-29 16:36:05', '2020-05-29 16:36:05', '\n            <ul>\n                <li>اسم المتصفح : Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36</li>\n                <li>نوع نظام التشغيل  : Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36</li>\n            </ul>\n        ', 1, '102.41.121.15'),
(3, '2020-05-29 16:37:20', '2020-05-29 16:37:20', '\n            <ul>\n                <li>اسم المتصفح : Mozilla/5.0 (Windows NT 6.1; ) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36</li>\n                <li>نوع نظام التشغيل  : Mozilla/5.0 (Windows NT 6.1; ) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36</li>\n            </ul>\n        ', 1, '197.37.234.87'),
(4, '2020-05-29 17:17:56', '2020-05-29 17:17:56', '\n            <ul>\n                <li>اسم المتصفح : Mozilla/5.0 (Linux; Android 8.0.0; SM-G965F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36</li>\n                <li>نوع نظام التشغيل  : Mozilla/5.0 (Linux; Android 8.0.0; SM-G965F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36</li>\n            </ul>\n        ', 1, '196.154.143.204'),
(5, '2020-05-29 17:19:18', '2020-05-29 17:19:18', '\n            <ul>\n                <li>اسم المتصفح : Mozilla/5.0 (Linux; Android 8.0.0; SM-G965F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36</li>\n                <li>نوع نظام التشغيل  : Mozilla/5.0 (Linux; Android 8.0.0; SM-G965F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36</li>\n            </ul>\n        ', 6, '196.154.143.204'),
(6, '2020-05-29 17:20:24', '2020-05-29 17:20:24', '\n            <ul>\n                <li>اسم المتصفح : Mozilla/5.0 (Linux; Android 8.0.0; SM-G965F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36</li>\n                <li>نوع نظام التشغيل  : Mozilla/5.0 (Linux; Android 8.0.0; SM-G965F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36</li>\n            </ul>\n        ', 1, '196.154.143.204'),
(7, '2020-05-29 17:25:28', '2020-05-29 17:25:28', '\n            <ul>\n                <li>اسم المتصفح : Mozilla/5.0 (Linux; Android 8.0.0; SM-G965F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36</li>\n                <li>نوع نظام التشغيل  : Mozilla/5.0 (Linux; Android 8.0.0; SM-G965F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Mobile Safari/537.36</li>\n            </ul>\n        ', 1, '196.154.143.204'),
(8, '2020-09-20 22:02:57', '2020-09-20 22:02:57', 'Chrome/85.0.4183.102', 1, '127.0.0.1'),
(9, '2020-09-20 22:27:18', '2020-09-20 22:27:18', 'Chrome/85.0.4183.102', 1, '127.0.0.1'),
(10, '2020-09-22 17:43:34', '2020-09-22 17:43:34', 'Safari/537.36', 1, '127.0.0.1'),
(11, '2020-09-23 05:28:30', '2020-09-23 05:28:30', 'Safari/537.36', 1, '127.0.0.1'),
(12, '2020-09-23 05:32:18', '2020-09-23 05:32:18', 'Safari/537.36', 1, '127.0.0.1'),
(13, '2020-09-23 05:33:26', '2020-09-23 05:33:26', 'Safari/537.36', 1, '127.0.0.1'),
(14, '2020-09-23 05:37:37', '2020-09-23 05:37:37', 'Safari/537.36', 1, '127.0.0.1'),
(15, '2020-09-23 06:57:19', '2020-09-23 06:57:19', 'Safari/537.36', 1, '127.0.0.1'),
(16, '2020-10-04 08:43:33', '2020-10-04 08:43:33', 'Safari/537.36', 1, '127.0.0.1'),
(17, '2020-10-04 17:18:56', '2020-10-04 17:18:56', 'Safari/537.36', 1, '127.0.0.1'),
(18, '2020-10-04 18:08:03', '2020-10-04 18:08:03', 'Safari/537.36', 1, '127.0.0.1'),
(19, '2020-10-06 06:38:43', '2020-10-06 06:38:43', 'Safari/537.36', 1, '127.0.0.1'),
(20, '2020-10-10 09:26:36', '2020-10-10 09:26:36', 'Chrome/86.0.4240.75', 1, '127.0.0.1'),
(21, '2020-11-10 08:29:24', '2020-11-10 08:29:24', 'Chrome/86.0.4240.183', 1, '::1'),
(22, '2020-11-10 09:31:58', '2020-11-10 09:31:58', 'Safari/537.36', 1, '::1'),
(23, '2020-11-10 09:39:06', '2020-11-10 09:39:06', 'Safari/537.36', 1, '::1'),
(24, '2020-11-11 07:33:26', '2020-11-11 07:33:26', 'Chrome/86.0.4240.193', 1, '::1'),
(25, '2020-11-11 07:40:21', '2020-11-11 07:40:21', 'Chrome/86.0.4240.183', 1, '192.168.1.3');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_07_17_173338_create_academic_years_table', 1),
(5, '2020_07_18_201114_create_applications_table', 1),
(6, '2020_07_18_205107_create_team_work_control_tabl', 1),
(7, '2020_07_18_205312_create_parent_relation_type_tabl', 1),
(8, '2020_07_18_205445_create_globale_settings_table', 1),
(9, '2020_07_18_205734_create_military_areas_table', 1),
(10, '2020_07_18_205935_create_military_status_table', 1),
(11, '2020_07_18_210053_create_military_settings_table', 1),
(12, '2020_07_18_210320_create_nationalities_table', 1),
(13, '2020_07_18_210403_create_parent_jobs_table', 1),
(14, '2020_07_18_210440_create_countries_table', 1),
(15, '2020_07_18_210504_create_governments_table', 1),
(16, '2020_07_18_210655_create_cities_table', 1),
(17, '2020_07_18_210851_create_registeration_status_table', 1),
(18, '2020_07_18_211348_create_qualifications_table', 1),
(19, '2020_07_18_211440_create_qualification_years_table', 1),
(20, '2020_07_18_211859_create_departments_table', 1),
(21, '2020_07_18_212029_create_levels_table', 1),
(22, '2020_07_18_212229_create_languages_table', 1),
(23, '2020_07_18_212330_create_specializations_table', 1),
(24, '2020_07_19_063008_create_students_table', 1),
(25, '2020_07_19_063315_create_parents_table', 1),
(26, '2020_07_19_065711_create_attributes_table', 1),
(27, '2020_07_19_065835_create_student_attributes_table', 1),
(28, '2020_07_19_070059_create_student_military_history_table', 1),
(29, '2020_07_19_075825_create_qualification_types_table', 1),
(30, '2020_07_19_083616_create_required_documents_table', 1),
(31, '2020_07_19_105519_create_registration_methods_table', 1),
(32, '2020_07_19_111658_create_student_required_documents_table', 1),
(33, '2020_07_19_112201_create_terms_table', 1),
(34, '2020_07_19_112243_create_schools_table', 1),
(35, '2020_07_19_112703_create_student_logs_table', 1),
(36, '2020_07_19_113313_create_student_status_table', 1),
(37, '2020_07_25_072834_laratrust_setup_tables', 1),
(38, '2020_07_27_111504_create_table_departments_levels', 1),
(39, '2020_07_27_114107_create_divisions_table', 1),
(40, '2020_07_29_110101_add_column_phone_to_users', 1),
(41, '2020_07_29_125315_create_login_histories_table', 1),
(42, '2020_08_04_080915_add_coloumn_level_id_to_qualification_types', 1),
(43, '2020_08_04_103631_create_application_required_table', 1),
(44, '2020_08_08_072657_create_relative_relation_table', 2),
(45, '2020_08_08_081617_create_translations_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `military_areas`
--

CREATE TABLE `military_areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `government_id` int(10) UNSIGNED NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `military_areas`
--

INSERT INTO `military_areas` (`id`, `name`, `government_id`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'الهايكستب', 1, NULL, '2020-08-05 08:21:57', '2020-08-05 08:21:57'),
(2, 'الجيزه', 7, NULL, '2020-08-11 19:11:40', '2020-08-11 19:11:40');

-- --------------------------------------------------------

--
-- Table structure for table `military_area_submision`
--

CREATE TABLE `military_area_submision` (
  `id` int(11) NOT NULL,
  `military_area_id` int(10) UNSIGNED NOT NULL,
  `government_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `notes` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `military_area_submision`
--

INSERT INTO `military_area_submision` (`id`, `military_area_id`, `government_id`, `city_id`, `notes`, `created_at`, `updated_at`) VALUES
(4, 2, 7, 21, NULL, '2020-08-11 19:12:23', '2020-08-11 19:12:23'),
(2, 1, 1, 8, NULL, '2020-08-09 20:53:33', '2020-08-09 20:53:33'),
(3, 1, 2, 9, NULL, '2020-08-10 03:11:33', '2020-08-10 14:48:30'),
(5, 2, 3, 3, NULL, '2020-08-11 19:38:47', '2020-08-11 19:38:47'),
(6, 2, 3, 4, NULL, '2020-08-11 19:38:47', '2020-08-11 19:38:47'),
(7, 2, 3, 5, NULL, '2020-08-11 19:38:47', '2020-08-11 19:38:47'),
(8, 2, 3, 7, NULL, '2020-08-11 19:38:47', '2020-08-11 19:38:47'),
(9, 2, 3, 9, NULL, '2020-08-11 19:38:47', '2020-08-11 19:38:47'),
(10, 2, 3, 10, NULL, '2020-08-11 19:38:47', '2020-08-11 19:38:47'),
(11, 2, 3, 11, NULL, '2020-08-11 19:38:47', '2020-08-11 19:38:47'),
(12, 1, 4, 12, NULL, '2020-08-11 19:42:46', '2020-08-11 19:42:46'),
(13, 1, 4, 13, NULL, '2020-08-11 19:42:46', '2020-08-11 19:42:46'),
(14, 1, 4, 14, NULL, '2020-08-11 19:42:46', '2020-08-11 19:42:46'),
(15, 1, 4, 18, NULL, '2020-08-11 19:42:46', '2020-08-11 19:42:46'),
(16, 2, 3, 3, NULL, '2020-08-11 19:46:06', '2020-08-11 19:46:06'),
(17, 2, 3, 4, NULL, '2020-08-11 19:46:06', '2020-08-11 19:46:06'),
(18, 2, 3, 5, NULL, '2020-08-11 19:46:06', '2020-08-11 19:46:06'),
(19, 2, 1, 6, NULL, '2020-08-11 19:46:06', '2020-08-11 19:48:22'),
(20, 1, 1, 2, NULL, '2020-08-11 20:09:43', '2020-08-11 20:09:43'),
(21, 1, 1, 3, NULL, '2020-08-11 20:09:43', '2020-08-11 20:09:43'),
(22, 1, 1, 4, NULL, '2020-08-11 20:09:43', '2020-08-11 20:09:43'),
(23, 1, 1, 5, NULL, '2020-08-11 20:09:43', '2020-08-11 20:09:43'),
(24, 1, 1, 6, NULL, '2020-08-11 20:09:43', '2020-08-11 20:09:43'),
(25, 1, 1, 7, NULL, '2020-08-11 20:09:43', '2020-08-11 20:09:43'),
(26, 1, 3, 3, NULL, '2020-08-11 20:10:59', '2020-08-11 20:10:59'),
(27, 1, 3, 4, NULL, '2020-08-11 20:10:59', '2020-08-11 20:10:59'),
(28, 1, 3, 5, NULL, '2020-08-11 20:10:59', '2020-08-11 20:10:59'),
(29, 1, 3, 6, NULL, '2020-08-11 20:10:59', '2020-08-11 20:10:59'),
(30, 1, 3, 7, NULL, '2020-08-11 20:10:59', '2020-08-11 20:10:59'),
(31, 1, 3, 8, NULL, '2020-08-11 20:10:59', '2020-08-11 20:10:59'),
(32, 1, 3, 9, NULL, '2020-08-11 20:10:59', '2020-08-11 20:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `military_course`
--

CREATE TABLE `military_course` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `notes` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `military_course`
--

INSERT INTO `military_course` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(2, 'الدورة التدريبية العسكرية', NULL, '2020-08-15 07:38:13', '2020-08-15 07:38:13'),
(5, 'دوره حقوق الإنسان', NULL, '2020-08-18 18:59:49', '2020-08-18 18:59:49');

-- --------------------------------------------------------

--
-- Table structure for table `military_course_collection`
--

CREATE TABLE `military_course_collection` (
  `id` bigint(20) NOT NULL,
  `military_course_id` int(10) UNSIGNED NOT NULL,
  `academic_year_id` int(10) UNSIGNED NOT NULL,
  `code` bigint(20) NOT NULL,
  `starts_in` date NOT NULL,
  `ends_in` date NOT NULL,
  `notes` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `military_course_collection`
--

INSERT INTO `military_course_collection` (`id`, `military_course_id`, `academic_year_id`, `code`, `starts_in`, `ends_in`, `notes`, `created_at`, `updated_at`) VALUES
(4, 2, 8, 12, '2020-08-04', '2020-08-08', NULL, '2020-08-17 12:53:08', '2020-08-17 19:01:49'),
(6, 2, 2, 15, '2020-08-21', '2020-08-25', NULL, '2020-08-18 14:00:35', '2020-08-18 14:00:35'),
(7, 2, 5, 37, '2021-01-01', '2021-01-14', NULL, '2020-08-18 19:17:02', '2020-08-18 19:17:02');

-- --------------------------------------------------------

--
-- Table structure for table `military_course_collection_student`
--

CREATE TABLE `military_course_collection_student` (
  `id` int(11) NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `military_course_collection_id` int(10) UNSIGNED NOT NULL,
  `status` enum('1','0') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `military_course_collection_student`
--

INSERT INTO `military_course_collection_student` (`id`, `student_id`, `military_course_collection_id`, `status`, `created_at`, `updated_at`) VALUES
(38, 1, 6, '1', '2020-08-18 19:04:06', '2020-08-18 19:08:12'),
(40, 2, 7, '1', '2020-08-18 19:53:12', '2020-08-18 19:53:46'),
(41, 3, 7, '0', '2020-08-19 15:24:07', '2020-08-19 15:26:00'),
(42, 4, 7, '1', '2020-08-19 15:24:07', '2020-08-19 15:24:07');

-- --------------------------------------------------------

--
-- Table structure for table `military_settings`
--

CREATE TABLE `military_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `condition_age` int(11) NOT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `military_status_id` int(11) NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `military_settings`
--

INSERT INTO `military_settings` (`id`, `condition_age`, `reason`, `military_status_id`, `notes`, `created_at`, `updated_at`) VALUES
(2, 20, 'اعفاء مؤقت', 2, NULL, '2020-08-11 19:12:54', '2020-08-11 19:12:54');

-- --------------------------------------------------------

--
-- Table structure for table `military_status`
--

CREATE TABLE `military_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `military_status`
--

INSERT INTO `military_status` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'اعفاء نهائى من اداء الخدمة العسكرية', NULL, '2020-08-05 08:22:21', '2020-08-05 08:22:21'),
(2, 'اعفاء مؤقت', NULL, '2020-08-05 08:22:28', '2020-08-05 08:22:28');

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nationalities`
--

INSERT INTO `nationalities` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'مصرى', NULL, '2020-08-05 08:25:24', '2020-08-05 08:25:24'),
(2, 'سودانى', NULL, '2020-08-05 08:25:32', '2020-08-05 08:25:32'),
(4, 'ليبى', NULL, '2020-08-11 14:30:31', '2020-08-11 14:30:31');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `title`, `user_id`, `body`, `seen`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'add expense_maincategory', 1, 'add expense_maincategory', 1, 'fa fa-list-o', '2020-08-23 06:19:39', '2020-09-28 16:42:21'),
(2, 'add expense_maincategory', 1, 'add expense_maincategory', 1, 'fa fa-list-o', '2020-08-23 07:10:25', '2020-09-28 16:42:21'),
(3, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 07:37:17', '2020-09-28 16:42:21'),
(4, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 07:37:18', '2020-09-28 16:42:21'),
(5, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 07:59:26', '2020-09-28 16:42:21'),
(6, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 07:59:27', '2020-09-28 16:42:21'),
(7, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 07:59:28', '2020-09-28 16:42:21'),
(8, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 07:59:29', '2020-09-28 16:42:21'),
(9, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 07:59:30', '2020-09-28 16:42:21'),
(10, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 07:59:31', '2020-09-28 16:42:21'),
(11, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 07:59:32', '2020-09-28 16:42:21'),
(12, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 07:59:33', '2020-09-28 16:42:21'),
(13, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 07:59:33', '2020-09-28 16:42:21'),
(14, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 07:59:34', '2020-09-28 16:42:21'),
(15, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 08:09:15', '2020-09-28 16:42:21'),
(16, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 08:09:16', '2020-09-28 16:42:21'),
(17, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 08:10:00', '2020-09-28 16:42:21'),
(18, 'add expense_maincategory', 1, 'add expense_maincategory', 1, 'fa fa-list-o', '2020-08-23 08:20:20', '2020-09-28 16:42:21'),
(19, 'remove expense_maincategory', 1, 'remove expense_maincategoryfdsf', 1, 'fa fa-list-o', '2020-08-23 08:20:39', '2020-09-28 16:42:21'),
(20, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 09:36:35', '2020-09-28 16:42:21'),
(21, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 09:36:36', '2020-09-28 16:42:21'),
(22, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 09:36:38', '2020-09-28 16:42:21'),
(23, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 09:36:39', '2020-09-28 16:42:21'),
(24, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 09:36:40', '2020-09-28 16:42:21'),
(25, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 09:36:41', '2020-09-28 16:42:21'),
(26, 'add installment', 1, 'add installment', 1, 'fa fa-calendar', '2020-08-23 10:56:41', '2020-09-28 16:42:21'),
(27, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 11:22:54', '2020-09-28 16:42:21'),
(28, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 11:22:56', '2020-09-28 16:42:21'),
(29, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 11:24:51', '2020-09-28 16:42:21'),
(30, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 11:24:53', '2020-09-28 16:42:21'),
(31, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 11:25:36', '2020-09-28 16:42:21'),
(32, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 11:25:37', '2020-09-28 16:42:21'),
(33, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 11:27:27', '2020-09-28 16:42:21'),
(34, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-23 11:27:28', '2020-09-28 16:42:21'),
(35, 'install installment', 1, 'install installment 1', 1, 'fa fa-circle', '2020-08-24 07:54:06', '2020-09-28 16:42:21'),
(36, 'install installment', 1, 'install installment 1', 1, 'fa fa-circle', '2020-08-24 07:55:21', '2020-09-28 16:42:21'),
(37, 'pay installment', 1, 'pay installment 5', 1, 'fa fa-circle', '2020-08-24 10:41:25', '2020-09-28 16:42:21'),
(38, 'pay installment', 1, 'pay installment 5', 1, 'fa fa-circle', '2020-08-24 10:43:19', '2020-09-28 16:42:21'),
(39, 'pay installment', 1, 'pay installment 5', 1, 'fa fa-circle', '2020-08-24 10:57:21', '2020-09-28 16:42:21'),
(40, 'pay installment', 1, 'pay installment 5', 1, 'fa fa-circle', '2020-08-24 10:57:56', '2020-09-28 16:42:21'),
(41, 'add installment', 1, 'add installment', 1, 'fa fa-calendar', '2020-08-24 11:00:52', '2020-09-28 16:42:21'),
(42, 'install installment', 1, 'install installment 6', 1, 'fa fa-circle', '2020-08-24 11:02:16', '2020-09-28 16:42:21'),
(43, 'تعديل بنك', 1, 'تعديل بنك', 1, 'fa fa-bank', '2020-08-24 11:08:58', '2020-09-28 16:42:21'),
(44, 'اضافة تحويل مالى', 1, 'اضافة تحويل مالى', 1, 'fa fa-transformation', '2020-08-24 11:14:17', '2020-09-28 16:42:21'),
(45, 'add installment', 1, 'add installment', 1, 'fa fa-calendar', '2020-08-24 11:28:28', '2020-09-28 16:42:21'),
(46, 'pay installment', 1, 'pay installment 6', 1, 'fa fa-circle', '2020-08-24 11:48:31', '2020-09-28 16:42:21'),
(47, 'pay installment', 1, 'pay installment 7', 1, 'fa fa-circle', '2020-08-25 04:47:44', '2020-09-28 16:42:21'),
(48, 'اضافه مصروف رئيسى', 1, 'اضافه مصروف رئيسى', 1, 'fa fa-list-o', '2020-08-25 05:22:30', '2020-09-28 16:42:21'),
(49, 'remove expense_maincategory', 1, 'remove expense_maincategoryمصاريف الكتب', 1, 'fa fa-list-o', '2020-08-25 05:23:06', '2020-09-28 16:42:21'),
(50, 'اضافة تحويل مالى', 1, 'اضافة تحويل مالى', 1, 'fa fa-transformation', '2020-08-25 05:38:15', '2020-09-28 16:42:21'),
(51, 'اضافة تحويل مالى', 1, 'اضافة تحويل مالى', 1, 'fa fa-transformation', '2020-08-25 05:43:40', '2020-09-28 16:42:21'),
(52, 'اضافة تحويل مالى', 1, 'اضافة تحويل مالى', 1, 'fa fa-transformation', '2020-08-25 05:46:20', '2020-09-28 16:42:21'),
(53, 'تعديل التحويل', 1, 'تعديل التحويل', 1, 'fa fa-transformation', '2020-08-25 05:56:08', '2020-09-28 16:42:21'),
(54, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-08-25 07:13:49', '2020-09-28 16:42:21'),
(55, 'add deposite', 1, 'add deposite', 1, 'fa fa-handshake-o', '2020-08-25 08:02:03', '2020-09-28 16:42:21'),
(56, 'أضافة قسط', 1, 'أضافة قسط', 1, 'fa fa-calendar', '2020-08-25 09:23:35', '2020-09-28 16:42:21'),
(57, 'تقسيط القسط رقم ', 1, 'تقسيط القسط رقم 10', 1, 'fa fa-circle', '2020-08-25 09:24:30', '2020-09-28 16:42:21'),
(58, 'pay installment', 1, 'pay installment 11', 1, 'fa fa-circle', '2020-08-25 09:26:11', '2020-09-28 16:42:21'),
(59, 'add plan', 1, 'add planplan1', 1, 'fa fa-map-marker', '2020-08-25 13:17:00', '2020-09-28 16:42:21'),
(60, 'add plan', 1, 'add planخطة الترم الاول', 1, 'fa fa-map-marker', '2020-08-25 13:47:15', '2020-09-28 16:42:21'),
(61, 'add plan', 1, 'add planخطة الترم الثانى', 1, 'fa fa-map-marker', '2020-08-25 13:54:03', '2020-09-28 16:42:21'),
(62, 'add reword', 1, 'add reword', 1, 'fa fa-money', '2020-08-26 05:49:19', '2020-09-28 16:42:21'),
(63, 'add reword', 1, 'add reword', 1, 'fa fa-money', '2020-08-26 05:49:42', '2020-09-28 16:42:21'),
(64, 'add fine', 1, 'add fine', 1, 'fa fa-money', '2020-08-29 06:08:39', '2020-09-28 16:42:21'),
(65, 'add fine', 1, 'add fine', 1, 'fa fa-money', '2020-08-29 06:10:56', '2020-09-28 16:42:21'),
(66, 'add plan', 1, 'add planخطة  المستوى الثانى', 1, 'fa fa-map-marker', '2020-08-29 07:44:04', '2020-09-28 16:42:21'),
(67, 'add expense_subcategory', 1, 'add expense_subcategory', 1, 'fa fa-list-o', '2020-08-29 08:42:43', '2020-09-28 16:42:21'),
(68, 'add daily', 1, 'add daily', 1, 'fa fa-daily', '2020-08-29 11:44:13', '2020-09-28 16:42:21'),
(69, 'add daily', 1, 'add daily', 1, 'fa fa-daily', '2020-08-29 11:54:55', '2020-09-28 16:42:21'),
(70, 'add daily', 1, 'add daily', 1, 'fa fa-daily', '2020-08-29 11:57:05', '2020-09-28 16:42:21'),
(71, 'pay installment', 1, 'pay installment 5', 1, 'fa fa-circle', '2020-08-29 12:45:11', '2020-09-28 16:42:21'),
(72, 'ملف تقديم جديد', 1, 'ملف تقديم جديدمريم محمد ابوالخير محمد عبدالصمد', 1, 'fa fa-file-o', '2020-09-28 07:43:11', '2020-09-28 16:42:21'),
(73, 'تعديل صروف سنه دراسيه', 1, 'تعديل صروف سنه دراسيه', 1, 'fa fa-money', '2020-09-28 07:48:28', '2020-09-28 16:42:21'),
(74, 'تعديل صروف سنه دراسيه', 1, 'تعديل صروف سنه دراسيه', 1, 'fa fa-money', '2020-09-28 08:06:29', '2020-09-28 16:42:21'),
(75, 'تعديل صروف سنه دراسيه', 1, 'تعديل صروف سنه دراسيه', 1, 'fa fa-money', '2020-09-28 08:29:56', '2020-09-28 16:42:21'),
(76, 'تعديل صروف سنه دراسيه', 1, 'تعديل صروف سنه دراسيه', 1, 'fa fa-money', '2020-09-28 08:52:13', '2020-09-28 16:42:21'),
(77, 'تعديل صروف سنه دراسيه', 1, 'تعديل صروف سنه دراسيه', 1, 'fa fa-money', '2020-09-28 08:52:36', '2020-09-28 16:42:21'),
(78, 'تعديل صروف سنه دراسيه', 1, 'تعديل صروف سنه دراسيه', 1, 'fa fa-money', '2020-09-28 08:53:43', '2020-09-28 16:42:21'),
(79, 'edit Store خزنة الوزاره', 1, 'edit Store خزنة الوزاره', 1, 'fa fa-trophy', '2020-09-28 08:54:26', '2020-09-28 16:42:21'),
(80, 'تعديل صروف سنه دراسيه', 1, 'تعديل صروف سنه دراسيه', 1, 'fa fa-money', '2020-09-28 08:55:24', '2020-09-28 16:42:21'),
(81, 'الطالب مريم محمد ابوالخير محمد عبدالصمد دفع 200 فى الخزينه', 1, 'الطالب مريم محمد ابوالخير محمد عبدالصمد دفع 200 فى الخزينه', 1, 'fa fa-money', '2020-09-28 09:30:44', '2020-09-28 16:42:21'),
(82, 'الطالب مريم محمد ابوالخير محمد عبدالصمد دفع 200 فى الخزينه', 1, 'الطالب مريم محمد ابوالخير محمد عبدالصمد دفع 200 فى الخزينه', 1, 'fa fa-money', '2020-09-28 09:33:10', '2020-09-28 16:42:21'),
(83, 'ملف تقديم جديد', 1, 'ملف تقديم جديدمصطفى السيد محمد عبدالجواد', 1, 'fa fa-file-o', '2020-09-28 09:37:14', '2020-09-28 16:42:21'),
(84, 'تعديل ملف تقديم', 1, 'تعديل ملف تقديممصطفى السيد محمد عبدالجواد', 1, 'fa fa-file-o', '2020-09-28 09:45:14', '2020-09-28 16:42:21'),
(85, 'الطالب مصطفى السيد محمد عبدالجواد دفع 200 فى الخزينه', 1, 'الطالب مصطفى السيد محمد عبدالجواد دفع 200 فى الخزينه', 1, 'fa fa-money', '2020-09-28 10:13:44', '2020-09-28 16:42:21'),
(86, 'تعديل صروف سنه دراسيه', 1, 'تعديل صروف سنه دراسيه', 1, 'fa fa-money', '2020-09-28 10:16:10', '2020-09-28 16:42:21'),
(87, 'تعديل صروف سنه دراسيه', 1, 'تعديل صروف سنه دراسيه', 1, 'fa fa-money', '2020-09-28 10:16:31', '2020-09-28 16:42:21'),
(88, 'تعديل صروف سنه دراسيه', 1, 'تعديل صروف سنه دراسيه', 1, 'fa fa-money', '2020-09-28 10:16:58', '2020-09-28 16:42:21'),
(89, 'تعديل صروف سنه دراسيه', 1, 'تعديل صروف سنه دراسيه', 1, 'fa fa-money', '2020-09-28 10:17:49', '2020-09-28 16:42:21'),
(90, 'ملف تقديم جديد', 1, 'ملف تقديم جديدجرجس فايز خليل جرجس', 1, 'fa fa-file-o', '2020-09-28 10:24:29', '2020-09-28 16:42:21'),
(91, 'الطالب جرجس فايز خليل جرجس دفع 200 فى الخزينه', 1, 'الطالب جرجس فايز خليل جرجس دفع 200 فى الخزينه', 1, 'fa fa-money', '2020-09-28 10:25:15', '2020-09-28 16:42:21'),
(92, 'الطالب جرجس فايز خليل جرجس دفع 2000 فى الخزينه', 1, 'الطالب جرجس فايز خليل جرجس دفع 2000 فى الخزينه', 1, 'fa fa-money', '2020-09-28 10:30:14', '2020-09-28 16:42:21'),
(93, 'ملف تقديم جديد', 1, 'ملف تقديم جديدمارى طلعت سعد سعيد', 1, 'fa fa-file-o', '2020-09-28 10:34:28', '2020-09-28 16:42:21'),
(94, 'تعديل ملف تقديم', 1, 'تعديل ملف تقديممارى طلعت سعد سعيد', 1, 'fa fa-file-o', '2020-09-28 10:34:53', '2020-09-28 16:42:21'),
(95, 'الطالب مارى طلعت سعد سعيد دفع 200 فى الخزينه', 1, 'الطالب مارى طلعت سعد سعيد دفع 200 فى الخزينه', 1, 'fa fa-money', '2020-09-28 10:35:49', '2020-09-28 16:42:21'),
(96, 'ملف تقديم جديد', 1, 'ملف تقديم جديداسلام عزت رجب محمد', 1, 'fa fa-file-o', '2020-09-28 10:40:31', '2020-09-28 16:42:21'),
(97, 'الطالب اسلام عزت رجب محمد دفع 200 فى الخزينه', 1, 'الطالب اسلام عزت رجب محمد دفع 200 فى الخزينه', 1, 'fa fa-money', '2020-09-28 10:41:05', '2020-09-28 16:42:21'),
(98, 'تقسيط رسوم الطالباسلام عزت رجب محمد', 1, 'تقسيط رسوم الطالباسلام عزت رجب محمد', 1, 'fa fa-calendar', '2020-09-28 11:13:15', '2020-09-28 16:42:21'),
(99, 'تقسيط رسوم الطالباسلام عزت رجب محمد', 1, 'تقسيط رسوم الطالباسلام عزت رجب محمد', 1, 'fa fa-calendar', '2020-09-28 11:13:55', '2020-09-28 16:42:21'),
(100, 'تعديل صروف سنه دراسيه', 1, 'تعديل صروف سنه دراسيه', 1, 'fa fa-money', '2020-09-28 11:24:58', '2020-09-28 16:42:21'),
(101, 'تقسيط رسوم الطالباسلام عزت رجب محمد', 1, 'تقسيط رسوم الطالباسلام عزت رجب محمد', 1, 'fa fa-calendar', '2020-09-28 11:30:43', '2020-09-28 16:42:21'),
(102, 'الطالب اسلام عزت رجب محمد دفع 815 فى الخزينه', 1, 'الطالب اسلام عزت رجب محمد دفع 815 فى الخزينه', 1, 'fa fa-money', '2020-09-28 12:10:13', '2020-09-28 16:42:21'),
(103, 'add Store خزنة التقدمات', 1, 'add Store خزنة التقدمات', 1, 'fa fa-trophy', '2020-09-28 14:05:36', '2020-09-28 16:42:21'),
(104, 'تعديل صروف سنه دراسيه', 1, 'تعديل صروف سنه دراسيه', 1, 'fa fa-money', '2020-09-28 14:07:40', '2020-09-28 16:42:21'),
(105, 'ملف تقديم جديد', 1, 'ملف تقديم جديدمريم محمد ابوالخير محمد عبدالصمد', 1, 'fa fa-file-o', '2020-09-28 14:13:21', '2020-09-28 16:42:21'),
(106, 'تعديل ملف تقديم', 1, 'تعديل ملف تقديممريم محمد ابوالخير محمد عبدالصمد', 1, 'fa fa-file-o', '2020-09-28 14:16:10', '2020-09-28 16:42:21'),
(107, 'ملف تقديم جديد', 1, 'ملف تقديم جديدمصطفى السيد محمد عبدالجواد', 1, 'fa fa-file-o', '2020-09-28 14:23:22', '2020-09-28 16:42:21'),
(108, 'تعديل ملف تقديم', 1, 'تعديل ملف تقديممصطفى السيد محمد عبدالجواد', 1, 'fa fa-file-o', '2020-09-28 14:23:43', '2020-09-28 16:42:21'),
(109, 'الطالب مصطفى السيد محمد عبدالجواد دفع 200 فى الخزينه', 1, 'الطالب مصطفى السيد محمد عبدالجواد دفع 200 فى الخزينه', 1, 'fa fa-money', '2020-09-28 14:25:53', '2020-09-28 16:42:21'),
(110, 'الطالب مريم محمد ابوالخير محمد عبدالصمد دفع 200 فى الخزينه', 1, 'الطالب مريم محمد ابوالخير محمد عبدالصمد دفع 200 فى الخزينه', 1, 'fa fa-money', '2020-09-28 15:02:39', '2020-09-28 16:42:21'),
(111, 'الطالب مريم محمد ابوالخير محمد عبدالصمد دفع 1685 فى الخزينه', 1, 'الطالب مريم محمد ابوالخير محمد عبدالصمد دفع 1685 فى الخزينه', 1, 'fa fa-money', '2020-09-28 15:06:58', '2020-09-28 16:42:21'),
(112, 'تقسيط رسوم الطالبمصطفى السيد محمد عبدالجواد', 1, 'تقسيط رسوم الطالبمصطفى السيد محمد عبدالجواد', 1, 'fa fa-calendar', '2020-09-28 15:21:23', '2020-09-28 16:42:21'),
(113, 'تقسيط رسوم الطالبمصطفى السيد محمد عبدالجواد', 1, 'تقسيط رسوم الطالبمصطفى السيد محمد عبدالجواد', 1, 'fa fa-calendar', '2020-09-28 15:21:48', '2020-09-28 16:42:21'),
(114, 'تقسيط رسوم الطالبمصطفى السيد محمد عبدالجواد', 1, 'تقسيط رسوم الطالبمصطفى السيد محمد عبدالجواد', 1, 'fa fa-calendar', '2020-09-28 15:25:34', '2020-09-28 16:42:21'),
(115, 'تقسيط رسوم الطالبمصطفى السيد محمد عبدالجواد', 1, 'تقسيط رسوم الطالبمصطفى السيد محمد عبدالجواد', 1, 'fa fa-calendar', '2020-09-28 15:26:48', '2020-09-28 16:42:21'),
(116, 'تقسيط رسوم الطالبمصطفى السيد محمد عبدالجواد', 1, 'تقسيط رسوم الطالبمصطفى السيد محمد عبدالجواد', 1, 'fa fa-calendar', '2020-09-28 15:27:04', '2020-09-28 16:42:21'),
(117, 'تقسيط رسوم الطالبمصطفى السيد محمد عبدالجواد', 1, 'تقسيط رسوم الطالبمصطفى السيد محمد عبدالجواد', 1, 'fa fa-calendar', '2020-09-28 15:27:25', '2020-09-28 16:42:21'),
(118, 'تقسيط رسوم الطالبمصطفى السيد محمد عبدالجواد', 1, 'تقسيط رسوم الطالبمصطفى السيد محمد عبدالجواد', 1, 'fa fa-calendar', '2020-09-28 15:27:55', '2020-09-28 16:42:21'),
(119, 'تقسيط رسوم الطالبمصطفى السيد محمد عبدالجواد', 1, 'تقسيط رسوم الطالبمصطفى السيد محمد عبدالجواد', 1, 'fa fa-calendar', '2020-09-28 15:28:19', '2020-09-28 16:42:21'),
(120, 'تقسيط رسوم الطالبمصطفى السيد محمد عبدالجواد', 1, 'تقسيط رسوم الطالبمصطفى السيد محمد عبدالجواد', 1, 'fa fa-calendar', '2020-09-28 15:28:37', '2020-09-28 16:42:21'),
(121, 'تقسيط رسوم الطالبمصطفى السيد محمد عبدالجواد', 1, 'تقسيط رسوم الطالبمصطفى السيد محمد عبدالجواد', 1, 'fa fa-calendar', '2020-09-28 15:32:27', '2020-09-28 16:42:21'),
(122, 'تقسيط رسوم الطالبمصطفى السيد محمد عبدالجواد', 1, 'تقسيط رسوم الطالبمصطفى السيد محمد عبدالجواد', 1, 'fa fa-calendar', '2020-09-28 15:32:48', '2020-09-28 16:42:21'),
(123, 'الطالب مصطفى السيد محمد عبدالجواد دفع 500 فى الخزينه', 1, 'الطالب مصطفى السيد محمد عبدالجواد دفع 500 فى الخزينه', 1, 'fa fa-money', '2020-09-28 15:38:44', '2020-09-28 16:42:21'),
(124, 'تقسيط رسوم الطالبمصطفى السيد محمد عبدالجواد', 1, 'تقسيط رسوم الطالبمصطفى السيد محمد عبدالجواد', 1, 'fa fa-calendar', '2020-09-28 15:45:26', '2020-09-28 16:42:21'),
(125, 'الطالب مصطفى السيد محمد عبدالجواد دفع 500 فى الخزينه', 1, 'الطالب مصطفى السيد محمد عبدالجواد دفع 500 فى الخزينه', 1, 'fa fa-money', '2020-09-28 15:45:56', '2020-09-28 16:42:21'),
(126, 'الطالب مصطفى السيد محمد عبدالجواد دفع 500 فى الخزينه', 1, 'الطالب مصطفى السيد محمد عبدالجواد دفع 500 فى الخزينه', 1, 'fa fa-money', '2020-09-28 15:47:41', '2020-09-28 16:42:21'),
(127, 'الطالب مصطفى السيد محمد عبدالجواد دفع 500 فى الخزينه', 1, 'الطالب مصطفى السيد محمد عبدالجواد دفع 500 فى الخزينه', 1, 'fa fa-money', '2020-09-28 15:49:48', '2020-09-28 16:42:21'),
(128, 'تعديل الخدمهبيسبسيبسي', 1, 'تعديل الخدمهبيسبسيبسي', 1, 'fa fa-trophy', '2020-09-28 16:36:09', '2020-09-28 16:42:21'),
(129, 'تعديل الخدمهبيسبسيبسي', 1, 'تعديل الخدمهبيسبسيبسي', 1, 'fa fa-trophy', '2020-09-28 16:43:06', '2020-09-28 16:43:10'),
(130, 'تعديل الخدمهبيسبسيبسي', 1, 'تعديل الخدمهبيسبسيبسي', 1, 'fa fa-trophy', '2020-09-28 16:43:54', '2020-09-28 16:48:09'),
(131, 'تعديل الخدمهبيسبسيبسي', 1, 'تعديل الخدمهبيسبسيبسي', 1, 'fa fa-trophy', '2020-09-28 16:51:24', '2020-09-28 16:51:31'),
(132, 'تعديل صروف سنه دراسيه', 1, 'تعديل صروف سنه دراسيه', 1, 'fa fa-money', '2020-09-28 16:52:35', '2020-09-28 16:52:42'),
(133, 'ملف تقديم جديد', 1, 'ملف تقديم جديدشاهندا عادل جمال عبدالحميد', 1, 'fa fa-file-o', '2020-09-28 17:08:56', '2020-09-28 17:09:02'),
(134, 'الطالب شاهندا عادل جمال عبدالحميد دفع 200 فى الخزينه', 1, 'الطالب شاهندا عادل جمال عبدالحميد دفع 200 فى الخزينه', 1, 'fa fa-money', '2020-09-28 17:09:34', '2020-09-28 17:09:43'),
(135, 'الطالب شاهندا عادل جمال عبدالحميد دفع 1685 فى الخزينه', 1, 'الطالب شاهندا عادل جمال عبدالحميد دفع 1685 فى الخزينه', 1, 'fa fa-money', '2020-09-28 17:34:05', '2020-09-28 17:34:13'),
(136, 'ملف تقديم جديد', 1, 'ملف تقديم جديدمهند محمود يوسف مجاهد', 1, 'fa fa-file-o', '2020-09-28 17:39:24', '2020-09-28 17:39:30'),
(137, 'الطالب مهند محمود يوسف مجاهد دفع 200 فى الخزينه', 1, 'الطالب مهند محمود يوسف مجاهد دفع 200 فى الخزينه', 1, 'fa fa-money', '2020-09-28 17:52:04', '2020-09-28 17:52:10'),
(138, 'تقسيط رسوم الطالبمهند محمود يوسف مجاهد', 1, 'تقسيط رسوم الطالبمهند محمود يوسف مجاهد', 1, 'fa fa-calendar', '2020-09-28 17:54:33', '2020-09-28 17:54:39'),
(139, 'تقسيط رسوم الطالبمهند محمود يوسف مجاهد', 1, 'تقسيط رسوم الطالبمهند محمود يوسف مجاهد', 1, 'fa fa-calendar', '2020-09-28 18:02:22', '2020-09-28 18:02:29'),
(140, 'الطالب مهند محمود يوسف مجاهد دفع 85 فى الخزينه', 1, 'الطالب مهند محمود يوسف مجاهد دفع 85 فى الخزينه', 1, 'fa fa-money', '2020-09-28 18:03:07', '2020-09-28 18:03:11'),
(141, 'الطالب مهند محمود يوسف مجاهد دفع 100 فى الخزينه', 1, 'الطالب مهند محمود يوسف مجاهد دفع 100 فى الخزينه', 1, 'fa fa-money', '2020-09-28 18:03:34', '2020-09-28 18:03:43'),
(142, 'ملف تقديم جديد', 1, 'ملف تقديم جديداحمد محمد راضى', 1, 'fa fa-file-o', '2020-09-29 04:58:58', '2020-09-29 04:59:04'),
(143, 'ملف تقديم جديد', 1, 'ملف تقديم جديدنهى', 1, 'fa fa-file-o', '2020-09-29 05:00:09', '2020-09-29 05:00:14'),
(144, 'ملف تقديم جديد', 1, 'ملف تقديم جديدسميه احمد', 1, 'fa fa-file-o', '2020-09-29 05:01:28', '2020-09-29 05:01:34'),
(145, 'تعديل صروف سنه دراسيه', 1, 'تعديل صروف سنه دراسيه', 1, 'fa fa-money', '2020-09-29 05:05:54', '2020-09-29 05:05:56'),
(146, 'الطالب سميه احمد دفع 300 فى الخزينه', 1, 'الطالب سميه احمد دفع 300 فى الخزينه', 1, 'fa fa-money', '2020-09-29 05:11:02', '2020-09-29 05:11:04'),
(147, 'تقسيط رسوم الطالبسميه احمد', 1, 'تقسيط رسوم الطالبسميه احمد', 1, 'fa fa-calendar', '2020-09-29 05:13:35', '2020-09-29 05:13:35'),
(148, 'تعديل صروف سنه دراسيه', 1, 'تعديل صروف سنه دراسيه', 1, 'fa fa-money', '2020-09-29 05:20:19', '2020-09-29 05:20:25'),
(149, 'ملف تقديم جديد', 1, 'ملف تقديم جديدهاجر', 1, 'fa fa-file-o', '2020-09-29 05:36:33', '2020-09-29 05:36:36'),
(150, 'الطالب سميه احمد دفع 685 فى الخزينه', 1, 'الطالب سميه احمد دفع 685 فى الخزينه', 1, 'fa fa-money', '2020-09-29 05:37:50', '2020-09-29 05:37:55'),
(151, 'الطالب سميه احمد دفع 685 فى الخزينه', 1, 'الطالب سميه احمد دفع 685 فى الخزينه', 1, 'fa fa-money', '2020-09-29 05:39:57', '2020-09-29 05:40:05'),
(152, 'الطالب نهى دفع 100 فى الخزينه', 1, 'الطالب نهى دفع 100 فى الخزينه', 1, 'fa fa-money', '2020-09-29 05:41:02', '2020-09-29 05:41:05'),
(153, 'الطالب نهى دفع 100 فى الخزينه', 1, 'الطالب نهى دفع 100 فى الخزينه', 1, 'fa fa-money', '2020-09-29 05:52:34', '2020-09-29 05:52:38'),
(154, 'الطالب نهى دفع 100 فى الخزينه', 1, 'الطالب نهى دفع 100 فى الخزينه', 1, 'fa fa-money', '2020-09-29 05:55:54', '2020-09-29 05:55:59'),
(155, 'الطالب نهى دفع 100 فى الخزينه', 1, 'الطالب نهى دفع 100 فى الخزينه', 1, 'fa fa-money', '2020-09-29 05:57:47', '2020-09-29 05:57:52'),
(156, 'الطالب نهى دفع 100 فى الخزينه', 1, 'الطالب نهى دفع 100 فى الخزينه', 1, 'fa fa-money', '2020-09-29 05:58:51', '2020-09-29 05:58:53'),
(157, 'الطالب نهى دفع 100 فى الخزينه', 1, 'الطالب نهى دفع 100 فى الخزينه', 1, 'fa fa-money', '2020-09-29 05:59:17', '2020-09-29 05:59:23'),
(158, 'الطالب نهى دفع 100 فى الخزينه', 1, 'الطالب نهى دفع 100 فى الخزينه', 1, 'fa fa-money', '2020-09-29 06:00:05', '2020-09-29 06:00:14'),
(159, 'الطالب نهى دفع 100 فى الخزينه', 1, 'الطالب نهى دفع 100 فى الخزينه', 1, 'fa fa-money', '2020-09-29 06:01:42', '2020-09-29 06:01:45'),
(160, 'الطالب نهى دفع 100 فى الخزينه', 1, 'الطالب نهى دفع 100 فى الخزينه', 1, 'fa fa-money', '2020-09-29 06:02:20', '2020-09-29 06:02:26'),
(161, 'الطالب نهى دفع 100 فى الخزينه', 1, 'الطالب نهى دفع 100 فى الخزينه', 1, 'fa fa-money', '2020-09-29 06:02:34', '2020-09-29 06:02:45'),
(162, 'الطالب نهى دفع 100 فى الخزينه', 1, 'الطالب نهى دفع 100 فى الخزينه', 1, 'fa fa-money', '2020-09-29 06:04:41', '2020-09-29 06:04:46'),
(163, 'الطالب نهى دفع 100 فى الخزينه', 1, 'الطالب نهى دفع 100 فى الخزينه', 1, 'fa fa-money', '2020-09-29 06:05:02', '2020-09-29 06:05:08'),
(164, 'الطالب نهى دفع 100 فى الخزينه', 1, 'الطالب نهى دفع 100 فى الخزينه', 1, 'fa fa-money', '2020-09-29 06:05:29', '2020-09-29 06:05:47'),
(165, 'الطالب نهى دفع 100 فى الخزينه', 1, 'الطالب نهى دفع 100 فى الخزينه', 1, 'fa fa-money', '2020-09-29 06:06:00', '2020-09-29 06:06:09'),
(166, 'الطالب نهى دفع 100 فى الخزينه', 1, 'الطالب نهى دفع 100 فى الخزينه', 1, 'fa fa-money', '2020-09-29 06:07:43', '2020-09-29 06:07:49'),
(167, 'الطالب نهى دفع 100 فى الخزينه', 1, 'الطالب نهى دفع 100 فى الخزينه', 1, 'fa fa-money', '2020-09-29 06:08:35', '2020-09-29 06:08:48'),
(168, 'الطالب هاجر دفع 200 فى الخزينه', 1, 'الطالب هاجر دفع 200 فى الخزينه', 1, 'fa fa-money', '2020-09-29 06:13:58', '2020-09-29 06:13:59'),
(169, 'تقسيط رسوم الطالبهاجر', 1, 'تقسيط رسوم الطالبهاجر', 1, 'fa fa-calendar', '2020-09-29 06:14:31', '2020-09-29 06:14:38'),
(170, 'الطالب هاجر دفع 500 فى الخزينه', 1, 'الطالب هاجر دفع 500 فى الخزينه', 1, 'fa fa-money', '2020-09-29 06:15:27', '2020-09-29 06:15:29'),
(171, 'تقسيط رسوم الطالبهاجر', 1, 'تقسيط رسوم الطالبهاجر', 1, 'fa fa-calendar', '2020-09-29 06:16:20', '2020-09-29 06:16:28'),
(172, 'تقسيط رسوم الطالبهاجر', 1, 'تقسيط رسوم الطالبهاجر', 1, 'fa fa-calendar', '2020-09-29 06:20:10', '2020-09-29 06:20:20'),
(173, 'الطالب سميه احمد دفع 500 فى الخزينه', 1, 'الطالب سميه احمد دفع 500 فى الخزينه', 1, 'fa fa-money', '2020-09-29 09:44:22', '2020-09-29 09:44:27'),
(174, 'الطالب مهند محمود يوسف مجاهد دفع 100 فى الخزينه', 1, 'الطالب مهند محمود يوسف مجاهد دفع 100 فى الخزينه', 1, 'fa fa-money', '2020-09-29 09:45:50', '2020-09-29 09:45:57'),
(175, 'الطالب نهى دفع 1685 فى الخزينه', 1, 'الطالب نهى دفع 1685 فى الخزينه', 1, 'fa fa-money', '2020-09-29 09:52:52', '2020-09-29 09:53:00'),
(176, 'الطالب مهند محمود يوسف مجاهد دفع 400 فى الخزينه', 1, 'الطالب مهند محمود يوسف مجاهد دفع 400 فى الخزينه', 1, 'fa fa-money', '2020-09-29 09:55:06', '2020-09-29 09:55:14'),
(177, 'الطالب احمد محمد راضى دفع 300 فى الخزينه', 1, 'الطالب احمد محمد راضى دفع 300 فى الخزينه', 1, 'fa fa-money', '2020-09-29 10:02:11', '2020-09-29 10:02:16'),
(178, 'ملف تقديم جديد', 1, 'ملف تقديم جديدمحسن محمد', 1, 'fa fa-file-o', '2020-09-29 10:03:43', '2020-09-29 10:03:45'),
(179, 'تعديل ملف تقديم', 1, 'تعديل ملف تقديممحسن محمد', 1, 'fa fa-file-o', '2020-09-29 10:03:59', '2020-09-29 10:04:04'),
(180, 'الطالب محسن محمد دفع 200 فى الخزينه', 1, 'الطالب محسن محمد دفع 200 فى الخزينه', 1, 'fa fa-money', '2020-09-29 10:05:00', '2020-09-29 10:05:05'),
(181, 'طالب جديد', 1, 'طالب جديداحمد رمضان شعبان عبدالحميد', 1, 'fa fa-user', '2020-10-03 09:53:53', '2020-10-03 09:53:57'),
(182, 'تقسيط رسوم الطالباحمد رمضان شعبان عبدالحميد', 1, 'تقسيط رسوم الطالباحمد رمضان شعبان عبدالحميد', 1, 'fa fa-calendar', '2020-10-03 09:56:52', '2020-10-03 09:57:01'),
(183, 'الطالب احمد رمضان شعبان عبدالحميد دفع 1000 فى الخزينه', 1, 'الطالب احمد رمضان شعبان عبدالحميد دفع 1000 فى الخزينه', 1, 'fa fa-money', '2020-10-03 09:57:22', '2020-10-03 09:57:32'),
(184, 'الطالب احمد رمضان شعبان عبدالحميد دفع 1000 فى الخزينه', 1, 'الطالب احمد رمضان شعبان عبدالحميد دفع 1000 فى الخزينه', 1, 'fa fa-money', '2020-10-03 09:58:13', '2020-10-03 09:58:16'),
(185, 'الطالب احمد رمضان شعبان عبدالحميد دفع 1000 فى الخزينه', 1, 'الطالب احمد رمضان شعبان عبدالحميد دفع 1000 فى الخزينه', 1, 'fa fa-money', '2020-10-03 10:11:37', '2020-10-03 10:11:50'),
(186, 'تقسيط رسوم الطالباحمد رمضان شعبان عبدالحميد', 1, 'تقسيط رسوم الطالباحمد رمضان شعبان عبدالحميد', 1, 'fa fa-calendar', '2020-10-03 10:27:26', '2020-10-03 10:27:41'),
(187, 'الطالب احمد رمضان شعبان عبدالحميد دفع 1000 فى الخزينه', 1, 'الطالب احمد رمضان شعبان عبدالحميد دفع 1000 فى الخزينه', 1, 'fa fa-money', '2020-10-03 10:27:58', '2020-10-03 10:28:20'),
(188, 'الطالب احمد رمضان شعبان عبدالحميد دفع 1000 فى الخزينه', 1, 'الطالب احمد رمضان شعبان عبدالحميد دفع 1000 فى الخزينه', 1, 'fa fa-money', '2020-10-03 10:28:46', '2020-10-03 10:29:03'),
(189, 'ملف تقديم جديد', 1, 'ملف تقديم جديديسرى سمير كامل سعد', 1, 'fa fa-file-o', '2020-10-03 11:47:43', '2020-10-03 12:03:56'),
(190, 'update profile info', 1, 'update profile info', 1, 'fa fa-id-card-o', '2020-10-04 10:26:12', '2020-10-04 10:28:17'),
(191, 'update profile info', 1, 'update profile info', 1, 'fa fa-id-card-o', '2020-10-04 10:26:37', '2020-10-04 10:28:17'),
(192, 'update profile info', 1, 'update profile info', 1, 'fa fa-id-card-o', '2020-10-04 18:03:11', '2020-10-04 18:03:32'),
(193, 'update profile info', 1, 'update profile info', 1, 'fa fa-id-card-o', '2020-10-04 18:04:37', '2020-10-04 18:05:04'),
(194, 'update profile info', 1, 'update profile info', 1, 'fa fa-id-card-o', '2020-10-04 18:26:53', '2020-10-04 18:27:25'),
(195, 'update profile info', 1, 'update profile info', 1, 'fa fa-id-card-o', '2020-10-04 18:28:54', '2020-10-04 18:29:23'),
(196, 'تعديل صروف سنه دراسيه', 1, 'تعديل صروف سنه دراسيه', 1, 'fa fa-money', '2020-10-05 04:58:48', '2020-10-05 05:33:27'),
(197, 'تعديل صروف سنه دراسيه', 1, 'تعديل صروف سنه دراسيه', 1, 'fa fa-money', '2020-10-05 04:59:48', '2020-10-05 05:33:27'),
(198, 'ملف تقديم جديد', 1, 'ملف تقديم جديدعلى ماهر معوض محمد', 1, 'fa fa-file-o', '2020-10-05 05:05:52', '2020-10-05 05:33:27'),
(199, 'طالب جديد', 1, 'طالب جديدمريم محمد ابوالخير محمد عبدالصمد', 1, 'fa fa-user', '2020-10-05 05:08:47', '2020-10-05 05:33:27'),
(200, 'الطالب مريم محمد ابوالخير محمد عبدالصمد دفع 2385 فى الخزينه', 1, 'الطالب مريم محمد ابوالخير محمد عبدالصمد دفع 2385 فى الخزينه', 1, 'fa fa-money', '2020-10-05 05:09:40', '2020-10-05 05:33:27'),
(201, 'الطالب على ماهر معوض محمد دفع 230 فى الخزينه', 1, 'الطالب على ماهر معوض محمد دفع 230 فى الخزينه', 1, 'fa fa-money', '2020-10-05 05:11:58', '2020-10-05 05:33:27'),
(202, 'تقسيط رسوم الطالبعلى ماهر معوض محمد', 1, 'تقسيط رسوم الطالبعلى ماهر معوض محمد', 1, 'fa fa-calendar', '2020-10-05 05:13:31', '2020-10-05 05:33:27'),
(203, 'الطالب على ماهر معوض محمد دفع 385 فى الخزينه', 1, 'الطالب على ماهر معوض محمد دفع 385 فى الخزينه', 1, 'fa fa-money', '2020-10-05 05:13:47', '2020-10-05 05:33:27'),
(204, 'طالب جديد', 1, 'طالب جديداسلام عزت رجب محمد', 1, 'fa fa-user', '2020-10-05 05:17:32', '2020-10-05 05:33:27'),
(205, 'طالب جديد', 1, 'طالب جديداسلام عزت رجب محمد', 1, 'fa fa-user', '2020-10-05 05:18:51', '2020-10-05 05:33:27'),
(206, 'تقسيط رسوم الطالباسلام عزت رجب محمد', 1, 'تقسيط رسوم الطالباسلام عزت رجب محمد', 1, 'fa fa-calendar', '2020-10-05 05:20:00', '2020-10-05 05:33:27'),
(207, 'الطالب اسلام عزت رجب محمد دفع 1000 فى الخزينه', 1, 'الطالب اسلام عزت رجب محمد دفع 1000 فى الخزينه', 1, 'fa fa-money', '2020-10-05 05:20:18', '2020-10-05 05:33:27'),
(208, 'طالب جديد', 1, 'طالب جديداسلام عزت رجب محمد', 1, 'fa fa-user', '2020-10-05 05:56:51', '2020-10-05 06:02:21'),
(209, 'طالب جديد', 1, 'طالب جديدمريم محمد ابوالخير محمد عبدالصمد', 1, 'fa fa-user', '2020-10-05 05:58:38', '2020-10-05 06:02:21'),
(210, 'طالب جديد', 1, 'طالب جديدمريم محمد ابوالخير محمد عبدالصمد', 1, 'fa fa-user', '2020-10-05 05:59:07', '2020-10-05 06:02:21'),
(211, 'update old balance store settings ', 1, 'update old balance store settings ', 1, 'fa fa-cogs', '2020-10-05 06:19:04', '2020-10-05 06:20:10'),
(212, 'update old balance store settings ', 1, 'update old balance store settings ', 1, 'fa fa-cogs', '2020-10-05 06:19:20', '2020-10-05 06:20:10'),
(213, 'ملف تقديم جديد', 1, 'ملف تقديم جديدمعاز عبد المجيد احد', 1, 'fa fa-file-o', '2020-10-05 07:13:22', '2020-10-06 06:09:43'),
(214, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-10-06 06:13:54', '2020-10-06 06:22:37'),
(215, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-10-06 06:21:23', '2020-10-06 06:22:37'),
(216, 'الطالب معاز عبد المجيد احد دفع 100 فى الخزينه', 1, 'الطالب معاز عبد المجيد احد دفع 100 فى الخزينه', 1, 'fa fa-money', '2020-10-06 06:40:27', '2020-10-06 06:41:32'),
(217, 'تقسيط رسوم الطالبمعاز عبد المجيد احد', 1, 'تقسيط رسوم الطالبمعاز عبد المجيد احد', 1, 'fa fa-calendar', '2020-10-06 06:51:31', '2020-10-06 06:51:57'),
(218, 'install the balance of studentمعاز عبد المجيد احد', 1, 'install the balance of studentمعاز عبد المجيد احد', 1, 'fa fa-calendar', '2020-10-06 06:52:56', '2020-10-06 06:54:41'),
(219, 'install the balance of studentمعاز عبد المجيد احد', 1, 'install the balance of studentمعاز عبد المجيد احد', 1, 'fa fa-calendar', '2020-10-06 06:53:24', '2020-10-06 06:54:41'),
(220, 'تقسيط رسوم الطالب معاز عبد المجيد احد', 1, 'تقسيط رسوم الطالب معاز عبد المجيد احد', 1, 'fa fa-calendar', '2020-10-06 07:02:15', '2020-10-06 07:02:21'),
(221, 'الطالب معاز عبد المجيد احد دفع 185 فى الخزينه ', 1, 'الطالب معاز عبد المجيد احد دفع 185 فى الخزينه ', 1, 'fa fa-money', '2020-10-06 07:03:10', '2020-10-06 07:03:14'),
(222, 'الطالب معاز عبد المجيد احد دفع 500 فى الخزينه ', 1, 'الطالب معاز عبد المجيد احد دفع 500 فى الخزينه ', 1, 'fa fa-money', '2020-10-06 07:04:25', '2020-10-06 07:04:30'),
(223, 'ملف تقديم جديد ', 1, 'ملف تقديم جديد شريف ناصر محمد جابر', 1, 'fa fa-file-o', '2020-10-06 10:04:23', '2020-10-06 10:04:30'),
(224, 'الطالب شريف ناصر محمد جابر دفع 300 فى الخزينه ', 1, 'الطالب شريف ناصر محمد جابر دفع 300 فى الخزينه ', 1, 'fa fa-money', '2020-10-06 10:06:08', '2020-10-06 10:06:13'),
(225, 'تقسيط رسوم الطالب شريف ناصر محمد جابر', 1, 'تقسيط رسوم الطالب شريف ناصر محمد جابر', 1, 'fa fa-calendar', '2020-10-06 10:08:15', '2020-10-06 10:08:21'),
(226, 'الطالب شريف ناصر محمد جابر دفع 500 فى الخزينه ', 1, 'الطالب شريف ناصر محمد جابر دفع 500 فى الخزينه ', 1, 'fa fa-money', '2020-10-06 10:08:48', '2020-10-06 10:08:56'),
(227, 'طالب جديد ', 1, 'طالب جديد حسن عبدالناصر حسن عبدالمجيد', 1, 'fa fa-user', '2020-10-06 10:47:25', '2020-10-06 10:47:33'),
(228, 'طالب جديد ', 1, 'طالب جديد حسن عبدالناصر حسن عبدالمجيد', 1, 'fa fa-user', '2020-10-06 10:48:54', '2020-10-06 10:49:02'),
(229, 'الطالب حسن عبدالناصر حسن عبدالمجيد دفع 2000 فى الخزينه ', 1, 'الطالب حسن عبدالناصر حسن عبدالمجيد دفع 2000 فى الخزينه ', 1, 'fa fa-money', '2020-10-06 10:50:21', '2020-10-06 10:50:25'),
(230, 'طالب جديد ', 1, 'طالب جديد على رفاعى عبداللطيف مرزوق', 1, 'fa fa-user', '2020-10-06 10:55:08', '2020-10-06 10:55:19'),
(231, 'الطالب على رفاعى عبداللطيف مرزوق دفع 1500 فى الخزينه ', 1, 'الطالب على رفاعى عبداللطيف مرزوق دفع 1500 فى الخزينه ', 1, 'fa fa-money', '2020-10-06 10:58:59', '2020-10-06 10:59:04'),
(232, 'تقسيط رسوم الطالب على رفاعى عبداللطيف مرزوق', 1, 'تقسيط رسوم الطالب على رفاعى عبداللطيف مرزوق', 1, 'fa fa-calendar', '2020-10-06 11:00:36', '2020-10-06 11:00:47'),
(233, 'الطالب على رفاعى عبداللطيف مرزوق دفع 385 فى الخزينه ', 1, 'الطالب على رفاعى عبداللطيف مرزوق دفع 385 فى الخزينه ', 1, 'fa fa-money', '2020-10-06 11:00:52', '2020-10-06 11:01:02'),
(234, 'تقسيط رسوم الطالب على رفاعى عبداللطيف مرزوق', 1, 'تقسيط رسوم الطالب على رفاعى عبداللطيف مرزوق', 1, 'fa fa-calendar', '2020-10-06 11:03:29', '2020-10-06 11:03:41'),
(235, 'طالب جديد ', 1, 'طالب جديد محمود هلال حسين عبدالله', 1, 'fa fa-user', '2020-10-06 11:51:52', '2020-10-06 11:52:11'),
(236, 'الطالب محمود هلال حسين عبدالله دفع 2000 فى الخزينه ', 1, 'الطالب محمود هلال حسين عبدالله دفع 2000 فى الخزينه ', 1, 'fa fa-money', '2020-10-06 11:52:29', '2020-10-06 11:52:51'),
(237, 'الطالب محمود هلال حسين عبدالله دفع 2000 فى الخزينه ', 1, 'الطالب محمود هلال حسين عبدالله دفع 2000 فى الخزينه ', 1, 'fa fa-money', '2020-10-06 11:54:12', '2020-10-06 11:54:34'),
(238, 'طالب جديد ', 1, 'طالب جديد محمود هلال حسين عبدالله', 1, 'fa fa-user', '2020-10-06 11:54:57', '2020-10-06 11:55:27'),
(239, 'طالب جديد ', 1, 'طالب جديد محمود هلال حسين عبدالله', 1, 'fa fa-user', '2020-10-06 11:55:09', '2020-10-06 11:55:27'),
(240, 'الطالب محمود هلال حسين عبدالله دفع 2000 فى الخزينه ', 1, 'الطالب محمود هلال حسين عبدالله دفع 2000 فى الخزينه ', 1, 'fa fa-money', '2020-10-06 11:55:48', '2020-10-06 11:56:03'),
(241, 'الطالب محمود هلال حسين عبدالله دفع 2000 فى الخزينه ', 1, 'الطالب محمود هلال حسين عبدالله دفع 2000 فى الخزينه ', 1, 'fa fa-money', '2020-10-06 11:57:24', '2020-10-06 11:57:52'),
(242, 'تعديل الخدمه شهادة اثبات قيد', 1, 'تعديل الخدمه شهادة اثبات قيد', 1, 'fa fa-trophy', '2020-10-07 05:01:39', '2020-10-07 05:01:43'),
(243, 'add Store خزنة المعهد', 1, 'add Store خزنة المعهد', 1, 'fa fa-trophy', '2020-10-07 05:02:30', '2020-10-07 05:02:33'),
(244, 'اضافة خدمه افاده', 1, 'اضافة خدمه افاده', 1, 'fa fa-trophy', '2020-10-07 05:04:05', '2020-10-07 05:04:10'),
(245, 'اضافة خدمه كرنيه بدل فاقد', 1, 'اضافة خدمه كرنيه بدل فاقد', 1, 'fa fa-trophy', '2020-10-07 05:06:12', '2020-10-07 05:06:18'),
(246, 'تعديل الخدمه التماس اعادة رصد درجات', 1, 'تعديل الخدمه التماس اعادة رصد درجات', 1, 'fa fa-trophy', '2020-10-07 05:07:54', '2020-10-07 05:07:59'),
(247, 'تعديل الخدمه كرنيه بدل فاقد', 1, 'تعديل الخدمه كرنيه بدل فاقد', 1, 'fa fa-trophy', '2020-10-07 05:14:25', '2020-10-07 05:14:30'),
(248, 'تعديل الخدمه افاده', 1, 'تعديل الخدمه افاده', 1, 'fa fa-trophy', '2020-10-07 05:14:39', '2020-10-07 05:14:45'),
(249, 'تعديل الخدمه كرنيه بدل فاقد', 1, 'تعديل الخدمه كرنيه بدل فاقد', 1, 'fa fa-trophy', '2020-10-07 05:18:40', '2020-10-07 05:18:45'),
(250, 'تعديل الخدمه افاده', 1, 'تعديل الخدمه افاده', 1, 'fa fa-trophy', '2020-10-07 05:18:43', '2020-10-07 05:18:45'),
(251, 'تعديل الخدمه كرنيه بدل فاقد', 1, 'تعديل الخدمه كرنيه بدل فاقد', 1, 'fa fa-trophy', '2020-10-07 05:20:37', '2020-10-07 05:20:42'),
(252, 'تعديل الخدمه افاده', 1, 'تعديل الخدمه افاده', 1, 'fa fa-trophy', '2020-10-07 05:20:39', '2020-10-07 05:20:42'),
(253, 'اضافة خدمه fdsf', 1, 'اضافة خدمه fdsf', 1, 'fa fa-trophy', '2020-10-07 05:24:51', '2020-10-07 05:24:58'),
(254, 'حذف خدمه fdsf', 1, 'حذف خدمه fdsf', 1, 'fa fa-trophy', '2020-10-07 05:24:58', '2020-10-07 05:25:00'),
(255, 'تعديل الخدمه شهادة اثبات قيد', 1, 'تعديل الخدمه شهادة اثبات قيد', 1, 'fa fa-trophy', '2020-10-07 06:47:27', '2020-10-07 06:47:30'),
(256, 'تعديل الخدمه شهادة تخرج', 1, 'تعديل الخدمه شهادة تخرج', 1, 'fa fa-trophy', '2020-10-07 06:47:34', '2020-10-07 06:47:39'),
(257, 'تعديل الخدمه كرنيه بدل فاقد', 1, 'تعديل الخدمه كرنيه بدل فاقد', 1, 'fa fa-trophy', '2020-10-07 06:47:53', '2020-10-07 06:47:57'),
(258, 'الطالب مريم محمد ابوالخير محمد عبدالصمد دفع 50 فى الخزينه ', 1, 'الطالب مريم محمد ابوالخير محمد عبدالصمد دفع 50 فى الخزينه ', 1, 'fa fa-money', '2020-10-07 07:17:26', '2020-10-07 07:17:33'),
(259, 'الطالب يسرى سمير كامل سعد دفع 100 فى الخزينه ', 1, 'الطالب يسرى سمير كامل سعد دفع 100 فى الخزينه ', 1, 'fa fa-money', '2020-10-07 07:28:04', '2020-10-07 07:28:09'),
(260, 'الطالب يسرى سمير كامل سعد دفع 50 فى الخزينه ', 1, 'الطالب يسرى سمير كامل سعد دفع 50 فى الخزينه ', 1, 'fa fa-money', '2020-10-07 07:38:47', '2020-10-07 07:38:56'),
(261, 'student مريم محمد ابوالخير محمد عبدالصمد refund  in store', 1, 'student مريم محمد ابوالخير محمد عبدالصمد refund  in store', 1, 'fa fa-money', '2020-10-07 09:31:38', '2020-10-07 09:31:42'),
(262, 'student مريم محمد ابوالخير محمد عبدالصمد refund  in store', 1, 'student مريم محمد ابوالخير محمد عبدالصمد refund  in store', 1, 'fa fa-money', '2020-10-07 09:33:18', '2020-10-07 09:33:21'),
(263, 'student مصطفى السيد محمد عبدالجواد refund  in store', 1, 'student مصطفى السيد محمد عبدالجواد refund  in store', 1, 'fa fa-money', '2020-10-07 09:37:13', '2020-10-07 09:37:17'),
(264, 'الطالب نهى رد رسوم بقيمة  فى الخزينه', 1, 'الطالب نهى رد رسوم بقيمة  فى الخزينه', 1, 'fa fa-money', '2020-10-07 09:39:30', '2020-10-07 09:39:34'),
(265, 'الطالب هاجر رد رسوم بقيمة 100 فى الخزينه', 1, 'الطالب هاجر رد رسوم بقيمة 100 فى الخزينه', 1, 'fa fa-money', '2020-10-07 09:40:47', '2020-10-07 09:40:52'),
(266, 'payment value removed from store خزنة شؤن الطلاب', 1, 'payment value removed from store خزنة شؤن الطلاب', 1, 'fa fa-money', '2020-10-07 10:26:17', '2020-10-07 10:26:22'),
(267, 'payment value removed from store خزنة شؤن الطلاب', 1, 'payment value removed from store خزنة شؤن الطلاب', 1, 'fa fa-money', '2020-10-07 10:28:55', '2020-10-07 10:28:59'),
(268, 'edit payment info of number 83', 1, 'edit payment info of number 83', 1, 'fa fa-money', '2020-10-07 11:10:10', '2020-10-07 11:10:13'),
(269, 'edit payment info of number 84', 1, 'edit payment info of number 84', 1, 'fa fa-money', '2020-10-07 11:11:04', '2020-10-07 11:11:08'),
(270, 'طالب جديد ', 1, 'طالب جديد مريم محمد ابوالخير محمد عبدالصمد', 1, 'fa fa-user', '2020-10-07 11:16:14', '2020-10-07 11:16:22'),
(271, 'تعديل صروف سنه دراسيه ', 1, 'تعديل صروف سنه دراسيه ', 1, 'fa fa-money', '2020-10-07 11:25:04', '2020-10-07 11:25:10'),
(272, 'تعديل صروف سنه دراسيه ', 1, 'تعديل صروف سنه دراسيه ', 1, 'fa fa-money', '2020-10-07 11:26:21', '2020-10-07 11:26:25'),
(273, 'اضافة خدمه كارنيه بدل فاقد', 1, 'اضافة خدمه كارنيه بدل فاقد', 1, 'fa fa-trophy', '2020-10-07 11:29:23', '2020-10-07 11:29:28'),
(274, 'الطالب على ماهر معوض محمد دفع 100 فى الخزينه ', 1, 'الطالب على ماهر معوض محمد دفع 100 فى الخزينه ', 1, 'fa fa-money', '2020-10-07 11:30:37', '2020-10-07 11:30:43'),
(275, 'تعديل الخدمه التماس اعادة رصد درجات', 1, 'تعديل الخدمه التماس اعادة رصد درجات', 1, 'fa fa-trophy', '2020-10-07 11:31:49', '2020-10-07 11:31:53'),
(276, 'تعديل الخدمه التماس اعادة رصد درجات', 1, 'تعديل الخدمه التماس اعادة رصد درجات', 1, 'fa fa-trophy', '2020-10-07 11:32:27', '2020-10-07 11:32:32'),
(277, 'طالب جديد ', 1, 'طالب جديد مارى طلعت سعد سعيد', 1, 'fa fa-user', '2020-10-07 11:37:52', '2020-10-07 11:37:56'),
(278, 'تعديل الخدمه كارنيه بدل فاقد 1', 1, 'تعديل الخدمه كارنيه بدل فاقد 1', 1, 'fa fa-trophy', '2020-10-10 08:03:34', '2020-10-10 08:03:39'),
(279, 'طالب جديد ', 1, 'طالب جديد مارى طلعت سعد سعيد', 1, 'fa fa-user', '2020-10-10 09:13:13', '2020-10-10 09:13:21'),
(280, 'الطالب مارى طلعت سعد سعيد دفع 1000 فى الخزينه ', 1, 'الطالب مارى طلعت سعد سعيد دفع 1000 فى الخزينه ', 1, 'fa fa-money', '2020-10-10 09:13:59', '2020-10-10 09:14:12'),
(281, 'ملف تقديم جديد ', 1, 'ملف تقديم جديد محمود محمد طه', 1, 'fa fa-file-o', '2020-10-10 09:24:47', '2020-10-10 09:24:53'),
(282, 'تغير الترجمه ', 1, 'تغير الترجمه ', 1, 'fa fa-language', '2020-10-10 09:58:55', '2020-10-10 10:09:57'),
(283, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-10-10 10:08:43', '2020-10-10 10:09:57'),
(284, 'تعديل الخدمهكارنيه بدل فاقد 1', 1, 'تعديل الخدمهكارنيه بدل فاقد 1', 1, 'fa fa-trophy', '2020-10-10 10:11:25', '2020-10-10 10:11:28'),
(285, 'تعديل الخدمهكرنيه بدل فاقد', 1, 'تعديل الخدمهكرنيه بدل فاقد', 1, 'fa fa-trophy', '2020-10-10 10:11:30', '2020-10-10 10:11:34'),
(286, 'تعديل الخدمهافاده', 1, 'تعديل الخدمهافاده', 1, 'fa fa-trophy', '2020-10-10 10:11:36', '2020-10-10 10:11:42'),
(287, 'تعديل الخدمهالتماس اعادة رصد درجات', 1, 'تعديل الخدمهالتماس اعادة رصد درجات', 1, 'fa fa-trophy', '2020-10-10 10:11:40', '2020-10-10 10:11:42'),
(288, 'تعديل الخدمهشهادة اثبات قيد', 1, 'تعديل الخدمهشهادة اثبات قيد', 1, 'fa fa-trophy', '2020-10-10 10:11:45', '2020-10-10 10:11:49'),
(289, 'تعديل الخدمه  كارنيه بدل فاقد 1', 1, 'تعديل الخدمه  كارنيه بدل فاقد 1', 1, 'fa fa-trophy', '2020-10-10 10:13:12', '2020-10-10 10:13:22'),
(290, 'تغير الترجمه  ', 1, 'تغير الترجمه  ', 1, 'fa fa-language', '2020-10-10 10:15:24', '2020-10-10 10:26:23'),
(291, 'تغير الترجمه  ', 1, 'تغير الترجمه  ', 1, 'fa fa-language', '2020-10-10 13:42:37', '2020-10-10 13:47:54'),
(292, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-10-10 13:47:26', '2020-10-10 13:47:54'),
(293, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-10-10 13:47:28', '2020-10-10 13:47:54'),
(294, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-10-11 11:12:25', '2020-10-11 11:14:16'),
(295, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-10-11 11:14:07', '2020-10-11 11:14:16'),
(296, 'ملف تقديم جديد', 1, 'ملف تقديم جديدكريستينا عاطف مرقص', 1, 'fa fa-file-o', '2020-10-11 11:36:55', '2020-10-11 11:36:59'),
(297, 'تعديل ملف تقديم', 1, 'تعديل ملف تقديمكريستينا عاطف مرقص', 1, 'fa fa-file-o', '2020-10-11 11:38:32', '2020-10-11 11:38:38'),
(298, 'الطالب كريستينا عاطف مرقص دفع 100 فى الخزينه', 1, 'الطالب كريستينا عاطف مرقص دفع 100 فى الخزينه', 1, 'fa fa-money', '2020-10-11 11:40:03', '2020-10-11 11:40:13'),
(299, 'الطالب كريستينا عاطف مرقص دفع 50 فى الخزينه', 1, 'الطالب كريستينا عاطف مرقص دفع 50 فى الخزينه', 1, 'fa fa-money', '2020-10-11 11:41:41', '2020-10-11 11:42:22'),
(300, 'مبلغ الايصال طرح من الخزينهخزنة شؤن الطلاب', 1, 'مبلغ الايصال طرح من الخزينهخزنة شؤن الطلاب', 1, 'fa fa-money', '2020-10-11 11:43:59', '2020-10-11 11:44:54'),
(301, 'الطالب كريستينا عاطف مرقص رد رسوم بقيمة 100 فى الخزينه', 1, 'الطالب كريستينا عاطف مرقص رد رسوم بقيمة 100 فى الخزينه', 1, 'fa fa-money', '2020-10-11 11:49:15', '2020-10-11 11:51:30'),
(302, 'ملف تقديم جديد', 1, 'ملف تقديم جديداحمد عبدالعظيم حسن شعبان', 1, 'fa fa-file-o', '2020-10-12 10:51:09', '2020-10-12 10:51:15'),
(303, 'ملف تقديم جديد', 1, 'ملف تقديم جديدبطه سيد حشمت السيد', 1, 'fa fa-file-o', '2020-10-12 10:54:10', '2020-10-12 10:54:17'),
(304, 'طالب جديد', 1, 'طالب جديدطراف محمد جواد يونس', 1, 'fa fa-user', '2020-10-12 10:59:21', '2020-10-12 10:59:35'),
(305, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-10-12 11:04:24', '2020-10-12 11:08:58'),
(306, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-10-12 11:07:07', '2020-10-12 11:08:58'),
(307, 'اضافة خدمه الاشتراك فى الاتوبيس ترم اول', 1, 'اضافة خدمه الاشتراك فى الاتوبيس ترم اول', 1, 'fa fa-trophy', '2020-10-12 11:35:41', '2020-10-12 11:35:46'),
(308, 'الطالب احمد عبدالعظيم حسن شعبان دفع 200 فى الخزينه ', 1, 'الطالب احمد عبدالعظيم حسن شعبان دفع 200 فى الخزينه ', 1, 'fa fa-money', '2020-10-12 11:40:06', '2020-10-12 11:40:11'),
(309, 'الطالب احمد عبدالعظيم حسن شعبان دفع 50 فى الخزينه ', 1, 'الطالب احمد عبدالعظيم حسن شعبان دفع 50 فى الخزينه ', 1, 'fa fa-money', '2020-10-12 12:05:57', '2020-10-12 12:06:07'),
(310, 'تعديل الخدمه افاده', 1, 'تعديل الخدمه افاده', 1, 'fa fa-trophy', '2020-10-12 12:30:19', '2020-10-12 12:30:36'),
(311, 'تعديل الخدمه افاده', 1, 'تعديل الخدمه افاده', 1, 'fa fa-trophy', '2020-10-12 12:31:51', '2020-10-12 12:32:18'),
(312, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-10-12 12:33:08', '2020-10-12 12:33:54'),
(313, 'تعديل الخدمهافاده', 1, 'تعديل الخدمهافاده', 1, 'fa fa-trophy', '2020-10-12 12:35:33', '2020-10-12 12:35:38'),
(314, 'الطالب احمد عبدالعظيم حسن شعبان دفع 0 فى الخزينه', 1, 'الطالب احمد عبدالعظيم حسن شعبان دفع 0 فى الخزينه', 1, 'fa fa-money', '2020-10-12 12:43:28', '2020-10-12 12:43:31'),
(315, 'تقسيط رسوم الطالباحمد عبدالعظيم حسن شعبان', 1, 'تقسيط رسوم الطالباحمد عبدالعظيم حسن شعبان', 1, 'fa fa-calendar', '2020-10-12 12:44:47', '2020-10-12 12:44:52'),
(316, 'الطالب احمد عبدالعظيم حسن شعبان دفع 815 فى الخزينه', 1, 'الطالب احمد عبدالعظيم حسن شعبان دفع 815 فى الخزينه', 1, 'fa fa-money', '2020-10-12 12:44:59', '2020-10-12 12:45:02'),
(317, 'الطالب بطه سيد حشمت السيد دفع 110 فى الخزينه', 1, 'الطالب بطه سيد حشمت السيد دفع 110 فى الخزينه', 1, 'fa fa-money', '2020-10-12 12:50:44', '2020-10-12 12:50:49'),
(318, 'الطالب بطه سيد حشمت السيد دفع 0 فى الخزينه', 1, 'الطالب بطه سيد حشمت السيد دفع 0 فى الخزينه', 1, 'fa fa-money', '2020-10-12 12:51:18', '2020-10-12 12:51:23'),
(319, 'الطالب بطه سيد حشمت السيد دفع 2385 فى الخزينه', 1, 'الطالب بطه سيد حشمت السيد دفع 2385 فى الخزينه', 1, 'fa fa-money', '2020-10-12 12:51:31', '2020-10-12 12:51:36'),
(320, 'تقسيط رسوم الطالبطراف محمد جواد يونس', 1, 'تقسيط رسوم الطالبطراف محمد جواد يونس', 1, 'fa fa-calendar', '2020-10-12 13:31:07', '2020-10-12 13:31:18'),
(321, 'الطالب طراف محمد جواد يونس دفع 5000 فى الخزينه', 1, 'الطالب طراف محمد جواد يونس دفع 5000 فى الخزينه', 1, 'fa fa-money', '2020-10-12 13:31:15', '2020-10-12 13:31:18'),
(322, 'تقسيط رسوم الطالبطراف محمد جواد يونس', 1, 'تقسيط رسوم الطالبطراف محمد جواد يونس', 1, 'fa fa-calendar', '2020-10-12 13:40:41', '2020-10-12 13:40:46'),
(323, 'الطالب طراف محمد جواد يونس دفع 1000 فى الخزينه', 1, 'الطالب طراف محمد جواد يونس دفع 1000 فى الخزينه', 1, 'fa fa-money', '2020-10-12 13:40:48', '2020-10-12 13:40:52'),
(324, 'الطالب طراف محمد جواد يونس دفع 2385 فى الخزينه', 1, 'الطالب طراف محمد جواد يونس دفع 2385 فى الخزينه', 1, 'fa fa-money', '2020-10-12 13:40:56', '2020-10-12 13:40:59'),
(325, 'الطالب طراف محمد جواد يونس دفع 100 فى الخزينه', 1, 'الطالب طراف محمد جواد يونس دفع 100 فى الخزينه', 1, 'fa fa-money', '2020-10-12 13:41:38', '2020-10-12 13:41:44'),
(326, 'الطالب طراف محمد جواد يونس رد رسوم بقيمة 50 فى الخزينه', 1, 'الطالب طراف محمد جواد يونس رد رسوم بقيمة 50 فى الخزينه', 1, 'fa fa-money', '2020-10-12 13:44:59', '2020-10-12 13:45:02'),
(327, 'تعديل صروف سنه دراسيه', 1, 'تعديل صروف سنه دراسيه', 1, 'fa fa-money', '2020-10-12 14:24:08', '2020-10-12 14:24:13'),
(328, 'الطالب احمد عبدالعظيم حسن شعبان دفع 50 فى الخزينه', 1, 'الطالب احمد عبدالعظيم حسن شعبان دفع 50 فى الخزينه', 1, 'fa fa-money', '2020-10-13 04:33:35', '2020-10-13 04:34:30'),
(329, 'الطالب احمد عبدالعظيم حسن شعبان دفع 50 فى الخزينه', 1, 'الطالب احمد عبدالعظيم حسن شعبان دفع 50 فى الخزينه', 1, 'fa fa-money', '2020-10-13 04:35:11', '2020-10-13 04:53:35'),
(330, 'الطالب احمد عبدالعظيم حسن شعبان دفع 50 فى الخزينه', 1, 'الطالب احمد عبدالعظيم حسن شعبان دفع 50 فى الخزينه', 1, 'fa fa-money', '2020-10-13 04:54:51', '2020-10-13 04:55:25'),
(331, 'الطالب احمد عبدالعظيم حسن شعبان دفع 50 فى الخزينه', 1, 'الطالب احمد عبدالعظيم حسن شعبان دفع 50 فى الخزينه', 1, 'fa fa-money', '2020-10-13 04:55:49', '2020-10-13 05:00:29'),
(332, 'تعديل صروف سنه دراسيه', 1, 'تعديل صروف سنه دراسيه', 1, 'fa fa-money', '2020-10-13 06:22:45', '2020-10-13 07:29:46'),
(333, 'حذف مصروف دراسىمصاريف ترم ثانى', 1, 'حذف مصروف دراسىمصاريف ترم ثانى', 1, 'fa fa-money', '2020-10-13 06:22:51', '2020-10-13 07:29:46'),
(334, 'تعديل صروف سنه دراسيه', 1, 'تعديل صروف سنه دراسيه', 1, 'fa fa-money', '2020-10-13 06:23:49', '2020-10-13 07:29:46'),
(335, 'تعديل صروف سنه دراسيه', 1, 'تعديل صروف سنه دراسيه', 1, 'fa fa-money', '2020-10-13 06:23:57', '2020-10-13 07:29:46'),
(336, 'تعديل صروف سنه دراسيه', 1, 'تعديل صروف سنه دراسيه', 1, 'fa fa-money', '2020-10-13 06:24:51', '2020-10-13 07:29:46'),
(337, 'حذف مصروف دراسىمصاريف ترم تانى', 1, 'حذف مصروف دراسىمصاريف ترم تانى', 1, 'fa fa-money', '2020-10-13 06:25:00', '2020-10-13 07:29:46'),
(338, 'تعديل صروف سنه دراسيه', 1, 'تعديل صروف سنه دراسيه', 1, 'fa fa-money', '2020-10-13 06:25:52', '2020-10-13 07:29:46'),
(339, 'طالب جديد', 1, 'طالب جديدمحمود محمد لبيب عبدالناصر', 1, 'fa fa-user', '2020-10-13 06:28:49', '2020-10-13 07:29:46'),
(340, 'طالب جديد', 1, 'طالب جديدبلال حمزه حسين جوده', 1, 'fa fa-user', '2020-10-13 06:30:11', '2020-10-13 07:29:46'),
(341, 'ملف تقديم جديد', 1, 'ملف تقديم جديداحمد حمدى ابراهيم عبدالسلام', 1, 'fa fa-file-o', '2020-10-13 06:31:08', '2020-10-13 07:29:46'),
(342, 'ملف تقديم جديد', 1, 'ملف تقديم جديداحمد اشرف محمد عبد اللطيف', 1, 'fa fa-file-o', '2020-10-13 06:33:30', '2020-10-13 07:29:46'),
(343, 'تعديل ملف تقديم', 1, 'تعديل ملف تقديماحمد حمدى ابراهيم عبدالسلام', 1, 'fa fa-file-o', '2020-10-13 06:33:49', '2020-10-13 07:29:46'),
(344, 'طالب جديد', 1, 'طالب جديدبلال حمزه حسين جوده', 1, 'fa fa-user', '2020-10-13 06:34:15', '2020-10-13 07:29:46'),
(345, 'طالب جديد', 1, 'طالب جديدمحمود محمد لبيب عبدالناصر', 1, 'fa fa-user', '2020-10-13 06:34:38', '2020-10-13 07:29:46'),
(346, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-10-13 06:37:25', '2020-10-13 07:29:46'),
(347, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-10-13 06:38:20', '2020-10-13 07:29:46'),
(348, 'الطالب احمد حمدى ابراهيم عبدالسلام دفع 100 فى الخزينه', 1, 'الطالب احمد حمدى ابراهيم عبدالسلام دفع 100 فى الخزينه', 1, 'fa fa-money', '2020-10-13 06:46:50', '2020-10-13 07:29:46'),
(349, 'تعديل الخدمهالاشتراك فى الاتوبيس ترم اول', 1, 'تعديل الخدمهالاشتراك فى الاتوبيس ترم اول', 1, 'fa fa-trophy', '2020-10-13 06:53:06', '2020-10-13 07:29:46'),
(350, 'تعديل الخدمهالاشتراك فى الاتوبيس ترم اول', 1, 'تعديل الخدمهالاشتراك فى الاتوبيس ترم اول', 1, 'fa fa-trophy', '2020-10-13 06:55:38', '2020-10-13 07:29:46'),
(351, 'الطالب احمد حمدى ابراهيم عبدالسلام دفع 100 فى الخزينه', 1, 'الطالب احمد حمدى ابراهيم عبدالسلام دفع 100 فى الخزينه', 1, 'fa fa-money', '2020-10-13 06:58:18', '2020-10-13 07:29:46'),
(352, 'الطالب احمد اشرف محمد عبد اللطيف دفع 200 فى الخزينه', 1, 'الطالب احمد اشرف محمد عبد اللطيف دفع 200 فى الخزينه', 1, 'fa fa-money', '2020-10-13 07:02:02', '2020-10-13 07:29:46'),
(353, 'الطالب احمد اشرف محمد عبد اللطيف دفع 200 فى الخزينه', 1, 'الطالب احمد اشرف محمد عبد اللطيف دفع 200 فى الخزينه', 1, 'fa fa-money', '2020-10-13 07:03:19', '2020-10-13 07:29:46'),
(354, 'الطالب احمد اشرف محمد عبد اللطيف دفع 100 فى الخزينه', 1, 'الطالب احمد اشرف محمد عبد اللطيف دفع 100 فى الخزينه', 1, 'fa fa-money', '2020-10-13 07:08:04', '2020-10-13 07:29:46');
INSERT INTO `notification` (`id`, `title`, `user_id`, `body`, `seen`, `icon`, `created_at`, `updated_at`) VALUES
(355, 'الطالب احمد حمدى ابراهيم عبدالسلام دفع 1685 فى الخزينه', 1, 'الطالب احمد حمدى ابراهيم عبدالسلام دفع 1685 فى الخزينه', 1, 'fa fa-money', '2020-10-13 07:18:17', '2020-10-13 07:29:46'),
(356, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-10-14 04:43:09', '2020-10-14 04:44:46'),
(357, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-10-14 04:48:33', '2020-10-14 04:50:00'),
(358, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-10-14 04:50:45', '2020-10-14 04:54:26'),
(359, 'تعديل الخدمهالاشتراك فى الاتوبيس ترم اول', 1, 'تعديل الخدمهالاشتراك فى الاتوبيس ترم اول', 1, 'fa fa-trophy', '2020-10-14 04:51:57', '2020-10-14 04:54:26'),
(360, 'تعديل الخدمهالاشتراك فى الاتوبيس ترم اول', 1, 'تعديل الخدمهالاشتراك فى الاتوبيس ترم اول', 1, 'fa fa-trophy', '2020-10-14 04:52:24', '2020-10-14 04:54:26'),
(361, 'تعديل الخدمهالاشتراك فى الاتوبيس ترم اول', 1, 'تعديل الخدمهالاشتراك فى الاتوبيس ترم اول', 1, 'fa fa-trophy', '2020-10-14 04:55:07', '2020-10-14 04:55:31'),
(362, 'تعديل الخدمهالاشتراك فى الاتوبيس ترم اول', 1, 'تعديل الخدمهالاشتراك فى الاتوبيس ترم اول', 1, 'fa fa-trophy', '2020-10-14 04:55:43', '2020-10-14 04:57:03'),
(363, 'تعديل الخدمهالاشتراك فى الاتوبيس ترم اول', 1, 'تعديل الخدمهالاشتراك فى الاتوبيس ترم اول', 1, 'fa fa-trophy', '2020-10-14 04:55:47', '2020-10-14 04:57:03'),
(364, 'تعديل الخدمهكارنيه بدل فاقد 1', 1, 'تعديل الخدمهكارنيه بدل فاقد 1', 1, 'fa fa-trophy', '2020-10-14 05:05:08', '2020-10-14 05:07:06'),
(365, 'تعديل الخدمهافاده', 1, 'تعديل الخدمهافاده', 1, 'fa fa-trophy', '2020-10-14 05:05:23', '2020-10-14 05:07:06'),
(366, 'تعديل الخدمهالتماس اعادة رصد درجات', 1, 'تعديل الخدمهالتماس اعادة رصد درجات', 1, 'fa fa-trophy', '2020-10-14 05:05:27', '2020-10-14 05:07:06'),
(367, 'الطالب احمد عبدالعظيم حسن شعبان دفع 200 فى الخزينه', 1, 'الطالب احمد عبدالعظيم حسن شعبان دفع 200 فى الخزينه', 1, 'fa fa-money', '2020-10-14 05:18:06', '2020-10-14 05:25:28'),
(368, 'تعديل الخدمهكرنيه بدل فاقد', 1, 'تعديل الخدمهكرنيه بدل فاقد', 1, 'fa fa-trophy', '2020-10-14 05:22:33', '2020-10-14 05:25:28'),
(369, 'تعديل الخدمهكرنيه بدل فاقد', 1, 'تعديل الخدمهكرنيه بدل فاقد', 1, 'fa fa-trophy', '2020-10-14 05:22:33', '2020-10-14 05:25:28'),
(370, 'تعديل الخدمهكرنيه بدل فاقد', 1, 'تعديل الخدمهكرنيه بدل فاقد', 1, 'fa fa-trophy', '2020-10-14 05:22:33', '2020-10-14 05:25:28'),
(371, 'تعديل الخدمهكرنيه بدل فاقد', 1, 'تعديل الخدمهكرنيه بدل فاقد', 1, 'fa fa-trophy', '2020-10-14 05:22:34', '2020-10-14 05:25:28'),
(372, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-11-10 08:47:27', '2020-11-10 08:55:27'),
(373, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-11-10 08:54:47', '2020-11-10 08:55:27'),
(374, 'create new course category علوم حاسب', 1, 'create new course category علوم حاسب', 1, 'fa fa-cubes', '2020-11-10 08:56:43', '2020-11-10 09:22:00'),
(375, 'create new degree map امتياز', 1, 'create new degree map امتياز', 1, 'fa fa-th-list', '2020-11-10 08:57:11', '2020-11-10 09:22:00'),
(376, 'create new course Operating System', 1, 'create new course Operating System', 1, 'fa fa-book', '2020-11-10 09:03:27', '2020-11-10 09:22:00'),
(377, 'create new course category Mathematics', 1, 'create new course category Mathematics', 1, 'fa fa-cubes', '2020-11-10 09:04:08', '2020-11-10 09:22:00'),
(378, 'create new course Math I', 1, 'create new course Math I', 1, 'fa fa-book', '2020-11-10 09:13:29', '2020-11-10 09:22:00'),
(379, 'update course Operating System', 1, 'update course Operating System', 1, 'fa fa-book', '2020-11-10 09:19:11', '2020-11-10 09:22:00'),
(380, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-11-10 09:36:46', '2020-11-10 09:39:09'),
(381, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-11-10 09:39:36', '2020-11-10 09:57:25'),
(382, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-11-10 09:40:29', '2020-11-10 09:57:25'),
(383, 'add discount_type تفوق رياضى', 1, 'add discount_type تفوق رياضى', 1, 'fa fa-percent', '2020-11-10 10:01:35', '2020-11-10 10:34:11'),
(384, 'open courses ', 1, 'open courses ', 1, 'fa fa-book', '2020-11-10 10:45:46', '2020-11-10 10:58:57'),
(385, 'open courses ', 1, 'open courses ', 1, 'fa fa-book', '2020-11-10 10:45:54', '2020-11-10 10:58:57'),
(386, 'انشاء مقرر جديدMath II', 1, 'انشاء مقرر جديدMath II', 1, 'fa fa-book', '2020-11-10 11:02:46', '2020-11-11 07:23:17'),
(387, 'انشاء مقرر جديدMATH III', 1, 'انشاء مقرر جديدMATH III', 1, 'fa fa-book', '2020-11-10 11:05:52', '2020-11-11 07:23:17'),
(388, 'انشاء مقرر جديدIntroduction ot Computer Science', 1, 'انشاء مقرر جديدIntroduction ot Computer Science', 1, 'fa fa-book', '2020-11-10 11:07:10', '2020-11-11 07:23:17'),
(389, 'انشاء مقرر جديدC++ Basics', 1, 'انشاء مقرر جديدC++ Basics', 1, 'fa fa-book', '2020-11-10 11:08:20', '2020-11-11 07:23:17'),
(390, 'انشاء مقرر جديدObject Oriented Programming', 1, 'انشاء مقرر جديدObject Oriented Programming', 1, 'fa fa-book', '2020-11-10 11:09:05', '2020-11-11 07:23:17'),
(391, 'change academic settings ', 1, 'change academic settings ', 1, 'fa fa-cogs', '2020-11-10 11:13:24', '2020-11-11 07:23:17'),
(392, 'open courses ', 1, 'open courses ', 1, 'fa fa-book', '2020-11-10 11:15:09', '2020-11-11 07:23:17'),
(393, 'open courses ', 1, 'open courses ', 1, 'fa fa-book', '2020-11-10 11:25:09', '2020-11-11 07:23:17'),
(394, 'change academic settings ', 1, 'change academic settings ', 1, 'fa fa-cogs', '2020-11-11 04:36:14', '2020-11-11 07:23:17'),
(395, 'تعديل مقررMath II', 1, 'تعديل مقررMath II', 1, 'fa fa-book', '2020-11-11 04:51:55', '2020-11-11 07:23:17'),
(396, 'تعديل مقررMATH III', 1, 'تعديل مقررMATH III', 1, 'fa fa-book', '2020-11-11 04:52:05', '2020-11-11 07:23:17'),
(397, 'تعديل مقررObject Oriented Programming', 1, 'تعديل مقررObject Oriented Programming', 1, 'fa fa-book', '2020-11-11 04:52:16', '2020-11-11 07:23:17'),
(398, 'change academic settings ', 1, 'change academic settings ', 1, 'fa fa-cogs', '2020-11-11 04:59:18', '2020-11-11 07:23:17'),
(399, 'change academic settings ', 1, 'change academic settings ', 1, 'fa fa-cogs', '2020-11-11 04:59:36', '2020-11-11 07:23:17'),
(400, 'open courses ', 1, 'open courses ', 1, 'fa fa-book', '2020-11-11 05:00:39', '2020-11-11 07:23:17'),
(401, 'open courses ', 1, 'open courses ', 1, 'fa fa-book', '2020-11-11 05:00:58', '2020-11-11 07:23:17'),
(402, 'open courses ', 1, 'open courses ', 1, 'fa fa-book', '2020-11-11 05:01:35', '2020-11-11 07:23:17'),
(403, 'open courses ', 1, 'open courses ', 1, 'fa fa-book', '2020-11-11 05:01:51', '2020-11-11 07:23:17'),
(404, 'انشاء تقدير جديدممتاز', 1, 'انشاء تقدير جديدممتاز', 1, 'fa fa-th-list', '2020-11-11 07:44:05', '2020-11-11 08:17:38'),
(405, 'انشاء تقدير جديدممتاز', 1, 'انشاء تقدير جديدممتاز', 1, 'fa fa-th-list', '2020-11-11 07:46:40', '2020-11-11 08:17:38'),
(406, 'update degree map ممتاز', 1, 'update degree map ممتاز', 1, 'fa fa-th-list', '2020-11-11 07:47:43', '2020-11-11 08:17:38'),
(407, 'update degree map ممتاز', 1, 'update degree map ممتاز', 1, 'fa fa-th-list', '2020-11-11 07:48:31', '2020-11-11 08:17:38'),
(408, 'update degree map ممتاز', 1, 'update degree map ممتاز', 1, 'fa fa-th-list', '2020-11-11 07:49:16', '2020-11-11 08:17:38'),
(409, 'انشاء تقدير جديدممتاز', 1, 'انشاء تقدير جديدممتاز', 1, 'fa fa-th-list', '2020-11-11 07:49:51', '2020-11-11 08:17:38'),
(410, 'انشاء تقدير جديدجيد جدا', 1, 'انشاء تقدير جديدجيد جدا', 1, 'fa fa-th-list', '2020-11-11 07:50:52', '2020-11-11 08:17:38'),
(411, 'انشاء تقدير جديدجيد جدا', 1, 'انشاء تقدير جديدجيد جدا', 1, 'fa fa-th-list', '2020-11-11 07:51:36', '2020-11-11 08:17:38'),
(412, 'انشاء تقدير جديدجيد', 1, 'انشاء تقدير جديدجيد', 1, 'fa fa-th-list', '2020-11-11 07:52:30', '2020-11-11 08:17:38'),
(413, 'انشاء تقدير جديدجيد', 1, 'انشاء تقدير جديدجيد', 1, 'fa fa-th-list', '2020-11-11 07:53:03', '2020-11-11 08:17:38'),
(414, 'انشاء تقدير جديدمقبول', 1, 'انشاء تقدير جديدمقبول', 1, 'fa fa-th-list', '2020-11-11 07:53:37', '2020-11-11 08:17:38'),
(415, 'انشاء تقدير جديدراسب', 1, 'انشاء تقدير جديدراسب', 1, 'fa fa-th-list', '2020-11-11 07:54:27', '2020-11-11 08:17:38'),
(416, 'انشاء تقدير جديدراسب', 1, 'انشاء تقدير جديدراسب', 1, 'fa fa-th-list', '2020-11-11 07:55:20', '2020-11-11 08:17:38'),
(417, 'انشاء نوع مقررمقررات عامة', 1, 'انشاء نوع مقررمقررات عامة', 1, 'fa fa-cubes', '2020-11-11 07:59:59', '2020-11-11 08:17:38'),
(418, 'انشاء مقرر جديدالاقتصاد الجزئى', 1, 'انشاء مقرر جديدالاقتصاد الجزئى', 1, 'fa fa-book', '2020-11-11 08:19:55', '2020-11-11 09:19:39'),
(419, 'انشاء نوع مقررمحاسبة', 1, 'انشاء نوع مقررمحاسبة', 1, 'fa fa-cubes', '2020-11-11 08:24:36', '2020-11-11 09:19:39'),
(420, 'انشاء مقرر جديدالحاسب الالى ونظم التشغيل (1)', 1, 'انشاء مقرر جديدالحاسب الالى ونظم التشغيل (1)', 1, 'fa fa-book', '2020-11-11 08:26:02', '2020-11-11 09:19:39'),
(421, 'انشاء مقرر جديدرياضيات الأعمال (1)', 1, 'انشاء مقرر جديدرياضيات الأعمال (1)', 1, 'fa fa-book', '2020-11-11 08:27:25', '2020-11-11 09:19:39'),
(422, 'انشاء مقرر جديدلغة انجليزية (1)', 1, 'انشاء مقرر جديدلغة انجليزية (1)', 1, 'fa fa-book', '2020-11-11 08:29:35', '2020-11-11 09:19:39'),
(423, 'انشاء مقرر جديدمبادئ الإدارة', 1, 'انشاء مقرر جديدمبادئ الإدارة', 1, 'fa fa-book', '2020-11-11 08:30:35', '2020-11-11 09:19:39'),
(424, 'انشاء مقرر جديدمبادئ القانون', 1, 'انشاء مقرر جديدمبادئ القانون', 1, 'fa fa-book', '2020-11-11 08:31:39', '2020-11-11 09:19:39'),
(425, 'انشاء مقرر جديدمبادئ المحاسبة (1)', 1, 'انشاء مقرر جديدمبادئ المحاسبة (1)', 1, 'fa fa-book', '2020-11-11 08:32:31', '2020-11-11 09:19:39'),
(426, 'انشاء مقرر جديدالتفكير المنطقى ومناهج البحث العلمى', 1, 'انشاء مقرر جديدالتفكير المنطقى ومناهج البحث العلمى', 1, 'fa fa-book', '2020-11-11 08:33:44', '2020-11-11 09:19:39'),
(427, 'انشاء مقرر جديدقانون الائتمان والمصارف', 1, 'انشاء مقرر جديدقانون الائتمان والمصارف', 1, 'fa fa-book', '2020-11-11 08:35:33', '2020-11-11 09:19:39'),
(428, 'انشاء مقرر جديدالاتصالات والتفاوض', 1, 'انشاء مقرر جديدالاتصالات والتفاوض', 1, 'fa fa-book', '2020-11-11 08:36:59', '2020-11-11 09:19:39'),
(429, 'انشاء مقرر جديددراسة متخصصه بلغه', 1, 'انشاء مقرر جديددراسة متخصصه بلغه', 1, 'fa fa-book', '2020-11-11 08:40:58', '2020-11-11 09:19:39'),
(430, 'انشاء مقرر جديدحقوق الانسان والسكان', 1, 'انشاء مقرر جديدحقوق الانسان والسكان', 1, 'fa fa-book', '2020-11-11 09:05:43', '2020-11-11 09:19:39'),
(431, 'انشاء مقرر جديدالاقتصاد الكلى', 1, 'انشاء مقرر جديدالاقتصاد الكلى', 1, 'fa fa-book', '2020-11-11 09:11:26', '2020-11-11 09:19:39'),
(432, 'تعديل مقررمبادئ المحاسبة (1)', 1, 'تعديل مقررمبادئ المحاسبة (1)', 1, 'fa fa-book', '2020-11-11 09:17:27', '2020-11-11 09:19:39'),
(433, 'تعديل مقرررياضيات الأعمال (1)', 1, 'تعديل مقرررياضيات الأعمال (1)', 1, 'fa fa-book', '2020-11-11 09:18:30', '2020-11-11 09:19:39'),
(434, 'تعديل مقررلغة انجليزية (1)', 1, 'تعديل مقررلغة انجليزية (1)', 1, 'fa fa-book', '2020-11-11 09:18:37', '2020-11-11 09:19:39'),
(435, 'تعديل مقررالاقتصاد الجزئى', 1, 'تعديل مقررالاقتصاد الجزئى', 1, 'fa fa-book', '2020-11-11 09:18:49', '2020-11-11 09:19:39'),
(436, 'تعديل مقررالاقتصاد الجزئى', 1, 'تعديل مقررالاقتصاد الجزئى', 1, 'fa fa-book', '2020-11-11 09:19:56', '2020-11-11 09:28:42'),
(437, 'تعديل مقررالاقتصاد الكلى', 1, 'تعديل مقررالاقتصاد الكلى', 1, 'fa fa-book', '2020-11-11 09:20:12', '2020-11-11 09:28:42'),
(438, 'انشاء مقرر جديدلغة انجليزية (2)', 1, 'انشاء مقرر جديدلغة انجليزية (2)', 1, 'fa fa-book', '2020-11-11 09:21:48', '2020-11-11 09:28:42'),
(439, 'انشاء مقرر جديدلغة انجليزية (2)', 1, 'انشاء مقرر جديدلغة انجليزية (2)', 1, 'fa fa-book', '2020-11-11 09:23:39', '2020-11-11 09:28:42'),
(440, 'انشاء مقرر جديدلغة انجليزية (2)', 1, 'انشاء مقرر جديدلغة انجليزية (2)', 1, 'fa fa-book', '2020-11-11 09:27:45', '2020-11-11 09:28:42'),
(441, 'remove course لغة انجليزية (2)', 1, 'remove course لغة انجليزية (2)', 1, 'fa fa-book', '2020-11-11 09:27:52', '2020-11-11 09:28:42'),
(442, 'remove course لغة انجليزية (2)', 1, 'remove course لغة انجليزية (2)', 1, 'fa fa-book', '2020-11-11 09:27:55', '2020-11-11 09:28:42'),
(443, 'انشاء مقرر جديدمبادئ السلوك التنظيمى', 1, 'انشاء مقرر جديدمبادئ السلوك التنظيمى', 1, 'fa fa-book', '2020-11-11 09:32:23', '2020-11-11 09:33:41'),
(444, 'انشاء مقرر جديدمبادئ المحاسبة (2)', 1, 'انشاء مقرر جديدمبادئ المحاسبة (2)', 1, 'fa fa-book', '2020-11-11 09:33:50', '2020-11-11 09:34:38'),
(445, 'انشاء مقرر جديدنظم معلومات ادارية', 1, 'انشاء مقرر جديدنظم معلومات ادارية', 1, 'fa fa-book', '2020-11-11 09:35:26', '2020-11-11 09:39:43'),
(446, 'انشاء مقرر جديدادارة الموارد البشرية', 1, 'انشاء مقرر جديدادارة الموارد البشرية', 1, 'fa fa-book', '2020-11-11 09:36:53', '2020-11-11 09:39:43'),
(447, 'انشاء مقرر جديدالتمويل الادراى', 1, 'انشاء مقرر جديدالتمويل الادراى', 1, 'fa fa-book', '2020-11-11 09:38:22', '2020-11-11 09:39:43'),
(448, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-11-11 09:40:35', '2020-11-11 09:42:40'),
(449, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-11-11 09:42:20', '2020-11-11 09:42:40'),
(450, 'انشاء مقرر جديدبحوث العمليات', 1, 'انشاء مقرر جديدبحوث العمليات', 1, 'fa fa-book', '2020-11-11 09:47:48', '2020-11-11 09:49:51'),
(451, 'انشاء مقرر جديدمحاسبه متوسطه (2)', 1, 'انشاء مقرر جديدمحاسبه متوسطه (2)', 1, 'fa fa-book', '2020-11-11 09:49:53', '2020-11-11 10:02:10'),
(452, 'انشاء مقرر جديدنقود وبنوك', 1, 'انشاء مقرر جديدنقود وبنوك', 1, 'fa fa-book', '2020-11-11 09:51:12', '2020-11-11 10:02:10'),
(453, 'انشاء مقرر جديداساسيات التجارة الالكترونية', 1, 'انشاء مقرر جديداساسيات التجارة الالكترونية', 1, 'fa fa-book', '2020-11-11 09:52:55', '2020-11-11 10:02:10'),
(454, 'انشاء مقرر جديدتسويق الخدمات التأمينية', 1, 'انشاء مقرر جديدتسويق الخدمات التأمينية', 1, 'fa fa-book', '2020-11-11 09:54:02', '2020-11-11 10:02:10'),
(455, 'انشاء مقرر جديدتطبيقات الانترنت والوسائط المتعددة', 1, 'انشاء مقرر جديدتطبيقات الانترنت والوسائط المتعددة', 1, 'fa fa-book', '2020-11-11 09:55:07', '2020-11-11 10:02:10'),
(456, 'انشاء مقرر جديدتصميم مواقع الويب', 1, 'انشاء مقرر جديدتصميم مواقع الويب', 1, 'fa fa-book', '2020-11-11 09:56:22', '2020-11-11 10:02:10'),
(457, 'انشاء مقرر جديدمشروع التخرج', 1, 'انشاء مقرر جديدمشروع التخرج', 1, 'fa fa-book', '2020-11-11 09:58:32', '2020-11-11 10:02:10'),
(458, 'انشاء مقرر جديداقتصاديات المصارف', 1, 'انشاء مقرر جديداقتصاديات المصارف', 1, 'fa fa-book', '2020-11-11 09:59:56', '2020-11-11 10:02:10'),
(459, 'انشاء مقرر جديدالتحليل المحاسبى للقوائم المالية', 1, 'انشاء مقرر جديدالتحليل المحاسبى للقوائم المالية', 1, 'fa fa-book', '2020-11-11 10:02:16', '2020-11-11 10:02:36'),
(460, 'انشاء مقرر جديدالمراجعة', 1, 'انشاء مقرر جديدالمراجعة', 1, 'fa fa-book', '2020-11-11 10:03:34', '2020-11-11 10:04:18'),
(461, 'انشاء مقرر جديدمحاسبة إدارية', 1, 'انشاء مقرر جديدمحاسبة إدارية', 1, 'fa fa-book', '2020-11-11 10:05:42', '2020-11-11 10:06:06'),
(462, 'انشاء مقرر جديدمحاسبة المنشآت المالية', 1, 'انشاء مقرر جديدمحاسبة المنشآت المالية', 1, 'fa fa-book', '2020-11-11 10:07:02', '2020-11-11 10:10:06'),
(463, 'انشاء مقرر جديدمعايير المحاسبة المصرية', 1, 'انشاء مقرر جديدمعايير المحاسبة المصرية', 1, 'fa fa-book', '2020-11-11 10:08:19', '2020-11-11 10:10:06'),
(464, 'انشاء مقرر جديدإدارة المواد والامداد', 1, 'انشاء مقرر جديدإدارة المواد والامداد', 1, 'fa fa-book', '2020-11-11 10:10:32', '2020-11-11 10:13:24'),
(465, 'انشاء مقرر جديدالسيولة الدولية ونظام النقد الدولى', 1, 'انشاء مقرر جديدالسيولة الدولية ونظام النقد الدولى', 1, 'fa fa-book', '2020-11-11 10:11:48', '2020-11-11 10:13:24'),
(466, 'انشاء مقرر جديدمحاسبة التكاليف', 1, 'انشاء مقرر جديدمحاسبة التكاليف', 1, 'fa fa-book', '2020-11-11 10:13:53', '2020-11-11 10:16:05'),
(467, 'انشاء مقرر جديدالتسويق الالكترونى', 1, 'انشاء مقرر جديدالتسويق الالكترونى', 1, 'fa fa-book', '2020-11-11 10:16:10', '2020-11-11 10:18:11'),
(468, 'انشاء مقرر جديدالتسويق الدولى', 1, 'انشاء مقرر جديدالتسويق الدولى', 1, 'fa fa-book', '2020-11-11 10:17:27', '2020-11-11 10:18:11'),
(469, 'انشاء مقرر جديدبحوث التسويق', 1, 'انشاء مقرر جديدبحوث التسويق', 1, 'fa fa-book', '2020-11-11 10:18:46', '2020-11-11 10:19:10'),
(470, 'انشاء مقرر جديدتسويق الخدمات المصرفية', 1, 'انشاء مقرر جديدتسويق الخدمات المصرفية', 1, 'fa fa-book', '2020-11-11 10:20:00', '2020-11-11 10:20:33'),
(471, 'انشاء مقرر جديددراسة متقدمة فى التجارة الالكترونية', 1, 'انشاء مقرر جديددراسة متقدمة فى التجارة الالكترونية', 1, 'fa fa-book', '2020-11-11 10:21:06', '2020-11-11 10:22:05'),
(472, 'انشاء مقرر جديدمشروع التخرج', 1, 'انشاء مقرر جديدمشروع التخرج', 1, 'fa fa-book', '2020-11-11 10:21:56', '2020-11-11 10:22:05'),
(473, 'انشاء مقرر جديدالإدارة الاستراتيجية', 1, 'انشاء مقرر جديدالإدارة الاستراتيجية', 1, 'fa fa-book', '2020-11-11 10:23:06', '2020-11-11 10:27:17'),
(474, 'انشاء مقرر جديدنظم واداره قواعد البيانات', 1, 'انشاء مقرر جديدنظم واداره قواعد البيانات', 1, 'fa fa-book', '2020-11-11 10:24:25', '2020-11-11 10:27:17'),
(475, 'open courses ', 1, 'open courses ', 1, 'fa fa-book', '2020-11-11 10:24:29', '2020-11-11 10:27:17'),
(476, 'open courses ', 1, 'open courses ', 1, 'fa fa-book', '2020-11-11 10:24:39', '2020-11-11 10:27:17'),
(477, 'انشاء مقرر جديدادارة الاعمال المصرفية', 1, 'انشاء مقرر جديدادارة الاعمال المصرفية', 1, 'fa fa-book', '2020-11-11 10:25:33', '2020-11-11 10:27:17'),
(478, 'انشاء مقرر جديدالاسواق المالية والبورصات', 1, 'انشاء مقرر جديدالاسواق المالية والبورصات', 1, 'fa fa-book', '2020-11-11 10:55:15', '2020-11-11 10:55:47'),
(479, 'انشاء مقرر جديدالهندسة المالية', 1, 'انشاء مقرر جديدالهندسة المالية', 1, 'fa fa-book', '2020-11-11 10:56:16', '2020-11-11 10:56:44'),
(480, 'انشاء مقرر جديدتطبيقات الحاسب فى المنشأت المالية', 1, 'انشاء مقرر جديدتطبيقات الحاسب فى المنشأت المالية', 1, 'fa fa-book', '2020-11-11 10:57:03', '2020-11-11 11:07:35'),
(481, 'انشاء مقرر جديدرياضيات التأمين والخطر تمويل', 1, 'انشاء مقرر جديدرياضيات التأمين والخطر تمويل', 1, 'fa fa-book', '2020-11-11 10:57:59', '2020-11-11 11:07:35'),
(482, 'انشاء مقرر جديدالمراجعه والرقابة المصرفية', 1, 'انشاء مقرر جديدالمراجعه والرقابة المصرفية', 1, 'fa fa-book', '2020-11-11 10:58:52', '2020-11-11 11:07:35'),
(483, 'انشاء مقرر جديدنظم معلومات مصرفية', 1, 'انشاء مقرر جديدنظم معلومات مصرفية', 1, 'fa fa-book', '2020-11-11 11:00:08', '2020-11-11 11:07:35'),
(484, 'انشاء مقرر جديدالتنمية الاقتصادية', 1, 'انشاء مقرر جديدالتنمية الاقتصادية', 1, 'fa fa-book', '2020-11-11 11:01:10', '2020-11-11 11:07:35'),
(485, 'انشاء مقرر جديدالمحاسبة الإدارية (2)', 1, 'انشاء مقرر جديدالمحاسبة الإدارية (2)', 1, 'fa fa-book', '2020-11-11 11:02:21', '2020-11-11 11:07:35'),
(486, 'انشاء مقرر جديدسياسات التجارة الدولية', 1, 'انشاء مقرر جديدسياسات التجارة الدولية', 1, 'fa fa-book', '2020-11-11 11:03:29', '2020-11-11 11:07:35'),
(487, 'انشاء مقرر جديدمحاسبة دولية', 1, 'انشاء مقرر جديدمحاسبة دولية', 1, 'fa fa-book', '2020-11-11 11:05:25', '2020-11-11 11:07:35'),
(488, 'انشاء مقرر جديدمحاسبة ضريبية (2)', 1, 'انشاء مقرر جديدمحاسبة ضريبية (2)', 1, 'fa fa-book', '2020-11-11 11:06:23', '2020-11-11 11:07:35'),
(489, 'انشاء مقرر جديدمراجعه (مشاكل تطبيقية)', 1, 'انشاء مقرر جديدمراجعه (مشاكل تطبيقية)', 1, 'fa fa-book', '2020-11-11 11:07:36', '2020-11-11 11:07:36'),
(490, 'انشاء مقرر جديدنظم معلومات محاسبية', 1, 'انشاء مقرر جديدنظم معلومات محاسبية', 1, 'fa fa-book', '2020-11-11 11:08:19', '2020-11-11 11:10:50'),
(491, 'انشاء مقرر جديدالجودة الشاملة', 1, 'انشاء مقرر جديدالجودة الشاملة', 1, 'fa fa-book', '2020-11-11 11:09:36', '2020-11-11 11:10:50'),
(492, 'انشاء مقرر جديدنظم اتكاليف', 1, 'انشاء مقرر جديدنظم اتكاليف', 1, 'fa fa-book', '2020-11-11 11:10:51', '2020-11-11 11:10:52'),
(493, 'انشاء مقرر جديدبحوث العمليات فى المحاسبة', 1, 'انشاء مقرر جديدبحوث العمليات فى المحاسبة', 1, 'fa fa-book', '2020-11-11 11:12:51', '2020-11-11 11:14:28'),
(494, 'open courses ', 1, 'open courses ', 1, 'fa fa-book', '2020-11-11 11:33:01', '2020-11-11 11:35:48'),
(495, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-11-14 06:17:47', '2020-11-14 06:18:54'),
(496, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-11-14 06:18:27', '2020-11-14 06:18:54'),
(497, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-11-14 06:19:05', '2020-11-14 06:20:50'),
(498, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-11-14 06:19:24', '2020-11-14 06:20:50'),
(499, 'change academic settings ', 1, 'change academic settings ', 1, 'fa fa-cogs', '2020-11-14 06:54:53', '2020-11-14 06:59:07'),
(500, 'change academic settings ', 1, 'change academic settings ', 1, 'fa fa-cogs', '2020-11-14 06:59:46', '2020-11-14 07:09:19'),
(501, 'open courses ', 1, 'open courses ', 1, 'fa fa-book', '2020-11-14 08:11:54', '2020-11-14 08:18:01'),
(502, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-11-14 10:25:05', '2020-11-14 10:29:03'),
(503, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-11-14 10:26:12', '2020-11-14 10:29:03'),
(504, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-11-14 10:29:39', '2020-11-14 10:31:28'),
(505, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-11-14 10:30:05', '2020-11-14 10:31:28'),
(506, 'تعديل خزينة الرسوم السابقه', 1, 'تعديل خزينة الرسوم السابقه', 1, 'fa fa-cogs', '2020-11-14 10:43:23', '2020-11-14 10:54:32'),
(507, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-11-14 11:47:46', '2020-11-14 11:48:16'),
(508, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-11-14 11:48:04', '2020-11-14 11:48:16'),
(509, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-11-14 12:06:22', '2020-11-14 12:10:44'),
(510, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-11-14 12:18:42', '2020-11-14 12:19:57'),
(511, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-11-14 12:22:33', '2020-11-14 12:23:55'),
(512, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-11-14 12:36:27', '2020-11-14 12:37:25'),
(513, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-11-14 12:37:00', '2020-11-14 12:37:25'),
(514, 'تغير الترجمه', 1, 'تغير الترجمه', 1, 'fa fa-language', '2020-11-14 12:38:06', '2020-11-14 12:38:26'),
(515, 'طالب جديد', 1, 'طالب جديداحمد اشرف محمد عبد اللطيف', 1, 'fa fa-user', '2020-11-14 12:42:25', '2020-11-14 12:56:37'),
(516, 'طالب جديد', 1, 'طالب جديداحمد حمدى ابراهيم عبدالسلام', 1, 'fa fa-user', '2020-11-14 12:50:16', '2020-11-14 12:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_job_id` int(11) NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count_students` int(11) NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent_jobs`
--

CREATE TABLE `parent_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parent_jobs`
--

INSERT INTO `parent_jobs` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'طبيب بشرى', NULL, '2020-08-05 08:26:56', '2020-08-05 08:26:56'),
(2, 'مهندس مدنى', NULL, '2020-08-05 08:27:04', '2020-08-05 08:27:04'),
(3, 'محامى', NULL, '2020-08-11 13:46:41', '2020-08-11 13:46:41'),
(4, 'اعمال حره', NULL, '2020-08-11 13:46:53', '2020-08-11 13:46:53'),
(5, 'تاجر', NULL, '2020-08-11 13:47:05', '2020-08-11 13:47:05'),
(6, 'رجل اعمال', NULL, '2020-08-11 13:47:19', '2020-08-11 13:47:19'),
(7, 'مدرس', NULL, '2020-08-11 13:47:32', '2020-08-11 13:47:32'),
(8, 'موظف حكومى', NULL, '2020-08-11 13:47:47', '2020-08-11 13:47:47');

-- --------------------------------------------------------

--
-- Table structure for table `parent_relation_type`
--

CREATE TABLE `parent_relation_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'users_create', 'Create Users', 'Create Users', NULL, NULL),
(2, 'users_read', 'Read Users', 'Read Users', NULL, NULL),
(3, 'users_update', 'Update Users', 'Update Users', NULL, NULL),
(4, 'users_delete', 'Delete Users', 'Delete Users', NULL, NULL),
(5, 'roles_create', 'Create Roles', 'Create Roles', NULL, NULL),
(6, 'roles_read', 'Read Roles', 'Read Roles', NULL, NULL),
(7, 'roles_update', 'Update Roles', 'Update Roles', NULL, NULL),
(8, 'roles_delete', 'Delete Roles', 'Delete Roles', NULL, NULL),
(9, 'cities_read', NULL, NULL, NULL, NULL),
(10, 'cities_create', NULL, NULL, NULL, NULL),
(11, 'cities_update', NULL, NULL, NULL, NULL),
(12, 'cities_delete', NULL, NULL, NULL, NULL),
(13, 'countries_read', NULL, NULL, NULL, NULL),
(14, 'countries_create', NULL, NULL, NULL, NULL),
(15, 'countries_update', NULL, NULL, NULL, NULL),
(16, 'countries_delete', NULL, NULL, NULL, NULL),
(17, 'settings_read', NULL, NULL, NULL, NULL),
(18, 'settings_create', NULL, NULL, NULL, NULL),
(19, 'settings_update', NULL, NULL, NULL, NULL),
(20, 'settings_delete', NULL, NULL, NULL, NULL),
(21, 'academic-years_read', NULL, NULL, NULL, NULL),
(22, 'academic-years_create', NULL, NULL, NULL, NULL),
(23, 'academic-years_update', NULL, NULL, NULL, NULL),
(24, 'academic-years_delete', NULL, NULL, NULL, NULL),
(25, 'levels_read', NULL, NULL, NULL, NULL),
(26, 'levels_create', NULL, NULL, NULL, NULL),
(27, 'levels_update', NULL, NULL, NULL, NULL),
(28, 'levels_delete', NULL, NULL, NULL, NULL),
(29, 'governments_create', NULL, NULL, NULL, NULL),
(30, 'governments_update', NULL, NULL, NULL, NULL),
(31, 'governments_read', NULL, NULL, NULL, NULL),
(32, 'governments_delete', NULL, NULL, NULL, NULL),
(33, 'languages_read', NULL, NULL, NULL, NULL),
(34, 'languages_create', NULL, NULL, NULL, NULL),
(35, 'languages_update', NULL, NULL, NULL, NULL),
(36, 'languages_delete', NULL, NULL, NULL, NULL),
(37, 'nationalities_read', NULL, NULL, NULL, NULL),
(38, 'nationalities_create', NULL, NULL, NULL, NULL),
(39, 'nationalities_update', NULL, NULL, NULL, NULL),
(40, 'nationalities_delete', NULL, NULL, NULL, NULL),
(41, 'registeration-status_read', NULL, NULL, NULL, NULL),
(42, 'registeration-status_create', NULL, NULL, NULL, NULL),
(43, 'registeration-status_update', NULL, NULL, NULL, NULL),
(44, 'registeration-status_delete', NULL, NULL, NULL, NULL),
(45, 'registeration-methods_read', NULL, NULL, NULL, NULL),
(46, 'registeration-methods_create', NULL, NULL, NULL, NULL),
(47, 'registeration-methods_update', NULL, NULL, NULL, NULL),
(48, 'registeration-methods_delete', NULL, NULL, NULL, NULL),
(49, 'departments_read', NULL, NULL, NULL, NULL),
(50, 'departments_create', NULL, NULL, NULL, NULL),
(51, 'departments_update', NULL, NULL, NULL, NULL),
(52, 'departments_delete', NULL, NULL, NULL, NULL),
(53, 'divisions_read', NULL, NULL, NULL, NULL),
(54, 'divisions_create', NULL, NULL, NULL, NULL),
(55, 'divisions_update', NULL, NULL, NULL, NULL),
(56, 'divisions_delete', NULL, NULL, NULL, NULL),
(57, 'qualifications_read', NULL, NULL, NULL, NULL),
(58, 'qualifications_create', NULL, NULL, NULL, NULL),
(59, 'qualifications_update', NULL, NULL, NULL, NULL),
(60, 'qualifications_delete', NULL, NULL, NULL, NULL),
(61, 'qualification-types_read', NULL, NULL, NULL, NULL),
(62, 'qualification-types_create', NULL, NULL, NULL, NULL),
(63, 'qualification-types_update', NULL, NULL, NULL, NULL),
(64, 'qualification-types_delete', NULL, NULL, NULL, NULL),
(65, 'parent-jobs_read', NULL, NULL, NULL, NULL),
(66, 'parent-jobs_create', NULL, NULL, NULL, NULL),
(67, 'parent-jobs_update', NULL, NULL, NULL, NULL),
(68, 'parent-jobs_delete', NULL, NULL, NULL, NULL),
(69, 'relations_read', NULL, NULL, NULL, NULL),
(70, 'relations_create', NULL, NULL, NULL, NULL),
(71, 'relations_update', NULL, NULL, NULL, NULL),
(72, 'relations_delete', NULL, NULL, NULL, NULL),
(73, 'student-code-series_read', NULL, NULL, NULL, NULL),
(74, 'student-code-series_create', NULL, NULL, NULL, NULL),
(75, 'student-code-series_update', NULL, NULL, NULL, NULL),
(76, 'student-code-series_delete', NULL, NULL, NULL, NULL),
(77, 'applications_read', NULL, NULL, NULL, NULL),
(78, 'students_read', NULL, NULL, NULL, NULL);

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
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(11, 1),
(11, 2),
(11, 3),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(13, 3),
(14, 1),
(14, 2),
(14, 3),
(15, 1),
(15, 2),
(15, 3),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(29, 3),
(30, 1),
(30, 2),
(30, 3),
(31, 1),
(31, 2),
(31, 3),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(63, 2),
(64, 1),
(64, 2),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1);

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
-- Table structure for table `qualifications`
--

CREATE TABLE `qualifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` double(8,2) NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qualifications`
--

INSERT INTO `qualifications` (`id`, `name`, `grade`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'ثانوية عامة وما يعادلها', 410.00, NULL, '2020-08-05 08:23:06', '2020-08-19 19:23:08'),
(2, 'دبلوم صنايع مدرسه بنى سويف', 600.00, NULL, '2020-08-10 17:43:58', '2020-08-10 17:43:58'),
(3, 'دبلوم تجارى خمس سنوات', 700.00, 'لاؤرلاؤ', '2020-08-10 17:44:21', '2020-09-28 16:02:21'),
(4, 'ثانوى ازهرى', 450.00, NULL, '2020-08-11 18:27:54', '2020-08-11 18:27:54');

-- --------------------------------------------------------

--
-- Table structure for table `qualification_types`
--

CREATE TABLE `qualification_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qualification_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` double(8,2) NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `academic_year_id` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qualification_types`
--

INSERT INTO `qualification_types` (`id`, `qualification_id`, `name`, `grade`, `notes`, `academic_year_id`, `created_at`, `updated_at`, `level_id`) VALUES
(1, 1, 'ادبى', 220.00, NULL, 1, '2020-08-05 08:31:04', '2020-08-05 08:31:04', 1),
(2, 1, 'علمى', 380.00, NULL, 1, '2020-08-09 21:11:50', '2020-08-09 21:11:50', 1),
(5, 3, 'دبلوم تجاره مدرسه ببا', 630.00, NULL, 1, '2020-08-11 18:32:38', '2020-08-11 18:32:38', 2),
(6, 1, 'علمى علوم', 300.00, NULL, 1, '2020-08-12 00:34:51', '2020-08-12 00:34:51', 1),
(7, 1, 'ادبى', 300.00, NULL, 1, '2020-08-12 12:51:04', '2020-08-12 12:51:04', 1),
(8, 1, 'علمى', 400.00, NULL, 1, '2020-08-12 12:51:38', '2020-08-12 12:51:38', 1),
(9, 3, 'تجاره', 350.00, NULL, 1, '2020-08-12 12:52:32', '2020-08-12 12:52:32', 2),
(10, 2, 'صنايع', 300.00, NULL, 1, '2020-08-12 12:53:18', '2020-08-12 12:53:18', 1),
(11, 1, 'ادبى', 250.00, NULL, 1, '2020-08-12 12:56:13', '2020-08-12 12:56:13', 1),
(12, 2, 'دبلوم صنايعى مدرسة بنى سويف', 350.00, NULL, 1, '2020-08-12 14:46:01', '2020-08-12 14:46:01', 1),
(13, 4, 'علمى', 440.00, NULL, 1, '2020-08-19 19:20:13', '2020-08-19 19:20:13', 1),
(14, 4, 'ادبى', 420.00, NULL, 1, '2020-08-19 19:20:46', '2020-08-19 19:20:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `qualification_years`
--

CREATE TABLE `qualification_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qualification_id` int(10) UNSIGNED NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `acceptance_grade` double(8,2) NOT NULL,
  `level_id` int(10) UNSIGNED NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registeration_status`
--

CREATE TABLE `registeration_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registeration_status`
--

INSERT INTO `registeration_status` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(2, 'تقديم مباشر', NULL, '2020-08-05 07:26:40', '2020-08-08 18:54:39'),
(3, 'تنسيق', NULL, '2020-08-08 18:54:53', '2020-08-08 18:54:53'),
(4, 'مقاصه (معاهد مناظره)', NULL, '2020-08-08 18:55:10', '2020-08-18 20:12:29'),
(8, 'مفصلين من كليات', NULL, '2020-08-12 15:20:56', '2020-08-12 15:20:56'),
(9, 'تحويل (معاهد غير مناظره)', '-', '2020-08-18 20:14:29', '2020-10-04 07:18:20');

-- --------------------------------------------------------

--
-- Table structure for table `registeration_status_document`
--

CREATE TABLE `registeration_status_document` (
  `id` int(11) NOT NULL,
  `registeration_status_id` int(11) NOT NULL,
  `required_document_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `registeration_status_document`
--

INSERT INTO `registeration_status_document` (`id`, `registeration_status_id`, `required_document_id`, `created_at`, `updated_at`) VALUES
(17, 7, 4, '2020-08-17 17:21:36', '2020-08-17 17:21:36'),
(16, 7, 2, '2020-08-17 17:21:36', '2020-08-17 17:21:36'),
(15, 7, 1, '2020-08-17 17:21:36', '2020-08-17 17:21:36'),
(66, 4, 20, '2020-08-18 20:13:29', '2020-08-18 20:13:29'),
(65, 4, 2, '2020-08-18 20:13:29', '2020-08-18 20:13:29'),
(18, 7, 5, '2020-08-17 17:21:36', '2020-08-17 17:21:36'),
(64, 4, 1, '2020-08-18 20:13:29', '2020-08-18 20:13:29'),
(78, 9, 19, '2020-10-04 07:19:31', '2020-10-04 07:19:31'),
(77, 9, 7, '2020-10-04 07:19:31', '2020-10-04 07:19:31'),
(34, 8, 11, '2020-08-17 17:24:24', '2020-08-17 17:24:24'),
(33, 8, 10, '2020-08-17 17:24:24', '2020-08-17 17:24:24'),
(32, 8, 9, '2020-08-17 17:24:24', '2020-08-17 17:24:24'),
(31, 8, 8, '2020-08-17 17:24:24', '2020-08-17 17:24:24'),
(30, 8, 7, '2020-08-17 17:24:24', '2020-08-17 17:24:24'),
(63, 2, 19, '2020-08-18 20:11:33', '2020-08-18 20:11:33'),
(62, 2, 18, '2020-08-18 20:11:33', '2020-08-18 20:11:33'),
(56, 3, 19, '2020-08-18 19:54:08', '2020-08-18 19:54:08'),
(55, 3, 18, '2020-08-18 19:54:08', '2020-08-18 19:54:08'),
(54, 3, 17, '2020-08-18 19:54:08', '2020-08-18 19:54:08'),
(61, 2, 17, '2020-08-18 20:11:33', '2020-08-18 20:11:33'),
(70, 10, 21, '2020-10-04 06:49:11', '2020-10-04 06:49:11'),
(71, 11, 19, '2020-10-04 06:49:32', '2020-10-04 06:49:32'),
(76, 9, 2, '2020-10-04 07:19:31', '2020-10-04 07:19:31');

-- --------------------------------------------------------

--
-- Table structure for table `registration_methods`
--

CREATE TABLE `registration_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registration_methods`
--

INSERT INTO `registration_methods` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(2, 'Facebook reaches', NULL, '2020-08-05 07:51:45', '2020-08-08 19:12:17'),
(3, 'FLayer', NULL, '2020-08-09 20:38:19', '2020-08-09 20:38:19'),
(4, 'Newspapers', NULL, '2020-08-09 20:38:29', '2020-08-09 20:38:29'),
(5, 'Visitor', NULL, '2020-08-09 20:38:44', '2020-08-09 20:38:44'),
(6, 'Youtube', NULL, '2020-08-09 20:38:56', '2020-08-09 20:38:56'),
(7, 'اصداقاء', NULL, '2020-08-09 20:39:10', '2020-08-09 20:39:10'),
(8, 'تسويق', NULL, '2020-08-09 20:39:57', '2020-08-09 20:39:57');

-- --------------------------------------------------------

--
-- Table structure for table `relative_relation`
--

CREATE TABLE `relative_relation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `relative_relation`
--

INSERT INTO `relative_relation` (`id`, `name`, `notes`, `created_at`, `updated_at`) VALUES
(2, 'اب', NULL, '2020-08-08 05:54:41', '2020-08-11 13:49:06'),
(4, 'ام', NULL, '2020-08-11 13:49:29', '2020-08-11 13:49:29'),
(5, 'جد', NULL, '2020-08-11 13:49:37', '2020-08-11 13:49:37'),
(6, 'عم', NULL, '2020-08-11 13:49:47', '2020-08-11 13:49:47'),
(7, 'خال', NULL, '2020-08-11 13:49:55', '2020-08-11 13:49:55'),
(9, 'خاله', NULL, '2020-08-11 13:50:31', '2020-08-11 13:50:31');

-- --------------------------------------------------------

--
-- Table structure for table `report_settings`
--

CREATE TABLE `report_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `report_settings`
--

INSERT INTO `report_settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'letter_sending_to_institute', '<h4 style=\"text-align:right;\"><strong>السيد الاستاذ الدكتور عميد / المنزله</strong></h4><p style=\"text-align:center;\"><strong>تحيه طيبه وبعد ...</strong></p><p style=\"text-align:right;\"><br data-cke-filler=\"true\"></p><p style=\"text-align:right;\"><strong>بالاشلره الى خطاب الادارة العامه للمعهد العالى الخاصه المؤرخ فى : 2020/02/02 فى شان</strong></p><p style=\"text-align:right;\"><strong>الموافقة على تحويل الطالب : {student}&nbsp;</strong></p><p style=\"text-align:right;\"><strong>من معهدكم الى معهدنا : المعهد العالى للعلوم الاداريه ببنى سويف</strong></p><p style=\"text-align:right;\"><strong>يرجى التفضل بموافاتنا بملف الطالب المزكور و تسليمه&nbsp;له باليد حتى يمكن الاستفتاء اجراءات القيد بالمعهد&nbsp;</strong></p><p style=\"text-align:center;\"><strong>وتفضلو سيادتكم بقبول وافر الاحترام</strong></p><p><br data-cke-filler=\"true\"></p>', '2020-08-09 18:21:34', '2020-08-11 17:17:16'),
(2, 'letter_sending_from_institute', '<h4 style=\"text-align:right;\"><strong>السيد الاستاذ الدكتور عميد / المنزله</strong></h4><p style=\"text-align:center;\"><strong>تحيه طيبه وبعد ...</strong></p><p><br data-cke-filler=\"true\"></p><p style=\"text-align:right;\"><strong>بالاشلره الى خطاب الادارة العامه للمعهد العالى الخاصه المؤرخ فى : 2020/02/02 فى شان</strong></p><p style=\"text-align:right;\"><strong>طلب ملف الطالب : {student}&nbsp;</strong></p><p style=\"text-align:right;\"><strong>برجاء حضور الطالب الى معهدنا لتسليم الملف له باليد</strong></p><p style=\"text-align:center;\"><strong>وتفضلو سيادتكم بقبول وافر الاحترام</strong></p><p><br data-cke-filler=\"true\"></p>', '2020-08-09 19:21:48', '2020-08-11 17:19:53'),
(3, 'report_header1', '<p style=\"text-align:center;\"><strong>وزارة التعليم العالى &nbsp;</strong></p><p style=\"text-align:center;\"><strong>&nbsp; &nbsp; &nbsp; {logo}&nbsp;</strong></p><p style=\"text-align:center;\"><strong>&nbsp;المعهد العالى للعلوم الاداريه</strong></p><p style=\"text-align:center;\"><strong>بنى سويف&nbsp;</strong></p><p style=\"text-align:right;\"><br data-cke-filler=\"true\"></p>', '2020-08-11 18:45:23', '2020-08-11 18:53:20'),
(4, 'registration_certificate', '<p style=\"text-align:right;\"><strong><u>شهادة قيد</u></strong></p><p style=\"text-align:right;\"><strong>يشهد المعهد العالي للعلوم الاداريه ببنى سويف</strong></p><p style=\"text-align:right;\"><strong>بان الطالب /</strong></p><p style=\"text-align:right;\"><strong>محل الميلاد/&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; وجنسيته/</strong></p><p style=\"text-align:right;\"><strong>تاريخ الميلاد /&nbsp; &nbsp;/&nbsp;/&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;رقم قومي/</strong></p><p style=\"text-align:right;\"><strong>مقيد بالمستوى/&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; الشعبه/</strong></p><p style=\"text-align:right;\"><strong>للعام الدراسي/&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;كود الطالب/</strong></p><p style=\"text-align:right;\"><br data-cke-filler=\"true\"></p><p style=\"text-align:right;\"><strong>علما بان الرسوم الدراسيه و الاضافيه للعام الجامعي الحالي مبلغ / 5980.00</strong></p><p style=\"text-align:right;\"><strong>خمسة الاف و تسعمائة و ثمانون جنيها فقط لا غير</strong></p><p style=\"text-align:right;\"><br data-cke-filler=\"true\"></p><p style=\"text-align:right;\"><strong>و قد اعطيت له هذه الشهاده بناءا على طلبه لتقديمها الى / مجلس حسبي</strong></p><p style=\"text-align:right;\"><strong>دون ادنى مسئوليه على المعهد</strong></p><p style=\"text-align:right;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</strong></p><p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;</strong></p>', '2020-08-11 19:16:02', '2020-08-11 19:16:02');

-- --------------------------------------------------------

--
-- Table structure for table `required_documents`
--

CREATE TABLE `required_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('original','copy','both') COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `required_documents`
--

INSERT INTO `required_documents` (`id`, `name`, `type`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'بيان تقديرات', 'original', NULL, '2020-08-17 17:17:31', '2020-08-17 17:17:31'),
(2, 'صورة شهادة المؤهل', 'original', NULL, '2020-08-17 17:17:42', '2020-08-17 17:17:42'),
(4, 'صورة تحقيق الشخصيه', 'original', NULL, '2020-08-17 17:18:02', '2020-08-17 17:18:02'),
(5, 'خطاب استلام', 'original', NULL, '2020-08-17 14:02:46', '2020-08-17 14:02:46'),
(7, 'بيان حاله', 'original', NULL, '2020-08-17 14:04:16', '2020-08-17 14:04:16'),
(8, 'بيان درجات', 'original', NULL, '2020-08-17 14:04:30', '2020-08-17 14:04:30'),
(9, 'خطابات معامل المصريين', 'original', NULL, '2020-08-17 14:04:51', '2020-08-17 14:04:51'),
(10, 'إستماره 2 جند', 'original', NULL, '2020-08-17 15:32:56', '2020-08-17 15:32:56'),
(11, 'إستماره 6 جند', 'original', NULL, '2020-08-17 15:34:23', '2020-08-17 15:34:23'),
(17, 'بطاقه الترشيح', 'original', NULL, '2020-08-18 19:37:06', '2020-08-18 19:37:06'),
(18, 'استماره النجاح', 'original', NULL, '2020-08-18 19:38:27', '2020-08-18 19:38:27'),
(19, 'شهاده الميلاد', 'original', NULL, '2020-08-18 19:41:33', '2020-08-18 19:41:33'),
(20, 'المحتوى العلمى (توصيف مقررت المقاصه)', 'original', NULL, '2020-08-18 19:46:38', '2020-08-18 19:46:38'),
(21, 'شهاده فصل', 'original', NULL, '2020-08-18 19:49:59', '2020-08-18 19:49:59');

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
(1, 'المسؤل', 'Super Admin', 'Super Admin', '2020-08-05 06:53:17', '2020-10-04 10:05:32'),
(2, 'مدير القسم', NULL, NULL, '2020-08-07 07:30:16', '2020-10-04 10:05:23'),
(3, 'موظف شؤن الطلاب', NULL, NULL, '2020-08-11 18:11:26', '2020-10-04 10:04:56'),
(4, 'موظف الخزنه', NULL, NULL, '2020-10-04 10:06:13', '2020-10-04 10:06:13');

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
(1, 1, 'App\\User'),
(2, 2, 'App\\User'),
(1, 3, 'App\\User'),
(3, 4, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acceptance_grade` double(8,2) NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

CREATE TABLE `specializations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality_id` int(10) UNSIGNED DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `academic_years_id` int(10) UNSIGNED DEFAULT NULL,
  `registeration_date` date DEFAULT NULL,
  `qualification_types_id` int(10) UNSIGNED DEFAULT NULL,
  `qualification_date` date DEFAULT NULL,
  `qualification_id` int(11) DEFAULT NULL,
  `qualification_set_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division_id` int(10) UNSIGNED DEFAULT NULL,
  `language_1_id` int(10) UNSIGNED DEFAULT NULL,
  `language_2_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `level_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `government_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `religion` enum('muslim','christian') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `military_course_status` enum('1','0','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `military_status_id` int(10) UNSIGNED DEFAULT NULL,
  `military_area_id` int(10) UNSIGNED DEFAULT NULL,
  `national_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade` float DEFAULT NULL,
  `triple_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_status_id` int(10) UNSIGNED DEFAULT NULL,
  `registration_method_id` int(10) UNSIGNED DEFAULT NULL,
  `national_id_date` date DEFAULT NULL,
  `national_id_place` int(10) UNSIGNED DEFAULT NULL,
  `parent_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_national_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_job_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recommendation_card` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification_certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_identification_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_2_jund` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_6_jund` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt_letter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimates_statement` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `case_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `egyptians_lab_speechs` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_academic_year_id` int(11) DEFAULT NULL,
  `azhar_grade` float DEFAULT NULL,
  `constraint_status_id` int(11) DEFAULT NULL,
  `case_constraint_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relative_relation_id` int(11) DEFAULT NULL,
  `acceptance_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acceptance_date` date DEFAULT NULL,
  `is_application` tinyint(1) DEFAULT NULL,
  `application_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `writen_by` int(11) DEFAULT NULL,
  `is_refund` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `code`, `nationality_id`, `gender`, `academic_years_id`, `registeration_date`, `qualification_types_id`, `qualification_date`, `qualification_id`, `qualification_set_number`, `division_id`, `language_1_id`, `language_2_id`, `city_id`, `level_id`, `department_id`, `government_id`, `country_id`, `religion`, `military_course_status`, `military_status_id`, `military_area_id`, `national_id`, `password`, `grade`, `triple_number`, `address`, `birth_address`, `phone_1`, `registration_status_id`, `registration_method_id`, `national_id_date`, `national_id_place`, `parent_name`, `parent_national_id`, `parent_job_id`, `parent_address`, `parent_phone`, `recommendation_card`, `qualification_certificate`, `birth_certificate`, `personal_identification_photo`, `personal_photo`, `model_2_jund`, `model_6_jund`, `receipt_letter`, `estimates_statement`, `case_status`, `degree_status`, `egyptians_lab_speechs`, `system_academic_year_id`, `azhar_grade`, `constraint_status_id`, `case_constraint_id`, `created_at`, `updated_at`, `notes`, `application_id`, `email`, `relative_relation_id`, `acceptance_code`, `acceptance_date`, `is_application`, `application_code`, `writen_by`, `is_refund`) VALUES
(1, 'مريم محمد ابوالخير محمد عبدالصمد', NULL, 1, 'female', 1, NULL, 1, '2020-09-28', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0', NULL, NULL, '29908200103123', NULL, 230, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/students/1/160130960090378.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-09-28 14:13:20', '2020-11-10 09:59:57', '.', NULL, NULL, NULL, NULL, NULL, 0, '2020-09-28-16:13:20-70378', 1, 1),
(2, 'مصطفى السيد محمد عبدالجواد', NULL, NULL, 'male', 1, NULL, 1, '2020-09-28', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0', NULL, NULL, '29812152402876', '123456', 230, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/students/2/160131022391696.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-09-28 14:23:21', '2020-09-28 14:25:52', NULL, NULL, 'admin@admin.com', NULL, NULL, NULL, 0, '2020-09-28-16:23:21-68484', 1, NULL),
(3, 'شاهندا عادل جمال عبدالحميد', NULL, NULL, 'female', 1, NULL, 1, '2020-09-28', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0', NULL, NULL, '29903132401968', '123456', 250, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/students/3/160132013565544.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-09-28 17:08:55', '2020-09-28 17:09:34', NULL, NULL, 'admin@admin.com', NULL, NULL, NULL, 0, '2020-09-28-19:08:54-36172', 1, NULL),
(4, 'مهند محمود يوسف مجاهد', NULL, NULL, 'male', 1, NULL, 1, '2020-09-28', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0', NULL, NULL, '30006242403358', '123456', 223, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/students/4/160132196399990.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-09-28 17:39:23', '2020-09-28 17:52:03', NULL, NULL, 'admin@admin.com', NULL, NULL, NULL, 0, '2020-09-28-19:39:22-13162', 1, NULL),
(5, 'احمد محمد راضى', NULL, NULL, NULL, 1, NULL, 1, '2019-07-15', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0', NULL, NULL, '631511212', '123456', 252, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-09-29 04:58:57', '2020-09-29 10:02:11', NULL, NULL, 'admin@admin.com', NULL, NULL, NULL, 0, '2020-09-29-06:58:57-46858', 1, NULL),
(6, 'نهى', NULL, NULL, NULL, 1, NULL, 2, '2020-07-20', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0', NULL, NULL, '051625625', '123456', 600, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-09-29 05:00:08', '2020-09-29 06:08:35', NULL, NULL, 'admin@admin.com', NULL, NULL, NULL, 0, '2020-09-29-07:00:08-17230', 1, NULL),
(7, 'سميه احمد', NULL, NULL, NULL, 1, NULL, 1, '2020-07-02', 4, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0', NULL, NULL, '05152626', NULL, 360, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-09-29 05:01:27', '2020-09-29 05:14:28', 'الطالب ملتزم', NULL, NULL, NULL, NULL, NULL, 0, '2020-09-29-07:01:27-88366', 1, NULL),
(8, 'هاجر', NULL, NULL, NULL, 1, NULL, 2, '2020-09-29', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0', NULL, NULL, '15152512512', '123456', 400, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-09-29 05:36:32', '2020-09-29 06:13:57', NULL, NULL, 'admin@admin.com', NULL, NULL, NULL, 0, '2020-09-29-07:36:32-63180', 1, NULL),
(9, 'محسن محمد', NULL, NULL, NULL, 1, NULL, 1, '2020-09-29', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0', NULL, NULL, '4545454', NULL, 223, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-09-29 10:03:42', '2020-09-29 10:04:59', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-09-29-12:03:42-57716', 1, NULL),
(10, 'مريم محمد ابوالخير محمد عبدالصمد', '2020-10-03-11:50:39-14023', NULL, NULL, 1, NULL, 1, '2020-10-03', 1, NULL, 13, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0', NULL, NULL, '29908200103123', '123456', 230, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-10-03 09:50:39', '2020-10-03 09:50:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'احمد رمضان شعبان عبدالحميد', '2020-10-03-11:53:52-50632', NULL, 'male', 1, '2020-10-03', 1, '2020-10-03', 1, NULL, 13, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0', NULL, NULL, '29901202301815', '123456', 230, NULL, NULL, NULL, NULL, 9, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-10-03 09:53:52', '2020-10-03 09:53:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'يسرى سمير كامل سعد', NULL, NULL, NULL, 1, NULL, 13, '2020-10-03', 4, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0', NULL, NULL, '29805052200374', '123456', 488.89, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-10-03 11:47:39', '2020-10-07 07:28:04', NULL, NULL, 'admin@admin.com', NULL, NULL, NULL, 0, '2020-10-03-13:47:27-62420', 1, NULL),
(13, 'على ماهر معوض محمد', NULL, NULL, NULL, 1, NULL, 9, '2020-09-30', 3, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, '0', NULL, NULL, '29905022201974', NULL, 400, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-10-05 05:05:51', '2020-10-05 05:11:58', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-10-05-07:05:51-69733', 1, NULL),
(14, 'مريم محمد ابوالخير محمد عبدالصمد', '2020-10-05-07:08:46-17007', NULL, 'female', 1, NULL, 13, '2020-09-28', 4, NULL, 14, NULL, NULL, NULL, 2, 4, NULL, NULL, NULL, '0', NULL, NULL, '29908200103123', NULL, 400, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/students/14/160188172689031.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-10-05 05:08:46', '2020-10-07 11:16:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'اسلام عزت رجب محمد', '2020-10-05-07:17:31-91162', NULL, 'male', 1, NULL, 14, '2020-10-14', 4, NULL, 14, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, '0', NULL, NULL, '29804212300293', NULL, 200, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-10-05 05:17:31', '2020-10-05 05:18:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'معاز عبد المجيد احد', NULL, NULL, NULL, 1, NULL, 1, '2017-10-05', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0', NULL, NULL, '35662454656448', NULL, 300, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/students/16/160188920031921.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-10-05 07:13:19', '2020-10-06 07:05:01', '.', NULL, NULL, NULL, NULL, NULL, 0, '2020-10-05-09:13:19-56547', 1, NULL),
(17, 'شريف ناصر محمد جابر', NULL, NULL, NULL, 1, NULL, 1, '2020-10-06', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0', NULL, NULL, '29708022404816', NULL, 300, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-10-06 10:04:22', '2020-10-06 10:06:07', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-10-06-12:04:21-78516', 1, NULL),
(18, 'حسن عبدالناصر حسن عبدالمجيد', '2020-10-06-12:47:24-62882', NULL, 'male', 1, NULL, 2, '2020-10-01', 1, NULL, 14, NULL, NULL, NULL, 2, 4, NULL, NULL, NULL, '0', NULL, NULL, '29908292200138', NULL, 500, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/students/18/160198844481606.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-10-06 10:47:24', '2020-10-06 10:47:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'على رفاعى عبداللطيف مرزوق', '2020-10-06-12:55:06-67639', NULL, 'male', 1, NULL, 2, '2020-09-30', 1, NULL, 14, NULL, NULL, NULL, 2, 4, NULL, NULL, NULL, '0', NULL, NULL, '30002082200077', NULL, 600, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/students/19/160198890740355.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-10-06 10:55:06', '2020-10-06 10:55:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'محمود هلال حسين عبدالله', '2020-10-06-13:51:51-39038', NULL, 'male', 1, NULL, 1, '2020-09-06', 1, NULL, 13, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '0', NULL, NULL, '30008242200379', NULL, 230, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-10-06 11:51:51', '2020-10-06 11:51:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'مارى طلعت سعد سعيد', '2020-10-07-13:37:51-88300', NULL, 'male', 1, NULL, 1, '2016-09-30', 1, NULL, 13, NULL, NULL, NULL, 2, 4, NULL, NULL, NULL, '0', NULL, NULL, '29912262200742', NULL, 200, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-10-07 11:37:51', '2020-10-07 11:37:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'محمود محمد طه', NULL, NULL, NULL, 1, NULL, 1, '2020-10-10', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0', NULL, NULL, '124575445454454', NULL, 230, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-10-10 09:24:45', '2020-10-10 09:24:45', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-10-10-11:24:45-99756', 1, NULL),
(23, 'كريستينا عاطف مرقص', NULL, NULL, NULL, 1, NULL, 1, '2020-10-11', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0', NULL, NULL, '21212121212121', NULL, 230, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/students/23/160242351224133.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-10-11 11:36:54', '2020-10-11 11:40:03', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-10-11-13:36:53-28326', 1, NULL),
(24, 'احمد عبدالعظيم حسن شعبان', NULL, NULL, NULL, 1, NULL, 1, '2018-06-23', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '0', NULL, NULL, '29804292200251', NULL, 230, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-10-12 10:51:09', '2020-10-13 07:57:02', 'الطالب يتوجه الى شئون الطالاب', NULL, NULL, NULL, NULL, NULL, 0, '2020-10-12-12:51:09-60999', 1, NULL),
(25, 'بطه سيد حشمت السيد', NULL, NULL, 'female', 1, NULL, 5, '2018-06-25', 3, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, '0', NULL, NULL, '29911102200383', NULL, 640, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-10-12 10:54:10', '2020-10-12 12:50:44', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-10-12-12:54:09-91510', 1, NULL),
(26, 'طراف محمد جواد يونس', '2020-10-12-12:59:21-26437', NULL, 'male', 1, NULL, 13, '2018-02-20', 4, NULL, 14, NULL, NULL, NULL, 2, 4, NULL, NULL, NULL, '0', NULL, NULL, '30110012435031', NULL, 600, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-10-12 10:59:21', '2020-10-12 10:59:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'محمود محمد لبيب عبدالناصر', '27', NULL, 'male', 1, NULL, 1, '2020-10-07', 1, NULL, 14, NULL, NULL, NULL, 2, 4, NULL, NULL, NULL, '0', NULL, NULL, '29512122201953', NULL, 500, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/students/27/160257807828919.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-10-13 06:28:49', '2020-10-13 06:34:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'بلال حمزه حسين جوده', '28', NULL, 'male', 1, NULL, 12, '2020-10-06', 2, NULL, 14, NULL, NULL, NULL, 2, 4, NULL, NULL, NULL, '0', NULL, NULL, '29410012205956', NULL, 200, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/students/28/160257805561228.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-10-13 06:30:11', '2020-10-13 06:34:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'احمد حمدى ابراهيم عبدالسلام', '29', NULL, 'male', 1, NULL, 2, '2020-10-12', 1, NULL, 1, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '0', NULL, NULL, '29601022300558', NULL, 380, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/students/29/160257802896582.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-10-13 06:31:08', '2020-11-14 12:50:16', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-10-13-08:31:08-84079', 1, NULL),
(30, 'احمد اشرف محمد عبد اللطيف', '30', NULL, 'male', 1, NULL, 12, '2020-10-07', 2, NULL, 1, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, '0', NULL, NULL, '29504032400211', NULL, 500, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/uploads/students/30/160257801088928.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-10-13 06:33:30', '2020-11-14 12:42:25', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-10-13-08:33:30-30887', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_attributes`
--

CREATE TABLE `student_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `attributes_id` int(10) UNSIGNED NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_code_series`
--

CREATE TABLE `student_code_series` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `code` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_code_series`
--

INSERT INTO `student_code_series` (`id`, `academic_year_id`, `level_id`, `code`, `created_at`, `updated_at`) VALUES
(3, 1, 1, '20201001', '2020-08-11 16:40:45', '2020-08-11 16:40:45'),
(2, 1, 2, '20202001', '2020-08-11 16:30:10', '2020-08-11 16:33:33'),
(4, 9, 1, '20231001', '2020-08-12 00:30:26', '2020-08-12 00:30:26'),
(5, 4, 1, '20200001', '2020-08-12 13:02:08', '2020-08-12 13:02:08'),
(6, 4, 2, '202010001', '2020-08-12 13:02:29', '2020-08-12 13:02:29');

-- --------------------------------------------------------

--
-- Table structure for table `student_logs`
--

CREATE TABLE `student_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `student_status_id` int(10) UNSIGNED NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_military_history`
--

CREATE TABLE `student_military_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `military_status_id` int(11) NOT NULL,
  `military_settings_id` int(11) NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_required_documents`
--

CREATE TABLE `student_required_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `required_document_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('original','copy') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_required_documents`
--

INSERT INTO `student_required_documents` (`id`, `required_document_id`, `student_id`, `path`, `notes`, `type`, `created_at`, `updated_at`) VALUES
(1, 17, 1, '/uploads/students/1/160130960155890.png', NULL, NULL, '2020-09-28 14:13:21', '2020-09-28 14:13:21'),
(2, 18, 1, '/uploads/students/1/160130960153078.jpg', NULL, NULL, '2020-09-28 14:13:21', '2020-09-28 14:13:21'),
(3, 19, 1, '/uploads/students/1/160130960156997.webp', NULL, NULL, '2020-09-28 14:13:21', '2020-09-28 14:13:21'),
(4, 17, 2, '/uploads/students/2/160131020187028.png', NULL, NULL, '2020-09-28 14:23:21', '2020-09-28 14:23:21'),
(5, 18, 2, '/uploads/students/2/160131020168067.jpg', NULL, NULL, '2020-09-28 14:23:21', '2020-09-28 14:23:21'),
(6, 19, 2, '/uploads/students/2/160131020281498.webp', NULL, NULL, '2020-09-28 14:23:22', '2020-09-28 14:23:22'),
(7, 17, 3, '/uploads/students/3/160132013690704.png', NULL, NULL, '2020-09-28 17:08:56', '2020-09-28 17:08:56'),
(8, 18, 3, '/uploads/students/3/160132013690977.jpg', NULL, NULL, '2020-09-28 17:08:56', '2020-09-28 17:08:56'),
(9, 19, 3, '/uploads/students/3/160132013672305.webp', NULL, NULL, '2020-09-28 17:08:56', '2020-09-28 17:08:56'),
(10, 17, 4, '/uploads/students/4/160132196366779.png', NULL, NULL, '2020-09-28 17:39:23', '2020-09-28 17:39:23'),
(11, 18, 4, '/uploads/students/4/160132196340639.jpg', NULL, NULL, '2020-09-28 17:39:23', '2020-09-28 17:39:23'),
(12, 19, 4, '/uploads/students/4/160132196428411.webp', NULL, NULL, '2020-09-28 17:39:24', '2020-09-28 17:39:24'),
(13, 1, 5, '/uploads/students/5/160136273727644.jpg', NULL, NULL, '2020-09-29 04:58:57', '2020-09-29 04:58:57'),
(14, 2, 5, '/uploads/students/5/160136273849622.png', NULL, NULL, '2020-09-29 04:58:58', '2020-09-29 04:58:58'),
(15, 20, 5, '/uploads/students/5/160136273857435.jpg', NULL, NULL, '2020-09-29 04:58:58', '2020-09-29 04:58:58'),
(16, 17, 6, '/uploads/students/6/160136280858328.jpg', NULL, NULL, '2020-09-29 05:00:08', '2020-09-29 05:00:08'),
(17, 18, 6, '/uploads/students/6/160136280876744.jpg', NULL, NULL, '2020-09-29 05:00:08', '2020-09-29 05:00:08'),
(18, 19, 6, '/uploads/students/6/160136280837691.jpg', NULL, NULL, '2020-09-29 05:00:08', '2020-09-29 05:00:08'),
(19, 2, 7, '/uploads/students/7/160136288829211.png', NULL, NULL, '2020-09-29 05:01:28', '2020-09-29 05:01:28'),
(20, 7, 7, '/uploads/students/7/160136288834183.jpg', NULL, NULL, '2020-09-29 05:01:28', '2020-09-29 05:01:28'),
(21, 19, 7, '/uploads/students/7/160136288837048.jpg', NULL, NULL, '2020-09-29 05:01:28', '2020-09-29 05:01:28'),
(22, 2, 8, '/uploads/students/8/160136499286353.jpg', NULL, NULL, '2020-09-29 05:36:32', '2020-09-29 05:36:32'),
(23, 7, 8, '/uploads/students/8/160136499261808.webp', NULL, NULL, '2020-09-29 05:36:32', '2020-09-29 05:36:32'),
(24, 19, 8, '/uploads/students/8/160136499374618.jpg', NULL, NULL, '2020-09-29 05:36:33', '2020-09-29 05:36:33'),
(25, 17, 9, '/uploads/students/9/160138102252596.png', NULL, NULL, '2020-09-29 10:03:42', '2020-09-29 10:03:42'),
(26, 18, 9, '/uploads/students/9/160138102326934.jpg', NULL, NULL, '2020-09-29 10:03:43', '2020-09-29 10:03:43'),
(27, 19, 9, '/uploads/students/9/160138102363550.webp', NULL, NULL, '2020-09-29 10:03:43', '2020-09-29 10:03:43'),
(28, 2, 11, '/uploads/students/11/160172603256785.jpg', NULL, NULL, '2020-10-03 09:53:52', '2020-10-03 09:53:52'),
(29, 7, 11, '/uploads/students/11/160172603285378.png', NULL, NULL, '2020-10-03 09:53:53', '2020-10-03 09:53:53'),
(30, 19, 11, '/uploads/students/11/160172603379306.webp', NULL, NULL, '2020-10-03 09:53:53', '2020-10-03 09:53:53'),
(31, 17, 12, '/uploads/students/12/160173286071643.png', NULL, NULL, '2020-10-03 11:47:41', '2020-10-03 11:47:41'),
(32, 18, 12, '/uploads/students/12/160173286271296.jpg', NULL, NULL, '2020-10-03 11:47:42', '2020-10-03 11:47:42'),
(33, 19, 12, '/uploads/students/12/160173286355103.webp', NULL, NULL, '2020-10-03 11:47:43', '2020-10-03 11:47:43'),
(34, 2, 13, '/uploads/students/13/160188155133363.png', NULL, NULL, '2020-10-05 05:05:51', '2020-10-05 05:05:51'),
(35, 7, 13, '/uploads/students/13/160188155186606.jpg', NULL, NULL, '2020-10-05 05:05:52', '2020-10-05 05:05:52'),
(36, 19, 13, '/uploads/students/13/160188155212989.jpg', NULL, NULL, '2020-10-05 05:05:52', '2020-10-05 05:05:52'),
(37, 1, 14, '/uploads/students/14/160188172680445.jpg', NULL, NULL, '2020-10-05 05:08:46', '2020-10-05 05:08:46'),
(38, 2, 14, '/uploads/students/14/160188172628301.png', NULL, NULL, '2020-10-05 05:08:46', '2020-10-05 05:08:46'),
(39, 20, 14, '/uploads/students/14/160188172774203.jpg', NULL, NULL, '2020-10-05 05:08:47', '2020-10-05 05:08:47'),
(40, 1, 15, '/uploads/students/15/160188225159914.jpg', NULL, NULL, '2020-10-05 05:17:31', '2020-10-05 05:17:31'),
(41, 2, 15, '/uploads/students/15/160188225144331.jpg', NULL, NULL, '2020-10-05 05:17:32', '2020-10-05 05:17:32'),
(42, 20, 15, '/uploads/students/15/160188225216035.jpg', NULL, NULL, '2020-10-05 05:17:32', '2020-10-05 05:17:32'),
(43, 17, 16, '/uploads/students/16/160188920136911.jpg', NULL, NULL, '2020-10-05 07:13:21', '2020-10-05 07:13:21'),
(44, 18, 16, '/uploads/students/16/160188920134500.jpg', NULL, NULL, '2020-10-05 07:13:21', '2020-10-05 07:13:21'),
(45, 19, 16, '/uploads/students/16/160188920183326.jpg', NULL, NULL, '2020-10-05 07:13:21', '2020-10-05 07:13:21'),
(46, 1, 17, '/uploads/students/17/160198586281620.png', NULL, NULL, '2020-10-06 10:04:22', '2020-10-06 10:04:22'),
(47, 2, 17, '/uploads/students/17/160198586391344.jpg', NULL, NULL, '2020-10-06 10:04:23', '2020-10-06 10:04:23'),
(48, 20, 17, '/uploads/students/17/160198586352100.jpg', NULL, NULL, '2020-10-06 10:04:23', '2020-10-06 10:04:23'),
(49, 17, 18, '/uploads/students/18/160198844493899.png', NULL, NULL, '2020-10-06 10:47:24', '2020-10-06 10:47:24'),
(50, 18, 18, '/uploads/students/18/160198844493537.jpg', NULL, NULL, '2020-10-06 10:47:24', '2020-10-06 10:47:24'),
(51, 19, 18, '/uploads/students/18/160198844446127.jpg', NULL, NULL, '2020-10-06 10:47:25', '2020-10-06 10:47:25'),
(52, 17, 19, '/uploads/students/19/160198890760671.jpg', NULL, NULL, '2020-10-06 10:55:07', '2020-10-06 10:55:07'),
(53, 18, 19, '/uploads/students/19/160198890790887.png', NULL, NULL, '2020-10-06 10:55:07', '2020-10-06 10:55:07'),
(54, 19, 19, '/uploads/students/19/160198890860775.jpg', NULL, NULL, '2020-10-06 10:55:08', '2020-10-06 10:55:08'),
(55, 17, 20, '/uploads/students/20/160199231150850.png', NULL, NULL, '2020-10-06 11:51:51', '2020-10-06 11:51:51'),
(56, 18, 20, '/uploads/students/20/160199231178394.webp', NULL, NULL, '2020-10-06 11:51:51', '2020-10-06 11:51:51'),
(57, 19, 20, '/uploads/students/20/160199231225782.jpg', NULL, NULL, '2020-10-06 11:51:52', '2020-10-06 11:51:52'),
(58, 17, 21, '/uploads/students/21/160207787126424.jpg', NULL, NULL, '2020-10-07 11:37:51', '2020-10-07 11:37:51'),
(59, 18, 21, '/uploads/students/21/160207787133810.jpg', NULL, NULL, '2020-10-07 11:37:51', '2020-10-07 11:37:51'),
(60, 19, 21, '/uploads/students/21/160207787193502.jpg', NULL, NULL, '2020-10-07 11:37:52', '2020-10-07 11:37:52'),
(61, 17, 22, '/uploads/students/22/160232908682891.png', NULL, NULL, '2020-10-10 09:24:46', '2020-10-10 09:24:46'),
(62, 18, 22, '/uploads/students/22/160232908684528.jpg', NULL, NULL, '2020-10-10 09:24:46', '2020-10-10 09:24:46'),
(63, 19, 22, '/uploads/students/22/160232908695526.webp', NULL, NULL, '2020-10-10 09:24:46', '2020-10-10 09:24:46'),
(64, 17, 23, '/uploads/students/23/160242341489971.png', NULL, NULL, '2020-10-11 11:36:54', '2020-10-11 11:36:54'),
(65, 18, 23, '/uploads/students/23/160242341440479.jpg', NULL, NULL, '2020-10-11 11:36:54', '2020-10-11 11:36:54'),
(66, 19, 23, '/uploads/students/23/160242341576618.webp', NULL, NULL, '2020-10-11 11:36:55', '2020-10-11 11:36:55'),
(67, 2, 24, '/uploads/students/24/160250706915172.jpg', NULL, NULL, '2020-10-12 10:51:09', '2020-10-12 10:51:09'),
(68, 7, 24, '/uploads/students/24/160250706964386.png', NULL, NULL, '2020-10-12 10:51:09', '2020-10-12 10:51:09'),
(69, 19, 24, '/uploads/students/24/160250706921221.png', NULL, NULL, '2020-10-12 10:51:09', '2020-10-12 10:51:09'),
(70, 1, 25, '/uploads/students/25/160250725062400.jpg', NULL, NULL, '2020-10-12 10:54:10', '2020-10-12 10:54:10'),
(71, 2, 25, '/uploads/students/25/160250725084525.jpg', NULL, NULL, '2020-10-12 10:54:10', '2020-10-12 10:54:10'),
(72, 20, 25, '/uploads/students/25/160250725018980.png', NULL, NULL, '2020-10-12 10:54:10', '2020-10-12 10:54:10'),
(73, 17, 26, '/uploads/students/26/160250756177819.jpg', NULL, NULL, '2020-10-12 10:59:21', '2020-10-12 10:59:21'),
(74, 18, 26, '/uploads/students/26/160250756136786.png', NULL, NULL, '2020-10-12 10:59:21', '2020-10-12 10:59:21'),
(75, 19, 26, '/uploads/students/26/160250756193794.png', NULL, NULL, '2020-10-12 10:59:21', '2020-10-12 10:59:21'),
(76, 17, 27, '/uploads/students/27/160257772995573.jpg', NULL, NULL, '2020-10-13 06:28:49', '2020-10-13 06:28:49'),
(77, 18, 27, '/uploads/students/27/160257772943219.jpg', NULL, NULL, '2020-10-13 06:28:49', '2020-10-13 06:28:49'),
(78, 19, 27, '/uploads/students/27/160257772981073.jpg', NULL, NULL, '2020-10-13 06:28:49', '2020-10-13 06:28:49'),
(79, 17, 28, '/uploads/students/28/160257781186223.png', NULL, NULL, '2020-10-13 06:30:11', '2020-10-13 06:30:11'),
(80, 18, 28, '/uploads/students/28/160257781191039.jpg', NULL, NULL, '2020-10-13 06:30:11', '2020-10-13 06:30:11'),
(81, 19, 28, '/uploads/students/28/160257781148330.jpg', NULL, NULL, '2020-10-13 06:30:11', '2020-10-13 06:30:11'),
(82, 17, 29, '/uploads/students/29/160257786888312.png', NULL, NULL, '2020-10-13 06:31:08', '2020-10-13 06:31:08'),
(83, 18, 29, '/uploads/students/29/160257786819460.jpg', NULL, NULL, '2020-10-13 06:31:08', '2020-10-13 06:31:08'),
(84, 19, 29, '/uploads/students/29/160257786892860.jpg', NULL, NULL, '2020-10-13 06:31:08', '2020-10-13 06:31:08'),
(85, 2, 30, '/uploads/students/30/160257801055750.jpg', NULL, NULL, '2020-10-13 06:33:30', '2020-10-13 06:33:30'),
(86, 7, 30, '/uploads/students/30/160257801022456.jpg', NULL, NULL, '2020-10-13 06:33:30', '2020-10-13 06:33:30'),
(87, 19, 30, '/uploads/students/30/160257801017610.png', NULL, NULL, '2020-10-13 06:33:30', '2020-10-13 06:33:30');

-- --------------------------------------------------------

--
-- Table structure for table `student_status`
--

CREATE TABLE `student_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_work`
--

CREATE TABLE `team_work` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_work`
--

INSERT INTO `team_work` (`id`, `name`, `sign_image`, `notes`, `created_at`, `updated_at`, `value`) VALUES
(1, 'institute_manager', '', '', NULL, NULL, 'أ.د/ احمد ابو القمصان'),
(2, 'student manager', '', '', NULL, NULL, 'أ.د/ عماد طلعت نجيب ');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `created_at`, `updated_at`, `start_date`, `end_date`, `name`) VALUES
(1, NULL, NULL, '09-01', '01-01', 'ترم اول'),
(2, NULL, NULL, '09-01', '01-01', 'ترم ثانى'),
(3, NULL, NULL, '09-01', '01-01', 'ترم صيفى');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `key`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(3, 'main_settings', 'الاعدادات الرئيسيه', 'main_settings', '2020-08-08 11:36:07', '2020-10-12 12:33:08'),
(4, 'not_found', 'رابط غير موجود', 'Not Found', '2020-08-08 11:36:07', '2020-10-12 12:33:08'),
(5, 'academic_year', 'السنه الدراسيه', 'academic_year', '2020-08-08 11:36:50', '2020-10-12 12:33:08'),
(6, 'adminsion_status', 'نوع التقديم', 'adminsion status', '2020-08-08 22:38:59', '2020-10-12 12:33:07'),
(7, 'global_setting', 'الاعدادات العامه', 'global setting', '2020-08-08 23:41:58', '2020-10-12 12:33:07'),
(8, 'change_password', 'تغيير الرقم السرى', 'change password', '2020-08-08 23:41:58', '2020-10-12 12:33:07'),
(9, 'activities', 'نشط', 'activities', '2020-08-08 23:41:58', '2020-10-12 12:33:07'),
(10, 'login_history', 'سجل النشاطات', 'login history', '2020-08-08 23:41:58', '2020-10-12 12:33:07'),
(11, 'main', 'الرئيسيه', 'main', '2020-08-08 23:56:50', '2020-10-12 12:33:06'),
(12, 'adminsion_metods', 'وسيله التعارف', 'adminsion methods', '2020-08-08 23:56:50', '2020-10-12 12:33:06'),
(13, 'academin_sections', 'المستويات والفرق', 'academin sections', '2020-08-08 23:56:50', '2020-10-12 12:33:06'),
(14, 'levels', 'المستوى الدراسى', 'levels', '2020-08-08 23:56:50', '2020-10-12 12:33:06'),
(15, 'departments', 'الأقسام الدراسيه', 'departments', '2020-08-08 23:56:50', '2020-10-12 12:33:06'),
(16, 'divisions', 'الشعب الدراسيه', 'divisions', '2020-08-08 23:56:50', '2020-10-12 12:33:06'),
(17, 'qualifications', 'المؤهلات', 'qualifications', '2020-08-08 23:56:50', '2020-10-12 12:33:06'),
(18, 'qualification_types', 'انواع المؤهل', 'qualification_types', '2020-08-08 23:56:50', '2020-10-12 12:33:06'),
(19, 'roles', 'الصلاحيات', 'roles', '2020-08-08 23:56:50', '2020-10-12 12:33:06'),
(20, 'users', 'المستخدمين', 'users', '2020-08-08 23:56:50', '2020-10-12 12:33:06'),
(21, 'countroies_and_cities', 'الدول والمحافظات', 'countroies and cities', '2020-08-08 23:56:50', '2020-10-12 12:33:07'),
(22, 'countroies', 'الدول', 'countroies', '2020-08-08 23:56:50', '2020-10-12 12:33:07'),
(23, 'governments', 'المحافظات', 'governments', '2020-08-08 23:56:50', '2020-10-12 12:33:07'),
(24, 'cities', 'المدن', 'cities', '2020-08-08 23:56:50', '2020-10-12 12:33:07'),
(25, 'nationalities', 'الجنسيات', 'nationalities', '2020-08-08 23:56:50', '2020-10-12 12:33:07'),
(26, 'relative_relations', 'صله القرابه', 'relative relations', '2020-08-08 23:56:50', '2020-10-12 12:33:07'),
(27, 'languages', 'اللغات', 'languages', '2020-08-08 23:56:50', '2020-10-12 12:33:07'),
(28, 'parent_jobs', 'وظيفه ولى الامر', 'parent jobs', '2020-08-08 23:56:50', '2020-10-12 12:33:07'),
(29, 'applications', 'ملفات التقديم', 'applications', '2020-08-08 23:56:50', '2020-10-12 12:33:07'),
(30, 'application_requirments', 'طلبات التقديم', 'application requirments', '2020-08-08 23:56:50', '2020-10-12 12:33:07'),
(31, 'military', 'التجنيد', 'military', '2020-08-08 23:56:50', '2020-10-12 12:33:07'),
(32, 'military_status', 'حالات التجنيد', 'military_status', '2020-08-08 23:56:50', '2020-10-12 12:33:07'),
(33, 'military_areas', 'مناطق التجنيد', 'military areas', '2020-08-08 23:56:50', '2020-10-12 12:33:07'),
(34, 'profile', 'الملف الشخصى', 'profile', '2020-08-09 00:06:14', '2020-10-12 12:33:06'),
(35, 'create', 'إضافه', 'create', '2020-08-09 00:20:59', '2020-10-12 12:33:06'),
(36, 'setting', 'الإعدادات', 'setting', '2020-08-09 00:22:04', '2020-10-12 12:33:06'),
(37, 'user_profile_info', 'الحساب الشخصى للمستخدم', 'user profile info', '2020-08-09 00:23:46', '2020-10-12 12:33:06'),
(38, 'name', 'الاسم', 'name', '2020-08-09 00:23:46', '2020-10-12 12:33:06'),
(39, 'username', 'اسم المستخدم', 'username', '2020-08-09 00:26:02', '2020-10-12 12:33:06'),
(40, 'email', 'البريد الالكترونى', 'email', '2020-08-09 00:26:02', '2020-10-12 12:33:06'),
(41, 'phone', 'رقم الهاتف', 'phone', '2020-08-09 00:26:02', '2020-10-12 12:33:06'),
(42, 'save', 'حفظ', 'save', '2020-08-09 00:26:08', '2020-10-12 12:33:06'),
(43, 'datetime', 'التاريخ والوقت', 'datetime', '2020-08-09 00:55:32', '2020-10-12 12:33:05'),
(44, 'ip', 'IP', 'IP', '2020-08-09 00:55:32', '2020-10-12 12:33:05'),
(45, 'device_info', 'معلومات الجهاز', 'device info', '2020-08-09 00:55:32', '2020-10-12 12:33:06'),
(46, 'save_changes', 'حفظ التغيرات', 'save changes', '2020-08-09 00:57:37', '2020-10-13 06:38:20'),
(47, 'old_password', 'الرقم السرى القديم', 'old password', '2020-08-09 00:57:37', '2020-10-12 12:33:05'),
(48, 'new_password', 'الرقم السرى الجديد', 'new password', '2020-08-09 00:57:37', '2020-10-12 12:33:05'),
(49, 'confirm_new_password', 'تاكيد الرقم السرى الجديد', 'confirm new password', '2020-08-09 00:57:37', '2020-10-12 12:33:05'),
(50, 'add_city', 'إضافه مدينه', 'add city', '2020-08-09 01:07:13', '2020-10-12 12:33:05'),
(51, 'add_city_', 'إضافه مدينه', 'add city', '2020-08-09 01:07:13', '2020-10-12 12:33:05'),
(52, 'process_has_been_success', 'تمت العمليه  بنجاح', 'process has been success', '2020-08-09 01:07:14', '2020-10-12 12:33:05'),
(53, 'city', 'المدينه', 'city', '2020-08-09 16:44:45', '2020-10-12 12:33:05'),
(54, 'government', 'المحافظه', 'government', '2020-08-09 16:45:53', '2020-10-12 12:33:05'),
(55, 'country', 'الدوله', 'country', '2020-08-09 16:45:53', '2020-10-12 12:33:05'),
(56, 'notes', 'ملاحظات', 'notes', '2020-08-09 16:45:53', '2020-10-12 12:33:05'),
(57, 'are_you_sure_?', 'هل انت متأكد ؟', 'are you sure ?', '2020-08-09 16:50:52', '2020-10-12 12:33:05'),
(58, 'are_you_sure', 'هل انت متأكد ؟', 'are you sure', '2020-08-09 16:54:14', '2020-10-12 12:33:05'),
(59, 'when_deleted,_the_data_cannot_be_recovered', 'عند تاكيد الحذف سيتم فقد البيانات ولا يمكن لك استرجاعها', 'When deleted, the data cannot be recovered', '2020-08-09 16:56:09', '2020-10-12 12:33:05'),
(60, 'yes,_delete', 'نعم , اكد الحذف', 'yes, delete', '2020-08-09 16:56:09', '2020-10-12 12:33:05'),
(61, 'countries', 'الدول', 'countries', '2020-08-09 17:09:16', '2020-10-12 12:33:05'),
(62, 'change_translation', 'تغير الترجمه', 'change translation', '2020-08-09 17:23:05', '2020-10-12 12:33:05'),
(63, 'add', 'اضافة', 'add', '2020-08-09 17:23:14', '2020-10-12 12:33:05'),
(64, 'language', 'اللغه', 'language', '2020-08-09 17:23:14', '2020-10-12 12:33:05'),
(65, 'key', 'رمز الكلمة', 'key', '2020-08-09 17:36:48', '2020-10-12 12:33:04'),
(66, 'name_in_english', 'الكلمة بالانجليزيه', 'Name in English', '2020-08-09 17:36:48', '2020-10-12 12:33:04'),
(67, 'name_in_arabic', 'الكلمة بالعربيه', 'Name in Arabic', '2020-08-09 17:36:48', '2020-10-12 12:33:05'),
(68, 'nationality', 'الجنسيه', 'nationality', '2020-08-09 17:46:04', '2020-10-12 12:33:04'),
(69, 'relative_relation', 'صلة القرابه', 'relative_relation', '2020-08-09 17:58:36', '2020-10-12 12:33:04'),
(70, 'academic_years', 'السنه الدراسيه', 'academic_years', '2020-08-09 18:35:46', '2020-10-12 12:33:04'),
(71, 'starts_in', 'بيدا فى', 'starts in', '2020-08-09 18:41:39', '2020-10-12 12:33:04'),
(72, 'ends_in_', 'ينتهى فى', 'ends in', '2020-08-09 18:41:39', '2020-10-12 12:33:04'),
(73, 'new', 'جديد', 'New', '2020-08-09 18:46:02', '2020-10-12 12:33:04'),
(74, 'app_notifications', 'اشعارات النظام', 'App Notifications', '2020-08-09 18:46:02', '2020-10-12 12:33:04'),
(75, '', '-    ', '-', '2020-08-09 18:46:02', '2020-08-18 19:25:24'),
(76, 'read_all_notifications', 'قرائه كل الاشعارات', 'Read all notifications', '2020-08-09 18:49:03', '2020-10-12 12:33:04'),
(77, 'home', 'الرئيسيه', 'home', '2020-08-09 19:04:56', '2020-10-12 12:33:04'),
(78, 'types_of_submissions', 'نوع التقديم', 'types of submissions', '2020-08-09 19:08:46', '2020-10-12 12:33:04'),
(79, 'submissions_type_name', 'اسم وسيله التعارف', 'submissions type name', '2020-08-09 19:08:46', '2020-10-12 12:33:04'),
(80, 'a_letter_sending_the_file_transferred_to_the_institute', 'خطاب ارسال الملف محول الى المعهد', 'A letter sending the file transferred to the institute', '2020-08-09 19:55:11', '2020-10-12 12:33:04'),
(81, 'translation', 'الترجمه', 'translation', '2020-08-09 19:56:09', '2020-10-12 12:33:04'),
(82, 'translations', 'الترجمه', 'translations', '2020-08-09 19:57:23', '2020-10-12 12:33:04'),
(83, 'print', 'طباعه', 'print', '2020-08-09 20:16:27', '2020-10-12 12:33:04'),
(84, 'division_name', 'اسم الشعبه', 'division name', '2020-08-09 20:17:37', '2020-10-12 12:33:04'),
(85, 'department_name', 'اسم القسم', 'department name', '2020-08-09 20:17:37', '2020-10-12 12:33:04'),
(86, 'level', 'المستوى', 'level', '2020-08-09 20:17:37', '2020-10-12 12:33:04'),
(87, 'select_country', 'اسم الدوله', 'select country', '2020-08-09 21:07:32', '2020-10-12 12:33:04'),
(88, 'select_government', 'إختر المحافظه', 'select government', '2020-08-09 21:07:32', '2020-10-12 12:33:04'),
(89, 'submission_type', 'وسيله التعارف', 'submission type', '2020-08-09 21:09:21', '2020-10-12 12:33:03'),
(90, 'submission_status', 'وسيله التعارف', 'submission status', '2020-08-09 21:09:21', '2020-10-12 12:33:03'),
(91, 'student_name', 'اسم الطالب', 'student name', '2020-08-09 21:09:21', '2020-10-12 12:32:47'),
(92, 'student_address', 'العنوان', 'student address', '2020-08-09 21:09:21', '2020-10-12 12:33:03'),
(93, 'birth_place', 'محل الميلاد', 'birth place', '2020-08-09 21:09:21', '2020-10-12 12:33:03'),
(94, 'national_id', 'الرقم القومى', 'national id', '2020-08-09 21:09:21', '2020-10-12 12:32:47'),
(95, 'national_id_date', 'تاريخ الهوية الوطنية', 'national_id_date', '2020-08-09 21:09:21', '2020-10-12 12:33:03'),
(96, 'national_id_place', 'مكان الهوية الوطنية', 'national_id_place', '2020-08-09 21:09:21', '2020-10-12 12:33:03'),
(97, 'triple_number', 'الرقم الثلاثى', 'triple_number', '2020-08-09 21:09:21', '2020-10-12 12:33:03'),
(98, 'registration_date', 'تاريخ التقديم', 'registration date', '2020-08-09 21:09:21', '2020-10-12 12:33:03'),
(99, 'military_area', 'مناطق التجنيد', 'military_area', '2020-08-09 21:09:21', '2020-10-12 12:33:03'),
(100, 'select_military_area', 'إختر منطقه التجنيد', 'select military area', '2020-08-09 21:09:21', '2020-10-12 12:33:03'),
(101, 'select_military_status', 'إختر حاله التجنيد', 'select military status', '2020-08-09 21:09:21', '2020-10-12 12:33:04'),
(102, 'select_academic_year', 'إختر السنه الدراسيه', 'select academic year', '2020-08-09 21:09:21', '2020-10-12 12:33:04'),
(103, 'image', 'صوره', 'image', '2020-08-09 21:35:14', '2020-10-12 12:33:03'),
(104, 'application_code', 'كود ملف التقديم', 'application code', '2020-08-09 21:35:14', '2020-10-12 12:33:03'),
(105, 'student_phone', 'رقم التليفون', 'student phone', '2020-08-09 21:35:14', '2020-10-12 12:33:03'),
(106, 'tanseeq_password', 'رقم السرى للتنسيق', 'tanseeq password', '2020-08-09 21:35:17', '2020-10-12 12:33:02'),
(107, 'qualification_type', 'نوع المؤهل', 'qualification type', '2020-08-09 21:35:17', '2020-10-12 12:33:02'),
(108, 'select_qualification_type', 'إختر نوع المؤهل', 'select qualification type', '2020-08-09 21:35:17', '2020-10-12 12:33:02'),
(109, 'qualification_date', 'تاريخ الحصول على المؤهل', 'qualification_date', '2020-08-09 21:35:17', '2020-10-12 12:33:02'),
(110, 'setting_number', 'رقم جلوس المؤهل', 'setting number', '2020-08-09 21:35:17', '2020-10-12 12:33:02'),
(111, 'select_nationality', 'إختر الجنسيه', 'select nationality', '2020-08-09 21:35:17', '2020-10-12 12:33:02'),
(112, 'religion', 'الديانه', 'religion', '2020-08-09 21:35:17', '2020-10-12 12:33:02'),
(113, 'muslim', 'مسلم', 'muslim', '2020-08-09 21:35:17', '2020-10-12 12:33:02'),
(114, 'christian', 'مسيحى', 'christian', '2020-08-09 21:35:17', '2020-10-12 12:33:02'),
(115, 'sex', 'النوع', 'sex', '2020-08-09 21:35:17', '2020-10-12 12:33:03'),
(116, 'male', 'ذكر', 'male', '2020-08-09 21:35:17', '2020-10-12 12:33:03'),
(117, 'female', 'انثى', 'female', '2020-08-09 21:35:17', '2020-10-12 12:33:03'),
(118, 'select_city', 'إختر المدينه', 'select city', '2020-08-09 21:35:17', '2020-10-12 12:33:03'),
(119, 'first_foreign_language', 'اللغه الاجنبيه الاولى', 'first foreign language', '2020-08-09 21:35:17', '2020-10-12 12:33:03'),
(120, 'select_first_foreign_language', 'إختر اللغه الاجنبيه الاولى', 'select first foreign language', '2020-08-09 21:35:17', '2020-10-12 12:33:03'),
(121, 'second_foreign_language', 'اللغه الاجنبيه الثانيه', 'second foreign language', '2020-08-09 21:35:17', '2020-10-12 12:33:03'),
(122, 'select_second_foreign_language', 'إختر اللغه الاجنبيه الثانيه', 'select second foreign language', '2020-08-09 21:35:17', '2020-10-12 12:33:03'),
(123, 'student_grade', 'درجه الطالب', 'student grade', '2020-08-09 21:35:18', '2020-10-12 12:33:01'),
(124, 'parent_name', 'اسم ولى الامر', 'parent_name', '2020-08-09 21:35:18', '2020-10-12 12:33:02'),
(125, 'parent_national_id', 'الرقم القومى لولى الامر', 'parent_national_id', '2020-08-09 21:35:18', '2020-10-12 12:33:02'),
(126, 'parent_job', 'مهنة ولى الامر', 'parent_job', '2020-08-09 21:35:18', '2020-10-12 12:33:02'),
(127, 'select_parent_job', 'إختر وظيفه ولى الامر', 'select parent job', '2020-08-09 21:35:18', '2020-10-12 12:33:02'),
(128, 'parent_address', 'عنوان ولى الامر', 'parent_address', '2020-08-09 21:35:18', '2020-10-12 12:33:02'),
(129, 'parent_phone', 'هاتف ولى الامر', 'parent_phone', '2020-08-09 21:35:18', '2020-10-12 12:33:02'),
(130, 'submissions_status', 'وسيله التعارف', 'submissions status', '2020-08-09 21:48:02', '2020-10-12 12:33:01'),
(131, 'report_setting', 'اعدادات التقرير', 'report setting', '2020-08-09 21:52:39', '2020-10-12 12:33:01'),
(132, 'letter_sending_to_institute', 'خطاب ارسال الملف المحول الى المعهد', 'letter_sending_to_institute', '2020-08-09 21:52:40', '2020-10-12 12:33:01'),
(133, 'change_report_setting', 'تغير اعدادات التقارير', 'change report setting', '2020-08-09 22:07:17', '2020-10-12 12:33:01'),
(134, 'reports', 'التقارير', 'reports', '2020-08-09 22:17:41', '2020-10-12 12:33:01'),
(135, 'settings', 'الاعدادات', 'settings', '2020-08-09 22:17:41', '2020-10-12 12:33:01'),
(136, 'area', 'المنظقه', 'area', '2020-08-09 22:28:07', '2020-10-12 12:33:01'),
(137, 'area_name', 'اسم المنطقه', 'area name', '2020-08-09 22:30:10', '2020-10-12 12:33:01'),
(138, 'pdf', 'pdf', 'pdf', '2020-08-09 22:45:35', '2020-10-12 12:33:01'),
(139, 'countries_and_cities', 'المحافظات والمدن', 'countries and cities', '2020-08-09 23:13:05', '2020-10-12 12:33:01'),
(140, 'letter_sending_from_institute', 'خطاب ارسال الملف المحول من المعهد', 'letter_sending_from_institute', '2020-08-09 23:16:14', '2020-10-12 12:33:01'),
(141, 'a_letter_sending_the_file_transferred_from_the_institute', 'خطاب ارسال ملف طالب محول من المعهد', 'A letter sending the file transferred from the institute', '2020-08-09 23:19:52', '2020-10-12 12:33:01'),
(142, 'responsible_user', 'الموظف المختص', 'responsible user', '2020-08-09 23:34:26', '2020-10-12 12:33:01'),
(143, 'student_manager', 'مدير شئون الطلاب', 'student manager', '2020-08-09 23:34:26', '2020-10-12 12:33:01'),
(144, 'institute_manager', 'عميد المعهد', 'institute_manager', '2020-08-09 23:34:26', '2020-10-12 12:33:01'),
(145, 'header1_of_report', 'عنوان التقارير', 'header1_of_report', '2020-08-09 23:41:25', '2020-10-12 12:33:01'),
(146, 'higher_education', 'وزارة التعليم العالى', 'higher_education', '2020-08-10 00:03:56', '2020-10-12 12:33:01'),
(147, 'ends_is', 'ينتهى فى', 'ends is', '2020-08-10 00:10:58', '2020-10-12 12:33:01'),
(148, 'level_name', 'level name', 'level name', '2020-08-10 00:40:17', '2020-10-12 12:32:46'),
(149, 'edit', 'تعديل', 'edit', '2020-08-10 00:59:30', '2020-10-12 12:33:01'),
(150, 'qualification', 'المؤهل', 'qualification', '2020-08-10 01:07:36', '2020-10-12 12:33:01'),
(151, 'qualification_grade', 'درجه المؤهل', 'qualification grade', '2020-08-10 01:07:36', '2020-10-12 12:33:01'),
(152, 'grade', 'الدرجه', 'grade', '2020-08-10 01:08:31', '2020-10-12 12:33:01'),
(153, 'qualification_type_name', 'اسم نوع المؤهل', 'qualification type name', '2020-08-10 01:09:09', '2020-10-12 12:33:01'),
(154, 'required_grade', 'الدرجه المطلوبه', 'required grade', '2020-08-10 01:09:09', '2020-10-12 12:33:01'),
(155, 'application_requirements', 'الخانات الاساسيه والثانويه', 'application requirements', '2020-08-10 06:37:14', '2020-10-12 12:33:00'),
(156, 'required', 'اساسى', 'required', '2020-08-10 06:37:14', '2020-10-12 12:33:00'),
(157, 'not_required', 'غير اساسى', 'not required', '2020-08-10 06:37:14', '2020-10-12 12:33:00'),
(158, 'qualification_name', 'اسم المؤهل الدراسى', 'qualification name', '2020-08-10 17:29:18', '2020-10-12 12:33:00'),
(159, 'military_area_updated', 'تحديث مناطق التجنيد', 'military area updated', '2020-08-10 18:48:30', '2020-10-12 12:33:00'),
(160, 'military_area_updated_', 'تحديث مناطق التجنيد', 'military area updated', '2020-08-10 18:48:30', '2020-10-12 12:33:00'),
(161, 'deleted_successfully', 'تم الحذف بنجاح', 'deleted successfully', '2020-08-10 18:52:12', '2020-10-12 12:33:00'),
(162, 'military_area_deleted', 'حذف منطقه تجنيد', 'military area deleted', '2020-08-10 18:52:12', '2020-10-12 12:33:00'),
(163, 'military_area_deleted_', 'حذف منطقه تجنيد', 'military area deleted', '2020-08-10 18:52:12', '2020-10-12 12:33:00'),
(164, 'recommendationcard', 'بطاقة الترشيح', 'recommendationcard', '2020-08-10 19:34:42', '2020-10-12 12:33:00'),
(165, 'recommendation_card', 'بطاقة الترشيح', 'recommendation card', '2020-08-10 19:35:40', '2020-10-12 12:33:00'),
(166, 'certificate_of_academic_qualification', 'شهادة المؤهل الدراسى', 'certificate of academic qualification', '2020-08-10 20:16:46', '2020-10-12 12:33:00'),
(167, 'role', 'الصلاحيات', 'role', '2020-08-10 20:22:58', '2020-10-12 12:33:00'),
(168, 'birth_certificate', 'شهادة الميلاد', 'birth certificate', '2020-08-10 20:25:46', '2020-10-12 12:33:00'),
(169, 'bitrh_certificate', 'شهادة الميلاد', 'bitrh certificate', '2020-08-10 20:45:10', '2020-10-12 12:33:00'),
(170, 'dark_mode', 'الوضع المظلم', 'dark mode', '2020-08-10 20:46:17', '2020-10-12 12:33:00'),
(171, 'personal_identification_photo', 'صورة تحقيق الشخصيه', 'personal identification photo', '2020-08-10 20:47:29', '2020-10-12 12:33:00'),
(172, 'personal_photo', 'الصوره الشخصيه', 'personal photo', '2020-08-10 20:51:52', '2020-10-12 12:33:00'),
(173, 'model_2_jund', 'إستماره 2 جند', 'model 2 jund', '2020-08-10 21:04:27', '2020-10-12 12:32:59'),
(174, 'model_6_jund', 'إستماره 6 جند', 'model 6 jund', '2020-08-10 21:04:27', '2020-10-12 12:32:59'),
(175, 'receipt_letter', 'خطاب استلام', 'receipt letter', '2020-08-10 21:04:27', '2020-10-12 12:33:00'),
(176, 'estimates_statement', 'بيان التقديرات', 'estimates statement', '2020-08-10 21:04:27', '2020-10-12 12:33:00'),
(177, 'qualification_certificate', 'صورة شهادة المؤهل', 'qualification certificate', '2020-08-10 21:22:15', '2020-10-12 12:32:59'),
(178, 'full_name', 'الاسم بالكامل', 'full name', '2020-08-10 21:51:04', '2020-10-12 12:32:59'),
(179, 'select_all', 'اختيار الكل', 'select all', '2020-08-10 21:59:31', '2020-10-12 12:32:59'),
(180, 'show', 'عرض', 'show', '2020-08-10 21:59:31', '2020-10-12 12:32:59'),
(181, 'delete', 'حذف', 'delete', '2020-08-10 21:59:31', '2020-10-12 12:32:59'),
(182, 'case_status', 'بيان حاله', 'case status', '2020-08-10 22:07:28', '2020-10-12 12:32:59'),
(183, 'degree_status', 'بيان درجات', 'degree status', '2020-08-10 22:07:28', '2020-10-12 12:32:59'),
(184, 'degree_statement', 'بيان درجات', 'degree statement', '2020-08-10 22:07:28', '2020-10-12 12:32:59'),
(185, 'egyptians_lab_speechs', 'خطابات معامل المصريين', 'egyptians lab speechs', '2020-08-10 22:07:28', '2020-10-12 12:32:59'),
(186, '-_select_academic_year_-', 'إختر السنه الداسيه', '- select academic year -', '2020-08-10 23:16:59', '2020-10-12 12:32:59'),
(187, 'search', 'بحث', 'search', '2020-08-10 23:50:13', '2020-10-12 12:32:59'),
(188, 'students', 'الطلاب', 'students', '2020-08-11 16:27:14', '2020-10-12 12:32:59'),
(189, 'academic_year_id', 'رقم السنه الدراسيه', 'academic_year_id', '2020-08-11 17:23:30', '2020-10-12 12:32:58'),
(190, 'field_name', 'اسم الحقل', 'field name', '2020-08-11 17:35:41', '2020-10-12 12:32:58'),
(191, 'job_name', 'اسم الوظيفه', 'job name', '2020-08-11 17:45:49', '2020-10-12 12:32:58'),
(192, 'password', 'الرقم السرى', 'password', '2020-08-11 18:30:50', '2020-10-12 12:32:58'),
(193, 'upload_image', 'ارفاق صورة', 'upload image', '2020-08-11 18:30:50', '2020-10-12 12:32:58'),
(194, 'super_admin', 'مدير بصلاحيات اعلى', 'super_admin', '2020-08-11 19:19:51', '2020-10-12 12:32:58'),
(195, 'hr', 'شئون الطلاب', 'hr', '2020-08-11 19:19:51', '2020-10-12 12:32:58'),
(196, 'military_status_reason', 'ادارة مواقف التجنيد', 'military status reason', '2020-08-11 20:11:20', '2020-10-12 12:32:58'),
(197, 'military-area-submission', 'ادارة مناطق التجنيد', 'military area submission', '2020-08-11 20:13:57', '2020-10-12 12:32:58'),
(198, 'student_code_series', 'مسلسل كود الطلاب', 'student_code_series', '2020-08-11 20:19:56', '2020-10-12 12:32:58'),
(199, 'code', 'الكود', 'code', '2020-08-11 20:26:48', '2020-10-12 12:32:58'),
(200, 'add_student_code_series', 'اضافة مسلسل كود', 'add student code series', '2020-08-11 20:27:36', '2020-10-12 12:32:58'),
(201, 'add_student_code_series_2020001', '-', 'add student code series 2020001', '2020-08-11 20:27:36', '2020-10-12 12:32:58'),
(202, 'add_student_code_series_20202001', '-', 'add student code series 20202001', '2020-08-11 20:30:10', '2020-10-12 12:32:58'),
(203, 'edit_student_code_series', 'تعديل مسلسل اكواد الطلاب', 'edit student code series', '2020-08-11 20:33:33', '2020-10-12 12:32:58'),
(204, 'edit_student_code_series_20202001', '-', 'edit student code series 20202001', '2020-08-11 20:33:33', '2020-10-12 12:32:58'),
(205, 'condition_age', 'سن التجنيد', 'condition age', '2020-08-11 20:37:00', '2020-10-12 12:32:58'),
(206, 'remove_student_code_series', 'احذف مسلسل اكواد الطلاب', 'remove student code series', '2020-08-11 20:39:00', '2020-10-12 12:32:58'),
(207, 'remove_student_code_series_of_id_', 'حذف رقم مسلسل الطالب', 'remove student code series of id', '2020-08-11 20:39:00', '2020-10-12 12:32:58'),
(208, 'reasons', 'الاسباب', 'reasons', '2020-08-11 20:39:38', '2020-10-12 12:32:58'),
(209, 'reason', 'السبب', 'reason', '2020-08-11 20:39:38', '2020-10-12 12:32:58'),
(210, 'add_military_status_settings', 'إضافه اعدادات حالات التجنيد', 'add military status settings', '2020-08-11 21:02:12', '2020-10-12 12:32:58'),
(211, 'data_updated_successfully', 'تم تعديل البيانات بنجاح', 'data updated successfully', '2020-08-11 21:18:34', '2020-10-12 12:32:58'),
(212, 'data_deleted_successfully', 'تم حذف البيانات بنجاح', 'data deleted successfully', '2020-08-11 21:22:30', '2020-10-12 12:32:58'),
(213, 'military_status_settings_deleted', 'حذف اعدادات حالات التجنيد', 'military status settings deleted', '2020-08-11 21:22:30', '2020-10-12 12:32:58'),
(214, 'military_status_settings_deleted_', 'حذف اعدادات حالات التجنيد', 'military status settings deleted', '2020-08-11 21:22:30', '2020-10-12 12:32:58'),
(215, 'military_area_submission', 'ادارة مناطق التجنيد', 'military area submission', '2020-08-11 21:25:28', '2020-10-12 12:32:57'),
(216, 'report', 'تقرير', 'report', '2020-08-11 21:31:08', '2020-10-12 12:32:57'),
(217, 'repo', '-', 'repo', '2020-08-11 21:31:08', '2020-10-12 12:32:57'),
(218, 'select_student', 'إختر الطالب', 'select student', '2020-08-11 21:31:08', '2020-10-12 12:32:57'),
(219, 'application', 'ملف التقديم', 'application', '2020-08-11 21:43:05', '2020-10-12 12:32:57'),
(220, 'application_files', 'ملفات تقديم (غير مكتملة)', 'application files', '2020-08-11 21:43:05', '2020-10-12 12:32:57'),
(221, 'deselect_all', 'الغاء اختيار الكل', 'deselect all', '2020-08-11 21:59:36', '2020-10-12 12:32:57'),
(222, 'low_roles', 'صلاحيات ذات مستوى ضعيف', 'low_roles', '2020-08-11 22:12:51', '2020-10-12 12:32:57'),
(223, 'select_level_name', 'اختر اسم المستوى', 'select level name', '2020-08-11 22:17:06', '2020-10-12 12:32:57'),
(224, 'select_division_name', 'اختر اسم القسم', 'select division name', '2020-08-11 22:22:29', '2020-10-12 12:32:57'),
(225, 'report_header1', 'عنوان التقرير', 'report header1', '2020-08-11 22:41:17', '2020-10-12 12:32:57'),
(226, 'this_item_can_not_be_deleted', 'هذا المدخل لا يمكن الغاءه', 'this item can not be deleted', '2020-08-11 22:57:44', '2020-10-12 12:32:57'),
(227, 'registration_certificate', 'شهاده قيد', 'registration_certificate', '2020-08-11 23:10:59', '2020-10-12 12:32:57'),
(228, 'add_military_area_submission', 'اضافة منطقة تجنيد', 'add military area submission', '2020-08-11 23:46:07', '2020-10-12 12:32:57'),
(229, 'military_setting', 'اعدادات التجنيد', 'military setting', '2020-08-12 00:01:02', '2020-10-12 12:32:57'),
(230, 'date_of_age_calculate', 'تاريخ بدا حساب عمر الطالب', 'date of age calculate', '2020-08-12 00:01:02', '2020-10-12 12:32:57'),
(231, 'change_setting', 'تعديل الاعدادات', 'change setting', '2020-08-12 00:01:28', '2020-10-12 12:32:57'),
(232, 'change_setting_', 'تعديل الاعدادات', 'change setting', '2020-08-12 00:01:28', '2020-10-12 12:32:57'),
(233, 'select_department_name', 'اختر اسم القسم', 'select department name', '2020-08-12 00:39:20', '2020-10-12 12:32:57'),
(234, 'application_added_successfully', 'تم اضافه الملف بنجاح', 'application added successfully', '2020-08-12 01:15:41', '2020-10-12 12:32:57'),
(235, 'add_application', 'اضافه ملف تقديم', 'add application', '2020-08-12 01:15:41', '2020-10-12 12:32:57'),
(236, 'add_application_', 'اضافه ملف تقديم', 'add application', '2020-08-12 01:15:41', '2020-10-12 12:32:57'),
(237, 'student_added_successfully', 'تم اضافه الطالب بنجاح', 'student added successfully', '2020-08-12 06:12:16', '2020-10-12 12:32:57'),
(238, 'add_student', 'اضافه طالب', 'add student', '2020-08-12 06:12:16', '2020-11-14 12:18:42'),
(239, 'add_student_', 'اضافه طالب', 'add student', '2020-08-12 06:12:16', '2020-10-12 12:32:57'),
(240, 'student_code', 'كود الطالب', 'student code', '2020-08-12 06:41:15', '2020-10-12 12:32:47'),
(241, 'submission_method', 'طرق التقديم', 'submission method', '2020-08-12 07:20:30', '2020-10-12 12:32:57'),
(242, 'page_expired', 'انتهت فتره التحميل', 'Page Expired', '2020-08-12 13:45:18', '2020-10-12 12:32:56'),
(243, 'select_qualification', 'اختر اسم المؤهل الدراسى', 'select qualification', '2020-08-12 15:30:17', '2020-10-12 12:32:56'),
(244, 'not_match', 'غير مطابق للشروط', 'not match', '2020-08-12 16:46:17', '2020-10-12 12:32:56'),
(245, 'add_as_student', 'اضافه كاطالب', 'add as student', '2020-08-12 17:27:06', '2020-10-12 12:32:56'),
(246, 'conditions_not_completed', 'غير مكتملة الشروط', 'conditions not completed', '2020-08-12 18:22:52', '2020-10-12 12:32:56'),
(247, 'auth.failed', '-', 'auth.failed', '2020-08-14 04:18:09', '2020-10-12 12:32:56'),
(248, 'military_course', 'دورات التربية العسكرية', 'military course', '2020-08-16 21:52:48', '2020-10-12 12:32:56'),
(249, 'military_course_collection', 'مجموعات التربية العسكرية', 'military course collection', '2020-08-16 21:52:48', '2020-10-12 12:32:56'),
(250, 'ends_in', 'ينتهى فى', 'ends in', '2020-08-16 21:56:27', '2020-10-12 12:32:56'),
(251, 'students_registration', 'تسجيل الطلاب', 'Students registration', '2020-08-16 21:56:27', '2020-10-12 12:32:56'),
(252, 'military_course_collection_students', 'عرض الطلبة المسجلين', 'military course collection students', '2020-08-16 21:59:10', '2020-10-12 12:32:56'),
(253, 'student_information', 'معلومات الطالب', 'student information', '2020-08-16 22:17:27', '2020-10-12 12:32:56'),
(254, 'military_information', 'معلومات التجنيد', 'military information', '2020-08-16 23:38:10', '2020-10-12 12:32:56'),
(255, 'other_information', 'باقى المعلومات', 'other information', '2020-08-16 23:38:10', '2020-10-12 12:32:56'),
(256, 'parent_information', 'معلومات الاب', 'parent information', '2020-08-16 23:38:10', '2020-10-12 12:32:56'),
(257, 'required_documents', 'الاوراق المطلوبه', 'required_documents', '2020-08-16 23:40:23', '2020-10-12 12:32:56'),
(258, 'sorry_no_students_found_on_this_military_collection', 'عفوا لم يتم تسجيل اى طالب فى هذه الدوره', 'sorry no students found on this military collection', '2020-08-16 23:42:57', '2020-10-12 12:32:56'),
(259, 'students_have_been_successfully_added_to_the_military_course', 'تم إضافه الطلاب الى المقرر بنجاح', 'Students have been successfully added to the military course', '2020-08-16 23:48:15', '2020-10-12 12:32:56'),
(260, 'military_course_updated_', 'تعديل مقرر التربيه العسكريه', 'military course updated', '2020-08-16 23:48:15', '2020-10-12 12:32:56'),
(261, 'registred_students', 'ادخال النتيجة', 'Registred Students', '2020-08-16 23:54:51', '2020-10-12 12:32:56'),
(262, 'add_military_course', 'اضافه مقرر التربيه العسكريه', 'add military course', '2020-08-17 01:07:50', '2020-10-12 12:32:55'),
(263, 'military_course_updated', 'تعديل مقرر التربيه العسكريه', 'military course updated', '2020-08-17 01:08:08', '2020-10-12 12:32:55'),
(264, 'the_data_has_been_modified_successfully', 'تم تعديل البيانات بنجاح', 'The data has been modified successfully', '2020-08-17 01:08:08', '2020-10-12 12:32:55'),
(265, 'please_choose_students', 'من فضلك قم بإختيار الطالب', 'please choose students', '2020-08-17 16:31:26', '2020-10-12 12:32:55'),
(266, 'military_course_collection_code', 'قم بادخال رقم مقرر التربيه العسكريه', 'military course collection code', '2020-08-17 16:48:04', '2020-10-12 12:32:55'),
(267, 'select_military_course', 'قم باختيار مقرر التربيه العسكريه', 'select military course', '2020-08-17 16:48:04', '2020-10-12 12:32:55'),
(268, 'add_military_course_collection', '-', 'add military course collection', '2020-08-17 16:48:27', '2020-10-12 12:32:55'),
(269, 'type', 'النوع', 'type', '2020-08-17 17:29:19', '2020-10-12 12:32:55'),
(270, 'original', 'نسخه اصليه', 'original', '2020-08-17 17:31:20', '2020-10-12 12:32:55'),
(271, 'copy', 'صوره', 'copy', '2020-08-17 17:31:20', '2020-10-12 12:32:55'),
(272, 'both', 'نسخه اصليه و صوره', 'both', '2020-08-17 17:31:20', '2020-10-12 12:32:55'),
(273, 'upload_file', 'قم برفع الملف', 'upload file', '2020-08-17 18:09:27', '2020-10-12 12:32:55'),
(274, 'the_result_has_been_approved_successfully', 'تم حفظ النتيجه بنجاح', 'the result has been approved successfully', '2020-08-17 18:58:06', '2020-10-12 12:32:55'),
(275, 'the_result_of_the_military_course_group_is_entered', 'تم ادخال نتيجه مجموعه التربيه العسكريه', 'The result of the Military Course group is entered', '2020-08-17 18:58:06', '2020-10-12 12:32:55'),
(276, 'id', 'الكود', 'ID', '2020-08-17 19:14:21', '2020-10-12 12:32:55'),
(277, 'successfull', 'ناجح / حاصل', 'successfull', '2020-08-17 20:19:14', '2020-10-12 12:32:55'),
(278, 'precipitate', 'راسب / غير حاصل', 'precipitate', '2020-08-17 20:19:14', '2020-10-12 12:32:55'),
(279, 'assign_required_documents', 'حدد الأوراق المطلوبه', 'assign required documents', '2020-08-17 20:26:11', '2020-10-12 12:32:55'),
(280, 'select_required_documents', 'حدد الأوراق المطلوبه', 'select required documents', '2020-08-17 20:26:35', '2020-10-12 12:32:55'),
(281, 'close', 'اغلاق', 'close', '2020-08-17 20:26:35', '2020-10-12 12:32:55'),
(282, 'military_course_deleted', 'حذف مقرر التربيه العسكريه', 'military course deleted', '2020-08-17 22:46:19', '2020-10-12 12:32:54'),
(283, 'name_is_required', 'حقل الاسم مطلوب', 'name is required', '2020-08-18 16:54:36', '2020-10-12 12:32:54'),
(284, 'qualification_is_required', 'حقل المؤهل مطلوب', 'qualification is required', '2020-08-18 16:54:36', '2020-10-12 12:32:54'),
(285, 'registration_status_is_required', 'حقل نوع التقديم مطلوب', 'registration_status is required', '2020-08-18 16:54:36', '2020-10-12 12:32:54'),
(286, 'national_id_is_required', 'حقل الرقم القومى مطلوب', 'national_id is required', '2020-08-18 16:54:36', '2020-10-12 12:32:54'),
(287, 'academic_years_is_required', 'حقل العام الدراسى مطلوب', 'academic_years is required', '2020-08-18 16:54:36', '2020-10-12 12:32:54'),
(288, 'grade_is_required', 'حقل الدرجه مطلوب', 'grade is required', '2020-08-18 16:54:36', '2020-10-12 12:32:54'),
(289, 'qualification_date_is_required', 'حقل تاريخ الحصول على المؤهل مطلوب', 'qualification_date is required', '2020-08-18 16:54:36', '2020-10-12 12:32:54'),
(290, 'qualification_types_is_required', 'حقل نوع المؤهل مطلوب', 'qualification_types is required', '2020-08-18 16:54:36', '2020-10-12 12:32:54'),
(291, 'new_application', 'ملف تقديم جديد', 'new application', '2020-08-18 18:17:31', '2020-10-12 12:32:54'),
(292, 'proccess_has_been_success', 'تمت العملية بنجاح', 'proccess has been success', '2020-08-18 19:25:26', '2020-10-12 12:32:54'),
(293, 'acceptance_code', 'كود الموافقه', 'acceptance_code', '2020-08-18 21:16:33', '2020-10-12 12:32:54'),
(294, 'acceptance_date', 'تاريخ الموافقه', 'acceptance_date', '2020-08-18 21:16:33', '2020-10-12 12:32:54'),
(295, 'search_with_application_info', 'بحث بمعلومات ملف التقديم', 'search with application info', '2020-08-18 22:07:25', '2020-10-12 12:32:54'),
(297, 'registration_status', 'حالات التسجيل', 'registration_status', '2020-08-18 22:30:40', '2020-10-12 12:32:54'),
(298, 'add_students_to_military_course', 'اضافة طلاب', 'Add Students to military course', '2020-08-18 22:34:52', '2020-10-12 12:32:54'),
(301, 'cancel', 'تراجع', 'cancel', '2020-08-18 22:43:40', '2020-10-12 12:32:54'),
(302, 'this_item_cannot_be_deleted', 'لا يمكن حذف هذا العنصر', 'This item cannot be deleted', '2020-08-18 23:01:39', '2020-10-12 12:32:54'),
(303, 'military_course_student_collection', '-', 'military course student collection', '2020-08-18 23:30:05', '2020-10-12 12:32:54'),
(304, 'excel', 'اكسيل', 'excel', '2020-08-18 23:35:02', '2020-10-12 12:32:54'),
(305, 'search_here', 'ابحث هنا', 'search here', '2020-08-19 18:11:26', '2020-10-12 12:32:54'),
(306, '0', NULL, NULL, '2020-08-19 18:25:57', '2020-09-20 12:31:29'),
(307, 'stores', 'الخزينه', 'stores', '2020-08-22 21:33:18', '2020-10-12 12:32:54'),
(308, 'resource_name', '-', 'resource name', '2020-08-22 21:33:18', '2020-10-12 12:32:54'),
(309, 'add_store', 'اضافة خزنه', 'add store', '2020-08-22 21:33:18', '2020-10-12 12:32:54'),
(310, 'init_balance', 'رصيد بداية المده', 'init_balance', '2020-08-22 21:43:36', '2020-10-12 12:32:53'),
(311, 'address', 'العنوان', 'address', '2020-08-22 21:43:36', '2020-10-12 12:32:54'),
(312, 'balance', 'الرصيد الحالى', 'balance', '2020-08-22 22:01:06', '2020-10-12 12:32:53'),
(313, 'user', 'المستخدم', 'user', '2020-08-22 22:01:06', '2020-10-12 12:32:53'),
(314, 'edit_store', 'تعديل خزنه', 'edit store', '2020-08-22 22:12:07', '2020-10-12 12:32:53'),
(315, 'remove_store', 'حذف خزنه', 'remove store', '2020-08-22 22:18:46', '2020-10-12 12:32:53'),
(316, 'remove_store_of_id_', 'حذف الخزنه رقم', 'remove store of id', '2020-08-22 22:18:46', '2020-10-12 12:32:53'),
(317, 'banks', 'البنوك', 'banks', '2020-08-22 22:29:30', '2020-10-12 12:32:53'),
(318, 'add_bank', 'اضافة بنك', 'add bank', '2020-08-22 22:29:30', '2020-10-12 12:32:53'),
(319, 'account_number', 'رقم الحساب', 'account_number', '2020-08-22 22:30:05', '2020-10-12 12:32:53'),
(320, 'branche', 'الفرع', 'branche', '2020-08-22 22:30:05', '2020-10-12 12:32:53'),
(321, 'edit_bank', 'تعديل بنك', 'edit bank', '2020-08-22 22:35:20', '2020-10-12 12:32:53'),
(322, 'remove_bank', 'حذف بنك', 'remove bank', '2020-08-22 22:39:42', '2020-10-12 12:32:53'),
(323, 'transformations', 'التحويلات الماليه', 'transformations', '2020-08-22 23:13:57', '2020-10-12 12:32:52'),
(324, 'date', 'التاريخ', 'date', '2020-08-22 23:13:57', '2020-10-12 12:32:52'),
(325, 'bank_id', 'البنك', 'bank_id', '2020-08-22 23:13:57', '2020-10-12 12:32:52'),
(326, 'store_id', 'الخزنه', 'store_id', '2020-08-22 23:13:57', '2020-10-12 12:32:52'),
(327, 'value', 'المبلغ', 'value', '2020-08-22 23:13:57', '2020-10-12 12:32:52'),
(328, 'attachment', 'مرفق', 'attachment', '2020-08-22 23:13:57', '2020-10-12 12:32:53'),
(329, 'user_id', 'المستخدم', 'user_id', '2020-08-22 23:13:57', '2020-10-12 12:32:53'),
(330, 'add_transformation', 'اضافة تحويل مالى', 'add transformation', '2020-08-22 23:13:57', '2020-10-12 12:32:53'),
(331, 'bank', 'البنك', 'bank', '2020-08-22 23:13:57', '2020-10-12 12:32:53'),
(332, 'bank_to_store', 'من بنك الى خزنه', 'bank_to_store', '2020-08-22 23:13:57', '2020-10-12 12:32:53'),
(333, 'store_to_bank', 'من خزنه الى بنك', 'store_to_bank', '2020-08-22 23:13:57', '2020-10-12 12:32:53'),
(334, 'store', 'الخزنه', 'store', '2020-08-22 23:15:13', '2020-10-12 12:32:52'),
(335, 'transformation_id', 'رقم التحويل', 'transformation_id', '2020-08-22 23:52:05', '2020-10-12 12:32:52'),
(336, 'remove_transformation', 'حذف التحويل', 'remove transformation', '2020-08-22 23:52:11', '2020-10-12 12:32:52'),
(337, 'edit_transformation', 'تعديل التحويل', 'edit transformation', '2020-08-23 00:08:02', '2020-10-12 12:32:52'),
(338, 'date_from', 'من تاريخ', 'date_from', '2020-08-23 00:14:51', '2020-10-12 12:32:52'),
(339, 'date_to', 'الى تاريخ', 'date_to', '2020-08-23 00:14:51', '2020-10-12 12:32:52'),
(340, 'expense_maincategorys', 'اقسام المصروفات الرئيسيه', 'expense_maincategorys', '2020-08-23 00:39:51', '2020-10-12 12:32:52'),
(341, 'priority', 'الاولويات', 'priority', '2020-08-23 00:39:51', '2020-10-12 12:32:52'),
(342, 'add_expense_maincategory', 'اضافه مصروف رئيسى', 'add expense_maincategory', '2020-08-23 00:39:51', '2020-10-12 12:32:52'),
(343, 'edit_expense_maincategory', 'تعديل مصروف رئيسى', 'edit expense_maincategory', '2020-08-23 00:44:46', '2020-10-12 12:32:52'),
(344, 'accounting', 'الحسابات', 'accounting', '2020-08-23 22:29:12', '2020-10-12 12:32:52'),
(345, 'expense_subcategorys', 'اقسام المصروفات الفرعيه', 'expense_subcategorys', '2020-08-23 22:29:12', '2020-10-12 12:32:52'),
(346, 'are_you_sure?', 'هل انت متاكد؟', 'Are you sure?', '2020-08-23 22:29:12', '2020-10-12 12:32:52'),
(347, 'search_with_student_info', 'ابحث بمعلومات الطالب', 'search with student info', '2020-08-23 22:30:00', '2020-10-12 12:32:52'),
(348, 'institute_name', 'اسم المعهد', 'institute name', '2020-08-24 20:20:41', '2020-10-12 12:32:52'),
(349, 'signature', 'التوقيع', 'signature', '2020-08-24 22:03:50', '2020-10-12 12:32:52'),
(350, 'course_supervisor', 'مشرف الدورة', 'course Supervisor', '2020-08-24 22:03:50', '2020-10-12 12:32:52'),
(351, 'coordinator_general_of_the_institute', 'المنسق العام للمعهد', 'Coordinator General of the Institute', '2020-08-24 22:03:50', '2020-10-12 12:32:52'),
(352, 'military_education_administration', 'ادارة التربية العسكرية', 'Military Education Administration', '2020-08-24 22:26:24', '2020-10-12 12:32:51'),
(353, 'student_affairs_administration', 'ادارة شئون الطلاب', 'Student Affairs Administration', '2020-08-24 22:26:24', '2020-10-12 12:32:51'),
(354, 'data_not_found', 'لا يوجد بيانات', 'data not found', '2020-08-25 00:04:26', '2020-10-12 12:32:51'),
(355, 'installments', 'نظام التقسيط', 'installments', '2020-08-25 16:56:54', '2020-10-12 12:32:50'),
(356, 'student', 'الطالب', 'student', '2020-08-25 16:56:54', '2020-10-12 12:32:50'),
(357, 'installment', 'نظام التقسيط', 'installment', '2020-08-25 16:56:54', '2020-10-12 12:32:50'),
(358, 'sub_installment', 'الاقساط الفرعيه', 'sub_installment', '2020-08-25 16:56:54', '2020-10-12 12:32:50'),
(359, 'main_installment', 'الاقساط الاساسيه', 'main_installment', '2020-08-25 16:56:54', '2020-10-12 12:32:50'),
(360, 'target', 'البيان', 'target', '2020-08-25 16:56:54', '2020-10-12 12:32:50'),
(361, 'add_installment', 'أضافة قسط', 'add installment', '2020-08-25 16:56:54', '2020-10-12 12:32:50'),
(362, 'madunia', 'مديونيه سابقه', 'madunia', '2020-08-25 16:56:54', '2020-10-12 12:32:50'),
(363, 'install', 'تقسيط', 'install', '2020-08-25 17:02:57', '2020-10-12 12:32:50'),
(364, 'pay', 'دفع', 'pay', '2020-08-25 17:02:57', '2020-10-12 12:32:50'),
(365, 'sum', 'المجموع', 'sum', '2020-08-25 17:03:06', '2020-10-12 12:32:50'),
(366, 'sum_of_values_must_be_equal_to_', 'مجموع المبلغ لا بد ان يساوى', 'sum of values must be equal to', '2020-08-25 17:03:25', '2020-10-12 12:32:50'),
(367, 'install_installment', 'تقسيط القسط رقم', 'install installment', '2020-08-25 17:03:32', '2020-10-12 12:32:50'),
(368, 'install_installment_', 'تقسيط القسط رقم', 'install installment', '2020-08-25 17:03:32', '2020-10-12 12:32:50'),
(369, 'edit_installment', 'تعديل القسط', 'edit installment', '2020-08-25 17:03:41', '2020-10-12 12:32:49'),
(370, 'priority_already_exist', 'الاولويه موجوده بالفعل', 'priority already exist', '2020-08-25 09:22:30', '2020-10-12 12:32:51'),
(371, 'remove_expense_maincategory', 'حذف مصروف اساسى', 'remove expense_maincategory', '2020-08-25 09:23:06', '2020-10-12 12:32:51'),
(372, 'balance_of_bank_not_enough', 'ميزانة البنك غير كافيه', 'balance of bank not enough', '2020-08-25 09:37:51', '2020-10-12 12:32:51'),
(373, 'sale_bill', 'sale bill', 'sale bill', '2020-08-25 10:22:44', '2020-10-12 12:32:51'),
(374, 'products', 'products', 'products', '2020-08-25 10:22:44', '2020-10-12 12:32:51'),
(375, 'customers', 'customers', 'customers', '2020-08-25 10:22:44', '2020-10-12 12:32:51'),
(376, 'add_product', 'add product', 'add product', '2020-08-25 10:22:45', '2020-10-12 12:32:51'),
(377, 'sales', 'sales', 'sales', '2020-08-25 10:22:45', '2020-10-12 12:32:51'),
(378, 'deposites', 'الايداعات', 'deposites', '2020-08-25 11:41:45', '2020-10-12 12:32:51'),
(379, 'add_deposite', NULL, 'add deposite', '2020-08-25 11:42:33', '2020-08-25 11:42:33'),
(380, 'filter', 'الفلتر', 'filter', '2020-08-25 11:48:40', '2020-10-12 12:32:51'),
(381, 'assign_expense_maincategorys', 'المصروفات الرئيسيه', 'assign expense_maincategorys', '2020-08-25 12:31:13', '2020-10-12 12:32:51'),
(382, 'select_expense_maincategorys', 'اختار المصروفات الرئيسيه', 'select expense_maincategorys', '2020-08-25 12:31:30', '2020-10-12 12:32:51'),
(383, 'paid_value', 'المبلغ المدفوع', 'paid value', '2020-08-25 13:00:48', '2020-10-12 12:32:47'),
(384, 'remain_value', 'المبلغ المتبقى', 'remain_value', '2020-08-25 13:00:48', '2020-10-12 12:32:51'),
(385, 'show_installment', 'عرض اقساط الطالب', 'show installment', '2020-08-25 13:01:11', '2020-10-12 12:32:51'),
(386, 'payment_details', 'تفصيل الدفع', 'payment details', '2020-08-25 13:14:47', '2020-10-12 12:32:51'),
(387, 'payment_details_of_installment', 'تفصيل دفع الاقساط', 'payment details of installment', '2020-08-25 13:14:47', '2020-10-12 12:32:51'),
(388, 'installment_value', 'قيمة القسط', 'installment_value', '2020-08-25 13:14:47', '2020-10-12 12:32:51'),
(389, 'payment_value', 'قيمة المبلغ', 'payment_value', '2020-08-25 13:14:47', '2020-10-12 12:32:51'),
(390, 'discount', 'الخصم', 'discount', '2020-08-25 13:14:47', '2020-10-12 12:32:51'),
(391, 'sub', NULL, 'sub', '2020-08-25 13:14:47', '2020-08-25 13:14:47'),
(392, 'pay_installment', 'دفع القسط', 'pay installment', '2020-08-25 13:15:06', '2020-10-12 12:32:50'),
(393, 'payment_type', 'نوع الدفع', 'payment_type', '2020-08-25 13:15:06', '2020-10-12 12:32:50'),
(394, 'for_store', 'الدفع لخزنه', 'for_store', '2020-08-25 13:15:06', '2020-10-12 12:32:50'),
(395, 'for_check', 'الدفع عن طريق شيك', 'for_check', '2020-08-25 13:15:06', '2020-10-12 12:32:50'),
(396, 'check_number', 'رقم الشيك', 'check_number', '2020-08-25 13:15:06', '2020-10-12 12:32:51'),
(397, 'bank_name', 'رقم البنك', 'bank_name', '2020-08-25 13:15:06', '2020-10-12 12:32:51'),
(398, 'branch', 'فرع البنك', 'branch', '2020-08-25 13:15:06', '2020-10-12 12:32:51'),
(399, 'pay_installment_', 'تقسيط', 'pay installment', '2020-08-25 13:26:11', '2020-10-12 12:32:50'),
(400, 'plans', 'الخطط الدراسيه', 'plans', '2020-08-25 15:49:19', '2020-10-12 12:32:50'),
(401, 'expense_maincategory', 'قائمه المصروفات الرئيسيه', 'expense_maincategory', '2020-08-25 15:49:19', '2020-10-12 12:32:50'),
(402, 'add_plan', 'اضافه خطه', 'add plan', '2020-08-25 15:49:19', '2020-10-12 12:32:50'),
(403, 'case_constaints', 'حالات القيد', 'case_constaints', '2020-08-25 15:51:36', '2020-10-12 12:32:50'),
(404, 'select_case_constaints', 'اختر حاله القيد', 'select_case_constaints', '2020-08-25 15:51:36', '2020-10-12 12:32:50'),
(405, 'expense_maincategories', 'القائمه الرئيسيه للمصروفات', 'expense_maincategories', '2020-08-25 16:25:03', '2020-10-12 12:32:50'),
(406, 'sum_of_values_must_equal_', 'مجموع المبلغ لابد ان يساوى', 'sum of values must equal', '2020-08-25 17:06:17', '2020-10-12 12:32:49'),
(407, 'details', 'التفاصيل', 'details', '2020-08-25 17:39:44', '2020-10-12 12:32:49'),
(408, 'select_type', 'اختر النوع', 'select type', '2020-08-25 17:43:20', '2020-10-12 12:32:49'),
(409, 'rewords', 'المكافات', 'rewords', '2020-08-26 09:46:23', '2020-10-12 12:32:49'),
(410, 'add_reword', 'اضافه مكافاه', 'add reword', '2020-08-26 09:48:25', '2020-10-12 12:32:49'),
(411, 'users_and_roles', 'المستخدمين والصلاحيات', 'users and roles', '2020-08-29 09:49:24', '2020-10-12 12:32:49'),
(412, 'other_settings', 'اعدادات اخرى', 'other settings', '2020-08-29 09:49:24', '2020-10-12 12:32:49'),
(413, 'case-constraint', 'حالات لقيد', 'case-constraint', '2020-08-29 09:49:24', '2020-10-12 12:32:49'),
(414, 'constraint-status', 'نوع القيد', 'constraint-status', '2020-08-29 10:07:52', '2020-10-12 12:32:49'),
(415, 'fines', 'الغرامات', 'fines', '2020-08-29 10:07:52', '2020-10-12 12:32:49'),
(416, 'add_fine', 'اضافه غرامه', 'add fine', '2020-08-29 10:08:14', '2020-10-12 12:32:49'),
(417, 'edit_fine', 'تعديل الغرامه', 'edit fine', '2020-08-29 10:10:33', '2020-10-12 12:32:49'),
(418, 'payments', 'المدفوعات', 'payments', '2020-08-29 11:07:17', '2020-10-12 12:32:49'),
(419, 'student_id', 'الطالب', 'student_id', '2020-08-29 11:07:18', '2020-10-12 12:32:49'),
(420, 'add_payment', 'اضافه عمليه دفع', 'add payment', '2020-08-29 11:07:44', '2020-10-12 12:32:49'),
(421, 'select_payment_type', 'اختر نوع الدفع', 'select payment_type', '2020-08-29 11:08:25', '2020-10-12 12:32:49'),
(422, 'reword_id', 'رقم المكافاه', 'reword_id', '2020-08-29 11:24:55', '2020-10-12 12:32:49'),
(423, 'fine', 'غرامه', 'fine', '2020-08-29 11:39:13', '2020-10-12 12:32:49'),
(424, 'add_expense_subcategory', 'اضافه قائمه مصروفات فرعيه', 'add expense_subcategory', '2020-08-29 12:42:43', '2020-10-12 12:32:49'),
(425, 'tree', 'شجره المصروفات', 'tree', '2020-08-29 14:22:40', '2020-10-12 12:32:49'),
(426, 'dailys', 'اليوميات', 'dailys', '2020-08-29 15:41:49', '2020-10-12 12:32:48'),
(427, 'add_daily', 'اضافه يوميه', 'add daily', '2020-08-29 15:41:49', '2020-10-12 12:32:48'),
(428, 'account_setting', 'اعدادات الخسابات', 'account setting', '2020-08-29 16:21:08', '2020-10-12 12:32:48'),
(429, 'trees', 'شجره المصروفات', 'trees', '2020-08-29 16:21:08', '2020-10-12 12:32:48'),
(430, 'deposite_details', 'تفاصيل الايداع', 'deposite details', '2020-08-29 16:33:49', '2020-10-12 12:32:48'),
(431, 'data_created_successfully', 'تمت الاضافه بنجاح', 'data created successfully', '2020-09-07 12:47:25', '2020-10-12 12:32:48'),
(432, 'all', 'الكل', 'all', '2020-09-08 09:15:54', '2020-10-12 12:32:48'),
(433, 'completed_files', 'ملفات مكتمله', 'completed files', '2020-09-08 09:15:54', '2020-10-12 12:32:48'),
(434, 'completed', 'مكتمل', 'completed', '2020-09-08 09:15:54', '2020-10-12 12:32:48'),
(435, 'not_completed', 'غير مكتمل', 'not completed', '2020-09-08 09:15:54', '2020-10-12 12:32:48'),
(436, 'writen_by', 'تم الاضافه بواسطه', 'writen by', '2020-09-08 09:15:54', '2020-10-12 12:32:48'),
(437, 'done_in', 'تم الاضافه بتاريخ', 'done in', '2020-09-08 09:15:54', '2020-10-12 12:32:48'),
(438, 'login_first', 'سجل اولا', 'login first', '2020-09-08 09:23:02', '2020-10-12 12:32:48'),
(439, 'sum_of_installments_must_equal_', 'مجموع الاقساط لابد ان يساوى', 'sum of installments must equal', '2020-09-08 10:09:57', '2020-10-12 12:32:48'),
(440, 'cant_install_balance_0', 'لا يمكن تقسيط مبلغ 0', 'cant install balance 0', '2020-09-08 10:13:00', '2020-10-12 12:32:48'),
(441, 'install_the_balance_of_student', 'تقسيط رسوم الطالب', 'install the balance of student', '2020-09-08 10:27:11', '2020-10-12 12:32:48'),
(442, 'done', 'تم', 'done', '2020-09-08 10:30:18', '2020-10-12 12:32:48'),
(443, 'fill_all_required_data', 'قم بملئ جميع الحقول المطلوبه', 'fill all required data', '2020-09-08 12:23:22', '2020-10-12 12:32:48'),
(444, 'add_service_', 'اضافة خدمه', 'add service', '2020-09-08 12:26:20', '2020-10-12 12:32:47'),
(445, 'name_already_exist', 'الاسم موجود بالفعل', 'name already exist', '2020-09-08 12:27:21', '2020-10-12 12:32:47'),
(446, 'edit_service_', 'تعديل الخدمه', 'edit service', '2020-09-08 12:32:31', '2020-10-12 12:32:47'),
(447, 'add_academic_year_expense_', 'اضافة مصروف سنه دراسيه', 'add academic year expense', '2020-09-08 12:51:54', '2020-10-12 12:32:47'),
(448, 'edit_academic_year_expense_', 'تعديل صروف سنه دراسيه', 'edit academic year expense', '2020-09-08 12:58:38', '2020-10-12 12:32:47'),
(449, 'student_{name}_pay_{value}_in_store', 'الطالب {name} دفع {value} فى الخزينه', 'student {name} pay {value} in store', '2020-09-17 12:05:28', '2020-10-12 12:32:47'),
(450, 'remove_service_', 'حذف خدمه', 'remove service', '2020-09-18 14:54:54', '2020-10-12 12:32:47'),
(451, 'removed', 'محذوف', 'removed', '2020-08-08 11:36:07', '2020-10-12 12:33:08'),
(452, 'remove_academic_year_expense_', 'حذف مصروف دراسى', 'remove academic year expense', '2020-09-19 14:13:39', '2020-10-12 12:32:47'),
(453, 'get money from safe', 'تحصيل الرسوم من الخزينه    ', 'get money from safe', '2020-09-20 12:12:35', '2020-09-20 23:57:09'),
(454, 'student payments', 'مدفوعات الطالب    ', 'student payments', '2020-09-20 12:12:35', '2020-09-20 23:57:09'),
(455, 'student services', 'متنوعات الطالب    ', 'student services', '2020-09-20 12:12:35', '2020-09-20 23:57:09'),
(456, 'student installments', 'اقساط الطالب    ', 'student installments', '2020-09-20 12:12:35', '2020-09-20 23:57:09'),
(459, 'write note', 'اكتب ملاحظه    ', 'write note', '2020-09-20 12:14:45', '2020-09-20 23:57:09'),
(460, 'student info', 'معلومات الطالب    ', 'student info', '2020-09-20 12:14:46', '2020-09-20 23:57:09'),
(461, 'student name', 'اسم الطالب    ', 'student name', '2020-09-20 12:14:46', '2020-09-20 23:57:09'),
(462, 'student code', 'كود الطالب    ', 'student code', '2020-09-20 12:14:46', '2020-09-20 23:57:09'),
(463, 'national id', 'الرقم القومى    ', 'national id', '2020-09-20 12:14:46', '2020-09-20 23:57:09'),
(464, 'gpa', 'المعدل التراكمى', 'gpa', '2020-09-20 12:14:46', '2020-10-12 12:32:47'),
(465, 'department', 'القسم', 'department', '2020-09-20 12:14:46', '2020-10-12 12:32:47'),
(466, 'case constraint', 'نوع القيد    ', 'case constraint', '2020-09-20 12:14:46', '2020-09-20 23:57:09'),
(467, 'constraint status', 'حالة القيد    ', 'constraint status', '2020-09-20 12:14:46', '2020-09-20 23:57:09'),
(468, 'payment info', 'معلومات الدفع    ', 'payment info', '2020-09-20 12:14:46', '2020-09-20 23:57:10'),
(469, 'required value', 'المبلغ المطلوب    ', 'required value', '2020-09-20 12:14:46', '2020-09-20 23:57:10'),
(470, 'old balance', 'رسوم سابقه    ', 'old balance', '2020-09-20 12:14:46', '2020-09-20 23:57:10'),
(471, 'current balance', 'رسوم حاليه    ', 'current balance', '2020-09-20 12:14:46', '2020-09-20 23:57:10'),
(472, 'paid value', 'المبلغ المدفوع    ', 'paid value', '2020-09-20 12:14:46', '2020-09-20 23:57:10'),
(473, 'save & print', 'حفظ وطباعه    ', 'save & print', '2020-09-20 12:14:46', '2020-09-20 23:57:10'),
(474, 'services', 'الخدمات', 'services', '2020-09-20 12:14:47', '2020-10-12 12:32:46'),
(475, 'exit', 'خروج', 'exit', '2020-09-20 12:14:47', '2020-10-12 12:32:46'),
(476, '#', '#', '#', '2020-09-20 12:14:47', '2020-10-12 12:32:46');
INSERT INTO `translations` (`id`, `key`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(477, 'expenses_type', 'نوع المصروف', 'expenses_type', '2020-09-20 12:14:47', '2020-10-12 12:32:47'),
(478, 'total', 'الاجمالى', 'total', '2020-09-20 12:14:47', '2020-10-12 12:32:47'),
(479, 'additional_value', 'مبلغ اضافى', 'additional_value', '2020-09-20 12:14:47', '2020-10-12 12:32:47'),
(480, 'paids', 'المدفوع', 'paids', '2020-09-20 12:14:47', '2020-10-12 12:32:47'),
(481, 'student available services', 'خدمات الطالب المتاحه    ', 'student available services', '2020-09-20 12:14:47', '2020-09-20 23:57:11'),
(482, 'account', 'الحسابات', 'account', '2020-09-20 12:14:47', '2020-10-12 12:32:47'),
(483, 'except_level', 'ماعد المستوى', 'except_level', '2020-09-20 12:14:47', '2020-10-12 12:32:47'),
(484, 'division', 'الشعبه', 'division', '2020-09-20 12:14:48', '2020-10-12 12:32:46'),
(485, 'repeat', 'تكرار', 'repeat', '2020-09-20 12:14:48', '2020-10-12 12:32:46'),
(486, 'installment_percent', 'نسبة القسط', 'installment_percent', '2020-09-20 12:14:48', '2020-10-12 12:32:46'),
(487, 'from_installment', 'من قسط رقم', 'from_installment', '2020-09-20 12:14:48', '2020-10-12 12:32:46'),
(488, 'wz', 'وزارى', 'wz', '2020-09-20 12:14:48', '2020-10-12 12:32:46'),
(489, 'in', 'المعهد', 'in', '2020-09-20 12:14:48', '2020-10-12 12:32:46'),
(490, 'remove services', 'remove services    ', 'remove services', '2020-09-20 12:14:48', '2020-09-20 12:14:48'),
(491, 'add service', 'add service    ', 'add service', '2020-09-20 12:14:48', '2020-09-20 12:14:48'),
(492, 'copying', 'نسخ', 'copying', '2020-09-20 12:14:48', '2020-10-12 12:32:46'),
(493, 'update service', 'update service    ', 'update service', '2020-09-20 12:14:48', '2020-09-20 12:14:48'),
(494, 'academic_year_expenses', 'المصاريف الدراسيه', 'academic_year_expenses', '2020-09-20 12:14:49', '2020-10-12 12:32:46'),
(495, 'academic_years_expenses', 'المصاريف الدراسيه', 'academic_years_expenses', '2020-09-20 12:14:49', '2020-10-12 12:32:46'),
(496, 'priorty', 'الاولويه', 'priorty', '2020-09-20 12:14:49', '2020-10-12 12:32:46'),
(497, 'term', 'الترم', 'term', '2020-09-20 12:14:49', '2020-10-12 12:32:46'),
(498, 'are your sure', 'are your sure    ', 'are your sure', '2020-09-20 12:14:49', '2020-09-20 12:14:49'),
(499, 'name_en', 'الكلمة بالانجليزيه', 'name_en', '2020-09-20 12:14:50', '2020-10-12 12:32:46'),
(500, 'name_ar', 'الكلمة بالعربيه', 'name_ar', '2020-09-20 12:14:50', '2020-10-12 12:32:46'),
(501, 'save changes', 'حفظ التغيرات', 'save changes', '2020-09-20 12:14:50', '2020-09-20 12:14:50'),
(502, 'percentage', 'النسبه', 'percentage', '2020-09-20 12:14:50', '2020-10-12 12:32:46'),
(503, 'level name', 'level name    ', 'level name', '2020-09-20 12:14:50', '2020-09-20 12:14:50'),
(504, 'get_money_from_safe', 'تحصيل الرسوم من الخزينه', 'get money from safe', '2020-09-21 00:02:30', '2020-10-12 12:32:45'),
(505, 'student_payments', 'مدفوعات الطالب', 'student payments', '2020-09-21 00:02:30', '2020-10-12 12:32:45'),
(506, 'student_services', 'متنوعات الطالب', 'student services', '2020-09-21 00:02:30', '2020-10-12 12:32:45'),
(507, 'student_installments', 'اقساط الطالب', 'student installments', '2020-09-21 00:02:30', '2020-10-12 12:32:46'),
(508, 'write_note', 'اكتب ملاحظه', 'write note', '2020-09-21 00:02:30', '2020-10-12 12:32:46'),
(509, 'student_info', 'معلومات الطالب', 'student info', '2020-09-21 00:02:30', '2020-10-12 12:32:46'),
(510, 'case_constraint', 'نوع القيد', 'case constraint', '2020-09-21 00:02:30', '2020-10-12 12:32:46'),
(511, 'constraint_status', 'حالة القيد', 'constraint status', '2020-09-21 00:02:30', '2020-10-12 12:32:46'),
(512, 'payment_info', 'معلومات الدفع', 'payment info', '2020-09-21 00:02:30', '2020-10-12 12:32:45'),
(513, 'required_value', 'المبلغ المطلوب', 'required value', '2020-09-21 00:02:30', '2020-10-12 12:32:45'),
(514, 'old_balance', 'رسوم سابقه', 'old balance', '2020-09-21 00:02:30', '2020-10-12 12:32:45'),
(515, 'current_balance', 'رسوم حاليه', 'current balance', '2020-09-21 00:02:30', '2020-10-12 12:32:45'),
(516, 'save_&_print', 'حفظ وطباعه', 'save & print', '2020-09-21 00:02:30', '2020-10-12 12:32:45'),
(517, 'student_available_services', 'خدمات الطالب المتاحه', 'student available services', '2020-09-21 00:02:30', '2020-10-12 12:32:45'),
(518, 'remove_services', 'remove services', 'remove services', '2020-09-21 00:02:31', '2020-10-12 12:32:45'),
(519, 'add_service', 'add service', 'add service', '2020-09-21 00:02:31', '2020-10-12 12:32:45'),
(520, 'update_service', 'update service', 'update service', '2020-09-21 00:02:31', '2020-10-12 12:32:45'),
(521, 'are_your_sure', 'are your sure', 'are your sure', '2020-09-21 00:02:31', '2020-10-12 12:32:45'),
(522, 'email_or_password_error', 'كلمة المرور او الاميل خطا', 'email or password error', '2020-09-21 02:01:50', '2020-10-12 12:32:45'),
(523, 'write_a_notes_for_student', 'كتابة ملاحظه بشان الطالب', 'write_a_notes_for_student', '2020-09-21 15:55:18', '2020-10-12 12:32:45'),
(524, 'send_notes', 'ارسل الملاحظه', 'send_notes', '2020-09-21 15:55:18', '2020-10-12 12:32:45'),
(525, 'write_some_notes', 'اكتب بعض الملاحظات', 'write_some_notes', '2020-09-21 15:55:18', '2020-10-12 12:32:45'),
(526, 'please_enter_all_data', 'من فضلك قم بكتابة كل البيانات المطلوبه', 'please_enter_all_data', '2020-09-21 15:55:18', '2020-10-12 12:32:45'),
(527, 'sign_in', 'تسجيل الدخول', 'sign_in', '2020-09-21 15:55:19', '2020-10-12 12:32:45'),
(528, 'sign_out', 'تسجيل الخروج', 'sign_out', '2020-09-21 15:55:22', '2020-10-12 12:32:44'),
(529, 'adminision_settings', 'اعدادت التقديم', 'adminision_settings', '2020-09-21 15:55:22', '2020-10-12 12:32:44'),
(530, 'add_required_document', 'اضافة ملف مطلوب', 'add_required_document', '2020-09-21 15:55:22', '2020-10-12 12:32:45'),
(531, 'remove_required_documents', 'حذف ملف مطلوب', 'remove_required_documents', '2020-09-21 15:55:23', '2020-10-12 12:32:44'),
(532, 'applications_section', 'ملفات التقديم', 'applications_section', '2020-09-21 15:55:23', '2020-10-12 12:32:44'),
(533, 'create_application', 'انشاء ملف تقديم', 'create_application', '2020-09-21 15:55:23', '2020-10-12 12:32:44'),
(534, 'student_basic_info', 'معلومات الطالب الاساسيه', 'student_basic_info', '2020-09-21 15:55:23', '2020-10-12 12:32:44'),
(535, 'registeration_date', 'تاريخ التسجيل', 'registeration_date', '2020-09-21 15:55:23', '2020-10-12 12:32:44'),
(536, 'phone_1', 'رقم الهاتف', 'phone_1', '2020-09-21 15:55:23', '2020-10-12 12:32:44'),
(537, 'registration_method', 'طريقة التقديم', 'registration_method', '2020-09-21 15:55:23', '2020-10-12 12:32:44'),
(538, 'qualification_set_number', 'رقم جلوس المؤهل', 'qualification_set_number', '2020-09-21 15:55:23', '2020-10-12 12:32:44'),
(539, 'coordination_password', 'كلمة سر التنسيق', 'coordination_password', '2020-09-21 15:55:23', '2020-10-12 12:32:44'),
(540, 'gender', 'النوع', 'gender', '2020-09-21 15:55:23', '2020-10-12 12:32:44'),
(541, 'additional_info', 'المعلومات الاضافيه', 'additional_info', '2020-09-21 15:55:23', '2020-10-12 12:32:44'),
(542, 'language_1', 'لغه اجنبيه 1', 'language_1', '2020-09-21 15:55:23', '2020-10-12 12:32:44'),
(543, 'language_2', 'لغه اجنبيه 2', 'language_2', '2020-09-21 15:55:24', '2020-10-12 12:32:43'),
(544, 'birth_address', 'محل الميلاد', 'birth_address', '2020-09-21 15:55:24', '2020-10-12 12:32:43'),
(545, 'military_info', 'معلومات التجنيد', 'military_info', '2020-09-21 15:55:24', '2020-10-12 12:32:43'),
(546, 'parent_info', 'معلومات ولى الامر', 'parent_info', '2020-09-21 15:55:24', '2020-10-12 12:32:43'),
(547, 'send_application', 'ارسل الملف', 'send_application', '2020-09-21 15:55:24', '2020-10-12 12:32:43'),
(548, 'required_documents_info', 'معلومات الاوراق المطلوبه', 'required_documents_info', '2020-09-21 15:55:24', '2020-10-12 12:32:44'),
(549, 'fill_all_requird_data', 'قم بكتابة جميع الحقول المطلوبه', 'fill_all_requird_data', '2020-09-21 15:55:24', '2020-10-12 12:32:44'),
(550, 'grade_must_be_equal_or_bigger_than_', 'درجد الطالب لابد ان تكون اكبر من او تساوى', 'grade_must_be_equal_or_bigger_than_', '2020-09-21 15:55:24', '2020-10-12 12:32:44'),
(551, 'student_enrolled_in_level', 'الطالب تحول الى المستوى', 'student enrolled in level', '2020-09-21 20:01:29', '2020-10-12 12:32:43'),
(552, 'all_info', 'كل المعلومات', 'all_info', '2020-09-22 09:03:37', '2020-10-12 12:32:43'),
(553, 'create_student', 'انشاء طالب', 'create_student', '2020-09-22 09:03:38', '2020-10-12 12:32:43'),
(554, 'update_application', 'تعديل ملف تقديم', 'update application', '2020-09-22 11:58:39', '2020-10-12 12:32:43'),
(555, 'show_application', 'عرض ملف التقديم', 'show_application', '2020-09-22 23:12:20', '2020-10-12 12:32:43'),
(556, 'enroll_student', 'تحويل الى طالب', 'enroll_student', '2020-09-22 23:12:20', '2020-10-12 12:32:43'),
(557, 'application_enroll_to_student', 'التحويل من متقدم الى مقيد', 'application enroll to student', '2020-09-22 23:36:18', '2020-10-12 12:32:43'),
(558, 'new_student', 'طالب جديد', 'new Student', '2020-09-23 00:46:13', '2020-10-12 12:32:43'),
(559, 'add_store_', 'اضافة خزينه', 'add Store', '2020-09-27 03:31:21', '2020-10-12 12:32:43'),
(560, 'remove_store_', 'حذف الخزينه', 'remove Store', '2020-09-27 03:35:33', '2020-10-12 12:32:43'),
(561, 'edit_store_', 'تعديل الخزينه', 'edit Store', '2020-09-27 03:53:11', '2020-10-12 12:32:43'),
(562, 'update_profile_info', 'تعديل معلومات الملف الشخصى', 'update profile info', '2020-09-27 15:26:35', '2020-10-12 12:32:43'),
(563, 'update_old_balance_store_settings_', 'تعديل خزينة الرسوم السابقه', 'update old balance store settings', '2020-10-05 06:19:04', '2020-10-12 12:32:43'),
(564, 'the_service_is_only_available_for_division_', 'الخدمه متاحه فقط للشعبه', 'The service is only available for division', '2020-10-07 05:49:32', '2020-10-12 12:32:43'),
(565, 'the_student_was_given_a_previous_fee', 'الطالب مدين برسوم سابقه', 'The student was given a previous fee', '2020-10-07 06:13:54', '2020-10-12 12:32:43'),
(566, 'the_student_got_the_service_before', 'الطالب حصل على  الخدمه من قبل', 'The student got the service before', '2020-10-07 06:13:54', '2020-10-12 12:32:43'),
(567, 'the_student_did_not_pay_the_required_percentage_of_the_installment_number_', 'الطالب لم يدفع النسبه المطلوبه من القسط رقم', 'The student did not pay the required percentage of the installment number', '2020-10-07 06:13:55', '2020-10-12 12:32:43'),
(568, 'the_service_is_not_available_for_the_student_level', 'الخدمه غير متاحه لمستوى الطالب', 'The service is not available for the student level', '2020-10-07 06:13:55', '2020-10-12 12:32:43'),
(569, 'the_service_is_not_available_for_an_application', 'الخدمه غير متاحه لطالب متقدم', 'The service is not available for an application', '2020-10-07 07:26:20', '2020-10-12 12:32:43'),
(570, 'student_{name}_refund_{value}_in_store', 'الطالب {name} رد رسوم بقيمة {value} فى الخزينه', 'student {name} refund {value} in store', '2020-10-07 09:27:15', '2020-10-12 12:32:43'),
(571, 'payment_value_removed_from_store_', 'مبلغ الايصال طرح من الخزينه', 'payment value removed from store', '2020-10-07 10:26:17', '2020-10-12 12:32:42'),
(572, 'edit_payment_info_of_number_', 'تعديل بيانات الايصال رقم', 'edit payment info of number', '2020-10-07 11:10:09', '2020-10-12 12:32:42'),
(573, 'you_have_{n}_notifications', 'لديك {n} من الاشعارات', 'you_have_{n}_notifications', '2020-10-10 09:58:53', '2020-10-12 12:32:42'),
(574, 'view_all', 'عرض الكل', 'view_all', '2020-10-10 09:58:53', '2020-10-12 12:32:42'),
(575, 'search_with_student_name_code_national_id', 'ابحث باسم الطالب او الكود او الرقم القومى', 'search_with_student_name_code_national_id', '2020-10-10 09:58:54', '2020-10-12 12:32:42'),
(576, 'pay_refund', 'رد الرسوم', 'pay_refund', '2020-10-10 09:58:54', '2020-10-12 12:32:42'),
(577, 'number', 'العدد', 'number', '2020-10-10 09:58:54', '2020-10-12 12:32:42'),
(578, 'valid', 'الاتاحه', 'valid', '2020-10-10 09:58:54', '2020-10-12 12:32:42'),
(579, 'registeration_status', 'حالات التسجيل', 'registeration_status', '2020-10-10 09:58:54', '2020-10-12 12:32:42'),
(580, 'remove', 'حذف', 'remove', '2020-10-10 09:58:54', '2020-10-12 12:32:42'),
(581, 'old_balance_store', 'خزينة الرسوم السابقه', 'old_balance_store', '2020-10-10 09:58:55', '2020-10-12 12:32:42'),
(582, 'المصاريف_الدراسيه_', 'المصاريف_الدراسيه_', 'المصاريف_الدراسيه_', '2020-10-10 09:58:55', '2020-10-12 12:32:42'),
(583, 'general_settings', 'الاعدادات العامه', 'general_settings', '2020-10-10 09:58:55', '2020-10-12 12:32:42'),
(584, 'is_refund', 'مسموح برد الرسوم', 'is_refund', '2020-10-10 09:58:55', '2020-10-12 12:32:42'),
(585, 'select_level', 'اختر المستوى', 'select_level', '2020-10-10 09:58:55', '2020-10-12 12:32:42'),
(586, 'select_division', 'اختر الشعبه', 'select_division', '2020-10-10 09:58:55', '2020-10-12 12:32:42'),
(587, 'المصاريف_الدراسيه', 'المصاريف_الدراسيه', 'المصاريف_الدراسيه', '2020-10-10 10:15:23', '2020-10-12 12:32:42'),
(588, 'payment_refunded', 'رسوم مردوده', 'payment_refunded', '2020-10-10 10:15:23', '2020-10-12 12:32:42'),
(589, 'student_payments_report', 'تقرير مدفوعات الطلاب', 'student_payments_report', '2020-10-10 13:42:32', '2020-10-12 12:32:42'),
(590, 'from_date', 'من تاريخ', 'from_date', '2020-10-10 13:42:33', '2020-10-12 12:32:41'),
(591, 'to_date', 'الى تاريخ', 'to_date', '2020-10-10 13:42:33', '2020-10-12 12:32:41'),
(592, 'academic_year_expense', 'المصاريف الدارسيه', 'academic_year_expense', '2020-10-10 13:42:33', '2020-10-12 12:32:41'),
(593, 'payment_name', 'البيان', 'payment_name', '2020-10-10 13:42:33', '2020-10-12 12:32:42'),
(594, 'payment_type_academic_year_expense', 'رسوم دراسيه', 'payment_type_academic_year_expense', '2020-10-10 13:42:34', '2020-10-12 12:32:41'),
(595, 'payment_type_installment', 'قسط', 'payment_type_installment', '2020-10-10 13:42:34', '2020-10-12 12:32:41'),
(596, 'payment_type_old_academic_year_expense', 'رسوم سابقه', 'payment_type_old_academic_year_expense', '2020-10-10 13:42:35', '2020-10-12 12:32:41'),
(597, 'payment_type_service', 'خدمات', 'payment_type_service', '2020-10-10 13:42:35', '2020-10-12 12:32:41'),
(598, 'payment_type_refund', 'رد رسوم', 'payment_type_refund', '2020-10-10 13:42:35', '2020-10-12 12:32:41'),
(599, 'payments_incomes', 'ايرادات', 'payments_incomes', '2020-10-10 13:42:36', '2020-10-12 12:32:41'),
(600, 'payments_returns', 'مرتجعات', 'payments_returns', '2020-10-10 13:42:36', '2020-10-12 12:32:41'),
(601, 'students_payments_report', 'تقرير مدفوعات الطلاب', 'students_payments_report', '2020-10-10 13:42:37', '2020-10-12 12:32:41'),
(602, 'wz_value', 'وزارى', 'wz_value', '2020-10-11 11:12:24', '2020-10-12 12:32:41'),
(603, 'analysis', 'اجماليات', 'analysis', '2020-10-11 11:12:24', '2020-10-12 12:32:41'),
(604, 'student_search', 'بحث بالطالب', 'student_search', '2020-10-11 11:12:24', '2020-10-12 12:32:41'),
(605, 'update', 'تحديث', 'update', '2020-10-11 11:12:25', '2020-10-12 12:32:41'),
(606, 'show_student', 'عرض الطالب', 'show_student', '2020-10-12 11:04:22', '2020-10-12 12:32:40'),
(607, 'edit_user', 'تعديل المستخدم', 'edit_user', '2020-10-12 11:04:22', '2020-10-12 12:32:40'),
(608, 'add_user', 'اضافة مستخدم', 'add_user', '2020-10-12 11:04:22', '2020-10-12 12:32:41'),
(609, 'update_store', 'تحديث الخزينه', 'update_store', '2020-10-12 11:04:23', '2020-10-12 12:32:40'),
(610, 'old_balance_notes', 'ملاحظات الرسوم السابقه', 'old_balance_notes', '2020-10-12 11:04:23', '2020-10-12 12:32:40'),
(611, 'total_of_selected_services', 'اجمالى مبلغ الخدمات', 'total_of_selected_services', '2020-10-12 11:04:23', '2020-10-12 12:32:40'),
(612, 'years_of_adminision', 'سنوات التقديم', 'years_of_adminision', '2020-10-12 11:04:24', '2020-10-12 12:32:40'),
(613, 'application_required', 'متطلبات التقديم', 'application_required', '2020-10-12 11:04:24', '2020-10-12 12:32:40'),
(614, 'current_term', 'الترم الحالى', 'current_term', '2020-10-12 11:04:24', '2020-10-12 12:32:40'),
(615, 'different_year_of_qualification_must_be_less_of_equal_than_3', 'فرق سنوات التقديم لا يمكن ان يزيد عن 3 سنين', 'different_year_of_qualification_must_be_less_of_equal_than_3', '2020-10-12 11:04:24', '2020-10-12 12:32:40'),
(616, 'edit_role', 'تعديل الصلاحيه', 'edit_role', '2020-10-14 04:43:08', '2020-10-14 04:50:45'),
(617, 'add_role', 'اضافة صلاحيه', 'add_role', '2020-10-14 04:43:08', '2020-10-14 04:50:45'),
(618, 'show_in_store', 'عرض فى الخزينه', 'show_in_store', '2020-10-14 04:43:08', '2020-10-14 04:50:45'),
(619, 'active', 'التفعيل', 'active', '2020-10-14 04:43:09', '2020-10-14 04:48:33'),
(620, 'is_in_store', 'عرض فى الخزينه', 'is_in_store', '2020-10-14 04:43:09', '2020-10-14 04:50:44'),
(621, 'card_export_unit', 'وحدة اصدار الكارنيهات', 'card_export_unit', '2020-11-10 08:47:23', '2020-11-10 08:54:47'),
(622, 'card_export_report', 'تقرير اصدار الكارنيهات', 'card_export_report', '2020-11-10 08:47:23', '2020-11-10 08:54:47'),
(623, 'academic', 'الارشاد الاكاديمى', 'academic', '2020-11-10 08:47:23', '2020-11-10 08:54:47'),
(624, 'academic_plan', 'الخطة الدراسية', 'academic_plan', '2020-11-10 08:47:23', '2020-11-10 08:54:47'),
(625, 'academic_setting', 'أعدادات الارشاد الاكاديمى', 'academic_setting', '2020-11-10 08:47:23', '2020-11-10 08:54:47'),
(626, 'open_courses', 'المقررات المفتوحة', 'open_courses', '2020-11-10 08:47:23', '2020-11-10 08:54:47'),
(627, 'register_academic_plan', 'تسجيل الخطة الدراسية', 'register_academic_plan', '2020-11-10 08:47:24', '2020-11-10 08:54:45'),
(628, 'courses', 'المقررات', 'courses', '2020-11-10 08:47:24', '2020-11-10 08:54:45'),
(629, 'create_course', 'انشاء مقرر', 'create_course', '2020-11-10 08:47:24', '2020-11-10 08:54:45'),
(630, 'create_course_category', 'انشاء نوع مقرر', 'create_course_category', '2020-11-10 08:47:24', '2020-11-10 08:54:45'),
(631, 'create_degree_map', 'انشاء تقدير', 'create_degree_map', '2020-11-10 08:47:24', '2020-11-10 08:54:45'),
(632, 'course_category', 'نوع مقرر', 'course_category', '2020-11-10 08:47:24', '2020-11-10 08:54:45'),
(633, 'total_degree', 'اجمالى الساعات', 'total_degree', '2020-11-10 08:47:24', '2020-11-10 08:54:46'),
(634, 'required_degree', 'الساعات المطلوبة', 'required_degree', '2020-11-10 08:47:24', '2020-11-10 08:54:46'),
(635, 'degree_map', 'التقديرات', 'degree_map', '2020-11-10 08:47:24', '2020-11-10 08:54:46'),
(636, 'from', 'من', 'from', '2020-11-10 08:47:24', '2020-11-10 08:54:46'),
(637, 'to', 'الى', 'to', '2020-11-10 08:47:24', '2020-11-10 08:54:46'),
(638, 'create_new_course', 'انشاء مقرر', 'create_new_course', '2020-11-10 08:47:24', '2020-11-10 08:54:46'),
(639, 'credit_hour', 'الساعات المعتمدة', 'credit_hour', '2020-11-10 08:47:24', '2020-11-10 08:54:46'),
(640, 'year_work_degree', 'اعمال السنة', 'year_work_degree', '2020-11-10 08:47:24', '2020-11-10 08:54:46'),
(641, 'practical_degree', 'العملى', 'practical_degree', '2020-11-10 08:47:24', '2020-11-10 08:54:46'),
(642, 'academic_degree', 'التحريرى', 'academic_degree', '2020-11-10 08:47:24', '2020-11-10 08:54:46'),
(643, 'small_degree', 'نهاية صغرى', 'small_degree', '2020-11-10 08:47:24', '2020-11-10 08:54:46'),
(644, 'large_degree', 'نهاية عظمى', 'large_degree', '2020-11-10 08:47:25', '2020-11-10 08:54:44'),
(645, 'has_project', 'مشروع', 'has_project', '2020-11-10 08:47:25', '2020-11-10 08:54:44'),
(646, 'is_required', 'مطلوبة', 'is_required', '2020-11-10 08:47:25', '2020-11-10 08:54:44'),
(647, 'book_price', 'سعر الكتاب', 'book_price', '2020-11-10 08:47:25', '2020-11-10 08:54:44'),
(648, 'failed_degree', 'درجة الرسوب', 'failed_degree', '2020-11-10 08:47:25', '2020-11-10 08:54:44'),
(649, 'prequsites', 'المتطلب السابق', 'prequsites', '2020-11-10 08:47:25', '2020-11-10 08:54:44'),
(650, 'create_new_degree_map', 'أنشاء تقدير جديد', 'create_new_degree_map', '2020-11-10 08:47:25', '2020-11-10 08:54:44'),
(651, 'percent_from', 'من نسبة', 'percent_from', '2020-11-10 08:47:25', '2020-11-10 08:54:44'),
(652, 'percent_to', 'الى نسبة', 'percent_to', '2020-11-10 08:47:25', '2020-11-10 08:54:44'),
(653, 'create_new_course_category', 'أنشاء نوع مقرر', 'create_new_course_category', '2020-11-10 08:47:26', '2020-11-10 08:54:43'),
(654, 'total_hours', 'اجمالى الساعات', 'total_hours', '2020-11-10 08:47:26', '2020-11-10 08:54:44'),
(655, 'required_hours', 'الساعات المطلوبة', 'required_hours', '2020-11-10 08:47:26', '2020-11-10 08:54:44'),
(656, 'open_course_this_term', 'فتح المقرر هذا الترم', 'open_course_this_term', '2020-11-10 08:47:26', '2020-11-10 08:54:44'),
(657, 'card_types', 'أنواع الكارنيهات', 'card_types', '2020-11-10 08:47:26', '2020-11-10 08:54:44'),
(658, 'card_terms_&_conditions', 'شروط و احكام الكارنية', 'card_terms_&_conditions', '2020-11-10 08:47:26', '2020-11-10 08:54:44'),
(659, 'available_cards', 'الكارنيهات المتاحة', 'available_cards', '2020-11-10 08:47:26', '2020-11-10 08:54:44'),
(660, 'please_wait', 'من فضلك انتظر', 'please_wait', '2020-11-10 08:47:26', '2020-11-10 08:54:44'),
(661, 'cards_total', 'اجمالى الكارنيهات', 'cards_total', '2020-11-10 08:47:26', '2020-11-10 08:54:44'),
(662, 'student_count', 'عدد الطلاب', 'student_count', '2020-11-10 08:47:26', '2020-11-10 08:54:44'),
(663, 'card_type', 'أنواع الكارنيهات', 'card_type', '2020-11-10 08:47:27', '2020-11-10 08:54:43'),
(664, 'price', 'السعر', 'price', '2020-11-10 08:47:27', '2020-11-10 08:54:43'),
(665, 'create_new_course_category_', 'انشاء نوع مقرر', 'create new course category', '2020-11-10 08:56:43', '2020-11-10 09:40:29'),
(666, 'create_new_degree_map_', 'انشاء تقدير جديد', 'create new degree map', '2020-11-10 08:57:11', '2020-11-10 09:40:29'),
(667, 'create_new_course_', 'انشاء مقرر جديد', 'create new course', '2020-11-10 09:03:27', '2020-11-10 09:40:29'),
(668, 'update_course_', 'تعديل مقرر', 'update course', '2020-11-10 09:19:11', '2020-11-10 09:40:29'),
(669, 'add_discount_type_', NULL, 'add discount_type ', '2020-11-10 10:01:35', '2020-11-10 10:01:35'),
(670, 'open_courses_', NULL, 'open courses ', '2020-11-10 10:45:46', '2020-11-10 10:45:46'),
(671, 'change_academic_settings_', NULL, 'change academic settings ', '2020-11-10 11:13:24', '2020-11-10 11:13:24'),
(672, 'update_degree_map_', NULL, 'update degree map ', '2020-11-11 07:47:42', '2020-11-11 07:47:42'),
(673, 'remove_course_', NULL, 'remove course ', '2020-11-11 09:27:52', '2020-11-11 09:27:52'),
(674, 'update_settings', 'update_settings', 'update_settings', '2020-11-11 09:40:34', '2020-11-11 09:40:34'),
(675, 'create_discount_request', 'create_discount_request', 'create_discount_request', '2020-11-11 09:40:34', '2020-11-11 09:40:34'),
(676, 'create_balance_reset', 'create_balance_reset', 'create_balance_reset', '2020-11-11 09:40:34', '2020-11-11 09:40:34'),
(677, 'update_student_info', 'update_student_info', 'update_student_info', '2020-11-11 09:40:34', '2020-11-11 09:40:34'),
(678, 'histroy_of_discount', 'histroy_of_discount', 'histroy_of_discount', '2020-11-11 09:40:34', '2020-11-11 09:40:34'),
(679, 'discount_type', 'discount_type', 'discount_type', '2020-11-11 09:40:34', '2020-11-11 09:40:34'),
(680, 'student_affairs_notes', 'student_affairs_notes', 'student_affairs_notes', '2020-11-11 09:40:34', '2020-11-11 09:40:34'),
(681, 'histroy_of_balance_reset', 'histroy_of_balance_reset', 'histroy_of_balance_reset', '2020-11-11 09:40:34', '2020-11-11 09:40:34'),
(682, 'discount_types', 'المنح و الاعفائات', 'discount_types', '2020-11-11 09:40:35', '2020-11-11 09:42:20'),
(683, 'students_details_report', 'كشف حساب طالب', 'students_details_report', '2020-11-11 09:40:35', '2020-11-11 09:42:20'),
(684, 'students_balances_report', 'students_balances_report', 'students_balances_report', '2020-11-11 09:40:35', '2020-11-11 09:40:35'),
(685, 'report_creator', 'report_creator', 'report_creator', '2020-11-11 09:40:35', '2020-11-11 09:40:35'),
(686, 'students_installment_report', 'students_installment_report', 'students_installment_report', '2020-11-11 09:40:35', '2020-11-11 09:40:35'),
(687, 'students_discount_report', 'students_discount_report', 'students_discount_report', '2020-11-11 09:40:35', '2020-11-11 09:40:35'),
(688, 'student_register_course', 'تسجيل الارشاد الاكاديمى', 'student_register_course', '2020-11-11 09:40:35', '2020-11-11 09:42:20'),
(689, 'register_courses', 'تسجيل الارشاد الاكاديمى', 'register_courses', '2020-11-11 09:40:35', '2020-11-11 09:42:20'),
(690, 'available_hours', 'الساعات المتاحة', 'available_hours', '2020-11-14 06:17:47', '2020-11-14 06:18:27'),
(691, 'available_courses', 'المقررات المتاحة', 'available_courses', '2020-11-14 06:17:47', '2020-11-14 06:18:27'),
(692, 'register_hours', 'الساعات المسجلة', 'register_hours', '2020-11-14 06:17:47', '2020-11-14 06:18:27'),
(693, 'student_register_courses', 'المقررات المسجلة', 'student_register_courses', '2020-11-14 06:19:05', '2020-11-14 06:19:24'),
(694, 'student_register_document', 'ملف الارشاد الاكاديمى للطالب', 'student_register_document', '2020-11-14 10:25:04', '2020-11-14 10:26:12'),
(695, 'register_hours_total', 'اجمالى الساعات المسجلة', 'register_hours_total', '2020-11-14 10:25:04', '2020-11-14 10:26:12'),
(696, 'student_register_courses_count', 'عدد المقررات المسجلة', 'student_register_courses_count', '2020-11-14 10:25:04', '2020-11-14 10:26:12'),
(697, 'register_date', 'تاريخ التسجيل', 'register_date', '2020-11-14 10:25:04', '2020-11-14 10:26:12'),
(698, 'degree', 'الدرجة', 'degree', '2020-11-14 10:25:04', '2020-11-14 10:26:12'),
(699, 'student_degree', 'درجة الطالب', 'student_degree', '2020-11-14 10:25:04', '2020-11-14 10:26:12'),
(700, 'total_registeration_required_hours', 'اجمالى الساعات المطلوبة للتخرج', 'total_registeration_required_hours', '2020-11-14 10:29:39', '2020-11-14 10:30:05'),
(701, 'service', 'service', 'service', '2020-11-14 11:47:46', '2020-11-14 11:47:46'),
(702, 'discounttypes', 'discounttypes', 'discounttypes', '2020-11-14 11:47:46', '2020-11-14 11:47:46'),
(703, 'add_discount_type', 'add_discount_type', 'add_discount_type', '2020-11-14 11:47:46', '2020-11-14 11:47:46'),
(704, 'update_discount_type', 'update_discount_type', 'update_discount_type', '2020-11-14 11:47:46', '2020-11-14 11:47:46'),
(705, 'payment_code', 'payment_code', 'payment_code', '2020-11-14 11:47:46', '2020-11-14 11:47:46'),
(706, 'student_affairs', 'شئون الطلاب', 'student_affairs', '2020-11-14 11:47:46', '2020-11-14 12:38:06'),
(707, 'resize', 'تصغير', 'resize', '2020-11-14 11:47:46', '2020-11-14 11:48:04'),
(708, 'no_data_available', 'no_data_available', 'no_data_available', '2020-11-14 11:47:46', '2020-11-14 11:47:46'),
(709, 'check_all', 'تحديد الكل', 'check_all', '2020-11-14 12:06:22', '2020-11-14 12:22:33'),
(710, 'decheck_all', 'decheck_all', 'decheck_all', '2020-11-14 12:06:22', '2020-11-14 12:06:22'),
(711, 'too_many_requests', NULL, 'Too Many Requests', '2020-11-14 12:29:31', '2020-11-14 12:29:31'),
(712, 'student_affiars', 'شئون الطلاب', 'student_affiars', '2020-11-14 12:36:27', '2020-11-14 12:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`, `api_token`, `role_id`) VALUES
(1, 'admin', 'admin', 'uploads/users/2020081109344317934-avatar.png', 'admin@admin.com', '2020-08-05 06:53:18', '123456', 'e7kl8YQSdw2ecypIZgxtAQSC6lC2iyBZo6YJn3lvE7Nzonj0oMzhhl52RxgY', '2020-08-05 06:53:18', '2020-10-04 10:21:56', '01100968183', '123456789', 1),
(2, 'مصطفى', 'moustafa', 'uploads/users/2020081109145846107-doctor.png', 'admin@admin.comm', NULL, '123456', NULL, '2020-08-05 09:27:47', '2020-10-04 09:04:02', '0110096812', '123456789', NULL),
(3, 'user1', 'user1', 'uploads/users/2020081109220653158-طريقة-عمل-شوربة-العدس-الأصفر.jpg', 'user1@admin.com', NULL, '123456', NULL, '2020-08-11 14:55:07', '2020-10-04 09:03:53', '01123904214', '123456789', NULL),
(4, 'هاجر محمد رضا', 'hagar', 'uploads/users/2020081112124939928-635.png', 'hagar@admin.com', NULL, '123456', NULL, '2020-08-11 18:12:50', '2020-10-04 10:19:41', '01091093981', '123456789', 4),
(5, 'test', 'test', 'uploads/users/User_icon_2.svg.png', 'test@gmail.com', NULL, '123456', NULL, '2020-10-04 09:11:15', '2020-10-04 09:11:15', '01123904210', '123456789', NULL),
(6, 'dd', 'fds', 'uploads/users/2020100411210039735-صورة تحقيق الشخصيه.jpg', 'dd@gmail.com', NULL, '123456', NULL, '2020-10-04 09:21:01', '2020-10-04 10:19:50', '432', '123456789', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_advising_settings`
--
ALTER TABLE `academic_advising_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academic_courses`
--
ALTER TABLE `academic_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academic_course_categories`
--
ALTER TABLE `academic_course_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academic_degree_map`
--
ALTER TABLE `academic_degree_map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academic_open_courses`
--
ALTER TABLE `academic_open_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academic_student_gpa`
--
ALTER TABLE `academic_student_gpa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academic_student_register_courses`
--
ALTER TABLE `academic_student_register_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academic_years`
--
ALTER TABLE `academic_years`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `acadmic_course_prerequsites`
--
ALTER TABLE `acadmic_course_prerequsites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_academic_year_expenses`
--
ALTER TABLE `account_academic_year_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_academic_year_expenses_details`
--
ALTER TABLE `account_academic_year_expenses_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_balance_reset`
--
ALTER TABLE `account_balance_reset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_banks`
--
ALTER TABLE `account_banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_dailies`
--
ALTER TABLE `account_dailies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_discounts`
--
ALTER TABLE `account_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_discount_requests`
--
ALTER TABLE `account_discount_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_discount_types`
--
ALTER TABLE `account_discount_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_installments`
--
ALTER TABLE `account_installments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_payments`
--
ALTER TABLE `account_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_registeration_status_expenses`
--
ALTER TABLE `account_registeration_status_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_rewords`
--
ALTER TABLE `account_rewords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_services`
--
ALTER TABLE `account_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_settings`
--
ALTER TABLE `account_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_stores`
--
ALTER TABLE `account_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_student_old_balances`
--
ALTER TABLE `account_student_old_balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_student_services`
--
ALTER TABLE `account_student_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_transformations`
--
ALTER TABLE `account_transformations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_trees`
--
ALTER TABLE `account_trees`
  ADD KEY `trees_id_index` (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_required`
--
ALTER TABLE `application_required`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_exports`
--
ALTER TABLE `card_exports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `card_types`
--
ALTER TABLE `card_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `case_constraints`
--
ALTER TABLE `case_constraints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `constraint_status`
--
ALTER TABLE `constraint_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments_levels`
--
ALTER TABLE `departments_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `globale_settings`
--
ALTER TABLE `globale_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `governments`
--
ALTER TABLE `governments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_histories`
--
ALTER TABLE `login_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `military_areas`
--
ALTER TABLE `military_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `military_area_submision`
--
ALTER TABLE `military_area_submision`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `military_course`
--
ALTER TABLE `military_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `military_course_collection`
--
ALTER TABLE `military_course_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `military_course_collection_student`
--
ALTER TABLE `military_course_collection_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `military_settings`
--
ALTER TABLE `military_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `military_status`
--
ALTER TABLE `military_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent_jobs`
--
ALTER TABLE `parent_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent_relation_type`
--
ALTER TABLE `parent_relation_type`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qualification_types`
--
ALTER TABLE `qualification_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qualification_years`
--
ALTER TABLE `qualification_years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registeration_status`
--
ALTER TABLE `registeration_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registeration_status_document`
--
ALTER TABLE `registeration_status_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration_methods`
--
ALTER TABLE `registration_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relative_relation`
--
ALTER TABLE `relative_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_settings`
--
ALTER TABLE `report_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `required_documents`
--
ALTER TABLE `required_documents`
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
-- Indexes for table `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attributes`
--
ALTER TABLE `student_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_code_series`
--
ALTER TABLE `student_code_series`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_logs`
--
ALTER TABLE `student_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_military_history`
--
ALTER TABLE `student_military_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_required_documents`
--
ALTER TABLE `student_required_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_status`
--
ALTER TABLE `student_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_work`
--
ALTER TABLE `team_work`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_key_unique` (`key`);

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
-- AUTO_INCREMENT for table `academic_advising_settings`
--
ALTER TABLE `academic_advising_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `academic_courses`
--
ALTER TABLE `academic_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `academic_course_categories`
--
ALTER TABLE `academic_course_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `academic_degree_map`
--
ALTER TABLE `academic_degree_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `academic_open_courses`
--
ALTER TABLE `academic_open_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `academic_student_gpa`
--
ALTER TABLE `academic_student_gpa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `academic_student_register_courses`
--
ALTER TABLE `academic_student_register_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `academic_years`
--
ALTER TABLE `academic_years`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `acadmic_course_prerequsites`
--
ALTER TABLE `acadmic_course_prerequsites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `account_academic_year_expenses`
--
ALTER TABLE `account_academic_year_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `account_academic_year_expenses_details`
--
ALTER TABLE `account_academic_year_expenses_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `account_balance_reset`
--
ALTER TABLE `account_balance_reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_banks`
--
ALTER TABLE `account_banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `account_dailies`
--
ALTER TABLE `account_dailies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `account_discounts`
--
ALTER TABLE `account_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_discount_requests`
--
ALTER TABLE `account_discount_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_discount_types`
--
ALTER TABLE `account_discount_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `account_installments`
--
ALTER TABLE `account_installments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `account_payments`
--
ALTER TABLE `account_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `account_registeration_status_expenses`
--
ALTER TABLE `account_registeration_status_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `account_rewords`
--
ALTER TABLE `account_rewords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `account_services`
--
ALTER TABLE `account_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `account_settings`
--
ALTER TABLE `account_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `account_stores`
--
ALTER TABLE `account_stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `account_student_old_balances`
--
ALTER TABLE `account_student_old_balances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `account_student_services`
--
ALTER TABLE `account_student_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `account_transformations`
--
ALTER TABLE `account_transformations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `application_required`
--
ALTER TABLE `application_required`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `card_exports`
--
ALTER TABLE `card_exports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `card_types`
--
ALTER TABLE `card_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `case_constraints`
--
ALTER TABLE `case_constraints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `constraint_status`
--
ALTER TABLE `constraint_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `departments_levels`
--
ALTER TABLE `departments_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `globale_settings`
--
ALTER TABLE `globale_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `governments`
--
ALTER TABLE `governments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login_histories`
--
ALTER TABLE `login_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `military_areas`
--
ALTER TABLE `military_areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `military_area_submision`
--
ALTER TABLE `military_area_submision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `military_course`
--
ALTER TABLE `military_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `military_course_collection`
--
ALTER TABLE `military_course_collection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `military_course_collection_student`
--
ALTER TABLE `military_course_collection_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `military_settings`
--
ALTER TABLE `military_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `military_status`
--
ALTER TABLE `military_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=517;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parent_jobs`
--
ALTER TABLE `parent_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `parent_relation_type`
--
ALTER TABLE `parent_relation_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `qualifications`
--
ALTER TABLE `qualifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `qualification_types`
--
ALTER TABLE `qualification_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `qualification_years`
--
ALTER TABLE `qualification_years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registeration_status`
--
ALTER TABLE `registeration_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `registeration_status_document`
--
ALTER TABLE `registeration_status_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `registration_methods`
--
ALTER TABLE `registration_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `relative_relation`
--
ALTER TABLE `relative_relation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `report_settings`
--
ALTER TABLE `report_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `required_documents`
--
ALTER TABLE `required_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `student_attributes`
--
ALTER TABLE `student_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_code_series`
--
ALTER TABLE `student_code_series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_logs`
--
ALTER TABLE `student_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_military_history`
--
ALTER TABLE `student_military_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_required_documents`
--
ALTER TABLE `student_required_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `student_status`
--
ALTER TABLE `student_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_work`
--
ALTER TABLE `team_work`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=713;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
