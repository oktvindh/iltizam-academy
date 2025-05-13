-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 25, 2024 at 02:18 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `category_name`, `category_slug`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'laravel', NULL, '2023-10-03 14:03:09'),
(2, 'React', 'react', NULL, NULL),
(3, 'Mern Stack', 'mern-stack', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blogcat_id` int(11) NOT NULL,
  `post_title` varchar(255) DEFAULT NULL,
  `post_slug` varchar(255) DEFAULT NULL,
  `post_image` varchar(255) DEFAULT NULL,
  `long_descp` text DEFAULT NULL,
  `post_tags` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `blogcat_id`, `post_title`, `post_slug`, `post_image`, `long_descp`, `post_tags`, `created_at`, `updated_at`) VALUES
(1, 3, 'Two of Amazon\'s Most Popular Prime', 'two-of-amazon\'s-most-popular-prime', 'upload/post/1778854741002902.png', '<p>11At the center of the case are two features popular with consumers: the \"Buy Now\" button and the shipping component of Amazon Prime. The FTC is arguing that Amazon undergoes an imbalance of power in its business model for sellers: making it easier to sell through them, and entirely through them, by making it very difficult to sell anywhere else. This cycle, the complaint argues, stifles competition, reinforces an unfair monopoly, and harms sellers and consumers.</p>\r\n<p>Amazon, however, told&nbsp;<em>Entrepreneur</em>&nbsp;in a statement that the practices the FTC is challenging \"have helped to spur competition and innovation across the retail industry,\" the company said. \"If the FTC gets its way, the result would be fewer products to choose from, higher prices, slower deliveries for consumers and reduced options for small businesses &mdash; the opposite of what antitrust law is designed to do.\"</p>\r\n<p>Karen Weise, a technology correspondent for&nbsp;<em>The New York Times</em>, explained on a Monday podcast episode of&nbsp;<a href=\"https://www.nytimes.com/2023/10/02/podcasts/the-daily/amazon-ftc.html\">The Daily</a>&nbsp;that the \"Buy Now\" feature is under scrutiny by the FTC because of the subsequent punitive measures imposed on sellers who may sell their product elsewhere.</p>\r\n<p>\"Amazon has these machines that go across other websites, and if they find it\'s even one penny less elsewhere, they will essentially punish the seller for that happening,\" Weise said on the podcast.</p>', 'jQuery,laravel,react,11', '2023-10-04 13:35:00', '2023-10-04 13:35:00'),
(2, 1, 'Free Webinar: What CEOs Want in a CFO', 'free-webinar:-what-ceos-want-in-a-cfo', 'upload/post/1778853196808883.png', '<p>One company that knows this very well is Oracle NetSuite. They interviewed more than a dozen CEOs to find out&nbsp;<a href=\"https://www.netsuite.com/portal/assets/pdf/wp-what-ceos-want-in-a-cfo.pdf\" target=\"_blank\" rel=\"noopener\">what they seek in a CFO</a>&nbsp;and what makes for a top finance partner. The good news: These traits are also CFO career-building powerhouses. While there were variations based on industry, some general sentiments remained constant.</p>\r\n<p>Join us for our free webinar,&nbsp;<em>What CEOs Want in a CFO</em>, presented by Oracle NetSuite and&nbsp;<em>Entrepreneur</em>. We\'ll cover seven top skills CEOs say they want from their financial partners and how CFOs can deliver.</p>\r\n<div class=\"center\"><a class=\"btn\" href=\"https://attendee.gotowebinar.com/register/1324798696020699482?source=NativeArticle\">Register Now</a></div>\r\n<p>The conversation will be led by moderator Terry Rice. He will be joined by&nbsp;<a href=\"https://www.linkedin.com/in/garymeisner/\" target=\"_blank\" rel=\"noopener\">Gary Meisner</a>, a 25+ year career CFO/VP Finance/Controller veteran, an MBA/CPA (inactive) with experience in public and private equity-backed companies, and now a Principal Value Management Consultant with Oracle NetSuite.</p>\r\n<p>Attendees of this webinar will:</p>\r\n<ul>\r\n<li>Understand how CEOs are looking for their CFOs to go well beyond the financials to serve as strategic partners who contribute to growth.</li>\r\n<li>Learn the seven key skills that were identified as critically important to CEOs.</li>\r\n<li>Get insight into the fundamental ways in which they can shape their experience and to assure they have the needed skills.</li>\r\n</ul>', 'jQuery,vue js,react', '2023-10-03 19:13:26', NULL),
(3, 2, '3 Ways to Build a Customer', '3-ways-to-build-a-customer', 'upload/post/1778853248795644.png', '<p>ompany culture is one of the hot-button issues in C-suites today, and for good reason. Providing an exceptional customer experience is directly dependent on culture. Success relies on employees to make judgment calls and creatively apply their understanding of customer needs far beyond what any rulebook could cover. Traditional customer service training and best practices will get you started, but, beyond those, you need to build and model a top-down culture of customer service.</p>\r\n<p>The essence of building a strong customer service culture is simple and straightforward, as long as you don\'t distract yourself with superficialities &mdash; the mountain bikes and ping-pong tables, the beer taps in the breakroom, the endless jargon about \"de-siloing\" and the like. It is, in fact, relatively easy to understand and to get a start on implementing. It just takes interest, a drive to succeed, and a little of what\'s (ironically) called common sense.</p>\r\n<p><strong>Related:&nbsp;<a href=\"https://www.entrepreneur.com/article/249174\" target=\"_self\" rel=\"follow\">10 Examples of Companies With Fantastic Cultures</a></strong></p>\r\n<p>Here are three steps leaders can take toward establishing and sustaining a culture of customer service:</p>\r\n<h2>1. Define your culture\'s purpose in a sentence or two.</h2>\r\n<p>Write a sentence or two that defines the purpose of your business and describes the type of behaviors you expect from every associate, manager and executive in your organization &mdash; and make sure they understand it. The definition of purpose should be direct, clear and free from the \"consultant-ese\" and jargon. As an example, one of the most powerful definitions of purpose that I know of is the one that guides the Mayo Clinic:</p>\r\n<p><em>The needs of the patient come first.</em></p>', 'jQuery,python,java,javascript', '2023-10-02 19:13:31', NULL),
(4, 1, 'Hotel Management is the Best Policy', 'hotel-management-is-the-best-policy', 'upload/post/1778853386263133.png', '<p>One company that knows this very well is Oracle NetSuite. They interviewed more than a dozen CEOs to find out&nbsp;<a href=\"https://www.netsuite.com/portal/assets/pdf/wp-what-ceos-want-in-a-cfo.pdf\" target=\"_blank\" rel=\"noopener\">what they seek in a CFO</a>&nbsp;and what makes for a top finance partner. The good news: These traits are also CFO career-building powerhouses. While there were variations based on industry, some general sentiments remained constant.</p>\r\n<p>Join us for our free webinar,&nbsp;<em>What CEOs Want in a CFO</em>, presented by Oracle NetSuite and&nbsp;<em>Entrepreneur</em>. We\'ll cover seven top skills CEOs say they want from their financial partners and how CFOs can deliver.</p>\r\n<div class=\"center\"><a class=\"btn\" href=\"https://attendee.gotowebinar.com/register/1324798696020699482?source=NativeArticle\">Register Now</a></div>\r\n<p>The conversation will be led by moderator Terry Rice. He will be joined by&nbsp;<a href=\"https://www.linkedin.com/in/garymeisner/\" target=\"_blank\" rel=\"noopener\">Gary Meisner</a>, a 25+ year career CFO/VP Finance/Controller veteran, an MBA/CPA (inactive) with experience in public and private equity-backed companies, and now a Principal Value Management Consultant with Oracle NetSuite.</p>\r\n<p>Attendees of this webinar will:</p>\r\n<ul>\r\n<li>Understand how CEOs are looking for their CFOs to go well beyond the financials to serve as strategic partners who contribute to growth.</li>\r\n<li>Learn the seven key skills that were identified as critically important to CEOs.</li>\r\n<li>Get insight into the fundamental ways in which they can shape their experience and to assure they have the needed skills.</li>\r\n</ul>', 'jQuery,java', '2023-10-04 13:13:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Coding', 'coding', 'upload/category/1774873546607394.png', NULL, '2024-02-28 19:09:56'),
(3, 'Robotic', 'robotic', 'upload/category/1774874802168135.png', NULL, '2024-02-28 19:10:06'),
(4, 'Language', 'language', 'upload/category/1774874812846960.png', NULL, '2024-02-28 19:10:25'),
(5, 'STEM', 'stem', 'upload/category/1774874823911162.png', NULL, '2024-02-28 19:10:39'),
(6, 'Design', 'design', 'upload/category/1774874836407870.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_discount` varchar(255) NOT NULL,
  `coupon_validity` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `instructor_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_discount`, `coupon_validity`, `status`, `instructor_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 'ARIYAN', '10', '2023-10-29', 1, NULL, NULL, '2023-09-10 15:16:07', NULL),
(2, 'ADMIN', '20', '2023-09-16', 1, NULL, NULL, '2023-09-10 17:08:11', '2023-09-10 17:08:11'),
(4, 'INS', '25', '2023-11-18', 1, 2, 7, '2023-09-29 13:44:19', NULL),
(5, 'LARAVEL1', '15', '2023-11-16', 1, 2, 1, '2023-09-29 14:13:22', '2023-09-29 14:13:22');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `course_image` varchar(255) DEFAULT NULL,
  `course_title` text DEFAULT NULL,
  `course_name` text DEFAULT NULL,
  `course_name_slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `resources` varchar(255) DEFAULT NULL,
  `certificate` varchar(255) DEFAULT NULL,
  `selling_price` int(11) DEFAULT NULL,
  `discount_price` int(11) DEFAULT NULL,
  `prerequisites` text DEFAULT NULL,
  `bestseller` varchar(255) DEFAULT NULL,
  `featured` varchar(255) DEFAULT NULL,
  `highestrated` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `subcategory_id`, `instructor_id`, `course_image`, `course_title`, `course_name`, `course_name_slug`, `description`, `video`, `label`, `duration`, `resources`, `certificate`, `selling_price`, `discount_price`, `prerequisites`, `bestseller`, `featured`, `highestrated`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 2, 'upload/course/thambnail/1775148881872977.png', 'Create Robot with Arduino', 'Create Robot with Arduino', 'create-robot-with-arduino', '<p class=\"fs-15 pb-2\">Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n<p class=\"fs-15 pb-2\">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy</p>\r\n<p class=\"fs-15 pb-1\">- Lorem ipsum dolor sit amet, consectetur.</p>\r\n<p class=\"fs-15 pb-1\">- Lorem ipsum dolor sit amet, consectetur.</p>\r\n<p class=\"fs-15 pb-1\">- Lorem ipsum dolor sit amet, consectetur.</p>', 'upload/course/video/1692913896.mp4', 'Begginer', '40', '4', 'Yes', 200000, 95000, 'Enhance Your Skills with\r\nBest Online Courses', '1', '1', NULL, 1, '2023-08-24 15:51:36', '2024-02-28 20:23:36'),
(2, 3, 6, 2, 'upload/course/thambnail/1775215956577043.png', 'Learn digital Circuit', 'Learn digital Circuit', 'learn-digital-circuit', '<p>Are you ready to embark on an extraordinary learning journey that will transform your knowledge and skills? Look no further! I am thrilled to introduce myself as your<strong> best-selling online instructor.</strong></p>\r\n<p>With a track record of empowering<strong> 70+ thousands of students worldwide</strong>, I have cultivated a reputation as a leading expert in Laravel,React,Vuejs,MERN Stack. My passion for teaching and dedication to student success have driven me to create an exceptional online learning experience tailored to your needs.</p>', 'upload/course/video/1692977864.mp4', 'Begginer', '40', '6', 'Yes', 199000, 120000, '✔️ You have to know basic PHP\r\n✔️ Basic HTML, CSS, Bootstrap\r\n✔️ Local Server : Xampp/Wampp/Vertrigo/Mamp', NULL, '1', NULL, 1, '2023-08-25 09:37:44', '2024-02-28 20:23:26'),
(3, 1, 2, 2, 'upload/course/thambnail/1775216132073560.png', 'Coding from Scratch', 'Coding from Scratch', 'coding-from-scratch', '<p>Are you ready to embark on an extraordinary learning journey that will transform your knowledge and skills? Look no further! I am thrilled to introduce myself as your<strong> best-selling online instructor.</strong></p>\r\n<p>With a track record of empowering<strong> 70+ thousands of students worldwide</strong>, I have cultivated a reputation as a leading expert in Laravel,React,Vuejs,MERN Stack. My passion for teaching and dedication to student success have driven me to create an exceptional online learning experience tailored to your needs.</p>', 'upload/course/video/1692978031.mp4', 'Middle', '40', '4', 'Yes', 200000, 120000, '✔️ You have to know basic PHP\r\n✔️ Basic HTML, CSS, Bootstrap\r\n✔️ Local Server : Xampp/Wampp/Vertrigo/Mamp', '1', '1', NULL, 1, '2023-08-25 09:40:31', '2024-02-28 20:23:16'),
(4, 6, 15, 2, 'upload/course/thambnail/1775234017399973.png', 'Design Graphics', 'Design Graphics', 'design-graphics', '<p class=\"fs-15 pb-2\">111Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n<p class=\"fs-15 pb-2\">It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy</p>\r\n<p class=\"fs-15 pb-1\">- Lorem ipsum dolor sit amet, consectetur.</p>\r\n<p class=\"fs-15 pb-1\">- Lorem ipsum dolor sit amet, consectetur.</p>\r\n<p class=\"fs-15 pb-1\">- Lorem ipsum dolor sit amet, consectetur.</p>\r\n<p class=\"fs-15 pt-3 pb-2 lh-22\"><strong class=\"font-weight-semi-bold text-black\">Are you aiming to get your first Java Programming job but struggling to find out what skills employers want</strong> and which course will give you those skills?</p>\r\n<p class=\"fs-15 pb-2\">This course is designed to give you the Java skills you need to get a job as a Java developer. By the end of the course, you will understand Java extremely well and be able to build your own Java apps and be productive as a software developer.</p>', 'upload/course/video/1692996457.mp4', 'Begginer', '40', '6', 'No', 199000, 120000, '✔️ You have to know basic PHP11\r\n✔️ Basic HTML, CSS, Bootstrap11\r\n✔️ Local Server : Xampp/Wampp/Vertrigo/Mamp', '1', NULL, NULL, 1, '2023-08-25 09:44:13', '2024-02-28 20:23:05'),
(6, 4, 8, 2, 'upload/course/thambnail/1775954156710679.png', 'English for Kids', 'English for Kids', 'english-for-kids', '<p>Welcome to <strong>\"MERN Stack Real-Time Chat Application Project\". </strong>In this course, we will be building an in-depth full-stack Live Chat application using <em>Express, React, Node.js, Socket io, </em>and <em>MongoDB</em> along with <em>ES6+</em>. We will start with a blank text editor and end with a deployed full-stack application. This course includes...</p>\r\n<ul>\r\n<li>\r\n<p>Building backend API with Node.js & Express</p>\r\n</li>\r\n<li>\r\n<p>Extensive API testing with Postman</p>\r\n</li>\r\n<li>\r\n<p>Integrating React with our backend in an elegant way, creating a great workflow</p>\r\n</li>\r\n<li>\r\n<p>Connect with Socket io.</p>\r\n</li>\r\n<li>\r\n<p>Building User Authentication with JSON Web Token</p>\r\n</li>\r\n<li>\r\n<p>Get and Post Request using MongoDB</p>\r\n</li>\r\n<li>\r\n<p>and much more...</p>\r\n</li>\r\n</ul>\r\n<p>This course project is probably the biggest and most exciting project you have built so far. It is packed with hundreds of tips and tricks that can help you build almost any type of full-stack app .</p>\r\n<p>Master the art of building FullStack/MERN Stack apps by enrolling in this course and never look back. What you are now and what you will become after completing this course is going to be a groundbreaking step in your mern stack career.</p>\r\n<p>You can build the biggest and most complex apps of your dream or as required at your job. Master the stack of all stacks and become the most productive and innovative developer of your team. I welcome you to be a part of this incredible journey.</p>\r\n<p> </p>\r\n<p><strong>How i design This course :</strong></p>\r\n<p>This course will be all in one complete MERN Stack project course. For that reason first, you will learn JavaScript all fundamentals which is very important to build your strong foundation. Then you will learn react js by creating one complete project. you will learn node js/ express js / MongoDB and Socket io all basic fundamentals that you should know.</p>\r\n<p>After compete total basic journey then you will build one complete real-time chat application from scratch.</p>\r\n<p>In this Live Chat Application project, you will learn.</p>', 'upload/course/video/1693681866.mp4', 'Middle', '40', '6', 'Yes', 84000, NULL, 'Anyone that wants to learn how to build a full stack MERN application\r\nWho want to become MERN Stack Developer.', '1', '1', NULL, 1, '2023-09-02 13:11:06', '2024-02-28 20:22:56'),
(7, 5, 13, 2, 'upload/course/thambnail/1775954306207146.png', 'Math', 'Math', 'math', 'learn Tailwind CSS 3 seriously then that will be the best course for you. First, what is tailwind CSS?  Tailwind is a utility-first CSS framework to rapidly build modern websites without ever leaving your HTML.learn Tailwind CSS 3 seriously then that will be the best course for you. First, what is tailwind CSS?  Tailwind is a utility-first CSS framework to rapidly build modern websites without ever leaving your HTML.learn Tailwind CSS 3 seriously then that will be the best course for you. First, what is tailwind CSS?  Tailwind is a utility-first CSS framework to rapidly build modern websites without ever leaving your HTML.learn Tailwind CSS 3 seriously then that will be the best course for you. First, what is tailwind CSS?  Tailwind is a utility-first CSS framework to rapidly build modern websites without ever leaving your HTML.learn Tailwind CSS 3 seriously then that will be the best course for you. First, what is tailwind CSS?  Tailwind is a utility-first CSS framework to rapidly build modern websites without ever leaving your HTML.learn Tailwind CSS 3 seriously then that will be the best course for you. First, what is tailwind CSS?  Tailwind is a utility-first CSS framework to rapidly build modern websites without ever leaving your HTML.learn Tailwind CSS 3 seriously then that will be the best course for you. First, what is tailwind CSS?  Tailwind is a utility-first CSS framework to rapidly build modern websites without ever leaving your HTML.learn Tailwind CSS 3 seriously then that will be the best course for you. First, what is tailwind CSS?  Tailwind is a utility-first CSS framework to rapidly build modern websites without ever leaving your HTML.learn Tailwind CSS 3 seriously then that will be the best course for you. First, what is tailwind CSS?  Tailwind is a utility-first CSS framework to rapidly build modern websites without ever leaving your HTML.learn Tailwind CSS 3 seriously then that will be the best course for you. First, what is tailwind CSS?  Tailwind is a utility-first CSS framework to rapidly build modern websites without ever leaving your HTML.learn Tailwind CSS 3 seriously then that will be the best course for you. First, what is tailwind CSS?  Tailwind is a utility-first CSS framework to rapidly build modern websites without ever leaving your HTML.learn Tailwind CSS 3 seriously then that will be the best course for you. First, what is tailwind CSS?  Tailwind is a utility-first CSS framework to rapidly build modern websites without ever leaving your HTML.', 'upload/course/video/1709094622.mp4', 'Advance', '40', '4', 'Yes', 199000, 120000, 'Having some experience with CSS are necessary. \r\nExperience with other CSS frameworks like Bootstrap will help but are not mandatory.\r\nUsing a code editor', NULL, '1', NULL, 1, '2023-09-02 13:13:29', '2024-02-28 20:22:49'),
(8, 6, 15, 2, 'upload/course/thambnail/1792115413796214.png', 'Design fro Kids', 'Design fro Kids', 'design-fro-kids', 'The public disk included in your application\'s filesystems configuration file is intended for files that are going to be publicly accessible. By default, the public disk uses the local driver and stores its files in storage/app/public.', 'upload/course/video/1709094572.mp4', 'Begginer', '40', '4', 'Yes', 200000, 120000, 'Beginners who wants to Setup Multi Vendor E-Commerce Website in OpenCart 3.3.x\r\nAnyone Wants to Make his Own Online Business\r\nAnyone Wants to Know How to Sell Products Online', '1', '1', NULL, 1, '2023-09-02 13:15:54', '2024-02-28 20:22:40'),
(9, 1, 4, 2, 'upload/course/thambnail/1792116048593306.png', 'Coding for Kids', 'Coding for Kids', 'coding-for-kids', 'There are a variety of tools and frameworks available to you when building a web application. However, we believe Laravel is the best choice for building modern, full-stack web applications.There are a variety of tools and frameworks available to you when building a web application. However, we believe Laravel is the best choice for building modern, full-stack web applications.There are a variety of tools and frameworks available to you when building a web application. However, we believe Laravel is the best choice for building modern, full-stack web applications.There are a variety of tools and frameworks available to you when building a web application. However, we believe Laravel is the best choice for building modern, full-stack web applications.There are a variety of tools and frameworks available to you when building a web application. However, we believe Laravel is the best choice for building modern, full-stack web applications.', 'upload/course/video/1709095047.mp4', 'Begginer', '60', '4', 'Yes', 300000, 100000, 'There are a variety of tools and frameworks available to you when building a web application. However, we believe Laravel is the best choice for building modern, full-stack web applications.', '1', NULL, NULL, 1, '2024-02-27 21:37:27', '2024-02-28 20:22:31'),
(10, 1, 4, 2, 'upload/course/thambnail/1792197186723515.png', 'Coding with Python', 'Coding with Python', 'coding-with-python', 'Laravel is incredibly scalable. Thanks to the scaling-friendly nature of PHP and Laravel\'s built-in support for fast, distributed cache systems like Redis, horizontal scaling with Laravel is a breeze. In fact, Laravel applications have been easily scaled to handle hundreds of millions of requests per month.\r\n\r\nNeed extreme scaling? Platforms like Laravel Vapor allow you to run your Laravel application at nearly limitless scale on AWS\'s latest serverless technology.Laravel is incredibly scalable. Thanks to the scaling-friendly nature of PHP and Laravel\'s built-in support for fast, distributed cache systems like Redis, horizontal scaling with Laravel is a breeze. In fact, Laravel applications have been easily scaled to handle hundreds of millions of requests per month.\r\n\r\nNeed extreme scaling? Platforms like Laravel Vapor allow you to run your Laravel application at nearly limitless scale on AWS\'s latest serverless technology.Laravel is incredibly scalable. Thanks to the scaling-friendly nature of PHP and Laravel\'s built-in support for fast, distributed cache systems like Redis, horizontal scaling with Laravel is a breeze. In fact, Laravel applications have been easily scaled to handle hundreds of millions of requests per month.\r\n\r\nNeed extreme scaling? Platforms like Laravel Vapor allow you to run your Laravel application at nearly limitless scale on AWS\'s latest serverless technology.Laravel is incredibly scalable. Thanks to the scaling-friendly nature of PHP and Laravel\'s built-in support for fast, distributed cache systems like Redis, horizontal scaling with Laravel is a breeze. In fact, Laravel applications have been easily scaled to handle hundreds of millions of requests per month.\r\n\r\nNeed extreme scaling? Platforms like Laravel Vapor allow you to run your Laravel application at nearly limitless scale on AWS\'s latest serverless technology.', 'upload/course/video/1709172426.mp4', 'Begginer', '40', NULL, 'Yes', 300000, NULL, 'Laravel is incredibly scalable. Thanks to the scaling-friendly nature of PHP and Laravel\'s built-in support for fast, distributed cache systems like Redis, horizontal scaling with Laravel is a breeze. In fact, Laravel applications have been easily scaled to handle hundreds of millions of requests per month.\r\n\r\nNeed extreme scaling? Platforms like Laravel Vapor allow you to run your Laravel application at nearly limitless scale on AWS\'s latest serverless technology.Laravel is incredibly scalable. Thanks to the scaling-friendly nature of PHP and Laravel\'s built-in support for fast, distributed cache systems like Redis, horizontal scaling with Laravel is a breeze. In fact, Laravel applications have been easily scaled to handle hundreds of millions of requests per month.\r\n\r\nNeed extreme scaling? Platforms like Laravel Vapor allow you to run your Laravel application at nearly limitless scale on AWS\'s latest serverless technology.Laravel is incredibly scalable. Thanks to the scaling-friendly nature of PHP and Laravel\'s built-in support for fast, distributed cache systems like Redis, horizontal scaling with Laravel is a breeze. In fact, Laravel applications have been easily scaled to handle hundreds of millions of requests per month.\r\n\r\nNeed extreme scaling? Platforms like Laravel Vapor allow you to run your Laravel application at nearly limitless scale on AWS\'s latest serverless technology.', '1', NULL, NULL, 1, '2024-02-28 19:07:06', '2024-02-28 20:17:55'),
(11, 1, 2, 2, 'upload/course/thambnail/1792203863003591.png', 'Programming for Kids', 'Programming for Kids', 'programming-for-kids', 'Laravel is incredibly scalable. Thanks to the scaling-friendly nature of PHP and Laravel\'s built-in support for fast, distributed cache systems like Redis, horizontal scaling with Laravel is a breeze. In fact, Laravel applications have been easily scaled to handle hundreds of millions of requests per month.\r\n\r\nNeed extreme scaling? Platforms like Laravel Vapor allow you to run your Laravel application at nearly limitless scale on AWS\'s latest serverless technology.', 'upload/course/video/1709178793.mp4', 'Begginer', '60', NULL, 'Yes', 150000, NULL, 'Laravel is incredibly scalable. Thanks to the scaling-friendly nature of PHP and Laravel\'s built-in support for fast, distributed cache systems like Redis, horizontal scaling with Laravel is a breeze. In fact, Laravel applications have been easily scaled to handle hundreds of millions of requests per month.\r\n\r\nNeed extreme scaling? Platforms like Laravel Vapor allow you to run your Laravel application at nearly limitless scale on AWS\'s latest serverless technology.', '1', NULL, NULL, 1, '2024-02-28 20:53:13', NULL),
(12, 4, 9, 2, 'upload/course/thambnail/1792926147937497.png', 'Test 1', 'test', 'test', 'Or, let Laravel serve as a robust backend API for your Next.js application, mobile application, or other frontend. Either way, our starter kits will have you productive in minutes.\r\nOr, let Laravel serve as a robust backend API for your Next.js application, mobile application, or other frontend. Either way, our starter kits will have you productive in minutes.\r\nOr, let Laravel serve as a robust backend API for your Next.js application, mobile application, or other frontend. Either way, our starter kits will have you productive in minutes.', 'upload/course/video/1709867618.mp4', 'Begginer', '60', NULL, 'Yes', 125, NULL, 'Or, let Laravel serve as a robust backend API for your Next.js application, mobile application, or other frontend. Either way, our starter kits will have you productive in minutes.', NULL, NULL, NULL, 1, '2024-03-07 20:13:38', NULL),
(14, 1, 4, 2, 'upload/course/thambnail/1793194119588990.png', 'Test 3', 'Test 3', 'test-3', 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.\r\nLaravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.\r\nLaravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', 'upload/course/video/1710123176.mp4', 'Begginer', '60', NULL, 'Yes', 250000, NULL, 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', NULL, NULL, NULL, 1, '2024-03-10 19:12:56', NULL),
(15, 5, 13, 2, 'upload/course/thambnail/1793196066291685.png', 'Test 4', 'Test 4', 'test-4', 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.\r\nLaravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.\r\nLaravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.\r\nLaravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', NULL, 'Begginer', '40', NULL, 'Yes', 250000, NULL, 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', NULL, NULL, NULL, 1, '2024-03-10 19:43:52', NULL),
(16, 4, 10, 2, 'upload/course/thambnail/1793196152482154.png', 'Coba course', 'Coba course', 'coba-course', 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.\r\nLaravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.\r\nLaravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.\r\nLaravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', 'upload/course/video/1710125203.mp4', 'Begginer', '40', NULL, 'Yes', 250000, NULL, 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', NULL, NULL, NULL, 1, '2024-03-10 19:45:14', '2024-03-10 19:46:43'),
(17, 1, 2, 2, 'upload/course/thambnail/1793197102269378.png', 'compotational thinking for kids', 'compotational thinking', 'compotational-thinking', 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.\r\nLaravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.\r\nLaravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.\r\nLaravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', NULL, 'Begginer', '60', NULL, 'Yes', 250000, NULL, 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', NULL, NULL, NULL, 1, '2024-03-10 20:00:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_goals`
--

CREATE TABLE `course_goals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) NOT NULL,
  `goal_name` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_goals`
--

INSERT INTO `course_goals` (`id`, `course_id`, `goal_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Stock Management System2', '2023-08-24 15:51:36', '2023-08-24 15:51:36'),
(2, 1, 'Multi-Authentication as User-Agent-Admin22', '2023-08-24 15:51:36', '2023-08-24 15:51:36'),
(3, 1, 'Stock Management System2', '2023-08-24 15:51:36', '2023-08-24 15:51:36'),
(4, 2, 'Multi-Authentication as User-Agent-Admin', '2023-08-25 09:37:44', '2023-08-25 09:37:44'),
(5, 2, 'Advance Property Search Option', '2023-08-25 09:37:44', '2023-08-25 09:37:44'),
(6, 2, 'Multi-Authentication as User-Agent-Admin', '2023-08-25 09:37:44', '2023-08-25 09:37:44'),
(7, 2, 'User Roles and Permission', '2023-08-25 09:37:44', '2023-08-25 09:37:44'),
(8, 2, 'Property Mailing System', '2023-08-25 09:37:44', '2023-08-25 09:37:44'),
(9, 2, 'Property Wishlist Option', '2023-08-25 09:37:44', '2023-08-25 09:37:44'),
(10, 3, 'Multi-Authentication as User-Agent-Admin', '2023-08-25 09:40:31', '2023-08-25 09:40:31'),
(11, 3, 'Advance Property Search Option', '2023-08-25 09:40:31', '2023-08-25 09:40:31'),
(12, 3, 'Multi-Authentication as User-Agent-Admin', '2023-08-25 09:40:31', '2023-08-25 09:40:31'),
(13, 3, 'User Roles and Permission', '2023-08-25 09:40:31', '2023-08-25 09:40:31'),
(14, 3, 'Property Mailing System', '2023-08-25 09:40:31', '2023-08-25 09:40:31'),
(15, 3, 'Property Wishlist Option', '2023-08-25 09:40:31', '2023-08-25 09:40:31'),
(16, 3, 'Property Compare Option', '2023-08-25 09:40:31', '2023-08-25 09:40:31'),
(48, 4, '11Create Complete News Portal Project', '2023-08-25 15:49:24', '2023-08-25 15:49:24'),
(49, 4, 'Multiple Language Option', '2023-08-25 15:49:24', '2023-08-25 15:49:24'),
(50, 4, '11Laravel 8 A-Z Basic Fandamentals', '2023-08-25 15:49:24', '2023-08-25 15:49:24'),
(51, 4, 'Adding Professional Theme for Frontend', '2023-08-25 15:49:24', '2023-08-25 15:49:24'),
(52, 4, 'Adding Professional Theme for Backend', '2023-08-25 15:49:24', '2023-08-25 15:49:24'),
(56, 6, 'Build Complete Live Chat App', '2023-09-02 13:11:06', '2023-09-02 13:11:06'),
(57, 6, 'React js Fundamental', '2023-09-02 13:11:06', '2023-09-02 13:11:06'),
(58, 6, 'Express js Fundamental', '2023-09-02 13:11:06', '2023-09-02 13:11:06'),
(59, 6, 'Socket io Fundamental', '2023-09-02 13:11:06', '2023-09-02 13:11:06'),
(60, 6, 'User Data Store in Redux', '2023-09-02 13:11:06', '2023-09-02 13:11:06'),
(61, 6, 'Functional Component, Redux', '2023-09-02 13:11:06', '2023-09-02 13:11:06'),
(62, 6, 'Send Emoji and Image Message', '2023-09-02 13:11:06', '2023-09-02 13:11:06'),
(63, 7, 'How to customize Tailwind', '2023-09-02 13:13:29', '2023-09-02 13:13:29'),
(64, 7, 'Using Tailwind in VS Code', '2023-09-02 13:13:29', '2023-09-02 13:13:29'),
(65, 7, 'Deploying it to WebServer', '2023-09-02 13:13:29', '2023-09-02 13:13:29'),
(66, 7, 'Create Complete Ecommerce Template', '2023-09-02 13:13:29', '2023-09-02 13:13:29'),
(67, 7, 'Ecommerce Home Page Setup', '2023-09-02 13:13:29', '2023-09-02 13:13:29'),
(68, 7, 'Ecommerce Product Details Page Setup', '2023-09-02 13:13:29', '2023-09-02 13:13:29'),
(69, 7, 'Ecommerce User Account and Register', '2023-09-02 13:13:29', '2023-09-02 13:13:29'),
(70, 7, 'Wishlist and Checkout Page Setup', '2023-09-02 13:13:29', '2023-09-02 13:13:29'),
(71, 7, 'Ecommerce Cart and Order Page Setup', '2023-09-02 13:13:29', '2023-09-02 13:13:29'),
(80, 8, 'Install and Setup OpenCart 3.3 E-Commerce Platform', '2024-02-27 21:26:14', '2024-02-27 21:26:14'),
(81, 8, 'Setting Up Marketing , Affiliates, Coupons, Gift Vouchers', '2024-02-27 21:26:14', '2024-02-27 21:26:14'),
(82, 8, 'Setting Up Theme, Modules, Mega Menu, Layer Sliders', '2024-02-27 21:26:14', '2024-02-27 21:26:14'),
(83, 8, 'Opencart Backup and Restore, SEO, Security', '2024-02-27 21:26:14', '2024-02-27 21:26:14'),
(84, 8, 'Install New Module and Customize Module', '2024-02-27 21:26:14', '2024-02-27 21:26:14'),
(85, 8, 'One Page Checkout System Setup', '2024-02-27 21:26:14', '2024-02-27 21:26:14'),
(86, 8, 'Adding New Product, Categories, Filters, Options', '2024-02-27 21:26:14', '2024-02-27 21:26:14'),
(87, 8, 'Install and Setup Multi Vendor In Opencart', '2024-02-27 21:26:14', '2024-02-27 21:26:14'),
(88, 9, 'There are a variety of tools and frameworks available to you when building a web application. However, we believe Laravel is the best choice for building modern, full-stack web applications.', '2024-02-27 21:37:27', '2024-02-27 21:37:27'),
(89, 9, 'There are a variety of tools and frameworks available to you when building a web application. However, we believe Laravel is the best choice for building modern, full-stack web applications.', '2024-02-27 21:37:27', '2024-02-27 21:37:27'),
(90, 9, 'There are a variety of tools and frameworks available to you when building a web application. However, we believe Laravel is the best choice for building modern, full-stack web applications.', '2024-02-27 21:37:27', '2024-02-27 21:37:27'),
(91, 9, 'There are a variety of tools and frameworks available to you when building a web application. However, we believe Laravel is the best choice for building modern, full-stack web applications.', '2024-02-27 21:37:27', '2024-02-27 21:37:27'),
(92, 9, 'There are a variety of tools and frameworks available to you when building a web application. However, we believe Laravel is the best choice for building modern, full-stack web applications.', '2024-02-27 21:37:27', '2024-02-27 21:37:27'),
(93, 10, 'goasl 2', '2024-02-28 19:07:06', '2024-02-28 19:07:06'),
(94, 10, 'goasl 2', '2024-02-28 19:07:07', '2024-02-28 19:07:07'),
(95, 10, 'goasl 2', '2024-02-28 19:07:07', '2024-02-28 19:07:07'),
(96, 11, 'goasl 2', '2024-02-28 20:53:13', '2024-02-28 20:53:13'),
(97, 11, 'goasl 2', '2024-02-28 20:53:13', '2024-02-28 20:53:13'),
(98, 11, 'goasl 2', '2024-02-28 20:53:13', '2024-02-28 20:53:13'),
(99, 12, 'Or, let Laravel serve as a robust backend API for your Next.js application, mobile application, or other frontend. Either way, our starter kits will have you productive in minutes.', '2024-03-07 20:13:38', '2024-03-07 20:13:38'),
(100, 12, 'Or, let Laravel serve as a robust backend API for your Next.js application, mobile application, or other frontend. Either way, our starter kits will have you productive in minutes.', '2024-03-07 20:13:38', '2024-03-07 20:13:38'),
(101, 12, 'Or, let Laravel serve as a robust backend API for your Next.js application, mobile application, or other frontend. Either way, our starter kits will have you productive in minutes.', '2024-03-07 20:13:38', '2024-03-07 20:13:38'),
(102, 12, 'Or, let Laravel serve as a robust backend API for your Next.js application, mobile application, or other frontend. Either way, our starter kits will have you productive in minutes.', '2024-03-07 20:13:38', '2024-03-07 20:13:38'),
(103, 12, 'Or, let Laravel serve as a robust backend API for your Next.js application, mobile application, or other frontend. Either way, our starter kits will have you productive in minutes.', '2024-03-07 20:13:38', '2024-03-07 20:13:38'),
(104, 12, 'Or, let Laravel serve as a robust backend API for your Next.js application, mobile application, or other frontend. Either way, our starter kits will have you productive in minutes.', '2024-03-07 20:13:38', '2024-03-07 20:13:38'),
(109, 14, 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', '2024-03-10 19:12:56', '2024-03-10 19:12:56'),
(110, 15, 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', '2024-03-10 19:43:52', '2024-03-10 19:43:52'),
(111, 15, 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', '2024-03-10 19:43:52', '2024-03-10 19:43:52'),
(112, 15, 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', '2024-03-10 19:43:52', '2024-03-10 19:43:52'),
(113, 15, 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', '2024-03-10 19:43:52', '2024-03-10 19:43:52'),
(114, 16, 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', '2024-03-10 19:45:14', '2024-03-10 19:45:14'),
(115, 16, 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', '2024-03-10 19:45:14', '2024-03-10 19:45:14'),
(116, 16, 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', '2024-03-10 19:45:14', '2024-03-10 19:45:14'),
(117, 16, 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', '2024-03-10 19:45:14', '2024-03-10 19:45:14'),
(118, 17, 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', '2024-03-10 20:00:20', '2024-03-10 20:00:20'),
(119, 17, 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', '2024-03-10 20:00:20', '2024-03-10 20:00:20'),
(120, 17, 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', '2024-03-10 20:00:20', '2024-03-10 20:00:20'),
(121, 17, 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', '2024-03-10 20:00:20', '2024-03-10 20:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `course_lectures`
--

CREATE TABLE `course_lectures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `lecture_title` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_lectures`
--

INSERT INTO `course_lectures` (`id`, `course_id`, `section_id`, `lecture_title`, `video`, `url`, `content`, `created_at`, `updated_at`) VALUES
(7, 7, 4, 'Introduction To Tailwind', NULL, 'https://vimeo.com/151390908', NULL, '2023-09-03 15:53:05', '2023-09-03 15:53:05'),
(8, 7, 4, 'Installing Node', NULL, 'https://vimeo.com/197536889', NULL, '2023-09-03 15:53:29', '2023-09-03 15:53:29'),
(9, 7, 4, 'Installing VS Code', NULL, 'https://vimeo.com/191739596', NULL, '2023-09-03 15:53:45', '2023-09-03 15:53:45'),
(10, 7, 5, 'Tailwind Installation', NULL, 'https://www.youtube.com/embed/e8eSfqaaGXQ?list=RD01XopxDxQI8', NULL, '2023-09-03 15:54:17', '2023-09-03 15:54:17'),
(11, 7, 5, 'Utility-First Approach Part 1', NULL, 'https://www.youtube.com/embed/j8PvKoeHO1Y', NULL, '2023-09-03 15:54:42', '2023-09-03 15:54:42'),
(12, 7, 5, 'Utility-First Approach Part 2', NULL, 'https://www.youtube.com/embed/Hu-Bdubnnj0', NULL, '2023-09-03 15:54:57', '2023-09-03 15:54:57'),
(13, 7, 5, 'Responsive variants - Tailwind Breakpoints', NULL, NULL, '✔️ How i design this course\n\nFirst, you will learn all the basic fundamentals of Tailwind CSS 3 . You will learn all tailwind CSS utility classes with one-by-one live examples so it will help you to build one strong foundation of tailwind CSS. Then together with all fundamental experiences, you will develop multiple real-life projects. In Our first project will be you will build one complete basic blog site design then you will go deeper and you will complete this total journey by developing one complete professional eCommerce template design from scratch.', '2023-09-03 15:55:35', '2023-09-03 15:55:35'),
(14, 7, 6, 'Hover Focus & Other State Variants', NULL, 'https://www.youtube.com/embed/jbxaUpJTb2M', NULL, '2023-09-03 15:55:50', '2023-09-03 15:55:50'),
(15, 7, 6, 'Dark Mode Variants Part 1', NULL, 'https://www.youtube.com/embed/WFb0_jqUj9U', NULL, '2023-09-03 15:56:05', '2023-09-03 15:56:05'),
(16, 7, 6, 'Dark Mode Variants Part 2', NULL, 'https://www.youtube.com/embed/38jCCWeuHeU', NULL, '2023-09-03 15:56:18', '2023-09-03 15:56:18'),
(17, 6, 7, 'Development Environment Setup', NULL, 'https://player.vimeo.com/video/151390908?h=955cb14d46&title=0&byline=0&portrait=0', NULL, '2023-09-03 15:58:42', '2023-09-20 14:55:56'),
(18, 6, 7, 'Uses of Console and Comments in JavaScript', NULL, 'https://player.vimeo.com/video/43014286?h=d8a2fc3f50', NULL, '2023-09-03 15:58:55', '2023-09-20 14:56:29'),
(19, 6, 7, 'What is ES6', NULL, NULL, 'Welcome to Motion Graphics in After Effects.\r\nIn the next lectures you will start creating your first animation and animate imported footage.\r\nBut I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes,\r\nAt vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.\r\nOccaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.\r\nEt harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus,', '2023-09-03 15:59:15', '2023-09-20 14:54:21'),
(20, 6, 8, 'Declare a Variable', NULL, NULL, '✔️ How i design this course\n\nFirst, you will learn all the basic fundamentals of Tailwind CSS 3 . You will learn all tailwind CSS utility classes with one-by-one live examples so it will help you to build one strong foundation of tailwind CSS. Then together with all fundamental experiences, you will develop multiple real-life projects. In Our first project will be you will build one complete basic blog site design then you will go deeper and you will complete this total journey by developing one complete professional eCommerce template design from scratch.', '2023-09-03 15:59:38', '2023-09-03 15:59:38'),
(21, 6, 8, 'Uses of Let and Const', NULL, 'https://www.youtube.com/embed/e8eSfqaaGXQ?list=RD01XopxDxQI8', NULL, '2023-09-03 15:59:53', '2023-09-03 15:59:53'),
(22, 6, 8, 'Primitive Data types', NULL, 'https://www.youtube.com/embed/8cD0kL4gUeA?si=pztj7naNgL4xVCSa', NULL, '2023-09-03 16:00:06', '2023-09-20 15:15:06'),
(23, 6, 9, 'Reference types: Object (Basics)', NULL, 'https://www.youtube.com/embed/Hu-Bdubnnj0', NULL, '2023-09-03 16:00:20', '2023-09-03 16:00:20'),
(24, 6, 9, 'Reference types: Array (Basics)', NULL, 'https://www.youtube.com/embed/jbxaUpJTb2M', NULL, '2023-09-03 16:00:39', '2023-09-03 16:00:39'),
(25, 6, 10, 'Template Literals', NULL, 'https://www.youtube.com/embed/WFb0_jqUj9U', NULL, '2023-09-03 16:00:55', '2023-09-03 16:00:55'),
(26, 6, 10, 'Arithmetic Operators', NULL, 'https://www.youtube.com/embed/38jCCWeuHeU', NULL, '2023-09-03 16:01:08', '2023-09-03 16:01:08'),
(27, 1, 11, 'Install Laravel 9', NULL, 'https://vimeo.com/151390908', NULL, '2023-09-03 16:03:05', '2023-09-03 16:03:05'),
(28, 1, 11, 'Create Database and Configuration', NULL, 'https://vimeo.com/197536889', NULL, '2023-09-03 16:03:17', '2023-09-03 16:03:17'),
(29, 1, 11, 'Install Laravel Breeze', NULL, 'https://vimeo.com/191739596', NULL, '2023-09-03 16:03:31', '2023-09-03 16:03:31'),
(30, 1, 12, 'Admin Template Setup', NULL, 'https://www.youtube.com/embed/e8eSfqaaGXQ?list=RD01XopxDxQI8', NULL, '2023-09-03 16:03:51', '2023-09-03 16:03:51'),
(31, 1, 12, 'Dashboard Page Segmentation', NULL, 'https://www.youtube.com/embed/j8PvKoeHO1Y', NULL, '2023-09-03 16:04:05', '2023-09-03 16:04:05'),
(32, 1, 12, 'Admin Logout Option', NULL, 'https://www.youtube.com/embed/Hu-Bdubnnj0', NULL, '2023-09-03 16:04:22', '2023-09-03 16:04:22'),
(33, 1, 13, 'Employee Management Part 1', NULL, 'https://www.youtube.com/embed/jbxaUpJTb2M', NULL, '2023-09-03 16:04:37', '2023-09-03 16:04:37'),
(34, 1, 13, 'Employee Management Part 2', NULL, 'https://www.youtube.com/embed/WFb0_jqUj9U', NULL, '2023-09-03 16:04:51', '2023-09-03 16:04:51'),
(35, 1, 13, 'Employee Management Part 3', NULL, 'https://www.youtube.com/embed/38jCCWeuHeU', NULL, '2023-09-03 16:05:04', '2023-09-03 16:05:04'),
(36, 1, 14, 'Customer Management Part 1', NULL, 'https://vimeo.com/151390908', NULL, '2023-09-03 16:05:19', '2023-09-03 16:05:19'),
(37, 1, 14, 'Customer Management Part 2', NULL, 'https://vimeo.com/197536889', NULL, '2023-09-03 16:05:31', '2023-09-03 16:05:31'),
(38, 1, 14, 'Customer Management Part 3', NULL, 'https://vimeo.com/191739596', NULL, '2023-09-03 16:05:48', '2023-09-03 16:05:48'),
(39, 2, 15, 'Frontend Template Setup Part 1', NULL, 'https://vimeo.com/151390908', NULL, '2023-09-03 16:07:15', '2023-09-03 16:07:15'),
(40, 2, 15, 'Frontend Template Setup Part 2', NULL, 'https://vimeo.com/197536889', NULL, '2023-09-03 16:07:27', '2023-09-03 16:07:27'),
(41, 2, 15, 'Frontend Template Setup Part 3', NULL, 'https://vimeo.com/191739596', NULL, '2023-09-03 16:07:37', '2023-09-03 16:07:37'),
(42, 2, 15, 'Frontend Template Login Page Setup', NULL, NULL, '✔️ How i design this course\n\nFirst, you will learn all the basic fundamentals of Tailwind CSS 3 . You will learn all tailwind CSS utility classes with one-by-one live examples so it will help you to build one strong foundation of tailwind CSS. Then together with all fundamental experiences, you will develop multiple real-life projects. In Our first project will be you will build one complete basic blog site design then you will go deeper and you will complete this total journey by developing one complete professional eCommerce template design from scratch.', '2023-09-03 16:07:57', '2023-09-03 16:07:57'),
(43, 2, 16, 'User Profile Design Part 1', NULL, 'https://www.youtube.com/embed/e8eSfqaaGXQ?list=RD01XopxDxQI8', NULL, '2023-09-03 16:08:13', '2023-09-03 16:08:13'),
(44, 2, 16, 'User Profile Design Part 2', NULL, 'https://www.youtube.com/embed/j8PvKoeHO1Y', NULL, '2023-09-03 16:08:23', '2023-09-03 16:08:23'),
(45, 2, 16, 'User Profile Design Part 3', NULL, 'https://www.youtube.com/embed/Hu-Bdubnnj0', NULL, '2023-09-03 16:08:37', '2023-09-03 16:08:37'),
(46, 2, 17, 'Property Type Crud Part 1', NULL, 'https://www.youtube.com/embed/jbxaUpJTb2M', NULL, '2023-09-03 16:08:51', '2023-09-03 16:08:51'),
(47, 2, 17, 'Property Type Crud Part 2', NULL, 'https://www.youtube.com/embed/WFb0_jqUj9U', NULL, '2023-09-03 16:09:02', '2023-09-03 16:09:02'),
(48, 2, 17, 'Property Type Crud Part 3', NULL, 'https://www.youtube.com/embed/38jCCWeuHeU', NULL, '2023-09-03 16:09:13', '2023-09-03 16:09:13'),
(49, 3, 18, 'Agent Template Setup', NULL, 'https://vimeo.com/151390908', NULL, '2023-09-03 16:10:27', '2023-09-03 16:10:27'),
(50, 3, 18, 'Agent Logout Option', NULL, 'https://vimeo.com/197536889', NULL, '2023-09-03 16:10:39', '2023-09-03 16:10:39'),
(51, 3, 18, 'Agent Profile & Image Update', NULL, 'https://vimeo.com/191739596', NULL, '2023-09-03 16:10:50', '2023-09-03 16:10:50'),
(52, 3, 19, 'Manage Agent In Admin Page Part 1', NULL, 'https://www.youtube.com/embed/e8eSfqaaGXQ?list=RD01XopxDxQI8', NULL, '2023-09-03 16:11:03', '2023-09-03 16:11:03'),
(53, 3, 19, 'Manage Agent In Admin Page Part 2', NULL, 'https://www.youtube.com/embed/j8PvKoeHO1Y', NULL, '2023-09-03 16:11:14', '2023-09-03 16:11:14'),
(54, 3, 19, 'Manage Agent In Admin Page Part 3', NULL, 'https://www.youtube.com/embed/Hu-Bdubnnj0', NULL, '2023-09-03 16:11:24', '2023-09-03 16:11:24'),
(55, 3, 20, 'Add Property From Agent Part 1', NULL, 'https://www.youtube.com/embed/jbxaUpJTb2M', NULL, '2023-09-03 16:11:36', '2023-09-03 16:11:36'),
(56, 3, 20, 'Add Property From Agent Part 2', NULL, 'https://www.youtube.com/embed/WFb0_jqUj9U', NULL, '2023-09-03 16:11:48', '2023-09-03 16:11:48'),
(57, 3, 20, 'Add Property From Agent Part 3', NULL, 'https://www.youtube.com/embed/38jCCWeuHeU', NULL, '2023-09-03 16:11:59', '2023-09-03 16:11:59'),
(58, 4, 21, 'Design Buy Package Agent Dashboard', NULL, 'https://vimeo.com/151390908', NULL, '2023-09-03 16:15:21', '2023-09-03 16:15:21'),
(59, 4, 21, 'Agent Buy Packages Option Part 1', NULL, 'https://vimeo.com/197536889', NULL, '2023-09-03 16:15:37', '2023-09-03 16:15:37'),
(60, 4, 21, 'Agent Buy Packages Option Part 2', NULL, 'https://vimeo.com/191739596', NULL, '2023-09-03 16:15:54', '2023-09-03 16:15:54'),
(61, 4, 22, 'Package sales Report In Agent Dashboard Part 1', NULL, 'https://www.youtube.com/embed/Hu-Bdubnnj0', NULL, '2023-09-03 16:16:14', '2023-09-03 16:16:14'),
(62, 4, 22, 'Package sales Report In Agent Dashboard Part 1', NULL, 'https://www.youtube.com/embed/jbxaUpJTb2M', NULL, '2023-09-03 16:16:23', '2023-09-03 16:16:23'),
(63, 4, 22, 'Get Type Wise Property', NULL, NULL, '✔️ How i design this course\n\nFirst, you will learn all the basic fundamentals of Tailwind CSS 3 . You will learn all tailwind CSS utility classes with one-by-one live examples so it will help you to build one strong foundation of tailwind CSS. Then together with all fundamental experiences, you will develop multiple real-life projects. In Our first project will be you will build one complete basic blog site design then you will go deeper and you will complete this total journey by developing one complete professional eCommerce template design from scratch.', '2023-09-03 16:16:42', '2023-09-03 16:16:42');

-- --------------------------------------------------------

--
-- Table structure for table `course_sections`
--

CREATE TABLE `course_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) NOT NULL,
  `section_title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_sections`
--

INSERT INTO `course_sections` (`id`, `course_id`, `section_title`, `created_at`, `updated_at`) VALUES
(4, 7, 'Section 1: Introduction To Course & Installing Required Tools', NULL, NULL),
(5, 7, 'Section 2 : Tailwind All Features', NULL, NULL),
(6, 7, 'Section 3 : Tailwind Css Basic All Element', NULL, NULL),
(7, 6, 'Section 1 : Getting Started with JavaScript', NULL, NULL),
(8, 6, 'Section 2 : Variables and Data Types', NULL, NULL),
(9, 6, 'Section 3 : JavaScript Operators', NULL, NULL),
(10, 6, 'Section 4 : Conditional Statements', NULL, NULL),
(11, 1, 'Section 1 : Multi Auth with Breeze Create Auth for User / Admin', NULL, NULL),
(12, 1, 'Section 2 : Project Admin Panel Setup', NULL, NULL),
(13, 1, 'Section 3 : Employee Management System', NULL, NULL),
(14, 1, 'Section 4 : Customer Management System', NULL, NULL),
(15, 2, 'Section 1 : Project Frontend Template Setup', NULL, NULL),
(16, 2, 'Section 2 : Project Frontend User Profile Setup', NULL, NULL),
(17, 2, 'Section 3 : Project Backend Property Type Setup', NULL, NULL),
(18, 3, 'Section 1 : Project Agent Panel Setup', NULL, NULL),
(19, 3, 'Section 2 : Manage Agent In Admin Dashboard', NULL, NULL),
(20, 3, 'Section 3 : Backend Add Property From Agent', NULL, NULL),
(21, 4, 'Section 1 : Backend Agent Buy Packages Option', NULL, NULL),
(22, 4, 'Section 2 : Package Sales Report In Agent Dashboard With PDF', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_20_202509_create_categories_table', 2),
(6, '2023_08_22_195042_create_sub_categories_table', 3),
(7, '2023_08_23_210009_create_courses_table', 4),
(8, '2023_08_23_210952_create_course_goals_table', 4),
(9, '2023_08_26_201730_create_course_sections_table', 5),
(10, '2023_08_26_201748_create_course_lectures_table', 5),
(11, '2023_09_05_212338_create_wishlists_table', 6),
(12, '2023_09_10_204348_create_coupons_table', 7),
(13, '2023_09_17_210710_create_payments_table', 8),
(14, '2023_09_17_210737_create_orders_table', 8),
(15, '2023_09_18_195749_create_smtp_settings_table', 9),
(16, '2023_09_21_200912_create_questions_table', 10),
(17, '2023_09_30_191102_create_reviews_table', 11),
(18, '2023_10_03_190656_create_blog_categories_table', 12),
(19, '2023_10_03_203415_create_blog_posts_table', 13),
(20, '2023_10_05_194858_create_notifications_table', 14),
(21, '2023_10_05_213932_create_site_settings_table', 15),
(22, '2023_10_06_201325_create_permission_tables', 16),
(23, '2024_03_20_045325_add_schedule_to_payments', 17);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 7),
(1, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 12);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('09c5da16-cdc7-4ebd-9052-e5ddd089d874', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 2, '{\"message\":\"New Cod Enrollment In Course\"}', '2023-10-05 15:21:12', '2023-10-05 14:46:12', '2023-10-05 15:21:12'),
('137607f1-7ebe-4446-a82e-eae0f54d7997', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 2, '{\"message\":\"New Cod Enrollment In Course\"}', NULL, '2024-03-13 22:53:48', '2024-03-13 22:53:48'),
('1b643e6c-819e-4a18-b969-113fd315616e', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 2, '{\"message\":\"New Cod Enrollment In Course\"}', NULL, '2024-03-07 06:17:39', '2024-03-07 06:17:39'),
('1d7e01f8-f6db-4985-9896-1331995584be', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 2, '{\"message\":\"New Cod Enrollment In Course\"}', NULL, '2024-02-28 22:43:17', '2024-02-28 22:43:17'),
('2271fde1-aef2-4ca2-8e66-9e616b2e5c0c', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 2, '{\"message\":\"New Cod Enrollment In Course\"}', NULL, '2024-03-14 21:38:49', '2024-03-14 21:38:49'),
('2ede3ab5-c723-41b1-a324-fb798600389d', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 2, '{\"message\":\"New Cod Enrollment In Course\"}', NULL, '2024-03-07 18:44:22', '2024-03-07 18:44:22'),
('31cce46c-da9c-418f-83d4-559cf6754298', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 2, '{\"message\":\"New Cod Enrollment In Course\"}', NULL, '2024-03-13 22:52:41', '2024-03-13 22:52:41'),
('32c8542b-bfe9-40c0-9dab-d9feebd802ac', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 6, '{\"message\":\"New Cod Enrollment In Course\"}', NULL, '2024-02-28 20:54:00', '2024-02-28 20:54:00'),
('55712c6c-d5b0-468a-a29f-5ef55eb004c9', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 2, '{\"message\":\"New Cod Enrollment In Course\"}', NULL, '2024-03-06 20:30:14', '2024-03-06 20:30:14'),
('5a08f46f-94ba-451a-ba13-0c863e204420', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 2, '{\"message\":\"New Cod Enrollment In Course\"}', '2024-03-07 20:18:28', '2024-03-07 18:46:16', '2024-03-07 20:18:28'),
('61f65717-4e7b-4da6-98cc-96fe6eb767b5', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 2, '{\"message\":\"New Cod Enrollment In Course\"}', NULL, '2024-03-06 20:40:10', '2024-03-06 20:40:10'),
('639b45b5-7aaa-449d-8d82-f5ff8bf73d49', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 2, '{\"message\":\"New Cod Enrollment In Course\"}', '2023-10-05 15:20:47', '2023-10-05 14:38:53', '2023-10-05 15:20:47'),
('775b3cbf-a38e-4518-97e2-b755b1e19833', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 2, '{\"message\":\"New Cod Enrollment In Course\"}', NULL, '2024-03-14 18:47:50', '2024-03-14 18:47:50'),
('7b344872-7a1f-4ec6-a57e-83168cfa31a2', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 2, '{\"message\":\"New Cod Enrollment In Course\"}', NULL, '2024-03-13 18:19:19', '2024-03-13 18:19:19'),
('827b1b5d-2e34-4e58-a80a-fc0b759d48af', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 2, '{\"message\":\"New Cod Enrollment In Course\"}', '2024-02-28 22:20:04', '2024-02-28 20:54:00', '2024-02-28 22:20:04'),
('a487e513-d076-4657-bcf8-6660bd3f568d', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 2, '{\"message\":\"New Cod Enrollment In Course\"}', NULL, '2024-03-13 19:48:35', '2024-03-13 19:48:35'),
('a6ae5ae4-16a5-4e1e-afc8-9542e5bb4e87', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 2, '{\"message\":\"New Cod Enrollment In Course\"}', NULL, '2024-03-13 22:57:52', '2024-03-13 22:57:52'),
('a7f68cbe-07f6-4d66-b296-26fb663106b5', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 6, '{\"message\":\"New Cod Enrollment In Course\"}', NULL, '2023-10-05 14:46:12', '2023-10-05 14:46:12'),
('f0c0b65a-4eb3-47a8-8786-9fab6cf93c47', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 6, '{\"message\":\"New Cod Enrollment In Course\"}', NULL, '2023-10-05 14:38:53', '2023-10-05 14:38:53'),
('f3052de4-42bb-42b7-9a05-7da063ceb7af', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 2, '{\"message\":\"New Cod Enrollment In Course\"}', NULL, '2024-03-13 18:45:10', '2024-03-13 18:45:10'),
('f73665be-fd43-4ff9-b08e-c6887a5d940a', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 2, '{\"message\":\"New Cod Enrollment In Course\"}', NULL, '2024-03-19 21:28:15', '2024-03-19 21:28:15'),
('fc9454fe-53f6-4902-8ee8-14ce47bf840a', 'App\\Notifications\\OrderComplete', 'App\\Models\\User', 2, '{\"message\":\"New Cod Enrollment In Course\"}', NULL, '2024-03-19 22:07:51', '2024-03-19 22:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `course_title` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `payment_id`, `user_id`, `course_id`, `instructor_id`, `course_title`, `price`, `created_at`, `updated_at`) VALUES
(15, 18, 3, 11, 2, 'Programming for Kids', 150000, '2024-02-28 20:53:55', '2024-02-28 20:53:55'),
(16, 20, 3, 4, 2, 'Design Graphics', 120000, '2024-02-28 22:43:11', '2024-02-28 22:43:11'),
(17, 22, 3, 2, 2, 'Learn digital Circuit', 120000, '2024-03-06 20:11:08', '2024-03-06 20:11:08'),
(18, 23, 10, 2, 2, 'Learn digital Circuit', 120000, '2024-03-06 20:30:09', '2024-03-06 20:30:09'),
(19, 24, 10, 6, 2, 'English for Kids', 84000, '2024-03-06 20:40:06', '2024-03-06 20:40:06'),
(20, 25, 10, 7, 2, 'Math', 120000, '2024-03-07 06:17:34', '2024-03-07 06:17:34'),
(21, 26, 10, 10, 2, 'Coding with Python', 300000, '2024-03-07 18:44:17', '2024-03-07 18:44:17'),
(22, 27, 10, 1, 2, 'Create Robot with Arduino', 95000, '2024-03-07 18:46:13', '2024-03-07 18:46:13'),
(23, 28, 11, 2, 2, 'Learn digital Circuit', 120000, '2024-03-13 18:19:14', '2024-03-13 18:19:14'),
(24, 29, 11, 3, 2, 'Coding from Scratch', 120000, '2024-03-13 18:45:05', '2024-03-13 18:45:05'),
(25, 30, 11, 4, 2, 'Design Graphics', 120000, '2024-03-13 19:48:30', '2024-03-13 19:48:30'),
(26, 32, 11, 16, 2, 'Coba course', 250000, '2024-03-13 22:52:35', '2024-03-13 22:52:35'),
(27, 33, 11, 12, 2, 'test', 125, '2024-03-13 22:53:43', '2024-03-13 22:53:43'),
(28, 34, 11, 7, 2, 'Math', 120000, '2024-03-13 22:57:48', '2024-03-13 22:57:48'),
(29, 35, 11, 6, 2, 'English for Kids', 84000, '2024-03-14 18:47:45', '2024-03-14 18:47:45'),
(30, 36, 11, 15, 2, 'Test 4', 250000, '2024-03-14 21:38:44', '2024-03-14 21:38:44'),
(31, 38, 10, 15, 2, 'Test 4', 250000, '2024-03-19 21:28:10', '2024-03-19 21:28:10'),
(32, 39, 10, 16, 2, 'Coba course', 250000, '2024-03-19 22:07:46', '2024-03-19 22:07:46');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `cash_delivery` varchar(255) DEFAULT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `order_date` varchar(255) DEFAULT NULL,
  `order_month` varchar(255) DEFAULT NULL,
  `order_year` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `schedule` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `name`, `email`, `phone`, `address`, `cash_delivery`, `total_amount`, `payment_type`, `invoice_no`, `order_date`, `order_month`, `order_year`, `status`, `created_at`, `updated_at`, `schedule`) VALUES
(16, 'User', 'user@gmail.com', '012233', 'Uttara Dhaka', 'handcash', '120000', 'Direct Payment', 'EOS26273816', '29 February 2024', 'February', '2024', 'confirm', '2024-02-28 20:50:52', '2024-02-28 22:38:39', NULL),
(17, 'User', 'user@gmail.com', '012233', 'Uttara Dhaka', 'handcash', '84000', 'Direct Payment', 'EOS23567466', '29 February 2024', 'February', '2024', 'pending', '2024-02-28 20:51:34', '2024-02-28 20:51:34', NULL),
(18, 'User', 'user@gmail.com', '012233', 'Uttara Dhaka', 'handcash', '150000', 'Direct Payment', 'EOS56305757', '29 February 2024', 'February', '2024', 'confirm', '2024-02-28 20:53:55', '2024-02-28 20:54:29', NULL),
(19, 'User', 'user@gmail.com', '012233', 'Uttara Dhaka', 'handcash', '120000', 'Direct Payment', 'EOS77610091', '29 February 2024', 'February', '2024', 'confirm', '2024-02-28 21:27:39', '2024-02-28 22:27:26', NULL),
(20, 'User', 'user@gmail.com', '012233', 'Indonesia', 'handcash', '120000', 'Direct Payment', 'EOS47494894', '29 February 2024', 'February', '2024', 'confirm', '2024-02-28 22:43:11', '2024-02-28 22:44:58', NULL),
(21, 'User', 'user@gmail.com', '012233', 'Indonesia', 'handcash', '120000', 'Direct Payment', 'EOS72694780', '07 March 2024', 'March', '2024', 'pending', '2024-03-06 20:10:10', '2024-03-06 20:10:10', NULL),
(22, 'User', 'user@gmail.com', '012233', 'Indonesia', 'handcash', '120000', 'Direct Payment', 'EOS83905262', '07 March 2024', 'March', '2024', 'pending', '2024-03-06 20:11:08', '2024-03-06 20:11:08', NULL),
(23, 'Indah', 'indahoktav09@gmail.com', '0812345678', 'Bogor', 'handcash', '120000', 'Direct Payment', 'EOS55141632', '07 March 2024', 'March', '2024', 'pending', '2024-03-06 20:30:09', '2024-03-06 20:30:09', NULL),
(24, 'Indah', 'indahoktav09@gmail.com', '081122334455', 'Jakarta', 'handcash', '84000', 'Direct Payment', 'EOS60573425', '07 March 2024', 'March', '2024', 'pending', '2024-03-06 20:40:06', '2024-03-06 20:40:06', NULL),
(25, 'Indah', 'indahoktav09@gmail.com', '085912345633', 'Puri Babakan Sakinah No. 29', 'handcash', '120000', 'Direct Payment', 'EOS28013867', '07 March 2024', 'March', '2024', 'pending', '2024-03-07 06:17:34', '2024-03-07 06:17:34', NULL),
(26, 'Indah', 'indahoktav09@gmail.com', '087346391329', 'Indinesia', 'handcash', '300000', 'Direct Payment', 'EOS73636137', '08 March 2024', 'March', '2024', 'pending', '2024-03-07 18:44:17', '2024-03-07 18:44:17', NULL),
(27, 'Indah', 'indahoktav09@gmail.com', NULL, NULL, 'handcash', '95000', 'Direct Payment', 'EOS47381663', '08 March 2024', 'March', '2024', 'confirm', '2024-03-07 18:46:13', '2024-03-07 18:47:33', NULL),
(28, 'Ayu', 'indahoktav02@gmail.com', NULL, NULL, 'handcash', '120000', 'Direct Payment', 'EOS24269947', '14 March 2024', 'March', '2024', 'pending', '2024-03-13 18:19:14', '2024-03-13 18:19:14', NULL),
(29, 'Ayu', 'indahoktav02@gmail.com', '085923250029', 'Indonesia', 'handcash', '120000', 'Direct Payment', 'EOS73682102', '14 March 2024', 'March', '2024', 'pending', '2024-03-13 18:45:05', '2024-03-13 18:45:05', NULL),
(30, 'Ayu', 'indahoktav02@gmail.com', '12345678', 'test', 'handcash', '120000', 'Direct Payment', 'EOS31081575', '14 March 2024', 'March', '2024', 'pending', '2024-03-13 19:48:30', '2024-03-13 19:48:30', NULL),
(31, 'Ayu', 'indahoktav02@gmail.com', '081456789', 'Malaysia', 'handcash', '120000', 'Direct Payment', 'EOS16126484', '14 March 2024', 'March', '2024', 'pending', '2024-03-13 22:52:03', '2024-03-13 22:52:03', NULL),
(32, 'Ayu', 'indahoktav02@gmail.com', '08192345678', 'Malaysia', 'handcash', '250000', 'Direct Payment', 'EOS92424582', '14 March 2024', 'March', '2024', 'pending', '2024-03-13 22:52:35', '2024-03-13 22:52:35', NULL),
(33, 'Ayu', 'indahoktav02@gmail.com', '1234567', 'Test juga', 'handcash', '125', 'Direct Payment', 'EOS13470221', '14 March 2024', 'March', '2024', 'pending', '2024-03-13 22:53:43', '2024-03-13 22:53:43', NULL),
(34, 'Ayu', 'indahoktav02@gmail.com', '45678', 'Test lagi', 'handcash', '120000', 'Direct Payment', 'EOS29100514', '14 March 2024', 'March', '2024', 'pending', '2024-03-13 22:57:48', '2024-03-13 22:57:48', NULL),
(35, 'Ayu', 'indahoktav02@gmail.com', NULL, NULL, 'handcash', '84000', 'Direct Payment', 'EOS17601184', '15 March 2024', 'March', '2024', 'pending', '2024-03-14 18:47:45', '2024-03-14 18:47:45', NULL),
(36, 'Ayu', 'indahoktav02@gmail.com', NULL, NULL, 'handcash', '250000', 'Direct Payment', 'EOS62117911', '15 March 2024', 'March', '2024', 'pending', '2024-03-14 21:38:44', '2024-03-14 21:38:44', NULL),
(37, 'Indah', 'indahoktav09@gmail.com', '08123457', 'singapore', 'handcash', '120000', 'Direct Payment', 'EOS92375307', '20 March 2024', 'March', '2024', 'pending', '2024-03-19 21:26:29', '2024-03-19 21:26:29', NULL),
(38, 'Indah', 'indahoktav09@gmail.com', '08123457', 'singapore', 'handcash', '250000', 'Direct Payment', 'EOS12442470', '20 March 2024', 'March', '2024', 'pending', '2024-03-19 21:28:10', '2024-03-19 21:28:10', NULL),
(39, 'Indah', 'indahoktav09@gmail.com', '0819123456789', 'USA', 'handcash', '250000', 'Direct Payment', 'EOS40829131', '20 March 2024', 'March', '2024', 'confirm', '2024-03-19 22:07:46', '2024-03-19 22:16:23', 'Senin, pukul 09:00');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(2, 'category.all', 'web', 'Category', '2023-10-06 14:56:10', '2023-10-06 14:56:10'),
(3, 'category.menu', 'web', 'Category', '2023-10-06 15:12:57', '2023-10-06 15:12:57'),
(4, 'subcategory.all', 'web', 'Category', '2023-10-07 13:57:00', '2023-10-07 13:57:00'),
(5, 'category.edit', 'web', 'Category', '2023-10-07 15:47:38', '2023-10-07 15:47:38'),
(6, 'category.delete', 'web', 'Category', '2023-10-07 15:47:45', '2023-10-07 15:47:45'),
(7, 'category.add', 'web', 'Category', '2023-10-07 15:47:52', '2023-10-07 15:47:52'),
(8, 'instructor.menu', 'web', 'Instructor', '2023-10-07 15:48:00', '2023-10-07 15:48:00'),
(9, 'coupon.menu', 'web', 'Coupon', '2023-10-07 15:48:07', '2023-10-07 15:48:07'),
(10, 'coupon.all', 'web', 'Coupon', '2023-10-07 15:48:17', '2023-10-07 15:48:17'),
(11, 'coupon.add', 'web', 'Coupon', '2023-10-07 15:48:24', '2023-10-07 15:48:24'),
(12, 'coupon.edit', 'web', 'Coupon', '2023-10-07 15:48:32', '2023-10-07 15:48:32'),
(13, 'coupon.delete', 'web', 'Coupon', '2023-10-07 15:48:41', '2023-10-07 15:48:41'),
(14, 'setting.menu', 'web', 'Setting', '2023-10-07 15:48:50', '2023-10-07 15:48:50'),
(15, 'order.menu', 'web', 'Orders', '2023-10-07 15:48:58', '2023-10-07 15:48:58'),
(16, 'report.menu', 'web', 'Report', '2023-10-07 15:49:05', '2023-10-07 15:49:05'),
(17, 'review.menu', 'web', 'Review', '2023-10-07 15:49:17', '2023-10-07 15:49:17'),
(18, 'all.user.menu', 'web', 'All User', '2023-10-07 15:49:24', '2023-10-07 15:49:24'),
(19, 'blog.menu', 'web', 'Blog', '2023-10-07 15:49:32', '2023-10-07 15:49:32'),
(20, 'rolepermission.menu', 'web', 'Role and Permission', '2023-10-07 15:49:45', '2023-10-07 15:49:45');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `question` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `course_id`, `user_id`, `instructor_id`, `parent_id`, `subject`, `question`, `created_at`, `updated_at`) VALUES
(1, 6, 3, 2, NULL, 'I need some help', 'Plz let me know How i can catch you', '2023-09-21 14:33:38', NULL),
(2, 6, 3, 2, NULL, 'I don\'t understand', 'I don\'t understand this session', '2023-09-21 14:36:02', NULL),
(3, 6, 3, 2, 2, NULL, 'plz tell me more details about this issues', '2023-09-22 13:35:21', NULL),
(4, 6, 3, 2, 1, NULL, 'Plz give me your email address', '2023-09-22 13:40:17', NULL),
(5, 7, 3, 2, NULL, 'Need to change hosting one domain', 'how i can do this plz help me', '2023-09-22 14:27:49', NULL),
(6, 7, 3, 2, 5, NULL, 'Yes tell me how i can help you?', '2023-09-22 14:28:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `rating` varchar(255) NOT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `course_id`, `user_id`, `comment`, `rating`, `instructor_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'This is very nice course', '5', 2, '0', '2023-09-30 14:27:26', NULL),
(2, 2, 3, 'I like this course', '4', 2, '1', '2023-09-30 14:28:20', '2023-10-02 14:02:52'),
(3, 1, 3, 'This instructor is very much helpful', '4', 2, '1', '2023-09-30 14:46:56', NULL),
(4, 2, 3, 'nice', '4', 2, '1', '2023-10-01 14:43:15', NULL),
(5, 2, 3, 'not good', '1', 2, '0', '2023-10-01 14:43:32', '2023-10-02 14:05:46'),
(6, 4, 3, 'Thank your so much', '5', 2, '1', '2023-10-02 14:06:23', '2023-10-02 14:06:49');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Manager', 'web', '2023-10-07 14:24:17', '2023-10-07 14:40:27'),
(2, 'Super Admin', 'web', '2023-10-07 14:24:32', '2023-10-07 14:24:32'),
(3, 'Admin', 'web', '2023-10-07 14:24:40', '2023-10-07 14:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(2, 2),
(3, 1),
(3, 2),
(4, 2),
(5, 1),
(5, 2),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(8, 3),
(9, 2),
(9, 3),
(10, 2),
(10, 3),
(11, 2),
(11, 3),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(15, 3),
(16, 2),
(17, 2),
(18, 2),
(19, 1),
(19, 2),
(19, 3),
(20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `logo`, `phone`, `email`, `address`, `facebook`, `twitter`, `copyright`, `created_at`, `updated_at`) VALUES
(1, 'upload/logo/1792116234097892.png', '085711134344', 'support@santutor.com', 'Jakarta, Indonesia', NULL, NULL, '© Santutor 2024', NULL, '2024-03-16 19:14:32');

-- --------------------------------------------------------

--
-- Table structure for table `smtp_settings`
--

CREATE TABLE `smtp_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mailer` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `port` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `encryption` varchar(255) DEFAULT NULL,
  `from_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smtp_settings`
--

INSERT INTO `smtp_settings` (`id`, `mailer`, `host`, `port`, `username`, `password`, `encryption`, `from_address`, `created_at`, `updated_at`) VALUES
(1, 'smtp', 'smtp.gmail.com', '587', 'indahoktav02@gmail.com', 'zqssrjbaleutpgbm', 'tls', 'indahoktav02@gmail.com', NULL, '2023-09-18 14:36:06');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `subcategory_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name`, `subcategory_slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'Web Coding', 'web-coding', NULL, '2024-02-28 19:13:19'),
(2, 1, 'Problem Solving', 'problem-solving', NULL, '2024-02-28 19:13:46'),
(4, 1, 'Game Development', 'game-development', NULL, NULL),
(5, 3, 'Digital Circuit', 'digital-circuit', NULL, '2024-02-28 19:16:39'),
(6, 3, 'Arduino', 'arduino', NULL, '2024-02-28 19:16:49'),
(7, 3, 'Robot Contest', 'robot-contest', NULL, '2024-02-28 19:17:24'),
(8, 4, 'English', 'english', NULL, '2024-02-28 19:14:06'),
(9, 4, 'Chinese', 'chinese', NULL, '2024-02-28 19:14:52'),
(10, 4, 'Japanese', 'japanese', NULL, '2024-02-28 19:15:15'),
(11, 5, 'Math', 'math', NULL, '2024-02-28 19:12:16'),
(12, 5, 'Science', 'science', NULL, '2024-02-28 19:12:39'),
(13, 5, 'physics', 'physics', NULL, '2024-02-28 19:13:07'),
(14, 6, 'Graphic Design', 'graphic-design', NULL, NULL),
(15, 6, 'Web Design', 'web-design', NULL, NULL),
(16, 6, 'Design Tools', 'design-tools', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` enum('admin','instructor','user') NOT NULL DEFAULT 'user',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `last_seen` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `last_seen`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$tNc188SbHBgxQji01YE3M.P5Hkm/XWszv.FgyZH5YLjks5QiwY0.y', '202403021311WhatsApp Image 2022-07-17 at 09.26.58.jpeg', '0112', 'Indonesia', 'admin', '1', '2024-03-25 01:09:09', NULL, NULL, '2024-03-24 18:09:09'),
(2, 'Instructor', 'instructor', 'instructor@gmail.com', NULL, '$2y$10$.4V.edPpbEbcLESb6oCfCejUxSGsp.ugV8INlkTCWJJgZIp.mfEq.', '202402290156WhatsApp Image 2022-07-17 at 09.26.58.jpeg', '0144', 'Bogor', 'instructor', '1', '2024-03-25 01:11:11', NULL, '2023-09-02 20:40:25', '2024-03-24 18:11:11'),
(3, 'User', 'user', 'user@gmail.com', NULL, '$2y$10$J7lsvshjYBeElXv80vzeE.Kgymywf7Bade1Y0dfF1HAY7/JPR54E2', '202403021314WhatsApp Image 2022-07-17 at 09.26.58.jpeg', '012233', 'Indonesia', 'user', '1', '2024-03-24 14:18:26', NULL, NULL, '2024-03-24 07:18:26'),
(7, 'udemy', 'Udemy', 'udemy@gmail.com', NULL, '$2y$10$WLsyQvKjLhoVAu/WAEfrI.CZjkE/Gv.qTwD7dkV86JEENJ31uFwKq', '202310082215images.png', '012233', 'Indonesia', 'admin', '1', '2023-10-09 20:29:26', NULL, '2023-10-08 16:09:40', '2024-02-28 22:31:22'),
(8, 'jony11', 'jony11', 'jony@gmail.com', NULL, '$2y$10$8EQdaElUmb9bwxGEvhmlb.UHCeOsKFz0A/CuXEUmEv7tXKru4rmKu', NULL, '23233', 'Indonesia', 'admin', '1', NULL, NULL, '2023-10-08 16:12:03', '2024-02-28 22:31:31'),
(10, 'Indah', NULL, 'indahoktav09@gmail.com', NULL, '$2y$10$aHBgswH..9SxV0482Si56eVKVZSD4MHbqijvPr91r8OSCMN8hFrHC', NULL, NULL, NULL, 'user', '1', '2024-03-20 05:18:06', NULL, '2024-03-06 20:29:39', '2024-03-19 22:18:06'),
(11, 'Ayu', NULL, 'indahoktav02@gmail.com', NULL, '$2y$10$nrnLiF2dJ7QS/gN4ybJkqOMbnLf.vqPFPiDNIfs7P1CZ2Edkt1hy6', NULL, NULL, NULL, 'user', '1', '2024-03-15 02:17:28', 'LjBc24aehivHu08oavTZECZIm2gkV87RlQB2o5q0HFUdPFaHAji9wds9fS55', '2024-03-13 03:32:27', '2024-03-14 19:17:28'),
(12, 'Indah', 'Test admin', 'indahoktav00@gmail.com', NULL, '$2y$10$P73blnma1vXWdJd0psNmUeY2CwM1TpeBqzk6v9RrvGW0QPUl0hI5i', NULL, '087346391329', 'Indonesia', 'admin', '1', '2024-03-14 03:47:34', NULL, '2024-03-13 20:46:30', '2024-03-13 20:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2023-09-05 15:59:50', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
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
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_goals`
--
ALTER TABLE `course_goals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_lectures`
--
ALTER TABLE `course_lectures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_sections`
--
ALTER TABLE `course_sections`
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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_course_id_foreign` (`course_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
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
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `course_goals`
--
ALTER TABLE `course_goals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `course_lectures`
--
ALTER TABLE `course_lectures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `course_sections`
--
ALTER TABLE `course_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
