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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table teamssfc.auth_group_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

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

-- Dumping data for table teamssfc.auth_permission: ~100 rows (approximately)
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
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add auth group', 7, 'add_authgroup'),
	(26, 'Can change auth group', 7, 'change_authgroup'),
	(27, 'Can delete auth group', 7, 'delete_authgroup'),
	(28, 'Can view auth group', 7, 'view_authgroup'),
	(29, 'Can add auth group permissions', 8, 'add_authgrouppermissions'),
	(30, 'Can change auth group permissions', 8, 'change_authgrouppermissions'),
	(31, 'Can delete auth group permissions', 8, 'delete_authgrouppermissions'),
	(32, 'Can view auth group permissions', 8, 'view_authgrouppermissions'),
	(33, 'Can add auth permission', 9, 'add_authpermission'),
	(34, 'Can change auth permission', 9, 'change_authpermission'),
	(35, 'Can delete auth permission', 9, 'delete_authpermission'),
	(36, 'Can view auth permission', 9, 'view_authpermission'),
	(37, 'Can add auth user', 10, 'add_authuser'),
	(38, 'Can change auth user', 10, 'change_authuser'),
	(39, 'Can delete auth user', 10, 'delete_authuser'),
	(40, 'Can view auth user', 10, 'view_authuser'),
	(41, 'Can add auth user groups', 11, 'add_authusergroups'),
	(42, 'Can change auth user groups', 11, 'change_authusergroups'),
	(43, 'Can delete auth user groups', 11, 'delete_authusergroups'),
	(44, 'Can view auth user groups', 11, 'view_authusergroups'),
	(45, 'Can add auth user user permissions', 12, 'add_authuseruserpermissions'),
	(46, 'Can change auth user user permissions', 12, 'change_authuseruserpermissions'),
	(47, 'Can delete auth user user permissions', 12, 'delete_authuseruserpermissions'),
	(48, 'Can view auth user user permissions', 12, 'view_authuseruserpermissions'),
	(49, 'Can add course', 13, 'add_course'),
	(50, 'Can change course', 13, 'change_course'),
	(51, 'Can delete course', 13, 'delete_course'),
	(52, 'Can view course', 13, 'view_course'),
	(53, 'Can add django admin log', 14, 'add_djangoadminlog'),
	(54, 'Can change django admin log', 14, 'change_djangoadminlog'),
	(55, 'Can delete django admin log', 14, 'delete_djangoadminlog'),
	(56, 'Can view django admin log', 14, 'view_djangoadminlog'),
	(57, 'Can add django content type', 15, 'add_djangocontenttype'),
	(58, 'Can change django content type', 15, 'change_djangocontenttype'),
	(59, 'Can delete django content type', 15, 'delete_djangocontenttype'),
	(60, 'Can view django content type', 15, 'view_djangocontenttype'),
	(61, 'Can add django migrations', 16, 'add_djangomigrations'),
	(62, 'Can change django migrations', 16, 'change_djangomigrations'),
	(63, 'Can delete django migrations', 16, 'delete_djangomigrations'),
	(64, 'Can view django migrations', 16, 'view_djangomigrations'),
	(65, 'Can add django session', 17, 'add_djangosession'),
	(66, 'Can change django session', 17, 'change_djangosession'),
	(67, 'Can delete django session', 17, 'delete_djangosession'),
	(68, 'Can view django session', 17, 'view_djangosession'),
	(69, 'Can add offeredcourse', 18, 'add_offeredcourse'),
	(70, 'Can change offeredcourse', 18, 'change_offeredcourse'),
	(71, 'Can delete offeredcourse', 18, 'delete_offeredcourse'),
	(72, 'Can view offeredcourse', 18, 'view_offeredcourse'),
	(73, 'Can add student', 19, 'add_student'),
	(74, 'Can change student', 19, 'change_student'),
	(75, 'Can delete student', 19, 'delete_student'),
	(76, 'Can view student', 19, 'view_student'),
	(77, 'Can add task', 20, 'add_task'),
	(78, 'Can change task', 20, 'change_task'),
	(79, 'Can delete task', 20, 'delete_task'),
	(80, 'Can view task', 20, 'view_task'),
	(81, 'Can add task team', 21, 'add_taskteam'),
	(82, 'Can change task team', 21, 'change_taskteam'),
	(83, 'Can delete task team', 21, 'delete_taskteam'),
	(84, 'Can view task team', 21, 'view_taskteam'),
	(85, 'Can add teacher', 22, 'add_teacher'),
	(86, 'Can change teacher', 22, 'change_teacher'),
	(87, 'Can delete teacher', 22, 'delete_teacher'),
	(88, 'Can view teacher', 22, 'view_teacher'),
	(89, 'Can add team', 23, 'add_team'),
	(90, 'Can change team', 23, 'change_team'),
	(91, 'Can delete team', 23, 'delete_team'),
	(92, 'Can view team', 23, 'view_team'),
	(93, 'Can add team student', 24, 'add_teamstudent'),
	(94, 'Can change team student', 24, 'change_teamstudent'),
	(95, 'Can delete team student', 24, 'delete_teamstudent'),
	(96, 'Can view team student', 24, 'view_teamstudent'),
	(97, 'Can add users', 25, 'add_users'),
	(98, 'Can change users', 25, 'change_users'),
	(99, 'Can delete users', 25, 'delete_users'),
	(100, 'Can view users', 25, 'view_users');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

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

-- Dumping data for table teamssfc.auth_user: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$150000$5CTNfMa5PWCd$m6LduD/Ao/lQg7yp8oBr19n2HuIaxRKM+/R2dcwuBiA=', '2019-07-04 16:51:39.177043', 1, 'teamssfc', '', '', '', 1, 1, '2019-07-03 16:57:23.940468');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

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

-- Dumping data for table teamssfc.auth_user_groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

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

-- Dumping data for table teamssfc.auth_user_user_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Dumping structure for table teamssfc.course
CREATE TABLE IF NOT EXISTS `course` (
  `CourseID` varchar(6) COLLATE utf8_bin NOT NULL,
  `Course Name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Credit` float DEFAULT NULL,
  PRIMARY KEY (`CourseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table teamssfc.course: ~10 rows (approximately)
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` (`CourseID`, `Course Name`, `Credit`) VALUES
	('CSE234', 'OOP Lab', 2),
	('CSE240', 'Algo', 2),
	('CSE250', 'Project', 1),
	('CSE334', 'DBMS', 3),
	('CSE366', 'Datacom', 1.5),
	('CSE368', 'Micro', 1.5),
	('CSE374', 'Graphics', 1.5),
	('CSE468', 'VLSI', 1.5),
	('CSE474', 'NLP', 1.5),
	('EEE202', 'DLD', 2);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;

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

-- Dumping data for table teamssfc.django_admin_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Dumping structure for table teamssfc.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table teamssfc.django_content_type: ~25 rows (approximately)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(7, 'accounts', 'authgroup'),
	(8, 'accounts', 'authgrouppermissions'),
	(9, 'accounts', 'authpermission'),
	(10, 'accounts', 'authuser'),
	(11, 'accounts', 'authusergroups'),
	(12, 'accounts', 'authuseruserpermissions'),
	(13, 'accounts', 'course'),
	(14, 'accounts', 'djangoadminlog'),
	(15, 'accounts', 'djangocontenttype'),
	(16, 'accounts', 'djangomigrations'),
	(17, 'accounts', 'djangosession'),
	(18, 'accounts', 'offeredcourse'),
	(19, 'accounts', 'student'),
	(20, 'accounts', 'task'),
	(21, 'accounts', 'taskteam'),
	(22, 'accounts', 'teacher'),
	(23, 'accounts', 'team'),
	(24, 'accounts', 'teamstudent'),
	(25, 'accounts', 'users'),
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Dumping structure for table teamssfc.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table teamssfc.django_migrations: ~17 rows (approximately)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2019-07-03 16:51:42.662700'),
	(2, 'auth', '0001_initial', '2019-07-03 16:51:44.607496'),
	(3, 'admin', '0001_initial', '2019-07-03 16:51:55.424561'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2019-07-03 16:51:57.160916'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-07-03 16:51:57.221755'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2019-07-03 16:51:58.451466'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2019-07-03 16:51:59.685164'),
	(8, 'auth', '0003_alter_user_email_max_length', '2019-07-03 16:52:00.974716'),
	(9, 'auth', '0004_alter_user_username_opts', '2019-07-03 16:52:01.028570'),
	(10, 'auth', '0005_alter_user_last_login_null', '2019-07-03 16:52:01.553170'),
	(11, 'auth', '0006_require_contenttypes_0002', '2019-07-03 16:52:01.585083'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2019-07-03 16:52:01.625973'),
	(13, 'auth', '0008_alter_user_username_max_length', '2019-07-03 16:52:02.296181'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2019-07-03 16:52:03.229682'),
	(15, 'auth', '0010_alter_group_name_max_length', '2019-07-03 16:52:04.903206'),
	(16, 'auth', '0011_update_proxy_permissions', '2019-07-03 16:52:05.438773'),
	(17, 'sessions', '0001_initial', '2019-07-03 16:52:08.043805'),
	(18, 'accounts', '0001_initial', '2019-07-03 17:11:33.331321'),
	(19, 'accounts', '0002_auto_20190703_2316', '2019-07-03 17:16:56.370158'),
	(20, 'accounts', '0003_auto_20190703_2318', '2019-07-03 17:18:48.981909');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Dumping structure for table teamssfc.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table teamssfc.django_session: ~1 rows (approximately)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Dumping structure for table teamssfc.offeredcourse
CREATE TABLE IF NOT EXISTS `offeredcourse` (
  `Offered Course ID` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `Teachers Code` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  KEY `Offered Course ID` (`Offered Course ID`),
  KEY `Teachers Code` (`Teachers Code`),
  CONSTRAINT `Offered Course ID` FOREIGN KEY (`Offered Course ID`) REFERENCES `course` (`CourseID`),
  CONSTRAINT `Teachers Code` FOREIGN KEY (`Teachers Code`) REFERENCES `teacher` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table teamssfc.offeredcourse: ~10 rows (approximately)
/*!40000 ALTER TABLE `offeredcourse` DISABLE KEYS */;
INSERT INTO `offeredcourse` (`Offered Course ID`, `Teachers Code`) VALUES
	('CSE234', 'MSI'),
	('CSE240', 'MA'),
	('CSE250', 'SH'),
	('EEE202', 'MR'),
	('CSE366', 'SNM'),
	('CSE368', 'MZR'),
	('CSE334', 'EH'),
	('CSE374', 'BPC'),
	('CSE468', 'AT'),
	('CSE474', 'SI');
/*!40000 ALTER TABLE `offeredcourse` ENABLE KEYS */;

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

-- Dumping data for table teamssfc.student: ~10 rows (approximately)
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`FirstName`, `LastName`, `ContactNumber`, `RegistrationNumber`, `Session`, `Username`) VALUES
	('Shifath', 'Rahman', '01726263239', '2016331001', '2016', 'Shifath420533'),
	('Mishkat', 'Mustafa', '01732358930', '2016331018', '2016', 'Mustafa01'),
	('Firoz', 'Ahmed', '01853333296', '2016331022', '2016', 'firzoM'),
	('Sowmen', 'Das', '01865432164', '2016331055', '2016', 'sowmen22'),
	('Dipta', 'Rahman', '01726671715', '2016331074', '2016', 'dipta29'),
	('Souvik', 'Roy', '01515217840', '2016331075', '2016', 'shouvik075'),
	('Faruk', 'Ahmed', '01932423574', '2017331009', '2017', 'ahamedf'),
	('Zubair', 'Ahmed', '01621385789', '2017331023', '2017', 'rafirafi'),
	('Salehin', 'Ahmed', '01549539333', '2017331053', '2017', 'saleh123'),
	('Tirtha', 'Roy', '01708521763', '2017331075', '2017', 'tirtha29');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

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

-- Dumping data for table teamssfc.task: ~0 rows (approximately)
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` (`TaskID`, `Start Date`, `Deadline`, `CourseID`) VALUES
	('T0012', '2019-10-11 11:27:50', '2019-10-23 11:28:36', NULL);
/*!40000 ALTER TABLE `task` ENABLE KEYS */;

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

-- Dumping data for table teamssfc.task-team: ~0 rows (approximately)
/*!40000 ALTER TABLE `task-team` DISABLE KEYS */;
/*!40000 ALTER TABLE `task-team` ENABLE KEYS */;

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

-- Dumping data for table teamssfc.teacher: ~10 rows (approximately)
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` (`First Name`, `Last Name`, `Designation`, `Code`, `Contact`, `Username`) VALUES
	('Saiful', 'Islam', 'Assoc', 'MSI', '01708521763', 'saif01'),
	('Masum', 'Ahmed', 'Assoc', 'MA', '01836525926', 'masum01'),
	('Summit', 'Haque', 'Lect', 'SH', '01563245939', 'summith'),
	('Moqsadur', 'Rahman', 'Lect', 'MR', '01935463547', 'moqsad1'),
	('Nabil', 'Mohammad', 'Assoc', 'SNM', '01834635131', 'nabil48'),
	('Mahfuzur', 'Rahman', 'Assist', 'MZR', '01593413365', 'mahfuzA'),
	('Enam', 'Hassan', 'Lect', 'EH', '01932484873', 'enam11'),
	('Biswapriyo', 'Chakrobarty', 'Assoc', 'BPC', '01713241195', 'biswapriyo'),
	('Ayesha', 'Tasnim', 'Assoc', 'AT', '01932465344', 'aishatasnim'),
	('Sabir', 'Ismail', 'Assoc', 'SI', '01813352435', 'sabir_99');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;

-- Dumping structure for table teamssfc.team
CREATE TABLE IF NOT EXISTS `team` (
  `TeamID` varchar(10) COLLATE utf8_bin NOT NULL,
  `Team Name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Course ID` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`TeamID`),
  KEY `Team Course ID` (`Course ID`),
  CONSTRAINT `Team Course ID` FOREIGN KEY (`Course ID`) REFERENCES `offeredcourse` (`Offered Course ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table teamssfc.team: ~5 rows (approximately)
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` (`TeamID`, `Team Name`, `Course ID`) VALUES
	('team001', 'Team SSFC', 'CSE334'),
	('team002', 'SUST_Rockerzz', 'CSE334'),
	('team003', 'Team Underdogs', 'CSE334'),
	('team004', 'Team Awesome', 'CSE334'),
	('team005', 'Team Fatman', 'CSE374');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;

-- Dumping structure for table teamssfc.team_student
CREATE TABLE IF NOT EXISTS `team_student` (
  `Team ID` varchar(10) COLLATE utf8_bin,
  `RegistrationNumber` varchar(10) COLLATE utf8_bin,
  KEY `Team Student ID` (`Team ID`),
  KEY `Registration Number` (`RegistrationNumber`),
  CONSTRAINT `FK_team_student_student` FOREIGN KEY (`RegistrationNumber`) REFERENCES `student` (`RegistrationNumber`),
  CONSTRAINT `Team Student ID` FOREIGN KEY (`Team ID`) REFERENCES `team` (`TeamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table teamssfc.team_student: ~10 rows (approximately)
/*!40000 ALTER TABLE `team_student` DISABLE KEYS */;
INSERT INTO `team_student` (`Team ID`, `RegistrationNumber`) VALUES
	('team001', '2016331001'),
	('team001', '2016331075'),
	('team002', '2016331055'),
	('team002', '2016331074'),
	('team003', '2017331009'),
	('team003', '2017331075'),
	('team004', '2016331018'),
	('team004', '2016331022'),
	('team005', '2017331023'),
	('team005', '2017331053');
/*!40000 ALTER TABLE `team_student` ENABLE KEYS */;

-- Dumping structure for table teamssfc.users
CREATE TABLE IF NOT EXISTS `users` (
  `Username` varchar(50) COLLATE utf8_bin NOT NULL,
  `Pasword` varchar(50) COLLATE utf8_bin NOT NULL,
  `Type` enum('S','T') COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table teamssfc.users: ~20 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`Username`, `Pasword`, `Type`) VALUES
	('Mustafa01', 'gd45srw', 'S'),
	('Shifath420533', 'hexag0N', 'S'),
	('af', '1234', 'T'),
	('ahamedf', 'vx2v5x4v', 'S'),
	('aishatasnim', '45asf645a68', 'T'),
	('biswapriyo', '2q542r54254', 'T'),
	('dipta29', 'iloveylyl', 'S'),
	('enam11', 's124f54q54f', 'T'),
	('firzoM', 'asdas45das4', 'S'),
	('fs', 'sd', 'T'),
	('helloafsdf', '1234', 'S'),
	('mahfuzA', 'h4hg568443w', 'T'),
	('masum01', 'cv45n75cv78', 'T'),
	('moqsad1', 'h14d54g75w', 'T'),
	('nabil48', '7425dg5s4#', 'T'),
	('rafirafi', 'rwqrqw455', 'S'),
	('sabir_99', 'q5642wr89qw87', 'T'),
	('saif01', 'ert424rt54r', 'T'),
	('saleh123', '434754g5ds4g5', 'S'),
	('shouvik075', '112398g8', 'S'),
	('sowmen22', 'dipta204', 'S'),
	('summith', '45eryt57e', 'T'),
	('teamssfc', 'HElloMyFrieNd16', 'T'),
	('tirtha29', '5645854841', 'S');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
