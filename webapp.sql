-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: webdb
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
  `factory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
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
INSERT INTO `medicines` VALUES (1,'	Magnesi - B6','Magnesi lactat dihydrat + Vitamin B6','570mg; 7mg','',693,1,1,18,1),(5,'Hapacol Blue','	Paracetamol','500mg','Hộp 10 vỉ × 10 viên',473,1,1,15,1),(6,'Etoral Cream','Mỗi tuýp 5g kem chứa: Ketoconazol','	0,1g','	Hộp 1 tuýp 5g',7560,7,1,15,12),(7,'Lefloxa - 500','Levofloxacin (dưới dạng Levofloxacin hemihydrat) 500mg','500mg','	Hộp 1 vỉ x 5 viên',14000,1,24,17,2),(8,'Simegaz Plus','Mỗi gói 10ml chứa: Nhôm hydroxyd (dưới dạng Nhôm hydroxyd gel) 0,61g; Magnesi hydroxyd 0,8g; Simethicon (dưới dạng Simethicon emulsion 30%) 0,08g','Nhôm hydroxyd (dưới dạng Nhôm hydroxyd gel) 0,61g; Magnesi hydroxyd 0,8g; Simethicon (dưới dạng Simethicon emulsion 30%) 0,08g','Hộp 20 gói x 10ml',4500,3,2,23,5),(9,'Paracetamol 500mg','Paracetamol','500mg','Hộp 2 vỉ x 10 viên',630,1,4,20,1),(10,'Viartril-S','	Glucosamin sulfate','250mg','Hộp 1 lọ 80 viên',3704,1,8,21,1),(11,'ValtimAPC 80','Valsartan 80 mg','	80 mg','Hộp 1 vỉ, 3 vỉ , 10 vỉ x 10 viên',4500,1,14,9,11),(12,'Sulraapix 1,5g','Cefoperazon (dưới dạng Cefoperazon natri) 1g; Sulbactam (dưới dạng Sulbactam natri) 0,5g','1g + 0,5 g','H/01 lọ bột pha tiêm, H/10 lọ bột pha tiêm',80000,2,31,15,3),(13,'	Trigelforte','Mỗi gói 10ml chứa: Dried Aluminium hydroxide Gel (tương đương 291mg Aluminum oxide) 582 mg; Magnesium hydroxide 196 mg; Oxethazaine 20mg','582 mg, 196 mg, 20mg','	Hộp 20 gói x 10ml',76000,3,9,16,5),(14,'	Levocure','Levofloxacin (dưới dạng Levofloxacin Hcl)','500mg/100ml','Chai thủy tinh 100ml',34800,8,18,12,3),(15,'Amikacin 500mg/100ml','Amikacin (Dưới dạng Amikacin sulfat) 500mg/100ml','500mg/100ml','Túi',50000,10,6,21,3),(16,'	Metoran','Metoclopramid hydroclorid','10mg/2ml','	Hộp 10 ống x 2ml',1200,4,4,22,6),(17,'Acyclovir Stada','Acyclovir','	50mg','Hộp 1 tuýp 2g',27000,5,24,20,7),(79,'Vitamin B2','Vitamin B, E','50g','',1232,1,1,9,9),(96,'Cốm Ích Nhi','Mật ong, Chanh, Gừng','10 ml, 30g, 10g','1 Hộp',30000,3,2,12,1),(97,'Cốm Ích Nhi','Mật ong, Chanh, Gừng','10 ml, 30g, 10g','1 Hộp',30000,3,2,12,1),(98,'	Magnesi - B6','Magnesi lactat dihydrat + Vitamin B6','550mg; 5mg','Há»p 10 vá» Ã 10 viÃªn',693,11,31,24,12),(99,'	Magnesi - B6','Magnesi lactat dihydrat + Vitamin B6','500mg; 5mg','Há»p 10 vá» Ã 10 viÃªn',693,11,31,24,12),(100,'	Magnesi - B6','Magnesi lactat dihydrat + Vitamin B6','480mg; 5mg','Há»p 10 vá» Ã 10 viÃªn',693,11,31,24,12),(101,'Paracetamol 500mg','Paracetamol','500mg','Há»p 2 vá» x 10 viÃªn',730,11,31,24,12),(102,'Simegaz Plus','','NhÃÂ´m hydroxyd (dÃÂ°Ã¡Â»Âi dÃ¡ÂºÂ¡ng NhÃÂ´m hydroxyd gel) 0,61g; Magnesi hydroxyd 0,8g; Simethicon (dÃÂ°Ã¡Â»Âi dÃ¡ÂºÂ¡ng Simethicon emulsion 30%) 0,08g','HÃ¡Â»Âp 20 gÃÂ³i x 10ml',4500,1,1,24,1),(103,'	Magnesi - B6','Magnesi lactat dihydrat + Vitamin B6','470mg; 5mg','Há»p 10 vá» Ã 10 viÃªn',693,1,1,24,1),(104,'Simegaz Plus','Má»i gÃ³i 10ml chá»©a: NhÃ´m hydroxyd (dÆ°á»i dáº¡ng NhÃ´m hydroxyd gel) 0,61g; Magnesi hydroxyd 0,8g; Simethicon (dÆ°á»i dáº¡ng Simethicon emulsion 30%) 0,08g','NhÃ´m hydroxyd (dÆ°á»i dáº¡ng NhÃ´m hydroxyd gel) 0,61g; Magnesi hydroxyd 0,8g; Simethicon (dÆ°á»i dáº¡ng Simethicon emulsion 30%) 0,08g','Há»p 20 gÃ³i x 10ml',4500,1,1,24,1),(105,'	Magnesi - B6','Magnesi lactat dihydrat + Vitamin B6','470mg; 5mg','Há»p 10 vá» Ã 10 viÃªn',693,1,1,24,1),(106,'Hapacol Blue','	Paracetamol','500mg','Há»p 10 vá» Ã 10 viÃªn',473,1,1,24,1),(107,'	Magnesi - B6','Magnesi lactat dihydrat + Vitamin B6','470mg; 5mg',NULL,693,1,1,24,1),(108,'Vitamin B2','Vitamin B, E','50g',NULL,1232,1,1,24,1),(109,'Vitamin B2','Vitamin B, E','50g','',1232,1,1,24,1),(113,'nguyen','','','',12,1,1,19,1),(114,'CÃ  rá»t','','','',0,1,1,9,1);
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
  `result` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `registration_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  `times` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
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
  `phone` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `active` bit(1) NOT NULL,
  `description` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_regisration_user_idx` (`user_id`),
  CONSTRAINT `fk_regisration_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
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
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  `type` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
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
  `last_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `sex` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL,
  `phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `FK_USER_ROLE_idx` (`role`),
  CONSTRAINT `FK_USER_ROLE` FOREIGN KEY (`role`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Nguyen','Quyen',NULL,NULL,'bichquyenpy@gmail.com','$2a$10$veS1o4adi0/Jo3UVhszfPeLOF5fbeq7BTRZ01T9T2TSwn1CWeTxdC',NULL,NULL,4,NULL),(2,'Nguyen','Quyen',NULL,NULL,'anhnguyen@gmail.com','$2a$10$9r/vr7VX0XNdXvFgoV.c/ejrlN8NGxIoixRkdRt6nhyrdJy286IA.',NULL,NULL,4,NULL),(4,'Nguyễn','Ngân',NULL,NULL,'bichquyenpy11@gmail.com','$2a$10$x2gu32ceyXq1w3CVH7LSOOfUp7W871weRrM9aisIbgRmtqyLpoz22',NULL,NULL,4,NULL),(5,'Lê','Anh',NULL,NULL,'leanh.py@gmail.com','$2a$10$ZwNhNR.d7j/v9OWyMEpQPe0SsIMnPGdJ.aVxQrEW0MTZgQkADr9sa',NULL,NULL,3,NULL),(6,'Tráº§n Anh','Nam',NULL,NULL,'namtran@gmail.com','$2a$10$Ou2MmNVmWCNa/ZRFHUQBD.5KuC0IH03XtFhm7G39tsRxarKca/pd6',NULL,NULL,4,NULL),(7,'Cao Anh','Du','2020-02-03',NULL,'caoanhdu11@gmail.com','$2a$10$FHu2pWuXWwKTlxHMqXD1G.6.lEMgPTZ7QIQ4oQo.UR5FIl20jJH4m',NULL,NULL,2,NULL),(8,'Mai','Anh',NULL,NULL,'maianh@gmail.com','$2a$10$evV/MU5lVj/TxyMQeH/DouHyOw4Dp.v9sIQlZMZpfYcwLZYk2ise2',NULL,NULL,4,NULL),(9,'Cao Kim','Anh',NULL,NULL,'caokimanh@gmail.com','$2a$10$EFtFtB9BSdE2Di4SRKtGsuMB61xyIAKwBwLpJVKMBGtmK88EVEWRa',NULL,NULL,2,NULL),(10,'Trần Kim','Văn',NULL,NULL,'trinhvan@gmail.com','$2a$10$oSSpMAlfI2uzCTbYh.wewu40m/bmawufVR.S8ALrjF2i5w/o9AIf6',NULL,NULL,3,NULL),(11,'Đỗ Văn','Kim',NULL,NULL,'dokim@gmail.com','$2a$10$xVz2yDagZ/JCvdzqjE//rOvtpD0pXzxlPTBCdNbAsquxk4LIF8E06',NULL,NULL,4,NULL),(12,'Trần Ngọc','Kiều',NULL,NULL,'trinhuyen@gmail.com','$2a$10$xh3SAdtmhJBE.1gjS0ByxOQ2G04uofskNUiA7hoa/27BLPBaL/4ke',NULL,NULL,4,NULL),(13,'Nguyễn Anh','Khoa',NULL,NULL,'nguyencao@gmail.com','$2a$10$L4.aleZc8LPkeAJVAFwL6uG3BVfIcmG.kcEYRVVahhOpm/I9FdkA2',NULL,NULL,4,NULL),(14,'Võ Kiều','Hoa',NULL,NULL,'hoaivo@gmail.com','$2a$10$aKbZZ0KkxR8ZaTklk7jeCuc24yuiet1IxCyg9f09ai.NwcGGF/QJi',NULL,NULL,3,NULL),(15,'Admin','Admin',NULL,NULL,'admin@gmail.com','$2a$10$ICiSx8EEnAHNUjpRQYGTcegdN034i5kIT6yuy1Mhg2KU8xQkaidky',NULL,NULL,1,NULL);
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

-- Dump completed on 2021-12-23 22:14:08
