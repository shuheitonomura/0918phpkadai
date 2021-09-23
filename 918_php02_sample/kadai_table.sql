-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2021 年 9 月 23 日 16:02
-- サーバのバージョン： 10.4.21-MariaDB
-- PHP のバージョン: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `kadai0918_gsacs09`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `kadai_table`
--

CREATE TABLE `kadai_table` (
  `id` int(12) NOT NULL,
  `names` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `displays` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prices` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weights` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `releases` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `kadai_table`
--

INSERT INTO `kadai_table` (`id`, `names`, `displays`, `prices`, `weights`, `releases`, `created_at`, `updated_at`) VALUES
(11, 'iPhone３GS', '3.5インチ', '16GB 23040円', '135g', '2009-06-19', '2021-09-23 14:16:33', '2021-09-23 14:16:33'),
(12, 'iPhone4', '3.5インチ', '16GB 46080円', '137g', '2010-06-24', '2021-09-23 14:19:03', '2021-09-23 14:19:03'),
(13, 'iPhone4S', '3.5インチ', '16GB 46080円', '140g', '2011-10-14', '2021-09-23 14:20:36', '2021-09-23 14:20:36'),
(14, 'iPhone5', '4インチ', '16GB 51360円', '112g', '2012-09-21', '2021-09-23 14:22:50', '2021-09-23 14:22:50'),
(15, 'iPhone5C', '4インチ', '16GB 60800円', '132g', '2013-09-20', '2021-09-23 14:38:26', '2021-09-23 14:38:26'),
(16, 'iPhone5S', '4インチ', '16GB 71800円', '112g', '2013-09-20', '2021-09-23 14:39:34', '2021-09-23 14:39:34'),
(17, 'iPhone6Plus', '5.5インチ', '16GB 79800円', '172g', '2014-09-19', '2021-09-23 14:41:46', '2021-09-23 14:41:46'),
(18, 'iPhone6', '4.7インチ', '16GB 67800円', '129g', '2014-09-19', '2021-09-23 14:43:16', '2021-09-23 14:43:16'),
(19, 'iPhone6SPlus', '5.5インチ', '32GB 98800円', '192g', '2015-09-25', '2021-09-23 14:44:50', '2021-09-23 14:44:50'),
(20, 'iPhone6S', '4.7インチ', '32GB 86800円', '143g', '2015-09-25', '2021-09-23 14:49:15', '2021-09-23 14:49:15'),
(21, 'iPhone7Plus', '5.5インチ', '32GB 85800円', '188g', '2016-09-16', '2021-09-23 14:50:35', '2021-09-23 14:50:35'),
(22, 'iPhone7', '4.7インチ', '32GB72800円', '138g', '2016-09-16', '2021-09-23 14:51:47', '2021-09-23 14:51:47'),
(23, 'iPhone8Plus', '5.5インチ', '64GB89800円', '202g', '2017-09-22', '2021-09-23 14:53:27', '2021-09-23 14:53:27'),
(24, 'iPhoneX', '5.8インチ', '64GB 112800円', '174g', '2017-11-03', '2021-09-23 14:55:26', '2021-09-23 14:55:26'),
(25, 'iPhoneXR', '6.1インチ', '64GB84800円', '194g', '2018-10-26', '2021-09-23 14:56:35', '2021-09-23 14:56:35'),
(26, 'iPhoneXSMax', '6.5インチ', '64GB124800円', '208g', '2018-09-21', '2021-09-23 14:58:06', '2021-09-23 14:58:06'),
(27, 'iPhoneXS', '5.8インチ', '64GB112800円', '177g', '2018-09-21', '2021-09-23 14:59:23', '2021-09-23 14:59:23'),
(28, 'iPhone11ProMax', '6.5インチ', '64GB119800円', '226g', '2019-09-20', '2021-09-23 15:02:38', '2021-09-23 15:02:38'),
(29, 'iPhone11Pro', '6.1インチ', '64GB106800円', '188g', '2019-09-20', '2021-09-23 15:05:18', '2021-09-23 15:05:18'),
(30, 'iPhone11', '6.1インチ', '64GB74800円', '194g', '2019-09-20', '2021-09-23 15:06:19', '2021-09-23 15:06:19'),
(31, 'iPhone12', '6.1インチ', '64GB85800円', '162g', '2020-10-23', '2021-09-23 15:08:45', '2021-09-23 15:08:45'),
(32, 'iPhone12Mini', '5.4インチ', '64GB74800円', '133g', '2020-11-13', '2021-09-23 15:10:37', '2021-09-23 15:10:37'),
(33, 'iPhone12Pro', '6.1インチ', '128GB106800円', '187g', '2020-10-23', '2021-09-23 15:11:35', '2021-09-23 15:11:35'),
(34, 'iPhone12ProMax', '6.7インチ', '128GB117800円', '226g', '2020-11-13', '2021-09-23 15:12:58', '2021-09-23 15:12:58');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `kadai_table`
--
ALTER TABLE `kadai_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `kadai_table`
--
ALTER TABLE `kadai_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
