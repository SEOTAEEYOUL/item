-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shop
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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `item_id` bigint NOT NULL,
  `item_detail` varchar(512) DEFAULT NULL,
  `item_nm` varchar(50) NOT NULL,
  `item_sell_status` varchar(255) DEFAULT NULL,
  `price` int NOT NULL,
  `reg_time` datetime(6) DEFAULT NULL,
  `stock_number` int NOT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (20,'테스트 상품을 한글로 입력 해 보기','테스트상품 - 청바지','SELL',50000,'2022-12-09 17:06:04.159783',100,'2022-12-10 04:20:23.017516','taeeyoul@sk.com','taeeyoul@sk.com'),(32,'청바지, 짝다리도 입을 수 있음 ... 좋아','청바지','SELL',50000,'2022-12-10 04:08:13.130705',10,'2022-12-10 04:21:38.086673','taeeyoul@sk.com','taeeyoul@sk.com'),(50,'좋은 셔츠, 따슷한 겨울 나기 - 멜빵 입은 이미지','셔츠','SELL',50000,'2022-12-10 04:17:04.329602',100,'2022-12-10 04:17:04.329602','taeeyoul@sk.com','taeeyoul@sk.com'),(56,'제품정보\r\n기본정보\r\n분류	인텔 CPU용	인텔 소켓	인텔-소켓1700\r\n인텔 세부칩셋	인텔-B660		\r\n사이즈\r\n메인보드 크기	미니	가로길이	24.4cm\r\n세로길이	24.4cm		\r\n메모리사양\r\n메모리종류	DDR5	메모리용량	최대 128GB\r\n메모리슬롯	4개		\r\n부가정보\r\n지원 인터페이스	PCI-Express 3.0, PCI-Express 4.0, SATA3(6Gb/s), M.2	그래픽출력	HDMI, DP\r\n부가기능	무선LAN, 블루투스	','MSI Pro b660m-a wifi','SELL',237550,'2022-12-11 06:57:37.733707',10,'2022-12-11 06:57:37.733707','taeeyoul@sk.com','taeeyoul@sk.com'),(62,'제조회사	인텔 ( 제조사 웹사이트 바로가기)	등록년월	2022년 10월\r\n인텔 CPU종류	코어i5-13세대	소켓 구분	인텔(소켓1700)\r\n출시일	2022 4분기	제조 공정	10nm(인텔7)\r\n사양\r\n코어 수	6+8코어	쓰레드 수	12+8쓰레드\r\n기본 클럭	3.5GHz	최대 클럭	5.1GHz\r\nL3 캐시	24MB		\r\nPBP/MTP	125~181W	PCIe 버전	PCIe5.0, 4.0\r\n최대 PCIe 레인수	20레인		\r\n메모리 사양\r\n최대 메모리 크기	128GB	메모리 규격	DDR5, DDR4\r\n메모리 클럭	5600, 3200MHz	메모리 채널	2\r\n그래픽 사양\r\n내장그래픽	미탑재		\r\n기술 지원\r\n하이퍼스레딩	○		','i5 13600KF','SELL',439320,'2022-12-11 06:59:04.227082',10,'2022-12-11 06:59:04.227082','taeeyoul@sk.com','taeeyoul@sk.com'),(68,'조회사	삼성전자 ( 제조사 웹사이트 바로가기)	등록년월	2022년 04월\r\n사용 장치	데스크탑용	제품 분류	DDR5\r\n메모리 규격	DIMM	메모리 용량	32GB\r\n동작클럭(대역폭)	4800MHz (PC5-38400)	램개수	2개','삼성전자-DDR5-4800','SELL',81000,'2022-12-11 07:02:12.130344',10,'2022-12-11 07:02:12.130344','taeeyoul@sk.com','taeeyoul@sk.com'),(74,'명 및 모델명	SK하이닉스 Platinum P41 NVMe SSD	KC 인증정보	R-R-HNX-PB801M280S\r\n정격전압, 소비전력	3.3V / 알수없음(업체미제공)	출시년월	알수없음(업체미제공)\r\n제조자(수입자)	에스케이하이닉스 주식회사	제조국	대한민국','P41 NVMe M.2 SSD(1TB)','SELL',210000,'2022-12-11 07:05:13.208950',10,'2022-12-11 07:05:13.208950','taeeyoul@sk.com','taeeyoul@sk.com'),(86,'제조회사 마이크로닉스 제조사 웹사이트 바로가기\r\n등록년월 2020년 09월\r\n제품 분류 PC케이스(M-ATX)\r\n케이스 크기 미니타워\r\n파워포함여부 파워미포함\r\n지원파워규격 표준-ATX\r\n지원보드규격 Micro-ATX, Mini-ITX,\r\n내부 확장 8.9cm베이 2개, 6.4cm베이 2개\r\n저장장치 장착 최대 4개\r\nPCI 슬롯 4개\r\n쿨러 / 튜닝 쿨링팬 총2개,  LED팬 2개\r\n측면 강화유리\r\n후면 120mm LED x1\r\n전면 160mm LED x1\r\n먼지필터 부분\r\n외부포트 USB, USB 3.0, \r\n크기 : 너비(W) 210mm, 깊이(D) 373mm, 높이(H) 424mm\r\n파워 장착 180 mm, 파워 위치 하단후면\r\nGPU 장착 320 mm\r\nCPU쿨러 장착 160mm\r\n수랭쿨러 규격 최대2열 지원\r\n라디에이터(상단) 최대240mm\r\n라디에이터(전면) 최대240mm\r\n라디에이터(후면) 최대120mm\r\n컨트롤러 지원 RGB 컨트롤','마이크로닉스 EM1 Woofer','SELL',53000,'2022-12-11 07:10:54.066461',10,'2022-12-11 07:10:54.066461','taeeyoul@sk.com','taeeyoul@sk.com'),(92,'컴팩트한 사이즈 - MPG 게이밍 전원 공급 장치의 길이 160mm 및 너비 150mm 크기로 대부분의 PC 케이스에 편안하고 쉽게 맞습니다.\r\n80 플러스 골드 인증 - 80 플러스 골드 인증은 낮은 에너지 소비와 높은 효율성을 약속합니다.\r\n풀 모듈식 디자인 - 완전 모듈식 디자인은 빌드에 필요한 커넥터만 사용하여 케이블 잡동사니를 크게 줄여줍니다.\r\n플랫 화이트 케이블 - 모든 MPG 게이밍 전원 공급 장치에는 케이블 관리가 쉽고 방해받지 않는 공기 흐름을 위한 더 많은 공간을 제공하는 플랫 케이블이 장착되어 있습니다.\r\n100% 일본 105°C 커패시터 - 흔들리지 않는 제품 품질과 성능 안정성을 목표로 하는 MPG 게이밍 전원 공급 장치는 100% 일본 105° C 커패시터와 함께 제공됩니다.\r\n합금 구리 터미널 - MPG 게이밍 전원 공급 장치의 CPU, VGA 및 MB 커넥터는 기존 인청동 케이블 단자보다 높은 전류 등급을 견딜 수 있는 합금 구리 단자를 사용합니다.','MSI-MPG-A750GF-화이트-Full-Modular-80-PLUS-Gold','SELL',129000,'2022-12-11 07:14:08.254958',9,'2022-12-12 10:32:50.270334','taeeyoul@sk.com','taeeyoul@sk.com'),(98,'제조회사	MSI ( 제조사 웹사이트 바로가기)	등록년월	2021년 03월\r\n칩셋 사양\r\n칩셋 제조사	NVIDIA	제품 시리즈	지포스 RTX 30\r\nGPU 제조 공정	8nm	NVIDIA 칩셋	RTX 3060\r\n부스트클럭	1807MHz	쿠다 프로세서	3584개\r\n인터페이스	PCIe4.0x16		\r\n메모리 사양\r\n메모리 종류	GDDR6(DDR6)	메모리 클럭	15000MHz\r\n메모리 용량	12GB	메모리 버스	192-bit\r\n그래픽 출력\r\nHDMI	1개	DisplayPort	3개\r\n모니터 지원	최대 모니터 4개		\r\n부가기능\r\n8K 해상도 지원	○	4K 해상도 지원	○\r\nHDR 지원	○	HDCP 2.3	○\r\n전력 관련\r\n사용전력	최대 170W	권장 파워용량	정격파워 550W 이상\r\n전원 포트	8핀 x1개		\r\n냉각방식\r\n방열판	○	히트파이프	○\r\n팬쿨러	○		\r\n제품 외형\r\n팬 개수	2개 팬	가로(길이)	235mm\r\n높이(두께)	42mm		\r\n추가 구성\r\n백플레이트	○		','MSI 지포스 RTX 3060 벤투스 2X OC D6 12GB','SELL',469000,'2022-12-11 07:17:22.035802',9,'2022-12-12 15:50:21.248145','taeeyoul@sk.com','taeeyoul@sk.com'),(158,'제조회사	로지텍 ( 제조사 웹사이트 바로가기)	등록년월	2019년 09월\r\n연결 방식	무선(리시버)+블루투스	배터리	내장 배터리\r\n키 배열	108키	인터페이스	USB\r\n용도\r\n사무용	○		\r\n접점 방식	펜타그래프		\r\n기능키\r\n멀티미디어	○		\r\n각인 위치	한글 정각	LED 백라이트	단색 백라이트\r\n케이블\r\n착탈식 케이블	○		\r\n부가 기능\r\n멀티페어링	○	스마트키보드	○\r\n크기(가로x세로x높이)\r\n가로	430mm	세로	131mm\r\n높이	21mm	무게	810g\r\n케이블 길이	130cm		','로지텍 MX KEYS ','SELL',147900,'2022-12-13 12:32:18.783483',100,'2022-12-13 12:32:18.783483','taeeyoul@sk.com','taeeyoul@sk.com'),(165,'무선, 내장 밧데리','로지텍 MX Anywhere 3','SELL',98990,'2022-12-13 12:42:59.552648',100,'2022-12-13 12:42:59.552648','taeeyoul@sk.com','taeeyoul@sk.com'),(172,'QHD VA 패널, 144 Hz  주사율, 1ms 응답 속도',' 삼성전자 오디세이 G5 C27G54T ','SELL',339000,'2022-12-13 12:50:42.339133',100,'2022-12-13 12:50:42.339133','taeeyoul@sk.com','taeeyoul@sk.com');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-13 21:59:26
