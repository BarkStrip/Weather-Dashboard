-- SAMPLE DATA ONLY: This file contains example weather data for initial database population.
-- Once your automated scripts are running and updating the database with live data, this file is not needed for normal operation.
-- MySQL dump 10.13  Distrib 8.0.28, for macos11.6 (x86_64)
--
-- Host: localhost    Database: weatherdb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Dumping data for table `Belmar`
--

LOCK TABLES `Belmar` WRITE;
/*!40000 ALTER TABLE `Belmar` DISABLE KEYS */;
INSERT INTO `Belmar` VALUES ('Overnight','Low: 50 °F','Showers Likely','Overnight: Showers likely, mainly after 4am.  Cloudy, with a low around 50. East wind around 10 mph.  Chance of precipitation is 60%. New precipitation amounts between a tenth and quarter of an inch possible. '),('Monday','High: 56 °F','Showers Likely then Isolated Showers','Monday: Showers likely before 2pm, then isolated showers after 3pm.  Mostly cloudy, with a high near 56. Southeast wind 10 to 15 mph becoming northeast in the afternoon.  Chance of precipitation is 60%. New precipitation amounts of less than a tenth of an inch possible. '),('Monday Night','Low: 49 °F','Mostly Cloudy','Monday Night: Mostly cloudy, with a low around 49. North wind 5 to 10 mph. '),('Tuesday','High: 55 °F','Partly Sunny','Tuesday: Partly sunny, with a high near 55. East wind 5 to 10 mph. '),('Tuesday Night','Low: 49 °F','Chance Showers','Tuesday Night: A chance of showers after 11pm.  Cloudy, with a low around 49. Southeast wind around 10 mph.  Chance of precipitation is 50%. New precipitation amounts of less than a tenth of an inch possible. '),('Wednesday','High: 59 °F','Showers Likely','Wednesday: Showers likely.  Mostly cloudy, with a high near 59. Chance of precipitation is 70%. New precipitation amounts between a tenth and quarter of an inch possible. '),('Wednesday Night','Low: 52 °F','Chance Showers','Wednesday Night: A chance of showers before 2am.  Mostly cloudy, with a low around 52. Chance of precipitation is 30%.'),('Thursday','High: 61 °F','Partly Sunny','Thursday: Partly sunny, with a high near 61.'),('Thursday Night','Low: 51 °F','Mostly Cloudy','Thursday Night: Mostly cloudy, with a low around 51.');
/*!40000 ALTER TABLE `Belmar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Hoboken`
--

LOCK TABLES `Hoboken` WRITE;
/*!40000 ALTER TABLE `Hoboken` DISABLE KEYS */;
INSERT INTO `Hoboken` VALUES ('Overnight','Low: 52 °F','Light Rain Likely','Overnight: Light rain likely, mainly after 5am.  Cloudy, with a low around 52. Southeast wind around 7 mph.  Chance of precipitation is 60%. New precipitation amounts of less than a tenth of an inch possible. '),('Monday','High: 59 °F','Light Rain Likely and Patchy Fog','Monday: Light rain likely, mainly before 8am, then a chance of drizzle or light rain after 11am.  Patchy fog after 2pm.  Otherwise, cloudy, with a high near 59. East wind around 9 mph.  Chance of precipitation is 60%. New precipitation amounts of less than a tenth of an inch possible. '),('Monday Night','Low: 50 °F','Patchy Fog','Monday Night: Patchy fog.  Otherwise, mostly cloudy, with a low around 50. Northeast wind 5 to 8 mph. '),('Tuesday','High: 64 °F','Partly Sunny','Tuesday: Partly sunny, with a high near 64. Northeast wind 6 to 9 mph becoming southeast in the afternoon. '),('Tuesday Night','Low: 51 °F','Chance Showers then Showers Likely','Tuesday Night: Showers likely, mainly after 2am.  Cloudy, with a low around 51. Southeast wind 8 to 10 mph.  Chance of precipitation is 60%. New precipitation amounts of less than a tenth of an inch possible. '),('Wednesday','High: 63 °F','Showers Likely','Wednesday: Showers likely.  Mostly cloudy, with a high near 63. Chance of precipitation is 70%. New precipitation amounts between a tenth and quarter of an inch possible. '),('Wednesday Night','Low: 53 °F','Mostly Cloudy','Wednesday Night: Mostly cloudy, with a low around 53.'),('Thursday','High: 69 °F','Partly Sunny','Thursday: Partly sunny, with a high near 69.'),('Thursday Night','Low: 51 °F','Mostly Cloudy','Thursday Night: Mostly cloudy, with a low around 51.');
/*!40000 ALTER TABLE `Hoboken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Newark`
--

LOCK TABLES `Newark` WRITE;
/*!40000 ALTER TABLE `Newark` DISABLE KEYS */;
INSERT INTO `Newark` VALUES ('Overnight','Low: 52 °F','Light Rain Likely','Overnight: Light rain likely, mainly after 5am.  Cloudy, with a low around 52. Southeast wind around 6 mph.  Chance of precipitation is 60%. New precipitation amounts between a tenth and quarter of an inch possible. '),('Monday','High: 59 °F','Light Rain Likely and Patchy Fog','Monday: Light rain likely, mainly before 8am, then a chance of drizzle or light rain after 11am.  Patchy fog after 2pm.  Otherwise, cloudy, with a high near 59. East wind 6 to 8 mph.  Chance of precipitation is 60%. New precipitation amounts of less than a tenth of an inch possible. '),('Monday Night','Low: 50 °F','Patchy Fog','Monday Night: Patchy fog.  Otherwise, mostly cloudy, with a low around 50. Northeast wind around 6 mph. '),('Tuesday','High: 64 °F','Partly Sunny','Tuesday: Partly sunny, with a high near 64. Northeast wind 5 to 9 mph becoming southeast in the afternoon. '),('Tuesday Night','Low: 50 °F','Chance Showers then Showers Likely','Tuesday Night: Showers likely, mainly after 2am.  Cloudy, with a low around 50. Southeast wind 7 to 9 mph.  Chance of precipitation is 70%. New precipitation amounts of less than a tenth of an inch possible. '),('Wednesday','High: 63 °F','Showers Likely','Wednesday: Showers likely.  Mostly cloudy, with a high near 63. Chance of precipitation is 60%. New precipitation amounts between a tenth and quarter of an inch possible. '),('Wednesday Night','Low: 52 °F','Mostly Cloudy','Wednesday Night: Mostly cloudy, with a low around 52.'),('Thursday','High: 69 °F','Partly Sunny','Thursday: Partly sunny, with a high near 69.'),('Thursday Night','Low: 51 °F','Mostly Cloudy','Thursday Night: Mostly cloudy, with a low around 51.');
/*!40000 ALTER TABLE `Newark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Princeton`
--

LOCK TABLES `Princeton` WRITE;
/*!40000 ALTER TABLE `Princeton` DISABLE KEYS */;
INSERT INTO `Princeton` VALUES ('Overnight','Low: 51 °F','Showers Likely','Overnight: Showers likely, mainly after 4am.  Cloudy, with a low around 51. East wind around 5 mph.  Chance of precipitation is 60%. New precipitation amounts of less than a tenth of an inch possible. '),('Monday','High: 64 °F','Scattered Showers','Monday: Scattered showers before 11am, then isolated showers after 3pm.  Mostly cloudy, with a high near 64. East wind around 5 mph becoming calm.  Chance of precipitation is 40%. New precipitation amounts of less than a tenth of an inch possible. '),('Monday Night','Low: 47 °F','Mostly Cloudy','Monday Night: Mostly cloudy, with a low around 47. North wind around 5 mph. '),('Tuesday','High: 66 °F','Mostly Cloudy','Tuesday: Mostly cloudy, with a high near 66. Northeast wind around 5 mph. '),('Tuesday Night','Low: 48 °F','Chance Showers then Showers Likely','Tuesday Night: Showers likely, mainly after 2am.  Cloudy, with a low around 48. Southeast wind around 5 mph.  Chance of precipitation is 60%. New precipitation amounts of less than a tenth of an inch possible. '),('Wednesday','High: 68 °F','Showers Likely','Wednesday: Showers likely.  Mostly cloudy, with a high near 68. Chance of precipitation is 60%. New precipitation amounts between a tenth and quarter of an inch possible. '),('Wednesday Night','Low: 51 °F','Mostly Cloudy','Wednesday Night: Mostly cloudy, with a low around 51.'),('Thursday','High: 70 °F','Partly Sunny','Thursday: Partly sunny, with a high near 70.'),('Thursday Night','Low: 49 °F','Mostly Cloudy','Thursday Night: Mostly cloudy, with a low around 49.');
/*!40000 ALTER TABLE `Princeton` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Trenton`
--

LOCK TABLES `Trenton` WRITE;
/*!40000 ALTER TABLE `Trenton` DISABLE KEYS */;
INSERT INTO `Trenton` VALUES ('Overnight','Low: 52 °F','Showers Likely','Overnight: Showers likely, mainly after 4am.  Cloudy, with a low around 52. Calm wind becoming east around 5 mph.  Chance of precipitation is 60%. New precipitation amounts of less than a tenth of an inch possible. '),('Monday','High: 67 °F','Scattered Showers','Monday: Scattered showers before 11am, then isolated showers after 3pm.  Mostly cloudy, with a high near 67. East wind around 5 mph becoming calm.  Chance of precipitation is 30%. New precipitation amounts of less than a tenth of an inch possible. '),('Monday Night','Low: 49 °F','Mostly Cloudy','Monday Night: Mostly cloudy, with a low around 49. Northeast wind around 5 mph. '),('Tuesday','High: 67 °F','Partly Sunny','Tuesday: Partly sunny, with a high near 67. Northeast wind around 5 mph. '),('Tuesday Night','Low: 49 °F','Chance Showers then Showers Likely','Tuesday Night: Showers likely, mainly after 2am.  Cloudy, with a low around 49. Southeast wind around 5 mph.  Chance of precipitation is 60%. New precipitation amounts of less than a tenth of an inch possible. '),('Wednesday','High: 69 °F','Showers Likely','Wednesday: Showers likely.  Mostly cloudy, with a high near 69. Chance of precipitation is 70%. New precipitation amounts of less than a tenth of an inch possible. '),('Wednesday Night','Low: 52 °F','Mostly Cloudy','Wednesday Night: Mostly cloudy, with a low around 52.'),('Thursday','High: 71 °F','Partly Sunny','Thursday: Partly sunny, with a high near 71.'),('Thursday Night','Low: 49 °F','Mostly Cloudy','Thursday Night: Mostly cloudy, with a low around 49.');
/*!40000 ALTER TABLE `Trenton` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-02  2:36:08
