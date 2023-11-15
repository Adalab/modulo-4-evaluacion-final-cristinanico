-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: localhost    Database: spells_db
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `spells`
--

DROP TABLE IF EXISTS `spells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spells` (
  `idSpell` int NOT NULL AUTO_INCREMENT,
  `spell` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`idSpell`),
  UNIQUE KEY `spell` (`spell`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spells`
--

LOCK TABLES `spells` WRITE;
/*!40000 ALTER TABLE `spells` DISABLE KEYS */;
INSERT INTO `spells` VALUES (1,'Accio','Encantamiento convocador','Este encantamiento permite traer un objeto a las manos del lanzador, incluso a una distancia significativa'),(2,'Aguamenti','Hechizo de creación de agua','Este encantamiento genera un chorro de agua desde la punta de la varita'),(3,'Arania exumai','Hechizo para repeler arañas','Este hechizo permite repeler arañas'),(4,'Alohomora','Encantamiento de apertura','Este encantamiento permite abrir y desbloquear cerraduras cerradas con llave.'),(7,'Avada kedavra','Maldición asesina','Esta peligrosa y complicada maldición genera un destello verde de la punta de la varita, que mata en el acto a cualquier ser vivo que le alcance; por lo anterior,e es considerada como una de las tres Maldiciones Imperdonables. Sus efectos no poseen contrahechizo alguno.'),(8,'Bombarda','Encantamiento explosivo','Este encantamiento provoca una pequeña explosión en su objetivo.'),(9,'Confringo','Maldición explosiva','Esta maldición hace explotar cualquier cosa que golpee. Puede ser muy peligrosa e incluso letal si es usada sin responsabilidad.'),(10,'Confundo','Encantamiento confundus','Este encantamiento causa confusión en una persona o un objeto que esté hechizado para pensar por su cuenta. Puede usarse para sugestionar a la víctima a realizar lo que el usuario le indique.'),(11,'Crucio','Maldición tortura','Esta maldición provoca un dolor insoportable y agónico en su víctima, y puede llevarla a la locura permanente e irreversible si es sometida a sus efectos de manera prolongada; por lo anterior, se considera como una de las tres Maldiciones Imperdonables.'),(12,'Depulso','Encantamiento repulsor','Este encantamiento permite mandar a volar objetos y seres vivos lejos de quien lo usa.'),(13,'Desmaius','Encantamiento aturdidor','Este encantamiento deja inconsciente a su víctima y puede detener objetos en movimiento.'),(14,'Diffindo','Encantamiento seccionador','Este encantamiento permite romper o cortar parcialmente ciertos objetos. También puede generar cortes dolorosos en los seres vivos.'),(15,'Engorgio','Encantamiento aumento de tamaño','Este encantamiento permite aumentar el tamaño de un objeto o animal'),(16,'Evanesco','Hechizo evanescente','Este hechizo hace que un objeto o sustancia desaparezca. Requiere mayor concentración a mayor complejidad de lo que se desea desaparecer.'),(17,'Expecto patronum','Encantamiento patronus','Este antiguo y difícil encantamiento materializa los pensamientos felices en un guardián mágico que puede proteger contra la magia más oscura. Puede usarse para repeler dementores y lethifolds, y también para enviar mensajes a otras personas.'),(18,'Expelliarmus','Encantamiento de desarme','Este encantamiento permite quitar de las manos los objetos que sostenga su víctima. Es útil en los duelos para desarmar al oponente y quitarle su varita.'),(19,'Expulso','Maleficio expulso','Este maleficio empuja bruscamente por los aires a un objeto o una persona'),(20,'Finite incantatem','Encantamiento general de contrahechizos','Este encantamiento funciona como un contrahechizo para cesar todos los encantamientos realizados en un área.'),(21,'Flipendo','Conjuro de rechazo de enemigos','Este maleficio permite golpear y alejar objetos pequeños, y aturdir a oponentes no muy fuertes.'),(22,'Impedimenta','Encantamiento obstaculizador','Este encantamiento impide el movimiento de su víctima, paralizándolo temporalmente.'),(23,'Imperio','Maldición imperius','Esta maldición permite controlar completamente los pensamientos y acciones de la víctima, obligándola a realizar todo lo que el usuario desee sin limitaciones y por todo el tiempo que desee; por lo anterior, corresponde a una de las tres Maldiciones Imperdonables.'),(24,'Legeremens','Hechizo de legeremancia','Este hechizo permite usar la Legeremancia, el arte de penetrar en la mente de su objetivo.'),(25,'Lumos','Encantamiento par encender varitas','Este encantamiento genera un constante haz de chispas en la punta de la varita, que es útil para iluminar un lugar oscuro.'),(26,'Obliviate','Encantamiento desmemorizante','Este encantamiento borra los recuerdos de su víctima a elección de quien lo ejecuta.'),(27,'Petrificus totalus','Parálisis del cuerpo entero','Esta maldición paraliza completamente el cuerpo de su víctima, permitiéndole mover sólo sus ojos.'),(28,'Priori incantato','Priori incantatem','Este hechizo es usado en las varitas para hacer que expulsen una especie de nubes fantasmagóricas, las cuales replican los efectos de los últimos hechizos que han realizado.'),(29,'Protego','Encantamiento escudo','Este encantamiento genera una barrera invisible que permite bloquear y desviar hechizos enemigos y ataques físicos.'),(30,'Reducto','Maldición reductora','Esta maldición destruye un objeto en pedazos, incluso volviéndolo polvo si es lo suficientemente poderoso.'),(31,'Reparo','Encantamiento de reparación','Este encantamiento repara un objeto roto o destruido, dejándolo como nuevo.'),(32,'Revelio','Encantamiento revelio','Este encantamiento de transformación permite revelar la verdadera apariencia de las cosas, o para hacer visible lo invisible.'),(33,'Riddikulus','Hechizo repulsor de boggarts','Este encantamiento obliga a un boggart a adoptar una forma graciosa para quien lo realiza.'),(34,'Sectumsempra','Maldición sectumsempra','Esta poderosa maldición genera cortes profundos en la víctima, que pueden seccionar partes de su cuerpo con facilidad. Las partes amputadas con esta maldición no tienen cura conocida, y las heridas pueden ser letales por el desangramiento generado.'),(35,'Wingardium leviosa','Encantamiento levitatorio','Encantamiento para levitar objetos o pequeños seres vivos.');
/*!40000 ALTER TABLE `spells` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-14 17:17:55
