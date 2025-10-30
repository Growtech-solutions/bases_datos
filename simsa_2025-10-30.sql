/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: simsa
-- ------------------------------------------------------
-- Server version	10.11.13-MariaDB-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `simsa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `simsa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `simsa`;

--
-- Table structure for table `actividades`
--

DROP TABLE IF EXISTS `actividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actividad` varchar(150) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tipo` (`tipo`),
  CONSTRAINT `actividades_ibfk_1` FOREIGN KEY (`tipo`) REFERENCES `listas` (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividades`
--

LOCK TABLES `actividades` WRITE;
/*!40000 ALTER TABLE `actividades` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `almacen_epp`
--

DROP TABLE IF EXISTS `almacen_epp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `almacen_epp` (
  `folio` int(11) NOT NULL AUTO_INCREMENT,
  `epp` varchar(50) DEFAULT NULL,
  `alta` date DEFAULT NULL,
  `trabajador` varchar(50) DEFAULT NULL,
  `entrega` date DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`folio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacen_epp`
--

LOCK TABLES `almacen_epp` WRITE;
/*!40000 ALTER TABLE `almacen_epp` DISABLE KEYS */;
/*!40000 ALTER TABLE `almacen_epp` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `trigger_epp_trabajador_update` BEFORE UPDATE ON `almacen_epp`
 FOR EACH ROW BEGIN
IF OLD.trabajador <> NEW.trabajador THEN
INSERT INTO historial_epp (folio, epp, estado_anterior,trabajador_anterior, trabajador_nuevo)
VALUES (OLD.folio, OLD.epp, OLD.estado,OLD.trabajador, NEW.trabajador);
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `trigger_epp_estado_update` BEFORE UPDATE ON `almacen_epp`
 FOR EACH ROW BEGIN
IF OLD.estado <> NEW.estado THEN
INSERT INTO historial_epp (folio, epp, trabajador_anterior,estado_anterior, estado_nuevo)
VALUES (OLD.folio, OLD.epp, OLD.trabajador,OLD.estado, NEW.estado);
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `almacen_herramienta`
--

DROP TABLE IF EXISTS `almacen_herramienta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `almacen_herramienta` (
  `folio` int(11) NOT NULL AUTO_INCREMENT,
  `herramienta` varchar(50) DEFAULT NULL,
  `alta` date DEFAULT NULL,
  `trabajador` varchar(50) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `entrega` date DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`folio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacen_herramienta`
--

LOCK TABLES `almacen_herramienta` WRITE;
/*!40000 ALTER TABLE `almacen_herramienta` DISABLE KEYS */;
/*!40000 ALTER TABLE `almacen_herramienta` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `trigger_trabajador_update` BEFORE UPDATE ON `almacen_herramienta`
 FOR EACH ROW BEGIN
IF OLD.trabajador <> NEW.trabajador THEN
INSERT INTO historial_herramientas (folio, herramienta, trabajador_anterior, trabajador_nuevo)
VALUES (OLD.folio, OLD.herramienta, OLD.trabajador, NEW.trabajador);
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `trigger_estado_update` BEFORE UPDATE ON `almacen_herramienta`
 FOR EACH ROW BEGIN
IF OLD.estado <> NEW.estado THEN
INSERT INTO historial_herramientas (folio, herramienta, estado_anterior, estado_nuevo)
VALUES (OLD.folio, OLD.herramienta, OLD.estado, NEW.estado);
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `trigger_area_update` BEFORE UPDATE ON `almacen_herramienta`
 FOR EACH ROW BEGIN
IF OLD.area <> NEW.area THEN
INSERT INTO historial_herramientas (folio, herramienta, area_anterior, area_nueva)
VALUES (OLD.folio, OLD.herramienta, OLD.area, NEW.area);
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `asistencia`
--

DROP TABLE IF EXISTS `asistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `latitud` decimal(10,7) NOT NULL,
  `longitud` decimal(10,7) NOT NULL,
  `fecha` datetime NOT NULL,
  `trabajador_id` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia`
--

LOCK TABLES `asistencia` WRITE;
/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
INSERT INTO `asistencia` VALUES
(101,25.6824607,-100.2923899,'2025-05-21 08:03:17','11'),
(102,25.6824583,-100.2923937,'2025-05-22 11:18:56','2316'),
(103,25.6824585,-100.2923931,'2025-05-22 11:19:11',NULL),
(104,25.6824586,-100.2923930,'2025-05-22 11:19:23','11'),
(105,25.6824586,-100.2923930,'2025-05-22 11:19:33',NULL),
(106,25.7193558,-100.3845479,'2025-05-26 14:22:17','11'),
(107,25.6564036,-100.2209275,'2025-06-05 12:29:39','11'),
(108,25.6533180,-100.2944871,'2025-06-07 23:16:12',NULL);
/*!40000 ALTER TABLE `asistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bonos`
--

DROP TABLE IF EXISTS `bonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bonos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_trabajador` int(11) DEFAULT NULL,
  `horas` decimal(10,2) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `ot` varchar(50) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_trabajador` (`id_trabajador`),
  KEY `tipo` (`tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonos`
--

LOCK TABLES `bonos` WRITE;
/*!40000 ALTER TABLE `bonos` DISABLE KEYS */;
/*!40000 ALTER TABLE `bonos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(255) NOT NULL,
  `rfc` varchar(13) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `fecha_alta` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES
(1,'Growtech-Solutions','dgsiudhs','','','','','','','2025-03-08 03:14:01'),
(2,'Ternium México','TME840710TR4','C.JSAPIN@ternium.com.mx','8119916964','México','Nuevo León','San Nicolas de los Garza','66450','2025-03-14 22:09:36'),
(3,'Vesuvius México','VME651207490','','','México','Nuevo León','Cd. Guadalupe','67119','2025-03-14 22:13:59'),
(4,'Transportadores Industriales de México','TIM861224JW4','','8183600990','México','Nuevo León','Cd. Guadalupe','67180','2025-03-14 22:16:27'),
(5,'simsa','s','','','','','','','2025-03-14 22:26:00'),
(6,'ARAMARK SERVICIOS IND.DE MEXICO S DE RL DE CV',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-19 21:39:33'),
(7,'ARAMARK SERVICIOS IND.DE MEXICO S DE RL DE CV',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-19 21:41:05'),
(8,'CANCELADA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-19 21:41:05'),
(9,'DESARROLLO ORGANIZACIONAL REGIOMONTANO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-19 21:41:05'),
(10,'ESTEBAN HERRERA HINOJOSA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-19 21:41:05'),
(11,'FERROPAK COMERCIAL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-19 21:41:05'),
(12,'FRISA FORJADOS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-19 21:41:05'),
(13,'GERARDO RAFAEL FLORES SALINAS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-19 21:41:05'),
(14,'HARSCO METALS DE MEXICO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-19 21:41:05'),
(15,'INMOBILIARIA GARZA ZAMBRANO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-19 21:41:05'),
(16,'LIEBHERR MONTERREY',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-19 21:41:05'),
(17,'MA.EUGENIA GARZA ZAMBRANO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-19 21:41:05'),
(18,'MAGOTTEAUX',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-19 21:41:05'),
(19,'NOMBRE DEL CLIENTE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-19 21:41:05'),
(20,'PROYECTOS INDUSTRIALES EDALCA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-19 21:41:05'),
(21,'SERVICIOS ESPECIALIZADOS DEL NORTE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-19 21:41:05'),
(22,'SERVICIOS INDUSTRIALES DE MONTERREY',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-19 21:41:05'),
(23,'TENIGAL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-19 21:41:05'),
(24,'TMS INTERNATIONAL DE MEXICO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-03-19 21:41:05');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ot` int(11) DEFAULT NULL,
  `responsable` varchar(100) DEFAULT NULL,
  `id_oc` int(11) DEFAULT NULL,
  `cantidad` decimal(10,2) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `unidad` varchar(50) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  `moneda` varchar(50) DEFAULT NULL,
  `comentarios` text DEFAULT NULL,
  `cotizacion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ot` (`ot`),
  KEY `responsable` (`responsable`),
  KEY `id_oc` (`id_oc`),
  KEY `unidad` (`unidad`),
  KEY `moneda` (`moneda`),
  CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`ot`) REFERENCES `ot` (`ot`),
  CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`responsable`) REFERENCES `listas` (`responsables`),
  CONSTRAINT `compras_ibfk_3` FOREIGN KEY (`id_oc`) REFERENCES `orden_compra` (`id`),
  CONSTRAINT `compras_ibfk_4` FOREIGN KEY (`unidad`) REFERENCES `listas` (`unidades`),
  CONSTRAINT `compras_ibfk_5` FOREIGN KEY (`moneda`) REFERENCES `listas` (`moneda`)
) ENGINE=InnoDB AUTO_INCREMENT=366 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES
(30,1001,'Raul Domingo',14,567.00,'PTR 3\" x 3\"  calibre 7 rojo','kg',20.80,'MXN',' son 9 piezas','+IVA'),
(31,1001,'Raul Domingo',14,212.00,'PTR 21/2\" x 21/2\" calibre 7 rojo','kg',20.80,'MXN','son 4 piezas','+IVA'),
(32,1004,'Nelly Mondragón',15,20.00,'Soldadura 7018 3/32\" Bohler','kg',65.00,'MXN','base para rollos','+IVA'),
(33,780,'Nelly Mondragón',15,12.00,'Disco Desbaste 41/2\" x 1/4\"','pzs',20.00,'MXN','consumibles','+IVA'),
(34,780,'Raul Domingo',16,2.00,'Zapatos Mod.ME303','Par',300.00,'MXN',' Saúl y Gerardo','+IVA'),
(35,1004,'Raul Domingo',16,2.00,'Zapatos Mod.ME400 metarsal','Par',600.00,'MXN','Ulises y Juan José','+IVA'),
(36,1004,'Raul Domingo',16,3.00,'Capucha antiflama soldador','pzs',215.00,'MXN','entrega JMZ','+IVA'),
(37,1004,'Raul Domingo',16,2.00,'Pantalón mezclilla T.32','pzs',190.00,'MXN','Ulises','+IVA'),
(38,1004,'Raul Domingo',16,2.00,'Camisa Mezclilla franjas Fosforecentes','pzs',260.00,'MXN','Ulises y Oscar','+IVA'),
(39,1002,'Raul Domingo',16,12.00,'Guante Chino Payaso','Par',38.00,'MXN','','+IVA'),
(40,1004,'Nelly Mondragón',17,30.00,'Barrenanclas 3/4\"x 81/2\"','pzs',33.00,'MXN','Acerex','+IVA'),
(41,1004,'Nelly Mondragón',17,30.00,'Barrenanclas 1/2\" x 31/2\"','pzs',9.00,'MXN','bases rollos','+IVA'),
(42,1004,'Nelly Mondragón',17,50.00,'Barrenanclas 1/2\" x 41/2\"','pzs',9.50,'MXN','Acerex','+IVA'),
(43,1004,'Raul Domingo',18,70.00,'Angulo Estructural 1/4\"x1\"','kg',22.50,'MXN',' 5 Ángulos','+IVA'),
(44,1004,'Raul Domingo',19,174.00,'PTR 2\" x 2\" calibre 11 verde','kg',21.80,'MXN',' 6 piezas topes para bases rollos','+IVA'),
(45,1004,'Nelly Mondragón',20,2.00,'Pintura Amarilla Limón 1023','galones',940.54,'MXN','bases y postes','+IVA'),
(46,1004,'Nelly Mondragón',20,1.00,'Pintura Blanca','galones',799.97,'MXN',' bases y postes','+IVA'),
(47,1001,'Raul Domingo',21,70.00,'Viga Estructural IPS','kg',27.00,'MXN',' 1 pieza','+IVA'),
(48,1000,'Nelly Mondragón',22,5.00,'Soldadura 6013  3/32 Lincoln','kg',81.08,'MXN','','+IVA'),
(49,780,'Nelly Mondragón',23,5.00,'Soldadurqa 6013 3/32\" Lincoln','kg',81.08,'MXN','ductos transimex cigarrera','+IVA'),
(50,780,'Nelly Mondragón',23,100.00,'Disco Corte 41/2\"','pzs',12.00,'MXN','','+IVA'),
(51,1001,'Raul Domingo',24,66.00,'PTR 2\" x 2\" calibre 10 rojo','kg',18.80,'MXN',' 2 piezas','+IVA'),
(52,1001,'Raul Domingo',24,435.00,'PTR 2 x 2 calibre 11 verde','kg',18.80,'MXN',' 15 piezas','+IVA'),
(53,1001,'Raul Domingo',24,204.00,'PTR 11/2\" calibre 11 verde','kg',18.80,'MXN',' 10 piezas','+IVA'),
(54,1000,'Nelly Mondragón',25,1.00,'Zapato tipo Metatarzal','Par',827.59,'MXN','  Acerex Oscar Emanuel','+IVA'),
(55,1000,'Raul Domingo',26,148.00,'Viga Estructural IPR 6 x 4','kg',24.30,'MXN','1 viga','+IVA'),
(56,1001,'Raul Domingo',27,567.00,'PTR 3 x 3 calibre 7 rojo','kg',18.80,'MXN',' 9 piezas','+IVA'),
(57,1002,'Nelly Mondragón',28,12.00,'Guante chino payaso','Par',38.00,'MXN',' Polvos','+IVA'),
(58,1000,'Nelly Mondragón',28,12.00,'Guante chino payaso','Par',38.00,'MXN','paileria','+IVA'),
(59,1000,'Nelly Mondragón',28,10.00,'Guantes Soldador','pzs',65.00,'MXN','paileria','+IVA'),
(60,1002,'Nelly Mondragón',28,15.00,'Respiradores Moldex 95','pzs',40.00,'MXN',' polvos','+IVA'),
(61,1002,'Nelly Mondragón',28,1.00,'Pantalón Mezclilla Talla 34','pzs',190.00,'MXN',' paileria Erick','+IVA'),
(62,1000,'Nelly Mondragón',29,20.00,'Barrenanclas 3/4 x 81/2','pzs',33.00,'MXN',' Acerex','+IVA'),
(63,1000,'Nelly Mondragón',29,40.00,'Barrenanclas 1/2 x 41/2','pzs',9.50,'MXN','acerex','+IVA'),
(64,780,'Nelly Mondragón',30,12.00,'Lentes de Seguridad','pzs',20.00,'MXN','consumibles','+IVA'),
(65,780,'Nelly Mondragón',30,15.00,'Disco Desbaste 41/2 x 1/4','pzs',20.00,'MXN','consumibles','+IVA'),
(66,780,'Nelly Mondragón',30,25.00,'Tapón Auditivo Moldeable','pzs',4.00,'MXN','consumibles','+IVA'),
(67,780,'Nelly Mondragón',30,12.00,'Cristal Claro para Careta Soldador','pzs',3.50,'MXN','consumibles','+IVA'),
(68,1000,'Raul Domingo',31,2.00,'Zapato tipo Metatarzal','Par',827.50,'MXN','José Guadalupe y Fernando','+IVA'),
(69,1000,'Raul Domingo',32,480.00,'PTR 4 x 2 calibre 11 blanco,PTR 2x2 ca.11 verde, PTR 1 1/2 cal.11 verde','kg',18.80,'MXN','3 PTR 4x2 cal.11 blanco,5 PTR 2x2 cal.11 verde,10 PTR 11/2 cal.11 verde','+IVA'),
(70,1001,'Raul Domingo',33,290.00,'PTR 2\" x 2\" calibre 11','kg',21.80,'MXN',' 10 piezas','+IVA'),
(71,1001,'Raul Domingo',33,82.00,'PTR 11/2\"x1-1/2\" calibre 11','kg',21.80,'MXN',' 4 piezas','+IVA'),
(72,1001,'Raul Domingo',33,1.00,'1 pasador negro grande','pzs',64.66,'MXN','','+IVA'),
(73,1002,'Nelly Mondragón',36,24.00,'Guantes chino payaso','Par',38.00,'MXN','','+IVA'),
(74,1004,'Nelly Mondragón',36,10.00,'Guantes Soldador','Par',65.00,'MXN','','+IVA'),
(75,1004,'Nelly Mondragón',36,10.00,'Pecheras Soldador','pzs',68.00,'MXN','','+IVA'),
(76,1002,'Nelly Mondragón',36,15.00,'Mascarillas N95','pzs',40.00,'MXN','','+IVA'),
(77,1004,'Nelly Mondragón',36,1.00,'Pantalón Mezclilla T34','pzs',190.00,'MXN','','+IVA'),
(78,1004,'Nelly Mondragón',36,2.00,'Camisas Mezclilla con reflejantes','pzs',260.00,'MXN','','+IVA'),
(79,1001,'Raúl Olguín ',35,30.00,'Angulo de 1/4 x 2','kg',22.50,'MXN',' 1 pieza','+IVA'),
(80,1001,'Raúl Olguín ',37,19.00,'Metalex amarillo Limón','lts',184.93,'MXN','cubeta de 19 lts','+IVA'),
(81,1001,'Raúl Olguín ',37,19.00,'Econo-Primer Gris','lts',157.51,'MXN','cubeta de 19 lts','+IVA'),
(82,1001,'Raúl Olguín ',38,3.00,'Rollos Malla DJ-4810 S/P SEC4  3 X 11','pzs',2156.06,'MXN','','+IVA'),
(83,1004,'Nelly Mondragón',39,62.00,'PTR 1-1/2\" calibre 11 verde','kg',21.30,'MXN','3 piezas','+IVA'),
(84,1004,'Nelly Mondragón',39,87.00,'PTR 2 x 2 calibre 11 verde','kg',21.30,'MXN','3 piezas','+IVA'),
(85,1004,'Nelly Mondragón',39,18.00,'Riel pesado calibre 14','kg',27.30,'MXN','1 pieza','+IVA'),
(86,1004,'Nelly Mondragón',39,3.00,'Carruchas para reforzado','pzs',340.52,'MXN','','+IVA'),
(87,1002,'Nelly Mondragón',40,12.00,'Guante chino payaso','Par',38.00,'MXN','','+IVA'),
(88,1002,'Nelly Mondragón',40,12.00,'Overoles Desechable','pzs',85.00,'MXN','','+IVA'),
(89,1004,'Nelly Mondragón',40,6.00,'Guante Soldador','Par',65.00,'MXN','','+IVA'),
(97,760,'Nelly Mondragón',42,100.00,'Disco corte metal 4-1/2','pzs',8.62,'MXN','','+IVA'),
(98,760,'Nelly Mondragón',42,15.00,'Crayón tipo jaboncillo','pzs',3.50,'MXN','','+IVA'),
(99,1004,'Nelly Mondragón',42,8.00,'Ferrul diámetro .562 largo 1\"','pzs',15.00,'MXN','','+IVA'),
(100,1004,'Nelly Mondragón',42,1.00,'Flexómetro de 5.5 mt Weston','pzs',150.00,'MXN','','+IVA'),
(101,1004,'Nelly Mondragón',42,4.00,'Piedra para encendedor triple','pzs',12.50,'MXN','','+IVA'),
(102,1004,'Nelly Mondragón',42,20.00,'Soldadura 7018 3/32\" Bohler','kg',65.00,'MXN','','+IVA'),
(103,1001,'Raúl Olguín ',43,19.00,'Thinner Estandar sin envase','lts',34.00,'MXN','','+IVA'),
(104,1001,'Raúl Olguín ',44,171.00,'PTR 4\"x 4\" calibre rojo 7','kg',NULL,NULL,'2 piezas',NULL),
(105,1027,'Raúl Olguín ',45,171.00,'PTR 4 x 4\" calibre 7 rojo','kg',21.30,'MXN','2 piezas','+IVA'),
(106,999,'Rafael Garza',46,1.00,'prueba','servicios',NULL,'MXN','Prueba pagos','+IVA'),
(107,1004,'Nelly Mondragón',28,10.00,'pecheras soldador','pzs',68.00,'MXN','','+IVA'),
(108,1004,'Nelly Mondragón',28,2.00,'camisas mezclilla','pzs',260.00,'MXN','','+IVA'),
(109,999,'Rafael Garza',48,1.00,'Prueba','servicios',NULL,NULL,'.',NULL),
(110,1004,'Nelly Mondragón',49,60.00,'PTR 1\"x1\" calibre 13 verde','kg',21.30,'MXN','5 piezas','+IVA'),
(111,1004,'Nelly Mondragón',49,102.00,'PTR 1-1/2\"x1-1/2\" calibre 11 verde','kg',21.30,'MXN',' 5 piezas','+IVA'),
(112,1004,'Nelly Mondragón',49,145.00,'PTR 2\"x2\" calibre 11 verde','kg',21.30,'MXN','5 piezas','+IVA'),
(113,1004,'Nelly Mondragón',49,32.00,'SOLERA 1/4\"X2\" 6.10','kg',23.20,'MXN','2 Piezas','+IVA'),
(114,1000,'Nelly Mondragón',50,0.00,'Barrenanclas 1/2\"x31/2\"','pzs',NULL,'MXN','','null'),
(115,1000,'Nelly Mondragón',50,0.00,'Barrenanclas 3/4\"x 81/2\"','pzs',NULL,'MXN','','null'),
(116,1000,'Nelly Mondragón',50,0.00,'Barrenanclas 1/2\"x41/2\"','pzs',NULL,'MXN','','null'),
(117,1000,'Nelly Mondragón',51,32.00,'Barrenanclas 1/2\"x31/2\"','pzs',9.00,'MXN','','+IVA'),
(118,1000,'Nelly Mondragón',51,20.00,'Barrenanclas 3/4 x 81/2','pzs',33.00,'MXN','','+IVA'),
(119,1000,'Nelly Mondragón',51,45.00,'Barrenanclas 1/2\"x41/2\"','pzs',9.90,'MXN','','+IVA'),
(120,1004,'Nelly Mondragón',52,32.00,'Barrenanclas 1/2\"x31/2\"','pzs',9.00,'MXN','',''),
(121,1004,'Nelly Mondragón',52,20.00,'Barrenanclas 3/4\"x 81/2\"','pzs',33.00,'MXN','',''),
(122,1004,'Nelly Mondragón',52,45.00,'Barrenanclas 1/2\"x41/2\"','pzs',9.90,'MXN','',''),
(123,1004,'Nelly Mondragón',53,32.00,'Barrenanclas 1/2\"x31/2\"','pzs',9.00,'MXN','',''),
(124,1004,'Nelly Mondragón',53,20.00,'Barrenanclas 3/4\"x 81/2\"','pzs',33.00,'MXN','',''),
(125,1004,'Nelly Mondragón',53,45.00,'Barrenanclas 1/2\"x41/2\"','pzs',9.90,'MXN','',''),
(126,1002,'Nelly Mondragón',54,12.00,'Overol desechable TXL','pzs',85.00,'MXN','',''),
(127,1004,'Nelly Mondragón',54,12.00,'Guanche chino doble palma','Par',42.00,'MXN','',''),
(128,1004,'Nelly Mondragón',54,6.00,'Guante soldador ','Par',65.00,'MXN','',''),
(129,1004,'Nelly Mondragón',54,3.00,'Pecheras carnaza soldador','pzs',68.00,'MXN','',''),
(130,1004,'Nelly Mondragón',54,1.00,'Zapatos ME-400M9','Par',600.00,'MXN','José Alfredo Gaona',''),
(131,1004,'Nelly Mondragón',54,6.00,'Mangas Carnaza Soldador','Par',68.00,'MXN','',''),
(132,1004,'Nelly Mondragón',54,2.00,'Polainas Carnaza Soldador','Par',68.00,'MXN','',''),
(133,1002,'Nelly Mondragón',54,8.00,'Mascarillas Moldex N95','pzs',40.00,'MXN','',''),
(134,1002,'Nelly Mondragón',55,12.00,'Overol desechable TXL','pzs',85.00,'MXN','','+IVA'),
(135,1004,'Nelly Mondragón',55,12.00,'Guanche chino doble palma','Par',42.00,'MXN','','+IVA'),
(136,1004,'Nelly Mondragón',55,6.00,'Guante soldador ','Par',65.00,'MXN','','+IVA'),
(137,1004,'Nelly Mondragón',55,3.00,'Pecheras carnaza soldador','pzs',68.00,'MXN','','+IVA'),
(138,1004,'Nelly Mondragón',55,1.00,'Zapatos ME-400M9','Par',600.00,'MXN','José Alfredo Gaona','+IVA'),
(139,1004,'Nelly Mondragón',55,6.00,'Mangas Carnaza Soldador','Par',68.00,'MXN','','+IVA'),
(140,1004,'Nelly Mondragón',55,2.00,'Polainas Carnaza Soldador','Par',68.00,'MXN','','+IVA'),
(141,1002,'Nelly Mondragón',55,8.00,'Mascarillas Moldex N95','pzs',40.00,'MXN','','+IVA'),
(142,780,'Nelly Mondragón',56,100.00,'Disco corte metal 4-1/2','pzs',8.62,'MXN','','+IVA'),
(143,780,'Nelly Mondragón',56,15.00,'Creyón tipo jaboncillo','pzs',3.50,'MXN','','+IVA'),
(144,780,'Nelly Mondragón',56,1.00,'Flexómetro 5 mts  cadena weston','pzs',150.00,'MXN','','+IVA'),
(145,780,'Nelly Mondragón',56,12.00,'Disco Desbaste 4-1/2\"x1/4\" K200','pzs',20.00,'MXN','','+IVA'),
(146,780,'Nelly Mondragón',56,10.00,'Cristal Claro p/careta soldar','pzs',3.50,'MXN','','+IVA'),
(147,780,'Nelly Mondragón',56,12.00,'Disco Laminado 4-1/2\" G80 Zirconia','pzs',25.00,'MXN','','+IVA'),
(148,1035,'Raúl Olguín ',58,13.00,'PTR 1\" CALIBRE 11','kg',20.80,'MXN','UNA PIEZA','+IVA'),
(149,1035,'Raúl Olguín ',58,17.00,'ANGULO 1-1/2\"X 3/16\"','kg',22.50,'MXN','UNA PIEZA','+IVA'),
(150,1035,'Raúl Olguín ',58,18.00,'SOLERA 1-1/2\" CALIBRE 3/16','kg',23.20,'MXN','DOS PIEZAS','+IVA'),
(151,1035,'Raúl Olguín ',63,1.00,'ROLLO MALLA','pzs',2156.06,'MXN','UNA PIEZA','+IVA'),
(152,1035,'Raúl Olguín ',57,1.00,'PINTURA FONDO BLANCO','galones',799.97,'MXN','UN GALON','+IVA'),
(153,1035,'Raúl Olguín ',57,1.00,'PINTURA AMARILLA 1023','galones',940.54,'MXN','UN GALON','+IVA'),
(154,1035,'Raúl Olguín ',57,10.00,'TINNER ','lts',34.06,'MXN','10 LITROS','+IVA'),
(155,1035,'Raúl Olguín ',90,6.00,'DISCOS CORTE','pzs',8.62,'MXN','','+IVA'),
(156,1035,'Raúl Olguín ',90,2.00,'SOLDADURA 7018   3/32','kg',65.00,'MXN','','+IVA'),
(157,1030,'Nelly Mondragón',89,50.00,'Barrenanclas 1/2\"x4-1/2\"','pzs',9.90,'MXN','','+IVA'),
(158,1032,'Nelly Mondragón',59,124.00,'PTR 4 x 2\" calib.7 rojo','kg',20.80,'MXN','2 piezas','+IVA'),
(159,1001,'Nelly Mondragón',60,5.20,'acetileno','kg',330.00,'MXN','tanque','+IVA'),
(160,1001,'Nelly Mondragón',60,1.00,'oxigeno industrial de 9.5 M3','pzs',450.00,'MXN','','+IVA'),
(162,1034,'Nelly Mondragón',61,1.00,'Pistola Devilvis MGQ 500 Naranja','pzs',577.00,'MXN','','+IVA'),
(163,1034,'Nelly Mondragón',61,2.00,'Lija de Esmeril Fina Grano 120','pzs',16.87,'MXN','','+IVA'),
(164,1034,'Nelly Mondragón',61,2.00,'Lija de Esmeril Gruesa Grano 50','pzs',21.10,'MXN','','+IVA'),
(165,1032,'Nelly Mondragón',62,3.00,'exámenes médicos Ternium','pzs',439.66,'MXN','José Luis Mtz, Martin Rdz. y Raúl Olguín','+IVA'),
(166,1030,'Nelly Mondragón',64,65.00,'PTR 1\"x1\" calibre 11 verde','kg',20.80,'MXN','5 piezas','+IVA'),
(167,1030,'Nelly Mondragón',64,102.00,'PTR 1-1/2\"x1-1/2 \" calibre 11 verde','kg',20.80,'MXN','5 piezas','+IVA'),
(168,1030,'Nelly Mondragón',64,145.00,'PTR 2\"x2\" calibre 11 verde','kg',20.80,'MXN','5 piezas','+IVA'),
(169,1039,'Raul Domingo',65,475.00,'Tubo de 1\" cedula 30','kg',20.50,'MXN','50 tubos','+IVA'),
(170,1042,'Raul Domingo',66,4.00,'Piso Antiderrapante Tritt 30 cmx3.05 mts cal.18 galv','pzs',1050.00,'MXN','','+IVA'),
(171,1042,'Raul Domingo',66,4.00,'Piso Antiderrapante Tritt 30 cmx2.22 mts cal 18 galv','pzs',934.00,'MXN','','+IVA'),
(172,1042,'Raul Domingo',66,6.00,'Piso Antiderrapante Tritt 30 cmx1.38 mts cal 18 galv','pzs',560.00,'MXN','','+IVA'),
(173,1042,'Raul Domingo',66,7.00,'Piso antiderrapante Tritt 30 cmx1.25 mts.cal 18 galv','pzs',490.00,'MXN','','+IVA'),
(174,1030,'Manuel Zertuche',67,1.00,'Arrestaflama p/soplete oxigeno y acetileno','Par',480.00,'MXN',' son 2 válvulas','+IVA'),
(175,1030,'Manuel Zertuche',67,1.00,'Boquilla corte acetileno No.1 Victor','pzs',125.00,'MXN','','+IVA'),
(176,1032,'Manuel Zertuche',67,5.00,'Soldadura 7018 1/8\"','kg',65.00,'MXN','es para Churubusco OT 1032','+IVA'),
(177,1039,'Nelly Mondragón',68,20.00,'Thinner Estándar sin envase','lts',34.06,'MXN','','+IVA'),
(178,1043,'Raúl Olguín ',69,102.00,'PTR 1-1/2\" calibre 11','kg',19.80,'MXN','5 piezas','+IVA'),
(179,1043,'Raúl Olguín ',69,6.00,'Varilla redonda de 1/2\"','kg',21.30,'MXN','1 pieza','+IVA'),
(180,1043,'Raúl Olguín ',69,6.00,'Solera 3/16\" x 1','kg',23.20,'MXN','1 pieza','+IVA'),
(181,1043,'Raúl Olguín ',69,6.00,'Bisagra tubular 1\"','pzs',30.17,'MXN','','+IVA'),
(182,1043,'Raúl Olguín ',69,3.00,'Pasador No.3','pzs',34.48,'MXN','','+IVA'),
(183,1044,'Raúl Olguín ',70,102.00,'PTR de 1-1/2\" calibre 11','kg',19.80,'MXN','5 piezas','+IVA'),
(184,1044,'Nelly Mondragón',70,33.00,'PTR 2\" x 2\" calibre 10 rojo','kg',19.80,'MXN','1 pieza','+IVA'),
(185,1044,'Raúl Olguín ',70,8.00,'Bisagra tubular 1\"','pzs',30.17,'MXN','','+IVA'),
(186,1044,'Nelly Mondragón',70,2.00,'Pasador No.3','pzs',34.48,'MXN','','+IVA'),
(187,1044,'Nelly Mondragón',71,2.00,'Econo Primer Blanco','galones',799.97,'MXN','','+IVA'),
(188,1044,'Nelly Mondragón',71,2.00,'Metalex Amarillo Limón','galones',940.54,'MXN','','+IVA'),
(189,1044,'Nelly Mondragón',71,10.00,'Thinner Estandar sin envase','lts',34.06,'MXN','','+IVA'),
(190,1043,'Nelly Mondragón',71,2.00,'Econo Primer Blanco','galones',799.97,'MXN','','+IVA'),
(191,1043,'Nelly Mondragón',71,2.00,'Metalex Amarillo Limón','galones',940.54,'MXN','','+IVA'),
(192,1043,'Nelly Mondragón',71,10.00,'Thinner Etandar sin envase','lts',34.06,'MXN','','+IVA'),
(193,1045,'Nelly Mondragón',72,1.00,'Metalex Amarillo Limón 1023','galones',940.54,'MXN','','+IVA'),
(194,1045,'Nelly Mondragón',72,1.00,'Econo Primer Blanco','galones',799.97,'MXN','','+IVA'),
(195,1045,'Nelly Mondragón',72,1.00,'Esm.Metalex Negro','lts',261.22,'MXN','','+IVA'),
(196,1045,'Nelly Mondragón',72,5.00,'Thinner estandar sin envase','lts',34.06,'MXN','','+IVA'),
(197,1045,'Nelly Mondragón',73,58.00,'PTR 2\"x2\" calibre 11','kg',19.80,'MXN','2 piezas','+IVA'),
(198,1045,'Nelly Mondragón',73,62.00,'PTR 1-1/2\"x1-1/2\" calibre 11','kg',19.80,'MXN','3 piezas','+IVA'),
(199,1045,'Nelly Mondragón',73,18.00,'PTR 1-1/2\"x1-1/2\" calibre 12 Bco','kg',19.80,'MXN','1 pieza','+IVA'),
(200,1045,'Nelly Mondragón',73,105.00,'Lámina antiderrapante  cal.1/8x4x10','kg',19.10,'MXN','1 Pieza','+IVA'),
(201,1045,'Nelly Mondragón',73,32.00,'Solera 1/4\" x 4\" x 6.10 M','kg',23.20,'MXN','1 Pieza ','+IVA'),
(202,1045,'Nelly Mondragón',89,12.00,'Barrenanclas 3/8\"x3-1/2\"','pzs',4.90,'MXN','','+IVA'),
(203,1045,'Nelly Mondragón',89,20.00,'Barrenanclas 3/8\"x3-1/2\"','pzs',4.90,'MXN','','+IVA'),
(204,1045,'Nelly Mondragón',89,18.00,'Barrenanclas 3/8 x 3-1/2\"','pzs',4.90,'MXN','','+IVA'),
(205,1044,'Nelly Mondragón',74,1.00,'Rollo malla desplegada DH-4012 s/p Sec 3.0','pzs',1867.65,'MXN','','+IVA'),
(206,1047,'Nelly Mondragón',75,252.00,'PTR 3\"x3\" cal. Rojo   (4 piezas)','kg',19.80,'MXN','son 4 piezas','+IVA'),
(207,1047,'Nelly Mondragón',75,106.00,'PTR 2-1/2\"x 2-1/2\" Cal. Rojo    (2 Piezas)','kg',19.80,'MXN','son 2 piezas','+IVA'),
(208,1047,'Nelly Mondragón',75,116.00,'PTR 2\"x2\" Cal. Verde   (4 Piezas)','kg',19.80,'MXN','son 4 piezas','+IVA'),
(209,1047,'Nelly Mondragón',75,45.00,'Angulo 1/4 x 3\"    (1 Pieza)','kg',22.50,'MXN','es una pieza','+IVA'),
(210,999,'Nelly Mondragón',NULL,1.00,'Zapatos No.7 metatarzal','Par',NULL,'MXN','se duplico OC 382','null'),
(211,999,'Nelly Mondragón',NULL,1.00,'Zapatos seguridad No.6','Par',NULL,'MXN','duplicado x OC 382','null'),
(212,999,'Nelly Mondragón',NULL,6.00,'Guantes Soldador','Par',NULL,'MXN','duplicado x la OC382','null'),
(213,760,'Nelly Mondragón',76,1.00,'Zapatos No.7 metatarzal','Par',600.00,'MXN','para Oscar Carreón','+IVA'),
(214,760,'Nelly Mondragón',76,1.00,'Zapatos seguridad No.6','Par',300.00,'MXN','para José Humberto González','+IVA'),
(215,760,'Nelly Mondragón',76,6.00,'Guantes Soldador','Par',65.00,'MXN','consumibles','+IVA'),
(216,1030,'Nelly Mondragón',77,5.00,'Pasador Negro reforzado No.5','pzs',47.41,'MXN','Oscar Carreón','+IVA'),
(217,1030,'Nelly Mondragón',78,5.00,'Pasador negro reforzado No.5','pzs',NULL,'MXN','duplicada x OC 383','+IVA'),
(218,1039,'Nelly Mondragón',79,3.00,'Soldadura 7018 3/32','kg',65.00,'MXN','','+IVA'),
(219,1039,'Nelly Mondragón',79,2.00,'Soldadura 7018 3/32','kg',65.00,'MXN','','+IVA'),
(220,1039,'Nelly Mondragón',79,5.00,'Soldadura 7018 3/32','kg',65.00,'MXN','','+IVA'),
(221,1039,'Nelly Mondragón',79,5.00,'Soldadura 7018 3/32','kg',65.00,'MXN','','+IVA'),
(222,1039,'Nelly Mondragón',79,5.00,'Soldadura 7018  3/32','kg',65.00,'MXN','','+IVA'),
(223,1039,'Nelly Mondragón',79,100.00,'Disco Corte ','pzs',8.62,'MXN','','+IVA'),
(224,1039,'Nelly Mondragón',79,10.00,'Crayones jaboncillo','pzs',3.50,'MXN','','+IVA'),
(225,1039,'Nelly Mondragón',79,12.00,'Disco Desbaste','pzs',20.00,'MXN','','+IVA'),
(226,1039,'Nelly Mondragón',79,10.00,'Disco Laminado','pzs',25.00,'MXN','','+IVA'),
(228,1047,'Nelly Mondragón',79,12.00,'lente seguridad vision steel claro','pzs',20.00,'MXN','','+IVA'),
(229,1047,'Nelly Mondragón',79,1.00,'Flexómetro 5 mts','pzs',150.00,'MXN','','+IVA'),
(230,1047,'Nelly Mondragón',79,10.00,'Makita disco corte metal 14\" gris','pzs',65.00,'MXN','','+IVA'),
(231,1030,'Nelly Mondragón',89,50.00,'Barrenanclas 1/2 x 4-1/2','pzs',9.90,'MXN','','+IVA'),
(232,1044,'Raul Domingo',80,4.00,'Ruedas Fija 4x2 Poliuretano Rojo con negro\r\n','pzs',175.00,'MXN','','+IVA'),
(233,1047,'Raúl Olguín ',81,252.00,'PTR 3\"x3\" cal.7 Rojo     (4 piezas)','kg',19.80,'MXN','4 Piezas','+IVA'),
(234,1047,'Raúl Olguín ',81,53.00,'PTR 2-1/2\"x2-1/2\" Cal.7 Rojo   (1 Pieza)','kg',19.80,'MXN','1 Pieza','+IVA'),
(235,1047,'Raúl Olguín ',81,58.00,'PTR 2\"x2\" Cal.11 verde   (2 Piezas)','kg',19.80,'MXN','2 Piezas','+IVA'),
(236,1048,'Raúl Olguín ',81,189.00,'PTR 3\"x3\" Cal.7 Rojo  (3 Piezas)','kg',19.80,'MXN','3 Piezas','+IVA'),
(237,1048,'Raúl Olguín ',81,77.00,'Tubo 3 Ced.40 (C-4)    (1 Pieza)','kg',19.80,'MXN','1 Pieza','+IVA'),
(238,1048,'Raúl Olguín ',81,55.00,'Tubo 2-1/2\" ced.40 (C-7)   (1 Pieza)','kg',19.80,'MXN','1 Pieza','+IVA'),
(239,1033,'Nelly Mondragón',82,24.00,'Guantes payaso chino doble palma','Par',42.00,'MXN','','+IVA'),
(240,1033,'Nelly Mondragón',82,15.00,'overoles desechables XL Blanco','pzs',85.00,'MXN','','+IVA'),
(241,1033,'Nelly Mondragón',82,15.00,'Respiradores Moldex N95 negro','pzs',40.00,'MXN','','+IVA'),
(242,790,'Raul Domingo',85,1.00,'Desarrollo de Gestor de Operación','servicios',30000.00,'MXN','30,000 en dos pagos de 15 + IVA','+IVA'),
(243,1047,'Raúl Olguín ',86,3.00,'Econo primer Blanco','galones',799.97,'MXN','','+IVA'),
(244,1048,'Raúl Olguín ',86,1.00,'Econoprimer Blanco','galones',799.97,'MXN','','+IVA'),
(245,1047,'Raúl Olguín ',86,3.00,'Metalex amarillo Limòn 1023','galones',940.54,'MXN','','+IVA'),
(246,1048,'Raúl Olguín ',86,1.00,'Metalex amarillo limòn 1023','galones',940.54,'MXN','','+IVA'),
(247,1047,'Raúl Olguín ',86,15.00,'Thinner estandar sin envase','lts',34.06,'MXN','','+IVA'),
(248,1048,'Raúl Olguín ',86,5.00,'Thinner estandar sin envase','lts',34.06,'MXN','','+IVA'),
(249,1047,'Raúl Olguín ',87,106.00,'PTR 2-1/2\"x2-1/2\" cal.7 rojo (2  pzas)','kg',19.30,'MXN','','+IVA'),
(250,1047,'Raúl Olguín ',87,174.00,'PTR 2\"x2\" cal.11 verde (6 pzas)','kg',19.30,'MXN','','+IVA'),
(251,1047,'Raúl Olguín ',87,504.00,'PTR 3\"x3\" cal.7 rojo (8 pzas)','kg',19.30,'MXN','','+IVA'),
(252,1043,'Raúl Olguín ',88,24.00,'PTR 1\"x1\" calib.13 verde (2 pzas)','kg',19.30,'MXN','','+IVA'),
(253,760,'Nelly Mondragón',89,1.00,'Terminal de Ojo','pzs',10.00,'MXN','','+IVA'),
(254,760,'Nelly Mondragón',89,2.00,'Pinzas Tipo C11','pzs',300.00,'MXN','','+IVA'),
(255,1029,'Nelly Mondragón',97,70.00,'Barrenanclas de 1/2\"x4-1/2\"','pzs',9.90,'MXN','','+IVA'),
(256,1030,'Nelly Mondragón',97,50.00,'Barrenanclas 1/2\"x4-1/2\"','pzs',9.90,'MXN','','+IVA'),
(257,1030,'Nelly Mondragón',97,30.00,'Barrenanclas 3/4\"x6\"','pzs',33.00,'MXN','','+IVA'),
(259,1039,'Nelly Mondragón',91,20.00,'Soldadura 7018  3/32 Bohler','kg',65.00,'MXN','','+IVA'),
(260,760,'Nelly Mondragón',91,2.00,'Flexometro 5 Mts. Neon Cadena Weston','pzs',150.00,'MXN','','+IVA'),
(264,1048,'Raúl Olguín ',92,441.00,'PTR 3\"x3\" cal.7 rojo 7 piezas','kg',19.30,'MXN','','+IVA'),
(265,1048,'Raúl Olguín ',92,53.00,'PTR 2-1/2\"x2-1/2\" cal.7 rojo 1 pieza','kg',19.30,'MXN','','+IVA'),
(266,1048,'Raúl Olguín ',92,55.00,'Tubo 2-1/2\" ced.40 (C-7) 1 pieza','kg',19.30,'MXN','','+IVA'),
(267,1048,'Raúl Olguín ',92,6.00,'Varilla redondo sólido 1/2\" 1 pieza','kg',21.30,'MXN','','+IVA'),
(269,1048,'Raúl Olguín ',93,1.00,'Metalex amarillo limón ','pzs',3513.66,'MXN','','+IVA'),
(270,1048,'Raúl Olguín ',93,1.00,'Econo Primer Blanco ','pzs',2816.48,'MXN','','+IVA'),
(271,1048,'Raúl Olguín ',93,20.00,'Thinner estandar sin envase','lts',34.06,'MXN','','+IVA'),
(272,1030,'Nelly Mondragón',94,1.00,'Zapatos con Metatarzal No.7 Modelo 8522TG0','Par',827.59,'MXN','','+IVA'),
(273,1030,'Nelly Mondragón',95,75.00,'PTR 1\"X1\" Cal.10 Rojo 5 Piezas','kg',19.30,'MXN','','+IVA'),
(274,1030,'Nelly Mondragón',95,102.00,'PTR11/2 x 11/2 cal.11   5 piezas','kg',19.30,'MXN','','+IVA'),
(275,1030,'Nelly Mondragón',95,145.00,'PTR 2\"x2\" cal.11 verde  5 piezas','kg',19.30,'MXN','','+IVA'),
(276,1030,'Nelly Mondragón',95,32.00,'Solera 1/4 x 2\"      2 piezas','kg',23.20,'MXN','','+IVA'),
(277,1000,'Nelly Mondragón',96,3.00,'Camisola Mezclilla con reflejantes verdes talla M','pzs',260.00,'MXN','','+IVA'),
(278,1000,'Nelly Mondragón',96,10.00,'Guantes Soldador azul','Par',65.00,'MXN','','+IVA'),
(279,1000,'Nelly Mondragón',96,12.00,'Guantes chino payaso','Par',38.00,'MXN','','+IVA'),
(280,1000,'Nelly Mondragón',96,1.00,'Polainas Soldador','Par',68.00,'MXN','','+IVA'),
(281,1000,'Nelly Mondragón',96,4.00,'Mangas Soldador','Par',68.00,'MXN','','+IVA'),
(282,1000,'Nelly Mondragón',96,6.00,'Pecheras Soldador','pzs',68.00,'MXN','','+IVA'),
(283,1032,'Nelly Mondragón',97,15.00,'Barrenanclas 1/2\"x 4-1/2\"','pzs',9.90,'MXN','','+IVA'),
(284,1047,'Nelly Mondragón',97,100.00,'Disco de corte mini 41/2','pzs',7.00,'MXN','','+IVA'),
(285,1047,'Nelly Mondragón',97,12.00,'Disco Makita de 14\"','pzs',60.00,'MXN','','+IVA'),
(286,760,'Nelly Mondragón',97,5.00,'Tafilete','pzs',50.00,'MXN','','+IVA'),
(287,1049,'Raúl Olguín ',98,40.00,'Tornillos 5/16 x 3/4\" Galvanizados','pzs',1.21,'MXN','','+IVA'),
(288,1049,'Raúl Olguín ',98,40.00,'Arandela Plana Galvanizada 5/16\"','pzs',0.90,'MXN','','+IVA'),
(289,1049,'Raúl Olguín ',98,40.00,'Arandela de presión galvanizada','pzs',0.17,'MXN','','+IVA'),
(290,1029,'Manuel Zertuche',99,3.00,'Lentes de seguridad con graduaciòn 3','pzs',227.42,'MXN','','+IVA'),
(291,1029,'Manuel Zertuche',100,10.00,'Cable para pinza porta electrodo 1-0','mts',225.00,'MXN','','+IVA'),
(292,1029,'Manuel Zertuche',100,1.00,'Porta electrodo 500 Amperes','pzs',500.00,'MXN','','+IVA'),
(293,1029,'Manuel Zertuche',100,2.00,'Terminales para cable 1-0','pzs',95.00,'MXN','','+IVA'),
(294,1050,'Raúl Olguín ',101,36.00,'3 Piezas PTR 1\"x1\" calib.13 verde','kg',19.30,'MXN','','+IVA'),
(295,1050,'Raúl Olguín ',101,6.00,'1 Pieza Solera 3/16\" x 1\"','kg',23.20,'MXN','','+IVA'),
(296,1050,'Raúl Olguín ',101,4.00,'Bisagras Tubulares de 3/4','pzs',15.52,'MXN','','+IVA'),
(297,1050,'Raúl Olguín ',101,1.00,'Pasador Negro Mediano','pzs',65.00,'MXN','','+IVA'),
(298,1055,'Raúl Olguín ',103,252.00,'4 PTR 3\"x3\" calib.rojo','kg',19.30,'MXN','','+IVA'),
(299,1055,'Raúl Olguín ',103,106.00,'2 PTR 2-1/2 x 2-1/2 calib.rojo','kg',19.30,'MXN','','+IVA'),
(300,1055,'Raúl Olguín ',103,116.00,'4 PTR 2\"x2\" calib.11 verde','kg',19.30,'MXN','','+IVA'),
(301,1055,'Raúl Olguín ',103,32.00,' 1 Solera 1/4\"x4\"','kg',23.20,'MXN','','+IVA'),
(302,1030,'Manuel Zertuche',102,98.00,'1 Pieza Canal 6\" Mediana','kg',23.30,'MXN','','+IVA'),
(303,1055,'Raúl Olguín ',103,12.00,'1 Solera 3/16\" x 2\"','kg',23.20,'MXN','','+IVA'),
(304,1055,'Raúl Olguín ',104,20.00,'Soldadura 7018 de 3/32 ','kg',65.00,'MXN','','+IVA'),
(305,1055,'Raúl Olguín ',104,10.00,'Discos Laminados 4-1/2 G80','pzs',25.00,'MXN','','+IVA'),
(306,1055,'Raúl Olguín ',104,10.00,'Discos desbaste 4-1/2 x 1/4 K200','pzs',20.00,'MXN','','+IVA'),
(307,1055,'Raúl Olguín ',104,12.00,'crayones tipo jaboncillo','pzs',3.50,'MXN','','+IVA'),
(308,1057,'Raúl Olguín ',105,315.00,'5 Piezas PTR 3\"x3\" cali.7 rojo','kg',19.30,'MXN','','+IVA'),
(309,1057,'Raúl Olguín ',105,106.00,'2 Piezas PTR 2-1/2\"x2-1/2\" cal.7 rojo','kg',19.30,'MXN','','+IVA'),
(310,1057,'Raúl Olguín ',105,116.00,'4 Piezas PTR 2\"x2\" calib.11 verde','kg',19.30,'MXN','','+IVA'),
(311,1057,'Raúl Olguín ',105,16.00,'1 Solera 1/4\"x2\"','kg',23.20,'MXN','','+IVA'),
(312,1032,'Raul Domingo',106,40.00,'3 PTR 1-1/2\"x1-1/2 calib. 14','kg',19.30,'MXN','','+IVA'),
(313,1032,'Raul Domingo',106,26.00,'3 PTR 1 x 1\" calib.14','kg',19.30,'MXN','','+IVA'),
(314,1057,'Raúl Olguín ',107,63.00,'1 Pieza PTR 3· calib. Rojo','kg',19.30,'MXN','','+IVA'),
(316,1057,'Raúl Olguín ',108,100.00,'Disco Corte  Metal 4-1/2\"','pzs',8.62,'MXN','','+IVA'),
(317,1057,'Raúl Olguín ',108,7.00,'Disco Desbaste 4-1/2\"','pzs',20.00,'MXN','','+IVA'),
(318,1057,'Raúl Olguín ',108,6.00,'Disco corte metal 14\" Makita Gris','pzs',65.00,'MXN','','+IVA'),
(319,1001,'Nelly Mondragón',109,120.00,'4 Piezas Angulo 2\" espesor 1/4\"','kg',22.50,'MXN','','+IVA'),
(320,1033,'Nelly Mondragón',110,2.00,'Pantalones Talla 34 mezclilla','pzs',190.00,'MXN','Ever y Enrique','+IVA'),
(321,1033,'Nelly Mondragón',110,2.00,'Camisas mezclilla Talla M y G','pzs',260.00,'MXN','Eve y Raúl Olguin','+IVA'),
(322,1033,'Nelly Mondragón',110,12.00,'Guantes chino payaso','Par',38.00,'MXN','','+IVA'),
(323,1033,'Nelly Mondragón',110,15.00,'Mascarillas Moldex N95 negra','pzs',40.00,'MXN','','+IVA'),
(324,1030,'Nelly Mondragón',110,2.00,'Pecheras soldador','pzs',68.00,'MXN','','+IVA'),
(325,1030,'Nelly Mondragón',110,2.00,'Pares de Mangas','Par',68.00,'MXN','','+IVA'),
(326,1050,'Raúl Olguín ',111,14.00,'1 Pieza Angulo 3/16 x 1 1/4','kg',22.80,'MXN','','+IVA'),
(327,1050,'Raúl Olguín ',111,3.00,'1 Pieza Varilla redonda 5/16','kg',24.80,'MXN','','+IVA'),
(328,1050,'Raúl Olguín ',112,1.00,'1 Rollo malla DH-4012 s/planchado secc.3.0','pzs',1867.65,'MXN','','+IVA'),
(329,1050,'Raúl Olguín ',113,1.00,'Esm. Metalex Negro acabado','galones',940.54,'MXN','','+IVA'),
(330,1001,'Raul Domingo',114,228.00,'6 Ángulos 2.5 x1/4 x 6 mts','kg',22.80,'MXN','','+IVA'),
(331,1061,'Raúl Olguín ',115,211.00,'Placa 3/8\" x 3 x 10 pies','kg',17.30,'MXN','','+IVA'),
(332,1061,'Raúl Olguín ',115,30.00,'Angulo 1/4\" x 2 x 6.10 mts','kg',22.80,'MXN','','+IVA'),
(333,1062,'Raúl Olguín ',116,756.00,'12 PTR 3\"x3\" calib.7 rojo','kg',19.30,'MXN','','+IVA'),
(334,1062,'Raúl Olguín ',116,106.00,'2 PTR 2-1/2x 2-1/2 calib.7 rojo','kg',19.30,'MXN','','+IVA'),
(335,1062,'Raúl Olguín ',116,110.00,'2 TUBOS 2-1/2 ced.40','kg',19.30,'MXN','','+IVA'),
(336,1062,'Raúl Olguín ',116,10.00,'1 Varilla de 1/2 x 9.15 mts','kg',17.50,'MXN','','+IVA'),
(337,1032,'Nelly Mondragón',117,1.00,'Zapatos con metatarzal 8522TGO No.7','Par',827.59,'MXN','José Luis Martínez','+IVA'),
(338,1029,'Nelly Mondragón',117,2.00,'Zapatos con metatarzal 8522TGO No.7','Par',827.59,'MXN','Ever Asael y Enrique Carrola','+IVA'),
(339,1030,'Nelly Mondragón',125,50.00,'Barrenanclas 1/2\"x4-1/2','pzs',9.90,'MXN','','+IVA'),
(340,1030,'Nelly Mondragón',125,29.00,'Barrenanclas de 3/4 x 7 o 8','pzs',39.00,'MXN','','+IVA'),
(341,1030,'Nelly Mondragón',125,150.00,'Barrenanclas 1/2\"x4-1/2','pzs',9.90,'MXN','','+IVA'),
(342,1062,'Raúl Olguín ',118,20.00,'Soldadura 7018 3/32 BOHLER','kg',65.00,'MXN','','+IVA'),
(343,1062,'Raúl Olguín ',118,50.00,'Disco de Corte Metal 4-1/2\"x040 K100','pzs',8.62,'MXN','','+IVA'),
(344,1062,'Raúl Olguín ',118,2.00,'Discos Desbaste 4-1/2\"x1/4\" K200','pzs',20.00,'MXN','','+IVA'),
(345,1062,'Raúl Olguín ',118,2.00,'Makita Disco corte Metal 14\" gris','pzs',65.00,'MXN','','+IVA'),
(346,1062,'Raúl Olguín ',118,20.00,'Crayón tipo jaboncillo','pzs',3.50,'MXN','','+IVA'),
(347,1033,'Nelly Mondragón',119,12.00,'Guantes chino doble palma ','Par',38.00,'MXN','','+IVA'),
(348,1033,'Nelly Mondragón',119,15.00,'Overoles desechables TXG','pzs',85.00,'MXN','','+IVA'),
(349,1033,'Nelly Mondragón',119,15.00,'Mascarillas 2600N95 negras','pzs',40.00,'MXN','','+IVA'),
(350,1032,'Nelly Mondragón',119,1.00,'Pantalón Mezclilla azul T.36   José Luis Martínez','pzs',190.00,'MXN','','+IVA'),
(351,1032,'Nelly Mondragón',119,3.00,'Pecheras carnaza soldador','pzs',68.00,'MXN','','+IVA'),
(352,1032,'Nelly Mondragón',119,3.00,'Mangas carnaza soldador','Par',68.00,'MXN','','+IVA'),
(353,1032,'Nelly Mondragón',119,3.00,'Guantes carnaza azul Soldador','Par',65.00,'MXN','','+IVA'),
(354,760,'Nelly Mondragón',119,2.00,'zapatos No.6 y 8  Gerardo y Saul','Par',200.00,'MXN','reposición  ','+IVA'),
(355,1029,'Nelly Mondragón',120,1.00,'Martillo Bola con mango Fibra Vidrio Marca DOGOTULS 24 OZ','pzs',167.24,'MXN','','+IVA'),
(356,1029,'Nelly Mondragón',120,1.00,'Nivel Torpedo 8\" marca Stanley','pzs',103.45,'MXN','','+IVA'),
(357,1029,'Nelly Mondragón',121,1.00,'Candado 38mm','pzs',43.10,'MXN','','+IVA'),
(358,1029,'Nelly Mondragón',122,1.00,'Llave Mixta de 1/2','pzs',80.17,'MXN','','+IVA'),
(359,1029,'Nelly Mondragón',122,1.00,'Broca 1/4','pzs',19.83,'MXN','','+IVA'),
(360,1029,'Nelly Mondragón',122,1.00,'Broca 3/16','pzs',22.41,'MXN','','+IVA'),
(361,1029,'Nelly Mondragón',122,1.00,'Broca 5/16','pzs',62.93,'MXN','','+IVA'),
(362,1063,'Raúl Olguín ',123,20.00,' Thinner estandar sin envase','lts',34.06,'MXN','','+IVA'),
(363,1063,'Raúl Olguín ',124,504.00,'8 Piezas PTR 3\" ROJO','kg',19.30,'MXN','','+IVA'),
(364,1063,'Raúl Olguín ',124,58.00,'2 Piezas PTR 2\" Verde','kg',19.30,'MXN','','+IVA'),
(365,1029,'Manuel Zertuche',125,20.00,'Barrenanclas 1/2 x 4-1/2','pzs',9.90,'MXN','','+IVA');
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `after_compras_update` AFTER UPDATE ON `compras`
 FOR EACH ROW BEGIN
CALL calculate_and_update_totals(NEW.id_oc);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `consumibles`
--

DROP TABLE IF EXISTS `consumibles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumibles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `proveedor` varchar(100) NOT NULL,
  `cantidad` decimal(10,2) DEFAULT NULL,
  `minimo` decimal(10,2) NOT NULL,
  `costo` decimal(10,2) NOT NULL,
  `unidad` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumibles`
--

LOCK TABLES `consumibles` WRITE;
/*!40000 ALTER TABLE `consumibles` DISABLE KEYS */;
/*!40000 ALTER TABLE `consumibles` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `after_insert_consumibles` AFTER INSERT ON `consumibles`
 FOR EACH ROW BEGIN
INSERT INTO `historial_consumibles` (`id_consumible`, `cambio`, `tipo`, `fecha`, `descripcion`)
VALUES (
NEW.id,
NEW.cantidad,
'entrada',
NOW(),
'Registro inicial'
);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `after_update_consumibles` AFTER UPDATE ON `consumibles`
 FOR EACH ROW BEGIN
IF NEW.cantidad <> OLD.cantidad THEN
INSERT INTO `historial_consumibles` (`id_consumible`, `cambio`, `tipo`, `fecha`, `descripcion`)
VALUES (
NEW.id,
ABS(NEW.cantidad - OLD.cantidad),
IF(NEW.cantidad > OLD.cantidad, 'entrada', 'salida'),
NOW(),
CONCAT('Cambio de ', OLD.cantidad, ' a ', NEW.cantidad)
);
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cronograma`
--

DROP TABLE IF EXISTS `cronograma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cronograma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pieza` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `id_previa` int(11) DEFAULT NULL,
  `duracion` decimal(10,2) NOT NULL,
  `fecha_inicial` date DEFAULT NULL,
  `fecha_final` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pieza` (`id_pieza`),
  KEY `id_trabajador` (`id_trabajador`),
  CONSTRAINT `cronograma_ibfk_1` FOREIGN KEY (`id_pieza`) REFERENCES `piezas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronograma`
--

LOCK TABLES `cronograma` WRITE;
/*!40000 ALTER TABLE `cronograma` DISABLE KEYS */;
/*!40000 ALTER TABLE `cronograma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cronograma_fijo`
--

DROP TABLE IF EXISTS `cronograma_fijo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cronograma_fijo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_trabajador` int(11) NOT NULL,
  `id_pieza` int(11) NOT NULL,
  `fecha_inicial` date NOT NULL,
  `fecha_final` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_trabajador` (`id_trabajador`),
  KEY `id_pieza` (`id_pieza`),
  CONSTRAINT `cronograma_fijo_ibfk_2` FOREIGN KEY (`id_pieza`) REFERENCES `piezas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronograma_fijo`
--

LOCK TABLES `cronograma_fijo` WRITE;
/*!40000 ALTER TABLE `cronograma_fijo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cronograma_fijo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(255) DEFAULT NULL,
  `nombre_compania` varchar(255) DEFAULT NULL,
  `registro_patronal` varchar(50) DEFAULT NULL,
  `rfc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `razon_social` (`razon_social`,`rfc`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES
(12,'Suministros Industriales Modernos','SIMSA','SIM-081113-M28','D4562590106');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encargado`
--

DROP TABLE IF EXISTS `encargado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `encargado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pieza` int(11) DEFAULT NULL,
  `id_trabajador` int(11) DEFAULT NULL,
  `tiempo` decimal(10,2) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `ot_tardia` int(11) DEFAULT NULL,
  `pieza_tardia` varchar(255) DEFAULT NULL,
  `actividad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pieza` (`id_pieza`),
  KEY `id_trabajador` (`id_trabajador`),
  KEY `ot_tardia` (`ot_tardia`)
) ENGINE=InnoDB AUTO_INCREMENT=1324 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encargado`
--

LOCK TABLES `encargado` WRITE;
/*!40000 ALTER TABLE `encargado` DISABLE KEYS */;
INSERT INTO `encargado` VALUES
(48,19,11,8.50,1,'2025-03-20',NULL,NULL,13),
(49,19,11,8.50,6,'2025-03-20',NULL,NULL,13),
(50,19,11,8.50,5,'2025-03-21',NULL,NULL,13),
(60,46,2348,9.50,0,'2025-04-14',NULL,NULL,60),
(61,46,2349,9.50,0,'2025-04-14',NULL,NULL,60),
(62,46,2355,9.50,0,'2025-04-10',NULL,NULL,60),
(64,20,2349,9.50,0,'2025-04-10',NULL,NULL,78),
(66,20,2357,9.50,0,'2025-04-10',NULL,NULL,81),
(67,20,2354,4.50,0,'2025-04-10',NULL,NULL,82),
(68,46,2354,4.50,0,'2025-04-10',NULL,NULL,60),
(69,46,2354,0.50,0,'2025-04-10',NULL,NULL,60),
(72,46,2355,9.50,0,'2025-04-14',NULL,NULL,60),
(73,46,2354,9.50,0,'2025-04-14',NULL,NULL,60),
(74,46,2357,9.50,0,'2025-04-14',NULL,NULL,60),
(75,46,2348,9.50,0,'2025-04-11',NULL,NULL,60),
(76,46,2349,9.50,0,'2025-04-11',NULL,NULL,60),
(77,46,2355,9.50,0,'2025-04-11',NULL,NULL,60),
(78,46,2354,9.50,0,'2025-04-11',NULL,NULL,60),
(79,46,2357,9.50,0,'2025-04-11',NULL,NULL,60),
(80,25,2348,0.00,0,'2025-04-10',NULL,NULL,15),
(88,27,2349,9.50,0,'2025-04-15',NULL,NULL,31),
(92,27,2355,9.50,0,'2025-04-15',NULL,NULL,31),
(93,27,2348,9.50,0,'2025-04-15',NULL,NULL,31),
(94,27,2354,9.50,0,'2025-04-15',NULL,NULL,31),
(101,27,2346,9.50,0,'2025-04-15',NULL,NULL,31),
(104,27,2357,9.50,0,'2025-04-15',NULL,NULL,31),
(105,47,2322,9.50,0,'2025-04-15',NULL,NULL,35),
(107,46,2346,9.50,0,'2025-04-14',NULL,NULL,60),
(108,47,2322,9.50,0,'2025-04-14',NULL,NULL,35),
(109,47,2322,9.50,0,'2025-04-10',NULL,NULL,35),
(111,47,2322,9.50,0,'2025-04-11',NULL,NULL,35),
(112,47,11,9.50,0,'2025-04-15',NULL,NULL,35),
(113,47,2322,9.50,0,'2025-04-16',NULL,NULL,35),
(116,31,2341,0.00,0,'2025-04-16',NULL,NULL,18),
(118,31,2341,0.00,0,'2025-04-14',NULL,NULL,18),
(119,31,2341,0.00,0,'2025-04-15',NULL,NULL,NULL),
(120,31,2341,0.00,0,'2024-02-16',NULL,NULL,18),
(122,46,2348,9.50,0,'2025-04-16',NULL,NULL,60),
(123,46,2349,9.50,0,'2025-04-16',NULL,NULL,60),
(124,46,2355,9.50,0,'2025-04-16',NULL,NULL,60),
(125,46,2354,9.50,0,'2025-04-16',NULL,NULL,60),
(126,46,2346,9.50,0,'2025-04-16',NULL,NULL,60),
(127,46,2357,9.50,0,'2025-04-16',NULL,NULL,60),
(154,27,2349,9.50,0,'2025-04-17',NULL,NULL,31),
(155,27,2357,9.50,0,'2025-04-17',NULL,NULL,31),
(156,46,2348,9.50,0,'2025-04-17',NULL,NULL,60),
(157,46,2354,9.50,0,'2025-04-17',NULL,NULL,60),
(158,46,2355,9.50,0,'2025-04-17',NULL,NULL,60),
(159,46,2346,9.50,0,'2025-04-17',NULL,NULL,60),
(164,32,2322,9.50,0,'2025-04-18',NULL,NULL,19),
(166,32,2355,9.50,0,'2025-04-18',NULL,NULL,19),
(167,32,2346,9.50,0,'2025-04-18',NULL,NULL,19),
(168,32,2348,9.50,0,'2025-04-18',NULL,NULL,19),
(169,27,2349,9.50,0,'2025-04-21',NULL,NULL,31),
(170,27,2357,9.50,0,'2025-04-21',NULL,NULL,31),
(171,27,2348,9.50,0,'2025-04-21',NULL,NULL,31),
(172,27,2346,9.50,0,'2025-04-21',NULL,NULL,31),
(173,32,2357,9.50,0,'2025-04-18',NULL,NULL,19),
(175,32,2349,9.50,0,'2025-04-18',NULL,NULL,19),
(176,46,2355,9.50,0,'2025-04-21',NULL,NULL,60),
(177,46,2354,9.50,0,'2025-04-21',NULL,NULL,60),
(182,47,2322,9.50,0,'2025-04-21',NULL,NULL,35),
(183,47,2322,9.50,0,'2025-04-17',NULL,NULL,35),
(184,32,2354,9.50,0,'2025-04-18',NULL,NULL,19),
(185,47,11,8.50,0,'2025-04-22',NULL,NULL,35),
(186,27,11,0.00,0,'2025-04-21',NULL,NULL,31),
(187,27,2349,9.50,0,'2025-04-22',NULL,NULL,31),
(188,27,2354,9.50,0,'2025-04-22',NULL,NULL,31),
(189,27,2348,9.50,0,'2025-04-22',NULL,NULL,31),
(190,27,2357,9.50,0,'2025-04-22',NULL,NULL,31),
(191,27,2355,9.50,0,'2025-04-22',NULL,NULL,31),
(192,27,2346,9.50,0,'2025-04-22',NULL,NULL,31),
(193,47,2322,9.50,0,'2025-04-22',NULL,NULL,35),
(200,47,2322,10.00,0,'2025-04-23',NULL,NULL,35),
(201,46,2349,10.00,0,'2025-04-23',NULL,NULL,60),
(202,46,2357,10.00,0,'2025-04-23',NULL,NULL,60),
(203,27,2348,10.00,0,'2025-04-23',NULL,NULL,31),
(204,27,2354,10.00,0,'2025-04-23',NULL,NULL,31),
(205,27,2355,10.00,0,'2025-04-23',NULL,NULL,31),
(206,27,2346,10.00,0,'2025-04-23',NULL,NULL,31),
(207,27,2349,9.50,0,'2025-04-24',NULL,NULL,31),
(208,27,2354,9.50,0,'2025-04-24',NULL,NULL,31),
(209,27,2348,9.00,0,'2025-04-24',NULL,NULL,31),
(210,27,2357,9.50,0,'2025-04-24',NULL,NULL,31),
(211,27,2355,9.50,0,'2025-04-24',NULL,NULL,31),
(212,27,2346,9.50,0,'2025-04-24',NULL,NULL,31),
(213,0,2349,9.50,0,'2025-04-25',NULL,NULL,60),
(214,0,2357,9.50,0,'2025-04-25',NULL,NULL,60),
(215,25,2354,0.00,0,'2025-04-25',NULL,NULL,NULL),
(216,47,2322,9.50,0,'2025-04-24',NULL,NULL,35),
(217,47,2322,9.50,0,'2025-04-25',NULL,NULL,35),
(219,0,2355,9.50,0,'2025-04-25',NULL,NULL,NULL),
(220,0,2346,9.50,0,'2025-04-25',NULL,NULL,NULL),
(221,0,2348,9.50,0,'2025-04-25',NULL,NULL,NULL),
(222,0,2348,9.50,0,'2025-04-28',NULL,NULL,NULL),
(223,0,2355,9.50,0,'2025-04-28',NULL,NULL,NULL),
(224,0,2354,9.50,0,'2025-04-28',NULL,NULL,NULL),
(225,0,2346,9.50,0,'2025-04-28',NULL,NULL,NULL),
(226,0,2349,9.50,0,'2025-04-28',NULL,NULL,31),
(227,0,2357,9.50,0,'2025-04-28',NULL,NULL,31),
(228,0,2348,9.50,0,'2025-04-29',NULL,NULL,NULL),
(229,0,2355,9.50,0,'2025-04-29',NULL,NULL,NULL),
(230,0,2349,9.50,0,'2025-04-29',NULL,NULL,NULL),
(231,0,2357,9.50,0,'2025-04-29',NULL,NULL,NULL),
(232,0,2354,9.50,0,'2025-04-29',NULL,NULL,93),
(233,0,2346,9.50,0,'2025-04-29',NULL,NULL,93),
(236,47,2322,9.50,0,'2025-04-29',NULL,NULL,35),
(237,47,2322,9.50,0,'2025-04-28',NULL,NULL,35),
(239,32,2349,9.50,0,'2025-05-01',NULL,NULL,19),
(240,32,2354,9.50,0,'2025-05-01',NULL,NULL,19),
(241,32,2348,9.50,0,'2025-05-01',NULL,NULL,19),
(242,32,2357,9.50,0,'2025-05-01',NULL,NULL,19),
(243,32,2355,9.50,0,'2025-05-01',NULL,NULL,19),
(244,32,2346,9.50,0,'2025-05-01',NULL,NULL,19),
(246,0,2349,9.50,0,'2025-05-02',NULL,NULL,36),
(247,0,2357,9.50,0,'2025-05-02',NULL,NULL,36),
(248,0,2348,9.50,0,'2025-05-02',NULL,NULL,36),
(249,0,2355,9.50,0,'2025-05-02',NULL,NULL,36),
(252,0,2354,9.50,0,'2025-04-02',NULL,NULL,93),
(253,0,2346,9.50,0,'2025-04-02',NULL,NULL,93),
(254,0,2354,9.50,0,'2025-05-02',NULL,NULL,93),
(255,0,2346,9.50,0,'2025-05-02',NULL,NULL,93),
(256,32,2322,0.00,0,'2025-05-01',NULL,NULL,19),
(257,32,2322,9.50,0,'2025-05-01',NULL,NULL,NULL),
(258,47,2322,9.50,0,'2025-05-06',NULL,NULL,35),
(259,47,2322,9.50,0,'2025-05-02',NULL,NULL,35),
(260,0,2348,9.50,0,'2025-05-06',NULL,NULL,36),
(261,0,2355,9.50,0,'2025-05-06',NULL,NULL,36),
(262,0,2349,9.50,0,'2025-05-06',NULL,NULL,36),
(263,27,2354,9.50,0,'2025-05-06',NULL,NULL,NULL),
(264,27,2346,9.50,0,'2025-05-06',NULL,NULL,NULL),
(266,0,2348,9.50,0,'2025-05-05',NULL,NULL,36),
(267,0,2355,9.50,0,'2025-05-05',NULL,NULL,36),
(268,0,2349,9.50,0,'2025-05-05',NULL,NULL,36),
(271,27,2357,9.50,0,'2025-05-06',NULL,NULL,31),
(272,0,2357,9.50,0,'2025-05-05',NULL,NULL,31),
(273,0,2354,9.50,0,'2025-05-05',NULL,NULL,36),
(274,0,2346,9.50,0,'2025-05-05',NULL,NULL,36),
(276,0,2322,0.00,0,'2025-05-05',NULL,NULL,NULL),
(277,47,2322,9.50,0,'2025-05-05',NULL,NULL,NULL),
(278,0,2349,10.00,0,'2025-05-07',NULL,NULL,93),
(279,0,2355,10.00,0,'2025-05-07',NULL,NULL,93),
(280,0,2354,10.00,0,'2025-05-07',NULL,NULL,93),
(281,27,2348,10.00,0,'2025-05-07',NULL,NULL,31),
(282,27,2346,10.00,0,'2025-05-07',NULL,NULL,31),
(283,27,2357,10.00,0,'2025-05-07',NULL,NULL,31),
(284,47,2322,10.00,0,'2025-05-07',NULL,NULL,35),
(286,0,2343,10.00,1,'2025-05-02',NULL,NULL,NULL),
(287,0,2345,10.00,1,'2025-05-02',NULL,NULL,NULL),
(288,0,2343,10.00,1,'2025-05-05',NULL,NULL,NULL),
(289,0,2353,10.00,1,'2025-05-05',NULL,NULL,NULL),
(290,0,2343,10.00,1,'2025-05-06',NULL,NULL,NULL),
(291,0,2353,9.00,1,'2025-05-06',NULL,NULL,NULL),
(292,0,2343,10.00,1,'2025-05-06',NULL,NULL,NULL),
(293,0,2353,9.00,1,'2025-05-06',NULL,NULL,NULL),
(294,0,2343,10.00,1,'2025-05-07',NULL,NULL,NULL),
(295,0,2353,10.00,1,'2025-05-07',NULL,NULL,NULL),
(296,0,2343,9.50,1,'2025-05-08',NULL,NULL,NULL),
(297,0,2353,9.50,1,'2025-05-08',NULL,NULL,NULL),
(298,0,2343,8.00,1,'2025-05-01',NULL,NULL,NULL),
(299,0,2345,8.00,1,'2025-05-01',NULL,NULL,NULL),
(300,0,2319,8.00,1,'2025-05-01',NULL,NULL,NULL),
(301,0,2352,8.00,1,'2025-05-01',NULL,NULL,NULL),
(302,0,2353,8.00,1,'2025-05-01',NULL,NULL,NULL),
(303,0,2319,10.00,1,'2025-05-02',NULL,NULL,NULL),
(304,0,2352,10.00,1,'2025-05-02',NULL,NULL,NULL),
(305,0,2353,10.00,1,'2025-05-02',NULL,NULL,NULL),
(306,0,2319,10.00,1,'2025-05-02',NULL,NULL,NULL),
(307,0,2352,10.00,1,'2025-05-02',NULL,NULL,NULL),
(308,0,2353,10.00,1,'2025-05-02',NULL,NULL,NULL),
(309,0,2319,10.00,1,'2025-05-05',NULL,NULL,NULL),
(310,0,2352,10.00,1,'2025-05-05',NULL,NULL,NULL),
(311,0,2319,10.00,1,'2025-05-05',NULL,NULL,NULL),
(312,0,2352,10.00,1,'2025-05-05',NULL,NULL,NULL),
(313,0,2319,11.50,1,'2025-05-06',NULL,NULL,NULL),
(314,0,2319,10.00,1,'2025-05-07',NULL,NULL,NULL),
(315,0,2352,10.00,1,'2025-05-07',NULL,NULL,NULL),
(316,0,2319,9.50,1,'2025-05-08',NULL,NULL,NULL),
(317,0,2352,9.50,1,'2025-05-08',NULL,NULL,NULL),
(320,0,2355,9.50,0,'2025-05-08',NULL,NULL,40),
(321,0,2354,9.50,0,'2025-05-08',NULL,NULL,40),
(322,0,2348,9.50,0,'2025-05-08',NULL,NULL,36),
(323,0,2349,9.50,0,'2025-05-08',NULL,NULL,36),
(324,0,2346,9.50,0,'2025-05-08',NULL,NULL,NULL),
(326,27,2357,9.50,0,'2025-05-08',NULL,NULL,NULL),
(327,27,2322,9.50,0,'2025-05-08',NULL,NULL,15),
(328,0,2343,9.50,1,'2025-05-09',NULL,NULL,NULL),
(329,0,2353,9.50,1,'2025-05-09',NULL,NULL,NULL),
(330,0,2319,9.50,1,'2025-05-09',NULL,NULL,NULL),
(331,0,2352,9.50,1,'2025-05-09',NULL,NULL,NULL),
(332,0,2319,2.00,0,'2025-05-08',NULL,NULL,NULL),
(333,0,2352,2.00,0,'2025-05-08',NULL,NULL,NULL),
(334,0,2354,9.50,1,'2025-05-09',NULL,NULL,NULL),
(335,0,2346,9.50,1,'2025-05-09',NULL,NULL,NULL),
(336,22,2352,9.50,1,'2025-05-12',NULL,NULL,14),
(337,22,2319,9.50,1,'2025-05-12',NULL,NULL,14),
(338,22,2354,9.50,1,'2025-05-12',NULL,NULL,14),
(340,0,2353,9.50,1,'2025-05-12',NULL,NULL,NULL),
(350,22,2354,9.50,1,'2025-05-13',NULL,NULL,14),
(351,22,2321,8.50,1,'2025-05-13',NULL,NULL,14),
(352,22,2350,8.50,1,'2025-05-13',NULL,NULL,14),
(353,22,2346,9.50,1,'2025-05-13',NULL,NULL,14),
(362,0,2353,9.50,1,'2025-05-13',NULL,NULL,NULL),
(363,0,2343,9.50,1,'2025-05-13',NULL,NULL,NULL),
(364,0,2319,9.50,1,'2025-05-13',NULL,NULL,NULL),
(367,0,2343,10.00,1,'2025-05-14',NULL,NULL,NULL),
(368,0,2353,10.00,1,'2025-05-14',NULL,NULL,NULL),
(369,0,2352,10.00,1,'2025-05-14',NULL,NULL,NULL),
(370,0,2319,10.00,1,'2025-05-14',NULL,NULL,NULL),
(371,0,2354,10.00,1,'2025-05-14',NULL,NULL,NULL),
(372,0,2346,10.00,1,'2025-05-14',NULL,NULL,NULL),
(375,0,2349,9.50,0,'2025-05-09',NULL,NULL,15),
(376,0,2357,9.50,0,'2025-05-09',NULL,NULL,15),
(377,0,2348,9.50,0,'2025-05-09',NULL,NULL,NULL),
(378,0,2355,9.50,0,'2025-05-09',NULL,NULL,NULL),
(379,0,2348,9.50,0,'2025-05-12',NULL,NULL,36),
(380,0,2355,9.50,0,'2025-05-12',NULL,NULL,36),
(381,0,2348,9.50,0,'2025-05-13',NULL,NULL,36),
(382,0,2355,9.50,0,'2025-05-13',NULL,NULL,36),
(388,27,2349,10.00,0,'2025-05-14',NULL,NULL,NULL),
(389,27,2349,9.50,0,'2025-05-12',NULL,NULL,15),
(390,27,2357,9.50,0,'2025-05-12',NULL,NULL,15),
(391,27,2349,9.50,0,'2025-05-13',NULL,NULL,15),
(392,27,2357,9.50,0,'2025-05-13',NULL,NULL,15),
(393,0,2322,9.50,0,'2025-05-09',NULL,NULL,15),
(394,0,2322,9.50,0,'2025-05-12',NULL,NULL,15),
(395,0,2322,9.50,0,'2025-05-13',NULL,NULL,15),
(396,0,2322,10.00,0,'2025-05-14',NULL,NULL,15),
(397,0,2357,10.00,0,'2025-05-14',NULL,NULL,40),
(398,0,2348,10.00,0,'2025-05-14',NULL,NULL,36),
(399,0,2355,10.00,0,'2025-05-14',NULL,NULL,36),
(400,22,2352,9.50,1,'2025-05-13',NULL,NULL,14),
(401,22,2346,9.50,0,'2025-05-12',NULL,NULL,14),
(402,22,2343,9.50,0,'2025-05-12',NULL,NULL,14),
(403,0,2352,1.50,1,'2025-05-14',NULL,NULL,NULL),
(404,0,2319,1.50,1,'2025-05-14',NULL,NULL,NULL),
(405,0,2354,9.50,1,'2025-05-15',NULL,NULL,NULL),
(406,0,2319,9.50,1,'2025-05-15',NULL,NULL,NULL),
(407,0,2352,9.50,1,'2025-05-15',NULL,NULL,NULL),
(408,0,2349,0.00,0,'2025-05-15',NULL,NULL,NULL),
(409,0,2355,0.00,0,'2025-05-15',NULL,NULL,NULL),
(413,0,2354,9.50,1,'2025-05-16',NULL,NULL,NULL),
(414,0,2352,1.50,1,'2025-05-15',NULL,NULL,NULL),
(415,0,2319,1.50,1,'2025-05-15',NULL,NULL,NULL),
(416,0,2352,9.50,1,'2025-05-16',NULL,NULL,NULL),
(417,0,2319,9.50,1,'2025-05-16',NULL,NULL,NULL),
(418,0,2353,9.50,1,'2025-05-16',NULL,NULL,NULL),
(419,0,2343,9.50,1,'2025-05-16',NULL,NULL,NULL),
(430,0,2354,9.50,0,'2025-05-20',NULL,NULL,NULL),
(431,0,2352,9.50,0,'2025-05-20',NULL,NULL,NULL),
(432,0,2319,9.50,0,'2025-05-20',NULL,NULL,NULL),
(433,0,2343,12.00,1,'2025-05-20',NULL,NULL,NULL),
(434,0,2350,12.00,1,'2025-05-20',NULL,NULL,NULL),
(435,0,2352,9.50,1,'2025-05-19',NULL,NULL,NULL),
(436,0,2319,9.50,1,'2025-05-19',NULL,NULL,NULL),
(437,0,2354,9.50,1,'2025-05-19',NULL,NULL,NULL),
(438,0,2343,12.00,1,'2025-05-15',NULL,NULL,NULL),
(439,0,2343,9.50,1,'2025-05-19',NULL,NULL,NULL),
(440,0,2353,9.50,0,'2025-05-15',NULL,NULL,NULL),
(441,0,2352,1.50,0,'2025-05-16',NULL,NULL,NULL),
(442,0,2319,1.50,0,'2025-05-16',NULL,NULL,NULL),
(443,0,2353,0.00,0,'2025-05-19',NULL,NULL,NULL),
(444,0,2353,0.00,0,'2025-05-20',NULL,NULL,NULL),
(445,0,2346,0.00,0,'2025-05-19',NULL,NULL,NULL),
(446,0,2346,0.00,0,'2025-05-20',NULL,NULL,NULL),
(448,0,2352,2.00,0,'2025-05-20',NULL,NULL,NULL),
(449,0,2319,2.00,0,'2025-05-20',NULL,NULL,NULL),
(452,0,2352,10.00,0,'2025-05-21',NULL,NULL,NULL),
(453,0,2319,10.00,0,'2025-05-21',NULL,NULL,NULL),
(454,0,2354,10.00,0,'2025-05-21',NULL,NULL,NULL),
(455,0,2353,9.50,0,'2025-05-21',NULL,NULL,NULL),
(457,0,2350,8.50,0,'2025-05-21',NULL,NULL,NULL),
(458,0,2343,12.00,0,'2025-05-21',NULL,NULL,NULL),
(459,0,2346,0.00,0,'2025-05-15',NULL,NULL,NULL),
(460,0,2346,0.00,0,'2025-05-16',NULL,NULL,NULL),
(461,0,2346,0.00,0,'2025-05-21',NULL,NULL,NULL),
(462,0,2352,9.50,0,'2025-05-22',NULL,NULL,NULL),
(463,0,2319,9.50,0,'2025-05-22',NULL,NULL,NULL),
(464,0,2343,9.50,0,'2025-05-22',NULL,NULL,NULL),
(465,0,2354,9.50,0,'2025-05-22',NULL,NULL,NULL),
(466,0,2350,9.00,0,'2025-05-22',NULL,NULL,NULL),
(467,0,2352,9.50,0,'2025-05-23',NULL,NULL,NULL),
(468,0,2319,9.50,0,'2025-05-23',NULL,NULL,NULL),
(469,0,2354,9.50,0,'2025-05-23',NULL,NULL,NULL),
(470,0,2350,9.50,0,'2025-05-23',NULL,NULL,NULL),
(471,0,2343,9.50,0,'2025-05-23',NULL,NULL,NULL),
(472,61,2349,9.50,0,'2025-05-15',NULL,NULL,NULL),
(473,61,2348,9.50,0,'2025-05-15',NULL,NULL,NULL),
(474,61,2355,9.50,0,'2025-05-15',NULL,NULL,NULL),
(475,61,2357,9.50,0,'2025-05-15',NULL,NULL,NULL),
(476,62,2355,9.50,0,'2025-05-16',NULL,NULL,NULL),
(477,61,2349,0.00,0,'2025-05-16',NULL,NULL,NULL),
(478,61,2348,0.00,0,'2025-05-16',NULL,NULL,NULL),
(479,62,2357,9.50,0,'2025-05-16',NULL,NULL,NULL),
(480,61,2349,9.50,0,'2025-05-16',NULL,NULL,NULL),
(481,61,2348,9.50,0,'2025-05-16',NULL,NULL,NULL),
(482,64,2348,7.00,0,'2025-05-17',NULL,NULL,36),
(483,64,2349,7.00,0,'2025-05-17',NULL,NULL,NULL),
(484,64,2357,7.00,0,'2025-05-17',NULL,NULL,36),
(487,68,2355,9.50,0,'2025-05-19',NULL,NULL,37),
(488,62,2357,9.50,0,'2025-05-19',NULL,NULL,NULL),
(489,64,2349,9.50,0,'2025-05-20',NULL,NULL,36),
(490,64,2348,9.50,0,'2025-05-20',NULL,NULL,36),
(491,64,2357,9.50,0,'2025-05-20',NULL,NULL,36),
(494,65,2349,9.50,0,'2025-05-19',NULL,NULL,NULL),
(495,65,2348,9.50,0,'2025-05-19',NULL,NULL,NULL),
(496,63,2355,9.50,0,'2025-05-20',NULL,NULL,36),
(497,64,2349,9.50,0,'2025-05-21',NULL,NULL,36),
(498,64,2348,10.00,0,'2025-05-21',NULL,NULL,36),
(499,64,2357,10.00,0,'2025-05-21',NULL,NULL,36),
(501,69,2355,10.00,0,'2025-05-21',NULL,NULL,37),
(502,0,2322,9.50,0,'2025-05-15',NULL,NULL,NULL),
(503,0,2322,9.50,0,'2025-05-16',NULL,NULL,15),
(505,0,2322,7.00,0,'2025-05-17',NULL,NULL,15),
(506,0,2322,9.50,0,'2025-05-19',NULL,NULL,NULL),
(507,0,2322,9.50,0,'2025-05-20',NULL,NULL,15),
(508,0,2322,10.00,0,'2025-05-21',NULL,NULL,NULL),
(509,64,2349,9.50,0,'2025-05-22',NULL,NULL,NULL),
(510,64,2348,9.50,0,'2025-05-22',NULL,NULL,NULL),
(511,0,2357,9.50,0,'2025-05-23',NULL,NULL,36),
(512,0,2357,9.50,0,'2025-05-22',NULL,NULL,NULL),
(513,63,2355,9.50,0,'2025-05-23',NULL,NULL,NULL),
(514,63,2355,9.50,0,'2025-05-22',NULL,NULL,NULL),
(515,64,2349,9.50,0,'2025-05-23',NULL,NULL,36),
(516,64,2348,9.50,0,'2025-05-23',NULL,NULL,36),
(517,0,2322,9.50,0,'2025-05-22',NULL,NULL,NULL),
(518,0,2322,9.50,0,'2025-05-23',NULL,NULL,NULL),
(520,0,2319,7.50,1,'2025-05-24',NULL,NULL,NULL),
(521,0,2352,7.50,1,'2025-05-24',NULL,NULL,NULL),
(525,0,2343,2.50,0,'2025-05-22',NULL,NULL,NULL),
(526,0,2343,2.50,1,'2025-05-23',NULL,NULL,NULL),
(527,0,2354,1.50,0,'2025-05-23',NULL,NULL,NULL),
(528,0,2350,1.50,0,'2025-05-23',NULL,NULL,NULL),
(535,0,2343,9.50,1,'2025-05-26',NULL,NULL,91),
(536,0,2354,2.50,1,'2025-05-26',NULL,NULL,91),
(537,0,2354,5.00,1,'2025-05-26',NULL,NULL,91),
(538,0,2354,2.00,1,'2025-05-26',NULL,NULL,89),
(539,0,2350,2.50,1,'2025-05-26',NULL,NULL,91),
(540,0,2350,7.00,1,'2025-05-26',NULL,NULL,91),
(541,0,2319,9.50,1,'2025-05-26',NULL,NULL,91),
(542,0,2352,9.50,1,'2025-05-26',NULL,NULL,91),
(543,0,2349,0.00,0,'2025-05-24',NULL,NULL,NULL),
(544,0,2348,0.00,0,'2025-05-24',NULL,NULL,NULL),
(545,0,2357,0.00,0,'2025-05-24',NULL,NULL,NULL),
(546,0,2355,0.00,0,'2025-05-24',NULL,NULL,NULL),
(547,64,2348,7.50,0,'2025-05-24',NULL,NULL,36),
(548,64,2349,7.50,0,'2025-05-24',NULL,NULL,36),
(550,63,2355,7.50,0,'2025-05-24',NULL,NULL,36),
(551,63,2357,7.50,0,'2025-05-24',NULL,NULL,36),
(552,0,2322,7.50,0,'2025-05-24',NULL,NULL,NULL),
(554,61,2355,9.50,0,'2025-05-26',NULL,NULL,36),
(555,61,2357,9.50,0,'2025-05-26',NULL,NULL,36),
(556,64,2349,9.50,0,'2025-05-26',NULL,NULL,36),
(557,64,2348,9.50,0,'2025-05-27',NULL,NULL,36),
(559,62,2355,9.50,0,'2025-05-27',NULL,NULL,36),
(560,75,2349,9.50,0,'2025-05-27',NULL,NULL,36),
(561,75,2357,9.50,0,'2025-05-27',NULL,NULL,NULL),
(562,64,2348,9.50,0,'2025-05-26',NULL,NULL,NULL),
(563,0,2322,9.50,0,'2025-05-27',NULL,NULL,15),
(564,0,2322,9.50,0,'2025-05-26',NULL,NULL,NULL),
(566,0,2335,8.50,0,'2025-05-23',NULL,NULL,NULL),
(567,0,2335,7.50,0,'2025-05-24',NULL,NULL,NULL),
(568,0,2335,8.50,0,'2025-05-26',NULL,NULL,36),
(569,0,2335,8.50,0,'2025-05-27',NULL,NULL,36),
(570,75,2349,10.00,0,'2025-05-28',NULL,NULL,36),
(571,75,2346,9.50,0,'2025-05-28',NULL,NULL,36),
(572,75,2357,10.00,0,'2025-05-28',NULL,NULL,36),
(573,0,2319,11.50,1,'2025-05-27',NULL,NULL,91),
(574,0,2352,11.50,1,'2025-05-27',NULL,NULL,91),
(575,64,2355,10.00,0,'2025-05-28',NULL,NULL,36),
(576,64,2348,10.00,0,'2025-05-28',NULL,NULL,36),
(577,0,2322,10.00,0,'2025-05-28',NULL,NULL,15),
(578,27,2335,8.50,0,'2025-05-28',NULL,NULL,15),
(579,0,2319,10.00,1,'2025-05-28',NULL,NULL,91),
(580,0,2352,10.00,1,'2025-05-28',NULL,NULL,91),
(581,0,2354,10.00,1,'2025-05-28',NULL,NULL,90),
(582,0,2350,10.00,1,'2025-05-28',NULL,NULL,90),
(583,0,2343,10.00,1,'2025-05-28',NULL,NULL,92),
(584,0,2343,9.50,1,'2025-05-27',NULL,NULL,92),
(585,0,2350,9.50,1,'2025-05-27',NULL,NULL,92),
(586,82,2354,0.00,0,'2025-05-29',NULL,NULL,90),
(587,82,2354,9.50,1,'2025-05-29',NULL,NULL,90),
(588,0,2343,9.50,1,'2025-05-29',NULL,NULL,91),
(589,84,2319,9.50,1,'2025-05-29',NULL,NULL,91),
(590,84,2352,9.50,1,'2025-05-29',NULL,NULL,91),
(591,82,2354,9.50,1,'2025-05-30',NULL,NULL,91),
(592,81,2343,9.50,1,'2025-05-30',NULL,NULL,92),
(593,84,2319,9.50,1,'2025-05-30',NULL,NULL,91),
(594,84,2352,9.50,1,'2025-05-30',NULL,NULL,91),
(599,65,2348,9.50,0,'2025-05-29',NULL,NULL,37),
(600,65,2357,9.50,0,'2025-05-29',NULL,NULL,37),
(603,0,2355,9.50,0,'2025-05-29',NULL,NULL,40),
(604,0,2349,9.50,0,'2025-05-29',NULL,NULL,40),
(605,0,2348,9.50,0,'2025-05-30',NULL,NULL,NULL),
(606,0,2357,9.50,0,'2025-05-30',NULL,NULL,NULL),
(607,0,2349,9.50,0,'2025-05-30',NULL,NULL,40),
(608,0,2355,9.50,0,'2025-05-30',NULL,NULL,40),
(609,0,2348,9.50,0,'2025-06-02',NULL,NULL,39),
(610,0,2357,9.50,0,'2025-06-02',NULL,NULL,39),
(612,0,2355,9.50,0,'2025-06-02',NULL,NULL,NULL),
(613,0,2349,0.00,0,'2025-06-02',NULL,NULL,NULL),
(614,0,2322,9.50,0,'2025-05-29',NULL,NULL,NULL),
(615,0,2322,9.50,0,'2025-05-30',NULL,NULL,NULL),
(616,0,2322,9.50,0,'2025-06-02',NULL,NULL,NULL),
(617,0,2335,8.50,0,'2025-05-29',NULL,NULL,NULL),
(618,0,2335,8.50,0,'2025-05-30',NULL,NULL,NULL),
(620,0,2349,9.50,0,'2025-06-03',NULL,NULL,NULL),
(621,0,2357,9.50,0,'2025-06-03',NULL,NULL,NULL),
(622,0,2355,9.50,0,'2025-06-03',NULL,NULL,40),
(623,0,2348,0.00,0,'2025-06-03',NULL,NULL,NULL),
(626,0,2349,9.50,0,'2025-06-04',NULL,NULL,NULL),
(627,0,2357,10.00,0,'2025-06-04',NULL,NULL,NULL),
(628,0,2355,10.00,0,'2025-06-04',NULL,NULL,NULL),
(630,0,2348,0.00,0,'2025-06-04',NULL,NULL,NULL),
(632,0,2322,9.50,0,'2025-06-03',NULL,NULL,15),
(633,0,2322,10.00,0,'2025-06-04',NULL,NULL,15),
(640,0,2319,9.50,0,'2025-06-06',NULL,NULL,NULL),
(641,0,2352,9.50,0,'2025-06-06',NULL,NULL,NULL),
(642,0,2343,9.50,0,'2025-06-06',NULL,NULL,NULL),
(643,0,2350,9.50,0,'2025-06-06',NULL,NULL,NULL),
(645,0,2319,9.50,0,'2025-06-02',NULL,NULL,40),
(646,0,2352,9.50,0,'2025-06-02',NULL,NULL,40),
(647,0,2319,9.50,0,'2025-06-03',NULL,NULL,NULL),
(648,0,2352,9.50,0,'2025-06-03',NULL,NULL,NULL),
(649,0,2319,9.00,0,'2025-06-04',NULL,NULL,NULL),
(650,0,2352,9.00,0,'2025-06-04',NULL,NULL,NULL),
(655,0,2350,9.50,0,'2025-06-02',NULL,NULL,NULL),
(656,0,2343,9.50,0,'2025-06-02',NULL,NULL,NULL),
(657,0,2350,9.50,0,'2025-06-03',NULL,NULL,NULL),
(658,0,2343,9.50,0,'2025-06-03',NULL,NULL,NULL),
(659,0,2350,10.00,0,'2025-06-04',NULL,NULL,NULL),
(660,0,2343,10.00,0,'2025-06-04',NULL,NULL,NULL),
(665,0,2354,9.50,0,'2025-06-02',NULL,NULL,NULL),
(666,0,2354,9.50,0,'2025-06-03',NULL,NULL,NULL),
(667,25,2350,0.00,0,'2025-05-29',NULL,NULL,15),
(668,25,2346,0.00,0,'2025-05-29',NULL,NULL,15),
(670,NULL,2346,0.00,0,'2025-05-30',NULL,NULL,NULL),
(671,25,2346,0.00,0,'2025-06-02',NULL,NULL,15),
(672,NULL,2346,0.00,0,'2025-06-03',NULL,NULL,NULL),
(673,0,2346,0.00,0,'2025-06-04',NULL,NULL,NULL),
(674,25,2354,0.00,0,'2025-06-04',NULL,NULL,15),
(675,0,2319,11.50,0,'2025-06-05',NULL,NULL,40),
(676,0,2352,11.50,0,'2025-06-05',NULL,NULL,40),
(677,0,2354,9.50,0,'2025-06-06',NULL,NULL,40),
(679,25,2346,0.00,0,'2025-06-06',NULL,NULL,15),
(680,0,2346,9.50,0,'2025-06-05',NULL,NULL,40),
(681,0,2319,1.00,0,'2025-06-04',NULL,NULL,40),
(682,25,2350,0.00,0,'2025-05-30',NULL,NULL,15),
(683,0,2352,1.00,0,'2025-06-04',NULL,NULL,40),
(684,86,2343,9.50,1,'2025-06-05',NULL,NULL,91),
(685,86,2350,9.50,1,'2025-06-05',NULL,NULL,91),
(686,88,2343,9.50,1,'2025-06-09',NULL,NULL,91),
(687,88,2350,9.50,1,'2025-06-09',NULL,NULL,91),
(688,82,2354,9.50,1,'2025-06-09',NULL,NULL,91),
(689,82,2354,9.50,1,'2025-06-05',NULL,NULL,91),
(690,0,2355,9.50,0,'2025-06-05',NULL,NULL,39),
(691,0,2357,9.50,0,'2025-06-05',NULL,NULL,39),
(692,0,2349,9.50,0,'2025-06-05',NULL,NULL,39),
(693,0,2348,0.00,0,'2025-06-09',NULL,NULL,NULL),
(694,0,2348,0.00,0,'2025-06-05',NULL,NULL,NULL),
(695,0,2355,9.50,0,'2025-06-09',NULL,NULL,39),
(696,0,2357,9.50,0,'2025-06-09',NULL,NULL,39),
(697,0,2349,9.50,0,'2025-06-09',NULL,NULL,39),
(698,0,2355,9.50,0,'2025-06-06',NULL,NULL,39),
(699,0,2357,9.50,0,'2025-06-06',NULL,NULL,39),
(700,0,2349,9.50,0,'2025-06-06',NULL,NULL,39),
(701,0,2348,0.00,0,'2025-06-06',NULL,NULL,NULL),
(702,0,2322,9.50,0,'2025-06-05',NULL,NULL,15),
(703,0,2322,9.50,0,'2025-06-05',NULL,NULL,15),
(704,0,2322,9.50,0,'2025-06-06',NULL,NULL,15),
(705,0,2322,9.50,0,'2025-06-09',NULL,NULL,15),
(706,89,2354,9.50,1,'2025-06-10',NULL,NULL,92),
(707,84,2319,9.50,1,'2025-06-09',NULL,NULL,91),
(708,84,2352,9.50,1,'2025-06-09',NULL,NULL,91),
(709,91,2343,9.50,1,'2025-06-10',NULL,NULL,91),
(710,91,2350,9.50,1,'2025-06-10',NULL,NULL,91),
(713,92,2354,10.00,2,'2025-06-11',NULL,NULL,88),
(714,93,2319,11.50,1,'2025-06-10',NULL,NULL,91),
(715,93,2352,11.50,1,'2025-06-10',NULL,NULL,91),
(716,94,2319,10.00,1,'2025-06-11',NULL,NULL,91),
(717,94,2352,10.00,1,'2025-06-11',NULL,NULL,91),
(718,95,2343,10.00,1,'2025-06-11',NULL,NULL,91),
(719,95,2350,10.00,1,'2025-06-11',NULL,NULL,91),
(720,97,2319,9.50,1,'2025-06-12',NULL,NULL,91),
(721,97,2352,9.50,1,'2025-06-12',NULL,NULL,91),
(722,98,2343,9.50,1,'2025-06-12',NULL,NULL,91),
(723,98,2350,9.50,1,'2025-06-12',NULL,NULL,91),
(724,99,2354,9.50,1,'2025-06-12',NULL,NULL,89),
(725,100,2343,9.50,2,'2025-06-13',NULL,NULL,89),
(726,100,2350,9.50,2,'2025-06-13',NULL,NULL,89),
(727,101,2319,9.50,1,'2025-06-13',NULL,NULL,91),
(728,102,2354,9.50,4,'2025-06-13',NULL,NULL,87),
(729,97,2319,1.50,1,'2025-06-12',NULL,NULL,91),
(730,97,2352,1.50,1,'2025-06-12',NULL,NULL,91),
(733,99,2361,8.50,1,'2024-02-01',1029,NULL,40),
(734,99,2361,8.50,1,'2024-02-02',1029,NULL,40),
(735,99,2361,8.50,1,'2024-02-03',1029,NULL,40),
(736,99,2361,8.50,1,'2024-02-05',1029,NULL,40),
(737,99,2361,8.50,1,'2024-02-06',1029,NULL,40),
(738,99,2361,8.50,1,'2024-02-07',1029,NULL,40),
(741,0,2355,9.50,0,'2025-06-12',1039,NULL,39),
(742,0,2357,9.50,0,'2025-06-12',1039,NULL,39),
(743,0,2349,9.50,0,'2025-06-12',1039,NULL,NULL),
(744,0,2355,9.50,0,'2025-06-13',1039,NULL,39),
(745,0,2357,9.50,0,'2025-06-13',1039,NULL,39),
(746,0,2349,9.50,0,'2025-06-13',1039,NULL,39),
(747,0,2348,0.00,0,'2025-06-12',700,NULL,NULL),
(748,0,2348,0.00,0,'2025-06-13',700,NULL,NULL),
(749,0,2348,0.00,0,'2025-06-16',700,NULL,NULL),
(751,0,2322,9.50,0,'2025-06-12',790,NULL,15),
(753,0,2322,9.50,0,'2025-06-13',790,NULL,NULL),
(754,0,2322,9.50,0,'2025-06-16',790,NULL,NULL),
(755,0,2355,9.50,0,'2025-06-16',1042,NULL,NULL),
(756,0,2349,9.50,0,'2025-06-16',1042,NULL,NULL),
(759,0,2320,9.50,0,'2025-06-16',1038,NULL,NULL),
(760,0,2357,9.50,0,'2025-06-16',1039,NULL,NULL),
(761,0,2320,9.50,0,'2025-06-12',1038,NULL,36),
(762,0,2320,9.50,0,'2025-06-13',1038,NULL,NULL),
(764,103,2343,9.50,1,'2025-06-16',1032,NULL,91),
(765,103,2350,9.50,1,'2025-06-16',1032,NULL,91),
(766,102,2354,9.50,1,'2025-06-16',1029,NULL,91),
(767,102,2346,9.50,1,'2025-06-16',1029,NULL,91),
(768,97,2319,9.50,1,'2025-06-16',1030,NULL,91),
(769,97,2352,9.50,1,'2025-06-16',1030,NULL,91),
(770,97,2319,1.50,1,'2025-06-16',1030,NULL,91),
(771,97,2352,1.50,1,'2025-06-16',1030,NULL,91),
(778,0,2355,9.50,0,'2025-06-17',1039,NULL,39),
(779,0,2357,9.50,0,'2025-06-17',1039,NULL,39),
(780,0,2348,9.50,0,'2025-06-17',1039,NULL,39),
(781,0,2349,9.50,0,'2025-06-17',1039,NULL,39),
(782,0,2320,9.50,0,'2025-06-17',1037,NULL,37),
(783,0,2355,10.00,0,'2025-06-18',1039,NULL,NULL),
(784,0,2357,10.00,0,'2025-06-18',1039,NULL,NULL),
(785,0,2348,9.50,0,'2025-06-18',1039,NULL,NULL),
(786,0,2349,8.50,0,'2025-06-18',1039,NULL,NULL),
(787,0,2320,10.00,0,'2025-06-18',1037,NULL,37),
(788,0,2322,0.00,0,'2025-06-17',790,NULL,15),
(789,0,2322,9.50,0,'2025-06-17',790,NULL,15),
(790,0,2322,10.00,0,'2025-06-18',790,NULL,15),
(791,105,2343,10.00,1,'2025-06-18',1032,NULL,91),
(792,105,2350,10.00,1,'2025-06-18',1032,NULL,91),
(793,81,2343,9.50,1,'2025-06-17',1032,NULL,92),
(794,81,2350,9.50,1,'2025-06-17',1032,NULL,92),
(795,106,2354,10.00,1,'2025-06-18',1029,NULL,89),
(796,107,2354,9.50,1,'2025-06-17',1029,NULL,91),
(797,101,2319,10.00,1,'2025-06-18',1030,NULL,91),
(798,101,2352,10.00,1,'2025-06-18',1030,NULL,91),
(799,84,2319,9.50,1,'2025-06-17',1030,NULL,91),
(800,84,2352,9.50,1,'2025-06-17',1030,NULL,91),
(801,108,2352,1.50,1,'2025-06-19',1033,NULL,14),
(802,108,2354,1.50,1,'2025-06-19',1033,NULL,14),
(803,108,2321,3.50,1,'2025-06-19',1033,NULL,14),
(804,108,2352,9.50,1,'2025-06-19',1033,NULL,14),
(805,108,2354,9.50,1,'2025-06-19',1033,NULL,14),
(806,108,2321,8.50,1,'2025-06-19',1033,NULL,14),
(807,109,2343,9.50,1,'2025-06-20',1032,NULL,92),
(808,109,2350,9.50,1,'2025-06-20',1032,NULL,92),
(809,110,2343,9.50,2,'2025-06-19',1032,NULL,89),
(810,110,2350,9.50,2,'2025-06-19',1032,NULL,89),
(811,107,2354,9.50,1,'2025-06-20',1029,NULL,91),
(812,111,2319,9.50,1,'2025-06-19',1030,NULL,91),
(813,111,2319,9.50,1,'2025-06-20',1030,NULL,91),
(814,111,2352,9.50,1,'2025-06-20',1030,NULL,91),
(817,0,2355,9.50,0,'2025-06-19',1039,NULL,39),
(818,0,2357,9.50,0,'2025-06-19',1039,NULL,39),
(819,0,2349,9.50,0,'2025-06-19',1039,NULL,39),
(820,0,2320,9.50,0,'2025-06-20',1045,NULL,37),
(821,0,2320,9.50,0,'2025-06-19',1045,NULL,37),
(822,0,2355,9.50,0,'2025-06-20',1039,NULL,39),
(823,0,2357,9.50,0,'2025-06-20',1039,NULL,39),
(824,0,2349,9.50,0,'2025-06-20',1039,NULL,39),
(828,0,2348,0.00,0,'2025-06-19',790,NULL,NULL),
(829,0,2348,0.00,0,'2025-06-19',700,NULL,NULL),
(830,0,2348,0.00,0,'2025-06-20',700,NULL,NULL),
(831,0,2322,9.50,0,'2025-06-19',790,NULL,15),
(832,0,2322,9.50,0,'2025-06-20',790,NULL,15),
(833,112,2343,9.50,1,'2025-06-23',1032,NULL,90),
(834,112,2350,9.50,1,'2025-06-23',1032,NULL,90),
(835,103,2343,9.50,1,'2025-06-24',1032,NULL,91),
(836,103,2350,9.50,1,'2025-06-24',1032,NULL,91),
(837,89,2354,9.50,1,'2025-06-23',1029,NULL,91),
(838,107,2354,9.50,1,'2025-06-24',1029,NULL,91),
(839,84,2319,9.50,1,'2025-06-23',1030,NULL,91),
(840,84,2352,9.50,1,'2025-06-23',1030,NULL,91),
(841,111,2319,9.50,1,'2025-06-24',1030,NULL,91),
(842,111,2352,9.50,1,'2025-06-24',1030,NULL,91),
(843,89,2354,10.00,1,'2025-06-25',1029,NULL,91),
(844,111,2319,10.00,1,'2025-06-25',1030,NULL,91),
(845,111,2352,10.00,1,'2025-06-25',1030,NULL,91),
(846,103,2343,10.00,1,'2025-06-25',1032,NULL,91),
(847,103,2350,10.00,1,'2025-06-25',1032,NULL,91),
(848,0,2355,9.50,0,'2025-06-23',1039,NULL,39),
(849,0,2357,9.50,0,'2025-06-23',1039,NULL,39),
(850,0,2349,9.50,0,'2025-06-23',1039,NULL,39),
(851,0,2320,9.50,0,'2025-06-23',1045,NULL,NULL),
(853,0,2355,9.50,0,'2025-06-24',1039,NULL,39),
(854,0,2357,9.50,0,'2025-06-24',1039,NULL,39),
(855,0,2349,9.50,0,'2025-06-24',1039,NULL,NULL),
(856,0,2348,9.50,0,'2025-06-24',1045,NULL,37),
(857,0,2320,9.50,0,'2025-06-24',1045,NULL,37),
(864,0,2320,10.00,0,'2025-06-25',1045,NULL,37),
(865,0,2348,9.50,0,'2025-06-25',1045,NULL,37),
(866,0,2355,10.00,0,'2025-06-25',1039,NULL,39),
(867,0,2357,10.00,0,'2025-06-25',1039,NULL,39),
(868,0,2349,9.50,0,'2025-06-25',1039,NULL,39),
(869,0,2322,9.50,0,'2025-06-23',790,NULL,15),
(870,0,2322,9.50,0,'2025-06-24',790,NULL,15),
(871,0,2322,10.00,0,'2025-06-25',790,NULL,15),
(872,0,2348,0.00,0,'2025-06-23',750,NULL,NULL),
(873,0,2348,0.00,0,'2025-06-25',700,NULL,NULL),
(874,113,2354,9.50,1,'2025-06-26',1029,NULL,88),
(875,114,2343,11.50,1,'2025-06-26',1032,NULL,91),
(876,114,2350,11.50,1,'2025-06-26',1032,NULL,91),
(877,111,2319,9.50,1,'2025-06-26',1030,NULL,91),
(878,111,2352,9.50,1,'2025-06-26',1030,NULL,91),
(879,0,2355,9.50,0,'2025-06-26',1039,NULL,39),
(880,0,2357,9.50,0,'2025-06-26',1039,NULL,39),
(881,0,2349,9.50,0,'2025-06-26',1045,NULL,NULL),
(882,0,2320,9.50,0,'2025-06-26',1047,NULL,NULL),
(883,0,2348,9.50,0,'2025-06-26',1044,NULL,NULL),
(884,0,2322,9.50,0,'2025-06-26',790,NULL,NULL),
(885,0,2355,9.50,0,'2025-06-27',1044,NULL,39),
(886,0,2348,9.50,0,'2025-06-27',1044,NULL,39),
(887,0,2320,9.50,0,'2025-06-27',1047,NULL,NULL),
(888,0,2357,9.50,0,'2025-06-27',1047,NULL,NULL),
(889,0,2349,9.50,0,'2025-06-27',1039,NULL,NULL),
(890,0,2322,9.50,0,'2025-06-27',790,NULL,NULL),
(891,0,2355,9.50,0,'2025-06-30',1044,NULL,39),
(892,0,2348,9.50,0,'2025-06-30',1044,NULL,39),
(893,0,2320,9.50,0,'2025-06-30',1047,NULL,40),
(894,0,2357,9.50,0,'2025-06-30',1047,NULL,40),
(895,0,2349,9.50,0,'2025-06-30',1039,NULL,NULL),
(896,0,2322,9.50,0,'2025-06-30',790,NULL,15),
(897,0,2355,9.50,0,'2025-07-01',1044,NULL,39),
(898,0,2348,9.50,0,'2025-07-01',1044,NULL,39),
(899,0,2320,9.50,0,'2025-07-01',1047,NULL,40),
(900,0,2349,9.50,0,'2025-07-01',1047,NULL,40),
(901,0,2357,9.50,0,'2025-07-01',1047,NULL,40),
(902,0,2322,9.50,0,'2025-07-01',790,NULL,15),
(903,0,2348,9.50,0,'2025-07-02',1044,NULL,39),
(904,0,2355,10.00,0,'2025-07-02',1044,NULL,39),
(905,0,2320,10.00,0,'2025-07-02',1047,NULL,40),
(906,0,2349,8.00,0,'2025-07-02',1047,NULL,40),
(907,0,2357,10.00,0,'2025-07-02',1047,NULL,40),
(908,0,2322,10.00,0,'2025-07-02',790,NULL,NULL),
(910,0,2355,9.50,0,'2025-07-03',1043,NULL,37),
(913,0,2320,9.50,0,'2025-07-03',1047,NULL,40),
(914,0,2322,9.50,0,'2025-07-03',790,NULL,15),
(915,0,2348,9.50,0,'2025-07-03',1043,NULL,37),
(916,0,2357,9.50,0,'2025-07-03',1047,NULL,40),
(917,0,2348,9.50,0,'2025-07-04',1044,NULL,39),
(919,0,2355,9.50,0,'2025-07-04',1043,NULL,37),
(920,0,2357,9.50,0,'2025-07-04',1043,NULL,37),
(921,0,2320,9.50,0,'2025-07-04',1047,NULL,40),
(922,0,2349,9.50,0,'2025-07-04',1047,NULL,40),
(923,0,2349,0.00,0,'2025-07-03',700,NULL,NULL),
(924,0,2322,9.50,0,'2025-07-04',790,NULL,NULL),
(925,0,2348,9.50,0,'2025-07-07',1044,NULL,39),
(926,0,2355,9.50,0,'2025-07-07',1043,NULL,37),
(927,0,2357,9.50,0,'2025-07-07',1043,NULL,37),
(928,0,2320,9.50,0,'2025-07-07',1047,NULL,40),
(929,0,2349,9.50,0,'2025-07-07',1048,NULL,40),
(930,0,2322,9.50,0,'2025-07-07',790,NULL,NULL),
(931,0,2355,9.50,0,'2025-07-08',1047,NULL,40),
(932,0,2357,7.50,0,'2025-07-08',1047,NULL,40),
(933,0,2320,9.50,0,'2025-07-08',1048,NULL,40),
(934,0,2349,9.50,0,'2025-07-08',1048,NULL,40),
(935,0,2348,0.00,0,'2025-07-08',700,NULL,NULL),
(936,0,2322,9.50,0,'2025-07-08',790,NULL,NULL),
(937,0,2355,10.00,0,'2025-07-09',1047,NULL,40),
(938,0,2357,10.00,0,'2025-07-09',1047,NULL,40),
(939,0,2349,10.00,0,'2025-07-09',1048,NULL,40),
(940,0,2320,10.00,0,'2025-07-09',1048,NULL,40),
(941,0,2348,0.00,0,'2025-07-09',700,NULL,NULL),
(942,0,2322,10.00,0,'2025-07-09',790,NULL,NULL),
(943,0,2355,9.50,0,'2025-07-10',1043,NULL,37),
(944,0,2357,9.50,0,'2025-07-10',1043,NULL,37),
(945,0,2320,9.50,0,'2025-07-10',1048,NULL,40),
(946,0,2349,9.50,0,'2025-07-10',1048,NULL,40),
(947,0,2348,0.00,0,'2025-07-10',700,NULL,NULL),
(949,0,2355,9.50,0,'2025-07-11',1043,NULL,37),
(950,0,2357,9.50,0,'2025-07-11',1043,NULL,37),
(954,0,2322,9.50,0,'2025-07-10',790,NULL,NULL),
(956,0,2322,9.50,0,'2025-07-11',790,NULL,NULL),
(957,0,2320,9.50,0,'2025-07-11',1048,NULL,NULL),
(958,0,2349,9.50,0,'2025-07-11',1048,NULL,NULL),
(959,0,2348,0.00,0,'2025-07-11',700,NULL,NULL),
(960,0,2355,9.50,0,'2025-07-14',1043,NULL,37),
(961,0,2357,9.50,0,'2025-07-14',1043,NULL,37),
(962,0,2320,9.50,0,'2025-07-14',1047,NULL,40),
(963,0,2349,9.50,0,'2025-07-14',1047,NULL,40),
(965,0,2348,0.00,0,'2025-07-14',700,NULL,NULL),
(966,0,2355,9.50,0,'2025-07-15',1043,NULL,37),
(967,0,2357,9.50,0,'2025-07-15',1043,NULL,37),
(968,0,2320,9.50,0,'2025-07-15',1044,NULL,NULL),
(970,0,2349,9.50,0,'2025-07-15',1047,NULL,40),
(971,0,2355,10.00,0,'2025-07-16',1047,NULL,40),
(972,0,2349,10.00,0,'2025-07-16',1047,NULL,40),
(973,0,2357,10.00,0,'2025-07-16',1047,NULL,40),
(974,0,2320,10.00,0,'2025-07-16',1044,NULL,39),
(975,0,2322,9.50,0,'2025-07-14',790,NULL,NULL),
(976,0,2322,9.50,0,'2025-07-15',790,NULL,NULL),
(977,0,2322,10.00,0,'2025-07-16',790,NULL,NULL),
(978,0,2348,0.00,0,'2025-07-15',700,NULL,NULL),
(979,0,2348,0.00,0,'2025-07-16',700,NULL,NULL),
(980,0,2366,9.50,0,'2025-07-10',1048,NULL,40),
(981,0,2366,9.50,0,'2025-07-11',1048,NULL,40),
(982,0,2366,9.50,0,'2025-07-14',1047,NULL,40),
(983,0,2366,9.50,0,'2025-07-15',1044,NULL,39),
(984,0,2366,10.00,0,'2025-07-16',1044,NULL,39),
(985,0,2368,9.50,0,'2025-07-15',1047,NULL,40),
(986,0,2368,9.50,0,'2025-07-16',1047,NULL,40),
(987,0,2355,9.50,0,'2025-07-17',1047,NULL,40),
(988,0,2349,9.50,0,'2025-07-17',1047,NULL,40),
(989,0,2368,9.50,0,'2025-07-17',1047,NULL,40),
(990,0,2320,9.50,0,'2025-07-17',1044,NULL,NULL),
(991,0,2357,6.50,0,'2025-07-17',1044,NULL,NULL),
(992,0,2322,9.50,0,'2025-07-17',790,NULL,NULL),
(994,0,2366,0.00,0,'2025-07-17',700,NULL,NULL),
(995,0,2355,9.50,0,'2025-07-18',1047,NULL,40),
(996,0,2368,9.50,0,'2025-07-18',1047,NULL,40),
(997,0,2320,9.50,0,'2025-07-18',1047,NULL,40),
(998,0,2349,9.50,0,'2025-07-18',1047,NULL,40),
(999,0,2357,9.50,0,'2025-07-18',1047,NULL,40),
(1000,0,2322,9.50,0,'2025-07-18',790,NULL,NULL),
(1001,0,2355,9.50,0,'2025-07-21',1043,NULL,37),
(1003,0,2320,9.50,0,'2025-07-22',1047,NULL,NULL),
(1004,0,2349,9.50,0,'2025-07-22',1047,NULL,NULL),
(1005,0,2357,9.50,0,'2025-07-22',1047,NULL,NULL),
(1006,0,2322,9.50,0,'2025-07-21',790,NULL,NULL),
(1008,0,2349,9.50,0,'2025-07-21',1047,NULL,NULL),
(1009,0,2320,9.50,0,'2025-07-21',1047,NULL,NULL),
(1010,0,2357,9.50,0,'2025-07-21',1047,NULL,NULL),
(1011,0,2322,9.50,0,'2025-07-22',790,NULL,NULL),
(1012,0,2355,9.50,0,'2025-07-22',1043,NULL,37),
(1014,0,2368,6.50,0,'2025-07-21',1047,NULL,NULL),
(1015,0,2368,9.50,0,'2025-07-22',1047,NULL,40),
(1016,0,2366,0.00,0,'2025-07-18',700,NULL,NULL),
(1017,0,2366,0.00,0,'2025-07-21',700,NULL,NULL),
(1018,0,2366,0.00,0,'2025-07-22',700,NULL,NULL),
(1019,0,2355,9.50,0,'2025-07-25',1043,NULL,37),
(1020,0,2355,9.50,0,'2025-07-24',1043,NULL,37),
(1021,0,2349,9.50,0,'2025-07-24',1047,NULL,40),
(1022,0,2368,9.50,0,'2025-07-24',1047,NULL,NULL),
(1023,0,2366,9.50,0,'2025-07-24',1047,NULL,NULL),
(1024,0,2320,9.50,0,'2025-07-24',1048,NULL,40),
(1025,0,2357,9.50,0,'2025-07-24',1048,NULL,40),
(1026,0,2369,9.50,0,'2025-07-25',1047,NULL,40),
(1027,0,2366,9.50,0,'2025-07-25',1047,NULL,40),
(1028,0,2349,9.50,0,'2025-07-25',1043,NULL,37),
(1029,0,2320,9.50,0,'2025-07-25',1043,NULL,37),
(1030,0,2357,9.50,0,'2025-07-25',1043,NULL,37),
(1031,0,2322,9.50,0,'2025-07-24',790,NULL,15),
(1032,0,2322,9.50,0,'2025-07-25',790,NULL,15),
(1033,0,2355,9.50,0,'2025-07-28',1047,NULL,40),
(1034,0,2368,6.50,0,'2025-07-28',1047,NULL,40),
(1035,0,2366,9.50,0,'2025-07-28',1047,NULL,40),
(1036,0,2349,9.50,0,'2025-07-28',1048,NULL,40),
(1037,0,2320,9.50,0,'2025-07-28',1048,NULL,40),
(1038,0,2357,9.50,0,'2025-07-28',1048,NULL,40),
(1039,0,2322,9.50,0,'2025-07-28',790,NULL,15),
(1040,0,2355,9.50,0,'2025-07-29',1043,NULL,37),
(1041,0,2366,9.50,0,'2025-07-29',1047,NULL,40),
(1042,0,2357,9.50,0,'2025-07-29',1047,NULL,40),
(1043,0,2349,9.50,0,'2025-07-29',1048,NULL,NULL),
(1044,0,2320,9.50,0,'2025-07-29',1048,NULL,NULL),
(1045,0,2335,8.50,0,'2025-07-30',750,NULL,15),
(1046,0,2335,8.50,0,'2025-07-28',750,NULL,15),
(1047,0,2335,8.50,0,'2025-07-29',750,NULL,15),
(1048,0,2355,10.00,0,'2025-07-30',1043,NULL,37),
(1049,0,2366,10.00,0,'2025-07-30',1047,NULL,40),
(1050,0,2349,10.00,0,'2025-07-30',1048,NULL,40),
(1051,0,2320,10.00,0,'2025-07-30',1048,NULL,40),
(1052,0,2357,10.00,0,'2025-07-30',1048,NULL,40),
(1053,0,2322,9.50,0,'2025-07-29',790,NULL,NULL),
(1054,0,2322,10.00,0,'2025-07-30',790,NULL,NULL),
(1055,0,2368,0.00,0,'2025-07-29',700,NULL,NULL),
(1056,0,2368,0.00,0,'2025-07-30',700,NULL,NULL),
(1057,0,2368,9.50,0,'2025-07-25',1047,NULL,40),
(1058,0,2355,9.50,0,'2025-07-31',1043,NULL,37),
(1059,0,2349,9.50,0,'2025-07-31',1047,NULL,40),
(1060,0,2320,9.50,0,'2025-07-31',1048,NULL,40),
(1061,0,2366,9.50,0,'2025-07-31',1048,NULL,40),
(1062,0,2357,9.50,0,'2025-07-31',1048,NULL,40),
(1063,0,2335,8.50,0,'2025-07-31',750,NULL,15),
(1064,0,2368,9.50,0,'2025-07-31',1047,NULL,40),
(1065,0,2322,9.50,0,'2025-07-31',790,NULL,15),
(1066,0,2355,9.50,0,'2025-08-01',1043,NULL,37),
(1067,0,2320,9.50,0,'2025-08-01',1048,NULL,40),
(1068,0,2366,9.50,0,'2025-08-01',1048,NULL,40),
(1069,0,2349,9.50,0,'2025-08-05',1048,NULL,40),
(1070,0,2357,9.50,0,'2025-08-05',1048,NULL,40),
(1073,0,2368,9.50,0,'2025-08-01',1048,NULL,40),
(1074,0,2335,8.50,0,'2025-08-01',750,NULL,15),
(1075,0,2349,6.50,0,'2025-08-01',1048,NULL,40),
(1076,0,2357,9.50,0,'2025-08-01',1048,NULL,40),
(1077,0,2322,9.50,0,'2025-08-01',790,NULL,15),
(1078,0,2320,9.50,0,'2025-08-04',1048,NULL,40),
(1080,0,2349,9.50,0,'2025-08-04',1048,NULL,40),
(1081,0,2357,9.50,0,'2025-08-04',1048,NULL,40),
(1082,0,2355,9.50,0,'2025-08-04',1048,NULL,40),
(1084,0,2366,9.50,0,'2025-08-04',1048,NULL,40),
(1085,0,2322,9.50,0,'2025-08-04',790,NULL,NULL),
(1086,0,2320,9.50,0,'2025-08-05',1048,NULL,40),
(1087,0,2366,6.50,0,'2025-08-05',1048,NULL,40),
(1088,0,2355,9.50,0,'2025-08-05',1043,NULL,37),
(1089,0,2368,9.50,0,'2025-08-05',1048,NULL,40),
(1090,0,2322,9.50,0,'2025-08-05',790,NULL,15),
(1091,0,2368,6.50,0,'2025-08-04',1048,NULL,40),
(1092,0,2355,9.50,0,'2025-08-08',1049,NULL,15),
(1094,0,2320,9.50,0,'2025-08-08',1049,NULL,15),
(1095,0,2355,9.50,0,'2025-08-07',1049,NULL,15),
(1096,0,2320,9.50,0,'2025-08-07',1049,NULL,15),
(1097,0,2368,9.50,0,'2025-08-07',1049,NULL,15),
(1098,0,2349,9.50,0,'2025-08-07',1043,NULL,37),
(1099,0,2357,9.50,0,'2025-08-07',1043,NULL,37),
(1100,0,2349,9.50,0,'2025-08-08',1043,NULL,37),
(1101,0,2357,9.50,0,'2025-08-08',1043,NULL,37),
(1103,0,2322,9.50,0,'2025-08-08',705,NULL,15),
(1104,0,2322,9.50,0,'2025-08-07',705,NULL,NULL),
(1105,0,2366,1.00,0,'2025-08-07',1049,NULL,NULL),
(1106,0,2366,0.00,0,'2025-08-08',700,NULL,NULL),
(1107,0,2355,10.00,0,'2025-08-06',1049,NULL,15),
(1108,0,2368,9.50,0,'2025-08-06',1049,NULL,15),
(1109,0,2320,10.00,0,'2025-08-06',1049,NULL,15),
(1110,0,2366,9.50,0,'2025-08-06',1049,NULL,NULL),
(1111,0,2349,9.50,0,'2025-08-06',1048,NULL,40),
(1112,0,2357,10.00,0,'2025-08-06',1048,NULL,40),
(1113,0,2322,10.00,0,'2025-08-06',790,NULL,15),
(1114,0,2355,9.50,0,'2025-08-11',1049,NULL,15),
(1115,0,2320,9.50,0,'2025-08-11',1049,NULL,15),
(1116,0,2357,9.50,0,'2025-08-11',1049,NULL,15),
(1117,0,2349,9.50,0,'2025-08-11',1049,NULL,15),
(1118,0,2355,9.50,0,'2025-08-12',1049,NULL,NULL),
(1119,0,2320,9.50,0,'2025-08-12',1049,NULL,NULL),
(1120,0,2357,9.50,0,'2025-08-12',1049,NULL,NULL),
(1121,0,2349,9.50,0,'2025-08-12',1043,NULL,37),
(1122,0,2349,9.50,0,'2025-08-12',1043,NULL,37),
(1123,0,2355,10.00,0,'2025-08-13',1049,NULL,15),
(1124,0,2320,10.00,0,'2025-08-13',1049,NULL,15),
(1125,0,2357,10.00,0,'2025-08-13',1049,NULL,15),
(1126,0,2349,6.50,0,'2025-08-13',1049,NULL,15),
(1127,0,2322,9.50,0,'2025-08-11',790,NULL,NULL),
(1128,0,2322,9.50,0,'2025-08-12',790,NULL,15),
(1129,0,2322,10.00,0,'2025-08-13',790,NULL,15),
(1130,0,2355,9.50,0,'2025-08-14',1043,NULL,NULL),
(1131,0,2320,9.50,0,'2025-08-14',1043,NULL,NULL),
(1132,0,2349,9.50,0,'2025-08-14',750,NULL,15),
(1133,0,2357,9.50,0,'2025-08-14',750,NULL,15),
(1134,0,2375,9.50,0,'2025-08-14',750,NULL,15),
(1135,0,2376,9.50,0,'2025-08-14',750,NULL,15),
(1136,0,2322,9.50,0,'2025-08-14',790,NULL,15),
(1144,0,2322,9.50,0,'2025-08-28',790,NULL,15),
(1150,0,2355,9.50,0,'2025-08-15',1051,NULL,37),
(1151,0,2375,9.50,0,'2025-08-15',1051,NULL,37),
(1152,0,2320,9.50,0,'2025-08-15',1050,NULL,37),
(1153,0,2349,9.50,0,'2025-08-15',1050,NULL,37),
(1154,0,2376,9.50,0,'2025-08-15',1050,NULL,37),
(1159,0,2357,9.50,0,'2025-08-15',750,NULL,15),
(1160,0,2322,9.50,0,'2025-08-15',790,NULL,15),
(1161,0,2355,9.50,0,'2025-08-18',1051,NULL,37),
(1162,0,2375,9.50,0,'2025-08-18',1051,NULL,37),
(1165,0,2376,9.50,0,'2025-08-18',1051,NULL,37),
(1166,0,2320,9.50,0,'2025-08-18',1050,NULL,37),
(1167,0,2349,9.50,0,'2025-08-18',1050,NULL,37),
(1168,0,2357,9.50,0,'2025-08-18',1050,NULL,37),
(1169,0,2322,9.50,0,'2025-08-18',790,NULL,15),
(1170,0,2322,9.50,0,'2025-08-18',790,NULL,NULL),
(1171,0,2355,9.50,0,'2025-08-19',1051,NULL,NULL),
(1172,0,2376,9.50,0,'2025-08-19',1051,NULL,NULL),
(1173,0,2320,9.50,0,'2025-08-19',1055,NULL,40),
(1174,0,2349,9.50,0,'2025-08-19',1055,NULL,40),
(1175,0,2375,9.50,0,'2025-08-19',1055,NULL,40),
(1176,0,2357,9.50,0,'2025-08-19',1055,NULL,40),
(1177,0,2355,10.00,0,'2025-08-20',1051,NULL,37),
(1178,0,2376,10.00,0,'2025-08-20',1051,NULL,37),
(1179,0,2320,10.00,0,'2025-08-20',1055,NULL,40),
(1180,0,2349,10.00,0,'2025-08-20',1055,NULL,40),
(1181,0,2375,10.00,0,'2025-08-20',1055,NULL,40),
(1182,0,2357,10.00,0,'2025-08-20',1055,NULL,40),
(1183,0,2322,9.50,0,'2025-08-19',790,NULL,15),
(1184,0,2322,10.00,0,'2025-08-20',790,NULL,NULL),
(1185,0,2355,9.50,0,'2025-08-21',1056,NULL,12),
(1186,0,2320,9.50,0,'2025-08-21',1056,NULL,12),
(1187,0,2376,9.50,0,'2025-08-21',1056,NULL,12),
(1188,0,2375,9.50,0,'2025-08-21',1056,NULL,12),
(1191,0,2349,0.00,0,'2025-08-21',703,NULL,NULL),
(1192,0,2357,0.00,0,'2025-08-21',703,NULL,NULL),
(1193,0,2322,9.50,0,'2025-08-21',790,NULL,NULL),
(1194,0,2355,9.50,0,'2025-08-22',1056,NULL,12),
(1195,0,2320,9.50,0,'2025-08-22',1056,NULL,12),
(1196,0,2375,9.50,0,'2025-08-22',1056,NULL,12),
(1197,0,2376,9.50,0,'2025-08-22',1056,NULL,12),
(1198,0,2322,9.50,0,'2025-08-22',790,NULL,NULL),
(1199,0,2349,0.00,0,'2025-08-22',703,NULL,NULL),
(1200,0,2357,0.00,0,'2025-08-22',703,NULL,NULL),
(1201,0,2355,9.50,0,'2025-08-25',1056,NULL,12),
(1202,0,2320,9.50,0,'2025-08-25',1056,NULL,12),
(1203,0,2376,9.50,0,'2025-08-25',1056,NULL,12),
(1204,0,2375,9.50,0,'2025-08-25',1056,NULL,12),
(1205,0,2349,0.00,0,'2025-08-25',703,NULL,NULL),
(1206,0,2357,0.00,0,'2025-08-25',703,NULL,NULL),
(1207,0,2322,9.50,0,'2025-08-25',790,NULL,NULL),
(1208,0,2355,9.50,0,'2025-08-26',1056,NULL,12),
(1209,0,2320,9.50,0,'2025-08-26',1056,NULL,12),
(1210,0,2376,9.50,0,'2025-08-26',1056,NULL,12),
(1211,0,2375,9.50,0,'2025-08-26',1056,NULL,12),
(1212,0,2349,0.00,0,'2025-08-26',703,NULL,NULL),
(1213,0,2357,0.00,0,'2025-08-26',703,NULL,NULL),
(1214,0,2349,0.00,0,'2025-08-26',703,NULL,NULL),
(1215,0,2357,0.00,0,'2025-08-26',703,NULL,NULL),
(1216,0,2322,9.50,0,'2025-08-26',790,NULL,NULL),
(1217,0,2355,10.00,0,'2025-08-27',1056,NULL,12),
(1218,0,2320,10.00,0,'2025-08-27',1056,NULL,12),
(1219,0,2376,10.00,0,'2025-08-27',1056,NULL,12),
(1220,0,2375,10.00,0,'2025-08-27',1056,NULL,12),
(1221,0,2349,0.00,0,'2025-08-27',703,NULL,NULL),
(1222,0,2357,0.00,0,'2025-08-27',703,NULL,NULL),
(1223,0,2322,10.00,0,'2025-08-27',790,NULL,NULL),
(1224,0,2355,9.50,0,'2025-08-28',1056,NULL,12),
(1225,0,2320,9.50,0,'2025-08-28',1056,NULL,12),
(1226,0,2349,9.50,0,'2025-08-28',1056,NULL,12),
(1227,0,2376,9.50,0,'2025-08-28',1056,NULL,12),
(1229,0,2357,9.50,0,'2025-08-28',750,NULL,15),
(1231,0,2355,9.50,0,'2025-08-29',1057,NULL,115),
(1232,0,2320,9.50,0,'2025-08-29',1057,NULL,115),
(1233,0,2375,9.50,0,'2025-08-29',1057,NULL,115),
(1234,0,2357,9.50,0,'2025-08-29',1057,NULL,115),
(1235,0,2349,9.50,0,'2025-08-29',1055,NULL,40),
(1236,0,2376,9.50,0,'2025-08-29',1055,NULL,40),
(1237,0,2322,9.50,0,'2025-08-29',790,NULL,15),
(1238,0,2355,9.50,0,'2025-09-01',1057,NULL,115),
(1239,0,2352,9.50,0,'2025-09-01',1057,NULL,115),
(1240,0,2375,9.50,0,'2025-09-01',1057,NULL,115),
(1241,0,2320,9.50,0,'2025-09-01',1057,NULL,115),
(1242,0,2376,9.50,0,'2025-09-01',1057,NULL,115),
(1243,0,2349,9.50,0,'2025-09-01',1055,NULL,40),
(1244,0,2357,9.50,0,'2025-09-01',1055,NULL,40),
(1245,0,2322,9.50,0,'2025-09-01',790,NULL,NULL),
(1246,0,2375,9.50,0,'2025-08-28',1057,NULL,115),
(1247,0,2355,9.50,0,'2025-09-02',1057,NULL,115),
(1248,0,2375,9.50,0,'2025-09-02',1057,NULL,115),
(1249,0,2320,9.50,0,'2025-09-02',1057,NULL,115),
(1250,0,2349,9.50,0,'2025-09-02',1057,NULL,115),
(1251,0,2376,9.50,0,'2025-09-02',1057,NULL,115),
(1252,0,2357,9.50,0,'2025-09-02',1057,NULL,115),
(1253,0,2352,9.50,0,'2025-09-02',1057,NULL,115),
(1254,0,2322,9.50,0,'2025-09-02',790,NULL,NULL),
(1256,0,2355,10.00,0,'2025-09-03',1057,NULL,115),
(1257,0,2375,10.00,0,'2025-09-03',1057,NULL,115),
(1258,0,2320,10.00,0,'2025-09-03',1057,NULL,115),
(1259,0,2349,10.00,0,'2025-09-03',1057,NULL,115),
(1260,0,2376,10.00,0,'2025-09-03',1057,NULL,115),
(1261,0,2357,10.00,0,'2025-09-03',1057,NULL,115),
(1262,0,2322,10.00,0,'2025-09-03',790,NULL,NULL),
(1263,0,2355,9.50,0,'2025-09-04',1057,NULL,115),
(1264,0,2320,9.50,0,'2025-09-04',1057,NULL,115),
(1265,0,2375,9.50,0,'2025-09-04',1057,NULL,115),
(1266,0,2376,9.50,0,'2025-09-04',1057,NULL,115),
(1267,0,2349,9.50,0,'2025-09-04',1057,NULL,115),
(1268,0,2357,9.50,0,'2025-09-04',1057,NULL,115),
(1269,0,2355,9.50,0,'2025-09-05',1057,NULL,115),
(1270,0,2375,9.50,0,'2025-09-05',1057,NULL,115),
(1271,0,2320,9.50,0,'2025-09-05',1057,NULL,115),
(1272,0,2376,9.50,0,'2025-09-05',1057,NULL,115),
(1273,0,2349,9.50,0,'2025-09-05',1057,NULL,115),
(1274,0,2357,9.50,0,'2025-09-05',1057,NULL,115),
(1275,0,2352,9.50,0,'2025-09-05',1057,NULL,115),
(1276,0,2355,9.50,0,'2025-09-08',1057,NULL,115),
(1277,0,2375,9.50,0,'2025-09-08',1057,NULL,115),
(1278,0,2352,9.50,0,'2025-09-08',1057,NULL,115),
(1279,0,2349,9.50,0,'2025-09-08',1057,NULL,115),
(1280,0,2357,9.50,0,'2025-09-08',1057,NULL,115),
(1281,0,2355,9.50,0,'2025-09-09',750,NULL,15),
(1283,0,2349,9.50,0,'2025-09-09',1057,NULL,115),
(1284,0,2357,9.50,0,'2025-09-09',1057,NULL,115),
(1285,0,2355,9.50,0,'2025-09-10',750,NULL,15),
(1286,0,2375,9.50,0,'2025-09-10',750,NULL,15),
(1287,0,2349,0.00,0,'2025-09-10',1057,NULL,115),
(1288,0,2357,10.00,0,'2025-09-10',1057,NULL,115),
(1289,0,2322,9.50,0,'2025-09-04',790,NULL,15),
(1291,0,2322,9.50,0,'2025-09-05',790,NULL,NULL),
(1292,0,2322,9.50,0,'2025-09-08',790,NULL,NULL),
(1294,0,2322,9.50,0,'2025-09-09',790,NULL,NULL),
(1295,0,2322,10.00,0,'2025-09-10',790,NULL,NULL),
(1296,0,2349,9.50,0,'2025-09-10',1057,NULL,115),
(1297,0,2355,9.50,0,'2025-09-11',750,NULL,15),
(1299,0,2355,9.50,0,'2025-09-12',750,NULL,NULL),
(1301,0,2357,9.50,0,'2025-09-11',1060,NULL,36),
(1302,0,2349,9.50,0,'2025-09-12',1060,NULL,36),
(1303,0,2357,9.50,0,'2025-09-12',1060,NULL,36),
(1304,0,2349,9.50,0,'2025-09-15',1060,NULL,36),
(1305,0,2355,9.50,0,'2025-09-15',1060,NULL,36),
(1307,0,2357,9.50,0,'2025-09-15',1060,NULL,36),
(1308,0,2349,9.50,0,'2025-09-16',704,NULL,NULL),
(1309,0,2355,9.50,0,'2025-09-16',704,NULL,NULL),
(1310,0,2357,9.50,0,'2025-09-16',704,NULL,NULL),
(1312,0,2355,10.00,0,'2025-09-17',1060,NULL,36),
(1313,0,2357,10.00,0,'2025-09-17',1060,NULL,36),
(1314,0,2322,9.50,0,'2025-09-11',790,NULL,NULL),
(1316,0,2322,9.50,0,'2025-09-12',790,NULL,NULL),
(1318,0,2322,9.50,0,'2025-09-15',790,NULL,NULL),
(1319,0,2322,9.50,0,'2025-09-16',704,NULL,NULL),
(1321,0,2349,9.00,0,'2025-09-11',1060,NULL,NULL),
(1322,0,2349,9.00,0,'2025-09-17',1060,NULL,36),
(1323,0,2322,10.00,0,'2025-09-17',790,NULL,NULL);
/*!40000 ALTER TABLE `encargado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entidades_federativas`
--

DROP TABLE IF EXISTS `entidades_federativas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `entidades_federativas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(100) NOT NULL,
  `cla` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entidades_federativas`
--

LOCK TABLES `entidades_federativas` WRITE;
/*!40000 ALTER TABLE `entidades_federativas` DISABLE KEYS */;
INSERT INTO `entidades_federativas` VALUES
(1,'Aguascalientes','AGU'),
(2,'Baja California','BCN'),
(3,'Baja California Sur','BCS'),
(4,'Campeche','CAM'),
(5,'Coahuila','COA'),
(6,'Colima','COL'),
(7,'Chiapas','CHP'),
(8,'Chihuahua','CHH'),
(9,'Ciudad de México','CDMX'),
(10,'Durango','DUR'),
(11,'Guanajuato','GUA'),
(12,'Guerrero','GRO'),
(13,'Hidalgo','HID'),
(14,'Jalisco','JAL'),
(15,'México','MEX'),
(16,'Michoacán','MIC'),
(17,'Morelos','MOR'),
(18,'Nayarit','NAY'),
(19,'Nuevo León','NLE'),
(20,'Oaxaca','OAX'),
(21,'Puebla','PUE'),
(22,'Querétaro','QUE'),
(23,'Quintana Roo','ROO'),
(24,'San Luis Potosí','SLP'),
(25,'Sinaloa','SIN'),
(26,'Sonora','SON'),
(27,'Tabasco','TAB'),
(28,'Tamaulipas','TAM'),
(29,'Tlaxcala','TLA'),
(30,'Veracruz','VER'),
(31,'Yucatán','YUC'),
(32,'Zacatecas','ZAC');
/*!40000 ALTER TABLE `entidades_federativas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `folio` int(50) DEFAULT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `moneda` varchar(10) DEFAULT NULL,
  `tipo_de_cambio` decimal(10,4) DEFAULT NULL,
  `valor_pesos` decimal(10,2) DEFAULT NULL,
  `alta_sistema` date DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `responsable` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  `portal` date DEFAULT NULL,
  `cliente` varchar(100) DEFAULT NULL,
  `ot` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pedido` (`id_pedido`),
  KEY `responsable` (`responsable`),
  CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id`),
  CONSTRAINT `facturas_ibfk_2` FOREIGN KEY (`responsable`) REFERENCES `listas` (`responsables`)
) ENGINE=InnoDB AUTO_INCREMENT=9055 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES
(6714,33,NULL,3642.00,'MXN',NULL,3642.00,'2013-01-02','2013-02-01',NULL,NULL,NULL,'2013-01-02','FERROPAK COMERCIAL',NULL),
(6715,34,NULL,4127.60,'MXN',NULL,4127.60,'2013-01-02','2013-02-01',NULL,NULL,NULL,'2013-01-02','FERROPAK COMERCIAL',NULL),
(6716,35,NULL,14188.55,'MXN',NULL,14188.55,'2013-01-02','2013-03-15',NULL,NULL,NULL,'2013-01-02','FRISA FORJADOS',NULL),
(6717,36,NULL,14340.45,'MXN',NULL,14340.45,'2013-01-07','2013-03-15',NULL,NULL,NULL,'2013-01-07','FRISA FORJADOS',NULL),
(6718,37,NULL,2913.60,'MXN',NULL,2913.60,'2013-01-10','2013-03-04',NULL,NULL,NULL,'2013-01-10','FERROPAK COMERCIAL',NULL),
(6719,38,NULL,0.00,'MXN',NULL,0.00,'2013-01-10','2013-02-05',NULL,NULL,NULL,'2013-01-10','CANCELADA',NULL),
(6720,39,NULL,0.00,'MXN',NULL,0.00,'2013-01-10','2013-02-05',NULL,NULL,NULL,'2013-01-10','CANCELADA',NULL),
(6721,40,NULL,4661.93,'MXN',NULL,4661.93,'2013-01-14','2013-03-15',NULL,NULL,NULL,'2013-01-14','FRISA FORJADOS',NULL),
(6722,41,NULL,98067.58,'MXN',NULL,98067.58,'2013-01-14','2013-02-28',NULL,NULL,NULL,'2013-01-14','Ternium México',NULL),
(6723,42,NULL,78835.50,'MXN',NULL,78835.50,'2013-01-16','2013-02-28',NULL,NULL,NULL,'2013-01-16','Ternium México',NULL),
(6724,43,NULL,26170.17,'MXN',NULL,26170.17,'2013-01-17','2013-03-15',NULL,NULL,NULL,'2013-01-17','FRISA FORJADOS',NULL),
(6725,44,NULL,231622.49,'MXN',NULL,231622.49,'2013-01-18','2013-02-28',NULL,NULL,NULL,'2013-01-18','Ternium México',NULL),
(6726,45,NULL,3971.00,'MXN',NULL,3971.00,'2013-01-21','2013-03-15',NULL,NULL,NULL,'2013-01-21','FRISA FORJADOS',NULL),
(6727,46,NULL,61075.95,'MXN',NULL,61075.95,'2013-01-21','2013-02-28',NULL,NULL,NULL,'2013-01-21','Ternium México',NULL),
(6728,47,NULL,292169.75,'MXN',NULL,292169.75,'2013-01-21','2013-02-28',NULL,NULL,NULL,'2013-01-21','Ternium México',NULL),
(6729,48,NULL,0.00,'MXN',NULL,0.00,'2013-01-22','2013-02-05',NULL,NULL,NULL,'2013-01-22','CANCELADA',NULL),
(6730,49,NULL,0.00,'MXN',NULL,0.00,'2013-01-22','2013-02-05',NULL,NULL,NULL,'2013-01-22','CANCELADA',NULL),
(6731,50,NULL,194675.87,'MXN',NULL,194675.87,'2013-01-23','2013-02-28',NULL,NULL,NULL,'2013-01-23','Ternium México',NULL),
(6732,51,NULL,3826.41,'MXN',NULL,3826.41,'2013-01-25','2013-03-15',NULL,NULL,NULL,'2013-01-25','FRISA FORJADOS',NULL),
(6733,52,NULL,4289.28,'MXN',NULL,4289.28,'2013-01-28','2013-03-15',NULL,NULL,NULL,'2013-01-28','FRISA FORJADOS',NULL),
(6734,53,NULL,2144.64,'MXN',NULL,2144.64,'2013-01-28','2013-03-15',NULL,NULL,NULL,'2013-01-28','FRISA FORJADOS',NULL),
(6735,54,NULL,5165.76,'MXN',NULL,5165.76,NULL,'2013-03-15',NULL,NULL,NULL,NULL,'FRISA FORJADOS',NULL),
(6736,55,NULL,0.00,'MXN',NULL,0.00,'2013-02-05','2013-02-05',NULL,NULL,NULL,'2013-02-05','CANCELADA',NULL),
(6737,56,NULL,0.00,'MXN',NULL,0.00,'2013-02-05','2013-02-05',NULL,NULL,NULL,'2013-02-05','CANCELADA',NULL),
(6738,57,NULL,3219.52,'MXN',NULL,3219.52,'2013-02-06','2013-04-15',NULL,NULL,NULL,'2013-02-06','FRISA FORJADOS',NULL),
(6739,58,NULL,113797.00,'MXN',NULL,113797.00,'2013-02-06','2013-03-31',NULL,NULL,NULL,'2013-02-06','Ternium México',NULL),
(6740,59,NULL,3299.10,'MXN',NULL,3299.10,'2013-02-19','2013-04-15',NULL,NULL,NULL,'2013-02-19','FRISA FORJADOS',NULL),
(6741,60,NULL,258839.70,'MXN',NULL,258839.70,'2013-02-19','2013-03-31',NULL,NULL,NULL,'2013-02-19','Ternium México',NULL),
(6742,61,NULL,0.00,'MXN',NULL,0.00,'2013-02-20','2013-02-05',NULL,NULL,NULL,'2013-02-20','CANCELADA',NULL),
(6743,62,NULL,2185.20,'MXN',NULL,2185.20,'2013-02-20','2013-03-22',NULL,NULL,NULL,'2013-02-20','FERROPAK COMERCIAL',NULL),
(6744,63,NULL,0.00,'MXN',NULL,0.00,'2013-02-20','2013-02-05',NULL,NULL,NULL,'2013-02-20','CANCELADA',NULL),
(6745,64,NULL,1456.80,'MXN',NULL,1456.80,'2013-02-20','2013-03-22',NULL,NULL,NULL,'2013-02-20','FERROPAK COMERCIAL',NULL),
(6746,65,NULL,0.00,'MXN',NULL,0.00,'2013-02-20','2013-02-05',NULL,NULL,NULL,'2013-02-20','CANCELADA',NULL),
(6747,66,NULL,0.00,'MXN',NULL,0.00,'2013-02-20','2013-02-05',NULL,NULL,NULL,'2013-02-20','CANCELADA',NULL),
(6748,67,NULL,0.00,'MXN',NULL,0.00,'2013-02-20','2013-02-05',NULL,NULL,NULL,'2013-02-20','CANCELADA',NULL),
(6749,68,NULL,2913.60,'MXN',NULL,2913.60,'2013-02-20','2013-03-22',NULL,NULL,NULL,'2013-02-20','FERROPAK COMERCIAL',NULL),
(6750,69,NULL,0.00,'MXN',NULL,0.00,'2013-02-20','2013-02-05',NULL,NULL,NULL,'2013-02-20','CANCELADA',NULL),
(6751,70,NULL,4370.40,'MXN',NULL,4370.40,'2013-02-20','2013-03-22',NULL,NULL,NULL,'2013-02-20','FERROPAK COMERCIAL',NULL),
(6752,71,NULL,0.00,'MXN',NULL,0.00,'2013-02-20','2013-02-05',NULL,NULL,NULL,'2013-02-20','CANCELADA',NULL),
(6753,72,NULL,4370.40,'MXN',NULL,4370.40,'2013-02-20','2013-03-22',NULL,NULL,NULL,'2013-02-20','FERROPAK COMERCIAL',NULL),
(6754,73,NULL,0.00,'MXN',NULL,0.00,'2013-02-20','2013-02-05',NULL,NULL,NULL,'2013-02-20','CANCELADA',NULL),
(6755,74,NULL,3642.00,'MXN',NULL,3642.00,'2013-02-20','2013-03-22',NULL,NULL,NULL,'2013-02-20','FERROPAK COMERCIAL',NULL),
(6756,75,NULL,0.00,'MXN',NULL,0.00,'2013-02-20','2013-02-05',NULL,NULL,NULL,'2013-02-20','CANCELADA',NULL),
(6757,76,NULL,4370.40,'MXN',NULL,4370.40,'2013-02-20','2013-03-22',NULL,NULL,NULL,'2013-02-20','FERROPAK COMERCIAL',NULL),
(6758,77,NULL,6204.00,'MXN',NULL,6204.00,'2013-02-22','2013-03-31',NULL,NULL,NULL,'2013-02-22','Ternium México',NULL),
(6759,78,NULL,381184.41,'MXN',NULL,381184.41,'2013-02-22','2013-03-31',NULL,NULL,NULL,'2013-02-22','Ternium México',NULL),
(6760,79,NULL,0.00,'MXN',NULL,0.00,'2013-02-26','2013-02-05',NULL,NULL,NULL,'2013-02-26','CANCELADA',NULL),
(6761,80,NULL,8482.54,'MXN',NULL,8482.54,'2013-02-26','2013-04-15',NULL,NULL,NULL,'2013-02-26','FRISA FORJADOS',NULL),
(6762,81,NULL,20137.90,'MXN',NULL,20137.90,'2013-02-26','2013-03-31',NULL,NULL,NULL,'2013-02-26','Ternium México',NULL),
(6763,82,NULL,198612.00,'MXN',NULL,198612.00,'2013-02-27','2013-03-31',NULL,NULL,NULL,'2013-02-27','Ternium México',NULL),
(6764,83,NULL,5184.00,'MXN',NULL,5184.00,'2013-02-27','2013-04-01',NULL,NULL,NULL,'2013-02-27','FERROPAK COMERCIAL',NULL),
(6765,84,NULL,4370.40,'MXN',NULL,4370.40,'2013-02-27','2013-04-02',NULL,NULL,NULL,'2013-02-27','FERROPAK COMERCIAL',NULL),
(6766,85,NULL,0.00,'MXN',NULL,0.00,'2013-03-01','2013-02-05',NULL,NULL,NULL,'2013-03-01','CANCELADA',NULL),
(6767,86,NULL,5184.00,'MXN',NULL,5184.00,'2013-03-01','2013-05-22',NULL,NULL,NULL,'2013-03-01','FERROPAK COMERCIAL',NULL),
(6768,87,NULL,4370.40,'MXN',NULL,4370.40,'2013-03-01','2013-04-26',NULL,NULL,NULL,'2013-03-01','FERROPAK COMERCIAL',NULL),
(6769,88,NULL,4127.60,'MXN',NULL,4127.60,'2013-03-05','2013-04-26',NULL,NULL,NULL,'2013-03-05','FERROPAK COMERCIAL',NULL),
(6770,89,NULL,5184.00,'MXN',NULL,5184.00,'2013-03-07','2013-05-22',NULL,NULL,NULL,'2013-03-07','FERROPAK COMERCIAL',NULL),
(6771,90,NULL,5184.00,'MXN',NULL,5184.00,'2013-03-07','2013-05-22',NULL,NULL,NULL,'2013-03-07','FERROPAK COMERCIAL',NULL),
(6772,91,NULL,5184.00,'MXN',NULL,5184.00,'2013-03-07','2013-05-22',NULL,NULL,NULL,'2013-03-07','FERROPAK COMERCIAL',NULL),
(6773,92,NULL,5184.00,'MXN',NULL,5184.00,'2013-03-07','2013-05-22',NULL,NULL,NULL,'2013-03-07','FERROPAK COMERCIAL',NULL),
(6774,93,NULL,5184.00,'MXN',NULL,5184.00,'2013-03-07','2013-05-22',NULL,NULL,NULL,'2013-03-07','FERROPAK COMERCIAL',NULL),
(6775,94,NULL,5184.00,'MXN',NULL,5184.00,'2013-03-07','2013-05-22',NULL,NULL,NULL,'2013-03-07','FERROPAK COMERCIAL',NULL),
(6776,95,NULL,4320.00,'MXN',NULL,4320.00,'2013-03-07','2013-05-22',NULL,NULL,NULL,'2013-03-07','FERROPAK COMERCIAL',NULL),
(6777,96,NULL,5184.00,'MXN',NULL,5184.00,'2013-03-07','2013-05-22',NULL,NULL,NULL,'2013-03-07','FERROPAK COMERCIAL',NULL),
(6778,97,NULL,12960.00,'MXN',NULL,12960.00,'2013-03-11','2013-04-26',NULL,NULL,NULL,'2013-03-11','FERROPAK COMERCIAL',NULL),
(6779,98,NULL,15552.00,'MXN',NULL,15552.00,'2013-03-11','2013-05-31',NULL,NULL,NULL,'2013-03-11','FERROPAK COMERCIAL',NULL),
(6780,99,NULL,15552.00,'MXN',NULL,15552.00,'2013-03-11','2013-06-17',NULL,NULL,NULL,'2013-03-11','FERROPAK COMERCIAL',NULL),
(6781,100,NULL,5184.00,'MXN',NULL,5184.00,'2013-03-12','2013-05-22',NULL,NULL,NULL,'2013-03-12','FERROPAK COMERCIAL',NULL),
(6782,101,NULL,6480.00,'MXN',NULL,6480.00,'2013-03-12','2013-06-14',NULL,NULL,NULL,'2013-03-12','FERROPAK COMERCIAL',NULL),
(6783,102,NULL,5184.00,'MXN',NULL,5184.00,'2013-03-15','2013-05-22',NULL,NULL,NULL,'2013-03-15','FERROPAK COMERCIAL',NULL),
(6784,103,NULL,6480.00,'MXN',NULL,6480.00,'2013-03-15','2013-06-14',NULL,NULL,NULL,'2013-03-15','FERROPAK COMERCIAL',NULL),
(6785,104,NULL,8795.40,'MXN',NULL,8795.40,'2013-03-15','2013-05-15',NULL,NULL,NULL,'2013-03-15','FRISA FORJADOS',NULL),
(6786,105,NULL,219149.30,'MXN',NULL,219149.30,'2013-03-15','2012-04-30',NULL,NULL,NULL,'2013-03-15','Ternium México',NULL),
(6787,106,NULL,492365.87,'MXN',NULL,492365.87,'2013-03-19','2013-04-30',NULL,NULL,NULL,'2013-03-19','Ternium México',NULL),
(6788,107,NULL,15552.00,'MXN',NULL,15552.00,'2013-03-20','2013-06-17',NULL,NULL,NULL,'2013-03-20','FERROPAK COMERCIAL',NULL),
(6789,108,NULL,12960.00,'MXN',NULL,12960.00,'2013-03-21','2013-06-17',NULL,NULL,NULL,'2013-03-21','FERROPAK COMERCIAL',NULL),
(6790,109,NULL,7247.15,'MXN',NULL,7247.15,'2013-03-21','2013-04-30',NULL,NULL,NULL,'2013-03-21','Ternium México',NULL),
(6791,110,NULL,520078.43,'MXN',NULL,520078.43,'2013-03-21','2013-04-30',NULL,NULL,NULL,'2013-03-21','Ternium México',NULL),
(6792,111,NULL,6400.06,'MXN',NULL,6400.06,'2013-03-21','2013-05-15',NULL,NULL,NULL,'2013-03-21','FRISA FORJADOS',NULL),
(6793,112,NULL,4320.00,'MXN',NULL,4320.00,'2013-03-22','2014-05-31',NULL,NULL,NULL,'2013-03-22','FERROPAK COMERCIAL',NULL),
(6794,113,NULL,5400.00,'MXN',NULL,5400.00,'2013-03-22','2013-05-22',NULL,NULL,NULL,'2013-03-22','FERROPAK COMERCIAL',NULL),
(6795,114,NULL,5184.00,'MXN',NULL,5184.00,'2013-04-05','2013-05-31',NULL,NULL,NULL,'2013-04-05','FERROPAK COMERCIAL',NULL),
(6796,115,NULL,6480.00,'MXN',NULL,6480.00,'2013-04-05','2013-05-22',NULL,NULL,NULL,'2013-04-05','FERROPAK COMERCIAL',NULL),
(6797,116,NULL,15552.00,'MXN',NULL,15552.00,'2013-04-05','2013-06-17',NULL,NULL,NULL,'2013-04-05','FERROPAK COMERCIAL',NULL),
(6798,117,NULL,5184.00,'MXN',NULL,5184.00,'2013-04-05','2013-05-31',NULL,NULL,NULL,'2013-04-05','FERROPAK COMERCIAL',NULL),
(6799,118,NULL,5400.00,'MXN',NULL,5400.00,'2013-04-05','2013-05-22',NULL,NULL,NULL,'2013-04-05','FERROPAK COMERCIAL',NULL),
(6800,119,NULL,12960.00,'MXN',NULL,12960.00,'2013-04-05','2013-06-17',NULL,NULL,NULL,'2013-04-05','FERROPAK COMERCIAL',NULL),
(6801,120,NULL,14764.36,'MXN',NULL,14764.36,'2013-04-09','2013-06-14',NULL,NULL,NULL,'2013-04-09','FRISA FORJADOS',NULL),
(6802,121,NULL,5184.00,'MXN',NULL,5184.00,'2013-04-12','2013-05-31',NULL,NULL,NULL,'2013-04-12','FERROPAK COMERCIAL',NULL),
(6803,122,NULL,4680.00,'MXN',NULL,4680.00,'2013-04-12','2013-05-31',NULL,NULL,NULL,'2013-04-12','FERROPAK COMERCIAL',NULL),
(6804,123,NULL,14832.00,'MXN',NULL,14832.00,'2013-04-12','2013-06-14',NULL,NULL,NULL,'2013-04-12','FERROPAK COMERCIAL',NULL),
(6805,124,NULL,397544.77,'MXN',NULL,397544.77,'2013-04-19','2013-05-31',NULL,NULL,NULL,'2013-04-19','Ternium México',NULL),
(6806,125,NULL,16870.24,'MXN',NULL,16870.24,'2013-04-19','2013-06-14',NULL,NULL,NULL,'2013-04-19','FRISA FORJADOS',NULL),
(6807,126,NULL,14832.00,'MXN',NULL,14832.00,'2013-04-19','2013-06-14',NULL,NULL,NULL,'2013-04-19','FERROPAK COMERCIAL',NULL),
(6808,127,NULL,5184.00,'MXN',NULL,5184.00,'2013-04-19','2013-05-31',NULL,NULL,NULL,'2013-04-19','FERROPAK COMERCIAL',NULL),
(6809,128,NULL,6480.00,'MXN',NULL,6480.00,'2013-04-19','2013-05-31',NULL,NULL,NULL,'2013-04-19','FERROPAK COMERCIAL',NULL),
(6810,129,NULL,30163.00,'MXN',NULL,30163.00,'2013-04-19','2013-05-31',NULL,NULL,NULL,'2013-04-19','Ternium México',NULL),
(6811,130,NULL,273617.41,'MXN',NULL,273617.41,'2013-04-22','2013-05-31',NULL,NULL,NULL,'2013-04-22','Ternium México',NULL),
(6812,131,NULL,5184.00,'MXN',NULL,5184.00,'2013-04-26','2013-06-14',NULL,NULL,NULL,'2013-04-26','FERROPAK COMERCIAL',NULL),
(6813,132,NULL,6480.00,'MXN',NULL,6480.00,'2013-04-26','2013-06-14',NULL,NULL,NULL,'2013-04-26','FERROPAK COMERCIAL',NULL),
(6814,133,NULL,14832.00,'MXN',NULL,14832.00,'2013-04-26','2013-06-14',NULL,NULL,NULL,'2013-04-26','FERROPAK COMERCIAL',NULL),
(6815,134,NULL,14238.48,'MXN',NULL,14238.48,'2013-04-29','2013-06-14',NULL,NULL,NULL,'2013-04-29','FRISA FORJADOS',NULL),
(6816,135,NULL,4320.00,'MXN',NULL,4320.00,'2013-05-06','2013-06-14',NULL,NULL,NULL,'2013-05-06','FERROPAK COMERCIAL',NULL),
(6817,136,NULL,5400.00,'MXN',NULL,5400.00,'2013-05-06','2013-06-14',NULL,NULL,NULL,'2013-05-06','FERROPAK COMERCIAL',NULL),
(6818,137,NULL,8640.00,'MXN',NULL,8640.00,'2013-05-07','2013-06-14',NULL,NULL,NULL,'2013-05-07','FERROPAK COMERCIAL',NULL),
(6819,138,NULL,3720.00,'MXN',NULL,3720.00,'2013-05-07','2013-06-14',NULL,NULL,NULL,'2013-05-07','FERROPAK COMERCIAL',NULL),
(6820,139,NULL,0.00,'MXN',NULL,0.00,'2013-05-09','2013-02-05',NULL,NULL,NULL,'2013-05-09','CANCELADA',NULL),
(6821,140,NULL,0.00,'MXN',NULL,0.00,'2013-05-09','2013-02-05',NULL,NULL,NULL,'2013-05-09','CANCELADA',NULL),
(6822,141,NULL,3282.28,'MXN',NULL,3282.28,'2013-05-09','2013-07-15',NULL,NULL,NULL,'2013-05-09','FRISA FORJADOS',NULL),
(6823,142,NULL,5184.00,'MXN',NULL,5184.00,'2013-05-09','2013-06-14',NULL,NULL,NULL,'2013-05-09','FERROPAK COMERCIAL',NULL),
(6824,143,NULL,6480.00,'MXN',NULL,6480.00,'2013-05-09','2013-06-14',NULL,NULL,NULL,'2013-05-09','FERROPAK COMERCIAL',NULL),
(6825,144,NULL,9504.00,'MXN',NULL,9504.00,'2013-05-09','2013-06-14',NULL,NULL,NULL,'2013-05-09','FERROPAK COMERCIAL',NULL),
(6826,145,NULL,4464.00,'MXN',NULL,4464.00,'2013-05-09','2013-06-14',NULL,NULL,NULL,'2013-05-09','FERROPAK COMERCIAL',NULL),
(6827,146,NULL,29712.40,'MXN',NULL,29712.40,'2013-05-15','2013-05-31',NULL,NULL,NULL,'2013-05-15','Ternium México',NULL),
(6828,147,NULL,48439.04,'MXN',NULL,48439.04,'2013-05-15','2013-07-15',NULL,NULL,NULL,'2013-05-15','FRISA FORJADOS',NULL),
(6829,148,NULL,4342.38,'MXN',NULL,4342.38,'2013-05-16','2013-07-15',NULL,NULL,NULL,'2013-05-16','FRISA FORJADOS',NULL),
(6830,149,NULL,3399.36,'MXN',NULL,3399.36,'2013-05-16','2013-07-15',NULL,NULL,NULL,'2013-05-16','FRISA FORJADOS',NULL),
(6831,150,NULL,3655.02,'MXN',NULL,3655.02,'2013-05-16','2013-08-15',NULL,NULL,NULL,'2013-05-16','FRISA FORJADOS',NULL),
(6832,151,NULL,10368.00,'MXN',NULL,10368.00,'2013-05-17','2013-06-14',NULL,NULL,NULL,'2013-05-17','FERROPAK COMERCIAL',NULL),
(6833,152,NULL,4464.00,'MXN',NULL,4464.00,'2013-05-17','2013-06-14',NULL,NULL,NULL,'2013-05-17','FERROPAK COMERCIAL',NULL),
(6834,153,NULL,4752.00,'MXN',NULL,4752.00,'2013-05-17','2013-06-14',NULL,NULL,NULL,'2013-05-17','FERROPAK COMERCIAL',NULL),
(6835,154,NULL,5400.00,'MXN',NULL,5400.00,'2013-05-17','2013-06-14',NULL,NULL,NULL,'2013-05-17','FERROPAK COMERCIAL',NULL),
(6836,155,11,161418.00,'MXN',NULL,161418.00,'2013-05-17','2013-05-17',NULL,NULL,NULL,'2013-05-17','Transportadores Industriales de México',999),
(6837,156,11,148264.00,'MXN',NULL,148264.00,'2013-05-17','2013-05-17',NULL,NULL,NULL,'2013-05-17','Transportadores Industriales de México',999),
(6838,157,11,121352.48,'MXN',NULL,121352.48,'2013-05-17','2013-05-17',NULL,NULL,NULL,'2013-05-17','Transportadores Industriales de México',999),
(6839,158,NULL,334870.40,'MXN',NULL,334870.40,'2013-05-20','2013-06-30',NULL,NULL,NULL,'2013-05-20','Ternium México',NULL),
(6840,159,NULL,278695.87,'MXN',NULL,278695.87,'2013-05-21','2013-06-30',NULL,NULL,NULL,'2013-05-21','Ternium México',NULL),
(6841,160,NULL,4464.00,'MXN',NULL,4464.00,'2013-05-23','2013-06-14',NULL,NULL,NULL,'2013-05-23','FERROPAK COMERCIAL',NULL),
(6842,161,NULL,10368.00,'MXN',NULL,10368.00,'2013-05-23','2013-06-14',NULL,NULL,NULL,'2013-05-23','FERROPAK COMERCIAL',NULL),
(6843,162,NULL,19402.20,'MXN',NULL,19402.20,'2013-05-24','2013-07-15',NULL,NULL,NULL,'2013-05-24','FRISA FORJADOS',NULL),
(6844,163,NULL,5184.00,'MXN',NULL,5184.00,'2013-05-27','2013-06-19',NULL,NULL,NULL,'2013-05-27','FERROPAK COMERCIAL',NULL),
(6845,164,NULL,5400.00,'MXN',NULL,5400.00,'2013-05-27','2013-06-14',NULL,NULL,NULL,'2013-05-27','FERROPAK COMERCIAL',NULL),
(6846,165,NULL,9504.00,'MXN',NULL,9504.00,'2013-05-30','2013-06-19',NULL,NULL,NULL,'2013-05-30','FERROPAK COMERCIAL',NULL),
(6847,166,NULL,4464.00,'MXN',NULL,4464.00,'2013-05-30','2013-06-19',NULL,NULL,NULL,'2013-05-30','FERROPAK COMERCIAL',NULL),
(6848,167,NULL,8321.04,'MXN',NULL,8321.04,'2013-05-31','2013-07-15',NULL,NULL,NULL,'2013-05-31','FRISA FORJADOS',NULL),
(6849,168,NULL,5184.00,'MXN',NULL,5184.00,'2013-06-03','2013-07-01',NULL,NULL,NULL,'2013-06-03','FERROPAK COMERCIAL',NULL),
(6850,169,NULL,6480.00,'MXN',NULL,6480.00,'2013-06-03','2013-07-01',NULL,NULL,NULL,'2013-06-03','FERROPAK COMERCIAL',NULL),
(6851,170,NULL,8640.00,'MXN',NULL,8640.00,'2013-06-07','2013-07-05',NULL,NULL,NULL,'2013-06-07','FERROPAK COMERCIAL',NULL),
(6852,171,NULL,3720.00,'MXN',NULL,3720.00,'2013-06-07','2013-07-05',NULL,NULL,NULL,'2013-06-07','FERROPAK COMERCIAL',NULL),
(6853,172,NULL,5184.00,'MXN',NULL,5184.00,'2013-06-07','2013-07-05',NULL,NULL,NULL,'2013-06-07','FERROPAK COMERCIAL',NULL),
(6854,173,NULL,6480.00,'MXN',NULL,6480.00,'2013-06-07','2013-07-05',NULL,NULL,NULL,'2013-06-07','FERROPAK COMERCIAL',NULL),
(6855,174,NULL,10368.00,'MXN',NULL,10368.00,'2013-06-13','2013-07-05',NULL,NULL,NULL,'2013-06-13','FERROPAK COMERCIAL',NULL),
(6856,175,NULL,4464.00,'MXN',NULL,4464.00,'2013-06-13','2013-07-05',NULL,NULL,NULL,'2013-06-13','FERROPAK COMERCIAL',NULL),
(6857,176,NULL,5184.00,'MXN',NULL,5184.00,'2013-06-13','2013-07-24',NULL,NULL,NULL,'2013-06-13','FERROPAK COMERCIAL',NULL),
(6858,177,NULL,6480.00,'MXN',NULL,6480.00,'2013-06-13','2013-07-24',NULL,NULL,NULL,'2013-06-13','FERROPAK COMERCIAL',NULL),
(6859,178,NULL,21310.27,'MXN',NULL,21310.27,'2013-06-21','2013-08-15',NULL,NULL,NULL,'2013-06-21','FRISA FORJADOS',NULL),
(6860,179,NULL,385719.07,'MXN',NULL,385719.07,'2013-06-21','2013-07-30',NULL,NULL,NULL,'2013-06-21','Ternium México',NULL),
(6861,180,NULL,5184.00,'MXN',NULL,5184.00,'2013-06-24','2013-07-22',NULL,NULL,NULL,'2013-06-24','FERROPAK COMERCIAL',NULL),
(6862,181,NULL,6480.00,'MXN',NULL,6480.00,'2013-06-24','2013-07-22',NULL,NULL,NULL,'2013-06-24','FERROPAK COMERCIAL',NULL),
(6863,182,NULL,10368.00,'MXN',NULL,10368.00,'2013-06-25','2013-07-22',NULL,NULL,NULL,'2013-06-25','FERROPAK COMERCIAL',NULL),
(6864,183,NULL,4464.00,'MXN',NULL,4464.00,'2013-06-25','2013-07-22',NULL,NULL,NULL,'2013-06-25','FERROPAK COMERCIAL',NULL),
(6865,184,NULL,23983.54,'MXN',NULL,23983.54,'2013-06-27','2013-08-15',NULL,NULL,NULL,'2013-06-27','FRISA FORJADOS',NULL),
(6866,185,NULL,430.48,'MXN',NULL,430.48,'2013-06-28','2013-08-15',NULL,NULL,NULL,'2013-06-28','FRISA FORJADOS',NULL),
(6867,186,NULL,7344.00,'MXN',NULL,7344.00,'2013-06-28','2013-07-30',NULL,NULL,NULL,'2013-06-28','Ternium México',NULL),
(6868,187,NULL,5184.00,'MXN',NULL,5184.00,'2013-06-28','2013-07-22',NULL,NULL,NULL,'2013-06-28','FERROPAK COMERCIAL',NULL),
(6869,188,NULL,6480.00,'MXN',NULL,6480.00,'2013-06-28','2013-07-22',NULL,NULL,NULL,'2013-06-28','FERROPAK COMERCIAL',NULL),
(6870,189,NULL,10368.00,'MXN',NULL,10368.00,'2013-06-28','2013-08-02',NULL,NULL,NULL,'2013-06-28','FERROPAK COMERCIAL',NULL),
(6871,190,NULL,4464.00,'MXN',NULL,4464.00,'2013-06-28','2013-08-02',NULL,NULL,NULL,'2013-06-28','FERROPAK COMERCIAL',NULL),
(6872,191,NULL,30747.81,'MXN',NULL,30747.81,'2013-07-05','2013-09-13',NULL,NULL,NULL,'2013-07-05','FRISA FORJADOS',NULL),
(6873,192,NULL,203076.00,'MXN',NULL,203076.00,'2013-07-05','2013-08-30',NULL,NULL,NULL,'2013-07-05','Ternium México',NULL),
(6874,193,NULL,5184.00,'MXN',NULL,5184.00,'2013-07-05','2013-08-02',NULL,NULL,NULL,'2013-07-05','FERROPAK COMERCIAL',NULL),
(6875,194,NULL,4320.00,'MXN',NULL,4320.00,'2013-07-05','2013-08-02',NULL,NULL,NULL,'2013-07-05','FERROPAK COMERCIAL',NULL),
(6876,195,NULL,10368.00,'MXN',NULL,10368.00,'2013-07-05','2013-08-28',NULL,NULL,NULL,'2013-07-05','FERROPAK COMERCIAL',NULL),
(6877,196,NULL,4464.00,'MXN',NULL,4464.00,'2013-07-05','2013-08-02',NULL,NULL,NULL,'2013-07-05','FERROPAK COMERCIAL',NULL),
(6878,197,NULL,378740.70,'MXN',NULL,378740.70,'2013-07-08','2013-08-30',NULL,NULL,NULL,'2013-07-08','Ternium México',NULL),
(6879,198,NULL,4968.00,'MXN',NULL,4968.00,'2013-07-11','2013-08-28',NULL,NULL,NULL,'2013-07-11','FERROPAK COMERCIAL',NULL),
(6880,199,NULL,6120.00,'MXN',NULL,6120.00,'2013-07-11','2013-08-28',NULL,NULL,NULL,'2013-07-11','FERROPAK COMERCIAL',NULL),
(6881,200,NULL,558188.83,'MXN',NULL,558188.83,'2013-07-15','2013-07-30',NULL,NULL,NULL,'2013-07-15','Ternium México',NULL),
(6882,201,NULL,10368.00,'MXN',NULL,10368.00,'2013-07-16','2013-08-28',NULL,NULL,NULL,'2013-07-16','FERROPAK COMERCIAL',NULL),
(6883,202,NULL,4464.00,'MXN',NULL,4464.00,'2013-07-16','2013-08-28',NULL,NULL,NULL,'2013-07-16','FERROPAK COMERCIAL',NULL),
(6884,203,NULL,26880.00,'MXN',NULL,26880.00,'2013-07-16','2013-08-30',NULL,NULL,NULL,'2013-07-16','Ternium México',NULL),
(6885,204,NULL,291204.34,'MXN',NULL,291204.34,'2013-07-18','2013-08-30',NULL,NULL,NULL,'2013-07-18','Ternium México',NULL),
(6886,205,NULL,21484.32,'MXN',NULL,21484.32,'2013-07-18','2013-09-13',NULL,NULL,NULL,'2013-07-18','FRISA FORJADOS',NULL),
(6887,206,NULL,5184.00,'MXN',NULL,5184.00,'2013-07-22','2013-08-28',NULL,NULL,NULL,'2013-07-22','FERROPAK COMERCIAL',NULL),
(6888,207,NULL,6480.00,'MXN',NULL,6480.00,'2013-07-22','2013-08-28',NULL,NULL,NULL,'2013-07-22','FERROPAK COMERCIAL',NULL),
(6889,208,NULL,10368.00,'MXN',NULL,10368.00,'2013-07-22','2013-08-28',NULL,NULL,NULL,'2013-07-22','FERROPAK COMERCIAL',NULL),
(6890,209,NULL,4464.00,'MXN',NULL,4464.00,'2013-07-22','2013-08-28',NULL,NULL,NULL,'2013-07-22','FERROPAK COMERCIAL',NULL),
(6891,210,NULL,240070.50,'MXN',NULL,240070.50,'2013-07-22','2013-08-30',NULL,NULL,NULL,'2013-07-22','Ternium México',NULL),
(6892,211,NULL,36000.68,'MXN',NULL,36000.68,'2013-07-25','2013-09-13',NULL,NULL,NULL,'2013-07-25','FRISA FORJADOS',NULL),
(6893,212,NULL,26317.93,'MXN',NULL,26317.93,'2013-07-30','2013-09-13',NULL,NULL,NULL,'2013-07-30','FRISA FORJADOS',NULL),
(6894,213,NULL,5076.00,'MXN',NULL,5076.00,'2013-07-31','2013-09-25',NULL,NULL,NULL,'2013-07-31','FERROPAK COMERCIAL',NULL),
(6895,214,NULL,0.00,'MXN',NULL,0.00,'2013-07-31','2013-02-05',NULL,NULL,NULL,'2013-07-31','CANCELADA',NULL),
(6896,215,NULL,6367.50,'MXN',NULL,6367.50,'2013-07-31','2013-09-25',NULL,NULL,NULL,'2013-07-31','FERROPAK COMERCIAL',NULL),
(6897,216,NULL,10368.00,'MXN',NULL,10368.00,'2013-07-31','2013-09-25',NULL,NULL,NULL,'2013-07-31','FERROPAK COMERCIAL',NULL),
(6898,217,NULL,4464.00,'MXN',NULL,4464.00,'2013-07-31','2013-09-25',NULL,NULL,NULL,'2013-07-31','FERROPAK COMERCIAL',NULL),
(6899,218,NULL,5076.00,'MXN',NULL,5076.00,'2013-08-12','2013-09-25',NULL,NULL,NULL,'2013-08-12','FERROPAK COMERCIAL',NULL),
(6900,219,NULL,6480.00,'MXN',NULL,6480.00,'2013-08-12','2013-09-25',NULL,NULL,NULL,'2013-08-12','FERROPAK COMERCIAL',NULL),
(6901,220,NULL,10368.00,'MXN',NULL,10368.00,'2013-08-12','2013-09-25',NULL,NULL,NULL,'2013-08-12','FERROPAK COMERCIAL',NULL),
(6902,221,NULL,1953.00,'MXN',NULL,1953.00,'2013-08-12','2013-09-25',NULL,NULL,NULL,'2013-08-12','FERROPAK COMERCIAL',NULL),
(6903,222,NULL,4320.00,'MXN',NULL,4320.00,'2013-08-12','2013-09-25',NULL,NULL,NULL,'2013-08-12','FERROPAK COMERCIAL',NULL),
(6904,223,NULL,6480.00,'MXN',NULL,6480.00,'2013-08-12','2013-09-25',NULL,NULL,NULL,'2013-08-12','FERROPAK COMERCIAL',NULL),
(6905,224,NULL,10368.00,'MXN',NULL,10368.00,'2013-08-12','2013-09-25',NULL,NULL,NULL,'2013-08-12','FERROPAK COMERCIAL',NULL),
(6906,225,NULL,4464.00,'MXN',NULL,4464.00,'2013-08-12','2013-09-25',NULL,NULL,NULL,'2013-08-12','FERROPAK COMERCIAL',NULL),
(6907,226,NULL,45894.67,'MXN',NULL,45894.67,'2013-08-16','2013-10-15',NULL,NULL,NULL,'2013-08-16','FRISA FORJADOS',NULL),
(6908,227,NULL,0.00,'MXN',NULL,0.00,'2013-08-16','2013-02-05',NULL,NULL,NULL,'2013-08-16','CANCELADA',NULL),
(6909,228,NULL,347654.20,'MXN',NULL,347654.20,'2013-08-19','2013-09-30',NULL,NULL,NULL,'2013-08-19','Ternium México',NULL),
(6910,229,NULL,465511.90,'MXN',NULL,465511.90,'2013-08-22','2013-09-30',NULL,NULL,NULL,'2013-08-22','Ternium México',NULL),
(6911,230,NULL,5184.00,'MXN',NULL,5184.00,'2013-08-22','2013-09-27',NULL,NULL,NULL,'2013-08-22','FERROPAK COMERCIAL',NULL),
(6912,231,NULL,6480.00,'MXN',NULL,6480.00,'2013-08-22','2013-09-27',NULL,NULL,NULL,'2013-08-22','FERROPAK COMERCIAL',NULL),
(6913,232,NULL,10368.00,'MXN',NULL,10368.00,'2013-08-22','2013-09-25',NULL,NULL,NULL,'2013-08-22','FERROPAK COMERCIAL',NULL),
(6914,233,NULL,4464.00,'MXN',NULL,4464.00,'2013-08-22','2013-09-25',NULL,NULL,NULL,'2013-08-22','FERROPAK COMERCIAL',NULL),
(6915,234,NULL,2058.00,'MXN',NULL,2058.00,'2013-08-22','2013-09-27',NULL,NULL,NULL,'2013-08-22','FERROPAK COMERCIAL',NULL),
(6916,235,NULL,0.00,'MXN',NULL,0.00,'2013-08-26','2013-02-05',NULL,NULL,NULL,'2013-08-26','CANCELADA',NULL),
(6917,236,NULL,54885.00,'MXN',NULL,54885.00,'2013-08-26','2013-09-30',NULL,NULL,NULL,'2013-08-26','Ternium México',NULL),
(6918,237,NULL,53866.54,'MXN',NULL,53866.54,'2013-08-26','2013-10-15',NULL,NULL,NULL,'2013-08-26','FRISA FORJADOS',NULL),
(6919,238,NULL,5184.00,'MXN',NULL,5184.00,'2013-08-29','2013-09-27',NULL,NULL,NULL,'2013-08-29','FERROPAK COMERCIAL',NULL),
(6920,239,NULL,6480.00,'MXN',NULL,6480.00,'2013-08-29','2013-09-27',NULL,NULL,NULL,'2013-08-29','FERROPAK COMERCIAL',NULL),
(6921,240,NULL,8640.00,'MXN',NULL,8640.00,'2013-08-29','2013-09-27',NULL,NULL,NULL,'2013-08-29','FERROPAK COMERCIAL',NULL),
(6922,241,NULL,2976.00,'MXN',NULL,2976.00,'2013-08-29','2013-09-27',NULL,NULL,NULL,'2013-08-29','FERROPAK COMERCIAL',NULL),
(6923,242,NULL,3920.00,'MXN',NULL,3920.00,'2013-08-29','2013-09-27',NULL,NULL,NULL,'2013-08-29','FERROPAK COMERCIAL',NULL),
(6924,243,NULL,4282.56,'MXN',NULL,4282.56,'2013-08-29','2013-10-15',NULL,NULL,NULL,'2013-08-29','FRISA FORJADOS',NULL),
(6925,244,NULL,9557.04,'MXN',NULL,9557.04,'2013-08-30','2013-10-15',NULL,NULL,NULL,'2013-08-30','FRISA FORJADOS',NULL),
(6926,245,NULL,5184.00,'MXN',NULL,5184.00,'2013-09-06','2013-10-04',NULL,NULL,NULL,'2013-09-06','FERROPAK COMERCIAL',NULL),
(6927,246,NULL,6480.00,'MXN',NULL,6480.00,'2013-09-06','2013-10-04',NULL,NULL,NULL,'2013-09-06','FERROPAK COMERCIAL',NULL),
(6928,247,NULL,2352.00,'MXN',NULL,2352.00,'2013-09-06','2013-10-04',NULL,NULL,NULL,'2013-09-06','FERROPAK COMERCIAL',NULL),
(6929,248,NULL,10368.00,'MXN',NULL,10368.00,'2013-09-06','2013-10-04',NULL,NULL,NULL,'2013-09-06','FERROPAK COMERCIAL',NULL),
(6930,249,NULL,3720.00,'MXN',NULL,3720.00,'2013-09-06','2013-10-04',NULL,NULL,NULL,'2013-09-06','FERROPAK COMERCIAL',NULL),
(6931,250,NULL,7056.00,'MXN',NULL,7056.00,'2013-09-06','2013-10-04',NULL,NULL,NULL,'2013-09-06','FERROPAK COMERCIAL',NULL),
(6932,251,NULL,5184.00,'MXN',NULL,5184.00,'2013-09-06','2013-10-04',NULL,NULL,NULL,'2013-09-06','FERROPAK COMERCIAL',NULL),
(6933,252,NULL,6480.00,'MXN',NULL,6480.00,'2013-09-06','2013-10-04',NULL,NULL,NULL,'2013-09-06','FERROPAK COMERCIAL',NULL),
(6934,253,NULL,4704.00,'MXN',NULL,4704.00,'2013-09-06','2013-10-04',NULL,NULL,NULL,'2013-09-06','FERROPAK COMERCIAL',NULL),
(6935,254,NULL,9504.00,'MXN',NULL,9504.00,'2013-09-06','2013-10-04',NULL,NULL,NULL,'2013-09-06','FERROPAK COMERCIAL',NULL),
(6936,255,NULL,4464.00,'MXN',NULL,4464.00,'2013-09-06','2013-10-04',NULL,NULL,NULL,'2013-09-06','FERROPAK COMERCIAL',NULL),
(6937,256,NULL,4704.00,'MXN',NULL,4704.00,'2013-09-06','2013-10-04',NULL,NULL,NULL,'2013-09-06','FERROPAK COMERCIAL',NULL),
(6938,257,NULL,0.00,'MXN',NULL,0.00,'2013-09-13','2013-02-05',NULL,NULL,NULL,'2013-09-13','CANCELADA',NULL),
(6939,258,NULL,0.00,'MXN',NULL,0.00,'2013-09-13','2013-02-05',NULL,NULL,NULL,'2013-09-13','CANCELADA',NULL),
(6940,259,NULL,5184.00,'MXN',NULL,5184.00,'2013-09-13','2013-10-25',NULL,NULL,NULL,'2013-09-13','FERROPAK COMERCIAL',NULL),
(6941,260,NULL,6480.00,'MXN',NULL,6480.00,'2013-09-13','2013-10-25',NULL,NULL,NULL,'2013-09-13','FERROPAK COMERCIAL',NULL),
(6942,261,NULL,4704.00,'MXN',NULL,4704.00,'2013-09-13','2013-10-25',NULL,NULL,NULL,'2013-09-13','FERROPAK COMERCIAL',NULL),
(6943,262,NULL,10368.00,'MXN',NULL,10368.00,'2013-09-13','2013-10-25',NULL,NULL,NULL,'2013-09-13','FERROPAK COMERCIAL',NULL),
(6944,263,NULL,4464.00,'MXN',NULL,4464.00,'2013-09-13','2013-10-25',NULL,NULL,NULL,'2013-09-13','FERROPAK COMERCIAL',NULL),
(6945,264,NULL,268633.50,'MXN',NULL,268633.50,'2013-09-13','2013-10-30',NULL,NULL,NULL,'2013-09-13','Ternium México',NULL),
(6946,265,NULL,44328.43,'MXN',NULL,44328.43,'2013-09-13','2013-11-15',NULL,NULL,NULL,'2013-09-13','FRISA FORJADOS',NULL),
(6947,266,NULL,4704.00,'MXN',NULL,4704.00,'2013-09-19','2013-10-25',NULL,NULL,NULL,'2013-09-19','FERROPAK COMERCIAL',NULL),
(6948,267,NULL,540423.48,'MXN',NULL,540423.48,'2013-09-20','2013-10-30',NULL,NULL,NULL,'2013-09-20','Ternium México',NULL),
(6949,268,NULL,35511.46,'MXN',NULL,35511.46,'2013-09-20','2013-11-15',NULL,NULL,NULL,'2013-09-20','FRISA FORJADOS',NULL),
(6950,269,NULL,240571.41,'MXN',NULL,240571.41,'2013-09-23','2013-10-30',NULL,NULL,NULL,'2013-09-23','Ternium México',NULL),
(6951,270,NULL,8640.00,'MXN',NULL,8640.00,'2013-09-23','2013-10-25',NULL,NULL,NULL,'2013-09-23','FERROPAK COMERCIAL',NULL),
(6952,271,NULL,5400.00,'MXN',NULL,5400.00,'2013-09-23','2013-10-25',NULL,NULL,NULL,'2013-09-23','FERROPAK COMERCIAL',NULL),
(6953,272,NULL,3920.00,'MXN',NULL,3920.00,'2013-09-23','2013-10-25',NULL,NULL,NULL,'2013-09-23','FERROPAK COMERCIAL',NULL),
(6954,273,NULL,8640.00,'MXN',NULL,8640.00,'2013-09-23','2013-10-25',NULL,NULL,NULL,'2013-09-23','FERROPAK COMERCIAL',NULL),
(6955,274,NULL,3720.00,'MXN',NULL,3720.00,'2013-09-23','2013-10-25',NULL,NULL,NULL,'2013-09-23','FERROPAK COMERCIAL',NULL),
(6956,275,NULL,3920.00,'MXN',NULL,3920.00,'2013-09-23','2013-10-25',NULL,NULL,NULL,'2013-09-23','FERROPAK COMERCIAL',NULL),
(6957,276,NULL,20161.67,'MXN',NULL,20161.67,'2013-09-27','2013-11-15',NULL,NULL,NULL,'2013-09-27','FRISA FORJADOS',NULL),
(6958,277,NULL,10368.00,'MXN',NULL,10368.00,'2013-09-27','2013-10-25',NULL,NULL,NULL,'2013-09-27','FERROPAK COMERCIAL',NULL),
(6959,278,NULL,6480.00,'MXN',NULL,6480.00,'2013-09-27','2013-10-25',NULL,NULL,NULL,'2013-09-27','FERROPAK COMERCIAL',NULL),
(6960,279,NULL,4704.00,'MXN',NULL,4704.00,'2013-09-27','2013-10-25',NULL,NULL,NULL,'2013-09-27','FERROPAK COMERCIAL',NULL),
(6961,280,NULL,10368.00,'MXN',NULL,10368.00,'2013-09-27','2013-12-11',NULL,NULL,NULL,'2013-09-27','FERROPAK COMERCIAL',NULL),
(6962,281,NULL,4464.00,'MXN',NULL,4464.00,'2013-09-27','2013-12-11',NULL,NULL,NULL,'2013-09-27','FERROPAK COMERCIAL',NULL),
(6963,282,NULL,4704.00,'MXN',NULL,4704.00,'2013-09-27','2013-12-11',NULL,NULL,NULL,'2013-09-27','FERROPAK COMERCIAL',NULL),
(6964,283,NULL,33339.84,'MXN',NULL,33339.84,'2013-09-30','2013-11-15',NULL,NULL,NULL,'2013-09-30','FRISA FORJADOS',NULL),
(6965,284,NULL,37406.41,'MXN',NULL,37406.41,'2013-10-07','2013-12-13',NULL,NULL,NULL,'2013-10-07','FRISA FORJADOS',NULL),
(6966,285,NULL,10368.00,'MXN',NULL,10368.00,'2013-10-07','2013-12-11',NULL,NULL,NULL,'2013-10-07','FERROPAK COMERCIAL',NULL),
(6967,286,NULL,6480.00,'MXN',NULL,6480.00,'2013-10-07','2013-12-11',NULL,NULL,NULL,'2013-10-07','FERROPAK COMERCIAL',NULL),
(6968,287,NULL,4704.00,'MXN',NULL,4704.00,'2013-10-07','2013-12-11',NULL,NULL,NULL,'2013-10-07','FERROPAK COMERCIAL',NULL),
(6969,288,NULL,9504.00,'MXN',NULL,9504.00,'2013-10-07','2013-12-11',NULL,NULL,NULL,'2013-10-07','FERROPAK COMERCIAL',NULL),
(6970,289,NULL,4464.00,'MXN',NULL,4464.00,'2013-10-07','2013-12-18',NULL,NULL,NULL,'2013-10-07','FERROPAK COMERCIAL',NULL),
(6971,290,NULL,2352.00,'MXN',NULL,2352.00,'2013-10-07','2013-12-11',NULL,NULL,NULL,'2013-10-07','FERROPAK COMERCIAL',NULL),
(6972,291,NULL,32993.19,'MXN',NULL,32993.19,'2013-10-11','2013-12-13',NULL,NULL,NULL,'2013-10-11','FRISA FORJADOS',NULL),
(6973,292,NULL,10368.00,'MXN',NULL,10368.00,'2013-10-16','2013-12-18',NULL,NULL,NULL,'2013-10-16','FERROPAK COMERCIAL',NULL),
(6974,293,NULL,5760.00,'MXN',NULL,5760.00,'2013-10-16','2013-12-18',NULL,NULL,NULL,'2013-10-16','FERROPAK COMERCIAL',NULL),
(6975,294,NULL,4704.00,'MXN',NULL,4704.00,'2013-10-16','2013-12-18',NULL,NULL,NULL,'2013-10-16','FERROPAK COMERCIAL',NULL),
(6976,295,NULL,10368.00,'MXN',NULL,10368.00,'2013-10-16','2013-12-18',NULL,NULL,NULL,'2013-10-16','FERROPAK COMERCIAL',NULL),
(6977,296,NULL,4464.00,'MXN',NULL,4464.00,'2013-10-16','2013-12-18',NULL,NULL,NULL,'2013-10-16','FERROPAK COMERCIAL',NULL),
(6978,297,NULL,2058.00,'MXN',NULL,2058.00,'2013-10-16','2013-12-18',NULL,NULL,NULL,'2013-10-16','FERROPAK COMERCIAL',NULL),
(6979,298,NULL,0.00,'MXN',NULL,0.00,'2013-10-16','2013-02-05',NULL,NULL,NULL,'2013-10-16','CANCELADA',NULL),
(6980,299,NULL,4704.00,'MXN',NULL,4704.00,'2013-10-16','2013-12-18',NULL,NULL,NULL,'2013-10-16','FERROPAK COMERCIAL',NULL),
(6981,300,NULL,10368.00,'MXN',NULL,10368.00,'2013-10-18','2013-12-18',NULL,NULL,NULL,'2013-10-18','FERROPAK COMERCIAL',NULL),
(6982,301,NULL,6480.00,'MXN',NULL,6480.00,'2013-10-18','2013-12-18',NULL,NULL,NULL,'2013-10-18','FERROPAK COMERCIAL',NULL),
(6983,302,NULL,4704.00,'MXN',NULL,4704.00,'2013-10-18','2013-12-18',NULL,NULL,NULL,'2013-10-18','FERROPAK COMERCIAL',NULL),
(6984,303,NULL,10368.00,'MXN',NULL,10368.00,'2013-10-18','2013-12-18',NULL,NULL,NULL,'2013-10-18','FERROPAK COMERCIAL',NULL),
(6985,304,NULL,4464.00,'MXN',NULL,4464.00,'2013-10-18','2013-12-18',NULL,NULL,NULL,'2013-10-18','FERROPAK COMERCIAL',NULL),
(6986,305,NULL,19369.46,'MXN',NULL,19369.46,'2013-10-18','2013-11-30',NULL,NULL,NULL,'2013-10-18','Ternium México',NULL),
(6987,306,NULL,395636.75,'MXN',NULL,395636.75,'2013-10-18','2013-11-30',NULL,NULL,NULL,'2013-10-18','Ternium México',NULL),
(6988,307,NULL,13220.29,'MXN',NULL,13220.29,'2013-10-18','2013-12-13',NULL,NULL,NULL,'2013-10-18','FRISA FORJADOS',NULL),
(6989,308,NULL,65723.90,'MXN',NULL,65723.90,'2013-10-28','2013-12-13',NULL,NULL,NULL,'2013-10-28','FRISA FORJADOS',NULL),
(6990,309,NULL,10368.00,'MXN',NULL,10368.00,'2013-10-28','2013-12-18',NULL,NULL,NULL,'2013-10-28','FERROPAK COMERCIAL',NULL),
(6991,310,NULL,755210.72,'MXN',NULL,755210.72,'2013-10-28','2013-11-30',NULL,NULL,NULL,'2013-10-28','Ternium México',NULL),
(6992,311,NULL,6480.00,'MXN',NULL,6480.00,'2013-10-29','2013-12-18',NULL,NULL,NULL,'2013-10-29','FERROPAK COMERCIAL',NULL),
(6993,312,NULL,4704.00,'MXN',NULL,4704.00,'2013-10-29','2013-12-18',NULL,NULL,NULL,'2013-10-29','FERROPAK COMERCIAL',NULL),
(6994,313,NULL,9504.00,'MXN',NULL,9504.00,'2013-10-29','2013-12-18',NULL,NULL,NULL,'2013-10-29','FERROPAK COMERCIAL',NULL),
(6995,314,NULL,4464.00,'MXN',NULL,4464.00,'2013-10-29','2013-12-18',NULL,NULL,NULL,'2013-10-29','FERROPAK COMERCIAL',NULL),
(6996,315,NULL,10368.00,'MXN',NULL,10368.00,'2013-11-01','2013-12-20',NULL,NULL,NULL,'2013-11-01','FERROPAK COMERCIAL',NULL),
(6997,316,NULL,6480.00,'MXN',NULL,6480.00,'2013-11-01','2013-12-20',NULL,NULL,NULL,'2013-11-01','FERROPAK COMERCIAL',NULL),
(6998,317,NULL,4704.00,'MXN',NULL,4704.00,'2013-11-01','2013-12-20',NULL,NULL,NULL,'2013-11-01','FERROPAK COMERCIAL',NULL),
(6999,318,NULL,10368.00,'MXN',NULL,10368.00,'2013-11-01','2013-12-20',NULL,NULL,NULL,'2013-11-01','FERROPAK COMERCIAL',NULL),
(7000,319,NULL,2976.00,'MXN',NULL,2976.00,'2013-11-01','2013-12-20',NULL,NULL,NULL,'2013-11-01','FERROPAK COMERCIAL',NULL),
(7001,320,NULL,686075.20,'MXN',NULL,686075.20,'2013-11-08','2013-12-30',NULL,NULL,NULL,'2013-11-08','Ternium México',NULL),
(7002,321,NULL,38819.06,'MXN',NULL,38819.06,'2013-11-08','2014-01-15',NULL,NULL,NULL,'2013-11-08','FRISA FORJADOS',NULL),
(7003,322,NULL,60940.00,'MXN',NULL,60940.00,'2013-11-15','2013-12-30',NULL,NULL,NULL,'2013-11-15','Ternium México',NULL),
(7004,323,NULL,7159.57,'MXN',NULL,7159.57,'2013-11-15','2014-01-15',NULL,NULL,NULL,'2013-11-15','FRISA FORJADOS',NULL),
(7005,324,NULL,10368.00,'MXN',NULL,10368.00,'2013-11-15','2015-01-01',NULL,NULL,NULL,'2013-11-15','FERROPAK COMERCIAL',NULL),
(7006,325,NULL,0.00,'MXN',NULL,0.00,'2013-11-15','2013-02-05',NULL,NULL,NULL,'2013-11-15','CANCELADA',NULL),
(7007,326,NULL,6480.00,'MXN',NULL,6480.00,'2013-11-15','2013-12-27',NULL,NULL,NULL,'2013-11-15','FERROPAK COMERCIAL',NULL),
(7008,327,NULL,4704.00,'MXN',NULL,4704.00,'2013-11-15','2013-12-27',NULL,NULL,NULL,'2013-11-15','FERROPAK COMERCIAL',NULL),
(7009,328,NULL,10368.00,'MXN',NULL,10368.00,'2013-11-15','2013-12-30',NULL,NULL,NULL,'2013-11-15','FERROPAK COMERCIAL',NULL),
(7010,329,NULL,4464.00,'MXN',NULL,4464.00,'2013-11-15','2013-12-30',NULL,NULL,NULL,'2013-11-15','FERROPAK COMERCIAL',NULL),
(7011,330,NULL,10368.00,'MXN',NULL,10368.00,'2013-11-15','2014-02-01',NULL,NULL,NULL,'2013-11-15','FERROPAK COMERCIAL',NULL),
(7012,331,NULL,6480.00,'MXN',NULL,6480.00,'2013-11-15','2013-12-27',NULL,NULL,NULL,'2013-11-15','FERROPAK COMERCIAL',NULL),
(7013,332,NULL,4704.00,'MXN',NULL,4704.00,'2013-11-15','2013-12-27',NULL,NULL,NULL,'2013-11-15','FERROPAK COMERCIAL',NULL),
(7014,333,NULL,9504.00,'MXN',NULL,9504.00,'2013-11-15','2013-12-30',NULL,NULL,NULL,'2013-11-15','FERROPAK COMERCIAL',NULL),
(7015,334,NULL,4464.00,'MXN',NULL,4464.00,'2013-11-15','2013-12-30',NULL,NULL,NULL,'2013-11-15','FERROPAK COMERCIAL',NULL),
(7016,335,NULL,13774.72,'MXN',NULL,13774.72,'2013-11-21','2013-12-30',NULL,NULL,NULL,'2013-11-21','Ternium México',NULL),
(7017,336,NULL,815935.57,'MXN',NULL,815935.57,'2013-11-21','2013-12-30',NULL,NULL,NULL,'2013-11-21','Ternium México',NULL),
(7018,337,NULL,27140.97,'MXN',NULL,27140.97,'2013-11-22','2014-01-15',NULL,NULL,NULL,'2013-11-22','FRISA FORJADOS',NULL),
(7019,338,NULL,0.00,'MXN',NULL,0.00,'2013-11-26','2013-02-05',NULL,NULL,NULL,'2013-11-26','CANCELADA',NULL),
(7020,339,NULL,3600.00,'MXN',NULL,3600.00,'2013-11-26','2013-12-30',NULL,NULL,NULL,'2013-11-26','FERROPAK COMERCIAL',NULL),
(7021,340,NULL,3920.00,'MXN',NULL,3920.00,'2013-11-26','2014-01-03',NULL,NULL,NULL,'2013-11-26','FERROPAK COMERCIAL',NULL),
(7022,341,NULL,8640.00,'MXN',NULL,8640.00,'2013-11-26','2014-01-03',NULL,NULL,NULL,'2013-11-26','FERROPAK COMERCIAL',NULL),
(7023,342,NULL,3720.00,'MXN',NULL,3720.00,'2013-11-26','2014-01-03',NULL,NULL,NULL,'2013-11-26','FERROPAK COMERCIAL',NULL),
(7024,343,NULL,17012.00,'MXN',NULL,17012.00,'2013-11-26','2013-12-30',NULL,NULL,NULL,'2013-11-26','Ternium México',NULL),
(7025,344,NULL,60658.85,'MXN',NULL,60658.85,'2013-11-28','2014-01-15',NULL,NULL,NULL,'2013-11-28','FRISA FORJADOS',NULL),
(7026,345,NULL,0.00,'MXN',NULL,0.00,'2013-12-02','2013-02-05',NULL,NULL,NULL,'2013-12-02','CANCELADA',NULL),
(7027,346,NULL,0.00,'MXN',NULL,0.00,'2013-12-02','2013-02-05',NULL,NULL,NULL,'2013-12-02','CANCELADA',NULL),
(7028,347,NULL,6480.00,'MXN',NULL,6480.00,'2013-12-02','2014-01-03',NULL,NULL,NULL,'2013-12-02','FERROPAK COMERCIAL',NULL),
(7029,348,NULL,4704.00,'MXN',NULL,4704.00,'2013-12-02','2014-01-03',NULL,NULL,NULL,'2013-12-02','FERROPAK COMERCIAL',NULL),
(7030,349,NULL,10368.00,'MXN',NULL,10368.00,'2013-12-02','2014-01-03',NULL,NULL,NULL,'2013-12-02','FERROPAK COMERCIAL',NULL),
(7031,350,NULL,4464.00,'MXN',NULL,4464.00,'2013-12-02','2014-01-27',NULL,NULL,NULL,'2013-12-02','FERROPAK COMERCIAL',NULL),
(7032,351,NULL,38073.36,'MXN',NULL,38073.36,'2013-12-06','2014-02-14',NULL,NULL,NULL,'2013-12-06','FRISA FORJADOS',NULL),
(7033,352,NULL,0.00,'MXN',NULL,0.00,'2013-12-10','2013-02-05',NULL,NULL,NULL,'2013-12-10','CANCELADA',NULL),
(7034,353,NULL,6480.00,'MXN',NULL,6480.00,'2013-12-10','2014-01-27',NULL,NULL,NULL,'2013-12-10','FERROPAK COMERCIAL',NULL),
(7035,354,NULL,4704.00,'MXN',NULL,4704.00,'2013-12-10','2014-01-27',NULL,NULL,NULL,'2013-12-10','FERROPAK COMERCIAL',NULL),
(7036,355,NULL,9504.00,'MXN',NULL,9504.00,'2013-12-10','2014-01-27',NULL,NULL,NULL,'2013-12-10','FERROPAK COMERCIAL',NULL),
(7037,356,NULL,4464.00,'MXN',NULL,4464.00,'2013-12-10','2014-01-27',NULL,NULL,NULL,'2013-12-10','FERROPAK COMERCIAL',NULL),
(7038,357,NULL,41908.65,'MXN',NULL,41908.65,'2013-12-10','2013-12-30',NULL,NULL,NULL,'2013-12-10','Ternium México',NULL),
(7039,358,NULL,0.00,'MXN',NULL,0.00,'2013-12-10','2013-02-05',NULL,NULL,NULL,'2013-12-10','CANCELADA',NULL),
(7040,359,NULL,12553.42,'MXN',NULL,12553.42,'2013-12-13','2013-12-30',NULL,NULL,NULL,'2013-12-13','Ternium México',NULL),
(7041,360,NULL,153266.10,'MXN',NULL,153266.10,'2013-12-13','2014-01-30',NULL,NULL,NULL,'2013-12-13','Ternium México',NULL),
(7042,361,NULL,40322.24,'MXN',NULL,40322.24,'2013-12-13','2014-02-14',NULL,NULL,NULL,'2013-12-13','FRISA FORJADOS',NULL),
(7043,362,NULL,270907.98,'MXN',NULL,270907.98,'2013-12-17','2014-01-30',NULL,NULL,NULL,'2013-12-17','Ternium México',NULL),
(7044,363,NULL,0.00,'MXN',NULL,0.00,'2013-12-18','2013-02-05',NULL,NULL,NULL,'2013-12-18','CANCELADA',NULL),
(7045,364,NULL,0.00,'MXN',NULL,0.00,'2013-12-18','2013-02-05',NULL,NULL,NULL,'2013-12-18','CANCELADA',NULL),
(7046,365,NULL,0.00,'MXN',NULL,0.00,'2013-12-18','2013-02-05',NULL,NULL,NULL,'2013-12-18','CANCELADA',NULL),
(7047,366,NULL,0.00,'MXN',NULL,0.00,'2013-12-18','2013-02-05',NULL,NULL,NULL,'2013-12-18','CANCELADA',NULL),
(7048,367,NULL,0.00,'MXN',NULL,0.00,'2013-12-18','2013-02-05',NULL,NULL,NULL,'2013-12-18','CANCELADA',NULL),
(7049,368,NULL,0.00,'MXN',NULL,0.00,'2013-12-20','2013-02-05',NULL,NULL,NULL,'2013-12-20','CANCELADA',NULL),
(7050,369,NULL,19067.99,'MXN',NULL,19067.99,'2013-12-20','2014-02-14',NULL,NULL,NULL,'2013-12-20','FRISA FORJADOS',NULL),
(7051,370,NULL,395109.76,'MXN',NULL,395109.76,'2013-12-20','2014-01-30',NULL,NULL,NULL,'2013-12-20','Ternium México',NULL),
(7052,371,NULL,0.00,'MXN',NULL,0.00,'2013-12-23','2013-02-05',NULL,NULL,NULL,'2013-12-23','CANCELADA',NULL),
(7053,372,NULL,0.00,'MXN',NULL,0.00,'2013-12-23','2013-02-05',NULL,NULL,NULL,'2013-12-23','CANCELADA',NULL),
(7054,373,NULL,0.00,'MXN',NULL,0.00,'2013-12-23','2013-02-05',NULL,NULL,NULL,'2013-12-23','CANCELADA',NULL),
(7055,374,NULL,0.00,'MXN',NULL,0.00,'2013-12-23','2013-02-05',NULL,NULL,NULL,'2013-12-23','CANCELADA',NULL),
(7056,375,NULL,0.00,'MXN',NULL,0.00,'2013-12-23','2013-02-05',NULL,NULL,NULL,'2013-12-23','CANCELADA',NULL),
(7057,376,NULL,0.00,'MXN',NULL,0.00,'2013-12-23','2013-02-05',NULL,NULL,NULL,'2013-12-23','CANCELADA',NULL),
(7058,377,NULL,73648.08,'MXN',NULL,73648.08,'2014-01-02','2014-03-14',NULL,NULL,NULL,'2014-01-02','FRISA FORJADOS',NULL),
(7059,378,NULL,6048.00,'MXN',NULL,6048.00,'2014-01-02','2014-06-13',NULL,NULL,NULL,'2014-01-02','FERROPAK COMERCIAL',NULL),
(7060,379,NULL,6120.00,'MXN',NULL,6120.00,'2014-01-02','2014-02-14',NULL,NULL,NULL,'2014-01-02','FERROPAK COMERCIAL',NULL),
(7061,380,NULL,4704.00,'MXN',NULL,4704.00,'2014-01-02','2014-02-14',NULL,NULL,NULL,'2014-01-02','FERROPAK COMERCIAL',NULL),
(7062,381,NULL,10368.00,'MXN',NULL,10368.00,'2014-01-02','2014-02-14',NULL,NULL,NULL,'2014-01-02','FERROPAK COMERCIAL',NULL),
(7063,382,NULL,4464.00,'MXN',NULL,4464.00,'2014-01-02','2014-02-14',NULL,NULL,NULL,'2014-01-02','FERROPAK COMERCIAL',NULL),
(7064,383,NULL,5184.00,'MXN',NULL,5184.00,'2014-01-02','2014-06-13',NULL,NULL,NULL,'2014-01-02','FERROPAK COMERCIAL',NULL),
(7065,384,NULL,3960.00,'MXN',NULL,3960.00,'2014-01-02','2014-02-14',NULL,NULL,NULL,'2014-01-02','FERROPAK COMERCIAL',NULL),
(7066,385,NULL,2352.00,'MXN',NULL,2352.00,'2014-01-02','2014-02-14',NULL,NULL,NULL,'2014-01-02','FERROPAK COMERCIAL',NULL),
(7067,386,NULL,10368.00,'MXN',NULL,10368.00,'2014-01-02','2014-02-14',NULL,NULL,NULL,'2014-01-02','FERROPAK COMERCIAL',NULL),
(7068,387,NULL,4464.00,'MXN',NULL,4464.00,'2014-01-02','2014-02-14',NULL,NULL,NULL,'2014-01-02','FERROPAK COMERCIAL',NULL),
(7069,388,NULL,2352.00,'MXN',NULL,2352.00,'2014-01-02','2014-02-14',NULL,NULL,NULL,'2014-01-02','FERROPAK COMERCIAL',NULL),
(7070,389,NULL,4320.00,'MXN',NULL,4320.00,'2014-01-02','2014-06-13',NULL,NULL,NULL,'2014-01-02','FERROPAK COMERCIAL',NULL),
(7071,390,NULL,1800.00,'MXN',NULL,1800.00,'2014-01-02','2014-02-14',NULL,NULL,NULL,'2014-01-02','FERROPAK COMERCIAL',NULL),
(7072,391,NULL,7776.00,'MXN',NULL,7776.00,'2014-01-02','2014-02-12',NULL,NULL,NULL,'2014-01-02','FERROPAK COMERCIAL',NULL),
(7073,392,NULL,3720.00,'MXN',NULL,3720.00,'2014-01-02','2014-02-12',NULL,NULL,NULL,'2014-01-02','FERROPAK COMERCIAL',NULL),
(7074,393,NULL,3920.00,'MXN',NULL,3920.00,'2014-01-02','2014-02-12',NULL,NULL,NULL,'2014-01-02','FERROPAK COMERCIAL',NULL),
(7075,394,NULL,168139.66,'MXN',NULL,168139.66,'2014-01-02','2014-01-31',NULL,NULL,NULL,'2014-01-02','Ternium México',NULL),
(7076,395,NULL,287528.50,'MXN',NULL,287528.50,'2014-01-06','2013-02-28',NULL,NULL,NULL,'2014-01-06','Ternium México',NULL),
(7077,396,NULL,4320.00,'MXN',NULL,4320.00,'2014-01-08','2014-06-13',NULL,NULL,NULL,'2014-01-08','FERROPAK COMERCIAL',NULL),
(7078,397,NULL,1800.00,'MXN',NULL,1800.00,'2014-01-08','2014-02-21',NULL,NULL,NULL,'2014-01-08','FERROPAK COMERCIAL',NULL),
(7079,398,NULL,8640.00,'MXN',NULL,8640.00,'2014-01-08','2014-02-21',NULL,NULL,NULL,'2014-01-08','FERROPAK COMERCIAL',NULL),
(7080,399,NULL,744.00,'MXN',NULL,744.00,'2014-01-08','2014-02-21',NULL,NULL,NULL,'2014-01-08','FERROPAK COMERCIAL',NULL),
(7081,400,NULL,3920.00,'MXN',NULL,3920.00,'2014-01-08','2014-02-21',NULL,NULL,NULL,'2014-01-08','FERROPAK COMERCIAL',NULL),
(7082,401,NULL,162987.93,'MXN',NULL,162987.93,'2014-01-09','2013-02-28',NULL,NULL,NULL,'2014-01-09','Ternium México',NULL),
(7083,402,NULL,15116.46,'MXN',NULL,15116.46,NULL,'2014-03-14',NULL,NULL,NULL,NULL,'FRISA FORJADOS',NULL),
(7084,403,NULL,5184.00,'MXN',NULL,5184.00,'2014-01-13','2014-06-13',NULL,NULL,NULL,'2014-01-13','FERROPAK COMERCIAL',NULL),
(7085,404,NULL,6120.00,'MXN',NULL,6120.00,'2014-01-13','2014-02-21',NULL,NULL,NULL,'2014-01-13','FERROPAK COMERCIAL',NULL),
(7086,405,NULL,10368.00,'MXN',NULL,10368.00,'2014-01-13','2014-02-21',NULL,NULL,NULL,'2014-01-13','FERROPAK COMERCIAL',NULL),
(7087,406,NULL,2976.00,'MXN',NULL,2976.00,'2014-01-13','2014-02-21',NULL,NULL,NULL,'2014-01-13','FERROPAK COMERCIAL',NULL),
(7088,407,NULL,3920.00,'MXN',NULL,3920.00,'2014-01-13','2014-02-21',NULL,NULL,NULL,'2014-01-13','FERROPAK COMERCIAL',NULL),
(7089,408,NULL,42512.20,'MXN',NULL,42512.20,NULL,'2014-03-14',NULL,NULL,NULL,NULL,'FRISA FORJADOS',NULL),
(7090,409,NULL,5184.00,'MXN',NULL,5184.00,'2014-01-21','2014-06-13',NULL,NULL,NULL,'2014-01-21','FERROPAK COMERCIAL',NULL),
(7091,410,NULL,382739.53,'MXN',NULL,382739.53,'2014-01-21','2013-02-28',NULL,NULL,NULL,'2014-01-21','Ternium México',NULL),
(7092,411,NULL,69913.47,'MXN',NULL,69913.47,'2014-01-21','2013-02-28',NULL,NULL,NULL,'2014-01-21','Ternium México',NULL),
(7093,412,NULL,6480.00,'MXN',NULL,6480.00,'2014-01-21','2014-02-21',NULL,NULL,NULL,'2014-01-21','FERROPAK COMERCIAL',NULL),
(7094,413,NULL,10368.00,'MXN',NULL,10368.00,'2014-01-21','2014-02-21',NULL,NULL,NULL,'2014-01-21','FERROPAK COMERCIAL',NULL),
(7095,414,NULL,4464.00,'MXN',NULL,4464.00,'2014-01-21','2014-02-21',NULL,NULL,NULL,'2014-01-21','FERROPAK COMERCIAL',NULL),
(7096,415,NULL,4704.00,'MXN',NULL,4704.00,'2014-01-21','2014-02-21',NULL,NULL,NULL,'2014-01-21','FERROPAK COMERCIAL',NULL),
(7097,416,NULL,22314.36,'MXN',NULL,22314.36,'2014-01-24','2014-03-14',NULL,NULL,NULL,'2014-01-24','FRISA FORJADOS',NULL),
(7098,417,NULL,5184.00,'MXN',NULL,5184.00,'2014-01-28','2014-06-13',NULL,NULL,NULL,'2014-01-28','FERROPAK COMERCIAL',NULL),
(7099,418,NULL,6480.00,'MXN',NULL,6480.00,'2014-01-28','2014-02-21',NULL,NULL,NULL,'2014-01-28','FERROPAK COMERCIAL',NULL),
(7100,419,NULL,10368.00,'MXN',NULL,10368.00,'2014-01-28','2014-02-21',NULL,NULL,NULL,'2014-01-28','FERROPAK COMERCIAL',NULL),
(7101,420,NULL,4464.00,'MXN',NULL,4464.00,'2014-01-28','2014-02-21',NULL,NULL,NULL,'2014-01-28','FERROPAK COMERCIAL',NULL),
(7102,421,NULL,4704.00,'MXN',NULL,4704.00,'2014-01-28','2014-02-21',NULL,NULL,NULL,'2014-01-28','FERROPAK COMERCIAL',NULL),
(7103,421,NULL,53291.19,'MXN',NULL,53291.19,'2014-01-30','2014-04-25',NULL,NULL,NULL,'2014-01-30','FRISA FORJADOS',NULL),
(7104,423,NULL,0.00,'MXN',NULL,0.00,'2014-02-05','2013-02-05',NULL,NULL,NULL,'2014-02-05','CANCELADA',NULL),
(7105,424,NULL,0.00,'MXN',NULL,0.00,'2014-02-05','2013-02-05',NULL,NULL,NULL,'2014-02-05','CANCELADA',NULL),
(7106,425,NULL,0.00,'MXN',NULL,0.00,'2014-02-05','2013-02-05',NULL,NULL,NULL,'2014-02-05','CANCELADA',NULL),
(7107,426,NULL,0.00,'MXN',NULL,0.00,'2014-02-05','2013-02-05',NULL,NULL,NULL,'2014-02-05','CANCELADA',NULL),
(7108,427,NULL,0.00,'MXN',NULL,0.00,'2014-02-05','2013-02-05',NULL,NULL,NULL,'2014-02-05','CANCELADA',NULL),
(7109,428,NULL,391196.17,'MXN',NULL,391196.17,'2014-02-06','2014-02-28',NULL,NULL,NULL,'2014-02-06','Ternium México',NULL),
(7110,429,NULL,74757.10,'MXN',NULL,74757.10,'2014-02-06','2014-03-31',NULL,NULL,NULL,'2014-02-06','Ternium México',NULL),
(7111,430,NULL,0.00,'MXN',NULL,0.00,'2014-02-11','2013-02-05',NULL,NULL,NULL,'2014-02-11','CANCELADA',NULL),
(7112,431,NULL,0.00,'MXN',NULL,0.00,'2014-02-11','2013-02-05',NULL,NULL,NULL,'2014-02-11','CANCELADA',NULL),
(7113,432,NULL,0.00,'MXN',NULL,0.00,'2014-02-11','2013-02-05',NULL,NULL,NULL,'2014-02-11','CANCELADA',NULL),
(7114,433,NULL,0.00,'MXN',NULL,0.00,'2014-02-11','2013-02-05',NULL,NULL,NULL,'2014-02-11','CANCELADA',NULL),
(7115,434,NULL,0.00,'MXN',NULL,0.00,'2014-02-11','2013-02-05',NULL,NULL,NULL,'2014-02-11','CANCELADA',NULL),
(7116,435,NULL,61945.00,'MXN',NULL,61945.00,'2014-02-14','2014-03-31',NULL,NULL,NULL,'2014-02-14','Ternium México',NULL),
(7117,436,NULL,48950.17,'MXN',NULL,48950.17,'2014-02-14','2014-04-15',NULL,NULL,NULL,'2014-02-14','FRISA FORJADOS',NULL),
(7118,437,NULL,10419.95,'MXN',NULL,10419.95,'2014-02-14','2014-03-31',NULL,NULL,NULL,'2014-02-14','Ternium México',NULL),
(7119,438,NULL,23515.48,'MXN',NULL,23515.48,'2014-02-14','2014-03-31',NULL,NULL,NULL,'2014-02-14','Ternium México',NULL),
(7120,439,NULL,0.00,'MXN',NULL,0.00,'2014-02-19','2013-02-05',NULL,NULL,NULL,'2014-02-19','CANCELADA',NULL),
(7121,440,NULL,0.00,'MXN',NULL,0.00,'2014-02-19','2013-02-05',NULL,NULL,NULL,'2014-02-19','CANCELADA',NULL),
(7122,441,NULL,0.00,'MXN',NULL,0.00,'2014-02-19','2013-02-05',NULL,NULL,NULL,'2014-02-19','CANCELADA',NULL),
(7123,442,NULL,0.00,'MXN',NULL,0.00,'2014-02-19','2013-02-05',NULL,NULL,NULL,'2014-02-19','CANCELADA',NULL),
(7124,443,NULL,0.00,'MXN',NULL,0.00,'2014-02-19','2013-02-05',NULL,NULL,NULL,'2014-02-19','CANCELADA',NULL),
(7125,444,NULL,11664.00,'MXN',NULL,11664.00,'2014-02-20','2014-03-21',NULL,NULL,NULL,'2014-02-20','FERROPAK COMERCIAL',NULL),
(7126,445,NULL,19536.00,'MXN',NULL,19536.00,'2014-02-20','2014-04-23',NULL,NULL,NULL,'2014-02-20','FERROPAK COMERCIAL',NULL),
(7127,446,NULL,9720.00,'MXN',NULL,9720.00,'2014-02-21','2014-03-21',NULL,NULL,NULL,'2014-02-21','FERROPAK COMERCIAL',NULL),
(7128,447,NULL,16280.00,'MXN',NULL,16280.00,'2014-02-21','2014-04-23',NULL,NULL,NULL,'2014-02-21','FERROPAK COMERCIAL',NULL),
(7129,448,NULL,11664.00,'MXN',NULL,11664.00,'2014-02-21','2014-03-21',NULL,NULL,NULL,'2014-02-21','FERROPAK COMERCIAL',NULL),
(7130,449,NULL,19536.00,'MXN',NULL,19536.00,'2014-02-21','2014-04-23',NULL,NULL,NULL,'2014-02-21','FERROPAK COMERCIAL',NULL),
(7131,450,NULL,620273.42,'MXN',NULL,620273.42,'2014-02-21','2014-03-31',NULL,NULL,NULL,'2014-02-21','Ternium México',NULL),
(7132,451,NULL,103537.27,'MXN',NULL,103537.27,'2014-02-21','2014-04-15',NULL,NULL,NULL,'2014-02-21','FRISA FORJADOS',NULL),
(7133,452,NULL,5184.00,'MXN',NULL,5184.00,'2014-02-25','2014-08-06',NULL,NULL,NULL,'2014-02-25','FERROPAK COMERCIAL',NULL),
(7134,453,NULL,6480.00,'MXN',NULL,6480.00,'2014-02-25','2014-03-21',NULL,NULL,NULL,'2014-02-25','FERROPAK COMERCIAL',NULL),
(7135,454,NULL,19536.00,'MXN',NULL,19536.00,'2014-02-25','2014-04-23',NULL,NULL,NULL,'2014-02-25','FERROPAK COMERCIAL',NULL),
(7136,455,NULL,89851.26,'MXN',NULL,89851.26,'2014-02-25','2014-03-31',NULL,NULL,NULL,'2014-02-25','Ternium México',NULL),
(7137,456,NULL,27459.67,'MXN',NULL,27459.67,'2014-02-25','2014-03-31',NULL,NULL,NULL,'2014-02-25','Ternium México',NULL),
(7138,456,NULL,65521.44,'MXN',NULL,65521.44,'2014-02-26','2014-05-15',NULL,NULL,NULL,'2014-02-26','FRISA FORJADOS',NULL),
(7139,458,NULL,5184.00,'MXN',NULL,5184.00,'2014-03-05','2014-08-06',NULL,NULL,NULL,'2014-03-05','FERROPAK COMERCIAL',NULL),
(7140,459,NULL,6480.00,'MXN',NULL,6480.00,'2014-03-05','2014-04-23',NULL,NULL,NULL,'2014-03-05','FERROPAK COMERCIAL',NULL),
(7141,460,NULL,15072.00,'MXN',NULL,15072.00,'2014-03-05','2014-04-23',NULL,NULL,NULL,'2014-03-05','FERROPAK COMERCIAL',NULL),
(7142,461,NULL,119274.75,'MXN',NULL,119274.75,'2014-03-07','2014-03-31',NULL,NULL,NULL,'2014-03-07','Ternium México',NULL),
(7143,462,NULL,157851.50,'MXN',NULL,157851.50,'2014-03-07','2014-04-30',NULL,NULL,NULL,'2014-03-07','Ternium México',NULL),
(7144,462,NULL,33280.76,'MXN',NULL,33280.76,'2014-03-07','2014-05-15',NULL,NULL,NULL,'2014-03-07','FRISA FORJADOS',NULL),
(7145,464,NULL,5184.00,'MXN',NULL,5184.00,'2014-03-11','2014-08-06',NULL,NULL,NULL,'2014-03-11','FERROPAK COMERCIAL',NULL),
(7146,465,NULL,6480.00,'MXN',NULL,6480.00,'2014-03-11','2014-04-23',NULL,NULL,NULL,'2014-03-11','FERROPAK COMERCIAL',NULL),
(7147,466,NULL,12360.00,'MXN',NULL,12360.00,'2014-03-11','2014-04-23',NULL,NULL,NULL,'2014-03-11','FERROPAK COMERCIAL',NULL),
(7148,467,NULL,79775.00,'MXN',NULL,79775.00,'2014-03-14','2014-05-15',NULL,NULL,NULL,'2014-03-14','FRISA FORJADOS',NULL),
(7149,468,NULL,82174.76,'MXN',NULL,82174.76,'2014-03-14','2014-04-30',NULL,NULL,NULL,'2014-03-14','Ternium México',NULL),
(7150,469,NULL,5184.00,'MXN',NULL,5184.00,'2014-03-19','2014-08-06',NULL,NULL,NULL,'2014-03-19','FERROPAK COMERCIAL',NULL),
(7151,470,NULL,6480.00,'MXN',NULL,6480.00,'2014-03-19','2014-04-23',NULL,NULL,NULL,'2014-03-19','FERROPAK COMERCIAL',NULL),
(7152,471,NULL,18792.00,'MXN',NULL,18792.00,'2014-03-19','2014-04-23',NULL,NULL,NULL,'2014-03-19','FERROPAK COMERCIAL',NULL),
(7153,472,NULL,695347.42,'MXN',NULL,695347.42,'2014-03-21','2014-04-30',NULL,NULL,NULL,'2014-03-21','Ternium México',NULL),
(7154,473,NULL,67397.10,'MXN',NULL,67397.10,'2014-03-21','2014-05-15',NULL,NULL,NULL,'2014-03-21','FRISA FORJADOS',NULL),
(7155,474,NULL,10183.02,'MXN',NULL,10183.02,'2014-03-21','2014-04-30',NULL,NULL,NULL,'2014-03-21','Ternium México',NULL),
(7156,475,NULL,4320.00,'MXN',NULL,4320.00,'2014-03-25','2014-08-06',NULL,NULL,NULL,'2014-03-25','FERROPAK COMERCIAL',NULL),
(7157,476,NULL,5400.00,'MXN',NULL,5400.00,'2014-03-25','2014-04-23',NULL,NULL,NULL,'2014-03-25','FERROPAK COMERCIAL',NULL),
(7158,477,NULL,16080.00,'MXN',NULL,16080.00,'2014-03-25','2014-04-23',NULL,NULL,NULL,'2014-03-25','FERROPAK COMERCIAL',NULL),
(7159,477,NULL,91594.48,'MXN',NULL,91594.48,'2014-03-28','2014-05-15',NULL,NULL,NULL,'2014-03-28','FRISA FORJADOS',NULL),
(7160,479,NULL,5184.00,'MXN',NULL,5184.00,'2014-04-01','2014-08-06',NULL,NULL,NULL,'2014-04-01','FERROPAK COMERCIAL',NULL),
(7161,480,NULL,6480.00,'MXN',NULL,6480.00,'2014-04-01','2014-05-23',NULL,NULL,NULL,'2014-04-01','FERROPAK COMERCIAL',NULL),
(7162,481,NULL,16520.00,'MXN',NULL,16520.00,'2014-04-01','2014-05-23',NULL,NULL,NULL,'2014-04-01','FERROPAK COMERCIAL',NULL),
(7163,482,NULL,99677.08,'MXN',NULL,99677.08,'2014-04-03','2014-04-30',NULL,NULL,NULL,'2014-04-03','Ternium México',NULL),
(7164,483,NULL,510075.90,'MXN',NULL,510075.90,'2014-04-03','2014-04-30',NULL,NULL,NULL,'2014-04-03','Ternium México',NULL),
(7165,484,NULL,58451.90,'MXN',NULL,58451.90,'2014-04-04','2014-06-13',NULL,NULL,NULL,'2014-04-04','FRISA FORJADOS',NULL),
(7166,485,NULL,0.00,'MXN',NULL,0.00,'2014-04-07','2013-02-05',NULL,NULL,NULL,'2014-04-07','CANCELADA',NULL),
(7167,486,NULL,5184.00,'MXN',NULL,5184.00,'2014-04-07','2014-08-06',NULL,NULL,NULL,'2014-04-07','FERROPAK COMERCIAL',NULL),
(7168,487,NULL,6480.00,'MXN',NULL,6480.00,'2014-04-07','2014-05-23',NULL,NULL,NULL,'2014-04-07','FERROPAK COMERCIAL',NULL),
(7169,488,NULL,18008.00,'MXN',NULL,18008.00,'2014-04-07','2014-05-23',NULL,NULL,NULL,'2014-04-07','FERROPAK COMERCIAL',NULL),
(7170,489,NULL,187727.00,'MXN',NULL,187727.00,'2014-04-08','2014-05-30',NULL,NULL,NULL,'2014-04-08','Ternium México',NULL),
(7171,490,NULL,17479.49,'MXN',NULL,17479.49,'2014-04-11','2014-06-13',NULL,NULL,NULL,'2014-04-11','FRISA FORJADOS',NULL),
(7172,491,NULL,192255.54,'MXN',NULL,192255.54,'2014-04-14','2014-04-30',NULL,NULL,NULL,'2014-04-14','Ternium México',NULL),
(7173,492,NULL,4320.00,'MXN',NULL,4320.00,'2014-04-15','2014-08-06',NULL,NULL,NULL,'2014-04-15','FERROPAK COMERCIAL',NULL),
(7174,493,NULL,6480.00,'MXN',NULL,6480.00,'2014-04-15','2014-05-23',NULL,NULL,NULL,'2014-04-15','FERROPAK COMERCIAL',NULL),
(7175,494,NULL,15656.00,'MXN',NULL,15656.00,'2014-04-15','2014-05-23',NULL,NULL,NULL,'2014-04-15','FERROPAK COMERCIAL',NULL),
(7176,495,NULL,77248.24,'MXN',NULL,77248.24,'2014-04-16','2014-05-30',NULL,NULL,NULL,'2014-04-16','Ternium México',NULL),
(7177,496,NULL,94600.86,'MXN',NULL,94600.86,'2014-04-21','2014-05-30',NULL,NULL,NULL,'2014-04-21','Ternium México',NULL),
(7178,497,NULL,74757.98,'MXN',NULL,74757.98,'2014-04-21','2014-06-13',NULL,NULL,NULL,'2014-04-21','FRISA FORJADOS',NULL),
(7179,498,NULL,23744.18,'MXN',NULL,23744.18,'2014-04-21','2014-05-30',NULL,NULL,NULL,'2014-04-21','Ternium México',NULL),
(7180,499,NULL,467516.40,'MXN',NULL,467516.40,'2014-04-21','2014-05-30',NULL,NULL,NULL,'2014-04-21','Ternium México',NULL),
(7181,500,NULL,5184.00,'MXN',NULL,5184.00,'2014-04-23','2014-08-06',NULL,NULL,NULL,'2014-04-23','FERROPAK COMERCIAL',NULL),
(7182,501,NULL,6480.00,'MXN',NULL,6480.00,'2014-04-23','2014-05-23',NULL,NULL,NULL,'2014-04-23','FERROPAK COMERCIAL',NULL),
(7183,502,NULL,0.00,'MXN',NULL,0.00,'2014-04-23','2013-02-05',NULL,NULL,NULL,'2014-04-23','CANCELADA',NULL),
(7184,503,NULL,334981.12,'MXN',NULL,334981.12,'2014-04-23','2014-05-30',NULL,NULL,NULL,'2014-04-23','Ternium México',NULL),
(7185,504,NULL,279454.93,'MXN',NULL,279454.93,'2014-04-25','2014-05-30',NULL,NULL,NULL,'2014-04-25','Ternium México',NULL),
(7186,505,NULL,26227.84,'MXN',NULL,26227.84,'2014-04-25','2014-06-13',NULL,NULL,NULL,'2014-04-25','FRISA FORJADOS',NULL),
(7187,506,NULL,0.00,'MXN',NULL,0.00,'2014-04-29','2013-02-05',NULL,NULL,NULL,'2014-04-29','CANCELADA',NULL),
(7188,507,NULL,5400.00,'MXN',NULL,5400.00,'2014-04-29','2014-08-06',NULL,NULL,NULL,'2014-04-29','FERROPAK COMERCIAL',NULL),
(7189,508,NULL,11856.00,'MXN',NULL,11856.00,'2014-04-29','2014-07-02',NULL,NULL,NULL,'2014-04-29','FERROPAK COMERCIAL',NULL),
(7190,509,NULL,105933.28,'MXN',NULL,105933.28,'2014-04-30','2014-06-13',NULL,NULL,NULL,'2014-04-30','FRISA FORJADOS',NULL),
(7191,510,NULL,20223.02,'MXN',NULL,20223.02,'2014-04-30','2014-05-30',NULL,NULL,NULL,'2014-04-30','Ternium México',NULL),
(7192,511,NULL,0.00,'MXN',NULL,0.00,'2014-05-06','2013-02-05',NULL,NULL,NULL,'2014-05-06','CANCELADA',NULL),
(7193,512,NULL,0.00,'MXN',NULL,0.00,'2014-05-06','2013-02-05',NULL,NULL,NULL,'2014-05-06','CANCELADA',NULL),
(7194,513,NULL,0.00,'MXN',NULL,0.00,'2014-05-06','2013-02-05',NULL,NULL,NULL,'2014-05-06','CANCELADA',NULL),
(7195,514,NULL,80499.75,'MXN',NULL,80499.75,'2014-05-09','2014-07-15',NULL,NULL,NULL,'2014-05-09','FRISA FORJADOS',NULL),
(7196,515,NULL,40663.19,'MXN',NULL,40663.19,'2014-05-12','2014-05-30',NULL,NULL,NULL,'2014-05-12','Ternium México',NULL),
(7197,516,NULL,0.00,'MXN',NULL,0.00,'2014-05-14','2013-02-05',NULL,NULL,NULL,'2014-05-14','CANCELADA',NULL),
(7198,517,NULL,0.00,'MXN',NULL,0.00,'2014-05-14','2013-02-05',NULL,NULL,NULL,'2014-05-14','CANCELADA',NULL),
(7199,518,NULL,0.00,'MXN',NULL,0.00,'2014-05-14','2013-02-05',NULL,NULL,NULL,'2014-05-14','CANCELADA',NULL),
(7200,519,NULL,82304.50,'MXN',NULL,82304.50,'2014-05-14','2014-06-30',NULL,NULL,NULL,'2014-05-14','Ternium México',NULL),
(7201,520,NULL,23354.84,'MXN',NULL,23354.84,'2014-05-16','2014-07-15',NULL,NULL,NULL,'2014-05-16','FRISA FORJADOS',NULL),
(7202,521,NULL,10584.53,'MXN',NULL,10584.53,'2014-05-16','2014-06-30',NULL,NULL,NULL,'2014-05-16','Ternium México',NULL),
(7203,522,NULL,0.00,'MXN',NULL,0.00,'2014-05-19','2013-02-05',NULL,NULL,NULL,'2014-05-19','CANCELADA',NULL),
(7204,523,NULL,0.00,'MXN',NULL,0.00,'2014-05-20','2013-02-05',NULL,NULL,NULL,'2014-05-20','CANCELADA',NULL),
(7205,524,NULL,6480.00,'MXN',NULL,6480.00,'2014-05-20','2014-07-02',NULL,NULL,NULL,'2014-05-20','FERROPAK COMERCIAL',NULL),
(7206,525,NULL,10368.00,'MXN',NULL,10368.00,'2014-05-20','2014-07-02',NULL,NULL,NULL,'2014-05-20','FERROPAK COMERCIAL',NULL),
(7207,526,NULL,331456.96,'MXN',NULL,331456.96,'2014-05-20','2014-06-30',NULL,NULL,NULL,'2014-05-20','Ternium México',NULL),
(7208,527,NULL,377116.70,'MXN',NULL,377116.70,'2014-05-21','2014-06-30',NULL,NULL,NULL,'2014-05-21','Ternium México',NULL),
(7209,528,NULL,10641.70,'MXN',NULL,10641.70,'2014-05-21','2014-06-30',NULL,NULL,NULL,'2014-05-21','Ternium México',NULL),
(7210,529,NULL,0.00,'MXN',NULL,0.00,'2014-05-27','2013-02-05',NULL,NULL,NULL,'2014-05-27','CANCELADA',NULL),
(7211,530,NULL,6480.00,'MXN',NULL,6480.00,'2014-05-27','2014-07-02',NULL,NULL,NULL,'2014-05-27','FERROPAK COMERCIAL',NULL),
(7212,531,NULL,0.00,'MXN',NULL,0.00,'2014-05-27','2013-02-05',NULL,NULL,NULL,'2014-05-27','CANCELADA',NULL),
(7213,532,NULL,0.00,'MXN',NULL,0.00,'2014-05-27','2013-02-05',NULL,NULL,NULL,'2014-05-27','CANCELADA',NULL),
(7214,533,NULL,0.00,'MXN',NULL,0.00,'2014-05-27','2013-02-05',NULL,NULL,NULL,'2014-05-27','CANCELADA',NULL),
(7215,534,NULL,0.00,'MXN',NULL,0.00,'2014-05-27','2013-02-05',NULL,NULL,NULL,'2014-05-27','CANCELADA',NULL),
(7216,535,NULL,84165.89,'MXN',NULL,84165.89,'2014-05-27','2014-07-15',NULL,NULL,NULL,'2014-05-27','FRISA FORJADOS',NULL),
(7217,536,NULL,0.00,'MXN',NULL,0.00,'2014-05-28','2013-02-05',NULL,NULL,NULL,'2014-05-28','CANCELADA',NULL),
(7218,537,NULL,49136.63,'MXN',NULL,49136.63,'2014-05-30','2014-07-15',NULL,NULL,NULL,'2014-05-30','FRISA FORJADOS',NULL),
(7219,538,NULL,187564.14,'MXN',NULL,187564.14,'2014-05-30','2014-06-30',NULL,NULL,NULL,'2014-05-30','Ternium México',NULL),
(7220,539,NULL,43596.01,'MXN',NULL,43596.01,'2014-05-30','2014-06-30',NULL,NULL,NULL,'2014-05-30','Ternium México',NULL),
(7221,540,NULL,158698.05,'MXN',NULL,158698.05,'2014-06-02','2014-06-30',NULL,NULL,NULL,'2014-06-02','Ternium México',NULL),
(7222,541,NULL,5184.00,'MXN',NULL,5184.00,'2014-06-04','2014-07-02',NULL,NULL,NULL,'2014-06-04','FERROPAK COMERCIAL',NULL),
(7223,542,NULL,0.00,'MXN',NULL,0.00,'2014-06-04','2013-02-05',NULL,NULL,NULL,'2014-06-04','CANCELADA',NULL),
(7224,543,NULL,0.00,'MXN',NULL,0.00,'2014-06-04','2013-02-05',NULL,NULL,NULL,'2014-06-04','CANCELADA',NULL),
(7225,544,NULL,107364.33,'MXN',NULL,107364.33,'2014-06-06','2014-08-15',NULL,NULL,NULL,'2014-06-06','FRISA FORJADOS',NULL),
(7226,545,NULL,22864.80,'MXN',NULL,22864.80,'2014-06-06','2014-06-30',NULL,NULL,NULL,'2014-06-06','Ternium México',NULL),
(7227,546,NULL,0.00,'MXN',NULL,0.00,'2014-06-11','2013-02-05',NULL,NULL,NULL,'2014-06-11','CANCELADA',NULL),
(7228,547,NULL,0.00,'MXN',NULL,0.00,'2014-06-11','2013-02-05',NULL,NULL,NULL,'2014-06-11','CANCELADA',NULL),
(7229,548,NULL,0.00,'MXN',NULL,0.00,'2014-06-11','2013-02-05',NULL,NULL,NULL,'2014-06-11','CANCELADA',NULL),
(7230,549,NULL,202109.00,'MXN',NULL,202109.00,'2014-06-13','2014-07-30',NULL,NULL,NULL,'2014-06-13','Ternium México',NULL),
(7231,550,NULL,46715.98,'MXN',NULL,46715.98,'2014-06-13','2014-08-15',NULL,NULL,NULL,'2014-06-13','FRISA FORJADOS',NULL),
(7232,551,NULL,0.00,'MXN',NULL,0.00,'2014-06-17','2013-02-05',NULL,NULL,NULL,'2014-06-17','CANCELADA',NULL),
(7233,552,NULL,0.00,'MXN',NULL,0.00,'2014-06-17','2013-02-05',NULL,NULL,NULL,'2014-06-17','CANCELADA',NULL),
(7234,553,NULL,0.00,'MXN',NULL,0.00,'2014-06-17','2013-02-05',NULL,NULL,NULL,'2014-06-17','CANCELADA',NULL),
(7235,554,NULL,0.00,'MXN',NULL,0.00,'2014-06-20','2013-02-05',NULL,NULL,NULL,'2014-06-20','CANCELADA',NULL),
(7236,555,NULL,0.00,'MXN',NULL,0.00,'2014-06-23','2013-02-05',NULL,NULL,NULL,'2014-06-23','CANCELADA',NULL),
(7237,556,NULL,31327.79,'MXN',NULL,31327.79,'2014-06-23','2014-08-15',NULL,NULL,NULL,'2014-06-23','FRISA FORJADOS',NULL),
(7238,557,NULL,0.00,'MXN',NULL,0.00,'2014-06-23','2013-02-05',NULL,NULL,NULL,'2014-06-23','CANCELADA',NULL),
(7239,558,NULL,0.00,'MXN',NULL,0.00,'2014-06-23','2013-02-05',NULL,NULL,NULL,'2014-06-23','CANCELADA',NULL),
(7240,559,NULL,0.00,'MXN',NULL,0.00,'2014-06-23','2013-02-05',NULL,NULL,NULL,'2014-06-23','CANCELADA',NULL),
(7241,560,NULL,0.00,'MXN',NULL,0.00,'2014-06-23','2013-02-05',NULL,NULL,NULL,'2014-06-23','CANCELADA',NULL),
(7242,561,NULL,1456980.79,'MXN',NULL,1456980.79,'2014-06-26','2014-07-30',NULL,NULL,NULL,'2014-06-26','Ternium México',NULL),
(7243,562,NULL,7482.30,'MXN',NULL,7482.30,'2014-06-26','2014-07-30',NULL,NULL,NULL,'2014-06-26','Ternium México',NULL),
(7244,563,NULL,13344.00,'MXN',NULL,13344.00,'2014-06-26','2014-07-04',NULL,NULL,NULL,'2014-06-26','FERROPAK COMERCIAL',NULL),
(7245,564,NULL,5184.00,'MXN',NULL,5184.00,'2014-06-26','2014-07-04',NULL,NULL,NULL,'2014-06-26','FERROPAK COMERCIAL',NULL),
(7246,565,NULL,5184.00,'MXN',NULL,5184.00,'2014-06-26','2014-07-04',NULL,NULL,NULL,'2014-06-26','FERROPAK COMERCIAL',NULL),
(7247,566,NULL,6480.00,'MXN',NULL,6480.00,'2014-06-26','2014-07-04',NULL,NULL,NULL,'2014-06-26','FERROPAK COMERCIAL',NULL),
(7248,567,NULL,10368.00,'MXN',NULL,10368.00,'2014-06-26','2014-07-04',NULL,NULL,NULL,'2014-06-26','FERROPAK COMERCIAL',NULL),
(7249,568,NULL,4320.00,'MXN',NULL,4320.00,'2014-06-26','2014-07-04',NULL,NULL,NULL,'2014-06-26','FERROPAK COMERCIAL',NULL),
(7250,569,NULL,5400.00,'MXN',NULL,5400.00,'2014-06-26','2014-07-04',NULL,NULL,NULL,'2014-06-26','FERROPAK COMERCIAL',NULL),
(7251,570,NULL,8640.00,'MXN',NULL,8640.00,'2014-06-26','2014-07-04',NULL,NULL,NULL,'2014-06-26','FERROPAK COMERCIAL',NULL),
(7252,571,NULL,5184.00,'MXN',NULL,5184.00,'2014-06-26','2014-07-04',NULL,NULL,NULL,'2014-06-26','FERROPAK COMERCIAL',NULL),
(7253,572,NULL,5184.00,'MXN',NULL,5184.00,'2014-06-26','2014-07-04',NULL,NULL,NULL,'2014-06-26','FERROPAK COMERCIAL',NULL),
(7254,573,NULL,10368.00,'MXN',NULL,10368.00,'2014-06-26','2014-07-04',NULL,NULL,NULL,'2014-06-26','FERROPAK COMERCIAL',NULL),
(7255,574,NULL,18144.00,'MXN',NULL,18144.00,'2014-06-26','2014-07-04',NULL,NULL,NULL,'2014-06-26','FERROPAK COMERCIAL',NULL),
(7256,575,NULL,6480.00,'MXN',NULL,6480.00,'2014-06-26','2014-07-04',NULL,NULL,NULL,'2014-06-26','FERROPAK COMERCIAL',NULL),
(7257,576,NULL,10368.00,'MXN',NULL,10368.00,'2014-06-26','2014-07-04',NULL,NULL,NULL,'2014-06-26','FERROPAK COMERCIAL',NULL),
(7258,577,NULL,13468.35,'MXN',NULL,13468.35,'2014-06-30','2014-07-30',NULL,NULL,NULL,'2014-06-30','Ternium México',NULL),
(7259,578,NULL,0.00,'MXN',NULL,0.00,'2014-06-30','2013-02-05',NULL,NULL,NULL,'2014-06-30','CANCELADA',NULL),
(7260,579,NULL,66130.52,'MXN',NULL,66130.52,'2014-06-30','2014-08-15',NULL,NULL,NULL,'2014-06-30','FRISA FORJADOS',NULL),
(7261,580,NULL,637631.99,'MXN',NULL,637631.99,'2014-07-02','2014-07-30',NULL,NULL,NULL,'2014-07-02','Ternium México',NULL),
(7262,581,NULL,0.00,'MXN',NULL,0.00,'2014-07-02','2013-02-05',NULL,NULL,NULL,'2014-07-02','CANCELADA',NULL),
(7263,582,NULL,5184.00,'MXN',NULL,5184.00,'2014-07-02','2014-07-30',NULL,NULL,NULL,'2014-07-02','FERROPAK COMERCIAL',NULL),
(7264,583,NULL,6480.00,'MXN',NULL,6480.00,'2014-07-02','2014-07-30',NULL,NULL,NULL,'2014-07-02','FERROPAK COMERCIAL',NULL),
(7265,584,NULL,10368.00,'MXN',NULL,10368.00,'2014-07-02','2014-08-08',NULL,NULL,NULL,'2014-07-02','FERROPAK COMERCIAL',NULL),
(7266,585,NULL,5184.00,'MXN',NULL,5184.00,'2014-07-02','2014-08-15',NULL,NULL,NULL,'2014-07-02','FERROPAK COMERCIAL',NULL),
(7267,586,NULL,6480.00,'MXN',NULL,6480.00,'2014-07-02','2014-08-15',NULL,NULL,NULL,'2014-07-02','FERROPAK COMERCIAL',NULL),
(7268,587,NULL,10368.00,'MXN',NULL,10368.00,'2014-07-02','2014-08-08',NULL,NULL,NULL,'2014-07-02','FERROPAK COMERCIAL',NULL),
(7269,588,NULL,191186.50,'MXN',NULL,191186.50,'2014-07-04','2014-08-29',NULL,NULL,NULL,'2014-07-04','Ternium México',NULL),
(7270,589,NULL,5184.00,'MXN',NULL,5184.00,'2014-07-08','2014-07-25',NULL,NULL,NULL,'2014-07-08','FERROPAK COMERCIAL',NULL),
(7271,590,NULL,6480.00,'MXN',NULL,6480.00,'2014-07-08','2014-07-25',NULL,NULL,NULL,'2014-07-08','FERROPAK COMERCIAL',NULL),
(7272,591,NULL,10368.00,'MXN',NULL,10368.00,'2014-07-08','2014-07-25',NULL,NULL,NULL,'2014-07-08','FERROPAK COMERCIAL',NULL),
(7273,592,NULL,5184.00,'MXN',NULL,5184.00,'2014-07-08','2014-07-25',NULL,NULL,NULL,'2014-07-08','FERROPAK COMERCIAL',NULL),
(7274,593,NULL,6480.00,'MXN',NULL,6480.00,'2014-07-08','2014-07-30',NULL,NULL,NULL,'2014-07-08','FERROPAK COMERCIAL',NULL),
(7275,594,NULL,51051.23,'MXN',NULL,51051.23,'2014-07-08','2014-09-15',NULL,NULL,NULL,'2014-07-08','FRISA FORJADOS',NULL),
(7276,595,NULL,10368.00,'MXN',NULL,10368.00,'2014-07-08','2014-07-30',NULL,NULL,NULL,'2014-07-08','FERROPAK COMERCIAL',NULL),
(7277,596,NULL,5184.00,'MXN',NULL,5184.00,'2014-07-08','2014-07-25',NULL,NULL,NULL,'2014-07-08','FERROPAK COMERCIAL',NULL),
(7278,597,NULL,4320.00,'MXN',NULL,4320.00,'2014-07-08','2014-07-25',NULL,NULL,NULL,'2014-07-08','FERROPAK COMERCIAL',NULL),
(7279,598,NULL,10368.00,'MXN',NULL,10368.00,'2014-07-08','2014-08-15',NULL,NULL,NULL,'2014-07-08','FERROPAK COMERCIAL',NULL),
(7280,599,NULL,74715.00,'MXN',NULL,74715.00,'2014-07-14','2014-08-29',NULL,NULL,NULL,'2014-07-14','Ternium México',NULL),
(7281,600,NULL,70802.68,'MXN',NULL,70802.68,'2014-07-14','2014-07-30',NULL,NULL,NULL,'2014-07-14','Ternium México',NULL),
(7282,601,NULL,0.00,'MXN',NULL,0.00,'2014-07-15','2013-02-05',NULL,NULL,NULL,'2014-07-15','CANCELADA',NULL),
(7283,602,NULL,126594.33,'MXN',NULL,126594.33,'2014-07-15','2014-09-15',NULL,NULL,NULL,'2014-07-15','FRISA FORJADOS',NULL),
(7284,603,NULL,5184.00,'MXN',NULL,5184.00,'2014-07-16','2014-08-15',NULL,NULL,NULL,'2014-07-16','FERROPAK COMERCIAL',NULL),
(7285,604,NULL,6480.00,'MXN',NULL,6480.00,'2014-07-16','2014-08-15',NULL,NULL,NULL,'2014-07-16','FERROPAK COMERCIAL',NULL),
(7286,605,NULL,10368.00,'MXN',NULL,10368.00,'2014-07-16','2014-08-15',NULL,NULL,NULL,'2014-07-16','FERROPAK COMERCIAL',NULL),
(7287,606,NULL,378676.50,'MXN',NULL,378676.50,'2014-07-18','2014-08-29',NULL,NULL,NULL,'2014-07-18','Ternium México',NULL),
(7288,607,NULL,296737.10,'MXN',NULL,296737.10,'2014-07-18','2014-08-29',NULL,NULL,NULL,'2014-07-18','Ternium México',NULL),
(7289,608,NULL,47019.53,'MXN',NULL,47019.53,'2014-07-18','2014-08-29',NULL,NULL,NULL,'2014-07-18','Ternium México',NULL),
(7290,609,NULL,64618.88,'MXN',NULL,64618.88,'2014-07-21','2014-09-15',NULL,NULL,NULL,'2014-07-21','FRISA FORJADOS',NULL),
(7291,610,NULL,5184.00,'MXN',NULL,5184.00,'2014-07-23','2014-08-15',NULL,NULL,NULL,'2014-07-23','FERROPAK COMERCIAL',NULL),
(7292,611,NULL,6480.00,'MXN',NULL,6480.00,'2014-07-23','2014-08-15',NULL,NULL,NULL,'2014-07-23','FERROPAK COMERCIAL',NULL),
(7293,612,NULL,10368.00,'MXN',NULL,10368.00,'2014-07-23','2014-08-20',NULL,NULL,NULL,'2014-07-23','FERROPAK COMERCIAL',NULL),
(7294,613,NULL,48854.76,'MXN',NULL,48854.76,'2014-07-25','2014-09-15',NULL,NULL,NULL,'2014-07-25','FRISA FORJADOS',NULL),
(7295,614,NULL,603457.66,'MXN',NULL,603457.66,'2014-07-29','2014-08-29',NULL,NULL,NULL,'2014-07-29','Ternium México',NULL),
(7296,615,NULL,18396.95,'MXN',NULL,18396.95,'2014-07-30','2014-09-15',NULL,NULL,NULL,'2014-07-30','FRISA FORJADOS',NULL),
(7297,616,NULL,0.00,'MXN',NULL,0.00,'2014-07-30','2013-02-05',NULL,NULL,NULL,'2014-07-30','CANCELADA',NULL),
(7298,617,NULL,0.00,'MXN',NULL,0.00,'2014-07-30','2013-02-05',NULL,NULL,NULL,'2014-07-30','CANCELADA',NULL),
(7299,618,NULL,0.00,'MXN',NULL,0.00,'2014-07-30','2013-02-05',NULL,NULL,NULL,'2014-07-30','CANCELADA',NULL),
(7300,619,NULL,10368.00,'MXN',NULL,10368.00,'2014-07-30','2014-08-20',NULL,NULL,NULL,'2014-07-30','FERROPAK COMERCIAL',NULL),
(7301,620,NULL,213067.58,'MXN',NULL,213067.58,'2014-07-30','2014-08-29',NULL,NULL,NULL,'2014-07-30','Ternium México',NULL),
(7302,621,NULL,0.00,'MXN',NULL,0.00,'2014-07-31','2013-02-05',NULL,NULL,NULL,'2014-07-31','CANCELADA',NULL),
(7303,622,NULL,0.00,'MXN',NULL,0.00,'2014-07-31','2013-02-05',NULL,NULL,NULL,'2014-07-31','CANCELADA',NULL),
(7304,623,NULL,43890.59,'MXN',NULL,43890.59,'2014-07-31','2014-09-15',NULL,NULL,NULL,'2014-07-31','FRISA FORJADOS',NULL),
(7305,624,NULL,53114.46,'MXN',NULL,53114.46,'2014-08-07','2014-10-15',NULL,NULL,NULL,'2014-08-07','FRISA FORJADOS',NULL),
(7306,625,NULL,15552.00,'MXN',NULL,15552.00,'2014-08-07','2014-08-29',NULL,NULL,NULL,'2014-08-07','FERROPAK COMERCIAL',NULL),
(7307,626,NULL,6480.00,'MXN',NULL,6480.00,'2014-08-07','2014-08-29',NULL,NULL,NULL,'2014-08-07','FERROPAK COMERCIAL',NULL),
(7308,627,NULL,6480.00,'MXN',NULL,6480.00,'2014-08-07','2014-08-29',NULL,NULL,NULL,'2014-08-07','FERROPAK COMERCIAL',NULL),
(7309,628,NULL,6480.00,'MXN',NULL,6480.00,'2014-08-07','2014-08-29',NULL,NULL,NULL,'2014-08-07','FERROPAK COMERCIAL',NULL),
(7310,629,NULL,10368.00,'MXN',NULL,10368.00,'2014-08-07','2014-08-29',NULL,NULL,NULL,'2014-08-07','FERROPAK COMERCIAL',NULL),
(7311,630,NULL,10368.00,'MXN',NULL,10368.00,'2014-08-07','2014-08-29',NULL,NULL,NULL,'2014-08-07','FERROPAK COMERCIAL',NULL),
(7312,631,NULL,36066.46,'MXN',NULL,36066.46,'2014-08-08','2014-08-29',NULL,NULL,NULL,'2014-08-08','Ternium México',NULL),
(7313,632,NULL,132035.35,'MXN',NULL,132035.35,'2014-08-13','2014-08-29',NULL,NULL,NULL,'2014-08-13','Ternium México',NULL),
(7314,633,NULL,99069.36,'MXN',NULL,99069.36,'2014-08-15','2014-10-15',NULL,NULL,NULL,'2014-08-15','FRISA FORJADOS',NULL),
(7315,634,NULL,5184.00,'MXN',NULL,5184.00,'2014-08-20','2014-09-12',NULL,NULL,NULL,'2014-08-20','FERROPAK COMERCIAL',NULL),
(7316,635,NULL,6480.00,'MXN',NULL,6480.00,'2014-08-20','2014-09-12',NULL,NULL,NULL,'2014-08-20','FERROPAK COMERCIAL',NULL),
(7317,636,NULL,10152.00,'MXN',NULL,10152.00,'2014-08-20','2014-09-12',NULL,NULL,NULL,'2014-08-20','FERROPAK COMERCIAL',NULL),
(7318,637,NULL,310172.12,'MXN',NULL,310172.12,'2014-08-20','2014-09-30',NULL,NULL,NULL,'2014-08-20','Ternium México',NULL),
(7319,638,NULL,246351.04,'MXN',NULL,246351.04,'2014-08-20','2014-09-30',NULL,NULL,NULL,'2014-08-20','Ternium México',NULL),
(7320,639,NULL,63750.50,'MXN',NULL,63750.50,'2014-08-21','2014-09-30',NULL,NULL,NULL,'2014-08-21','Ternium México',NULL),
(7321,640,NULL,10368.00,'MXN',NULL,10368.00,'2014-08-28','2014-09-10',NULL,NULL,NULL,'2014-08-28','FERROPAK COMERCIAL',NULL),
(7322,641,NULL,4320.00,'MXN',NULL,4320.00,'2014-08-28','2014-09-10',NULL,NULL,NULL,'2014-08-28','FERROPAK COMERCIAL',NULL),
(7323,642,NULL,3780.00,'MXN',NULL,3780.00,'2014-08-28','2014-09-10',NULL,NULL,NULL,'2014-08-28','FERROPAK COMERCIAL',NULL),
(7324,643,NULL,84971.12,'MXN',NULL,84971.12,'2014-08-28','2014-10-15',NULL,NULL,NULL,'2014-08-28','FRISA FORJADOS',NULL),
(7325,644,NULL,4320.00,'MXN',NULL,4320.00,'2014-08-28','2014-09-10',NULL,NULL,NULL,'2014-08-28','FERROPAK COMERCIAL',NULL),
(7326,645,NULL,10368.00,'MXN',NULL,10368.00,'2014-08-28','2014-09-24',NULL,NULL,NULL,'2014-08-28','FERROPAK COMERCIAL',NULL),
(7327,646,NULL,9504.00,'MXN',NULL,9504.00,'2014-08-28','2014-09-24',NULL,NULL,NULL,'2014-08-28','FERROPAK COMERCIAL',NULL),
(7328,647,NULL,0.00,'MXN',NULL,0.00,'2014-08-29','2013-02-05',NULL,NULL,NULL,'2014-08-29','CANCELADA',NULL),
(7329,648,NULL,0.00,'MXN',NULL,0.00,'2014-08-29','2013-02-05',NULL,NULL,NULL,'2014-08-29','CANCELADA',NULL),
(7330,649,NULL,70345.45,'MXN',NULL,70345.45,'2014-08-29','2014-10-15',NULL,NULL,NULL,'2014-08-29','FRISA FORJADOS',NULL),
(7331,650,NULL,140971.96,'MXN',NULL,140971.96,'2014-09-04','2014-09-30',NULL,NULL,NULL,'2014-09-04','Ternium México',NULL),
(7332,651,NULL,13714.66,'MXN',NULL,13714.66,'2014-09-04','2014-09-30',NULL,NULL,NULL,'2014-09-04','Ternium México',NULL),
(7333,652,NULL,10368.00,'MXN',NULL,10368.00,'2014-09-11','2014-10-10',NULL,NULL,NULL,'2014-09-11','FERROPAK COMERCIAL',NULL),
(7334,653,NULL,4320.00,'MXN',NULL,4320.00,'2014-09-11','2014-10-10',NULL,NULL,NULL,'2014-09-11','FERROPAK COMERCIAL',NULL),
(7335,654,NULL,4320.00,'MXN',NULL,4320.00,'2014-09-11','2014-10-10',NULL,NULL,NULL,'2014-09-11','FERROPAK COMERCIAL',NULL),
(7336,655,NULL,4320.00,'MXN',NULL,4320.00,'2014-09-11','2014-10-10',NULL,NULL,NULL,'2014-09-11','FERROPAK COMERCIAL',NULL),
(7337,656,NULL,10368.00,'MXN',NULL,10368.00,'2014-09-11','2014-10-10',NULL,NULL,NULL,'2014-09-11','FERROPAK COMERCIAL',NULL),
(7338,657,NULL,10368.00,'MXN',NULL,10368.00,'2014-09-11','2014-10-10',NULL,NULL,NULL,'2014-09-11','FERROPAK COMERCIAL',NULL),
(7339,658,NULL,29352.00,'MXN',NULL,29352.00,'2014-09-11','2014-10-31',NULL,NULL,NULL,'2014-09-11','Ternium México',NULL),
(7340,659,NULL,2387.96,'MXN',NULL,2387.96,'2014-09-11','2014-09-30',NULL,NULL,NULL,'2014-09-11','Ternium México',NULL),
(7341,660,NULL,56493.48,'MXN',NULL,56493.48,'2014-09-19','2014-11-14',NULL,NULL,NULL,'2014-09-19','FRISA FORJADOS',NULL),
(7342,661,NULL,150064.00,'MXN',NULL,150064.00,'2014-09-19','2014-10-31',NULL,NULL,NULL,'2014-09-19','Ternium México',NULL),
(7343,662,NULL,18310.41,'MXN',NULL,18310.41,'2014-09-23','2014-11-14',NULL,NULL,NULL,'2014-09-23','FRISA FORJADOS',NULL),
(7344,663,NULL,261221.28,'MXN',NULL,261221.28,'2014-09-23','2014-10-31',NULL,NULL,NULL,'2014-09-23','Ternium México',NULL),
(7345,664,NULL,5184.00,'MXN',NULL,5184.00,'2014-09-24','2014-11-26',NULL,NULL,NULL,'2014-09-24','FERROPAK COMERCIAL',NULL),
(7346,665,NULL,6480.00,'MXN',NULL,6480.00,'2014-09-24','2014-11-26',NULL,NULL,NULL,'2014-09-24','FERROPAK COMERCIAL',NULL),
(7347,666,NULL,10368.00,'MXN',NULL,10368.00,'2014-09-24','2014-11-26',NULL,NULL,NULL,'2014-09-24','FERROPAK COMERCIAL',NULL),
(7348,667,NULL,105379.26,'MXN',NULL,105379.26,'2014-09-29','2014-10-31',NULL,NULL,NULL,'2014-09-29','Ternium México',NULL),
(7349,668,NULL,0.00,'MXN',NULL,0.00,'2014-09-29','2013-02-05',NULL,NULL,NULL,'2014-09-29','CANCELADA',NULL),
(7350,669,NULL,0.00,'MXN',NULL,0.00,'2014-09-29','2013-02-05',NULL,NULL,NULL,'2014-09-29','CANCELADA',NULL),
(7351,670,NULL,0.00,'MXN',NULL,0.00,'2014-09-29','2013-02-05',NULL,NULL,NULL,'2014-09-29','CANCELADA',NULL),
(7352,671,NULL,164602.37,'MXN',NULL,164602.37,'2014-09-29','2014-11-14',NULL,NULL,NULL,'2014-09-29','FRISA FORJADOS',NULL),
(7353,672,NULL,12692.74,'MXN',NULL,12692.74,'2014-09-30','2014-11-14',NULL,NULL,NULL,'2014-09-30','FRISA FORJADOS',NULL),
(7354,673,NULL,2237.55,'MXN',NULL,2237.55,'2014-10-01','2014-10-31',NULL,NULL,NULL,'2014-10-01','Ternium México',NULL),
(7355,674,NULL,596104.48,'MXN',NULL,596104.48,'2014-10-01','2014-10-31',NULL,NULL,NULL,'2014-10-01','Ternium México',NULL),
(7356,675,NULL,5184.00,'MXN',NULL,5184.00,'2014-10-02','2014-11-26',NULL,NULL,NULL,'2014-10-02','FERROPAK COMERCIAL',NULL),
(7357,676,NULL,6480.00,'MXN',NULL,6480.00,'2014-10-02','2014-11-26',NULL,NULL,NULL,'2014-10-02','FERROPAK COMERCIAL',NULL),
(7358,677,NULL,10368.00,'MXN',NULL,10368.00,'2014-10-02','2014-11-26',NULL,NULL,NULL,'2014-10-02','FERROPAK COMERCIAL',NULL),
(7359,678,NULL,5184.00,'MXN',NULL,5184.00,'2014-10-02','2014-11-26',NULL,NULL,NULL,'2014-10-02','FERROPAK COMERCIAL',NULL),
(7360,679,NULL,6390.00,'MXN',NULL,6390.00,'2014-10-02','2014-11-26',NULL,NULL,NULL,'2014-10-02','FERROPAK COMERCIAL',NULL),
(7361,680,NULL,10368.00,'MXN',NULL,10368.00,'2014-10-02','2014-11-26',NULL,NULL,NULL,'2014-10-02','FERROPAK COMERCIAL',NULL),
(7362,681,NULL,0.00,'MXN',NULL,0.00,'2014-10-08','2013-02-05',NULL,NULL,NULL,'2014-10-08','CANCELADA',NULL),
(7363,682,NULL,7358.40,'MXN',NULL,7358.40,'2014-10-08','2014-11-28',NULL,NULL,NULL,'2014-10-08','Ternium México',NULL),
(7364,683,NULL,90292.00,'MXN',NULL,90292.00,'2014-10-08','2014-11-28',NULL,NULL,NULL,'2014-10-08','Ternium México',NULL),
(7365,684,NULL,35463.49,'MXN',NULL,35463.49,'2014-10-13','2014-10-31',NULL,NULL,NULL,'2014-10-13','Ternium México',NULL),
(7366,685,NULL,0.00,'MXN',NULL,0.00,'2014-10-13','2013-02-05',NULL,NULL,NULL,'2014-10-13','CANCELADA',NULL),
(7367,686,NULL,88264.43,'MXN',NULL,88264.43,'2014-10-13','2014-12-15',NULL,NULL,NULL,'2014-10-13','FRISA FORJADOS',NULL),
(7368,687,NULL,12949.57,'MXN',NULL,12949.57,'2014-10-16','2014-12-15',NULL,NULL,NULL,'2014-10-16','FRISA FORJADOS',NULL),
(7369,688,NULL,4320.00,'MXN',NULL,4320.00,'2014-10-16','2014-11-26',NULL,NULL,NULL,'2014-10-16','FERROPAK COMERCIAL',NULL),
(7370,689,NULL,6480.00,'MXN',NULL,6480.00,'2014-10-16','2014-11-26',NULL,NULL,NULL,'2014-10-16','FERROPAK COMERCIAL',NULL),
(7371,690,NULL,10368.00,'MXN',NULL,10368.00,'2014-10-16','2014-11-26',NULL,NULL,NULL,'2014-10-16','FERROPAK COMERCIAL',NULL),
(7372,691,NULL,10368.00,'MXN',NULL,10368.00,'2014-10-16','2014-12-20',NULL,NULL,NULL,'2014-10-16','FERROPAK COMERCIAL',NULL),
(7373,692,NULL,58384.00,'MXN',NULL,58384.00,'2014-10-20','2014-11-28',NULL,NULL,NULL,'2014-10-20','Ternium México',NULL),
(7374,693,NULL,300798.06,'MXN',NULL,300798.06,'2014-10-21','2014-11-28',NULL,NULL,NULL,'2014-10-21','Ternium México',NULL),
(7375,694,NULL,5184.00,'MXN',NULL,5184.00,'2014-10-24','2014-11-28',NULL,NULL,NULL,'2014-10-24','FERROPAK COMERCIAL',NULL),
(7376,695,NULL,5040.00,'MXN',NULL,5040.00,'2014-10-24','2014-11-28',NULL,NULL,NULL,'2014-10-24','FERROPAK COMERCIAL',NULL),
(7377,696,NULL,10368.00,'MXN',NULL,10368.00,'2014-10-24','2014-11-28',NULL,NULL,NULL,'2014-10-24','FERROPAK COMERCIAL',NULL),
(7378,697,NULL,10368.00,'MXN',NULL,10368.00,'2014-10-24','2014-11-28',NULL,NULL,NULL,'2014-10-24','FERROPAK COMERCIAL',NULL),
(7379,698,NULL,5184.00,'MXN',NULL,5184.00,'2014-10-24','2014-11-28',NULL,NULL,NULL,'2014-10-24','FERROPAK COMERCIAL',NULL),
(7380,699,NULL,6480.00,'MXN',NULL,6480.00,'2014-10-24','2014-11-28',NULL,NULL,NULL,'2014-10-24','FERROPAK COMERCIAL',NULL),
(7381,700,NULL,10368.00,'MXN',NULL,10368.00,'2014-10-24','2014-11-28',NULL,NULL,NULL,'2014-10-24','FERROPAK COMERCIAL',NULL),
(7382,701,NULL,10368.00,'MXN',NULL,10368.00,'2014-10-24','2014-11-28',NULL,NULL,NULL,'2014-10-24','FERROPAK COMERCIAL',NULL),
(7383,702,NULL,744.00,'MXN',NULL,744.00,'2014-10-24','2014-11-28',NULL,NULL,NULL,'2014-10-24','FERROPAK COMERCIAL',NULL),
(7384,703,NULL,67361.18,'MXN',NULL,67361.18,'2014-10-27','2014-11-28',NULL,NULL,NULL,'2014-10-27','Ternium México',NULL),
(7385,704,NULL,0.00,'MXN',NULL,0.00,'2014-10-30','2013-02-05',NULL,NULL,NULL,'2014-10-30','CANCELADA',NULL),
(7386,705,NULL,0.00,'MXN',NULL,0.00,'2014-10-30','2013-02-05',NULL,NULL,NULL,'2014-10-30','CANCELADA',NULL),
(7387,706,NULL,0.00,'MXN',NULL,0.00,'2014-10-30','2013-02-05',NULL,NULL,NULL,'2014-10-30','CANCELADA',NULL),
(7388,707,NULL,0.00,'MXN',NULL,0.00,'2014-10-30','2013-02-05',NULL,NULL,NULL,'2014-10-30','CANCELADA',NULL),
(7389,708,NULL,83287.15,'MXN',NULL,83287.15,'2014-10-30','2014-12-15',NULL,NULL,NULL,'2014-10-30','FRISA FORJADOS',NULL),
(7390,709,NULL,16029.48,'MXN',NULL,16029.48,'2014-10-31','2014-12-15',NULL,NULL,NULL,'2014-10-31','FRISA FORJADOS',NULL),
(7391,710,NULL,68259.48,'MXN',NULL,68259.48,'2014-11-04','2014-12-15',NULL,NULL,NULL,'2014-11-04','FRISA FORJADOS',NULL),
(7392,711,NULL,262850.40,'MXN',NULL,262850.40,'2014-11-04','2014-11-28',NULL,NULL,NULL,'2014-11-04','Ternium México',NULL),
(7393,712,NULL,67943.00,'MXN',NULL,67943.00,'2014-11-04','2014-12-29',NULL,NULL,NULL,'2014-11-04','Ternium México',NULL),
(7394,713,NULL,5184.00,'MXN',NULL,5184.00,'2014-11-05','2014-12-20',NULL,NULL,NULL,'2014-11-05','FERROPAK COMERCIAL',NULL),
(7395,714,NULL,6480.00,'MXN',NULL,6480.00,'2014-11-05','2014-12-20',NULL,NULL,NULL,'2014-11-05','FERROPAK COMERCIAL',NULL),
(7396,715,NULL,10368.00,'MXN',NULL,10368.00,'2014-11-05','2014-12-20',NULL,NULL,NULL,'2014-11-05','FERROPAK COMERCIAL',NULL),
(7397,716,NULL,10368.00,'MXN',NULL,10368.00,'2014-11-05','2014-12-20',NULL,NULL,NULL,'2014-11-05','FERROPAK COMERCIAL',NULL),
(7398,717,NULL,72011.48,'MXN',NULL,72011.48,'2014-11-07','2014-12-15',NULL,NULL,NULL,'2014-11-07','FRISA FORJADOS',NULL),
(7399,718,NULL,16799.23,'MXN',NULL,16799.23,'2014-11-10','2015-01-15',NULL,NULL,NULL,'2014-11-10','FRISA FORJADOS',NULL),
(7400,719,NULL,2144.64,'MXN',NULL,2144.64,'2014-11-11','2015-01-15',NULL,NULL,NULL,'2014-11-11','FRISA FORJADOS',NULL),
(7401,720,NULL,2039.52,'MXN',NULL,2039.52,'2014-11-11','2015-01-15',NULL,NULL,NULL,'2014-11-11','FRISA FORJADOS',NULL),
(7402,721,NULL,93377.56,'MXN',NULL,93377.56,'2014-11-11','2014-11-28',NULL,NULL,NULL,'2014-11-11','Ternium México',NULL),
(7403,722,NULL,3692.00,'MXN',NULL,3692.00,'2014-11-11','2014-12-29',NULL,NULL,NULL,'2014-11-11','Ternium México',NULL),
(7404,723,NULL,5600.00,'MXN',NULL,5600.00,'2014-11-11','2014-12-29',NULL,NULL,NULL,'2014-11-11','Ternium México',NULL),
(7405,724,NULL,103188.00,'MXN',NULL,103188.00,'2014-11-11','2014-12-29',NULL,NULL,NULL,'2014-11-11','Ternium México',NULL),
(7406,725,NULL,5184.00,'MXN',NULL,5184.00,'2014-11-13','2014-12-20',NULL,NULL,NULL,'2014-11-13','FERROPAK COMERCIAL',NULL),
(7407,726,NULL,6480.00,'MXN',NULL,6480.00,'2014-11-13','2014-12-20',NULL,NULL,NULL,'2014-11-13','FERROPAK COMERCIAL',NULL),
(7408,727,NULL,5184.00,'MXN',NULL,5184.00,'2014-11-13','2014-12-20',NULL,NULL,NULL,'2014-11-13','FERROPAK COMERCIAL',NULL),
(7409,728,NULL,10368.00,'MXN',NULL,10368.00,'2014-11-13','2014-12-20',NULL,NULL,NULL,'2014-11-13','FERROPAK COMERCIAL',NULL),
(7410,729,NULL,4860.00,'MXN',NULL,4860.00,'2014-11-13','2014-12-20',NULL,NULL,NULL,'2014-11-13','FERROPAK COMERCIAL',NULL),
(7411,730,NULL,6480.00,'MXN',NULL,6480.00,'2014-11-13','2014-12-20',NULL,NULL,NULL,'2014-11-13','FERROPAK COMERCIAL',NULL),
(7412,731,NULL,10368.00,'MXN',NULL,10368.00,'2014-11-13','2014-12-20',NULL,NULL,NULL,'2014-11-13','FERROPAK COMERCIAL',NULL),
(7413,732,NULL,5184.00,'MXN',NULL,5184.00,'2014-11-13','2014-12-20',NULL,NULL,NULL,'2014-11-13','FERROPAK COMERCIAL',NULL),
(7414,733,NULL,85002.00,'MXN',NULL,85002.00,'2014-11-20','2014-12-29',NULL,NULL,NULL,'2014-11-20','Ternium México',NULL),
(7415,734,NULL,0.00,'MXN',NULL,0.00,'2014-11-21','2013-02-05',NULL,NULL,NULL,'2014-11-21','CANCELADA',NULL),
(7416,735,NULL,98885.34,'MXN',NULL,98885.34,'2014-11-21','2015-01-15',NULL,NULL,NULL,'2014-11-21','FRISA FORJADOS',NULL),
(7417,736,NULL,81686.41,'MXN',NULL,81686.41,'2014-11-28','2015-01-15',NULL,NULL,NULL,'2014-11-28','FRISA FORJADOS',NULL),
(7418,737,NULL,3494.40,'MXN',NULL,3494.40,'2014-11-28','2014-12-29',NULL,NULL,NULL,'2014-11-28','Ternium México',NULL),
(7419,738,NULL,4320.00,'MXN',NULL,4320.00,'2014-11-28','2014-12-24',NULL,NULL,NULL,'2014-11-28','FERROPAK COMERCIAL',NULL),
(7420,739,NULL,5400.00,'MXN',NULL,5400.00,'2014-11-28','2014-12-24',NULL,NULL,NULL,'2014-11-28','FERROPAK COMERCIAL',NULL),
(7421,740,NULL,8640.00,'MXN',NULL,8640.00,'2014-11-28','2014-12-24',NULL,NULL,NULL,'2014-11-28','FERROPAK COMERCIAL',NULL),
(7422,741,NULL,4320.00,'MXN',NULL,4320.00,'2014-11-28','2014-12-24',NULL,NULL,NULL,'2014-11-28','FERROPAK COMERCIAL',NULL),
(7423,742,NULL,5184.00,'MXN',NULL,5184.00,'2014-11-28','2014-12-24',NULL,NULL,NULL,'2014-11-28','FERROPAK COMERCIAL',NULL),
(7424,743,NULL,5400.00,'MXN',NULL,5400.00,'2014-11-28','2014-12-24',NULL,NULL,NULL,'2014-11-28','FERROPAK COMERCIAL',NULL),
(7425,744,NULL,10368.00,'MXN',NULL,10368.00,'2014-11-28','2014-12-24',NULL,NULL,NULL,'2014-11-28','FERROPAK COMERCIAL',NULL),
(7426,745,NULL,5184.00,'MXN',NULL,5184.00,'2014-11-28','2014-12-24',NULL,NULL,NULL,'2014-11-28','FERROPAK COMERCIAL',NULL),
(7427,746,NULL,476931.73,'MXN',NULL,476931.73,'2014-12-02','2014-12-29',NULL,NULL,NULL,'2014-12-02','Ternium México',NULL),
(7428,747,NULL,276721.17,'MXN',NULL,276721.17,'2014-12-03','2015-01-30',NULL,NULL,NULL,'2014-12-03','Ternium México',NULL),
(7429,748,NULL,47188.50,'MXN',NULL,47188.50,'2014-12-11','2015-01-28',NULL,NULL,NULL,'2014-12-11','FRISA FORJADOS',NULL),
(7430,749,NULL,32672.20,'MXN',NULL,32672.20,'2014-12-11','2015-01-30',NULL,NULL,NULL,'2014-12-11','Ternium México',NULL),
(7431,750,NULL,5184.00,'MXN',NULL,5184.00,'2014-12-12','2014-12-24',NULL,NULL,NULL,'2014-12-12','FERROPAK COMERCIAL',NULL),
(7432,751,NULL,6480.00,'MXN',NULL,6480.00,'2014-12-12','2014-12-24',NULL,NULL,NULL,'2014-12-12','FERROPAK COMERCIAL',NULL),
(7433,752,NULL,10368.00,'MXN',NULL,10368.00,'2014-12-12','2014-12-24',NULL,NULL,NULL,'2014-12-12','FERROPAK COMERCIAL',NULL),
(7434,753,NULL,5184.00,'MXN',NULL,5184.00,'2014-12-12','2014-12-24',NULL,NULL,NULL,'2014-12-12','FERROPAK COMERCIAL',NULL),
(7435,754,NULL,5184.00,'MXN',NULL,5184.00,'2014-12-12','2014-12-24',NULL,NULL,NULL,'2014-12-12','FERROPAK COMERCIAL',NULL),
(7436,755,NULL,6480.00,'MXN',NULL,6480.00,'2014-12-12','2014-12-24',NULL,NULL,NULL,'2014-12-12','FERROPAK COMERCIAL',NULL),
(7437,756,NULL,5184.00,'MXN',NULL,5184.00,'2014-12-12','2014-12-24',NULL,NULL,NULL,'2014-12-12','FERROPAK COMERCIAL',NULL),
(7438,757,NULL,10368.00,'MXN',NULL,10368.00,'2014-12-12','2014-12-24',NULL,NULL,NULL,'2014-12-12','FERROPAK COMERCIAL',NULL),
(7439,758,NULL,38220.00,'MXN',NULL,38220.00,'2014-12-15','2015-01-30',NULL,NULL,NULL,'2014-12-15','Ternium México',NULL),
(7440,759,NULL,11200.00,'MXN',NULL,11200.00,'2014-12-16','2015-01-30',NULL,NULL,NULL,'2014-12-16','Ternium México',NULL),
(7441,760,NULL,74715.00,'MXN',NULL,74715.00,'2014-12-16','2015-01-30',NULL,NULL,NULL,'2014-12-16','Ternium México',NULL),
(7442,761,NULL,0.00,'MXN',NULL,0.00,'2014-12-18','2013-02-05',NULL,NULL,NULL,'2014-12-18','CANCELADA',NULL),
(7443,762,NULL,0.00,'MXN',NULL,0.00,'2014-12-18','2013-02-05',NULL,NULL,NULL,'2014-12-18','CANCELADA',NULL),
(7444,763,NULL,56665.89,'MXN',NULL,56665.89,'2014-12-18','2015-01-28',NULL,NULL,NULL,'2014-12-18','FRISA FORJADOS',NULL),
(7445,764,NULL,65137.92,'MXN',NULL,65137.92,'2014-12-19','2015-01-28',NULL,NULL,NULL,'2014-12-19','FRISA FORJADOS',NULL),
(7446,765,NULL,16500.00,'MXN',NULL,16500.00,'2014-12-19','2014-12-23',NULL,NULL,NULL,'2014-12-19','Vesuvius México',NULL),
(7447,766,NULL,35350.00,'MXN',NULL,35350.00,'2014-12-19','2014-12-23',NULL,NULL,NULL,'2014-12-19','Vesuvius México',NULL),
(7448,767,11,124987.00,'MXN',NULL,124987.00,'2014-12-23','2014-12-23',NULL,NULL,NULL,'2014-12-23','Transportadores Industriales de México',999),
(7449,768,11,30713.00,'MXN',NULL,30713.00,'2014-12-26','2014-12-26',NULL,NULL,NULL,'2014-12-26','Transportadores Industriales de México',999),
(7450,769,NULL,215208.94,'MXN',NULL,215208.94,'2015-01-02','2015-02-27',NULL,NULL,NULL,'2015-01-02','Ternium México',NULL),
(7451,770,11,128271.98,'MXN',NULL,128271.98,'2015-01-02','2015-01-02',NULL,NULL,NULL,'2015-01-02','Transportadores Industriales de México',999),
(7452,771,NULL,53085.76,'MXN',NULL,53085.76,'2015-01-02','2015-01-28',NULL,NULL,NULL,'2015-01-02','FRISA FORJADOS',NULL),
(7453,772,NULL,5184.00,'MXN',NULL,5184.00,'2015-01-07','2015-01-30',NULL,NULL,NULL,'2015-01-07','FERROPAK COMERCIAL',NULL),
(7454,773,NULL,6480.00,'MXN',NULL,6480.00,'2015-01-07','2015-01-30',NULL,NULL,NULL,'2015-01-07','FERROPAK COMERCIAL',NULL),
(7455,774,NULL,10368.00,'MXN',NULL,10368.00,'2015-01-07','2015-01-30',NULL,NULL,NULL,'2015-01-07','FERROPAK COMERCIAL',NULL),
(7456,775,NULL,5184.00,'MXN',NULL,5184.00,'2015-01-07','2015-01-30',NULL,NULL,NULL,'2015-01-07','FERROPAK COMERCIAL',NULL),
(7457,776,NULL,5184.00,'MXN',NULL,5184.00,'2015-01-07','2015-01-30',NULL,NULL,NULL,'2015-01-07','FERROPAK COMERCIAL',NULL),
(7458,777,NULL,6480.00,'MXN',NULL,6480.00,'2015-01-07','2015-01-30',NULL,NULL,NULL,'2015-01-07','FERROPAK COMERCIAL',NULL),
(7459,778,NULL,10368.00,'MXN',NULL,10368.00,'2015-01-07','2015-01-30',NULL,NULL,NULL,'2015-01-07','FERROPAK COMERCIAL',NULL),
(7460,779,NULL,5184.00,'MXN',NULL,5184.00,'2015-01-07','2015-01-30',NULL,NULL,NULL,'2015-01-07','FERROPAK COMERCIAL',NULL),
(7461,780,NULL,11493.55,'MXN',NULL,11493.55,'2015-01-07','2015-01-28',NULL,NULL,NULL,'2015-01-07','FRISA FORJADOS',NULL),
(7462,781,NULL,40353.35,'MXN',NULL,40353.35,'2015-01-07','2015-01-30',NULL,NULL,NULL,'2015-01-07','Ternium México',NULL),
(7463,782,NULL,0.00,'MXN',NULL,0.00,'2015-01-09','2013-02-05',NULL,NULL,NULL,'2015-01-09','CANCELADA',NULL),
(7464,783,NULL,123136.43,'MXN',NULL,123136.43,'2015-01-12','2015-01-30',NULL,NULL,NULL,'2015-01-12','Ternium México',NULL),
(7465,784,NULL,292229.46,'MXN',NULL,292229.46,'2015-01-12','2015-02-27',NULL,NULL,NULL,'2015-01-12','Ternium México',NULL),
(7466,785,NULL,48154.99,'MXN',NULL,48154.99,'2015-01-16','2015-01-28',NULL,NULL,NULL,'2015-01-16','FRISA FORJADOS',NULL),
(7467,786,11,133514.00,'MXN',NULL,133514.00,'2015-01-16','2015-01-16',NULL,NULL,NULL,'2015-01-16','Transportadores Industriales de México',999),
(7468,787,NULL,20077.30,'MXN',NULL,20077.30,'2015-01-20','2015-02-19',NULL,NULL,NULL,'2015-01-20','MAGOTTEAUX ',NULL),
(7469,788,NULL,35350.00,'MXN',NULL,35350.00,'2015-01-20','2015-01-30',NULL,NULL,NULL,'2015-01-20','Vesuvius México',NULL),
(7470,789,NULL,35350.00,'MXN',NULL,35350.00,'2015-01-20','2015-01-26',NULL,NULL,NULL,'2015-01-20','Vesuvius México',NULL),
(7471,790,NULL,35350.00,'MXN',NULL,35350.00,'2015-01-20','2015-01-26',NULL,NULL,NULL,'2015-01-20','Vesuvius México',NULL),
(7472,791,NULL,7537.09,'MXN',NULL,7537.09,'2015-01-21','2015-01-28',NULL,NULL,NULL,'2015-01-21','FRISA FORJADOS',NULL),
(7473,792,NULL,0.00,'MXN',NULL,0.00,'2015-01-21','2013-02-05',NULL,NULL,NULL,'2015-01-21','CANCELADA',NULL),
(7474,793,NULL,4320.00,'MXN',NULL,4320.00,'2015-01-21','2015-02-04',NULL,NULL,NULL,'2015-01-21','FERROPAK COMERCIAL',NULL),
(7475,794,NULL,5400.00,'MXN',NULL,5400.00,'2015-01-21','2015-02-04',NULL,NULL,NULL,'2015-01-21','FERROPAK COMERCIAL',NULL),
(7476,795,NULL,10368.00,'MXN',NULL,10368.00,'2015-01-21','2015-02-04',NULL,NULL,NULL,'2015-01-21','FERROPAK COMERCIAL',NULL),
(7477,796,NULL,5184.00,'MXN',NULL,5184.00,'2015-01-21','2015-02-04',NULL,NULL,NULL,'2015-01-21','FERROPAK COMERCIAL',NULL),
(7478,797,NULL,4320.00,'MXN',NULL,4320.00,'2015-01-21','2015-02-04',NULL,NULL,NULL,'2015-01-21','FERROPAK COMERCIAL',NULL),
(7479,798,NULL,5400.00,'MXN',NULL,5400.00,'2015-01-21','2015-02-04',NULL,NULL,NULL,'2015-01-21','FERROPAK COMERCIAL',NULL),
(7480,799,NULL,10368.00,'MXN',NULL,10368.00,'2015-01-21','2015-02-04',NULL,NULL,NULL,'2015-01-21','FERROPAK COMERCIAL',NULL),
(7481,800,NULL,5184.00,'MXN',NULL,5184.00,'2015-01-21','2015-02-04',NULL,NULL,NULL,'2015-01-21','FERROPAK COMERCIAL',NULL),
(7482,801,NULL,5184.00,'MXN',NULL,5184.00,'2015-01-21','2015-02-04',NULL,NULL,NULL,'2015-01-21','FERROPAK COMERCIAL',NULL),
(7483,802,NULL,6120.00,'MXN',NULL,6120.00,'2015-01-21','2015-02-04',NULL,NULL,NULL,'2015-01-21','FERROPAK COMERCIAL',NULL),
(7484,803,NULL,10368.00,'MXN',NULL,10368.00,'2015-01-21','2015-02-04',NULL,NULL,NULL,'2015-01-21','FERROPAK COMERCIAL',NULL),
(7485,804,NULL,5184.00,'MXN',NULL,5184.00,'2015-01-21','2015-02-04',NULL,NULL,NULL,'2015-01-21','FERROPAK COMERCIAL',NULL),
(7486,805,NULL,9923.76,'MXN',NULL,9923.76,'2015-01-21','2015-02-27',NULL,NULL,NULL,'2015-01-21','Ternium México',NULL),
(7487,806,NULL,0.00,'MXN',NULL,0.00,'2014-01-23','2013-02-05',NULL,NULL,NULL,'2014-01-23','CANCELADA',NULL),
(7488,807,NULL,0.00,'MXN',NULL,0.00,'2014-01-23','2013-02-05',NULL,NULL,NULL,'2014-01-23','CANCELADA',NULL),
(7489,808,NULL,0.00,'MXN',NULL,0.00,'2014-01-23','2013-02-05',NULL,NULL,NULL,'2014-01-23','CANCELADA',NULL),
(7490,809,NULL,42850.26,'MXN',NULL,42850.26,'2014-01-23','2015-01-28',NULL,NULL,NULL,'2014-01-23','FRISA FORJADOS',NULL),
(7491,810,NULL,35350.00,'MXN',NULL,35350.00,'2015-01-27','2015-01-30',NULL,NULL,NULL,'2015-01-27','Vesuvius México',NULL),
(7492,811,NULL,0.00,'MXN',NULL,0.00,'2015-01-27','2013-02-05',NULL,NULL,NULL,'2015-01-27','CANCELADA',NULL),
(7493,812,NULL,21840.00,'MXN',NULL,21840.00,'2015-01-27','2015-02-27',NULL,NULL,NULL,'2015-01-27','Ternium México',NULL),
(7494,813,NULL,64638.50,'MXN',NULL,64638.50,'2015-01-29','2015-02-26',NULL,NULL,NULL,'2015-01-29','MAGOTTEAUX ',NULL),
(7495,814,NULL,5184.00,'MXN',NULL,5184.00,'2015-01-30','2015-02-20',NULL,NULL,NULL,'2015-01-30','FERROPAK COMERCIAL',NULL),
(7496,815,NULL,10368.00,'MXN',NULL,10368.00,'2015-01-30','2015-02-20',NULL,NULL,NULL,'2015-01-30','FERROPAK COMERCIAL',NULL),
(7497,816,NULL,6480.00,'MXN',NULL,6480.00,'2015-01-30','2015-02-20',NULL,NULL,NULL,'2015-01-30','FERROPAK COMERCIAL',NULL),
(7498,817,NULL,4320.00,'MXN',NULL,4320.00,'2015-01-30','2015-02-20',NULL,NULL,NULL,'2015-01-30','FERROPAK COMERCIAL',NULL),
(7499,818,NULL,5184.00,'MXN',NULL,5184.00,'2015-01-30','2015-02-20',NULL,NULL,NULL,'2015-01-30','FERROPAK COMERCIAL',NULL),
(7500,819,NULL,6120.00,'MXN',NULL,6120.00,'2015-01-30','2015-02-20',NULL,NULL,NULL,'2015-01-30','FERROPAK COMERCIAL',NULL),
(7501,820,NULL,5184.00,'MXN',NULL,5184.00,'2015-01-30','2015-02-20',NULL,NULL,NULL,'2015-01-30','FERROPAK COMERCIAL',NULL),
(7502,821,NULL,4704.00,'MXN',NULL,4704.00,'2015-02-03','2015-02-20',NULL,NULL,NULL,'2015-02-03','FERROPAK COMERCIAL',NULL),
(7503,822,NULL,30449.60,'MXN',NULL,30449.60,'2015-02-03','2015-03-31',NULL,NULL,NULL,'2015-02-03','Ternium México',NULL),
(7504,823,NULL,1200.00,'MXN',NULL,1200.00,'2015-02-05','2015-05-25',NULL,NULL,NULL,'2015-02-05','SERVICIOS ESPECIALIZADOS DEL NORTE',NULL),
(7505,824,NULL,2100.00,'MXN',NULL,2100.00,'2015-02-09','2015-03-31',NULL,NULL,NULL,'2015-02-09','Ternium México',NULL),
(7506,825,NULL,10368.00,'MXN',NULL,10368.00,'2015-02-09','2015-03-06',NULL,NULL,NULL,'2015-02-09','FERROPAK COMERCIAL',NULL),
(7507,826,NULL,4320.00,'MXN',NULL,4320.00,'2015-02-09','2015-03-06',NULL,NULL,NULL,'2015-02-09','FERROPAK COMERCIAL',NULL),
(7508,827,NULL,8640.00,'MXN',NULL,8640.00,'2015-02-09','2015-03-06',NULL,NULL,NULL,'2015-02-09','FERROPAK COMERCIAL',NULL),
(7509,828,NULL,4320.00,'MXN',NULL,4320.00,'2015-02-09','2015-03-11',NULL,NULL,NULL,'2015-02-09','FERROPAK COMERCIAL',NULL),
(7510,829,NULL,5400.00,'MXN',NULL,5400.00,'2015-02-09','2015-03-11',NULL,NULL,NULL,'2015-02-09','FERROPAK COMERCIAL',NULL),
(7511,830,11,85231.00,'MXN',NULL,85231.00,'2015-02-18','2015-02-18',NULL,NULL,NULL,'2015-02-18','Transportadores Industriales de México',999),
(7512,831,NULL,22840.00,'MXN',NULL,22840.00,'2015-02-18','2015-03-31',NULL,NULL,NULL,'2015-02-18','Ternium México',NULL),
(7513,832,NULL,5184.00,'MXN',NULL,5184.00,'2015-02-23','2015-03-11',NULL,NULL,NULL,'2015-02-23','FERROPAK COMERCIAL',NULL),
(7514,833,NULL,0.00,'MXN',NULL,0.00,'2015-02-23','2013-02-05',NULL,NULL,NULL,'2015-02-23','CANCELADA',NULL),
(7515,834,NULL,6480.00,'MXN',NULL,6480.00,'2015-02-23','2015-03-11',NULL,NULL,NULL,'2015-02-23','FERROPAK COMERCIAL',NULL),
(7516,835,NULL,5184.00,'MXN',NULL,5184.00,'2015-02-23','2015-03-11',NULL,NULL,NULL,'2015-02-23','FERROPAK COMERCIAL',NULL),
(7517,836,NULL,6480.00,'MXN',NULL,6480.00,'2015-02-23','2015-03-11',NULL,NULL,NULL,'2015-02-23','FERROPAK COMERCIAL',NULL),
(7518,837,NULL,5184.00,'MXN',NULL,5184.00,'2015-02-23','2015-03-11',NULL,NULL,NULL,'2015-02-23','FERROPAK COMERCIAL',NULL),
(7519,838,NULL,10368.00,'MXN',NULL,10368.00,'2015-02-23','2015-03-11',NULL,NULL,NULL,'2015-02-23','FERROPAK COMERCIAL',NULL),
(7520,839,NULL,8755.25,'MXN',NULL,8755.25,'2015-02-24','2015-04-15',NULL,NULL,NULL,'2015-02-24','FRISA FORJADOS',NULL),
(7521,840,NULL,68098.71,'MXN',NULL,68098.71,'2015-02-24','2015-03-20',NULL,NULL,NULL,'2015-02-24','MAGOTTEAUX ',NULL),
(7522,841,NULL,10368.00,'MXN',NULL,10368.00,'2015-02-24','2015-03-11',NULL,NULL,NULL,'2015-02-24','FERROPAK COMERCIAL',NULL),
(7523,842,NULL,5184.00,'MXN',NULL,5184.00,'2015-02-24','2015-03-11',NULL,NULL,NULL,'2015-02-24','FERROPAK COMERCIAL',NULL),
(7524,843,NULL,0.00,'MXN',NULL,0.00,'2015-02-26','2013-02-05',NULL,NULL,NULL,'2015-02-26','CANCELADA',NULL),
(7525,844,NULL,0.00,'MXN',NULL,0.00,'2015-02-26','2013-02-05',NULL,NULL,NULL,'2015-02-26','CANCELADA',NULL),
(7526,845,NULL,0.00,'MXN',NULL,0.00,'2015-02-26','2013-02-05',NULL,NULL,NULL,'2015-02-26','CANCELADA',NULL),
(7527,846,NULL,19029.51,'MXN',NULL,19029.51,'2015-02-26','2015-04-15',NULL,NULL,NULL,'2015-02-26','FRISA FORJADOS',NULL),
(7528,847,NULL,9193.05,'MXN',NULL,9193.05,'2015-02-26','2015-04-15',NULL,NULL,NULL,'2015-02-26','FRISA FORJADOS',NULL),
(7529,848,NULL,43663.97,'MXN',NULL,43663.97,'2015-03-02','2015-05-15',NULL,NULL,NULL,'2015-03-02','FRISA FORJADOS',NULL),
(7530,849,NULL,22867.42,'MXN',NULL,22867.42,'2015-03-02','2015-05-15',NULL,NULL,NULL,'2015-03-02','FRISA FORJADOS',NULL),
(7531,850,NULL,8500.00,'MXN',NULL,8500.00,'2015-03-02','2015-04-30',NULL,NULL,NULL,'2015-03-02','Ternium México',NULL),
(7532,851,NULL,22795.26,'MXN',NULL,22795.26,'2015-03-02','2015-04-30',NULL,NULL,NULL,'2015-03-02','Ternium México',NULL),
(7533,852,NULL,35350.00,'MXN',NULL,35350.00,'2015-03-03','2015-03-13',NULL,NULL,NULL,'2015-03-03','Vesuvius México',NULL),
(7534,853,NULL,2052.00,'MXN',NULL,2052.00,'2015-03-03','2015-03-25',NULL,NULL,NULL,'2015-03-03','FERROPAK COMERCIAL',NULL),
(7535,854,NULL,10368.00,'MXN',NULL,10368.00,'2015-03-03','2015-03-25',NULL,NULL,NULL,'2015-03-03','FERROPAK COMERCIAL',NULL),
(7536,855,NULL,6480.00,'MXN',NULL,6480.00,'2015-03-03','2015-03-25',NULL,NULL,NULL,'2015-03-03','FERROPAK COMERCIAL',NULL),
(7537,856,NULL,5184.00,'MXN',NULL,5184.00,'2015-03-03','2015-03-25',NULL,NULL,NULL,'2015-03-03','FERROPAK COMERCIAL',NULL),
(7538,857,NULL,0.00,'MXN',NULL,0.00,'2015-03-04','2013-02-05',NULL,NULL,NULL,'2015-03-04','CANCELADA',NULL),
(7539,858,NULL,0.00,'MXN',NULL,0.00,'2015-03-04','2013-02-05',NULL,NULL,NULL,'2015-03-04','CANCELADA',NULL),
(7540,859,NULL,0.00,'MXN',NULL,0.00,'2015-03-04','2013-02-05',NULL,NULL,NULL,'2015-03-04','CANCELADA',NULL),
(7541,860,NULL,0.00,'MXN',NULL,0.00,'2015-03-04','2013-02-05',NULL,NULL,NULL,'2015-03-04','CANCELADA',NULL),
(7542,861,NULL,0.00,'MXN',NULL,0.00,'2015-03-04','2013-02-05',NULL,NULL,NULL,'2015-03-04','CANCELADA',NULL),
(7543,862,NULL,13335.32,'MXN',NULL,13335.32,'2015-03-04','2015-05-15',NULL,NULL,NULL,'2015-03-04','FRISA FORJADOS',NULL),
(7544,863,NULL,85064.00,'MXN',NULL,85064.00,'2015-03-06','2015-03-06',NULL,NULL,NULL,'2015-03-06','SERVICIOS INDUSTRIALES DE MONTERREY ',NULL),
(7545,864,NULL,10368.00,'MXN',NULL,10368.00,'2015-03-06','2015-04-01',NULL,NULL,NULL,'2015-03-06','FERROPAK COMERCIAL',NULL),
(7546,865,NULL,6480.00,'MXN',NULL,6480.00,'2015-03-06','2015-04-01',NULL,NULL,NULL,'2015-03-06','FERROPAK COMERCIAL',NULL),
(7547,866,NULL,5184.00,'MXN',NULL,5184.00,'2015-03-06','2015-04-01',NULL,NULL,NULL,'2015-03-06','FERROPAK COMERCIAL',NULL),
(7548,867,NULL,38967.26,'MXN',NULL,38967.26,'2015-03-11','2015-05-15',NULL,NULL,NULL,'2015-03-11','FRISA FORJADOS',NULL),
(7549,868,NULL,162706.07,'MXN',NULL,162706.07,'2015-03-13','2015-03-31',NULL,NULL,NULL,'2015-03-13','Ternium México',NULL),
(7550,869,NULL,85264.20,'MXN',NULL,85264.20,'2015-03-17','2015-04-30',NULL,NULL,NULL,'2015-03-17','Ternium México',NULL),
(7551,870,NULL,45193.30,'MXN',NULL,45193.30,'2015-03-17','2015-04-30',NULL,NULL,NULL,'2015-03-17','Ternium México',NULL),
(7552,871,NULL,1914.00,'MXN',NULL,1914.00,'2015-03-18','2015-04-30',NULL,NULL,NULL,'2015-03-18','Ternium México',NULL),
(7553,872,NULL,47306.00,'MXN',NULL,47306.00,'2015-03-19','2015-03-20',NULL,NULL,NULL,'2015-03-19','SERVICIOS INDUSTRIALES DE MONTERREY ',NULL),
(7554,873,NULL,11520.00,'MXN',NULL,11520.00,'2015-03-25','2015-04-29',NULL,NULL,NULL,'2015-03-25','FERROPAK COMERCIAL',NULL),
(7555,874,NULL,9504.00,'MXN',NULL,9504.00,'2015-03-25','2015-04-29',NULL,NULL,NULL,'2015-03-25','FERROPAK COMERCIAL',NULL),
(7556,875,NULL,4320.00,'MXN',NULL,4320.00,'2015-03-25','2015-04-15',NULL,NULL,NULL,'2015-03-25','FERROPAK COMERCIAL',NULL),
(7557,876,NULL,10368.00,'MXN',NULL,10368.00,'2015-03-25','2015-04-15',NULL,NULL,NULL,'2015-03-25','FERROPAK COMERCIAL',NULL),
(7558,877,NULL,4320.00,'MXN',NULL,4320.00,'2015-03-25','2015-04-15',NULL,NULL,NULL,'2015-03-25','FERROPAK COMERCIAL',NULL),
(7559,878,NULL,8640.00,'MXN',NULL,8640.00,'2015-03-25','2015-04-15',NULL,NULL,NULL,'2015-03-25','FERROPAK COMERCIAL',NULL),
(7560,879,NULL,11058.82,'MXN',NULL,11058.82,'2015-03-25','2015-05-15',NULL,NULL,NULL,'2015-03-25','FRISA FORJADOS',NULL),
(7561,880,NULL,18298.88,'MXN',NULL,18298.88,'2015-03-27','2015-05-15',NULL,NULL,NULL,'2015-03-27','FRISA FORJADOS',NULL),
(7562,881,NULL,0.00,'MXN',NULL,0.00,'2015-03-27','2013-02-05',NULL,NULL,NULL,'2015-03-27','CANCELADA',NULL),
(7563,882,NULL,60641.22,'MXN',NULL,60641.22,'2015-03-27','2015-04-30',NULL,NULL,NULL,'2015-03-27','Ternium México',NULL),
(7564,883,NULL,10368.00,'MXN',NULL,10368.00,'2015-03-30','2015-04-29',NULL,NULL,NULL,'2015-03-30','FERROPAK COMERCIAL',NULL),
(7565,884,NULL,5184.00,'MXN',NULL,5184.00,'2015-03-30','2015-04-29',NULL,NULL,NULL,'2015-03-30','FERROPAK COMERCIAL',NULL),
(7566,885,NULL,5184.00,'MXN',NULL,5184.00,'2015-03-30','2015-04-29',NULL,NULL,NULL,'2015-03-30','FERROPAK COMERCIAL',NULL),
(7567,886,NULL,6480.00,'MXN',NULL,6480.00,'2015-03-30','2015-04-29',NULL,NULL,NULL,'2015-03-30','FERROPAK COMERCIAL',NULL),
(7568,887,NULL,0.00,'MXN',NULL,0.00,'2015-03-30','2013-02-05',NULL,NULL,NULL,'2015-03-30','CANCELADA',NULL),
(7569,888,NULL,447385.00,'MXN',NULL,447385.00,'2015-03-30','2015-03-30',NULL,NULL,NULL,'2015-03-30','DESARROLLO ORGANIZACIONAL REGIOMONTANO ',NULL),
(7570,889,NULL,85065.00,'MXN',NULL,85065.00,'2015-04-01','2015-04-01',NULL,NULL,NULL,'2015-04-01','SERVICIOS INDUSTRIALES DE MONTERREY ',NULL),
(7571,890,NULL,81200.00,'MXN',NULL,81200.00,'2015-04-08','2015-04-28',NULL,NULL,NULL,'2015-04-08','MAGOTTEAUX ',NULL),
(7572,891,NULL,0.00,'MXN',NULL,0.00,'2015-04-13','2013-02-05',NULL,NULL,NULL,'2015-04-13','CANCELADA',NULL),
(7573,892,NULL,0.00,'MXN',NULL,0.00,'2015-04-13','2013-02-05',NULL,NULL,NULL,'2015-04-13','CANCELADA',NULL),
(7574,893,NULL,0.00,'MXN',NULL,0.00,'2015-04-13','2013-02-05',NULL,NULL,NULL,'2015-04-13','CANCELADA',NULL),
(7575,894,NULL,0.00,'MXN',NULL,0.00,'2015-04-13','2013-02-05',NULL,NULL,NULL,'2015-04-13','CANCELADA',NULL),
(7576,895,NULL,146815.26,'MXN',NULL,146815.26,'2015-04-13','2015-05-15',NULL,NULL,NULL,'2015-04-13','FRISA FORJADOS',NULL),
(7577,896,NULL,12960.00,'MXN',NULL,12960.00,'2015-04-15','2015-05-13',NULL,NULL,NULL,'2015-04-15','FERROPAK COMERCIAL',NULL),
(7578,897,NULL,10368.00,'MXN',NULL,10368.00,'2015-04-15','2015-05-13',NULL,NULL,NULL,'2015-04-15','FERROPAK COMERCIAL',NULL),
(7579,898,NULL,5184.00,'MXN',NULL,5184.00,'2015-04-15','2015-05-13',NULL,NULL,NULL,'2015-04-15','FERROPAK COMERCIAL',NULL),
(7580,899,NULL,5184.00,'MXN',NULL,5184.00,'2015-04-15','2015-05-13',NULL,NULL,NULL,'2015-04-15','FERROPAK COMERCIAL',NULL),
(7581,900,NULL,5184.00,'MXN',NULL,5184.00,'2015-04-15','2015-05-13',NULL,NULL,NULL,'2015-04-15','FERROPAK COMERCIAL',NULL),
(7582,901,NULL,5184.00,'MXN',NULL,5184.00,'2015-04-15','2015-05-13',NULL,NULL,NULL,'2015-04-15','FERROPAK COMERCIAL',NULL),
(7583,902,NULL,35350.00,'MXN',NULL,35350.00,'2015-04-17','2015-05-22',NULL,NULL,NULL,'2015-04-17','Vesuvius México',NULL),
(7584,903,NULL,54532.75,'MXN',NULL,54532.75,'2015-04-20','2015-06-15',NULL,NULL,NULL,'2015-04-20','FRISA FORJADOS',NULL),
(7585,904,NULL,16350.00,'MXN',NULL,16350.00,'2015-04-22','2015-07-08',NULL,NULL,NULL,'2015-04-22','HARSCO METALS DE MEXICO',NULL),
(7586,905,NULL,6480.00,'MXN',NULL,6480.00,'2015-04-23','2015-05-13',NULL,NULL,NULL,'2015-04-23','FERROPAK COMERCIAL',NULL),
(7587,906,NULL,8303.65,'MXN',NULL,8303.65,'2015-04-23','2015-06-15',NULL,NULL,NULL,'2015-04-23','FRISA FORJADOS',NULL),
(7588,907,NULL,2592.00,'MXN',NULL,2592.00,'2015-04-23','2015-05-13',NULL,NULL,NULL,'2015-04-23','FERROPAK COMERCIAL',NULL),
(7589,908,NULL,5184.00,'MXN',NULL,5184.00,'2015-04-23','2015-05-13',NULL,NULL,NULL,'2015-04-23','FERROPAK COMERCIAL',NULL),
(7590,909,NULL,5184.00,'MXN',NULL,5184.00,'2015-04-23','2015-05-13',NULL,NULL,NULL,'2015-04-23','FERROPAK COMERCIAL',NULL),
(7591,910,NULL,6480.00,'MXN',NULL,6480.00,'2015-04-23','2015-05-13',NULL,NULL,NULL,'2015-04-23','FERROPAK COMERCIAL',NULL),
(7592,911,NULL,121931.72,'MXN',NULL,121931.72,'2015-04-23','2015-05-15',NULL,NULL,NULL,'2015-04-23','FRISA FORJADOS',NULL),
(7593,912,NULL,5184.00,'MXN',NULL,5184.00,'2015-04-23','2015-05-13',NULL,NULL,NULL,'2015-04-23','FERROPAK COMERCIAL',NULL),
(7594,913,NULL,5184.00,'MXN',NULL,5184.00,'2015-04-23','2015-05-13',NULL,NULL,NULL,'2015-04-23','FERROPAK COMERCIAL',NULL),
(7595,914,NULL,0.00,'MXN',NULL,0.00,'2015-04-27','2013-02-05',NULL,NULL,NULL,'2015-04-27','CANCELADA',NULL),
(7596,915,NULL,0.00,'MXN',NULL,0.00,'2015-04-27','2013-02-05',NULL,NULL,NULL,'2015-04-27','CANCELADA',NULL),
(7597,916,NULL,0.00,'MXN',NULL,0.00,'2015-04-27','2013-02-05',NULL,NULL,NULL,'2015-04-27','CANCELADA',NULL),
(7598,917,NULL,0.00,'MXN',NULL,0.00,'2015-04-27','2013-02-05',NULL,NULL,NULL,'2015-04-27','CANCELADA',NULL),
(7599,918,NULL,0.00,'MXN',NULL,0.00,'2015-04-27','2013-02-05',NULL,NULL,NULL,'2015-04-27','CANCELADA',NULL),
(7600,919,NULL,64052.73,'MXN',NULL,64052.73,'2015-04-27','2015-06-15',NULL,NULL,NULL,'2015-04-27','FRISA FORJADOS',NULL),
(7601,920,NULL,31561.81,'MXN',NULL,31561.81,'2015-04-27','2015-06-15',NULL,NULL,NULL,'2015-04-27','FRISA FORJADOS',NULL),
(7602,921,NULL,64243.24,'MXN',NULL,64243.24,'2015-04-29','2015-06-15',NULL,NULL,NULL,'2015-04-29','FRISA FORJADOS',NULL),
(7603,922,NULL,6591.75,'MXN',NULL,6591.75,'2015-04-30','2015-06-15',NULL,NULL,NULL,'2015-04-30','FRISA FORJADOS',NULL),
(7604,923,NULL,112680.00,'MXN',NULL,112680.00,'2015-05-04','2015-06-30',NULL,NULL,NULL,'2015-05-04','Ternium México',NULL),
(7605,924,NULL,57050.86,'MXN',NULL,57050.86,'2015-05-04','2015-05-29',NULL,NULL,NULL,'2015-05-04','Ternium México',NULL),
(7606,925,NULL,69810.00,'MXN',NULL,69810.00,'2015-05-04','2015-07-20',NULL,NULL,NULL,'2015-05-04','HARSCO METALS DE MEXICO',NULL),
(7607,926,NULL,5000.00,'MXN',NULL,5000.00,'2015-05-08','2015-05-22',NULL,NULL,NULL,'2015-05-08','Vesuvius México',NULL),
(7608,927,NULL,45010.00,'MXN',NULL,45010.00,'2015-05-08','2015-07-20',NULL,NULL,NULL,'2015-05-08','HARSCO METALS DE MEXICO',NULL),
(7609,928,NULL,33569.48,'MXN',NULL,33569.48,'2015-05-08','2015-07-15',NULL,NULL,NULL,'2015-05-08','FRISA FORJADOS',NULL),
(7610,929,NULL,0.00,'MXN',NULL,0.00,'2015-05-11','2013-02-05',NULL,NULL,NULL,'2015-05-11','CANCELADA',NULL),
(7611,930,NULL,5184.00,'MXN',NULL,5184.00,'2015-05-11','2015-06-03',NULL,NULL,NULL,'2015-05-11','FERROPAK COMERCIAL',NULL),
(7612,931,NULL,6480.00,'MXN',NULL,6480.00,'2015-05-11','2015-06-03',NULL,NULL,NULL,'2015-05-11','FERROPAK COMERCIAL',NULL),
(7613,932,NULL,0.00,'MXN',NULL,0.00,'2015-05-11','2013-02-05',NULL,NULL,NULL,'2015-05-11','CANCELADA',NULL),
(7614,933,NULL,864.00,'MXN',NULL,864.00,'2015-05-11','2015-06-03',NULL,NULL,NULL,'2015-05-11','FERROPAK COMERCIAL',NULL),
(7615,934,NULL,6480.00,'MXN',NULL,6480.00,'2015-05-11','2015-06-03',NULL,NULL,NULL,'2015-05-11','FERROPAK COMERCIAL',NULL),
(7616,935,NULL,12297.85,'MXN',NULL,12297.85,'2015-05-11','2015-07-15',NULL,NULL,NULL,'2015-05-11','FRISA FORJADOS',NULL),
(7617,936,NULL,127813.87,'MXN',NULL,127813.87,'2015-05-15','2015-05-29',NULL,NULL,NULL,'2015-05-15','Ternium México',NULL),
(7618,937,NULL,35350.00,'MXN',NULL,35350.00,'2015-05-18','2015-05-22',NULL,NULL,NULL,'2015-05-18','Vesuvius México',NULL),
(7619,938,NULL,6048.00,'MXN',NULL,6048.00,'2015-05-18','2015-07-01',NULL,NULL,NULL,'2015-05-18','FERROPAK COMERCIAL',NULL),
(7620,939,NULL,8640.00,'MXN',NULL,8640.00,'2015-05-18','2015-07-01',NULL,NULL,NULL,'2015-05-18','FERROPAK COMERCIAL',NULL),
(7621,940,NULL,128924.21,'MXN',NULL,128924.21,'2015-05-22','2015-06-30',NULL,NULL,NULL,'2015-05-22','Ternium México',NULL),
(7622,941,NULL,95578.03,'MXN',NULL,95578.03,'2015-05-22','2015-07-15',NULL,NULL,NULL,'2015-05-22','FRISA FORJADOS',NULL),
(7623,942,NULL,9504.00,'MXN',NULL,9504.00,'2015-05-26','2015-07-01',NULL,NULL,NULL,'2015-05-26','FERROPAK COMERCIAL',NULL),
(7624,943,NULL,10368.00,'MXN',NULL,10368.00,'2015-05-26','2015-07-01',NULL,NULL,NULL,'2015-05-26','FERROPAK COMERCIAL',NULL),
(7625,944,NULL,6480.00,'MXN',NULL,6480.00,'2015-05-26','2015-07-01',NULL,NULL,NULL,'2015-05-26','FERROPAK COMERCIAL',NULL),
(7626,945,NULL,6480.00,'MXN',NULL,6480.00,'2015-05-26','2015-07-01',NULL,NULL,NULL,'2015-05-26','FERROPAK COMERCIAL',NULL),
(7627,946,NULL,60595.25,'MXN',NULL,60595.25,'2015-05-28','2015-07-15',NULL,NULL,NULL,'2015-05-28','FRISA FORJADOS',NULL),
(7628,947,NULL,4562.49,'MXN',NULL,4562.49,'2015-05-29','2015-07-15',NULL,NULL,NULL,'2015-05-29','FRISA FORJADOS',NULL),
(7629,948,NULL,32124.06,'MXN',NULL,32124.06,'2015-06-02','2015-08-14',NULL,NULL,NULL,'2015-06-02','FRISA FORJADOS',NULL),
(7630,949,NULL,110740.78,'MXN',NULL,110740.78,'2015-06-03','2015-05-25',NULL,NULL,NULL,'2015-06-03','SERVICIOS INDUSTRIALES DE MONTERREY ',NULL),
(7631,950,NULL,106311.15,'MXN',NULL,106311.15,'2015-06-03','2015-05-25',NULL,NULL,NULL,'2015-06-03','SERVICIOS INDUSTRIALES DE MONTERREY ',NULL),
(7632,951,NULL,21000.00,'MXN',NULL,21000.00,'2015-06-04','2015-09-07',NULL,NULL,NULL,'2015-06-04','HARSCO METALS DE MEXICO',NULL),
(7633,952,NULL,0.00,'MXN',NULL,0.00,'2015-06-05','2013-02-05',NULL,NULL,NULL,'2015-06-05','CANCELADA',NULL),
(7634,953,NULL,35981.92,'MXN',NULL,35981.92,'2015-06-05','2015-08-14',NULL,NULL,NULL,'2015-06-05','FRISA FORJADOS',NULL),
(7635,954,NULL,14660.66,'MXN',NULL,14660.66,'2015-06-10','2015-08-14',NULL,NULL,NULL,'2015-06-10','FRISA FORJADOS',NULL),
(7636,955,NULL,10368.00,'MXN',NULL,10368.00,'2015-06-10','2015-07-08',NULL,NULL,NULL,'2015-06-10','FERROPAK COMERCIAL',NULL),
(7637,956,NULL,6480.00,'MXN',NULL,6480.00,'2015-06-10','2015-07-01',NULL,NULL,NULL,'2015-06-10','FERROPAK COMERCIAL',NULL),
(7638,957,NULL,10368.00,'MXN',NULL,10368.00,'2015-06-10','2015-07-08',NULL,NULL,NULL,'2015-06-10','FERROPAK COMERCIAL',NULL),
(7639,958,NULL,6480.00,'MXN',NULL,6480.00,'2015-06-10','2015-07-01',NULL,NULL,NULL,'2015-06-10','FERROPAK COMERCIAL',NULL),
(7640,959,NULL,0.00,'MXN',NULL,0.00,'2015-06-19','2013-02-05',NULL,NULL,NULL,'2015-06-19','CANCELADA',NULL),
(7641,960,NULL,0.00,'MXN',NULL,0.00,'2015-06-19','2013-02-05',NULL,NULL,NULL,'2015-06-19','CANCELADA',NULL),
(7642,961,NULL,0.00,'MXN',NULL,0.00,'2015-06-19','2013-02-05',NULL,NULL,NULL,'2015-06-19','CANCELADA',NULL),
(7643,962,NULL,0.00,'MXN',NULL,0.00,'2015-06-19','2013-02-05',NULL,NULL,NULL,'2015-06-19','CANCELADA',NULL),
(7644,963,NULL,0.00,'MXN',NULL,0.00,'2015-06-19','2013-02-05',NULL,NULL,NULL,'2015-06-19','CANCELADA',NULL),
(7645,964,NULL,24190.92,'MXN',NULL,24190.92,'2015-06-19','2015-08-14',NULL,NULL,NULL,'2015-06-19','FRISA FORJADOS',NULL),
(7646,965,NULL,41284.36,'MXN',NULL,41284.36,'2015-06-23','2015-08-14',NULL,NULL,NULL,'2015-06-23','FRISA FORJADOS',NULL),
(7647,966,NULL,20580.00,'MXN',NULL,20580.00,'2015-06-25','2015-06-25',NULL,NULL,NULL,'2015-06-25','PROYECTOS INDUSTRIALES EDALCA',NULL),
(7648,967,NULL,10368.00,'MXN',NULL,10368.00,'2015-06-26','2015-07-22',NULL,NULL,NULL,'2015-06-26','FERROPAK COMERCIAL',NULL),
(7649,968,NULL,6480.00,'MXN',NULL,6480.00,'2015-06-26','2015-07-22',NULL,NULL,NULL,'2015-06-26','FERROPAK COMERCIAL',NULL),
(7650,969,NULL,10368.00,'MXN',NULL,10368.00,'2015-06-26','2015-07-22',NULL,NULL,NULL,'2015-06-26','FERROPAK COMERCIAL',NULL),
(7651,970,NULL,6480.00,'MXN',NULL,6480.00,'2015-06-26','2015-07-22',NULL,NULL,NULL,'2015-06-26','FERROPAK COMERCIAL',NULL),
(7652,971,NULL,0.00,'MXN',NULL,0.00,'2015-06-26','2013-02-05',NULL,NULL,NULL,'2015-06-26','CANCELADA',NULL),
(7653,972,NULL,31628.64,'MXN',NULL,31628.64,'2015-06-26','2015-08-14',NULL,NULL,NULL,'2015-06-26','FRISA FORJADOS',NULL),
(7654,973,11,71157.00,'MXN',NULL,71157.00,'2015-06-29','2015-06-29',NULL,NULL,NULL,'2015-06-29','Transportadores Industriales de México',999),
(7655,974,11,61573.00,'MXN',NULL,61573.00,'2015-06-29','2015-06-29',NULL,NULL,NULL,'2015-06-29','Transportadores Industriales de México',999),
(7656,975,11,60237.00,'MXN',NULL,60237.00,'2015-06-29','2015-06-29',NULL,NULL,NULL,'2015-06-29','Transportadores Industriales de México',999),
(7657,976,NULL,0.00,'MXN',NULL,0.00,'2015-06-29','2013-02-05',NULL,NULL,NULL,'2015-06-29','CANCELADA',NULL),
(7658,977,NULL,20238.10,'MXN',NULL,20238.10,'2015-06-30','2015-08-14',NULL,NULL,NULL,'2015-06-30','FRISA FORJADOS',NULL),
(7659,978,NULL,7281.47,'MXN',NULL,7281.47,'2015-07-01','2015-08-14',NULL,NULL,NULL,'2015-07-01','FRISA FORJADOS',NULL),
(7660,979,NULL,0.00,'MXN',NULL,0.00,'2015-07-01','2013-02-05',NULL,NULL,NULL,'2015-07-01','CANCELADA',NULL),
(7661,980,NULL,0.00,'MXN',NULL,0.00,'2015-07-02','2013-02-05',NULL,NULL,NULL,'2015-07-02','CANCELADA',NULL),
(7662,981,NULL,10368.00,'MXN',NULL,10368.00,'2015-07-02','2015-07-22',NULL,NULL,NULL,'2015-07-02','FERROPAK COMERCIAL',NULL),
(7663,982,NULL,6480.00,'MXN',NULL,6480.00,'2015-07-02','2015-07-22',NULL,NULL,NULL,'2015-07-02','FERROPAK COMERCIAL',NULL),
(7664,983,NULL,4500.00,'MXN',NULL,4500.00,'2015-07-06','2015-09-21',NULL,NULL,NULL,'2015-07-06','HARSCO METALS DE MEXICO',NULL),
(7665,984,NULL,3569.76,'MXN',NULL,3569.76,'2015-07-06','2015-08-12',NULL,NULL,NULL,'2015-07-06','FERROPAK COMERCIAL',NULL),
(7666,985,NULL,8160.00,'MXN',NULL,8160.00,'2015-07-14','2015-08-31',NULL,NULL,NULL,'2015-07-14','Ternium México',NULL),
(7667,986,NULL,1800.00,'MXN',NULL,1800.00,'2015-07-15','2015-07-30',NULL,NULL,NULL,'2015-07-15','Ternium México',NULL),
(7668,987,NULL,39873.96,'MXN',NULL,39873.96,'2015-07-15','2015-09-15',NULL,NULL,NULL,'2015-07-15','FRISA FORJADOS',NULL),
(7669,988,NULL,15500.00,'MXN',NULL,15500.00,'2015-07-15','2015-08-31',NULL,NULL,NULL,'2015-07-15','Ternium México',NULL),
(7670,989,NULL,1602.00,'MXN',NULL,1602.00,'2015-07-15','2015-08-31',NULL,NULL,NULL,'2015-07-15','Ternium México',NULL),
(7671,990,NULL,38224.16,'MXN',NULL,38224.16,'2015-07-20','2015-08-31',NULL,NULL,NULL,'2015-07-20','Ternium México',NULL),
(7672,991,NULL,8249.18,'MXN',NULL,8249.18,'2015-07-20','2015-08-31',NULL,NULL,NULL,'2015-07-20','Ternium México',NULL),
(7673,992,NULL,6480.00,'MXN',NULL,6480.00,'2015-07-20','2015-08-19',NULL,NULL,NULL,'2015-07-20','FERROPAK COMERCIAL',NULL),
(7674,993,NULL,6941.20,'MXN',NULL,6941.20,'2015-07-20','2015-08-12',NULL,NULL,NULL,'2015-07-20','FERROPAK COMERCIAL',NULL),
(7675,994,NULL,9504.00,'MXN',NULL,9504.00,'2015-07-20','2015-08-12',NULL,NULL,NULL,'2015-07-20','FERROPAK COMERCIAL',NULL),
(7676,995,NULL,6480.00,'MXN',NULL,6480.00,'2015-07-20','2015-08-19',NULL,NULL,NULL,'2015-07-20','FERROPAK COMERCIAL',NULL),
(7677,996,NULL,10368.00,'MXN',NULL,10368.00,'2015-07-20','2015-08-12',NULL,NULL,NULL,'2015-07-20','FERROPAK COMERCIAL',NULL),
(7678,997,NULL,5552.96,'MXN',NULL,5552.96,'2015-07-20','2015-08-12',NULL,NULL,NULL,'2015-07-20','FERROPAK COMERCIAL',NULL),
(7679,998,NULL,27770.27,'MXN',NULL,27770.27,'2015-07-20','2015-09-15',NULL,NULL,NULL,'2015-07-20','FRISA FORJADOS',NULL),
(7680,999,NULL,35328.00,'MXN',NULL,35328.00,'2015-07-21','2015-07-24',NULL,NULL,NULL,'2015-07-21','PROYECTOS INDUSTRIALES EDALCA',NULL),
(7681,1000,NULL,13600.00,'MXN',NULL,13600.00,'2015-07-24','2015-08-31',NULL,NULL,NULL,'2015-07-24','Ternium México',NULL),
(7682,1001,NULL,45600.00,'MXN',NULL,45600.00,'2015-07-27','2015-10-12',NULL,NULL,NULL,'2015-07-27','HARSCO METALS DE MEXICO',NULL),
(7683,1002,NULL,2379.84,'MXN',NULL,2379.84,'2015-07-28','2015-08-19',NULL,NULL,NULL,'2015-07-28','FERROPAK COMERCIAL',NULL),
(7684,1003,NULL,10368.00,'MXN',NULL,10368.00,'2015-07-28','2015-08-19',NULL,NULL,NULL,'2015-07-28','FERROPAK COMERCIAL',NULL),
(7685,1004,NULL,6480.00,'MXN',NULL,6480.00,'2015-07-28','2015-08-19',NULL,NULL,NULL,'2015-07-28','FERROPAK COMERCIAL',NULL),
(7686,1005,NULL,46636.79,'MXN',NULL,46636.79,'2015-07-28','2015-09-15',NULL,NULL,NULL,'2015-07-28','FRISA FORJADOS',NULL),
(7687,1006,NULL,10368.00,'MXN',NULL,10368.00,'2015-07-28','2015-08-19',NULL,NULL,NULL,'2015-07-28','FERROPAK COMERCIAL',NULL),
(7688,1007,NULL,5400.00,'MXN',NULL,5400.00,'2015-07-28','2015-08-19',NULL,NULL,NULL,'2015-07-28','FERROPAK COMERCIAL',NULL),
(7689,1008,NULL,60297.84,'MXN',NULL,60297.84,'2015-07-29','2015-09-15',NULL,NULL,NULL,'2015-07-29','FRISA FORJADOS',NULL),
(7690,1009,NULL,57500.00,'MXN',NULL,57500.00,'2015-07-29','2015-08-31',NULL,NULL,NULL,'2015-07-29','Ternium México',NULL),
(7691,1010,NULL,0.00,'MXN',NULL,0.00,NULL,'2025-05-26',NULL,NULL,'43724.00 QUIEBRA',NULL,NULL,NULL),
(7692,1011,NULL,10920.00,'MXN',NULL,10920.00,'2015-07-30','2015-08-31',NULL,NULL,NULL,'2015-07-30','Ternium México',NULL),
(7693,1012,11,67634.00,'MXN',NULL,67634.00,'2015-07-30','2015-07-30',NULL,NULL,NULL,'2015-07-30','Transportadores Industriales de México',999),
(7694,1013,11,56744.00,'MXN',NULL,56744.00,'2015-07-30','2015-07-30',NULL,NULL,NULL,'2015-07-30','Transportadores Industriales de México',999),
(7695,1014,11,53445.64,'MXN',NULL,53445.64,'2015-07-30','2015-07-30',NULL,NULL,NULL,'2015-07-30','Transportadores Industriales de México',999),
(7696,1015,NULL,0.00,'MXN',NULL,0.00,'2015-07-31','2013-02-05',NULL,NULL,NULL,'2015-07-31','CANCELADA',NULL),
(7697,1016,NULL,11655.19,'MXN',NULL,11655.19,'2015-07-31','2015-09-15',NULL,NULL,NULL,'2015-07-31','FRISA FORJADOS',NULL),
(7698,1017,NULL,10368.00,'MXN',NULL,10368.00,'2015-08-05','2015-09-09',NULL,NULL,NULL,'2015-08-05','FERROPAK COMERCIAL',NULL),
(7699,1018,NULL,6480.00,'MXN',NULL,6480.00,'2015-08-05','2015-09-09',NULL,NULL,NULL,'2015-08-05','FERROPAK COMERCIAL',NULL),
(7700,1019,NULL,4800.00,'MXN',NULL,4800.00,'2015-08-11','2015-11-05',NULL,NULL,NULL,'2015-08-11','HARSCO METALS DE MEXICO',NULL),
(7701,1020,NULL,20450.00,'MXN',NULL,20450.00,'2015-08-11','2015-11-05',NULL,NULL,NULL,'2015-08-11','HARSCO METALS DE MEXICO',NULL),
(7702,1021,NULL,49018.46,'MXN',NULL,49018.46,'2015-08-17','2015-10-15',NULL,NULL,NULL,'2015-08-17','FRISA FORJADOS',NULL),
(7703,1022,NULL,23645.92,'MXN',NULL,23645.92,'2015-08-18','2015-10-15',NULL,NULL,NULL,'2015-08-18','FRISA FORJADOS',NULL),
(7704,1023,NULL,10368.00,'MXN',NULL,10368.00,'2015-08-19','2015-09-09',NULL,NULL,NULL,'2015-08-19','FERROPAK COMERCIAL',NULL),
(7705,1024,NULL,6480.00,'MXN',NULL,6480.00,'2015-08-19','2015-09-09',NULL,NULL,NULL,'2015-08-19','FERROPAK COMERCIAL',NULL),
(7706,1025,NULL,10368.00,'MXN',NULL,10368.00,'2015-08-19','2015-09-09',NULL,NULL,NULL,'2015-08-19','FERROPAK COMERCIAL',NULL),
(7707,1026,NULL,6480.00,'MXN',NULL,6480.00,'2015-08-19','2015-09-09',NULL,NULL,NULL,'2015-08-19','FERROPAK COMERCIAL',NULL),
(7708,1027,NULL,0.00,'MXN',NULL,0.00,'2015-08-21','2013-02-05',NULL,NULL,NULL,'2015-08-21','CANCELADA',NULL),
(7709,1028,NULL,0.00,'MXN',NULL,0.00,'2015-08-21','2013-02-05',NULL,NULL,NULL,'2015-08-21','CANCELADA',NULL),
(7710,1029,NULL,0.00,'MXN',NULL,0.00,'2015-08-21','2013-02-05',NULL,NULL,NULL,'2015-08-21','CANCELADA',NULL),
(7711,1030,NULL,0.00,'MXN',NULL,0.00,'2015-08-21','2013-02-05',NULL,NULL,NULL,'2015-08-21','CANCELADA',NULL),
(7712,1031,NULL,0.00,'MXN',NULL,0.00,'2015-08-21','2013-02-05',NULL,NULL,NULL,'2015-08-21','CANCELADA',NULL),
(7713,1032,NULL,0.00,'MXN',NULL,0.00,'2015-08-21','2013-02-05',NULL,NULL,NULL,'2015-08-21','CANCELADA',NULL),
(7714,1033,NULL,0.00,'MXN',NULL,0.00,'2015-08-21','2013-02-05',NULL,NULL,NULL,'2015-08-21','CANCELADA',NULL),
(7715,1034,NULL,0.00,'MXN',NULL,0.00,'2015-08-21','2013-02-05',NULL,NULL,NULL,'2015-08-21','CANCELADA',NULL),
(7716,1035,NULL,0.00,'MXN',NULL,0.00,'2015-08-21','2013-02-05',NULL,NULL,NULL,'2015-08-21','CANCELADA',NULL),
(7717,1036,NULL,0.00,'MXN',NULL,0.00,'2015-08-21','2013-02-05',NULL,NULL,NULL,'2015-08-21','CANCELADA',NULL),
(7718,1037,NULL,37777.16,'MXN',NULL,37777.16,'2015-08-21','2015-10-15',NULL,NULL,NULL,'2015-08-21','FRISA FORJADOS',NULL),
(7719,1038,NULL,3812.64,'MXN',NULL,3812.64,'2015-08-24','2015-09-30',NULL,NULL,NULL,'2015-08-24','Ternium México',NULL),
(7720,1039,NULL,10368.00,'MXN',NULL,10368.00,'2015-08-28','2015-10-07',NULL,NULL,NULL,'2015-08-28','FERROPAK COMERCIAL',NULL),
(7721,1040,NULL,6480.00,'MXN',NULL,6480.00,'2015-08-28','2015-10-07',NULL,NULL,NULL,'2015-08-28','FERROPAK COMERCIAL',NULL),
(7722,1041,NULL,10368.00,'MXN',NULL,10368.00,'2015-08-28','2015-10-07',NULL,NULL,NULL,'2015-08-28','FERROPAK COMERCIAL',NULL),
(7723,1042,NULL,6480.00,'MXN',NULL,6480.00,'2015-08-28','2015-10-07',NULL,NULL,NULL,'2015-08-28','FERROPAK COMERCIAL',NULL),
(7724,1043,NULL,0.00,'MXN',NULL,0.00,'2015-08-28','2013-02-05',NULL,NULL,NULL,'2015-08-28','CANCELADA',NULL),
(7725,1044,NULL,0.00,'MXN',NULL,0.00,'2015-08-28','2013-02-05',NULL,NULL,NULL,'2015-08-28','CANCELADA',NULL),
(7726,1045,NULL,0.00,'MXN',NULL,0.00,'2015-08-28','2013-02-05',NULL,NULL,NULL,'2015-08-28','CANCELADA',NULL),
(7727,1046,NULL,20457.17,'MXN',NULL,20457.17,'2015-08-28','2015-10-15',NULL,NULL,NULL,'2015-08-28','FRISA FORJADOS',NULL),
(7728,1047,NULL,16555.97,'MXN',NULL,16555.97,'2015-08-31','2015-10-15',NULL,NULL,NULL,'2015-08-31','FRISA FORJADOS',NULL),
(7729,1048,NULL,14303.33,'MXN',NULL,14303.33,'2015-08-31','2015-10-15',NULL,NULL,NULL,'2015-08-31','FRISA FORJADOS',NULL),
(7730,1049,NULL,0.00,'MXN',NULL,0.00,'2015-09-04','2013-02-05',NULL,NULL,NULL,'2015-09-04','CANCELADA',NULL),
(7731,1050,NULL,0.00,'MXN',NULL,0.00,'2015-09-04','2013-02-05',NULL,NULL,NULL,'2015-09-04','CANCELADA',NULL),
(7732,1051,NULL,0.00,'MXN',NULL,0.00,'2015-09-04','2013-02-05',NULL,NULL,NULL,'2015-09-04','CANCELADA',NULL),
(7733,1052,NULL,82231.67,'MXN',NULL,82231.67,'2015-09-07','2015-09-30',NULL,NULL,NULL,'2015-09-07','Ternium México',NULL),
(7734,1053,NULL,0.00,'MXN',NULL,0.00,'2015-09-09','2013-02-05',NULL,NULL,NULL,'2015-09-09','CANCELADA',NULL),
(7735,1054,NULL,86329.51,'MXN',NULL,86329.51,'2015-09-09','2015-11-13',NULL,NULL,NULL,'2015-09-09','FRISA FORJADOS',NULL),
(7736,1055,NULL,6480.00,'MXN',NULL,6480.00,'2015-09-10','2015-10-21',NULL,NULL,NULL,'2015-09-10','FERROPAK COMERCIAL',NULL),
(7737,1056,NULL,10368.00,'MXN',NULL,10368.00,'2015-09-10','2015-10-14',NULL,NULL,NULL,'2015-09-10','FERROPAK COMERCIAL',NULL),
(7738,1057,NULL,1440.00,'MXN',NULL,1440.00,'2015-09-10','2015-10-14',NULL,NULL,NULL,'2015-09-10','FERROPAK COMERCIAL',NULL),
(7739,1058,NULL,20834.97,'MXN',NULL,20834.97,'2015-09-11','2015-11-13',NULL,NULL,NULL,'2015-09-11','FRISA FORJADOS',NULL),
(7740,1059,NULL,8180.00,'MXN',NULL,8180.00,'2015-09-14','2015-11-23',NULL,NULL,NULL,'2015-09-14','HARSCO METALS DE MEXICO',NULL),
(7741,1060,NULL,8180.00,'MXN',NULL,8180.00,'2015-09-14','2015-11-23',NULL,NULL,NULL,'2015-09-14','HARSCO METALS DE MEXICO',NULL),
(7742,1061,NULL,41152.56,'MXN',NULL,41152.56,'2015-09-17','2015-09-18',NULL,NULL,NULL,'2015-09-17','Vesuvius México',NULL),
(7743,1062,NULL,66500.00,'MXN',NULL,66500.00,'2015-09-17','2015-12-04',NULL,NULL,NULL,'2015-09-17','HARSCO METALS DE MEXICO',NULL),
(7744,1063,NULL,22294.50,'MXN',NULL,22294.50,'2015-09-18','2015-10-30',NULL,NULL,NULL,'2015-09-18','Ternium México',NULL),
(7745,1064,NULL,9930.73,'MXN',NULL,9930.73,'2015-09-25','2015-11-13',NULL,NULL,NULL,'2015-09-25','FRISA FORJADOS',NULL),
(7746,1065,NULL,16360.00,'MXN',NULL,16360.00,'2015-09-25','2015-12-04',NULL,NULL,NULL,'2015-09-25','HARSCO METALS DE MEXICO',NULL),
(7747,1066,NULL,4090.00,'MXN',NULL,4090.00,'2015-09-25','2015-12-04',NULL,NULL,NULL,'2015-09-25','HARSCO METALS DE MEXICO',NULL),
(7748,1067,NULL,12270.00,'MXN',NULL,12270.00,'2015-09-25','2015-12-04',NULL,NULL,NULL,'2015-09-25','HARSCO METALS DE MEXICO',NULL),
(7749,1068,NULL,6775.00,'MXN',NULL,6775.00,'2015-09-28','2015-11-13',NULL,NULL,NULL,'2015-09-28','FRISA FORJADOS',NULL),
(7750,1069,NULL,25920.00,'MXN',NULL,25920.00,'2015-09-28','2015-10-28',NULL,NULL,NULL,'2015-09-28','FERROPAK COMERCIAL',NULL),
(7751,1070,NULL,12240.00,'MXN',NULL,12240.00,'2015-09-28','2015-10-28',NULL,NULL,NULL,'2015-09-28','FERROPAK COMERCIAL',NULL),
(7752,1071,NULL,18360.00,'MXN',NULL,18360.00,'2015-09-28','2015-10-21',NULL,NULL,NULL,'2015-09-28','FERROPAK COMERCIAL',NULL),
(7753,1072,NULL,102565.00,'MXN',NULL,102565.00,'2015-09-29','2015-09-29',NULL,NULL,NULL,'2015-09-29','SERVICIOS INDUSTRIALES DE MONTERREY ',NULL),
(7754,1073,NULL,85738.00,'MXN',NULL,85738.00,'2015-09-29','2015-09-29',NULL,NULL,NULL,'2015-09-29','SERVICIOS INDUSTRIALES DE MONTERREY ',NULL),
(7755,1074,NULL,72301.96,'MXN',NULL,72301.96,'2015-09-29','2015-09-29',NULL,NULL,NULL,'2015-09-29','SERVICIOS INDUSTRIALES DE MONTERREY ',NULL),
(7756,1075,NULL,0.00,'MXN',NULL,0.00,'2015-09-30','2013-02-05',NULL,NULL,NULL,'2015-09-30','CANCELADA',NULL),
(7757,1076,NULL,0.00,'MXN',NULL,0.00,'2015-09-30','2013-02-05',NULL,NULL,NULL,'2015-09-30','CANCELADA',NULL),
(7758,1077,NULL,13970.00,'MXN',NULL,13970.00,'2015-09-30','2015-11-13',NULL,NULL,NULL,'2015-09-30','FRISA FORJADOS',NULL),
(7759,1078,NULL,85252.50,'MXN',NULL,85252.50,'2015-10-01','2015-11-13',NULL,NULL,NULL,'2015-10-01','FRISA FORJADOS',NULL),
(7760,1079,NULL,3740.00,'MXN',NULL,3740.00,'2015-10-02','2015-11-30',NULL,NULL,NULL,'2015-10-02','Ternium México',NULL),
(7761,1080,NULL,2700.00,'MXN',NULL,2700.00,'2015-10-06','2015-10-30',NULL,NULL,NULL,'2015-10-06','Ternium México',NULL),
(7762,1081,NULL,0.00,'MXN',NULL,0.00,'2015-10-06','2013-02-05',NULL,NULL,NULL,'2015-10-06','CANCELADA',NULL),
(7763,1082,NULL,0.00,'MXN',NULL,0.00,'2015-10-06','2013-02-05',NULL,NULL,NULL,'2015-10-06','CANCELADA',NULL),
(7764,1083,NULL,0.00,'MXN',NULL,0.00,'2015-10-06','2013-02-05',NULL,NULL,NULL,'2015-10-06','CANCELADA',NULL),
(7765,1084,NULL,0.00,'MXN',NULL,0.00,'2015-10-06','2013-02-05',NULL,NULL,NULL,'2015-10-06','CANCELADA',NULL),
(7766,1085,NULL,0.00,'MXN',NULL,0.00,'2015-10-06','2013-02-05',NULL,NULL,NULL,'2015-10-06','CANCELADA',NULL),
(7767,1086,NULL,0.00,'MXN',NULL,0.00,'2015-10-06','2013-02-05',NULL,NULL,NULL,'2015-10-06','CANCELADA',NULL),
(7768,1087,NULL,0.00,'MXN',NULL,0.00,'2015-10-06','2013-02-05',NULL,NULL,NULL,'2015-10-06','CANCELADA',NULL),
(7769,1088,NULL,0.00,'MXN',NULL,0.00,'2015-10-06','2013-02-05',NULL,NULL,NULL,'2015-10-06','CANCELADA',NULL),
(7770,1089,NULL,0.00,'MXN',NULL,0.00,'2015-10-06','2013-02-05',NULL,NULL,NULL,'2015-10-06','CANCELADA',NULL),
(7771,1090,NULL,56599.42,'MXN',NULL,56599.42,'2015-10-06','2015-12-15',NULL,NULL,NULL,'2015-10-06','FRISA FORJADOS',NULL),
(7772,1091,NULL,14208.00,'MXN',NULL,14208.00,'2015-10-07','2015-10-23',NULL,NULL,NULL,'2015-10-07','SERVICIOS ESPECIALIZADOS DEL NORTE',NULL),
(7773,1092,NULL,72700.00,'MXN',NULL,72700.00,'2015-10-07','2016-01-07',NULL,NULL,NULL,'2015-10-07','HARSCO METALS DE MEXICO',NULL),
(7774,1093,NULL,46852.90,'MXN',NULL,46852.90,'2015-10-15','2015-12-15',NULL,NULL,NULL,'2015-10-15','FRISA FORJADOS',NULL),
(7775,1094,NULL,12270.00,'MXN',NULL,12270.00,'2015-10-15','2016-01-07',NULL,NULL,NULL,'2015-10-15','HARSCO METALS DE MEXICO',NULL),
(7776,1095,NULL,0.00,'MXN',NULL,0.00,'2015-10-22','2013-02-05',NULL,NULL,NULL,'2015-10-22','CANCELADA',NULL),
(7777,1096,NULL,29160.00,'MXN',NULL,29160.00,'2015-10-23','2015-11-13',NULL,NULL,NULL,'2015-10-23','FERROPAK COMERCIAL',NULL),
(7778,1097,NULL,17280.00,'MXN',NULL,17280.00,'2015-10-23','2015-11-13',NULL,NULL,NULL,'2015-10-23','FERROPAK COMERCIAL',NULL),
(7779,1098,NULL,25920.00,'MXN',NULL,25920.00,'2015-10-23','2015-11-13',NULL,NULL,NULL,'2015-10-23','FERROPAK COMERCIAL',NULL),
(7780,1099,NULL,0.00,'MXN',NULL,0.00,'2015-10-23','2013-02-05',NULL,NULL,NULL,'2015-10-23','CANCELADA',NULL),
(7781,1100,NULL,26211.50,'MXN',NULL,26211.50,'2015-10-23','2015-12-15',NULL,NULL,NULL,'2015-10-23','FRISA FORJADOS',NULL),
(7782,1101,NULL,0.00,'MXN',NULL,0.00,'2015-10-28','2013-02-05',NULL,NULL,NULL,'2015-10-28','CANCELADA',NULL),
(7783,1102,NULL,0.00,'MXN',NULL,0.00,'2015-10-28','2013-02-05',NULL,NULL,NULL,'2015-10-28','CANCELADA',NULL),
(7784,1103,NULL,0.00,'MXN',NULL,0.00,'2015-10-28','2013-02-05',NULL,NULL,NULL,'2015-10-28','CANCELADA',NULL),
(7785,1104,NULL,37865.50,'MXN',NULL,37865.50,'2015-10-28','2015-12-15',NULL,NULL,NULL,'2015-10-28','FRISA FORJADOS',NULL),
(7786,1105,NULL,22302.50,'MXN',NULL,22302.50,'2015-10-29','2015-12-15',NULL,NULL,NULL,'2015-10-29','FRISA FORJADOS',NULL),
(7787,1106,11,72649.00,'MXN',NULL,72649.00,'2015-10-30','2015-10-30',NULL,NULL,NULL,'2015-10-30','Transportadores Industriales de México',999),
(7788,1107,11,65334.00,'MXN',NULL,65334.00,'2015-10-30','2015-10-30',NULL,NULL,NULL,'2015-10-30','Transportadores Industriales de México',999),
(7789,1108,NULL,75529.00,'MXN',NULL,75529.00,'2015-10-30','2015-10-30',NULL,NULL,NULL,'2015-10-30','SERVICIOS INDUSTRIALES DE MONTERREY ',NULL),
(7790,1109,NULL,0.00,'MXN',NULL,0.00,'2015-10-30','2013-02-05',NULL,NULL,NULL,'2015-10-30','CANCELADA',NULL),
(7791,1110,NULL,4800.00,'MXN',NULL,4800.00,'2015-10-30','2015-12-15',NULL,NULL,NULL,'2015-10-30','FRISA FORJADOS',NULL),
(7792,1111,NULL,18160.00,'MXN',NULL,18160.00,'2015-11-03','2016-01-18',NULL,NULL,NULL,'2015-11-03','HARSCO METALS DE MEXICO',NULL),
(7793,1112,NULL,13620.00,'MXN',NULL,13620.00,'2015-11-03','2016-01-18',NULL,NULL,NULL,'2015-11-03','HARSCO METALS DE MEXICO',NULL),
(7794,1113,NULL,4540.00,'MXN',NULL,4540.00,'2015-11-03','2016-01-18',NULL,NULL,NULL,'2015-11-03','HARSCO METALS DE MEXICO',NULL),
(7795,1114,NULL,12270.00,'MXN',NULL,12270.00,'2015-11-04','2016-01-18',NULL,NULL,NULL,'2015-11-04','HARSCO METALS DE MEXICO',NULL),
(7796,1115,11,42469.00,'MXN',NULL,42469.00,'2015-11-05','2015-11-05',NULL,NULL,NULL,'2015-11-05','Transportadores Industriales de México',999),
(7797,1116,NULL,0.00,'MXN',NULL,0.00,'2015-11-10','2013-02-05',NULL,NULL,NULL,'2015-11-10','CANCELADA',NULL),
(7798,1117,NULL,0.00,'MXN',NULL,0.00,'2015-11-10','2013-02-05',NULL,NULL,NULL,'2015-11-10','CANCELADA',NULL),
(7799,1118,NULL,71103.00,'MXN',NULL,71103.00,'2015-11-10','2016-01-15',NULL,NULL,NULL,'2015-11-10','FRISA FORJADOS',NULL),
(7800,1119,NULL,112604.06,'MXN',NULL,112604.06,'2015-11-12','2015-11-30',NULL,NULL,NULL,'2015-11-12','Ternium México',NULL),
(7801,1120,NULL,82478.00,'MXN',NULL,82478.00,'2015-11-17','2015-10-28',NULL,NULL,NULL,'2015-11-17','SERVICIOS INDUSTRIALES DE MONTERREY ',NULL),
(7802,1121,NULL,77282.00,'MXN',NULL,77282.00,'2015-11-17','2015-10-28',NULL,NULL,NULL,'2015-11-17','SERVICIOS INDUSTRIALES DE MONTERREY ',NULL),
(7803,1122,NULL,85042.00,'MXN',NULL,85042.00,'2015-11-17','2015-10-28',NULL,NULL,NULL,'2015-11-17','SERVICIOS INDUSTRIALES DE MONTERREY ',NULL),
(7804,1123,NULL,0.00,'MXN',NULL,0.00,'2015-11-17','2013-02-05',NULL,NULL,NULL,'2015-11-17','CANCELADA',NULL),
(7805,1124,NULL,62728.00,'MXN',NULL,62728.00,'2015-11-17','2016-01-15',NULL,NULL,NULL,'2015-11-17','FRISA FORJADOS',NULL),
(7806,1125,NULL,12270.00,'MXN',NULL,12270.00,'2015-11-19','2016-02-03',NULL,NULL,NULL,'2015-11-19','HARSCO METALS DE MEXICO',NULL),
(7807,1126,NULL,1715.60,'MXN',NULL,1715.60,'2015-11-19','2016-02-03',NULL,NULL,NULL,'2015-11-19','HARSCO METALS DE MEXICO',NULL),
(7808,1127,NULL,4540.00,'MXN',NULL,4540.00,'2015-11-19','2016-02-03',NULL,NULL,NULL,'2015-11-19','HARSCO METALS DE MEXICO',NULL),
(7809,1128,NULL,36654.00,'MXN',NULL,36654.00,'2015-11-20','2016-01-15',NULL,NULL,NULL,'2015-11-20','FRISA FORJADOS',NULL),
(7810,1129,NULL,31104.00,'MXN',NULL,31104.00,'2015-11-20','2015-12-23',NULL,NULL,NULL,'2015-11-20','FERROPAK COMERCIAL',NULL),
(7811,1130,NULL,12960.00,'MXN',NULL,12960.00,'2015-11-20','2015-12-23',NULL,NULL,NULL,'2015-11-20','FERROPAK COMERCIAL',NULL),
(7812,1131,NULL,20336.00,'MXN',NULL,20336.00,'2015-11-20','2015-12-23',NULL,NULL,NULL,'2015-11-20','FERROPAK COMERCIAL',NULL),
(7813,1132,NULL,0.00,'MXN',NULL,0.00,'2015-11-24','2013-02-05',NULL,NULL,NULL,'2015-11-24','CANCELADA',NULL),
(7814,1133,NULL,0.00,'MXN',NULL,0.00,'2015-11-24','2013-02-05',NULL,NULL,NULL,'2015-11-24','CANCELADA',NULL),
(7815,1134,NULL,0.00,'MXN',NULL,0.00,'2015-11-24','2013-02-05',NULL,NULL,NULL,'2015-11-24','CANCELADA',NULL),
(7816,1135,NULL,0.00,'MXN',NULL,0.00,'2015-11-24','2013-02-05',NULL,NULL,NULL,'2015-11-24','CANCELADA',NULL),
(7817,1136,NULL,0.00,'MXN',NULL,0.00,'2015-11-24','2013-02-05',NULL,NULL,NULL,'2015-11-24','CANCELADA',NULL),
(7818,1137,NULL,0.00,'MXN',NULL,0.00,'2015-11-24','2013-02-05',NULL,NULL,NULL,'2015-11-24','CANCELADA',NULL),
(7819,1138,NULL,0.00,'MXN',NULL,0.00,'2015-11-24','2013-02-05',NULL,NULL,NULL,'2015-11-24','CANCELADA',NULL),
(7820,1139,NULL,43111.00,'MXN',NULL,43111.00,'2015-11-24','2016-01-15',NULL,NULL,NULL,'2015-11-24','FRISA FORJADOS',NULL),
(7821,1140,NULL,85065.00,'MXN',NULL,85065.00,'2015-11-27','2015-11-03',NULL,NULL,NULL,'2015-11-27','SERVICIOS INDUSTRIALES DE MONTERREY ',NULL),
(7822,1141,NULL,28020.00,'MXN',NULL,28020.00,'2015-11-27','2016-02-08',NULL,NULL,NULL,'2015-11-27','HARSCO METALS DE MEXICO',NULL),
(7823,1142,NULL,38928.00,'MXN',NULL,38928.00,'2015-11-30','2016-01-15',NULL,NULL,NULL,'2015-11-30','FRISA FORJADOS',NULL),
(7824,1143,NULL,76614.00,'MXN',NULL,76614.00,'2015-11-30','2016-01-15',NULL,NULL,NULL,'2015-11-30','FRISA FORJADOS',NULL),
(7825,1144,11,74288.99,'MXN',NULL,74288.99,'2015-11-30','2016-02-18',NULL,NULL,NULL,'2015-11-30','Transportadores Industriales de México',999),
(7826,1145,NULL,30489.64,'MXN',NULL,30489.64,'2015-12-02','2016-01-15',NULL,NULL,NULL,'2015-12-02','FRISA FORJADOS',NULL),
(7827,1146,NULL,29925.00,'MXN',NULL,29925.00,'2015-12-02','2016-01-29',NULL,NULL,NULL,'2015-12-02','Ternium México',NULL),
(7828,1147,NULL,37598.00,'MXN',NULL,37598.00,'2015-12-03','2016-02-15',NULL,NULL,NULL,'2015-12-03','FRISA FORJADOS',NULL),
(7829,1148,NULL,38808.00,'MXN',NULL,38808.00,'2015-12-03','2016-01-04',NULL,NULL,NULL,'2015-12-03','FERROPAK COMERCIAL',NULL),
(7830,1149,NULL,31935.82,'MXN',NULL,31935.82,'2015-12-07','2016-02-15',NULL,NULL,NULL,'2015-12-07','FRISA FORJADOS',NULL),
(7831,1150,NULL,13325.00,'MXN',NULL,13325.00,'2015-12-08','2016-01-08',NULL,NULL,NULL,'2015-12-08','Vesuvius México',NULL),
(7832,1151,NULL,44091.00,'MXN',NULL,44091.00,'2015-12-11','2016-01-13',NULL,NULL,NULL,'2015-12-11','FERROPAK COMERCIAL',NULL),
(7833,1152,NULL,13770.69,'MXN',NULL,13770.69,'2015-12-14','2015-12-29',NULL,NULL,NULL,'2015-12-14','Ternium México',NULL),
(7834,1153,NULL,0.00,'MXN',NULL,0.00,'2015-12-15','2013-02-05',NULL,NULL,NULL,'2015-12-15','CANCELADA',NULL),
(7835,1154,NULL,34937.50,'MXN',NULL,34937.50,'2015-12-15','2016-02-15',NULL,NULL,NULL,'2015-12-15','FRISA FORJADOS',NULL),
(7836,1155,NULL,0.00,'MXN',NULL,0.00,'2015-12-17','2013-02-05',NULL,NULL,NULL,'2015-12-17','CANCELADA',NULL),
(7837,1156,NULL,0.00,'MXN',NULL,0.00,'2015-12-17','2013-02-05',NULL,NULL,NULL,'2015-12-17','CANCELADA',NULL),
(7838,1157,NULL,42705.00,'MXN',NULL,42705.00,'2015-12-17','2016-02-15',NULL,NULL,NULL,'2015-12-17','FRISA FORJADOS',NULL),
(7839,1158,NULL,0.00,'MXN',NULL,0.00,'2015-12-21','2013-02-05',NULL,NULL,NULL,'2015-12-21','CANCELADA',NULL),
(7840,1159,NULL,0.00,'MXN',NULL,0.00,'2015-12-21','2013-02-05',NULL,NULL,NULL,'2015-12-21','CANCELADA',NULL),
(7841,1160,NULL,0.00,'MXN',NULL,0.00,'2015-12-21','2013-02-05',NULL,NULL,NULL,'2015-12-21','CANCELADA',NULL),
(7842,1161,NULL,31482.00,'MXN',NULL,31482.00,'2015-12-21','2016-02-15',NULL,NULL,NULL,'2015-12-21','FRISA FORJADOS',NULL),
(7843,1162,NULL,193965.52,'MXN',NULL,193965.52,'2015-12-23','2015-11-26',NULL,NULL,NULL,'2015-12-23','SERVICIOS INDUSTRIALES DE MONTERREY ',NULL),
(7844,1163,NULL,211312.00,'MXN',NULL,211312.00,'2015-12-20','2015-12-29',NULL,NULL,NULL,'2015-12-20','SERVICIOS INDUSTRIALES DE MONTERREY ',NULL),
(7845,1164,11,81984.42,'MXN',NULL,81984.42,'2015-12-31','2016-02-18',NULL,NULL,NULL,'2015-12-31','Transportadores Industriales de México',999),
(7846,1165,NULL,80909.50,'MXN',NULL,80909.50,'2016-01-04','2016-03-15',NULL,NULL,NULL,'2016-01-04','FRISA FORJADOS',NULL),
(7847,1166,NULL,48902.00,'MXN',NULL,48902.00,'2016-01-04','2016-02-03',NULL,NULL,NULL,'2016-01-04','FERROPAK COMERCIAL',NULL),
(7848,1167,NULL,40876.30,'MXN',NULL,40876.30,'2016-01-04','2016-01-29',NULL,NULL,NULL,'2016-01-04','Ternium México',NULL),
(7849,1168,NULL,15075.00,'MXN',NULL,15075.00,'2016-01-06','2016-03-22',NULL,NULL,NULL,'2016-01-06','HARSCO METALS DE MEXICO',NULL),
(7850,1169,NULL,0.00,'MXN',NULL,0.00,'2016-01-13','2013-02-05',NULL,NULL,NULL,'2016-01-13','CANCELADA',NULL),
(7851,1170,NULL,0.00,'MXN',NULL,0.00,'2016-01-13','2013-02-05',NULL,NULL,NULL,'2016-01-13','CANCELADA',NULL),
(7852,1171,NULL,0.00,'MXN',NULL,0.00,'2016-01-13','2013-02-05',NULL,NULL,NULL,'2016-01-13','CANCELADA',NULL),
(7853,1172,NULL,0.00,'MXN',NULL,0.00,'2016-01-13','2013-02-05',NULL,NULL,NULL,'2016-01-13','CANCELADA',NULL),
(7854,1173,NULL,0.00,'MXN',NULL,0.00,'2016-01-13','2013-02-05',NULL,NULL,NULL,'2016-01-13','CANCELADA',NULL),
(7855,1174,NULL,0.00,'MXN',NULL,0.00,'2016-01-13','2013-02-05',NULL,NULL,NULL,'2016-01-13','CANCELADA',NULL),
(7856,1175,NULL,53697.00,'MXN',NULL,53697.00,'2016-01-13','2016-03-15',NULL,NULL,NULL,'2016-01-13','FRISA FORJADOS',NULL),
(7857,1176,NULL,0.00,'MXN',NULL,0.00,'2016-01-15','2013-02-05',NULL,NULL,NULL,'2016-01-15','CANCELADA',NULL),
(7858,1177,NULL,0.00,'MXN',NULL,0.00,'2016-01-15','2013-02-05',NULL,NULL,NULL,'2016-01-15','CANCELADA',NULL),
(7859,1178,NULL,9607.44,'MXN',NULL,9607.44,'2016-01-15','2016-01-29',NULL,NULL,NULL,'2016-01-15','Ternium México',NULL),
(7860,1179,NULL,13414.04,'MXN',NULL,13414.04,'2016-01-22','2016-02-29',NULL,NULL,NULL,'2016-01-22','Ternium México',NULL),
(7861,1180,NULL,62115.00,'MXN',NULL,62115.00,'2016-01-27','2016-02-26',NULL,NULL,NULL,'2016-01-27','FERROPAK COMERCIAL',NULL),
(7862,1181,NULL,0.00,'MXN',NULL,0.00,'2016-01-28','2013-02-05',NULL,NULL,NULL,'2016-01-28','CANCELADA',NULL),
(7863,1182,NULL,10037.50,'MXN',NULL,10037.50,'2016-01-28','2016-03-15',NULL,NULL,NULL,'2016-01-28','FRISA FORJADOS',NULL),
(7864,1183,NULL,25200.00,'MXN',NULL,25200.00,'2016-02-02','2016-03-04',NULL,NULL,NULL,'2016-02-02','FERROPAK COMERCIAL',NULL),
(7865,1184,NULL,27333.00,'MXN',NULL,27333.00,'2016-02-05','2016-03-09',NULL,NULL,NULL,'2016-02-05','FERROPAK COMERCIAL',NULL),
(7866,1185,NULL,11880.00,'MXN',NULL,11880.00,'2016-02-09','2016-03-11',NULL,NULL,NULL,'2016-02-09','FERROPAK COMERCIAL',NULL),
(7867,1186,11,128000.00,'MXN',NULL,128000.00,'2016-02-10','2016-02-10',NULL,NULL,NULL,'2016-02-10','Transportadores Industriales de México',999),
(7868,1187,NULL,0.00,'MXN',NULL,0.00,'2016-02-15','2013-02-05',NULL,NULL,NULL,'2016-02-15','CANCELADA',NULL),
(7869,1188,NULL,35951.50,'MXN',NULL,35951.50,'2016-02-15','2016-04-15',NULL,NULL,NULL,'2016-02-15','FRISA FORJADOS',NULL),
(7870,1189,NULL,77949.50,'MXN',NULL,77949.50,'2016-02-16','2016-04-15',NULL,NULL,NULL,'2016-02-16','FRISA FORJADOS',NULL),
(7871,1190,NULL,32546.18,'MXN',NULL,32546.18,'2016-02-17','2016-03-31',NULL,NULL,NULL,'2016-02-17','Ternium México',NULL),
(7872,1191,NULL,3400.00,'MXN',NULL,3400.00,'2016-02-17','2016-03-07',NULL,NULL,NULL,'2016-02-17','Vesuvius México',NULL),
(7873,1192,NULL,10598.50,'MXN',NULL,10598.50,'2016-02-17','2016-04-15',NULL,NULL,NULL,'2016-02-17','FRISA FORJADOS',NULL),
(7874,1193,NULL,25016.00,'MXN',NULL,25016.00,'2016-02-18','2016-04-15',NULL,NULL,NULL,'2016-02-18','FRISA FORJADOS',NULL),
(7875,1194,NULL,84607.00,'MXN',NULL,84607.00,'2016-02-22','2016-03-31',NULL,NULL,NULL,'2016-02-22','Ternium México',NULL),
(7876,1195,NULL,105124.50,'MXN',NULL,105124.50,'2016-02-23','2016-04-15',NULL,NULL,NULL,'2016-02-23','FRISA FORJADOS',NULL),
(7877,1196,NULL,0.00,'MXN',NULL,0.00,'2016-02-24','2013-02-05',NULL,NULL,NULL,'2016-02-24','CANCELADA',NULL),
(7878,1197,NULL,13300.00,'MXN',NULL,13300.00,'2016-02-25','2016-05-09',NULL,NULL,NULL,'2016-02-25','HARSCO METALS DE MEXICO',NULL),
(7879,1198,NULL,2100.00,'MXN',NULL,2100.00,'2016-02-25','2016-05-09',NULL,NULL,NULL,'2016-02-25','HARSCO METALS DE MEXICO',NULL),
(7880,1199,NULL,28500.00,'MXN',NULL,28500.00,'2016-02-25','2016-05-09',NULL,NULL,NULL,'2016-02-25','HARSCO METALS DE MEXICO',NULL),
(7881,1200,NULL,29781.00,'MXN',NULL,29781.00,'2016-02-25','2016-03-28',NULL,NULL,NULL,'2016-02-25','FERROPAK COMERCIAL',NULL),
(7882,1201,NULL,12960.00,'MXN',NULL,12960.00,'2016-02-28','2016-03-30',NULL,NULL,NULL,'2016-02-28','FERROPAK COMERCIAL',NULL),
(7883,1202,NULL,0.00,'MXN',NULL,0.00,'2016-03-02','2013-02-05',NULL,NULL,NULL,'2016-03-02','CANCELADA',NULL),
(7884,1203,NULL,0.00,'MXN',NULL,0.00,'2016-03-02','2013-02-05',NULL,NULL,NULL,'2016-03-02','CANCELADA',NULL),
(7885,1204,NULL,33910.00,'MXN',NULL,33910.00,'2016-03-02','2016-05-13',NULL,NULL,NULL,'2016-03-02','FRISA FORJADOS',NULL),
(7886,1205,NULL,5000.00,'MXN',NULL,5000.00,'2016-03-10','2016-03-18',NULL,NULL,NULL,'2016-03-10','Vesuvius México',NULL),
(7887,1206,NULL,5000.00,'MXN',NULL,5000.00,'2016-03-10','2016-03-18',NULL,NULL,NULL,'2016-03-10','Vesuvius México',NULL),
(7888,1207,NULL,4400.00,'MXN',NULL,4400.00,'2016-03-10','2016-03-18',NULL,NULL,NULL,'2016-03-10','Vesuvius México',NULL),
(7889,1208,NULL,38016.00,'MXN',NULL,38016.00,'2016-03-11','2016-04-13',NULL,NULL,NULL,'2016-03-11','FERROPAK COMERCIAL',NULL),
(7890,1209,NULL,4320.00,'MXN',NULL,4320.00,'2016-03-14','2016-04-13',NULL,NULL,NULL,'2016-03-14','FERROPAK COMERCIAL',NULL),
(7891,1210,NULL,3650.08,'MXN',NULL,3650.08,'2016-03-14','2016-04-29',NULL,NULL,NULL,'2016-03-14','Ternium México',NULL),
(7892,1211,NULL,0.00,'MXN',NULL,0.00,'2016-03-15','2013-02-05',NULL,NULL,NULL,'2016-03-15','CANCELADA',NULL),
(7893,1212,NULL,0.00,'MXN',NULL,0.00,'2016-03-15','2013-02-05',NULL,NULL,NULL,'2016-03-15','CANCELADA',NULL),
(7894,1213,NULL,0.00,'MXN',NULL,0.00,'2016-03-15','2013-02-05',NULL,NULL,NULL,'2016-03-15','CANCELADA',NULL),
(7895,1214,NULL,14633.50,'MXN',NULL,14633.50,'2016-03-15','2016-05-13',NULL,NULL,NULL,'2016-03-15','FRISA FORJADOS',NULL),
(7896,1215,NULL,55582.00,'MXN',NULL,55582.00,'2016-03-23','2016-05-13',NULL,NULL,NULL,'2016-03-23','FRISA FORJADOS',NULL),
(7897,1216,NULL,1519.98,'MXN',NULL,1519.98,'2016-03-23','2016-06-06',NULL,NULL,NULL,'2016-03-23','HARSCO METALS DE MEXICO',NULL),
(7898,1217,NULL,633.33,'MXN',NULL,633.33,'2016-03-23','2016-06-06',NULL,NULL,NULL,'2016-03-23','HARSCO METALS DE MEXICO',NULL),
(7899,1218,NULL,1013.32,'MXN',NULL,1013.32,'2016-03-23','2016-06-06',NULL,NULL,NULL,'2016-03-23','HARSCO METALS DE MEXICO',NULL),
(7900,1219,NULL,8106.56,'MXN',NULL,8106.56,'2016-03-23','2016-06-06',NULL,NULL,NULL,'2016-03-23','HARSCO METALS DE MEXICO',NULL),
(7901,1220,NULL,28499.63,'MXN',NULL,28499.63,'2016-03-23','2016-06-06',NULL,NULL,NULL,'2016-03-23','HARSCO METALS DE MEXICO',NULL),
(7902,1221,NULL,8233.23,'MXN',NULL,8233.23,'2016-03-23','2016-06-06',NULL,NULL,NULL,'2016-03-23','HARSCO METALS DE MEXICO',NULL),
(7903,1222,NULL,15633.10,'MXN',NULL,15633.10,'2016-03-23','2016-06-06',NULL,NULL,NULL,'2016-03-23','HARSCO METALS DE MEXICO',NULL),
(7904,1223,NULL,2319.96,'MXN',NULL,2319.96,'2016-03-23','2016-06-06',NULL,NULL,NULL,'2016-03-23','HARSCO METALS DE MEXICO',NULL),
(7905,1224,NULL,42336.00,'MXN',NULL,42336.00,'2016-03-28','2016-04-27',NULL,NULL,NULL,'2016-03-28','FERROPAK COMERCIAL',NULL),
(7906,1225,NULL,12547.15,'MXN',NULL,12547.15,'2016-03-28','2016-04-29',NULL,NULL,NULL,'2016-03-28','Ternium México',NULL),
(7907,1226,NULL,4320.00,'MXN',NULL,4320.00,'2016-03-29','2016-04-29',NULL,NULL,NULL,'2016-03-29','FERROPAK COMERCIAL',NULL),
(7908,1227,NULL,0.00,'MXN',NULL,0.00,'2016-03-30','2013-02-05',NULL,NULL,NULL,'2016-03-30','CANCELADA',NULL),
(7909,1228,NULL,0.00,'MXN',NULL,0.00,'2016-03-30','2013-02-05',NULL,NULL,NULL,'2016-03-30','CANCELADA',NULL),
(7910,1229,NULL,0.00,'MXN',NULL,0.00,'2016-03-30','2013-02-05',NULL,NULL,NULL,'2016-03-30','CANCELADA',NULL),
(7911,1230,NULL,24476.00,'MXN',NULL,24476.00,'2016-03-30','2016-05-13',NULL,NULL,NULL,'2016-03-30','FRISA FORJADOS',NULL),
(7912,1231,11,2025.24,'MXN',NULL,2025.24,'2016-03-31','2016-05-11',NULL,NULL,NULL,'2016-03-31','Transportadores Industriales de México',999),
(7913,1232,NULL,52704.00,'MXN',NULL,52704.00,'2016-04-07','2016-05-11',NULL,NULL,NULL,'2016-04-07','FERROPAK COMERCIAL',NULL),
(7914,1233,NULL,7300.16,'MXN',NULL,7300.16,'2016-04-07','2016-05-31',NULL,NULL,NULL,'2016-04-07','Ternium México',NULL),
(7915,1234,NULL,1546.64,'MXN',NULL,1546.64,'2016-04-07','2016-06-20',NULL,NULL,NULL,'2016-04-07','HARSCO METALS DE MEXICO',NULL),
(7916,1235,NULL,2319.96,'MXN',NULL,2319.96,'2016-04-07','2016-06-20',NULL,NULL,NULL,'2016-04-07','HARSCO METALS DE MEXICO',NULL),
(7917,1236,NULL,2899.95,'MXN',NULL,2899.95,'2016-04-07','2016-06-20',NULL,NULL,NULL,'2016-04-07','HARSCO METALS DE MEXICO',NULL),
(7918,1237,NULL,67982.74,'MXN',NULL,67982.74,'2016-04-08','2016-05-31',NULL,NULL,NULL,'2016-04-08','Ternium México',NULL),
(7919,1238,11,2518.60,'MXN',NULL,2518.60,'2016-04-08','2016-05-11',NULL,NULL,NULL,'2016-04-08','Transportadores Industriales de México',999),
(7920,1239,NULL,5799.90,'MXN',NULL,5799.90,'2016-04-12','2016-06-20',NULL,NULL,NULL,'2016-04-12','HARSCO METALS DE MEXICO',NULL),
(7921,1240,NULL,0.00,'MXN',NULL,0.00,'2016-04-12','2013-02-05',NULL,NULL,NULL,'2016-04-12','CANCELADA',NULL),
(7922,1241,NULL,76369.00,'MXN',NULL,76369.00,'2016-04-12','2016-06-15',NULL,NULL,NULL,'2016-04-12','FRISA FORJADOS',NULL),
(7923,1242,NULL,1933.30,'MXN',NULL,1933.30,'2016-04-12','2016-06-20',NULL,NULL,NULL,'2016-04-12','HARSCO METALS DE MEXICO',NULL),
(7924,1243,NULL,32299.58,'MXN',NULL,32299.58,'2016-04-13','2016-06-20',NULL,NULL,NULL,'2016-04-13','HARSCO METALS DE MEXICO',NULL),
(7925,1244,NULL,29000.00,'MXN',NULL,29000.00,'2016-04-13','2016-06-20',NULL,NULL,NULL,'2016-04-13','HARSCO METALS DE MEXICO',NULL),
(7926,1245,NULL,28500.00,'MXN',NULL,28500.00,'2016-04-13','2016-06-20',NULL,NULL,NULL,'2016-04-13','HARSCO METALS DE MEXICO',NULL),
(7927,1246,NULL,73206.00,'MXN',NULL,73206.00,'2016-04-21','2016-05-24',NULL,NULL,NULL,'2016-04-21','FERROPAK COMERCIAL',NULL),
(7928,1247,NULL,0.00,'MXN',NULL,0.00,'2016-04-28','2013-02-05',NULL,NULL,NULL,'2016-04-28','CANCELADA',NULL),
(7929,1248,NULL,0.00,'MXN',NULL,0.00,'2016-04-28','2013-02-05',NULL,NULL,NULL,'2016-04-28','CANCELADA',NULL),
(7930,1249,NULL,0.00,'MXN',NULL,0.00,'2016-04-28','2013-02-05',NULL,NULL,NULL,'2016-04-28','CANCELADA',NULL),
(7931,1250,NULL,0.00,'MXN',NULL,0.00,'2016-04-28','2013-02-05',NULL,NULL,NULL,'2016-04-28','CANCELADA',NULL),
(7932,1251,NULL,50608.00,'MXN',NULL,50608.00,'2016-04-28','2016-06-15',NULL,NULL,NULL,'2016-04-28','FRISA FORJADOS',NULL),
(7933,1252,11,7555.80,'MXN',NULL,7555.80,'2016-04-28','2016-05-11',NULL,NULL,NULL,'2016-04-28','Transportadores Industriales de México',999),
(7934,1253,NULL,5775.00,'MXN',NULL,5775.00,'2016-05-04','2016-05-13',NULL,NULL,NULL,'2016-05-04','Vesuvius México',NULL),
(7935,1254,NULL,28500.00,'MXN',NULL,28500.00,'2016-05-11','2016-07-18',NULL,NULL,NULL,'2016-05-11','HARSCO METALS DE MEXICO',NULL),
(7936,1255,NULL,3799.95,'MXN',NULL,3799.95,'2016-05-13','2016-07-18',NULL,NULL,NULL,'2016-05-13','HARSCO METALS DE MEXICO',NULL),
(7937,1256,11,5037.20,'MXN',NULL,5037.20,'2016-05-16','2016-12-14',NULL,NULL,NULL,'2016-05-16','Transportadores Industriales de México',999),
(7938,1257,NULL,17256.50,'MXN',NULL,17256.50,'2016-05-16','2016-07-15',NULL,NULL,NULL,'2016-05-16','FRISA FORJADOS',NULL),
(7939,1258,NULL,4848.00,'MXN',NULL,4848.00,'2016-05-18','2016-07-15',NULL,NULL,NULL,'2016-05-18','FRISA FORJADOS',NULL),
(7940,1259,NULL,43600.00,'MXN',NULL,43600.00,'2016-05-18','2016-06-30',NULL,NULL,NULL,'2016-05-18','Ternium México',NULL),
(7941,1260,NULL,74376.00,'MXN',NULL,74376.00,'2015-05-23','2016-06-23',NULL,NULL,NULL,'2015-05-23','FERROPAK COMERCIAL',NULL),
(7942,1261,NULL,99365.22,'MXN',NULL,99365.22,'2016-05-23','2016-06-30',NULL,NULL,NULL,'2016-05-23','Ternium México',NULL),
(7943,1262,NULL,0.00,'MXN',NULL,0.00,'2016-05-27','2013-02-05',NULL,NULL,NULL,'2016-05-27','CANCELADA',NULL),
(7944,1263,NULL,0.00,'MXN',NULL,0.00,'2016-05-27','2013-02-05',NULL,NULL,NULL,'2016-05-27','CANCELADA',NULL),
(7945,1264,NULL,0.00,'MXN',NULL,0.00,'2016-05-27','2013-02-05',NULL,NULL,NULL,'2016-05-27','CANCELADA',NULL),
(7946,1265,NULL,0.00,'MXN',NULL,0.00,'2016-05-27','2013-02-05',NULL,NULL,NULL,'2016-05-27','CANCELADA',NULL),
(7947,1266,NULL,27331.50,'MXN',NULL,27331.50,'2016-05-27','2016-07-15',NULL,NULL,NULL,'2016-05-27','FRISA FORJADOS',NULL),
(7948,1267,NULL,46530.00,'MXN',NULL,46530.00,'2016-06-02','2016-08-15',NULL,NULL,NULL,'2016-06-02','FRISA FORJADOS',NULL),
(7949,1268,NULL,5699.93,'MXN',NULL,5699.93,'2016-06-02','2016-08-15',NULL,NULL,NULL,'2016-06-02','HARSCO METALS DE MEXICO',NULL),
(7950,1269,NULL,4432.75,'MXN',NULL,4432.75,'2016-06-02','2016-08-15',NULL,NULL,NULL,'2016-06-02','HARSCO METALS DE MEXICO',NULL),
(7951,1270,NULL,27240.00,'MXN',NULL,27240.00,'2016-06-03','2016-08-15',NULL,NULL,NULL,'2016-06-03','HARSCO METALS DE MEXICO',NULL),
(7952,1271,NULL,16360.00,'MXN',NULL,16360.00,'2016-06-03','2016-08-15',NULL,NULL,NULL,'2016-06-03','HARSCO METALS DE MEXICO',NULL),
(7953,1272,NULL,79056.00,'MXN',NULL,79056.00,'2016-06-06','2016-07-07',NULL,NULL,NULL,'2016-06-06','FERROPAK COMERCIAL',NULL),
(7954,1273,NULL,3866.60,'MXN',NULL,3866.60,'2016-06-07','2016-08-23',NULL,NULL,NULL,'2016-06-07','HARSCO METALS DE MEXICO',NULL),
(7955,1274,NULL,1933.30,'MXN',NULL,1933.30,'2016-06-07','2016-08-23',NULL,NULL,NULL,'2016-06-07','HARSCO METALS DE MEXICO',NULL),
(7956,1275,NULL,29000.00,'MXN',NULL,29000.00,'2016-06-17','2016-08-23',NULL,NULL,NULL,'2016-06-17','HARSCO METALS DE MEXICO',NULL),
(7957,1276,NULL,29000.00,'MXN',NULL,29000.00,'2016-06-17','2016-08-23',NULL,NULL,NULL,'2016-06-17','HARSCO METALS DE MEXICO',NULL),
(7958,1277,NULL,17794.00,'MXN',NULL,17794.00,'2016-06-17','2016-08-15',NULL,NULL,NULL,'2016-06-17','FRISA FORJADOS',NULL),
(7959,1278,NULL,80186.34,'MXN',NULL,80186.34,'2016-06-20','2016-07-29',NULL,NULL,NULL,'2016-06-20','Ternium México',NULL),
(7960,1279,NULL,0.00,'MXN',NULL,0.00,'2016-06-30','2013-02-05',NULL,NULL,NULL,'2016-06-30','CANCELADA',NULL),
(7961,1280,NULL,79056.00,'MXN',NULL,79056.00,'2016-06-30','2016-08-03',NULL,NULL,NULL,'2016-06-30','FERROPAK COMERCIAL',NULL),
(7962,1281,NULL,5777.00,'MXN',NULL,5777.00,'2016-06-30','2016-08-15',NULL,NULL,NULL,'2016-06-30','FRISA FORJADOS',NULL),
(7963,1282,NULL,30420.00,'MXN',NULL,30420.00,'2016-07-14','2016-09-15',NULL,NULL,NULL,'2016-07-14','FRISA FORJADOS',NULL),
(7964,1283,NULL,1324.62,'MXN',NULL,1324.62,'2016-07-14','2016-07-18',NULL,NULL,NULL,'2016-07-14','GERARDO RAFAEL FLORES SALINAS',NULL),
(7965,1284,NULL,53834.00,'MXN',NULL,53834.00,'2016-07-15','2016-07-29',NULL,NULL,NULL,'2016-07-15','Ternium México',NULL),
(7966,1285,NULL,7977.83,'MXN',NULL,7977.83,'2016-07-22','2016-07-22',NULL,NULL,NULL,'2016-07-22','GERARDO RAFAEL FLORES SALINAS',NULL),
(7967,1286,NULL,26794.00,'MXN',NULL,26794.00,'2016-07-25','2016-09-15',NULL,NULL,NULL,'2016-07-25','FRISA FORJADOS',NULL),
(7968,1287,NULL,3600.00,'MXN',NULL,3600.00,'2016-07-26','2016-07-29',NULL,NULL,NULL,'2016-07-26','TMS INTERNATIONAL DE MEXICO',NULL),
(7969,1288,NULL,79056.00,'MXN',NULL,79056.00,'2016-07-26','2016-08-25',NULL,NULL,NULL,'2016-07-26','FERROPAK COMERCIAL',NULL),
(7970,1289,NULL,3040.00,'MXN',NULL,3040.00,'2016-07-27','2016-08-04',NULL,NULL,NULL,'2016-07-27','FERROPAK COMERCIAL',NULL),
(7971,1290,NULL,5780.16,'MXN',NULL,5780.16,'2016-07-27','2016-07-29',NULL,NULL,NULL,'2016-07-27','GERARDO RAFAEL FLORES SALINAS',NULL),
(7972,1291,NULL,34960.00,'MXN',NULL,34960.00,'2016-08-01','2016-08-31',NULL,NULL,NULL,'2016-08-01','Ternium México',NULL),
(7973,1292,NULL,110000.00,'MXN',NULL,110000.00,'2016-08-01','2016-09-01',NULL,NULL,NULL,'2016-08-01','FERROPAK COMERCIAL',NULL),
(7974,1293,NULL,27269.54,'MXN',NULL,27269.54,'2016-08-03','2016-08-31',NULL,NULL,NULL,'2016-08-03','Ternium México',NULL),
(7975,1294,NULL,3793.23,'MXN',NULL,3793.23,'2016-08-04','2016-08-05',NULL,NULL,NULL,'2016-08-04','GERARDO RAFAEL FLORES SALINAS',NULL),
(7976,1295,NULL,4244.80,'MXN',NULL,4244.80,'2016-08-12','2016-08-15',NULL,NULL,NULL,'2016-08-12','GERARDO RAFAEL FLORES SALINAS',NULL),
(7977,1296,NULL,0.00,'MXN',NULL,0.00,'2016-08-12','2013-02-05',NULL,NULL,NULL,'2016-08-12','CANCELADA',NULL),
(7978,1297,NULL,0.00,'MXN',NULL,0.00,'2016-08-12','2013-02-05',NULL,NULL,NULL,'2016-08-12','CANCELADA',NULL),
(7979,1298,NULL,0.00,'MXN',NULL,0.00,'2016-08-12','2013-02-05',NULL,NULL,NULL,'2016-08-12','CANCELADA',NULL),
(7980,1299,NULL,18574.50,'MXN',NULL,18574.50,'2016-08-12','2016-10-14',NULL,NULL,NULL,'2016-08-12','FRISA FORJADOS',NULL),
(7981,1300,NULL,34323.00,'MXN',NULL,34323.00,'2016-08-15','2016-08-31',NULL,NULL,NULL,'2016-08-15','Ternium México',NULL),
(7982,1301,NULL,10986.00,'MXN',NULL,10986.00,'2016-08-15','2016-10-14',NULL,NULL,NULL,'2016-08-15','FRISA FORJADOS',NULL),
(7983,1302,NULL,77976.00,'MXN',NULL,77976.00,'2016-08-17','2016-09-20',NULL,NULL,NULL,'2016-08-17','FERROPAK COMERCIAL',NULL),
(7984,1303,NULL,4425.44,'MXN',NULL,4425.44,'2016-08-18','2016-08-22',NULL,NULL,NULL,'2016-08-18','GERARDO RAFAEL FLORES SALINAS',NULL),
(7985,1304,NULL,62265.74,'MXN',NULL,62265.74,'2016-08-19','2016-11-03',NULL,NULL,NULL,'2016-08-19','HARSCO METALS DE MEXICO',NULL),
(7986,1305,NULL,5479.11,'MXN',NULL,5479.11,'2016-08-25','2016-08-29',NULL,NULL,NULL,'2016-08-25','GERARDO RAFAEL FLORES SALINAS',NULL),
(7987,1306,NULL,32434.50,'MXN',NULL,32434.50,'2016-08-30','2016-10-14',NULL,NULL,NULL,'2016-08-30','FRISA FORJADOS',NULL),
(7988,1307,NULL,5280.00,'MXN',NULL,5280.00,'2016-08-31','2016-10-14',NULL,NULL,NULL,'2016-08-31','FRISA FORJADOS',NULL),
(7989,1308,NULL,76896.00,'MXN',NULL,76896.00,'2016-08-31','2016-10-04',NULL,NULL,NULL,'2016-08-31','FERROPAK COMERCIAL',NULL),
(7990,1309,NULL,5799.90,'MXN',NULL,5799.90,'2016-09-01','2016-11-14',NULL,NULL,NULL,'2016-09-01','HARSCO METALS DE MEXICO',NULL),
(7991,1310,NULL,4214.70,'MXN',NULL,4214.70,'2016-09-01','2016-09-02',NULL,NULL,NULL,'2016-09-01','GERARDO RAFAEL FLORES SALINAS',NULL),
(7992,1311,NULL,6500.00,'MXN',NULL,6500.00,'2016-09-02','2016-10-30',NULL,NULL,NULL,'2016-09-02','Ternium México',NULL),
(7993,1312,NULL,4400.00,'MXN',NULL,4400.00,'2016-09-02','2016-10-30',NULL,NULL,NULL,'2016-09-02','Ternium México',NULL),
(7994,1313,NULL,3799.95,'MXN',NULL,3799.95,'2016-09-02','2016-11-14',NULL,NULL,NULL,'2016-09-02','HARSCO METALS DE MEXICO',NULL),
(7995,1314,NULL,2899.95,'MXN',NULL,2899.95,'2016-09-02','2016-11-14',NULL,NULL,NULL,'2016-09-02','HARSCO METALS DE MEXICO',NULL),
(7996,1315,NULL,4239.93,'MXN',NULL,4239.93,'2016-09-07','2016-11-22',NULL,NULL,NULL,'2016-09-07','HARSCO METALS DE MEXICO',NULL),
(7997,1316,NULL,3913.65,'MXN',NULL,3913.65,'2016-09-08','2016-09-12',NULL,NULL,NULL,'2016-09-08','GERARDO RAFAEL FLORES SALINAS',NULL),
(7998,1317,NULL,25134.54,'MXN',NULL,25134.54,'2016-09-13','2016-09-30',NULL,NULL,NULL,'2016-09-13','Ternium México',NULL),
(7999,1318,NULL,5780.16,'MXN',NULL,5780.16,'2016-09-14','2016-09-19',NULL,NULL,NULL,'2016-09-14','GERARDO RAFAEL FLORES SALINAS',NULL),
(8000,1319,NULL,0.00,'MXN',NULL,0.00,'2016-09-20','2013-02-05',NULL,NULL,NULL,'2016-09-20','CANCELADA',NULL),
(8001,1320,NULL,74736.00,'MXN',NULL,74736.00,'2016-09-20','2016-10-20',NULL,NULL,NULL,'2016-09-20','FERROPAK COMERCIAL',NULL),
(8002,1321,NULL,7500.00,'MXN',NULL,7500.00,'2016-09-21','2016-10-14',NULL,NULL,NULL,'2016-09-21','Vesuvius México',NULL),
(8003,1322,NULL,2890.08,'MXN',NULL,2890.08,'2016-09-22','2016-09-26',NULL,NULL,NULL,'2016-09-22','GERARDO RAFAEL FLORES SALINAS',NULL),
(8004,1323,NULL,0.00,'MXN',NULL,0.00,'2016-09-22','2013-02-05',NULL,NULL,NULL,'2016-09-22','CANCELADA',NULL),
(8005,1324,NULL,0.00,'MXN',NULL,0.00,'2016-09-22','2013-02-05',NULL,NULL,NULL,'2016-09-22','CANCELADA',NULL),
(8006,1325,NULL,0.00,'MXN',NULL,0.00,'2016-09-22','2013-02-05',NULL,NULL,NULL,'2016-09-22','CANCELADA',NULL),
(8007,1326,NULL,0.00,'MXN',NULL,0.00,'2016-09-22','2013-02-05',NULL,NULL,NULL,'2016-09-22','CANCELADA',NULL),
(8008,1327,NULL,0.00,'MXN',NULL,0.00,'2016-09-22','2013-02-05',NULL,NULL,NULL,'2016-09-22','CANCELADA',NULL),
(8009,1328,NULL,0.00,'MXN',NULL,0.00,'2016-09-22','2013-02-05',NULL,NULL,NULL,'2016-09-22','CANCELADA',NULL),
(8010,1329,NULL,27745.00,'MXN',NULL,27745.00,'2016-09-22','2016-11-15',NULL,NULL,NULL,'2016-09-22','FRISA FORJADOS',NULL),
(8011,1330,NULL,23278.00,'MXN',NULL,23278.00,'2016-09-29','2016-11-15',NULL,NULL,NULL,'2016-09-29','FRISA FORJADOS',NULL),
(8012,1331,NULL,14499.75,'MXN',NULL,14499.75,'2016-09-29','2015-12-13',NULL,NULL,NULL,'2016-09-29','HARSCO METALS DE MEXICO',NULL),
(8013,1332,NULL,1739.97,'MXN',NULL,1739.97,'2016-09-29','2015-12-13',NULL,NULL,NULL,'2016-09-29','HARSCO METALS DE MEXICO',NULL),
(8014,1333,NULL,23999.85,'MXN',NULL,23999.85,'2016-09-29','2015-12-13',NULL,NULL,NULL,'2016-09-29','HARSCO METALS DE MEXICO',NULL),
(8015,1334,NULL,15280.00,'MXN',NULL,15280.00,'2016-09-29','2015-12-13',NULL,NULL,NULL,'2016-09-29','HARSCO METALS DE MEXICO',NULL),
(8016,1335,NULL,2890.08,'MXN',NULL,2890.08,'2016-09-29','2016-09-30',NULL,NULL,NULL,'2016-09-29','GERARDO RAFAEL FLORES SALINAS',NULL),
(8017,1336,NULL,114399.29,'MXN',NULL,114399.29,'2016-10-04','2016-12-13',NULL,NULL,NULL,'2016-10-04','HARSCO METALS DE MEXICO',NULL),
(8018,1337,NULL,81627.22,'MXN',NULL,81627.22,'2016-10-05','2016-10-31',NULL,NULL,NULL,'2016-10-05','Ternium México',NULL),
(8019,1338,NULL,43288.00,'MXN',NULL,43288.00,'2016-10-05','2016-11-07',NULL,NULL,NULL,'2016-10-05','FERROPAK COMERCIAL',NULL),
(8020,1339,NULL,2890.08,'MXN',NULL,2890.08,'2016-10-06','2016-10-10',NULL,NULL,NULL,'2016-10-06','GERARDO RAFAEL FLORES SALINAS',NULL),
(8021,1340,NULL,40749.00,'MXN',NULL,40749.00,'2016-10-07','2016-11-10',NULL,NULL,NULL,'2016-10-07','TENIGAL',NULL),
(8022,1341,NULL,2558.93,'MXN',NULL,2558.93,'2016-10-13','2016-10-17',NULL,NULL,NULL,'2016-10-13','GERARDO RAFAEL FLORES SALINAS',NULL),
(8023,1342,NULL,0.00,'MXN',NULL,0.00,'2016-10-14','2013-02-05',NULL,NULL,NULL,'2016-10-14','CANCELADA',NULL),
(8024,1343,NULL,0.00,'MXN',NULL,0.00,'2016-10-14','2013-02-05',NULL,NULL,NULL,'2016-10-14','CANCELADA',NULL),
(8025,1344,NULL,0.00,'MXN',NULL,0.00,'2016-10-14','2013-02-05',NULL,NULL,NULL,'2016-10-14','CANCELADA',NULL),
(8026,1345,NULL,0.00,'MXN',NULL,0.00,'2016-10-14','2013-02-05',NULL,NULL,NULL,'2016-10-14','CANCELADA',NULL),
(8027,1346,NULL,0.00,'MXN',NULL,0.00,'2016-10-14','2013-02-05',NULL,NULL,NULL,'2016-10-14','CANCELADA',NULL),
(8028,1347,NULL,0.00,'MXN',NULL,0.00,'2016-10-14','2013-02-05',NULL,NULL,NULL,'2016-10-14','CANCELADA',NULL),
(8029,1348,NULL,0.00,'MXN',NULL,0.00,'2016-10-14','2013-02-05',NULL,NULL,NULL,'2016-10-14','CANCELADA',NULL),
(8030,1349,NULL,0.00,'MXN',NULL,0.00,'2016-10-14','2013-02-05',NULL,NULL,NULL,'2016-10-14','CANCELADA',NULL),
(8031,1350,NULL,0.00,'MXN',NULL,0.00,'2016-10-14','2013-02-05',NULL,NULL,NULL,'2016-10-14','CANCELADA',NULL),
(8032,1351,NULL,0.00,'MXN',NULL,0.00,'2016-10-14','2013-02-05',NULL,NULL,NULL,'2016-10-14','CANCELADA',NULL),
(8033,1352,NULL,0.00,'MXN',NULL,0.00,'2016-10-14','2013-02-05',NULL,NULL,NULL,'2016-10-14','CANCELADA',NULL),
(8034,1353,NULL,38039.00,'MXN',NULL,38039.00,'2016-10-14','2016-12-15',NULL,NULL,NULL,'2016-10-14','FRISA FORJADOS',NULL),
(8035,1354,NULL,38016.00,'MXN',NULL,38016.00,'2016-10-18','2016-11-17',NULL,NULL,NULL,'2016-10-18','FERROPAK COMERCIAL',NULL),
(8036,1355,NULL,50322.00,'MXN',NULL,50322.00,'2016-10-19','2016-12-15',NULL,NULL,NULL,'2016-10-19','FRISA FORJADOS',NULL),
(8037,1356,NULL,2378.30,'MXN',NULL,2378.30,'2016-10-20','2016-10-28',NULL,NULL,NULL,'2016-10-20','GERARDO RAFAEL FLORES SALINAS',NULL),
(8038,1357,NULL,16794.00,'MXN',NULL,16794.00,'2016-10-20','2016-11-30',NULL,NULL,NULL,'2016-10-20','Ternium México',NULL),
(8039,1358,NULL,15840.00,'MXN',NULL,15840.00,'2016-10-21','2016-12-15',NULL,NULL,NULL,'2016-10-21','FRISA FORJADOS',NULL),
(8040,1359,NULL,183520.00,'MXN',NULL,183520.00,'2016-10-25','2016-11-30',NULL,NULL,NULL,'2016-10-25','Ternium México',NULL),
(8041,1360,NULL,2649.24,'MXN',NULL,2649.24,'2016-10-27','2016-10-28',NULL,NULL,NULL,'2016-10-27','GERARDO RAFAEL FLORES SALINAS',NULL),
(8042,1361,NULL,235000.00,'MXN',NULL,235000.00,'2016-10-27','2016-11-30',NULL,NULL,NULL,'2016-10-27','Ternium México',NULL),
(8043,1362,NULL,0.00,'MXN',NULL,0.00,'2016-10-28','2013-02-05',NULL,NULL,NULL,'2016-10-28','CANCELADA',NULL),
(8044,1363,NULL,2890.08,'MXN',NULL,2890.08,'2016-11-07','2016-11-03',NULL,NULL,NULL,'2016-11-07','GERARDO RAFAEL FLORES SALINAS',NULL),
(8045,1364,NULL,38016.00,'MXN',NULL,38016.00,'2016-11-07','2016-12-08',NULL,NULL,NULL,'2016-11-07','FERROPAK COMERCIAL',NULL),
(8046,1365,NULL,39712.00,'MXN',NULL,39712.00,'2016-11-07','2017-01-13',NULL,NULL,NULL,'2016-11-07','FRISA FORJADOS',NULL),
(8047,1366,NULL,0.00,'MXN',NULL,0.00,'2016-11-08','2013-02-05',NULL,NULL,NULL,'2016-11-08','CANCELADA',NULL),
(8048,1367,NULL,0.00,'MXN',NULL,0.00,'2016-11-08','2013-02-05',NULL,NULL,NULL,'2016-11-08','CANCELADA',NULL),
(8049,1368,NULL,0.00,'MXN',NULL,0.00,'2016-11-08','2013-02-05',NULL,NULL,NULL,'2016-11-08','CANCELADA',NULL),
(8050,1369,NULL,56140.50,'MXN',NULL,56140.50,'2016-11-08','2017-01-13',NULL,NULL,NULL,'2016-11-08','FRISA FORJADOS',NULL),
(8051,1370,NULL,1023.57,'MXN',NULL,1023.57,'2016-11-10','2016-11-11',NULL,NULL,NULL,'2016-11-10','GERARDO RAFAEL FLORES SALINAS',NULL),
(8052,1371,NULL,37301.28,'MXN',NULL,37301.28,'2016-11-14','2016-12-29',NULL,NULL,NULL,'2016-11-14','Ternium México',NULL),
(8053,1372,NULL,16192.00,'MXN',NULL,16192.00,'2016-11-16','2017-01-13',NULL,NULL,NULL,'2016-11-16','FRISA FORJADOS',NULL),
(8054,1373,NULL,38016.00,'MXN',NULL,38016.00,'2016-11-16','2016-12-20',NULL,NULL,NULL,'2016-11-16','FERROPAK COMERCIAL',NULL),
(8055,1374,NULL,36092.46,'MXN',NULL,36092.46,'2016-11-22','2016-12-29',NULL,NULL,NULL,'2016-11-22','Ternium México',NULL),
(8056,1375,NULL,0.00,'MXN',NULL,0.00,'2016-11-22','2013-02-05',NULL,NULL,NULL,'2016-11-22','CANCELADA',NULL),
(8057,1376,NULL,3750.00,'MXN',NULL,3750.00,'2016-11-24','2016-12-16',NULL,NULL,NULL,'2016-11-24','Vesuvius México',NULL),
(8058,1377,11,46395.18,'MXN',NULL,46395.18,'2016-11-24','2016-11-25',NULL,NULL,NULL,'2016-11-24','Transportadores Industriales de México',999),
(8059,1378,NULL,54377.00,'MXN',NULL,54377.00,'2016-11-25','2016-12-29',NULL,NULL,NULL,'2016-11-25','TENIGAL',NULL),
(8060,1379,11,30150.00,'MXN',NULL,30150.00,'2016-11-25','2016-11-25',NULL,NULL,NULL,'2016-11-25','Transportadores Industriales de México',999),
(8061,1380,NULL,5280.00,'MXN',NULL,5280.00,'2016-11-29','2017-01-13',NULL,NULL,NULL,'2016-11-29','FRISA FORJADOS',NULL),
(8062,1381,NULL,38016.00,'MXN',NULL,38016.00,'2016-11-29','2016-12-29',NULL,NULL,NULL,'2016-11-29','FERROPAK COMERCIAL',NULL),
(8063,1382,11,46715.09,'MXN',NULL,46715.09,'2016-12-02','2016-12-14',NULL,NULL,NULL,'2016-12-02','Transportadores Industriales de México',999),
(8064,1383,NULL,17391.00,'MXN',NULL,17391.00,'2016-12-02','2017-01-13',NULL,NULL,NULL,'2016-12-02','FRISA FORJADOS',NULL),
(8065,1384,11,30150.00,'MXN',NULL,30150.00,'2016-12-08','2016-12-14',NULL,NULL,NULL,'2016-12-08','Transportadores Industriales de México',999),
(8066,1385,NULL,14439.00,'MXN',NULL,14439.00,'2016-12-14','2017-02-15',NULL,NULL,NULL,'2016-12-14','FRISA FORJADOS',NULL),
(8067,1386,NULL,40176.00,'MXN',NULL,40176.00,'2016-12-14','2017-01-17',NULL,NULL,NULL,'2016-12-14','FERROPAK COMERCIAL',NULL),
(8068,1387,NULL,2500.00,'MXN',NULL,2500.00,'2016-12-14','2016-12-16',NULL,NULL,NULL,'2016-12-14','Vesuvius México',NULL),
(8069,1388,NULL,22000.00,'MXN',NULL,22000.00,'2016-12-16','2017-01-31',NULL,NULL,NULL,'2016-12-16','Ternium México',NULL),
(8070,1389,NULL,2920.00,'MXN',NULL,2920.00,'2016-12-16','2017-01-31',NULL,NULL,NULL,'2016-12-16','Ternium México',NULL),
(8071,1390,NULL,0.00,'MXN',NULL,0.00,'2016-12-16','2013-02-05',NULL,NULL,NULL,'2016-12-16','CANCELADA',NULL),
(8072,1391,NULL,5280.00,'MXN',NULL,5280.00,'2016-12-16','2017-02-15',NULL,NULL,NULL,'2016-12-16','FRISA FORJADOS',NULL),
(8073,1392,11,30150.00,'MXN',NULL,30150.00,'2016-12-19','2016-12-22',NULL,NULL,NULL,'2016-12-19','Transportadores Industriales de México',999),
(8074,1393,11,52312.05,'MXN',NULL,52312.05,'2016-12-22','2016-12-22',NULL,NULL,NULL,'2016-12-22','Transportadores Industriales de México',999),
(8075,1394,11,27757.07,'MXN',NULL,27757.07,'2016-12-26','2016-12-26',NULL,NULL,NULL,'2016-12-26','Transportadores Industriales de México',999),
(8076,1395,11,32624.75,'MXN',NULL,32624.75,'2016-12-26','2016-12-26',NULL,NULL,NULL,'2016-12-26','Transportadores Industriales de México',999),
(8077,1396,11,36316.35,'MXN',NULL,36316.35,'2016-12-28','2016-12-28',NULL,NULL,NULL,'2016-12-28','Transportadores Industriales de México',999),
(8078,1397,NULL,22385.00,'MXN',NULL,22385.00,'2017-01-02','2017-03-15',NULL,NULL,NULL,'2017-01-02','FRISA FORJADOS',NULL),
(8079,1398,NULL,53838.68,'MXN',NULL,53838.68,'2017-01-02','2017-02-28',NULL,NULL,NULL,'2017-01-02','Ternium México',NULL),
(8080,1399,NULL,293600.00,'MXN',NULL,293600.00,'2017-01-02','2017-02-28',NULL,NULL,NULL,'2017-01-02','Ternium México',NULL),
(8081,1400,NULL,11599.80,'MXN',NULL,11599.80,'2017-01-03','2017-03-27',NULL,NULL,NULL,'2017-01-03','HARSCO METALS DE MEXICO',NULL),
(8082,1401,NULL,2319.96,'MXN',NULL,2319.96,'2017-01-03','2017-03-17',NULL,NULL,NULL,'2017-01-03','HARSCO METALS DE MEXICO',NULL),
(8083,1402,NULL,2126.63,'MXN',NULL,2126.63,'2017-01-03','2017-03-17',NULL,NULL,NULL,'2017-01-03','HARSCO METALS DE MEXICO',NULL),
(8084,1403,NULL,5799.90,'MXN',NULL,5799.90,'2017-01-03','2017-03-17',NULL,NULL,NULL,'2017-01-03','HARSCO METALS DE MEXICO',NULL),
(8085,1404,NULL,2706.62,'MXN',NULL,2706.62,'2017-01-03','2017-03-17',NULL,NULL,NULL,'2017-01-03','HARSCO METALS DE MEXICO',NULL),
(8086,1405,11,39669.83,'MXN',NULL,39669.83,'2017-01-06','2017-01-06',NULL,NULL,NULL,'2017-01-06','Transportadores Industriales de México',999),
(8087,1406,11,35801.27,'MXN',NULL,35801.27,'2017-01-06','2017-01-06',NULL,NULL,NULL,'2017-01-06','Transportadores Industriales de México',999),
(8088,1407,NULL,60984.00,'MXN',NULL,60984.00,'2017-01-09','2017-02-09',NULL,NULL,NULL,'2017-01-09','FERROPAK COMERCIAL',NULL),
(8089,1408,NULL,9696.00,'MXN',NULL,9696.00,'2017-01-10','2017-02-09',NULL,NULL,NULL,'2017-01-10','FERROPAK COMERCIAL',NULL),
(8090,1409,NULL,33050.00,'MXN',NULL,33050.00,'2017-01-10','2017-01-26',NULL,NULL,NULL,'2017-01-10','FERROPAK COMERCIAL',NULL),
(8091,1410,11,40650.00,'MXN',NULL,40650.00,'2017-01-10','2017-01-13',NULL,NULL,NULL,'2017-01-10','Transportadores Industriales de México',999),
(8092,1411,11,36200.25,'MXN',NULL,36200.25,'2017-01-12','2017-01-13',NULL,NULL,NULL,'2017-01-12','Transportadores Industriales de México',999),
(8093,1412,NULL,98672.23,'MXN',NULL,98672.23,'2017-01-17','2017-04-04',NULL,NULL,NULL,'2017-01-17','HARSCO METALS DE MEXICO',NULL),
(8094,1413,NULL,2793.29,'MXN',NULL,2793.29,'2017-01-23','2017-04-04',NULL,NULL,NULL,'2017-01-23','HARSCO METALS DE MEXICO',NULL),
(8095,1414,NULL,2319.96,'MXN',NULL,2319.96,'2017-01-23','2017-04-04',NULL,NULL,NULL,'2017-01-23','HARSCO METALS DE MEXICO',NULL),
(8096,1415,NULL,53424.00,'MXN',NULL,53424.00,'2017-01-24','2017-02-23',NULL,NULL,NULL,'2017-01-24','FERROPAK COMERCIAL',NULL),
(8097,1416,NULL,19392.00,'MXN',NULL,19392.00,'2017-01-24','2017-02-23',NULL,NULL,NULL,'2017-01-24','FERROPAK COMERCIAL',NULL),
(8098,1417,NULL,9500.00,'MXN',NULL,9500.00,'2017-01-24','2017-02-28',NULL,NULL,NULL,'2017-01-24','Ternium México',NULL),
(8099,1418,NULL,4848.00,'MXN',NULL,4848.00,'2017-01-24','2017-03-15',NULL,NULL,NULL,'2017-01-24','FRISA FORJADOS',NULL),
(8100,1419,NULL,6480.00,'MXN',NULL,6480.00,'2017-01-27','2017-02-28',NULL,NULL,NULL,'2017-01-27','FERROPAK COMERCIAL',NULL),
(8101,1420,NULL,0.00,'MXN',NULL,0.00,'2017-02-07','2013-02-05',NULL,NULL,NULL,'2017-02-07','CANCELADA',NULL),
(8102,1421,NULL,0.00,'MXN',NULL,0.00,'2017-02-07','2013-02-05',NULL,NULL,NULL,'2017-02-07','CANCELADA',NULL),
(8103,1422,NULL,0.00,'MXN',NULL,0.00,'2017-02-07','2013-02-05',NULL,NULL,NULL,'2017-02-07','CANCELADA',NULL),
(8104,1423,NULL,0.00,'MXN',NULL,0.00,'2017-02-07','2013-02-05',NULL,NULL,NULL,'2017-02-07','CANCELADA',NULL),
(8105,1424,NULL,33565.00,'MXN',NULL,33565.00,'2017-02-07','2017-02-10',NULL,NULL,NULL,'2017-02-07','FRISA FORJADOS',NULL),
(8106,1425,NULL,8907.00,'MXN',NULL,8907.00,'2017-02-07','2017-02-10',NULL,NULL,NULL,'2017-02-07','FRISA FORJADOS',NULL),
(8107,1426,NULL,0.00,'MXN',NULL,0.00,'2017-02-14','2013-02-05',NULL,NULL,NULL,'2017-02-14','CANCELADA',NULL),
(8108,1427,NULL,28280.00,'MXN',NULL,28280.00,'2017-02-14','2017-03-16',NULL,NULL,NULL,'2017-02-14','FERROPAK COMERCIAL',NULL),
(8109,1428,NULL,55944.00,'MXN',NULL,55944.00,'2017-02-14','2017-03-16',NULL,NULL,NULL,'2017-02-14','FERROPAK COMERCIAL',NULL),
(8110,1429,NULL,6480.00,'MXN',NULL,6480.00,'2017-02-14','2017-03-16',NULL,NULL,NULL,'2017-02-14','FERROPAK COMERCIAL',NULL),
(8111,1430,NULL,40749.00,'MXN',NULL,40749.00,'2017-02-17','2017-03-23',NULL,NULL,NULL,'2017-02-17','TENIGAL',NULL),
(8112,1431,NULL,0.00,'MXN',NULL,0.00,'2017-02-21','2013-02-05',NULL,NULL,NULL,'2017-02-21','CANCELADA',NULL),
(8113,1432,NULL,37869.58,'MXN',NULL,37869.58,'2017-02-27','2017-03-31',NULL,NULL,NULL,'2017-02-27','Ternium México',NULL),
(8114,1433,NULL,103245.63,'MXN',NULL,103245.63,'2017-03-07','2017-03-31',NULL,NULL,NULL,'2017-03-07','Ternium México',NULL),
(8115,1434,NULL,31800.00,'MXN',NULL,31800.00,'2017-03-08','2017-04-28',NULL,NULL,NULL,'2017-03-08','Ternium México',NULL),
(8116,1435,NULL,9775.00,'MXN',NULL,9775.00,'2017-03-14','2017-03-21',NULL,NULL,NULL,'2017-03-14','ARAMARK SERVICIOS IND.DE MEXICO S DE RL DE CV',NULL),
(8117,1436,NULL,43056.00,'MXN',NULL,43056.00,'2017-03-21','2017-04-20',NULL,NULL,NULL,'2017-03-21','FERROPAK COMERCIAL',NULL),
(8118,1437,NULL,9696.00,'MXN',NULL,9696.00,'2017-03-21','2017-04-20',NULL,NULL,NULL,'2017-03-21','FERROPAK COMERCIAL',NULL),
(8119,1438,NULL,0.00,'MXN',NULL,0.00,'2017-03-21','2013-02-05',NULL,NULL,NULL,'2017-03-21','CANCELADA',NULL),
(8120,1439,NULL,13550.00,'MXN',NULL,13550.00,'2017-03-21','2017-06-08',NULL,NULL,NULL,'2017-03-21','HARSCO METALS DE MEXICO',NULL),
(8121,1440,NULL,9775.00,'MXN',NULL,9775.00,'2017-03-27','2017-04-06',NULL,NULL,NULL,'2017-03-27','ARAMARK SERVICIOS IND.DE MEXICO S DE RL DE CV',NULL),
(8122,1441,NULL,6480.00,'MXN',NULL,6480.00,'2017-03-27','2017-04-27',NULL,NULL,NULL,'2017-03-27','FERROPAK COMERCIAL',NULL),
(8123,1442,NULL,24595.50,'MXN',NULL,24595.50,'2017-03-27','2017-04-12',NULL,NULL,NULL,'2017-03-27','FRISA FORJADOS',NULL),
(8124,1443,NULL,6336.20,'MXN',NULL,6336.20,'2017-03-28','2017-04-17',NULL,NULL,NULL,'2017-03-28','Vesuvius México',NULL),
(8125,1444,NULL,50275.00,'MXN',NULL,50275.00,'2017-03-29','2017-04-28',NULL,NULL,NULL,'2017-03-29','Ternium México',NULL),
(8126,1445,NULL,9555.00,'MXN',NULL,9555.00,'2017-03-29','2017-04-28',NULL,NULL,NULL,'2017-03-29','Ternium México',NULL),
(8127,1446,NULL,21973.50,'MXN',NULL,21973.50,'2017-03-30','2017-05-03',NULL,NULL,NULL,'2017-03-30','FERROPAK COMERCIAL',NULL),
(8128,1447,NULL,0.00,'MXN',NULL,0.00,'2017-03-30','2013-02-05',NULL,NULL,NULL,'2017-03-30','CANCELADA',NULL),
(8129,1448,NULL,0.00,'MXN',NULL,0.00,'2017-03-30','2013-02-05',NULL,NULL,NULL,'2017-03-30','CANCELADA',NULL),
(8130,1449,NULL,0.00,'MXN',NULL,0.00,'2017-03-30','2013-02-05',NULL,NULL,NULL,'2017-03-30','CANCELADA',NULL),
(8131,1450,NULL,0.00,'MXN',NULL,0.00,'2017-03-30','2013-02-05',NULL,NULL,NULL,'2017-03-30','CANCELADA',NULL),
(8132,1451,NULL,0.00,'MXN',NULL,0.00,'2017-03-30','2013-02-05',NULL,NULL,NULL,'2017-03-30','CANCELADA',NULL),
(8133,1452,NULL,0.00,'MXN',NULL,0.00,'2017-03-30','2013-02-05',NULL,NULL,NULL,'2017-03-30','CANCELADA',NULL),
(8134,1453,NULL,0.00,'MXN',NULL,0.00,'2017-03-30','2013-02-05',NULL,NULL,NULL,'2017-03-30','CANCELADA',NULL),
(8135,1454,NULL,10290.00,'MXN',NULL,10290.00,'2017-03-30','2017-05-15',NULL,NULL,NULL,'2017-03-30','FRISA FORJADOS',NULL),
(8136,1455,NULL,8208.00,'MXN',NULL,8208.00,'2017-03-31','2017-04-12',NULL,NULL,NULL,'2017-03-31','FRISA FORJADOS',NULL),
(8137,1456,NULL,31104.00,'MXN',NULL,31104.00,'2017-03-31','2017-05-03',NULL,NULL,NULL,'2017-03-31','FERROPAK COMERCIAL',NULL),
(8138,1457,NULL,5765.00,'MXN',NULL,5765.00,'2017-04-03','2017-06-15',NULL,NULL,NULL,'2017-04-03','FRISA FORJADOS',NULL),
(8139,1458,NULL,11960.00,'MXN',NULL,11960.00,'2017-04-21','2017-05-30',NULL,NULL,NULL,'2017-04-21','LIEBHERR MONTERREY',NULL),
(8140,1459,NULL,10800.00,'MXN',NULL,10800.00,'2017-04-27','2017-05-30',NULL,NULL,NULL,'2017-04-27','FERROPAK COMERCIAL',NULL),
(8141,1460,NULL,4500.00,'MXN',NULL,4500.00,'2017-04-28','2017-05-05',NULL,NULL,NULL,'2017-04-28','Vesuvius México',NULL),
(8142,1461,NULL,37352.00,'MXN',NULL,37352.00,'2017-05-04','2017-07-10',NULL,NULL,NULL,'2017-05-04','HARSCO METALS DE MEXICO',NULL),
(8143,1462,NULL,7920.00,'MXN',NULL,7920.00,'2017-05-04','2017-07-10',NULL,NULL,NULL,'2017-05-04','HARSCO METALS DE MEXICO',NULL),
(8144,1463,NULL,13000.00,'MXN',NULL,13000.00,'2017-05-09','2017-06-30',NULL,NULL,NULL,'2017-05-09','Ternium México',NULL),
(8145,1464,NULL,65303.74,'MXN',NULL,65303.74,'2017-05-16','2017-05-30',NULL,NULL,NULL,'2017-05-16','Ternium México',NULL),
(8146,1465,NULL,64228.55,'MXN',NULL,64228.55,'2017-05-19','2017-06-30',NULL,NULL,NULL,'2017-05-19','Ternium México',NULL),
(8147,1466,NULL,17416.00,'MXN',NULL,17416.00,'2017-05-22','2017-06-30',NULL,NULL,NULL,'2017-05-22','Ternium México',NULL),
(8148,1467,NULL,136944.00,'MXN',NULL,136944.00,'2017-05-24','2017-06-28',NULL,NULL,NULL,'2017-05-24','FERROPAK COMERCIAL',NULL),
(8149,1468,NULL,3600.00,'MXN',NULL,3600.00,'2017-05-30','2017-06-30',NULL,NULL,NULL,'2017-05-30','FERROPAK COMERCIAL',NULL),
(8150,1469,11,23128.05,'MXN',NULL,23128.05,'2017-06-08','2017-06-08',NULL,NULL,NULL,'2017-06-08','Transportadores Industriales de México',999),
(8151,1470,NULL,7500.00,'MXN',NULL,7500.00,'2017-06-13','2017-07-31',NULL,NULL,NULL,'2017-06-13','Ternium México',NULL),
(8152,1471,NULL,13000.00,'MXN',NULL,13000.00,'2017-06-13','2017-07-31',NULL,NULL,NULL,'2017-06-13','Ternium México',NULL),
(8153,1472,11,20604.12,'MXN',NULL,20604.12,'2017-06-05','2017-06-15',NULL,NULL,NULL,'2017-06-05','Transportadores Industriales de México',999),
(8154,1473,NULL,31104.00,'MXN',NULL,31104.00,'2017-06-16','2017-07-18',NULL,NULL,NULL,'2017-06-16','FERROPAK COMERCIAL',NULL),
(8155,1474,NULL,19440.00,'MXN',NULL,19440.00,'2017-06-21','2017-07-25',NULL,NULL,NULL,'2017-06-21','FERROPAK COMERCIAL',NULL),
(8156,1475,11,17075.10,'MXN',NULL,17075.10,'2017-06-22','2017-06-22',NULL,NULL,NULL,'2017-06-22','Transportadores Industriales de México',999),
(8157,1476,11,13210.90,'MXN',NULL,13210.90,'2017-06-29','2017-06-23',NULL,NULL,NULL,'2017-06-29','Transportadores Industriales de México',999),
(8158,1477,NULL,4500.00,'MXN',NULL,4500.00,'2017-07-05','2017-07-21',NULL,NULL,NULL,'2017-07-05','Vesuvius México',NULL),
(8159,1478,NULL,14000.00,'MXN',NULL,14000.00,'2017-07-05','2017-07-21',NULL,NULL,NULL,'2017-07-05','Vesuvius México',NULL),
(8160,1479,NULL,0.00,'MXN',NULL,0.00,'2017-07-05','2013-02-05',NULL,NULL,NULL,'2017-07-05','CANCELADA',NULL),
(8161,1480,NULL,3800.00,'MXN',NULL,3800.00,'2017-07-05','2017-09-11',NULL,NULL,NULL,'2017-07-05','HARSCO METALS DE MEXICO',NULL),
(8162,1481,NULL,4290.00,'MXN',NULL,4290.00,'2017-07-05','2017-09-11',NULL,NULL,NULL,'2017-07-05','HARSCO METALS DE MEXICO',NULL),
(8163,1482,NULL,18910.00,'MXN',NULL,18910.00,'2017-07-05','2017-09-11',NULL,NULL,NULL,'2017-07-05','HARSCO METALS DE MEXICO',NULL),
(8164,1483,NULL,57200.00,'MXN',NULL,57200.00,'2017-07-05','2017-09-11',NULL,NULL,NULL,'2017-07-05','HARSCO METALS DE MEXICO',NULL),
(8165,1484,NULL,38800.00,'MXN',NULL,38800.00,'2017-07-05','2017-09-11',NULL,NULL,NULL,'2017-07-05','HARSCO METALS DE MEXICO',NULL),
(8166,1485,NULL,6100.00,'MXN',NULL,6100.00,'2017-07-06','2017-08-15',NULL,NULL,NULL,'2017-07-06','LIEBHERR MONTERREY',NULL),
(8167,1486,11,14221.36,'MXN',NULL,14221.36,'2017-07-06','2017-07-06',NULL,NULL,NULL,'2017-07-06','Transportadores Industriales de México',999),
(8168,1487,11,15498.45,'MXN',NULL,15498.45,'2017-07-13','2017-07-13',NULL,NULL,NULL,'2017-07-13','Transportadores Industriales de México',999),
(8169,1488,NULL,56560.00,'MXN',NULL,56560.00,'2017-07-18','2017-08-17',NULL,NULL,NULL,'2017-07-18','FERROPAK COMERCIAL',NULL),
(8170,1489,NULL,36748.66,'MXN',NULL,36748.66,'2017-07-18','2017-08-31',NULL,NULL,NULL,'2017-07-18','Ternium México',NULL),
(8171,1490,NULL,33936.00,'MXN',NULL,33936.00,'2017-07-20','2017-08-22',NULL,NULL,NULL,'2017-07-20','FERROPAK COMERCIAL',NULL),
(8172,1491,NULL,48384.00,'MXN',NULL,48384.00,'2017-07-20','2017-08-22',NULL,NULL,NULL,'2017-07-20','FERROPAK COMERCIAL',NULL),
(8173,1492,11,16080.20,'MXN',NULL,16080.20,'2017-07-20','2017-07-21',NULL,NULL,NULL,'2017-07-20','Transportadores Industriales de México',999),
(8174,1493,NULL,5700.00,'MXN',NULL,5700.00,'2017-07-25','2017-08-31',NULL,NULL,NULL,'2017-07-25','Ternium México',NULL),
(8175,1494,NULL,8000.00,'MXN',NULL,8000.00,'2017-07-25','2017-08-31',NULL,NULL,NULL,'2017-07-25','Ternium México',NULL),
(8176,1495,NULL,0.00,'MXN',NULL,0.00,'2017-07-25','2013-02-05',NULL,NULL,NULL,'2017-07-25','CANCELADA',NULL),
(8177,1496,NULL,19500.00,'MXN',NULL,19500.00,'2017-07-25','2017-08-31',NULL,NULL,NULL,'2017-07-25','Ternium México',NULL),
(8178,1497,NULL,2250.00,'MXN',NULL,2250.00,'2017-07-25','2017-08-31',NULL,NULL,NULL,'2017-07-25','Ternium México',NULL),
(8179,1498,NULL,11406.50,'MXN',NULL,11406.50,'2017-07-26','2017-08-31',NULL,NULL,NULL,'2017-07-26','Ternium México',NULL),
(8180,1499,NULL,5018.86,'MXN',NULL,5018.86,'2017-07-26','2017-08-31',NULL,NULL,NULL,'2017-07-26','Ternium México',NULL),
(8181,1500,11,14823.98,'MXN',NULL,14823.98,'2017-07-27','2017-07-28',NULL,NULL,NULL,'2017-07-27','Transportadores Industriales de México',999),
(8182,1501,NULL,75240.00,'MXN',NULL,75240.00,'2017-08-02','2017-09-05',NULL,NULL,NULL,'2017-08-02','FERROPAK COMERCIAL',NULL),
(8183,1502,NULL,54944.00,'MXN',NULL,54944.00,'2017-08-02','2017-09-05',NULL,NULL,NULL,'2017-08-02','FERROPAK COMERCIAL',NULL),
(8184,1503,11,17437.05,'MXN',NULL,17437.05,'2017-08-03','2017-08-03',NULL,NULL,NULL,'2017-08-03','Transportadores Industriales de México',999),
(8185,1504,11,13580.64,'MXN',NULL,13580.64,'2017-08-10','2017-08-10',NULL,NULL,NULL,'2017-08-10','Transportadores Industriales de México',999),
(8186,1505,11,13426.09,'MXN',NULL,13426.09,'2017-08-17','2017-08-17',NULL,NULL,NULL,'2017-08-17','Transportadores Industriales de México',999),
(8187,1506,11,14894.30,'MXN',NULL,14894.30,'2017-08-24','2017-08-24',NULL,NULL,NULL,'2017-08-24','Transportadores Industriales de México',999),
(8188,1507,NULL,21350.00,'MXN',NULL,21350.00,'2017-08-28','2017-11-03',NULL,NULL,NULL,'2017-08-28','HARSCO METALS DE MEXICO',NULL),
(8189,1508,NULL,25987.50,'MXN',NULL,25987.50,'2017-08-28','2017-11-03',NULL,NULL,NULL,'2017-08-28','HARSCO METALS DE MEXICO',NULL),
(8190,1509,NULL,13860.00,'MXN',NULL,13860.00,'2017-08-28','2017-11-03',NULL,NULL,NULL,'2017-08-28','HARSCO METALS DE MEXICO',NULL),
(8191,1510,NULL,34950.00,'MXN',NULL,34950.00,'2017-08-28','2017-11-03',NULL,NULL,NULL,'2017-08-28','HARSCO METALS DE MEXICO',NULL),
(8192,1511,NULL,41472.00,'MXN',NULL,41472.00,'2017-08-29','2017-09-28',NULL,NULL,NULL,'2017-08-29','FERROPAK COMERCIAL',NULL),
(8193,1512,NULL,38784.00,'MXN',NULL,38784.00,'2017-08-29','2017-09-28',NULL,NULL,NULL,'2017-08-29','FERROPAK COMERCIAL',NULL),
(8194,1513,NULL,74186.10,'MXN',NULL,74186.10,'2017-08-30','2017-09-29',NULL,NULL,NULL,'2017-08-30','Ternium México',NULL),
(8195,1514,11,14175.48,'MXN',NULL,14175.48,'2017-08-31','2017-09-01',NULL,NULL,NULL,'2017-08-31','Transportadores Industriales de México',999),
(8196,1515,NULL,4750.00,'MXN',NULL,4750.00,'2017-09-05','2017-10-31',NULL,NULL,NULL,'2017-09-05','Ternium México',NULL),
(8197,1516,NULL,2650.00,'MXN',NULL,2650.00,'2017-09-05','2016-11-06',NULL,NULL,NULL,'2017-09-05','HARSCO METALS DE MEXICO',NULL),
(8198,1517,NULL,4228.75,'MXN',NULL,4228.75,'2017-09-05','2016-11-06',NULL,NULL,NULL,'2017-09-05','HARSCO METALS DE MEXICO',NULL),
(8199,1518,NULL,3400.00,'MXN',NULL,3400.00,'2017-09-05','2016-11-06',NULL,NULL,NULL,'2017-09-05','HARSCO METALS DE MEXICO',NULL),
(8200,1519,11,13415.24,'MXN',NULL,13415.24,'2017-09-07','2017-09-08',NULL,NULL,NULL,'2017-09-07','Transportadores Industriales de México',999),
(8201,1520,11,15711.56,'MXN',NULL,15711.56,'2017-09-14','2017-09-18',NULL,NULL,NULL,'2017-09-14','Transportadores Industriales de México',999),
(8202,1521,NULL,9500.00,'MXN',NULL,9500.00,'2017-09-20','2017-10-31',NULL,NULL,NULL,'2017-09-20','Ternium México',NULL),
(8203,1522,11,18053.13,'MXN',NULL,18053.13,'2017-09-21','2017-09-22',NULL,NULL,NULL,'2017-09-21','Transportadores Industriales de México',999),
(8204,1523,NULL,5932.00,'MXN',NULL,5932.00,NULL,'2017-10-31',NULL,NULL,NULL,NULL,'Ternium México',NULL),
(8205,1524,NULL,4950.00,'MXN',NULL,4950.00,'2017-09-27','2017-12-06',NULL,NULL,NULL,'2017-09-27','HARSCO METALS DE MEXICO',NULL),
(8206,1525,NULL,2475.00,'MXN',NULL,2475.00,'2017-09-27','2017-12-06',NULL,NULL,NULL,'2017-09-27','HARSCO METALS DE MEXICO',NULL),
(8207,1526,NULL,117000.00,'MXN',NULL,117000.00,'2017-09-27','2017-12-06',NULL,NULL,NULL,'2017-09-27','HARSCO METALS DE MEXICO',NULL),
(8208,1527,NULL,3390.00,'MXN',NULL,3390.00,'2017-09-27','2017-12-06',NULL,NULL,NULL,'2017-09-27','HARSCO METALS DE MEXICO',NULL),
(8209,1528,11,13988.68,'MXN',NULL,13988.68,'2017-09-28','2017-09-28',NULL,NULL,NULL,'2017-09-28','Transportadores Industriales de México',999),
(8210,1529,NULL,86360.40,'MXN',NULL,86360.40,'2017-10-03','2017-11-03',NULL,NULL,NULL,'2017-10-03','FERROPAK COMERCIAL',NULL),
(8211,1530,NULL,46056.00,'MXN',NULL,46056.00,'2017-10-03','2017-11-03',NULL,NULL,NULL,'2017-10-03','FERROPAK COMERCIAL',NULL),
(8212,1531,11,13976.25,'MXN',NULL,13976.25,'2017-10-05','2017-10-06',NULL,NULL,NULL,'2017-10-05','Transportadores Industriales de México',999),
(8213,1532,11,14685.75,'MXN',NULL,14685.75,'2017-10-17','2017-10-12',NULL,NULL,NULL,'2017-10-17','Transportadores Industriales de México',999),
(8214,1533,NULL,16560.00,'MXN',NULL,16560.00,'2017-10-17','2017-11-16',NULL,NULL,NULL,'2017-10-17','FERROPAK COMERCIAL',NULL),
(8215,1534,NULL,60438.88,'MXN',NULL,60438.88,'2017-10-17','2017-11-30',NULL,NULL,NULL,'2017-10-17','Ternium México',NULL),
(8216,1535,11,13941.46,'MXN',NULL,13941.46,'2017-10-19','2017-10-19',NULL,NULL,NULL,'2017-10-19','Transportadores Industriales de México',999),
(8217,1536,11,17801.07,'MXN',NULL,17801.07,'2017-10-26','2017-10-26',NULL,NULL,NULL,'2017-10-26','Transportadores Industriales de México',999),
(8218,1537,NULL,0.00,'MXN',NULL,0.00,'2017-10-27','2013-02-05',NULL,NULL,NULL,'2017-10-27','CANCELADA',NULL),
(8219,1538,NULL,112168.40,'MXN',NULL,112168.40,'2017-10-27','2017-11-30',NULL,NULL,NULL,'2017-10-27','Ternium México',NULL),
(8220,1539,NULL,80208.00,'MXN',NULL,80208.00,'2017-11-01','2017-12-04',NULL,NULL,NULL,'2017-11-01','FERROPAK COMERCIAL',NULL),
(8221,1540,11,11589.41,'MXN',NULL,11589.41,'2017-11-02','2017-11-16',NULL,NULL,NULL,'2017-11-02','Transportadores Industriales de México',999),
(8222,1541,NULL,51207.00,'MXN',NULL,51207.00,'2017-11-08','2017-12-11',NULL,NULL,NULL,'2017-11-08','FERROPAK COMERCIAL',NULL),
(8223,1542,11,11947.20,'MXN',NULL,11947.20,'2017-11-09','2017-11-23',NULL,NULL,NULL,'2017-11-09','Transportadores Industriales de México',999),
(8224,1543,11,12949.01,'MXN',NULL,12949.01,'2017-11-16','2017-11-23',NULL,NULL,NULL,'2017-11-16','Transportadores Industriales de México',999),
(8225,1544,NULL,0.00,'MXN',NULL,0.00,'2017-11-16','2013-02-05',NULL,NULL,NULL,'2017-11-16','CANCELADA',NULL),
(8226,1545,NULL,3390.00,'MXN',NULL,3390.00,'2017-11-17','2018-01-22',NULL,NULL,NULL,'2017-11-17','HARSCO METALS DE MEXICO',NULL),
(8227,1546,NULL,3590.00,'MXN',NULL,3590.00,'2017-11-17','2018-01-22',NULL,NULL,NULL,'2017-11-17','HARSCO METALS DE MEXICO',NULL),
(8228,1547,11,15030.23,'MXN',NULL,15030.23,'2017-11-23','2017-11-24',NULL,NULL,NULL,'2017-11-23','Transportadores Industriales de México',999),
(8229,1548,11,14042.33,'MXN',NULL,14042.33,'2017-11-30','2017-12-01',NULL,NULL,NULL,'2017-11-30','Transportadores Industriales de México',999),
(8230,1549,NULL,58176.00,'MXN',NULL,58176.00,'2017-11-30','2018-01-02',NULL,NULL,NULL,'2017-11-30','FERROPAK COMERCIAL',NULL),
(8231,1550,NULL,3840.00,'MXN',NULL,3840.00,'2017-12-01','2018-02-07',NULL,NULL,NULL,'2017-12-01','HARSCO METALS DE MEXICO',NULL),
(8232,1551,NULL,3590.00,'MXN',NULL,3590.00,'2017-12-01','2018-02-07',NULL,NULL,NULL,'2017-12-01','HARSCO METALS DE MEXICO',NULL),
(8233,1552,NULL,3390.00,'MXN',NULL,3390.00,'2017-12-01','2018-02-07',NULL,NULL,NULL,'2017-12-01','HARSCO METALS DE MEXICO',NULL),
(8234,1553,NULL,12810.00,'MXN',NULL,12810.00,'2017-12-01','2018-02-07',NULL,NULL,NULL,'2017-12-01','HARSCO METALS DE MEXICO',NULL),
(8235,1554,NULL,31900.00,'MXN',NULL,31900.00,'2017-12-01','2018-02-07',NULL,NULL,NULL,'2017-12-01','HARSCO METALS DE MEXICO',NULL),
(8236,1555,NULL,6780.00,'MXN',NULL,6780.00,'2017-12-01','2018-02-07',NULL,NULL,NULL,'2017-12-01','HARSCO METALS DE MEXICO',NULL),
(8237,1556,NULL,10620.00,'MXN',NULL,10620.00,'2017-12-01','2018-02-07',NULL,NULL,NULL,'2017-12-01','HARSCO METALS DE MEXICO',NULL),
(8238,1557,NULL,8460.00,'MXN',NULL,8460.00,'2017-12-01','2018-02-07',NULL,NULL,NULL,'2017-12-01','HARSCO METALS DE MEXICO',NULL),
(8239,1558,NULL,15400.00,'MXN',NULL,15400.00,'2017-12-04','2018-02-10',NULL,NULL,NULL,'2017-12-04','HARSCO METALS DE MEXICO',NULL),
(8240,1559,11,15771.68,'MXN',NULL,15771.68,'2017-12-07','2017-12-07',NULL,NULL,NULL,'2017-12-07','Transportadores Industriales de México',999),
(8241,1560,11,15950.94,'MXN',NULL,15950.94,'2017-12-14','2017-12-15',NULL,NULL,NULL,'2017-12-14','Transportadores Industriales de México',999),
(8242,1561,NULL,20950.00,'MXN',NULL,20950.00,'2017-12-15','2018-01-18',NULL,NULL,NULL,'2017-12-15','TENIGAL',NULL),
(8243,1562,11,8652.99,'MXN',NULL,8652.99,'2017-12-21','2017-12-21',NULL,NULL,NULL,'2017-12-21','Transportadores Industriales de México',999),
(8244,1563,11,11950.53,'MXN',NULL,11950.53,'2017-12-28','2017-12-28',NULL,NULL,NULL,'2017-12-28','Transportadores Industriales de México',999),
(8245,1564,11,11599.85,'MXN',NULL,11599.85,'2018-01-22','2018-01-05',NULL,NULL,NULL,'2018-01-22','Transportadores Industriales de México',999),
(8246,1565,NULL,146016.00,'MXN',NULL,146016.00,'2018-01-23','2018-02-22',NULL,NULL,NULL,'2018-01-23','FERROPAK COMERCIAL',NULL),
(8247,1566,NULL,14544.00,'MXN',NULL,14544.00,'2018-01-23','2018-02-22',NULL,NULL,NULL,'2018-01-23','FERROPAK COMERCIAL',NULL),
(8248,1567,11,9963.61,'MXN',NULL,9963.61,'2018-01-23','2018-01-11',NULL,NULL,NULL,'2018-01-23','Transportadores Industriales de México',999),
(8249,1568,11,9051.07,'MXN',NULL,9051.07,'2018-01-23','2018-01-18',NULL,NULL,NULL,'2018-01-23','Transportadores Industriales de México',999),
(8250,1569,NULL,113560.00,'MXN',NULL,113560.00,'2018-01-23','2018-02-22',NULL,NULL,NULL,'2018-01-23','TENIGAL',NULL),
(8251,1570,NULL,4612.80,'MXN',NULL,4612.80,'2018-01-23','2018-02-28',NULL,NULL,NULL,'2018-01-23','Ternium México',NULL),
(8252,1571,NULL,1140.00,'MXN',NULL,1140.00,'2018-01-23','2018-02-28',NULL,NULL,NULL,'2018-01-23','Ternium México',NULL),
(8253,1572,NULL,1650.00,'MXN',NULL,1650.00,'2018-01-23','2018-02-28',NULL,NULL,NULL,'2018-01-23','Ternium México',NULL),
(8254,1573,NULL,23612.08,'MXN',NULL,23612.08,'2018-01-24','2018-02-28',NULL,NULL,NULL,'2018-01-24','Ternium México',NULL),
(8255,1574,11,9865.40,'MXN',NULL,9865.40,'2018-01-25','2018-02-15',NULL,NULL,NULL,'2018-01-25','Transportadores Industriales de México',999),
(8256,1575,11,9602.70,'MXN',NULL,9602.70,'2018-02-01','2018-02-02',NULL,NULL,NULL,'2018-02-01','Transportadores Industriales de México',999),
(8257,1576,NULL,58824.00,'MXN',NULL,58824.00,'2018-02-07','2018-03-13',NULL,NULL,NULL,'2018-02-07','FERROPAK COMERCIAL',NULL),
(8258,1577,NULL,19392.00,'MXN',NULL,19392.00,'2018-02-07','2018-03-13',NULL,NULL,NULL,'2018-02-07','FERROPAK COMERCIAL',NULL),
(8259,1578,NULL,13560.00,'MXN',NULL,13560.00,'2018-02-07','2018-04-16',NULL,NULL,NULL,'2018-02-07','HARSCO METALS DE MEXICO',NULL),
(8260,1579,NULL,5760.00,'MXN',NULL,5760.00,'2018-02-07','2018-04-16',NULL,NULL,NULL,'2018-02-07','HARSCO METALS DE MEXICO',NULL),
(8261,1580,NULL,8880.00,'MXN',NULL,8880.00,'2018-02-07','2018-04-16',NULL,NULL,NULL,'2018-02-07','HARSCO METALS DE MEXICO',NULL),
(8262,1581,NULL,3390.00,'MXN',NULL,3390.00,'2018-02-07','2018-04-16',NULL,NULL,NULL,'2018-02-07','HARSCO METALS DE MEXICO',NULL),
(8263,1582,11,11341.63,'MXN',NULL,11341.63,'2018-02-08','2018-02-08',NULL,NULL,NULL,'2018-02-08','Transportadores Industriales de México',999),
(8264,1583,NULL,12270.00,'MXN',NULL,12270.00,NULL,'2018-04-16',NULL,NULL,NULL,NULL,'HARSCO METALS DE MEXICO',NULL),
(8265,1584,11,9733.13,'MXN',NULL,9733.13,'2018-02-15','2018-02-15',NULL,NULL,NULL,'2018-02-15','Transportadores Industriales de México',999),
(8266,1585,NULL,101036.77,'MXN',NULL,101036.77,'2018-02-21','2018-03-28',NULL,NULL,NULL,'2018-02-21','Ternium México',NULL),
(8267,1586,11,11966.32,'MXN',NULL,11966.32,'2018-02-22','2018-02-22',NULL,NULL,NULL,'2018-02-22','Transportadores Industriales de México',999),
(8268,1587,NULL,0.00,'MXN',NULL,0.00,'2018-02-22','2013-02-05',NULL,NULL,NULL,'2018-02-22','CANCELADA',NULL),
(8269,1588,NULL,0.00,'MXN',NULL,0.00,'2018-02-22','2013-02-05',NULL,NULL,NULL,'2018-02-22','CANCELADA',NULL),
(8270,1589,NULL,63504.00,'MXN',NULL,63504.00,'2018-02-26','2018-04-02',NULL,NULL,NULL,'2018-02-26','FERROPAK COMERCIAL',NULL),
(8271,1590,NULL,37168.00,'MXN',NULL,37168.00,'2018-02-26','2018-04-02',NULL,NULL,NULL,'2018-02-26','FERROPAK COMERCIAL',NULL),
(8272,1591,11,11475.54,'MXN',NULL,11475.54,'2018-03-01','2018-03-01',NULL,NULL,NULL,'2018-03-01','Transportadores Industriales de México',999),
(8273,1592,NULL,9500.00,'MXN',NULL,9500.00,'2018-03-02','2018-04-30',NULL,NULL,NULL,'2018-03-02','Ternium México',NULL),
(8274,1593,11,10349.33,'MXN',NULL,10349.33,'2018-03-08','2018-03-08',NULL,NULL,NULL,'2018-03-08','Transportadores Industriales de México',999),
(8275,1594,11,7794.79,'MXN',NULL,7794.79,'2018-03-15','2018-03-15',NULL,NULL,NULL,'2018-03-15','Transportadores Industriales de México',999),
(8276,1595,NULL,9500.00,'MXN',NULL,9500.00,'2018-03-16','2018-05-21',NULL,NULL,NULL,'2018-03-16','HARSCO METALS DE MEXICO',NULL),
(8277,1596,NULL,2640.00,'MXN',NULL,2640.00,'2018-03-16','2018-05-21',NULL,NULL,NULL,'2018-03-16','HARSCO METALS DE MEXICO',NULL),
(8278,1597,NULL,8180.00,'MXN',NULL,8180.00,'2018-03-16','2018-05-21',NULL,NULL,NULL,'2018-03-16','HARSCO METALS DE MEXICO',NULL),
(8279,1598,NULL,9420.00,'MXN',NULL,9420.00,'2018-03-16','2018-05-21',NULL,NULL,NULL,'2018-03-16','HARSCO METALS DE MEXICO',NULL),
(8280,1599,NULL,2640.00,'MXN',NULL,2640.00,'2018-03-16','2018-05-21',NULL,NULL,NULL,'2018-03-16','HARSCO METALS DE MEXICO',NULL),
(8281,1600,NULL,5280.00,'MXN',NULL,5280.00,'2018-03-20','2018-06-08',NULL,NULL,NULL,'2018-03-20','HARSCO METALS DE MEXICO',NULL),
(8282,1601,11,9338.19,'MXN',NULL,9338.19,'2018-03-22','2018-03-22',NULL,NULL,NULL,'2018-03-22','Transportadores Industriales de México',999),
(8283,1602,NULL,27140.00,'MXN',NULL,27140.00,'2018-03-22','2018-04-26',NULL,NULL,NULL,'2018-03-22','TENIGAL',NULL),
(8284,1603,NULL,72170.00,'MXN',NULL,72170.00,'2018-03-26','2018-04-26',NULL,NULL,NULL,'2018-03-26','TENIGAL',NULL),
(8285,1604,NULL,56304.00,'MXN',NULL,56304.00,'2018-03-27','2018-04-26',NULL,NULL,NULL,'2018-03-27','FERROPAK COMERCIAL',NULL),
(8286,1605,11,11041.25,'MXN',NULL,11041.25,'2018-03-27','2018-04-12',NULL,NULL,NULL,'2018-03-27','Transportadores Industriales de México',999),
(8287,1606,NULL,81009.34,'MXN',NULL,81009.34,'2018-04-04','2018-05-31',NULL,NULL,NULL,'2018-04-04','Ternium México',NULL),
(8288,1607,NULL,4500.00,'MXN',NULL,4500.00,'2018-04-04','2018-04-20',NULL,NULL,NULL,'2018-04-04','Vesuvius México',NULL),
(8289,1608,NULL,12672.00,'MXN',NULL,12672.00,'2018-04-04','2018-04-20',NULL,NULL,NULL,'2018-04-04','Vesuvius México',NULL),
(8290,1609,11,7350.15,'MXN',NULL,7350.15,'2018-04-05','2018-04-12',NULL,NULL,NULL,'2018-04-05','Transportadores Industriales de México',999),
(8291,1610,11,8155.45,'MXN',NULL,8155.45,'2018-04-12','2018-04-17',NULL,NULL,NULL,'2018-04-12','Transportadores Industriales de México',999),
(8292,1611,NULL,19000.00,'MXN',NULL,19000.00,'2018-04-18','2018-05-31',NULL,NULL,NULL,'2018-04-18','Ternium México',NULL),
(8293,1612,11,5937.92,'MXN',NULL,5937.92,'2018-04-19','2018-04-19',NULL,NULL,NULL,'2018-04-19','Transportadores Industriales de México',999),
(8294,1613,NULL,47187.00,'MXN',NULL,47187.00,'2018-04-23','2018-05-31',NULL,NULL,NULL,'2018-04-23','Ternium México',NULL),
(8295,1614,NULL,58392.00,'MXN',NULL,58392.00,'2018-04-25','2018-05-29',NULL,NULL,NULL,'2018-04-25','FERROPAK COMERCIAL',NULL),
(8296,1615,NULL,75144.00,'MXN',NULL,75144.00,'2018-04-25','2018-05-29',NULL,NULL,NULL,'2018-04-25','FERROPAK COMERCIAL',NULL),
(8297,1616,11,6494.30,'MXN',NULL,6494.30,'2018-04-26','2018-04-26',NULL,NULL,NULL,'2018-04-26','Transportadores Industriales de México',999),
(8298,1617,NULL,85167.50,'MXN',NULL,85167.50,'2018-05-03','2018-06-07',NULL,NULL,NULL,'2018-05-03','TENIGAL',NULL),
(8299,1618,11,8964.58,'MXN',NULL,8964.58,'2018-05-03','2018-05-03',NULL,NULL,NULL,'2018-05-03','Transportadores Industriales de México',999),
(8300,1619,11,9941.12,'MXN',NULL,9941.12,'2018-05-10','2018-05-16',NULL,NULL,NULL,'2018-05-10','Transportadores Industriales de México',999),
(8301,1620,NULL,13330.00,'MXN',NULL,13330.00,'2018-05-16','2018-08-06',NULL,NULL,NULL,'2018-05-16','HARSCO METALS DE MEXICO',NULL),
(8302,1621,NULL,7360.00,'MXN',NULL,7360.00,'2018-05-16','2018-08-06',NULL,NULL,NULL,'2018-05-16','HARSCO METALS DE MEXICO',NULL),
(8303,1622,NULL,29630.00,'MXN',NULL,29630.00,'2018-05-16','2018-08-06',NULL,NULL,NULL,'2018-05-16','HARSCO METALS DE MEXICO',NULL),
(8304,1623,NULL,18500.00,'MXN',NULL,18500.00,'2018-05-16','2018-08-06',NULL,NULL,NULL,'2018-05-16','HARSCO METALS DE MEXICO',NULL),
(8305,1624,11,8314.57,'MXN',NULL,8314.57,'2018-05-17','2018-05-17',NULL,NULL,NULL,'2018-05-17','Transportadores Industriales de México',999),
(8306,1625,NULL,3750.00,'MXN',NULL,3750.00,'2018-05-18','2018-07-06',NULL,NULL,NULL,'2018-05-18','Vesuvius México',NULL),
(8307,1626,NULL,13560.00,'MXN',NULL,13560.00,'2018-05-23','2018-08-06',NULL,NULL,NULL,'2018-05-23','HARSCO METALS DE MEXICO',NULL),
(8308,1627,11,7163.54,'MXN',NULL,7163.54,'2018-05-24','2018-05-24',NULL,NULL,NULL,'2018-05-24','Transportadores Industriales de México',999),
(8309,1628,NULL,70272.00,'MXN',NULL,70272.00,'2018-05-28','2019-06-28',NULL,NULL,NULL,'2018-05-28','FERROPAK COMERCIAL',NULL),
(8310,1629,NULL,51712.00,'MXN',NULL,51712.00,'2018-05-28','2018-06-28',NULL,NULL,NULL,'2018-05-28','FERROPAK COMERCIAL',NULL),
(8311,1630,NULL,2100.00,'MXN',NULL,2100.00,'2018-05-30','2018-07-20',NULL,NULL,NULL,'2018-05-30','Vesuvius México',NULL),
(8312,1631,11,6640.92,'MXN',NULL,6640.92,'2018-05-31','2018-06-01',NULL,NULL,NULL,'2018-05-31','Transportadores Industriales de México',999),
(8313,1632,NULL,19350.00,'MXN',NULL,19350.00,'2018-06-06','2018-07-12',NULL,NULL,NULL,'2018-06-06','TENIGAL',NULL),
(8314,1633,11,7187.90,'MXN',NULL,7187.90,'2018-06-07','2018-06-07',NULL,NULL,NULL,'2018-06-07','Transportadores Industriales de México',999),
(8315,1634,11,6961.34,'MXN',NULL,6961.34,'2018-06-14','2018-06-20',NULL,NULL,NULL,'2018-06-14','Transportadores Industriales de México',999),
(8316,1635,NULL,15210.00,'MXN',NULL,15210.00,'2018-06-15','2018-08-20',NULL,NULL,NULL,'2018-06-15','HARSCO METALS DE MEXICO',NULL),
(8317,1636,NULL,9420.00,'MXN',NULL,9420.00,'2018-06-15','2018-08-20',NULL,NULL,NULL,'2018-06-15','HARSCO METALS DE MEXICO',NULL),
(8318,1637,NULL,52825.00,'MXN',NULL,52825.00,'2018-06-19','2018-07-19',NULL,NULL,NULL,'2018-06-19','TENIGAL',NULL),
(8319,1638,NULL,6780.00,'MXN',NULL,6780.00,'2018-06-19','2018-08-20',NULL,NULL,NULL,'2018-06-19','HARSCO METALS DE MEXICO',NULL),
(8320,1639,NULL,5790.00,'MXN',NULL,5790.00,'2018-06-19','2018-08-20',NULL,NULL,NULL,'2018-06-19','HARSCO METALS DE MEXICO',NULL),
(8321,1640,NULL,36874.98,'MXN',NULL,36874.98,'2018-06-20','2018-07-31',NULL,NULL,NULL,'2018-06-20','Ternium México',NULL),
(8322,1641,11,5466.25,'MXN',NULL,5466.25,'2018-06-21','2018-06-21',NULL,NULL,NULL,'2018-06-21','Transportadores Industriales de México',999),
(8323,1642,NULL,7693.00,'MXN',NULL,7693.00,'2018-06-22','2018-07-31',NULL,NULL,NULL,'2018-06-22','Ternium México',NULL),
(8324,1643,NULL,52038.88,'MXN',NULL,52038.88,'2018-06-25','2018-07-31',NULL,NULL,NULL,'2018-06-25','Ternium México',NULL),
(8325,1644,11,4785.00,'MXN',NULL,4785.00,'2018-06-28','2018-06-29',NULL,NULL,NULL,'2018-06-28','Transportadores Industriales de México',999),
(8326,1645,NULL,17280.00,'MXN',NULL,17280.00,'2018-06-28','2018-07-31',NULL,NULL,NULL,'2018-06-28','FERROPAK COMERCIAL',NULL),
(8327,1646,NULL,51362.00,'MXN',NULL,51362.00,'2018-06-28','2018-07-31',NULL,NULL,NULL,'2018-06-28','FERROPAK COMERCIAL',NULL),
(8328,1647,NULL,36979.00,'MXN',NULL,36979.00,'2018-07-02','2018-08-31',NULL,NULL,NULL,'2018-07-02','Ternium México',NULL),
(8329,1648,11,7340.56,'MXN',NULL,7340.56,'2018-07-05','2018-07-09',NULL,NULL,NULL,'2018-07-05','Transportadores Industriales de México',999),
(8330,1649,NULL,17140.00,'MXN',NULL,17140.00,'2018-07-12','2018-08-16',NULL,NULL,NULL,'2018-07-12','TENIGAL',NULL),
(8331,1650,11,6880.86,'MXN',NULL,6880.86,'2018-07-12','2018-07-12',NULL,NULL,NULL,'2018-07-12','Transportadores Industriales de México',999),
(8332,1651,11,8423.91,'MXN',NULL,8423.91,'2018-07-19','2018-07-19',NULL,NULL,NULL,'2018-07-19','Transportadores Industriales de México',999),
(8333,1652,11,7326.03,'MXN',NULL,7326.03,'2018-07-26','2018-07-26',NULL,NULL,NULL,'2018-07-26','Transportadores Industriales de México',999),
(8334,1653,NULL,17280.00,'MXN',NULL,17280.00,'2018-07-31','2018-08-30',NULL,NULL,NULL,'2018-07-31','FERROPAK COMERCIAL',NULL),
(8335,1654,NULL,43632.00,'MXN',NULL,43632.00,'2018-07-31','2018-08-30',NULL,NULL,NULL,'2018-07-31','FERROPAK COMERCIAL',NULL),
(8336,1655,11,4633.18,'MXN',NULL,4633.18,'2018-08-02','2018-08-02',NULL,NULL,NULL,'2018-08-02','Transportadores Industriales de México',999),
(8337,1656,NULL,125170.00,'MXN',NULL,125170.00,NULL,'2018-09-06',NULL,NULL,NULL,NULL,'TENIGAL',NULL),
(8338,1657,NULL,55550.00,'MXN',NULL,55550.00,'2018-08-06','2018-09-06',NULL,NULL,NULL,'2018-08-06','TENIGAL',NULL),
(8339,1658,NULL,9500.00,'MXN',NULL,9500.00,'2018-08-06','2018-09-28',NULL,NULL,NULL,'2018-08-06','Ternium México',NULL),
(8340,1659,NULL,3750.00,'MXN',NULL,3750.00,'2018-08-09','2018-11-16',NULL,NULL,NULL,'2018-08-09','Vesuvius México',NULL),
(8341,1660,11,5604.11,'MXN',NULL,5604.11,'2018-08-09','2018-08-09',NULL,NULL,NULL,'2018-08-09','Transportadores Industriales de México',999),
(8342,1661,NULL,88992.00,'MXN',NULL,88992.00,'2018-08-13','2018-09-13',NULL,NULL,NULL,'2018-08-13','FERROPAK COMERCIAL',NULL),
(8343,1662,11,5822.88,'MXN',NULL,5822.88,'2018-08-16','2018-08-16',NULL,NULL,NULL,'2018-08-16','Transportadores Industriales de México',999),
(8344,1663,11,6917.66,'MXN',NULL,6917.66,'2018-08-23','2018-08-23',NULL,NULL,NULL,'2018-08-23','Transportadores Industriales de México',999),
(8345,1664,NULL,4500.00,'MXN',NULL,4500.00,'2018-08-27','2018-10-12',NULL,NULL,NULL,'2018-08-27','Vesuvius México',NULL),
(8346,1665,NULL,63648.00,'MXN',NULL,63648.00,'2018-08-28','2018-09-27',NULL,NULL,NULL,'2018-08-28','FERROPAK COMERCIAL',NULL),
(8347,1666,NULL,63741.00,'MXN',NULL,63741.00,'2018-08-28','2018-09-27',NULL,NULL,NULL,'2018-08-28','FERROPAK COMERCIAL',NULL),
(8348,1667,11,7905.82,'MXN',NULL,7905.82,'2018-08-30','2018-09-03',NULL,NULL,NULL,'2018-08-30','Transportadores Industriales de México',999),
(8349,1668,11,8073.65,'MXN',NULL,8073.65,'2018-09-11','2018-09-13',NULL,NULL,NULL,'2018-09-11','Transportadores Industriales de México',999),
(8350,1669,NULL,9500.00,'MXN',NULL,9500.00,'2018-09-12','2018-10-31',NULL,NULL,NULL,'2018-09-12','Ternium México',NULL),
(8351,1670,NULL,27680.00,'MXN',NULL,27680.00,'2018-09-13','2018-10-18',NULL,NULL,NULL,'2018-09-13','TENIGAL',NULL),
(8352,1671,11,8383.23,'MXN',NULL,8383.23,'2018-09-13','2018-09-13',NULL,NULL,NULL,'2018-09-13','Transportadores Industriales de México',999),
(8353,1672,11,8476.88,'MXN',NULL,8476.88,'2018-09-24','2018-09-27',NULL,NULL,NULL,'2018-09-24','Transportadores Industriales de México',999),
(8354,1673,NULL,44352.00,'MXN',NULL,44352.00,'2017-09-27','2018-10-30',NULL,NULL,NULL,'2017-09-27','FERROPAK COMERCIAL',NULL),
(8355,1674,NULL,47126.00,'MXN',NULL,47126.00,'2018-09-27','2018-10-30',NULL,NULL,NULL,'2018-09-27','FERROPAK COMERCIAL',NULL),
(8356,1675,11,7801.18,'MXN',NULL,7801.18,'2018-09-27','2018-09-27',NULL,NULL,NULL,'2018-09-27','Transportadores Industriales de México',999),
(8357,1676,NULL,43800.00,'MXN',NULL,43800.00,'2018-10-01','2018-11-01',NULL,NULL,NULL,'2018-10-01','TENIGAL',NULL),
(8358,1677,11,7721.85,'MXN',NULL,7721.85,'2018-10-04','2018-09-26',NULL,NULL,NULL,'2018-10-04','Transportadores Industriales de México',999),
(8359,1678,11,6871.23,'MXN',NULL,6871.23,'2018-10-15','2018-10-11',NULL,NULL,NULL,'2018-10-15','Transportadores Industriales de México',999),
(8360,1679,NULL,2600.00,'MXN',NULL,2600.00,'2018-10-16','2018-12-14',NULL,NULL,NULL,'2018-10-16','Vesuvius México',NULL),
(8361,1680,11,5660.00,'MXN',NULL,5660.00,'2018-10-19','2018-10-18',NULL,NULL,NULL,'2018-10-19','Transportadores Industriales de México',999),
(8362,1681,NULL,47448.00,'MXN',NULL,47448.00,'2018-10-22','2018-11-22',NULL,NULL,NULL,'2018-10-22','FERROPAK COMERCIAL',NULL),
(8363,1682,NULL,60507.00,'MXN',NULL,60507.00,'2018-10-23','2018-11-22',NULL,NULL,NULL,'2018-10-23','FERROPAK COMERCIAL',NULL),
(8364,1683,11,5090.51,'MXN',NULL,5090.51,'2018-10-25','2018-10-25',NULL,NULL,NULL,'2018-10-25','Transportadores Industriales de México',999),
(8365,1684,11,4934.51,'MXN',NULL,4934.51,'2018-11-01','2018-11-13',NULL,NULL,NULL,'2018-11-01','Transportadores Industriales de México',999),
(8366,1685,NULL,22000.00,'MXN',NULL,22000.00,'2018-11-05','2018-12-06',NULL,NULL,NULL,'2018-11-05','TENIGAL',NULL),
(8367,1686,11,5170.12,'MXN',NULL,5170.12,'2018-11-09','2018-11-13',NULL,NULL,NULL,'2018-11-09','Transportadores Industriales de México',999),
(8368,1687,11,4222.95,'MXN',NULL,4222.95,'2018-11-16','2018-11-15',NULL,NULL,NULL,'2018-11-16','Transportadores Industriales de México',999),
(8369,1688,NULL,35915.00,'MXN',NULL,35915.00,'2018-11-23','2019-01-03',NULL,NULL,NULL,'2018-11-23','FRISA FORJADOS',NULL),
(8370,1689,11,4024.06,'MXN',NULL,4024.06,'2018-11-23','2018-11-28',NULL,NULL,NULL,'2018-11-23','Transportadores Industriales de México',999),
(8371,1690,NULL,60556.00,'MXN',NULL,60556.00,'2018-11-27','2018-12-27',NULL,NULL,NULL,'2018-11-27','FERROPAK COMERCIAL',NULL),
(8372,1691,11,4927.52,'MXN',NULL,4927.52,'2018-11-30','2018-11-29',NULL,NULL,NULL,'2018-11-30','Transportadores Industriales de México',999),
(8373,1692,NULL,11206.00,'MXN',NULL,11206.00,'2018-12-04','2019-01-15',NULL,NULL,NULL,'2018-12-04','FRISA FORJADOS',NULL),
(8374,1693,NULL,5947.50,'MXN',NULL,5947.50,'2018-12-05','2019-01-15',NULL,NULL,NULL,'2018-12-05','FRISA FORJADOS',NULL),
(8375,1694,NULL,13000.00,'MXN',NULL,13000.00,'2018-12-05','2019-01-31',NULL,NULL,NULL,'2018-12-05','Ternium México',NULL),
(8376,1695,11,5895.00,'MXN',NULL,5895.00,'2018-12-07','2018-12-06',NULL,NULL,NULL,'2018-12-07','Transportadores Industriales de México',999),
(8377,1696,NULL,49240.00,'MXN',NULL,49240.00,'2018-12-12','2019-01-17',NULL,NULL,NULL,'2018-12-12','TENIGAL',NULL),
(8378,1697,11,5564.33,'MXN',NULL,5564.33,'2018-12-13','2018-12-13',NULL,NULL,NULL,'2018-12-13','Transportadores Industriales de México',999),
(8379,1698,NULL,7940.00,'MXN',NULL,7940.00,'2018-12-20','2019-01-15',NULL,NULL,NULL,'2018-12-20','FRISA FORJADOS',NULL),
(8380,1699,NULL,5856.00,'MXN',NULL,5856.00,'2018-12-20','2019-01-15',NULL,NULL,NULL,'2018-12-20','FRISA FORJADOS',NULL),
(8381,1700,11,5445.00,'MXN',NULL,5445.00,'2018-12-20','2018-12-20',NULL,NULL,NULL,'2018-12-20','Transportadores Industriales de México',999),
(8382,1701,NULL,5320.00,'MXN',NULL,5320.00,'2018-12-27','2019-01-15',NULL,NULL,NULL,'2018-12-27','FRISA FORJADOS',NULL),
(8383,1702,11,5445.00,'MXN',NULL,5445.00,'2018-12-27','2018-12-27',NULL,NULL,NULL,'2018-12-27','Transportadores Industriales de México',999),
(8384,1703,NULL,56376.00,'MXN',NULL,56376.00,'2019-01-03','2019-02-05',NULL,NULL,NULL,'2019-01-03','FERROPAK COMERCIAL',NULL),
(8385,1704,NULL,34744.00,'MXN',NULL,34744.00,'2019-01-03','2019-02-05',NULL,NULL,NULL,'2019-01-03','FERROPAK COMERCIAL',NULL),
(8386,1705,11,2523.99,'MXN',NULL,2523.99,'2019-01-03','2019-01-03',NULL,NULL,NULL,'2019-01-03','Transportadores Industriales de México',999),
(8387,1706,NULL,41533.00,'MXN',NULL,41533.00,'2019-01-11','2019-04-03',NULL,NULL,NULL,'2019-01-11','FRISA FORJADOS',NULL),
(8388,1707,11,4381.67,'MXN',NULL,4381.67,'2019-01-11','2019-01-10',NULL,NULL,NULL,'2019-01-11','Transportadores Industriales de México',999),
(8389,1708,11,8129.93,'MXN',NULL,8129.93,'2019-01-17','2019-01-17',NULL,NULL,NULL,'2019-01-17','Transportadores Industriales de México',999),
(8390,1709,NULL,0.00,'MXN',NULL,0.00,'2019-01-22','2013-02-05',NULL,NULL,NULL,'2019-01-22','CANCELADA',NULL),
(8391,1710,NULL,0.00,'MXN',NULL,0.00,'2019-01-24','2013-02-05',NULL,NULL,NULL,'2019-01-24','CANCELADA',NULL),
(8392,1711,11,4759.22,'MXN',NULL,4759.22,'2019-01-25','2019-01-30',NULL,NULL,NULL,'2019-01-25','Transportadores Industriales de México',999),
(8393,1712,NULL,104940.00,'MXN',NULL,104940.00,'2019-01-28','2019-02-28',NULL,NULL,NULL,'2019-01-28','TENIGAL',NULL),
(8394,1713,NULL,14259.00,'MXN',NULL,14259.00,'2019-01-29','2019-02-15',NULL,NULL,NULL,'2019-01-29','FRISA FORJADOS',NULL),
(8395,1714,11,5372.81,'MXN',NULL,5372.81,'2019-01-31','2019-02-07',NULL,NULL,NULL,'2019-01-31','Transportadores Industriales de México',999),
(8396,1715,NULL,11175.00,'MXN',NULL,11175.00,'2019-02-01','2019-04-03',NULL,NULL,NULL,'2019-02-01','FRISA FORJADOS',NULL),
(8397,1716,NULL,46878.00,'MXN',NULL,46878.00,'2019-02-05','2019-04-03',NULL,NULL,NULL,'2019-02-05','FRISA FORJADOS',NULL),
(8398,1717,NULL,8775.00,'MXN',NULL,8775.00,'2019-02-07','2019-03-14',NULL,NULL,NULL,'2019-02-07','TENIGAL',NULL),
(8399,1718,11,5430.82,'MXN',NULL,5430.82,'2019-02-07','2019-02-07',NULL,NULL,NULL,'2019-02-07','Transportadores Industriales de México',999),
(8400,1719,NULL,5950.00,'MXN',NULL,5950.00,'2019-02-12','2019-04-17',NULL,NULL,NULL,'2019-02-12','Vesuvius México',NULL),
(8401,1720,NULL,4500.00,'MXN',NULL,4500.00,'2019-02-12','2019-04-17',NULL,NULL,NULL,'2019-02-12','Vesuvius México',NULL),
(8402,1721,NULL,13000.00,'MXN',NULL,13000.00,'2019-02-12','2019-03-29',NULL,NULL,NULL,'2019-02-12','Ternium México',NULL),
(8403,1722,11,5670.00,'MXN',NULL,5670.00,'2019-02-14','2019-02-14',NULL,NULL,NULL,'2019-02-14','Transportadores Industriales de México',999),
(8404,1723,NULL,30520.00,'MXN',NULL,30520.00,'2019-02-20','2019-03-28',NULL,NULL,NULL,'2019-02-20','TENIGAL',NULL),
(8405,1724,11,3479.72,'MXN',NULL,3479.72,'2019-02-21','2019-02-21',NULL,NULL,NULL,'2019-02-21','Transportadores Industriales de México',999),
(8406,1725,NULL,27976.50,'MXN',NULL,27976.50,'2019-02-22','2019-04-15',NULL,NULL,NULL,'2019-02-22','FRISA FORJADOS',NULL),
(8407,1726,NULL,35502.00,'MXN',NULL,35502.00,'2019-03-04','2019-05-15',NULL,NULL,NULL,'2019-03-04','FRISA FORJADOS',NULL),
(8408,1727,NULL,131785.50,'MXN',NULL,131785.50,'2019-03-11','2019-05-15',NULL,NULL,NULL,'2019-03-11','FRISA FORJADOS',NULL),
(8409,1728,NULL,9500.00,'MXN',NULL,9500.00,'2019-03-20','2019-04-30',NULL,NULL,NULL,'2019-03-20','Ternium México',NULL),
(8410,1729,NULL,21560.00,'MXN',NULL,21560.00,'2019-03-21','2019-04-23',NULL,NULL,NULL,'2019-03-21','TENIGAL',NULL),
(8411,1730,NULL,4500.00,'MXN',NULL,4500.00,'2019-03-15','2019-07-08',NULL,NULL,NULL,'2019-03-15','Vesuvius México',NULL),
(8412,1731,NULL,10798.00,'MXN',NULL,10798.00,'2019-03-25','2019-05-15',NULL,NULL,NULL,'2019-03-25','FRISA FORJADOS',NULL),
(8413,1732,NULL,64623.00,'MXN',NULL,64623.00,'2019-03-28','2019-05-02',NULL,NULL,NULL,'2019-03-28','TENIGAL',NULL),
(8414,1733,NULL,9488.00,'MXN',NULL,9488.00,'2019-03-28','2019-07-03',NULL,NULL,NULL,'2019-03-28','FRISA FORJADOS',NULL),
(8415,1734,NULL,18884.00,'MXN',NULL,18884.00,'2019-04-05','2019-07-03',NULL,NULL,NULL,'2019-04-05','FRISA FORJADOS',NULL),
(8416,1735,11,90000.00,'MXN',NULL,90000.00,'2019-04-05',NULL,NULL,NULL,NULL,'2019-04-05','Transportadores Industriales de México',999),
(8417,1736,11,35000.00,'MXN',NULL,35000.00,'2019-04-05',NULL,NULL,NULL,NULL,'2019-04-05','Transportadores Industriales de México',999),
(8418,1737,NULL,11066.00,'MXN',NULL,11066.00,'2019-04-09','2019-07-03',NULL,NULL,NULL,'2019-04-09','FRISA FORJADOS',NULL),
(8419,1738,NULL,3750.00,'MXN',NULL,3750.00,'2019-04-10','2019-07-12',NULL,NULL,NULL,'2019-04-10','Vesuvius México',NULL),
(8420,1739,NULL,15947.00,'MXN',NULL,15947.00,'2019-04-12','2019-07-03',NULL,NULL,NULL,'2019-04-12','FRISA FORJADOS',NULL),
(8421,1740,NULL,15120.00,'MXN',NULL,15120.00,'2019-04-17','2019-05-23',NULL,NULL,NULL,'2019-04-17','TENIGAL',NULL),
(8422,1741,NULL,42241.38,'MXN',NULL,42241.38,'2019-04-25',NULL,NULL,'Chrysler','EHH','2019-04-25',NULL,NULL),
(8423,1742,NULL,29237.00,'MXN',NULL,29237.00,'2019-04-26','2019-07-03',NULL,NULL,NULL,'2019-04-26','FRISA FORJADOS',NULL),
(8424,1743,NULL,27152.00,'MXN',NULL,27152.00,'2019-05-02','2019-07-15',NULL,NULL,NULL,'2019-05-02','FRISA FORJADOS',NULL),
(8425,1744,NULL,51724.14,'MXN',NULL,51724.14,'2019-05-02',NULL,NULL,'Accord','MEGZ','2019-05-02',NULL,NULL),
(8426,1745,NULL,61880.00,'MXN',NULL,61880.00,'2019-05-06','2019-06-06',NULL,NULL,NULL,'2019-05-06','TENIGAL',NULL),
(8427,1746,NULL,13141.00,'MXN',NULL,13141.00,'2019-05-14','2019-07-15',NULL,NULL,NULL,'2019-05-14','FRISA FORJADOS',NULL),
(8428,1747,NULL,0.00,'MXN',NULL,0.00,'2019-05-16','2013-02-05',NULL,NULL,NULL,'2019-05-16','CANCELADA',NULL),
(8429,1748,NULL,45849.00,'MXN',NULL,45849.00,'2019-05-20','2019-07-15',NULL,NULL,NULL,'2019-05-20','FRISA FORJADOS',NULL),
(8430,1749,NULL,28478.40,'MXN',NULL,28478.40,'2019-05-21','2019-07-15',NULL,NULL,NULL,'2019-05-21','FRISA FORJADOS',NULL),
(8431,1750,NULL,34482.76,'MXN',NULL,34482.76,'2019-05-27',NULL,NULL,'Tracker','IGZ','2019-05-27',NULL,NULL),
(8432,1751,NULL,9500.00,'MXN',NULL,9500.00,'2019-05-28','2019-06-28',NULL,NULL,NULL,'2019-05-28','Ternium México',NULL),
(8433,1752,NULL,11232.00,'MXN',NULL,11232.00,'2019-05-28','2019-07-15',NULL,NULL,NULL,'2019-05-28','FRISA FORJADOS',NULL),
(8434,1753,NULL,42293.50,'MXN',NULL,42293.50,'2019-06-03','2019-08-15',NULL,NULL,NULL,'2019-06-03','FRISA FORJADOS',NULL),
(8435,1754,NULL,13900.00,'MXN',NULL,13900.00,'2019-06-07','2019-07-11',NULL,NULL,NULL,'2019-06-07','TENIGAL',NULL),
(8436,1755,NULL,12544.00,'MXN',NULL,12544.00,'2019-06-17','2019-08-15',NULL,NULL,NULL,'2019-06-17','FRISA FORJADOS',NULL),
(8437,1756,NULL,13810.00,'MXN',NULL,13810.00,'2019-06-19','2019-08-15',NULL,NULL,NULL,'2019-06-19','FRISA FORJADOS',NULL),
(8438,1757,NULL,28500.00,'MXN',NULL,28500.00,'2019-06-19','2019-07-31',NULL,NULL,NULL,'2019-06-19','Ternium México',NULL),
(8439,1758,NULL,45306.00,'MXN',NULL,45306.00,'2019-06-25','2019-07-25',NULL,NULL,NULL,'2019-06-25','TENIGAL',NULL),
(8440,1759,NULL,12064.00,'MXN',NULL,12064.00,'2019-07-08','2019-10-02',NULL,NULL,NULL,'2019-07-08','FRISA FORJADOS',NULL),
(8441,1760,NULL,7130.00,'MXN',NULL,7130.00,'2019-07-08','2019-10-02',NULL,NULL,NULL,'2019-07-08','FRISA FORJADOS',NULL),
(8442,1761,NULL,5952.00,'MXN',NULL,5952.00,'2019-07-16','2019-10-02',NULL,NULL,NULL,'2019-07-16','FRISA FORJADOS',NULL),
(8443,1762,NULL,17921.00,'MXN',NULL,17921.00,'2019-07-17','2019-10-02',NULL,NULL,NULL,'2019-07-17','FRISA FORJADOS',NULL),
(8444,1763,NULL,191040.00,'MXN',NULL,191040.00,'2019-07-30','2019-08-29',NULL,NULL,NULL,'2019-07-30','TENIGAL',NULL),
(8445,1764,NULL,6672.00,'MXN',NULL,6672.00,'2019-07-30','2019-10-02',NULL,NULL,NULL,'2019-07-30','FRISA FORJADOS',NULL),
(8446,1765,NULL,15996.00,'MXN',NULL,15996.00,'2019-08-01','2019-10-15',NULL,NULL,NULL,'2019-08-01','FRISA FORJADOS',NULL),
(8447,1766,NULL,50902.00,'MXN',NULL,50902.00,'2019-08-01','2019-10-15',NULL,NULL,NULL,'2019-08-01','FRISA FORJADOS',NULL),
(8448,1767,NULL,1882.00,'MXN',NULL,1882.00,'2019-08-05','2019-10-02',NULL,NULL,NULL,'2019-08-05','FRISA FORJADOS',NULL),
(8449,1768,NULL,22500.00,'MXN',NULL,22500.00,NULL,'2019-09-30',NULL,NULL,NULL,NULL,'Ternium México',NULL),
(8450,1769,NULL,0.00,'MXN',NULL,0.00,'2019-08-19','2013-02-05',NULL,NULL,NULL,'2019-08-19','CANCELADA',NULL),
(8451,1770,NULL,5950.00,'MXN',NULL,5950.00,'2019-08-19','2019-10-25',NULL,NULL,NULL,'2019-08-19','Vesuvius México',NULL),
(8452,1771,NULL,2387.00,'MXN',NULL,2387.00,'2019-08-20','2019-10-15',NULL,NULL,NULL,'2019-08-20','FRISA FORJADOS',NULL),
(8453,1772,NULL,33520.00,'MXN',NULL,33520.00,'2019-08-23','2019-09-26',NULL,NULL,NULL,'2019-08-23','TENIGAL',NULL),
(8454,1773,NULL,27680.00,'MXN',NULL,27680.00,'2019-10-01','2019-11-01',NULL,NULL,NULL,'2019-10-01','TENIGAL',NULL),
(8455,1774,NULL,3750.00,'MXN',NULL,3750.00,'2019-10-22','2010-01-10',NULL,NULL,NULL,'2019-10-22','Vesuvius México',NULL),
(8456,1775,NULL,21020.00,'MXN',NULL,21020.00,'2019-11-06','2019-12-13',NULL,NULL,NULL,'2019-11-06','TENIGAL',NULL),
(8457,1776,NULL,13000.00,'MXN',NULL,13000.00,'2019-11-07','2019-12-27',NULL,NULL,NULL,'2019-11-07','Ternium México',NULL),
(8458,1777,NULL,40760.00,'MXN',NULL,40760.00,'2019-11-16','2019-12-27',NULL,NULL,NULL,'2019-11-16','TENIGAL',NULL),
(8459,1778,NULL,27680.00,'MXN',NULL,27680.00,'2019-12-13','2020-01-15',NULL,NULL,NULL,'2019-12-13','TENIGAL',NULL),
(8460,1779,NULL,133440.00,'MXN',NULL,133440.00,'2020-01-27','2020-02-28',NULL,NULL,NULL,'2020-01-27','TENIGAL',NULL),
(8461,1780,NULL,38904.00,'MXN',NULL,38904.00,'2020-02-18','2022-04-15',NULL,NULL,NULL,'2020-02-18','FRISA FORJADOS',NULL),
(8462,1781,NULL,0.00,'MXN',NULL,0.00,'2020-02-25','2013-02-05',NULL,NULL,NULL,'2020-02-25','CANCELADA',NULL),
(8463,1782,NULL,33360.00,'MXN',NULL,33360.00,'2020-02-28','2022-04-03',NULL,NULL,NULL,'2020-02-28','TENIGAL',NULL),
(8464,1783,NULL,56904.00,'MXN',NULL,56904.00,'2020-03-02','2022-05-15',NULL,NULL,NULL,'2020-03-02','FRISA FORJADOS',NULL),
(8465,1784,NULL,12000.00,'MXN',NULL,12000.00,'2020-03-04','2022-05-15',NULL,NULL,NULL,'2020-03-04','FRISA FORJADOS',NULL),
(8466,1785,NULL,110694.00,'MXN',NULL,110694.00,'2020-06-19','2020-08-31',NULL,NULL,NULL,'2020-06-19','Ternium México',NULL),
(8467,1786,NULL,18760.00,'MXN',NULL,18760.00,'2020-09-15','2020-10-16',NULL,NULL,NULL,'2020-09-15','TENIGAL',NULL),
(8468,1787,NULL,97300.00,'MXN',NULL,97300.00,'2020-09-17','2020-10-23',NULL,NULL,NULL,'2020-09-17','TENIGAL',NULL),
(8469,1788,NULL,19580.00,'MXN',NULL,19580.00,'2020-10-01','2020-11-06',NULL,NULL,NULL,'2020-10-01','TENIGAL',NULL),
(8470,1789,NULL,9150.00,'MXN',NULL,9150.00,'2020-10-12','2020-11-30',NULL,NULL,NULL,'2020-10-12','Ternium México',NULL),
(8471,1790,NULL,95010.00,'MXN',NULL,95010.00,'2020-10-20','2020-11-20',NULL,NULL,NULL,'2020-10-20','TENIGAL',NULL),
(8472,1791,NULL,17950.00,'MXN',NULL,17950.00,'2020-11-03','2020-12-04',NULL,NULL,NULL,'2020-11-03','TENIGAL',NULL),
(8473,1792,NULL,3750.00,'MXN',NULL,3750.00,'2020-11-20','2021-01-22',NULL,NULL,NULL,'2020-11-20','Vesuvius México',NULL),
(8474,1793,NULL,3450.00,'MXN',NULL,3450.00,'2020-11-20','2021-01-22',NULL,NULL,NULL,'2020-11-20','Vesuvius México',NULL),
(8475,1794,NULL,2275.35,'MXN',NULL,2275.35,'2020-11-30','2021-01-04',NULL,NULL,NULL,'2020-11-30','Ternium México',NULL),
(8476,1795,NULL,9150.00,'MXN',NULL,9150.00,'2020-12-09','2021-01-29',NULL,NULL,NULL,'2020-12-09','Ternium México',NULL),
(8477,1796,NULL,53160.45,'MXN',NULL,53160.45,'2020-12-14','2021-01-29',NULL,NULL,NULL,'2020-12-14','Ternium México',NULL),
(8478,1797,NULL,55360.00,'MXN',NULL,55360.00,'2020-12-16','2021-01-15',NULL,NULL,NULL,'2020-12-16','TENIGAL',NULL),
(8479,1798,NULL,9150.00,'MXN',NULL,9150.00,'2021-01-21','2021-03-31',NULL,NULL,NULL,'2021-01-21','Ternium México',NULL),
(8480,1799,NULL,4312.50,'MXN',NULL,4312.50,NULL,'2021-03-26',NULL,NULL,NULL,NULL,'Vesuvius México',NULL),
(8481,1800,NULL,19160.00,'MXN',NULL,19160.00,NULL,'2021-02-26',NULL,NULL,NULL,NULL,'TENIGAL',NULL),
(8482,1801,NULL,89083.40,'MXN',NULL,89083.40,'2021-01-27','2021-02-26',NULL,NULL,NULL,'2021-01-27','Ternium México',NULL),
(8483,1802,NULL,36600.00,'MXN',NULL,36600.00,'2021-02-16','2021-04-30',NULL,NULL,NULL,'2021-02-16','Ternium México',NULL),
(8484,1803,NULL,98253.75,'MXN',NULL,98253.75,'2021-02-24','2021-03-31',NULL,NULL,NULL,'2021-02-24','Ternium México',NULL),
(8485,1804,NULL,30100.00,'MXN',NULL,30100.00,'2021-02-24','2021-03-26',NULL,NULL,NULL,'2021-02-24','TENIGAL',NULL),
(8486,1805,NULL,5400.00,'MXN',NULL,5400.00,'2021-02-26','2021-05-07',NULL,NULL,NULL,'2021-02-26','Vesuvius México',NULL),
(8487,1806,NULL,9150.00,'MXN',NULL,9150.00,'2021-03-04','2021-04-30',NULL,NULL,NULL,'2021-03-04','Ternium México',NULL),
(8488,1807,NULL,4325.00,'MXN',NULL,4325.00,'2021-03-17','2021-06-11',NULL,NULL,NULL,'2021-03-17','Vesuvius México',NULL),
(8489,1808,NULL,91220.85,'MXN',NULL,91220.85,'2021-03-17','2021-04-30',NULL,NULL,NULL,'2021-03-17','Ternium México',NULL),
(8490,1809,NULL,45750.00,'MXN',NULL,45750.00,'2021-03-24','2021-05-31',NULL,NULL,NULL,'2021-03-24','Ternium México',NULL),
(8491,1810,NULL,23620.00,'MXN',NULL,23620.00,'2021-03-29','2021-04-30',NULL,NULL,NULL,'2021-03-29','TENIGAL',NULL),
(8492,1811,NULL,9504.00,'MXN',NULL,9504.00,'2021-03-29','2021-06-07',NULL,NULL,NULL,'2021-03-29','Vesuvius México',NULL),
(8493,1812,NULL,27450.00,'MXN',NULL,27450.00,'2021-04-23','2021-06-30',NULL,NULL,NULL,'2021-04-23','Ternium México',NULL),
(8494,1813,NULL,101149.65,'MXN',NULL,101149.65,'2021-04-23','2021-05-31',NULL,NULL,NULL,'2021-04-23','Ternium México',NULL),
(8495,1814,NULL,31850.00,'MXN',NULL,31850.00,'2021-04-26','2021-05-28',NULL,NULL,NULL,'2021-04-26','TENIGAL',NULL),
(8496,1815,NULL,235527.00,'MXN',NULL,235527.00,'2021-04-26','2021-05-28',NULL,NULL,NULL,'2021-04-26','TENIGAL',NULL),
(8497,1816,NULL,5190.00,'MXN',NULL,5190.00,'2021-04-28','2021-07-09',NULL,NULL,NULL,'2021-04-28','Vesuvius México',NULL),
(8498,1817,NULL,4400.00,'MXN',NULL,4400.00,'2021-05-03','2021-07-15',NULL,NULL,NULL,'2021-05-03','FRISA FORJADOS',NULL),
(8499,1818,NULL,3200.00,'MXN',NULL,3200.00,'2021-05-06','2021-07-15',NULL,NULL,NULL,'2021-05-06','FRISA FORJADOS',NULL),
(8500,1819,NULL,39840.00,'MXN',NULL,39840.00,'2021-05-18','2021-06-18',NULL,NULL,NULL,'2021-05-18','TENIGAL',NULL),
(8501,1820,NULL,117352.90,'MXN',NULL,117352.90,'2021-05-24','2021-06-30',NULL,NULL,NULL,'2021-05-24','Ternium México',NULL),
(8502,1821,NULL,86290.00,'MXN',NULL,86290.00,NULL,'2021-07-02',NULL,NULL,NULL,NULL,'TENIGAL',NULL),
(8503,1822,NULL,7636.20,'MXN',NULL,7636.20,'2021-06-01','2021-08-13',NULL,NULL,NULL,'2021-06-01','Vesuvius México',NULL),
(8504,1823,NULL,119766.15,'MXN',NULL,119766.15,'2021-06-24','2021-07-30',NULL,NULL,NULL,'2021-06-24','Ternium México',NULL),
(8505,1824,NULL,32209.00,'MXN',NULL,32209.00,'2021-06-21','2021-07-30',NULL,NULL,NULL,'2021-06-21','TENIGAL',NULL),
(8506,1825,NULL,7818.00,'MXN',NULL,7818.00,'2021-06-24','2021-07-30',NULL,NULL,NULL,'2021-06-24','Ternium México',NULL),
(8507,1826,NULL,101481.80,'MXN',NULL,101481.80,'2021-07-06','2021-08-31',NULL,NULL,NULL,'2021-07-06','Ternium México',NULL),
(8508,1827,NULL,108320.45,'MXN',NULL,108320.45,NULL,'2021-08-31',NULL,NULL,NULL,NULL,'Ternium México',NULL),
(8509,1828,NULL,11850.00,'MXN',NULL,11850.00,'2021-07-29','2021-09-03',NULL,NULL,NULL,'2021-07-29','TENIGAL',NULL),
(8510,1829,NULL,9150.00,'MXN',NULL,9150.00,'2021-07-29','2021-09-30',NULL,NULL,NULL,'2021-07-29','Ternium México',NULL),
(8511,1830,NULL,4325.00,'MXN',NULL,4325.00,'2021-07-30','2021-10-22',NULL,NULL,NULL,'2021-07-30','Vesuvius México',NULL),
(8512,1831,NULL,22000.00,'MXN',NULL,22000.00,'2021-07-30','2021-09-03',NULL,NULL,NULL,'2021-07-30','TENIGAL',NULL),
(8513,1832,NULL,22000.00,'MXN',NULL,22000.00,'2021-08-02','2021-09-03',NULL,NULL,NULL,'2021-08-02','TENIGAL',NULL),
(8514,1833,NULL,7636.20,'MXN',NULL,7636.20,'2021-08-09','2021-11-05',NULL,NULL,NULL,'2021-08-09','Vesuvius México',NULL),
(8515,1834,NULL,108251.50,'MXN',NULL,108251.50,'2021-08-26','2021-09-30',NULL,NULL,NULL,'2021-08-26','Ternium México',NULL),
(8516,1835,NULL,159471.40,'MXN',NULL,159471.40,'2021-08-30','2021-09-30',NULL,NULL,NULL,'2021-08-30','Ternium México',NULL),
(8517,1836,NULL,22000.00,'MXN',NULL,22000.00,'2021-08-31','2021-10-01',NULL,NULL,NULL,'2021-08-31','TENIGAL',NULL),
(8518,1837,NULL,104528.20,'MXN',NULL,104528.20,'2021-09-23','2021-10-29',NULL,NULL,NULL,'2021-09-23','Ternium México',NULL),
(8519,1838,NULL,9150.00,'MXN',NULL,9150.00,'2021-09-24','2021-11-30',NULL,NULL,NULL,'2021-09-24','Ternium México',NULL),
(8520,1839,NULL,143360.00,'MXN',NULL,143360.00,'2021-10-04','2021-11-05',NULL,NULL,NULL,'2021-10-04','TENIGAL',NULL),
(8521,1840,11,30589.35,'MXN',NULL,30589.35,'2021-10-15','2021-10-14',NULL,NULL,NULL,'2021-10-15','Transportadores Industriales de México',999),
(8522,1841,11,34627.90,'MXN',NULL,34627.90,'2021-10-15','2021-10-14',NULL,NULL,NULL,'2021-10-15','Transportadores Industriales de México',999),
(8523,1842,NULL,9150.00,'MXN',NULL,9150.00,'2021-10-20','2021-12-30',NULL,NULL,NULL,'2021-10-20','Ternium México',NULL),
(8524,1843,NULL,319230.00,'MXN',NULL,319230.00,'2021-10-20','2021-12-30',NULL,NULL,NULL,'2021-10-20','Ternium México',NULL),
(8525,1844,NULL,100804.90,'MXN',NULL,100804.90,NULL,'2021-11-30',NULL,NULL,NULL,NULL,'Ternium México',NULL),
(8526,1845,11,31738.66,'MXN',NULL,31738.66,NULL,'2021-11-19',NULL,NULL,NULL,NULL,'Transportadores Industriales de México',999),
(8527,1846,11,32068.79,'MXN',NULL,32068.79,NULL,'2021-11-19',NULL,NULL,NULL,NULL,'Transportadores Industriales de México',999),
(8528,1847,11,36865.89,'MXN',NULL,36865.89,'2021-11-05','2021-11-19',NULL,NULL,NULL,'2021-11-05','Transportadores Industriales de México',999),
(8529,1848,NULL,48126.50,'MXN',NULL,48126.50,'2021-11-09','2021-12-10',NULL,NULL,NULL,'2021-11-09','TENIGAL',NULL),
(8530,1849,11,34098.75,'MXN',NULL,34098.75,'2021-11-16','2021-11-26',NULL,NULL,NULL,'2021-11-16','Transportadores Industriales de México',999),
(8531,1850,NULL,11850.00,'MXN',NULL,11850.00,'2021-11-16','2021-12-17',NULL,NULL,NULL,'2021-11-16','TENIGAL',NULL),
(8532,1851,NULL,40760.00,'MXN',NULL,40760.00,'2021-11-18','2021-12-27',NULL,NULL,NULL,'2021-11-18','TENIGAL',NULL),
(8533,1852,11,32915.09,'MXN',NULL,32915.09,'2021-11-24','2021-11-26',NULL,NULL,NULL,'2021-11-24','Transportadores Industriales de México',999),
(8534,1853,NULL,102183.90,'MXN',NULL,102183.90,'2021-11-24','2021-12-30',NULL,NULL,NULL,'2021-11-24','Ternium México',NULL),
(8535,1854,11,33394.82,'MXN',NULL,33394.82,'2021-11-26','2021-11-26',NULL,NULL,NULL,'2021-11-26','Transportadores Industriales de México',999),
(8536,1855,NULL,12875.00,'MXN',NULL,12875.00,'2021-11-29','2022-01-03',NULL,NULL,NULL,'2021-11-29','TENIGAL',NULL),
(8537,1856,11,34078.26,'MXN',NULL,34078.26,'2021-12-03','2021-12-10',NULL,NULL,NULL,'2021-12-03','Transportadores Industriales de México',999),
(8538,1857,11,30809.91,'MXN',NULL,30809.91,'2021-12-10','2021-12-14',NULL,NULL,NULL,'2021-12-10','Transportadores Industriales de México',999),
(8539,1858,NULL,42650.00,'MXN',NULL,42650.00,'2021-12-13','2022-01-14',NULL,NULL,NULL,'2021-12-13','TENIGAL',NULL),
(8540,1859,NULL,105838.25,'MXN',NULL,105838.25,'2021-12-15','2022-01-31',NULL,NULL,NULL,'2021-12-15','Ternium México',NULL),
(8541,1860,11,26941.88,'MXN',NULL,26941.88,'2021-12-17','2021-12-17',NULL,NULL,NULL,'2021-12-17','Transportadores Industriales de México',999),
(8542,1861,NULL,5400.00,'MXN',NULL,5400.00,'2021-12-17','2022-03-11',NULL,NULL,NULL,'2021-12-17','Vesuvius México',NULL),
(8543,1862,11,27251.07,'MXN',NULL,27251.07,'2021-12-27','2021-12-23',NULL,NULL,NULL,'2021-12-27','Transportadores Industriales de México',999),
(8544,1863,11,30117.46,'MXN',NULL,30117.46,'2021-12-30','2022-01-07',NULL,NULL,NULL,'2021-12-30','Transportadores Industriales de México',999),
(8545,1864,NULL,3000.00,'MXN',NULL,3000.00,'2022-01-20','2022-04-08',NULL,NULL,NULL,'2022-01-20','Vesuvius México',NULL),
(8546,1865,11,30424.10,'MXN',NULL,30424.10,'2022-01-21','2022-01-21',NULL,NULL,NULL,'2022-01-21','Transportadores Industriales de México',999),
(8547,1866,11,26683.39,'MXN',NULL,26683.39,'2022-01-31','2022-02-10',NULL,NULL,NULL,'2022-01-31','Transportadores Industriales de México',999),
(8548,1867,11,33980.76,'MXN',NULL,33980.76,'2022-01-31','2022-01-28',NULL,NULL,NULL,'2022-01-31','Transportadores Industriales de México',999),
(8549,1868,11,36414.73,'MXN',NULL,36414.73,'2022-01-31','2022-01-28',NULL,NULL,NULL,'2022-01-31','Transportadores Industriales de México',999),
(8550,1869,NULL,9150.00,'MXN',NULL,9150.00,'2022-01-31','2022-03-31',NULL,NULL,NULL,'2022-01-31','Ternium México',NULL),
(8551,1870,NULL,107010.40,'MXN',NULL,107010.40,'2022-01-31','2022-03-31',NULL,NULL,NULL,'2022-01-31','Ternium México',NULL),
(8552,1871,NULL,36365.00,'MXN',NULL,36365.00,'2022-02-02','2022-03-04',NULL,NULL,NULL,'2022-02-02','TENIGAL',NULL),
(8553,1872,13,43006.00,'MXN',NULL,43006.00,'2022-02-02','2022-03-31',NULL,NULL,NULL,'2022-02-02','Ternium México',1000),
(8554,1873,11,38876.79,'MXN',NULL,38876.79,'2022-02-10','2022-02-10',NULL,NULL,NULL,'2022-02-10','Transportadores Industriales de México',999),
(8555,1874,11,40437.14,'MXN',NULL,40437.14,'2022-02-17','2022-02-14',NULL,NULL,NULL,'2022-02-17','Transportadores Industriales de México',999),
(8556,1875,NULL,110113.15,'MXN',NULL,110113.15,'2022-02-17','2022-03-19',NULL,NULL,NULL,'2022-02-17','Ternium México',NULL),
(8557,1876,13,68677.90,'MXN',NULL,68677.90,'2022-03-01','2022-03-31',NULL,NULL,NULL,'2022-03-01','Ternium México',1000),
(8558,1877,NULL,11360.00,'MXN',NULL,11360.00,'2022-03-03','2022-04-08',NULL,NULL,NULL,'2022-03-03','TENIGAL',NULL),
(8559,1878,NULL,38758.00,'MXN',NULL,38758.00,'2022-03-03','2022-04-08',NULL,NULL,NULL,'2022-03-03','TENIGAL',NULL),
(8560,1879,NULL,1500.00,'MXN',NULL,1500.00,'2022-03-11','2022-06-10',NULL,NULL,NULL,'2022-03-11','Vesuvius México',NULL),
(8561,1880,NULL,9150.00,'MXN',NULL,9150.00,'2022-03-15','2022-04-29',NULL,NULL,NULL,'2022-03-15','Ternium México',NULL),
(8562,1881,NULL,64123.50,'MXN',NULL,64123.50,'2022-03-15','2022-04-29',NULL,NULL,NULL,'2022-03-15','Ternium México',NULL),
(8563,1882,11,7650.00,'MXN',NULL,7650.00,'2022-03-15','2022-03-30',NULL,NULL,NULL,'2022-03-15','Transportadores Industriales de México',999),
(8564,1883,11,8643.21,'MXN',NULL,8643.21,'2022-03-18','2022-03-30',NULL,NULL,NULL,'2022-03-18','Transportadores Industriales de México',999),
(8565,1884,11,6199.64,'MXN',NULL,6199.64,'2022-03-25','2022-03-30',NULL,NULL,NULL,'2022-03-25','Transportadores Industriales de México',999),
(8566,1885,NULL,0.00,'MXN',NULL,0.00,'2022-04-01','2013-02-05',NULL,NULL,NULL,'2022-04-01','CANCELADA',NULL),
(8567,1886,NULL,0.00,'MXN',NULL,0.00,'2022-04-05','2013-02-05',NULL,NULL,NULL,'2022-04-05','CANCELADA',NULL),
(8568,1887,NULL,0.00,'MXN',NULL,0.00,'2022-04-18','2013-02-05',NULL,NULL,NULL,'2022-04-18','CANCELADA',NULL),
(8569,1888,13,92391.00,'MXN',NULL,92391.00,'2022-04-18','2022-05-31',NULL,NULL,NULL,'2022-04-18','Ternium México',1000),
(8570,1889,NULL,19926.55,'MXN',NULL,19926.55,'2022-04-18','2022-05-31',NULL,NULL,NULL,'2022-04-18','Ternium México',NULL),
(8571,1890,NULL,11360.00,'MXN',NULL,11360.00,'2022-04-18','2022-05-20',NULL,NULL,NULL,'2022-04-18','TENIGAL',NULL),
(8572,1891,NULL,54151.50,'MXN',NULL,54151.50,'2022-04-18','2022-05-20',NULL,NULL,NULL,'2022-04-18','TENIGAL',NULL),
(8573,1892,NULL,18300.00,'MXN',NULL,18300.00,'2022-04-19','2022-06-30',NULL,NULL,NULL,'2022-04-19','Ternium México',NULL),
(8574,1893,13,92930.00,'MXN',NULL,92930.00,'2022-04-28','2022-05-31',NULL,NULL,NULL,'2022-04-28','Ternium México',1000),
(8575,1894,11,6034.36,'MXN',NULL,6034.36,'2022-04-28','2022-10-05',NULL,NULL,NULL,'2022-04-28','Transportadores Industriales de México',999),
(8576,1895,11,5747.30,'MXN',NULL,5747.30,'2022-04-28','2022-10-05',NULL,NULL,NULL,'2022-04-28','Transportadores Industriales de México',999),
(8577,1896,11,8083.93,'MXN',NULL,8083.93,'2022-04-28','2022-10-05',NULL,NULL,NULL,'2022-04-28','Transportadores Industriales de México',999),
(8578,1897,11,13155.07,'MXN',NULL,13155.07,'2022-04-28','2022-10-05',NULL,NULL,NULL,'2022-04-28','Transportadores Industriales de México',999),
(8579,1898,11,20233.22,'MXN',NULL,20233.22,'2022-04-29','2022-05-23',NULL,NULL,NULL,'2022-04-29','Transportadores Industriales de México',999),
(8580,1899,NULL,28994.80,'MXN',NULL,28994.80,'2022-05-06','2022-06-30',NULL,NULL,NULL,'2022-05-06','Ternium México',NULL),
(8581,1900,11,12689.72,'MXN',NULL,12689.72,'2022-05-13','2022-05-13',NULL,NULL,NULL,'2022-05-13','Transportadores Industriales de México',999),
(8582,1901,11,8003.04,'MXN',NULL,8003.04,'2022-05-13','2022-05-13',NULL,NULL,NULL,'2022-05-13','Transportadores Industriales de México',999),
(8583,1902,NULL,9150.00,'MXN',NULL,9150.00,'2022-05-13','2022-06-30',NULL,NULL,NULL,'2022-05-13','Ternium México',NULL),
(8584,1903,13,28441.00,'MXN',NULL,28441.00,'2022-05-13','2022-06-30',NULL,NULL,NULL,'2022-05-13','Ternium México',1000),
(8585,1904,NULL,538572.88,'MXN',NULL,538572.88,'2022-05-13','2022-06-30',NULL,NULL,NULL,'2022-05-13','Ternium México',NULL),
(8586,1905,NULL,19695.70,'MXN',NULL,19695.70,'2022-05-18','2022-06-17',NULL,NULL,NULL,'2022-05-18','TENIGAL',NULL),
(8587,1906,NULL,21512.40,'MXN',NULL,21512.40,'2022-05-23','2022-06-30',NULL,NULL,NULL,'2022-05-23','Ternium México',NULL),
(8588,1907,11,10446.79,'MXN',NULL,10446.79,'2022-05-23','2022-05-26',NULL,NULL,NULL,'2022-05-23','Transportadores Industriales de México',999),
(8589,1908,11,10809.11,'MXN',NULL,10809.11,'2022-05-27','2022-05-27',NULL,NULL,NULL,'2022-05-27','Transportadores Industriales de México',999),
(8590,1909,NULL,10549.35,'MXN',NULL,10549.35,'2022-05-30','2022-06-30',NULL,NULL,NULL,'2022-05-30','Ternium México',NULL),
(8591,1910,13,55502.00,'MXN',NULL,55502.00,'2022-06-07','2022-07-29',NULL,NULL,NULL,'2022-06-07','Ternium México',1000),
(8592,1911,11,8336.71,'MXN',NULL,8336.71,'2022-06-07','2022-06-10',NULL,NULL,NULL,'2022-06-07','Transportadores Industriales de México',999),
(8593,1912,11,7408.47,'MXN',NULL,7408.47,NULL,'2022-06-10',NULL,NULL,NULL,NULL,'Transportadores Industriales de México',999),
(8594,1913,NULL,18300.00,'MXN',NULL,18300.00,'2022-06-13','2022-07-29',NULL,NULL,NULL,'2022-06-13','Ternium México',NULL),
(8595,1914,11,8524.29,'MXN',NULL,8524.29,'2022-06-16','2022-06-17',NULL,NULL,NULL,'2022-06-16','Transportadores Industriales de México',999),
(8596,1915,13,35235.00,'MXN',NULL,35235.00,'2022-06-16','2022-07-29',NULL,NULL,NULL,'2022-06-16','Ternium México',1000),
(8597,1916,NULL,5190.00,'MXN',NULL,5190.00,'2022-06-21','2022-08-31',NULL,NULL,NULL,'2022-06-21','Vesuvius México',NULL),
(8598,1917,11,8312.14,'MXN',NULL,8312.14,'2022-06-24','2022-06-27',NULL,NULL,NULL,'2022-06-24','Transportadores Industriales de México',999),
(8599,1918,11,8232.59,'MXN',NULL,8232.59,'2022-06-30','2022-07-08',NULL,NULL,NULL,'2022-06-30','Transportadores Industriales de México',999),
(8600,1919,11,7647.13,'MXN',NULL,7647.13,'2022-07-08','2022-07-08',NULL,NULL,NULL,'2022-07-08','Transportadores Industriales de México',999),
(8601,1920,11,8912.14,'MXN',NULL,8912.14,'2022-07-15','2022-07-14',NULL,NULL,NULL,'2022-07-15','Transportadores Industriales de México',999),
(8602,1921,13,57924.00,'MXN',NULL,57924.00,'2022-07-15','2022-08-31',NULL,NULL,NULL,'2022-07-15','Ternium México',1000),
(8603,1922,11,10105.45,'MXN',NULL,10105.45,'2022-07-22','2022-07-22',NULL,NULL,NULL,'2022-07-22','Transportadores Industriales de México',999),
(8604,1923,NULL,9150.00,'MXN',NULL,9150.00,'2022-07-27','2022-09-30',NULL,NULL,NULL,'2022-07-27','Ternium México',NULL),
(8605,1924,11,10291.07,'MXN',NULL,10291.07,'2022-07-29','2022-08-01',NULL,NULL,NULL,'2022-07-29','Transportadores Industriales de México',999),
(8606,1925,13,58039.00,'MXN',NULL,58039.00,'2022-08-01','2022-08-31',NULL,NULL,NULL,'2022-08-01','Ternium México',1000),
(8607,1926,13,108001.00,'MXN',NULL,108001.00,'2022-08-04','2022-09-30',NULL,NULL,NULL,'2022-08-04','Ternium México',1000),
(8608,1927,11,8991.70,'MXN',NULL,8991.70,'2022-08-05','2022-08-05',NULL,NULL,NULL,'2022-08-05','Transportadores Industriales de México',999),
(8609,1928,11,8859.11,'MXN',NULL,8859.11,'2022-08-12','2022-08-12',NULL,NULL,NULL,'2022-08-12','Transportadores Industriales de México',999),
(8610,1929,NULL,9150.00,'MXN',NULL,9150.00,'2022-08-18','2022-10-31',NULL,NULL,NULL,'2022-08-18','Ternium México',NULL),
(8611,1930,11,7284.26,'MXN',NULL,7284.26,'2022-08-19','2022-08-19',NULL,NULL,NULL,'2022-08-19','Transportadores Industriales de México',999),
(8612,1931,11,8859.11,'MXN',NULL,8859.11,'2022-08-26','2022-08-26',NULL,NULL,NULL,'2022-08-26','Transportadores Industriales de México',999),
(8613,1932,13,89893.00,'MXN',NULL,89893.00,'2022-08-29','2022-09-30',NULL,NULL,NULL,'2022-08-29','Ternium México',1000),
(8614,1933,13,83188.00,'MXN',NULL,83188.00,NULL,'2022-10-31',NULL,NULL,NULL,NULL,'Ternium México',1000),
(8615,1934,13,44054.00,'MXN',NULL,44054.00,'2022-09-12','2022-10-31',NULL,NULL,NULL,'2022-09-12','Ternium México',1000),
(8616,1935,11,8806.07,'MXN',NULL,8806.07,'2022-09-22','2022-09-20',NULL,NULL,NULL,'2022-09-22','Transportadores Industriales de México',999),
(8617,1936,11,7635.17,'MXN',NULL,7635.17,'2022-09-22','2022-09-20',NULL,NULL,NULL,'2022-09-22','Transportadores Industriales de México',999),
(8618,1937,11,8726.52,'MXN',NULL,8726.52,'2022-09-22','2022-09-20',NULL,NULL,NULL,'2022-09-22','Transportadores Industriales de México',999),
(8619,1938,11,17342.07,'MXN',NULL,17342.07,'2022-09-23','2022-09-23',NULL,NULL,NULL,'2022-09-23','Transportadores Industriales de México',999),
(8620,1939,13,69139.00,'MXN',NULL,69139.00,'2022-09-27','2022-10-31',NULL,NULL,NULL,'2022-09-27','Ternium México',1000),
(8621,1940,NULL,5940.00,'MXN',NULL,5940.00,'2022-09-27','2022-12-16',NULL,NULL,NULL,'2022-09-27','Vesuvius México',NULL),
(8622,1941,NULL,18300.00,'MXN',NULL,18300.00,'2022-09-29','2022-11-30',NULL,NULL,NULL,'2022-09-29','Ternium México',NULL),
(8623,1942,11,22954.15,'MXN',NULL,22954.15,'2022-09-29','2022-09-29',NULL,NULL,NULL,'2022-09-29','Transportadores Industriales de México',999),
(8624,1943,13,20016.00,'MXN',NULL,20016.00,'2022-09-30','2022-10-31',NULL,NULL,NULL,'2022-09-30','Ternium México',1000),
(8625,1944,13,67277.00,'MXN',NULL,67277.00,'2022-10-06','2022-11-30',NULL,NULL,NULL,'2022-10-06','Ternium México',1000),
(8626,1945,11,14607.77,'MXN',NULL,14607.77,'2022-10-14','2022-10-14',NULL,NULL,NULL,'2022-10-14','Transportadores Industriales de México',999),
(8627,1946,11,8700.00,'MXN',NULL,8700.00,'2022-10-14','2022-10-14',NULL,NULL,NULL,'2022-10-14','Transportadores Industriales de México',999),
(8628,1947,13,35212.00,'MXN',NULL,35212.00,'2022-10-19','2022-11-30',NULL,NULL,NULL,'2022-10-19','Ternium México',1000),
(8629,1948,11,8700.00,'MXN',NULL,8700.00,'2022-10-21','2022-10-21',NULL,NULL,NULL,'2022-10-21','Transportadores Industriales de México',999),
(8630,1949,13,69108.00,'MXN',NULL,69108.00,'2022-10-26','2022-11-30',NULL,NULL,NULL,'2022-10-26','Ternium México',1000),
(8631,1950,11,8753.04,'MXN',NULL,8753.04,'2022-10-28','2022-10-28',NULL,NULL,NULL,'2022-10-28','Transportadores Industriales de México',999),
(8632,1951,NULL,9150.00,'MXN',NULL,9150.00,'2022-11-08','2022-12-29',NULL,NULL,NULL,'2022-11-08','Ternium México',NULL),
(8633,1952,13,30383.00,'MXN',NULL,30383.00,'2022-11-08','2022-12-29',NULL,NULL,NULL,'2022-11-08','Ternium México',1000),
(8634,1953,13,64016.00,'MXN',NULL,64016.00,'2022-11-14','2022-12-29',NULL,NULL,NULL,'2022-11-14','Ternium México',1000),
(8635,1954,NULL,12064.50,'MXN',NULL,12064.50,'2022-11-17','2023-01-20',NULL,NULL,NULL,'2022-11-17','Vesuvius México',NULL),
(8636,1955,11,8008.46,'MXN',NULL,8008.46,'2022-11-18','2022-11-21',NULL,NULL,NULL,'2022-11-18','Transportadores Industriales de México',999),
(8637,1956,11,8806.07,'MXN',NULL,8806.07,'2022-11-18','2022-11-21',NULL,NULL,NULL,'2022-11-18','Transportadores Industriales de México',999),
(8638,1957,11,8885.63,'MXN',NULL,8885.63,'2022-11-18','2022-11-21',NULL,NULL,NULL,'2022-11-18','Transportadores Industriales de México',999),
(8639,1958,13,123461.90,'MXN',NULL,123461.90,'2022-11-25','2022-12-29',NULL,NULL,NULL,'2022-11-25','Ternium México',1000),
(8640,1959,11,8752.96,'MXN',NULL,8752.96,'2022-11-28','2022-11-25',NULL,NULL,NULL,'2022-11-28','Transportadores Industriales de México',999),
(8641,1960,13,80270.00,'MXN',NULL,80270.00,'2022-11-30','2022-12-29',NULL,NULL,NULL,'2022-11-30','Ternium México',1000),
(8642,1961,13,33962.75,'MXN',NULL,33962.75,'2022-12-01','2022-12-29',NULL,NULL,NULL,'2022-12-01','Ternium México',1000),
(8643,1962,11,8700.00,'MXN',NULL,8700.00,'2022-12-02','2022-12-02',NULL,NULL,NULL,'2022-12-02','Transportadores Industriales de México',999),
(8644,1963,13,48942.80,'MXN',NULL,48942.80,'2022-12-02','2023-01-01',NULL,NULL,NULL,'2022-12-02','Ternium México',1000),
(8645,1964,13,103035.00,'MXN',NULL,103035.00,'2022-12-08','2023-01-30',NULL,NULL,NULL,'2022-12-08','Ternium México',1000),
(8646,1965,11,8938.66,'MXN',NULL,8938.66,'2022-12-09','2022-12-09',NULL,NULL,NULL,'2022-12-09','Transportadores Industriales de México',999),
(8647,1966,11,8991.70,'MXN',NULL,8991.70,'2022-12-15','2022-12-15',NULL,NULL,NULL,'2022-12-15','Transportadores Industriales de México',999),
(8648,1967,13,51964.50,'MXN',NULL,51964.50,'2022-12-15','2023-01-30',NULL,NULL,NULL,'2022-12-15','Ternium México',1000),
(8649,1968,13,92238.28,'MXN',NULL,92238.28,'2022-12-20','2023-01-30',NULL,NULL,NULL,'2022-12-20','Ternium México',1000),
(8650,1969,11,8912.14,'MXN',NULL,8912.14,'2022-12-26','2022-12-23',NULL,NULL,NULL,'2022-12-26','Transportadores Industriales de México',999),
(8651,1970,11,7584.29,'MXN',NULL,7584.29,'2022-12-30','2022-12-29',NULL,NULL,NULL,'2022-12-30','Transportadores Industriales de México',999),
(8652,1971,13,114607.96,'MXN',NULL,114607.96,'2023-01-02','2023-02-28',NULL,NULL,NULL,'2023-01-02','Ternium México',1000),
(8653,1972,NULL,21192.00,'MXN',NULL,21192.00,'2023-01-16','2023-04-14',NULL,NULL,NULL,'2023-01-16','Vesuvius México',NULL),
(8654,1973,11,8793.30,'MXN',NULL,8793.30,'2023-01-20','2023-01-19',NULL,NULL,NULL,'2023-01-20','Transportadores Industriales de México',999),
(8655,1974,11,10556.25,'MXN',NULL,10556.25,'2023-01-20','2023-01-19',NULL,NULL,NULL,'2023-01-20','Transportadores Industriales de México',999),
(8656,1975,11,11813.42,'MXN',NULL,11813.42,'2023-01-20','2023-01-19',NULL,NULL,NULL,'2023-01-20','Transportadores Industriales de México',999),
(8657,1976,11,15776.97,'MXN',NULL,15776.97,'2022-01-27','2023-01-27',NULL,NULL,NULL,'2022-01-27','Transportadores Industriales de México',999),
(8658,1977,11,9560.63,'MXN',NULL,9560.63,'2023-02-07','2023-02-03',NULL,NULL,NULL,'2023-02-07','Transportadores Industriales de México',999),
(8659,1978,11,9534.11,'MXN',NULL,9534.11,'2023-02-10','2023-02-10',NULL,NULL,NULL,'2023-02-10','Transportadores Industriales de México',999),
(8660,1979,NULL,27450.00,'MXN',NULL,27450.00,'2023-02-17','2023-04-28',NULL,NULL,NULL,'2023-02-17','Ternium México',NULL),
(8661,1980,13,117631.70,'MXN',NULL,117631.70,'2023-02-17','2023-03-31',NULL,NULL,NULL,'2023-02-17','Ternium México',1000),
(8662,1981,13,126232.00,'MXN',NULL,126232.00,'2023-02-17','2023-03-31',NULL,NULL,NULL,'2023-02-17','Ternium México',1000),
(8663,1982,13,78786.00,'MXN',NULL,78786.00,'2023-02-17','2023-03-31',NULL,NULL,NULL,'2023-02-17','Ternium México',1000),
(8664,1983,13,112512.00,'MXN',NULL,112512.00,'2023-02-17','2023-03-31',NULL,NULL,NULL,'2023-02-17','Ternium México',1000),
(8665,1984,11,9481.07,'MXN',NULL,9481.07,'2023-02-17','2023-02-17',NULL,NULL,NULL,'2023-02-17','Transportadores Industriales de México',999),
(8666,1985,NULL,15750.00,'MXN',NULL,15750.00,'2023-02-20','2023-05-12',NULL,NULL,NULL,'2023-02-20','Vesuvius México',NULL),
(8667,1986,13,75500.08,'MXN',NULL,75500.08,'2023-02-21','2023-03-31',NULL,NULL,NULL,'2023-02-21','Ternium México',1000),
(8668,1987,11,4650.00,'MXN',NULL,4650.00,'2023-02-24','2023-02-24',NULL,NULL,NULL,'2023-02-24','Transportadores Industriales de México',999),
(8669,1988,13,65842.22,'MXN',NULL,65842.22,'2023-02-27','2023-03-31',NULL,NULL,NULL,'2023-02-27','Ternium México',1000),
(8670,1989,13,36548.00,'MXN',NULL,36548.00,'2023-02-27','2023-03-31',NULL,NULL,NULL,'2023-02-27','Ternium México',1000),
(8671,1990,11,4650.00,'MXN',NULL,4650.00,'2023-03-06','2023-03-03',NULL,NULL,NULL,'2023-03-06','Transportadores Industriales de México',999),
(8672,1991,NULL,153750.00,'MXN',NULL,153750.00,'2023-03-06','2023-04-28',NULL,NULL,NULL,'2023-03-06','Ternium México',NULL),
(8673,1992,11,4650.00,'MXN',NULL,4650.00,'2023-03-10','2023-03-09',NULL,NULL,NULL,'2023-03-10','Transportadores Industriales de México',999),
(8674,1993,NULL,794350.00,'MXN',NULL,794350.00,'2023-03-13','2023-04-28',NULL,NULL,NULL,'2023-03-13','Ternium México',NULL),
(8675,1994,NULL,18300.00,'MXN',NULL,18300.00,'2023-03-15','2023-05-03',NULL,NULL,NULL,'2023-03-15','Ternium México',NULL),
(8676,1995,11,4729.55,'MXN',NULL,4729.55,'2023-03-17','2023-03-17',NULL,NULL,NULL,'2023-03-17','Transportadores Industriales de México',999),
(8677,1996,NULL,29520.00,'MXN',NULL,29520.00,'2023-03-23','2023-06-09',NULL,NULL,NULL,'2023-03-23','Vesuvius México',NULL),
(8678,1997,11,4915.18,'MXN',NULL,4915.18,'2023-03-23','2023-03-23',NULL,NULL,NULL,'2023-03-23','Transportadores Industriales de México',999),
(8679,1998,NULL,15034.50,'MXN',NULL,15034.50,'2023-03-31','2023-06-09',NULL,NULL,NULL,'2023-03-31','Vesuvius México',NULL),
(8680,1999,NULL,5940.00,'MXN',NULL,5940.00,'2023-03-31','2023-06-09',NULL,NULL,NULL,'2023-03-31','Vesuvius México',NULL),
(8681,2000,11,4809.11,'MXN',NULL,4809.11,'2023-03-31','2023-03-31',NULL,NULL,NULL,'2023-03-31','Transportadores Industriales de México',999),
(8682,2001,NULL,9600.00,'MXN',NULL,9600.00,'2023-04-13','2023-07-14',NULL,NULL,NULL,'2023-04-13','Vesuvius México',NULL),
(8683,2002,NULL,3000.00,'MXN',NULL,3000.00,'2023-04-13','2023-07-14',NULL,NULL,NULL,'2023-04-13','Vesuvius México',NULL),
(8684,2003,13,44270.00,'MXN',NULL,44270.00,'2023-04-13','2023-05-31',NULL,NULL,NULL,'2023-04-13','Ternium México',1000),
(8685,2004,11,4065.63,'MXN',NULL,4065.63,'2023-04-26','2023-04-28',NULL,NULL,NULL,'2023-04-26','Transportadores Industriales de México',999),
(8686,2005,11,3315.63,'MXN',NULL,3315.63,'2023-04-26','2023-04-28',NULL,NULL,NULL,'2023-04-26','Transportadores Industriales de México',999),
(8687,2006,11,4729.55,'MXN',NULL,4729.55,'2023-04-26','2023-04-28',NULL,NULL,NULL,'2023-04-26','Transportadores Industriales de México',999),
(8688,2007,13,42412.00,'MXN',NULL,42412.00,'2023-04-26','2023-05-31',NULL,NULL,NULL,'2023-04-26','Ternium México',1000),
(8689,2008,13,124212.00,'MXN',NULL,124212.00,'2023-04-26','2023-05-31',NULL,NULL,NULL,'2023-04-26','Ternium México',1000),
(8690,2009,13,158280.00,'MXN',NULL,158280.00,'2023-04-26','2023-05-31',NULL,NULL,NULL,'2023-04-26','Ternium México',1000),
(8691,2010,13,83404.00,'MXN',NULL,83404.00,'2023-04-28','2023-05-31',NULL,NULL,NULL,'2023-04-28','Ternium México',1000),
(8692,2011,11,5047.77,'MXN',NULL,5047.77,'2023-04-28','2023-04-28',NULL,NULL,NULL,'2023-04-28','Transportadores Industriales de México',999),
(8693,2012,13,48257.50,'MXN',NULL,48257.50,'2023-05-03','2023-06-30',NULL,NULL,NULL,'2023-05-03','Ternium México',1000),
(8694,2013,13,35266.00,'MXN',NULL,35266.00,'2023-05-03','2023-06-30',NULL,NULL,NULL,'2023-05-03','Ternium México',1000),
(8695,2014,NULL,15400.00,'MXN',NULL,15400.00,'2023-05-04','2023-07-21',NULL,NULL,NULL,'2023-05-04','Vesuvius México',NULL),
(8696,2015,NULL,14750.00,'MXN',NULL,14750.00,'2023-05-04','2023-08-11',NULL,NULL,NULL,'2023-05-04','Vesuvius México',NULL),
(8697,2016,NULL,4687.50,'MXN',NULL,4687.50,'2023-05-05','2023-08-11',NULL,NULL,NULL,'2023-05-05','Vesuvius México',NULL),
(8698,2017,13,85750.00,'MXN',NULL,85750.00,'2023-05-15','2023-06-30',NULL,NULL,NULL,'2023-05-15','Ternium México',1000),
(8699,2018,NULL,9150.00,'MXN',NULL,9150.00,'2023-05-26','2023-07-31',NULL,NULL,NULL,'2023-05-26','Ternium México',NULL),
(8700,2019,13,118548.00,'MXN',NULL,118548.00,'2023-05-26','2023-06-30',NULL,NULL,NULL,'2023-05-26','Ternium México',1000),
(8701,2020,13,56118.00,'MXN',NULL,56118.00,'2023-05-26','2023-06-30',NULL,NULL,NULL,'2023-05-26','Ternium México',1000),
(8702,2021,NULL,14400.00,'MXN',NULL,14400.00,'2023-05-30','2023-09-08',NULL,NULL,NULL,'2023-05-30','Vesuvius México',NULL),
(8703,2022,NULL,9150.00,'MXN',NULL,9150.00,'2023-05-30','2023-07-31',NULL,NULL,NULL,'2023-05-30','Ternium México',NULL),
(8704,2023,13,54600.00,'MXN',NULL,54600.00,'2023-05-31','2023-06-30',NULL,NULL,NULL,'2023-05-31','Ternium México',1000),
(8705,2024,11,4915.18,'MXN',NULL,4915.18,'2023-05-31','2023-06-09',NULL,NULL,NULL,'2023-05-31','Transportadores Industriales de México',999),
(8706,2025,11,4729.55,'MXN',NULL,4729.55,'2023-05-31','2023-06-09',NULL,NULL,NULL,'2023-05-31','Transportadores Industriales de México',999),
(8707,2026,11,10301.52,'MXN',NULL,10301.52,'2023-05-31','2023-06-09',NULL,NULL,NULL,'2023-05-31','Transportadores Industriales de México',999),
(8708,2027,11,10407.59,'MXN',NULL,10407.59,'2023-05-31','2023-06-09',NULL,NULL,NULL,'2023-05-31','Transportadores Industriales de México',999),
(8709,2028,13,55042.00,'MXN',NULL,55042.00,'2023-06-05','2023-07-31',NULL,NULL,NULL,'2023-06-05','Ternium México',1000),
(8710,2029,13,67832.00,'MXN',NULL,67832.00,NULL,'2023-07-31',NULL,NULL,NULL,NULL,'Ternium México',1000),
(8711,2030,11,10434.11,'MXN',NULL,10434.11,NULL,'2023-06-09',NULL,NULL,NULL,NULL,'Transportadores Industriales de México',999),
(8712,2031,11,10460.63,'MXN',NULL,10460.63,'2023-06-09','2023-06-09',NULL,NULL,NULL,'2023-06-09','Transportadores Industriales de México',999),
(8713,2032,13,27855.00,'MXN',NULL,27855.00,'2023-06-27','2023-07-31',NULL,NULL,NULL,'2023-06-27','Ternium México',1000),
(8714,2033,11,10381.07,'MXN',NULL,10381.07,'2023-06-30','2023-09-21',NULL,NULL,NULL,'2023-06-30','Transportadores Industriales de México',999),
(8715,2034,11,10407.59,'MXN',NULL,10407.59,'2023-06-30','2023-09-21',NULL,NULL,NULL,'2023-06-30','Transportadores Industriales de México',999),
(8716,2035,11,4650.00,'MXN',NULL,4650.00,'2023-06-30','2023-09-21',NULL,NULL,NULL,'2023-06-30','Transportadores Industriales de México',999),
(8717,2036,13,66068.00,'MXN',NULL,66068.00,'2023-07-04','2023-08-31',NULL,NULL,NULL,'2023-07-04','Ternium México',1000),
(8718,2037,13,160746.99,'MXN',NULL,160746.99,'2023-07-06','2023-08-31',NULL,NULL,NULL,'2023-07-06','Ternium México',1000),
(8719,2038,NULL,6000.00,'MXN',NULL,6000.00,'2023-07-10','2023-09-29',NULL,NULL,NULL,'2023-07-10','Vesuvius México',NULL),
(8720,2039,11,10805.36,'MXN',NULL,10805.36,'2023-07-14','2023-07-14',NULL,NULL,NULL,'2023-07-14','Transportadores Industriales de México',999),
(8721,2040,11,11746.74,'MXN',NULL,11746.74,'2023-07-14','2023-07-14',NULL,NULL,NULL,'2023-07-14','Transportadores Industriales de México',999),
(8722,2041,NULL,18300.00,'MXN',NULL,18300.00,'2023-07-18','2023-09-29',NULL,NULL,NULL,'2023-07-18','Ternium México',NULL),
(8723,2042,13,90666.00,'MXN',NULL,90666.00,'2023-07-19','2023-08-31',NULL,NULL,NULL,'2023-07-19','Ternium México',1000),
(8724,2043,13,32398.00,'MXN',NULL,32398.00,'2023-07-19','2023-08-31',NULL,NULL,NULL,'2023-07-19','Ternium México',1000),
(8725,2044,NULL,62984.00,'MXN',NULL,62984.00,'2023-07-28','2023-08-31',NULL,NULL,NULL,'2023-07-28','Ternium México',NULL),
(8726,2045,11,12052.63,'MXN',NULL,12052.63,'2023-07-31','2023-09-21',NULL,NULL,NULL,'2023-07-31','Transportadores Industriales de México',999),
(8727,2046,11,15636.83,'MXN',NULL,15636.83,'2023-07-31','2023-09-21',NULL,NULL,NULL,'2023-07-31','Transportadores Industriales de México',999),
(8728,2047,NULL,31568.00,'MXN',NULL,31568.00,'2023-08-15','2023-11-10',NULL,NULL,NULL,'2023-08-15','Vesuvius México',NULL),
(8729,2048,13,69378.00,'MXN',NULL,69378.00,'2023-08-15','2023-09-29',NULL,NULL,NULL,'2023-08-15','Ternium México',1000),
(8730,2049,11,16081.61,'MXN',NULL,16081.61,'2023-08-15','2023-08-17',NULL,NULL,NULL,'2023-08-15','Transportadores Industriales de México',999),
(8731,2050,11,16187.68,'MXN',NULL,16187.68,'2023-08-15','2023-08-17',NULL,NULL,NULL,'2023-08-15','Transportadores Industriales de México',999),
(8732,2051,11,14464.29,'MXN',NULL,14464.29,'2023-08-17','2023-08-17',NULL,NULL,NULL,'2023-08-17','Transportadores Industriales de México',999),
(8733,2052,13,39927.00,'MXN',NULL,39927.00,'2023-08-22','2023-09-29',NULL,NULL,NULL,'2023-08-22','Ternium México',1000),
(8734,2053,13,43651.90,'MXN',NULL,43651.90,'2023-08-24','2023-09-29',NULL,NULL,NULL,'2023-08-24','Ternium México',1000),
(8735,2054,11,11640.67,'MXN',NULL,11640.67,'2023-08-28','2023-09-01',NULL,NULL,NULL,'2023-08-28','Transportadores Industriales de México',999),
(8736,2055,11,5883.08,'MXN',NULL,5883.08,'2023-08-31','2023-09-01',NULL,NULL,NULL,'2023-08-31','Transportadores Industriales de México',999),
(8737,2056,13,17236.00,'MXN',NULL,17236.00,'2023-09-01','2023-10-31',NULL,NULL,NULL,'2023-09-01','Ternium México',1000),
(8738,2057,11,5883.08,'MXN',NULL,5883.08,'2023-09-08','2023-09-21',NULL,NULL,NULL,'2023-09-08','Transportadores Industriales de México',999),
(8739,2058,11,7002.12,'MXN',NULL,7002.12,'2023-09-15','2023-09-21',NULL,NULL,NULL,'2023-09-15','Transportadores Industriales de México',999),
(8740,2059,11,5538.35,'MXN',NULL,5538.35,NULL,'2023-09-29',NULL,NULL,NULL,NULL,'Transportadores Industriales de México',999),
(8741,2060,11,220587.00,'MXN',NULL,220587.00,'2023-09-26',NULL,NULL,'100%',NULL,'2023-09-26','Transportadores Industriales de México',999),
(8742,2061,13,35269.00,'MXN',NULL,35269.00,'2023-09-27','2023-10-31',NULL,NULL,NULL,'2023-09-27','Ternium México',1000),
(8743,2062,11,5339.46,'MXN',NULL,5339.46,'2023-09-29','2023-09-29',NULL,NULL,NULL,'2023-09-29','Transportadores Industriales de México',999),
(8744,2063,NULL,9150.00,'MXN',NULL,9150.00,'2023-10-02','2023-11-30',NULL,NULL,NULL,'2023-10-02','Ternium México',NULL),
(8745,2064,11,5723.97,'MXN',NULL,5723.97,'2023-10-12','2023-10-26',NULL,NULL,NULL,'2023-10-12','Transportadores Industriales de México',999),
(8746,2065,11,5047.77,'MXN',NULL,5047.77,'2023-10-12','2023-10-26',NULL,NULL,NULL,'2023-10-12','Transportadores Industriales de México',999),
(8747,2066,13,67352.00,'MXN',NULL,67352.00,'2023-10-12','2023-11-30',NULL,NULL,NULL,'2023-10-12','Ternium México',1000),
(8748,2067,13,45344.00,'MXN',NULL,45344.00,'2023-10-12','2023-11-30',NULL,NULL,NULL,'2023-10-12','Ternium México',1000),
(8749,2068,13,59340.00,'MXN',NULL,59340.00,'2023-10-12','2023-11-30',NULL,NULL,NULL,'2023-10-12','Ternium México',1000),
(8750,2069,NULL,18300.00,'MXN',NULL,18300.00,'2023-10-13','2023-11-30',NULL,NULL,NULL,'2023-10-13','Ternium México',NULL),
(8751,2070,11,5339.46,'MXN',NULL,5339.46,'2023-10-25','2023-10-26',NULL,NULL,NULL,'2023-10-25','Transportadores Industriales de México',999),
(8752,2071,11,100293.00,'MXN',NULL,100293.00,'2023-10-25',NULL,NULL,'100%',NULL,'2023-10-25','Transportadores Industriales de México',999),
(8753,2072,11,5949.38,'MXN',NULL,5949.38,'2023-10-26','2023-10-26',NULL,NULL,NULL,'2023-10-26','Transportadores Industriales de México',999),
(8754,2073,13,135993.00,'MXN',NULL,135993.00,'2023-10-26','2023-11-30',NULL,NULL,NULL,'2023-10-26','Ternium México',1000),
(8755,2074,11,120294.00,'MXN',NULL,120294.00,'2023-10-30',NULL,NULL,'100%',NULL,'2023-10-30','Transportadores Industriales de México',999),
(8756,2075,11,5803.53,'MXN',NULL,5803.53,'2023-11-09','2023-11-09',NULL,NULL,NULL,'2023-11-09','Transportadores Industriales de México',999),
(8757,2076,11,5763.75,'MXN',NULL,5763.75,'2023-11-09','2023-11-09',NULL,NULL,NULL,'2023-11-09','Transportadores Industriales de México',999),
(8758,2077,13,77653.14,'MXN',NULL,77653.14,'2023-11-13','2023-12-28',NULL,NULL,NULL,'2023-11-13','Ternium México',1000),
(8759,2078,13,88173.80,'MXN',NULL,88173.80,'2023-11-13','2023-12-28',NULL,NULL,NULL,'2023-11-13','Ternium México',1000),
(8760,2079,NULL,13130.00,'MXN',NULL,13130.00,'2023-11-17','2024-02-16',NULL,NULL,NULL,'2023-11-17','Vesuvius México',NULL),
(8761,2080,11,6678.62,'MXN',NULL,6678.62,'2023-11-21','2023-11-29',NULL,NULL,NULL,'2023-11-21','Transportadores Industriales de México',999),
(8762,2081,11,6280.85,'MXN',NULL,6280.85,'2023-11-29','2023-11-29',NULL,NULL,NULL,'2023-11-29','Transportadores Industriales de México',999),
(8763,2082,11,6771.43,'MXN',NULL,6771.43,'2023-11-30','2023-12-29',NULL,NULL,NULL,'2023-11-30','Transportadores Industriales de México',999),
(8764,2083,NULL,9150.00,'MXN',NULL,9150.00,'2023-11-30','2024-01-31',NULL,NULL,NULL,'2023-11-30','Ternium México',NULL),
(8765,2084,17,76786.69,'MXN',NULL,76786.69,'2023-11-30','2023-12-28',NULL,NULL,NULL,'2023-11-30','Ternium México',1004),
(8766,2085,17,108179.28,'MXN',NULL,108179.28,'2023-11-30','2023-12-28',NULL,NULL,NULL,'2023-11-30','Ternium México',1004),
(8767,2086,17,98508.65,'MXN',NULL,98508.65,'2023-12-04','2024-01-31',NULL,NULL,NULL,'2023-12-04','Ternium México',1004),
(8768,2087,11,5684.20,'MXN',NULL,5684.20,'2023-12-11','2023-12-29',NULL,NULL,NULL,'2023-12-11','Transportadores Industriales de México',999),
(8769,2088,NULL,7200.00,'MXN',NULL,7200.00,'2023-12-11','2024-02-23',NULL,NULL,NULL,'2023-12-11','Vesuvius México',NULL),
(8770,2089,11,5922.86,'MXN',NULL,5922.86,'2023-12-18','2023-12-29',NULL,NULL,NULL,'2023-12-18','Transportadores Industriales de México',999),
(8771,2090,11,7176.96,'MXN',NULL,7176.96,'2023-12-26','2023-12-29',NULL,NULL,NULL,'2023-12-26','Transportadores Industriales de México',999),
(8772,2091,11,4968.21,'MXN',NULL,4968.21,'2023-12-29','2023-12-29',NULL,NULL,NULL,'2023-12-29','Transportadores Industriales de México',999),
(8773,2092,13,30302.90,'MXN',NULL,30302.90,'2024-01-02','2024-02-29',NULL,NULL,NULL,'2024-01-02','Ternium México',1000),
(8774,2093,17,48879.60,'MXN',NULL,48879.60,'2024-01-02','2024-02-29',NULL,NULL,NULL,'2024-01-02','Ternium México',1004),
(8775,2094,17,86126.52,'MXN',NULL,86126.52,'2024-01-02','2024-02-29',NULL,NULL,NULL,'2024-01-02','Ternium México',1004),
(8776,2095,11,4862.14,'MXN',NULL,4862.14,'2024-01-09','2024-01-19',NULL,NULL,NULL,'2024-01-09','Transportadores Industriales de México',999),
(8777,2096,13,98676.00,'MXN',NULL,98676.00,'2024-01-09','2024-02-29',NULL,NULL,NULL,'2024-01-09','Ternium México',1000),
(8778,2097,17,68499.38,'MXN',NULL,68499.38,'2024-01-09','2024-02-29',NULL,NULL,NULL,'2024-01-09','Ternium México',1004),
(8779,2098,17,180338.72,'MXN',NULL,180338.72,'2024-01-09','2024-02-29',NULL,NULL,NULL,'2024-01-09','Ternium México',1004),
(8780,2099,11,5750.49,'MXN',NULL,5750.49,'2024-01-12','2024-01-19',NULL,NULL,NULL,'2024-01-12','Transportadores Industriales de México',999),
(8781,2100,NULL,9150.00,'MXN',NULL,9150.00,'2024-01-15','2024-02-29',NULL,NULL,NULL,'2024-01-15','Ternium México',NULL),
(8782,2101,11,5432.28,'MXN',NULL,5432.28,'2024-01-22','2024-01-19',NULL,NULL,NULL,'2024-01-22','Transportadores Industriales de México',999),
(8783,2102,11,5803.53,'MXN',NULL,5803.53,'2024-01-26','2024-01-26',NULL,NULL,NULL,'2024-01-26','Transportadores Industriales de México',999),
(8784,2103,11,5180.36,'MXN',NULL,5180.36,'2024-01-31','2024-02-02',NULL,NULL,NULL,'2024-01-31','Transportadores Industriales de México',999),
(8785,2104,11,5763.75,'MXN',NULL,5763.75,'2024-02-13','2024-02-09',NULL,NULL,NULL,'2024-02-13','Transportadores Industriales de México',999),
(8786,2105,17,208710.10,'MXN',NULL,208710.10,'2024-02-14','2024-03-27',NULL,NULL,NULL,'2024-02-14','Ternium México',1004),
(8787,2106,17,121591.13,'MXN',NULL,121591.13,'2024-02-14','2024-03-27',NULL,NULL,NULL,'2024-02-14','Ternium México',1004),
(8788,2107,17,128623.53,'MXN',NULL,128623.53,'2024-02-15','2024-03-27',NULL,NULL,NULL,'2024-02-15','Ternium México',1004),
(8789,2108,17,36949.50,'MXN',NULL,36949.50,'2024-02-15','2024-03-27',NULL,NULL,NULL,'2024-02-15','Ternium México',1004),
(8790,2109,15,11440.00,'MXN',NULL,11440.00,'2024-02-15','2024-04-30',NULL,NULL,NULL,'2024-02-15','Ternium México',1002),
(8791,2110,11,5551.61,'MXN',NULL,5551.61,'2024-02-19','2024-02-19',NULL,NULL,NULL,'2024-02-19','Transportadores Industriales de México',999),
(8792,2111,11,5551.61,'MXN',NULL,5551.61,'2024-02-23','2024-02-22',NULL,NULL,NULL,'2024-02-23','Transportadores Industriales de México',999),
(8793,2112,15,11440.00,'MXN',NULL,11440.00,'2024-02-26','2024-04-30',NULL,NULL,NULL,'2024-02-26','Ternium México',1002),
(8794,2113,13,48414.12,'MXN',NULL,48414.12,'2024-02-27','2024-03-27',NULL,NULL,NULL,'2024-02-27','Ternium México',1000),
(8795,2114,17,103702.20,'MXN',NULL,103702.20,'2024-02-28','2024-03-27',NULL,NULL,NULL,'2024-02-28','Ternium México',1004),
(8796,2115,11,5763.75,'MXN',NULL,5763.75,'2024-02-29','2024-03-01',NULL,NULL,NULL,'2024-02-29','Transportadores Industriales de México',999),
(8797,2116,11,5922.86,'MXN',NULL,5922.86,'2024-03-12','2024-03-22',NULL,NULL,NULL,'2024-03-12','Transportadores Industriales de México',999),
(8798,2117,17,50331.75,'MXN',NULL,50331.75,'2024-03-12','2024-04-30',NULL,NULL,NULL,'2024-03-12','Ternium México',1004),
(8799,2118,15,11440.00,'MXN',NULL,11440.00,'2024-03-12','2024-05-31',NULL,NULL,NULL,'2024-03-12','Ternium México',1002),
(8800,2119,14,136400.13,'MXN',NULL,136400.13,'2024-03-12','2024-04-30',NULL,NULL,NULL,'2024-03-12','Ternium México',1001),
(8801,2120,11,5591.38,'MXN',NULL,5591.38,'2024-03-14','2024-03-14',NULL,NULL,NULL,'2024-03-14','Transportadores Industriales de México',999),
(8802,2121,11,56000.00,'MXN',NULL,56000.00,'2024-03-22','2024-03-22',NULL,NULL,NULL,'2024-03-22','Transportadores Industriales de México',999),
(8803,2122,11,5876.62,'MXN',NULL,5876.62,'2024-03-22','2024-03-22',NULL,NULL,NULL,'2024-03-22','Transportadores Industriales de México',999),
(8804,2123,11,5578.13,'MXN',NULL,5578.13,'2024-03-26','2024-03-27',NULL,NULL,NULL,'2024-03-26','Transportadores Industriales de México',999),
(8805,2124,17,26145.00,'MXN',NULL,26145.00,'2024-03-26','2024-04-30',NULL,NULL,NULL,'2024-03-26','Ternium México',1004),
(8806,2125,17,91100.10,'MXN',NULL,91100.10,'2024-03-28','2024-04-30',NULL,NULL,NULL,'2024-03-28','Ternium México',1004),
(8807,2126,17,58138.50,'MXN',NULL,58138.50,'2024-03-28','2024-04-30',NULL,NULL,NULL,'2024-03-28','Ternium México',1004),
(8808,2127,14,22449.53,'MXN',NULL,22449.53,'2024-04-01','2024-05-31',NULL,NULL,NULL,'2024-04-01','Ternium México',1001),
(8809,2128,11,1768.75,'MXN',NULL,1768.75,'2024-04-09','2024-04-18',NULL,NULL,NULL,'2024-04-09','Transportadores Industriales de México',999),
(8810,2129,14,144354.13,'MXN',NULL,144354.13,'2024-04-09','2024-05-31',NULL,NULL,NULL,'2024-04-09','Ternium México',1001),
(8811,2130,11,1792.97,'MXN',NULL,1792.97,'2024-04-12','2024-04-18',NULL,NULL,NULL,'2024-04-12','Transportadores Industriales de México',999),
(8812,2131,15,11440.00,'MXN',NULL,11440.00,'2024-04-12','2024-06-28',NULL,NULL,NULL,'2024-04-12','Ternium México',1002),
(8813,2132,17,91949.55,'MXN',NULL,91949.55,'2024-04-12','2024-05-31',NULL,NULL,NULL,'2024-04-12','Ternium México',1004),
(8814,2133,17,119832.76,'MXN',NULL,119832.76,'2024-04-15','2024-05-31',NULL,NULL,NULL,'2024-04-15','Ternium México',1004),
(8815,2134,11,4725.00,'MXN',NULL,4725.00,'2024-04-18','2024-04-18',NULL,NULL,NULL,'2024-04-18','Transportadores Industriales de México',999),
(8816,2135,11,9481.07,'MXN',NULL,9481.07,'2024-04-25','2024-04-25',NULL,NULL,NULL,'2024-04-25','Transportadores Industriales de México',999),
(8817,2136,11,9878.84,'MXN',NULL,9878.84,'2024-05-07','2024-05-17',NULL,NULL,NULL,'2024-05-07','Transportadores Industriales de México',999),
(8818,2137,14,172388.94,'MXN',NULL,172388.94,'2024-05-07','2024-06-28',NULL,NULL,NULL,'2024-05-07','Ternium México',1001),
(8819,2138,17,28557.90,'MXN',NULL,28557.90,'2024-05-07','2024-06-28',NULL,NULL,NULL,'2024-05-07','Ternium México',1004),
(8820,2139,17,44104.20,'MXN',NULL,44104.20,'2024-05-07','2024-06-28',NULL,NULL,NULL,'2024-05-07','Ternium México',1004),
(8821,2140,17,142492.43,'MXN',NULL,142492.43,'2024-05-07','2024-06-28',NULL,NULL,NULL,'2024-05-07','Ternium México',1004),
(8822,2141,11,10042.77,'MXN',NULL,10042.77,'2024-05-09','2024-05-17',NULL,NULL,NULL,'2024-05-09','Transportadores Industriales de México',999),
(8823,2142,24,19580.00,'MXN',NULL,19580.00,'2024-05-09','2024-08-09',NULL,NULL,NULL,'2024-05-09','Vesuvius México',1011),
(8824,2143,25,40200.00,'MXN',NULL,40200.00,'2024-05-09','2024-08-09',NULL,NULL,NULL,'2024-05-09','Vesuvius México',1012),
(8825,2144,NULL,0.00,'MXN',NULL,0.00,'2024-05-13','2013-02-05',NULL,NULL,NULL,'2024-05-13','CANCELADA',NULL),
(8826,2145,23,4396.00,'MXN',NULL,4396.00,'2024-05-13','2024-07-19',NULL,NULL,NULL,'2024-05-13','Vesuvius México',1010),
(8827,2146,11,7942.90,'MXN',NULL,7942.90,'2024-05-17','2024-05-17',NULL,NULL,NULL,'2024-05-17','Transportadores Industriales de México',999),
(8828,2147,22,23100.00,'MXN',NULL,23100.00,'2024-05-17','2024-07-19',NULL,NULL,NULL,'2024-05-17','Vesuvius México',1009),
(8829,2148,11,5100.80,'MXN',NULL,5100.80,'2024-05-24','2024-05-24',NULL,NULL,NULL,'2024-05-24','Transportadores Industriales de México',999),
(8830,2149,16,28350.13,'MXN',NULL,28350.13,'2024-05-29','2024-06-28',NULL,NULL,NULL,'2024-05-29','Ternium México',1003),
(8831,2150,14,447700.48,'MXN',NULL,447700.48,'2024-05-29','2024-06-28',NULL,NULL,NULL,'2024-05-29','Ternium México',1001),
(8832,2151,17,97918.80,'MXN',NULL,97918.80,'2024-05-29','2024-06-28',NULL,NULL,NULL,'2024-05-29','Ternium México',1004),
(8833,2152,11,4703.04,'MXN',NULL,4703.04,'2024-05-31','2024-06-13',NULL,NULL,NULL,'2024-05-31','Transportadores Industriales de México',999),
(8834,2153,15,11440.00,'MXN',NULL,11440.00,'2024-06-04','2024-10-03',NULL,NULL,NULL,'2024-06-04','Ternium México',1002),
(8835,2154,14,16600.08,'MXN',NULL,16600.08,'2024-06-04','2024-07-04',NULL,NULL,NULL,'2024-06-04','Ternium México',1001),
(8836,2155,NULL,53478.60,'MXN',NULL,53478.60,'2024-06-04','2024-07-04',NULL,NULL,NULL,'2024-06-04','Ternium México',NULL),
(8837,2156,11,4835.63,'MXN',NULL,4835.63,'2024-06-13','2024-06-13',NULL,NULL,NULL,'2024-06-13','Transportadores Industriales de México',999),
(8838,2157,11,5021.25,'MXN',NULL,5021.25,'2024-06-13','2024-06-13',NULL,NULL,NULL,'2024-06-13','Transportadores Industriales de México',999),
(8839,2158,11,5180.36,'MXN',NULL,5180.36,'2024-06-26','2024-06-28',NULL,NULL,NULL,'2024-06-26','Transportadores Industriales de México',999),
(8840,2159,11,7716.63,'MXN',NULL,7716.63,'2024-06-26','2024-06-28',NULL,NULL,NULL,'2024-06-26','Transportadores Industriales de México',999),
(8841,2160,17,34979.70,'MXN',NULL,34979.70,'2024-06-28','2024-10-03',NULL,NULL,NULL,'2024-06-28','Ternium México',1004),
(8842,2161,14,244578.09,'MXN',NULL,244578.09,'2024-06-28','2024-10-03',NULL,NULL,NULL,'2024-06-28','Ternium México',1001),
(8843,2162,17,90532.58,'MXN',NULL,90532.58,'2024-07-04','2024-10-03',NULL,NULL,NULL,'2024-07-04','Ternium México',1004),
(8844,2163,11,7539.51,'MXN',NULL,7539.51,'2024-07-05','2024-07-18',NULL,NULL,NULL,'2024-07-05','Transportadores Industriales de México',999),
(8845,2164,11,5180.36,'MXN',NULL,5180.36,'2024-07-12','2024-07-18',NULL,NULL,NULL,'2024-07-12','Transportadores Industriales de México',999),
(8846,2165,26,11400.00,'MXN',NULL,11400.00,'2024-07-12','2024-09-13',NULL,NULL,NULL,'2024-07-12','Vesuvius México',1013),
(8847,2166,11,4968.21,'MXN',NULL,4968.21,'2024-07-17','2024-07-18',NULL,NULL,NULL,'2024-07-17','Transportadores Industriales de México',999),
(8848,2167,15,11440.00,'MXN',NULL,11440.00,'2024-07-24','2024-10-03',NULL,NULL,NULL,'2024-07-24','Ternium México',1002),
(8849,2168,11,4835.63,'MXN',NULL,4835.63,'2024-07-26','2024-07-31',NULL,NULL,NULL,'2024-07-26','Transportadores Industriales de México',999),
(8850,2169,14,48020.39,'MXN',NULL,48020.39,'2024-07-29','2024-10-03',NULL,NULL,NULL,'2024-07-29','Ternium México',1001),
(8851,2170,27,11400.00,'MXN',NULL,11400.00,'2024-07-29','2024-09-27',NULL,NULL,NULL,'2024-07-29','Vesuvius México',1014),
(8852,2171,11,37200.00,'MXN',NULL,37200.00,'2024-07-30','2024-08-01',NULL,NULL,NULL,'2024-07-30','Transportadores Industriales de México',999),
(8853,2172,11,5578.13,'MXN',NULL,5578.13,'2024-07-31','2024-08-28',NULL,NULL,NULL,'2024-07-31','Transportadores Industriales de México',999),
(8854,2173,28,9670.00,'MXN',NULL,9670.00,'2024-08-05','2024-10-11',NULL,NULL,NULL,'2024-08-05','Vesuvius México',1015),
(8855,2174,15,11440.00,'MXN',NULL,11440.00,'2024-08-07','2024-10-31',NULL,NULL,NULL,'2024-08-07','Ternium México',1002),
(8856,2175,17,50699.25,'MXN',NULL,50699.25,'2024-08-07','2024-10-03',NULL,NULL,NULL,'2024-08-07','Ternium México',1004),
(8857,2176,11,4994.73,'MXN',NULL,4994.73,'2024-08-15','2024-08-28',NULL,NULL,NULL,'2024-08-15','Transportadores Industriales de México',999),
(8858,2177,11,4888.66,'MXN',NULL,4888.66,'2024-08-15','2024-08-28',NULL,NULL,NULL,'2024-08-15','Transportadores Industriales de México',999),
(8859,2178,17,145247.28,'MXN',NULL,145247.28,'2024-08-16','2024-10-03',NULL,NULL,NULL,'2024-08-16','Ternium México',1004),
(8860,2179,17,64820.70,'MXN',NULL,64820.70,'2024-08-16','2024-10-03',NULL,NULL,NULL,'2024-08-16','Ternium México',1004),
(8861,2180,29,11580.00,'MXN',NULL,11580.00,'2024-08-19','2024-10-18',NULL,NULL,NULL,'2024-08-19','Vesuvius México',1016),
(8862,2181,11,7274.11,'MXN',NULL,7274.11,'2024-08-23','2024-08-28',NULL,NULL,NULL,'2024-08-23','Transportadores Industriales de México',999),
(8863,2182,11,16374.55,'MXN',NULL,16374.55,'2024-08-30','2024-08-30',NULL,NULL,NULL,'2024-08-30','Transportadores Industriales de México',999),
(8864,2183,14,22250.97,'MXN',NULL,22250.97,'2024-09-02','2024-10-31',NULL,NULL,NULL,'2024-09-02','Ternium México',1001),
(8865,2184,17,72458.61,'MXN',NULL,72458.61,'2024-09-02','2024-10-31',NULL,NULL,NULL,'2024-09-02','Ternium México',1004),
(8866,2185,17,57156.75,'MXN',NULL,57156.75,'2024-09-05','2024-10-31',NULL,NULL,NULL,'2024-09-05','Ternium México',1004),
(8867,2186,11,13132.95,'MXN',NULL,13132.95,'2024-09-06','2024-09-06',NULL,NULL,NULL,'2024-09-06','Transportadores Industriales de México',999),
(8868,2187,11,4994.73,'MXN',NULL,4994.73,'2024-09-13','2024-09-13',NULL,NULL,NULL,'2024-09-13','Transportadores Industriales de México',999),
(8869,2188,30,11800.00,'MXN',NULL,11800.00,'2024-09-19','2024-11-22',NULL,NULL,NULL,'2024-09-19','Vesuvius México',1017),
(8870,2189,11,4968.21,'MXN',NULL,4968.21,'2024-09-23','2024-09-27',NULL,NULL,NULL,'2024-09-23','Transportadores Industriales de México',999),
(8871,2190,14,38591.67,'MXN',NULL,38591.67,'2024-09-23','2024-10-31',NULL,NULL,NULL,'2024-09-23','Ternium México',1001),
(8872,2191,11,4994.73,'MXN',NULL,4994.73,'2024-09-27','2024-09-27',NULL,NULL,NULL,'2024-09-27','Transportadores Industriales de México',999),
(8873,2192,17,28278.61,'MXN',NULL,28278.61,'2024-09-27','2024-10-31',NULL,NULL,NULL,'2024-09-27','Ternium México',1004),
(8874,2193,11,52240.00,'MXN',NULL,52240.00,'2024-09-27','2024-09-27',NULL,NULL,NULL,'2024-09-27','Transportadores Industriales de México',999),
(8875,2194,17,62555.75,'MXN',NULL,62555.75,'2024-09-30','2024-10-31',NULL,NULL,NULL,'2024-09-30','Ternium México',1004),
(8876,2195,14,87795.32,'MXN',NULL,87795.32,'2024-09-30','2024-10-31',NULL,NULL,NULL,'2024-09-30','Ternium México',1001),
(8877,2196,14,93599.78,'MXN',NULL,93599.78,'2024-10-02','2024-11-29',NULL,NULL,NULL,'2024-10-02','Ternium México',1001),
(8878,2197,17,163141.57,'MXN',NULL,163141.57,'2024-10-03','2024-11-29',NULL,NULL,NULL,'2024-10-03','Ternium México',1004),
(8879,2198,31,4396.00,'MXN',NULL,4396.00,'2024-10-10','2024-12-13',NULL,NULL,NULL,'2024-10-10','Vesuvius México',1018),
(8880,2199,32,6895.00,'MXN',NULL,6895.00,'2024-10-10','2024-12-13',NULL,NULL,NULL,'2024-10-10','Vesuvius México',1019),
(8881,2200,11,4756.07,'MXN',NULL,4756.07,'2024-10-11','2024-10-25',NULL,NULL,NULL,'2024-10-11','Transportadores Industriales de México',999),
(8882,2201,11,5312.95,'MXN',NULL,5312.95,'2024-10-11','2024-10-25',NULL,NULL,NULL,'2024-10-11','Transportadores Industriales de México',999),
(8883,2202,14,133067.80,'MXN',NULL,133067.80,'2024-10-14','2024-11-29',NULL,NULL,NULL,'2024-10-14','Ternium México',1001),
(8884,2203,33,2750.00,'MXN',NULL,2750.00,'2024-10-14',NULL,NULL,'100%',NULL,'2024-10-14','Vesuvius México',1020),
(8885,2204,17,52355.10,'MXN',NULL,52355.10,'2024-10-18','2024-11-29',NULL,NULL,NULL,'2024-10-18','Ternium México',1004),
(8886,2205,15,11440.00,'MXN',NULL,11440.00,'2024-10-18','2024-12-30',NULL,NULL,NULL,'2024-10-18','Ternium México',1002),
(8887,2206,11,5657.68,'MXN',NULL,5657.68,'2024-10-18','2024-10-25',NULL,NULL,NULL,'2024-10-18','Transportadores Industriales de México',999),
(8888,2207,11,5074.29,'MXN',NULL,5074.29,'2024-10-25','2024-10-25',NULL,NULL,NULL,'2024-10-25','Transportadores Industriales de México',999),
(8889,2208,11,4994.73,'MXN',NULL,4994.73,'2024-10-31','2024-11-08',NULL,NULL,NULL,'2024-10-31','Transportadores Industriales de México',999),
(8890,2209,17,159814.20,'MXN',NULL,159814.20,'2024-11-06','2024-12-31',NULL,NULL,NULL,'2024-11-06','Ternium México',1004),
(8891,2210,11,5074.29,'MXN',NULL,5074.29,'2024-11-08','2024-11-08',NULL,NULL,NULL,'2024-11-08','Transportadores Industriales de México',999),
(8892,2211,11,14025.54,'MXN',NULL,14025.54,'2024-11-27','2024-11-29',NULL,NULL,NULL,'2024-11-27','Transportadores Industriales de México',999),
(8893,2212,11,14146.50,'MXN',NULL,14146.50,'2024-11-27','2024-11-29',NULL,NULL,NULL,'2024-11-27','Transportadores Industriales de México',999),
(8894,2213,14,247320.19,'MXN',NULL,247320.19,'2024-11-27','2024-12-31',NULL,NULL,NULL,'2024-11-27','Ternium México',1001),
(8895,2214,11,13586.79,'MXN',NULL,13586.79,'2024-11-27','2024-11-29',NULL,NULL,NULL,'2024-11-27','Transportadores Industriales de México',999),
(8896,2215,11,14146.50,'MXN',NULL,14146.50,'2024-11-27','2024-11-29',NULL,NULL,NULL,'2024-11-27','Transportadores Industriales de México',999),
(8897,2216,11,14064.11,'MXN',NULL,14064.11,'2024-11-28','2024-11-29',NULL,NULL,NULL,'2024-11-28','Transportadores Industriales de México',999),
(8898,2217,15,22880.00,'MXN',NULL,22880.00,'2024-11-28','2025-01-31',NULL,NULL,NULL,'2024-11-28','Ternium México',1002),
(8899,2218,17,25915.05,'MXN',NULL,25915.05,'2024-11-28','2024-12-31',NULL,NULL,NULL,'2024-11-28','Ternium México',1004),
(8900,2219,17,162551.67,'MXN',NULL,162551.67,'2024-11-28','2024-12-31',NULL,NULL,NULL,'2024-11-28','Ternium México',1004),
(8901,2220,13,24461.55,'MXN',NULL,24461.55,'2024-11-29','2024-12-31',NULL,NULL,NULL,'2024-11-29','Ternium México',1000),
(8902,2221,13,99897.14,'MXN',NULL,99897.14,'2024-12-01','2025-01-31',NULL,NULL,NULL,'2024-12-01','Ternium México',1000),
(8903,2222,16,25080.18,'MXN',NULL,25080.18,'2024-12-03','2025-01-31',NULL,NULL,NULL,'2024-12-03','Ternium México',1003),
(8904,2223,14,247751.91,'MXN',NULL,247751.91,'2024-12-03','2025-01-31',NULL,NULL,NULL,'2024-12-03','Ternium México',1001),
(8905,2224,34,1450.00,'MXN',NULL,1450.00,'2024-12-09','2025-02-14',NULL,NULL,NULL,'2024-12-09','Vesuvius México',1021),
(8906,2225,35,41060.00,'MXN',NULL,41060.00,'2024-12-09','2025-02-14',NULL,NULL,NULL,'2024-12-09','Vesuvius México',1022),
(8907,2226,17,14200.20,'MXN',NULL,14200.20,'2024-12-11','2025-01-31',NULL,NULL,NULL,'2024-12-11','Ternium México',1004),
(8908,2227,11,13575.94,'MXN',NULL,13575.94,'2024-12-12','2024-12-12',NULL,NULL,NULL,'2024-12-12','Transportadores Industriales de México',999),
(8909,2228,11,14146.50,'MXN',NULL,14146.50,'2024-12-12','2024-12-12',NULL,NULL,NULL,'2024-12-12','Transportadores Industriales de México',999),
(8910,2229,11,13498.79,'MXN',NULL,13498.79,'2024-12-12','2024-12-12',NULL,NULL,NULL,'2024-12-12','Transportadores Industriales de México',999),
(8911,2230,36,9550.00,'MXN',NULL,9550.00,'2024-12-13','2025-02-28',NULL,NULL,NULL,'2024-12-13','Vesuvius México',1023),
(8912,2231,14,34000.14,'MXN',NULL,34000.14,'2024-12-17','2025-01-31',NULL,NULL,NULL,'2024-12-17','Ternium México',1001),
(8913,2232,11,14146.50,'MXN',NULL,14146.50,'2024-12-23','2024-12-20',NULL,NULL,NULL,'2024-12-23','Transportadores Industriales de México',999),
(8914,2233,11,11627.01,'MXN',NULL,11627.01,'2024-12-23','2024-12-20',NULL,NULL,NULL,'2024-12-23','Transportadores Industriales de México',999),
(8915,2234,11,13827.86,'MXN',NULL,13827.86,'2024-12-31','2024-12-30',NULL,NULL,NULL,'2024-12-31','Transportadores Industriales de México',999),
(8916,2235,11,14146.50,'MXN',NULL,14146.50,'2024-12-31','2024-12-30',NULL,NULL,NULL,'2024-12-31','Transportadores Industriales de México',999),
(8917,2236,11,12904.55,'MXN',NULL,12904.55,'2024-12-31','2025-01-03',NULL,NULL,NULL,'2024-12-31','Transportadores Industriales de México',999),
(8918,2237,13,38842.65,'MXN',NULL,38842.65,'2025-01-03','2025-02-28',NULL,NULL,NULL,'2025-01-03','Ternium México',1000),
(8919,2238,17,76708.38,'MXN',NULL,76708.38,'2025-01-03','2025-02-28',NULL,NULL,NULL,'2025-01-03','Ternium México',1004),
(8920,2239,11,17025.00,'MXN',NULL,17025.00,'2024-01-17','2025-01-17',NULL,NULL,NULL,'2024-01-17','Transportadores Industriales de México',999),
(8921,2240,11,14146.50,'MXN',NULL,14146.50,'2024-01-17','2025-01-17',NULL,NULL,NULL,'2024-01-17','Transportadores Industriales de México',999),
(8922,2241,11,18054.38,'MXN',NULL,18054.38,'2024-01-17','2025-01-17',NULL,NULL,NULL,'2024-01-17','Transportadores Industriales de México',999),
(8923,2242,11,14146.50,'MXN',NULL,14146.50,'2024-01-17','2025-01-17',NULL,NULL,NULL,'2024-01-17','Transportadores Industriales de México',999),
(8924,2243,21,5000.00,'MXN',NULL,5000.00,'2025-01-22','2025-05-23',NULL,NULL,NULL,'2025-01-22','Vesuvius México',1008),
(8925,2244,13,124243.12,'MXN',NULL,124243.12,'2025-01-30','2025-03-07',NULL,NULL,NULL,'2025-01-30','Ternium México',1000),
(8926,2245,11,18539.60,'MXN',NULL,18539.60,'2025-01-31','2025-01-30',NULL,NULL,NULL,'2025-01-31','Transportadores Industriales de México',999),
(8927,2246,11,14496.50,'MXN',NULL,14496.50,'2025-01-31','2025-01-30',NULL,NULL,NULL,'2025-01-31','Transportadores Industriales de México',999),
(8928,2247,11,32456.09,'MXN',NULL,32456.09,'2025-01-31','2025-01-30',NULL,NULL,NULL,'2025-01-31','Transportadores Industriales de México',999),
(8929,2248,13,156806.12,'MXN',NULL,156806.12,'2025-02-05','2025-03-31',NULL,NULL,NULL,'2025-02-05','Ternium México',1000),
(8930,2249,20,10550.00,'MXN',NULL,10550.00,'2025-02-06','2025-04-14',NULL,NULL,NULL,'2025-02-06','Vesuvius México',1007),
(8931,2250,11,39828.62,'MXN',NULL,39828.62,'2025-02-14','2025-02-14',NULL,NULL,NULL,'2025-02-14','Transportadores Industriales de México',999),
(8932,2251,11,14496.50,'MXN',NULL,14496.50,'2025-02-14','2025-02-14',NULL,NULL,NULL,'2025-02-14','Transportadores Industriales de México',999),
(8933,2252,11,39889.17,'MXN',NULL,39889.17,'2025-02-14','2025-02-14',NULL,NULL,NULL,'2025-02-14','Transportadores Industriales de México',999),
(8934,2253,NULL,0.00,'MXN',NULL,0.00,'2025-02-17','2013-02-05',NULL,NULL,NULL,'2025-02-17','CANCELADA',NULL),
(8935,2254,19,17380.00,'MXN',NULL,17380.00,'2025-02-17','2025-04-25','Nelly Mondragón',NULL,NULL,'2025-02-17','Vesuvius México',1006),
(8936,2255,11,14496.50,'MXN',NULL,14496.50,'2025-02-21','2025-02-21',NULL,NULL,NULL,'2025-02-21','Transportadores Industriales de México',999),
(8937,2256,11,44986.91,'MXN',NULL,44986.91,'2025-02-21','2025-02-21',NULL,NULL,NULL,'2025-02-21','Transportadores Industriales de México',999),
(8938,2257,15,34320.00,'MXN',NULL,34320.00,'2025-02-27','2025-04-30',NULL,NULL,NULL,'2025-02-27','Ternium México',1002),
(8939,2258,11,14496.50,'MXN',NULL,14496.50,'2025-02-28','2025-02-28',NULL,NULL,NULL,'2025-02-28','Transportadores Industriales de México',999),
(8940,2259,11,23132.81,'MXN',NULL,23132.81,'2025-02-28','2025-02-28',NULL,NULL,NULL,'2025-02-28','Transportadores Industriales de México',999),
(8941,2260,13,131612.89,'MXN',NULL,131612.89,'2025-03-03','2025-04-30',NULL,NULL,NULL,'2025-03-03','Ternium México',1000),
(8942,2261,17,43823.47,'MXN',NULL,43823.47,'2025-03-03','2025-04-30',NULL,NULL,NULL,'2025-03-03','Ternium México',1004),
(8943,2262,14,167706.35,'MXN',NULL,167706.35,'2025-03-03','2025-04-30',NULL,NULL,NULL,'2025-03-03','Ternium México',1001),
(8944,2263,18,9010.00,'MXN',NULL,9010.00,'2025-03-05','2025-05-09',NULL,NULL,NULL,'2025-03-05','Vesuvius México',1005),
(8945,2264,17,48214.74,'MXN',NULL,48214.74,'2025-03-06','2025-04-30',NULL,NULL,NULL,'2025-03-06','Ternium México',1004),
(8946,2265,13,127174.60,'MXN',NULL,127174.60,'2025-03-12','2025-04-30',NULL,NULL,NULL,'2025-03-12','Ternium México',1000),
(8947,2266,11,20463.45,'MXN',NULL,20463.45,'2025-03-14','2025-03-14',NULL,NULL,NULL,'2025-03-14','Transportadores Industriales de México',999),
(8948,2267,11,14496.50,'MXN',NULL,14496.50,'2025-03-14','2025-03-14',NULL,NULL,NULL,'2025-03-14','Transportadores Industriales de México',999),
(8949,2268,11,20678.01,'MXN',NULL,20678.01,'2025-03-14','2025-03-14',NULL,NULL,NULL,'2025-03-14','Transportadores Industriales de México',999),
(8951,NULL,11,NULL,NULL,NULL,NULL,'2025-03-21','2025-03-21','Raul Domingo','cancelada',NULL,'2025-03-21',NULL,NULL),
(8952,2269,11,21730.69,'MXN',NULL,21730.69,'2025-03-21','2025-03-20','Nelly Mondragón','100%',NULL,NULL,'Transportadores Industriales de México',999),
(8953,2270,11,21239.30,'MXN',NULL,21239.30,'2025-03-27','2025-03-27','Nelly Mondragón','100%',NULL,NULL,'Transportadores Industriales de México',999),
(8954,2271,11,11629.31,'MXN',NULL,11629.31,'2025-03-27','2025-03-27','Nelly Mondragón','100%',NULL,NULL,'Transportadores Industriales de México',999),
(8955,2272,17,174789.30,'MXN',NULL,174789.30,'2025-04-01','2025-05-30','Nelly Mondragón','100%',NULL,'2025-04-01','Ternium México',1004),
(8956,2273,14,116726.12,'MXN',NULL,116726.12,'2025-04-01','2025-05-30','Nelly Mondragón','100%',NULL,'2025-04-01','Ternium México',1001),
(8957,2274,15,11440.00,'MXN',NULL,11440.00,'2025-04-02','2025-05-30','Nelly Mondragón','100%',NULL,'2025-04-02','Ternium México',1002),
(8959,2275,11,16350.78,'MXN',NULL,16350.78,'2025-04-04','2025-04-04','Raúl Olguín ','100%',NULL,NULL,'Transportadores Industriales de México',999),
(8960,2276,11,17755.15,'MXN',NULL,17755.15,'2025-04-11','2025-04-10','Nelly Mondragón','100%',NULL,NULL,'Transportadores Industriales de México',999),
(8961,2277,14,123593.14,'MXN',NULL,123593.14,'2025-04-11','2025-05-30','Nelly Mondragón','100%',NULL,'2025-04-11','Ternium México',1001),
(8962,2278,15,22880.00,'MXN',NULL,22880.00,'2025-04-16','2025-06-30','Nelly Mondragón','100%',NULL,'2025-04-16','Ternium México',1002),
(8963,2279,11,13145.60,'MXN',NULL,13145.60,'2025-04-17','2025-04-17','Nelly Mondragón','100%',NULL,NULL,'Transportadores Industriales de México',999),
(8964,2280,11,13040.23,'MXN',NULL,13040.23,'2025-04-25','2025-04-24','Nelly Mondragón','100%',NULL,NULL,'Transportadores Industriales de México',999),
(8965,2281,11,11630.00,'MXN',NULL,11630.00,'2025-04-30','2025-04-30','Nelly Mondragón','100%',NULL,'2025-04-30','Transportadores Industriales de México',999),
(8966,2282,17,162224.82,'MXN',NULL,162224.82,'2025-05-01','2025-05-30','Nelly Mondragón','100%',NULL,'2025-05-01','Ternium México',1004),
(8967,2283,14,160971.58,'MXN',NULL,160971.58,'2025-05-01','2025-05-30','Nelly Mondragón','100%',NULL,'2025-05-01','Ternium México',1001),
(8969,2284,11,15475.86,'MXN',NULL,15475.86,'2025-05-05','2025-05-02','Nelly Mondragón','100%',NULL,NULL,'Transportadores Industriales de México',999),
(8970,2285,11,24037.73,'MXN',NULL,24037.73,'2025-05-09','2025-05-09','Nelly Mondragón','100%',NULL,NULL,'Transportadores Industriales de México',999),
(8971,2286,11,26555.85,'MXN',NULL,26555.85,'2025-05-16','2025-05-16','Nelly Mondragón','100%',NULL,NULL,'Transportadores Industriales de México',999),
(8972,2287,15,22880.00,'MXN',NULL,22880.00,'2025-05-19','2025-05-19','Nelly Mondragón','100%',NULL,NULL,'Ternium México',1033),
(8973,2288,17,124659.33,'MXN',NULL,124659.33,'2025-05-22','2025-06-30','Nelly Mondragón','100%',NULL,'2025-05-22','Ternium México',1029),
(8975,2289,17,51501.64,'MXN',NULL,51501.64,'2025-05-22','2025-06-30','Nelly Mondragón','100%',NULL,'2025-05-22','Ternium México',1031),
(8976,2290,17,66049.72,'MXN',NULL,66049.72,'2025-05-22','2025-06-30','Nelly Mondragón','100%',NULL,'2025-05-22','Ternium México',1032),
(8978,2291,11,21892.94,'MXN',NULL,21892.94,'2025-05-22','2025-05-22','Nelly Mondragón','100%',NULL,NULL,'Transportadores Industriales de México',999),
(8979,2292,11,11630.00,'MXN',NULL,11630.00,'2025-05-29','2025-05-29','Nelly Mondragón','100%',NULL,'2025-05-29','Transportadores Industriales de México',999),
(8980,2293,11,49135.70,'MXN',NULL,49135.70,'2025-05-29','2025-05-29','Nelly Mondragón','100%',NULL,'2025-05-29','Transportadores Industriales de México',999),
(8981,2294,44,3500.00,'MXN',NULL,3500.00,'2025-05-30','2025-07-30','Raul Domingo','100%',NULL,'2025-05-30','Vesuvius México',1040),
(8982,2295,17,83218.70,'MXN',NULL,83218.70,'2025-06-02','2025-07-31','Nelly Mondragón','100%',NULL,'2025-06-02','Ternium México',1032),
(8983,2296,45,7720.00,'MXN',NULL,7720.00,'2025-06-03','2025-08-08','Raul Domingo','100%',NULL,'2025-06-03','Vesuvius México',1041),
(8984,2297,11,23489.98,'MXN',NULL,23489.98,'2025-06-06','2025-06-06','Nelly Mondragón','100%',NULL,'2025-06-06','Transportadores Industriales de México',999),
(8985,2298,11,63600.00,'MXN',NULL,63600.00,'2025-06-09','2025-06-19','Raul Domingo','100%',NULL,'2025-06-09','Transportadores Industriales de México',1034),
(8986,2299,11,22902.41,'MXN',NULL,22902.41,'2025-06-13','2025-06-12','Nelly Mondragón','100%',NULL,'2025-06-13','Transportadores Industriales de México',999),
(8987,2300,17,171923.85,'MXN',NULL,171923.85,'2025-06-18','2025-07-31','Nelly Mondragón','100%',NULL,'2025-06-18','Ternium México',1029),
(8988,2301,17,100573.63,'MXN',NULL,100573.63,'2025-06-18','2025-07-31','Nelly Mondragón','100%',NULL,'2025-06-18','Ternium México',1031),
(8989,2303,15,11440.00,'MXN',NULL,11440.00,'2025-06-23','2025-08-29','Nelly Mondragón','100%',NULL,'2025-06-23','Ternium México',1033),
(8990,2304,16,74530.03,'MXN',NULL,74530.03,'2025-06-23','2025-07-31','Nelly Mondragón','100%',NULL,'2025-06-23','Ternium México',1039),
(8991,2305,14,45260.36,'MXN',NULL,45260.36,'2025-06-25','2025-07-31','Nelly Mondragón','100%',NULL,'2025-06-25','Ternium México',1035),
(8992,2306,46,33026.00,'MXN',NULL,33026.00,'2025-06-26',NULL,'Nelly Mondragón','100%',NULL,'2025-06-26','Vesuvius México',1046),
(8993,2307,11,24969.11,'MXN',NULL,24969.11,'2025-06-27','2025-06-27','Nelly Mondragón','100%',NULL,'2025-06-27','Transportadores Industriales de México',999),
(8994,2308,11,11630.00,'MXN',NULL,11630.00,'2025-06-27','2025-06-27','Nelly Mondragón','100%',NULL,'2025-06-27','Transportadores Industriales de México',999),
(8995,2309,17,121726.13,'MXN',NULL,121726.13,'2025-06-30','2025-07-31','Nelly Mondragón','100%',NULL,'2025-06-30','Ternium México',1032),
(8996,2310,17,234509.51,'MXN',NULL,234509.51,'2025-06-30','2025-07-31','Nelly Mondragón','100%',NULL,'2025-06-30','Ternium México',1030),
(8997,2311,14,72669.01,'MXN',NULL,72669.01,'2025-07-02','2025-08-30','Nelly Mondragón','100%',NULL,'2025-07-02','Ternium México',1037),
(8998,2312,11,18813.62,'MXN',NULL,18813.62,'2025-07-04','2025-07-03','Nelly Mondragón','100%',NULL,'2025-07-04','Transportadores Industriales de México',999),
(9000,2313,11,18168.75,'MXN',NULL,18168.75,'2025-07-11','2025-07-11','Nelly Mondragón','100%',NULL,'2025-07-11','Transportadores Industriales de México',999),
(9001,2314,14,5600.03,'MXN',NULL,5600.03,'2025-07-14','2025-08-30','Nelly Mondragón','100%',NULL,'2025-07-14','Ternium México',1001),
(9002,2315,11,18843.75,'MXN',NULL,18843.75,'2025-07-25','2025-07-18','Nelly Mondragón','100%',NULL,'2025-07-25','Transportadores Industriales de México',999),
(9003,2316,11,21448.33,'MXN',NULL,21448.33,'2025-07-28','2025-08-15','Nelly Mondragón','100%',NULL,'2025-07-28','Transportadores Industriales de México',999),
(9004,2317,16,53970.26,'MXN',NULL,53970.26,'2025-07-28','2025-08-29','Nelly Mondragón','100%',NULL,'2025-07-28','Ternium México',1039),
(9005,2318,11,11630.00,NULL,NULL,11630.00,'2025-07-31','2025-08-15','Nelly Mondragón','100%',NULL,'2025-07-31','Transportadores Industriales de México',999),
(9006,2319,11,24187.50,'MXN',NULL,24187.50,'2025-07-31','2025-08-15','Nelly Mondragón','100%',NULL,'2025-07-31','Transportadores Industriales de México',999),
(9007,2320,15,11440.00,'MXN',NULL,11440.00,'2025-07-31','2025-09-30','Nelly Mondragón','100%',NULL,'2025-07-31','Ternium México',1033),
(9008,2321,17,52102.58,'MXN',NULL,52102.58,'2025-07-31','2025-08-30','Nelly Mondragón','100%',NULL,'2025-07-31','Ternium México',1029),
(9009,2322,17,22313.34,'MXN',NULL,22313.34,'2025-08-04','2025-09-30','Nelly Mondragón','100%',NULL,'2025-08-04','Ternium México',1029),
(9010,2323,51,7405.00,'MXN',NULL,7405.00,'2025-08-18','2025-10-24','Raul Domingo','100%',NULL,'2025-08-18','Vesuvius México',1052),
(9011,2324,11,23939.06,'MXN',NULL,23939.06,'2025-08-18','2025-08-22','Nelly Mondragón','100%',NULL,'2025-08-18','Transportadores Industriales de México',999),
(9012,2325,52,14154.00,'MXN',NULL,14154.00,'2025-08-18',NULL,'Raul Domingo','100%',NULL,'2025-08-18','Vesuvius México',1053),
(9013,2326,53,63925.50,'MXN',NULL,63925.50,'2025-08-18',NULL,'Raul Domingo','100%',NULL,'2025-08-18','Vesuvius México',1054),
(9014,2327,14,60719.38,NULL,NULL,60719.38,'2025-08-18','2025-09-29','Nelly Mondragón','100%',NULL,'2025-08-18','Ternium México',1045),
(9015,2328,11,24675.00,'MXN',NULL,24675.00,'2025-08-18','2025-08-22','Nelly Mondragón','100%',NULL,'2025-08-18','Transportadores Industriales de México',999),
(9016,2329,17,105083.08,'MXN',0.0000,105083.08,'2025-08-18','2025-09-29','Nelly Mondragón','100%',NULL,'2025-08-18','Ternium México',1030),
(9017,2330,17,279975.01,'MXN',NULL,279975.01,'2025-08-20','2025-09-30','Nelly Mondragón','100%',NULL,'2025-08-20','Ternium México',1029),
(9018,2331,17,36371.26,'MXN',NULL,36371.26,'2025-08-20','2025-09-30','Nelly Mondragón','100%',NULL,'2025-08-20','Ternium México',1032),
(9019,2332,15,22880.00,'MXN',NULL,22880.00,'2025-08-20',NULL,'Nelly Mondragón','100%',NULL,'2025-08-20','Ternium México',1033),
(9020,2333,11,26473.99,'MXN',NULL,26473.99,'2025-08-22','2025-08-22','Nelly Mondragón','100%',NULL,'2025-08-22','Transportadores Industriales de México',999),
(9021,2334,17,223553.74,'MXN',NULL,223553.74,'2025-08-22','2025-09-30','Nelly Mondragón','100%',NULL,'2025-08-22','Ternium México',1047),
(9022,2335,11,11630.00,'MXN',NULL,11630.00,'2025-08-29','2025-08-29','Nelly Mondragón','100%',NULL,'2025-08-29','Transportadores Industriales de México',999),
(9023,2336,11,27811.34,'MXN',NULL,27811.34,'2025-08-29','2025-08-29','Nelly Mondragón','100%',NULL,'2025-08-29','Transportadores Industriales de México',999),
(9025,2337,55,7370.00,'MXN',NULL,7370.00,'2025-09-02','2025-11-07','Nelly Mondragón','100%',NULL,'2025-09-02','Vesuvius México',1058),
(9026,2338,11,25096.88,'MXN',NULL,25096.88,'2025-09-05','2025-09-05','Nelly Mondragón','100%',NULL,'2025-09-05','Transportadores Industriales de México',999),
(9027,2339,14,85931.90,'MXN',NULL,85931.90,'2025-09-05','2025-10-31','Nelly Mondragón','100%',NULL,'2025-09-05','Ternium México',1043),
(9028,2340,56,15040.00,'MXN',NULL,15040.00,'2025-09-12','2025-09-12','Raul Domingo','100%',NULL,'2025-10-31','Vesuvius México',1059),
(9029,2341,11,29321.99,'MXN',NULL,29321.99,'2025-09-12','2025-09-12','Nelly Mondragón','100%',NULL,'2025-09-12','Transportadores Industriales de México',999),
(9030,2342,11,36575.89,'MXN',NULL,36575.89,'2025-09-18','2025-09-18','Nelly Mondragón','100%',NULL,'2025-09-18','Transportadores Industriales de México',999),
(9031,2343,14,7500.01,'MXN',NULL,7500.01,'2025-09-22','2025-10-31','Nelly Mondragón','100%',NULL,'2025-09-22','Ternium México',1001),
(9033,2344,11,34250.83,'MXN',NULL,34250.83,'2025-09-26','2025-09-26','Nelly Mondragón','100%',NULL,'2025-09-26','Transportadores Industriales de México',999),
(9034,2345,17,41043.24,NULL,NULL,41043.24,'2025-09-26','2025-10-31','Nelly Mondragón','100%',NULL,'2025-09-26','Ternium México',1030),
(9035,2346,15,22880.00,'MXN',NULL,22880.00,'2025-09-29','2025-11-28','Nelly Mondragón','100%',NULL,'2025-09-29','Ternium México',1033),
(9036,2347,17,83682.47,'MXN',NULL,83682.47,'2025-09-29','2025-10-31','Nelly Mondragón','100%',NULL,'2025-09-29','Ternium México',1032),
(9037,2348,17,41538.42,'MXN',NULL,41538.42,'2025-09-29','2025-10-31','Nelly Mondragón','100%',NULL,'2025-09-29','Ternium México',1029),
(9038,2349,13,111777.41,'MXN',NULL,111777.41,'2025-09-30','2025-10-31','Nelly Mondragón','100%',NULL,'2025-09-30','Ternium México',1000),
(9039,2350,11,11630.00,'MXN',NULL,11630.00,'2025-09-30','2025-09-30','Nelly Mondragón','100%',NULL,'2025-09-30','Transportadores Industriales de México',999),
(9040,2351,16,60599.88,'MXN',NULL,60599.88,'2025-09-30','2025-10-31','Nelly Mondragón','100%',NULL,'2025-09-30','Ternium México',1003),
(9041,2352,58,16310.00,'MXN',NULL,16310.00,'2025-10-01','2025-12-05','Nelly Mondragón','100%',NULL,'2025-10-01','Vesuvius México',1064),
(9042,2353,11,31740.67,'MXN',NULL,31740.67,'2025-10-02','2025-10-02','Nelly Mondragón','100%',NULL,'2025-10-02','Transportadores Industriales de México',999),
(9043,2354,17,32927.63,'MXN',NULL,32927.63,'2025-10-07','2025-11-28','Nelly Mondragón','100%',NULL,'2025-10-07','Ternium México',1032),
(9044,2355,17,158304.13,'MXN',NULL,158304.13,'2025-10-08','2025-11-28','Nelly Mondragón','100%',NULL,'2025-10-08','Ternium México',1030),
(9045,2356,11,35176.34,'MXN',NULL,35176.34,'2025-10-10','2025-10-10','Nelly Mondragón','100%',NULL,'2025-10-10','Transportadores Industriales de México',999),
(9046,2357,17,15615.63,'MXN',NULL,15615.63,'2025-10-10','2025-11-28','Nelly Mondragón','100%',NULL,'2025-10-10','Ternium México',1029),
(9047,2358,15,22880.00,'MXN',NULL,22880.00,'2025-10-10','2025-12-31','Nelly Mondragón','100%',NULL,'2025-10-10','Ternium México',1033),
(9049,2359,59,47180.00,'MXN',NULL,47180.00,'2025-10-16','2025-12-17','Nelly Mondragón','100%',NULL,'2025-10-16','Vesuvius México',1065),
(9050,2360,54,112936.10,'MXN',NULL,112936.10,'2025-10-17','2025-11-28','Raul Domingo','100%',NULL,'2025-10-17','Ternium México',1057),
(9051,2361,11,29964.78,'MXN',NULL,29964.78,'2025-10-17','2025-10-16','Nelly Mondragón','100%',NULL,'2025-10-17','Transportadores Industriales de México',999),
(9052,2362,17,70859.96,'MXN',NULL,70859.96,'2025-10-20','2025-11-28','Nelly Mondragón','100%',NULL,'2025-10-20','Ternium México',1055),
(9053,2363,11,32415.28,'MXN',NULL,32415.28,'2025-10-24','2025-10-24','Nelly Mondragón','100%',NULL,'2025-10-24','Transportadores Industriales de México',999),
(9054,2364,14,27504.09,'MXN',NULL,27504.09,'2025-10-29','2025-11-28','Nelly Mondragón','100%',NULL,'2025-10-29','Ternium México',1001);
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `trg_calculate_valor_pesos` BEFORE INSERT ON `facturas`
 FOR EACH ROW BEGIN
IF NEW.moneda = 'MXN' THEN
SET NEW.valor_pesos = NEW.valor;
ELSEIF NEW.moneda = 'USD' THEN
SET NEW.valor_pesos = NEW.valor * NEW.tipo_de_cambio;
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `trg_calculate_valor_pesos_update` BEFORE UPDATE ON `facturas`
 FOR EACH ROW BEGIN
IF NEW.moneda = 'MXN' THEN
SET NEW.valor_pesos = NEW.valor;
ELSEIF NEW.moneda = 'USD' THEN
SET NEW.valor_pesos = NEW.valor * NEW.tipo_de_cambio;
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `historial_actividades`
--

DROP TABLE IF EXISTS `historial_actividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_actividades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_encargado` int(11) NOT NULL,
  `actividad` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `resumen` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_encargado` (`id_encargado`),
  KEY `historial_actividades_ibfk_1` (`actividad`),
  CONSTRAINT `historial_actividades_ibfk_1` FOREIGN KEY (`actividad`) REFERENCES `periodicos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_actividades`
--

LOCK TABLES `historial_actividades` WRITE;
/*!40000 ALTER TABLE `historial_actividades` DISABLE KEYS */;
/*!40000 ALTER TABLE `historial_actividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_consumibles`
--

DROP TABLE IF EXISTS `historial_consumibles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_consumibles` (
  `id` int(11) NOT NULL,
  `id_consumible` int(11) NOT NULL,
  `cambio` decimal(10,2) NOT NULL,
  `tipo` enum('entrada','salida') NOT NULL,
  `fecha` datetime NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_consumibles`
--

LOCK TABLES `historial_consumibles` WRITE;
/*!40000 ALTER TABLE `historial_consumibles` DISABLE KEYS */;
/*!40000 ALTER TABLE `historial_consumibles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_epp`
--

DROP TABLE IF EXISTS `historial_epp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_epp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `folio` int(11) NOT NULL,
  `epp` varchar(50) DEFAULT NULL,
  `trabajador_anterior` varchar(50) DEFAULT NULL,
  `trabajador_nuevo` varchar(50) DEFAULT NULL,
  `estado_anterior` varchar(50) DEFAULT NULL,
  `estado_nuevo` varchar(50) DEFAULT NULL,
  `fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_epp`
--

LOCK TABLES `historial_epp` WRITE;
/*!40000 ALTER TABLE `historial_epp` DISABLE KEYS */;
/*!40000 ALTER TABLE `historial_epp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listas`
--

DROP TABLE IF EXISTS `listas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `listas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rol` varchar(50) DEFAULT NULL,
  `puesto` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `moneda` varchar(255) DEFAULT NULL,
  `unidades` varchar(255) DEFAULT NULL,
  `responsables` varchar(255) DEFAULT NULL,
  `contrato` varchar(255) DEFAULT NULL,
  `turno` varchar(255) DEFAULT NULL,
  `bono` varchar(255) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `objeto` varchar(100) DEFAULT NULL,
  `planta` varchar(100) DEFAULT NULL,
  `empresa` varchar(100) DEFAULT NULL,
  `forma_pago` varchar(100) DEFAULT NULL,
  `tipo_incapacidad` text DEFAULT NULL,
  `epp` text DEFAULT NULL,
  `herramienta` text DEFAULT NULL,
  `area_herramienta` text DEFAULT NULL,
  `usuarios` text DEFAULT NULL,
  `supervisor` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rol` (`rol`),
  UNIQUE KEY `unique_puesto` (`puesto`),
  UNIQUE KEY `unique_area_taller` (`area`),
  UNIQUE KEY `unique_tipo_moneda` (`moneda`),
  UNIQUE KEY `unique_tipo_unidades` (`unidades`),
  UNIQUE KEY `unique_responsables` (`responsables`),
  UNIQUE KEY `unique_contrato` (`contrato`),
  UNIQUE KEY `unique_turno` (`turno`),
  UNIQUE KEY `unique_tipo_bono` (`bono`),
  UNIQUE KEY `tipo` (`tipo`,`objeto`),
  UNIQUE KEY `planta` (`planta`),
  UNIQUE KEY `empresa` (`empresa`),
  UNIQUE KEY `tipo_incapacidad` (`tipo_incapacidad`) USING HASH,
  UNIQUE KEY `epp` (`epp`) USING HASH,
  UNIQUE KEY `herramienta` (`herramienta`,`area_herramienta`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listas`
--

LOCK TABLES `listas` WRITE;
/*!40000 ALTER TABLE `listas` DISABLE KEYS */;
INSERT INTO `listas` VALUES
(1,'gerencia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(3,'manufactura',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(6,'finanzas',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(7,NULL,NULL,NULL,NULL,NULL,'Rafael Garza',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(9,NULL,NULL,NULL,'MXN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10,NULL,NULL,NULL,'USD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(11,NULL,NULL,NULL,NULL,'pzs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(12,NULL,NULL,NULL,NULL,'lts',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(13,NULL,NULL,NULL,NULL,'mts',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(14,NULL,NULL,NULL,NULL,'kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(15,NULL,NULL,NULL,NULL,'galones',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(16,NULL,NULL,NULL,NULL,'servicios',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(17,NULL,NULL,'Maquinado',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(18,NULL,NULL,'Paileria',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(19,NULL,NULL,NULL,NULL,NULL,NULL,'nomina',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'completo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(21,NULL,'administracion',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Altura',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Supervision',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(24,NULL,NULL,'Proyectos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(25,NULL,NULL,'Casos Especiales',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mantenimiento','Transimex',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Seguridad','BAT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Habilitaciones',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Hershey',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Clarios componentes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TRANSIMEX',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SIMSA',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SUMINISTROS',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,' ',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(45,NULL,NULL,NULL,NULL,NULL,NULL,'proyecto',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(46,NULL,'Soldador',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(47,NULL,'Tornero',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(48,NULL,'Ayudante',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'transferencia electronica',NULL,NULL,NULL,NULL,NULL,NULL),
(50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Efectivo',NULL,NULL,NULL,NULL,NULL,NULL),
(51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Enfermedad',NULL,NULL,NULL,NULL,NULL),
(52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Lesión trabajo',NULL,NULL,NULL,NULL,NULL),
(53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Lesión fuera trabajo',NULL,NULL,NULL,NULL,NULL),
(56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'area_prueba',NULL,NULL),
(57,NULL,NULL,NULL,NULL,NULL,'Raul Domingo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(58,NULL,'Electrico',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(59,NULL,NULL,NULL,NULL,NULL,'Nelly Mondragón',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(61,NULL,NULL,NULL,NULL,NULL,'Raúl Olguín ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(62,NULL,NULL,NULL,NULL,NULL,'Manuel Zertuche',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Chaleco',NULL,NULL,NULL,NULL),
(66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Guante Payaso',NULL,NULL,NULL,NULL),
(67,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Guante Soldador',NULL,NULL,NULL,NULL),
(68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Polainas Soldador',NULL,NULL,NULL,NULL),
(69,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mangas Soldador',NULL,NULL,NULL,NULL),
(70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Pechera Soldador',NULL,NULL,NULL,NULL),
(71,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Capucha Soldador',NULL,NULL,NULL,NULL),
(72,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Camisa Antiflama',NULL,NULL,NULL,NULL),
(73,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mascarilla ',NULL,NULL,NULL,NULL),
(74,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Careta Soldador',NULL,NULL,NULL,NULL),
(79,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Martillo mango fibra vidrio',NULL,NULL,NULL),
(80,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Overol Blanco Desechable',NULL,NULL,NULL,NULL),
(81,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Pantalón mezclilla',NULL,NULL,NULL,NULL),
(82,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Camisa Mezclilla',NULL,NULL,NULL,NULL),
(84,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Tapón Auditivo',NULL,NULL,NULL,NULL),
(85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Lente Seguridad',NULL,NULL,NULL,NULL),
(86,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Guerrero',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(89,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Raul Domingo',NULL),
(90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Guadalupe',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(91,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Monterrey',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(92,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'General',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(93,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Churubusco y Guerrero',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(94,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Apodaca',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(95,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Churubusco',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(96,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Juventud',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(98,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Mauro Rodriguez',NULL),
(99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Alejandro Rangel',NULL),
(102,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Jesus Morales',NULL),
(103,NULL,NULL,NULL,NULL,'Par',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(104,NULL,NULL,NULL,NULL,'pulgada',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(105,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Juan Jesús Santibañez',NULL),
(106,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Julián Vega',NULL),
(107,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Rolando Martínez',NULL),
(108,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Juan Carlos García',NULL),
(109,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'José Guadalupe Romero',NULL),
(110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Andrés Quevedo',NULL),
(111,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Bernardo Garza Castillo',NULL),
(112,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Andrés Garza Castillo',NULL),
(113,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Desempeño',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(114,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Darío González',NULL),
(115,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Carlos Hurtado',NULL),
(116,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Everardo Villarreal',NULL),
(117,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'José Manuel Garza ',NULL),
(118,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Marcio Aranda TENIGAL',NULL),
(119,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Ismael Mata VESUVIUS LN',NULL),
(120,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Gabriel S. Mtz T.JUVENTUD',NULL);
/*!40000 ALTER TABLE `listas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nomina`
--

DROP TABLE IF EXISTS `nomina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `nomina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha_inicial` date DEFAULT NULL,
  `Fecha_final` date DEFAULT NULL,
  `Semana` int(11) DEFAULT NULL,
  `Id_nom` int(11) DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Empresa` varchar(255) DEFAULT NULL,
  `RFC` varchar(13) DEFAULT NULL,
  `NSS` varchar(11) DEFAULT NULL,
  `CURP` varchar(18) DEFAULT NULL,
  `CP` varchar(5) DEFAULT NULL,
  `Fecha_ingreso` date DEFAULT NULL,
  `Forma_pago` varchar(50) DEFAULT NULL,
  `Tarjeta` varchar(50) DEFAULT NULL,
  `Vacaciones_totales` int(11) DEFAULT NULL,
  `Vacaciones_usadas` int(11) DEFAULT NULL,
  `Salario_diario` decimal(10,2) DEFAULT NULL,
  `Hrs_simples` decimal(10,2) DEFAULT NULL,
  `Hrs_dobles` decimal(10,2) DEFAULT NULL,
  `Hrs_triples` decimal(10,2) DEFAULT NULL,
  `Bono_asistencia` decimal(10,2) DEFAULT NULL,
  `Bono_puntualidad` decimal(10,2) DEFAULT NULL,
  `Bono_despensa` decimal(10,2) DEFAULT NULL,
  `Bono_supervision` decimal(10,2) DEFAULT NULL,
  `Bono_desempeno` decimal(10,2) DEFAULT NULL,
  `Bono_altura` decimal(10,2) DEFAULT NULL,
  `Faltas` int(11) DEFAULT NULL,
  `Vacaciones_semana` int(11) DEFAULT NULL,
  `Bajas` int(11) DEFAULT NULL,
  `Asistencia` decimal(10,2) DEFAULT NULL,
  `UMA` decimal(10,2) DEFAULT NULL,
  `Factor` decimal(10,6) DEFAULT NULL,
  `SDI` decimal(10,2) DEFAULT NULL,
  `Salario_hora` decimal(10,2) DEFAULT NULL,
  `Simples` decimal(10,2) DEFAULT NULL,
  `Dobles` decimal(10,2) DEFAULT NULL,
  `Triples` decimal(10,2) DEFAULT NULL,
  `Bonos` decimal(10,2) DEFAULT NULL,
  `Pago_vacaciones` decimal(10,2) DEFAULT NULL,
  `Pago_incapacidad` decimal(10,2) DEFAULT NULL,
  `Pago_baja` decimal(10,2) DEFAULT NULL,
  `Pago_aguinaldo` decimal(10,2) DEFAULT NULL,
  `PTU` decimal(10,2) DEFAULT NULL,
  `Prestamo` decimal(10,2) DEFAULT NULL,
  `Infonavit` decimal(10,2) DEFAULT NULL,
  `Percepciones_gravadas` decimal(10,2) DEFAULT NULL,
  `Percepciones_excentas` decimal(10,2) DEFAULT NULL,
  `Limite_inferior` decimal(10,2) DEFAULT NULL,
  `Excedente` decimal(10,2) DEFAULT NULL,
  `Tasa_isr` decimal(5,2) DEFAULT NULL,
  `Cuota_fija` decimal(10,2) DEFAULT NULL,
  `Isr_excedente` decimal(10,2) DEFAULT NULL,
  `Isr_a_cargo` decimal(10,2) DEFAULT NULL,
  `Subsidio` decimal(10,2) DEFAULT NULL,
  `Isr_a_retenen` decimal(10,2) DEFAULT NULL,
  `SBC` decimal(10,2) DEFAULT NULL,
  `Excedente_SBC` decimal(10,2) DEFAULT NULL,
  `Prestaciones` decimal(10,2) DEFAULT NULL,
  `Gastos_medicos` decimal(10,2) DEFAULT NULL,
  `Invalidez_y_vida` decimal(10,2) DEFAULT NULL,
  `Cesantia_y_vejez` decimal(10,2) DEFAULT NULL,
  `IMSS` decimal(10,2) DEFAULT NULL,
  `Total_ingresos` decimal(10,2) DEFAULT NULL,
  `Total_deducciones` decimal(10,2) DEFAULT NULL,
  `Percepcion_trabajador` decimal(10,2) DEFAULT NULL,
  `Percepcion_empresa` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nomina`
--

LOCK TABLES `nomina` WRITE;
/*!40000 ALTER TABLE `nomina` DISABLE KEYS */;
INSERT INTO `nomina` VALUES
(1,'2024-12-26','2025-01-01',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,31185.94),
(2,'2025-01-02','2025-01-08',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,40266.14),
(3,'2025-01-09','2025-01-15',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,51402.54),
(4,'2025-01-16','2025-01-22',4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,54900.68),
(5,'2025-01-23','2025-01-29',5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50683.16),
(6,'2025-01-30','2025-02-05',6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,50456.78),
(7,'2025-02-06','2025-02-12',7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,53469.82),
(8,'2025-02-13','2025-02-19',8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,48479.57),
(9,'2025-02-20','2025-02-26',9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,51486.08),
(10,'2025-02-27','2025-03-05',10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,45164.88),
(11,'2025-03-06','2025-03-12',11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,49323.73),
(12,'2025-03-13','2025-03-19',12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,47523.08),
(13,'2025-03-20','2025-03-26',13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,46210.34),
(14,'2025-03-27','2025-04-02',14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,44251.92),
(15,'2025-04-03','2025-04-09',15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,42549.09),
(16,'2025-04-10','2025-04-16',16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,43006.00),
(17,'2025-04-17','2025-04-23',17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,59088.48),
(18,'2025-04-24','2025-04-30',18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,42911.83),
(19,'2025-05-01','2025-05-07',19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,44256.00),
(20,'2025-05-08','2025-05-14',20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,47425.88),
(21,'2025-05-15','2025-05-21',21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,44647.41),
(22,'2025-05-22','2025-05-28',22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,48370.47);
/*!40000 ALTER TABLE `nomina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_compra`
--

DROP TABLE IF EXISTS `orden_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `orden_compra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oc` varchar(50) DEFAULT NULL,
  `proveedor` varchar(50) DEFAULT NULL,
  `responsable` varchar(100) DEFAULT NULL,
  `fecha_solicitud` date DEFAULT NULL,
  `llegada_estimada` date DEFAULT NULL,
  `tipo_cambio` decimal(10,2) DEFAULT 0.00,
  `total` decimal(10,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `iva` decimal(10,2) DEFAULT NULL,
  `neto` decimal(10,2) DEFAULT NULL,
  `total_pesos` decimal(10,2) DEFAULT NULL,
  `firma_llegada` text DEFAULT NULL,
  `cotizacion` varchar(50) DEFAULT NULL,
  `moneda` varchar(50) DEFAULT NULL,
  `pago` date DEFAULT NULL,
  `pago_estimado` date DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `responsable` (`responsable`),
  KEY `moneda` (`moneda`),
  CONSTRAINT `orden_compra_ibfk_2` FOREIGN KEY (`responsable`) REFERENCES `listas` (`responsables`) ON DELETE SET NULL,
  CONSTRAINT `orden_compra_ibfk_3` FOREIGN KEY (`moneda`) REFERENCES `listas` (`moneda`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_compra`
--

LOCK TABLES `orden_compra` WRITE;
/*!40000 ALTER TABLE `orden_compra` DISABLE KEYS */;
INSERT INTO `orden_compra` VALUES
(14,'342','Aceros y Perfiles Laminados','Raul Domingo','2025-03-08','2025-03-08',0.00,NULL,16203.20,NULL,18795.71,18795.71,'2025-04-08 10:03:19','+IVA','MXN','2025-04-11',NULL,NULL),
(15,'343','Alialloys','Nelly Mondragón','2025-03-10','2025-03-25',0.00,NULL,1540.00,NULL,1786.40,1786.40,'2025-04-08 10:03:26','+IVA','MXN','2025-04-11',NULL,NULL),
(16,'344','Francisco J. Alanís Ambriz','Raul Domingo','2025-03-10','2025-03-25',0.00,NULL,3801.00,NULL,4409.16,4409.16,'2025-04-11','+IVA','MXN','2025-04-11',NULL,NULL),
(17,'345','Carolina Ponce Calzada','Nelly Mondragón','2025-03-13','2025-03-25',0.00,NULL,1735.00,NULL,2012.60,2012.60,'2025-04-11','+IVA','MXN','2025-04-11',NULL,NULL),
(18,'346','Aceros y Perfiles Laminados','Raul Domingo','2025-03-18','2025-03-25',0.00,NULL,1575.00,NULL,1827.00,1827.00,'2025-04-11','+IVA','MXN','2025-04-11',NULL,NULL),
(19,'347','Aceros y Perfiles Laminados','Raul Domingo','2025-03-25','2025-03-25',0.00,NULL,3793.20,NULL,4400.11,4400.11,'2025-04-11','+IVA','MXN','2025-04-11',NULL,NULL),
(20,'348','Primers y Pinturas','Nelly Mondragón','2025-03-25','2025-03-25',0.00,NULL,2681.05,NULL,3110.02,3110.02,'2025-04-15','+IVA','MXN','2025-05-05',NULL,NULL),
(21,'341','Aceros y Perfiles Laminados','Raul Domingo','2025-02-20','2025-03-25',0.00,NULL,1890.00,NULL,2192.40,2192.40,'2025-04-11','+IVA','MXN','2025-04-11',NULL,NULL),
(22,'340','Alialloys','Nelly Mondragón','2025-02-18','2025-03-25',0.00,NULL,405.40,NULL,470.26,470.26,'2025-04-11','+IVA','MXN','2025-04-11',NULL,NULL),
(23,'339','Alialloys','Nelly Mondragón','2025-02-05','2025-03-25',0.00,NULL,1605.40,NULL,1862.26,1862.26,'2025-04-11','+IVA','MXN','2025-04-11',NULL,NULL),
(24,'338','Aceros y Perfiles Laminados','Raul Domingo','2025-01-23','2025-03-25',0.00,NULL,13254.00,NULL,15374.64,15374.64,'2025-04-11','+IVA','MXN','2025-04-11',NULL,NULL),
(25,'337','Euromas Calzado Industrial','Nelly Mondragón','2025-01-21','2025-03-25',0.00,NULL,827.59,NULL,960.00,960.00,'2025-04-11','+IVA','MXN','2025-04-11',NULL,NULL),
(26,'336','Aceros y Perfiles Laminados','Raul Domingo','2025-01-15','2025-03-25',0.00,NULL,3596.40,NULL,4171.82,4171.82,'2025-04-11','+IVA','MXN','2025-04-11',NULL,NULL),
(27,'335','Aceros y Perfiles Laminados','Raul Domingo','2025-03-15','2025-03-25',0.00,NULL,10659.60,NULL,12365.14,12365.14,'2025-04-11','+IVA','MXN','2025-04-11',NULL,NULL),
(28,'334','Francisco J. Alanís Ambriz','Nelly Mondragón','2025-01-13','2025-03-25',0.00,NULL,3552.00,NULL,4120.32,4120.32,'2025-04-11','+IVA','MXN','2025-04-11',NULL,NULL),
(29,'333','Carolina Ponce Calzada','Nelly Mondragón','2025-01-13','2025-03-25',0.00,NULL,1040.00,NULL,1206.40,1206.40,'2025-04-11','+IVA','MXN','2025-04-11',NULL,NULL),
(30,'332','Alialloys','Nelly Mondragón','2025-01-10','2025-03-25',0.00,NULL,682.00,NULL,791.12,791.12,'2025-04-11','+IVA','MXN','2025-04-11',NULL,NULL),
(31,'331','Euromas Calzado Industrial','Raul Domingo','2025-01-08','2025-03-25',0.00,NULL,1655.00,NULL,1919.80,1919.80,'2025-04-11','+IVA','MXN','2025-04-11',NULL,NULL),
(32,'330','Aceros y Perfiles Laminados','Raul Domingo','2025-01-08','2025-03-25',0.00,NULL,9024.00,NULL,10467.84,10467.84,'2025-04-11','+IVA','MXN','2025-04-11',NULL,NULL),
(33,'349','Aceros y Perfiles Laminados','Raul Domingo','2025-03-26','2025-03-26',0.00,NULL,8174.26,NULL,9482.14,9482.14,'2025-04-15','+IVA','MXN','2025-05-05',NULL,NULL),
(34,NULL,'Aceros y Perfiles Laminados','Raúl Olguín ','2025-03-27','2025-03-27',0.00,NULL,22.50,NULL,22.50,0.00,'2025-04-08 10:03:01',NULL,NULL,'2025-06-21',NULL,NULL),
(35,'350','Aceros y Perfiles Laminados','Raúl Olguín ','2025-03-27','2025-03-27',0.00,NULL,675.00,NULL,783.00,783.00,'2025-04-15','+IVA','MXN','2025-07-04',NULL,NULL),
(36,'334','Francisco J. Alanís Ambriz','Nelly Mondragón','2025-03-31','2025-01-13',0.00,NULL,3552.00,NULL,4120.32,4120.32,'2025-04-15','+IVA','MXN','2025-05-05',NULL,NULL),
(37,'351','Primers y Pinturas','Raúl Olguín ','2025-03-31','2025-03-26',0.00,NULL,6506.36,NULL,7547.38,7547.38,'2025-04-15','+IVA','MXN','2025-05-05',NULL,NULL),
(38,'352','Grupo Delmex','Raúl Olguín ','2025-03-31','2025-03-31',0.00,NULL,6468.18,NULL,7503.09,7503.09,'2025-04-11','+IVA','MXN','2025-04-11',NULL,NULL),
(39,'353','Aceros y Perfiles Laminados','Nelly Mondragón','2025-03-31','2025-04-01',0.00,NULL,4686.66,NULL,5436.53,5436.53,'2025-04-15','+IVA','MXN','2025-05-05',NULL,NULL),
(40,'354','Francisco J. Alanís Ambriz','Nelly Mondragón','2025-03-31','2025-04-01',0.00,NULL,1866.00,NULL,2164.56,2164.56,'2025-04-15','+IVA','MXN','2025-05-05',NULL,NULL),
(42,'355','Alialloys','Nelly Mondragón','2025-03-31','2025-04-01',0.00,NULL,2534.50,NULL,2940.02,2940.02,'2025-04-15','+IVA','MXN','2025-07-04',NULL,NULL),
(43,'356','Primers y Pinturas','Raúl Olguín ','2025-04-01','2025-04-01',0.00,NULL,646.00,NULL,749.36,749.36,'2025-04-15','+IVA','MXN','2025-05-05',NULL,NULL),
(44,NULL,'Aceros y Perfiles Laminados','Raúl Olguín ','2025-04-04','2025-04-04',0.00,NULL,NULL,NULL,NULL,0.00,'2025-04-08',NULL,NULL,'2025-04-08',NULL,NULL),
(45,'357','Aceros y Perfiles Laminados','Raúl Olguín ','2025-04-04','2025-04-04',0.00,NULL,3642.30,NULL,4225.07,4225.07,'2025-04-15','+IVA','MXN','2025-05-05',NULL,NULL),
(46,'','rafa','Rafael Garza','2025-04-12','2025-04-05',0.00,NULL,NULL,NULL,NULL,NULL,'2025-04-05','+IVA','MXN','2025-04-08',NULL,NULL),
(47,'','Francisco J. Alanís Ambriz','Nelly Mondragón','2025-04-08','2025-01-13',0.00,NULL,NULL,NULL,NULL,NULL,'2025-04-08','','MXN','2025-04-08',NULL,NULL),
(48,'','rafa','Rafael Garza','2025-04-09','2025-04-09',0.00,NULL,NULL,NULL,NULL,NULL,'2025-06-21','+IVA','MXN','2025-04-09',NULL,NULL),
(49,'358','Aceros y Perfiles Laminados','Nelly Mondragón','2025-04-15','2025-04-15',0.00,NULL,7281.50,NULL,8446.54,8446.54,'2025-05-05','+IVA','MXN','2025-05-05',NULL,NULL),
(50,'','Carolina Ponce Calzada','Nelly Mondragón','2025-05-06','2025-05-06',0.00,NULL,NULL,NULL,NULL,0.00,NULL,'','MXN',NULL,'2025-05-06',NULL),
(51,'359','Carolina Ponce Calzada','Nelly Mondragón','2025-05-06','2025-05-06',0.00,NULL,1393.50,NULL,1616.46,1616.46,NULL,'+IVA','MXN',NULL,'2025-05-15',NULL),
(52,'359','Carolina Ponce Calzada','Nelly Mondragón','2025-05-07','2025-05-07',0.00,NULL,1393.50,NULL,1616.46,1616.46,'2025-05-07','+IVA','MXN','2025-05-07',NULL,NULL),
(53,NULL,'Carolina Ponce Calzada','Nelly Mondragón','2025-05-07','2025-05-07',0.00,NULL,NULL,NULL,NULL,NULL,NULL,'','MXN',NULL,NULL,NULL),
(54,NULL,'Francisco J. Alanís Ambriz','Nelly Mondragón','2025-05-08','2025-05-08',0.00,NULL,NULL,NULL,NULL,NULL,'2025-05-08','','MXN',NULL,NULL,NULL),
(55,'360','Francisco J. Alanís Ambriz','Nelly Mondragón','2025-05-08','2025-05-08',0.00,NULL,3582.00,NULL,4155.12,4155.12,'2025-07-04','+IVA','MXN','2025-07-04',NULL,NULL),
(56,'361','Alialloys','Nelly Mondragón','2025-05-19','2025-05-19',0.00,NULL,1639.50,NULL,1901.82,1901.82,'2025-05-19','+IVA','MXN','2025-07-04',NULL,NULL),
(57,'362','Primers y Pinturas','Raúl Olguín ','2025-05-20','2025-05-20',0.00,NULL,2081.11,NULL,2414.09,2414.09,'2025-07-04','+IVA','MXN','2025-07-04',NULL,NULL),
(58,'363','Aceros y Perfiles Laminados','Raúl Olguín ','2025-05-20','2025-05-20',0.00,NULL,1070.50,NULL,1241.78,1241.78,'2025-05-20','+IVA','MXN','2025-07-04',NULL,NULL),
(59,'365','Aceros y Perfiles Laminados','Nelly Mondragón','2025-05-22','2025-05-22',0.00,NULL,2579.20,NULL,2991.87,2991.87,'2025-05-22','+IVA','MXN','2025-07-04',NULL,NULL),
(60,'366','Alialloys','Nelly Mondragón','2025-05-23','2025-05-23',0.00,NULL,2166.00,NULL,2512.56,2512.56,'2025-05-23','+IVA','MXN','2025-07-04',NULL,NULL),
(61,'367','Primers y Pinturas','Nelly Mondragón','2025-05-27','2025-05-27',0.00,NULL,652.94,NULL,757.41,757.41,'2025-07-04','+IVA','MXN','2025-07-04',NULL,NULL),
(62,'368','Laboratorios Cemer','Nelly Mondragón','2025-05-27','2025-05-27',0.00,NULL,1318.98,NULL,1530.02,1530.02,'2025-05-27','+IVA','MXN','2025-05-29',NULL,NULL),
(63,'364','Grupo Delmex','Raúl Olguín ','2025-05-29','2025-05-29',0.00,NULL,2156.06,NULL,2501.03,2501.03,'2025-05-29','+IVA','MXN','2025-05-29',NULL,NULL),
(64,'369','Aceros y Perfiles Laminados','Nelly Mondragón','2025-05-29','2025-05-29',0.00,NULL,6489.60,NULL,7527.94,7527.94,'2025-05-29','+IVA','MXN','2025-07-04',NULL,NULL),
(65,'370','Aceros y Perfiles Laminados','Raul Domingo','2025-05-29','2025-05-29',0.00,NULL,9737.50,NULL,11295.50,11295.50,'2025-05-29','+IVA','MXN','2025-07-04',NULL,NULL),
(66,'373','Perfiles y Laminados Victoria,SA de CV','Raul Domingo','2025-06-10','2025-06-13',0.00,NULL,14726.00,NULL,17082.16,17082.16,'2025-06-10','+IVA','MXN','2025-06-13',NULL,NULL),
(67,'371','Alialloys','Manuel Zertuche','2025-06-12','2025-06-12',0.00,NULL,930.00,NULL,1078.80,1078.80,'2025-06-12','+IVA','MXN','2025-07-04',NULL,NULL),
(68,'374','Primers y Pinturas','Nelly Mondragón','2025-06-13','2025-06-13',0.00,NULL,681.20,NULL,790.19,790.19,'2025-06-13','+IVA','MXN','2025-07-04',NULL,NULL),
(69,'375','Aceros y Perfiles Laminados','Nelly Mondragón','2025-06-16','2025-06-16',0.00,NULL,2571.06,NULL,2982.43,2982.43,'2025-06-16','+IVA','MXN','2025-07-04',NULL,NULL),
(70,'376','Aceros y Perfiles Laminados','Nelly Mondragón','2025-06-16','2025-06-16',0.00,NULL,2983.32,NULL,3460.65,3460.65,'2025-06-16','+IVA','MXN','2025-07-04',NULL,NULL),
(71,'377','Primers y Pinturas','Nelly Mondragón','2025-06-16','2025-06-16',0.00,NULL,7643.24,NULL,8866.16,8866.16,'2025-06-16','+IVA','MXN','2025-07-04',NULL,NULL),
(72,'378','Primers y Pinturas','Nelly Mondragón','2025-06-17','2025-06-17',0.00,NULL,2172.03,NULL,2519.55,2519.55,'2025-06-17','+IVA','MXN','2025-07-04',NULL,NULL),
(73,'379','Aceros y Perfiles Laminados','Nelly Mondragón','2025-06-17','2025-06-18',0.00,NULL,5480.30,NULL,6357.15,6357.15,'2025-06-17','+IVA','MXN','2025-07-04',NULL,NULL),
(74,'380','Grupo Delmex','Nelly Mondragón','2025-06-20','2025-06-23',0.00,NULL,1867.65,NULL,2166.47,2166.47,'2025-06-20','+IVA','MXN','2025-06-24',NULL,NULL),
(75,'381','Aceros y Perfiles Laminados','Nelly Mondragón','2025-06-26','2025-06-27',0.00,NULL,10397.70,NULL,12061.33,12061.33,'2025-06-26','+IVA','MXN',NULL,NULL,NULL),
(76,'382','Francisco J. Alanís Ambriz','Nelly Mondragón','2025-06-26','2025-06-27',0.00,NULL,1290.00,NULL,1496.40,1496.40,'2025-07-04','+IVA','MXN',NULL,NULL,NULL),
(77,'383','Aceros y Perfiles Laminados','Nelly Mondragón','2025-06-27','2025-06-27',0.00,NULL,237.05,NULL,274.98,274.98,'2025-06-27','+IVA','MXN',NULL,NULL,NULL),
(78,NULL,'Aceros y Perfiles Laminados','Nelly Mondragón','2025-06-27','2025-06-27',0.00,NULL,NULL,NULL,NULL,0.00,'2025-07-04',NULL,NULL,NULL,NULL,NULL),
(79,'384','Alialloys','Nelly Mondragón','2025-06-30','2025-06-30',0.00,NULL,3727.00,NULL,4323.32,4323.32,'2025-06-30','+IVA','MXN',NULL,NULL,NULL),
(80,'385','Ruedas y Rodajas del Norte','Raul Domingo','2025-07-03','2025-07-02',0.00,NULL,700.00,NULL,812.00,812.00,'2025-07-03','+IVA','MXN','2025-07-03',NULL,NULL),
(81,'386','Aceros y Perfiles Laminados','Raúl Olguín ','2025-07-04','2025-07-04',0.00,NULL,13543.20,NULL,15710.11,15710.11,'2025-07-04','+IVA','MXN',NULL,NULL,NULL),
(82,'387','Francisco J. Alanís Ambriz','Nelly Mondragón','2025-07-07','2025-07-08',0.00,NULL,2883.00,NULL,3344.28,3344.28,'2025-07-07','+IVA','MXN',NULL,NULL,NULL),
(85,'388','Growtech-solutions','Raul Domingo','2025-07-10','2025-07-10',0.00,NULL,30000.00,NULL,34800.00,34800.00,'2025-07-11','+IVA','MXN',NULL,'2025-08-01',NULL),
(86,'389','Primers y Pinturas','Raúl Olguín ','2025-07-14','2025-07-16',0.00,NULL,7643.24,NULL,8866.16,8866.16,'2025-07-14','+IVA','MXN',NULL,'2025-07-31',NULL),
(87,'390','Aceros y Perfiles Laminados','Raúl Olguín ','2025-07-14','2025-07-15',0.00,NULL,15131.20,NULL,17552.19,17552.19,'2025-07-14','+IVA','MXN',NULL,'2025-07-31',NULL),
(88,'391','Aceros y Perfiles Laminados','Raúl Olguín ','2025-07-15','2025-07-15',0.00,NULL,463.20,NULL,537.31,537.31,'2025-07-15','+IVA','MXN',NULL,'2025-07-31',NULL),
(89,'392','Carolina Ponce Calzada','Nelly Mondragón','2025-07-15','2025-07-01',0.00,NULL,1845.00,NULL,2140.20,2140.20,'2025-07-15','+IVA','MXN',NULL,'2025-07-31',NULL),
(90,'384','Alialloys','Raúl Olguín ','2025-07-15','2025-06-30',0.00,NULL,181.72,NULL,210.80,210.80,'2025-07-15','+IVA','MXN',NULL,'2025-07-31',NULL),
(91,'393','Alialloys','Nelly Mondragón','2025-07-16','2025-07-17',0.00,NULL,1600.00,NULL,1856.00,1856.00,'2025-07-16','+IVA','MXN',NULL,'2025-07-31',NULL),
(92,'394','Aceros y Perfiles Laminados','Raúl Olguín ','2025-07-22','2025-07-23',0.00,NULL,10723.50,NULL,12439.26,12439.26,'2025-07-22','+IVA','MXN',NULL,'2025-07-31',NULL),
(93,'395','Primers y Pinturas','Raúl Olguín ','2025-07-22','2025-07-24',0.00,NULL,7011.34,NULL,8133.15,8133.15,'2025-07-22','+IVA','MXN',NULL,'2025-07-31',NULL),
(94,'396','Euromas Calzado Industrial','Nelly Mondragón','2025-07-24','2025-07-28',0.00,NULL,827.59,NULL,960.00,960.00,'2025-07-24','+IVA','MXN',NULL,'2025-07-28',NULL),
(95,'397','Aceros y Perfiles Laminados','Nelly Mondragón','2025-07-30','2025-07-31',0.00,NULL,6957.00,NULL,8070.12,8070.12,'2025-07-30','+IVA','MXN',NULL,'2025-08-29',NULL),
(96,'398','Francisco J. Alanís Ambriz','Nelly Mondragón','2025-08-01','2025-08-01',0.00,NULL,2634.00,NULL,3055.44,3055.44,'2025-08-01','+IVA','MXN',NULL,'2025-08-29',NULL),
(97,'399','Carolina Ponce Calzada','Nelly Mondragón','2025-08-08','2025-08-08',0.00,NULL,3996.50,NULL,4635.94,4635.94,'2025-08-08','+IVA','MXN',NULL,'2025-08-08',NULL),
(98,'400','Birlos y Tornillos','Raúl Olguín ','2025-08-13','2025-08-13',0.00,NULL,91.20,NULL,105.79,105.79,'2025-08-13','+IVA','MXN',NULL,'2025-08-13',NULL),
(99,'401','Travers Tool','Manuel Zertuche','2025-08-13','2025-08-12',0.00,NULL,682.26,NULL,791.42,791.42,'2025-08-13','+IVA','MXN',NULL,'2025-08-12',NULL),
(100,'402','Alialloys','Manuel Zertuche','2025-08-13','2025-08-14',0.00,NULL,2940.00,NULL,3410.40,3410.40,'2025-08-13','+IVA','MXN',NULL,'2025-08-29',NULL),
(101,'403','Aceros y Perfiles Laminados','Raúl Olguín ','2025-08-15','2025-08-15',0.00,NULL,961.08,NULL,1114.85,1114.85,'2025-08-15','+IVA','MXN',NULL,'2025-08-29',NULL),
(102,'404','Aceros y Perfiles Laminados','Manuel Zertuche','2025-08-20','2025-08-20',0.00,NULL,2283.40,NULL,2648.74,2648.74,'2025-08-20','+IVA','MXN',NULL,'2025-08-29',NULL),
(103,'405','Aceros y Perfiles Laminados','Raúl Olguín ','2025-08-20','2025-08-20',0.00,NULL,10169.00,NULL,11796.04,11796.04,'2025-08-20','+IVA','MXN',NULL,'2025-08-29',NULL),
(104,'407','Alialloys','Raúl Olguín ','2025-08-27','2025-08-27',0.00,NULL,1792.00,NULL,2078.72,2078.72,'2025-08-27','+IVA','MXN',NULL,'2025-08-29',NULL),
(105,'408','Aceros y Perfiles Laminados','Raúl Olguín ','2025-08-29','2025-08-29',0.00,NULL,10735.30,NULL,12452.95,12452.95,'2025-08-29','+IVA','MXN',NULL,'2025-09-29',NULL),
(106,'409','Aceros y Perfiles Laminados','Raul Domingo','2025-08-29','2025-08-29',0.00,NULL,1273.80,NULL,1477.61,1477.61,'2025-08-29','+IVA','MXN',NULL,'2025-09-29',NULL),
(107,'410','Aceros y Perfiles Laminados','Raúl Olguín ','2025-09-03','2025-09-04',0.00,NULL,1215.90,NULL,1410.44,1410.44,'2025-09-03','+IVA','MXN',NULL,'2025-09-30',NULL),
(108,'411','Alialloys','Raúl Olguín ','2025-09-04','2025-09-04',0.00,NULL,1392.00,NULL,1614.72,1614.72,'2025-09-04','+IVA','MXN',NULL,'2025-09-30',NULL),
(109,'412','Aceros y Perfiles Laminados','Nelly Mondragón','2025-09-04','2025-09-04',0.00,NULL,2700.00,NULL,3132.00,3132.00,'2025-09-04','+IVA','MXN',NULL,'2025-09-30',NULL),
(110,'413','Francisco J. Alanís Ambriz','Nelly Mondragón','2025-09-04','2025-09-04',0.00,NULL,2228.00,NULL,2584.48,2584.48,'2025-09-04','+IVA','MXN',NULL,'2025-09-30',NULL),
(111,'414','Aceros y Perfiles Laminados','Raúl Olguín ','2025-09-19','2025-09-19',0.00,NULL,393.60,NULL,456.58,456.58,'2025-09-19','+IVA','MXN',NULL,'2025-09-30',NULL),
(112,'415','Grupo Delmex','Raúl Olguín ','2025-09-19','2025-09-22',0.00,NULL,1867.65,NULL,2166.47,2166.47,'2025-09-19','+IVA','MXN',NULL,'2025-09-19',NULL),
(113,'416','Primers y Pinturas','Raúl Olguín ','2025-09-24','2025-09-24',0.00,NULL,940.54,NULL,1091.03,1091.03,'2025-09-24','+IVA','MXN',NULL,'2025-09-30',NULL),
(114,'417','Aceros y Perfiles Laminados','Raul Domingo','2025-09-26','2025-09-29',0.00,NULL,5198.40,NULL,6030.14,6030.14,'2025-09-26','+IVA','MXN',NULL,'2025-09-30',NULL),
(115,'418','Aceros y Perfiles Laminados','Raúl Olguín ','2025-09-29','2025-09-29',0.00,NULL,4334.30,NULL,5027.79,5027.79,'2025-09-29','+IVA','MXN',NULL,'2025-09-30',NULL),
(116,'419','Aceros y Perfiles Laminados','Raúl Olguín ','2025-10-01','2025-10-01',0.00,NULL,18934.60,NULL,21964.14,21964.14,'2025-10-01','+IVA','MXN',NULL,'2025-10-31',NULL),
(117,'420','Euromas Calzado Industrial','Nelly Mondragón','2025-10-02','2025-10-03',0.00,NULL,2482.77,NULL,2880.01,2880.01,'2025-10-02','+IVA','MXN',NULL,'2025-10-03',NULL),
(118,'421','Alialloys','Raúl Olguín ','2025-10-06','2025-10-07',0.00,NULL,1971.00,NULL,2286.36,2286.36,'2025-10-06','+IVA','MXN',NULL,'2025-10-31',NULL),
(119,'422','Francisco J. Alanís Ambriz','Nelly Mondragón','2025-10-07','2025-10-07',0.00,NULL,3524.00,NULL,4087.84,4087.84,'2025-10-07','+IVA','MXN',NULL,'2025-10-31',NULL),
(120,'424','Grupo Ferretería Calzada','Nelly Mondragón','2025-10-09','2025-10-10',0.00,NULL,270.69,NULL,314.00,314.00,'2025-10-09','+IVA','MXN',NULL,'2025-10-10',NULL),
(121,'424','Grupo Ferretería Calzada','Nelly Mondragón','2025-10-10','2025-10-10',0.00,NULL,43.10,NULL,50.00,50.00,'2025-10-10','+IVA','MXN',NULL,'2025-10-10',NULL),
(122,'425','Ferretera Exclusiva','Nelly Mondragón','2025-10-15','2025-10-15',0.00,NULL,185.34,NULL,214.99,214.99,'2025-10-15','+IVA','MXN',NULL,'2025-10-15',NULL),
(123,'426','Primers y Pinturas','Raúl Olguín ','2025-10-16','2025-10-16',0.00,NULL,681.20,NULL,790.19,790.19,'2025-10-16','+IVA','MXN',NULL,'2025-10-31',NULL),
(124,'427','Aceros y Perfiles Laminados','Raúl Olguín ','2025-10-17','2025-10-17',0.00,NULL,10846.60,NULL,12582.06,12582.06,'2025-10-17','+IVA','MXN',NULL,'2025-10-31',NULL),
(125,'428','Carolina Ponce Calzada','Nelly Mondragón','2025-10-22','2025-10-21',0.00,NULL,3309.00,NULL,3838.44,3838.44,'2025-10-22','+IVA','MXN',NULL,'2025-10-31',NULL);
/*!40000 ALTER TABLE `orden_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ot`
--

DROP TABLE IF EXISTS `ot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ot` (
  `ot` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` text DEFAULT NULL,
  `fecha_alta` date DEFAULT NULL,
  `responsable` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT 'Activo',
  `id_pedido` int(11) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT 0.00,
  `usuario` text DEFAULT NULL,
  PRIMARY KEY (`ot`),
  KEY `responsable` (`responsable`),
  CONSTRAINT `ot_ibfk_2` FOREIGN KEY (`responsable`) REFERENCES `listas` (`responsables`)
) ENGINE=InnoDB AUTO_INCREMENT=1068 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ot`
--

LOCK TABLES `ot` WRITE;
/*!40000 ALTER TABLE `ot` DISABLE KEYS */;
INSERT INTO `ot` VALUES
(700,'Falta','2024-04-26','Raul Domingo',NULL,38,0.00,NULL),
(701,'PERMISO','2024-04-29','Raul Domingo',NULL,38,0.00,NULL),
(702,'SUSPENSION','2024-04-29','Raul Domingo',NULL,38,0.00,NULL),
(703,'VACACIONES','2024-04-29','Raul Domingo',NULL,38,0.00,NULL),
(704,'ASUETO','2024-04-29','Raul Domingo',NULL,38,0.00,NULL),
(705,'DIA Cuenta VACACIONES','2024-04-29','Raul Domingo',NULL,38,0.00,NULL),
(706,'INCAPACIDAD (IMSS)','2024-04-29','Raul Domingo',NULL,38,0.00,NULL),
(707,'INCAPACIDAD (TIM)','2024-04-29','Raul Domingo',NULL,38,0.00,NULL),
(708,'PATERNIDAD (Pagada)','2024-04-29','Raul Domingo',NULL,38,0.00,NULL),
(709,'PERMISO (pagado por GERENCIA)','2024-04-29','Raul Domingo',NULL,38,0.00,NULL),
(710,'HABILITACIONES','2024-04-29','Raul Domingo',NULL,38,0.00,NULL),
(711,'BAJA','2024-04-29','Raul Domingo',NULL,38,0.00,NULL),
(712,'FALTA JUSTIFICADA','2024-11-28','Raul Domingo',NULL,38,0.00,NULL),
(720,'Mtto MAQUINADO','2024-04-29','Raul Domingo',NULL,38,0.00,NULL),
(730,'Mtto Local BAT','2024-04-29','Raul Domingo',NULL,38,0.00,NULL),
(740,'Mtto Local VITRO','2024-04-29','Raul Domingo',NULL,38,0.00,NULL),
(750,'Mtto TALLER','2024-04-29','Raul Domingo',NULL,38,0.00,NULL),
(760,'Compra EPP','2024-04-29','Raul Domingo',NULL,38,0.00,NULL),
(770,'Compra HERRAMIENTAS','2024-04-29','Raul Domingo',NULL,38,0.00,NULL),
(780,'Compra CONSUMIBLES','2024-04-29','Raul Domingo',NULL,38,0.00,NULL),
(790,'OFICINA','2024-04-29','Raul Domingo',NULL,38,0.00,NULL),
(999,'Mano obra transimex','2025-03-20','Raul Domingo','Activo',11,10.00,'Raul Domingo'),
(1000,'Servicios ternium churubusco y guerrero','2025-03-20','Raul Domingo','Activo',13,10.00,'Raul Domingo'),
(1001,'Servicios ternium apodaca','2025-03-20','Raul Domingo','Activo',14,10.00,'Raul Domingo'),
(1002,'Servicios ternium guerrero','2025-03-20','Raul Domingo','Activo',15,10.00,'Raul Domingo'),
(1003,'Servicios ternium juventud','2025-03-20','Raul Domingo','Activo',16,10.00,'Raul Domingo'),
(1004,'Servicios ternium churubusco y guerrero 2','2025-03-20','Raul Domingo','Activo',17,10.00,'Raul Domingo'),
(1005,'Retirar birlos amarrados y Rep.rosca ','2025-03-20','Raul Domingo','Activo',18,9010.00,'Raul Domingo'),
(1006,'Servicio de reparación a placa','2025-03-20','Raul Domingo','Activo',19,17380.00,'Raul Domingo'),
(1007,'Fabricar 2 rieles CRS según muestra','2025-03-20','Raul Domingo','Activo',20,10550.00,'Raul Domingo'),
(1008,'2 CNC HEAT Shield piezas CNC y LV8','2025-03-20','Raul Domingo','Activo',21,5000.00,'Raul Domingo'),
(1009,'Placa 2 ,3 , 4 , 5 y 6 y refrescar roscas','2025-03-20','Raul Domingo','Activo',22,23100.00,'Raul Domingo'),
(1010,'Herramental Cement tool','2025-03-20','Raul Domingo','Activo',23,4396.00,'Raul Domingo'),
(1011,'Fabricar 6 inserto de rosca templada, ','2025-03-20','Raul Domingo','Activo',24,19580.00,'Raul Domingo'),
(1012,'Placas grandes 1,2,3,4,5,6 retirar pernos','2025-03-20','Raul Domingo','Activo',25,40200.00,'Raul Domingo'),
(1013,'Reparación de carro LV 8 15','2025-03-20','Raul Domingo','Activo',26,11400.00,'Raul Domingo'),
(1014,'Reparación de carro LV 8 15','2025-03-20','Raul Domingo','Activo',27,11400.00,'Raul Domingo'),
(1015,'Reparación de roscas laterales','2025-03-20','Raul Domingo','Activo',28,9670.00,'Raul Domingo'),
(1016,'Reparación de roscas laterales','2025-03-20','Raul Domingo','Activo',29,11580.00,'Raul Domingo'),
(1017,'Fabricación de bastón de CRS de 1-1/2\"','2025-03-20','Raul Domingo','Activo',30,11800.00,'Raul Domingo'),
(1018,'Cement Tool día 43 Banded','2025-03-20','Raul Domingo','Activo',31,4396.00,'Raul Domingo'),
(1019,'Reparación rosca con Helicail y retirar','2025-03-20','Raul Domingo','Activo',32,6895.00,'Raul Domingo'),
(1020,'Servicio reparación roscas y tornillos','2025-03-20','Raul Domingo','Activo',33,2750.00,'Raul Domingo'),
(1021,'Fabricación herramienta gra para','2025-03-20','Raul Domingo','Activo',34,1450.00,'Raul Domingo'),
(1022,'Fabricar 12 tornillos según muestra','2025-03-20','Raul Domingo','Activo',35,41060.00,'Raul Domingo'),
(1023,'Fabricación de 2 CNC','2025-03-20','Raul Domingo','Activo',36,9550.00,'Raul Domingo'),
(1025,'Bases giratorias VIFLEX','2025-03-31','Raúl Olguín ','Activo',37,15000.00,'Raul Domingo'),
(1027,'Maniful para MTY','2025-04-04','Raúl Olguín ','Activo',14,28260.00,'Alejandro Rangel'),
(1028,'10 puertas autoalineables ACEREX','2025-04-25','Raúl Olguín ','Activo',17,79680.00,''),
(1029,'PL TPG','2025-05-06','Manuel Zertuche','Activo',17,100.00,'Rolando Martínez'),
(1030,'PL Acerex','2025-05-06','Manuel Zertuche','Activo',17,100.00,'Julián Vega'),
(1031,'PL Molino W35','2025-05-06','Manuel Zertuche','Activo',17,100.00,'Juan Carlos García'),
(1032,'PL Churubusco','2025-05-06','Manuel Zertuche','Activo',17,100.00,'Mauro Rodriguez'),
(1033,'Limpieza Casa Humos y Polvos','2025-05-06','Manuel Zertuche','Activo',15,526240.00,'Juan Jesús Santibañez'),
(1034,'Escalera puente para VIQUESA','2025-05-15','Raúl Olguín ','Activo',11,63600.00,'Raul Domingo'),
(1035,'Guarda para área de soldadora MT1','2025-05-15','Raúl Olguín ','Activo',14,45260.00,'José Guadalupe Romero'),
(1036,'Fab de bases inox para Rectificadores PLATING 8 pzs','2025-05-15','Raúl Olguín ','Activo',11,16000.00,'Andrés Quevedo'),
(1037,'Guardas (3) para área de Acabado CSC','2025-05-19','Raúl Olguín ','Activo',14,18600.00,'Alejandro Rangel'),
(1038,'Ensamble Sistema de Bombas SM','2025-05-20','Raúl Olguín ','Activo',11,5000.00,'Andrés Garza Castillo'),
(1039,'100 Diapasones para panel P.Juventud','2025-05-29','Raúl Olguín ','Activo',16,128500.00,'Darío González'),
(1040,'Dibujo DWG','2025-05-30','Raul Domingo','Activo',44,3500.00,'Raul Domingo'),
(1041,'Reparaciòn de roscas con inser de helicoil','2025-06-03','Raul Domingo','Activo',45,7720.00,'Raul Domingo'),
(1042,'Secciones de Tritt para área de Polin 1','2025-06-10','Raúl Olguín ','Activo',14,54070.00,'Alejandro Rangel'),
(1043,'Guarda perimetral para Molino MT1 CSC','2025-06-10','Raúl Olguín ','Activo',14,85935.00,'José Guadalupe Romero'),
(1044,'Dos portones Pasillo Liso 3 Pta Juventud','2025-06-16','Raúl Olguín ','Activo',16,60600.00,'Carlos Hurtado'),
(1045,'Plataformas de operación Flejadora Yoder CSI','2025-06-16','Raúl Olguín ','Activo',14,60720.00,'Everardo Villarreal'),
(1046,'Siete escudos CNC ac.carbón','2025-06-16','Raul Domingo','Activo',46,33026.00,'José Manuel Garza '),
(1047,'4 Silletas - Bases para rollo de acero ','2025-06-24','Raúl Olguín ','Activo',17,223556.00,'Mauro Rodriguez'),
(1048,'Silleta corta con topes corredizos (4 pzs)','2025-07-02','Raúl Olguín ','Activo',17,168000.00,'Juan Jesús Santibañez'),
(1049,'Mesas para cajas de eveses REHUNA','2025-08-07','Raul Domingo','Activo',38,5000.00,'Raul Domingo'),
(1050,'Fabricación guardas Prensa Acanaladora 2 ','2025-08-15','Raul Domingo','Activo',14,36595.00,'Alejandro Rangel'),
(1051,'Fabricación guardas Prensa Acanaladora 5','2025-08-15','Raul Domingo','Activo',14,34250.00,'Alejandro Rangel'),
(1052,'Reparación de Rosca con Helicoil M 16','2025-08-18','Raul Domingo','Activo',51,7405.00,'José Manuel Garza '),
(1053,'Escudos CNC ac.carb','2025-08-18','Raul Domingo','Activo',52,14154.00,'José Manuel Garza '),
(1054,'Sliding Shield Additional Supp Dib.9F34732','2025-08-18','Raul Domingo','Activo',53,63925.50,'José Manuel Garza '),
(1055,'Silleta larga 8.5 m para Nogalar','2025-08-19','Raúl Olguín ','Activo',17,62000.00,'Juan Jesús Santibañez'),
(1056,'2 Silletas largas TENIGAL (Pedido de Santibañez)','2025-08-20','Raúl Olguín ','Activo',13,111778.00,'Marcio Aranda TENIGAL'),
(1057,'2 Silletas largas, [5 m]  TENIGAL (Pedido de Carlos Peralta)','2025-08-28','Raúl Olguín ','Activo',54,111695.04,'Marcio Aranda TENIGAL'),
(1058,'Reparar roscas a Placa','2025-08-29','Raul Domingo','Activo',55,7370.00,'Ismael Mata VESUVIUS LN'),
(1059,'Retirar Tornillo capado y refrescar rosca y Retirar Machuelo quebrado y reparar rosca con helicoil','2025-09-12','Raul Domingo','Activo',56,15040.00,'Raul Domingo'),
(1060,'Transportadores y mesa de Transferencia','2025-09-17','Raul Domingo','Activo',11,0.00,'Raul Domingo'),
(1061,'Cubierta para Mesa Guía de Unidad de Tensión LCC3','2025-09-26','Raúl Olguín ','Activo',14,29015.00,'Jesus Morales'),
(1062,'2 Silletas cortas con brazo corredizo NOGALAR','2025-10-01','Raúl Olguín ','Activo',17,93512.00,'Juan Jesús Santibañez'),
(1063,'6 Silleta corta (para rollo grande ) CHURUBUSCO','2025-10-01','Raúl Olguín ','Activo',17,280536.00,'Juan Jesús Santibañez'),
(1064,'Reparación de roscas a 4 placas LARGOS NTE','2025-10-01','Raul Domingo','Activo',58,16310.00,'Ismael Mata VESUVIUS LN'),
(1065,'Escudos para CNC','2025-10-01','Raul Domingo','Activo',59,47180.00,''),
(1066,'Fab soportes p/transp VIMOSA','2025-10-28','Raúl Olguín ','Activo',57,15000.00,'Bernardo Garza Castillo'),
(1067,' Fabricación del mezanine del Yoder ','2025-10-28','Raúl Olguín ','Activo',16,180547.00,'');
/*!40000 ALTER TABLE `ot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partidas`
--

DROP TABLE IF EXISTS `partidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `partidas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pedido` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  `moneda` varchar(3) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `tipo_cambio` decimal(10,4) DEFAULT 22.0000,
  `total_pesos` decimal(10,2) DEFAULT NULL,
  `unidad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pedido` (`id_pedido`),
  CONSTRAINT `partidas_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidas`
--

LOCK TABLES `partidas` WRITE;
/*!40000 ALTER TABLE `partidas` DISABLE KEYS */;
INSERT INTO `partidas` VALUES
(17,11,1,'Servicio mano de obra simsa',1000000.00,'MXN',1000000.00,22.0000,1000000.00,'pzs'),
(19,13,1,'Pailería y Soldadura Chur,Gue',6815737.00,'MXN',6815737.00,22.0000,6815737.00,'servicios'),
(20,14,1,'Pailería y Soldadura Apodaca',3712709.00,'MXN',3712709.00,22.0000,3712709.00,'servicios'),
(21,15,1,'Limpieza Galvanizados Polvos, Gue',526240.00,'MXN',526240.00,22.0000,526240.00,'servicios'),
(22,16,1,'Paileria y Soldadura Juventud',526240.00,'MXN',526240.00,22.0000,526240.00,'servicios'),
(23,17,1,'Pailería y Soldadura Chur,Gue',7184277.50,'MXN',7184277.50,22.0000,7184277.50,'pzs'),
(24,18,1,'Retirar birlos amarrados y Rep.rosca ',9010.00,'MXN',9010.00,22.0000,9010.00,'servicios'),
(25,19,1,'Servicio de reparación a placa',17380.00,'MXN',17380.00,22.0000,17380.00,'servicios'),
(26,20,1,'Fabricar 2 rieles CRS según muestra',10550.00,'MXN',10550.00,22.0000,10550.00,'servicios'),
(27,21,1,'2 CNC HEAT Shield piezas CNC y LV8',5000.00,'MXN',5000.00,22.0000,5000.00,'servicios'),
(28,22,1,'Placa 2 ,3 , 4 , 5 y 6 y refrescar roscas',23100.00,'MXN',23100.00,22.0000,23100.00,'servicios'),
(29,23,1,'Herramental Cement tool',4396.00,'MXN',4396.00,22.0000,4396.00,'servicios'),
(30,24,1,'Fabricar 6 inserto de rosca templada, ',19580.00,'MXN',19580.00,22.0000,19580.00,'servicios'),
(31,25,1,'Placas grandes 1,2,3,4,5,6 retirar pernos',40200.00,'MXN',40200.00,22.0000,40200.00,'servicios'),
(32,26,1,'Reparación de carro LV 8 15',11400.00,'MXN',11400.00,22.0000,11400.00,'servicios'),
(33,27,1,'Reparación de carro LV 8 15',11400.00,'MXN',11400.00,22.0000,11400.00,'servicios'),
(34,28,1,'Reparación de roscas laterales',9670.00,'MXN',9670.00,22.0000,9670.00,'servicios'),
(35,29,1,'Reparación de roscas laterales',11580.00,'MXN',11580.00,22.0000,11580.00,'servicios'),
(36,30,1,'Fabricación de bastón de CRS de 1-1/2\"',11800.00,'MXN',11800.00,22.0000,11800.00,'servicios'),
(37,31,1,'Cement Tool día 43 Banded',4396.00,'MXN',4396.00,22.0000,4396.00,'servicios'),
(38,32,1,'Reparación rosca con Helicail y retirar',6895.00,'MXN',6895.00,22.0000,6895.00,'servicios'),
(39,33,1,'Servicio reparación roscas y tornillos',2750.00,'MXN',2750.00,22.0000,2750.00,'servicios'),
(40,34,1,'Fabricación herramienta gra para',1450.00,'MXN',1450.00,22.0000,1450.00,'servicios'),
(41,35,1,'Fabricar 12 tornillos según muestra',41060.00,'MXN',41060.00,22.0000,41060.00,'servicios'),
(42,36,1,'Fabricación de 2 CNC',9550.00,'MXN',9550.00,22.0000,9550.00,'servicios'),
(43,37,3,'Bases giratorias VITROFLEC',5000.00,'MXN',15000.00,22.0000,15000.00,'pzs'),
(44,44,1,'Serv.Dibujo de detalle en formato DWG',3500.00,'MXN',3500.00,22.0000,3500.00,'servicios'),
(45,45,1,'Reparaciòn de roscas con inser de helicoil',7720.00,'MXN',7720.00,22.0000,7720.00,'servicios'),
(46,46,7,'Escudos CNC ac.carb',4718.00,'MXN',33026.00,0.0000,33026.00,'pzs'),
(51,51,1,'Reparaciòn de roscas con inser de helicoil',2895.00,'MXN',2895.00,0.0000,2895.00,'pzs'),
(52,51,1,'Reparación de Rosca con Helicoil M 16',1930.00,'MXN',1930.00,0.0000,1930.00,'pzs'),
(53,51,1,'Refrescado de  Rosca, Limpieza machuelo sin Hielicoil',2580.00,'MXN',2580.00,22.0000,2580.00,'pzs'),
(54,52,3,'Sliding Shield Additional Supp Dib.9F34732',1500.00,'MXN',4500.00,0.0000,4500.00,'pzs'),
(55,52,3,'Left Guide for Heat Shield Dib.9F34576',10537.60,'MXN',31612.80,0.0000,31612.80,'pzs'),
(56,52,3,'Right Guide for Heat Shield Dib.9F34575',9270.90,'MXN',27812.70,0.0000,27812.70,'pzs'),
(57,54,2,'Silleta laga',2756.00,'USD',5512.00,22.0000,121264.00,'pzs'),
(58,54,16,'vástago tope p 2 silletas (8 izq y 8 der)',43.33,'USD',693.28,22.0000,15252.16,'pzs'),
(59,55,1,'Reparación de roscas a placa',7370.00,'MXN',7370.00,22.0000,7370.00,'servicios'),
(60,56,13,'Retirar Tornillo capado y refrescar rosca',860.00,'MXN',11180.00,22.0000,11180.00,'pzs'),
(61,56,2,'Retirar Machuelo quebrado r reparar rosca con helicoil',1930.00,'MXN',3860.00,22.0000,3860.00,'pzs'),
(62,58,1,'Reparación de roscas a 4 placas',16310.00,'MXN',16310.00,22.0000,16310.00,'servicios'),
(63,59,10,'FAB.ESCUDO DOBLE PARA CNC',4718.00,'MXN',47180.00,22.0000,47180.00,'pzs');
/*!40000 ALTER TABLE `partidas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `before_insert_partidas` BEFORE INSERT ON `partidas`
 FOR EACH ROW BEGIN
IF NEW.moneda = 'USD' THEN
SET NEW.total = NEW.precio_unitario * NEW.cantidad;
SET NEW.total_pesos = NEW.total * NEW.tipo_cambio;
ELSEIF NEW.moneda = 'MXN' THEN
SET NEW.total = NEW.precio_unitario * NEW.cantidad;
SET NEW.total_pesos = NEW.total;
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `actualizar_total` BEFORE INSERT ON `partidas`
 FOR EACH ROW BEGIN
    IF NEW.moneda != 'MXN' THEN
        -- Si la moneda no es MXN, multiplicamos por el tipo de cambio
        SET NEW.total = NEW.precio_unitario * NEW.cantidad;
        SET NEW.total_pesos = NEW.total * NEW.tipo_cambio;
    ELSE
        -- Si la moneda es MXN, no se hace ningún cambio, se usa el valor original
        SET NEW.total = NEW.precio_unitario * NEW.cantidad;
        SET NEW.total_pesos = NEW.total;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `after_insert_partidas` AFTER INSERT ON `partidas`
 FOR EACH ROW BEGIN
UPDATE pedido
SET valor_pesos = (SELECT SUM(total_pesos) FROM partidas WHERE id_pedido = NEW.id_pedido)
WHERE id = NEW.id_pedido;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `actualizar_valor_pesos` AFTER INSERT ON `partidas`
 FOR EACH ROW BEGIN
    -- Actualizamos el campo valor_pesos en la tabla pedidos
    UPDATE pedido
    SET valor_pesos = (SELECT SUM(total_pesos) FROM partidas WHERE id_pedido = NEW.id_pedido)
    WHERE id = NEW.id_pedido;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `calcular_totales_update` BEFORE UPDATE ON `partidas`
 FOR EACH ROW BEGIN
    IF NEW.moneda != 'MXN' THEN
        SET NEW.total = NEW.precio_unitario * NEW.cantidad;
        SET NEW.total_pesos = NEW.total * NEW.tipo_cambio;
    ELSE
        SET NEW.total = NEW.precio_unitario * NEW.cantidad;
        SET NEW.total_pesos = NEW.total;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `before_update_partidas` BEFORE UPDATE ON `partidas`
 FOR EACH ROW BEGIN
IF NEW.moneda = 'USD' THEN
SET NEW.total = NEW.precio_unitario * NEW.cantidad;
SET NEW.total_pesos = NEW.total * NEW.tipo_cambio;
ELSEIF NEW.moneda = 'MXN' THEN
SET NEW.total = NEW.precio_unitario * NEW.cantidad;
SET NEW.total_pesos = NEW.total;
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `recalcular_total_pedido_after_update` AFTER UPDATE ON `partidas`
 FOR EACH ROW BEGIN
    -- Recalcular el total de las partidas para el pedido
    UPDATE pedido
    SET valor_pesos = (
        SELECT SUM(total_pesos)
        FROM partidas
        WHERE id_pedido = NEW.id_pedido
    )
    WHERE id = NEW.id_pedido;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `after_update_partidas` AFTER UPDATE ON `partidas`
 FOR EACH ROW BEGIN
UPDATE pedido
SET valor_pesos = (SELECT SUM(total_pesos) FROM partidas WHERE id_pedido = NEW.id_pedido)
WHERE id = NEW.id_pedido;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `recalcular_total_pedido_after_delete` AFTER DELETE ON `partidas`
 FOR EACH ROW BEGIN
    -- Recalcular el total de las partidas para el pedido
    UPDATE pedido
    SET valor_pesos = (
        SELECT SUM(total_pesos)
        FROM partidas
        WHERE id_pedido = OLD.id_pedido
    )
    WHERE id = OLD.id_pedido;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `after_delete_partidas` AFTER DELETE ON `partidas`
 FOR EACH ROW BEGIN
    UPDATE pedido
    SET valor_pesos = (SELECT SUM(total_pesos) FROM partidas WHERE id_pedido = OLD.id_pedido)
    WHERE id = OLD.id_pedido;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  `fecha_alta` date DEFAULT current_timestamp(),
  `valor_pesos` decimal(10,2) DEFAULT NULL,
  `cliente` text DEFAULT NULL,
  `planta` text DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES
(11,'Mano de obra','2025-03-18',1000000.00,'Transportadores Industriales de México','Guadalupe',NULL),
(13,'6700289194','2025-03-20',6815737.00,'Ternium México','Churubusco y Guerrero',NULL),
(14,'6700338980','2025-03-20',3712709.00,'Ternium México','Apodaca',NULL),
(15,'6700338178','2025-03-20',526240.00,'Ternium México','Guerrero',NULL),
(16,'6700338104','2025-03-20',526240.00,'Ternium México','Juventud',NULL),
(17,'6700334896','2023-11-23',7184277.50,'Ternium México','Churubusco y Guerrero','2025-09-30'),
(18,'1753577','2025-03-20',9010.00,'Vesuvius México','General',NULL),
(19,'1750078','2025-03-20',17380.00,'Vesuvius México','General',NULL),
(20,'1741329','2025-03-20',10550.00,'Vesuvius México','General',NULL),
(21,'1741764','2025-03-20',5000.00,'Vesuvius México','General',NULL),
(22,'1699442','2025-03-20',23100.00,'Vesuvius México','General',NULL),
(23,'1696717','2025-03-20',4396.00,'Vesuvius México','General',NULL),
(24,'1658926','2025-03-20',19580.00,'Vesuvius México','General',NULL),
(25,'1698980','2025-03-20',40200.00,'Vesuvius México','General',NULL),
(26,'1710292','2025-03-20',11400.00,'Vesuvius México','General',NULL),
(27,'1710294','2025-03-20',11400.00,'Vesuvius México','General',NULL),
(28,'1713870','2025-03-20',9670.00,'Vesuvius México','General',NULL),
(29,'1716402','2025-03-20',11580.00,'Vesuvius México','General',NULL),
(30,'1721771','2025-03-20',11800.00,'Vesuvius México','General',NULL),
(31,'1721152','2025-03-20',4396.00,'Vesuvius México','General',NULL),
(32,'1723653','2025-03-20',6895.00,'Vesuvius México','General',NULL),
(33,'1755738','2025-03-20',2750.00,'Vesuvius México','General',NULL),
(34,'1734995','2025-03-20',1450.00,'Vesuvius México','General',NULL),
(35,'1731919','2025-03-20',41060.00,'Vesuvius México','General',NULL),
(36,'1731919','2025-03-20',9550.00,'Vesuvius México','General',NULL),
(37,'6557 VIFLEX','2025-03-31',15000.00,'Transportadores Industriales de México','Monterrey',NULL),
(38,'700 Nosotos mismos','2025-05-08',NULL,'simsa','Monterrey',NULL),
(44,'1758571','2025-05-30',3500.00,'Vesuvius México','Monterrey',NULL),
(45,'1769721','2025-06-03',7720.00,'Vesuvius México','Monterrey',NULL),
(46,'1772424','2025-06-16',33026.00,'Vesuvius México','',NULL),
(51,'1781052','2025-08-18',7405.00,'Vesuvius México','General',NULL),
(52,'1769182','2025-08-18',63925.50,'Vesuvius México','General',NULL),
(53,'1776534','2025-08-18',NULL,'Vesuvius México','General',NULL),
(54,'6602194031','2025-08-28',136516.16,'Ternium México','General',NULL),
(55,'1785145','2025-08-29',7370.00,'Vesuvius México','General',NULL),
(56,'1785825','2025-09-12',15040.00,'Vesuvius México','Monterrey',NULL),
(57,'Vidriera','2025-09-17',NULL,'Transportadores Industriales de México','Guadalupe',NULL),
(58,'1788323','2025-10-01',16310.00,'Vesuvius México','General',NULL),
(59,'1786711','2025-10-01',47180.00,'Vesuvius México','General',NULL);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER insertar_precio_general
AFTER INSERT ON pedido
FOR EACH ROW
BEGIN
  INSERT INTO precios (id_pedido, descripcion, unidad, precio, fecha_alta)
  VALUES (NEW.id, 'general', 'servicios', 200.00, CURRENT_DATE());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `periodicos`
--

DROP TABLE IF EXISTS `periodicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `periodicos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_act` int(11) DEFAULT NULL,
  `objeto` varchar(100) DEFAULT NULL,
  `frecuencia` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_act` (`id_act`),
  CONSTRAINT `periodicos_ibfk_1` FOREIGN KEY (`id_act`) REFERENCES `actividades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodicos`
--

LOCK TABLES `periodicos` WRITE;
/*!40000 ALTER TABLE `periodicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `periodicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piezas`
--

DROP TABLE IF EXISTS `piezas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `piezas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cantidad` int(11) DEFAULT NULL,
  `pieza` varchar(255) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `ot` int(11) DEFAULT NULL,
  `comentarios` text DEFAULT NULL,
  `prioridad` decimal(10,2) NOT NULL DEFAULT 0.00,
  `fecha_inicial` date DEFAULT NULL,
  `fecha_final` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `area` (`area`),
  KEY `ot` (`ot`),
  CONSTRAINT `piezas_ibfk_1` FOREIGN KEY (`area`) REFERENCES `listas` (`area`),
  CONSTRAINT `piezas_ibfk_2` FOREIGN KEY (`ot`) REFERENCES `ot` (`ot`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piezas`
--

LOCK TABLES `piezas` WRITE;
/*!40000 ALTER TABLE `piezas` DISABLE KEYS */;
INSERT INTO `piezas` VALUES
(1,1,'primera','paileria',790,NULL,0.00,NULL,NULL),
(2,1,'ultimo','paileria',790,NULL,0.00,NULL,NULL),
(19,1,'servicio ternium ','Paileria',1000,'',0.00,NULL,'2025-04-11'),
(20,1,'servicio ternium','Paileria',1001,'',0.00,'2025-04-11','2025-06-10'),
(22,1,'servicio ternium','Paileria',1002,'',0.00,'2025-04-11','2025-06-10'),
(23,1,'servicio ternium','Paileria',1003,'',0.00,'2025-04-11','2025-06-10'),
(24,1,'servicio ternium','Paileria',1004,'',0.00,'2025-04-11','2025-06-10'),
(25,0,'Falta','Casos Especiales',700,'',0.00,NULL,NULL),
(27,0,'Mtto TALLER','Casos Especiales',750,'',0.00,NULL,NULL),
(28,0,'FALTA JUSTIFICADA','Casos Especiales',712,'',0.00,NULL,NULL),
(29,0,'PERMISO','Casos Especiales',701,'',0.00,NULL,NULL),
(30,0,'SUSPENSION','Casos Especiales',702,'',0.00,NULL,NULL),
(31,0,'VACACIONES','Casos Especiales',703,'',0.00,NULL,NULL),
(32,0,'ASUETO','Casos Especiales',704,'',0.00,NULL,NULL),
(33,0,'INCAPACIDAD (IMSS)','Casos Especiales',706,'',0.00,NULL,NULL),
(34,0,'INCAPACIDAD (TIM)','Casos Especiales',707,'',0.00,NULL,NULL),
(35,0,'PATERNIDAD (Pagada)','Casos Especiales',708,'',0.00,NULL,NULL),
(36,0,'PERMISO (pagado por GERENCIA)','Casos Especiales',709,'',0.00,NULL,NULL),
(37,0,'HABILITACIONES','Casos Especiales',710,'',0.00,NULL,NULL),
(38,0,'BAJA','Casos Especiales',711,'',0.00,NULL,NULL),
(55,0,'prueba','Paileria',1032,'',0.00,NULL,'2025-06-10'),
(56,1,'base ptr 4x2','Paileria',999,'',0.00,'2025-06-12',NULL),
(57,0,'bases giratoria','Proyectos',999,'',0.00,NULL,NULL),
(58,1,'plataforma de 368 x 80','Paileria',999,'',0.00,'2025-06-12',NULL),
(60,2,'soporte plataforma 80 x 64 7/8 ','Paileria',999,'',0.00,'2025-06-12',NULL),
(61,0,'plataforma de 368 x 80','Paileria',1034,'',0.00,'2025-06-12','2025-06-12'),
(62,0,'soporte para plataforma ','Paileria',1034,'',0.00,'2025-06-12',NULL),
(63,0,'escaleras','Paileria',1034,'',0.00,'2025-06-12',NULL),
(64,0,'pasamanos','Paileria',1034,'',0.00,'2025-06-12',NULL),
(65,0,'marcos de angulo y soportes','Paileria',1035,'',0.00,'2025-06-12',NULL),
(66,0,'instalacion de mallas ','Paileria',1035,'',0.00,'2025-06-12',NULL),
(67,0,'pinatdo','Paileria',1035,'',0.00,'2025-06-12',NULL),
(68,0,'fabricar marcos y soportes','Paileria',1037,'',0.00,'2025-06-12',NULL),
(69,0,'instalar malla','Paileria',1037,'',0.00,'2025-06-12',NULL),
(70,1,'Linea#1 apoyo a mantenimiento para pulir y soldar casquillo en nariz de entrada.','Paileria',1032,'',0.00,'2025-06-12',NULL),
(71,1,'Modificar e instalar barandal y puerta lado motriz molino 3K ','Paileria',1029,'',0.00,'2025-06-12',NULL),
(72,1,'Instalación de plataforma y escalera lado poniente tanque de enjuague decapado TPG.','Paileria',1029,'',0.00,'2025-06-12',NULL),
(73,1,'Instalación de poste ptr de aviso exclusivo montacargas ','Paileria',1029,'',0.00,'2025-06-12',NULL),
(74,1,'Habilitar material para fabricar barandal para conveyor No.1','Paileria',1030,'',0.00,'2025-06-12',NULL),
(75,0,'Pintar  plat.soport.barandales y escaleras','Paileria',1034,'',0.00,'2025-06-12',NULL),
(76,1,'Conveyor No.3 apoyo a personal de mantenimiento para reparar brazos de cruceta agujerear y ajustar bujes.','Paileria',1030,'',0.00,'2025-06-12',NULL),
(77,1,'Habilitar e instalar barandal para molino 3K ','Paileria',1029,'',0.00,'2025-06-12',NULL),
(78,1,'Habilitar e instalar barandal para molino 3K ','Paileria',1029,'',0.00,'2025-06-12',NULL),
(79,1,'Habilitar e instalar barandal para molino 3K ','Paileria',1029,'',0.00,'2025-06-12',NULL),
(80,1,'Habilitar e instalar barandal para molino 3K ','Paileria',1029,'',0.00,'2025-06-12',NULL),
(81,1,'Habilitar material para fabricar guarda','Paileria',1032,'',0.00,'2025-06-12',NULL),
(82,1,'Habilitar material ptr para fabricar barandal molino 6K lado motriz.','Paileria',1029,'',0.00,'2025-06-12',NULL),
(83,1,'Habilitar material placa1/4\"x 29\" x 32\" para instalar en entrada y salida de cabezal línea No.1','Paileria',1032,'',0.00,'2025-06-12',NULL),
(84,1,'Habilitar material para fabricar barandal ','Paileria',1030,'',0.00,'2025-06-12',NULL),
(85,0,'Fab. de marcos fab.de soportes y pintura','Paileria',1028,'',0.00,'2025-06-12',NULL),
(86,1,'Apoyo a personal de mantenimiento para reparar mandril de salida línea #3','Paileria',1032,'',0.00,'2025-06-12',NULL),
(87,1,'Reparar porta tobera linea slitter #2','Paileria',1032,'',0.00,'2025-06-12',NULL),
(88,1,'Fabricar barandal para fosa de acumulación línea #4','Paileria',1032,'',0.00,'2025-06-12',NULL),
(89,1,'Fabricar e instalar guarda para consola entrada molino 3K.','Paileria',1029,'',0.00,'2025-06-12',NULL),
(90,1,'Fabricar guarda para motor en linea corte de hojas ','Paileria',1032,'',0.00,'2025-06-12',NULL),
(91,1,'Fabricar guarda para motor en linea corte de hojas ','Paileria',1032,'',0.00,'2025-06-12',NULL),
(92,1,'Apoyo a personal de herramental molino W-200 para extraer cople de rodillo formador. ','Paileria',1029,'',0.00,'2025-06-12',NULL),
(93,1,'RP línea slitter No.2','Paileria',1030,'',0.00,'2025-06-12',NULL),
(94,1,'RP línea slitter No3','Paileria',1030,'',0.00,'2025-06-12',NULL),
(95,1,'Apoyo a personal de mantenimiento para actividades de paileria en linea No 4','Paileria',1032,'',0.00,'2025-06-12','2025-06-12'),
(96,1,'Aaprueba','Paileria',1000,'',0.00,'2025-06-12','2025-06-12'),
(97,1,'Instalación de barandal móvil y fijo en perímetro de conveyor No.2','Paileria',1030,'',0.00,NULL,NULL),
(98,1,'Fabricar plataforma 107\" x 23\" con ruedas y agarradera para línea No.3','Paileria',1032,'',0.00,NULL,NULL),
(99,1,'Reconstruir pieza de anillo de barrido para línea de G2 ','Paileria',1029,'',0.00,NULL,NULL),
(100,1,'Fabricar soportes para mesa de rodillos línea corte de hojas ','Paileria',1032,'',0.00,NULL,NULL),
(101,1,'Instalación de poste para pluma ','Paileria',1030,'',0.00,NULL,NULL),
(102,4,'Corte de placa 1/4\" x 3 x 14\" para hacer doblez para base de aditamento gira tambos decapado TPG ','Paileria',1029,'',0.00,NULL,NULL),
(103,1,'Fabricar barandal tubular ','Paileria',1032,'',0.00,NULL,NULL),
(104,0,'Falta','Casos Especiales',700,'',0.00,'2025-06-16','2025-06-16'),
(105,1,'Habilitar e instalar postes para riel de puerta corrediza línea #3','Paileria',1032,'',0.00,NULL,NULL),
(106,1,'Ajuste de compuerta 38 cm x 33 cm y colocar fieltro en linea molino Wh -200','Paileria',1029,'',0.00,NULL,NULL),
(107,1,'Habilitar postes de 3 metros para operación de aditamento gira tambos de TPG ','Paileria',1029,'',0.00,NULL,NULL),
(108,1,'OT 2002851181 MP servicio de limpieza casa de polvos G2 ','Paileria',1033,'',0.00,NULL,NULL),
(109,1,'Fabricar guarda para línea #3','Paileria',1032,'',0.00,NULL,NULL),
(110,1,'Cambio de cuñas a cabezales línea #1','Paileria',1032,'',0.00,NULL,NULL),
(111,1,'Instalación de puertas en área de Acerex ','Paileria',1030,'',0.00,NULL,NULL),
(112,1,'Reparar tapa de entrada y salida de cabezal línea #1','Paileria',1032,'',0.00,NULL,NULL),
(113,1,'Instalación de guarda molino WH-200','Paileria',1029,'',0.00,NULL,NULL),
(114,1,'Doblar placa 5/8\" x 30\" para lengüetas línea No2','Paileria',1032,'',0.00,NULL,NULL);
/*!40000 ALTER TABLE `piezas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precios`
--

DROP TABLE IF EXISTS `precios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `precios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_item` int(11) DEFAULT NULL,
  `id_pedido` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `unidad` text NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `fecha_alta` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precios`
--

LOCK TABLES `precios` WRITE;
/*!40000 ALTER TABLE `precios` DISABLE KEYS */;
INSERT INTO `precios` VALUES
(11,NULL,800,'general','servicios',1.00,'2025-03-18'),
(12,NULL,13,'general','servicios',200.00,'2025-03-20'),
(14,1,15,'Limpieza de humos y polvos','servicios',11440.00,'2025-03-25'),
(15,NULL,38,'general','servicios',200.00,'2025-04-11'),
(36,NULL,11,'general','servicios',200.00,'2025-04-11'),
(37,NULL,14,'general','servicios',200.00,'2025-04-11'),
(38,NULL,15,'general','servicios',200.00,'2025-04-11'),
(39,NULL,16,'general','servicios',200.00,'2025-04-11'),
(40,NULL,17,'general','servicios',200.00,'2025-04-11'),
(41,NULL,18,'general','servicios',200.00,'2025-04-11'),
(42,NULL,19,'general','servicios',200.00,'2025-04-11'),
(43,NULL,20,'general','servicios',200.00,'2025-04-11'),
(44,NULL,21,'general','servicios',200.00,'2025-04-11'),
(45,NULL,22,'general','servicios',200.00,'2025-04-11'),
(46,NULL,23,'general','servicios',200.00,'2025-04-11'),
(47,NULL,24,'general','servicios',200.00,'2025-04-11'),
(48,NULL,25,'general','servicios',200.00,'2025-04-11'),
(49,NULL,26,'general','servicios',200.00,'2025-04-11'),
(50,NULL,27,'general','servicios',200.00,'2025-04-11'),
(51,NULL,28,'general','servicios',200.00,'2025-04-11'),
(52,NULL,29,'general','servicios',200.00,'2025-04-11'),
(53,NULL,30,'general','servicios',200.00,'2025-04-11'),
(54,NULL,31,'general','servicios',200.00,'2025-04-11'),
(55,NULL,32,'general','servicios',200.00,'2025-04-11'),
(56,NULL,33,'general','servicios',200.00,'2025-04-11'),
(57,NULL,34,'general','servicios',200.00,'2025-04-11'),
(58,NULL,35,'general','servicios',200.00,'2025-04-11'),
(59,NULL,36,'general','servicios',200.00,'2025-04-11'),
(60,NULL,37,'general','servicios',200.00,'2025-04-11'),
(61,NULL,1026,'general','servicios',200.00,'2025-04-11'),
(78,5,14,'Reparación General (Pulgada de Soldadura)','pulgada',15.96,'2025-04-11'),
(79,24,14,'Trabajos Menores 10 Kgs.Ac. Mtls. Varios','pzs',509.72,'2025-04-11'),
(80,25,14,'Trabajos Menores 11 a 20 Kgs. Ac. Mtls. Varios','pzs',965.58,'2025-04-11'),
(81,26,14,'Trabajos Menores 21 a 30 Kgs. Ac. Mtls. Varios','pzs',1376.55,'2025-04-11'),
(82,27,14,'Trabajos Menores 31 a 40 Kgs. Ac. Mtls. Varios','pzs',1743.63,'2025-04-11'),
(83,28,14,'Trabajos Menores 41 a 50 Kgs. Ac. Mtls. Varios','pzs',2064.83,'2025-04-11'),
(84,30,14,'Fab. Guardas menores a 50 Kgs. Ac. Mtls. Varios','pzs',1398.50,'2025-04-11'),
(86,5,17,'Reparación General (Pulgada de Soldadura)','pulgada',15.12,'2025-04-11'),
(87,24,17,'Trabajos Menores 10 Kgs. Ac. Mtls. Varios','pzs',482.90,'2025-04-11'),
(88,25,17,'Trabajos menores 11 a 20 Kgs. Ac. Mtls. Varios','pzs',914.76,'2025-04-11'),
(89,26,17,'Trabajos Menores 21 a 30 Kgs. Ac. Mtls. Varios','pzs',1304.10,'2025-04-11'),
(90,27,17,'Trabajos Menores 31 a 40 Kgs. Ac. Matls. Varios','pzs',1651.86,'2025-04-11'),
(91,28,17,'Trabajos Menores 41 a 50 Kgs. Ac. Matls. Varios','pzs',1956.15,'2025-04-11'),
(92,30,17,'Fab. Guardas Menores a 50 Kgs. Ac. Mtls. Varios','pzs',1324.89,'2025-04-11'),
(100,NULL,39,'general','servicios',200.00,'2025-05-08'),
(101,NULL,40,'general','servicios',200.00,'2025-05-29'),
(102,NULL,41,'general','servicios',200.00,'2025-05-29'),
(103,NULL,42,'general','servicios',200.00,'2025-05-29'),
(104,NULL,43,'general','servicios',200.00,'2025-05-29'),
(105,NULL,44,'general','servicios',200.00,'2025-05-30'),
(106,NULL,45,'general','servicios',200.00,'2025-06-03'),
(107,NULL,46,'general','servicios',200.00,'2025-06-16'),
(108,NULL,47,'general','servicios',200.00,'2025-06-26'),
(109,NULL,48,'general','servicios',200.00,'2025-08-07'),
(110,NULL,49,'general','servicios',200.00,'2025-08-11'),
(111,NULL,50,'general','servicios',200.00,'2025-08-11'),
(112,NULL,51,'general','servicios',200.00,'2025-08-18'),
(113,NULL,52,'general','servicios',200.00,'2025-08-18'),
(114,NULL,53,'general','servicios',200.00,'2025-08-18'),
(115,NULL,54,'general','servicios',200.00,'2025-08-28'),
(116,NULL,55,'general','servicios',200.00,'2025-08-29'),
(117,NULL,56,'general','servicios',200.00,'2025-09-12'),
(118,NULL,57,'general','servicios',200.00,'2025-09-17'),
(119,NULL,58,'general','servicios',200.00,'2025-10-01'),
(120,NULL,59,'general','servicios',200.00,'2025-10-01');
/*!40000 ALTER TABLE `precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prerrequisitos`
--

DROP TABLE IF EXISTS `prerrequisitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `prerrequisitos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pieza` int(11) DEFAULT NULL,
  `prerrequisito` varchar(255) DEFAULT NULL,
  `compra` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pieza` (`pieza`),
  KEY `compra` (`compra`),
  CONSTRAINT `prerrequisitos_ibfk_1` FOREIGN KEY (`pieza`) REFERENCES `piezas` (`id`),
  CONSTRAINT `prerrequisitos_ibfk_2` FOREIGN KEY (`compra`) REFERENCES `compras` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prerrequisitos`
--

LOCK TABLES `prerrequisitos` WRITE;
/*!40000 ALTER TABLE `prerrequisitos` DISABLE KEYS */;
/*!40000 ALTER TABLE `prerrequisitos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proveedor` varchar(255) NOT NULL,
  `direccion` text DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `periodo_pago` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES
(1,'Growtech-solutions (Rafael Garza Castillo)','Contry','8123873054','rafa.garza@gmail.com',0),
(3,'Aceros y Perfiles Laminados','Av. Benito Juárez Ote.No.1314','8183372305','',0),
(4,'Alialloys','Av. Chapultepec 2239 Ote.','8112342417','',0),
(5,'Francisco J. Alanís Ambriz','Av. Camino Real 1404','8120033681','',0),
(6,'Primers y Pinturas','Washington 1910 Nte.','8183440322','',0),
(7,'Carolina Ponce Calzada','','8117890317  ','',0),
(8,'Aceromex','Carret. Laredo Km.27','8181555400','',0),
(9,'Birlos y Tornillos','Gral. Treviño Ote. 1837','8183420742','ventas@bytnsa.com',0),
(10,'Euromas Calzado Industrial','Chapultepec Ote.No.1122','','',0),
(11,'Grupo Delmex','Romulo de la Garza No.148 Ote. Colonia  Miguel Alemán, San Nicolás de los Garza N.L. ','','',0),
(13,'rafa','contry','8123873054','rafa@gmail.com',30),
(14,'Laboratorios Cemer','Ave.Linda Vista 204 Sur Col.Linda Vista CP 67130','8183346949','recepcion@medical cemer.com',0),
(15,'Perfiles y Laminados Victoria,SA de CV','Edison 3118 Nte. Fracc.Industrial Monterrey N.L.','8183517380','j.cantu@plavisa.com.mx',0),
(16,'Ruedas y Rodajas del Norte','Gonzalitos N.333 Col. Urdiales Monterrey N.L.CP 64430','8126182399','0',0),
(17,'Travers Tool','Arco Vial Nave 26 Flexpark Apodaca','4422096600 ext 5120','0',0),
(18,'Grupo Ferretería Calzada','Av. Pablo Livas No. 2407 Col. Las Villas','8182861449','calsuc41@ferreteriacalzada.com',0),
(19,'Ferretera Exclusiva','Av.Madero No.2177 Ote.','8183546353','',0);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ubicaciones`
--

DROP TABLE IF EXISTS `ubicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ubicaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `latitud` decimal(10,6) NOT NULL,
  `longitud` decimal(10,6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubicaciones`
--

LOCK TABLES `ubicaciones` WRITE;
/*!40000 ALTER TABLE `ubicaciones` DISABLE KEYS */;
INSERT INTO `ubicaciones` VALUES
(1,'Transimex',25.656359,-100.220910);
/*!40000 ALTER TABLE `ubicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `rol` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rol` (`rol`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`rol`) REFERENCES `listas` (`rol`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES
(2,'rafael@transimex.com.mx','$2y$10$FhrSPK6nlxHWPcsYKz1rfeBLmbxfzQRgdbbjH.PakkLkMCJNY6cqG','gerencia'),
(3,'raul.garza@e-simsa.com.mx','$2y$10$CJHJSXMsCxZXqoEl1utX4eg.j2r1Zyuq4efsjGmwa2OYYhd6wNoSC','gerencia'),
(6,'nelly@e-simsa.com.mx','$2y$10$XWyKfQjMoFg4ZTvTUnQtLObNlFpKJBoNEb67XT7Q8zaz.wxiKg0ZO','gerencia'),
(7,'raulolguin@e-simsa.com.mx','$2y$10$UwU3FqARXpKQPR1vNXVlmu8LZaQrwP/MPcHzHvdrsNWOeDa3LlSwW','manufactura'),
(8,'jmzertuche@e-simsa.com.mx','$2y$10$AcmyCLp18Jn3/fz2pTu8BeKQLS3iBW072wePxxhW6DcIy87bOsW7C','manufactura'),
(10,'Proyectos@transimex.com.mx','$2y$10$69c.98HC6ibaMZgejqrts.TkX9kEJTREj8mJ6AdG5IXaW4.PuOJ1m','gerencia'),
(11,'mariaisabel@e-simsa.com.mx','$2y$10$OJNgfOsgXyFVnyQqTjYmcO.zwoAIvoXhejMEpwQcbYwC0xwelpKgS','gerencia');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'simsa'
--

--
-- Dumping routines for database 'simsa'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_cronograma` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`rafag`@`%` PROCEDURE `actualizar_cronograma`(IN `NID` INT, IN `NIDP` INT, IN `NT` INT)
BEGIN
    DECLARE checador INT DEFAULT 0;
    DECLARE ffp DATE;
    DECLARE ff DATE;
    DECLARE dias INT;
    DECLARE tv INT DEFAULT NULL;
    DECLARE id_inicial INT DEFAULT NID;
    DECLARE temp_id_inicial INT;

    -- Primer WHILE loop para actualizar solo los id_previa
    SET checador = (SELECT COUNT(id) FROM cronograma WHERE id_previa = NIDP AND id_trabajador = NT);

    WHILE checador > 1 DO
        -- Obtener la fecha final de la tarea previa
        SELECT fecha_final INTO ffp FROM cronograma WHERE id = NIDP LIMIT 1;
        SET ffp = DATE_ADD(ffp, INTERVAL 1 DAY);
        
        -- Calcular la nueva fecha final
        SELECT duracion INTO dias FROM cronograma WHERE id = NID LIMIT 1;
        SET ff = DATE_ADD(ffp, INTERVAL dias - 1 DAY);

        -- Actualizar fecha_inicial y fecha_final para la tarea actual
        UPDATE cronograma
        SET fecha_inicial = ffp,
            fecha_final = ff
        WHERE id = NID;
        
        -- Buscar la siguiente tarea en la cadena
        SELECT id INTO tv FROM cronograma WHERE id_previa = NIDP AND id != NID AND id_trabajador = NT LIMIT 1;
        
        IF tv IS NOT NULL THEN
            -- Actualizar la id_previa de la siguiente tarea para que apunte a la tarea actual
            UPDATE cronograma SET id_previa = NID WHERE id = tv;
            
            -- Actualizar la variable NIDP y NID para el siguiente ciclo
            SET NIDP = NID;
            SET NID = tv;
        ELSE
            -- Si no hay más tareas, salir del ciclo
            SET checador = 0;
        END IF;
        
        -- Recalcular el número de registros que dependen de la tarea actual
        SET checador = (SELECT COUNT(id) FROM cronograma WHERE id_previa = NIDP AND id_trabajador = NT);
    END WHILE;

    -- Segundo WHILE loop para actualizar las fechas basadas en las fechas finales y duración
    SET temp_id_inicial = id_inicial;

    WHILE EXISTS (SELECT 1 FROM cronograma WHERE id_previa = temp_id_inicial) DO
        -- Obtener la fecha final de la tarea previa
        SELECT fecha_final INTO ffp FROM cronograma WHERE id = temp_id_inicial LIMIT 1;
        
        -- Asegurarse de que ffp no sea NULL antes de usarlo
        IF ffp IS NOT NULL THEN
            -- Establecer la nueva fecha inicial
            SET ffp = DATE_ADD(ffp, INTERVAL 1 DAY);
            
            -- Obtener la duración de la tarea actual
            SELECT duracion INTO dias FROM cronograma WHERE id_previa = temp_id_inicial LIMIT 1;

            -- Calcular la nueva fecha final
            SET ff = DATE_ADD(ffp, INTERVAL dias - 1 DAY);

            -- Actualizar fecha_inicial y fecha_final para los registros dependientes
            UPDATE cronograma
            SET fecha_inicial = ffp,
                fecha_final = ff
            WHERE id_previa = temp_id_inicial;
        
            -- Actualizar el id_inicial para el siguiente ciclo
            SELECT id INTO temp_id_inicial FROM cronograma WHERE id_previa = temp_id_inicial LIMIT 1;
        ELSE
            -- Si no se encuentra una fecha final válida, salir del ciclo
            SET temp_id_inicial = NULL;
        END IF;
    END WHILE;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calculate_and_update_totals` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`rafag`@`%` PROCEDURE `calculate_and_update_totals`(IN `oc_id` INT)
BEGIN
    DECLARE subtotal DECIMAL(20,4) DEFAULT 0;
    DECLARE net_total DECIMAL(20,4) DEFAULT 0;
    DECLARE total_pesos DECIMAL(20,4) DEFAULT 0;
    DECLARE currency VARCHAR(50);
    DECLARE quotation_type VARCHAR(50);
    DECLARE exchange_rate DECIMAL(10,4) DEFAULT 1;

    -- Obtain the exchange rate, currency, and quotation type from the oc table
    SELECT tipo_cambio, moneda, cotizacion 
    INTO exchange_rate, currency, quotation_type 
    FROM orden_compra 
    WHERE id = oc_id;

    -- Calculate subtotal
    SELECT SUM(cantidad * precio_unitario) 
    INTO subtotal 
    FROM compras 
    WHERE id_oc = oc_id;

    -- Calculate total in pesos based on quotation type and currency
    SELECT SUM(
        CASE 
            WHEN quotation_type = '+IVA' THEN
                CASE
                    WHEN currency = 'USD' THEN (cantidad * precio_unitario * exchange_rate * 1.16)
                    ELSE (cantidad * precio_unitario * 1.16)
                END
            WHEN quotation_type = 'NETO' THEN
                CASE
                    WHEN currency = 'USD' THEN (cantidad * precio_unitario * exchange_rate)
                    ELSE (cantidad * precio_unitario)
                END
            ELSE 0
        END
    ) 
    INTO total_pesos 
    FROM compras 
    WHERE id_oc = oc_id;

    -- Calculate net total
    IF quotation_type = '+IVA' THEN
        SET net_total = subtotal * 1.16; -- Assuming a VAT rate of 16%
    ELSE
        SET net_total = subtotal;
    END IF;

    -- Update the values in the oc table
    UPDATE orden_compra 
    SET subtotal = subtotal, 
        total_pesos = total_pesos, 
        neto = net_total 
    WHERE id = oc_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cascade_update` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`rafag`@`%` PROCEDURE `cascade_update`(IN `start_id` INT)
BEGIN
    DECLARE temp_id_inicial INT;
    DECLARE ffp DATE;
    DECLARE ff DATE;
    DECLARE dias INT;

    -- Define el ID inicial como el del trabajo que se está editando
    SET temp_id_inicial = start_id;

    -- Obtener la fecha inicial del trabajo que se está editando
    SELECT fecha_inicial INTO ffp FROM cronograma WHERE id = temp_id_inicial LIMIT 1;

    -- Asegurarse de que ffp no sea NULL
    IF ffp IS NOT NULL THEN
        -- Obtener la nueva duración del trabajo que se está editando
        SELECT duracion INTO dias FROM cronograma WHERE id = temp_id_inicial LIMIT 1;

        -- Calcular la nueva fecha final
        SET ff = DATE_ADD(ffp, INTERVAL dias - 1 DAY);

        -- Actualizar la fecha final del trabajo que se está editando
        UPDATE cronograma
        SET fecha_final = ff
        WHERE id = temp_id_inicial;
    END IF;

    -- Luego, proceder con la actualización en cascada de las tareas dependientes
    WHILE EXISTS (SELECT 1 FROM cronograma WHERE id_previa = temp_id_inicial) DO
        -- Obtener la fecha final de la tarea previa
        SELECT fecha_final INTO ffp FROM cronograma WHERE id = temp_id_inicial LIMIT 1;

        -- Asegurarse de que ffp no sea NULL
        IF ffp IS NOT NULL THEN
            -- Establecer la nueva fecha inicial
            SET ffp = DATE_ADD(ffp, INTERVAL 1 DAY);

            -- Obtener la duración de la tarea actual
            SELECT duracion INTO dias FROM cronograma WHERE id_previa = temp_id_inicial LIMIT 1;

            -- Calcular la nueva fecha final
            SET ff = DATE_ADD(ffp, INTERVAL dias - 1 DAY);

            -- Actualizar fecha_inicial y fecha_final para los registros dependientes
            UPDATE cronograma
            SET fecha_inicial = ffp,
                fecha_final = ff
            WHERE id_previa = temp_id_inicial;

            -- Actualizar temp_id_inicial para la siguiente iteración
            SELECT id INTO temp_id_inicial FROM cronograma WHERE id_previa = temp_id_inicial LIMIT 1;
        ELSE
            -- Salir del bucle si no se encuentra una fecha final válida
            SET temp_id_inicial = NULL;
        END IF;
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_all_oc_totals` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`rafag`@`%` PROCEDURE `update_all_oc_totals`()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE oc_id INT;

    -- Declare a cursor for iterating over all oc_ids
    DECLARE cur CURSOR FOR SELECT id FROM orden_compra;

    -- Declare a handler to set done to 1 when there are no more rows
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Open the cursor
    OPEN cur;

    -- Loop over all rows
    read_loop: LOOP
        FETCH cur INTO oc_id;
        IF done THEN
            LEAVE read_loop;
        END IF;
        -- Call the procedure for the current oc_id
        CALL calculate_and_update_totals(oc_id);
    END LOOP;

    -- Close the cursor
    CLOSE cur;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-30  2:00:02
