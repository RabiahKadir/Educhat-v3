-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2023 at 02:32 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_chatbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `associations`
--

CREATE TABLE `associations` (
  `word_id` varchar(16) CHARACTER SET utf8 NOT NULL,
  `sentence_id` varchar(16) CHARACTER SET utf8 NOT NULL,
  `weight` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `associations`
--

INSERT INTO `associations` (`word_id`, `sentence_id`, `weight`) VALUES
('49f68a5c8493ec2c', '08f9cb14b3736dfc', 0.7071067811865476),
('c9d4eecd9934c051', 'eb6b0b90951797a3', 0.2773500981126146),
('62cc0b4ebb0b57b4', 'eb6b0b90951797a3', 0.2773500981126146),
('b068931cc450442b', 'eb6b0b90951797a3', 0.2773500981126146),
('5d41402abc4b2a76', '49f68a5c8493ec2c', 0.31622776601683794),
('99e9bae675b12967', '49f68a5c8493ec2c', 0.31622776601683794),
('567904efe9e64d9f', '741be3f3ba514943', 0.2672612419124244),
('d4579b2688d67523', '741be3f3ba514943', 0.2672612419124244),
('639bae9ac6b3e1a8', '741be3f3ba514943', 0.2672612419124244),
('d0dbe915091d400b', '741be3f3ba514943', 0.2672612419124244),
('13b5bfe96f3e2fe4', 'bfbbfdab36725451', 0.30151134457776363),
('cda2c99fbf5e19f2', 'bfbbfdab36725451', 0.30151134457776363),
('df491a4de50739fa', '7bbe5d10ac9f8335', 0.6255432421712244),
('639bae9ac6b3e1a8', '7bbe5d10ac9f8335', 0.6255432421712244),
('a3186a309d94022f', '7bbe5d10ac9f8335', 0.6255432421712244),
('01b6e20344b68835', '7bbe5d10ac9f8335', 0.8846517369293828),
('34d1f91fb2e514b8', '7bbe5d10ac9f8335', 0.6255432421712244),
('162832ab572046b2', '7bbe5d10ac9f8335', 0.6255432421712244),
('83ab982dd0848318', 'ec53b26f3f25c54a', 1.0690449676496976),
('628b7db04235f228', 'ec53b26f3f25c54a', 1.0690449676496976),
('7d0db380a5b95a8b', 'ec53b26f3f25c54a', 1.0690449676496976),
('d3d9446802a44259', 'ec53b26f3f25c54a', 1.0690449676496976),
('c04cd38aeb30f3ad', 'ec53b26f3f25c54a', 1.0690449676496976),
('df491a4de50739fa', 'ec53b26f3f25c54a', 0.41702882811414954),
('639bae9ac6b3e1a8', 'ec53b26f3f25c54a', 0.41702882811414954),
('a3186a309d94022f', 'ec53b26f3f25c54a', 0.41702882811414954),
('01b6e20344b68835', 'ec53b26f3f25c54a', 0.5897678246195885),
('34d1f91fb2e514b8', 'ec53b26f3f25c54a', 0.41702882811414954),
('162832ab572046b2', 'ec53b26f3f25c54a', 0.41702882811414954),
('db88a0257c220dbf', '889457ff286376c1', 0.4264014327112209),
('01b6e20344b68835', '889457ff286376c1', 0.4264014327112209),
('af9dc3cd6ce29d56', '889457ff286376c1', 0.4264014327112209),
('46b3931b9959c927', '889457ff286376c1', 0.4264014327112209),
('c35b49da1b6dd679', '889457ff286376c1', 0.4264014327112209),
('c35b49da1b6dd679', '3b8f4c9dddc6d9cf', 0.3899774116522473),
('a2a551a6458a8de2', '3b8f4c9dddc6d9cf', 0.1767766952966369),
('46b3931b9959c927', '3b8f4c9dddc6d9cf', 0.3899774116522473),
('ada15bd1a5ddf0b7', '3b8f4c9dddc6d9cf', 0.1767766952966369),
('c9e9a848920877e7', '3b8f4c9dddc6d9cf', 0.1767766952966369),
('13b5bfe96f3e2fe4', '3b8f4c9dddc6d9cf', 0.1767766952966369),
('6b157916b43b09df', '3b8f4c9dddc6d9cf', 0.1767766952966369),
('db88a0257c220dbf', '3b8f4c9dddc6d9cf', 0.21320071635561044),
('01b6e20344b68835', '3b8f4c9dddc6d9cf', 0.21320071635561044),
('af9dc3cd6ce29d56', '3b8f4c9dddc6d9cf', 0.21320071635561044),
('c35b49da1b6dd679', '13825b2abe398559', 0.1767766952966369),
('a2a551a6458a8de2', '13825b2abe398559', 0.1767766952966369),
('46b3931b9959c927', '13825b2abe398559', 0.1767766952966369),
('ada15bd1a5ddf0b7', '13825b2abe398559', 0.1767766952966369),
('c9e9a848920877e7', '13825b2abe398559', 0.1767766952966369),
('13b5bfe96f3e2fe4', '13825b2abe398559', 0.1767766952966369),
('6b157916b43b09df', '13825b2abe398559', 0.1767766952966369);

-- --------------------------------------------------------

--
-- Table structure for table `chat_rooms`
--

CREATE TABLE `chat_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message_id` bigint(20) UNSIGNED NOT NULL,
  `educhat_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `educhats`
--

CREATE TABLE `educhats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `respond` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `educhats`
--

INSERT INTO `educhats` (`id`, `respond`, `type`, `date`, `keyword`, `created_at`, `updated_at`) VALUES
(1, 'Soalan diatas mungkin terdapat kesalahan ,Sila rujuk kepada Customer Care kami 01234567 untuk bantuan lanjut', 'Undefined', '2022-09-13 03:50:30', 'kesalahan,tidak lengkap,salah,tidak betul,tidak kena ', '2022-09-12 19:50:47', '2022-09-12 19:50:47'),
(2, 'Sila rujuk mesej dibawah', 'General,Interactive,Material', '2022-09-13 03:50:30', 'default', '2022-09-12 19:51:21', '2022-09-12 19:51:21'),
(3, 'Sila rujuk mesej dibawah', 'Greeting', '2022-09-13 03:50:30', 'Apa khabar', '2022-09-12 19:51:53', '2022-09-12 20:12:46');

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
-- Table structure for table `masters`
--

CREATE TABLE `masters` (
  `id` int(11) NOT NULL,
  `judul` text NOT NULL,
  `judul_mobile` text NOT NULL,
  `short` varchar(255) NOT NULL,
  `ket` varchar(255) NOT NULL,
  `logo` text NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `footer` text NOT NULL,
  `versi` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masters`
--

INSERT INTO `masters` (`id`, `judul`, `judul_mobile`, `short`, `ket`, `logo`, `favicon`, `footer`, `versi`, `created_at`, `updated_at`) VALUES
(1, 'EduChatBot', 'EduChatBot', 'EduChatBot', '-', 'educhat.png', 'favicon.png', 'EduChatbot-V.3.1.2 - UKM 2023', '3.1.2', '2023-06-21 16:58:59', '2023-06-21 14:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codematerial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namematerial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailmaterial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagematerial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkmaterial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `codematerial`, `namematerial`, `detailmaterial`, `imagematerial`, `linkmaterial`, `created_at`, `updated_at`) VALUES
(1, 'MSPMSC11239', 'Sains', 'Penyiasatan Saintifik', 'Penyiasatan Saintifik tingkatan 4', 'https://www.youtube.com/watch?v=QUOvy7H_TtQ', '2022-09-12 18:54:05', '2022-09-12 18:54:05');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `messagequery` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `messagequery`, `type`, `date`, `created_at`, `updated_at`, `keyword`) VALUES
(1, 'Mula', 'user', '2022-09-13 08:48:09', NULL, NULL, ''),
(2, 'das', 'user', '2022-09-13 08:48:11', NULL, NULL, ''),
(3, 'dsa', 'user', '2022-09-13 08:48:12', NULL, NULL, ''),
(4, 'das', 'user', '2022-09-13 08:48:14', NULL, NULL, ''),
(5, '123', 'user', '2022-09-13 08:48:16', NULL, NULL, ''),
(6, 'ds@dasd.com', 'user', '2022-09-13 08:48:22', NULL, NULL, ''),
(7, 'Ya', 'user', '2022-09-13 08:48:24', NULL, NULL, ''),
(8, 'general', 'user', '2022-09-13 08:48:28', NULL, NULL, ''),
(9, 'general', 'user', '2022-09-13 08:48:31', NULL, NULL, ''),
(10, 'general', 'user', '2022-09-13 08:48:32', NULL, NULL, ''),
(11, 'general', 'user', '2022-09-13 08:48:34', NULL, NULL, ''),
(12, 'general', 'user', '2022-09-13 08:48:36', NULL, NULL, ''),
(13, 'general', 'user', '2022-09-13 08:48:37', NULL, NULL, ''),
(14, 'general', 'user', '2022-09-13 08:48:37', NULL, NULL, ''),
(15, 'general', 'user', '2022-09-13 08:48:37', NULL, NULL, ''),
(16, 'Mula', 'user', '2022-09-13 08:50:55', NULL, NULL, ''),
(17, 'da', 'user', '2022-09-13 08:50:56', NULL, NULL, ''),
(18, 'das', 'user', '2022-09-13 08:50:57', NULL, NULL, ''),
(19, 'das', 'user', '2022-09-13 08:50:57', NULL, NULL, ''),
(20, 'ads', 'user', '2022-09-13 08:50:58', NULL, NULL, ''),
(21, 'ads', 'user', '2022-09-13 08:50:59', NULL, NULL, ''),
(22, 'ss@dasd.com', 'user', '2022-09-13 08:51:03', NULL, NULL, ''),
(23, 'Ya', 'user', '2022-09-13 08:51:06', NULL, NULL, ''),
(24, 'general', 'user', '2022-09-13 08:51:08', NULL, NULL, ''),
(25, 'general', 'user', '2022-09-13 08:51:09', NULL, NULL, ''),
(26, 'general', 'user', '2022-09-13 08:52:26', NULL, NULL, ''),
(27, 'interaksi', 'user', '2022-09-13 08:52:28', NULL, NULL, ''),
(28, 'material', 'user', '2022-09-13 08:52:30', NULL, NULL, ''),
(29, 'Mula', 'user', '2022-09-13 08:53:06', NULL, NULL, ''),
(30, 'Fairus', 'user', '2022-09-13 08:53:12', NULL, NULL, ''),
(31, 'Y', 'user', '2022-09-13 08:53:23', NULL, NULL, ''),
(32, 'Kajang', 'user', '2022-09-13 08:53:30', NULL, NULL, ''),
(33, '0129312312', 'user', '2022-09-13 08:53:33', NULL, NULL, ''),
(34, 'dsada@ddda.com', 'user', '2022-09-13 08:53:38', NULL, NULL, ''),
(35, 'Ya', 'user', '2022-09-13 08:53:39', NULL, NULL, ''),
(36, 'general', 'user', '2022-09-13 08:53:42', NULL, NULL, ''),
(37, 'general', 'user', '2022-09-13 08:53:43', NULL, NULL, ''),
(38, 'Mula', 'user', '2022-09-13 08:54:19', NULL, NULL, ''),
(39, 'MULA', 'user', '2022-09-13 09:13:24', NULL, NULL, ''),
(40, 'DADAS', 'user', '2022-09-13 09:13:25', NULL, NULL, ''),
(41, 'DAS', 'user', '2022-09-13 09:13:27', NULL, NULL, ''),
(42, 'Bagaimana cara nak jawab', 'user', '2022-09-13 11:21:41', NULL, NULL, ''),
(43, 'sambung', 'user', '2022-09-13 11:21:46', NULL, NULL, ''),
(44, 'general', 'user', '2022-09-13 11:21:48', NULL, NULL, ''),
(45, 'general', 'user', '2022-09-13 11:21:49', NULL, NULL, ''),
(46, 'interaksi', 'user', '2022-09-13 11:21:49', NULL, NULL, ''),
(47, 'material', 'user', '2022-09-13 11:21:50', NULL, NULL, ''),
(48, 'Mula', 'user', '2022-09-13 12:09:11', NULL, NULL, ''),
(49, 'fairus', 'user', '2022-09-13 12:09:21', NULL, NULL, ''),
(50, 'Hi', 'user', '2022-09-13 12:09:52', NULL, NULL, ''),
(51, 'Hi', 'user', '2022-09-13 12:11:30', NULL, NULL, ''),
(52, 'fairus', 'user', '2022-09-13 12:11:34', NULL, NULL, ''),
(53, 'Mula', 'user', '2022-09-13 12:12:54', NULL, NULL, ''),
(54, 'fairus', 'user', '2022-09-13 12:12:56', NULL, NULL, ''),
(55, 'jj', 'user', '2022-09-13 12:14:14', NULL, NULL, ''),
(56, 'jj', 'user', '2022-09-13 12:14:16', NULL, NULL, ''),
(57, 'jj', 'user', '2022-09-13 12:14:18', NULL, NULL, ''),
(58, 'ff', 'user', '2022-09-13 12:14:20', NULL, NULL, ''),
(59, 'dd\'', 'user', '2022-09-13 12:14:22', NULL, NULL, ''),
(60, 'dd', 'user', '2022-09-13 12:14:54', NULL, NULL, ''),
(61, 'd', 'user', '2022-09-13 12:14:55', NULL, NULL, ''),
(62, 'Mula', 'user', '2022-09-13 12:19:25', NULL, NULL, ''),
(63, 'sS', 'user', '2022-09-13 12:19:52', NULL, NULL, ''),
(64, 'Ss', 'user', '2022-09-13 12:19:53', NULL, NULL, ''),
(65, 'sambung', 'user', '2022-09-13 12:19:57', NULL, NULL, ''),
(66, 'mengajar', 'user', '2022-09-13 12:33:37', NULL, NULL, ''),
(67, 'ya', 'user', '2022-09-13 12:33:57', NULL, NULL, 'positive'),
(68, 'cara membantu', 'user', '2022-09-13 12:34:12', NULL, NULL, 'General'),
(69, 'tolong jelaskan soalan', 'user', '2022-09-13 12:35:15', NULL, NULL, 'Material'),
(70, 'Hi', 'user', '2022-09-13 14:55:54', NULL, NULL, ''),
(71, 'Hi', '', '2022-09-13 14:56:58', NULL, NULL, ''),
(72, 'Hi', '', '2022-09-13 14:57:09', NULL, NULL, ''),
(73, 'Hi', '', '2022-09-13 14:57:41', NULL, NULL, '$this->getkeyword($this->getmessage($message))'),
(74, 'Hi', '', '2022-09-13 14:59:16', NULL, NULL, ''),
(75, 'Hi', 'user', '2022-09-13 14:59:37', NULL, NULL, ''),
(76, 'Hi', 'user', '2022-09-13 15:00:27', NULL, NULL, ''),
(77, 'HI', 'user', '2022-09-13 15:00:28', NULL, NULL, ''),
(78, 'hI', 'user', '2022-09-13 15:00:55', NULL, NULL, ''),
(79, 'hI', 'user', '2022-09-13 15:01:46', NULL, NULL, ''),
(80, 'hI', 'user', '2022-09-13 15:02:09', NULL, NULL, ''),
(81, 'Hi', 'user', '2022-09-13 15:02:13', NULL, NULL, ''),
(82, 'Hi', 'user', '2022-09-13 15:02:31', NULL, NULL, ''),
(83, 'Hi', 'user', '2022-09-13 15:02:33', NULL, NULL, ''),
(84, 'Hi', 'user', '2022-09-13 15:03:18', NULL, NULL, ''),
(85, 'Hi', 'user', '2022-09-13 15:03:38', NULL, NULL, ''),
(86, 'Hi', 'user', '2022-09-13 15:03:40', NULL, NULL, ''),
(87, 'Hi', 'user', '2022-09-13 15:04:56', NULL, NULL, ''),
(88, 'gaga', 'user', '2022-09-13 15:04:58', NULL, NULL, ''),
(89, 'Hi', 'user', '2022-09-13 15:05:25', NULL, NULL, ''),
(90, 'Hi', '', '2022-09-13 15:05:58', NULL, NULL, 'user'),
(91, 'dasda.', '', '2022-09-13 15:06:00', NULL, NULL, 'user'),
(92, 'tolong jelaskan', '', '2022-09-13 15:06:23', NULL, NULL, 'user'),
(93, 'tolong jelaskan soalan', 'Material', '2022-09-13 15:06:36', NULL, NULL, 'user'),
(94, 'fairus', '', '2022-09-13 15:06:38', NULL, NULL, 'user'),
(95, 'Hi', 'user', '2022-09-13 15:07:45', NULL, NULL, ''),
(96, 'dads', 'user', '2022-09-13 15:07:47', NULL, NULL, ''),
(97, 'jj', 'user', '2022-09-13 15:08:38', NULL, NULL, ''),
(98, 'jg', 'user', '2022-09-13 15:08:39', NULL, NULL, ''),
(99, 'Hi', 'user', '2022-09-13 15:09:04', NULL, NULL, ''),
(100, 'fairus', 'user', '2022-09-13 15:09:06', NULL, NULL, ''),
(101, 'Hai', 'user', '2022-09-13 15:09:10', NULL, NULL, ''),
(102, 'dad', 'user', '2022-09-13 15:09:12', NULL, NULL, ''),
(103, 'Hi', 'user', '2022-09-13 15:09:18', NULL, NULL, ''),
(104, 'da', 'user', '2022-09-13 15:09:19', NULL, NULL, ''),
(105, 'Hi', 'user', '2022-09-13 15:24:36', NULL, NULL, ''),
(106, 'Hi', 'user', '2022-09-13 15:24:51', NULL, NULL, ''),
(107, 'ya', 'user', '2022-09-13 15:28:54', NULL, NULL, 'positive'),
(108, 'Hi', 'user', '2022-09-13 15:29:08', NULL, NULL, ''),
(109, 'tolong jelaskan soalan', 'user', '2022-09-13 15:29:54', NULL, NULL, 'Material'),
(110, 'hi', 'user', '2022-09-13 15:30:21', NULL, NULL, 'Greeting'),
(111, 'hai', 'user', '2022-09-13 15:30:34', NULL, NULL, 'Greeting'),
(112, 'Mula', 'user', '2023-04-11 12:29:32', NULL, NULL, ''),
(113, 'Y', 'user', '2023-04-11 12:29:37', NULL, NULL, ''),
(114, 'AboutHometutor', 'user', '2023-04-11 12:29:39', NULL, NULL, ''),
(115, 'Y', 'user', '2023-04-11 12:29:48', NULL, NULL, ''),
(116, 'SubscribtionHometutor', 'user', '2023-04-11 12:29:52', NULL, NULL, ''),
(117, 'SubscribtionHometutor', 'user', '2023-04-11 12:30:00', NULL, NULL, ''),
(118, 'interactive', 'user', '2023-04-11 12:30:01', NULL, NULL, ''),
(119, 'Mula', 'user', '2023-04-11 12:30:25', NULL, NULL, ''),
(120, 'continue', 'user', '2023-04-11 12:30:27', NULL, NULL, ''),
(121, 'Ya', 'user', '2023-04-11 12:30:38', NULL, NULL, ''),
(122, 'suggestion', 'user', '2023-04-11 12:30:42', NULL, NULL, ''),
(123, 'Ya', 'user', '2023-04-11 12:30:49', NULL, NULL, ''),
(124, 'Mula', 'user', '2023-04-11 12:38:16', NULL, NULL, ''),
(125, 'general', 'user', '2023-04-11 12:38:21', NULL, NULL, ''),
(126, 'Mula', 'user', '2023-04-11 12:38:40', NULL, NULL, ''),
(127, 'Ya', 'user', '2023-04-11 12:46:19', NULL, NULL, ''),
(128, 'Mula', 'user', '2023-04-11 12:47:31', NULL, NULL, ''),
(129, 'Ya', 'user', '2023-04-11 12:47:34', NULL, NULL, ''),
(130, 'exit', 'user', '2023-04-11 12:47:35', NULL, NULL, ''),
(131, 'Tidak', 'user', '2023-04-11 12:47:46', NULL, NULL, ''),
(132, 'dasda', 'user', '2023-04-11 12:47:51', NULL, NULL, ''),
(133, 'Ya', 'user', '2023-04-11 12:47:54', NULL, NULL, ''),
(134, 'general', 'user', '2023-04-11 12:47:57', NULL, NULL, ''),
(135, 'dasda', 'user', '2023-04-11 12:48:02', NULL, NULL, ''),
(136, 'Mula', 'user', '2023-04-11 12:53:13', NULL, NULL, ''),
(137, 'Ya', 'user', '2023-04-11 12:58:38', NULL, NULL, ''),
(138, 'AboutHometutor', 'user', '2023-04-11 12:58:40', NULL, NULL, ''),
(139, 'Y', 'user', '2023-04-11 12:58:44', NULL, NULL, ''),
(140, 'SubscribtionHometutor', 'user', '2023-04-11 12:58:47', NULL, NULL, ''),
(141, 'SubscribtionHometutor', 'user', '2023-04-11 12:58:48', NULL, NULL, ''),
(142, 'SubscribtionHometutor', 'user', '2023-04-11 12:58:48', NULL, NULL, ''),
(143, 'SubscribtionHometutor', 'user', '2023-04-11 12:58:49', NULL, NULL, ''),
(144, 'SubscribtionHometutor', 'user', '2023-04-11 12:58:49', NULL, NULL, ''),
(145, 'SubscribtionHometutor', 'user', '2023-04-11 12:58:49', NULL, NULL, ''),
(146, 'interactive', 'user', '2023-04-11 12:58:50', NULL, NULL, ''),
(147, 'interactive', 'user', '2023-04-11 12:58:51', NULL, NULL, ''),
(148, 'Ya', 'user', '2023-04-11 12:58:56', NULL, NULL, ''),
(149, 'Ya', 'user', '2023-04-11 12:59:05', NULL, NULL, ''),
(150, 'material', 'user', '2023-04-11 12:59:08', NULL, NULL, ''),
(151, 'ddd', 'user', '2023-04-11 12:59:12', NULL, NULL, ''),
(152, 'Mula', 'user', '2023-04-11 12:59:48', NULL, NULL, ''),
(153, 'Ya', 'user', '2023-04-11 12:59:57', NULL, NULL, ''),
(154, 'AboutHometutor', 'user', '2023-04-11 12:59:59', NULL, NULL, ''),
(155, 'Y', 'user', '2023-04-11 13:00:05', NULL, NULL, ''),
(156, 'SubscribtionHometutor', 'user', '2023-04-11 13:00:07', NULL, NULL, ''),
(157, 'SubscribtionHometutor', 'user', '2023-04-11 13:00:08', NULL, NULL, ''),
(158, 'SubscribtionHometutor', 'user', '2023-04-11 13:00:08', NULL, NULL, ''),
(159, 'SubscribtionHometutor', 'user', '2023-04-11 13:00:09', NULL, NULL, ''),
(160, 'AboutEduchat', 'user', '2023-04-11 13:00:09', NULL, NULL, ''),
(161, 'AboutEduchat', 'user', '2023-04-11 13:00:10', NULL, NULL, ''),
(162, 'material', 'user', '2023-04-11 14:11:21', NULL, NULL, ''),
(163, 'Ya', 'user', '2023-04-11 14:11:27', NULL, NULL, ''),
(164, 'interactive', 'user', '2023-04-11 14:11:28', NULL, NULL, ''),
(165, 'bagaimana nak guna', 'user', '2023-04-11 14:11:38', NULL, NULL, 'General'),
(166, 'Mula', 'user', '2023-04-11 14:17:24', NULL, NULL, ''),
(167, 'Ya', 'user', '2023-04-11 14:17:31', NULL, NULL, ''),
(168, 'interactive', 'user', '2023-04-11 14:19:41', NULL, NULL, ''),
(169, 'jjj', 'user', '2023-04-11 14:19:45', NULL, NULL, ''),
(170, 'Mula', 'user', '2023-04-11 14:46:45', NULL, NULL, ''),
(171, 'Mula', 'user', '2023-04-11 14:47:34', NULL, NULL, ''),
(172, 'Mula', 'user', '2023-04-11 14:48:08', NULL, NULL, ''),
(173, 'Mula', 'user', '2023-04-11 14:48:31', NULL, NULL, ''),
(174, 'Ya', 'user', '2023-04-11 14:48:48', NULL, NULL, ''),
(175, 'AboutHometutor', 'user', '2023-04-11 14:48:55', NULL, NULL, ''),
(176, 'Mula', 'user', '2023-04-11 14:52:53', NULL, NULL, ''),
(177, 'Ya', 'user', '2023-04-11 14:52:56', NULL, NULL, ''),
(178, 'AboutHometutor', 'user', '2023-04-11 14:52:58', NULL, NULL, ''),
(179, 'Mula', 'user', '2023-04-11 14:54:31', NULL, NULL, ''),
(180, 'Ya', 'user', '2023-04-11 14:54:34', NULL, NULL, ''),
(181, 'AboutEduchat', 'user', '2023-04-11 14:54:37', NULL, NULL, ''),
(182, 'Mula', 'user', '2023-04-11 14:56:11', NULL, NULL, ''),
(183, 'Ya', 'user', '2023-04-11 14:56:14', NULL, NULL, ''),
(184, 'general', 'user', '2023-04-11 14:56:16', NULL, NULL, ''),
(185, 'apakah', 'user', '2023-04-11 14:56:30', NULL, NULL, ''),
(186, 'd', 'user', '2023-04-11 14:56:45', NULL, NULL, ''),
(187, 'Mula', 'user', '2023-04-11 14:57:51', NULL, NULL, ''),
(188, 'Ya', 'user', '2023-04-11 14:57:54', NULL, NULL, ''),
(189, 'SubscribtionHometutor', 'user', '2023-04-11 14:57:56', NULL, NULL, ''),
(190, 'SubscribtionHometutor', 'user', '2023-04-11 14:57:58', NULL, NULL, ''),
(191, 'SubscribtionHometutor', 'user', '2023-04-11 14:57:59', NULL, NULL, ''),
(192, 'SubscribtionHometutor', 'user', '2023-04-11 14:57:59', NULL, NULL, ''),
(193, 'SubscribtionHometutor', 'user', '2023-04-11 14:57:59', NULL, NULL, ''),
(194, 'SubscribtionHometutor', 'user', '2023-04-11 14:58:00', NULL, NULL, ''),
(195, 'SubscribtionHometutor', 'user', '2023-04-11 14:58:00', NULL, NULL, ''),
(196, 'SubscribtionHometutor', 'user', '2023-04-11 14:58:01', NULL, NULL, ''),
(197, 'interactive', 'user', '2023-04-11 14:58:02', NULL, NULL, ''),
(198, 'interactive', 'user', '2023-04-11 14:58:02', NULL, NULL, ''),
(199, 'interactive', 'user', '2023-04-11 14:58:02', NULL, NULL, ''),
(200, 'interactive', 'user', '2023-04-11 14:58:03', NULL, NULL, ''),
(201, 'interactive', 'user', '2023-04-11 14:58:03', NULL, NULL, ''),
(202, 'interactive', 'user', '2023-04-11 14:58:04', NULL, NULL, ''),
(203, 'general', 'user', '2023-04-11 14:58:04', NULL, NULL, ''),
(204, 'ds', 'user', '2023-04-11 14:58:07', NULL, NULL, ''),
(205, 'SubscribtionHometutor', 'user', '2023-04-11 14:58:10', NULL, NULL, ''),
(206, 'Mula', 'user', '2023-04-11 15:05:38', NULL, NULL, ''),
(207, 'Ya', 'user', '2023-04-11 15:05:40', NULL, NULL, ''),
(208, 'AboutHometutor', 'user', '2023-04-11 15:05:43', NULL, NULL, ''),
(209, 'Ya', 'user', '2023-04-11 15:05:49', NULL, NULL, ''),
(210, 'AboutEduchat', 'user', '2023-04-11 15:05:51', NULL, NULL, ''),
(211, 'Ya', 'user', '2023-04-11 15:05:54', NULL, NULL, ''),
(212, 'SubscribtionHometutor', 'user', '2023-04-11 15:05:56', NULL, NULL, ''),
(213, 'Ya', 'user', '2023-04-11 15:06:09', NULL, NULL, ''),
(214, 'Mula', 'user', '2023-04-11 15:09:15', NULL, NULL, ''),
(215, 'Ya', 'user', '2023-04-11 15:09:18', NULL, NULL, ''),
(216, 'SubscribtionHometutor', 'user', '2023-04-11 15:09:20', NULL, NULL, ''),
(217, 'Ya', 'user', '2023-04-11 15:09:31', NULL, NULL, ''),
(218, 'interactive', 'user', '2023-04-11 15:09:35', NULL, NULL, ''),
(219, 'Mula', 'user', '2023-04-11 15:26:36', NULL, NULL, ''),
(220, 'Ya', 'user', '2023-04-11 15:26:40', NULL, NULL, ''),
(221, 'AboutHometutor', 'user', '2023-04-11 15:26:43', NULL, NULL, ''),
(222, 'Ya', 'user', '2023-04-11 15:26:48', NULL, NULL, ''),
(223, 'SubscribtionHometutor', 'user', '2023-04-11 15:26:50', NULL, NULL, ''),
(224, 'Mula', 'user', '2023-04-11 15:40:04', NULL, NULL, ''),
(225, 'Ya', 'user', '2023-04-11 15:40:06', NULL, NULL, ''),
(226, 'AboutHometutor', 'user', '2023-04-11 15:40:08', NULL, NULL, ''),
(227, 'Mula', 'user', '2023-04-11 15:40:36', NULL, NULL, ''),
(228, 'Ya', 'user', '2023-04-11 15:40:57', NULL, NULL, ''),
(229, 'AboutHometutor', 'user', '2023-04-11 15:40:59', NULL, NULL, ''),
(230, 'Mula', 'user', '2023-04-11 15:41:34', NULL, NULL, ''),
(231, 'Ya', 'user', '2023-04-11 15:41:36', NULL, NULL, ''),
(232, 'AboutHometutor', 'user', '2023-04-11 15:41:38', NULL, NULL, ''),
(233, 'Ya', 'user', '2023-04-11 15:41:41', NULL, NULL, ''),
(234, 'AboutEduchat', 'user', '2023-04-11 15:41:43', NULL, NULL, ''),
(235, 'Mula', 'user', '2023-04-11 15:42:08', NULL, NULL, ''),
(236, 'Ya', 'user', '2023-04-11 15:42:11', NULL, NULL, ''),
(237, 'AboutEduchat', 'user', '2023-04-11 15:42:12', NULL, NULL, ''),
(238, 'Ya', 'user', '2023-04-11 15:42:16', NULL, NULL, ''),
(239, 'SubscribtionHometutor', 'user', '2023-04-11 15:42:20', NULL, NULL, ''),
(240, 'Ya', 'user', '2023-04-11 15:42:23', NULL, NULL, ''),
(241, 'interactive', 'user', '2023-04-11 15:42:25', NULL, NULL, ''),
(242, 'Bagaimanakah saya boleh dapatkan maklumat login', 'user', '2023-04-11 15:42:54', NULL, NULL, ''),
(243, 'Ya', 'user', '2023-04-11 15:43:30', NULL, NULL, ''),
(244, 'Ya', 'user', '2023-04-11 15:45:23', NULL, NULL, ''),
(245, 'Mula', 'user', '2023-04-11 15:46:37', NULL, NULL, ''),
(246, 'Ya', 'user', '2023-04-11 15:46:39', NULL, NULL, ''),
(247, 'interactive', 'user', '2023-04-11 15:46:41', NULL, NULL, ''),
(248, 'dsad', 'user', '2023-04-11 15:46:45', NULL, NULL, ''),
(249, 'Ya', 'user', '2023-04-11 15:46:48', NULL, NULL, ''),
(250, 'interactive', 'user', '2023-04-11 15:46:57', NULL, NULL, ''),
(251, 'dsd', 'user', '2023-04-11 15:46:59', NULL, NULL, ''),
(252, 'Ya', 'user', '2023-04-11 15:47:03', NULL, NULL, ''),
(253, 'material', 'user', '2023-04-11 15:47:09', NULL, NULL, ''),
(254, 'dsd', 'user', '2023-04-11 15:47:12', NULL, NULL, ''),
(255, 'Mula', 'user', '2023-04-11 15:52:02', NULL, NULL, ''),
(256, 'Ya', 'user', '2023-04-11 15:52:04', NULL, NULL, ''),
(257, 'AboutHometutor', 'user', '2023-04-11 15:52:07', NULL, NULL, ''),
(258, 'Ya', 'user', '2023-04-11 15:52:11', NULL, NULL, ''),
(259, 'AboutEduchat', 'user', '2023-04-11 15:52:13', NULL, NULL, ''),
(260, 'Ya', 'user', '2023-04-11 15:52:18', NULL, NULL, ''),
(261, 'SubscribtionHometutor', 'user', '2023-04-11 15:52:19', NULL, NULL, ''),
(262, 'Ya', 'user', '2023-04-11 15:52:22', NULL, NULL, ''),
(263, 'material', 'user', '2023-04-11 15:52:23', NULL, NULL, ''),
(264, 'asa', 'user', '2023-04-11 15:52:27', NULL, NULL, ''),
(265, '02123213', 'user', '2023-04-11 15:52:33', NULL, NULL, ''),
(266, 'Ya', 'user', '2023-04-11 15:52:36', NULL, NULL, ''),
(267, 'interactive', 'user', '2023-04-11 15:52:38', NULL, NULL, ''),
(268, 'dsdsd', 'user', '2023-04-11 15:52:43', NULL, NULL, ''),
(269, 'ya', 'user', '2023-04-11 15:52:45', NULL, NULL, ''),
(270, 'exit', 'user', '2023-04-11 15:52:47', NULL, NULL, ''),
(271, 'Mula', 'user', '2023-04-11 15:58:46', NULL, NULL, ''),
(272, 'Ya', 'user', '2023-04-11 15:58:48', NULL, NULL, ''),
(273, 'AboutHometutor', 'user', '2023-04-11 15:58:51', NULL, NULL, ''),
(274, 'Ya', 'user', '2023-04-11 15:58:54', NULL, NULL, ''),
(275, 'AboutEduchat', 'user', '2023-04-11 15:58:58', NULL, NULL, ''),
(276, 'Ya', 'user', '2023-04-11 15:59:00', NULL, NULL, ''),
(277, 'SubscribtionHometutor', 'user', '2023-04-11 15:59:03', NULL, NULL, ''),
(278, 'Mula', 'user', '2023-04-11 16:01:30', NULL, NULL, ''),
(279, 'Ya', 'user', '2023-04-11 16:01:31', NULL, NULL, ''),
(280, 'interactive', 'user', '2023-04-11 16:01:35', NULL, NULL, ''),
(281, 'dasda', 'user', '2023-04-11 16:01:42', NULL, NULL, ''),
(282, 'Ya', 'user', '2023-04-11 16:01:45', NULL, NULL, ''),
(283, 'Mula', 'user', '2023-04-11 16:09:21', NULL, NULL, ''),
(284, 'continue', 'user', '2023-04-11 16:09:33', NULL, NULL, ''),
(285, 'Mula', 'user', '2023-04-11 16:16:22', NULL, NULL, ''),
(286, 'continue', 'user', '2023-04-11 16:16:24', NULL, NULL, ''),
(287, 'Ya', 'user', '2023-04-11 16:16:29', NULL, NULL, ''),
(288, 'suggestion', 'user', '2023-04-11 16:16:32', NULL, NULL, ''),
(289, 'Mula', 'user', '2023-04-11 16:18:15', NULL, NULL, ''),
(290, 'continue', 'user', '2023-04-11 16:18:18', NULL, NULL, ''),
(291, 'Ya', 'user', '2023-04-11 16:18:21', NULL, NULL, ''),
(292, 'suggestion', 'user', '2023-04-11 16:18:23', NULL, NULL, ''),
(293, 'Ya', 'user', '2023-04-11 16:18:25', NULL, NULL, ''),
(294, 'general', 'user', '2023-04-11 16:18:27', NULL, NULL, ''),
(295, 'dsd', 'user', '2023-04-11 16:18:30', NULL, NULL, ''),
(296, 'dsd', 'user', '2023-04-11 16:18:33', NULL, NULL, ''),
(297, 'Ya', 'user', '2023-04-11 16:18:36', NULL, NULL, ''),
(298, 'interactive', 'user', '2023-04-11 16:18:38', NULL, NULL, ''),
(299, 'dsds', 'user', '2023-04-11 16:18:41', NULL, NULL, ''),
(300, 'dsad', 'user', '2023-04-11 16:18:44', NULL, NULL, ''),
(301, 'dsd', 'user', '2023-04-11 16:18:54', NULL, NULL, ''),
(302, 'material', 'user', '2023-04-11 16:18:55', NULL, NULL, ''),
(303, 'dsds', 'user', '2023-04-11 16:18:58', NULL, NULL, ''),
(304, 'dsd', 'user', '2023-04-11 16:19:01', NULL, NULL, ''),
(305, 'dsd', 'user', '2023-04-11 16:19:04', NULL, NULL, ''),
(306, 'general', 'user', '2023-04-11 16:19:06', NULL, NULL, ''),
(307, 'dsd', 'user', '2023-04-11 16:19:08', NULL, NULL, ''),
(308, 'Mula', 'user', '2023-04-11 16:21:04', NULL, NULL, ''),
(309, 'continue', 'user', '2023-04-11 16:21:06', NULL, NULL, ''),
(310, 'Ya', 'user', '2023-04-11 16:21:16', NULL, NULL, ''),
(311, 'suggestion', 'user', '2023-04-11 16:21:18', NULL, NULL, ''),
(312, 'Ya', 'user', '2023-04-11 16:21:29', NULL, NULL, ''),
(313, 'general', 'user', '2023-04-11 16:21:32', NULL, NULL, ''),
(314, 'Mula', 'user', '2023-04-11 16:22:05', NULL, NULL, ''),
(315, 'exit', 'user', '2023-04-11 16:22:08', NULL, NULL, ''),
(316, 'exit', 'user', '2023-04-11 16:22:08', NULL, NULL, ''),
(317, 'Mula', 'user', '2023-04-11 16:22:32', NULL, NULL, ''),
(318, 'continue', 'user', '2023-04-11 16:22:34', NULL, NULL, ''),
(319, 'Ya', 'user', '2023-04-11 16:22:36', NULL, NULL, ''),
(320, 'exit', 'user', '2023-04-11 16:22:38', NULL, NULL, ''),
(321, 'Ya', 'user', '2023-04-11 16:22:41', NULL, NULL, ''),
(322, 'suggestion', 'user', '2023-04-11 16:22:46', NULL, NULL, ''),
(323, 'Ya', 'user', '2023-04-11 16:22:48', NULL, NULL, ''),
(324, 'material', 'user', '2023-04-11 16:22:51', NULL, NULL, ''),
(325, 'sdas', 'user', '2023-04-11 16:22:53', NULL, NULL, ''),
(326, 'dsd', 'user', '2023-04-11 16:22:55', NULL, NULL, ''),
(327, 'ya', 'user', '2023-04-11 16:22:59', NULL, NULL, ''),
(328, 'interactive', 'user', '2023-04-11 16:23:14', NULL, NULL, ''),
(329, 'dsds', 'user', '2023-04-11 16:23:16', NULL, NULL, ''),
(330, 'Ya', 'user', '2023-04-11 16:23:19', NULL, NULL, ''),
(331, 'general', 'user', '2023-04-11 16:23:21', NULL, NULL, ''),
(332, 'Ya', 'user', '2023-04-11 16:23:23', NULL, NULL, ''),
(333, '21323', 'user', '2023-04-11 16:23:26', NULL, NULL, ''),
(334, 'Ya', 'user', '2023-04-11 16:23:33', NULL, NULL, ''),
(335, 'material', 'user', '2023-04-11 16:23:51', NULL, NULL, ''),
(336, 'cc', 'user', '2023-04-11 16:23:53', NULL, NULL, ''),
(337, 'cc', 'user', '2023-04-11 16:23:55', NULL, NULL, ''),
(338, 'ya', 'user', '2023-04-11 16:23:57', NULL, NULL, ''),
(339, 'general', 'user', '2023-04-11 16:24:00', NULL, NULL, ''),
(340, 'dw', 'user', '2023-04-11 16:24:02', NULL, NULL, ''),
(341, 'ds', 'user', '2023-04-11 16:24:04', NULL, NULL, ''),
(342, 'ya', 'user', '2023-04-11 16:24:07', NULL, NULL, ''),
(343, 'continue', 'user', '2023-04-11 16:25:28', NULL, NULL, ''),
(344, 'Muka', 'user', '2023-04-11 16:26:21', NULL, NULL, ''),
(345, 'material', 'user', '2023-04-11 16:26:24', NULL, NULL, ''),
(346, 'mca', 'user', '2023-04-11 16:26:39', NULL, NULL, ''),
(347, 'Mula', 'user', '2023-04-11 16:29:14', NULL, NULL, ''),
(348, 'exit', 'user', '2023-04-11 16:29:17', NULL, NULL, ''),
(349, 'Ya', 'user', '2023-04-11 16:29:22', NULL, NULL, ''),
(350, 'material', 'user', '2023-04-11 16:29:25', NULL, NULL, ''),
(351, 'sss', 'user', '2023-04-11 16:29:27', NULL, NULL, ''),
(352, 'ss', 'user', '2023-04-11 16:29:31', NULL, NULL, ''),
(353, 'Mula', 'user', '2023-04-11 16:31:38', NULL, NULL, ''),
(354, 'continue', 'user', '2023-04-11 16:31:41', NULL, NULL, ''),
(355, 'Ya', 'user', '2023-04-11 16:31:45', NULL, NULL, ''),
(356, 'suggestion', 'user', '2023-04-11 16:31:48', NULL, NULL, ''),
(357, 'Ya', 'user', '2023-04-11 16:31:52', NULL, NULL, ''),
(358, 'general', 'user', '2023-04-11 16:31:54', NULL, NULL, ''),
(359, 'Apakah itu hometutor?', 'user', '2023-04-11 16:32:06', NULL, NULL, ''),
(360, '0186543213', 'user', '2023-04-11 16:32:15', NULL, NULL, ''),
(361, 'Ya', 'user', '2023-04-11 16:32:19', NULL, NULL, ''),
(362, 'interactive', 'user', '2023-04-11 16:32:21', NULL, NULL, ''),
(363, 'Bagaimana boleh saya dapatkan maklumat login', 'user', '2023-04-11 16:32:40', NULL, NULL, ''),
(364, 'Ya', 'user', '2023-04-11 16:32:45', NULL, NULL, ''),
(365, 'material', 'user', '2023-04-11 16:32:48', NULL, NULL, ''),
(366, 'bagaimana nak jawab soalan matematik ini', 'user', '2023-04-11 16:33:03', NULL, NULL, ''),
(367, 'QSPMT123212', 'user', '2023-04-11 16:33:12', NULL, NULL, ''),
(368, 'Ya', 'user', '2023-04-11 16:33:18', NULL, NULL, ''),
(369, 'exit', 'user', '2023-04-11 16:33:21', NULL, NULL, ''),
(370, 'Tidak', 'user', '2023-04-11 16:33:30', NULL, NULL, ''),
(371, 'Mula', 'user', '2023-04-11 16:34:29', NULL, NULL, ''),
(372, 'Ya', 'user', '2023-04-11 16:34:32', NULL, NULL, ''),
(373, 'AboutHometutor', 'user', '2023-04-11 16:34:35', NULL, NULL, ''),
(374, 'Ya', 'user', '2023-04-11 16:34:39', NULL, NULL, ''),
(375, 'AboutEduchat', 'user', '2023-04-11 16:34:42', NULL, NULL, ''),
(376, 'Ya', 'user', '2023-04-11 16:34:45', NULL, NULL, ''),
(377, 'SubscribtionHometutor', 'user', '2023-04-11 16:34:47', NULL, NULL, ''),
(378, 'Ya', 'user', '2023-04-11 16:34:50', NULL, NULL, ''),
(379, 'general', 'user', '2023-04-11 16:34:54', NULL, NULL, ''),
(380, 'Hometutor itu apa?', 'user', '2023-04-11 16:35:05', NULL, NULL, ''),
(381, '0192324321', 'user', '2023-04-11 16:35:13', NULL, NULL, ''),
(382, 'Ya', 'user', '2023-04-11 16:35:15', NULL, NULL, ''),
(383, 'interactive', 'user', '2023-04-11 16:35:17', NULL, NULL, ''),
(384, 'maklumat login boleh saya dapatkan', 'user', '2023-04-11 16:35:30', NULL, NULL, ''),
(385, 'Ya', 'user', '2023-04-11 16:35:35', NULL, NULL, ''),
(386, 'exit', 'user', '2023-04-11 16:35:38', NULL, NULL, ''),
(387, 'Tidak', 'user', '2023-04-11 16:35:45', NULL, NULL, ''),
(388, 'Mula', 'user', '2023-04-11 16:43:10', NULL, NULL, ''),
(389, 'Ya', 'user', '2023-04-11 16:43:13', NULL, NULL, ''),
(390, 'AboutHometutor', 'user', '2023-04-11 16:43:15', NULL, NULL, ''),
(391, 'Ya', 'user', '2023-04-11 16:43:20', NULL, NULL, ''),
(392, 'AboutEduchat', 'user', '2023-04-11 16:43:21', NULL, NULL, ''),
(393, 'Ya', 'user', '2023-04-11 16:43:24', NULL, NULL, ''),
(394, 'SubscribtionHometutor', 'user', '2023-04-11 16:43:26', NULL, NULL, ''),
(395, 'Ya', 'user', '2023-04-11 16:43:29', NULL, NULL, ''),
(396, 'general', 'user', '2023-04-11 16:43:31', NULL, NULL, ''),
(397, 'Bagaimana boleh dapatkan detail login', 'user', '2023-04-11 16:43:47', NULL, NULL, ''),
(398, 'Mula', 'user', '2023-04-11 16:47:13', NULL, NULL, ''),
(399, 'Ya', 'user', '2023-04-11 16:47:15', NULL, NULL, ''),
(400, 'AboutHometutor', 'user', '2023-04-11 16:47:18', NULL, NULL, ''),
(401, 'Ya', 'user', '2023-04-11 16:47:21', NULL, NULL, ''),
(402, 'AboutEduchat', 'user', '2023-04-11 16:47:24', NULL, NULL, ''),
(403, 'Ya', 'user', '2023-04-11 16:47:26', NULL, NULL, ''),
(404, 'SubscribtionHometutor', 'user', '2023-04-11 16:47:28', NULL, NULL, ''),
(405, 'Ya', 'user', '2023-04-11 16:47:31', NULL, NULL, ''),
(406, 'general', 'user', '2023-04-11 16:47:32', NULL, NULL, ''),
(407, 'Apa itu hometutor', 'user', '2023-04-11 16:47:42', NULL, NULL, ''),
(408, '0192123212', 'user', '2023-04-11 16:47:49', NULL, NULL, ''),
(409, 'Ya', 'user', '2023-04-11 16:47:51', NULL, NULL, ''),
(410, 'general', 'user', '2023-04-11 16:47:55', NULL, NULL, ''),
(411, 'Bagaimana boleh dapatkan maklumat login?', 'user', '2023-04-11 16:48:16', NULL, NULL, ''),
(412, 'Mula', 'user', '2023-04-11 16:48:56', NULL, NULL, ''),
(413, 'Ya', 'user', '2023-04-11 16:48:59', NULL, NULL, ''),
(414, 'AboutHometutor', 'user', '2023-04-11 16:49:01', NULL, NULL, ''),
(415, 'Ya', 'user', '2023-04-11 16:49:03', NULL, NULL, ''),
(416, 'AboutEduchat', 'user', '2023-04-11 16:49:06', NULL, NULL, ''),
(417, 'Ya', 'user', '2023-04-11 16:49:08', NULL, NULL, ''),
(418, 'SubscribtionHometutor', 'user', '2023-04-11 16:49:10', NULL, NULL, ''),
(419, 'Ya', 'user', '2023-04-11 16:49:12', NULL, NULL, ''),
(420, 'general', 'user', '2023-04-11 16:49:15', NULL, NULL, ''),
(421, 'Apa itu hometutor?', 'user', '2023-04-11 16:49:25', NULL, NULL, ''),
(422, '0192314532', 'user', '2023-04-11 16:49:32', NULL, NULL, ''),
(423, 'Ya', 'user', '2023-04-11 16:49:35', NULL, NULL, ''),
(424, 'interactive', 'user', '2023-04-11 16:49:37', NULL, NULL, ''),
(425, 'Bagaimana boleh dapatkan maklumat login?', 'user', '2023-04-11 16:49:50', NULL, NULL, ''),
(426, 'Ya', 'user', '2023-04-11 16:49:54', NULL, NULL, ''),
(427, 'exit', 'user', '2023-04-11 16:49:55', NULL, NULL, ''),
(428, 'Tidak', 'user', '2023-04-11 16:49:59', NULL, NULL, ''),
(429, 'Muka', 'user', '2023-04-11 16:53:57', NULL, NULL, ''),
(430, 'Mula', 'user', '2023-04-11 16:54:21', NULL, NULL, ''),
(431, 'continue', 'user', '2023-04-11 16:54:23', NULL, NULL, ''),
(432, 'Ya', 'user', '2023-04-11 16:54:26', NULL, NULL, ''),
(433, 'suggestion', 'user', '2023-04-11 16:54:28', NULL, NULL, ''),
(434, 'Ya', 'user', '2023-04-11 16:54:31', NULL, NULL, ''),
(435, 'general', 'user', '2023-04-11 16:54:33', NULL, NULL, ''),
(436, 'Apakah itu hometutor?', 'user', '2023-04-11 16:54:47', NULL, NULL, ''),
(437, '0123321231', 'user', '2023-04-11 16:54:55', NULL, NULL, ''),
(438, 'Ya', 'user', '2023-04-11 16:55:04', NULL, NULL, ''),
(439, 'interactive', 'user', '2023-04-11 16:55:11', NULL, NULL, ''),
(440, 'bagaimana maklumat login saya?', 'user', '2023-04-11 16:55:23', NULL, NULL, ''),
(441, 'Ya', 'user', '2023-04-11 16:55:26', NULL, NULL, ''),
(442, 'material', 'user', '2023-04-11 16:55:30', NULL, NULL, ''),
(443, 'Tolong beri rujukan soalan ini', 'user', '2023-04-11 16:55:47', NULL, NULL, 'Material'),
(444, 'QSPMTT213223', 'user', '2023-04-11 16:55:58', NULL, NULL, ''),
(445, 'Ya', 'user', '2023-04-11 16:56:04', NULL, NULL, ''),
(446, 'exit', 'user', '2023-04-11 16:56:07', NULL, NULL, ''),
(447, 'Tidak', 'user', '2023-04-11 16:56:10', NULL, NULL, ''),
(448, 'Mula', 'user', '2023-04-13 12:58:58', NULL, NULL, ''),
(449, 'Ya', 'user', '2023-04-13 12:59:02', NULL, NULL, '');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_02_11_055546_create_todos_table', 1),
(7, '2022_04_22_004453_create_sessions_table', 1),
(8, '2022_04_22_005421_create_messages_table', 1),
(9, '2022_04_22_005448_create_educhats_table', 1),
(10, '2022_04_22_005633_create_chat_rooms_table', 1),
(11, '2022_04_22_032213_create_packages_table', 1),
(12, '2022_04_22_044928_create_subjects_table', 1),
(13, '2022_04_25_013045_create_topics_table', 1),
(14, '2022_04_25_024237_create_materials_table', 1),
(15, '2022_04_25_044303_create_questions_table', 1),
(16, '2022_05_20_022713_add_foreign_keys_packages_to_subjects_table', 1),
(17, '2022_05_21_040659_add_keyword_to_messages_table', 1),
(18, '2022_07_19_041949_create_templates_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codepackage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namepackage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailpackage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `codepackage`, `namepackage`, `detailpackage`, `created_at`, `updated_at`) VALUES
(1, 'SPM', 'SPM', 'Sijil Pelajaran Malaysia', '2022-09-12 17:22:54', '2022-09-12 17:22:54'),
(2, 'PT3', 'PT3', 'Pentaksiran Tingkatan Tiga', '2022-09-12 17:34:13', '2022-09-12 17:34:13'),
(3, 'UPSR', 'UPSR', 'Ujian Pencapaian Sekolah Rendah', '2022-09-12 17:34:46', '2022-09-12 17:34:46'),
(4, 'LPRI', 'LPRI', 'Lower Primary', '2022-09-12 17:35:43', '2022-09-12 17:35:43');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parentcodequestion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `questioncodequestion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typequestion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailquestion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsolutionquestion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusquestion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answeraquestion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answerbquestion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answercquestion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answerdquestion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exactanswerquestion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modifieddatequestion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modifiedbyquestion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `parentcodequestion`, `questioncodequestion`, `typequestion`, `detailquestion`, `detailsolutionquestion`, `statusquestion`, `answeraquestion`, `answerbquestion`, `answercquestion`, `answerdquestion`, `exactanswerquestion`, `modifieddatequestion`, `modifiedbyquestion`, `created_at`, `updated_at`) VALUES
(1, 'QSPMSC1123960', 'QSPMSC1123960', 'Objective', 'In the pendulum oscillation experiment, a student wants to study the relationship between the length of the string and the number of oscillations per minute. Which of the following is the responding variable?', 'Number of oscillations', 'Online', 'Time', 'Weight of the pendulum', 'Length of the string', 'Number of oscillations', 'D', '12/12/2021', 'Admin', '2022-09-12 18:47:27', '2022-09-12 18:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `connection_id` int(11) DEFAULT NULL,
  `sentence_id` text DEFAULT NULL,
  `sentence` text DEFAULT NULL,
  `weight` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sentences`
--

CREATE TABLE `sentences` (
  `hashid` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `sentence` varchar(768) CHARACTER SET utf8 DEFAULT NULL,
  `used` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sentences`
--

INSERT INTO `sentences` (`hashid`, `sentence`, `used`) VALUES
('08f9cb14b3736dfc', 'hello human', 1),
('eb6b0b90951797a3', 'i\'m bot', 0),
('49f68a5c8493ec2c', 'hi', 0),
('741be3f3ba514943', 'in indonesia', 1),
('bfbbfdab36725451', 'where do you live', 0),
('7bbe5d10ac9f8335', 'every day at 10 AM', 4),
('ec53b26f3f25c54a', 'when you want to go to campus', 3),
('889457ff286376c1', 'diabetes is about sugar level in blood', 2),
('3b8f4c9dddc6d9cf', 'how to know about diabetes', 1),
('13825b2abe398559', 'how to find out about diabetes', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('bV536SONMEQjEwpWL82mUyitGNLSrupBrV6DuKd6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidUp5SU44S3o5MWxFUmpsQXo0WGlzaWlZdTN6OWdIdFg5ajdpeU1XQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1681361943),
('eMt2unFKEVt9fRbptAXvGPsw4Yh9WHUM6IWP5JX0', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYXlFMkcxeXlOMkU0dTJpUWZuNUVLY2RaMlQyYWJXTXVwTkI5Snp1eiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1683259844),
('tTu4tbxVS9QZlH1mD1AAaY13OB6ykKtRaE0YZTmM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ1dNYlBlZmZkSDZMNEhIQWI2Sk85dDJGRUNLQUZidllKaVpYbkJYQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO319', 1681200546),
('XzCpDCfjpIlEU5BvezkgDt7fy8n3tqY7IBoG2QE4', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiNUJQaFhXUFRFV1Q0bDY4VHZnSUtsS01mNHZzcGFPWXA0SmU3cVphUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRRZW1YMmVRUDNwcENRMTF4LnFSbm5PaU9wbGhhdWgwYkZydjhtenZsMFUwbkx0a0h6S0pzNiI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkUWVtWDJlUVAzcHBDUTExeC5xUm5uT2lPcGxoYXVoMGJGcnY4bXp2bDBVMG5MdGtIektKczYiO30=', 1681203370);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codesubject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namesubject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsubject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_querydescription`
--

CREATE TABLE `tbl_querydescription` (
  `id` int(12) NOT NULL,
  `input` text NOT NULL,
  `query` text NOT NULL,
  `type` varchar(250) DEFAULT NULL,
  `tag` varchar(250) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `predicate` varchar(250) DEFAULT NULL,
  `object` varchar(250) DEFAULT NULL,
  `userid` int(15) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_querydescription`
--

INSERT INTO `tbl_querydescription` (`id`, `input`, `query`, `type`, `tag`, `subject`, `predicate`, `object`, `userid`, `created_at`, `updated_at`) VALUES
(7, 'Selamat pagi, bagaimana cara merubah gambar ?', 'Good morning, how to change the picture?', '', '', 'picture', ' change', '', NULL, '2023-07-07 11:37:59', '2023-07-07 04:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_querydescription_backup`
--

CREATE TABLE `tbl_querydescription_backup` (
  `id` int(12) NOT NULL,
  `query` text NOT NULL,
  `type` varchar(250) DEFAULT NULL,
  `tag` varchar(250) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `predicate` varchar(250) DEFAULT NULL,
  `object` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_querydescription_backup`
--

INSERT INTO `tbl_querydescription_backup` (`id`, `query`, `type`, `tag`, `subject`, `predicate`, `object`) VALUES
(11, '\r\nGOOD EVENING, HOW ARE YOU NURHADI?, CAN I ASK FOR HELP?', '[\'gr\', \'gr\', \'u\']', '[(\'CAN\', \'MD\'), (\'I\', \'PRP\'), (\'ASK\', \'VB\'), (\'FOR\', \'NNP\'), (\'HELP\', \'NNP\'), (\'?\', \'.\')]', 'Subject:FOR', 'Predicate: ASK', 'Object:HELP'),
(18, 'GOOD MORNING, HOW ARE NURHADI?', '[\'gr\', \'u\']', '[(\'HOW\', \'WRB\'), (\'ARE\', \'NNP\'), (\'NURHADI\', \'NNP\'), (\'?\', \'.\')]', 'Subject:ARE', 'Predicate:', 'Object:NURHADI'),
(26, 'Good evening, how is Nurhadi?, Can I ask for help?', '[\'gr\', \'i\', \'u\']', '[(\'Can\', \'MD\'), (\'I\', \'PRP\'), (\'ask\', \'VB\'), (\'for\', \'IN\'), (\'help\', \'NN\'), (\'?\', \'.\')]', 'Subject:help', 'Predicate: ask', 'Object:'),
(27, 'Good evening, how are you FAIRUZ?, Can I ask for help?', '[\'gr\', \'gr\', \'u\']', '[(\'Can\', \'MD\'), (\'I\', \'PRP\'), (\'ask\', \'VB\'), (\'for\', \'IN\'), (\'help\', \'NN\'), (\'?\', \'.\')]', 'Subject:help', 'Predicate: ask', 'Object:'),
(30, 'Hello, how are you this afternoon Nurhadi?', '[\'gr\', \'gr\']', '[(\'how\', \'WRB\'), (\'are\', \'VBP\'), (\'you\', \'PRP\'), (\'this\', \'DT\'), (\'afternoon\', \'NN\'), (\'Nurhadi\', \'NNP\'), (\'?\', \'.\')]', 'Subject:afternoon', 'Predicate:', 'Object:Nurhadi'),
(31, 'Hello, how are you tonight Nurhadi?', '[\'gr\', \'gr\']', '[(\'how\', \'WRB\'), (\'are\', \'VBP\'), (\'you\', \'PRP\'), (\'tonight\', \'JJ\'), (\'Nurhadi\', \'NNP\'), (\'?\', \'.\')]', 'Subject:Nurhadi', 'Predicate:', 'Object: tonight'),
(34, 'Good evening, how are you Nurhadi?, Can I ask for help?', '[\'gr\', \'gr\', \'u\']', '[(\'Can\', \'MD\'), (\'I\', \'PRP\'), (\'ask\', \'VB\'), (\'for\', \'IN\'), (\'help\', \'NN\'), (\'?\', \'.\')]', 'Subject:help', 'Predicate: ask', 'Object:'),
(35, 'Good morning, how are you Nurhadi?, Can I ask for help?', '[\'gr\', \'gr\', \'u\']', '[(\'Can\', \'MD\'), (\'I\', \'PRP\'), (\'ask\', \'VB\'), (\'for\', \'IN\'), (\'help\', \'NN\'), (\'?\', \'.\')]', 'Subject:help', 'Predicate: ask', 'Object:'),
(36, 'GOOD NIGHT, HOW ARE NURHADI?, WHAT DO YOU NEED?', '', '', '', '', ''),
(37, 'GOOD NIGHT, HOW ARE NURHADI?', '[\'gr\', \'u\']', '[(\'HOW\', \'WRB\'), (\'ARE\', \'NNP\'), (\'NURHADI\', \'NNP\'), (\'?\', \'.\')]', 'Subject:ARE', 'Predicate:', 'Object:NURHADI'),
(38, 'GOOD NIGHT, HOW ARE YOU NURHADI?', '', '', '', '', ''),
(39, 'GOOD EVENING, HOW ARE YOU FRIENDS?', '', '', '', '', ''),
(40, 'GOOD MORNING, HOW ARE YOU NURHADI?', '', '', '', '', ''),
(41, 'Hello Good morning, how are you nurhadi?', '', '', '', '', ''),
(42, 'GOOD EVENING, HOW ARE NURHADI?', '[\'gr\', \'u\']', '[(\'HOW\', \'WRB\'), (\'ARE\', \'NNP\'), (\'NURHADI\', \'NNP\'), (\'?\', \'.\')]', 'Subject:ARE', 'Predicate:', 'Object:NURHADI'),
(43, 'Hello Good morning, how are you nurhadi?', '', '', '', '', ''),
(44, 'I need help?', '[\'u\']', 'I need help?', 'subject: I', 'object: help', '[(\'I\', \'PRP\'), (\'need\', \'VBP\'), (\'help\', \'VB\'), (\'?\', \'.\')]'),
(45, 'GOOD NIGHT, HOW ARE NURHADI?', '[\'gr\', \'u\']', '[(\'HOW\', \'WRB\'), (\'ARE\', \'NNP\'), (\'NURHADI\', \'NNP\'), (\'?\', \'.\')]', 'Subject:ARE', 'Predicate:', 'Object:NURHADI'),
(46, 'hello Nurhadi good evening, how are you?', '', '', '', '', ''),
(47, 'Hello, good evening Nurhadi?', '', '', '', '', ''),
(48, 'Hello, good morning nurhadi?, how are you?', '', '', '', '', ''),
(49, 'how to make a website?', '', '', '', '', ''),
(50, 'how to make a schedule about public transportation?', '', '', '', '', ''),
(51, 'how to make a tattoo in microsoft word?', '', '', '', '', ''),
(52, 'how to paint in microsoft word?', '', '', '', '', ''),
(53, 'Hello, how are you this afternoon Nurhadi?', '', '', '', '', ''),
(54, 'how to paint in microsoft word?', '', '', '', '', ''),
(55, 'Good morning! As an AI language model, I don\'t have emotions, but I\'m ready to assist you. How can I help you today?', '', '', '', '', ''),
(56, 'Good evening! I\'m just an AI language model, so I don\'t have feelings, but I\'m here to assist you with whatever you need help with. What can I help you with?', '', '', '', '', ''),
(57, 'Microsoft Word is not a painting software, it is primarily used for creating and editing text-based documents. However, you can insert and edit images in Word.', '', '', '', '', ''),
(58, 'how to paint in microsoft word?', '', '', '', '', ''),
(59, 'how to make a website?', '', '', '', '', ''),
(60, 'how to make a schedule about public transportation?', '', '', '', '', ''),
(61, 'how to make a schedule about public transportation?', '', '', '', '', ''),
(62, 'how to paint in microsoft word?', '', '', '', '', ''),
(63, 'how to paint in microsoft word?', '', '', '', '', ''),
(64, 'hi', '', '', '', '', ''),
(65, 'hi', '', '', '', '', ''),
(66, 'hi', '', '', '', '', ''),
(67, 'hi', '', '', '', '', ''),
(68, 'how are you?', '', '', '', '', ''),
(69, 'How are you?', '', '', '', '', ''),
(70, 'how are you?', '', '', '', '', ''),
(71, 'where do you live', '', '', '', '', ''),
(72, 'where do you live', '', '', '', '', ''),
(73, 'when you want to go to campus', '', '', '', '', ''),
(74, 'when you want to go to campus', '', '', '', '', ''),
(75, 'how big is my salary?', '', '', '', '', ''),
(76, 'how much is my salary', '', '', '', '', ''),
(77, 'what is the name of the third president of indonesia', '', '', '', '', ''),
(78, 'when you want to go to campus', '', '', '', '', ''),
(79, 'Good morning, how are you Nurhadi?', '[\'gr\', \'gr\']', '[(\'how\', \'WRB\'), (\'are\', \'VBP\'), (\'you\', \'PRP\'), (\'Nurhadi\', \'NNP\'), (\'?\', \'.\')]', 'Subject:Nurhadi', 'Predicate:', 'Object:'),
(80, 'How to make a public transport schedule', '', '', '', '', ''),
(81, 'History of the National University of Malaysia campus', '', '', '', '', ''),
(82, 'how to know about diabetes', '', '', '', '', ''),
(83, 'how to find out about diabetes', '', '', '', '', ''),
(84, 'how to find out about diabetes', '', '', '', '', ''),
(85, 'how to make an image using microsoft word', '', '', '', '', ''),
(86, 'how to make an image using microsoft word', '', '', '', '', ''),
(87, 'how to make an image using microsoft word', '', '', '', '', ''),
(88, 'how to make a diagram of public transport', '', '', '', '', ''),
(89, 'how to make a diagram of public transport', '', '', '', '', ''),
(90, 'GOOD EVENING, HOW ARE NURHADI?', '', '', '', '', ''),
(91, 'how to paint in microsoft word', '', '', '', '', ''),
(92, 'Good evening, how are you nurhadi?', '', '', '', '', ''),
(93, 'Good evening, how are you nurhadi?', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `templatename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `templateresponse` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `templatedescriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `templateimage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `templatekeyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `templatecategory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `templatetag` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `predicate` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `templatename`, `templateresponse`, `templatedescriptions`, `templateimage`, `templatekeyword`, `templatecategory`, `templatetag`, `subject`, `predicate`, `object`, `created_at`, `updated_at`) VALUES
(1, 'Find question code ', 'Cara mendapatkan questioncode  - Please click exclamation mark icon below the question  - After click this icon, this information will appear and please copy Question code on this tab. Then paste in message box. - Cara masukkan question code : QSPMMT120155', 'Templete use to guide user to find question code', '-', 'tolong jelaskan soalan,terangkan soalan,tidak faham,beri penerangan,bagi penerangan,tidak jelas ', 'Material', NULL, NULL, NULL, NULL, '2022-09-12 19:30:19', '2022-09-12 19:30:19'),
(2, 'Explain purpose of hometutor', 'HomeTutor fokus kepada menyediakan bahan pengajaran dalam bentuk kandungan digital, bank2 soalan dan modul pembelajaran penguasaan untuk meningkatkan pencapalan anak dari umur 7 hingga 17 tahun.                                                                            Jika berminat boleh tinggalkan nombor telefon Tuan/Puan untuk kami hubungi.', 'Template explain hometutor funtions', '-', 'menyediakan,guru mengajar,cara membantu, bagaimana', 'General', NULL, 'Hometutor', 'menyediakan', 'pengajaran', '2022-09-12 19:31:34', '2022-09-12 19:31:34'),
(3, 'Explain price package in hometutor', 'Hometutor menawarkan pakej-pakej mengikut tahap persekolahan umur anak Tn/Pn. Setiap pakej mempunyai harga yang tersendiri.', 'Template explain hometutor price package ', '-', 'harga,percuma', 'General', NULL, NULL, NULL, NULL, '2022-09-12 19:32:41', '2022-09-12 19:32:41'),
(4, 'Explain hometutor account can use by many user in one time in different device', 'Pengunaan satu akaun pada berlainan device boleh dilakukan.', 'Template explain hometutor account can be login by same account in many devices', '-', 'sama,device,guna      ', 'General', NULL, NULL, NULL, NULL, '2022-09-12 19:38:20', '2022-09-12 19:38:20'),
(5, 'Explain how to display activities and achivement student ', '1.Tn/Pn boleh login ke akaun parents.                                                               2.Gunakan username dan password parent yang terdapat pada kotak hijau didalam gambar.       (guide by image)', 'Template explain how to display activities and archivement student', '-', 'tengok, prestasi', 'Interactive', NULL, NULL, NULL, NULL, '2022-09-12 19:39:04', '2022-09-12 19:39:04'),
(6, 'Explain how to make payment', '1.Akaun parent tidak dapat melakukan pembayaran      2.Pembayaran boleh dilakukan mengunakan akaun Child.                                                                       3.Gunakan username dan password child yang terdapat pada kotak biru didalam gambar.          (guide by image)', 'Template explain how to make payment', '-', 'buat, payment, pembayaran', 'Interactive', NULL, NULL, NULL, NULL, '2022-09-12 19:41:06', '2022-09-12 19:41:06'),
(7, 'Explain how to login', 'Gunakan username dan password child yang terdapat pada kotak biru didalam gambar.         (guide by image)', 'Template explain how to login', '-', 'nak login,nak masuk', 'Interactive', NULL, 'username', 'gunakan', 'kota biru', '2022-09-12 19:42:13', '2022-09-12 19:42:13'),
(8, 'Explain how to start learning process', 'Untuk mulakan pembelajaran, anak boleh klik pada courses utk pilih subjek ye puan.boleh rujuk pada gambar (guide by image)', 'Templain explain where page to start learning process', '-', 'macam mana nak mula', 'Interactive', NULL, NULL, NULL, NULL, '2022-09-12 19:43:36', '2022-09-12 19:43:36'),
(9, 'Explain how to join class', 'Untuk sertai kelas, boleh klik pada menu diata. boleh rujuk pada gamabr dibawah                        (guide by image)', 'Template explain how to join class', '-', 'masuk kelas,join kelas', 'Interactive', NULL, NULL, NULL, NULL, '2022-09-12 19:45:24', '2022-09-12 19:45:24'),
(10, 'Explain how to login parent accout', 'Gunakan username dan password parent yang terdapat pada kotak hijau didalam gambar.      (guide by image)', 'Template explain how to login parent account', '-', 'macam mana nak login,parent, account', 'Interactive', NULL, NULL, NULL, NULL, '2022-09-12 19:46:27', '2022-09-12 19:46:27'),
(11, 'Explain how to translate question langunage', 'Bagi Hometutor, kamiada sediakan penterjamahan bagi terjemah bahasa Melayu ke Inggeris (guide by image)', 'Template explain how to translate question language in hometutor', '-', 'jawab dalam,alih bahas                              ', 'Interactive', NULL, NULL, NULL, NULL, '2022-09-12 19:47:04', '2022-09-12 19:47:04'),
(12, 'Explain how to change package', 'Untuk pertanyaan ini. Sila rujuk kepada Customer Care kami 01234567 untuk bantuan lanjut.', 'Template explain how to change package', '-', 'tukar pakage,ubah package       ', 'Interactive', NULL, NULL, NULL, NULL, '2022-09-12 19:47:45', '2022-09-12 19:47:45'),
(13, 'Explain what langunage can be use in hometutor ', 'Dalam pembelajaran ni, hanya boleh gunakan bahasa Melayu dan Inggeris.', 'Template explain what langunage can be use', '-', 'bahasa lain', 'Interactive', NULL, 'bahasa', NULL, NULL, '2022-09-12 19:48:20', '2022-09-12 19:48:20'),
(36, NULL, NULL, NULL, NULL, 'Selamat pagi, bagaimana cara merubah gambar ?', NULL, NULL, 'picture', ' change', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codetopic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nametopic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailtopic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$WwJTWJ8BEHnFNMZz84rxluNG2xFsdSHc4gqt0VS/k/yIeJIbOQrAC', NULL, NULL, NULL, NULL, NULL, '2022-09-12 17:15:24', '2022-09-12 17:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `words`
--

CREATE TABLE `words` (
  `hashid` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `word` varchar(64) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `words`
--

INSERT INTO `words` (`hashid`, `word`) VALUES
('49f68a5c8493ec2c', 'hi'),
('c9d4eecd9934c051', 'whats'),
('62cc0b4ebb0b57b4', 'your'),
('b068931cc450442b', 'name'),
('5d41402abc4b2a76', 'hello'),
('99e9bae675b12967', 'human'),
('567904efe9e64d9f', 'where'),
('d4579b2688d67523', 'do'),
('639bae9ac6b3e1a8', 'you'),
('d0dbe915091d400b', 'live'),
('13b5bfe96f3e2fe4', 'in'),
('cda2c99fbf5e19f2', 'indonesia'),
('df491a4de50739fa', 'when'),
('a3186a309d94022f', 'want'),
('01b6e20344b68835', 'to'),
('34d1f91fb2e514b8', 'go'),
('162832ab572046b2', 'campus'),
('83ab982dd0848318', 'every'),
('628b7db04235f228', 'day'),
('7d0db380a5b95a8b', 'at'),
('d3d9446802a44259', '10'),
('c04cd38aeb30f3ad', 'am'),
('db88a0257c220dbf', 'how'),
('af9dc3cd6ce29d56', 'know'),
('46b3931b9959c927', 'about'),
('c35b49da1b6dd679', 'diabetes'),
('a2a551a6458a8de2', 'is'),
('ada15bd1a5ddf0b7', 'sugar'),
('c9e9a848920877e7', 'level'),
('6b157916b43b09df', 'blood');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_rooms_message_id_foreign` (`message_id`),
  ADD KEY `chat_rooms_educhat_id_foreign` (`educhat_id`);

--
-- Indexes for table `educhats`
--
ALTER TABLE `educhats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `masters`
--
ALTER TABLE `masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sentences`
--
ALTER TABLE `sentences`
  ADD UNIQUE KEY `hashid` (`hashid`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_package_id_foreign` (`package_id`);

--
-- Indexes for table `tbl_querydescription`
--
ALTER TABLE `tbl_querydescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_querydescription_backup`
--
ALTER TABLE `tbl_querydescription_backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `templates` ADD FULLTEXT KEY `templatekeyword` (`templatekeyword`);
ALTER TABLE `templates` ADD FULLTEXT KEY `templatedetail` (`templateresponse`);
ALTER TABLE `templates` ADD FULLTEXT KEY `templatekeyword_2` (`templatekeyword`);
ALTER TABLE `templates` ADD FULLTEXT KEY `subject` (`subject`);
ALTER TABLE `templates` ADD FULLTEXT KEY `object` (`object`);
ALTER TABLE `templates` ADD FULLTEXT KEY `predicate` (`predicate`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `words`
--
ALTER TABLE `words`
  ADD UNIQUE KEY `hashid` (`hashid`),
  ADD UNIQUE KEY `word` (`word`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `educhats`
--
ALTER TABLE `educhats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `masters`
--
ALTER TABLE `masters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=450;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_querydescription`
--
ALTER TABLE `tbl_querydescription`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_querydescription_backup`
--
ALTER TABLE `tbl_querydescription_backup`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
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
-- Constraints for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
  ADD CONSTRAINT `chat_rooms_educhat_id_foreign` FOREIGN KEY (`educhat_id`) REFERENCES `educhats` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_rooms_message_id_foreign` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
