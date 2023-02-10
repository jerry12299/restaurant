-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-02-10 03:26:59
-- 伺服器版本： 10.4.25-MariaDB
-- PHP 版本： 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `restaurant`
--
CREATE DATABASE IF NOT EXISTS `restaurant` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `restaurant`;

-- --------------------------------------------------------

--
-- 資料表結構 `addorder`
--

DROP TABLE IF EXISTS `addorder`;
CREATE TABLE `addorder` (
  `aid` int(11) NOT NULL,
  `tablenum` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表新增資料前，先清除舊資料 `addorder`
--

TRUNCATE TABLE `addorder`;
--
-- 傾印資料表的資料 `addorder`
--

INSERT INTO `addorder` (`aid`, `tablenum`, `mid`, `num`) VALUES
(358, 2, 13, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `mid` int(11) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表新增資料前，先清除舊資料 `menu`
--

TRUNCATE TABLE `menu`;
--
-- 傾印資料表的資料 `menu`
--

INSERT INTO `menu` (`mid`, `pname`, `price`) VALUES
(1, '雙層牛肉起士堡', 90),
(2, '美式牛排', 350),
(3, '烤火雞', 3100),
(4, '肉丸義大利麵', 230),
(5, '披薩', 250),
(6, '炸雞(5塊)', 240),
(7, '西班牙海鮮飯', 340),
(8, '墨西哥捲餅', 185),
(9, '三明治套餐', 80),
(10, '臭豆腐', 50),
(11, '滷肉飯', 35),
(12, '小籠包', 55),
(13, '炸醬麵', 45),
(14, '牛肉麵', 150),
(15, '水餃', 35),
(16, '擔仔麵', 45),
(17, '炒飯', 80),
(18, '燒賣', 60),
(19, '天婦羅丼', 120),
(20, '生魚片拼盤', 250),
(21, '日式煎餃', 30),
(22, '可樂餅', 90),
(23, '牛肉丼', 65),
(24, '日式炸雞', 50),
(25, '拉麵', 130),
(26, '鰻魚飯', 300),
(27, '壽司', 150),
(28, '果汁', 35),
(29, '芬達', 35),
(30, '啤酒', 90),
(31, '可爾必思', 35),
(32, '熱咖啡', 60),
(33, '奶茶', 35),
(34, '檸檬茶', 35),
(35, '可樂', 35),
(36, '雪碧', 35),
(37, '雞塊', 50),
(38, '薯條', 35),
(39, '冰淇淋', 35),
(40, '蘋果派', 60),
(41, '熱狗', 40),
(42, '蛋塔', 40),
(43, '布丁', 50),
(44, '草莓蛋糕', 60),
(45, '甜甜圈', 35);

-- --------------------------------------------------------

--
-- 資料表結構 `tablenum`
--

DROP TABLE IF EXISTS `tablenum`;
CREATE TABLE `tablenum` (
  `tid` int(11) NOT NULL,
  `tablenum` int(11) NOT NULL,
  `money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 資料表新增資料前，先清除舊資料 `tablenum`
--

TRUNCATE TABLE `tablenum`;
--
-- 傾印資料表的資料 `tablenum`
--

INSERT INTO `tablenum` (`tid`, `tablenum`, `money`) VALUES
(6, 1, 1540),
(7, 2, 1255),
(8, 3, 815),
(9, 1, 650),
(10, 2, 1395),
(12, 1, 710),
(14, 2, 755),
(15, 2, 755),
(16, 3, 1235),
(20, 1, 2010),
(21, 1, 700),
(22, 1, 1570),
(23, 1, 1570),
(24, 1, 1890),
(25, 1, 4480),
(26, 1, 810),
(27, 1, 550),
(28, 1, 1210),
(29, 2, 1180),
(30, 1, 2645),
(31, 3, 950),
(32, 1, 630),
(33, 2, 1570),
(34, 3, 570),
(35, 4, 580),
(36, 5, 1780),
(37, 1, 570),
(38, 1, 1100),
(39, 1, 810),
(40, 3, 560),
(41, 3, 370),
(42, 1, 2990),
(43, 1, 640),
(44, 2, 420),
(45, 3, 1375),
(46, 2, 600),
(47, 2, 1570),
(48, 1, 840),
(49, 1, 7760),
(50, 1, 1060),
(51, 2, 850),
(52, 1, 580),
(53, 1, 320),
(54, 1, 1855),
(55, 2, 650),
(56, 2, 745),
(57, 1, 880),
(58, 2, 460),
(59, 2, 1460),
(60, 3, 950),
(61, 1, 500),
(62, 1, 1570),
(63, 1, 810),
(64, 2, 280),
(65, 1, 1355),
(66, 2, 235),
(67, 2, 300),
(68, 1, 640);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `addorder`
--
ALTER TABLE `addorder`
  ADD PRIMARY KEY (`aid`);

--
-- 資料表索引 `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`mid`);

--
-- 資料表索引 `tablenum`
--
ALTER TABLE `tablenum`
  ADD PRIMARY KEY (`tid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `addorder`
--
ALTER TABLE `addorder`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `menu`
--
ALTER TABLE `menu`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tablenum`
--
ALTER TABLE `tablenum`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
