-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 12, 2020 at 01:21 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mdrupome_blood_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_table`
--

CREATE TABLE `blog_table` (
  `blog_id` int(11) NOT NULL,
  `blog_image` varchar(100) NOT NULL,
  `blog_title` varchar(100) NOT NULL,
  `blog_subtitle` varchar(150) NOT NULL,
  `blog_des` varchar(5000) NOT NULL,
  `post_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_table`
--

INSERT INTO `blog_table` (`blog_id`, `blog_image`, `blog_title`, `blog_subtitle`, `blog_des`, `post_time`) VALUES
(17, 'fresgby.PNG', 'FreshBuy 5% discount All item', 'আমাদের \"FreshBuy\" এর ১ মাস পূর্ণ হওয়া উপলক্ষে আগামী পুরো সপ্তাহ জুড়ে চলবে অফার।অফার থাকবে প্রতিটি আইটেমে', '   আসসালামু আলাইকুম,<br>\r\n১ মাস পূর্ণ হওয়া উপলক্ষে\r\nআমরা \"ফ্রেশবাই\" দিচ্ছি প্রতিটি পন্যে ৫% ডিসকাউন্ট।<br>\r\nএই অফার আগামী পুরো সপ্তাহ জুড়ে চলবে।\r\nআমাদের কাছে পাবেনঃ <br>\r\n সুন্দরবনের চাকের মধুঃ \r\n১ কেজিঃ ৯০০ টাকা\r\n৫০০ গ্রামঃ ৪৮০ টাকা<br>\r\nসরিষাফুলের মধুঃ \r\n১কেজিঃ ৫৫০ টাকা\r\n৫০০ গ্রামঃ ২৮০ টাকা<br>\r\n মিশ্রফুলের মধুঃ\r\n১কেজিঃ ৭৫০ টাকা\r\n৫০০ গ্রামঃ ৩৮০ টাকা<br>\r\nলিচুফুলের মধুঃ\r\n১কেজিঃ ৬০০ টাকা\r\n৫০০ গ্রামঃ ৩০০ টাকা<br>\r\n কালোজিরা ফুলের মধুঃ\r\n১কেজিঃ ১৪০০ টাকা\r\n৫০০গ্রামঃ ৭০০টাকা\r\nসাতক্ষীরার গাওয়া ঘিঃ\r\n১কেজিঃ ১৩৫০ টাকা\r\n৫০০ গ্রামঃ ৭০০ টাকা<br>\r\nBOP গ্রেডের স্পেশাল প্রিমিয়াম চা-পাতাঃ\r\n১কেজিঃ ৪৮০ টাকা\r\n৫০০ গ্রামঃ ২৫০ টাকা<br>\r\nঘানিভাংগা খাঁটি সরিষার তেলঃ\r\n১লিটারঃ ২১০ টাকা\r\n৫লিটারঃ ৯৯০টাকা<br>\r\nপ্রতিটি পন্যের বর্তমান মূল্য।বর্তমান মূল্য থেকে থাকবে ৫% ডিসকাউন্ট ☺\r\nপ্রতিটি পন্য ১০০% খাঁটি আর ফ্রেশ।\r\nসারা বাংলাদেশে আমরা কুরিয়ার এর মাধ্যমে পন্য পাঠিয়ে থাকি????\r\nFreshBuy\r\n-we ensured you to maintain purity and serve with honesty♥♥\r\nvisitour page on facebook: https://www.facebook.com/FreshBuyBd/', '2020-07-21');

-- --------------------------------------------------------

--
-- Table structure for table `comment_table`
--

CREATE TABLE `comment_table` (
  `user_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `user_comment` varchar(150) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment_table`
--

INSERT INTO `comment_table` (`user_id`, `blog_id`, `first_name`, `last_name`, `user_comment`, `date_time`) VALUES
(54, 5, 'rupom', 'ehsan', 'hiii', '2020-08-06 23:49:17'),
(55, 17, 'rupom', 'ehsan', 'need this', '2020-11-07 23:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `doner_table`
--

CREATE TABLE `doner_table` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_phone` char(11) NOT NULL,
  `user_address` varchar(50) NOT NULL,
  `user_social` varchar(200) NOT NULL,
  `user_division` varchar(20) NOT NULL,
  `user_blood` varchar(20) NOT NULL,
  `user_image` varchar(200) NOT NULL,
  `user_status` varchar(50) NOT NULL,
  `user_gender` varchar(50) NOT NULL,
  `user_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doner_table`
--

INSERT INTO `doner_table` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `user_social`, `user_division`, `user_blood`, `user_image`, `user_status`, `user_gender`, `user_time`) VALUES
(76, 'Md Rakibul Hasan Mollik', 'Ahmedrakib7788@gmail.com', '01745987898', 'Jurain murad pur dhaka 1204', 'Ahmed rakib/facebook', 'Dhaka', 'O +', '', 'NO', 'Male', '2020-07-31 22:01:29'),
(119, 's m sabuj', 'sabujhossain7453@gmail.com', '01682730556', '52A ,jurain madrasaha road dhaka 1204', 's. m. sabuj/fb', 'Dhaka', 'O +', '22751029_729777893873295_462608540_o.jpg', 'YES', 'Male', '2020-08-03 18:40:46'),
(120, 'arabi sujon', 'afranarabisujon786@gmail.com', '01961933740', '52A ,jurain madrasaha road dhaka 1204', 'afran  arabi sujon/fb', 'Dhaka', 'B +', '', 'YES', 'Male', '2020-08-03 18:47:30'),
(121, 'ahmed sabbir', 'sabbirahmed65987@gmail.com', '01977884322', '52A ,jurain madrasaha road dhaka 1204', 'ahmed sabbir/facebook', 'Dhaka', 'AB +', '', 'NO', 'Male', '2020-08-03 18:51:05'),
(130, 'Nur Mohammad Abu Daud', '', '01940525004', 'Narayanganj,dhaka', '', 'Dhaka', 'A +', '', 'YES', 'Male', '2020-08-06 14:18:18'),
(131, 'ENG.MD EDRISH AKASH', '', '01830804480', 'Dhaka,Bangladesh', '', 'Dhaka', 'B +', '', 'YES', 'Male', '2020-08-06 14:24:03'),
(132, 'Engr. A N M Ekramuddin', '', '01818575559', 'Chittagong,Bangladesh', '', 'Chittagong', 'O +', '', 'YES', 'Male', '2020-08-06 14:27:31'),
(133, 'Md. Saifur Rahman', '', '01911523352', 'Narayanganj,Dhaka', '', 'Dhaka', 'B +', '', 'YES', 'Male', '2020-08-06 15:11:18'),
(134, 'Rakib Sikder', '', '01710441509', 'Gazipur,Dhaka', '', 'Dhaka', 'O +', '', 'YES', 'Male', '2020-08-06 15:14:02'),
(135, 'A B M Sayem Siddique', '', '01914209017', 'Dhaka,Bangladesh', '', 'Dhaka', 'O +', '', 'YES', 'Male', '2020-08-06 15:14:49'),
(136, 'A M Ashfaqul Islam', '', '01674801988', 'Dhaka,Bangladesh', '', 'Dhaka', 'O +', '', 'YES', 'Male', '2020-08-06 15:15:49'),
(137, 'A S M Boorhan Uddin', '', '01684000746', 'Dhaka,Bangladesh', '', 'Dhaka', 'B +', '', 'YES', 'Male', '2020-08-06 15:16:19'),
(138, 'A. K. M. Jahedul Huq', '', '01912010700', 'Dhaka,Bangladesh', '', 'Dhaka', 'A +', '', 'YES', 'Male', '2020-08-06 15:16:46'),
(139, 'A. K. M. Jahedul Huq', '', '01716214953', 'Brahmanbaria,chittagong', '', 'Chittagong', 'A +', '', 'YES', 'Male', '2020-08-06 15:18:25'),
(140, 'A.K. Ehsanul Haque Mashuk', '', '01766686095', 'Dhaka,Bangladesh', '', 'Dhaka', 'O +', '', 'YES', 'Male', '2020-08-06 15:19:20'),
(141, 'A.K.M FUAD ADNAN RAHMAN', '', '01766686095', 'Mymensingh,Bangladesh', '', 'Mymensingh', 'A +', '', 'YES', 'Male', '2020-08-06 15:20:53'),
(142, 'A.K.M.EUNUS BAPPI', '', '01923869512', 'khulna,Bangladesh', '', 'Khulna', 'A +', '', 'YES', 'Male', '2020-08-06 15:21:37'),
(143, 'A.K.M.Ezajul Islam', '', '01552566671', 'Dhaka,Bangladesh', '', 'Dhaka', 'B +', '', 'YES', 'Male', '2020-08-06 15:22:27'),
(144, 'A.R. Aphiphi', '', '01946524822', 'bagerhat,khulna', '', 'Khulna', 'B +', '', 'YES', 'Male', '2020-08-06 15:23:49'),
(145, 'Aaquib Javed', '', '01680388745', 'Dhaka,Bangladesh', '', 'Dhaka', 'A +', '', 'YES', 'Male', '2020-08-06 15:27:33'),
(146, 'AB Bipul Faisal', '', '01917326509', 'Gajipur,Dhaka', '', 'Dhaka', 'O +', '', 'YES', 'Male', '2020-08-06 15:28:33'),
(147, 'Abbas Ibn Alam', '', '01951412181', 'Gajipur,Dhaka', '', 'Dhaka', 'O +', '', 'YES', 'Male', '2020-08-06 15:28:59'),
(148, 'Abdul Alim Bhuyan', '', '01837622144', 'Dhaka,Bangladesh', '', 'Dhaka', 'A +', '', 'YES', 'Male', '2020-08-06 15:37:14'),
(149, 'Abdul Hakim badhon', '', '01686200217', 'Dhaka,Bangladesh', '', 'Dhaka', 'B +', '', 'YES', 'Male', '2020-08-06 15:37:47'),
(150, 'Abdul Hakim Sardar', '', '01742048991', 'khulna,Bangladesh', '', 'Khulna', 'O +', '', 'YES', 'Male', '2020-08-06 15:38:21'),
(151, 'Abdul Karim', '', '01723706168', 'Dhaka,Bangladesh', '', 'Dhaka', 'B +', '', 'YES', 'Male', '2020-08-06 15:40:04'),
(152, 'abdul kyium', '', '01712731934', 'Sylhet,Bangladesh', '', 'Sylhet', 'A +', '', 'NO', 'Male', '2020-08-06 15:41:03'),
(153, 'Abdul Malek Tutul', '', '01831440734', 'Jhenaidah,Bangladesh', '', 'Khulna', 'B +', '', 'YES', 'Male', '2020-08-06 15:42:37'),
(154, 'Abdul Mazid Murad', '', '01748916408', 'Dhaka,Bangladesh', '', 'Dhaka', 'A +', '', 'YES', 'Male', '2020-08-06 15:44:03'),
(155, 'Abraham Anik', '', '01684222883', 'Chittagong,Bangladesh', '', 'Chittagong', 'O -', '', 'NO', 'Male', '2020-08-06 15:50:36'),
(156, 'Ajoy Kumar Sarker', '', '01968167216', 'Bogra,Bangladesh', '', 'Rajshahi', 'O -', '', 'NO', 'Male', '2020-08-06 15:51:42'),
(157, 'Akaid Hussain', '', '01757580304', 'Dhaka,Bangladesh', '', 'Dhaka', 'O -', '', 'YES', 'Male', '2020-08-06 15:52:14'),
(158, 'Akramul Hoque', '', '01914549168', 'Chittagong,Bangladesh', '', 'Chittagong', 'O -', '', 'YES', 'Male', '2020-08-06 15:52:52'),
(159, 'Al Mamun', '', '01515287150', 'Comilla,Dhaka', '', 'Dhaka', 'O -', '', 'YES', 'Male', '2020-08-06 15:54:19'),
(160, 'alamgi', '', '01723255401', 'Sirajganj,Rajsahi', '', 'Rajshahi', 'O -', '', 'NO', 'Male', '2020-08-06 15:55:47'),
(161, 'Aman Ullah', '', '01779226655', 'Dhaka,Bangladesh', '', 'Dhaka', 'O -', '', 'NO', 'Male', '2020-08-06 16:27:11'),
(162, 'Anis Siddique', '', '01910945133', 'Chittagong,Bangladesh', '', 'Chittagong', 'O -', '', 'NO', 'Male', '2020-08-06 16:27:42'),
(163, 'anuradha bhowmik', '', '01714295583', 'Dhaka,Bangladesh', '', 'Dhaka', 'O -', '', 'NO', 'Male', '2020-08-06 16:28:15'),
(164, 'Apon Anand', '', '01912955569', 'khulna,Bangladesh', '', 'Khulna', 'O -', '', 'NO', 'Male', '2020-08-06 16:29:26'),
(165, 'Ashraful Islam', '', '01774945572', 'Chadpur,Chittagong', '', 'Chittagong', 'O -', '', 'NO', 'Male', '2020-08-06 16:30:23'),
(166, 'Azizul Hakim', '', '01968481739', 'Dhaka,Bangladesh', '', 'Dhaka', 'O -', '', 'NO', 'Male', '2020-08-06 16:32:48'),
(167, 'Bayejid bin wahid', '', '01681345678', 'sunamgonj,sylhet', '', 'Sylhet', 'O -', '', 'YES', 'Male', '2020-08-06 16:35:20'),
(168, 'binoy amin', '', '01722202556', 'Dhaka,Bangladesh', '', 'Dhaka', 'O -', '', 'YES', 'Male', '2020-08-06 16:35:52'),
(169, 'Abu Sayed Md. Shumon', '', '01730075946', 'Dhaka,Bangladesh', '', 'Dhaka', 'A -', '', 'NO', 'Male', '2020-08-06 16:37:37'),
(170, 'Angon Paul', '', '01676241123', 'khulna,Bangladesh', '', 'Khulna', 'A -', '', 'NO', 'Male', '2020-08-06 16:38:22'),
(171, 'Anwarul kabir', '', '01552653421', 'Dhaka,Bangladesh', '', 'Dhaka', 'A -', '', 'YES', 'Male', '2020-08-06 16:39:22'),
(172, 'Ariful Islam', '', '01957884309', 'Dhaka,Bangladesh', '', 'Dhaka', 'A -', '', 'YES', 'Male', '2020-08-06 16:39:52'),
(173, 'Atikur Rahman', '', '01763070994', 'natore,rajshahi', '', 'Rajshahi', 'A -', '', 'YES', 'Male', '2020-08-06 16:41:27'),
(174, 'Avishek Bhowmik', '', '01682328191', 'Dhaka,Bangladesh', '', 'Dhaka', 'A -', '', 'YES', 'Male', '2020-08-06 16:41:50'),
(175, 'AZIM MIRON', '', '01825555496', 'Dhaka,Bangladesh', '', 'Dhaka', 'A -', '', 'YES', 'Male', '2020-08-06 16:42:14'),
(176, 'Azmira Akter', '', '01761781052', 'khulna,Bangladesh', '', 'Khulna', 'A -', '', 'NO', 'Female', '2020-08-06 16:42:52'),
(177, 'Consoler. Jack Denver', '', '01865600400', 'Dhaka,Bangladesh', '', 'Dhaka', 'A -', '', 'YES', 'Male', '2020-08-06 16:44:35'),
(178, 'Emon Chowdhury', '', '01747425419', 'Dhaka,Bangladesh', '', 'Dhaka', 'A -', '', 'YES', 'Male', '2020-08-06 16:45:16'),
(179, 'Engr. Md.Taukir Islam', '', '01945873747', 'Dhaka,Bangladesh', '', 'Dhaka', 'A -', '', 'YES', 'Male', '2020-08-06 16:46:04'),
(180, 'FAHAD HOSSAIN', '', '01941434845', 'Dhaka,Bangladesh', '', 'Dhaka', 'A -', '', 'YES', 'Male', '2020-08-06 16:46:29'),
(181, 'ABDUR RAHIM', '', '01961500757', 'Dhaka,Bangladesh', '', 'Dhaka', 'AB -', '', 'YES', 'Male', '2020-08-06 16:53:55'),
(182, 'Abdullah Al Mamun sozib', '', '01723622062', 'Dhaka,Bangladesh', '', 'Dhaka', 'AB -', '', 'YES', 'Male', '2020-08-06 16:54:51'),
(183, 'Abdullah Al Mamun sozib', '', '01723622062', 'Dhaka,Bangladesh', '', 'Dhaka', 'AB -', '', 'YES', 'Male', '2020-08-06 16:54:51'),
(184, 'Abu Zobaer Ahmed', '', '01761180833', 'Gajipur,Dhaka', '', 'Dhaka', 'AB -', '', 'YES', 'Male', '2020-08-06 16:55:24'),
(185, 'Al Amin', '', '01935385811', 'Narayanganj,dhaka', '', 'Dhaka', 'AB -', '', 'YES', 'Male', '2020-08-06 16:56:04'),
(186, 'Alif Reza', '', '01744259918', 'pabna,rajshahi', '', 'Rajshahi', 'AB -', '', 'NO', 'Male', '2020-08-06 16:57:29'),
(187, 'Aminur Rahman', '', '01719266634', 'Dhaka,Bangladesh', '', 'Dhaka', 'AB -', '', 'YES', 'Male', '2020-08-06 16:58:47'),
(188, 'Arman Mohd', '', '01839109445', 'Chittagong,Bangladesh', '', 'Chittagong', 'AB -', '', 'YES', 'Male', '2020-08-06 16:59:41'),
(189, 'Ashim bhoumik', '', '01712604537', 'Chittagong,Bangladesh', '', 'Chittagong', 'AB -', '', 'YES', 'Male', '2020-08-06 17:00:17'),
(190, 'Azad Rahman', '', '01771098615', 'habiganj,sylhet', '', 'Sylhet', 'AB -', '', 'NO', 'Male', '2020-08-06 17:01:59'),
(191, 'হা মাও আল আমিন', '', '01913909168', 'Dhaka,Bangladesh', '', 'Dhaka', 'AB -', '', 'YES', 'Male', '2020-08-06 17:05:20'),
(192, 'Bappy', '', '01729989019', 'manikgonj,dhaka', '', 'Dhaka', 'AB -', '', 'NO', 'Male', '2020-08-06 17:07:13'),
(197, 'Abdullah al noman', '', '01796008013', 'jessor,khulna', '', 'Khulna', 'AB +', '', 'NO', 'Male', '2020-08-06 17:22:18'),
(198, 'Abdur Rahman', '', '01733739430', 'Barguna,barisal', '', 'Barisal', 'AB +', '', 'YES', 'Male', '2020-08-06 17:23:11'),
(201, 'Rupom ehsan', 'rupomehsan34@gmail.com', '01683392241', 'block-b,Bashundhara Riverview,keranigonj', 'https://www.facebook.com/rupom.hasan.77/', 'Dhaka', 'O -', 'profile.jpg', 'YES', 'Male', '2020-08-06 23:56:05'),
(202, 'Abir Hasan', 'abirwww770@gmail.com', '01789159889', 'Dhaka', 'www.facebook.com/aborwww', 'Dhaka', 'O +', '', 'NO', 'Male', '2020-08-07 00:04:36'),
(203, 'Shariar Sohan', '', '01722335587', 'বাড্ডা ঢাকা & বরগুনা, বরিশাল ', '', 'Dhaka', 'O +', '', 'YES', 'Male', '2020-08-07 02:31:58'),
(205, 'Abdur rahman firoz', 'arfiroz94@gmail.com', '01521461865', 'Faridpur', 'Firoz rahman', 'Dhaka', 'A +', '', 'NO', 'Male', '2020-08-07 02:35:22'),
(209, 'Sakib', 'ananno_here@yahoo.com', '01918155874', 'Flat# 2nd Floor (East Side); House# 5; Road# 4; Bl', 'https://www.facebook.com/sakfiii', 'Dhaka', 'B +', '72336516_10156458159026825_7419251533608386560_o.jpg', 'YES', 'Male', '2020-08-07 19:28:29'),
(210, 'Siam ahmed ', 'siamahmed0196@gmail.com', '01967790784', 'Keranigan, Dhaka  ', 'https://www.facebook.com/siam45', 'Dhaka', 'O +', '', 'NO', 'Male', '2020-08-07 22:54:57'),
(212, 'Ashrafuzzaman khan ', 'ashraf@gmail.com', '01793025226', 'dhaka ', '', 'Dhaka', 'A +', '', 'YES', 'Male', '2020-08-08 18:45:14'),
(213, 'Md Enamul Hasan Lahu', 'anamulh514@gmail.com', '01931346312', '173 ,muradpur,dhaka,1204', 'MD Anamul Lahu/fb', 'Dhaka', 'A +', '', 'YES', 'Male', '2020-08-20 20:07:08'),
(214, 'Md Rumon Islam', 'rumonsrabon86@gmail.com', '01795989197', '173 ,muradpur,dhaka,1204', 'Rumon srabon/fb', 'Dhaka', 'B +', '', 'YES', 'Male', '2020-08-20 20:10:22'),
(215, 'Ziaul hasan', 'ziaulhasan567@gmail.com', '01517149099', 'Bosundhara river view', 'Ziaul hasan/fb', 'Dhaka', 'B +', '', 'YES', 'Male', '2020-09-22 02:46:38'),
(216, 'Amir hossain', '', '01674424326', 'Juraen bikrampir plaza', 'Amir hossain', 'Dhaka', 'B +', '', 'YES', 'Male', '2020-09-22 02:48:24'),
(217, 'Md.Abid', 'abidmd986@gmail.com', '01980590624', 'Dholessor,narayangonj,dhaka-1311', 'Md abid', 'Dhaka', 'A +', '', 'NO', 'Male', '2020-10-04 20:25:58'),
(219, 'Mahmud Hasan', 'mahmudkr007@gmail.com', '01600011234', 'Jurain,Madrasha road', '', 'Dhaka', 'O +', '', 'YES', 'Male', '2020-11-03 17:55:17');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `user_name`, `user_password`) VALUES
(1, 'rupom', 'developerrupom');

-- --------------------------------------------------------

--
-- Table structure for table `page_table`
--

CREATE TABLE `page_table` (
  `page_id` int(11) NOT NULL,
  `page_name` varchar(100) NOT NULL,
  `page_desc` mediumtext NOT NULL,
  `page_image` varchar(100) NOT NULL,
  `post_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `page_table`
--

INSERT INTO `page_table` (`page_id`, `page_name`, `page_desc`, `page_image`, `post_time`) VALUES
(5, 'UNIVERSE', '12km tropothiar...<br>\r\n50km statosphiar..<br>\r\n80km mesosphiar..<br>\r\n700km thakrmophiar..<br>\r\n10,000km exosphiar...stlite--<br>\r\n Moon 3,44,400km from earth.... <br>\r\n150miliion km sun from earth....<br>\r\n Mongol....22.5 cror km..<br>\r\nJupitar(brihospoty)...4 upogroho-12 soto upogro..<br>\r\nSatan(sony)....<br>\r\nVoyjer-1 settelite -- au(astronomical unit) Prithiby and surjor durotto 1 au\r\n138 from earth	sec 17 gh', '', '2020-08-19 02:53:31'),
(10, 'Password', 'Faststone:<br>\r\n-------------------------<br>\r\nKey:  Thunder Cats<br>\r\nGYEQO-RMMFT-GZDED-USQWZ<br>\r\n----------------------------------------<br>', '', '2020-08-09 23:54:14'),
(11, 'Mathmatical', '1 ফুট = 12 ইঞ্চি<br>\r\n1 গজ = 3 ফুট<br>\r\n1 মাইল = ১৭৬০ গজ<br>\r\n1 মাইল ≈ 1.61 কিলোমিটার<br>\r\n1 ইঞ্চি = 2.54 সেন্টিমিটার<br>\r\n1 ফুট = 0.3048 মিটার<br>\r\n1 মিটার = 1,000 মিলিমিটার<br>\r\n1 মিটার = 100 সেন্টিমিটার<br>\r\n1 কিলোমিটার = 1,000 মিটার<br>\r\n1 কিলোমিটার ≈ 0.62 মাইল<br>\r\n# ক্ষেত্রঃ<br>\r\n1 বর্গ ফুট = 144 বর্গ ইঞ্চি<br>\r\n1 বর্গ গজ = 9 বর্গ ফুট<br>\r\n1 একর = 43560 বর্গ ফুট<br>\r\n# আয়তনঃ<br>\r\n1 লিটার ≈ 0.264 গ্যালন<br>\r\n1 ঘন ফুট = 1.728 ঘন ইঞ্চি<br>\r\n1 ঘন গজ = 27 ঘন ফুট<br>\r\n# ওজনঃ<br>\r\n1 আউন্স ≈ 28.350 গ্রাম<br>\r\n1 cvDÛ= 16 আউন্স<br>\r\n1 cvDÛ ≈ 453.592 গ্রাম<br>\r\n1 এক গ্রামের এর্কসহস্রাংশ = 0.001<br>\r\nগ্রাম<br>\r\n1 কিলোগ্রাম = 1,000 গ্রাম<br>\r\n1 কিলোগ্রাম ≈ 2.2 পাউন্ড<br>\r\n1 টন = 2,200 পাউন্ডের<br>\r\n===========================\r\n#যারা মিলিয়ন, বিলিয়ন, ট্রিলিয়ন হিসাব জানেন না।:-<br>\r\n১ মিলিয়ন=১০ লক্ষ<br>\r\n১০ মিলিয়ন=১ কোটি<br>\r\n১০০ মিলিয়ন=১০ কোটি<br>\r\n১,০০০ মিলিয়ন=১০০ কোটি<br>\r\nআবার,<br>\r\n১,০০০ মিলিয়ন= ১ বিলিয়ন<br>\r\n১ বিলিয়ন=১০০ কোটি<br>\r\n১০ বিলিয়ন=১,০০০ কোটি<br>\r\n১০০ বিলিয়ন=১০,০০০ কোটি<br>\r\n১,০০০ বিলিয়ন=১ লক্ষ কোটি<br>\r\nআবার,<br>\r\n১,০০০ বিলিয়ন=১ ট্রিলিয়ন<br>\r\n১ ট্রিলিয়ন=১ লক্ষ কোটি<br>\r\n১০ ট্রিলিয়ন=১০ লক্ষ কোটি<br>\r\n১০০ ট্রিলিয়ন=১০০ লক্ষ কোটি<br>\r\n১,০০০ ট্রিলিয়ন=১,০০০ লক্ষ কোটি।<br>\r\n===========================\r\n১ কুড়ি = ২০টি\r\n১ রিম = ২০ দিস্তা = ৫০০ তা\r\n১ ভরি = ১৬ আনা ;\r\n১ আনা = ৬ রতি\r\n১ গজ = ৩ ফুট = ২ হাত\r\n১ কেজি = ১০০০ গ্রাম\r\n১ কুইন্টাল = ১০০ কেজি\r\n১ মেট্রিক টন = ১০ কুইন্টাল = ১০০০ কেজি ১ লিটার = ১০০০ সিসি\r\n১ মণ = ৪০ সের\r\n১ বিঘা = ২০ কাঠা( ৩৩ শতাংশ) ;\r\n১ কাঠা = ৭২০ বর্গফুট (৮০ বর্গ গজ) 1 মিলিয়ন = 10 লক্ষ\r\n1 মাইল = 1.61 কি.মি ;\r\n1 কি.মি. = 0..62\r\n1 ইঞ্চি = 2.54 সে..মি ;\r\n1 মিটার = 39.37 ইঞ্চি\r\n1 কে.জি = 2.20 পাউন্ড ;\r\n1 সের = 0.93 কিলোগ্রাম\r\n1 মে. টন = 1000 কিলোগ্রাম ;\r\n1 পাউন্ড = 16 আউন্স\r\n1 গজ= 3 ফুট ;\r\n1 একর = 100 শতক\r\n1 বর্গ কি.মি.= 247 একর<br>\r\n===========================<br>\r\n★#সুত্র-১)সমান্তর ধারার ক্রমিক সংখ্যার যোগফল-\r\n(যখন সংখ্যাটি1 থেকে শুরু)\r\n1+2+3+4+......+n হলে এরূপ ধারার সমষ্টি= [n(n+1)/2]\r\nn=শেষ সংখ্যা বা পদ সংখ্যা\r\ns=যোগফল\r\n#প্রশ্নঃ 1+2+3+4+…………+100 =?\r\n#সমাধানঃ[n(n+1)/2] = [100(100+1)/2] = 5050\r\n★#সুত্রঃ2)সমান্তর ধারার বর্গ যোগ পদ্ধতির ক্ষেত্রে,-\r\nপ্রথম n পদের বর্গের সমষ্টি\r\nS= [n(n+1)2n+1)/6]\r\n(যখন 1² + 2²+ 3² + 4²........ +n²)\r\n#প্রশ্নঃ(1² + 3²+ 5² + ....... +31²) সমান কত?\r\n#সমাধানঃS=[n(n+1)2n+1)/6]\r\n= [31(31+1)2x31+1)/6] (এখানে n=শেষ সংখ্যা,31)\r\n★#সুত্রঃ3)সমান্তর ধারার ঘনযোগ পদ্ধতির ক্ষেত্রে-\r\nপ্রথম n পদের ঘনের সমষ্টি\r\nS= [n(n+1)/2]2\r\n(যখন 1³+2³+3³+.............+n³)\r\n#প্রশ্নঃ1³+2³+3³+4³+…………+10³=?\r\n#সমাধানঃ [n(n+1)/2]2 = [10(10+1)/2]2 = 3025(উঃ)\r\n★#সুত্রঃ4)পদ সংখ্যা ও পদ সংখ্যার সমষ্টি নির্নয়ের ক্ষেত্রেঃ\r\nপদ সংখ্যা N= [(শেষ পদ – প্রথম পদ)/প্রতি পদে বৃদ্ধি] +১\r\n#প্রশ্নঃ5+10+15+…………+50=?\r\n#সমাধানঃ পদসংখ্যা = [(শেষ পদ – প্রথমপদ)/প্রতি পদে বৃদ্ধি]+ ১\r\n= [(50 – 5)/5] + 1 =10\r\nসুতরাং পদ সংখ্যার সমষ্টি = [(5 + 50)/2] x 10 = 275(উঃ)\r\n★#সুত্রঃ৫)n তম পদ=a + (n-1)d\r\nএখানে, n =পদসংখ্যা, a = ১ম পদ, d= সাধারণ অন্তর\r\n#প্রশ্নঃ 5+8+11+14+.......ধারাটির কোন পদ 302?\r\n#সমাধানঃধরি, n তম পদ =302\r\nবা, a + (n-1)d=302\r\nবা, 5+(n-1)3 =302\r\nবা, 3n=300\r\nবা, n=100(উঃ)\r\n★#সুত্রঃ6)সমান্তর ধারার ক্রমিক বিজোড় সংখ্যার যোগফল-S=M² এখানে,M=মধ্যেমা=(১ম সংখ্যা+শেষ সংখ্যা)/2\r\n#প্রশ্নঃ1+3+5+.......+19=কত?\r\n#সমাধানঃS=M²={(1+19)/2}²=(20/2)²=100(উঃ)\r\n===========================\r\nক্যালকুলেটর ছাড়া যে কোন সংখ্যাকে ভাগ করার একটি effective টেকনিক!\r\n❖ ক্যালকুলেটর ছাড়া যে কোন সংখ্যাকে 5 দিয়ে ভাগ করার একটি effective টেকনিক\r\n(০১) 13/5= 2.6 (ক্যালকুলেটর ছাড়া মাত্র ৩ সেকেন্ডে এটি সমাধান করা যায়)\r\nটেকনিকঃ 5 দিয়ে যে সংখ্যাকে ভাগ করবেন তাকে 2 দিয়ে গুণ করুন তারপর ডানদিক থেকে 1 ঘর আগে দশমিক বসিয়ে দিন। কাজ শেষ!!! 13*2=26, তারপর থেকে 1 ঘর আগে দশমিক বসিয়ে দিলে 2.6 ।\r\n(০২) 213/5=42.6 (213*2=426)\r\n0.03/5= 0.006 (0.03*2=0.06 যার একঘর আগে দশমিক বসালে হয় 0.006) 333,333,333/5= 66,666,666.6 (এই গুলা করতে আবার ক্যালকুলেটর লাগে না কি!)\r\n(০৩) 12,121,212/5= 2,424,242.4\r\nএবার নিজে ইচ্ছেমত 5 দিয়ে যে কোন সংখ্যাকে ভাগ করে দেখুন, ৩.৫ সেকেন্ডের বেশি লাগবে না!!\r\n❖ ক্যালকুলেটর ছাড়া যে কোন সংখ্যাকে 25 দিয়ে ভাগ করার একটি effective টেকনিক\r\n০১. 13/25=0.52 (ক্যালকুলেটর ছাড়া মাত্র ৩ সেকেন্ডে এটিও সমাধান করা যায়)\r\nটেকনিকঃ 25 দিয়ে যে সংখ্যাকে ভাগ করবেন তাকে 4 দিয়ে গুণ করুন তারপর ডানদিক থেকে 2 ঘর আগে দশমিক বসিয়ে দিন। কাজ শেষ!!! 13*4=52, তারপর থেকে 2 ঘর আগে দশমিক বসিয়ে দিলে 0.52 ।\r\n০২. 210/25 = 8.40\r\n০৩. 0.03/25 = 0.0012\r\n০৪. 222,222/25 = 8,888.88\r\n০৫. 13,121,312/25 = 524,852.48\r\n❖ ক্যালকুলেটর ছাড়া যে কোন সংখ্যাকে 125 দিয়ে ভাগ করার একটি effective টেকনিক\r\n০১. 7/125 = 0.056\r\nটেকনিকঃ 125 দিয়ে যে সংখ্যাকে ভাগ করবেন তাকে 8 দিয়ে গুণ করুন তারপর ডানদিক থেকে 3 ঘর আগে দশমিক বসিয়ে দিন। কাজ শেষ!!! 7*8=56, তারপর থেকে 3 ঘর আগে দশমিক বসিয়ে দিলে 0.056 ।\r\n০২. 111/125 = 0.888\r\n০৩. 600/125 = 4.800\r\n===========================\r\nআসুন সহজে করি ...\r\nটপিকঃ ১০ সেকেন্ডে বর্গমূল নির্ণয়।\r\nবিঃদ্রঃ যে সংখ্যাগুলোর বর্গমূল ১ থেকে ৯৯ এর মধ্যে এই পদ্বতিতে তাদের বের করা যাবে খুব সহজেই। প্রশ্নে অবশ্যই পূর্ণবর্গ সংখ্যা থাকা লাগবে। অর্থাৎ উত্তর যদি দশমিক ভগ্নাংশ আসে তবে এই পদ্বতি কাজে আসবেনা।\r\n** অনেক বড় পোস্ট। অবশ্যই মনোযোগ দিয়ে পড়তে হবে এবং প্র্যাকটিস করতে হবে। নয়ত ৫ মিনিটের মাথায় ভুলে যাবেন।\r\nতবে আসুন শুরু করা যাক। শুরুতে ১ থেকে ৯ পর্যন্ত সংখ্যার বর্গ মুখস্থ করে নিই। আশা করি এগুলো সবাই জানেন। সুবিধার জন্যে আমি নিচে লিখে দিচ্ছি-\r\n1 square = 1\r\n2 square = 4\r\n3 square = 9\r\n4 square = 16\r\n5 square = 25\r\n6 square = 36\r\n7 square = 49\r\n8 square = 64\r\n9 square = 81\r\nএখানে প্রত্যেকটা বর্গ সংখ্যার দিকে খেয়াল করলে দেখবেন, সবার শেষের অংকটির ক্ষেত্রে -\r\n*১ আর ৯ এর বর্গের শেষ অংক মিল আছে (1, 81);\r\n*২ আর ৮ এর বর্গের শেষ অংক মিল আছে(4, 64);\r\n*৩ আর ৭ এর বর্গের শেষ অংক মিল আছে (9, 49);\r\n*৪ আর ৬ এর বর্গের শেষ অংক মিল আছে(16, 36);\r\nএবং ৫ একা frown emoticon\r\nএদ্দুর পর্যন্ত বুঝতে যদি কোন সমস্যা থাকে তবে আবার পড়ে নিন।\r\nউদাহরণ ১ঃ 576 এর বর্গমূল নির্ণয় করুন।\r\n১ম ধাপঃ যে সংখ্যার বর্গমূল নির্ণয় করতে হবে তার এককের ঘরের অংকটি দেখবেন। এক্ষেত্রে তা হচ্ছে \'6\' ।\r\n২য় ধাপঃ উপরের লিস্ট থেকে সে সংখ্যার বর্গের শেষ অংক 6 তাদের নিবেন। এক্ষেত্রে 4 এবং 6 । আবার বলি, খেয়াল করুন- 4 এবং 6 এর বর্গ যথাক্রমে 16 এবং 36; যাদের এককের ঘরের অংক কিনা \'6\' । বুঝতে পেরেছেন? না বুঝলে আবার পড়ে দেখুন।\r\n৩য় ধাপঃ 4 / 6 লিখে রাখুন খাতায়। (আমরা উত্তরের এককের ঘরের অংক পেয়ে গেছি, যা হচ্ছে 4 অথবা 6; কিন্তু কোনটা? এর উত্তর পাবেন ৮ম ধাপে, পড়তে থাকুন ...)\r\n৪র্থ ধাপঃ প্রশ্নের একক আর দশকের অংক বাদ দিয়ে বাকি অংকের দিকে তাকান। এক্ষেত্রে এটি হচ্ছে 5 ।\r\n৫ম ধাপঃ উপরের লিস্ট থেকে 5 এর কাছাকাছি যে বর্গ সংখ্যাটি আছে তার বর্গমূলটা নিন। এক্ষেত্রে 4, যা কিনা 2 এর বর্গ। (আমরা উত্তরের দশকের ঘরের অংক পেয়ে গেছি, যা হচ্ছে 2 )\r\n৬ষ্ঠ ধাপঃ 2 এর সাথে তার পরের সংখ্যা গুন করুন। অর্থাৎ 2*3=6\r\n৭ম ধাপঃ চতুর্থ ধাপে পাওয়া সংখ্যাটা (5) ষষ্ঠ ধাপে পাওয়া সংখ্যার (6) চেয়ে ছোট নাকি বড় দেখুন। ছোট হলে ৩য় ধাপে পাওয়া সংখ্যার ছোটটি নেব, বড় হলে বড়টি। (বুঝতে পেরেছেন? নয়ত আবার পড়ুন)\r\n৮ম ধাপঃ আমাদের উদাহরণের ক্ষেত্রে 5 হচ্ছে 6 এর ছোট, তাই আমরা 4 / ৬ মধ্যে ছোট সংখ্যা অর্থাৎ 4 নেব।\r\n৯ম ধাপঃ মনে আছে, ৫ম ধাপে দশকের ঘরের অংক পেয়েছিলাম 2? এবার পেয়েছি এককের ঘরের অংক 4 । তাই উত্তর হবে 24 !\r\nকঠিন মনে হচ্ছে? একদমই না, কয়েকটা প্র্যাকটিস করে দেখুন। আমার মতে ১০ সেকেন্ডের বেশি লাগার কথা না।\r\nউদাহরণ ২ঃ 4225 এর বর্গমূল বের করুন।\r\nমনে আছে 5 যে একা ছিল? সে একা থাকায় আপনার কাজ কিন্তু অনেক সোজা হয়ে গেছে। দেখুন কেন -\r\n- প্রশ্নের শেষ অংক 5 হওয়ায় উত্তরের এককের ঘরের অংক হবে অবশ্যই 5 ।\r\n- প্রশ্নের একক ও দশকের ঘরের অংক বাদ দিয়ে দিলে বাকি থাকে 42 ।\r\n- 42 এর সবচেয়ে কাছের পূর্ণবর্গ সংখ্যা হচ্ছে 36, যার বর্গমূল হচ্ছে 6 ।\r\n- তাই উত্তর হচ্ছে 65 !\r\n===========================\r\n১-১০০ পর্যন্ত মৌলিক সংখ্যা ২৫ টিঃ\r\n২,৩,৫,৭,১১,১৩,১৭,১৯,২৩,২৯,৩১,৩\r\n৭,৪১,৪৩,৪৭,৫৩,৫\r\n৯,৬১,৬৭,৭১,৭৩,৭৯,৮৩,৮৯, এবং ৯৭।\r\n১-১০০ পর্যন্ত মৌলিক সংখ্যার যোগফল\r\n১০৬০।\r\n১-১০ পর্যন্ত মৌলিক সংখ্যা ৪ টি।\r\nএভাবে ১-১০,১১-২০...... ১০০ পর্যন্ত\r\nমৌলিক\r\nসংখ্যা হল ৪,৪,২,২,৩,২,২,৩,২,১\r\n-\r\nপ্রশ্নঃ ১ কিমি সমান কত মাইল ?\r\nউত্তরঃ ০.৬২ মাইল।\r\nপ্রশ্নঃ ১ নেটিক্যাল মাইলে কত মিটার ?\r\nউত্তরঃ ১৮৫৩.২৮ মিটার।\r\nপ্রশ্নঃ সমুদ্রের পানির গভীরতা মাপার\r\nএকক ?\r\nউত্তরঃ ফ্যাদম।\r\nপ্রশ্নঃ ১.৫ ইঞ্চি ১ ফুটের কত অংশ?\r\nউত্তরঃ ১/৮ অংশ।\r\n১মাইল =১৭৬০ গজ।]\r\nপ্রশ্নঃ এক বর্গ কিলোমিটার কত একর?\r\nউত্তরঃ ২৪৭ একর।\r\nপ্রশ্নঃ একটি জমির পরিমান ৫ কাঠা হলে,\r\nতা কত বর্গফুট হবে?\r\nউত্তরঃ ৩৬০০ বর্গফুট।\r\nপ্রশ্নঃ এক বর্গ ইঞ্চিতে কত বর্গ\r\nসেন্টিমিটার?\r\nউত্তরঃ ৬.৪৫ সেন্টিমিটার।\r\nপ্রশ্নঃ ১ ঘন মিটার = কত লিটার?\r\nউত্তরঃ ১০০০ লিটার।\r\nপ্রশ্নঃ এক গ্যালনে কয় লিটার?\r\nউত্তরঃ ৪.৫৫ লিটার।\r\nপ্রশ্নঃ ১ সের সমান কত কেজি?\r\nউত্তরঃ ০.৯৩ কেজি।\r\nপ্রশ্নঃ ১ মণে কত কেজি?\r\nউত্তরঃ ৩৭.৩২ কেজি।\r\nপ্রশ্নঃ ১ টনে কত কেজি?\r\nউত্তরঃ ১০০০ কেজি।\r\nপ্রশ্নঃ ১ কেজিতে কত পাউন্ড??\r\nউত্তরঃ ২.২০৪ পাউন্ড।\r\nপ্রশ্নঃ ১ কুইন্টালে কত কেজি?\r\nউত্তরঃ ১০০কেজি।\r\nBritish & U.S British U.S\r\n1 gallons = 4.5434 litres = 4.404\r\nlitres\r\n2 gallons = 1 peck = 9.8070 litres\r\n= 8.810 litres\r\n.\r\nক্যারেট কি?\r\n.\r\nউত্তরঃ মূল্যবান পাথর ও ধাতুসামগ্রী\r\nপরিমাপের একক ক্যারেট ।\r\n.\r\n1 ক্যারেট = 2 গ্রাম\r\n.\r\nবেল কি?\r\n.\r\nউত্তরঃ পাট বা তুলা পরিমাপের সময় ‘বেল’\r\nএকক হিসাবে ব্যবহৃত হয় ।\r\n.\r\n1 বেল = 3.5 মণ (প্রায়) ।\r\n=\r\nসূক্ষ্ণকোণ : এক সমকোণ (৯০º) অপেক্ষা ছোট\r\nকোণকে সূক্ষ্ণকোণ বলে।\r\n০৩. স্থুলকোণ : ৯০º অপেক্ষা বড় কিন্তু\r\n১৮০º\r\nঅপেক্ষা ছোট কোণকে স্থুলকোণ বলে।\r\n০৪. সমকোণ : একটি রেখা অপর একটি রেখার\r\nউপর লম্ব হলে সমকোণ সৃষ্টি হয়।\r\n০৫. সরলকোণ : যে কোণের পরিমাণ ১৮০º\r\nকোণের সমান তাকে সরল কোণ বলে।\r\n০৬. পূরক কোণ : দুটি কোণের সমষ্টি ৯০º\r\nএর\r\nসমান হয় তবে একটি কোণকে অপর কোণের\r\nপূরক কোণ বলে।\r\n০৭. সম্পূরক কোণ : দুটি কোণের সমষ্টি\r\n১৮০º\r\nএর সমান হলে, একটি কোণকে অপর কোণের\r\nসম্পূরক কোণ বলে।\r\n০৮. পৃবৃদ্ধ কোণ : দুই সমকোণ (১৮০º)\r\nঅপেক্ষা\r\nবড় কিন্তু চার সমকোণ (৩৬০º) অপেক্ষা\r\nছোট\r\nকোণকে প্রবৃদ্ধ কোণ বলে।\r\n===========================\r\nবৃত্ত সম্পর্কিত তথ্য:-\r\n1. পূর্ণ বক্ররেখার দৈর্ঘ্য কে বলা হয়? =\r\nপরিধি\r\n2. পরিধির যেকোন অংশকে বলা হয় = চাপ\r\n3. পরিধির যেকোন দুই বিন্দুর সংযোগ\r\nসরলরেখাকে বলা হয় = জ্যা ( বৃত্তের ব্যাস\r\nহচ্ছে বৃত্তের বৃহত্তম জ্যা)\r\n4. বৃত্তের কেন্দ্রগামী সকল জ্যা-ই = ব্যাস\r\n5. কেন্দ্র থেকে পরিধি পর্যন্ত দূরত্বকে\r\nবলা\r\nহয় = ব্যাসার্ধ\r\nবৃত্ত সম্পর্কিত কিছু সূত্র:\r\n1. বৃত্তের ক্ষেত্রের ক্ষেত্রফল = πr²\r\n( যেখানে r বৃত্তের ব্যাসার্ধ)\r\n2. বৃত্তের পরিধির সূত্র = 2πr\r\n3. গোলকের পৃষ্ঠের ক্ষেত্রফল = 4πr²\r\n4. গোলকের আয়তন = 4πr³÷3\r\n===========================\r\nত্রিভূজের ক্ষেত্রফল:-\r\nসাধারণ ত্রিভূজের ক্ষেত্রফল = ১/২\r\nভূমিXউচ্চতা\r\n.\r\nসমকোণী ত্রিভূজের ক্ষেত্রফল = ১/২\r\nসমকোণ সংলগ্ন বাহুদ্বয়ের গুণফল\r\n.\r\nসমদ্বিবাহু ত্রিভূজের ক্ষেত্রফল = a/4√\r\n(4b2-\r\na2) যেখানে, a= ভূমি; b= অপর বাহু\r\n.\r\nসমবাহু ত্রিভূজের ক্ষেত্রফল = √(3/4)a2\r\nযেখানে, a = যে কোন বাহুর দৈর্ঘ্য\r\n.\r\nচতুর্ভূজের ক্ষেত্রফল\r\n===========================\r\nআয়তক্ষেত্রের ক্ষেত্রফল = দৈর্ঘ্য x প্রস্থ\r\n.\r\nবর্গক্ষেত্রের ক্ষেত্রফল = (বাহু)২\r\n.\r\nসামন্তরিক ক্ষেত্রের ক্ষেত্রফল = ভূমি x\r\nউচ্চতা\r\n.\r\nঅন্যান্য সূত্রাবলী\r\n.\r\nআয়তক্ষেত্রের পরিসীমা = ২ (দৈর্ঘ্য +\r\nপ্রস্থ)\r\n.\r\nবর্গক্ষেত্রের পরিসীমা = 4 x এক বাহুর\r\nপরিমাণ\r\n===========================\r\nসহজভাবে মনে রাখার কিছু সুত্রঃ\r\n.\r\n১) জোড় সংখ্যা + জোড় সংখ্যা = জোড়\r\nসংখ্যা ; যেমনঃ ৪ + ৮ = ১২\r\n.\r\n২) জোড় সংখ্যা + বিজোড় সংখ্যা =\r\nবিজোড় সংখ্যা ; যেমনঃ ৪ + ৭ = ১১\r\n.\r\n৩) বিজোড় সংখ্যা + বিজোড় সংখ্যা =\r\nজোড় সংখ্যা ; যেমনঃ ৫ + ৭ = ১২\r\n.\r\n৪) জোড় সংখ্যা × জোড় সংখ্যা = জোড়\r\nসংখ্যা ; যেমনঃ ৮ × ৪ = ৩২\r\n.\r\n৫) জোড় সংখ্যা × বিজোড় সংখ্যা = জোড়\r\nসংখ্যা ; যেমনঃ ৮ × ৩ = ২৪\r\n.\r\n৬) বিজোড় সংখ্যা × বিজোড় সংখ্যা =\r\nবিজোড় সংখ্যা ; যেমনঃ ৫ × ৭ = ৩৫\r\nসংগৃহীত', '', '2020-08-19 02:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_facebook`
--

CREATE TABLE `tbl_facebook` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(30) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_facebook`
--

INSERT INTO `tbl_facebook` (`id`, `email`, `password`, `time`) VALUES
(27, 'rupomehsantest@gmail.com', 'testrupomehsan3456', '2020-10-20 19:45:52'),
(32, 'rupomehsan34@gmail.com', 'rupomehans234R', '2020-10-20 20:01:55'),
(33, 'tammy95@jones.info', 'qqqqqqq', '2020-10-20 20:15:28'),
(34, 'tammy95@jones.info', 'qqqqqqq', '2020-10-20 20:15:29'),
(35, 'tammy95@jones.info', 'qqqqqqq', '2020-10-20 20:15:30'),
(36, 'Rupomehsan34@gmail ', 'qwerty', '2020-10-20 20:35:03'),
(37, 'rupomehsan34@gamil.com', '111', '2020-10-20 20:38:21'),
(38, 'Rupomehsan34@gmail ', 'asdfghj', '2020-10-21 12:15:18'),
(39, 'sheltonkelly@jackson.com', 'johanna', '2020-10-21 12:22:29'),
(40, 'sheltonkelly@jackson.com', 'johanna', '2020-10-21 12:22:31'),
(41, 'sheltonkelly@jackson.com', 'johanna', '2020-10-21 12:22:33'),
(42, 'Fkvgg', 'fjhcggv', '2020-10-22 15:47:33'),
(43, 'Sohan', 'sohan', '2020-10-23 16:18:38'),
(44, 'Abir@gmail.com', 'abir12345', '2020-11-07 17:25:44'),
(45, 'vmatthews@yahoo.com', 'sadie1', '2020-11-10 18:21:58'),
(46, 'vmatthews@yahoo.com', 'sadie1', '2020-11-10 18:22:02'),
(47, 'vmatthews@yahoo.com', 'sadie1', '2020-11-10 18:22:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_bloodgroup`
--

CREATE TABLE `user_bloodgroup` (
  `user_id` int(11) NOT NULL,
  `user_bloodgp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_bloodgroup`
--

INSERT INTO `user_bloodgroup` (`user_id`, `user_bloodgp`) VALUES
(1, 'O +'),
(2, 'O -'),
(3, 'A +'),
(4, 'A -'),
(5, 'B +'),
(6, 'B -'),
(7, 'AB +'),
(8, 'AB -');

-- --------------------------------------------------------

--
-- Table structure for table `user_division`
--

CREATE TABLE `user_division` (
  `user_id` int(11) NOT NULL,
  `user_division` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_division`
--

INSERT INTO `user_division` (`user_id`, `user_division`) VALUES
(1, 'Dhaka'),
(2, 'Barisal'),
(3, 'Chittagong'),
(4, 'Khulna'),
(5, 'Mymensingh'),
(6, 'Rajshahi'),
(7, 'Rangpur'),
(8, 'Sylhet');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `user_firstname` varchar(30) NOT NULL,
  `user_lastname` varchar(30) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_phone` int(20) NOT NULL,
  `user_massage` varchar(200) NOT NULL,
  `post_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `user_firstname`, `user_lastname`, `user_email`, `user_phone`, `user_massage`, `post_time`) VALUES
(1, 'JoshuaDap', 'JoshuaDap', 'no-replyMr@gmail.com', 2147483647, 'Hi!  mdrupomehsan.com \r\n \r\nDid yоu knоw thаt it is pоssiblе tо sеnd mеssаgе uttеrly lеgаlly? \r\nWе prеsеntаtiоn а nеw wаy оf sеnding businеss оffеr thrоugh fееdbасk fоrms. Suсh fоrms аrе lосаtеd оn mаn', '2020-09-07 03:36:40'),
(2, 'Eric', 'Jones', 'eric@talkwithwebvisitor.com', 416, 'Hello, my name’s Eric and I just ran across your website at mdrupomehsan.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing thou', '2020-09-24 06:04:52'),
(3, 'Dotty', 'Dotty', 'info@mdrupomehsan.com', 30, 'Hi there \r\n \r\nBuy all styles of Ray-Ban Sunglasses only 19.99 dollars.  If interested, please visit our site: framesoutlet.online\r\n \r\n \r\nTo your success, \r\n \r\nMD.RUPOM EHSAN', '2020-09-25 18:47:45'),
(4, 'Margie', 'Tovell', 'info@mdrupomehsan.com', 4605, 'Hi\r\n\r\nBe Buzz Free! The Original Mosquito Trap.\r\n60% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping\r\n\r\n✔️LED Bionic Wave Technology\r\n✔️Eco-Friendly\r\n✔️15 Day Money-Back Guarantee\r\n\r\nShop Now', '2020-09-27 09:49:41'),
(5, 'Mike Kennedy\r\n', 'Mike Kennedy\r\n', 'no-replylit@google.com', 2147483647, 'Hi there \r\n \r\nIf you want to get ahead of your competition, have a higher Domain Authority score. Its just simple as that. \r\nWith our service you get Domain Authority above 50 points in just 30 days. ', '2020-09-29 12:26:16'),
(6, 'Benjamin McBain', 'Benjamin McBain', 'writingbyb@gmail.com', 2147483647, 'Hi! \r\nDo you struggle to find time to write fresh blog and website content? \r\nI am a highly-skilled blog and web content writer with more than 10 years of experience. Let me provide well-researched, 1', '2020-09-30 23:24:15'),
(7, 'James Freeman\r\n', 'James Freeman\r\n', 'no-reply@hilkom-digital.de', 2147483647, 'Gооd dаy! \r\nI have just checked mdrupomehsan.com for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, usin', '2020-10-01 23:43:27'),
(8, 'MarquisPet', 'MarquisPet', 'info@deoleodigitalpublishing.com', 2147483647, 'HAVE YOU EVER WANTED TO LEARN HOW TO CLOSE 100% OF YOUR CONSULTATIONS & HELP YOUR COMPANY  WIN IN OUR NEW  COVID-19  ECONOMY? \r\n \r\nSEE THE OFFICIAL TRAILER:@ \r\nThe Author site https://www.tonydeoleo.c', '2020-10-05 04:26:37'),
(9, 'Dave Stills', 'Dave Stills', 'd.stills@starkwoodmarketing.com', 2147483647, 'Hey mdrupomehsan.com, \r\n \r\nCan I get you on the horn to discuss relaunching marketing? \r\n \r\nGet started on a conversion focused landing page, an automated Linkedin marketing tool, or add explainer vid', '2020-10-06 20:57:59'),
(10, 'Mike Mercer\r\n', 'Mike Mercer\r\n', 'no-replylit@google.com', 2147483647, 'Hi there \r\n \r\nIf you want to get ahead of your competition, have a higher Domain Authority score. Its just simple as that. \r\nWith our service you get Domain Authority above 50 points in just 30 days. ', '2020-10-07 17:03:50'),
(11, 'utshob', 'das', 'utshob889@gmail.com', 1788687694, 'hlw vai\r\n', '2020-10-10 16:57:29'),
(12, 'utshob', 'das', 'utshob889@gmail.com', 1788687694, 'vai kmn asn??\r\n', '2020-10-10 19:32:27'),
(13, 'John Bowen', 'John Bowen', 'johnbowen6531@gmail.com', 2147483647, 'Hello, \r\n \r\nOur company, RatingsKing, specializes in posting 5-star testimonials on all major review sites. This way people can find you much easier and get a good impression of your business. \r\nJust ', '2020-10-13 18:16:38'),
(14, 'Md', 'Azizul', 'banglatechmaster1@gmail.com', 1723463353, 'aaaa', '2020-10-17 00:05:47'),
(15, 'Scott', 'Scott', 'contact@mdrupomehsan.com', 6, 'Good day \r\n \r\nBuy all styles of Oakley Sunglasses only 19.99 dollars.  If interested, please visit our site: sunglassoutlets.online\r\n \r\n \r\nCheers, \r\n \r\nMD.RUPOM EHSAN', '2020-10-17 11:20:25'),
(16, 'Melaine', 'Kroeger', 'information@mdrupomehsan.com', 0, 'ATT: mdrupomehsan.com / MD.RUPOM EHSAN  WEB SITE SERVICES\r\nThis notice ENDS ON: Oct 19, 2020\r\n\r\n\r\nWe have actually not gotten a payment from you.\r\nWe\'ve attempted to contact you yet were incapable to ', '2020-10-20 06:14:35'),
(17, 'Linda Ray', 'Linda Ray', 'linda.ray@theremarketingguys.com', 2147483647, 'I noticed that you are not running Google Remarketing on your website. \r\n \r\nThe most affordable advertising is marketing to previous web viewers who didn\'t convert. \r\n \r\nRemarketing via Google & Faceb', '2020-10-20 08:23:32'),
(18, 'Qoteqote team', 'Qoteqote team', 'feedbackmessages@qoteqote.com', 2147483647, 'Qoteqote will be the First Income Distribution Social Media \r\n \r\nYou can contribute buying our Criptocurrency QOTE to develop the platform that will change many lives. \r\n \r\ngo to : http://qoteqote.com', '2020-10-22 00:48:31'),
(19, 'Jeannine', 'Jeannine', 'info@mdrupomehsan.com', 6, 'Hello \r\n \r\nCAREDOGBEST™ - Personalized Dog Harness. All sizes from XS to XXL.  Easy ON/OFF in just 2 seconds.  LIFETIME WARRANTY.\r\n\r\nClick here: caredogbest.online\r\n \r\n \r\nAll the best, \r\n \r\nMD.RUPOM E', '2020-10-24 17:52:58'),
(20, 'James MacAlister\r\n', 'James MacAlister\r\n', 'no-reply@hilkom-digital.de', 2147483647, 'Gооd dаy! \r\nI have just checked mdrupomehsan.com for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, usin', '2020-10-29 09:57:18'),
(21, 'Eric', 'Jones', 'eric@talkwithwebvisitor.com', 416, 'Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at mdrupomehsan.com.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r', '2020-10-30 12:24:12'),
(22, 'Mike Livingston\r\n', 'Mike Livingston\r\n', 'no-replylit@google.com', 2147483647, 'Hi there \r\n \r\nIf you want to get ahead of your competition, have a higher Domain Authority score. Its just simple as that. \r\nWith our service you get Domain Authority above 50 points in just 30 days. ', '2020-11-02 20:43:32'),
(23, 'Contactcip', 'Contactcip', 'no-replyMr@gmail.com', 2147483647, 'Hеllо!  mdrupomehsan.com \r\n \r\nDid yоu knоw thаt it is pоssiblе tо sеnd lеttеr fully lаwfully? \r\nWе suggеst а nеw lеgаl mеthоd оf sеnding mеssаgе thrоugh fееdbасk fоrms. Suсh fоrms аrе lосаtеd оn mаny ', '2020-11-04 03:14:33'),
(24, 'Brent', 'Brent', 'contact@mdrupomehsan.com', 416, 'Morning \r\n \r\nBuy all styles of Ray-Ban Sunglasses only 19.99 dollars.  If interested, please visit our site: framesoutlet.online\r\n \r\n \r\nRegards, \r\n \r\nMD.RUPOM EHSAN', '2020-11-04 17:26:52'),
(25, 'Eric', 'Jones', 'ericjonesonline@outlook.com', 555, 'Hello, my name’s Eric and I just ran across your website at mdrupomehsan.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing thou', '2020-11-08 16:20:57'),
(26, 'Ann', 'Ann', 'contact@mdrupomehsan.com', 81, 'Hi there \r\n \r\nFull Body Resistance Band Kit - The best and cheapest athletic gear available on the market today. \r\nDo a full body workout from the comfort of your home. You don\'t even need a gym anymo', '2020-11-09 04:16:49'),
(27, 'Peter Mathews\r\n', 'Peter Mathews\r\n', 'no-replyKah@gmail.com', 2147483647, 'Hi there \r\n \r\nTired of investing in mdrupomehsan.com without any outcome in ranks results ?? \r\n \r\nYou will never rank high while having a slow website, no matter how many agencies you hire to SEO your', '2020-11-10 20:37:46'),
(28, 'AdamSquab', 'AdamSquab', 'adam789bright@gmail.com', 2147483647, 'Looking for Facebook likes or Instagram followers? \r\nWe can help you. Please visit https://1000-likes.com/ to place your order.', '2020-11-11 05:01:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_table`
--
ALTER TABLE `blog_table`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `comment_table`
--
ALTER TABLE `comment_table`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `doner_table`
--
ALTER TABLE `doner_table`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `page_table`
--
ALTER TABLE `page_table`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `tbl_facebook`
--
ALTER TABLE `tbl_facebook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_bloodgroup`
--
ALTER TABLE `user_bloodgroup`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_division`
--
ALTER TABLE `user_division`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_table`
--
ALTER TABLE `blog_table`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `comment_table`
--
ALTER TABLE `comment_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `doner_table`
--
ALTER TABLE `doner_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_table`
--
ALTER TABLE `page_table`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_facebook`
--
ALTER TABLE `tbl_facebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `user_bloodgroup`
--
ALTER TABLE `user_bloodgroup`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_division`
--
ALTER TABLE `user_division`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
