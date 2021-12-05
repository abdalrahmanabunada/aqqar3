-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 05, 2021 at 04:59 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aqqar`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
CREATE TABLE IF NOT EXISTS `applications` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `fullname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identity` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `study` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tell` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_num` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `income_1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `income_2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `income_3` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_now` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_prev` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `income_monthly` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `years_without_job` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_job` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_place` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_desc` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_req` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_beneficiary` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_cost` int(11) NOT NULL,
  `project_finance` int(11) NOT NULL,
  `project_income_monthly_expected` int(11) NOT NULL,
  `project_pay` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_similar` int(11) NOT NULL,
  `project_administrator` int(11) NOT NULL,
  `project_administrator_other` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kafel1_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kafel1_identity` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kafel1_address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kafel1_tell` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kafel1_salary` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kafel1_account` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kafel1_job_place` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kafel1_bank` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kafel2_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kafel2_identity` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kafel2_address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kafel2_tell` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kafel2_salary` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kafel2_account` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kafel2_job_place` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kafel2_bank` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `craft` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expected_period_for_total_cost` int(11) DEFAULT NULL,
  `img_identity` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_salary` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_kafel_identity` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_kafel_salary` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_finance` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `users_id`, `fullname`, `dob`, `identity`, `address`, `study`, `mobile`, `tell`, `family_num`, `income_1`, `income_2`, `income_3`, `job_now`, `job_prev`, `income_monthly`, `years_without_job`, `partner_job`, `project_title`, `project_place`, `project_type`, `project_desc`, `project_req`, `project_beneficiary`, `project_cost`, `project_finance`, `project_income_monthly_expected`, `project_pay`, `project_similar`, `project_administrator`, `project_administrator_other`, `kafel1_name`, `kafel1_identity`, `kafel1_address`, `kafel1_tell`, `kafel1_salary`, `kafel1_account`, `kafel1_job_place`, `kafel1_bank`, `kafel2_name`, `kafel2_identity`, `kafel2_address`, `kafel2_tell`, `kafel2_salary`, `kafel2_account`, `kafel2_job_place`, `kafel2_bank`, `created_at`, `updated_at`, `craft`, `expected_period_for_total_cost`, `img_identity`, `img_salary`, `img_kafel_identity`, `img_kafel_salary`, `img_finance`) VALUES
(1, 1, 'عبد الرحمن', '01/01/2020', '803134204', 'الفالوجا شمال غزة', '111', '0599597237', NULL, '5', '111', NULL, NULL, '111', NULL, '1500', '0', '111', '111', '111', '1', '111', '111', '111', 111, 111, 111, '111', 111, 1, NULL, 'حسن', '803134204', '111', '111', '111', '4568932', '111', '111', 'خالد', '803134204', '111', '547896', '111', '456523', '111', '111', '2021-09-20 21:56:18', '2021-09-20 21:56:18', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 'عبد الرحمن', '01/01/2020', '803134204', 'الفالوجا شمال غزة', '111', '0599597237', NULL, '5', '111', NULL, NULL, '111', NULL, '1500', '0', '111', '111', '111', '1', '111', '111', '111', 111, 111, 111, '111', 111, 1, NULL, 'حسن', '803134204', '111', '111', '111', '4568932', '111', '111', 'خالد', '803134204', '111', '547896', '111', '456523', '111', '111', '2021-09-20 21:56:36', '2021-09-20 21:56:36', 'yes', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, 'عبد الرحمن', '01/01/2020', '803134204', 'الفالوجا شمال غزة', '111', '0599597237', NULL, '5', 'as', NULL, NULL, '111', NULL, '1500', '0', '111', '111', '111', '1', '111', '111', '111', 111, 111, 111, '111', 111, 1, NULL, 'حسن', '803134204', '111', '111', '111', '4568932', '111', '111', 'خالد', '803134204', '111', '547896', '111', '456523', '111', '111', '2021-09-20 21:57:38', '2021-09-20 21:57:38', 'yes', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `users_id` int(11) DEFAULT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desccode` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `catid` int(11) DEFAULT NULL,
  `date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `users_id`, `title`, `subtitle`, `desccode`, `file`, `active`, `catid`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 'title 2', 'sub 2', '<p>desc</p>', '1638111913.PNG', 0, 1, '29/11/2021', '2021-11-28 23:05:13', '2021-12-05 23:30:20'),
(2, 1, 'qw', 'qw', '<p>qwqwq</p>', '1638195439.PNG', 0, 1, '01/01/2021', '2021-11-29 22:17:19', '2021-12-05 23:30:20'),
(3, 1, 'as', 'as', '<p>as</p>', '1638195615.PNG', 1, 1, '30/11/2021', '2021-11-29 22:20:15', '2021-11-29 22:20:15'),
(4, 1, 'as', 'as', '<p>as</p>', '1638201123.PNG', 1, 1, '29/11/2021', '2021-11-29 22:30:37', '2021-11-29 23:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiaries`
--

DROP TABLE IF EXISTS `beneficiaries`;
CREATE TABLE IF NOT EXISTS `beneficiaries` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `identity` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partnarId` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partnarName` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `donor` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `project_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1599 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beneficiaries`
--

INSERT INTO `beneficiaries` (`id`, `name`, `created_at`, `updated_at`, `identity`, `city`, `partnarId`, `partnarName`, `project`, `institute`, `donor`, `budget`, `currency`, `date`, `project_type`, `book`) VALUES
(1590, 'asas', '2021-10-26 21:49:04', '2021-10-26 21:49:04', '1111', 'gaza', '803134202', 'sabah', 'project 1', 'institute 1', 'donar 2', '1000', NULL, '2021-10-24', 'manage', NULL),
(1589, 'asas', '2021-10-26 21:48:58', '2021-10-26 21:48:58', '2222', 'gaza', '803134202', 'sabah', 'project 1', 'institute 1', 'donar 1', '1000', NULL, '2021-10-24', 'manage', NULL),
(1588, 'asas', '2021-10-26 21:47:49', '2021-10-26 21:47:49', '33333', 'gaza', '803134202', 'sabah', 'project 1', 'institute 1', 'donar 1', '1000', NULL, '2021-10-24', 'manage', NULL),
(1591, 'asas', '2021-10-26 21:49:05', '2021-10-26 21:49:05', '44444', 'gaza', '803134202', 'sabah', 'project 1', 'institute 1', 'donar 1', '1000', NULL, '2021-10-24', 'manage', NULL),
(1592, 'asas', '2021-10-26 21:49:07', '2021-10-26 21:49:07', '55555', 'gaza', '803134202', 'sabah', 'project 1', 'institute 1', 'donar 1', '1000', NULL, '2021-10-24', 'manage', NULL),
(1593, 'abd alrahman mohammad ali nada', '2021-10-27 21:39:18', '2021-10-27 21:39:18', '803134204', 'gaza', '803134202', 'sabah', 'project 1', 'institute 1', 'donar 1', '1000', NULL, '2021-10-24', 'manage 1', '27-10'),
(1594, 'asas', '2021-11-03 21:29:03', '2021-11-03 21:29:03', '77777', 'gaza', '803134202', 'sabah', 'project 1', 'institute 1', 'donar 1', '1000', NULL, '2021-10-24', 'manage', '27-10'),
(1595, 'asas', '2021-11-03 21:30:52', '2021-11-03 21:30:52', '803134204', 'gaza', '803134202', 'sabah', 'project 1', 'institute 1', 'donar 1', '1000', NULL, '2021-11-03', 'manage', '27-10'),
(1596, 'asas', '2021-11-03 21:31:11', '2021-11-03 21:31:11', '803134204', 'gaza', '803134204,803134202', 'sabah', 'project 1', 'institute 1', 'donar 1', '1000', NULL, '2021-11-03', 'manage', '27-10'),
(1597, 'jkjkj', '2021-11-03 21:47:25', '2021-11-03 21:50:46', '803134204', 'kan yunis', NULL, NULL, 'ggg', 'hhh', 'ddd', '1000', NULL, '2021-11-03', 'type type', '55/66'),
(1598, 'asas', '2021-11-03 23:11:22', '2021-11-03 23:11:22', '803134204', 'gaza', '803134204', 'sabah', 'project 1', 'institute 1', 'donar 1', '1000', NULL, '2021-11-03', 'manage', '03-11');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `users_id` int(11) DEFAULT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desccode` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `users_id`, `title`, `desccode`, `file`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 'eeeeeeee', '<p>wewe</p>', '1637942479.jpg', 1, '2021-11-26 21:34:47', '2021-11-27 19:57:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
CREATE TABLE IF NOT EXISTS `links` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `show_in_menu` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '1',
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `title`, `route_name`, `parent_id`, `show_in_menu`, `order_id`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'إضافة مستخدم', 'user-create', 3, 0, 1, NULL, '2021-08-17 16:54:38', NULL),
(2, 'تخزين بيانات مستخدم جديد', 'user-store', 1, 0, 1, NULL, '2021-08-24 16:56:04', NULL),
(3, 'عرض المستخدمين', 'user-view', 0, 1, 1, 'fas fa-user-circle fs-2x', '2021-08-18 15:24:21', NULL),
(5, 'صلاحيات المستخدمين', 'user-permission', 3, 0, 1, NULL, NULL, NULL),
(4, 'جلب بيانات المسنخدمين أجاكس', 'user-get-data', 3, 0, 1, NULL, NULL, NULL),
(6, 'حفظ صلاحيات المستخدم', 'user-permission-store', 5, 0, 1, NULL, NULL, NULL),
(7, 'تفعيل المستخدمين', 'user-active', 3, 0, 1, NULL, NULL, NULL),
(8, 'تعديل بيانات مستخدم', 'user-update', 3, 0, 1, NULL, NULL, NULL),
(9, 'حفظ بيانات المستخدم', 'user-update-store', 8, 0, 1, NULL, NULL, NULL),
(10, 'أدوار المستخدم', 'user_role_view', 3, 0, 1, NULL, NULL, NULL),
(11, 'حفظ أدوار المستخدم', 'user-role-store', 10, 0, 1, NULL, NULL, NULL),
(12, 'أدوار النظام', 'role-view', 0, 1, 1, 'far fa-clone fs-2x', NULL, NULL),
(13, 'جلب بيانات الأدوار أجاكس', 'role-get-data', 12, 0, 1, NULL, NULL, NULL),
(14, 'تخزين صلاحيات للدور', 'role-permission-store', 12, 0, 1, NULL, NULL, NULL),
(16, 'الرئيسية', 'admin.home', 0, 0, 1, NULL, NULL, NULL),
(17, 'الملف الشخصي', 'client.profile', 0, 1, 1, 'fas fa-user-circle fs-2x', NULL, NULL),
(18, 'الرئيسية', 'client.home2', 0, 1, 1, NULL, NULL, NULL),
(19, 'إضافة طلب', 'client.application.add', 0, 1, 1, 'fas fa-plus-square fs-2x', NULL, NULL),
(20, 'عرض الطلبات', 'application.view', 0, 1, 1, 'far fa-clone fs-2x', NULL, NULL),
(21, 'عرض الطلبات أجاكس', 'application.view.ajax', 20, 0, 1, NULL, NULL, NULL),
(22, 'page4', 'application.pdf.page4', 20, 0, 1, NULL, NULL, NULL),
(23, 'المستفيدين', 'client.beneficiary', 0, 1, 1, NULL, NULL, NULL),
(24, 'رفع الملف', 'client.beneficiary.upload', 23, 0, 1, NULL, NULL, NULL),
(25, 'إدارة المستفيدين', 'beneficiary.view', 0, 1, 1, NULL, NULL, NULL),
(26, 'المستفيدين أجاكس', 'beneficiary.view.ajax', 25, 0, 1, NULL, NULL, NULL),
(27, 'إضافة مستفيد', 'client.beneficiary.create', 25, 0, 1, NULL, NULL, NULL),
(28, 'تعديل بيانات مستفيد', 'client.beneficiary.edit', 25, 0, 1, NULL, NULL, NULL),
(29, 'تعديل بيانات الزوجة', 'client.beneficiary.upload.edit', 0, 1, 1, NULL, NULL, NULL),
(30, 'تحميل ملف', 'client.beneficiary.upload.download', 24, 0, 1, NULL, NULL, NULL),
(31, 'تحميل تيمبليت تعديل بيانات الزوجة', 'client.beneficiary.upload.download2', 24, 0, 1, NULL, NULL, NULL),
(32, 'تصدير بيانات', 'client.beneficiary.export', 25, 0, 1, NULL, NULL, NULL),
(33, 'typeahead', 'client.beneficiary.view.typeahead', 25, 0, 1, NULL, NULL, NULL),
(34, 'فحص كشف المستفيدين', 'client.beneficiary.postCheckViewCsv', 0, 1, 1, NULL, NULL, NULL),
(35, 'رفع الملف', 'client.beneficiary.postCheckCsv', 34, 0, 1, NULL, NULL, NULL),
(36, 'إضافة تصنيف مقال', 'admin.category.add', 38, 0, 1, NULL, NULL, NULL),
(37, 'تعديل بيانات تصنيف مقال', 'admin.category.edit', 38, 0, 1, NULL, NULL, NULL),
(38, 'تصنيفات المقالات', 'admin.category.index', 0, 1, 1, NULL, NULL, NULL),
(39, 'أجاكس', 'admin.category.index.ajax', 38, 0, 1, NULL, NULL, NULL),
(40, 'تفعيل تصنيف مقال', 'cat-active', 38, 0, 1, NULL, NULL, NULL),
(41, 'ملف فحص المستفيدين', 'client.beneficiary.upload.download3', 24, 0, 1, NULL, NULL, NULL),
(42, 'إدارة المقالات', 'admin.article.index', 0, 1, 1, NULL, NULL, NULL),
(43, 'إضافة مقال', 'admin.article.add', 42, 0, 1, NULL, NULL, NULL),
(44, 'تعديل مقال', 'admin.article.edit', 42, 0, 1, NULL, NULL, NULL),
(45, 'تفعيل مقال', 'art-active', 42, 0, 1, NULL, NULL, NULL),
(46, 'صورة المقال', 'admin.article.getimg', 42, 0, 1, NULL, NULL, NULL),
(47, 'الصفحات الثابتة', 'admin.staticpage.index', 0, 1, 1, NULL, NULL, NULL),
(48, 'إضافة صفحة ثابتة', 'admin.staticpage.add', 47, 0, 1, NULL, NULL, NULL),
(49, 'تعديل صفحة ثابته', 'admin.staticpage.edit', 47, 0, 1, NULL, NULL, NULL),
(50, 'تفعيل صفحة ثابته', 'staticpage-active', 47, 0, 1, NULL, NULL, NULL),
(51, 'صورة صفحة ثابته', 'admin.staticpage.getimg', 47, 0, 1, NULL, NULL, NULL),
(52, 'إدارة قوائم النظام', 'admin.menu.index', 0, 1, 1, NULL, NULL, NULL),
(53, 'إضافة قائمة جديدة', 'admin.menu.add', 52, 0, 1, NULL, NULL, NULL),
(54, 'تعديل قائمة', 'admin.menu.edit', 52, 0, 1, NULL, NULL, NULL),
(55, 'قائمة أجاكس', 'admin.menu.index.ajax', 52, 0, 1, NULL, NULL, NULL),
(56, 'تفعيل قائمة', 'menu-active', 52, 0, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `users_id` int(11) DEFAULT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `external` int(11) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  `newtap` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `users_id`, `title`, `link`, `order`, `active`, `parentid`, `external`, `typeid`, `newtap`, `created_at`, `updated_at`) VALUES
(1, 1, 'asas 2', 'asasa 2', 3, 1, 1, 1, 2, 0, '2021-12-05 23:19:28', '2021-12-06 00:33:26'),
(2, 1, 'asa', 'asa', 2, 1, 2, 0, 2, 1, '2021-12-05 23:19:53', '2021-12-06 00:32:26');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_08_24_135247_links_table', 1),
(6, '2021_08_24_140358_users_links_table', 1),
(7, '2021_09_01_171354_create_role_table', 1),
(8, '2021_09_01_175449_role_admin', 1),
(9, '2021_09_01_180113_role_client', 1),
(10, '2021_09_05_140048_role_permissions', 1),
(19, '2021_09_05_190152_create_user_rols_table', 2),
(21, '2021_09_13_154906_create_profile_table', 3),
(22, '2021_09_14_164422_create__users_verify_table', 4),
(40, '2021_09_16_130701_create_application_table', 5),
(41, '2021_09_17_081613_add_colums_to_application_table', 5),
(42, '2021_09_20_145114_add_files_to_application_table', 5),
(44, '2021_10_15_110833_create_beneficiary_table', 6),
(45, '2021_10_16_135053_add_col_to_users_table', 7),
(46, '2021_10_17_155702_add_col2_to_beneficiaries_table', 8),
(47, '2021_10_24_095301_add_cols_to_benfs_table', 9),
(48, '2021_10_27_143215_add_col3_to_beneficiaries_table', 10),
(49, '2021_11_13_084249_create_temps_table', 11),
(51, '2021_11_26_132410_create_categories_table', 12),
(52, '2021_11_28_143250_create_articles_table', 13),
(53, '2021_12_01_155735_create__static_pages_table', 14),
(54, '2021_12_05_145441_create_menus_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE IF NOT EXISTS `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identity` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_kafel_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_kafel_account` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `second_kafel_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `second_kafel_account` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `users_id`, `name`, `identity`, `account`, `first_kafel_name`, `first_kafel_account`, `second_kafel_name`, `second_kafel_account`, `created_at`, `updated_at`) VALUES
(3, 1, 'عبد الرحمن', '803134204', '457896', 'حسن', '4568932', 'خالد', '456523', '2021-09-14 00:51:24', '2021-09-14 00:51:24'),
(4, 21, 'عبد الرحمن محمد علي أبو ندى', '803134204', '4578965', 'محمد', '789654', 'حسن 2', '565324', '2021-09-19 16:53:14', '2021-09-20 00:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-09-06 01:49:05', '2021-09-06 01:49:05'),
(2, 'client', '2021-09-06 01:49:05', '2021-09-06 01:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `role_links`
--

DROP TABLE IF EXISTS `role_links`;
CREATE TABLE IF NOT EXISTS `role_links` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `roles_id` int(11) NOT NULL DEFAULT '0',
  `links_id` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=744 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_links`
--

INSERT INTO `role_links` (`id`, `roles_id`, `links_id`, `created_at`, `updated_at`) VALUES
(593, 2, 34, '2021-11-28 04:09:15', '2021-11-28 04:09:15'),
(743, 1, 52, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(742, 1, 56, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(741, 1, 55, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(740, 1, 54, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(739, 1, 53, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(738, 1, 47, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(737, 1, 51, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(736, 1, 50, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(735, 1, 49, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(734, 1, 48, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(733, 1, 42, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(732, 1, 46, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(731, 1, 45, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(730, 1, 44, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(592, 2, 35, '2021-11-28 04:09:15', '2021-11-28 04:09:15'),
(729, 1, 43, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(591, 2, 29, '2021-11-28 04:09:15', '2021-11-28 04:09:15'),
(590, 2, 25, '2021-11-28 04:09:15', '2021-11-28 04:09:15'),
(589, 2, 33, '2021-11-28 04:09:15', '2021-11-28 04:09:15'),
(588, 2, 32, '2021-11-28 04:09:15', '2021-11-28 04:09:15'),
(587, 2, 28, '2021-11-28 04:09:15', '2021-11-28 04:09:15'),
(586, 2, 27, '2021-11-28 04:09:15', '2021-11-28 04:09:15'),
(585, 2, 26, '2021-11-28 04:09:15', '2021-11-28 04:09:15'),
(584, 2, 23, '2021-11-28 04:09:15', '2021-11-28 04:09:15'),
(583, 2, 24, '2021-11-28 04:09:15', '2021-11-28 04:09:15'),
(582, 2, 31, '2021-11-28 04:09:15', '2021-11-28 04:09:15'),
(581, 2, 30, '2021-11-28 04:09:15', '2021-11-28 04:09:15'),
(580, 2, 20, '2021-11-28 04:09:15', '2021-11-28 04:09:15'),
(579, 2, 22, '2021-11-28 04:09:15', '2021-11-28 04:09:15'),
(578, 2, 21, '2021-11-28 04:09:15', '2021-11-28 04:09:15'),
(577, 2, 19, '2021-11-28 04:09:15', '2021-11-28 04:09:15'),
(576, 2, 17, '2021-11-28 04:09:15', '2021-11-28 04:09:15'),
(728, 1, 38, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(727, 1, 40, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(726, 1, 39, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(725, 1, 37, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(724, 1, 36, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(594, 2, 41, '2021-11-28 04:09:15', '2021-11-28 04:09:15'),
(723, 1, 16, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(722, 1, 12, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(721, 1, 14, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(720, 1, 13, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(719, 1, 3, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(718, 1, 10, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(717, 1, 11, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(716, 1, 8, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(715, 1, 9, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(714, 1, 7, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(713, 1, 4, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(712, 1, 5, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(711, 1, 6, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(710, 1, 1, '2021-12-05 23:09:07', '2021-12-05 23:09:07'),
(709, 1, 2, '2021-12-05 23:09:07', '2021-12-05 23:09:07');

-- --------------------------------------------------------

--
-- Table structure for table `staticpages`
--

DROP TABLE IF EXISTS `staticpages`;
CREATE TABLE IF NOT EXISTS `staticpages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `users_id` int(11) DEFAULT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desccode` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staticpages`
--

INSERT INTO `staticpages` (`id`, `users_id`, `title`, `desccode`, `file`, `active`, `parentid`, `created_at`, `updated_at`) VALUES
(1, 1, 'asas', '<p>as</p>', '1638375121.PNG', 1, NULL, '2021-12-02 00:12:01', '2021-12-02 00:20:33'),
(2, 1, 'asasassds', '<p>sdsd</p>', '1638375427.PNG', 1, 2, '2021-12-02 00:14:03', '2021-12-02 00:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `temps`
--

DROP TABLE IF EXISTS `temps`;
CREATE TABLE IF NOT EXISTS `temps` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `identity` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temps`
--

INSERT INTO `temps` (`id`, `identity`, `name`, `created_at`, `updated_at`) VALUES
(1, '803134204', '1636794572', '2021-11-13 17:09:32', '2021-11-13 17:09:32'),
(2, '803134204', '1636794572', '2021-11-13 17:09:32', '2021-11-13 17:09:32'),
(3, '803134204', '1636794572', '2021-11-13 17:09:32', '2021-11-13 17:09:32'),
(4, '803134204', '1636794785', '2021-11-13 17:13:05', '2021-11-13 17:13:05'),
(5, '803134204', '1636794785', '2021-11-13 17:13:05', '2021-11-13 17:13:05'),
(6, '803134204', '1636794785', '2021-11-13 17:13:05', '2021-11-13 17:13:05'),
(7, '803134204', '1636794815', '2021-11-13 17:13:35', '2021-11-13 17:13:35'),
(8, '803134204', '1636794815', '2021-11-13 17:13:35', '2021-11-13 17:13:35'),
(9, '803134204', '1636794815', '2021-11-13 17:13:35', '2021-11-13 17:13:35'),
(10, '803134204', '1636794831', '2021-11-13 17:13:51', '2021-11-13 17:13:51'),
(11, '803134204', '1636794831', '2021-11-13 17:13:51', '2021-11-13 17:13:51'),
(12, '803134204', '1636794831', '2021-11-13 17:13:51', '2021-11-13 17:13:51'),
(13, '803134204', '1636794920', '2021-11-13 17:15:20', '2021-11-13 17:15:20'),
(14, '803134204', '1636794920', '2021-11-13 17:15:20', '2021-11-13 17:15:20'),
(15, '803134204', '1636794920', '2021-11-13 17:15:20', '2021-11-13 17:15:20'),
(16, '803134204', '1636794962', '2021-11-13 17:16:02', '2021-11-13 17:16:02'),
(17, '803134204', '1636794962', '2021-11-13 17:16:02', '2021-11-13 17:16:02'),
(18, '803134204', '1636794962', '2021-11-13 17:16:02', '2021-11-13 17:16:02'),
(19, '803134204', '1636795052', '2021-11-13 17:17:32', '2021-11-13 17:17:32'),
(20, '803134204', '1636795052', '2021-11-13 17:17:32', '2021-11-13 17:17:32'),
(21, '803134204', '1636795052', '2021-11-13 17:17:32', '2021-11-13 17:17:32'),
(22, '803134204', '1636795065', '2021-11-13 17:17:45', '2021-11-13 17:17:45'),
(23, '803134204', '1636795065', '2021-11-13 17:17:45', '2021-11-13 17:17:45'),
(24, '803134204', '1636795065', '2021-11-13 17:17:45', '2021-11-13 17:17:45'),
(25, '803134204', '1636795088', '2021-11-13 17:18:08', '2021-11-13 17:18:08'),
(26, '803134204', '1636795088', '2021-11-13 17:18:08', '2021-11-13 17:18:08'),
(27, '803134204', '1636795088', '2021-11-13 17:18:08', '2021-11-13 17:18:08'),
(28, '803134204', '1636795107', '2021-11-13 17:18:27', '2021-11-13 17:18:27'),
(29, '803134204', '1636795107', '2021-11-13 17:18:27', '2021-11-13 17:18:27'),
(30, '803134204', '1636795107', '2021-11-13 17:18:27', '2021-11-13 17:18:27'),
(31, '803134204', '1636795218', '2021-11-13 17:20:18', '2021-11-13 17:20:18'),
(32, '803134204', '1636795218', '2021-11-13 17:20:18', '2021-11-13 17:20:18'),
(33, '803134204', '1636795218', '2021-11-13 17:20:18', '2021-11-13 17:20:18'),
(34, '803134204', '1636795311', '2021-11-13 17:21:51', '2021-11-13 17:21:51'),
(35, '803134204', '1636795311', '2021-11-13 17:21:51', '2021-11-13 17:21:51'),
(36, '803134204', '1636795311', '2021-11-13 17:21:51', '2021-11-13 17:21:51'),
(37, '803134204', '1636795402', '2021-11-13 17:23:22', '2021-11-13 17:23:22'),
(38, '803134204', '1636795402', '2021-11-13 17:23:22', '2021-11-13 17:23:22'),
(39, '803134204', '1636795402', '2021-11-13 17:23:22', '2021-11-13 17:23:22'),
(40, '803134204', '1636989117', '2021-11-15 23:11:59', '2021-11-15 23:11:59'),
(41, '803134204', '1636989117', '2021-11-15 23:11:59', '2021-11-15 23:11:59'),
(42, '803134204', '1636989117', '2021-11-15 23:11:59', '2021-11-15 23:11:59'),
(43, '803134204', '1636990726', '2021-11-15 23:38:46', '2021-11-15 23:38:46'),
(44, '803134204', '1636990726', '2021-11-15 23:38:46', '2021-11-15 23:38:46'),
(45, '803134204', '1636990726', '2021-11-15 23:38:46', '2021-11-15 23:38:46'),
(46, '803134204', '1636990828', '2021-11-15 23:40:28', '2021-11-15 23:40:28'),
(47, '803134204', '1636990828', '2021-11-15 23:40:28', '2021-11-15 23:40:28'),
(48, '803134204', '1636990828', '2021-11-15 23:40:28', '2021-11-15 23:40:28'),
(49, '803134204', '1636990872', '2021-11-15 23:41:13', '2021-11-15 23:41:13'),
(50, '803134204', '1636990872', '2021-11-15 23:41:13', '2021-11-15 23:41:13'),
(51, '803134204', '1636990872', '2021-11-15 23:41:13', '2021-11-15 23:41:13'),
(52, '803134204', '1636991688', '2021-11-15 23:54:48', '2021-11-15 23:54:48'),
(53, '803134204', '1636991688', '2021-11-15 23:54:48', '2021-11-15 23:54:48'),
(54, '803134204', '1636991688', '2021-11-15 23:54:48', '2021-11-15 23:54:48'),
(55, '803134204', '1636992047', '2021-11-16 00:00:48', '2021-11-16 00:00:48'),
(56, '803134204', '1636992047', '2021-11-16 00:00:48', '2021-11-16 00:00:48'),
(57, '803134204', '1636992047', '2021-11-16 00:00:48', '2021-11-16 00:00:48'),
(58, '803134204', '1636992080', '2021-11-16 00:01:20', '2021-11-16 00:01:20'),
(59, '803134204', '1636992080', '2021-11-16 00:01:20', '2021-11-16 00:01:20'),
(60, '803134204', '1636992080', '2021-11-16 00:01:20', '2021-11-16 00:01:20'),
(61, '803134204', '1636992159', '2021-11-16 00:02:39', '2021-11-16 00:02:39'),
(62, '803134204', '1636992159', '2021-11-16 00:02:39', '2021-11-16 00:02:39'),
(63, '803134204', '1636992159', '2021-11-16 00:02:39', '2021-11-16 00:02:39'),
(64, '803134204', '1637432715', '2021-11-21 02:25:16', '2021-11-21 02:25:16'),
(65, '803134204', '1637432715', '2021-11-21 02:25:16', '2021-11-21 02:25:16'),
(66, '803134204', '1637432715', '2021-11-21 02:25:16', '2021-11-21 02:25:16'),
(67, '803134204', '1637432746', '2021-11-21 02:25:46', '2021-11-21 02:25:46'),
(68, '803134204', '1637432746', '2021-11-21 02:25:46', '2021-11-21 02:25:46'),
(69, '803134204', '1637432746', '2021-11-21 02:25:46', '2021-11-21 02:25:46'),
(70, '803134204', '1637432964', '2021-11-21 02:29:24', '2021-11-21 02:29:24'),
(71, '803134204', '1637432964', '2021-11-21 02:29:24', '2021-11-21 02:29:24'),
(72, '803134204', '1637432964', '2021-11-21 02:29:24', '2021-11-21 02:29:24'),
(73, '803134204', '1637433000', '2021-11-21 02:30:00', '2021-11-21 02:30:00'),
(74, '803134204', '1637433000', '2021-11-21 02:30:00', '2021-11-21 02:30:00'),
(75, '803134204', '1637433000', '2021-11-21 02:30:00', '2021-11-21 02:30:00'),
(76, '803134204', '1637433075', '2021-11-21 02:31:15', '2021-11-21 02:31:15'),
(77, '803134204', '1637433075', '2021-11-21 02:31:15', '2021-11-21 02:31:15'),
(78, '803134204', '1637433075', '2021-11-21 02:31:15', '2021-11-21 02:31:15'),
(79, '803134204', '1637433124', '2021-11-21 02:32:04', '2021-11-21 02:32:04'),
(80, '803134204', '1637433124', '2021-11-21 02:32:04', '2021-11-21 02:32:04'),
(81, '803134204', '1637433124', '2021-11-21 02:32:04', '2021-11-21 02:32:04'),
(82, '803134204', '1637433187', '2021-11-21 02:33:07', '2021-11-21 02:33:07'),
(83, '803134204', '1637433187', '2021-11-21 02:33:07', '2021-11-21 02:33:07'),
(84, '803134204', '1637433187', '2021-11-21 02:33:07', '2021-11-21 02:33:07'),
(85, '803134204', '1637433201', '2021-11-21 02:33:21', '2021-11-21 02:33:21'),
(86, '803134204', '1637433201', '2021-11-21 02:33:21', '2021-11-21 02:33:21'),
(87, '803134204', '1637433201', '2021-11-21 02:33:21', '2021-11-21 02:33:21'),
(88, '803134204', '1637433333', '2021-11-21 02:35:33', '2021-11-21 02:35:33'),
(89, '803134204', '1637433333', '2021-11-21 02:35:33', '2021-11-21 02:35:33'),
(90, '803134204', '1637433333', '2021-11-21 02:35:33', '2021-11-21 02:35:33'),
(91, '803134204', '1637433510', '2021-11-21 02:38:30', '2021-11-21 02:38:30'),
(92, '803134204', '1637433510', '2021-11-21 02:38:30', '2021-11-21 02:38:30'),
(93, '803134204', '1637433510', '2021-11-21 02:38:30', '2021-11-21 02:38:30'),
(94, '803134204', '1637433540', '2021-11-21 02:39:00', '2021-11-21 02:39:00'),
(95, '803134204', '1637433540', '2021-11-21 02:39:00', '2021-11-21 02:39:00'),
(96, '803134204', '1637433540', '2021-11-21 02:39:00', '2021-11-21 02:39:00'),
(97, '803134204', '1637516378', '2021-11-22 01:39:39', '2021-11-22 01:39:39'),
(98, '803134204', '1637516378', '2021-11-22 01:39:39', '2021-11-22 01:39:39'),
(99, '803134204', '1637516378', '2021-11-22 01:39:39', '2021-11-22 01:39:39'),
(100, '803134204', '1637516462', '2021-11-22 01:41:02', '2021-11-22 01:41:02'),
(101, '803134204', '1637516462', '2021-11-22 01:41:02', '2021-11-22 01:41:02'),
(102, '803134204', '1637516462', '2021-11-22 01:41:02', '2021-11-22 01:41:02'),
(103, '803134204', '1637516476', '2021-11-22 01:41:16', '2021-11-22 01:41:16'),
(104, '803134204', '1637516476', '2021-11-22 01:41:16', '2021-11-22 01:41:16'),
(105, '803134204', '1637516476', '2021-11-22 01:41:16', '2021-11-22 01:41:16'),
(106, '803134204', '1637516499', '2021-11-22 01:41:39', '2021-11-22 01:41:39'),
(107, '803134204', '1637516499', '2021-11-22 01:41:39', '2021-11-22 01:41:39'),
(108, '803134204', '1637516499', '2021-11-22 01:41:39', '2021-11-22 01:41:39'),
(109, '803134204', '1637516579', '2021-11-22 01:42:59', '2021-11-22 01:42:59'),
(110, '803134204', '1637516579', '2021-11-22 01:42:59', '2021-11-22 01:42:59'),
(111, '803134204', '1637516579', '2021-11-22 01:42:59', '2021-11-22 01:42:59'),
(112, '803134204', '1637517066', '2021-11-22 01:51:06', '2021-11-22 01:51:06'),
(113, '803134204', '1637517066', '2021-11-22 01:51:06', '2021-11-22 01:51:06'),
(114, '803134204', '1637517066', '2021-11-22 01:51:06', '2021-11-22 01:51:06'),
(115, '803134204', '1637517283', '2021-11-22 01:54:43', '2021-11-22 01:54:43'),
(116, '803134204', '1637517283', '2021-11-22 01:54:43', '2021-11-22 01:54:43'),
(117, '803134204', '1637517283', '2021-11-22 01:54:43', '2021-11-22 01:54:43'),
(118, '803134204', '1637517372', '2021-11-22 01:56:12', '2021-11-22 01:56:12'),
(119, '803134204', '1637517372', '2021-11-22 01:56:12', '2021-11-22 01:56:12'),
(120, '803134204', '1637517372', '2021-11-22 01:56:12', '2021-11-22 01:56:12'),
(121, '803134204', '1637517426', '2021-11-22 01:57:06', '2021-11-22 01:57:06'),
(122, '803134204', '1637517426', '2021-11-22 01:57:06', '2021-11-22 01:57:06'),
(123, '803134204', '1637517426', '2021-11-22 01:57:06', '2021-11-22 01:57:06'),
(124, '803134204', '1637517480', '2021-11-22 01:58:00', '2021-11-22 01:58:00'),
(125, '803134204', '1637517480', '2021-11-22 01:58:00', '2021-11-22 01:58:00'),
(126, '803134204', '1637517480', '2021-11-22 01:58:00', '2021-11-22 01:58:00'),
(127, '803134204', '1637517728', '2021-11-22 02:02:08', '2021-11-22 02:02:08'),
(128, '803134204', '1637517728', '2021-11-22 02:02:08', '2021-11-22 02:02:08'),
(129, '803134204', '1637517728', '2021-11-22 02:02:08', '2021-11-22 02:02:08'),
(130, '803134204', '1637517837', '2021-11-22 02:03:57', '2021-11-22 02:03:57'),
(131, '803134204', '1637517837', '2021-11-22 02:03:57', '2021-11-22 02:03:57'),
(132, '803134204', '1637517837', '2021-11-22 02:03:57', '2021-11-22 02:03:57'),
(133, '803134204', '1637517896', '2021-11-22 02:04:56', '2021-11-22 02:04:56'),
(134, '803134204', '1637517896', '2021-11-22 02:04:56', '2021-11-22 02:04:56'),
(135, '803134204', '1637517896', '2021-11-22 02:04:56', '2021-11-22 02:04:56'),
(136, '803134204', '1637517967', '2021-11-22 02:06:07', '2021-11-22 02:06:07'),
(137, '803134204', '1637517967', '2021-11-22 02:06:07', '2021-11-22 02:06:07'),
(138, '803134204', '1637517967', '2021-11-22 02:06:07', '2021-11-22 02:06:07'),
(139, '803134204', '1637518003', '2021-11-22 02:06:43', '2021-11-22 02:06:43'),
(140, '803134204', '1637518003', '2021-11-22 02:06:43', '2021-11-22 02:06:43'),
(141, '803134204', '1637518003', '2021-11-22 02:06:43', '2021-11-22 02:06:43'),
(142, '803134204', '1637518070', '2021-11-22 02:07:50', '2021-11-22 02:07:50'),
(143, '803134204', '1637518070', '2021-11-22 02:07:50', '2021-11-22 02:07:50'),
(144, '803134204', '1637518070', '2021-11-22 02:07:50', '2021-11-22 02:07:50'),
(145, '803134204', '1637518099', '2021-11-22 02:08:19', '2021-11-22 02:08:19'),
(146, '803134204', '1637518099', '2021-11-22 02:08:19', '2021-11-22 02:08:19'),
(147, '803134204', '1637518099', '2021-11-22 02:08:19', '2021-11-22 02:08:19'),
(148, '803134204', '1637518120', '2021-11-22 02:08:40', '2021-11-22 02:08:40'),
(149, '803134204', '1637518120', '2021-11-22 02:08:40', '2021-11-22 02:08:40'),
(150, '803134204', '1637518120', '2021-11-22 02:08:40', '2021-11-22 02:08:40'),
(151, '803134204', '1637520478', '2021-11-22 02:47:58', '2021-11-22 02:47:58'),
(152, '803134204', '1637520478', '2021-11-22 02:47:58', '2021-11-22 02:47:58'),
(153, '803134204', '1637520478', '2021-11-22 02:47:58', '2021-11-22 02:47:58'),
(154, '803134204', '1637520501', '2021-11-22 02:48:21', '2021-11-22 02:48:21'),
(155, '803134204', '1637520501', '2021-11-22 02:48:22', '2021-11-22 02:48:22'),
(156, '803134204', '1637520501', '2021-11-22 02:48:22', '2021-11-22 02:48:22'),
(157, '803134204', '1637520578', '2021-11-22 02:49:38', '2021-11-22 02:49:38'),
(158, '803134204', '1637520578', '2021-11-22 02:49:38', '2021-11-22 02:49:38'),
(159, '803134204', '1637520578', '2021-11-22 02:49:38', '2021-11-22 02:49:38'),
(160, '803134204', '1637520618', '2021-11-22 02:50:18', '2021-11-22 02:50:18'),
(161, '803134204', '1637520618', '2021-11-22 02:50:18', '2021-11-22 02:50:18'),
(162, '803134204', '1637520618', '2021-11-22 02:50:18', '2021-11-22 02:50:18'),
(163, '803134204', '1637521170', '2021-11-22 02:59:30', '2021-11-22 02:59:30'),
(164, '803134204', '1637521170', '2021-11-22 02:59:30', '2021-11-22 02:59:30'),
(165, '803134204', '1637521170', '2021-11-22 02:59:30', '2021-11-22 02:59:30'),
(166, '803134204', '1637521293', '2021-11-22 03:01:33', '2021-11-22 03:01:33'),
(167, '803134204', '1637521293', '2021-11-22 03:01:33', '2021-11-22 03:01:33'),
(168, '803134204', '1637521293', '2021-11-22 03:01:33', '2021-11-22 03:01:33'),
(169, '803134204', '1637521401', '2021-11-22 03:03:21', '2021-11-22 03:03:21'),
(170, '803134204', '1637521401', '2021-11-22 03:03:21', '2021-11-22 03:03:21'),
(171, '803134204', '1637521401', '2021-11-22 03:03:21', '2021-11-22 03:03:21'),
(172, '803134204', '1637608070', '2021-11-23 03:07:52', '2021-11-23 03:07:52'),
(173, '803134204', '1637608070', '2021-11-23 03:07:52', '2021-11-23 03:07:52'),
(174, '803134204', '1637608070', '2021-11-23 03:07:52', '2021-11-23 03:07:52'),
(175, '803134204', '1637608123', '2021-11-23 03:08:43', '2021-11-23 03:08:43'),
(176, '803134204', '1637608123', '2021-11-23 03:08:43', '2021-11-23 03:08:43'),
(177, '803134204', '1637608123', '2021-11-23 03:08:43', '2021-11-23 03:08:43'),
(178, '803134204', '1637608197', '2021-11-23 03:09:57', '2021-11-23 03:09:57'),
(179, '803134204', '1637608197', '2021-11-23 03:09:57', '2021-11-23 03:09:57'),
(180, '803134204', '1637608197', '2021-11-23 03:09:57', '2021-11-23 03:09:57'),
(181, '803134204', '1637608230', '2021-11-23 03:10:30', '2021-11-23 03:10:30'),
(182, '803134204', '1637608230', '2021-11-23 03:10:30', '2021-11-23 03:10:30'),
(183, '803134204', '1637608230', '2021-11-23 03:10:30', '2021-11-23 03:10:30'),
(184, '803134204', '1637608261', '2021-11-23 03:11:01', '2021-11-23 03:11:01'),
(185, '803134204', '1637608261', '2021-11-23 03:11:01', '2021-11-23 03:11:01'),
(186, '803134204', '1637608261', '2021-11-23 03:11:01', '2021-11-23 03:11:01'),
(187, '803134204', '1637608272', '2021-11-23 03:11:13', '2021-11-23 03:11:13'),
(188, '803134204', '1637608272', '2021-11-23 03:11:13', '2021-11-23 03:11:13'),
(189, '803134204', '1637608272', '2021-11-23 03:11:13', '2021-11-23 03:11:13'),
(190, '803134204', '1637608289', '2021-11-23 03:11:29', '2021-11-23 03:11:29'),
(191, '803134204', '1637608289', '2021-11-23 03:11:29', '2021-11-23 03:11:29'),
(192, '803134204', '1637608289', '2021-11-23 03:11:29', '2021-11-23 03:11:29'),
(193, '803134204', '1638017809', '2021-11-27 20:56:51', '2021-11-27 20:56:51'),
(194, '803134204', '1638017809', '2021-11-27 20:56:51', '2021-11-27 20:56:51'),
(195, '803134204', '1638017809', '2021-11-27 20:56:51', '2021-11-27 20:56:51'),
(196, '803134204', '1638018091', '2021-11-27 21:01:31', '2021-11-27 21:01:31'),
(197, '803134204', '1638018091', '2021-11-27 21:01:31', '2021-11-27 21:01:31'),
(198, '803134204', '1638018091', '2021-11-27 21:01:31', '2021-11-27 21:01:31'),
(199, '803134204', '1638019215', '2021-11-27 21:20:15', '2021-11-27 21:20:15'),
(200, '803134204', '1638019215', '2021-11-27 21:20:15', '2021-11-27 21:20:15'),
(201, '803134204', '1638019215', '2021-11-27 21:20:15', '2021-11-27 21:20:15'),
(202, '803134204', '1638019337', '2021-11-27 21:22:17', '2021-11-27 21:22:17'),
(203, '803134204', '1638019337', '2021-11-27 21:22:17', '2021-11-27 21:22:17'),
(204, '803134204', '1638019337', '2021-11-27 21:22:17', '2021-11-27 21:22:17'),
(205, '33333', '1638019431', '2021-11-27 21:23:51', '2021-11-27 21:23:51'),
(206, '77777', '1638019431', '2021-11-27 21:23:51', '2021-11-27 21:23:51'),
(207, '803134204', '1638019431', '2021-11-27 21:23:51', '2021-11-27 21:23:51'),
(208, '77777', '1638019513', '2021-11-27 21:25:14', '2021-11-27 21:25:14'),
(209, '33333', '1638019513', '2021-11-27 21:25:14', '2021-11-27 21:25:14'),
(210, '803134204', '1638019513', '2021-11-27 21:25:14', '2021-11-27 21:25:14'),
(211, '803134204', '1638019573', '2021-11-27 21:26:13', '2021-11-27 21:26:13'),
(212, '33333', '1638019573', '2021-11-27 21:26:13', '2021-11-27 21:26:13'),
(213, '77777', '1638019573', '2021-11-27 21:26:13', '2021-11-27 21:26:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_email_verified` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `active`, `remember_token`, `created_at`, `updated_at`, `is_email_verified`) VALUES
(1, 'admin', 'admin@aa.co', NULL, '$2y$10$5vu6rpagIjPcW5b2fAFfU.0BrzpUPjfjhBgdNLKHcaCOf.dqB9lHC', 1, NULL, '2021-09-06 01:54:46', '2021-09-12 02:47:35', 1),
(2, 'asa@tt.ty', 'asa@tt.ty', NULL, '$2y$10$nU6lSud8wvDrFautu3eeyu8I50.dKx9NE6kZOd.YnnqrdGtmSLjOa', 1, NULL, '2021-09-06 02:12:05', '2021-09-12 02:47:35', 0),
(3, 'test', 'test@tt.tt', NULL, '$2y$10$oC6E78XyBDt9lb/WIUSMsuJFwRBYkEJR9G5q7p6dhFxsyexNGZddq', 1, NULL, '2021-09-07 23:51:41', '2021-09-12 02:47:35', 0),
(4, 'uuu2', 'uu@uu.oo', NULL, '$2y$10$BFDDBX31yPwNiECplBxs.OqrCHmSNaUhImR8JD/ZRRoUFL2Qe/jgS', 1, NULL, '2021-09-08 01:48:14', '2021-09-12 02:48:41', 0),
(5, 'aa', 'aa@aa.aa', NULL, '$2y$10$fzGxXq4/LoNISBehRl0dle6PJql9nQHl/gFMnu/Q4rXzCZi69gE/u', 1, NULL, '2021-09-09 19:23:56', '2021-09-12 02:47:35', 0),
(6, 'client 1 ', 'client1@aa.co', NULL, '$2y$10$g4G0duncfZVVRDOx0L0Y1eMrga5OMeOqbAMHOXekz2bsZ2E23layS', 1, NULL, '2021-09-12 23:37:20', '2021-09-12 23:37:20', 0),
(7, 'cl2 ', 'cl2@aa.co', NULL, '$2y$10$k7mvMNT1T3tl7qNXiCdndOcxjoBjG867YYh4NFLNrO5/6HrSjqqmi', 1, NULL, '2021-09-12 23:47:22', '2021-09-12 23:47:22', 0),
(8, 'c3 ', 'client1@aa.co', NULL, '$2y$10$xDvnHpq6dVUceJMHQr41KecB2nCf9FNPdpvGXPyZnJBIvu/OTJLwy', 1, NULL, '2021-09-12 23:49:58', '2021-09-12 23:49:58', 0),
(9, 'ass ', 'client1@aa.co', NULL, '$2y$10$fhkFgAmngohVW3z2esMz7eUukLKfjcE26EPh/c7b5DwkWqCux6bF.', 1, NULL, '2021-09-12 23:50:49', '2021-09-12 23:50:49', 0),
(21, 'عبد الرحمن ', 'abdalrahmanabunada90@gmail.com', NULL, '$2y$10$fKMBpuFNqimwpgozk6SaB.dEWEZcoK1DNfrYf3ehtko0lwYIOxkqi', 1, NULL, '2021-09-19 16:50:04', '2021-09-19 16:50:42', 1),
(20, 'zxxz ', 'abdalrahmanabunada91@gmail.com', NULL, '$2y$10$QhprR7.OfcDukpdiDQ.TyO86aGtm8QK2EYH7Ouy4goAndlzeGb5ly', 1, NULL, '2021-09-15 00:57:12', '2021-09-15 00:57:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_links`
--

DROP TABLE IF EXISTS `users_links`;
CREATE TABLE IF NOT EXISTS `users_links` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `links_id` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_links`
--

INSERT INTO `users_links` (`id`, `users_id`, `links_id`, `created_at`, `updated_at`) VALUES
(115, 1, 14, '2021-09-12 02:22:41', '2021-09-12 02:22:41'),
(114, 1, 13, '2021-09-12 02:22:41', '2021-09-12 02:22:41'),
(113, 1, 12, '2021-09-12 02:22:41', '2021-09-12 02:22:41'),
(112, 1, 11, '2021-09-12 02:22:41', '2021-09-12 02:22:41'),
(111, 1, 10, '2021-09-12 02:22:41', '2021-09-12 02:22:41'),
(110, 1, 9, '2021-09-12 02:22:41', '2021-09-12 02:22:41'),
(109, 1, 8, '2021-09-12 02:22:41', '2021-09-12 02:22:41'),
(108, 1, 7, '2021-09-12 02:22:41', '2021-09-12 02:22:41'),
(107, 1, 6, '2021-09-12 02:22:41', '2021-09-12 02:22:41'),
(106, 1, 5, '2021-09-12 02:22:41', '2021-09-12 02:22:41'),
(105, 1, 4, '2021-09-12 02:22:41', '2021-09-12 02:22:41'),
(104, 1, 3, '2021-09-12 02:22:41', '2021-09-12 02:22:41'),
(103, 1, 2, '2021-09-12 02:22:41', '2021-09-12 02:22:41'),
(102, 1, 1, '2021-09-12 02:22:41', '2021-09-12 02:22:41'),
(79, 4, 9, '2021-09-08 01:48:43', '2021-09-08 01:48:43'),
(78, 4, 8, '2021-09-08 01:48:43', '2021-09-08 01:48:43'),
(77, 2, 3, '2021-09-08 01:38:58', '2021-09-08 01:38:58'),
(76, 2, 10, '2021-09-08 01:38:58', '2021-09-08 01:38:58'),
(75, 2, 11, '2021-09-08 01:38:58', '2021-09-08 01:38:58'),
(74, 2, 8, '2021-09-08 01:38:58', '2021-09-08 01:38:58'),
(73, 2, 9, '2021-09-08 01:38:58', '2021-09-08 01:38:58'),
(72, 2, 7, '2021-09-08 01:38:58', '2021-09-08 01:38:58'),
(71, 2, 4, '2021-09-08 01:38:58', '2021-09-08 01:38:58'),
(70, 2, 5, '2021-09-08 01:38:58', '2021-09-08 01:38:58'),
(69, 2, 6, '2021-09-08 01:38:58', '2021-09-08 01:38:58'),
(68, 2, 1, '2021-09-08 01:38:58', '2021-09-08 01:38:58'),
(67, 2, 2, '2021-09-08 01:38:58', '2021-09-08 01:38:58'),
(116, 1, 16, '2021-09-12 02:22:41', '2021-09-12 02:22:41');

-- --------------------------------------------------------

--
-- Table structure for table `users_verify`
--

DROP TABLE IF EXISTS `users_verify`;
CREATE TABLE IF NOT EXISTS `users_verify` (
  `user_id` int(11) NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_verify`
--

INSERT INTO `users_verify` (`user_id`, `token`, `created_at`, `updated_at`) VALUES
(11, 'udBlki7tsqwQOx0CRXpOXscKFQaoFuHJvxotXPnCGBhuM2s41qCblCUklhPro5ay', '2021-09-14 23:59:43', '2021-09-14 23:59:43'),
(12, 'Ebgew5SxkYwUeDNcNThfkoc50BWq9l08hRZC1OmVQqltq5hm3zvzajUJntFhmlAN', '2021-09-15 00:02:05', '2021-09-15 00:02:05'),
(13, 'psgllTPphqmUD9NsaIEZWpckWTWLkad6O3cmr92ZD7wqJBAbBgOlk4iojmIREdeg', '2021-09-15 00:04:21', '2021-09-15 00:04:21'),
(14, 'dtwYfURlvVv0SRFL2hdYLhWAxDqtwdRgmHCIrkQCS1qCZWCcW5Cc4Q6NG1eE9qhJ', '2021-09-15 00:10:56', '2021-09-15 00:10:56'),
(15, '0BEoe4UVJIRZtxYRX6nDIPOqpv9Dfyt6O4LlR7CT1fpJCcFM7ztz2KNyRFvtCY2d', '2021-09-15 00:15:40', '2021-09-15 00:15:40'),
(16, '6NqS872Yrejh1m9kiBnb4at0sUDF1HU53NwmmQqn1CVdXW1BvccBuwNK9v3gXCCl', '2021-09-15 00:16:41', '2021-09-15 00:16:41'),
(17, '3r1KNKERbhFmuHiOSzjRHISsmOiBPXDd2vTH54UaK40ZkiF2H623KQu0iwaQbYYF', '2021-09-15 00:34:21', '2021-09-15 00:34:21'),
(18, 'bUrMGT3pPrBVGfD1QhbCVKG6t5SGOBCd3cxjL4AwyryGQn8nZKV1IbS8Xn9CVD4q', '2021-09-15 00:53:02', '2021-09-15 00:53:02'),
(19, '9Hrvtv13JUd8YRUs4bxvW9uCWg13rW1STs5Y0s5UyNNFIcYp8X2b2Jeej2JLlWPV', '2021-09-15 00:55:10', '2021-09-15 00:55:10'),
(20, 'ax2bXQ2g20ZQ9j8gRzqI0qK0MdjEFKcUNQVzFat8Ag0qor5Gv0E7rwjds1crwz2U', '2021-09-15 00:57:12', '2021-09-15 00:57:12'),
(21, 'VCHFQMyrkobx6kqvjDMeYNkL6nmA4zHdKbrw2ty8GL1SYGlJ7dUeYu64iQHPsBN8', '2021-09-19 16:50:04', '2021-09-19 16:50:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_rols`
--

DROP TABLE IF EXISTS `user_rols`;
CREATE TABLE IF NOT EXISTS `user_rols` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0',
  `roles_id` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_rols`
--

INSERT INTO `user_rols` (`id`, `users_id`, `roles_id`, `created_at`, `updated_at`) VALUES
(78, 3, 2, '2021-09-10 18:19:21', '2021-09-10 18:19:21'),
(46, 4, 2, '2021-09-08 01:48:35', '2021-09-08 01:48:35'),
(38, 1, 2, '2021-09-07 20:46:56', '2021-09-07 20:46:56'),
(37, 1, 1, '2021-09-07 20:46:56', '2021-09-07 20:46:56'),
(77, 3, 1, '2021-09-10 18:19:21', '2021-09-10 18:19:21'),
(35, 2, 1, '2021-09-06 19:28:29', '2021-09-06 19:28:29'),
(79, 15, 2, '2021-09-15 00:15:40', '2021-09-15 00:15:40'),
(80, 16, 2, '2021-09-15 00:16:41', '2021-09-15 00:16:41'),
(81, 17, 2, '2021-09-15 00:34:21', '2021-09-15 00:34:21'),
(82, 18, 2, '2021-09-15 00:53:02', '2021-09-15 00:53:02'),
(83, 19, 2, '2021-09-15 00:55:10', '2021-09-15 00:55:10'),
(84, 20, 2, '2021-09-15 00:57:12', '2021-09-15 00:57:12'),
(85, 21, 2, '2021-09-19 16:50:04', '2021-09-19 16:50:04');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
