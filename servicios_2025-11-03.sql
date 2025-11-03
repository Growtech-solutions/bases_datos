/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: servicios
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
-- Current Database: `servicios`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `servicios` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `servicios`;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia`
--

LOCK TABLES `asistencia` WRITE;
/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonos`
--

LOCK TABLES `bonos` WRITE;
/*!40000 ALTER TABLE `bonos` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
(54,'Rafael Garza Castillo','GACR0202086G8','rafael@growtech-solutions.com.mx','8123873054','México','Nuevo Leon','Monterrey','64860','2025-09-25 22:08:18','G03','626');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes_respuestas`
--

LOCK TABLES `clientes_respuestas` WRITE;
/*!40000 ALTER TABLE `clientes_respuestas` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronograma`
--

LOCK TABLES `cronograma` WRITE;
/*!40000 ALTER TABLE `cronograma` DISABLE KEYS */;
INSERT INTO `cronograma` VALUES
(20,1,1,0,3.00,'2025-10-08','2025-10-11'),
(21,2,1,20,3.00,NULL,NULL),
(22,1,14,0,3.00,'2025-10-08','2025-10-11'),
(23,2,14,22,3.00,NULL,NULL),
(24,1,15,0,3.00,'2025-10-08','2025-10-11'),
(25,2,15,24,3.00,NULL,NULL),
(26,1,16,0,3.00,'2025-10-08','2025-10-11'),
(27,2,16,26,3.00,NULL,NULL),
(28,1,17,0,3.00,'2025-10-08','2025-10-11'),
(29,2,17,28,3.00,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronograma_fijo`
--

LOCK TABLES `cronograma_fijo` WRITE;
/*!40000 ALTER TABLE `cronograma_fijo` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encargado`
--

LOCK TABLES `encargado` WRITE;
/*!40000 ALTER TABLE `encargado` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura_detalles`
--

LOCK TABLES `factura_detalles` WRITE;
/*!40000 ALTER TABLE `factura_detalles` DISABLE KEYS */;
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
  `ieps` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
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
(11,'Prueba',10.00,0.00,'2025-10-01','2025-10-31');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fondo_ahorro_trabajador`
--

LOCK TABLES `fondo_ahorro_trabajador` WRITE;
/*!40000 ALTER TABLE `fondo_ahorro_trabajador` DISABLE KEYS */;
INSERT INTO `fondo_ahorro_trabajador` VALUES
(11,11,14,1400.00,'2025-10-01'),
(12,11,1,2000.00,'2025-10-09');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_salarios`
--

LOCK TABLES `historial_salarios` WRITE;
/*!40000 ALTER TABLE `historial_salarios` DISABLE KEYS */;
INSERT INTO `historial_salarios` VALUES
(4,1,'2025-08-08 19:27:28',0.00,1320.00),
(5,14,'2025-08-08 19:27:28',0.00,450.00),
(6,15,'2025-08-08 19:27:28',0.00,392.86),
(7,16,'2025-08-08 19:27:28',0.00,314.29),
(8,17,'2025-08-08 19:27:28',0.00,292.54),
(9,17,'2025-09-08 22:47:19',292.54,325.16);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horas_extra`
--

LOCK TABLES `horas_extra` WRITE;
/*!40000 ALTER TABLE `horas_extra` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infonavit`
--

LOCK TABLES `infonavit` WRITE;
/*!40000 ALTER TABLE `infonavit` DISABLE KEYS */;
INSERT INTO `infonavit` VALUES
(5,14,'mensual',517.00,'2025-09-01',NULL,1,'2');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listas`
--

LOCK TABLES `listas` WRITE;
/*!40000 ALTER TABLE `listas` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nomina`
--

LOCK TABLES `nomina` WRITE;
/*!40000 ALTER TABLE `nomina` DISABLE KEYS */;
INSERT INTO `nomina` VALUES
(40,4,'4',14,'F6A65EC1-5F17-4E10-BDE9-89488FAD325E','<?xml version=\"1.0\" encoding=\"UTF-8\"?><cfdi:Comprobante xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:nomina12=\"http://www.sat.gob.mx/nomina12\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" Certificado=\"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\" Descuento=\"2960.47\" Exportacion=\"01\" Fecha=\"2025-10-17T12:41:47\" Folio=\"4\" LugarExpedicion=\"64103\" MetodoPago=\"PUE\" Moneda=\"MXN\" NoCertificado=\"00001000000712253223\" Sello=\"PT8fyDInFfUvZztOuy8r95JbGJ2SK0A/WAqyQH5BR0p/TX2xHFoy3mz4RBtc/cx+iif2Cce6Dh0+u7VrBc7S4pumU0XFo5csaldyvcIhFdA24+FTmw2jvgwRQtwT+FTyV7iaoI9JVWDKqZu0oU73EpC2iGBtenw0kvJF5dEzqY+DmMtms3x9MAeVoigeXW86IWnrRxjSB+kjWcPBzx1qYYHMwPbYbDnnTvVSpXqL3Xy0jdOh2bRaMo81RtBTHkPXiaU7OabFHdCbxDOEBbYAkv9TsSa9nat2MYI/7Z4hsabjIpdtr2BO9qTrNHkyEksLJ31ibsfa4T4ph6v4lYLwmA==\" Serie=\"A\" SubTotal=\"3874.36\" TipoDeComprobante=\"N\" Total=\"913.89\" Version=\"4.0\" xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd http://www.sat.gob.mx/nomina12 http://www.sat.gob.mx/sitio_internet/cfd/nomina/nomina12.xsd\"><cfdi:Emisor Nombre=\"SERVICIOS INDUSTRIALES DE MONTERREY\" RegimenFiscal=\"601\" Rfc=\"SIM680423P4A\"/><cfdi:Receptor DomicilioFiscalReceptor=\"88780\" Nombre=\"SAUL ESTRADA LOPEZ\" RegimenFiscalReceptor=\"605\" Rfc=\"EALS700830LU4\" UsoCFDI=\"CN01\"/><cfdi:Conceptos><cfdi:Concepto Cantidad=\"1\" ClaveProdServ=\"84111505\" ClaveUnidad=\"ACT\" Descripcion=\"Pago de nómina\" Descuento=\"2960.47\" Importe=\"3874.36\" ObjetoImp=\"01\" ValorUnitario=\"3874.36\"/></cfdi:Conceptos><cfdi:Complemento><nomina12:Nomina FechaFinalPago=\"2025-10-22\" FechaInicialPago=\"2025-10-16\" FechaPago=\"2025-10-22\" NumDiasPagados=\"7\" TipoNomina=\"O\" TotalDeducciones=\"2960.47\" TotalOtrosPagos=\"0.00\" TotalPercepciones=\"3874.36\" Version=\"1.2\"><nomina12:Emisor RegistroPatronal=\"D4534011108\"/><nomina12:Receptor Antigüedad=\"P13Y4M21D\" ClaveEntFed=\"NLE\" Curp=\"EALS700830HNLSPL05\" Departamento=\"Taller\" FechaInicioRelLaboral=\"2012-06-01\" NumEmpleado=\"14\" NumSeguridadSocial=\"43877084855\" PeriodicidadPago=\"02\" Puesto=\"Operaciones\" RiesgoPuesto=\"1\" SalarioBaseCotApor=\"475.89\" SalarioDiarioIntegrado=\"475.89\" Sindicalizado=\"No\" TipoContrato=\"01\" TipoJornada=\"01\" TipoRegimen=\"02\"/><nomina12:Percepciones TotalExento=\"0\" TotalGravado=\"3874.36\" TotalSueldos=\"3874.36\"><nomina12:Percepcion Clave=\"BONO\" Concepto=\"Bonos\" ImporteExento=\"0.00\" ImporteGravado=\"895.73\" TipoPercepcion=\"050\"/><nomina12:Percepcion Clave=\"001\" Concepto=\"Sueldos, Salarios\" ImporteExento=\"0.00\" ImporteGravado=\"2978.63\" TipoPercepcion=\"001\"/></nomina12:Percepciones><nomina12:Deducciones TotalImpuestosRetenidos=\"443.47\" TotalOtrasDeducciones=\"2517\"><nomina12:Deduccion Clave=\"ISR\" Concepto=\"ISR Retenido\" Importe=\"443.47\" TipoDeduccion=\"002\"/><nomina12:Deduccion Clave=\"INF\" Concepto=\"Crédito INFONAVIT\" Importe=\"517\" TipoDeduccion=\"004\"/><nomina12:Deduccion Clave=\"FOA\" Concepto=\"Fondo de Ahorro\" Importe=\"1400\" TipoDeduccion=\"003\"/><nomina12:Deduccion Clave=\"PRE\" Concepto=\"Préstamos personales\" Importe=\"600.00\" TipoDeduccion=\"051\"/></nomina12:Deducciones><nomina12:OtrosPagos><nomina12:OtroPago Clave=\"SUB\" Concepto=\"Subsidio para el empleo\" Importe=\"0.00\" TipoOtroPago=\"002\"><nomina12:SubsidioAlEmpleo SubsidioCausado=\"0.00\"/></nomina12:OtroPago></nomina12:OtrosPagos></nomina12:Nomina><tfd:TimbreFiscalDigital FechaTimbrado=\"2025-10-17T12:41:47\" NoCertificadoSAT=\"30001000000500003456\" RfcProvCertif=\"SPR190613I52\" SelloCFD=\"PT8fyDInFfUvZztOuy8r95JbGJ2SK0A/WAqyQH5BR0p/TX2xHFoy3mz4RBtc/cx+iif2Cce6Dh0+u7VrBc7S4pumU0XFo5csaldyvcIhFdA24+FTmw2jvgwRQtwT+FTyV7iaoI9JVWDKqZu0oU73EpC2iGBtenw0kvJF5dEzqY+DmMtms3x9MAeVoigeXW86IWnrRxjSB+kjWcPBzx1qYYHMwPbYbDnnTvVSpXqL3Xy0jdOh2bRaMo81RtBTHkPXiaU7OabFHdCbxDOEBbYAkv9TsSa9nat2MYI/7Z4hsabjIpdtr2BO9qTrNHkyEksLJ31ibsfa4T4ph6v4lYLwmA==\" SelloSAT=\"D+Mj/ACLlHajcoF9NoUQJ3G/zrR8LjsK9xN/F1JkHrjtXD0ft/8Zu96PoIS2Y314eXK7qMkI7hiAfoacKWFwNpK9HualaB5uXK7lRmy7TMqGQHTT+Vkq8/FwPswM+8gWnvfl2wxYmN1P7T+yfuG6ucB2mnlhAnyY45AFg3fLz24h9r1EghkwsWpJ7B39knSupi4ytSs2Vd8qPCcAJk4qsYA+4IB97UtoWO8OrhPu9dzAxxA+jxCJH9xPSg77YrUO3XW1JfusCvZQ4yB8FmLxwOWtORe18p/kiYk9W7zZOgaKIuqZcF8Hud5o3LUoAJUdWZHztpUTuJN5AS2Ld5I1Mg==\" UUID=\"F6A65EC1-5F17-4E10-BDE9-89488FAD325E\" Version=\"1.1\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\"/></cfdi:Complemento></cfdi:Comprobante>','2025-10-17 12:41:47',2978.63,0.00,0.00,895.73,3874.36,443.47,0.00,600.00,1400.00,517.00,2960.47,913.89,'2025-10-17 18:41:48','2025-10-17 18:41:48',0.0000,895.7300,5434.6200,116.2300,938.8900,66.6200,166.5600,772.3300,0.00,48.00,0.00,0.00,7,621.37),
(41,4,'4',15,'24AC3E51-300B-4B63-ACA2-94BC73D643C6','<?xml version=\"1.0\" encoding=\"UTF-8\"?><cfdi:Comprobante xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:nomina12=\"http://www.sat.gob.mx/nomina12\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" Certificado=\"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\" Descuento=\"351.55\" Exportacion=\"01\" Fecha=\"2025-10-17T12:41:48\" Folio=\"4\" LugarExpedicion=\"64103\" MetodoPago=\"PUE\" Moneda=\"MXN\" NoCertificado=\"00001000000712253223\" Sello=\"jhgWFCwjNU1/m5cMGAH0P8mT16Xj1OQtjY93M6SXK7dZ1SCAFkGDy8utqzmKZK2TkL16+brnRmT1UrrDIMU5wXD85O/yHctLbGgeE30zZNaI5Jw3V29v6Q+ey51EoEwnFn5UbzCSgWYR1aMItpqFu7c1I4W8hpvPWl9yGoowhLYaDPmE2/TiuEmx7E4E3Lk6x6cTU/Y97hLc0OUJTIVFFkbem4tYz41gIE/ZR4yyYypPWOg208hNiX+sg7O3ddi8dvPjxg1jHUoPea6IcSR0vhQgGFdUHzTHgwKnKpqTPIDSeIKwK4ztDwb0gEX1Y/mF7SVYcSzjf6kQyMyMk9g2Xw==\" Serie=\"A\" SubTotal=\"3420.49\" TipoDeComprobante=\"N\" Total=\"3068.94\" Version=\"4.0\" xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd http://www.sat.gob.mx/nomina12 http://www.sat.gob.mx/sitio_internet/cfd/nomina/nomina12.xsd\"><cfdi:Emisor Nombre=\"SERVICIOS INDUSTRIALES DE MONTERREY\" RegimenFiscal=\"601\" Rfc=\"SIM680423P4A\"/><cfdi:Receptor DomicilioFiscalReceptor=\"67182\" Nombre=\"ANGELICA KARINA GARCIA CARDONA\" RegimenFiscalReceptor=\"605\" Rfc=\"GACA890629197\" UsoCFDI=\"CN01\"/><cfdi:Conceptos><cfdi:Concepto Cantidad=\"1\" ClaveProdServ=\"84111505\" ClaveUnidad=\"ACT\" Descripcion=\"Pago de nómina\" Descuento=\"351.55\" Importe=\"3420.49\" ObjetoImp=\"01\" ValorUnitario=\"3420.49\"/></cfdi:Conceptos><cfdi:Complemento><nomina12:Nomina FechaFinalPago=\"2025-10-22\" FechaInicialPago=\"2025-10-16\" FechaPago=\"2025-10-22\" NumDiasPagados=\"7\" TipoNomina=\"O\" TotalDeducciones=\"351.55\" TotalOtrosPagos=\"0.00\" TotalPercepciones=\"3420.49\" Version=\"1.2\"><nomina12:Emisor RegistroPatronal=\"D4534011108\"/><nomina12:Receptor Antigüedad=\"P11Y11M7D\" ClaveEntFed=\"NLE\" Curp=\"GACA890629MNLRRN00\" Departamento=\"Oficina\" FechaInicioRelLaboral=\"2013-11-15\" NumEmpleado=\"15\" NumSeguridadSocial=\"43088950894\" PeriodicidadPago=\"02\" Puesto=\"Operaciones\" RiesgoPuesto=\"1\" SalarioBaseCotApor=\"415.46\" SalarioDiarioIntegrado=\"415.46\" Sindicalizado=\"No\" TipoContrato=\"01\" TipoJornada=\"01\" TipoRegimen=\"02\"/><nomina12:Percepciones TotalExento=\"0\" TotalGravado=\"3420.49\" TotalSueldos=\"3420.49\"><nomina12:Percepcion Clave=\"BONO\" Concepto=\"Bonos\" ImporteExento=\"0.00\" ImporteGravado=\"820.08\" TipoPercepcion=\"050\"/><nomina12:Percepcion Clave=\"001\" Concepto=\"Sueldos, Salarios\" ImporteExento=\"0.00\" ImporteGravado=\"2600.41\" TipoPercepcion=\"001\"/></nomina12:Percepciones><nomina12:Deducciones TotalImpuestosRetenidos=\"351.55\" TotalOtrasDeducciones=\"0\"><nomina12:Deduccion Clave=\"ISR\" Concepto=\"ISR Retenido\" Importe=\"351.55\" TipoDeduccion=\"002\"/></nomina12:Deducciones><nomina12:OtrosPagos><nomina12:OtroPago Clave=\"SUB\" Concepto=\"Subsidio para el empleo\" Importe=\"0.00\" TipoOtroPago=\"002\"><nomina12:SubsidioAlEmpleo SubsidioCausado=\"0.00\"/></nomina12:OtroPago></nomina12:OtrosPagos></nomina12:Nomina><tfd:TimbreFiscalDigital FechaTimbrado=\"2025-10-17T12:41:48\" NoCertificadoSAT=\"30001000000500003456\" RfcProvCertif=\"SPR190613I52\" SelloCFD=\"jhgWFCwjNU1/m5cMGAH0P8mT16Xj1OQtjY93M6SXK7dZ1SCAFkGDy8utqzmKZK2TkL16+brnRmT1UrrDIMU5wXD85O/yHctLbGgeE30zZNaI5Jw3V29v6Q+ey51EoEwnFn5UbzCSgWYR1aMItpqFu7c1I4W8hpvPWl9yGoowhLYaDPmE2/TiuEmx7E4E3Lk6x6cTU/Y97hLc0OUJTIVFFkbem4tYz41gIE/ZR4yyYypPWOg208hNiX+sg7O3ddi8dvPjxg1jHUoPea6IcSR0vhQgGFdUHzTHgwKnKpqTPIDSeIKwK4ztDwb0gEX1Y/mF7SVYcSzjf6kQyMyMk9g2Xw==\" SelloSAT=\"JrpJkCHS2QGjC9lZQdC7YUt8NonAEqi/1I/wIob/lCHXCV8P8yLG5DnYwPp7qJu6Awe0YjBTsh7dtF0dktfBynNMpcSvmAT4fzjpwvoHCGKKpz6I0RXG1Lp4IHN2JdF+jl/1JyS3a7EA5I1AFPyy/3QDjU4wkGjuARLn9zU0bfONWj9I0Yom3ZJuwb7vBiNtPZnP6ouCcJ4JCYQQefgAxYENGVnRsPl/sR6dFTHvdRrbqF9EI7op489z7kQ7OADcVPH0BnduMO2EyWbmFJxWVFRy3kSryPR6sI7KdFXd/a0HyVfFverfw3zuhiBihhBaPZz+3Vkti1vB/2JXIJG83A==\" UUID=\"24AC3E51-300B-4B63-ACA2-94BC73D643C6\" Version=\"1.1\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\"/></cfdi:Complemento></cfdi:Comprobante>','2025-10-17 12:41:48',2600.41,0.00,0.00,820.08,3420.49,351.55,0.00,0.00,0.00,0.00,351.55,3068.94,'2025-10-17 18:41:49','2025-10-17 18:41:49',0.0000,820.0800,4257.3600,102.6100,836.8700,58.1600,145.4100,691.4600,0.00,48.00,0.00,0.00,7,-2600.41),
(42,4,'4',16,'BC61E8D1-8922-4A34-BCAE-95242F0A1C3E','<?xml version=\"1.0\" encoding=\"UTF-8\"?><cfdi:Comprobante xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:nomina12=\"http://www.sat.gob.mx/nomina12\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" Certificado=\"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\" Descuento=\"245.85\" Exportacion=\"01\" Fecha=\"2025-10-17T12:41:49\" Folio=\"4\" LugarExpedicion=\"64103\" MetodoPago=\"PUE\" Moneda=\"MXN\" NoCertificado=\"00001000000712253223\" Sello=\"OePBqhY4j1hG/igpXCu3Pg5XWZt1wRyMDLhvyUGswtXPGXFZCLZM17XomBFG/Ad2TLxjBG0sn5d6MTWF30IqKN6LbWXZFaXz0lCtm45LAr676guFyjPBfUSH1iIHZP3aTfJwQgvxsbojUfYJ9jsEdFqxmkKMBMPwjmiqozKRC5O9SIkocUwWeluf3ccqh0kA/r/d4bN80mPTJ4sIRWxFpMDaoKV7yxDrntZc88HMQZR23iYrmu2BKSVHF7+DT9VlCNANL4Xb3e37h1fGc8Tk3t4w52OrQeXfKYWXWatbyjmyro1JZomMdDrYl8P3fkgCgVmrPGANbNQuLjfpTrkOwg==\" Serie=\"A\" SubTotal=\"2812.68\" TipoDeComprobante=\"N\" Total=\"2566.83\" Version=\"4.0\" xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd http://www.sat.gob.mx/nomina12 http://www.sat.gob.mx/sitio_internet/cfd/nomina/nomina12.xsd\"><cfdi:Emisor Nombre=\"SERVICIOS INDUSTRIALES DE MONTERREY\" RegimenFiscal=\"601\" Rfc=\"SIM680423P4A\"/><cfdi:Receptor DomicilioFiscalReceptor=\"67250\" Nombre=\"GERARDO RUIZ SEGOVIANO\" RegimenFiscalReceptor=\"605\" Rfc=\"RUSG590606KI8\" UsoCFDI=\"CN01\"/><cfdi:Conceptos><cfdi:Concepto Cantidad=\"1\" ClaveProdServ=\"84111505\" ClaveUnidad=\"ACT\" Descripcion=\"Pago de nómina\" Descuento=\"245.85\" Importe=\"2812.68\" ObjetoImp=\"01\" ValorUnitario=\"2812.68\"/></cfdi:Conceptos><cfdi:Complemento><nomina12:Nomina FechaFinalPago=\"2025-10-22\" FechaInicialPago=\"2025-10-16\" FechaPago=\"2025-10-22\" NumDiasPagados=\"7\" TipoNomina=\"O\" TotalDeducciones=\"245.85\" TotalOtrosPagos=\"0.00\" TotalPercepciones=\"2812.68\" Version=\"1.2\"><nomina12:Emisor RegistroPatronal=\"D4534011108\"/><nomina12:Receptor Antigüedad=\"P2Y1M28D\" ClaveEntFed=\"NLE\" Curp=\"RUSG590606HNLZGR07\" Departamento=\"Taller\" FechaInicioRelLaboral=\"2023-08-24\" NumEmpleado=\"16\" NumSeguridadSocial=\"43775958473\" PeriodicidadPago=\"02\" Puesto=\"Operaciones\" RiesgoPuesto=\"1\" SalarioBaseCotApor=\"330.22\" SalarioDiarioIntegrado=\"330.22\" Sindicalizado=\"No\" TipoContrato=\"01\" TipoJornada=\"01\" TipoRegimen=\"02\"/><nomina12:Percepciones TotalExento=\"0\" TotalGravado=\"2812.68\" TotalSueldos=\"2812.68\"><nomina12:Percepcion Clave=\"BONO\" Concepto=\"Bonos\" ImporteExento=\"0.00\" ImporteGravado=\"718.78\" TipoPercepcion=\"050\"/><nomina12:Percepcion Clave=\"001\" Concepto=\"Sueldos, Salarios\" ImporteExento=\"0.00\" ImporteGravado=\"2093.9\" TipoPercepcion=\"001\"/></nomina12:Percepciones><nomina12:Deducciones TotalImpuestosRetenidos=\"245.85\" TotalOtrasDeducciones=\"0\"><nomina12:Deduccion Clave=\"ISR\" Concepto=\"ISR Retenido\" Importe=\"245.85\" TipoDeduccion=\"002\"/></nomina12:Deducciones><nomina12:OtrosPagos><nomina12:OtroPago Clave=\"SUB\" Concepto=\"Subsidio para el empleo\" Importe=\"0.00\" TipoOtroPago=\"002\"><nomina12:SubsidioAlEmpleo SubsidioCausado=\"0.00\"/></nomina12:OtroPago></nomina12:OtrosPagos></nomina12:Nomina><tfd:TimbreFiscalDigital FechaTimbrado=\"2025-10-17T12:41:49\" NoCertificadoSAT=\"30001000000500003456\" RfcProvCertif=\"SPR190613I52\" SelloCFD=\"OePBqhY4j1hG/igpXCu3Pg5XWZt1wRyMDLhvyUGswtXPGXFZCLZM17XomBFG/Ad2TLxjBG0sn5d6MTWF30IqKN6LbWXZFaXz0lCtm45LAr676guFyjPBfUSH1iIHZP3aTfJwQgvxsbojUfYJ9jsEdFqxmkKMBMPwjmiqozKRC5O9SIkocUwWeluf3ccqh0kA/r/d4bN80mPTJ4sIRWxFpMDaoKV7yxDrntZc88HMQZR23iYrmu2BKSVHF7+DT9VlCNANL4Xb3e37h1fGc8Tk3t4w52OrQeXfKYWXWatbyjmyro1JZomMdDrYl8P3fkgCgVmrPGANbNQuLjfpTrkOwg==\" SelloSAT=\"Om7DR83AG2qU9JKB06G+xJtTXs07dCgNL9wYpwbTONBvOWfsjVPVTxNlxUC9BBsV5aY9vCLbaOCkbkDe2V0HXRkLSOeth+RS0WwswN8QG280hT1aB0p9Eh55YGZVsR0do4r+uPqK85dvFlEoMFLQNOLx0HoRC390o/B0kEooL+4zhAawAK2ICD+aznLw+uPGpFmjnqLTl+0GWCPJ6SZLnNKHpl1QU88OyWGphOEsgIsjddMiFaGMGlktNIO8BwePr1x103eXom3TfxFWBhn9lqxSxbH5v05+6aub3MpFgDPw1cyHxmBeKJYBreExcqzu6ruGIZ59M0Z1FOubRDcHeQ==\" UUID=\"BC61E8D1-8922-4A34-BCAE-95242F0A1C3E\" Version=\"1.1\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\"/></cfdi:Complemento></cfdi:Comprobante>','2025-10-17 12:41:49',2093.90,0.00,0.00,718.78,2812.68,245.85,0.00,0.00,0.00,0.00,245.85,2566.83,'2025-10-17 18:41:49','2025-10-17 18:41:49',0.0000,718.7800,3505.6300,84.3800,692.9500,46.2300,115.5800,577.3700,0.00,48.00,0.00,0.00,7,-2093.90),
(43,4,'4',17,'B2044169-1059-4E22-9018-F8F1B9D4AD6A','<?xml version=\"1.0\" encoding=\"UTF-8\"?><cfdi:Comprobante xmlns:cfdi=\"http://www.sat.gob.mx/cfd/4\" xmlns:nomina12=\"http://www.sat.gob.mx/nomina12\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" Certificado=\"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\" Descuento=\"260.3\" Exportacion=\"01\" Fecha=\"2025-10-17T12:41:49\" Folio=\"4\" LugarExpedicion=\"64103\" MetodoPago=\"PUE\" Moneda=\"MXN\" NoCertificado=\"00001000000712253223\" Sello=\"XfhxoXmbYE2D+XThKPITvI+gTf2ciW7L0rFn6kek8HBQeln6nAg9N9ZWfqkIf94m8pDtfhanOb6GrRoqkL7X6LGdm7KvcW8QwjjpF4Bq3fM9nvLA4XgnJaqfdoEajiHUFKM5hKKslkx8Djc74SaU46u4riyqtrHGTcQm6JLnkvEbifdiRDeQtspe3p085PFlxi72yhIZkjse+oRyii6w64Scq0PzWw+uHWsP6wE5MlUZ5MpJS1EcHaDrkrMdKsA+8ECPpr5Lj6yqmbJL6WTN9LOhrqbIu6+YokvcHt39iniZyX2wvdmlMaiv99Qs0EDZfD0iOlm0JVyt5Ul96yjwPQ==\" Serie=\"A\" SubTotal=\"2902.98\" TipoDeComprobante=\"N\" Total=\"2642.68\" Version=\"4.0\" xsi:schemaLocation=\"http://www.sat.gob.mx/cfd/4 http://www.sat.gob.mx/sitio_internet/cfd/4/cfdv40.xsd http://www.sat.gob.mx/nomina12 http://www.sat.gob.mx/sitio_internet/cfd/nomina/nomina12.xsd\"><cfdi:Emisor Nombre=\"SERVICIOS INDUSTRIALES DE MONTERREY\" RegimenFiscal=\"601\" Rfc=\"SIM680423P4A\"/><cfdi:Receptor DomicilioFiscalReceptor=\"64860\" Nombre=\"RAFAEL GARZA CASTILLO\" RegimenFiscalReceptor=\"605\" Rfc=\"GACR0202086G8\" UsoCFDI=\"CN01\"/><cfdi:Conceptos><cfdi:Concepto Cantidad=\"1\" ClaveProdServ=\"84111505\" ClaveUnidad=\"ACT\" Descripcion=\"Pago de nómina\" Descuento=\"260.30\" Importe=\"2902.98\" ObjetoImp=\"01\" ValorUnitario=\"2902.98\"/></cfdi:Conceptos><cfdi:Complemento><nomina12:Nomina FechaFinalPago=\"2025-10-22\" FechaInicialPago=\"2025-10-16\" FechaPago=\"2025-10-22\" NumDiasPagados=\"7\" TipoNomina=\"O\" TotalDeducciones=\"260.3\" TotalOtrosPagos=\"0.00\" TotalPercepciones=\"2902.98\" Version=\"1.2\"><nomina12:Emisor RegistroPatronal=\"D4534011108\"/><nomina12:Receptor Antigüedad=\"P1Y7M1D\" ClaveEntFed=\"NLE\" Curp=\"GACR020208HNLRSFA6\" Departamento=\"Oficina\" FechaInicioRelLaboral=\"2024-03-21\" NumEmpleado=\"17\" NumSeguridadSocial=\"10220279722\" PeriodicidadPago=\"02\" Puesto=\"Operaciones\" RiesgoPuesto=\"1\" SalarioBaseCotApor=\"341.2\" SalarioDiarioIntegrado=\"341.2\" Sindicalizado=\"No\" TipoContrato=\"01\" TipoJornada=\"01\" TipoRegimen=\"02\"/><nomina12:Percepciones TotalExento=\"0\" TotalGravado=\"2902.98\" TotalSueldos=\"2902.98\"><nomina12:Percepcion Clave=\"BONO\" Concepto=\"Bonos\" ImporteExento=\"0.00\" ImporteGravado=\"733.83\" TipoPercepcion=\"050\"/><nomina12:Percepcion Clave=\"001\" Concepto=\"Sueldos, Salarios\" ImporteExento=\"0.00\" ImporteGravado=\"2169.15\" TipoPercepcion=\"001\"/></nomina12:Percepciones><nomina12:Deducciones TotalImpuestosRetenidos=\"260.3\" TotalOtrasDeducciones=\"0\"><nomina12:Deduccion Clave=\"ISR\" Concepto=\"ISR Retenido\" Importe=\"260.3\" TipoDeduccion=\"002\"/></nomina12:Deducciones><nomina12:OtrosPagos><nomina12:OtroPago Clave=\"SUB\" Concepto=\"Subsidio para el empleo\" Importe=\"0.00\" TipoOtroPago=\"002\"><nomina12:SubsidioAlEmpleo SubsidioCausado=\"0.00\"/></nomina12:OtroPago></nomina12:OtrosPagos></nomina12:Nomina><tfd:TimbreFiscalDigital FechaTimbrado=\"2025-10-17T12:41:50\" NoCertificadoSAT=\"30001000000500003456\" RfcProvCertif=\"SPR190613I52\" SelloCFD=\"XfhxoXmbYE2D+XThKPITvI+gTf2ciW7L0rFn6kek8HBQeln6nAg9N9ZWfqkIf94m8pDtfhanOb6GrRoqkL7X6LGdm7KvcW8QwjjpF4Bq3fM9nvLA4XgnJaqfdoEajiHUFKM5hKKslkx8Djc74SaU46u4riyqtrHGTcQm6JLnkvEbifdiRDeQtspe3p085PFlxi72yhIZkjse+oRyii6w64Scq0PzWw+uHWsP6wE5MlUZ5MpJS1EcHaDrkrMdKsA+8ECPpr5Lj6yqmbJL6WTN9LOhrqbIu6+YokvcHt39iniZyX2wvdmlMaiv99Qs0EDZfD0iOlm0JVyt5Ul96yjwPQ==\" SelloSAT=\"A5UiaS5Dva8nCRmeWLYn9dsTF3mzjGrVKk+W7Kz1LGHgWVgb8tbVZKCdmLMzBgT2R/qP1y+fsF4HkRm6JnyTBoZ6hwmAT9l7cehSlkDJ85a1t0Ithf47KRjyIfZ3zlW437Bix+W0tmj9KbSV4N6GWT9UJj2ylJCBQtu2sCsPmPwiVXWTwI8goPo/j5+Us/Apr2OQKW++wJk5TkNeqq/hCJPD5G8w9u8nfwM1D9jURtgSmwX7BTQRgo28tCBXKBBm0oJlegX243MBJG+y8oVdenbHt3JbpP1TfdnCbc+dgIKVy10NmpR7Xk9NT+2q07Ul3x0qUAEQ50S0WmMUdto5xA==\" UUID=\"B2044169-1059-4E22-9018-F8F1B9D4AD6A\" Version=\"1.1\" xsi:schemaLocation=\"http://www.sat.gob.mx/TimbreFiscalDigital http://www.sat.gob.mx/sitio_internet/cfd/TimbreFiscalDigital/TimbreFiscalDigitalv11.xsd\" xmlns:tfd=\"http://www.sat.gob.mx/TimbreFiscalDigital\"/></cfdi:Complemento></cfdi:Comprobante>','2025-10-17 12:41:50',2169.15,0.00,0.00,733.83,2902.98,260.30,0.00,0.00,0.00,0.00,260.30,2642.68,'2025-10-17 18:41:50','2025-10-17 18:41:50',0.0000,733.8300,3614.4600,87.0900,711.4800,47.7700,119.4200,592.0600,0.00,48.00,0.00,0.00,7,-2169.15);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_compra`
--

LOCK TABLES `orden_compra` WRITE;
/*!40000 ALTER TABLE `orden_compra` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
(790,'OFICINA',NULL,NULL,NULL,NULL,'activo');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidas`
--

LOCK TABLES `partidas` WRITE;
/*!40000 ALTER TABLE `partidas` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil_fiscal`
--

LOCK TABLES `perfil_fiscal` WRITE;
/*!40000 ALTER TABLE `perfil_fiscal` DISABLE KEYS */;
INSERT INTO `perfil_fiscal` VALUES
(2,'','SIM680423P4A','SERVICIOS INDUSTRIALES DE MONTERREY','601','/var/secure_csd/SIM680423P4A/00001000000712253223.cer','/var/secure_csd/SIM680423P4A/CSD_MATRIZ_SIM680423P4A_20241231_130502.key','simsa680','2025-09-15 11:56:15',64103,'D4534011108',NULL,'AVE ELOY CAVAZOS 3934 COL ALMAGUER','2','nelly@e-simsa.mx');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodo`
--

LOCK TABLES `periodo` WRITE;
/*!40000 ALTER TABLE `periodo` DISABLE KEYS */;
INSERT INTO `periodo` VALUES
(1,'Semanal','2025-10-02','2025-10-08','02','O'),
(3,'Semanal','2025-10-09','2025-10-15','02','O'),
(4,'Semanal','2025-10-16','2025-10-22','02','O');
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
(75,7,36,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
(211,'Administracion','reporte_proyectos');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piezas`
--

LOCK TABLES `piezas` WRITE;
/*!40000 ALTER TABLE `piezas` DISABLE KEYS */;
INSERT INTO `piezas` VALUES
(1,1,'Inicio',NULL,NULL,'',1.00,'2025-08-12','2025-10-01'),
(2,1,'Fin',NULL,NULL,'',0.00,'2025-10-01','2025-10-08');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamos`
--

LOCK TABLES `prestamos` WRITE;
/*!40000 ALTER TABLE `prestamos` DISABLE KEYS */;
INSERT INTO `prestamos` VALUES
(7,14,2400.00,'2025-10-03',4,600.00,'2025-10-31');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
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
  PRIMARY KEY (`id`),
  KEY `factura_id` (`factura_id`),
  CONSTRAINT `rep_facturas_ibfk_1` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rep_facturas`
--

LOCK TABLES `rep_facturas` WRITE;
/*!40000 ALTER TABLE `rep_facturas` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suspensiones`
--

LOCK TABLES `suspensiones` WRITE;
/*!40000 ALTER TABLE `suspensiones` DISABLE KEYS */;
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
  `complemento` decimal(10,2) DEFAULT 0.00,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajadores`
--

LOCK TABLES `trabajadores` WRITE;
/*!40000 ALTER TABLE `trabajadores` DISABLE KEYS */;
INSERT INTO `trabajadores` VALUES
(1,'Garza Zambrano','Raúl Domingo','1965-12-10','2022-11-11','GAZR651215HNLRML04','GAZR651215S2A','43886568062','Activo','1','67180','NLE','transferencia electronica','Servicios industriales de monterrey ',1320.00,'1','Gerencia','Director Ejecutivo','Quincenal','','','','','4','','Automatico','Tiempo indeterminado',605,NULL),
(14,'Estrada López','Saul','1970-08-30','2012-06-01','EALS700830HNLSPL05','EALS700830LU4','43877084855','Activo','0','88780','NLE','transferencia electronica','Servicios industriales de monterrey ',450.00,'1','Taller','Operaciones','Semanal','','','','','4','','Automatico','Tiempo indeterminado',605,600.00),
(15,'García Cardona','Angelica Karina','1989-06-29','2013-11-15','GACA890629MNLRRN00','GACA890629197','43088950894','Activo','0','67182','NLE','transferencia electronica','Servicios industriales de monterrey ',392.86,'1','Oficina','Operaciones','Semanal',NULL,NULL,NULL,'','4','','Automatico','Tiempo indeterminado',605,0.00),
(16,'Ruíz Segoviano','Gerardo','1959-06-06','2023-08-24','RUSG590606HNLZGR07','RUSG590606KI8','43775958473','Activo','0','67250','NLE','transferencia electronica','Servicios industriales de monterrey ',314.29,'1','Taller','Operaciones','Semanal',NULL,NULL,NULL,'','4','','Automatico','Tiempo indeterminado',605,0.00),
(17,'Garza Castillo','Rafael','2008-02-02','2024-03-21','GACR020208HNLRSFA6','GACR0202086G8','10220279722','Activo','','64860','NLE','transferencia electronica','Servicios industriales de monterrey ',325.16,'1','Oficina','Operaciones','Semanal','8123873054','rafael@transimex.com.mx','contry pleyades 222','','4','Santander','Automatico','Tiempo indeterminado',605,0.00);
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
(4,'Turno completo taller','.','Diurna');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ubicaciones`
--

LOCK TABLES `ubicaciones` WRITE;
/*!40000 ALTER TABLE `ubicaciones` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
(5,12,'2025-09-30','2025-10-30',31,'Prueba ','pendiente','2025-09-30 21:15:42');
/*!40000 ALTER TABLE `vacaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'servicios'
--

--
-- Dumping routines for database 'servicios'
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

-- Dump completed on 2025-11-03  2:00:01
