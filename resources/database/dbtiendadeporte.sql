-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: tiendadeporte
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articulo`
--

DROP TABLE IF EXISTS `articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulo` (
  `idarticulo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` text,
  `precio` float DEFAULT NULL,
  `foto` varchar(20) DEFAULT NULL,
  `idcategoria` int DEFAULT NULL,
  PRIMARY KEY (`idarticulo`),
  KEY `cat_ar_cfk` (`idcategoria`),
  CONSTRAINT `cat_ar_cfk` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo`
--

LOCK TABLES `articulo` WRITE;
/*!40000 ALTER TABLE `articulo` DISABLE KEYS */;
INSERT INTO `articulo` VALUES (1,'Polo Adidas','Talla S-M-L',49.9,'poloadidas.jpg',1),(2,'Short Gucci','Talla M',80.5,'shortgucci.jpg',1),(3,'Medias Umbro','Talla S-L',20.35,'mediasumbro.jpg',1),(4,'Gorra NY','Colores disponibles: variados',50.8,'gorrany.jpg',1),(5,'Casaca Adidas LE','Talla X-XL',99.9,'casacaadidas.jpg',1),(6,'Buzo Nike Minimalista','Colores disponibles: negro y gris',120.6,'buzonike.jpg',1),(7,'Soga BR','Longitud 5 metros',19.9,'sogabr.jpg',2),(8,'Guantes ','Colores disponibles: azul y rojo. Reajustable',15.3,'guantes.jpg',2),(9,'Umbro Lite 3.5','Talla 40-46',149.9,'umbrolite.jpg',3),(10,'Nike XE','Talla 35-40',220.3,'nike.jpg',3),(11,'Adidas Futsal','Talla 40-42',180.69,'adidasfutsal.jpg',3),(12,'Adidas X Speed','Talla 39-40',249.9,'adidasxspeed.jpg',4),(13,'SmartWatch K22','Colores disponibles: gris',490.2,'smartrwatchk22.jpg',5),(14,'Leggins GymShark','Colores disponibles: rosado, gris y negro',129,'leggins.jpg',1),(15,'Sudadera Adidas','Talla M-L',149,'sudaderaadidas.jpg',1),(16,'Sujetador Versace','Femenino. Color rojo, verde, rosa y crema',205,'sujetadorversace.jpg',1),(17,'Short Umbro','Doble capa. Colores azul y celeste',69.99,'shortumbro.jpg',1),(18,'Polo Marathon','Teconología Dri-fit',89.9,'polomaratthon.jpg',1),(19,'Casaca Joma ','Femenino. Tipo cortaviento. Color mostaza y morado',238.99,'casacajoma.jpg',1),(20,'Bolso Deportivo Adidas','Gran espacio. Algodón interno',79,'bolso.jpg',2),(21,'Pelota Qatar 2022 Adidas','En caja. Sellado. Oficial ',99,'pelota.png',2),(22,'Bandas elásticas','Para resistencia. Diversos colores',27.99,'bandaselasticas.jpg',2),(23,'Correa de yoga ','Colorido. Larga duración',18,'correayoga.jpg',2),(24,'Set de ligas K6','Idea para el GYM',79.9,'ligas.jpg',2),(25,'Tomatodo Shaker ','Pack x6 ',29.9,'tomatodo.png',2),(26,'Guantes de Futbol','Tamaño junior. De cuero. Color rojo',34,'guantes.jpg',2),(27,'Adidas EQ20','Tipo croosfing',279.99,'adidaseq20.jpg',1),(28,'Nike Revolution 6JN','Tipo futbol y futsal  ',239.99,'nikefutbol.jpg',5),(29,'Adidas Duramo SL ','Resistente al agua y barro. Ideal para cualquier escenario',149,'adidasduramo.jpg',3),(30,'Reebok Lite','Tipo futsal',139.99,'reeboklite.jpg',3),(31,'Trekking Oxtrail','Tallas 40-42-45. Negro y crema',369.9,'trekking.jpg',3),(32,'Nike Legend','Unisex. Tallas 40-42',249.9,'nikelegend.png',4),(33,'Puma future 4.3','Stock 10 unidades. Solo delivery',219.99,'pumafuture.jpg',4),(34,'Adidas Predator Edge','Color amarillo y blanco. Rojo y azul. Fluorescente con blanco ',259.99,'adidaspredator.jpg',4),(35,'GoPro deportiva','Acuatica. Resistente al polvo y barro',92,'gopro.jpg',5),(36,'Reloj pulsómetro ','Con doble banda. Ajustable',79,'reloj.png',5),(37,'SmartWatch Bip','Marca Xiamoi. Stock 50 unidades',210,'smartwatchbip.jpg',5),(38,'Airpods Pro','Marca Apple. Sellados en caja.',999,'airpods.jpg',5),(39,'iPod touch 7° G','Marca Apple. Colores variados',599,'ipodtouch.jpg',5),(40,'Toalla Krea','Colores variados',23.99,'toalla.png',6),(41,'Gel de ducha','Marca Nivea',15.2,'gelducha.jpg',6),(42,'Jabon Avena','Con menta y aloevera',12.9,'jabonavena.jpg',6),(43,'Toallas húmedas','Adultos. Algodón 100%. Pack 6 unidades.',39.9,'toallashumedas.jpg',6),(44,'Enguaje Bucal Listerine','Poder antisarro. 500 mL',21.99,'enguaje.jpg',6),(45,'Toallas higienicas Nosotras','Natural. Pack 10 unidades',9.1,'toallashigien.png',6),(46,'Desodorante en barra ','Rexona. Hombre. 50 gr',13.9,'desodorante.jpg',6),(47,'Antitranspirante ISANA ','Para pies. 150 mL ',16.8,'antitranspirante.jpg',6),(48,'Talco ISANA','Pack 2. Triple protección',13.3,'talco.jpg',6),(49,'Antitranspirante AXE Freestyle','Edición Limitada. Aroma chocolate. 152 mL',13.9,'antitransaxe.jpg',6),(50,'Pasta dental Colgate','120mL. Edición Ice',9.9,'colgate.jpg',6);
/*!40000 ALTER TABLE `articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `idcategoria` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'vestimenta'),(2,'accesorios'),(3,'zapatillas'),(4,'chimpunes'),(5,'tecnodeporte'),(6,'aseo');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idcliente` int NOT NULL AUTO_INCREMENT,
  `apellidos` varchar(45) DEFAULT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `idpais` int DEFAULT NULL,
  PRIMARY KEY (`idcliente`),
  KEY `pa_cli_cfk` (`idpais`),
  CONSTRAINT `pa_cli_cfk` FOREIGN KEY (`idpais`) REFERENCES `pais` (`idpais`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Saavedra Greff','Yoshua Ivan','yoshua@gmail.com',1),(2,'Rojas Salazar','Julian Elias','julian@gmail.com',2),(3,'Fernandez Larco','Paola Selena','paola@gmail.com',5),(4,'Infantes Guillen','Alberto Ulises','alberto@gmail.com',3),(5,'Diaz Sotomayor','Frank Daniel','frank@gmail.com',7),(6,'Mejia Oviedo','Marie luisa','mari@gmail.com',4),(7,'Ochoa Saenz','Ana Korian','ana@gmail.com',10),(8,'Castillo Ruiz','Omar Salvador','omar@gmail.com',15),(9,'Mora Lupe','Martin Krushev','martin@gmail.com',12),(10,'Flores Huaman','Lisseth Damaris','lissethhuaman@gmail.com',25);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `idempleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apaterno` varchar(45) DEFAULT NULL,
  `amaterno` varchar(45) DEFAULT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idempleado`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Lucas','Flinders','Lopez','Supervisor'),(2,'Matias','Cuevas','Ferrer','Reponedor'),(3,'Sofia','Bordona','Perez','Cajera'),(4,'Sabrina','Carrión','Sotelo','Contadora'),(5,'Angel','Marca','Guzmán','Reponedor'),(6,'Marcos','Salazar','Gomez','Analista'),(7,'Andrés','Leon','Paredes','Proveedor'),(8,'Johan','Gutierrez','Palomino','Supervisor'),(9,'Gerardo','Torres','Aguilar','Subgerente '),(10,'Enrique','Perez','De la Cruz','Limpieza'),(11,'Mario','Chavez','Vega','Cajero'),(12,'David','Garcia','Campos','Contador'),(13,'Alberto','Montes','Alvarado','Seguridad'),(14,'Alejandro','Oca','Mamani','Seguridad'),(15,'Isabel','Silva','Ruiz','Reponedora'),(16,'Sandra','Belmonte','Vilca','Limpieza'),(17,'Sergio','Alvarez','Barco','Limpieza'),(18,'Susana','Morales','Casas','Asistente'),(19,'Carla','Villegas','Delgado','Subgerenta'),(20,'Thiago','Pastor','Soto','Gerente'),(21,'Brian','Inca','Huamaní','Analista de Sistemas'),(23,'Luis','Iberico','Dibós','Reponedor'),(24,'Miguel','Santino','Agapito','Limpieza');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `idpais` int NOT NULL AUTO_INCREMENT,
  `pais` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpais`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Perú'),(2,'Chile'),(3,'Colombia'),(4,'Venezuela'),(5,'Costa Rica'),(6,'EE.UU'),(7,'Argentina'),(8,'Brasil'),(9,'Francia'),(10,'Egipto'),(12,'Japón'),(13,'Nicaragua'),(14,'España'),(15,'Paraguay'),(16,'Italia'),(17,'Marruecos'),(18,'Taiwan'),(19,'Corea'),(20,'Bolivia'),(21,'Ecuador'),(22,'Mexico'),(23,'Canadá'),(24,'El Salvador'),(25,'Haití'),(30,'China');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_detalle`
--

DROP TABLE IF EXISTS `pedido_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_detalle` (
  `iddetalle` int NOT NULL AUTO_INCREMENT,
  `idarticulo` int NOT NULL,
  `idpedido` int NOT NULL,
  `precio` float DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `subtotal` float DEFAULT NULL,
  PRIMARY KEY (`iddetalle`,`idarticulo`,`idpedido`),
  KEY `ar_pedet_cfk` (`idarticulo`),
  KEY `pedenc_pedet_cfk` (`idpedido`),
  CONSTRAINT `ar_pedet_cfk` FOREIGN KEY (`idarticulo`) REFERENCES `articulo` (`idarticulo`),
  CONSTRAINT `pedenc_pedet_cfk` FOREIGN KEY (`idpedido`) REFERENCES `pedido_encabezado` (`idpedido`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_detalle`
--

LOCK TABLES `pedido_detalle` WRITE;
/*!40000 ALTER TABLE `pedido_detalle` DISABLE KEYS */;
INSERT INTO `pedido_detalle` VALUES (1,1,1,49.9,1,49.9),(2,4,1,50.8,1,50.8),(3,5,1,99.9,1,99.9),(4,12,2,249.9,2,499.8),(5,8,2,15.3,2,30.6),(6,7,2,19.9,1,19.9),(7,2,3,80.5,3,241.5),(8,5,3,99.9,2,199.8),(9,13,3,490.2,5,2451),(10,10,4,220.3,2,440.6),(11,11,4,180.69,1,180.69),(12,3,4,101.75,5,101.75),(21,38,5,999,1,999),(22,39,5,599,1,599),(23,38,6,999,1,999),(24,39,6,599,1,599),(25,1,7,49.9,3,149.7),(26,48,8,13.3,2,26.6),(27,50,8,9.9,5,49.5),(28,4,9,50.8,2,101.6),(29,35,9,92,1,92),(30,5,10,99.9,3,299.7),(31,16,11,205,2,410),(32,20,11,79,2,158),(33,6,12,120.6,3,361.8),(34,48,12,13.3,5,66.5),(35,50,12,9.9,2,19.8),(36,39,13,599,2,1198),(37,40,13,23.99,4,95.96),(38,25,13,29.9,1,29.9);
/*!40000 ALTER TABLE `pedido_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_encabezado`
--

DROP TABLE IF EXISTS `pedido_encabezado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_encabezado` (
  `idpedido` int NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `total` float DEFAULT NULL,
  `idempleado` int DEFAULT NULL,
  `idcliente` int DEFAULT NULL,
  PRIMARY KEY (`idpedido`),
  KEY `emp_pedenc_cfk` (`idempleado`),
  KEY `cli_pedenc_cfk` (`idcliente`),
  CONSTRAINT `cli_pedenc_cfk` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`),
  CONSTRAINT `emp_pedenc_cfk` FOREIGN KEY (`idempleado`) REFERENCES `empleado` (`idempleado`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_encabezado`
--

LOCK TABLES `pedido_encabezado` WRITE;
/*!40000 ALTER TABLE `pedido_encabezado` DISABLE KEYS */;
INSERT INTO `pedido_encabezado` VALUES (1,'2022-01-10',200.6,3,1),(2,'2022-03-15',550.3,2,2),(3,'2022-08-25',2892.3,1,3),(4,'2022-10-18',723.04,3,1),(5,'2022-12-26',1598,21,2),(6,'2022-12-26',1598,21,2),(7,'2022-12-26',149.7,1,3),(8,'2022-12-26',76.1,3,10),(9,'2022-12-26',193.6,10,1),(10,'2022-12-26',299.7,3,3),(11,'2022-12-26',568,17,4),(12,'2022-12-26',448.1,17,9),(13,'2022-12-26',1323.86,21,9);
/*!40000 ALTER TABLE `pedido_encabezado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idusuario` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `idempleado` int DEFAULT NULL,
  PRIMARY KEY (`idusuario`),
  KEY `emp_us_cfk` (`idempleado`),
  CONSTRAINT `emp_us_cfk` FOREIGN KEY (`idempleado`) REFERENCES `empleado` (`idempleado`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'mcuevas','mcuevas123','A',2),(2,'lflinders','lflinders123','A',1),(3,'sbordona','sbordona123','A',3),(4,'binca','binca123','A',21),(5,'scarrion','scarrion123','A',4),(6,'amarca','amarca132','A',5),(7,'msalazar','msalazar123','A',6),(8,'aleon','aleon123','A',7),(9,'jgutierrez','jgutierrez123','A',8),(10,'gtorres','gtorres123','A',9),(11,'liberico','liberico123','A',23);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-15  6:44:44
