-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: medicdb
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
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Giảm đau - Hạ sốt',NULL),(2,'Kháng sinh',NULL),(3,'Kháng viêm',NULL),(4,'Nhóm trị giun',NULL),(5,'Nhóm thuốc dạ dày',NULL),(6,'Nhóm thuốc tiêu hóa',NULL),(7,'Thuốc ngoài da',NULL),(8,'Nhóm thuốc nhỏ mắt',NULL),(9,'Nhóm dán - giảm đau',NULL),(10,'Nhóm vitamin - khoáng chất',NULL),(11,'Nhóm thuốc tim mạch',NULL),(12,'Nhóm trị các loại nấm',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `manufactory`
--

LOCK TABLES `manufactory` WRITE;
/*!40000 ALTER TABLE `manufactory` DISABLE KEYS */;
INSERT INTO `manufactory` VALUES (1,'Công ty CP Dược Hậu Giang','	Việt Nam'),(2,'	Công ty cổ phần dược phẩm OPV','	Việt Nam'),(3,'	Công ty TNHH Đông Dược Xuân Quang','	Việt Nam'),(4,'Công ty cổ phần Dược-VTYT Nghệ An','	Việt Nam'),(5,'	CÔNG TY CỔ PHẦN DƯỢC HẬU GIANG - Chi nhánh nhà máy dược phẩm DHG tại Hậu Giang','	Việt Nam'),(6,'	Bal Pharma Ltd.','	Ấn Độ'),(7,'	Macleods Pharmaceuticals Ltd.','	Ấn Độ'),(8,'Rusan Pharma Ltd','	Ấn Độ'),(9,'	Korea Prime Pharm. Co., Ltd.','	Hàn quốc'),(10,'	Institute of Isotopes Co., Ltd','	Hungary'),(11,'Baxter HealthCare SA, Singapore branch','Singapore'),(12,'Actavis Italy S.p.A','Ý'),(13,'Pfizer Manufacturing Belgium N.V.','Bỉ'),(14,'	NOBEL ILAC SANAYII VE TICARET A.S.','Turkey'),(15,'Abbott Biologicals B.V','Hà Lan'),(16,'	Laboratorios Normon, S.A.','Spain'),(17,'	Famar Orleans','Pháp'),(18,'	Biofarm Sp. zo.o.','Ba Lan'),(19,'	Boehringer Ingelheim Pharma GmbH & Co. KG','Đức'),(20,'	Novo Nordisk A/S','Đan Mạch'),(21,'Cilag AG','	Thụy Sĩ'),(22,'Pharmathen International S.A.','Hi Lạp'),(23,'	Ilko Ilac San. ve Tic. A.S.','Thổ Nhĩ Kỳ'),(24,'Ebewe Pharma Ges.m.b.H.Nfg.KG','Áo'),(25,'Công ty TNHH DP Hisamitsu Việt Nam','Việt Nam'),(26,'	Pfizer Pharmaceuticals LLC','Hoa Kỳ'),(27,'	Bluepharma- Indústria Farmacêutica, S.A. (Fab. Coimbra)','Bồ Đào Nha'),(28,'Công ty cổ phần dược Trung ương 3','Việt Nam'),(29,'Nhà máy Stada Việt Nam','Việt Nam'),(30,'	Egyptian International Pharmaceutical Industries Conpany (EIPICO.','Ai Cập'),(31,'	Công ty cổ phần Pymepharco','Việt Nam');
/*!40000 ALTER TABLE `manufactory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `medicines`
--

LOCK TABLES `medicines` WRITE;
/*!40000 ALTER TABLE `medicines` DISABLE KEYS */;
INSERT INTO `medicines` VALUES (1,'	Magnesi - B6','Magnesi lactat dihydrat + Vitamin B6','470mg; 5mg','Hộp 10 vỉ × 10 viên',693,1,1,15,10),(5,'Hapacol Blue','	Paracetamol','500mg','Hộp 10 vỉ × 10 viên',473,1,1,15,1),(6,'Etoral Cream','Mỗi tuýp 5g kem chứa: Ketoconazol','	0,1g','	Hộp 1 tuýp 5g',7560,7,1,15,12),(7,'Lefloxa - 500','Levofloxacin (dưới dạng Levofloxacin hemihydrat) 500mg','500mg','	Hộp 1 vỉ x 5 viên',14000,1,24,17,2),(8,'Simegaz Plus','Mỗi gói 10ml chứa: Nhôm hydroxyd (dưới dạng Nhôm hydroxyd gel) 0,61g; Magnesi hydroxyd 0,8g; Simethicon (dưới dạng Simethicon emulsion 30%) 0,08g','Nhôm hydroxyd (dưới dạng Nhôm hydroxyd gel) 0,61g; Magnesi hydroxyd 0,8g; Simethicon (dưới dạng Simethicon emulsion 30%) 0,08g','Hộp 20 gói x 10ml',4500,3,2,23,5),(9,'Paracetamol 500mg','Paracetamol','500mg','Hộp 2 vỉ x 10 viên',630,1,4,20,1),(10,'Viartril-S','	Glucosamin sulfate','250mg','Hộp 1 lọ 80 viên',3704,1,8,21,1),(11,'ValtimAPC 80','Valsartan 80 mg','	80 mg','Hộp 1 vỉ, 3 vỉ , 10 vỉ x 10 viên',4500,1,14,9,11),(12,'Sulraapix 1,5g','Cefoperazon (dưới dạng Cefoperazon natri) 1g; Sulbactam (dưới dạng Sulbactam natri) 0,5g','1g + 0,5 g','H/01 lọ bột pha tiêm, H/10 lọ bột pha tiêm',80000,2,31,15,3),(13,'	Trigelforte','Mỗi gói 10ml chứa: Dried Aluminium hydroxide Gel (tương đương 291mg Aluminum oxide) 582 mg; Magnesium hydroxide 196 mg; Oxethazaine 20mg','582 mg, 196 mg, 20mg','	Hộp 20 gói x 10ml',76000,3,9,16,5),(14,'	Levocure','Levofloxacin (dưới dạng Levofloxacin Hcl)','500mg/100ml','Chai thủy tinh 100ml',34800,8,18,12,3),(15,'Amikacin 500mg/100ml','Amikacin (Dưới dạng Amikacin sulfat) 500mg/100ml','500mg/100ml','Túi',50000,10,6,21,3),(16,'	Metoran','Metoclopramid hydroclorid','10mg/2ml','	Hộp 10 ống x 2ml',1200,4,4,22,6),(17,'Acyclovir Stada','Acyclovir','	50mg','Hộp 1 tuýp 2g',27000,5,24,20,7);
/*!40000 ALTER TABLE `medicines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `prescription`
--

LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `prescription_detail`
--

LOCK TABLES `prescription_detail` WRITE;
/*!40000 ALTER TABLE `prescription_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `prescription_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ADMIN'),(2,'DOCTOR'),(3,'NURSE'),(4,'PARTIENT');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (9,'Công ty cổ phần dược phẩm Ampharco U.S.A','info@ampharcousa.com.','Lô 20B,Đường số 1,Khu công nghệp Tân Bình, Đường CN1, Tây Thạnh, Tân Phú, Thành phố Hồ Chí Minh','Thành phố Hồ Chí Minh','Việt Nam','02838156880'),(10,'Công ty cổ phần dược phẩm Vĩnh Phúc','vinphaco@vinphaco.vn ','Số nhà 777, Đường Mê Linh, Phường Khai Quang, Thành phố Vĩnh Yên, Vĩnh Phúc','Thành phố Vĩnh Yên','Việt Nam','02113861233'),(11,'	Công ty cổ phần dược phẩm TEDIS - Việt Hà','info@viethapharmacorp.com.vn',' Lô F.2B, Khu Công Nghiệp Long Hậu, Tỉnh Long An, Xã Long Hậu, Huyện Cần Giuộc, Tỉnh Long An, Long Hậu, Cần Giuộc, Long An','Long An','Việt Nam','02723734205'),(12,'	Công ty cổ phần XNK Y tế Tp HCM YTECO','','181 Nguyễn Đình Chiểu, Phường 6, Quận 3, Thành phố Hồ Chí Minh',' Thành phố Hồ Chí Minh','Việt Nam',' 02839303688'),(13,'	Công ty cổ phần Dược-Thiết bị YT Đà Nẵng-Dapharco','infor@dapharco.com.vn','2 Phan Đình Phùng, Hải Châu 1, Hải Châu, Đà Nẵng','Đà Nẵng','Việt Nam','0236 3821 642'),(14,'Công ty TNHH Dược Phẩm GSK Việt Nam','antoanthuoc@gsk.com','Phòng 702 và 703, Tầng 7, Tòa nhà Metropolitan Tower, số 235 đường Đồng Khởi, Phường Bến Nghé, Quận 1, Thành phố Hồ Chí Minh','Thành phố Hồ Chí Minh','Việt Nam','028 38 248 744'),(15,'Công ty TNHH ALLEGENS','hr.vn@y-med.asia.','Số 1-3, đường số 45, Phường 6, Quận 4, Thành phố Hồ Chí Minh','Thành phố Hồ Chí Minh','Việt Nam','028 3826 6819'),(16,'Cty TNHH XNK Y tế Delta',' info@delta-imexport.com','Thôn Tân Lập, Phường Đình Bảng, Thị Xã Từ Sơn, Đình Bảng, Từ Sơn, Bắc Ninh','Bắc Ninh','Việt Nam','091 323 05 82'),(17,'Công ty TNHH Xuất Nhập Khẩu Quốc Tế Camel','','Lầu 8A Toà Nhà Profomilk, 51-53 Võ Văn Tần, Phường 06, Quận 3, Thành phố Hồ Chí Minh','Thành phố Hồ Chí Minh','Việt Nam','028 66836123'),(18,'	Công ty Cổ phần Thương mại và Phát triển Hà Lan','congtyduocphamhalan@gmail.com','Lô A2, CN7, cụm công nghiệp Từ Liêm, Minh Khai, Bắc Từ Liêm, Hà Nội','Hà Nội','Việt Nam','0911735984'),(19,'	Công ty cổ phần dược phẩm IMEXPHARM','chamsockhachhang@imexpharm.com','Đường Lê Hồng Phong, Phước Hoà, Thành phố Nha Trang, Khánh Hòa','Khánh Hòa','Việt Nam','0258 3881 711'),(20,'Công ty cổ phần Traphaco','info@traphacocnc.com','Xã Tân Quang – Huyện Văn Lâm – Tỉnh Hưng Yên','Hưng Yên','Việt Nam','(0221) 3991 790'),(21,'	Công ty Cổ phần Dược phẩm trung ương CODUPHA',NULL,'509 Tô Hiến Thành, Phường 14, Quận 10, Thành phố Hồ Chí Minh','Thành phố Hồ Chí Minh','Việt Nam',' 028 3865 0834'),(22,'CÔNG TY TNHH NACOPHARM MIỀN BẮC',NULL,'	Số 10, ngõ 95, Đường Trung Tựu, Phường Tây Tựu, Quận Bắc Từ Liêm, Thành phố Hà Nội','Thành phố Hà Nội','Việt Nam','0966156165'),(23,'Công ty Cổ phần Dược phẩm OPV','hello@opv.com.vn','Khu Công Nghiệp Biên Hòa 2, 27 Đường 3A, P. Long Bình, Thành Phố Biên Hòa, Tỉnh Đồng Nai','Đồng Nai','Việt Nam','0251 3992 999'),(24,'	CÔNG TY TNHH ASTRAZENECA VIỆT NAM',NULL,'Tầng 18, Tòa nhà A&B, Số 76, Đường Lê Lai, Phường Bến Thành, Quận 1, Thành phố Hồ Chí Minh, Việt Nam','Thành phố Hồ Chí Minh','Việt Nam','+84(28) 3827 8088');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (1,'Viên'),(2,'Lọ'),(3,'Gói'),(4,'Ống'),(5,'Hôp'),(6,'Bơm tiêm'),(7,'Tuýt'),(8,'Chai'),(9,'Hũ'),(10,'Túi'),(11,'Mg');
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-13 16:02:09
