/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 8.0.27 : Database - nvoc_school
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`nvoc_school` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `nvoc_school`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `is_delete` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  `status` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

/*Data for the table `admin` */

insert  into `admin`(`id`,`username`,`password`,`create_time`,`update_time`,`is_delete`,`status`) values 
(1,'admin','admin','2022-04-09 02:24:30','2022-04-10 08:31:28',0,0),
(3,'root','root','2022-04-10 04:54:40','2022-04-14 16:20:09',0,0),
(4,'xiaolong','123456','2022-04-13 06:08:29','2022-04-13 06:08:29',0,0);

/*Table structure for table `body_temperature` */

DROP TABLE IF EXISTS `body_temperature`;

CREATE TABLE `body_temperature` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `normal` varchar(15) NOT NULL COMMENT '正常与不正常',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='体温';

/*Data for the table `body_temperature` */

insert  into `body_temperature`(`id`,`normal`,`create_time`,`update_time`) values 
(1,'是，体温正常','2022-04-09 02:25:03','2022-04-09 02:25:09'),
(2,'否，体温温度为','2022-04-09 02:25:20','2022-04-09 02:25:20');

/*Table structure for table `go_out_apply` */

DROP TABLE IF EXISTS `go_out_apply`;

CREATE TABLE `go_out_apply` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `student_id` int NOT NULL COMMENT '学生id',
  `name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `phone` varchar(20) NOT NULL COMMENT '电话',
  `college` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学院',
  `major` varchar(50) NOT NULL COMMENT '行政班级',
  `reason` varchar(20) NOT NULL COMMENT '离校原因',
  `bus_arrangement` varchar(10) NOT NULL COMMENT '乘车安排',
  `destination` varchar(30) NOT NULL COMMENT '目的地',
  `leave_time` datetime NOT NULL COMMENT '离校时间',
  `return_time` datetime NOT NULL COMMENT '返校时间',
  `status` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '审批状态',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COMMENT='外出申请';

/*Data for the table `go_out_apply` */

insert  into `go_out_apply`(`id`,`student_id`,`name`,`phone`,`college`,`major`,`reason`,`bus_arrangement`,`destination`,`leave_time`,`return_time`,`status`,`create_time`,`update_time`) values 
(1,1,'张三','15114126589','智能制造学院','19计本3班','拿快递','自行乘车','快递站','2022-04-09 10:28:56','2022-04-09 10:28:58',1,'2022-04-09 02:37:21','2022-04-15 08:38:29'),
(2,2,'李四','13115126589','智能制造学院','19计本3班','拿快递','步行','快递站','2022-04-10 02:28:56','2022-04-10 02:28:58',1,'2022-04-09 02:37:20','2022-04-15 08:38:29'),
(3,3,'王五','18745126547','智能制造学院','19计本3班','拿快递','电动车','快递站','2022-04-09 10:28:56','2022-04-09 10:28:58',1,'2022-04-09 02:37:20','2022-04-15 08:38:29'),
(4,1,'张三','15114126589','智能制造学院','19计本3班','拿快递','电动车','快递站','2022-04-09 10:28:56','2022-04-09 10:28:58',1,'2022-04-09 02:37:20','2022-04-15 08:38:30'),
(5,4,'张三','13115126589','智能制造学院','19计本3班','拿快递','电动车','快递站','2022-04-09 10:28:56','2022-04-09 10:28:58',2,'2022-04-09 02:38:02','2022-04-15 00:21:49'),
(6,1,'张三','15114126589','智能制造学院','19计本3班','拿快递','自行乘车','快递站','2022-04-09 02:28:56','2022-04-10 02:28:56',0,'2022-04-13 06:24:28','2022-04-15 08:38:29'),
(7,3,'王五','13115126589','智能制造学院','19计本3班','拿快递','自行乘车','快递站','2022-04-09 02:28:56','2022-04-09 02:28:58',1,'2022-04-13 06:26:26','2022-04-14 20:18:21'),
(8,3,'王五','18745126547','智能制造学院','19计本3班','拿快递','自行乘车','快递站','2022-04-09 02:28:56','2022-04-09 02:28:58',1,'2022-04-13 07:55:56','2022-04-14 20:18:27'),
(17,6,'王三','13115126589','智能制造学院','19计本3班','兼职','电动车','金沙湾','2022-04-15 22:00:00','2022-04-16 04:00:00',1,'2022-04-14 21:44:22','2022-04-14 22:58:49'),
(22,1,'张三','13534178900','智能制造学院','19计本3班','兼职','电动车','金沙湾','2022-04-16 21:00:00','2022-04-17 04:00:00',1,'2022-04-15 01:03:53','2022-04-15 08:38:30'),
(23,14,'卢jj','15987887777','智能制造学院','19计本3班','吃饭','打的','万达','2022-04-16 01:00:00','2022-04-16 04:00:00',1,'2022-04-15 08:51:31','2022-04-15 08:52:58'),
(24,13,'赖jj','13344445555','智能制造学院','19计本3班','兼职','电动车','金水湾','2022-04-15 18:36:48','2022-04-16 06:36:48',1,'2022-04-15 10:37:13','2022-04-15 10:38:05');

/*Table structure for table `health_card` */

DROP TABLE IF EXISTS `health_card`;

CREATE TABLE `health_card` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `student_id` int DEFAULT NULL COMMENT '学生id',
  `date` datetime NOT NULL COMMENT '日期',
  `name` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `college` varchar(10) NOT NULL COMMENT '学院',
  `major` varchar(50) NOT NULL COMMENT '行政班级',
  `phone` varchar(15) NOT NULL COMMENT '电话',
  `health_code_id` int NOT NULL COMMENT '健康码',
  `body_temperature_id` int NOT NULL COMMENT '体温',
  `temperature` decimal(4,2) NOT NULL DEFAULT '0.00' COMMENT '温度',
  `physical_condition_id` int NOT NULL COMMENT '身体状况',
  `vaccination_id` int NOT NULL COMMENT '接种疫苗',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `is_delete` tinyint NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb3 COMMENT='健康卡';

/*Data for the table `health_card` */

insert  into `health_card`(`id`,`student_id`,`date`,`name`,`college`,`major`,`phone`,`health_code_id`,`body_temperature_id`,`temperature`,`physical_condition_id`,`vaccination_id`,`create_time`,`update_time`,`is_delete`) values 
(3,1,'2022-04-09 10:29:40','张三','智能制造学院','19计本3班','18745126547',1,1,36.20,1,1,'2022-04-12 06:48:21','2022-04-15 08:39:23',0),
(4,1,'2022-04-09 10:29:40','张三','智能制造学院','19计本3班','15114126589',1,1,36.20,1,1,'2022-04-12 06:48:21','2022-04-15 08:39:24',0),
(5,1,'2022-04-09 10:29:40','张三','智能制造学院','19计本3班','13115126589',2,1,36.20,1,2,'2022-04-12 06:48:21','2022-04-15 08:39:24',1),
(6,1,'2022-04-09 10:29:40','张三','智能制造学院','19计本3班','18745126547',2,1,36.20,2,2,'2022-04-12 06:48:21','2022-04-15 08:39:20',1),
(7,1,'2022-04-09 10:29:40','张三','智能制造学院','19计本3班','15114126589',2,1,36.20,2,2,'2022-04-12 06:48:22','2022-04-15 08:39:22',1),
(8,1,'2022-04-09 10:29:40','张三','智能制造学院','19计本3班','13115126589',2,1,36.30,2,1,'2022-04-12 06:48:22','2022-04-15 08:39:22',1),
(9,1,'2022-04-09 10:29:40','张三','智能制造学院','19计本3班','18745126547',1,1,36.30,2,1,'2022-04-12 06:48:22','2022-04-15 08:39:22',1),
(10,1,'2022-04-09 10:29:40','张三','智能制造学院','19计本3班','15114126589',1,2,36.30,2,1,'2022-04-12 06:48:22','2022-04-15 08:39:21',1),
(11,1,'2022-04-09 10:29:40','张三','智能制造学院','19计本3班','13115126589',1,2,36.30,1,1,'2022-04-12 06:48:23','2022-04-15 08:39:21',0),
(15,3,'2022-04-09 02:28:56','李四','智能制造学院','19计本3班','18745126547',1,1,37.00,1,3,'2022-04-13 06:14:56','2022-04-15 08:39:21',0),
(16,3,'2022-04-09 02:28:56','李四','智能制造学院','19计本4班','15114126589',1,1,37.00,1,1,'2022-04-13 06:20:30','2022-04-15 08:39:21',0),
(17,3,'2022-04-09 10:28:56','李四','智能制造学院','19计本3班','13115126589',4,1,37.00,1,1,'2022-04-13 06:20:30','2022-04-15 08:39:22',0),
(18,6,'2022-04-09 18:28:56','李四','智能制造学院','19计本3班','18745126547',4,1,37.00,1,4,'2022-04-13 07:50:21','2022-04-15 08:39:23',0),
(19,7,'2022-04-09 10:28:56','李四','智能制造学院','19计本4班','15114126589',3,1,36.20,1,4,'2022-04-13 07:52:04','2022-04-15 08:39:23',0),
(20,6,'2022-04-09 18:28:56','李四','智能制造学院','19计本3班','13115126589',2,1,36.20,1,4,'2022-04-13 08:10:31','2022-04-15 08:39:23',0),
(21,1,'2022-04-13 16:18:52','张三1','智能制造学院','19计本3班','18745126547',1,1,36.20,1,4,'2022-04-13 08:20:11','2022-04-14 16:57:06',0),
(22,1,'2022-04-13 16:21:48','张三1','智能制造学院','19计本3班','15114126589',1,2,36.20,1,1,'2022-04-13 08:21:48','2022-04-14 16:57:05',0),
(23,1,'2022-04-13 16:23:41','张三','智能制造学院','19计本3班','13115126589',1,2,36.30,1,1,'2022-04-13 08:23:42','2022-04-14 16:56:31',0),
(24,1,'2022-04-13 16:27:33','张三','智能制造学院','19计本3班','18745126547',1,2,36.30,1,1,'2022-04-13 08:27:38','2022-04-14 16:56:28',0),
(25,1,'2022-04-13 16:31:31','张三','智能制造学院','19计本3班','15114126589',1,1,36.30,1,1,'2022-04-13 08:31:36','2022-04-14 16:53:50',0),
(26,6,'2022-04-13 17:01:51','王三','智能制造学院','19计本3班','13115126589',1,1,50.00,1,1,'2022-04-13 09:02:13','2022-04-14 16:55:28',0),
(27,1,'2022-04-13 17:07:29','张三','智能制造学院','19计本3班','18745126547',1,1,36.30,1,1,'2022-04-13 09:07:29','2022-04-14 16:53:45',0),
(28,1,'2022-04-13 22:00:56','张三','智能制造学院','19计本3班','15114126589',1,1,36.30,1,1,'2022-04-13 14:00:58','2022-04-14 16:53:48',0),
(29,1,'2022-04-13 23:06:59','张三','智能制造学院','19管理2班','13115126589',1,1,36.30,1,1,'2022-04-13 15:07:11','2022-04-14 16:54:44',0),
(30,1,'2022-04-13 23:14:26','张三','智能制造学院','19管理3班','18745126547',1,1,36.30,1,1,'2022-04-13 15:14:27','2022-04-14 16:54:41',0),
(31,1,'2022-04-13 23:14:32','张三','智能制造学院','19计本2班','15114126589',1,1,36.30,1,1,'2022-04-13 15:14:59','2022-04-14 16:54:41',0),
(32,1,'2022-04-13 23:15:30','张三','智能制造学院','19计本3班','13115126589',1,1,36.30,1,1,'2022-04-13 15:15:52','2022-04-14 16:54:45',0),
(33,1,'2022-04-13 16:18:52','张三','智能制造学院','19计本3班','18745126547',1,1,36.30,1,1,'2022-04-13 15:16:31','2022-04-14 16:53:56',0),
(34,1,'2022-04-13 23:43:28','张三','智能制造学院','19管理2班','15114126589',1,1,36.30,1,1,'2022-04-13 15:43:34','2022-04-14 16:55:27',0),
(35,1,'2022-04-13 23:44:07','张三','智能制造学院','19管理3班','13115126589',1,1,36.30,1,1,'2022-04-13 15:44:14','2022-04-14 16:55:29',0),
(36,1,'2022-04-13 23:44:53','张三','智能制造学院','19计本2班','18745126547',1,1,36.30,1,1,'2022-04-13 15:45:39','2022-04-14 16:55:29',0),
(37,1,'2022-04-14 00:03:24','张三','智能制造学院','19计本3班','15114126589',1,1,36.30,1,1,'2022-04-13 16:03:27','2022-04-14 16:54:44',0),
(38,1,'2022-04-14 00:13:13','张三','智能制造学院','19计本3班','13115126589',1,1,36.30,1,1,'2022-04-13 16:13:14','2022-04-14 16:54:42',0),
(39,1,'2022-04-14 00:18:39','张三','智能制造学院','19管理2班','18745126547',1,1,36.30,1,1,'2022-04-13 16:18:59','2022-04-14 16:54:44',0),
(41,1,'2022-04-14 16:32:31','张三','智能制造学院','19管理3班','15114126589',1,1,36.30,1,1,'2022-04-14 08:32:36','2022-04-14 16:54:43',0),
(42,1,'2022-04-14 17:09:03','王三','智能制造学院','19计本2班','13115126589',1,1,36.30,1,1,'2022-04-14 09:09:06','2022-04-14 16:54:41',0),
(43,1,'2022-04-14 17:09:17','王三','智能制造学院','19管理2','18745126547',1,1,36.30,1,1,'2022-04-14 09:09:28','2022-04-14 16:54:41',0),
(44,1,'2022-04-14 17:09:51','王三','智能制造学院','19计本3班','15114126589',1,1,36.30,1,1,'2022-04-14 09:10:03','2022-04-14 16:54:40',0),
(45,1,'2022-04-14 17:10:54','王三','智能制造学院','19计本3班','13115126589',1,1,36.30,1,1,'2022-04-14 09:11:31','2022-04-14 16:54:43',0),
(46,1,'2022-04-14 17:14:40','王三','智能制造学院','19管理2班','18745126547',1,1,36.30,1,1,'2022-04-14 09:14:48','2022-04-14 16:55:27',0),
(47,1,'2022-04-14 19:36:43','王三','智能制造学院','19管理3班','15114126589',1,1,36.30,1,1,'2022-04-14 11:36:45','2022-04-14 16:54:43',0),
(48,6,'2022-04-14 19:39:52','王三','智能制造学院','19计本2班','13115126589',1,1,36.30,1,1,'2022-04-14 11:39:54','2022-04-14 16:54:40',0),
(52,3,'2022-04-15 08:04:42','王五','智能制造学院','19计本3班','12151698575',1,1,36.30,1,1,'2022-04-15 00:04:51','2022-04-15 00:04:51',0),
(57,1,'2022-04-15 09:07:30','张三','智能制造学院','19计本3班','13534178887',1,1,36.30,1,1,'2022-04-15 01:07:32','2022-04-15 08:39:20',0),
(58,14,'2022-04-15 09:07:55','卢jj','智能制造学院','19计本3班','15987887777',1,1,36.30,1,1,'2022-04-15 01:07:56','2022-04-15 01:07:56',0),
(59,15,'2022-04-15 16:59:16','梁jj','智能制造学院','19计本3班','13675879587',1,1,36.30,1,1,'2022-04-15 08:59:19','2022-04-15 08:59:19',0),
(60,13,'2022-04-15 18:36:25','赖jj','智能制造学院','19计本3班','13344445555',1,1,36.30,1,1,'2022-04-15 10:36:39','2022-04-15 10:36:39',0),
(61,16,'2022-04-15 18:40:28','郑jj','智能制造学院','19计本3班','13355555666',1,1,36.30,1,1,'2022-04-15 10:40:30','2022-04-15 10:40:30',0);

/*Table structure for table `health_code` */

DROP TABLE IF EXISTS `health_code`;

CREATE TABLE `health_code` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(10) NOT NULL COMMENT '健康码',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='健康码';

/*Data for the table `health_code` */

insert  into `health_code`(`id`,`code`,`create_time`,`update_time`) values 
(1,'绿码','2022-04-09 02:29:11','2022-04-09 02:29:11'),
(2,'黄码','2022-04-09 02:29:20','2022-04-09 02:29:20'),
(3,'橙码','2022-04-09 02:29:29','2022-04-09 02:29:29'),
(4,'红码','2022-04-09 02:29:34','2022-04-09 02:29:34');

/*Table structure for table `physical_condition` */

DROP TABLE IF EXISTS `physical_condition`;

CREATE TABLE `physical_condition` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `body_condition` varchar(15) NOT NULL COMMENT '身体状态',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新人',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='身体状况';

/*Data for the table `physical_condition` */

insert  into `physical_condition`(`id`,`body_condition`,`create_time`,`update_time`) values 
(1,'健康、无异常','2022-04-09 02:30:41','2022-04-09 02:30:41'),
(2,'咳嗽','2022-04-09 02:30:47','2022-04-09 02:30:47'),
(3,'发烧','2022-04-09 02:30:54','2022-04-09 02:30:54'),
(4,'乏力','2022-04-09 02:31:01','2022-04-09 02:31:01'),
(5,'确诊已隔离','2022-04-09 02:31:13','2022-04-09 02:31:13');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `student_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `sex` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `name` varchar(20) NOT NULL COMMENT '姓名',
  `college` varchar(20) NOT NULL COMMENT '学院',
  `major` varchar(50) NOT NULL COMMENT '行政班级',
  `phone` varchar(20) NOT NULL COMMENT '电话',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `status` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '启用状态',
  `is_delete` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

/*Data for the table `student` */

insert  into `student`(`id`,`student_number`,`password`,`sex`,`name`,`college`,`major`,`phone`,`create_time`,`status`,`is_delete`,`update_time`) values 
(1,'2019106040334','123456',0,'张三','智能制造学院','19计本3班','13534178884','2022-04-09 02:31:53',0,0,'2022-04-15 08:39:46'),
(2,'2019106040340','888888',0,'王五','智能制造学院','19计本3班','13215698746','2022-04-09 02:31:53',0,0,'2022-04-14 17:12:32'),
(3,'2019106040336','888888',1,'王五','智能制造学院','19计本3班','12151698575','2022-04-09 02:31:53',0,0,'2022-04-14 16:50:23'),
(4,'2019106040337','666666',0,'赵六','智能制造学院','19计本3班','16159874569','2022-04-09 02:31:53',0,0,'2022-04-14 16:50:23'),
(5,'2019106040338','777777',0,'张九','智能制造学院','19计本3班','13145896574','2022-04-09 02:31:53',0,0,'2022-04-14 16:50:22'),
(6,'2019106040339','999999',0,'王三','智能制造学院','19计本3班','13344447888','2022-04-09 02:31:53',0,0,'2022-04-14 21:48:02'),
(7,'2019106040350','123456',0,'张三','智能制造学院','19计本3班','15114126589','2022-04-09 02:31:53',0,0,'2022-04-14 16:50:22'),
(8,'2019106040351','888888',1,'王五','智能制造学院','19计本3班','13115126589','2022-04-09 02:31:53',0,0,'2022-04-14 16:50:22'),
(10,'2019106040353','666666',0,'赵六','智能制造学院','19计本3班','16854789652','2022-04-09 02:31:53',0,0,'2022-04-14 16:50:21'),
(11,'2019106040354','777777',1,'张九','智能制造学院','19计本3班','15898745869','2022-04-09 02:31:53',0,0,'2022-04-14 16:50:23'),
(12,'2019106040355','999999',1,'王三','智能制造学院','19计本3班','14512658974','2022-04-09 02:31:53',0,0,'2022-04-14 16:50:21'),
(13,'2019106040308','123456',0,'赖jj','智能制造学院','19计本3班','13344445588','2022-04-14 22:27:03',0,0,'2022-04-15 10:38:20'),
(14,'2019106040317','888888',0,'卢jj','智能制造学院','19计本3班','15947569478','2022-04-15 01:06:54',0,0,'2022-04-15 08:53:16'),
(15,'2019106040311','123456',0,'梁jj','智能制造学院','19计本3班','13675879587','2022-04-15 08:57:34',0,0,'2022-04-15 08:57:34'),
(16,'2019106040333','123456',0,'郑jj','智能制造学院','19计本3班','13355555666','2022-04-15 10:40:00',0,0,'2022-04-15 10:40:00');

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `teacher_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '教师编号',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `sex` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `phone` varchar(255) NOT NULL COMMENT '电话',
  `name` varchar(255) NOT NULL COMMENT '教师名',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `is_delete` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  `status` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '启用状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='教师';

/*Data for the table `teacher` */

insert  into `teacher`(`id`,`teacher_number`,`password`,`sex`,`phone`,`name`,`create_time`,`update_time`,`is_delete`,`status`) values 
(1,'20294882736','123456',0,'13575678901','张老师','2022-04-09 02:32:17','2022-04-09 02:32:17',0,0),
(3,'20294882738','123456',0,'18745126547','徐老师','2022-04-09 02:32:17','2022-04-09 02:32:17',0,0),
(4,'20294882737','123456',0,'13335358696','雷老师','2022-04-14 22:42:53','2022-04-14 22:42:53',0,0);

/*Table structure for table `vaccination` */

DROP TABLE IF EXISTS `vaccination`;

CREATE TABLE `vaccination` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `inoculate_status` varchar(15) NOT NULL COMMENT '接种状态',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='疫苗接种';

/*Data for the table `vaccination` */

insert  into `vaccination`(`id`,`inoculate_status`,`create_time`,`update_time`) values 
(1,'已完成全程接种','2022-04-09 02:32:29','2022-04-09 02:32:29'),
(2,'已接种第一针','2022-04-09 02:32:44','2022-04-09 02:32:44'),
(3,'未参与接种','2022-04-09 02:32:51','2022-04-09 02:32:51'),
(4,'有接种禁忌症','2022-04-09 02:33:29','2022-04-09 02:33:29');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
