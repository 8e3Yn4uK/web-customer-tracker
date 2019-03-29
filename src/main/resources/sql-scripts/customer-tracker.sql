CREATE DATABASE  IF NOT EXISTS `web_customer_tracker`;
USE `web_customer_tracker`;


DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


LOCK TABLES `customer` WRITE;

INSERT INTO `customer` VALUES 
	(1,'Wojcieh','Szczesny','szczesny@gmail.com'),
	(3,'Giorgio','Chiellini','chiellini@yahoo.com'),
	(12,'Alex','Sandro','a.sandro@gmail.com'),
	(19,'Leonardo','Bonucci','leo19@gmail.com'),
	(20,'Joao','Cancelo','cancelo@yandex.ru'),
	(5,'Miralem','Pjanic','pjanic@rambler.ru'),
	(6,'Semi','Khedira','khedira@gmail.com'),
	(14,'Blaise','Matuidi','matuidi@gmail.com'),
	(23,'Emre','Can','can@yahoo.com'),
	(7,'Cristiano','Ronaldo','cr7@gmail.com'),
	(10,'Paulo','Dybala','dybala@yahoo.com'),
	(11,'Douglas','Costa','costa@yahoo.com'),
	(16,'Juan','Cuadrado','huan@gmail.com'),
	(17,'Mario','Mandzukic','s_mario@yahoo.com'),
	(33,'Federico','Bernardeschi','bernardeschi@gmail.com');

UNLOCK TABLES;

