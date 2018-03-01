CREATE DATABASE  IF NOT EXISTS `emr` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `emr`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: emr
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` text,
  `last_name` text,
  `dob` text,
  `gender` text,
  `insurance` text,
  `race` text,
  `refill` text,
  `physican_name` text,
  `allergy` text,
  `address` text,
  `zipcode` text,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` (`patient_id`, `first_name`, `last_name`, `dob`, `gender`, `insurance`, `race`, `refill`, `physican_name`, `allergy`, `address`, `zipcode`) VALUES (1,'ravi','Jefferson','1/4/1999','M','\'TRUE\'','\'White/Non-Hispanic\'','\'TRUE\'','\'Dr. Joan Payne\'','\'Peanut\'','\'0\'','\'4264 Old Valley\''),(2,'tom','SMITH','5/24/1999','M','\'TRUE\'','\'White/Non-Hispanic\'','\'\'FALSE\'\'','\'\'Dr. Joan Payne\'\'','\'bannanas\'','\'0\'','\'4768 Middle Cider Hill\''),(3,'ROBERT','JOHNSON','3/19/2000','M','\'FALSE\'','\'White/Non-Hispanic\'','\'\'FALSE\'\'','\'\'Dr. Joan Payne\'','\'mangos\'','\'\'0\'\'','\'9606 High Ridge\''),(4,'MICHAEL','WILLIAMS','9/17/2000','M','\'TRUE\'','\'White/Non-Hispanic\'','\'TRUE\'','\'Dr. Joan Payne\'','','\'0\'','3533 Emerald Pond Limits'),(5,'WILLIAM','BROWN','4/21/2002','M','\'TRUE\'','\'White/Non-Hispanic\'','\'TRUE\'','\'Dr. Joan Payne\'','latex','\'0\'','\"3960 Dusty Subdivision'),(6,'DAVID','JONES','8/25/2003','M','\'TRUE\'','\'White/Non-Hispanic\'','\'TRUE\'','\'Dr. Joan Payne\'','','\'0\'','3412 Honey Zephyr Drive'),(7,'RICHARD','MILLER','12/27/2003','M','\'FALSE\'','\'White/Non-Hispanic\'','\'FALSE\'','\'Dr. Joan Payne\'','','\'0\'','918 Jagged Lagoon Plaza'),(8,'CHARLES','DAVIS','7/10/2005','M','\'TRUE\'','\'White/Non-Hispanic\'','\'FALSE\'','\'Dr. Joan Payne\'','\'Shelfish\'','\'0\'','4026 Pleasant Robin Arbor'),(9,'JOSEPH','GARCIA','8/9/2005','M','\'TRUE\'','\'White/Non-Hispanic\'','\'FALSE\'','\'Dr. Joan Payne\'','','\'0\'','\"7934 Hazy Hickory Lane'),(10,'THOMAS','RODRIGUEZ','1/8/2008','M','\'TRUE\'','\'White/Non-Hispanic\'','\'FALSE\'','\'Dr. Joan Payne\'','','\'0\'','\"Meeting House Meadows'),(11,'CHRISTOPHER','WILSON','4/9/200\'8','M','\'TRUE\'','\'White/Non-Hispanic\'','\'FALSE\'','\'Dr. Michael Johnson\'','Tree nuts','\'0\'','8034 Thunder Carrefour'),(12,'DANIEL','MARTINEZ','5/31/2\'008','M','\'TRUE\'','\'White/Non-Hispanic\'','\'FALSE\'','\'Dr. Michael Johnson\'','\'Shelfish\'','\'0\'','\"9857 Bright Wynd'),(13,'PAUL','ANDERSON','9/9/2009','M','\'TRUE\'','\'White/Non-Hispanic\'','\'FALSE\'','\'Dr. Michael Johnson\'','Milk.','\'0\'','1402 Indian Pathway'),(14,'MARK','TAYLOR','11/28/2010','M','\'TRUE\'','\'Afrrican American/Black\'','\'FALSE\'','\'Dr. Michael Johnson\'','\'Shelfish\'','\'0\'','2188 Green Brook Downs'),(15,'DONALD','THOMAS','3/28/2012','M','\'TRUE\'','\'Afrrican American/Black\'','\'FALSE\'','\'Dr. Michael Johnson\'','\'Wheat\'.','\'0\'','7679 Clear View Abbey'),(16,'GEORGE','HERNANDEZ','2/18/2013','M','\'TRUE\'','\'Afrrican American/Black\'','\'FALSE\'','\'Dr. Michael Johnson\'','\'Peanut\'','\'0\'','\"532 Silver Island Private'),(17,'KENNETH','MOORE','6/11/2013','M','\'TRUE\'','\'Afrrican American/Black\'','\'FALSE\'','\'Dr. Michael Johnson\'','\'Shelfish\'','\'0\'','\"9814 Colonial Isle'),(18,'STEVEN','MARTIN','9/15/2013','M','\'FALSE\'','\'Afrrican American/Black\'','\'FALSE\'','\'Dr. Michael Johnson\'','Fish','\'0\'','3035 Cinder Townline'),(19,'EDWARD','JACKSON','10/5/2014','M','\'TRUE\'','\'Afrrican American/Black\'','\'FALSE\'','\'Dr. Michael Johnson\'','Milk.','\'0\'','202 Crystal Grove Rise'),(20,'BRIAN','THOMPSON','10/24/2014','M','\'FALSE\'','\'Afrrican American/Black\'','\'FALSE\'','\'Dr. Michael Johnson\'','Soybeans.','\'0\'','\"9907 Harvest Cove'),(21,'RONALD','WHITE','9/22/2015','M','\'TRUE\'','\'Afrrican American/Black\'','\'FALSE\'','\'Dr. Michael Johnson\'','\'Peanut\'','\'0\'','5648 Wishing Pine Maze'),(22,'ANTHONY','LOPEZ','2/5/2016','M','\'TRUE\'','\'Afrrican American/Black\'','\'FALSE\'','\'Dr. Michael Johnson\'','\"\'Shelfish\'','\'0\'','7047 Cozy Panda Port'),(23,'KEVIN','LEE','7/7/2016','M','\'TRUE\'','\'Afrrican American/Black\'','\'FALSE\'','\'Dr. Michael Johnson\'','Milk.','\'0\'','5648 Wishing Pine Maze'),(24,'JASON','GONZALEZ','12/26/2016','M','\'TRUE\'','\'Afrrican American/Black\'','\'FALSE\'','\'Dr. Michael Johnson\'','\"Tree nuts\'','\'0\'','8502 Tawny Bay'),(25,'MATTHEW','HARRIS','2/7/2017','M','\'TRUE\'','\'Afrrican American/Black\'','\'FALSE\'','\'Dr. Michael Johnson\'','\'Fish\'','\'0\'','\"8958 Easy Campus'),(26,'GARY','CLARK','3/16/1998','M','\'TRUE\'','\'Afrrican American/Black\'','\'FALSE\'','\'Dr. Michael Johnson\'','','\'0\'','\"9979 Round Fox Chase'),(27,'TIMOTHY','LEWIS','11/17/1998','M','\'TRUE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Juile Lee\'','','\'0\'','\"9801 Lost Cloud Way'),(28,'JOSE','ROBINSON','8/2/2000','M','\'TRUE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Juile Lee\'','dogs','\'0\'','4205 Foggy Anchor Swale'),(29,'LARRY','WALKER','9/15/2000','M','\'TRUE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Juile Lee\'','','\'0\'','8790 Quiet Corners'),(30,'JEFFREY','PEREZ','12/25/2000','M','\'TRUE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Juile Lee\'','','\'0\'','\"3264 Sleepy Elk Circle'),(31,'FRANK','HALL','4/20/2003','M','\'FALSE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Juile Lee\'','','\'0\'','1467 Amber Manor'),(32,'SCOTT','YOUNG','6/5/2003','M','\'TRUE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Juile Lee\'','','\'0\'','\"8724 Quaking Wagon Park'),(33,'ERIC','ALLEN','6/9/2004','M','\'TRUE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Juile Lee\'','','\'0\'','\"5865 Rocky Wharf'),(34,'STEPHEN','SANCHEZ','9/18/2004','M','\'TRUE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Juile Lee\'','','\'0\'','\"440\'0\' Misty Run'),(35,'ANDREW','WRIGHT','9/3/2005','M','\'TRUE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Juile Lee\'','','\'0\'','2526 Grand Log Alley'),(36,'RAYMOND','KING','11/20/2005','M','\'TRUE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Juile Lee\'','','\'0\'','9641 Rustic Glen'),(37,'GREGORY','SCOTT','4/17/2006','M','\'TRUE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Juile Lee\'','','\'0\'','1906 Dewy Dale'),(38,'JOSHUA','GREEN','11/26/2006','M','\'TRUE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Juile Lee\'','','\'0\'','4739 Stony Dale Common'),(39,'JERRY','BAKER','11/29/2007','M','\'FALSE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Juile Lee\'','','\'0\'','\"672 Little Trail'),(40,'DENNIS','ADAMS','3/19/2008','M','\'TRUE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Juile Lee\'','','\'0\'','7755 Sunny Embers Passage'),(41,'WALTER','NELSON','4/2/2010','M','\'TRUE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Juile Lee\'','Soybeans.','\'0\'','2731 Gentle Spring Crossing'),(42,'PATRICK','HILL','10/21/2010','M','\'TRUE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Juile Lee\'','\'Peanut\'','\'0\'','\"133 Silent Knoll'),(43,'PETER','RAMIREZ','11/13/2010','M','\'TRUE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Stacey Cohen\'','\"Tree nuts\'','\'0\'','6448 Umber Jetty'),(44,'HAROLD','CAMPBELL','10/23/2013','M','\'FALSE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Stacey Cohen\'','Eggs.','\'0\'','3328 Shady Mount'),(45,'DOUGLAS','MITCHELL','10/31/2013','M','\'TRUE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Stacey Cohen\'','Milk.','\'0\'','5392 Hidden By-pass'),(46,'HENRY','ROBERTS','12/9/2013','M','\'FALSE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Stacey Cohen\'','\'Wheat\'.','\'0\'','3507 Blue Moor'),(47,'CARL','CARTER','9/19/2014','M','\'TRUE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Stacey Cohen\'','Eggs.','\'0\'','6077 Burning Beacon Loop'),(48,'ARTHUR','PHILLIPS','5/2/2015','M','\'TRUE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Stacey Cohen\'','\'Wheat\'','\'0\'','5875 Red StreeT'),(49,'AMELIA','EVANS','4/17/2016','M','\'TRUE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Stacey Cohen\'','\"Fish\'','\'0\'','889 Heather Autumn Hollow'),(50,'OLIVIA','TURNER','2/2/2017','F','\'TRUE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Stacey Cohen\'','\'\'Shelfish\'\'','\'0\'','7715 Cotton Gate Bank'),(51,'ISLA','TORRES','8/19/1997','F','\'TRUE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Stacey Cohen\'','','\'0\'','4265 Old Valley'),(52,'EMILY','PARKER','11/11/1998','F','\'TRUE\'','\'Hispanic/Latino/Latina\'','\'FALSE\'','\'Dr. Stacey Cohen\'','','\'0\'','4769 Middle Cider Hill'),(53,'POPPY','COLLINS','11/3/1999','F','\'FALSE\'','Pacific Islander/Asian','\'FALSE\'','\'Dr. Stacey Cohen\'','','\'0\'','9605 High Ridge'),(54,'AVA','EDWARDS','1/18/2000','F','\'TRUE\'','Pacific Islander/Asian','\'FALSE\'','\'Dr. Stacey Cohen\'','','\'0\'','3536 Emerald Pond Limits'),(55,'ISABELLA','STEWART','2/6/2000','F','\'TRUE\'','Pacific Islander/Asian','\'FALSE\'','\'Dr. Stacey Cohen\'','','\'0\'','\"3963 Dusty Subdivision'),(56,'JESSICA','FLORES','5/14/2000','F','\'TRUE\'','Pacific Islander/Asian','\'FALSE\'','\'Dr. Stacey Cohen\'','','\'0\'','3415 Honey Zephyr Drive'),(57,'LILY','MORRIS','9/9/2000','F','\'TRUE\'','Pacific Islander/Asian','\'FALSE\'','Dr. Charles Gibbs','','\'0\'','919 Jagged Lagoon Plaza'),(58,'SOPHIE','NGUYEN','4/22/2002','F','\'TRUE\'','Pacific Islander/Asian','\'FALSE\'','Dr. Charles Gibbs','','\'0\'','4027 Pleasant Robin Arbor'),(59,'GRACE','MURPHY','12/7/2002','F','\'TRUE\'','Pacific Islander/Asian','\'FALSE\'','Dr. Charles Gibbs','','\'0\'','\"7935 Hazy Hickory Lane'),(60,'SOPHIA','RIVERA','1/18/2003','F','\'TRUE\'','Pacific Islander/Asian','\'FALSE\'','Dr. Charles Gibbs','','\'0\'','\"Meeting House Meadows'),(61,'MIA','COOK','9/28/2003','F','\'TRUE\'','Pacific Islander/Asian','\'FALSE\'','Dr. Charles Gibbs','','\'0\'','8035 Thunder Carrefour'),(62,'EVIE','ROGERS','2/1/2004','F','\'TRUE\'','Pacific Islander/Asian','\'FALSE\'','Dr. Charles Gibbs','','\'0\'','\"9858 Bright Wynd'),(63,'RUBY','MORGAN','6/14/2004','F','\'FALSE\'','Pacific Islander/Asian','\'FALSE\'','Dr. Charles Gibbs','','\'0\'','1403 Indian Pathway'),(64,'ELLA','PETERSON','3/15/2005','F','\'TRUE\'','Pacific Islander/Asian','\'FALSE\'','Dr. Charles Gibbs','','\'0\'','2189 Green Brook Downs'),(65,'SCARLETT','COOPER','7/13/2009','F','\'TRUE\'','Pacific Islander/Asian','\'FALSE\'','Dr. Charles Gibbs','Eggs.','\'0\'','7680 Clear View Abbey'),(66,'ISABELLE','REED','6/21/2010','F','\'TRUE\'','Pacific Islander/Asian','\'FALSE\'','Dr. Charles Gibbs','\'Wheat\'.','\'0\'','\"533 Silver Island Private'),(67,'CHLOE','BAILEY','7/4/2011','F','\'TRUE\'','Pacific Islander/Asian','\'FALSE\'','Dr. Charles Gibbs','\"Fish\'','\'0\'','\"9815 Colonial Isle'),(68,'SIENNA','BELL','5/24/2013','F','\'TRUE\'','Pacific Islander/Asian','\'FALSE\'','Dr. Charles Gibbs','\"Tree nuts\'','\'0\'','3036 Cinder Townline'),(69,'FREYA','GOMEZ','12/1/2013','F','\'TRUE\'','Pacific Islander/Asian','\'FALSE\'','Dr. Charles Gibbs','Soybeans.','\'0\'','203 Crystal Grove Rise'),(70,'PHOEBE','KELLY','2/24/2014','F','\'TRUE\'','Pacific Islander/Asian','\'FALSE\'','Dr. Charles Gibbs','\'Peanut\'','\'0\'','\"9908 Harvest Cove'),(71,'CHARLOTTE','HOWARD','5/18/2014','F','\'TRUE\'','Pacific Islander/Asian','\'FALSE\'','Dr. Brian Moore','\"Tree nuts\'','\'0\'','5649 Wishing Pine Maze'),(72,'DAISY','WARD','7/12/2014','F','\'TRUE\'','Pacific Islander/Asian','\'FALSE\'','Dr. Brian Moore','\"\'Shelfish\' \"','\'0\'','7048 Cozy Panda Port'),(73,'ALICE','COX','5/29/2016','F','\'TRUE\'','\'Afrrican American/Black\'','\'FALSE\'','Dr. Brian Moore','Eggs.','\'0\'','5649 Wishing Pine Maze'),(74,'FLORENCE','DIAZ','3/8/2017','F','\'TRUE\'','\'Afrrican American/Black\'','\'FALSE\'','Dr. Brian Moore','Eggs.','\'0\'','8503 Tawny Bay'),(75,'EVA','RICHARDSON','5/7/2017','F','\'FALSE\'','\'Afrrican American/Black\'','\'FALSE\'','Dr. Brian Moore','Milk.','\'0\'','\"8959 Easy Campus'),(76,'SOFIA','WOOD','8/3/1998','F','\'TRUE\'','\'Afrrican American/Black\'','\'FALSE\'','Dr. Brian Moore','','\'0\'','\"9980 Round Fox Chase'),(77,'MILLIE','WATSON','3/18/1999','F','\'TRUE\'','\'Afrrican American/Black\'','\'FALSE\'','Dr. Brian Moore','','\'0\'','\"9802 Lost Cloud Way'),(78,'LUCY','BROOKS','6/12/1999','F','\'TRUE\'','\'Afrrican American/Black\'','\'FALSE\'','Dr. Brian Moore','','\'0\'','4206 Foggy Anchor Swale'),(79,'EVELYN','BENNETT','8/24/1999','F','\'TRUE\'','\'Afrrican American/Black\'','\'FALSE\'','Dr. Brian Moore','','\'0\'','8791 Quiet Corners'),(80,'ELSIE','GRAY','7/7/2000','F','\'TRUE\'','\'Afrrican American/Black\'','\'FALSE\'','Dr. Brian Moore','','\'0\'','\"3265 Sleepy Elk Circle'),(81,'ROSIE','JAMES','8/25/2000','F','\'TRUE\'','\'Afrrican American/Black\'','\'FALSE\'','Dr. Brian Moore','','\'0\'','1465 Amber Manor'),(82,'IMOGEN','REYES','2/26/2003','F','\'TRUE\'','\'Afrrican American/Black\'','\'FALSE\'','Dr. Brian Moore','','\'0\'','\"8723 Quaking Wagon Park'),(83,'LOLA','CRUZ','7/7/2003','F','\'TRUE\'','\'White/Non-Hispanic\'','\'FALSE\'','\'Dr. Juile Lee\'','','\'0\'','\"5862 Rocky Wharf'),(84,'MATILDA','HUGHES','5/6/2004','F','\'FALSE\'','\'White/Non-Hispanic\'','\'FALSE\'','\'Dr. Juile Lee\'','','\'0\'','\"4403 Misty Run'),(85,'ELIZABETH','PRICE','6/2/2004','F','\'TRUE\'','\'White/Non-Hispanic\'','\'FALSE\'','\'Dr. Juile Lee\'','','\'0\'','2521 Grand Log Alley'),(86,'LAYLA','MYERS','8/14/2005','F','\'TRUE\'','\'White/Non-Hispanic\'','\'FALSE\'','\'Dr. Juile Lee\'','','\'0\'','9644 Rustic Glen'),(87,'HOLLY','LONG','2/21/2007','F','\'TRUE\'','\'White/Non-Hispanic\'','\'FALSE\'','\'Dr. Juile Lee\'','','\'0\'','1907 Dewy Dale'),(88,'LILLY','FOSTER','7/31/2007','F','\'TRUE\'','\'White/Non-Hispanic\'','\'FALSE\'','\'Dr. Juile Lee\'','','\'0\'','4742 Stony Dale Common'),(89,'MOLLY','SANDERS','1/9/2008','F','\'TRUE\'','\'White/Non-Hispanic\'','\'FALSE\'','\'Dr. Juile Lee\'','','\'0\'','\"676 Little Trail'),(90,'ERIN','ROSS','1/18/2008','F','\'TRUE\'','\'White/Non-Hispanic\'','\'FALSE\'','\'Dr. Juile Lee\'','','\'0\'','7753 Sunny Embers Passage'),(91,'ELLIE','MORALES','3/8/2008','F','\'TRUE\'','\'White/Non-Hispanic\'','\'FALSE\'','\'Dr. Juile Lee\'','','\'0\'','2732 Gentle Spring Crossing'),(92,'MAISIE','POWELL','2/18/2009','F','\'TRUE\'','\'White/Non-Hispanic\'','\'FALSE\'','\'Dr. Juile Lee\'','\"Fish\'','\'0\'','\"134 Silent Knoll'),(93,'MAYA','SULLIVAN','7/25/2011','F','\'TRUE\'','\'White/Non-Hispanic\'','\'FALSE\'','\'Dr. Juile Lee\'','Eggs.','\'0\'','6449 Umber Jetty'),(94,'ABIGAIL','RUSSELL','9/30/2011','F','\'TRUE\'','\'White/Non-Hispanic\'','\'FALSE\'','\'Dr. Joan Payne\'','Milk.','\'0\'','3329 Shady Mount'),(95,'ELIZA','ORTIZ','2/8/2012','F','\'TRUE\'','\'White/Non-Hispanic\'','\'FALSE\'','\'Dr. Joan Payne\'','Soybeans.','\'0\'','5395 Hidden By-pass'),(96,'GEORGIA','JENKINS','7/27/2014','F','\'TRUE\'','\'White/Non-Hispanic\'','\'FALSE\'','\'Dr. Joan Payne\'','\"Fish\'','\'0\'','3505 Blue Moor'),(97,'JASMINE','GUTIERREZ','10/7/2015','F','\'TRUE\'','\'White/Non-Hispanic\'','\'FALSE\'','\'Dr. Joan Payne\'','\"Tree nuts\'','\'0\'','6070 Burning Beacon Loop'),(98,'ESME','PERRY','8/12/2016','F','\'TRUE\'','\'White/Non-Hispanic\'','\'FALSE\'','\'Dr. Joan Payne\'','Soybeans.','\'0\'','5876 Red StreeT'),(99,'WILLOW','BUTLER','11/11/2016','F','\'TRUE\'','\'White/Non-Hispanic\'','\'FALSE\'','\'Dr. Joan Payne\'','\'Wheat\'.','\'0\'','890 Heather Autumn Hollow');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_history`
--

DROP TABLE IF EXISTS `patient_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_history` (
  `patient_id` text,
  `dol` text,
  `treatment` text,
  `dol2` text,
  `treatment2` text,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_history`
--

LOCK TABLES `patient_history` WRITE;
/*!40000 ALTER TABLE `patient_history` DISABLE KEYS */;
INSERT INTO `patient_history` (`patient_id`, `dol`, `treatment`, `dol2`, `treatment2`, `id`) VALUES ('patient_id','dol','treatment','dol2','treatment2',1),('1','1/6/2017','99395','3/2/2017','99381\r',2),('2','1/9/2017','99395','3/9/2017','99381\r',3),('3','2/8/2017','99384','3/24/2017','99381\r',4),('4','2/14/2017','99384','4/4/2017','99381\r',5),('5','2/27/2017','99384','4/14/2017','99381\r',6),('6','3/9/2017','99384','4/19/2017','99381\r',7),('7','3/14/2017','99384','5/2/2017','99381\r',8),('8','4/27/2017','99384','5/24/2017','99381\r',9),('9','5/16/2017','99384','5/29/2017','99381\r',10),('10','5/18/2017','99383','5/30/2017','99381\r',11),('11','5/19/2017','99383','6/2/2017','99381\r',12),('12','5/24/2017','99383','6/14/2017','99381\r',13),('13','5/25/2017','99383','6/15/2017','99381\r',14),('14','5/26/2017','99383','6/22/2017','99384\r',15),('15','6/1/2017','99383','6/26/2017','99384\r',16),('16','6/19/2017','99383','7/13/2017','99173\r',17),('17','6/23/2017','99383','7/25/2017','99173\r',18),('18','6/28/2017','99383','7/28/2017','99173\r',19),('19','7/6/2017','99382','8/9/2017','99173\r',20),('20','7/7/2017','99382','8/18/2017','99173\r',21),('21','7/19/2017','99382','9/4/2017','99173\r',22),('22','7/31/2017','99382','9/11/2017','99173\r',23),('23','8/1/2017','99382','9/13/2017','99173\r',24),('24','8/24/2017','99382','9/20/2017','99173\r',25),('25','9/15/2017','99382','9/22/2017','99173\r',26),('26','1/4/2017','99395','3/10/2017','99408\r',27),('27','1/9/2017','99395','3/24/2017','99408\r',28),('28','1/11/2017','99384','3/29/2017','88920\r',29),('29','2/6/2017','99384','4/10/2017','88920\r',30),('30','2/10/2017','99384','4/13/2017','99384\r',31),('31','2/14/2017','99384','4/20/2017','99384\r',32),('32','2/16/2017','99384','4/24/2017','99384\r',33),('33','2/17/2017','99384','4/28/2017','99384\r',34),('34','3/7/2017','99384','5/10/2017','99384\r',35),('35','3/15/2017','99384','5/11/2017','99383\r',36),('36','3/16/2017','99384','5/19/2017','99173\r',37),('37','4/4/2017','99384','6/13/2017','99173\r',38),('38','4/13/2017','99384','6/14/2017','90715\r',39),('39','4/18/2017','99384','6/20/2017','90715\r',40),('40','4/27/2017','99383','6/21/2017','90715\r',41),('41','5/16/2017','99383','6/22/2017','90715\r',42),('42','5/23/2017','99383','6/28/2017','90715\r',43),('43','6/2/2017','99383','7/11/2017','90715\r',44),('44','6/22/2017','99383','7/13/2017','90715\r',45),('45','7/10/2017','99383','7/20/2017','90715\r',46),('46','8/2/2017','99383','7/26/2017','90715\r',47),('47','8/14/2017','99382','9/4/2017','90715\r',48),('48','8/29/2017','99382','9/14/2017','90715\r',49),('49','9/6/2017','99382','9/15/2017','90715\r',50),('50','9/12/2017','99382','9/22/2017','90715\r',51),('51','1/10/2017','99395','3/1/2017','90715\r',52),('52','1/27/2017','99395','3/14/2017','99408\r',53),('53','2/8/2017','99395','3/16/2017','99408\r',54),('54','3/6/2017','99384','3/30/2017','99384\r',55),('55','3/15/2017','99384','4/6/2017','99381\r',56),('56','4/4/2017','99384','4/10/2017','99381\r',57),('57','4/7/2017','99384','4/12/2017','99381\r',58),('58','4/10/2017','99384','4/18/2017','99381\r',59),('59','4/18/2017','99384','4/19/2017','\r',60),('60','4/19/2017','99384','5/9/2017','\r',61),('61','4/20/2017','99384','5/19/2017','\r',62),('62','5/4/2017','99384','5/26/2017','\r',63),('63','5/23/2017','99384','6/13/2017','\r',64),('64','5/30/2017','99384','6/15/2017','\r',65),('65','6/8/2017','99383','6/20/2017','\r',66),('66','6/9/2017','99383','7/4/2017','\r',67),('67','7/4/2017','99383','7/17/2017','\r',68),('68','7/12/2017','99383','8/2/2017','99381\r',69),('69','7/20/2017','99383','8/10/2017','99381\r',70),('70','7/27/2017','99382','8/11/2017','90703\r',71),('71','8/1/2017','99382','8/17/2017','90703\r',72),('72','8/7/2017','99382','8/28/2017','90703\r',73),('73','8/15/2017','99382','8/30/2017','90703\r',74),('74','9/4/2017','99382','9/20/2017','90703\r',75),('75','9/21/2017','99382','9/21/2017','90703\r',76),('76','1/16/2017','99395','3/3/2017','99408\r',77),('77','1/26/2017','99395','3/20/2017','99408\r',78),('78','2/22/2017','99395','3/22/2017','99408\r',79),('79','2/28/2017','99395','3/23/2017','99408\r',80),('80','3/2/2017','99384','3/29/2017','99383\r',81),('81','3/13/2017','99384','4/26/2017','99383\r',82),('82','4/3/2017','99384','5/10/2017','99383\r',83),('83','4/5/2017','99384','5/12/2017','99383\r',84),('84','4/17/2017','99384','5/19/2017','99383\r',85),('85','4/19/2017','99384','5/24/2017','99383\r',86),('86','5/16/2017','99384','5/25/2017','99383\r',87),('87','5/23/2017','99384','6/9/2017','99383\r',88),('88','5/29/2017','99384','6/15/2017','99383\r',89),('89','5/31/2017','99383','6/28/2017','99383\r',90),('90','6/8/2017','99383','7/7/2017','99383\r',91),('91','6/16/2017','99383','7/11/2017','99383\r',92),('92','7/10/2017','99383','7/21/2017','99173\r',93),('93','7/20/2017','99383','7/27/2017','99173\r',94),('94','7/25/2017','99383','8/4/2017','99173\r',95),('95','7/27/2017','99383','8/11/2017','99173\r',96),('96','7/28/2017','99382','8/21/2017','99173\r',97),('97','8/16/2017','99382','8/22/2017','99173\r',98),('98','8/28/2017','99382','8/30/2017','99173\r',99),('99','9/6/2017','99382','9/1/2017','99173\r',100),('102','','','','\r',103),('103','','','','\r',104);
/*!40000 ALTER TABLE `patient_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procedures`
--

DROP TABLE IF EXISTS `procedures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procedures` (
  `patient_id` text,
  `cpt_code` text,
  `name_cpt` text,
  `name_icd` text,
  `cost_icd` text,
  `cost_cpt` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procedures`
--

LOCK TABLES `procedures` WRITE;
/*!40000 ALTER TABLE `procedures` DISABLE KEYS */;
INSERT INTO `procedures` (`patient_id`, `cpt_code`, `name_cpt`, `name_icd`, `cost_icd`, `cost_cpt`) VALUES ('1','99381','Infantof age1','Advice/health instruction',' 250','110\r'),('2','99382','5of age11','Allergy to insects',' 2500','110\r'),('3','99383','Allergy to latex','Allergy','150','110\r'),('4','99384','Allergy to dairy','allergy','250','0\r'),('5','99385','18 years or older','Immunization',' 250','110\r'),('6','99401','Preventive medicine counseling','Immunization',' 250','110\r'),('7','99402','Immunization',' DTP/polio','185','250\r'),('8','99403','Immunization',' hepatitis','185','250\r'),('9','99404','Immunization',' HIB','185','250\r'),('10','99406','Immunization',' influenza','0','20\r'),('11','99408','Immunization',' MMR','0','150'),('12','99188',' topical fluoride varnish','Immunization',' 250','110\r'),('13','99381','pelvic Exam','Immunization',' 150','150\r'),('14','96160','Immunization',' pneumovax','225','250\r'),('16','99441','Immunization',' RSV','150','250\r'),('17','99442','Immunization',' single bacterial disease','65','65\r'),('18','99443','Immunization',' smallpox','150','250\r'),('19','99444','Online E/M','Immunization',' Td','185'),('20','99339','Immunization',' typhoid','150','150\r'),('21','99490','Immunization Shingles','350','250','\r'),('22','99173','Screening test of visual acuity','Chickenpox',' 185','150\r'),('23','96127','Gonorrhea','  lower GU tract','250','250\r'),('24','99381','Preventive visit','  infant under 1 year','150','110\r'),('25','99382','Preventive visit','  age 1to4','250','110\r'),('26','99383','Preventive visit','  age 5to11','250','110\r'),('27','99384','Preventive visit',' Lyme disease','150','110\r'),('28','99394','Preventive visit','  12to17',' 65','110\r'),('29','99395',' established',' Scarlet Fever','150','110\r'),('30','90698','DTaP Immunization','Strep throat','250','150\r'),('31','90713','IPV Immunization','Syphilis','  150','175\r'),('32','90707','Anemia',' iron deficiency','0','250\r'),('33','90708','Measles and Rubella','immunization','0','175\r'),('34','90705','Measles','immunization','0','12500\r'),('35','90704','Rubella','immunization','0','12500\r'),('36','90645','HiB','immunization','0','12500\r'),('37','90723','Hep B','immunization','0','250\r'),('38','90710','VZV','immunization','0','185\r'),('39','90669','Pneumococcal Conjugate','immunization','0','12500\r'),('40','90633','Hep A','immunization','0','2250\r'),('41','90681','Rotavirus 2 dose','immunization','0','250\r'),('42','90680','Rotavirus 3 dose','immunization','0','2150\r'),('43','90655','Obesity',' weight','150','65\r'),('44','90733','Meningococcal','immunization','0','200\r'),('45','90715','Weight Loss','BMI of age 5th percentile',' 0','250\r'),('46','90714','BMI 95th percentile',' pediatric','0','150\r'),('47','90703','Tetanus','immunization','0','185\r'),('48','90719','Diphtheria','immunization','0','110\r'),('49','90649','HPV','immunization','0','215\r'),('50','83655','Lead','testing','0','250\r'),('54','85650','Hypothyroidism',' posttoablative','150','\r'),('55','25550','Sickle cell w/ crisis','management','150','2500'),('56','58710','Sickle cell w/o crisis','management','0','20\r'),('57','26590','Sickletocell trait','testing','250','225\r'),('58','44750','Anorexia nervosa','management','0','0\r'),('63','38520','Bulimia nervosa','management','0','0\r'),('65','95575','Hormone replacement therapy',' postmenopausal','50','50\r'),('69','60588','Menstruation',' excessive/frequent','25','50\r'),('70','30958','Menstruation',' painful','25','50\r'),('71','98908','Infertility',' female',' 0','150'),('73','35250','Ovarian failure',' management','25','50\r'),('74','98630','Ovarian failure',' stem cell','250','500\r'),('75','88920','Ovaries',' polycystic','25','50\r'),('76','85280','Pelvic inflammatory disease',' unspec','250','150\r'),('77','69250','Pelvic pain',' unspec female disease','250','150\r'),('80','99965','Infertility',' male',' 0','0\r'),('81','39548','Abnormality in fetal heart tracing','testing','2500','1500\r'),('82','36250','Sjogren\'s disease','management','213','250\r'),('83','35660','Pregnancy test/exam',' positive test ','150','10\r'),('84','98680','Referral w/o exam',' referra','l10','75\r'),('85','69560','Retained metal fragments',' unspec','0','0\r'),('86','48450','Screening for lead/heavy metals','metals test','250','110'),('87','58560','Screening',' breast cancer','150','150'),('88','57940','Screening',' cancer',' 150','150\r'),('89','79460','Screening',' cardiac disease','250','250\r'),('90','36560','Screening',' colon cancer','250','250\r'),('91','65260','Screening',' diabetes','75','100\r'),('92','36580','Screening',' lipoid disorders','250','250\r'),('93','25650','Screening',' PSA','150','250');
/*!40000 ALTER TABLE `procedures` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-20 19:48:03
