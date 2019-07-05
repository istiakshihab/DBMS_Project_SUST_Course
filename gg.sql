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
CREATE DATABASE IF NOT EXISTS `teamssfc` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `teamssfc`;

-- Dumping structure for table teamssfc.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Data exporting was unselected.
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Data exporting was unselected.
-- Dumping structure for table teamssfc.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Data exporting was unselected.
-- Dumping structure for table teamssfc.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Data exporting was unselected.
-- Dumping structure for table teamssfc.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Data exporting was unselected.
-- Dumping structure for table teamssfc.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Data exporting was unselected.
-- Dumping structure for table teamssfc.course
CREATE TABLE IF NOT EXISTS `course` (
  `CourseID` varchar(6) COLLATE utf8_bin NOT NULL,
  `Course Name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Credit` float DEFAULT NULL,
  PRIMARY KEY (`CourseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Data exporting was unselected.
-- Dumping structure for table teamssfc.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_bin,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Data exporting was unselected.
-- Dumping structure for table teamssfc.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Data exporting was unselected.
-- Dumping structure for table teamssfc.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Data exporting was unselected.
-- Dumping structure for table teamssfc.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Data exporting was unselected.
-- Dumping structure for table teamssfc.offeredcourse
CREATE TABLE IF NOT EXISTS `offeredcourse` (
  `Offered Course ID` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `Teachers Code` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  KEY `Offered Course ID` (`Offered Course ID`),
  KEY `Teachers Code` (`Teachers Code`),
  CONSTRAINT `Offered Course ID` FOREIGN KEY (`Offered Course ID`) REFERENCES `course` (`CourseID`),
  CONSTRAINT `Teachers Code` FOREIGN KEY (`Teachers Code`) REFERENCES `teacher` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Data exporting was unselected.
-- Dumping structure for table teamssfc.student
CREATE TABLE IF NOT EXISTS `student` (
  `FirstName` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `LastName` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ContactNumber` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `RegistrationNumber` varchar(10) COLLATE utf8_bin NOT NULL,
  `Session` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Username` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`RegistrationNumber`),
  KEY `Students Username` (`Username`),
  CONSTRAINT `Students Username` FOREIGN KEY (`Username`) REFERENCES `users` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Data exporting was unselected.
-- Dumping structure for table teamssfc.task
CREATE TABLE IF NOT EXISTS `task` (
  `TaskID` varchar(50) COLLATE utf8_bin NOT NULL,
  `Start Date` datetime DEFAULT NULL,
  `Deadline` datetime DEFAULT NULL,
  `CourseID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`TaskID`),
  KEY `Course ID` (`CourseID`),
  CONSTRAINT `Course ID` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Data exporting was unselected.
-- Dumping structure for table teamssfc.task-team
CREATE TABLE IF NOT EXISTS `task-team` (
  `TaskID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `TeamID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Due Date` timestamp NULL DEFAULT NULL,
  `Files` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  KEY `Task ID` (`TaskID`),
  KEY `Team ID` (`TeamID`),
  CONSTRAINT `Task ID` FOREIGN KEY (`TaskID`) REFERENCES `task` (`TaskID`),
  CONSTRAINT `Team ID` FOREIGN KEY (`TeamID`) REFERENCES `team` (`TeamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Data exporting was unselected.
-- Dumping structure for table teamssfc.teacher
CREATE TABLE IF NOT EXISTS `teacher` (
  `First Name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Last Name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Designation` enum('Prof','Assoc','Assist','Lect') COLLATE utf8_bin DEFAULT NULL,
  `Code` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `Contact` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `Username` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  UNIQUE KEY `Code` (`Code`),
  KEY `Teachers Username` (`Username`),
  CONSTRAINT `Teachers Username` FOREIGN KEY (`Username`) REFERENCES `users` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Data exporting was unselected.
-- Dumping structure for table teamssfc.team
CREATE TABLE IF NOT EXISTS `team` (
  `TeamID` varchar(10) COLLATE utf8_bin NOT NULL,
  `Team Name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Course ID` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`TeamID`),
  KEY `Team Course ID` (`Course ID`),
  CONSTRAINT `Team Course ID` FOREIGN KEY (`Course ID`) REFERENCES `offeredcourse` (`Offered Course ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Data exporting was unselected.
-- Dumping structure for table teamssfc.team_student
CREATE TABLE IF NOT EXISTS `team_student` (
  `Team ID` varchar(10) COLLATE utf8_bin,
  `RegistrationNumber` varchar(10) COLLATE utf8_bin,
  KEY `Team Student ID` (`Team ID`),
  KEY `Registration Number` (`RegistrationNumber`),
  CONSTRAINT `FK_team_student_student` FOREIGN KEY (`RegistrationNumber`) REFERENCES `student` (`RegistrationNumber`),
  CONSTRAINT `Team Student ID` FOREIGN KEY (`Team ID`) REFERENCES `team` (`TeamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Data exporting was unselected.
-- Dumping structure for table teamssfc.users
CREATE TABLE IF NOT EXISTS `users` (
  `Username` varchar(50) COLLATE utf8_bin NOT NULL,
  `Pasword` varchar(50) COLLATE utf8_bin NOT NULL,
  `Type` enum('S','T') COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
