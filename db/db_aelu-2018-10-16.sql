-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: db_aelu
-- ------------------------------------------------------
-- Server version	5.7.23

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
-- Table structure for table `tb_actividad`
--

DROP TABLE IF EXISTS `tb_actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_actividad` (
  `id` int(11) NOT NULL,
  `idsector` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idsector` (`idsector`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_actividad`
--

LOCK TABLES `tb_actividad` WRITE;
/*!40000 ALTER TABLE `tb_actividad` DISABLE KEYS */;
INSERT INTO `tb_actividad` VALUES (1,1,'Vendedor'),(2,1,'Cajero'),(3,1,'Analista'),(4,2,'Ingeniero'),(5,2,'Fumigador'),(6,3,'DBA'),(7,3,'Project Manager'),(8,4,'Obrero'),(9,5,'Ministro'),(10,5,'Empleado Publico');
/*!40000 ALTER TABLE `tb_actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_adjuntos`
--

DROP TABLE IF EXISTS `tb_adjuntos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_adjuntos` (
  `id_adjunto` int(11) NOT NULL AUTO_INCREMENT,
  `id_postulante` int(11) DEFAULT NULL,
  `documento_adjunto` varchar(255) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha_adjunto` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_adjunto`),
  KEY `id_postulante` (`id_postulante`,`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_adjuntos`
--

LOCK TABLES `tb_adjuntos` WRITE;
/*!40000 ALTER TABLE `tb_adjuntos` DISABLE KEYS */;
INSERT INTO `tb_adjuntos` VALUES (5,240,'/home/ec2-user/aelucoopbackend/admin/backend_script/uploads/archivo.txt',2,'2018-09-24 03:46:56');
/*!40000 ALTER TABLE `tb_adjuntos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_banco`
--

DROP TABLE IF EXISTS `tb_banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_banco` (
  `id_banco` int(11) NOT NULL,
  `banco` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_banco`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_banco`
--

LOCK TABLES `tb_banco` WRITE;
/*!40000 ALTER TABLE `tb_banco` DISABLE KEYS */;
INSERT INTO `tb_banco` VALUES (1,'BCP'),(2,'BBVA'),(3,'Scotiabank'),(4,'Interbank'),(5,'Pichincha'),(6,'BanBif'),(7,'Comercio'),(8,'Citibank'),(9,'MiBanco'),(10,'GNB'),(11,'Falabella'),(12,'Santander'),(13,'Azteca'),(14,'Cencosud'),(15,'Ripley');
/*!40000 ALTER TABLE `tb_banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_conyuge`
--

DROP TABLE IF EXISTS `tb_conyuge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_conyuge` (
  `id_conyuge` int(11) NOT NULL AUTO_INCREMENT,
  `id_postulante` int(11) DEFAULT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `apellido_paterno` varchar(50) DEFAULT NULL,
  `apellido_materno` varchar(50) DEFAULT NULL,
  `dni` varchar(20) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `ocupacion` varchar(50) DEFAULT NULL,
  `profesion` varchar(50) DEFAULT NULL,
  `id_sector_economico` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_conyuge`),
  KEY `id_postulante` (`id_postulante`,`id_sector_economico`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_conyuge`
--

LOCK TABLES `tb_conyuge` WRITE;
/*!40000 ALTER TABLE `tb_conyuge` DISABLE KEYS */;
INSERT INTO `tb_conyuge` VALUES (10,242,'Hermilda','Castro','Virreyna','43444555','1978-06-20','Jefe de Tienda','Contadora',1),(12,244,'Hermilda','Castro','Virreyna','54544444','1978-06-20','Jefe de Tienda','Contadora',1),(24,240,'Marco','Polo','Garcia','33333333','2000-02-03','Trabajador','Electricista',2),(35,251,'Hermilda','Castro','Virreyna','54544444','1978-06-20','Jefe de Tienda','Contadora',1),(36,257,'Hermilda','Castro','Virreyna','44784345','1978-06-20','Jefe de Tienda','Contadora',1),(37,234,'Maria Paz','Contreras','Benitez','89282378','1980-01-01','Ama de Casa','Ama de Casa',4);
/*!40000 ALTER TABLE `tb_conyuge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_datos_personales`
--

DROP TABLE IF EXISTS `tb_datos_personales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_datos_personales` (
  `id_postulante` int(11) NOT NULL AUTO_INCREMENT,
  `dni` varchar(20) DEFAULT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `apellido_paterno` varchar(40) DEFAULT NULL,
  `apellido_materno` varchar(40) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `sexo` varchar(15) DEFAULT NULL,
  `estado_civil` varchar(15) DEFAULT NULL,
  `correo_electronico` varchar(40) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `responsable` varchar(30) DEFAULT NULL,
  `intencion` varchar(15) DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL,
  `hash` blob,
  PRIMARY KEY (`id_postulante`),
  UNIQUE KEY `dni_postulante` (`dni`),
  KEY `responsable` (`responsable`,`intencion`,`estado`),
  KEY `dni` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_datos_personales`
--

LOCK TABLES `tb_datos_personales` WRITE;
/*!40000 ALTER TABLE `tb_datos_personales` DISABLE KEYS */;
INSERT INTO `tb_datos_personales` VALUES (234,'43444334','Juan Manuel','Campos','Tabarez','1983-10-03','Masculino','Casado','omaeda@hotmail.com','987565123','2018-09-11','jtaborda',NULL,'En Evaluacion',_binary 'USED'),(240,'42555222','JOSE ALBERTO','TABORDA','GARCIA','1970-05-20','Masculino','Casado','jtaborda@gmail.com','916445895','2018-09-14','mhimura',NULL,'En Evaluacion',_binary 'USED'),(242,'32333434','JOSE ALBERTO','TABORDA','GARCIA','1970-05-20','Masculino','Casado','jtaborda@gmail.com','123123123','2018-09-14','jvillar',NULL,'En Evaluacion',_binary 'USED'),(244,'49433294','JOSE ALBERTO','TABORDA','GARCIA','1970-05-20','Masculino','Casado','jtaborda@gmail.com','123123123','2018-09-14','jkajimi',NULL,'En Evaluacion',_binary 'USED'),(247,'44784321','John J.','Doe','D.','1979-05-04','Masculino','Casado','jtaborda@gmail.com','916445895','2018-10-02','jtaborda',NULL,'En Evaluacion',_binary 'USED'),(248,'44024250','JOSE ALBERTO','TABORDA','GARCIA','1970-05-20','Masculino','Casado','jtaborda@gmail.com','123123123','2018-10-02','jtaborda',NULL,'En Evaluacion',_binary 'USED'),(249,'44991085','John J.','Doe','D.','1979-05-04','Masculino','Casado','jtaborda@gmail.com','916445895','2018-10-02','jtaborda',NULL,'En Evaluacion',_binary 'USED'),(251,'44784346','JOSE ALBERTO','TABORDA','GARCIA','1970-05-20','Masculino','Casado','jtaborda@gmail.com','123123123','2018-10-02','jtaborda',NULL,'En Evaluacion',_binary 'USED'),(257,'44991086','JOSE ALBERTO','TABORDA','GARCIA','1970-05-20','Masculino','Casado','jtaborda@gmail.com','123123123','2018-10-02','jtaborda',NULL,'En Evaluacion',_binary 'USED'),(258,'11223344','John J.','Doe','D.','1979-05-04','Masculino','Casado','victor.martinez@gmail.com','123456789','2018-10-12','jtaborda',NULL,'En Evaluacion',_binary 'USED'),(259,'55667788',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-10-02','jtaborda',NULL,'En Evaluacion',_binary '52c06ad810b6652b'),(260,'55667799',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary 'c7c63a90b6411da1'),(261,'55668800',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '8aa3ae224d2b135d'),(262,'55668811',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '42e26c30fb37fb50'),(263,'55668822',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary 'ba3652e7e3975c8e'),(264,'55668833',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '88b1ade3eca07df7'),(265,'55668844',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '5d8b12465ed4edc9');
/*!40000 ALTER TABLE `tb_datos_personales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_departamento`
--

DROP TABLE IF EXISTS `tb_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_departamento` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_departamento`
--

LOCK TABLES `tb_departamento` WRITE;
/*!40000 ALTER TABLE `tb_departamento` DISABLE KEYS */;
INSERT INTO `tb_departamento` VALUES (1,'Amazonas'),(2,'Ancash'),(3,'Apurimac'),(4,'Arequipa'),(5,'Ayacucho'),(6,'Cajamarca'),(7,'Callao'),(8,'Cusco'),(9,'Huancavelica'),(10,'Huanuco'),(11,'Ica'),(12,'Junin'),(13,'La Libertad'),(14,'Lambayeque'),(15,'Lima'),(16,'Loreto'),(17,'Madre de Dios'),(18,'Moquegua'),(19,'Pasco'),(20,'Piura'),(21,'Puno'),(22,'San Martin'),(23,'Tacna'),(24,'Tumbes'),(25,'Ucayali');
/*!40000 ALTER TABLE `tb_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_dependiente`
--

DROP TABLE IF EXISTS `tb_dependiente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_dependiente` (
  `id_dependiente` int(11) NOT NULL AUTO_INCREMENT,
  `id_postulante` int(11) DEFAULT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `apellido_paterno` varchar(50) DEFAULT NULL,
  `apellido_materno` varchar(50) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `parentesco` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_dependiente`),
  KEY `id_postulante` (`id_postulante`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_dependiente`
--

LOCK TABLES `tb_dependiente` WRITE;
/*!40000 ALTER TABLE `tb_dependiente` DISABLE KEYS */;
INSERT INTO `tb_dependiente` VALUES (9,234,'Carmen Raquel','Campos','Gutierrez','2003-11-12','hija'),(23,244,'Julio Cesar','Garcia','Alvarez','1998-07-25','hijo'),(24,244,'Macarena Antonia','Garcia','Alvarez','2001-08-11','hijo'),(44,240,'Marco','Polo','Garcia',NULL,'hijo'),(45,240,'Marco','Polo','Garcia',NULL,'hijo'),(52,251,'Julio Cesar','Garcia','Alvarez','1998-07-25','hijo'),(53,251,'Macarena Antonia','Garcia','Alvarez','2001-08-11','hijo'),(54,248,'Julio Cesar','Garcia','Alvarez','1998-07-25','hijo'),(55,248,'Macarena Antonia','Garcia','Alvarez','2001-08-11','hijo'),(56,257,'Julio Cesar','Garcia','Alvarez','1998-07-25','hijo'),(57,257,'Macarena Antonia','Garcia','Alvarez','2001-08-11','hijo'),(58,249,NULL,'Taborda','Bermudez','2012-01-14','hijo'),(59,258,'enrique','enrique','loquesea','2018-10-03','hijo');
/*!40000 ALTER TABLE `tb_dependiente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_distrito`
--

DROP TABLE IF EXISTS `tb_distrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_distrito` (
  `id` int(11) NOT NULL,
  `idprov` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idprov` (`idprov`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_distrito`
--

LOCK TABLES `tb_distrito` WRITE;
/*!40000 ALTER TABLE `tb_distrito` DISABLE KEYS */;
INSERT INTO `tb_distrito` VALUES (1,1,'Aramango'),(2,1,'Bagua'),(3,1,'Copallin'),(4,1,'El Parco'),(5,1,'Imaza'),(6,1,'La Peca'),(7,2,'Chisquilla'),(8,2,'Churuja'),(9,2,'Corosha'),(10,2,'Cuispes'),(11,2,'Florida'),(12,2,'Jazan'),(13,2,'Jumbilla'),(14,2,'Recta'),(15,2,'San Carlos'),(16,2,'Shipasbamba'),(17,2,'Valera'),(18,2,'Yambrasbamba'),(19,3,'Asuncion'),(20,3,'Balsas'),(21,3,'Chachapoyas'),(22,3,'Cheto'),(23,3,'Chiliquin'),(24,3,'Chuquibamba'),(25,3,'Granada'),(26,3,'Huancas'),(27,3,'La Jalca'),(28,3,'Leimebamba'),(29,3,'Levanto'),(30,3,'Magdalena'),(31,3,'Mariscal Castilla'),(32,3,'Molinopampa'),(33,3,'Montevideo'),(34,3,'Olleros'),(35,3,'Quinjalca'),(36,3,'San Francisco de Daguas'),(37,3,'San Isidro de Maino'),(38,3,'Soloco'),(39,3,'Sonche'),(40,4,'El Cenepa'),(41,4,'Nieva'),(42,4,'Rio Santiago'),(43,5,'Camporredondo'),(44,5,'Cocabamba'),(45,5,'Colcamar'),(46,5,'Conila'),(47,5,'Inguilpata'),(48,5,'Lamud'),(49,5,'Longuita'),(50,5,'Lonya Chico'),(51,5,'Luya'),(52,5,'Luya Viejo'),(53,5,'Maria'),(54,5,'Ocalli'),(55,5,'Ocumal'),(56,5,'Pisuquia'),(57,5,'Providencia'),(58,5,'San Cristobal'),(59,5,'San Francisco del Yeso'),(60,5,'San Jeronimo'),(61,5,'San Juan de Lopecancha'),(62,5,'Santa Catalina'),(63,5,'Santo Tomas'),(64,5,'Tingo'),(65,5,'Trita'),(66,6,'Chirimoto'),(67,6,'Cochamal'),(68,6,'Huambo'),(69,6,'Limabamba'),(70,6,'Longar'),(71,6,'Mariscal Benavides'),(72,6,'Milpuc'),(73,6,'Omia'),(74,6,'San Nicolas'),(75,6,'Santa Rosa'),(76,6,'Totora'),(77,6,'Vista Alegre'),(78,7,'Bagua Grande'),(79,7,'Cajaruro'),(80,7,'Cumba'),(81,7,'El Milagro'),(82,7,'Jamalca'),(83,7,'Lonya Grande'),(84,7,'Yamon'),(85,8,'Aija'),(86,8,'Coris'),(87,8,'Huacllan'),(88,8,'La Merced'),(89,8,'Succha'),(90,9,'Aczo'),(91,9,'Chaccho'),(92,9,'Chingas'),(93,9,'Llamellin'),(94,9,'Mirgas'),(95,9,'San Juan de Rontoy'),(96,10,'Acochaca'),(97,10,'Chacas'),(98,11,'Abelardo Pardo Lezameta'),(99,11,'Antonio Raymondi'),(100,11,'Aquia'),(101,11,'Cajacay'),(102,11,'Canis'),(103,11,'Chiquian'),(104,11,'Colquioc'),(105,11,'Huallanca'),(106,11,'Huasta'),(107,11,'Huayllacayan'),(108,11,'La Primavera'),(109,11,'Mangas'),(110,11,'Pacllon'),(111,11,'San Miguel de Corpanqui'),(112,11,'Ticllos'),(113,12,'Acopampa'),(114,12,'Amashca'),(115,12,'Anta'),(116,12,'Ataquero'),(117,12,'Carhuaz'),(118,12,'Marcara'),(119,12,'Pariahuanca'),(120,12,'San Miguel de Aco'),(121,12,'Shilla'),(122,12,'Tinco'),(123,12,'Yungar'),(124,13,'San Luis'),(125,13,'San Nicolas'),(126,13,'Yauya'),(127,14,'Buena Vista Alta'),(128,14,'Casma'),(129,14,'Comandante Noel'),(130,14,'Yautan'),(131,15,'Aco'),(132,15,'Bambas'),(133,15,'Corongo'),(134,15,'Cusca'),(135,15,'La Pampa'),(136,15,'Yanac'),(137,15,'Yupan'),(138,16,'Cochabamba'),(139,16,'Colcabamba'),(140,16,'Huanchay'),(141,16,'Huaraz'),(142,16,'Independencia'),(143,16,'Jangas'),(144,16,'La Libertad'),(145,16,'Olleros'),(146,16,'Pampas'),(147,16,'Pariacoto'),(148,16,'Pira'),(149,16,'Tarica'),(150,17,'Anra'),(151,17,'Cajay'),(152,17,'Chavin de Huantar'),(153,17,'Huacachi'),(154,17,'Huacchis'),(155,17,'Huachis'),(156,17,'Huantar'),(157,17,'Huari'),(158,17,'Masin'),(159,17,'Paucas'),(160,17,'Ponto'),(161,17,'Rahuapampa'),(162,17,'Rapayan'),(163,17,'San Marcos'),(164,17,'San Pedro de Chana'),(165,17,'Uco'),(166,18,'Cochapeti'),(167,18,'Culebras'),(168,18,'Huarmey'),(169,18,'Huayan'),(170,18,'Malvas'),(171,19,'Caraz'),(172,19,'Huallanca'),(173,19,'Huata'),(174,19,'Huaylas'),(175,19,'Mato'),(176,19,'Pamparomas'),(177,19,'Pueblo Libre'),(178,19,'Santa Cruz'),(179,19,'Santo Toribio'),(180,19,'Yuracmarca'),(181,20,'Casca'),(182,20,'Eleazar Guzman Barron'),(183,20,'Fidel Olivas Escudero'),(184,20,'Llama'),(185,20,'Llumpa'),(186,20,'Lucma'),(187,20,'Musga'),(188,20,'Piscobamba'),(189,21,'Acas'),(190,21,'Cajamarquilla'),(191,21,'Carhuapampa'),(192,21,'Cochas'),(193,21,'Congas'),(194,21,'Llipa'),(195,21,'Ocros'),(196,21,'San Cristobal de Rajan'),(197,21,'San Pedro'),(198,21,'Santiago de Chilcas'),(199,22,'Bolognesi'),(200,22,'Cabana'),(201,22,'Conchucos'),(202,22,'Huacaschuque'),(203,22,'Huandoval'),(204,22,'Lacabamba'),(205,22,'Llapo'),(206,22,'Pallasca'),(207,22,'Pampas'),(208,22,'Santa Rosa'),(209,22,'Tauca'),(210,23,'Huayllan'),(211,23,'Parobamba'),(212,23,'Pomabamba'),(213,23,'Quinuabamba'),(214,24,'Catac'),(215,24,'Cotaparaco'),(216,24,'Huayllapampa'),(217,24,'Llacllin'),(218,24,'Marca'),(219,24,'Pampas Chico'),(220,24,'Pararin'),(221,24,'Recuay'),(222,24,'Tapacocha'),(223,24,'Ticapampa'),(224,25,'Caceres del Peru'),(225,25,'Chimbote'),(226,25,'Coishco'),(227,25,'Macate'),(228,25,'Moro'),(229,25,'Nepeña'),(230,25,'Nuevo Chimbote'),(231,25,'Samanco'),(232,25,'Santa'),(233,26,'Acobamba'),(234,26,'Alfonso Ugarte'),(235,26,'Cashapampa'),(236,26,'Chingalpo'),(237,26,'Huayllabamba'),(238,26,'Quiches'),(239,26,'Ragash'),(240,26,'San Juan'),(241,26,'Sicsibamba'),(242,26,'Sihuas'),(243,27,'Cascapara'),(244,27,'Mancos'),(245,27,'Matacoto'),(246,27,'Quillo'),(247,27,'Ranrahirca'),(248,27,'Shupluy'),(249,27,'Yanama'),(250,27,'Yungay'),(251,28,'Abancay'),(252,28,'Chacoche'),(253,28,'Circa'),(254,28,'Curahuasi'),(255,28,'Huanipaca'),(256,28,'Lambrama'),(257,28,'Pichirhua'),(258,28,'San Pedro de Cachora'),(259,28,'Tamburco'),(260,29,'Andahuaylas'),(261,29,'Andarapa'),(262,29,'Chiara'),(263,29,'Huancarama'),(264,29,'Huancaray'),(265,29,'Huayana'),(266,29,'Kaquiabamba'),(267,29,'Kishuara'),(268,29,'Pacobamba'),(269,29,'Pacucha'),(270,29,'Pampachiri'),(271,29,'Pomacocha'),(272,29,'San Antonio de Cachi'),(273,29,'San Jeronimo'),(274,29,'San Miguel de Chaccrampa'),(275,29,'Santa Maria de Chicmo'),(276,29,'Talavera'),(277,29,'Tumay Huaraca'),(278,29,'Turpo'),(279,30,'Antabamba'),(280,30,'El Oro'),(281,30,'Huaquirca'),(282,30,'Juan Espinoza Medrano'),(283,30,'Oropesa'),(284,30,'Pachaconas'),(285,30,'Sabaino'),(286,31,'Capaya'),(287,31,'Caraybamba'),(288,31,'Chalhuanca'),(289,31,'Chapimarca'),(290,31,'Colcabamba'),(291,31,'Cotaruse'),(292,31,'Huayllo'),(293,31,'Justo Apu Sahuaraura'),(294,31,'Lucre'),(295,31,'Pocohuanca'),(296,31,'San Juan de Chacña'),(297,31,'Sañayca'),(298,31,'Soraya'),(299,31,'Tapairihua'),(300,31,'Tintay'),(301,31,'Toraya'),(302,31,'Yanaca'),(303,32,'Anco_Huallo'),(304,32,'Chincheros'),(305,32,'Cocharcas'),(306,32,'Huaccana'),(307,32,'Ocobamba'),(308,32,'Ongoy'),(309,32,'Ranracancha'),(310,32,'Uranmarca'),(311,33,'Challhuahuacho'),(312,33,'Cotabambas'),(313,33,'Coyllurqui'),(314,33,'Haquira'),(315,33,'Mara'),(316,33,'Tambobamba'),(317,34,'Chuquibambilla'),(318,34,'Curasco'),(319,34,'Curpahuasi'),(320,34,'Gamarra'),(321,34,'Huayllati'),(322,34,'Mamara'),(323,34,'Micaela Bastidas'),(324,34,'Pataypampa'),(325,34,'Progreso'),(326,34,'San Antonio'),(327,34,'Santa Rosa'),(328,34,'Turpay'),(329,34,'Vilcabamba'),(330,34,'Virundo'),(331,35,'Alto Selva Alegre'),(332,35,'Arequipa'),(333,35,'Cayma'),(334,35,'Cerro Colorado'),(335,35,'Characato'),(336,35,'Chiguata'),(337,35,'Jacobo Hunter'),(338,35,'Jose Luis Bustamante y Rivero'),(339,35,'La Joya'),(340,35,'Mariano Melgar'),(341,35,'Miraflores'),(342,35,'Mollebaya'),(343,35,'Paucarpata'),(344,35,'Pocsi'),(345,35,'Polobaya'),(346,35,'Quequeña'),(347,35,'Sabandia'),(348,35,'Sachaca'),(349,35,'San Juan de Siguas'),(350,35,'San Juan de Tarucani'),(351,35,'Santa Isabel de Siguas'),(352,35,'Santa Rita de Siguas'),(353,35,'Socabaya'),(354,35,'Tiabaya'),(355,35,'Uchumayo'),(356,35,'Vitor'),(357,35,'Yanahuara'),(358,35,'Yarabamba'),(359,35,'Yura'),(360,36,'Camana'),(361,36,'Jose Maria Quimper'),(362,36,'Mariano Nicolas Valcarcel'),(363,36,'Mariscal Caceres'),(364,36,'Nicolas de Pierola'),(365,36,'Ocoña'),(366,36,'Quilca'),(367,36,'Samuel Pastor'),(368,37,'Acari'),(369,37,'Atico'),(370,37,'Atiquipa'),(371,37,'Bella Union'),(372,37,'Cahuacho'),(373,37,'Caraveli'),(374,37,'Chala'),(375,37,'Chaparra'),(376,37,'Huanuhuanu'),(377,37,'Jaqui'),(378,37,'Lomas'),(379,37,'Quicacha'),(380,37,'Yauca'),(381,38,'Andagua'),(382,38,'Aplao'),(383,38,'Ayo'),(384,38,'Chachas'),(385,38,'Chilcaymarca'),(386,38,'Choco'),(387,38,'Huancarqui'),(388,38,'Machaguay'),(389,38,'Orcopampa'),(390,38,'Pampacolca'),(391,38,'Tipan'),(392,38,'Uñon'),(393,38,'Uraca'),(394,38,'Viraco'),(395,39,'Achoma'),(396,39,'Cabanaconde'),(397,39,'Callalli'),(398,39,'Caylloma'),(399,39,'Chivay'),(400,39,'Coporaque'),(401,39,'Huambo'),(402,39,'Huanca'),(403,39,'Ichupampa'),(404,39,'Lari'),(405,39,'Lluta'),(406,39,'Maca'),(407,39,'Madrigal'),(408,39,'Majes'),(409,39,'San Antonio de Chuca'),(410,39,'Sibayo'),(411,39,'Tapay'),(412,39,'Tisco'),(413,39,'Tuti'),(414,39,'Yanque'),(415,40,'Andaray'),(416,40,'Cayarani'),(417,40,'Chichas'),(418,40,'Chuquibamba'),(419,40,'Iray'),(420,40,'Rio Grande'),(421,40,'Salamanca'),(422,40,'Yanaquihua'),(423,41,'Cocachacra'),(424,41,'Dean Valdivia'),(425,41,'Islay'),(426,41,'Mejia'),(427,41,'Mollendo'),(428,41,'Punta de Bombon'),(429,42,'Alca'),(430,42,'Charcana'),(431,42,'Cotahuasi'),(432,42,'Huaynacotas'),(433,42,'Pampamarca'),(434,42,'Puyca'),(435,42,'Quechualla'),(436,42,'Sayla'),(437,42,'Tauria'),(438,42,'Tomepampa'),(439,42,'Toro'),(440,43,'Cangallo'),(441,43,'Chuschi'),(442,43,'Los Morochucos'),(443,43,'Maria Parado de Bellido'),(444,43,'Paras'),(445,43,'Totos'),(446,44,'Acocro'),(447,44,'Acos Vinchos'),(448,44,'Ayacucho'),(449,44,'Carmen Alto'),(450,44,'Chiara'),(451,44,'Jesus Nazareno'),(452,44,'Ocros'),(453,44,'Pacaycasa'),(454,44,'Quinua'),(455,44,'San Jose de Ticllas'),(456,44,'San Juan Bautista'),(457,44,'Santiago de Pischa'),(458,44,'Socos'),(459,44,'Tambillo'),(460,44,'Vinchos'),(461,45,'Carapo'),(462,45,'Sacsamarca'),(463,45,'Sancos'),(464,45,'Santiago de Lucanamarca'),(465,46,'Ayahuanco'),(466,46,'Huamanguilla'),(467,46,'Huanta'),(468,46,'Iguain'),(469,46,'Llochegua'),(470,46,'Luricocha'),(471,46,'Santillana'),(472,46,'Sivia'),(473,47,'Anco'),(474,47,'Ayna'),(475,47,'Chilcas'),(476,47,'Chungui'),(477,47,'Luis Carranza'),(478,47,'San Miguel'),(479,47,'Santa Rosa'),(480,47,'Tambo'),(481,48,'Aucara'),(482,48,'Cabana'),(483,48,'Carmen Salcedo'),(484,48,'Chaviña'),(485,48,'Chipao'),(486,48,'Huac-Huas'),(487,48,'Laramate'),(488,48,'Leoncio Prado'),(489,48,'Llauta'),(490,48,'Lucanas'),(491,48,'Ocaña'),(492,48,'Otoca'),(493,48,'Puquio'),(494,48,'Saisa'),(495,48,'San Cristobal'),(496,48,'San Juan'),(497,48,'San Pedro'),(498,48,'San Pedro de Palco'),(499,48,'Sancos'),(500,48,'Santa Ana de Huaycahuacho'),(501,48,'Santa Lucia'),(502,49,'Chumpi'),(503,49,'Coracora'),(504,49,'Coronel Castañeda'),(505,49,'Pacapausa'),(506,49,'Pullo'),(507,49,'Puyusca'),(508,49,'San Francisco de Ravacayco'),(509,49,'Upahuacho'),(510,50,'Colta'),(511,50,'Corculla'),(512,50,'Lampa'),(513,50,'Marcabamba'),(514,50,'Oyolo'),(515,50,'Pararca'),(516,50,'Pausa'),(517,50,'San Javier de Alpabamba'),(518,50,'San Jose de Ushua'),(519,50,'Sara Sara'),(520,51,'Belen'),(521,51,'Chalcos'),(522,51,'Chilcayoc'),(523,51,'Huacaña'),(524,51,'Morcolla'),(525,51,'Paico'),(526,51,'Querobamba'),(527,51,'San Pedro de Larcay'),(528,51,'San Salvador de Quije'),(529,51,'Santiago de Paucaray'),(530,51,'Soras'),(531,52,'Alcamenca'),(532,52,'Apongo'),(533,52,'Asquipata'),(534,52,'Canaria'),(535,52,'Cayara'),(536,52,'Colca'),(537,52,'Huamanquiquia'),(538,52,'Huancapi'),(539,52,'Huancaraylla'),(540,52,'Huaya'),(541,52,'Sarhua'),(542,52,'Vilcanchos'),(543,53,'Accomarca'),(544,53,'Carhuanca'),(545,53,'Concepcion'),(546,53,'Huambalpa'),(547,53,'Independencia'),(548,53,'Saurama'),(549,53,'Vilcas Huaman'),(550,53,'Vischongo'),(551,54,'Cachachi'),(552,54,'Cajabamba'),(553,54,'Condebamba'),(554,54,'Sitacocha'),(555,55,'Asuncion'),(556,55,'Cajamarca'),(557,55,'Chetilla'),(558,55,'Cospan'),(559,55,'Encañada'),(560,55,'Jesus'),(561,55,'Llacanora'),(562,55,'Los Baños del Inca'),(563,55,'Magdalena'),(564,55,'Matara'),(565,55,'Namora'),(566,55,'San Juan'),(567,56,'Celendin'),(568,56,'Chumuch'),(569,56,'Cortegana'),(570,56,'Huasmin'),(571,56,'Jorge Chavez'),(572,56,'Jose Galvez'),(573,56,'La Libertad de Pallan'),(574,56,'Miguel Iglesias'),(575,56,'Oxamarca'),(576,56,'Sorochuco'),(577,56,'Sucre'),(578,56,'Utco'),(579,57,'Anguia'),(580,57,'Chadin'),(581,57,'Chalamarca'),(582,57,'Chiguirip'),(583,57,'Chimban'),(584,57,'Choropampa'),(585,57,'Chota'),(586,57,'Cochabamba'),(587,57,'Conchan'),(588,57,'Huambos'),(589,57,'Lajas'),(590,57,'Llama'),(591,57,'Miracosta'),(592,57,'Paccha'),(593,57,'Pion'),(594,57,'Querocoto'),(595,57,'San Juan de Licupis'),(596,57,'Tacabamba'),(597,57,'Tocmoche'),(598,58,'Chilete'),(599,58,'Contumaza'),(600,58,'Cupisnique'),(601,58,'Guzmango'),(602,58,'San Benito'),(603,58,'Santa Cruz de Toled'),(604,58,'Tantarica'),(605,58,'Yonan'),(606,59,'Callayuc'),(607,59,'Choros'),(608,59,'Cujillo'),(609,59,'Cutervo'),(610,59,'La Ramada'),(611,59,'Pimpingos'),(612,59,'Querocotillo'),(613,59,'San Andres de Cutervo'),(614,59,'San Juan de Cutervo'),(615,59,'San Luis de Lucma'),(616,59,'Santa Cruz'),(617,59,'Santo Domingo de La Capilla'),(618,59,'Santo Tomas'),(619,59,'Socota'),(620,59,'Toribio Casanova'),(621,60,'Bambamarca'),(622,60,'Chugur'),(623,60,'Hualgayoc'),(624,61,'Bellavista'),(625,61,'Chontali'),(626,61,'Colasay'),(627,61,'Huabal'),(628,61,'Jaen'),(629,61,'Las Pirias'),(630,61,'Pomahuaca'),(631,61,'Pucara'),(632,61,'Sallique'),(633,61,'San Felipe'),(634,61,'San Jose del Alto'),(635,61,'Santa Rosa'),(636,62,'Chirinos'),(637,62,'Huarango'),(638,62,'La Coipa'),(639,62,'Namballe'),(640,62,'San Ignacio'),(641,62,'San Jose de Lourdes'),(642,62,'Tabaconas'),(643,63,'Chancay'),(644,63,'Eduardo Villanueva'),(645,63,'Gregorio Pita'),(646,63,'Ichocan'),(647,63,'Jose Manuel Quiroz'),(648,63,'Jose Sabogal'),(649,63,'Pedro Galvez'),(650,64,'Bolivar'),(651,64,'Calquis'),(652,64,'Catilluc'),(653,64,'El Prado'),(654,64,'La Florida'),(655,64,'Llapa'),(656,64,'Nanchoc'),(657,64,'Niepos'),(658,64,'San Gregorio'),(659,64,'San Miguel'),(660,64,'San Silvestre de Cochan'),(661,64,'Tongod'),(662,64,'Union Agua Blanca'),(663,65,'San Bernardino'),(664,65,'San Luis'),(665,65,'San Pablo'),(666,65,'Tumbaden'),(667,66,'Andabamba'),(668,66,'Catache'),(669,66,'Chancaybaños'),(670,66,'La Esperanza'),(671,66,'Ninabamba'),(672,66,'Pulan'),(673,66,'Santa Cruz'),(674,66,'Saucepampa'),(675,66,'Sexi'),(676,66,'Uticyacu'),(677,66,'Yauyucan'),(678,67,'Bellavista'),(679,67,'Callao'),(680,67,'Carmen de La Legua'),(681,67,'La Perla'),(682,67,'La Punta'),(683,67,'Mi Peru'),(684,67,'Ventanilla'),(685,68,'Acomayo'),(686,68,'Acopia'),(687,68,'Acos'),(688,68,'Mosoc Llacta'),(689,68,'Pomacanchi'),(690,68,'Rondocan'),(691,68,'Sangarara'),(692,69,'Ancahuasi'),(693,69,'Anta'),(694,69,'Cachimayo'),(695,69,'Chinchaypujio'),(696,69,'Huarocondo'),(697,69,'Limatambo'),(698,69,'Mollepata'),(699,69,'Pucyura'),(700,69,'Zurite'),(701,70,'Calca'),(702,70,'Coya'),(703,70,'Lamay'),(704,70,'Lares'),(705,70,'Pisac'),(706,70,'San Salvador'),(707,70,'Taray'),(708,70,'Yanatile'),(709,71,'Checca'),(710,71,'Kunturkanki'),(711,71,'Langui'),(712,71,'Layo'),(713,71,'Pampamarca'),(714,71,'Quehue'),(715,71,'Tupac Amaru'),(716,71,'Yanaoca'),(717,72,'Checacupe'),(718,72,'Combapata'),(719,72,'Marangani'),(720,72,'Pitumarca'),(721,72,'San Pablo'),(722,72,'San Pedro'),(723,72,'Sicuani'),(724,72,'Tinta'),(725,73,'Capacmarca'),(726,73,'Chamaca'),(727,73,'Colquemarca'),(728,73,'Livitaca'),(729,73,'Llusco'),(730,73,'Quiñota'),(731,73,'Santo Tomas'),(732,73,'Velille'),(733,74,'Ccorca'),(734,74,'Cusco'),(735,74,'Poroy'),(736,74,'San Jeronimo'),(737,74,'San Sebastian'),(738,74,'Santiago'),(739,74,'Saylla'),(740,74,'Wanchaq'),(741,75,'Alto Pichigua'),(742,75,'Condoroma'),(743,75,'Coporaque'),(744,75,'Espinar'),(745,75,'Ocoruro'),(746,75,'Pallpata'),(747,75,'Pichigua'),(748,75,'Suyckutambo'),(749,76,'Echarate'),(750,76,'Huayopata'),(751,76,'Kimbiri'),(752,76,'Maranura'),(753,76,'Ocobamba'),(754,76,'Pichari'),(755,76,'Quellouno'),(756,76,'Santa Ana'),(757,76,'Santa Teresa'),(758,76,'Vilcabamba'),(759,77,'Accha'),(760,77,'Ccapi'),(761,77,'Colcha'),(762,77,'Huanoquite'),(763,77,'Omacha'),(764,77,'Paccaritambo'),(765,77,'Paruro'),(766,77,'Pillpinto'),(767,77,'Yaurisque'),(768,78,'Caicay'),(769,78,'Challabamba'),(770,78,'Colquepata'),(771,78,'Huancarani'),(772,78,'Kosñipata'),(773,78,'Paucartambo'),(774,79,'Andahuaylillas'),(775,79,'Camanti'),(776,79,'Ccarhuayo'),(777,79,'Ccatca'),(778,79,'Cusipata'),(779,79,'Huaro'),(780,79,'Lucre'),(781,79,'Marcapata'),(782,79,'Ocongate'),(783,79,'Oropesa'),(784,79,'Quiquijana'),(785,79,'Urcos'),(786,80,'Chinchero'),(787,80,'Huayllabamba'),(788,80,'Machupicchu'),(789,80,'Maras'),(790,80,'Ollantaytambo'),(791,80,'Urubamba'),(792,80,'Yucay'),(793,81,'Acobamba'),(794,81,'Andabamba'),(795,81,'Anta'),(796,81,'Caja'),(797,81,'Marcas'),(798,81,'Paucara'),(799,81,'Pomacocha'),(800,81,'Rosario'),(801,82,'Anchonga'),(802,82,'Callanmarca'),(803,82,'Ccochaccasa'),(804,82,'Chincho'),(805,82,'Congalla'),(806,82,'Huanca-Huanca'),(807,82,'Huayllay Grande'),(808,82,'Julcamarca'),(809,82,'Lircay'),(810,82,'San Antonio de Antaparco'),(811,82,'Santo Tomas de Pata'),(812,82,'Secclla'),(813,83,'Arma'),(814,83,'Aurahua'),(815,83,'Capillas'),(816,83,'Castrovirreyna'),(817,83,'Chupamarca'),(818,83,'Cocas'),(819,83,'Huachos'),(820,83,'Huamatambo'),(821,83,'Mollepampa'),(822,83,'San Juan'),(823,83,'Santa Ana'),(824,83,'Tantara'),(825,83,'Ticrapo'),(826,84,'Anco'),(827,84,'Chinchihuasi'),(828,84,'Churcampa'),(829,84,'El Carmen'),(830,84,'La Merced'),(831,84,'Locroja'),(832,84,'Pachamarca'),(833,84,'Paucarbamba'),(834,84,'San Miguel de Mayocc'),(835,84,'San Pedro de Coris'),(836,85,'Acobambilla'),(837,85,'Acoria'),(838,85,'Ascension'),(839,85,'Conayca'),(840,85,'Cuenca'),(841,85,'Huachocolpa'),(842,85,'Huancavelica'),(843,85,'Huando'),(844,85,'Huayllahuara'),(845,85,'Izcuchaca'),(846,85,'Laria'),(847,85,'Manta'),(848,85,'Mariscal Caceres'),(849,85,'Moya'),(850,85,'Nuevo Occoro'),(851,85,'Palca'),(852,85,'Pilchaca'),(853,85,'Vilca'),(854,85,'Yauli'),(855,86,'Ayavi'),(856,86,'Cordova'),(857,86,'Huayacundo Arma'),(858,86,'Huaytara'),(859,86,'Laramarca'),(860,86,'Ocoyo'),(861,86,'Pilpichaca'),(862,86,'Querco'),(863,86,'Quito-Arma'),(864,86,'San Antonio de Cusicancha'),(865,86,'San Francisco de Sangayaico'),(866,86,'San Isidro'),(867,86,'Santiago de Chocorvos'),(868,86,'Santiago de Quirahuara'),(869,86,'Santo Domingo de Capillas'),(870,86,'Tambo'),(871,87,'Acostambo'),(872,87,'Acraquia'),(873,87,'Ahuaycha'),(874,87,'Colcabamba'),(875,87,'Daniel Hernandez'),(876,87,'Huachocolpa'),(877,87,'Huaribamba'),(878,87,'Ñahuimpuquio'),(879,87,'Pampas'),(880,87,'Pazos'),(881,87,'Quishuar'),(882,87,'Salcabamba'),(883,87,'Salcahuasi'),(884,87,'San Marcos de Rocchac'),(885,87,'Surcubamba'),(886,87,'Tintay Puncu'),(887,88,'Ambo'),(888,88,'Cayna'),(889,88,'Colpas'),(890,88,'Conchamarca'),(891,88,'Huacar'),(892,88,'San Francisco'),(893,88,'San Rafael'),(894,88,'Tomay Kichwa'),(895,89,'Chuquis'),(896,89,'La Union'),(897,89,'Marias'),(898,89,'Pachas'),(899,89,'Quivilla'),(900,89,'Ripan'),(901,89,'Shunqui'),(902,89,'Sillapata'),(903,89,'Yanas'),(904,90,'Canchabamba'),(905,90,'Cochabamba'),(906,90,'Huacaybamba'),(907,90,'Pinra'),(908,91,'Arancay'),(909,91,'Chavin de Pariarca'),(910,91,'Jacas Grande'),(911,91,'Jircan'),(912,91,'Llata'),(913,91,'Miraflores'),(914,91,'Monzon'),(915,91,'Punchao'),(916,91,'Puños'),(917,91,'Singa'),(918,91,'Tantamayo'),(919,92,'Amarilis'),(920,92,'Chinchao'),(921,92,'Churubamba'),(922,92,'Huanuco'),(923,92,'Margos'),(924,92,'Pillco Marca'),(925,92,'Quisqui'),(926,92,'San Francisco de Cayran'),(927,92,'San Pedro de Chaulan'),(928,92,'Santa Maria del Valle'),(929,92,'Yarumayo'),(930,93,'Baños'),(931,93,'Jesus'),(932,93,'Jivia'),(933,93,'Queropalca'),(934,93,'Rondos'),(935,93,'San Francisco de Asis'),(936,93,'San Miguel de Cauri'),(937,94,'Daniel Alomias Robles'),(938,94,'Hermilio Valdizan'),(939,94,'Jose Crespo y Castillo'),(940,94,'Luyando'),(941,94,'Mariano Damaso Beraun'),(942,94,'Rupa-Rupa'),(943,95,'Cholon'),(944,95,'Huacrachuco'),(945,95,'San Buenaventura'),(946,96,'Chaglla'),(947,96,'Molino'),(948,96,'Panao'),(949,96,'Umari'),(950,97,'Codo del Pozuzo'),(951,97,'Honoria'),(952,97,'Puerto Inca'),(953,97,'Tournavista'),(954,97,'Yuyapichis'),(955,98,'Aparicio Pomares'),(956,98,'Cahuac'),(957,98,'Chacabamba'),(958,98,'Chavinillo'),(959,98,'Choras'),(960,98,'Jacas Chico'),(961,98,'Obas'),(962,98,'Pampamarca'),(963,99,'Alto Laran'),(964,99,'Chavin'),(965,99,'Chincha Alta'),(966,99,'Chincha Baja'),(967,99,'El Carmen'),(968,99,'Grocio Prado'),(969,99,'Pueblo Nuevo'),(970,99,'San Juan de Yanac'),(971,99,'San Pedro de Huacarpana'),(972,99,'Sunampe'),(973,99,'Tambo de Mora'),(974,100,'Ica'),(975,100,'La Tinguiña'),(976,100,'Los Aquijes'),(977,100,'Ocucaje'),(978,100,'Pachacutec'),(979,100,'Parcona'),(980,100,'Pueblo Nuevo'),(981,100,'Salas'),(982,100,'San Jose de los Molinos'),(983,100,'San Juan Bautista'),(984,100,'Santiago'),(985,100,'Subtanjalla'),(986,100,'Tate'),(987,100,'Yauca del Rosario'),(988,101,'Changuillo'),(989,101,'El Ingenio'),(990,101,'Marcona'),(991,101,'Nazca'),(992,101,'Vista Alegre'),(993,102,'Llipata'),(994,102,'Palpa'),(995,102,'Rio Grande'),(996,102,'Santa Cruz'),(997,102,'Tibillo'),(998,103,'Huancano'),(999,103,'Humay'),(1000,103,'Independencia'),(1001,103,'Paracas'),(1002,103,'Pisco'),(1003,103,'San Andres'),(1004,103,'San Clemente'),(1005,103,'Tupac Amaru Inca'),(1006,104,'Chanchamayo'),(1007,104,'Perene'),(1008,104,'Pichanaqui'),(1009,104,'San Luis de Shuaro'),(1010,104,'San Ramon'),(1011,104,'Vitoc'),(1012,105,'Ahuac'),(1013,105,'Chongos Bajo'),(1014,105,'Chupaca'),(1015,105,'Huachac'),(1016,105,'Huamancaca Chico'),(1017,105,'San Juan de Jarpa'),(1018,105,'San Juan de Yscos'),(1019,105,'Tres de Diciembre'),(1020,105,'Yanacancha'),(1021,106,'Aco'),(1022,106,'Andamarca'),(1023,106,'Chambara'),(1024,106,'Cochas'),(1025,106,'Comas'),(1026,106,'Concepcion'),(1027,106,'Heroinas Toledo'),(1028,106,'Manzanares'),(1029,106,'Mariscal Castilla'),(1030,106,'Matahuasi'),(1031,106,'Mito'),(1032,106,'Nueve de Julio'),(1033,106,'Orcotuna'),(1034,106,'San Jose de Quero'),(1035,106,'Santa Rosa de Ocopa'),(1036,107,'Carhuacallanga'),(1037,107,'Chacapampa'),(1038,107,'Chicche'),(1039,107,'Chilca'),(1040,107,'Chongos Alto'),(1041,107,'Chupuro'),(1042,107,'Colca'),(1043,107,'Cullhuas'),(1044,107,'El Tambo'),(1045,107,'Huacrapuquio'),(1046,107,'Hualhuas'),(1047,107,'Huancan'),(1048,107,'Huancayo'),(1049,107,'Huasicancha'),(1050,107,'Huayucachi'),(1051,107,'Ingenio'),(1052,107,'Pariahuanca'),(1053,107,'Pilcomayo'),(1054,107,'Pucara'),(1055,107,'Quichuay'),(1056,107,'Quilcas'),(1057,107,'San Agustin'),(1058,107,'San Jeronimo de Tunan'),(1059,107,'Santo Domingo de Acobamba'),(1060,107,'Saño'),(1061,107,'Sapallanga'),(1062,107,'Sicaya'),(1063,107,'Viques'),(1064,108,'Acolla'),(1065,108,'Apata'),(1066,108,'Ataura'),(1067,108,'Canchayllo'),(1068,108,'Curicaca'),(1069,108,'El Mantaro'),(1070,108,'Huamali'),(1071,108,'Huaripampa'),(1072,108,'Huertas'),(1073,108,'Janjaillo'),(1074,108,'Jauja'),(1075,108,'Julcan'),(1076,108,'Leonor Ordoñez'),(1077,108,'Llocllapampa'),(1078,108,'Marco'),(1079,108,'Masma'),(1080,108,'Masma Chicche'),(1081,108,'Molinos'),(1082,108,'Monobamba'),(1083,108,'Muqui'),(1084,108,'Muquiyauyo'),(1085,108,'Paca'),(1086,108,'Paccha'),(1087,108,'Pancan'),(1088,108,'Parco'),(1089,108,'Pomacancha'),(1090,108,'Ricran'),(1091,108,'San Lorenzo'),(1092,108,'San Pedro de Chunan'),(1093,108,'Sausa'),(1094,108,'Sincos'),(1095,108,'Tunan Marca'),(1096,108,'Yauli'),(1097,108,'Yauyos'),(1098,109,'Carhuamayo'),(1099,109,'Junin'),(1100,109,'Ondores'),(1101,109,'Ulcumayo'),(1102,110,'Coviriali'),(1103,110,'Llaylla'),(1104,110,'Mazamari'),(1105,110,'Pampa Hermosa'),(1106,110,'Pangoa'),(1107,110,'Rio Negro'),(1108,110,'Rio Tambo'),(1109,110,'Satipo'),(1110,111,'Acobamba'),(1111,111,'Huaricolca'),(1112,111,'Huasahuasi'),(1113,111,'La Union'),(1114,111,'Palca'),(1115,111,'Palcamayo'),(1116,111,'San Pedro de Cajas'),(1117,111,'Tapo'),(1118,111,'Tarma'),(1119,112,'Chacapalpa'),(1120,112,'Huay-Huay'),(1121,112,'La Oroya'),(1122,112,'Marcapomacocha'),(1123,112,'Morococha'),(1124,112,'Paccha'),(1125,112,'Santa Barbara de Carhuacayan'),(1126,112,'Santa Rosa de Sacco'),(1127,112,'Suitucancha'),(1128,112,'Yauli'),(1129,113,'Ascope'),(1130,113,'Casa Grande'),(1131,113,'Chicama'),(1132,113,'Chocope'),(1133,113,'Magdalena de Cao'),(1134,113,'Paijan'),(1135,113,'Razuri'),(1136,113,'Santiago de Cao'),(1137,114,'Bambamarca'),(1138,114,'Bolivar'),(1139,114,'Condormarca'),(1140,114,'Longotea'),(1141,114,'Uchumarca'),(1142,114,'Ucuncha'),(1143,115,'Chepen'),(1144,115,'Pacanga'),(1145,115,'Pueblo Nuevo'),(1146,116,'Cascas'),(1147,116,'Compin'),(1148,116,'Lucma'),(1149,116,'Sayapullo'),(1150,117,'Calamarca'),(1151,117,'Carabamba'),(1152,117,'Huaso'),(1153,117,'Julcan'),(1154,118,'Agallpampa'),(1155,118,'Charat'),(1156,118,'Huaranchal'),(1157,118,'La Cuesta'),(1158,118,'Mache'),(1159,118,'Otuzco'),(1160,118,'Paranday'),(1161,118,'Salpo'),(1162,118,'Sinsicap'),(1163,118,'Usquil'),(1164,119,'Guadalupe'),(1165,119,'Jequetepeque'),(1166,119,'Pacasmayo'),(1167,119,'San Jose'),(1168,119,'San Pedro de Lloc'),(1169,120,'Buldibuyo'),(1170,120,'Chillia'),(1171,120,'Huancaspata'),(1172,120,'Huaylillas'),(1173,120,'Huayo'),(1174,120,'Ongon'),(1175,120,'Parcoy'),(1176,120,'Pataz'),(1177,120,'Pias'),(1178,120,'Santiago de Challas'),(1179,120,'Taurija'),(1180,120,'Tayabamba'),(1181,120,'Urpay'),(1182,121,'Chugay'),(1183,121,'Cochorco'),(1184,121,'Curgos'),(1185,121,'Huamachuco'),(1186,121,'Marcabal'),(1187,121,'Sanagoran'),(1188,121,'Sarin'),(1189,121,'Sartimbamba'),(1190,122,'Angasmarca'),(1191,122,'Cachicadan'),(1192,122,'Mollebamba'),(1193,122,'Mollepata'),(1194,122,'Quiruvilca'),(1195,122,'Santa Cruz de Chuca'),(1196,122,'Santiago de Chuco'),(1197,122,'Sitabamba'),(1198,123,'El Porvenir'),(1199,123,'Florencia de Mora'),(1200,123,'Huanchaco'),(1201,123,'La Esperanza'),(1202,123,'Laredo'),(1203,123,'Moche'),(1204,123,'Poroto'),(1205,123,'Salaverry'),(1206,123,'Simbal'),(1207,123,'Trujillo'),(1208,123,'Victor Larco Herrera'),(1209,124,'Chao'),(1210,124,'Guadalupito'),(1211,124,'Viru'),(1212,125,'Cayalti'),(1213,125,'Chiclayo'),(1214,125,'Chongoyape'),(1215,125,'Eten'),(1216,125,'Eten Puerto'),(1217,125,'Jose Leonardo Ortiz'),(1218,125,'La Victoria'),(1219,125,'Lagunas'),(1220,125,'Monsefu'),(1221,125,'Nueva Arica'),(1222,125,'Oyotun'),(1223,125,'Patapo'),(1224,125,'Picsi'),(1225,125,'Pimentel'),(1226,125,'Pomalca'),(1227,125,'Pucala'),(1228,125,'Reque'),(1229,125,'Santa Rosa'),(1230,125,'Saña'),(1231,125,'Tuman'),(1232,126,'Cañaris'),(1233,126,'Ferreñafe'),(1234,126,'Incahuasi'),(1235,126,'Manuel Antonio Mesones Muro'),(1236,126,'Pitipo'),(1237,126,'Pueblo Nuevo'),(1238,127,'Chochope'),(1239,127,'Illimo'),(1240,127,'Jayanca'),(1241,127,'Lambayeque'),(1242,127,'Mochumi'),(1243,127,'Morrope'),(1244,127,'Motupe'),(1245,127,'Olmos'),(1246,127,'Pacora'),(1247,127,'Salas'),(1248,127,'San Jose'),(1249,127,'Tucume'),(1250,128,'Barranca'),(1251,128,'Paramonga'),(1252,128,'Pativilca'),(1253,128,'Supe'),(1254,128,'Supe Puerto'),(1255,129,'Cajatambo'),(1256,129,'Copa'),(1257,129,'Gorgor'),(1258,129,'Huancapon'),(1259,129,'Manas'),(1260,130,'Arahuay'),(1261,130,'Canta'),(1262,130,'Huamantanga'),(1263,130,'Huaros'),(1264,130,'Lachaqui'),(1265,130,'San Buenaventura'),(1266,130,'Santa Rosa de Quives'),(1267,131,'Asia'),(1268,131,'Calango'),(1269,131,'Cerro Azul'),(1270,131,'Chilca'),(1271,131,'Coayllo'),(1272,131,'Imperial'),(1273,131,'Lunahuana'),(1274,131,'Mala'),(1275,131,'Nuevo Imperial'),(1276,131,'Pacaran'),(1277,131,'Quilmana'),(1278,131,'San Antonio'),(1279,131,'San Luis'),(1280,131,'San Vicente de Cañete'),(1281,131,'Santa Cruz de Flores'),(1282,131,'Zuñiga'),(1283,132,'Atavillos Alto'),(1284,132,'Atavillos Bajo'),(1285,132,'Aucallama'),(1286,132,'Chancay'),(1287,132,'Huaral'),(1288,132,'Ihuari'),(1289,132,'Lampian'),(1290,132,'Pacaraos'),(1291,132,'San Miguel de Acos'),(1292,132,'Santa Cruz de Andamarca'),(1293,132,'Sumbilca'),(1294,132,'Veintisiete de Noviembre'),(1295,133,'Antioquia'),(1296,133,'Callahuanca'),(1297,133,'Carampoma'),(1298,133,'Chicla'),(1299,133,'Cuenca'),(1300,133,'Huachupampa'),(1301,133,'Huanza'),(1302,133,'Huarochiri'),(1303,133,'Lahuaytambo'),(1304,133,'Langa'),(1305,133,'Laraos'),(1306,133,'Mariatana'),(1307,133,'Matucana'),(1308,133,'Ricardo Palma'),(1309,133,'San Andres de Tupicocha'),(1310,133,'San Antonio'),(1311,133,'San Bartolome'),(1312,133,'San Damian'),(1313,133,'San Juan de Iris'),(1314,133,'San Juan de Tantaranche'),(1315,133,'San Lorenzo de Quinti'),(1316,133,'San Mateo'),(1317,133,'San Mateo de Otao'),(1318,133,'San Pedro de Casta'),(1319,133,'San Pedro de Huancayre'),(1320,133,'Sangallaya'),(1321,133,'Santa Cruz de Cocachacra'),(1322,133,'Santa Eulalia'),(1323,133,'Santiago de Anchucaya'),(1324,133,'Santiago de Tuna'),(1325,133,'Santo Domingo de los Olleros'),(1326,133,'Surco'),(1327,134,'Ambar'),(1328,134,'Caleta de Carquin'),(1329,134,'Checras'),(1330,134,'Huacho'),(1331,134,'Hualmay'),(1332,134,'Huaura'),(1333,134,'Leoncio Prado'),(1334,134,'Paccho'),(1335,134,'Santa Leonor'),(1336,134,'Santa Maria'),(1337,134,'Sayan'),(1338,134,'Vegueta'),(1339,135,'Ancon'),(1340,135,'Ate'),(1341,135,'Barranco'),(1342,135,'Breña'),(1343,135,'Carabayllo'),(1344,135,'Chaclacayo'),(1345,135,'Chorrillos'),(1346,135,'Cieneguilla'),(1347,135,'Comas'),(1348,135,'El Agustino'),(1349,135,'Independencia'),(1350,135,'Jesus Maria'),(1351,135,'La Molina'),(1352,135,'La Victoria'),(1353,135,'Lima'),(1354,135,'Lince'),(1355,135,'Los Olivos'),(1356,135,'Lurigancho'),(1357,135,'Lurin'),(1358,135,'Magdalena del Mar'),(1359,135,'Miraflores'),(1360,135,'Pachacamac'),(1361,135,'Pucusana'),(1362,135,'Pueblo Libre'),(1363,135,'Puente Piedra'),(1364,135,'Punta Hermosa'),(1365,135,'Punta Negra'),(1366,135,'Rimac'),(1367,135,'San Bartolo'),(1368,135,'San Borja'),(1369,135,'San Isidro'),(1370,135,'San Juan de Lurigancho'),(1371,135,'San Juan de Miraflores'),(1372,135,'San Luis'),(1373,135,'San Martin de Porres'),(1374,135,'San Miguel'),(1375,135,'Santa Anita'),(1376,135,'Santa Maria del Mar'),(1377,135,'Santa Rosa'),(1378,135,'Santiago de Surco'),(1379,135,'Surquillo'),(1380,135,'Villa El Salvador'),(1381,135,'Villa Maria del Triunfo'),(1382,136,'Andajes'),(1383,136,'Caujul'),(1384,136,'Cochamarca'),(1385,136,'Navan'),(1386,136,'Oyon'),(1387,136,'Pachangara'),(1388,137,'Alis'),(1389,137,'Ayauca'),(1390,137,'Ayaviri'),(1391,137,'Azangaro'),(1392,137,'Cacra'),(1393,137,'Carania'),(1394,137,'Catahuasi'),(1395,137,'Chocos'),(1396,137,'Cochas'),(1397,137,'Colonia'),(1398,137,'Hongos'),(1399,137,'Huampara'),(1400,137,'Huancaya'),(1401,137,'Huangascar'),(1402,137,'Huantan'),(1403,137,'Huañec'),(1404,137,'Laraos'),(1405,137,'Lincha'),(1406,137,'Madean'),(1407,137,'Miraflores'),(1408,137,'Omas'),(1409,137,'Putinza'),(1410,137,'Quinches'),(1411,137,'Quinocay'),(1412,137,'San Joaquin'),(1413,137,'San Pedro de Pilas'),(1414,137,'Tanta'),(1415,137,'Tauripampa'),(1416,137,'Tomas'),(1417,137,'Tupe'),(1418,137,'Viñac'),(1419,137,'Vitis'),(1420,137,'Yauyos'),(1421,138,'Balsapuerto'),(1422,138,'Jeberos'),(1423,138,'Lagunas'),(1424,138,'Santa Cruz'),(1425,138,'Teniente Cesar Lopez Rojas'),(1426,138,'Yurimaguas'),(1427,139,'Andoas'),(1428,139,'Barranca'),(1429,139,'Cahuapanas'),(1430,139,'Manseriche'),(1431,139,'Morona'),(1432,139,'Pastaza'),(1433,140,'Nauta'),(1434,140,'Parinari'),(1435,140,'Tigre'),(1436,140,'Trompeteros'),(1437,140,'Urarinas'),(1438,141,'Pebas'),(1439,141,'Ramon Castilla'),(1440,141,'San Pablo'),(1441,141,'Yavari'),(1442,142,'Alto Nanay'),(1443,142,'Belen'),(1444,142,'Fernando Lores'),(1445,142,'Indiana'),(1446,142,'Iquitos'),(1447,142,'Las Amazonas'),(1448,142,'Mazan'),(1449,142,'Napo'),(1450,142,'Punchana'),(1451,142,'Putumayo'),(1452,142,'San Juan Bautista'),(1453,142,'Teniente Manuel Clavero'),(1454,142,'Torres Causana'),(1455,143,'Alto Tapiche'),(1456,143,'Capelo'),(1457,143,'Emilio San Martin'),(1458,143,'Jenaro Herrera'),(1459,143,'Maquia'),(1460,143,'Puinahua'),(1461,143,'Requena'),(1462,143,'Saquena'),(1463,143,'Soplin'),(1464,143,'Tapiche'),(1465,143,'Yaquerana'),(1466,144,'Contamana'),(1467,144,'Inahuaya'),(1468,144,'Padre Marquez'),(1469,144,'Pampa Hermosa'),(1470,144,'Sarayacu'),(1471,144,'Vargas Guerra'),(1472,145,'Fitzcarrald'),(1473,145,'Huepetuhe'),(1474,145,'Madre de Dios'),(1475,145,'Manu'),(1476,146,'Iberia'),(1477,146,'Iñapari'),(1478,146,'Tahuamanu'),(1479,147,'Inambari'),(1480,147,'Laberinto'),(1481,147,'Las Piedras'),(1482,147,'Tambopata'),(1483,148,'Chojata'),(1484,148,'Coalaque'),(1485,148,'Ichuña'),(1486,148,'La Capilla'),(1487,148,'Lloque'),(1488,148,'Matalaque'),(1489,148,'Omate'),(1490,148,'Puquina'),(1491,148,'Quinistaquillas'),(1492,148,'Ubinas'),(1493,148,'Yunga'),(1494,149,'El Algarrobal'),(1495,149,'Ilo'),(1496,149,'Pacocha'),(1497,150,'Carumas'),(1498,150,'Cuchumbaya'),(1499,150,'Moquegua'),(1500,150,'Samegua'),(1501,150,'San Cristobal'),(1502,150,'Torata'),(1503,151,'Chacayan'),(1504,151,'Goyllarisquizga'),(1505,151,'Paucar'),(1506,151,'San Pedro de Pillao'),(1507,151,'Santa Ana de Tusi'),(1508,151,'Tapuc'),(1509,151,'Vilcabamba'),(1510,151,'Yanahuanca'),(1511,152,'Chontabamba'),(1512,152,'Huancabamba'),(1513,152,'Oxapampa'),(1514,152,'Palcazu'),(1515,152,'Pozuzo'),(1516,152,'Puerto Bermudez'),(1517,152,'Villa Rica'),(1518,153,'Chaupimarca'),(1519,153,'Huachon'),(1520,153,'Huariaca'),(1521,153,'Huayllay'),(1522,153,'Ninacaca'),(1523,153,'Pallanchacra'),(1524,153,'Paucartambo'),(1525,153,'San Francisco de Asis de Yarusyacan'),(1526,153,'Simon Bolivar'),(1527,153,'Ticlacayan'),(1528,153,'Tinyahuarco'),(1529,153,'Vicco'),(1530,153,'Yanacancha'),(1531,154,'Ayabaca'),(1532,154,'Frias'),(1533,154,'Jilili'),(1534,154,'Lagunas'),(1535,154,'Montero'),(1536,154,'Pacaipampa'),(1537,154,'Paimas'),(1538,154,'Sapillica'),(1539,154,'Sicchez'),(1540,154,'Suyo'),(1541,155,'Canchaque'),(1542,155,'El Carmen de La Frontera'),(1543,155,'Huancabamba'),(1544,155,'Huarmaca'),(1545,155,'Lalaquiz'),(1546,155,'San Miguel de El Faique'),(1547,155,'Sondor'),(1548,155,'Sondorillo'),(1549,156,'Buenos Aires'),(1550,156,'Chalaco'),(1551,156,'Chulucanas'),(1552,156,'La Matanza'),(1553,156,'Morropon'),(1554,156,'Salitral'),(1555,156,'San Juan de Bigote'),(1556,156,'Santa Catalina de Mossa'),(1557,156,'Santo Domingo'),(1558,156,'Yamango'),(1559,157,'Amotape'),(1560,157,'Arenal'),(1561,157,'Colan'),(1562,157,'La Huaca'),(1563,157,'Paita'),(1564,157,'Tamarindo'),(1565,157,'Vichayal'),(1566,158,'Castilla'),(1567,158,'Catacaos'),(1568,158,'Cura Mori'),(1569,158,'El Tallan'),(1570,158,'La Arena'),(1571,158,'La Union'),(1572,158,'Las Lomas'),(1573,158,'Piura'),(1574,158,'Tambo Grande'),(1575,159,'Bellavista de La Union'),(1576,159,'Bernal'),(1577,159,'Cristo Nos Valga'),(1578,159,'Rinconada Llicuar'),(1579,159,'Sechura'),(1580,159,'Vice'),(1581,160,'Bellavista'),(1582,160,'Ignacio Escudero'),(1583,160,'Lancones'),(1584,160,'Marcavelica'),(1585,160,'Miguel Checa'),(1586,160,'Querecotillo'),(1587,160,'Salitral'),(1588,160,'Sullana'),(1589,161,'El Alto'),(1590,161,'La Brea'),(1591,161,'Lobitos'),(1592,161,'Los Organos'),(1593,161,'Mancora'),(1594,161,'Pariñas'),(1595,162,'Achaya'),(1596,162,'Arapa'),(1597,162,'Asillo'),(1598,162,'Azangaro'),(1599,162,'Caminaca'),(1600,162,'Chupa'),(1601,162,'Jose Domingo Choquehuanca'),(1602,162,'Muñani'),(1603,162,'Potoni'),(1604,162,'Saman'),(1605,162,'San Anton'),(1606,162,'San Jose'),(1607,162,'San Juan de Salinas'),(1608,162,'Santiago de Pupuja'),(1609,162,'Tirapata'),(1610,163,'Ajoyani'),(1611,163,'Ayapata'),(1612,163,'Coasa'),(1613,163,'Corani'),(1614,163,'Crucero'),(1615,163,'Ituata'),(1616,163,'Macusani'),(1617,163,'Ollachea'),(1618,163,'San Gaban'),(1619,163,'Usicayos'),(1620,164,'Desaguadero'),(1621,164,'Huacullani'),(1622,164,'Juli'),(1623,164,'Kelluyo'),(1624,164,'Pisacoma'),(1625,164,'Pomata'),(1626,164,'Zepita'),(1627,165,'Capazo'),(1628,165,'Conduriri'),(1629,165,'Ilave'),(1630,165,'Pilcuyo'),(1631,165,'Santa Rosa'),(1632,166,'Cojata'),(1633,166,'Huancane'),(1634,166,'Huatasani'),(1635,166,'Inchupalla'),(1636,166,'Pusi'),(1637,166,'Rosaspata'),(1638,166,'Taraco'),(1639,166,'Vilque Chico'),(1640,167,'Cabanilla'),(1641,167,'Calapuja'),(1642,167,'Lampa'),(1643,167,'Nicasio'),(1644,167,'Ocuviri'),(1645,167,'Palca'),(1646,167,'Paratia'),(1647,167,'Pucara'),(1648,167,'Santa Lucia'),(1649,167,'Vilavila'),(1650,168,'Antauta'),(1651,168,'Ayaviri'),(1652,168,'Cupi'),(1653,168,'Llalli'),(1654,168,'Macari'),(1655,168,'Nuñoa'),(1656,168,'Orurillo'),(1657,168,'Santa Rosa'),(1658,168,'Umachiri'),(1659,169,'Conima'),(1660,169,'Huayrapata'),(1661,169,'Moho'),(1662,169,'Tilali'),(1663,170,'Acora'),(1664,170,'Amantani'),(1665,170,'Atuncolla'),(1666,170,'Capachica'),(1667,170,'Chucuito'),(1668,170,'Coata'),(1669,170,'Huata'),(1670,170,'Mañazo'),(1671,170,'Paucarcolla'),(1672,170,'Pichacani'),(1673,170,'Plateria'),(1674,170,'Puno'),(1675,170,'San Antonio'),(1676,170,'Tiquillaca'),(1677,170,'Vilque'),(1678,171,'Ananea'),(1679,171,'Pedro Vilca Apaza'),(1680,171,'Putina'),(1681,171,'Quilcapuncu'),(1682,171,'Sina'),(1683,172,'Cabana'),(1684,172,'Cabanillas'),(1685,172,'Caracoto'),(1686,172,'Juliaca'),(1687,173,'Alto Inambari'),(1688,173,'Cuyocuyo'),(1689,173,'Limbani'),(1690,173,'Patambuco'),(1691,173,'Phara'),(1692,173,'Quiaca'),(1693,173,'San Juan del Oro'),(1694,173,'San Pedro de Putina Punco'),(1695,173,'Sandia'),(1696,173,'Yanahuaya'),(1697,174,'Anapia'),(1698,174,'Copani'),(1699,174,'Cuturapi'),(1700,174,'Ollaraya'),(1701,174,'Tinicachi'),(1702,174,'Unicachi'),(1703,174,'Yunguyo'),(1704,175,'Alto Biavo'),(1705,175,'Bajo Biavo'),(1706,175,'Bellavista'),(1707,175,'Huallaga'),(1708,175,'San Pablo'),(1709,175,'San Rafael'),(1710,176,'Agua Blanca'),(1711,176,'San Jose de Sisa'),(1712,176,'San Martin'),(1713,176,'Santa Rosa'),(1714,176,'Shatoja'),(1715,177,'Alto Saposoa'),(1716,177,'El Eslabon'),(1717,177,'Piscoyacu'),(1718,177,'Sacanche'),(1719,177,'Saposoa'),(1720,177,'Tingo de Saposoa'),(1721,178,'Alonso de Alvarado'),(1722,178,'Barranquita'),(1723,178,'Caynarachi'),(1724,178,'Cuñumbuqui'),(1725,178,'Lamas'),(1726,178,'Pinto Recodo'),(1727,178,'Rumisapa'),(1728,178,'San Roque de Cumbaza'),(1729,178,'Shanao'),(1730,178,'Tabalosos'),(1731,178,'Zapatero'),(1732,179,'Campanilla'),(1733,179,'Huicungo'),(1734,179,'Juanjui'),(1735,179,'Pachiza'),(1736,179,'Pajarillo'),(1737,180,'Calzada'),(1738,180,'Habana'),(1739,180,'Jepelacio'),(1740,180,'Moyobamba'),(1741,180,'Soritor'),(1742,180,'Yantalo'),(1743,181,'Buenos Aires'),(1744,181,'Caspisapa'),(1745,181,'Picota'),(1746,181,'Pilluana'),(1747,181,'Pucacaca'),(1748,181,'San Cristobal'),(1749,181,'San Hilarion'),(1750,181,'Shamboyacu'),(1751,181,'Tingo de Ponasa'),(1752,181,'Tres Unidos'),(1753,182,'Awajun'),(1754,182,'Elias Soplin Vargas'),(1755,182,'Nueva Cajamarca'),(1756,182,'Pardo Miguel'),(1757,182,'Posic'),(1758,182,'Rioja'),(1759,182,'San Fernando'),(1760,182,'Yorongos'),(1761,182,'Yuracyacu'),(1762,183,'Alberto Leveau'),(1763,183,'Cacatachi'),(1764,183,'Chazuta'),(1765,183,'Chipurana'),(1766,183,'El Porvenir'),(1767,183,'Huimbayoc'),(1768,183,'Juan Guerra'),(1769,183,'La Banda de Shilcayo'),(1770,183,'Morales'),(1771,183,'Papaplaya'),(1772,183,'San Antonio'),(1773,183,'Sauce'),(1774,183,'Shapaja'),(1775,183,'Tarapoto'),(1776,184,'Nuevo Progreso'),(1777,184,'Polvora'),(1778,184,'Shunte'),(1779,184,'Tocache'),(1780,184,'Uchiza'),(1781,185,'Cairani'),(1782,185,'Camilaca'),(1783,185,'Candarave'),(1784,185,'Curibaya'),(1785,185,'Huanuara'),(1786,185,'Quilahuani'),(1787,186,'Ilabaya'),(1788,186,'Ite'),(1789,186,'Locumba'),(1790,187,'Alto de La Alianza'),(1791,187,'Calana'),(1792,187,'Ciudad Nueva'),(1793,187,'Coronel Gregorio Albarracin Lanchipa'),(1794,187,'Inclan'),(1795,187,'Pachia'),(1796,187,'Palca'),(1797,187,'Pocollay'),(1798,187,'Sama'),(1799,187,'Tacna'),(1800,188,'Estique'),(1801,188,'Estique-Pampa'),(1802,188,'Heroes Albarracin'),(1803,188,'Sitajara'),(1804,188,'Susapaya'),(1805,188,'Tarata'),(1806,188,'Tarucachi'),(1807,188,'Ticaco'),(1808,189,'Canoas de Punta Sal'),(1809,189,'Casitas'),(1810,189,'Zorritos'),(1811,190,'Corrales'),(1812,190,'La Cruz'),(1813,190,'Pampas de Hospital'),(1814,190,'San Jacinto'),(1815,190,'San Juan de La Virgen'),(1816,190,'Tumbes'),(1817,191,'Aguas Verdes'),(1818,191,'Matapalo'),(1819,191,'Papayal'),(1820,191,'Zarumilla'),(1821,192,'Raymondi'),(1822,192,'Sepahua'),(1823,192,'Tahuania'),(1824,192,'Yurua'),(1825,193,'Calleria'),(1826,193,'Campoverde'),(1827,193,'Iparia'),(1828,193,'Manantay'),(1829,193,'Masisea'),(1830,193,'Nueva Requena'),(1831,193,'Yarinacocha'),(1832,194,'Curimana'),(1833,194,'Irazola'),(1834,194,'Padre Abad'),(1835,195,'Purus');
/*!40000 ALTER TABLE `tb_distrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_domicilio`
--

DROP TABLE IF EXISTS `tb_domicilio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_domicilio` (
  `id_direccion` int(11) NOT NULL AUTO_INCREMENT,
  `id_postulante` int(11) DEFAULT NULL,
  `tipo_via` varchar(20) DEFAULT NULL,
  `nombre_via` varchar(50) DEFAULT NULL,
  `num` varchar(10) DEFAULT NULL,
  `mz` varchar(10) DEFAULT NULL,
  `lote` varchar(10) DEFAULT NULL,
  `int_dpto` varchar(10) DEFAULT NULL,
  `id_dep` int(11) DEFAULT NULL,
  `id_prov` int(11) DEFAULT NULL,
  `id_dist` int(11) DEFAULT NULL,
  `urbanizacion` varchar(30) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `casa` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_direccion`),
  KEY `id_postulante` (`id_postulante`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_domicilio`
--

LOCK TABLES `tb_domicilio` WRITE;
/*!40000 ALTER TABLE `tb_domicilio` DISABLE KEYS */;
INSERT INTO `tb_domicilio` VALUES (1,234,'1','Bolivar','455','A','4','401',1,3,35,'El huerto','978214377','1'),(7,240,'1','Huaylas','31','5','16','302',15,135,1355,'Laura Caller','916445896','2'),(9,242,'2','wadasd','2','2','2','2',2,8,86,'adasds','213123123','1'),(11,244,'2','wadasd','2','2','2','2',2,8,86,'adasds','213123123','1'),(26,251,'2','wadasd','2','2','2','2',2,8,86,'adasds','213123123','1'),(27,247,'1','Huaylas','34','5','16','302',15,135,1355,'Laura Caller','916445895','2'),(28,248,'2','wadasd','2','2','2','2',2,8,86,'adasds','213123123','1'),(29,257,'2','wadasd','2','2','2','2',2,8,86,'adasds','213123123','1'),(31,249,'1','Huaylas','34','5','16','302',15,135,1355,'Laura Caller','916445895','2'),(32,258,'2','Test','1','2','3','4',15,135,1355,'Maeda','5656666','1');
/*!40000 ALTER TABLE `tb_domicilio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_financiero`
--

DROP TABLE IF EXISTS `tb_financiero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_financiero` (
  `id_financiero` int(11) NOT NULL AUTO_INCREMENT,
  `id_postulante` int(11) DEFAULT NULL,
  `banco` varchar(50) DEFAULT NULL,
  `tipo_cuenta` varchar(100) DEFAULT NULL,
  `linea_credito` varchar(20) DEFAULT NULL,
  `linea_credito_utilizada` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_financiero`),
  KEY `id_postulante` (`id_postulante`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_financiero`
--

LOCK TABLES `tb_financiero` WRITE;
/*!40000 ALTER TABLE `tb_financiero` DISABLE KEYS */;
INSERT INTO `tb_financiero` VALUES (1,234,'BCP','Ahorros','S/ 4,000.00','S/ 2,500.00'),(2,234,'Interbank','Corriente','S/ 10,500.00','S/ 10,500.00'),(3,240,'BBVA','Corriente','S/5000','S/3000'),(4,255,'BCP','Ahorros','S/5000','S/3000');
/*!40000 ALTER TABLE `tb_financiero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_financiero_cuenta`
--

DROP TABLE IF EXISTS `tb_financiero_cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_financiero_cuenta` (
  `id_financiero_cuenta` int(11) NOT NULL AUTO_INCREMENT,
  `id_postulante` int(11) DEFAULT NULL,
  `banco` varchar(50) DEFAULT NULL,
  `tipo_cuenta` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_financiero_cuenta`),
  KEY `id_postulante` (`id_postulante`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_financiero_cuenta`
--

LOCK TABLES `tb_financiero_cuenta` WRITE;
/*!40000 ALTER TABLE `tb_financiero_cuenta` DISABLE KEYS */;
INSERT INTO `tb_financiero_cuenta` VALUES (2,240,'BBVA','Corriente');
/*!40000 ALTER TABLE `tb_financiero_cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_financiero_tarjeta`
--

DROP TABLE IF EXISTS `tb_financiero_tarjeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_financiero_tarjeta` (
  `id_financiero_tarjeta` int(11) NOT NULL AUTO_INCREMENT,
  `id_postulante` int(11) DEFAULT NULL,
  `banco` varchar(50) DEFAULT NULL,
  `linea_credito` varchar(20) DEFAULT NULL,
  `linea_credito_utilizada` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_financiero_tarjeta`),
  KEY `id_postulante` (`id_postulante`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_financiero_tarjeta`
--

LOCK TABLES `tb_financiero_tarjeta` WRITE;
/*!40000 ALTER TABLE `tb_financiero_tarjeta` DISABLE KEYS */;
INSERT INTO `tb_financiero_tarjeta` VALUES (6,234,'BCP','5000','2300'),(8,240,'BBVA','S/ 4000','S/ 3500'),(9,240,'BBVA','S/ 4000','S/ 3500');
/*!40000 ALTER TABLE `tb_financiero_tarjeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ingresos_mensuales_ind`
--

DROP TABLE IF EXISTS `tb_ingresos_mensuales_ind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_ingresos_mensuales_ind` (
  `id_ingresos_mensuales` int(11) NOT NULL,
  `ingresos_mensuales` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_ingresos_mensuales`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ingresos_mensuales_ind`
--

LOCK TABLES `tb_ingresos_mensuales_ind` WRITE;
/*!40000 ALTER TABLE `tb_ingresos_mensuales_ind` DISABLE KEYS */;
INSERT INTO `tb_ingresos_mensuales_ind` VALUES (1,'Entre los S/10,000 a S/20,000'),(2,'Entre los S/20,001 a S/40,000'),(3,'Entre los S/40,001 a S/70,000'),(4,'Entre los S/70,001 a S/100,000'),(5,'Entre los S/100,001 a S/200,000');
/*!40000 ALTER TABLE `tb_ingresos_mensuales_ind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ingresos_mensuales_neg`
--

DROP TABLE IF EXISTS `tb_ingresos_mensuales_neg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_ingresos_mensuales_neg` (
  `id_ingresos_mensuales` int(11) NOT NULL,
  `ingresos_mensuales` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_ingresos_mensuales`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ingresos_mensuales_neg`
--

LOCK TABLES `tb_ingresos_mensuales_neg` WRITE;
/*!40000 ALTER TABLE `tb_ingresos_mensuales_neg` DISABLE KEYS */;
INSERT INTO `tb_ingresos_mensuales_neg` VALUES (1,'Entre los S/10,000 a S/20,000'),(2,'Entre los S/20,001 a S/40,000'),(3,'Entre los S/40,001 a S/70,000'),(4,'Entre los S/70,001 a S/100,000'),(5,'Entre los S/100,001 a S/200,000');
/*!40000 ALTER TABLE `tb_ingresos_mensuales_neg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_institucion`
--

DROP TABLE IF EXISTS `tb_institucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_institucion` (
  `id_institucion` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_institucion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_institucion`
--

LOCK TABLES `tb_institucion` WRITE;
/*!40000 ALTER TABLE `tb_institucion` DISABLE KEYS */;
INSERT INTO `tb_institucion` VALUES (1,'AELU','https://s3.amazonaws.com/nbioxlabimages/aelucoop/aelu.jpg'),(2,'Country Club El Bosque','https://s3.amazonaws.com/nbioxlabimages/aelucoop/elbosque.png'),(3,'Real Club de Lima','https://s3.amazonaws.com/nbioxlabimages/aelucoop/rcl.png'),(4,'Colegio La Union','https://s3.amazonaws.com/nbioxlabimages/aelucoop/launion.jpg'),(5,'Santa Beatriz','https://s3.amazonaws.com/nbioxlabimages/aelucoop/sb.png'),(6,'San Antonio de Padua','https://s3.amazonaws.com/nbioxlabimages/aelucoop/sap.png'),(7,'ninguno','https://s3.amazonaws.com/nbioxlabimages/aelucoop/none.png');
/*!40000 ALTER TABLE `tb_institucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_observaciones`
--

DROP TABLE IF EXISTS `tb_observaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_observaciones` (
  `id_observacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_postulante` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `tipo_observacion` varchar(20) DEFAULT NULL,
  `observacion` text,
  PRIMARY KEY (`id_observacion`),
  KEY `id_postulante` (`id_postulante`,`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_observaciones`
--

LOCK TABLES `tb_observaciones` WRITE;
/*!40000 ALTER TABLE `tb_observaciones` DISABLE KEYS */;
INSERT INTO `tb_observaciones` VALUES (1,234,2,' LAFT',' Se observa que el postulante cumple con los requisitos laft, por lo que no tenemos problemas con su aprobacion'),(5,240,3,'LAFT','Se observa que cumple con todos los requisitos');
/*!40000 ALTER TABLE `tb_observaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ocupacion_ama_casa`
--

DROP TABLE IF EXISTS `tb_ocupacion_ama_casa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_ocupacion_ama_casa` (
  `id_ama_casa` int(11) NOT NULL AUTO_INCREMENT,
  `id_postulante` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ama_casa`),
  KEY `id_postulante` (`id_postulante`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ocupacion_ama_casa`
--

LOCK TABLES `tb_ocupacion_ama_casa` WRITE;
/*!40000 ALTER TABLE `tb_ocupacion_ama_casa` DISABLE KEYS */;
INSERT INTO `tb_ocupacion_ama_casa` VALUES (6,247),(7,249);
/*!40000 ALTER TABLE `tb_ocupacion_ama_casa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ocupacion_dependiente`
--

DROP TABLE IF EXISTS `tb_ocupacion_dependiente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_ocupacion_dependiente` (
  `id_ocup_dependiente` int(11) NOT NULL AUTO_INCREMENT,
  `id_postulante` int(11) DEFAULT NULL,
  `ocupacion` varchar(50) DEFAULT NULL,
  `profesion` varchar(50) DEFAULT NULL,
  `id_sector_economico` int(11) DEFAULT NULL,
  `centro_trabajo` varchar(50) DEFAULT NULL,
  `id_actividad` int(11) DEFAULT NULL,
  `id_tiempo_servicio` int(11) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `id_sueldo_bruto` int(11) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `num` varchar(10) DEFAULT NULL,
  `urbanizacion` varchar(30) DEFAULT NULL,
  `id_dep` int(11) DEFAULT NULL,
  `id_prov` int(11) DEFAULT NULL,
  `id_dist` int(11) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_ocup_dependiente`),
  KEY `id_postulante` (`id_postulante`,`id_sector_economico`,`id_actividad`,`id_tiempo_servicio`,`id_sueldo_bruto`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ocupacion_dependiente`
--

LOCK TABLES `tb_ocupacion_dependiente` WRITE;
/*!40000 ALTER TABLE `tb_ocupacion_dependiente` DISABLE KEYS */;
INSERT INTO `tb_ocupacion_dependiente` VALUES (4,234,'Empleado','Contador',1,'CONCYTEC',2,2,'Empleado',NULL,'Calle Petroleo','123','Los Huachitos',2,1,3,'987452122'),(15,244,'Gerente','Ingeneria',1,'1',1,2,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,240,'Trabajador','Carpintero',1,'Rollos S.A.',3,1,'Trabajador',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,251,'Gerente','Ingeneria',1,'1',1,2,'2',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,248,'Gerente','Ingeneria',1,'1',1,2,'2',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,257,'Gerente','Ingeneria',1,'1',1,2,'2',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tb_ocupacion_dependiente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ocupacion_estudiante`
--

DROP TABLE IF EXISTS `tb_ocupacion_estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_ocupacion_estudiante` (
  `id_ocup_estudiante` int(11) NOT NULL AUTO_INCREMENT,
  `id_postulante` int(11) DEFAULT NULL,
  `centro_estudio` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_ocup_estudiante`),
  KEY `id_postulante` (`id_postulante`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ocupacion_estudiante`
--

LOCK TABLES `tb_ocupacion_estudiante` WRITE;
/*!40000 ALTER TABLE `tb_ocupacion_estudiante` DISABLE KEYS */;
INSERT INTO `tb_ocupacion_estudiante` VALUES (2,234,'PUCP'),(11,240,'PUCP');
/*!40000 ALTER TABLE `tb_ocupacion_estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ocupacion_independiente`
--

DROP TABLE IF EXISTS `tb_ocupacion_independiente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_ocupacion_independiente` (
  `id_ocup_independiente` int(11) NOT NULL AUTO_INCREMENT,
  `id_postulante` int(11) DEFAULT NULL,
  `ruc` varchar(15) DEFAULT NULL,
  `id_ingresos_mensuales` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ocup_independiente`),
  KEY `id_postulante` (`id_postulante`,`id_ingresos_mensuales`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ocupacion_independiente`
--

LOCK TABLES `tb_ocupacion_independiente` WRITE;
/*!40000 ALTER TABLE `tb_ocupacion_independiente` DISABLE KEYS */;
INSERT INTO `tb_ocupacion_independiente` VALUES (2,242,'1032322345',2),(4,244,'45445345345',2),(5,244,'444455555666',2),(14,240,'2030101030103',2),(15,251,'1032322345',2),(16,248,'1032322345',2),(17,257,'1032322345',2),(19,258,'34534534534',4);
/*!40000 ALTER TABLE `tb_ocupacion_independiente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ocupacion_jubilado_desempleado`
--

DROP TABLE IF EXISTS `tb_ocupacion_jubilado_desempleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_ocupacion_jubilado_desempleado` (
  `id_jubilado_desempleado` int(11) NOT NULL AUTO_INCREMENT,
  `id_postulante` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_jubilado_desempleado`),
  KEY `id_postulante` (`id_postulante`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ocupacion_jubilado_desempleado`
--

LOCK TABLES `tb_ocupacion_jubilado_desempleado` WRITE;
/*!40000 ALTER TABLE `tb_ocupacion_jubilado_desempleado` DISABLE KEYS */;
INSERT INTO `tb_ocupacion_jubilado_desempleado` VALUES (2,240);
/*!40000 ALTER TABLE `tb_ocupacion_jubilado_desempleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ocupacion_negocio`
--

DROP TABLE IF EXISTS `tb_ocupacion_negocio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_ocupacion_negocio` (
  `id_ocup_negocio` int(11) NOT NULL AUTO_INCREMENT,
  `id_postulante` int(11) DEFAULT NULL,
  `ruc` varchar(15) DEFAULT NULL,
  `id_ingresos_mensuales` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ocup_negocio`),
  KEY `id_postulante` (`id_postulante`,`id_ingresos_mensuales`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ocupacion_negocio`
--

LOCK TABLES `tb_ocupacion_negocio` WRITE;
/*!40000 ALTER TABLE `tb_ocupacion_negocio` DISABLE KEYS */;
INSERT INTO `tb_ocupacion_negocio` VALUES (2,234,'222233331111',3),(3,234,'55555544444',3),(9,240,'2030101030103',2);
/*!40000 ALTER TABLE `tb_ocupacion_negocio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_patrocinante`
--

DROP TABLE IF EXISTS `tb_patrocinante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_patrocinante` (
  `id_patrocinante` int(11) NOT NULL AUTO_INCREMENT,
  `id_postulante` int(11) DEFAULT NULL,
  `dni` varchar(20) DEFAULT NULL,
  `nombres` varchar(50) DEFAULT NULL,
  `apellido_paterno` varchar(50) DEFAULT NULL,
  `apellido_materno` varchar(50) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_patrocinante`),
  KEY `id_postulante` (`id_postulante`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_patrocinante`
--

LOCK TABLES `tb_patrocinante` WRITE;
/*!40000 ALTER TABLE `tb_patrocinante` DISABLE KEYS */;
INSERT INTO `tb_patrocinante` VALUES (6,257,'3334445','Manuek','Cabrera','Lopez','876567659');
/*!40000 ALTER TABLE `tb_patrocinante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_postulante_institucion`
--

DROP TABLE IF EXISTS `tb_postulante_institucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_postulante_institucion` (
  `id_pi` int(11) NOT NULL AUTO_INCREMENT,
  `id_postulante` int(11) DEFAULT NULL,
  `id_institucion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pi`),
  KEY `id_postulante` (`id_postulante`,`id_institucion`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_postulante_institucion`
--

LOCK TABLES `tb_postulante_institucion` WRITE;
/*!40000 ALTER TABLE `tb_postulante_institucion` DISABLE KEYS */;
INSERT INTO `tb_postulante_institucion` VALUES (1,234,2),(36,247,1),(37,248,1),(38,248,2),(39,248,3),(40,248,4),(49,249,1),(32,251,1),(33,251,2),(34,251,3),(35,251,4),(41,257,1),(42,257,2),(43,257,3),(44,257,4),(50,258,2);
/*!40000 ALTER TABLE `tb_postulante_institucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_provincia`
--

DROP TABLE IF EXISTS `tb_provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_provincia` (
  `id` int(11) NOT NULL,
  `iddpto` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iddpto` (`iddpto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_provincia`
--

LOCK TABLES `tb_provincia` WRITE;
/*!40000 ALTER TABLE `tb_provincia` DISABLE KEYS */;
INSERT INTO `tb_provincia` VALUES (1,1,'Bagua'),(2,1,'Bongara'),(3,1,'Chachapoyas'),(4,1,'Condorcanqui'),(5,1,'Luya'),(6,1,'Rodriguez de Mendoza'),(7,1,'Utcubamba'),(8,2,'Aija'),(9,2,'Antonio Raymondi'),(10,2,'Asuncion'),(11,2,'Bolognesi'),(12,2,'Carhuaz'),(13,2,'Carlos Fermin Fitzca'),(14,2,'Casma'),(15,2,'Corongo'),(16,2,'Huaraz'),(17,2,'Huari'),(18,2,'Huarmey'),(19,2,'Huaylas'),(20,2,'Mariscal Luzuriaga'),(21,2,'Ocros'),(22,2,'Pallasca'),(23,2,'Pomabamba'),(24,2,'Recuay'),(25,2,'Santa'),(26,2,'Sihuas'),(27,2,'Yungay'),(28,3,'Abancay'),(29,3,'Andahuaylas'),(30,3,'Antabamba'),(31,3,'Aymaraes'),(32,3,'Chincheros'),(33,3,'Cotabambas'),(34,3,'Grau'),(35,4,'Arequipa'),(36,4,'Camana'),(37,4,'Caraveli'),(38,4,'Castilla'),(39,4,'Caylloma'),(40,4,'Condesuyos'),(41,4,'Islay'),(42,4,'La Union'),(43,5,'Cangallo'),(44,5,'Huamanga'),(45,5,'Huanca Sancos'),(46,5,'Huanta'),(47,5,'La Mar'),(48,5,'Lucanas'),(49,5,'Parinacochas'),(50,5,'Paucar del Sara Sara'),(51,5,'Sucre'),(52,5,'Victor Fajardo'),(53,5,'Vilcas Huaman'),(54,6,'Cajabamba'),(55,6,'Cajamarca'),(56,6,'Celendin'),(57,6,'Chota'),(58,6,'Contumaza'),(59,6,'Cutervo'),(60,6,'Hualgayoc'),(61,6,'Jaen'),(62,6,'San Ignacio'),(63,6,'San Marcos'),(64,6,'San Miguel'),(65,6,'San Pablo'),(66,6,'Santa Cruz'),(67,7,'Callao'),(68,8,'Acomayo'),(69,8,'Anta'),(70,8,'Calca'),(71,8,'Canas'),(72,8,'Canchis'),(73,8,'Chumbivilcas'),(74,8,'Cusco'),(75,8,'Espinar'),(76,8,'La Convencion'),(77,8,'Paruro'),(78,8,'Paucartambo'),(79,8,'Quispicanchi'),(80,8,'Urubamba'),(81,9,'Acobamba'),(82,9,'Angaraes'),(83,9,'Castrovirreyna'),(84,9,'Churcampa'),(85,9,'Huancavelica'),(86,9,'Huaytara'),(87,9,'Tayacaja'),(88,10,'Ambo'),(89,10,'Dos de Mayo'),(90,10,'Huacaybamba'),(91,10,'Huamalies'),(92,10,'Huanuco'),(93,10,'Lauricocha'),(94,10,'Leoncio Prado'),(95,10,'Marañon'),(96,10,'Pachitea'),(97,10,'Puerto Inca'),(98,10,'Yarowilca'),(99,11,'Chincha'),(100,11,'Ica'),(101,11,'Nazca'),(102,11,'Palpa'),(103,11,'Pisco'),(104,12,'Chanchamayo'),(105,12,'Chupaca'),(106,12,'Concepcion'),(107,12,'Huancayo'),(108,12,'Jauja'),(109,12,'Junin'),(110,12,'Satipo'),(111,12,'Tarma'),(112,12,'Yauli'),(113,13,'Ascope'),(114,13,'Bolivar'),(115,13,'Chepen'),(116,13,'Gran Chimu'),(117,13,'Julcan'),(118,13,'Otuzco'),(119,13,'Pacasmayo'),(120,13,'Pataz'),(121,13,'Sanchez Carrion'),(122,13,'Santiago de Chuco'),(123,13,'Trujillo'),(124,13,'Viru'),(125,14,'Chiclayo'),(126,14,'Ferreñafe'),(127,14,'Lambayeque'),(128,15,'Barranca'),(129,15,'Cajatambo'),(130,15,'Canta'),(131,15,'Cañete'),(132,15,'Huaral'),(133,15,'Huarochiri'),(134,15,'Huaura'),(135,15,'Lima'),(136,15,'Oyon'),(137,15,'Yauyos'),(138,16,'Alto Amazonas'),(139,16,'Datem del Marañon'),(140,16,'Loreto'),(141,16,'Mariscal Ramon Casti'),(142,16,'Maynas'),(143,16,'Requena'),(144,16,'Ucayali'),(145,17,'Manu'),(146,17,'Tahuamanu'),(147,17,'Tambopata'),(148,18,'General Sanchez Cerr'),(149,18,'Ilo'),(150,18,'Mariscal Nieto'),(151,19,'Daniel Alcides Carri'),(152,19,'Oxapampa'),(153,19,'Pasco'),(154,20,'Ayabaca'),(155,20,'Huancabamba'),(156,20,'Morropon'),(157,20,'Paita'),(158,20,'Piura'),(159,20,'Sechura'),(160,20,'Sullana'),(161,20,'Talara'),(162,21,'Azangaro'),(163,21,'Carabaya'),(164,21,'Chucuito'),(165,21,'El Collao'),(166,21,'Huancane'),(167,21,'Lampa'),(168,21,'Melgar'),(169,21,'Moho'),(170,21,'Puno'),(171,21,'San Antonio de Putin'),(172,21,'San Roman'),(173,21,'Sandia'),(174,21,'Yunguyo'),(175,22,'Bellavista'),(176,22,'El Dorado'),(177,22,'Huallaga'),(178,22,'Lamas'),(179,22,'Mariscal Caceres'),(180,22,'Moyobamba'),(181,22,'Picota'),(182,22,'Rioja'),(183,22,'San Martin'),(184,22,'Tocache'),(185,23,'Candarave'),(186,23,'Jorge Basadre'),(187,23,'Tacna'),(188,23,'Tarata'),(189,24,'Contralmirante Villa'),(190,24,'Tumbes'),(191,24,'Zarumilla'),(192,25,'Atalaya'),(193,25,'Coronel Portillo'),(194,25,'Padre Abad'),(195,25,'Purus');
/*!40000 ALTER TABLE `tb_provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_prueba`
--

DROP TABLE IF EXISTS `tb_prueba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_prueba` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_prueba`
--

LOCK TABLES `tb_prueba` WRITE;
/*!40000 ALTER TABLE `tb_prueba` DISABLE KEYS */;
INSERT INTO `tb_prueba` VALUES (1,'Oscar','Maeda'),(2,'Jose','Taborda'),(3,'Victor','Rodriguez'),(4,'Luis','Martinez'),(5,'Alejandro','Aguilar');
/*!40000 ALTER TABLE `tb_prueba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_roles`
--

DROP TABLE IF EXISTS `tb_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_roles` (
  `id_rol` int(11) NOT NULL,
  `tipo_rol` varchar(50) DEFAULT NULL,
  `crear_solicitud` tinyint(1) DEFAULT NULL,
  `editar_solicitud` tinyint(1) DEFAULT NULL,
  `ver_solicitud` tinyint(1) DEFAULT NULL,
  `crear_obs_laft` tinyint(1) DEFAULT NULL,
  `editar_obs_laft` tinyint(1) DEFAULT NULL,
  `borrar_obs_laft` tinyint(1) DEFAULT NULL,
  `ver_obs_laft` tinyint(1) DEFAULT NULL,
  `crear_obs_admision` tinyint(1) DEFAULT NULL,
  `editar_obs_admision` tinyint(1) DEFAULT NULL,
  `borrar_obs_admision` tinyint(1) DEFAULT NULL,
  `ver_obs_admision` tinyint(1) DEFAULT NULL,
  `crear_obs_agencia` tinyint(1) DEFAULT NULL,
  `editar_obs_agencia` tinyint(1) DEFAULT NULL,
  `borrar_obs_agencia` tinyint(1) DEFAULT NULL,
  `ver_obs_agencia` tinyint(1) DEFAULT NULL,
  `crear_obs_comite` tinyint(1) DEFAULT NULL,
  `editar_obs_comite` tinyint(1) DEFAULT NULL,
  `borrar_obs_comite` tinyint(1) DEFAULT NULL,
  `ver_obs_comite` tinyint(1) DEFAULT NULL,
  `subir_adjunto` tinyint(1) DEFAULT NULL,
  `aprob_comite` tinyint(1) DEFAULT NULL,
  `aprob_inmediata` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_rol`),
  KEY `tipo_rol` (`tipo_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_roles`
--

LOCK TABLES `tb_roles` WRITE;
/*!40000 ALTER TABLE `tb_roles` DISABLE KEYS */;
INSERT INTO `tb_roles` VALUES (1,'Observador LAFT',0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `tb_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_sector`
--

DROP TABLE IF EXISTS `tb_sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_sector` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sector`
--

LOCK TABLES `tb_sector` WRITE;
/*!40000 ALTER TABLE `tb_sector` DISABLE KEYS */;
INSERT INTO `tb_sector` VALUES (1,'Financiero'),(2,'Agricola'),(3,'Tecnologia'),(4,'Mineria'),(5,'Gobierno');
/*!40000 ALTER TABLE `tb_sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_sector_economico`
--

DROP TABLE IF EXISTS `tb_sector_economico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_sector_economico` (
  `id_sector_economico` int(11) NOT NULL,
  `sector_economico` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_sector_economico`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sector_economico`
--

LOCK TABLES `tb_sector_economico` WRITE;
/*!40000 ALTER TABLE `tb_sector_economico` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_sector_economico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_sueldo_bruto`
--

DROP TABLE IF EXISTS `tb_sueldo_bruto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_sueldo_bruto` (
  `id_sueldo_bruto` int(11) NOT NULL,
  `sueldo_bruto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_sueldo_bruto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sueldo_bruto`
--

LOCK TABLES `tb_sueldo_bruto` WRITE;
/*!40000 ALTER TABLE `tb_sueldo_bruto` DISABLE KEYS */;
INSERT INTO `tb_sueldo_bruto` VALUES (1,'Entre S/1,000 a S/2,000'),(2,'Entre S/2,001 a S/4,000'),(3,'Entre S/4,001 a S/7,000'),(4,'Entre S/7,001 a S/10,000'),(5,'Entre S/10,001 a S/20,000');
/*!40000 ALTER TABLE `tb_sueldo_bruto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tiempo_servicio`
--

DROP TABLE IF EXISTS `tb_tiempo_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tiempo_servicio` (
  `id_tiempo_servicio` int(11) NOT NULL,
  `tiempo_servicio` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_tiempo_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tiempo_servicio`
--

LOCK TABLES `tb_tiempo_servicio` WRITE;
/*!40000 ALTER TABLE `tb_tiempo_servicio` DISABLE KEYS */;
INSERT INTO `tb_tiempo_servicio` VALUES (1,'1 año'),(2,'2 años'),(3,'3 años'),(4,'4 años'),(5,'5 años');
/*!40000 ALTER TABLE `tb_tiempo_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipo_cuenta`
--

DROP TABLE IF EXISTS `tb_tipo_cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tipo_cuenta` (
  `id_tipo_cuenta` int(11) NOT NULL,
  `tipo_cuenta` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_cuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipo_cuenta`
--

LOCK TABLES `tb_tipo_cuenta` WRITE;
/*!40000 ALTER TABLE `tb_tipo_cuenta` DISABLE KEYS */;
INSERT INTO `tb_tipo_cuenta` VALUES (1,'Ahorro'),(2,'Bancomunada'),(3,'Corriente');
/*!40000 ALTER TABLE `tb_tipo_cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipo_via`
--

DROP TABLE IF EXISTS `tb_tipo_via`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tipo_via` (
  `id` int(11) NOT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipo_via`
--

LOCK TABLES `tb_tipo_via` WRITE;
/*!40000 ALTER TABLE `tb_tipo_via` DISABLE KEYS */;
INSERT INTO `tb_tipo_via` VALUES (1,'Jirón'),(2,'Avenida'),(3,'Calle'),(4,'Plaza');
/*!40000 ALTER TABLE `tb_tipo_via` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipo_vivienda`
--

DROP TABLE IF EXISTS `tb_tipo_vivienda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tipo_vivienda` (
  `id` int(11) NOT NULL,
  `tipo` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipo_vivienda`
--

LOCK TABLES `tb_tipo_vivienda` WRITE;
/*!40000 ALTER TABLE `tb_tipo_vivienda` DISABLE KEYS */;
INSERT INTO `tb_tipo_vivienda` VALUES (1,'propia'),(2,'alquilada'),(3,'familiar');
/*!40000 ALTER TABLE `tb_tipo_vivienda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ubicacion`
--

DROP TABLE IF EXISTS `tb_ubicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_ubicacion` (
  `id_ubicacion` int(11) NOT NULL,
  `departamento` varchar(50) DEFAULT NULL,
  `provincia` varchar(70) DEFAULT NULL,
  `distrito` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id_ubicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ubicacion`
--

LOCK TABLES `tb_ubicacion` WRITE;
/*!40000 ALTER TABLE `tb_ubicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_ubicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) DEFAULT NULL,
  `password` blob,
  `token` blob,
  `id_rol` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `id_rol` (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario`
--

LOCK TABLES `tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;
INSERT INTO `tb_usuario` VALUES (1,'jtaborda',_binary '1234',_binary '959d4950-3952-490a-8d6c-23c3c2febed3',1),(2,'omelgarejo',_binary 'abcd1234',_binary 'af293b43-5a2c-445b-b688-adabb627783b',1),(9,'cbarnuevo',_binary 'abcd1234',_binary 'c786712e-d251-459d-ac62-61b33ab44ad5',1),(10,'omaeda',_binary 'abcd1234',_binary '6add2751-8b4a-40e2-b7c3-17337deb9f78',1);
/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-16 23:01:21
