-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 07:56 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_ondemand`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int(11) NOT NULL,
  `data` varchar(255) NOT NULL,
  `discription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `data`, `discription`) VALUES
(1, '<h2>About  Us</h2>', '<p>Hello My Name Is Harish</p>');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `name`, `img`) VALUES
(1, 'primocys@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'primocys', '60e2ee57ced79.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `banners_name` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banners_name`, `image`) VALUES
(2, 'Banner 1', '62a2f70c7c7ce.jpeg'),
(3, 'Banner 2', '62066165556da.png');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `date` date NOT NULL,
  `slot` text NOT NULL,
  `size` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL,
  `accept_reject` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `txn_id` text NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `p_date` date NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'Not Paid',
  `address` varchar(255) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `otp` int(11) NOT NULL,
  `work_hours` varchar(255) NOT NULL,
  `create_date` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `user_id`, `res_id`, `service_id`, `vid`, `date`, `slot`, `size`, `status`, `accept_reject`, `amount`, `txn_id`, `payment_mode`, `p_date`, `payment_status`, `address`, `notes`, `otp`, `work_hours`, `create_date`) VALUES
(1, 394, 2, 3, 0, '2021-12-24', '7:00', '0', 'Cancel', 0, 300, '', 'STRIPE', '2021-12-24', 'Success', 'City Centre 2, City Centre 2, Panchamrut Bunglows II, Sola, Ahmedabad, Gujarat 380059, India', 'Testing Notes', 0, '', '24 Dec, 04:42 AM'),
(2, 394, 2, 2, 0, '2021-12-24', '8:00', '0', 'Cancel', 0, 250, '', 'STRIPE', '2021-12-24', 'Success', 'City Centre 2, City Centre 2, Panchamrut Bunglows II, Sola, Ahmedabad, Gujarat 380059, India', 'Please keep 2-3 person for cleaning the process...!!! ', 0, '', '24 Dec, 04:51 AM'),
(3, 393, 5, 9, 0, '2021-12-24', '1:00', '0', 'Confirm', 0, 150, 'txn_3KACo7EuTbXMoF8I0LthSCKJ', 'STRIPE', '2021-12-24', 'Success', 'City Centre 2, City Centre 2, Panchamrut Bunglows II, Sola, Ahmedabad, Gujarat 380059, India', '', 0, '', '24 Dec, 06:23 AM'),
(4, 393, 3, 6, 0, '2021-12-25', '3:00', '0', 'Cancel', 0, 400, 'txn_3KACqbEuTbXMoF8I1vhWN156', 'STRIPE', '2021-12-24', 'Success', 'City Centre 2, City Centre 2, Panchamrut Bunglows II, Sola, Ahmedabad, Gujarat 380059, India', 'notes\n', 0, '', '24 Dec, 06:26 AM'),
(5, 394, 6, 10, 2, '2021-12-27', '7:00', '0', 'Cancel', 2, 600, '', 'STRIPE', '2021-12-27', 'Success', 'Jafza One, FZJOB1320 Dubai - Dubai - United Arab Emirates', 'Santize Our office ASAP...!! ', 7851, '', '27 Dec, 05:42 AM'),
(6, 394, 5, 9, 2, '2021-12-29', '8:00', '0', 'Completed', 1, 150, '', 'STRIPE', '2021-12-28', 'Success', 'City Centre 2, City Centre 2, Panchamrut Bunglows II, Sola, Ahmedabad, Gujarat 380059, India', 'I need this sevice ASAP...!!!!', 7858, '5 hours', '28 Dec, 02:39 AM'),
(7, 393, 4, 8, 2, '2021-12-29', '12:00', '0', 'Completed', 2, 200, 'txn_3KBdTrEuTbXMoF8I0pzSvGBb', 'STRIPE', '2021-12-28', 'Success', 'City Centre 2, City Centre 2, Panchamrut Bunglows II, Sola, Ahmedabad, Gujarat 380059, India', 'test notes', 0, '', '28 Dec, 05:04 AM'),
(8, 393, 5, 9, 2, '2021-12-30', '16:00', '0', 'Confirm', 2, 150, 'txn_3KBeznEuTbXMoF8I0qVQE04l', 'STRIPE', '2021-12-28', 'Success', 'City Centre 2, City Centre 2, Panchamrut Bunglows II, Sola, Ahmedabad, Gujarat 380059, India', 'jdjdjd\n', 0, '', '28 Dec, 06:41 AM'),
(9, 1, 5, 9, 2, '2021-12-29', '22:00', '0', 'Confirm', 2, 150, '', 'STRIPE', '2021-12-28', 'Success', 'City Centre 2, City Centre 2, Panchamrut Bunglows II, Sola, Ahmedabad, Gujarat 380059, India', 'Booking for car washing...!!\n', 0, '', '28 Dec, 06:56 AM'),
(10, 1, 3, 5, 4, '2021-12-28', '9:00', '0', 'Completed', 0, 500, '', 'STRIPE', '2021-12-28', 'Success', '4 shantanu banlows rajpath club ni same, Narolgam, Ellisbridge, Ahmedabad, Gujarat 380006, India', 'Need Medical Treatment..!!!', 0, '', '28 Dec, 06:57 AM'),
(11, 2, 5, 9, 2, '2021-12-29', '14:00', '0', 'Confirm', 0, 150, '', 'STRIPE', '2021-12-28', 'Success', 'Isquare Corporate Park, Isquare Corporate Park, Panchamrut Bunglows II, Sola, Ahmedabad, Gujarat 380059, India', 'Hello,\n\nI want to clean my all car ASAp.!!!\nplease book my service..!!', 0, '', '28 Dec, 07:04 AM'),
(12, 393, 5, 9, 2, '2021-12-30', '16:00', '0', 'Pending', 0, 150, 'txn_3KBg8iEuTbXMoF8I0kKeTt8y', 'STRIPE', '2021-12-28', 'Success', 'City Centre 2, City Centre 2, Panchamrut Bunglows II, Sola, Ahmedabad, Gujarat 380059, India', '', 0, '', '28 Dec, 07:54 AM'),
(13, 393, 5, 9, 2, '2021-12-30', '13:00', '0', 'Pending', 1, 150, 'txn_3KBysuEuTbXMoF8I00oCSuWB', 'STRIPE', '2021-12-29', 'Success', 'City Centre 2, City Centre 2, Panchamrut Bunglows II, Sola, Ahmedabad, Gujarat 380059, India', '', 0, '', '29 Dec, 03:55 AM'),
(14, 393, 6, 10, 2, '2021-12-31', '19:00', '0', 'Pending', 2, 600, 'txn_3KByyQEuTbXMoF8I031JesMz', 'STRIPE', '2021-12-29', 'Success', 'City Centre 2, City Centre 2, Panchamrut Bunglows II, Sola, Ahmedabad, Gujarat 380059, India', '', 0, '', '29 Dec, 04:01 AM'),
(15, 396, 8, 12, 1, '2022-02-08', '11:00', '0', 'Cancel', 2, 200, '', 'STRIPE', '2022-02-10', 'Success', '243, Risi Nagar, Rishi Vihar, Indore, Madhya Pradesh 452013, India', 'hello', 0, '', '10 Feb, 06:07 AM'),
(16, 396, 9, 13, 1, '2022-02-11', '8:00', '0', 'Booking Cancel', 1, 5000, '', 'STRIPE', '2022-02-10', 'Success', 'PVXX+938, Ratna Lok Colony, Indore, Madhya Pradesh 452011, India', '', 1050, '', '10 Feb, 11:56 AM'),
(17, 396, 1, 1, 4, '2022-02-15', '8:00', '0', 'Confirm', 0, 200, '', 'STRIPE', '2022-02-14', 'Success', '243, Risi Nagar, Rishi Vihar, Indore, Madhya Pradesh 452013, India', 'hello', 0, '', '14 Feb, 14:45 PM'),
(18, 396, 9, 13, 1, '2022-02-01', '8:00', '0', 'Cancel', 2, 5000, '', 'STRIPE', '2022-02-14', 'Success', '83, Ratna Lok Colony, Indore, Madhya Pradesh 452010, India', 'jtdykfuofup', 0, '', '14 Feb, 14:46 PM'),
(19, 397, 9, 13, 1, '2022-02-22', '14:00', '0', 'Booking Cancel', 1, 5000, '', 'STRIPE', '2022-02-21', 'Success', 'JQJM+W8 Mapachinré, Chad', '', 0, '', '21 Feb, 09:22 AM'),
(20, 404, 1, 15, 1, '2022-02-25', '14:00', '0', 'Confirm', 1, 50, '', 'STRIPE', '2022-02-24', 'Success', '83, Ratna Lok Colony, Indore, Madhya Pradesh 452010, India', 'xjjdjd', 8050, '867', '24 Feb, 07:55 AM'),
(21, 407, 1, 16, 1, '2022-02-28', '14:00', '0', 'Confirm', 0, 1000, '', 'STRIPE', '2022-02-28', 'Success', '83, Ratna Lok Colony, Indore, Madhya Pradesh 452010, India', 'helllllo', 0, '', '28 Feb, 08:29 AM'),
(23, 409, 8, 17, 1, '2022-03-17', '12:00', '0', 'Cancel', 0, 200, '', 'STRIPE', '2022-03-16', 'Success', '3, Mangal Nagar Main Rd, DDU Nagar, Sukhlia, Indore, Madhya Pradesh 452010, India', 'hi', 0, '', '16 Mar, 06:33 AM'),
(24, 412, 8, 17, 1, '2022-04-30', '17:00', '0', 'Confirm', 0, 200, '', 'STRIPE', '2022-04-30', 'Success', '83, Ratna Lok Colony, Indore, Madhya Pradesh 452010, India', 'Clean\n', 0, '', '30 Apr, 10:25 AM');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `varient_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`cart_id`, `user_id`, `product_id`, `varient_id`, `quantity`, `price`) VALUES
(33, 229, 5, 0, 1, 300),
(48, 388, 6, 0, 1, 12),
(35, 229, 8, 0, 1, 400),
(28, 1, 1, 0, 2, 800),
(26, 297, 6, 0, 1, 12),
(27, 297, 4, 0, 1, 230),
(47, 99, 9, 0, 1, 400),
(49, 390, 8, 0, 1, 400),
(46, 99, 4, 0, 1, 230),
(51, 390, 5, 0, 1, 300),
(87, 394, 20, 0, 1, 137),
(83, 394, 22, 0, 3, 1386),
(85, 394, 23, 0, 1, 345),
(102, 405, 26, 0, 1, 332),
(108, 406, 26, 0, 1, 332),
(119, 409, 26, 0, 1, 332),
(122, 409, 33, 1, 2, 200),
(123, 409, 33, 2, 2, 200),
(125, 397, 25, 0, 1, 123),
(126, 397, 36, 0, 1, 140);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_name_a` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'vip'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_name_a`, `icon`, `img`, `type`) VALUES
(34, 'Air Condition', '', '6231a0342edb1.png', '6231a0342e846.png', 'vip'),
(35, 'Printer ', '', '6231a1f19e2e6.png', '6231a1f19dd5a.png', 'vip'),
(36, 'Kitchenware ', '', '6231a3421403c.png', '6231a34213415.png', 'vip'),
(38, 'Bags ', '', '6231a43c27d5c.png', '6231a43c276f4.png', 'vip'),
(39, 'Bicycle ', '', '6231ac2463c9e.png', '6231ac24634e7.png', 'vip'),
(40, 'Shoe ', '', '6231ac7852445.png', '6231ac7851df6.png', 'vip'),
(41, 'Sewing Machine', '', '6231aeed77365.png', '6231aeed76c07.png', 'vip'),
(42, 'Plumber', '', '623f0f8bcc2bb.jpeg', '623f0f8bcb7b8.jpeg', 'vip'),
(45, 'Electrician', '', '62431a5bc964e.jpg', '62431a5bc8d1f.jpeg', 'vip'),
(46, 'Carpenter ', '', '6243ed73aa58f.jpg', '629ef7b994b87.jpg', 'vip'),
(47, 'computer', '', '6243ef3b15d07.jpg', '6243ef3b152ad.jpg', 'vip'),
(48, 'test', '', '62459e847f8a0.png', '62459e847eb35.png', 'vip'),
(49, 'home cleaner', '', '624d776345233.png', '624d76641ddbc.jpg', 'vip');

-- --------------------------------------------------------

--
-- Table structure for table `chart_data`
--

CREATE TABLE `chart_data` (
  `id` int(11) NOT NULL,
  `year` varchar(10) NOT NULL,
  `month` varchar(50) NOT NULL,
  `profit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chart_data`
--

INSERT INTO `chart_data` (`id`, `year`, `month`, `profit`) VALUES
(1, '2021', 'June', '10992'),
(2, '2021', 'July', '5000'),
(3, '2021', 'August', '2084'),
(4, '2021', 'September', '400'),
(5, '2021', 'October', '460'),
(6, '2021', 'November', '8360'),
(7, '2021', 'December', '2023'),
(8, '2022', 'February', '14458'),
(9, '2022', 'March', '3991'),
(10, '2022', 'April', '52534.08'),
(11, '2022', 'June', '');

-- --------------------------------------------------------

--
-- Table structure for table `child_category`
--

CREATE TABLE `child_category` (
  `id` int(255) NOT NULL,
  `child_name` varchar(255) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `subc_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `child_category`
--

INSERT INTO `child_category` (`id`, `child_name`, `c_name`, `subc_name`, `image`) VALUES
(1, 'new cat', '36', '26', '6246d1e6b0b27.jpg'),
(2, 'ankit', '34', '26', '6246d3d3cef97.jpg'),
(4, 'asdasdasd', '34', '26', ''),
(5, 'ankit', '34', '26', ''),
(6, 'sdfdf', '34', '26', ''),
(7, 'sddfadf', '34', '26', ''),
(8, 'dhgdxfg', '34', '2', ''),
(9, 'fgvfgsv', '34', '26', ''),
(11, 'mouse', '47', '29', ''),
(15, 'vinay', '47', '28', ''),
(16, 'vijay', '47', '28', ''),
(17, 'vikas', '47', '29', ''),
(18, 'test3', '48', '31', ''),
(19, 'testaSDfas', '48', '32', ''),
(20, 'new cat', '34', '26', ''),
(21, 'abc', '34', '30', '6246d96dc667b.jpg'),
(22, 'alpha', '34', '30', '6246d9fd21172.jpg'),
(23, 'alpha  2', '34', '30', '6246da62adca9.jpg'),
(24, 'cleaner', '49', '33', '624d7693025a8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_discount` int(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `user` varchar(256) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `c_name`, `c_discount`, `start_date`, `end_date`, `user`, `time`) VALUES
(1, 'realme', 2, '2022-03-07', '2022-03-03', '1', '0000-00-00 00:00:00'),
(2, 'wee', 2, '2022-03-07', '2022-03-03', '2', '2022-03-31 11:20:04'),
(3, 'wee', 2, '2022-03-07', '2022-03-03', '2', '2022-03-31 11:30:38'),
(6, 'new coupon', 20, '2022-05-03', '2022-05-31', '412', '2022-05-03 13:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `custumer_support`
--

CREATE TABLE `custumer_support` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custumer_support`
--

INSERT INTO `custumer_support` (`id`, `user_id`, `description`) VALUES
(1, 22, 'dfasf'),
(2, 22, 'dfasf'),
(3, 34, 's'),
(4, 34, 's'),
(5, 36, 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `title`, `description`) VALUES
(1, 'What is Lorem Ipsum?', 'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has sur');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `data` varchar(255) NOT NULL,
  `discription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `data`, `discription`) VALUES
(1, '<h2>App Features</h2>', '<p>Hello My Name Is Harish</p>');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `data` varchar(255) NOT NULL,
  `discription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `data`, `discription`) VALUES
(11, '<h2>Gallery</h2>', '<p>My Name is Harish </p>');

-- --------------------------------------------------------

--
-- Table structure for table `general_setting`
--

CREATE TABLE `general_setting` (
  `id` int(11) NOT NULL,
  `n_server_key` varchar(255) NOT NULL,
  `s_secret_key` varchar(255) NOT NULL,
  `s_public_key` varchar(255) NOT NULL,
  `r_secret_key` varchar(255) NOT NULL,
  `r_public_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_setting`
--

INSERT INTO `general_setting` (`id`, `n_server_key`, `s_secret_key`, `s_public_key`, `r_secret_key`, `r_public_key`) VALUES
(1, 'AAAAqh1Nstg:APA91bFxv6IjIge1pGr_2qAP9SIqUIpxZ8_0aYS998ZeBfjVux-Mg07cHAMvabyCf3AUiLXNcsLDQ7_4YdYBfRf2bljzOGWZ-ID03EKb3RWNaZNlaOK9zX7kZcngMsex6BwIqlQL9lNH', 'sk_test_hlmNXc4PPutpuprGj246XPs600hVbvAMU5', 'pk_test_W2YQYKwOBWyMfw8fmp7QiTii00rJhT0URN', 'fnwpQ69iqzV5Aq0GUiG5sC71', 'rzp_test_dv9hJ9iSfC2Far');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `data` varchar(255) NOT NULL,
  `discription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `data`, `discription`) VALUES
(1, ' <h1>Home</h1>', '<p>Hello My Name Is Harish   </p>');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `like_id` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `likes_product`
--

CREATE TABLE `likes_product` (
  `like_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likes_product`
--

INSERT INTO `likes_product` (`like_id`, `pro_id`, `user_id`, `date`) VALUES
(27, 2, 197, '1624691878'),
(51, 1, 297, '1635326992'),
(31, 1, 201, '1624711811'),
(35, 1, 199, '1625492226'),
(33, 6, 201, '1624887987'),
(34, 2, 201, '1624887999'),
(36, 6, 251, '1628664485'),
(37, 8, 310, '1630137062'),
(72, 20, 394, '1640596505'),
(102, 21, 393, '1640611410'),
(105, 25, 396, '1644668214'),
(107, 26, 396, '1644671454'),
(108, 31, 397, '1646117571'),
(109, 31, 409, '1647412732'),
(110, 38, 409, '1647412861'),
(111, 47, 412, '1651215555'),
(112, 48, 412, '1651314516');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `not_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `data_id` varchar(255) NOT NULL,
  `type` text NOT NULL,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`not_id`, `user_id`, `data_id`, `type`, `title`, `message`, `date`) VALUES
(1, 394, '6', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2021-12-28 02:39:50'),
(2, 394, '6', 'booking', 'Booking On Way', 'Your Booking On Way', '2021-12-28 02:50:56'),
(3, 394, '5', 'booking', 'Booking Cancel', 'Your Booking Cancel', '2021-12-28 02:51:18'),
(4, 394, '6', 'booking', 'Booking Completed', 'Your Booking Successfully Completed', '2021-12-28 02:52:04'),
(5, 394, '1', 'booking', 'Booking Cancel', 'Your Booking Cancel', '2021-12-28 02:57:03'),
(6, 393, '7', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2021-12-28 05:04:38'),
(7, 393, '7', 'booking', 'Booking On Way', 'Your Booking On Way', '2021-12-28 06:37:48'),
(8, 393, '7', 'booking', 'Booking Completed', 'Your Booking Successfully Completed', '2021-12-28 06:37:57'),
(9, 393, '8', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2021-12-28 06:41:41'),
(10, 1, '9', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2021-12-28 06:56:03'),
(11, 1, '10', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2021-12-28 06:57:33'),
(12, 1, '10', 'booking', 'Booking On Way', 'Your Booking On Way', '2021-12-28 06:57:54'),
(13, 1, '10', 'booking', 'Booking Completed', 'Your Booking Successfully Completed', '2021-12-28 06:58:05'),
(14, 2, '11', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2021-12-28 07:04:56'),
(15, 393, '12', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2021-12-28 07:54:58'),
(16, 393, '13', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2021-12-29 03:55:55'),
(17, 393, '14', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2021-12-29 04:01:36'),
(18, 396, '15', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2022-02-10 06:07:04'),
(19, 396, '15', 'booking', 'Booking On Way', 'Your Booking On Way', '2022-02-10 06:07:32'),
(20, 396, '15', 'booking', 'Booking Cancel', 'Your Booking Cancel', '2022-02-10 06:07:39'),
(21, 396, '1', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-02-10 11:53:31'),
(22, 396, '2', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-02-10 11:55:04'),
(23, 396, '16', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2022-02-10 11:56:38'),
(24, 396, '3', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-02-10 14:52:54'),
(25, 396, '17', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2022-02-14 14:45:49'),
(26, 396, '18', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2022-02-14 14:46:41'),
(27, 396, '4', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-02-14 14:47:30'),
(28, 396, '18', 'booking', 'Booking On Way', 'Your Booking On Way', '2022-02-14 14:49:34'),
(29, 396, '18', 'booking', 'Booking Cancel', 'Your Booking Cancel', '2022-02-14 14:49:52'),
(30, 396, '4', 'order', 'Order Dispatch', 'Your Order Dispatch', '2022-02-14 14:50:09'),
(31, 397, '19', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2022-02-21 09:22:20'),
(32, 394, '6', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2022-02-24 07:02:46'),
(33, 404, '20', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2022-02-24 07:55:08'),
(34, 394, '6', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2022-02-24 09:44:19'),
(35, 394, '6', 'booking', 'Booking On Way', 'Your Service Provide On Way', '2022-02-24 09:44:57'),
(36, 394, '6', 'booking', 'Reached To Destination', 'Your Service Provide  Reached To Destinationy', '2022-02-24 09:45:20'),
(37, 394, '6', 'booking', 'Work Processing', 'Your Work Processing ', '2022-02-24 09:46:26'),
(38, 394, '6', 'booking', 'Completed', 'Your Booking Successfully Completed', '2022-02-24 09:58:28'),
(39, 394, '6', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2022-02-24 11:07:27'),
(40, 394, '6', 'booking', 'Completed', 'Your Booking Successfully Completed', '2022-02-24 11:41:07'),
(41, 404, '20', 'booking', 'Reached To Destination', 'Your Service Provide  Reached To Destinationy', '2022-02-24 11:59:20'),
(42, 397, '19', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2022-02-24 12:09:18'),
(43, 397, '19', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2022-02-24 12:09:19'),
(44, 397, '19', 'booking', 'Booking On Way', 'Your Service Provide On Way', '2022-02-24 12:09:25'),
(45, 397, '19', 'booking', 'Reached To Destination', 'Your Service Provide  Reached To Destinationy', '2022-02-24 12:15:03'),
(46, 404, '20', 'booking', 'Reached To Destination', 'Your Service Provide  Reached To Destinationy', '2022-02-24 12:18:17'),
(47, 404, '20', 'booking', 'Reached To Destination', 'Your Service Provide  Reached To Destinationy', '2022-02-24 12:18:19'),
(48, 404, '20', 'booking', 'Completed', 'Your Booking Successfully Completed', '2022-02-24 12:20:05'),
(49, 404, '20', 'booking', 'Booking On Way', 'Your Service Provide On Way', '2022-02-25 10:35:12'),
(50, 404, '20', 'booking', 'Reached To Destination', 'Your Service Provide  Reached To Destinationy', '2022-02-25 10:35:18'),
(51, 404, '20', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2022-02-25 10:35:25'),
(52, 397, '19', 'booking', 'Booking Cancel', 'Your Booking Cancel', '2022-02-25 10:35:49'),
(53, 404, '20', 'booking', 'Booking On Way', 'Your Service Provide On Way', '2022-02-25 10:35:53'),
(54, 404, '20', 'booking', 'Booking On Way', 'Your Service Provide On Way', '2022-02-25 10:36:00'),
(55, 404, '20', 'booking', 'Reached To Destination', 'Your Service Provide  Reached To Destinationy', '2022-02-25 10:36:59'),
(56, 404, '20', 'booking', 'Booking On Way', 'Your Service Provide On Way', '2022-02-25 10:37:05'),
(57, 397, '19', 'booking', 'Booking On Way', 'Your Service Provide On Way', '2022-02-25 10:37:11'),
(58, 397, '19', 'booking', 'Booking Cancel', 'Your Booking Cancel', '2022-02-25 10:37:57'),
(59, 397, '19', 'booking', 'Work Processing', 'Your Work Processing ', '2022-02-25 10:40:15'),
(60, 397, '19', 'booking', 'Reached To Destination', 'Your Service Provide  Reached To Destinationy', '2022-02-25 10:41:13'),
(61, 404, '20', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2022-02-25 10:42:02'),
(62, 404, '20', 'booking', 'Booking On Way', 'Your Service Provide On Way', '2022-02-25 10:42:08'),
(63, 404, '20', 'booking', 'Booking On Way', 'Your Service Provide On Way', '2022-02-25 10:51:58'),
(64, 404, '20', 'booking', 'Reached To Destination', 'Your Service Provide  Reached To Destinationy', '2022-02-25 10:52:19'),
(65, 397, '19', 'booking', 'Booking Cancel', 'Your Booking Cancel', '2022-02-25 10:58:18'),
(66, 404, '20', 'booking', 'Reached To Destination', 'Your Service Provide  Reached To Destinationy', '2022-02-25 12:16:37'),
(67, 404, '20', 'booking', 'Reached To Destination', 'Your Service Provide  Reached To Destinationy', '2022-02-25 12:16:53'),
(68, 404, '20', 'booking', 'Work Processing', 'Your Work Processing ', '2022-02-25 12:18:02'),
(69, 404, '20', 'booking', 'Booking Cancel', 'Your Booking Cancel', '2022-02-25 12:18:11'),
(70, 396, '16', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2022-02-25 12:20:43'),
(71, 396, '16', 'booking', 'Booking Cancel', 'Your Booking Cancel', '2022-02-25 12:24:26'),
(72, 407, '21', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2022-02-28 08:29:46'),
(73, 407, '21', 'booking', 'Booking Cancel', 'Your Booking Cancel', '2022-02-28 09:22:52'),
(74, 407, '21', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2022-02-28 09:23:40'),
(75, 407, '22', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2022-02-28 09:34:28'),
(76, 397, '5', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-03-01 06:53:10'),
(77, 397, '5', 'order', 'Order Dispatch', 'Your Order Dispatch', '2022-03-01 06:54:13'),
(78, 397, '5', 'order', 'Order Deliver', 'Your Order Successfully Deliver', '2022-03-01 06:54:24'),
(79, 397, '6', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-03-01 06:58:30'),
(80, 397, '7', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-03-01 07:09:14'),
(81, 396, '8', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-03-03 05:21:25'),
(82, 409, '23', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2022-03-16 06:33:56'),
(83, 409, '9', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-03-16 06:42:40'),
(84, 409, '10', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-03-16 07:58:18'),
(85, 409, '11', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-03-16 08:37:36'),
(86, 397, '12', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-03-26 08:09:31'),
(87, 412, '13', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-04-29 05:51:53'),
(88, 412, '14', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-04-30 05:37:12'),
(89, 412, '15', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-04-30 06:55:35'),
(90, 412, '16', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-04-30 07:10:55'),
(91, 412, '17', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-04-30 09:58:15'),
(92, 412, '18', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-04-30 10:03:59'),
(93, 412, '19', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-04-30 10:13:33'),
(94, 412, '24', 'booking', 'Booking Confirm', 'Your Booking Successfully Confirm', '2022-04-30 10:25:30'),
(95, 412, '20', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-04-30 11:34:59'),
(96, 412, '21', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-04-30 11:53:58'),
(97, 412, '22', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-04-30 12:14:24'),
(98, 412, '23', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-04-30 12:27:08'),
(99, 412, '24', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-04-30 12:30:55'),
(100, 412, '25', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-04-30 12:43:15'),
(101, 412, '26', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-04-30 12:55:03'),
(102, 417, '27', 'order', 'Order Placed', 'Your Order Successfully Placed', '2022-06-07 07:35:25');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `items` mediumtext COLLATE utf8_bin NOT NULL,
  `payment_mode` mediumtext COLLATE utf8_bin NOT NULL,
  `address` text COLLATE utf8_bin NOT NULL,
  `number` varchar(255) COLLATE utf8_bin NOT NULL,
  `date` mediumtext COLLATE utf8_bin NOT NULL,
  `datea` date NOT NULL,
  `txn_id` mediumtext COLLATE utf8_bin NOT NULL,
  `p_status` mediumtext COLLATE utf8_bin NOT NULL,
  `p_date` mediumtext COLLATE utf8_bin NOT NULL,
  `order_status` int(10) NOT NULL DEFAULT 0,
  `coupon_id` int(11) NOT NULL,
  `coupon_discount` varchar(255) COLLATE utf8_bin NOT NULL,
  `final_amount` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `total`, `items`, `payment_mode`, `address`, `number`, `date`, `datea`, `txn_id`, `p_status`, `p_date`, `order_status`, `coupon_id`, `coupon_discount`, `final_amount`) VALUES
(1, 'order0001', 396, '10000', '', 'COD', 'PVXX+938, Ratna Lok Colony, Indore, Madhya Pradesh 452011, India', '', '1644494010', '2022-02-10', '', 'success', '1644494011', 0, 0, '0', ''),
(2, 'order0002', 396, '11000', '', 'COD', 'PVXX+938, Ratna Lok Colony, Indore, Madhya Pradesh 452011, India', '', '1644494104', '2022-02-10', '', 'success', '1644494104', 0, 0, '0', ''),
(3, 'order0003', 396, '2794', '', 'COD', 'Plot no. 91 Ratanlok Soc, Ratna Lok Colony, Indore, Madhya Pradesh 452011, India', '', '1644504774', '2022-02-10', '', 'success', '1644504775', 0, 0, '0', ''),
(4, 'order0004', 396, '664', '', 'COD', '243, Risi Nagar, Rishi Vihar, Indore, Madhya Pradesh 452013, India', '', '1644850050', '2022-02-14', '', 'success', '1644850050', 1, 0, '0', ''),
(5, 'order0005', 397, '250', '', 'COD', 'PVXX+938, Ratna Lok Colony, Indore, Madhya Pradesh 452011, India', '', '1646117590', '2022-03-01', '', 'success', '1646117591', 2, 0, '0', ''),
(6, 'order0006', 397, '200', '', 'COD', '83, Ratna Lok Colony, Indore, Madhya Pradesh 452010, India', '', '1646117910', '2022-03-01', '', 'success', '1646117910', 0, 0, '0', ''),
(7, 'order0007', 397, '1500', '', 'COD', 'PVXX+938, Ratna Lok Colony, Indore, Madhya Pradesh 452011, India', '', '1646118554', '2022-03-01', '', 'success', '1646118554', 0, 0, '0', ''),
(8, 'order0008', 396, '664', '', 'COD', 'PVXX+938, Ratna Lok Colony, Indore, Madhya Pradesh 452011, India', '', '1646284885', '2022-03-03', '', 'success', '1646284885', 0, 0, '0', ''),
(9, 'order0009', 409, '217', '', 'COD', '351, Ward 7, Yashoda Nagar, Gouri Nagar, Sukhlia, Indore, Madhya Pradesh 452015, India', '', '1647412959', '2022-03-16', '', 'success', '1647412960', 0, 0, '0', ''),
(10, 'order00010', 409, '295', '', 'COD', '351, Ward 7, Yashoda Nagar, Gouri Nagar, Sukhlia, Indore, Madhya Pradesh 452015, India', '', '1647417498', '2022-03-16', '', 'success', '1647417499', 0, 0, '0', ''),
(11, 'order00011', 409, '975', '', 'COD', 'VCQQ+QP Koluedor, Ghana', '', '1647419856', '2022-03-16', '', 'success', '1647419857', 0, 0, '0', ''),
(12, 'order00012', 397, '140', '', 'COD', '83, Ratna Lok Colony, Indore, Madhya Pradesh 452010, India', '', '1648282171', '2022-03-26', '', 'success', '1648282172', 0, 0, '0', ''),
(17, 'order00017', 412, '899.0', '', 'COD', '83, Ratna Lok Colony, Indore, Madhya Pradesh 452010, India', '', '1651312695', '2022-04-30', '', 'success', '1651312695', 0, 0, '0', ''),
(14, 'order00014', 412, '8000.0', '', 'COD', '83, Ratna Lok Colony, Indore, Madhya Pradesh 452010, India', '', '1651297032', '2022-04-30', '', 'success', '1651297032', 0, 0, '0', ''),
(15, 'order00015', 412, '7840.0', '', 'Razorpay', 'PVXX+938, Ratna Lok Colony, Indore, Madhya Pradesh 452011, India', '', '1651301735', '2022-04-30', 'pay_JPTaBUdcV014b7', 'success', '1651301736', 0, 0, '0', ''),
(16, 'order00016', 412, '7840.0', '', 'COD', '83, Ratna Lok Colony, Indore, Madhya Pradesh 452010, India', '', '1651302655', '2022-04-30', '', 'success', '1651302657', 0, 0, '0', ''),
(18, 'order00018', 412, '881.02', '', 'COD', '83, Ratna Lok Colony, Indore, Madhya Pradesh 452010, India', '', '1651313039', '2022-04-30', '', 'success', '1651313040', 0, 0, '0', ''),
(19, 'order00019', 412, '781.06', '', 'COD', '83, Ratna Lok Colony, Indore, Madhya Pradesh 452010, India', '', '1651313613', '2022-04-30', '', 'success', '1651313614', 0, 0, '0', ''),
(20, 'order00020', 412, '8000', '', 'COD', 'Indore', '', '1651318499', '2022-04-30', '', 'pending', '', 0, 1, '2', '7840'),
(21, 'order00021', 412, '797', '', 'COD', 'PVXX+938, Ratna Lok Colony, Indore, Madhya Pradesh 452011, India', '', '1651319638', '2022-04-30', '', 'success', '1651319638', 0, 3, '15.94', '781.06'),
(22, 'order00022', 412, '499', '', 'COD', '83, Ratna Lok Colony, Indore, Madhya Pradesh 452010, India', '', '1651320864', '2022-04-30', '', 'success', '1651320864', 0, 0, 'null', '499.0'),
(23, 'order00023', 412, '8000', '', 'COD', '83, Ratna Lok Colony, Indore, Madhya Pradesh 452010, India', '', '1651321628', '2022-04-30', '', 'success', '1651321629', 0, 0, 'null', '8000.0'),
(24, 'order00024', 412, '200', '', 'COD', '83, Ratna Lok Colony, Indore, Madhya Pradesh 452010, India', '', '1651321855', '2022-04-30', '', 'success', '1651321856', 0, 0, '0.0', '200.0'),
(25, 'order00025', 412, '797', '', 'Razorpay', '83, Ratna Lok Colony, Indore, Madhya Pradesh 452010, India', '', '1651322595', '2022-04-30', 'pay_JPZVTbtPVICocX', 'success', '1651322596', 0, 3, '15.94', '781.06'),
(26, 'order00026', 412, '8000', '', 'COD', '83, Ratna Lok Colony, Indore, Madhya Pradesh 452010, India', '', '1651323302', '2022-04-30', '', 'success', '1651323303', 0, 1, '160.0', '7840.0'),
(27, 'order00027', 417, '16000', '', 'Razorpay', '683/3, Malviya Nagar, Indore, Madhya Pradesh 452001, India', '', '1654587323', '2022-06-07', 'pay_JeWYhQxNHgBWR9', 'success', '1654587327', 0, 0, '0.0', '16000.0');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `varient_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total` int(255) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `varient_id`, `qty`, `price`, `total`) VALUES
(1, 1, 28, 0, 1, 5500, 5500),
(2, 1, 29, 0, 1, 4500, 4500),
(3, 2, 28, 0, 2, 11000, 11000),
(4, 3, 22, 0, 3, 1386, 1386),
(5, 3, 21, 0, 4, 1408, 1408),
(6, 4, 26, 0, 2, 664, 664),
(7, 5, 31, 0, 1, 250, 250),
(8, 6, 32, 0, 1, 200, 200),
(9, 7, 30, 0, 2, 1000, 1000),
(10, 7, 31, 0, 2, 500, 500),
(11, 8, 26, 0, 2, 664, 664),
(12, 9, 36, 0, 1, 140, 140),
(13, 9, 38, 0, 1, 77, 77),
(14, 10, 33, 0, 2, 100, 100),
(15, 10, 34, 0, 1, 195, 195),
(16, 11, 26, 0, 1, 332, 332),
(17, 11, 24, 0, 1, 643, 643),
(18, 12, 36, 0, 1, 140, 140),
(19, 13, 47, 0, 1, 1000, 1000),
(20, 14, 53, 0, 1, 8000, 8000),
(21, 15, 53, 0, 1, 8000, 8000),
(22, 16, 53, 0, 1, 8000, 8000),
(23, 17, 51, 0, 1, 899, 899),
(24, 18, 51, 0, 1, 899, 899),
(25, 19, 50, 0, 1, 797, 797),
(26, 20, 48, 0, 1, 200, 200),
(27, 21, 50, 0, 1, 797, 797),
(28, 22, 52, 0, 1, 499, 499),
(29, 23, 53, 0, 1, 8000, 8000),
(30, 24, 48, 0, 1, 200, 200),
(31, 25, 50, 0, 1, 797, 797),
(32, 26, 53, 0, 1, 8000, 8000),
(33, 27, 53, 0, 2, 16000, 16000);

-- --------------------------------------------------------

--
-- Table structure for table `payment_request`
--

CREATE TABLE `payment_request` (
  `id` int(255) DEFAULT NULL,
  `user_id` int(255) NOT NULL,
  `amount` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_request`
--

INSERT INTO `payment_request` (`id`, `user_id`, `amount`) VALUES
(NULL, 396, 500),
(NULL, 396, 50);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `product_name` mediumtext COLLATE utf8_bin NOT NULL,
  `product_description` mediumtext COLLATE utf8_bin NOT NULL,
  `product_price` int(100) NOT NULL DEFAULT 0,
  `product_image` mediumtext COLLATE utf8_bin NOT NULL,
  `pro_ratings` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0.0',
  `product_create_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `store_id`, `vid`, `cat_id`, `sub_cat_id`, `child_id`, `product_name`, `product_description`, `product_price`, `product_image`, `pro_ratings`, `product_create_date`) VALUES
(48, 2, 1, 36, 9, 0, 'painting brush', 'A paintbrush is a brush used to apply paint or ink. A paintbrush is usually made by clamping bristles to a handle with a ferrule. They are available in various sizes, shapes, and materials. Thicker ones are used for filling in, and thinner ones are used for details.', 200, '626bb5f48abc7.jpeg', '0.0', '2022-04-29 09:55:00'),
(49, 3, 1, 34, 10, 0, 'Wire Strippers ', 'Another essential electrical specialty tool for homeowners is a good pair of wire strippers. Wire strippers are used to cut and strip insulation from electrical wires. A wire stripper tool has a row of gauged holes for stripping wires of different sizes, and it usually includes cutting jaws for trimming the wire ends. Some types are combination tools that can also be used to crimp wires and to strip the vinyl jacket off NM cable. ', 299, '626bb84d5cace.jpeg', '0.0', '2022-04-29 10:05:01'),
(50, 9, 1, 37, 7, 0, 'steam king iron', 'A clothes iron (also flatiron, smoothing iron, or simply iron) is a small appliance that, when heated, is used to press clothes to remove wrinkles and unwanted creases. Domestic irons generally range in operating temperature from between 121 °C (250 °F) to 182 °C (360 °F).', 797, '626bb90e4f00b.jpeg', '0.0', '2022-04-29 10:08:14'),
(52, 10, 1, 35, 11, 0, 'Adjustable Pipe Wrench ', 'An adjustable pipe wrench is the quintessential metal plumbing tool. It provides tremendous leverage and grip. It is designed to grip round objects (such as pipes) securely by digging its sharp serrated teeth into the pipe with increasing pressure as the wrench is turned. ', 499, '626bbb1160421.jpeg', '0.0', '2022-04-29 10:16:49'),
(53, 11, 1, 38, 12, 4, 'AEGON 4 inch, 850 W Grinding A Metal, Stone, Granite, Cut Metal Sheets Angle Grinder  (100 mm Wheel Diameter)', 'Lock On-Off Switch: Yes.\r\nHigh power and speed for grinding applications.\r\nAdvanced fan system provides maximum airflow prolonging motor life.\r\nSealed toggle.\r\nTool-free adjustable guard allows easy positioning for left or right handed.\r\nCompact gear case allows use in tight and confined areas.\r\nUse Spindle lock for quick and easy disc changes.\r\nAccessible brushes for easy brush replacement and less downtime.', 8000, '626bc185ca840.jpg', '0.0', '2022-04-29 10:44:21'),
(51, 12, 1, 37, 8, 0, 'Olrada Folding Ironing Board/Iron Table with Press Holder ', 'Although the primary purpose of an ironing board is to keep clothes wrinkle-free, it also has multiple uses, which comes in handy in smaller living spaces. Using an ironing board and a hot iron is still the most common way to press clothes', 899, '626bb9a057b86.jpg', '0.0', '2022-04-29 10:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `c_name` text NOT NULL,
  `image` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `c_name`, `image`) VALUES
(38, 'hardware ', '626bbde1cb68c.jpg'),
(37, 'Laundry Services', '626bb172b044e.jpg'),
(36, 'Painters', '626bb04ab5510.jpg'),
(35, 'Plumber', '626bafa8c854b.png'),
(34, 'electrician', '626baf48e99fd.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_child_category`
--

CREATE TABLE `product_child_category` (
  `id` int(255) NOT NULL,
  `cat_id` int(255) NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `child_category` varchar(255) NOT NULL,
  `image` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_child_category`
--

INSERT INTO `product_child_category` (`id`, `cat_id`, `sub_cat_id`, `child_category`, `image`) VALUES
(4, 38, 12, 'Angle Grinders', '626bbf66b0335.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_subcategory`
--

CREATE TABLE `product_subcategory` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_name` varchar(255) NOT NULL,
  `subcat_image` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_subcategory`
--

INSERT INTO `product_subcategory` (`id`, `cat_id`, `subcat_name`, `subcat_image`, `image`) VALUES
(7, 37, 'Ironing‎ ', '', '626bb279b646d.jpeg'),
(8, 37, 'Laundry equipment‎', '', '626bb43069c14.jpeg'),
(9, 36, 'home painting', '', '626bb53205b62.jpeg'),
(10, 34, 'Auto electrician', '', '626bb73f88ac8.png'),
(11, 35, 'Service and Repair', '', '626bba48c1fc6.jpeg'),
(12, 38, 'Grinders', '', '626bbf2c68ef8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `res_id` int(11) NOT NULL,
  `vid` int(10) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `res_name` text NOT NULL,
  `res_name_u` text NOT NULL,
  `res_desc` text NOT NULL,
  `res_desc_u` text NOT NULL,
  `res_website` text NOT NULL,
  `res_phone` text NOT NULL,
  `res_address` text NOT NULL,
  `res_isOpen` text NOT NULL,
  `res_status` text NOT NULL,
  `res_ratings` varchar(255) NOT NULL DEFAULT '0.0',
  `status` text NOT NULL,
  `res_image` text NOT NULL,
  `logo` text NOT NULL,
  `res_video` text NOT NULL,
  `res_url` varchar(255) NOT NULL,
  `mfo` text DEFAULT NULL,
  `monday_from` text NOT NULL,
  `monday_to` text NOT NULL,
  `tuesday_from` text NOT NULL,
  `tuesday_to` text NOT NULL,
  `wednesday_from` text NOT NULL,
  `wednesday_to` text NOT NULL,
  `thursday_from` text NOT NULL,
  `thursday_to` text NOT NULL,
  `friday_from` text NOT NULL,
  `friday_to` text NOT NULL,
  `saturday_from` text NOT NULL,
  `saturday_to` text NOT NULL,
  `sunday_from` text NOT NULL,
  `sunday_to` text NOT NULL,
  `lat` text NOT NULL,
  `lon` text NOT NULL,
  `approved` int(11) NOT NULL DEFAULT 0,
  `res_create_date` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`res_id`, `vid`, `cat_id`, `res_name`, `res_name_u`, `res_desc`, `res_desc_u`, `res_website`, `res_phone`, `res_address`, `res_isOpen`, `res_status`, `res_ratings`, `status`, `res_image`, `logo`, `res_video`, `res_url`, `mfo`, `monday_from`, `monday_to`, `tuesday_from`, `tuesday_to`, `wednesday_from`, `wednesday_to`, `thursday_from`, `thursday_to`, `friday_from`, `friday_to`, `saturday_from`, `saturday_to`, `sunday_from`, `sunday_to`, `lat`, `lon`, `approved`, `res_create_date`) VALUES
(1, 4, 13, 'Cleaning Services Inc.', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', 'https://primocys.com/', '9824614016', '606-3727 Ullamcorper. Street\r\nRoseville NH 11523', '', '', '4.5', '', '61c59a9ab83ff.jpg::::61c59a9ab93a2.jpg', '61c59a9ab96a8.jpg', '', '', NULL, '10:00 AM', '08:00 PM', '10:00 AM', '08:00 PM', '10:00 AM', '08:00 PM', '10:00 AM', '08:00 PM', '10:00 AM', '08:00 PM', '10:00 AM', '08:00 PM', '10:00 AM', '08:00 PM', '39.085407', '-94.586143', 0, '1640340122'),
(2, 4, 13, 'Rocket Maids LA', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', 'https://primocys.com/', '7867138615', 'San Antonio MI 47096', '', '', '4.0', '', '61c5a029df53a.jpg::::61c5a029dffb7.jpg::::61c5a029e06db.jpg::::61c5a029e0a04.jpg', '61c5a029e0c56.jpg', '', '', NULL, '10:00 AM', '12:00 PM', '10:00 AM', '12:00 PM', '10:00 AM', '12:00 PM', '10:00 AM', '12:00 PM', '10:00 AM', '12:00 PM', '10:00 AM', '12:00 PM', '10:00 AM', '12:00 PM', '23.0708888', '72.5159154', 0, '1640341545'),
(3, 4, 28, 'John Hopkins Medical Service', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '', 'https://primocys.com/', '6543935734', '191-103 Integer Rd.\r\nCorona New Mexico 08219', '', '', '4.0', '', '61c5b35bcde24.jpg::::61c5b35bd200b.png::::61c5b35bd268f.jpg', '61c5b35bd2941.jpg', '', '', NULL, '10:00 AM', '20:00 PM', '10:00 AM', '20:00 PM', '10:00 AM', '20:00 PM', '10:00 AM', '20:00 PM', '10:00 AM', '20:00 PM', '10:00 AM', '20:00 PM', '', '', '23.0708888', '72.5159154', 0, '1640346459'),
(4, 2, 29, 'Midas Auto Care', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', 'https://www.midas.com/', '3142446306', 'Nyssa Vazquez\r\n511-5762 At Rd.\r\nChelsea MI 67708', '', '', '4.0', '', '61c5b72c3e4be.jpg::::61c5b72c3efdc.jpg::::61c5b72c3f2fe.jpg', '61c5b72c3fd17.jpg', '', '', NULL, '8:00 AM', '22:00 PM', '8:00 AM', '22:00 PM', '8:00 AM', '22:00 PM', '8:00 AM', '22:00 PM', '8:00 AM', '22:00 PM', '8:00 AM', '22:00 PM', '8:00 AM', '22:00 PM', '23.0708888', '72.5159154', 0, '1640347436'),
(5, 2, 29, 'NuWash Car Pvt Ltd', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '', 'https://nuwashcarwash.com/', '41416165122', 'Lawrence Moreno\r\n935-9940 Tortor. Street\r\nSanta Rosa MN 98804', '', '', '4.0', '', '61c5b9715f059.jpg::::61c5b9715fbfa.jpg::::61c5b9715ff05.jpg', '61c5b9716178c.jpg', '', '', NULL, '08:00 AM', '20:00 PM', '08:00 AM', '20:00 PM', '08:00 AM', '20:00 PM', '08:00 AM', '20:00 PM', '08:00 AM', '20:00 PM', '08:00 AM', '20:00 PM', '08:00 AM', '20:00 PM', '23.0708888', '72.5159154', 0, '1640348017'),
(6, 2, 14, 'Germ Shield Pro Com', '', 'Germ Shield Pro service offers repertoire of Disinfectant and Antimicrobial products.  Antimicrobial is made up of odorless, no off-gassing, colorless, water-based solutions. When professionally Electrostatic  sprayed on surfaces, a durable, positive charged Antimicrobial coating is produced which ruptures the germ cell’s membrane to create a “A Clean Mechanical Kill”  (Think of electrically charged, micro swords).\r\n\r\nDisinfectant used is proven to kill a wide range of viruses and bacteria, won’t contribute to the formation of mutating “super bugs,” and does not contain volatile organic compounds (VOCs).  Kills 99.999% of food borne bacteria, including E. coli, Salmonella, and Listeria in less than 60 seconds. All products used for our service are EPA Registered.', '', 'https://germshieldpro.com/', '5165164112', 'Lawrence Moreno\r\n935-9940 Tortor. Street\r\nSanta Rosa MN 98804', '', '', '4.0', '', '61c5bd6e6232e.jpg::::61c5bd6e62f78.png', '61c5bd6e64db4.jpg', '', '', NULL, '10:00 AM', '18: 00 PM', '10:00 AM', '18: 00 PM', '10:00 AM', '18: 00 PM', '10:00 AM', '18: 00 PM', '10:00 AM', '18: 00 PM', '', '', '', '', '23.0708888', '72.5159154', 0, '1640349038'),
(8, 1, 31, 'All in One', '', 'Hello', '', '@', '9898989898', 'Indore, Madhya Pradesh, India', '', '', '0.0', '', '6204aad5e786a.jpg', '6204aad5e828b.jpg', '', '', NULL, '10:00am', '08:00 Pm', '10:00am', '08:00 Pm', '10:00am', '08:00 Pm', '10:00am', '08:00 Pm', '10:00am', '08:00 Pm', '10:00am', '08:00 Pm', '10:00am', '12:00pm', '22.7195687', '75.8577258', 0, '1644473046'),
(9, 1, 31, 'Quick services', '', 'Quick services', '', '@', '5454545454', 'Indore, Madhya Pradesh, India', '', '', '0.0', '', '6204f97c500b4.jpg', '6204f97c50741.jpg', '', '', NULL, '10:00am', '08:00pm', '10:00am', '08:00pm', '10:00am', '08:00pm', '10:00am', '08:00pm', '10:00am', '08:00pm', '10:00am', '08:00pm', '10:00am', '08:00pm', '22.7195687', '75.8577258', 0, '1644493180'),
(10, 1, 14, 'Indus Tanks and Pipes ', '', 'We sale all types of Plumbing Pipes and fittings ', '', 'industanks.com', '9922650000', 'Jaripatka, Nagpur, Maharashtra, India', '', '', '0.0', '', '6214f6fec31f9.jpg', '6214f6fec3a4e.png', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '21.1820557', '79.0859952', 0, '1645541119'),
(11, 42, 13, 'alpha store', '', 'dsfcwdfcwef', '', '', '7896321585', '', '', '', '0.0', '', '621e1ac657bec.jpg', '621e1ac658e62.jpg', '', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', 0, '1646136984'),
(12, 43, 13, 'Sameer Store', '', 'Home cleaning', '', '', '8754787485', 'Indore, Madhya Pradesh, India', '', '', '0.0', '', '621f12c7607cf.jpg', '621f12c761b6c.png', '', '', NULL, '10:00', '20:00', '', '', '', '', '', '', '', '', '', '', '', '', '22.7195687', '75.8577258', 0, '1646203591');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `rev_id` int(11) NOT NULL,
  `rev_user` int(11) NOT NULL,
  `rev_res` int(11) NOT NULL,
  `rev_stars` varchar(100) NOT NULL,
  `rev_text` mediumtext NOT NULL,
  `rev_date` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`rev_id`, `rev_user`, `rev_res`, `rev_stars`, `rev_text`, `rev_date`) VALUES
(2, 393, 2, '4.0', 'Test review', '1635244817'),
(3, 390, 3, '4.0', 'Test review', '1637147635'),
(4, 390, 4, '4.0', 'Test review', '1637147635'),
(5, 390, 5, '4.0', 'Test review', '1637147635'),
(6, 390, 6, '4.0', 'Test review', '1637147635');

-- --------------------------------------------------------

--
-- Table structure for table `reviews_product`
--

CREATE TABLE `reviews_product` (
  `rev_id` int(11) NOT NULL,
  `rev_user` int(11) NOT NULL,
  `rev_pro` int(11) NOT NULL,
  `rev_stars` varchar(100) NOT NULL,
  `rev_text` mediumtext NOT NULL,
  `rev_date` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews_product`
--

INSERT INTO `reviews_product` (`rev_id`, `rev_user`, `rev_pro`, `rev_stars`, `rev_text`, `rev_date`) VALUES
(1, 25, 1, '4.0', 'Test review', '1624433298'),
(3, 1, 1, '5', 'hello', '1624512418'),
(4, 196, 1, '1.0', 'hello ', '1624512628'),
(5, 196, 2, '5.0', 'test6', '1624512835'),
(6, 196, 2, '4.0', 'test test', '1624513150'),
(7, 196, 2, '4.0', 'test8', '1624513237'),
(8, 233, 5, '4.0', 'wah', '1628088946'),
(9, 304, 4, '5.0', 'ok', '1629728245');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `childcat_id` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  `service_name` text NOT NULL,
  `service_price` text NOT NULL,
  `service_description` text NOT NULL,
  `service_image` text NOT NULL,
  `price_unit` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `service_ratings` varchar(255) NOT NULL DEFAULT '0.0',
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `cat_id`, `subcat_id`, `childcat_id`, `res_id`, `v_id`, `service_name`, `service_price`, `service_description`, `service_image`, `price_unit`, `duration`, `service_ratings`, `created_date`) VALUES
(1, 13, 0, 0, 1, 4, 'Post Party Cleaning', '200', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '61c59b9376c57.jpg::::61c59b9377b2b.jpg', 'Hourly', '5', '4.0', '2021-12-24 10:06:11'),
(3, 13, 0, 0, 2, 4, 'Home Cleaning Services in New York', '300', 'At Rocket Maids LA, we aim to provide home deep cleaning services that allow for quick and efficient cleanup. This will allow you to live a more comfortable and clean life. Keeping your home clean and tidy requires regular attention. As you live your busy life, your floors, counters and other surfaces collect dust and dirt, building up over time to create a less than clean aesthetic. While staying on top of these minor cleaning tasks is possible, there are many areas of your home that can go unnoticed.', '61c5a0874e97c.jpg::::61c5a08750568.jpg::::61c5a08751ae4.jpg::::61c5a08751e32.jpg', 'Hourly', '2', '4', '2021-12-24 10:27:19'),
(4, 13, 0, 0, 2, 4, 'Home Cleaning Services in Los Angeles', '150', 'At Rocket Maids LA, we aim to provide home deep cleaning services that allow for quick and efficient cleanup. This will allow you to live a more comfortable and clean life. Keeping your home clean and tidy requires regular attention. As you live your busy life, your floors, counters and other surfaces collect dust and dirt, building up over time to create a less than clean aesthetic. While staying on top of these minor cleaning tasks is possible, there are many areas of your home that can go unnoticed.', '61c5a0874e97c.jpg::::61c5a08750568.jpg::::61c5a08751ae4.jpg::::61c5a08751e32.jpg', 'Hourly', '2', '4.0', '2021-12-24 10:27:19'),
(5, 28, 0, 0, 3, 4, 'Doctor Nursing care from Home', '500', 'The most common form of home health care is some type of nursing care depending on the person\'s needs. In consultation with the doctor, a registered nurse will set up a plan of care. Nursing care may include wound dressing, ostomy care, intravenous therapy, administering medication, monitoring the general health of the patient, pain control, and other health support.', '61c5b39ccb218.jpg::::61c5b39ccbce0.png::::61c5b39ccc261.jpg', 'Hourly', '1', '4.0', '2021-12-24 11:48:44'),
(6, 28, 0, 0, 3, 4, 'Physical, occupational, and/or speech therapy', '400', 'Some patients may need help relearning how to perform daily duties or improve their speech after an illness or injury. A physical therapist can put together a plan of care to help a patient regain or strengthen use of muscles and joints. An occupational therapist can help a patient with physical, developmental, social, or emotional disabilities relearn how to perform such daily functions as eating, bathing, dressing, and more. A speech therapist can help a patient with impaired speech regain the ability to communicate clearly.', '61c5b593461cd.jpg::::61c5b59346b63.jpg::::61c5b593471a4.jpg::::61c5b5934783c.jpg', '350', '3', '4.0', '2021-12-24 11:57:07'),
(7, 29, 0, 0, 4, 2, 'Car Windshield Wipers & Lights', '250', 'We always perform a Midas Touch Courtesy Check1 during your routine scheduled vehicle maintenance. Plus, our Midas Auto Service Experts® take the time to thoroughly explain your vehicle’s condition. We’ll let you know which problems are urgent (and which can wait). We discuss the best options for your budget and provide a written estimate before making any repairs.', '61c5b7a21fdd2.jpg::::61c5b7a220716.jpg::::61c5b7a220a1b.jpg', 'Fixed', '8', '4.0', '2021-12-24 12:05:54'),
(8, 29, 0, 0, 4, 2, 'Brakes and Brake Repair', '200', 'We created Midas Secure Stop brake service for you. We hate surprises (at least behind the wheel) as much as you do. But we know change is inevitable. Brake pads and rotors wear out from the immense friction and heat they encounter. Air gets into brake lines. And your brake system has dozens of other components that can wear out at any time. It takes Midas expertise to bring your braking confidence back.', '61c5b7f6e8595.jpg::::61c5b7f6e8e5b.jpg', 'Hourly', '1', '4.0', '2021-12-24 12:07:18'),
(9, 29, 0, 0, 5, 2, 'Fleet Wash & Cleaning', '150', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '61c5b9b8df9c5.jpg::::61c5b9b8e050e.jpg::::61c5b9b8e0818.jpg', 'Fixed', '1', '4.0', '2021-12-24 12:14:48'),
(10, 14, 0, 0, 6, 2, 'Sanitizing Service for high traffic Businesses, Offices, and Stores', '600', 'with coworkers, clients, and customers day after day. Unfortunately, due to manual sanitizing service were also sharing bacteria, germs, and mold that are hidden in plain sight. Once one person becomes sick or just touches a harmful pathogen, that person can quickly spread their germs with the very next surface they touch. This instantly places the entire office or business at RISK from cross-contamination related illnesses.', '61c5bda61d28d.jpg::::61c5bda61db02.png', 'Fixed', '12', '4.0', '2021-12-24 12:31:34'),
(12, 31, 0, 0, 8, 1, 'dfghfs', '200', 'erfetgy', '6204ab3797059.jpg', 'Fixed', '85', '0.0', '2022-02-10 06:05:43'),
(13, 30, 0, 0, 9, 1, 'xyz service', '5000', 'v', '6204fbbd02497.jpg', 'Fixed', '20', '0.0', '2022-02-10 11:49:17'),
(14, 13, 0, 0, 1, 1, 'Home cleaning', '1000', 'sfdb ', '621738620fb3a.jpg', 'Fixed', '9', '0.0', '2022-02-24 07:48:50'),
(15, 13, 0, 0, 1, 1, 'bath cleaning', '50', 'fgh drt', '621738ed38626.jpg', 'Hourly', '1', '0.0', '2022-02-24 07:51:09'),
(16, 13, 0, 0, 1, 1, 'Clean & shine', '1000', 'Clean & shine', '621c84be19e50.png', 'Fixed', '1', '0.0', '2022-02-28 08:15:58'),
(17, 13, 0, 0, 8, 1, 'Home cleaning', '200', 'Lore zpodfsvbh ', '621dc21e9bd96.jpg', 'Hourly', '2', '0.0', '2022-03-01 06:50:06'),
(18, 47, 0, 0, 11, 1, 'offfice', '1234', 'wsefadfc', '62441f62a2d1d.jpg', 'Fixed', '213', '0.0', '2022-03-30 09:14:10'),
(20, 47, 28, 16, 1, 1, 'school', '23', 'vdbzdxbvwr443e', '62442245d3c1b.png', 'Fixed', '234', '0.0', '2022-03-30 09:26:29'),
(21, 49, 33, 24, 12, 1, 'clean', '1000', 'dummy', '624d76c4ce3c7.jpg', 'Fixed', '5000', '0.0', '2022-04-06 11:17:24');

-- --------------------------------------------------------

--
-- Table structure for table `services_reviews`
--

CREATE TABLE `services_reviews` (
  `rev_id` int(11) NOT NULL,
  `rev_user` int(11) NOT NULL,
  `rev_service` int(11) NOT NULL,
  `rev_stars` varchar(100) NOT NULL,
  `rev_text` text NOT NULL,
  `rev_date` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services_reviews`
--

INSERT INTO `services_reviews` (`rev_id`, `rev_user`, `rev_service`, `rev_stars`, `rev_text`, `rev_date`) VALUES
(1, 394, 3, '4.0', 'Great Service....!!!!! ', '1640342755'),
(2, 393, 3, '4.0', 'Lorem Ipsum is...', '1640342755'),
(3, 392, 1, '4.0', 'Germ Shield...', '1640342755'),
(4, 392, 2, '4.0', 'Germ Shield...', '1640342755'),
(5, 392, 3, '4.0', 'Germ Shield...', '1640342755'),
(6, 392, 4, '4.0', 'Germ Shield...', '1640342755'),
(7, 392, 5, '4.0', 'Germ Shield...', '1640342755'),
(8, 392, 6, '4.0', 'Germ Shield...', '1640342755'),
(9, 392, 7, '4.0', 'Germ Shield...', '1640342755'),
(10, 392, 8, '4.0', 'Germ Shield...', '1640342755'),
(11, 392, 9, '4.0', 'Germ Shield...', '1640342755'),
(12, 392, 10, '4.0', 'Germ Shield...', '1640342755');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(255) NOT NULL,
  `cat_id` int(255) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `sub_image` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `cat_id`, `subcategory`, `sub_image`) VALUES
(1, 24, 'Test', 'a.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_name_a` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `cat_id`, `c_name`, `c_name_a`, `icon`, `img`, `type`) VALUES
(26, 36, 'tyuytu', '', '62431b43d9dc9.jpg', '62431b43d981d.jpg', 'vip'),
(28, 47, 'laptop', '', '6243f10dc553d.png', '6243f10dc4be0.png', 'vip'),
(29, 47, 'desktop', '', '6243f1879ed07.png', '6243f1879e273.png', 'vip'),
(30, 34, 'apple', '', '62442bd3f3d8f.png', '62442bd3f2103.jpg', 'vip'),
(33, 49, 'cleaner 2', '', '', '624d767e88e72.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `group_name` text NOT NULL,
  `review_text` text NOT NULL,
  `created_date` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `cat_id`, `name`, `group_name`, `review_text`, `created_date`) VALUES
(2, 2, 'Red-cart', 'Test', 'Red-cart', '1624885662'),
(4, 2, 'Internet11', 'Test', 'Internet11Internet11Internet11Internet11', '1624885662');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial_category`
--

CREATE TABLE `testimonial_category` (
  `id` int(11) NOT NULL,
  `c_name` text NOT NULL,
  `image` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonial_category`
--

INSERT INTO `testimonial_category` (`id`, `c_name`, `image`) VALUES
(2, 'Red-cart', 'Red-cart.png');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `c_name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `c_name`) VALUES
(1, '1 BHK'),
(2, '2 BHK'),
(3, '3 BHK'),
(8, '4 BHK'),
(5, '100 Square Ft.'),
(9, '5 BHK'),
(10, 'Home'),
(11, 'Office'),
(12, 'Patna'),
(13, 'Gas Station General Areas'),
(14, 'rtt'),
(15, 'home');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` mediumtext NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_pic` mediumtext NOT NULL,
  `facebook_id` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `isGold` int(11) NOT NULL DEFAULT 0,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `country` text NOT NULL,
  `device_token` varchar(255) NOT NULL,
  `otp` int(11) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `mobile`, `password`, `profile_pic`, `facebook_id`, `type`, `isGold`, `address`, `city`, `country`, `device_token`, `otp`, `date`) VALUES
(2, 'userDemo1', 'user1@demo.com', '8978979889', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', 'frWX5wNpdkHusmPA1gYCIY:APA91bGmOGchqVtrSk4cQhvEtKniusmw44DPDw6FxUq6ncPsu8Qr7CCNMJJmEQLmVkymYMTW61V-mcTqX2ACsTgOVVgAalOyP0O3A25FmdswHRD1rHWLFusrmVglLPZVZNIph4jYtRTf', 6295, '1600180751'),
(28, 'hy', 'koureissi@me.com', '', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, '', '', '', '', 0, '1600196075'),
(32, 'nyam', 'dionfs2@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1600208339'),
(33, 'hedywstylz', '760764687@qq.com', '', 'f57ba9e0440cedd083db02aefc8d6b30', '', '', '', 0, '', '', '', '', 0, '1600234750'),
(34, 'spanraj', 'pandian.subram@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1600234917'),
(35, 'marangor', 'aarango1018@gmail.com', '', 'cd831effe9c8ed8b516744b78be6032d', '', '', '', 0, '', '', '', '', 0, '1600242241'),
(36, 'chtdrn', 'cht@cht.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1600245850'),
(37, 'yousseg', 'tarradayoussef@gmail.com', '', 'fa58f01ba409e4db54aac529f2af79b6', '', '', '', 0, '', '', '', '', 0, '1600251555'),
(38, 'bribin', 'bribin@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1600253994'),
(40, 'Govind', 'gmoghekar@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1600261024'),
(41, '1234', 'test@test.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1600261728'),
(42, 'Ali veli', 'aliveli@hotmail.com', '', '3415362c0ebd341a39786db583d7f1bd', '', '', '', 0, '', '', '', '', 0, '1600277600'),
(43, 'mail', 'mail@rfg.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1600292487'),
(44, 'Yes', 'Yes@yes.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1600292560'),
(45, 'sai', 'sai05@yahoo.com', '', 'f407fc38614206b09abc60ea4de763a5', '', '', '', 0, '', '', '', '', 0, '1600328242'),
(46, 'update', 'updateurtrend@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1600337346'),
(47, 'greentek', 'gtek.tn@gmail.com', '', '5fe1fff9c82e9720628f450e34c7f9d8', '', '', '', 0, '', '', '', '', 0, '1600342268'),
(48, 'dj897', 'dj897@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1600348926'),
(49, 'daif', 'd.alzahrani@gmail.com', '', '1a29a03365d394457f8234a6e77f45d4', '', '', '', 0, '', '', '', '', 0, '1600367783'),
(50, 'testerdemo', 'tester@gmail.com', '', 'e807f1fcf82d132f9bb018ca6738a19f', '', '', '', 0, '', '', '', '', 0, '1600369198'),
(51, 'sheu', 'sheu@me.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1600374756'),
(52, 'tsawadog', 'worktiti95@gmail.com', '', '320d21956bbcbb5b87c4ea44d02065e4', '', '', '', 0, '', '', '', '', 0, '1600400937'),
(53, 'ali', 'info@izleoyna.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1600419484'),
(54, 'anil', 'anil@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1600451055'),
(55, 'Dara', 'daratep0404@gmail.com', '', 'bf532f19dc1576fdacb00ae21cf3cdcc', '', '', '', 0, '', '', '', '', 0, '1600454861'),
(56, 'nitin', 'hhm@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1600468303'),
(57, 'zica', 'primocys@gmail.com', '', '5cda0cd6e6cce148075eb3d460953e7b', '5f71c7d38d0a8.jpg', '', '', 0, '', '', '', 'dI4m-OP4R5u_JqyKC9FA0-:APA91bGJ2M6_sTjjaCcQ4msOC0prP9fQtDEw0gV-TutLf50kDbJRqvOESIG6aKW2ZhYO1kzideSfT60Rp8V0l2TS5y3-zbchIzmQn1yJgo7u_02MLFlNCDCZ_joFbxIVgmjv7-LrKRgf', 0, '1600477638'),
(58, 'asd', 'asd@asd.com', '', 'bfd59291e825b5f2bbf1eb76569f8fe7', '', '', '', 0, '', '', '', '', 0, '1600515012'),
(59, 'mahmud', 'nmahmud0928@gmail.com', '', '22d7fe8c185003c98f97e5d6ced420c7', '', '', '', 0, '', '', '', '', 0, '1600519838'),
(60, 'hop', 'dijitalfirtina@gmail.com', '', '5c8198e579b5250f0065c4a43a6c19cb', '', '', '', 0, '', '', '', '', 0, '1600554523'),
(61, 'damiloaqui', 'recebi@email.com', '', '587682f521365a88875bd356c25f9ef5', '', '', '', 0, '', '', '', '', 0, '1600564085'),
(62, 'yahooamar', 'amarnath123456789@yahoo.com', '', 'd09e711ba5fe0b9bcf6f397f627b6478', '', '', '', 0, '', '', '', '', 0, '1600571684'),
(63, 'Lohithkumar', 'kumarrlohith@gmail.com', '', '578da0abf6733d8e1160a2debd3e91de', '', '', '', 0, '', '', '', '', 0, '1600621339'),
(64, 'Ahmed', 'poomlg61@gmail.com', '', 'd5c6ae391654be95a8199919d63b34a2', '', '', '', 0, '', '', '', '', 0, '1600634585'),
(65, 'ada', 'ada@ada.com', '', '0df68fe44d69a5894dec0ecf45760165', '', '', '', 0, '', '', '', '', 0, '1600652095'),
(66, 'zeemuse', 'zee@qq.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1600670972'),
(67, 'pk@gmail.com', 'pk@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1600691601'),
(68, 'Bobur', 'boburbakhodirov@gmail.com', '', 'ef268e7efd089739afc426dd21822ed6', '', '', '', 0, '', '', '', '', 0, '1600704369'),
(69, 'Rishi', 'rishabhchoudhary700@gmail.com', '', '71e41a17623713bb12ee0b3c3b9cd96c', '', '', '', 0, '', '', '', '', 0, '1600745057'),
(70, 'peyman', 'peyman.zeroone@gmail.com', '', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, '', '', '', '', 0, '1600776045'),
(71, 'demi', 'vikrant241993@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1600784380'),
(72, 'caafinet', 'caafinetit@gmail.com', '', '59ecee2fa992f0562f9ea657c93a22a1', '', '', '', 0, '', '', '', '', 0, '1600816090'),
(73, 'kevinzwpeda', 'ke@vik.cc', '', 'c718b077ea57fd77956ca234f566e944', '', '', '', 0, '', '', '', '', 0, '1600819011'),
(74, 'chandra', 'chandra22121@gamil.com', '', 'e807f1fcf82d132f9bb018ca6738a19f', '', '', '', 0, '', '', '', '', 0, '1600830153'),
(76, 'abd', 'abdokubo@gmail.com', '', 'e19d5cd5af0378da05f63f891c7467af', '', '', '', 0, '', '', '', '', 0, '1600831522'),
(77, 'prosper', 'prospertinarwo@gmail.com', '', '6a5be123feeca3a96347a5d131194ba9', '', '', '', 0, '', '', '', '', 0, '1600887853'),
(78, 'test', 'test@email.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1600932076'),
(79, 'Ajay1812', 'chauhanajay1812@gmail.com', '9510890837', 'e10adc3949ba59abbe56e057f20f883e', '5fc63d4fa0a60.png', '', '', 0, 'Bodakdev Ahmedabad', 'Ahmedabad', 'India', '', 0, '1600937891'),
(80, 'tes', 'tes@gmail.com', '', 'de09f21565d494e0883acfd1cc030a5a', '', '', '', 0, '', '', '', '', 0, '1600939624'),
(81, 'vrushali', 'vrushigunjal@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1600948747'),
(82, 'manatech', 'azar.developer@gmail.com', '', 'cc3798c61187e02a062b47c416ecaf72', '', '', '', 0, '', '', '', '', 0, '1600974205'),
(83, 'Eugene', 'jt.mchs@mail.ru', '', 'd8578edf8458ce06fbc5bb76a58c5ca4', '5f6d0efb44ab4.jpg', '', '', 0, '', '', '', '', 0, '1600982192'),
(84, 'leo', 'm@hotmail.com', '', 'f1d9be51880dd631aee0c1b54d406443', '', '', '', 0, '', '', '', '', 0, '1601031711'),
(85, 'msdhande', 'mayurdhande012345@gmail.com', '', 'fedd5a126bd8f361b5a2e390e7f6ca8d', '', '', '', 0, '', '', '', '', 0, '1601041340'),
(86, 'satyajit', 'satyajit9830@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1601113810'),
(87, 'chandan', 'chayad@gmail.com', '', 'c7d01b027d4369c845d6e41269807dc4', '', '', '', 0, '', '', '', '', 0, '1601113885'),
(88, 'test124', 'test124@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1601260308'),
(89, 'aaaa', 'a@a.com', '', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', '', 0, '1601285961'),
(90, 'golurat', 'golu88rathod@gmail.com', '', 'cfb80286f431e1cd72f94ae1fe50cca7', '', '', '', 0, '', '', '', '', 0, '1601294006'),
(91, 'Samar chavhan', 'chavhansamar@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1601297038'),
(92, 'fateh', 'officialfatehsinghh@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1601308409'),
(93, 'techvinu', 'chenguballavinodkumar@gmail.com', '', 'abd718b6986c65c3271c9684700e4caf', '', '', '', 0, '', '', '', '', 0, '1601326539'),
(94, 'Luke', 'tsecheng@gmail.com', '', 'f150f3bec5617dc6f2e208e978593be8', '', '', '', 0, '', '', '', '', 0, '1601329219'),
(95, 'tes', 'madani.id@gmail.com', '', 'b93939873fd4923043b9dec975811f66', '', '', '', 0, '', '', '', '', 0, '1601381377'),
(96, 'mohammed', 'mohammedomar@outlook.sa', '', '4281324ed4ed0fdf07bbb0cdabb70182', '', '', '', 0, '', '', '', '', 0, '1601394650'),
(97, 'demo', 'demo@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1601445916'),
(98, 'sadek', 'a@a.com', '', '4188bd9ad1e2c2f2d6a429c29ec28532', '', '', '', 0, '', '', '', '', 0, '1601447389'),
(99, 'esy', 'test@gmail.com', '', 'cc03e747a6afbbcbf8be7668acfebee5', '', '', '', 0, '', '', '', '', 0, '1601461015'),
(100, 'anta2019', 'taufiqwebsite@gmail.com', '', 'd66eccc1d22b11a48bc70e2d7f74ced5', '', '', '', 0, '', '', '', '', 0, '1601462352'),
(101, 'sam', 'al_mughairi@hotmail.com', '', 'e807f1fcf82d132f9bb018ca6738a19f', '', '', '', 0, '', '', '', '', 0, '1601468753'),
(102, 'mohammad Esmail ', 'moh.esmail@gmail.com', '', '17358c32a7441c6679a1a4b8aa5cda43', '', '', '', 0, '', '', '', '', 0, '1601474579'),
(103, 'shuvo', 'saiedislamshuvo308@gmail.com', '', '9ca9154ef4ef3cfa6790113c02e27ede', '', '', '', 0, '', '', '', '', 0, '1601479417'),
(104, 'prasad', 'maprasad2018@gmail.com', '', 'a434a3fc19597d3f6738bee07b5b751e', '', '', '', 0, '', '', '', '', 0, '1601650468'),
(105, 'demo@user.com', 'demo@user.com', '', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', '', 0, '1601656151'),
(106, 'deval123', 'dj123@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1601717700'),
(107, 'mohamed', 'mohamed.yahya@almaha-iq.com', '', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, '', '', '', '', 0, '1601884245'),
(108, 'shuvo', 'saiedislam.shuvo1124@gmail.com', '', '9ca9154ef4ef3cfa6790113c02e27ede', '', '', '', 0, '', '', '', '', 0, '1601894510'),
(109, 'testessa', 'xicayi1405@zuperholo.com', '', 'dc05bd6d00828b311c20340d9c524305', '', '', '', 0, '', '', '', '', 0, '1601919178'),
(110, 'nemo123', 'nemzaa1312@gmail.com', '', '1309ffb2386be57fca27ee59c75d1fde', '', '', '', 0, '', '', '', '', 0, '1601931002'),
(111, 'htheanh@gmail.com', 'htheanh@gmail.com', '', 'd1535f6d6223a1b91b7c5054c861a8b7', '', '', '', 0, '', '', '', '', 0, '1601965630'),
(112, 'naveen', 'trendingnaveen@gmail.com', '', 'd4395a5856617fa4afe8c5cd2eed3912', '', '', '', 0, '', '', '', '', 0, '1602044063'),
(113, 'arpanprimo', 'arpan.prio@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '5f7d72b4e8d07.jpg', '', '', 0, '', '', '', '', 0, '1602056774'),
(114, 'abcd', 'abeesh4uall@gmail.com', '', '25f9e794323b453885f5181f1b624d0b', '', '', '', 0, '', '', '', '', 0, '1602132286'),
(115, 'test', 'test@yopmail.com', '', 'd2a219abf4f9c86aa97c9cb9005dee7a', '', '', '', 0, '', '', '', '', 0, '1602133022'),
(116, 'alfonsinmoi2 ', 'alfonsinmoi2@hotmail.com', '', '226039d954722f6b25f2bab26f6a30d9', '', '', '', 0, '', '', '', '', 0, '1602173119'),
(117, 'ismailak', 'ismailak@gmail.com', '', '64c1a11e5c628071c475a5d1eeec4337', '', '', '', 0, '', '', '', '', 0, '1602176421'),
(118, 'askar', 'byaskar@gmail.com', '', 'f1282c55d3a6d4be69e7d015eb137f25', '', '', '', 0, '', '', '', '', 0, '1602188362'),
(119, 'Rakesh', 'rakesh@yopmail.com', '', 'dc06698f0e2e75751545455899adccc3', '', '', '', 0, '', '', '', '', 0, '1602237987'),
(120, 'Sreeyesh', 'sreeyeshk08@gmail.com', '', '5f4dcc3b5aa765d61d8327deb882cf99', '', '', '', 0, '', '', '', '', 0, '1602251312'),
(121, 'tesy', 'gotest@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1602251905'),
(122, 'cok', 'admsgs@gmail.com', '', 'b078b4a5f97eefecec40bd02e49b8358', '', '', '', 0, '', '', '', '', 0, '1602268578'),
(123, 'asu', 'topeng@gmail.com', '', 'b078b4a5f97eefecec40bd02e49b8358', '', '', '', 0, '', '', '', '', 0, '1602268629'),
(124, 'Sk', 'sk@gmail.com', '', '5f4dcc3b5aa765d61d8327deb882cf99', '', '', '', 0, '', '', '', '', 0, '1602268754'),
(125, 'hot', 'eng.mohamedmega@gmail.com', '', 'cdf74e8a5687f51da319044af011e2aa', '', '', '', 0, '', '', '', '', 0, '1602285908'),
(126, 'norvin', 'norvintfranklin@gmail.com', '', '7376af05357e0e3839f20a6debf0a02c', '', '', '', 0, '', '', '', '', 0, '1602300893'),
(127, 'Abish', 'abeesh4uall@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1602303423'),
(128, 'me', '@gmail.com', '', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, '', '', '', '', 0, '1602319686'),
(129, 'Seoinet', 'seoinetru@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1602361733'),
(130, 'randy', 'randyigualguana@gmail.com', '', '951e25236c5feecf7e3b5ffb919c9107', '', '', '', 0, '', '', '', '', 0, '1602387516'),
(131, 'aa', 'aaaa@gmail.com', '', '594f803b380a41396ed63dca39503542', '', '', '', 0, '', '', '', '', 0, '1602407665'),
(132, 'you', 'you@you.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1602448231'),
(133, 'ankushsingh', '01ankush.singh@gmail.com', '', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, '', '', '', '', 0, '1602564347'),
(134, 'hola', 'guebeplasti@gmail.com', '', 'c629a1e014e2c0daa88dcf597d0ce319', '5f853213c6061.jpg', '', '', 0, '', '', '', '', 0, '1602564567'),
(135, 'sachin', 'sachin.jkesindia@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1602567329'),
(136, 'atish', 'atish.net@gmail.com', '', '4e8c6080ccea68b11d765bfe8e81cc8f', '', '', '', 0, '', '', '', '', 0, '1602603503'),
(137, 'loknath', 'loknath@yopmail.com', '', 'dc06698f0e2e75751545455899adccc3', '', '', '', 0, '', '', '', '', 0, '1602663459'),
(138, 'gautam singh', 'gautammanral910@gmail.com', '', '8d25678e57d29f7ea940fba2f84daf04', '', '', '', 0, '', '', '', '', 0, '1602665093'),
(139, 'yay', 'ted@mail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1602713866'),
(140, 'yido', 'yidogeb@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1602755198'),
(141, 'thanks ', 'thanks@gmail.com', '', '8d2d815105ef54785902a68dd7655c2a', '', '', '', 0, '', '', '', '', 0, '1602758105'),
(142, 'murtada', 'murtada.altaee@gmail.com', '', '3347a705e7ab944a2c5fad5fd68a2eca', '', '', '', 0, '', '', '', '', 0, '1602838026'),
(143, 'test', 'test@gmaul.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1602855526'),
(144, 'hola', 'efsr.colombia@gmail.com', '', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, '', '', '', '', 0, '1602857075'),
(145, 'hgggg', 'vvfff@bbb.cc', '', '25f9e794323b453885f5181f1b624d0b', '', '', '', 0, '', '', '', '', 0, '1602884835'),
(146, 'nvfgggccf', 'vvyvcfhc@hbvv.com', '', '75042742b4e054112cfabb26fa1914a2', '', '', '', 0, '', '', '', '', 0, '1602884864'),
(147, 'Anukriti kanojiya', 'ranjeetamaheshkano@gmail.com', '', '53977e83cd84ac70272e98c611bb736e', '', '', '', 0, '', '', '', '', 0, '1602946276'),
(148, 'youssef', 'tarradayoussef@gmail.com', '', 'db238271a08094970a75728e63b11a98', '', '', '', 0, '', '', '', '', 0, '1602951079'),
(149, 'fadimansours@gmail.com', 'fadimansours@gmail.com', '', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, '', '', '', '', 0, '1603038118'),
(150, 'mixkey23', 'mixkeyperia@gmail.com', '', '6af4231a6f6c9405160ad8308eb0841e', '', '', '', 0, '', '', '', '', 0, '1603061102'),
(151, 'neeraj', 'neerajagrawal1994@gmail.com', '', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', '', '', '', 0, '', '', '', '', 0, '1603115176'),
(152, 'vinni', 'vineet@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1603178382'),
(153, 'hasa', 'hasawibowo@gmail.com', '', '0060656f68f47974634d0c80b548c43e', '', '', '', 0, '', '', '', '', 0, '1603199785'),
(154, 'peppe', 'fotonetcafe@hotmail.com', '', '8f6dc552e21053d23cbac069cda8ec24', '', '', '', 0, '', '', '', '', 0, '1603213725'),
(155, 'bhfhbj', 'didu@vhjgi.com', '', 'd8578edf8458ce06fbc5bb76a58c5ca4', '', '', '', 0, '', '', '', '', 0, '1603226287'),
(156, 'hhguj hugj', 'user@gmail.com', '', 'd8578edf8458ce06fbc5bb76a58c5ca4', '', '', '', 0, '', '', '', '', 0, '1603226318'),
(157, 'dudu', 'dudu@gmail.com', '', '7e9d294b3f235d869f542024bee8c6ed', '', '', '', 0, '', '', '', '', 0, '1603226365'),
(158, 'dev', 'deval.primocys@gmail.com', '', 'bd4fa28ff9547d521115b72ffe1b6e7d', '5f905227f21e9.jpg', '', '', 0, '', '', '', '', 0, '1603291957'),
(159, 'renzo', 'maiux39@hotmail.com', '', '46d1a1fdac205c940195e0903c4826a7', '', '', '', 0, '', '', '', '', 0, '1603302775'),
(160, 'faisal', 'faisalmaaz161@gmail.com', '', '76419026d994f489336f264c4c835f46', '', '', '', 0, '', '', '', '', 0, '1603305117'),
(162, 'name', 'idea@gmail.com', '', '021bd32a43cbd0a5326d1ed9464ebed9', '', '', '', 0, '', '', '', '', 0, '1603430486'),
(163, 'kadal', 'kadal@gmail.com', '', '9b4a99200cda0e320795c93086a05ac4', '', '', '', 0, '', '', '', '', 0, '1603470609'),
(164, 'karwan', 'karwankhalid@yandex.com', '', '66c03d3ed785ed74169981e8d88e5697', '', '', '', 0, '', '', '', '', 0, '1603625855'),
(165, 'suthesan', 'suthesan@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1603719819'),
(166, 'infant', 'infantinfant06@gmail.com', '', '9fc69181377e2a6dd972b994f4c131c3', '', '', '', 0, '', '', '', '', 0, '1603737861'),
(167, 'cesar', 'cortescesar@yahoo.com', '', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', '', '', '', 0, '', '', '', '', 0, '1603739560'),
(168, 'Misterf', 'mdbcentre@gmail.com', '', '4db43302ada091529d4c43deb0799c34', '', '', '', 0, '', '', '', '', 0, '1603796810'),
(169, 'tecnosotf', 'tecnosotf@gmail.com', '', 'ce3aed380451ae0e5c6acfaecb9eb67b', '', '', '', 0, '', '', '', '', 0, '1603830811'),
(170, 'regggg', 'regg@gmail.com', '', '45aa454c710d8897a67d320ec1b246ce', '', '', '', 0, '', '', '', '', 0, '1603856377'),
(171, 'abhi9721', 'abhi9721sunny@gmail.com', '', '36a10e3f7d137f42b3c2811a27441897', '', '', '', 0, '', '', '', '', 0, '1603879139'),
(172, 'pepe', 'jsalvadormarin@hotmail.com', '', '4e45dd90c4c78fdb7d6daa7cbcc63d00', '', '', '', 0, '', '', '', '', 0, '1603891265'),
(173, 'pepe', 'cocumarin@gmail.com', '', '28fe0d7adf514a7b109677794c5fef62', '', '', '', 0, '', '', '', '', 0, '1603894877'),
(174, 'hellow', 'hellow@gmail.com', '', '6d40b152275c6a1803396184b99737cc', '', '', '', 0, '', '', '', '', 0, '1603917189'),
(175, 'sulaiman', 'sulaimanbaba18@gmail.com', '', '319eb3bee6674045f45db6e0fd0b6a58', '', '', '', 0, '', '', '', '', 0, '1603920978'),
(176, 'prueba', 'lamissrenek@yopmail.com', '', '25f9e794323b453885f5181f1b624d0b', '', '', '', 0, '', '', '', '', 0, '1603936035'),
(177, 'murtada', 'dev.murtada@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1603961953'),
(178, 'fab', 'biyohnefabrice@gmail.com', '', 'ab4f63f9ac65152575886860dde480a1', '', '', '', 0, '', '', '', '', 0, '1604013340'),
(179, 'karim', 'amkar.karim@gmail.com', '', '4c86370b292c15652c88df5bae338856', '', '', '', 0, '', '', '', '', 0, '1604053092'),
(180, 'kdn', 'kndkr011@gmail.com', '', '2809ac08e23386bbe504456d0b36f5a0', '', '', '', 0, '', '', '', '', 0, '1604053181'),
(181, 'webfrez', 'webfrez@gmail.com', '', '02d47286cc850aaf8a78f321c44177e5', '', '', '', 0, '', '', '', '', 0, '1604057153'),
(182, 'sakho', 'aliounesakho1@gmail.com', '', '3baf07a5ed9bc013e55a8afa8f9123c6', '', '', '', 0, '', '', '', '', 0, '1604057199'),
(183, 'jack', 'skooldev@gmail.com', '', '889555ebfd38702305b252f56d3ba174', '', '', '', 0, '', '', '', '', 0, '1604098906'),
(184, 'arpan.prime@gmail.com', 'arpan.prime@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1604129500'),
(185, 'Parth', 'patelparth654321@gmail.com', '', '9acc5ed7cda90c08ff3cae490e470690', '', '', '', 0, '', '', '', '', 0, '1604129629'),
(186, 'rony', 'rony01712651412@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1604168727'),
(187, 'Spartan300', 'ahomadun.ali@gmail.com', '', 'c0dce2b49a50c9806d5205258ac7ca18', '', '', '', 0, '', '', '', '', 0, '1604173003'),
(188, 'narinder ', 'nssmohlan@gmail.com', '', '2d43bc8af7643171f96713f935ada791', '', '', '', 0, '', '', '', '', 0, '1604174500'),
(189, 'oscer', 'marsapille@gmail.com', '', '8756eb7181fb4cd7c5d98ad6d8e9d7e7', '', '', '', 0, '', '', '', '', 0, '1604191057'),
(190, 'oscar', 'marsapille@gmail.com', '', '8756eb7181fb4cd7c5d98ad6d8e9d7e7', '', '', '', 0, '', '', '', '', 0, '1604191218'),
(191, 'Richard', 'richardjmarquezf@gmail.com', '', 'e615fbab59b060df5ca3e1c471de35e0', '', '', '', 0, '', '', '', '', 0, '1604200766'),
(192, 'matriks27', 'matriks27@gmail.com', '', '7e07d5084295fa29580b903fc91f08eb', '', '', '', 0, '', '', '', '', 0, '1604240775'),
(193, 'an3web', 'an3websolutions@gmail.com', '', 'd1d58bb7272cb141acc16424869ba6f0', '', '', '', 0, '', '', '', '', 0, '1604250272'),
(194, 'Farzaddd', 'eivazy1376@yahoo.com', '', '25f9e794323b453885f5181f1b624d0b', '', '', '', 0, '', '', '', '', 0, '1604354269'),
(195, 'dj', 'dj1234@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1605271349'),
(196, 'Jitu Mistry', 'jittu.primocys@gmail.com', '7046430704', 'beed7b2f3820fa7e8e2425826b785fe0', '60cc9feb17281.jpg', '', '', 0, 'Dehgam,Ahmedabd', 'Dehgam', 'India', '', 0, '1606376118'),
(197, 'joy', 'meetjoeypal@gmail.com', '', '2905d4a88f8dd2b51f8a6242bb7d72f1', '', '', '', 0, 'hsjsjskks\n', '', '', '', 0, '1606983733'),
(198, 'singh@233', 'abhi2oct1993@gmail.com', '', '36a10e3f7d137f42b3c2811a27441897', '', '', '', 0, '', '', '', '', 0, '1607001306'),
(199, 'Jittu', 'jitu@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '60d730ec37419.jpg', '', '', 0, 'Test test ', '', '', 'kjklnljkdh8f4ds6f4gh1shshg', 0, '1624604216'),
(200, 'googleuser12', 'test1@gmail.com', '', '', '', '', 'facebook', 0, '', '', '', 'fAfEOBMYKKA:APA91bGnnMx2FNrXyfT5Cj4Xzlc7l31ANcWLVoTZRI3oSgfslejMGOwyg0rF-grV5Sb6_5JUE0u-6QoSeZ-nEYMbTUvJd8DXSskMTSO74eEXjRF3ddehsRE3Y3qnEjMowyoAUT1YizeB', 0, '1624605208'),
(201, 'jittu primocys', 'jittu.primocys@gmail.com', '70668776677', '', '60dab66e89479.jpg', 'Kbq6Zr7a7fVK6ryjOIFGdMISzie2', 'google', 0, 'Ahmedabad India ', '', '', 'cxf-X2XTQrk:APA91bFuKnFgHJY-O4_xVuUINelyjmq843RzI_KaUxMkfLjYYzBJdt8ignQ7JfwmU3itSCi3FgDD4a2K7ImPXw1aAxkkHlxzxGfjEfK2pKYPTvDhEX35T6eomLp7rUJZQRRKl8RJLjBq', 0, '1624606672'),
(203, 'siru siru', 'sirusiru1313@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJwnnBDQckQrT_-sbut3R92aXPtu3vtVWeqcTl-5=s96-c', 'T8VpXvgQwlXJrqGb4azKNJxT42K3', 'google', 0, '', '', '', '', 0, '1624714532'),
(204, 'ezshield', 'ezshieldprotection@gmail.com', '', 'd8578edf8458ce06fbc5bb76a58c5ca4', '60db12f556d38.jpg', '', '', 0, 'vhhhjjkkkhghhhj', '', '', '', 0, '1624740195'),
(205, 'Mistry Jittu', '', '', '', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1785856118265551&height=800&width=800&ext=1627461968&hash=AeQjbAzpsh-L_e7-Ikk', '1785856118265551', 'facebook', 0, '', '', '', '', 0, '1624869968'),
(206, 'googleuser12', '', '', '', '', 'dfg6d1z56fd1z6fd1g6z51fd', 'facebook', 0, '', '', '', 'dfgdfhfjhd', 0, '1625491313'),
(207, 'netsi', 'netsigal7@gmail.com', '9876543210', 'f4e9990bf898adc923d02db390835eab', '6247da1aadf29.jpg', '', '', 0, '', '', '', 'e6t62HRoqxw:APA91bHzPFzrkAivzD4-wT6UZHIx890w5-1FmbAAVJVERMjggSqD43dcuRl3e6VPB-78R2QEAcDiQJDji7P5sGUwISsKrGaisPUxznp7QQD4iH8Aau89gnGIB4lSv0YxX5LrMGTOM-qf', 6451, '1627574094'),
(208, 'PatrickD', 'shopzambia@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', 'fenDxCKaDgA:APA91bEJ2pUledVP4H13oVh5KLhONLf93cEz-gtv-2IS91Q-puexllGkrmsyxDUAWF2fbMexcafZXy54odECjR5n6hoNHhnrwscKU_EQ-LOvld8-Q7TQEvuRlX4VxdljjapB9HMKk2N3', 0, '1627635958'),
(210, 'Amr Herz', 'isystem007@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GgpS7ekoKs3LPT-iD1L8U-Pym291AO8n0XNvazyNYQ=s96-c', 'vUUJymZLmue28eNHcdmfW9kiDCA3', 'google', 0, '', '', '', '', 0, '1627654116'),
(211, 'madhusudhana rao', 'madhu.thuraga@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJy1d5H39pYwuRVotJRzHrvfX0BODDInAILgGere=s96-c', 'juYIMd7TuxZzECru9RmHWdevd8h2', 'google', 0, '', '', '', '', 0, '1627674209'),
(212, 'Yudi', 'wahyudimenil@gmail.com', '', 'a168f961d14b201eabd8d9b38c718d64', '', '', '', 0, '', '', '', 'eiDs3hE0AwE:APA91bFNvOd6dje7Y3f7dEHRl8Fc3PdV5OpOwXksJSWr0Ew5BLcX5XG1R9rMvdNddUCdLgUYjr0Pe7OkNjg8PtRg_bd769cF-IuKDb7SXONL56ILb6E_3ofayXY7_OXrE5ndQ2DXlUni', 0, '1627744913'),
(213, 'Carlos Wemerson', 'carlos.w.carvalho92@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJy-JpYMJXx9yowimju5RRF6_8fgKfjPzHHH_Nbp=s96-c', 'OjxqnNKpYcOg6DVCAD06FIuJ9cH2', 'google', 0, '', '', '', '', 0, '1627789248'),
(214, 'Sagor Hasan', 'dmlcomputer@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GhQqOWfkrSB6JHCYlHeAotAGj4XhTMF0TkeI3-cqQ=s96-c', 'P5VaJYQydOTfmwBjIo6Ob9IWBzL2', 'google', 0, '', '', '', '', 0, '1627811355'),
(215, 'Jerriel Masilungan', 'jerrielmasilungan@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJzka-9WbbWu3ihjZawJs41Ewemih7ytan00fMAx=s96-c', '7cHs8LcWF6OjJcTr4piNUqeXn7f2', 'google', 0, '', '', '', '', 0, '1627864846'),
(216, 'yo yo', 'riteshkumar1472@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GjiNRfOpKjXS3j34x7fqiVEHzdkRizrdPAblQV-nQ=s96-c', 'v0mtFMlZNtcsHHpglPAvPwxgTYH2', 'google', 0, '', '', '', '', 0, '1627892306'),
(217, 'john mctavish', 'opo2009@gmail.com', '9485251246', '', 'https://lh3.googleusercontent.com/a-/AOh14Ggl7FvULj15GRU9cd25MqlaHuwRA9QiEqGMCjiOdg=s96-c', 'D7WWrukpyUNtyjYOJkCTanmoQUF2', 'google', 0, '', '', '', '', 0, '1627892660'),
(218, 'Pankaj Singh', 'rangdars32@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GhIPMdqdjx-yAn0VXT-b7uOiRsiy0WjlemclcGMdQ=s96-c', 'dq6935XDNTT99oPv73gVRTh3nRx2', 'google', 0, '', '', '', '', 0, '1627894135'),
(219, 'Capital Estates', 'capital.estateslb@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJyIwfdU3LUS_C26L0JpWQQfVPoX9bFKZory3B-6=s96-c', 'vqeOkFqeIbO5ntU32at7wqgARwZ2', 'google', 0, '', '', '', 'c5kUn1wrw5A:APA91bEWAxL_YyVb8x4oeLblty8yqiVzS_Hwr7sm1D86b3YPfOs_yYV_VUsqJuR-eBGtorlqkmeL7S6j_IJ8KbthzHH-9-GFHUY5ULNYOcrVJEfT75JeaGRvcfF96ByHO4Bu1GN3Ip-0', 0, '1627909015'),
(220, 'Suranga Rajapaksha', 'suranga11rajapaksha@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJzDDOGU0ipy-6RKApavfjJMqPN_UO2sv1wEpwUN=s96-c', 'DarPLOTFqwfzbkjWoprIwktS7Sw1', 'google', 0, '', '', '', '', 0, '1627915054'),
(221, 'ajit', 'jacudally-6695@yopmail.com', '', '6e621a03ab7f51e18f62136e34efe3db', '', '', '', 0, '', '', '', 'fCDAu6bVcEk:APA91bE_0vqO3mA7lJpqaIX9BNPuLfqY8MY9HjHBHSnxobQ_1YxQZhD_YVOnIzFOEhi9pUNK45fl7CkU_yYEjjN8xdkCFc_erDDqwL7Sp18Oc8RDDKP8-430LtVkPAxPLdDkbn5gl1iL', 0, '1627924793'),
(222, 'Sarwar Ahmed', 'dinarkhan1998@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GjkKTqmV1hLlABMjZBpuirtvHxa7n00i8uDfZF9QA=s96-c', 'NwGLjpMyucQprjRbvyiWL1ddDHy1', 'google', 0, '', '', '', '', 0, '1627935582'),
(223, 'Sanitize 1st', 'sanitize1stcs@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJytLI9rTg7ahB8D8G9u94BFkx0rYT3mbrPUzj-D=s96-c', 'NANbSK3m1JNXqrL6DSXdUMyPns22', 'google', 0, '', '', '', '', 0, '1627969939'),
(224, 'CapE', 'capital.estateslb@gmail.com', '', 'e8a0db708dc75ef76e3f30222b42e395', '', '', '', 0, '', '', '', 'c5kUn1wrw5A:APA91bEWAxL_YyVb8x4oeLblty8yqiVzS_Hwr7sm1D86b3YPfOs_yYV_VUsqJuR-eBGtorlqkmeL7S6j_IJ8KbthzHH-9-GFHUY5ULNYOcrVJEfT75JeaGRvcfF96ByHO4Bu1GN3Ip-0', 0, '1627972869'),
(225, 'Arsh Khan', 'arshkhan1.ak@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GjYuC8l5sb76KR60angeYFCx09Ohx_frhplFUq6OQ=s96-c', '27eO7eeBV9gsWSWd2v3uXnKx9nE3', 'google', 0, '', '', '', '', 0, '1627975127'),
(226, 'Testing', 'Testing@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', 'cmfaBwSHFXw:APA91bGWX3w5N4yrYeBgygrf7WNEZdgp4P9sRnaKx8dV9zveBOkpjcga0lYmOjbdFfbbChZafNj2ku2NYHAg_ve7Cu-DWoiLtHF6t3ayPnZh9sHggmCPcDnKWUmXos293wbQJ52tr47Y', 0, '1627992897'),
(227, 'Afsal Ep', 'afsalep@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14Giv06UgeHXi-xM00s_Te3TBLgY05hh1-2-uXDnw5Q=s96-c', 'EBBTnYhFMHbx5ATQbyyNmVz2vhq1', 'google', 0, '', '', '', '', 0, '1627996798'),
(228, 'Fadel Ahmad', 'fadel.courses@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJwSbtx9F2tttOjU41I6rKob4itpIysmErJnuRjv=s96-c', 'TXFzhe7fFBYbgjOKen6i7Ns07822', 'google', 0, '', '', '', '', 0, '1628040516'),
(229, 'Mohsin Memon', 'memonmohsin916@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GjmyRQ6QKiHkbLKGkeApj5tO6kDDcUVIpEIbogi=s96-c', 'hCaAGmvn0hQnt4DOm1tZP74gV322', 'google', 0, '', '', '', '', 0, '1628051213'),
(230, 'vivi', 'vivian@gmail.com', '', '9fb6a5fbc8cd461ff114a1205fb5a56f', '', '', '', 0, '', '', '', 'd83I5XoevxA:APA91bHrxL6SRoRv9ZovR87qTL2PR1zJYRzyI-Sg4tgYsgxkXL6Yr1B_zYqVA1WUHDnbXxKfCBKpudfhFE58G09KH9X7qu9sXnWsEBqtv3eaWLdHFKHvQ9td-MSrVPo3l_dMw-6-KLds', 0, '1628064944'),
(231, 'manoj', 'mkbkit@gmail.com', '', '5e81f9859d223ea420aca993c647b839', '', '', '', 0, '', '', '', 'd6KaXi40eEY:APA91bGTLW3GdaWZxOEQjUzXPMboE8tqp-HUtMdw-hrgIV-oF8nOM8TZucKNPy3HKQ3xVY4gAVa9qvHbu5yp3zngDZ4CqnzW7nTXhoyAxj2QOiU5B1N8o-i2-Fx4kSOXip7SZrz7ClDz', 0, '1628072557'),
(232, 'Eijo Mind', 'ekobor33@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GiGU-TynDbv-Mmp6koWNPALdURLeeBfW4cBaeE7=s96-c', '57jnZzYRvqZrrAcX8yw6c1Kzt5p2', 'google', 0, '', '', '', '', 0, '1628084752'),
(233, 'Francis ', 'francis12345@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', 'fxMTTZjSN4U:APA91bFWBBOHJB144jNWChftO8pvGP7G6qNMf7bDtJf1c_B4y1QZqvxUD8bXOqYWj-syRMDT4R6eIBBbkvCyrx2fnTRLdkGr_YLGp3vyH_7QW_CtnU6hxxmiQ2nu79FkmGyCyE9cmHPM', 0, '1628088273'),
(234, 'Rahel Rayu', 'rahelrayu@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJxGMX2cSKLotNvoDwGt6e2jDbuYSL10b3on0z1M=s96-c', 'L7q8BELzOrWQK8DSAxMPoJvVikp2', 'google', 0, '', '', '', '', 0, '1628098666'),
(235, 'Ritish', 'ritishs39@gmail.com', '', 'fcea920f7412b5da7be0cf42b8c93759', '', '', '', 0, '', '', '', 'evmaXt60kkw:APA91bESnSz8np17yrgfyo99W4s-qHTZGwDLtcnSGz9WM2DudcUtsq_8k_NuV3YiE634Hb_Ho64nKlkmnHJtbt5ZW7H094mif-vKZ3CL01BfYgIVvX9gy-yqXtX-FR4fYmIJY4UKyLGD', 0, '1628156631'),
(236, 'rati saini', 'curyilohiya7@gmail.com', '', '38605a1fab4e19fc43fd51e87506cabc', '', '', '', 0, '', '', '', 'eH48i_qNWt4:APA91bEHQvkWYoozbxD9midLJcc-EXDgRjHjN7dc1zx2JRtNzrtwTp7YSBqyN0h4XjSmbjIpvVFfQAbhsOfQpAjx1Uvzr0yVamyVepYd8zaME5fFdcBHkQ3jSvxyRFsDjbECwtW19R_A', 0, '1628168457'),
(237, 'KonamInc', 'konaminc@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJwr4EBK6WCzpsbgdbVIyEp03aEn2kHAXhd445tP=s96-c', 'HzfS3qMxV7c6UGppoVI1ssAvASj2', 'google', 0, '', '', '', '', 0, '1628241449'),
(238, 'ss', 'ss@gmail.com', '', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, '', '', '', 'cRJ9-4ZK2zQ:APA91bFjwpfnsuofTSPDazT3Ii0Rlcv7PVY1h_yjaKjLiS7D0NDpA0fWVMKQpuFIK1KDJh5fFI1JAqZViDKcRlQw24sPdluTsw9Tnraxrepwf4DbiJ_VC2WqZ9ys6mxwD8jVHOePmFqd', 0, '1628273606'),
(239, 'jhulz', 'jhulz@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', 'fCiWZn41jHE:APA91bEAQAdk2yaSRzT_jX12RXqInMEyXIJonJB0VGY6zEn-5bkNlSwihUCwZ55am97qSxWlSQRdZXwVhdxEQz8Eo3624quaA_irsi2K5qPY2QW32ekbxPGhZIy7FSSO9i3eElonf6EL', 0, '1628296018'),
(240, 'Tom Naveen', 'naveemeee@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14Gh2KOFmrbYJllZlgajrTiAgYOtge11V-lkFzTtQdw=s96-c', 'vd7nD9X2MCSkFjgiJMIIPcwscD73', 'google', 0, '', '', '', '', 0, '1628311364'),
(241, 'MRITYUNJAY PATHAK', 'pathak.mirtunjay@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14Gga67WdQ_IHOvd3_Fr8bFd6xPtz4S0qvRWeIoBZ=s96-c', 'nTrIaWYpwqX5GuJcqIZrRcqfBWV2', 'google', 0, '', '', '', '', 0, '1628311397'),
(242, 'apurnav', 'gauravmyblog@gmail.com', '', 'a534ae43b8ef206071c43cc2511609d7', '', '', '', 0, '', '', '', 'enfKX1v3M7c:APA91bGXA92A__-qO5u2gbkkeUWsmlB8hbSZcBQD54hlNWh3igHex5W0uSzLfuj-oICHbkGH3N9z1n1XKrqpEl_3EuZG3mP7NH6DJzRHyftNBDH3rSnmUDhaG9047zHIgmXc3JcFYtKe', 0, '1628362382'),
(243, 'Rohit Saravana', 'rohit.saravana@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GjvbktgLG4qONWFUrfaNNIB-EeuH_APJNwihfIprg=s96-c', '7xsMWZYfApNXxiIhLpnVeYXaPwv1', 'google', 0, '', '', '', 'eGqbDvciCWw:APA91bFlvM6dYmT9qakYvnjn7Cb8yXVW6R1sR-c3DMKbT8QmBv8UQKLO3YwvxUHpDG2vN0ZLonEwcRLZ3Wk0TNSZebSxHmJlCAjEzpIkiGaLFEf2IgjalielFdnJJU20t48fqvQBjcVb', 0, '1628386709'),
(244, 'Sandy shrestha', 'sandy19071@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJytyDK0-rURFl1kkpztA8tCEzgRZhQgaZuF2f5R=s96-c', 'wMr7zYYJYggPWXOrYtTwkobrUj93', 'google', 0, '', '', '', '', 0, '1628412438'),
(245, 'Pedro Passos', 'ruanm4155@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJxkR3WAJaL9wseUvT9eFeG7glkX6z48Hl23v4tz=s96-c', 'aFaY9reyZtcXeAflH0BLHhsSHXz1', 'google', 0, '', '', '', '', 0, '1628435601'),
(246, 'Mastichari', 'adfree03@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GhPbPZYkex6PO3uiePIrI24AQm-OgHRtcbUlQYD=s96-c', 'DJ17xJWSZJcibnk0DauDwm0srjQ2', 'google', 0, '', '', '', '', 0, '1628438818'),
(247, 'test44', 'demo12@gmail.com', '', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, '', '', '', 'cTIL8Sf61-s:APA91bEfORfBhgn-fPCjvY-CuG7AOMp2gY4BwZoAmmvS4w6u-KdWdYGYhm8c1o6Rg9rHXhgSoSIBojv9fF0GlKs2R4YWfMIQnfvl_AHj32Gcq0FtyJKF1C0L5g4YOTmfEnUkvFEBQXvw', 0, '1628450135'),
(248, 'Haider Ali', 'haiderali1552000@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GjJZf_bA8XOSD5YVLX08Owa9sixRyy5OF3jQejsmw=s96-c', 'j7UVSeysl7UkbFPCyOzwB0FuHFe2', 'google', 0, '', '', '', '', 0, '1628495549'),
(249, 'El Malki Chabib', 'flp.chabib@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GgNopCZVoj1oQzSoQ65-ZFox2hjAJs4RkFgqfokmw=s96-c', 'XkxyqKrn78M0IjxHZCEp9E4B1MW2', 'google', 0, '', '', '', '', 0, '1628509303'),
(250, 'Just Sec', 'digizpromoz@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJw_NFGnqinsBrqIJmZxzeaPNZv5sQWu973XNnv-=s96-c', 'GHNUqqdxqmQa5paMs7whz5y55Hf2', 'google', 0, '', '', '', 'f0fyWSKj6N8:APA91bEa736BgZwknskKayf7iTx7E2rTKl_STgldu2NWa38lrQC9rONG20IHO5_IjMQUs-M0UjRA8HeMq_fBF2QUKTzUGqTk7HmqETnugi472mrqJ0LJDbn7VHBILXCgdhbH_dXYufDH', 0, '1628525365'),
(251, 'amir', 'amir@takdistribusi.com', '', '4e72fc71d6afe049572655387d0f5346', '', '', '', 0, '', '', '', 'eCGuoBDOSsI:APA91bFZ7t4rVXaJF5Ld7UxmHMnYWH2LzacL_rKuYPlV0hG1k48dGn_sfgYI3hJP9PpLd9-6hemSIUanUb_XF4EdOPQTwhCCn11242BotLvAVHiOzVY1M3hZFrnIL9broPywlqxVuQaf', 0, '1628527762'),
(252, 'test', 'fhjjj@gjj.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1628529231'),
(253, 'test1', 'test1@gmail.com', '', '5a105e8b9d40e1329780d62ea2265d8a', '', '', '', 0, '', '', '', 'fAfEOBMYKKA:APA91bGnnMx2FNrXyfT5Cj4Xzlc7l31ANcWLVoTZRI3oSgfslejMGOwyg0rF-grV5Sb6_5JUE0u-6QoSeZ-nEYMbTUvJd8DXSskMTSO74eEXjRF3ddehsRE3Y3qnEjMowyoAUT1YizeB', 0, '1628529299'),
(254, 'test', 'testprad@test.com', '', '6f1a6ca4721e5f31f55ca7147b8fb43d', '', '', '', 0, '', '', '', 'cQdcPY_8oeU:APA91bGP6HcSH6HC4RsGNQuYMUzE6Nzu1HjIfZXtAk9ufwqNpt3FaN2NtGVa2yLkCNjb1GnGCkIkPKfruRHUaPFGIeuB9VIP4y0pcNy0EJlJ931x6-tLLRVCGANVTBnEMf7syGOzV45W', 0, '1628614283'),
(255, 'veena', 'veenas1805@gmail.com', '', '6bc2ed1a5aba72b24a6af89cf9cc5045', '', '', '', 0, '', '', '', '', 0, '1628615456'),
(256, 'deepu', 'director@itsgroups.in', '', '6bc2ed1a5aba72b24a6af89cf9cc5045', '', '', '', 0, '', '', '', 'eKsCrcXac2E:APA91bFkgOhDUiPAtDXC4xGNG1CwfGEp_ZdfgX2F7rDiP5DX901jt7NlEKxN3s4TvuDaOvu108_OIR4r9I7vjhoueBS-RUMpTZ9FFv4Vogf-xXjqGXZh7lY_q_PkCWWmYQN8eZObp0sS', 0, '1628616577'),
(257, 'Rajesh', 'rajeshpdurai16@gmail.com', '', '10c3a36de482d08bec4c7dca8c10ec5a', '', '', '', 0, '', '', '', 'ezqwqnkfwa8:APA91bHEbE3Bb8Ks3abJmPegLQfoWCvpG0Gv3W--b1gcy4BBCjPsTDXWNOOVIFGBsIwYvoMhpFzz27Gi8xcHGdteq7OXUbYbwZUkCAPMO7Mrz7s3J4ZBYy-HXWW7HC0rfMmRNFGrz-OV', 0, '1628668785'),
(258, 'amir', 'amir_hammami@hotmail.fr', '', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, '', '', '', 'c1SjXwuXZDo:APA91bFf53G3el9X9e7lzDLUenHRojgvNcxcCt2bZpJuiikFfn4LJYnf0wn55pA5ZhRZM3aJyIWz1Ead6qxir3ds6K_gzqiG6c1ObYb1TA2FmKzm-S_rsPLL6DJn60gLMyfZLxqxOPL2', 0, '1628680667'),
(259, 'mkpw', 'mkparmar6268@gmail.com', '', '30941a1584bd3fba83ece1cb7c9e357f', '', '', '', 0, '', '', '', 'dt0FUraizsw:APA91bGYmmINQtf-T4twffuH3oDWxLKs5uHAv2NE_ZMjLr12QaIboivXQT6_K4BxQzNrqyAsnMJN7ZBiLQ4JN4cb-VYaDoBP4CPtsmS_azes41MS201H6psqcuRf0TC195-3RzeRZ1pJ', 0, '1628681653'),
(260, 'yorman morillo', 'yormanmorillo@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJxuSpXogCJeMKAxNT7r_01tsMgTS_DVNXKhx8iC=s96-c', 'DJEHoZItl0a6UcUlQh9nhDKpcGm1', 'google', 0, '', '', '', '', 0, '1628689929'),
(261, 'Rishi Sahai', 'sahai.rishi@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14Gh4BxnvZFLKEilWJbXsgWIlHcHVAC7vwpN-0bJzYg=s96-c', 'mggxSd2AlSbuYxmXj8tK1IaVPHy2', 'google', 0, '', '', '', '', 0, '1628734231'),
(262, 'taif', 'taifur.satkhira@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', 'fbPOYytBfcc:APA91bHxO4vvZTgHx3XR7THXaZXt12pkpTNlHLBlRiYKU1wuXiWKWhRxjLWiEu8AZkDFB46KY28--WNTKkHzKaV5aOFfnJ1VKrRYjYyQzb_DGMX7MUc4CL_23CeNpxwIW-5C96NDfGBi', 0, '1628736448'),
(263, 'Sachin Patil', 'sachinp7081@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJy4HecOGi9pegN5jvlSsMLfkSgZ1CdYRyrnwxMD=s96-c', '30kbpL8HjUekIHWbebPzXZLA6DO2', 'google', 0, '', '', '', '', 0, '1628741966'),
(264, 'arnold', 'opiyoarnold86@gmail.com', '', 'db790edae9b07e6b1518eff01658fc51', '', '', '', 0, '', '', '', 'eGmnwRXg0vw:APA91bGoA8wueMyYYQutr3f1Lg5e2hhNq9R9MR10scY6JyJ1afI9RJcYj03G6j6RWRBqIOwYOd0UPolrva9_R9oXGEFs1_eEZte_he_h23EC6EOEM40e3eHGZM4LpGxMO4Nmp6rn9KEF', 0, '1628746680'),
(265, 'Pau Rodriguez', 'rodberpau@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJzV2dQtyqiQc2wyCbSOYkliO_HzJvFt-nXTyJcn=s96-c', '9Djg7fpvLnadwlgGcQM3GwgVw2c2', 'google', 0, '', '', '', '', 0, '1628779504'),
(266, 'Raphael Marote', 'raphaelmarote1993@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJwpRiTn_6IU0LpU2LzK-hnRBqBjJZ2F6kzRAICp=s96-c', 'u4MqqjnsoMU6heJzLsV7fuyYfUP2', 'google', 0, '', '', '', '', 0, '1628782654'),
(267, 'Carlos Mario Aroca Casas', 'carlosarocac@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJxpMJeI2oEghKXDstGACOQIcKMPaoHY0JFhzIJFYg=s96-c', 'GbhUNTRhCSbIQfmOUsnFb4nDq0o2', 'google', 0, '', '', '', '', 0, '1628804823'),
(268, 'MS Pradeep', 'mspradeep143@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GjKrGiujlawXRlpe7jbnpsAJHyV7XwisubKn9ch=s96-c', 'RW568fxan7UR5L6edz5bqL1Z2jJ3', 'google', 0, '', '', '', '', 0, '1628830614'),
(269, 'ritik', 'sharma.ritik12@gmail.com', '', '1e4b1650dbb93ccd54337b401d4e255b', '', '', '', 0, '', '', '', '', 0, '1628880923'),
(270, 'chetan chadha', 'chetanchadha1234@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14Gif0d6QUU_u7wXiLXM05hizL05qnJqOXod1OAALEpA=s96-c', 'zEYFiNSPQngeEGPYzGTbuoIZOUZ2', 'google', 0, '', '', '', '', 0, '1628882270'),
(271, 'Visa Tech', 'visatech.bd@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GgPSse8HcF8In_BHMq_Y6YYLHkyIO1v3LMjtoD9=s96-c', 'vSbT5ApjdMeglh16DI6SYeCu7dW2', 'google', 0, '', '', '', '', 0, '1628886779'),
(272, 'Alexandria Safitri', 'saffradika@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GgQHgZKB56LUOXpvgyyreigM2U4ypDTnX3XlTt-CA=s96-c', 'UUdp6P7eIrWP091eGAOhbZzoMNk2', 'google', 0, '', '', '', '', 0, '1628917598'),
(273, 'Khám Phá Phần Mềm', 'meshareyou@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GjOEsNSoEojBVdbD3qASQCyQwRXSIHRIIu1NErKCQ=s96-c', 'rSvyEhD7s2NmmHcfhqPuVtOsfhh2', 'google', 0, '', '', '', '', 0, '1628924600'),
(274, 'Unlimited coins Hack', 'usa4you9@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GgE-NEczyrWewSwlTFI5e82WeMyfMWyi_CbV9tORg=s96-c', 'Oda8bszTHvQjIgFYOEkBRNNRwFJ3', 'google', 0, '', '', '', '', 0, '1628940595'),
(275, 'prashant', 'mishraecommerceworld@gmail.com', '', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, '', '', '', 'cAYc8j6IPF4:APA91bHdevLVyQVhaazCdgvzeLJT-drEC3XvqU9fJfjkAYWfSs4rfxGXj1RTPxhZdUz7OCebZ8d8jeBKimIGRpdzUl_kOeMLDI5YnvBFRsOdyUwmAtpPpEYheMemzmqSnuA-Ilftd14E', 0, '1628955956'),
(276, 'mes', 'mesmat89@gmail.com', '', '3a2eb320740e432d77a48436bd82d9e8', '', '', '', 0, '', '', '', 'eQnUsGrZRB8:APA91bHU-Y1AMPbIa-h2AO1jeUkc-E-u1ORm4lo295_VzadilJe4f0gwR-CHEKOR12QKXJS0AYx7moEvGtGzp1HDNUAr0TGCF9u0mTf6CTaN5AJmbyYhOyIbuRu2_7vLqatcaYANQZZS', 0, '1628964276'),
(277, 'Ridhuan Ibrahim', 'ridhuanibrahim80@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJxw97t0TOryJqIadkGu_ddKV2NQPFgIoKs7YUT-=s96-c', '56i3r4siKySd9jACTfdidwzjcas2', 'google', 0, '', '', '', '', 0, '1628993988'),
(278, 'Digital Marketing', 'apanka.com@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GiI4VFG91jRSo0OdUV0CS-5frLuAI3V_77wlMyOHA=s96-c', 'wthSzKwPZQavHN6aECC7YrAD0JN2', 'google', 0, '', '', '', '', 0, '1629007965'),
(279, 'Gaming Bangla 420', 'hridoy66665@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GhvC05lBRLQWCMow_p7pxSRagmlJUh1g5JZLlyh=s96-c', 'CPStljPa6mSJIDrkhOT4JIAvrqy2', 'google', 0, '', '', '', '', 0, '1629012527'),
(280, 'vnsnsnns', 'bssksj@jd.ck', '', '8981f3212ec8da13fa80bd00a03a1916', '', '', '', 0, '', '', '', '', 0, '1629050252'),
(281, 'tttt12', 'tttt12@mail.co', '', '7544e91d2904f2f4d073fcb5fcae0e50', '', '', '', 0, '', '', '', 'cw2K07OcrcI:APA91bG1SKxQKBWA0bD5_LBJ2S6YFAN-DtayEXG1fPbVNNZ-MDWqN-dXIMb7OFBBz9qo4yiutFX5ivJm5V8ZMoTsfc11R6--6SNQZ52MXMMVuo2653GFuld4vrhFALzqGIJb_bI9OP25', 0, '1629050275'),
(282, 'mdrahman', 'runabd2019@gmail.com', '', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, '', '', '', 'ecBioHy6DEM:APA91bF5oLbYdsPPoknjiRkUilvLqxQQvTQ3Esc_8parAPnfJLVYA9jwLA9xAShK0urr4udOnS4M4TwO_gHWpYtTCyLtoDY7eBRyc45_jQAaLKigScYNAmeu4VvdR8zKRd3CvNjPyE4z', 0, '1629078454'),
(283, 'Rameez Khojani', 'rameez.khojani7@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJwZVBCyzHlqttQp5fhApA_Q6S6qqaygL8ZE9dif=s96-c', 'SAGFJURM4JSrHqzYmFSTWL7l5yJ3', 'google', 0, '', '', '', '', 0, '1629105388'),
(284, 'Musa Abdullahi', 'zeemuses@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14Gjx90RjrNui8lG2PjQWx8s4daYNRu1gDXtLDW9L1w=s96-c', 'JEjui0sTk5WWLwW9kz3YbxTZ2I22', 'google', 0, '', '', '', 'c2z8DGQjGZE:APA91bHispEbKZTP-9IV95354sC3CkCONBOU0AwBUeoMlq_AnKRgz-lYKir8oct2fVipJ-OtjtGfnPpG9U9PIHpI9aLEO4dnlvvvyOXvVFUNoQQvjtdwxiRbO9G-D6VoeDd_sTVIeYBH', 0, '1629137427'),
(285, 'Mediakliq Co', 'mediakliq@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GiNud7qIyu2lTMdZ6DSpuwzzCLjVth1pesDTl1B=s96-c', 'X6Xge2umzsPUa2xf8TWCl0lJxf63', 'google', 0, '', '', '', 'dOXC4tgjk6s:APA91bFuGK22dJLewTvr2aChpiqBYjMyxyO-VqFBRA2c20gdZSEjNt1l7XlvseB3L7Y4exbiSBW1Am2uLyKP3HLClhVwyu6HuEJy0-V1-f4tGd_IQY2zTixrDGOVVUT6FJAujywoFrGK', 0, '1629144041'),
(286, 'palak', 'palakagrawal.bwd@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', 'fHW7pnMq1vY:APA91bG4ojNfG43964ZzFcRkdziEjtl4TesJ0RiD6uoxSyFO_Nyf49nRksjdAwj0tvv6qxRkn1NssdumDYGFrk4xanJ9ltJnA_njpWl7dLa-hlxsultQb6AsgWMcB6dXOvw2ccqhMo4A', 0, '1629192485'),
(287, 'SHUBHI shubhi', 'shubhi15190@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GjQtng1LieAFrIWolas9lCmoorcKBVkTUScZYzn=s96-c', 'UAmUfsy0LKXAeZpaVT833RsgnUW2', 'google', 0, '', '', '', 'dMdMIKhEJR4:APA91bEpqe4cwPCrQf-bEh_XLUX-pfMf_96iWf9UbomGK6b-ZQmrQ66VfEU8bP7esE5hOdhlrRbHwZlJlwAFcXP7RgSDW6E5IFmdgfY7_s1aeAdZSjaVmXbkJ2kvZYwqirg5XxhXC_ww', 0, '1629202882'),
(288, 'Aman Singh', 'aman007417@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJwn5qmsM8gTl9fnezEbprvon7aAs-6R0ZT6Fdnx=s96-c', 'ITktnIgt0OPK9ed6BO1b2gKlbco1', 'google', 0, '', '', '', 'dnjvGUT4yyI:APA91bGPemjPLmNv1v52w-YMT9hG4JeqnLIjLgoaws6-o6zAOjzUikWosjqrEtKoen6UOq0Yo2YelWokrBHFOEJuoKg8phGS3mtEq7uyLY9Mq-yQBy7bmZZmixgCPhgdR7QaVMXE2PbX', 0, '1629312543'),
(289, 'Mattia Guadagno', 'ipartsb2b@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJyF5ZY5Edb-WY_d4CQnn0VY6BW9DE5gzUty44-P=s96-c', 'W7FPCEbD6WcYrzbjKLyalb1m9v62', 'google', 0, '', '', '', '', 0, '1629330884'),
(290, 'marbot', 'redeempregos@gmail.com', '', 'd9a6f686da3307d745c313fbabdefcbd', '', '', '', 0, '', '', '', 'd1TEvVpV95s:APA91bGcr7r69zdfbPo_gTQ1xdmcZKWZ_RCyEkkvaskoFYgXjKW3iBmHdFY1XJPk6zzukVAEZyVzxItDcphFowkWY-gBWP7iM6CtGtGpMy6tQfYV67ko-gBIoOjEqhxk0rTTve5p6Rpb', 0, '1629352813'),
(291, 'prashant dixit', 'prashant.dixit124@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GgvPIyzP3ZMlnnxp_LI0GqVeZwKiDyxGmIeME0jug=s96-c', 'B80yWOks7OZs5JSV9RDf31n74L43', 'google', 0, '', '', '', '', 0, '1629383342'),
(292, 'okgh', 'iamkushalmondal@gmail.com', '', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, '', '', '', 'fTHN0Zujz-M:APA91bE08n2xUagjl0rEBQ1AF2eARoIpgrUOF2SDWRy0z1SjP4UfI4-sPk1nnTy2GpyeDqtqQkwFVf9P8kTbTj_7sYrMuHbrzesmSs_AHxTYUL_8G8eGrILM8WubshcpYRXWNy76fHZj', 0, '1629385480'),
(293, 'Dinesh Dinesh', 'jak568lion@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJztEKPxfG_IxkE70Y5GPJt438duTKC0MYtCfTOA=s96-c', 'nKCpycueQ2N1rxDEy0bozGk17T02', 'google', 0, '', '', '', '', 0, '1629393152'),
(294, 'Mayur Thosar', 'mayurv.th@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14Ghe1t7nN_ycqlxKAihfoVK_-3vVa86aJHNJTdoH2w=s96-c', 'js2WSOgCvKSsplnpFLsWF7yygfm2', 'google', 0, '', '', '', '', 0, '1629419812'),
(295, 'Raja Ganesh', 'shareyouwithme@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14Gj_hiOUI6C0V1mOf3KoRrr45tih1rw7SOmwWaZ9yg=s96-c', '0ttuUNJgaLNagkzndVhcHeRIUgy1', 'google', 0, '', '', '', '', 0, '1629428423'),
(296, 'Sanjay Baviskar', 'sanjaysbaviskar@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GiHjakk2IjE-bRhs-fR0I1jnPFN-tw3b-axaZeXfg=s96-c', 'sDATy3hTOzPV0aWhBfMk30N6aKs2', 'google', 0, '', '', '', '', 0, '1629457987'),
(297, 'subhan', 'subhanisbhn07@gmail.com', '', '0c1e5628d2a79eba26593da5458fd798', '', '', '', 0, '', '', '', 'dDioPBhMgpU:APA91bGQ3PiZtNdRve3UN6iHXdQblRAejuSTLcePzgea2mlakZe5kPA1M7TL2xEzWmiiv716HAWwF7n1z595lRZPjc1uLEQhNk7oq_1tLPJY7_IdvV_pDgHBjzA76WKr8JdM5mGxRx7m', 0, '1629540984'),
(298, 'Laleet Padaya', 'laleetpadaya@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJw6RzI1v5-nbLXFObS0zjBFErba12bHuFQIgmY=s96-c', 'VLaWtnbeBfRqMDCrfmiQy2ceFJP2', 'google', 0, '', '', '', '', 0, '1629543736'),
(299, 'Patrick Leonardo', 'mapalotech18@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJxdERc30A3e3VMPYN7Lq3q35DJEKrBqRlsWnUTY=s96-c', 'X8ZKnBMDsLRTFvKpFvMo9GeSyQS2', 'google', 0, '', '', '', '', 0, '1629564913'),
(300, 'Manuel Cabrera', 'manuel@cabreraheld.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GghCb99jDUEaSYdzad-F-6aCuBRnU_X_FtLBv90FMU=s96-c', '5CsD5UC5mFR1WbyGoxluFZC05sx2', 'google', 0, '', '', '', '', 0, '1629653128'),
(301, 'John Atey', 'ateyjohn@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GgqB1lpYXCb5xTTQA3FxsS-jJiHyKZht-Ij0sB2=s96-c', 'xDz0DvwTKDdLy6AYlkRjZyhYjbm1', 'google', 0, '', '', '', '', 0, '1629656433'),
(302, 'David Pereira', 'dadivdstevan@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GjiCdFxAQxfQQwhyQIp9toa9zazb2UsBC_WxEbAbw=s96-c', '5B9Evy0e4cPhl2ZhTr6IvD7Iq423', 'google', 0, '', '', '', '', 0, '1629691509'),
(303, 'Abhijeet singh', 'abhijeetsingh6893@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GhIC9PmaNANcSnnHEPjJ3OT6admY_1OL4f5ErrHsw0=s96-c', 'ZnwY9I4poUdTCivvDZa9ouQbI6h2', 'google', 0, '', '', '', '', 0, '1629721529'),
(304, 'Purushottam Kumawat', 'pukm2009@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GgftvqDXD7xgB0DZOP85iORqIraoYfa-kOOxNkM=s96-c', 'wALDiXHOzGX8U02AB10b3XIcdML2', 'google', 0, '', '', '', '', 0, '1629724424'),
(305, 'andree', 'andree@takdistribusi.com', '', '3652ecdd4d1dcb401c873713e5bec4af', '', '', '', 0, '', '', '', 'cXbrcDVicBc:APA91bFNZgRU4Y8c4lupogyonJ6HWTXIzf6ThK2nLtCymO6ZWJhH9Yh2R538OqsXvTHnytFXgNeJ9v7kCzUop6fbv5m6wMGu5eQj-MivoDNntImuclUTIeqa3oxlFI3YS6VHxy6a_W5v', 0, '1629735914'),
(306, 'Ajay Kumar', 'ajaykumarmail@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GgaTggerPzJLT9xmt8cYXmYBfzfDeBFk_pJgF_Udw=s96-c', 'QZpZSodekcgBIU4cPg11LnoosVC3', 'google', 0, '', '', '', '', 0, '1629743041'),
(307, 'Subhan Ali', 'subhankhattak15@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GjBTtNIRYH05lWdyGtrbBM0Hp8P6vmZRy01jl7QCA=s96-c', 'Tp5f8NWru0YmLLt3N3SidThbpDm2', 'google', 0, '', '', '', '', 0, '1629809027'),
(308, 'jayanta biswas', 'jayantabiswas7076@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJz-QxpvQ7dwjTsGTuBX4JWtTJ5BUK-Nu6tqMXXI=s96-c', 'd9FmhPWrPzaT2du8qkPcGL2DoyJ2', 'google', 0, 'daharbuincha junior', '', '', 'dKi_tjpuzg4:APA91bHmZW3n57qF8zokiv4JKKgLiXpz5jpqwZp3QqlvxqgE8iepzCb_PL4Tpahf-6LP5kzEMA7SQ1rfhkufucUlepq5uOBnTwTCX2868NfK2DNlBhcJphAfG8GyGkNh4wwyrETIcfwJ', 0, '1629833701'),
(309, 'Aliyan Baig', 'shahzadmirza.net@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GhYQGMhdBjAQ9AulCdl0sulbB2_jGgFbdKim7z-cA=s96-c', 'xra3V8UUggQudY324L3vprIOnB12', 'google', 0, '', '', '', '', 0, '1629853840'),
(310, 'I Soft Solutions', 'isoftonweb@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GjVuEkxwqBD7aeJv_bd7KuQgOfrQunfE6m0obhT=s96-c', 'U4xbL1Shxzge61Cx6aqlOckDCQI2', 'google', 0, '', '', '', '', 0, '1629965753'),
(311, 'Dipanshu Seth', 'dipanshuseth@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14Gj6G2tWwKqP0HjGAS8TTW6gxpGuBKzWjqdGV_SvGg=s96-c', 'CjZM0nZjIMXNGutKQAOg515Totr1', 'google', 0, '', '', '', '', 0, '1629972091'),
(312, 'Ziyan Bhat', 'ziyan9107@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14Gi8nd9AWIn0VZoK6LdvcxhLe_79HJMVe7E0qYPk1g=s96-c', 'QzTjpTvETXRB4ezbW538CzSQgys2', 'google', 0, '', '', '', '', 0, '1630041788'),
(313, 'Sushil Verma', 'sushilvermaraju@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJztwp6sKzAVFpCczxkGbH3lMujBs5wryl-1cNDW=s96-c', 'vlhVDCGKsFRgm4MYLOaWELLnxmJ3', 'google', 0, '', '', '', 'da3pFRN9EvI:APA91bHPq6TeLoEKyi-y93KP3og7rly-erpj_p2vnyLpvbc353gjqRv-HexgiflQns9ZoR-YL-4gM7u7RLR6mAW5fKFYlf8cXt6me4I4yxQYz8c2x_MZmvWs5AhffPAPUtNianRPmXxE', 0, '1630043579');
INSERT INTO `user` (`id`, `username`, `email`, `mobile`, `password`, `profile_pic`, `facebook_id`, `type`, `isGold`, `address`, `city`, `country`, `device_token`, `otp`, `date`) VALUES
(314, 'Ing. Randy Igualguana', 'randyigualguana@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GhNBcRH2yGDizExHLegu0xJp1i15M6iPY_fMvt-eg=s96-c', 'boQ1yfT5poYNHbOIZC39Uwfys3a2', 'google', 0, '', '', '', '', 0, '1630092236'),
(315, 'Click Handyman', 'help@clickhandyman.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJzHub-QXmC6qOO-tuD7NtuPdFpB-nMR5Ewf9zY0=s96-c', 'MDzbBX3NqVcZExXYTuxp1e2s8vm1', 'google', 0, '', '', '', '', 0, '1630097050'),
(316, 'Parichay Parivesh', 'parichay.parivesh@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GgTtLuNHK448CZJr9euJtkYG_JDl8dn1RrSzf2VGg=s96-c', 'edH3GZv6zRMfX8i9ZJV0VHdL2X92', 'google', 0, '', '', '', '', 0, '1630102463'),
(317, 'AB', 'abhilimbachiya@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GjU1vYX-AlhZ6jEOmKj_UjMTgYMGf5Uv2y_JsFlNA=s96-c', 'kz4006oEbEe1WNLaoj3mbkdxzB03', 'google', 0, '', '', '', 'dfqzW4KUfII:APA91bGXqU3Y5hZ1CjRJUJimfOdk2fQiZuolCGxUQ83lZOckuPraJKEvJoN3Kko7cUJTrBuUw1dOIgiZQqjlV-SqFXyQcDwX2DFIxljP--XyY5aJomcvFxrXwjb2ID_OTCLN8EtluEH0', 0, '1630144079'),
(318, 'Talha Munawar', 'talhamsajid@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GhciH_dqnsl0f0cf1cBenbiIDd3UTLPiDfXxxSPOQ=s96-c', 'K7bThkCYBcf3v1Zg4katIzAhZG72', 'google', 0, '', '', '', '', 0, '1630144747'),
(319, 'Poda Naya', 'passvenuma@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJzepAAtlM1J68Fpp1pPESUKfVGLUBFhsQ45AXo=s96-c', 'bfafE2v4XfdLQrXnN2jrnvA9Q4W2', 'google', 0, '', '', '', '', 0, '1630145140'),
(320, 'Selim Edde', 'selim.edde@mellowline.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14Gj_1DmJ7o_6JymT4qb76acSJjhyYL2U738-79cn=s96-c', 'l2sRJlhjSSQ8jbSYmWribKSr3w92', 'google', 0, '', '', '', '', 0, '1630148994'),
(321, 'Bijaya Sahoo', 'bijaya.sahoo7@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GiWLYynCONKeAjYi3A5AQDmbUQqjsnwtuqtjknX=s96-c', 'FWFK7Ag0mvYrkA8dMal71dflGJE2', 'google', 0, '', '', '', '', 0, '1630173650'),
(322, 'abhishek kumar', 'abhishekku2@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJw6pavhB4bN2PJaGGIpgw5_VM3kqLAYkbhFSNpEVg=s96-c', 'iXQa56O9LqOJSBTDUaxu4hK6yWf2', 'google', 0, '', '', '', '', 0, '1630175386'),
(323, 'Er.Siya Ram', 'siyaram718@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GjiNP3ah33gqO_favyPgzr9vN6G3hPGr6psxOAB-w=s96-c', 'INOoCdsAXhQsiV5lpY6ctaZQgix1', 'google', 0, '', '', '', '', 0, '1630201818'),
(324, 'momo', 'traore4jesus@yahoo.fr', '', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, '', '', '', 'eIKLjh8fbyc:APA91bHwEOiWIJ9iYK0B2ssEWWArQS0dweZxLupeI7RXCUPeOwTn2K9B99FJ5iDqD9dk7H5SO6zC23yIblPHVwof8I55jqGj1bo3Ws8DxLtspUruUG66vlTCwJOZseI9ZcoECrNdMGTQ', 0, '1630203976'),
(325, 'testngn', 'testng@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', 'fQNfy6GdMgo:APA91bEGLuIH90d9STUIDFjjJspgPFMnTijPBsZ5pwsrgM9KUsFfovuteAFDNxKSsmeE8-tVYBkVw0NHUsq_m6AqNV6GeMSnt7IKFUePgdsGdpuJLEsAXi-DYnKJ1XA-VJXa-OCBg5L_', 0, '1630255383'),
(326, 'Sk3tch Studio', 'sk3tchstudio@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJwUTxmMP0CTWeQ7UFuc_vOa1VnsV5fOpI29G_TC=s96-c', 'o47xImd2iRPRI35YWymgq6ZnSVl2', 'google', 0, '', '', '', '', 0, '1630275519'),
(327, 'Ravi D', '2105royals9@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJya0UZZYcOKxWecqoDyhAHQLau6t1a2SNm7-2t5=s96-c', 'KQq75mh8hLhlJmP7I4q39zgbGFG3', 'google', 0, '', '', '', '', 0, '1630322341'),
(328, 'Igor Braga', 'igorbraga2025@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJy7-IHgXPEiRrY6LlUL_32Uv6GrL8ol9GYgV2x9=s96-c', 'FfM1fjnXvzch1YbtFqn0O9d5P7I2', 'google', 0, '', '', '', '', 0, '1630333763'),
(329, 'Abayomi Ogunsan', 'larrysan2000@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJxSOECbUJWimEpBoOLVevUTpcdc2wKQ6E6NVm4r=s96-c', 'JRHlKCkD4JQBnGloh1K25iAtgTx1', 'google', 0, '', '', '', '', 0, '1630387894'),
(330, 'Dave Minion', 'dave@minion.com', '', '3526233c6981d58d5038a26682ee7362', '', '', '', 0, '', '', '', 'fA1ocwkwqMI:APA91bFX8C8MtEuNUuIuSg-PYHnPpC61EhZWUaSb8C-epy7ZGV_FSr8X5z88RxbwI7RfkaKODsK_n92U7qr9753Je-xbZvf0Qofnt6um007NnsNvHa8uaard9l5KocbIGDDVsnGcGLg8', 0, '1630411711'),
(331, 'ggg ggg', 'ggg@hhh.cccc', '', '9494d3f03115ed888c1c1e19e2e318f4', '', '', '', 0, '', '', '', '', 0, '1630423450'),
(332, 'deneme', 'deneme@deneme.deneme', '5454545454545', '8f10d078b2799206cfe914b32cc6a5e9', '612e4a05dc68c.jpg', '', '', 0, '', '', '', 'cpEM3jPV0m8:APA91bFrCacamS5sgH8c69c0KCOwZMPA1anQD6BnRMPVCt5liasJVFCKCfWs_UT9pF8vqAj2fQx5aEplWbIZaTiu0eIiI9jkjEUw9lA6qh3b_4Ux2iQsMx0lAUYSx6GUwqS6HrJ4TkHL', 0, '1630423482'),
(333, 'Jayson Presto', 'jaysonpresto.iprog21@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GiqL8iICU6c5vjKI2VRIIiW8TCfLOcy28OXfptqiH0=s96-c', 'hV1QuPLOlZbAbxgVN51nGDHAqY33', 'google', 0, '', '', '', '', 0, '1630424131'),
(334, 'Ronald Iniego', 'ronaldiniego23@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJwbc20_UjY0h_oGgP6vt7r-8g9hkKdany2wibyq=s96-c', 'CyjMJJDVjkcMbfaIZL9sEWTSPVL2', 'google', 0, '', '', '', '', 0, '1630424169'),
(335, 'Vincent', 'maskarado1993@gmail.com', '', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, '', '', '', 'e1bugVMF9NY:APA91bF8NC1coBMVHEphYSclzbHXnK9RUVJoCiNUd2QDBoxtXa_O9q7XoQFT-2q1fihkKYriqsR-Ki_Bkxw5zvBc5Jj7ELvIZ6ARZEToUb-GJkpxYnjqe7_HPMiR9ytFitgx35g8Nb64', 0, '1630424811'),
(336, 'aap', 'aap@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', 'dtzvrsc8TMU:APA91bEzSf5eOftK8wLtps7E60iBQ__jXiNQ9ErInkYfeBVcXUSBNEy5Y3S_D0nGvA-fFjueV-wNJB21Qatv9VxMBBsNNMQT4z5MH7Lcit6ZHOGV7eSz8ROMq0MKm9gEeukRiaK5BRKH', 0, '1630428390'),
(337, 'vijay', 'vijay441@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1630491906'),
(338, 'Vijay', 'vijay4499@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', 'deOAMxOpI8w:APA91bF9-Um3CxIjhZ1zVa17zlcsqcuxgX9MpxBsGmlkMT_FGDklk1x5BjRIbU-smjl5XNJD9pq6G3TE0x-RkudM19xRbbGSr1y52Vt-D2VnuWQkj8lCIFl6vux1pogmhzncO_DieWfE', 0, '1630493817'),
(339, 'Ahmed Karam', 'ahmedkarammini@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJyf5VqKDKLg91JgugIZzCNMOVujMeNLXn0GMnm4=s96-c', 'FCCbX1JOCXU5Gy9AZDKX2YLy7Gx1', 'google', 0, '', '', '', 'e8gdx6hWtTg:APA91bHfbl49Dx3OSMxIJ_YHVuJxd1iestW1a0dSUjZzpADcrRBP7edvhzG0fKR9FhCeK-QcmMl0gmY61nj5OkXx7axd9Bhx7GNlx6x_T5atM-iNTmh6tWPl9AfZn3Noi72N51xm3zo-', 0, '1630498167'),
(340, 'Ankit Chauhan', 'infinityclasses1597@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJx2HNuly6vzc0nKojr-BnlTB-IUV6GTmJ2EAsKe=s96-c', '47nCt7e1dLaulKEE95bOdU4XfuJ3', 'google', 0, '', '', '', '', 0, '1630509605'),
(341, 'amit', 'aapcure@gmail.com', '', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, '', '', '', 'e3bDE6H0wXE:APA91bGLrB8KmPT_bRLsqKeUNe3eql7JItcpAhUZ-mZRrZRIVxCsatABaXa0jXmxCybRJhAblvxnMsGUxNaCWWEF7dC5XdWGP6QCyymmN4_4wbjVreZ7wdAbohmmRq0pLACRCQUFOcQI', 0, '1630515566'),
(342, 'Sean Tan', 'seancreative@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GiQ3oxzFx24-o-K4ngzQrBAH5lgD1TDNdIRfiM3Iko=s96-c', 'SZWXh7fJp6YV2kdCtWeyNJ1QcAx1', 'google', 0, '', '', '', '', 0, '1630541368'),
(343, 'Arménio Vilhena Ganga', 'armeniovganga@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GhmIyNN9QYeIDApUZC7ViG3JxkR3cqYmLieU21_J7I=s96-c', 'YmBNfKyW7VNCNkZ5fpRUGx206Zn1', 'google', 0, '', '', '', '', 0, '1630548407'),
(344, 'Bibhubedi', 'bibhuprasadbedi@gmail.com', '', '7571f6de5f5f577ce430f16c047e4499', '', '', '', 0, '', '', '', 'ciaAmxdTjw0:APA91bE4RzWNm2BWkQl0A0zP5sPXFZGlKgANE2KNjrp1HrIOU9xnfkVnYd53ZZdQwFVGGJXC9Nlv77EhLzstqJkQtzbRvTixRlsNHHZcki6-p-2_ptjSdj4W562hr1Z2OoizyUeaePIV', 0, '1630554049'),
(345, 'Bharathi Raja', 'ksbharathiraj@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GhV5rypM7E2EJnzAP8fvnPouTBEMnlkQHqLrYTKtA=s96-c', 'j9pPPbaQUXOZMu7cprt7u7Pajdi1', 'google', 0, '', '', '', '', 0, '1630569926'),
(346, 'santhoshroyce@gmail.com', 'santhoshroyce@gmail.com', '', '9198a370d81b5f1e4520a6157eb01d0e', '', '', '', 0, '', '', '', 'f0uhM45ztxk:APA91bG0fprZUzQhK9J65oI-VqvLWOEvuwQLlE3iSD9JhKmjUc0b0J1sgBNamQJjFQeBxDGMdHExELf0vCvvEU0ynbIiq1uPz6qpFPz8N9GSIpQwVAi3sS7JGjxdWaIE1Wyo3LwS-vtO', 0, '1630579864'),
(347, 'Manojkumar Panigrahi', 'manojkumarpanigrahi90@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14Gg93U5q0R69nBp7fNbZvMpkWoQHIfj_QDgdv2Apew=s96-c', 'PMIkVJfuVHMtIBpD1PUFrDTiHwh2', 'google', 0, '', '', '', '', 0, '1630595336'),
(348, 'sosey', 'silverkayzersoze2000@msn.com', '', '8d2d815105ef54785902a68dd7655c2a', '', '', '', 0, '', '', '', '', 0, '1630666310'),
(349, 'ashik', 'ask@gmail.com', '', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 'fhhQieM2P_k:APA91bF0G56TXBO2DgYbC2WOxLLCGZogbH9qJ09PD13VgFpqjFWiASQQHOuY40_igxp--7pf0j5EfaBJ_Sok0Eq2ML_3biVL6TOyl06B_TwzF4lXsBpduZY2woSez3WobbyK4Y33iFUn', 0, '1630672197'),
(350, 'Gaurav Chauhan', 'consultant.gauravit@gmail.com', '', '857f12c7851f6931f1c1ea871cce12e2', '', '', '', 0, '', '', '', 'cHh2HMSad7I:APA91bF7T8nIZhup6rtVnKde2hn28chHe0as1vQc1XFona--wbD54o-WKUnX05CKc-T7fo1BbGuYwFqyfqr6owuEM8Q-uPjeINW6m5qKcjELTeITFclWR11PrGXRO7SUhKqAqbxVeGi_', 0, '1630694542'),
(351, 'Alex Soriano', 'alex.soriano.pdc@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJyByx35rf1wmfZKxH6Hcktakq6Mud4uhYqcaMrb=s96-c', 'nQDHLGpLO9d4BGgJNwk6A4L3OsP2', 'google', 0, '', '', '', '', 0, '1630763216'),
(352, 'hamed', 'hamed@yahoo.com', '', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 'eRmA7vdIjiE:APA91bEcMx8Mw1v5VupzlcLn6ujlOAzejfDfxs7OCmS1Ul-pEsNn8ygnrKfXBP9wwD3Nr-L6w0AeQ856eUbiHL4iWIaxJB1HW1yAcxCNNn_2eqNZGYkF3ysI6ccF4BFEaYm2Xrf4Ee68', 0, '1630778551'),
(353, 'Gufran', 'gk890721@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', 'c-h-DxQY_bI:APA91bE3MnTyhpcYMiRewXDOLRC7p5KNU3RnjIQSyKwdD8HZ0KVz1kx3C4qH7bXcH6_6JwZZfqOmAG6a7MCmNBgU5KP32b4qPCE8OL1-fyo_aNwXlxbIL-Ta4M7SWi0Y_ARcO1Z4TdcJ', 0, '1630811160'),
(354, 'sanjay pp', 'sanjaypp1996@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14Gj_icCOgTO_5xpM-rrVj32_tMaKKhoYQebu5nujyA=s96-c', '1XFMiPXqeqMSIhLXPIq1blwlpv42', 'google', 0, '', '', '', '', 0, '1630817816'),
(355, 'aranagarwal', 'karan@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', 'dPULoJbNqgE:APA91bHQutiNSYS044-r2sPzyYeUNK3mc2rYL-s_2nZAlzyy4HbgGaW7IoHi72eM-jzUmbKTLaF4Db1X4utvllsbn1mWk6rzmfe-Xjue2WjYw1jLbJxf_vuiUEVH-X7YW3Hji1lZcWaz', 0, '1630821348'),
(356, 'tay taylor', 'taylortay.contact@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GhQwEjkMnuhxLIiBy1v6tWrAoi45MSBaOysQmmu=s96-c', 'CzNEtem91xaiWe9BB71PUWkkezx2', 'google', 0, '', '', '', '', 0, '1630845318'),
(357, 'truth', 'Truth.kaycee@gmail.com', '', '25f9e794323b453885f5181f1b624d0b', '', '', '', 0, '', '', '', 'd-kvn42rwPA:APA91bEa2H3Ajqu1fgMDXOwFkBsL_h7n322UZ-8rLt0ce5jEpSVNYWXh6qTE6uPj3bOGIJSVU67u4x3Ge7cp4KcNez7csUhSCukMWqo5PCTgxIY_Z1OrT2ziFTQJn3afg70oVSRfVP6f', 0, '1630865930'),
(358, 'Vikas Jain', 'jain.k.vikas@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJwY9ahPTn9KHnhIbvOJo55L9fh7VWymZJuCqAhw=s96-c', 'm0DIJAo2LYNWkwL9jQlAT6PM2n22', 'google', 0, '', '', '', '', 0, '1630907824'),
(359, 'Vinood Rajpoot', 'rajpootvinood@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJzA7tqB4MBqydTJFLamcipAxzGe6AhRI61VJaZu=s96-c', 'NE99ei6RopfqenLvJXT35WX1XBq1', 'google', 0, '', '', '', '', 0, '1630911294'),
(360, 'Arbab Shujaat Ahmed', 'arbabshujaat1998@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJwmkikyND7FOxoFm6zVsa_Y_rFqxroaLvRdyBTI=s96-c', '5U25vPlUzEZFEnvUBFRdip6kYI02', 'google', 0, '', '', '', 'f-EvA5G2gjY:APA91bEZ7DXfSwlxYB5U-U7c1FzgyxcpnScxdWMsZyBE9HhleVemb9VD7sG6g85JBUH6XVGg8x58kf7GOUN5QULsQw-Xn-P1YVsOuaUHLRS_rRqkatIOMWYRymUmlCyEr2OIDy7rPrzD', 0, '1630929056'),
(361, 'Ian Kuria', 'ianmwitumi@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJxbSLwDJcjKNqih9TS6HGlgMWTm5V7hz-ehx-zu=s96-c', 'dmVJNv4bKicJKPFsSrE6xwLAQ9j2', 'google', 0, '', '', '', '', 0, '1630992586'),
(362, 'TECH ARTS', 'harshamom28@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GiP7C-KO5AbZqz9BllgG1m83ZBkL8aQJLPaTqN0LQ=s96-c', 'XLe0k8yuL8gVu3GI2sDEJyIOiIh1', 'google', 0, '', '', '', '', 0, '1631000258'),
(363, 'kk', 'kk123@kk1w3.com', '', '4297f44b13955235245b2497399d7a93', '', '', '', 0, '', '', '', '', 0, '1631005406'),
(364, 'kkkk', 'kkkk@kkkk.com', '', '4297f44b13955235245b2497399d7a93', '', '', '', 0, '', '', '', 'eKY-Fk0OPZM:APA91bG3_sZMbKgb1I0DCt-FEONDgbhw6wem9DhotBN3gTVLKYM-aaduhlNEauai7nbHchEfRj6HLg80Sj1aXSMtn6Tn_1d9V_DWCZ6yycQFAPKE_E7HgFytaxlgmXac8Jy-TYWZ4cm4', 0, '1631005464'),
(365, 'Charges your Life', 'mobes.us@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14Gg4-_hgdZcdaEthxIXA4It5iiGY6qTpjlrB_Rzk=s96-c', 'vxuWqT0ODIeRMrqOYURFUDhp0MG3', 'google', 0, '', '', '', '', 0, '1631011839'),
(366, 'Iqbal Husain', 'hr.iqbalh@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14Ggq3Vh70nWXy4omRr1Fj8gIAK_l_vAou0YsSFSS6g=s96-c', '1miRUfFb1uMpJPiToLYkPwvemmD2', 'google', 0, '', '', '', '', 0, '1631078969'),
(367, 'hello ', 'hellorv4926@gmail.com', '', '8e228cec366cfd0d360373cbc1e31cc9', '', '', '', 0, '', '', '', '', 0, '1631081576'),
(368, 'alam', 'hellorv4926@gmail.com', '', 'd8578edf8458ce06fbc5bb76a58c5ca4', '', '', '', 0, '', '', '', 'c0u0RUs9uqo:APA91bHYLaErdcP0HzJzvc--IIfkTsAx89gJ1HNsPSs7K0ssG7UpQtD_sPquFimBOX0f9Lu1_jNmFkz8IIcJQmpDIcYKWZyTTzddQDYAdHlJkiUA-jJJBkjnuzHAuPoTQHhPzqll8Rcx', 0, '1631081615'),
(369, 'ALFA Modular Box', 'alfaenterprises04@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14Gi6mi5oS3sDJyewexVSffbniGHF3EbV8zusezZg=s96-c', 'KWt2kjRVa0cnGfUZJRpiPPmomEH2', 'google', 0, '', '', '', '', 0, '1631128524'),
(370, 'Zahurul Huq', 'zahur.dhaka@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14Gg1vHEGcRcwYHHJhJtQWIQEec7wgXp6AkbKbO8gcQ=s96-c', 'TD8TFIwotadPCbBpj7xnr83DKO52', 'google', 0, '', '', '', '', 0, '1631159357'),
(371, 'mahesh sharma', 'maheshudr77@gmail.com', '', 'e1177587abc4cdca3b3c6e09df1360d0', '', '', '', 0, '', '', '', 'ehux1s5z8MA:APA91bFx1hX7TGo6tga0dilwRRmVj2P6B-1IephFAJ08jLWybi9STvbvFrQb590L6htRSp4hrALmv6D4tUiLiAiDSAAWh9uNBMNJZF7BHqMWp34H-j1BD10O5Ma0XEyP7JTGK47fdNI8', 0, '1631203216'),
(372, 'kara jagne', 'karajagne@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14Gjp0R14mkkl_pG1MMm7rXwMO2gM_Bb-VG4sbDs6sg=s96-c', 'Oq0p9j7MgoVrvePAdllkoP9HvFk1', 'google', 0, '', '', '', '', 0, '1631210628'),
(373, 'Adib Rahman', 'adibrahmanuae@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14Gj-_NLXcScalxtO6HyR7tntwTzAYrAd4JTfRXVkmNU=s96-c', 'BfU5dLtWsscDUbagYbuVP47pW4m2', 'google', 0, '', '', '', '', 0, '1631215273'),
(374, 'Rohit jha', '791jha@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14Gh643HC3Kv-IZv2Sf4E1PxlyLw8PhyOxJFuu5I8xQ=s96-c', 'UEn9fXaxd0SnXGz6eVNQjdqw5hp1', 'google', 0, '', '', '', '', 0, '1631215643'),
(375, 'Rashid', 'rashidsaifi604@gmail.com', '', 'ca506aeb8519e63d0a1df67df3738b94', '', '', '', 0, '', '', '', 'cDIoWVd9Esk:APA91bEY3Ml__oID9XOhz2X1sLAhCmiLnNY490eGjpETlXXx_VXmX6X5jKGaZH8Dufq1MUjhy2eEtgS6wRktfw1ZRrfnLgaELL1n0nkdcg8DchBKvsNcS97aifEBsMIXNMx5JaP1fBiC', 0, '1631227763'),
(376, 'Rohit Nagar', 'rnagar3434@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJx_6dtLFqOYhCN7LBeQ4SrhaeEG2mwXHw3pjlaR4nc=s96-c', 'qQ9hb37GF4c6UrmMFoYdfQFjcxF2', 'google', 0, '', '', '', '', 0, '1631304803'),
(377, 'Asif Zubair', 'asif.zubairbd@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GgoQGZLL2AcpI5CPbK-2ys2vI_BCtgjyRf_qQex=s96-c', 'ETiNPnTeGqQZF0NMyg21KXiuynt1', 'google', 0, '', '', '', '', 0, '1631375285'),
(378, 'dotaimba', 'hendramartin.pum@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', 'cHkH47h2Kak:APA91bFPRc1AVS6EmtwM7YjS0JFmzqtMzD1bcPrD_9QENKXs37vDR7gvuutyk0HtZ6ccQ3z-qppuRvA5muXfRypm7G9lZIAZQbXgdqN9j_1p9m2gq627TNswgrgNhGGuosLP8GlFcnyE', 0, '1631375895'),
(379, 'Vamsi Madduluri', 'vamsimadduluri.777@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GgPmlFj6pp4DJX4MPVc7Cn20L2pN03WiVY0n_m3Tw=s96-c', 'F2IIWV6sEbT72bAeaHAEt6CYP192', 'google', 0, '', '', '', '', 0, '1631377063'),
(381, 'Shannon McGee', 'slmnow@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJzd9l0gRiIDRczX63UhEM0g0eibUUibBtuQ8C0k=s96-c', '2Y4Zw9s3mUbVoQBKoVXeGcxNZx23', 'google', 0, '', '', '', '', 0, '1631411407'),
(382, 'Maneesh Yadav', 'f5.maneesh@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJzDNcGI5SeWtsGEQHQIwytRbLpq0PVCnQpICs5B=s96-c', '0EhECqwEf4Q7jDZw2ePYaRE6am22', 'google', 0, '', '', '', '', 0, '1631450303'),
(383, 'Baher Al Kilani', 'baher.sy@gmail.com', '', '', 'https://lh3.googleusercontent.com/a-/AOh14GiAwlWxd5b6Wz4DxKC_xWnLZWu6R3tiJvv4L5sy1g=s96-c', 'QeeJSznDSjXMKrphkSBvT8SiNkF2', 'google', 0, '', '', '', '', 0, '1631462104'),
(384, 'Mike Paul', 'cr1stvote@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJyJY9C7zWV2UtPTJyhoRXxkqZob3wuIDbWULcOW=s96-c', '7DET1ktheqZUUj1KCMITjyRZPSa2', 'google', 0, '', '', '', '', 0, '1631498548'),
(386, 'kanika Primo', 'kanika.primo@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJw_fun_n3s4OSMeSwXC_jzFBOzySpMm262Ky58H=s96-c', 'j9DccQGsi8QlG8EplEmcdcTERwr1', 'google', 0, '', '', '', '', 0, '1631514698'),
(387, 'dipen123', '', '9988778800', 'd0970714757783e6cf17b26fb8e2298f', '619499ada4d6d.jpg', '', '', 0, '', '', '', '', 0, '1636967860'),
(388, 'dipen123', 'testuser@gmail.com', '9999999900', '25f9e794323b453885f5181f1b624d0b', '61939ebe5deb7.jpg', '', '', 0, 'surat', '', '', '', 0, '1636968107'),
(389, 'test101', 'keval.primocys@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', 'cQtULD5QwGU:APA91bG8rroRG2kQPIc8D77MxPK7ZGWPflKFePFT6kgpuQl3quUVDiWbuCmapcNsmd6Wqv03AavMzBqtXHRjGhGpfoTTzwDVZEY8tU66H4uYnTzx-1Zd9cCuezElOs8EGko3OGP5yPFX', 0, '1636975060'),
(390, 'Dipen', 'ujjawalalphawizz@gmail.com', '9240252217', '4b66f9e4cde7a003b210c2776ba1ef5a', '6195faf341e12.jpg', '', '', 0, 'surat', '', '', '', 0, '1637129131'),
(391, 'dipen.primocys', 'dipen.primocys@gmail.com', '9867543210', '105dde255d2d1b61d35128d51fc9cef3', '619dd63583c8f.jpg', '', '', 0, 'surat', '', '', 'e-IQlP_fSHKrRZ4ClpEoiW:APA91bEELt5d5jZWy3aULDrZqdlgadL5T1voRgjkdU3NOvRUxxofP0o0pfIS4vFaEhAJgHd44CbKzMcyN_z2k9W0MpfpTiKUhDY-YwCAhu2IflG7JMhNzfgoPI2iuZ63Rz57n8hUoYR0', 0, '1637224657'),
(392, 'kanika', 'kanika.banvet@gmail.com', '3256644268', 'e10adc3949ba59abbe56e057f20f883e', '61ae08ee191f2.jpg', '', '', 0, 'city centre ૨', '', '', '', 0, '1638793518'),
(393, 'jittu primocys', 'jittu.primocys@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJxJlBlJ4VbSM-WJ2OhnIFHfp9RZLI50hyxf1o3g=s96-c', 'Erl6DKyGA2UzSPHEJFZEQ0JZHgk1', 'google', 0, '', '', '', 'f7nQu89wRV65nznUyz50hQ:APA91bGztD_Nb-yO8n8A5rb5NU7p8lnkxK5dh4ltkWn3roMp2Ux5yOvHhO1EqrlR0fa3MKgVq8iMTo2FTrgkFbAbeyapBA3wWyrUOGFtxThGM-2NrVIHdUo4zPQb1rPUXFhzdIF61LpU', 0, '1639473321'),
(394, 'Arpan Primo', 'arpan.primo@gmail.com', '9824614016', '', '61cad2bdd4ba8.jpg', 'qRxn3DTn9ebeAFrU0KpX49TLka83', 'google', 0, '820 City center, near heer party plot, science city road sola, ahmedabad', '', '', 'frWX5wNpdkHusmPA1gYCIY:APA91bGmOGchqVtrSk4cQhvEtKniusmw44DPDw6FxUq6ncPsu8Qr7CCNMJJmEQLmVkymYMTW61V-mcTqX2ACsTgOVVgAalOyP0O3A25FmdswHRD1rHWLFusrmVglLPZVZNIph4jYtRTf', 0, '1639480662'),
(395, 'Kanika Banvet', 'kanika.banvet@gmail.com', '', '', 'https://lh3.googleusercontent.com/a/AATXAJyXbIECnl9PrmeH6hz3l0t7LPhYwezG0ox2S6kL=s96-c', 'dbE4yM8lP2YkEGRdogBRUzIhOHq1', 'google', 0, '', '', '', 'dk0hDCQ6T6O1njs1Qj-mAv:APA91bFG5MxybGoi4Mx28LvGdURDIowTo6zX8dPVUNE32WKo6S84BOS_ls9VE_sqRkJrHl0KHqUY8FCEiaiFiyJ7OHKLvdUX6MNp56mT4-dd3KpZnyv0gbHPx2RXEg8pDKVbBbWPTv3x', 0, '1640613808'),
(396, 'testing', 'sachin@gmail.com', '7697792497', '7002be775308c0b30b39d7683261a64e', '62051e5d28011.jpg', '', '', 0, 'indore', '', '', 'dE7j4nCaTeieYe3gqknZt5:APA91bHt6rZ31SiAS51Fvm2yc3S1ZjvF1sXb_zhozaStuR2iofju3w7NJIzvOR0k5E-5Xlu5mfO2nYFHvcM2sCMGHlZwiViIWzltbYCNzfuZZpEhrVzZLo86ZBTvDEGS58bG4Eopy3Cs', 3332, '1644471840'),
(397, 'wasim', 'wasim@gmail.com', '7974072472', '25d55ad283aa400af464c76d713c07ad', '623ecace56393.jpg', '', '', 0, '', '', '', 'ciIey-OZW71gxpuZRw16Tf:APA91bFGrwD-71hLhkW1VocyxC9YaKoL_a5Zu3DTqYZkc9hG2Ar-ywNMaUahy7xrS4UkEl6BjE0b2lg4BdRgIYTC3DYo_au0Q2kC8tALOphdZYSx2Xnefpb4NSghVnb-C-oihvYH8gTE', 0, '1644584509'),
(398, 'abcalpha', 'abcalpha@gmail.com', '7894561235', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, '', '', '', '', 0, '1645081630'),
(399, 'abcalpha', 'abcalpha1@gmail.com', '7894561232', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, '', '', '', '', 6673, '1645081660'),
(400, 'abcalpha', 'abcalpha1@gmail.comd', '789456126', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, '', '', '', '', 0, '1645089507'),
(401, 'abcalpha', 'abcalpha2@gmail.com', '7894561231', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, 'indore', '', '', '', 0, '1645090684'),
(402, 'abcalpha', 'abcalpha3@gmail.com', '7894561234', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, 'indore', '', '', '', 0, '1645090959'),
(403, 'abcalpha', 'abcalpha4@gmail.com', '78945612356', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, 'indore', '', '', '', 0, '1645091009'),
(404, 'sachin ', 'rathore@gmail.com', '9999999999', 'fcea920f7412b5da7be0cf42b8c93759', '', '', '', 0, '83, Ratna Lok Colony, Indore, Madhya Pradesh 452010, India', '', '', '', 6463, '1645109793'),
(405, 'Jitendra ', 'jitendra.356@gmail.com', '9922650000', 'df8d7b067a6765756ff08c85fb36f4b0', '', '', '', 0, '644R+VXP, Nagpur, Maharashtra 441001, India', '', '', '', 8975, '1645256368'),
(406, '', 'primocys@gmail.com', '', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, '', '', '', 'dI4m-OP4R5u_JqyKC9FA0-:APA91bGJ2M6_sTjjaCcQ4msOC0prP9fQtDEw0gV-TutLf50kDbJRqvOESIG6aKW2ZhYO1kzideSfT60Rp8V0l2TS5y3-zbchIzmQn1yJgo7u_02MLFlNCDCZ_joFbxIVgmjv7-LrKRgf', 0, ''),
(407, 'yash', 'yash@gmail.com', '9658741258', '25d55ad283aa400af464c76d713c07ad', '621c94c28fe04.jpg', '', '', 0, '243, Risi Nagar, Rishi Vihar, Indore, Madhya Pradesh 452013, India', '', '', 'fHz07LkPQwGQr2xrDtRjtz:APA91bEFIGk5pVHYrOnbqJeTTBaBkppsrgWbDEJshirXFbefMQAepTdOMTw0jXiMd_Gio2RI6K6KVIco820dBA11ePFR7TZmlStRpMZw-h1Dl6pS-OoVWRnbKka6gZxEvI5GiiThbXdL', 0, '1646036892'),
(408, 'shubham', 'banke.shubham@gmail.com', '9755186862', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, 'indore', '', '', '', 9699, '1647323414'),
(409, 'Praveen', 'paliwalpravin12@gmail.com', '8959390998', '25d55ad283aa400af464c76d713c07ad', '6231846926e6c.jpg', '', '', 0, '351, Ward 7, Yashoda Nagar, Gouri Nagar, Sukhlia, Indore, Madhya Pradesh 452015, India', '', '', '', 8449, '1647412169'),
(410, 'prashansa', 'prashansa@gmail.com', '7389548752', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, '83, Ratna Lok Colony, Indore, Madhya Pradesh 452010, India', '', '', '', 1615, '1649243603'),
(411, 'Demo user', 'demouser@gmail.com', '9638527410', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, 'Vijay Nagar ', '', '', '', 6833, '1651210824'),
(412, 'Pragati ', 'pragatialphawizz@gmail.com', '7773856179', '25d55ad283aa400af464c76d713c07ad', '626b7bc1230a9.png', '', '', 0, 'Vijay Nagar ', '', '', '', 6170, '1651210909'),
(413, 'Aditya', 'abcd@gmail.com', '7004681542', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, '118a, opposite Lenskart, Graham\'s Land, Ashok Nagar, Tollygunge, Kolkata, West Bengal 700040, India', '', '', '', 0, '1651746160'),
(414, 'Sanjeev singh Krishna', 'infosskrishna@gmail.com', '9303131703', '2d035953e8b2a4424ee5160dc3f3457c', '', '', '', 0, 'bhopal', '', '', '', 1635, '1652001149'),
(415, 'rajesh', 'raj@gmail.com', '9753717525', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, 'Vijay nagar', '', '', '', 3268, '1653137151'),
(416, 'harshit', 'hu@gmail.com', '7024173067', 'edf3187d0cefe749cf794a81da8607b6', '', '', '', 0, 'indore', '', '', '', 5209, '1654064585'),
(417, 'harish chhhhhhhhhhhhhhhhhhhhhhhhhhhh', 'harish@gmail.com', '7024663830', '0f9ca3159899aa1fa32d0124bf58ca8f', '', '', '', 0, 'jakhon ', '', '', '', 7272, '1654586341');

-- --------------------------------------------------------

--
-- Table structure for table `varient_option`
--

CREATE TABLE `varient_option` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `unit_size` varchar(255) NOT NULL,
  `unit_price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `varient_option`
--

INSERT INTO `varient_option` (`id`, `product_id`, `name`, `unit_size`, `unit_price`) VALUES
(1, 33, 'mg', '100', '100'),
(2, 33, 'mg', '200', '180'),
(7, 37, 'dgfg', '1/2 inch', '100'),
(8, 38, 'kmk;kmk', 'ko,k,l,;l', '45/;.;\'./;...,l\'.'),
(10, 39, '200', 'mg', '100'),
(11, 40, 'test', '100', '100'),
(12, 41, '8i', '1', '8999'),
(13, 42, '1', '1', '1'),
(14, 43, '1', '1', '1'),
(15, 44, '1', '1', '1'),
(16, 45, '12', '12', '12'),
(17, 46, '11', '11', '11');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `facebook_id` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'vendor',
  `login_type` varchar(255) NOT NULL,
  `profile_image` text NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(500) NOT NULL,
  `aadhar_card_no` varchar(255) NOT NULL,
  `date_of_birth` varchar(255) NOT NULL,
  `device_token` varchar(255) NOT NULL,
  `date` varchar(100) NOT NULL,
  `service_type` varchar(255) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `work_status` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id`, `uname`, `email`, `mobile`, `password`, `facebook_id`, `user_type`, `login_type`, `profile_image`, `gender`, `address`, `aadhar_card_no`, `date_of_birth`, `device_token`, `date`, `service_type`, `specilization`, `time`, `work_status`, `status`) VALUES
(30, 'jittu primocys', 'jittu.primocys@gmail.com', '', '25d55ad283aa400af464c76d713c07ad ', 'Erl6DKyGA2UzSPHEJFZEQ0JZHgk1', 'vendor', 'google', 'https://lh3.googleusercontent.com/a/AATXAJxJlBlJ4VbSM-WJ2OhnIFHfp9RZLI50hyxf1o3g=s96-c', '', '', '', '', 'fflyAEX2RGGeY0nGoZEMsr:APA91bEPObmcB7AbUsH80gy0jsgwxIieNaGNcXcq7NZiXAT5u-SUV9Nb0A6wA3NGdAGndOfONIF0XyhzM_8-grikmNsq4B_lU00t9DboMii8BN6x85OZBHsI2RIgDLUNnlKCfVQL3a1K', '1640694222', '', '', '', 0, 0),
(2, 'Vendor', 'vendor@demo.com', '', '570de7570fedbf0f246cde29c779f77c', '', 'vendor', '', '6202422182fe3.jpg', 'Male', '', '', '24-11-2021', 'jhkygukjyuj', '', '', '', '', 0, 0),
(4, 'Vendor1', 'vendor1@demo.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', 'vendor', '', '61cad493e9823.jpg', 'Male', '', '', '24-11-2021', 'deviceToken', '', '', '', '', 0, 0),
(32, 'rahul', 'rahul@gmail.com', '78787878', '25d55ad283aa400af464c76d713c07ad', '', 'vendor', '', '', '', 'ganesh dham', '787877878788', '', '', '1645539270', '', '', '', 0, 0),
(18, 'Kanika Banvet', 'kanika.banvet@gmail.com', '', 'fbe42de61037c81773f4f99946294f8a', 'dbE4yM8lP2YkEGRdogBRUzIhOHq1', 'vendor', 'google', 'https://lh3.googleusercontent.com/a/AATXAJyXbIECnl9PrmeH6hz3l0t7LPhYwezG0ox2S6kL=s96-c', '', '', '', '', 'cIMcX2OaTJeNSauGJ5xeD8:APA91bGSht37Bxl-i_qjiYfFqFvQsX8DcqVKO5V6Qw-rwLpZsCyw89-65epLX9RLkjHMdAIq9KvUTsOq5AAcPeoMpddHHk0bMmqrt9Ly-CNEfHQSkNI0uczOq3jl-0w9IRaVqbUmoc7V', '1631598959', '', '', '', 0, 0),
(21, 'Deval', 'Deval.primocys@gmail.com', '', 'ccacf3900f372938027302b655b557e7', '', 'vendor', '', '', 'Male', '', '', '24-11-2021', 'ekWXv0HLQy6Xxn9nIErQye:APA91bFUz87swSDFRmwcv42fvlelo9ODCiBdr_WxiShAN5BISr_WQjSWwtsQt-Cc37X5pROuF0xI0SlOMqIHiAhWOVvK_gVWIGcKvdP2R38s3mw_b0Jdr9XSqeqY-Wr-DPN0NtKY6bsQ', '1637756982', '', '', '', 0, 0),
(22, 'Dipen', 'dipen.primocys@gmail.com', '', 'af8c25c789729ee6514af3aafba29d6c', '', 'vendor', '', '', 'Male', '', '', '25-11-2021', 'cIMcX2OaTJeNSauGJ5xeD8:APA91bGSht37Bxl-i_qjiYfFqFvQsX8DcqVKO5V6Qw-rwLpZsCyw89-65epLX9RLkjHMdAIq9KvUTsOq5AAcPeoMpddHHk0bMmqrt9Ly-CNEfHQSkNI0uczOq3jl-0w9IRaVqbUmoc7V', '1637833896', '', '', '', 0, 0),
(24, 'Arpan Primo', 'arpan.primo@gmail.com', '', '', 'qRxn3DTn9ebeAFrU0KpX49TLka83', 'vendor', 'google', 'https://lh3.googleusercontent.com/a/AATXAJyXXCda7roxoVtdLFvEhVqNuZN3OmtnToUvFCEr=s96-c', '', '', '', '', 'eStLyYdNRQ6yXm2rfpTBl6:APA91bHdrAid7nKVjrOmuElSHpYuq6eVOCWzOOKwP5apuZFPxqNeUs9BgQ5LKWt_G48m10a5-GdtubCwV7P_pzIiyrtpFYt79IwCoRs4AL7K8tTIu6fK9MlEU0JRlOUEpnMmGe68-uQx', '1638177755', '', '', '', 0, 0),
(1, 'On demand', 'primocys@gmail.com', '', '25d55ad283aa400af464c76d713c07ad', '', 'admin', '', '620242951d802.jpg', '', '', '', '', '', '', '', '', '', 0, 0),
(31, 'Testing', 'vendor@demo.com', '9999999999', 'e10adc3949ba59abbe56e057f20f883e', '', 'vendor', '', '6214d79966d38.png', '', 'Vijay Nagar Square, NRK Business Park, Scheme No.54, Vijay Nagar, Indore, Madhya Pradesh 452010', '6998885558555', '', 'deviceToken', '1644472874', '', '', '', 0, 1),
(33, 'rahul', 'drahul@gmail.com', '78787888', '25d55ad283aa400af464c76d713c07ad', '', 'vendor', '', '', '', 'ganesh dham', '787877578788', '', '', '1645604909', 'adsf', 'asdf', 'asdf', 0, 0),
(34, 'Sachin ', 'sachin@gmail.com', '7697792497', 'e10adc3949ba59abbe56e057f20f883e', '', 'vendor', '', '6217d3131f807.jpg', '', '123456789123', '123456789123', '', '', '1645609424', 'Plumber', 'Sanitizing Service for high traffic Businesses, Offices, and Stores', '[3:10 AM, 3 : 59 PM]', 0, 1),
(35, 'silk', 'sikha@gmail.com', '9658965885', '25d55ad283aa400af464c76d713c07ad', '', 'vendor', '', '6218ab1e80352.jpg', '', '123456789098', '123456789098', '', '', '1645783032', '13', '1', '[8:22 AM, 10:17 AM]', 0, 0),
(36, 'parul', 'parul@gmail.com', '9414740850', '25d55ad283aa400af464c76d713c07ad', '', 'vendor', '', '6218b8feb376f.jpg', '', '123454321234', '123454321234', '', '', '1645784875', 'Plumber', 'Sanitizing Service for high traffic Businesses, Offices, and Stores', '[1 : 22 PM, 1 : 22 AM]', 0, 1),
(37, 'name ', 'email@gmail.com', '6666666666', 'e10adc3949ba59abbe56e057f20f883e', '', 'vendor', '', '', '', '123456789123', '123456789123', '', '', '1645791014', '13', '1', '[5 : 40 PM, 9 : 40 AM]', 0, 0),
(38, 'rupam', 'love@gmail.com', '9685085098', '25d55ad283aa400af464c76d713c07ad', '', 'vendor', '', '621c8442867cd.jpg', '', '123456789120', '123456789120', '', 'deviceToken', '1646034923', 'Home cleaning', 'Post Party Cleaning', '[9 : 31 AM, 8 : 31 PM]', 0, 1),
(39, 'ramesh', 'ram@gmail.com', '9658965808', '25d55ad283aa400af464c76d713c07ad', '', 'vendor', '', '', '', '123456789012', '123456789012', '', '', '1646052572', 'Plumber', 'Sanitizing Service for high traffic Businesses, Offices, and Stores', '[6 : 19 AM,  6 : 19 PM]', 0, 0),
(42, 'alphawizz', 'alpha@gmail.com', '7894562581', '25d55ad283aa400af464c76d713c07ad', '', 'vendor', '', '621e0e9836605.jpg', '', '', '', '', '', '1646136984', '', '', '', 0, 0),
(43, 'Sameer', 'sameer@gmail.com', '8527418452', '25d55ad283aa400af464c76d713c07ad', '', 'vendor', '', '621f12c761ced.jpg', '', '', '', '', '', '1646203591', '', '', '', 0, 0),
(44, 'JeetuPlumber', 'jitendra.356@gmail.com', '9922650000', 'd086aa7ddaf1770f6ce3d2eae65fdd7a', '', 'vendor', '', '62388e992e97e.jpg', '', '413512402124', '413512402124', '', '', '1647427286', '14', '10', '[10 : 11 PM, 6 : 30 PM]', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_notification`
--

CREATE TABLE `vendor_notification` (
  `not_id` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  `data_id` varchar(255) NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_notification`
--

INSERT INTO `vendor_notification` (`not_id`, `v_id`, `data_id`, `type`, `title`, `message`, `read_status`, `date`) VALUES
(1, 0, '1', 'booking', 'New Booking', 'Arpan Primo Booking for service Home Cleaning Services in New York.', 1, '2021-12-24 04:42:32'),
(2, 0, '2', 'booking', 'New Booking', 'Arpan Primo Booking for service Home Cleaning Services in California.', 0, '2021-12-24 04:51:18'),
(3, 0, '3', 'booking', 'New Booking', 'jittu primocys Booking for service Fleet Wash & Cleaning.', 0, '2021-12-24 06:23:37'),
(4, 0, '4', 'booking', 'New Booking', 'jittu primocys Booking for service Physical, occupational, and/or speech therapy.', 0, '2021-12-24 06:26:11'),
(5, 2, '5', 'booking', 'New Booking', 'Arpan Primo Booking for service Sanitizing Service for high traffic Businesses, Offices, and Stores.', 1, '2021-12-27 05:42:49'),
(6, 0, '4', 'booking', 'Booking Cancel', 'jittu primocys Booking Cancel for service Physical, occupational, and/or speech therapy.', 0, '2021-12-27 07:10:36'),
(7, 2, '6', 'booking', 'New Booking', 'Arpan Primo Booking for service Fleet Wash & Cleaning.', 1, '2021-12-28 02:39:51'),
(8, 2, '7', 'booking', 'New Booking', 'jittu primocys Booking for service Brakes and Brake Repair.', 1, '2021-12-28 05:04:38'),
(9, 2, '8', 'booking', 'New Booking', 'jittu primocys Booking for service Fleet Wash & Cleaning.', 1, '2021-12-28 06:41:41'),
(10, 2, '9', 'booking', 'New Booking', 'userDemo Booking for service Fleet Wash & Cleaning.', 1, '2021-12-28 06:56:03'),
(11, 4, '10', 'booking', 'New Booking', 'userDemo Booking for service Doctor Nursing care from Home.', 0, '2021-12-28 06:57:33'),
(12, 2, '11', 'booking', 'New Booking', 'userDemo1 Booking for service Fleet Wash & Cleaning.', 1, '2021-12-28 07:04:56'),
(13, 2, '12', 'booking', 'New Booking', 'jittu primocys Booking for service Fleet Wash & Cleaning.', 1, '2021-12-28 07:54:58'),
(14, 2, '13', 'booking', 'New Booking', 'jittu primocys Booking for service Fleet Wash & Cleaning.', 1, '2021-12-29 03:55:55'),
(15, 2, '14', 'booking', 'New Booking', 'jittu primocys Booking for service Sanitizing Service for high traffic Businesses, Offices, and Stores.', 1, '2021-12-29 04:01:36'),
(16, 1, '15', 'booking', 'New Booking', 'testing Booking for service dfghfs.', 0, '2022-02-10 06:07:04'),
(17, 1, '16', 'booking', 'New Booking', 'testing Booking for service xyz service.', 0, '2022-02-10 11:56:38'),
(18, 4, '17', 'booking', 'New Booking', 'testing Booking for service Post Party Cleaning.', 0, '2022-02-14 14:45:51'),
(19, 1, '18', 'booking', 'New Booking', 'testing Booking for service xyz service.', 0, '2022-02-14 14:46:41'),
(20, 1, '19', 'booking', 'New Booking', 'wasim Booking for service xyz service.', 0, '2022-02-21 09:22:20'),
(21, 1, '20', 'booking', 'New Booking', 'sachin  Booking for service bath cleaning.', 0, '2022-02-24 07:55:08'),
(22, 1, '21', 'booking', 'New Booking', 'yash Booking for service Clean & shine.', 0, '2022-02-28 08:29:46'),
(23, 1, '21', 'booking', 'Booking Cancel', 'yash Booking Cancel for service Clean & shine.', 0, '2022-02-28 09:17:12'),
(24, 1, '22', 'booking', 'New Booking', 'yash Booking for service Clean & shine.', 0, '2022-02-28 09:34:28'),
(25, 1, '23', 'booking', 'New Booking', 'Praveen Booking for service Home cleaning.', 0, '2022-03-16 06:33:56'),
(26, 1, '23', 'booking', 'Booking Cancel', 'Praveen Booking Cancel for service Home cleaning.', 0, '2022-03-16 06:43:30'),
(27, 1, '24', 'booking', 'New Booking', 'Pragati  Booking for service Home cleaning.', 0, '2022-04-30 10:25:30');

-- --------------------------------------------------------

--
-- Table structure for table `view_store`
--

CREATE TABLE `view_store` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `vid` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wc_text`
--

CREATE TABLE `wc_text` (
  `id` int(11) NOT NULL,
  `text_en` mediumtext NOT NULL,
  `text_ar` text NOT NULL,
  `popup_text` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wc_text`
--

INSERT INTO `wc_text` (`id`, `text_en`, `text_ar`, `popup_text`) VALUES
(1, 'Gharba is the first App in Europe to serve Arabs with all their life needs between Arabs living in Europe and all Arab projects to meet the needs of the Arab community with ease and speed', 'غربة  التطبيق الأول في أوروبا لخدمة العرب بجميع مفاصل الحياة لتسهيل التواصل والوصل بين العرب المقيمين في أوروبا وجميع المشاريع العربية لتلبية أحتياجات الجالية العربية بكل سهولة وسرعة', 'Your review has been added!');

-- --------------------------------------------------------

--
-- Table structure for table `weblink`
--

CREATE TABLE `weblink` (
  `id` int(11) NOT NULL,
  `weblink` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `weblink`
--

INSERT INTO `weblink` (`id`, `weblink`) VALUES
(1, 'http://808studio.nl/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chart_data`
--
ALTER TABLE `chart_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_category`
--
ALTER TABLE `child_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custumer_support`
--
ALTER TABLE `custumer_support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_setting`
--
ALTER TABLE `general_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `likes_product`
--
ALTER TABLE `likes_product`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`not_id`);

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
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_child_category`
--
ALTER TABLE `product_child_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_subcategory`
--
ALTER TABLE `product_subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`res_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`rev_id`);

--
-- Indexes for table `reviews_product`
--
ALTER TABLE `reviews_product`
  ADD PRIMARY KEY (`rev_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_reviews`
--
ALTER TABLE `services_reviews`
  ADD PRIMARY KEY (`rev_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `varient_option`
--
ALTER TABLE `varient_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_notification`
--
ALTER TABLE `vendor_notification`
  ADD PRIMARY KEY (`not_id`);

--
-- Indexes for table `view_store`
--
ALTER TABLE `view_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_text`
--
ALTER TABLE `wc_text`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weblink`
--
ALTER TABLE `weblink`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `chart_data`
--
ALTER TABLE `chart_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `child_category`
--
ALTER TABLE `child_category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `custumer_support`
--
ALTER TABLE `custumer_support`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `general_setting`
--
ALTER TABLE `general_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes_product`
--
ALTER TABLE `likes_product`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `not_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `product_child_category`
--
ALTER TABLE `product_child_category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_subcategory`
--
ALTER TABLE `product_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `res_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `rev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reviews_product`
--
ALTER TABLE `reviews_product`
  MODIFY `rev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `services_reviews`
--
ALTER TABLE `services_reviews`
  MODIFY `rev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT for table `varient_option`
--
ALTER TABLE `varient_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `vendor_notification`
--
ALTER TABLE `vendor_notification`
  MODIFY `not_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `view_store`
--
ALTER TABLE `view_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wc_text`
--
ALTER TABLE `wc_text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `weblink`
--
ALTER TABLE `weblink`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
