-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2020-06-28 13:19:02
-- 服务器版本： 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leavemsg`
--

-- --------------------------------------------------------

--
-- 表的结构 `file`
--

CREATE TABLE `file` (
  `fid` int(10) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `uid` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(5) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `file`
--

INSERT INTO `file` (`fid`, `filename`, `uid`, `url`, `type`, `username`) VALUES
(1, '051b979692e00840b1bbf920d67f5934.log', 13, '../upload/051b979692e00840b1bbf920d67f5934.log', 'log', '741@qq.com'),
(2, '1982a578ccdfdeb3737379d5d619749d.log', 13, '../upload/1982a578ccdfdeb3737379d5d619749d.log', 'log', '741@qq.com'),
(3, '25a8bc641848809945022f181c25a46f.log', 13, '../upload/25a8bc641848809945022f181c25a46f.log', 'log', '741@qq.com'),
(4, '6.jpg', 18, '../upload/ae72a10cdc1cfa464a32f81ae2002242.jpg', 'jpg', '123@qq.com');

-- --------------------------------------------------------

--
-- 表的结构 `msg`
--

CREATE TABLE `msg` (
  `mid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `time` varchar(30) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `msg`
--

INSERT INTO `msg` (`mid`, `uid`, `content`, `time`, `username`) VALUES
(5, 13, 'aaa', '1584436097', '741@qq.com'),
(6, 17, 'rrr', '1590542014', '1234@qq.com'),
(7, 18, 'ä½ å¥½', '1592742387', '123@qq.com');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `headimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '../images/default_headimg.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `headimg`) VALUES
(16, '459@qq.com', '30b5a802656241ec0c02c1fcc59ddeaa', '../upload/headimg/c1847999e8304d50b7718932511b2aa1.jpg'),
(17, '1234@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '../upload/headimg/2d0f6cbd0db8f174369a9c4d7c548919.jpg'),
(18, '123@qq.com', '6c8cfba3a51351fb9d8f3654c56ed81b', '../upload/headimg/e83737a4df9ddbd1d6bd27de9aa0b0f6.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `file`
--
ALTER TABLE `file`
  MODIFY `fid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `msg`
--
ALTER TABLE `msg`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
