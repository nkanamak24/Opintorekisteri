-- MySQL dump 10.13  Distrib 8.2.0, for Win64 (x86_64)
--
-- Host: localhost    Database: opintorekisteri
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `arviointi`
--

DROP TABLE IF EXISTS `arviointi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arviointi` (
  `idArviointi` int NOT NULL AUTO_INCREMENT,
  `Päivämäärä` date NOT NULL,
  `Arvosana` tinyint NOT NULL,
  `Opiskelija_idOpiskelija` int NOT NULL,
  `Opintojakso_idOpintojakso` int NOT NULL,
  PRIMARY KEY (`idArviointi`),
  KEY `fk_Arviointi_Opiskelija_idx` (`Opiskelija_idOpiskelija`),
  KEY `fk_Arviointi_Opintojakso1_idx` (`Opintojakso_idOpintojakso`),
  CONSTRAINT `fk_Arviointi_Opintojakso1` FOREIGN KEY (`Opintojakso_idOpintojakso`) REFERENCES `opintojakso` (`idOpintojakso`),
  CONSTRAINT `fk_Arviointi_Opiskelija` FOREIGN KEY (`Opiskelija_idOpiskelija`) REFERENCES `opiskelija` (`idOpiskelija`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arviointi`
--

LOCK TABLES `arviointi` WRITE;
/*!40000 ALTER TABLE `arviointi` DISABLE KEYS */;
INSERT INTO `arviointi` VALUES (1,'2025-05-31',4,10,2),(2,'2025-04-13',2,8,3),(3,'2025-05-27',5,12,4),(4,'2025-05-15',5,3,4),(5,'2025-04-28',2,15,6),(6,'2025-05-03',3,4,2),(7,'2025-05-18',1,2,3),(8,'2025-03-30',2,9,5),(9,'2025-05-30',5,11,6),(10,'2025-05-26',1,14,6),(11,'2025-06-01',4,6,2),(12,'2025-05-02',3,5,4),(13,'2025-05-17',5,7,4),(14,'2025-05-23',1,13,3),(15,'2025-06-13',1,18,3),(16,'2025-06-13',1,14,4),(17,'2025-06-13',1,1,5),(18,'2025-06-13',1,1,5);
/*!40000 ALTER TABLE `arviointi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opintojakso`
--

DROP TABLE IF EXISTS `opintojakso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opintojakso` (
  `idOpintojakso` int NOT NULL AUTO_INCREMENT,
  `Koodi` varchar(45) NOT NULL,
  `Laajuus` tinyint NOT NULL,
  `Nimi` varchar(45) NOT NULL,
  PRIMARY KEY (`idOpintojakso`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opintojakso`
--

LOCK TABLES `opintojakso` WRITE;
/*!40000 ALTER TABLE `opintojakso` DISABLE KEYS */;
INSERT INTO `opintojakso` VALUES (2,'YLE05',3,'Yleistieto'),(3,'JOH30',2,'Johdatus ohjelmointiin'),(4,'TAL17',1,'Kotitalous'),(5,'HIS32',3,'Kulttuurihistoria'),(6,'VAL42',5,'Valinnainen');
/*!40000 ALTER TABLE `opintojakso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opiskelija`
--

DROP TABLE IF EXISTS `opiskelija`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opiskelija` (
  `idOpiskelija` int NOT NULL AUTO_INCREMENT,
  `Etunimi` varchar(45) NOT NULL,
  `Sukunimi` varchar(45) NOT NULL,
  `Osoite` varchar(45) NOT NULL,
  `Luokkatunnus` varchar(45) NOT NULL,
  PRIMARY KEY (`idOpiskelija`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opiskelija`
--

LOCK TABLES `opiskelija` WRITE;
/*!40000 ALTER TABLE `opiskelija` DISABLE KEYS */;
INSERT INTO `opiskelija` VALUES (1,'Anna','Virtanen','Kukkatie 5, 00100 Helsinki','HOI202'),(2,'Juhani','Järvinen','Mannerheimintie 36 01000 Tampere','KOK303'),(3,'Anna','Korhonen','Aleksanterinkatu 24 0010 Oulu','AUT101'),(4,'Liisa','Mäkinen','Hämeenkatu 6 10000 Jyväskylä','KOK303'),(5,'Mikael','Nieminen','Kauppakatu 2 00010 Lahti','AUT101'),(6,'Katariina','Hämäläinen','Satamakatu 10 00001 Kuopio','HOI202'),(7,'Pekka','Laine','Rantatie 18 10002 Pori','HOI202'),(8,'Sari','Heikkinen','Koulukatu 100 01020 Kouvola','AUT101'),(9,'Antti','Salminen','Kirkkokatu 1 00200 Joensuu','AUT101'),(10,'Johanna','Rantanen','Puistokatu 21 10203 Lappeenranta','KOK303'),(11,'Ville','Lehtonen','Rautatienkatu 50 12300 Vaasa','AUT101'),(12,'Laura','Savolainen','Tehtaankatu 31 20103 Rovaniemi','HOI202'),(13,'Timo','Kallio','Valtakatu 86 30102 Tampere','KOK303'),(14,'Marja','Aalto','Peltokatu 23 01230 Seinäjoki','KOK303'),(15,'Eero','Koskinen','Metsäkatu 101 40000 Hämeenlinna','HOI202'),(18,'Pirkko','Mäntylä','Keskuskatu 6 40102 Ivalo','KOK303'),(19,'Pera','Penttilä','Sivukatu 28, 10204 Porvoo','HOI202'),(21,'Minna','Meikäläinen','Osoite Vuoristotie 4, 12345 Turku','HOI202');
/*!40000 ALTER TABLE `opiskelija` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `suoritus`
--

DROP TABLE IF EXISTS `suoritus`;
/*!50001 DROP VIEW IF EXISTS `suoritus`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `suoritus` AS SELECT 
 1 AS `Sukunimi`,
 1 AS `Etunimi`,
 1 AS `Nimi`,
 1 AS `Arvosana`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `suoritus`
--

/*!50001 DROP VIEW IF EXISTS `suoritus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `suoritus` AS select `opiskelija`.`Sukunimi` AS `Sukunimi`,`opiskelija`.`Etunimi` AS `Etunimi`,`opintojakso`.`Nimi` AS `Nimi`,`arviointi`.`Arvosana` AS `Arvosana` from ((`opiskelija` join `arviointi` on((`opiskelija`.`idOpiskelija` = `arviointi`.`Opiskelija_idOpiskelija`))) join `opintojakso` on((`opintojakso`.`idOpintojakso` = `arviointi`.`Opintojakso_idOpintojakso`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-13 23:15:09
