/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.14-MariaDB : Database - project
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `project`;

/*Table structure for table `general` */

DROP TABLE IF EXISTS `general`;

CREATE TABLE `general` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `contact` varchar(11) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

/*Data for the table `general` */

insert  into `general`(`rowid`,`firstname`,`lastname`,`contact`,`created_by`,`created_date`) values 
(1,'test 1','test 1','09316781638','1','2022-08-20 17:01:59'),
(2,'test 2','test 2','09876876361','1','2022-08-20 17:02:16'),
(3,'test 3','test 3','09987139173','1','2022-08-20 17:02:32'),
(4,'test 4','test 4','09127363826','1','2022-08-20 17:02:44'),
(5,'test 5','test 5','09187613281','1','2022-08-20 17:03:01'),
(6,'test 6','test 6','09314187381','1','2022-08-20 17:03:15'),
(7,'test 7','test 7','09176132828','1','2022-08-20 17:03:31'),
(8,'test 8','test 8','09517631863','1','2022-08-20 17:03:44'),
(9,'test 9','test 9 ','09412187167','1','2022-08-20 17:04:04'),
(10,'test 10','test 10','09312638286','1','2022-08-20 17:05:13'),
(11,'test 11','test 11','09416731731','1','2022-08-20 17:05:30'),
(12,'test 12','test 12','09519739173','1','2022-08-20 17:05:53'),
(13,'test 13','test 13','09631763862','1','2022-08-20 17:09:22'),
(14,'test 14','test 14','09123871393','1','2022-08-20 17:09:33'),
(15,'test 15','test 15','09316781631','1','2022-08-20 17:09:51');

/*Table structure for table `private` */

DROP TABLE IF EXISTS `private`;

CREATE TABLE `private` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `general_id` int(10) DEFAULT NULL,
  `userid` int(10) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `private` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `rowid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `contact` varchar(11) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `is_approve` int(1) DEFAULT 0,
  `approved_by` int(10) DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`rowid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user` */

insert  into `user`(`rowid`,`firstname`,`contact`,`lastname`,`username`,`email`,`password`,`is_approve`,`approved_by`,`approved_date`,`created_date`) values 
(1,'jayson','09613468071','reyes','jaysonreyes','jaysonreyes012345@gmail.com','password',1,1,'2022-08-20 17:01:21','2022-08-20 17:00:29');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
