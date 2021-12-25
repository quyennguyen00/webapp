-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: webappdb
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Giảm đau - Hạ sốt',NULL),(2,'Kháng sinh',NULL),(3,'Kháng viêm',NULL),(4,'Nhóm trị giun',NULL),(5,'Nhóm thuốc dạ dày',NULL),(6,'Nhóm thuốc tiêu hóa',NULL),(7,'Thuốc ngoài da',NULL),(8,'Nhóm thuốc nhỏ mắt',NULL),(9,'Nhóm dán - giảm đau',NULL),(10,'Nhóm vitamin - khoáng chất',NULL),(11,'Nhóm thuốc tim mạch',NULL),(12,'Nhóm trị các loại nấm',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufactory`
--

DROP TABLE IF EXISTS `manufactory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufactory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `factory` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufactory`
--

LOCK TABLES `manufactory` WRITE;
/*!40000 ALTER TABLE `manufactory` DISABLE KEYS */;
INSERT INTO `manufactory` VALUES (1,'Công ty CP Dược Hậu Giang','	Việt Nam'),(2,'	Công ty cổ phần dược phẩm OPV','	Việt Nam'),(3,'	Công ty TNHH Đông Dược Xuân Quang','	Việt Nam'),(4,'Công ty cổ phần Dược-VTYT Nghệ An','	Việt Nam'),(5,'	CÔNG TY CỔ PHẦN DƯỢC HẬU GIANG - Chi nhánh nhà máy dược phẩm DHG tại Hậu Giang','	Việt Nam'),(6,'	Bal Pharma Ltd.','	Ấn Độ'),(7,'	Macleods Pharmaceuticals Ltd.','	Ấn Độ'),(8,'Rusan Pharma Ltd','	Ấn Độ'),(9,'	Korea Prime Pharm. Co., Ltd.','	Hàn quốc'),(10,'	Institute of Isotopes Co., Ltd','	Hungary'),(11,'Baxter HealthCare SA, Singapore branch','Singapore'),(12,'Actavis Italy S.p.A','Ý'),(13,'Pfizer Manufacturing Belgium N.V.','Bỉ'),(14,'	NOBEL ILAC SANAYII VE TICARET A.S.','Turkey'),(15,'Abbott Biologicals B.V','Hà Lan'),(16,'	Laboratorios Normon, S.A.','Spain'),(17,'	Famar Orleans','Pháp'),(18,'	Biofarm Sp. zo.o.','Ba Lan'),(19,'	Boehringer Ingelheim Pharma GmbH & Co. KG','Đức'),(20,'	Novo Nordisk A/S','Đan Mạch'),(21,'Cilag AG','	Thụy Sĩ'),(22,'Pharmathen International S.A.','Hi Lạp'),(23,'	Ilko Ilac San. ve Tic. A.S.','Thổ Nhĩ Kỳ'),(24,'Ebewe Pharma Ges.m.b.H.Nfg.KG','Áo'),(25,'Công ty TNHH DP Hisamitsu Việt Nam','Việt Nam'),(26,'	Pfizer Pharmaceuticals LLC','Hoa Kỳ'),(27,'	Bluepharma- Indústria Farmacêutica, S.A. (Fab. Coimbra)','Bồ Đào Nha'),(28,'Công ty cổ phần dược Trung ương 3','Việt Nam'),(29,'Nhà máy Stada Việt Nam','Việt Nam'),(30,'	Egyptian International Pharmaceutical Industries Conpany (EIPICO.','Ai Cập'),(31,'	Công ty cổ phần Pymepharco','Việt Nam');
/*!40000 ALTER TABLE `manufactory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicines`
--

DROP TABLE IF EXISTS `medicines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `element` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  `type_id` int(11) NOT NULL,
  `manufactory_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_type_medicine_idx` (`type_id`),
  KEY `fk_manufactory_medicine_idx` (`manufactory_id`),
  KEY `fk_supplier_medicine_idx` (`supplier_id`),
  KEY `fk_category_medicine_idx` (`category_id`),
  CONSTRAINT `fk_category_medicine` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `fk_manufactory_medicine` FOREIGN KEY (`manufactory_id`) REFERENCES `manufactory` (`id`),
  CONSTRAINT `fk_supplier_medicine` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`),
  CONSTRAINT `fk_type_medicine` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicines`
--

LOCK TABLES `medicines` WRITE;
/*!40000 ALTER TABLE `medicines` DISABLE KEYS */;
INSERT INTO `medicines` VALUES (1,'	Magnesi - B6','Magnesi lactat dihydrat + Vitamin B6','570mg; 7mg','',693,1,1,18,1),(5,'Hapacol Blue','	Paracetamol','500mg','Hộp 10 vỉ × 10 viên',473,1,1,15,1),(6,'Etoral Cream','Mỗi tuýp 5g kem chứa: Ketoconazol','	0,1g','	Hộp 1 tuýp 5g',7560,7,1,15,12),(7,'Lefloxa - 500','Levofloxacin (dưới dạng Levofloxacin hemihydrat) 500mg','500mg','	Hộp 1 vỉ x 5 viên',14000,1,24,17,2),(8,'Simegaz Plus','Mỗi gói 10ml chứa: Nhôm hydroxyd (dưới dạng Nhôm hydroxyd gel) 0,61g; Magnesi hydroxyd 0,8g; Simethicon (dưới dạng Simethicon emulsion 30%) 0,08g','Nhôm hydroxyd (dưới dạng Nhôm hydroxyd gel) 0,61g; Magnesi hydroxyd 0,8g; Simethicon (dưới dạng Simethicon emulsion 30%) 0,08g','Hộp 20 gói x 10ml',4500,3,2,23,5),(9,'Paracetamol 500mg','Paracetamol','500mg','Hộp 2 vỉ x 10 viên',630,1,4,20,1),(10,'Viartril-S','	Glucosamin sulfate','250mg','Hộp 1 lọ 80 viên',3704,1,8,21,1),(11,'ValtimAPC 80','Valsartan 80 mg','	80 mg','Hộp 1 vỉ, 3 vỉ , 10 vỉ x 10 viên',4500,1,14,9,11),(12,'Sulraapix 1,5g','Cefoperazon (dưới dạng Cefoperazon natri) 1g; Sulbactam (dưới dạng Sulbactam natri) 0,5g','1g + 0,5 g','H/01 lọ bột pha tiêm, H/10 lọ bột pha tiêm',80000,2,31,15,3),(13,'	Trigelforte','Mỗi gói 10ml chứa: Dried Aluminium hydroxide Gel (tương đương 291mg Aluminum oxide) 582 mg; Magnesium hydroxide 196 mg; Oxethazaine 20mg','582 mg, 196 mg, 20mg','	Hộp 20 gói x 10ml',76000,3,9,16,5),(14,'	Levocure','Levofloxacin (dưới dạng Levofloxacin Hcl)','500mg/100ml','Chai thủy tinh 100ml',34800,8,18,12,3),(15,'Amikacin 500mg/100ml','Amikacin (Dưới dạng Amikacin sulfat) 500mg/100ml','500mg/100ml','Túi',50000,10,6,21,3),(16,'	Metoran','Metoclopramid hydroclorid','10mg/2ml','	Hộp 10 ống x 2ml',1200,4,4,22,6),(17,'Acyclovir Stada','Acyclovir','	50mg','Hộp 1 tuýp 2g',27000,5,24,20,7),(79,'Vitamin B2','Vitamin B, E','50g','',1232,1,1,9,9),(96,'Cốm Ích Nhi','Mật ong, Chanh, Gừng','10 ml, 30g, 10g','1 Hộp',30000,3,2,12,1),(97,'Cốm Ích Nhi','Mật ong, Chanh, Gừng','10 ml, 30g, 10g','1 Hộp',30000,3,2,12,1),(99,'	Magnesi - B6','Magnesi lactat dihydrat + Vitamin B6','500mg; 5mg','Hộp 10 vỉ × 10 viên',693,11,31,24,12),(100,'	Magnesi - B6','Magnesi lactat dihydrat + Vitamin B6','480mg; 5mg','Hộp 10 vỉ × 10 viên',693,11,31,24,12),(101,'Paracetamol 500mg','Paracetamol','500mg','Hộp 10 vỉ × 10 viên',730,11,31,24,12),(102,'Simegaz Plus','','Nhôm hydroxyd (dưới dạng Nhôm hydroxyd gel) 0,61g; Magnesi hydroxyd 0,8g; Simethicon (dưới dạng Simethicon emulsion 30%) 0,08g','Hộp 10 vỉ × 10 viên',4500,1,1,24,1),(103,'	Magnesi - B6','Magnesi lactat dihydrat + Vitamin B6','470mg; 5mg','Hộp 10 vỉ × 10 viên',693,1,1,24,1),(105,'	Magnesi - B6','Magnesi lactat dihydrat + Vitamin B6','470mg; 5mg','Hộp 10 vỉ × 10 viên',693,1,1,24,1),(106,'Hapacol Blue','	Paracetamol','500mg','Hộp 10 vỉ × 10 viên',473,1,1,24,1),(107,'	Magnesi - B6','Magnesi lactat dihydrat + Vitamin B6','470mg; 5mg',NULL,693,1,1,24,1),(109,'Vitamin B2','Vitamin B, E','50g','',1232,1,1,24,1);
/*!40000 ALTER TABLE `medicines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `registration_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_prescription_regisration_idx` (`registration_id`),
  CONSTRAINT `fk_prescription_regisration` FOREIGN KEY (`registration_id`) REFERENCES `registration` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription`
--

LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription_detail`
--

DROP TABLE IF EXISTS `prescription_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prescription_id` int(11) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `num` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk__prescriptidetail_prescription_idx` (`prescription_id`),
  KEY `fk_prescriptiondetail_medicine_idx` (`medicine_id`),
  CONSTRAINT `fk__prescriptidetail_prescription` FOREIGN KEY (`prescription_id`) REFERENCES `prescription` (`id`),
  CONSTRAINT `fk_prescriptiondetail_medicine` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription_detail`
--

LOCK TABLES `prescription_detail` WRITE;
/*!40000 ALTER TABLE `prescription_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `prescription_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime NOT NULL,
  `active` bit(1) DEFAULT NULL,
  `description` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_regisration_user_idx` (`user_id`),
  CONSTRAINT `fk_regisration_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (1,'012536485','2020-02-03 00:00:00',_binary '','Đau đầu',12),(3,'03256254352','2020-03-03 00:00:00',_binary '','Tay bị nổi mụn đỏ, lớn nhỏ',4),(4,'07523625265','2020-03-04 00:00:00',_binary '','Mặt đỏ, tay bị vàng da',13),(5,'0777436051','2021-12-25 00:00:00',_binary '','Chóng mặt',4),(6,'0123596584','2021-12-27 00:00:00',_binary '\0','đau đầu',19),(7,'0235625652','2021-11-21 00:00:00',_binary '\0','Phát bang, đau họng',19),(8,'0235625652','2021-07-28 00:00:00',_binary '','Đau họng, mệt mỏi',22),(9,'0235625652','2021-07-28 00:00:00',_binary '','Đau họng, mệt mỏi',23),(10,'0235625652','2021-07-28 00:00:00',_binary '','Đau họng, mệt mỏi',24),(11,'0235625652','2021-07-28 00:00:00',_binary '','Đau họng, mệt mỏi',25),(12,'0235625652','2021-07-28 00:00:00',_binary '','Đau họng, mệt mỏi',18),(13,'0235625652','2021-07-28 00:00:00',_binary '\0','Đau họng, mệt mỏi',22),(14,'0235625652','2021-08-12 00:00:00',_binary '\0','Đau đầu, mất ngủ',13),(15,'0235625652','2021-08-12 00:00:00',_binary '','Đau đầu, mất ngủ',15),(16,'0235625652','2021-08-12 00:00:00',_binary '\0','Đau đầu, mất ngủ',15),(17,'0235625652','2021-08-12 00:00:00',_binary '\0','Đau đầu, mất ngủ',16),(18,'0235625652','2021-08-12 00:00:00',_binary '\0','Đau đầu, mất ngủ',18);
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ADMIN'),(2,'BÁC SĨ'),(3,'Y TÁ'),(4,'BỆNH NHÂN');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (9,'Công ty cổ phần dược phẩm Ampharco U.S.A','info@ampharcousa.com.','Lô 20B,Đường số 1,Khu công nghệp Tân Bình, Đường CN1, Tây Thạnh, Tân Phú, Thành phố Hồ Chí Minh','Thành phố Hồ Chí Minh','Việt Nam','02838156880'),(10,'Công ty cổ phần dược phẩm Vĩnh Phúc','vinphaco@vinphaco.vn ','Số nhà 777, Đường Mê Linh, Phường Khai Quang, Thành phố Vĩnh Yên, Vĩnh Phúc','Thành phố Vĩnh Yên','Việt Nam','02113861233'),(11,'	Công ty cổ phần dược phẩm TEDIS - Việt Hà','info@viethapharmacorp.com.vn',' Lô F.2B, Khu Công Nghiệp Long Hậu, Tỉnh Long An, Xã Long Hậu, Huyện Cần Giuộc, Tỉnh Long An, Long Hậu, Cần Giuộc, Long An','Long An','Việt Nam','02723734205'),(12,'	Công ty cổ phần XNK Y tế Tp HCM YTECO','','181 Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh',' Thành phố Hồ Chí Minh','Việt Nam',' 02839303688'),(13,'	Công ty cổ phần Dược-Thiết bị YT Đà Nẵng-Dapharco','infor@dapharco.com.vn','2 Phan Đình Phùng, Hải Châu 1, Hải Châu, Đà Nẵng','Đà Nẵng','Việt Nam','0236 3821 642'),(14,'Công ty TNHH Dược Phẩm GSK Việt Nam','antoanthuoc@gsk.com','Phòng 702 và 703, Tầng 7, Tòa nhà Metropolitan Tower, số 235 đường Đồng Khởi, Phường Bến Nghé, Quận 1, Thành phố Hồ Chí Minh','Thành phố Hồ Chí Minh','Việt Nam','028 38 248 744'),(15,'Công ty TNHH ALLEGENS','hr.vn@y-med.asia.','Số 1-3, đường số 45, Phường 6, Quận 4, Thành phố Hồ Chí Minh','Thành phố Hồ Chí Minh','Việt Nam','028 3826 6819'),(16,'Cty TNHH XNK Y tế Delta',' info@delta-imexport.com','Thôn Tân Lập, Phường Đình Bảng, Thị Xã Từ Sơn, Đình Bảng, Từ Sơn, Bắc Ninh','Bắc Ninh','Việt Nam','091 323 05 82'),(17,'Công ty TNHH Xuất Nhập Khẩu Quốc Tế Camel','','Lầu 8A Toà Nhà Profomilk, 51-53 Võ Văn Tần, Phường 06, Quận 3, Thành phố Hồ Chí Minh','Thành phố Hồ Chí Minh','Việt Nam','028 66836123'),(18,'	Công ty Cổ phần Thương mại và Phát triển Hà Lan','congtyduocphamhalan@gmail.com','Lô A2, CN7, cụm công nghiệp Từ Liêm, Minh Khai, Bắc Từ Liêm, Hà Nội','Hà Nội','Việt Nam','0911735984'),(19,'	Công ty cổ phần dược phẩm IMEXPHARM','chamsockhachhang@imexpharm.com','Đường Lê Hồng Phong, Phước Hoà, Thành phố Nha Trang, Khánh Hòa','Khánh Hòa','Việt Nam','0258 3881 711'),(20,'Công ty cổ phần Traphaco','info@traphacocnc.com','Xã Tân Quang – Huyện Văn Lâm – Tỉnh Hưng Yên','Hưng Yên','Việt Nam','(0221) 3991 790'),(21,'	Công ty Cổ phần Dược phẩm trung ương CODUPHA',NULL,'509 Tô Hiến Thành, Phường 14, Quận 10, Thành phố Hồ Chí Minh','Thành phố Hồ Chí Minh','Việt Nam',' 028 3865 0834'),(22,'CÔNG TY TNHH NACOPHARM MIỀN BẮC',NULL,'	Số 10, ngõ 95, Đường Trung Tựu, Phường Tây Tựu, Quận Bắc Từ Liêm, Thành phố Hà Nội','Thành phố Hà Nội','Việt Nam','0966156165'),(23,'Công ty Cổ phần Dược phẩm OPV','hello@opv.com.vn','Khu Công Nghiệp Biên Hòa 2, 27 Đường 3A, P. Long Bình, Thành Phố Biên Hòa, Tỉnh Đồng Nai','Đồng Nai','Việt Nam','0251 3992 999'),(24,'	CÔNG TY TNHH ASTRAZENECA VIỆT NAM',NULL,'Tầng 18, Tòa nhà A&B, Số 76, Đường Lê Lai, Phường Bến Thành, Quận 1, Thành phố Hồ Chí Minh, Việt Nam','Thành phố Hồ Chí Minh','Việt Nam','+84(28) 3827 8088');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'Viên'),(2,'Lọ'),(3,'Gói'),(4,'Ống'),(5,'Hôp'),(6,'Bơm tiêm'),(7,'Tuýt'),(8,'Chai'),(9,'Hũ'),(10,'Túi'),(11,'Mg');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dob` datetime DEFAULT NULL,
  `sex` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL,
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `FK_USER_ROLE_idx` (`role`),
  CONSTRAINT `FK_USER_ROLE` FOREIGN KEY (`role`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Nguyễn','Quyền',NULL,NULL,'bichquyenpy@gmail.com','$2a$10$veS1o4adi0/Jo3UVhszfPeLOF5fbeq7BTRZ01T9T2TSwn1CWeTxdC',NULL,'https://res.cloudinary.com/dhj3qxlyh/image/upload/v1640409358/ddcyj8u1afgqxxosowbn.jpg',4,NULL),(2,'Lê Nguyên','Quân',NULL,NULL,'anhnguyen@gmail.com','$2a$10$9r/vr7VX0XNdXvFgoV.c/ejrlN8NGxIoixRkdRt6nhyrdJy286IA.',NULL,'https://res.cloudinary.com/dhj3qxlyh/image/upload/v1640409358/ddcyj8u1afgqxxosowbn.jpg',4,NULL),(4,'Nguyễn','Ngân',NULL,NULL,'bichquyenpy11@gmail.com','$2a$10$x2gu32ceyXq1w3CVH7LSOOfUp7W871weRrM9aisIbgRmtqyLpoz22',NULL,'https://res.cloudinary.com/dhj3qxlyh/image/upload/v1640409358/ddcyj8u1afgqxxosowbn.jpg',4,NULL),(5,'Lê','Anh','1994-02-10 00:00:00','Nam','leanh.py@gmail.com','$2a$10$ZwNhNR.d7j/v9OWyMEpQPe0SsIMnPGdJ.aVxQrEW0MTZgQkADr9sa',NULL,NULL,3,'0125499553'),(6,'Trần Tuấn','Nam',NULL,NULL,'namtran@gmail.com','$2a$10$Ou2MmNVmWCNa/ZRFHUQBD.5KuC0IH03XtFhm7G39tsRxarKca/pd6',NULL,'https://res.cloudinary.com/dhj3qxlyh/image/upload/v1640409358/ddcyj8u1afgqxxosowbn.jpg',4,NULL),(7,'Cao Anh','Du','1998-02-03 00:00:00',NULL,'caoanhdu11@gmail.com','$2a$10$FHu2pWuXWwKTlxHMqXD1G.6.lEMgPTZ7QIQ4oQo.UR5FIl20jJH4m',NULL,NULL,2,'0125499553'),(9,'Cao Kim','Anh','1991-12-15 00:00:00',NULL,'caokimanh@gmail.com','$2a$10$EFtFtB9BSdE2Di4SRKtGsuMB61xyIAKwBwLpJVKMBGtmK88EVEWRa',NULL,NULL,2,'0125499553'),(11,'Đỗ Văn','Kim',NULL,NULL,'dokim@gmail.com','$2a$10$xVz2yDagZ/JCvdzqjE//rOvtpD0pXzxlPTBCdNbAsquxk4LIF8E06',NULL,'https://res.cloudinary.com/dhj3qxlyh/image/upload/v1640409358/ddcyj8u1afgqxxosowbn.jpg',4,NULL),(12,'Trần Ngọc','Kiều',NULL,NULL,'trinhuyen@gmail.com','$2a$10$xh3SAdtmhJBE.1gjS0ByxOQ2G04uofskNUiA7hoa/27BLPBaL/4ke',NULL,'https://res.cloudinary.com/dhj3qxlyh/image/upload/v1640409358/ddcyj8u1afgqxxosowbn.jpg',4,NULL),(13,'Nguyễn Anh','Khoa',NULL,NULL,'nguyencao@gmail.com','$2a$10$L4.aleZc8LPkeAJVAFwL6uG3BVfIcmG.kcEYRVVahhOpm/I9FdkA2',NULL,'https://res.cloudinary.com/dhj3qxlyh/image/upload/v1640409358/ddcyj8u1afgqxxosowbn.jpg',4,NULL),(14,'Võ Kiều','Hoa','1991-12-15 00:00:00','Nữ','hoaivo@gmail.com','$2a$10$aKbZZ0KkxR8ZaTklk7jeCuc24yuiet1IxCyg9f09ai.NwcGGF/QJi',NULL,'',3,'0125499553'),(15,'Admin','Admin','1991-12-15 00:00:00','Khác','admin@gmail.com','$2a$10$ICiSx8EEnAHNUjpRQYGTcegdN034i5kIT6yuy1Mhg2KU8xQkaidky',NULL,'',1,'0125499553'),(16,'Cao Anh','Du',NULL,NULL,'lehuynhanh@gmail.com','$2a$10$m0y0E0n2ECHMkRuijgibt.87dTpbvCGwgwgre/xnnPMWJAgU5JpNq',NULL,'https://res.cloudinary.com/dhj3qxlyh/image/upload/v1640409358/ddcyj8u1afgqxxosowbn.jpg',4,NULL),(17,'Cao Anh','Nguyên',NULL,NULL,'vohaithinh@gmail.com','$2a$10$obe08CE5G7YfCpFOyNewtu3mJfpQrYDeKpGQAqx6hjgN3aUjCMv1O',NULL,'https://res.cloudinary.com/dhj3qxlyh/image/upload/v1640409358/ddcyj8u1afgqxxosowbn.jpg',4,NULL),(18,'Cao Anh','Du',NULL,NULL,'huynhtram@gmail.com','$2a$10$eYozAqoOfS/C7qvpMY5t1e1.yfQxjBYTYoQdWeJESw6XSzSHCOROy',NULL,'https://res.cloudinary.com/dhj3qxlyh/image/upload/v1640409358/ddcyj8u1afgqxxosowbn.jpg',4,NULL),(19,'Cao Anh','Du',NULL,NULL,'nguyenanh@gmail.com','$2a$10$5GS1slRolKHxFjz9uj9.DOFKdPRwlz74.4SEJohkI/Bxg4qEBg76.',NULL,'https://res.cloudinary.com/dhj3qxlyh/image/upload/v1640409358/ddcyj8u1afgqxxosowbn.jpg',4,NULL),(20,'Huynh','Hoa',NULL,NULL,'huynhkimhoa@gmail.com','$2a$10$vE7uf.O/0QDM3H0qka.N5OFxsT/Ggl.TeqNGktRRTLqnDrl79ZB..',NULL,'https://res.cloudinary.com/dhj3qxlyh/image/upload/v1640409358/ddcyj8u1afgqxxosowbn.jpg',4,NULL),(21,'Cao Anh','Du',NULL,NULL,'lengocminh@gmail.com','$2a$10$/CmqbK/KLpRdd1VPcGhzmuTElAHr3Dy4VHQRUZZCLAgHLh3MIu..u',NULL,'https://res.cloudinary.com/dhj3qxlyh/image/upload/v1640409358/ddcyj8u1afgqxxosowbn.jpg',4,NULL),(22,'Cao Anh','Quyen',NULL,NULL,'nguyenhoaianh@gmail.com','$2a$10$BdyKUJRkaXMfYt9uUS81fOOCV.2megYbXTvbJ7nzZwVX9LnsPw50K',NULL,'https://res.cloudinary.com/dhj3qxlyh/image/upload/v1640409358/ddcyj8u1afgqxxosowbn.jpg',4,NULL),(23,'Cao Anh','Du',NULL,NULL,'dangtuanminh@gmail.com','$2a$10$Y1.ts3UzqYmV8W0diilAo.FpHLSuQ5HtcCjmYWo9EpngPDpYFCDKe',NULL,'https://res.cloudinary.com/dhj3qxlyh/image/upload/v1640409358/ddcyj8u1afgqxxosowbn.jpg',4,NULL),(24,'Cao Anh','Du',NULL,NULL,'dovovan@gmail.com','$2a$10$y9ofQrUYMcF3yNLzOzKM4eZFrl7JtqlvjXWM9lKWmo6ztBIhu.6H6',NULL,'https://res.cloudinary.com/dhj3qxlyh/image/upload/v1640409358/ddcyj8u1afgqxxosowbn.jpg',4,NULL),(25,'Cao','Quyen',NULL,NULL,'caonguyen@gmail.com','$2a$10$7X5sMaaooA5OcBia3Y63QuNjCsFbw/.H0TJuynMlP/n81b25pEqvK',NULL,'https://res.cloudinary.com/dhj3qxlyh/image/upload/v1640409358/ddcyj8u1afgqxxosowbn.jpg',4,NULL),(26,'Cao Anh','Du',NULL,NULL,'nguyenkimanh@gmail.com','$2a$10$/zLrefkf0N0W2SBPgsJFiuz6KQnKo8I5CVYL7CxFnU/pzXeX7c.nS',NULL,'https://res.cloudinary.com/dhj3qxlyh/image/upload/v1640409358/ddcyj8u1afgqxxosowbn.jpg',4,NULL),(27,'Tô Hoài','Du',NULL,NULL,'tominhha@gmail.com','$2a$10$xPi/oH3GEqqvgKpH40AQfOSXz7YnHSc84C9Plpsp8LCEmHo4iuoAm',NULL,'https://res.cloudinary.com/dhj3qxlyh/image/upload/v1640409358/ddcyj8u1afgqxxosowbn.jpg',4,NULL),(28,'Trần Tuấn','Du',NULL,NULL,'1851010110quyen@ou.edu.vn','$2a$10$eP38grYSWuAM5peU25JcTu1TAOsaGjuDyH1CgeL87X4UwqQUZDOaG',NULL,'https://res.cloudinary.com/dhj3qxlyh/image/upload/v1640409358/ddcyj8u1afgqxxosowbn.jpg',4,''),(31,'Cao Anh','Du',NULL,NULL,'bichquyenpy1212@gmail.com','$2a$10$YhB2XAPMkcYnawz18xUnIu/ApxFZtv0zDUSiDNNcsRDkD/crxrhGi',NULL,'https://res.cloudinary.com/dhj3qxlyh/image/upload/v1640409358/ddcyj8u1afgqxxosowbn.jpg',4,''),(33,'Cao Anh','Du','1987-12-22 00:00:00','Nam','caoanhdu1@gmail.com','$2a$10$yNgfchE5hsT0ZG/fMZbDWeKgycuraqtE8831Qj0zum9ZcUZIB1p0i','371 Nguyễn Kiệm, Gò Vấp, TP.HCM',NULL,2,'0777436051'),(34,'Ngô','Kim','1996-12-08 00:00:00','Nữ','trinhhoaanh@gmail.com','$2a$10$.p6NPRFwOkg5i8bYSdSCj.DZ/dxa1LHDaqtW5DOoAaiAyhPy9WRNC','371 Nguyễn Kiệm, Gò Vấp, TP.HCM',NULL,1,'0125499553'),(35,'Cao Anh','Hoa','1991-12-15 00:00:00','Nữ','caoanhhoa@gmail.com','$2a$10$Z9XKiygc5eSIMAUG4.CuGOo2QmB6ji3PcF6dS5uoNivCCyzOm.WHq','',NULL,3,'0703324351'),(38,'1','1','2021-12-15 00:00:00',NULL,'22@gmail.com','$2a$10$Z9XKiygc5eSIMAUG4.CuGOo2QmB6ji3PcF6dS5uoNivCCyzOm.WHq',NULL,'',1,'0125499553'),(42,'Cao Anh','A',NULL,NULL,'11111@gmail.com','$2a$10$i/8V7PZT2a9MsLkU7YAFTOLDMLvm.SANIFhro/sC4OgSClAxsitGS',NULL,'https://res.cloudinary.com/dhj3qxlyh/image/upload/v1640409358/ddcyj8u1afgqxxosowbn.jpg',4,NULL),(43,'Trần Văn ','B','1988-11-11 00:00:00','Nam','tranvanb@gmail.com','$2a$10$i/8V7PZT2a9MsLkU7YAFTOLDMLvm.SANIFhro/sC4OgSClAxsitGS',NULL,NULL,3,'0125499553');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-25 23:20:31
