-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 20, 2020 at 08:59 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `avatar`
--

CREATE TABLE `avatar` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `avatar`
--

INSERT INTO `avatar` (`id`, `name`) VALUES
(1, 'avatar-1.png'),
(2, 'avatar-2.png'),
(3, 'avatar-3.jpg'),
(4, 'avatar-4.png'),
(5, 'avatar-5.png'),
(6, 'avatar-6.png');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(234) NOT NULL,
  `post` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `post`) VALUES
(2, 'comics', -1),
(3, 'Running', -1),
(4, 'coding', -1),
(5, 'programming', -2),
(6, 'gaming', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `day` varchar(134) DEFAULT NULL,
  `month` varchar(145) DEFAULT NULL,
  `year` varchar(145) DEFAULT NULL,
  `time` varchar(124) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `image` varchar(156) DEFAULT NULL,
  `name` varchar(245) DEFAULT NULL,
  `mail` varchar(145) DEFAULT NULL,
  `website` varchar(145) DEFAULT NULL,
  `status` varchar(89) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `rep_id` int(11) NOT NULL,
  `replies` int(11) NOT NULL,
  `tim` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `day`, `month`, `year`, `time`, `comment`, `image`, `name`, `mail`, `website`, `status`, `post_id`, `rep_id`, `replies`, `tim`) VALUES
(1, '12', 'jul', '2020', '3:34 pm', 'hello iam aman', NULL, 'Aman Agarwal', 'amanaggarwal925@gmail.com', 'hello peoples', 'approved', 3, 0, 12, 0),
(3, '3', 'aug', '2020', '5:69 pm', 'yeah it\'s good', NULL, 'Akshay', 'amanaggarwal925@gmail.com', 'hello.com', 'approved', 5, 0, 3, 0),
(4, '06', 'Jul', '2020', '06:30:31 PM', 'good stuff here', '21', 'aman', NULL, 'user', 'approved', 7, 0, 4, 0),
(7, '06', 'Jul', '2020', '06:36:12 PM', 'new', 'Screenshot (15).png', 'aman', 'amanaggarwal925@gmail.com', 'user', 'approved', 3, 0, 0, 0),
(13, '10', 'Jul', '2020', '4:51:36 PM', 'aman', 'Screenshot (15).png', 'Aman Agarwal', 'amanaggarwal925@gmail.com', 'user', 'approved', 3, 0, 1, 0),
(14, '10', 'Jul', '2020', '11:26:33 PM', 'hello you just posted a cool stuff its really amazing', 'avatar-1.png', 'Aman Agarwal', 'amanaggarwal925@gmail.com', 'abcd.com', 'pending', 7, 0, 0, 0),
(15, '10', 'Jul', '2020', '11:33:00 PM', 'hello man', 'avatar-6.png', 'Aman Agarwal', 'amanaggarwal925@gmail.com', 'abcd.com', 'pending', 7, 0, 0, 0),
(16, '10', 'Jul', '2020', '11:34:05 PM', 'new comment', 'avatar-3.jpg', 'Aman Agarwal', 'amanaggarwal925@gmail.com', 'abcd.com', 'pending', 7, 0, 0, 0),
(17, '10', 'Jul', '2020', '11:41:58 PM', 'hello my avatar is awesome', 'avatar-2.png', 'shivani ', 'amanaggarwal925@gmail.com', 'kl.com', 'pending', 7, 0, 0, 0),
(18, '10', 'Jul', '2020', '11:52:22 PM', 'hello', 'avatar-4.png', 'Aman Agarwal', 'amanaggarwal925@gmail.com', 'abcd.com', 'pending', 7, 0, 0, 0),
(20, '11', 'Jul', '2020', '10:17:14 AM', 'cool hn!', 'Screenshot (15).png', 'Aman Agarwal', 'amanaggarwal925@gmail.com', 'user', 'approved', 7, 0, 3, 0),
(21, '11', 'Jul', '2020', '3:01:18 PM', 'new world', 'avatar-3.jpg', 'heloo', 'amanaggarwal925@gmail.com', 'kl.com', 'approved', 7, 0, 3, 0),
(22, '11', 'Jul', '2020', '3:42:20 PM', 'hello world', 'avatar-1.png', 'Aman Agarwal', 'amanaggarwal925@gmail.com', 'kl.com', 'pending', 7, 0, 0, 0),
(24, '12', 'Jul', '2020', '5:03:54 PM', 'ne comment', 'avatar-4.png', 'Aman Agarwal', 'amanaggarwal925@gmail.com', 'abcd.com', 'pending', 7, 0, 0, 0),
(25, '14', 'Jul', '2020', '12:26:23 AM', 'new comment job done', 'avatar-6.png', 'Aman Agarwal', 'amanaggarwal925@gmail.com', 'abcd.com', 'approved', 12, 0, 0, 0),
(26, '14', 'Jul', '2020', '12:26:51 AM', 'new comment job done', 'avatar-6.png', 'Aman Agarwal', 'amanaggarwal925@gmail.com', 'abcd.com', 'pending', 12, 0, 0, 0),
(27, '14', 'Jul', '2020', '12:51:39 AM', 'blog best', 'avatar-1.png', 'Aman Agarwal', 'amanaggarwal925@gmail.com', 'abcd.com', 'approved', 12, 0, 1, 1594668099),
(28, '14', 'Jul', '2020', '12:53:08 AM', 'blog best', 'avatar-1.png', 'Aman Agarwal', 'amanaggarwal925@gmail.com', 'abcd.com', 'pending', 12, 0, 0, 1594668188),
(29, '14', 'Jul', '2020', '12:53:37 AM', 'blog best', 'avatar-1.png', 'Aman Agarwal', 'amanaggarwal925@gmail.com', 'abcd.com', 'pending', 12, 0, 0, 1594668217),
(30, '14', 'Jul', '2020', '12:56:23 AM', 'hello here', 'avatar-1.png', 'Aman Agarwal', 'amanaggarwal925@gmail.com', 'abcd.com', 'approved', 11, 0, 1, 1594668383),
(31, '14', 'Jul', '2020', '1:04:45 AM', 'jr', 'avatar-1.png', 'Aman Agarwal', 'amanaggarwal925@gmail.com', 'bk.com', 'pending', 7, 0, 0, 1594668885);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` varchar(200) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `image`, `date`, `time`) VALUES
(19, 'FB_IMG_1532676592364.jpg', '07/Jul/2020', '8:20:16 PM'),
(20, 'FB_IMG_1532676995896.jpg', '07/Jul/2020', '8:20:16 PM');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(134) DEFAULT NULL,
  `mail` varchar(145) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `date` varchar(123) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `website` varchar(134) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `mail`, `subject`, `date`, `message`, `website`) VALUES
(5, 'Akash Agarwal', 'akashbhatt954@gmail.com', 'hello', '18 Jul 2020', 'yup', 'not req');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `post_title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(167) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `status` varchar(145) DEFAULT NULL,
  `day` varchar(123) DEFAULT NULL,
  `month` varchar(145) DEFAULT NULL,
  `year` varchar(234) DEFAULT NULL,
  `author` varchar(234) DEFAULT NULL,
  `views` int(11) NOT NULL,
  `author_image` varchar(234) DEFAULT NULL,
  `type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `post_title`, `content`, `image`, `category`, `tags`, `status`, `day`, `month`, `year`, `author`, `views`, `author_image`, `type`) VALUES
(5, 'variables in c', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '1594230971-9.jpg', '4', 'demo,check', 'Publish', '08', 'Jul', '2020', '21', 18, '21', 'normal'),
(7, 'Running is the best medicine', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '1594303559-new.jpg', '4', 'demo,check', 'Publish', '08', 'Jul', '2020', '22', 200, '22', 'featured'),
(10, 'Identifiers in c', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '1594566062-emma-simpson-mNGaaLeWEp0-unsplash.jpg', '4', 'new,health,tips', 'Publish', '12', 'Jul', '2020', '21', 207, '21', 'featured'),
(11, 'new stuff', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '1594567016-colorful_paint_splash_4k-HD.jpg', '2', 'demo,check', 'Publish', '12', 'Jul', '2020', '21', 41, '21', 'featured'),
(12, 'Lorem Ipsum', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', '1594631817-holidesign.jpg', '2', 'demo,check', 'publish', '13', 'Jul', '2020', '21', 111, '21', 'featured');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `day` varchar(200) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL,
  `rep_id` int(11) NOT NULL,
  `replies` int(11) NOT NULL,
  `tim` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `day`, `month`, `year`, `time`, `comment`, `image`, `name`, `mail`, `website`, `status`, `post_id`, `rep_id`, `replies`, `tim`) VALUES
(29, '13', 'Jul', '2020', '8:04:47 PM', 'this is a awesome comment section', 'avatar-4.png', 'Aman Agarwal', 'amanaggarwal925@gmail.com', 'abcd.com', 'approved', 7, 21, 0, 0),
(30, '13', 'Jul', '2020', '11:02:17 PM', 'new comment', 'avatar-4.png', 'Aman Agarwal', 'amanaggarwal925@gmail.com', 'kl.com', 'approved', 7, 21, 0, 0),
(31, '13', 'Jul', '2020', '11:27:08 PM', 'awesome', 'avatar-2.png', 'akash malhotra', 'akashbhatt954@gmail.com', 'abcd.com', 'approved', 7, 21, 0, 0),
(32, '13', 'Jul', '2020', '11:50:26 PM', 'new comment', 'avatar-1.png', 'Aman Agarwal', 'amanaggarwal925@gmail.com', 'abcd.com', 'approved', 5, 3, 0, 0),
(33, '14', 'Jul', '2020', '12:57:25 AM', 'njiooh hh', 'avatar-1.png', 'Aman Agarwal', 'amanaggarwal925@gmail.com', 'abcd.com', 'approved', 11, 30, 0, 1594668445),
(34, '14', 'Jul', '2020', '12:58:43 AM', 'yes you are right', 'avatar-1.png', 'akash malhotra', 'akashbhatt954@gmail.com', 'kl.com', 'approved', 7, 20, 0, 1594668523),
(35, '14', 'Jul', '2020', '1:16:20 AM', 'new comment', 'avatar-5.png', 'akash malhotra', 'amanaggarwal925@gmail.com', 'abcd.com', 'approved', 7, 4, 0, 1594669580),
(36, '14', 'Jul', '2020', '2:21:20 AM', 'new reply', 'avatar-1.png', 'heloo', 'amanaggarwal925@gmail.com', 'abcd.com', 'approved', 7, 20, 0, 1594673480),
(37, '14', 'Jul', '2020', '2:27:13 AM', 'new mn', 'avatar-1.png', 'akash malhotra', 'amanaggarwal925@gmail.com', 'abcd.com', 'approved', 7, 4, 0, 1594673833),
(38, '18', 'Jul', '2020', '11:56:46 PM', 'cool', 'avatar-3.jpg', 'Aman Agarwal', 'amanaggarwal925@gmail.com', 'abcd.com', 'approved', 12, 27, 0, 1595096806);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `footer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `logo`, `footer`) VALUES
(1, 'Tech blog', '1594922538-logo1.png', 'copyright 2020 all rights are reserved powered by aman agarwal');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `send_mail` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `send_mail`) VALUES
(1, 'amanaggarwal925@gmail.com', 1),
(2, 'akashbhatt954@gmail.com', 1),
(3, 'amanaggarwal954@gmail.com', 1),
(4, 'shivani954@gmail.com', 1),
(5, 'new@gmail.com', 1),
(6, 'hello@gmail.com', 1),
(7, 'alice@gmail.com', 1),
(8, 'abhishek90@gmail.com', 1),
(9, 'new1@gmail.com', 1),
(10, 'hello3@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `up`
--

CREATE TABLE `up` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `up`
--

INSERT INTO `up` (`id`, `name`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(120) DEFAULT NULL,
  `last_name` varchar(145) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(56) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `join_day` varchar(255) DEFAULT NULL,
  `join_month` varchar(255) DEFAULT NULL,
  `join_year` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `mail`, `password`, `role`, `bio`, `join_day`, `join_month`, `join_year`, `image`) VALUES
(3, 'Aman', 'Agarwal', 'Aman1', 'amanaggarwal925@gmail.com', 'aman', 'Author', 'hello iam aman', '05', 'Jul', '2020', 'Screenshot (15).png'),
(4, 'Aman', 'Agarwal', 'Aman2', 'amanaggarwal925@gmail.com', 'aman', 'Author', 'hello iam aman', '05', 'Jul', '2020', 'Screenshot (15).png'),
(6, 'Aman', 'Agarwal', 'rohit78', 'amanaggarwal925@gmail.com', 'aman', 'Author', 'hello iam aman', '05', 'Jul', '2020', 'Screenshot (15).png'),
(7, 'Aman', 'Agarwal', 'rohit786', 'amanaggarwal925@gmail.com', 'aman', 'Author', 'hello iam aman', '05', 'Jul', '2020', 'Screenshot (15).png'),
(9, 'Aman', 'singh rathode', 'aman78', 'amanaggarwal925@gmail.com', 'aman', 'Author', 'hello', '05', 'Jul', '2020', 'Screenshot (15).png'),
(10, 'Aman', 'agarwal', 'Aman944@', 'amanagarwal25@gmail.com', 'mn', 'Author', 'hello', '05', 'Jul', '2020', '1024px-Phone_sign_font_awesome.svg.png'),
(11, 'Aman', 'Agarwal', 'lisa455', 'amanagarwal95@gmail.com', 'aman', 'Admin', 'hello', '05', 'Jul', '2020', '1024px-Phone_sign_font_awesome.svg.png'),
(12, 'Aman', 'Agarwal', 'lisa4556', 'amanagarwal95@gmail.com', 'aman', 'Author', 'hello', '05', 'Jul', '2020', '1024px-Phone_sign_font_awesome.svg.png'),
(14, 'Aman', 'Agarwal', 'lisa455653', 'amanagarwal95@gmail.com', 'aman', 'Admin', 'hello', '05', 'Jul', '2020', '1024px-Phone_sign_font_awesome.svg.png'),
(15, 'Aman', 'Agarwal', 'lisa4556533', 'amanagarwal95@gmail.com', 'aman', 'Admin', 'hello', '05', 'Jul', '2020', '1024px-Phone_sign_font_awesome.svg.png'),
(17, 'Aman', 'Agarwal', 'Akash354@', 'akashbhatt954@gmail.com', 'aman', 'Admin', 'hello world!', '05', 'Jul', '2020', 'Screenshot (15).png'),
(18, 'akshay', 'singh', 'aman@', 'amanagarwal925@gmail.com', 'Š×?’ÙùØÿ»Ìœ«‡\0¬U\\', 'Admin', 'hey, iam  akshay', '05', 'Jul', '2020', 'Screenshot (15).png'),
(20, 'lisa', 'Sharma', 'akshay986', 'amanagarwal95@gmail.com', 'Š×?’ÙùØÿ»Ìœ«‡\0¬U\\', 'Admin', 'hello', '05', 'Jul', '2020', '_66518453_blast000701.jpg'),
(21, 'Aman', 'Agarwal', 'aman', 'amanaggarwal925@gmail.com', 'Š×?’ÙùØÿ»Ìœ«‡\0¬U\\', 'Admin', 'hello! iam aman', '06', 'Jul', '2020', 'Screenshot (15).png'),
(22, 'frodo', 'beggins', '@frodo', 'amanagarwal925@gmail.com', 'o‹†$Å¸P±;³ëÖ±›¸ö', 'Author', 'hey,this is my profile and i\'ll post some cool stuff here..', '08', 'Jul', '2020', 'FB_IMG_1532673999633 (2).jpg'),
(38, 'akash', 'agarwal', 'Akash', 'amanagarwal95@gmail.com', 'äÏ—œ÷ý)_NNÜB~á®ç§Ü', 'Author', 'new', '08', 'Jul', '2020', '1594489049-cd.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avatar`
--
ALTER TABLE `avatar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `up`
--
ALTER TABLE `up`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `avatar`
--
ALTER TABLE `avatar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `up`
--
ALTER TABLE `up`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
