-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: weena_nadha
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(350) DEFAULT NULL,
  `design` varchar(50) DEFAULT NULL,
  `weight` int DEFAULT NULL,
  `category_ID` int DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `deal` varchar(45) DEFAULT NULL,
  `mrp` decimal(20,2) DEFAULT NULL,
  `shipping` tinyint(1) DEFAULT NULL,
  `warranty` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`product_ID`),
  KEY `product_FK` (`category_ID`),
  CONSTRAINT `product_FK` FOREIGN KEY (`category_ID`) REFERENCES `category` (`category_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'RockJam 61','Electric Keyboard with Modern Features: This electronic keyboard gives you access to 40 demos, 200 Tones, 200 Rhythms & the ability to record & playback 46 notes.','Plastic Frame',550,1,'white',200,34999.00,'HOT',58500.00,1,'3m'),(2,'RockJam 61 PRO','The Pro 61 Features : This electronic keyboard gives you access to 90 demos, 600 Tones, 400 Rhythms & the ability to record & playback 96 notes.','Semi Metallic',750,1,'blue',100,74999.00,'FLASH',95000.00,0,'6m'),(3,'Zur Musik','Offers children the essentials for playing those first tunes with 44 mini keys perfectly sized for mini hands. Try from the best manufatures all wide','FiberPlastic',400,1,'yellow',46,29999.00,'LIMITED',12499.00,1,'1y'),(4,'Red Magic','Studio standards with built in bluetooth and stero jacks for artists and musicians ','Plastic Frame',600,1,'red',32,35999.00,'PREMIUM',45000.00,1,'3m'),(5,'Casio-651','Wherever you are on your musical journey, and no matter your budget. Meet the C-651.','FiberPlastic',43,1,'black',4,28999.00,'HOT',50000.00,1,'3m'),(6,'Casio-12 lite','This top-of-the-line custom board is designed with a slightly more narrow','SolidPlastic',76,1,'black',5,23999.00,'FLASH',60000.00,0,'1y'),(7,'Yamaha-F6','This top-of-the-line custom Oboe is designed with a slightly more narrow','Wooden',891,3,'brown',55,21000.00,'PREMIUM',30000.00,0,'1y'),(8,'Yamaha-Dark','Beginner Acoustic Classical Guitar 30 Inch Nylon Strings Wooden Guitar Bundle Kit for Kid.','FiberDark',321,3,'black',7,49000.00,'FLASH',50000.00,0,'1y'),(9,'Yamaha-E10','Advanced Acoustic Electrical Guitar 30 Inch Nylon Strings elecrical Guitar Bundle Kit for Kid.','Titanium Frame',547,4,'semi white',9,55000.00,'HOT',62000.00,1,'3m'),(10,'Casio A-50',' SemiClassical Guitar 50 Inch Premium Nylon Strings Wooden base Guitar for Kid.','Steel',9,4,'Purple',88,45500.00,'HOT',50000.00,1,'6m'),(11,'Jazz Hiphop','The JAZZ is the perfect instrument for practice, travel or stage use – any time an acoustic guitar ','Metallic',424,4,'Black',200,25300.00,'FLASH',35000.00,0,'1y'),(12,'Jackson Series','From Jackson: Seven-string fans looking for a guitar that is as sleek and deadly as it is affordable ','Steel',700,4,'Blue',666,85400.00,'LIMITED',90000.00,1,'3m'),(13,'Casio Traveller T-89','The Ultra-Light is the smallest and most compact full-scale and full-featured electric model from Travel Guitar. When traveling, the Ultra-Light Electric will fit almost anywhere ','Semi Wooden',9,3,'Black',6,16700.00,'PREMIUM',23000.00,0,'6m'),(14,'Casio Traveller R-89','The Ultra-Light is the smallest and most compact full-scale and full-featured electric model from Travel Guitar. When traveling, the Ultra-Light Electric will fit almost anywhere ','Semi Wooden',23,3,'Red',32,25060.00,'HOT',28000.00,1,'6m'),(15,'F1 FUTE','flute is a beautifully constructed instrument that is easy to play and designed specifically for students who are beginner/intermediate flutist musicians. Power-forged keys on the FL-220 ','Metal',7,8,'Gold',44,11999.00,'PREMIUM',14000.00,1,'6m'),(16,' Tabla','This top-of-the-line custom Oboe is designed with a slightly more narrow','FiberPlastic',9,2,'yellow',2,24400.00,'PREMIUM',560000.00,0,'6m'),(17,'Piano Royal','The special matte black key tops are designed to absorb moisture and remain tactile after extended use without becoming slippery','Metal',34,2,'Black',5,125000.00,'HOT',150000.00,0,'6m'),(18,'Piano Royal W','The special Crytal White key tops are designed to absorb moisture and remain tactile after extended use without becoming slippery','Metal',8,2,'White',34,125000.00,'LIMITED',150000.00,0,'3m'),(19,'Yamaha Ultra','For over a century, Yamaha has crafted pianos fit for the world’s most prestigious concert halls. Now ARIUS recreates the touch of a Yamaha acoustic piano and our flagship CFX concert grand sound','Titanium Body',24,2,'Black',22,175999.00,'HOT',180000.00,1,'6m'),(20,'Clary C-90','he nickel-plated keys and bakelite body of the clarinet shows elegancy and beauty, with attracting ring-wrapped bell mouth, which is also nice-looking and durable','Metal',76,9,'Gold',32,24400.00,'PREMIUM',28000.00,1,'1y'),(21,'Clary c-90_G','he nickel-plated keys and bakelite body of the clarinet shows elegancy and beauty, with attracting ring-wrapped bell mouth, which is also nice-looking and durable','Metal',23,9,'white',6,28000.00,'FLASH',30000.00,1,'6m'),(22,'Clary c-91 Pro','he nickel-plated keys and bakelite body of the clarinet shows elegancy and beauty, with attracting ring-wrapped bell mouth, which is also nice-looking and durable','Metal',7,9,'blue',6,29400.00,'PREMIUM',35000.00,0,'6m'),(23,'Casio C-11a','Equipped with the Boehm 17 key system, this clarinet has fast key response and smooth playability, together with a wide range of tones, which brings with pure sound and rich tone.','Semi-Plastic',89,9,'Grey',32,35000.00,'FLASH',40000.00,0,'6m'),(24,'Drum Bi','Excellent workmanship with the experienced European designer helps to develop a excellent hardware. Smooth black powder coated hardware and natural glossy finish for  starters','Wooden',46,12,'Green',12,7900.00,'FLASH',10000.00,0,'6m'),(25,'Drum Bi Large','Selected authentic natural skin heads, delivers the tenability superior lively tone with and a good mix of melodic options. Natural glossy finish ensure for the well performance in your hand. Along with a tuning wrench for easily accurate tuning.','Wooden',550,12,'Black',44,25060.00,'LIMITED',60000.00,1,'6m'),(26,'Tabla Indian','Ultre Premium natural skin heads, delivers the tenability superior lively tone with and a good mix of melodic options. Natural glossy finish ensure for the well performance in your hand. Along with a tuning wrench for easily accurate tuning.','Wooden',8,13,'Black',12,24400.00,'PREMIUM',889899.00,1,'6m'),(27,'Electric keyboard','Feel The Difference Mesh Makes – All mesh electronic drum Kit heads deliver the most realistic, responsive and immersive playing experience drummers demand. the one and ony place supplying best goods for price the customer paying credits','Metallic',4,5,'Crystal Black',78,15000.00,'HOT',50000.00,1,'6m');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-12 12:19:07
