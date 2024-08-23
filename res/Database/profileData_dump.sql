-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.21 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for user
CREATE DATABASE IF NOT EXISTS `user` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `user`;

-- Dumping structure for table user.contact
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `profileId` int NOT NULL DEFAULT '0',
  `contact` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table user.contact: ~5 rows (approximately)
REPLACE INTO `contact` (`id`, `profileId`, `contact`) VALUES
	(1, 1, '65757575'),
	(2, 1, '45'),
	(3, 2, '45666666662626262'),
	(4, 2, 'test1@gmail.com6262'),
	(5, 3, 'beli@gmail.com');

-- Dumping structure for table user.profile
CREATE TABLE IF NOT EXISTS `profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL DEFAULT '0',
  `address` varchar(50) NOT NULL DEFAULT '0',
  `dob` date DEFAULT NULL,
  `NIC` varchar(50) NOT NULL DEFAULT '0',
  `contact` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table user.profile: ~3 rows (approximately)
REPLACE INTO `profile` (`id`, `name`, `address`, `dob`, `NIC`, `contact`) VALUES
	(1, 'test1', 'ydyd', '1997-10-10', '87', '0'),
	(2, 'test2', '87', '2000-10-19', '67', '0'),
	(3, 'nadeesha', '14/2, beliatta', '1996-10-05', '88', '0'),
	(4, 'dasun', 'no 2, hftfhf,sthshhs', '2000-10-19', '8765v', '0'),
	(5, 'tharuki', '87,nyfyf', '1987-12-25', '978725626v', '0');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
