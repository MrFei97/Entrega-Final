CREATE DATABASE  IF NOT EXISTS `proyecto_alpha` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `proyecto_alpha`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_alpha
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_obra_social` int NOT NULL,
  `idreceta` int NOT NULL,
  `id_histclinico` int NOT NULL,
  `id_farm` int NOT NULL,
  `id_cliente` int NOT NULL,
  `nombre_cliente` varchar(50) NOT NULL,
  `apellido_cliente` varchar(50) NOT NULL,
  `dni_cliente` int NOT NULL,
  `telefono_cliente` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `id_obra_social` (`id_obra_social`),
  KEY `idreceta` (`idreceta`),
  KEY `id_histclinico` (`id_histclinico`),
  KEY `id_farm` (`id_farm`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_obra_social`) REFERENCES `obrasocial` (`id_obraSocial`),
  CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`idreceta`) REFERENCES `receta` (`id_receta`),
  CONSTRAINT `cliente_ibfk_3` FOREIGN KEY (`id_histclinico`) REFERENCES `historialclinico` (`id_historialClinico`),
  CONSTRAINT `cliente_ibfk_4` FOREIGN KEY (`id_farm`) REFERENCES `farmacia` (`id_farmacia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (5146,1,7574,1,1,'Bernice','Darling',38931763,'6511669419','bdarling0@unicef.org'),(543,2,206,2,2,'Nicoline','Kaindl',50437944,'8859432349','nkaindl1@sourceforge.net'),(5680,3,6168,3,3,'Audie','Caldwell',24671187,'3572842356','acaldwell2@cornell.edu'),(3029,4,4485,4,4,'Caitlin','Wildin',22065504,'5469665245','cwildin3@mapquest.com'),(5713,5,7791,5,5,'Traci','Normanville',44987727,'6344751669','tnormanville4@dailymotion.com'),(6969,6,8373,6,6,'Gerty','Leamon',21009048,'4994602271','gleamon5@google.co.jp'),(8920,7,8258,7,7,'Emlyn','Balfour',12815012,'1752858171','ebalfour6@blinklist.com'),(5083,8,2814,8,8,'Anestassia','Bednall',34754880,'2993582395','abednall7@mapquest.com'),(771,9,3961,9,9,'Vida','Fosdike',9857496,'5294328997','vfosdike8@chronoengine.com'),(5542,10,1814,10,10,'Bari','Francescotti',14112696,'2426627474','bfrancescotti9@mashable.com'),(7991,11,3141,11,11,'Norri','Shepperd',23554551,'6774431192','nshepperda@last.fm'),(7172,12,8612,12,12,'Leontyne','Fallawe',4122283,'7315091595','lfallaweb@topsy.com'),(5516,13,452,13,13,'Tallou','Duff',1956992,'7312730792','tduffc@bbb.org'),(1195,14,1356,14,14,'Guendolen','MacNeil',34294885,'1529168278','gmacneild@ebay.co.uk'),(1318,15,622,15,15,'Fayth','Ber',48888175,'9445388871','fbere@multiply.com'),(762,16,5884,16,16,'Amanda','Haine',36681964,'9485205174','ahainef@answers.com'),(8063,17,6652,17,17,'Perla','Patrono',51780529,'5522142295','ppatronog@youtu.be'),(8128,18,7037,18,18,'Amalle','Sammons',17195292,'4743129088','asammonsh@dell.com'),(8987,19,6997,19,19,'Ashley','Cadell',29429837,'3209704542','acadelli@wordpress.org'),(603,20,1224,20,20,'Kellen','Adamczyk',7770834,'5712276467','kadamczykj@nydailynews.com'),(899,21,8343,21,21,'Lorilyn','Blick',34625986,'4929785816','lblickk@ebay.co.uk'),(2774,22,3143,22,22,'Teirtza','Colquitt',22454898,'6934956218','tcolquittl@reuters.com'),(7261,23,821,23,23,'Beryl','Hodgins',8542853,'2169507254','bhodginsm@goodreads.com'),(3718,24,8305,24,24,'Ilysa','De Malchar',13708666,'7895684139','idemalcharn@shinystat.com'),(8175,25,7199,25,25,'Steffi','Brotherwood',41641080,'1283696441','sbrotherwoodo@gravatar.com'),(2375,26,8274,26,26,'Heidie','Aingel',41893844,'6365634737','haingelp@51.la'),(5500,27,1003,27,27,'Coraline','Gosse',33780426,'5411406123','cgosseq@senate.gov'),(8610,28,1696,28,28,'Ondrea','Grogona',6099801,'6624057560','ogrogonar@amazon.de'),(518,29,8615,29,29,'Bessie','Battabee',6492919,'4752112541','bbattabees@wired.com'),(6002,30,5587,30,30,'Phyllis','Stert',13690144,'7144173256','pstertt@disqus.com'),(1108,31,5594,31,31,'Drusi','Barefoot',5226797,'8256796371','dbarefootu@constantcontact.com'),(6574,32,6062,32,32,'Lilith','Myrtle',16017560,'2781098105','lmyrtlev@ow.ly'),(234,33,8256,33,33,'Tamera','Henstone',39320535,'8315823136','thenstonew@mashable.com'),(1114,34,1364,34,34,'Theresa','Davidde',1333594,'4356442135','tdaviddex@simplemachines.org'),(6445,35,3278,35,35,'Darda','Phillott',41170890,'8103901989','dphillotty@yellowbook.com'),(2079,36,6536,36,36,'Nannie','Severns',45391262,'7928199931','nsevernsz@imdb.com'),(1329,37,8581,37,37,'Paulita','Wickwar',18432556,'3629713874','pwickwar10@infoseek.co.jp'),(5721,38,2456,38,38,'Tiffy','Wycherley',16902008,'4453036085','twycherley11@plala.or.jp'),(7087,39,6577,39,39,'Johna','Thurlborn',45475075,'3499602395','jthurlborn12@netvibes.com'),(4162,40,3998,40,40,'Mirilla','Beteriss',47766081,'9641079271','mbeteriss13@si.edu'),(2875,41,4818,41,41,'Consuela','Comettoi',39140753,'6327978791','ccomettoi14@dell.com'),(8760,42,741,42,42,'Celeste','Roiz',33741529,'6738806724','croiz15@psu.edu'),(3840,43,5204,43,43,'Ania','Symson',10523904,'8075709343','asymson16@ibm.com'),(1335,44,6236,44,44,'Ardra','Knutton',5751937,'5445774022','aknutton17@blogspot.com'),(8761,45,8696,45,45,'Philippa','Toma',24492901,'2754043781','ptoma18@theatlantic.com'),(4406,46,2376,46,46,'Carmen','Kisbey',16764103,'8133013314','ckisbey19@scribd.com'),(5262,47,267,47,47,'Lacie','Beck',50187651,'7155562438','lbeck1a@tumblr.com'),(6100,48,3771,48,48,'Nertie','Kettlewell',25151590,'8964792266','nkettlewell1b@foxnews.com'),(7727,49,2033,49,49,'Rorie','Kennett',42697325,'5671206480','rkennett1c@china.com.cn'),(7812,50,7628,50,50,'Hali','Delacour',41809887,'9861450373','hdelacour1d@photobucket.com');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `farmacia`
--

DROP TABLE IF EXISTS `farmacia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farmacia` (
  `id_farmacia` int NOT NULL,
  `stock_farmaco` varchar(50) NOT NULL,
  `nombre_farmaco` varchar(100) NOT NULL,
  `precio_farmaco` float NOT NULL,
  `descripcion_farmaco` varchar(50) NOT NULL,
  PRIMARY KEY (`id_farmacia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farmacia`
--

LOCK TABLES `farmacia` WRITE;
/*!40000 ALTER TABLE `farmacia` DISABLE KEYS */;
INSERT INTO `farmacia` VALUES (1,'1','Temazepam',1762.63,'Contact/exposure mold'),(2,'1','SYMBICORT',3168.65,'Mal neo skn low limb NOS'),(3,'0','Adidas 24H Anti Perspirant',3225.8,'RR accident NOS-employee'),(4,'1','mally Face Defender Foundation',1387.84,'Opn skl fx NEC-deep coma'),(5,'1','ACETAMINOPHEN',1266.59,'Atrophic flaccid tympan'),(6,'1','BeneFIX',2816.78,'Cough'),(7,'0','Oxygen',4545.64,'Undeter pois-arsenic'),(8,'1','BEEVENOM ESSENCE',3644.51,'Opn skul vlt fx w/o coma'),(9,'1','Stool Softener',2948.69,'Fx up radius NEC/NOS-cl'),(10,'0','Meclizine Hydrochloride',3204.1,'Acute & chronc resp fail'),(11,'0','Berberis Oxalis',3946.34,'Adhesive pericarditis'),(12,'1','GENOTROPIN',3962.92,'Speech disturbance NEC'),(13,'1','Ziprasidone Hydrochloride',2356.33,'2nd deg burn leg-mult'),(14,'0','3M Avagard Foam',4170.79,'Orbital periostitis'),(15,'1','Vanilla Bean Antibacterial Hand',1711.7,'Sprain coracoclavicular'),(16,'1','Lidocaine Hydrochloride',2944.18,'Dermatitis oth radiation'),(17,'1','Allergy Relief',4496.82,'Bladder wall hemorrhage'),(18,'1','Hydroxyzine Hydrochloride',4549.64,'Oth adult abuse/neglect'),(19,'0','Care One Cherry SPF 4 Lip Balm',1849.63,'Respiratory comp NEC'),(20,'1','LEUKERAN',4804.03,'Syphil endocarditis NOS'),(21,'1','Detox and Drainage, Blood and Kidney',1622.09,'Ac embl thorac vein NEC'),(22,'0','Leader Cardinal Health Aspirin',4342.76,'Keratoconjunctivitis NEC'),(23,'0','Zicam',3338.78,'Unc behav neo resp NEC'),(24,'1','Sucrets',3401.52,'Trans cereb ischemia NOS'),(25,'0','Cold Head Congestion Daytime',2943.35,'Congenital hypothyroidsm'),(26,'0','Jantoven',2949.59,'Dvrtcli sml int w hmrhg'),(27,'1','Ibuprofen',3837.12,'Abdomen/pelvis symp NEC'),(28,'0','RITE AID RENEWAL',1901.24,'Rh incomp/HTR NEC'),(29,'0','PLAGENTRA SOOTHING REVOLUTION SUNCITY',4193.95,'Hx pathological fracture'),(30,'1','CLARINS Broad Spectrum SPF 30 Sunscreen For Face Wrinkle Control',1638.66,'Complic labor NEC-deliv'),(31,'0','Laxacin',898.1,'Neurasthenia'),(32,'0','ESTRACE',2174.54,'Stress fx shaft femur'),(33,'0','Carters Little Pills',2480.6,'3rd deg burn breast'),(34,'1','CLONIDINE HYDROCHLORIDE',4281.7,'Atrophy maxilla-minimal'),(35,'0','Testosterone Cypionate',3601.38,'Peritonitis NEC'),(36,'1','Renova',1661.94,'Mal neo body uterus NEC'),(37,'0','Sheer FluorX PEDO',4605.9,'Fam hx-urinry malig NEC'),(38,'1','Diltiazem Hydrochloride',535.19,'Forceps delivery aff NB'),(39,'0','Alendronate Sodium',3932.97,'Hx-blood diseases'),(40,'1','No7 Protect and Perfect Foundation Sunscreen Broad Spectrum SPF 15 Mocha',4799.26,'Development delays NEC'),(41,'0','Amoxicillin',3388.77,'Opn skul/oth fx w/o coma'),(42,'1','SERTRALINE HYDROCHLORIDE',1467.18,'Acq absence knee joint'),(43,'1','Hasol Revitalizing',2024.05,'Amputat bk, unilat-compl'),(44,'0','EPICOCCUM NIGRUM',3366.52,'Abn serum enzy level NEC'),(45,'1','Denti-Care',1452.44,'Cl skul base fx w/o coma'),(46,'0','Norepinephrine',2806.98,'Hx of leukemia NEC'),(47,'0','HAND SANITIZER',2786.53,'Mal neo nervous syst NEC'),(48,'0','Nystatin and Triamcinolone',3921.44,'Sprain interphalangeal'),(49,'1','ADVATE',3001.74,'Esophageal reflux'),(50,'0','Labetalol hydrochloride',2522.72,'Hodgkins mix cell pelvic');
/*!40000 ALTER TABLE `farmacia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historialclinico`
--

DROP TABLE IF EXISTS `historialclinico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historialclinico` (
  `id_historialClinico` int NOT NULL,
  `nombre_medico` varchar(50) NOT NULL,
  `numero_medico` varchar(80) NOT NULL,
  `observacion` varchar(150) DEFAULT NULL,
  `especialidad` varchar(50) NOT NULL,
  `fecha_citada` date NOT NULL,
  PRIMARY KEY (`id_historialClinico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historialclinico`
--

LOCK TABLES `historialclinico` WRITE;
/*!40000 ALTER TABLE `historialclinico` DISABLE KEYS */;
INSERT INTO `historialclinico` VALUES (206,'Eloise Oakeshott','5946562097','Plain Radiography of Right Epididymis using L Osm Contrast','Technical Writer','2021-12-14'),(267,'Perla Rantoull','7456707516','Excision of Right Innominate Vein, Perc Endo Approach','Assistant Manager','2021-12-05'),(452,'Nicolas Moyle','8944687659','Destruction of Appendix, Percutaneous Approach','Nuclear Power Engineer','2021-12-15'),(622,'Marna MacFayden','3884082891','Occlusion of R Int Carotid with Intralum Dev, Perc Approach','Engineer III','2022-03-11'),(741,'Gilburt Zarb','9013636133','Revision of Synth Sub in Sacrococcygeal Jt, Extern Approach','Paralegal','2022-02-03'),(821,'Price Sustin','6223569437','Occlusion of Colic Vein with Extralum Dev, Open Approach','Operator','2022-02-03'),(1003,'Carree Labadini','4933417878','Drainage of Upper Esophagus, Perc Endo Approach, Diagn','Human Resources Assistant III','2022-03-04'),(1224,'Florance Canadas','5423340918','Supplement L Finger Phalanx Jt with Synth Sub, Perc Approach','VP Marketing','2022-04-12'),(1356,'Augustina Stanesby','2197691597','Beam Radiation of Thorax Lymphatics using Photons >10 MeV','Librarian','2022-01-05'),(1364,'Hamel Asche','7759360190','Repair Upper Lip, Percutaneous Approach','Budget/Accounting Analyst III','2022-01-09'),(1696,'Mellisa Pumfrett','9483641728','Drainage of Epiglottis, Percutaneous Approach, Diagnostic','Registered Nurse','2021-08-11'),(1814,'Lena Middle','7506433247','Dilation of Stomach, Percutaneous Approach','Research Nurse','2022-04-29'),(2033,'Alma Rolfo','8966568352','Release Left Toe Phalangeal Joint, External Approach','Director of Sales','2022-01-07'),(2376,'Sergeant Ralfe','9859860434','Drainage of Left Ovary, Open Approach, Diagnostic','Web Developer II','2021-11-24'),(2456,'Dulcinea Renn','7199520028','Insertion of Infusion Dev into R Subclav Art, Open Approach','Automation Specialist IV','2021-11-15'),(2814,'Gussie Beardow','1777969781','Revision of Int Fix in L Ulna, Extern Approach','Junior Executive','2021-11-11'),(3141,'Vladimir Worrill','4892431621','Inspection of Larynx, Open Approach','Librarian','2021-09-23'),(3143,'Linette Rhodus','6244425102','Inspection of Vagina and Cul-de-sac, Open Approach','Director of Sales','2022-05-02'),(3278,'Jobie Kuschel','8049405455','Dilation of Right Vertebral Vein, Percutaneous Approach','Accounting Assistant III','2021-08-06'),(3771,'Rorie Oakley','7395171990','Revision of Autol Sub in Nasal Bone, Perc Endo Approach','VP Quality Control','2022-03-22'),(3961,'Debora Duckerin','2725250752','Excision of Common Bile Duct, Via Opening','Nuclear Power Engineer','2022-01-17'),(3998,'Bailie Lawrance','2211389582','CT Scan L Pelvic Vein w H Osm Contrast, Unenh, Enhance','Mechanical Systems Engineer','2022-05-22'),(4485,'Averell Dossantos','8117712433','Dilation of Esophagogastric Junction, Via Opening','Safety Technician III','2021-10-30'),(4818,'Lionel Josephoff','9344268499','Revision of Int Fix in R Toe Phalanx, Perc Approach','Geologist I','2022-02-05'),(5204,'Gustavo Akram','6232831137','Extirpation of Matter from L Sup Parathyroid, Perc Approach','Human Resources Assistant II','2021-11-21'),(5587,'Velvet Povall','5672838942','Destruction of Left Lower Eyelid, Percutaneous Approach','Senior Financial Analyst','2022-01-30'),(5594,'Geri Lesser','3836541523','Extraction of Upper Tooth, Multiple, External Approach','Statistician II','2021-12-21'),(5884,'Hort Bosward','8402562608','Destruction of Bilateral Lungs, Percutaneous Approach','Pharmacist','2021-12-19'),(6062,'Venus Kenafaque','4724744599','Transplantation of R Up Lung Lobe, Zooplast, Open Approach','Media Manager IV','2022-04-03'),(6168,'Carlos Impleton','7466564414','Beam Radiation of Abdomen Lymphatics using Electrons','Account Executive','2021-07-14'),(6236,'Elie Hush','7938536008','Dilation of Urethra, Via Natural or Artificial Opening','Geological Engineer','2022-02-09'),(6536,'Evangelina Pateman','8735345948','Reposition Upper Tooth with Ext Fix, All, Open Approach','Budget/Accounting Analyst IV','2021-08-28'),(6577,'Diarmid Sapey','6308151436','Occlusion of L Foot Art with Intralum Dev, Open Approach','Assistant Professor','2022-02-02'),(6652,'Genia Droghan','8401204310','MRI of Lumbar Spine using Oth Contrast, Unenh, Enhance','VP Quality Control','2022-01-22'),(6997,'Giselle Cormack','3426917795','Transfer Left Foot Bursa and Ligament, Perc Endo Approach','Nurse Practicioner','2022-05-13'),(7037,'Kathe Bent','7572736034','Repair Left Spermatic Cord, Percutaneous Approach','Information Systems Manager','2021-09-28'),(7199,'Hope McGlue','5422950661','Excision of Pericardium, Open Approach, Diagnostic','Business Systems Development Analyst','2021-11-03'),(7574,'Ingaborg Ahrend','2002337294','Drainage of Ileum, Endo, Diagn','Accounting Assistant IV','2021-12-01'),(7628,'Antonin Grabbam','8644850549','Bypass L Fem Art to Post Tib Art w Autol Vn, Perc Endo','Information Systems Manager','2022-04-02'),(7791,'Bonni Caselli','8198658021','Excision of R Up Arm Subcu/Fascia, Perc Approach, Diagn','Compensation Analyst','2022-03-08'),(8256,'Abbey Wyley','5387167949','HDR Brachytherapy of Chest Wall using Cesium 137','Environmental Specialist','2021-12-24'),(8258,'Caspar Sarfat','3991930055','Resection of Small Intestine, Open Approach','Sales Associate','2022-04-29'),(8274,'Merci Boncoeur','3862161370','Excision of Epiglottis, Percutaneous Approach, Diagnostic','Systems Administrator III','2021-10-19'),(8305,'Moreen McCosker','6738182776','Excision of Lingula Bronchus, Perc Endo Approach','Assistant Manager','2022-01-07'),(8343,'Juanita Eskrigge','7288297458','Revision of Ext Fix in R Fibula, Open Approach','Sales Associate','2021-08-07'),(8373,'Boy Thorsen','1002836326','Remove Int Fix from L Finger Phalanx Jt, Perc Endo','Research Assistant I','2022-02-03'),(8581,'Jennie Boik','5821510359','Beam Radiation of Peripheral Nerve using Neutron Capture','Help Desk Operator','2022-05-10'),(8612,'Cleveland Carme','3134813943','Reposition Ampulla of Vater, Open Approach','Clinical Specialist','2021-10-14'),(8615,'Karlens Lyver','1941613489','Excision of Right Choroid, Open Approach, Diagnostic','Food Chemist','2021-07-09'),(8696,'Othilia O\'Neal','8955153586','Insertion of Neurostimulator Lead into Brain, Open Approach','Recruiting Manager','2021-09-22');
/*!40000 ALTER TABLE `historialclinico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obrasocial`
--

DROP TABLE IF EXISTS `obrasocial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obrasocial` (
  `id_obraSocial` int NOT NULL,
  `telefono_cliente` varchar(100) DEFAULT NULL,
  `nombre_cliente` varchar(50) NOT NULL,
  `apellido_cliente` varchar(50) NOT NULL,
  `nombre_obraSocial` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `numero_socio` int NOT NULL,
  PRIMARY KEY (`id_obraSocial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obrasocial`
--

LOCK TABLES `obrasocial` WRITE;
/*!40000 ALTER TABLE `obrasocial` DISABLE KEYS */;
INSERT INTO `obrasocial` VALUES (234,'8687861094','Vikky','Twiddy','Bubbletube','vtwiddyw@howstuffworks.com',340),(518,'4313202252','Ario','Wingeat','Zoonoodle','awingeats@apache.org',1800),(543,'6902570235','Hurley','Marven','Shuffledrive','hmarven1@oakley.com',3810),(603,'7504791760','Clemente','Boncoeur','Katz','cboncoeurj@yandex.ru',1861),(762,'2637185723','Alexina','Watsham','Roomm','awatshamf@nyu.edu',4045),(771,'5701751040','Miran','Aldrin','Yodoo','maldrin8@wufoo.com',8811),(899,'8229187035','Hartwell','Westerman','Skyble','hwestermank@google.co.jp',8796),(1108,'2309669664','Prisca','MacFadden','Wordtune','pmacfaddenu@answers.com',2146),(1114,'2643792059','Albie','Luetchford','Demimbu','aluetchfordx@4shared.com',8573),(1195,'6645665187','Garvy','Mastrantone','Thoughtstorm','gmastrantoned@amazon.de',1467),(1318,'9899275497','Celina','Skittle','Agimba','cskittlee@vimeo.com',3319),(1329,'5015290147','Ethelbert','Newe','Livefish','enewe10@sitemeter.com',2168),(1335,'4639042530','Lotti','Tillard','Topiclounge','ltillard17@wikispaces.com',3280),(2079,'4721374244','Cameron','Britt','LiveZ','cbrittz@wired.com',3757),(2375,'5694251997','Currey','Brisset','Edgewire','cbrissetp@homestead.com',8808),(2774,'3825048683','Aurlie','Nunson','Browsezoom','anunsonl@ebay.com',8392),(2875,'1987634693','Joy','Benadette','Bubbletube','jbenadette14@wikipedia.org',5220),(3029,'4123066032','Carney','Crucitti','Zoovu','ccrucitti3@walmart.com',1104),(3718,'7535520014','Rudolph','Tearle','Gabvine','rtearlen@twitpic.com',1761),(3840,'9314349538','Deeyn','Hardwicke','Jamia','dhardwicke16@newyorker.com',4200),(4162,'3502084147','Egon','Sarle','Yadel','esarle13@cdc.gov',7547),(4406,'2362391112','Nikolaus','Ghione','Browseblab','nghione19@diigo.com',2744),(5083,'6295128428','Brita','Giraldez','Kimia','bgiraldez7@blogger.com',3752),(5146,'8701905959','Cleveland','Ghidelli','Aimbu','cghidelli0@prweb.com',556),(5262,'7263541135','Marcelline','Quincey','Thoughtbeat','mquincey1a@craigslist.org',6321),(5500,'2805524423','Sophronia','Joris','Tagpad','sjorisq@mysql.com',7942),(5516,'5172963744','Uri','Prin','Mydo','uprinc@discovery.com',914),(5542,'8484986882','Matthiew','Yushkin','Dynazzy','myushkin9@hugedomains.com',6133),(5680,'3372757290','Roi','Strut','Divavu','rstrut2@flavors.me',2636),(5713,'2264809543','Euell','Jefferson','Photofeed','ejefferson4@bluehost.com',2008),(5721,'6514849079','Franz','Severy','Wikizz','fsevery11@pcworld.com',3451),(6002,'3141648718','Brittan','Kalker','Blognation','bkalkert@thetimes.co.uk',6524),(6100,'8055539026','Tomlin','Pauncefort','Mycat','tpauncefort1b@phoca.cz',129),(6445,'4277008516','Deck','Venneur','Tagtune','dvenneury@bigcartel.com',6221),(6574,'9937850976','Selby','Trinke','Zooxo','strinkev@soundcloud.com',5887),(6969,'9476665341','Corbett','Chastang','Oyonder','cchastang5@storify.com',4852),(7087,'6925063615','Mattias','Mogenot','Blogspan','mmogenot12@technorati.com',7323),(7172,'8154829583','Rafe','Warrior','Photobug','rwarriorb@mayoclinic.com',7821),(7261,'7016805332','Gretchen','Daubney','Yabox','gdaubneym@state.tx.us',7126),(7727,'5453485176','Jolene','Barmby','Aimbo','jbarmby1c@sphinn.com',2498),(7812,'1097554291','Pattin','Bollands','Latz','pbollands1d@rediff.com',463),(7991,'2609272942','Ab','Deverille','Edgetag','adeverillea@answers.com',63),(8063,'6499058034','Niki','Pisculli','Twimbo','npiscullig@google.es',8630),(8128,'5761186199','Cherilynn','Kahen','Vinte','ckahenh@nbcnews.com',3541),(8175,'5872078786','Bonnee','Kohrsen','Cogidoo','bkohrseno@ycombinator.com',1395),(8610,'2529641375','Gabbey','Blower','LiveZ','gblowerr@exblog.jp',8315),(8760,'1324808499','Caril','Georgiades','Oozz','cgeorgiades15@networksolutions.com',5810),(8761,'2268762612','Alyson','Coard','Livepath','acoard18@prweb.com',2454),(8920,'3657449511','Barton','Stolting','Brightbean','bstolting6@diigo.com',5778),(8987,'2397702484','Annamarie','Morison','Twitterbeat','amorisoni@army.mil',2351);
/*!40000 ALTER TABLE `obrasocial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receta`
--

DROP TABLE IF EXISTS `receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receta` (
  `id_receta` int NOT NULL,
  `dosis` float NOT NULL,
  `farmaco_recetado` varchar(100) NOT NULL,
  `validez_receta` date NOT NULL,
  `frecuencia_uso` time NOT NULL,
  PRIMARY KEY (`id_receta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receta`
--

LOCK TABLES `receta` WRITE;
/*!40000 ALTER TABLE `receta` DISABLE KEYS */;
INSERT INTO `receta` VALUES (1,1.3,'BABY ECZEMA RELIEF','2022-03-29','07:09:00'),(2,7.7,'healthy accents allergy relief','2021-09-22','08:07:00'),(3,8.1,'Torsemide','2022-05-18','10:38:00'),(4,6.3,'Podocon 25','2022-04-06','08:21:00'),(5,3.7,'Gabapentin','2021-10-21','09:36:00'),(6,2.1,'Darkleaves Mugwort','2022-01-26','01:27:00'),(7,6.1,'Alprazolam','2021-08-24','01:26:00'),(8,1.1,'acyclovir','2021-06-14','01:00:00'),(9,7.4,'Oi Lin Natural Sunscreen SPF 30','2021-11-19','10:27:00'),(10,5.3,'Principal Secret','2022-01-26','09:18:00'),(11,9.8,'Minocin','2021-11-10','11:14:00'),(12,3.8,'Carvedilol','2022-01-20','08:45:00'),(13,2,'Gabapentin','2021-06-16','04:43:00'),(14,1.5,'Levofloxacin','2021-10-03','06:00:00'),(15,7.3,'Fever and Flu','2021-06-20','01:58:00'),(16,7.2,'LIDOCAINE','2022-01-26','08:07:00'),(17,4.9,'Yeast Freee','2021-07-28','02:13:00'),(18,9.7,'Bacitracin Zinc','2022-05-12','12:19:00'),(19,1.6,'IOPE AIR CUSHION XP','2021-12-11','05:45:00'),(20,3.7,'Coralite Antibacterial','2021-08-19','06:26:00'),(21,4.6,'Acetaminophen PM','2022-03-07','04:19:00'),(22,1.7,'Aplenzin','2021-08-28','09:22:00'),(23,3.2,'Epinephrine','2022-02-24','10:19:00'),(24,7.1,'Oxygen','2021-07-01','09:40:00'),(25,1.1,'Nystatin','2021-08-22','06:39:00'),(26,5.4,'Quetiapine fumarate','2021-12-15','05:56:00'),(27,2.3,'Fexofenadine HCl','2021-08-19','06:41:00'),(28,1.4,'ATO-K','2022-01-16','12:35:00'),(29,6.2,'Thioridazine Hydrochloride','2021-12-09','12:50:00'),(30,1.4,'Treatment Set TS329109','2021-06-19','07:04:00'),(31,7.4,'ZENPEP','2021-09-12','08:56:00'),(32,5.3,'Ceftazidime','2022-03-02','09:19:00'),(33,7.5,'Clobetasol Propionate Emulsion','2021-12-16','04:04:00'),(34,2.2,'equaline heartburn prevention','2021-11-04','10:27:00'),(35,1.2,'metolazone','2021-09-16','12:37:00'),(36,3.4,'Lisinopril','2021-11-28','12:37:00'),(37,9.8,'Red Oak','2022-01-24','11:43:00'),(38,8,'Pollens - Trees, Pine Mix','2021-06-24','02:10:00'),(39,4,'Thiola','2021-12-24','06:16:00'),(40,7.2,'Reed Therapeutics Pain Relieving Therapy','2022-02-24','02:04:00'),(41,1.9,'anti diarrheal','2021-07-03','10:25:00'),(42,2.7,'Out Back Pain Relief','2021-06-14','02:23:00'),(43,8.3,'pioglitazone hydrochloride','2022-01-24','03:35:00'),(44,9.4,'Glyburide and Metformin Hydrochloride','2021-08-25','03:50:00'),(45,5.2,'Purminerals 4 in 1 Makeup SPF 15 Light','2022-05-05','04:55:00'),(46,2,'Hydrocortisone with Aloe','2021-12-31','03:57:00'),(47,6.8,'Paprika','2022-03-23','09:19:00'),(48,9.6,'Midazolam HCl','2022-01-20','06:43:00'),(49,7.8,'NEW DOCTOR AG PLUS','2021-12-17','07:11:00'),(50,3.9,'Natural Fiber Therapy Natural Laxative','2021-11-25','07:57:00');
/*!40000 ALTER TABLE `receta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-28 20:42:46
