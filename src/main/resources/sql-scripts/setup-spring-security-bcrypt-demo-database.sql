DROP DATABASE  IF EXISTS `spring_security_demo_bcrypt`;

CREATE DATABASE  IF NOT EXISTS `spring_security_demo_bcrypt`;
USE `spring_security_demo_bcrypt`;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` char(68) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `users` 
VALUES 
('user','{bcrypt}$2a$04$GtRlf/obmOzVXM8gE/8ea.3X/rBtkLk9zLFkESEMJ.RysdxoC3aai',1),
('manager','{bcrypt}$2a$04$GtRlf/obmOzVXM8gE/8ea.3X/rBtkLk9zLFkESEMJ.RysdxoC3aai',1),
('admin','{bcrypt}$2a$04$GtRlf/obmOzVXM8gE/8ea.3X/rBtkLk9zLFkESEMJ.RysdxoC3aai',1);



DROP TABLE IF EXISTS `authorities`;
CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `authorities_idx_1` (`username`,`authority`),
  CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `authorities` 
VALUES 
('user','ROLE_USER'),
('manager','ROLE_USER'),
('manager','ROLE_MANAGER'),
('admin','ROLE_USER'),
('admin','ROLE_ADMIN');


