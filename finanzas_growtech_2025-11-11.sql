/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: finanzas_growtech
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
-- Current Database: `finanzas_growtech`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `finanzas_growtech` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `finanzas_growtech`;

--
-- Table structure for table `RegimenFiscal`
--

DROP TABLE IF EXISTS `RegimenFiscal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `RegimenFiscal` (
  `Clave` char(3) NOT NULL,
  `Descripcion` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RegimenFiscal`
--

LOCK TABLES `RegimenFiscal` WRITE;
/*!40000 ALTER TABLE `RegimenFiscal` DISABLE KEYS */;
INSERT INTO `RegimenFiscal` VALUES
('601','Régimen General de Ley Personas Morales'),
('602','Régimen Simplificado de Ley Personas Morales'),
('603','Personas Morales con Fines no Lucrativos'),
('604','Régimen de Pequeños Contribuyentes'),
('605','Régimen de Sueldos y Salarios e Ingresos Asimilados'),
('606','Régimen de Arrendamiento'),
('607','Régimen de Enajenación o Adquisición de Bienes'),
('608','Régimen de los Demás Ingresos'),
('609','Régimen de Consolidación'),
('610','Residentes en el Extranjero sin Establecimiento en México'),
('611','Régimen de Ingresos por Dividendos (Socios y Accionistas)'),
('612','Personas Físicas con Actividades Empresariales y Profesionales'),
('613','Régimen Intermedio de las Personas Físicas con Actividades Empresariales'),
('614','Régimen de los Ingresos por Intereses'),
('615','Régimen de los Ingresos por Obtención de Premios'),
('616','Sin Obligaciones Fiscales'),
('617','PEMEX'),
('618','Régimen Simplificado de Ley Personas Físicas'),
('619','Ingresos por la Obtención de Préstamos'),
('620','Sociedades Cooperativas que Optan por Diferir sus Ingresos'),
('621','Régimen de Incorporación Fiscal'),
('622','Actividades Agrícolas, Ganaderas, Silvícolas y Pesqueras (PM)'),
('623','Régimen Opcional para Grupos de Sociedades'),
('624','Régimen de los Coordinados'),
('625','Actividades Empresariales por Plataformas Tecnológicas'),
('626','Régimen Simplificado de Confianza');
/*!40000 ALTER TABLE `RegimenFiscal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsoCFDI`
--

DROP TABLE IF EXISTS `UsoCFDI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `UsoCFDI` (
  `Clave` char(3) NOT NULL,
  `Descripcion` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsoCFDI`
--

LOCK TABLES `UsoCFDI` WRITE;
/*!40000 ALTER TABLE `UsoCFDI` DISABLE KEYS */;
INSERT INTO `UsoCFDI` VALUES
('D01','Honorarios médicos, dentales y gastos hospitalarios'),
('D02','Gastos médicos por incapacidad o discapacidad'),
('D03','Gastos funerales'),
('D04','Donativos'),
('D05','Intereses reales efectivamente pagados por créditos hipotecarios (casa habitación)'),
('D06','Aportaciones voluntarias al SAR'),
('D07','Primas por seguros de gastos médicos'),
('D08','Gastos de transportación escolar obligatoria'),
('D09','Depósitos en cuentas para el ahorro, primas que tengan como base planes de pensiones'),
('D10','Pagos por servicios educativos (colegiaturas)'),
('G01','Adquisición de mercancias'),
('G02','Devoluciones, descuentos o bonificaciones'),
('G03','Gastos en general'),
('I01','Construcciones'),
('I02','Mobilario y equipo de oficina por inversiones'),
('I03','Equipo de transporte'),
('I04','Equipo de computo y accesorios'),
('I05','Dados, troqueles, moldes, matrices y herramental'),
('I06','Comunicaciones telefónicas'),
('I07','Comunicaciones satelitales'),
('I08','Otra maquinaria y equipo'),
('P01','Por definir');
/*!40000 ALTER TABLE `UsoCFDI` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacen_epp`
--

LOCK TABLES `almacen_epp` WRITE;
/*!40000 ALTER TABLE `almacen_epp` DISABLE KEYS */;
INSERT INTO `almacen_epp` VALUES
(6,'chaleco','2025-10-13','Rafael Garza Castillo',NULL,'Buen estado');
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
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `trigger_epp_estado_update` 
BEFORE UPDATE ON `almacen_epp` 
FOR EACH ROW 
BEGIN
    IF OLD.estado <> NEW.estado THEN
        INSERT INTO historial_epp (
            folio, 
            epp, 
            trabajador_anterior,
            estado_anterior, 
            estado_nuevo
        )
        VALUES (
            OLD.folio, 
            OLD.epp, 
            OLD.trabajador,
            OLD.estado, 
            NEW.estado
        );
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
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `trigger_epp_trabajador_update` 
BEFORE UPDATE ON `almacen_epp` 
FOR EACH ROW 
BEGIN
    IF OLD.trabajador <> NEW.trabajador THEN
        INSERT INTO historial_epp (
            folio, 
            epp, 
            estado_anterior,
            trabajador_anterior, 
            trabajador_nuevo
        )
        VALUES (
            OLD.folio, 
            OLD.epp, 
            OLD.estado,
            OLD.trabajador, 
            NEW.trabajador
        );
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
  `ubicacion` varchar(200) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `penalizacion` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia`
--

LOCK TABLES `asistencia` WRITE;
/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
INSERT INTO `asistencia` VALUES
(75,25.6356988,-100.2781992,'2025-10-13 10:52:43','1','Casa Garza Castillo','entrada',0),
(76,25.6356991,-100.2781987,'2025-10-13 13:39:39','1','Oficina','salida',0),
(77,25.6356991,-100.2781987,'2025-10-13 13:40:13','1','Oficina','salida',0),
(78,25.6356990,-100.2781988,'2025-10-13 13:53:57','1','Oficina','salida',0),
(79,25.6356991,-100.2781987,'2025-10-13 13:54:59','1','Oficina','salida',0),
(80,25.6356991,-100.2781987,'2025-10-13 13:56:51','1','Oficina','salida',0),
(81,25.6357360,-100.2781900,'2025-10-10 07:00:00','3','Oficina','entrada',0),
(82,25.6357360,-100.2781900,'2025-10-10 16:00:00','3','Oficina','salida',0),
(83,25.6357360,-100.2781900,'2025-10-11 07:00:00','3','Oficina','entrada',0),
(84,25.6357360,-100.2781900,'2025-10-11 16:00:00','3','Oficina','salida',0),
(85,25.6357360,-100.2781900,'2025-10-10 19:00:00','3','Oficina','salida',0),
(86,25.6356990,-100.2781988,'2025-10-13 18:10:19','1','Oficina','salida',0),
(87,25.6357360,-100.2781900,'2025-10-11 07:00:00','2','Oficina','entrada',0),
(88,25.6357360,-100.2781900,'2025-10-13 07:00:00','2','Oficina','entrada',0),
(89,25.6357360,-100.2781900,'2025-10-14 07:00:00','2','Oficina','entrada',0),
(90,25.6357360,-100.2781900,'2025-10-15 07:00:00','2','Oficina','entrada',0),
(91,25.6357360,-100.2781900,'2025-10-16 07:00:00','2','Oficina','entrada',0),
(92,25.6357360,-100.2781900,'2025-10-17 07:00:00','2','Oficina','entrada',0),
(93,25.6357360,-100.2781900,'2025-10-17 16:00:00','2','Oficina','salida',0),
(94,25.6357360,-100.2781900,'2025-10-16 16:00:00','2','Oficina','salida',0),
(95,25.6357360,-100.2781900,'2025-10-15 16:00:00','2','Oficina','salida',0),
(96,25.6387138,-100.2861700,'2025-10-17 12:49:10','1','Oficina','entrada',0);
/*!40000 ALTER TABLE `asistencia` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER trg_asistencia_tipo
BEFORE INSERT ON asistencia
FOR EACH ROW
BEGIN
    DECLARE conteo INT;

    -- Contar registros de ese trabajador en el mismo día
    SELECT COUNT(*) INTO conteo
    FROM asistencia
    WHERE DATE(fecha) = DATE(NEW.fecha)
      AND trabajador_id = NEW.trabajador_id;

    -- Si no hay registros previos -> es ENTRADA
    IF conteo = 0 THEN
        SET NEW.tipo = 'entrada';
    ELSE
        -- Si ya hay registros -> es SALIDA
        SET NEW.tipo = 'salida';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `bajas`
--

DROP TABLE IF EXISTS `bajas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bajas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_trabajador` int(11) NOT NULL,
  `causa` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `comentario` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bajas`
--

LOCK TABLES `bajas` WRITE;
/*!40000 ALTER TABLE `bajas` DISABLE KEYS */;
/*!40000 ALTER TABLE `bajas` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `after_insert_bajas` 
AFTER INSERT ON `bajas` 
FOR EACH ROW 
BEGIN
    UPDATE trabajadores
    SET estado = 'Inactivo'
    WHERE id = NEW.id_trabajador;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonos`
--

LOCK TABLES `bonos` WRITE;
/*!40000 ALTER TABLE `bonos` DISABLE KEYS */;
INSERT INTO `bonos` VALUES
(10,2,27.00,'2025-10-13','1000','Desempeño');
/*!40000 ALTER TABLE `bonos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancelaciones`
--

DROP TABLE IF EXISTS `cancelaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancelaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_factura` int(11) NOT NULL,
  `uuid` varchar(50) NOT NULL,
  `motivo` varchar(2) NOT NULL,
  `folio_sustituye` varchar(100) DEFAULT NULL,
  `fecha_solicitud` datetime DEFAULT current_timestamp(),
  `estatus_sat` varchar(50) DEFAULT NULL,
  `acuse_xml` text DEFAULT NULL,
  `mensaje_respuesta` text DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancelaciones`
--

LOCK TABLES `cancelaciones` WRITE;
/*!40000 ALTER TABLE `cancelaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `cancelaciones` ENABLE KEYS */;
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
  `rfc` varchar(13) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `fecha_alta` timestamp NULL DEFAULT current_timestamp(),
  `uso_cfdi` varchar(5) DEFAULT NULL,
  `regimen_fiscal` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES
(1,'TRANSPORTADORES INDUSTRIALES DE MEXICO','TIM861224JW4','rafael@transimex.com.mx','8123873054','México','Nuevo Leon','Monterrey','67180','2025-09-04 18:18:46','G03','601'),
(50,'CORPORACION SIERRA MADRE','CSM880211A61','','8123873054','México','Nuevo Leon','Monterrey','66368','2025-09-05 00:22:26','G03','601'),
(51,'CASTILLO GARZA Y ASOCIADOS','CGA960627449','','8123873054','México','Tamaulipas','matamoros','87350','2025-09-05 00:23:43','G03','601'),
(52,'PÚBLICO EN GENERAL','XAXX010101000','','','','','','64860','2025-09-05 00:29:02','S01','616'),
(54,'Rafael Garza Castillo','GACR0202086G8','rafael@growtech-solutions.com.mx','8123873054','México','Nuevo Leon','Monterrey','64860','2025-09-25 22:08:18','G03','626'),
(55,'SUMINISTROS INDUSTRIALES MODERNOS','SIM081113M28','','','México','Nuevo Leon','Monterrey','64103','2025-10-10 15:53:53','G03','601');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes_respuestas`
--

DROP TABLE IF EXISTS `clientes_respuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes_respuestas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ot` varchar(50) NOT NULL,
  `responsable` varchar(100) NOT NULL,
  `atencion` varchar(100) DEFAULT NULL,
  `calidad` varchar(100) DEFAULT NULL,
  `tiempos` int(11) DEFAULT NULL,
  `comentario` text DEFAULT NULL,
  `fecha_registro` timestamp NULL DEFAULT current_timestamp(),
  `alcance` int(2) DEFAULT NULL,
  `precios` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes_respuestas`
--

LOCK TABLES `clientes_respuestas` WRITE;
/*!40000 ALTER TABLE `clientes_respuestas` DISABLE KEYS */;
INSERT INTO `clientes_respuestas` VALUES
(2,'1004','Rafael Garza','10','7',8,'Prueba','2025-10-13 18:10:11',9,10),
(3,'1000','Rafael Garza','10','10',10,'Excelente servicio, atencion inmediata','2025-10-13 19:22:06',10,10);
/*!40000 ALTER TABLE `clientes_respuestas` ENABLE KEYS */;
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
  `moneda` varchar(50) DEFAULT 'MXN',
  `comentarios` text DEFAULT NULL,
  `cotizacion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES
(21,1000,'Rafael Garza',NULL,5.00,'Cable alta tension 50 mts','pares',10.00,'MXN','','+IVA'),
(22,1000,'Rafael Garza',NULL,3.00,'soldadura 3.15 1/8','kg',150.00,'MXN','','+IVA'),
(23,1000,'Rafael Garza',NULL,7.00,'Instalacion mesas','Servicios',223.00,'MXN','','+IVA'),
(24,1000,'Rafael Garza',NULL,23.00,'Agua refinada','Lts',200.00,'MXN','','+IVA'),
(25,1000,'Rafael Garza',6,2.00,'anticongelante','caja',NULL,'MXN','',NULL),
(26,1000,'Rafael Garza',1,5.00,'electrodos','pzs',3000.00,'MXN','','+IVA'),
(27,1000,'Rafael Garza',1,4.00,'soldaduras','caja',250.00,'MXN','','+IVA'),
(28,1000,'Rafael Garza',1,7.00,'instalacion','Servicios',150.00,'MXN','','+IVA'),
(29,1001,'Rafael Garza',2,2.00,'palas','caja',200.00,'MXN','','+IVA'),
(30,1002,'Rafael Garza',3,1.00,'Vuelta','pzs',12000.00,'MXN','','+IVA');
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
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `after_compras_update` 
AFTER UPDATE ON `compras`
FOR EACH ROW
BEGIN
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `after_update_consumibles` AFTER UPDATE ON `consumibles` FOR EACH ROW BEGIN
    IF NEW.cantidad <> OLD.cantidad THEN
        INSERT INTO `historial_consumibles` (
            id_consumible, 
            cambio, 
            tipo, 
            fecha, 
            descripcion
        )
        VALUES (
            NEW.id,
            ABS(NEW.cantidad - OLD.cantidad),
            IF(NEW.cantidad > OLD.cantidad, 'entrada', 'salida'),
            NOW(),
            CONCAT(
                'Cambio de ', OLD.cantidad, ' a ', NEW.cantidad,
                ' en el consumible "', NEW.nombre, '"'
            ),
            CURRENT_USER()
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronograma`
--

LOCK TABLES `cronograma` WRITE;
/*!40000 ALTER TABLE `cronograma` DISABLE KEYS */;
INSERT INTO `cronograma` VALUES
(20,1,1,0,3.00,'2025-10-13','2025-10-16'),
(21,2,1,32,3.00,'2025-10-29','2025-10-31'),
(22,25,1,20,7.00,'2025-10-17','2025-10-23'),
(23,1,2,0,3.00,'2025-10-13','2025-10-16'),
(24,2,2,31,3.00,'2025-10-26','2025-10-28'),
(25,1,3,0,3.00,'2025-10-13','2025-10-16'),
(26,2,3,33,3.00,'2025-10-30','2025-11-01'),
(27,1,4,0,3.00,'2025-10-13','2025-10-16'),
(28,2,4,34,3.00,'2025-10-28','2025-10-30'),
(29,27,3,35,7.00,'2025-10-19','2025-10-25'),
(30,27,4,27,7.00,'2025-10-17','2025-10-23'),
(31,26,2,23,9.00,'2025-10-17','2025-10-25'),
(32,30,1,36,2.00,'2025-10-27','2025-10-28'),
(33,28,3,29,4.00,'2025-10-26','2025-10-29'),
(34,30,4,30,4.00,'2025-10-24','2025-10-27'),
(35,29,3,25,2.00,'2025-10-17','2025-10-18'),
(36,29,1,22,3.00,'2025-10-24','2025-10-26');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronograma_fijo`
--

LOCK TABLES `cronograma_fijo` WRITE;
/*!40000 ALTER TABLE `cronograma_fijo` DISABLE KEYS */;
INSERT INTO `cronograma_fijo` VALUES
(7,1,29,'2025-10-13','2025-10-16');
/*!40000 ALTER TABLE `cronograma_fijo` ENABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encargado`
--

LOCK TABLES `encargado` WRITE;
/*!40000 ALTER TABLE `encargado` DISABLE KEYS */;
INSERT INTO `encargado` VALUES
(28,25,1,8.50,1,'2025-10-13',NULL,NULL),
(29,26,1,98.00,0,'2025-10-13',NULL,NULL),
(30,25,3,23.00,0,'2025-10-13',NULL,NULL),
(31,27,4,72.00,0,'2025-10-13',NULL,NULL),
(32,28,2,23.00,0,'2025-10-13',NULL,NULL),
(34,28,1,8.50,0,'2025-10-14',NULL,NULL);
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
-- Table structure for table `factura_detalles`
--

DROP TABLE IF EXISTS `factura_detalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura_detalles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_factura` int(11) DEFAULT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `cantidad` decimal(10,2) DEFAULT NULL,
  `valor_unitario` decimal(15,6) DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `retencion_iva` decimal(30,4) DEFAULT NULL,
  `retencion_isr` decimal(30,4) DEFAULT NULL,
  `ieps` decimal(30,4) DEFAULT NULL,
  `descuento` decimal(30,4) DEFAULT NULL,
  `iva` decimal(30,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_factura` (`id_factura`),
  KEY `producto_id` (`producto_id`),
  CONSTRAINT `factura_detalles_ibfk_1` FOREIGN KEY (`id_factura`) REFERENCES `facturas` (`id`),
  CONSTRAINT `factura_detalles_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_detalles`
--

LOCK TABLES `factura_detalles` WRITE;
/*!40000 ALTER TABLE `factura_detalles` DISABLE KEYS */;
INSERT INTO `factura_detalles` VALUES
(53,44,6,1.00,14113.150000,14689.43,10.6667,1.2500,0.0000,0.0000,16.0000),
(55,46,6,1.00,14700.000000,15300.25,10.6667,1.2500,0.0000,0.0000,16.0000),
(56,47,7,1.00,55000.000000,57245.81,10.6667,1.2500,0.0000,0.0000,16.0000),
(57,48,6,1.00,14700.000000,15300.25,10.6667,1.2500,0.0000,0.0000,16.0000),
(58,49,6,1.00,14700.000000,15300.25,10.6667,1.2500,0.0000,0.0000,16.0000);
/*!40000 ALTER TABLE `factura_detalles` ENABLE KEYS */;
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
  `subtotal` decimal(30,4) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `moneda` varchar(10) DEFAULT NULL,
  `tipo_de_cambio` decimal(10,4) DEFAULT NULL,
  `valor_pesos` decimal(10,2) DEFAULT NULL,
  `alta_sistema` date DEFAULT NULL,
  `responsable` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `forma_pago` varchar(4) NOT NULL DEFAULT '03',
  `metodo_pago` varchar(50) DEFAULT NULL,
  `xml_timbrado` longtext DEFAULT NULL,
  `portal` date DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `exportacion` varchar(11) DEFAULT NULL,
  `acuse` longtext DEFAULT NULL,
  `ret_iva` decimal(10,2) DEFAULT NULL,
  `ret_isr` decimal(10,2) DEFAULT NULL,
  `iva` decimal(10,2) DEFAULT NULL,
  `ieps` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES
(44,1,1,14113.1500,14689.43,'MXN',1.0000,14689.43,'2024-09-03','Rafael Garza','Avance 25%','03','PUE','<cfdi:Comprobante xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd\" Version=\"4.0\" Fecha=\"2024-09-03T23:41:26\" Sello=\"gZopDNn55105VyorW5H4FzYAtfIzRUXlLU5Rx02+DlpfVeZzSgNrz2OiQkDjPQGMaA220pEYZuf7wJTftgrRqdxxadwnmyY0NUCv7puxD4rZXgjDVaTkZ2Ly4NnUjQAbwKqJL/PVKAqfHfehfpqd571C3R3JJuw5CaMUWg7xXdCjfJmtkTHe67THJAdq6xwTfvhwTfXPkPn2Bo/T2XXDK6nS7QBAvGm2qDtelqGMIn+v6hip9Taxpxje4+v5y1s+cXNFWcWf721GUKo7PQoH5x55oUa87vDa8BYOjeV9w15DIxTB0hGkC9tM41Ai+LBwvVj47zZRXkorTByDS7a0Nw==\" FormaPago=\"03\" NoCertificado=\"00001000000709028763\" Certificado=\"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\" SubTotal=\"14113.15\" Moneda=\"MXN\" Total=\"14689.43\" TipoDeComprobante=\"I\" Exportacion=\"01\" MetodoPago=\"PUE\" LugarExpedicion=\"64860\">\r\n<cfdi:Emisor Rfc=\"GACR0202086G8\" Nombre=\"RAFAEL GARZA CASTILLO\" RegimenFiscal=\"626\"/>\r\n<cfdi:Receptor Rfc=\"TIM861224JW4\" Nombre=\"TRANSPORTADORES INDUSTRIALES DE MEXICO\" DomicilioFiscalReceptor=\"67180\" RegimenFiscalReceptor=\"601\" UsoCFDI=\"G03\"/>\r\n<cfdi:Conceptos>\r\n<cfdi:Concepto ClaveProdServ=\"81161501\" Cantidad=\"1.00\" ClaveUnidad=\"A9\" Unidad=\"Tarífa\" Descripcion=\"Servicios profesionales de desarollo de gestor de produccion\" ValorUnitario=\"14113.15\" Importe=\"14113.15\" ObjetoImp=\"02\">\r\n<cfdi:Impuestos>\r\n<cfdi:Traslados>\r\n<cfdi:Traslado Base=\"14113.15\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.160000\" Importe=\"2258.10\"/>\r\n</cfdi:Traslados>\r\n<cfdi:Retenciones>\r\n<cfdi:Retencion Base=\"14113.15\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.106667\" Importe=\"1505.41\"/>\r\n<cfdi:Retencion Base=\"14113.15\" Impuesto=\"001\" TipoFactor=\"Tasa\" TasaOCuota=\"0.012500\" Importe=\"176.41\"/>\r\n</cfdi:Retenciones>\r\n</cfdi:Impuestos>\r\n</cfdi:Concepto>\r\n</cfdi:Conceptos>\r\n<cfdi:Impuestos TotalImpuestosTrasladados=\"2258.10\" TotalImpuestosRetenidos=\"1681.82\">\r\n<cfdi:Retenciones>\r\n<cfdi:Retencion Impuesto=\"002\" Importe=\"1505.41\"/>\r\n<cfdi:Retencion Impuesto=\"001\" Importe=\"176.41\"/>\r\n</cfdi:Retenciones>\r\n<cfdi:Traslados>\r\n<cfdi:Traslado Base=\"14113.15\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.160000\" Importe=\"2258.10\"/>\r\n</cfdi:Traslados>\r\n</cfdi:Impuestos>\r\n<cfdi:Complemento>\r\n<tfd:TimbreFiscalDigital xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" Version=\"1.1\" UUID=\"966D11EC-5F61-4711-A4AD-676C5D65D70C\" FechaTimbrado=\"2024-09-03T23:42:12\" RfcProvCertif=\"SAT970701NN3\" SelloCFD=\"gZopDNn55105VyorW5H4FzYAtfIzRUXlLU5Rx02+DlpfVeZzSgNrz2OiQkDjPQGMaA220pEYZuf7wJTftgrRqdxxadwnmyY0NUCv7puxD4rZXgjDVaTkZ2Ly4NnUjQAbwKqJL/PVKAqfHfehfpqd571C3R3JJuw5CaMUWg7xXdCjfJmtkTHe67THJAdq6xwTfvhwTfXPkPn2Bo/T2XXDK6nS7QBAvGm2qDtelqGMIn+v6hip9Taxpxje4+v5y1s+cXNFWcWf721GUKo7PQoH5x55oUa87vDa8BYOjeV9w15DIxTB0hGkC9tM41Ai+LBwvVj47zZRXkorTByDS7a0Nw==\" NoCertificadoSAT=\"00001000000705250068\" SelloSAT=\"BU17RS7fZGR69qBJLrZ9Sf8/XE35AuJ+lqZVUgnv7CEDX0AkygOAn7cMFyrb/3u2V/4OcgnPdLz3+TEsUqM2j64cwjDeMgDAtQfk0HpeJjOc2gZq13AS1X2DnSLbcYa1mo6huTPYqgZaEzSVMUY5r3SHiiI/7o4YmiVdJhwdBXvKJsazvrWJx30wc4tBlX6USBGK77rRfg6fICqRdlK0l2jK6JMQELcwmy4iTBQx7T9134hlALXqiJUvaCsjyAh+aHwOrVJbQYtinvIYapl0KSwjckRN1VSsfC3/UW2e/8VlhHVSb3IogNIbMPM/2GSE0HTDDLUx0idHMGfTY5AcHw==\"/>\r\n</cfdi:Complemento>\r\n</cfdi:Comprobante>','2024-09-03','2024-09-03','01',NULL,1505.41,176.41,2258.10,0.00),
(46,2,1,14700.0000,15300.25,'MXN',1.0000,15300.25,'2024-10-03','Rafael Garza','Avance 25%','03','PUE','<cfdi:Comprobante xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd\" Version=\"4.0\" Fecha=\"2024-10-03T18:11:36\" Sello=\"Nc3vt+KyCEuMF+Sb7kea4xmzv+mpizDu70YDvguGB/T80yqVscg7Ah+YbWrGOmVnJrHFl1dEA8yg/awzOOMm4I9xfq3MpgBnI4APyqrUkIKZ8KOv1X0/rL4kOqwnc3m58xtnHyNQqNe6xKzWQ9nM/cdzNhF5+U0FoGaQqbH/ER6cuIgzeUuKKc2K4+YZB6hmmNesnfy1OzD8iNHNTeGGJgL34M7mTuC08cc62WrKLp7evEaXAkSZ2KZX+D/LwlSie7Q9GbSBYWzzjUooGeE3pcWUFq7zDJHwgN1GJ4HY5oWG7M0p8W5h2eJwYMmvALt0K+qNrMWZ1PC8wNQU2nsa4Q==\" FormaPago=\"03\" NoCertificado=\"00001000000709028763\" Certificado=\"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\" SubTotal=\"14700.00\" Moneda=\"MXN\" Total=\"15300.25\" TipoDeComprobante=\"I\" Exportacion=\"01\" MetodoPago=\"PUE\" LugarExpedicion=\"64860\">\r\n<cfdi:Emisor Rfc=\"GACR0202086G8\" Nombre=\"RAFAEL GARZA CASTILLO\" RegimenFiscal=\"626\"/>\r\n<cfdi:Receptor Rfc=\"TIM861224JW4\" Nombre=\"TRANSPORTADORES INDUSTRIALES DE MEXICO\" DomicilioFiscalReceptor=\"67180\" RegimenFiscalReceptor=\"601\" UsoCFDI=\"G03\"/>\r\n<cfdi:Conceptos>\r\n<cfdi:Concepto ClaveProdServ=\"81161501\" Cantidad=\"1.00\" ClaveUnidad=\"A9\" Unidad=\"Tarífa\" Descripcion=\"Servicios profesionales de desarollo de gestor de produccion\" ValorUnitario=\"14700\" Importe=\"14700.00\" ObjetoImp=\"02\">\r\n<cfdi:Impuestos>\r\n<cfdi:Traslados>\r\n<cfdi:Traslado Base=\"14700.00\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.160000\" Importe=\"2352.00\"/>\r\n</cfdi:Traslados>\r\n<cfdi:Retenciones>\r\n<cfdi:Retencion Base=\"14700\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.106667\" Importe=\"1568.00\"/>\r\n<cfdi:Retencion Base=\"14700\" Impuesto=\"001\" TipoFactor=\"Tasa\" TasaOCuota=\"0.012500\" Importe=\"183.75\"/>\r\n</cfdi:Retenciones>\r\n</cfdi:Impuestos>\r\n</cfdi:Concepto>\r\n</cfdi:Conceptos>\r\n<cfdi:Impuestos TotalImpuestosTrasladados=\"2352.00\" TotalImpuestosRetenidos=\"1751.75\">\r\n<cfdi:Retenciones>\r\n<cfdi:Retencion Impuesto=\"002\" Importe=\"1568.00\"/>\r\n<cfdi:Retencion Impuesto=\"001\" Importe=\"183.75\"/>\r\n</cfdi:Retenciones>\r\n<cfdi:Traslados>\r\n<cfdi:Traslado Base=\"14700.00\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.160000\" Importe=\"2352.00\"/>\r\n</cfdi:Traslados>\r\n</cfdi:Impuestos>\r\n<cfdi:Complemento>\r\n<tfd:TimbreFiscalDigital xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" Version=\"1.1\" UUID=\"182FE86F-EE32-4D1F-8BE5-02584A9C1B95\" FechaTimbrado=\"2024-10-03T18:12:11\" RfcProvCertif=\"SAT970701NN3\" SelloCFD=\"Nc3vt+KyCEuMF+Sb7kea4xmzv+mpizDu70YDvguGB/T80yqVscg7Ah+YbWrGOmVnJrHFl1dEA8yg/awzOOMm4I9xfq3MpgBnI4APyqrUkIKZ8KOv1X0/rL4kOqwnc3m58xtnHyNQqNe6xKzWQ9nM/cdzNhF5+U0FoGaQqbH/ER6cuIgzeUuKKc2K4+YZB6hmmNesnfy1OzD8iNHNTeGGJgL34M7mTuC08cc62WrKLp7evEaXAkSZ2KZX+D/LwlSie7Q9GbSBYWzzjUooGeE3pcWUFq7zDJHwgN1GJ4HY5oWG7M0p8W5h2eJwYMmvALt0K+qNrMWZ1PC8wNQU2nsa4Q==\" NoCertificadoSAT=\"00001000000705250068\" SelloSAT=\"TOnU/EZxaq6ZBUazMytZeiNCKhv1Ww4lPJS0bnukUoVU/4seAXfrzBkCKex9FRxoX/j9z/xXtdPWGDHKFuIhmhT4Fpc3R9Of9tfr11LUH2siDF96Txiix4OfHqlM4w1eNBhAFBcNMESggUAXEUP0FY+0Q50MGhJ3NlJFIYx4P98JE5c04ul0/pORMG3A/8aV9VhjeopohXzhcOklW+uhZb+gIGyHAb6kOWy4+xf4D/aNswmtoxZgMDZi3DkIUPlbb+ff+NjHboc8nq1Xl6IdhDxIq8zsP1j8PgFPiYgTpr4bAlIbV5wcVeDDdJd2YqLh0TsV6CqUrR8LyMwqYUO94w==\"/>\r\n</cfdi:Complemento>\r\n</cfdi:Comprobante>','2024-10-03','2024-10-03','01',NULL,1568.00,183.75,2352.00,0.00),
(47,3,5,55000.0000,57245.81,'MXN',1.0000,57245.81,'2024-10-28','Rafael Garza','Bono 1','03','PUE','<cfdi:Comprobante xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd\" Version=\"4.0\" Fecha=\"2024-10-28T16:30:45\" Sello=\"kPX4xRgOqUyZ3lB1vB0qFY9/Kg7ouJ2He/T4+Nspc7s7WGpLmKmVUFjtO7VJb3jJo6R0ZXbd+dsM5pIO7L2Ibflq3aVbCIKapgrvqcMx0ssfoEQVuh6mdtHHsrW3opV5I2yOnNN3BlbD79cp30PXiCFivJUDAkcvjQcnZJr8G6plkHQOSimMU98e6FkxMEIc9hHcj86J+Q9g0PZErXvu+6YDIX4UusvRhyHimwWJp5Hj91E/59nWmebnbFL8ZTLbtK93paCVlOGVN2I05GEjs9gKbfECsnIJxmXCJ4X8nR1C99WpDv8quNR0bsIx8Sl5+a1Fdo4FjPrB3wZN0yrnYg==\" FormaPago=\"99\" NoCertificado=\"00001000000709028763\" Certificado=\"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\" SubTotal=\"55000.00\" Moneda=\"MXN\" Total=\"57245.82\" TipoDeComprobante=\"I\" Exportacion=\"01\" MetodoPago=\"PPD\" LugarExpedicion=\"64860\">\r\n<cfdi:Emisor Rfc=\"GACR0202086G8\" Nombre=\"RAFAEL GARZA CASTILLO\" RegimenFiscal=\"626\"/>\r\n<cfdi:Receptor Rfc=\"CSM880211A61\" Nombre=\"CORPORACION SIERRA MADRE\" DomicilioFiscalReceptor=\"66000\" RegimenFiscalReceptor=\"601\" UsoCFDI=\"G03\"/>\r\n<cfdi:Conceptos>\r\n<cfdi:Concepto ClaveProdServ=\"80101500\" NoIdentificacion=\"80101500\" Cantidad=\"1.00\" ClaveUnidad=\"E48\" Unidad=\"Unidad de servicio\" Descripcion=\"Servicios profesionales y consultoría para el departamento de ventas\" ValorUnitario=\"55000\" Importe=\"55000.00\" ObjetoImp=\"02\">\r\n<cfdi:Impuestos>\r\n<cfdi:Traslados>\r\n<cfdi:Traslado Base=\"55000.00\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.160000\" Importe=\"8800.00\"/>\r\n</cfdi:Traslados>\r\n<cfdi:Retenciones>\r\n<cfdi:Retencion Base=\"55000\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.106667\" Importe=\"5866.68\"/>\r\n<cfdi:Retencion Base=\"55000.00\" Impuesto=\"001\" TipoFactor=\"Tasa\" TasaOCuota=\"0.012500\" Importe=\"687.50\"/>\r\n</cfdi:Retenciones>\r\n</cfdi:Impuestos>\r\n</cfdi:Concepto>\r\n</cfdi:Conceptos>\r\n<cfdi:Impuestos TotalImpuestosTrasladados=\"8800.00\" TotalImpuestosRetenidos=\"6554.18\">\r\n<cfdi:Retenciones>\r\n<cfdi:Retencion Impuesto=\"002\" Importe=\"5866.68\"/>\r\n<cfdi:Retencion Impuesto=\"001\" Importe=\"687.50\"/>\r\n</cfdi:Retenciones>\r\n<cfdi:Traslados>\r\n<cfdi:Traslado Base=\"55000.00\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.160000\" Importe=\"8800.00\"/>\r\n</cfdi:Traslados>\r\n</cfdi:Impuestos>\r\n<cfdi:Complemento>\r\n<tfd:TimbreFiscalDigital xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" Version=\"1.1\" UUID=\"41613DBA-11E3-4E9C-8873-1C0F631FB1FE\" FechaTimbrado=\"2024-10-28T16:31:07\" RfcProvCertif=\"SAT970701NN3\" SelloCFD=\"kPX4xRgOqUyZ3lB1vB0qFY9/Kg7ouJ2He/T4+Nspc7s7WGpLmKmVUFjtO7VJb3jJo6R0ZXbd+dsM5pIO7L2Ibflq3aVbCIKapgrvqcMx0ssfoEQVuh6mdtHHsrW3opV5I2yOnNN3BlbD79cp30PXiCFivJUDAkcvjQcnZJr8G6plkHQOSimMU98e6FkxMEIc9hHcj86J+Q9g0PZErXvu+6YDIX4UusvRhyHimwWJp5Hj91E/59nWmebnbFL8ZTLbtK93paCVlOGVN2I05GEjs9gKbfECsnIJxmXCJ4X8nR1C99WpDv8quNR0bsIx8Sl5+a1Fdo4FjPrB3wZN0yrnYg==\" NoCertificadoSAT=\"00001000000705250068\" SelloSAT=\"YLE0dDCs9rNuooBlmpOtRgUaVxRrtxhn7nhhpvkxcqu2L8TEOUUQFKXmGL3XoaTtyF1IhA+Yewm03kyV2W9siGRfNhKMVmRO1jr/RsyybrOIW/zmjAIZh8ocexb5ZJeCJNegkiD4/7hg8VPRViPjnAlaJHC2qbdTsYJ2CllVkI5wh9OE4GeQfejbBRCHC7WQAxWKXvfGGg0sXr7rxzSwnpbPkg/Ho9rrubRFgB2bdPUfFS/FusblUkHZhth74tiPI3WNc0V/bqMX/MFkwPHdIP79TkqBspqQIw6XHQWt9TAlvqB5e0oDV26HkmqHp2xNCJRZeunDR9zrmOmSC9/udw==\"/>\r\n</cfdi:Complemento>\r\n</cfdi:Comprobante>','2024-10-28','2024-10-28','01',NULL,5866.69,687.50,8800.00,0.00),
(48,4,1,14700.0000,15300.25,'MXN',1.0000,15300.25,'2024-11-01','Rafael Garza','25% avance','03','PUE','<cfdi:Comprobante xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd\" Version=\"4.0\" Fecha=\"2024-11-01T11:54:49\" Sello=\"avWT9Rcemhhk2TjRwl6May5YwiKHWiR1m094dGktGE7iruXrYWNwB9A5UUBWK91jwss1gJ4OxQFE1jNqlg6eZFf8ytOXrSjQVyRSkiSc1PhLP1M5hyHaGPzwGwGpLzbNlghpS15IydQz1QFFhbV8Ww1CYEgLEWSnCOZZi4cBLbFxKeqD3+VcmPuPqUyCxezhLmDX6J9k0+QE/5eP9kKZZMTWHfHz0E10rjktXADCc/egPLvOFfwuM/57CubrAdWcFFQy8SNXY6nGzB8uPU5t4jMF0KmwaBr+9BeQ3z4+piuzNR0dmo4N66q4uTBc44z7z+AJ1ckiLYZEpuhhTgFhRQ==\" FormaPago=\"03\" NoCertificado=\"00001000000709028763\" Certificado=\"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\" SubTotal=\"14700.00\" Moneda=\"MXN\" Total=\"15300.25\" TipoDeComprobante=\"I\" Exportacion=\"01\" MetodoPago=\"PUE\" LugarExpedicion=\"64860\">\r\n<cfdi:Emisor Rfc=\"GACR0202086G8\" Nombre=\"RAFAEL GARZA CASTILLO\" RegimenFiscal=\"626\"/>\r\n<cfdi:Receptor Rfc=\"TIM861224JW4\" Nombre=\"TRANSPORTADORES INDUSTRIALES DE MEXICO\" DomicilioFiscalReceptor=\"67180\" RegimenFiscalReceptor=\"601\" UsoCFDI=\"G03\"/>\r\n<cfdi:Conceptos>\r\n<cfdi:Concepto ClaveProdServ=\"81161501\" Cantidad=\"1.00\" ClaveUnidad=\"A9\" Unidad=\"Tarífa\" Descripcion=\"Servicios profesionales de desarollo de gestor de produccion\" ValorUnitario=\"14700\" Importe=\"14700.00\" ObjetoImp=\"02\">\r\n<cfdi:Impuestos>\r\n<cfdi:Traslados>\r\n<cfdi:Traslado Base=\"14700.00\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.160000\" Importe=\"2352.00\"/>\r\n</cfdi:Traslados>\r\n<cfdi:Retenciones>\r\n<cfdi:Retencion Base=\"14700\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.106667\" Importe=\"1568.00\"/>\r\n<cfdi:Retencion Base=\"14700\" Impuesto=\"001\" TipoFactor=\"Tasa\" TasaOCuota=\"0.012500\" Importe=\"183.75\"/>\r\n</cfdi:Retenciones>\r\n</cfdi:Impuestos>\r\n</cfdi:Concepto>\r\n</cfdi:Conceptos>\r\n<cfdi:Impuestos TotalImpuestosTrasladados=\"2352.00\" TotalImpuestosRetenidos=\"1751.75\">\r\n<cfdi:Retenciones>\r\n<cfdi:Retencion Impuesto=\"002\" Importe=\"1568.00\"/>\r\n<cfdi:Retencion Impuesto=\"001\" Importe=\"183.75\"/>\r\n</cfdi:Retenciones>\r\n<cfdi:Traslados>\r\n<cfdi:Traslado Base=\"14700.00\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.160000\" Importe=\"2352.00\"/>\r\n</cfdi:Traslados>\r\n</cfdi:Impuestos>\r\n<cfdi:Complemento>\r\n<tfd:TimbreFiscalDigital xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" Version=\"1.1\" UUID=\"CD1376F3-D786-45B9-B56C-185FF99B5856\" FechaTimbrado=\"2024-11-01T11:55:33\" RfcProvCertif=\"SAT970701NN3\" SelloCFD=\"avWT9Rcemhhk2TjRwl6May5YwiKHWiR1m094dGktGE7iruXrYWNwB9A5UUBWK91jwss1gJ4OxQFE1jNqlg6eZFf8ytOXrSjQVyRSkiSc1PhLP1M5hyHaGPzwGwGpLzbNlghpS15IydQz1QFFhbV8Ww1CYEgLEWSnCOZZi4cBLbFxKeqD3+VcmPuPqUyCxezhLmDX6J9k0+QE/5eP9kKZZMTWHfHz0E10rjktXADCc/egPLvOFfwuM/57CubrAdWcFFQy8SNXY6nGzB8uPU5t4jMF0KmwaBr+9BeQ3z4+piuzNR0dmo4N66q4uTBc44z7z+AJ1ckiLYZEpuhhTgFhRQ==\" NoCertificadoSAT=\"00001000000705250068\" SelloSAT=\"fdpvxEsGVG2i5USR2+wSftE8PBviP9pKDmzOWIhoFjWfVUvkXXkBucKdIDypx8+l1Smh249zTjoNqDgqZ6ga7Yh4GUZSOdl7EOYQ3vePF5AyGnAbNk8MGxqrTULxdr6qa9WzTMQ+K29qOY/Ppy/tiLhFEn5tve7xySE/Ml2yoLJ1fykQPAyc8zAfXHmSdhcePP0cCeLTVRqwkbP1KL0+Fsmo2DL5b0pmi+9KTq/2NKJyQPIFa1FAA15Tn3rJu/od2lZgKLP2+KLBe6XrGcbH41XhQfILl46YfQQJxahk8p+KkeNAqeuESTyRCvzRqHbXDiK1Ih1100HwwWgQfsZYaA==\"/>\r\n</cfdi:Complemento>\r\n</cfdi:Comprobante>','2024-11-01','2024-11-01','01',NULL,1568.00,183.75,2352.00,0.00),
(49,5,1,14700.0000,15300.25,'MXN',1.0000,15300.25,'2024-12-05','Rafael Garza','Avance 25%','03','PUE','<cfdi:Comprobante xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd\" Version=\"4.0\" Fecha=\"2024-12-05T13:27:44\" Sello=\"RdGGQdSkUak51KNZv7zN3iLLmvNO3mvg5yPQ390YdgL9VJj9sPu52+dOUsClExmF6/XaNsg3jNOFsazTFwuZMo72DsOJKicet0hDaIejz38SDwWoNujaxTpBT7HyN7dFIihek/5iaZzFGWuwV39Y0vmQvHDfEIKAsYibqc4bqOppxGUGNKPjxjq7cYFbr6MVXltPw7l7V0LcVquvJCHzCrQeQt8z3mn5HkPkozc2ymr25EulKpAYhBoUD7UFEHK706yq45cIfKKGDD4bJsCvu4J4pqURXIDnABAQpi2l6jHovvQvpN8OLHL+ZQXRKQPEgQcvb9r1ysnPbkdaLwbzNA==\" FormaPago=\"03\" NoCertificado=\"00001000000709028763\" Certificado=\"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\" SubTotal=\"14700.00\" Moneda=\"MXN\" Total=\"15300.25\" TipoDeComprobante=\"I\" Exportacion=\"01\" MetodoPago=\"PUE\" LugarExpedicion=\"64860\">\r\n<cfdi:Emisor Rfc=\"GACR0202086G8\" Nombre=\"RAFAEL GARZA CASTILLO\" RegimenFiscal=\"626\"/>\r\n<cfdi:Receptor Rfc=\"TIM861224JW4\" Nombre=\"TRANSPORTADORES INDUSTRIALES DE MEXICO\" DomicilioFiscalReceptor=\"67180\" RegimenFiscalReceptor=\"601\" UsoCFDI=\"G03\"/>\r\n<cfdi:Conceptos>\r\n<cfdi:Concepto ClaveProdServ=\"81161501\" Cantidad=\"1.00\" ClaveUnidad=\"A9\" Unidad=\"Tarífa\" Descripcion=\"Servicios profesionales de desarollo de gestor de produccion\" ValorUnitario=\"14700\" Importe=\"14700.00\" ObjetoImp=\"02\">\r\n<cfdi:Impuestos>\r\n<cfdi:Traslados>\r\n<cfdi:Traslado Base=\"14700.00\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.160000\" Importe=\"2352.00\"/>\r\n</cfdi:Traslados>\r\n<cfdi:Retenciones>\r\n<cfdi:Retencion Base=\"14700\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.106667\" Importe=\"1568.00\"/>\r\n<cfdi:Retencion Base=\"14700.00\" Impuesto=\"001\" TipoFactor=\"Tasa\" TasaOCuota=\"0.012500\" Importe=\"183.75\"/>\r\n</cfdi:Retenciones>\r\n</cfdi:Impuestos>\r\n</cfdi:Concepto>\r\n</cfdi:Conceptos>\r\n<cfdi:Impuestos TotalImpuestosTrasladados=\"2352.00\" TotalImpuestosRetenidos=\"1751.75\">\r\n<cfdi:Retenciones>\r\n<cfdi:Retencion Impuesto=\"002\" Importe=\"1568.00\"/>\r\n<cfdi:Retencion Impuesto=\"001\" Importe=\"183.75\"/>\r\n</cfdi:Retenciones>\r\n<cfdi:Traslados>\r\n<cfdi:Traslado Base=\"14700.00\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.160000\" Importe=\"2352.00\"/>\r\n</cfdi:Traslados>\r\n</cfdi:Impuestos>\r\n<cfdi:Complemento>\r\n<tfd:TimbreFiscalDigital xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" Version=\"1.1\" UUID=\"E91A8561-FB9B-47EE-941E-B9336D5BF1A1\" FechaTimbrado=\"2024-12-05T13:28:09\" RfcProvCertif=\"SAT970701NN3\" SelloCFD=\"RdGGQdSkUak51KNZv7zN3iLLmvNO3mvg5yPQ390YdgL9VJj9sPu52+dOUsClExmF6/XaNsg3jNOFsazTFwuZMo72DsOJKicet0hDaIejz38SDwWoNujaxTpBT7HyN7dFIihek/5iaZzFGWuwV39Y0vmQvHDfEIKAsYibqc4bqOppxGUGNKPjxjq7cYFbr6MVXltPw7l7V0LcVquvJCHzCrQeQt8z3mn5HkPkozc2ymr25EulKpAYhBoUD7UFEHK706yq45cIfKKGDD4bJsCvu4J4pqURXIDnABAQpi2l6jHovvQvpN8OLHL+ZQXRKQPEgQcvb9r1ysnPbkdaLwbzNA==\" NoCertificadoSAT=\"00001000000705250068\" SelloSAT=\"hQJCjWP+NpGF4Kco1CkxZtcteA6bTjAL7ftlkU+IzQnqEqMLnhdVeaHPmoNu9k0yXT40diMpSA0AvOJsWuv3oBkLjifT7nXBZ4iZTH83UNeSngVgQnAU97OQru87XKdzKoqcfDBSPIF5RFp6I2NYecqKsRBecNwzkwn1O4MceFR05po0nsbJsJnGfPZjAiRNjsywzQOKMG/7NTOIPxg+QPDH9+FU3GtFQuMrsGiWQV/U3b6o/cocJS/4hJJdQ5vRv94EQMnpt7uquxH92asvYPz+BtmGdLby4R2nQBJSMsmFDuffOxV+BYp7YyZywTiZR5tw0bZtMfkr7OyyzadsQA==\"/>\r\n</cfdi:Complemento>\r\n</cfdi:Comprobante>','2024-12-05','2024-12-05','01',NULL,1568.00,183.75,2352.00,0.00),
(51,6,4,10722.2600,11160.08,'MXN',1.0000,11160.08,'2025-06-05',NULL,'factura 100%','03','PUE','﻿<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<cfdi:Comprobante xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd\" Version=\"4.0\" Fecha=\"2025-06-05T17:11:40\" Sello=\"DKYitOZSEUeGcV1KYR5qm8d++ZIKww4u9X7oGZ8g3p2ss6KHnO9UzvqCzVqoDWgtSqKEd2J3HxbgsgBcPgz382rPHwIS4DAfZ/gLjX2FwWpm47qYLF4YaCddFYMQ5uoIcwPfGH7pu5zqXBAwmBiHzNoaltJyT4THKpJ8b+C/y3TEIuYX6cqaWl4nOLJhpf3dyWR3KJRqvTWCUf6Mkwedri109WrfZmeZOOaXmNTqogkRxDlS14xXXYrmEKhRtFXUJfZKlaJG2e64QkCPVazHHYqgLCOI+Y2taC5r/CDtzI/piyzPO4zidhV+z2For/bJyhH0GpuaLh55fmkQoLtxxw==\" FormaPago=\"03\" NoCertificado=\"00001000000709028763\" Certificado=\"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\" SubTotal=\"10722.26\" Moneda=\"MXN\" Total=\"11160.08\" TipoDeComprobante=\"I\" Exportacion=\"01\" MetodoPago=\"PUE\" LugarExpedicion=\"64860\" xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">\n  <cfdi:Emisor Rfc=\"GACR0202086G8\" Nombre=\"RAFAEL GARZA CASTILLO\" RegimenFiscal=\"626\" />\n  <cfdi:Receptor Rfc=\"CGA960627449\" Nombre=\"CASTILLO GARZA Y ASOCIADOS\" DomicilioFiscalReceptor=\"87350\" RegimenFiscalReceptor=\"601\" UsoCFDI=\"G03\" />\n  <cfdi:Conceptos>\n    <cfdi:Concepto ClaveProdServ=\"81161501\" Cantidad=\"1.00\" ClaveUnidad=\"A9\" Unidad=\"Tarífa\" Descripcion=\"Servicios profesionales de desarollo de gestor de produccion\" ValorUnitario=\"10722.26\" Importe=\"10722.260000\" ObjetoImp=\"02\">\n      <cfdi:Impuestos>\n        <cfdi:Traslados>\n          <cfdi:Traslado Base=\"10722.260000\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.160000\" Importe=\"1715.561600\" />\n        </cfdi:Traslados>\n        <cfdi:Retenciones>\n          <cfdi:Retencion Base=\"10722.260000\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.106667\" Importe=\"1143.711307\" />\n          <cfdi:Retencion Base=\"10722.260000\" Impuesto=\"001\" TipoFactor=\"Tasa\" TasaOCuota=\"0.012500\" Importe=\"134.028250\" />\n        </cfdi:Retenciones>\n      </cfdi:Impuestos>\n    </cfdi:Concepto>\n  </cfdi:Conceptos>\n  <cfdi:Impuestos TotalImpuestosTrasladados=\"1715.56\" TotalImpuestosRetenidos=\"1277.74\">\n    <cfdi:Retenciones>\n      <cfdi:Retencion Impuesto=\"002\" Importe=\"1143.71\" />\n      <cfdi:Retencion Impuesto=\"001\" Importe=\"134.03\" />\n    </cfdi:Retenciones>\n    <cfdi:Traslados>\n      <cfdi:Traslado Base=\"10722.26\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.160000\" Importe=\"1715.56\" />\n    </cfdi:Traslados>\n  </cfdi:Impuestos>\n  <cfdi:Complemento>\n    <tfd:TimbreFiscalDigital xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" Version=\"1.1\" UUID=\"83546B42-A611-4BE2-9885-BEA0229F29BC\" FechaTimbrado=\"2025-06-05T17:12:06\" RfcProvCertif=\"SAT970701NN3\" SelloCFD=\"DKYitOZSEUeGcV1KYR5qm8d++ZIKww4u9X7oGZ8g3p2ss6KHnO9UzvqCzVqoDWgtSqKEd2J3HxbgsgBcPgz382rPHwIS4DAfZ/gLjX2FwWpm47qYLF4YaCddFYMQ5uoIcwPfGH7pu5zqXBAwmBiHzNoaltJyT4THKpJ8b+C/y3TEIuYX6cqaWl4nOLJhpf3dyWR3KJRqvTWCUf6Mkwedri109WrfZmeZOOaXmNTqogkRxDlS14xXXYrmEKhRtFXUJfZKlaJG2e64QkCPVazHHYqgLCOI+Y2taC5r/CDtzI/piyzPO4zidhV+z2For/bJyhH0GpuaLh55fmkQoLtxxw==\" NoCertificadoSAT=\"00001000000705250068\" SelloSAT=\"WlpFK1KDLt7DD17/h4cSvLk/1+JmWq6clC672J53dFXVKt0lms6LTMVRAK6EA6euKS8jZONU+OiMYNbGhfjByDdg45CFlqtt1BO0qUeFI+X7s5sIK/tvO/TJHkzqc93ewBZgcO++s5igmk3rJ35SIn+FjSlYJYWhp+zZEqR+5OoSYNBFcnyb6kJ6T0xZO4olhRElRodm54OGxX1ZoMWP8prWER1uYqOyz2oDHpFiM0DE0KJ8fnaHlw4WN+cXfx3CINLn5RXL+ECGU6XNF+Udt/LLF86Y268YnKOqq/zFfyxUtIOTfYfjjN8Puu+qAxpbEy+gIV7LY/+BworvZDo8lA==\" />\n  </cfdi:Complemento>\n</cfdi:Comprobante>','2025-06-05','2025-06-05','01',NULL,1143.71,134.03,1715.56,0.00),
(52,7,1,0.0000,0.00,'MXN',1.0000,0.00,'2025-09-04',NULL,'avance_prueba','03','PUE','﻿<?xml version=\"1.0\" encoding=\"UTF-8\"?><cfdi:Comprobante xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" Certificado=\"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\" Exportacion=\"01\" Fecha=\"2025-09-04T13:19:56\" Folio=\"11\" FormaPago=\"03\" LugarExpedicion=\"64860\" MetodoPago=\"PUE\" Moneda=\"MXN\" NoCertificado=\"00001000000709028763\" Sello=\"i8rPwJ9j38Gm6Rgb57NepAs1EvN54qEH+z2TXhd9S4KmxGDW1tyMixR/o+Eqeq9eZIYvYq2d/Gy1y9bCSMqqSVWdkrIjVvNqCJt9tFYSU6S08G+suDgwpyBu9dFeNfbfXRlrZcPJ0eYbRp//gU4VR/joJY3dR+qHiSbs6TRXVlhAr/IELWZOBCnMj19gIOXZON+Ya2n0rHzPczf/+2/JgXPzrHzzIHnbyW1VlP2rW4ICeH4bLK/CJp7FlSEuFDhGl2GivwvUAQ9V4gWtKYTBqy6N91lTEYTns6AJpyHl/5FI4vicXDSHw2mKANXbTTwWdrYS2U/dHcjqVJmpL4z5YQ==\" Serie=\"A\" SubTotal=\"30000.00\" TipoCambio=\"1\" TipoDeComprobante=\"I\" Total=\"31224.99\" Version=\"4.0\" xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd\"><cfdi:Emisor Nombre=\"RAFAEL GARZA CASTILLO\" RegimenFiscal=\"626\" Rfc=\"GACR0202086G8\" /><cfdi:Receptor DomicilioFiscalReceptor=\"67180\" Nombre=\"TRANSPORTADORES INDUSTRIALES DE MEXICO\" RegimenFiscalReceptor=\"601\" Rfc=\"TIM861224JW4\" UsoCFDI=\"G03\" /><cfdi:Conceptos><cfdi:Concepto Cantidad=\"1.00\" ClaveProdServ=\"81161501\" ClaveUnidad=\"A9\" Descripcion=\"Servicios profesionales de desarollo de gestor de produccion\" Importe=\"30000.00\" ObjetoImp=\"02\" Unidad=\"TAR\" ValorUnitario=\"30000.000000\"><cfdi:Impuestos><cfdi:Traslados><cfdi:Traslado Base=\"30000.00\" Importe=\"4800.00\" Impuesto=\"002\" TasaOCuota=\"0.160000\" TipoFactor=\"Tasa\" /></cfdi:Traslados><cfdi:Retenciones><cfdi:Retencion Base=\"30000.00\" Importe=\"375.00\" Impuesto=\"001\" TasaOCuota=\"0.012500\" TipoFactor=\"Tasa\" /><cfdi:Retencion Base=\"30000.00\" Importe=\"3200.01\" Impuesto=\"002\" TasaOCuota=\"0.106667\" TipoFactor=\"Tasa\" /></cfdi:Retenciones></cfdi:Impuestos></cfdi:Concepto></cfdi:Conceptos><cfdi:Impuestos TotalImpuestosRetenidos=\"3575.01\" TotalImpuestosTrasladados=\"4800.00\"><cfdi:Retenciones><cfdi:Retencion Importe=\"375.00\" Impuesto=\"001\" /><cfdi:Retencion Importe=\"3200.01\" Impuesto=\"002\" /></cfdi:Retenciones><cfdi:Traslados><cfdi:Traslado Base=\"30000.00\" Importe=\"4800.00\" Impuesto=\"002\" TasaOCuota=\"0.160000\" TipoFactor=\"Tasa\" /></cfdi:Traslados></cfdi:Impuestos><cfdi:Complemento><tfd:TimbreFiscalDigital FechaTimbrado=\"2025-09-04T13:21:57\" NoCertificadoSAT=\"00001000000705928441\" RfcProvCertif=\"PPD101129EA3\" SelloCFD=\"i8rPwJ9j38Gm6Rgb57NepAs1EvN54qEH+z2TXhd9S4KmxGDW1tyMixR/o+Eqeq9eZIYvYq2d/Gy1y9bCSMqqSVWdkrIjVvNqCJt9tFYSU6S08G+suDgwpyBu9dFeNfbfXRlrZcPJ0eYbRp//gU4VR/joJY3dR+qHiSbs6TRXVlhAr/IELWZOBCnMj19gIOXZON+Ya2n0rHzPczf/+2/JgXPzrHzzIHnbyW1VlP2rW4ICeH4bLK/CJp7FlSEuFDhGl2GivwvUAQ9V4gWtKYTBqy6N91lTEYTns6AJpyHl/5FI4vicXDSHw2mKANXbTTwWdrYS2U/dHcjqVJmpL4z5YQ==\" SelloSAT=\"IFJ6Y/AszIiQi1ddQ8YUMB0Ibsw37hyH2zy74Lc4qWR/LthWEuxMsNoZEZqXGSnruGXnx7BHEWUtVl39zdfuZaQuyEbvIQU7dkpZtDjaLEh43R3qe6mdo8xuMnZi6Dc+RIFYSE+WYNfMe0Fw+94M2W0vN2BZ3IgZn9x4c7PVE2RhPNDYSsaVE9Aaxigt75Jg26UA0rOgpcKVsaBlf4iIFVEZ3LVM1fdl5oVqs3a6+Adgmjj8+gasNFMMv0Za/eOUx76Ruj0gRT1gc7VfzwzfyglRYHg1gB6Vr4GHQMEa6hCUTsaHaYkqcCp7CUqAjjuycoFirdj8XfI0hMRdGz+H/g==\" UUID=\"253A511D-D755-4D18-9056-1C298619CBA9\" Version=\"1.1\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\" /></cfdi:Complemento></cfdi:Comprobante>','2025-09-04','2025-09-04','01','cancelado',0.00,0.00,0.00,0.00),
(53,8,2,15000.0000,15612.49,'MXN',1.0000,15612.49,'2025-08-01',NULL,'Avance 50%','03','PUE','﻿<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<cfdi:Comprobante xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd\" Version=\"4.0\" Fecha=\"2025-08-01T10:24:30\" Sello=\"JL+fFSrJWutx73ZYMG57fthlpb1ddWn8FRQ7B6n/qtpLU6tSyW9Qo6Dy+1M5EIdYYAe6O6VBDVlwcuYhPzakD24G8JM5m6wLtNEh5H576uphLk/oLY7r1kkE7qn3jTLzfU+cx86Tqs8xypqVeUbFEvdX3vJqK9u2G9XU1QXeaadI5LhEAkziwqbD+JZLNc1Q+ZRFXOyHGbNgSnS8/uW+03ikrXxLypB3b/J4/mV1Cqj1Cmj3UaXwHyfo8HOW7IyE+uHBhW7gP5jpUdbsST1P7W4TPnvYP3WvsR6yVQ73uAS8m6vVWfZFvYoEQeb9PZDEUoQll4AILL1UxVXo4s7CEA==\" FormaPago=\"03\" NoCertificado=\"00001000000514095694\" Certificado=\"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\" SubTotal=\"15000.00\" Moneda=\"MXN\" Total=\"15612.49\" TipoDeComprobante=\"I\" Exportacion=\"01\" MetodoPago=\"PUE\" LugarExpedicion=\"64860\" xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">\n  <cfdi:Emisor Rfc=\"GACR0202086G8\" Nombre=\"RAFAEL GARZA CASTILLO\" RegimenFiscal=\"626\" />\n  <cfdi:Receptor Rfc=\"SIM081113M28\" Nombre=\"SUMINISTROS INDUSTRIALES MODERNOS\" DomicilioFiscalReceptor=\"64103\" RegimenFiscalReceptor=\"601\" UsoCFDI=\"G03\" />\n  <cfdi:Conceptos>\n    <cfdi:Concepto ClaveProdServ=\"81161501\" Cantidad=\"1.00\" ClaveUnidad=\"A9\" Unidad=\"Tarífa\" Descripcion=\"Servicios profesionales de desarollo de gestor de produccion\" ValorUnitario=\"15000\" Importe=\"15000.000000\" ObjetoImp=\"02\">\n      <cfdi:Impuestos>\n        <cfdi:Traslados>\n          <cfdi:Traslado Base=\"15000.000000\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.160000\" Importe=\"2400.000000\" />\n        </cfdi:Traslados>\n        <cfdi:Retenciones>\n          <cfdi:Retencion Base=\"15000.000000\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.012500\" Importe=\"187.500000\" />\n          <cfdi:Retencion Base=\"15000.000000\" Impuesto=\"001\" TipoFactor=\"Tasa\" TasaOCuota=\"0.106667\" Importe=\"1600.005000\" />\n        </cfdi:Retenciones>\n      </cfdi:Impuestos>\n    </cfdi:Concepto>\n  </cfdi:Conceptos>\n  <cfdi:Impuestos TotalImpuestosTrasladados=\"2400.00\" TotalImpuestosRetenidos=\"1787.51\">\n    <cfdi:Retenciones>\n      <cfdi:Retencion Impuesto=\"002\" Importe=\"187.50\" />\n      <cfdi:Retencion Impuesto=\"001\" Importe=\"1600.01\" />\n    </cfdi:Retenciones>\n    <cfdi:Traslados>\n      <cfdi:Traslado Base=\"15000.00\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.160000\" Importe=\"2400.00\" />\n    </cfdi:Traslados>\n  </cfdi:Impuestos>\n  <cfdi:Complemento>\n    <tfd:TimbreFiscalDigital xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" Version=\"1.1\" UUID=\"3BFB1078-C023-4D69-B4B2-96550F721D56\" FechaTimbrado=\"2025-08-01T10:24:51\" RfcProvCertif=\"SAT970701NN3\" SelloCFD=\"JL+fFSrJWutx73ZYMG57fthlpb1ddWn8FRQ7B6n/qtpLU6tSyW9Qo6Dy+1M5EIdYYAe6O6VBDVlwcuYhPzakD24G8JM5m6wLtNEh5H576uphLk/oLY7r1kkE7qn3jTLzfU+cx86Tqs8xypqVeUbFEvdX3vJqK9u2G9XU1QXeaadI5LhEAkziwqbD+JZLNc1Q+ZRFXOyHGbNgSnS8/uW+03ikrXxLypB3b/J4/mV1Cqj1Cmj3UaXwHyfo8HOW7IyE+uHBhW7gP5jpUdbsST1P7W4TPnvYP3WvsR6yVQ73uAS8m6vVWfZFvYoEQeb9PZDEUoQll4AILL1UxVXo4s7CEA==\" NoCertificadoSAT=\"00001000000705250068\" SelloSAT=\"UDMIszUUNArppbn7DJtIEP+u3F2b1/Ss/LAIbS+9hoebsvwtDbPyoW5Z+b4tgTBCSuljHra0N/kNH1A+0ibEdKIQ2nIYZLd0ZVML+myTuerB8pYwowTWW7+NLEwnvGjo5huyYway3fi5nO+OLyCKB3P5pFKJiEFvOP5PlXZOuY5Vgv8uldie5Qb8+qXL7TS583BAqkefOzP3HxvPI3lx1Z07KoXCSj34m9JeEPOmj+toOxhFid2E0ohMGbWTsqfosXdIStXUAruyA84jQxwbEnHGsEEv85PmZETFKg4NTHrd2h+q9h3kQnn9ErfnOaqUUTnJVgm4QP3lh1iuK4VPWg==\" />\n  </cfdi:Complemento>\n</cfdi:Comprobante>','2025-08-01','2025-08-01','01',NULL,187.50,1600.01,2400.00,0.00),
(54,9,3,0.0000,0.00,'MXN',1.0000,0.00,'2025-09-08',NULL,'prueba','03','PUE','﻿<?xml version=\"1.0\" encoding=\"UTF-8\"?><cfdi:Comprobante xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" Certificado=\"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\" Exportacion=\"01\" Fecha=\"2025-09-08T12:15:40\" Folio=\"12\" FormaPago=\"03\" LugarExpedicion=\"64860\" MetodoPago=\"PUE\" Moneda=\"MXN\" NoCertificado=\"00001000000709028763\" Sello=\"PhXnDd/i+8czJg6jHYlSNz3jZMff5h+6QP91CGqvgcm/oOPpZ6YnJjM+jLNkWQtoMlxOjl0rnu57cl36P5kEgcBQKld4BRMwIoJ7QhMcOpRBdj6dv321BlWQKd0p8ygMUBoxVqSdArCKwiWqtSw9xfWwHFLa6B2oKC6fp904Vuhl47EwdOSX3Tiho/FAgqbhFTXLr/RG0k3q2zUz2uKUUMQbY5pZbsy5zCw3U9yDJXmeX37i/A8oWtud3lFQlRExc2KrggpIDXFVjOPflcpVT0iWvZg6KA6exeR+DJwZBzAECut+lUIwM+diZMXiiVbAG9mN5nHFL9QpuqCKgHpVzg==\" Serie=\"A\" SubTotal=\"100.00\" TipoCambio=\"1\" TipoDeComprobante=\"I\" Total=\"104.08\" Version=\"4.0\" xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd\"><cfdi:Emisor Nombre=\"RAFAEL GARZA CASTILLO\" RegimenFiscal=\"626\" Rfc=\"GACR0202086G8\" /><cfdi:Receptor DomicilioFiscalReceptor=\"64860\" Nombre=\"PÚBLICO EN GENERAL\" RegimenFiscalReceptor=\"616\" Rfc=\"XAXX010101000\" UsoCFDI=\"S01\" /><cfdi:Conceptos><cfdi:Concepto Cantidad=\"1.00\" ClaveProdServ=\"81161501\" ClaveUnidad=\"A9\" Descripcion=\"Servicios profesionales de desarollo de gestor de produccion\" Importe=\"100.00\" ObjetoImp=\"02\" Unidad=\"TAR\" ValorUnitario=\"100.000000\"><cfdi:Impuestos><cfdi:Traslados><cfdi:Traslado Base=\"100.00\" Importe=\"16.00\" Impuesto=\"002\" TasaOCuota=\"0.160000\" TipoFactor=\"Tasa\" /></cfdi:Traslados><cfdi:Retenciones><cfdi:Retencion Base=\"100.00\" Importe=\"1.25\" Impuesto=\"001\" TasaOCuota=\"0.012500\" TipoFactor=\"Tasa\" /><cfdi:Retencion Base=\"100.00\" Importe=\"10.67\" Impuesto=\"002\" TasaOCuota=\"0.106667\" TipoFactor=\"Tasa\" /></cfdi:Retenciones></cfdi:Impuestos></cfdi:Concepto></cfdi:Conceptos><cfdi:Impuestos TotalImpuestosRetenidos=\"11.92\" TotalImpuestosTrasladados=\"16.00\"><cfdi:Retenciones><cfdi:Retencion Importe=\"1.25\" Impuesto=\"001\" /><cfdi:Retencion Importe=\"10.67\" Impuesto=\"002\" /></cfdi:Retenciones><cfdi:Traslados><cfdi:Traslado Base=\"100.00\" Importe=\"16.00\" Impuesto=\"002\" TasaOCuota=\"0.160000\" TipoFactor=\"Tasa\" /></cfdi:Traslados></cfdi:Impuestos><cfdi:Complemento><tfd:TimbreFiscalDigital FechaTimbrado=\"2025-09-08T12:17:40\" NoCertificadoSAT=\"00001000000705928441\" RfcProvCertif=\"PPD101129EA3\" SelloCFD=\"PhXnDd/i+8czJg6jHYlSNz3jZMff5h+6QP91CGqvgcm/oOPpZ6YnJjM+jLNkWQtoMlxOjl0rnu57cl36P5kEgcBQKld4BRMwIoJ7QhMcOpRBdj6dv321BlWQKd0p8ygMUBoxVqSdArCKwiWqtSw9xfWwHFLa6B2oKC6fp904Vuhl47EwdOSX3Tiho/FAgqbhFTXLr/RG0k3q2zUz2uKUUMQbY5pZbsy5zCw3U9yDJXmeX37i/A8oWtud3lFQlRExc2KrggpIDXFVjOPflcpVT0iWvZg6KA6exeR+DJwZBzAECut+lUIwM+diZMXiiVbAG9mN5nHFL9QpuqCKgHpVzg==\" SelloSAT=\"eiedAihjJS66zeMEMFeGOqh2qILraxsVT9I1TD6n3bVMaq3nY34N9HlCnb7AZQzISG0ARPRycYtxCK/vjQODri12b3oN8qxOb2PeY1xi8LF0yy50gc/5rUCQiPqjkNqHm0tR8koxThmonsXAguDbcf3TLWiOyu8k3PMktVjPlk0uKfp/W1CdrUExj6BjLOMDeLY81rqFqWQ3tMY3DOUKaCOHdvLa4yJyVFVWUttAiaCyxEW+HuuBORUO6AKIg+QoySGWxKjy8V0A2O1y/d/fksJS2+fcVxdXnMCYyAByVRFP5EunId2XARJgEGgjuqFT04EqXRO3KExi+0H/Vi67/g==\" UUID=\"24ED7792-66E9-45A9-91B2-3866060C8357\" Version=\"1.1\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\" /></cfdi:Complemento></cfdi:Comprobante>','2025-09-08','2025-09-08','01','cancelado',10.67,1.25,16.00,0.00),
(55,10,5,0.0000,0.00,'MXN',1.0000,0.00,'2025-07-02',NULL,'Bono','03','PUE','﻿<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<cfdi:Comprobante xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd\" Version=\"4.0\" Fecha=\"2025-07-02T10:07:12\" Sello=\"So1sIz1OmQi8LgiikJLfVmXPZXO2DWQ5FHmaTzNU35iIg3NF1la3Rb8iTwyVWpcvd+l/OrDxGYQ+VxcoIGtOkqFyuTSStd8KsqMqsDCWmZFZM+sstGGFm31E4TSfyNMaEZTzIJvMDbtr0R7s0hIvvypkd5gUyDN7C+aDX8PG1fJHCXjVvJtNd5ew23ZcM0Kq3qpP1gn+IllxMOrl7Paw85r8Vr7lCHAU0VW0PSYewEGN/C12uThCPGdrqXZ+osxLlL7IKn0IKBi+JPARRSVkVDhtEHZ38cHvJoV8LgL50foiBwskktrV1T9fhA1w9Afy/Cer2WwT+ZKsRn8Bmd2hMw==\" FormaPago=\"03\" NoCertificado=\"00001000000709028763\" Certificado=\"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\" SubTotal=\"55000.00\" Moneda=\"MXN\" Total=\"57245.81\" TipoDeComprobante=\"I\" Exportacion=\"01\" MetodoPago=\"PUE\" LugarExpedicion=\"64860\" xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">\n  <cfdi:Emisor Rfc=\"GACR0202086G8\" Nombre=\"RAFAEL GARZA CASTILLO\" RegimenFiscal=\"626\" />\n  <cfdi:Receptor Rfc=\"CSM880211A61\" Nombre=\"CORPORACION SIERRA MADRE\" DomicilioFiscalReceptor=\"66000\" RegimenFiscalReceptor=\"601\" UsoCFDI=\"G03\" />\n  <cfdi:Conceptos>\n    <cfdi:Concepto ClaveProdServ=\"80101500\" NoIdentificacion=\"80101500\" Cantidad=\"1.00\" ClaveUnidad=\"E48\" Unidad=\"Unidad de servicio\" Descripcion=\"Servicios profesionales y consultoría para el departamento de ventas\" ValorUnitario=\"55000\" Importe=\"55000.000000\" ObjetoImp=\"02\">\n      <cfdi:Impuestos>\n        <cfdi:Traslados>\n          <cfdi:Traslado Base=\"55000.000000\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.160000\" Importe=\"8800.000000\" />\n        </cfdi:Traslados>\n        <cfdi:Retenciones>\n          <cfdi:Retencion Base=\"55000.000000\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.106667\" Importe=\"5866.685000\" />\n          <cfdi:Retencion Base=\"55000.000000\" Impuesto=\"001\" TipoFactor=\"Tasa\" TasaOCuota=\"0.012500\" Importe=\"687.500000\" />\n        </cfdi:Retenciones>\n      </cfdi:Impuestos>\n    </cfdi:Concepto>\n  </cfdi:Conceptos>\n  <cfdi:Impuestos TotalImpuestosTrasladados=\"8800.00\" TotalImpuestosRetenidos=\"6554.19\">\n    <cfdi:Retenciones>\n      <cfdi:Retencion Impuesto=\"002\" Importe=\"5866.69\" />\n      <cfdi:Retencion Impuesto=\"001\" Importe=\"687.50\" />\n    </cfdi:Retenciones>\n    <cfdi:Traslados>\n      <cfdi:Traslado Base=\"55000.00\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.160000\" Importe=\"8800.00\" />\n    </cfdi:Traslados>\n  </cfdi:Impuestos>\n  <cfdi:Complemento>\n    <tfd:TimbreFiscalDigital xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" Version=\"1.1\" UUID=\"5782C857-68C3-49E9-8A98-33921ED430CC\" FechaTimbrado=\"2025-07-02T10:07:48\" RfcProvCertif=\"SAT970701NN3\" SelloCFD=\"So1sIz1OmQi8LgiikJLfVmXPZXO2DWQ5FHmaTzNU35iIg3NF1la3Rb8iTwyVWpcvd+l/OrDxGYQ+VxcoIGtOkqFyuTSStd8KsqMqsDCWmZFZM+sstGGFm31E4TSfyNMaEZTzIJvMDbtr0R7s0hIvvypkd5gUyDN7C+aDX8PG1fJHCXjVvJtNd5ew23ZcM0Kq3qpP1gn+IllxMOrl7Paw85r8Vr7lCHAU0VW0PSYewEGN/C12uThCPGdrqXZ+osxLlL7IKn0IKBi+JPARRSVkVDhtEHZ38cHvJoV8LgL50foiBwskktrV1T9fhA1w9Afy/Cer2WwT+ZKsRn8Bmd2hMw==\" NoCertificadoSAT=\"00001000000705250068\" SelloSAT=\"AP4im9RzTWE9//p3uqjLRGZv5NOnHiXBPr4HvUqN7s/Xgr6YjCzm8dtvfZcBb3LrLopayfPxUol6sMkqoJ7FxzVeV+jdgxI0gEIg+69+FILrOthfkDRc8ec2ir+oppG3q5nxHiwtZKn9erLfzsWgu/PPDOQm2utick2v54fAKKdHudrrMcDeL9BkAFJZLrQh9VLVRRe2IqBsyjNNplXAmS95un2sChaSGm9LXXRS9ONy7dSqOcijxAOYqVHyLLO5mSOfgvTDjLXBvpTpJweWzKyu8r4mGtwKMffKc03Stk7AQ4LpEZj8cBZWEU/orY2J+6ueT9BvOF8ThAW9n7rf/A==\" />\n  </cfdi:Complemento>\n</cfdi:Comprobante>','2025-07-02','2025-07-02','01','cancelado',0.00,0.00,0.00,0.00),
(56,11,2,15000.0000,15612.49,'MXN',1.0000,15612.49,'2025-07-11',NULL,'Avance 50%','99','PPD','﻿<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<cfdi:Comprobante xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd\" Version=\"4.0\" Fecha=\"2025-07-11T12:49:40\" Sello=\"jCcQVJObRn7Wh1b38+ri/zX8ZWWC677Faq84dPrSkSW621/60LIdUqe6cZrfH1dv0wTF4deoOFa9PDfW/cDIiTOunjH0pQTHNxjIQ4BljTI8+MM03QdZ7zTCkDOP51RRRJt5/mcG2bVu0kCfgV8/suxKJblo0HYZ3niJZuAfei/MfPJMlehm1PouYo0gsjR1CNbPtA3L2zi6ZFMOBPgKzStRwY3i3K065XE1ql8K9CqcdlVKhDU57j6v+11WUpmlOtTcSf0i6j+DkH041ozNg9Kv6ldi6EV0M/cpPNfv41med2tllVgZyQH4SJunRAxc6tNVedlukwQ6rA1KnqYgdw==\" FormaPago=\"99\" NoCertificado=\"00001000000514095694\" Certificado=\"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\" SubTotal=\"15000.00\" Moneda=\"MXN\" Total=\"15612.49\" TipoDeComprobante=\"I\" Exportacion=\"01\" MetodoPago=\"PPD\" LugarExpedicion=\"64860\" xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">\n  <cfdi:Emisor Rfc=\"GACR0202086G8\" Nombre=\"RAFAEL GARZA CASTILLO\" RegimenFiscal=\"626\" />\n  <cfdi:Receptor Rfc=\"SIM081113M28\" Nombre=\"SUMINISTROS INDUSTRIALES MODERNOS\" DomicilioFiscalReceptor=\"64103\" RegimenFiscalReceptor=\"601\" UsoCFDI=\"G03\" />\n  <cfdi:Conceptos>\n    <cfdi:Concepto ClaveProdServ=\"81161501\" Cantidad=\"1.00\" ClaveUnidad=\"A9\" Unidad=\"Tarífa\" Descripcion=\"Servicios profesionales de desarollo de gestor de produccion\" ValorUnitario=\"15000\" Importe=\"15000.000000\" ObjetoImp=\"02\">\n      <cfdi:Impuestos>\n        <cfdi:Traslados>\n          <cfdi:Traslado Base=\"15000.000000\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.160000\" Importe=\"2400.000000\" />\n        </cfdi:Traslados>\n        <cfdi:Retenciones>\n          <cfdi:Retencion Base=\"15000.000000\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.106667\" Importe=\"1600.005000\" />\n          <cfdi:Retencion Base=\"15000.000000\" Impuesto=\"001\" TipoFactor=\"Tasa\" TasaOCuota=\"0.012500\" Importe=\"187.500000\" />\n        </cfdi:Retenciones>\n      </cfdi:Impuestos>\n    </cfdi:Concepto>\n  </cfdi:Conceptos>\n  <cfdi:Impuestos TotalImpuestosTrasladados=\"2400.00\" TotalImpuestosRetenidos=\"1787.51\">\n    <cfdi:Retenciones>\n      <cfdi:Retencion Impuesto=\"002\" Importe=\"1600.01\" />\n      <cfdi:Retencion Impuesto=\"001\" Importe=\"187.50\" />\n    </cfdi:Retenciones>\n    <cfdi:Traslados>\n      <cfdi:Traslado Base=\"15000.00\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.160000\" Importe=\"2400.00\" />\n    </cfdi:Traslados>\n  </cfdi:Impuestos>\n  <cfdi:Complemento>\n    <tfd:TimbreFiscalDigital xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" Version=\"1.1\" UUID=\"AF7DF3E1-2BE6-45BA-B04E-00706B01AC57\" FechaTimbrado=\"2025-07-11T12:49:55\" RfcProvCertif=\"SAT970701NN3\" SelloCFD=\"jCcQVJObRn7Wh1b38+ri/zX8ZWWC677Faq84dPrSkSW621/60LIdUqe6cZrfH1dv0wTF4deoOFa9PDfW/cDIiTOunjH0pQTHNxjIQ4BljTI8+MM03QdZ7zTCkDOP51RRRJt5/mcG2bVu0kCfgV8/suxKJblo0HYZ3niJZuAfei/MfPJMlehm1PouYo0gsjR1CNbPtA3L2zi6ZFMOBPgKzStRwY3i3K065XE1ql8K9CqcdlVKhDU57j6v+11WUpmlOtTcSf0i6j+DkH041ozNg9Kv6ldi6EV0M/cpPNfv41med2tllVgZyQH4SJunRAxc6tNVedlukwQ6rA1KnqYgdw==\" NoCertificadoSAT=\"00001000000705250068\" SelloSAT=\"VO9KBTrMt8t5cD77onSNBlUoTrbZLSfxCyOPQszaLmXA5kW+nr3zOJS2bOtA26C9otM3pupLR8rUKAcX7CosSfm5rCjkmohRWfE+StGkjflCPbcULUJ+AVBCXALpls0zVlflHPGebPuj8xTm7YEc8HdMF6RF0NtziYOes1dgI6eRpuocn1oEaChwJubiPdGrOPaD/dnn3eKfh+WFkTbT+HtkFHYiPSk73zL4qYeN4inBk51zUxcy5ayUIhj3qBT5qKCkMEe3fbj6KPgdfU9uFuYh1/Xk7oebWqBFQYhh3S3/hVYHjaYp+aCTcs/6q3/3ImE1Agz20QmJ88GjIt1jpg==\" />\n  </cfdi:Complemento>\n</cfdi:Comprobante>','2025-07-11','2025-07-11','01',NULL,1600.01,187.50,2400.00,0.00),
(57,12,5,55000.0000,57245.81,'MXN',1.0000,57245.81,'2025-09-30',NULL,'Bono 2','02','PUE','﻿<?xml version=\"1.0\" encoding=\"UTF-8\"?><cfdi:Comprobante xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" Certificado=\"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\" Exportacion=\"01\" Fecha=\"2025-09-30T14:57:05\" Folio=\"14\" FormaPago=\"02\" LugarExpedicion=\"64860\" MetodoPago=\"PUE\" Moneda=\"MXN\" NoCertificado=\"00001000000709028763\" Sello=\"UPz897wtkU1nWbW8RyIzlO+rOjWlC0dTa4Rs1sLZiBTKvIEMVmEY4PdCc+YTT9ATQF+nU3DWaABCcNDkbfoZleh8eOVBVrC/gvNaBDwtqRdcgsvvbv0hQ0JUgRZ+BfaTn31yw/Txn6DRX0NVXjoBwMrcGk+sSGMH2giVsS5d1cSnXFeBo2dvQfzdq4GKDAoaaRYeClxEGGiDnCvZxjGiu+xkuYgdbC1g1dpUAxKqJk769CmmqScZq4+JJ4Eieu2z4SQfwmObvnj6kryG7+HibZBnAn9vusj0R4+hbld4aDJu8pDIhIJA4mBNIAXjaMsnaxrkQVwCRA0kLkXbvpaLOA==\" Serie=\"A\" SubTotal=\"55000.00\" TipoCambio=\"1\" TipoDeComprobante=\"I\" Total=\"57245.81\" Version=\"4.0\" xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd\"><cfdi:Emisor Nombre=\"RAFAEL GARZA CASTILLO\" RegimenFiscal=\"626\" Rfc=\"GACR0202086G8\" /><cfdi:Receptor DomicilioFiscalReceptor=\"66368\" Nombre=\"CORPORACION SIERRA MADRE\" RegimenFiscalReceptor=\"601\" Rfc=\"CSM880211A61\" UsoCFDI=\"G03\" /><cfdi:Conceptos><cfdi:Concepto Cantidad=\"1.00\" ClaveProdServ=\"80101500\" ClaveUnidad=\"E48\" Descripcion=\"Servicios profesionales y consultoría para el departamento de ventas\" Importe=\"55000.00\" ObjetoImp=\"02\" Unidad=\"Servicios\" ValorUnitario=\"55000.000000\"><cfdi:Impuestos><cfdi:Traslados><cfdi:Traslado Base=\"55000.00\" Importe=\"8800.00\" Impuesto=\"002\" TasaOCuota=\"0.160000\" TipoFactor=\"Tasa\" /></cfdi:Traslados><cfdi:Retenciones><cfdi:Retencion Base=\"55000.00\" Importe=\"687.50\" Impuesto=\"001\" TasaOCuota=\"0.012500\" TipoFactor=\"Tasa\" /><cfdi:Retencion Base=\"55000.00\" Importe=\"5866.69\" Impuesto=\"002\" TasaOCuota=\"0.106667\" TipoFactor=\"Tasa\" /></cfdi:Retenciones></cfdi:Impuestos></cfdi:Concepto></cfdi:Conceptos><cfdi:Impuestos TotalImpuestosRetenidos=\"6554.19\" TotalImpuestosTrasladados=\"8800.00\"><cfdi:Retenciones><cfdi:Retencion Importe=\"687.50\" Impuesto=\"001\" /><cfdi:Retencion Importe=\"5866.69\" Impuesto=\"002\" /></cfdi:Retenciones><cfdi:Traslados><cfdi:Traslado Base=\"55000.00\" Importe=\"8800.00\" Impuesto=\"002\" TasaOCuota=\"0.160000\" TipoFactor=\"Tasa\" /></cfdi:Traslados></cfdi:Impuestos><cfdi:Complemento><tfd:TimbreFiscalDigital FechaTimbrado=\"2025-09-30T14:59:06\" NoCertificadoSAT=\"00001000000705928441\" RfcProvCertif=\"PPD101129EA3\" SelloCFD=\"UPz897wtkU1nWbW8RyIzlO+rOjWlC0dTa4Rs1sLZiBTKvIEMVmEY4PdCc+YTT9ATQF+nU3DWaABCcNDkbfoZleh8eOVBVrC/gvNaBDwtqRdcgsvvbv0hQ0JUgRZ+BfaTn31yw/Txn6DRX0NVXjoBwMrcGk+sSGMH2giVsS5d1cSnXFeBo2dvQfzdq4GKDAoaaRYeClxEGGiDnCvZxjGiu+xkuYgdbC1g1dpUAxKqJk769CmmqScZq4+JJ4Eieu2z4SQfwmObvnj6kryG7+HibZBnAn9vusj0R4+hbld4aDJu8pDIhIJA4mBNIAXjaMsnaxrkQVwCRA0kLkXbvpaLOA==\" SelloSAT=\"ESgMb/CjUKEs5NhYaWkKKs4boSguwBUcZBrZJXZdd3u6yHbAKJCk9UqQQmOF4j42q1qU07J1Mf/ZXliIFQdqYDYKLJlz63VwNtZSlGko5zsKJuYPbkYoT4FYfNnb1r4QL0uYqd6U9Ka7O+mHjt/GSf7rJHG+VmcAphcwBAWYPHfu7O8xCzBYVUvHtG5HLZuaZDIik+q5BPxefiCker2mL/4mzFSW+375uN6gO9R2+HDZbkstyNRdeu0RlJjJ7ZUTPyztlbcrmONWKmUGBB3e+aYh8tGvMAGhpvj0Ed678JsDJ0ZY50HB8TkF1Qp5OaoqfELFLQ76os+ILgLp60EAFA==\" UUID=\"BCF54CF8-FEDB-49D2-9F38-2328FF264121\" Version=\"1.1\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\" /></cfdi:Complemento></cfdi:Comprobante>','2025-09-30','2025-09-30','01',NULL,5866.69,687.50,8800.00,0.00),
(58,13,5,55000.0000,57245.81,'MXN',1.0000,57245.81,'2025-07-07',NULL,'Bono 3','02','PUE','﻿<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<cfdi:Comprobante xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd\" Version=\"4.0\" Fecha=\"2025-07-07T15:33:34\" Sello=\"LLIlgeFGG+BemBk8YZJ2Q40m2XhGI17bARv6Y9w9a2zJxfso906UWF/NUvyzzvw8C1BEWtPFQaYybQaNz9SYcEl4X7gnbc7IMUFfaKirCvzzuDiLX04B9GnIN3L1zZXNRag3nK85ob/nrrRbbL9cu2EYdfXU1WcUR5Z14fpTkMeERnXJ4X9+i5FAQ7nHxN6Ghi6dsuIL0GJhUfmbhdbDPHVj/2vPLfHwk5orXS4mkOPVMmPjQrBpkbIU5Gg8YcQungAdkuh6DefMbPr401DR8RhqpdLTiVtS0aTV+pxjW7DH94lFJL4BLMuiozDmX+fkdcLauxIvjjRTOuWuX+iaoA==\" FormaPago=\"02\" NoCertificado=\"00001000000709028763\" Certificado=\"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\" SubTotal=\"55000.00\" Moneda=\"MXN\" Total=\"57245.81\" TipoDeComprobante=\"I\" Exportacion=\"01\" MetodoPago=\"PUE\" LugarExpedicion=\"64860\" xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\">\n  <cfdi:Emisor Rfc=\"GACR0202086G8\" Nombre=\"RAFAEL GARZA CASTILLO\" RegimenFiscal=\"626\" />\n  <cfdi:Receptor Rfc=\"CSM880211A61\" Nombre=\"CORPORACION SIERRA MADRE\" DomicilioFiscalReceptor=\"66000\" RegimenFiscalReceptor=\"601\" UsoCFDI=\"G03\" />\n  <cfdi:Conceptos>\n    <cfdi:Concepto ClaveProdServ=\"80101500\" NoIdentificacion=\"80101500\" Cantidad=\"1.00\" ClaveUnidad=\"E48\" Unidad=\"Unidad de servicio\" Descripcion=\"Servicios profesionales y consultoría para el departamento de ventas\" ValorUnitario=\"55000\" Importe=\"55000.000000\" ObjetoImp=\"02\">\n      <cfdi:Impuestos>\n        <cfdi:Traslados>\n          <cfdi:Traslado Base=\"55000.000000\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.160000\" Importe=\"8800.000000\" />\n        </cfdi:Traslados>\n        <cfdi:Retenciones>\n          <cfdi:Retencion Base=\"55000.000000\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.106667\" Importe=\"5866.685000\" />\n          <cfdi:Retencion Base=\"55000.000000\" Impuesto=\"001\" TipoFactor=\"Tasa\" TasaOCuota=\"0.012500\" Importe=\"687.500000\" />\n        </cfdi:Retenciones>\n      </cfdi:Impuestos>\n    </cfdi:Concepto>\n  </cfdi:Conceptos>\n  <cfdi:Impuestos TotalImpuestosTrasladados=\"8800.00\" TotalImpuestosRetenidos=\"6554.19\">\n    <cfdi:Retenciones>\n      <cfdi:Retencion Impuesto=\"002\" Importe=\"5866.69\" />\n      <cfdi:Retencion Impuesto=\"001\" Importe=\"687.50\" />\n    </cfdi:Retenciones>\n    <cfdi:Traslados>\n      <cfdi:Traslado Base=\"55000.00\" Impuesto=\"002\" TipoFactor=\"Tasa\" TasaOCuota=\"0.160000\" Importe=\"8800.00\" />\n    </cfdi:Traslados>\n  </cfdi:Impuestos>\n  <cfdi:Complemento>\n    <tfd:TimbreFiscalDigital xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" Version=\"1.1\" UUID=\"E136F59B-BA00-491B-89E7-08A574B86661\" FechaTimbrado=\"2025-07-07T15:33:57\" RfcProvCertif=\"SAT970701NN3\" SelloCFD=\"LLIlgeFGG+BemBk8YZJ2Q40m2XhGI17bARv6Y9w9a2zJxfso906UWF/NUvyzzvw8C1BEWtPFQaYybQaNz9SYcEl4X7gnbc7IMUFfaKirCvzzuDiLX04B9GnIN3L1zZXNRag3nK85ob/nrrRbbL9cu2EYdfXU1WcUR5Z14fpTkMeERnXJ4X9+i5FAQ7nHxN6Ghi6dsuIL0GJhUfmbhdbDPHVj/2vPLfHwk5orXS4mkOPVMmPjQrBpkbIU5Gg8YcQungAdkuh6DefMbPr401DR8RhqpdLTiVtS0aTV+pxjW7DH94lFJL4BLMuiozDmX+fkdcLauxIvjjRTOuWuX+iaoA==\" NoCertificadoSAT=\"00001000000705250068\" SelloSAT=\"SBOw7/Avm8e+ShRt0T1SybhRBkslJZI2p7xhj55NhYMQQnO2HbOZX/5yb5FjHIbnf/SXwAFWGDGoSzI4wuOQUNeUdVg8Ymkmkjx5evzONxbBv2Xu8UqNiMKuFB8zcb/c64gpLzl7kZOvyhtzbdjqKxFz1II7FQdVxvttlQapog+xtU+bNl82NwIG+t6XXb1icbFFBJ6Vz3dP12jAGDglnzD0yh1vR2E2V/3bI4CnFwOT94pAuRTU1NGli/vFfVQfApOkt9MIeFJ3goSuGKanCoNV486OMzxGhzada/+LbMnAl1wjtkBz0idjTHvnCrv8D0cW7+IW+e+mypn55XjqVg==\" />\n  </cfdi:Complemento>\n</cfdi:Comprobante>','2025-07-07','2025-07-07','01',NULL,5866.69,687.50,8800.00,0.00);
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
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER trg_calculate_valor_pesos 
BEFORE INSERT ON facturas 
FOR EACH ROW 
BEGIN
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
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER trg_calculate_valor_pesos_update 
BEFORE UPDATE ON facturas 
FOR EACH ROW 
BEGIN
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
-- Table structure for table `faltas`
--

DROP TABLE IF EXISTS `faltas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `faltas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_trabajador` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_trabajador` (`id_trabajador`),
  CONSTRAINT `faltas_ibfk_1` FOREIGN KEY (`id_trabajador`) REFERENCES `trabajadores` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faltas`
--

LOCK TABLES `faltas` WRITE;
/*!40000 ALTER TABLE `faltas` DISABLE KEYS */;
/*!40000 ALTER TABLE `faltas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fondo_ahorro`
--

DROP TABLE IF EXISTS `fondo_ahorro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fondo_ahorro` (
  `id_fondo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_fondo` varchar(100) NOT NULL,
  `aportacion_empresa` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tasa_interes` decimal(10,2) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_final` date NOT NULL,
  PRIMARY KEY (`id_fondo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fondo_ahorro`
--

LOCK TABLES `fondo_ahorro` WRITE;
/*!40000 ALTER TABLE `fondo_ahorro` DISABLE KEYS */;
INSERT INTO `fondo_ahorro` VALUES
(11,'Agosto 2026',10.00,0.00,'2025-10-01','2026-08-31');
/*!40000 ALTER TABLE `fondo_ahorro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fondo_ahorro_trabajador`
--

DROP TABLE IF EXISTS `fondo_ahorro_trabajador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fondo_ahorro_trabajador` (
  `id_participacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_fondo` int(11) NOT NULL,
  `id_trabajador` int(11) NOT NULL,
  `monto_semanal` decimal(10,2) NOT NULL,
  `fecha_alta` date NOT NULL DEFAULT curdate(),
  PRIMARY KEY (`id_participacion`),
  KEY `id_fondo` (`id_fondo`),
  CONSTRAINT `fondo_ahorro_trabajador_ibfk_1` FOREIGN KEY (`id_fondo`) REFERENCES `fondo_ahorro` (`id_fondo`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fondo_ahorro_trabajador`
--

LOCK TABLES `fondo_ahorro_trabajador` WRITE;
/*!40000 ALTER TABLE `fondo_ahorro_trabajador` DISABLE KEYS */;
INSERT INTO `fondo_ahorro_trabajador` VALUES
(11,11,1,500.00,'2025-10-01'),
(12,11,2,435.00,'2025-10-06'),
(13,11,3,1000.00,'2025-10-06'),
(14,11,4,600.00,'2025-10-13');
/*!40000 ALTER TABLE `fondo_ahorro_trabajador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos`
--

DROP TABLE IF EXISTS `grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos`
--

LOCK TABLES `grupos` WRITE;
/*!40000 ALTER TABLE `grupos` DISABLE KEYS */;
INSERT INTO `grupos` VALUES
(7,'gerencia');
/*!40000 ALTER TABLE `grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_consumibles`
--

DROP TABLE IF EXISTS `historial_consumibles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_consumibles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_consumible` int(11) NOT NULL,
  `cambio` decimal(10,2) NOT NULL,
  `tipo` enum('entrada','salida') NOT NULL,
  `fecha` datetime NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_epp`
--

LOCK TABLES `historial_epp` WRITE;
/*!40000 ALTER TABLE `historial_epp` DISABLE KEYS */;
/*!40000 ALTER TABLE `historial_epp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_salarios`
--

DROP TABLE IF EXISTS `historial_salarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_salarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_trabajador` int(11) DEFAULT NULL,
  `fecha_cambio` timestamp NULL DEFAULT current_timestamp(),
  `valor_antiguo` decimal(10,2) DEFAULT NULL,
  `valor_actual` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_trabajador` (`id_trabajador`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_salarios`
--

LOCK TABLES `historial_salarios` WRITE;
/*!40000 ALTER TABLE `historial_salarios` DISABLE KEYS */;
INSERT INTO `historial_salarios` VALUES
(4,1,'2025-10-13 16:03:05',0.00,325.16),
(5,2,'2025-10-13 18:20:20',0.00,1320.00),
(6,3,'2025-10-13 18:20:20',0.00,450.00),
(7,4,'2025-10-13 18:20:20',0.00,392.86);
/*!40000 ALTER TABLE `historial_salarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horas_extra`
--

DROP TABLE IF EXISTS `horas_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `horas_extra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_trabajador` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `total_horas` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_trabajador` (`id_trabajador`),
  CONSTRAINT `horas_extra_ibfk_1` FOREIGN KEY (`id_trabajador`) REFERENCES `trabajadores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horas_extra`
--

LOCK TABLES `horas_extra` WRITE;
/*!40000 ALTER TABLE `horas_extra` DISABLE KEYS */;
INSERT INTO `horas_extra` VALUES
(11,3,'2025-10-10',3.00);
/*!40000 ALTER TABLE `horas_extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incapacidades`
--

DROP TABLE IF EXISTS `incapacidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `incapacidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_trabajador` int(11) NOT NULL,
  `dias` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `tipo_incapacidad` varchar(100) DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_trabajador` (`id_trabajador`),
  CONSTRAINT `incapacidades_ibfk_1` FOREIGN KEY (`id_trabajador`) REFERENCES `trabajadores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incapacidades`
--

LOCK TABLES `incapacidades` WRITE;
/*!40000 ALTER TABLE `incapacidades` DISABLE KEYS */;
/*!40000 ALTER TABLE `incapacidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infonavit`
--

DROP TABLE IF EXISTS `infonavit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `infonavit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_trabajador` int(11) NOT NULL,
  `tipo` text NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `fecha_inicial` date NOT NULL,
  `fecha_final` date DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `num_credito` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infonavit`
--

LOCK TABLES `infonavit` WRITE;
/*!40000 ALTER TABLE `infonavit` DISABLE KEYS */;
/*!40000 ALTER TABLE `infonavit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listas`
--

DROP TABLE IF EXISTS `listas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `listas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `puesto` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `moneda` varchar(255) DEFAULT NULL,
  `unidades` varchar(255) DEFAULT NULL,
  `responsables` varchar(255) DEFAULT NULL,
  `contrato` varchar(255) DEFAULT NULL,
  `turno` varchar(255) DEFAULT NULL,
  `bono` varchar(255) DEFAULT NULL,
  `departamento` varchar(100) DEFAULT NULL,
  `objeto` varchar(100) DEFAULT NULL,
  `planta` varchar(100) DEFAULT NULL,
  `empresa` varchar(100) DEFAULT NULL,
  `forma_pago` varchar(100) DEFAULT NULL,
  `tipo_incapacidad` text DEFAULT NULL,
  `herramienta` text DEFAULT NULL,
  `area_herramienta` text DEFAULT NULL,
  `supervisor` text DEFAULT NULL,
  `tipo_contrato` varchar(100) DEFAULT NULL,
  `epp` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_puesto` (`puesto`),
  UNIQUE KEY `unique_area_taller` (`area`),
  UNIQUE KEY `unique_tipo_moneda` (`moneda`),
  UNIQUE KEY `unique_tipo_unidades` (`unidades`),
  UNIQUE KEY `unique_responsables` (`responsables`),
  UNIQUE KEY `unique_contrato` (`contrato`),
  UNIQUE KEY `unique_turno` (`turno`),
  UNIQUE KEY `unique_tipo_bono` (`bono`),
  UNIQUE KEY `tipo` (`departamento`,`objeto`),
  UNIQUE KEY `planta` (`planta`),
  UNIQUE KEY `empresa` (`empresa`),
  UNIQUE KEY `tipo_contrato` (`tipo_contrato`),
  UNIQUE KEY `tipo_incapacidad` (`tipo_incapacidad`) USING HASH,
  UNIQUE KEY `herramienta` (`herramienta`,`area_herramienta`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=690 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listas`
--

LOCK TABLES `listas` WRITE;
/*!40000 ALTER TABLE `listas` DISABLE KEYS */;
INSERT INTO `listas` VALUES
(1,NULL,NULL,NULL,NULL,'Rafael Garza',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Monterrey',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(3,NULL,NULL,NULL,'Servicios',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(4,NULL,NULL,NULL,'pzs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(5,NULL,NULL,NULL,'Lts',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(6,NULL,NULL,NULL,'gr',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(7,NULL,NULL,NULL,'kg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(9,NULL,NULL,NULL,'caja',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10,NULL,NULL,NULL,'pares',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(11,NULL,NULL,'MXN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(12,NULL,NULL,'dlls',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(13,NULL,'Programacion',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Desempeño',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prueba herr 1',NULL,NULL,NULL,NULL),
(16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'area_prueba',NULL,NULL,NULL),
(17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ángulo ',NULL,NULL,NULL,NULL),
(18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'árbol p/sierracopa',NULL,NULL,NULL,NULL),
(19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'arco segueta ',NULL,NULL,NULL,NULL),
(20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'arco segueta de 21\"',NULL,NULL,NULL,NULL),
(21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'arnés de seguridad cuerpo completo (amarillo)',NULL,NULL,NULL,NULL),
(22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'arnés de seguridad cuerpo completo (rojo)',NULL,NULL,NULL,NULL),
(23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'arnés de seguridad cuerpo completo (verde)',NULL,NULL,NULL,NULL),
(24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aspiradora Ridgid',NULL,NULL,NULL,NULL),
(25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'avellanador',NULL,NULL,NULL,NULL),
(26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'barra de uña',NULL,NULL,NULL,NULL),
(27,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'barra recta',NULL,NULL,NULL,NULL),
(28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'block escala',NULL,NULL,NULL,NULL),
(29,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'botador',NULL,NULL,NULL,NULL),
(30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'botador 1/4\"',NULL,NULL,NULL,NULL),
(31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 1/2\"',NULL,NULL,NULL,NULL),
(32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 1/4\"',NULL,NULL,NULL,NULL),
(33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 1/8\"',NULL,NULL,NULL,NULL),
(34,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 11/16\"',NULL,NULL,NULL,NULL),
(35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 13/16\"',NULL,NULL,NULL,NULL),
(36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 3/16\"',NULL,NULL,NULL,NULL),
(37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 3/4\"',NULL,NULL,NULL,NULL),
(38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 3/8\"',NULL,NULL,NULL,NULL),
(39,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 5/16\"',NULL,NULL,NULL,NULL),
(40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 5/8\"',NULL,NULL,NULL,NULL),
(41,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 7/16\"',NULL,NULL,NULL,NULL),
(42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 7/8\"',NULL,NULL,NULL,NULL),
(43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 9/16\"',NULL,NULL,NULL,NULL),
(44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'brocha de 2\"',NULL,NULL,NULL,NULL),
(45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cable trfascico con clabija para prueba de motor (',NULL,NULL,NULL,NULL),
(46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'caja DeWalt p/herramienta',NULL,NULL,NULL,NULL),
(47,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'caja urrea p/herramienta',NULL,NULL,NULL,NULL),
(48,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cajon movil para herramienta',NULL,NULL,NULL,NULL),
(49,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'candado de bloquéo',NULL,NULL,NULL,NULL),
(50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'careta para soldar',NULL,NULL,NULL,NULL),
(51,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cautin para soldar con estaño',NULL,NULL,NULL,NULL),
(52,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cepillo de alambre p/ac. inox',NULL,NULL,NULL,NULL),
(53,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cepillo de alambre p/ac. negro',NULL,NULL,NULL,NULL),
(54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cepillo para madera',NULL,NULL,NULL,NULL),
(55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'chispa para equipo de corte',NULL,NULL,NULL,NULL),
(56,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cincel',NULL,NULL,NULL,NULL),
(57,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cincel 1\" x 12\"',NULL,NULL,NULL,NULL),
(58,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cincel 1\" x 8\"',NULL,NULL,NULL,NULL),
(59,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cincel sds plus (p/rotomartillo)',NULL,NULL,NULL,NULL),
(60,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cinta métrica 5mts',NULL,NULL,NULL,NULL),
(61,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cinta metrica de rollo 20 mts',NULL,NULL,NULL,NULL),
(62,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cinta roja peligro',NULL,NULL,NULL,NULL),
(63,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'clavija trifasica Leviton p/220v',NULL,NULL,NULL,NULL),
(64,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'compás',NULL,NULL,NULL,NULL),
(65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cortadora de metal marca makita ',NULL,NULL,NULL,NULL),
(66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cuchara de pico 9\" p/cemento',NULL,NULL,NULL,NULL),
(67,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado 1/2\" x 13/16\"',NULL,NULL,NULL,NULL),
(68,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado 1/2\" x 3/4\"',NULL,NULL,NULL,NULL),
(69,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado 1/2\" x 5/16\"',NULL,NULL,NULL,NULL),
(70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2 x 9/16',NULL,NULL,NULL,NULL),
(71,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 1 1/6\"',NULL,NULL,NULL,NULL),
(72,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 1 1/8\"',NULL,NULL,NULL,NULL),
(73,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 1\"',NULL,NULL,NULL,NULL),
(74,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 1/2\"',NULL,NULL,NULL,NULL),
(75,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 10mm',NULL,NULL,NULL,NULL),
(76,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 11/16\" ',NULL,NULL,NULL,NULL),
(77,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 13/16\"',NULL,NULL,NULL,NULL),
(78,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 15/16\"',NULL,NULL,NULL,NULL),
(79,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 17/32\"',NULL,NULL,NULL,NULL),
(80,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 3/4\"',NULL,NULL,NULL,NULL),
(81,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 5/8\"',NULL,NULL,NULL,NULL),
(82,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 7/16\"',NULL,NULL,NULL,NULL),
(83,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 7/8\"',NULL,NULL,NULL,NULL),
(84,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 9/16\"',NULL,NULL,NULL,NULL),
(85,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/4\" x 5/32\"',NULL,NULL,NULL,NULL),
(86,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/4\" x 7/32\"',NULL,NULL,NULL,NULL),
(87,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/4\" x 7mm',NULL,NULL,NULL,NULL),
(88,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 3/4\" x 15/16\"',NULL,NULL,NULL,NULL),
(89,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 3/8\" x 11/16\"',NULL,NULL,NULL,NULL),
(90,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 3/8\" x 3/4\"',NULL,NULL,NULL,NULL),
(91,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'desarmador clemero plano',NULL,NULL,NULL,NULL),
(92,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'desarmador cruz/estrella',NULL,NULL,NULL,NULL),
(93,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'desarmador de caja',NULL,NULL,NULL,NULL),
(94,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'desarmador plano',NULL,NULL,NULL,NULL),
(95,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'despernador p/cadena P.25-60',NULL,NULL,NULL,NULL),
(96,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'equipo de argón completo (manguera, cable, regulad',NULL,NULL,NULL,NULL),
(97,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'escalera de extension de fibra de vidrio',NULL,NULL,NULL,NULL),
(98,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'escalera de tijera 5 peldaños (fibra de vidrio nar',NULL,NULL,NULL,NULL),
(99,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'escalera de tijera 7 peldaños (fibra de vidrio nar',NULL,NULL,NULL,NULL),
(100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'escofina 1/2 caña',NULL,NULL,NULL,NULL),
(101,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'escuadra 24\"',NULL,NULL,NULL,NULL),
(102,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'escuadra geométrica de madera',NULL,NULL,NULL,NULL),
(103,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eslinga grande',NULL,NULL,NULL,NULL),
(104,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'esmerilador recto',NULL,NULL,NULL,NULL),
(105,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'espatula de 3\"',NULL,NULL,NULL,NULL),
(106,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extensión 110v 15mts uso rudo',NULL,NULL,NULL,NULL),
(107,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extension 110v 20mts A.Q.',NULL,NULL,NULL,NULL),
(108,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extension 110v 20mts A.Q. #2',NULL,NULL,NULL,NULL),
(109,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extension 110v 20mts A.Q. #3',NULL,NULL,NULL,NULL),
(110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extension 110v 20mts M.V.',NULL,NULL,NULL,NULL),
(111,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extension 110v azul',NULL,NULL,NULL,NULL),
(112,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extension 110v inst. 1 (20 mts)',NULL,NULL,NULL,NULL),
(113,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extension 110v inst. 2 (20mts)',NULL,NULL,NULL,NULL),
(114,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extension 110v(manchas amarillas)',NULL,NULL,NULL,NULL),
(115,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extensión p/ratch de 1/2\" x  2 1/2\"',NULL,NULL,NULL,NULL),
(116,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extensión p/ratch de 1/2\" x 10\"',NULL,NULL,NULL,NULL),
(117,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extensión p/ratch de 1/2\" x 2 1/2\"',NULL,NULL,NULL,NULL),
(118,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extensión p/ratch de 1/2\" x 5\"',NULL,NULL,NULL,NULL),
(119,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'fresa p/taladro',NULL,NULL,NULL,NULL),
(120,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'gato hidraulico con cap. 5 ton',NULL,NULL,NULL,NULL),
(121,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'gato hidráulico de botella 2.5Ton (rojo)',NULL,NULL,NULL,NULL),
(122,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'gato hidraulico de botella 20Ton (negro)',NULL,NULL,NULL,NULL),
(123,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'gato hidráulico de botella 2Ton',NULL,NULL,NULL,NULL),
(124,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'gato hidráulico de botella cap. 5 ton',NULL,NULL,NULL,NULL),
(125,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'gato hidráulico de botella cap.1.5 Ton',NULL,NULL,NULL,NULL),
(126,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'gato hidraulico de botella con cap. 1.5 ton',NULL,NULL,NULL,NULL),
(127,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'grillete chico',NULL,NULL,NULL,NULL),
(128,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'grillete grande',NULL,NULL,NULL,NULL),
(129,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'grillete mediano',NULL,NULL,NULL,NULL),
(130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'guía de rollo Rojo',NULL,NULL,NULL,NULL),
(131,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'jgo de llaves allen mm',NULL,NULL,NULL,NULL),
(132,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'jgo de llaves allen std',NULL,NULL,NULL,NULL),
(133,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'jgo de llaves torck',NULL,NULL,NULL,NULL),
(134,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'juego de cuñas para calibrar ',NULL,NULL,NULL,NULL),
(135,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'juego de dado p/ tarraja 1 1/2\"',NULL,NULL,NULL,NULL),
(136,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'juego de dado p/ tarraja 1 1/4\"',NULL,NULL,NULL,NULL),
(137,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'juego de dado p/ tarraja 1\"',NULL,NULL,NULL,NULL),
(138,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'juego de dado p/ tarraja 1/2\"',NULL,NULL,NULL,NULL),
(139,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'juego de dado p/ tarraja 2\"',NULL,NULL,NULL,NULL),
(140,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'juego de letras de golpe de 3/4\"',NULL,NULL,NULL,NULL),
(141,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'juego de micrómetro de profundidad ',NULL,NULL,NULL,NULL),
(142,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'juego de micrómetros de barra ',NULL,NULL,NULL,NULL),
(143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'juego letras de golpe',NULL,NULL,NULL,NULL),
(144,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'juego números de golpe',NULL,NULL,NULL,NULL),
(145,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lampara amarilla doble (de focos)',NULL,NULL,NULL,NULL),
(146,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lampara amarilla doble (reflectores led)',NULL,NULL,NULL,NULL),
(147,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lave allen de 1/4\"',NULL,NULL,NULL,NULL),
(148,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lijadora DeWalt (disco velcro)',NULL,NULL,NULL,NULL),
(149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lijadora Makita (de pliego)',NULL,NULL,NULL,NULL),
(150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lima 1/2 caña aspera',NULL,NULL,NULL,NULL),
(151,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lima cuadrada',NULL,NULL,NULL,NULL),
(152,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lima media caña',NULL,NULL,NULL,NULL),
(153,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lima plana',NULL,NULL,NULL,NULL),
(154,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lima triangular',NULL,NULL,NULL,NULL),
(155,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'limatón 1/2\"',NULL,NULL,NULL,NULL),
(156,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'limatón 1/4\"',NULL,NULL,NULL,NULL),
(157,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'limatón 3/8\"',NULL,NULL,NULL,NULL),
(158,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'linea de vida para posicionamiento',NULL,NULL,NULL,NULL),
(159,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llana lisa 11\" x 5\"',NULL,NULL,NULL,NULL),
(160,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 1/16\"',NULL,NULL,NULL,NULL),
(161,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 1/2\"',NULL,NULL,NULL,NULL),
(162,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 1/8\"',NULL,NULL,NULL,NULL),
(163,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 10mm',NULL,NULL,NULL,NULL),
(164,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 14mm',NULL,NULL,NULL,NULL),
(165,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 19mm',NULL,NULL,NULL,NULL),
(166,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 3/16\"',NULL,NULL,NULL,NULL),
(167,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 5/16\" ',NULL,NULL,NULL,NULL),
(168,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 5/8\"',NULL,NULL,NULL,NULL),
(169,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 7/32\"',NULL,NULL,NULL,NULL),
(170,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 8mm ',NULL,NULL,NULL,NULL),
(171,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 9/64\"',NULL,NULL,NULL,NULL),
(172,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 9mm',NULL,NULL,NULL,NULL),
(173,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de puño',NULL,NULL,NULL,NULL),
(174,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de puño 1/4\"',NULL,NULL,NULL,NULL),
(175,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de puño 1/8\"',NULL,NULL,NULL,NULL),
(176,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de puño 3/16\"',NULL,NULL,NULL,NULL),
(177,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de puño 5/32\"',NULL,NULL,NULL,NULL),
(178,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de3/8\"',NULL,NULL,NULL,NULL),
(179,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen L',NULL,NULL,NULL,NULL),
(180,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave corona 7/8\" - 13/16\"',NULL,NULL,NULL,NULL),
(181,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave corona Z 14-15mm',NULL,NULL,NULL,NULL),
(182,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave corona Z 16-17mm',NULL,NULL,NULL,NULL),
(183,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave corona Z 21-23mm',NULL,NULL,NULL,NULL),
(184,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave española 1\" x 15/16\"',NULL,NULL,NULL,NULL),
(185,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave española 11/16\"-3/4\"',NULL,NULL,NULL,NULL),
(186,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave española 14-15mm',NULL,NULL,NULL,NULL),
(187,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave española 19.0 - 22.2mm',NULL,NULL,NULL,NULL),
(188,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave española 36-41mm',NULL,NULL,NULL,NULL),
(189,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave española 6-7mm',NULL,NULL,NULL,NULL),
(190,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave española de palanca 42mm',NULL,NULL,NULL,NULL),
(191,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave matraca 1/2\"-9/16\"',NULL,NULL,NULL,NULL),
(192,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave matraca 1/2\"-9/16\" con quiebre ',NULL,NULL,NULL,NULL),
(193,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 1 1/16\"',NULL,NULL,NULL,NULL),
(194,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 1 1/8\"',NULL,NULL,NULL,NULL),
(195,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 1\"',NULL,NULL,NULL,NULL),
(196,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 1/2\"',NULL,NULL,NULL,NULL),
(197,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 10mm',NULL,NULL,NULL,NULL),
(198,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 11/16\"',NULL,NULL,NULL,NULL),
(199,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 13/16\"',NULL,NULL,NULL,NULL),
(200,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 15/16\"',NULL,NULL,NULL,NULL),
(201,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 16mm',NULL,NULL,NULL,NULL),
(202,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 17mm',NULL,NULL,NULL,NULL),
(203,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 24mm',NULL,NULL,NULL,NULL),
(204,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 3/4\"',NULL,NULL,NULL,NULL),
(205,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 5/8\"',NULL,NULL,NULL,NULL),
(206,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 7/16\"',NULL,NULL,NULL,NULL),
(207,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 7/8\"',NULL,NULL,NULL,NULL),
(208,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 9/16\"',NULL,NULL,NULL,NULL),
(209,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta matraca 10mm',NULL,NULL,NULL,NULL),
(210,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave para minipulidor',NULL,NULL,NULL,NULL),
(211,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave para pulidor',NULL,NULL,NULL,NULL),
(212,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave para taladro 1/2\"',NULL,NULL,NULL,NULL),
(213,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave para taladro de banco o magnético',NULL,NULL,NULL,NULL),
(214,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave perica 12\"',NULL,NULL,NULL,NULL),
(215,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave perica 6\"',NULL,NULL,NULL,NULL),
(216,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave perica 8\"',NULL,NULL,NULL,NULL),
(217,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lona antiflama 1m. x 1m.',NULL,NULL,NULL,NULL),
(218,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lona antiflama grande',NULL,NULL,NULL,NULL),
(219,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lona antiflama mediana',NULL,NULL,NULL,NULL),
(220,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lote de brocas',NULL,NULL,NULL,NULL),
(221,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lote de llaves allen',NULL,NULL,NULL,NULL),
(222,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lote de machuelos',NULL,NULL,NULL,NULL),
(223,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'machuelo std 1/2\"',NULL,NULL,NULL,NULL),
(224,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'machuelo std 1/4\"',NULL,NULL,NULL,NULL),
(225,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'machuelo std 3/16\"',NULL,NULL,NULL,NULL),
(226,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'machuelo std 3/8\"',NULL,NULL,NULL,NULL),
(227,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'machuelo std 5/16\"',NULL,NULL,NULL,NULL),
(228,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'machuelo std 5/8',NULL,NULL,NULL,NULL),
(229,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'machuelo std 5/8\"',NULL,NULL,NULL,NULL),
(230,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'machuelo std 7/16\"',NULL,NULL,NULL,NULL),
(231,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maneral de 1/2\" x 12\"',NULL,NULL,NULL,NULL),
(232,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maneral p/machuelo 1/4\"',NULL,NULL,NULL,NULL),
(233,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maneral p/machuelo 3/16\"-1/2\"',NULL,NULL,NULL,NULL),
(234,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maneral para machuelo 1/2\"-1 1/16\"',NULL,NULL,NULL,NULL),
(235,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maneral para machuelo 1/2\"-7/8\"',NULL,NULL,NULL,NULL),
(236,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maneral tarraja 3/8\"-1 1/2\"',NULL,NULL,NULL,NULL),
(237,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maquina de soldar portatil kherer (completa)',NULL,NULL,NULL,NULL),
(238,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maquina de soldar portatil maraga',NULL,NULL,NULL,NULL),
(239,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maquina de soldar portatil maraga (completa)',NULL,NULL,NULL,NULL),
(240,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maquina de soldar portatil sweiss (completa)+',NULL,NULL,NULL,NULL),
(241,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maquina dobla tubing',NULL,NULL,NULL,NULL),
(242,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maquina grapadora para banda ',NULL,NULL,NULL,NULL),
(243,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'martillo bola',NULL,NULL,NULL,NULL),
(244,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'martillo de plastico',NULL,NULL,NULL,NULL),
(245,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'martillo de uña',NULL,NULL,NULL,NULL),
(246,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'martillo de uña 16oz',NULL,NULL,NULL,NULL),
(247,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'martillo hojalatero',NULL,NULL,NULL,NULL),
(248,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'martillo hojalatero doble cabeza',NULL,NULL,NULL,NULL),
(249,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mazo 12 lbs',NULL,NULL,NULL,NULL),
(250,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mazo 3 lbs',NULL,NULL,NULL,NULL),
(251,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mazo 4 lbs',NULL,NULL,NULL,NULL),
(252,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mazo 8 lbs',NULL,NULL,NULL,NULL),
(253,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mazo de 8 oz',NULL,NULL,NULL,NULL),
(254,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mazo de goma',NULL,NULL,NULL,NULL),
(255,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mazo de hule blanco ',NULL,NULL,NULL,NULL),
(256,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'minipulidor 4 1/2\" makita (nvo 31/07/23)',NULL,NULL,NULL,NULL),
(257,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'minupulidor makita 4 1/2\"',NULL,NULL,NULL,NULL),
(258,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'multimetro digital de gancho (steren azul) c/estuc',NULL,NULL,NULL,NULL),
(259,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'navaja exsacto',NULL,NULL,NULL,NULL),
(260,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'nivel 14\"',NULL,NULL,NULL,NULL),
(261,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'nivel 18\"',NULL,NULL,NULL,NULL),
(262,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'nivel 9\"',NULL,NULL,NULL,NULL),
(263,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'nivel de presición',NULL,NULL,NULL,NULL),
(264,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'nivel laser huepar',NULL,NULL,NULL,NULL),
(265,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'nivel torpedo',NULL,NULL,NULL,NULL),
(266,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'nivel torpedo 5\"',NULL,NULL,NULL,NULL),
(267,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pala cuadrada pretul ',NULL,NULL,NULL,NULL),
(268,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'perchera electrica ',NULL,NULL,NULL,NULL),
(269,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pinza de presión',NULL,NULL,NULL,NULL),
(270,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pinza de punta',NULL,NULL,NULL,NULL),
(271,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pinza electrica',NULL,NULL,NULL,NULL),
(272,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pinza mecánica',NULL,NULL,NULL,NULL),
(273,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pinza pela cable cal.22 a 10',NULL,NULL,NULL,NULL),
(274,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pinza perica',NULL,NULL,NULL,NULL),
(275,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pinza ponchadora de presion',NULL,NULL,NULL,NULL),
(276,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pinza ponchadora eléctrica',NULL,NULL,NULL,NULL),
(277,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pinza porta candado de bloquéo',NULL,NULL,NULL,NULL),
(278,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pistola de impacto dewalt DCF889 (nva)',NULL,NULL,NULL,NULL),
(279,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pistola de impacto dewalt MOD.DCF880',NULL,NULL,NULL,NULL),
(280,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pistola para silicon',NULL,NULL,NULL,NULL),
(281,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'plomada e hilo',NULL,NULL,NULL,NULL),
(282,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prensa p/tubo, para banco',NULL,NULL,NULL,NULL),
(283,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prueba',NULL,NULL,NULL,NULL),
(284,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pulidor grande 7\"',NULL,NULL,NULL,NULL),
(285,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'punto de golpe',NULL,NULL,NULL,NULL),
(286,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ratch de 1/2\"',NULL,NULL,NULL,NULL),
(287,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rayador metálico (hechizo)',NULL,NULL,NULL,NULL),
(288,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'regla metalica de 60 cm',NULL,NULL,NULL,NULL),
(289,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'regla metalica de 60cm',NULL,NULL,NULL,NULL),
(290,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'remachadora de acordeon truper naranja',NULL,NULL,NULL,NULL),
(291,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'remachadora tipo acordeón',NULL,NULL,NULL,NULL),
(292,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'remachadora tipo pistola',NULL,NULL,NULL,NULL),
(293,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'remchadora de acordeon roja',NULL,NULL,NULL,NULL),
(294,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rotomartillo DeWalt c/estuche, bcs sds plus',NULL,NULL,NULL,NULL),
(295,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rotomartillo makita HR2470 c/estuche, bca sds 3/8',NULL,NULL,NULL,NULL),
(296,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rotomartillo makita HR2470 c/estuche, bcas sds 3/8',NULL,NULL,NULL,NULL),
(297,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sacabocados',NULL,NULL,NULL,NULL),
(298,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sargento de 1 metro (completo)',NULL,NULL,NULL,NULL),
(299,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'serrucho',NULL,NULL,NULL,NULL),
(300,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sierra cinta portatil KNOVA',NULL,NULL,NULL,NULL),
(301,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sierra circular DW',NULL,NULL,NULL,NULL),
(302,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sierra sable makita JR3050T c/estuche',NULL,NULL,NULL,NULL),
(303,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sinta metrica de 20 m',NULL,NULL,NULL,NULL),
(304,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'steelson 14\"',NULL,NULL,NULL,NULL),
(305,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'steelson 18\"',NULL,NULL,NULL,NULL),
(306,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'steelson 24\"',NULL,NULL,NULL,NULL),
(307,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'steelson 36\"',NULL,NULL,NULL,NULL),
(308,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'talache',NULL,NULL,NULL,NULL),
(309,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taladro 1/2\" DW',NULL,NULL,NULL,NULL),
(310,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taladro 1/2\" DW (nvo 31/07/23)',NULL,NULL,NULL,NULL),
(311,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taladro 1/2\" makita',NULL,NULL,NULL,NULL),
(312,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taladro de 1/2\" DW (nvo 13/05/24)',NULL,NULL,NULL,NULL),
(313,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taladro de 1/2\" DW (nvo 31/07/23)',NULL,NULL,NULL,NULL),
(314,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taladro de ángulo 3/8\"',NULL,NULL,NULL,NULL),
(315,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taladro de ángulo 3/8\" 0222',NULL,NULL,NULL,NULL),
(316,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taladro DW 1/2\" (nvo 31/07/23)',NULL,NULL,NULL,NULL),
(317,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taladro DW de 1/2\" (nvo 07/05/24)',NULL,NULL,NULL,NULL),
(318,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taladro inalámbrico dewalt con cargador y bateria ',NULL,NULL,NULL,NULL),
(319,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taladro inalámbrico milwaukee con cargador y bater',NULL,NULL,NULL,NULL),
(320,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taladro rotomartillo dewalt de 1/2\"',NULL,NULL,NULL,NULL),
(321,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tarraja  hasta 2 1/2\"',NULL,NULL,NULL,NULL),
(322,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tarraja HPTR 2AR',NULL,NULL,NULL,NULL),
(323,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tarraja HPTR 3-A',NULL,NULL,NULL,NULL),
(324,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tecle tensor ',NULL,NULL,NULL,NULL),
(325,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tenaza 11R',NULL,NULL,NULL,NULL),
(326,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tenaza 18R',NULL,NULL,NULL,NULL),
(327,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tenaza 6R',NULL,NULL,NULL,NULL),
(328,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'termo 20Lts (naranja)',NULL,NULL,NULL,NULL),
(329,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'termo 30Lts (naranja) ',NULL,NULL,NULL,NULL),
(330,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'thé+rmo ',NULL,NULL,NULL,NULL),
(331,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tijera grande para lamina',NULL,NULL,NULL,NULL),
(332,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tijera para lamina',NULL,NULL,NULL,NULL),
(333,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tiralineas',NULL,NULL,NULL,NULL),
(334,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'torniquete de 12\"',NULL,NULL,NULL,NULL),
(335,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'torniquete de 8\"',NULL,NULL,NULL,NULL),
(336,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'transportador ',NULL,NULL,NULL,NULL),
(337,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'transportador de grados INSIZE (metalico)',NULL,NULL,NULL,NULL),
(338,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'turbina',NULL,NULL,NULL,NULL),
(339,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'turbina makita',NULL,NULL,NULL,NULL),
(340,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vernier digital 24\" INSIZE',NULL,NULL,NULL,NULL),
(341,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ALMACEN GENERAL',NULL,NULL,NULL),
(342,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'caja de instalaciones',NULL,NULL,NULL),
(343,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CAJON APOLONIO ARANDA',NULL,NULL,NULL),
(344,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CAJON ARTURO TORRES',NULL,NULL,NULL),
(345,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CAJON BAJO CAMPANA/TIMBRE',NULL,NULL,NULL),
(346,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CAJON ENTRADA ALMACEN',NULL,NULL,NULL),
(347,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CAJON ENTRADA TALLER',NULL,NULL,NULL),
(348,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CAJON ERNESTO COVARRUBIAS',NULL,NULL,NULL),
(349,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CAJON FRENTE ALMACEN',NULL,NULL,NULL),
(350,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CAJON IGNACIO JIMENEZ',NULL,NULL,NULL),
(351,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CAJON JORDIN SOLIS',NULL,NULL,NULL),
(352,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CAJON LUIS PEREZ',NULL,NULL,NULL),
(353,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CAJON PROFIRIO JIMENEZ',NULL,NULL,NULL),
(354,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CAJON ROBERTO MACIAS',NULL,NULL,NULL),
(355,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CAJON VALDEMAR GUERRERO',NULL,NULL,NULL),
(356,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EPP',NULL,NULL,NULL),
(357,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'equipo de argón (manguera, cable y manómetro)',NULL,NULL,NULL),
(358,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extraviado/baja',NULL,NULL,NULL),
(359,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'HERRAMIENTA EN TALLER DE BAT',NULL,NULL,NULL),
(360,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'HERRAMIENTA EN TALLER DE SIMSA/REHUNA',NULL,NULL,NULL),
(361,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'JAULA AZUL',NULL,NULL,NULL),
(362,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lampara amarilla doble (p/focos)',NULL,NULL,NULL),
(363,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lampara amarilla doble (reflectores led)',NULL,NULL,NULL),
(364,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taller de bat',NULL,NULL,NULL),
(365,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ángulo ',NULL,NULL,NULL,NULL),
(366,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'árbol p/sierracopa',NULL,NULL,NULL,NULL),
(367,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'arco segueta ',NULL,NULL,NULL,NULL),
(368,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'arco segueta de 21\"',NULL,NULL,NULL,NULL),
(369,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'arnés de seguridad cuerpo completo (amarillo)',NULL,NULL,NULL,NULL),
(370,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'arnés de seguridad cuerpo completo (rojo)',NULL,NULL,NULL,NULL),
(371,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'arnés de seguridad cuerpo completo (verde)',NULL,NULL,NULL,NULL),
(372,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aspiradora Ridgid',NULL,NULL,NULL,NULL),
(373,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'avellanador',NULL,NULL,NULL,NULL),
(374,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'barra de uña',NULL,NULL,NULL,NULL),
(375,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'barra recta',NULL,NULL,NULL,NULL),
(376,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'block escala',NULL,NULL,NULL,NULL),
(377,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'botador',NULL,NULL,NULL,NULL),
(378,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'botador 1/4\"',NULL,NULL,NULL,NULL),
(379,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 1/2\"',NULL,NULL,NULL,NULL),
(380,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 1/4\"',NULL,NULL,NULL,NULL),
(381,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 1/8\"',NULL,NULL,NULL,NULL),
(382,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 11/16\"',NULL,NULL,NULL,NULL),
(383,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 13/16\"',NULL,NULL,NULL,NULL),
(384,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 3/16\"',NULL,NULL,NULL,NULL),
(385,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 3/4\"',NULL,NULL,NULL,NULL),
(386,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 3/8\"',NULL,NULL,NULL,NULL),
(387,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 5/16\"',NULL,NULL,NULL,NULL),
(388,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 5/8\"',NULL,NULL,NULL,NULL),
(389,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 7/16\"',NULL,NULL,NULL,NULL),
(390,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 7/8\"',NULL,NULL,NULL,NULL),
(391,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'broca p/fierro 9/16\"',NULL,NULL,NULL,NULL),
(392,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'brocha de 2\"',NULL,NULL,NULL,NULL),
(393,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cable trfascico con clabija para prueba de motor (',NULL,NULL,NULL,NULL),
(394,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'caja DeWalt p/herramienta',NULL,NULL,NULL,NULL),
(395,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'caja urrea p/herramienta',NULL,NULL,NULL,NULL),
(396,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cajon movil para herramienta',NULL,NULL,NULL,NULL),
(397,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'candado de bloquéo',NULL,NULL,NULL,NULL),
(398,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'careta para soldar',NULL,NULL,NULL,NULL),
(399,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cautin para soldar con estaño',NULL,NULL,NULL,NULL),
(400,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cepillo de alambre p/ac. inox',NULL,NULL,NULL,NULL),
(401,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cepillo de alambre p/ac. negro',NULL,NULL,NULL,NULL),
(402,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cepillo para madera',NULL,NULL,NULL,NULL),
(403,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'chispa para equipo de corte',NULL,NULL,NULL,NULL),
(404,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cincel',NULL,NULL,NULL,NULL),
(405,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cincel 1\" x 12\"',NULL,NULL,NULL,NULL),
(406,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cincel 1\" x 8\"',NULL,NULL,NULL,NULL),
(407,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cincel sds plus (p/rotomartillo)',NULL,NULL,NULL,NULL),
(408,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cinta métrica 5mts',NULL,NULL,NULL,NULL),
(409,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cinta metrica de rollo 20 mts',NULL,NULL,NULL,NULL),
(410,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cinta roja peligro',NULL,NULL,NULL,NULL),
(411,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'clavija trifasica Leviton p/220v',NULL,NULL,NULL,NULL),
(412,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'compás',NULL,NULL,NULL,NULL),
(413,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cortadora de metal marca makita ',NULL,NULL,NULL,NULL),
(414,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'cuchara de pico 9\" p/cemento',NULL,NULL,NULL,NULL),
(415,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado 1/2\" x 13/16\"',NULL,NULL,NULL,NULL),
(416,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado 1/2\" x 3/4\"',NULL,NULL,NULL,NULL),
(417,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado 1/2\" x 5/16\"',NULL,NULL,NULL,NULL),
(418,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2 x 9/16',NULL,NULL,NULL,NULL),
(419,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 1 1/6\"',NULL,NULL,NULL,NULL),
(420,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 1 1/8\"',NULL,NULL,NULL,NULL),
(421,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 1\"',NULL,NULL,NULL,NULL),
(422,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 1/2\"',NULL,NULL,NULL,NULL),
(423,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 10mm',NULL,NULL,NULL,NULL),
(424,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 11/16\" ',NULL,NULL,NULL,NULL),
(425,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 13/16\"',NULL,NULL,NULL,NULL),
(426,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 15/16\"',NULL,NULL,NULL,NULL),
(427,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 17/32\"',NULL,NULL,NULL,NULL),
(428,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 3/4\"',NULL,NULL,NULL,NULL),
(429,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 5/8\"',NULL,NULL,NULL,NULL),
(430,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 7/16\"',NULL,NULL,NULL,NULL),
(431,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 7/8\"',NULL,NULL,NULL,NULL),
(432,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/2\" x 9/16\"',NULL,NULL,NULL,NULL),
(433,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/4\" x 5/32\"',NULL,NULL,NULL,NULL),
(434,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/4\" x 7/32\"',NULL,NULL,NULL,NULL),
(435,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 1/4\" x 7mm',NULL,NULL,NULL,NULL),
(436,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 3/4\" x 15/16\"',NULL,NULL,NULL,NULL),
(437,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 3/8\" x 11/16\"',NULL,NULL,NULL,NULL),
(438,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dado de 3/8\" x 3/4\"',NULL,NULL,NULL,NULL),
(439,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'desarmador clemero plano',NULL,NULL,NULL,NULL),
(440,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'desarmador cruz/estrella',NULL,NULL,NULL,NULL),
(441,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'desarmador de caja',NULL,NULL,NULL,NULL),
(442,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'desarmador plano',NULL,NULL,NULL,NULL),
(443,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'despernador p/cadena P.25-60',NULL,NULL,NULL,NULL),
(444,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'equipo de argón completo (manguera, cable, regulad',NULL,NULL,NULL,NULL),
(445,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'escalera de extension de fibra de vidrio',NULL,NULL,NULL,NULL),
(446,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'escalera de tijera 5 peldaños (fibra de vidrio nar',NULL,NULL,NULL,NULL),
(447,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'escalera de tijera 7 peldaños (fibra de vidrio nar',NULL,NULL,NULL,NULL),
(448,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'escofina 1/2 caña',NULL,NULL,NULL,NULL),
(449,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'escuadra 24\"',NULL,NULL,NULL,NULL),
(450,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'escuadra geométrica de madera',NULL,NULL,NULL,NULL),
(451,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'eslinga grande',NULL,NULL,NULL,NULL),
(452,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'esmerilador recto',NULL,NULL,NULL,NULL),
(453,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'espatula de 3\"',NULL,NULL,NULL,NULL),
(454,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extensión 110v 15mts uso rudo',NULL,NULL,NULL,NULL),
(455,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extension 110v 20mts A.Q.',NULL,NULL,NULL,NULL),
(456,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extension 110v 20mts A.Q. #2',NULL,NULL,NULL,NULL),
(457,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extension 110v 20mts A.Q. #3',NULL,NULL,NULL,NULL),
(458,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extension 110v 20mts M.V.',NULL,NULL,NULL,NULL),
(459,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extension 110v azul',NULL,NULL,NULL,NULL),
(460,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extension 110v inst. 1 (20 mts)',NULL,NULL,NULL,NULL),
(461,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extension 110v inst. 2 (20mts)',NULL,NULL,NULL,NULL),
(462,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extension 110v(manchas amarillas)',NULL,NULL,NULL,NULL),
(463,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extensión p/ratch de 1/2\" x  2 1/2\"',NULL,NULL,NULL,NULL),
(464,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extensión p/ratch de 1/2\" x 10\"',NULL,NULL,NULL,NULL),
(465,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extensión p/ratch de 1/2\" x 2 1/2\"',NULL,NULL,NULL,NULL),
(466,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'extensión p/ratch de 1/2\" x 5\"',NULL,NULL,NULL,NULL),
(467,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'fresa p/taladro',NULL,NULL,NULL,NULL),
(468,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'gato hidraulico con cap. 5 ton',NULL,NULL,NULL,NULL),
(469,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'gato hidráulico de botella 2.5Ton (rojo)',NULL,NULL,NULL,NULL),
(470,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'gato hidraulico de botella 20Ton (negro)',NULL,NULL,NULL,NULL),
(471,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'gato hidráulico de botella 2Ton',NULL,NULL,NULL,NULL),
(472,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'gato hidráulico de botella cap. 5 ton',NULL,NULL,NULL,NULL),
(473,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'gato hidráulico de botella cap.1.5 Ton',NULL,NULL,NULL,NULL),
(474,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'gato hidraulico de botella con cap. 1.5 ton',NULL,NULL,NULL,NULL),
(475,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'grillete chico',NULL,NULL,NULL,NULL),
(476,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'grillete grande',NULL,NULL,NULL,NULL),
(477,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'grillete mediano',NULL,NULL,NULL,NULL),
(478,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'guía de rollo Rojo',NULL,NULL,NULL,NULL),
(479,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'jgo de llaves allen mm',NULL,NULL,NULL,NULL),
(480,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'jgo de llaves allen std',NULL,NULL,NULL,NULL),
(481,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'jgo de llaves torck',NULL,NULL,NULL,NULL),
(482,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'juego de cuñas para calibrar ',NULL,NULL,NULL,NULL),
(483,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'juego de dado p/ tarraja 1 1/2\"',NULL,NULL,NULL,NULL),
(484,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'juego de dado p/ tarraja 1 1/4\"',NULL,NULL,NULL,NULL),
(485,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'juego de dado p/ tarraja 1\"',NULL,NULL,NULL,NULL),
(486,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'juego de dado p/ tarraja 1/2\"',NULL,NULL,NULL,NULL),
(487,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'juego de dado p/ tarraja 2\"',NULL,NULL,NULL,NULL),
(488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'juego de letras de golpe de 3/4\"',NULL,NULL,NULL,NULL),
(489,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'juego de micrómetro de profundidad ',NULL,NULL,NULL,NULL),
(490,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'juego de micrómetros de barra ',NULL,NULL,NULL,NULL),
(491,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'juego letras de golpe',NULL,NULL,NULL,NULL),
(492,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'juego números de golpe',NULL,NULL,NULL,NULL),
(493,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lampara amarilla doble (de focos)',NULL,NULL,NULL,NULL),
(494,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lampara amarilla doble (reflectores led)',NULL,NULL,NULL,NULL),
(495,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lave allen de 1/4\"',NULL,NULL,NULL,NULL),
(496,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lijadora DeWalt (disco velcro)',NULL,NULL,NULL,NULL),
(497,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lijadora Makita (de pliego)',NULL,NULL,NULL,NULL),
(498,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lima 1/2 caña aspera',NULL,NULL,NULL,NULL),
(499,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lima cuadrada',NULL,NULL,NULL,NULL),
(500,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lima media caña',NULL,NULL,NULL,NULL),
(501,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lima plana',NULL,NULL,NULL,NULL),
(502,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lima triangular',NULL,NULL,NULL,NULL),
(503,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'limatón 1/2\"',NULL,NULL,NULL,NULL),
(504,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'limatón 1/4\"',NULL,NULL,NULL,NULL),
(505,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'limatón 3/8\"',NULL,NULL,NULL,NULL),
(506,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'linea de vida para posicionamiento',NULL,NULL,NULL,NULL),
(507,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llana lisa 11\" x 5\"',NULL,NULL,NULL,NULL),
(508,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 1/16\"',NULL,NULL,NULL,NULL),
(509,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 1/2\"',NULL,NULL,NULL,NULL),
(510,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 1/8\"',NULL,NULL,NULL,NULL),
(511,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 10mm',NULL,NULL,NULL,NULL),
(512,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 14mm',NULL,NULL,NULL,NULL),
(513,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 19mm',NULL,NULL,NULL,NULL),
(514,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 3/16\"',NULL,NULL,NULL,NULL),
(515,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 5/16\" ',NULL,NULL,NULL,NULL),
(516,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 5/8\"',NULL,NULL,NULL,NULL),
(517,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 7/32\"',NULL,NULL,NULL,NULL),
(518,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 8mm ',NULL,NULL,NULL,NULL),
(519,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 9/64\"',NULL,NULL,NULL,NULL),
(520,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de 9mm',NULL,NULL,NULL,NULL),
(521,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de puño',NULL,NULL,NULL,NULL),
(522,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de puño 1/4\"',NULL,NULL,NULL,NULL),
(523,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de puño 1/8\"',NULL,NULL,NULL,NULL),
(524,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de puño 3/16\"',NULL,NULL,NULL,NULL),
(525,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de puño 5/32\"',NULL,NULL,NULL,NULL),
(526,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen de3/8\"',NULL,NULL,NULL,NULL),
(527,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave allen L',NULL,NULL,NULL,NULL),
(528,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave corona 7/8\" - 13/16\"',NULL,NULL,NULL,NULL),
(529,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave corona Z 14-15mm',NULL,NULL,NULL,NULL),
(530,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave corona Z 16-17mm',NULL,NULL,NULL,NULL),
(531,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave corona Z 21-23mm',NULL,NULL,NULL,NULL),
(532,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave española 1\" x 15/16\"',NULL,NULL,NULL,NULL),
(533,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave española 11/16\"-3/4\"',NULL,NULL,NULL,NULL),
(534,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave española 14-15mm',NULL,NULL,NULL,NULL),
(535,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave española 19.0 - 22.2mm',NULL,NULL,NULL,NULL),
(536,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave española 36-41mm',NULL,NULL,NULL,NULL),
(537,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave española 6-7mm',NULL,NULL,NULL,NULL),
(538,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave española de palanca 42mm',NULL,NULL,NULL,NULL),
(539,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave matraca 1/2\"-9/16\"',NULL,NULL,NULL,NULL),
(540,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave matraca 1/2\"-9/16\" con quiebre ',NULL,NULL,NULL,NULL),
(541,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 1 1/16\"',NULL,NULL,NULL,NULL),
(542,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 1 1/8\"',NULL,NULL,NULL,NULL),
(543,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 1\"',NULL,NULL,NULL,NULL),
(544,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 1/2\"',NULL,NULL,NULL,NULL),
(545,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 10mm',NULL,NULL,NULL,NULL),
(546,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 11/16\"',NULL,NULL,NULL,NULL),
(547,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 13/16\"',NULL,NULL,NULL,NULL),
(548,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 15/16\"',NULL,NULL,NULL,NULL),
(549,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 16mm',NULL,NULL,NULL,NULL),
(550,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 17mm',NULL,NULL,NULL,NULL),
(551,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 24mm',NULL,NULL,NULL,NULL),
(552,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 3/4\"',NULL,NULL,NULL,NULL),
(553,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 5/8\"',NULL,NULL,NULL,NULL),
(554,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 7/16\"',NULL,NULL,NULL,NULL),
(555,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 7/8\"',NULL,NULL,NULL,NULL),
(556,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta 9/16\"',NULL,NULL,NULL,NULL),
(557,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave mixta matraca 10mm',NULL,NULL,NULL,NULL),
(558,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave para minipulidor',NULL,NULL,NULL,NULL),
(559,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave para pulidor',NULL,NULL,NULL,NULL),
(560,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave para taladro 1/2\"',NULL,NULL,NULL,NULL),
(561,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave para taladro de banco o magnético',NULL,NULL,NULL,NULL),
(562,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave perica 12\"',NULL,NULL,NULL,NULL),
(563,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave perica 6\"',NULL,NULL,NULL,NULL),
(564,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'llave perica 8\"',NULL,NULL,NULL,NULL),
(565,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lona antiflama 1m. x 1m.',NULL,NULL,NULL,NULL),
(566,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lona antiflama grande',NULL,NULL,NULL,NULL),
(567,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lona antiflama mediana',NULL,NULL,NULL,NULL),
(568,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lote de brocas',NULL,NULL,NULL,NULL),
(569,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lote de llaves allen',NULL,NULL,NULL,NULL),
(570,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'lote de machuelos',NULL,NULL,NULL,NULL),
(571,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'machuelo std 1/2\"',NULL,NULL,NULL,NULL),
(572,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'machuelo std 1/4\"',NULL,NULL,NULL,NULL),
(573,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'machuelo std 3/16\"',NULL,NULL,NULL,NULL),
(574,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'machuelo std 3/8\"',NULL,NULL,NULL,NULL),
(575,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'machuelo std 5/16\"',NULL,NULL,NULL,NULL),
(576,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'machuelo std 5/8',NULL,NULL,NULL,NULL),
(577,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'machuelo std 5/8\"',NULL,NULL,NULL,NULL),
(578,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'machuelo std 7/16\"',NULL,NULL,NULL,NULL),
(579,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maneral de 1/2\" x 12\"',NULL,NULL,NULL,NULL),
(580,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maneral p/machuelo 1/4\"',NULL,NULL,NULL,NULL),
(581,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maneral p/machuelo 3/16\"-1/2\"',NULL,NULL,NULL,NULL),
(582,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maneral para machuelo 1/2\"-1 1/16\"',NULL,NULL,NULL,NULL),
(583,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maneral para machuelo 1/2\"-7/8\"',NULL,NULL,NULL,NULL),
(584,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maneral tarraja 3/8\"-1 1/2\"',NULL,NULL,NULL,NULL),
(585,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maquina de soldar portatil kherer (completa)',NULL,NULL,NULL,NULL),
(586,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maquina de soldar portatil maraga',NULL,NULL,NULL,NULL),
(587,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maquina de soldar portatil maraga (completa)',NULL,NULL,NULL,NULL),
(588,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maquina de soldar portatil sweiss (completa)+',NULL,NULL,NULL,NULL),
(589,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maquina dobla tubing',NULL,NULL,NULL,NULL),
(590,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'maquina grapadora para banda ',NULL,NULL,NULL,NULL),
(591,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'martillo bola',NULL,NULL,NULL,NULL),
(592,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'martillo de plastico',NULL,NULL,NULL,NULL),
(593,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'martillo de uña',NULL,NULL,NULL,NULL),
(594,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'martillo de uña 16oz',NULL,NULL,NULL,NULL),
(595,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'martillo hojalatero',NULL,NULL,NULL,NULL),
(596,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'martillo hojalatero doble cabeza',NULL,NULL,NULL,NULL),
(597,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mazo 12 lbs',NULL,NULL,NULL,NULL),
(598,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mazo 3 lbs',NULL,NULL,NULL,NULL),
(599,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mazo 4 lbs',NULL,NULL,NULL,NULL),
(600,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mazo 8 lbs',NULL,NULL,NULL,NULL),
(601,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mazo de 8 oz',NULL,NULL,NULL,NULL),
(602,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mazo de goma',NULL,NULL,NULL,NULL),
(603,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mazo de hule blanco ',NULL,NULL,NULL,NULL),
(604,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'minipulidor 4 1/2\" makita (nvo 31/07/23)',NULL,NULL,NULL,NULL),
(605,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'minupulidor makita 4 1/2\"',NULL,NULL,NULL,NULL),
(606,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'multimetro digital de gancho (steren azul) c/estuc',NULL,NULL,NULL,NULL),
(607,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'navaja exsacto',NULL,NULL,NULL,NULL),
(608,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'nivel 14\"',NULL,NULL,NULL,NULL),
(609,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'nivel 18\"',NULL,NULL,NULL,NULL),
(610,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'nivel 9\"',NULL,NULL,NULL,NULL),
(611,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'nivel de presición',NULL,NULL,NULL,NULL),
(612,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'nivel laser huepar',NULL,NULL,NULL,NULL),
(613,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'nivel torpedo',NULL,NULL,NULL,NULL),
(614,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'nivel torpedo 5\"',NULL,NULL,NULL,NULL),
(615,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pala cuadrada pretul ',NULL,NULL,NULL,NULL),
(616,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'perchera electrica ',NULL,NULL,NULL,NULL),
(617,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pinza de presión',NULL,NULL,NULL,NULL),
(618,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pinza de punta',NULL,NULL,NULL,NULL),
(619,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pinza electrica',NULL,NULL,NULL,NULL),
(620,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pinza mecánica',NULL,NULL,NULL,NULL),
(621,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pinza pela cable cal.22 a 10',NULL,NULL,NULL,NULL),
(622,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pinza perica',NULL,NULL,NULL,NULL),
(623,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pinza ponchadora de presion',NULL,NULL,NULL,NULL),
(624,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pinza ponchadora eléctrica',NULL,NULL,NULL,NULL),
(625,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pinza porta candado de bloquéo',NULL,NULL,NULL,NULL),
(626,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pistola de impacto dewalt DCF889 (nva)',NULL,NULL,NULL,NULL),
(627,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pistola de impacto dewalt MOD.DCF880',NULL,NULL,NULL,NULL),
(628,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pistola para silicon',NULL,NULL,NULL,NULL),
(629,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'plomada e hilo',NULL,NULL,NULL,NULL),
(630,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prensa p/tubo, para banco',NULL,NULL,NULL,NULL),
(631,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'prueba',NULL,NULL,NULL,NULL),
(632,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pulidor grande 7\"',NULL,NULL,NULL,NULL),
(633,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'punto de golpe',NULL,NULL,NULL,NULL),
(634,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ratch de 1/2\"',NULL,NULL,NULL,NULL),
(635,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rayador metálico (hechizo)',NULL,NULL,NULL,NULL),
(636,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'regla metalica de 60 cm',NULL,NULL,NULL,NULL),
(637,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'regla metalica de 60cm',NULL,NULL,NULL,NULL),
(638,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'remachadora de acordeon truper naranja',NULL,NULL,NULL,NULL),
(639,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'remachadora tipo acordeón',NULL,NULL,NULL,NULL),
(640,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'remachadora tipo pistola',NULL,NULL,NULL,NULL),
(641,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'remchadora de acordeon roja',NULL,NULL,NULL,NULL),
(642,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rotomartillo DeWalt c/estuche, bcs sds plus',NULL,NULL,NULL,NULL),
(643,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rotomartillo makita HR2470 c/estuche, bca sds 3/8',NULL,NULL,NULL,NULL),
(644,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'rotomartillo makita HR2470 c/estuche, bcas sds 3/8',NULL,NULL,NULL,NULL),
(645,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sacabocados',NULL,NULL,NULL,NULL),
(646,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sargento de 1 metro (completo)',NULL,NULL,NULL,NULL),
(647,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'serrucho',NULL,NULL,NULL,NULL),
(648,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sierra cinta portatil KNOVA',NULL,NULL,NULL,NULL),
(649,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sierra circular DW',NULL,NULL,NULL,NULL),
(650,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sierra sable makita JR3050T c/estuche',NULL,NULL,NULL,NULL),
(651,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sinta metrica de 20 m',NULL,NULL,NULL,NULL),
(652,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'steelson 14\"',NULL,NULL,NULL,NULL),
(653,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'steelson 18\"',NULL,NULL,NULL,NULL),
(654,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'steelson 24\"',NULL,NULL,NULL,NULL),
(655,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'steelson 36\"',NULL,NULL,NULL,NULL),
(656,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'talache',NULL,NULL,NULL,NULL),
(657,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taladro 1/2\" DW',NULL,NULL,NULL,NULL),
(658,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taladro 1/2\" DW (nvo 31/07/23)',NULL,NULL,NULL,NULL),
(659,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taladro 1/2\" makita',NULL,NULL,NULL,NULL),
(660,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taladro de 1/2\" DW (nvo 13/05/24)',NULL,NULL,NULL,NULL),
(661,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taladro de 1/2\" DW (nvo 31/07/23)',NULL,NULL,NULL,NULL),
(662,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taladro de ángulo 3/8\"',NULL,NULL,NULL,NULL),
(663,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taladro de ángulo 3/8\" 0222',NULL,NULL,NULL,NULL),
(664,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taladro DW 1/2\" (nvo 31/07/23)',NULL,NULL,NULL,NULL),
(665,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taladro DW de 1/2\" (nvo 07/05/24)',NULL,NULL,NULL,NULL),
(666,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taladro inalámbrico dewalt con cargador y bateria ',NULL,NULL,NULL,NULL),
(667,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taladro inalámbrico milwaukee con cargador y bater',NULL,NULL,NULL,NULL),
(668,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'taladro rotomartillo dewalt de 1/2\"',NULL,NULL,NULL,NULL),
(669,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tarraja  hasta 2 1/2\"',NULL,NULL,NULL,NULL),
(670,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tarraja HPTR 2AR',NULL,NULL,NULL,NULL),
(671,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tarraja HPTR 3-A',NULL,NULL,NULL,NULL),
(672,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tecle tensor ',NULL,NULL,NULL,NULL),
(673,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tenaza 11R',NULL,NULL,NULL,NULL),
(674,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tenaza 18R',NULL,NULL,NULL,NULL),
(675,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tenaza 6R',NULL,NULL,NULL,NULL),
(676,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'termo 20Lts (naranja)',NULL,NULL,NULL,NULL),
(677,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'termo 30Lts (naranja) ',NULL,NULL,NULL,NULL),
(678,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'thé+rmo ',NULL,NULL,NULL,NULL),
(679,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tijera grande para lamina',NULL,NULL,NULL,NULL),
(680,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tijera para lamina',NULL,NULL,NULL,NULL),
(681,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'tiralineas',NULL,NULL,NULL,NULL),
(682,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'torniquete de 12\"',NULL,NULL,NULL,NULL),
(683,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'torniquete de 8\"',NULL,NULL,NULL,NULL),
(684,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'transportador ',NULL,NULL,NULL,NULL),
(685,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'transportador de grados INSIZE (metalico)',NULL,NULL,NULL,NULL),
(686,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'turbina',NULL,NULL,NULL,NULL),
(687,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'turbina makita',NULL,NULL,NULL,NULL),
(688,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vernier digital 24\" INSIZE',NULL,NULL,NULL,NULL),
(689,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CAJON OLIVER RAMIREZ',NULL,NULL,NULL);
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
  `periodo_id` int(11) NOT NULL,
  `folio_periodo` varchar(50) NOT NULL,
  `trabajador_id` int(11) NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `xml_timbrado` longtext DEFAULT NULL,
  `fecha_timbrado` datetime DEFAULT NULL,
  `simples` decimal(10,2) DEFAULT 0.00,
  `dobles` decimal(10,2) DEFAULT 0.00,
  `triples` decimal(10,2) DEFAULT 0.00,
  `bonos` decimal(10,2) DEFAULT 0.00,
  `total_percepciones` decimal(10,2) DEFAULT 0.00,
  `isr` decimal(10,2) DEFAULT 0.00,
  `imss` decimal(10,2) DEFAULT 0.00,
  `prestamo` decimal(10,2) DEFAULT 0.00,
  `fondo_ahorro` decimal(10,2) DEFAULT 0.00,
  `infonavit` decimal(10,2) DEFAULT 0.00,
  `total_deducciones` decimal(10,2) DEFAULT 0.00,
  `total_neto` decimal(10,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `premios` decimal(10,4) DEFAULT NULL,
  `total_bonos` decimal(10,4) DEFAULT NULL,
  `percepcion_empresa` decimal(10,4) DEFAULT NULL,
  `isn` decimal(10,4) DEFAULT NULL,
  `csp` decimal(10,4) DEFAULT NULL,
  `sar` decimal(10,4) DEFAULT NULL,
  `imss_patronal` decimal(10,4) DEFAULT NULL,
  `infonavit_patronal` decimal(10,4) DEFAULT NULL,
  `vacaciones` decimal(10,2) DEFAULT NULL,
  `horas_simples` decimal(10,2) DEFAULT NULL,
  `horas_dobles` decimal(10,2) DEFAULT NULL,
  `horas_triples` decimal(10,2) DEFAULT NULL,
  `asistencia` int(11) DEFAULT NULL,
  `complemento` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nomina`
--

LOCK TABLES `nomina` WRITE;
/*!40000 ALTER TABLE `nomina` DISABLE KEYS */;
INSERT INTO `nomina` VALUES
(16,1,'1',14,'8FEAB419-B535-44E2-AB30-27C89B149589','<?xml version=\"1.0\" encoding=\"UTF-8\"?><cfdi:Comprobante xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:nomina12=\"http://www.sat.gob.mx/nomina12\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" Certificado=\"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\" Descuento=\"2372.91\" Exportacion=\"01\" Fecha=\"2025-10-09T15:32:48\" Folio=\"1\" LugarExpedicion=\"64103\" MetodoPago=\"PUE\" Moneda=\"MXN\" NoCertificado=\"00001000000712253223\" Sello=\"U3sDUOOR/yLUE/1m35d/2kOYJ+qmk43twGXj1JssnsZ2VAEML9DqiUUB+dIEJu15ykJMyZjWOM+gHZKjR+wHVCjswGN9P/QdcCTY0BGaKPjmYI+YQcq33lGUitRv6xCL4+8kvaqwJdb+HTlTJKZVmQCBdROgzwvyq/rVcjNsH9MCUPG+50+Tuy7kLU+E6xbQnsW/dU7KU+Hg8pquidZTaeu4Z8t/ruLda+jhu/jO4IkBNp6rAfhCsbU6uin8CxhqJH+yLi57cKt7s7BdKnxeC4xKorKKNn8VOfKqevCrdLcU9Df1IxoniKh4eLme444Uzq8RY6Hv9bOGEtbsNkGrGg==\" Serie=\"A\" SubTotal=\"3540\" TipoDeComprobante=\"N\" Total=\"1167.09\" Version=\"4.0\" xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd http://www.sat.gob.mx/nomina12 http://www.sat.gob.mx/sitio_internet/cfd/nomina/nomina12.xsd\"><cfdi:Emisor Nombre=\"SERVICIOS INDUSTRIALES DE MONTERREY\" RegimenFiscal=\"601\" Rfc=\"SIM680423P4A\"/><cfdi:Receptor DomicilioFiscalReceptor=\"88780\" Nombre=\"SAUL ESTRADA LOPEZ\" RegimenFiscalReceptor=\"605\" Rfc=\"EALS700830LU4\" UsoCFDI=\"CN01\"/><cfdi:Conceptos><cfdi:Concepto Cantidad=\"1\" ClaveProdServ=\"84111505\" ClaveUnidad=\"ACT\" Descripcion=\"Pago de nómina\" Descuento=\"2372.91\" Importe=\"3540.00\" ObjetoImp=\"01\" ValorUnitario=\"3540.00\"/></cfdi:Conceptos><cfdi:Complemento><nomina12:Nomina FechaFinalPago=\"2025-10-08\" FechaInicialPago=\"2025-10-02\" FechaPago=\"2025-10-08\" NumDiasPagados=\"7\" TipoNomina=\"O\" TotalDeducciones=\"2372.91\" TotalOtrosPagos=\"0.00\" TotalPercepciones=\"3540\" Version=\"1.2\"><nomina12:Emisor RegistroPatronal=\"D4534011108\"/><nomina12:Receptor Antigüedad=\"P13Y4M7D\" ClaveEntFed=\"NLE\" Curp=\"EALS700830HNLSPL05\" Departamento=\"Taller\" FechaInicioRelLaboral=\"2012-06-01\" NumEmpleado=\"14\" NumSeguridadSocial=\"43877084855\" PeriodicidadPago=\"02\" Puesto=\"Operaciones\" RiesgoPuesto=\"1\" SalarioBaseCotApor=\"475.89\" SalarioDiarioIntegrado=\"475.89\" Sindicalizado=\"No\" TipoContrato=\"01\" TipoJornada=\"01\" TipoRegimen=\"02\"/><nomina12:Percepciones TotalExento=\"0\" TotalGravado=\"3540\" TotalSueldos=\"3540.00\"><nomina12:Percepcion Clave=\"BONO\" Concepto=\"Bonos\" ImporteExento=\"0.00\" ImporteGravado=\"840\" TipoPercepcion=\"050\"/><nomina12:Percepcion Clave=\"001\" Concepto=\"Sueldos, Salarios\" ImporteExento=\"0.00\" ImporteGravado=\"2700\" TipoPercepcion=\"001\"/></nomina12:Percepciones><nomina12:Deducciones TotalImpuestosRetenidos=\"372.97\" TotalOtrasDeducciones=\"1999.94\"><nomina12:Deduccion Clave=\"ISR\" Concepto=\"ISR Retenido\" Importe=\"372.97\" TipoDeduccion=\"002\"/><nomina12:Deduccion Clave=\"IMSS\" Concepto=\"Seguridad Social\" Importe=\"82.94\" TipoDeduccion=\"001\"/><nomina12:Deduccion Clave=\"INF\" Concepto=\"Crédito INFONAVIT\" Importe=\"517\" TipoDeduccion=\"004\"/><nomina12:Deduccion Clave=\"FOA\" Concepto=\"Fondo de Ahorro\" Importe=\"1400\" TipoDeduccion=\"003\"/></nomina12:Deducciones><nomina12:OtrosPagos><nomina12:OtroPago Clave=\"SUB\" Concepto=\"Subsidio para el empleo\" Importe=\"0.00\" TipoOtroPago=\"002\"><nomina12:SubsidioAlEmpleo SubsidioCausado=\"0.00\"/></nomina12:OtroPago></nomina12:OtrosPagos></nomina12:Nomina><tfd:TimbreFiscalDigital FechaTimbrado=\"2025-10-09T15:32:49\" NoCertificadoSAT=\"30001000000500003456\" RfcProvCertif=\"SPR190613I52\" SelloCFD=\"U3sDUOOR/yLUE/1m35d/2kOYJ+qmk43twGXj1JssnsZ2VAEML9DqiUUB+dIEJu15ykJMyZjWOM+gHZKjR+wHVCjswGN9P/QdcCTY0BGaKPjmYI+YQcq33lGUitRv6xCL4+8kvaqwJdb+HTlTJKZVmQCBdROgzwvyq/rVcjNsH9MCUPG+50+Tuy7kLU+E6xbQnsW/dU7KU+Hg8pquidZTaeu4Z8t/ruLda+jhu/jO4IkBNp6rAfhCsbU6uin8CxhqJH+yLi57cKt7s7BdKnxeC4xKorKKNn8VOfKqevCrdLcU9Df1IxoniKh4eLme444Uzq8RY6Hv9bOGEtbsNkGrGg==\" SelloSAT=\"FpTgfMRwCcHRnjbR+WgwXNhQUEtOQ0jfKN4OKpSdzuo5Llt+bKqvtrSl+j+WuvDsjdVkCt1Vog5UPRLCi8+QtD8ZRELv8CC4kirjBgtcoi9fvT5Kh+KIaKHXYKJ69xTaYLpSceFrMNaNfX0S0Agb2cl+0egXN4C3e5cN7Wcyy3833B6rEAKf+iJCkMXNNwF/4fA06pWDT+UP6btcZNrajZQ2ePh/ozuaHHt+e38otsVHp/xLG8+s6y2mctO72nwmTVtXZMOnpyZEl9mqwxsyBuDLfZrrUzdhQPYJqkWz8KFy1uYeck2HKt2cvundLOdx12cwMrwRvbDeQx6Ei/XemQ==\" UUID=\"8FEAB419-B535-44E2-AB30-27C89B149589\" Version=\"1.1\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\"/></cfdi:Complemento></cfdi:Comprobante>','2025-10-09 15:32:49',2700.00,0.00,0.00,840.00,3540.00,372.97,82.94,0.00,1400.00,517.00,2372.91,1167.09,'2025-10-10 03:32:49','2025-10-10 03:32:49',0.0000,840.0000,5378.8900,106.2000,938.8900,66.6200,166.5600,772.3300,0.00,48.00,0.00,0.00,7,900.00),
(17,1,'1',15,'5E877848-74D9-4159-BB81-A1C1FE82CD9F','<?xml version=\"1.0\" encoding=\"UTF-8\"?><cfdi:Comprobante xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:nomina12=\"http://www.sat.gob.mx/nomina12\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" Certificado=\"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\" Descuento=\"370.44\" Exportacion=\"01\" Fecha=\"2025-10-09T15:32:49\" Folio=\"1\" LugarExpedicion=\"64103\" MetodoPago=\"PUE\" Moneda=\"MXN\" NoCertificado=\"00001000000712253223\" Sello=\"lEKetOynl2R8+ef81qvUACiL/3lOk7XAsM1evglQHvOCRc71SPzA+JhyMn7hKf/1GaZrbpN1UsgBYSEH6cwHVP/4Wb8wPyvPWgh61iWqK8KrjNrmP1vEcuHeaz7JBOhRI8z5WB+K1TDuLXdy8ZBq3pr0+ITKQRDt49VxigSuqgGNX3Ruh7RIibhFWNlpdY9yulL079h6lWUx2ClPIUt/Ztn1dTj56uwE8x8IBr8ycGGVBT+swQK/+1QiJjbBX3kt0oJ23+H5cxFlPnqz44XyYp/zAAdZdDMwL0jI1ncq7OohFKiSGGtIECz6BhET8OnUxv7YUl1jAk/9cxCoBHDFLw==\" Serie=\"A\" SubTotal=\"3128.59\" TipoDeComprobante=\"N\" Total=\"2758.15\" Version=\"4.0\" xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd http://www.sat.gob.mx/nomina12 http://www.sat.gob.mx/sitio_internet/cfd/nomina/nomina12.xsd\"><cfdi:Emisor Nombre=\"SERVICIOS INDUSTRIALES DE MONTERREY\" RegimenFiscal=\"601\" Rfc=\"SIM680423P4A\"/><cfdi:Receptor DomicilioFiscalReceptor=\"67182\" Nombre=\"ANGELICA KARINA GARCIA CARDONA\" RegimenFiscalReceptor=\"605\" Rfc=\"GACA890629197\" UsoCFDI=\"CN01\"/><cfdi:Conceptos><cfdi:Concepto Cantidad=\"1\" ClaveProdServ=\"84111505\" ClaveUnidad=\"ACT\" Descripcion=\"Pago de nómina\" Descuento=\"370.44\" Importe=\"3128.59\" ObjetoImp=\"01\" ValorUnitario=\"3128.59\"/></cfdi:Conceptos><cfdi:Complemento><nomina12:Nomina FechaFinalPago=\"2025-10-08\" FechaInicialPago=\"2025-10-02\" FechaPago=\"2025-10-08\" NumDiasPagados=\"7\" TipoNomina=\"O\" TotalDeducciones=\"370.44\" TotalOtrosPagos=\"0.00\" TotalPercepciones=\"3128.59\" Version=\"1.2\"><nomina12:Emisor RegistroPatronal=\"D4534011108\"/><nomina12:Receptor Antigüedad=\"P11Y10M23D\" ClaveEntFed=\"NLE\" Curp=\"GACA890629MNLRRN00\" Departamento=\"Oficina\" FechaInicioRelLaboral=\"2013-11-15\" NumEmpleado=\"15\" NumSeguridadSocial=\"43088950894\" PeriodicidadPago=\"02\" Puesto=\"Operaciones\" RiesgoPuesto=\"1\" SalarioBaseCotApor=\"415.46\" SalarioDiarioIntegrado=\"415.46\" Sindicalizado=\"No\" TipoContrato=\"01\" TipoJornada=\"01\" TipoRegimen=\"02\"/><nomina12:Percepciones TotalExento=\"0\" TotalGravado=\"3128.59\" TotalSueldos=\"3128.59\"><nomina12:Percepcion Clave=\"BONO\" Concepto=\"Bonos\" ImporteExento=\"0.00\" ImporteGravado=\"771.43\" TipoPercepcion=\"050\"/><nomina12:Percepcion Clave=\"001\" Concepto=\"Sueldos, Salarios\" ImporteExento=\"0.00\" ImporteGravado=\"2357.16\" TipoPercepcion=\"001\"/></nomina12:Percepciones><nomina12:Deducciones TotalImpuestosRetenidos=\"299.24\" TotalOtrasDeducciones=\"71.2\"><nomina12:Deduccion Clave=\"ISR\" Concepto=\"ISR Retenido\" Importe=\"299.24\" TipoDeduccion=\"002\"/><nomina12:Deduccion Clave=\"IMSS\" Concepto=\"Seguridad Social\" Importe=\"71.2\" TipoDeduccion=\"001\"/></nomina12:Deducciones><nomina12:OtrosPagos><nomina12:OtroPago Clave=\"SUB\" Concepto=\"Subsidio para el empleo\" Importe=\"0.00\" TipoOtroPago=\"002\"><nomina12:SubsidioAlEmpleo SubsidioCausado=\"0.00\"/></nomina12:OtroPago></nomina12:OtrosPagos></nomina12:Nomina><tfd:TimbreFiscalDigital FechaTimbrado=\"2025-10-09T15:32:50\" NoCertificadoSAT=\"30001000000500003456\" RfcProvCertif=\"SPR190613I52\" SelloCFD=\"lEKetOynl2R8+ef81qvUACiL/3lOk7XAsM1evglQHvOCRc71SPzA+JhyMn7hKf/1GaZrbpN1UsgBYSEH6cwHVP/4Wb8wPyvPWgh61iWqK8KrjNrmP1vEcuHeaz7JBOhRI8z5WB+K1TDuLXdy8ZBq3pr0+ITKQRDt49VxigSuqgGNX3Ruh7RIibhFWNlpdY9yulL079h6lWUx2ClPIUt/Ztn1dTj56uwE8x8IBr8ycGGVBT+swQK/+1QiJjbBX3kt0oJ23+H5cxFlPnqz44XyYp/zAAdZdDMwL0jI1ncq7OohFKiSGGtIECz6BhET8OnUxv7YUl1jAk/9cxCoBHDFLw==\" SelloSAT=\"fVQdt1Fjmhrj7yoSDdAJZgNU2jHkw8qVqwp5/OGbX9pIClXm3L4FMALlzrepbB81n00O8kmhJRELipdu+SuKfyomUjINv0SOd8DXLtfChWYqIdG2Y0qvo/XHeeymLI+uJizvRT8kC7egrZBYGo1jrK2HtQ/htVOXL6wVJ7hNPhGei2OVEC2xgVu9Fyh6nYbAVrHh6zThOvDyB53C15TJe+IPq7LsrAF9i567im9Ib6Lxl4mXnf0+e/4I/hEL3+iqeHzHul0ApZeQGRzkp8mdstKkovYd1anFz4T1tVOoAPi1ACCBhd6Io2SCNfqTCvnnS1cRGzJTmTtcN//setdrKg==\" UUID=\"5E877848-74D9-4159-BB81-A1C1FE82CD9F\" Version=\"1.1\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\"/></cfdi:Complemento></cfdi:Comprobante>','2025-10-09 15:32:50',2357.16,0.00,0.00,771.43,3128.59,299.24,71.20,0.00,0.00,0.00,370.44,2758.15,'2025-10-10 03:32:50','2025-10-10 03:32:50',0.0000,771.4300,3965.4600,93.8600,836.8700,58.1600,145.4100,691.4600,0.00,48.00,0.00,0.00,7,-2357.16),
(18,1,'1',16,'72D9FF26-7BD3-443B-A0FD-A7A229BDBD4F','<?xml version=\"1.0\" encoding=\"UTF-8\"?><cfdi:Comprobante xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:nomina12=\"http://www.sat.gob.mx/nomina12\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" Certificado=\"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\" Descuento=\"260.52\" Exportacion=\"01\" Fecha=\"2025-10-09T15:32:50\" Folio=\"1\" LugarExpedicion=\"64103\" MetodoPago=\"PUE\" Moneda=\"MXN\" NoCertificado=\"00001000000712253223\" Sello=\"IuyyBVPWN4kfjWOq2qYEXFJr8yO/hGJxNtzB8/lwgEjXeRdFebkMAg0LZLyyeck1w2VfJpBITAfeb7em9Osl4azs9zvF0mQG3xYVJwGEtxdhB4LvBRc0/IOnN0UvZgJZlTFrRUYg3imy2wrSvCpXhFBcoHBNA9DeJDxnVJqejmvX2aEyCMMuYlUx9j3LK61LxUA1Z5lWdAWDO56ddkgrzkfHO16C0je/t3iKH9yyE4L+ipH9goGQUmvp4tf0V3ekb2bDhyiwrjK3UlDne7vRItlfFpmdt3k7Q+G+b+UAKKP7bQqpWrE6AaE+EqUBW+Dt5odWVFIMzcqJNLg2AMr05A==\" Serie=\"A\" SubTotal=\"2562.89\" TipoDeComprobante=\"N\" Total=\"2302.37\" Version=\"4.0\" xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd http://www.sat.gob.mx/nomina12 http://www.sat.gob.mx/sitio_internet/cfd/nomina/nomina12.xsd\"><cfdi:Emisor Nombre=\"SERVICIOS INDUSTRIALES DE MONTERREY\" RegimenFiscal=\"601\" Rfc=\"SIM680423P4A\"/><cfdi:Receptor DomicilioFiscalReceptor=\"67250\" Nombre=\"GERARDO RUIZ SEGOVIANO\" RegimenFiscalReceptor=\"605\" Rfc=\"RUSG590606KI8\" UsoCFDI=\"CN01\"/><cfdi:Conceptos><cfdi:Concepto Cantidad=\"1\" ClaveProdServ=\"84111505\" ClaveUnidad=\"ACT\" Descripcion=\"Pago de nómina\" Descuento=\"260.52\" Importe=\"2562.89\" ObjetoImp=\"01\" ValorUnitario=\"2562.89\"/></cfdi:Conceptos><cfdi:Complemento><nomina12:Nomina FechaFinalPago=\"2025-10-08\" FechaInicialPago=\"2025-10-02\" FechaPago=\"2025-10-08\" NumDiasPagados=\"7\" TipoNomina=\"O\" TotalDeducciones=\"260.52\" TotalOtrosPagos=\"0.00\" TotalPercepciones=\"2562.89\" Version=\"1.2\"><nomina12:Emisor RegistroPatronal=\"D4534011108\"/><nomina12:Receptor Antigüedad=\"P2Y1M14D\" ClaveEntFed=\"NLE\" Curp=\"RUSG590606HNLZGR07\" Departamento=\"Taller\" FechaInicioRelLaboral=\"2023-08-24\" NumEmpleado=\"16\" NumSeguridadSocial=\"43775958473\" PeriodicidadPago=\"02\" Puesto=\"Operaciones\" RiesgoPuesto=\"1\" SalarioBaseCotApor=\"330.22\" SalarioDiarioIntegrado=\"330.22\" Sindicalizado=\"No\" TipoContrato=\"01\" TipoJornada=\"01\" TipoRegimen=\"02\"/><nomina12:Percepciones TotalExento=\"0\" TotalGravado=\"2562.89\" TotalSueldos=\"2562.89\"><nomina12:Percepcion Clave=\"BONO\" Concepto=\"Bonos\" ImporteExento=\"0.00\" ImporteGravado=\"677.15\" TipoPercepcion=\"050\"/><nomina12:Percepcion Clave=\"001\" Concepto=\"Sueldos, Salarios\" ImporteExento=\"0.00\" ImporteGravado=\"1885.74\" TipoPercepcion=\"001\"/></nomina12:Percepciones><nomina12:Deducciones TotalImpuestosRetenidos=\"205.88\" TotalOtrasDeducciones=\"54.64\"><nomina12:Deduccion Clave=\"ISR\" Concepto=\"ISR Retenido\" Importe=\"205.88\" TipoDeduccion=\"002\"/><nomina12:Deduccion Clave=\"IMSS\" Concepto=\"Seguridad Social\" Importe=\"54.64\" TipoDeduccion=\"001\"/></nomina12:Deducciones><nomina12:OtrosPagos><nomina12:OtroPago Clave=\"SUB\" Concepto=\"Subsidio para el empleo\" Importe=\"0.00\" TipoOtroPago=\"002\"><nomina12:SubsidioAlEmpleo SubsidioCausado=\"0.00\"/></nomina12:OtroPago></nomina12:OtrosPagos></nomina12:Nomina><tfd:TimbreFiscalDigital FechaTimbrado=\"2025-10-09T15:32:52\" NoCertificadoSAT=\"30001000000500003456\" RfcProvCertif=\"SPR190613I52\" SelloCFD=\"IuyyBVPWN4kfjWOq2qYEXFJr8yO/hGJxNtzB8/lwgEjXeRdFebkMAg0LZLyyeck1w2VfJpBITAfeb7em9Osl4azs9zvF0mQG3xYVJwGEtxdhB4LvBRc0/IOnN0UvZgJZlTFrRUYg3imy2wrSvCpXhFBcoHBNA9DeJDxnVJqejmvX2aEyCMMuYlUx9j3LK61LxUA1Z5lWdAWDO56ddkgrzkfHO16C0je/t3iKH9yyE4L+ipH9goGQUmvp4tf0V3ekb2bDhyiwrjK3UlDne7vRItlfFpmdt3k7Q+G+b+UAKKP7bQqpWrE6AaE+EqUBW+Dt5odWVFIMzcqJNLg2AMr05A==\" SelloSAT=\"F8GDX7qbxmaaqf/WPQF1HWfcpZhljegYJWYg49VTcDAqVg+RxNM/PszGSkKqBV1LTtnQD7+aMmUXwr7Ri6jgtxE3H3kwTOjdXj3VXZRzFq7b8QW15nZxU8lqJkkslHhY0cbxhAVmYHRRqgm8xAt1k3CYt8+EhbvNB7p2hFyCdeLcfpOib6YUgSfsiUj25Ho0gb46S5arQbzmJZNAKL+Jl6QGuESxgIyAjb3nhnGHBxgrZaeXu3t+7Pbl/Qzk4vsF9SzKVUltiMpsoxaCOAuuY6D2B74nSE9MIKpQtLZk1N1AtsnvlwBHxpFM3z2Pt3nAVBFhthSfOP06telZ8+/ozQ==\" UUID=\"72D9FF26-7BD3-443B-A0FD-A7A229BDBD4F\" Version=\"1.1\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\"/></cfdi:Complemento></cfdi:Comprobante>','2025-10-09 15:32:52',1885.74,0.00,0.00,677.15,2562.89,205.88,54.64,0.00,0.00,0.00,260.52,2302.37,'2025-10-10 03:32:52','2025-10-10 03:32:52',0.0000,677.1500,3255.8400,76.8900,692.9500,46.2300,115.5800,577.3700,0.00,48.00,0.00,0.00,7,-1885.74),
(19,1,'1',17,'AA88E1C3-D0E3-40EE-92A7-8B59DC559961','<?xml version=\"1.0\" encoding=\"UTF-8\"?><cfdi:Comprobante xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:nomina12=\"http://www.sat.gob.mx/nomina12\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" Certificado=\"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\" Descuento=\"275.18\" Exportacion=\"01\" Fecha=\"2025-10-09T15:32:52\" Folio=\"1\" LugarExpedicion=\"64103\" MetodoPago=\"PUE\" Moneda=\"MXN\" NoCertificado=\"00001000000712253223\" Sello=\"lcUkgZ2PiVPXaQ9vPw/Lm+JiaQpT4H197VbTJFFDxWwhs0dZ8ovErS4ogBfobmwrvaNZdzzT5+NHTdF5gBtOT3fzPsTeTv5G4YMbwUasWHD9CqMWQipksbBOUkw8R22ruT87DsSBSBoaCjQhPKbfhkm2R0EY3W0NCAxqJCwUu57CGA7D9LsSJ3SaDIztFtdvuHyuL4VT2Y55jysYHUwO7L2JD5yyQcQYCpxc7MhN9GnZeiKr3SXmPALZXMmB/FOLGoy5ToVnIdw2Pv7Hsvl5nTc2Br32BS0eor6hEYv9p7DwE8QXzK5HN/ACOr7DNFdcS0iV3iYR79GMyraWI6gqpA==\" Serie=\"A\" SubTotal=\"2641.15\" TipoDeComprobante=\"N\" Total=\"2365.97\" Version=\"4.0\" xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd http://www.sat.gob.mx/nomina12 http://www.sat.gob.mx/sitio_internet/cfd/nomina/nomina12.xsd\"><cfdi:Emisor Nombre=\"SERVICIOS INDUSTRIALES DE MONTERREY\" RegimenFiscal=\"601\" Rfc=\"SIM680423P4A\"/><cfdi:Receptor DomicilioFiscalReceptor=\"64860\" Nombre=\"RAFAEL GARZA CASTILLO\" RegimenFiscalReceptor=\"605\" Rfc=\"GACR0202086G8\" UsoCFDI=\"CN01\"/><cfdi:Conceptos><cfdi:Concepto Cantidad=\"1\" ClaveProdServ=\"84111505\" ClaveUnidad=\"ACT\" Descripcion=\"Pago de nómina\" Descuento=\"275.18\" Importe=\"2641.15\" ObjetoImp=\"01\" ValorUnitario=\"2641.15\"/></cfdi:Conceptos><cfdi:Complemento><nomina12:Nomina FechaFinalPago=\"2025-10-08\" FechaInicialPago=\"2025-10-02\" FechaPago=\"2025-10-08\" NumDiasPagados=\"7\" TipoNomina=\"O\" TotalDeducciones=\"275.18\" TotalOtrosPagos=\"0.00\" TotalPercepciones=\"2641.15\" Version=\"1.2\"><nomina12:Emisor RegistroPatronal=\"D4534011108\"/><nomina12:Receptor Antigüedad=\"P1Y6M17D\" ClaveEntFed=\"NLE\" Curp=\"GACR020208HNLRSFA6\" Departamento=\"Oficina\" FechaInicioRelLaboral=\"2024-03-21\" NumEmpleado=\"17\" NumSeguridadSocial=\"10220279722\" PeriodicidadPago=\"02\" Puesto=\"Operaciones\" RiesgoPuesto=\"1\" SalarioBaseCotApor=\"341.2\" SalarioDiarioIntegrado=\"341.2\" Sindicalizado=\"No\" TipoContrato=\"01\" TipoJornada=\"01\" TipoRegimen=\"02\"/><nomina12:Percepciones TotalExento=\"0\" TotalGravado=\"2641.15\" TotalSueldos=\"2641.15\"><nomina12:Percepcion Clave=\"BONO\" Concepto=\"Bonos\" ImporteExento=\"0.00\" ImporteGravado=\"690.19\" TipoPercepcion=\"050\"/><nomina12:Percepcion Clave=\"001\" Concepto=\"Sueldos, Salarios\" ImporteExento=\"0.00\" ImporteGravado=\"1950.96\" TipoPercepcion=\"001\"/></nomina12:Percepciones><nomina12:Deducciones TotalImpuestosRetenidos=\"218.41\" TotalOtrasDeducciones=\"56.77\"><nomina12:Deduccion Clave=\"ISR\" Concepto=\"ISR Retenido\" Importe=\"218.41\" TipoDeduccion=\"002\"/><nomina12:Deduccion Clave=\"IMSS\" Concepto=\"Seguridad Social\" Importe=\"56.77\" TipoDeduccion=\"001\"/></nomina12:Deducciones><nomina12:OtrosPagos><nomina12:OtroPago Clave=\"SUB\" Concepto=\"Subsidio para el empleo\" Importe=\"0.00\" TipoOtroPago=\"002\"><nomina12:SubsidioAlEmpleo SubsidioCausado=\"0.00\"/></nomina12:OtroPago></nomina12:OtrosPagos></nomina12:Nomina><tfd:TimbreFiscalDigital FechaTimbrado=\"2025-10-09T15:32:55\" NoCertificadoSAT=\"30001000000500003456\" RfcProvCertif=\"SPR190613I52\" SelloCFD=\"lcUkgZ2PiVPXaQ9vPw/Lm+JiaQpT4H197VbTJFFDxWwhs0dZ8ovErS4ogBfobmwrvaNZdzzT5+NHTdF5gBtOT3fzPsTeTv5G4YMbwUasWHD9CqMWQipksbBOUkw8R22ruT87DsSBSBoaCjQhPKbfhkm2R0EY3W0NCAxqJCwUu57CGA7D9LsSJ3SaDIztFtdvuHyuL4VT2Y55jysYHUwO7L2JD5yyQcQYCpxc7MhN9GnZeiKr3SXmPALZXMmB/FOLGoy5ToVnIdw2Pv7Hsvl5nTc2Br32BS0eor6hEYv9p7DwE8QXzK5HN/ACOr7DNFdcS0iV3iYR79GMyraWI6gqpA==\" SelloSAT=\"eL004V68SIPWTTfoxknHcBLNtvxtbZQ5nZY1aChEDoDGZ0cslGXivQvBHo3sTOnBDEUtAjkdMFcYcZ06Hk6tPWFWUSc5jUEkB+tMO8CuvTLdnm8cQM75QC2gu0xZZKptTpypahhxf7A87PbLHIIDbyWISM53dXP+LfgFGSsOdFlXkVyo1IcS8q5DjZafG5Ln3ZPg0MCtvwYbGIyeDNOf2wCnBx1cp1MmPghSnwGyovnWBc9rvVvOg7uwnSditBNNQHxjWHm16vHDDrh3QSOFJiebtP8Bf6VAR9AM+X4EGejpSZNJhCpIpFjzwegGwphW8gABfUquF1/P7vwLibQ7lg==\" UUID=\"AA88E1C3-D0E3-40EE-92A7-8B59DC559961\" Version=\"1.1\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\"/></cfdi:Complemento></cfdi:Comprobante>','2025-10-09 15:32:55',1950.96,0.00,0.00,690.19,2641.15,218.41,56.77,0.00,0.00,0.00,275.18,2365.97,'2025-10-10 03:32:57','2025-10-10 03:32:57',0.0000,690.1900,3352.6300,79.2300,711.4800,47.7700,119.4200,592.0600,0.00,48.00,0.00,0.00,7,-1950.96),
(32,3,'3',14,'FDC9D933-6ED9-4E7E-BA55-978C596BDCD9','<?xml version=\"1.0\" encoding=\"UTF-8\"?><cfdi:Comprobante xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:nomina12=\"http://www.sat.gob.mx/nomina12\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" Certificado=\"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\" Descuento=\"2602.91\" Exportacion=\"01\" Fecha=\"2025-10-13T20:33:27\" Folio=\"3\" LugarExpedicion=\"64103\" MetodoPago=\"PUE\" Moneda=\"MXN\" NoCertificado=\"00001000000712253223\" Sello=\"BOaXgYgLXDLTDd7NgbLEWtYppn7fCJ1IV0vrqI3HZGTQwYwG6NOR6MVuyMioXiFLbBk7Jpdq6Zyuu6t6tKskougoMpoX6r0oo3v4iTMYxyUUfyomi+/H8hG69xqVg2VHiHF0mwC840L4SxVMtdeUpTxif8SjnSl9MwVVrByVxCldehEHvLKe9aD4SLTbenmr8X915dm8r6TEu+J5dgiYYaFt/wCM8lEw7BCVTzet/COsvIXPt2SR22udT1pq8lxxPwW/2LmjVLTETCaOj+b2MhdhoFT7F4nIM/k2wK1Pn6vvVXoeoWC0pbhrCBcPeW/a1psukDOv+ylTCH3YcApKLw==\" Serie=\"A\" SubTotal=\"3540\" TipoDeComprobante=\"N\" Total=\"937.09\" Version=\"4.0\" xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd http://www.sat.gob.mx/nomina12 http://www.sat.gob.mx/sitio_internet/cfd/nomina/nomina12.xsd\"><cfdi:Emisor Nombre=\"SERVICIOS INDUSTRIALES DE MONTERREY\" RegimenFiscal=\"601\" Rfc=\"SIM680423P4A\"/><cfdi:Receptor DomicilioFiscalReceptor=\"88780\" Nombre=\"SAUL ESTRADA LOPEZ\" RegimenFiscalReceptor=\"605\" Rfc=\"EALS700830LU4\" UsoCFDI=\"CN01\"/><cfdi:Conceptos><cfdi:Concepto Cantidad=\"1\" ClaveProdServ=\"84111505\" ClaveUnidad=\"ACT\" Descripcion=\"Pago de nómina\" Descuento=\"2602.91\" Importe=\"3540.00\" ObjetoImp=\"01\" ValorUnitario=\"3540.00\"/></cfdi:Conceptos><cfdi:Complemento><nomina12:Nomina FechaFinalPago=\"2025-10-15\" FechaInicialPago=\"2025-10-09\" FechaPago=\"2025-10-15\" NumDiasPagados=\"7\" TipoNomina=\"O\" TotalDeducciones=\"2602.91\" TotalOtrosPagos=\"0.00\" TotalPercepciones=\"3540\" Version=\"1.2\"><nomina12:Emisor RegistroPatronal=\"D4534011108\"/><nomina12:Receptor Antigüedad=\"P13Y4M14D\" ClaveEntFed=\"NLE\" Curp=\"EALS700830HNLSPL05\" Departamento=\"Taller\" FechaInicioRelLaboral=\"2012-06-01\" NumEmpleado=\"14\" NumSeguridadSocial=\"43877084855\" PeriodicidadPago=\"02\" Puesto=\"Operaciones\" RiesgoPuesto=\"1\" SalarioBaseCotApor=\"475.89\" SalarioDiarioIntegrado=\"475.89\" Sindicalizado=\"No\" TipoContrato=\"01\" TipoJornada=\"01\" TipoRegimen=\"02\"/><nomina12:Percepciones TotalExento=\"0\" TotalGravado=\"3540\" TotalSueldos=\"3540.00\"><nomina12:Percepcion Clave=\"BONO\" Concepto=\"Bonos\" ImporteExento=\"0.00\" ImporteGravado=\"840\" TipoPercepcion=\"050\"/><nomina12:Percepcion Clave=\"001\" Concepto=\"Sueldos, Salarios\" ImporteExento=\"0.00\" ImporteGravado=\"2700\" TipoPercepcion=\"001\"/></nomina12:Percepciones><nomina12:Deducciones TotalImpuestosRetenidos=\"372.97\" TotalOtrasDeducciones=\"2229.94\"><nomina12:Deduccion Clave=\"ISR\" Concepto=\"ISR Retenido\" Importe=\"372.97\" TipoDeduccion=\"002\"/><nomina12:Deduccion Clave=\"IMSS\" Concepto=\"Seguridad Social\" Importe=\"82.94\" TipoDeduccion=\"001\"/><nomina12:Deduccion Clave=\"INF\" Concepto=\"Crédito INFONAVIT\" Importe=\"517\" TipoDeduccion=\"004\"/><nomina12:Deduccion Clave=\"FOA\" Concepto=\"Fondo de Ahorro\" Importe=\"1400\" TipoDeduccion=\"003\"/><nomina12:Deduccion Clave=\"PRE\" Concepto=\"Préstamos personales\" Importe=\"230.00\" TipoDeduccion=\"051\"/></nomina12:Deducciones><nomina12:OtrosPagos><nomina12:OtroPago Clave=\"SUB\" Concepto=\"Subsidio para el empleo\" Importe=\"0.00\" TipoOtroPago=\"002\"><nomina12:SubsidioAlEmpleo SubsidioCausado=\"0.00\"/></nomina12:OtroPago></nomina12:OtrosPagos></nomina12:Nomina><tfd:TimbreFiscalDigital FechaTimbrado=\"2025-10-13T20:33:28\" NoCertificadoSAT=\"30001000000500003456\" RfcProvCertif=\"SPR190613I52\" SelloCFD=\"BOaXgYgLXDLTDd7NgbLEWtYppn7fCJ1IV0vrqI3HZGTQwYwG6NOR6MVuyMioXiFLbBk7Jpdq6Zyuu6t6tKskougoMpoX6r0oo3v4iTMYxyUUfyomi+/H8hG69xqVg2VHiHF0mwC840L4SxVMtdeUpTxif8SjnSl9MwVVrByVxCldehEHvLKe9aD4SLTbenmr8X915dm8r6TEu+J5dgiYYaFt/wCM8lEw7BCVTzet/COsvIXPt2SR22udT1pq8lxxPwW/2LmjVLTETCaOj+b2MhdhoFT7F4nIM/k2wK1Pn6vvVXoeoWC0pbhrCBcPeW/a1psukDOv+ylTCH3YcApKLw==\" SelloSAT=\"KCiR/7XWzgkhotlIT26Q6UM7gcTOLlvJgAc9syex46gxBX9QK1+wqp61JVlQu8RfQnqS5fEv+bkqCFIvDaRUcjcMso8wDEGGbtilv6DGW3XvJXCOd4Ga6zJ1rqGBIoVqfQkovi/pw5AJ7O9o2aPAZ74VY/0a6fsypq1aZfJGnuxajKYdJW8z52+PdQo9ufqXn9I6JXRfCSpR10G+ApTz0NIoWREh7UakWjAEiRo3s4GNmjmG5G5cVWDPpUvkwgytlKNo6/2kkM/l0J6flE4EQNLIip5/62jSvLplUM1HMZIGqowWHkLz0bhmZGjqpZTjDqM/R9PCa2IteJKte7ISww==\" UUID=\"FDC9D933-6ED9-4E7E-BA55-978C596BDCD9\" Version=\"1.1\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\"/></cfdi:Complemento></cfdi:Comprobante>','2025-10-13 20:33:28',2700.00,0.00,0.00,840.00,3540.00,372.97,82.94,230.00,1400.00,517.00,2602.91,937.09,'2025-10-14 08:33:28','2025-10-14 08:33:28',0.0000,840.0000,5378.8900,106.2000,938.8900,66.6200,166.5600,772.3300,0.00,48.00,0.00,0.00,7,900.00),
(33,3,'3',15,'60566988-D837-4227-821E-37CB6D5F3818','<?xml version=\"1.0\" encoding=\"UTF-8\"?><cfdi:Comprobante xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:nomina12=\"http://www.sat.gob.mx/nomina12\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" Certificado=\"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\" Descuento=\"570.44\" Exportacion=\"01\" Fecha=\"2025-10-13T20:33:28\" Folio=\"3\" LugarExpedicion=\"64103\" MetodoPago=\"PUE\" Moneda=\"MXN\" NoCertificado=\"00001000000712253223\" Sello=\"jIVq3UMgvr3CiZnqXpuy9gVxOWNocpyIB5NCgGMOzjUKVZRcR3Xu6+OUWSfVGmWGOJ3Rd6yJ4vRQTENoYhn00+XyOn86kz0v5dvevKxswE26yydYBBfp6QCu6HgStnkGkm8EfL8xU+ugCGqr+hY3cSI4X+VIPvANiTJM7bFC5oe6CvGpWc8ugw7A9YJuxBY8QmVYI9NcYaTvOZPrjJ4ecGbsFhFTiM9U4vUGnqSpe/QiLA2cPxlNC0Sb//C8xdMPhwyoIaxW2gQ/JdNXnAFGwMoPvYkHDxCSCnkGK78Jqa7mZO+8gle/uhCaonHfJxl+o+wDkLrZlZGbFPu7+e35KQ==\" Serie=\"A\" SubTotal=\"3128.59\" TipoDeComprobante=\"N\" Total=\"2558.15\" Version=\"4.0\" xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd http://www.sat.gob.mx/nomina12 http://www.sat.gob.mx/sitio_internet/cfd/nomina/nomina12.xsd\"><cfdi:Emisor Nombre=\"SERVICIOS INDUSTRIALES DE MONTERREY\" RegimenFiscal=\"601\" Rfc=\"SIM680423P4A\"/><cfdi:Receptor DomicilioFiscalReceptor=\"67182\" Nombre=\"ANGELICA KARINA GARCIA CARDONA\" RegimenFiscalReceptor=\"605\" Rfc=\"GACA890629197\" UsoCFDI=\"CN01\"/><cfdi:Conceptos><cfdi:Concepto Cantidad=\"1\" ClaveProdServ=\"84111505\" ClaveUnidad=\"ACT\" Descripcion=\"Pago de nómina\" Descuento=\"570.44\" Importe=\"3128.59\" ObjetoImp=\"01\" ValorUnitario=\"3128.59\"/></cfdi:Conceptos><cfdi:Complemento><nomina12:Nomina FechaFinalPago=\"2025-10-15\" FechaInicialPago=\"2025-10-09\" FechaPago=\"2025-10-15\" NumDiasPagados=\"7\" TipoNomina=\"O\" TotalDeducciones=\"570.44\" TotalOtrosPagos=\"0.00\" TotalPercepciones=\"3128.59\" Version=\"1.2\"><nomina12:Emisor RegistroPatronal=\"D4534011108\"/><nomina12:Receptor Antigüedad=\"P11Y11M0D\" ClaveEntFed=\"NLE\" Curp=\"GACA890629MNLRRN00\" Departamento=\"Oficina\" FechaInicioRelLaboral=\"2013-11-15\" NumEmpleado=\"15\" NumSeguridadSocial=\"43088950894\" PeriodicidadPago=\"02\" Puesto=\"Operaciones\" RiesgoPuesto=\"1\" SalarioBaseCotApor=\"415.46\" SalarioDiarioIntegrado=\"415.46\" Sindicalizado=\"No\" TipoContrato=\"01\" TipoJornada=\"01\" TipoRegimen=\"02\"/><nomina12:Percepciones TotalExento=\"0\" TotalGravado=\"3128.59\" TotalSueldos=\"3128.59\"><nomina12:Percepcion Clave=\"BONO\" Concepto=\"Bonos\" ImporteExento=\"0.00\" ImporteGravado=\"771.43\" TipoPercepcion=\"050\"/><nomina12:Percepcion Clave=\"001\" Concepto=\"Sueldos, Salarios\" ImporteExento=\"0.00\" ImporteGravado=\"2357.16\" TipoPercepcion=\"001\"/></nomina12:Percepciones><nomina12:Deducciones TotalImpuestosRetenidos=\"299.24\" TotalOtrasDeducciones=\"271.2\"><nomina12:Deduccion Clave=\"ISR\" Concepto=\"ISR Retenido\" Importe=\"299.24\" TipoDeduccion=\"002\"/><nomina12:Deduccion Clave=\"IMSS\" Concepto=\"Seguridad Social\" Importe=\"71.2\" TipoDeduccion=\"001\"/><nomina12:Deduccion Clave=\"PRE\" Concepto=\"Préstamos personales\" Importe=\"200.00\" TipoDeduccion=\"051\"/></nomina12:Deducciones><nomina12:OtrosPagos><nomina12:OtroPago Clave=\"SUB\" Concepto=\"Subsidio para el empleo\" Importe=\"0.00\" TipoOtroPago=\"002\"><nomina12:SubsidioAlEmpleo SubsidioCausado=\"0.00\"/></nomina12:OtroPago></nomina12:OtrosPagos></nomina12:Nomina><tfd:TimbreFiscalDigital FechaTimbrado=\"2025-10-13T20:33:29\" NoCertificadoSAT=\"30001000000500003456\" RfcProvCertif=\"SPR190613I52\" SelloCFD=\"jIVq3UMgvr3CiZnqXpuy9gVxOWNocpyIB5NCgGMOzjUKVZRcR3Xu6+OUWSfVGmWGOJ3Rd6yJ4vRQTENoYhn00+XyOn86kz0v5dvevKxswE26yydYBBfp6QCu6HgStnkGkm8EfL8xU+ugCGqr+hY3cSI4X+VIPvANiTJM7bFC5oe6CvGpWc8ugw7A9YJuxBY8QmVYI9NcYaTvOZPrjJ4ecGbsFhFTiM9U4vUGnqSpe/QiLA2cPxlNC0Sb//C8xdMPhwyoIaxW2gQ/JdNXnAFGwMoPvYkHDxCSCnkGK78Jqa7mZO+8gle/uhCaonHfJxl+o+wDkLrZlZGbFPu7+e35KQ==\" SelloSAT=\"B4uBV2c++uymleufxTQcyFe3rubLh06OWAF0x18/xBEyF9YGhMq7kTNRe6d9CnRW+QySFZTvzcO6DDq0Klh6ox2GeG50Pnr2JOLfh+DCj1n5swK36HKByo+ifWSxqgZT4kI4kU3CF2nunJT8Cxsvm5HfFGQ7g5p3H+mFycBlcHRB5SnWbi1KTqXht9IbqI8IdCDCqy8mDpCPrV9UIli5/GyKG0fo4I0Zzn4pZ71ZqzVz8ClrddNRQdoo21e1RVQLxA55Ubw4S9CbWyCCJxuAcjUGOI5aug2m0ATh+6lM6yiWP7iemwFS2nZE2kmzPg9sO3U0e4+lowIsJRaGGWZdpw==\" UUID=\"60566988-D837-4227-821E-37CB6D5F3818\" Version=\"1.1\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\"/></cfdi:Complemento></cfdi:Comprobante>','2025-10-13 20:33:29',2357.16,0.00,0.00,771.43,3128.59,299.24,71.20,200.00,0.00,0.00,570.44,2558.15,'2025-10-14 08:33:29','2025-10-14 08:33:29',0.0000,771.4300,3965.4600,93.8600,836.8700,58.1600,145.4100,691.4600,0.00,48.00,0.00,0.00,7,-2357.16),
(34,3,'3',16,'B132D2B6-390F-475D-9E62-95DBF6EC3C32','<?xml version=\"1.0\" encoding=\"UTF-8\"?><cfdi:Comprobante xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:nomina12=\"http://www.sat.gob.mx/nomina12\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" Certificado=\"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\" Descuento=\"260.52\" Exportacion=\"01\" Fecha=\"2025-10-13T20:33:29\" Folio=\"3\" LugarExpedicion=\"64103\" MetodoPago=\"PUE\" Moneda=\"MXN\" NoCertificado=\"00001000000712253223\" Sello=\"BwpsUZT8TR/bFSDtDP1OX0xoF+0+3o03thb/g3nMzvbGQBvTgwD3MYJZQG8JTT2X3F/noDvx0QNpzcy+JByyR6J4wjC5McMotE/zlCiuUqxYHp2TuZ3HAcYSDqHzhLl3IxIWXgenrZrXZiOWfbDxiHjVUqYteD+snO8E8z0zfROtoSgXRtofnX2xTD+GVOIrYzavKVGNQdeppV57LAGs5uEfkyRXCny0rdezVaZVxm4e29szhzAYL47ZSzLhDpju1+t4f1FqBTIZMbpbX/SBzqosDt/bQfK1SurUZ/72nS6QFojZOORovFWAMH8kpZZNPKsGKZjQvsSyWD6RM/L2Ug==\" Serie=\"A\" SubTotal=\"2562.89\" TipoDeComprobante=\"N\" Total=\"2302.37\" Version=\"4.0\" xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd http://www.sat.gob.mx/nomina12 http://www.sat.gob.mx/sitio_internet/cfd/nomina/nomina12.xsd\"><cfdi:Emisor Nombre=\"SERVICIOS INDUSTRIALES DE MONTERREY\" RegimenFiscal=\"601\" Rfc=\"SIM680423P4A\"/><cfdi:Receptor DomicilioFiscalReceptor=\"67250\" Nombre=\"GERARDO RUIZ SEGOVIANO\" RegimenFiscalReceptor=\"605\" Rfc=\"RUSG590606KI8\" UsoCFDI=\"CN01\"/><cfdi:Conceptos><cfdi:Concepto Cantidad=\"1\" ClaveProdServ=\"84111505\" ClaveUnidad=\"ACT\" Descripcion=\"Pago de nómina\" Descuento=\"260.52\" Importe=\"2562.89\" ObjetoImp=\"01\" ValorUnitario=\"2562.89\"/></cfdi:Conceptos><cfdi:Complemento><nomina12:Nomina FechaFinalPago=\"2025-10-15\" FechaInicialPago=\"2025-10-09\" FechaPago=\"2025-10-15\" NumDiasPagados=\"7\" TipoNomina=\"O\" TotalDeducciones=\"260.52\" TotalOtrosPagos=\"0.00\" TotalPercepciones=\"2562.89\" Version=\"1.2\"><nomina12:Emisor RegistroPatronal=\"D4534011108\"/><nomina12:Receptor Antigüedad=\"P2Y1M21D\" ClaveEntFed=\"NLE\" Curp=\"RUSG590606HNLZGR07\" Departamento=\"Taller\" FechaInicioRelLaboral=\"2023-08-24\" NumEmpleado=\"16\" NumSeguridadSocial=\"43775958473\" PeriodicidadPago=\"02\" Puesto=\"Operaciones\" RiesgoPuesto=\"1\" SalarioBaseCotApor=\"330.22\" SalarioDiarioIntegrado=\"330.22\" Sindicalizado=\"No\" TipoContrato=\"01\" TipoJornada=\"01\" TipoRegimen=\"02\"/><nomina12:Percepciones TotalExento=\"0\" TotalGravado=\"2562.89\" TotalSueldos=\"2562.89\"><nomina12:Percepcion Clave=\"BONO\" Concepto=\"Bonos\" ImporteExento=\"0.00\" ImporteGravado=\"677.15\" TipoPercepcion=\"050\"/><nomina12:Percepcion Clave=\"001\" Concepto=\"Sueldos, Salarios\" ImporteExento=\"0.00\" ImporteGravado=\"1885.74\" TipoPercepcion=\"001\"/></nomina12:Percepciones><nomina12:Deducciones TotalImpuestosRetenidos=\"205.88\" TotalOtrasDeducciones=\"54.64\"><nomina12:Deduccion Clave=\"ISR\" Concepto=\"ISR Retenido\" Importe=\"205.88\" TipoDeduccion=\"002\"/><nomina12:Deduccion Clave=\"IMSS\" Concepto=\"Seguridad Social\" Importe=\"54.64\" TipoDeduccion=\"001\"/></nomina12:Deducciones><nomina12:OtrosPagos><nomina12:OtroPago Clave=\"SUB\" Concepto=\"Subsidio para el empleo\" Importe=\"0.00\" TipoOtroPago=\"002\"><nomina12:SubsidioAlEmpleo SubsidioCausado=\"0.00\"/></nomina12:OtroPago></nomina12:OtrosPagos></nomina12:Nomina><tfd:TimbreFiscalDigital FechaTimbrado=\"2025-10-13T20:33:29\" NoCertificadoSAT=\"30001000000500003456\" RfcProvCertif=\"SPR190613I52\" SelloCFD=\"BwpsUZT8TR/bFSDtDP1OX0xoF+0+3o03thb/g3nMzvbGQBvTgwD3MYJZQG8JTT2X3F/noDvx0QNpzcy+JByyR6J4wjC5McMotE/zlCiuUqxYHp2TuZ3HAcYSDqHzhLl3IxIWXgenrZrXZiOWfbDxiHjVUqYteD+snO8E8z0zfROtoSgXRtofnX2xTD+GVOIrYzavKVGNQdeppV57LAGs5uEfkyRXCny0rdezVaZVxm4e29szhzAYL47ZSzLhDpju1+t4f1FqBTIZMbpbX/SBzqosDt/bQfK1SurUZ/72nS6QFojZOORovFWAMH8kpZZNPKsGKZjQvsSyWD6RM/L2Ug==\" SelloSAT=\"aXTva2rPUMHSQ2DBHc9tb3GV+m+A70Xjl5Ulk+y8eNRRoAiJ8BP/OKxL9bPLuSJtBbxB/K4RoRQUkg4uADXuDR664YET3ePSJe7q+2oUvKB0a2N5Wao7p38nPFMgHsuiQxI9/+ZOeq0QB1Sha1LvSuXMqkfdNbbCqs/REQBwrB+AwbOSICLar3322WLitx+uJllzBVexyc1cf7U/MhrNu4nhpegKsDJ4MNVbTJSXUFbgzfSBl5Y/tHxGiWBm826g29F5wr5LAkQ357wGsYTbn/zM44VvlM4niMeUG1tawLM7R/ExcoPDsGd5zugZ+vph8wUeko+58Sj661LL3DmmXQ==\" UUID=\"B132D2B6-390F-475D-9E62-95DBF6EC3C32\" Version=\"1.1\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\"/></cfdi:Complemento></cfdi:Comprobante>','2025-10-13 20:33:29',1885.74,0.00,0.00,677.15,2562.89,205.88,54.64,0.00,0.00,0.00,260.52,2302.37,'2025-10-14 08:33:30','2025-10-14 08:33:30',0.0000,677.1500,3255.8400,76.8900,692.9500,46.2300,115.5800,577.3700,0.00,48.00,0.00,0.00,7,-1885.74),
(35,3,'3',17,'1576405B-5CCB-4DBA-BD82-CEA13D4E7058','<?xml version=\"1.0\" encoding=\"UTF-8\"?><cfdi:Comprobante xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:nomina12=\"http://www.sat.gob.mx/nomina12\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" Certificado=\"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\" Descuento=\"275.18\" Exportacion=\"01\" Fecha=\"2025-10-13T20:33:30\" Folio=\"3\" LugarExpedicion=\"64103\" MetodoPago=\"PUE\" Moneda=\"MXN\" NoCertificado=\"00001000000712253223\" Sello=\"dwML0sI0uUeuMUR5khlEMpvxO6LwM+4z3QkZkr4hOTXsqEeiF0gue0leNp7t2qLChYmMzLAvLANI9lETdd7Q2i7uDA8w54MP92dmEf9Ih2U29a2VnYgi0iyCmQjckBVNDyFxRsiilfYbB0Gr+fjq8OtOn28zTe97x+JkjlSwHFEOpCiRwrCrfo57BFGqDW/gkJJia8lcjucsW2IqaADAPHRjKmXtrpEp12W4Yk4Azqj4uaCfLNvEQdDSJBUIdlnT27oSZQy8Ly7LHB7W46uaxhC8gjN+dEXaOK8q+AIW66m2cR6/6WZLCCa3cEnhjtHCLwlOpXnORhLJ/DKJcspmcg==\" Serie=\"A\" SubTotal=\"2641.15\" TipoDeComprobante=\"N\" Total=\"2365.97\" Version=\"4.0\" xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd http://www.sat.gob.mx/nomina12 http://www.sat.gob.mx/sitio_internet/cfd/nomina/nomina12.xsd\"><cfdi:Emisor Nombre=\"SERVICIOS INDUSTRIALES DE MONTERREY\" RegimenFiscal=\"601\" Rfc=\"SIM680423P4A\"/><cfdi:Receptor DomicilioFiscalReceptor=\"64860\" Nombre=\"RAFAEL GARZA CASTILLO\" RegimenFiscalReceptor=\"605\" Rfc=\"GACR0202086G8\" UsoCFDI=\"CN01\"/><cfdi:Conceptos><cfdi:Concepto Cantidad=\"1\" ClaveProdServ=\"84111505\" ClaveUnidad=\"ACT\" Descripcion=\"Pago de nómina\" Descuento=\"275.18\" Importe=\"2641.15\" ObjetoImp=\"01\" ValorUnitario=\"2641.15\"/></cfdi:Conceptos><cfdi:Complemento><nomina12:Nomina FechaFinalPago=\"2025-10-15\" FechaInicialPago=\"2025-10-09\" FechaPago=\"2025-10-15\" NumDiasPagados=\"7\" TipoNomina=\"O\" TotalDeducciones=\"275.18\" TotalOtrosPagos=\"0.00\" TotalPercepciones=\"2641.15\" Version=\"1.2\"><nomina12:Emisor RegistroPatronal=\"D4534011108\"/><nomina12:Receptor Antigüedad=\"P1Y6M24D\" ClaveEntFed=\"NLE\" Curp=\"GACR020208HNLRSFA6\" Departamento=\"Oficina\" FechaInicioRelLaboral=\"2024-03-21\" NumEmpleado=\"17\" NumSeguridadSocial=\"10220279722\" PeriodicidadPago=\"02\" Puesto=\"Operaciones\" RiesgoPuesto=\"1\" SalarioBaseCotApor=\"341.2\" SalarioDiarioIntegrado=\"341.2\" Sindicalizado=\"No\" TipoContrato=\"01\" TipoJornada=\"01\" TipoRegimen=\"02\"/><nomina12:Percepciones TotalExento=\"0\" TotalGravado=\"2641.15\" TotalSueldos=\"2641.15\"><nomina12:Percepcion Clave=\"BONO\" Concepto=\"Bonos\" ImporteExento=\"0.00\" ImporteGravado=\"690.19\" TipoPercepcion=\"050\"/><nomina12:Percepcion Clave=\"001\" Concepto=\"Sueldos, Salarios\" ImporteExento=\"0.00\" ImporteGravado=\"1950.96\" TipoPercepcion=\"001\"/></nomina12:Percepciones><nomina12:Deducciones TotalImpuestosRetenidos=\"218.41\" TotalOtrasDeducciones=\"56.77\"><nomina12:Deduccion Clave=\"ISR\" Concepto=\"ISR Retenido\" Importe=\"218.41\" TipoDeduccion=\"002\"/><nomina12:Deduccion Clave=\"IMSS\" Concepto=\"Seguridad Social\" Importe=\"56.77\" TipoDeduccion=\"001\"/></nomina12:Deducciones><nomina12:OtrosPagos><nomina12:OtroPago Clave=\"SUB\" Concepto=\"Subsidio para el empleo\" Importe=\"0.00\" TipoOtroPago=\"002\"><nomina12:SubsidioAlEmpleo SubsidioCausado=\"0.00\"/></nomina12:OtroPago></nomina12:OtrosPagos></nomina12:Nomina><tfd:TimbreFiscalDigital FechaTimbrado=\"2025-10-13T20:33:30\" NoCertificadoSAT=\"30001000000500003456\" RfcProvCertif=\"SPR190613I52\" SelloCFD=\"dwML0sI0uUeuMUR5khlEMpvxO6LwM+4z3QkZkr4hOTXsqEeiF0gue0leNp7t2qLChYmMzLAvLANI9lETdd7Q2i7uDA8w54MP92dmEf9Ih2U29a2VnYgi0iyCmQjckBVNDyFxRsiilfYbB0Gr+fjq8OtOn28zTe97x+JkjlSwHFEOpCiRwrCrfo57BFGqDW/gkJJia8lcjucsW2IqaADAPHRjKmXtrpEp12W4Yk4Azqj4uaCfLNvEQdDSJBUIdlnT27oSZQy8Ly7LHB7W46uaxhC8gjN+dEXaOK8q+AIW66m2cR6/6WZLCCa3cEnhjtHCLwlOpXnORhLJ/DKJcspmcg==\" SelloSAT=\"XV5LrUPjmcFlmPrrYXFhNcBMRT/jR+/EQmqa1gNghl9c4UNQQF8DHUDY71a8RvTVHKVpJ6caBRuVW92VLXTJZx76tO22eoclWT9z+APoALopH2poEoU5MhrPCd68BpLnFOeRJUcfYA0KrMrWUfxa0Mu+6FLRI7fS6S7A5N0IxixXclVpjfPqjb3l3FRj5/38dUHPIA0Y6qk7TqigpgqrsgICbOBwkryHz9Q4aaKGfg/zOyVFkZgowaQYs0mS3krIHmuRbn1GeWOY1YZKvFQK9sOE4JscXNHWf3XMQwYcIXl05S1WgxbTGFVKKdkNXGoRTB8RvUDQ/AHZHjyWNgP0Sw==\" UUID=\"1576405B-5CCB-4DBA-BD82-CEA13D4E7058\" Version=\"1.1\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\"/></cfdi:Complemento></cfdi:Comprobante>','2025-10-13 20:33:30',1950.96,0.00,0.00,690.19,2641.15,218.41,56.77,0.00,0.00,0.00,275.18,2365.97,'2025-10-14 08:33:31','2025-10-14 08:33:31',0.0000,690.1900,3352.6300,79.2300,711.4800,47.7700,119.4200,592.0600,0.00,48.00,0.00,0.00,7,-1950.96);
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
  `proveedor` varchar(255) DEFAULT NULL,
  `responsable` varchar(100) DEFAULT NULL,
  `fecha_solicitud` date DEFAULT NULL,
  `llegada_estimada` date DEFAULT NULL,
  `tipo_cambio` decimal(10,4) DEFAULT 0.0000,
  `total` decimal(10,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `iva` decimal(10,2) DEFAULT NULL,
  `neto` decimal(10,2) DEFAULT NULL,
  `total_pesos` decimal(10,2) DEFAULT NULL,
  `firma_llegada` text DEFAULT NULL,
  `cotizacion` varchar(50) DEFAULT NULL,
  `moneda` varchar(50) DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  `tipo_pago` varchar(100) DEFAULT NULL,
  `pago_estimado` date DEFAULT NULL,
  `pago` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_compra`
--

LOCK TABLES `orden_compra` WRITE;
/*!40000 ALTER TABLE `orden_compra` DISABLE KEYS */;
INSERT INTO `orden_compra` VALUES
(1,'1','Electrocomponentes MX','Rafael Garza','2025-10-13','2025-10-13',0.0000,NULL,17050.00,NULL,19778.00,19778.00,'2025-10-13','+IVA','MXN','','Contado','2025-10-21','2025-10-13'),
(2,NULL,'Suministros y Herramientas del Norte','Rafael Garza','2025-10-13','2025-10-13',0.0000,NULL,NULL,NULL,NULL,NULL,NULL,'+IVA','MXN',NULL,NULL,NULL,'2025-10-14'),
(3,'','Logística y Transporte S.A.','Rafael Garza','2025-10-13','2025-10-13',0.0000,NULL,12000.00,NULL,13920.00,13920.00,NULL,'+IVA','MXN','','Contado','2025-10-17',NULL),
(6,'','Logística y Transporte S.A.','Rafael Garza','2025-10-13','2025-10-13',0.0000,NULL,NULL,NULL,NULL,0.00,NULL,'','','','','2025-10-28','2025-10-14');
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
  `cliente` int(10) DEFAULT NULL,
  `planta` varchar(200) DEFAULT NULL,
  `fecha_alta` date DEFAULT NULL,
  `responsable` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT 'activo',
  PRIMARY KEY (`ot`)
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ot`
--

LOCK TABLES `ot` WRITE;
/*!40000 ALTER TABLE `ot` DISABLE KEYS */;
INSERT INTO `ot` VALUES
(710,'HABILITACIONES',NULL,NULL,NULL,NULL,'activo'),
(750,'Mtto TALLER',NULL,NULL,NULL,NULL,'activo'),
(760,'Compra EPP',NULL,NULL,NULL,NULL,'activo'),
(770,'Compra HERRAMIENTAS',NULL,NULL,NULL,NULL,'activo'),
(780,'Compra CONSUMIBLES',NULL,NULL,NULL,NULL,'activo'),
(790,'OFICINA',NULL,NULL,NULL,NULL,'activo'),
(1000,'Gestor a la medida',1,'Monterrey','2025-10-10','Rafael Garza','activo'),
(1001,'Gestor Produccion',55,'Monterrey','2025-10-10','Rafael Garza','activo'),
(1002,'Solis programm',52,'Monterrey','2025-10-10','Rafael Garza','activo'),
(1003,'App consultas nomina',51,'Monterrey','2025-10-10','Rafael Garza','activo'),
(1004,'Bonos desempeño',50,'Monterrey','2025-10-10','Rafael Garza','activo');
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
  `cantidad` decimal(10,2) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  `moneda` varchar(3) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `tipo_cambio` decimal(10,4) DEFAULT 22.0000,
  `total_pesos` decimal(10,2) DEFAULT NULL,
  `unidad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidas`
--

LOCK TABLES `partidas` WRITE;
/*!40000 ALTER TABLE `partidas` DISABLE KEYS */;
INSERT INTO `partidas` VALUES
(1,1,1.00,'Gestor a la medida',60000.00,'MXN',60000.00,22.0000,60000.00,'Servicios'),
(2,2,1.00,'Gestor a la medida',30000.00,'MXN',30000.00,22.0000,30000.00,'Servicios'),
(3,3,1.00,'App entrenamiento',7500.00,'MXN',7500.00,22.0000,7500.00,'Servicios'),
(4,4,1.00,'app consulta nomina',10722.26,'MXN',10722.26,22.0000,10722.26,'Servicios'),
(5,5,3.00,'Bonos',55000.00,'MXN',165000.00,22.0000,165000.00,'Servicios');
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
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER before_insert_partidas
BEFORE INSERT ON partidas
FOR EACH ROW
BEGIN
    SET NEW.total = NEW.precio_unitario * NEW.cantidad;

    IF NEW.moneda = 'USD' THEN
        SET NEW.total_pesos = NEW.total * NEW.tipo_cambio;
    ELSE
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
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER after_insert_partidas
AFTER INSERT ON partidas
FOR EACH ROW
BEGIN
    UPDATE pedido
    SET valor_pesos = (
        SELECT SUM(total_pesos) FROM partidas WHERE id_pedido = NEW.id_pedido
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
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER before_update_partidas
BEFORE UPDATE ON partidas
FOR EACH ROW
BEGIN
    SET NEW.total = NEW.precio_unitario * NEW.cantidad;

    IF NEW.moneda = 'USD' THEN
        SET NEW.total_pesos = NEW.total * NEW.tipo_cambio;
    ELSE
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
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER after_update_partidas
AFTER UPDATE ON partidas
FOR EACH ROW
BEGIN
    UPDATE pedido
    SET valor_pesos = (
        SELECT SUM(total_pesos) FROM partidas WHERE id_pedido = NEW.id_pedido
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
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER after_delete_partidas
AFTER DELETE ON partidas
FOR EACH ROW
BEGIN
    UPDATE pedido
    SET valor_pesos = (
        SELECT SUM(total_pesos) FROM partidas WHERE id_pedido = OLD.id_pedido
    )
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
  `ot` int(11) DEFAULT NULL,
  `descripcion` varchar(255) NOT NULL,
  `fecha_alta` date DEFAULT current_timestamp(),
  `valor_pesos` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ot` (`ot`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`ot`) REFERENCES `ot` (`ot`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES
(1,1000,'gestor a la medida','2025-10-10',60000.00),
(2,1001,'gestor a la medida','2025-10-10',30000.00),
(3,1002,'App entranamiento','2025-10-10',7500.00),
(4,1003,'app consulta nomina','2025-10-10',10722.26),
(5,1004,'Bonos','2025-10-10',165000.00);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penalizaciones_retardo`
--

DROP TABLE IF EXISTS `penalizaciones_retardo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `penalizaciones_retardo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rango_min_inicio` int(11) NOT NULL,
  `rango_min_fin` int(11) NOT NULL,
  `penalizacion_min` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penalizaciones_retardo`
--

LOCK TABLES `penalizaciones_retardo` WRITE;
/*!40000 ALTER TABLE `penalizaciones_retardo` DISABLE KEYS */;
/*!40000 ALTER TABLE `penalizaciones_retardo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil_fiscal`
--

DROP TABLE IF EXISTS `perfil_fiscal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil_fiscal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) DEFAULT NULL,
  `rfc` varchar(13) DEFAULT NULL,
  `razon_social` varchar(255) DEFAULT NULL,
  `regimen_fiscal` varchar(3) DEFAULT NULL,
  `ruta_cer` longtext DEFAULT NULL,
  `ruta_key` longtext DEFAULT NULL,
  `password_key` varchar(255) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT current_timestamp(),
  `codigo_postal` int(11) DEFAULT NULL,
  `registro_patronal` varchar(11) DEFAULT NULL,
  `CURP` varchar(18) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `telefono` varchar(14) DEFAULT NULL,
  `correo` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_fiscal`
--

LOCK TABLES `perfil_fiscal` WRITE;
/*!40000 ALTER TABLE `perfil_fiscal` DISABLE KEYS */;
INSERT INTO `perfil_fiscal` VALUES
(1,'img/logos/Color logo with background.png','GACR0202086G8','RAFAEL GARZA CASTILLO','626','/var/secure_csd/GACR0202086G8/00001000000709028763.cer','/var/secure_csd/GACR0202086G8/CSD_FacturacionRafaelG2024_GACR0202086G8_20240730_133719.key','Rafagarza27','2025-10-10 10:22:07',64860,'1','Rafael@growtech-so','contry pleyades 222','8123873054','rafael@growtech-solutions.com.mx');
/*!40000 ALTER TABLE `perfil_fiscal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periodo`
--

DROP TABLE IF EXISTS `periodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `periodo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) DEFAULT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `periodicidad_pago` varchar(11) DEFAULT NULL,
  `clave_tipo_nomina` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodo`
--

LOCK TABLES `periodo` WRITE;
/*!40000 ALTER TABLE `periodo` DISABLE KEYS */;
INSERT INTO `periodo` VALUES
(1,'Semanal','2025-10-11','2025-10-17','02','O');
/*!40000 ALTER TABLE `periodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permisos_grupo`
--

DROP TABLE IF EXISTS `permisos_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `permisos_grupo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grupo_id` int(11) NOT NULL,
  `pestaña_id` int(11) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `grupo_id` (`grupo_id`),
  KEY `pestaña_id` (`pestaña_id`),
  CONSTRAINT `permisos_grupo_ibfk_1` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`),
  CONSTRAINT `permisos_grupo_ibfk_2` FOREIGN KEY (`pestaña_id`) REFERENCES `pestañas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permisos_grupo`
--

LOCK TABLES `permisos_grupo` WRITE;
/*!40000 ALTER TABLE `permisos_grupo` DISABLE KEYS */;
INSERT INTO `permisos_grupo` VALUES
(1,7,37,1),
(2,7,174,1),
(3,7,178,1),
(4,7,12,1),
(5,7,170,1),
(6,7,169,1),
(7,7,15,1),
(8,7,13,1),
(9,7,10,1),
(10,7,14,1),
(11,7,175,1),
(12,7,176,1),
(13,7,171,1),
(14,7,172,1),
(15,7,11,1),
(16,7,9,1),
(17,7,207,1),
(18,7,8,1),
(19,7,173,1),
(20,7,208,1),
(21,7,179,1),
(22,7,180,1),
(23,7,22,1),
(24,7,19,1),
(25,7,21,1),
(26,7,20,1),
(27,7,18,1),
(28,7,181,1),
(29,7,187,1),
(30,7,177,1),
(31,7,184,1),
(32,7,186,1),
(33,7,185,1),
(34,7,183,1),
(35,7,17,1),
(36,7,16,1),
(37,7,203,1),
(38,7,24,1),
(39,7,209,1),
(40,7,206,1),
(41,7,202,1),
(42,7,198,1),
(43,7,190,1),
(44,7,204,1),
(45,7,193,1),
(46,7,23,1),
(47,7,205,1),
(48,7,25,1),
(49,7,26,1),
(50,7,188,1),
(51,7,194,1),
(52,7,189,1),
(53,7,199,1),
(54,7,195,1),
(55,7,191,1),
(56,7,30,1),
(57,7,197,1),
(58,7,196,1),
(59,7,192,1),
(60,7,33,1),
(61,7,27,1),
(62,7,32,1),
(63,7,31,1),
(64,7,28,1),
(65,7,29,1),
(66,7,201,1),
(67,7,200,1),
(68,7,182,1),
(69,7,35,1),
(70,7,7,1),
(71,7,34,1),
(72,7,210,1),
(73,7,211,1),
(74,7,38,1),
(75,7,36,1),
(76,7,212,1),
(77,7,213,1);
/*!40000 ALTER TABLE `permisos_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pestañas`
--

DROP TABLE IF EXISTS `pestañas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pestañas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` enum('Proyectos','RecursosHumanos','Almacen','Finanzas','Administracion') NOT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pestañas`
--

LOCK TABLES `pestañas` WRITE;
/*!40000 ALTER TABLE `pestañas` DISABLE KEYS */;
INSERT INTO `pestañas` VALUES
(7,'Administracion','perfil'),
(8,'Proyectos','proyectos'),
(9,'Proyectos','pedidos'),
(10,'Proyectos','avance_ot'),
(11,'Proyectos','historial_bonos'),
(12,'Proyectos','alta_actividades'),
(13,'Proyectos','avance_diario'),
(14,'Proyectos','cronograma'),
(15,'Proyectos','areas'),
(16,'RecursosHumanos','trabajadores'),
(17,'RecursosHumanos','reporte_asistencia'),
(18,'RecursosHumanos','historial_vacaciones'),
(19,'RecursosHumanos','historial_incapacidad'),
(20,'RecursosHumanos','historial_suspensiones'),
(21,'RecursosHumanos','historial_infonavit'),
(22,'RecursosHumanos','historial_bajas'),
(23,'Almacen','historial_de_compras'),
(24,'Almacen','compras'),
(25,'Almacen','ordenes_compras'),
(26,'Almacen','proveedores'),
(27,'Finanzas','historial_facturas'),
(28,'Finanzas','nomina'),
(29,'Finanzas','pago_proveedores'),
(30,'Finanzas','clientes'),
(31,'Finanzas','historial_productos'),
(32,'Finanzas','historial_prestamos'),
(33,'Finanzas','fondo_ahorro'),
(34,'Administracion','registro_listas'),
(35,'Administracion','horarios'),
(36,'Administracion','usuarios'),
(37,'Administracion','grupos'),
(38,'Administracion','ubicaciones'),
(169,'Proyectos','alta_proyectos'),
(170,'Proyectos','alta_pedido'),
(171,'Proyectos','editar_pedido'),
(172,'Proyectos','evaluacion_ot'),
(173,'Proyectos','registro_bonos'),
(174,'Proyectos','agendar'),
(175,'Proyectos','detalle_agenda'),
(176,'Proyectos','detalle_fijo'),
(177,'RecursosHumanos','registro_horas'),
(178,'Proyectos','agregar_trabajo_fijo'),
(179,'RecursosHumanos','alta_trabajador'),
(180,'RecursosHumanos','historial_asistencia'),
(181,'RecursosHumanos','registro_asistencia'),
(182,'Administracion','autorizar_horas'),
(183,'RecursosHumanos','registro_vacaciones'),
(184,'RecursosHumanos','registro_incapacidad'),
(185,'RecursosHumanos','registro_suspenciones'),
(186,'RecursosHumanos','registro_infonavit'),
(187,'RecursosHumanos','registro_bajas'),
(188,'Almacen','requisicion'),
(189,'Almacen','solicitud_compras'),
(190,'Almacen','editar_oc'),
(191,'Finanzas','alta_proveedor'),
(192,'Finanzas','editar_proveedor'),
(193,'Almacen','historial_almacen'),
(194,'Almacen','solicitud_almacen'),
(195,'Finanzas','alta_de_factura'),
(196,'Finanzas','editar_factura'),
(197,'Finanzas','detalle_nomina'),
(198,'Almacen','editar_oc'),
(199,'Finanzas','alta_cliente'),
(200,'Finanzas','registro_producto'),
(201,'Finanzas','registro_prestamos'),
(202,'Almacen','editar_compras'),
(203,'Almacen','almacen_epp'),
(204,'Almacen','entrada_epp'),
(205,'Almacen','historico_epp'),
(206,'Almacen','crear_requisicion'),
(207,'Proyectos','prerrequisitos'),
(208,'Proyectos','tiempo_piezas'),
(209,'Almacen','consumibles'),
(210,'Administracion','reporte_financiero'),
(211,'Administracion','reporte_proyectos'),
(212,'Administracion','subir_facturas'),
(213,'Finanzas','alta_rep');
/*!40000 ALTER TABLE `pestañas` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piezas`
--

LOCK TABLES `piezas` WRITE;
/*!40000 ALTER TABLE `piezas` DISABLE KEYS */;
INSERT INTO `piezas` VALUES
(1,1,'Inicio',NULL,NULL,'',1.00,'2025-08-12','2025-10-01'),
(2,1,'Fin',NULL,NULL,'',0.00,'2025-10-01','2025-10-08'),
(25,1,'Servidor local','Programacion',1000,'',0.00,'2025-10-13',NULL),
(26,2,'Registro kpis','Programacion',1000,'En cartas personalizables',0.00,'2025-10-13','2025-10-13'),
(27,1,'CRM alta pedidos','Programacion',1000,'Diseño formal serio',0.00,'2025-10-13',NULL),
(28,1,'Analisis desempeño viaticos','Programacion',1000,'Graficos de araña ',0.00,'2025-10-13',NULL),
(29,2,'Modulo dietas','Programacion',1002,'Color #756443',0.00,'2025-10-13',NULL),
(30,1,'Rutina abs en semanal','Programacion',1002,'',0.00,NULL,NULL);
/*!40000 ALTER TABLE `piezas` ENABLE KEYS */;
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
  KEY `compra` (`compra`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prerrequisitos`
--

LOCK TABLES `prerrequisitos` WRITE;
/*!40000 ALTER TABLE `prerrequisitos` DISABLE KEYS */;
INSERT INTO `prerrequisitos` VALUES
(1,25,'25',NULL),
(2,25,NULL,26),
(3,25,NULL,27),
(4,27,NULL,25);
/*!40000 ALTER TABLE `prerrequisitos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamos`
--

DROP TABLE IF EXISTS `prestamos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamos` (
  `id_prestamo` int(11) NOT NULL AUTO_INCREMENT,
  `id_trabajador` int(11) NOT NULL,
  `prestamo` decimal(10,2) NOT NULL,
  `fecha` date NOT NULL,
  `semanas` int(11) NOT NULL,
  `monto_semanal` decimal(10,2) DEFAULT NULL,
  `fecha_final` date DEFAULT NULL,
  PRIMARY KEY (`id_prestamo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamos`
--

LOCK TABLES `prestamos` WRITE;
/*!40000 ALTER TABLE `prestamos` DISABLE KEYS */;
/*!40000 ALTER TABLE `prestamos` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER trg_prestamos_before_insert
BEFORE INSERT ON prestamos
FOR EACH ROW
BEGIN
    -- Calcular monto semanal
    SET NEW.monto_semanal = NEW.prestamo / NEW.semanas;
    
    -- Calcular fecha final
    SET NEW.fecha_final = DATE_ADD(NEW.fecha, INTERVAL NEW.semanas WEEK);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clave` varchar(20) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `clave_unidad` varchar(10) DEFAULT NULL,
  `unidad` varchar(50) DEFAULT NULL,
  `fecha_alta` datetime DEFAULT current_timestamp(),
  `iva` decimal(30,4) DEFAULT NULL,
  `ieps` decimal(30,4) DEFAULT NULL,
  `retencion_isr` decimal(30,4) DEFAULT NULL,
  `retencion_iva` decimal(30,4) DEFAULT NULL,
  `precio` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES
(6,'81161501','Servicios profesionales de desarollo de gestor de produccion','A9','Tarífa','2025-10-10 09:57:33',16.0000,0.0000,1.2500,10.6667,15000.0000),
(7,'80101500','Servicios profesionales y consultoría para el departamento de ventas','E48','Servicio','2025-10-10 09:59:34',16.0000,0.0000,1.2500,10.6667,55000.0000);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES
(1,'Proveedora Industrial S.A. de C.V.','Av. Industria 123, Monterrey, NL','8181234567','contacto@proveedoraindustrial.com',30),
(2,'Suministros y Herramientas del Norte','Calle de la Herramienta 45, Guadalupe, NL','8182345678','ventas@suministrosnorte.com',15),
(3,'Materiales de Oficina Monterrey','Blvd. Oficina 789, Monterrey, NL','8183456789','info@materialesoficina.com',30),
(4,'Electrocomponentes MX','Av. Tecnología 321, San Nicolás, NL','8184567890','ventas@electrocomponentes.mx',60),
(5,'Logística y Transporte S.A.','Calle Logística 56, Apodaca, NL','8185678901','contacto@logisticaytransporte.com',45);
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rep_facturas`
--

DROP TABLE IF EXISTS `rep_facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `rep_facturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `factura_id` int(11) NOT NULL,
  `archivo_xml` varchar(255) DEFAULT NULL,
  `archivo_pdf` varchar(255) DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `forma_pago` varchar(50) DEFAULT NULL,
  `creado_en` timestamp NULL DEFAULT current_timestamp(),
  `respuesta` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `factura_id` (`factura_id`),
  CONSTRAINT `rep_facturas_ibfk_1` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_facturas`
--

LOCK TABLES `rep_facturas` WRITE;
/*!40000 ALTER TABLE `rep_facturas` DISABLE KEYS */;
INSERT INTO `rep_facturas` VALUES
(1,54,NULL,NULL,'2025-10-16',100.00,'03','2025-10-16 19:04:39',''),
(2,54,NULL,NULL,'2025-10-15',150.00,'01','2025-10-16 19:06:27','<?xml version=\"1.0\" encoding=\"UTF-8\"?><servicioTimbrado>\n<id>fde32089-2914-4810-8246-976db64e1283</id>\n<timbradoOk>false</timbradoOk>\n<contrato>55a96814-90ac-43f6-80a8-d058aa4e1c11</contrato>\n<codigo>301</codigo>\n<mensaje>No está permitido el nodo tfd:TimbreFiscalDigital</mensaje>\n</servicioTimbrado>\n');
/*!40000 ALTER TABLE `rep_facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suspensiones`
--

DROP TABLE IF EXISTS `suspensiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `suspensiones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_trabajador` int(11) NOT NULL,
  `fecha_inicial` date NOT NULL,
  `fecha_final` date DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `dias` int(11) DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_trabajador` (`id_trabajador`),
  CONSTRAINT `suspensiones_ibfk_1` FOREIGN KEY (`id_trabajador`) REFERENCES `trabajadores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suspensiones`
--

LOCK TABLES `suspensiones` WRITE;
/*!40000 ALTER TABLE `suspensiones` DISABLE KEYS */;
INSERT INTO `suspensiones` VALUES
(5,3,'2025-10-16','2025-10-16','s',1,NULL);
/*!40000 ALTER TABLE `suspensiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajadores`
--

DROP TABLE IF EXISTS `trabajadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `trabajadores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apellidos` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `curp` varchar(100) DEFAULT NULL,
  `rfc` varchar(13) NOT NULL,
  `nss` varchar(11) NOT NULL,
  `estado` enum('Activo','Inactivo') NOT NULL DEFAULT 'Activo',
  `clave_bancaria` varchar(18) NOT NULL,
  `codigo_postal` varchar(10) NOT NULL,
  `clave_entidad_fed` varchar(10) NOT NULL,
  `forma_de_pago` varchar(50) NOT NULL,
  `empresa` varchar(255) NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `cronograma` text NOT NULL DEFAULT '1',
  `area` varchar(100) NOT NULL,
  `puesto` varchar(100) NOT NULL,
  `contrato` varchar(100) NOT NULL,
  `telefono` text DEFAULT NULL,
  `correo` text DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `supervisor` text DEFAULT NULL,
  `turno` text DEFAULT NULL,
  `banco` text DEFAULT NULL,
  `calculo_horas` varchar(100) NOT NULL DEFAULT 'reloj',
  `tipo_contrato` varchar(100) DEFAULT NULL,
  `regimen_fiscal` int(11) DEFAULT NULL,
  `complemento` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajadores`
--

LOCK TABLES `trabajadores` WRITE;
/*!40000 ALTER TABLE `trabajadores` DISABLE KEYS */;
INSERT INTO `trabajadores` VALUES
(1,'Garza Castillo','Rafael','2008-02-02','2024-03-21','GACR020208HNLRSFA6','GACR0202086G8','10220279722','Activo','','64860','NLE','transferencia electronica','Servicios industriales de monterrey ',325.16,'1','Oficina','Operaciones','Semanal','8123873054','rafael@transimex.com.mx','contry pleyades 222','','4','Santander','Automatico','Tiempo indeterminado',605,0.00),
(2,'Valdovinos Segura','Alma Paloma','1965-12-10','2022-11-11','GAZR651215HNLRML04','GAZR651215S2A','43886568062','Activo','1','67180','NLE','transferencia electronica','Servicios industriales de monterrey',1320.00,'1','Gerencia','Director Ejecutivo','Quincenal',NULL,NULL,NULL,NULL,'4',NULL,'Automatico','Tiempo indeterminado',605,NULL),
(3,'Garcia Morales','Abraham','1970-08-30','2012-06-01','EALS700830HNLSPL05','EALS700830LU4','43877084855','Activo','0','88780','NLE','transferencia electronica','Servicios industriales de monterrey',450.00,'1','Taller','Operaciones','Semanal',NULL,NULL,NULL,NULL,'4','','Reloj','Tiempo indeterminado',605,600.00),
(4,'Melo Gallegos','Francisco','1989-06-29','2013-11-15','GACA890629MNLRRN00','GACA890629197','43088950894','Activo','0','67182','NLE','transferencia electronica','Servicios industriales de monterrey',392.86,'1','Oficina','Operaciones','Semanal',NULL,NULL,NULL,NULL,'4',NULL,'Automatico','Tiempo indeterminado',605,0.00);
/*!40000 ALTER TABLE `trabajadores` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER trigger_despues_insertar_trabajador 
AFTER INSERT ON trabajadores
FOR EACH ROW 
BEGIN
    DECLARE fecha_actual DATE;
    DECLARE fecha_final DATE;
    DECLARE id_cronograma_primero INT;

    -- 1. Insertar en historial_salarios con salario inicial
    INSERT INTO historial_salarios (id_trabajador, valor_antiguo, valor_actual, fecha_cambio)
    VALUES (NEW.id, 0, NEW.salario, NOW());

    -- 2. Insertar registros en cronograma
    SET fecha_actual = CURDATE();
    SET fecha_final = DATE_ADD(fecha_actual, INTERVAL 3 DAY);

    -- Primer registro en cronograma
    INSERT INTO cronograma (id_trabajador, id_pieza, id_previa, duracion, fecha_inicial, fecha_final)
    VALUES (NEW.id, 1, 0, 3, fecha_actual, fecha_final);

    SET id_cronograma_primero = LAST_INSERT_ID();

    -- Segundo registro
    INSERT INTO cronograma (id_trabajador, id_pieza, id_previa, duracion)
    VALUES (NEW.id, 2, id_cronograma_primero, 3);
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
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER registrar_cambio_salario 
BEFORE UPDATE ON trabajadores
FOR EACH ROW 
BEGIN
    IF NEW.salario <> OLD.salario THEN
        INSERT INTO historial_salarios (id_trabajador, valor_antiguo, valor_actual, fecha_cambio)
        VALUES (OLD.id, OLD.salario, NEW.salario, NOW());
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `turno_horarios`
--

DROP TABLE IF EXISTS `turno_horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `turno_horarios` (
  `id_turno_horario` int(11) NOT NULL AUTO_INCREMENT,
  `id_turno` int(11) NOT NULL,
  `dia_semana` enum('Lunes','Martes','Miércoles','Jueves','Viernes','Sábado','Domingo') NOT NULL,
  `hora_entrada` time NOT NULL,
  `hora_salida` time NOT NULL,
  `horas_dia` decimal(4,2) GENERATED ALWAYS AS ((timestampdiff(MINUTE,`hora_entrada`,`hora_salida`) - ifnull(`minutos_descanso`,0)) / 60) STORED,
  `minutos_descanso` int(11) DEFAULT 0,
  PRIMARY KEY (`id_turno_horario`),
  KEY `id_turno` (`id_turno`),
  CONSTRAINT `turno_horarios_ibfk_1` FOREIGN KEY (`id_turno`) REFERENCES `turnos` (`id_turno`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turno_horarios`
--

LOCK TABLES `turno_horarios` WRITE;
/*!40000 ALTER TABLE `turno_horarios` DISABLE KEYS */;
INSERT INTO `turno_horarios` VALUES
(14,4,'Lunes','07:00:00','16:00:00',8.50,30),
(15,4,'Martes','07:00:00','16:00:00',8.50,30),
(16,4,'Miércoles','07:00:00','16:00:00',8.50,30),
(17,4,'Jueves','07:00:00','16:00:00',8.50,30),
(18,4,'Viernes','07:00:00','16:00:00',8.50,30),
(19,4,'Sábado','07:00:00','13:00:00',5.50,30);
/*!40000 ALTER TABLE `turno_horarios` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `trg_turno_horarios_ai` AFTER INSERT ON `turno_horarios` FOR EACH ROW BEGIN
    UPDATE turnos
    SET tipo_jornada = tipo_jornada(NEW.id_turno)
    WHERE id_turno = NEW.id_turno;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `trg_turno_horarios_au` AFTER UPDATE ON `turno_horarios` FOR EACH ROW BEGIN
    UPDATE turnos
    SET tipo_jornada = tipo_jornada(NEW.id_turno)
    WHERE id_turno = NEW.id_turno;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER `trg_turno_horarios_ad` AFTER DELETE ON `turno_horarios` FOR EACH ROW BEGIN
    UPDATE turnos
    SET tipo_jornada = tipo_jornada(OLD.id_turno)
    WHERE id_turno = OLD.id_turno;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `turnos`
--

DROP TABLE IF EXISTS `turnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `turnos` (
  `id_turno` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_turno` varchar(50) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `tipo_jornada` enum('Diurna','Nocturna','Mixta','Indefinida') DEFAULT 'Indefinida',
  PRIMARY KEY (`id_turno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turnos`
--

LOCK TABLES `turnos` WRITE;
/*!40000 ALTER TABLE `turnos` DISABLE KEYS */;
INSERT INTO `turnos` VALUES
(4,'Turno completo taller','','Diurna');
/*!40000 ALTER TABLE `turnos` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubicaciones`
--

LOCK TABLES `ubicaciones` WRITE;
/*!40000 ALTER TABLE `ubicaciones` DISABLE KEYS */;
INSERT INTO `ubicaciones` VALUES
(9,'TRANSIMEX',25.656240,-100.220978),
(10,'Oficina',25.635736,-100.278190),
(11,'Buffalo',25.638708,-100.286440);
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
  `grupo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rol` (`rol`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES
(1,'rafael@growtech-solutions.com.mx','Rafa.garza27','dueño',7);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacaciones`
--

DROP TABLE IF EXISTS `vacaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_trabajador` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `dias_solicitados` int(11) GENERATED ALWAYS AS (to_days(`fecha_fin`) - to_days(`fecha_inicio`) + 1) STORED,
  `motivo` varchar(255) DEFAULT NULL,
  `estado` enum('pendiente','aprobado','rechazado') DEFAULT 'pendiente',
  `fecha_registro` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `id_trabajador` (`id_trabajador`),
  CONSTRAINT `vacaciones_ibfk_1` FOREIGN KEY (`id_trabajador`) REFERENCES `trabajadores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacaciones`
--

LOCK TABLES `vacaciones` WRITE;
/*!40000 ALTER TABLE `vacaciones` DISABLE KEYS */;
INSERT INTO `vacaciones` VALUES
(2,1,'2025-08-10','2025-08-11',2,'prueba','pendiente','2025-08-14 17:46:12'),
(3,12,'2025-08-04','2025-08-05',2,'','pendiente','2025-09-10 19:56:32'),
(4,12,'2025-09-23','2025-09-24',2,'h','pendiente','2025-09-23 20:53:42'),
(5,12,'2025-09-30','2025-10-30',31,'Prueba ','pendiente','2025-09-30 21:15:42'),
(6,3,'2025-10-13','2025-10-15',3,'','pendiente','2025-10-13 20:22:18'),
(7,3,'2025-10-16','2025-10-17',2,'','pendiente','2025-10-17 18:43:23');
/*!40000 ALTER TABLE `vacaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'finanzas_growtech'
--

--
-- Dumping routines for database 'finanzas_growtech'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `tipo_jornada` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`rafag`@`%` FUNCTION `tipo_jornada`(p_id_turno INT) RETURNS varchar(20) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
    DETERMINISTIC
BEGIN
    DECLARE jornada VARCHAR(20) DEFAULT 'Indefinida';
    DECLARE total_diurno INT DEFAULT 0;
    DECLARE total_nocturno INT DEFAULT 0;
    DECLARE total_mixto INT DEFAULT 0;
    DECLARE total_horarios INT DEFAULT 0;

    -- Contar horarios del turno
    SELECT COUNT(*) INTO total_horarios
    FROM turno_horarios
    WHERE id_turno = p_id_turno;

    -- Horarios completamente diurnos
    SELECT COUNT(*) INTO total_diurno
    FROM turno_horarios
    WHERE id_turno = p_id_turno
      AND hora_entrada >= '06:00:00'
      AND hora_salida <= '20:00:00';

    -- Horarios completamente nocturnos
    SELECT COUNT(*) INTO total_nocturno
    FROM turno_horarios
    WHERE id_turno = p_id_turno
      AND (hora_entrada >= '20:00:00' OR hora_salida <= '06:00:00');

    -- Horarios mixtos (cruzan día/noche)
    SELECT COUNT(*) INTO total_mixto
    FROM turno_horarios
    WHERE id_turno = p_id_turno
      AND ((hora_entrada < '20:00:00' AND hora_salida > '20:00:00')
        OR (hora_entrada < '06:00:00' AND hora_salida > '06:00:00'));

    -- Evaluar jornada del turno completo
    IF total_diurno = total_horarios THEN
        SET jornada = 'Diurna';
    ELSEIF total_nocturno = total_horarios THEN
        SET jornada = 'Nocturna';
    ELSEIF total_mixto > 0 THEN
        SET jornada = 'Mixta';
    ELSE
        SET jornada = 'Indefinida';
    END IF;

    RETURN jornada;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
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
/*!50003 DROP PROCEDURE IF EXISTS `insertar_cronograma_faltantes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`rafag`@`%` PROCEDURE `insertar_cronograma_faltantes`()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE trabajador_id INT;
    DECLARE fecha_actual DATE;
    DECLARE fecha_final DATE;
    DECLARE id_cronograma_primero INT;

    -- Cursor para trabajadores sin cronograma
    DECLARE cur CURSOR FOR
        SELECT id FROM trabajadores WHERE id NOT IN (SELECT DISTINCT id_trabajador FROM cronograma);

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Inicializar fechas
    SET fecha_actual = CURDATE();
    SET fecha_final = DATE_ADD(fecha_actual, INTERVAL 3 DAY);

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO trabajador_id;
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Insertar primer registro
        INSERT INTO cronograma (id_trabajador, id_pieza, id_previa, duracion, fecha_inicial, fecha_final)
        VALUES (trabajador_id, 1, 0, 3, fecha_actual, fecha_final);

        SET id_cronograma_primero = LAST_INSERT_ID();

        -- Insertar segundo registro
        INSERT INTO cronograma (id_trabajador, id_pieza, id_previa, duracion)
        VALUES (trabajador_id, 2, id_cronograma_primero, 3);
    END LOOP;

    CLOSE cur;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reporte_encargado_dinamico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
DELIMITER ;;
CREATE DEFINER=`rafag`@`%` PROCEDURE `reporte_encargado_dinamico`(IN `fecha_inicial` DATE, IN `fecha_final` DATE)
BEGIN
    DECLARE columnas_sql TEXT DEFAULT '';
    DECLARE fecha_actual DATE;
    
    -- Inicializar fecha actual
    SET fecha_actual = fecha_inicial;
    
    -- Construir columnas dinámicas por día
    WHILE fecha_actual <= fecha_final DO
        SET columnas_sql = CONCAT(
            columnas_sql,
            ", (SELECT SUM(tiempo) FROM (
                    SELECT fecha, id_pieza, id_trabajador, ot_tardia, tiempo
                    FROM transimex.encargado
                    UNION ALL
                    SELECT fecha, id_pieza, id_trabajador, ot_tardia, tiempo
                    FROM simsa.encargado
                ) AS e
                WHERE fecha = '", fecha_actual, "' AND id_trabajador = t.id) AS `", fecha_actual, "`"
        );
        SET fecha_actual = DATE_ADD(fecha_actual, INTERVAL 1 DAY);
    END WHILE;

    -- Construir SQL dinámico
    SET @sql = CONCAT(
        "SELECT
            t.*,
            t.id AS id_tra,
            CONCAT(t.nombre, ' ', t.apellidos) AS nombre_trabajador,
            t.empresa,
         (SELECT valor_actual 
         FROM historial_salarios 
         WHERE id_trabajador = t.id 
           AND fecha_cambio <= '", fecha_inicial, "' 
         ORDER BY fecha_cambio DESC 
         LIMIT 1) AS salario_historico,
        (SELECT IFNULL(SUM(monto), 0)
 FROM prestamos
 WHERE id_trabajador = t.id
   AND fecha_final BETWEEN '", fecha_inicial, "' AND '", fecha_final, "') AS prestamo,

(SELECT IFNULL(semanal, 0)
 FROM infonavit
 WHERE id_trabajador = t.id
   AND estado = 1
 LIMIT 1) AS infonavit,
            SUM(CASE WHEN (e.pieza_ot = 700 OR e.ot_tardia = 700 OR e.pieza_ot = 702 OR e.ot_tardia = 702) THEN 1 ELSE 0 END) AS faltas,
            SUM(CASE WHEN (e.pieza_ot = 706 OR e.ot_tardia = 706) THEN 1 ELSE 0 END) AS incapacitacion, 
            SUM(CASE WHEN (e.pieza_ot = 703 OR e.ot_tardia = 703 OR e.pieza_ot = 705 OR e.ot_tardia = 705) THEN 1 ELSE 0 END) AS vacaciones,
            SUM(CASE WHEN (e.pieza_ot = 711 OR e.ot_tardia = 711) THEN 1 ELSE 0 END) AS baja,
            SUM(CASE WHEN (e.pieza_ot = 712 OR e.ot_tardia = 712) THEN 1 ELSE 0 END) AS faltas_justificadas,
        MAX(
        CASE 
            WHEN DAYOFWEEK(e.fecha) = 7 AND (e.pieza_ot = 703 OR e.ot_tardia = 703)
            THEN 1 
            ELSE 0 
        END
    ) AS tomo_vacaciones_sabado,
            (SELECT IFNULL(SUM(r.penalizacion), 0)
             FROM transimex.retardo r
             WHERE r.trabajador = t.id
               AND r.fecha BETWEEN '", fecha_inicial, "' AND '", fecha_final, "') AS retrasos,
            (SELECT IFNULL(SUM(b.horas), 0)
             FROM (
                 SELECT horas, id_trabajador, fecha FROM transimex.bonos
                 UNION ALL
                 SELECT horas, id_trabajador, fecha FROM simsa.bonos
             ) AS b
             WHERE b.id_trabajador = t.id
               AND b.fecha BETWEEN '", fecha_inicial, "' AND '", fecha_final, "') AS horas_bonos,
            (
    IFNULL(SUM(e.tiempo), 0) -
    (SELECT IFNULL(SUM(r.penalizacion), 0)
     FROM transimex.retardo r
     WHERE r.trabajador = t.id
       AND r.fecha BETWEEN '", fecha_inicial, "' AND '", fecha_final, "')
) AS total_horas

            ", columnas_sql, "
        FROM (
            SELECT 
                a.fecha,
                a.id_pieza,
                a.id_trabajador,
                a.ot_tardia,
                a.tiempo,
                p.ot AS pieza_ot
            FROM transimex.encargado a
            LEFT JOIN transimex.piezas p ON a.id_pieza = p.id

            UNION ALL

            SELECT 
                b.fecha,
                b.id_pieza,
                b.id_trabajador,
                b.ot_tardia,
                b.tiempo,
                p2.ot AS pieza_ot
            FROM simsa.encargado b
            LEFT JOIN simsa.piezas p2 ON b.id_pieza = p2.id
        ) AS e
        LEFT JOIN transimex.trabajadores t ON e.id_trabajador = t.id
        WHERE 
            t.id IS NOT NULL 
            AND e.fecha BETWEEN '", fecha_inicial, "' AND '", fecha_final, "'
        GROUP BY t.id, t.nombre, t.apellidos, t.empresa
        ORDER BY t.empresa, t.apellidos"
    );

    -- Ejecutar SQL dinámico
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
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

-- Dump completed on 2025-11-11  2:00:02
