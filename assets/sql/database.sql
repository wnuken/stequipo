-- --------------------------------------------------------
-- Host:                         192.168.33.10
-- Versión del servidor:         5.5.50 - MySQL Community Server (GPL) by Remi
-- SO del servidor:              Linux
-- HeidiSQL Versión:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para stequipo
DROP DATABASE IF EXISTS `stequipo`;
CREATE DATABASE IF NOT EXISTS `stequipo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `stequipo`;

-- Volcando estructura para tabla stequipo.user
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `rol_name` varchar(50) DEFAULT NULL COMMENT 'Id Admin User',
  `description` text COMMENT 'First Name',
  `available` varchar(50) DEFAULT NULL COMMENT 'modules available',
  `unavailable` varchar(50) DEFAULT NULL COMMENT 'modules unavailable',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla stequipo.roles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `rol_name`, `description`, `available`, `unavailable`) VALUES
  (1, 'Administrador', 'Usario Administrador', 'Allow', 'Disallow'),
  (2, 'Usuario', 'Usario Multinivel', 'Allow', 'Disallow'),
  (3, 'Control', 'Usario Controlador', 'Allow', 'Disallow');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;


-- Volcando estructura para tabla stequipo.admin_user
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE IF NOT EXISTS `admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id User',
  `user` varchar(50) DEFAULT NULL COMMENT 'User',
  `mail` varchar(50) DEFAULT NULL COMMENT 'e-amil',
  `password` varchar(255) DEFAULT NULL COMMENT 'Password',
  `id_rol` int(11) DEFAULT NULL COMMENT 'Id Rol',
  PRIMARY KEY (`id`),
  KEY `id_rol` (`id_rol`),
  CONSTRAINT `FK1_ID_ROL` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla stequipo.admin_user: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `admin_user` DISABLE KEYS */;
INSERT INTO `admin_user` (`id`, `user`, `mail`, `password`, `id_rol`) VALUES
	(1, 'admin', 'brisaning@gmail.com', 'admin', 1);
/*!40000 ALTER TABLE `admin_user` ENABLE KEYS */;

-- Volcando estructura para tabla stequipo.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `id_admin_user` int(11) NOT NULL DEFAULT '0' COMMENT 'Id Admin User',
  `first_name` varchar(50) DEFAULT NULL COMMENT 'First Name',
  `last_name` varchar(50) DEFAULT NULL COMMENT 'Last Name',
  `dni` varchar(50) NOT NULL DEFAULT '0' COMMENT 'Document Identification',
  `mail` varchar(50) DEFAULT NULL COMMENT 'E-Mail',
  `address` varchar(50) DEFAULT NULL COMMENT 'Address',
  `phone` varchar(50) DEFAULT NULL COMMENT 'Phone',
  `other_data` text COMMENT 'Others data json',
  `birthday` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dni` (`dni`),
  KEY `id_admin_user` (`id_admin_user`),
  CONSTRAINT `FK1_ADMIN_USER` FOREIGN KEY (`id_admin_user`) REFERENCES `admin_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla stequipo.user: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Volcando estructura para tabla stequipo.parent_user
DROP TABLE IF EXISTS `parent_user`;
CREATE TABLE IF NOT EXISTS `parent_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `user` int(11) DEFAULT NULL COMMENT 'Current User',
  `parent` int(11) DEFAULT NULL COMMENT 'Parent',
  `children` text COMMENT 'Children',
  `group` int(11) DEFAULT NULL COMMENT 'Group',
  `is_initial` int(11) DEFAULT '0' COMMENT 'Is initial user',
  `register` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `parent` (`parent`),
  CONSTRAINT `FK1_PARENT` FOREIGN KEY (`parent`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK2_USER` FOREIGN KEY (`user`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla stequipo.parent_user: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `parent_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `parent_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
