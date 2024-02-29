-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: rapid_mark
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id_categoria` varchar(36) NOT NULL DEFAULT uuid(),
  `nombre_categoria` varchar(50) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES ('8b20f884-d662-11ee-92c2-00ff8de8c02d','Electrónica'),('8b23db89-d662-11ee-92c2-00ff8de8c02d','Ropa'),('8b247d37-d662-11ee-92c2-00ff8de8c02d','Alimentos'),('8b2504fd-d662-11ee-92c2-00ff8de8c02d','Juguetes'),('8b2565f3-d662-11ee-92c2-00ff8de8c02d','Libros'),('8b25e7b9-d662-11ee-92c2-00ff8de8c02d','Herramientas'),('8b269523-d662-11ee-92c2-00ff8de8c02d','Jardinería'),('8b271d35-d662-11ee-92c2-00ff8de8c02d','Deportes'),('8b278ee1-d662-11ee-92c2-00ff8de8c02d','Muebles'),('8b27f848-d662-11ee-92c2-00ff8de8c02d','Cosméticos'),('bbdcc4fb-d658-11ee-92c2-00ff8de8c02d','Tecnología'),('bbdce432-d658-11ee-92c2-00ff8de8c02d','Ropa'),('bbdcf619-d658-11ee-92c2-00ff8de8c02d','Hogar'),('bbdcf6c0-d658-11ee-92c2-00ff8de8c02d','Alimentos'),('bbdcf755-d658-11ee-92c2-00ff8de8c02d','Juguetes'),('bbdcf78b-d658-11ee-92c2-00ff8de8c02d','Deportes'),('bbdcf7ba-d658-11ee-92c2-00ff8de8c02d','Belleza'),('bbdcf7e9-d658-11ee-92c2-00ff8de8c02d','Salud'),('bbdcf866-d658-11ee-92c2-00ff8de8c02d','Libros'),('bbdcf89c-d658-11ee-92c2-00ff8de8c02d','Papelería');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventarios`
--

DROP TABLE IF EXISTS `inventarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventarios` (
  `id_inventario` varchar(36) NOT NULL DEFAULT uuid(),
  `id_producto` varchar(36) DEFAULT NULL,
  `cantidad_disponible` int(11) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  PRIMARY KEY (`id_inventario`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `inventarios_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventarios`
--

LOCK TABLES `inventarios` WRITE;
/*!40000 ALTER TABLE `inventarios` DISABLE KEYS */;
INSERT INTO `inventarios` VALUES ('580ded26-d6a1-11ee-92c2-00ff8de8c02d','38d3aa3e-d663-11ee-92c2-00ff8de8c02d',15,'2024-03-01'),('580fd6ca-d6a1-11ee-92c2-00ff8de8c02d','38d3aa3e-d663-11ee-92c2-00ff8de8c02d',20,'2024-03-02'),('581129fc-d6a1-11ee-92c2-00ff8de8c02d','38d3aa3e-d663-11ee-92c2-00ff8de8c02d',30,'2024-03-03'),('5812f3b2-d6a1-11ee-92c2-00ff8de8c02d','38d3aa3e-d663-11ee-92c2-00ff8de8c02d',40,'2024-03-04'),('5813bd7e-d6a1-11ee-92c2-00ff8de8c02d','38d3aa3e-d663-11ee-92c2-00ff8de8c02d',50,'2024-03-05'),('5814947b-d6a1-11ee-92c2-00ff8de8c02d','38d3aa3e-d663-11ee-92c2-00ff8de8c02d',60,'2024-03-06'),('5815095f-d6a1-11ee-92c2-00ff8de8c02d','38d3aa3e-d663-11ee-92c2-00ff8de8c02d',70,'2024-03-07'),('5815b7a7-d6a1-11ee-92c2-00ff8de8c02d','38d3aa3e-d663-11ee-92c2-00ff8de8c02d',80,'2024-03-08'),('58166665-d6a1-11ee-92c2-00ff8de8c02d','38d3aa3e-d663-11ee-92c2-00ff8de8c02d',90,'2024-03-09'),('58172894-d6a1-11ee-92c2-00ff8de8c02d','38d3aa3e-d663-11ee-92c2-00ff8de8c02d',100,'2024-03-10'),('582c477b-d65a-11ee-92c2-00ff8de8c02d','d0b50468-d659-11ee-92c2-00ff8de8c02d',10,'2024-02-28'),('582c5796-d65a-11ee-92c2-00ff8de8c02d','d0b50468-d659-11ee-92c2-00ff8de8c02d',20,'2024-02-28'),('582c5839-d65a-11ee-92c2-00ff8de8c02d','d0b5c8ea-d659-11ee-92c2-00ff8de8c02d',30,'2024-02-28'),('582c588e-d65a-11ee-92c2-00ff8de8c02d','d0b5c92e-d659-11ee-92c2-00ff8de8c02d',40,'2024-02-28'),('582c58e7-d65a-11ee-92c2-00ff8de8c02d','d0b5c97a-d659-11ee-92c2-00ff8de8c02d',50,'2024-02-28'),('582c5935-d65a-11ee-92c2-00ff8de8c02d','d0b5c9bf-d659-11ee-92c2-00ff8de8c02d',60,'2024-02-28'),('582c5984-d65a-11ee-92c2-00ff8de8c02d','d0b5ca10-d659-11ee-92c2-00ff8de8c02d',70,'2024-02-28'),('582c59d4-d65a-11ee-92c2-00ff8de8c02d','d0b5ca10-d659-11ee-92c2-00ff8de8c02d',80,'2024-02-28'),('582c5a4b-d65a-11ee-92c2-00ff8de8c02d','d0b5ca57-d659-11ee-92c2-00ff8de8c02d',90,'2024-02-28'),('582c5b07-d65a-11ee-92c2-00ff8de8c02d','d0b5cabc-d659-11ee-92c2-00ff8de8c02d',100,'2024-02-28');
/*!40000 ALTER TABLE `inventarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientos_inventario`
--

DROP TABLE IF EXISTS `movimientos_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimientos_inventario` (
  `id_movimiento_inventario` varchar(36) NOT NULL DEFAULT uuid(),
  `id_inventario` varchar(36) DEFAULT NULL,
  `tipo_movimiento` enum('Entrada','Salida') NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha_movimiento` date NOT NULL,
  PRIMARY KEY (`id_movimiento_inventario`),
  KEY `id_inventario` (`id_inventario`),
  CONSTRAINT `movimientos_inventario_ibfk_1` FOREIGN KEY (`id_inventario`) REFERENCES `inventarios` (`id_inventario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientos_inventario`
--

LOCK TABLES `movimientos_inventario` WRITE;
/*!40000 ALTER TABLE `movimientos_inventario` DISABLE KEYS */;
INSERT INTO `movimientos_inventario` VALUES ('6bb7d464-d6a6-11ee-92c2-00ff8de8c02d','580ded26-d6a1-11ee-92c2-00ff8de8c02d','Entrada',10,'2024-03-21'),('7cdaee4d-d6a6-11ee-92c2-00ff8de8c02d','580ded26-d6a1-11ee-92c2-00ff8de8c02d','Salida',5,'2024-03-22'),('a2010dc0-d65a-11ee-92c2-00ff8de8c02d','582c477b-d65a-11ee-92c2-00ff8de8c02d','Entrada',5,'2024-02-28'),('a201d331-d65a-11ee-92c2-00ff8de8c02d','582c477b-d65a-11ee-92c2-00ff8de8c02d','Entrada',10,'2024-02-28'),('a201d593-d65a-11ee-92c2-00ff8de8c02d','582c5796-d65a-11ee-92c2-00ff8de8c02d','Entrada',15,'2024-02-28'),('a201d72e-d65a-11ee-92c2-00ff8de8c02d','582c5839-d65a-11ee-92c2-00ff8de8c02d','Salida',2,'2024-02-28'),('a201d776-d65a-11ee-92c2-00ff8de8c02d','582c5935-d65a-11ee-92c2-00ff8de8c02d','Salida',1,'2024-02-28'),('a201d7b5-d65a-11ee-92c2-00ff8de8c02d','582c5984-d65a-11ee-92c2-00ff8de8c02d','Entrada',20,'2024-02-28'),('a201d7f2-d65a-11ee-92c2-00ff8de8c02d','582c5a4b-d65a-11ee-92c2-00ff8de8c02d','Entrada',25,'2024-02-28'),('a201d8e2-d65a-11ee-92c2-00ff8de8c02d','582c5b07-d65a-11ee-92c2-00ff8de8c02d','Salida',3,'2024-02-28'),('a201d97f-d65a-11ee-92c2-00ff8de8c02d','582c59d4-d65a-11ee-92c2-00ff8de8c02d','Salida',2,'2024-02-28'),('a201d9e2-d65a-11ee-92c2-00ff8de8c02d','582c5984-d65a-11ee-92c2-00ff8de8c02d','Entrada',30,'2024-02-28'),('d8caf031-d6a1-11ee-92c2-00ff8de8c02d','580ded26-d6a1-11ee-92c2-00ff8de8c02d','Entrada',5,'2024-03-11'),('d8cc1a6a-d6a1-11ee-92c2-00ff8de8c02d',NULL,'Salida',3,'2024-03-12'),('d8ccd9d2-d6a1-11ee-92c2-00ff8de8c02d',NULL,'Entrada',10,'2024-03-13'),('d8cdc1a0-d6a1-11ee-92c2-00ff8de8c02d',NULL,'Salida',2,'2024-03-14'),('d8cefcda-d6a1-11ee-92c2-00ff8de8c02d',NULL,'Entrada',15,'2024-03-15'),('d8d00a69-d6a1-11ee-92c2-00ff8de8c02d',NULL,'Salida',1,'2024-03-16'),('d8d0bf98-d6a1-11ee-92c2-00ff8de8c02d',NULL,'Entrada',20,'2024-03-17'),('d8d14302-d6a1-11ee-92c2-00ff8de8c02d',NULL,'Salida',4,'2024-03-18'),('d8d20b42-d6a1-11ee-92c2-00ff8de8c02d',NULL,'Entrada',25,'2024-03-19'),('d8d2d37e-d6a1-11ee-92c2-00ff8de8c02d',NULL,'Salida',5,'2024-03-20');
/*!40000 ALTER TABLE `movimientos_inventario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER actualizar_cantidad_disponible
BEFORE INSERT ON movimientos_inventario
FOR EACH ROW
BEGIN
  DECLARE nuevo_saldo INT;

  SET nuevo_saldo = (
    SELECT cantidad_disponible
    FROM inventarios
    WHERE id_inventario = NEW.id_inventario
  );

  IF NEW.tipo_movimiento = 'Entrada' THEN
    SET nuevo_saldo = nuevo_saldo + NEW.cantidad;
  ELSEIF NEW.tipo_movimiento = 'Salida' THEN
    SET nuevo_saldo = nuevo_saldo - NEW.cantidad;
  END IF;

  UPDATE inventarios
  SET cantidad_disponible = nuevo_saldo
  WHERE id_inventario = NEW.id_inventario;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id_producto` varchar(36) NOT NULL DEFAULT uuid(),
  `nombre_producto` varchar(50) NOT NULL,
  `descripcion_producto` varchar(255) NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `id_proveedor` varchar(36) DEFAULT NULL,
  `id_categoria` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `id_proveedor` (`id_proveedor`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`),
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES ('38d3aa3e-d663-11ee-92c2-00ff8de8c02d','Producto 1','Descripción del Producto 1',100.00,'c835600c-d658-11ee-92c2-00ff8de8c02d','8b20f884-d662-11ee-92c2-00ff8de8c02d'),('38d42ea4-d663-11ee-92c2-00ff8de8c02d','Producto 2','Descripción del Producto 2',150.00,'c835600c-d658-11ee-92c2-00ff8de8c02d','8b20f884-d662-11ee-92c2-00ff8de8c02d'),('38d4ac33-d663-11ee-92c2-00ff8de8c02d','Producto 3','Descripción del Producto 3',200.00,'c835600c-d658-11ee-92c2-00ff8de8c02d','8b20f884-d662-11ee-92c2-00ff8de8c02d'),('38d54760-d663-11ee-92c2-00ff8de8c02d','Producto 4','Descripción del Producto 4',250.00,'c835600c-d658-11ee-92c2-00ff8de8c02d','8b20f884-d662-11ee-92c2-00ff8de8c02d'),('38d5c84f-d663-11ee-92c2-00ff8de8c02d','Producto 5','Descripción del Producto 5',300.00,'c835600c-d658-11ee-92c2-00ff8de8c02d','8b20f884-d662-11ee-92c2-00ff8de8c02d'),('38d65abc-d663-11ee-92c2-00ff8de8c02d','Producto 6','Descripción del Producto 6',350.00,'c835600c-d658-11ee-92c2-00ff8de8c02d','8b20f884-d662-11ee-92c2-00ff8de8c02d'),('38d6dd28-d663-11ee-92c2-00ff8de8c02d','Producto 7','Descripción del Producto 7',400.00,'c835600c-d658-11ee-92c2-00ff8de8c02d','8b20f884-d662-11ee-92c2-00ff8de8c02d'),('38d75a15-d663-11ee-92c2-00ff8de8c02d','Producto 8','Descripción del Producto 8',450.00,'c835600c-d658-11ee-92c2-00ff8de8c02d','8b20f884-d662-11ee-92c2-00ff8de8c02d'),('38d7e306-d663-11ee-92c2-00ff8de8c02d','Producto 9','Descripción del Producto 9',500.00,'c835600c-d658-11ee-92c2-00ff8de8c02d','8b20f884-d662-11ee-92c2-00ff8de8c02d'),('38d863f7-d663-11ee-92c2-00ff8de8c02d','Producto 10','Descripción del Producto 10',550.00,'c835600c-d658-11ee-92c2-00ff8de8c02d','8b20f884-d662-11ee-92c2-00ff8de8c02d'),('d0b50468-d659-11ee-92c2-00ff8de8c02d','Smartphone Galaxy S23','El último smartphone de Samsung',800.00,'c835600c-d658-11ee-92c2-00ff8de8c02d','bbdcc4fb-d658-11ee-92c2-00ff8de8c02d'),('d0b5c83b-d659-11ee-92c2-00ff8de8c02d','iPhone 15 Pro','El nuevo iPhone de Apple',1000.00,'c836301b-d658-11ee-92c2-00ff8de8c02d','bbdcc4fb-d658-11ee-92c2-00ff8de8c02d'),('d0b5c8ea-d659-11ee-92c2-00ff8de8c02d','Zapatillas Air Force 1','Zapatillas clásicas de Nike',150.00,'c8363139-d658-11ee-92c2-00ff8de8c02d','bbdcf78b-d658-11ee-92c2-00ff8de8c02d'),('d0b5c92e-d659-11ee-92c2-00ff8de8c02d','Camiseta Adidas Originals','Camiseta casual de Adidas',50.00,'c8363139-d658-11ee-92c2-00ff8de8c02d','bbdce432-d658-11ee-92c2-00ff8de8c02d'),('d0b5c97a-d659-11ee-92c2-00ff8de8c02d','Televisor Sony Bravia X80K','Televisor 4K de Sony',500.00,'c83631e5-d658-11ee-92c2-00ff8de8c02d','bbdcf619-d658-11ee-92c2-00ff8de8c02d'),('d0b5c9bf-d659-11ee-92c2-00ff8de8c02d','Refrigerador LG InstaView Door-in-Door','Refrigerador inteligente de LG',1000.00,'c83631e5-d658-11ee-92c2-00ff8de8c02d','bbdcf619-d658-11ee-92c2-00ff8de8c02d'),('d0b5ca10-d659-11ee-92c2-00ff8de8c02d','Surface Laptop Studio','Portátil convertible de Microsoft',1500.00,'c8363233-d658-11ee-92c2-00ff8de8c02d','bbdcf619-d658-11ee-92c2-00ff8de8c02d'),('d0b5ca57-d659-11ee-92c2-00ff8de8c02d','XPS 13 Plus','Portátil ultradelgado de Dell',1200.00,'c8363266-d658-11ee-92c2-00ff8de8c02d','bbdcc4fb-d658-11ee-92c2-00ff8de8c02d'),('d0b5cabc-d659-11ee-92c2-00ff8de8c02d','Spectre x360 14','Portátil convertible de HP',1300.00,'c83632a7-d658-11ee-92c2-00ff8de8c02d','bbdcc4fb-d658-11ee-92c2-00ff8de8c02d'),('d0b5cb07-d659-11ee-92c2-00ff8de8c02d','ThinkPad X1 Carbon Gen 10','Portátil empresarial de Lenovo',1400.00,'c83631b3-d658-11ee-92c2-00ff8de8c02d','bbdcc4fb-d658-11ee-92c2-00ff8de8c02d');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `id_proveedor` varchar(36) NOT NULL DEFAULT uuid(),
  `nombre_proveedor` varchar(50) NOT NULL,
  `direccion_proveedor` varchar(50) NOT NULL,
  `telefono_proveedor` varchar(10) NOT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES ('c835600c-d658-11ee-92c2-00ff8de8c02d','Samsung','Calle 123, San Salvador','12345678'),('c836301b-d658-11ee-92c2-00ff8de8c02d','Apple','Calle 456, San Salvador','23456789'),('c8363139-d658-11ee-92c2-00ff8de8c02d','Nike','Calle 789, San Salvador','34567890'),('c8363176-d658-11ee-92c2-00ff8de8c02d','Adidas','Calle 1011, San Salvador','45678901'),('c83631b3-d658-11ee-92c2-00ff8de8c02d','Sony','Calle 1213, San Salvador','56789012'),('c83631e5-d658-11ee-92c2-00ff8de8c02d','LG','Calle 1415, San Salvador','67890123'),('c8363212-d658-11ee-92c2-00ff8de8c02d','Microsoft','Calle 1617, San Salvador','78901234'),('c8363233-d658-11ee-92c2-00ff8de8c02d','Dell','Calle 1819, San Salvador','89012345'),('c8363266-d658-11ee-92c2-00ff8de8c02d','HP','Calle 2021, San Salvador','90123456'),('c83632a7-d658-11ee-92c2-00ff8de8c02d','Lenovo','Calle 2223, San Salvador','01234567'),('e117809c-d662-11ee-92c2-00ff8de8c02d','Samsung','Dirección A','1234567890'),('e1182f79-d662-11ee-92c2-00ff8de8c02d','Apple','Dirección B','2345678901'),('e1189bdc-d662-11ee-92c2-00ff8de8c02d','Nike','Dirección C','3456789012'),('e119209d-d662-11ee-92c2-00ff8de8c02d','Adidas','Dirección D','4567890123'),('e119d58d-d662-11ee-92c2-00ff8de8c02d','Sony','Dirección E','5678901234'),('e11a5e70-d662-11ee-92c2-00ff8de8c02d','LG','Dirección F','6789012345'),('e11ad7fa-d662-11ee-92c2-00ff8de8c02d','Microsoft','Dirección G','7890123456'),('e11b47dd-d662-11ee-92c2-00ff8de8c02d','Dell','Dirección H','8901234567'),('e11bb046-d662-11ee-92c2-00ff8de8c02d','HP','Dirección I','9012345678'),('e11c1d1b-d662-11ee-92c2-00ff8de8c02d','Lenovo','Dirección J','0123456789');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-28 20:26:45
