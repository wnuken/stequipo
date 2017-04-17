-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: 166.62.86.144    Database: tusmodul_facscript
-- ------------------------------------------------------
-- Server version	5.5.54-cll

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
-- Table structure for table `agenciastrans`
--

DROP TABLE IF EXISTS `agenciastrans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agenciastrans` (
  `codtrans` varchar(8) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `telefono` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `web` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`codtrans`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenciastrans`
--

LOCK TABLES `agenciastrans` WRITE;
/*!40000 ALTER TABLE `agenciastrans` DISABLE KEYS */;
INSERT INTO `agenciastrans` VALUES ('','CENCO EPRES','3282599','',1);
/*!40000 ALTER TABLE `agenciastrans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agentes`
--

DROP TABLE IF EXISTS `agentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agentes` (
  `apellidos` varchar(100) COLLATE utf8_bin NOT NULL,
  `ciudad` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `codagente` varchar(10) COLLATE utf8_bin NOT NULL,
  `coddepartamento` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dnicif` varchar(15) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fax` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `idusuario` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `nombreap` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `porcomision` double DEFAULT NULL,
  `provincia` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `telefono` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `seg_social` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cargo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `banco` varchar(34) COLLATE utf8_bin DEFAULT NULL,
  `f_alta` date DEFAULT NULL,
  `f_baja` date DEFAULT NULL,
  `f_nacimiento` date DEFAULT NULL,
  PRIMARY KEY (`codagente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agentes`
--

LOCK TABLES `agentes` WRITE;
/*!40000 ALTER TABLE `agentes` DISABLE KEYS */;
INSERT INTO `agentes` VALUES ('Pepe',NULL,'1',NULL,NULL,NULL,NULL,'00000014Z',NULL,NULL,NULL,NULL,NULL,'Paco',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Ospina Martinez','','2',NULL,NULL,'','','42024933','ospinamartinezaleyda@gmail.com',NULL,NULL,NULL,NULL,'Aleyda',NULL,0,'','3175810382','','','','2017-03-29',NULL,'1970-04-09');
/*!40000 ALTER TABLE `agentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albaranescli`
--

DROP TABLE IF EXISTS `albaranescli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albaranescli` (
  `apartado` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `cifnif` varchar(20) COLLATE utf8_bin NOT NULL,
  `ciudad` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codagente` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codcliente` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `coddir` int(11) DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codigo` varchar(20) COLLATE utf8_bin NOT NULL,
  `codpago` varchar(10) COLLATE utf8_bin NOT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `direccion` varchar(100) COLLATE utf8_bin NOT NULL,
  `fecha` date NOT NULL,
  `hora` time DEFAULT '00:00:00',
  `femail` date DEFAULT NULL,
  `idalbaran` int(11) NOT NULL AUTO_INCREMENT,
  `idfactura` int(11) DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `irpf` double NOT NULL DEFAULT '0',
  `neto` double NOT NULL DEFAULT '0',
  `nombrecliente` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `numero` varchar(12) COLLATE utf8_bin NOT NULL,
  `numero2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `observaciones` text COLLATE utf8_bin,
  `porcomision` double DEFAULT NULL,
  `provincia` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ptefactura` tinyint(1) NOT NULL DEFAULT '1',
  `recfinanciero` double NOT NULL DEFAULT '0',
  `tasaconv` double NOT NULL DEFAULT '1',
  `total` double NOT NULL DEFAULT '0',
  `totaleuros` double NOT NULL DEFAULT '0',
  `totalirpf` double NOT NULL DEFAULT '0',
  `totaliva` double NOT NULL DEFAULT '0',
  `totalrecargo` double NOT NULL DEFAULT '0',
  `codtrans` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `codigoenv` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `nombreenv` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `apellidosenv` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `direccionenv` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codpostalenv` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `ciudadenv` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `provinciaenv` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `apartadoenv` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codpaisenv` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `numdocs` int(11) DEFAULT '0',
  PRIMARY KEY (`idalbaran`),
  UNIQUE KEY `uniq_codigo_albaranescli` (`codigo`),
  KEY `ca_albaranescli_series2` (`codserie`),
  KEY `ca_albaranescli_ejercicios2` (`codejercicio`),
  KEY `ca_albaranescli_facturas` (`idfactura`),
  CONSTRAINT `ca_albaranescli_series2` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE,
  CONSTRAINT `ca_albaranescli_ejercicios2` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE,
  CONSTRAINT `ca_albaranescli_facturas` FOREIGN KEY (`idfactura`) REFERENCES `facturascli` (`idfactura`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albaranescli`
--

LOCK TABLES `albaranescli` WRITE;
/*!40000 ALTER TABLE `albaranescli` DISABLE KEYS */;
/*!40000 ALTER TABLE `albaranescli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albaranesprov`
--

DROP TABLE IF EXISTS `albaranesprov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albaranesprov` (
  `cifnif` varchar(20) COLLATE utf8_bin NOT NULL,
  `codagente` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codigo` varchar(20) COLLATE utf8_bin NOT NULL,
  `codpago` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codproveedor` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL DEFAULT '00:00:00',
  `idalbaran` int(11) NOT NULL AUTO_INCREMENT,
  `idfactura` int(11) DEFAULT NULL,
  `irpf` double NOT NULL DEFAULT '0',
  `neto` double NOT NULL DEFAULT '0',
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `numero` varchar(12) COLLATE utf8_bin NOT NULL,
  `numproveedor` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `observaciones` text COLLATE utf8_bin,
  `ptefactura` tinyint(1) NOT NULL DEFAULT '1',
  `recfinanciero` double NOT NULL DEFAULT '0',
  `tasaconv` double NOT NULL DEFAULT '1',
  `total` double NOT NULL DEFAULT '0',
  `totaleuros` double NOT NULL DEFAULT '0',
  `totalirpf` double NOT NULL DEFAULT '0',
  `totaliva` double NOT NULL DEFAULT '0',
  `totalrecargo` double NOT NULL DEFAULT '0',
  `numdocs` int(11) DEFAULT '0',
  PRIMARY KEY (`idalbaran`),
  UNIQUE KEY `uniq_codigo_albaranesprov` (`codigo`),
  KEY `ca_albaranesprov_series2` (`codserie`),
  KEY `ca_albaranesprov_ejercicios2` (`codejercicio`),
  KEY `ca_albaranesprov_facturas` (`idfactura`),
  CONSTRAINT `ca_albaranesprov_series2` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE,
  CONSTRAINT `ca_albaranesprov_ejercicios2` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE,
  CONSTRAINT `ca_albaranesprov_facturas` FOREIGN KEY (`idfactura`) REFERENCES `facturasprov` (`idfactura`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albaranesprov`
--

LOCK TABLES `albaranesprov` WRITE;
/*!40000 ALTER TABLE `albaranesprov` DISABLE KEYS */;
/*!40000 ALTER TABLE `albaranesprov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `almacenes`
--

DROP TABLE IF EXISTS `almacenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `almacenes` (
  `apartado` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin NOT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `contacto` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fax` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `observaciones` text COLLATE utf8_bin,
  `poblacion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `porpvp` double DEFAULT NULL,
  `provincia` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `telefono` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `tipovaloracion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`codalmacen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacenes`
--

LOCK TABLES `almacenes` WRITE;
/*!40000 ALTER TABLE `almacenes` DISABLE KEYS */;
INSERT INTO `almacenes` VALUES (NULL,'ALG',NULL,'','','','',NULL,'ALMACEN GENERAL',NULL,'',NULL,NULL,'',NULL);
/*!40000 ALTER TABLE `almacenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulo_propiedades`
--

DROP TABLE IF EXISTS `articulo_propiedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulo_propiedades` (
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `referencia` varchar(18) COLLATE utf8_bin NOT NULL,
  `text` text COLLATE utf8_bin,
  PRIMARY KEY (`name`,`referencia`),
  KEY `ca_articulo_propiedades_articulos` (`referencia`),
  CONSTRAINT `ca_articulo_propiedades_articulos` FOREIGN KEY (`referencia`) REFERENCES `articulos` (`referencia`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo_propiedades`
--

LOCK TABLES `articulo_propiedades` WRITE;
/*!40000 ALTER TABLE `articulo_propiedades` DISABLE KEYS */;
/*!40000 ALTER TABLE `articulo_propiedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulo_trazas`
--

DROP TABLE IF EXISTS `articulo_trazas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulo_trazas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `referencia` varchar(18) COLLATE utf8_bin NOT NULL,
  `numserie` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `lote` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `fecha_entrada` date DEFAULT NULL,
  `fecha_salida` date DEFAULT NULL,
  `idlalbventa` int(11) DEFAULT NULL,
  `idlfacventa` int(11) DEFAULT NULL,
  `idlalbcompra` int(11) DEFAULT NULL,
  `idlfaccompra` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_codigo_articulo_trazas` (`numserie`),
  KEY `ca_articulo_trazas_articulos` (`referencia`),
  KEY `ca_articulo_trazas_linalbcli` (`idlalbventa`),
  KEY `ca_articulo_trazas_linfaccli` (`idlfacventa`),
  KEY `ca_articulo_trazas_linalbprov` (`idlalbcompra`),
  KEY `ca_articulo_trazas_linfacprov` (`idlfaccompra`),
  CONSTRAINT `ca_articulo_trazas_articulos` FOREIGN KEY (`referencia`) REFERENCES `articulos` (`referencia`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ca_articulo_trazas_linalbcli` FOREIGN KEY (`idlalbventa`) REFERENCES `lineasalbaranescli` (`idlinea`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ca_articulo_trazas_linfaccli` FOREIGN KEY (`idlfacventa`) REFERENCES `lineasfacturascli` (`idlinea`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ca_articulo_trazas_linalbprov` FOREIGN KEY (`idlalbcompra`) REFERENCES `lineasalbaranesprov` (`idlinea`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ca_articulo_trazas_linfacprov` FOREIGN KEY (`idlfaccompra`) REFERENCES `lineasfacturasprov` (`idlinea`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo_trazas`
--

LOCK TABLES `articulo_trazas` WRITE;
/*!40000 ALTER TABLE `articulo_trazas` DISABLE KEYS */;
/*!40000 ALTER TABLE `articulo_trazas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulos` (
  `factualizado` date DEFAULT NULL,
  `bloqueado` tinyint(1) DEFAULT '0',
  `equivalencia` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `idsubcuentairpfcom` int(11) DEFAULT NULL,
  `idsubcuentacom` int(11) DEFAULT NULL,
  `stockmin` double DEFAULT '0',
  `observaciones` text COLLATE utf8_bin,
  `codbarras` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `stockfis` double DEFAULT '0',
  `stockmax` double DEFAULT '0',
  `costemedio` double DEFAULT '0',
  `preciocoste` double DEFAULT '0',
  `tipocodbarras` varchar(8) COLLATE utf8_bin DEFAULT 'Code39',
  `nostock` tinyint(1) DEFAULT NULL,
  `codsubcuentacom` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` text COLLATE utf8_bin NOT NULL,
  `codsubcuentairpfcom` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `secompra` tinyint(1) DEFAULT NULL,
  `codfamilia` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `imagen` text COLLATE utf8_bin,
  `controlstock` tinyint(1) DEFAULT '0',
  `referencia` varchar(18) COLLATE utf8_bin NOT NULL,
  `tipo` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `pvp` double DEFAULT '0',
  `sevende` tinyint(1) DEFAULT NULL,
  `publico` tinyint(1) DEFAULT '0',
  `partnumber` varchar(38) COLLATE utf8_bin DEFAULT NULL,
  `trazabilidad` tinyint(1) DEFAULT '0',
  `codfabricante` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`referencia`),
  KEY `ca_articulos_impuestos2` (`codimpuesto`),
  CONSTRAINT `ca_articulos_impuestos2` FOREIGN KEY (`codimpuesto`) REFERENCES `impuestos` (`codimpuesto`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos`
--

LOCK TABLES `articulos` WRITE;
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` VALUES ('2017-02-13',0,NULL,NULL,NULL,0,'','','CO0',0,0,0,0,'Code39',0,NULL,'SERVICIO PRESTADO SEPARADO PAQUETE',NULL,1,'VARI',NULL,1,'CONFERENCIA_UNIDAD',NULL,80000,1,0,'',1,NULL),('2017-02-13',0,'andres',NULL,NULL,0,'','','CO0',0,0,2000,2500,'Code39',0,NULL,'sal marina',NULL,1,NULL,NULL,1,'sal ajo',NULL,4995,1,0,NULL,0,NULL),('2017-02-13',0,'andres',NULL,NULL,0,'','','CO0',0,0,2000,2500,'Code39',0,NULL,'sal marina',NULL,1,NULL,NULL,1,'sal comino',NULL,4995,1,0,NULL,0,NULL),('2017-02-13',0,'andres',NULL,NULL,0,'','','CO0',0,0,2000,2500,'Code39',0,NULL,'sal marina',NULL,1,NULL,NULL,1,'sal natural',NULL,4995,1,0,NULL,0,NULL),('2017-02-13',0,NULL,NULL,NULL,0,'','','CO0',0,0,2000,0,'Code39',0,NULL,'sal marina',NULL,1,NULL,NULL,1,'sal oregano',NULL,4995,1,0,NULL,0,NULL),('2017-02-13',0,'andres',NULL,NULL,0,'','','CO0',0,0,2000,2500,'Code39',0,NULL,'sal marina',NULL,1,NULL,NULL,1,'sal paprika',NULL,4995,1,0,NULL,0,NULL),('2017-02-13',0,'andres',NULL,NULL,0,'','','CO0',0,0,2500,2500,'Code39',0,NULL,'sal marina',NULL,1,NULL,NULL,1,'sal pimienta',NULL,4995,1,0,NULL,0,NULL),('2017-02-13',0,NULL,NULL,NULL,0,'','','CO0',0,0,0,0,'Code39',0,NULL,'conferencias',NULL,0,NULL,NULL,1,'servicio',NULL,250000,1,0,'',0,NULL);
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulosprov`
--

DROP TABLE IF EXISTS `articulosprov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulosprov` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `referencia` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  `codproveedor` varchar(6) COLLATE utf8_bin NOT NULL,
  `refproveedor` varchar(25) COLLATE utf8_bin NOT NULL,
  `descripcion` text COLLATE utf8_bin,
  `precio` double DEFAULT NULL,
  `dto` double DEFAULT NULL,
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `stock` double DEFAULT NULL,
  `nostock` tinyint(1) DEFAULT '1',
  `nombre` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `codbarras` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  `partnumber` varchar(38) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_articulo_proveedor2` (`codproveedor`,`refproveedor`),
  CONSTRAINT `ca_articulosprov_proveedores` FOREIGN KEY (`codproveedor`) REFERENCES `proveedores` (`codproveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulosprov`
--

LOCK TABLES `articulosprov` WRITE;
/*!40000 ALTER TABLE `articulosprov` DISABLE KEYS */;
INSERT INTO `articulosprov` VALUES (1,'sal natural','000001','andres','sal marina',2000,0,'CO0',0,1,NULL,NULL,NULL,NULL),(2,'sal ajo','000001','sal ajo','sal marina',2000,0,'CO0',0,1,NULL,NULL,NULL,NULL),(3,'sal comino','000001','sal comino','sal marina',2000,0,'CO0',0,1,NULL,NULL,NULL,NULL),(4,'sal oregano','000001','sal oregano','sal marina',2000,0,'CO0',0,1,NULL,NULL,NULL,NULL),(5,'sal paprika','000001','sal paprika','sal marina',2000,0,'CO0',0,1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `articulosprov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atributos`
--

DROP TABLE IF EXISTS `atributos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atributos` (
  `codatributo` varchar(8) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`codatributo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atributos`
--

LOCK TABLES `atributos` WRITE;
/*!40000 ALTER TABLE `atributos` DISABLE KEYS */;
/*!40000 ALTER TABLE `atributos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cajas`
--

DROP TABLE IF EXISTS `cajas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cajas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fs_id` int(11) NOT NULL,
  `codagente` varchar(10) COLLATE utf8_bin NOT NULL,
  `f_inicio` timestamp NOT NULL DEFAULT '2017-02-20 07:00:00',
  `d_inicio` double NOT NULL DEFAULT '0',
  `f_fin` timestamp NULL DEFAULT NULL,
  `d_fin` double DEFAULT NULL,
  `tickets` int(11) DEFAULT NULL,
  `ip` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cajas`
--

LOCK TABLES `cajas` WRITE;
/*!40000 ALTER TABLE `cajas` DISABLE KEYS */;
/*!40000 ALTER TABLE `cajas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cajas_terminales`
--

DROP TABLE IF EXISTS `cajas_terminales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cajas_terminales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codalmacen` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `codcliente` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `tickets` text COLLATE utf8_bin,
  `anchopapel` int(11) DEFAULT NULL,
  `comandocorte` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `comandoapertura` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `num_tickets` int(11) DEFAULT NULL,
  `sin_comandos` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cajas_terminales`
--

LOCK TABLES `cajas_terminales` WRITE;
/*!40000 ALTER TABLE `cajas_terminales` DISABLE KEYS */;
/*!40000 ALTER TABLE `cajas_terminales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `capitalimpagado` double DEFAULT NULL,
  `cifnif` varchar(20) COLLATE utf8_bin NOT NULL,
  `codagente` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codcliente` varchar(6) COLLATE utf8_bin NOT NULL,
  `codcontacto` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codcuentadom` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codcuentarem` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `codedi` varchar(17) COLLATE utf8_bin DEFAULT NULL,
  `codgrupo` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codpago` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuenta` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codtiporappel` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `contacto` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `copiasfactura` int(11) DEFAULT NULL,
  `debaja` tinyint(1) DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fax` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `fechabaja` date DEFAULT NULL,
  `fechaalta` date DEFAULT NULL,
  `idsubcuenta` int(11) DEFAULT NULL,
  `ivaincluido` tinyint(1) DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `razonsocial` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `observaciones` text COLLATE utf8_bin,
  `recargo` tinyint(1) DEFAULT NULL,
  `regimeniva` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `riesgoalcanzado` double DEFAULT NULL,
  `riesgomax` double DEFAULT NULL,
  `telefono1` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `telefono2` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `tipoidfiscal` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT 'NIF',
  `personafisica` tinyint(1) DEFAULT '1',
  `web` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `diaspago` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`codcliente`),
  KEY `ca_clientes_grupos` (`codgrupo`),
  CONSTRAINT `ca_clientes_grupos` FOREIGN KEY (`codgrupo`) REFERENCES `gruposclientes` (`codgrupo`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (NULL,'',NULL,'000001',NULL,NULL,NULL,'COP',NULL,NULL,'TRANS',NULL,NULL,NULL,NULL,NULL,0,'','',NULL,'2017-02-13',NULL,NULL,'pedro','pedro','',0,'General',NULL,NULL,'','','NIT/CC',1,'',NULL),(NULL,'50869852',NULL,'000002',NULL,NULL,NULL,'COP',NULL,NULL,'TRANS',NULL,NULL,NULL,NULL,NULL,0,'ninfasierra@yahoo.com','',NULL,'2017-02-20',NULL,NULL,'NINFA SIERRA DORIA','NINFA SIERRA DORIA','pago membresia',0,'Exento',NULL,NULL,'3104956788','','NIT/CC',1,'4 REF BETSABE','3'),(NULL,'73137474',NULL,'000003',NULL,NULL,NULL,'COP',NULL,NULL,'TRANS',NULL,NULL,NULL,NULL,NULL,0,'','',NULL,'2017-02-23',NULL,NULL,'NEVER ENRIQUE LOZAN0 SUAREZ','NEVER ENRIQUE LOZAN0 SUAREZ','',0,'General',NULL,NULL,'3506170980','','NIT/CC',1,'',NULL),(NULL,'41503927',NULL,'000005',NULL,NULL,NULL,'COP',NULL,NULL,'TRANS',NULL,NULL,NULL,NULL,NULL,0,'ribet123@hotmail.com','',NULL,'2017-03-26',NULL,NULL,'BETSABE PETECUA PACHECO','BETSABE PETECUA PACHECO','cancelo membresia',0,'General',NULL,NULL,'3164388499','','NIT/CC',1,'','5'),(NULL,'73578054',NULL,'000006',NULL,NULL,NULL,'COP',NULL,NULL,'TRANS',NULL,NULL,NULL,NULL,NULL,0,'ribafe1020@hotmail.com','',NULL,'2017-03-26',NULL,NULL,'RICHARD EMERSON BAUTISTA','RICHARD EMERSON BAUTISTA','pago  membresia',0,'General',NULL,NULL,'3174362703','','NIT/CC',1,'1  REF BETSABE','12'),(NULL,'45524464',NULL,'000007',NULL,NULL,NULL,'COP',NULL,NULL,'TRANS',NULL,NULL,NULL,NULL,NULL,0,'tatyhega@hotmail.com','',NULL,'2017-03-26',NULL,NULL,'TATIANA RAQUEL HERNANDEZ','TATIANA RAQUEL HERNANDEZ','pago membresia',0,'General',NULL,NULL,'3117760806','','NIT/CC',1,'1 REF RICHAR','19'),(NULL,'28788132','2','000008',NULL,NULL,NULL,'COP',NULL,NULL,'TRANS',NULL,NULL,NULL,NULL,NULL,0,'amgarcia28@hotmail.com','',NULL,'2017-03-26',NULL,NULL,'MIGDONIA RINCON BETANCOURT','MIGDONIA RINCON BETANCOURT','pago membresia',0,'General',NULL,NULL,'3134951328','','NIT/CC',1,'2 REF BETSABE','14'),(NULL,'51574501',NULL,'000009',NULL,NULL,NULL,'COP',NULL,NULL,'TRANS',NULL,NULL,NULL,NULL,NULL,0,'leycaro82@hotmail.com','',NULL,'2017-04-03',NULL,NULL,'LUZ ESTELLA BERNAL ROBAYO','LUZ ESTELLA BERNAL ROBAYO','',0,'General',NULL,NULL,'3194159893','','NIT/CC',1,'3 REF BETSABE','26'),(NULL,'1047492223',NULL,'000010',NULL,NULL,NULL,'COP',NULL,NULL,'TRANS',NULL,NULL,NULL,NULL,NULL,0,'kradas15@gmail.com','',NULL,'2017-04-03',NULL,NULL,'KATHERINE RADA SIERRA','KATHERINE RADA SIERRA','pago membresia',0,'General',NULL,NULL,'3103678207','','NIT/CC',1,'2 REF RICHARD',NULL),(NULL,'79286369',NULL,'000011',NULL,NULL,NULL,'COP',NULL,NULL,'TRANS',NULL,NULL,NULL,NULL,NULL,0,'heipo755@gmail.com','',NULL,'2017-04-05',NULL,NULL,'HENRY MORA HILARION','HENRY MORA HILARION','pago membresia',0,'General',NULL,NULL,'3193588504','','NIT/CC',1,'1 REF ALEYDA','3'),(NULL,'92188038',NULL,'000012',NULL,NULL,NULL,'COP',NULL,NULL,'TRANS',NULL,NULL,NULL,NULL,NULL,0,'cesmo.net@hotmail.com','',NULL,'2017-04-05',NULL,NULL,'CESAR  TULIO   ESTRADA  MORENO','CESAR  TULIO   ESTRADA  MORENO','pago membresia',0,'General',NULL,NULL,'3234851217','','NIT/CC',1,'1 REF KATHERINE','3'),(NULL,'25249285',NULL,'000013',NULL,NULL,NULL,'COP',NULL,NULL,'TRANS',NULL,NULL,NULL,NULL,NULL,0,'leycaro82@gmail.com','',NULL,'2017-04-05',NULL,NULL,'LEIDY CAROLINA RIOS','LEIDY CAROLINA RIOS','no ha cancelado membresia',0,'General',NULL,NULL,'3204128595','','NIT/CC',1,'1 REF LUZ ESTELLA','3'),(NULL,'42024933',NULL,'000014',NULL,NULL,NULL,'COP',NULL,NULL,'TRANS',NULL,NULL,NULL,NULL,NULL,0,'ospinamartinezaleyda@gmail.com','',NULL,'2017-04-06',NULL,NULL,'ALEYDA OSPINA MARTINEZ','ALEYDA OSPINA MARTINEZ','no cancelo membresia',0,'General',NULL,NULL,'3175810382','','NIT/CC',1,'1 REF MIGDONIA','26'),(NULL,'28788239',NULL,'000015',NULL,NULL,NULL,'COP',NULL,NULL,'TRANS',NULL,NULL,NULL,NULL,NULL,0,'soraidarom1@hotmail.com','',NULL,'2017-04-06',NULL,NULL,'ZORAYDA ROMERO RODRIGUEZ','ZORAYDA ROMERO RODRIGUEZ','pago membresia',0,'General',NULL,NULL,'3014826655','','NIT/CC',1,'2 REF MIGDONIA','3');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_asientos`
--

DROP TABLE IF EXISTS `co_asientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_asientos` (
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codplanasiento` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `concepto` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `documento` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `editable` tinyint(1) NOT NULL,
  `fecha` date NOT NULL,
  `idasiento` int(11) NOT NULL AUTO_INCREMENT,
  `idconcepto` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `importe` double DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `tipodocumento` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idasiento`),
  KEY `ca_co_asientos_ejercicios2` (`codejercicio`),
  CONSTRAINT `ca_co_asientos_ejercicios2` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_asientos`
--

LOCK TABLES `co_asientos` WRITE;
/*!40000 ALTER TABLE `co_asientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_asientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_codbalances08`
--

DROP TABLE IF EXISTS `co_codbalances08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_codbalances08` (
  `descripcion4ba` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `descripcion4` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `nivel4` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `descripcion3` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `orden3` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `nivel3` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `descripcion2` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `nivel2` int(11) DEFAULT NULL,
  `descripcion1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `nivel1` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `naturaleza` varchar(15) COLLATE utf8_bin NOT NULL,
  `codbalance` varchar(15) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`codbalance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_codbalances08`
--

LOCK TABLES `co_codbalances08` WRITE;
/*!40000 ALTER TABLE `co_codbalances08` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_codbalances08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_conceptospar`
--

DROP TABLE IF EXISTS `co_conceptospar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_conceptospar` (
  `concepto` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `idconceptopar` varchar(4) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idconceptopar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_conceptospar`
--

LOCK TABLES `co_conceptospar` WRITE;
/*!40000 ALTER TABLE `co_conceptospar` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_conceptospar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_cuentas`
--

DROP TABLE IF EXISTS `co_cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_cuentas` (
  `codbalance` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codcuenta` varchar(6) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codepigrafe` varchar(6) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `idcuenta` int(11) NOT NULL AUTO_INCREMENT,
  `idcuentaesp` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `idepigrafe` int(11) NOT NULL,
  PRIMARY KEY (`idcuenta`),
  UNIQUE KEY `uniq_codcuenta` (`codcuenta`,`codejercicio`),
  KEY `ca_co_cuentas_ejercicios` (`codejercicio`),
  KEY `ca_co_cuentas_epigrafes2` (`idepigrafe`),
  CONSTRAINT `ca_co_cuentas_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ca_co_cuentas_epigrafes2` FOREIGN KEY (`idepigrafe`) REFERENCES `co_epigrafes` (`idepigrafe`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_cuentas`
--

LOCK TABLES `co_cuentas` WRITE;
/*!40000 ALTER TABLE `co_cuentas` DISABLE KEYS */;
INSERT INTO `co_cuentas` VALUES (NULL,'1105','2017','11','CAJA',1,'CAJA',1),(NULL,'1110','2017','11','BANCOS',2,'',1),(NULL,'1115','2017','11','REMESAS EN TRANSITO',3,'',1),(NULL,'1120','2017','11','CUENTAS DE AHORRO',4,'',1),(NULL,'1125','2017','11','FONDOS',5,'',1),(NULL,'1205','2017','12','ACCIONES',6,'',2),(NULL,'1210','2017','12','CUOTAS O PARTES DE INTERES SOCIAL',7,'',2),(NULL,'1215','2017','12','BONOS',8,'',2),(NULL,'1220','2017','12','CEDULAS',9,'',2),(NULL,'1225','2017','12','CERTIFICADOS',10,'',2),(NULL,'1230','2017','12','PAPELES COMERCIALES',11,'',2),(NULL,'1235','2017','12','TITULOS',12,'',2),(NULL,'1240','2017','12','ACEPTACIONES BANCARIAS O FINANCIERAS',13,'',2),(NULL,'1245','2017','12','DERECHOS FIDUCIARIOS',14,'',2),(NULL,'1250','2017','12','DERECHOS DE RECOMPRA DE INVERSIONES NEGOCIADAS (REPOS)',15,'',2),(NULL,'1255','2017','12','OBLIGATORIAS',16,'',2),(NULL,'1260','2017','12','CUENTAS EN PARTICIPACION',17,'',2),(NULL,'1295','2017','12','OTRAS INVERSIONES',18,'',2),(NULL,'1299','2017','12','PROVISIONES',19,'',2),(NULL,'1305','2017','13','CLIENTES',20,'CLIENT',3),(NULL,'1310','2017','13','CUENTAS CORRIENTES COMERCIALES',21,'',3),(NULL,'1315','2017','13','CUENTAS POR COBRAR A CASA MATRIZ',22,'',3),(NULL,'1320','2017','13','CUENTAS POR COBRAR A VINCULADOS ECONOMICOS',23,'',3),(NULL,'1325','2017','13','CUENTAS POR COBRAR A SOCIOS Y ACCIONISTAS',24,'',3),(NULL,'1328','2017','13','APORTES POR COBRAR',25,'',3),(NULL,'1330','2017','13','ANTICIPOS Y AVANCES',26,'',3),(NULL,'1332','2017','13','CUENTAS DE OPERACION CONJUNTA',27,'',3),(NULL,'1335','2017','13','DEPOSITOS',28,'',3),(NULL,'1340','2017','13','PROMESAS DE COMPRA VENTA',29,'',3),(NULL,'1345','2017','13','INGRESOS POR COBRAR',30,'',3),(NULL,'1350','2017','13','RETENCION SOBRE CONTRATOS',31,'',3),(NULL,'1355','2017','13','ANTICIPO DE IMPUESTOS Y CONTRIBUCIONES O SALDOS A FAVOR',32,'IRPF',3),(NULL,'1360','2017','13','RECLAMACIONES',33,'',3),(NULL,'1365','2017','13','CUENTAS POR COBRAR A TRABAJADORES',34,'',3),(NULL,'1370','2017','13','PRESTAMOS A PARTICULARES',35,'',3),(NULL,'1380','2017','13','DEUDORES VARIOS',36,'',3),(NULL,'1385','2017','13','DERECHOS DE RECOMPRA DE CARTERA NEGOCIADA',37,'',3),(NULL,'1390','2017','13','DEUDAS DE DIFICIL COBRO',38,'',3),(NULL,'1399','2017','13','PROVISIONES',39,'',3),(NULL,'1405','2017','14','MATERIAS PRIMAS',40,'',4),(NULL,'1410','2017','14','PRODUCTOS EN PROCESO',41,'',4),(NULL,'1415','2017','14','OBRAS DE CONSTRUCCION EN CURSO',42,'',4),(NULL,'1417','2017','14','OBRAS DE URBANISMO',43,'',4),(NULL,'1420','2017','14','CONTRATOS EN EJECUCION',44,'',4),(NULL,'1425','2017','14','CULTIVOS EN DESARROLLO',45,'',4),(NULL,'1430','2017','14','PRODUCTOS TERMINADOS',46,'',4),(NULL,'1435','2017','14','MERCANCIAS NO FABRICADAS POR LA EMPRESA',47,'',4),(NULL,'1440','2017','14','BIENES RAICES PARA LA VENTA',48,'',4),(NULL,'1445','2017','14','SEMOVIENTES',49,'',4),(NULL,'1450','2017','14','TERRENOS',50,'',4),(NULL,'1455','2017','14','MATERIALES, REPUESTOS Y ACCESORIOS',51,'',4),(NULL,'1460','2017','14','ENVASES Y EMPAQUES',52,'',4),(NULL,'1465','2017','14','INVENTARIOS EN TRANSITO',53,'',4),(NULL,'1499','2017','14','PROVISIONES',54,'',4),(NULL,'1504','2017','15','TERRENOS',55,'',5),(NULL,'1506','2017','15','MATERIALES PROYECTOS PETROLEROS',56,'',5),(NULL,'1508','2017','15','CONSTRUCCIONES EN CURSO',57,'',5),(NULL,'1512','2017','15','MAQUINARIA Y EQUIPOS EN MONTAJE',58,'',5),(NULL,'1516','2017','15','CONSTRUCCIONES Y EDIFICACIONES',59,'',5),(NULL,'1520','2017','15','MAQUINARIA Y EQUIPO',60,'',5),(NULL,'1524','2017','15','EQUIPO DE OFICINA',61,'',5),(NULL,'1528','2017','15','EQUIPO DE COMPUTACION Y COMUNICACION',62,'',5),(NULL,'1532','2017','15','EQUIPO MEDICO - CIENTIFICO',63,'',5),(NULL,'1536','2017','15','EQUIPO DE HOTELES Y RESTAURANTES',64,'',5),(NULL,'1540','2017','15','FLOTA Y EQUIPO DE TRANSPORTE',65,'',5),(NULL,'1544','2017','15','FLOTA Y EQUIPO FLUVIAL Y/O MARITIMO',66,'',5),(NULL,'1548','2017','15','FLOTA Y EQUIPO AEREO',67,'',5),(NULL,'1552','2017','15','FLOTA Y EQUIPO FERREO',68,'',5),(NULL,'1556','2017','15','ACUEDUCTOS PLANTAS Y REDES',69,'',5),(NULL,'1560','2017','15','ARMAMENTO DE VIGILANCIA',70,'',5),(NULL,'1562','2017','15','ENVASES Y EMPAQUES',71,'',5),(NULL,'1564','2017','15','PLANTACIONES AGRICOLAS Y FORESTALES',72,'',5),(NULL,'1568','2017','15','VIAS DE COMUNICACION',73,'',5),(NULL,'1572','2017','15','MINAS Y CANTERAS',74,'',5),(NULL,'1576','2017','15','POZOS ARTESIANOS',75,'',5),(NULL,'1580','2017','15','YACIMIENTOS',76,'',5),(NULL,'1584','2017','15','SEMOVIENTES',77,'',5),(NULL,'1588','2017','15','PROPIEDADES PLANTA Y EQUIPO EN TRANSITO',78,'',5),(NULL,'1592','2017','15','DEPRECIACION ACUMULADA',79,'',5),(NULL,'1596','2017','15','DEPRECIACION DIFERIDA',80,'',5),(NULL,'1597','2017','15','AMORTIZACION ACUMULADA',81,'',5),(NULL,'1598','2017','15','AGOTAMIENTO ACUMULADO',82,'',5),(NULL,'1599','2017','15','PROVISIONES',83,'',5),(NULL,'1605','2017','16','CREDITO MERCANTIL',84,'',6),(NULL,'1610','2017','16','MARCAS',85,'',6),(NULL,'1615','2017','16','PATENTES',86,'',6),(NULL,'1620','2017','16','CONCESIONES Y FRANQUICIAS',87,'',6),(NULL,'1625','2017','16','DERECHOS',88,'',6),(NULL,'1630','2017','16','KNOW HOW',89,'',6),(NULL,'1635','2017','16','LICENCIAS',90,'',6),(NULL,'1698','2017','16','AMORTIZACION ACUMULADA',91,'',6),(NULL,'1699','2017','16','PROVISIONES',92,'',6),(NULL,'1705','2017','17','GASTOS PAGADOS POR ANTICIPADO',93,'',7),(NULL,'1710','2017','17','CARGOS DIFERIDOS',94,'',7),(NULL,'1715','2017','17','COSTOS DE EXPLORACION POR AMORTIZAR',95,'',7),(NULL,'1720','2017','17','COSTOS DE EXPLOTACION Y DESARROLLO',96,'',7),(NULL,'1730','2017','17','CARGOS POR CORRECCION MONETARIA DIFERIDA',97,'',7),(NULL,'1798','2017','17','AMORTIZACION ACUMULADA',98,'',7),(NULL,'1805','2017','18','BIENES DE ARTE Y CULTURA',99,'',8),(NULL,'1895','2017','18','DIVERSOS',100,'',8),(NULL,'1899','2017','18','PROVISIONES',101,'',8),(NULL,'1905','2017','19','DE INVERSIONES',102,'',9),(NULL,'1910','2017','19','DE PROPIEDADES PLANTA Y EQUIPO',103,'',9),(NULL,'1995','2017','19','DE OTROS ACTIVOS',104,'',9),(NULL,'2105','2017','21','BANCOS NACIONALES',105,'',10),(NULL,'2110','2017','21','BANCOS DEL EXTERIOR',106,'',10),(NULL,'2115','2017','21','CORPORACIONES FINANCIERAS',107,'',10),(NULL,'2120','2017','21','COMPAÑIAS DE FINANCIAMIENTO COMERCIAL',108,'',10),(NULL,'2125','2017','21','CORPORACIONES DE AHORRO Y VIVIENDA',109,'',10),(NULL,'2130','2017','21','ENTIDADES FINANCIERAS DEL EXTERIOR',110,'',10),(NULL,'2135','2017','21','COMPROMISOS DE RECOMPRA DE INVERSIONES NEGOCIADAS',111,'',10),(NULL,'2140','2017','21','COMPROMISOS DE RECOMPRA DE CARTERA NEGOCIADA',112,'',10),(NULL,'2145','2017','21','OBLIGACIONES GUBERNAMENTALES',113,'',10),(NULL,'2195','2017','21','OTRAS OBLIGACIONES',114,'',10),(NULL,'2205','2017','22','NACIONALES',115,'PROVEE',11),(NULL,'2210','2017','22','DEL EXTERIOR',116,'',11),(NULL,'2215','2017','22','CUENTAS CORRIENTES COMERCIALES',117,'',11),(NULL,'2220','2017','22','CASA MATRIZ',118,'',11),(NULL,'2225','2017','22','COMPAÑIAS VINCULADAS',119,'',11),(NULL,'2305','2017','23','CUENTAS CORRIENTES COMERCIALES',120,'',12),(NULL,'2310','2017','23','A CASA MATRIZ',121,'',12),(NULL,'2315','2017','23','A COMPAÑIAS VINCULADAS',122,'',12),(NULL,'2320','2017','23','A CONTRATISTAS',123,'',12),(NULL,'2330','2017','23','ORDENES DE COMPRA POR UTILIZAR',124,'',12),(NULL,'2335','2017','23','COSTOS Y GASTOS POR  PAGAR',125,'ACREED',12),(NULL,'2340','2017','23','INSTALAMENTOS POR PAGAR',126,'',12),(NULL,'2345','2017','23','ACREEDORES OFICIALES',127,'',12),(NULL,'2350','2017','23','REGALIAS POR PAGAR',128,'',12),(NULL,'2355','2017','23','DEUDAS CON ACCIONISTAS O SOCIOS',129,'',12),(NULL,'2360','2017','23','DIVIDENDOS O PARTICIPACIONES POR PAGAR',130,'',12),(NULL,'2365','2017','23','RETENCION EN LA FUENTE',131,'IRPFPR',12),(NULL,'2370','2017','23','RETENCIONES Y APORTES DE NOMINA',132,'',12),(NULL,'2375','2017','23','CUOTAS POR DEVOLVER',133,'',12),(NULL,'2380','2017','23','ACREEDORES VARIOS',134,'',12),(NULL,'2404','2017','24','DE RENTA Y COMPLEMENTARIOS',135,'',13),(NULL,'2408','2017','24','IMPUESTO SOBRE LAS VENTAS POR PAGAR',136,'IVAREP',13),(NULL,'2412','2017','24','DE INDUSTRIA Y COMERCIO',137,'',13),(NULL,'2416','2017','24','A LA PROPIEDAD RAIZ',138,'',13),(NULL,'2420','2017','24','DERECHOS SOBRE INSTRUMENTOS PUBLICOS',139,'',13),(NULL,'2424','2017','24','DE VALORIZACION',140,'',13),(NULL,'2428','2017','24','DE TURISMO',141,'',13),(NULL,'2432','2017','24','TASA POR UTILIZACION DE PUERTOS',142,'',13),(NULL,'2436','2017','24','DE VEHICULOS',143,'',13),(NULL,'2440','2017','24','DE ESPECTACULOS PUBLICOS',144,'',13),(NULL,'2444','2017','24','DE HIDROCARBUROS Y MINAS',145,'',13),(NULL,'2448','2017','24','REGALIAS E IMPUESTOS A LA PEQUEÑA Y MEDIANA MINERIA',146,'',13),(NULL,'2452','2017','24','A LAS EXPORTACIONES CAFETERAS',147,'',13),(NULL,'2456','2017','24','A LAS IMPORTACIONES',148,'',13),(NULL,'2460','2017','24','CUOTAS DE FOMENTO',149,'',13),(NULL,'2464','2017','24','DE LICORES, CERVEZAS Y CIGARRILLOS',150,'',13),(NULL,'2468','2017','24','AL SACRIFICIO DE GANADO',151,'',13),(NULL,'2472','2017','24','AL AZAR Y JUEGOS',152,'',13),(NULL,'2495','2017','24','OTROS',153,'',13),(NULL,'2505','2017','25','SALARIOS POR PAGAR',154,'',14),(NULL,'2510','2017','25','CESANTIAS CONSOLIDADAS',155,'',14),(NULL,'2515','2017','25','INTERESES SOBRE CESANTIAS',156,'',14),(NULL,'2520','2017','25','PRIMA DE SERVICIOS',157,'',14),(NULL,'2525','2017','25','VACACIONES CONSOLIDADAS',158,'',14),(NULL,'2530','2017','25','PRESTACIONES EXTRALEGALES',159,'',14),(NULL,'2532','2017','25','PENSIONES POR PAGAR',160,'',14),(NULL,'2535','2017','25','CUOTAS PARTES PENSIONES DE JUBILACION',161,'',14),(NULL,'2540','2017','25','INDEMNIZACIONES LABORALES',162,'',14),(NULL,'2605','2017','26','PARA COSTOS Y GASTOS',163,'',15),(NULL,'2610','2017','26','PARA OBLIGACIONES LABORALES',164,'',15),(NULL,'2615','2017','26','PARA OBLIGACIONES FISCALES',165,'',15),(NULL,'2620','2017','26','PENSIONES DE JUBILACION',166,'',15),(NULL,'2625','2017','26','PARA OBRAS DE URBANISMO',167,'',15),(NULL,'2630','2017','26','PARA MANTENIMIENTO Y REPARACIONES',168,'',15),(NULL,'2635','2017','26','PARA CONTINGENCIAS',169,'',15),(NULL,'2640','2017','26','PARA OBLIGACIONES DE GARANTIAS',170,'',15),(NULL,'2695','2017','26','PROVISIONES DIVERSAS',171,'',15),(NULL,'2705','2017','27','INGRESOS RECIBIDOS POR ANTICIPADO',172,'',16),(NULL,'2710','2017','27','ABONOS DIFERIDOS',173,'',16),(NULL,'2715','2017','27','UTILIDAD DIFERIDA EN VENTAS A PLAZOS',174,'',16),(NULL,'2720','2017','27','CREDITO POR CORRECCION MONETARIA DIFERIDA',175,'',16),(NULL,'2725','2017','27','IMPUESTOS DIFERIDOS',176,'',16),(NULL,'2805','2017','28','ANTICIPOS Y AVANCES RECIBIDOS',177,'',17),(NULL,'2810','2017','28','DEPOSITOS RECIBIDOS',178,'',17),(NULL,'2815','2017','28','INGRESOS RECIBIDOS PARA TERCEROS',179,'',17),(NULL,'2820','2017','28','CUENTAS DE OPERACION CONJUNTA',180,'',17),(NULL,'2825','2017','28','RETENCIONES A TERCEROS SOBRE CONTRATOS',181,'',17),(NULL,'2830','2017','28','EMBARGOS JUDICIALES',182,'',17),(NULL,'2835','2017','28','ACREEDORES DEL SISTEMA',183,'',17),(NULL,'2840','2017','28','CUENTAS EN PARTICIPACION',184,'',17),(NULL,'2895','2017','28','DIVERSOS',185,'',17),(NULL,'2905','2017','29','BONOS EN CIRCULACION',186,'',18),(NULL,'2910','2017','29','BONOS OBLIGATORIAMENTE CONVERTIBLES EN ACCIONES',187,'',18),(NULL,'2915','2017','29','PAPELES COMERCIALES',188,'',18),(NULL,'3105','2017','31','CAPITAL SUSCRITO Y PAGADO',189,'',19),(NULL,'3110','2017','31','ACCIONES, CUOTAS O PARTES DE INTERES SOCIAL PROPIAS READQUIRIDAS (DB)',190,'',19),(NULL,'3115','2017','31','APORTES SOCIALES',191,'',19),(NULL,'3120','2017','31','CAPITAL ASIGNADO',192,'',19),(NULL,'3125','2017','31','INVERSION SUPLEMENTARIA AL CAPITAL ASIGNADO',193,'',19),(NULL,'3130','2017','31','CAPITAL DE PERSONAS NATURALES',194,'',19),(NULL,'3135','2017','31','APORTES DEL ESTADO',195,'',19),(NULL,'3140','2017','31','FONDO SOCIAL',196,'',19),(NULL,'3205','2017','32','PRIMA EN COLOCACION DE ACCIONES, CUOTAS O PARTES DE INTERES',197,'',20),(NULL,'3210','2017','32','DONACIONES',198,'',20),(NULL,'3215','2017','32','CREDITO MERCANTIL',199,'',20),(NULL,'3305','2017','33','RESERVAS OBLIGATORIAS',200,'',21),(NULL,'3310','2017','33','RESERVAS ESTATUTARIAS',201,'',21),(NULL,'3315','2017','33','RESERVAS OCASIONALES',202,'',21),(NULL,'3405','2017','34','AJUSTES POR INFLACION',203,'',22),(NULL,'3410','2017','34','SANEAMIENTO FISCAL',204,'',22),(NULL,'3415','2017','34','AJUSTES POR INFLACION DECRETO 3019 DE 1989',205,'',22),(NULL,'3505','2017','35','DIVIDENDOS DECRETADOS EN ACCIONES',206,'',23),(NULL,'3510','2017','35','PARTICIPACIONES DECRETADAS EN CUOTAS O PARTES DE INTERES SOCIAL',207,'',23),(NULL,'3605','2017','36','UTILIDAD DEL EJERCICIO',208,'PYG',24),(NULL,'3610','2017','36','PERDIDA DEL EJERCICIO',209,'',24),(NULL,'3705','2017','37','UTILIDADES O EXCEDENTES ACUMULADOS',210,'',25),(NULL,'3710','2017','37','PERDIDAS ACUMULADAS',211,'',25),(NULL,'3805','2017','38','DE INVERSIONES',212,'',26),(NULL,'3810','2017','38','DE PROPIEDADES PLANTA Y EQUIPO',213,'',26),(NULL,'3895','2017','38','DE OTROS ACTIVOS',214,'',26),(NULL,'4105','2017','41','AGRICULTURA, GANADERIA, CAZA Y SILVICULTURA',215,'',27),(NULL,'4110','2017','41','PESCA',216,'',27),(NULL,'4115','2017','41','EXPLOTACION DE MINAS Y CANTERAS',217,'',27),(NULL,'4120','2017','41','INDUSTRIAS MANUFACTURERAS',218,'',27),(NULL,'4125','2017','41','SUMINISTRO DE ELECTRICIDAD, GAS Y AGUA',219,'',27),(NULL,'4130','2017','41','CONSTRUCCION',220,'',27),(NULL,'4135','2017','41','COMERCIO AL POR MAYOR Y AL POR MENOR',221,'VENTAS',27),(NULL,'4140','2017','41','HOTELES Y RESTAURANTES',222,'',27),(NULL,'4145','2017','41','TRANSPORTE, ALMACENAMIENTO Y COMUNICACIONES',223,'',27),(NULL,'4150','2017','41','ACTIVIDAD FINANCIERA',224,'',27),(NULL,'4155','2017','41','ACTIVIDADES INMOBILIARIAS, EMPRESARIALES Y DE ALQUILER',225,'',27),(NULL,'4160','2017','41','ENSEÑANZA',226,'',27),(NULL,'4165','2017','41','SERVICIOS SOCIALES Y DE SALUD',227,'',27),(NULL,'4170','2017','41','OTRAS ACTIVIDADES DE SERVICIOS COMUNITARIOS, SOCIALES Y PERSONALES',228,'',27),(NULL,'4175','2017','41','DEVOLUCIONES, REBAJAS Y DESCUENTOS EN VENTAS (DB)',229,'',27),(NULL,'4205','2017','42','OTRAS VENTAS',230,'',28),(NULL,'4210','2017','42','FINANCIEROS',231,'',28),(NULL,'4215','2017','42','DIVIDENDOS Y PARTICIPACIONES',232,'',28),(NULL,'4220','2017','42','ARRENDAMIENTOS',233,'',28),(NULL,'4225','2017','42','COMISIONES',234,'',28),(NULL,'4230','2017','42','HONORARIOS',235,'',28),(NULL,'4235','2017','42','SERVICIOS',236,'',28),(NULL,'4240','2017','42','UTILIDAD EN VENTA DE INVERSIONES',237,'',28),(NULL,'4245','2017','42','UTILIDAD EN VENTA DE PROPIEDADES PLANTA Y EQUIPO',238,'',28),(NULL,'4248','2017','42','UTILIDAD EN VENTA DE OTROS BIENES',239,'',28),(NULL,'4250','2017','42','RECUPERACIONES',240,'',28),(NULL,'4255','2017','42','INDEMNIZACIONES',241,'',28),(NULL,'4260','2017','42','PARTICIPACIONES EN CONCESIONES',242,'',28),(NULL,'4265','2017','42','INGRESOS DE EJERCICIOS ANTERIORES',243,'',28),(NULL,'4275','2017','42','DEVOLUCIONES, REBAJAS Y DESCUENTOS EN OTRAS VENTAS (DB)',244,'',28),(NULL,'4295','2017','42','DIVERSOS',245,'',28),(NULL,'4705','2017','47','CORRECCION MONETARIA',246,'',29),(NULL,'5105','2017','51','GASTOS DE PERSONAL',247,'',30),(NULL,'5110','2017','51','HONORARIOS',248,'',30),(NULL,'5115','2017','51','IMPUESTOS',249,'',30),(NULL,'5120','2017','51','ARRENDAMIENTOS',250,'',30),(NULL,'5125','2017','51','CONTRIBUCIONES Y AFILIACIONES',251,'',30),(NULL,'5130','2017','51','SEGUROS',252,'',30),(NULL,'5135','2017','51','SERVICIOS',253,'',30),(NULL,'5140','2017','51','GASTOS LEGALES',254,'',30),(NULL,'5145','2017','51','MANTENIMIENTO Y REPARACIONES',255,'',30),(NULL,'5150','2017','51','ADECUACION E INSTALACION',256,'',30),(NULL,'5155','2017','51','GASTOS DE VIAJE',257,'',30),(NULL,'5160','2017','51','DEPRECIACIONES',258,'',30),(NULL,'5165','2017','51','AMORTIZACIONES',259,'',30),(NULL,'5195','2017','51','DIVERSOS',260,'',30),(NULL,'5199','2017','51','PROVISIONES',261,'',30),(NULL,'5205','2017','52','GASTOS DE PERSONAL',262,'',31),(NULL,'5210','2017','52','HONORARIOS',263,'',31),(NULL,'5215','2017','52','IMPUESTOS',264,'',31),(NULL,'5220','2017','52','ARRENDAMIENTOS',265,'',31),(NULL,'5225','2017','52','CONTRIBUCIONES Y AFILIACIONES',266,'',31),(NULL,'5230','2017','52','SEGUROS',267,'',31),(NULL,'5235','2017','52','SERVICIOS',268,'',31),(NULL,'5240','2017','52','GASTOS LEGALES',269,'',31),(NULL,'5245','2017','52','MANTENIMIENTO Y REPARACIONES',270,'',31),(NULL,'5250','2017','52','ADECUACION E INSTALACION',271,'',31),(NULL,'5255','2017','52','GASTOS DE VIAJE',272,'',31),(NULL,'5260','2017','52','DEPRECIACIONES',273,'',31),(NULL,'5265','2017','52','AMORTIZACIONES',274,'',31),(NULL,'5270','2017','52','FINANCIEROS - REAJUSTE DEL SISTEMA',275,'',31),(NULL,'5295','2017','52','DIVERSOS',276,'',31),(NULL,'5299','2017','52','PROVISIONES',277,'COMPRA',31),(NULL,'5305','2017','53','FINANCIEROS',278,'',32),(NULL,'5310','2017','53','PERDIDA EN VENTA Y RETIRO DE BIENES',279,'',32),(NULL,'5315','2017','53','GASTOS EXTRAORDINARIOS',280,'',32),(NULL,'5395','2017','53','GASTOS DIVERSOS',281,'',32),(NULL,'5405','2017','54','IMPUESTO DE RENTA Y COMPLEMENTARIOS',282,'',33),(NULL,'5905','2017','59','GANANCIAS Y PERDIDAS',283,'',34),(NULL,'6105','2017','61','AGRICULTURA, GANADERIA, CAZA Y SILVICULTURA',284,'',35),(NULL,'6110','2017','61','PESCA',285,'',35),(NULL,'6115','2017','61','EXPLOTACION DE MINAS Y CANTERAS',286,'',35),(NULL,'6120','2017','61','INDUSTRIAS MANUFACTURERAS',287,'',35),(NULL,'6125','2017','61','SUMINISTRO DE ELECTRICIDAD, GAS Y AGUA',288,'',35),(NULL,'6130','2017','61','CONSTRUCCION',289,'',35),(NULL,'6135','2017','61','COMERCIO AL POR MAYOR Y AL POR MENOR',290,'',35),(NULL,'6140','2017','61','HOTELES Y RESTAURANTES',291,'',35),(NULL,'6145','2017','61','TRANSPORTE, ALMACENAMIENTO Y COMUNICACIONES',292,'',35),(NULL,'6150','2017','61','ACTIVIDAD FINANCIERA',293,'',35),(NULL,'6155','2017','61','ACTIVIDADES INMOBILIARIAS, EMPRESARIALES Y DE ALQUILER',294,'',35),(NULL,'6160','2017','61','ENSEÑANZA',295,'',35),(NULL,'6165','2017','61','SERVICIOS SOCIALES Y DE SALUD',296,'',35),(NULL,'6170','2017','61','OTRAS ACTIVIDADES DE SERVICIOS COMUNITARIOS, SOCIALES Y PERSONALES',297,'',35),(NULL,'6205','2017','62','DE MERCANCIAS',298,'',36),(NULL,'6210','2017','62','DE MATERIAS PRIMAS',299,'',36),(NULL,'6215','2017','62','DE MATERIALES INDIRECTOS',300,'',36),(NULL,'6220','2017','62','COMPRA DE ENERGIA',301,'',36),(NULL,'6225','2017','62','DEVOLUCIONES REBAJAS Y DESCUENTOS EN COMPRAS (CR)',302,'',36),(NULL,'8105','2017','81','BIENES Y VALORES ENTREGADOS EN CUSTODIA',303,'',41),(NULL,'8110','2017','81','BIENES Y VALORES ENTREGADOS EN GARANTIA',304,'',41),(NULL,'8115','2017','81','BIENES Y VALORES EN PODER DE TERCEROS',305,'',41),(NULL,'8120','2017','81','LITIGIOS Y/O DEMANDAS',306,'',41),(NULL,'8125','2017','81','PROMESAS DE COMPRAVENTA',307,'',41),(NULL,'8195','2017','81','DIVERSAS',308,'',41),(NULL,'8305','2017','83','BIENES RECIBIDOS EN ARRENDAMIENTO FINANCIERO',309,'',43),(NULL,'8310','2017','83','TITULOS DE INVERSION NO COLOCADOS',310,'',43),(NULL,'8315','2017','83','PROPIEDADES PLANTA Y EQUIPO TOTALMENTE DEPRECIADOS, AGOTADOS Y/O AMORTIZADOS',311,'',43),(NULL,'8320','2017','83','CREDITOS A FAVOR NO UTILIZADOS',312,'',43),(NULL,'8325','2017','83','ACTIVOS CASTIGADOS',313,'',43),(NULL,'8330','2017','83','TITULOS DE INVERSION AMORTIZADOS',314,'',43),(NULL,'8335','2017','83','CAPITALIZACION POR REVALORIZACION DE PATRIMONIO',315,'',43),(NULL,'8395','2017','83','OTRAS CUENTAS DEUDORAS DE CONTROL',316,'',43),(NULL,'8399','2017','83','AJUSTES POR INFLACION ACTIVOS',317,'',43),(NULL,'9105','2017','91','BIENES Y VALORES RECIBIDOS EN CUSTODIA',318,'',47),(NULL,'9110','2017','91','BIENES Y VALORES RECIBIDOS EN GARANTIA',319,'',47),(NULL,'9115','2017','91','BIENES Y VALORES RECIBIDOS DE TERCEROS',320,'',47),(NULL,'9120','2017','91','LITIGIOS Y/O DEMANDAS',321,'',47),(NULL,'9125','2017','91','PROMESAS DE COMPRAVENTA',322,'',47),(NULL,'9130','2017','91','CONTRATOS DE ADMINISTRACION DELEGADA',323,'',47),(NULL,'9135','2017','91','CUENTAS EN PARTICIPACION',324,'',47),(NULL,'9195','2017','91','OTRAS RESPONSABILIDADES CONTINGENTES',325,'',47),(NULL,'9305','2017','93','CONTRATOS DE ARRENDAMIENTO FINANCIERO',326,'',49),(NULL,'9395','2017','93','OTRAS CUENTAS DE ORDEN ACREEDORAS DE CONTROL',327,'',49),(NULL,'9399','2017','93','AJUSTES POR INFLACION PATRIMONIO',328,'',49);
/*!40000 ALTER TABLE `co_cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_cuentascbba`
--

DROP TABLE IF EXISTS `co_cuentascbba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_cuentascbba` (
  `desccuenta` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `codcuenta` varchar(6) COLLATE utf8_bin NOT NULL,
  `codbalance` varchar(15) COLLATE utf8_bin NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_cuentascbba`
--

LOCK TABLES `co_cuentascbba` WRITE;
/*!40000 ALTER TABLE `co_cuentascbba` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_cuentascbba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_cuentasesp`
--

DROP TABLE IF EXISTS `co_cuentasesp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_cuentasesp` (
  `codcuenta` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuenta` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `idcuentaesp` varchar(6) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idcuentaesp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_cuentasesp`
--

LOCK TABLES `co_cuentasesp` WRITE;
/*!40000 ALTER TABLE `co_cuentasesp` DISABLE KEYS */;
INSERT INTO `co_cuentasesp` VALUES (NULL,NULL,'Cuentas de acreedores','ACREED'),(NULL,NULL,'Cuentas de caja','CAJA'),(NULL,NULL,'Cuentas de diferencias negativas de cambio','CAMNEG'),(NULL,NULL,'Cuentas de diferencias positivas de cambio','CAMPOS'),(NULL,NULL,'Cuentas de clientes','CLIENT'),(NULL,NULL,'Cuentas de compras','COMPRA'),(NULL,NULL,'Devoluciones de compras','DEVCOM'),(NULL,NULL,'Devoluciones de ventas','DEVVEN'),(NULL,NULL,'Cuentas por diferencias positivas en divisa extranjera','DIVPOS'),(NULL,NULL,'Cuentas por diferencias negativas de conversión a la moneda local','EURNEG'),(NULL,NULL,'Cuentas por diferencias positivas de conversión a la moneda local','EURPOS'),(NULL,NULL,'Gastos por recargo financiero','GTORF'),(NULL,NULL,'Ingresos por recargo financiero','INGRF'),(NULL,NULL,'Cuentas de retenciones IRPF','IRPF'),(NULL,NULL,'Cuentas de retenciones para proveedores IRPFPR','IRPFPR'),(NULL,NULL,'Cuentas acreedoras de IVA en la regularización','IVAACR'),(NULL,NULL,'Cuentas deudoras de IVA en la regularización','IVADEU'),(NULL,NULL,'IVA en entregas intracomunitarias U.E.','IVAEUE'),(NULL,NULL,'Cuentas de IVA repercutido','IVAREP'),(NULL,NULL,'Cuentas de IVA repercutido para clientes exentos de IVA','IVAREX'),(NULL,NULL,'Cuentas de IVA soportado UE','IVARUE'),(NULL,NULL,'Cuentas de IVA repercutido en exportaciones','IVARXP'),(NULL,NULL,'Cuentas de IVA soportado en importaciones','IVASIM'),(NULL,NULL,'Cuentas de IVA soportado','IVASOP'),(NULL,NULL,'Cuentas de IVA soportado UE','IVASUE'),(NULL,NULL,'Cuentas relativas al ejercicio previo','PREVIO'),(NULL,NULL,'Cuentas de proveedores','PROVEE'),(NULL,NULL,'Pérdidas y ganancias','PYG'),(NULL,NULL,'Cuentas de ventas','VENTAS');
/*!40000 ALTER TABLE `co_cuentasesp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_epigrafes`
--

DROP TABLE IF EXISTS `co_epigrafes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_epigrafes` (
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codepigrafe` varchar(6) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `idepigrafe` int(11) NOT NULL AUTO_INCREMENT,
  `idgrupo` int(11) DEFAULT NULL,
  `idpadre` int(11) DEFAULT NULL,
  PRIMARY KEY (`idepigrafe`),
  KEY `ca_co_epigrafes_ejercicios` (`codejercicio`),
  KEY `ca_co_epigrafes_gruposepigrafes2` (`idgrupo`),
  CONSTRAINT `ca_co_epigrafes_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ca_co_epigrafes_gruposepigrafes2` FOREIGN KEY (`idgrupo`) REFERENCES `co_gruposepigrafes` (`idgrupo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_epigrafes`
--

LOCK TABLES `co_epigrafes` WRITE;
/*!40000 ALTER TABLE `co_epigrafes` DISABLE KEYS */;
INSERT INTO `co_epigrafes` VALUES ('2017','11','DISPONIBLE',1,1,NULL),('2017','12','INVERSIONES',2,1,NULL),('2017','13','DEUDORES',3,1,NULL),('2017','14','INVENTARIOS',4,1,NULL),('2017','15','PROPIEDADES PLANTA Y EQUIPO',5,1,NULL),('2017','16','INTANGIBLES',6,1,NULL),('2017','17','DIFERIDOS',7,1,NULL),('2017','18','OTROS ACTIVOS',8,1,NULL),('2017','19','VALORIZACIONES',9,1,NULL),('2017','21','OBLIGACIONES FINANCIERAS',10,2,NULL),('2017','22','PROVEEDORES',11,2,NULL),('2017','23','CUENTAS POR PAGAR',12,2,NULL),('2017','24','IMPUESTOS, GRAVAMENES Y TASAS',13,2,NULL),('2017','25','OBLIGACIONES LABORALES',14,2,NULL),('2017','26','PASIVOS ESTIMADOS Y PROVISIONES',15,2,NULL),('2017','27','DIFERIDOS',16,2,NULL),('2017','28','OTROS PASIVOS',17,2,NULL),('2017','29','BONOS Y PAPELES COMERCIALES',18,2,NULL),('2017','31','CAPITAL SOCIAL',19,3,NULL),('2017','32','SUPERAVIT DE CAPITAL',20,3,NULL),('2017','33','RESERVAS',21,3,NULL),('2017','34','REVALORIZACION DEL PATRIMONIO',22,3,NULL),('2017','35','DIVIDENDOS O PARTICIPACIONES DECRETADOS EN ACCIONES, CUOTAS O PARTES DE INTERES SOCIAL',23,3,NULL),('2017','36','RESULTADOS DEL EJERCICIO',24,3,NULL),('2017','37','RESULTADOS DE EJERCICIOS ANTERIORES',25,3,NULL),('2017','38','SUPERAVIT POR VALORIZACIONES',26,3,NULL),('2017','41','OPERACIONALES',27,4,NULL),('2017','42','NO OPERACIONALES',28,4,NULL),('2017','47','AJUSTES POR INFLACION',29,4,NULL),('2017','51','OPERACIONALES DE ADMINISTRACION',30,5,NULL),('2017','52','OPERACIONALES DE VENTAS',31,5,NULL),('2017','53','NO OPERACIONALES',32,5,NULL),('2017','54','IMPUESTO DE RENTA Y COMPLEMENTARIOS',33,5,NULL),('2017','59','GANANCIAS Y PERDIDAS',34,5,NULL),('2017','61','COSTO DE VENTAS Y DE PRESTACION DE SERVICIOS',35,6,NULL),('2017','62','COMPRAS',36,6,NULL),('2017','71','MATERIA PRIMA',37,7,NULL),('2017','72','MANO DE OBRA DIRECTA',38,7,NULL),('2017','73','COSTOS INDIRECTOS',39,7,NULL),('2017','74','CONTRATOS DE SERVICIOS',40,7,NULL),('2017','81','DERECHOS CONTINGENTES',41,8,NULL),('2017','82','DEUDORAS FISCALES',42,8,NULL),('2017','83','DEUDORAS DE CONTROL',43,8,NULL),('2017','84','DERECHOS CONTINGENTES POR CONTRA (CR)',44,8,NULL),('2017','85','DEUDORAS FISCALES POR CONTRA (CR)',45,8,NULL),('2017','86','DEUDORAS DE CONTROL POR CONTRA (CR)',46,8,NULL),('2017','91','RESPONSABILIDADES CONTINGENTES',47,9,NULL),('2017','92','ACREEDORAS FISCALES',48,9,NULL),('2017','93','ACREEDORAS DE CONTROL',49,9,NULL),('2017','94','RESPONSABILIDADES CONTINGENTES POR CONTRA (DB)',50,9,NULL),('2017','95','ACREEDORAS FISCALES POR CONTRA (DB)',51,9,NULL),('2017','96','ACREEDORAS DE CONTROL POR CONTRA (DB)',52,9,NULL);
/*!40000 ALTER TABLE `co_epigrafes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_gruposepigrafes`
--

DROP TABLE IF EXISTS `co_gruposepigrafes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_gruposepigrafes` (
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codgrupo` varchar(6) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `idgrupo` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idgrupo`),
  KEY `ca_co_gruposepigrafes_ejercicios` (`codejercicio`),
  CONSTRAINT `ca_co_gruposepigrafes_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_gruposepigrafes`
--

LOCK TABLES `co_gruposepigrafes` WRITE;
/*!40000 ALTER TABLE `co_gruposepigrafes` DISABLE KEYS */;
INSERT INTO `co_gruposepigrafes` VALUES ('2017','1','ACTIVO',1),('2017','2','PASIVO',2),('2017','3','PATRIMONIO',3),('2017','4','INGRESOS',4),('2017','5','GASTOS',5),('2017','6','COSTOS DE VENTAS',6),('2017','7','COSTOS DE PRODUCCION O DE OPERACION',7),('2017','8','CUENTAS DE ORDEN DEUDORAS',8),('2017','9','CUENTAS DE ORDEN ACREEDORAS',9);
/*!40000 ALTER TABLE `co_gruposepigrafes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_partidas`
--

DROP TABLE IF EXISTS `co_partidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_partidas` (
  `baseimponible` double NOT NULL,
  `cifnif` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codcontrapartida` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuenta` varchar(15) COLLATE utf8_bin NOT NULL,
  `concepto` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `debe` double NOT NULL DEFAULT '0',
  `debeme` double NOT NULL,
  `documento` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `factura` double DEFAULT NULL,
  `haber` double NOT NULL DEFAULT '0',
  `haberme` double NOT NULL,
  `idasiento` int(11) NOT NULL,
  `idconcepto` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `idcontrapartida` int(11) DEFAULT NULL,
  `idpartida` int(11) NOT NULL AUTO_INCREMENT,
  `idsubcuenta` int(11) NOT NULL,
  `iva` double NOT NULL,
  `punteada` tinyint(1) NOT NULL DEFAULT '0',
  `recargo` double NOT NULL,
  `tasaconv` double NOT NULL,
  `tipodocumento` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idpartida`),
  KEY `ca_co_partidas_co_asientos2` (`idasiento`),
  KEY `ca_co_partidas_subcuentas` (`idsubcuenta`),
  CONSTRAINT `ca_co_partidas_co_asientos2` FOREIGN KEY (`idasiento`) REFERENCES `co_asientos` (`idasiento`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ca_co_partidas_subcuentas` FOREIGN KEY (`idsubcuenta`) REFERENCES `co_subcuentas` (`idsubcuenta`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_partidas`
--

LOCK TABLES `co_partidas` WRITE;
/*!40000 ALTER TABLE `co_partidas` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_partidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_regiva`
--

DROP TABLE IF EXISTS `co_regiva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_regiva` (
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codsubcuentaacr` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentadeu` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `fechaasiento` date NOT NULL,
  `fechafin` date NOT NULL,
  `fechainicio` date NOT NULL,
  `idasiento` int(11) NOT NULL,
  `idregiva` int(11) NOT NULL AUTO_INCREMENT,
  `idsubcuentaacr` int(11) DEFAULT NULL,
  `idsubcuentadeu` int(11) DEFAULT NULL,
  `periodo` varchar(8) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idregiva`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_regiva`
--

LOCK TABLES `co_regiva` WRITE;
/*!40000 ALTER TABLE `co_regiva` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_regiva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_secuencias`
--

DROP TABLE IF EXISTS `co_secuencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_secuencias` (
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `idsecuencia` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `valor` int(11) DEFAULT NULL,
  `valorout` int(11) DEFAULT NULL,
  PRIMARY KEY (`idsecuencia`),
  KEY `ca_co_secuencias_ejercicios` (`codejercicio`),
  CONSTRAINT `ca_co_secuencias_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_secuencias`
--

LOCK TABLES `co_secuencias` WRITE;
/*!40000 ALTER TABLE `co_secuencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `co_secuencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_subcuentas`
--

DROP TABLE IF EXISTS `co_subcuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_subcuentas` (
  `codcuenta` varchar(6) COLLATE utf8_bin NOT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuenta` varchar(15) COLLATE utf8_bin NOT NULL,
  `debe` double NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `haber` double NOT NULL,
  `idcuenta` int(11) DEFAULT NULL,
  `idsubcuenta` int(11) NOT NULL AUTO_INCREMENT,
  `iva` double NOT NULL,
  `recargo` double NOT NULL,
  `saldo` double NOT NULL,
  PRIMARY KEY (`idsubcuenta`),
  UNIQUE KEY `uniq_codsubcuenta` (`codsubcuenta`,`codejercicio`),
  KEY `ca_co_subcuentas_ejercicios` (`codejercicio`),
  KEY `ca_co_subcuentas_cuentas2` (`idcuenta`),
  CONSTRAINT `ca_co_subcuentas_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ca_co_subcuentas_cuentas2` FOREIGN KEY (`idcuenta`) REFERENCES `co_cuentas` (`idcuenta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2102 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_subcuentas`
--

LOCK TABLES `co_subcuentas` WRITE;
/*!40000 ALTER TABLE `co_subcuentas` DISABLE KEYS */;
INSERT INTO `co_subcuentas` VALUES ('1105','COP','2017',NULL,'110505',0,'CAJA GENERAL',0,1,1,0,0,0),('1105','COP','2017',NULL,'110510',0,'CAJAS MENORES',0,1,2,0,0,0),('1105','COP','2017',NULL,'110515',0,'MONEDA EXTRANJERA',0,1,3,0,0,0),('1110','COP','2017',NULL,'111005',0,'MONEDA NACIONAL',0,2,4,0,0,0),('1110','COP','2017',NULL,'111010',0,'MONEDA EXTRANJERA',0,2,5,0,0,0),('1115','COP','2017',NULL,'111505',0,'MONEDA NACIONAL',0,3,6,0,0,0),('1115','COP','2017',NULL,'111510',0,'MONEDA EXTRANJERA',0,3,7,0,0,0),('1120','COP','2017',NULL,'112005',0,'BANCOS',0,4,8,0,0,0),('1120','COP','2017',NULL,'112010',0,'CORPORACIONES DE AHORRO Y VIVIENDA',0,4,9,0,0,0),('1120','COP','2017',NULL,'112015',0,'ORGANISMOS COOPERATIVOS FINANCIEROS',0,4,10,0,0,0),('1125','COP','2017',NULL,'112505',0,'ROTATORIOS MONEDA NACIONAL',0,5,11,0,0,0),('1125','COP','2017',NULL,'112510',0,'ROTATORIOS MONEDA EXTRANJERA',0,5,12,0,0,0),('1125','COP','2017',NULL,'112515',0,'ESPECIALES MONEDA NACIONAL',0,5,13,0,0,0),('1125','COP','2017',NULL,'112520',0,'ESPECIALES MONEDA EXTRANJERA',0,5,14,0,0,0),('1125','COP','2017',NULL,'112525',0,'DE AMORTIZACION MONEDA NACIONAL',0,5,15,0,0,0),('1125','COP','2017',NULL,'112530',0,'DE AMORTIZACION MONEDA EXTRANJERA',0,5,16,0,0,0),('1205','COP','2017',NULL,'120505',0,'AGRICULTURA, GANADERIA, CAZA Y SILVICULTURA',0,6,17,0,0,0),('1205','COP','2017',NULL,'120510',0,'PESCA',0,6,18,0,0,0),('1205','COP','2017',NULL,'120515',0,'EXPLOTACION DE MINAS Y CANTERAS',0,6,19,0,0,0),('1205','COP','2017',NULL,'120520',0,'INDUSTRIA MANUFACTURERA',0,6,20,0,0,0),('1205','COP','2017',NULL,'120525',0,'SUMINISTRO DE ELECTRICIDAD, GAS Y AGUA',0,6,21,0,0,0),('1205','COP','2017',NULL,'120530',0,'CONSTRUCCION',0,6,22,0,0,0),('1205','COP','2017',NULL,'120535',0,'COMERCIO AL POR MAYOR Y AL POR MENOR',0,6,23,0,0,0),('1205','COP','2017',NULL,'120540',0,'HOTELES Y RESTAURANTES',0,6,24,0,0,0),('1205','COP','2017',NULL,'120545',0,'TRANSPORTE, ALMACENAMIENTO Y COMUNICACIONES',0,6,25,0,0,0),('1205','COP','2017',NULL,'120550',0,'ACTIVIDAD FINANCIERA',0,6,26,0,0,0),('1205','COP','2017',NULL,'120555',0,'ACTIVIDADES INMOBILIARIAS, EMPRESARIALES Y DE ALQUILER',0,6,27,0,0,0),('1205','COP','2017',NULL,'120560',0,'ENSEÑANZA',0,6,28,0,0,0),('1205','COP','2017',NULL,'120565',0,'SERVICIOS SOCIALES Y DE SALUD',0,6,29,0,0,0),('1205','COP','2017',NULL,'120570',0,'OTRAS ACTIVIDADES DE SERVICIOS COMUNITARIOS, SOCIALES',0,6,30,0,0,0),('1205','COP','2017',NULL,'120599',0,'AJUSTES POR INFLACION',0,6,31,0,0,0),('1210','COP','2017',NULL,'121005',0,'AGRICULTURA, GANADERIA, CAZA Y SILVICULTURA',0,7,32,0,0,0),('1210','COP','2017',NULL,'121010',0,'PESCA',0,7,33,0,0,0),('1210','COP','2017',NULL,'121015',0,'EXPLOTACION DE MINAS Y CANTERAS',0,7,34,0,0,0),('1210','COP','2017',NULL,'121020',0,'INDUSTRIA MANUFACTURERA',0,7,35,0,0,0),('1210','COP','2017',NULL,'121025',0,'SUMINISTRO DE ELECTRICIDAD, GAS Y AGUA',0,7,36,0,0,0),('1210','COP','2017',NULL,'121030',0,'CONSTRUCCION',0,7,37,0,0,0),('1210','COP','2017',NULL,'121035',0,'COMERCIO AL POR MAYOR Y AL POR MENOR',0,7,38,0,0,0),('1210','COP','2017',NULL,'121040',0,'HOTELES Y RESTAURANTES',0,7,39,0,0,0),('1210','COP','2017',NULL,'121045',0,'TRANSPORTE, ALMACENAMIENTO Y COMUNICACIONES',0,7,40,0,0,0),('1210','COP','2017',NULL,'121050',0,'ACTIVIDAD FINANCIERA',0,7,41,0,0,0),('1210','COP','2017',NULL,'121055',0,'ACTIVIDADES INMOBILIARIAS, EMPRESARIALES Y DE ALQUILER',0,7,42,0,0,0),('1210','COP','2017',NULL,'121060',0,'ENSEÑANZA',0,7,43,0,0,0),('1210','COP','2017',NULL,'121065',0,'SERVICIOS SOCIALES Y DE SALUD',0,7,44,0,0,0),('1210','COP','2017',NULL,'121070',0,'OTRAS ACTIVIDADES DE SERVICIOS COMUNITARIOS, SOCIALES Y PERSONALES',0,7,45,0,0,0),('1210','COP','2017',NULL,'121099',0,'AJUSTES POR INFLACION',0,7,46,0,0,0),('1215','COP','2017',NULL,'121505',0,'BONOS PUBLICOS MONEDA NACIONAL',0,8,47,0,0,0),('1215','COP','2017',NULL,'121510',0,'BONOS PUBLICOS MONEDA EXTRANJERA',0,8,48,0,0,0),('1215','COP','2017',NULL,'121515',0,'BONOS ORDINARIOS',0,8,49,0,0,0),('1215','COP','2017',NULL,'121520',0,'BONOS CONVERTIBLES EN ACCIONES',0,8,50,0,0,0),('1215','COP','2017',NULL,'121595',0,'OTROS',0,8,51,0,0,0),('1220','COP','2017',NULL,'122005',0,'CEDULAS DE CAPITALIZACION',0,9,52,0,0,0),('1220','COP','2017',NULL,'122010',0,'CEDULAS HIPOTECARIAS',0,9,53,0,0,0),('1220','COP','2017',NULL,'122015',0,'CEDULAS DE INVERSION',0,9,54,0,0,0),('1220','COP','2017',NULL,'122095',0,'OTRAS',0,9,55,0,0,0),('1225','COP','2017',NULL,'122505',0,'CERTIFICADOS DE DEPOSITO A TERMINO (C.D.T.)',0,10,56,0,0,0),('1225','COP','2017',NULL,'122510',0,'CERTIFICADOS DE DEPOSITO DE AHORRO',0,10,57,0,0,0),('1225','COP','2017',NULL,'122515',0,'CERTIFICADOS DE AHORRO DE VALOR CONSTANTE (C.A.V.C.)',0,10,58,0,0,0),('1225','COP','2017',NULL,'122520',0,'CERTIFICADOS DE CAMBIO',0,10,59,0,0,0),('1225','COP','2017',NULL,'122525',0,'CERTIFICADOS CAFETEROS VALORIZABLES',0,10,60,0,0,0),('1225','COP','2017',NULL,'122530',0,'CERTIFICADOS ELECTRICOS VALORIZABLES (C.E.V.)',0,10,61,0,0,0),('1225','COP','2017',NULL,'122535',0,'CERTIFICADOS DE REEMBOLSO TRIBUTARIO (C.E.R.T.)',0,10,62,0,0,0),('1225','COP','2017',NULL,'122540',0,'CERTIFICADOS DE DESARROLLO TURISTICO',0,10,63,0,0,0),('1225','COP','2017',NULL,'122545',0,'CERTIFICADOS DE INVERSION FORESTAL (C.I.F.)',0,10,64,0,0,0),('1225','COP','2017',NULL,'122595',0,'OTROS',0,10,65,0,0,0),('1230','COP','2017',NULL,'123005',0,'EMPRESAS COMERCIALES',0,11,66,0,0,0),('1230','COP','2017',NULL,'123010',0,'EMPRESAS INDUSTRIALES',0,11,67,0,0,0),('1230','COP','2017',NULL,'123015',0,'EMPRESAS DE SERVICIOS',0,11,68,0,0,0),('1235','COP','2017',NULL,'123505',0,'TITULOS DE DESARROLLO AGROPECUARIO',0,12,69,0,0,0),('1235','COP','2017',NULL,'123510',0,'TITULOS CANJEABLES POR CERTIFICADOS DE CAMBIO',0,12,70,0,0,0),('1235','COP','2017',NULL,'123515',0,'TITULOS DE TESORERIA (T.E.S.)',0,12,71,0,0,0),('1235','COP','2017',NULL,'123520',0,'TITULOS DE PARTICIPACION',0,12,72,0,0,0),('1235','COP','2017',NULL,'123525',0,'TITULOS DE CREDITO DE FOMENTO',0,12,73,0,0,0),('1235','COP','2017',NULL,'123530',0,'TITULOS FINANCIEROS AGROINDUSTRIALES (T.F.A.)',0,12,74,0,0,0),('1235','COP','2017',NULL,'123535',0,'TITULOS DE AHORRO CAFETERO (T.A.C.)',0,12,75,0,0,0),('1235','COP','2017',NULL,'123540',0,'TITULOS DE AHORRO NACIONAL (T.A.N.)',0,12,76,0,0,0),('1235','COP','2017',NULL,'123545',0,'TITULOS ENERGETICOS DE RENTABILIDAD CRECIENTE (T.E.R.)',0,12,77,0,0,0),('1235','COP','2017',NULL,'123550',0,'TITULOS DE AHORRO EDUCATIVO (T.A.E.)',0,12,78,0,0,0),('1235','COP','2017',NULL,'123555',0,'TITULOS FINANCIEROS  INDUSTRIALES Y COMERCIALES',0,12,79,0,0,0),('1235','COP','2017',NULL,'123560',0,'TESOROS',0,12,80,0,0,0),('1235','COP','2017',NULL,'123565',0,'TITULOS DE DEVOLUCION DE IMPUESTOS NACIONALES (TIDIS)',0,12,81,0,0,0),('1235','COP','2017',NULL,'123570',0,'TITULOS INMOBILIARIOS',0,12,82,0,0,0),('1235','COP','2017',NULL,'123595',0,'OTROS',0,12,83,0,0,0),('1240','COP','2017',NULL,'124005',0,'BANCOS COMERCIALES',0,13,84,0,0,0),('1240','COP','2017',NULL,'124010',0,'COMPAÑIAS DE FINANCIAMIENTO COMERCIAL',0,13,85,0,0,0),('1240','COP','2017',NULL,'124015',0,'CORPORACIONES FINANCIERAS',0,13,86,0,0,0),('1240','COP','2017',NULL,'124095',0,'OTRAS',0,13,87,0,0,0),('1245','COP','2017',NULL,'124505',0,'FIDEICOMISOS DE INVERSION MONEDA NACIONAL',0,14,88,0,0,0),('1245','COP','2017',NULL,'124510',0,'FIDEICOMISOS DE INVERSION MONEDA EXTRANJERA',0,14,89,0,0,0),('1250','COP','2017',NULL,'125005',0,'ACCIONES',0,15,90,0,0,0),('1250','COP','2017',NULL,'125010',0,'CUOTAS O PARTES DE INTERES SOCIAL',0,15,91,0,0,0),('1250','COP','2017',NULL,'125015',0,'BONOS',0,15,92,0,0,0),('1250','COP','2017',NULL,'125020',0,'CEDULAS',0,15,93,0,0,0),('1250','COP','2017',NULL,'125025',0,'CERTIFICADOS',0,15,94,0,0,0),('1250','COP','2017',NULL,'125030',0,'PAPELES COMERCIALES',0,15,95,0,0,0),('1250','COP','2017',NULL,'125035',0,'TITULOS',0,15,96,0,0,0),('1250','COP','2017',NULL,'125040',0,'ACEPTACIONES BANCARIAS O FINANCIERAS',0,15,97,0,0,0),('1250','COP','2017',NULL,'125095',0,'OTROS',0,15,98,0,0,0),('1250','COP','2017',NULL,'125099',0,'AJUSTES POR INFLACION',0,15,99,0,0,0),('1255','COP','2017',NULL,'125505',0,'BONOS DE FINANCIAMIENTO ESPECIAL',0,16,100,0,0,0),('1255','COP','2017',NULL,'125510',0,'BONOS DE FINANCIAMIENTO PRESUPUESTAL',0,16,101,0,0,0),('1255','COP','2017',NULL,'125515',0,'BONOS PARA DESARROLLO SOCIAL Y SEGURIDAD INTERNA (B.D.S.I.)',0,16,102,0,0,0),('1255','COP','2017',NULL,'125595',0,'OTRAS',0,16,103,0,0,0),('1260','COP','2017',NULL,'126099',0,'AJUSTES POR INFLACION',0,17,104,0,0,0),('1295','COP','2017',NULL,'129505',0,'APORTES EN COOPERATIVAS',0,18,105,0,0,0),('1295','COP','2017',NULL,'129510',0,'DERECHOS EN CLUBES SOCIALES',0,18,106,0,0,0),('1295','COP','2017',NULL,'129515',0,'ACCIONES O DERECHOS EN CLUBES DEPORTIVOS',0,18,107,0,0,0),('1295','COP','2017',NULL,'129520',0,'BONOS EN COLEGIOS',0,18,108,0,0,0),('1295','COP','2017',NULL,'129595',0,'DIVERSAS',0,18,109,0,0,0),('1295','COP','2017',NULL,'129599',0,'AJUSTES POR INFLACION',0,18,110,0,0,0),('1299','COP','2017',NULL,'129905',0,'ACCIONES',0,19,111,0,0,0),('1299','COP','2017',NULL,'129910',0,'CUOTAS O PARTES DE INTERES SOCIAL',0,19,112,0,0,0),('1299','COP','2017',NULL,'129915',0,'BONOS',0,19,113,0,0,0),('1299','COP','2017',NULL,'129920',0,'CEDULAS',0,19,114,0,0,0),('1299','COP','2017',NULL,'129925',0,'CERTIFICADOS',0,19,115,0,0,0),('1299','COP','2017',NULL,'129930',0,'PAPELES COMERCIALES',0,19,116,0,0,0),('1299','COP','2017',NULL,'129935',0,'TITULOS',0,19,117,0,0,0),('1299','COP','2017',NULL,'129940',0,'ACEPTACIONES BANCARIAS O FINANCIERAS',0,19,118,0,0,0),('1299','COP','2017',NULL,'129945',0,'DERECHOS FIDUCIARIOS',0,19,119,0,0,0),('1299','COP','2017',NULL,'129950',0,'DERECHOS DE RECOMPRA DE INVERSIONES NEGOCIADAS',0,19,120,0,0,0),('1299','COP','2017',NULL,'129955',0,'OBLIGATORIAS',0,19,121,0,0,0),('1299','COP','2017',NULL,'129960',0,'CUENTAS EN PARTICIPACION',0,19,122,0,0,0),('1299','COP','2017',NULL,'129995',0,'OTRAS INVERSIONES',0,19,123,0,0,0),('1305','COP','2017',NULL,'130505',0,'BETSABE PETECUA PACHECO',0,20,124,0,0,0),('1305','COP','2017',NULL,'130510',0,'KATHERINE RADA SIERRA',0,20,125,0,0,0),('1305','COP','2017',NULL,'130515',0,'DEUDORES DEL SISTEMA',0,20,126,0,0,0),('1310','COP','2017',NULL,'131005',0,'CASA MATRIZ',0,21,127,0,0,0),('1310','COP','2017',NULL,'131010',0,'COMPAÑIAS VINCULADAS',0,21,128,0,0,0),('1310','COP','2017',NULL,'131015',0,'ACCIONISTAS O SOCIOS',0,21,129,0,0,0),('1310','COP','2017',NULL,'131020',0,'PARTICULARES',0,21,130,0,0,0),('1310','COP','2017',NULL,'131095',0,'OTRAS',0,21,131,0,0,0),('1315','COP','2017',NULL,'131505',0,'VENTAS',0,22,132,0,0,0),('1315','COP','2017',NULL,'131510',0,'PAGOS A NOMBRE DE CASA MATRIZ',0,22,133,0,0,0),('1315','COP','2017',NULL,'131515',0,'VALORES RECIBIDOS POR CASA MATRIZ',0,22,134,0,0,0),('1315','COP','2017',NULL,'131520',0,'PRESTAMOS',0,22,135,0,0,0),('1320','COP','2017',NULL,'132005',0,'FILIALES',0,23,136,0,0,0),('1320','COP','2017',NULL,'132010',0,'SUBSIDIARIAS',0,23,137,0,0,0),('1320','COP','2017',NULL,'132015',0,'SUCURSALES',0,23,138,0,0,0),('1325','COP','2017',NULL,'132505',0,'A SOCIOS',0,24,139,0,0,0),('1325','COP','2017',NULL,'132510',0,'A ACCIONISTAS',0,24,140,0,0,0),('1330','COP','2017',NULL,'133005',0,'A PROVEEDORES',0,26,141,0,0,0),('1330','COP','2017',NULL,'133010',0,'A CONTRATISTAS',0,26,142,0,0,0),('1330','COP','2017',NULL,'133015',0,'A TRABAJADORES',0,26,143,0,0,0),('1330','COP','2017',NULL,'133020',0,'A AGENTES',0,26,144,0,0,0),('1330','COP','2017',NULL,'133025',0,'A CONCESIONARIOS',0,26,145,0,0,0),('1330','COP','2017',NULL,'133030',0,'DE ADJUDICACIONES',0,26,146,0,0,0),('1330','COP','2017',NULL,'133095',0,'OTROS',0,26,147,0,0,0),('1335','COP','2017',NULL,'133505',0,'PARA IMPORTACIONES',0,28,148,0,0,0),('1335','COP','2017',NULL,'133510',0,'PARA SERVICIOS',0,28,149,0,0,0),('1335','COP','2017',NULL,'133515',0,'PARA CONTRATOS',0,28,150,0,0,0),('1335','COP','2017',NULL,'133520',0,'PARA RESPONSABILIDADES',0,28,151,0,0,0),('1335','COP','2017',NULL,'133525',0,'PARA JUICIOS EJECUTIVOS',0,28,152,0,0,0),('1335','COP','2017',NULL,'133530',0,'PARA ADQUISICION DE ACCIONES, CUOTAS O DERECHOS',0,28,153,0,0,0),('1335','COP','2017',NULL,'133535',0,'EN GARANTIA',0,28,154,0,0,0),('1335','COP','2017',NULL,'133595',0,'OTROS',0,28,155,0,0,0),('1340','COP','2017',NULL,'134005',0,'DE BIENES RAICES',0,29,156,0,0,0),('1340','COP','2017',NULL,'134010',0,'DE MAQUINARIA Y EQUIPO',0,29,157,0,0,0),('1340','COP','2017',NULL,'134015',0,'DE FLOTA Y EQUIPO DE TRANSPORTE',0,29,158,0,0,0),('1340','COP','2017',NULL,'134020',0,'DE FLOTA Y EQUIPO AEREO',0,29,159,0,0,0),('1340','COP','2017',NULL,'134025',0,'DE FLOTA Y EQUIPO FERREO',0,29,160,0,0,0),('1340','COP','2017',NULL,'134030',0,'DE FLOTA Y EQUIPO FLUVIAL Y/O MARITIMO',0,29,161,0,0,0),('1340','COP','2017',NULL,'134035',0,'DE SEMOVIENTES',0,29,162,0,0,0),('1340','COP','2017',NULL,'134095',0,'DE OTROS BIENES',0,29,163,0,0,0),('1345','COP','2017',NULL,'134505',0,'DIVIDENDOS Y/O PARTICIPACIONES',0,30,164,0,0,0),('1345','COP','2017',NULL,'134510',0,'INTERESES',0,30,165,0,0,0),('1345','COP','2017',NULL,'134515',0,'COMISIONES',0,30,166,0,0,0),('1345','COP','2017',NULL,'134520',0,'HONORARIOS',0,30,167,0,0,0),('1345','COP','2017',NULL,'134525',0,'SERVICIOS',0,30,168,0,0,0),('1345','COP','2017',NULL,'134530',0,'ARRENDAMIENTOS',0,30,169,0,0,0),('1345','COP','2017',NULL,'134535',0,'CERT POR COBRAR',0,30,170,0,0,0),('1345','COP','2017',NULL,'134595',0,'OTROS',0,30,171,0,0,0),('1350','COP','2017',NULL,'135005',0,'DE CONSTRUCCION',0,31,172,0,0,0),('1350','COP','2017',NULL,'135010',0,'DE PRESTACION DE SERVICIOS',0,31,173,0,0,0),('1350','COP','2017',NULL,'135095',0,'OTROS',0,31,174,0,0,0),('1355','COP','2017',NULL,'135505',0,'ANTICIPO DE IMPUESTOS DE RENTA Y COMPLEMENTARIOS',0,32,175,0,0,0),('1355','COP','2017',NULL,'135510',0,'ANTICIPO DE IMPUESTOS DE INDUSTRIA Y COMERCIO',0,32,176,0,0,0),('1355','COP','2017',NULL,'135515',0,'RETENCION EN LA FUENTE',0,32,177,0,0,0),('1355','COP','2017',NULL,'135520',0,'SOBRANTES EN LIQUIDACION PRIVADA DE IMPUESTOS',0,32,178,0,0,0),('1355','COP','2017',NULL,'135525',0,'CONTRIBUCIONES',0,32,179,0,0,0),('1355','COP','2017',NULL,'135530',0,'IMPUESTOS DESCONTABLES',0,32,180,0,0,0),('1355','COP','2017',NULL,'135595',0,'OTROS',0,32,181,0,0,0),('1360','COP','2017',NULL,'136005',0,'A COMPAÑIAS ASEGURADORAS',0,33,182,0,0,0),('1360','COP','2017',NULL,'136010',0,'A TRANSPORTADORES',0,33,183,0,0,0),('1360','COP','2017',NULL,'136015',0,'POR TIQUETES AEREOS',0,33,184,0,0,0),('1360','COP','2017',NULL,'136095',0,'OTRAS',0,33,185,0,0,0),('1365','COP','2017',NULL,'136505',0,'VIVIENDA',0,34,186,0,0,0),('1365','COP','2017',NULL,'136510',0,'VEHICULOS',0,34,187,0,0,0),('1365','COP','2017',NULL,'136515',0,'EDUCACION',0,34,188,0,0,0),('1365','COP','2017',NULL,'136520',0,'MEDICOS, ODONTOLOGICOS Y SIMILARES',0,34,189,0,0,0),('1365','COP','2017',NULL,'136525',0,'CALAMIDAD DOMESTICA',0,34,190,0,0,0),('1365','COP','2017',NULL,'136530',0,'RESPONSABILIDADES',0,34,191,0,0,0),('1365','COP','2017',NULL,'136595',0,'OTROS',0,34,192,0,0,0),('1370','COP','2017',NULL,'137005',0,'CON GARANTIA REAL',0,35,193,0,0,0),('1370','COP','2017',NULL,'137010',0,'CON GARANTIA PERSONAL',0,35,194,0,0,0),('1380','COP','2017',NULL,'138005',0,'DEPOSITARIOS',0,36,195,0,0,0),('1380','COP','2017',NULL,'138010',0,'COMISIONISTAS DE BOLSAS',0,36,196,0,0,0),('1380','COP','2017',NULL,'138015',0,'FONDO DE INVERSION',0,36,197,0,0,0),('1380','COP','2017',NULL,'138020',0,'CUENTAS POR COBRAR DE TERCEROS',0,36,198,0,0,0),('1380','COP','2017',NULL,'138025',0,'PAGOS POR CUENTA DE TERCEROS',0,36,199,0,0,0),('1380','COP','2017',NULL,'138030',0,'FONDOS DE INVERSION SOCIAL',0,36,200,0,0,0),('1380','COP','2017',NULL,'138095',0,'OTROS',0,36,201,0,0,0),('1399','COP','2017',NULL,'139905',0,'CLIENTES',0,39,202,0,0,0),('1399','COP','2017',NULL,'139910',0,'CUENTAS CORRIENTES COMERCIALES',0,39,203,0,0,0),('1399','COP','2017',NULL,'139915',0,'CUENTAS POR COBRAR A CASA MATRIZ',0,39,204,0,0,0),('1399','COP','2017',NULL,'139920',0,'CUENTAS POR COBRAR A VINCULADOS ECONOMICOS',0,39,205,0,0,0),('1399','COP','2017',NULL,'139925',0,'CUENTAS POR COBRAR A SOCIOS Y ACCIONISTAS',0,39,206,0,0,0),('1399','COP','2017',NULL,'139930',0,'ANTICIPOS Y AVANCES',0,39,207,0,0,0),('1399','COP','2017',NULL,'139932',0,'CUENTAS DE OPERACION CONJUNTA',0,39,208,0,0,0),('1399','COP','2017',NULL,'139935',0,'DEPOSITOS',0,39,209,0,0,0),('1399','COP','2017',NULL,'139940',0,'PROMESAS DE COMPRAVENTA',0,39,210,0,0,0),('1399','COP','2017',NULL,'139945',0,'INGRESOS POR COBRAR',0,39,211,0,0,0),('1399','COP','2017',NULL,'139950',0,'RETENCION SOBRE CONTRATOS',0,39,212,0,0,0),('1399','COP','2017',NULL,'139955',0,'RECLAMACIONES',0,39,213,0,0,0),('1399','COP','2017',NULL,'139960',0,'CUENTAS POR COBRAR A TRABAJADORES',0,39,214,0,0,0),('1399','COP','2017',NULL,'139965',0,'PRESTAMOS A PARTICULARES',0,39,215,0,0,0),('1399','COP','2017',NULL,'139975',0,'DEUDORES VARIOS',0,39,216,0,0,0),('1399','COP','2017',NULL,'139980',0,'DERECHOS DE RECOMPRA DE CARTERA NEGOCIADA',0,39,217,0,0,0),('1405','COP','2017',NULL,'140599',0,'AJUSTES POR INFLACION',0,40,218,0,0,0),('1410','COP','2017',NULL,'141099',0,'AJUSTES POR INFLACION',0,41,219,0,0,0),('1415','COP','2017',NULL,'141599',0,'AJUSTES POR INFLACION',0,42,220,0,0,0),('1417','COP','2017',NULL,'141799',0,'AJUSTES POR INFLACION',0,43,221,0,0,0),('1420','COP','2017',NULL,'142099',0,'AJUSTES POR INFLACION',0,44,222,0,0,0),('1425','COP','2017',NULL,'142599',0,'AJUSTES POR INFLACION',0,45,223,0,0,0),('1430','COP','2017',NULL,'143005',0,'PRODUCTOS MANUFACTURADOS',0,46,224,0,0,0),('1430','COP','2017',NULL,'143010',0,'PRODUCTOS EXTRAIDOS Y/O PROCESADOS',0,46,225,0,0,0),('1430','COP','2017',NULL,'143015',0,'PRODUCTOS AGRICOLAS Y FORESTALES',0,46,226,0,0,0),('1430','COP','2017',NULL,'143020',0,'SUBPRODUCTOS',0,46,227,0,0,0),('1430','COP','2017',NULL,'143025',0,'PRODUCTOS DE PESCA',0,46,228,0,0,0),('1430','COP','2017',NULL,'143099',0,'AJUSTES POR INFLACION',0,46,229,0,0,0),('1435','COP','2017',NULL,'143599',0,'AJUSTES POR INFLACION',0,47,230,0,0,0),('1440','COP','2017',NULL,'144099',0,'AJUSTES POR INFLACION',0,48,231,0,0,0),('1445','COP','2017',NULL,'144505',0,'ESPECIES MAYORES',0,49,232,0,0,0),('1445','COP','2017',NULL,'144510',0,'ESPECIES MENORES',0,49,233,0,0,0),('1445','COP','2017',NULL,'144599',0,'AJUSTES POR INFLACION',0,49,234,0,0,0),('1450','COP','2017',NULL,'145005',0,'POR URBANIZAR',0,50,235,0,0,0),('1450','COP','2017',NULL,'145010',0,'URBANIZADOS POR CONSTRUIR',0,50,236,0,0,0),('1450','COP','2017',NULL,'145099',0,'AJUSTES POR INFLACION',0,50,237,0,0,0),('1455','COP','2017',NULL,'145505',0,'COMBUSTIBLES Y LUBRICANTES',0,51,238,0,0,0),('1455','COP','2017',NULL,'145510',0,'ABONOS Y FERTILIZANTES',0,51,239,0,0,0),('1455','COP','2017',NULL,'145515',0,'SEMILLAS TERMINADAS',0,51,240,0,0,0),('1455','COP','2017',NULL,'145520',0,'FUNGICIDAS Y HERBICIDAS',0,51,241,0,0,0),('1455','COP','2017',NULL,'145525',0,'MATERIALES Y REPUESTOS',0,51,242,0,0,0),('1455','COP','2017',NULL,'145530',0,'LOZA Y CRISTALERIA',0,51,243,0,0,0),('1455','COP','2017',NULL,'145535',0,'HERRAMIENTAS',0,51,244,0,0,0),('1455','COP','2017',NULL,'145540',0,'MEDICINAS',0,51,245,0,0,0),('1455','COP','2017',NULL,'145545',0,'ELEMENTOS HOSPITALARIOS',0,51,246,0,0,0),('1455','COP','2017',NULL,'145550',0,'INSTRUMENTAL QUIRURGICO',0,51,247,0,0,0),('1455','COP','2017',NULL,'145555',0,'DOTACION Y SUMINISTRO A TRABAJADORES',0,51,248,0,0,0),('1455','COP','2017',NULL,'145560',0,'ELEMENTOS DE ROPERIA Y LENCERIA',0,51,249,0,0,0),('1455','COP','2017',NULL,'145595',0,'OTROS',0,51,250,0,0,0),('1455','COP','2017',NULL,'145599',0,'AJUSTES POR INFLACION',0,51,251,0,0,0),('1460','COP','2017',NULL,'146099',0,'AJUSTES POR INFLACION',0,52,252,0,0,0),('1465','COP','2017',NULL,'146599',0,'AJUSTES POR INFLACION',0,53,253,0,0,0),('1499','COP','2017',NULL,'149905',0,'PARA OBSOLESCENCIA',0,54,254,0,0,0),('1499','COP','2017',NULL,'149910',0,'PARA DIFERENCIA DE INVENTARIO FISICO',0,54,255,0,0,0),('1499','COP','2017',NULL,'149915',0,'PARA PERDIDAS DE INVENTARIOS',0,54,256,0,0,0),('1499','COP','2017',NULL,'149920',0,'LIFO',0,54,257,0,0,0),('1504','COP','2017',NULL,'150405',0,'URBANOS',0,55,258,0,0,0),('1504','COP','2017',NULL,'150410',0,'RURALES',0,55,259,0,0,0),('1504','COP','2017',NULL,'150499',0,'AJUSTES POR INFLACION',0,55,260,0,0,0),('1506','COP','2017',NULL,'150605',0,'TUBERIAS Y EQUIPO',0,56,261,0,0,0),('1506','COP','2017',NULL,'150610',0,'COSTOS DE IMPORTACION MATERIALES',0,56,262,0,0,0),('1506','COP','2017',NULL,'150615',0,'PROYECTOS DE CONSTRUCCION',0,56,263,0,0,0),('1506','COP','2017',NULL,'150699',0,'AJUSTES POR INFLACION',0,56,264,0,0,0),('1508','COP','2017',NULL,'150805',0,'CONSTRUCCIONES Y EDIFICACIONES',0,57,265,0,0,0),('1508','COP','2017',NULL,'150810',0,'ACUEDUCTOS PLANTAS Y REDES',0,57,266,0,0,0),('1508','COP','2017',NULL,'150815',0,'VIAS DE COMUNICACION',0,57,267,0,0,0),('1508','COP','2017',NULL,'150820',0,'POZOS ARTESIANOS',0,57,268,0,0,0),('1508','COP','2017',NULL,'150825',0,'PROYECTOS DE EXPLORACION',0,57,269,0,0,0),('1508','COP','2017',NULL,'150830',0,'PROYECTOS DE DESARROLLO',0,57,270,0,0,0),('1508','COP','2017',NULL,'150899',0,'AJUSTES POR INFLACION',0,57,271,0,0,0),('1512','COP','2017',NULL,'151205',0,'MAQUINARIA Y EQUIPO',0,58,272,0,0,0),('1512','COP','2017',NULL,'151210',0,'EQUIPO DE OFICINA',0,58,273,0,0,0),('1512','COP','2017',NULL,'151215',0,'EQUIPO DE COMPUTACION Y COMUNICACION',0,58,274,0,0,0),('1512','COP','2017',NULL,'151220',0,'EQUIPO MEDICO-CIENTIFICO',0,58,275,0,0,0),('1512','COP','2017',NULL,'151225',0,'EQUIPO DE HOTELES Y RESTAURANTES',0,58,276,0,0,0),('1512','COP','2017',NULL,'151230',0,'FLOTA Y EQUIPO DE TRANSPORTE',0,58,277,0,0,0),('1512','COP','2017',NULL,'151235',0,'FLOTA Y EQUIPO FLUVIAL Y/O MARITIMO',0,58,278,0,0,0),('1512','COP','2017',NULL,'151240',0,'FLOTA Y EQUIPO AEREO',0,58,279,0,0,0),('1512','COP','2017',NULL,'151245',0,'FLOTA Y EQUIPO FERREO',0,58,280,0,0,0),('1512','COP','2017',NULL,'151250',0,'PLANTAS Y REDES',0,58,281,0,0,0),('1512','COP','2017',NULL,'151299',0,'AJUSTES POR INFLACION',0,58,282,0,0,0),('1516','COP','2017',NULL,'151605',0,'EDIFICIOS',0,59,283,0,0,0),('1516','COP','2017',NULL,'151610',0,'OFICINAS',0,59,284,0,0,0),('1516','COP','2017',NULL,'151615',0,'ALMACENES',0,59,285,0,0,0),('1516','COP','2017',NULL,'151620',0,'FABRICAS Y PLANTAS INDUSTRIALES',0,59,286,0,0,0),('1516','COP','2017',NULL,'151625',0,'SALAS DE EXHIBICION Y VENTAS',0,59,287,0,0,0),('1516','COP','2017',NULL,'151630',0,'CAFETERIA Y CASINOS',0,59,288,0,0,0),('1516','COP','2017',NULL,'151635',0,'SILOS',0,59,289,0,0,0),('1516','COP','2017',NULL,'151640',0,'INVERNADEROS',0,59,290,0,0,0),('1516','COP','2017',NULL,'151645',0,'CASETAS Y CAMPAMENTOS',0,59,291,0,0,0),('1516','COP','2017',NULL,'151650',0,'INSTALACIONES AGROPECUARIAS',0,59,292,0,0,0),('1516','COP','2017',NULL,'151655',0,'VIVIENDAS PARA EMPLEADOS Y OBREROS',0,59,293,0,0,0),('1516','COP','2017',NULL,'151660',0,'TERMINAL DE BUSES Y TAXIS',0,59,294,0,0,0),('1516','COP','2017',NULL,'151663',0,'TERMINAL MARITIMO',0,59,295,0,0,0),('1516','COP','2017',NULL,'151665',0,'TERMINAL FERREO',0,59,296,0,0,0),('1516','COP','2017',NULL,'151670',0,'PARQUEADEROS, GARAJES Y DEPOSITOS',0,59,297,0,0,0),('1516','COP','2017',NULL,'151675',0,'HANGARES',0,59,298,0,0,0),('1516','COP','2017',NULL,'151680',0,'BODEGAS',0,59,299,0,0,0),('1516','COP','2017',NULL,'151695',0,'OTROS',0,59,300,0,0,0),('1516','COP','2017',NULL,'151699',0,'AJUSTES POR INFLACION',0,59,301,0,0,0),('1520','COP','2017',NULL,'152099',0,'AJUSTES POR INFLACION',0,60,302,0,0,0),('1524','COP','2017',NULL,'152405',0,'MUEBLES Y ENSERES',0,61,303,0,0,0),('1524','COP','2017',NULL,'152410',0,'EQUIPOS',0,61,304,0,0,0),('1524','COP','2017',NULL,'152495',0,'OTROS',0,61,305,0,0,0),('1524','COP','2017',NULL,'152499',0,'AJUSTES POR INFLACION',0,61,306,0,0,0),('1528','COP','2017',NULL,'152805',0,'EQUIPOS DE PROCESAMIENTO DE DATOS',0,62,307,0,0,0),('1528','COP','2017',NULL,'152810',0,'EQUIPOS DE TELECOMUNICACIONES',0,62,308,0,0,0),('1528','COP','2017',NULL,'152815',0,'EQUIPOS DE RADIO',0,62,309,0,0,0),('1528','COP','2017',NULL,'152820',0,'SATELITES Y ANTENAS',0,62,310,0,0,0),('1528','COP','2017',NULL,'152825',0,'LINEAS TELEFONICAS',0,62,311,0,0,0),('1528','COP','2017',NULL,'152895',0,'OTROS',0,62,312,0,0,0),('1528','COP','2017',NULL,'152899',0,'AJUSTES POR INFLACION',0,62,313,0,0,0),('1532','COP','2017',NULL,'153205',0,'MEDICO',0,63,314,0,0,0),('1532','COP','2017',NULL,'153210',0,'ODONTOLOGICO',0,63,315,0,0,0),('1532','COP','2017',NULL,'153215',0,'LABORATORIO',0,63,316,0,0,0),('1532','COP','2017',NULL,'153220',0,'INSTRUMENTAL',0,63,317,0,0,0),('1532','COP','2017',NULL,'153295',0,'OTROS',0,63,318,0,0,0),('1532','COP','2017',NULL,'153299',0,'AJUSTES POR INFLACION',0,63,319,0,0,0),('1536','COP','2017',NULL,'153605',0,'DE HABITACIONES',0,64,320,0,0,0),('1536','COP','2017',NULL,'153610',0,'DE COMESTIBLES Y BEBIDAS',0,64,321,0,0,0),('1536','COP','2017',NULL,'153695',0,'OTROS',0,64,322,0,0,0),('1536','COP','2017',NULL,'153699',0,'AJUSTES POR INFLACION',0,64,323,0,0,0),('1540','COP','2017',NULL,'154005',0,'AUTOS, CAMIONETAS Y CAMPEROS',0,65,324,0,0,0),('1540','COP','2017',NULL,'154008',0,'CAMIONES, VOLQUETAS Y FURGONES',0,65,325,0,0,0),('1540','COP','2017',NULL,'154010',0,'TRACTOMULAS Y REMOLQUES',0,65,326,0,0,0),('1540','COP','2017',NULL,'154015',0,'BUSES Y BUSETAS',0,65,327,0,0,0),('1540','COP','2017',NULL,'154017',0,'RECOLECTORES Y CONTENEDORES',0,65,328,0,0,0),('1540','COP','2017',NULL,'154020',0,'MONTACARGAS',0,65,329,0,0,0),('1540','COP','2017',NULL,'154025',0,'PALAS Y GRUAS',0,65,330,0,0,0),('1540','COP','2017',NULL,'154030',0,'MOTOCICLETAS',0,65,331,0,0,0),('1540','COP','2017',NULL,'154035',0,'BICICLETAS',0,65,332,0,0,0),('1540','COP','2017',NULL,'154040',0,'ESTIBAS Y CARRETAS',0,65,333,0,0,0),('1540','COP','2017',NULL,'154045',0,'BANDAS TRANSPORTADORAS',0,65,334,0,0,0),('1540','COP','2017',NULL,'154095',0,'OTROS',0,65,335,0,0,0),('1540','COP','2017',NULL,'154099',0,'AJUSTES POR INFLACION',0,65,336,0,0,0),('1544','COP','2017',NULL,'154405',0,'BUQUES',0,66,337,0,0,0),('1544','COP','2017',NULL,'154410',0,'LANCHAS',0,66,338,0,0,0),('1544','COP','2017',NULL,'154415',0,'REMOLCADORAS',0,66,339,0,0,0),('1544','COP','2017',NULL,'154420',0,'BOTES',0,66,340,0,0,0),('1544','COP','2017',NULL,'154425',0,'BOYAS',0,66,341,0,0,0),('1544','COP','2017',NULL,'154430',0,'AMARRES',0,66,342,0,0,0),('1544','COP','2017',NULL,'154435',0,'CONTENEDORES Y CHASSISES',0,66,343,0,0,0),('1544','COP','2017',NULL,'154440',0,'GABARRAS',0,66,344,0,0,0),('1544','COP','2017',NULL,'154495',0,'OTROS',0,66,345,0,0,0),('1544','COP','2017',NULL,'154499',0,'AJUSTES POR INFLACION',0,66,346,0,0,0),('1548','COP','2017',NULL,'154805',0,'AVIONES',0,67,347,0,0,0),('1548','COP','2017',NULL,'154810',0,'AVIONETAS',0,67,348,0,0,0),('1548','COP','2017',NULL,'154815',0,'HELICOPTEROS',0,67,349,0,0,0),('1548','COP','2017',NULL,'154820',0,'TURBINAS Y MOTORES',0,67,350,0,0,0),('1548','COP','2017',NULL,'154825',0,'MANUALES DE ENTRENAMIENTO PERSONAL TECNICO',0,67,351,0,0,0),('1548','COP','2017',NULL,'154830',0,'EQUIPOS DE VUELO',0,67,352,0,0,0),('1548','COP','2017',NULL,'154895',0,'OTROS',0,67,353,0,0,0),('1548','COP','2017',NULL,'154899',0,'AJUSTES POR INFLACION',0,67,354,0,0,0),('1552','COP','2017',NULL,'155205',0,'LOCOMOTORAS',0,68,355,0,0,0),('1552','COP','2017',NULL,'155210',0,'VAGONES',0,68,356,0,0,0),('1552','COP','2017',NULL,'155215',0,'REDES FERREAS',0,68,357,0,0,0),('1552','COP','2017',NULL,'155295',0,'OTROS',0,68,358,0,0,0),('1552','COP','2017',NULL,'155299',0,'AJUSTES POR INFLACION',0,68,359,0,0,0),('1556','COP','2017',NULL,'155605',0,'INSTALACIONES PARA AGUA Y ENERGIA',0,69,360,0,0,0),('1556','COP','2017',NULL,'155610',0,'ACUEDUCTO ACEQUIAS Y CANALIZACIONES',0,69,361,0,0,0),('1556','COP','2017',NULL,'155615',0,'PLANTAS DE GENERACION HIDRAULICA',0,69,362,0,0,0),('1556','COP','2017',NULL,'155620',0,'PLANTAS DE GENERACION TERMICA',0,69,363,0,0,0),('1556','COP','2017',NULL,'155625',0,'PLANTAS DE GENERACION A GAS',0,69,364,0,0,0),('1556','COP','2017',NULL,'155628',0,'PLANTAS DE GENERACION DIESEL, GASOLINA Y PETROLEO',0,69,365,0,0,0),('1556','COP','2017',NULL,'155630',0,'PLANTAS DE DISTRIBUCION',0,69,366,0,0,0),('1556','COP','2017',NULL,'155635',0,'PLANTAS DE TRANSMISION Y SUBESTACIONES',0,69,367,0,0,0),('1556','COP','2017',NULL,'155640',0,'OLEODUCTOS',0,69,368,0,0,0),('1556','COP','2017',NULL,'155645',0,'GASODUCTOS',0,69,369,0,0,0),('1556','COP','2017',NULL,'155647',0,'POLIDUCTOS',0,69,370,0,0,0),('1556','COP','2017',NULL,'155650',0,'REDES DE DISTRIBUCION',0,69,371,0,0,0),('1556','COP','2017',NULL,'155655',0,'PLANTAS DE TRATAMIENTO',0,69,372,0,0,0),('1556','COP','2017',NULL,'155660',0,'REDES DE RECOLECCION DE AGUAS NEGRAS',0,69,373,0,0,0),('1556','COP','2017',NULL,'155665',0,'INSTALACIONES Y EQUIPO DE BOMBEO',0,69,374,0,0,0),('1556','COP','2017',NULL,'155670',0,'REDES DE DISTRIBUCION DE VAPOR',0,69,375,0,0,0),('1556','COP','2017',NULL,'155675',0,'REDES DE AIRE',0,69,376,0,0,0),('1556','COP','2017',NULL,'155680',0,'REDES ALIMENTACION DE GAS',0,69,377,0,0,0),('1556','COP','2017',NULL,'155682',0,'REDES EXTERNAS DE TELEFONIA',0,69,378,0,0,0),('1556','COP','2017',NULL,'155685',0,'PLANTAS DESHIDRATADORAS',0,69,379,0,0,0),('1556','COP','2017',NULL,'155695',0,'OTROS',0,69,380,0,0,0),('1556','COP','2017',NULL,'155699',0,'AJUSTES POR INFLACION',0,69,381,0,0,0),('1560','COP','2017',NULL,'156099',0,'AJUSTES POR INFLACION',0,70,382,0,0,0),('1562','COP','2017',NULL,'156299',0,'AJUSTES POR INFLACION',0,71,383,0,0,0),('1564','COP','2017',NULL,'156405',0,'CULTIVOS EN DESARROLLO',0,72,384,0,0,0),('1564','COP','2017',NULL,'156410',0,'CULTIVOS AMORTIZABLES',0,72,385,0,0,0),('1564','COP','2017',NULL,'156499',0,'AJUSTES POR INFLACION',0,72,386,0,0,0),('1568','COP','2017',NULL,'156805',0,'PAVIMENTACION Y PATIOS',0,73,387,0,0,0),('1568','COP','2017',NULL,'156810',0,'VIAS',0,73,388,0,0,0),('1568','COP','2017',NULL,'156815',0,'PUENTES',0,73,389,0,0,0),('1568','COP','2017',NULL,'156820',0,'CALLES',0,73,390,0,0,0),('1568','COP','2017',NULL,'156825',0,'AERODROMOS',0,73,391,0,0,0),('1568','COP','2017',NULL,'156895',0,'OTROS',0,73,392,0,0,0),('1568','COP','2017',NULL,'156899',0,'AJUSTES POR INFLACION',0,73,393,0,0,0),('1572','COP','2017',NULL,'157205',0,'MINAS',0,74,394,0,0,0),('1572','COP','2017',NULL,'157210',0,'CANTERAS',0,74,395,0,0,0),('1572','COP','2017',NULL,'157299',0,'AJUSTES POR INFLACION',0,74,396,0,0,0),('1576','COP','2017',NULL,'157699',0,'AJUSTES POR INFLACION',0,75,397,0,0,0),('1580','COP','2017',NULL,'158099',0,'AJUSTES POR INFLACION',0,76,398,0,0,0),('1584','COP','2017',NULL,'158405',0,'ESPECIES MENORES',0,77,399,0,0,0),('1584','COP','2017',NULL,'158410',0,'ESPECIES MAYORES',0,77,400,0,0,0),('1584','COP','2017',NULL,'158499',0,'AJUSTES POR INFLACION',0,77,401,0,0,0),('1588','COP','2017',NULL,'158805',0,'MAQUINARIA Y EQUIPO',0,78,402,0,0,0),('1588','COP','2017',NULL,'158810',0,'EQUIPO DE OFICINA',0,78,403,0,0,0),('1588','COP','2017',NULL,'158815',0,'EQUIPO DE COMPUTACION Y COMUNICACION',0,78,404,0,0,0),('1588','COP','2017',NULL,'158820',0,'EQUIPO MEDICO CIENTIFICO',0,78,405,0,0,0),('1588','COP','2017',NULL,'158825',0,'EQUIPO DE HOTELES Y RESTAURANTES',0,78,406,0,0,0),('1588','COP','2017',NULL,'158830',0,'FLOTA Y EQUIPO DE TRANSPORTE',0,78,407,0,0,0),('1588','COP','2017',NULL,'158835',0,'FLOTA Y EQUIPO FLUVIAL Y/O MARITIMO',0,78,408,0,0,0),('1588','COP','2017',NULL,'158840',0,'FLOTA Y EQUIPO AEREO',0,78,409,0,0,0),('1588','COP','2017',NULL,'158845',0,'FLOTA Y EQUIPO FERREO',0,78,410,0,0,0),('1588','COP','2017',NULL,'158850',0,'PLANTAS Y REDES',0,78,411,0,0,0),('1588','COP','2017',NULL,'158855',0,'ARMAMENTO DE VIGILANCIA',0,78,412,0,0,0),('1588','COP','2017',NULL,'158860',0,'SEMOVIENTES',0,78,413,0,0,0),('1588','COP','2017',NULL,'158865',0,'ENVASES Y EMPAQUES',0,78,414,0,0,0),('1588','COP','2017',NULL,'158899',0,'AJUSTES POR INFLACION',0,78,415,0,0,0),('1592','COP','2017',NULL,'159205',0,'CONSTRUCCIONES Y EDIFICACIONES',0,79,416,0,0,0),('1592','COP','2017',NULL,'159210',0,'MAQUINARIA Y EQUIPO',0,79,417,0,0,0),('1592','COP','2017',NULL,'159215',0,'EQUIPO DE OFICINA',0,79,418,0,0,0),('1592','COP','2017',NULL,'159220',0,'EQUIPO DE COMPUTACION Y COMUNICACION',0,79,419,0,0,0),('1592','COP','2017',NULL,'159225',0,'EQUIPO MEDICO CIENTIFICO',0,79,420,0,0,0),('1592','COP','2017',NULL,'159230',0,'EQUIPO DE HOTELES Y RESTAURANTES',0,79,421,0,0,0),('1592','COP','2017',NULL,'159235',0,'FLOTA Y EQUIPO DE TRANSPORTE',0,79,422,0,0,0),('1592','COP','2017',NULL,'159240',0,'FLOTA Y EQUIPO FLUVIAL Y/O MARITIMO',0,79,423,0,0,0),('1592','COP','2017',NULL,'159245',0,'FLOTA Y EQUIPO AEREO',0,79,424,0,0,0),('1592','COP','2017',NULL,'159250',0,'FLOTA Y EQUIPO FERREO',0,79,425,0,0,0),('1592','COP','2017',NULL,'159255',0,'ACUEDUCTOS PLANTAS Y REDES',0,79,426,0,0,0),('1592','COP','2017',NULL,'159260',0,'ARMAMENTO DE VIGILANCIA',0,79,427,0,0,0),('1592','COP','2017',NULL,'159265',0,'ENVASES Y EMPAQUES',0,79,428,0,0,0),('1592','COP','2017',NULL,'159299',0,'AJUSTES POR INFLACION',0,79,429,0,0,0),('1596','COP','2017',NULL,'159605',0,'EXCESO FISCAL SOBRE LA CONTABLE',0,80,430,0,0,0),('1596','COP','2017',NULL,'159610',0,'DEFECTO FISCAL SOBRE LA CONTABLE (CR)',0,80,431,0,0,0),('1596','COP','2017',NULL,'159699',0,'AJUSTES POR INFLACION',0,80,432,0,0,0),('1597','COP','2017',NULL,'159705',0,'PLANTACIONES AGRICOLAS Y FORESTALES',0,81,433,0,0,0),('1597','COP','2017',NULL,'159710',0,'VIAS DE COMUNICACION',0,81,434,0,0,0),('1597','COP','2017',NULL,'159715',0,'SEMOVIENTES',0,81,435,0,0,0),('1597','COP','2017',NULL,'159799',0,'AJUSTES POR INFLACION',0,81,436,0,0,0),('1598','COP','2017',NULL,'159805',0,'MINAS Y CANTERAS',0,82,437,0,0,0),('1598','COP','2017',NULL,'159815',0,'POZOS ARTESIANOS',0,82,438,0,0,0),('1598','COP','2017',NULL,'159820',0,'YACIMIENTOS',0,82,439,0,0,0),('1598','COP','2017',NULL,'159899',0,'AJUSTES POR INFLACION',0,82,440,0,0,0),('1599','COP','2017',NULL,'159904',0,'TERRENOS',0,83,441,0,0,0),('1599','COP','2017',NULL,'159906',0,'MATERIALES PROYECTOS PETROLEROS',0,83,442,0,0,0),('1599','COP','2017',NULL,'159908',0,'CONSTRUCCIONES EN CURSO',0,83,443,0,0,0),('1599','COP','2017',NULL,'159912',0,'MAQUINARIA EN MONTAJE',0,83,444,0,0,0),('1599','COP','2017',NULL,'159916',0,'CONSTRUCCIONES Y EDIFICACIONES',0,83,445,0,0,0),('1599','COP','2017',NULL,'159920',0,'MAQUINARIA Y EQUIPO',0,83,446,0,0,0),('1599','COP','2017',NULL,'159924',0,'EQUIPO DE OFICINA',0,83,447,0,0,0),('1599','COP','2017',NULL,'159928',0,'EQUIPO DE COMPUTACION Y COMUNICACION',0,83,448,0,0,0),('1599','COP','2017',NULL,'159932',0,'EQUIPO MEDICO CIENTIFICO',0,83,449,0,0,0),('1599','COP','2017',NULL,'159936',0,'EQUIPO DE HOTELES Y RESTAURANTES',0,83,450,0,0,0),('1599','COP','2017',NULL,'159940',0,'FLOTA Y EQUIPO DE TRANSPORTE',0,83,451,0,0,0),('1599','COP','2017',NULL,'159944',0,'FLOTA Y EQUIPO FLUVIAL Y/O MARITIMO',0,83,452,0,0,0),('1599','COP','2017',NULL,'159948',0,'FLOTA Y EQUIPO AEREO',0,83,453,0,0,0),('1599','COP','2017',NULL,'159952',0,'FLOTA Y EQUIPO FERREO',0,83,454,0,0,0),('1599','COP','2017',NULL,'159956',0,'ACUEDUCTOS, PLANTAS Y REDES',0,83,455,0,0,0),('1599','COP','2017',NULL,'159960',0,'ARMAMENTO DE VIGILANCIA',0,83,456,0,0,0),('1599','COP','2017',NULL,'159962',0,'ENVASES Y EMPAQUES',0,83,457,0,0,0),('1599','COP','2017',NULL,'159964',0,'PLANTACIONES AGRICOLAS Y FORESTALES',0,83,458,0,0,0),('1599','COP','2017',NULL,'159968',0,'VIAS DE COMUNICACION',0,83,459,0,0,0),('1599','COP','2017',NULL,'159972',0,'MINAS Y CANTERAS',0,83,460,0,0,0),('1599','COP','2017',NULL,'159980',0,'POZOS ARTESIANOS',0,83,461,0,0,0),('1599','COP','2017',NULL,'159984',0,'YACIMIENTOS',0,83,462,0,0,0),('1599','COP','2017',NULL,'159988',0,'SEMOVIENTES',0,83,463,0,0,0),('1599','COP','2017',NULL,'159992',0,'PROPIEDADES PLANTA Y EQUIPO EN TRANSITO',0,83,464,0,0,0),('1605','COP','2017',NULL,'160505',0,'FORMADO O ESTIMADO',0,84,465,0,0,0),('1605','COP','2017',NULL,'160510',0,'ADQUIRIDO O COMPRADO',0,84,466,0,0,0),('1605','COP','2017',NULL,'160599',0,'AJUSTES POR INFLACION',0,84,467,0,0,0),('1610','COP','2017',NULL,'161005',0,'ADQUIRIDAS',0,85,468,0,0,0),('1610','COP','2017',NULL,'161010',0,'FORMADAS',0,85,469,0,0,0),('1610','COP','2017',NULL,'161099',0,'AJUSTES POR INFLACION',0,85,470,0,0,0),('1615','COP','2017',NULL,'161505',0,'ADQUIRIDAS',0,86,471,0,0,0),('1615','COP','2017',NULL,'161510',0,'FORMADAS',0,86,472,0,0,0),('1615','COP','2017',NULL,'161599',0,'AJUSTES POR INFLACION',0,86,473,0,0,0),('1620','COP','2017',NULL,'162005',0,'CONCESIONES',0,87,474,0,0,0),('1620','COP','2017',NULL,'162010',0,'FRANQUICIAS',0,87,475,0,0,0),('1620','COP','2017',NULL,'162099',0,'AJUSTES POR INFLACION',0,87,476,0,0,0),('1625','COP','2017',NULL,'162505',0,'DERECHOS DE AUTOR',0,88,477,0,0,0),('1625','COP','2017',NULL,'162510',0,'PUESTO DE BOLSA',0,88,478,0,0,0),('1625','COP','2017',NULL,'162515',0,'EN FIDEICOMISOS INMOBILIARIOS',0,88,479,0,0,0),('1625','COP','2017',NULL,'162520',0,'EN FIDEICOMISOS DE GARANTIA',0,88,480,0,0,0),('1625','COP','2017',NULL,'162525',0,'EN FIDEICOMISOS DE ADMINISTRACION',0,88,481,0,0,0),('1625','COP','2017',NULL,'162595',0,'OTROS',0,88,482,0,0,0),('1625','COP','2017',NULL,'162599',0,'AJUSTES POR INFLACION',0,88,483,0,0,0),('1630','COP','2017',NULL,'163099',0,'AJUSTES POR INFLACION',0,89,484,0,0,0),('1635','COP','2017',NULL,'163599',0,'AJUSTES POR INFLACION',0,90,485,0,0,0),('1698','COP','2017',NULL,'169805',0,'CREDITO MERCANTIL',0,91,486,0,0,0),('1698','COP','2017',NULL,'169810',0,'MARCAS',0,91,487,0,0,0),('1698','COP','2017',NULL,'169815',0,'PATENTES',0,91,488,0,0,0),('1698','COP','2017',NULL,'169820',0,'CONCESIONES Y FRANQUICIAS',0,91,489,0,0,0),('1698','COP','2017',NULL,'169830',0,'DERECHOS',0,91,490,0,0,0),('1698','COP','2017',NULL,'169835',0,'KNOW HOW',0,91,491,0,0,0),('1698','COP','2017',NULL,'169840',0,'LICENCIAS',0,91,492,0,0,0),('1698','COP','2017',NULL,'169899',0,'AJUSTES POR INFLACION',0,91,493,0,0,0),('1705','COP','2017',NULL,'170505',0,'INTERESES',0,93,494,0,0,0),('1705','COP','2017',NULL,'170510',0,'HONORARIOS',0,93,495,0,0,0),('1705','COP','2017',NULL,'170515',0,'COMISIONES',0,93,496,0,0,0),('1705','COP','2017',NULL,'170520',0,'SEGUROS Y FIANZAS',0,93,497,0,0,0),('1705','COP','2017',NULL,'170525',0,'ARRENDAMIENTOS',0,93,498,0,0,0),('1705','COP','2017',NULL,'170530',0,'BODEGAJES',0,93,499,0,0,0),('1705','COP','2017',NULL,'170535',0,'MANTENIMIENTO EQUIPOS',0,93,500,0,0,0),('1705','COP','2017',NULL,'170540',0,'SERVICIOS',0,93,501,0,0,0),('1705','COP','2017',NULL,'170545',0,'SUSCRIPCIONES',0,93,502,0,0,0),('1705','COP','2017',NULL,'170595',0,'OTROS',0,93,503,0,0,0),('1710','COP','2017',NULL,'171004',0,'ORGANIZACION Y PREOPERATIVOS',0,94,504,0,0,0),('1710','COP','2017',NULL,'171008',0,'REMODELACIONES',0,94,505,0,0,0),('1710','COP','2017',NULL,'171012',0,'ESTUDIOS, INVESTIGACIONES Y PROYECTOS',0,94,506,0,0,0),('1710','COP','2017',NULL,'171016',0,'PROGRAMAS PARA COMPUTADOR (SOFTWARE)',0,94,507,0,0,0),('1710','COP','2017',NULL,'171020',0,'UTILES Y PAPELERIA',0,94,508,0,0,0),('1710','COP','2017',NULL,'171024',0,'MEJORAS A PROPIEDADES AJENAS',0,94,509,0,0,0),('1710','COP','2017',NULL,'171028',0,'CONTRIBUCIONES Y AFILIACIONES',0,94,510,0,0,0),('1710','COP','2017',NULL,'171032',0,'ENTRENAMIENTO DE PERSONAL',0,94,511,0,0,0),('1710','COP','2017',NULL,'171036',0,'FERIAS Y EXPOSICIONES',0,94,512,0,0,0),('1710','COP','2017',NULL,'171040',0,'LICENCIAS',0,94,513,0,0,0),('1710','COP','2017',NULL,'171044',0,'PUBLICIDAD, PROPAGANDA Y AVISOS',0,94,514,0,0,0),('1710','COP','2017',NULL,'171048',0,'ELEMENTOS DE ASEO Y CAFETERIA',0,94,515,0,0,0),('1710','COP','2017',NULL,'171052',0,'MOLDES Y TROQUELES',0,94,516,0,0,0),('1710','COP','2017',NULL,'171056',0,'INSTRUMENTAL QUIRURGICO',0,94,517,0,0,0),('1710','COP','2017',NULL,'171060',0,'DOTACION Y SUMINISTRO A TRABAJADORES',0,94,518,0,0,0),('1710','COP','2017',NULL,'171064',0,'ELEMENTOS DE ROPERIA Y LENCERIA',0,94,519,0,0,0),('1710','COP','2017',NULL,'171068',0,'LOZA Y CRISTALERIA',0,94,520,0,0,0),('1710','COP','2017',NULL,'171072',0,'DESCUENTO EN COLOCACION DE BONOS',0,94,521,0,0,0),('1710','COP','2017',NULL,'171076',0,'IMPUESTO DE RENTA DIFERIDO &quot;DEBITOS&quot; POR DIFERENCIAS',0,94,522,0,0,0),('1710','COP','2017',NULL,'171080',0,'CONCURSOS Y LICITACIONES',0,94,523,0,0,0),('1710','COP','2017',NULL,'171095',0,'OTROS',0,94,524,0,0,0),('1710','COP','2017',NULL,'171099',0,'AJUSTES POR INFLACION',0,94,525,0,0,0),('1715','COP','2017',NULL,'171505',0,'POZOS SECOS',0,95,526,0,0,0),('1715','COP','2017',NULL,'171510',0,'POZOS NO COMERCIALES',0,95,527,0,0,0),('1715','COP','2017',NULL,'171515',0,'OTROS COSTOS DE EXPLORACION',0,95,528,0,0,0),('1715','COP','2017',NULL,'171599',0,'AJUSTES POR INFLACION',0,95,529,0,0,0),('1720','COP','2017',NULL,'172005',0,'PERFORACION Y EXPLOTACION',0,96,530,0,0,0),('1720','COP','2017',NULL,'172010',0,'PERFORACIONES CAMPOS EN DESARROLLO',0,96,531,0,0,0),('1720','COP','2017',NULL,'172015',0,'FACILIDADES DE PRODUCCION',0,96,532,0,0,0),('1720','COP','2017',NULL,'172020',0,'SERVICIO A POZOS',0,96,533,0,0,0),('1720','COP','2017',NULL,'172099',0,'AJUSTES POR INFLACION',0,96,534,0,0,0),('1798','COP','2017',NULL,'179805',0,'COSTOS DE EXPLORACION POR AMORTIZAR',0,98,535,0,0,0),('1798','COP','2017',NULL,'179810',0,'COSTOS DE EXPLOTACION Y DESARROLLO',0,98,536,0,0,0),('1798','COP','2017',NULL,'179899',0,'AJUSTES POR INFLACION',0,98,537,0,0,0),('1805','COP','2017',NULL,'180505',0,'OBRAS DE ARTE',0,99,538,0,0,0),('1805','COP','2017',NULL,'180510',0,'BIBLIOTECAS',0,99,539,0,0,0),('1805','COP','2017',NULL,'180595',0,'OTROS',0,99,540,0,0,0),('1805','COP','2017',NULL,'180599',0,'AJUSTES POR INFLACION',0,99,541,0,0,0),('1895','COP','2017',NULL,'189505',0,'MAQUINAS PORTEADORAS',0,100,542,0,0,0),('1895','COP','2017',NULL,'189510',0,'BIENES ENTREGADOS EN COMODATO',0,100,543,0,0,0),('1895','COP','2017',NULL,'189515',0,'AMORTIZACION ACUMULADA DE BIENES ENTREGADOS EN COMODATO (CR)',0,100,544,0,0,0),('1895','COP','2017',NULL,'189520',0,'BIENES RECIBIDOS EN PAGO',0,100,545,0,0,0),('1895','COP','2017',NULL,'189525',0,'DERECHOS SUCESORALES',0,100,546,0,0,0),('1895','COP','2017',NULL,'189530',0,'ESTAMPILLAS',0,100,547,0,0,0),('1895','COP','2017',NULL,'189595',0,'OTROS',0,100,548,0,0,0),('1895','COP','2017',NULL,'189599',0,'AJUSTES POR INFLACION',0,100,549,0,0,0),('1899','COP','2017',NULL,'189905',0,'BIENES DE ARTE Y CULTURA',0,101,550,0,0,0),('1899','COP','2017',NULL,'189995',0,'DIVERSOS',0,101,551,0,0,0),('1905','COP','2017',NULL,'190505',0,'ACCIONES',0,102,552,0,0,0),('1905','COP','2017',NULL,'190510',0,'CUOTAS O PARTES DE INTERES SOCIAL',0,102,553,0,0,0),('1905','COP','2017',NULL,'190515',0,'DERECHOS FIDUCIARIOS',0,102,554,0,0,0),('1910','COP','2017',NULL,'191004',0,'TERRENOS',0,103,555,0,0,0),('1910','COP','2017',NULL,'191006',0,'MATERIALES PROYECTOS PETROLEROS',0,103,556,0,0,0),('1910','COP','2017',NULL,'191008',0,'CONSTRUCCIONES Y EDIFICACIONES',0,103,557,0,0,0),('1910','COP','2017',NULL,'191012',0,'MAQUINARIA Y EQUIPO',0,103,558,0,0,0),('1910','COP','2017',NULL,'191016',0,'EQUIPO DE OFICINA',0,103,559,0,0,0),('1910','COP','2017',NULL,'191020',0,'EQUIPO DE COMPUTACION Y COMUNICACION',0,103,560,0,0,0),('1910','COP','2017',NULL,'191024',0,'EQUIPO MEDICO CIENTIFICO',0,103,561,0,0,0),('1910','COP','2017',NULL,'191028',0,'EQUIPO DE HOTELES Y RESTAURANTES',0,103,562,0,0,0),('1910','COP','2017',NULL,'191032',0,'FLOTA Y EQUIPO DE TRANSPORTE',0,103,563,0,0,0),('1910','COP','2017',NULL,'191036',0,'FLOTA Y EQUIPO FLUVIAL Y/O MARITIMO',0,103,564,0,0,0),('1910','COP','2017',NULL,'191040',0,'FLOTA Y EQUIPO AEREO',0,103,565,0,0,0),('1910','COP','2017',NULL,'191044',0,'FLOTA Y EQUIPO FERREO',0,103,566,0,0,0),('1910','COP','2017',NULL,'191048',0,'ACUEDUCTOS PLANTAS Y REDES',0,103,567,0,0,0),('1910','COP','2017',NULL,'191052',0,'ARMAMENTO DE VIGILANCIA',0,103,568,0,0,0),('1910','COP','2017',NULL,'191056',0,'ENVASES Y EMPAQUES',0,103,569,0,0,0),('1910','COP','2017',NULL,'191060',0,'PLANTACIONES AGRICOLAS Y FORESTALES',0,103,570,0,0,0),('1910','COP','2017',NULL,'191064',0,'VIAS DE COMUNICACION',0,103,571,0,0,0),('1910','COP','2017',NULL,'191068',0,'MINAS Y CANTERAS',0,103,572,0,0,0),('1910','COP','2017',NULL,'191072',0,'POZOS ARTESIANOS',0,103,573,0,0,0),('1910','COP','2017',NULL,'191076',0,'YACIMIENTOS',0,103,574,0,0,0),('1910','COP','2017',NULL,'191080',0,'SEMOVIENTES',0,103,575,0,0,0),('1995','COP','2017',NULL,'199505',0,'BIENES DE ARTE Y CULTURA',0,104,576,0,0,0),('1995','COP','2017',NULL,'199510',0,'BIENES ENTREGADOS EN COMODATO',0,104,577,0,0,0),('1995','COP','2017',NULL,'199515',0,'BIENES RECIBIDOS EN PAGO',0,104,578,0,0,0),('1995','COP','2017',NULL,'199520',0,'INVENTARIO DE SEMOVIENTES',0,104,579,0,0,0),('2105','COP','2017',NULL,'210505',0,'SOBREGIROS',0,105,580,0,0,0),('2105','COP','2017',NULL,'210510',0,'PAGARES',0,105,581,0,0,0),('2105','COP','2017',NULL,'210515',0,'CARTAS DE CREDITO',0,105,582,0,0,0),('2105','COP','2017',NULL,'210520',0,'ACEPTACIONES BANCARIAS',0,105,583,0,0,0),('2110','COP','2017',NULL,'211005',0,'SOBREGIROS',0,106,584,0,0,0),('2110','COP','2017',NULL,'211010',0,'PAGARES',0,106,585,0,0,0),('2110','COP','2017',NULL,'211015',0,'CARTAS DE CREDITO',0,106,586,0,0,0),('2110','COP','2017',NULL,'211020',0,'ACEPTACIONES BANCARIAS',0,106,587,0,0,0),('2115','COP','2017',NULL,'211505',0,'PAGARES',0,107,588,0,0,0),('2115','COP','2017',NULL,'211510',0,'ACEPTACIONES FINANCIERAS',0,107,589,0,0,0),('2115','COP','2017',NULL,'211515',0,'CARTAS DE CREDITO',0,107,590,0,0,0),('2120','COP','2017',NULL,'212005',0,'PAGARES',0,108,591,0,0,0),('2120','COP','2017',NULL,'212010',0,'ACEPTACIONES FINANCIERAS',0,108,592,0,0,0),('2125','COP','2017',NULL,'212505',0,'SOBREGIROS',0,109,593,0,0,0),('2125','COP','2017',NULL,'212510',0,'PAGARES',0,109,594,0,0,0),('2125','COP','2017',NULL,'212515',0,'HIPOTECARIAS',0,109,595,0,0,0),('2135','COP','2017',NULL,'213505',0,'ACCIONES',0,111,596,0,0,0),('2135','COP','2017',NULL,'213510',0,'CUOTAS O PARTES DE INTERES SOCIAL',0,111,597,0,0,0),('2135','COP','2017',NULL,'213515',0,'BONOS',0,111,598,0,0,0),('2135','COP','2017',NULL,'213520',0,'CEDULAS',0,111,599,0,0,0),('2135','COP','2017',NULL,'213525',0,'CERTIFICADOS',0,111,600,0,0,0),('2135','COP','2017',NULL,'213530',0,'PAPELES COMERCIALES',0,111,601,0,0,0),('2135','COP','2017',NULL,'213535',0,'TITULOS',0,111,602,0,0,0),('2135','COP','2017',NULL,'213540',0,'ACEPTACIONES BANCARIAS O FINANCIERAS',0,111,603,0,0,0),('2135','COP','2017',NULL,'213595',0,'OTROS',0,111,604,0,0,0),('2145','COP','2017',NULL,'214505',0,'GOBIERNO NACIONAL',0,113,605,0,0,0),('2145','COP','2017',NULL,'214510',0,'ENTIDADES OFICIALES',0,113,606,0,0,0),('2195','COP','2017',NULL,'219505',0,'PARTICULARES',0,114,607,0,0,0),('2195','COP','2017',NULL,'219510',0,'COMPAÑIAS VINCULADAS',0,114,608,0,0,0),('2195','COP','2017',NULL,'219515',0,'CASA MATRIZ',0,114,609,0,0,0),('2195','COP','2017',NULL,'219520',0,'SOCIOS O ACCIONISTAS',0,114,610,0,0,0),('2195','COP','2017',NULL,'219525',0,'FONDOS Y COOPERATIVAS',0,114,611,0,0,0),('2195','COP','2017',NULL,'219595',0,'OTRAS',0,114,612,0,0,0),('2335','COP','2017',NULL,'233505',0,'GASTOS FINANCIEROS',0,125,613,0,0,0),('2335','COP','2017',NULL,'233510',0,'GASTOS LEGALES',0,125,614,0,0,0),('2335','COP','2017',NULL,'233515',0,'LIBROS, SUSCRIPCIONES, PERIODICOS Y REVISTAS',0,125,615,0,0,0),('2335','COP','2017',NULL,'233520',0,'COMISIONES',0,125,616,0,0,0),('2335','COP','2017',NULL,'233525',0,'HONORARIOS',0,125,617,0,0,0),('2335','COP','2017',NULL,'233530',0,'SERVICIOS TECNICOS',0,125,618,0,0,0),('2335','COP','2017',NULL,'233535',0,'SERVICIOS DE MANTENIMIENTO',0,125,619,0,0,0),('2335','COP','2017',NULL,'233540',0,'ARRENDAMIENTOS',0,125,620,0,0,0),('2335','COP','2017',NULL,'233545',0,'TRANSPORTES, FLETES Y ACARREOS',0,125,621,0,0,0),('2335','COP','2017',NULL,'233550',0,'SERVICIOS PUBLICOS',0,125,622,0,0,0),('2335','COP','2017',NULL,'233555',0,'SEGUROS',0,125,623,0,0,0),('2335','COP','2017',NULL,'233560',0,'GASTOS DE VIAJE',0,125,624,0,0,0),('2335','COP','2017',NULL,'233565',0,'GASTOS DE REPRESENTACION Y RELACIONES PUBLICAS',0,125,625,0,0,0),('2335','COP','2017',NULL,'233570',0,'SERVICIOS ADUANEROS',0,125,626,0,0,0),('2335','COP','2017',NULL,'233595',0,'OTROS',0,125,627,0,0,0),('2355','COP','2017',NULL,'235505',0,'ACCIONISTAS',0,129,628,0,0,0),('2355','COP','2017',NULL,'235510',0,'SOCIOS',0,129,629,0,0,0),('2360','COP','2017',NULL,'236005',0,'DIVIDENDOS',0,130,630,0,0,0),('2360','COP','2017',NULL,'236010',0,'PARTICIPACIONES',0,130,631,0,0,0),('2365','COP','2017',NULL,'236505',0,'SALARIOS Y PAGOS LABORALES',0,131,632,0,0,0),('2365','COP','2017',NULL,'236510',0,'DIVIDENDOS Y/O PARTICIPACIONES',0,131,633,0,0,0),('2365','COP','2017',NULL,'236515',0,'HONORARIOS',0,131,634,0,0,0),('2365','COP','2017',NULL,'236520',0,'COMISIONES',0,131,635,0,0,0),('2365','COP','2017',NULL,'236525',0,'SERVICIOS',0,131,636,0,0,0),('2365','COP','2017',NULL,'236530',0,'ARRENDAMIENTOS',0,131,637,0,0,0),('2365','COP','2017',NULL,'236535',0,'RENDIMIENTOS FINANCIEROS',0,131,638,0,0,0),('2365','COP','2017',NULL,'236540',0,'COMPRAS',0,131,639,0,0,0),('2365','COP','2017',NULL,'236545',0,'LOTERIAS, RIFAS, APUESTAS Y SIMILARES',0,131,640,0,0,0),('2365','COP','2017',NULL,'236550',0,'POR PAGOS AL EXTERIOR',0,131,641,0,0,0),('2365','COP','2017',NULL,'236555',0,'POR INGRESOS OBTENIDOS EN EL EXTERIOR',0,131,642,0,0,0),('2365','COP','2017',NULL,'236560',0,'ENAJENACION PROPIEDADES PLANTA Y EQUIPO PERSONAS NATURALES',0,131,643,0,0,0),('2365','COP','2017',NULL,'236565',0,'POR IMPUESTO DE TIMBRE',0,131,644,0,0,0),('2365','COP','2017',NULL,'236570',0,'OTRAS RETENCIONES Y PATRIMONIO',0,131,645,0,0,0),('2365','COP','2017',NULL,'236575',0,'AUTORRETENCIONES',0,131,646,0,0,0),('2370','COP','2017',NULL,'237005',0,'APORTES AL I.S.S.',0,132,647,0,0,0),('2370','COP','2017',NULL,'237010',0,'APORTES AL I.C.B.F., SENA Y CAJAS DE COMPENSACION',0,132,648,0,0,0),('2370','COP','2017',NULL,'237015',0,'APORTES AL F.I.C.',0,132,649,0,0,0),('2370','COP','2017',NULL,'237025',0,'EMBARGOS JUDICIALES',0,132,650,0,0,0),('2370','COP','2017',NULL,'237030',0,'LIBRANZAS',0,132,651,0,0,0),('2370','COP','2017',NULL,'237035',0,'SINDICATOS',0,132,652,0,0,0),('2370','COP','2017',NULL,'237040',0,'COOPERATIVAS',0,132,653,0,0,0),('2370','COP','2017',NULL,'237045',0,'FONDOS',0,132,654,0,0,0),('2370','COP','2017',NULL,'237095',0,'OTROS',0,132,655,0,0,0),('2380','COP','2017',NULL,'238005',0,'DEPOSITARIOS',0,134,656,0,0,0),('2380','COP','2017',NULL,'238010',0,'COMISIONISTAS DE BOLSAS',0,134,657,0,0,0),('2380','COP','2017',NULL,'238015',0,'SOCIEDAD ADMINISTRADORA - FONDOS DE INVERSION',0,134,658,0,0,0),('2380','COP','2017',NULL,'238020',0,'REINTEGROS POR PAGAR',0,134,659,0,0,0),('2380','COP','2017',NULL,'238025',0,'FONDO DE PERSEVERANCIA',0,134,660,0,0,0),('2380','COP','2017',NULL,'238030',0,'FONDOS DE CESANTIAS Y/O PENSIONES',0,134,661,0,0,0),('2380','COP','2017',NULL,'238035',0,'DONACIONES ASIGNADAS POR PAGAR',0,134,662,0,0,0),('2380','COP','2017',NULL,'238095',0,'OTROS',0,134,663,0,0,0),('2404','COP','2017',NULL,'240405',0,'VIGENCIA FISCAL CORRIENTE',0,135,664,0,0,0),('2404','COP','2017',NULL,'240410',0,'VIGENCIAS FISCALES ANTERIORES',0,135,665,0,0,0),('2408','COP','2017',NULL,'240800',0,'IMPUESTO SOBRE LAS VENTAS POR PAGAR',0,136,666,0,0,0),('2412','COP','2017',NULL,'241205',0,'VIGENCIA FISCAL CORRIENTE',0,137,667,0,0,0),('2412','COP','2017',NULL,'241210',0,'VIGENCIAS FISCALES ANTERIORES',0,137,668,0,0,0),('2424','COP','2017',NULL,'242405',0,'VIGENCIA FISCAL CORRIENTE',0,140,669,0,0,0),('2424','COP','2017',NULL,'242410',0,'VIGENCIAS FISCALES ANTERIORES',0,140,670,0,0,0),('2436','COP','2017',NULL,'243605',0,'VIGENCIA FISCAL CORRIENTE',0,143,671,0,0,0),('2436','COP','2017',NULL,'243610',0,'VIGENCIAS FISCALES ANTERIORES',0,143,672,0,0,0),('2444','COP','2017',NULL,'244405',0,'DE HIDROCARBUROS',0,145,673,0,0,0),('2444','COP','2017',NULL,'244410',0,'DE MINAS',0,145,674,0,0,0),('2464','COP','2017',NULL,'246405',0,'DE LICORES',0,150,675,0,0,0),('2464','COP','2017',NULL,'246410',0,'DE CERVEZAS',0,150,676,0,0,0),('2464','COP','2017',NULL,'246415',0,'DE CIGARRILLOS',0,150,677,0,0,0),('2510','COP','2017',NULL,'251005',0,'LEY LABORAL ANTERIOR',0,155,678,0,0,0),('2510','COP','2017',NULL,'251010',0,'LEY 50 DE 1990 Y NORMAS POSTERIORES',0,155,679,0,0,0),('2525','COP','2017',NULL,'252501',0,'a 252598',0,158,680,0,0,0),('2530','COP','2017',NULL,'253005',0,'PRIMAS',0,159,681,0,0,0),('2530','COP','2017',NULL,'253010',0,'AUXILIOS',0,159,682,0,0,0),('2530','COP','2017',NULL,'253015',0,'DOTACION Y SUMINISTRO A TRABAJADORES',0,159,683,0,0,0),('2530','COP','2017',NULL,'253020',0,'BONIFICACIONES',0,159,684,0,0,0),('2530','COP','2017',NULL,'253025',0,'SEGUROS',0,159,685,0,0,0),('2530','COP','2017',NULL,'253095',0,'OTRAS',0,159,686,0,0,0),('2605','COP','2017',NULL,'260505',0,'INTERESES',0,163,687,0,0,0),('2605','COP','2017',NULL,'260510',0,'COMISIONES',0,163,688,0,0,0),('2605','COP','2017',NULL,'260515',0,'HONORARIOS',0,163,689,0,0,0),('2605','COP','2017',NULL,'260520',0,'SERVICIOS TECNICOS',0,163,690,0,0,0),('2605','COP','2017',NULL,'260525',0,'TRANSPORTES, FLETES Y ACARREOS',0,163,691,0,0,0),('2605','COP','2017',NULL,'260530',0,'GASTOS DE VIAJE',0,163,692,0,0,0),('2605','COP','2017',NULL,'260535',0,'SERVICIOS PUBLICOS',0,163,693,0,0,0),('2605','COP','2017',NULL,'260540',0,'REGALIAS',0,163,694,0,0,0),('2605','COP','2017',NULL,'260545',0,'GARANTIAS',0,163,695,0,0,0),('2605','COP','2017',NULL,'260550',0,'MATERIALES Y REPUESTOS',0,163,696,0,0,0),('2605','COP','2017',NULL,'260595',0,'OTROS',0,163,697,0,0,0),('2610','COP','2017',NULL,'261005',0,'CESANTIAS',0,164,698,0,0,0),('2610','COP','2017',NULL,'261010',0,'INTERESES SOBRE CESANTIAS',0,164,699,0,0,0),('2610','COP','2017',NULL,'261015',0,'VACACIONES',0,164,700,0,0,0),('2610','COP','2017',NULL,'261020',0,'PRIMA DE SERVICIOS',0,164,701,0,0,0),('2610','COP','2017',NULL,'261025',0,'PRESTACIONES EXTRALEGALES',0,164,702,0,0,0),('2610','COP','2017',NULL,'261030',0,'VIATICOS',0,164,703,0,0,0),('2610','COP','2017',NULL,'261095',0,'OTRAS',0,164,704,0,0,0),('2615','COP','2017',NULL,'261505',0,'DE RENTA Y COMPLEMENTARIOS',0,165,705,0,0,0),('2615','COP','2017',NULL,'261510',0,'DE INDUSTRIA Y COMERCIO',0,165,706,0,0,0),('2615','COP','2017',NULL,'261515',0,'TASA POR UTILIZACION DE PUERTOS',0,165,707,0,0,0),('2615','COP','2017',NULL,'261520',0,'DE VEHICULOS',0,165,708,0,0,0),('2615','COP','2017',NULL,'261525',0,'DE HIDROCARBUROS Y MINAS',0,165,709,0,0,0),('2615','COP','2017',NULL,'261595',0,'OTROS',0,165,710,0,0,0),('2620','COP','2017',NULL,'262005',0,'CALCULO ACTUARIAL PENSIONES DE JUBILACION',0,166,711,0,0,0),('2620','COP','2017',NULL,'262010',0,'PENSIONES DE JUBILACION POR AMORTIZAR (DB)',0,166,712,0,0,0),('2625','COP','2017',NULL,'262505',0,'ACUEDUCTO Y ALCANTARILLADO',0,167,713,0,0,0),('2625','COP','2017',NULL,'262510',0,'ENERGIA ELECTRICA',0,167,714,0,0,0),('2625','COP','2017',NULL,'262515',0,'TELEFONOS',0,167,715,0,0,0),('2625','COP','2017',NULL,'262595',0,'OTROS',0,167,716,0,0,0),('2630','COP','2017',NULL,'263005',0,'TERRENOS',0,168,717,0,0,0),('2630','COP','2017',NULL,'263010',0,'CONSTRUCCIONES Y EDIFICACIONES',0,168,718,0,0,0),('2630','COP','2017',NULL,'263015',0,'MAQUINARIA Y EQUIPO',0,168,719,0,0,0),('2630','COP','2017',NULL,'263020',0,'EQUIPO DE OFICINA',0,168,720,0,0,0),('2630','COP','2017',NULL,'263025',0,'EQUIPO DE COMPUTACION Y COMUNICACION',0,168,721,0,0,0),('2630','COP','2017',NULL,'263030',0,'EQUIPO MEDICO - CIENTIFICO',0,168,722,0,0,0),('2630','COP','2017',NULL,'263035',0,'EQUIPO DE HOTELES Y RESTAURANTES',0,168,723,0,0,0),('2630','COP','2017',NULL,'263040',0,'FLOTA Y EQUIPO DE TRANSPORTE',0,168,724,0,0,0),('2630','COP','2017',NULL,'263045',0,'FLOTA Y EQUIPO FLUVIAL Y/O MARITIMO',0,168,725,0,0,0),('2630','COP','2017',NULL,'263050',0,'FLOTA Y EQUIPO AEREO',0,168,726,0,0,0),('2630','COP','2017',NULL,'263055',0,'FLOTA Y EQUIPO FERREO',0,168,727,0,0,0),('2630','COP','2017',NULL,'263060',0,'ACUEDUCTOS PLANTAS Y REDES',0,168,728,0,0,0),('2630','COP','2017',NULL,'263065',0,'ARMAMENTO DE VIGILANCIA',0,168,729,0,0,0),('2630','COP','2017',NULL,'263070',0,'ENVASES Y EMPAQUES',0,168,730,0,0,0),('2630','COP','2017',NULL,'263075',0,'PLANTACIONES AGRICOLAS Y FORESTALES',0,168,731,0,0,0),('2630','COP','2017',NULL,'263080',0,'VIAS DE CUMUNICACION',0,168,732,0,0,0),('2630','COP','2017',NULL,'263085',0,'POZOS ARTESIANOS',0,168,733,0,0,0),('2630','COP','2017',NULL,'263095',0,'OTROS',0,168,734,0,0,0),('2635','COP','2017',NULL,'263505',0,'MULTAS Y SANCIONES AUTORIDADES ADMINISTRATIVAS',0,169,735,0,0,0),('2635','COP','2017',NULL,'263510',0,'INTERESES POR MULTAS Y SANCIONES',0,169,736,0,0,0),('2635','COP','2017',NULL,'263515',0,'RECLAMOS',0,169,737,0,0,0),('2635','COP','2017',NULL,'263520',0,'LABORALES',0,169,738,0,0,0),('2635','COP','2017',NULL,'263525',0,'CIVILES',0,169,739,0,0,0),('2635','COP','2017',NULL,'263530',0,'PENALES',0,169,740,0,0,0),('2635','COP','2017',NULL,'263535',0,'ADMINISTRATIVOS',0,169,741,0,0,0),('2635','COP','2017',NULL,'263540',0,'COMERCIALES',0,169,742,0,0,0),('2635','COP','2017',NULL,'263595',0,'OTRAS',0,169,743,0,0,0),('2695','COP','2017',NULL,'269505',0,'PARA BENEFICENCIA',0,171,744,0,0,0),('2695','COP','2017',NULL,'269510',0,'PARA COMUNICACIONES',0,171,745,0,0,0),('2695','COP','2017',NULL,'269515',0,'PARA PERDIDA EN TRANSPORTE',0,171,746,0,0,0),('2695','COP','2017',NULL,'269520',0,'PARA OPERACION',0,171,747,0,0,0),('2695','COP','2017',NULL,'269525',0,'PARA PROTECCION DE BIENES AGOTABLES',0,171,748,0,0,0),('2695','COP','2017',NULL,'269530',0,'PARA AJUSTES EN REDENCION DE UNIDADES',0,171,749,0,0,0),('2695','COP','2017',NULL,'269535',0,'AUTOSEGURO',0,171,750,0,0,0),('2695','COP','2017',NULL,'269540',0,'PLANES Y PROGRAMAS DE REFORESTACION Y ELECTRIFICACION',0,171,751,0,0,0),('2695','COP','2017',NULL,'269595',0,'OTRAS',0,171,752,0,0,0),('2705','COP','2017',NULL,'270505',0,'INTERESES',0,172,753,0,0,0),('2705','COP','2017',NULL,'270510',0,'COMISIONES',0,172,754,0,0,0),('2705','COP','2017',NULL,'270515',0,'ARRENDAMIENTOS',0,172,755,0,0,0),('2705','COP','2017',NULL,'270520',0,'HONORARIOS',0,172,756,0,0,0),('2705','COP','2017',NULL,'270525',0,'SERVICIOS TECNICOS',0,172,757,0,0,0),('2705','COP','2017',NULL,'270530',0,'DE SUSCRIPTORES',0,172,758,0,0,0),('2705','COP','2017',NULL,'270535',0,'TRANSPORTES, FLETES Y ACARREOS',0,172,759,0,0,0),('2705','COP','2017',NULL,'270540',0,'MERCANCIA EN TRANSITO YA VENDIDA',0,172,760,0,0,0),('2705','COP','2017',NULL,'270545',0,'MATRICULAS Y PENSIONES',0,172,761,0,0,0),('2705','COP','2017',NULL,'270550',0,'CUOTAS DE ADMINISTRACION',0,172,762,0,0,0),('2705','COP','2017',NULL,'270595',0,'OTROS',0,172,763,0,0,0),('2710','COP','2017',NULL,'271005',0,'REAJUSTE DEL SISTEMA',0,173,764,0,0,0),('2725','COP','2017',NULL,'272505',0,'POR DEPRECIACION FLEXIBLE',0,176,765,0,0,0),('2725','COP','2017',NULL,'272595',0,'DIVERSOS',0,176,766,0,0,0),('2725','COP','2017',NULL,'272599',0,'AJUSTES POR INFLACION',0,176,767,0,0,0),('2805','COP','2017',NULL,'280505',0,'DE CLIENTES',0,177,768,0,0,0),('2805','COP','2017',NULL,'280510',0,'SOBRE CONTRATOS',0,177,769,0,0,0),('2805','COP','2017',NULL,'280515',0,'PARA OBRAS EN PROCESO',0,177,770,0,0,0),('2805','COP','2017',NULL,'280595',0,'OTROS',0,177,771,0,0,0),('2810','COP','2017',NULL,'281005',0,'PARA FUTURA SUSCRIPCION DE ACCIONES',0,178,772,0,0,0),('2810','COP','2017',NULL,'281010',0,'PARA FUTURO PAGO DE CUOTAS O DERECHOS SOCIALES',0,178,773,0,0,0),('2810','COP','2017',NULL,'281015',0,'PARA GARANTIA EN LA PRESTACION DE SERVICIOS',0,178,774,0,0,0),('2810','COP','2017',NULL,'281020',0,'PARA GARANTIA DE CONTRATOS',0,178,775,0,0,0),('2810','COP','2017',NULL,'281025',0,'DE LICITACIONES',0,178,776,0,0,0),('2810','COP','2017',NULL,'281030',0,'DE MANEJO DE BIENES',0,178,777,0,0,0),('2810','COP','2017',NULL,'281035',0,'FONDO DE RESERVA',0,178,778,0,0,0),('2810','COP','2017',NULL,'281095',0,'OTROS',0,178,779,0,0,0),('2815','COP','2017',NULL,'281505',0,'VALORES RECIBIDOS PARA TERCEROS',0,179,780,0,0,0),('2815','COP','2017',NULL,'281510',0,'VENTA POR CUENTA DE TERCEROS',0,179,781,0,0,0),('2825','COP','2017',NULL,'282505',0,'CUMPLIMIENTO OBLIGACIONES LABORALES',0,181,782,0,0,0),('2825','COP','2017',NULL,'282510',0,'PARA ESTABILIDAD DE OBRA',0,181,783,0,0,0),('2825','COP','2017',NULL,'282515',0,'GARANTIA CUMPLIMIENTO DE CONTRATOS',0,181,784,0,0,0),('2830','COP','2017',NULL,'283005',0,'INDEMNIZACIONES',0,182,785,0,0,0),('2830','COP','2017',NULL,'283010',0,'DEPOSITOS JUDICIALES',0,182,786,0,0,0),('2835','COP','2017',NULL,'283505',0,'CUOTAS NETAS',0,183,787,0,0,0),('2835','COP','2017',NULL,'283510',0,'GRUPOS EN FORMACION',0,183,788,0,0,0),('2895','COP','2017',NULL,'289505',0,'PRESTAMOS DE PRODUCTOS',0,185,789,0,0,0),('2895','COP','2017',NULL,'289510',0,'REEMBOLSO DE COSTOS EXPLORATORIOS',0,185,790,0,0,0),('2895','COP','2017',NULL,'289515',0,'PROGRAMA DE EXTENSION AGROPECUARIA',0,185,791,0,0,0),('2905','COP','2017',NULL,'290505',0,'GARANTIA GENERAL',0,186,792,0,0,0),('2905','COP','2017',NULL,'290510',0,'GARANTIA ESPECIFICA',0,186,793,0,0,0),('3105','COP','2017',NULL,'310505',0,'CAPITAL AUTORIZADO',0,189,794,0,0,0),('3105','COP','2017',NULL,'310510',0,'CAPITAL POR SUSCRIBIR (DB)',0,189,795,0,0,0),('3105','COP','2017',NULL,'310515',0,'CAPITAL SUSCRITO POR COBRAR (DB)',0,189,796,0,0,0),('3110','COP','2017',NULL,'311005',0,'ACCIONES PROPIAS READQUIRIDAS (DB)',0,190,797,0,0,0),('3110','COP','2017',NULL,'311010',0,'CUOTAS O PARTES DE INTERES SOCIAL PROPIAS READQUIRIDAS (DB)',0,190,798,0,0,0),('3115','COP','2017',NULL,'311505',0,'CUOTAS O PARTES DE INTERES SOCIAL',0,191,799,0,0,0),('3115','COP','2017',NULL,'311510',0,'APORTES DE SOCIOS - FONDO MUTUO DE INVERSION',0,191,800,0,0,0),('3115','COP','2017',NULL,'311515',0,'CONTRIBUCION DE LA EMPRESA - FONDO MUTUO DE INVERSION',0,191,801,0,0,0),('3115','COP','2017',NULL,'311520',0,'SUSCRIPCIONES DEL PUBLICO',0,191,802,0,0,0),('3205','COP','2017',NULL,'320505',0,'PRIMA EN COLOCACION DE ACCIONES',0,197,803,0,0,0),('3205','COP','2017',NULL,'320510',0,'PRIMA EN COLOCACION DE ACCIONES POR COBRAR (DB)',0,197,804,0,0,0),('3205','COP','2017',NULL,'320515',0,'PRIMA EN COLOCACION DE CUOTAS O PARTES DE INTERES SOCIAL',0,197,805,0,0,0),('3210','COP','2017',NULL,'321005',0,'EN DINERO',0,198,806,0,0,0),('3210','COP','2017',NULL,'321010',0,'EN VALORES MOBILIARIOS',0,198,807,0,0,0),('3210','COP','2017',NULL,'321015',0,'EN BIENES MUEBLES',0,198,808,0,0,0),('3210','COP','2017',NULL,'321020',0,'EN BIENES INMUEBLES',0,198,809,0,0,0),('3210','COP','2017',NULL,'321025',0,'EN INTANGIBLES',0,198,810,0,0,0),('3305','COP','2017',NULL,'330505',0,'RESERVA LEGAL',0,200,811,0,0,0),('3305','COP','2017',NULL,'330510',0,'RESERVAS POR DISPOSICIONES FISCALES',0,200,812,0,0,0),('3305','COP','2017',NULL,'330515',0,'RESERVA PARA READQUISICION DE ACCIONES',0,200,813,0,0,0),('3305','COP','2017',NULL,'330517',0,'RESERVA PARA READQUISICION DE CUOTAS O PARTES DE INTERES SOCIAL',0,200,814,0,0,0),('3305','COP','2017',NULL,'330520',0,'RESERVA PARA EXTENSION AGROPECUARIA',0,200,815,0,0,0),('3305','COP','2017',NULL,'330525',0,'RESERVA LEY 7a. DE 1990',0,200,816,0,0,0),('3305','COP','2017',NULL,'330530',0,'RESERVA PARA REPOSICION DE SEMOVIENTES',0,200,817,0,0,0),('3305','COP','2017',NULL,'330535',0,'RESERVA LEY 4a DE 1980',0,200,818,0,0,0),('3305','COP','2017',NULL,'330595',0,'OTRAS',0,200,819,0,0,0),('3310','COP','2017',NULL,'331005',0,'PARA FUTURAS CAPITALIZACIONES',0,201,820,0,0,0),('3310','COP','2017',NULL,'331010',0,'PARA REPOSICION DE ACTIVOS',0,201,821,0,0,0),('3310','COP','2017',NULL,'331015',0,'PARA FUTUROS ENSANCHES',0,201,822,0,0,0),('3310','COP','2017',NULL,'331095',0,'OTRAS',0,201,823,0,0,0),('3315','COP','2017',NULL,'331505',0,'PARA BENEFICENCIA Y CIVISMO',0,202,824,0,0,0),('3315','COP','2017',NULL,'331510',0,'PARA FUTURAS CAPITALIZACIONES',0,202,825,0,0,0),('3315','COP','2017',NULL,'331515',0,'PARA FUTUROS ENSANCHES',0,202,826,0,0,0),('3315','COP','2017',NULL,'331520',0,'PARA ADQUISICION O REPOSICION DE PROPIEDADES PLANTA Y EQUIPO',0,202,827,0,0,0),('3315','COP','2017',NULL,'331525',0,'PARA INVESTIGACIONES Y DESARROLLO',0,202,828,0,0,0),('3315','COP','2017',NULL,'331530',0,'PARA FOMENTO ECONOMICO',0,202,829,0,0,0),('3315','COP','2017',NULL,'331535',0,'PARA CAPITAL DE TRABAJO',0,202,830,0,0,0),('3315','COP','2017',NULL,'331540',0,'PARA ESTABILIZACION DE RENDIMIENTOS',0,202,831,0,0,0),('3315','COP','2017',NULL,'331545',0,'A DISPOSICION DEL MAXIMO ORGANO SOCIAL',0,202,832,0,0,0),('3315','COP','2017',NULL,'331595',0,'OTRAS',0,202,833,0,0,0),('3405','COP','2017',NULL,'340505',0,'DE CAPITAL SOCIAL',0,203,834,0,0,0),('3405','COP','2017',NULL,'340510',0,'DE SUPERAVIT DE CAPITAL',0,203,835,0,0,0),('3405','COP','2017',NULL,'340515',0,'DE RESERVAS',0,203,836,0,0,0),('3405','COP','2017',NULL,'340520',0,'DE RESULTADOS DE EJERCICIOS ANTERIORES',0,203,837,0,0,0),('3405','COP','2017',NULL,'340525',0,'DE ACTIVOS EN PERIODO IMPRODUCTIVO',0,203,838,0,0,0),('3605','COP','2017',NULL,'360505',0,'UTILIDAD DEL EJERCICIO',0,208,839,0,0,0),('3605','COP','2017',NULL,'360510',0,'UTILIDAD POR EXPOSICION A LA INFLACION',0,208,840,0,0,0),('3610','COP','2017',NULL,'361005',0,'PERDIDA DEL EJERCICIO',0,209,841,0,0,0),('3610','COP','2017',NULL,'361010',0,'PERDIDA POR EXPOSICION A LA INFLACION',0,209,842,0,0,0),('3805','COP','2017',NULL,'380505',0,'ACCIONES',0,212,843,0,0,0),('3805','COP','2017',NULL,'380510',0,'CUOTAS O PARTES DE INTERES SOCIAL',0,212,844,0,0,0),('3805','COP','2017',NULL,'380515',0,'DERECHOS FIDUCIARIOS',0,212,845,0,0,0),('3810','COP','2017',NULL,'381004',0,'TERRENOS',0,213,846,0,0,0),('3810','COP','2017',NULL,'381006',0,'MATERIALES PROYECTOS PETROLEROS',0,213,847,0,0,0),('3810','COP','2017',NULL,'381008',0,'CONSTRUCCIONES Y EDIFICACIONES',0,213,848,0,0,0),('3810','COP','2017',NULL,'381012',0,'MAQUINARIA Y EQUIPO',0,213,849,0,0,0),('3810','COP','2017',NULL,'381016',0,'EQUIPO DE OFICINA',0,213,850,0,0,0),('3810','COP','2017',NULL,'381020',0,'EQUIPO DE COMPUTACION Y COMUNICACION',0,213,851,0,0,0),('3810','COP','2017',NULL,'381024',0,'EQUIPO MEDICO CIENTIFICO',0,213,852,0,0,0),('3810','COP','2017',NULL,'381028',0,'EQUIPO DE HOTELES Y RESTAURANTES',0,213,853,0,0,0),('3810','COP','2017',NULL,'381032',0,'FLOTA Y EQUIPO DE TRANSPORTE',0,213,854,0,0,0),('3810','COP','2017',NULL,'381036',0,'FLOTA Y EQUIPO FLUVIAL Y/O MARITIMO',0,213,855,0,0,0),('3810','COP','2017',NULL,'381040',0,'FLOTA Y EQUIPO AEREO',0,213,856,0,0,0),('3810','COP','2017',NULL,'381044',0,'FLOTA Y EQUIPO FERREO',0,213,857,0,0,0),('3810','COP','2017',NULL,'381048',0,'ACUEDUCTOS PLANTAS Y REDES',0,213,858,0,0,0),('3810','COP','2017',NULL,'381052',0,'ARMAMENTO DE VIGILANCIA',0,213,859,0,0,0),('3810','COP','2017',NULL,'381056',0,'ENVASES Y EMPAQUES',0,213,860,0,0,0),('3810','COP','2017',NULL,'381060',0,'PLANTACIONES AGRICOLAS Y FORESTALES',0,213,861,0,0,0),('3810','COP','2017',NULL,'381064',0,'VIAS DE COMUNICACION',0,213,862,0,0,0),('3810','COP','2017',NULL,'381068',0,'MINAS Y CANTERAS',0,213,863,0,0,0),('3810','COP','2017',NULL,'381072',0,'POZOS ARTESIANOS',0,213,864,0,0,0),('3810','COP','2017',NULL,'381076',0,'YACIMIENTOS',0,213,865,0,0,0),('3810','COP','2017',NULL,'381080',0,'SEMOVIENTES',0,213,866,0,0,0),('3895','COP','2017',NULL,'389505',0,'BIENES DE ARTE Y CULTURA',0,214,867,0,0,0),('3895','COP','2017',NULL,'389510',0,'BIENES ENTREGADOS EN COMODATO',0,214,868,0,0,0),('3895','COP','2017',NULL,'389515',0,'BIENES RECIBIDOS EN PAGO',0,214,869,0,0,0),('3895','COP','2017',NULL,'389520',0,'INVENTARIO DE SEMOVIENTES',0,214,870,0,0,0),('4105','COP','2017',NULL,'410505',0,'CULTIVO DE CEREALES',0,215,871,0,0,0),('4105','COP','2017',NULL,'410510',0,'CULTIVOS DE HORTALIZAS, LEGUMBRES Y PLANTAS ORNAMENTALES',0,215,872,0,0,0),('4105','COP','2017',NULL,'410515',0,'CULTIVOS DE FRUTAS, NUECES Y PLANTAS AROMATICAS',0,215,873,0,0,0),('4105','COP','2017',NULL,'410520',0,'CULTIVO DE CAFE',0,215,874,0,0,0),('4105','COP','2017',NULL,'410525',0,'CULTIVO DE FLORES',0,215,875,0,0,0),('4105','COP','2017',NULL,'410530',0,'CULTIVO DE CAÑA DE AZUCAR',0,215,876,0,0,0),('4105','COP','2017',NULL,'410535',0,'CULTIVO DE ALGODON Y PLANTAS PARA MATERIAL TEXTIL',0,215,877,0,0,0),('4105','COP','2017',NULL,'410540',0,'CULTIVO DE BANANO',0,215,878,0,0,0),('4105','COP','2017',NULL,'410545',0,'OTROS CULTIVOS AGRICOLAS',0,215,879,0,0,0),('4105','COP','2017',NULL,'410550',0,'CRIA DE OVEJAS, CABRAS, ASNOS, MULAS Y BURDEGANOS',0,215,880,0,0,0),('4105','COP','2017',NULL,'410555',0,'CRIA DE GANADO CABALLAR Y VACUNO.',0,215,881,0,0,0),('4105','COP','2017',NULL,'410560',0,'PRODUCCION AVICOLA',0,215,882,0,0,0),('4105','COP','2017',NULL,'410565',0,'CRIA DE OTROS ANIMALES',0,215,883,0,0,0),('4105','COP','2017',NULL,'410570',0,'SERVICIOS AGRICOLAS Y GANADEROS',0,215,884,0,0,0),('4105','COP','2017',NULL,'410575',0,'ACTIVIDAD DE CAZA',0,215,885,0,0,0),('4105','COP','2017',NULL,'410580',0,'ACTIVIDAD DE SILVICULTURA',0,215,886,0,0,0),('4105','COP','2017',NULL,'410599',0,'AJUSTES POR INFLACION',0,215,887,0,0,0),('4110','COP','2017',NULL,'411005',0,'ACTIVIDAD DE PESCA',0,216,888,0,0,0),('4110','COP','2017',NULL,'411010',0,'EXPLOTACION DE CRIADEROS DE PECES',0,216,889,0,0,0),('4110','COP','2017',NULL,'411095',0,'ACTIVIDADES CONEXAS',0,216,890,0,0,0),('4110','COP','2017',NULL,'411099',0,'AJUSTES POR INFLACION',0,216,891,0,0,0),('4115','COP','2017',NULL,'411505',0,'CARBON',0,217,892,0,0,0),('4115','COP','2017',NULL,'411510',0,'PETROLEO CRUDO',0,217,893,0,0,0),('4115','COP','2017',NULL,'411512',0,'GAS NATURAL',0,217,894,0,0,0),('4115','COP','2017',NULL,'411514',0,'SERVICIOS RELACIONADOS CON EXTRACCION DE PETROLEO Y GAS',0,217,895,0,0,0),('4115','COP','2017',NULL,'411515',0,'MINERALES DE HIERRO',0,217,896,0,0,0),('4115','COP','2017',NULL,'411520',0,'MINERALES METALIFEROS NO FERROSOS',0,217,897,0,0,0),('4115','COP','2017',NULL,'411525',0,'PIEDRA, ARENA Y ARCILLA',0,217,898,0,0,0),('4115','COP','2017',NULL,'411527',0,'PIEDRAS PRECIOSAS',0,217,899,0,0,0),('4115','COP','2017',NULL,'411528',0,'ORO',0,217,900,0,0,0),('4115','COP','2017',NULL,'411530',0,'OTRAS MINAS Y CANTERAS',0,217,901,0,0,0),('4115','COP','2017',NULL,'411532',0,'PRESTACION DE SERVICIOS SECTOR MINERO',0,217,902,0,0,0),('4115','COP','2017',NULL,'411595',0,'ACTIVIDADES CONEXAS',0,217,903,0,0,0),('4115','COP','2017',NULL,'411599',0,'AJUSTES POR INFLACION',0,217,904,0,0,0),('4120','COP','2017',NULL,'412001',0,'PRODUCCION Y PROCESAMIENTO DE CARNES Y PRODUCTOS CARNICOS',0,218,905,0,0,0),('4120','COP','2017',NULL,'412002',0,'PRODUCTOS DE PESCADO',0,218,906,0,0,0),('4120','COP','2017',NULL,'412003',0,'PRODUCTOS DE FRUTAS, LEGUMBRES Y HORTALIZAS',0,218,907,0,0,0),('4120','COP','2017',NULL,'412004',0,'ELABORACION DE ACEITES Y GRASAS',0,218,908,0,0,0),('4120','COP','2017',NULL,'412005',0,'ELABORACION DE PRODUCTOS LACTEOS',0,218,909,0,0,0),('4120','COP','2017',NULL,'412006',0,'ELABORACION DE PRODUCTOS DE MOLINERIA',0,218,910,0,0,0),('4120','COP','2017',NULL,'412007',0,'ELABORACION DE ALMIDONES Y DERIVADOS',0,218,911,0,0,0),('4120','COP','2017',NULL,'412008',0,'ELABORACION DE ALIMENTOS PARA ANIMALES',0,218,912,0,0,0),('4120','COP','2017',NULL,'412009',0,'ELABORACION DE PRODUCTOS PARA PANADERIA',0,218,913,0,0,0),('4120','COP','2017',NULL,'412010',0,'ELABORACION DE AZUCAR Y MELAZAS',0,218,914,0,0,0),('4120','COP','2017',NULL,'412011',0,'ELABORACION DE CACAO, CHOCOLATE Y CONFITERIA',0,218,915,0,0,0),('4120','COP','2017',NULL,'412012',0,'ELABORACION DE PASTAS  Y PRODUCTOS FARINACEOS',0,218,916,0,0,0),('4120','COP','2017',NULL,'412013',0,'ELABORACION DE PRODUCTOS DE CAFE',0,218,917,0,0,0),('4120','COP','2017',NULL,'412014',0,'ELABORACION DE OTROS PRODUCTOS ALIMENTICIOS',0,218,918,0,0,0),('4120','COP','2017',NULL,'412015',0,'ELABORACION DE BEBIDAS ALCOHOLICAS Y ALCOHOL ETILICO',0,218,919,0,0,0),('4120','COP','2017',NULL,'412016',0,'ELABORACION DE VINOS',0,218,920,0,0,0),('4120','COP','2017',NULL,'412017',0,'ELABORACION DE BEBIDAS MALTEADAS Y DE MALTA',0,218,921,0,0,0),('4120','COP','2017',NULL,'412018',0,'ELABORACION DE BEBIDAS NO ALCOHOLICAS',0,218,922,0,0,0),('4120','COP','2017',NULL,'412019',0,'ELABORACION DE PRODUCTOS DE TABACO',0,218,923,0,0,0),('4120','COP','2017',NULL,'412020',0,'PREPARACION E HILATURA DE FIBRAS TEXTILES Y TEJEDURIA',0,218,924,0,0,0),('4120','COP','2017',NULL,'412021',0,'ACABADO DE PRODUCTOS TEXTILES',0,218,925,0,0,0),('4120','COP','2017',NULL,'412022',0,'ELABORACION DE ARTICULOS DE MATERIALES TEXTILES',0,218,926,0,0,0),('4120','COP','2017',NULL,'412023',0,'ELABORACION DE TAPICES Y ALFOMBRAS',0,218,927,0,0,0),('4120','COP','2017',NULL,'412024',0,'ELABORACION DE CUERDAS, CORDELES, BRAMANTES Y REDES',0,218,928,0,0,0),('4120','COP','2017',NULL,'412025',0,'ELABORACION DE OTROS PRODUCTOS TEXTILES',0,218,929,0,0,0),('4120','COP','2017',NULL,'412026',0,'ELABORACION DE TEJIDOS',0,218,930,0,0,0),('4120','COP','2017',NULL,'412027',0,'ELABORACION DE PRENDAS DE VESTIR',0,218,931,0,0,0),('4120','COP','2017',NULL,'412028',0,'PREPARACION, ADOBO Y TEÑIDO DE PIELES',0,218,932,0,0,0),('4120','COP','2017',NULL,'412029',0,'CURTIDO, ADOBO O PREPARACION DE CUERO',0,218,933,0,0,0),('4120','COP','2017',NULL,'412030',0,'ELABORACION DE MALETAS, BOLSOS Y SIMILARES',0,218,934,0,0,0),('4120','COP','2017',NULL,'412031',0,'ELABORACION DE CALZADO',0,218,935,0,0,0),('4120','COP','2017',NULL,'412032',0,'PRODUCCION DE MADERA, ARTICULOS DE MADERA Y CORCHO',0,218,936,0,0,0),('4120','COP','2017',NULL,'412033',0,'ELABORACION DE PASTA Y PRODUCTOS DE MADERA, PAPEL Y CARTON',0,218,937,0,0,0),('4120','COP','2017',NULL,'412034',0,'EDICIONES Y PUBLICACIONES',0,218,938,0,0,0),('4120','COP','2017',NULL,'412035',0,'IMPRESION',0,218,939,0,0,0),('4120','COP','2017',NULL,'412036',0,'SERVICIOS RELACIONADOS CON LA EDICION Y LA IMPRESION',0,218,940,0,0,0),('4120','COP','2017',NULL,'412037',0,'REPRODUCCION DE GRABACIONES',0,218,941,0,0,0),('4120','COP','2017',NULL,'412038',0,'ELABORACION DE PRODUCTOS DE HORNO DE COQUE',0,218,942,0,0,0),('4120','COP','2017',NULL,'412039',0,'ELABORACION DE PRODUCTOS DE LA REFINACION DE PETROLEO',0,218,943,0,0,0),('4120','COP','2017',NULL,'412040',0,'ELABORACION DE SUSTANCIAS QUIMICAS BASICAS',0,218,944,0,0,0),('4120','COP','2017',NULL,'412041',0,'ELABORACION DE ABONOS Y COMPUESTOS DE NITROGENO',0,218,945,0,0,0),('4120','COP','2017',NULL,'412042',0,'ELABORACION DE PLASTICO Y CAUCHO SINTETICO',0,218,946,0,0,0),('4120','COP','2017',NULL,'412043',0,'ELABORACION DE PRODUCTOS QUIMICOS DE USO AGROPECUARIO',0,218,947,0,0,0),('4120','COP','2017',NULL,'412044',0,'ELABORACION DE PINTURAS, TINTAS Y MASILLAS',0,218,948,0,0,0),('4120','COP','2017',NULL,'412045',0,'ELABORACION DE PRODUCTOS FARMACEUTICOS Y BOTANICOS',0,218,949,0,0,0),('4120','COP','2017',NULL,'412046',0,'ELABORACION DE JABONES, DETERGENTES Y PREPARADOS DE TOCADOR',0,218,950,0,0,0),('4120','COP','2017',NULL,'412047',0,'ELABORACION DE OTROS PRODUCTOS QUIMICOS',0,218,951,0,0,0),('4120','COP','2017',NULL,'412048',0,'ELABORACION DE FIBRAS',0,218,952,0,0,0),('4120','COP','2017',NULL,'412049',0,'ELABORACION DE OTROS PRODUCTOS DE CAUCHO',0,218,953,0,0,0),('4120','COP','2017',NULL,'412050',0,'ELABORACION DE PRODUCTOS DE PLASTICO',0,218,954,0,0,0),('4120','COP','2017',NULL,'412051',0,'ELABORACION DE VIDRIO Y PRODUCTOS DE VIDRIO',0,218,955,0,0,0),('4120','COP','2017',NULL,'412052',0,'ELABORACION DE PRODUCTOS DE CERAMICA, LOZA, PIEDRA, ARCILLA Y PORCELANA',0,218,956,0,0,0),('4120','COP','2017',NULL,'412053',0,'ELABORACION DE CEMENTO, CAL Y YESO',0,218,957,0,0,0),('4120','COP','2017',NULL,'412054',0,'ELABORACION DE ARTICULOS DE HORMIGON, CEMENTO Y YESO',0,218,958,0,0,0),('4120','COP','2017',NULL,'412055',0,'CORTE, TALLADO Y ACABADO DE LA PIEDRA',0,218,959,0,0,0),('4120','COP','2017',NULL,'412056',0,'ELABORACION DE OTROS PRODUCTOS MINERALES NO METALICOS',0,218,960,0,0,0),('4120','COP','2017',NULL,'412057',0,'INDUSTRIAS BASICAS Y FUNDICION DE HIERRO Y ACERO',0,218,961,0,0,0),('4120','COP','2017',NULL,'412058',0,'PRODUCTOS PRIMARIOS DE METALES PRECIOSOS Y DE METALES NO FERROSOS',0,218,962,0,0,0),('4120','COP','2017',NULL,'412059',0,'FUNDICION DE METALES NO FERROSOS',0,218,963,0,0,0),('4120','COP','2017',NULL,'412060',0,'FABRICACION DE PRODUCTOS METALICOS PARA USO ESTRUCTURAL',0,218,964,0,0,0),('4120','COP','2017',NULL,'412061',0,'FORJA, PRENSADO, ESTAMPADO, LAMINADO DE METAL Y PULVIMETALURGIA',0,218,965,0,0,0),('4120','COP','2017',NULL,'412062',0,'REVESTIMIENTO DE METALES Y OBRAS DE INGENIERIA MECANICA',0,218,966,0,0,0),('4120','COP','2017',NULL,'412063',0,'FABRICACION DE ARTICULOS DE FERRETERIA',0,218,967,0,0,0),('4120','COP','2017',NULL,'412064',0,'ELABORACION DE OTROS PRODUCTOS DE METAL',0,218,968,0,0,0),('4120','COP','2017',NULL,'412065',0,'FABRICACION DE MAQUINARIA Y EQUIPO',0,218,969,0,0,0),('4120','COP','2017',NULL,'412066',0,'FABRICACION DE EQUIPOS DE ELEVACION Y MANIPULACION',0,218,970,0,0,0),('4120','COP','2017',NULL,'412067',0,'ELABORACION DE APARATOS DE USO DOMESTICO',0,218,971,0,0,0),('4120','COP','2017',NULL,'412068',0,'ELABORACION DE EQUIPO DE OFICINA',0,218,972,0,0,0),('4120','COP','2017',NULL,'412069',0,'ELABORACION DE PILAS Y BATERIAS PRIMARIAS',0,218,973,0,0,0),('4120','COP','2017',NULL,'412070',0,'ELABORACION DE EQUIPO DE ILUMINACION',0,218,974,0,0,0),('4120','COP','2017',NULL,'412071',0,'ELABORACION DE OTROS TIPOS DE EQUIPO ELECTRICO',0,218,975,0,0,0),('4120','COP','2017',NULL,'412072',0,'FABRICACION DE EQUIPOS DE RADIO, TELEVISION Y COMUNICACIONES',0,218,976,0,0,0),('4120','COP','2017',NULL,'412073',0,'FABRICACION DE APARATOS E INSTRUMENTOS MEDICOS',0,218,977,0,0,0),('4120','COP','2017',NULL,'412074',0,'FABRICACION DE INSTRUMENTOS DE MEDICION Y CONTROL',0,218,978,0,0,0),('4120','COP','2017',NULL,'412075',0,'FABRICACION DE INSTRUMENTOS DE OPTICA Y EQUIPO FOTOGRAFICO',0,218,979,0,0,0),('4120','COP','2017',NULL,'412076',0,'FABRICACION DE RELOJES',0,218,980,0,0,0),('4120','COP','2017',NULL,'412077',0,'FABRICACION DE VEHICULOS AUTOMOTORES',0,218,981,0,0,0),('4120','COP','2017',NULL,'412078',0,'FABRICACION DE CARROCERIAS PARA AUTOMOTORES',0,218,982,0,0,0),('4120','COP','2017',NULL,'412079',0,'FABRICACION DE PARTES PIEZAS Y ACCESORIOS PARA AUTOMOTORES',0,218,983,0,0,0),('4120','COP','2017',NULL,'412080',0,'FABRICACION Y REPARACION DE BUQUES Y OTRAS EMBARCACIONES',0,218,984,0,0,0),('4120','COP','2017',NULL,'412081',0,'FABRICACION DE LOCOMOTORAS Y MATERIAL RODANTE PARA FERROCARRILES',0,218,985,0,0,0),('4120','COP','2017',NULL,'412082',0,'FABRICACION DE AERONAVES',0,218,986,0,0,0),('4120','COP','2017',NULL,'412083',0,'FABRICACION DE MOTOCICLETAS',0,218,987,0,0,0),('4120','COP','2017',NULL,'412084',0,'FABRICACION DE BICICLETAS Y SILLAS DE RUEDAS',0,218,988,0,0,0),('4120','COP','2017',NULL,'412085',0,'FABRICACION DE OTROS TIPOS DE TRANSPORTE',0,218,989,0,0,0),('4120','COP','2017',NULL,'412086',0,'FABRICACION DE MUEBLES',0,218,990,0,0,0),('4120','COP','2017',NULL,'412087',0,'FABRICACION DE JOYAS Y ARTICULOS CONEXOS',0,218,991,0,0,0),('4120','COP','2017',NULL,'412088',0,'FABRICACION DE INSTRUMENTOS DE MUSICA',0,218,992,0,0,0),('4120','COP','2017',NULL,'412089',0,'FABRICACION DE ARTICULOS Y EQUIPO PARA DEPORTE',0,218,993,0,0,0),('4120','COP','2017',NULL,'412090',0,'FABRICACION DE JUEGOS Y JUGUETES',0,218,994,0,0,0),('4120','COP','2017',NULL,'412091',0,'RECICLAMIENTO DE DESPERDICIOS',0,218,995,0,0,0),('4120','COP','2017',NULL,'412095',0,'PRODUCTOS DE OTRAS INDUSTRIAS MANUFACTURERAS',0,218,996,0,0,0),('4120','COP','2017',NULL,'412099',0,'AJUSTES POR INFLACION',0,218,997,0,0,0),('4125','COP','2017',NULL,'412505',0,'GENERACION, CAPTACION Y DISTRIBUCION DE ENERGIA ELECTRICA',0,219,998,0,0,0),('4125','COP','2017',NULL,'412510',0,'FABRICACION DE GAS Y DISTRIBUCION DE COMBUSTIBLES GASEOSOS',0,219,999,0,0,0),('4125','COP','2017',NULL,'412515',0,'CAPTACION, DEPURACION Y DISTRIBUCION DE AGUA',0,219,1000,0,0,0),('4125','COP','2017',NULL,'412595',0,'ACTIVIDADES CONEXAS',0,219,1001,0,0,0),('4125','COP','2017',NULL,'412599',0,'AJUSTES POR INFLACION',0,219,1002,0,0,0),('4130','COP','2017',NULL,'413005',0,'PREPARACION DE TERRENOS',0,220,1003,0,0,0),('4130','COP','2017',NULL,'413010',0,'CONSTRUCCION DE EDIFICIOS Y OBRAS DE INGENIERIA CIVIL',0,220,1004,0,0,0),('4130','COP','2017',NULL,'413015',0,'ACONDICIONAMIENTO DE EDIFICIOS',0,220,1005,0,0,0),('4130','COP','2017',NULL,'413020',0,'TERMINACION DE EDIFICACIONES',0,220,1006,0,0,0),('4130','COP','2017',NULL,'413025',0,'ALQUILER DE EQUIPO CON OPERARIOS',0,220,1007,0,0,0),('4130','COP','2017',NULL,'413095',0,'ACTIVIDADES CONEXAS',0,220,1008,0,0,0),('4130','COP','2017',NULL,'413099',0,'AJUSTES POR INFLACION',0,220,1009,0,0,0),('4135','COP','2017',NULL,'413502',0,'VENTA DE VEHICULOS AUTOMOTORES',0,221,1010,0,0,0),('4135','COP','2017',NULL,'413504',0,'MANTENIMIENTO, REPARACION Y LAVADO DE VEHICULOS AUTOMOTORES',0,221,1011,0,0,0),('4135','COP','2017',NULL,'413506',0,'VENTA DE PARTES, PIEZAS Y ACCESORIOS DE VEHICULOS AUTOMOTORES',0,221,1012,0,0,0),('4135','COP','2017',NULL,'413508',0,'VENTA DE COMBUSTIBLES SOLIDOS, LIQUIDOS, GASEOSOS',0,221,1013,0,0,0),('4135','COP','2017',NULL,'413510',0,'VENTA DE LUBRICANTES, ADITIVOS, LLANTAS Y LUJOS PARA AUTOMOTORES',0,221,1014,0,0,0),('4135','COP','2017',NULL,'413512',0,'VENTA A CAMBIO DE RETRIBUCION O POR CONTRATA',0,221,1015,0,0,0),('4135','COP','2017',NULL,'413514',0,'VENTA DE INSUMOS, MATERIAS PRIMAS AGROPECUARIAS Y FLORES',0,221,1016,0,0,0),('4135','COP','2017',NULL,'413516',0,'VENTA DE OTROS INSUMOS Y MATERIAS PRIMAS NO AGROPECUARIAS',0,221,1017,0,0,0),('4135','COP','2017',NULL,'413518',0,'VENTA DE ANIMALES VIVOS Y CUEROS',0,221,1018,0,0,0),('4135','COP','2017',NULL,'413520',0,'VENTA DE PRODUCTOS EN ALMACENES NO ESPECIALIZADOS',0,221,1019,0,0,0),('4135','COP','2017',NULL,'413522',0,'VENTA DE PRODUCTOS AGROPECUARIOS',0,221,1020,0,0,0),('4135','COP','2017',NULL,'413524',0,'VENTA DE PRODUCTOS TEXTILES, DE VESTIR, DE CUERO Y CALZADO',0,221,1021,0,0,0),('4135','COP','2017',NULL,'413526',0,'VENTA DE PAPEL Y CARTON',0,221,1022,0,0,0),('4135','COP','2017',NULL,'413528',0,'VENTA DE LIBROS, REVISTAS, ELEMENTOS DE PAPELERIA, UTILES Y TEXTOS ESCOLARES',0,221,1023,0,0,0),('4135','COP','2017',NULL,'413530',0,'VENTA DE JUEGOS, JUGUETES Y ARTICULOS DEPORTIVOS',0,221,1024,0,0,0),('4135','COP','2017',NULL,'413532',0,'VENTA DE INSTRUMENTOS QUIRURGICOS Y ORTOPEDICOS',0,221,1025,0,0,0),('4135','COP','2017',NULL,'413534',0,'VENTA DE ARTICULOS EN RELOJERIAS Y JOYERIAS',0,221,1026,0,0,0),('4135','COP','2017',NULL,'413536',0,'VENTA DE ELECTRODOMESTICOS Y MUEBLES',0,221,1027,0,0,0),('4135','COP','2017',NULL,'413538',0,'VENTA DE PRODUCTOS DE ASEO, FARMACEUTICOS, MEDICINALES, Y ARTICULOS DE TOCADOR',0,221,1028,0,0,0),('4135','COP','2017',NULL,'413540',0,'VENTA DE CUBIERTOS, VAJILLAS, CRISTALERIA, PORCELANAS, CERAMICAS Y OTROS ARTICULOS DE USO DOMESTICO',0,221,1029,0,0,0),('4135','COP','2017',NULL,'413542',0,'VENTA DE MATERIALES DE CONSTRUCCION, FONTANERIA Y CALEFACCION',0,221,1030,0,0,0),('4135','COP','2017',NULL,'413544',0,'VENTA DE PINTURAS Y LACAS',0,221,1031,0,0,0),('4135','COP','2017',NULL,'413546',0,'VENTA DE PRODUCTOS DE VIDRIOS Y MARQUETERIA',0,221,1032,0,0,0),('4135','COP','2017',NULL,'413548',0,'VENTA DE HERRAMIENTAS Y ARTICULOS DE FERRETERIA',0,221,1033,0,0,0),('4135','COP','2017',NULL,'413550',0,'VENTA DE QUIMICOS',0,221,1034,0,0,0),('4135','COP','2017',NULL,'413552',0,'VENTA DE PRODUCTOS INTERMEDIOS, DESPERDICIOS Y DESECHOS',0,221,1035,0,0,0),('4135','COP','2017',NULL,'413554',0,'VENTA DE MAQUINARIA, EQUIPO DE OFICINA Y PROGRAMAS DE COMPUTADOR',0,221,1036,0,0,0),('4135','COP','2017',NULL,'413556',0,'VENTA DE ARTICULOS EN CACHARRERIAS Y MISCELANEAS',0,221,1037,0,0,0),('4135','COP','2017',NULL,'413558',0,'VENTA DE INSTRUMENTOS MUSICALES',0,221,1038,0,0,0),('4135','COP','2017',NULL,'413560',0,'VENTA DE ARTICULOS EN CASAS DE EMPEÑO Y PRENDERIAS',0,221,1039,0,0,0),('4135','COP','2017',NULL,'413562',0,'VENTA DE EQUIPO FOTOGRAFICO',0,221,1040,0,0,0),('4135','COP','2017',NULL,'413564',0,'VENTA DE EQUIPO OPTICO Y DE PRECISION',0,221,1041,0,0,0),('4135','COP','2017',NULL,'413566',0,'VENTA DE EMPAQUES',0,221,1042,0,0,0),('4135','COP','2017',NULL,'413568',0,'VENTA DE EQUIPO PROFESIONAL Y CIENTIFICO',0,221,1043,0,0,0),('4135','COP','2017',NULL,'413570',0,'VENTA DE LOTERIAS, RIFAS, CHANCE, APUESTAS Y SIMILARES',0,221,1044,0,0,0),('4135','COP','2017',NULL,'413572',0,'REPARACION DE EFECTOS PERSONALES Y ELECTRODOMESTICOS',0,221,1045,0,0,0),('4135','COP','2017',NULL,'413595',0,'VENTA DE OTROS PRODUCTOS',0,221,1046,0,0,0),('4135','COP','2017',NULL,'413599',0,'AJUSTES POR INFLACION',0,221,1047,0,0,0),('4140','COP','2017',NULL,'414005',0,'HOTELERIA',0,222,1048,0,0,0),('4140','COP','2017',NULL,'414010',0,'CAMPAMENTO Y OTROS TIPOS DE HOSPEDAJE',0,222,1049,0,0,0),('4140','COP','2017',NULL,'414015',0,'RESTAURANTES',0,222,1050,0,0,0),('4140','COP','2017',NULL,'414020',0,'BARES Y CANTINAS',0,222,1051,0,0,0),('4140','COP','2017',NULL,'414095',0,'ACTIVIDADES CONEXAS',0,222,1052,0,0,0),('4140','COP','2017',NULL,'414099',0,'AJUSTES POR INFLACION',0,222,1053,0,0,0),('4145','COP','2017',NULL,'414505',0,'SERVICIO DE TRANSPORTE POR CARRETERA',0,223,1054,0,0,0),('4145','COP','2017',NULL,'414510',0,'SERVICIO DE TRANSPORTE POR VIA FERREA',0,223,1055,0,0,0),('4145','COP','2017',NULL,'414515',0,'SERVICIO DE TRANSPORTE POR VIA ACUATICA',0,223,1056,0,0,0),('4145','COP','2017',NULL,'414520',0,'SERVICIO DE TRANSPORTE POR VIA AEREA',0,223,1057,0,0,0),('4145','COP','2017',NULL,'414525',0,'SERVICIO DE TRANSPORTE POR TUBERIAS',0,223,1058,0,0,0),('4145','COP','2017',NULL,'414530',0,'MANIPULACION DE CARGA',0,223,1059,0,0,0),('4145','COP','2017',NULL,'414535',0,'ALMACENAMIENTO Y DEPOSITO',0,223,1060,0,0,0),('4145','COP','2017',NULL,'414540',0,'SERVICIOS COMPLEMENTARIOS PARA EL TRANSPORTE',0,223,1061,0,0,0),('4145','COP','2017',NULL,'414545',0,'AGENCIAS DE VIAJE',0,223,1062,0,0,0),('4145','COP','2017',NULL,'414550',0,'OTRAS AGENCIAS DE TRANSPORTE',0,223,1063,0,0,0),('4145','COP','2017',NULL,'414555',0,'SERVICIO POSTAL Y DE CORREO',0,223,1064,0,0,0),('4145','COP','2017',NULL,'414560',0,'SERVICIO TELEFONICO',0,223,1065,0,0,0),('4145','COP','2017',NULL,'414565',0,'SERVICIO DE TELEGRAFO',0,223,1066,0,0,0),('4145','COP','2017',NULL,'414570',0,'SERVICIO DE TRANSMISION DE DATOS',0,223,1067,0,0,0),('4145','COP','2017',NULL,'414575',0,'SERVICIO DE RADIO Y TELEVISION POR CABLE',0,223,1068,0,0,0),('4145','COP','2017',NULL,'414580',0,'TRANSMISION DE SONIDO E IMAGENES POR CONTRATO',0,223,1069,0,0,0),('4145','COP','2017',NULL,'414595',0,'ACTIVIDADES CONEXAS',0,223,1070,0,0,0),('4145','COP','2017',NULL,'414599',0,'AJUSTES POR INFLACION',0,223,1071,0,0,0),('4150','COP','2017',NULL,'415005',0,'VENTA DE INVERSIONES',0,224,1072,0,0,0),('4150','COP','2017',NULL,'415010',0,'DIVIDENDOS DE SOCIEDADES ANONIMAS Y/O ASIMILADAS',0,224,1073,0,0,0),('4150','COP','2017',NULL,'415015',0,'PARTICIPACIONES DE SOCIEDADES LIMITADAS Y/O ASIMILADAS',0,224,1074,0,0,0),('4150','COP','2017',NULL,'415020',0,'INTERESES',0,224,1075,0,0,0),('4150','COP','2017',NULL,'415025',0,'REAJUSTE MONETARIO - UPAC',0,224,1076,0,0,0),('4150','COP','2017',NULL,'415030',0,'COMISIONES',0,224,1077,0,0,0),('4150','COP','2017',NULL,'415035',0,'OPERACIONES DE DESCUENTO',0,224,1078,0,0,0),('4150','COP','2017',NULL,'415040',0,'CUOTAS DE INSCRIPCION - CONSORCIOS',0,224,1079,0,0,0),('4150','COP','2017',NULL,'415045',0,'CUOTAS DE ADMINISTRACION - CONSORCIOS',0,224,1080,0,0,0),('4150','COP','2017',NULL,'415050',0,'REAJUSTE DEL SISTEMA - CONSORCIOS',0,224,1081,0,0,0),('4150','COP','2017',NULL,'415055',0,'ELIMINACION DE SUSCRIPTORES - CONSORCIOS',0,224,1082,0,0,0),('4150','COP','2017',NULL,'415060',0,'CUOTAS DE INGRESO O RETIRO - SOCIEDAD ADMINISTRADORA',0,224,1083,0,0,0),('4150','COP','2017',NULL,'415065',0,'SERVICIOS A COMISIONISTAS',0,224,1084,0,0,0),('4150','COP','2017',NULL,'415070',0,'INSCRIPCIONES Y CUOTAS',0,224,1085,0,0,0),('4150','COP','2017',NULL,'415075',0,'RECUPERACION DE GARANTIAS',0,224,1086,0,0,0),('4150','COP','2017',NULL,'415095',0,'ACTIVIDADES CONEXAS',0,224,1087,0,0,0),('4150','COP','2017',NULL,'415099',0,'AJUSTES POR INFLACION',0,224,1088,0,0,0),('4155','COP','2017',NULL,'415505',0,'ARRENDAMIENTOS DE BIENES INMUEBLES',0,225,1089,0,0,0),('4155','COP','2017',NULL,'415510',0,'INMOBILIARIAS POR RETRIBUCION O CONTRATA',0,225,1090,0,0,0),('4155','COP','2017',NULL,'415515',0,'ALQUILER EQUIPO DE TRANSPORTE',0,225,1091,0,0,0),('4155','COP','2017',NULL,'415520',0,'ALQUILER MAQUINARIA Y EQUIPO',0,225,1092,0,0,0),('4155','COP','2017',NULL,'415525',0,'ALQUILER DE EFECTOS PERSONALES Y ENSERES DOMESTICOS',0,225,1093,0,0,0),('4155','COP','2017',NULL,'415530',0,'CONSULTORIA EN EQUIPO Y PROGRAMAS DE INFORMATICA',0,225,1094,0,0,0),('4155','COP','2017',NULL,'415535',0,'PROCESAMIENTO DE DATOS',0,225,1095,0,0,0),('4155','COP','2017',NULL,'415540',0,'MANTENIMIENTO Y REPARACION DE MAQUINARIA DE OFICINA',0,225,1096,0,0,0),('4155','COP','2017',NULL,'415545',0,'INVESTIGACIONES CIENTIFICAS Y DE DESARROLLO',0,225,1097,0,0,0),('4155','COP','2017',NULL,'415550',0,'ACTIVIDADES EMPRESARIALES DE CONSULTORIA',0,225,1098,0,0,0),('4155','COP','2017',NULL,'415555',0,'PUBLICIDAD',0,225,1099,0,0,0),('4155','COP','2017',NULL,'415560',0,'DOTACION DE PERSONAL',0,225,1100,0,0,0),('4155','COP','2017',NULL,'415565',0,'INVESTIGACION Y SEGURIDAD',0,225,1101,0,0,0),('4155','COP','2017',NULL,'415570',0,'LIMPIEZA DE INMUEBLES',0,225,1102,0,0,0),('4155','COP','2017',NULL,'415575',0,'FOTOGRAFIA',0,225,1103,0,0,0),('4155','COP','2017',NULL,'415580',0,'ENVASE Y EMPAQUE',0,225,1104,0,0,0),('4155','COP','2017',NULL,'415585',0,'FOTOCOPIADO',0,225,1105,0,0,0),('4155','COP','2017',NULL,'415590',0,'MANTENIMIENTO Y REPARACION DE MAQUINARIA Y EQUIPO',0,225,1106,0,0,0),('4155','COP','2017',NULL,'415595',0,'ACTIVIDADES CONEXAS',0,225,1107,0,0,0),('4155','COP','2017',NULL,'415599',0,'AJUSTES POR INFLACION',0,225,1108,0,0,0),('4160','COP','2017',NULL,'416005',0,'ACTIVIDADES RELACIONADAS CON LA EDUCACION',0,226,1109,0,0,0),('4160','COP','2017',NULL,'416095',0,'ACTIVIDADES CONEXAS',0,226,1110,0,0,0),('4160','COP','2017',NULL,'416099',0,'AJUSTES POR INFLACION',0,226,1111,0,0,0),('4165','COP','2017',NULL,'416505',0,'SERVICIO HOSPITALARIO',0,227,1112,0,0,0),('4165','COP','2017',NULL,'416510',0,'SERVICIO MEDICO',0,227,1113,0,0,0),('4165','COP','2017',NULL,'416515',0,'SERVICIO ODONTOLOGICO',0,227,1114,0,0,0),('4165','COP','2017',NULL,'416520',0,'SERVICIO DE LABORATORIO',0,227,1115,0,0,0),('4165','COP','2017',NULL,'416525',0,'ACTIVIDADES VETERINARIAS',0,227,1116,0,0,0),('4165','COP','2017',NULL,'416530',0,'ACTIVIDADES DE SERVICIOS SOCIALES',0,227,1117,0,0,0),('4165','COP','2017',NULL,'416595',0,'ACTIVIDADES CONEXAS',0,227,1118,0,0,0),('4165','COP','2017',NULL,'416599',0,'AJUSTES POR INFLACION',0,227,1119,0,0,0),('4170','COP','2017',NULL,'417005',0,'ELIMINACION DE DESPERDICIOS Y AGUAS RESIDUALES',0,228,1120,0,0,0),('4170','COP','2017',NULL,'417010',0,'ACTIVIDADES DE ASOCIACION',0,228,1121,0,0,0),('4170','COP','2017',NULL,'417015',0,'PRODUCCION Y DISTRIBUCION DE FILMES Y VIDEOCINTAS',0,228,1122,0,0,0),('4170','COP','2017',NULL,'417020',0,'EXHIBICION DE FILMES Y VIDEOCINTAS',0,228,1123,0,0,0),('4170','COP','2017',NULL,'417025',0,'ACTIVIDAD DE RADIO Y TELEVISION',0,228,1124,0,0,0),('4170','COP','2017',NULL,'417030',0,'ACTIVIDAD TEATRAL, MUSICAL Y ARTISTICA',0,228,1125,0,0,0),('4170','COP','2017',NULL,'417035',0,'GRABACION Y PRODUCCION DE DISCOS',0,228,1126,0,0,0),('4170','COP','2017',NULL,'417040',0,'ENTRETENIMIENTO Y ESPARCIMIENTO',0,228,1127,0,0,0),('4170','COP','2017',NULL,'417045',0,'AGENCIAS DE NOTICIAS',0,228,1128,0,0,0),('4170','COP','2017',NULL,'417050',0,'LAVANDERIAS Y SIMILARES',0,228,1129,0,0,0),('4170','COP','2017',NULL,'417055',0,'PELUQUERIAS Y SIMILARES',0,228,1130,0,0,0),('4170','COP','2017',NULL,'417060',0,'SERVICIOS FUNERARIOS',0,228,1131,0,0,0),('4170','COP','2017',NULL,'417065',0,'ZONAS FRANCAS',0,228,1132,0,0,0),('4170','COP','2017',NULL,'417095',0,'ACTIVIDADES CONEXAS',0,228,1133,0,0,0),('4170','COP','2017',NULL,'417099',0,'AJUSTES POR INFLACION',0,228,1134,0,0,0),('4175','COP','2017',NULL,'417599',0,'AJUSTES POR INFLACION',0,229,1135,0,0,0),('4205','COP','2017',NULL,'420505',0,'MATERIA PRIMA',0,230,1136,0,0,0),('4205','COP','2017',NULL,'420510',0,'MATERIAL DE DESECHO',0,230,1137,0,0,0),('4205','COP','2017',NULL,'420515',0,'MATERIALES VARIOS',0,230,1138,0,0,0),('4205','COP','2017',NULL,'420520',0,'PRODUCTOS DE DIVERSIFICACION',0,230,1139,0,0,0),('4205','COP','2017',NULL,'420525',0,'EXCEDENTES DE EXPORTACION',0,230,1140,0,0,0),('4205','COP','2017',NULL,'420530',0,'ENVASES Y EMPAQUES',0,230,1141,0,0,0),('4205','COP','2017',NULL,'420535',0,'PRODUCTOS AGRICOLAS',0,230,1142,0,0,0),('4205','COP','2017',NULL,'420540',0,'DE PROPAGANDA',0,230,1143,0,0,0),('4205','COP','2017',NULL,'420545',0,'PRODUCTOS EN REMATE',0,230,1144,0,0,0),('4205','COP','2017',NULL,'420550',0,'COMBUSTIBLES Y LUBRICANTES',0,230,1145,0,0,0),('4205','COP','2017',NULL,'420599',0,'AJUSTES POR INFLACION',0,230,1146,0,0,0),('4210','COP','2017',NULL,'421005',0,'INTERESES',0,231,1147,0,0,0),('4210','COP','2017',NULL,'421010',0,'REAJUSTE MONETARIO - UPAC',0,231,1148,0,0,0),('4210','COP','2017',NULL,'421015',0,'DESCUENTOS AMORTIZADOS',0,231,1149,0,0,0),('4210','COP','2017',NULL,'421020',0,'DIFERENCIA EN CAMBIO',0,231,1150,0,0,0),('4210','COP','2017',NULL,'421025',0,'FINANCIACION VEHICULOS',0,231,1151,0,0,0),('4210','COP','2017',NULL,'421030',0,'FINANCIACION SISTEMAS DE VIAJES',0,231,1152,0,0,0),('4210','COP','2017',NULL,'421035',0,'ACEPTACIONES BANCARIAS',0,231,1153,0,0,0),('4210','COP','2017',NULL,'421040',0,'DESCUENTOS COMERCIALES CONDICIONADOS',0,231,1154,0,0,0),('4210','COP','2017',NULL,'421045',0,'DESCUENTOS BANCARIOS',0,231,1155,0,0,0),('4210','COP','2017',NULL,'421050',0,'COMISIONES CHEQUES DE OTRAS PLAZAS',0,231,1156,0,0,0),('4210','COP','2017',NULL,'421055',0,'MULTAS Y RECARGOS',0,231,1157,0,0,0),('4210','COP','2017',NULL,'421060',0,'SANCIONES CHEQUES DEVUELTOS',0,231,1158,0,0,0),('4210','COP','2017',NULL,'421095',0,'OTROS',0,231,1159,0,0,0),('4210','COP','2017',NULL,'421099',0,'AJUSTES POR INFLACION',0,231,1160,0,0,0),('4215','COP','2017',NULL,'421505',0,'DE SOCIEDADES ANONIMAS Y/O ASIMILADAS',0,232,1161,0,0,0),('4215','COP','2017',NULL,'421510',0,'DE SOCIEDADES LIMITADAS Y/O ASIMILADAS',0,232,1162,0,0,0),('4215','COP','2017',NULL,'421599',0,'AJUSTES POR INFLACION',0,232,1163,0,0,0),('4220','COP','2017',NULL,'422005',0,'TERRENOS',0,233,1164,0,0,0),('4220','COP','2017',NULL,'422010',0,'CONSTRUCCIONES Y EDIFICIOS',0,233,1165,0,0,0),('4220','COP','2017',NULL,'422015',0,'MAQUINARIA Y EQUIPO',0,233,1166,0,0,0),('4220','COP','2017',NULL,'422020',0,'EQUIPO DE OFICINA',0,233,1167,0,0,0),('4220','COP','2017',NULL,'422025',0,'EQUIPO DE COMPUTACION Y COMUNICACION',0,233,1168,0,0,0),('4220','COP','2017',NULL,'422030',0,'EQUIPO MEDICO - CIENTIFICO',0,233,1169,0,0,0),('4220','COP','2017',NULL,'422035',0,'EQUIPO DE HOTELES Y RESTAURANTES',0,233,1170,0,0,0),('4220','COP','2017',NULL,'422040',0,'FLOTA Y EQUIPO DE TRANSPORTE',0,233,1171,0,0,0),('4220','COP','2017',NULL,'422045',0,'FLOTA Y EQUIPO FLUVIAL Y/O MARITIMO',0,233,1172,0,0,0),('4220','COP','2017',NULL,'422050',0,'FLOTA Y EQUIPO AEREO',0,233,1173,0,0,0),('4220','COP','2017',NULL,'422055',0,'FLOTA Y EQUIPO FERREO',0,233,1174,0,0,0),('4220','COP','2017',NULL,'422060',0,'ACUEDUCTOS PLANTAS Y REDES',0,233,1175,0,0,0),('4220','COP','2017',NULL,'422062',0,'ENVASES Y EMPAQUES',0,233,1176,0,0,0),('4220','COP','2017',NULL,'422065',0,'PLANTACIONES AGRICOLAS  Y FORESTALES',0,233,1177,0,0,0),('4220','COP','2017',NULL,'422070',0,'AERODROMOS',0,233,1178,0,0,0),('4220','COP','2017',NULL,'422075',0,'SEMOVIENTES',0,233,1179,0,0,0),('4220','COP','2017',NULL,'422099',0,'AJUSTES POR INFLACION',0,233,1180,0,0,0),('4225','COP','2017',NULL,'422505',0,'SOBRE INVERSIONES',0,234,1181,0,0,0),('4225','COP','2017',NULL,'422510',0,'DE CONCESIONARIOS',0,234,1182,0,0,0),('4225','COP','2017',NULL,'422515',0,'DE ACTIVIDADES FINANCIERAS',0,234,1183,0,0,0),('4225','COP','2017',NULL,'422520',0,'POR VENTA DE SERVICIOS DE TALLER',0,234,1184,0,0,0),('4225','COP','2017',NULL,'422525',0,'POR VENTA DE SEGUROS',0,234,1185,0,0,0),('4225','COP','2017',NULL,'422530',0,'POR INGRESOS PARA TERCEROS',0,234,1186,0,0,0),('4225','COP','2017',NULL,'422535',0,'POR DISTRIBUCION DE PELICULAS',0,234,1187,0,0,0),('4225','COP','2017',NULL,'422540',0,'DERECHOS DE AUTOR',0,234,1188,0,0,0),('4225','COP','2017',NULL,'422545',0,'DERECHOS DE PROGRAMACION',0,234,1189,0,0,0),('4225','COP','2017',NULL,'422599',0,'AJUSTES POR INFLACION',0,234,1190,0,0,0),('4230','COP','2017',NULL,'423005',0,'ASESORIAS',0,235,1191,0,0,0),('4230','COP','2017',NULL,'423010',0,'ASISTENCIA TECNICA',0,235,1192,0,0,0),('4230','COP','2017',NULL,'423015',0,'ADMINISTRACION DE VINCULADAS',0,235,1193,0,0,0),('4230','COP','2017',NULL,'423099',0,'AJUSTES POR INFLACION',0,235,1194,0,0,0),('4235','COP','2017',NULL,'423505',0,'DE BASCULA',0,236,1195,0,0,0),('4235','COP','2017',NULL,'423510',0,'DE TRANSPORTE',0,236,1196,0,0,0),('4235','COP','2017',NULL,'423515',0,'DE PRENSA',0,236,1197,0,0,0),('4235','COP','2017',NULL,'423520',0,'ADMINISTRATIVOS',0,236,1198,0,0,0),('4235','COP','2017',NULL,'423525',0,'TECNICOS',0,236,1199,0,0,0),('4235','COP','2017',NULL,'423530',0,'DE COMPUTACION',0,236,1200,0,0,0),('4235','COP','2017',NULL,'423535',0,'DE TELEFAX',0,236,1201,0,0,0),('4235','COP','2017',NULL,'423540',0,'TALLER DE VEHICULOS',0,236,1202,0,0,0),('4235','COP','2017',NULL,'423545',0,'DE RECEPCION DE AERONAVES',0,236,1203,0,0,0),('4235','COP','2017',NULL,'423550',0,'DE TRANSPORTE PROGRAMA GAS NATURAL',0,236,1204,0,0,0),('4235','COP','2017',NULL,'423555',0,'POR CONTRATOS',0,236,1205,0,0,0),('4235','COP','2017',NULL,'423560',0,'DE TRILLLA',0,236,1206,0,0,0),('4235','COP','2017',NULL,'423565',0,'DE MANTENIMIENTO',0,236,1207,0,0,0),('4235','COP','2017',NULL,'423570',0,'AL PERSONAL',0,236,1208,0,0,0),('4235','COP','2017',NULL,'423575',0,'DE CASINO',0,236,1209,0,0,0),('4235','COP','2017',NULL,'423580',0,'FLETES',0,236,1210,0,0,0),('4235','COP','2017',NULL,'423585',0,'ENTRE COMPAÑIAS',0,236,1211,0,0,0),('4235','COP','2017',NULL,'423595',0,'OTROS',0,236,1212,0,0,0),('4235','COP','2017',NULL,'423599',0,'AJUSTES POR INFLACION',0,236,1213,0,0,0),('4240','COP','2017',NULL,'424005',0,'ACCIONES',0,237,1214,0,0,0),('4240','COP','2017',NULL,'424010',0,'CUOTAS O PARTES DE INTERES SOCIAL',0,237,1215,0,0,0),('4240','COP','2017',NULL,'424015',0,'BONOS',0,237,1216,0,0,0),('4240','COP','2017',NULL,'424020',0,'CEDULAS',0,237,1217,0,0,0),('4240','COP','2017',NULL,'424025',0,'CERTIFICADOS',0,237,1218,0,0,0),('4240','COP','2017',NULL,'424030',0,'PAPELES COMERCIALES',0,237,1219,0,0,0),('4240','COP','2017',NULL,'424035',0,'TITULOS',0,237,1220,0,0,0),('4240','COP','2017',NULL,'424045',0,'DERECHOS FIDUCIARIOS',0,237,1221,0,0,0),('4240','COP','2017',NULL,'424050',0,'OBLIGATORIAS',0,237,1222,0,0,0),('4240','COP','2017',NULL,'424095',0,'OTRAS',0,237,1223,0,0,0),('4240','COP','2017',NULL,'424099',0,'AJUSTES POR INFLACION',0,237,1224,0,0,0),('4245','COP','2017',NULL,'424504',0,'TERRENOS',0,238,1225,0,0,0),('4245','COP','2017',NULL,'424506',0,'MATERIALES INDUSTRIA PETROLERA',0,238,1226,0,0,0),('4245','COP','2017',NULL,'424508',0,'CONSTRUCCIONES EN CURSO',0,238,1227,0,0,0),('4245','COP','2017',NULL,'424512',0,'MAQUINARIA EN MONTAJE',0,238,1228,0,0,0),('4245','COP','2017',NULL,'424516',0,'CONSTRUCCIONES Y EDIFICACIONES',0,238,1229,0,0,0),('4245','COP','2017',NULL,'424520',0,'MAQUINARIA Y EQUIPO',0,238,1230,0,0,0),('4245','COP','2017',NULL,'424524',0,'EQUIPO DE OFICINA',0,238,1231,0,0,0),('4245','COP','2017',NULL,'424528',0,'EQUIPO DE COMPUTACION Y COMUNICACION',0,238,1232,0,0,0),('4245','COP','2017',NULL,'424532',0,'EQUIPO MEDICO - CIENTIFICO',0,238,1233,0,0,0),('4245','COP','2017',NULL,'424536',0,'EQUIPO DE HOTELES Y RESTAURANTES',0,238,1234,0,0,0),('4245','COP','2017',NULL,'424540',0,'FLOTA Y EQUIPO DE TRANSPORTE',0,238,1235,0,0,0),('4245','COP','2017',NULL,'424544',0,'FLOTA Y EQUIPO FLUVIAL Y/O MARITIMO',0,238,1236,0,0,0),('4245','COP','2017',NULL,'424548',0,'FLOTA Y EQUIPO AEREO',0,238,1237,0,0,0),('4245','COP','2017',NULL,'424552',0,'FLOTA Y EQUIPO FERREO',0,238,1238,0,0,0),('4245','COP','2017',NULL,'424556',0,'ACUEDUCTOS PLANTAS Y REDES',0,238,1239,0,0,0),('4245','COP','2017',NULL,'424560',0,'ARMAMENTO DE VIGILANCIA',0,238,1240,0,0,0),('4245','COP','2017',NULL,'424562',0,'ENVASES Y EMPAQUES',0,238,1241,0,0,0),('4245','COP','2017',NULL,'424564',0,'PLANTACIONES AGRICOLAS  Y FORESTALES',0,238,1242,0,0,0),('4245','COP','2017',NULL,'424568',0,'VIAS DE COMUNICACION',0,238,1243,0,0,0),('4245','COP','2017',NULL,'424572',0,'MINAS Y CANTERAS',0,238,1244,0,0,0),('4245','COP','2017',NULL,'424580',0,'POZOS ARTESIANOS',0,238,1245,0,0,0),('4245','COP','2017',NULL,'424584',0,'YACIMIENTOS',0,238,1246,0,0,0),('4245','COP','2017',NULL,'424588',0,'SEMOVIENTES',0,238,1247,0,0,0),('4245','COP','2017',NULL,'424599',0,'AJUSTES POR INFLACION',0,238,1248,0,0,0),('4248','COP','2017',NULL,'424805',0,'INTANGIBLES',0,239,1249,0,0,0),('4248','COP','2017',NULL,'424810',0,'OTROS ACTIVOS',0,239,1250,0,0,0),('4248','COP','2017',NULL,'424899',0,'AJUSTES POR INFLACION',0,239,1251,0,0,0),('4250','COP','2017',NULL,'425005',0,'DEUDAS MALAS',0,240,1252,0,0,0),('4250','COP','2017',NULL,'425010',0,'SEGUROS',0,240,1253,0,0,0),('4250','COP','2017',NULL,'425015',0,'RECLAMOS',0,240,1254,0,0,0),('4250','COP','2017',NULL,'425020',0,'REINTEGRO POR PERSONAL EN COMISION',0,240,1255,0,0,0),('4250','COP','2017',NULL,'425025',0,'REINTEGRO GARANTIAS',0,240,1256,0,0,0),('4250','COP','2017',NULL,'425030',0,'DESCUENTOS CONCEDIDOS',0,240,1257,0,0,0),('4250','COP','2017',NULL,'425035',0,'REINTEGRO PROVISIONES',0,240,1258,0,0,0),('4250','COP','2017',NULL,'425040',0,'GASTOS BANCARIOS',0,240,1259,0,0,0),('4250','COP','2017',NULL,'425045',0,'DE DEPRECIACION',0,240,1260,0,0,0),('4250','COP','2017',NULL,'425050',0,'REINTEGRO DE OTROS COSTOS Y GASTOS',0,240,1261,0,0,0),('4250','COP','2017',NULL,'425099',0,'AJUSTES POR INFLACION',0,240,1262,0,0,0),('4255','COP','2017',NULL,'425505',0,'POR SINIESTRO',0,241,1263,0,0,0),('4255','COP','2017',NULL,'425510',0,'POR SUMINISTROS',0,241,1264,0,0,0),('4255','COP','2017',NULL,'425515',0,'LUCRO CESANTE COMPAÑIAS DE SEGUROS',0,241,1265,0,0,0),('4255','COP','2017',NULL,'425520',0,'DAÑO EMERGENTE COMPAÑIAS DE SEGUROS',0,241,1266,0,0,0),('4255','COP','2017',NULL,'425525',0,'POR PERDIDA DE MERCANCIA',0,241,1267,0,0,0),('4255','COP','2017',NULL,'425530',0,'POR INCUMPLIMIENTO DE CONTRATOS',0,241,1268,0,0,0),('4255','COP','2017',NULL,'425535',0,'DE TERCEROS',0,241,1269,0,0,0),('4255','COP','2017',NULL,'425540',0,'POR INCAPACIDADES I.S.S.',0,241,1270,0,0,0),('4255','COP','2017',NULL,'425595',0,'OTRAS',0,241,1271,0,0,0),('4255','COP','2017',NULL,'425599',0,'AJUSTES POR INFLACION',0,241,1272,0,0,0),('4260','COP','2017',NULL,'426099',0,'AJUSTES POR INFLACION',0,242,1273,0,0,0),('4265','COP','2017',NULL,'426599',0,'AJUSTES POR INFLACION',0,243,1274,0,0,0),('4275','COP','2017',NULL,'427599',0,'AJUSTES POR INFLACION',0,244,1275,0,0,0),('4295','COP','2017',NULL,'429503',0,'CERT',0,245,1276,0,0,0),('4295','COP','2017',NULL,'429505',0,'APROVECHAMIENTOS',0,245,1277,0,0,0),('4295','COP','2017',NULL,'429507',0,'AUXILIOS',0,245,1278,0,0,0),('4295','COP','2017',NULL,'429509',0,'DONACIONES',0,245,1279,0,0,0),('4295','COP','2017',NULL,'429511',0,'INGRESOS POR INVESTIGACION Y DESARROLLO',0,245,1280,0,0,0),('4295','COP','2017',NULL,'429513',0,'POR TRABAJOS EJECUTADOS',0,245,1281,0,0,0),('4295','COP','2017',NULL,'429515',0,'REGALIAS',0,245,1282,0,0,0),('4295','COP','2017',NULL,'429517',0,'DERIVADOS DE LAS EXPORTACIONES',0,245,1283,0,0,0),('4295','COP','2017',NULL,'429519',0,'OTROS INGRESOS DE EXPLOTACION',0,245,1284,0,0,0),('4295','COP','2017',NULL,'429521',0,'DE LA ACTIVIDAD GANADERA',0,245,1285,0,0,0),('4295','COP','2017',NULL,'429525',0,'DERECHOS Y LICITACIONES',0,245,1286,0,0,0),('4295','COP','2017',NULL,'429530',0,'INGRESOS POR ELEMENTOS PERDIDOS',0,245,1287,0,0,0),('4295','COP','2017',NULL,'429533',0,'MULTAS Y RECARGOS',0,245,1288,0,0,0),('4295','COP','2017',NULL,'429535',0,'PREAVISOS DESCONTADOS',0,245,1289,0,0,0),('4295','COP','2017',NULL,'429537',0,'RECLAMOS',0,245,1290,0,0,0),('4295','COP','2017',NULL,'429540',0,'RECOBRO DE DAÑOS',0,245,1291,0,0,0),('4295','COP','2017',NULL,'429543',0,'PREMIOS',0,245,1292,0,0,0),('4295','COP','2017',NULL,'429545',0,'BONIFICACIONES',0,245,1293,0,0,0),('4295','COP','2017',NULL,'429547',0,'PRODUCTOS DESCONTADOS',0,245,1294,0,0,0),('4295','COP','2017',NULL,'429549',0,'RECONOCIMIENTOS I.S.S.',0,245,1295,0,0,0),('4295','COP','2017',NULL,'429551',0,'EXCEDENTES',0,245,1296,0,0,0),('4295','COP','2017',NULL,'429553',0,'SOBRANTES DE CAJA MENOR',0,245,1297,0,0,0),('4295','COP','2017',NULL,'429555',0,'SOBRANTES EN LIQUIDACION FLETES',0,245,1298,0,0,0),('4295','COP','2017',NULL,'429557',0,'SUBSIDIOS ESTATALES',0,245,1299,0,0,0),('4295','COP','2017',NULL,'429559',0,'CAPACITACION DISTRIBUIDORES',0,245,1300,0,0,0),('4295','COP','2017',NULL,'429561',0,'DE ESCRITURACION',0,245,1301,0,0,0),('4295','COP','2017',NULL,'429563',0,'REGISTRO PROMESAS DE VENTA',0,245,1302,0,0,0),('4295','COP','2017',NULL,'429567',0,'UTILES, PAPELERIA Y FOTOCOPIAS',0,245,1303,0,0,0),('4295','COP','2017',NULL,'429571',0,'RESULTADOS MATRICULAS Y TRASPASOS',0,245,1304,0,0,0),('4295','COP','2017',NULL,'429573',0,'DECORACIONES',0,245,1305,0,0,0),('4295','COP','2017',NULL,'429575',0,'MANEJO DE CARGA',0,245,1306,0,0,0),('4295','COP','2017',NULL,'429579',0,'HISTORIA CLINICA',0,245,1307,0,0,0),('4295','COP','2017',NULL,'429581',0,'AJUSTE AL PESO',0,245,1308,0,0,0),('4295','COP','2017',NULL,'429583',0,'LLAMADAS TELEFONICAS',0,245,1309,0,0,0),('4295','COP','2017',NULL,'429599',0,'AJUSTES POR INFLACION',0,245,1310,0,0,0),('4705','COP','2017',NULL,'470505',0,'INVERSIONES (CR)',0,246,1311,0,0,0),('4705','COP','2017',NULL,'470510',0,'INVENTARIOS (CR)',0,246,1312,0,0,0),('4705','COP','2017',NULL,'470515',0,'PROPIEDADES, PLANTA Y EQUIPO (CR)',0,246,1313,0,0,0),('4705','COP','2017',NULL,'470520',0,'INTANGIBLES (CR)',0,246,1314,0,0,0),('4705','COP','2017',NULL,'470525',0,'ACTIVOS DIFERIDOS',0,246,1315,0,0,0),('4705','COP','2017',NULL,'470530',0,'OTROS ACTIVOS (CR)',0,246,1316,0,0,0),('4705','COP','2017',NULL,'470535',0,'PASIVOS SUJETOS DE AJUSTE',0,246,1317,0,0,0),('4705','COP','2017',NULL,'470540',0,'PATRIMONIO',0,246,1318,0,0,0),('4705','COP','2017',NULL,'470545',0,'DEPRECIACION ACUMULADA (DB)',0,246,1319,0,0,0),('4705','COP','2017',NULL,'470550',0,'DEPRECIACION DIFERIDA (CR)',0,246,1320,0,0,0),('4705','COP','2017',NULL,'470555',0,'AGOTAMIENTO ACUMULADO (DB)',0,246,1321,0,0,0),('4705','COP','2017',NULL,'470560',0,'AMORTIZACION ACUMULADA (DB)',0,246,1322,0,0,0),('4705','COP','2017',NULL,'470565',0,'INGRESOS OPERACIONALES (DB)',0,246,1323,0,0,0),('4705','COP','2017',NULL,'470570',0,'INGRESOS NO OPERACIONALES (DB)',0,246,1324,0,0,0),('4705','COP','2017',NULL,'470575',0,'GASTOS OPERACIONALES DE ADMINISTRACION (CR)',0,246,1325,0,0,0),('4705','COP','2017',NULL,'470580',0,'GASTOS OPERACIONALES DE VENTAS (CR)',0,246,1326,0,0,0),('4705','COP','2017',NULL,'470585',0,'GASTOS NO OPERACIONALES (CR)',0,246,1327,0,0,0),('4705','COP','2017',NULL,'470590',0,'COMPRAS (CR)',0,246,1328,0,0,0),('4705','COP','2017',NULL,'470592',0,'COSTO DE VENTAS (CR)',0,246,1329,0,0,0),('4705','COP','2017',NULL,'470594',0,'COSTOS DE PRODUCCION O DE OPERACION (DB)',0,246,1330,0,0,0),('5105','COP','2017',NULL,'510503',0,'SALARIO INTEGRAL',0,247,1331,0,0,0),('5105','COP','2017',NULL,'510506',0,'SUELDOS',0,247,1332,0,0,0),('5105','COP','2017',NULL,'510512',0,'JORNALES',0,247,1333,0,0,0),('5105','COP','2017',NULL,'510515',0,'HORAS EXTRAS Y RECARGOS',0,247,1334,0,0,0),('5105','COP','2017',NULL,'510518',0,'COMISIONES',0,247,1335,0,0,0),('5105','COP','2017',NULL,'510521',0,'VIATICOS',0,247,1336,0,0,0),('5105','COP','2017',NULL,'510524',0,'INCAPACIDADES',0,247,1337,0,0,0),('5105','COP','2017',NULL,'510527',0,'AUXILIO DE TRANSPORTE',0,247,1338,0,0,0),('5105','COP','2017',NULL,'510530',0,'CESANTIAS',0,247,1339,0,0,0),('5105','COP','2017',NULL,'510533',0,'INTERESES SOBRE CESANTIAS',0,247,1340,0,0,0),('5105','COP','2017',NULL,'510536',0,'PRIMA DE SERVICIOS',0,247,1341,0,0,0),('5105','COP','2017',NULL,'510539',0,'VACACIONES',0,247,1342,0,0,0),('5105','COP','2017',NULL,'510542',0,'PRIMAS EXTRALEGALES',0,247,1343,0,0,0),('5105','COP','2017',NULL,'510545',0,'AUXILIOS',0,247,1344,0,0,0),('5105','COP','2017',NULL,'510548',0,'BONIFICACIONES',0,247,1345,0,0,0),('5105','COP','2017',NULL,'510551',0,'DOTACION Y SUMINISTRO A TRABAJADORES',0,247,1346,0,0,0),('5105','COP','2017',NULL,'510554',0,'SEGUROS',0,247,1347,0,0,0),('5105','COP','2017',NULL,'510557',0,'CUOTAS PARTES PENSIONES DE JUBILACION',0,247,1348,0,0,0),('5105','COP','2017',NULL,'510558',0,'AMORTIZACION CALCULO ACTUARIAL PENSIONES DE JUBILACION',0,247,1349,0,0,0),('5105','COP','2017',NULL,'510559',0,'PENSIONES DE JUBILACION',0,247,1350,0,0,0),('5105','COP','2017',NULL,'510560',0,'INDEMNIZACIONES LABORALES',0,247,1351,0,0,0),('5105','COP','2017',NULL,'510563',0,'CAPACITACION AL PERSONAL',0,247,1352,0,0,0),('5105','COP','2017',NULL,'510566',0,'GASTOS DEPORTIVOS Y DE RECREACION',0,247,1353,0,0,0),('5105','COP','2017',NULL,'510569',0,'APORTES AL I.S.S',0,247,1354,0,0,0),('5105','COP','2017',NULL,'510572',0,'APORTES CAJAS DE COMPENSACION FAMILIAR',0,247,1355,0,0,0),('5105','COP','2017',NULL,'510575',0,'APORTES I.C.B.F.',0,247,1356,0,0,0),('5105','COP','2017',NULL,'510578',0,'SENA',0,247,1357,0,0,0),('5105','COP','2017',NULL,'510581',0,'APORTES SINDICALES',0,247,1358,0,0,0),('5105','COP','2017',NULL,'510584',0,'GASTOS MEDICOS Y DROGAS',0,247,1359,0,0,0),('5105','COP','2017',NULL,'510595',0,'OTROS',0,247,1360,0,0,0),('5105','COP','2017',NULL,'510599',0,'AJUSTES POR INFLACION',0,247,1361,0,0,0),('5110','COP','2017',NULL,'511005',0,'JUNTA DIRECTIVA',0,248,1362,0,0,0),('5110','COP','2017',NULL,'511010',0,'REVISORIA FISCAL',0,248,1363,0,0,0),('5110','COP','2017',NULL,'511015',0,'AUDITORIA EXTERNA',0,248,1364,0,0,0),('5110','COP','2017',NULL,'511020',0,'AVALUOS',0,248,1365,0,0,0),('5110','COP','2017',NULL,'511025',0,'ASESORIA JURIDICA',0,248,1366,0,0,0),('5110','COP','2017',NULL,'511030',0,'ASESORIA FINANCIERA',0,248,1367,0,0,0),('5110','COP','2017',NULL,'511035',0,'ASESORIA TECNICA',0,248,1368,0,0,0),('5110','COP','2017',NULL,'511095',0,'OTROS',0,248,1369,0,0,0),('5110','COP','2017',NULL,'511099',0,'AJUSTES POR INFLACION',0,248,1370,0,0,0),('5115','COP','2017',NULL,'511505',0,'INDUSTRIA Y COMERCIO',0,249,1371,0,0,0),('5115','COP','2017',NULL,'511510',0,'DE TIMBRES',0,249,1372,0,0,0),('5115','COP','2017',NULL,'511515',0,'A LA PROPIEDAD RAIZ',0,249,1373,0,0,0),('5115','COP','2017',NULL,'511520',0,'DERECHOS SOBRE INSTRUMENTOS PUBLICOS',0,249,1374,0,0,0),('5115','COP','2017',NULL,'511525',0,'DE VALORIZACION',0,249,1375,0,0,0),('5115','COP','2017',NULL,'511530',0,'DE TURISMO',0,249,1376,0,0,0),('5115','COP','2017',NULL,'511535',0,'TASA POR UTILIZACION DE PUERTOS',0,249,1377,0,0,0),('5115','COP','2017',NULL,'511540',0,'DE VEHICULOS',0,249,1378,0,0,0),('5115','COP','2017',NULL,'511545',0,'DE ESPECTACULOS PUBLICOS',0,249,1379,0,0,0),('5115','COP','2017',NULL,'511550',0,'CUOTAS DE FOMENTO',0,249,1380,0,0,0),('5115','COP','2017',NULL,'511570',0,'IVA DESCONTABLE',0,249,1381,0,0,0),('5115','COP','2017',NULL,'511595',0,'OTROS',0,249,1382,0,0,0),('5115','COP','2017',NULL,'511599',0,'AJUSTES POR INFLACION',0,249,1383,0,0,0),('5120','COP','2017',NULL,'512005',0,'TERRENOS',0,250,1384,0,0,0),('5120','COP','2017',NULL,'512010',0,'CONSTRUCCIONES Y EDIFICACIONES',0,250,1385,0,0,0),('5120','COP','2017',NULL,'512015',0,'MAQUINARIA Y EQUIPO',0,250,1386,0,0,0),('5120','COP','2017',NULL,'512020',0,'EQUIPO DE OFICINA',0,250,1387,0,0,0),('5120','COP','2017',NULL,'512025',0,'EQUIPO DE COMPUTACION Y COMUNICACION',0,250,1388,0,0,0),('5120','COP','2017',NULL,'512030',0,'EQUIPO MEDICO - CIENTIFICO',0,250,1389,0,0,0),('5120','COP','2017',NULL,'512035',0,'EQUIPO DE HOTELES Y RESTAURANTES',0,250,1390,0,0,0),('5120','COP','2017',NULL,'512040',0,'FLOTA Y EQUIPO DE TRANSPORTE',0,250,1391,0,0,0),('5120','COP','2017',NULL,'512045',0,'FLOTA Y EQUIPO FLUVIAL Y/O MARITIMO',0,250,1392,0,0,0),('5120','COP','2017',NULL,'512050',0,'FLOTA Y EQUIPO AEREO',0,250,1393,0,0,0),('5120','COP','2017',NULL,'512055',0,'FLOTA Y EQUIPO FERREO',0,250,1394,0,0,0),('5120','COP','2017',NULL,'512060',0,'ACUEDUCTOS PLANTAS Y REDES',0,250,1395,0,0,0),('5120','COP','2017',NULL,'512065',0,'AERODROMOS',0,250,1396,0,0,0),('5120','COP','2017',NULL,'512070',0,'SEMOVIENTES',0,250,1397,0,0,0),('5120','COP','2017',NULL,'512095',0,'OTROS',0,250,1398,0,0,0),('5120','COP','2017',NULL,'512099',0,'AJUSTES POR INFLACION',0,250,1399,0,0,0),('5125','COP','2017',NULL,'512505',0,'CONTRIBUCIONES',0,251,1400,0,0,0),('5125','COP','2017',NULL,'512510',0,'AFILIACIONES Y SOSTENIMIENTO',0,251,1401,0,0,0),('5125','COP','2017',NULL,'512599',0,'AJUSTES POR INFLACION',0,251,1402,0,0,0),('5130','COP','2017',NULL,'513005',0,'MANEJO',0,252,1403,0,0,0),('5130','COP','2017',NULL,'513010',0,'CUMPLIMIENTO',0,252,1404,0,0,0),('5130','COP','2017',NULL,'513015',0,'CORRIENTE DEBIL',0,252,1405,0,0,0),('5130','COP','2017',NULL,'513020',0,'VIDA COLECTIVA',0,252,1406,0,0,0),('5130','COP','2017',NULL,'513025',0,'INCENDIO',0,252,1407,0,0,0),('5130','COP','2017',NULL,'513030',0,'TERREMOTO',0,252,1408,0,0,0),('5130','COP','2017',NULL,'513035',0,'SUSTRACCION Y HURTO',0,252,1409,0,0,0),('5130','COP','2017',NULL,'513040',0,'FLOTA Y EQUIPO DE TRANSPORTE',0,252,1410,0,0,0),('5130','COP','2017',NULL,'513045',0,'FLOTA Y EQUIPO FLUVIAL Y/O MARITIMO',0,252,1411,0,0,0),('5130','COP','2017',NULL,'513050',0,'FLOTA Y EQUIPO AEREO',0,252,1412,0,0,0),('5130','COP','2017',NULL,'513055',0,'FLOTA Y EQUIPO FERREO',0,252,1413,0,0,0),('5130','COP','2017',NULL,'513060',0,'RESPONSABILIDAD CIVIL Y EXTRACONTRACTUAL',0,252,1414,0,0,0),('5130','COP','2017',NULL,'513065',0,'VUELO',0,252,1415,0,0,0),('5130','COP','2017',NULL,'513070',0,'ROTURA DE MAQUINARIA',0,252,1416,0,0,0),('5130','COP','2017',NULL,'513075',0,'OBLIGATORIO ACCIDENTE DE TRANSITO',0,252,1417,0,0,0),('5130','COP','2017',NULL,'513080',0,'LUCRO CESANTE',0,252,1418,0,0,0),('5130','COP','2017',NULL,'513095',0,'OTROS',0,252,1419,0,0,0),('5130','COP','2017',NULL,'513099',0,'AJUSTES POR INFLACION',0,252,1420,0,0,0),('5135','COP','2017',NULL,'513505',0,'ASEO Y VIGILANCIA',0,253,1421,0,0,0),('5135','COP','2017',NULL,'513510',0,'TEMPORALES',0,253,1422,0,0,0),('5135','COP','2017',NULL,'513515',0,'ASISTENCIA TECNICA',0,253,1423,0,0,0),('5135','COP','2017',NULL,'513520',0,'PROCESAMIENTO ELECTRONICO DE DATOS',0,253,1424,0,0,0),('5135','COP','2017',NULL,'513525',0,'ACUEDUCTO Y ALCANTARILLADO',0,253,1425,0,0,0),('5135','COP','2017',NULL,'513530',0,'ENERGIA ELECTRICA',0,253,1426,0,0,0),('5135','COP','2017',NULL,'513535',0,'TELEFONO',0,253,1427,0,0,0),('5135','COP','2017',NULL,'513540',0,'CORREO, PORTES Y TELEGRAMAS',0,253,1428,0,0,0),('5135','COP','2017',NULL,'513545',0,'FAX Y TELEX',0,253,1429,0,0,0),('5135','COP','2017',NULL,'513550',0,'TRANSPORTE, FLETES Y ACARREOS',0,253,1430,0,0,0),('5135','COP','2017',NULL,'513555',0,'GAS',0,253,1431,0,0,0),('5135','COP','2017',NULL,'513595',0,'OTROS',0,253,1432,0,0,0),('5135','COP','2017',NULL,'513599',0,'AJUSTES POR INFLACION',0,253,1433,0,0,0),('5140','COP','2017',NULL,'514005',0,'NOTARIALES',0,254,1434,0,0,0),('5140','COP','2017',NULL,'514010',0,'REGISTRO MERCANTIL',0,254,1435,0,0,0),('5140','COP','2017',NULL,'514015',0,'TRAMITES Y LICENCIAS',0,254,1436,0,0,0),('5140','COP','2017',NULL,'514020',0,'ADUANEROS',0,254,1437,0,0,0),('5140','COP','2017',NULL,'514025',0,'CONSULARES',0,254,1438,0,0,0),('5140','COP','2017',NULL,'514095',0,'OTROS',0,254,1439,0,0,0),('5140','COP','2017',NULL,'514099',0,'AJUSTES POR INFLACION',0,254,1440,0,0,0),('5145','COP','2017',NULL,'514505',0,'TERRENOS',0,255,1441,0,0,0),('5145','COP','2017',NULL,'514510',0,'CONSTRUCCIONES Y EDIFICACIONES',0,255,1442,0,0,0),('5145','COP','2017',NULL,'514515',0,'MAQUINARIA Y EQUIPO',0,255,1443,0,0,0),('5145','COP','2017',NULL,'514520',0,'EQUIPO DE OFICINA',0,255,1444,0,0,0),('5145','COP','2017',NULL,'514525',0,'EQUIPO DE COMPUTACION Y COMUNICACION',0,255,1445,0,0,0),('5145','COP','2017',NULL,'514530',0,'EQUIPO MEDICO-CIENTIFICO',0,255,1446,0,0,0),('5145','COP','2017',NULL,'514535',0,'EQUIPO DE HOTELES Y RESTAURANTES',0,255,1447,0,0,0),('5145','COP','2017',NULL,'514540',0,'FLOTA Y EQUIPO DE TRANSPORTE',0,255,1448,0,0,0),('5145','COP','2017',NULL,'514545',0,'FLOTA Y EQUIPO FLUVIAL Y/O MARITIMO',0,255,1449,0,0,0),('5145','COP','2017',NULL,'514550',0,'FLOTA Y EQUIPO AEREO',0,255,1450,0,0,0),('5145','COP','2017',NULL,'514555',0,'FLOTA Y EQUIPO FERREO',0,255,1451,0,0,0),('5145','COP','2017',NULL,'514560',0,'ACUEDUCTOS PLANTAS Y REDES',0,255,1452,0,0,0),('5145','COP','2017',NULL,'514565',0,'ARMAMENTO DE VIGILANCIA',0,255,1453,0,0,0),('5145','COP','2017',NULL,'514570',0,'VIAS DE COMUNICACION',0,255,1454,0,0,0),('5145','COP','2017',NULL,'514599',0,'AJUSTES POR INFLACION',0,255,1455,0,0,0),('5150','COP','2017',NULL,'515005',0,'INSTALACIONES ELECTRICAS',0,256,1456,0,0,0),('5150','COP','2017',NULL,'515010',0,'ARREGLOS ORNAMENTALES',0,256,1457,0,0,0),('5150','COP','2017',NULL,'515015',0,'REPARACIONES LOCATIVAS',0,256,1458,0,0,0),('5150','COP','2017',NULL,'515095',0,'OTROS',0,256,1459,0,0,0),('5150','COP','2017',NULL,'515099',0,'AJUSTES POR INFLACION',0,256,1460,0,0,0),('5155','COP','2017',NULL,'515505',0,'ALOJAMIENTO Y MANUTENCION',0,257,1461,0,0,0),('5155','COP','2017',NULL,'515510',0,'PASAJES FLUVIALES Y/O MARITIMOS',0,257,1462,0,0,0),('5155','COP','2017',NULL,'515515',0,'PASAJES AEREOS',0,257,1463,0,0,0),('5155','COP','2017',NULL,'515520',0,'PASAJES TERRESTRES',0,257,1464,0,0,0),('5155','COP','2017',NULL,'515525',0,'PASAJES FERREOS',0,257,1465,0,0,0),('5155','COP','2017',NULL,'515595',0,'OTROS',0,257,1466,0,0,0),('5155','COP','2017',NULL,'515599',0,'AJUSTES POR INFLACION',0,257,1467,0,0,0),('5160','COP','2017',NULL,'516005',0,'CONSTRUCCIONES Y EDIFICACIONES',0,258,1468,0,0,0),('5160','COP','2017',NULL,'516010',0,'MAQUINARIA Y EQUIPO',0,258,1469,0,0,0),('5160','COP','2017',NULL,'516015',0,'EQUIPO DE OFICINA',0,258,1470,0,0,0),('5160','COP','2017',NULL,'516020',0,'EQUIPO DE COMPUTACION Y COMUNICACION',0,258,1471,0,0,0),('5160','COP','2017',NULL,'516025',0,'EQUIPO MEDICO - CIENTIFICO',0,258,1472,0,0,0),('5160','COP','2017',NULL,'516030',0,'EQUIPO DE HOTELES Y RESTAURANTES',0,258,1473,0,0,0),('5160','COP','2017',NULL,'516035',0,'FLOTA Y EQUIPO DE TRANSPORTE',0,258,1474,0,0,0),('5160','COP','2017',NULL,'516040',0,'FLOTA Y EQUIPO FLUVIAL Y/O MARITIMO',0,258,1475,0,0,0),('5160','COP','2017',NULL,'516045',0,'FLOTA Y EQUIPO AEREO',0,258,1476,0,0,0),('5160','COP','2017',NULL,'516050',0,'FLOTA Y EQUIPO FERREO',0,258,1477,0,0,0),('5160','COP','2017',NULL,'516055',0,'ACUEDUCTOS, PLANTAS Y REDES',0,258,1478,0,0,0),('5160','COP','2017',NULL,'516060',0,'ARMAMENTO DE VIGILANCIA',0,258,1479,0,0,0),('5160','COP','2017',NULL,'516099',0,'AJUSTES POR INFLACION',0,258,1480,0,0,0),('5165','COP','2017',NULL,'516505',0,'VIAS DE COMUNICACION',0,259,1481,0,0,0),('5165','COP','2017',NULL,'516510',0,'INTANGIBLES',0,259,1482,0,0,0),('5165','COP','2017',NULL,'516515',0,'CARGOS DIFERIDOS',0,259,1483,0,0,0),('5165','COP','2017',NULL,'516595',0,'OTRAS',0,259,1484,0,0,0),('5165','COP','2017',NULL,'516599',0,'AJUSTES POR INFLACION',0,259,1485,0,0,0),('5195','COP','2017',NULL,'519505',0,'COMISIONES',0,260,1486,0,0,0),('5195','COP','2017',NULL,'519510',0,'LIBROS, SUSCRIPCIONES, PERIODICOS Y REVISTAS',0,260,1487,0,0,0),('5195','COP','2017',NULL,'519515',0,'MUSICA AMBIENTAL',0,260,1488,0,0,0),('5195','COP','2017',NULL,'519520',0,'GASTOS DE REPRESENTACION Y RELACIONES PUBLICAS',0,260,1489,0,0,0),('5195','COP','2017',NULL,'519525',0,'ELEMENTOS DE ASEO Y CAFETERIA',0,260,1490,0,0,0),('5195','COP','2017',NULL,'519530',0,'UTILES, PAPELERIA Y FOTOCOPIAS',0,260,1491,0,0,0),('5195','COP','2017',NULL,'519535',0,'COMBUSTIBLES Y LUBRICANTES',0,260,1492,0,0,0),('5195','COP','2017',NULL,'519540',0,'ENVASES Y EMPAQUES',0,260,1493,0,0,0),('5195','COP','2017',NULL,'519545',0,'TAXIS Y BUSES',0,260,1494,0,0,0),('5195','COP','2017',NULL,'519550',0,'ESTAMPILLAS',0,260,1495,0,0,0),('5195','COP','2017',NULL,'519555',0,'MICROFILMACION',0,260,1496,0,0,0),('5195','COP','2017',NULL,'519560',0,'CASINO Y RESTAURANTE',0,260,1497,0,0,0),('5195','COP','2017',NULL,'519565',0,'PARQUEADEROS',0,260,1498,0,0,0),('5195','COP','2017',NULL,'519570',0,'INDEMNIZACION POR DAÑOS A TERCEROS',0,260,1499,0,0,0),('5195','COP','2017',NULL,'519575',0,'POLVORA Y SIMILARES',0,260,1500,0,0,0),('5195','COP','2017',NULL,'519595',0,'OTROS',0,260,1501,0,0,0),('5195','COP','2017',NULL,'519599',0,'AJUSTES POR INFLACION',0,260,1502,0,0,0),('5199','COP','2017',NULL,'519905',0,'INVERSIONES',0,261,1503,0,0,0),('5199','COP','2017',NULL,'519910',0,'DEUDORES',0,261,1504,0,0,0),('5199','COP','2017',NULL,'519915',0,'PROPIEDADES, PLANTA Y EQUIPO',0,261,1505,0,0,0),('5199','COP','2017',NULL,'519995',0,'OTROS ACTIVOS',0,261,1506,0,0,0),('5199','COP','2017',NULL,'519999',0,'AJUSTES POR INFLACION',0,261,1507,0,0,0),('5205','COP','2017',NULL,'520503',0,'SALARIO INTEGRAL',0,262,1508,0,0,0),('5205','COP','2017',NULL,'520506',0,'SUELDOS',0,262,1509,0,0,0),('5205','COP','2017',NULL,'520512',0,'JORNALES',0,262,1510,0,0,0),('5205','COP','2017',NULL,'520515',0,'HORAS EXTRAS Y RECARGOS',0,262,1511,0,0,0),('5205','COP','2017',NULL,'520518',0,'COMISIONES',0,262,1512,0,0,0),('5205','COP','2017',NULL,'520521',0,'VIATICOS',0,262,1513,0,0,0),('5205','COP','2017',NULL,'520524',0,'INCAPACIDADES',0,262,1514,0,0,0),('5205','COP','2017',NULL,'520527',0,'AUXILIO DE TRANSPORTE',0,262,1515,0,0,0),('5205','COP','2017',NULL,'520530',0,'CESANTIAS',0,262,1516,0,0,0),('5205','COP','2017',NULL,'520533',0,'INTERESES SOBRE CESANTIAS',0,262,1517,0,0,0),('5205','COP','2017',NULL,'520536',0,'PRIMA DE SERVICIOS',0,262,1518,0,0,0),('5205','COP','2017',NULL,'520539',0,'VACACIONES',0,262,1519,0,0,0),('5205','COP','2017',NULL,'520542',0,'PRIMAS EXTRALEGALES',0,262,1520,0,0,0),('5205','COP','2017',NULL,'520545',0,'AUXILIOS',0,262,1521,0,0,0),('5205','COP','2017',NULL,'520548',0,'BONIFICACIONES',0,262,1522,0,0,0),('5205','COP','2017',NULL,'520551',0,'DOTACION Y SUMINISTRO A TRABAJADORES',0,262,1523,0,0,0),('5205','COP','2017',NULL,'520554',0,'SEGUROS',0,262,1524,0,0,0),('5205','COP','2017',NULL,'520557',0,'CUOTAS PARTES PENSIONES DE JUBILACION',0,262,1525,0,0,0),('5205','COP','2017',NULL,'520558',0,'AMORTIZACION CALCULO ACTUARIAL PENSIONES DE JUBILACION',0,262,1526,0,0,0),('5205','COP','2017',NULL,'520559',0,'PENSIONES DE JUBILACION',0,262,1527,0,0,0),('5205','COP','2017',NULL,'520560',0,'INDEMNIZACIONES LABORALES',0,262,1528,0,0,0),('5205','COP','2017',NULL,'520563',0,'CAPACITACION AL PERSONAL',0,262,1529,0,0,0),('5205','COP','2017',NULL,'520566',0,'GASTOS DEPORTIVOS Y DE RECREACION',0,262,1530,0,0,0),('5205','COP','2017',NULL,'520569',0,'APORTES AL I.S.S',0,262,1531,0,0,0),('5205','COP','2017',NULL,'520572',0,'APORTES CAJAS DE COMPENSACION FAMILIAR',0,262,1532,0,0,0),('5205','COP','2017',NULL,'520575',0,'APORTES I.C.B.F.',0,262,1533,0,0,0),('5205','COP','2017',NULL,'520578',0,'SENA',0,262,1534,0,0,0),('5205','COP','2017',NULL,'520581',0,'APORTES SINDICALES',0,262,1535,0,0,0),('5205','COP','2017',NULL,'520584',0,'GASTOS MEDICOS Y DROGAS',0,262,1536,0,0,0),('5205','COP','2017',NULL,'520595',0,'OTROS',0,262,1537,0,0,0),('5205','COP','2017',NULL,'520599',0,'AJUSTES POR INFLACION',0,262,1538,0,0,0),('5210','COP','2017',NULL,'521005',0,'JUNTA DIRECTIVA',0,263,1539,0,0,0),('5210','COP','2017',NULL,'521010',0,'REVISORIA FISCAL',0,263,1540,0,0,0),('5210','COP','2017',NULL,'521015',0,'AUDITORIA EXTERNA',0,263,1541,0,0,0),('5210','COP','2017',NULL,'521020',0,'AVALUOS',0,263,1542,0,0,0),('5210','COP','2017',NULL,'521025',0,'ASESORIA JURIDICA',0,263,1543,0,0,0),('5210','COP','2017',NULL,'521030',0,'ASESORIA FINANCIERA',0,263,1544,0,0,0),('5210','COP','2017',NULL,'521035',0,'ASESORIA TECNICA',0,263,1545,0,0,0),('5210','COP','2017',NULL,'521095',0,'OTROS',0,263,1546,0,0,0),('5210','COP','2017',NULL,'521099',0,'AJUSTES POR INFLACION',0,263,1547,0,0,0),('5215','COP','2017',NULL,'521505',0,'INDUSTRIA Y COMERCIO',0,264,1548,0,0,0),('5215','COP','2017',NULL,'521510',0,'DE TIMBRES',0,264,1549,0,0,0),('5215','COP','2017',NULL,'521515',0,'A LA PROPIEDAD RAIZ',0,264,1550,0,0,0),('5215','COP','2017',NULL,'521520',0,'DERECHOS SOBRE INSTRUMENTOS PUBLICOS',0,264,1551,0,0,0),('5215','COP','2017',NULL,'521525',0,'DE VALORIZACION',0,264,1552,0,0,0),('5215','COP','2017',NULL,'521530',0,'DE TURISMO',0,264,1553,0,0,0),('5215','COP','2017',NULL,'521535',0,'TASA POR UTILIZACION DE PUERTOS',0,264,1554,0,0,0),('5215','COP','2017',NULL,'521540',0,'DE VEHICULOS',0,264,1555,0,0,0),('5215','COP','2017',NULL,'521545',0,'DE ESPECTACULOS PUBLICOS',0,264,1556,0,0,0),('5215','COP','2017',NULL,'521550',0,'CUOTAS DE FOMENTO',0,264,1557,0,0,0),('5215','COP','2017',NULL,'521555',0,'LICORES',0,264,1558,0,0,0),('5215','COP','2017',NULL,'521560',0,'CERVEZAS',0,264,1559,0,0,0),('5215','COP','2017',NULL,'521565',0,'CIGARRILLOS',0,264,1560,0,0,0),('5215','COP','2017',NULL,'521570',0,'IVA DESCONTABLE',0,264,1561,0,0,0),('5215','COP','2017',NULL,'521595',0,'OTROS',0,264,1562,0,0,0),('5215','COP','2017',NULL,'521599',0,'AJUSTES POR INFLACION',0,264,1563,0,0,0),('5220','COP','2017',NULL,'522005',0,'TERRENOS',0,265,1564,0,0,0),('5220','COP','2017',NULL,'522010',0,'CONSTRUCCIONES Y EDIFICACIONES',0,265,1565,0,0,0),('5220','COP','2017',NULL,'522015',0,'MAQUINARIA Y EQUIPO',0,265,1566,0,0,0),('5220','COP','2017',NULL,'522020',0,'EQUIPO DE OFICINA',0,265,1567,0,0,0),('5220','COP','2017',NULL,'522025',0,'EQUIPO DE COMPUTACION Y COMUNICACION',0,265,1568,0,0,0),('5220','COP','2017',NULL,'522030',0,'EQUIPO MEDICO - CIENTIFICO',0,265,1569,0,0,0),('5220','COP','2017',NULL,'522035',0,'EQUIPO DE HOTELES Y RESTAURANTES',0,265,1570,0,0,0),('5220','COP','2017',NULL,'522040',0,'FLOTA Y EQUIPO DE TRANSPORTE',0,265,1571,0,0,0),('5220','COP','2017',NULL,'522045',0,'FLOTA Y EQUIPO FLUVIAL Y/O MARITIMO',0,265,1572,0,0,0),('5220','COP','2017',NULL,'522050',0,'FLOTA Y EQUIPO AEREO',0,265,1573,0,0,0),('5220','COP','2017',NULL,'522055',0,'FLOTA Y EQUIPO FERREO',0,265,1574,0,0,0),('5220','COP','2017',NULL,'522060',0,'ACUEDUCTOS PLANTAS Y REDES',0,265,1575,0,0,0),('5220','COP','2017',NULL,'522065',0,'AERODROMOS',0,265,1576,0,0,0),('5220','COP','2017',NULL,'522070',0,'SEMOVIENTES',0,265,1577,0,0,0),('5220','COP','2017',NULL,'522095',0,'OTROS',0,265,1578,0,0,0),('5220','COP','2017',NULL,'522099',0,'AJUSTES POR INFLACION',0,265,1579,0,0,0),('5225','COP','2017',NULL,'522505',0,'CONTRIBUCIONES',0,266,1580,0,0,0),('5225','COP','2017',NULL,'522510',0,'AFILIACIONES Y SOSTENIMIENTO',0,266,1581,0,0,0),('5225','COP','2017',NULL,'522599',0,'AJUSTES POR INFLACION',0,266,1582,0,0,0),('5230','COP','2017',NULL,'523005',0,'MANEJO',0,267,1583,0,0,0),('5230','COP','2017',NULL,'523010',0,'CUMPLIMIENTO',0,267,1584,0,0,0),('5230','COP','2017',NULL,'523015',0,'CORRIENTE DEBIL',0,267,1585,0,0,0),('5230','COP','2017',NULL,'523020',0,'VIDA COLECTIVA',0,267,1586,0,0,0),('5230','COP','2017',NULL,'523025',0,'INCENDIO',0,267,1587,0,0,0),('5230','COP','2017',NULL,'523030',0,'TERREMOTO',0,267,1588,0,0,0),('5230','COP','2017',NULL,'523035',0,'SUSTRACCION Y HURTO',0,267,1589,0,0,0),('5230','COP','2017',NULL,'523040',0,'FLOTA Y EQUIPO DE TRANSPORTE',0,267,1590,0,0,0),('5230','COP','2017',NULL,'523045',0,'FLOTA Y EQUIPO FLUVIAL Y/O MARITIMO',0,267,1591,0,0,0),('5230','COP','2017',NULL,'523050',0,'FLOTA Y EQUIPO AEREO',0,267,1592,0,0,0),('5230','COP','2017',NULL,'523055',0,'FLOTA Y EQUIPO FERREO',0,267,1593,0,0,0),('5230','COP','2017',NULL,'523060',0,'RESPONSABILIDAD CIVIL Y EXTRACONTRACTUAL',0,267,1594,0,0,0),('5230','COP','2017',NULL,'523065',0,'VUELO',0,267,1595,0,0,0),('5230','COP','2017',NULL,'523070',0,'ROTURA DE MAQUINARIA',0,267,1596,0,0,0),('5230','COP','2017',NULL,'523075',0,'OBLIGATORIO ACCIDENTE DE TRANSITO',0,267,1597,0,0,0),('5230','COP','2017',NULL,'523080',0,'LUCRO CESANTE',0,267,1598,0,0,0),('5230','COP','2017',NULL,'523095',0,'OTROS',0,267,1599,0,0,0),('5230','COP','2017',NULL,'523099',0,'AJUSTES POR INFLACION',0,267,1600,0,0,0),('5235','COP','2017',NULL,'523505',0,'ASEO Y VIGILANCIA',0,268,1601,0,0,0),('5235','COP','2017',NULL,'523510',0,'TEMPORALES',0,268,1602,0,0,0),('5235','COP','2017',NULL,'523515',0,'ASISTENCIA TECNICA',0,268,1603,0,0,0),('5235','COP','2017',NULL,'523520',0,'PROCESAMIENTO ELECTRONICO DE DATOS',0,268,1604,0,0,0),('5235','COP','2017',NULL,'523525',0,'ACUEDUCTO Y ALCANTARILLADO',0,268,1605,0,0,0),('5235','COP','2017',NULL,'523530',0,'ENERGIA ELECTRICA',0,268,1606,0,0,0),('5235','COP','2017',NULL,'523535',0,'TELEFONO',0,268,1607,0,0,0),('5235','COP','2017',NULL,'523540',0,'CORREO, PORTES Y TELEGRAMAS',0,268,1608,0,0,0),('5235','COP','2017',NULL,'523545',0,'FAX Y TELEX',0,268,1609,0,0,0),('5235','COP','2017',NULL,'523550',0,'TRANSPORTE, FLETES Y ACARREOS',0,268,1610,0,0,0),('5235','COP','2017',NULL,'523555',0,'GAS',0,268,1611,0,0,0),('5235','COP','2017',NULL,'523560',0,'PROPAGANDA Y PUBLICIDAD',0,268,1612,0,0,0),('5235','COP','2017',NULL,'523595',0,'OTROS',0,268,1613,0,0,0),('5235','COP','2017',NULL,'523599',0,'AJUSTES POR INFLACION',0,268,1614,0,0,0),('5240','COP','2017',NULL,'524005',0,'NOTARIALES',0,269,1615,0,0,0),('5240','COP','2017',NULL,'524010',0,'REGISTRO MERCANTIL',0,269,1616,0,0,0),('5240','COP','2017',NULL,'524015',0,'TRAMITES Y LICENCIAS',0,269,1617,0,0,0),('5240','COP','2017',NULL,'524020',0,'ADUANEROS',0,269,1618,0,0,0),('5240','COP','2017',NULL,'524025',0,'CONSULARES',0,269,1619,0,0,0),('5240','COP','2017',NULL,'524095',0,'OTROS',0,269,1620,0,0,0),('5240','COP','2017',NULL,'524099',0,'AJUSTES POR INFLACION',0,269,1621,0,0,0),('5245','COP','2017',NULL,'524505',0,'TERRENOS',0,270,1622,0,0,0),('5245','COP','2017',NULL,'524510',0,'CONSTRUCCIONES Y EDIFICACIONES',0,270,1623,0,0,0),('5245','COP','2017',NULL,'524515',0,'MAQUINARIA Y EQUIPO',0,270,1624,0,0,0),('5245','COP','2017',NULL,'524520',0,'EQUIPO DE OFICINA',0,270,1625,0,0,0),('5245','COP','2017',NULL,'524525',0,'EQUIPO DE COMPUTACION Y COMUNICACION',0,270,1626,0,0,0),('5245','COP','2017',NULL,'524530',0,'EQUIPO MEDICO - CIENTIFICO',0,270,1627,0,0,0),('5245','COP','2017',NULL,'524535',0,'EQUIPO DE HOTELES Y RESTAURANTES',0,270,1628,0,0,0),('5245','COP','2017',NULL,'524540',0,'FLOTA Y EQUIPO DE TRANSPORTE',0,270,1629,0,0,0),('5245','COP','2017',NULL,'524545',0,'FLOTA Y EQUIPO FLUVIAL Y/O MARITIMO',0,270,1630,0,0,0),('5245','COP','2017',NULL,'524550',0,'FLOTA Y EQUIPO AEREO',0,270,1631,0,0,0),('5245','COP','2017',NULL,'524555',0,'FLOTA Y EQUIPO FERREO',0,270,1632,0,0,0),('5245','COP','2017',NULL,'524560',0,'ACUEDUCTOS PLANTAS Y REDES',0,270,1633,0,0,0),('5245','COP','2017',NULL,'524565',0,'ARMAMENTO DE VIGILANCIA',0,270,1634,0,0,0),('5245','COP','2017',NULL,'524570',0,'VIAS DE COMUNICACION',0,270,1635,0,0,0),('5245','COP','2017',NULL,'524599',0,'AJUSTES POR INFLACION',0,270,1636,0,0,0),('5250','COP','2017',NULL,'525005',0,'INSTALACIONES ELECTRICAS',0,271,1637,0,0,0),('5250','COP','2017',NULL,'525010',0,'ARREGLOS ORNAMENTALES',0,271,1638,0,0,0),('5250','COP','2017',NULL,'525015',0,'REPARACIONES LOCATIVAS',0,271,1639,0,0,0),('5250','COP','2017',NULL,'525095',0,'OTROS',0,271,1640,0,0,0),('5250','COP','2017',NULL,'525099',0,'AJUSTES POR INFLACION',0,271,1641,0,0,0),('5255','COP','2017',NULL,'525505',0,'ALOJAMIENTO Y MANUTENCION',0,272,1642,0,0,0),('5255','COP','2017',NULL,'525510',0,'PASAJES FLUVIALES Y/O MARITIMOS',0,272,1643,0,0,0),('5255','COP','2017',NULL,'525515',0,'PASAJES AEREOS',0,272,1644,0,0,0),('5255','COP','2017',NULL,'525520',0,'PASAJES TERRESTRES',0,272,1645,0,0,0),('5255','COP','2017',NULL,'525525',0,'PASAJES FERREOS',0,272,1646,0,0,0),('5255','COP','2017',NULL,'525595',0,'OTROS',0,272,1647,0,0,0),('5255','COP','2017',NULL,'525599',0,'AJUSTES POR INFLACION',0,272,1648,0,0,0),('5260','COP','2017',NULL,'526005',0,'CONSTRUCCIONES Y EDIFICACIONES',0,273,1649,0,0,0),('5260','COP','2017',NULL,'526010',0,'MAQUINARIA Y EQUIPO',0,273,1650,0,0,0),('5260','COP','2017',NULL,'526015',0,'EQUIPO DE OFICINA',0,273,1651,0,0,0),('5260','COP','2017',NULL,'526020',0,'EQUIPO DE COMPUTACION Y COMUNICACION',0,273,1652,0,0,0),('5260','COP','2017',NULL,'526025',0,'EQUIPO MEDICO - CIENTIFICO',0,273,1653,0,0,0),('5260','COP','2017',NULL,'526030',0,'EQUIPO DE HOTELES Y RESTAURANTES',0,273,1654,0,0,0),('5260','COP','2017',NULL,'526035',0,'FLOTA Y EQUIPO DE TRANSPORTE',0,273,1655,0,0,0),('5260','COP','2017',NULL,'526040',0,'FLOTA Y EQUIPO FLUVIAL Y/O MARITIMO',0,273,1656,0,0,0),('5260','COP','2017',NULL,'526045',0,'FLOTA Y EQUIPO AEREO',0,273,1657,0,0,0),('5260','COP','2017',NULL,'526050',0,'FLOTA Y EQUIPO FERREO',0,273,1658,0,0,0),('5260','COP','2017',NULL,'526055',0,'ACUEDUCTOS, PLANTAS Y REDES',0,273,1659,0,0,0),('5260','COP','2017',NULL,'526060',0,'ARMAMENTO DE VIGILANCIA',0,273,1660,0,0,0),('5260','COP','2017',NULL,'526065',0,'ENVASES Y EMPAQUES',0,273,1661,0,0,0),('5260','COP','2017',NULL,'526099',0,'AJUSTES POR INFLACION',0,273,1662,0,0,0),('5265','COP','2017',NULL,'526505',0,'VIAS DE COMUNICACION',0,274,1663,0,0,0),('5265','COP','2017',NULL,'526510',0,'INTANGIBLES',0,274,1664,0,0,0),('5265','COP','2017',NULL,'526515',0,'CARGOS DIFERIDOS',0,274,1665,0,0,0),('5265','COP','2017',NULL,'526595',0,'OTRAS',0,274,1666,0,0,0),('5265','COP','2017',NULL,'526599',0,'AJUSTES POR INFLACION',0,274,1667,0,0,0),('5270','COP','2017',NULL,'527001',0,'a 527098',0,275,1668,0,0,0),('5270','COP','2017',NULL,'527099',0,'AJUSTES POR INFLACION',0,275,1669,0,0,0),('5295','COP','2017',NULL,'529505',0,'COMISIONES',0,276,1670,0,0,0),('5295','COP','2017',NULL,'529510',0,'LIBROS, SUSCRIPCIONES, PERIODICOS Y REVISTAS',0,276,1671,0,0,0),('5295','COP','2017',NULL,'529515',0,'MUSICA AMBIENTAL',0,276,1672,0,0,0),('5295','COP','2017',NULL,'529520',0,'GASTOS DE REPRESENTACION Y RELACIONES PUBLICAS',0,276,1673,0,0,0),('5295','COP','2017',NULL,'529525',0,'ELEMENTOS DE ASEO Y CAFETERIA',0,276,1674,0,0,0),('5295','COP','2017',NULL,'529530',0,'UTILES, PAPELERIA Y FOTOCOPIAS',0,276,1675,0,0,0),('5295','COP','2017',NULL,'529535',0,'COMBUSTIBLES Y LUBRICANTES',0,276,1676,0,0,0),('5295','COP','2017',NULL,'529540',0,'ENVASES Y EMPAQUES',0,276,1677,0,0,0),('5295','COP','2017',NULL,'529545',0,'TAXIS Y BUSES',0,276,1678,0,0,0),('5295','COP','2017',NULL,'529550',0,'ESTAMPILLAS',0,276,1679,0,0,0),('5295','COP','2017',NULL,'529555',0,'MICROFILMACION',0,276,1680,0,0,0),('5295','COP','2017',NULL,'529560',0,'CASINO Y RESTAURANTE',0,276,1681,0,0,0),('5295','COP','2017',NULL,'529565',0,'PARQUEADEROS',0,276,1682,0,0,0),('5295','COP','2017',NULL,'529570',0,'INDEMNIZACION POR DAÑOS A TERCEROS',0,276,1683,0,0,0),('5295','COP','2017',NULL,'529575',0,'POLVORA Y SIMILARES',0,276,1684,0,0,0),('5295','COP','2017',NULL,'529595',0,'OTROS',0,276,1685,0,0,0),('5295','COP','2017',NULL,'529599',0,'AJUSTES POR INFLACION',0,276,1686,0,0,0),('5299','COP','2017',NULL,'529905',0,'INVERSIONES',0,277,1687,0,0,0),('5299','COP','2017',NULL,'529910',0,'DEUDORES',0,277,1688,0,0,0),('5299','COP','2017',NULL,'529915',0,'INVENTARIOS',0,277,1689,0,0,0),('5299','COP','2017',NULL,'529920',0,'PROPIEDADES, PLANTA Y EQUIPO',0,277,1690,0,0,0),('5299','COP','2017',NULL,'529995',0,'OTROS ACTIVOS',0,277,1691,0,0,0),('5299','COP','2017',NULL,'529999',0,'AJUSTES POR INFLACION',0,277,1692,0,0,0),('5305','COP','2017',NULL,'530505',0,'GASTOS BANCARIOS',0,278,1693,0,0,0),('5305','COP','2017',NULL,'530510',0,'REAJUSTE MONETARIO - UPAC',0,278,1694,0,0,0),('5305','COP','2017',NULL,'530515',0,'COMISIONES',0,278,1695,0,0,0),('5305','COP','2017',NULL,'530520',0,'INTERESES',0,278,1696,0,0,0),('5305','COP','2017',NULL,'530525',0,'DIFERENCIA EN CAMBIO',0,278,1697,0,0,0),('5305','COP','2017',NULL,'530530',0,'GASTOS EN NEGOCIACION CERTIFICADOS DE CAMBIO',0,278,1698,0,0,0),('5305','COP','2017',NULL,'530535',0,'DESCUENTOS COMERCIALES CONDICIONADOS',0,278,1699,0,0,0),('5305','COP','2017',NULL,'530540',0,'GASTOS MANEJO Y EMISION DE BONOS',0,278,1700,0,0,0),('5305','COP','2017',NULL,'530545',0,'PRIMA AMORTIZADA',0,278,1701,0,0,0),('5305','COP','2017',NULL,'530595',0,'OTROS',0,278,1702,0,0,0),('5305','COP','2017',NULL,'530599',0,'AJUSTES POR INFLACION',0,278,1703,0,0,0),('5310','COP','2017',NULL,'531005',0,'VENTA DE INVERSIONES',0,279,1704,0,0,0),('5310','COP','2017',NULL,'531010',0,'VENTA DE CARTERA',0,279,1705,0,0,0),('5310','COP','2017',NULL,'531015',0,'VENTA DE PROPIEDADES PLANTA Y EQUIPO',0,279,1706,0,0,0),('5310','COP','2017',NULL,'531020',0,'VENTA DE INTANGIBLES',0,279,1707,0,0,0),('5310','COP','2017',NULL,'531025',0,'VENTA DE OTROS ACTIVOS',0,279,1708,0,0,0),('5310','COP','2017',NULL,'531030',0,'RETIRO DE PROPIEDADES PLANTA Y EQUIPO',0,279,1709,0,0,0),('5310','COP','2017',NULL,'531035',0,'RETIRO DE OTROS ACTIVOS',0,279,1710,0,0,0),('5310','COP','2017',NULL,'531040',0,'PERDIDAS POR SINIESTROS',0,279,1711,0,0,0),('5310','COP','2017',NULL,'531095',0,'OTROS',0,279,1712,0,0,0),('5310','COP','2017',NULL,'531099',0,'AJUSTES POR INFLACION',0,279,1713,0,0,0),('5315','COP','2017',NULL,'531505',0,'COSTAS Y PROCESOS JUDICIALES',0,280,1714,0,0,0),('5315','COP','2017',NULL,'531510',0,'ACTIVIDADES CULTURALES Y CIVICAS',0,280,1715,0,0,0),('5315','COP','2017',NULL,'531515',0,'COSTOS Y GASTOS DE EJERCICIOS ANTERIORES',0,280,1716,0,0,0),('5315','COP','2017',NULL,'531520',0,'IMPUESTOS ASUMIDOS',0,280,1717,0,0,0),('5315','COP','2017',NULL,'531595',0,'OTROS',0,280,1718,0,0,0),('5315','COP','2017',NULL,'531599',0,'AJUSTES POR INFLACION',0,280,1719,0,0,0),('5395','COP','2017',NULL,'539505',0,'DEMANDAS LABORALES',0,281,1720,0,0,0),('5395','COP','2017',NULL,'539510',0,'DEMANDAS POR INCUMPLIMIENTO DE CONTRATOS',0,281,1721,0,0,0),('5395','COP','2017',NULL,'539515',0,'INDEMNIZACIONES',0,281,1722,0,0,0),('5395','COP','2017',NULL,'539520',0,'MULTAS, SANCIONES Y LITIGIOS',0,281,1723,0,0,0),('5395','COP','2017',NULL,'539525',0,'DONACIONES',0,281,1724,0,0,0),('5395','COP','2017',NULL,'539530',0,'CONSTITUCION DE GARANTIAS',0,281,1725,0,0,0),('5395','COP','2017',NULL,'539535',0,'AMORTIZACION DE BIENES ENTREGADOS EN COMODATO',0,281,1726,0,0,0),('5395','COP','2017',NULL,'539595',0,'OTROS',0,281,1727,0,0,0),('5395','COP','2017',NULL,'539599',0,'AJUSTES POR INFLACION',0,281,1728,0,0,0),('5405','COP','2017',NULL,'540505',0,'IMPUESTO DE RENTA Y COMPLEMENTARIOS',0,282,1729,0,0,0),('5905','COP','2017',NULL,'590505',0,'GANANCIAS Y PERDIDAS',0,283,1730,0,0,0),('6105','COP','2017',NULL,'610505',0,'CULTIVO DE CEREALES',0,284,1731,0,0,0),('6105','COP','2017',NULL,'610510',0,'CULTIVOS DE HORTALIZAS, LEGUMBRES Y PLANTAS ORNAMENTALES',0,284,1732,0,0,0),('6105','COP','2017',NULL,'610515',0,'CULTIVOS DE FRUTAS, NUECES Y PLANTAS AROMATICAS',0,284,1733,0,0,0),('6105','COP','2017',NULL,'610520',0,'CULTIVO DE CAFE',0,284,1734,0,0,0),('6105','COP','2017',NULL,'610525',0,'CULTIVO DE FLORES',0,284,1735,0,0,0),('6105','COP','2017',NULL,'610530',0,'CULTIVO DE CAÑA DE AZUCAR',0,284,1736,0,0,0),('6105','COP','2017',NULL,'610535',0,'CULTIVO DE ALGODON Y PLANTAS PARA MATERIAL TEXTIL',0,284,1737,0,0,0),('6105','COP','2017',NULL,'610540',0,'CULTIVO DE BANANO',0,284,1738,0,0,0),('6105','COP','2017',NULL,'610545',0,'OTROS CULTIVOS AGRICOLAS',0,284,1739,0,0,0),('6105','COP','2017',NULL,'610550',0,'CRIA DE OVEJAS, CABRAS, ASNOS, MULAS Y BURDEGANOS',0,284,1740,0,0,0),('6105','COP','2017',NULL,'610555',0,'CRIA DE GANADO CABALLAR Y VACUNO.',0,284,1741,0,0,0),('6105','COP','2017',NULL,'610560',0,'PRODUCCION AVICOLA',0,284,1742,0,0,0),('6105','COP','2017',NULL,'610565',0,'CRIA DE OTROS ANIMALES',0,284,1743,0,0,0),('6105','COP','2017',NULL,'610570',0,'SERVICIOS AGRICOLAS Y GANADEROS',0,284,1744,0,0,0),('6105','COP','2017',NULL,'610575',0,'ACTIVIDAD DE CAZA',0,284,1745,0,0,0),('6105','COP','2017',NULL,'610580',0,'ACTIVIDAD DE SILVICULTURA',0,284,1746,0,0,0),('6105','COP','2017',NULL,'610595',0,'ACTIVIDADES CONEXAS',0,284,1747,0,0,0),('6105','COP','2017',NULL,'610599',0,'AJUSTES POR INFLACION',0,284,1748,0,0,0),('6110','COP','2017',NULL,'611005',0,'ACTIVIDAD DE PESCA',0,285,1749,0,0,0),('6110','COP','2017',NULL,'611010',0,'EXPLOTACION DE CRIADEROS DE PECES',0,285,1750,0,0,0),('6110','COP','2017',NULL,'611095',0,'ACTIVIDADES CONEXAS',0,285,1751,0,0,0),('6110','COP','2017',NULL,'611099',0,'AJUSTES POR INFLACION',0,285,1752,0,0,0),('6115','COP','2017',NULL,'611505',0,'CARBON',0,286,1753,0,0,0),('6115','COP','2017',NULL,'611510',0,'PETROLEO CRUDO',0,286,1754,0,0,0),('6115','COP','2017',NULL,'611512',0,'GAS NATURAL',0,286,1755,0,0,0),('6115','COP','2017',NULL,'611514',0,'SERVICIOS RELACIONADOS CON EXTRACCION DE PETROLEO Y GAS',0,286,1756,0,0,0),('6115','COP','2017',NULL,'611515',0,'MINERALES DE HIERRO',0,286,1757,0,0,0),('6115','COP','2017',NULL,'611520',0,'MINERALES METALIFEROS NO FERROSOS',0,286,1758,0,0,0),('6115','COP','2017',NULL,'611525',0,'PIEDRA, ARENA Y ARCILLA',0,286,1759,0,0,0),('6115','COP','2017',NULL,'611527',0,'PIEDRAS PRECIOSAS',0,286,1760,0,0,0),('6115','COP','2017',NULL,'611528',0,'ORO',0,286,1761,0,0,0),('6115','COP','2017',NULL,'611530',0,'OTRAS MINAS Y CANTERAS',0,286,1762,0,0,0),('6115','COP','2017',NULL,'611532',0,'PRESTACION DE SERVICIOS SECTOR MINERO',0,286,1763,0,0,0),('6115','COP','2017',NULL,'611595',0,'ACTIVIDADES CONEXAS',0,286,1764,0,0,0),('6115','COP','2017',NULL,'611599',0,'AJUSTES POR INFLACION',0,286,1765,0,0,0),('6120','COP','2017',NULL,'612001',0,'PRODUCCION Y PROCESAMIENTO DE CARNES Y PRODUCTOS CARNICOS',0,287,1766,0,0,0),('6120','COP','2017',NULL,'612002',0,'PRODUCTOS DE PESCADO',0,287,1767,0,0,0),('6120','COP','2017',NULL,'612003',0,'PRODUCTOS DE FRUTAS, LEGUMBRES Y HORTALIZAS',0,287,1768,0,0,0),('6120','COP','2017',NULL,'612004',0,'ELABORACION DE ACEITES Y GRASAS',0,287,1769,0,0,0),('6120','COP','2017',NULL,'612005',0,'ELABORACION DE PRODUCTOS LACTEOS',0,287,1770,0,0,0),('6120','COP','2017',NULL,'612006',0,'ELABORACION DE PRODUCTOS DE MOLINERIA',0,287,1771,0,0,0),('6120','COP','2017',NULL,'612007',0,'ELABORACION DE ALMIDONES Y DERIVADOS',0,287,1772,0,0,0),('6120','COP','2017',NULL,'612008',0,'ELABORACION DE ALIMENTOS PARA ANIMALES',0,287,1773,0,0,0),('6120','COP','2017',NULL,'612009',0,'ELABORACION DE PRODUCTOS PARA PANADERIA',0,287,1774,0,0,0),('6120','COP','2017',NULL,'612010',0,'ELABORACION DE AZUCAR Y MELAZAS',0,287,1775,0,0,0),('6120','COP','2017',NULL,'612011',0,'ELABORACION DE CACAO, CHOCOLATE Y CONFITERIA',0,287,1776,0,0,0),('6120','COP','2017',NULL,'612012',0,'ELABORACION DE PASTAS  Y PRODUCTOS FARINACEOS',0,287,1777,0,0,0),('6120','COP','2017',NULL,'612013',0,'ELABORACION DE PRODUCTOS DE CAFE',0,287,1778,0,0,0),('6120','COP','2017',NULL,'612014',0,'ELABORACION DE OTROS PRODUCTOS ALIMENTICIOS',0,287,1779,0,0,0),('6120','COP','2017',NULL,'612015',0,'ELABORACION DE BEBIDAS ALCOHOLICAS Y ALCOHOL ETILICO',0,287,1780,0,0,0),('6120','COP','2017',NULL,'612016',0,'ELABORACION DE VINOS',0,287,1781,0,0,0),('6120','COP','2017',NULL,'612017',0,'ELABORACION DE BEBIDAS MALTEADAS Y DE MALTA',0,287,1782,0,0,0),('6120','COP','2017',NULL,'612018',0,'ELABORACION DE BEBIDAS NO ALCOHOLICAS',0,287,1783,0,0,0),('6120','COP','2017',NULL,'612019',0,'ELABORACION DE PRODUCTOS DE TABACO',0,287,1784,0,0,0),('6120','COP','2017',NULL,'612020',0,'PREPARACION E HILATURA DE FIBRAS TEXTILES Y TEJEDURIA',0,287,1785,0,0,0),('6120','COP','2017',NULL,'612021',0,'ACABADO DE PRODUCTOS TEXTILES',0,287,1786,0,0,0),('6120','COP','2017',NULL,'612022',0,'ELABORACION DE ARTICULOS DE MATERIALES TEXTILES',0,287,1787,0,0,0),('6120','COP','2017',NULL,'612023',0,'ELABORACION DE TAPICES Y ALFOMBRAS',0,287,1788,0,0,0),('6120','COP','2017',NULL,'612024',0,'ELABORACION DE CUERDAS, CORDELES, BRAMANTES Y REDES',0,287,1789,0,0,0),('6120','COP','2017',NULL,'612025',0,'ELABORACION DE OTROS PRODUCTOS TEXTILES',0,287,1790,0,0,0),('6120','COP','2017',NULL,'612026',0,'ELABORACION DE TEJIDOS',0,287,1791,0,0,0),('6120','COP','2017',NULL,'612027',0,'ELABORACION DE PRENDAS DE VESTIR',0,287,1792,0,0,0),('6120','COP','2017',NULL,'612028',0,'PREPARACION, ADOBO Y TEÑIDO DE PIELES',0,287,1793,0,0,0),('6120','COP','2017',NULL,'612029',0,'CURTIDO, ADOBO O PREPARACION DE CUERO',0,287,1794,0,0,0),('6120','COP','2017',NULL,'612030',0,'ELABORACION DE MALETAS, BOLSOS Y SIMILARES',0,287,1795,0,0,0),('6120','COP','2017',NULL,'612031',0,'ELABORACION DE CALZADO',0,287,1796,0,0,0),('6120','COP','2017',NULL,'612032',0,'PRODUCCION DE MADERA, ARTICULOS DE MADERA Y CORCHO',0,287,1797,0,0,0),('6120','COP','2017',NULL,'612033',0,'ELABORACION DE PASTA Y PRODUCTOS DE MADERA, PAPEL Y CARTON',0,287,1798,0,0,0),('6120','COP','2017',NULL,'612034',0,'EDICIONES Y PUBLICACIONES',0,287,1799,0,0,0),('6120','COP','2017',NULL,'612035',0,'IMPRESION',0,287,1800,0,0,0),('6120','COP','2017',NULL,'612036',0,'SERVICIOS RELACIONADOS CON LA EDICION Y LA IMPRESION',0,287,1801,0,0,0),('6120','COP','2017',NULL,'612037',0,'REPRODUCCION DE GRABACIONES',0,287,1802,0,0,0),('6120','COP','2017',NULL,'612038',0,'ELABORACION DE PRODUCTOS DE HORNO DE COQUE',0,287,1803,0,0,0),('6120','COP','2017',NULL,'612039',0,'ELABORACION DE PRODUCTOS DE LA REFINACION DE PETROLEO',0,287,1804,0,0,0),('6120','COP','2017',NULL,'612040',0,'ELABORACION DE SUSTANCIAS QUIMICAS BASICAS',0,287,1805,0,0,0),('6120','COP','2017',NULL,'612041',0,'ELABORACION DE ABONOS Y COMPUESTOS DE NITROGENO',0,287,1806,0,0,0),('6120','COP','2017',NULL,'612042',0,'ELABORACION DE PLASTICO Y CAUCHO SINTETICO',0,287,1807,0,0,0),('6120','COP','2017',NULL,'612043',0,'ELABORACION DE PRODUCTOS QUIMICOS DE USO AGROPECUARIO',0,287,1808,0,0,0),('6120','COP','2017',NULL,'612044',0,'ELABORACION DE PINTURAS, TINTAS Y MASILLAS',0,287,1809,0,0,0),('6120','COP','2017',NULL,'612045',0,'ELABORACION DE PRODUCTOS FARMACEUTICOS Y BOTANICOS',0,287,1810,0,0,0),('6120','COP','2017',NULL,'612046',0,'ELABORACION DE JABONES, DETERGENTES Y PREPARADOS DE TOCADOR',0,287,1811,0,0,0),('6120','COP','2017',NULL,'612047',0,'ELABORACION DE OTROS PRODUCTOS QUIMICOS',0,287,1812,0,0,0),('6120','COP','2017',NULL,'612048',0,'ELABORACION DE FIBRAS',0,287,1813,0,0,0),('6120','COP','2017',NULL,'612049',0,'ELABORACION DE OTROS PRODUCTOS DE CAUCHO',0,287,1814,0,0,0),('6120','COP','2017',NULL,'612050',0,'ELABORACION DE PRODUCTOS DE PLASTICO',0,287,1815,0,0,0),('6120','COP','2017',NULL,'612051',0,'ELABORACION DE VIDRIO Y PRODUCTOS DE VIDRIO',0,287,1816,0,0,0),('6120','COP','2017',NULL,'612052',0,'ELABORACION DE PRODUCTOS DE CERAMICA, LOZA, PIEDRA, ARCILLA Y PORCELANA',0,287,1817,0,0,0),('6120','COP','2017',NULL,'612053',0,'ELABORACION DE CEMENTO, CAL Y YESO',0,287,1818,0,0,0),('6120','COP','2017',NULL,'612054',0,'ELABORACION DE ARTICULOS DE HORMIGON, CEMENTO Y YESO',0,287,1819,0,0,0),('6120','COP','2017',NULL,'612055',0,'CORTE, TALLADO Y ACABADO DE LA PIEDRA',0,287,1820,0,0,0),('6120','COP','2017',NULL,'612056',0,'ELABORACION DE OTROS PRODUCTOS MINERALES NO METALICOS',0,287,1821,0,0,0),('6120','COP','2017',NULL,'612057',0,'INDUSTRIAS BASICAS Y FUNDICION DE HIERRO Y ACERO',0,287,1822,0,0,0),('6120','COP','2017',NULL,'612058',0,'PRODUCTOS PRIMARIOS DE METALES PRECIOSOS Y DE METALES NO FERROSOS',0,287,1823,0,0,0),('6120','COP','2017',NULL,'612059',0,'FUNDICION DE METALES NO FERROSOS',0,287,1824,0,0,0),('6120','COP','2017',NULL,'612060',0,'FABRICACION DE PRODUCTOS METALICOS PARA USO ESTRUCTURAL',0,287,1825,0,0,0),('6120','COP','2017',NULL,'612061',0,'FORJA, PRENSADO, ESTAMPADO, LAMINADO DE METAL Y PULVIMETALURGIA',0,287,1826,0,0,0),('6120','COP','2017',NULL,'612062',0,'REVESTIMIENTO DE METALES Y OBRAS DE INGENIERIA MECANICA',0,287,1827,0,0,0),('6120','COP','2017',NULL,'612063',0,'FABRICACION DE ARTICULOS DE FERRETERIA',0,287,1828,0,0,0),('6120','COP','2017',NULL,'612064',0,'ELABORACION DE OTROS PRODUCTOS DE METAL',0,287,1829,0,0,0),('6120','COP','2017',NULL,'612065',0,'FABRICACION DE MAQUINARIA Y EQUIPO',0,287,1830,0,0,0),('6120','COP','2017',NULL,'612066',0,'FABRICACION DE EQUIPOS DE ELEVACION Y MANIPULACION',0,287,1831,0,0,0),('6120','COP','2017',NULL,'612067',0,'ELABORACION DE APARATOS DE USO DOMESTICO',0,287,1832,0,0,0),('6120','COP','2017',NULL,'612068',0,'ELABORACION DE EQUIPO DE OFICINA',0,287,1833,0,0,0),('6120','COP','2017',NULL,'612069',0,'ELABORACION DE PILAS Y BATERIAS PRIMARIAS',0,287,1834,0,0,0),('6120','COP','2017',NULL,'612070',0,'ELABORACION DE EQUIPO DE ILUMINACION',0,287,1835,0,0,0),('6120','COP','2017',NULL,'612071',0,'ELABORACION DE OTROS TIPOS DE EQUIPO ELECTRICO',0,287,1836,0,0,0),('6120','COP','2017',NULL,'612072',0,'FABRICACION DE EQUIPOS DE RADIO, TELEVISION Y COMUNICACIONES',0,287,1837,0,0,0),('6120','COP','2017',NULL,'612073',0,'FABRICACION DE APARATOS E INSTRUMENTOS MEDICOS',0,287,1838,0,0,0),('6120','COP','2017',NULL,'612074',0,'FABRICACION DE INSTRUMENTOS DE MEDICION Y CONTROL',0,287,1839,0,0,0),('6120','COP','2017',NULL,'612075',0,'FABRICACION DE INSTRUMENTOS DE OPTICA Y EQUIPO FOTOGRAFICO',0,287,1840,0,0,0),('6120','COP','2017',NULL,'612076',0,'FABRICACION DE RELOJES',0,287,1841,0,0,0),('6120','COP','2017',NULL,'612077',0,'FABRICACION DE VEHICULOS AUTOMOTORES',0,287,1842,0,0,0),('6120','COP','2017',NULL,'612078',0,'FABRICACION DE CARROCERIAS PARA AUTOMOTORES',0,287,1843,0,0,0),('6120','COP','2017',NULL,'612079',0,'FABRICACION DE PARTES PIEZAS Y ACCESORIOS PARA AUTOMOTORES',0,287,1844,0,0,0),('6120','COP','2017',NULL,'612080',0,'FABRICACION Y REPARACION DE BUQUES Y OTRAS EMBARCACIONES',0,287,1845,0,0,0),('6120','COP','2017',NULL,'612081',0,'FABRICACION DE LOCOMOTORAS Y MATERIAL RODANTE PARA FERROCARRILES',0,287,1846,0,0,0),('6120','COP','2017',NULL,'612082',0,'FABRICACION DE AERONAVES',0,287,1847,0,0,0),('6120','COP','2017',NULL,'612083',0,'FABRICACION DE MOTOCICLETAS',0,287,1848,0,0,0),('6120','COP','2017',NULL,'612084',0,'FABRICACION DE BICICLETAS Y SILLAS DE RUEDAS',0,287,1849,0,0,0),('6120','COP','2017',NULL,'612085',0,'FABRICACION DE OTROS TIPOS DE TRANSPORTE',0,287,1850,0,0,0),('6120','COP','2017',NULL,'612086',0,'FABRICACION DE MUEBLES',0,287,1851,0,0,0),('6120','COP','2017',NULL,'612087',0,'FABRICACION DE JOYAS Y ARTICULOS CONEXOS',0,287,1852,0,0,0),('6120','COP','2017',NULL,'612088',0,'FABRICACION DE INSTRUMENTOS DE MUSICA',0,287,1853,0,0,0),('6120','COP','2017',NULL,'612089',0,'FABRICACION DE ARTICULOS Y EQUIPO PARA DEPORTE',0,287,1854,0,0,0),('6120','COP','2017',NULL,'612090',0,'FABRICACION DE JUEGOS Y JUGUETES',0,287,1855,0,0,0),('6120','COP','2017',NULL,'612091',0,'RECICLAMIENTO DE DESPERDICIOS',0,287,1856,0,0,0),('6120','COP','2017',NULL,'612095',0,'PRODUCTOS DE OTRAS INDUSTRIAS MANUFACTURERAS',0,287,1857,0,0,0),('6120','COP','2017',NULL,'612099',0,'AJUSTES POR INFLACION',0,287,1858,0,0,0),('6125','COP','2017',NULL,'612505',0,'GENERACION, CAPTACION Y DISTRIBUCION DE ENERGIA ELECTRICA',0,288,1859,0,0,0),('6125','COP','2017',NULL,'612510',0,'FABRICACION DE GAS Y DISTRIBUCION DE COMBUSTIBLES GASEOSOS',0,288,1860,0,0,0),('6125','COP','2017',NULL,'612515',0,'CAPTACION, DEPURACION Y DISTRIBUCION DE AGUA',0,288,1861,0,0,0),('6125','COP','2017',NULL,'612595',0,'ACTIVIDADES CONEXAS',0,288,1862,0,0,0),('6125','COP','2017',NULL,'612599',0,'AJUSTES POR INFLACION',0,288,1863,0,0,0),('6130','COP','2017',NULL,'613005',0,'PREPARACION DE TERRENOS',0,289,1864,0,0,0),('6130','COP','2017',NULL,'613010',0,'CONSTRUCCION DE EDIFICIOS Y OBRAS DE INGENIERIA CIVIL',0,289,1865,0,0,0),('6130','COP','2017',NULL,'613015',0,'ACONDICIONAMIENTO DE EDIFICIOS',0,289,1866,0,0,0),('6130','COP','2017',NULL,'613020',0,'TERMINACION DE EDIFICACIONES',0,289,1867,0,0,0),('6130','COP','2017',NULL,'613025',0,'ALQUILER DE EQUIPO CON OPERARIO',0,289,1868,0,0,0),('6130','COP','2017',NULL,'613095',0,'ACTIVIDADES CONEXAS',0,289,1869,0,0,0),('6130','COP','2017',NULL,'613099',0,'AJUSTES POR INFLACION',0,289,1870,0,0,0),('6135','COP','2017',NULL,'613502',0,'VENTA DE VEHICULOS AUTOMOTORES',0,290,1871,0,0,0),('6135','COP','2017',NULL,'613504',0,'MANTENIMIENTO, REPARACION Y LAVADO DE VEHICULOS AUTOMOTORES',0,290,1872,0,0,0),('6135','COP','2017',NULL,'613506',0,'VENTA DE PARTES, PIEZAS Y ACCESORIOS DE VEHICULOS AUTOMOTORES',0,290,1873,0,0,0),('6135','COP','2017',NULL,'613508',0,'VENTA DE COMBUSTIBLES SOLIDOS, LIQUIDOS, GASEOSOS',0,290,1874,0,0,0),('6135','COP','2017',NULL,'613510',0,'VENTA DE LUBRICANTES, ADITIVOS, LLANTAS Y LUJOS PARA AUTOMOTORES',0,290,1875,0,0,0),('6135','COP','2017',NULL,'613512',0,'VENTA A CAMBIO DE RETRIBUCION O POR CONTRATA',0,290,1876,0,0,0),('6135','COP','2017',NULL,'613514',0,'VENTA DE INSUMOS, MATERIAS PRIMAS AGROPECUARIAS Y FLORES',0,290,1877,0,0,0),('6135','COP','2017',NULL,'613516',0,'VENTA DE OTROS INSUMOS Y MATERIAS PRIMAS NO AGROPECUARIAS',0,290,1878,0,0,0),('6135','COP','2017',NULL,'613518',0,'VENTA DE ANIMALES VIVOS Y CUEROS',0,290,1879,0,0,0),('6135','COP','2017',NULL,'613520',0,'VENTA DE PRODUCTOS EN ALMACENES NO ESPECIALIZADOS',0,290,1880,0,0,0),('6135','COP','2017',NULL,'613522',0,'VENTA DE PRODUCTOS AGROPECUARIOS',0,290,1881,0,0,0),('6135','COP','2017',NULL,'613524',0,'VENTA DE PRODUCTOS TEXTILES, DE VESTIR, DE CUERO Y CALZADO',0,290,1882,0,0,0),('6135','COP','2017',NULL,'613526',0,'VENTA DE PAPEL Y CARTON',0,290,1883,0,0,0),('6135','COP','2017',NULL,'613528',0,'VENTA DE LIBROS, REVISTAS, ELEMENTOS DE PAPELERIA, UTILES Y TEXTOS ESCOLARES',0,290,1884,0,0,0),('6135','COP','2017',NULL,'613530',0,'VENTA DE JUEGOS, JUGUETES Y ARTICULOS DEPORTIVOS',0,290,1885,0,0,0),('6135','COP','2017',NULL,'613532',0,'VENTA DE INSTRUMENTOS QUIRURGICOS Y ORTOPEDICOS',0,290,1886,0,0,0),('6135','COP','2017',NULL,'613534',0,'VENTA DE ARTICULOS EN RELOJERIAS Y JOYERIAS',0,290,1887,0,0,0),('6135','COP','2017',NULL,'613536',0,'VENTA DE ELECTRODOMESTICOS Y MUEBLES',0,290,1888,0,0,0),('6135','COP','2017',NULL,'613538',0,'VENTA DE PRODUCTOS DE ASEO, FARMACEUTICOS, MEDICINALES, Y ARTICULOS DE TOCADOR',0,290,1889,0,0,0),('6135','COP','2017',NULL,'613540',0,'VENTA DE CUBIERTOS, VAJILLAS, CRISTALERIA, PORCELANAS, CERAMICAS Y OTROS ARTICULOS DE USO DOMESTICO',0,290,1890,0,0,0),('6135','COP','2017',NULL,'613542',0,'VENTA DE MATERIALES DE CONSTRUCCION, FONTANERIA Y CALEFACCION',0,290,1891,0,0,0),('6135','COP','2017',NULL,'613544',0,'VENTA DE PINTURAS Y LACAS',0,290,1892,0,0,0),('6135','COP','2017',NULL,'613546',0,'VENTA DE PRODUCTOS DE VIDRIOS Y MARQUETERIA',0,290,1893,0,0,0),('6135','COP','2017',NULL,'613548',0,'VENTA DE HERRAMIENTAS Y ARTICULOS DE FERRETERIA',0,290,1894,0,0,0),('6135','COP','2017',NULL,'613550',0,'VENTA DE QUIMICOS',0,290,1895,0,0,0),('6135','COP','2017',NULL,'613552',0,'VENTA DE PRODUCTOS INTERMEDIOS, DESPERDICIOS Y DESECHOS',0,290,1896,0,0,0),('6135','COP','2017',NULL,'613554',0,'VENTA DE MAQUINARIA, EQUIPO DE OFICINA Y PROGRAMAS DE COMPUTADOR',0,290,1897,0,0,0),('6135','COP','2017',NULL,'613556',0,'VENTA DE ARTICULOS EN CACHARRERIAS Y MISCELANEAS',0,290,1898,0,0,0),('6135','COP','2017',NULL,'613558',0,'VENTA DE INSTRUMENTOS MUSICALES',0,290,1899,0,0,0),('6135','COP','2017',NULL,'613560',0,'VENTA DE ARTICULOS EN CASAS DE EMPEÑO Y PRENDERIAS',0,290,1900,0,0,0),('6135','COP','2017',NULL,'613562',0,'VENTA DE EQUIPO FOTOGRAFICO',0,290,1901,0,0,0),('6135','COP','2017',NULL,'613564',0,'VENTA DE EQUIPO OPTICO Y DE PRECISION',0,290,1902,0,0,0),('6135','COP','2017',NULL,'613566',0,'VENTA DE EMPAQUES',0,290,1903,0,0,0),('6135','COP','2017',NULL,'613568',0,'VENTA DE EQUIPO PROFESIONAL Y CIENTIFICO',0,290,1904,0,0,0),('6135','COP','2017',NULL,'613570',0,'VENTA DE LOTERIAS, RIFAS, CHANCE, APUESTAS Y SIMILARES',0,290,1905,0,0,0),('6135','COP','2017',NULL,'613572',0,'REPARACION DE EFECTOS PERSONALES Y ELECTRODOMESTICOS',0,290,1906,0,0,0),('6135','COP','2017',NULL,'613595',0,'VENTA DE OTROS PRODUCTOS',0,290,1907,0,0,0),('6135','COP','2017',NULL,'613599',0,'AJUSTES POR INFLACION',0,290,1908,0,0,0),('6140','COP','2017',NULL,'614005',0,'HOTELERIA',0,291,1909,0,0,0),('6140','COP','2017',NULL,'614010',0,'CAMPAMENTO Y OTROS TIPOS DE HOSPEDAJE',0,291,1910,0,0,0),('6140','COP','2017',NULL,'614015',0,'RESTAURANTES',0,291,1911,0,0,0),('6140','COP','2017',NULL,'614020',0,'BARES Y CANTINAS',0,291,1912,0,0,0),('6140','COP','2017',NULL,'614095',0,'ACTIVIDADES CONEXAS',0,291,1913,0,0,0),('6140','COP','2017',NULL,'614099',0,'AJUSTES POR INFLACION',0,291,1914,0,0,0),('6145','COP','2017',NULL,'614505',0,'SERVICIO DE TRANSPORTE POR CARRETERA',0,292,1915,0,0,0),('6145','COP','2017',NULL,'614510',0,'SERVICIO DE TRANSPORTE POR VIA FERREA',0,292,1916,0,0,0),('6145','COP','2017',NULL,'614515',0,'SERVICIO DE TRANSPORTE POR VIA ACUATICA',0,292,1917,0,0,0),('6145','COP','2017',NULL,'614520',0,'SERVICIO DE TRANSPORTE POR VIA AEREA',0,292,1918,0,0,0),('6145','COP','2017',NULL,'614525',0,'SERVICIO DE TRANSPORTE POR TUBERIAS',0,292,1919,0,0,0),('6145','COP','2017',NULL,'614530',0,'MANIPULACION DE CARGA',0,292,1920,0,0,0),('6145','COP','2017',NULL,'614535',0,'ALMACENAMIENTO Y DEPOSITO',0,292,1921,0,0,0),('6145','COP','2017',NULL,'614540',0,'SERVICIOS COMPLEMENTARIOS PARA EL TRANSPORTE',0,292,1922,0,0,0),('6145','COP','2017',NULL,'614545',0,'AGENCIAS DE VIAJE',0,292,1923,0,0,0),('6145','COP','2017',NULL,'614550',0,'OTRAS AGENCIAS DE TRANSPORTE',0,292,1924,0,0,0),('6145','COP','2017',NULL,'614555',0,'SERVICIO POSTAL Y DE CORREO',0,292,1925,0,0,0),('6145','COP','2017',NULL,'614560',0,'SERVICIO TELEFONICO',0,292,1926,0,0,0),('6145','COP','2017',NULL,'614565',0,'SERVICIO DE TELEGRAFO',0,292,1927,0,0,0),('6145','COP','2017',NULL,'614570',0,'SERVICIO DE TRANSMISION DE DATOS',0,292,1928,0,0,0),('6145','COP','2017',NULL,'614575',0,'SERVICIO DE RADIO Y TELEVISION POR CABLE',0,292,1929,0,0,0),('6145','COP','2017',NULL,'614580',0,'TRANSMISION DE SONIDO E IMAGENES POR CONTRATO',0,292,1930,0,0,0),('6145','COP','2017',NULL,'614595',0,'ACTIVIDADES CONEXAS',0,292,1931,0,0,0),('6145','COP','2017',NULL,'614599',0,'AJUSTES POR INFLACION',0,292,1932,0,0,0),('6150','COP','2017',NULL,'615005',0,'DE INVERSIONES',0,293,1933,0,0,0),('6150','COP','2017',NULL,'615010',0,'DE SERVICIO DE BOLSA',0,293,1934,0,0,0),('6150','COP','2017',NULL,'615099',0,'AJUSTES POR INFLACION',0,293,1935,0,0,0),('6155','COP','2017',NULL,'615505',0,'ARRENDAMIENTOS DE BIENES INMUEBLES',0,294,1936,0,0,0),('6155','COP','2017',NULL,'615510',0,'INMOBILIARIAS POR RETRIBUCION O CONTRATA',0,294,1937,0,0,0),('6155','COP','2017',NULL,'615515',0,'ALQUILER EQUIPO DE TRANSPORTE',0,294,1938,0,0,0),('6155','COP','2017',NULL,'615520',0,'ALQUILER MAQUINARIA Y EQUIPO',0,294,1939,0,0,0),('6155','COP','2017',NULL,'615525',0,'ALQUILER DE EFECTOS PERSONALES Y ENSERES DOMESTICOS',0,294,1940,0,0,0),('6155','COP','2017',NULL,'615530',0,'CONSULTORIA EN EQUIPO Y PROGRAMAS DE INFORMATICA',0,294,1941,0,0,0),('6155','COP','2017',NULL,'615535',0,'PROCESAMIENTO DE DATOS',0,294,1942,0,0,0),('6155','COP','2017',NULL,'615540',0,'MANTENIMIENTO Y REPARACION DE MAQUINARIA DE OFICINA',0,294,1943,0,0,0),('6155','COP','2017',NULL,'615545',0,'INVESTIGACIONES CIENTIFICAS Y DE DESARROLLO',0,294,1944,0,0,0),('6155','COP','2017',NULL,'615550',0,'ACTIVIDADES EMPRESARIALES DE CONSULTORIA',0,294,1945,0,0,0),('6155','COP','2017',NULL,'615555',0,'PUBLICIDAD',0,294,1946,0,0,0),('6155','COP','2017',NULL,'615560',0,'DOTACION DE PERSONAL',0,294,1947,0,0,0),('6155','COP','2017',NULL,'615565',0,'INVESTIGACION Y SEGURIDAD',0,294,1948,0,0,0),('6155','COP','2017',NULL,'615570',0,'LIMPIEZA DE INMUEBLES',0,294,1949,0,0,0),('6155','COP','2017',NULL,'615575',0,'FOTOGRAFIA',0,294,1950,0,0,0),('6155','COP','2017',NULL,'615580',0,'ENVASE Y EMPAQUE',0,294,1951,0,0,0),('6155','COP','2017',NULL,'615585',0,'FOTOCOPIADO',0,294,1952,0,0,0),('6155','COP','2017',NULL,'615590',0,'MANTENIMIENTO Y REPARACION DE MAQUINARIA Y EQUIPO',0,294,1953,0,0,0),('6155','COP','2017',NULL,'615595',0,'ACTIVIDADES CONEXAS',0,294,1954,0,0,0),('6155','COP','2017',NULL,'615599',0,'AJUSTES POR INFLACION',0,294,1955,0,0,0),('6160','COP','2017',NULL,'616005',0,'ACTIVIDADES RELACIONADAS CON LA EDUCACION',0,295,1956,0,0,0),('6160','COP','2017',NULL,'616099',0,'AJUSTES POR INFLACION',0,295,1957,0,0,0),('6165','COP','2017',NULL,'616505',0,'SERVICIO HOSPITALARIO',0,296,1958,0,0,0),('6165','COP','2017',NULL,'616510',0,'SERVICIO MEDICO',0,296,1959,0,0,0),('6165','COP','2017',NULL,'616515',0,'SERVICIO ODONTOLOGICO',0,296,1960,0,0,0),('6165','COP','2017',NULL,'616520',0,'SERVICIO DE LABORATORIO',0,296,1961,0,0,0),('6165','COP','2017',NULL,'616525',0,'ACTIVIDADES VETERINARIAS',0,296,1962,0,0,0),('6165','COP','2017',NULL,'616530',0,'ACTIVIDADES DE SERVICIOS SOCIALES',0,296,1963,0,0,0),('6165','COP','2017',NULL,'616595',0,'ACTIVIDADES CONEXAS',0,296,1964,0,0,0),('6165','COP','2017',NULL,'616599',0,'AJUSTES POR INFLACION',0,296,1965,0,0,0),('6170','COP','2017',NULL,'617005',0,'ELIMINACION DE DESPERDICIOS Y AGUAS RESIDUALES',0,297,1966,0,0,0),('6170','COP','2017',NULL,'617010',0,'ACTIVIDADES DE ASOCIACION',0,297,1967,0,0,0),('6170','COP','2017',NULL,'617015',0,'PRODUCCION Y DISTRIBUCION DE FILMES Y VIDEOCINTAS',0,297,1968,0,0,0),('6170','COP','2017',NULL,'617020',0,'EXHIBICION DE FILMES Y VIDEOCINTAS',0,297,1969,0,0,0),('6170','COP','2017',NULL,'617025',0,'ACTIVIDAD DE RADIO Y TELEVISION',0,297,1970,0,0,0),('6170','COP','2017',NULL,'617030',0,'ACTIVIDAD TEATRAL, MUSICAL Y ARTISTICA',0,297,1971,0,0,0),('6170','COP','2017',NULL,'617035',0,'GRABACION Y PRODUCCION DE DISCOS',0,297,1972,0,0,0),('6170','COP','2017',NULL,'617040',0,'ENTRETENIMIENTO Y ESPARCIMIENTO',0,297,1973,0,0,0),('6170','COP','2017',NULL,'617045',0,'AGENCIAS DE NOTICIAS',0,297,1974,0,0,0),('6170','COP','2017',NULL,'617050',0,'LAVANDERIAS Y SIMILARES',0,297,1975,0,0,0),('6170','COP','2017',NULL,'617055',0,'PELUQUERIAS Y SIMILARES',0,297,1976,0,0,0),('6170','COP','2017',NULL,'617060',0,'SERVICIOS FUNERARIOS',0,297,1977,0,0,0),('6170','COP','2017',NULL,'617065',0,'ZONAS FRANCAS',0,297,1978,0,0,0),('6170','COP','2017',NULL,'617095',0,'ACTIVIDADES CONEXAS',0,297,1979,0,0,0),('6170','COP','2017',NULL,'617099',0,'AJUSTES POR INFLACION',0,297,1980,0,0,0),('6205','COP','2017',NULL,'620599',0,'AJUSTES POR INFLACION',0,298,1981,0,0,0),('6210','COP','2017',NULL,'621099',0,'AJUSTES POR INFLACION',0,299,1982,0,0,0),('6215','COP','2017',NULL,'621599',0,'AJUSTES POR INFLACION',0,300,1983,0,0,0),('6220','COP','2017',NULL,'622001',0,'a 622098',0,301,1984,0,0,0),('6220','COP','2017',NULL,'622099',0,'AJUSTES POR INFLACION',0,301,1985,0,0,0),('6225','COP','2017',NULL,'622599',0,'AJUSTES POR INFLACION',0,302,1986,0,0,0),('8105','COP','2017',NULL,'810505',0,'VALORES MOBILIARIOS',0,303,1987,0,0,0),('8105','COP','2017',NULL,'810510',0,'BIENES MUEBLES',0,303,1988,0,0,0),('8105','COP','2017',NULL,'810599',0,'AJUSTES POR INFLACION',0,303,1989,0,0,0),('8110','COP','2017',NULL,'811005',0,'VALORES MOBILIARIOS',0,304,1990,0,0,0),('8110','COP','2017',NULL,'811010',0,'BIENES MUEBLES',0,304,1991,0,0,0),('8110','COP','2017',NULL,'811015',0,'BIENES INMUEBLES',0,304,1992,0,0,0),('8110','COP','2017',NULL,'811020',0,'CONTRATOS DE GANADO EN PARTICIPACION',0,304,1993,0,0,0),('8110','COP','2017',NULL,'811099',0,'AJUSTES POR INFLACION',0,304,1994,0,0,0),('8115','COP','2017',NULL,'811505',0,'EN ARRENDAMIENTO',0,305,1995,0,0,0),('8115','COP','2017',NULL,'811510',0,'EN PRESTAMO',0,305,1996,0,0,0),('8115','COP','2017',NULL,'811515',0,'EN DEPOSITO',0,305,1997,0,0,0),('8115','COP','2017',NULL,'811520',0,'EN CONSIGNACION',0,305,1998,0,0,0),('8115','COP','2017',NULL,'811599',0,'AJUSTES POR INFLACION',0,305,1999,0,0,0),('8120','COP','2017',NULL,'812005',0,'EJECUTIVOS',0,306,2000,0,0,0),('8120','COP','2017',NULL,'812010',0,'INCUMPLIMIENTO DE CONTRATOS',0,306,2001,0,0,0),('8195','COP','2017',NULL,'819505',0,'VALORES ADQUIRIDOS POR RECIBIR',0,308,2002,0,0,0),('8195','COP','2017',NULL,'819595',0,'OTRAS',0,308,2003,0,0,0),('8195','COP','2017',NULL,'819599',0,'AJUSTES POR INFLACION.',0,308,2004,0,0,0),('8305','COP','2017',NULL,'830505',0,'BIENES MUEBLES',0,309,2005,0,0,0),('8305','COP','2017',NULL,'830510',0,'BIENES INMUEBLES',0,309,2006,0,0,0),('8305','COP','2017',NULL,'830599',0,'AJUSTES POR INFLACION',0,309,2007,0,0,0),('8310','COP','2017',NULL,'831005',0,'ACCIONES',0,310,2008,0,0,0),('8310','COP','2017',NULL,'831010',0,'BONOS',0,310,2009,0,0,0),('8310','COP','2017',NULL,'831095',0,'OTROS',0,310,2010,0,0,0),('8315','COP','2017',NULL,'831506',0,'MATERIALES PROYECTOS PETROLEROS',0,311,2011,0,0,0),('8315','COP','2017',NULL,'831516',0,'CONSTRUCCIONES Y EDIFICACIONES',0,311,2012,0,0,0),('8315','COP','2017',NULL,'831520',0,'MAQUINARIA Y EQUIPO',0,311,2013,0,0,0),('8315','COP','2017',NULL,'831524',0,'EQUIPO DE OFICINA',0,311,2014,0,0,0),('8315','COP','2017',NULL,'831528',0,'EQUIPO DE COMPUTACION Y COMUNICACION',0,311,2015,0,0,0),('8315','COP','2017',NULL,'831532',0,'EQUIPO MEDICO - CIENTIFICO',0,311,2016,0,0,0),('8315','COP','2017',NULL,'831536',0,'EQUIPO DE HOTELES Y RESTAURANTES',0,311,2017,0,0,0),('8315','COP','2017',NULL,'831540',0,'FLOTA Y EQUIPO DE TRANSPORTE',0,311,2018,0,0,0),('8315','COP','2017',NULL,'831544',0,'FLOTA Y EQUIPO FLUVIAL Y/O MARITIMO',0,311,2019,0,0,0),('8315','COP','2017',NULL,'831548',0,'FLOTA Y EQUIPO AEREO',0,311,2020,0,0,0),('8315','COP','2017',NULL,'831552',0,'FLOTA Y EQUIPO FERREO',0,311,2021,0,0,0),('8315','COP','2017',NULL,'831556',0,'ACUEDUCTOS, PLANTAS Y REDES',0,311,2022,0,0,0),('8315','COP','2017',NULL,'831560',0,'ARMAMENTO DE VIGILANCIA',0,311,2023,0,0,0),('8315','COP','2017',NULL,'831562',0,'ENVASES Y EMPAQUES',0,311,2024,0,0,0),('8315','COP','2017',NULL,'831564',0,'PLANTACIONES AGRICOLAS Y FORESTALES',0,311,2025,0,0,0),('8315','COP','2017',NULL,'831568',0,'VIAS DE COMUNICACION',0,311,2026,0,0,0),('8315','COP','2017',NULL,'831572',0,'MINAS Y CANTERAS',0,311,2027,0,0,0),('8315','COP','2017',NULL,'831576',0,'POZOS ARTESIANOS',0,311,2028,0,0,0),('8315','COP','2017',NULL,'831580',0,'YACIMIENTOS',0,311,2029,0,0,0),('8315','COP','2017',NULL,'831584',0,'SEMOVIENTES',0,311,2030,0,0,0),('8315','COP','2017',NULL,'831599',0,'AJUSTES POR INFLACION',0,311,2031,0,0,0),('8320','COP','2017',NULL,'832005',0,'PAIS',0,312,2032,0,0,0),('8320','COP','2017',NULL,'832010',0,'EXTERIOR',0,312,2033,0,0,0),('8325','COP','2017',NULL,'832505',0,'INVERSIONES',0,313,2034,0,0,0),('8325','COP','2017',NULL,'832510',0,'DEUDORES',0,313,2035,0,0,0),('8325','COP','2017',NULL,'832595',0,'OTROS ACTIVOS',0,313,2036,0,0,0),('8330','COP','2017',NULL,'833005',0,'BONOS',0,314,2037,0,0,0),('8330','COP','2017',NULL,'833095',0,'OTROS',0,314,2038,0,0,0),('8395','COP','2017',NULL,'839505',0,'CHEQUES POSTFECHADOS',0,316,2039,0,0,0),('8395','COP','2017',NULL,'839510',0,'CERTIFICADOS DE DEPOSITO A TERMINO',0,316,2040,0,0,0),('8395','COP','2017',NULL,'839515',0,'CHEQUES DEVUELTOS',0,316,2041,0,0,0),('8395','COP','2017',NULL,'839520',0,'BIENES Y VALORES EN FIDEICOMISO',0,316,2042,0,0,0),('8395','COP','2017',NULL,'839525',0,'INTERESES SOBRE DEUDAS VENCIDAS',0,316,2043,0,0,0),('8395','COP','2017',NULL,'839595',0,'DIVERSAS',0,316,2044,0,0,0),('8395','COP','2017',NULL,'839599',0,'AJUSTES POR INFLACION',0,316,2045,0,0,0),('8399','COP','2017',NULL,'839905',0,'INVERSIONES',0,317,2046,0,0,0),('8399','COP','2017',NULL,'839910',0,'INVENTARIOS',0,317,2047,0,0,0),('8399','COP','2017',NULL,'839915',0,'PROPIEDADES PLANTA Y EQUIPO',0,317,2048,0,0,0),('8399','COP','2017',NULL,'839920',0,'INTANGIBLES',0,317,2049,0,0,0),('8399','COP','2017',NULL,'839925',0,'CARGOS DIFERIDOS',0,317,2050,0,0,0),('8399','COP','2017',NULL,'839995',0,'OTROS ACTIVOS',0,317,2051,0,0,0),('9105','COP','2017',NULL,'910505',0,'VALORES MOBILIARIOS',0,318,2052,0,0,0),('9105','COP','2017',NULL,'910510',0,'BIENES MUEBLES',0,318,2053,0,0,0),('9105','COP','2017',NULL,'910599',0,'AJUSTES POR INFLACION',0,318,2054,0,0,0),('9110','COP','2017',NULL,'911005',0,'VALORES MOBILIARIOS',0,319,2055,0,0,0),('9110','COP','2017',NULL,'911010',0,'BIENES MUEBLES',0,319,2056,0,0,0),('9110','COP','2017',NULL,'911015',0,'BIENES INMUEBLES',0,319,2057,0,0,0),('9110','COP','2017',NULL,'911020',0,'CONTRATOS DE GANADO EN PARTICIPACION',0,319,2058,0,0,0),('9110','COP','2017',NULL,'911099',0,'AJUSTES POR INFLACION',0,319,2059,0,0,0),('9115','COP','2017',NULL,'911505',0,'EN ARRENDAMIENTO',0,320,2060,0,0,0),('9115','COP','2017',NULL,'911510',0,'EN PRESTAMO',0,320,2061,0,0,0),('9115','COP','2017',NULL,'911515',0,'EN DEPOSITO',0,320,2062,0,0,0),('9115','COP','2017',NULL,'911520',0,'EN CONSIGNACION',0,320,2063,0,0,0),('9115','COP','2017',NULL,'911525',0,'EN COMODATO',0,320,2064,0,0,0),('9115','COP','2017',NULL,'911599',0,'AJUSTES POR INFLACION',0,320,2065,0,0,0),('9120','COP','2017',NULL,'912005',0,'LABORALES',0,321,2066,0,0,0),('9120','COP','2017',NULL,'912010',0,'CIVILES',0,321,2067,0,0,0),('9120','COP','2017',NULL,'912015',0,'ADMINISTRATIVOS O ARBITRALES',0,321,2068,0,0,0),('9120','COP','2017',NULL,'912020',0,'TRIBUTARIOS',0,321,2069,0,0,0),('9305','COP','2017',NULL,'930505',0,'BIENES MUEBLES',0,326,2070,0,0,0),('9305','COP','2017',NULL,'930510',0,'BIENES INMUEBLES',0,326,2071,0,0,0),('9395','COP','2017',NULL,'939505',0,'DOCUMENTOS POR COBRAR DESCONTADOS',0,327,2072,0,0,0),('9395','COP','2017',NULL,'939510',0,'CONVENIOS DE PAGO',0,327,2073,0,0,0),('9395','COP','2017',NULL,'939515',0,'CONTRATOS DE CONSTRUCCIONES E INSTALACIONES POR EJECUTAR',0,327,2074,0,0,0),('9395','COP','2017',NULL,'939520',0,'PEDIDOS COLOCADOS',0,327,2075,0,0,0),('9395','COP','2017',NULL,'939525',0,'ADJUDICACIONES PENDIENTES DE LEGALIZAR',0,327,2076,0,0,0),('9395','COP','2017',NULL,'939530',0,'RESERVA ARTICULO 3o. LEY 4/80',0,327,2077,0,0,0),('9395','COP','2017',NULL,'939535',0,'RESERVA COSTO REPOSICION SEMOVIENTES',0,327,2078,0,0,0),('9395','COP','2017',NULL,'939599',0,'AJUSTES POR INFLACION',0,327,2079,0,0,0),('9399','COP','2017',NULL,'939905',0,'CAPITAL SOCIAL',0,328,2080,0,0,0),('9399','COP','2017',NULL,'939910',0,'SUPERAVIT DE CAPITAL',0,328,2081,0,0,0),('9399','COP','2017',NULL,'939915',0,'RESERVAS',0,328,2082,0,0,0),('9399','COP','2017',NULL,'939925',0,'DIVIDENDOS O PARTICIPACIONES DECRETADAS EN ACCIONES, CUOTAS O PARTES DE INTERES SOCIAL',0,328,2083,0,0,0),('9399','COP','2017',NULL,'939930',0,'RESULTADOS DE EJERCICIOS ANTERIORES',0,328,2084,0,0,0),('2205','COP','2017',NULL,'220501',0,'andres',0,115,2085,0,0,0),('1305','COP','2017',NULL,'130501',0,'pedro',0,20,2086,0,0,0),('2205','COP','2017',NULL,'220502',0,'CENCO EXPRES',0,115,2087,0,0,0),('2335','COP','2017',NULL,'233503',0,'HAIFA CUDRIZ VARELA',0,125,2088,0,0,0),('2205','COP','2017',NULL,'220504',0,'MEMBRESIA',0,115,2089,0,0,0),('1305','COP','2017',NULL,'130502',0,'NINFA SIERRA DORIA',0,20,2090,0,0,0),('1305','COP','2017',NULL,'130503',0,'NEVER ENRIQUE LOZAN0 SUAREZ',0,20,2091,0,0,0),('1305','COP','2017',NULL,'130504',0,'ALEYDA OSPINA MARTINEZ',0,20,2092,0,0,0),('1305','COP','2017',NULL,'130506',0,'RICHARD EMERSON BAUTISTA',0,20,2093,0,0,0),('1305','COP','2017',NULL,'130507',0,'TATIANA RAQUEL HERNANDEZ',0,20,2094,0,0,0),('1305','COP','2017',NULL,'130508',0,'MIGDONIA RINCON BETANCOURT',0,20,2095,0,0,0),('1305','COP','2017',NULL,'130509',0,'LUZ ESTELLA BERNAL ROBAYO',0,20,2096,0,0,0),('1305','COP','2017',NULL,'130511',0,'HENRY MORA HILARION',0,20,2097,0,0,0),('1305','COP','2017',NULL,'130512',0,'CESAR  TULIO   ESTRADA  MORENO',0,20,2098,0,0,0),('1305','COP','2017',NULL,'130513',0,'LEIDY CAROLINA RIOS',0,20,2099,0,0,0),('1305','COP','2017',NULL,'130514',0,'ALEYDA OSPINA MARTINEZ',0,20,2100,0,0,0),('1305','COP','2017',NULL,'1320',0,'ZORAYDA ROMERO RODRIGUEZ',0,20,2101,0,0,0);
/*!40000 ALTER TABLE `co_subcuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_subcuentascli`
--

DROP TABLE IF EXISTS `co_subcuentascli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_subcuentascli` (
  `codcliente` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codsubcuenta` varchar(15) COLLATE utf8_bin NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsubcuenta` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ca_co_subcuentascli_ejercicios` (`codejercicio`),
  KEY `ca_co_subcuentascli_clientes` (`codcliente`),
  KEY `ca_co_subcuentascli_subcuentas` (`idsubcuenta`),
  CONSTRAINT `ca_co_subcuentascli_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ca_co_subcuentascli_clientes` FOREIGN KEY (`codcliente`) REFERENCES `clientes` (`codcliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ca_co_subcuentascli_subcuentas` FOREIGN KEY (`idsubcuenta`) REFERENCES `co_subcuentas` (`idsubcuenta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_subcuentascli`
--

LOCK TABLES `co_subcuentascli` WRITE;
/*!40000 ALTER TABLE `co_subcuentascli` DISABLE KEYS */;
INSERT INTO `co_subcuentascli` VALUES ('000001','2017','130501',1,2086),('000002','2017','130502',2,2090),('000003','2017','130503',3,2091),('000005','2017','130505',5,124),('000006','2017','130506',6,2093),('000007','2017','130507',7,2094),('000008','2017','130508',8,2095),('000009','2017','130509',9,2096),('000010','2017','130510',10,125),('000011','2017','130511',11,2097),('000012','2017','130512',12,2098),('000013','2017','130513',13,2099),('000014','2017','130514',14,2100),('000015','2017','1320',15,2101);
/*!40000 ALTER TABLE `co_subcuentascli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co_subcuentasprov`
--

DROP TABLE IF EXISTS `co_subcuentasprov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co_subcuentasprov` (
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codproveedor` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuenta` varchar(15) COLLATE utf8_bin NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsubcuenta` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ca_co_subcuentasprov_ejercicios` (`codejercicio`),
  KEY `ca_co_subcuentasprov_proveedores` (`codproveedor`),
  KEY `ca_co_subcuentasprov_subcuentas` (`idsubcuenta`),
  CONSTRAINT `ca_co_subcuentasprov_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ca_co_subcuentasprov_proveedores` FOREIGN KEY (`codproveedor`) REFERENCES `proveedores` (`codproveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ca_co_subcuentasprov_subcuentas` FOREIGN KEY (`idsubcuenta`) REFERENCES `co_subcuentas` (`idsubcuenta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co_subcuentasprov`
--

LOCK TABLES `co_subcuentasprov` WRITE;
/*!40000 ALTER TABLE `co_subcuentasprov` DISABLE KEYS */;
INSERT INTO `co_subcuentasprov` VALUES ('2017','000001','220501',1,2085),('2017','000002','220502',2,2087),('2017','000003','233503',3,2088),('2017','000004','220504',4,2089);
/*!40000 ALTER TABLE `co_subcuentasprov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colombia_certificados`
--

DROP TABLE IF EXISTS `colombia_certificados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colombia_certificados` (
  `idcertificado` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(50) COLLATE utf8_bin NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `contador_inicial` bigint(20) NOT NULL,
  `contador_final` bigint(20) NOT NULL,
  PRIMARY KEY (`idcertificado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colombia_certificados`
--

LOCK TABLES `colombia_certificados` WRITE;
/*!40000 ALTER TABLE `colombia_certificados` DISABLE KEYS */;
/*!40000 ALTER TABLE `colombia_certificados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentasbanco`
--

DROP TABLE IF EXISTS `cuentasbanco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentasbanco` (
  `codsubcuenta` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `iban` varchar(34) COLLATE utf8_bin DEFAULT NULL,
  `codcuenta` varchar(6) COLLATE utf8_bin NOT NULL,
  `swift` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`codcuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentasbanco`
--

LOCK TABLES `cuentasbanco` WRITE;
/*!40000 ALTER TABLE `cuentasbanco` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuentasbanco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentasbcocli`
--

DROP TABLE IF EXISTS `cuentasbcocli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentasbcocli` (
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `swift` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `ctaentidad` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `iban` varchar(34) COLLATE utf8_bin DEFAULT NULL,
  `agencia` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `entidad` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codcliente` varchar(6) COLLATE utf8_bin NOT NULL,
  `ctaagencia` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codcuenta` varchar(6) COLLATE utf8_bin NOT NULL,
  `cuenta` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `principal` tinyint(1) DEFAULT NULL,
  `fmandato` date DEFAULT NULL,
  PRIMARY KEY (`codcuenta`),
  KEY `ca_cuentasbcocli_clientes` (`codcliente`),
  CONSTRAINT `ca_cuentasbcocli_clientes` FOREIGN KEY (`codcliente`) REFERENCES `clientes` (`codcliente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentasbcocli`
--

LOCK TABLES `cuentasbcocli` WRITE;
/*!40000 ALTER TABLE `cuentasbcocli` DISABLE KEYS */;
INSERT INTO `cuentasbcocli` VALUES ('DAVIVIENDA','AHORROS',NULL,'081192447773',NULL,NULL,'000005',NULL,'1',NULL,1,'2017-03-08'),('BANCOLOMBIA','AHORROS',NULL,'5095446637',NULL,NULL,'000002',NULL,'10',NULL,1,'2017-05-03'),('DAVIVIENDA','AHORROS',NULL,'56470037724',NULL,NULL,'000006',NULL,'2',NULL,1,'2017-03-15'),('HELM','AHORROS',NULL,'502-00487-7',NULL,NULL,'000007',NULL,'3',NULL,1,'2017-03-22'),('CAJA SOCIAL','AHORROS',NULL,'24053856140 ',NULL,NULL,'000009',NULL,'4',NULL,1,'2017-03-29'),('DAVIVIENDA','AHORROS',NULL,'056470111990',NULL,NULL,'000010',NULL,'5',NULL,1,NULL),('banco  caja  social','ahorros',NULL,'24064221016',NULL,NULL,'000011',NULL,'7',NULL,1,'2017-04-05'),('banco','ahorros',NULL,'78732777627',NULL,NULL,'000012',NULL,'8',NULL,1,'2017-04-05'),('DAVIVIENDA','DAVIPLATA',NULL,'3175810382',NULL,NULL,'000014',NULL,'9',NULL,1,'2017-03-29');
/*!40000 ALTER TABLE `cuentasbcocli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentasbcopro`
--

DROP TABLE IF EXISTS `cuentasbcopro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuentasbcopro` (
  `agencia` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codcuenta` varchar(6) COLLATE utf8_bin NOT NULL,
  `codproveedor` varchar(6) COLLATE utf8_bin NOT NULL,
  `ctaagencia` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `ctaentidad` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `cuenta` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `entidad` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `iban` varchar(34) COLLATE utf8_bin DEFAULT NULL,
  `swift` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `principal` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`codcuenta`),
  KEY `ca_cuentasbcopro_proveedores` (`codproveedor`),
  CONSTRAINT `ca_cuentasbcopro_proveedores` FOREIGN KEY (`codproveedor`) REFERENCES `proveedores` (`codproveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentasbcopro`
--

LOCK TABLES `cuentasbcopro` WRITE;
/*!40000 ALTER TABLE `cuentasbcopro` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuentasbcopro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dirclientes`
--

DROP TABLE IF EXISTS `dirclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dirclientes` (
  `codcliente` varchar(6) COLLATE utf8_bin NOT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `apartado` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `provincia` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ciudad` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_bin NOT NULL,
  `domenvio` tinyint(1) DEFAULT NULL,
  `domfacturacion` tinyint(1) DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ca_dirclientes_clientes` (`codcliente`),
  CONSTRAINT `ca_dirclientes_clientes` FOREIGN KEY (`codcliente`) REFERENCES `clientes` (`codcliente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dirclientes`
--

LOCK TABLES `dirclientes` WRITE;
/*!40000 ALTER TABLE `dirclientes` DISABLE KEYS */;
INSERT INTO `dirclientes` VALUES ('000001','COL','',NULL,'Bolivar','Cartagena','','',1,1,'Principal',1,'2017-02-13'),('000002','COL','',NULL,'TURBACO','CARTAGENA','57','URB EL VALLE CALLE 21 # 33-57',1,1,'Principal',2,'2017-02-20'),('000003','COL','',NULL,'Bolivar','Cartagena','57','DIAGONAL 26 MANZ 28 LOTE 6',1,1,'Principal',3,'2017-02-23'),('000005','COL','',NULL,'Bolivar','Cartagena','57','ATLANTIC CONDOMINIO CLUB',1,1,'Principal',5,'2017-03-26'),('000006','COL','',NULL,'Bolivar','Cartagena','57','URB  PORTAL DEL EDEN',1,1,'Principal',6,'2017-03-26'),('000007','COL','',NULL,'Bolivar','Cartagena','57','URB PORTAL DEL EDEN',1,1,'Principal',7,'2017-03-26'),('000008','COL','',NULL,'Bolivar','Cartagena','57','BARRIO LA SULTANA M H  C 17',1,1,'Principal',8,'2017-03-26'),('000009','COL','',NULL,'BOGOTA','BOGOTA','57','CRA 93 N° 21/15',1,1,'Principal',9,'2017-04-03'),('000010','COL','',NULL,'Bolivar','Cartagena','57','M 76a TORRE 28 APTO 404 BICENTENARIO',1,1,'Principal',10,'2017-04-03'),('000011','COL','',NULL,'Cundinamarca','FUSAGASUGA','57','CRA 71 B 19-14',1,1,'Principal',11,'2017-04-05'),('000012','COL','',NULL,'Bolivar','Cartagena','57','CIUDAD  BICENTENARIO',1,1,'Principal',12,'2017-04-05'),('000013','COL','',NULL,'Bolivar','Cartagena','','',1,1,'Principal',13,'2017-04-05'),('000014','COL','',NULL,'Casanare','YOPAL','57','CALLE 19 19-33',1,1,'Principal',14,'2017-04-06'),('000015','COL','',NULL,'GIRARDOT','CUNDINAMARCA','57','CALLE 27 7A 13',1,1,'Principal',15,'2017-04-06');
/*!40000 ALTER TABLE `dirclientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dirproveedores`
--

DROP TABLE IF EXISTS `dirproveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dirproveedores` (
  `codproveedor` varchar(6) COLLATE utf8_bin NOT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `apartado` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `provincia` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ciudad` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_bin NOT NULL,
  `direccionppal` tinyint(1) DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ca_dirproveedores_proveedores` (`codproveedor`),
  CONSTRAINT `ca_dirproveedores_proveedores` FOREIGN KEY (`codproveedor`) REFERENCES `proveedores` (`codproveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dirproveedores`
--

LOCK TABLES `dirproveedores` WRITE;
/*!40000 ALTER TABLE `dirproveedores` DISABLE KEYS */;
INSERT INTO `dirproveedores` VALUES ('000001','COL','',NULL,'','','','',1,'Principal',1,'2017-02-13'),('000003','COL','',NULL,'','CARTAGENA','57','',1,'Principal',2,'2017-02-13'),('000004','COL','LOCAL 17',NULL,'Bolívar','CARTAGENA','57','PLAZA COLON',1,'Principal',3,'2017-02-17');
/*!40000 ALTER TABLE `dirproveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `divisas`
--

DROP TABLE IF EXISTS `divisas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `divisas` (
  `bandera` text COLLATE utf8_bin,
  `coddivisa` varchar(3) COLLATE utf8_bin NOT NULL,
  `codiso` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `simbolo` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `tasaconv` double NOT NULL,
  `tasaconv_compra` double DEFAULT NULL,
  PRIMARY KEY (`coddivisa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `divisas`
--

LOCK TABLES `divisas` WRITE;
/*!40000 ALTER TABLE `divisas` DISABLE KEYS */;
INSERT INTO `divisas` VALUES (NULL,'ARS','32','PESOS (ARG)',NULL,'AR$',16.684,16.684),(NULL,'CLP','152','PESOS (CLP)',NULL,'CLP$',704.0227,704.0227),(NULL,'COP','170','PESOS (COP)',NULL,'CO$',3140.6803,3140.6803),(NULL,'DOP','214','PESOS DOMINICANOS',NULL,'RD$',49.7618,49.7618),(NULL,'EUR','978','EUROS',NULL,'€',1,1),(NULL,'GBP','826','LIBRAS ESTERLINAS',NULL,'£',0.865,0.865),(NULL,'HTG','322','GOURDES',NULL,'G',72.0869,72.0869),(NULL,'MXN','484','PESOS (MXN)',NULL,'MX$',23.3678,23.3678),(NULL,'PAB','590','BALBOAS',NULL,'B',1.128,1.128),(NULL,'PEN','604','NUEVOS SOLES',NULL,'S/.',3.736,3.736),(NULL,'USD','840','DÓLARES EE.UU.',NULL,'$',1.129,1.129),(NULL,'VEF','937','BOLÍVARES',NULL,'Bs',10.6492,10.6492);
/*!40000 ALTER TABLE `divisas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentosfac`
--

DROP TABLE IF EXISTS `documentosfac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentosfac` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ruta` varchar(300) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(250) COLLATE utf8_bin NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT '00:00:00',
  `tamano` int(11) DEFAULT NULL,
  `usuario` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `idfactura` int(11) DEFAULT NULL,
  `idalbaran` int(11) DEFAULT NULL,
  `idpedido` int(11) DEFAULT NULL,
  `idpresupuesto` int(11) DEFAULT NULL,
  `idservicio` int(11) DEFAULT NULL,
  `idfacturaprov` int(11) DEFAULT NULL,
  `idalbaranprov` int(11) DEFAULT NULL,
  `idpedidoprov` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentosfac`
--

LOCK TABLES `documentosfac` WRITE;
/*!40000 ALTER TABLE `documentosfac` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentosfac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ejercicios`
--

DROP TABLE IF EXISTS `ejercicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ejercicios` (
  `idasientocierre` int(11) DEFAULT NULL,
  `idasientopyg` int(11) DEFAULT NULL,
  `idasientoapertura` int(11) DEFAULT NULL,
  `plancontable` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `longsubcuenta` int(11) DEFAULT NULL,
  `estado` varchar(15) COLLATE utf8_bin NOT NULL,
  `fechafin` date NOT NULL,
  `fechainicio` date NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`codejercicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejercicios`
--

LOCK TABLES `ejercicios` WRITE;
/*!40000 ALTER TABLE `ejercicios` DISABLE KEYS */;
INSERT INTO `ejercicios` VALUES (NULL,NULL,NULL,'08',2,'ABIERTO','2017-04-26','2017-03-29','2017','2017');
/*!40000 ALTER TABLE `ejercicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `administrador` varchar(100) COLLATE utf8_bin NOT NULL,
  `apartado` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `cifnif` varchar(20) COLLATE utf8_bin NOT NULL,
  `ciudad` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codcuentarem` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `codedi` varchar(17) COLLATE utf8_bin DEFAULT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codpago` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `contintegrada` tinyint(1) DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `horario` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idprovincia` int(11) DEFAULT NULL,
  `xid` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `lema` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `logo` text COLLATE utf8_bin,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `nombrecorto` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `pie_factura` text COLLATE utf8_bin,
  `provincia` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `recequivalencia` tinyint(1) DEFAULT NULL,
  `stockpedidos` tinyint(1) DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `web` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `inicioact` date DEFAULT NULL,
  `regimeniva` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES ('Administrador','12345','901053602-1','Cartagena','ALG',NULL,'COP',NULL,'2017','TRANS','COL','111101','A',1,'CC Plaza Local 17','','','',1,NULL,'BjNz5b2mPQRVJshLkaneYucDI6ZHO9','',NULL,'Servicio Trabajo en Equipo','STE','','Bolivar',0,0,'3165029100','http://stequipo.com/','1970-01-01',NULL);
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricantes`
--

DROP TABLE IF EXISTS `fabricantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fabricantes` (
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `codfabricante` varchar(8) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`codfabricante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricantes`
--

LOCK TABLES `fabricantes` WRITE;
/*!40000 ALTER TABLE `fabricantes` DISABLE KEYS */;
INSERT INTO `fabricantes` VALUES ('OEM','OEM');
/*!40000 ALTER TABLE `fabricantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturascli`
--

DROP TABLE IF EXISTS `facturascli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturascli` (
  `apartado` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `automatica` tinyint(1) DEFAULT NULL,
  `cifnif` varchar(20) COLLATE utf8_bin NOT NULL,
  `ciudad` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codagente` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codcliente` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `coddir` int(11) DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codigo` varchar(20) COLLATE utf8_bin NOT NULL,
  `codigorect` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpago` varchar(10) COLLATE utf8_bin NOT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `deabono` tinyint(1) DEFAULT '0',
  `direccion` varchar(100) COLLATE utf8_bin NOT NULL,
  `editable` tinyint(1) DEFAULT '0',
  `fecha` date NOT NULL,
  `vencimiento` date DEFAULT NULL,
  `femail` date DEFAULT NULL,
  `hora` time NOT NULL DEFAULT '00:00:00',
  `idasiento` int(11) DEFAULT NULL,
  `idasientop` int(11) DEFAULT NULL,
  `idfactura` int(11) NOT NULL AUTO_INCREMENT,
  `idfacturarect` int(11) DEFAULT NULL,
  `idpagodevol` int(11) DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `irpf` double NOT NULL,
  `neto` double NOT NULL,
  `nogenerarasiento` tinyint(1) DEFAULT NULL,
  `nombrecliente` varchar(100) COLLATE utf8_bin NOT NULL,
  `numero` varchar(12) COLLATE utf8_bin NOT NULL,
  `numero2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `observaciones` text COLLATE utf8_bin,
  `pagada` tinyint(1) NOT NULL DEFAULT '0',
  `anulada` tinyint(1) NOT NULL DEFAULT '0',
  `porcomision` double DEFAULT NULL,
  `provincia` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `recfinanciero` double DEFAULT NULL,
  `tasaconv` double NOT NULL,
  `total` double NOT NULL,
  `totaleuros` double NOT NULL,
  `totalirpf` double NOT NULL,
  `totaliva` double NOT NULL,
  `totalrecargo` double DEFAULT NULL,
  `tpv` tinyint(1) DEFAULT NULL,
  `codtrans` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `codigoenv` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `nombreenv` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `apellidosenv` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `direccionenv` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codpostalenv` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `ciudadenv` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `provinciaenv` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `apartadoenv` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codpaisenv` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `idimprenta` int(11) DEFAULT NULL,
  `numdocs` int(11) DEFAULT '0',
  PRIMARY KEY (`idfactura`),
  UNIQUE KEY `uniq_codigo_facturascli` (`codigo`),
  KEY `ca_facturascli_series2` (`codserie`),
  KEY `ca_facturascli_ejercicios2` (`codejercicio`),
  KEY `ca_facturascli_asiento2` (`idasiento`),
  KEY `ca_facturascli_asientop` (`idasientop`),
  CONSTRAINT `ca_facturascli_series2` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE,
  CONSTRAINT `ca_facturascli_ejercicios2` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE,
  CONSTRAINT `ca_facturascli_asiento2` FOREIGN KEY (`idasiento`) REFERENCES `co_asientos` (`idasiento`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ca_facturascli_asientop` FOREIGN KEY (`idasientop`) REFERENCES `co_asientos` (`idasiento`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturascli`
--

LOCK TABLES `facturascli` WRITE;
/*!40000 ALTER TABLE `facturascli` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturascli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturasprov`
--

DROP TABLE IF EXISTS `facturasprov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturasprov` (
  `automatica` tinyint(1) DEFAULT NULL,
  `cifnif` varchar(20) COLLATE utf8_bin NOT NULL,
  `codagente` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codigo` varchar(20) COLLATE utf8_bin NOT NULL,
  `codigorect` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpago` varchar(10) COLLATE utf8_bin NOT NULL,
  `codproveedor` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `deabono` tinyint(1) DEFAULT '0',
  `editable` tinyint(1) DEFAULT '0',
  `fecha` date NOT NULL,
  `hora` time NOT NULL DEFAULT '00:00:00',
  `idasiento` int(11) DEFAULT NULL,
  `idasientop` int(11) DEFAULT NULL,
  `idfactura` int(11) NOT NULL AUTO_INCREMENT,
  `idfacturarect` int(11) DEFAULT NULL,
  `idpagodevol` int(11) DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `neto` double DEFAULT NULL,
  `nogenerarasiento` tinyint(1) DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `numero` varchar(12) COLLATE utf8_bin NOT NULL,
  `numproveedor` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `observaciones` text COLLATE utf8_bin,
  `pagada` tinyint(1) NOT NULL DEFAULT '0',
  `anulada` tinyint(1) NOT NULL DEFAULT '0',
  `recfinanciero` double DEFAULT NULL,
  `tasaconv` double NOT NULL,
  `total` double DEFAULT NULL,
  `totaleuros` double DEFAULT NULL,
  `totalirpf` double DEFAULT NULL,
  `totaliva` double DEFAULT NULL,
  `totalrecargo` double DEFAULT NULL,
  `numdocs` int(11) DEFAULT '0',
  PRIMARY KEY (`idfactura`),
  UNIQUE KEY `uniq_codigo_facturasprov` (`codigo`),
  KEY `ca_facturasprov_series2` (`codserie`),
  KEY `ca_facturasprov_ejercicios2` (`codejercicio`),
  KEY `ca_facturasprov_asiento2` (`idasiento`),
  KEY `ca_facturasprov_asientop` (`idasientop`),
  CONSTRAINT `ca_facturasprov_series2` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE,
  CONSTRAINT `ca_facturasprov_ejercicios2` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE,
  CONSTRAINT `ca_facturasprov_asiento2` FOREIGN KEY (`idasiento`) REFERENCES `co_asientos` (`idasiento`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `ca_facturasprov_asientop` FOREIGN KEY (`idasientop`) REFERENCES `co_asientos` (`idasiento`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturasprov`
--

LOCK TABLES `facturasprov` WRITE;
/*!40000 ALTER TABLE `facturasprov` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturasprov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familias`
--

DROP TABLE IF EXISTS `familias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `familias` (
  `descripcion` varchar(100) COLLATE utf8_bin NOT NULL,
  `codfamilia` varchar(8) COLLATE utf8_bin NOT NULL,
  `madre` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`codfamilia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familias`
--

LOCK TABLES `familias` WRITE;
/*!40000 ALTER TABLE `familias` DISABLE KEYS */;
INSERT INTO `familias` VALUES ('VARIOS','VARI',NULL);
/*!40000 ALTER TABLE `familias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formaspago`
--

DROP TABLE IF EXISTS `formaspago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formaspago` (
  `codpago` varchar(10) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `genrecibos` varchar(10) COLLATE utf8_bin NOT NULL,
  `codcuenta` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `domiciliado` tinyint(1) DEFAULT NULL,
  `imprimir` tinyint(1) DEFAULT '1',
  `vencimiento` varchar(20) COLLATE utf8_bin DEFAULT '+1month',
  PRIMARY KEY (`codpago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formaspago`
--

LOCK TABLES `formaspago` WRITE;
/*!40000 ALTER TABLE `formaspago` DISABLE KEYS */;
INSERT INTO `formaspago` VALUES ('CONT','Al contado','Pagados',NULL,0,1,'+1month'),('PAYPAL','PayPal','Pagados',NULL,0,1,'+1week'),('TARJETA','Tarjeta de crédito','Pagados',NULL,0,1,'+1week'),('TRANS','Transferencia bancaria','Emitidos',NULL,0,1,'+1month');
/*!40000 ALTER TABLE `formaspago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs_access`
--

DROP TABLE IF EXISTS `fs_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs_access` (
  `fs_user` varchar(12) COLLATE utf8_bin NOT NULL,
  `fs_page` varchar(30) COLLATE utf8_bin NOT NULL,
  `allow_delete` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`fs_user`,`fs_page`),
  KEY `fs_access_page2` (`fs_page`),
  CONSTRAINT `fs_access_user2` FOREIGN KEY (`fs_user`) REFERENCES `fs_users` (`nick`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fs_access_page2` FOREIGN KEY (`fs_page`) REFERENCES `fs_pages` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs_access`
--

LOCK TABLES `fs_access` WRITE;
/*!40000 ALTER TABLE `fs_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `fs_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs_extensions2`
--

DROP TABLE IF EXISTS `fs_extensions2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs_extensions2` (
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `page_from` varchar(30) COLLATE utf8_bin NOT NULL,
  `page_to` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `text` text COLLATE utf8_bin,
  `params` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`name`,`page_from`),
  KEY `ca_fs_extensions2_fs_pages` (`page_from`),
  CONSTRAINT `ca_fs_extensions2_fs_pages` FOREIGN KEY (`page_from`) REFERENCES `fs_pages` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs_extensions2`
--

LOCK TABLES `fs_extensions2` WRITE;
/*!40000 ALTER TABLE `fs_extensions2` DISABLE KEYS */;
INSERT INTO `fs_extensions2` VALUES ('agrupar_albaranes','compras_agrupar_albaranes','compras_albaranes','button','<span class=\"glyphicon glyphicon-duplicate\"></span><span class=\"hidden-xs\">&nbsp; Agrupar</span>',''),('agrupar_albaranes','ventas_agrupar_albaranes','ventas_albaranes','button','<span class=\"glyphicon glyphicon-duplicate\"></span><span class=\"hidden-xs\">&nbsp; Agrupar</span>',''),('albaran_detallado','albaran_detallado','ventas_albaran','pdf','<span class=\"glyphicon glyphicon-print\"></span>&nbsp; Albaran detallado',''),('albaranes_agente','compras_albaranes','admin_agente','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Remisiones de proveedor',''),('albaranes_agente','ventas_albaranes','admin_agente','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Remisiones de cliente',''),('albaranes_articulo','compras_albaranes','ventas_articulo','tab_button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Remisiones de proveedor',''),('albaranes_articulo','ventas_albaranes','ventas_articulo','tab_button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Remisiones de cliente',''),('albaranes_cliente','ventas_albaranes','ventas_cliente','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Remisiones',''),('albaranes_proveedor','compras_albaranes','compras_proveedor','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Remisiones',''),('api_remote_printer','tpv_recambios',NULL,'api','remote_printer',NULL),('articulo_subcuentas','articulo_subcuentas','ventas_articulo','tab','<span class=\"glyphicon glyphicon-book\" aria-hidden=\"true\"></span><span class=\"hidden-xs\">&nbsp; Subcuentas</span>',NULL),('articulos_pedidos_compras','articulos_pedidos','compras_pedidos','button','<span class=\"glyphicon glyphicon-tasks\" aria-hidden=\"true\"></span><span class=\"hidden-xs\">&nbsp; Artículos</span>','&compras=TRUE'),('articulos_pedidos_ventas','articulos_pedidos','ventas_pedidos','button','<span class=\"glyphicon glyphicon-tasks\" aria-hidden=\"true\"></span><span class=\"hidden-xs\">&nbsp; Artículos</span>',NULL),('btn_albaran','compras_actualiza_arts','compras_albaran','tab','<span class=\"glyphicon glyphicon-share\" aria-hidden=\"true\"></span><span class=\"hidden-xs\">&nbsp; Actualizar</span>','&doc=albaran'),('btn_atributos','ventas_atributos','ventas_articulos','button','<span class=\"glyphicon glyphicon-list-alt\" aria-hidden=\"true\"></span><span class=\"hidden-xs\"> &nbsp; Atributos</span>',NULL),('btn_balances','editar_balances','informe_contabilidad','button','<span class=\"glyphicon glyphicon-wrench\"></span><span class=\"hidden-xs\">&nbsp; Balances</a>',NULL),('btn_fabricantes','ventas_fabricantes','ventas_articulos','button','<span class=\"glyphicon glyphicon-folder-open\" aria-hidden=\"true\"></span><span class=\"hidden-xs\"> &nbsp; Fabricantes</span>',NULL),('btn_familias','ventas_familias','ventas_articulos','button','<span class=\"glyphicon glyphicon-folder-open\" aria-hidden=\"true\"></span><span class=\"hidden-xs\"> &nbsp; Familias</span>',NULL),('btn_pedido','compras_actualiza_arts','compras_pedido','tab','<span class=\"glyphicon glyphicon-share\" aria-hidden=\"true\"></span><span class=\"hidden-xs\">&nbsp; Actualizar</span>','&doc=pedido'),('copiar_albaran','megacopiador','ventas_albaran','button','<span class=\"glyphicon glyphicon-scissors\" aria-hidden=\"true\"></span><span>&nbsp; Copiar</span>','&albaran=TRUE'),('copiar_albaran','megacopiador_compras','compras_albaran','button','<span class=\"glyphicon glyphicon-scissors\" aria-hidden=\"true\"></span><span>&nbsp; Copiar</span>','&albaran=TRUE'),('copiar_articulo','megacopiador','ventas_articulo','button','<span class=\"glyphicon glyphicon-scissors\" aria-hidden=\"true\"></span><span>&nbsp; Copiar</span>','&articulo=TRUE'),('copiar_factura','megacopiador','ventas_factura','button','<span class=\"glyphicon glyphicon-scissors\" aria-hidden=\"true\"></span><span>&nbsp; Copiar</span>','&factura=TRUE'),('copiar_factura','megacopiador_compras','compras_factura','button','<span class=\"glyphicon glyphicon-scissors\" aria-hidden=\"true\"></span><span>&nbsp; Copiar</span>','&factura=TRUE'),('copiar_pedido','megacopiador','ventas_pedido','button','<span class=\"glyphicon glyphicon-scissors\" aria-hidden=\"true\"></span><span>&nbsp; Copiar</span>','&pedido=TRUE'),('copiar_pedido','megacopiador_compras','compras_pedido','button','<span class=\"glyphicon glyphicon-scissors\" aria-hidden=\"true\"></span><span>&nbsp; Copiar</span>','&pedido=TRUE'),('copiar_presu','megacopiador','ventas_presupuesto','button','<span class=\"glyphicon glyphicon-scissors\" aria-hidden=\"true\"></span><span>&nbsp; Copiar</span>','&presu=TRUE'),('copiar_servicio','megacopiador','ventas_servicio','button','<span class=\"glyphicon glyphicon-scissors\" aria-hidden=\"true\"></span><span>&nbsp; Copiar</span>','&servicio=TRUE'),('cosmo','admin_user','admin_user','css','view/css/bootstrap-cosmo.min.css',''),('darkly','admin_user','admin_user','css','view/css/bootstrap-darkly.min.css',''),('documentos_albaranescli','documentos_facturas','ventas_albaran','tab','<span class=\"glyphicon glyphicon-file\" aria-hidden=\"true\" title=\"Documentos\"></span>','&folder=albaranescli'),('documentos_albaranesprov','documentos_facturas','compras_albaran','tab','<span class=\"glyphicon glyphicon-file\" aria-hidden=\"true\" title=\"Documentos\"></span>','&folder=albaranesprov'),('documentos_facturascli','documentos_facturas','ventas_factura','tab','<span class=\"glyphicon glyphicon-file\" aria-hidden=\"true\" title=\"Documentos\"></span>','&folder=facturascli'),('documentos_facturasprov','documentos_facturas','compras_factura','tab','<span class=\"glyphicon glyphicon-file\" aria-hidden=\"true\" title=\"Documentos\"></span>','&folder=facturasprov'),('documentos_pedidoscli','documentos_facturas','ventas_pedido','tab','<span class=\"glyphicon glyphicon-file\" aria-hidden=\"true\" title=\"Documentos\"></span>','&folder=pedidoscli'),('documentos_pedidosprov','documentos_facturas','compras_pedido','tab','<span class=\"glyphicon glyphicon-file\" aria-hidden=\"true\" title=\"Documentos\"></span>','&folder=pedidosprov'),('documentos_presupuestoscli','documentos_facturas','ventas_presupuesto','tab','<span class=\"glyphicon glyphicon-file\" aria-hidden=\"true\" title=\"Documentos\"></span>','&folder=presupuestoscli'),('documentos_servicioscli','documentos_facturas','ventas_servicio','tab','<span class=\"glyphicon glyphicon-file\" aria-hidden=\"true\" title=\"Documentos\"></span>','&folder=servicioscli'),('email_albaran','ventas_imprimir','ventas_albaran','email','Albarán simple','&albaran=TRUE'),('email_albaran_proveedor','compras_imprimir','compras_albaran','email','Albarán simple','&albaran=TRUE'),('email_factura','ventas_imprimir','ventas_factura','email','Factura simple','&factura=TRUE&tipo=simple'),('email_pedido','imprimir_presu_pedi','ventas_pedido','email','Pedido simple','&pedido=TRUE'),('email_pedido_proveedor','imprimir_presu_pedi','compras_pedido','email','Pedido simple','&pedido_p=TRUE'),('email_presupuesto','imprimir_presu_pedi','ventas_presupuesto','email','Presupuesto simple','&presupuesto=TRUE'),('enviar_factura_detallada_es_ES','factura_detallada','ventas_factura','email','Factura detallada es_ES','&codidioma=es_ES'),('factura_detallada_es_ES','factura_detallada','ventas_factura','pdf','<span class=\"glyphicon glyphicon-print\"></span>&nbsp; Factura detallada es_ES','&codidioma=es_ES'),('facturas_agente','compras_facturas','admin_agente','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Facturas de proveedor',''),('facturas_agente','ventas_facturas','admin_agente','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Facturas de cliente',''),('facturas_articulo','compras_facturas','ventas_articulo','tab_button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Facturas de proveedor',''),('facturas_articulo','ventas_facturas','ventas_articulo','tab_button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Facturas de cliente',''),('facturas_cliente','ventas_facturas','ventas_cliente','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Facturas',''),('facturas_proveedor','compras_facturas','compras_proveedor','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Facturas',''),('flatly','admin_user','admin_user','css','view/css/bootstrap-flatly.min.css',''),('imprimir_albaran','ventas_imprimir','ventas_albaran','pdf','<span class=\"glyphicon glyphicon-print\"></span>&nbsp; Albarán simple','&albaran=TRUE'),('imprimir_albaran_noval','ventas_imprimir','ventas_albaran','pdf','<span class=\"glyphicon glyphicon-print\"></span>&nbsp; Albarán sin valorar','&albaran=TRUE&noval=TRUE'),('imprimir_albaran_proveedor','compras_imprimir','compras_albaran','pdf','Albarán simple','&albaran=TRUE'),('imprimir_factura','ventas_imprimir','ventas_factura','pdf','<span class=\"glyphicon glyphicon-print\"></span>&nbsp; Factura simple','&factura=TRUE&tipo=simple'),('imprimir_factura_carta','ventas_imprimir','ventas_factura','pdf','<span class=\"glyphicon glyphicon-print\"></span>&nbsp; Modelo carta','&factura=TRUE&tipo=carta'),('imprimir_factura_proveedor','compras_imprimir','compras_factura','pdf','Factura simple','&factura=TRUE'),('imprimir_pedido','imprimir_presu_pedi','ventas_pedido','pdf','<span class=\"glyphicon glyphicon-print\"></span>&nbsp; Pedido simple','&pedido=TRUE'),('imprimir_pedido_noval','imprimir_presu_pedi','ventas_pedido','pdf','<span class=\"glyphicon glyphicon-print\"></span>&nbsp; Pedido simple sin valorar','&pedido=TRUE&noval=TRUE'),('imprimir_pedido_proveedor','imprimir_presu_pedi','compras_pedido','pdf','Pedido simple','&pedido_p=TRUE'),('imprimir_presupuesto','imprimir_presu_pedi','ventas_presupuesto','pdf','<span class=\"glyphicon glyphicon-print\"></span>&nbsp; Presupuesto simple','&presupuesto=TRUE'),('lumen','admin_user','admin_user','css','view/css/bootstrap-lumen.min.css',''),('maquetar_albaran','ventas_maquetar','ventas_albaran','pdf','<i class=\"fa fa-magic\"></i>&nbsp; Maquetar','&albaran=TRUE'),('maquetar_factura','ventas_maquetar','ventas_factura','pdf','<i class=\"fa fa-magic\"></i>&nbsp; Maquetar','&factura=TRUE'),('maquetar_pedido','maquetar_presu_pedi','ventas_pedido','pdf','<i class=\"fa fa-magic\"></i>&nbsp; Maquetar','&pedido=TRUE'),('maquetar_presu','maquetar_presu_pedi','ventas_presupuesto','pdf','<i class=\"fa fa-magic\"></i>&nbsp; Maquetar','&presu=TRUE'),('megafacturar_albcli','megafacturador','ventas_albaranes','button','<i class=\"fa fa-check-square-o\" aria-hidden=\"true\"></i><span class=\"hidden-xs\">&nbsp; megafacturador</span>',NULL),('megafacturar_albpro','megafacturador','compras_albaranes','button','<i class=\"fa fa-check-square-o\" aria-hidden=\"true\"></i><span class=\"hidden-xs\">&nbsp; megafacturador</span>',NULL),('opciones_clientes','ventas_clientes_opciones','ventas_clientes','button','<span class=\"glyphicon glyphicon-wrench\" aria-hidden=\"true\" title=\"Opciones para nuevos clientes\"></span><span class=\"hidden-xs\">&nbsp; Opciones</span>',NULL),('paper','admin_user','admin_user','css','view/css/bootstrap-paper.min.css',''),('pedidos_agente','compras_pedidos','admin_agente','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Pedidos a proveedor',''),('pedidos_agente','ventas_pedidos','admin_agente','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Pedidos de cliente',''),('pedidos_articulo','compras_pedidos','ventas_articulo','tab_button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Pedidos a proveedor',''),('pedidos_articulo','ventas_pedidos','ventas_articulo','tab_button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Pedidos de cliente',''),('pedidos_cliente','ventas_pedidos','ventas_cliente','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Pedidos',''),('pedidos_proveedor','compras_pedidos','compras_proveedor','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Pedidos',''),('presupuestos_agente','ventas_presupuestos','admin_agente','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Presupuestos de cliente',''),('presupuestos_articulo','ventas_presupuestos','ventas_articulo','tab_button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Presupuestos de cliente',''),('presupuestos_cliente','ventas_presupuestos','ventas_cliente','button','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Presupuestos',''),('puc_colombia','admin_colombia','contabilidad_ejercicio','fuente','PUC Colombia','plugins/colombia/extras/colombia.xml'),('sandstone','admin_user','admin_user','css','view/css/bootstrap-sandstone.min.css',''),('simplex','admin_user','admin_user','css','view/css/bootstrap-simplex.min.css',''),('spacelab','admin_user','admin_user','css','view/css/bootstrap-spacelab.min.css',''),('tab_devoluciones','ventas_factura_devolucion','ventas_factura','tab','<span class=\"glyphicon glyphicon-share\" aria-hidden=\"true\"></span><span class=\"hidden-xs\">&nbsp; Devoluciones</span>',NULL),('tab_divisas','google_divisas','admin_divisas','modal','<i class=\"fa fa-globe\"></i><span class=\"hidden-xs\">&nbsp; Google</span>',NULL),('tab_editar_factura','ventas_factura_devolucion','editar_factura','tab','<span class=\"glyphicon glyphicon-share\" aria-hidden=\"true\"></span><span class=\"hidden-xs\">&nbsp; Devoluciones</span>',NULL),('tab_ventas_cliente_articulos','ventas_cliente_articulos','ventas_cliente','tab','<span class=\"glyphicon glyphicon-list\" aria-hidden=\"true\"></span> &nbsp; Artículos',NULL),('united','admin_user','admin_user','css','view/css/bootstrap-united.min.css',''),('yeti','admin_user','admin_user','css','view/css/bootstrap-yeti.min.css','');
/*!40000 ALTER TABLE `fs_extensions2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs_logs`
--

DROP TABLE IF EXISTS `fs_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) COLLATE utf8_bin NOT NULL,
  `detalle` text COLLATE utf8_bin NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT '2017-04-07 07:00:00',
  `usuario` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `ip` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `alerta` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs_logs`
--

LOCK TABLES `fs_logs` WRITE;
/*!40000 ALTER TABLE `fs_logs` DISABLE KEYS */;
INSERT INTO `fs_logs` VALUES (1,'model','Se ha creado el usuario <b>admin</b> con la contraseña <b>admin</b>.','2017-02-13 23:05:13',NULL,'181.49.92.40',0),(2,'login','Login correcto.','2017-02-13 23:05:25','admin','181.49.92.40',0),(3,'error','Dependencias incumplidas: <b>facturacion_base</b>. Puedes descargar este plugin desde la <b>pestaña descargas</b>.','2017-02-13 23:08:11','admin','181.49.92.40',0),(4,'error','Dependencias incumplidas: <b>facturacion_base</b>. Puedes descargar este plugin desde la <b>pestaña descargas</b>.','2017-02-13 23:09:03','admin','181.49.92.40',0),(5,'error','Dependencias incumplidas: <b>facturacion_base</b>. Puedes descargar este plugin desde la <b>pestaña descargas</b>.','2017-02-13 23:09:18','admin','181.49.92.40',0),(6,'error','¡Albaran de cliente no encontrada!','2017-02-13 17:38:09','admin','181.49.92.40',0),(7,'error','¡Factura de cliente no encontrada!','2017-02-13 17:38:09','admin','181.49.92.40',0),(8,'error','¡Albaran de cliente no encontrada!','2017-02-13 17:38:42','admin','181.49.92.40',0),(9,'error','¡Factura de cliente no encontrada!','2017-02-13 17:38:42','admin','181.49.92.40',0),(10,'login','Usuario aleyda creado correctamente.','2017-02-13 17:57:46','admin','181.49.92.40',1),(11,'login','¡Contraseña incorrecta! (aleyda)','2017-02-13 18:04:55',NULL,'181.49.92.40',1),(12,'login','Login correcto.','2017-02-13 18:05:06','aleyda','181.49.92.40',0),(13,'error','Ya existe el artículo <a href=\"index.php?page=ventas_articulo&ref=sal+marina\">sal marina</a>','2017-02-13 19:01:50','aleyda','181.49.92.40',0),(14,'msg','Articulo sal pimenton eliminado correctamente.','2017-02-13 19:24:46','aleyda','181.49.92.40',0),(15,'login','El usuario ha cerrado la sesión.','2017-02-13 19:39:11','aleyda','181.49.92.40',0),(16,'login','Login correcto.','2017-02-13 23:18:06','aleyda','186.113.110.149',0),(17,'msg','Articulo ajo eliminado correctamente.','2017-02-13 23:22:59','aleyda','186.113.110.149',0),(18,'msg','Articulo sal marina eliminado correctamente.','2017-02-13 23:23:21','aleyda','186.113.110.149',0),(19,'msg','Articulo paprica eliminado correctamente.','2017-02-13 23:24:20','aleyda','186.113.110.149',0),(20,'msg','Articulo sal oregano eliminado correctamente.','2017-02-13 23:24:32','aleyda','186.113.110.149',0),(21,'msg','Articulo comino eliminado correctamente.','2017-02-13 23:24:40','aleyda','186.113.110.149',0),(22,'msg','Articulo  pimienta eliminado correctamente.','2017-02-13 23:25:08','aleyda','186.113.110.149',0),(23,'login','El usuario ha cerrado la sesión.','2017-02-14 00:22:59','aleyda','186.113.110.149',0),(24,'login','Login correcto.','2017-02-14 15:45:11','aleyda','186.113.107.236',0),(25,'error','Error al descargar la lista de plugins.','2017-02-15 02:37:59','admin','181.131.25.225',0),(26,'error','Error al descargar la lista de plugins.','2017-02-15 02:38:07','admin','181.131.25.225',0),(27,'error','Error al descargar la lista de plugins.','2017-02-15 02:38:11','admin','181.131.25.225',0),(28,'error','Error al descargar la lista de plugins.','2017-02-15 14:16:40','admin','181.131.25.225',0),(29,'error','Error al descargar la lista de plugins.','2017-02-15 14:16:54','admin','181.131.25.225',0),(30,'error','Error al descargar la lista de plugins.','2017-02-16 21:41:34','aleyda','190.67.178.27',0),(31,'login','Login correcto.','2017-02-23 16:22:03','admin','191.95.247.166',0),(32,'login','El usuario ha cerrado la sesión.','2017-03-03 17:57:18','aleyda','190.67.191.127',0),(33,'login','¡Contraseña incorrecta! (aleyda)','2017-03-06 16:01:44',NULL,'190.255.127.24',1),(34,'login','Login correcto.','2017-03-06 16:03:58','aleyda','190.255.127.24',0),(35,'login','Login correcto.','2017-03-16 03:17:05','aleyda','186.86.216.106',0),(36,'login','El usuario ha cerrado la sesión.','2017-03-16 03:19:31','aleyda','186.86.216.106',0),(37,'login','Login correcto.','2017-03-27 00:09:19','aleyda','186.86.216.106',0),(38,'login','El usuario ha cerrado la sesión.','2017-03-27 00:30:00','aleyda','186.86.216.106',0),(39,'login','¡Contraseña incorrecta! (admin)','2017-03-27 21:22:22',NULL,'170.254.228.4',1),(40,'login','Login correcto.','2017-03-27 21:24:20','admin','170.254.228.4',0),(41,'login','El usuario ha cerrado la sesión.','2017-03-27 21:25:58','admin','170.254.228.4',0),(42,'login','Login correcto.','2017-04-03 21:08:20','admin','170.254.228.4',0),(43,'login','Login correcto.','2017-04-03 22:13:37','aleyda','186.86.216.106',0),(44,'login','El usuario ha cerrado la sesión.','2017-04-04 05:43:31','aleyda','186.86.216.106',0),(45,'login','El usuario ha cerrado la sesión.','2017-04-04 16:14:21','aleyda','186.86.216.106',0),(46,'login','Login correcto.','2017-04-04 16:14:35','aleyda','186.86.216.106',0),(47,'login','El usuario ha cerrado la sesión.','2017-04-05 04:42:44','aleyda','186.86.216.106',0),(48,'login','El usuario ha cerrado la sesión.','2017-04-05 04:47:19','aleyda','186.86.216.106',0),(49,'login','Login correcto.','2017-04-06 00:15:48','aleyda','186.86.216.106',0),(50,'login','El usuario ha cerrado la sesión.','2017-04-06 23:06:15','aleyda','186.86.216.106',0),(51,'login','¡Contraseña incorrecta! (aleyda)','2017-04-07 17:06:33',NULL,'186.86.216.106',1),(52,'login','Login correcto.','2017-04-07 17:07:22','aleyda','186.86.216.106',0);
/*!40000 ALTER TABLE `fs_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs_pages`
--

DROP TABLE IF EXISTS `fs_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs_pages` (
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  `title` varchar(40) COLLATE utf8_bin NOT NULL,
  `folder` varchar(15) COLLATE utf8_bin NOT NULL,
  `version` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `show_on_menu` tinyint(1) NOT NULL DEFAULT '1',
  `important` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs_pages`
--

LOCK TABLES `fs_pages` WRITE;
/*!40000 ALTER TABLE `fs_pages` DISABLE KEYS */;
INSERT INTO `fs_pages` VALUES ('admin_agente','Empleado','admin','2017.007',0,0),('admin_agentes','Empleados','admin','2017.007',1,0),('admin_almacenes','Almacenes','admin','2017.005',1,0),('admin_colombia','Colombia','admin','2017.005',1,0),('admin_divisas','Divisas','admin','2017.003',1,0),('admin_empresa','Empresa','admin','2017.007',1,0),('admin_home','Panel de control','admin','2017.007',1,0),('admin_info','Información del sistema','admin','2017.007',1,0),('admin_paises','Paises','admin','2017.007',1,0),('admin_rol','Editar rol','admin','2017.003',0,0),('admin_transportes','Agencias de transporte','admin','2017.004',1,0),('admin_user','Usuario','admin','2017.007',0,0),('admin_users','Usuarios','admin','2017.007',1,0),('albaran_detallado','Albaran Detallado','ventas','2017.003',0,0),('articulo_subcuentas','Subcuentas','ventas','2017.007',0,0),('articulo_trazabilidad','','ventas','2017.004',0,0),('articulos_pedidos','Artículos Pedidos','ventas','2017.003',0,0),('backup_restore','Copias de seguridad','admin','2017.003',1,0),('base_wizard','Asistente de instalación','admin','2017.004',0,0),('colombia_certificados','Certificados DIAN','contabilidad','2017.005',1,0),('compras_actualiza_arts','Artículos documento','compras','2017.005',0,0),('compras_agrupar_albaranes','Agrupar remisiones','compras','2017.004',0,0),('compras_albaran','albarán de proveedor','compras','2017.003',0,0),('compras_albaranes','Remisiones','compras','2017.005',1,0),('compras_factura','Factura de proveedor','compras','2017.003',0,0),('compras_facturas','Facturas','compras','2017.007',1,0),('compras_imprimir','imprimir','compras','2017.003',0,0),('compras_pedido','Pedido','compras','2017.005',0,0),('compras_pedidos','Pedidos','compras','2017.005',1,0),('compras_proveedor','Proveedor','compras','2017.005',0,0),('compras_proveedores','Proveedores / Acreedores','compras','2017.007',1,0),('compras_trazabilidad','Trazabilidad','compras','2017.003',0,0),('contabilidad_asiento','Asiento','contabilidad','2017.003',0,0),('contabilidad_asientos','Asientos','contabilidad','2017.005',1,0),('contabilidad_cuenta','Cuenta','contabilidad','2017.004',0,0),('contabilidad_cuentas','Cuentas','contabilidad','2017.005',1,0),('contabilidad_ejercicio','Ejercicio','contabilidad','2017.007',0,0),('contabilidad_ejercicios','Ejercicios','contabilidad','2017.005',1,0),('contabilidad_epigrafes','Grupos y epígrafes','contabilidad','2017.005',1,0),('contabilidad_formas_pago','Formas de Pago','contabilidad','2017.005',1,0),('contabilidad_impuestos','Impuestos','contabilidad','2017.003',1,0),('contabilidad_nuevo_asiento','Nuevo asiento','contabilidad','2017.005',0,1),('contabilidad_series','Series','contabilidad','2017.003',1,0),('contabilidad_subcuenta','Subcuenta','contabilidad','2017.007',0,0),('cuentas_especiales','Cuentas Especiales','contabilidad','2017.003',0,0),('dashboard','Dashboard','informes','2017.007',1,1),('documentos_facturas','Documentos','ventas','2017.005',0,0),('editar_balances','Editar balances','informes','2017.003',0,0),('editar_transferencia_stock','Editar transferencia','ventas','2017.003',0,0),('factura_detallada','Factura Detallada','ventas','2017.003',0,0),('google_divisas','Google Divisas','admin','2017.003',0,0),('imprimir_presu_pedi','imprimir','ventas','2017.003',0,0),('informe_albaranes','Remisiones','informes','2017.005',1,0),('informe_articulos','Artículos','informes','2017.005',1,0),('informe_contabilidad','Contabilidad','informes','2017.003',1,0),('informe_errores','Errores','informes','2017.003',1,0),('informe_facturas','Facturas','informes','2017.004',1,0),('informe_pedidos','Pedidos','informes','2017.005',1,0),('informe_presupuestos','Presupuestos','informes','2017.003',1,0),('maquetar_presu_pedi','Maquetar','ventas','2017.003',0,0),('megacopiador','Megacopiador','ventas','2017.003',0,0),('megacopiador_compras','Megacopiador Compras','ventas','2017.003',0,0),('megafacturador','MegaFacturador','ventas','2017.007',1,1),('nueva_compra','Nueva compra...','compras','2017.005',0,1),('nueva_venta','Nueva venta...','ventas','2017.007',0,1),('opciones_factura_detallada','Factura Detallada','admin','2017.003',0,0),('subcuenta_asociada','Asignar subcuenta...','contabilidad','2017.007',0,0),('tpv_caja','Arqueos y terminales','TPV','2017.005',1,0),('tpv_recambios','TPV Genérico','TPV','2017.005',1,0),('ventas_agrupar_albaranes','Agrupar albaranes','ventas','2017.003',0,0),('ventas_albaran','albarán de cliente','ventas','2017.003',0,0),('ventas_albaranes','Remisiones','ventas','2017.007',1,0),('ventas_articulo','Articulo','ventas','2017.007',0,0),('ventas_articulos','Artículos','ventas','2017.007',1,0),('ventas_atributos','Atributod de artículos','ventas','2017.003',0,0),('ventas_cliente','Cliente','ventas','2017.007',0,0),('ventas_cliente_articulos','Articulos vendidos al cliente','ventas','2017.007',0,0),('ventas_clientes','Clientes','ventas','2017.007',1,0),('ventas_clientes_opciones','Opciones','clientes','2017.007',0,0),('ventas_fabricante','Familia','ventas','2017.003',0,0),('ventas_fabricantes','Fabricantes','ventas','2017.004',0,0),('ventas_factura','Factura de cliente','ventas','2017.003',0,0),('ventas_factura_devolucion','Devoluciones de factura de venta','ventas','2017.003',0,0),('ventas_facturas','Facturas','ventas','2017.007',1,0),('ventas_familia','Familia','ventas','2017.003',0,0),('ventas_familias','Familias','ventas','2017.003',0,0),('ventas_grupo','Grupo','ventas','2017.003',0,0),('ventas_imprimir','imprimir','ventas','2017.003',0,0),('ventas_maquetar','Maquetar','ventas','2017.003',0,0),('ventas_pedido','Pedido','ventas','2017.003',0,0),('ventas_pedidos','Pedidos','ventas','2017.007',1,0),('ventas_presupuesto','Presupuesto','ventas','2017.003',0,0),('ventas_presupuestos','Presupuestos','ventas','2017.007',1,0),('ventas_trazabilidad','Trazabilidad','ventas','2017.003',0,0);
/*!40000 ALTER TABLE `fs_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs_roles`
--

DROP TABLE IF EXISTS `fs_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs_roles` (
  `codrol` varchar(20) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(200) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`codrol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs_roles`
--

LOCK TABLES `fs_roles` WRITE;
/*!40000 ALTER TABLE `fs_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `fs_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs_users`
--

DROP TABLE IF EXISTS `fs_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs_users` (
  `nick` varchar(12) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `log_key` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `codagente` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `last_login` date DEFAULT NULL,
  `last_login_time` time DEFAULT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `last_browser` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `fs_page` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `css` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`nick`),
  KEY `ca_fs_users_pages` (`fs_page`),
  CONSTRAINT `ca_fs_users_pages` FOREIGN KEY (`fs_page`) REFERENCES `fs_pages` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs_users`
--

LOCK TABLES `fs_users` WRITE;
/*!40000 ALTER TABLE `fs_users` DISABLE KEYS */;
INSERT INTO `fs_users` VALUES ('admin','55620fd146b0891a27173a350df09374f7aab493','48c97cfe8203cfed13614be0926c11da5afca9b5',1,'1','2017-04-04','13:01:54','170.254.228.4','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:53.0) Gecko/20100101 Firefox/53.0',NULL,'view/css/bootstrap-yeti.min.css',NULL),('aleyda','e4a1dfa102ed173f0146499f7e89fe63e69af0fe','7419e0c40a731c0223b7ba5a577746090d9ca875',1,'2','2017-04-07','10:07:22','186.86.216.106','Mozilla/5.0 (Windows NT 6.1; rv:52.0) Gecko/20100101 Firefox/52.0',NULL,'view/css/bootstrap-yeti.min.css','ospinamartinezaleyda@gmail.com');
/*!40000 ALTER TABLE `fs_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fs_vars`
--

DROP TABLE IF EXISTS `fs_vars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fs_vars` (
  `name` varchar(35) COLLATE utf8_bin NOT NULL,
  `varchar` text COLLATE utf8_bin,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fs_vars`
--

LOCK TABLES `fs_vars` WRITE;
/*!40000 ALTER TABLE `fs_vars` DISABLE KEYS */;
INSERT INTO `fs_vars` VALUES ('backup_comando','\"/usr/bin/mysqldump\"'),('cliente::regimenes_iva','Simplificado,Común,Exento'),('f_detallada_QRCODE','1'),('f_detallada_color','gris'),('f_detallada_imprime_albaran','1'),('f_detallada_maquetar_negrita','1'),('f_detallada_observaciones_producto','1'),('install_step','5'),('mail_albaran','Buenos días, le adjunto su #DOCUMENTO#.\r\n#FIRMA#'),('mail_bcc',''),('mail_enc','ssl'),('mail_factura','Buenos días, le adjunto su #DOCUMENTO#.\r\n#FIRMA#'),('mail_firma','---\r\nEnviado con FacturaScripts'),('mail_host','smtp.gmail.com'),('mail_mailer','smtp'),('mail_password',''),('mail_pedido','Buenos días, le adjunto su #DOCUMENTO#.\r\n#FIRMA#'),('mail_port','465'),('mail_presupuesto','Buenos días, le adjunto su #DOCUMENTO#.\r\n#FIRMA#'),('mail_user',''),('nuevocli_cifnif_req','0'),('nuevocli_ciudad','1'),('nuevocli_ciudad_req','0'),('nuevocli_codgrupo',''),('nuevocli_codpostal','1'),('nuevocli_codpostal_req','0'),('nuevocli_direccion','1'),('nuevocli_direccion_req','0'),('nuevocli_pais','1'),('nuevocli_pais_req','1'),('nuevocli_provincia','1'),('nuevocli_provincia_req','0'),('nuevocli_telefono1','0'),('nuevocli_telefono1_req','0'),('nuevocli_telefono2','0'),('nuevocli_telefono2_req','0'),('print_alb','0'),('print_dto','1'),('print_formapago','1'),('print_ref','1'),('restore_comando','\"/usr/bin/mysql\"'),('restore_comando_data','\"/usr/bin/mysqlimport\"');
/*!40000 ALTER TABLE `fs_vars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gruposclientes`
--

DROP TABLE IF EXISTS `gruposclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gruposclientes` (
  `codgrupo` varchar(6) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `codtarifa` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`codgrupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gruposclientes`
--

LOCK TABLES `gruposclientes` WRITE;
/*!40000 ALTER TABLE `gruposclientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `gruposclientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idiomas_fac_det`
--

DROP TABLE IF EXISTS `idiomas_fac_det`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idiomas_fac_det` (
  `codidioma` varchar(10) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  `telefono` varchar(100) COLLATE utf8_bin DEFAULT 'teléfono',
  `fax` varchar(100) COLLATE utf8_bin DEFAULT 'fax',
  `email` varchar(100) COLLATE utf8_bin DEFAULT 'email',
  `web` varchar(100) COLLATE utf8_bin DEFAULT 'web',
  `factura_num` varchar(100) COLLATE utf8_bin DEFAULT 'factura nº',
  `pagina` varchar(100) COLLATE utf8_bin DEFAULT 'página',
  `fecha` varchar(100) COLLATE utf8_bin DEFAULT 'fecha',
  `num_cliente` varchar(100) COLLATE utf8_bin DEFAULT 'nº de cliente',
  `cliente` varchar(100) COLLATE utf8_bin DEFAULT 'cliente',
  `forma_pago` varchar(100) COLLATE utf8_bin DEFAULT 'forma de pago',
  `vencimiento` varchar(100) COLLATE utf8_bin DEFAULT 'vencimiento',
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT 'descripción',
  `cant` varchar(100) COLLATE utf8_bin DEFAULT 'cant',
  `precio` varchar(100) COLLATE utf8_bin DEFAULT 'precio',
  `dto` varchar(100) COLLATE utf8_bin DEFAULT 'dto',
  `iva` varchar(100) COLLATE utf8_bin DEFAULT 'iva',
  `importe` varchar(100) COLLATE utf8_bin DEFAULT 'importe',
  `importes` varchar(100) COLLATE utf8_bin DEFAULT 'importes',
  `neto` varchar(100) COLLATE utf8_bin DEFAULT 'neto',
  `rec_equiv` varchar(100) COLLATE utf8_bin DEFAULT 'rec. equiv.',
  `irpf` varchar(100) COLLATE utf8_bin DEFAULT 'irpf',
  `total` varchar(100) COLLATE utf8_bin DEFAULT 'total',
  PRIMARY KEY (`codidioma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idiomas_fac_det`
--

LOCK TABLES `idiomas_fac_det` WRITE;
/*!40000 ALTER TABLE `idiomas_fac_det` DISABLE KEYS */;
INSERT INTO `idiomas_fac_det` VALUES ('es_ES','Español',1,'teléfono','fax','email','web','factura nº','página','fecha','nº de cliente','cliente','forma de pago','vencimiento','descripción','cant','precio','dto','iva','importe','importes','neto','rec. equiv.','irpf','total');
/*!40000 ALTER TABLE `idiomas_fac_det` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impuestos`
--

DROP TABLE IF EXISTS `impuestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `impuestos` (
  `codimpuesto` varchar(10) COLLATE utf8_bin NOT NULL,
  `codsubcuentaacr` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentadeu` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivadedadue` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivadevadue` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivadeventue` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivarepexe` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivarepexp` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivarepre` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivasopagra` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivasopexe` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentaivasopimp` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentarep` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuentasop` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `idsubcuentaacr` int(11) DEFAULT NULL,
  `idsubcuentadeu` int(11) DEFAULT NULL,
  `idsubcuentaivadedadue` int(11) DEFAULT NULL,
  `idsubcuentaivadevadue` int(11) DEFAULT NULL,
  `idsubcuentaivadeventue` int(11) DEFAULT NULL,
  `idsubcuentaivarepexe` int(11) DEFAULT NULL,
  `idsubcuentaivarepexp` int(11) DEFAULT NULL,
  `idsubcuentaivarepre` int(11) DEFAULT NULL,
  `idsubcuentaivasopagra` int(11) DEFAULT NULL,
  `idsubcuentaivasopexe` int(11) DEFAULT NULL,
  `idsubcuentaivasopimp` int(11) DEFAULT NULL,
  `idsubcuentarep` int(11) DEFAULT NULL,
  `idsubcuentasop` int(11) DEFAULT NULL,
  `iva` double NOT NULL,
  `recargo` double NOT NULL,
  PRIMARY KEY (`codimpuesto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impuestos`
--

LOCK TABLES `impuestos` WRITE;
/*!40000 ALTER TABLE `impuestos` DISABLE KEYS */;
INSERT INTO `impuestos` VALUES ('CO0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CO 0%',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('CO19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CO 19%',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,19,0),('CO5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CO 5%',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,0);
/*!40000 ALTER TABLE `impuestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineasalbaranescli`
--

DROP TABLE IF EXISTS `lineasalbaranescli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lineasalbaranescli` (
  `cantidad` double NOT NULL DEFAULT '0',
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` text COLLATE utf8_bin,
  `dtolineal` double DEFAULT '0',
  `dtopor` double NOT NULL DEFAULT '0',
  `idalbaran` int(11) NOT NULL,
  `idlinea` int(11) NOT NULL AUTO_INCREMENT,
  `idlineapedido` int(11) DEFAULT NULL,
  `idpedido` int(11) DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `iva` double NOT NULL DEFAULT '0',
  `porcomision` double DEFAULT NULL,
  `pvpsindto` double NOT NULL DEFAULT '0',
  `pvptotal` double NOT NULL DEFAULT '0',
  `pvpunitario` double NOT NULL DEFAULT '0',
  `recargo` double DEFAULT '0',
  `referencia` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  `orden` int(11) DEFAULT '0',
  `mostrar_cantidad` tinyint(1) DEFAULT '1',
  `mostrar_precio` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`idlinea`),
  KEY `ca_lineasalbaranescli_albaranescli2` (`idalbaran`),
  CONSTRAINT `ca_lineasalbaranescli_albaranescli2` FOREIGN KEY (`idalbaran`) REFERENCES `albaranescli` (`idalbaran`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineasalbaranescli`
--

LOCK TABLES `lineasalbaranescli` WRITE;
/*!40000 ALTER TABLE `lineasalbaranescli` DISABLE KEYS */;
/*!40000 ALTER TABLE `lineasalbaranescli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineasalbaranesprov`
--

DROP TABLE IF EXISTS `lineasalbaranesprov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lineasalbaranesprov` (
  `cantidad` double NOT NULL DEFAULT '0',
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` text COLLATE utf8_bin,
  `dtolineal` double DEFAULT '0',
  `dtopor` double NOT NULL DEFAULT '0',
  `idalbaran` int(11) NOT NULL,
  `idlinea` int(11) NOT NULL AUTO_INCREMENT,
  `idlineapedido` int(11) DEFAULT NULL,
  `idpedido` int(11) DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `iva` double NOT NULL DEFAULT '0',
  `pvpsindto` double NOT NULL DEFAULT '0',
  `pvptotal` double NOT NULL DEFAULT '0',
  `pvpunitario` double NOT NULL DEFAULT '0',
  `recargo` double DEFAULT '0',
  `referencia` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idlinea`),
  KEY `ca_lineasalbaranesprov_albaranesprov2` (`idalbaran`),
  CONSTRAINT `ca_lineasalbaranesprov_albaranesprov2` FOREIGN KEY (`idalbaran`) REFERENCES `albaranesprov` (`idalbaran`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineasalbaranesprov`
--

LOCK TABLES `lineasalbaranesprov` WRITE;
/*!40000 ALTER TABLE `lineasalbaranesprov` DISABLE KEYS */;
/*!40000 ALTER TABLE `lineasalbaranesprov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineasfacturascli`
--

DROP TABLE IF EXISTS `lineasfacturascli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lineasfacturascli` (
  `cantidad` double NOT NULL,
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` text COLLATE utf8_bin,
  `dtolineal` double DEFAULT '0',
  `dtopor` double NOT NULL,
  `idalbaran` int(11) DEFAULT NULL,
  `idfactura` int(11) NOT NULL,
  `idlinea` int(11) NOT NULL AUTO_INCREMENT,
  `idlineaalbaran` int(11) DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `iva` double NOT NULL,
  `porcomision` double DEFAULT NULL,
  `pvpsindto` double NOT NULL,
  `pvptotal` double NOT NULL,
  `pvpunitario` double NOT NULL,
  `recargo` double DEFAULT NULL,
  `referencia` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  `orden` int(11) DEFAULT '0',
  `mostrar_cantidad` tinyint(1) DEFAULT '1',
  `mostrar_precio` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`idlinea`),
  KEY `ca_linea_facturascli2` (`idfactura`),
  CONSTRAINT `ca_linea_facturascli2` FOREIGN KEY (`idfactura`) REFERENCES `facturascli` (`idfactura`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineasfacturascli`
--

LOCK TABLES `lineasfacturascli` WRITE;
/*!40000 ALTER TABLE `lineasfacturascli` DISABLE KEYS */;
/*!40000 ALTER TABLE `lineasfacturascli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineasfacturasprov`
--

DROP TABLE IF EXISTS `lineasfacturasprov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lineasfacturasprov` (
  `cantidad` double NOT NULL,
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuenta` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` text COLLATE utf8_bin,
  `dtolineal` double DEFAULT '0',
  `dtopor` double NOT NULL,
  `idalbaran` int(11) DEFAULT NULL,
  `idfactura` int(11) NOT NULL,
  `idlinea` int(11) NOT NULL AUTO_INCREMENT,
  `idlineaalbaran` int(11) DEFAULT NULL,
  `idsubcuenta` int(11) DEFAULT NULL,
  `irpf` double DEFAULT NULL,
  `iva` double NOT NULL,
  `pvpsindto` double NOT NULL,
  `pvptotal` double DEFAULT NULL,
  `pvpunitario` double NOT NULL,
  `recargo` double DEFAULT NULL,
  `referencia` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idlinea`),
  KEY `ca_linea_facturasprov2` (`idfactura`),
  CONSTRAINT `ca_linea_facturasprov2` FOREIGN KEY (`idfactura`) REFERENCES `facturasprov` (`idfactura`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineasfacturasprov`
--

LOCK TABLES `lineasfacturasprov` WRITE;
/*!40000 ALTER TABLE `lineasfacturasprov` DISABLE KEYS */;
/*!40000 ALTER TABLE `lineasfacturasprov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineaspedidosprov`
--

DROP TABLE IF EXISTS `lineaspedidosprov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lineaspedidosprov` (
  `pvptotal` double NOT NULL,
  `cantidad` double NOT NULL,
  `irpf` double DEFAULT NULL,
  `recargo` double DEFAULT NULL,
  `dtolineal` double DEFAULT NULL,
  `descripcion` text COLLATE utf8_bin,
  `idlinea` int(11) NOT NULL AUTO_INCREMENT,
  `idpedido` int(11) NOT NULL,
  `codimpuesto` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `cerrada` tinyint(1) DEFAULT NULL,
  `iva` double DEFAULT NULL,
  `dtopor` double NOT NULL,
  `pvpsindto` double NOT NULL,
  `pvpunitario` double NOT NULL,
  `referencia` varchar(18) COLLATE utf8_bin DEFAULT NULL,
  `totalenalbaran` double DEFAULT NULL,
  PRIMARY KEY (`idlinea`),
  KEY `ca_lineaspedidosprov_pedidosprov` (`idpedido`),
  CONSTRAINT `ca_lineaspedidosprov_pedidosprov` FOREIGN KEY (`idpedido`) REFERENCES `pedidosprov` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineaspedidosprov`
--

LOCK TABLES `lineaspedidosprov` WRITE;
/*!40000 ALTER TABLE `lineaspedidosprov` DISABLE KEYS */;
INSERT INTO `lineaspedidosprov` VALUES (120000,60,0,0,NULL,'sal marina',1,1,'CO0',NULL,0,0,120000,2000,'sal natural',NULL),(120000,60,0,0,NULL,'sal marina',2,1,'CO0',NULL,0,0,120000,2000,'sal ajo',NULL),(120000,60,0,0,NULL,'sal marina',3,1,'CO0',NULL,0,0,120000,2000,'sal comino',NULL),(120000,60,0,0,NULL,'sal marina',4,1,'CO0',NULL,0,0,120000,2000,'sal oregano',NULL),(120000,60,0,0,NULL,'sal marina',5,1,'CO0',NULL,0,0,120000,2000,'sal paprika',NULL);
/*!40000 ALTER TABLE `lineaspedidosprov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineasregstocks`
--

DROP TABLE IF EXISTS `lineasregstocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lineasregstocks` (
  `cantidadfin` double NOT NULL DEFAULT '0',
  `cantidadini` double NOT NULL DEFAULT '0',
  `codalmacendest` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idstock` int(11) NOT NULL,
  `motivo` text COLLATE utf8_bin,
  `nick` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ca_lineasregstocks_stocks` (`idstock`),
  CONSTRAINT `ca_lineasregstocks_stocks` FOREIGN KEY (`idstock`) REFERENCES `stocks` (`idstock`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineasregstocks`
--

LOCK TABLES `lineasregstocks` WRITE;
/*!40000 ALTER TABLE `lineasregstocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `lineasregstocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paises` (
  `validarprov` tinyint(1) DEFAULT NULL,
  `codiso` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `bandera` text COLLATE utf8_bin,
  `nombre` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codpais` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`codpais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES (NULL,'AD',NULL,'Andorra','AND'),(NULL,'AR',NULL,'Argentina','ARG'),(NULL,'BO',NULL,'Bolivia','BOL'),(NULL,'CL',NULL,'Chile','CHL'),(NULL,'CO',NULL,'Colombia','COL'),(NULL,'CR',NULL,'Costa Rica','CRI'),(NULL,'CU',NULL,'Cuba','CUB'),(NULL,'DO',NULL,'República Dominicana','DOM'),(NULL,'EC',NULL,'Ecuador','ECU'),(NULL,'ES',NULL,'España','ESP'),(NULL,'GQ',NULL,'Guinea Ecuatorial','GNQ'),(NULL,'GT',NULL,'Guatemala','GTM'),(NULL,'HN',NULL,'Honduras','HND'),(NULL,'MX',NULL,'México','MEX'),(NULL,'NI',NULL,'Nicaragua','NIC'),(NULL,'PA',NULL,'Panamá','PAN'),(NULL,'PE',NULL,'Perú','PER'),(NULL,'PR',NULL,'Puerto Rico','PRI'),(NULL,'PY',NULL,'Paraguay','PRY'),(NULL,'SV',NULL,'El Salvador','SLV'),(NULL,'UY',NULL,'Uruguay','URY'),(NULL,'US',NULL,'Estados Unidos','USA'),(NULL,'VE',NULL,'Venezuela','VEN');
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidoscli`
--

DROP TABLE IF EXISTS `pedidoscli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidoscli` (
  `apartado` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `cifnif` varchar(20) COLLATE utf8_bin NOT NULL,
  `ciudad` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codagente` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codcliente` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `coddir` int(11) DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codigo` varchar(20) COLLATE utf8_bin NOT NULL,
  `codpago` varchar(10) COLLATE utf8_bin NOT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `direccion` varchar(100) COLLATE utf8_bin NOT NULL,
  `editable` tinyint(1) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time DEFAULT '00:00:00',
  `fechasalida` date DEFAULT NULL,
  `femail` date DEFAULT NULL,
  `idpedido` int(11) NOT NULL AUTO_INCREMENT,
  `idalbaran` int(11) DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `irpf` double NOT NULL,
  `neto` double NOT NULL,
  `nombrecliente` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `numero` varchar(12) COLLATE utf8_bin NOT NULL,
  `numero2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `observaciones` text COLLATE utf8_bin,
  `porcomision` double DEFAULT NULL,
  `provincia` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `recfinanciero` double DEFAULT NULL,
  `servido` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `tasaconv` double NOT NULL,
  `total` double NOT NULL,
  `totaleuros` double NOT NULL,
  `totalirpf` double NOT NULL,
  `totaliva` double NOT NULL,
  `totalrecargo` double DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `codtrans` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `codigoenv` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `nombreenv` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `apellidosenv` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `direccionenv` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codpostalenv` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `ciudadenv` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `provinciaenv` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `apartadoenv` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codpaisenv` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `numdocs` int(11) DEFAULT '0',
  `idoriginal` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpedido`),
  UNIQUE KEY `uniq_codigo_pedidoscli` (`codigo`),
  KEY `ca_pedidoscli_series` (`codserie`),
  KEY `ca_pedidoscli_ejercicios` (`codejercicio`),
  CONSTRAINT `ca_pedidoscli_series` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE,
  CONSTRAINT `ca_pedidoscli_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidoscli`
--

LOCK TABLES `pedidoscli` WRITE;
/*!40000 ALTER TABLE `pedidoscli` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidoscli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidosprov`
--

DROP TABLE IF EXISTS `pedidosprov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidosprov` (
  `codigo` varchar(20) COLLATE utf8_bin NOT NULL,
  `totaleuros` double NOT NULL,
  `codagente` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codpago` varchar(10) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `tasaconv` double NOT NULL,
  `total` double NOT NULL,
  `irpf` double DEFAULT NULL,
  `idpedido` int(11) NOT NULL AUTO_INCREMENT,
  `idalbaran` int(11) DEFAULT NULL,
  `observaciones` text COLLATE utf8_bin,
  `servido` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `editable` tinyint(1) NOT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `numproveedor` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `cifnif` varchar(20) COLLATE utf8_bin NOT NULL,
  `codproveedor` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `fechaentrada` date DEFAULT NULL,
  `totalrecargo` double DEFAULT NULL,
  `recfinanciero` double DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time DEFAULT '00:00:00',
  `neto` double NOT NULL,
  `totalirpf` double DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `totaliva` double NOT NULL,
  `numero` varchar(12) COLLATE utf8_bin NOT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin NOT NULL,
  `numdocs` int(11) DEFAULT '0',
  `idoriginal` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpedido`),
  UNIQUE KEY `uniq_codigo_pedidosprov` (`codigo`),
  KEY `ca_pedidosprov_series` (`codserie`),
  KEY `ca_pedidosprov_ejercicios` (`codejercicio`),
  CONSTRAINT `ca_pedidosprov_series` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE,
  CONSTRAINT `ca_pedidosprov_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidosprov`
--

LOCK TABLES `pedidosprov` WRITE;
/*!40000 ALTER TABLE `pedidosprov` DISABLE KEYS */;
INSERT INTO `pedidosprov` VALUES ('PED2017A1C',191.04141,'2','TRANS','2017',3140.6803,600000,0,1,NULL,'SE REALIZA ABONO DE $300.000, RESTAMOS  $ 300.000',NULL,1,'ALG','00001','','000001',NULL,0,NULL,'andres','2017-02-13','16:35:20',600000,0,'A',0,'1','COP',0,NULL);
/*!40000 ALTER TABLE `pedidosprov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presupuestoscli`
--

DROP TABLE IF EXISTS `presupuestoscli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presupuestoscli` (
  `apartado` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `cifnif` varchar(20) COLLATE utf8_bin NOT NULL,
  `ciudad` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codagente` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codalmacen` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `codcliente` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `coddir` int(11) DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin NOT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codigo` varchar(20) COLLATE utf8_bin NOT NULL,
  `codoportunidad` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `codpago` varchar(10) COLLATE utf8_bin NOT NULL,
  `codpais` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `codpostal` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `direccion` varchar(100) COLLATE utf8_bin NOT NULL,
  `editable` tinyint(1) NOT NULL,
  `estado` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time DEFAULT '00:00:00',
  `finoferta` date DEFAULT NULL,
  `fechasalida` date DEFAULT NULL,
  `femail` date DEFAULT NULL,
  `idpresupuesto` int(11) NOT NULL AUTO_INCREMENT,
  `idpedido` int(11) DEFAULT NULL,
  `idprovincia` int(11) DEFAULT NULL,
  `irpf` double NOT NULL,
  `neto` double NOT NULL,
  `nombrecliente` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `numero` varchar(12) COLLATE utf8_bin NOT NULL,
  `numero2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `observaciones` text COLLATE utf8_bin,
  `porcomision` double DEFAULT NULL,
  `provincia` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `recfinanciero` double DEFAULT NULL,
  `tasaconv` double NOT NULL,
  `total` double NOT NULL,
  `totaleuros` double NOT NULL,
  `totalirpf` double NOT NULL,
  `totaliva` double NOT NULL,
  `totalrecargo` double DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `codtrans` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `codigoenv` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `nombreenv` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `apellidosenv` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `direccionenv` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `codpostalenv` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `ciudadenv` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `provinciaenv` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `apartadoenv` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codpaisenv` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `numdocs` int(11) DEFAULT '0',
  `idoriginal` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpresupuesto`),
  UNIQUE KEY `uniq_codigo_presupuestoscli` (`codigo`),
  KEY `ca_presupuestoscli_series` (`codserie`),
  KEY `ca_presupuestoscli_ejercicios` (`codejercicio`),
  CONSTRAINT `ca_presupuestoscli_series` FOREIGN KEY (`codserie`) REFERENCES `series` (`codserie`) ON UPDATE CASCADE,
  CONSTRAINT `ca_presupuestoscli_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presupuestoscli`
--

LOCK TABLES `presupuestoscli` WRITE;
/*!40000 ALTER TABLE `presupuestoscli` DISABLE KEYS */;
/*!40000 ALTER TABLE `presupuestoscli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `cifnif` varchar(20) COLLATE utf8_bin NOT NULL,
  `codcontacto` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codcuentadom` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codcuentapago` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `coddivisa` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `codpago` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `codproveedor` varchar(6) COLLATE utf8_bin NOT NULL,
  `codserie` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `codsubcuenta` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `contacto` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fax` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `idsubcuenta` int(11) DEFAULT NULL,
  `ivaportes` double DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `razonsocial` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `observaciones` text COLLATE utf8_bin,
  `recfinanciero` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `regimeniva` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `telefono1` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `telefono2` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `tipoidfiscal` varchar(25) COLLATE utf8_bin NOT NULL DEFAULT 'NIF',
  `web` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `acreedor` tinyint(1) DEFAULT '0',
  `personafisica` tinyint(1) DEFAULT '1',
  `debaja` tinyint(1) DEFAULT NULL,
  `fechabaja` date DEFAULT NULL,
  PRIMARY KEY (`codproveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES ('',NULL,NULL,NULL,'COP','TRANS','000001',NULL,NULL,NULL,'','',NULL,NULL,'andres','andres','',NULL,'General','','','NIT/CC','',0,0,0,NULL),('800209179-0',NULL,NULL,NULL,'COP','TRANS','000002',NULL,NULL,NULL,'','',NULL,NULL,'CENCO EXPRES','CENCO EXPRES','',NULL,'General','','','NIT/CC','',0,0,0,NULL),('',NULL,NULL,NULL,'COP','TRANS','000003',NULL,NULL,NULL,'','',NULL,NULL,'HAIFA CUDRIZ VARELA','HAIFA CUDRIZ VARELA','SERVICIO ARRENDAMIENTO',NULL,'General','','','NIT/CC','',1,0,0,'2017-02-13'),('901053602-1',NULL,NULL,NULL,'COP','TRANS','000004',NULL,NULL,NULL,'','',NULL,NULL,'MEMBRESIA','MEMBRESIA','PAQUETES SALES MAS CAPACITACIONES',NULL,'General','','','NIT/CC','',0,0,0,'2017-02-21');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secuencias`
--

DROP TABLE IF EXISTS `secuencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secuencias` (
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `id` int(11) NOT NULL,
  `idsec` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `valor` int(11) DEFAULT NULL,
  `valorout` int(11) DEFAULT NULL,
  PRIMARY KEY (`idsec`),
  KEY `ca_secuencias_secuenciasejercicios` (`id`),
  CONSTRAINT `ca_secuencias_secuenciasejercicios` FOREIGN KEY (`id`) REFERENCES `secuenciasejercicios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secuencias`
--

LOCK TABLES `secuencias` WRITE;
/*!40000 ALTER TABLE `secuencias` DISABLE KEYS */;
INSERT INTO `secuencias` VALUES ('Secuencia del ejercicio 2017 y la serie A',1,1,'npedidoprov',1,2);
/*!40000 ALTER TABLE `secuencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secuenciasejercicios`
--

DROP TABLE IF EXISTS `secuenciasejercicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secuenciasejercicios` (
  `codejercicio` varchar(4) COLLATE utf8_bin NOT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nalbarancli` int(11) NOT NULL,
  `nalbaranprov` int(11) NOT NULL,
  `nfacturacli` int(11) NOT NULL,
  `nfacturaprov` int(11) NOT NULL,
  `npedidocli` int(11) NOT NULL,
  `npedidoprov` int(11) NOT NULL,
  `npresupuestocli` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ca_secuenciasejercicios_ejercicios` (`codejercicio`),
  CONSTRAINT `ca_secuenciasejercicios_ejercicios` FOREIGN KEY (`codejercicio`) REFERENCES `ejercicios` (`codejercicio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secuenciasejercicios`
--

LOCK TABLES `secuenciasejercicios` WRITE;
/*!40000 ALTER TABLE `secuenciasejercicios` DISABLE KEYS */;
INSERT INTO `secuenciasejercicios` VALUES ('2017','A',1,1,1,1,1,1,1,1),('2017','R',2,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `secuenciasejercicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `series` (
  `irpf` double DEFAULT NULL,
  `idcuenta` int(11) DEFAULT NULL,
  `codserie` varchar(2) COLLATE utf8_bin NOT NULL,
  `descripcion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `siniva` tinyint(1) DEFAULT NULL,
  `codcuenta` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `codejercicio` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `numfactura` int(11) DEFAULT '1',
  PRIMARY KEY (`codserie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES (0,NULL,'A','SERIE A',0,NULL,NULL,1),(0,NULL,'R','RECTIFICATIVAS',0,NULL,NULL,1);
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stocks` (
  `referencia` varchar(18) COLLATE utf8_bin NOT NULL,
  `disponible` double NOT NULL,
  `stockmin` double NOT NULL DEFAULT '0',
  `reservada` double NOT NULL,
  `horaultreg` time DEFAULT '00:00:00',
  `nombre` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `pterecibir` double NOT NULL,
  `fechaultreg` date DEFAULT '2017-04-06',
  `codalmacen` varchar(4) COLLATE utf8_bin NOT NULL,
  `cantidadultreg` double NOT NULL DEFAULT '0',
  `idstock` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` double NOT NULL DEFAULT '0',
  `stockmax` double NOT NULL DEFAULT '0',
  `ubicacion` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idstock`),
  UNIQUE KEY `uniq_stocks_almacen_referencia` (`codalmacen`,`referencia`),
  KEY `ca_stocks_articulos2` (`referencia`),
  CONSTRAINT `ca_stocks_articulos2` FOREIGN KEY (`referencia`) REFERENCES `articulos` (`referencia`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ca_stocks_almacenes3` FOREIGN KEY (`codalmacen`) REFERENCES `almacenes` (`codalmacen`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks`
--

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarifas`
--

DROP TABLE IF EXISTS `tarifas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarifas` (
  `incporcentual` double NOT NULL,
  `inclineal` double NOT NULL,
  `aplicar_a` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `mincoste` tinyint(1) DEFAULT '0',
  `maxpvp` tinyint(1) DEFAULT '0',
  `codtarifa` varchar(6) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`codtarifa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarifas`
--

LOCK TABLES `tarifas` WRITE;
/*!40000 ALTER TABLE `tarifas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarifas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transstock`
--

DROP TABLE IF EXISTS `transstock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transstock` (
  `usuario` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `codalmadestino` varchar(4) COLLATE utf8_bin NOT NULL,
  `codalmaorigen` varchar(4) COLLATE utf8_bin NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `idtrans` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idtrans`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transstock`
--

LOCK TABLES `transstock` WRITE;
/*!40000 ALTER TABLE `transstock` DISABLE KEYS */;
/*!40000 ALTER TABLE `transstock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'tusmodul_facscript'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-10 17:22:10
