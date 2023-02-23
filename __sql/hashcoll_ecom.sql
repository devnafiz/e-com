-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 23, 2023 at 03:55 PM
-- Server version: 8.0.32
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hashcoll_ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_photo_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `blog` int DEFAULT NULL,
  `setting` int DEFAULT NULL,
  `returnorder` int DEFAULT NULL,
  `review` int DEFAULT NULL,
  `orders` int DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `reports` int DEFAULT NULL,
  `alluser` int DEFAULT NULL,
  `adminuserrole` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brand` int DEFAULT NULL,
  `category` int DEFAULT NULL,
  `product` int DEFAULT NULL,
  `slider` int DEFAULT NULL,
  `coupons` int DEFAULT NULL,
  `shipping` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `remember_token`, `current_team_id`, `type`, `profile_photo_path`, `blog`, `setting`, `returnorder`, `review`, `orders`, `stock`, `reports`, `alluser`, `adminuserrole`, `created_at`, `updated_at`, `brand`, `category`, `product`, `slider`, `coupons`, `shipping`) VALUES
(1, 'Admin', 'admin@gmail.com', '2022-08-29 23:55:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'CLuGciuqaN', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-29 23:55:25', '2022-08-29 23:55:25', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'nafiz', 'nafiz106@gmail.com', NULL, '$2y$10$HsGXPTniWAGaW.bf0XQm8eFKcWiS/jBJWEdLwk.6V6b78cptbesXq', '01973636', NULL, NULL, '2', 'upload/admin_images/1758614983753599.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-02-23 04:22:22', NULL, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `position_id`, `image`, `width`, `height`, `status`, `created_at`, `updated_at`) VALUES
(1, 'first bannner', 3, '63ee11c7f2b28.jpg', '200', '100', 1, NULL, '2023-02-18 04:59:12'),
(2, 'sendd bannera', 2, '63ee11b571f6c.jpg', '200', '100', 1, NULL, '2023-02-16 05:51:25'),
(3, 'home page banner one', 1, '63ee119fc27cb.jpg', '400', '100', 1, NULL, '2023-02-18 04:59:40'),
(4, 'logo One', 6, '63f5a41dbea50.png', NULL, NULL, 1, NULL, NULL),
(5, 'logo two', 6, '63f5a42fb0697.png', NULL, NULL, 1, NULL, NULL),
(6, 'logo three', 6, '63f5a44189beb.png', NULL, NULL, 1, NULL, NULL),
(7, 'logo four', 6, '63f5a46943455.png', NULL, NULL, 1, NULL, NULL),
(8, 'shop head banner', 4, '63f5ba4c98055.jpg', NULL, NULL, 1, NULL, NULL),
(9, 'barnd  bnner', 5, '63f5d325e8214.jpeg', NULL, NULL, 1, NULL, '2023-02-22 03:02:37'),
(11, 'New Product', 7, '63f70a05890bb.jpg', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banner_positions`
--

CREATE TABLE `banner_positions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_positions`
--

INSERT INTO `banner_positions` (`id`, `name`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, ' Home Page First Banner', 'home One', 1, NULL, NULL),
(2, 'Home page banner two', 'banner two', 1, NULL, NULL),
(3, 'Home page banner three', 'banner three', 1, NULL, NULL),
(4, 'Shop page banner', 'shop page top', 1, NULL, NULL),
(5, 'brand page banner', 'brand', 1, NULL, NULL),
(6, 'Footer Logo', 'Footer', 1, NULL, NULL),
(7, 'sub Category banner', 'sub Category ', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `post_title_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title_hin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug_hin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_details_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_details_hin` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `category_id`, `post_title_en`, `post_title_hin`, `post_slug_en`, `post_slug_hin`, `post_image`, `post_details_en`, `post_details_hin`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet', 'लोरेन इपसाम डलार सिट आमेट', 'lorem-ipsum-dolor-sit-amet', 'लोरेन-इपसाम-डलार-सिट-आमेट', 'upload/post/1745211713038316.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ornare ornare vehicula. Sed eu mi dolor. Praesent at tempus neque. Fusce vulputate quam id ipsum aliquet, non sollicitudin risus aliquet. Cras tincidunt ultrices enim id tincidunt. Fusce dui ipsum, sodales vitae aliquam vel, elementum eu tortor. Mauris velit ante, aliquet sed urna et, mollis sagittis purus.</p>\r\n\r\n<p>Pellentesque eget quam maximus, convallis elit sit amet, pellentesque ligula. Nulla id tempus nisi, quis fermentum est. Vestibulum sollicitudin ut orci nec aliquet. Phasellus ullamcorper lectus at accumsan viverra. Donec faucibus neque a enim laoreet tempus. Morbi dapibus vehicula malesuada. Proin lobortis, ex vitae faucibus sodales, massa metus posuere lectus, ac varius nulla felis vel diam. Nam vitae nunc quis nulla vestibulum elementum. Vivamus suscipit porttitor sem. Morbi malesuada enim ac ligula ullamcorper, pretium fermentum nulla condimentum.</p>\r\n\r\n<p>Sed in laoreet quam, quis egestas lectus. Aliquam sagittis id risus nec pharetra. Cras commodo, felis condimentum pharetra egestas, ligula tellus tempor enim, quis interdum erat arcu eu erat. Fusce neque arcu, ornare quis dolor sollicitudin, efficitur rhoncus arcu. Sed libero diam, vestibulum non orci sed, bibendum tristique velit. Nulla ut enim justo. Morbi semper orci lacus, nec auctor nibh pulvinar molestie. Ut porttitor nisi ullamcorper, fringilla diam vel, porta massa. Fusce consequat tincidunt orci, sit amet vestibulum diam placerat ut. Aenean venenatis diam id metus venenatis fringilla. Nullam nec euismod velit, a tincidunt mauris. Etiam fringilla cursus libero euismod finibus. Aliquam erat volutpat. Nullam congue nec ex vel maximus. Mauris mollis enim finibus pellentesque ultricies.</p>\r\n\r\n<p>Vivamus sit amet condimentum nisi. Fusce et vehicula arcu, eu feugiat leo. Cras a nisi felis. Donec dictum molestie faucibus. Proin mauris eros, porttitor sed faucibus vitae, ultrices id massa. Integer tincidunt eget ex a semper. Etiam mattis sem vel erat cursus, non tempor lorem pulvinar. Proin sit amet lorem molestie, molestie libero ut, elementum leo. Sed fermentum lacus id leo molestie vulputate. Curabitur luctus, odio ut viverra eleifend, quam nisi ultricies metus, in aliquam ex magna non tellus. Vivamus nibh ipsum, feugiat ut maximus condimentum, mattis eget dui. Donec rhoncus tincidunt mi, eu varius quam lacinia eu.</p>', '<pre>\r\nलोरेम इप्सम डोलर सिट एमेट, कॉन्सेक्टेटूर एडिपिसिसिंग एलीट। क्रास अलंकार अलंकृत वाहन। सेड यू मील डोलर। टेम्पस नेक पर प्रजेंट। फ्यूस वल्पुटेट क्वाम आईडी इप्सम एलिकेट, नॉन सॉलिसिटुडिन रिसस एलिकेट। क्रैस टिनसीडंट अल्ट्रिसेस एनिम आईडी टिनसीडंट। फ्यूस डुई इप्सम, सोडालेस विटे एलिकम वेल, एलीमेंटम ईयू टॉर्चर। मौरिस वेलिट एंटे, एलिकेट सेड उरना एट, मोलिस सैगिटिस पुरुस।\r\n\r\nपेलेंटेस्क एगेट क्वाम मैक्सिमस, कॉन्वलिस एलीट सिट एमेट, पेलेंटेस्क लिगुला। नुल्ला आईडी टेम्पस निसी, क्विस फेरमेंटम एस्ट। फेसेलस उलमकॉर्पर लेक्टस और एक्यूमसन विवरा। डोनेक फॉसीबस ने एक एनिम लॉरीट टेम्पस को तैयार किया। मोरबी दापीबस वाहन मलेसुदा। प्रोइन लोबोर्टिस, एक्स विटे फॉसीबस सोडालेस, मासा मेटस पॉसुरे लेक्टस, एसी वेरियस नाला फेलिस वेल डायम। नम विटे ननक क्विस नल्ला वेस्टिबुलम एलिमेंटम। विवामस सस्सिपिट पोर्टिटर सेम। मोरबी नरसुदा एनिम एसी लिगुला उलमकॉर्पर, प्रीटियम फेरमेंटम नल्ला कॉन्डिमेंटम।\r\n\r\nलॉरीट क्वाम में सेड, क्विस एस्टास लेक्टस। अलिकम धनु आईडी रिसस नेक फारेत्र। क्रैस कमोडो, फेलिस कॉन्डिमेंटम फेरेट्रा एगेस्टस, लिगुला टेलस टेम्पोर एनिम, क्विस इंटरडम एरेट आर्कू यू एरेट। फ्यूस नेक आर्कू, ऑरनारे क्विस डोलर सॉलिसिटुडिन, इफिसिटुर रोंकस आर्कू। सेड लिबरो डायम, वेस्टिबुलम नॉन ओर्सी सेड, बिबेंडम ट्रिस्टिक वेलिट। नुल्ला उट एनिम जस्टो। मोरबी सेम्पर ओर्सी लैकस, एनईसी ऑक्टर निभ पुल्विनर मोलेस्टी। यूटी पोर्टिटर निसी उलमकॉर्पर, फ्रिंजिला डायम वेल, पोर्टा मासा। फ्यूस कॉन्सेक्वेट टिनसीडंट ओर्सी, सिट एमेट वेस्टिबुलम डायम प्लेसरेट यूटी। ऐनीन वेनेनाटिस डायम आईडी मेटस वेनेनाटिस फ्रिंजिला। नुलम नेक ईयूस्मोड वेलिट, एक टिनसीडंट मौरिस। इटियम फ्रिंजिला कर्सस लिबरो यूइसमॉड फ़िनिबस। अलिकम इरेट वोल्पत। नुलम कोंगू एनईसी पूर्व वेल मैक्सिमस। मौरिस मोलिस एनिम फिनिबस पेलेंटेस्क अल्ट्रीसीज।\r\n\r\nविवामस सिट एमेट कॉन्डिमेंटम निसी। फ्यूस और व्हीकल आर्कू, ईयू फ्यूगिएट लियो। क्रैस ए निसी फेलिस। डोनेक डिक्टम मोलेस्टी फॉसीबस। प्रोइन मौरिस एरोस, पोर्टिटर सेड फॉसीबस विटे, अल्ट्रिस आईडी मासा। पूर्णांक टिनसीडंट ईगेट एक्स ए सेम्पर। एटियम मैटिस सेम वेल इरेट कर्सस, नॉन टेम्पोर लोरेम पुल्विनर। प्रोइन सिट एमेट लोरेम मोलेस्टी, मोलेस्टी लिबरो यूट, एलिमेंटम लियो। सेड फेरमेंटम लैकस आईडी लियो मोलेस्टी वल्पुटेट। क्युराबिटुर लक्टस, ओडियो यूट विवरा एलीफ़ेंड, क्वाम निसी अल्ट्रीसिस मेटस, एलिकम एक्स मैग्ना नॉन टेलस में</pre>', '2022-09-28 05:43:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_categories`
--

CREATE TABLE `blog_post_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `blog_category_name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_name_hin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_slug_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_slug_hin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_post_categories`
--

INSERT INTO `blog_post_categories` (`id`, `blog_category_name_en`, `blog_category_name_hin`, `blog_category_slug_en`, `blog_category_slug_hin`, `created_at`, `updated_at`) VALUES
(1, 'pant', 'pant', 'pant', 'pant', '2022-09-28 05:40:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `brand_name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_name_hin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_slug_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug_hin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name_en`, `brand_name_hin`, `brand_slug_en`, `brand_slug_hin`, `brand_image`, `created_at`, `updated_at`) VALUES
(3, 'Levi’s', 'Levi’s', 'levi’s', 'Levi’s', 'upload/brand/1747729906754188.jpg', NULL, NULL),
(4, 'Trap', 'Trap', 'trap', 'Trap', 'upload/brand/1747748312167151.jpg', NULL, NULL),
(5, 'Crinckle', 'Crinckle', 'crinckle', 'Crinckle', 'upload/brand/1747749161014491.jpg', NULL, NULL),
(6, 'Che Guevara', 'Che Guevara', 'che-guevara', 'Che-Guevara', 'upload/brand/1748731832984878.jpg', NULL, NULL),
(7, 'Korpiklaani', 'Korpiklaani', 'korpiklaani', 'Korpiklaani', 'upload/brand/1748734617031032.jpg', NULL, NULL),
(8, 'Black Veil Brides', 'Black Veil Brides', 'black-veil-brides', 'Black-Veil-Brides', 'upload/brand/1748738024924809.jpg', NULL, NULL),
(9, 'Money Talk', 'Money Talk', 'money-talk', 'Money-Talk', 'upload/brand/1750003906894014.jpg', NULL, NULL),
(10, 'Wall Street', 'Wall Street', 'wall-street', 'Wall-Street', 'upload/brand/1750007019984613.jpg', NULL, NULL),
(11, 'Jack Murphy', 'Jack Murphy', 'jack-murphy', 'Jack-Murphy', 'upload/brand/1750010116795280.jpg', NULL, NULL),
(12, 'Elite Sexy', 'Elite Sexy', 'elite-sexy', 'Elite-Sexy', 'upload/brand/1750010315941215.jpg', NULL, NULL),
(13, 'Blue Bolt', 'Blue Bolt', 'blue-bolt', 'Blue-Bolt', 'upload/brand/1750010629846921.jpg', NULL, NULL),
(14, 'APT', 'APT', 'apt', 'APT', 'upload/brand/1750010848771421.jpg', NULL, NULL),
(15, 'Daniel Christian', 'Daniel Christian', 'daniel-christian', 'Daniel-Christian', 'upload/brand/1750011349403799.jpg', NULL, NULL),
(16, 'Refind', 'Refind', 'refind', 'Refind', 'upload/brand/1750011459379512.jpg', NULL, NULL),
(17, 'Pepe Jeans London', 'Pepe Jeans London', 'pepe-jeans-london', 'Pepe-Jeans-London', 'upload/brand/1750011594486129.jpg', NULL, NULL),
(18, 'Eto Jeans', 'Eto Jeans', 'eto-jeans', 'Eto-Jeans', 'upload/brand/1750011746528589.jpg', NULL, NULL),
(19, 'AC/DC', 'AC/DC', 'ac-dc', 'AC/DC', 'upload/brand/1751445005083559.jpg', NULL, NULL),
(20, 'Aerosmith Ladies Fit', 'Aerosmith Ladies Fit', 'aerosmith-ladies-fit', 'Aerosmith-Ladies-Fit', 'upload/brand/1757798329582128.jpg', NULL, NULL),
(21, 'All Time Low', 'All Time Low', 'all-time-low', 'All-Time-Low', 'upload/brand/1757798520302794.jpg', NULL, NULL),
(22, 'Asking Alexandra', 'Asking Alexandra', 'asking-alexandra', 'Asking-Alexandra', 'upload/brand/1757878557594185.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_hin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug_hin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name_en`, `category_name_hin`, `category_slug_en`, `category_slug_hin`, `category_icon`, `created_at`, `updated_at`) VALUES
(1, 'T shirt', 'टी शर्ट', 't-shirt', 'टी-शर्ट', 'fa fa-', NULL, NULL),
(2, 'Cap', 'Cap', 'Cap', 'Cap', 'Cap', NULL, '2022-11-20 04:16:59'),
(3, 'Jeans/Pant', 'Jeans/Pant', 'jeans/pant', 'Jeans/Pant', 'Jeans/Pant', NULL, '2022-11-20 04:16:59');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `coupon_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_discount` int NOT NULL,
  `coupon_validity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_02_02_203839_create_sessions_table', 1),
(7, '2021_02_02_212221_create_admins_table', 1),
(8, '2021_02_09_054528_create_brands_table', 1),
(9, '2021_02_09_111701_create_categories_table', 1),
(10, '2021_02_09_121910_create_sub_categories_table', 1),
(11, '2021_02_16_183944_create_sub_sub_categories_table', 1),
(12, '2021_02_16_204006_create_products_table', 1),
(13, '2021_02_16_205349_create_multi_imgs_table', 1),
(14, '2021_02_20_204829_create_sliders_table', 1),
(15, '2021_03_02_194613_create_wishlists_table', 1),
(16, '2021_03_03_211157_create_coupons_table', 1),
(17, '2021_03_03_222308_create_ship_divisions_table', 1),
(18, '2021_03_09_183956_create_ship_districts_table', 1),
(19, '2021_03_09_194733_create_ship_states_table', 1),
(20, '2021_03_14_203654_create_orders_table', 1),
(21, '2021_03_14_203901_create_order_items_table', 1),
(22, '2021_03_24_183649_create_blog_post_categories_table', 1),
(23, '2021_03_24_194838_create_blog_posts_table', 1),
(24, '2021_03_24_223430_create_site_settings_table', 1),
(25, '2021_03_26_194141_create_seos_table', 1),
(26, '2021_03_27_192140_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE `multi_imgs` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `photo_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(11, 7, 'upload/products/multi-image/1747743514167770.jpg', '2022-10-26 04:25:01', NULL),
(12, 7, 'upload/products/multi-image/1747743514246471.jpg', '2022-10-26 04:25:01', NULL),
(13, 7, 'upload/products/multi-image/1747743514339326.jpg', '2022-10-26 04:25:01', NULL),
(14, 7, 'upload/products/multi-image/1747743514424755.jpg', '2022-10-26 04:25:01', NULL),
(15, 8, 'upload/products/multi-image/1747743739104868.jpg', '2022-10-26 04:28:35', NULL),
(16, 8, 'upload/products/multi-image/1747743739159480.jpg', '2022-10-26 04:28:35', NULL),
(17, 8, 'upload/products/multi-image/1747743739212346.jpg', '2022-10-26 04:28:35', NULL),
(18, 8, 'upload/products/multi-image/1747743739270419.jpg', '2022-10-26 04:28:35', NULL),
(19, 9, 'upload/products/multi-image/1747745265906547.jpg', '2022-10-26 04:52:51', NULL),
(20, 9, 'upload/products/multi-image/1747745265958700.jpg', '2022-10-26 04:52:51', NULL),
(21, 9, 'upload/products/multi-image/1747745266009569.jpg', '2022-10-26 04:52:51', NULL),
(22, 9, 'upload/products/multi-image/1747745266067182.jpg', '2022-10-26 04:52:51', NULL),
(23, 10, 'upload/products/multi-image/1747745537173247.jpg', '2022-10-26 04:57:10', NULL),
(24, 10, 'upload/products/multi-image/1747745537260890.jpg', '2022-10-26 04:57:10', NULL),
(25, 10, 'upload/products/multi-image/1747745537320293.jpg', '2022-10-26 04:57:10', NULL),
(26, 11, 'upload/products/multi-image/1747746040622519.jpg', '2022-10-26 05:05:10', NULL),
(27, 11, 'upload/products/multi-image/1747746040676227.jpg', '2022-10-26 05:05:10', NULL),
(28, 11, 'upload/products/multi-image/1747746040727959.jpg', '2022-10-26 05:05:10', NULL),
(29, 11, 'upload/products/multi-image/1747746040779389.jpg', '2022-10-26 05:05:10', NULL),
(30, 12, 'upload/products/multi-image/1747746672474185.jpg', '2022-10-26 05:15:13', NULL),
(31, 12, 'upload/products/multi-image/1747746672579126.jpg', '2022-10-26 05:15:13', NULL),
(32, 12, 'upload/products/multi-image/1747746672632676.jpg', '2022-10-26 05:15:13', NULL),
(33, 12, 'upload/products/multi-image/1747746672687879.jpg', '2022-10-26 05:15:13', NULL),
(34, 13, 'upload/products/multi-image/1747747004185274.jpg', '2022-10-26 05:20:29', NULL),
(35, 13, 'upload/products/multi-image/1747747004240440.jpg', '2022-10-26 05:20:29', NULL),
(36, 13, 'upload/products/multi-image/1747747004294145.jpg', '2022-10-26 05:20:29', NULL),
(37, 13, 'upload/products/multi-image/1747747004348572.jpg', '2022-10-26 05:20:29', NULL),
(38, 14, 'upload/products/multi-image/1747747159861800.jpg', '2022-10-26 05:22:58', NULL),
(39, 14, 'upload/products/multi-image/1747747159973564.jpg', '2022-10-26 05:22:58', NULL),
(40, 14, 'upload/products/multi-image/1747747160024718.jpg', '2022-10-26 05:22:58', NULL),
(41, 14, 'upload/products/multi-image/1747747160076727.jpg', '2022-10-26 05:22:58', NULL),
(42, 15, 'upload/products/multi-image/1747747350238583.jpg', '2022-10-26 05:25:59', NULL),
(43, 15, 'upload/products/multi-image/1747747350289701.jpg', '2022-10-26 05:25:59', NULL),
(44, 15, 'upload/products/multi-image/1747747350349000.jpg', '2022-10-26 05:25:59', NULL),
(45, 16, 'upload/products/multi-image/1747747590053786.jpg', '2022-10-26 05:29:48', NULL),
(46, 16, 'upload/products/multi-image/1747747590106303.jpg', '2022-10-26 05:29:48', NULL),
(47, 16, 'upload/products/multi-image/1747747590156950.jpg', '2022-10-26 05:29:48', NULL),
(48, 16, 'upload/products/multi-image/1747747590207883.jpg', '2022-10-26 05:29:48', NULL),
(49, 17, 'upload/products/multi-image/1747747781104982.jpg', '2022-10-26 05:32:50', NULL),
(50, 17, 'upload/products/multi-image/1747747781159289.jpg', '2022-10-26 05:32:50', NULL),
(51, 17, 'upload/products/multi-image/1747747781214206.jpg', '2022-10-26 05:32:50', NULL),
(52, 17, 'upload/products/multi-image/1747747781270320.jpg', '2022-10-26 05:32:50', NULL),
(53, 18, 'upload/products/multi-image/1747748597035452.jpg', '2022-10-26 05:45:48', NULL),
(54, 18, 'upload/products/multi-image/1747748597088584.jpg', '2022-10-26 05:45:48', NULL),
(55, 18, 'upload/products/multi-image/1747748597140994.jpg', '2022-10-26 05:45:48', NULL),
(56, 19, 'upload/products/multi-image/1747749002125796.jpg', '2022-10-26 05:52:14', NULL),
(57, 19, 'upload/products/multi-image/1747749002178131.jpg', '2022-10-26 05:52:15', NULL),
(58, 19, 'upload/products/multi-image/1747749002287515.jpg', '2022-10-26 05:52:15', NULL),
(59, 19, 'upload/products/multi-image/1747749002352709.jpg', '2022-10-26 05:52:15', NULL),
(60, 19, 'upload/products/multi-image/1747749002405652.jpg', '2022-10-26 05:52:15', NULL),
(61, 20, 'upload/products/multi-image/1747749271463698.jpg', '2022-10-26 05:56:31', NULL),
(62, 20, 'upload/products/multi-image/1747749271516062.jpg', '2022-10-26 05:56:31', NULL),
(63, 20, 'upload/products/multi-image/1747749271573595.jpg', '2022-10-26 05:56:31', NULL),
(66, 22, 'upload/products/multi-image/1748735041393856.jpg', '2022-11-06 03:04:55', NULL),
(67, 22, 'upload/products/multi-image/1748735041448010.jpg', '2022-11-06 03:04:55', NULL),
(68, 22, 'upload/products/multi-image/1748735041503137.jpg', '2022-11-06 03:04:55', NULL),
(69, 22, 'upload/products/multi-image/1748735041556042.jpg', '2022-11-06 03:04:55', NULL),
(70, 23, 'upload/products/multi-image/1748738470542352.jpg', '2022-11-06 03:59:25', NULL),
(71, 23, 'upload/products/multi-image/1748738470596564.jpg', '2022-11-06 03:59:25', NULL),
(72, 24, 'upload/products/multi-image/1748740023304563.jpg', '2022-11-06 04:24:06', NULL),
(73, 24, 'upload/products/multi-image/1748740023359604.jpg', '2022-11-06 04:24:06', NULL),
(76, 26, 'upload/products/multi-image/1748742463324561.jpg', '2022-11-06 05:02:53', NULL),
(77, 26, 'upload/products/multi-image/1748742463379393.jpg', '2022-11-06 05:02:53', NULL),
(78, 27, 'upload/products/multi-image/1748743774677601.jpg', '2022-11-06 05:23:43', NULL),
(79, 27, 'upload/products/multi-image/1748743774731461.jpg', '2022-11-06 05:23:44', NULL),
(80, 28, 'upload/products/multi-image/1748924691848426.jpg', '2022-11-08 05:19:20', NULL),
(81, 28, 'upload/products/multi-image/1748924691948841.jpg', '2022-11-08 05:19:20', NULL),
(82, 29, 'upload/products/multi-image/1748926840857332.jpg', '2022-11-08 05:53:29', NULL),
(83, 29, 'upload/products/multi-image/1748926840915999.jpg', '2022-11-08 05:53:29', NULL),
(84, 30, 'upload/products/multi-image/1748927200585629.jpg', '2022-11-08 05:59:12', NULL),
(85, 30, 'upload/products/multi-image/1748927200650418.jpg', '2022-11-08 05:59:12', NULL),
(86, 31, 'upload/products/multi-image/1749997902842506.jpg', '2022-11-20 01:37:33', NULL),
(87, 31, 'upload/products/multi-image/1749997902895602.jpg', '2022-11-20 01:37:33', NULL),
(88, 32, 'upload/products/multi-image/1749998116169471.jpg', '2022-11-20 01:40:57', NULL),
(89, 32, 'upload/products/multi-image/1749998116223002.jpg', '2022-11-20 01:40:57', NULL),
(90, 33, 'upload/products/multi-image/1749998887015024.jpg', '2022-11-20 01:53:12', NULL),
(91, 33, 'upload/products/multi-image/1749998887073492.jpg', '2022-11-20 01:53:12', NULL),
(92, 34, 'upload/products/multi-image/1750004102869242.jpg', '2022-11-20 03:16:06', NULL),
(93, 34, 'upload/products/multi-image/1750004102945178.jpg', '2022-11-20 03:16:06', NULL),
(94, 34, 'upload/products/multi-image/1750004103003827.jpg', '2022-11-20 03:16:06', NULL),
(95, 34, 'upload/products/multi-image/1750004103057186.jpg', '2022-11-20 03:16:06', NULL),
(96, 35, 'upload/products/multi-image/1750007191652911.jpg', '2022-11-20 04:05:12', NULL),
(97, 35, 'upload/products/multi-image/1750007191707998.jpg', '2022-11-20 04:05:12', NULL),
(98, 35, 'upload/products/multi-image/1750007191760026.jpg', '2022-11-20 04:05:12', NULL),
(99, 36, 'upload/products/multi-image/1750007332783316.jpg', '2022-11-20 04:07:26', NULL),
(100, 36, 'upload/products/multi-image/1750007332843961.jpg', '2022-11-20 04:07:26', NULL),
(101, 36, 'upload/products/multi-image/1750007332909764.jpg', '2022-11-20 04:07:27', NULL),
(102, 37, 'upload/products/multi-image/1750007490367378.jpg', '2022-11-20 04:09:57', NULL),
(103, 37, 'upload/products/multi-image/1750007490417377.jpg', '2022-11-20 04:09:57', NULL),
(104, 37, 'upload/products/multi-image/1750007490467989.jpg', '2022-11-20 04:09:57', NULL),
(105, 38, 'upload/products/multi-image/1750008118275951.jpg', '2022-11-20 04:19:55', NULL),
(106, 38, 'upload/products/multi-image/1750008118325820.jpg', '2022-11-20 04:19:56', NULL),
(107, 38, 'upload/products/multi-image/1750008118424766.jpg', '2022-11-20 04:19:56', NULL),
(108, 39, 'upload/products/multi-image/1750010255666715.jpg', '2022-11-20 04:53:54', NULL),
(109, 39, 'upload/products/multi-image/1750010255719926.jpg', '2022-11-20 04:53:54', NULL),
(110, 39, 'upload/products/multi-image/1750010255770594.jpg', '2022-11-20 04:53:54', NULL),
(111, 39, 'upload/products/multi-image/1750010255822566.jpg', '2022-11-20 04:53:54', NULL),
(112, 40, 'upload/products/multi-image/1750010399468481.jpg', '2022-11-20 04:56:11', NULL),
(113, 40, 'upload/products/multi-image/1750010399519782.jpg', '2022-11-20 04:56:11', NULL),
(114, 40, 'upload/products/multi-image/1750010399575104.jpg', '2022-11-20 04:56:11', NULL),
(115, 41, 'upload/products/multi-image/1750010491589852.jpg', '2022-11-20 04:57:39', NULL),
(116, 41, 'upload/products/multi-image/1750010491642455.jpg', '2022-11-20 04:57:39', NULL),
(117, 41, 'upload/products/multi-image/1750010491702715.jpg', '2022-11-20 04:57:39', NULL),
(118, 42, 'upload/products/multi-image/1750010590140164.jpg', '2022-11-20 04:59:13', NULL),
(119, 42, 'upload/products/multi-image/1750010590191713.jpg', '2022-11-20 04:59:13', NULL),
(120, 42, 'upload/products/multi-image/1750010590243667.jpg', '2022-11-20 04:59:13', NULL),
(121, 43, 'upload/products/multi-image/1750010674848270.jpg', '2022-11-20 05:00:34', NULL),
(122, 43, 'upload/products/multi-image/1750010674901918.jpg', '2022-11-20 05:00:34', NULL),
(123, 43, 'upload/products/multi-image/1750010674962930.jpg', '2022-11-20 05:00:34', NULL),
(124, 44, 'upload/products/multi-image/1750010805918048.jpg', '2022-11-20 05:02:39', NULL),
(125, 44, 'upload/products/multi-image/1750010805967503.jpg', '2022-11-20 05:02:39', NULL),
(126, 44, 'upload/products/multi-image/1750010806017225.jpg', '2022-11-20 05:02:39', NULL),
(127, 45, 'upload/products/multi-image/1750010913493453.jpg', '2022-11-20 05:04:21', NULL),
(128, 45, 'upload/products/multi-image/1750010913545362.jpg', '2022-11-20 05:04:21', NULL),
(129, 45, 'upload/products/multi-image/1750010913596657.jpg', '2022-11-20 05:04:21', NULL),
(130, 45, 'upload/products/multi-image/1750010913654400.jpg', '2022-11-20 05:04:21', NULL),
(131, 46, 'upload/products/multi-image/1750011218930129.jpg', '2022-11-20 05:09:13', NULL),
(132, 46, 'upload/products/multi-image/1750011219031523.jpg', '2022-11-20 05:09:13', NULL),
(133, 46, 'upload/products/multi-image/1750011219084002.jpg', '2022-11-20 05:09:13', NULL),
(134, 47, 'upload/products/multi-image/1750011439592680.jpg', '2022-11-20 05:12:43', NULL),
(135, 47, 'upload/products/multi-image/1750011439644979.jpg', '2022-11-20 05:12:43', NULL),
(136, 47, 'upload/products/multi-image/1750011439697377.jpg', '2022-11-20 05:12:43', NULL),
(137, 48, 'upload/products/multi-image/1750011567207060.jpg', '2022-11-20 05:14:45', NULL),
(138, 48, 'upload/products/multi-image/1750011567257972.jpg', '2022-11-20 05:14:45', NULL),
(139, 48, 'upload/products/multi-image/1750011567313935.jpg', '2022-11-20 05:14:45', NULL),
(140, 49, 'upload/products/multi-image/1750011677614830.jpg', '2022-11-20 05:16:30', NULL),
(141, 49, 'upload/products/multi-image/1750011677666367.jpg', '2022-11-20 05:16:30', NULL),
(142, 49, 'upload/products/multi-image/1750011677718719.jpg', '2022-11-20 05:16:30', NULL),
(143, 50, 'upload/products/multi-image/1750011816553576.jpg', '2022-11-20 05:18:42', NULL),
(144, 50, 'upload/products/multi-image/1750011816604530.jpg', '2022-11-20 05:18:42', NULL),
(145, 50, 'upload/products/multi-image/1750011816655598.jpg', '2022-11-20 05:18:43', NULL),
(149, 53, 'upload/products/multi-image/1751451574760197.jpg', '2022-12-06 02:43:03', NULL),
(150, 54, 'upload/products/multi-image/1751533478646364.jpg', '2022-12-07 00:24:53', NULL),
(151, 55, 'upload/products/multi-image/1751534024057762.jpg', '2022-12-07 00:33:33', NULL),
(152, 55, 'upload/products/multi-image/1751534024111081.jpg', '2022-12-07 00:33:33', NULL),
(153, 56, 'upload/products/multi-image/1751534386603086.jpg', '2022-12-07 00:39:18', NULL),
(154, 56, 'upload/products/multi-image/1751534386655832.jpg', '2022-12-07 00:39:18', NULL),
(155, 57, 'upload/products/multi-image/1751534856098178.jpg', '2022-12-07 00:46:46', NULL),
(156, 57, 'upload/products/multi-image/1751534856153850.jpg', '2022-12-07 00:46:46', NULL),
(157, 58, 'upload/products/multi-image/1751535122165220.jpg', '2022-12-07 00:51:00', NULL),
(158, 58, 'upload/products/multi-image/1751535122217097.jpg', '2022-12-07 00:51:00', NULL),
(159, 59, 'upload/products/multi-image/1751535464252168.jpg', '2022-12-07 00:56:26', NULL),
(160, 59, 'upload/products/multi-image/1751535464333611.jpg', '2022-12-07 00:56:26', NULL),
(161, 60, 'upload/products/multi-image/1751536391609994.jpg', '2022-12-07 01:11:11', NULL),
(162, 60, 'upload/products/multi-image/1751536391712363.jpg', '2022-12-07 01:11:11', NULL),
(163, 61, 'upload/products/multi-image/1751537651138181.jpg', '2022-12-07 01:31:12', NULL),
(164, 61, 'upload/products/multi-image/1751537651194528.jpg', '2022-12-07 01:31:12', NULL),
(165, 62, 'upload/products/multi-image/1751538063241648.jpg', '2022-12-07 01:37:45', NULL),
(166, 62, 'upload/products/multi-image/1751538063296063.jpg', '2022-12-07 01:37:45', NULL),
(169, 64, 'upload/products/multi-image/1751640265975956.jpg', '2022-12-08 04:42:13', NULL),
(170, 64, 'upload/products/multi-image/1751640266030121.jpg', '2022-12-08 04:42:13', NULL),
(171, 65, 'upload/products/multi-image/1751641548925727.jpg', '2022-12-08 05:02:36', NULL),
(172, 65, 'upload/products/multi-image/1751641548988118.jpg', '2022-12-08 05:02:36', NULL),
(173, 66, 'upload/products/multi-image/1751642268953817.jpg', '2022-12-08 05:14:03', NULL),
(174, 66, 'upload/products/multi-image/1751642269007442.jpg', '2022-12-08 05:14:03', NULL),
(175, 66, 'upload/products/multi-image/1751642269058812.jpg', '2022-12-08 05:14:03', NULL),
(176, 67, 'upload/products/multi-image/1751642757028748.jpg', '2022-12-08 05:21:48', NULL),
(177, 67, 'upload/products/multi-image/1751642757082467.jpg', '2022-12-08 05:21:49', NULL),
(178, 68, 'upload/products/multi-image/1751643060596714.jpg', '2022-12-08 05:26:38', NULL),
(179, 68, 'upload/products/multi-image/1751643060650046.jpg', '2022-12-08 05:26:38', NULL),
(180, 69, 'upload/products/multi-image/1751643284017273.jpg', '2022-12-08 05:30:11', NULL),
(181, 69, 'upload/products/multi-image/1751643284071050.jpg', '2022-12-08 05:30:11', NULL),
(182, 70, 'upload/products/multi-image/1751643492627865.jpg', '2022-12-08 05:33:30', NULL),
(183, 70, 'upload/products/multi-image/1751643492681176.jpg', '2022-12-08 05:33:30', NULL),
(184, 71, 'upload/products/multi-image/1751643745357049.jpg', '2022-12-08 05:37:31', NULL),
(185, 71, 'upload/products/multi-image/1751643745415946.jpg', '2022-12-08 05:37:31', NULL),
(186, 72, 'upload/products/multi-image/1752090314299679.jpg', '2022-12-13 03:55:32', NULL),
(187, 72, 'upload/products/multi-image/1752090314354069.jpg', '2022-12-13 03:55:32', NULL),
(188, 73, 'upload/products/multi-image/1752090541038394.jpg', '2022-12-13 03:59:09', NULL),
(189, 73, 'upload/products/multi-image/1752090541093839.jpg', '2022-12-13 03:59:09', NULL),
(190, 74, 'upload/products/multi-image/1752090768513541.jpg', '2022-12-13 04:02:46', NULL),
(191, 74, 'upload/products/multi-image/1752090768617719.jpg', '2022-12-13 04:02:46', NULL),
(192, 75, 'upload/products/multi-image/1752091035607899.jpg', '2022-12-13 04:07:00', NULL),
(193, 75, 'upload/products/multi-image/1752091035665067.jpg', '2022-12-13 04:07:00', NULL),
(194, 75, 'upload/products/multi-image/1752091035720091.jpg', '2022-12-13 04:07:00', NULL),
(195, 76, 'upload/products/multi-image/1752091230022071.jpg', '2022-12-13 04:10:06', NULL),
(196, 76, 'upload/products/multi-image/1752091230076153.jpg', '2022-12-13 04:10:06', NULL),
(197, 77, 'upload/products/multi-image/1757711754244111.jpg', '2023-02-13 05:05:55', NULL),
(198, 77, 'upload/products/multi-image/1757711754359502.jpg', '2023-02-13 05:05:55', NULL),
(199, 78, 'upload/products/multi-image/1757712050581481.jpg', '2023-02-13 05:10:38', NULL),
(200, 78, 'upload/products/multi-image/1757712050634743.jpg', '2023-02-13 05:10:38', NULL),
(201, 79, 'upload/products/multi-image/1757715286272316.jpg', '2023-02-13 06:02:04', NULL),
(202, 79, 'upload/products/multi-image/1757715286330258.jpg', '2023-02-13 06:02:04', NULL),
(203, 80, 'upload/products/multi-image/1757715416341606.jpg', '2023-02-13 06:04:08', NULL),
(204, 80, 'upload/products/multi-image/1757715416399814.jpg', '2023-02-13 06:04:08', NULL),
(205, 81, 'upload/products/multi-image/1757795486302347.jpg', '2023-02-14 03:16:48', NULL),
(206, 81, 'upload/products/multi-image/1757795486355277.jpg', '2023-02-14 03:16:48', NULL),
(207, 82, 'upload/products/multi-image/1757796999052982.jpg', '2023-02-14 03:40:51', NULL),
(208, 83, 'upload/products/multi-image/1757797965739219.jpg', '2023-02-14 03:56:13', NULL),
(209, 83, 'upload/products/multi-image/1757797965791095.jpg', '2023-02-14 03:56:13', NULL),
(210, 83, 'upload/products/multi-image/1757797965842380.jpg', '2023-02-14 03:56:13', NULL),
(211, 84, 'upload/products/multi-image/1757798139332520.jpg', '2023-02-14 03:58:59', NULL),
(212, 84, 'upload/products/multi-image/1757798139433025.jpg', '2023-02-14 03:58:59', NULL),
(213, 84, 'upload/products/multi-image/1757798139483689.jpg', '2023-02-14 03:58:59', NULL),
(214, 85, 'upload/products/multi-image/1757798432600030.jpg', '2023-02-14 04:03:38', NULL),
(215, 85, 'upload/products/multi-image/1757798432657819.jpg', '2023-02-14 04:03:38', NULL),
(216, 86, 'upload/products/multi-image/1757798631262335.jpg', '2023-02-14 04:06:48', NULL),
(217, 86, 'upload/products/multi-image/1757798631327496.jpg', '2023-02-14 04:06:48', NULL),
(218, 87, 'upload/products/multi-image/1757798729611490.jpg', '2023-02-14 04:08:21', NULL),
(219, 87, 'upload/products/multi-image/1757798729663226.jpg', '2023-02-14 04:08:21', NULL),
(220, 88, 'upload/products/multi-image/1757798904810659.jpg', '2023-02-14 04:11:09', NULL),
(221, 88, 'upload/products/multi-image/1757798904911889.jpg', '2023-02-14 04:11:09', NULL),
(222, 89, 'upload/products/multi-image/1757798996607328.jpg', '2023-02-14 04:12:36', NULL),
(223, 89, 'upload/products/multi-image/1757798996663917.jpg', '2023-02-14 04:12:36', NULL),
(224, 90, 'upload/products/multi-image/1757799127203002.jpg', '2023-02-14 04:14:41', NULL),
(225, 90, 'upload/products/multi-image/1757799127254957.jpg', '2023-02-14 04:14:41', NULL),
(226, 91, 'upload/products/multi-image/1757802158324225.jpg', '2023-02-14 05:02:51', NULL),
(227, 91, 'upload/products/multi-image/1757802158381929.jpg', '2023-02-14 05:02:51', NULL),
(229, 93, 'upload/products/multi-image/1757878787028389.jpg', '2023-02-15 01:20:50', NULL),
(230, 93, 'upload/products/multi-image/1757878787083613.jpg', '2023-02-15 01:20:50', NULL),
(231, 94, 'upload/products/multi-image/1757882313226965.jpg', '2023-02-15 02:16:53', NULL),
(232, 94, 'upload/products/multi-image/1757882313282690.jpg', '2023-02-15 02:16:53', NULL),
(233, 95, 'upload/products/multi-image/1757883525908349.jpg', '2023-02-15 02:36:10', NULL),
(234, 96, 'upload/products/multi-image/1757892367077477.jpg', '2023-02-15 04:56:41', NULL),
(235, 96, 'upload/products/multi-image/1757892367131431.jpg', '2023-02-15 04:56:41', NULL),
(236, 97, 'upload/products/multi-image/1757893305154748.jpg', '2023-02-15 05:11:36', NULL),
(237, 97, 'upload/products/multi-image/1757893305211246.jpg', '2023-02-15 05:11:36', NULL),
(238, 98, 'upload/products/multi-image/1758525093718992.jpg', '2023-02-22 04:33:36', NULL),
(239, 98, 'upload/products/multi-image/1758525093774821.jpg', '2023-02-22 04:33:36', NULL),
(240, 99, 'upload/products/multi-image/1758525260674249.jpg', '2023-02-22 04:36:15', NULL),
(241, 99, 'upload/products/multi-image/1758525260729795.jpg', '2023-02-22 04:36:16', NULL),
(242, 100, 'upload/products/multi-image/1758525365345593.jpg', '2023-02-22 04:37:55', NULL),
(243, 100, 'upload/products/multi-image/1758525365411580.jpg', '2023-02-22 04:37:55', NULL),
(244, 101, 'upload/products/multi-image/1758525482587336.jpg', '2023-02-22 04:39:47', NULL),
(245, 101, 'upload/products/multi-image/1758525482646937.jpg', '2023-02-22 04:39:47', NULL),
(246, 102, 'upload/products/multi-image/1758525555061856.jpg', '2023-02-22 04:40:56', NULL),
(247, 102, 'upload/products/multi-image/1758525555136700.jpg', '2023-02-22 04:40:56', NULL),
(248, 103, 'upload/products/multi-image/1758526029864958.jpg', '2023-02-22 04:48:29', NULL),
(249, 103, 'upload/products/multi-image/1758526029918958.jpg', '2023-02-22 04:48:29', NULL),
(250, 104, 'upload/products/multi-image/1758526177605792.jpg', '2023-02-22 04:50:50', NULL),
(251, 104, 'upload/products/multi-image/1758526177661734.jpg', '2023-02-22 04:50:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `division_id` bigint UNSIGNED NOT NULL,
  `district_id` bigint UNSIGNED NOT NULL,
  `state_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` int DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payment_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `order_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_month` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmed_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processing_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picked_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipped_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_order` int DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `division_id`, `district_id`, `state_id`, `name`, `email`, `phone`, `post_code`, `notes`, `payment_type`, `payment_method`, `transaction_id`, `currency`, `amount`, `order_number`, `invoice_no`, `order_date`, `order_month`, `order_year`, `confirmed_date`, `processing_date`, `picked_date`, `shipped_date`, `delivered_date`, `cancel_date`, `return_date`, `return_reason`, `return_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 2, 2, 'nafiz', 'nafiz016@gmail.com', '01963577003', 5550, NULL, 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 20.00, NULL, 'EOS30944159', '15 February 2023', 'February', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2023-02-15 02:58:12', NULL),
(2, 7, 1, 2, 2, 'Mohammad Naymul Islam', 'merge.creation@gmail.com', '01768607919', 1215, 'notes', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 20.00, NULL, 'EOS83466083', '18 February 2023', 'February', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2023-02-18 02:23:27', NULL),
(3, 7, 1, 2, 2, 'Mohammad Naymul Islam', 'merge.creation@gmail.com', '01768607919', 5550, NULL, 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 22.00, NULL, 'EOS40278980', '18 February 2023', 'February', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2023-02-18 02:46:51', NULL),
(4, 7, 1, 2, 2, 'Mohammad Naymul Islam', 'merge.creation@gmail.com', '01768607919', 5550, NULL, 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 22.00, NULL, 'EOS24946512', '18 February 2023', 'February', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2023-02-18 03:06:34', NULL),
(5, 7, 1, 2, 2, 'Mohammad Naymul Islam', 'merge.creation@gmail.com', '01768607919', 4576, NULL, 'Cash On Delivery', 'Cash On Delivery', NULL, 'Usd', 22.00, NULL, 'EOS80178652', '18 February 2023', 'February', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2023-02-18 05:09:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 93, NULL, '--Choose Size--', '1', 20.00, '2023-02-15 02:58:12', NULL),
(2, 2, 95, NULL, 'Small', '1', 20.00, '2023-02-18 02:23:27', NULL),
(3, 3, 97, NULL, '--Choose Size--', '1', 22.00, '2023-02-18 02:46:51', NULL),
(4, 4, 97, NULL, '--Choose Size--', '1', 22.00, '2023-02-18 03:06:34', NULL),
(5, 5, 97, NULL, '--Choose Size--', '1', 22.00, '2023-02-18 05:09:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `brand_id` int NOT NULL,
  `category_id` int NOT NULL,
  `subcategory_id` int NOT NULL,
  `subsubcategory_id` int DEFAULT NULL,
  `product_name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name_hin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slug_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug_hin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_tags_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_tags_hin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size_hin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color_hin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_descp_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_descp_hin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_descp_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_descp_hin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_thambnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot_deals` int DEFAULT NULL,
  `featured` int DEFAULT NULL,
  `special_offer` int DEFAULT NULL,
  `special_deals` int DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `product_name_en`, `product_name_hin`, `product_slug_en`, `product_slug_hin`, `product_code`, `product_qty`, `product_tags_en`, `product_tags_hin`, `product_size_en`, `product_size_hin`, `product_color_en`, `product_color_hin`, `selling_price`, `discount_price`, `short_descp_en`, `short_descp_hin`, `long_descp_en`, `long_descp_hin`, `product_thambnail`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `status`, `created_at`, `updated_at`) VALUES
(7, 3, 3, 13, NULL, 'Levi’s Button fly', 'Levi’s Colour black', 'levi’s-button-fly', 'Levi’s-Colour-black', '501', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Standard fit', 'Small,Midium,Large', 'Black', 'red,Black,Large', '100', NULL, 'Levi’s colour black\r\nButton fly\r\nStandard fir', 'Levi’s colour black\r\nButton fly\r\nStandard fir', '<p><strong>Levi&rsquo;s colour black<br />\r\nButton fly<br />\r\nStandard fit</strong></p>', '<p>Levi&rsquo;s colour black<br />\r\nButton fly<br />\r\nStandard fir</p>', 'upload/products/thambnail/1747743514098172.jpg', NULL, 1, NULL, NULL, 1, '2022-11-20 04:43:07', '2022-11-20 04:43:07'),
(8, 3, 3, 13, NULL, 'Levi’s', '501 Levi’s Colour stone wash denim', 'levi’s', '501-Levi’s-Colour-stone-wash-denim', '501', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Standard fit', 'Small,Midium,Large', 'red,Black,Amet', 'red,Black,Large', '100', NULL, '501 Levi’s\r\nColour stone wash denim', '501 Levi’s\r\nColour stone wash denim', '<p><strong>501 Levi&rsquo;s<br />\r\nColour stone wash denim<br />\r\nStandard fit</strong></p>', '<p>501 Levi&rsquo;s<br />\r\nColour stone wash denim<br />\r\nStandard fit</p>', 'upload/products/thambnail/1747743739049504.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 04:42:33', '2022-11-20 04:42:33'),
(9, 3, 3, 13, NULL, 'Levi’s', '501 Levi’s Indigo Blue', 'levi’s', '501-Levi’s-Indigo-Blue', '501', '10', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Standard fit', 'Small,Midium,Large', 'Stone Wash Denim', 'red,Black,Large', '100', NULL, '501 Levi’s\r\nColour stone wash denim\r\nStandard fit', '501 Levi’s\r\nColour stone wash denim\r\nStandard fit', '<p><strong>501 Levi&rsquo;s<br />\r\nColour stone wash denim<br />\r\nStandard fit</strong></p>', '<p><strong>501 Levi&rsquo;s<br />\r\nColour stone wash denim<br />\r\nStandard fit</strong></p>', 'upload/products/thambnail/1747745265844482.jpg', 1, 1, 1, 1, 1, '2022-11-20 04:42:16', '2022-11-20 04:42:16'),
(10, 3, 3, 13, NULL, 'Levi’s', 'Levi’s', 'levi’s', 'Levi’s', '506', '10', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Standard fit', 'Small,Midium,Large', 'Distress', 'red,Black,Large', '100', NULL, '506 Levi’s Standard fit\r\nRed tab\r\nColour distress', '506 Levi’s Standard fit\r\nRed tab\r\nColour distress', '<p><strong>506 Levi&rsquo;s Standard fit<br />\r\nRed Tab<br />\r\nColour: Distress</strong></p>', '<p>506 Levi&rsquo;s Standard fit<br />\r\nRed tab<br />\r\nColour distress</p>', 'upload/products/thambnail/1747745537089065.jpg', 1, 1, 1, 1, 1, '2022-11-20 04:42:04', '2022-11-20 04:42:04'),
(11, 3, 3, 13, NULL, 'Levi’s Boot Leg', 'Levi’s', 'levi’s-boot-leg', 'Levi’s', '507', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'waste 28 Inside leg 32', 'Small,Midium,Large', 'Dark denim', 'red,Black,Large', '100', NULL, 'Boot leg\r\nDark Denim\r\nSize  waste 28\r\nInside leg 32', '507 Levi’s\r\nBoot leg\r\nDark denim\r\nSize  waste 28\r\nInside leg 32', '<p><strong>507 Levi&rsquo;s<br />\r\nBoot leg<br />\r\nDark Denim<br />\r\nSize &nbsp;waste 28<br />\r\nInside leg 32</strong></p>', '<p>507 Levi&rsquo;s<br />\r\nBoot leg<br />\r\nDark denim<br />\r\nSize &nbsp;waste 28<br />\r\nInside leg 32</p>', 'upload/products/thambnail/1747746040567756.jpg', 1, 1, 1, 1, 1, '2022-11-20 04:41:32', '2022-11-20 04:41:32'),
(12, 3, 3, 13, NULL, 'Levi’s Boot Cut', '507 Levi’s boot cut', 'levi’s-boot-cut', '507-Levi’s-boot-cut', '507', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', '30 waste 32 inside leg', 'Small,Midium,Large', 'Distress', 'red,Black,Large,Distress', '100', NULL, '507 Levi’s Boot Cut, \r\nColour: Distress, \r\nSize: 30 waste, 32 inside leg', '507 Levi’s boot cut\r\nColour Distress\r\nSize 30 waste\r\n32 inside leg', '<p><strong>507 Levi&rsquo;s Boot Cut<br />\r\nColour: Distress<br />\r\nSize: 30 waste, 32 inside leg</strong></p>', '<p>507 Levi&rsquo;s boot cut<br />\r\nColour Distress<br />\r\nSize 30 waste<br />\r\n32 inside leg</p>', 'upload/products/thambnail/1747746672416848.jpg', 1, 1, 1, 1, 1, '2022-11-20 04:41:17', '2022-11-20 04:41:17'),
(13, 3, 3, 13, NULL, 'Levi’s', 'Levi’s', 'levi’s', 'Levi’s', '521', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Standard Fit', 'Small,Midium,Large', 'Stone Wash Denim', 'Stone Wash Denim', '100', NULL, '521 Levi’s Jeans\r\nColour: Stone Wash Denim, Zip fly, Standard Fit', '521 Levi’s Jeans\r\nColour Stone Wash Denim\r\nZip fly\r\nStandard fit', '<p><strong>521 Levi&rsquo;s Jeans<br />\r\nColour: Stone Wash Denim<br />\r\nZip fly<br />\r\nStandard Fit</strong></p>', '<p>521 Levi&rsquo;s Jeans<br />\r\nColour Stone Wash Denim<br />\r\nZip fly<br />\r\nStandard fit</p>', 'upload/products/thambnail/1747747004130944.jpg', NULL, 1, NULL, NULL, 1, '2022-11-20 04:40:46', '2022-11-20 04:40:46'),
(14, 3, 3, 13, NULL, 'Levi’s', '521 Levi’s Jeans', 'levi’s', '521-Levi’s-Jeans', '521', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Standard fit', 'Small,Midium,Large', 'Stone Wash Denim', 'Black', '100', NULL, '521 Levi’s Jeans\r\nColour Black\r\nZip fly\r\nStandard fit', '521 Levi’s Jeans\r\nColour Black\r\nZip fly\r\nStandard fit', '<p><strong>521 Levi&rsquo;s Jeans<br />\r\nColour: Stone Wash Denim<br />\r\nZip fly<br />\r\nStandard fit</strong></p>', '<p>521 Levi&rsquo;s Jeans<br />\r\nColour Black<br />\r\nZip fly<br />\r\nStandard fit</p>', 'upload/products/thambnail/1747747159808295.jpg', NULL, 1, NULL, NULL, 1, '2022-11-20 04:41:02', '2022-11-20 04:41:02'),
(15, 3, 3, 13, NULL, 'Levi’s Comfort Fit', 'Levi’s Comfort Fit', 'levi’s-comfort-fit', 'Levi’s-Comfort-Fit', '522', '10', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Comfort Fit', 'Small,Midium,Large', 'Stone Wash Denim', 'Stone Wash Denim', '100', '80', '522 Levi’s Comfort Fit,\r\nButton Fly,\r\nColour: Stone Wash Denim', '522 Levi’s Comfort fit\r\nButton fly\r\nColour stone wash denim', '<p><strong>522 Levi&rsquo;s Comfort Fit<br />\r\nButton Fly<br />\r\nColour: Stone Wash Denim</strong></p>', '<p>522 Levi&rsquo;s Comfort fit<br />\r\nButton fly<br />\r\nColour stone wash denim</p>', 'upload/products/thambnail/1747747350176521.jpg', NULL, 1, NULL, NULL, 1, '2022-11-20 04:40:17', '2022-11-20 04:40:17'),
(16, 3, 3, 13, NULL, 'Levi’s Light Weight', 'Levi’s Light Weight', 'levi’s-light-weight', 'Levi’s-Light-Weight', '581', '10', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Standard Fit', 'Small,Midium,Large', 'Black', 'red,Black,Large', '100', NULL, '581 Levi’s Light Weight\r\nColour: Black, Zip fly\r\nStandard Fit', '581 Levi’s Light weight\r\nColour black\r\nZip fly\r\nStandard fit', '<p><strong>581 Levi&rsquo;s Light Weight<br />\r\nColour: Black<br />\r\nZip fly<br />\r\nStandard Fit</strong></p>', '<p>581 Levi&rsquo;s Light weight<br />\r\nColour black<br />\r\nZip fly<br />\r\nStandard fit</p>', 'upload/products/thambnail/1747747589997363.jpg', 1, NULL, NULL, NULL, 1, '2022-11-20 04:39:53', '2022-11-20 04:39:53'),
(17, 3, 3, 13, NULL, 'Levi’s Stone Wash Denim', 'Levi’s Stone Wash Denim', 'levi’s-stone-wash-denim', 'Levi’s-Stone-Wash-Denim', '615', '10', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'Small,Midium,Large', 'Stone Wash Denim', 'Stone Wash Denim', '100', NULL, '615 Levi’s Stone Wash Denim\r\nZip fly\r\nRegular fit', '615 Levi’s Stone Wash Denim\r\nZip fly\r\nRegular fit', '<p><strong>615 Levi&rsquo;s Stone Wash Denim<br />\r\nZip fly<br />\r\nRegular Fit</strong></p>', '<p>615 Levi&rsquo;s Stone Wash Denim<br />\r\nZip fly<br />\r\nRegular fit</p>', 'upload/products/thambnail/1747747781049118.jpg', NULL, NULL, NULL, 1, 1, '2022-11-20 04:39:40', '2022-11-20 04:39:40'),
(18, 4, 3, 13, NULL, 'Trap Jeans', 'Trap Jeans 704', 'trap-jeans', 'Trap-Jeans-704', 'Trap Jeans 704', '10', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'Small,Midium,Large', 'Black', 'red,Black,Large', '100', NULL, '704 yellow 27', '704 yellow 27', '<p><strong>704 yellow 27</strong></p>\r\n\r\n<p><strong>Trap Jeans 704</strong></p>', '<p>704 yellow 27</p>', 'upload/products/thambnail/1747748596978819.jpg', NULL, 1, NULL, NULL, 1, '2022-11-20 04:37:52', '2022-11-20 04:37:52'),
(19, 3, 3, 13, NULL, 'Levi’s Standard Fit', 'Levi’s Standard Fit', 'levi’s-standard-fit', 'Levi’s-Standard-Fit', '751', '10', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Standard Fit', 'Small,Midium,Large', 'Black', 'Black', '100', NULL, 'Levi’s Standard fit 751\r\nColour black\r\nZip fly', 'Levi’s Standard fit 751\r\nColour black\r\nZip fly', '<p><strong>Levi&rsquo;s Standard Fit 751<br />\r\nColour: Black<br />\r\nZip fly</strong></p>', '<p><strong>Levi&rsquo;s Standard fit 751<br />\r\nColour black<br />\r\nZip fly</strong></p>', 'upload/products/thambnail/1747749002073060.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 04:39:26', '2022-11-20 04:39:26'),
(20, 3, 3, 13, NULL, 'Crinckle Jeans', 'Crinckle Jeans', 'crinckle-jeans', 'Crinckle-Jeans', '0110299', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'Small,Midium,Large', 'Black', 'red,Black,Large', '100', NULL, 'Crinckle Jeans 0110299', 'Crinckle Jeans 0110299', '<p><strong>Crinckle Jeans 0110299</strong></p>', '<p>Crinckle Jeans 0110299</p>', 'upload/products/thambnail/1747749271402685.jpg', NULL, 1, NULL, NULL, 1, '2022-11-20 04:39:09', '2022-11-20 04:39:09'),
(21, 6, 1, 17, NULL, 'Che Guevara CHG/BLK/372', 'Che Guevara CHG/BLK/372', 'che-guevara-chg/blk/372', 'Che-Guevara-CHG/BLK/372', 'CHG/BLK/372', '10', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'S-m,M-l,Skinny fit', 'S-m,M-l,Skinny fit', 'Black,Fitted,Trespesos', 'Black,Fitted,Trespesos', '14.99', '14.99', 'CHG/BLK/372\r\nChe Guevara', 'CHG/BLK/372\r\nChe Guevara', '<p>CHG/BLK/372<br />\r\nChe Guevara</p>', '<p>CHG/BLK/372<br />\r\nChe Guevara</p>', 'upload/products/thambnail/1748732378253611.jpg', NULL, NULL, NULL, NULL, 0, '2022-11-20 04:49:09', '2022-11-20 04:54:10'),
(22, 7, 1, 17, NULL, 'Korpiklaani', 'Korpiklaani', 'korpiklaani', 'Korpiklaani', 'KPL/BLK/371', '10', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'X-Large,Skinny', 'X-Large,Skinny', 'Black', 'Black', '100', NULL, 'Korpiklaani\r\nLadies fit skinny fit\r\nBoth side print\r\nBlack colour\r\nRavta', 'Korpiklaani\r\nLadies fit skinny fit\r\nBoth side print\r\nBlack colour\r\nRavta', '<p><strong>KPL/BLK/371<br />\r\nKorpiklaani<br />\r\nLadies fit skinny fit<br />\r\nBoth side print<br />\r\nBlack colour<br />\r\nRavta<br />\r\nSize X-Large<br />\r\nSkinny</strong></p>', '<p>Korpiklaani<br />\r\nLadies fit skinny fit<br />\r\nBoth side print<br />\r\nBlack colour<br />\r\nRavta</p>', 'upload/products/thambnail/1748735041337216.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 04:46:48', '2022-11-20 04:46:48'),
(23, 8, 1, 17, NULL, 'Black Veil Brides', 'Black Veil Brides 370', 'black-veil-brides', 'Black-Veil-Brides-370', 'BVB/WHT/370', '10', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'X-Large', 'X-Large', 'White', 'White', '22.99', NULL, 'Black veil brides\r\nWhite colour\r\nFront print only\r\nGroup', 'Black veil brides\r\nWhite colour\r\nFront print only\r\nGroup', '<p><strong>BVB/WHT/370<br />\r\nBlack veil brides<br />\r\nWhite colour<br />\r\nFront print only<br />\r\nGroup<br />\r\nSize<br />\r\nX-Large<br />\r\nPrice &pound;22.99 plus postage and packaging</strong></p>', NULL, 'upload/products/thambnail/1748738470483774.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 04:47:43', '2022-11-20 04:47:43'),
(24, 8, 1, 17, NULL, 'Black Veil Brides', 'Black Veil Brides', 'black-veil-brides', 'Black-Veil-Brides', 'BVB/BLK/369', '100', 'Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'Small,Midium,Large', 'Black', 'Black', '24.99', NULL, 'Black Veil Brides\r\nBlack colour\r\nFront print only\r\nAndy Black', 'Black Veil Brides\r\nBlack colour\r\nFront print only\r\nAndy Black', '<p><strong>BVB/BLK/369<br />\r\nBlack Veil Brides<br />\r\nBlack colour<br />\r\nFront print only<br />\r\nAndy Black<br />\r\nSize:&nbsp;Small,&nbsp;Medium,&nbsp;Large<br />\r\nPrice &pound;24.99 plus postage and packaging</strong></p>', '<p><strong>BVB/BLK/369<br />\r\nBlack Veil Brides<br />\r\nBlack colour<br />\r\nFront print only<br />\r\nAndy Black<br />\r\nSize:&nbsp;Small,&nbsp;Medium,&nbsp;Large<br />\r\nPrice &pound;24.99 plus postage and packaging</strong></p>', 'upload/products/thambnail/1748740023244860.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 04:47:29', '2022-11-20 04:47:29'),
(26, 8, 1, 17, NULL, 'Black Veil Brides', 'Black Veil Brides', 'black-veil-brides', 'Black-Veil-Brides', 'BVB-BLK-368', '10', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small', 'Small', 'Black', 'Black', '21.99', NULL, 'Black Veil Brides\r\nBlack colour\r\nFront print only\r\nAndy', 'Black Veil Brides\r\nBlack colour\r\nFront print only\r\nAndy', '<p><strong>BVB/BLK/368<br />\r\nBlack veil brides<br />\r\nBlack colour<br />\r\nFront print only<br />\r\nAndy<br />\r\nSize small<br />\r\nPrice &pound;21.99<br />\r\nPlus postage and packaging</strong></p>', '<p>Black Veil Brides<br />\r\nBlack colour<br />\r\nFront print only<br />\r\nAndy</p>', 'upload/products/thambnail/1748742463265326.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 04:47:16', '2022-11-20 04:47:16'),
(27, 8, 1, 17, NULL, 'Black Veil Brides', 'Black Veil Brides', 'black-veil-brides', 'Black-Veil-Brides', 'BVB-BLK-367', '10', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Midium', 'Small,Midium', 'Black', 'Black', '23.99', NULL, 'Black Veil Brides 367\r\nLadies fit skinny fit\r\nFront print only', 'Black Veil Brides 367\r\nLadies fit skinny fit\r\nFront print only', '<p><strong>BVB/BLK/367<br />\r\nBlack veil brides<br />\r\nLadies fit skinny fit<br />\r\nFront print only<br />\r\nBlack colour<br />\r\nSize:&nbsp; Small,&nbsp;Medium<br />\r\nPrice &pound;23.99 plus postage and packaging</strong></p>', '<p><strong>BVB/BLK/367<br />\r\nBlack veil brides<br />\r\nLadies fit skinny fit<br />\r\nFront print only<br />\r\nBlack colour<br />\r\nSize:&nbsp; Small,&nbsp;Medium<br />\r\nPrice &pound;23.99 plus postage and packaging</strong></p>', 'upload/products/thambnail/1748743774600093.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 04:47:02', '2022-11-20 04:47:02'),
(28, 8, 1, 17, NULL, 'Black Veil Brides', NULL, 'black-veil-brides', '', 'BVB/BLK/366', '10', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'Small,Midium,Large', 'Black', 'red,Black,Large', '24.99', NULL, 'Black Veil Brides\r\nBlack Colour\r\nFront print only\r\nSkull', 'Black Veil Brides\r\nBlack Colour\r\nFront print only\r\nSkull', '<p>Black Veil Brides<br />\r\nBlack Colour<br />\r\nFront print only<br />\r\nSkull</p>', '<p>Black Veil Brides<br />\r\nBlack Colour<br />\r\nFront print only<br />\r\nSkull</p>', 'upload/products/thambnail/1748924691790671.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 04:48:54', '2022-11-20 04:48:54'),
(29, 8, 1, 17, NULL, 'Black Veil Brides', NULL, 'black-veil-brides', '', 'BVB/BLK/365', '10', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Midium', 'Midium', 'Black', 'red,Black,Large', '20.00', NULL, 'Black Veil Brides, \r\nFront print only', 'Black Veil Brides, \r\nFront print only', '<p>Black Veil Brides<br />\r\nFront print only</p>', '<p>Black Veil Brides<br />\r\nFront print only</p>', 'upload/products/thambnail/1748926840794279.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 04:48:41', '2022-11-20 04:48:41'),
(30, 8, 1, 17, NULL, 'Black Veil Brides', NULL, 'black-veil-brides', '', 'BVB/BLK/364', '10', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'X-Large', 'Large', 'Black', 'red,Black,Large', '21.99', NULL, 'Black Veil Brides\r\nBlack colour\r\nFront print only\r\nStitching Andy', 'Black Veil Brides\r\nBlack colour\r\nFront print only\r\nStitching Andy', '<p>Black Veil Brides<br />\r\nBlack colour<br />\r\nFront print only<br />\r\nStitching Andy</p>', '<p>Black Veil Brides<br />\r\nBlack colour<br />\r\nFront print only<br />\r\nStitching Andy</p>', 'upload/products/thambnail/1748927200495390.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 04:48:26', '2022-11-20 04:48:26'),
(31, 8, 1, 17, NULL, 'Black Veil Brides', NULL, 'black-veil-brides', '', 'BVB/BLK/363', '10', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Large', 'Small,Midium,Large', 'Black', 'red,Black,Large', '22.99', NULL, 'Black Veil Brides, \r\nBlack colour, \r\nFront print only', 'Black Veil Brides, \r\nBlack colour, \r\nFront print only', '<p>BVB/BLK/363<br />\r\nBlack Veil Brides<br />\r\nBlack colour<br />\r\nFront print only<br />\r\nSize large<br />\r\nPrice &pound;22.99<br />\r\nPlus postage and packaging</p>', NULL, 'upload/products/thambnail/1749997902781799.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 04:48:13', '2022-11-20 04:48:13'),
(32, 8, 1, 17, NULL, 'Black Veil Brides', NULL, 'black-veil-brides', '', 'BVB/BLK/362', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'Small,Midium,Large', 'Black,Amet', 'Black', '23.99', NULL, 'Black colour, Front print w, Mist, Size: small, Medium, Large', 'Black colour, Front print w, Mist, Size: small, Medium, Large', '<p><strong>Black Veil Brides<br />\r\nBlack colour<br />\r\nFront print w<br />\r\nMist<br />\r\nSize: small<br />\r\nMedium<br />\r\nLarge</strong></p>\r\n\r\n<p><br />\r\n<strong>Price &pound;23.99 plus postage and packaging</strong></p>', '<p>Long Description Hindi</p>', 'upload/products/thambnail/1749998116113388.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 04:47:58', '2022-11-20 04:47:58'),
(33, 6, 1, 17, NULL, 'Cheguevara', NULL, 'cheguevara', '', 'CHG/BLK/372', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'S-m,M-l', 'Small,Midium,Large', 'S-m,M-l,Skinny fit', 'S-m,M-l,Skinny fit', '14.99', NULL, 'Cheguevara\r\nBlack\r\nFitted\r\nTrespesos', 'Cheguevara\r\nBlack\r\nFitted\r\nTrespesos', '<p><strong>CHG/BLK/372<br />\r\nCheguevara<br />\r\nBlack<br />\r\nFitted<br />\r\nTrespesos<br />\r\nSize:&nbsp;S-m,&nbsp;M-l,&nbsp;Skinny fit<br />\r\nPrice &pound;14.99<br />\r\nPlus postage and packaging</strong></p>', '<p><strong>CHG/BLK/372<br />\r\nCheguevara<br />\r\nBlack<br />\r\nFitted<br />\r\nTrespesos<br />\r\nSize:&nbsp;S-m,&nbsp;M-l,&nbsp;Skinny fit<br />\r\nPrice &pound;14.99<br />\r\nPlus postage and packaging</strong></p>', 'upload/products/thambnail/1749998886957460.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 04:46:01', '2022-11-20 04:46:01'),
(34, 9, 3, 13, NULL, 'Africa Written', NULL, 'africa-written', '', 'Africa Written', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'baggy fit', 'Small,Midium,Large', 'Black', 'red,Black,Large', '100', NULL, 'Africa written\r\nColour Black\r\nZip fly baggy fit with details all over', 'Africa written\r\nColour Black\r\nZip fly baggy fit with details all over', '<p><strong>Africa written<br />\r\nColour Black<br />\r\nZip fly baggy fit with details all over</strong></p>', '<p>Long Description Hindi</p>', 'upload/products/thambnail/1750004102817480.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 04:37:23', '2022-11-20 04:37:23'),
(35, 10, 3, 13, NULL, 'Wall Street-Baggy Fit', 'Wall Street-Baggy Fit', 'wall-street-baggy-fit', 'Wall-Street-Baggy-Fit', 'Baggy fit', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Baggy fit', 'Small,Midium,Large', 'Stone wash', 'red,Black,Large', '100', NULL, 'Baggy fit,  Stone wash', 'Baggy fit,  Stone wash', '<p><strong>Baggy fit, &nbsp;Stone wash</strong></p>', '<p>Long Description Hindi</p>', 'upload/products/thambnail/1750007191582349.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 04:36:59', '2022-11-20 04:36:59'),
(36, 10, 3, 13, NULL, 'Wall Street-Baggy fit Beige', 'Wall Street-Baggy Fit', 'wall-street-baggy-fit-beige', 'Wall-Street-Baggy-Fit', 'Baggy Fit', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Baggy Fit', 'Small,Midium,Large', 'Beige', 'red,Black,Large', '100', NULL, 'Baggy Fit\r\nBeige', 'Baggy Fit\r\nBeige', '<p><strong>Baggy Fit<br />\r\nBeige</strong></p>', '<p>Long Description Hindi</p>', 'upload/products/thambnail/1750007332719761.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 04:36:42', '2022-11-20 04:36:42'),
(37, 10, 3, 13, NULL, 'Wall Street-Baggy Fit', NULL, 'wall-street-baggy-fit', '', 'Baggy Fit Black', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Baggy Fit', 'Small,Midium,Large', 'Black', 'red,Black,Large', '100', NULL, 'Baggy Fit,\r\nBlack', 'Baggy Fit,\r\nBlack', '<p><strong>Baggy Fit<br />\r\nBlack</strong></p>', '<p>Long Description Hindi</p>', 'upload/products/thambnail/1750007490315898.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 04:35:36', '2022-11-20 04:35:36'),
(38, 10, 3, 13, NULL, 'Wall Street', NULL, 'wall-street', '', 'Baggy Fit', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Baggy Fit', 'Small,Midium,Large', 'Navy', 'red,Black,Large', '100', NULL, 'Baggy Fit\r\nNavy', 'Baggy Fit\r\nNavy', '<p><strong>Baggy Fit<br />\r\nNavy</strong></p>', '<p>Long Description Hindi</p>', 'upload/products/thambnail/1750008118223029.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 04:34:54', '2022-11-20 04:34:54'),
(39, 11, 3, 13, NULL, 'Jack Murphy Balsbrudge trs', NULL, 'jack-murphy-balsbrudge-trs', '', 'Balsbrudge trs', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'Small,Midium,Large', 'khaki', 'red,Black,Large', '100', NULL, 'Balsbrudge trs, Colour khaki, Comfort fit', 'Balsbrudge trs, Colour khaki, Comfort fit', '<p><strong>Balsbrudge trs<br />\r\nColour khaki<br />\r\nComfort fit</strong></p>', '<p>Balsbrudge trs<br />\r\nColour khaki<br />\r\nComfort fit</p>', 'upload/products/thambnail/1750010255611235.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 04:53:54', NULL),
(40, 12, 3, 13, NULL, 'Elite Sexy Banglin', 'Elite Sexy Banglin', 'elite-sexy-banglin', 'Elite-Sexy-Banglin', 'Banglin', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'Small,Midium,Large', 'red,Black,Amet', 'red,Black,Large', '100', NULL, 'Elite Sexy Banglin', 'Elite Sexy Banglin', '<p><strong>Elite Sexy Banglin</strong></p>', '<p><strong>Elite Sexy Banglin</strong></p>', 'upload/products/thambnail/1750010399414822.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 04:56:11', NULL),
(41, 12, 3, 13, NULL, 'Elite sexy Banglin kiss', NULL, 'elite-sexy-banglin-kiss', '', 'Banglin kiss', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'Small,Midium,Large', 'red,Black,Amet', 'red,Black,Large', '100', NULL, 'Banglin kiss, Elite sexy', 'Banglin kiss, Elite sexy', '<p><strong>Banglin kiss, Elite sexy</strong></p>', '<p>Long Description Hindi</p>', 'upload/products/thambnail/1750010491527167.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 04:57:39', NULL),
(42, 12, 3, 13, NULL, 'Elite sexy Banglin kiss', NULL, 'elite-sexy-banglin-kiss', '', 'Banglin kiss', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'Small,Midium,Large', 'red,Black,Amet', 'red,Black,Large', '100', NULL, 'Banglin kiss Elite sexy', 'Banglin kiss Elite sexy', '<p>Banglin kiss Elite sexy</p>', '<p>Banglin kiss Elite sexy</p>', 'upload/products/thambnail/1750010590082263.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 04:59:13', NULL),
(43, 13, 3, 13, NULL, 'Blue Bolt', NULL, 'blue-bolt', '', 'Bb1', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'Small,Midium,Large', 'red,Black,Amet', 'red,Black,Large', '100', NULL, 'Blue Bolt', 'Blue Bolt', '<p>Blue Bolt</p>', '<p>Blue Bolt</p>', 'upload/products/thambnail/1750010674736198.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 05:00:34', NULL),
(44, 9, 3, 13, NULL, 'Black Leather Pocket Detail', NULL, 'black-leather-pocket-detail', '', 'Black Leather', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'Small,Midium,Large', 'Black', 'red,Black,Large', '100', NULL, 'Black Leather Pocket Detail', 'Black Leather Pocket Detail', '<p>Black Leather Pocket Detail</p>', '<p>Black Leather Pocket Detail</p>', 'upload/products/thambnail/1750010805815800.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 05:02:39', NULL),
(45, 14, 3, 13, NULL, 'APT Burberry Style', NULL, 'apt-burberry-style', '', 'Burberry Style', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'Small,Midium,Large', 'navy', 'red,Black,Large', '100', NULL, 'Burberry Style', 'Burberry Style', '<p><strong>Burberry Style<br />\r\nDetails shows<br />\r\nColour navy</strong></p>', '<p>Burberry Style<br />\r\nDetails shows<br />\r\nColour navy</p>', 'upload/products/thambnail/1750010913431934.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 05:06:50', '2022-11-20 05:06:50'),
(46, 14, 3, 13, NULL, 'APT Burberry Type', NULL, 'apt-burberry-type', '', 'Black', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'Small,Midium,Large', 'red,Black,Amet', 'red,Black,Large', '100', NULL, 'Burberry type as details show, Colour: Black', 'Burberry type as details show, Colour: Black', '<p><strong>Burberry type as details show, Colour: Black</strong></p>', '<p>Burberry type as details show, Colour: Black</p>', 'upload/products/thambnail/1750011218874727.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 05:09:12', NULL),
(47, 15, 3, 13, NULL, 'Daniel Christian', NULL, 'daniel-christian', '', 'Daniel Christian', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'Small,Midium,Large', 'Grey Distress', 'red,Black,Large', '100', NULL, 'Daniel Christian, Colour Grey Distress', 'Colour Grey Distress', '<p>Daniel Christian</p>\r\n\r\n<p>Colour Grey Distress</p>', '<p>Colour Grey Distress</p>', 'upload/products/thambnail/1750011439536295.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 05:12:43', NULL),
(48, 16, 3, 13, NULL, 'Refind', NULL, 'refind', '', 'Refind', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'Small,Midium,Large', 'red,Black,Amet', 'red,Black,Large', '100', NULL, 'Brand Refind, \r\nColour Stone Sash', 'Brand Refind\r\nColour Stone Sash', '<p><br />\r\n<strong>Brand Refind,&nbsp;<br />\r\nColour Stone Sash</strong></p>', '<p>Long Description Hindi</p>', 'upload/products/thambnail/1750011567090821.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 05:14:45', NULL),
(49, 17, 3, 13, NULL, 'Comfort fit Pepe jean', NULL, 'comfort-fit-pepe-jean', '', 'Pepe jean', '100', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'Small,Midium,Large', 'red,Black,Amet', 'red,Black,Large', '100', NULL, 'Comfort fit Pepe jean, \r\nColour Stone Sash, \r\nSize only waste 32, \r\nInside leg 32', 'Comfort fit Pepe jean, \r\nColour Stone Sash, \r\nSize only waste 32, \r\nInside leg 32', '<p><strong>Comfort fit Pepe jean<br />\r\nColour Stone Sash<br />\r\nSize only waste 32<br />\r\nInside leg 32</strong></p>', '<p>Comfort fit Pepe jean<br />\r\nColour Stone Sash<br />\r\nSize only waste 32<br />\r\nInside leg 32</p>', 'upload/products/thambnail/1750011677558300.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 05:16:30', NULL),
(50, 18, 3, 13, NULL, 'EM 10  Eto Jeans', NULL, 'em-10--eto-jeans', '', 'EM 10', '10', 'Lorem,Ipsum,Amet', 'Lorem,Ipsum,Amet', 'Small,Midium,Large', 'Small,Midium,Large', 'red,Black,Amet', 'red,Black,Large', '100', NULL, 'EM 10, \r\nEto Jeans', 'EM 10 \r\nEto Jeans', '<p>EM 10&nbsp;<br />\r\nEto Jeans</p>', '<p>Long Description Hindi</p>', 'upload/products/thambnail/1750011816498790.jpg', NULL, NULL, NULL, NULL, 1, '2022-11-20 05:18:42', NULL),
(53, 19, 1, 18, NULL, 'AC-DC', NULL, 'ac-dc', '', 'AC/DC/BLK/607', '10', NULL, NULL, 'Small,Midium,Large,X-Large,XXlarge', NULL, NULL, NULL, '21.99', NULL, 'Black colour\r\nFront print only\r\nFor those about to Rock\r\nSmall', NULL, '<p>Black colour<br />\r\nFront print only<br />\r\nFor those about to Rock<br />\r\nSmall</p>', NULL, 'upload/products/thambnail/1751451574689823.jpg', NULL, NULL, NULL, NULL, 1, '2022-12-06 02:45:30', '2022-12-06 02:45:30'),
(54, 19, 1, 18, NULL, 'AC-DC', NULL, 'ac-dc', '', 'AC/DC/BLK/603', '10', NULL, NULL, 'Small,Midium,Large,X-Large,XXLARGE', NULL, NULL, NULL, '21.99', NULL, 'Black colour\r\nFront print only\r\nLogo', NULL, '<p>Black colour<br />\r\nFront print only<br />\r\nLogo</p>', NULL, 'upload/products/thambnail/1751533478570454.jpg', NULL, NULL, NULL, NULL, 1, '2022-12-07 00:24:52', NULL),
(55, 19, 1, 18, NULL, 'AC-DC', NULL, 'ac-dc', '', 'ACDC/BLK/604', '10', NULL, NULL, 'Small,Midium,Large,X-Large,XXLARGE', NULL, NULL, NULL, '21.99', NULL, 'Black colour\r\nFront print only\r\nBlow up your video world tour 1988', NULL, '<p>Black colour<br />\r\nFront print only<br />\r\nBlow up your video world tour 1988</p>', NULL, 'upload/products/thambnail/1751534023948215.jpg', NULL, NULL, NULL, NULL, 1, '2022-12-07 00:33:33', NULL),
(56, 19, 1, 18, NULL, 'AC-DC', NULL, 'ac-dc', '', 'AC/DC/BLK/605', '10', NULL, NULL, 'Small,Midium,Large,X-Large,XXlarge', NULL, NULL, NULL, '21.99', NULL, 'Black\r\nFront print only\r\nHell Bells', NULL, '<p>Black<br />\r\nFront print only<br />\r\nHell Bells</p>', NULL, 'upload/products/thambnail/1751534386548075.jpg', NULL, NULL, NULL, NULL, 1, '2022-12-07 00:39:18', NULL),
(57, 19, 1, 18, NULL, 'AC-DC', NULL, 'ac-dc', '', 'AC/DC/BLK/606', '10', NULL, NULL, 'Small,Midium,X-Large,XXlarge', NULL, NULL, NULL, '21.99', NULL, 'Black colour\r\nFront print only\r\nRock or Bust', NULL, '<p>Black colour<br />\r\nFront print only<br />\r\nRock or Bust</p>', NULL, 'upload/products/thambnail/1751534856039816.jpg', NULL, NULL, NULL, NULL, 1, '2022-12-07 00:46:46', NULL),
(58, 19, 1, 18, NULL, 'AC-DC', NULL, 'ac-dc', '', 'AC/DC/BLK/607', '10', NULL, NULL, 'Small,Midium,Large,X-Large,XXlarge', NULL, NULL, NULL, '21.99', NULL, 'Black colour\r\nFront print only\r\nFor those about to Rock', NULL, '<p>Black colour<br />\r\nFront print only<br />\r\nFor those about to Rock</p>', NULL, 'upload/products/thambnail/1751535122106135.jpg', NULL, NULL, NULL, NULL, 1, '2022-12-07 00:51:00', NULL),
(59, 19, 1, 18, NULL, 'AC-DC', NULL, 'ac-dc', '', 'AC/DC/BLK/607/A', '10', NULL, NULL, '3 X-Large,XXX large', NULL, NULL, NULL, '26.99', NULL, 'Black colour\r\nFront print only\r\nFor those about to Rock', NULL, '<p>Black colour<br />\r\nFront print only<br />\r\nFor those about to Rock</p>', NULL, 'upload/products/thambnail/1751535464158146.jpg', NULL, NULL, NULL, NULL, 1, '2022-12-07 00:56:26', NULL),
(60, 19, 1, 18, NULL, 'AC-DC', NULL, 'ac-dc', '', 'AC/DC/BLK/609', '10', NULL, NULL, 'Small,Midium,Large,X-Large,XXLARGE', NULL, NULL, NULL, '22.99', NULL, 'Black colour\r\nFront print only\r\nWe salute you British tour 82', NULL, '<p>Black colour<br />\r\nFront print only<br />\r\nWe salute you British tour 82</p>', NULL, 'upload/products/thambnail/1751536391550323.jpg', NULL, NULL, NULL, NULL, 1, '2022-12-07 01:11:10', NULL),
(61, 19, 1, 18, NULL, 'AC-DC', NULL, 'ac-dc', '', 'AC/DC/BLK/BSP/610', '10', NULL, NULL, 'Small,Midium,Large,X-Large,XXLARGE', NULL, NULL, NULL, '22.99', NULL, 'Back print\r\n\r\n\r\n\r\n\r\nAC/DC/610\r\nBack print\r\nF & B packaged about to Rock', NULL, '<p>Back print</p>\r\n\r\n<p><br />\r\nAC/DC/610<br />\r\nBack print<br />\r\nF &amp; B packaged about to Rock</p>', NULL, 'upload/products/thambnail/1751537651071680.jpg', NULL, NULL, NULL, NULL, 1, '2022-12-07 01:31:12', NULL),
(62, 19, 1, 18, NULL, 'AC-DC', NULL, 'ac-dc', '', 'AC/DC/BLK/BSP/610', '10', NULL, NULL, 'Small,Midium,Large,X-Large,XXLARGE', NULL, NULL, NULL, '22.99', NULL, 'Black colour\r\nBoth side print\r\nF & B packages about a Rock', NULL, '<p>Black colour<br />\r\nBoth side print<br />\r\nF &amp; B packages about a Rock</p>', NULL, 'upload/products/thambnail/1751538063180753.jpg', NULL, NULL, NULL, NULL, 1, '2022-12-07 01:37:45', NULL),
(64, 19, 1, 18, NULL, 'AC-DC', NULL, 'ac-dc', '', 'AC/DC/BLK/611', '10', NULL, NULL, 'Small,Midium,Large,X-Large,XXLARGE', NULL, NULL, NULL, '22.99', NULL, 'Black colour\r\nFront print only\r\nElectric', NULL, '<p>Black colour<br />\r\nFront print only<br />\r\nElectric</p>', NULL, 'upload/products/thambnail/1751640265908950.jpg', NULL, NULL, NULL, NULL, 1, '2022-12-08 05:06:27', '2022-12-08 05:06:27'),
(65, 19, 1, 18, NULL, 'AC-DC', NULL, 'ac-dc', '', 'AC/DC/BLK/612', '10', NULL, NULL, 'Small,Midium,Large,X-Large,XXlarge', NULL, NULL, NULL, '22.99', NULL, 'Black colour\r\nFront print only\r\nFor those about to Rock 81', NULL, '<p>Black colour<br />\r\nFront print only<br />\r\nFor those about to Rock 81</p>', NULL, 'upload/products/thambnail/1751641548847934.jpg', NULL, NULL, NULL, NULL, 1, '2022-12-08 05:02:36', NULL),
(66, 19, 1, 18, NULL, 'AC-DC', NULL, 'ac-dc', '', 'AC/DC/TAN/WASH/613', '10', NULL, NULL, 'Small,Midium,Large,X-Large,XXlarge', NULL, NULL, NULL, '27.99', NULL, 'Tan colour\r\nWash collection\r\nFront print  only\r\nLogo /bl Tan Dippy', NULL, '<p>Tan colour<br />\r\nWash collection<br />\r\nFront print &nbsp;only<br />\r\nLogo /bl Tan Dippy</p>', NULL, 'upload/products/thambnail/1751642268884481.jpg', NULL, NULL, NULL, NULL, 1, '2022-12-08 05:14:03', NULL),
(67, 19, 1, 18, NULL, 'AC-DC', NULL, 'ac-dc', '', 'AC/DC/BLK/BSP /614', '10', NULL, NULL, 'Small,Midium,Large,X-Large,XXlarge', NULL, NULL, NULL, '27.99', NULL, 'Back print', NULL, '<p>Back print</p>', NULL, 'upload/products/thambnail/1751642756973556.jpg', NULL, NULL, NULL, NULL, 1, '2022-12-08 05:21:48', NULL),
(68, 19, 1, 18, NULL, 'AC-DC', NULL, 'ac-dc', '', 'AC/DC/BLK/BSP/614', '10', NULL, NULL, 'Small,Midium,Large,X-Large,XXLARGE', NULL, NULL, NULL, '22.99', NULL, 'Black colour\r\nBoth side print\r\nF& B packaged black ice', NULL, '<p>Black colour<br />\r\nBoth side print<br />\r\nF&amp; B packaged black ice</p>', NULL, 'upload/products/thambnail/1751643060541785.jpg', NULL, NULL, NULL, NULL, 1, '2022-12-08 05:26:38', NULL),
(69, 19, 1, 18, NULL, 'AC-DC', NULL, 'ac-dc', '', 'AC/DC/BLK/615', '10', NULL, NULL, 'Small,Midium,Large,X-Large,XXlarge', NULL, NULL, NULL, '22.99', NULL, 'Black colour\r\nFront print only\r\nWe salute you bold', NULL, '<p>Black colour<br />\r\nFront print only<br />\r\nWe salute you bold</p>', NULL, 'upload/products/thambnail/1751643283958452.jpg', NULL, NULL, NULL, NULL, 1, '2022-12-08 05:30:11', NULL),
(70, 19, 1, 18, NULL, 'AC-DC', NULL, 'ac-dc', '', 'AC/DC/BLK/616', '10', NULL, NULL, 'Small,Midium,Large,X-Large,XXlarge', NULL, NULL, NULL, '22.99', NULL, 'Black colour\r\nFront print only\r\nBack in Black', NULL, '<p>Black colour<br />\r\nFront print only<br />\r\nBack in Black</p>', NULL, 'upload/products/thambnail/1751643492573174.jpg', NULL, NULL, NULL, NULL, 1, '2022-12-08 05:33:30', NULL),
(71, 19, 1, 18, NULL, 'AC-DC', NULL, 'ac-dc', '', 'AC/DC/RED/617', '10', NULL, NULL, 'Small,Midium,Large,X-Large,XXlarge', NULL, NULL, NULL, '20.00', NULL, 'Red colour\r\nFront print only\r\nLogo', NULL, '<p>Red colour<br />\r\nFront print only<br />\r\nLogo</p>', NULL, 'upload/products/thambnail/1751643745271348.jpg', NULL, NULL, NULL, NULL, 1, '2022-12-08 05:37:31', NULL),
(72, 19, 1, 18, NULL, 'AC-DC', NULL, 'ac-dc', '', 'AC/DC/GRY/618', '100', NULL, NULL, 'Small,Midium,Large,X-Large,XXlarge', NULL, NULL, NULL, '21.99', NULL, 'Grey colour\r\nFront print only\r\nWar machine', NULL, '<p>Grey colour<br />\r\nFront print only<br />\r\nWar machine</p>', NULL, 'upload/products/thambnail/1752090314235035.jpg', NULL, NULL, NULL, NULL, 1, '2022-12-13 03:55:32', NULL),
(73, 19, 1, 18, NULL, 'AC-DC', NULL, 'ac-dc', '', 'AC/DC/WHT/619', '100', NULL, NULL, 'Small,Midium,Large,X-Large,XXlarge', NULL, NULL, NULL, '21.99', NULL, 'White colour\r\nFront print only\r\nFor those about Rock', NULL, '<p>White colour<br />\r\nFront print only<br />\r\nFor those about Rock</p>', NULL, 'upload/products/thambnail/1752090540903651.jpg', NULL, NULL, NULL, NULL, 1, '2022-12-13 03:59:09', NULL),
(74, 19, 1, 18, NULL, 'AC-DC', NULL, 'ac-dc', '', 'AC/DC/GRY/620', '100', NULL, NULL, 'Small,Midium,Large,Xx,XXlarge', NULL, NULL, NULL, '22.99', NULL, 'Grey colour\r\nFront print only\r\nHighway to hell', NULL, '<p>Grey colour<br />\r\nFront print only<br />\r\nHighway to hell</p>', NULL, 'upload/products/thambnail/1752090768457923.jpg', NULL, NULL, NULL, NULL, 1, '2022-12-13 04:02:45', NULL),
(75, 19, 1, 18, NULL, 'AC-DC', NULL, 'ac-dc', '', 'AC/DC/BLU/WASH/621', '100', NULL, NULL, 'Small,Midium,Large,X-Large,XXlarge', NULL, NULL, NULL, '27.99', NULL, 'Blue colour\r\nWash collection\r\nLogo on front\r\nPlain back', NULL, '<p>Blue colour<br />\r\nWash collection<br />\r\nLogo on front<br />\r\nPlain back</p>', NULL, 'upload/products/thambnail/1752091035543221.jpg', NULL, NULL, NULL, NULL, 1, '2022-12-13 04:07:00', NULL),
(76, 19, 1, 18, NULL, 'AC-DC', NULL, 'ac-dc', '', 'AC/DC/BLK/622', '100', NULL, NULL, 'Small,Midium,Large,X-Large,XXLARGE', NULL, NULL, NULL, '22.99', NULL, 'Black colour\r\nFront print only\r\nBrass bells', NULL, '<p>Black colour<br />\r\nFront print only<br />\r\nBrass bells</p>', NULL, 'upload/products/thambnail/1752091229965852.jpg', NULL, NULL, NULL, NULL, 1, '2022-12-13 04:10:06', NULL),
(77, 19, 1, 17, NULL, 'AC/DC', NULL, 'ac/dc', '', 'AC/DC/BLK/623', '100', NULL, NULL, 'Small,Midium,Large,X-Large,XXLARGE', NULL, NULL, NULL, '25.99', NULL, 'Black colour, Front print', NULL, '<p>AC/DC/BLK/623<br />\r\nAC/DC<br />\r\nBlack colour<br />\r\nFront print<br />\r\nSmall<br />\r\nMedium<br />\r\nLarge<br />\r\nX-Large<br />\r\nXXLARGE<br />\r\n&pound;25.99<br />\r\nPlus postage and packaging</p>', NULL, 'upload/products/thambnail/1757711754081569.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-13 05:05:55', NULL),
(78, 19, 1, 17, NULL, 'AC/DC', NULL, 'ac/dc', '', 'AC/DC/WHT/624', '100', NULL, NULL, 'Small,Midium,Large,X-Large,XXlarge', NULL, NULL, NULL, '24.99', NULL, 'White colour, Front print only, Have a drink on me', NULL, '<p>AC/DC/WHT/624<br />\r\nAC/DC<br />\r\nWhite colour<br />\r\nFront print only<br />\r\nHave a drink on me<br />\r\nSmall<br />\r\nMedium<br />\r\nLarge<br />\r\nX-Large<br />\r\nXXlarge<br />\r\n&pound;24.99<br />\r\nPlus postage and packaging</p>', NULL, 'upload/products/thambnail/1757712050526083.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-13 05:10:38', NULL),
(79, 19, 1, 17, NULL, 'AC/DC', NULL, 'ac/dc', '', 'AC/DC/BLK/625', '100', NULL, NULL, 'Small,Midium,Large,X-Large,XXlarge', NULL, NULL, NULL, '29.99', NULL, 'Black colour, Front print only, Public Enemy', NULL, '<p>AC/DC/BLK/625<br />\r\nAC/DC<br />\r\nBlack colour<br />\r\nFront print only<br />\r\nPublic Enemy<br />\r\nSmall<br />\r\nMedium<br />\r\nLarge<br />\r\nX-Large<br />\r\nXXlarge<br />\r\n&pound;29.99<br />\r\nPlus postage and packaging</p>', NULL, 'upload/products/thambnail/1757715286210324.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-13 06:02:04', NULL),
(80, 19, 1, 17, NULL, 'AC/DC', NULL, 'ac/dc', '', 'ACDC/BLK/626', '100', NULL, NULL, 'Small,Midium,Large,X-Large,XXlarge', NULL, NULL, NULL, '24.99', NULL, 'Black colour, Front print only, High way to hell group', NULL, '<p>ACDC/BLK/626<br />\r\n&nbsp;AC/DC<br />\r\nBlack colour<br />\r\nFront print only<br />\r\nHigh way to hell group<br />\r\nSmall<br />\r\nMedium<br />\r\nLarge<br />\r\nX-Large<br />\r\nXXlarge<br />\r\n&pound;24.99<br />\r\nPlus postage and packaging</p>', NULL, 'upload/products/thambnail/1757715416281798.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-13 06:04:08', NULL),
(81, 19, 1, 17, NULL, 'AC/DC', NULL, 'ac/dc', '', 'AC/DC/BLK/627', '100', NULL, NULL, 'Small,Midium,Large,X-Large,XXLARGE', NULL, NULL, NULL, '34.99', NULL, 'Black colour, Front print only, Back in black detail', NULL, '<p>AC/DC/BLK/627<br />\r\nAC/DC<br />\r\nBlack colour<br />\r\nFront print only<br />\r\nBack in black detail<br />\r\nSmall<br />\r\nMedium<br />\r\nLarge<br />\r\nX-Large<br />\r\nXXLARGE<br />\r\n&pound;34.99<br />\r\nPlus postage and packaging</p>', NULL, 'upload/products/thambnail/1757795486243831.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-14 03:16:48', NULL),
(82, 19, 1, 17, NULL, 'AC-DC', NULL, 'ac-dc', '', 'AC/DC/TDY/GRY/628', '100', NULL, NULL, 'Small,Midium,Large,X-Large,XXLARGE', NULL, NULL, NULL, '34.99', NULL, 'Tye dye, Grey colour', NULL, '<p>AC/DC/TDY/GRY/628<br />\r\nAC/DC<br />\r\nTye dye<br />\r\nGrey colour<br />\r\nLogo<br />\r\nSmall<br />\r\nMedium<br />\r\nLarge<br />\r\nX-Large<br />\r\nXXLARGE<br />\r\n&pound;34.99<br />\r\nPlus postage and packaging</p>', NULL, 'upload/products/thambnail/1757796998995729.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-14 03:40:51', NULL),
(83, 19, 1, 17, NULL, 'AC/DC', NULL, 'ac/dc', '', 'AC/DC/TDY//629', '100', NULL, NULL, 'Small,Midium,Large,X-Large,XXLARGE', NULL, NULL, NULL, '39.99', NULL, 'Tye dye, Black colour , ront print only, Flames', NULL, '<p>AC/DC/TDY//629<br />\r\nAC/DC<br />\r\nTye dye<br />\r\nBlack colour<br />\r\nFront print only<br />\r\nFlames<br />\r\nSmall<br />\r\nMedium<br />\r\nLarge<br />\r\nX-Large<br />\r\nXXLARGE<br />\r\n&pound;39.99<br />\r\nPlus postage and packaging<br />\r\nPlain back</p>', NULL, 'upload/products/thambnail/1757797965683111.jpg', 1, 1, 1, 1, 1, '2023-02-14 03:56:13', NULL),
(84, 19, 1, 17, NULL, 'AC/DC', NULL, 'ac/dc', '', 'AC/DC/TDY/BLU/630', '100', NULL, NULL, 'Small,Midium,Large', NULL, NULL, NULL, '38.99', NULL, 'Blue colour, Tye dye, Front print only Logo', NULL, '<p>AC/DC/TDY/BLU/630<br />\r\nAC/DC<br />\r\nBlue colour<br />\r\nTye dye<br />\r\nFront print only<br />\r\nLogo<br />\r\n&pound;38.99<br />\r\nPlus postage and packaging<br />\r\nPlain black</p>', NULL, 'upload/products/thambnail/1757798139278205.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-15 00:43:40', '2023-02-15 00:43:40'),
(85, 20, 1, 17, NULL, 'Aerosmith Ladies Fit', NULL, 'aerosmith-ladies-fit', '', 'RS/BLK/198', '100', NULL, NULL, 'XL Fitted', NULL, NULL, NULL, '20.00', NULL, 'Aerosmith Ladies Fit, Black colour t shirt', NULL, '<p>RS/BLK/198<br />\r\nAerosmith Ladies Fit<br />\r\nBlack colour t shirt<br />\r\nBoth side print<br />\r\nStyle Group photo world tour 2014<br />\r\nSize XL Fitted<br />\r\nPrice &pound;20.00 plus postage and packaging</p>', NULL, 'upload/products/thambnail/1757798432532341.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-14 04:03:38', NULL),
(86, 21, 1, 17, NULL, 'All Time Low', NULL, 'all-time-low', '', 'ALT/BLK/276', '100', NULL, NULL, 'Small,Midium,Large,X-Large,XXLarge', NULL, NULL, NULL, '21.25', NULL, 'Black colour, Style War, Front print only', NULL, '<p>ALT/BLK/276<br />\r\nAll time low<br />\r\nBlack colour<br />\r\nStyle War<br />\r\nFront print only<br />\r\nSize small<br />\r\nMedium<br />\r\nLarge<br />\r\nX-Large<br />\r\nXXLarge<br />\r\nPrice &pound;21.25<br />\r\nPlus postage and packaging</p>', NULL, 'upload/products/thambnail/1757798631156804.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-14 04:06:48', NULL),
(87, 21, 1, 17, NULL, 'All Time Low', NULL, 'all-time-low', '', 'ALT/BLK/277', '100', NULL, NULL, 'Small,Midium,Large,X-Large,XXLarge', NULL, NULL, NULL, '21.00', NULL, 'Black colour, Style Arrow, Front print only', NULL, '<p>ALT/BLK/277<br />\r\nAll time low<br />\r\nBlack colour<br />\r\nStyle Arrow<br />\r\nFront print only<br />\r\nSize small<br />\r\nMedium<br />\r\nLarge<br />\r\nX-Large<br />\r\nXXLarge<br />\r\nPrice &pound;21.00<br />\r\nPlus postage and packaging</p>', NULL, 'upload/products/thambnail/1757798729557705.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-14 04:08:21', NULL),
(88, 21, 1, 17, NULL, 'All Time Low', NULL, 'all-time-low', '', 'ATL/RED/278', '100', NULL, NULL, 'Small,Midium,Large,X-Large', NULL, NULL, NULL, '21.99', NULL, 'Red colour, Front print only, Style Da Bomb', NULL, '<p>ATL/RED/278<br />\r\nAll time low<br />\r\nRed colour<br />\r\nFront print only<br />\r\nStyle Da Bomb<br />\r\nSize<br />\r\nSmall<br />\r\nMedium<br />\r\nLarge<br />\r\nX-Large<br />\r\nPrice &pound;21.99 plus postage and packaging</p>', NULL, 'upload/products/thambnail/1757798904756704.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-14 04:11:08', NULL),
(89, 21, 1, 17, NULL, 'All Time Low', NULL, 'all-time-low', '', 'ATL/LBE/279', '100', NULL, NULL, 'Midium,Large', NULL, NULL, NULL, '21.99', NULL, 'Light blue colour, Front print only, Style love like war', NULL, '<p>ATL/LBE/279<br />\r\nAll time low<br />\r\nLight blue colour<br />\r\nFront print only<br />\r\nStyle love like war<br />\r\nSize medium<br />\r\nLarge<br />\r\nPrice &pound;21.99<br />\r\nPlus postage and packaging</p>', NULL, 'upload/products/thambnail/1757798996541816.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-14 04:12:36', NULL),
(90, 21, 1, 17, NULL, 'All Time Low', NULL, 'all-time-low', '', 'ATL/BLK/280', '100', NULL, NULL, 'Small,Midium,Large,X-Large,XXLarge', NULL, NULL, NULL, '21.99', NULL, 'Black colour, Front print only, Style Feel like War', NULL, '<p>ATL/BLK/280<br />\r\nAll time low<br />\r\nBlack colour<br />\r\nFront print only<br />\r\nStyle Feel like War<br />\r\nSize small<br />\r\nSmall<br />\r\nMedium<br />\r\nLarge<br />\r\nX-Large<br />\r\nXXLarge<br />\r\nPrice &pound;21.99 plus postage and packaging</p>', NULL, 'upload/products/thambnail/1757799127100841.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-14 04:14:41', NULL),
(91, 21, 1, 17, NULL, 'All Time Low', NULL, 'all-time-low', '', 'ATL/BLK/281', '100', NULL, NULL, 'X-LARGE', NULL, NULL, NULL, '21.00', NULL, 'Black colour, Ladies fit, Front print only', NULL, '<p>ATL/BLK/281<br />\r\nAll time low<br />\r\nBlack colour<br />\r\nLadies fit<br />\r\nFront print only<br />\r\nStyle Tour pop music hot topic<br />\r\nWomen fits<br />\r\nSize X-LARGE<br />\r\nPrice &pound;21.00 plus postage and packaging</p>', NULL, 'upload/products/thambnail/1757802158250552.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-14 05:02:51', NULL),
(93, 22, 1, 17, NULL, 'Asking Alexandra', NULL, 'asking-alexandra', '', 'AAX/BLK/261', '100', NULL, NULL, 'Small', NULL, NULL, NULL, '20.00', NULL, 'Asking Alexandra, Black t shirt', NULL, '<p>AAX/BLK/261<br />\r\nAsking Alexandra<br />\r\nBlack t shirt<br />\r\nStyle:<br />\r\nSize small<br />\r\nPrice &pound;20.00 plus postage and packaging</p>', NULL, 'upload/products/thambnail/1757878786970888.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-15 01:20:50', NULL),
(94, 22, 1, 17, NULL, 'Asking Alexandra', NULL, 'asking-alexandra', '', 'AAX/BLK/262', '100', NULL, NULL, 'Midium', NULL, NULL, NULL, '20.00', NULL, 'Asking Alexandra, Black t shirt', NULL, '<p>AAX/BLK/262<br />\r\nAsking Alexandra<br />\r\nBlack t shirt<br />\r\nStyle:<br />\r\nSize medium<br />\r\nPrice &pound;20.00 plus postage and packaging</p>', NULL, 'upload/products/thambnail/1757882313154973.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-15 02:16:53', NULL),
(95, 22, 1, 17, NULL, 'Asking Alexandra', NULL, 'asking-alexandra', '', 'AAX/BLK/263', '100', NULL, NULL, 'Small,Midium,X-Large', NULL, NULL, NULL, '20.00', NULL, 'Asking Alexandra, Black t shirt', NULL, '<p>AAX/BLK/263<br />\r\nAsking Alexandra<br />\r\nBlack t shirt<br />\r\nStyle:<br />\r\nSize:&nbsp;<br />\r\nSmall<br />\r\nMedium<br />\r\nX-Large<br />\r\nPrice &pound;20.00 plus postage and packaging</p>', NULL, 'upload/products/thambnail/1757883525848977.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-15 02:36:09', NULL),
(96, 22, 1, 17, NULL, 'Asking Alexandra', NULL, 'asking-alexandra', '', 'AAX/BLK/264', '100', NULL, NULL, 'Small,Midium,Large', NULL, NULL, NULL, '21.00', NULL, 'Asking Alexandra, Black t shirt, Style From death to destiny', NULL, '<p>AAX/BLK/264<br />\r\nAsking Alexandra<br />\r\nBlack t shirt<br />\r\nStyle From death to destiny<br />\r\nSize<br />\r\nSmall<br />\r\nMedium<br />\r\nLarge<br />\r\nPrice &pound;21.00 plus postage and packaging</p>', NULL, 'upload/products/thambnail/1757892366926182.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-15 04:56:41', NULL),
(97, 22, 1, 17, NULL, 'Asking Alexandra', NULL, 'asking-alexandra', '', 'AAX/BLK/265', '100', NULL, NULL, 'Small,Midium,Large', NULL, NULL, NULL, '22.00', NULL, 'Black colour t shirt, Style: Don’t pray for me', NULL, '<p>AAX/BLK/265<br />\r\nAsking Alexandra<br />\r\nBlack colour t shirt<br />\r\nStyle: Don&rsquo;t pray for me<br />\r\nSize:<br />\r\nSmall<br />\r\nMedium<br />\r\nLarge<br />\r\nPrice &pound;22.00 plus postage and packaging</p>', NULL, 'upload/products/thambnail/1757893305095199.jpg', 1, NULL, NULL, NULL, 1, '2023-02-15 06:01:17', '2023-02-15 06:01:17'),
(98, 22, 1, 17, NULL, 'Asking Alexandra', NULL, 'asking-alexandra', '', 'AAX/BLK/266', '100', NULL, NULL, 'Large', NULL, NULL, NULL, '22.00', NULL, 'Black colour t shirt, Style Group photo', NULL, '<p>AAX/BLK/266<br />\r\nAsking Alexandra<br />\r\nBlack colour t shirt<br />\r\nStyle Group photo<br />\r\nSize: large<br />\r\nPrice &pound;22.00 plus postage and packaging</p>', NULL, 'upload/products/thambnail/1758525093657985.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-22 04:33:36', NULL),
(99, 22, 1, 17, NULL, 'Asking Alexandra', NULL, 'asking-alexandra', '', 'AAX/YEL/267', '100', NULL, NULL, 'Small,Midium,X-Large', NULL, NULL, NULL, '20.00', NULL, 'Yellow colour skinny fit, Girls fit, Style Multi eyed monster on yellow', NULL, '<p>AAX/YEL/267<br />\r\nAsking Alexandra<br />\r\nYellow colour skinny fit<br />\r\nGirls fit<br />\r\nStyle Multi eyed monster on yellow<br />\r\nSize small<br />\r\nMedium<br />\r\nX-Large<br />\r\nPrice : 20.00<br />\r\nPlus postage and packaging</p>', NULL, 'upload/products/thambnail/1758525260614906.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-22 04:36:15', NULL),
(100, 22, 1, 17, NULL, 'Asking Alexandra', NULL, 'asking-alexandra', '', 'AAX/BLK/327', '100', NULL, NULL, 'Small,Large', NULL, NULL, NULL, '21.99', NULL, 'Black t shirt, Style Reckless & Relentless, Front print only', NULL, '<p>AAX/BLK/327<br />\r\nAsking Alexandra<br />\r\nBlack t shirt<br />\r\nStyle Reckless &amp; Relentless<br />\r\nFront print only<br />\r\nSize: &nbsp;small, Large<br />\r\nPrice &pound;21.99<br />\r\nPlus postage and packaging</p>', NULL, 'upload/products/thambnail/1758525365280162.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-22 04:37:55', NULL);
INSERT INTO `products` (`id`, `brand_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `product_name_en`, `product_name_hin`, `product_slug_en`, `product_slug_hin`, `product_code`, `product_qty`, `product_tags_en`, `product_tags_hin`, `product_size_en`, `product_size_hin`, `product_color_en`, `product_color_hin`, `selling_price`, `discount_price`, `short_descp_en`, `short_descp_hin`, `long_descp_en`, `long_descp_hin`, `product_thambnail`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `status`, `created_at`, `updated_at`) VALUES
(101, 22, 1, 17, NULL, 'Asking Alexandra', NULL, 'asking-alexandra', '', 'AAX/BLK/328', '100', NULL, NULL, 'Small,Midium,Large,Xl', NULL, NULL, NULL, '21.99', NULL, 'Black colour, Front print only, Style Rock n Roll', NULL, '<p>AAX/BLK/328<br />\r\nAsking Alexandra<br />\r\nBlack colour<br />\r\nFront print only<br />\r\nStyle Rock n Roll<br />\r\nSize:&nbsp;<br />\r\nSmall<br />\r\nMedium<br />\r\nLarge<br />\r\nXl<br />\r\nPrice &pound;21.99 plus postage and packaging</p>', NULL, 'upload/products/thambnail/1758525482518859.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-22 04:39:47', NULL),
(102, 22, 1, 17, NULL, 'Asking Alexandra', NULL, 'asking-alexandra', '', 'AAX/BLK/329', '100', NULL, NULL, 'Small,Midium', NULL, NULL, NULL, '21.99', NULL, 'Black colour, Front print only, Style This World ( Retail pack)', NULL, '<p>AAX/BLK/329<br />\r\nAsking Alexandra<br />\r\nBlack colour<br />\r\nFront print only<br />\r\nStyle This World ( Retail pack)<br />\r\nSize: &nbsp;small, Medium<br />\r\nPrice &pound;21.99<br />\r\nPlus postage and packaging</p>', NULL, 'upload/products/thambnail/1758525554994015.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-22 04:40:56', NULL),
(103, 22, 1, 17, NULL, 'Asking Alexandra', NULL, 'asking-alexandra', '', 'AAXBLK/331', '100', NULL, NULL, 'Small,Midium,Large,X-Large,XXLarge', NULL, NULL, NULL, '21.99', NULL, 'Black colour, Front print only, Style Reckless', NULL, '<p>AAXBLK/331<br />\r\nAsking Alexandra<br />\r\nBlack colour<br />\r\nFront print only<br />\r\nStyle Reckless<br />\r\nSize: small<br />\r\nMedium<br />\r\nLarge<br />\r\nX-Large<br />\r\nXXLarge<br />\r\nPrice &pound;21.99<br />\r\nPlus postage and packaging</p>', NULL, 'upload/products/thambnail/1758526029808372.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-22 04:48:29', NULL),
(104, 22, 1, 17, NULL, 'Asking Alexandra', NULL, 'asking-alexandra', '', 'AAX/BLK/330', '100', NULL, NULL, 'Small,Midium,Large,X-Large,XXLarge', NULL, NULL, NULL, '21.99', NULL, 'Black colour, Front print only, Style Coffin Girl', NULL, '<p>AAX/BLK/330<br />\r\nAsking Alexandra<br />\r\nBlack colour<br />\r\nFront print only<br />\r\nStyle Coffin Girl<br />\r\nSize: Small<br />\r\nMedium<br />\r\nLarge<br />\r\nX-Large<br />\r\nXXLarge<br />\r\nPrice &pound;21.99<br />\r\nPlus postage and packaging</p>', NULL, 'upload/products/thambnail/1758526177285143.jpg', NULL, NULL, NULL, NULL, 1, '2023-02-22 04:50:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `rating` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `comment`, `summary`, `status`, `rating`, `created_at`, `updated_at`) VALUES
(5, 95, 6, 'this product only one', 'good', '1', 4, '2023-02-15 03:15:32', '2023-02-15 03:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint UNSIGNED NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google_analytics` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_title`, `meta_author`, `meta_keyword`, `meta_description`, `google_analytics`, `created_at`, `updated_at`) VALUES
(1, 'Based on specially selected synthetic resin, aluminium paste and high grade solvent\r\n\r\n', 'nadif', 'hfutyeie,uerieue,oieriei', 'Based on specially selected synthetic resin, aluminium paste and high grade solvent\r\n\r\nHas a nice texture and feel to the applied surfaces', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5h9j5ubNfnZXSZN3WLTFJTrr2F42uDzIQPBGyF5E', NULL, '157.55.39.82', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlo0c3dTSDAxbHRBOTAxbFp0OGhOQWF1R1ZYaUlGMFF4M2h5SENQNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8vd3d3Lmhhc2hjb2xsZWN0aW9uLmNvbS9icmFuZC9wcm9kdWN0LzE5L2FjLWRjIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1677141692),
('Fnrl2qZoVfHoIwaxtBlrXJmzRLmaNwbdO9PEHiuH', NULL, '114.119.149.71', 'Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2Jkc1I2OWRYS0I1Q0VZMlBQME1McDNSUHdkUmozUmVLU0xEVUoyQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly93d3cuaGFzaGNvbGxlY3Rpb24uY29tL3B1YmxpYy9pbmRleC5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1677140426),
('IGjfvko2GCWX30mLwrQuq65bkbzwwhaPvkvhVUQZ', NULL, '52.43.151.191', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRm9YQ0h1QzBDZTdkQ3dmU3hkdnROaHBLSFdHck85SmY5SmNHRk9KNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly9oYXNoY29sbGVjdGlvbi5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1677143782),
('L7wsnmXpt20IoaqJCADuqfS6KWRnQBx3XnKeuO4q', NULL, '114.119.149.200', 'Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDNrMnVyUGJsUHN6dmpQMDZzaXN2Nm54bWFpTE9OR1Q3NXdlZm01NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly93d3cuaGFzaGNvbGxlY3Rpb24uY29tL3B1YmxpYy9pbmRleC5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1677140346),
('n50ntJeQC4SwlqBbhkkWivIEnAUsW7zmGJmr6BHi', NULL, '54.184.63.241', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHA3UFg2OFFMSU84M2k4SEpVbmtWek12bnBSdWphaVE0NEpmNkcyVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vaGFzaGNvbGxlY3Rpb24uY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1677143783),
('NZUNBTbqiVsx35rhrEWxgZqGi1qgY8liWsiFJLdP', NULL, '114.119.140.237', 'Mozilla/5.0 (Linux; Android 7.0;) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; PetalBot;+https://webmaster.petalsearch.com/site/petalbot)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZExjWVZqWVJndUhtT0ZGUEF4M2t1anFnVHZPdHBGUTlmZlZQSUdsdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly93d3cuaGFzaGNvbGxlY3Rpb24uY29tL3B1YmxpYy9pbmRleC5waHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1677143343),
('p8MseTf86d8mlLVZjSyNIJ4R5gvP1LNaAMUJWmg4', NULL, '40.77.167.214', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVdCQUNObmNKOWgzcER4U1pHNVo0S1Q4SU9MaFFRb296aXpDSDIwZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vaGFzaGNvbGxlY3Rpb24uY29tL3Nob3AiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1677143534),
('uWorkG2EnL9sU8MOFKoE9T4HAWCxgWh4O74w3osm', NULL, '103.175.130.19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiakZUMlNVcG41QmNSQTg3bjZMVVJUNnhZbDhoeWoyeExFcFBiTWQydCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vaGFzaGNvbGxlY3Rpb24uY29tL3NldHRpbmcvc2l0ZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1677147720),
('xQ7RdZvZ8jecd9DL5a34xzv2RWbuqnSGoV1HCJiU', NULL, '20.99.210.64', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edge/96.0.1054.34', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiczg3SFVENkxaS0ZFeXE3emY0MlBFMWwyMTNVZlYxTlF6dXpERmhOciI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MDoiaHR0cHM6Ly9oYXNoY29sbGVjdGlvbi5jb20vdXNlci93aXNobGlzdCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwOiJodHRwczovL2hhc2hjb2xsZWN0aW9uLmNvbS91c2VyL3dpc2hsaXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1677144077),
('YqYxCw6UPBzqliYKq8PQra4LulSd82iMuzMIljyA', NULL, '52.167.144.45', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1VqNEpHVGNrR1JRcDg5Vkl3ZXhSNW15aldhbExtd29zTWdZVk1oQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vd3d3Lmhhc2hjb2xsZWN0aW9uLmNvbS9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1677143321);

-- --------------------------------------------------------

--
-- Table structure for table `ship_districts`
--

CREATE TABLE `ship_districts` (
  `id` bigint UNSIGNED NOT NULL,
  `division_id` bigint UNSIGNED NOT NULL,
  `district_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_districts`
--

INSERT INTO `ship_districts` (`id`, `division_id`, `district_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'dhaka', '2023-02-15 01:38:33', NULL),
(2, 1, 'manikgonj', '2023-02-15 02:57:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_divisions`
--

CREATE TABLE `ship_divisions` (
  `id` bigint UNSIGNED NOT NULL,
  `division_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_divisions`
--

INSERT INTO `ship_divisions` (`id`, `division_name`, `created_at`, `updated_at`) VALUES
(1, 'dhaka', '2023-02-15 01:38:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_states`
--

CREATE TABLE `ship_states` (
  `id` bigint UNSIGNED NOT NULL,
  `division_id` bigint UNSIGNED NOT NULL,
  `district_id` bigint UNSIGNED NOT NULL,
  `state_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_states`
--

INSERT INTO `ship_states` (`id`, `division_id`, `district_id`, `state_name`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Mahammadpur', '2023-02-15 01:38:51', NULL),
(2, 1, 2, 'Ruperhat', '2023-02-15 02:57:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `logo`, `phone_one`, `phone_two`, `email`, `company_name`, `company_address`, `facebook`, `twitter`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'upload/logo/1745210566310574.png', '0373636', '5573853785', 'merge@gmail.com', 'Hash Collection', 'Mohammadpur  Dhaka -1205', NULL, NULL, NULL, NULL, NULL, '2023-02-18 04:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `slider_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_img`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(3, 'upload/slider/1747730513526363.jpg', '#', '#', 1, NULL, '2022-10-26 00:58:48'),
(4, 'upload/slider/1747730720488246.jpg', '#', '#', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `subcategory_name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_name_hin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcategory_slug_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug_hin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name_en`, `subcategory_name_hin`, `subcategory_slug_en`, `subcategory_slug_hin`, `created_at`, `updated_at`) VALUES
(12, 3, 'Women', 'Women', 'women', 'Women', NULL, NULL),
(13, 3, 'Men', 'Men', 'men', 'Men', NULL, NULL),
(14, 1, 'Women', 'Women', 'women', 'Women', NULL, NULL),
(15, 3, 'Kids & Baby', 'Kids & Baby', 'kids-&-baby', 'Kids-&-Baby', NULL, NULL),
(17, 1, 'Men', 'Men', 'men', 'Men', NULL, NULL),
(18, 1, 'Kids & Baby', 'Kids & Baby', 'kids-&-baby', 'Kids-&-Baby', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `subcategory_id` int NOT NULL,
  `subsubcategory_name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_name_hin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subsubcategory_slug_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_slug_hin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_sub_categories`
--

INSERT INTO `sub_sub_categories` (`id`, `category_id`, `subcategory_id`, `subsubcategory_name_en`, `subsubcategory_name_hin`, `subsubcategory_slug_en`, `subsubcategory_slug_hin`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'blue pant', 'नीली पैंट', 'blue-pant', 'नीली-पैंट', NULL, NULL),
(2, 1, 2, 'blue shirt', 'blue shirt', 'blue-shirt', 'blue-shirt', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `comment`, `image`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, 'nazmul hoss1', 'Its god web site', '63f34bf0de339.jpg', 'developer', 1, NULL, '2023-02-20 05:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_seen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `last_seen`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'hasan', 'hasan@gmail.com', '4645646456', NULL, NULL, '12345656', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'zNjXULdkglT', 'ftacoma6o56ofy1m5@outlook.com', '5982099539', '2022-09-30 16:20:54', NULL, '$2y$10$huh8y6w.9yfIEyOxycbkbe7wjdjCdscy6ExlLWEBxMDXoXk6UooGa', NULL, NULL, NULL, NULL, NULL, '2022-09-30 10:50:40', '2022-09-30 10:50:54'),
(3, 'WIZniClEzX', 'briveralopa@outlook.com', '2205200297', '2022-11-06 01:17:37', NULL, '$2y$10$yA7S4KrDPTM0X8fVhqftFuQPDHByZ6UfoLmGgGvQlCPk0E7YRDitK', NULL, NULL, NULL, NULL, NULL, '2022-11-05 19:46:48', '2022-11-05 19:47:37'),
(4, 'RXKwHUlPSdsfTyE', 'fezhakowiq@outlook.com', '3560806102', '2022-11-18 21:22:35', NULL, '$2y$10$urIbWsKrf/aN31u8z12.3OurjJkahbXyMCFgpYT5b4ru92JG9yrMu', NULL, NULL, NULL, NULL, NULL, '2022-11-18 15:52:24', '2022-11-18 15:52:35'),
(5, 'DbQxzcISPlpdwTJe', 'devondokat@outlook.com', '5191956061', '2023-01-18 14:44:55', NULL, '$2y$10$cPvpDxWZIKRWbLRsDI7NFOaZPiaVwW4Ot68P4CgQj4qwkvwpcP63a', NULL, NULL, NULL, NULL, NULL, '2023-01-18 09:13:04', '2023-01-18 09:14:55'),
(6, 'nafiz', 'nafiz016@gmail.com', '01963577003', '2023-02-15 08:47:23', NULL, '$2y$10$B2kbTigmPuzhVSoAfmH06OtVR1Ay30kk0XqRmx7Hq2r1MA/SX.yse', NULL, NULL, NULL, NULL, NULL, '2023-02-15 01:45:50', '2023-02-15 03:17:23'),
(7, 'Mohammad Naymul Islam', 'merge.creation@gmail.com', '01768607919', '2023-02-18 11:24:37', NULL, '$2y$10$O13m7ocQK5qzTeOPRTKNsONDKDKnCsnMzrXWOy6KJCWddruYjvbFO', NULL, NULL, NULL, NULL, '202302180818PP_india.jpg', '2023-02-18 02:22:54', '2023-02-18 05:54:37'),
(8, 'jVbuHOqdhk', 'rugxigecuz@outlook.com', '2176949046', '2023-02-22 05:10:36', NULL, '$2y$10$ZmWH523G.1aTuV2xrJYyF.3qpIv33uP.jqnQkaH0N1ZHJBMI6Wqpa', NULL, NULL, NULL, NULL, NULL, '2023-02-21 23:32:37', '2023-02-21 23:40:36'),
(9, 'DxWQhMUnFfBtY', 'dima3cqc@outlook.com', '7318504472', '2023-02-22 20:39:30', NULL, '$2y$10$tl8fUKbm6DHb2gtiiTmBLuqkDjThZJE25TiiSc1i2dWRcBcmaaGia', NULL, NULL, NULL, NULL, NULL, '2023-02-22 15:09:01', '2023-02-22 15:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 6, 95, '2023-02-15 03:05:32', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_positions`
--
ALTER TABLE `banner_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `ship_districts`
--
ALTER TABLE `ship_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_states`
--
ALTER TABLE `ship_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `banner_positions`
--
ALTER TABLE `banner_positions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ship_districts`
--
ALTER TABLE `ship_districts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ship_states`
--
ALTER TABLE `ship_states`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
