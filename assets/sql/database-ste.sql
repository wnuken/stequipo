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
USE `ste_factura`;

-- Volcando estructura para tabla stequipo.user
DROP TABLE IF EXISTS `ste_roles`;
CREATE TABLE IF NOT EXISTS `ste_roles` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `rol_name` varchar(50) DEFAULT NULL COMMENT 'Id Admin User',
  `description` text COMMENT 'First Name',
  `available` varchar(50) DEFAULT NULL COMMENT 'modules available',
  `unavailable` varchar(50) DEFAULT NULL COMMENT 'modules unavailable',
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla stequipo.ste_roles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ste_roles` DISABLE KEYS */;
INSERT INTO `ste_roles` (`id_rol`, `rol_name`, `description`, `available`, `unavailable`) VALUES
(1, 'Administrador', 'Usario Administrador', 'Allow', 'Disallow'),
(2, 'Usuario', 'Usario Multinivel', 'Allow', 'Disallow'),
(3, 'Control', 'Usario Controlador', 'Allow', 'Disallow');
/*!40000 ALTER TABLE `ste_roles` ENABLE KEYS */;


-- Volcando estructura para tabla stequipo.ste_user
DROP TABLE IF EXISTS `ste_user`;
CREATE TABLE IF NOT EXISTS `ste_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `idrol` int(11) DEFAULT NULL COMMENT 'Id Rol',
  `codcliente` varchar(6) NOT NULL DEFAULT '0' COMMENT 'Customer Code',
  `cifnif` varchar(20) NOT NULL DEFAULT '0' COMMENT 'Document Identification',
  `user` varchar(50) DEFAULT NULL COMMENT 'User',
  `password` varchar(255) DEFAULT NULL COMMENT 'Password',
  `other_data` text COMMENT 'Others data json',
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `cifnif` (`cifnif`),
  KEY `codcliente` (`codcliente`),
  KEY `idrol` (`idrol`),
  CONSTRAINT `FK1_ID_ROL` FOREIGN KEY (`idrol`) REFERENCES `ste_roles` (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla stequipo.ste_user: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ste_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `ste_user` ENABLE KEYS */;

-- Volcando estructura para tabla stequipo.ste_parent
DROP TABLE IF EXISTS `ste_parent`;
CREATE TABLE IF NOT EXISTS `ste_parent` (
  `id_parent` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `parent` int(11) DEFAULT NULL COMMENT 'Parent',
  `user` int(11) DEFAULT NULL COMMENT 'Current User',
  `children` text COMMENT 'Children',
  `group` int(11) DEFAULT NULL COMMENT 'Group',
  `is_initial` int(11) DEFAULT '0' COMMENT 'Is initial user',
  `fechaalta` date NOT NULL,
  PRIMARY KEY (`id_parent`),
  KEY `user` (`user`),
  KEY `parent` (`parent`),
  CONSTRAINT `FK1_PARENT` FOREIGN KEY (`parent`) REFERENCES `ste_user` (`id_user`) ON DELETE CASCADE,
  CONSTRAINT `FK2_USER` FOREIGN KEY (`user`) REFERENCES `ste_user` (`id_user`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla stequipo.ste_parent: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ste_parent` DISABLE KEYS */;
/*!40000 ALTER TABLE `ste_parent` ENABLE KEYS */;


-- Volcando estructura para tabla stequipo.ste_pay
DROP TABLE IF EXISTS `ste_pay`;
CREATE TABLE IF NOT EXISTS `ste_pay` (
  `id_pay` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `idparent` int(11) DEFAULT NULL COMMENT 'Pay User',
  `value` varchar(50) DEFAULT NULL COMMENT 'Value',
  `date` date NOT NULL COMMENT 'Date',
  `period` date NOT NULL COMMENT 'period',
  `type` int(11) DEFAULT NULL COMMENT 'Type',
  `bill` varchar(50) DEFAULT NULL COMMENT 'Bill',
  PRIMARY KEY (`id_pay`),
  KEY `idparent` (`idparent`),
  CONSTRAINT `FK1_USER_PAY` FOREIGN KEY (`idparent`) REFERENCES `ste_parent` (`id_parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla stequipo.ste_pay: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ste_pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `ste_pay` ENABLE KEYS */;


/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
