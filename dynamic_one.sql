-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2019 at 01:08 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dynamic_one`
--

-- --------------------------------------------------------

--
-- Table structure for table `image_libraries`
--

CREATE TABLE `image_libraries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1 for image 2 for video',
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_libraries`
--

INSERT INTO `image_libraries` (`id`, `user_id`, `type`, `path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '/uploads/0000/02_1565328454.jpg', '2019-08-08 23:57:34', '2019-08-08 23:57:34', NULL),
(2, 1, 1, '/uploads/0000/04_1565328721.jpg', '2019-08-09 00:02:01', '2019-08-09 00:02:01', NULL),
(3, 1, 1, '/uploads/0000/logo_1565328783.png', '2019-08-09 00:03:03', '2019-08-09 00:03:03', NULL),
(4, 1, 1, '/uploads/0000/bc_1565329637.jpg', '2019-08-09 00:17:17', '2019-08-09 00:17:17', NULL),
(5, 1, 1, '/uploads/0000/favicon_1565330494.ico', '2019-08-09 00:31:34', '2019-08-09 00:31:34', NULL),
(6, 1, 1, '/uploads/0000/logo_1565330652.png', '2019-08-09 00:34:12', '2019-08-09 00:34:12', NULL),
(7, 1, 1, '/uploads/0000/image_2019_07_26T11_23_27_664Z_1565330929.png', '2019-08-09 00:38:49', '2019-08-09 00:38:49', NULL),
(8, 1, 1, '/uploads/0000/02_1565605991.jpg', '2019-08-12 05:03:11', '2019-08-12 05:03:11', NULL),
(9, 1, 1, '/uploads/0000/04_1565606031.jpg', '2019-08-12 05:03:51', '2019-08-12 05:03:51', NULL),
(10, 1, 1, '/uploads/0000/4_1567505700.jpg', '2019-09-03 04:45:00', '2019-09-03 04:45:00', NULL),
(11, 1, 1, '/uploads/0000/digvijayvaghela_1567505741.jpg', '2019-09-03 04:45:41', '2019-09-03 04:45:41', NULL),
(12, 1, 1, '/uploads/0000/prakaashslider3_1567505772.png', '2019-09-03 04:46:12', '2019-09-03 04:46:12', NULL),
(13, 1, 1, '/uploads/0000/sandeep_singh_1567505787.jpg', '2019-09-03 04:46:27', '2019-09-03 04:46:27', NULL),
(14, 1, 1, '/uploads/0000/team2_1567505827.jpg', '2019-09-03 04:47:07', '2019-09-03 04:47:07', NULL),
(15, 1, 1, '/uploads/0000/portfolio_4_1567505836.png', '2019-09-03 04:47:16', '2019-09-03 04:47:16', NULL),
(16, 1, 1, '/uploads/0000/bg10_1567505867.jpg', '2019-09-03 04:47:47', '2019-09-03 04:47:47', NULL),
(17, 1, 1, '/uploads/0000/wa1_1567505879.png', '2019-09-03 04:47:59', '2019-09-03 04:47:59', NULL),
(18, 1, 1, '/uploads/0000/2xxx_1568193167.jpg', '2019-09-11 03:42:47', '2019-09-11 03:42:47', NULL),
(19, 1, 1, '/uploads/0000/slider5_1568295245.jpg', '2019-09-12 08:04:05', '2019-09-12 08:04:05', NULL),
(20, 1, 1, '/uploads/0000/1537609070_1568350270.png', '2019-09-12 23:21:10', '2019-09-12 23:21:10', NULL),
(21, 1, 1, '/uploads/0000/1537608559_1568350295.png', '2019-09-12 23:21:35', '2019-09-12 23:21:35', NULL),
(22, 1, 1, '/uploads/0000/color-cool-wallpaper-dark-green-808510_1568357201.jpg', '2019-09-13 01:16:41', '2019-09-13 01:16:41', NULL);

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
(3, '2019_08_09_050313_create_image_libraries_table', 2);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'DV', 'dv@gmail.com', NULL, '$2y$10$6M8dlTPjn7vAovh5gb6xtOLx7WIlL3.w8lIqQ7EzlbNjPU7icSxWi', NULL, '2019-09-24 03:19:28', '2019-09-24 03:19:28');

-- --------------------------------------------------------

--
-- Table structure for table `user_books`
--

CREATE TABLE `user_books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `front_cover` longtext COLLATE utf8mb4_unicode_ci,
  `inside_front_cover` longtext COLLATE utf8mb4_unicode_ci,
  `inside_back_cover` longtext COLLATE utf8mb4_unicode_ci,
  `back_cover` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_books`
--

INSERT INTO `user_books` (`id`, `user_id`, `front_cover`, `inside_front_cover`, `inside_back_cover`, `back_cover`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, 'a:5:{s:10:\"columnName\";s:11:\"front_cover\";s:12:\"defaultImage\";s:15:\"images/logo.png\";s:10:\"AddedImage\";N;s:8:\"textLogo\";N;s:14:\"checkboxChoose\";s:7:\"default\";}', 'a:6:{s:10:\"columnName\";s:18:\"inside_front_cover\";s:15:\"ifcProfileimage\";a:1:{i:0;a:3:{s:18:\"ifcProfileChooseDb\";s:8:\"addMedia\";s:14:\"defaultProfile\";s:22:\"images/profile_pic.jpg\";s:15:\"NewAddedProfile\";s:36:\"/uploads/0000/favicon_1565330494.ico\";}}s:13:\"ifcBelowImage\";a:1:{i:0;a:3:{s:21:\"ifcBelowimageChooseDb\";s:8:\"addMedia\";s:16:\"defaultBelowLogo\";s:22:\"images/footer_logo.png\";s:17:\"NewAddedBelowLogo\";s:59:\"/uploads/0000/image_2019_07_26T11_23_27_664Z_1565330929.png\";}}s:12:\"ifcSignature\";a:1:{i:0;a:3:{s:20:\"ifcSignatureChooseDb\";s:8:\"addMedia\";s:21:\"defaultSignatureImage\";s:20:\"images/signature.png\";s:22:\"NewAddedSignatureImage\";s:59:\"/uploads/0000/image_2019_07_26T11_23_27_664Z_1565330929.png\";}}s:11:\"profileText\";a:1:{i:0;a:15:{s:12:\"ifcTitleText\";s:1:\"1\";s:14:\"ifcCompanyName\";s:1:\"2\";s:12:\"designation1\";s:1:\"3\";s:12:\"designation2\";s:1:\"4\";s:12:\"designation3\";s:1:\"5\";s:17:\"designationTitle1\";s:1:\"6\";s:17:\"designationTitle2\";s:1:\"7\";s:17:\"designationTitle3\";s:1:\"8\";s:17:\"designationTitle4\";s:1:\"9\";s:11:\"addressIfc1\";s:2:\"10\";s:14:\"directPhoneIfc\";s:2:\"11\";s:11:\"officePhone\";s:2:\"12\";s:13:\"websiteUrlIfc\";s:2:\"13\";s:8:\"emailIfc\";s:2:\"14\";s:11:\"stNumberIfc\";s:2:\"15\";}}s:17:\"right_ifc_content\";s:1370:\"Greetings <br><br>The chill in the air will soon give way to the spontaneous showers of early spring. “Do I need a coat? A jacket? A trench? Umbrella?” Transitional periods can be challenging. The key is to approach each day prepared for as many scenarios as possible. Just as it’s our goal to present financial options to help you reach future goals, this edition of ONE, The Style Issue, offers exclusive essentials perfect for elevating your lifestyle today. <br><br> “Dress You Up” provides tips applicable to everyone’s wardrobe and individual aesthetic. Serving as a sartorial assistant, this fashion feature guides you away from trends and toward personalized classic style. Think Katharine Hepburn’s contemporary fashion parade in the 1938 film Holiday and Colin Firth’s impeccably tailored suiting in 2014’s Kingsman: The Secret Service. <br><br> And the highly anticipated and fantastically stylish Kentucky Derby is run every year on the first Saturday in May. So, for those who can’t make it to Churchill Downs, the Celebrate section presents everything you need to throw “The Perfect Derby Affair” (fascinators not included).<br><br> As you embrace this season, remember that we are here to assist you in building your financial foundation, one that will enable you to maintain your life in whatever style you wish.<br><br>Sincerely,\";}', 'a:5:{s:10:\"columnName\";s:17:\"inside_back_cover\";s:15:\"IbcAddressInput\";a:1:{i:0;a:8:{s:12:\"ibcTitleText\";s:1:\"1\";s:18:\"ibcCompanyNameText\";s:1:\"2\";s:14:\"ibcAddressText\";s:1:\"3\";s:15:\"ibcAddressText1\";s:1:\"4\";s:19:\"ibcOfficeNumberText\";s:1:\"5\";s:18:\"ibcPhoneNumberText\";s:1:\"6\";s:14:\"ibcWebsiteText\";s:1:\"7\";s:12:\"ibcEmailText\";s:1:\"8\";}}s:10:\"ibcProfile\";a:1:{i:0;a:3:{s:18:\"ibcProfileChooseDb\";s:8:\"addMedia\";s:19:\"defaultProfileImage\";s:22:\"images/profile_pic.jpg\";s:15:\"NewAddedProfile\";s:36:\"/uploads/0000/favicon_1565330494.ico\";}}s:7:\"ibcLogo\";a:1:{i:0;a:3:{s:15:\"ibcLogoChooseDb\";s:8:\"addMedia\";s:16:\"defaultLogoImage\";s:19:\"images/ibc_logo.png\";s:12:\"NewAddedLogo\";s:33:\"/uploads/0000/logo_1565328783.png\";}}s:11:\"insideBcImg\";a:1:{i:0;a:3:{s:20:\"insideIbcImgChooseDb\";s:8:\"addMedia\";s:18:\"defaultBannerImage\";s:18:\"images/ibc_img.jpg\";s:14:\"NewAddedBanner\";s:59:\"/uploads/0000/image_2019_07_26T11_23_27_664Z_1565330929.png\";}}}', 'a:5:{s:10:\"columnName\";s:10:\"back_cover\";s:15:\"bcHeaderContent\";a:1:{i:0;a:5:{s:17:\"bcTitleHeaderText\";s:13:\"sasasaasassas\";s:21:\"bcAddressHeaderBcText\";s:15:\"sasasasassasasa\";s:22:\"bcAddressHeaderBc1Text\";s:6:\"sasasa\";s:16:\"bcCityHeaderText\";s:6:\"sasasa\";s:19:\"bcCountryHeaderText\";s:7:\"sasasas\";}}s:13:\"bcHeaderImage\";a:1:{i:0;a:3:{s:22:\"defaultBcLogoImagePath\";s:15:\"images/logo.png\";s:15:\"imageBcLogoPath\";N;s:20:\"bcLogoChooseCheckBox\";s:7:\"default\";}}s:15:\"bcFooterContent\";a:1:{i:0;a:8:{s:11:\"bcTitleText\";s:7:\"dddsasa\";s:17:\"bcCompanyNameText\";s:6:\"sasasa\";s:13:\"bcAddressText\";s:5:\"sasas\";s:14:\"bcAddressText1\";s:5:\"asasa\";s:18:\"bcOfficeNumberText\";s:8:\"sasasasa\";s:17:\"bcPhoneNumberText\";s:32:\"asasasasa11111111111111111111111\";s:13:\"bcWebsiteText\";s:21:\"asasas222222222222222\";s:11:\"bcEmailText\";s:23:\"asasasasas4444444444444\";}}s:13:\"bcFooterImage\";a:1:{i:0;a:3:{s:25:\"defaultBcProfileImagePath\";s:22:\"images/profile_pic.jpg\";s:18:\"imageBcProfilePath\";s:31:\"/uploads/0000/04_1565328721.jpg\";s:23:\"bcProfileChooseCheckBox\";s:8:\"addMedia\";}}}', '2019-09-24 06:03:32', '2019-09-27 05:04:24', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image_libraries`
--
ALTER TABLE `image_libraries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_books`
--
ALTER TABLE `user_books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image_libraries`
--
ALTER TABLE `image_libraries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_books`
--
ALTER TABLE `user_books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
