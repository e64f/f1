/*
SQLyog Professional v13.1.2 (64 bit)
MySQL - 5.6.34-log : Database - filkos_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `tbl_clients` */

DROP TABLE IF EXISTS `tbl_clients`;

CREATE TABLE `tbl_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_clients` */

insert  into `tbl_clients`(`id`,`name`) values 
(1,'Иванов А.А.'),
(2,'Петров Е.Т.'),
(3,'Сидоров И.И.'),
(4,'Путин В.В.'),
(5,'Медведев Д. А.');

/*Table structure for table `tbl_orders` */

DROP TABLE IF EXISTS `tbl_orders`;

CREATE TABLE `tbl_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `dt` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_orders` */

insert  into `tbl_orders`(`id`,`client_id`,`dt`,`status`) values 
(1,2,'2021-08-09 15:07:19',1),
(2,3,'2021-08-10 15:07:37',1),
(3,4,'2021-07-30 15:07:52',1),
(4,3,'2021-08-10 21:08:20',1);

/*Table structure for table `tbl_orders_products` */

DROP TABLE IF EXISTS `tbl_orders_products`;

CREATE TABLE `tbl_orders_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `prodict_id` int(10) unsigned NOT NULL,
  `client_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_orders_products` */

insert  into `tbl_orders_products`(`id`,`order_id`,`prodict_id`,`client_id`) values 
(1,1,2,2),
(2,1,4,2),
(3,2,1,3),
(4,2,5,3),
(5,2,7,3),
(6,3,10,4),
(7,4,1,3);

/*Table structure for table `tbl_products` */

DROP TABLE IF EXISTS `tbl_products`;

CREATE TABLE `tbl_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `tbl_products` */

insert  into `tbl_products`(`id`,`name`) values 
(1,'Сковорода СБВ-134'),
(2,'Стиральныя машина малютка Е-23'),
(3,'Телевизор LG'),
(4,'Холодильник Samsung'),
(5,'Вентилятор'),
(6,'Ноутбук Dell'),
(7,'Пылесос'),
(8,'Кондиционер'),
(9,'Весы'),
(10,'Чайник'),
(11,'Монитор');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
