-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.32-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para gsnab_db
CREATE DATABASE IF NOT EXISTS `gsnab_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `gsnab_db`;

-- Volcando estructura para tabla gsnab_db.cursos
CREATE TABLE IF NOT EXISTS `cursos` (
  `id_cursos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_curso` varchar(45) NOT NULL,
  PRIMARY KEY (`id_cursos`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla gsnab_db.cursos: ~5 rows (aproximadamente)
INSERT INTO `cursos` (`id_cursos`, `nombre_curso`) VALUES
	(1, 'FIRST A'),
	(2, 'FIRST B'),
	(3, 'SECOND A'),
	(4, 'SECOND B'),
	(5, 'SECOND C');

-- Volcando estructura para tabla gsnab_db.estado
CREATE TABLE IF NOT EXISTS `estado` (
  `id_estado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_estado` varchar(45) NOT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla gsnab_db.estado: ~2 rows (aproximadamente)
INSERT INTO `estado` (`id_estado`, `nombre_estado`) VALUES
	(1, 'NUEVO'),
	(2, 'ANTIGUO');

-- Volcando estructura para tabla gsnab_db.estudiante
CREATE TABLE IF NOT EXISTS `estudiante` (
  `id_estudiante` int(11) NOT NULL AUTO_INCREMENT,
  `numero_identificacion` varchar(45) NOT NULL,
  `nombre_estudiante` varchar(100) NOT NULL,
  `cursos_id_cursos` int(11) NOT NULL,
  `estado_id_estado` int(11) NOT NULL,
  `fk_plataforma_cambridge` int(11) NOT NULL,
  `fk_plataforma_fathom_reads` int(11) NOT NULL,
  `fk_plataforma_milton_ochoa` int(11) NOT NULL,
  `fk_plataforma_arukay` int(11) NOT NULL,
  `plataforma_DELFOS_id_plataforma_DELFOS1` int(11) NOT NULL,
  PRIMARY KEY (`id_estudiante`,`cursos_id_cursos`,`estado_id_estado`,`fk_plataforma_cambridge`,`fk_plataforma_fathom_reads`,`fk_plataforma_milton_ochoa`,`fk_plataforma_arukay`,`plataforma_DELFOS_id_plataforma_DELFOS1`),
  KEY `fk_estudiante_plataforma_CAMBRIDGE1_idx` (`fk_plataforma_cambridge`),
  KEY `fk_estudiante_plataforma_FATHOM_READS1_idx` (`fk_plataforma_fathom_reads`),
  KEY `fk_estudiante_plataforma_MILTON_OCHOA1_idx` (`fk_plataforma_milton_ochoa`),
  KEY `fk_estudiante_plataforma_ARUKAY1_idx` (`fk_plataforma_arukay`),
  KEY `fk_estudiante_plataforma_DELFOS2_idx` (`plataforma_DELFOS_id_plataforma_DELFOS1`),
  KEY `fk_estudiante_estado1_idx` (`estado_id_estado`),
  KEY `fk_estudiante_cursos1_idx` (`cursos_id_cursos`),
  CONSTRAINT `fk_estudiante_cursos1` FOREIGN KEY (`cursos_id_cursos`) REFERENCES `cursos` (`id_cursos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_estudiante_estado1` FOREIGN KEY (`estado_id_estado`) REFERENCES `estado` (`id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_estudiante_plataforma_ARUKAY1` FOREIGN KEY (`fk_plataforma_arukay`) REFERENCES `plataforma_arukay` (`id_plataforma_ARUKAY`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_estudiante_plataforma_CAMBRIDGE1` FOREIGN KEY (`fk_plataforma_cambridge`) REFERENCES `plataforma_cambridge` (`id_plataforma_CAMBRIDGE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_estudiante_plataforma_DELFOS2` FOREIGN KEY (`plataforma_DELFOS_id_plataforma_DELFOS1`) REFERENCES `plataforma_delfos` (`id_plataforma_DELFOS`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_estudiante_plataforma_FATHOM_READS1` FOREIGN KEY (`fk_plataforma_fathom_reads`) REFERENCES `plataforma_fathom_reads` (`id_plataforma_FATHOM_READS`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_estudiante_plataforma_MILTON_OCHOA1` FOREIGN KEY (`fk_plataforma_milton_ochoa`) REFERENCES `plataforma_milton_ochoa` (`id_plataforma_MILTON_OCHOA`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla gsnab_db.estudiante: ~119 rows (aproximadamente)
INSERT INTO `estudiante` (`id_estudiante`, `numero_identificacion`, `nombre_estudiante`, `cursos_id_cursos`, `estado_id_estado`, `fk_plataforma_cambridge`, `fk_plataforma_fathom_reads`, `fk_plataforma_milton_ochoa`, `fk_plataforma_arukay`, `plataforma_DELFOS_id_plataforma_DELFOS1`) VALUES
	(1, '1016915789', 'ABRIL MURIEL CUBILLOS', 1, 1, 1, 1, 1, 1, 1),
	(2, '1034790510', 'ALANNA SANCHEZ HERREÑO', 1, 2, 2, 2, 2, 2, 2),
	(3, '1027153387', 'ANGEL SEBASTIAN TORRES GOMEZ', 1, 1, 3, 3, 3, 3, 3),
	(4, '1013152719', 'ANTONELLA BEJARANO GONZALEZ', 1, 2, 4, 4, 4, 4, 4),
	(5, '1015483028', 'ANTONELLA RICO GUZMAN', 1, 1, 5, 5, 5, 5, 5),
	(6, '1221465318', 'DANIEL ROMERO SANCHEZ', 1, 1, 6, 6, 6, 6, 6),
	(7, '1034521663', 'DANNY MATIAS GRANADOS CARO', 1, 1, 7, 7, 7, 7, 7),
	(8, '1141361056', 'DAVID SANTIAGO AYA BOLIVAR', 1, 2, 8, 8, 8, 8, 8),
	(9, '1077943067', 'EMILY NAHOMI AVILA', 1, 1, 9, 9, 9, 9, 9),
	(10, '1016914370', 'EMMANUEL CAMACHO PACHON', 1, 1, 10, 10, 10, 10, 10),
	(11, '1014896847', 'GABRIELA RODRIGUEZ NUNEZ', 1, 2, 11, 11, 11, 11, 11),
	(12, '1016914037', 'HANNAH SALOME DIAZ CAMPOS', 1, 1, 12, 12, 12, 12, 12),
	(13, '1025078704', 'JAROL SANTIAGO JOYA ROA', 1, 1, 13, 13, 13, 13, 13),
	(14, '1014896111', 'JOSEPH PEREZ MANZON', 1, 1, 14, 14, 14, 14, 14),
	(15, '1022445261', 'JUAN JOSE SUAREZ SEPULVEDA', 1, 1, 15, 15, 15, 15, 15),
	(16, '1141360869', 'JUAN JOSE YELA QUITIAN', 1, 1, 16, 16, 16, 16, 16),
	(17, '1034670371', 'LAURA VALENTINA ROSAS QUIROGA', 1, 2, 17, 17, 17, 17, 17),
	(18, '1025154788', 'LUCIANA RODRÍGUEZ GUZMÁN', 1, 2, 18, 18, 18, 18, 18),
	(19, '1016914862', 'MARIA CLARA ARISTIZABAL DIAZ', 1, 1, 19, 19, 19, 19, 19),
	(20, '1016914863', 'MARIA GUADALUPE ARISTIZABAL DIAZ', 1, 1, 20, 20, 20, 20, 20),
	(21, '1019915880', 'MARTIN VASQUEZ MORA', 1, 2, 21, 21, 21, 21, 21),
	(22, '1145932534', 'MATIAS SUAREZ BERNAL', 1, 1, 22, 22, 22, 22, 22),
	(23, '1013693374', 'MIA VALENTINA AREVALO CASTILLO', 1, 1, 23, 23, 23, 23, 23),
	(24, '1150189088', 'SALOME MALDONADO PEÑA', 1, 1, 24, 24, 24, 24, 24),
	(25, '1011108980', 'SAMUEL ALEJANDRO VALDIVIESO HERRERA', 1, 2, 25, 25, 25, 25, 25),
	(26, '1010249044', 'SEAN PAULO BRICEÑO CHAVARRO', 1, 1, 26, 26, 26, 26, 26),
	(27, '1220224662', 'VALERY BAQUERO ACUÑA', 1, 1, 27, 27, 27, 27, 27),
	(28, '1145932249', 'ANA SOFIA BARRETO FORERO', 2, 2, 28, 28, 28, 28, 28),
	(29, '1027153388', 'ANA VICTORIA TORRES GOMEZ', 2, 1, 29, 29, 29, 29, 29),
	(30, '1225560995', 'ANGEL SANTIAGO BAUTISTA OBANDO', 2, 2, 30, 30, 30, 30, 30),
	(31, '1011247512', 'ANTONIA GARCIA SILVA', 2, 2, 31, 31, 31, 31, 31),
	(32, '1032945645', 'CARLOS DANIEL MARTINEZ GOMEZ', 2, 1, 32, 32, 32, 32, 32),
	(33, '1022443608', 'CATALINA MORALES POVEDA', 2, 1, 33, 33, 33, 33, 33),
	(34, '1145931994', 'EMILIANO PINEDA URIBE', 2, 1, 34, 34, 34, 34, 34),
	(35, '1016915651', 'EMILY LUCIA SUAREZ GUARIN', 2, 1, 35, 35, 35, 35, 35),
	(36, '1011246850', 'EMMANUEL GARZON PEDREROS', 2, 2, 36, 36, 36, 36, 36),
	(37, '1014999161', 'EMMANUEL TOLOZA FRANCO', 2, 1, 37, 37, 37, 37, 37),
	(38, '1016965258', 'GABRIELA SANTOS AYALA', 2, 1, 38, 38, 38, 38, 38),
	(39, '1014998894', 'ISABELLA TAPIA BUSTOS', 2, 2, 39, 39, 39, 39, 39),
	(40, '1188224641', 'JERONIMO HERRERA VEGA', 2, 2, 40, 40, 40, 40, 40),
	(41, '1032506309', 'JUAN GERARDO TORRES HERNANDEZ', 2, 2, 41, 41, 41, 41, 41),
	(42, '1096706845', 'MARIA ISABELLA GIL VALERO', 2, 1, 42, 42, 42, 42, 42),
	(43, '1016916729', 'MARIA PAULA CUBILLOS NIETO', 2, 2, 43, 43, 43, 43, 43),
	(44, '1016916106', 'MARIA VICTORIA PARRA ROJAS', 2, 2, 44, 44, 44, 44, 44),
	(45, '1025079106', 'MARTIN SANTIAGO MEDINA GONZALEZ', 2, 1, 45, 45, 45, 45, 45),
	(46, '1023981336', 'SALOME VASQUEZ ARIZA', 2, 1, 46, 46, 46, 46, 46),
	(47, '1014895394', 'SAMUELL JIMENEZ GUARNIZO', 2, 1, 47, 47, 47, 47, 47),
	(48, '1033811304', 'SANTIAGO GUZMAN TORRES', 2, 2, 48, 48, 48, 48, 48),
	(49, '1188223071', 'SANTIAGO HERNANDEZ PASTRANA', 2, 1, 49, 49, 49, 49, 49),
	(50, '1011250688', 'SARAH SOFIA RODRIGUEZ SALCEDO', 2, 2, 50, 50, 50, 50, 50),
	(51, '1220471938', 'SOPHIE ALANA GALVEZ ACERO', 2, 2, 51, 51, 51, 51, 51),
	(52, '1023031031', 'AARON DAVID BUSTOS LARA', 3, 2, 52, 52, 52, 52, 52),
	(53, '1141357908', 'ABBI SAMARA RODRIGUEZ RAMIREZ', 3, 2, 53, 53, 53, 53, 53),
	(54, '1145931225', 'ANA VERÓNICA GARZÓN LIZARAZO', 3, 2, 54, 54, 54, 54, 54),
	(55, '1013028276', 'CARLOS DAVID PADILLA GONZALEZ', 3, 2, 55, 55, 55, 55, 55),
	(56, '1011246242', 'DANIEL SANTIAGO BONILLA HERNANDEZ', 3, 2, 56, 56, 56, 56, 56),
	(57, '1013029345', 'EMILIANA BERNAL VILLAMIL', 3, 2, 57, 57, 57, 57, 57),
	(58, '1019845592', 'EMMA ACEVEDO RODRÍGUEZ', 3, 2, 58, 58, 58, 58, 58),
	(59, '1013029794', 'ISAAC DAVID MOGOLLON ARCHILA', 3, 2, 59, 59, 59, 59, 59),
	(60, '1013027986', 'ISABELLA VASQUEZ MORA', 3, 2, 60, 60, 60, 60, 60),
	(61, '1145931713', 'JERONIMO ALVAREZ ARBOLEDA', 3, 2, 61, 61, 61, 61, 61),
	(62, '1014893489', 'JUAN ANDRES ALMONACID PARRA', 3, 2, 62, 62, 62, 62, 62),
	(63, '1014893198', 'JUAN SEBASTIÁN LUQUE BEJARANO', 3, 2, 63, 63, 63, 63, 63),
	(64, '1014893467', 'LEANNE SALDARRIAGA CHAVARRO', 3, 2, 64, 64, 64, 64, 64),
	(65, '1027299968', 'LIA SILVANA LEÓN VILLARREAL', 3, 2, 65, 65, 65, 65, 65),
	(66, '1019913084', 'LUCIANA BEJARANO ROJAS', 3, 2, 66, 66, 66, 66, 66),
	(67, '1220222500', 'LUCIANA SANCHEZ MORENO', 3, 1, 67, 67, 67, 67, 67),
	(68, '1014998523', 'LUNA VICTORIA SARMIENTO MORA', 3, 2, 68, 68, 68, 68, 68),
	(69, '1013027546', 'MARIA JOSÉ CASTAÑEDA NAJAR', 3, 2, 69, 69, 69, 69, 69),
	(70, '1019913863', 'MARIANA GONZALEZ NIÑO', 3, 2, 70, 70, 70, 70, 70),
	(71, '1019845424', 'MELISSA VERGARA GÓMEZ', 3, 2, 71, 71, 71, 71, 71),
	(72, '1014998513', 'SALOME CUELLAR CHOCONTA', 3, 2, 72, 72, 72, 72, 72),
	(73, '1025076786', 'ZARA SOFIA ÁVILA LÓPEZ', 3, 2, 73, 73, 73, 73, 73),
	(74, '1013150827', 'ZOE SOFIA SALAMANCA TORRES', 3, 2, 74, 74, 74, 74, 74),
	(75, '1222212629', 'ANDRES FELIPE RODRIGUEZ RODRIGUEZ', 4, 2, 75, 75, 75, 75, 75),
	(76, '1034788854', 'ANGEL ACOSTA SOLORZANO', 4, 2, 76, 76, 76, 76, 76),
	(77, '1025077240', 'ANGELA PEREZ PIMIENTO', 4, 1, 77, 77, 77, 77, 77),
	(78, '1188223875', 'ANNIE SARITH VILLALBA BADILLO', 4, 2, 78, 78, 78, 78, 78),
	(79, '1027298693', 'ANTONELLA CHAVES OLAYA', 4, 2, 79, 79, 79, 79, 79),
	(80, '1013027212', 'CELESTE ALMECIGA TRASLAVIÑA', 4, 1, 80, 80, 80, 80, 80),
	(81, '1025559902', 'CRISTHY JUANITA ESTACIO SARMIENTO', 4, 1, 81, 81, 81, 81, 81),
	(82, '1034789896', 'DANIEL FERNANDO PORRAS GONZALEZ', 4, 2, 82, 82, 82, 82, 82),
	(83, '1141357892', 'ELENA PINILLA OROZCO', 4, 2, 83, 83, 83, 83, 83),
	(84, '1011242769', 'EMILIO PATIÑO PEREZ', 4, 2, 84, 84, 84, 84, 84),
	(85, '1013150591', 'ESTEBAN DANIEL LEGUIZAMO YUCUMA', 4, 2, 85, 85, 85, 85, 85),
	(86, '1025329464', 'GABRIELA URREGO BARRAGAN', 4, 2, 86, 86, 86, 86, 86),
	(87, '1034789599', 'IVANNA ALEJANDRA PAEZ GUTIERREZ', 4, 2, 87, 87, 87, 87, 87),
	(88, '1025329224', 'JIMENA JIMENEZ ROJAS', 4, 2, 88, 88, 88, 88, 88),
	(89, '1014893797', 'JUAN ESTEBAN LOPEZ SIERRA', 4, 2, 89, 89, 89, 89, 89),
	(90, '1027538117', 'JUAN JOSE ARAQUE GANTIVA', 4, 2, 90, 90, 90, 90, 90),
	(91, '1033118798', 'JUAN SEBASTIAN CAMACHO TELLEZ', 4, 2, 91, 91, 91, 91, 91),
	(92, '1146139736', 'JUAN SEBASTIAN CENDALES ORTIZ', 4, 2, 92, 92, 92, 92, 92),
	(93, '1145327736', 'LIU ARIADNA ALVAREZ ALVAREZ', 4, 2, 93, 93, 93, 93, 93),
	(94, '1014893231', 'MANUELA CONRADO GONZALEZ', 4, 2, 94, 94, 94, 94, 94),
	(95, '1025559311', 'THARA CUELLAR DE LOS RIOS', 4, 1, 95, 95, 95, 95, 95),
	(96, '1028726910', 'DYLAN ALEJANDRO LONDOÑO MURCIA', 5, 2, 96, 96, 96, 96, 96),
	(97, '1056136176', 'MANUELA RAMIREZ RAMIREZ', 5, 2, 97, 97, 97, 97, 97),
	(98, '1022442007', 'MARIA ISABELLA FLOREZ CAMARGO', 5, 2, 98, 98, 98, 98, 98),
	(99, '1034669925', 'MARIA JOSE RUIZ LEAL', 5, 2, 99, 99, 99, 99, 99),
	(100, '1016836518', 'MARIA VICTORIA CARDENAS ROJAS', 5, 2, 100, 100, 100, 100, 100),
	(101, '1188223481', 'MARIANGEL BUSTACARA RAMIREZ', 5, 2, 101, 101, 101, 101, 101),
	(102, '1029153765', 'MARTIN GOMEZ DIAZ', 5, 2, 102, 102, 102, 102, 102),
	(103, '1016606817', 'MARTIN PIRAGAUTA VIVAS', 5, 2, 103, 103, 103, 103, 103),
	(104, '1034789889', 'MARTINA REYES RODRIGUEZ', 5, 2, 104, 104, 104, 104, 104),
	(105, '1222214290', 'MATHIAS MONTAÑO GARCIA', 5, 2, 105, 105, 105, 105, 105),
	(106, '1028899318', 'MOREN AMELIE CORREA MORALES', 5, 2, 106, 106, 106, 106, 106),
	(107, '1010846694', 'NICOLAS JERONIMO MURALLAS SOLANO', 5, 2, 107, 107, 107, 107, 107),
	(108, '1145930814', 'NOACH DAVID PLAZAS SANCHEZ', 5, 1, 108, 108, 108, 108, 108),
	(109, '1031544417', 'NOAH SALOME AYALA PACHECO', 5, 2, 109, 109, 109, 109, 109),
	(110, '1145931302', 'SARA VALENTINA BARRETO FORERO', 5, 2, 110, 110, 110, 110, 110),
	(111, '1150188678', 'SEBASTIAN MOLANO SUATERNA', 5, 2, 111, 111, 111, 111, 111),
	(112, '1042271076', 'SEBASTIAN OROZCO BLANCO', 5, 2, 112, 112, 112, 112, 112),
	(113, '1233504722', 'SERGIO ANDRES GUZMAN ACEVEDO', 5, 2, 113, 113, 113, 113, 113),
	(114, '1010968342', 'SOFIA GOMEZ ZARAMA', 5, 2, 114, 114, 114, 114, 114),
	(115, '1145930562', 'THIAGO MATEUS AYALA', 5, 2, 115, 115, 115, 115, 115),
	(116, '1022430355', 'VALENTINA MONSALVE MILQUES', 5, 2, 116, 116, 116, 116, 116),
	(117, '1013028502', 'VALERIA RAMIREZ HERRERA', 5, 2, 117, 117, 117, 117, 117),
	(118, '1146136052', 'YELEN SARAY GARCIA MALAGON', 5, 2, 118, 118, 118, 118, 118),
	(119, '1188223308', 'ZOE CARCAMO JAIMES', 5, 2, 119, 119, 119, 119, 119);

-- Volcando estructura para tabla gsnab_db.plataforma_arukay
CREATE TABLE IF NOT EXISTS `plataforma_arukay` (
  `id_plataforma_ARUKAY` int(11) NOT NULL AUTO_INCREMENT,
  `user_ARUKAY` varchar(45) NOT NULL,
  `password_ARUKAY` varchar(45) NOT NULL,
  PRIMARY KEY (`id_plataforma_ARUKAY`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla gsnab_db.plataforma_arukay: ~119 rows (aproximadamente)
INSERT INTO `plataforma_arukay` (`id_plataforma_ARUKAY`, `user_ARUKAY`, `password_ARUKAY`) VALUES
	(1, 'VACIO', 'VACIO'),
	(2, 'VACIO', 'VACIO'),
	(3, 'VACIO', 'VACIO'),
	(4, 'VACIO', 'VACIO'),
	(5, 'VACIO', 'VACIO'),
	(6, 'VACIO', 'VACIO'),
	(7, 'VACIO', 'VACIO'),
	(8, 'VACIO', 'VACIO'),
	(9, 'VACIO', 'VACIO'),
	(10, 'VACIO', 'VACIO'),
	(11, 'VACIO', 'VACIO'),
	(12, 'VACIO', 'VACIO'),
	(13, 'VACIO', 'VACIO'),
	(14, 'VACIO', 'VACIO'),
	(15, 'VACIO', 'VACIO'),
	(16, 'VACIO', 'VACIO'),
	(17, 'VACIO', 'VACIO'),
	(18, 'VACIO', 'VACIO'),
	(19, 'VACIO', 'VACIO'),
	(20, 'VACIO', 'VACIO'),
	(21, 'VACIO', 'VACIO'),
	(22, 'VACIO', 'VACIO'),
	(23, 'VACIO', 'VACIO'),
	(24, 'VACIO', 'VACIO'),
	(25, 'VACIO', 'VACIO'),
	(26, 'VACIO', 'VACIO'),
	(27, 'VACIO', 'VACIO'),
	(28, 'VACIO', 'VACIO'),
	(29, 'VACIO', 'VACIO'),
	(30, 'VACIO', 'VACIO'),
	(31, 'VACIO', 'VACIO'),
	(32, 'VACIO', 'VACIO'),
	(33, 'VACIO', 'VACIO'),
	(34, 'VACIO', 'VACIO'),
	(35, 'VACIO', 'VACIO'),
	(36, 'VACIO', 'VACIO'),
	(37, 'VACIO', 'VACIO'),
	(38, 'VACIO', 'VACIO'),
	(39, 'VACIO', 'VACIO'),
	(40, 'VACIO', 'VACIO'),
	(41, 'VACIO', 'VACIO'),
	(42, 'VACIO', 'VACIO'),
	(43, 'VACIO', 'VACIO'),
	(44, 'VACIO', 'VACIO'),
	(45, 'VACIO', 'VACIO'),
	(46, 'VACIO', 'VACIO'),
	(47, 'VACIO', 'VACIO'),
	(48, 'VACIO', 'VACIO'),
	(49, 'VACIO', 'VACIO'),
	(50, 'VACIO', 'VACIO'),
	(51, 'VACIO', 'VACIO'),
	(52, 'VACIO', 'VACIO'),
	(53, 'VACIO', 'VACIO'),
	(54, 'VACIO', 'VACIO'),
	(55, 'VACIO', 'VACIO'),
	(56, 'VACIO', 'VACIO'),
	(57, 'VACIO', 'VACIO'),
	(58, 'VACIO', 'VACIO'),
	(59, 'VACIO', 'VACIO'),
	(60, 'VACIO', 'VACIO'),
	(61, 'VACIO', 'VACIO'),
	(62, 'VACIO', 'VACIO'),
	(63, 'VACIO', 'VACIO'),
	(64, 'VACIO', 'VACIO'),
	(65, 'VACIO', 'VACIO'),
	(66, 'VACIO', 'VACIO'),
	(67, 'VACIO', 'VACIO'),
	(68, 'VACIO', 'VACIO'),
	(69, 'VACIO', 'VACIO'),
	(70, 'VACIO', 'VACIO'),
	(71, 'VACIO', 'VACIO'),
	(72, 'VACIO', 'VACIO'),
	(73, 'VACIO', 'VACIO'),
	(74, 'VACIO', 'VACIO'),
	(75, 'VACIO', 'VACIO'),
	(76, 'VACIO', 'VACIO'),
	(77, 'VACIO', 'VACIO'),
	(78, 'VACIO', 'VACIO'),
	(79, 'VACIO', 'VACIO'),
	(80, 'VACIO', 'VACIO'),
	(81, 'VACIO', 'VACIO'),
	(82, 'VACIO', 'VACIO'),
	(83, 'VACIO', 'VACIO'),
	(84, 'VACIO', 'VACIO'),
	(85, 'VACIO', 'VACIO'),
	(86, 'VACIO', 'VACIO'),
	(87, 'VACIO', 'VACIO'),
	(88, 'VACIO', 'VACIO'),
	(89, 'VACIO', 'VACIO'),
	(90, 'VACIO', 'VACIO'),
	(91, 'VACIO', 'VACIO'),
	(92, 'VACIO', 'VACIO'),
	(93, 'VACIO', 'VACIO'),
	(94, 'VACIO', 'VACIO'),
	(95, 'VACIO', 'VACIO'),
	(96, 'VACIO', 'VACIO'),
	(97, 'VACIO', 'VACIO'),
	(98, 'VACIO', 'VACIO'),
	(99, 'VACIO', 'VACIO'),
	(100, 'VACIO', 'VACIO'),
	(101, 'VACIO', 'VACIO'),
	(102, 'VACIO', 'VACIO'),
	(103, 'VACIO', 'VACIO'),
	(104, 'VACIO', 'VACIO'),
	(105, 'VACIO', 'VACIO'),
	(106, 'VACIO', 'VACIO'),
	(107, 'VACIO', 'VACIO'),
	(108, 'VACIO', 'VACIO'),
	(109, 'VACIO', 'VACIO'),
	(110, 'VACIO', 'VACIO'),
	(111, 'VACIO', 'VACIO'),
	(112, 'VACIO', 'VACIO'),
	(113, 'VACIO', 'VACIO'),
	(114, 'VACIO', 'VACIO'),
	(115, 'VACIO', 'VACIO'),
	(116, 'VACIO', 'VACIO'),
	(117, 'VACIO', 'VACIO'),
	(118, 'VACIO', 'VACIO'),
	(119, 'VACIO', 'VACIO');

-- Volcando estructura para tabla gsnab_db.plataforma_cambridge
CREATE TABLE IF NOT EXISTS `plataforma_cambridge` (
  `id_plataforma_CAMBRIDGE` int(11) NOT NULL AUTO_INCREMENT,
  `user_FATHOM_CAMBRIDGE` varchar(45) NOT NULL,
  `password_CAMBRIDGE` varchar(45) NOT NULL,
  PRIMARY KEY (`id_plataforma_CAMBRIDGE`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla gsnab_db.plataforma_cambridge: ~119 rows (aproximadamente)
INSERT INTO `plataforma_cambridge` (`id_plataforma_CAMBRIDGE`, `user_FATHOM_CAMBRIDGE`, `password_CAMBRIDGE`) VALUES
	(1, 'gsnaabrilmuriel', 'GSNA2024'),
	(2, 'gsnaalannasanchez', 'GSNAB2023'),
	(3, 'gsnaangeltorres', 'GSNA2024'),
	(4, 'gsnaantonellabejarano', 'GSNAB2023'),
	(5, 'gsnaantonellarico', 'GSNA2024'),
	(6, 'gsnadanielromero', 'GSNA2024'),
	(7, 'gsnadannygranados', 'GSNA2024'),
	(8, 'gsnadavidaya', 'GSNAB2023'),
	(9, 'gsnaemilyavila', 'GSNA2024'),
	(10, 'gsnaemmanuelcamacho', 'GSNA2024'),
	(11, 'gsnagabrielarodriguez', 'GSNAB2023'),
	(12, 'gsnahannahdiaz', 'GSNA2024'),
	(13, 'gsnajaroljoya', 'GSNA2024'),
	(14, 'gsnajosephperez', 'GSNA2024'),
	(15, 'gsnajuansuarez', 'GSNA2024'),
	(16, 'gsnajuanyela', 'GSNA2024'),
	(17, 'gsnalaurarosas', 'GSNAB2023'),
	(18, 'gsnalucianarodriguez', 'GSNAB2023'),
	(19, 'gsnamariaclaraaristizabal', 'GSNA2024'),
	(20, 'gsnamariaaristizabal', 'GSNA2024'),
	(21, 'gsnamartinvasquez', 'GSNAB2023'),
	(22, 'gsnamatiassuarez', 'GSNA2024'),
	(23, 'gsnamiaarevalo', 'GSNA2024'),
	(24, 'gsnasalomemaldonado', 'GSNA2024'),
	(25, 'gsnasamuelvaldivieso', 'GSNAB2023'),
	(26, 'gsnaseanbriceno', 'GSNA2024'),
	(27, 'gsnavalerybaquero', 'GSNA2024'),
	(28, 'gsnaanabarreto', 'GSNAB2023'),
	(29, 'gsnaanatorres', 'GSNA2024'),
	(30, 'gsnaangelbautista', 'GSNAB2023'),
	(31, 'gsnaantoniagarcia', 'GSNAB2023'),
	(32, 'gsnacarlosmartinez', 'GSNA2024'),
	(33, 'gsnacatalinamorales', 'GSNA2024'),
	(34, 'gsnaemilianopineda', 'GSNA2024'),
	(35, 'gsnaemilysuarez', 'GSNA2024'),
	(36, 'gsnaemmanuelgarzon', 'GSNAB2023'),
	(37, 'gsnaemmanueltoloza', 'GSNA2024'),
	(38, 'gsnagabrielasantos', 'GSNA2024'),
	(39, 'gsnaisabellatapia', 'GSNAB2023'),
	(40, 'gsnajeronimoherrera', 'GSNAB2023'),
	(41, 'gsnajuantorres', 'GSNAB2023'),
	(42, 'gsnamariagil', 'GSNA2024'),
	(43, 'gsnamariacubillos', 'GSNAB2023'),
	(44, 'gsnamariaparra', 'GSNAB2023'),
	(45, 'gsnamartinmedina', 'GSNA2024'),
	(46, 'gsnasalomevasquez', 'GSNA2024'),
	(47, 'gsnasamuelljimenez', 'GSNA2024'),
	(48, 'gsnasantiagoguzman', 'GSNAB2023'),
	(49, 'gsnasantiagohernandezpastrana', 'GSNA2024'),
	(50, 'gsnasarahrodriguez', 'GSNAB2023'),
	(51, 'gsnasophiegalvez', 'GSNAB2023'),
	(52, 'aarondavidgsna', 'GSNAB2023'),
	(53, 'abbisamaragsna', 'GSNAB2023'),
	(54, 'anaveronicagsna', 'GSNAB2023'),
	(55, 'carlosdavidgsna', 'GSNAB2023'),
	(56, 'danielsantiagogsna', 'GSNAB2023'),
	(57, 'emilianagsna', 'GSNAB2023'),
	(58, 'emmagsna', 'GSNAB2023'),
	(59, 'isaacdavidgsna', 'GSNAB2023'),
	(60, 'isabellagsna1', 'GSNAB2023'),
	(61, 'jeronimogsna', 'GSNAB2023'),
	(62, 'juanandresgsna', 'GSNAB2023'),
	(63, 'juansebastiangsna', 'GSNAB2023'),
	(64, 'leannegsna', 'GSNAB2023'),
	(65, 'liasilvanagsna', 'GSNAB2023'),
	(66, 'lucianagsna', 'GSNAB2023'),
	(67, 'gsnalucianasanchez', 'GSNA2024'),
	(68, 'lunavictoriagsna', 'GSNAB2023'),
	(69, 'mariajosegsna', 'GSNAB2023'),
	(70, 'gsnamariana7', 'GSNAB2023'),
	(71, 'melissagsna', 'GSNAB2023'),
	(72, 'salomegsna', 'GSNAB2023'),
	(73, 'zarasofiagsna', 'GSNAB2023'),
	(74, 'zoesofiagsna', 'GSNAB2023'),
	(75, 'andresfelipegsna', 'GSNAB2023'),
	(76, 'angelgsna', 'GSNAB2023'),
	(77, 'gsnaangelaperez', 'GSNA2024'),
	(78, 'anniesarithgsna', 'GSNAB2023'),
	(79, 'antonellagsna', 'GSNAB2023'),
	(80, 'gsnacelestealmeciga', 'GSNA2024'),
	(81, 'gsnacristhyestacio', 'GSNA2024'),
	(82, 'danielfernandogsna', 'GSNAB2023'),
	(83, 'elenagsna', 'GSNAB2023'),
	(84, 'emiliogsna', 'GSNAB2023'),
	(85, 'estebandanielgsna', 'GSNAB2023'),
	(86, 'gabyurrego', 'GSNAB2023'),
	(87, 'ivannaalejandragsna', 'GSNAB2023'),
	(88, 'jimenagsna', 'GSNAB2023'),
	(89, 'juanestebangsna', 'GSNAB2023'),
	(90, 'juanjosegsna', 'GSNAB2023'),
	(91, 'juancamachotellez', 'GSNAB2023'),
	(92, 'juansecendales', 'GSNAB2023'),
	(93, 'liuariadnagsna', 'GSNAB2023'),
	(94, 'manuelagsna', 'GSNAB2023'),
	(95, 'gsnatharacuellar', 'GSNA2024'),
	(96, 'dylanalejandrogsna', 'GSNAB2023'),
	(97, 'manuelaragsnab', 'GSNAB2023'),
	(98, 'mariaisabellagsna', 'GSNAB2023'),
	(99, 'mariajosegsna1', 'GSNAB2023'),
	(100, 'mariavictoriagsna', 'GSNAB2023'),
	(101, 'mariangelgsna', 'GSNAB2023'),
	(102, 'martingsna1', 'GSNAB2023'),
	(103, 'martingsna4', 'GSNAB2023'),
	(104, 'martinagsna', 'GSNAB2023'),
	(105, 'mathiasgsna', 'GSNAB2023'),
	(106, 'morenameliegsna', 'GSNAB2023'),
	(107, 'nicolasjeronimogsna', 'GSNAB2023'),
	(108, 'gsnanoachplazas', 'GSNA2024'),
	(109, 'noahsalomegsna', 'GSNAB2023'),
	(110, 'saravalentinagsna', 'GSNAB2023'),
	(111, 'sebastiangsna1', 'GSNAB2023'),
	(112, 'sebastiangsna3', 'GSNAB2023'),
	(113, 'sergioandresgsna', 'GSNAB2023'),
	(114, 'sofiagsna', 'GSNAB2023'),
	(115, 'thiagogsna', 'GSNAB2023'),
	(116, 'valentinagsna', 'GSNAB2023'),
	(117, 'valeriagsna', 'GSNAB2023'),
	(118, 'yelensaraygsna', 'GSNAB2023'),
	(119, 'zoegsna', 'GSNAB2023');

-- Volcando estructura para tabla gsnab_db.plataforma_delfos
CREATE TABLE IF NOT EXISTS `plataforma_delfos` (
  `id_plataforma_DELFOS` int(11) NOT NULL AUTO_INCREMENT,
  `user_DELFOS` varchar(45) NOT NULL,
  `password_DELFOS` varchar(45) NOT NULL,
  PRIMARY KEY (`id_plataforma_DELFOS`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla gsnab_db.plataforma_delfos: ~119 rows (aproximadamente)
INSERT INTO `plataforma_delfos` (`id_plataforma_DELFOS`, `user_DELFOS`, `password_DELFOS`) VALUES
	(1, '1016915789', 'GSNAB4'),
	(2, '1034790510', 'GSNAB4'),
	(3, '1027153387', 'GSNAB4'),
	(4, '1013152719', 'GSNAB4'),
	(5, '1015483028', 'GSNAB4'),
	(6, '1221465318', 'GSNAB4'),
	(7, '1034521663', 'GSNAB4'),
	(8, '1141361056', 'GSNAB4'),
	(9, '1077943067', 'GSNAB4'),
	(10, '1016914370', 'GSNAB4'),
	(11, '1014896847', 'GSNAB4'),
	(12, '1016914037', 'GSNAB4'),
	(13, '1025078704', 'GSNAB4'),
	(14, '1014896111', 'GSNAB4'),
	(15, '1022445261', 'GSNAB4'),
	(16, '1141360869', 'GSNAB4'),
	(17, '1034670371', 'GSNAB4'),
	(18, '1025154788', 'GSNAB4'),
	(19, '1016914862', 'GSNAB4'),
	(20, '1016914863', 'GSNAB4'),
	(21, '1019915880', 'GSNAB4'),
	(22, '1145932534', 'GSNAB4'),
	(23, '1013693374', 'GSNAB4'),
	(24, '1150189088', 'GSNAB4'),
	(25, '1011108980', 'GSNAB4'),
	(26, '1010249044', 'GSNAB4'),
	(27, '1220224662', 'GSNAB4'),
	(28, '1145932249', 'GSNAB4'),
	(29, '1027153388', 'GSNAB4'),
	(30, '1225560995', 'GSNAB4'),
	(31, '1011247512', 'GSNAB4'),
	(32, '1032945645', 'GSNAB4'),
	(33, '1022443608', 'GSNAB4'),
	(34, '1145931994', 'GSNAB4'),
	(35, '1016915651', 'GSNAB4'),
	(36, '1011246850', 'GSNAB4'),
	(37, '1014999161', 'GSNAB4'),
	(38, '1016965258', 'GSNAB4'),
	(39, '1014998894', 'GSNAB4'),
	(40, '1188224641', 'GSNAB4'),
	(41, '1032506309', 'GSNAB4'),
	(42, '1096706845', 'GSNAB4'),
	(43, '1016916729', 'GSNAB4'),
	(44, '1016916106', 'GSNAB4'),
	(45, '1025079106', 'GSNAB4'),
	(46, '1023981336', 'GSNAB4'),
	(47, '1014895394', 'GSNAB4'),
	(48, '1033811304', 'GSNAB4'),
	(49, '1188223071', 'GSNAB4'),
	(50, '1011250688', 'GSNAB4'),
	(51, '1220471938', 'GSNAB4'),
	(52, '1023031031', 'GSNAB4'),
	(53, '1141357908', 'GSNAB4'),
	(54, '1145931225', 'GSNAB4'),
	(55, '1013028276', 'GSNAB4'),
	(56, '1011246242', 'GSNAB4'),
	(57, '1013029345', 'GSNAB4'),
	(58, '1019845592', 'GSNAB4'),
	(59, '1013029794', 'GSNAB4'),
	(60, '1013027986', 'GSNAB4'),
	(61, '1145931713', 'GSNAB4'),
	(62, '1014893489', 'GSNAB4'),
	(63, '1014893198', 'GSNAB4'),
	(64, '1014893467', 'GSNAB4'),
	(65, '1027299968', 'GSNAB4'),
	(66, '1019913084', 'GSNAB4'),
	(67, '1220222500', 'GSNAB4'),
	(68, '1014998523', 'GSNAB4'),
	(69, '1013027546', 'GSNAB4'),
	(70, '1019913863', 'GSNAB4'),
	(71, '1019845424', 'GSNAB4'),
	(72, '1014998513', 'GSNAB4'),
	(73, '1025076786', 'GSNAB4'),
	(74, '1013150827', 'GSNAB4'),
	(75, '1222212629', 'GSNAB4'),
	(76, '1034788854', 'GSNAB4'),
	(77, '1025077240', 'GSNAB4'),
	(78, '1188223875', 'GSNAB4'),
	(79, '1027298693', 'GSNAB4'),
	(80, '1013027212', 'GSNAB4'),
	(81, '1025559902', 'GSNAB4'),
	(82, '1034789896', 'GSNAB4'),
	(83, '1141357892', 'GSNAB4'),
	(84, '1011242769', 'GSNAB4'),
	(85, '1013150591', 'GSNAB4'),
	(86, '1025329464', 'GSNAB4'),
	(87, '1034789599', 'GSNAB4'),
	(88, '1025329224', 'GSNAB4'),
	(89, '1014893797', 'GSNAB4'),
	(90, '1027538117', 'GSNAB4'),
	(91, '1033118798', 'GSNAB4'),
	(92, '1146139736', 'GSNAB4'),
	(93, '1145327736', 'GSNAB4'),
	(94, '1014893231', 'GSNAB4'),
	(95, '1025559311', 'GSNAB4'),
	(96, '1028726910', 'GSNAB4'),
	(97, '1056136176', 'GSNAB4'),
	(98, '1022442007', 'GSNAB4'),
	(99, '1034669925', 'GSNAB4'),
	(100, '1016836518', 'GSNAB4'),
	(101, '1188223481', 'GSNAB4'),
	(102, '1029153765', 'GSNAB4'),
	(103, '1016606817', 'GSNAB4'),
	(104, '1034789889', 'GSNAB4'),
	(105, '1222214290', 'GSNAB4'),
	(106, '1028899318', 'GSNAB4'),
	(107, '1010846694', 'GSNAB4'),
	(108, '1145930814', 'GSNAB4'),
	(109, '1031544417', 'GSNAB4'),
	(110, '1145931302', 'GSNAB4'),
	(111, '1150188678', 'GSNAB4'),
	(112, '1042271076', 'GSNAB4'),
	(113, '1233504722', 'GSNAB4'),
	(114, '1010968342', 'GSNAB4'),
	(115, '1145930562', 'GSNAB4'),
	(116, '1022430355', 'GSNAB4'),
	(117, '1013028502', 'GSNAB4'),
	(118, '1146136052', 'GSNAB4'),
	(119, '1188223308', 'GSNAB4');

-- Volcando estructura para tabla gsnab_db.plataforma_fathom_reads
CREATE TABLE IF NOT EXISTS `plataforma_fathom_reads` (
  `id_plataforma_FATHOM_READS` int(11) NOT NULL AUTO_INCREMENT,
  `user_FATHOM_READS` varchar(45) NOT NULL,
  `password_FATHOM_READS` varchar(45) NOT NULL,
  PRIMARY KEY (`id_plataforma_FATHOM_READS`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla gsnab_db.plataforma_fathom_reads: ~119 rows (aproximadamente)
INSERT INTO `plataforma_fathom_reads` (`id_plataforma_FATHOM_READS`, `user_FATHOM_READS`, `password_FATHOM_READS`) VALUES
	(1, 'VACIO', 'VACIO'),
	(2, 'VACIO', 'VACIO'),
	(3, 'VACIO', 'VACIO'),
	(4, 'VACIO', 'VACIO'),
	(5, 'VACIO', 'VACIO'),
	(6, 'VACIO', 'VACIO'),
	(7, 'VACIO', 'VACIO'),
	(8, 'VACIO', 'VACIO'),
	(9, 'VACIO', 'VACIO'),
	(10, 'VACIO', 'VACIO'),
	(11, 'VACIO', 'VACIO'),
	(12, 'VACIO', 'VACIO'),
	(13, 'VACIO', 'VACIO'),
	(14, 'VACIO', 'VACIO'),
	(15, 'VACIO', 'VACIO'),
	(16, 'VACIO', 'VACIO'),
	(17, 'VACIO', 'VACIO'),
	(18, 'VACIO', 'VACIO'),
	(19, 'VACIO', 'VACIO'),
	(20, 'VACIO', 'VACIO'),
	(21, 'VACIO', 'VACIO'),
	(22, 'VACIO', 'VACIO'),
	(23, 'VACIO', 'VACIO'),
	(24, 'VACIO', 'VACIO'),
	(25, 'VACIO', 'VACIO'),
	(26, 'VACIO', 'VACIO'),
	(27, 'VACIO', 'VACIO'),
	(28, 'VACIO', 'VACIO'),
	(29, 'VACIO', 'VACIO'),
	(30, 'VACIO', 'VACIO'),
	(31, 'VACIO', 'VACIO'),
	(32, 'VACIO', 'VACIO'),
	(33, 'VACIO', 'VACIO'),
	(34, 'VACIO', 'VACIO'),
	(35, 'VACIO', 'VACIO'),
	(36, 'VACIO', 'VACIO'),
	(37, 'VACIO', 'VACIO'),
	(38, 'VACIO', 'VACIO'),
	(39, 'VACIO', 'VACIO'),
	(40, 'VACIO', 'VACIO'),
	(41, 'VACIO', 'VACIO'),
	(42, 'VACIO', 'VACIO'),
	(43, 'VACIO', 'VACIO'),
	(44, 'VACIO', 'VACIO'),
	(45, 'VACIO', 'VACIO'),
	(46, 'VACIO', 'VACIO'),
	(47, 'VACIO', 'VACIO'),
	(48, 'VACIO', 'VACIO'),
	(49, 'VACIO', 'VACIO'),
	(50, 'VACIO', 'VACIO'),
	(51, 'VACIO', 'VACIO'),
	(52, '1023031031', 'GSNAB4'),
	(53, '1141357908', 'GSNAB4'),
	(54, '1145931225', 'GSNAB4'),
	(55, '1013028276', 'GSNAB4'),
	(56, '1011246242', 'GSNAB4'),
	(57, '1013029345', 'GSNAB4'),
	(58, '1019845592', 'GSNAB4'),
	(59, '1013029794', 'GSNAB4'),
	(60, '1013027986', 'GSNAB4'),
	(61, '1145931713', 'GSNAB4'),
	(62, '1014893489', 'GSNAB4'),
	(63, '1014893198', 'GSNAB4'),
	(64, '1014893467', 'GSNAB4'),
	(65, '1027299968', 'GSNAB4'),
	(66, '1019913084', 'GSNAB4'),
	(67, '1220222500', 'GSNAB4'),
	(68, '1014998523', 'GSNAB4'),
	(69, '1013027546', 'GSNAB4'),
	(70, '1019913863', 'GSNAB4'),
	(71, '1019845424', 'GSNAB4'),
	(72, '1014998513', 'GSNAB4'),
	(73, '1025076786', 'GSNAB4'),
	(74, '1013150827', 'GSNAB4'),
	(75, '1222212629', 'GSNAB4'),
	(76, '1034788854', 'GSNAB4'),
	(77, '1025077240', 'GSNAB4'),
	(78, '1188223875', 'GSNAB4'),
	(79, '1027298693', 'GSNAB4'),
	(80, '1013027212', 'GSNAB4'),
	(81, '1025559902', 'GSNAB4'),
	(82, '1034789896', 'GSNAB4'),
	(83, '1141357892', 'GSNAB4'),
	(84, '1011242769', 'GSNAB4'),
	(85, '1013150591', 'GSNAB4'),
	(86, '1025329464', 'GSNAB4'),
	(87, '1034789599', 'GSNAB4'),
	(88, '1025329224', 'GSNAB4'),
	(89, '1014893797', 'GSNAB4'),
	(90, '1027538117', 'GSNAB4'),
	(91, '1033118798', 'GSNAB4'),
	(92, '1146139736', 'GSNAB4'),
	(93, '1145327736', 'GSNAB4'),
	(94, '1014893231', 'GSNAB4'),
	(95, '1025559311', 'GSNAB4'),
	(96, '1028726910', 'GSNAB4'),
	(97, '1056136176', 'GSNAB4'),
	(98, '1022442007', 'GSNAB4'),
	(99, '1034669925', 'GSNAB4'),
	(100, '1016836518', 'GSNAB4'),
	(101, '1188223481', 'GSNAB4'),
	(102, '1029153765', 'GSNAB4'),
	(103, '1016606817', 'GSNAB4'),
	(104, '1034789889', 'GSNAB4'),
	(105, '1222214290', 'GSNAB4'),
	(106, '1028899318', 'GSNAB4'),
	(107, '1010846694', 'GSNAB4'),
	(108, '1145930814', 'GSNAB4'),
	(109, '1031544417', 'GSNAB4'),
	(110, '1145931302', 'GSNAB4'),
	(111, '1150188678', 'GSNAB4'),
	(112, '1042271076', 'GSNAB4'),
	(113, '1233504722', 'GSNAB4'),
	(114, '1010968342', 'GSNAB4'),
	(115, '1145930562', 'GSNAB4'),
	(116, '1022430355', 'GSNAB4'),
	(117, '1013028502', 'GSNAB4'),
	(118, '1146136052', 'GSNAB4'),
	(119, '1188223308', 'GSNAB4');

-- Volcando estructura para tabla gsnab_db.plataforma_milton_ochoa
CREATE TABLE IF NOT EXISTS `plataforma_milton_ochoa` (
  `id_plataforma_MILTON_OCHOA` int(11) NOT NULL AUTO_INCREMENT,
  `user_MILTON_OCHOA` varchar(45) NOT NULL,
  `password_MILTON_OCHOA` varchar(45) NOT NULL,
  PRIMARY KEY (`id_plataforma_MILTON_OCHOA`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla gsnab_db.plataforma_milton_ochoa: ~119 rows (aproximadamente)
INSERT INTO `plataforma_milton_ochoa` (`id_plataforma_MILTON_OCHOA`, `user_MILTON_OCHOA`, `password_MILTON_OCHOA`) VALUES
	(1, '165701112', '1016915789'),
	(2, '165701120', '1034790510'),
	(3, '165701123', '1027153387'),
	(4, '165701105', '1013152719'),
	(5, '165701115', '1015483028'),
	(6, '165701118', '1221465318'),
	(7, '165701109', '1034521663'),
	(8, '165701103', '1141361056'),
	(9, '165701113', '1077943067'),
	(10, '165701107', '1016914370'),
	(11, '165701117', '1014896847'),
	(12, '165701108', '1016914037'),
	(13, '165701110', '1025078704'),
	(14, '165701114', '1014896111'),
	(15, '165701122', '1022445261'),
	(16, '165701126', '1141360869'),
	(17, '165701119', '1034670371'),
	(18, '165701116', '1025154788'),
	(19, '165701201', '1016914862'),
	(20, '165701102', '1016914863'),
	(21, '165701125', '1019915880'),
	(22, '165701121', '1145932534'),
	(23, '165701101', '1013693374'),
	(24, '165701111', '1150189088'),
	(25, '165701124', '1011108980'),
	(26, '165701106', '1010249044'),
	(27, '165701104', '1220224662'),
	(28, '165701202', '1145932249'),
	(29, '165701223', '1027153388'),
	(30, '165701203', '1225560995'),
	(31, '165701206', '1011247512'),
	(32, '165701213', '1032945645'),
	(33, '165701215', '1022443608'),
	(34, '165701217', '1145931994'),
	(35, '165701220', '1016915651'),
	(36, '165701207', '1011246850'),
	(37, '165701222', '1014999161'),
	(38, '165701219', '1016965258'),
	(39, '165701221', '1014998894'),
	(40, '165701211', '1188224641'),
	(41, '165701224', '1032506309'),
	(42, '165701208', '1096706845'),
	(43, '165701204', '1016916729'),
	(44, '165701216', '1016916106'),
	(45, '165701214', '1025079106'),
	(46, '165701225', '1023981336'),
	(47, '165701212', '1014895394'),
	(48, '165701209', '1033811304'),
	(49, '165701210', '1188223071'),
	(50, '165701218', '1011250688'),
	(51, '165701205', '1220471938'),
	(52, '165702108', '1023031031'),
	(53, '165702117', '1141357908'),
	(54, '165702111', '1145931225'),
	(55, '165702116', '1013028276'),
	(56, '165702107', '1011246242'),
	(57, '165702106', '1013029345'),
	(58, '165702101', '1019845592'),
	(59, '165702115', '1013029794'),
	(60, '165702122', '1013027986'),
	(61, '165702103', '1145931713'),
	(62, '165702102', '1014893489'),
	(63, '165702114', '1014893198'),
	(64, '165702119', '1014893467'),
	(65, '165702113', '1027299968'),
	(66, '165702105', '1019913084'),
	(67, '165702120', '1220222500'),
	(68, '165702121', '1014998523'),
	(69, '165702109', '1013027546'),
	(70, '165702112', '1019913863'),
	(71, '165702123', '1019845424'),
	(72, '165702110', '1014998513'),
	(73, '165702104', '1025076786'),
	(74, '165702118', '1013150827'),
	(75, '165702219', '1222212629'),
	(76, '165702201', '1034788854'),
	(77, '165702216', '1025077240'),
	(78, '165702221', '1188223875'),
	(79, '165702207', '1027298693'),
	(80, '165702202', '1013027212'),
	(81, '165702210', '1025559902'),
	(82, '165702218', '1034789896'),
	(83, '165702217', '1141357892'),
	(84, '165702215', '1011242769'),
	(85, '165702212', '1013150591'),
	(86, '165702220', '1025329464'),
	(87, '165702214', '1034789599'),
	(88, '165702211', '1025329224'),
	(89, '165702213', '1014893797'),
	(90, '165702204', '1027538117'),
	(91, '165702205', '1033118798'),
	(92, '165702206', '1146139736'),
	(93, '165702203', '1145327736'),
	(94, '165702208', '1014893231'),
	(95, '165702209', '1025559311'),
	(96, '165702312', '1028726910'),
	(97, '165702322', '1056136176'),
	(98, '165702307', '1022442007'),
	(99, '165702324', '1034669925'),
	(100, '165702305', '1016836518'),
	(101, '165702303', '1188223481'),
	(102, '165702309', '1029153765'),
	(103, '165702319', '1016606817'),
	(104, '165702323', '1034789889'),
	(105, '165702316', '1222214290'),
	(106, '165702306', '1028899318'),
	(107, '165702317', '1010846694'),
	(108, '165702320', '1145930814'),
	(109, '165702301', '1031544417'),
	(110, '165702302', '1145931302'),
	(111, '165702314', '1150188678'),
	(112, '165702318', '1042271076'),
	(113, '165702311', '1233504722'),
	(114, '165702310', '1010968342'),
	(115, '165702313', '1145930562'),
	(116, '165702315', '1022430355'),
	(117, '165702321', '1013028502'),
	(118, '165702308', '1146136052'),
	(119, '165702304', '1188223308');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;