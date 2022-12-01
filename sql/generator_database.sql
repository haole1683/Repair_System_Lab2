/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.27 : Database - xqyw
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xqyw` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xqyw`;

/*Table structure for table `fee` */

DROP TABLE IF EXISTS `fee`;

CREATE TABLE `fee` (
  `num` int(20) NOT NULL,
  `number` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `way` varchar(20) NOT NULL,
  `shfee` int(20) NOT NULL,
  `hafee` int(20) NOT NULL,
  `nofee` int(20) NOT NULL,
  `date` date NOT NULL,
  `person` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `fee` */

insert  into `fee`(`num`,`number`,`name`,`way`,`shfee`,`hafee`,`nofee`,`date`,`person`) values (1,1,'水费','微信',1200,1200,0,'2021-12-12','赵'),(2,2,'电费','银行卡',1100,1100,0,'2021-12-13','张'),(3,3,'停车费','网银',1300,1300,0,'2021-12-15','赵'),(4,5,'水费','微信',1400,1300,100,'2021-12-13','程'),(5,6,'业务费','现金',1000,800,200,'2021-12-01','哈');

/*Table structure for table `owner` */

DROP TABLE IF EXISTS `owner`;

CREATE TABLE `owner` (
  `number` int(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `area` int(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `phone` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `owner` */

insert  into `owner`(`number`,`name`,`area`,`address`,`phone`) values (1,'赵吉龙',1200,'甘肃',1234567890),(2,'张玫瑰',120,'甘肃',2147483647),(3,'赵新宇',120,'甘肃',2147483647),(4,'小赵',130,'402',2147483647),(5,'小陈',130,'402',2147483647);

/*Table structure for table `property` */

DROP TABLE IF EXISTS `property`;

CREATE TABLE `property` (
  `name` varchar(20) NOT NULL,
  `feesta` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `property` */

insert  into `property`(`name`,`feesta`) values ('水费',8),('电费',5),('物业费',2300),('暖气费',2500);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
