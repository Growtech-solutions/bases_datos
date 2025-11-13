/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: solis_program
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
-- Current Database: `solis_program`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `solis_program` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `solis_program`;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id_blog` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `texto_largo` text DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `imagen2` varchar(255) DEFAULT NULL,
  `video` varchar(200) DEFAULT NULL,
  `nivel_minimo` int(11) DEFAULT 1,
  `fecha_publicacion` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_blog`),
  UNIQUE KEY `titulo` (`titulo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES
(2,'Clave #1 para ganar masa muscular ','Estado Anabólico ','La clave número uno para ganar masa muscular de forma 100% natural es:\r\n\r\nMANTENERTE EN ESTADO ANABÓLICO\r\n\r\nEsto es lo mas importante si quieres obtener masa muscular de forma notoria y no resultados minimos.\r\n\r\n¿Cómo es esto?\r\nEn términos sencillos al momento de consumir alimentos tu cuerpo procesa y obtiene energía de dichos alimentos durante un tiempo que suele ser de 3 a 4 horas. Durante estas 3-4 horas te encuentras en un ESTADO ANABÓLICO.\r\n\r\nPasando las 3-4 horas y no consumiendo algún otro alimento, pasas a un estado catabólico.\r\nAl no haber alimentos que procesar y por ende de donde obtener energía para las actividades que estamos realizando, aun así no sea demandante como estar sentado, tu cuerpo igual necesita energía para tu cerebro y demás funciones, por lo que si no hay alimentos para ello, tu organismo obtiene energía de tu propio cuerpo, por ejemplo del musculo para mantener las funciones vitales de este, lo cual claramente no queremos, perder musculo. Esto es estar en ESTADO CATABÓLICO.\r\n\r\nPor lo que, Anabolismo = Construcción, Catabolismo = Destrucción.\r\n\r\nAl estar es estado anabólico, estas construyendo tus músculos.\r\nAl estar en estado catabólico, estas destruyendo tus músculos.\r\n\r\nPor ello, si quieres resultados notables en tu masa muscular, debes consumir por lo menos 5 comidas al día tomándolas cada 3-4 horas.\r\n\r\nComo ya lo menciona, esta es la clave mas importante si buscas aumentar masa muscular de forma 100 % natural.\r\n\r\nClaro que hay mas factores y puntos importantes que seguiré compartiendo en más publicaciones.\r\n\r\nVenga! A darle con todo!','../blog/Clave__1_para_ganar_masa_muscular_/IMG_5099.jpeg',NULL,NULL,1,'2025-06-18 19:05:03'),
(3,'¿Mayor fuerza física o mental?','Cuerpo, mente y alma','Al iniciar mi camino en este estilo de vida, al menos en un principio note que lo que me distinguía de los demás no era la fuerza física, si no la fuerza mental..\r\n\r\nSin duda tanto la fuerza mental como la disciplina creo que es de los talentos que Dios me ha dado porque no hay tanto como una historia previa de la razón por la que tuviera la capacidad de dominar lo anteriormente mencionado.\r\n\r\nComo les comentaba, en poco tiempo note que lo que me empezaba a distinguir de los demás tanto en acciones como en resultados era mi fuerza mental, les doy algunos ejemplos:\r\nEn un inicio éramos muchos amigos y yo, mas las personas en general, que nos apuntamos al gym muy motivados de querer mejorar físicamente, en otras palabras, de ponernos mamados.., sin embargo, me daba cuenta como al pasar el tiempo mis amigos así como en general éramos cada vez menos en el gimnasio, yo no lo comprendía porque en un inicio vi en ellos tanta motivación y ganas por lograr un objetivo, así fue hasta quedarme prácticamente solo en el gym.\r\nOtro ejemplo es que la mayoría de las personas iban de lunes a jueves u incluso menos, yo tampoco esto no lo entendía, en mi mente era por lo menos cumplir la semana de lunes a viernes que eran los días que asistíamos a la Preparatoria, pero al llegar el viernes en gym se quedaba solo y mis amigos ni la pensaban para ya iré a descansar o bien a un plan social. En mi caso nadie me obligaba a quedarme, muchas veces ya me sentía muy cansado por el transcurso de toda la semana y no tenia ganas, pero mi mente simplemente me decía que no fuera tibio y que no es negociable el quedarme o no, me decía que hay que poner el trabajo hasta el final si o si independientemente de como me sienta.\r\n\r\nMi fuerza mental estaba jugando muy a mi favor y los resultados comenzaban a ser evidentes, fue la primera vez que note como la disciplina, en si el hacer las cosas aunque no tengas ganas de hacerlas, trae sus grandes beneficios y resultados.\r\n\r\nSin embargo, por alguna razón, yo creo que porque se hizo muy de costumbre o como en automático, mi fuerza mental empezó a disminuir y por ende tuvo que haber un mayor gasto de energía en la fuerza física, comenzó a ser más difícil y a predominar dicha fuerza física ya que mi fuerza mental no era la misma, iba al gimnasio ya no por disciplina si no por orgullo de no faltar y no es lo mismo..\r\n\r\nCon el tiempo mejoro, lo ideal es utilizar ambas en la máxima intensidad posible, la fuerza física alimenta a la mental y la fuerza mental alimenta a la física, ambas se alimentan y trabajan en sincronía.\r\nSin embargo, ya pasando 5 años en este estilo de vida de ir prácticamente todos los días al gimnasio, alimentándome bien, hábitos y demás.., mi cuerpo y mi mente ya había ocasiones en las que me sentía muy cansado y no sabia si continuar, no sabia si podría tener este estilo de vida el resto de mi vida, comenzaba a dudar y cuando estaba a punto de abandonar, de decir hasta aquí, llego otra fuerza a mi vida, que fue la fuerza espiritual, dicha fuerza fue la que hizo que permaneciera y la que hizo que tenga la mentalidad y sobretodo el propósito de permanecer por siempre no por mi, si no para los demás, para ayudarles/guiarles hacia su mejor versión en todos los sentidos.\r\n\r\nEn otra publicación escribiré más sobre la fuerza espiritual..\r\n\r\nEn conclusión la fuerza física y la mental son igual de importantes, si tuviera que ser muy minucioso, diría que es más importante la mental, pero si no tienes la salud física no serviría de nada, lo mismo al revés, ambas se alimentan entre si, y son sumamente claves trabajarlas para llegar a tu mejor versión, pero te aseguro que llegará un momento en que solo estas 2 no serán suficientes para permanecer por siempre y necesitaras de la fuerza más trascendente para no rendirte jamás que es la espiritual.\r\n\r\nDios te bendiga\r\nTodo lo puedes en Cristo que te fortalece.\r\n\r\nCarlos Solís','../blog/__Mayor_fuerza_f__sica_o_mental_/IMG_7131.mov',NULL,NULL,2,'2025-06-18 19:07:52'),
(6,'Clave #1 para ganar masa','Estado anabólico','La clave número uno para ganar masa muscular de forma 100% natural es:\r\n\r\nMANTENERTE EN ESTADO ANABÓLICO\r\n\r\nEsto es lo mas importante si quieres obtener masa muscular de forma notoria y no resultados minimos.\r\n\r\n¿Cómo es esto?\r\nEn términos sencillos al momento de consumir alimentos tu cuerpo procesa y obtiene energía de dichos alimentos durante un tiempo que suele ser de 3 a 4 horas. Durante estas 3-4 horas te encuentras en un ESTADO ANABÓLICO.\r\n\r\nPasando las 3-4 horas y no consumiendo algún otro alimento, pasas a un estado catabólico.\r\nAl no haber alimentos que procesar y por ende de donde obtener energía para las actividades que estamos realizando, aun así no sea demandante como estar sentado, tu cuerpo igual necesita energía para tu cerebro y demás funciones, por lo que si no hay alimentos para ello, tu organismo obtiene energía de tu propio cuerpo, por ejemplo del musculo para mantener las funciones vitales de este, lo cual claramente no queremos, perder musculo. Esto es estar en ESTADO CATABÓLICO.\r\n\r\nPor lo que, Anabolismo = Construcción, Catabolismo = Destrucción.\r\n\r\nAl estar es estado anabólico, estas construyendo tus músculos.\r\nAl estar en estado catabólico, estas destruyendo tus músculos.\r\n\r\nPor ello, si quieres resultados notables en tu masa muscular, debes consumir por lo menos 5 comidas al día tomándolas cada 3-4 horas.\r\n\r\nComo ya lo menciona, esta es la clave mas importante si buscas aumentar masa muscular de forma 100 % natural.\r\n\r\nClaro que hay mas factores y puntos importantes que seguiré compartiendo en más publicaciones.\r\n\r\nVenga! A darle con todo!','../blog/Clave__1_para_ganar_masa/IMG_5098.jpeg',NULL,'../blog/Clave__1_para_ganar_masa/IMG_7131.mov',1,'2025-06-18 19:22:42'),
(7,'Clave','Clave','Bla ','../blog/Clave/Titulos.png',NULL,'../blog/Clave/IMG_5155.jpeg',1,'2025-06-18 19:25:46');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogo_ejercicios`
--

DROP TABLE IF EXISTS `catalogo_ejercicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogo_ejercicios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ejercicio` varchar(255) NOT NULL,
  `area` varchar(100) DEFAULT NULL,
  `subarea` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=355 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogo_ejercicios`
--

LOCK TABLES `catalogo_ejercicios` WRITE;
/*!40000 ALTER TABLE `catalogo_ejercicios` DISABLE KEYS */;
INSERT INTO `catalogo_ejercicios` VALUES
(18,'Lagartija elevada','Pecho - Superior',NULL),
(19,'Lagartija inferior','Pecho - Inferior',NULL),
(20,'Lagartija superior','Pecho - Superior',NULL),
(21,'Lagartija abierta','Pecho - Medio',NULL),
(22,'Lagartija cerrada','Pecho - Medio',NULL),
(23,'Lagartijas','Pecho - Medio',NULL),
(24,'Cristo superior aparato cable (individual)','Pecho - Superior',NULL),
(25,'Cristo superior aparato cable','Pecho - Superior',NULL),
(26,'Cristo inferior aparato cable (individual)','Pecho - Inferior',NULL),
(27,'Cristo inferior aparato cable','Pecho - Inferior',NULL),
(28,'Cristo aparato cable (individual)','Pecho - Medio',NULL),
(29,'Cristos aparato cable','Pecho - Medio',NULL),
(30,'Cristo hacia abajo maquina (individual)','Pecho - Inferior',NULL),
(31,'Cristos hacia abajo maquina','Pecho - Inferior',NULL),
(32,'Cristo individual maquina','Pecho - Medio',NULL),
(33,'Press superior maquina (individual)','Pecho - Superior',NULL),
(34,'Press superior maquina (individual)','Pecho - Superior',NULL),
(35,'Press superior maquina','Pecho - Superior',NULL),
(36,'Cristos maquina','Pecho - Medio',NULL),
(37,'Press Smith','Pecho - Medio',NULL),
(38,'Press Smith','Pecho - Medio',NULL),
(39,'Press Smith','Pecho - Medio',NULL),
(40,'Press superior Smith','Pecho - Superior',NULL),
(41,'Press inferior cable (individual)','Pecho - Inferior',NULL),
(42,'Press inferior cables','Pecho - Inferior',NULL),
(43,'Press superior cable (individual)','Pecho - Superior',NULL),
(44,'Press superior cables','Pecho - Superior',NULL),
(45,'Cristo de abajo hacia arriba cable (individual)','Pecho - Inferior',NULL),
(46,'Cristos de abajo hacia arriba cables','Pecho - Inferior',NULL),
(47,'Press individual cable','Pecho - Medio',NULL),
(48,'Press cables','Pecho - Medio',NULL),
(49,'Cristo individual cable','Pecho - Medio',NULL),
(50,'Cristos cables','Pecho - Medio',NULL),
(51,'Cristo superior cable (individual)','Pecho - Superior',NULL),
(52,'Cristos superior cables','Pecho - Superior',NULL),
(53,'Cristo inferior cable (individual)','Pecho - Inferior',NULL),
(54,'Cristos inferior cables','Pecho - Inferior',NULL),
(55,'Press cerrado mancuernas','Pecho - Medio',NULL),
(56,'Medio cristo individual mancuernas','Pecho - Medio',NULL),
(57,'Medio cristos mancuernas','Pecho - Medio',NULL),
(58,'Cristo individual mancuernas','Pecho - Medio',NULL),
(59,'Cristos mancuernas','Pecho - Medio',NULL),
(60,'Press individual mancuernas','Pecho - Medio',NULL),
(61,'Press mancuernas','Pecho - Medio',NULL),
(62,'Press cerrado inclinado','Pecho - Superior',NULL),
(63,'Medio cristos inclinado','Pecho - Superior',NULL),
(64,'Medio cristo individual inclinado','Pecho - Superior',NULL),
(65,'Medio cristo individual inclinado','Pecho - Superior',NULL),
(66,'Cristos inclinado mancuernas','Pecho - Superior',NULL),
(67,'Press inclinado individual','Pecho - Superior',NULL),
(68,'Press inclinado mancuernas','Pecho - Superior',NULL),
(69,'Cristo declinado individual','Pecho - Inferior',NULL),
(70,'Medio cristo declinado individual','Pecho - Inferior',NULL),
(71,'Press declinado individual','Pecho - Inferior',NULL),
(72,'Press cerrado declinado','Pecho - Inferior',NULL),
(73,'Medio cristos declinado','Pecho - Inferior',NULL),
(74,'Cristos declinado mancuernas','Pecho - Inferior',NULL),
(75,'Press declinado mancuernas','Pecho - Inferior',NULL),
(76,'Press inclinado barra','Pecho - Superior',NULL),
(77,'Cristos aparato','Pecho - Medio',NULL),
(78,'Press aparato','Pecho - Medio',NULL),
(79,'Press superior aparato','Pecho - Superior',NULL),
(80,'Press barra','Pecho - Medio',NULL),
(81,'Press declinado barra','Pecho - Inferior',NULL),
(82,'Jalón invertido Barra','Espalda - Inferior',NULL),
(83,'Jalón superior barra','Espalda - Superior',NULL),
(84,'Jalón invertido mancuerna','Espalda - Inferior',NULL),
(85,'Jalón superior mancuerna','Espalda - Superior',NULL),
(86,'Jalón superior mancuerna','Espalda - Superior',NULL),
(87,'Remo con mancuerna ','Espalda - Media',NULL),
(88,'Jalón invertido mancuernas','Espalda - Inferior',NULL),
(89,'Jalón invertido mancuernas','Espalda - Inferior',NULL),
(90,'Jalón superior mancuernas','Espalda - Superior',NULL),
(91,'Remo con mancuernas','Espalda - Media',NULL),
(92,'Remo invertido mancuerna','Espalda - Inferior',NULL),
(93,'Remo superior mancuerna','Espalda - Superior',NULL),
(94,'Remo superior mancuerna','Espalda - Superior',NULL),
(95,'Remo superior mancuerna','Espalda - Superior',NULL),
(96,'Jalón mancuerna','Espalda - Media',NULL),
(97,'Jalón superior barra cables','Espalda - Superior',NULL),
(98,'Jalón hincado superior cables','Espalda - Superior',NULL),
(99,'Jalón hincado superior cables','Espalda - Superior',NULL),
(100,'Jalón hincado superior cables','Espalda - Superior',NULL),
(101,'Jalón hincado superior cables','Espalda - Superior',NULL),
(102,'Jalón hincado cables','Espalda - Superior',NULL),
(103,'Jalón hincado cables','Espalda - Superior',NULL),
(104,'Jalón superior cables','Espalda - Superior',NULL),
(105,'Jalón superior cables','Espalda - Superior',NULL),
(106,'Jalón invertido cable','Espalda - Inferior',NULL),
(107,'Jalón invertido cable','Espalda - Inferior',NULL),
(108,'Jalón superior cable','Espalda - Superior',NULL),
(109,'Jalón superior cable','Espalda - Superior',NULL),
(110,'Remo individual cable','Espalda - Media',NULL),
(111,'Pull over abierto Z','Pecho - Inferior',NULL),
(112,'Pull over Z','Espalda - Inferior',NULL),
(113,'Pull over Z','Espalda - Inferior',NULL),
(114,'Jalón invertido barra cable','Espalda - Inferior',NULL),
(115,'Jalón superior barra Z cable','Espalda - Superior',NULL),
(116,'Jalón superior Barra Z','Espalda - Superior',NULL),
(117,'Jalón superior Barra Z','Espalda - Superior',NULL),
(118,'Remo cables','Espalda - Media',NULL),
(119,'Remo cables','Espalda - Media',NULL),
(120,'Remo invertido cables','Espalda - Inferior',NULL),
(121,'Remo superior cables','Espalda - Superior',NULL),
(122,'Remo con cables','Espalda - Media',NULL),
(123,'Jalon invertido individual cable','Espalda - Inferior',NULL),
(124,'Jalón invertido individual cable','Espalda - Inferior',NULL),
(125,'Jalón superior individual cable','Espalda - Superior',NULL),
(126,'Remo individual cable','Espalda - Media',NULL),
(127,'Remo con cuerda','Espalda - Media',NULL),
(128,'Jalón invertido barra cable','Espalda - Inferior',NULL),
(129,'Jalón superior barra cable','Espalda - Superior',NULL),
(130,'Jalón abierto cable','Espalda - Superior',NULL),
(131,'Remo abierto cable','Espalda - Media',NULL),
(132,'Remo cuerda parado','Espalda - Media',NULL),
(133,'Pull over cuerda','Espalda - Inferior',NULL),
(134,'Remo superior cuerda','Espalda - Superior',NULL),
(135,'Remo superior cuerda','Espalda - Superior',NULL),
(136,'Remo superior cuerda','Espalda - Superior',NULL),
(137,'Remo superior cuerda','Espalda - Superior',NULL),
(138,'Jalón abierto barra cable','Espalda - Superior',NULL),
(139,'Jalón abierto barra cable','Espalda - Superior',NULL),
(140,'Jalón invertido barra cable','Espalda - Inferior',NULL),
(141,'Jalón invertido barra cable','Espalda - Inferior',NULL),
(142,'Jalón altura hombro','Espalda - Superior',NULL),
(143,'Jalón barra cable','Espalda - Superior',NULL),
(144,'Jalón barra cable','Espalda - Superior',NULL),
(145,'Remo superior Smith','Espalda - Superior',NULL),
(146,'Remo superior Smith','Espalda - Superior',NULL),
(147,'Remo inferior Smith','Espalda - Inferior',NULL),
(148,'Remo inferior Smith','Espalda - Inferior',NULL),
(149,'Remo con disco','Espalda - Media',NULL),
(150,'Remo con disco','Espalda - Media',NULL),
(151,'Press Maquina','Hombro - Frontal',NULL),
(152,'Press Maquina','Hombro - Frontal',NULL),
(153,'Press Maquina','Hombro - Frontal',NULL),
(154,'Press Maquina','Hombro - Frontal',NULL),
(155,'Press cerrado Maquina','Hombro - Frontal',NULL),
(156,'Press cerrado Maquina','Hombro - Frontal',NULL),
(157,'Press cerrado Maquina','Hombro - Frontal',NULL),
(158,'Press individual Maquina','Hombro - Frontal',NULL),
(159,'Press individual Maquina','Hombro - Frontal',NULL),
(160,'Press individual Maquina','Hombro - Frontal',NULL),
(161,'Press individual Maquina','Hombro - Frontal',NULL),
(162,'Press individual Maquina','Hombro - Frontal',NULL),
(163,'Press individual Maquina','Hombro - Frontal',NULL),
(164,'Press cerrado individual Maquina','Hombro - Frontal',NULL),
(165,'Posterior Maquina','Hombro - Posterior',NULL),
(166,'Posterior individual Maquina','Hombro - Posterior',NULL),
(167,'Al frente barrita cables','Hombro - Frontal',NULL),
(168,'Al frente individual cable','Hombro - Frontal',NULL),
(169,'Lateral individual cable','Hombro - Lateral',NULL),
(170,'Lateral agachado individual cable','Hombro - Lateral',NULL),
(171,'Martillo al frente cable','Hombro - Frontal',NULL),
(172,'Al frente invertido cable','Hombro - Frontal',NULL),
(173,'Posterior individual cable','Hombro - Posterior',NULL),
(174,'Posterior cable parado','Hombro - Posterior',NULL),
(175,'Invertido cables','Hombro - Frontal',NULL),
(176,'Al frente barra Z cables','Hombro - Frontal',NULL),
(177,'Invertido barra Z cables','Hombro - Frontal',NULL),
(178,'Martillo individual cuerda','Hombro - Frontal',NULL),
(179,'Posterior individual cuerda','Hombro - Posterior',NULL),
(180,'Cuerdas al frente','Hombro - Frontal',NULL),
(181,'Jalón cuerdas a la frente','Hombro - Posterior',NULL),
(182,'Press al frente Smith','Hombro - Frontal',NULL),
(183,'Press por atras Smith','Hombro - Frontal',NULL),
(184,'Press individual Smith','Hombro - Frontal',NULL),
(185,'Press parado Smith','Hombro - Frontal',NULL),
(186,'Press por atras Smith','Hombro - Frontal',NULL),
(187,'Press individual Smith','Hombro - Frontal',NULL),
(188,'Press Maquina alternativa','Hombro - Frontal',NULL),
(189,'Press individual Maquina alternativa','Hombro - Frontal',NULL),
(190,'Laterales Maquina','Hombro - Lateral',NULL),
(191,'Lateral individual Maquina','Hombro - Lateral',NULL),
(192,'Laterales mancuernas','Hombro - Lateral',NULL),
(193,'Lateral individual mancuerna','Hombro - Lateral',NULL),
(194,'Al frente uno y uno Mancuernas','Hombro - Frontal',NULL),
(195,'Al frente mancuernas','Hombro - Frontal',NULL),
(196,'Al frente individual Mancuerna','Hombro - Frontal',NULL),
(197,'Medio laterales mancuernas','Hombro - Lateral',NULL),
(198,'Medio lateral individual mancuerna','Hombro - Lateral',NULL),
(199,'Posterior mancuernas','Hombro - Posterior',NULL),
(200,'Posterior individual mancuerna','Hombro - Posterior',NULL),
(201,'Press parado mancuernas','Hombro - Frontal',NULL),
(202,'Press individual parado mancuerna','Hombro - Frontal',NULL),
(203,'Press cerrado mancuernas','Hombro - Frontal',NULL),
(204,'Press cerrado individual','Hombro - Frontal',NULL),
(205,'Laterales martillo mancuernas','Hombro - Lateral',NULL),
(206,'Lateral martillo mancuerna','Hombro - Lateral',NULL),
(207,'Circulo con mancuernas','Hombro - Lateral',NULL),
(208,'Lateral con tensión','Hombro - Lateral',NULL),
(209,'Al frente con tensión','Hombro - Frontal',NULL),
(210,'Cristo hombro mancuernas','Hombro - Frontal',NULL),
(211,'Cristo hombro individual mancuerna','Hombro - Frontal',NULL),
(212,'Al frente invertido individual mancuerna','Hombro - Frontal',NULL),
(213,'Al frente invertido individual mancuerna','Hombro - Frontal',NULL),
(214,'Posterior agachado mancuernas','Hombro - Posterior',NULL),
(215,'Posterior agachado individual mancuerna','Hombro - Posterior',NULL),
(216,'Laterales agachado mancuernas','Hombro - Lateral',NULL),
(217,'Lateral agachado individual mancuerna','Hombro - Lateral',NULL),
(218,'Martillos al frente uno y uno','Hombro - Frontal',NULL),
(219,'Martillo al frente individual','Hombro - Frontal',NULL),
(220,'Martillos al frente','Hombro - Frontal',NULL),
(221,'Press sentado mancuernas','Hombro - Frontal',NULL),
(222,'Press individual sentado mancuerna','Hombro - Frontal',NULL),
(223,'Press cerrado mancuernas','Hombro - Frontal',NULL),
(224,'Press cerrado individual mancuernas','Hombro - Frontal',NULL),
(225,'Laterales sentado mancuernas','Hombro - Lateral',NULL),
(226,'Lateral individual mancuerna','Hombro - Lateral',NULL),
(227,'Martillos al frente uno y uno','Hombro - Frontal',NULL),
(228,'Martillo al frente individual','Hombro - Frontal',NULL),
(229,'Martillo al frente individual','Hombro - Frontal',NULL),
(230,'Martillos al frente','Hombro - Frontal',NULL),
(231,'Martillos laterales','Hombro - Lateral',NULL),
(232,'Martillos laterales','Hombro - Lateral',NULL),
(233,'Martillo lateral individual','Hombro - Lateral',NULL),
(234,'360 grados','Hombro - Lateral',NULL),
(235,'Posterior sentado mancuernas','Hombro - Posterior',NULL),
(236,'Posterior mancuerna individual','Hombro - Posterior',NULL),
(237,'Press abierto','Hombro - Frontal',NULL),
(238,'Press abierto individual','Hombro - Frontal',NULL),
(239,'Lateral con tensión','Hombro - Lateral',NULL),
(240,'Frontal con tensión','Hombro - Frontal',NULL),
(241,'Martillo frontal con tensión','Hombro - Frontal',NULL),
(242,'Press medio cerrado','Hombro - Frontal',NULL),
(243,'Press medio cerrado individual','Hombro - Frontal',NULL),
(244,'Frontal invertido uno y uno','Hombro - Frontal',NULL),
(245,'Frontal invertido individual','Hombro - Frontal',NULL),
(246,'Frontal invertido sentado','Hombro - Frontal',NULL),
(247,'Press aparato','Hombro - Frontal',NULL),
(248,'Press aparato individual','Hombro - Frontal',NULL),
(249,'Press cerrado aparato','Hombro - Frontal',NULL),
(250,'Press cerrado aparato individual','Hombro - Frontal',NULL),
(251,'Posterior maquina','Hombro - Posterior',NULL),
(252,'Posterior maquina individual','Hombro - Posterior',NULL),
(253,'Press inclinado','Hombro - Frontal',NULL),
(254,'Press inclinado individual','Hombro - Frontal',NULL),
(255,'Frontal invertido barra Z','Hombro - Frontal',NULL),
(256,'Frontal invertido barra Z','Hombro - Frontal',NULL),
(257,'Frontal invertido barra Z','Hombro - Frontal',NULL),
(258,'Frontal barra Z','Hombro - Frontal',NULL),
(259,'Press frontal barra','Hombro - Frontal',NULL),
(260,'Press atras barra','Hombro - Frontal',NULL),
(261,'Frontal disco','Hombro - Frontal',NULL),
(262,'Remo posterior aparato','Hombro - Posterior',NULL),
(263,'Posterior mancuernas recargado','Hombro - Posterior',NULL),
(264,'Posterior mancuerna recargado individual','Hombro - Posterior',NULL),
(265,'Posterior mancuerna recargado individual','Hombro - Posterior',NULL),
(266,'Laterales recargado','Hombro - Lateral',NULL),
(267,'Lateral recargado','Hombro - Lateral',NULL),
(268,'Remo superior recargado','Espalda - Superior',NULL),
(269,'Remo recargado','Espalda - Media',NULL),
(270,'Remo inferior recargado','Espalda - Inferior',NULL),
(271,'Curl mancuernas uno y uno','Bicep - Medio',NULL),
(272,'Curl mancuerna individual','Bicep - Medio',NULL),
(273,'Curl mancuerna individual','Bicep - Medio',NULL),
(274,'Curl mancuernas','Bicep - Medio',NULL),
(275,'Martillos uno y uno','Bicep - Medio',NULL),
(276,'Martillo individual','Bicep - Medio',NULL),
(277,'Martillos mancuernas','Bicep - Medio',NULL),
(278,'Curl abierto mancuernas','Bicep - Interior',NULL),
(279,'Curl abierto individual','Bicep - Interior',NULL),
(280,'Martillos abierto ','Bicep - Interior',NULL),
(281,'Martillo abierto individual','Bicep - Interior',NULL),
(282,'Curl cerrado mancuernas','Bicep - Exterior',NULL),
(283,'Curl cerrado individual','Bicep - Exterior',NULL),
(284,'Martillos cerrado mancuernas','Bicep - Exterior',NULL),
(285,'Martillo cerrado individual','Bicep - Exterior',NULL),
(286,'Martillos cerrado uno y uno','Bicep - Exterior',NULL),
(287,'Curl barra','Bicep - Medio',NULL),
(288,'Curl barra','Bicep - Medio',NULL),
(289,'Concentrado mancuerna','Bicep - Exterior',NULL),
(290,'Curl concentrado barra','Bicep - Medio',NULL),
(291,'Martillo concentrado','Bicep - Exterior',NULL),
(292,'Curl abierto barra Z','Bicep - Interior',NULL),
(293,'Curl cerrado barra Z','Bicep - Exterior',NULL),
(294,'Curl abierto barra Z recargado','Bicep - Interior',NULL),
(295,'Curl cerrado barra Z recargado','Bicep - Exterior',NULL),
(296,'Curl mancuernas recargado','Bicep - Medio',NULL),
(297,'Curl mancuernas uno y uno','Bicep - Medio',NULL),
(298,'Martillos mancuernas recargado','Bicep - Medio',NULL),
(299,'Martillos uno y uno recargado','Bicep - Medio',NULL),
(300,'Curl barra recargado','Bicep - Medio',NULL),
(301,'Martillo disco','Bicep - Medio',NULL),
(302,'Predicador individual','Bicep - Medio',NULL),
(303,'Predicador martillo individual','Bicep - Medio',NULL),
(304,'Concentrado cable','Bicep - Exterior',NULL),
(305,'Curl abierto cables','Bicep - Interior',NULL),
(306,'Curl abierto cables','Bicep - Interior',NULL),
(307,'Curl bicep cables','Bicep - Interior',NULL),
(308,'Martillos cables abierto','Bicep - Interior',NULL),
(309,'Curl bicep acostado cables','Bicep - Medio',NULL),
(310,'Curl arriba cables','Bicep - Medio',NULL),
(311,'Martillos arriba cables','Bicep - Exterior',NULL),
(312,'Curl individual cable','Bicep - Medio',NULL),
(313,'Curl individual cable','Bicep - Medio',NULL),
(314,'Martillo individual cable','Bicep - Medio',NULL),
(315,'Curl barra Z cable','Bicep - Medio',NULL),
(316,'Curl cerrado barra Z cable','Bicep - Exterior',NULL),
(317,'Curl abierto barra Z cable','Bicep - Interior',NULL),
(318,'Curl barrita cable','Bicep - Medio',NULL),
(319,'Curl cables','Bicep - Medio',NULL),
(320,'Martillo abriendo cuerda','Bicep - Medio',NULL),
(321,'Martillo cerrado cuerda','Bicep - Exterior',NULL),
(322,'Curl aparato uno y uno','Bicep - Medio',NULL),
(323,'Curl aparato uno y uno','Bicep - Medio',NULL),
(324,'Curl individual aparato','Bicep - Medio',NULL),
(325,'Curl aparato','Bicep - Medio',NULL),
(326,'Predicador aparato','Bicep - Medio',NULL),
(327,'Predicador aparato','Bicep - Medio',NULL),
(328,'Predicador cerrado aparato','Bicep - Exterior',NULL),
(329,'Predicador martillo aparato','Bicep - Exterior',NULL),
(330,'Predicador aparato','Bicep - Medio',NULL),
(331,'Predicador abierto aparato','Bicep - Interior',NULL),
(332,'Curl arriba cables','Bicep - Medio',NULL),
(333,'Predicador barra','Bicep - Medio',NULL),
(334,'Predicador barra Z','Bicep - Medio',NULL),
(335,'Predicador barra Z cerrado','Bicep - Exterior',NULL),
(336,'Predicador barra Z abierto','Bicep - Interior',NULL),
(337,'Predicador martillos cerrado','Bicep - Exterior',NULL),
(338,'Predicador mancuernas cerrado','Bicep - Exterior',NULL),
(339,'Predicador martillos abierto','Bicep - Interior',NULL),
(340,'Predicador mancuernas abierto','Bicep - Interior',NULL),
(341,'Predicador martillo individual','Bicep - Medio',NULL),
(342,'Predicador mancuerna individual','Bicep - Medio',NULL),
(343,'Predicador martillos','Bicep - Medio',NULL),
(344,'Predicador mancuernas','Bicep - Medio',NULL),
(345,'Martillo individual abierto','Bicep - Interior',NULL),
(346,'Curl individual abierto','Bicep - Interior',NULL),
(347,'Martillos abierto sentado','Bicep - Interior',NULL),
(348,'Curl abierto sentado','Bicep - Interior',NULL),
(349,'Martillos uno y uno','Bicep - Medio',NULL),
(350,'Curl sentado uno y uno','Bicep - Medio',NULL),
(351,'Martillo individual sentado','Bicep - Medio',NULL),
(352,'Martillos sentado','Bicep - Medio',NULL),
(353,'Curl sentado individual','Bicep - Medio',NULL),
(354,'Curl sentado','Bicep - Medio',NULL);
/*!40000 ALTER TABLE `catalogo_ejercicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comida`
--

DROP TABLE IF EXISTS `comida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `comida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dieta` int(11) NOT NULL,
  `hora` time NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `instrucciones` text DEFAULT NULL,
  `complementos` text DEFAULT NULL,
  `complemento_2` text DEFAULT NULL,
  `verduras_ilimitadas` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_dieta` (`id_dieta`),
  CONSTRAINT `comida_ibfk_1` FOREIGN KEY (`id_dieta`) REFERENCES `dieta` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comida`
--

LOCK TABLES `comida` WRITE;
/*!40000 ALTER TABLE `comida` DISABLE KEYS */;
INSERT INTO `comida` VALUES
(88,39,'07:00:00','Huevo revuelto, Omelette','2 huevos + 3 claras + 50 gr. Proteína animal','- 6 pz Tortillas maíz, - 300 gr. Papa, - 1 1/2 taza Frijoles','',1),
(89,39,'10:30:00','Yogurt, Queso cottage, Requesón','1/4 taza','- 1/2 taza Granola, - 4 tazas Fruta, - 4 pz Pan integral','- 15 pz Almendras, - 2 C. Nuez, - 1 C. Crema de cacahuate',0),
(90,39,'14:00:00','Proteína animal','150-200 gr.','- 6 pz Tortillas maíz, - 1 1/2 taza Arroz, - 1 1/2 taza Lentejas','- 1/4 pz Aguacate, - 30 gr. Queso panela, - 15 pz Aceitunas',1),
(91,39,'17:30:00','Yogurt, Queso cottage, Requesón','1/4 taza','- 1/2 taza Granola, - 5 C. Amaranto, 4 pz Pan integral','- 15 pz Almendras, - 2 C. Nuez, - 1 C. Crema de cacahuate',0),
(92,39,'21:00:00','Proteína animal','150-200 gr.','- 6 pz Tortillas maíz, - 1 1/2 taza Arroz, 1 1/2 taza Lentejas','- 1/4 pz Aguacate, - 30 gr. Queso panela, - 15 pz Aceitunas',1),
(93,40,'07:00:00','Huevo revuelto, Omelette','2 huevos + 3 claras + 50 gr. Proteína animal','- 5 pz Tortillas maíz, - 250 gr. Papa, - 1 1/4 taza Frijoles','',1),
(94,40,'10:30:00','Yogurt, Queso cottage, Requesón','1/4 taza','- 1/3 taza Granola, - 3 tazas Fruta, - 3 pz Pan integral','- 15 pz Almendras, - 2 C. Nuez, - 1 C. Crema de cacahuate',0),
(95,40,'14:00:00','Proteína animal','150-200 gr.','- 5 pz Tortillas maíz, - 1 1/4 taza Arroz, - 1 1/4 taza Lentejas','- 1/4 pz Aguacate, - 30 gr. Queso panela, 15 pz Aceitunas',1),
(96,40,'17:30:00','Yogurt, Queso cottage, Requesón','1/4 taza','- 1/3 taza Granola, - 4 C. Amaranto, - 3 pz Pan integral','- 15 pz Almendras, - 2 C. Nuez, - 1 C. Crema de cacahuate',0),
(97,40,'21:00:00','Proteína animal','150-200 gr.','- 5 pz Tortillas maíz, - 1 1/4 taza Arroz, - 1 1/4 taza Lentejas','- 1/4 pz Aguacate, - 30 gr. Queso panela, - 15 pz Aceitunas',1),
(98,41,'07:00:00','Huevo revuelto, Omelette','2 huevos + 3 claras + 50 gr. Proteína animal','- 4 pz Tortillas maíz / - 200 gr. Papa / - 1 taza Frijoles','',1),
(99,41,'10:30:00','Yogurt, Queso cottage, Requesón','1/4 taza','- 1/4 taza Granola, - 2 tazas Fruta, - 2 pz Pan integral','- 15 pz Almendras, - 2 C. Nuez, - 1 C. Crema de cacahuate',0),
(100,41,'14:00:00','Proteína animal','150-200 gr.','- 4 pz Tortillas maíz - 1 taza Arroz - 1 taza Lentejas','- 1/4 pz Aguacate, - 30 gr. Queso panela, - 15 pz Aceitunas',1),
(101,41,'17:30:00','Yogurt, Queso cottage, Requesón','1/4 taza','- 1/4 taza Granola, - 2 C. Amaranto, - 2 pz Pan integral','- 15 pz Almendras, - 2 C. Nuez, - 1 C. Crema de cacahuate',0),
(102,41,'21:00:00','Proteína animal','150-200 gr.','- 4 pz Tortillas maíz, - 1 taza Arroz, - 1 taza Lentejas','- 1/4 pz Aguacate, - 30 gr. Queso panela, - 15 pz Aceitunas',1),
(103,42,'07:00:00','Huevo revuelto, Omelette','2 huevos + 3 claras + 50 gr. Proteína animal','- 3 pz Tortillas maíz, - 150 gr. Papa, - 3/4 taza Frijoles',NULL,1),
(104,42,'10:30:00','Yogurt, Queso cottage, Requesón','1/4 taza','- 2 C. Granola, - 1 taza Fruta, - 1 pz Pan integral','- 15 pz Almendras, - 2 C. Nuez, - 1 C. Crema de cacahuate',NULL),
(105,42,'14:00:00','Proteína animal','150-200 gr.','- 3 pz Tortillas maíz, - 3/4 taza Arroz, 3/4 taza Lentejas','- 1/4 pz Aguacate, - 30 gr. Queso panela, - 15 pz Aceitunas',1),
(106,42,'17:30:00','Yogurt, Queso cottage, Requesón','1/4 taza','- 2 C. Granola, - 1 C. Amaranto, - 1 pz Pan integral','- 15 pz Almendras, 2 C. Nuez, 1 C. Crema de cacahuate',NULL),
(107,42,'21:00:00','Proteína animal','150-200 gr.','- 3 pz Tortillas maíz, - 3/4 taza Arroz, 3/4 taza Lentejas','- 1/4 pz Aguacate, - 30 gr. Queso panela, - 15 pz Aceitunas',1),
(108,43,'07:00:00','Huevo revuelto, Omelette','2 huevos + 3 claras + 50 gr. Proteína animal','- 2 pz Tortillas maíz, - 100 gr. Papa, - 1/2 taza Frijoles',NULL,1),
(109,43,'10:30:00','Yogurt, Queso cottage, Requesón','1/4 taza','- 15 pz Almendras, - 2 C. Nuez, - 1 C. Crema de cacahuate',NULL,NULL),
(110,43,'14:00:00','Proteína animal','150-200 gr.','- 2 pz Tortillas maíz, - 1/2 taza Arroz, - 1/2 taza Lentejas','- 1/4 pz Aguacate, - 30 gr. Queso panela, - 15 pz Aceitunas',1),
(111,43,'17:30:00','Yogurt, Queso cottage, Requesón','1/4 taza','- 15 pz Almendras, - 2 C. Nuez, - 1 C. Crema de cacahuate',NULL,NULL),
(112,43,'21:00:00','Proteína animal','150-200 gr.','- 2 pz Tortillas maíz, - 1/2 taza Arroz, - 1/2 taza Lentejas','- 1/4 pz Aguacate, - 30 gr. Queso panela, - 15 pz Aceitunas',1);
/*!40000 ALTER TABLE `comida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comida_usuario`
--

DROP TABLE IF EXISTS `comida_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `comida_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dieta_usuario` int(11) NOT NULL,
  `hora` time NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `instrucciones` text DEFAULT NULL,
  `complementos` text DEFAULT NULL,
  `complemento_2` text DEFAULT NULL,
  `verduras_ilimitadas` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comida_usuario`
--

LOCK TABLES `comida_usuario` WRITE;
/*!40000 ALTER TABLE `comida_usuario` DISABLE KEYS */;
INSERT INTO `comida_usuario` VALUES
(45,12,'07:00:00','Huevo revuelto, omelette','2 huevos + 50 gr. Proteína animal','- 2 Tortillas - 100 gr. Papa - 1/2 taza Frijoles',NULL,1),
(46,12,'10:30:00','Yogurt, queso cottage, requesón','1/4 taza','- 15 pz Almendras - 2 C. Nuez - 1 C. Crema cacahuate',NULL,NULL),
(47,12,'14:00:00','Proteína animal','150-200 GR.','- 4 Tortillas - 1 taza Arroz - 1 taza Lentejas','- 1/4 Aguacate - 30 gr. Queso panela - 15 Aceitunas',1),
(48,12,'17:30:00','Yogurt, queso cottage, requesón','1/4 taza','- 15 pz Almendras - 2 C. Nuez - 1 C. Crema cacahuate',NULL,NULL),
(49,12,'21:00:00','Proteína animal',NULL,'- 4 Tortillas - 1 taza Arroz - 1 taza Lentejas',NULL,1),
(50,13,'07:00:00','Huevo revuelto, omelette','2 huevos + 3 claras + 50 gr Proteína animal','- 4 pz Tortillas de maíz - 200 gr Papa - 1 taza Frijoles',NULL,1),
(51,13,'10:30:00','Yogurt, queso cottage, requesón','1/4 taza','- 1/4 taza Granola - 2 tazas Fruta - 2 pz Pan integral','- 15 pz Almendras - 2 C Nuez - 1 C Crema de cacahuate',NULL),
(52,14,'20:00:00','Prueba','5hg come','sujd',NULL,1),
(53,15,'07:00:00','Huevo revuelto, Omelette','2 huevos + 3 claras + 50 gr. Proteína animal','- 6 pz Tortillas maíz, - 300 gr. Papa, - 1 1/2 taza Frijoles',NULL,1),
(54,16,'07:00:00','Huevo revuelto, Omelette','2 huevos + 3 claras + 50 gr. Proteína animal','- 4 pz Tortillas maíz, - 200 gr. Papa, - 1 taza Frijoles',NULL,1),
(55,16,'10:30:00','Yogurt, Queso cottage, Requesón','1/4 taza','- 1/4 taza Granola, - 2 tazas Fruta, - 2 pz Pan integral','- 15 pz Almendras, - 2 C. Nuez, - 1 C. Crema de cacahuate',NULL),
(56,16,'14:00:00','Proteína animal','150-200 gr.','- 4 pz Tortillas maíz, - 1 taza Arroz, - 1 taza Lentejas','- 1/4 pz Aguacate, - 30 gr. Queso panela, - 15 pz Aceitunas',1),
(57,16,'17:30:00','Yogurt, Queso cottage, Requesón','1/4 taza','- 1/4 taza Granola, - 2 C. Amaranto, - 2 pz Pan integral','- 15 pz Almendras, - 2 C. Nuez, - 1 C. Crema de cacahuate',NULL),
(58,16,'21:00:00','Proteína animal','150-200 gr.','- 4 pz Tortillas maíz, - 1 taza Arroz, - 1 taza Lentejas','- 1/4 pz Aguacate, - 30 gr. Queso panela, - 15 pz Aceitunas',1),
(59,17,'07:00:00','Huevo revuelto, Omelette','2 huevos + 3 claras + 50 gr. Proteína animal','- 4 pz Tortillas maíz / - 200 gr. Papa / - 1 taza Frijoles','',1),
(60,17,'10:30:00','Yogurt, Queso cottage, Requesón','1/4 taza','- 1/4 taza Granola, - 2 tazas Fruta, - 2 pz Pan integral','- 15 pz Almendras, - 2 C. Nuez, - 1 C. Crema de cacahuate',0),
(61,17,'14:00:00','Proteína animal','150-200 gr.','- 4 pz Tortillas maíz, - 1 taza Arroz, - 1 taza Lentejas','- 1/4 pz Aguacate, - 30 gr. Queso panela, - 15 pz Aceitunas',1),
(62,17,'17:30:00','Yogurt, Queso cottage, Requesón','1/4 taza','- 1/4 taza Granola, - 2 C. Amaranto, - 2 pz Pan integral','- 15 pz Almendras, - 2 C. Nuez, - 1 C. Crema de cacahuate',0),
(63,17,'21:00:00','Proteína animal','150-200 gr.','- 4 pz Tortillas maíz, - 1 taza Arroz, - 1 taza Lentejas','- 1/4 pz Aguacate, - 30 gr. Queso panela, - 15 pz Aceitunas',1),
(64,18,'07:00:00','Huevo revuelto, Omelette','2 huevos + 3 claras + 50 gr. Proteína animal','- 4 pz Tortillas maíz / - 200 gr. Papa / - 1 taza Frijoles','',1),
(65,18,'10:30:00','Yogurt, Queso cottage, Requesón','1/4 taza','- 1/4 taza Granola, - 2 tazas Fruta, - 2 pz Pan integral','- 15 pz Almendras, - 2 C. Nuez, - 1 C. Crema de cacahuate',0),
(66,18,'14:00:00','Proteína animal','150-200 gr.','- 4 pz Tortillas maíz - 1 taza Arroz - 1 taza Lentejas','- 1/4 pz Aguacate, - 30 gr. Queso panela, - 15 pz Aceitunas',1),
(67,18,'17:30:00','Yogurt, Queso cottage, Requesón','1/4 taza','- 1/4 taza Granola, - 2 C. Amaranto, - 2 pz Pan integral','- 15 pz Almendras, - 2 C. Nuez, - 1 C. Crema de cacahuate',0),
(68,18,'21:00:00','Proteína animal','150-200 gr.','- 4 pz Tortillas maíz, - 1 taza Arroz, - 1 taza Lentejas','- 1/4 pz Aguacate, - 30 gr. Queso panela, - 15 pz Aceitunas',1),
(69,19,'07:00:00','Huevo revuelto, Omelette','2 huevos + 3 claras + 50 gr. Proteína animal','- 5 pz Tortillas maíz, - 250 gr. Papa, - 1 1/4 taza Frijoles','',1),
(70,19,'10:30:00','Yogurt, Queso cottage, Requesón','1/4 taza','- 1/3 taza Granola, - 3 tazas Fruta, - 3 pz Pan integral','- 15 pz Almendras, - 2 C. Nuez, - 1 C. Crema de cacahuate',0),
(71,19,'14:00:00','Proteína animal','150-200 gr.','- 5 pz Tortillas maíz, - 1 1/4 taza Arroz, - 1 1/4 taza Lentejas','- 1/4 pz Aguacate, - 30 gr. Queso panela, 15 pz Aceitunas',1),
(72,19,'17:30:00','Yogurt, Queso cottage, Requesón','1/4 taza','- 1/3 taza Granola, - 4 C. Amaranto, - 3 pz Pan integral','- 15 pz Almendras, - 2 C. Nuez, - 1 C. Crema de cacahuate',0),
(73,19,'21:00:00','Proteína animal','150-200 gr.','- 5 pz Tortillas maíz, - 1 1/4 taza Arroz, - 1 1/4 taza Lentejas','- 1/4 pz Aguacate, - 30 gr. Queso panela, - 15 pz Aceitunas',1),
(74,20,'07:00:00','Huevo revuelto, Omelette','2 huevos + 3 claras + 50 gr. Proteína animal','- 3 pz Tortillas maíz, - 150 gr. Papa, - 3/4 taza Frijoles',NULL,1),
(75,20,'10:30:00','Yogurt, Queso cottage, Requesón','1/4 taza','- 2 C. Granola, - 1 taza Fruta, - 1 pz Pan integral','- 15 pz Almendras, - 2 C. Nuez, - 1 C. Crema de cacahuate',NULL),
(76,20,'14:00:00','Proteína animal','150-200 gr.','- 3 pz Tortillas maíz, - 3/4 taza Arroz, 3/4 taza Lentejas','- 1/4 pz Aguacate, - 30 gr. Queso panela, - 15 pz Aceitunas',1),
(77,20,'17:30:00','Yogurt, Queso cottage, Requesón','1/4 taza','- 2 C. Granola, - 1 C. Amaranto, - 1 pz Pan integral','- 15 pz Almendras, 2 C. Nuez, 1 C. Crema de cacahuate',NULL),
(78,20,'21:00:00','Proteína animal','150-200 gr.','- 3 pz Tortillas maíz, - 3/4 taza Arroz, 3/4 taza Lentejas','- 1/4 pz Aguacate, - 30 gr. Queso panela, - 15 pz Aceitunas',1),
(79,21,'07:00:00','Huevo revuelto, Omelette','2 huevos + 3 claras + 50 gr. Proteína animal','- 4 pz Tortillas maíz / - 200 gr. Papa / - 1 taza Frijoles','',1),
(80,21,'10:30:00','Yogurt, Queso cottage, Requesón','1/4 taza','- 1/4 taza Granola, - 2 tazas Fruta, - 2 pz Pan integral','- 15 pz Almendras, - 2 C. Nuez, - 1 C. Crema de cacahuate',0),
(81,21,'14:00:00','Proteína animal','150-200 gr.','- 4 pz Tortillas maíz - 1 taza Arroz - 1 taza Lentejas','- 1/4 pz Aguacate, - 30 gr. Queso panela, - 15 pz Aceitunas',1),
(82,21,'17:30:00','Yogurt, Queso cottage, Requesón','1/4 taza','- 1/4 taza Granola, - 2 C. Amaranto, - 2 pz Pan integral','- 15 pz Almendras, - 2 C. Nuez, - 1 C. Crema de cacahuate',0),
(83,21,'21:00:00','Proteína animal','150-200 gr.','- 4 pz Tortillas maíz, - 1 taza Arroz, - 1 taza Lentejas','- 1/4 pz Aguacate, - 30 gr. Queso panela, - 15 pz Aceitunas',1);
/*!40000 ALTER TABLE `comida_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dieta`
--

DROP TABLE IF EXISTS `dieta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `dieta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) NOT NULL,
  `estilo` varchar(50) DEFAULT NULL,
  `comentarios` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dieta`
--

LOCK TABLES `dieta` WRITE;
/*!40000 ALTER TABLE `dieta` DISABLE KEYS */;
INSERT INTO `dieta` VALUES
(39,'1','(Muy delgado)',''),
(40,'1','(Delgado)',''),
(41,'1','(Normal)',''),
(42,'1','(Gordo)',NULL),
(43,'1','(Muy gordo)',NULL);
/*!40000 ALTER TABLE `dieta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dieta_usuario`
--

DROP TABLE IF EXISTS `dieta_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `dieta_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_dieta_base` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha_creacion` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dieta_usuario`
--

LOCK TABLES `dieta_usuario` WRITE;
/*!40000 ALTER TABLE `dieta_usuario` DISABLE KEYS */;
INSERT INTO `dieta_usuario` VALUES
(16,14,41,'1','2025-08-15 16:31:03'),
(17,14,41,'1','2025-08-15 16:32:30'),
(18,14,41,'1','2025-08-15 16:33:47'),
(19,1,40,'1','2025-08-22 10:12:03'),
(20,1,42,'1','2025-08-27 14:58:44'),
(21,17,41,'1','2025-08-28 18:49:47');
/*!40000 ALTER TABLE `dieta_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos`
--

DROP TABLE IF EXISTS `grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` text DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `entrenador` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos`
--

LOCK TABLES `grupos` WRITE;
/*!40000 ALTER TABLE `grupos` DISABLE KEYS */;
INSERT INTO `grupos` VALUES
(1,'Desarrolladores','2025-03-01',1),
(2,'Corpus 1','2025-05-01',1),
(6,'1','2025-06-30',12),
(7,'2','2025-09-01',12);
/*!40000 ALTER TABLE `grupos` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`rafag`@`%`*/ /*!50003 TRIGGER insertar_habitos_automatica
AFTER INSERT ON grupos
FOR EACH ROW
BEGIN
    INSERT INTO habitos (id_grupo) VALUES (NEW.id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `habitos`
--

DROP TABLE IF EXISTS `habitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `habitos` (
  `id_grupo` int(11) NOT NULL DEFAULT 0,
  `Alimentación` tinyint(1) DEFAULT 0,
  `Sesión de pesas` tinyint(1) DEFAULT 0,
  `Cardio (45 minutos)` tinyint(1) DEFAULT 0,
  `Lectura (mín. 5 minutos)` tinyint(1) DEFAULT 0,
  `Escritura` tinyint(1) DEFAULT 0,
  `No Negociables Negativos` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id_grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitos`
--

LOCK TABLES `habitos` WRITE;
/*!40000 ALTER TABLE `habitos` DISABLE KEYS */;
INSERT INTO `habitos` VALUES
(1,1,0,0,0,0,0),
(6,0,0,0,0,0,0),
(7,0,0,0,0,0,0);
/*!40000 ALTER TABLE `habitos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_habitos`
--

DROP TABLE IF EXISTS `historial_habitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_habitos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `habito` text NOT NULL,
  `porcentaje` int(11) NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_habitos`
--

LOCK TABLES `historial_habitos` WRITE;
/*!40000 ALTER TABLE `historial_habitos` DISABLE KEYS */;
INSERT INTO `historial_habitos` VALUES
(1,1,'Entrenamiento',100,'2025-08-19'),
(2,1,'Alimentación',100,'2025-08-27');
/*!40000 ALTER TABLE `historial_habitos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_peso`
--

DROP TABLE IF EXISTS `historial_peso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_peso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `peso` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `historial_peso_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_peso`
--

LOCK TABLES `historial_peso` WRITE;
/*!40000 ALTER TABLE `historial_peso` DISABLE KEYS */;
INSERT INTO `historial_peso` VALUES
(9,1,'2025-06-19',93.00),
(10,1,'2025-06-19',93.00),
(11,1,'2025-08-19',94.00),
(12,15,'2025-08-22',93.00),
(13,16,'2025-08-22',75.00),
(14,1,'2025-08-22',100.00),
(15,17,'2025-08-29',84.00);
/*!40000 ALTER TABLE `historial_peso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listas`
--

DROP TABLE IF EXISTS `listas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `listas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roles` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listas`
--

LOCK TABLES `listas` WRITE;
/*!40000 ALTER TABLE `listas` DISABLE KEYS */;
INSERT INTO `listas` VALUES
(1,'entrenador'),
(2,'atleta');
/*!40000 ALTER TABLE `listas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensajes_chat`
--

DROP TABLE IF EXISTS `mensajes_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensajes_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_grupo` decimal(10,2) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `mensaje` text DEFAULT NULL,
  `archivo` varchar(255) DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensajes_chat`
--

LOCK TABLES `mensajes_chat` WRITE;
/*!40000 ALTER TABLE `mensajes_chat` DISABLE KEYS */;
INSERT INTO `mensajes_chat` VALUES
(63,6.00,'Csolis','Hola',NULL,'2025-06-18 12:54:45'),
(64,6.00,'23','Hola',NULL,'2025-06-18 13:00:20'),
(65,6.00,'0123','Hola',NULL,'2025-08-15 16:34:49'),
(66,6.00,'Csolis','Hola',NULL,'2025-08-15 16:35:14'),
(67,1.00,'Rafael','Hola',NULL,'2025-08-22 10:08:56');
/*!40000 ALTER TABLE `mensajes_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recetas`
--

DROP TABLE IF EXISTS `recetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `recetas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `loc_video` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recetas`
--

LOCK TABLES `recetas` WRITE;
/*!40000 ALTER TABLE `recetas` DISABLE KEYS */;
INSERT INTO `recetas` VALUES
(21,'Avena','Desayuno','fotos/recetas/Desayuno/6853179c2573c_copy_449F8A85-3FBC-4D2F-9F08-15CACDD2A41C.mov ');
/*!40000 ALTER TABLE `recetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recomendaciones`
--

DROP TABLE IF EXISTS `recomendaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `recomendaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recomendaciones`
--

LOCK TABLES `recomendaciones` WRITE;
/*!40000 ALTER TABLE `recomendaciones` DISABLE KEYS */;
INSERT INTO `recomendaciones` VALUES
(53,'Yogurt - OIKOS','Marcas');
/*!40000 ALTER TABLE `recomendaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rutina`
--

DROP TABLE IF EXISTS `rutina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `rutina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `comentarios` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rutina`
--

LOCK TABLES `rutina` WRITE;
/*!40000 ALTER TABLE `rutina` DISABLE KEYS */;
/*!40000 ALTER TABLE `rutina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rutina_ejercicio`
--

DROP TABLE IF EXISTS `rutina_ejercicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `rutina_ejercicio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_rutina` int(11) DEFAULT NULL,
  `dia` varchar(20) DEFAULT NULL,
  `id_ejercicio` int(11) DEFAULT NULL,
  `repeticiones` varchar(50) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `id_rutina` (`id_rutina`),
  CONSTRAINT `rutina_ejercicio_ibfk_1` FOREIGN KEY (`id_rutina`) REFERENCES `rutina` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rutina_ejercicio`
--

LOCK TABLES `rutina_ejercicio` WRITE;
/*!40000 ALTER TABLE `rutina_ejercicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `rutina_ejercicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rutina_usuario`
--

DROP TABLE IF EXISTS `rutina_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `rutina_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_rutina_base` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `fecha_asignacion` datetime NOT NULL DEFAULT current_timestamp(),
  `comentarios` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rutina_usuario`
--

LOCK TABLES `rutina_usuario` WRITE;
/*!40000 ALTER TABLE `rutina_usuario` DISABLE KEYS */;
INSERT INTO `rutina_usuario` VALUES
(20,13,14,'NIVEL 1','2025-06-18 12:41:57',NULL),
(21,13,15,'Nivel 2','2025-06-18 12:46:29',NULL),
(22,13,16,'Nivel 0','2025-06-18 13:29:30',NULL),
(23,1,18,'Prueba nueva2','2025-06-19 12:16:37',NULL),
(24,1,18,'Prueba nueva2','2025-06-19 12:17:31',NULL);
/*!40000 ALTER TABLE `rutina_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rutina_usuario_ejercicio`
--

DROP TABLE IF EXISTS `rutina_usuario_ejercicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `rutina_usuario_ejercicio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_rutina_usuario` int(11) DEFAULT NULL,
  `dia` varchar(20) DEFAULT NULL,
  `id_ejercicio` int(11) DEFAULT NULL,
  `repeticiones` varchar(50) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `id_rutina_usuario` (`id_rutina_usuario`),
  CONSTRAINT `rutina_usuario_ejercicio_ibfk_1` FOREIGN KEY (`id_rutina_usuario`) REFERENCES `rutina_usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rutina_usuario_ejercicio`
--

LOCK TABLES `rutina_usuario_ejercicio` WRITE;
/*!40000 ALTER TABLE `rutina_usuario_ejercicio` DISABLE KEYS */;
INSERT INTO `rutina_usuario_ejercicio` VALUES
(28,20,'Lunes',14,'4 x 10-15 reps','Pecho-espalda '),
(29,21,'Lunes',17,'4 x 12','Pecho-espalda '),
(30,22,'Lunes',14,'4 x 10','Pecho-espalda '),
(31,22,'Lunes',16,'4 x 15','Pecho-espalda '),
(32,23,'Pecho-espalda ',14,'3x5','Pecho-espalda'),
(33,23,'Pecho-espalda ',16,'2x6','Pecho-espalda'),
(34,23,'Pecho-espalda ',17,'1x10','Pecho-espalda'),
(35,23,'Pierna y dedo gordo',16,'2x2','Pecho-espalda'),
(36,23,'Pierna y dedo gordo',17,'3x1','Pecho-espalda'),
(37,24,'Lunes',14,'3x5','Pecho-espalda '),
(38,24,'Lunes',16,'2x6','Pecho-espalda '),
(39,24,'Lunes',17,'1x10','Pecho-espalda '),
(40,24,'Martes',16,'2x2','Pierna y dedo gordo'),
(41,24,'Martes',17,'3x1','Pierna y dedo gordo');
/*!40000 ALTER TABLE `rutina_usuario_ejercicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidad`
--

DROP TABLE IF EXISTS `unidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `unidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `abreviatura` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidad`
--

LOCK TABLES `unidad` WRITE;
/*!40000 ALTER TABLE `unidad` DISABLE KEYS */;
INSERT INTO `unidad` VALUES
(1,'Gramo','g'),
(2,'Kilogramo','kg'),
(3,'Mililitro','ml'),
(4,'Litro','l'),
(5,'Pieza','pz'),
(6,'Taza','tz'),
(7,'Cucharada','cda'),
(8,'Cucharadita','cdta');
/*!40000 ALTER TABLE `unidad` ENABLE KEYS */;
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
  `nombre` varchar(100) DEFAULT NULL,
  `contraseña` varchar(255) NOT NULL,
  `rol` varchar(50) DEFAULT NULL,
  `grupo` int(11) DEFAULT NULL,
  `estatura` decimal(10,2) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario` (`usuario`),
  KEY `rol` (`rol`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES
(1,'Rafael','Rafael','$2y$10$RTJ.bCYTYULiRiKFZSIoAOnmyeG009ZnWTQHNPhuL91u3MFqRDZ.e','entrenador',1,1.83,'2002-02-08'),
(12,'Csolis','Carlos Solís','$2y$10$wPLP4OEKrtvX.4MYMLlx4Ob7fZ4z3bISlJhSJNe9w82skzH7.IV0O','entrenador',2,NULL,NULL),
(13,'23','Rafael Garza','$2y$10$3scFr29pLC10qmHuGdt64.eFd7x4dIuttygwjUsOkrssicv3bTlky','atleta',6,NULL,NULL),
(14,'0123','Fede','$2y$10$LEgJBbzsoly5scBZRs34J.gkpnwnCcRyv1McKWAOPQOGMd4ZmuCzK','atleta',6,NULL,NULL),
(15,'Rafael@growtech-solutions.com.mx','Rafa.garza27','$2y$10$qN3/KN89tzIcRShkKdCxoelTF32eEi27Qjr4Zn3nFkaZSEayiRiOW','atleta',1,1.83,NULL),
(16,'Popeye','pop','$2y$10$RRw3d6eQhQctc9zeuKoS2.k05qt8JXSHfytGYg.6IG35zyD7am2dm','atleta',2,150.00,NULL),
(17,'Raymundo','Rayo','$2y$10$Y7Tdll9p4A4KfYnJXJ5c8e7iF8uqbAViVv3FVBL.heU85b4KkdfGi','atleta',1,1.83,NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'solis_program'
--

--
-- Dumping routines for database 'solis_program'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-09  2:00:05
