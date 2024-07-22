-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.21-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
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
CREATE DATABASE IF NOT EXISTS `user` /*!40100 DEFAULT CHARACTER SET armscii8 COLLATE armscii8_bin */;
USE `user`;

-- Dumping structure for table user.con_dtl
CREATE TABLE IF NOT EXISTS `con_dtl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL DEFAULT 0,
  `contact` varchar(50) COLLATE armscii8_bin NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Dumping data for table user.con_dtl: ~15 rows (approximately)
INSERT INTO `con_dtl` (`id`, `profile_id`, `contact`) VALUES
	(131, 65, 'nni@gmail.com'),
	(132, 65, 'fb.com/nn1'),
	(135, 68, 'bimsara@per.ac.lk'),
	(136, 68, '0778310991'),
	(137, 68, 'bim@gmail.com'),
	(138, 68, 'https:/bimsara.com'),
	(139, 69, 'san@gmail.com'),
	(140, 66, 'savindi@gmail.io'),
	(142, 70, '87668880000000000000000000'),
	(143, 66, '0778312456'),
	(144, 67, '987651'),
	(145, 71, 'sandaruwan@gmail.com'),
	(146, 71, '0472240256'),
	(147, 66, '67ty@gmail.com'),
	(148, 72, '10000000000000');

-- Dumping structure for table user.profile
CREATE TABLE IF NOT EXISTS `profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE armscii8_bin DEFAULT '0',
  `dob` date DEFAULT NULL,
  `NIC` varchar(50) COLLATE armscii8_bin DEFAULT '0',
  `contact` varchar(50) COLLATE armscii8_bin DEFAULT '0',
  `address` varchar(255) COLLATE armscii8_bin DEFAULT '0',
  `age` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Dumping data for table user.profile: ~7 rows (approximately)
INSERT INTO `profile` (`id`, `name`, `dob`, `NIC`, `contact`, `address`, `age`) VALUES
	(65, 'Nayomi Thakshila', '2000-10-10', '7484', '0', '56ty', NULL),
	(66, 'Savindi Kavisha Dasanayaka', '2002-11-05', '20026545v', '0', 'Adrress, Gerada, No 4, Matara', NULL),
	(67, 'kasunika', '1998-11-06', '987654323v', '0', 'medayala', NULL),
	(68, 'bimsa', '1998-10-09', '633773', '0', 'bfgfhfhfj', NULL),
	(69, 'santhush nirmal', '2002-10-31', '10192929', '0', 'ss', NULL),
	(71, 'Premith Sandaruwan Gamage', '1997-08-09', '978654324v', '0', 'No 23/A, Tangalle Road, walasmulla', NULL),
	(72, 'NAYANAJITH ', '2000-10-20', '200010209181v', '0', 'gfteyehehh,dbddhhdhddh, 62727272, ffgfhf', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
