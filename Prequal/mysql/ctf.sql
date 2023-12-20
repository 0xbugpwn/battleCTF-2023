CREATE DATABASE weakness;
CREATE DATABASE timing;
CREATE DATABASE hebiosso;
CREATE DATABASE jms;

CREATE USER 'weakness'@'%' IDENTIFIED BY 'weakness';
CREATE USER 'timing'@'%' IDENTIFIED BY 'timing';
CREATE USER 'hebiosso'@'%' IDENTIFIED BY 'hebiosso';
CREATE USER 'jms'@'%' IDENTIFIED BY 'jms';

GRANT SELECT ON weakness.* TO 'weakness'@'%';
GRANT SELECT ON timing.* TO 'timing'@'%';
GRANT SELECT ON hebiosso.* TO 'hebiosso'@'%';
GRANT SELECT ON jms.* TO 'jms'@'%';

FLUSH PRIVILEGES;

USE hebiosso;

CREATE TABLE `african_musician` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `birth_year` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
);
CREATE TABLE `flag_6470e394cbf6dab6a91682cc8585059b` (
  `flag` varchar(255) DEFAULT NULL
);

INSERT INTO `flag_6470e394cbf6dab6a91682cc8585059b` VALUES ('battleCTF{Like_based_SQLi_Fu_0af52e4e8696a3dffe7eea367eeb277d}');

INSERT INTO `african_musician` VALUES (1,'Angélique Kidjo','Benin','World music',1960),(2,'Burna Boy','Nigeria','Afrofusion',1991),(3,'Wizkid','Nigeria','Afrobeats',1990),(4,'Davido','Nigeria','Afrobeats',1992),(5,'Salif Keita','Mali','World music',1949),(6,'2Baba','Nigeria','Afrobeats',1975),(7,'Youssou N\'Dour','Senegal','World music',1959),(8,'Diamond Platnumz','Tanzania','Bongo Flava',1989),(9,'Fally Ipupa','Democratic Republic of Congo','Afrobeats',1977),(10,'Tiwa Savage','Nigeria','Afrobeats',1980),(11,'Baaba Maal','Senegal','World music',1953),(12,'Black Coffee','South Africa','House music',1976),(13,'Sona Jobarteh','The Gambia','World music',1983),(14,'Cheikh Lô','Senegal','World music',1955),(15,'Khadja Nin','Burundi','World music',1959),(16,'Dimi Mint Abba','Mauritania','World music',1958),(17,'Eneida Marta','Cape Verde','World music',1962),(18,'Emmanuel Jal','South Sudan','Hip hop',1980),(19,'Oliver N\'Goma','Gabon','Zouk',1959),(20,'Bella Bellow','Togo','World music',1945),(21,'Dramane Koné','Côte d\'Ivoire','World music',1975),(22,'Cesária Évora','Cape Verde','Morna',1941),(23,'Mdou Moctar','Niger','Tuareg music',1986),(24,'Sarkodie','Ghana','Hip hop',1985),(25,'Miriam Makeba','South Africa','World music',1932),(26,'Koffi Olomide','Democratic Republic of Congo','Soukous',1956),(27,'Ladysmith Black Mambazo','South Africa','Isicathamiya',1960),(28,'Yemi Alade','Nigeria','Afrobeats',1989),(29,'Fela Aníkúlápó Kuti','Nigeria','Afrobeat',1938),(30,'Akon','Senegal','R&B',1973),(31,'King Sunny Adé','Nigeria','Jùjú',1946),(32,'Don Jazzy','Nigeria','Afrobeats',1982),(33,'Flavour','Nigeria','Highlife',1983),(34,'Ali Farka Touré','Mali','Desert blues',1939),(35,'Jose Chameleone','Uganda','Afrobeats',1979),(36,'P-Square','Nigeria','Afrobeats',1981),(37,'Cassper Nyovest','South Africa','Hip hop',1990),(38,'D\'banj','Nigeria','Afrobeats',1980),(39,'Thomas Mapfumo','Zimbabwe','Chimurenga',1945),(40,'Nasty C','South Africa','Hip hop',1997),(41,'Tiken Jah Fakoly','Côte d\'Ivoire','Reggae',1968),(42,'Timaya','Nigeria','Afrobeats',1980),(43,'Mr Eazi','Nigeria','Afrobeats',1991),(44,'Rayvanny','Tanzania','Bongo Flava',1993),(45,'Master KG','South Africa','Bolobedu house',1996),(46,'DJ Maphorisa','South Africa','Amapiano',1977),(47,'Mr. P','Nigeria','Afrobeats',1981),(48,'Banky W.','Nigeria','R&B',1981),(49,'Lucky Dube','South Africa','Reggae',1964),(50,'Lira','South Africa','Soul',1979),(51,'Lebo M.','South Africa','World Music',1964),(52,'Olamide','Nigeria','Hip-Hop',1989),(53,'Ycee','Nigeria','Hip-Hop',1993),(54,'Zlatan','Nigeria','Afrobeats',1995),(55,'M.I','Nigeria','Hip-Hop',1981),(56,'Rema','Nigeria','Afrobeats',2000),(57,'A-Q','Nigeria','Hip-Hop',1986),(58,'Falz','Nigeria','Hip-Hop',1990),(59,'Kizz Daniel','Nigeria','Afropop',1994),(60,'Omah Lay','Nigeria','Afrobeats',1997),(61,'J. Martins','Nigeria','Afrobeats',1977),(62,'I. K. Dairo','Nigeria','Jùjú',1930),(63,'Sade Adu','Nigeria','R&B',1959),(64,'Naeto C','Nigeria','Hip-Hop',1982),(65,'Ladipoe','Nigeria','Hip-Hop',1991),(66,'Waconzy','Nigeria','Afrobeats',1983),(67,'Helen Parker-Jayne Isibor','Nigeria','Classical',1980),(68,'Ras Kimono','Nigeria','Reggae',1958),(69,'K1 De Ultimate','Nigeria','Fuji Music',1957),(70,'Obongjayar','Nigeria','Alternative',1995),(71,'CDQ','Nigeria','Hip-Hop',1985),(72,'Tamara Eteimo','Nigeria','R&B',1987),(73,'Babatunde Olatunji','Nigeria','Drumming',1927),(74,'Ebenezer Obey','Nigeria','Jùjú',1942),(75,'Victor Olaiya','Nigeria','Highlife',1930),(76,'Genevieve Nnaji','Nigeria','Pop',1979),(77,'Patience Ozokwor','Nigeria','Highlife',1958),(78,'Phyno','Nigeria','Hip-Hop',1986),(79,'Adekunle Gold','Nigeria','Highlife',1987),(80,'Asake','Nigeria','Afrobeats',1997),(81,'9ice','Nigeria','Highlife',1980),(82,'Naira Marley','Nigeria','Afrobeats',1991),(83,'Patoranking','Nigeria','Dancehall',1990),(84,'Fireboy DML','Nigeria','Afropop',1996),(85,'Tems','Nigeria','Neo-Soul',1995),(86,'Ruger','Nigeria','Afropop',1999),(87,'Tekno','Nigeria','Afrobeats',1992),(88,'Da Grin','Nigeria','Hip-Hop',1987),(89,'SPINALL','Nigeria','Afrobeats',1984),(90,'Ice Prince','Nigeria','Hip-Hop',1986),(91,'Gnonnas Pedro','Benin','World Music',1943),(92,'Stan Tohon','Benin','Tchinkoumé',1955),(93,'Zeynab Habib','Benin','Pop',1998),(94,'Dibi Dobo','Benin','Afropop',1978),(95,'Wally Badarou','Benin','Electronic',1955),(96,'Moonaya','Benin','Jazz',1979),(97,'Lionel Loueke','Benin','Jazz',1973),(98,'Blaaz','Benin','Hip-Hop',1988),(99,'El Rego','Benin','Funk',1938),(100,'Orchestre Poly-Rythmo de Cotonou','Benin','World music',0),(101,'Shirazee','Benin','Pop',1994),(102,'Star Feminine Band','Benin','World music',0),(103,'Gangbé Brass Band','Benin','Jazz',0),(104,'Gabo Brown',' Orchestre Poly-Rythmo','Benin',0),(105,'Vincent Ahehehinnou','Benin','World music',0),(106,'Yvan Buravan','Rwanda','Pop',0),(107,'Antoine Dougbé','Benin','World music',0),(108,'Ignace De Souza','Benin','World music',0),(109,'Lokonon André','Benin','World music',0),(110,'Discafric Band','Benin','World music',0),(111,'Adjabel','Benin','World music',0),(112,'Les Volcans de La Capital','Benin','World music',0),(113,'Les Sympathics de Porto Novo','Benin','World music',0),(114,'Ferry Djimmy','Benin','World music',0),(115,'Le Super Borgou de Parakou','Benin','World music',0),(116,'Sessime','Benin','World music',0),(117,'Nel Oliver','Benin','World music',0),(118,'Tyaf','Benin','Pop',0),(119,'Crisba','Benin','World music',0),(120,'Fanicko','Benin','Pop',0),(121,'WILF ENIGHMA','Benin','Pop',0),(122,'Victor Uwaifo','Benin','Highlife',1941),(123,'Vivi l\'internationale','Benin','World music',0),(124,'Guenshi Ever','Benin','World music',0),(125,'Miss Espoir','Benin','World music',0),(126,'Queen Fumi','Benin','World music',0),(127,'Don Metok','Benin','World music',0),(128,'norberka','Benin','World music',0),(129,'Albert Bessanvi Koffi','Benin','World music',0),(130,'Sarz','Nigeria','Afrobeats',0),(131,'SAGBOHAN Danialou','Benin','World music',0),(132,'Petit Miguelito','Ivory Coast','Coupé-décalé',0),(133,'Cotonou City Crew','Benin','Hip-hop',0),(134,'Mahi musicians of Benin','Benin','World music',0),(135,'Osayomore Joseph','Nigeria','Highlife',0),(136,'Benin International Musical','Benin','World music',0),(137,'Rhonda Benin','Australia','Blues',0),(138,'Bobo Wê','Benin','World music',0),(139,'Siano Babassa','Benin','World music',0),(140,'Togbe Yeton','Benin','World music',0),(141,'Vano baby','Benin','World music',0),(142,'Serge Beynaud','Ivory Coast','Afropop',0),(143,'Bebi Philip','Ivory Coast','Afropop',0),(144,'Kedjevara','Ivory Coast','Afropop',0),(145,'Debordo Leekunfa','Ivory Coast','Afropop',0),(146,'Molare','Ivory Coast','Afropop',0),(147,'DJ Arafat','Ivory Coast','Coupé-décalé',0),(148,'Shado Chris','Ivory Coast','Afropop',0),(149,'Douk Saga','Ivory Coast','Coupé-Décalé',0),(150,'Alpha Blondy','Ivory Coast','Reggae',0),(151,'Teeyah','Ivory Coast','Zouk',0),(152,'DJ Kerozen','Ivory Coast','Coupé-Décalé',0),(153,'Ariel Sheney','Ivory Coast','Coupé-Décalé',0),(154,'Dobet Gnahoré','Ivory Coast','World Music',0),(155,'Suspect 95','Ivory Coast','Urban',0),(156,'Meiway','Ivory Coast','Zoblazo',0),(157,'Monique Séka','Ivory Coast','Zouk',0),(158,'Ernesto Djédjé','Ivory Coast','Zouglou',0),(159,'Antoinette Konan','Ivory Coast','Zouk',0),(160,'Jimmy Hyacinthe','Ivory Coast','Zouk',0),(161,'Gadji Celi','Ivory Coast','Zouglou',0),(162,'Nayanka Bell','Ivory Coast','Zouk',0),(163,'Fatoumata Diawara','Mali','World Music',0),(164,'Anouman Brou Félix','Ivory Coast','Zouglou',0),(165,'Erickson Le Zulu','Ivory Coast','Coupé-Décalé',0),(166,'Paco Sery','Ivory Coast','Jazz',0),(167,'Josey','Ivory Coast','Coupé-Décalé',0),(168,'Bailly Spinto','Ivory Coast','Zouglou',0),(169,'Claire Bahi','Ivory Coast','Coupé-Décalé',0),(170,'Kiff No Beat','Ivory Coast','Urban',0),(171,'Jess Sah Bi & Peter One','Ivory Coast','Folk',0),(172,'Bello Falcao','Ivory Coast','Zouglou',0),(173,'Tour 2 Garde','Ivory Coast','Urban',0),(174,'Floby','Burkina Faso','World Music',0),(175,'Kikimoteleba','Ivory Coast','Coupé-Décalé',0),(176,'Aboutou Roots','Ivory Coast','Zouglou',0),(177,'Rocky Gold','Ivory Coast','Coupé-Décalé',0),(178,'SAFAREL OBIANG','Ivory Coast','Coupé-Décalé',0),(179,'Mc One Oficial','Ivory Coast','Coupé-Décalé',0),(180,'Aicha Koné','Ivory Coast','Zouk',0),(181,'Lino Versace','Ivory Coast','Coupé-Décalé',0),(182,'Elow\'n','Ivory Coast','Coupé-Décalé',0),(183,'Kaaris','Ivory Coast','Rap',0),(184,'Didi B','Ivory Coast','Coupé-Décalé',0),(185,'Imilo Lechanceux','Ivory Coast','Coupé-Décalé',0),(186,'Rémy Adan','Ivory Coast','Coupé-Décalé',0),(187,'Francky Dicaprio','Ivory Coast','Coupé-Décalé',0),(188,'Venom Cascadeur','Ivory Coast','Coupé-Décalé',0),(189,'Chantal Taiba','Ivory Coast','Zouk',0),(190,'Abou Nidal','Ivory Coast','Coupé-Décalé',0),(191,'Gadoukou la Star','Ivory Coast','Coupé-Décalé',0),(192,'Santrinos Raphael','Togo','Pop',1992),(193,'King Mensah','Togo','Afropop',1971),(194,'Afia Mala','Togo','World Music',1958),(195,'Sanvi Panou','Togo','Afropop',1998),(196,'Julie Akofa Akoussah','Togo','World Music',1943),(197,'Bella Bellow','Togo','World Music',1945),(198,'Toofan','Togo','Afropop',1980),(199,'Roger Damawuzan','Togo','Funk',1948),(200,'Togo All Stars','Togo','World Music',0),(201,'Vicky Bila','Togo','Afropop',1989),(202,'ARKA\'N','Togo','Hip-Hop',0),(203,'De Mi Amor','Togo','Afropop',0),(204,'Amen Viana','Togo','Afropop',0),(205,'Orchestre Abass','Togo','World Music',0),(206,'Elom 20ce','Togo','Hip-Hop',1992),(207,'Akofa Akoussah','Togo','World Music',1948),(208,'Napo De Mi Amor','Togo','Afropop',0),(209,'Barthélémy Attisso','Togo','World Music',1942),(210,'The Ewe People Of Ghana And Togo','Togo','World Music',0),(211,'Omar B','Togo','Hip-Hop',0),(212,'Pikaluz','Togo','Hip-Hop',0),(213,'Ozane','Togo','Hip-Hop',0),(214,'Peter Solo','Togo','World Music',0),(215,'J-Gado','Togo','Hip-Hop',0),(216,'Almok','Togo','Hip-Hop',0),(217,'Vaudou Game','Togo','Funk',0),(218,'Susu Bilibi','Togo','World Music',0),(219,'Tabi Bonney','Togo','Hip-Hop',0),(220,'Itadi Bonney','Togo','World Music',0),(221,'Yta Jourias','Togo','World Music',0),(222,'Zaga Bambo','Togo','Hip-Hop',0),(223,'O\'noré','Togo','Hip-Hop',0),(224,'Eric MC','Togo','Hip-Hop',0),(225,'Jimi Hope','Togo','Hip-Hop',0),(226,'Togo Hip-Hop','Togo','Hip-Hop',0),(227,'Edem Drackey','Togo','Hip-Hop',0),(228,'Kezita','Togo','Afropop',0),(229,'Otoufo','Togo','Hip-Hop',0),(230,'Ali Jezz','Togo','Hip-Hop',0),(231,'Dogo Du Togo','Togo','Afropop',0),(232,'Omar B.','Togo','Hip-Hop',0),(233,'Flash Marley','Togo','Hip-Hop',0),(234,'Lord Carlos','Togo','Afropop',0),(235,'Sewavi Jacintho','Togo','Afropop',0),(236,'BlackT Igwe','Togo','Hip-Hop',0),(237,'Noelie Elykem','Togo','Afropop',0),(238,'Master Just','Togo','Hip-Hop',0),(239,'Tach Noir','Togo','Hip-Hop',0),(240,'Midi Lackos','Togo','Hip-Hop',0),(241,'JOE RAY','Togo','Hip-Hop',0),(242,'Togo Gospel','Togo','Gospel',0),(243,'Roseline Layo','Togo','Gospel',0),(244,'Miriam Makeba','South Africa','World',1932),(245,'Black Coffee','South Africa','House',1976),(246,'Mafikizolo','South Africa','Afro pop',1997),(247,'Abdullah Ibrahim','South Africa','Jazz',1934),(248,'Hugh Masekela','South Africa','Jazz',1939),(249,'Lucky Dube','South Africa','Reggae',1964),(250,'AKA','South Africa','Hip hop',1988),(251,'Shekhinah','South Africa','Pop',1994),(252,'Brenda Fassie','South Africa','Afropop',1964),(253,'DJ Maphorisa','South Africa','Amapiano',1987),(254,'Nasty C','South Africa','Hip hop',1997),(255,'Kabza De Small','South Africa','Amapiano',1992),(256,'Johnny Clegg','South Africa','World',1953),(257,'Sipho Mabuse','South Africa','Jazz',1951),(258,'Yvonne Chaka Chaka','South Africa','Pop',1965),(259,'Ami Faku','South Africa','Soul',1997),(260,'Master KG','South Africa','Bolobedu house',1996),(261,'Jack Parow','South Africa','Rap',1982),(262,'Elaine','South Africa','Soul',1999),(263,'Zahara','South Africa','World',1987),(264,'Steve Hofmeyr','South Africa','Pop',1964),(265,'Cassper Nyovest','South Africa','Hip hop',1990),(266,'Shaun Morgan','South Africa','Alternative rock',1978),(267,'Alice Phoebe Lou','South Africa','Folk',1993),(268,'Kwesta','South Africa','Hip hop',1988),(269,'Snotkop','South Africa','Afrikaans pop',1975),(270,'A-Reece','South Africa','Hip hop',1997),(271,'Focalistic','South Africa','Amapiano',1996),(272,'Kabelo Mabalane','South Africa','Kwaito',1976),(273,'David Scott','South Africa','Indie rock',1974),(274,'Hotep Idris Galeta','South Africa','Jazz',1941),(275,'Vusi Mahlasela','South Africa','World',1965),(276,'Oskido','South Africa','House',1967),(277,'Bobby van Jaarsveld','South Africa','Pop',1987),(278,'Nomcebo Zikode','South Africa','World',1985),(279,'Nádine','South Africa','Pop',1982),(280,'Da L.E.S','South Africa','Hip hop',1985),(281,'Babes Wodumo','South Africa','Gqom',1994),(282,'Felix Laband','South Africa','Electronica',1977),(283,'Dave Matthews','South Africa','Alternative rock',1967),(284,'Tananas','South Africa','World',1987),(285,'Dennis East','South Africa','Pop',1965),(286,'Jabu Khanyile','South Africa','World',1959),(287,'Pretty Yende','South Africa','Classical',1985),(288,'Adrienne Camp','South Africa','Rock',1980),(289,'Mvzzle','South Africa','Amapiano',1993),(290,'Rabbitt','South Africa','Pop rock',1972),(291,'Afrotraction','South Africa','R&B',1979),(292,'Ringo Madlingozi','South Africa','World',1964),(293,'Zola','South Africa','Kwaito',1977),(294,'Markus Wormstorm','South Africa','Electronica',1980);

USE timing;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
);
CREATE TABLE `f1ag` (
  `fl4g` varchar(128) DEFAULT NULL
);
INSERT INTO `users` VALUES (1,'admin','498c67b7c86b01bd68ab5cbafd245b1c');
INSERT INTO `f1ag` VALUES ('battleCTF{Common_SQLi_Time_558de3659cc32ee7bc9f1745ecd63ae2}');

USE weakness;

CREATE TABLE `users_6711f799eb9198afaba01c3218d1f7fd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);
CREATE TABLE `flag_6711f799eb9198afaba01c3218d1f7fd` (
  `flag` varchar(255) DEFAULT NULL
);
INSERT INTO `users_6711f799eb9198afaba01c3218d1f7fd` VALUES (1,'john_doe','john_doe@example.com','password123'),(2,'jane_doe','jane_doe@example.com','qwertyuiop'),(3,'jack_smith','jack_smith@example.com','password456'),(4,'jill_smith','jill_smith@example.com','asdfghjkl'),(5,'james_brown','james_brown@example.com','password789'),(6,'jessica_jones','jessica_jones@example.com','zxcvbnm'),(7,'jason_bourne','jason_bourne@example.com','password000'),(8,'julie_andrews','julie_andrews@example.com','qazwsxedc'),(9,'jimmy_fallon','jimmy_fallon@example.com','password111'),(10,'jennifer_lopez','jennifer_lopez@example.com','poiuytrewq');

INSERT INTO `flag_6711f799eb9198afaba01c3218d1f7fd` VALUES ('battleCTF{Common_SQLi_up_2da4c9bf1bc2edcf7adbe2ac28e6f696}');

USE jms;

-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2022 at 06:34 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `jms_db`
--

-- --------------------------------------------------------


CREATE TABLE `jmsflag` (
  `fl4g` varchar(128) DEFAULT NULL
);
INSERT INTO `jmsflag` VALUES ('battleCTF{JMS_Sql1_2023_pop_10687793241f3a3034af0ff35480e443}');

--
-- Table structure for table `contestants`
--

CREATE TABLE `contestants` (
  `contestant_id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `subevent_id` int(11) NOT NULL,
  `contestant_ctr` int(11) NOT NULL,
  `status` text NOT NULL,
  `txt_code` text NOT NULL,
  `rand_code` int(15) NOT NULL,
  `txtPollScore` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contestants`
--

INSERT INTO `contestants` (`contestant_id`, `fullname`, `subevent_id`, `contestant_ctr`, `status`, `txt_code`, `rand_code`, `txtPollScore`) VALUES
(5, 'Contestant 101', 2, 1, 'finish', '', 829106, 0),
(6, 'Contestant 102', 2, 2, 'finish', '', 314095, 0),
(7, 'Contestant 103', 2, 3, 'finish', '', 8021723, 0),
(8, 'Contestant 104', 2, 4, 'finish', '', 8021724, 0),
(9, 'Contestant 105', 2, 5, 'finish', '', 8021725, 0),
(10, 'Contestant 106', 2, 6, 'finish', '', 8021726, 0);

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE `criteria` (
  `criteria_id` int(11) NOT NULL,
  `subevent_id` int(11) NOT NULL,
  `criteria` text NOT NULL,
  `percentage` int(11) NOT NULL,
  `criteria_ctr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`criteria_id`, `subevent_id`, `criteria`, `percentage`, `criteria_ctr`) VALUES
(3, 2, 'Criteria 101', 10, 1),
(4, 2, 'Criteria 102', 30, 2),
(5, 2, 'Criteria 103', 20, 3),
(6, 2, 'Criteria 104', 40, 4);

-- --------------------------------------------------------

--
-- Table structure for table `judges`
--

CREATE TABLE `judges` (
  `judge_id` int(11) NOT NULL,
  `subevent_id` int(11) NOT NULL,
  `judge_ctr` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `code` varchar(6) NOT NULL,
  `jtype` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `judges`
--

INSERT INTO `judges` (`judge_id`, `subevent_id`, `judge_ctr`, `fullname`, `code`, `jtype`) VALUES
(4, 2, 1, 'Judge 101', 'zwr37i', ''),
(5, 2, 2, 'Judge 102', 'yy6aaj', ''),
(6, 2, 3, 'Judge 103', 'hx1ixu', ''),
(7, 2, 4, 'Judge 104', 'pzrun4', '');

-- --------------------------------------------------------

--
-- Table structure for table `main_event`
--

CREATE TABLE `main_event` (
  `mainevent_id` int(11) NOT NULL,
  `event_name` text NOT NULL,
  `status` text NOT NULL,
  `organizer_id` int(11) NOT NULL,
  `sy` varchar(9) NOT NULL,
  `date_start` text NOT NULL,
  `date_end` text NOT NULL,
  `place` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_event`
--

INSERT INTO `main_event` (`mainevent_id`, `event_name`, `status`, `organizer_id`, `sy`, `date_start`, `date_end`, `place`) VALUES
(2, 'Sample Event Only', 'activated', 21, '2022-2023', '2022-12-01', '2022-12-05', 'Sample Venue only');

-- --------------------------------------------------------

--
-- Table structure for table `messagein`
--

CREATE TABLE `messagein` (
  `Id` int(11) NOT NULL,
  `SendTime` varchar(10) DEFAULT NULL,
  `ReceiveTime` varchar(10) DEFAULT NULL,
  `MessageFrom` bigint(12) DEFAULT NULL,
  `MessageTo` varchar(10) DEFAULT NULL,
  `SMSC` varchar(10) DEFAULT NULL,
  `MessageText` varchar(4) DEFAULT NULL,
  `MessageType` varchar(10) DEFAULT NULL,
  `MessagePDU` varchar(10) DEFAULT NULL,
  `Gateway` varchar(10) DEFAULT NULL,
  `UserId` varchar(10) DEFAULT NULL,
  `sendStatus` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `messagelog`
--

CREATE TABLE `messagelog` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `StatusCode` int(11) DEFAULT NULL,
  `StatusText` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageId` varchar(80) DEFAULT NULL,
  `ErrorCode` varchar(80) DEFAULT NULL,
  `ErrorText` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text DEFAULT NULL,
  `Connector` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `messageout`
--

CREATE TABLE `messageout` (
  `Id` int(11) NOT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `Scheduled` datetime DEFAULT NULL,
  `ValidityPeriod` int(11) DEFAULT NULL,
  `IsSent` tinyint(1) NOT NULL DEFAULT 0,
  `IsRead` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `organizer`
--

CREATE TABLE `organizer` (
  `organizer_id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `mname` text NOT NULL,
  `lname` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `pnum` varchar(15) NOT NULL,
  `access` varchar(25) NOT NULL,
  `org_id` varchar(12) NOT NULL,
  `status` varchar(12) NOT NULL,
  `company_name` varchar(55) NOT NULL,
  `company_address` varchar(55) NOT NULL,
  `company_logo` varchar(55) NOT NULL,
  `company_telephone` varchar(55) NOT NULL,
  `company_email` varchar(55) NOT NULL,
  `company_website` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organizer`
--

INSERT INTO `organizer` (`organizer_id`, `fname`, `mname`, `lname`, `username`, `password`, `email`, `pnum`, `access`, `org_id`, `status`, `company_name`, `company_address`, `company_logo`, `company_telephone`, `company_email`, `company_website`) VALUES
(21, 'Mark', 'D', 'Cooper', 'mcooperin', 'mcooper12345', 'mcooper@mail.com', '0912354879', 'Organizer', '', 'offline', 'Sample Company 101', 'Sample Address 123', '70493-lorem-ipsum.jpg', '+12356489', 'sample@testmail.com', 'N/A'),
(22, 'judge 1', 'j', 'judge', 'judge10123', 'judge10123', '', '', 'Organizer', '', 'offline', '', '', '', '', '', ''),
(23, 'Samantha', 'S', 'Lou', 'samine', 'samine123', '', '', 'Tabulator', '21', 'offline', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rank_system`
--

CREATE TABLE `rank_system` (
  `rs_id` int(11) NOT NULL,
  `subevent_id` varchar(12) NOT NULL,
  `contestant_id` varchar(12) NOT NULL,
  `total_rank` decimal(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank_system`
--

INSERT INTO `rank_system` (`rs_id`, `subevent_id`, `contestant_id`, `total_rank`) VALUES
(1, '2', '5', '9.0'),
(2, '2', '6', '6.0'),
(3, '2', '7', '10.0'),
(4, '2', '8', '7.0'),
(5, '2', '9', '7.0'),
(6, '2', '10', '3.0');

-- --------------------------------------------------------

--
-- Table structure for table `sub_event`
--

CREATE TABLE `sub_event` (
  `subevent_id` int(11) NOT NULL,
  `mainevent_id` int(11) NOT NULL,
  `organizer_id` int(11) NOT NULL,
  `event_name` text NOT NULL,
  `status` text NOT NULL,
  `eventdate` text NOT NULL,
  `eventtime` text NOT NULL,
  `place` text NOT NULL,
  `txtpoll_status` text NOT NULL,
  `view` varchar(15) NOT NULL,
  `txtpollview` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_event`
--

INSERT INTO `sub_event` (`subevent_id`, `mainevent_id`, `organizer_id`, `event_name`, `status`, `eventdate`, `eventtime`, `place`, `txtpoll_status`, `view`, `txtpollview`) VALUES
(2, 2, 21, 'Test Sub Event', 'activated', '2022-12-02', '11:00', 'Sample Sub Event', 'active', 'activated', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `sub_results`
--

CREATE TABLE `sub_results` (
  `subresult_id` int(11) NOT NULL,
  `subevent_id` int(11) NOT NULL,
  `mainevent_id` int(11) NOT NULL,
  `contestant_id` int(11) NOT NULL,
  `judge_id` int(11) NOT NULL,
  `total_score` decimal(11,1) NOT NULL,
  `deduction` int(11) NOT NULL,
  `criteria_ctr1` decimal(11,1) NOT NULL,
  `criteria_ctr2` decimal(11,1) NOT NULL,
  `criteria_ctr3` decimal(11,1) NOT NULL,
  `criteria_ctr4` decimal(11,1) NOT NULL,
  `criteria_ctr5` decimal(11,1) NOT NULL,
  `criteria_ctr6` decimal(11,1) NOT NULL,
  `criteria_ctr7` decimal(11,1) NOT NULL,
  `criteria_ctr8` decimal(11,1) NOT NULL,
  `criteria_ctr9` decimal(11,1) NOT NULL,
  `criteria_ctr10` decimal(11,1) NOT NULL,
  `comments` text NOT NULL,
  `rank` varchar(11) NOT NULL,
  `judge_rank_stat` varchar(15) NOT NULL,
  `place_title` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_results`
--

INSERT INTO `sub_results` (`subresult_id`, `subevent_id`, `mainevent_id`, `contestant_id`, `judge_id`, `total_score`, `deduction`, `criteria_ctr1`, `criteria_ctr2`, `criteria_ctr3`, `criteria_ctr4`, `criteria_ctr5`, `criteria_ctr6`, `criteria_ctr7`, `criteria_ctr8`, `criteria_ctr9`, `criteria_ctr10`, `comments`, `rank`, `judge_rank_stat`, `place_title`) VALUES
(1, 2, 2, 5, 4, '76.0', 0, '10.0', '8.5', '18.5', '39.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', 'Sample Comment', '6', '', '5th'),
(2, 2, 2, 6, 4, '89.5', 0, '8.5', '27.0', '17.5', '36.5', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', 'test', '5', '', '2nd'),
(3, 2, 2, 7, 4, '93.5', 0, '9.0', '29.5', '18.0', '37.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '4', '', '6th'),
(4, 2, 2, 8, 4, '97.5', 0, '10.0', '28.5', '19.5', '39.5', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', 'Sample', '2', '', '3rd'),
(5, 2, 2, 9, 4, '95.0', 0, '9.5', '29.0', '18.0', '38.5', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '3', '', '4th'),
(6, 2, 2, 10, 4, '99.0', 0, '9.5', '29.5', '20.0', '40.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '1', '', '1st'),
(7, 2, 2, 5, 5, '95.0', 0, '10.0', '29.0', '16.5', '39.5', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '3', '', '5th'),
(8, 2, 2, 6, 5, '96.0', 0, '10.0', '29.0', '18.5', '38.5', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '1', '', '2nd'),
(9, 2, 2, 7, 5, '84.5', 0, '9.5', '28.0', '8.0', '39.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '6', '', '6th'),
(10, 2, 2, 8, 5, '94.0', 0, '9.0', '28.0', '19.0', '38.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '5', '', '3rd'),
(11, 2, 2, 9, 5, '94.5', 0, '8.0', '28.0', '19.5', '39.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '4', '', '4th'),
(12, 2, 2, 10, 5, '95.5', 0, '9.5', '29.0', '17.5', '39.5', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '', '2', '', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `textpoll`
--

CREATE TABLE `textpoll` (
  `textpoll_id` int(11) NOT NULL,
  `contestant_id` varchar(12) NOT NULL,
  `text_vote` int(11) NOT NULL,
  `subevent_id` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contestants`
--
ALTER TABLE `contestants`
  ADD PRIMARY KEY (`contestant_id`);

--
-- Indexes for table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`criteria_id`);

--
-- Indexes for table `judges`
--
ALTER TABLE `judges`
  ADD PRIMARY KEY (`judge_id`);

--
-- Indexes for table `main_event`
--
ALTER TABLE `main_event`
  ADD PRIMARY KEY (`mainevent_id`);

--
-- Indexes for table `messagein`
--
ALTER TABLE `messagein`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `messagelog`
--
ALTER TABLE `messagelog`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_MessageId` (`MessageId`,`SendTime`);

--
-- Indexes for table `messageout`
--
ALTER TABLE `messageout`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_IsRead` (`IsRead`);

--
-- Indexes for table `organizer`
--
ALTER TABLE `organizer`
  ADD PRIMARY KEY (`organizer_id`);

--
-- Indexes for table `rank_system`
--
ALTER TABLE `rank_system`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `sub_event`
--
ALTER TABLE `sub_event`
  ADD PRIMARY KEY (`subevent_id`);

--
-- Indexes for table `sub_results`
--
ALTER TABLE `sub_results`
  ADD PRIMARY KEY (`subresult_id`);

--
-- Indexes for table `textpoll`
--
ALTER TABLE `textpoll`
  ADD PRIMARY KEY (`textpoll_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contestants`
--
ALTER TABLE `contestants`
  MODIFY `contestant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `criteria`
--
ALTER TABLE `criteria`
  MODIFY `criteria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `judges`
--
ALTER TABLE `judges`
  MODIFY `judge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `main_event`
--
ALTER TABLE `main_event`
  MODIFY `mainevent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messagein`
--
ALTER TABLE `messagein`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messagelog`
--
ALTER TABLE `messagelog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messageout`
--
ALTER TABLE `messageout`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `organizer`
--
ALTER TABLE `organizer`
  MODIFY `organizer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `rank_system`
--
ALTER TABLE `rank_system`
  MODIFY `rs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_event`
--
ALTER TABLE `sub_event`
  MODIFY `subevent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_results`
--
ALTER TABLE `sub_results`
  MODIFY `subresult_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `textpoll`
--
ALTER TABLE `textpoll`
  MODIFY `textpoll_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;
