-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.38-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for teamssfc
CREATE DATABASE IF NOT EXISTS `teamssfc` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `teamssfc`;

-- Dumping structure for table teamssfc.accounts_student
CREATE TABLE IF NOT EXISTS `accounts_student` (
  `user_id` int(11) NOT NULL,
  `sessionStudent` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `accounts_student_user_id_683c461a_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table teamssfc.accounts_student: ~43 rows (approximately)
/*!40000 ALTER TABLE `accounts_student` DISABLE KEYS */;
INSERT INTO `accounts_student` (`user_id`, `sessionStudent`) VALUES
	(1, 2016),
	(2, 2016),
	(3, 2016),
	(4, 2016),
	(5, 2016),
	(6, 2016),
	(7, 2016),
	(8, 2016),
	(9, 2016),
	(10, 2016),
	(11, 2016),
	(12, 2016),
	(13, 2016),
	(14, 2016),
	(15, 2016),
	(16, 2016),
	(17, 2016),
	(18, 2016),
	(19, 2016),
	(20, 2016),
	(21, 2016),
	(22, 2016),
	(47, 2016),
	(50, 2016),
	(51, 2016),
	(52, 2016),
	(53, 2016),
	(54, 2016),
	(55, 2016),
	(56, 2016),
	(57, 2016),
	(58, 2016),
	(59, 2016),
	(60, 2016),
	(61, 2016),
	(62, 2016),
	(63, 2016),
	(64, 2016),
	(65, 2016),
	(66, 2016),
	(67, 2016),
	(68, 2016),
	(73, 2016);
/*!40000 ALTER TABLE `accounts_student` ENABLE KEYS */;

-- Dumping structure for table teamssfc.accounts_teacher
CREATE TABLE IF NOT EXISTS `accounts_teacher` (
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `accounts_teacher_user_id_056a6444_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table teamssfc.accounts_teacher: ~29 rows (approximately)
/*!40000 ALTER TABLE `accounts_teacher` DISABLE KEYS */;
INSERT INTO `accounts_teacher` (`user_id`) VALUES
	(23),
	(24),
	(25),
	(26),
	(27),
	(28),
	(29),
	(30),
	(31),
	(32),
	(33),
	(34),
	(35),
	(36),
	(38),
	(39),
	(40),
	(41),
	(42),
	(43),
	(44),
	(45),
	(46),
	(48),
	(69),
	(70),
	(71),
	(72),
	(74);
/*!40000 ALTER TABLE `accounts_teacher` ENABLE KEYS */;

-- Dumping structure for table teamssfc.accounts_user
CREATE TABLE IF NOT EXISTS `accounts_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `is_student` tinyint(1) NOT NULL,
  `is_teacher` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

-- Dumping data for table teamssfc.accounts_user: ~72 rows (approximately)
/*!40000 ALTER TABLE `accounts_user` DISABLE KEYS */;
INSERT INTO `accounts_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `is_student`, `is_teacher`) VALUES
	(1, 'pbkdf2_sha256$150000$1PemJ5eeA8nF$c89AcYzKaa+Lr4TZ7YdtcD76dysB3vgLFlRydvw8nPo=', '2019-07-06 15:11:38.506043', 0, '2016331073', '', '', '', 0, 1, '2019-07-06 15:11:38.001858', 1, 0),
	(2, 'pbkdf2_sha256$150000$6iEakZwA5IL0$DFZKmMwBrH2gGQaH7SXzYG/OPEuCRxo381zGamu2IiE=', '2019-07-06 15:36:44.766032', 0, '2016331072', '', '', '', 0, 1, '2019-07-06 15:36:43.912727', 1, 0),
	(3, 'pbkdf2_sha256$150000$n2kflsdnN97m$AcA1Y9VtRmVWvbrpt84MoseXakwze2jF0JEhALVFsew=', '2019-07-07 10:38:29.012591', 0, '2016331001', '', '', '', 0, 1, '2019-07-06 17:00:01.642549', 1, 0),
	(4, 'pbkdf2_sha256$150000$WcO4OatFrR7A$Z2QtUUqPRjIwYV3sfxBrrQKvaNX1xPMxsrk/OxsGqUY=', '2019-07-06 17:00:16.409139', 0, '2016331002', '', '', '', 0, 1, '2019-07-06 17:00:15.777133', 1, 0),
	(5, 'pbkdf2_sha256$150000$pC3Xxrk2qn6y$hguA2UkmjpMmBzn5JSbs9w2hT4RPWM897Sm+/6PMZdQ=', '2019-07-06 17:00:33.173948', 0, '2016331003', '', '', '', 0, 1, '2019-07-06 17:00:32.361802', 1, 0),
	(6, 'pbkdf2_sha256$150000$ORSYM2aFknh2$hEhgQquO2XQJCaThuUb9gMklFzENAu3TmhMO3kYS4J0=', '2019-07-06 17:00:48.724943', 0, '2016331004', '', '', '', 0, 1, '2019-07-06 17:00:48.005547', 1, 0),
	(7, 'pbkdf2_sha256$150000$GCBTASVBqYrE$TL+fdj3VBsN0QNuuPAzgaSfk1NrAQIedabBEzN3zy88=', '2019-07-06 17:01:03.294207', 0, '2016331005', '', '', '', 0, 1, '2019-07-06 17:01:02.469881', 1, 0),
	(8, 'pbkdf2_sha256$150000$x9I0IfRCSFxE$oxFzMEahczGF+IqVEWg5lBjxO2fuUAjidqvDCpyZ42A=', '2019-07-06 17:01:19.809406', 0, '2016331006', '', '', '', 0, 1, '2019-07-06 17:01:18.965463', 1, 0),
	(9, 'pbkdf2_sha256$150000$HfxksjdCjD0h$0gD7AzhZ9pTnEa40O5Pg48sKwsDbWz4YBxzsAYZgQdk=', '2019-07-06 17:01:40.710890', 0, '2016331007', '', '', '', 0, 1, '2019-07-06 17:01:40.045411', 1, 0),
	(10, 'pbkdf2_sha256$150000$uexauGwNqXUO$/fzzyW1Rx1eW3CvyvYl65dqbcWnRaazSKyYLjP8EHTE=', '2019-07-06 17:01:58.489289', 0, '2016331008', '', '', '', 0, 1, '2019-07-06 17:01:58.052734', 1, 0),
	(11, 'pbkdf2_sha256$150000$ZiZy8HrQOx1R$g3I9lZ1QY3sufqemEHHweeMroWm6xo+5foLbPXMvkwQ=', '2019-07-06 17:02:31.716857', 0, '2016331009', '', '', '', 0, 1, '2019-07-06 17:02:31.122812', 1, 0),
	(12, 'pbkdf2_sha256$150000$AzKLXlDk5VD3$5aU3TcioB4iHuyPgmDqHgxAMYomJHFeR8Z7k1MqygdY=', '2019-07-06 17:02:44.869441', 0, '2016331010', '', '', '', 0, 1, '2019-07-06 17:02:44.370253', 1, 0),
	(13, 'pbkdf2_sha256$150000$nAjQeeiWXJyl$bwL03l8OqPVEEvG1AarrgZAORd4b0KlL5tiGgfXG1rQ=', '2019-07-06 17:03:06.640328', 0, '2016331011', '', '', '', 0, 1, '2019-07-06 17:03:05.975833', 1, 0),
	(14, 'pbkdf2_sha256$150000$GKKzpAi9Eony$/U5vqrmo79TTvF+ui0lyd6DNvTukzNkkX4CNrdJxXbM=', '2019-07-06 17:03:40.118877', 0, '2016331012', '', '', '', 0, 1, '2019-07-06 17:03:39.620495', 1, 0),
	(15, 'pbkdf2_sha256$150000$37VdA0kh0nli$3B6CbN3W393Zwi7AxEMwChr6GQJkUK+tt0xpsl6HBTk=', '2019-07-06 17:04:04.739242', 0, '2016331013', '', '', '', 0, 1, '2019-07-06 17:04:03.993754', 1, 0),
	(16, 'pbkdf2_sha256$150000$43hHBBZq4kUa$KrB5SkSym5cw2eeQKBUuaSqaTeIl143r+HKd28q0EBw=', '2019-07-06 17:04:35.271721', 0, '2016331014', '', '', '', 0, 1, '2019-07-06 17:04:34.833710', 1, 0),
	(17, 'pbkdf2_sha256$150000$QNxjEzVosUKK$h+Ve4vbcmmOWFGeZm4B2CyyrOshaJC7IgrgykZhBFfQ=', '2019-07-06 17:04:59.672329', 0, '2016331015', '', '', '', 0, 1, '2019-07-06 17:04:59.046607', 1, 0),
	(18, 'pbkdf2_sha256$150000$w9QveJXR05u4$Y0xaMQenODao2R0+BPy3Q28eEOZ/NAV3tH9Pdbfv+Gk=', '2019-07-06 17:05:26.168635', 0, '2016331016', '', '', '', 0, 1, '2019-07-06 17:05:25.739395', 1, 0),
	(19, 'pbkdf2_sha256$150000$W5lEiZfGrOcV$YU4SD8vaEwRuWlhIzfQPR4HHPUTiYIpTCKoGCBExrzE=', '2019-07-06 17:05:51.513901', 0, '2016331017', '', '', '', 0, 1, '2019-07-06 17:05:50.919793', 1, 0),
	(20, 'pbkdf2_sha256$150000$H6KqGzxyCNkL$STUpMnLwSZZV5Sv8r9aWYIMOzAsxin6P+UqvNkcSzFw=', '2019-07-06 17:06:18.100772', 0, '2016331018', '', '', '', 0, 1, '2019-07-06 17:06:17.527175', 1, 0),
	(21, 'pbkdf2_sha256$150000$yo3BlyJzkRp8$wMQO+o15xNvLUVTqDsjBahhs1lwVr3de/fHuKYl9yYo=', '2019-07-06 17:06:34.338592', 0, '2016331019', '', '', '', 0, 1, '2019-07-06 17:06:33.707966', 1, 0),
	(22, 'pbkdf2_sha256$150000$Ql3qSxZOIOLL$vhA6ZeFamEKazULNSSYVEaaYeb2hhfhZ7mnA2tbKeL4=', '2019-07-06 17:06:54.987850', 0, '2016331020', '', '', '', 0, 1, '2019-07-06 17:06:54.598332', 1, 0),
	(23, 'pbkdf2_sha256$150000$kWBf2LsDKYIx$RdujYhYe7rgZCu6hi9WPtgb3RBZv2G95T+f1lm9DWlE=', '2019-07-10 18:13:29.767390', 0, 'MZI', '', '', '', 0, 1, '2019-07-06 17:07:24.893319', 0, 1),
	(24, 'pbkdf2_sha256$150000$XO5juZmR4kg9$n2d44unnzmK3ieC3nInUW+9kfaCN/mGLOX5r7lMvh/k=', '2019-07-06 17:07:37.957789', 0, 'MSI', '', '', '', 0, 1, '2019-07-06 17:07:37.481939', 0, 1),
	(25, 'pbkdf2_sha256$150000$XIkiGhKikQH4$4buGIs4ZrvUjN12CECtBBZZRvHSJ6Q6Mhz9NYHViqKo=', '2019-07-06 17:07:49.602399', 0, 'MMI', '', '', '', 0, 1, '2019-07-06 17:07:49.112400', 0, 1),
	(26, 'pbkdf2_sha256$150000$ItQOC530mmBU$iMFV5LTwJ2TTrg/hH6si9BTCHAp1dkTHj4q+8KpNcQs=', '2019-07-06 17:08:13.516747', 0, 'BPC', '', '', '', 0, 1, '2019-07-06 17:08:13.105057', 0, 1),
	(27, 'pbkdf2_sha256$150000$htvhscLLA7P5$G720MsuuRL9abzE2o41XH8NSOYGPABeQKzrqcicNv8Y=', '2019-07-06 17:08:36.276418', 0, 'AT', '', '', '', 0, 1, '2019-07-06 17:08:35.739836', 0, 1),
	(28, 'pbkdf2_sha256$150000$rPvSUQt7LBMp$41qVd0CaBXB/bJhYMFDJglCCwxN5BoxEAVwDGRTB4K8=', '2019-07-06 17:08:50.020314', 0, 'ATP', '', '', '', 0, 1, '2019-07-06 17:08:49.555995', 0, 1),
	(29, 'pbkdf2_sha256$150000$TxMvjsX0YFab$jYhPS0r5vxTNYIij0KgT53krH203vPP9iqGs73j74Yg=', '2019-07-06 17:09:07.622887', 0, 'MSC', '', '', '', 0, 1, '2019-07-06 17:09:07.074193', 0, 1),
	(30, 'pbkdf2_sha256$150000$ai33RHN6tvHv$ZiFiGMOd13hhPgGNFum/5O6pavK+R6SWCwKEdhE8qNQ=', '2019-07-06 17:09:29.504902', 0, 'MMA', '', '', '', 0, 1, '2019-07-06 17:09:29.044830', 0, 1),
	(31, 'pbkdf2_sha256$150000$AYiUUkrfS0iB$0ClslyvTL2L5caA8pzjky5+cDLHZgrVa9qxQE8cjouE=', '2019-07-06 17:12:48.112112', 0, 'MER', '', '', '', 0, 1, '2019-07-06 17:12:47.519655', 0, 1),
	(32, 'pbkdf2_sha256$150000$etL3qcd5NvCt$CvmLAWgNifXGoJkoIGKMv0QkfhgZh+88sQBv699hy9E=', '2019-07-06 17:13:21.140688', 0, 'NMH', '', '', '', 0, 1, '2019-07-06 17:13:20.386503', 0, 1),
	(33, 'pbkdf2_sha256$150000$EZjqiPHOGVPb$P8bHLOOm/nufm6DYSALOpS4PfMamJYZ9VK6Kr9blJI0=', '2019-07-06 17:13:30.223663', 0, 'SH', '', '', '', 0, 1, '2019-07-06 17:13:29.810478', 0, 1),
	(34, 'pbkdf2_sha256$150000$mQct8zhtdXng$opUqhFX9Ts9I17ps1rvOrJkuzqc79J+FzG4aOsai1G8=', '2019-07-06 17:13:41.672040', 0, 'MR', '', '', '', 0, 1, '2019-07-06 17:13:41.199917', 0, 1),
	(35, 'pbkdf2_sha256$150000$GfMdgGpDzihw$z9GRIg0yuNr8EZGeXBi9BF2zdeLoJDOhjt8DIlnqVT8=', '2019-07-06 17:14:01.813895', 0, 'MSR', '', '', '', 0, 1, '2019-07-06 17:14:01.208479', 0, 1),
	(36, 'pbkdf2_sha256$150000$mET5D39yZ5QL$+yT2EbH5GSkTatOIOfCMIhXSiPN09UOlg2gIUKjvbeo=', '2019-07-06 17:14:19.097805', 0, 'MSK', '', '', '', 0, 1, '2019-07-06 17:14:18.543284', 0, 1),
	(38, 'pbkdf2_sha256$150000$3JQJrHK3IVXg$yHbNwcs9c9YjfTJoGcOZ/pGsX1J1Twu3SLtB088HWX8=', '2019-07-06 17:14:40.913268', 0, 'MSQ', '', '', '', 0, 1, '2019-07-06 17:14:40.335533', 0, 1),
	(39, 'pbkdf2_sha256$150000$RS6tpMvh5Vuf$Kybgo/pxtWsTrELRdWuQGF7+VRGk7KkDo6VLI5qtpvM=', '2019-07-06 17:15:13.581515', 0, 'MZR', '', '', '', 0, 1, '2019-07-06 17:15:12.960208', 0, 1),
	(40, 'pbkdf2_sha256$150000$Gt63s9qYkgQD$jDQMEqu8F2nc5Rma4LtY1kbgc2So8JG4+TmCxcJNVbs=', '2019-07-06 17:15:33.085498', 0, 'MZA', '', '', '', 0, 1, '2019-07-06 17:15:32.642682', 0, 1),
	(41, 'pbkdf2_sha256$150000$MRLYaNyGW0cL$nLrvdYCaX+NpcQk74vvXaUFIfRoIgX2VBrmx81R8c9Y=', '2019-07-06 17:15:56.340017', 0, 'MZH', '', '', '', 0, 1, '2019-07-06 17:15:55.537196', 0, 1),
	(42, 'pbkdf2_sha256$150000$9lrmKrVyDNkV$gTU0vv1rTwAJcvmlWNemHNGtLglnSleTR4MnVgpBkzM=', '2019-07-06 17:19:12.510588', 0, 'MZK', '', '', '', 0, 1, '2019-07-06 17:19:11.885721', 0, 1),
	(43, 'pbkdf2_sha256$150000$KbYDhu9a9LeC$nUSvir/2jRMIq6NxZuArA0MNLuGC8hG9vhgK7IZ1C4Q=', '2019-07-06 17:19:53.410775', 0, 'MSA', '', '', '', 0, 1, '2019-07-06 17:19:52.810324', 0, 1),
	(44, 'pbkdf2_sha256$150000$MxlElKmsQ5IS$9uvnRTMP0BuhfVyYtJPK1Z4hBmhbQ14jH+TCkzDswng=', '2019-07-06 17:22:44.825690', 0, 'MSO', '', '', '', 0, 1, '2019-07-06 17:22:44.370735', 0, 1),
	(45, 'pbkdf2_sha256$150000$GhKBRYMHgwgA$E7UHmNhk7IF0LnPJN7xr0ZgT/A1wzuCKVY+PM9YnSkU=', '2019-07-06 17:23:12.536430', 0, 'MST', '', '', '', 0, 1, '2019-07-06 17:23:11.645979', 0, 1),
	(46, 'pbkdf2_sha256$150000$tZugiTZWbhZh$dbciNv6Coj0gckfaY2AKFQCgpwweFDjrXVVZVVD3L2M=', '2019-07-06 17:23:31.611979', 0, 'MSP', '', '', '', 0, 1, '2019-07-06 17:23:31.158771', 0, 1),
	(47, 'pbkdf2_sha256$150000$Nzn55t4jGdTB$ExbueZf7tdjRGAixzCSy3AtTC48sSC8Kn937Odv/LyY=', '2019-07-06 17:23:52.558030', 0, '2016331021', '', '', '', 0, 1, '2019-07-06 17:23:52.056253', 1, 0),
	(48, 'pbkdf2_sha256$150000$5YboJsY0dkxa$w38MIi8bpwu9fIgb48AjCk/I/8GQhcLr2BViiBNBfSU=', '2019-07-07 01:05:47.140763', 0, '2016331022', '', '', '', 0, 1, '2019-07-06 17:24:09.169654', 0, 1),
	(50, 'pbkdf2_sha256$150000$qW8JouKew4dt$vM4v1OGJEhjZ0LvDz5Iiu2gQuLl1j7Y2uh7Jl6T51Js=', '2019-07-06 17:24:46.536431', 0, '2016331023', '', '', '', 0, 1, '2019-07-06 17:24:46.051698', 1, 0),
	(51, 'pbkdf2_sha256$150000$EuGXGn9XGAml$FiWeC/AGir0lt7yWGCffsCWGqd9HR5vDiatJUxsu88w=', '2019-07-06 17:25:00.650213', 0, '2016331024', '', '', '', 0, 1, '2019-07-06 17:24:59.997241', 1, 0),
	(52, 'pbkdf2_sha256$150000$HHI9jdTqckor$d3j2cg+pe0fsqjRWknPNCOQsQfvdSBd7Mvkh9t6jJlY=', '2019-07-06 17:25:17.014551', 0, '2016331025', '', '', '', 0, 1, '2019-07-06 17:25:16.503059', 1, 0),
	(53, 'pbkdf2_sha256$150000$GLdreVPmgzX0$h5Ze9T4c5wnS7F1r7k4IBvokEqurJbUrWYxY9OZVYjY=', '2019-07-06 17:25:38.702947', 0, '2016331026', '', '', '', 0, 1, '2019-07-06 17:25:38.119063', 1, 0),
	(54, 'pbkdf2_sha256$150000$Lh09iLnGB1Mf$Hy4e+lvmO7VspdEojNQ7DOLlYs6CnJiTL13hL6C5Ap0=', '2019-07-06 17:25:53.791913', 0, '2016331027', '', '', '', 0, 1, '2019-07-06 17:25:53.357289', 1, 0),
	(55, 'pbkdf2_sha256$150000$pYpahk9JDxdD$fydVHzUOQpAhP5rKWlaC5TxwR7OmvrmPgR7wHAu3m38=', '2019-07-06 17:26:05.920663', 0, '2016331028', '', '', '', 0, 1, '2019-07-06 17:26:05.147089', 1, 0),
	(56, 'pbkdf2_sha256$150000$x6tqXQWRjOl6$d/EnqLe2T1Ke9q4/jSk19isU4zOJdzODUZv7ZcDMbiA=', '2019-07-06 17:26:22.247990', 0, '2016331029', '', '', '', 0, 1, '2019-07-06 17:26:21.764297', 1, 0),
	(57, 'pbkdf2_sha256$150000$iouv7jDGrmoa$u9yP5rWR+fIfjPcYcKijliEoGY2Vk7v7zQ4xjz6YiHY=', '2019-07-06 17:26:39.335085', 0, '2016331030', '', '', '', 0, 1, '2019-07-06 17:26:38.639518', 1, 0),
	(58, 'pbkdf2_sha256$150000$yIrNhjOQDzsV$Stz+Y5meSeMGvULl9FxKiTJh3kt5NSAIOP93e1qqW8c=', '2019-07-06 17:26:54.868655', 0, '2016331031', '', '', '', 0, 1, '2019-07-06 17:26:54.054833', 1, 0),
	(59, 'pbkdf2_sha256$150000$RHOHWQtFciN1$3neCsM3hag0tdK2f5relHIDY+5E1mM0RuyEI7AC5/S4=', '2019-07-06 17:27:13.751031', 0, '2016331032', '', '', '', 0, 1, '2019-07-06 17:27:13.281682', 1, 0),
	(60, 'pbkdf2_sha256$150000$N7DSv4sXZWXz$9jvQuZeSu15ii/0LBdiEGFE19cHmdemodUG6gEdx9Vs=', '2019-07-06 17:27:39.666483', 0, '2016331033', '', '', '', 0, 1, '2019-07-06 17:27:39.060190', 1, 0),
	(61, 'pbkdf2_sha256$150000$2JmD46gYVWQo$w+QQt7ox9n19yYHWToDTQzXpx+eCIjeRQF2at/FGVz4=', '2019-07-06 17:27:57.209137', 0, '2016331034', '', '', '', 0, 1, '2019-07-06 17:27:56.562065', 1, 0),
	(62, 'pbkdf2_sha256$150000$JfhP0YZ8gfaO$eGlNCXn7Zsk1tEhDG+0sTozyjYN7lCES7a38pXJAC20=', '2019-07-06 17:28:10.717203', 0, '2016331035', '', '', '', 0, 1, '2019-07-06 17:28:10.230415', 1, 0),
	(63, 'pbkdf2_sha256$150000$UWlys8hB1Jgw$VdlNglcgjNJ5cL5cXJwvNLCvXtsfCUFRWmqdUsDSfB4=', '2019-07-06 17:28:34.607770', 0, '2016331036', '', '', '', 0, 1, '2019-07-06 17:28:34.178315', 1, 0),
	(64, 'pbkdf2_sha256$150000$38i87pS83wSJ$b7bYurH1kXF+oXMQVvLk/sPAfX6MRLyGzwvC1DjuNbs=', '2019-07-06 17:28:51.132860', 0, '2016331037', '', '', '', 0, 1, '2019-07-06 17:28:50.649770', 1, 0),
	(65, 'pbkdf2_sha256$150000$XQLAPYdQQGBM$TZ/6ixe2K+KwSZiM/wcRp/xZxn5YVVrdl0J1ToiewqA=', '2019-07-06 17:29:03.557943', 0, '2016331038', '', '', '', 0, 1, '2019-07-06 17:29:03.006281', 1, 0),
	(66, 'pbkdf2_sha256$150000$lgIuHhe8KgGg$tY1iO+cgbRVMOI1k7YLRp/wLhrBYiKh/n2elZsqotcU=', '2019-07-06 17:29:16.886564', 0, '2016331039', '', '', '', 0, 1, '2019-07-06 17:29:16.422387', 1, 0),
	(67, 'pbkdf2_sha256$150000$gAjplYqgEcY5$o9SvBLi8xtT4xcllsTA+0N3yRVyMD+l6SmyWXjMAJQ8=', '2019-07-06 17:29:33.353586', 0, '2016331040', '', '', '', 0, 1, '2019-07-06 17:29:32.824239', 1, 0),
	(68, 'pbkdf2_sha256$150000$4Gn4x7fd4ViG$N6KIoWxXDh151x/ih0jNxO3julfOpyieSby6JwNpNTk=', '2019-07-06 17:29:47.376355', 0, '2016331041', '', '', '', 0, 1, '2019-07-06 17:29:46.837465', 1, 0),
	(69, 'pbkdf2_sha256$150000$hJx2FbQYNET8$M51ucQamcIPNGeO9a0c02n8dQfXR88OBLfPVVqTuXFk=', '2019-07-06 17:30:04.031057', 0, 'AAA', '', '', '', 0, 1, '2019-07-06 17:30:03.288603', 0, 1),
	(70, 'pbkdf2_sha256$150000$FGSQX0Y5QRfs$7eNSvvgdF8s9y1TwS243W21ELyYUafZ+UZy5qd9z6S8=', '2019-07-06 17:30:11.786235', 0, 'AAB', '', '', '', 0, 1, '2019-07-06 17:30:11.410136', 0, 1),
	(71, 'pbkdf2_sha256$150000$lkPSBchGYRGw$yzehgbzyOeFEfzAAHRF8SmpYsRiG6Vx6E5qPWiOgZRY=', '2019-07-06 17:30:21.171795', 0, 'AAC', '', '', '', 0, 1, '2019-07-06 17:30:20.781932', 0, 1),
	(72, 'pbkdf2_sha256$150000$6HmcmNROiC1C$7ImJXvQ0qUW4J77P1P7GD8O5R2kk+ny2RhNT0sLcKs4=', '2019-07-06 17:30:28.112737', 0, 'AAD', '', '', '', 0, 1, '2019-07-06 17:30:27.690868', 0, 1),
	(73, 'pbkdf2_sha256$150000$niYk2A3x6JKt$7CKGui4fgFuPipq3NfK0VOSh6y3EgLi03gj+Kyba7pw=', '2019-07-07 01:13:06.883377', 0, '201633111', '', '', '', 0, 1, '2019-07-07 01:11:30.209885', 1, 0),
	(74, 'pbkdf2_sha256$150000$Vni9sKgqCaZe$AMr7PWk3g0hNUB8iE6ZI9/IF9LPlCFyrxlJgfRXPmZQ=', '2019-07-07 01:13:50.375114', 0, 'rough', '', '', '', 0, 1, '2019-07-07 01:13:49.914305', 0, 1);
/*!40000 ALTER TABLE `accounts_user` ENABLE KEYS */;

-- Dumping structure for table teamssfc.accounts_user_groups
CREATE TABLE IF NOT EXISTS `accounts_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_user_groups_user_id_group_id_59c0b32f_uniq` (`user_id`,`group_id`),
  KEY `accounts_user_groups_group_id_bd11a704_fk_auth_group_id` (`group_id`),
  CONSTRAINT `accounts_user_groups_group_id_bd11a704_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `accounts_user_groups_user_id_52b62117_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table teamssfc.accounts_user_groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `accounts_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_user_groups` ENABLE KEYS */;

-- Dumping structure for table teamssfc.accounts_user_user_permissions
CREATE TABLE IF NOT EXISTS `accounts_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_user_user_permi_user_id_permission_id_2ab516c2_uniq` (`user_id`,`permission_id`),
  KEY `accounts_user_user_p_permission_id_113bb443_fk_auth_perm` (`permission_id`),
  CONSTRAINT `accounts_user_user_p_permission_id_113bb443_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `accounts_user_user_p_user_id_e4f0a161_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table teamssfc.accounts_user_user_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `accounts_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_user_user_permissions` ENABLE KEYS */;

-- Dumping structure for table teamssfc.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table teamssfc.auth_group: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Dumping structure for table teamssfc.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table teamssfc.auth_group_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Dumping structure for table teamssfc.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

-- Dumping data for table teamssfc.auth_permission: ~52 rows (approximately)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add content type', 4, 'add_contenttype'),
	(14, 'Can change content type', 4, 'change_contenttype'),
	(15, 'Can delete content type', 4, 'delete_contenttype'),
	(16, 'Can view content type', 4, 'view_contenttype'),
	(17, 'Can add session', 5, 'add_session'),
	(18, 'Can change session', 5, 'change_session'),
	(19, 'Can delete session', 5, 'delete_session'),
	(20, 'Can view session', 5, 'view_session'),
	(21, 'Can add user', 6, 'add_user'),
	(22, 'Can change user', 6, 'change_user'),
	(23, 'Can delete user', 6, 'delete_user'),
	(24, 'Can view user', 6, 'view_user'),
	(25, 'Can add student', 7, 'add_student'),
	(26, 'Can change student', 7, 'change_student'),
	(27, 'Can delete student', 7, 'delete_student'),
	(28, 'Can view student', 7, 'view_student'),
	(29, 'Can add teacher', 8, 'add_teacher'),
	(30, 'Can change teacher', 8, 'change_teacher'),
	(31, 'Can delete teacher', 8, 'delete_teacher'),
	(32, 'Can view teacher', 8, 'view_teacher'),
	(33, 'Can add course', 9, 'add_course'),
	(34, 'Can change course', 9, 'change_course'),
	(35, 'Can delete course', 9, 'delete_course'),
	(36, 'Can view course', 9, 'view_course'),
	(37, 'Can add offered course', 10, 'add_offeredcourse'),
	(38, 'Can change offered course', 10, 'change_offeredcourse'),
	(39, 'Can delete offered course', 10, 'delete_offeredcourse'),
	(40, 'Can view offered course', 10, 'view_offeredcourse'),
	(41, 'Can add team', 11, 'add_team'),
	(42, 'Can change team', 11, 'change_team'),
	(43, 'Can delete team', 11, 'delete_team'),
	(44, 'Can view team', 11, 'view_team'),
	(45, 'Can add task', 12, 'add_task'),
	(46, 'Can change task', 12, 'change_task'),
	(47, 'Can delete task', 12, 'delete_task'),
	(48, 'Can view task', 12, 'view_task'),
	(49, 'Can add task team', 13, 'add_taskteam'),
	(50, 'Can change task team', 13, 'change_taskteam'),
	(51, 'Can delete task team', 13, 'delete_taskteam'),
	(52, 'Can view task team', 13, 'view_taskteam');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Dumping structure for table teamssfc.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_accounts_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table teamssfc.django_admin_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Dumping structure for table teamssfc.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table teamssfc.django_content_type: ~13 rows (approximately)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(7, 'accounts', 'student'),
	(8, 'accounts', 'teacher'),
	(6, 'accounts', 'user'),
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'contenttypes', 'contenttype'),
	(9, 'others', 'course'),
	(10, 'others', 'offeredcourse'),
	(12, 'others', 'task'),
	(13, 'others', 'taskteam'),
	(11, 'others', 'team'),
	(5, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Dumping structure for table teamssfc.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- Dumping data for table teamssfc.django_migrations: ~25 rows (approximately)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2019-07-06 15:07:52.130829'),
	(2, 'contenttypes', '0002_remove_content_type_name', '2019-07-06 15:07:52.946209'),
	(3, 'auth', '0001_initial', '2019-07-06 15:07:53.715519'),
	(4, 'auth', '0002_alter_permission_name_max_length', '2019-07-06 15:07:57.663470'),
	(5, 'auth', '0003_alter_user_email_max_length', '2019-07-06 15:07:57.705605'),
	(6, 'auth', '0004_alter_user_username_opts', '2019-07-06 15:07:57.748434'),
	(7, 'auth', '0005_alter_user_last_login_null', '2019-07-06 15:07:57.792631'),
	(8, 'auth', '0006_require_contenttypes_0002', '2019-07-06 15:07:57.927754'),
	(9, 'auth', '0007_alter_validators_add_error_messages', '2019-07-06 15:07:57.988403'),
	(10, 'auth', '0008_alter_user_username_max_length', '2019-07-06 15:07:58.031950'),
	(11, 'auth', '0009_alter_user_last_name_max_length', '2019-07-06 15:07:58.067436'),
	(12, 'auth', '0010_alter_group_name_max_length', '2019-07-06 15:07:58.740408'),
	(13, 'auth', '0011_update_proxy_permissions', '2019-07-06 15:07:58.787265'),
	(14, 'accounts', '0001_initial', '2019-07-06 15:07:59.889073'),
	(15, 'admin', '0001_initial', '2019-07-06 15:08:06.021834'),
	(16, 'admin', '0002_logentry_remove_auto_add', '2019-07-06 15:08:07.966507'),
	(17, 'admin', '0003_logentry_add_action_flag_choices', '2019-07-06 15:08:08.012822'),
	(18, 'others', '0001_initial', '2019-07-06 15:08:08.716816'),
	(19, 'others', '0002_task_team', '2019-07-06 15:08:11.214861'),
	(20, 'others', '0003_auto_20190706_2009', '2019-07-06 15:08:14.950156'),
	(21, 'others', '0004_auto_20190706_2013', '2019-07-06 15:08:21.575918'),
	(22, 'others', '0005_auto_20190706_2014', '2019-07-06 15:08:23.603752'),
	(23, 'sessions', '0001_initial', '2019-07-06 15:08:24.009965'),
	(24, 'others', '0002_auto_20190707_0514', '2019-07-06 23:15:04.192865'),
	(25, 'others', '0003_auto_20190707_0600', '2019-07-07 00:00:39.426704');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Dumping structure for table teamssfc.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table teamssfc.django_session: ~3 rows (approximately)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('6h7dkl3t3xgk9d2s296o7u7zlhphay0z', 'YWVlYmQxOGY3MzFjMDgyMzAyYmZhOWFkNDhkZDU4YTJhYmQ3ZDg4ZDp7Il9hdXRoX3VzZXJfaWQiOiIyMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzU3NDdkMDJjZGFhMWRmNDVkZmQ0Mzk3NzY3ODlhODJmYTE3OGIyNyJ9', '2019-07-24 18:13:30.478489'),
	('80qrky8gtf2as72mhwbfvud9hd14a42h', 'ZDU2ZjljZGZjMWNlODE3NjJiNDM5ZWFhZmFkZThkZGQ0ZGNjZjYxNzp7Il9hdXRoX3VzZXJfaWQiOiI0OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGU2ODMyZGJiMDE4NDE5Y2EwMDVkMGUzZGI4OTdkOWUyZTRlZGE0YyJ9', '2019-07-20 17:24:09.886657'),
	('xnt4yxod7oqv6or0yvol7mrv1bziilkh', 'NWQyN2NlMGMzOTIyMGZlYzViZDM5YWI3ODZlMWQ5YWM5YjYxMDZlOTp7Il9hdXRoX3VzZXJfaWQiOiIzNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMmE2NzQ3OWFlMTM0MGRiYWU1OWZiY2E5NWFkMzMxMzk4Y2M0OWU4OSJ9', '2019-07-20 17:14:19.199861');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Dumping structure for table teamssfc.others_course
CREATE TABLE IF NOT EXISTS `others_course` (
  `course_id` varchar(6) NOT NULL,
  `course_name` varchar(50) DEFAULT NULL,
  `credit` double DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table teamssfc.others_course: ~10 rows (approximately)
/*!40000 ALTER TABLE `others_course` DISABLE KEYS */;
INSERT INTO `others_course` (`course_id`, `course_name`, `credit`) VALUES
	('CSE133', 'Structured Programming', 3),
	('CSE134', 'Structured Programming Lab', 3),
	('CSE150', 'Project', 1.5),
	('CSE250', 'Project', 1),
	('CSE333', 'Database', 3),
	('CSE334', 'Database Lab', 3),
	('CSE350', 'Project', 3),
	('CSE351', 'MIS', 3),
	('CSE364', 'Micro', 3),
	('CSE365', 'Micro Lab', 1);
/*!40000 ALTER TABLE `others_course` ENABLE KEYS */;

-- Dumping structure for table teamssfc.others_offeredcourse
CREATE TABLE IF NOT EXISTS `others_offeredcourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `offered_course_id_id` varchar(6) NOT NULL,
  `teachers_code_id` int(11) DEFAULT NULL,
  `is_expired` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `others_offeredcourse_teachers_code_id_33353cf0_fk_accounts_` (`teachers_code_id`),
  KEY `others_offeredcourse_offered_course_id_id_35ac95f5` (`offered_course_id_id`),
  CONSTRAINT `others_offeredcourse_offered_course_id_id_35ac95f5_fk_others_co` FOREIGN KEY (`offered_course_id_id`) REFERENCES `others_course` (`course_id`),
  CONSTRAINT `others_offeredcourse_teachers_code_id_33353cf0_fk_accounts_` FOREIGN KEY (`teachers_code_id`) REFERENCES `accounts_teacher` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- Dumping data for table teamssfc.others_offeredcourse: ~7 rows (approximately)
/*!40000 ALTER TABLE `others_offeredcourse` DISABLE KEYS */;
INSERT INTO `others_offeredcourse` (`id`, `offered_course_id_id`, `teachers_code_id`, `is_expired`) VALUES
	(1, 'CSE333', 23, 0),
	(2, 'CSE334', 24, 0),
	(3, 'CSE250', 25, 0),
	(4, 'CSE364', 25, 0),
	(5, 'CSE365', 26, 1),
	(23, 'CSE350', 23, 0),
	(24, 'CSE365', 23, 0),
	(25, 'CSE351', 23, 0);
/*!40000 ALTER TABLE `others_offeredcourse` ENABLE KEYS */;

-- Dumping structure for table teamssfc.others_task
CREATE TABLE IF NOT EXISTS `others_task` (
  `task_id` varchar(50) NOT NULL,
  `deadline` datetime(6) DEFAULT NULL,
  `course_id_id` int(11) DEFAULT NULL,
  `task_description` varchar(1000) DEFAULT NULL,
  `referrence` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`task_id`),
  KEY `others_task_course_id_id_0c9f98b3_fk_others_offeredcourse_id` (`course_id_id`),
  CONSTRAINT `others_task_course_id_id_0c9f98b3_fk_others_offeredcourse_id` FOREIGN KEY (`course_id_id`) REFERENCES `others_offeredcourse` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table teamssfc.others_task: ~4 rows (approximately)
/*!40000 ALTER TABLE `others_task` DISABLE KEYS */;
INSERT INTO `others_task` (`task_id`, `deadline`, `course_id_id`, `task_description`, `referrence`) VALUES
	('T01', '2019-07-07 02:22:05.000000', 7, NULL, NULL),
	('T02', '2019-07-07 04:22:25.000000', 2, NULL, NULL),
	('T03', '2019-07-07 06:23:22.000000', 23, NULL, NULL),
	('T04', '2019-07-07 11:31:22.000000', 23, NULL, NULL),
	('T05', '2019-07-07 11:35:08.000000', 23, NULL, NULL);
/*!40000 ALTER TABLE `others_task` ENABLE KEYS */;

-- Dumping structure for table teamssfc.others_taskteam
CREATE TABLE IF NOT EXISTS `others_taskteam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `files` varchar(50) DEFAULT NULL,
  `task_id_id` varchar(50) DEFAULT NULL,
  `team_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `others_taskteam_task_id_id_9e034e0a_fk_others_task_task_id` (`task_id_id`),
  KEY `others_taskteam_team_id_id_24215d10_fk_others_team_id` (`team_id_id`),
  CONSTRAINT `others_taskteam_task_id_id_9e034e0a_fk_others_task_task_id` FOREIGN KEY (`task_id_id`) REFERENCES `others_task` (`task_id`),
  CONSTRAINT `others_taskteam_team_id_id_24215d10_fk_others_team_id` FOREIGN KEY (`team_id_id`) REFERENCES `others_team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table teamssfc.others_taskteam: ~3 rows (approximately)
/*!40000 ALTER TABLE `others_taskteam` DISABLE KEYS */;
INSERT INTO `others_taskteam` (`id`, `files`, `task_id_id`, `team_id_id`) VALUES
	(1, NULL, 'T03', 1),
	(2, NULL, 'T03', 1),
	(3, NULL, 'T04', 6);
/*!40000 ALTER TABLE `others_taskteam` ENABLE KEYS */;

-- Dumping structure for table teamssfc.others_team
CREATE TABLE IF NOT EXISTS `others_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(50) DEFAULT NULL,
  `course_id_id` int(11) DEFAULT NULL,
  `student_id_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `others_team_course_id_id_89017910_fk_others_offeredcourse_id` (`course_id_id`),
  KEY `FK_others_team_accounts_student` (`student_id_id`),
  CONSTRAINT `FK_others_team_accounts_student` FOREIGN KEY (`student_id_id`) REFERENCES `accounts_student` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_others_team_others_offeredcourse` FOREIGN KEY (`course_id_id`) REFERENCES `others_offeredcourse` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table teamssfc.others_team: ~2 rows (approximately)
/*!40000 ALTER TABLE `others_team` DISABLE KEYS */;
INSERT INTO `others_team` (`id`, `team_name`, `course_id_id`, `student_id_id`) VALUES
	(1, 'rough_neck', 23, 3),
	(5, 'qq', 2, 3),
	(6, 'team2', 23, 6);
/*!40000 ALTER TABLE `others_team` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
