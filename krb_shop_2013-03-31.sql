# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.29-0ubuntu0.12.04.1-log)
# Database: krb_shop
# Generation Time: 2013-03-31 10:14:49 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page`;

CREATE TABLE `page` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text,
  `menu` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `locale` varchar(5) DEFAULT 'nl_BE',
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;

INSERT INTO `page` (`id`, `title`, `slug`, `description`, `menu`, `status`, `locale`, `sort`)
VALUES
	(1,'Home','home','Dit is de homepagine',1,1,'nl_BE',1),
	(2,'Producten','producten','Mijn producten',1,1,'nl_BE',2),
	(3,'Produits','producten','gergfefega',1,1,'fr_BE',2),
	(4,'Maison','home','g',1,1,'fr_BE',1);

/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table producten
# ------------------------------------------------------------

DROP TABLE IF EXISTS `producten`;

CREATE TABLE `producten` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `prodname` varchar(75) DEFAULT NULL,
  `proddef` varchar(300) DEFAULT '',
  `prodprice` double DEFAULT NULL,
  `prodimg` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `producten` WRITE;
/*!40000 ALTER TABLE `producten` DISABLE KEYS */;

INSERT INTO `producten` (`id`, `prodname`, `proddef`, `prodprice`, `prodimg`)
VALUES
	(1,'rozen','dit ie een prchtig boeket rozen',100,'roos'),
	(2,'anjers','dit is een boeket anjers',150.45,'anjers'),
	(3,'tulpen','dit de mooiste tulpen boeket',120.34,'tulp');

/*!40000 ALTER TABLE `producten` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table translate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `translate`;

CREATE TABLE `translate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(5) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `translation` text,
  `translated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `translate` WRITE;
/*!40000 ALTER TABLE `translate` DISABLE KEYS */;

INSERT INTO `translate` (`id`, `locale`, `tag`, `translation`, `translated`)
VALUES
	(1,'nl_BE','text_header','Dit is mijn titel',1),
	(2,'fr_BE','text_header','Notre titre',1);

/*!40000 ALTER TABLE `translate` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` enum('GUEST','USER','ADMIN') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `username`, `password`, `role`)
VALUES
	(1,'kris','test','ADMIN'),
	(2,'ines','kris','USER');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
