-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: xm_job
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','admin','管理员','http://localhost:9090/files/download/1747470554769-20250517153522.jpg','ADMIN','18899990011','admin2@xm.com');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertise`
--

DROP TABLE IF EXISTS `advertise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advertise` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '主图',
  `position_id` int DEFAULT NULL COMMENT '职位ID',
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '位置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='广告信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertise`
--

LOCK TABLES `advertise` WRITE;
/*!40000 ALTER TABLE `advertise` DISABLE KEYS */;
INSERT INTO `advertise` VALUES (1,'http://localhost:9090/files/download/1754208522642-center.png',1,'中心大图'),(2,'http://localhost:9090/files/download/1754403894154-right-down.png',NULL,'左侧小图'),(3,'http://localhost:9090/files/download/1754403912066-center-down.png',NULL,'中心小图'),(4,'http://localhost:9090/files/download/1754403926096-right-up.png',NULL,'左侧大图'),(5,'http://localhost:9090/files/download/1754404064550-right-down.png',NULL,'右侧小图'),(6,'http://localhost:9090/files/download/1754404074037-right-up.png',NULL,'右侧大图');
/*!40000 ALTER TABLE `advertise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collect`
--

DROP TABLE IF EXISTS `collect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collect` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `student_id` int DEFAULT NULL COMMENT '学生ID',
  `position_id` int DEFAULT NULL COMMENT '岗位ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='收藏信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collect`
--

LOCK TABLES `collect` WRITE;
/*!40000 ALTER TABLE `collect` DISABLE KEYS */;
INSERT INTO `collect` VALUES (2,1,2);
/*!40000 ALTER TABLE `collect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employ`
--

DROP TABLE IF EXISTS `employ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employ` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'logo',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色',
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '城市',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `industry_id` int DEFAULT NULL COMMENT '行业id',
  `scale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '规模',
  `stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '融资',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='企业信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employ`
--

LOCK TABLES `employ` WRITE;
/*!40000 ALTER TABLE `employ` DISABLE KEYS */;
INSERT INTO `employ` VALUES (1,'MeiTuan','123456','美团','http://localhost:9090/files/download/1747465882057-meituan.jpg','EMPLOY','北京市','北京市朝阳区(恒电大厦)C座',2,'10000人以上','已上市','审核通过'),(2,'PDD','123456','拼多多','http://localhost:9090/files/download/1747466064712-pinduoduo.jpg','EMPLOY','上海市','上海长宁区金虹桥国际中心娄山关路533号',4,'10000人以上','已上市','审核通过'),(3,'Boss','123456','Boss直聘','http://localhost:9090/files/download/1747466132725-boss.jpg','EMPLOY','北京市','北京市朝阳区冠捷大厦(太阳宫中路)',5,'1000-9999人','已上市','审核通过'),(4,'XunFei','123456','科大讯飞','http://localhost:9090/files/download/1747466200439-kedaxunfei.jpg','EMPLOY','合肥市','合肥蜀山区科大讯飞股份有限公司望江西路666号',1,'10000人以上','已上市','审核通过'),(5,'HUAWEI','123456','华为','http://localhost:9090/files/download/1747466433015-huawei.jpg','EMPLOY','东莞市','东莞松山湖',1,'10000人以上','不需要融资','审核通过'),(6,'Xiecheng','123456','携程',NULL,'EMPLOY',NULL,NULL,NULL,NULL,NULL,'待审核');
/*!40000 ALTER TABLE `employ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industry`
--

DROP TABLE IF EXISTS `industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `industry` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行业名称',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '行业描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='行业信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry`
--

LOCK TABLES `industry` WRITE;
/*!40000 ALTER TABLE `industry` DISABLE KEYS */;
INSERT INTO `industry` VALUES (1,'计算机软件','这是计算机软件'),(2,'生活服务o2o','这是生活服务o2o'),(3,'人工智能 / AI','这是人工智能 / AI'),(4,'互联网 / 电子商务','这是互联网 / 电子商务'),(5,'社交网络 / 媒体','这是社交网络 / 媒体'),(6,'游戏','这是游戏'),(7,'在线教育','这是在线教育'),(8,'半导体 / 芯片','这是半导体 / 芯片'),(9,'电子 / 硬件开发','这是电子 / 硬件开发'),(10,'云计算 / 大数据','这是云计算 / 大数据');
/*!40000 ALTER TABLE `industry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公告标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '公告内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='系统公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'今天天气真的不错','今天好开心呀！因为天气很好，我又可以肆无忌惮的跟着武哥和青哥学习了！！真的好开心！','2024-07-16 15:51:17'),(2,'项目所有功能开发完毕！','我的项目所有的功能都开发完啦！真的很有成就感！','2024-07-16 15:52:22'),(3,'项目功能都测试完成，准备上线！','经过半个月的学习和练习，终于把这个项目完成了，可以打包上线了！','2024-07-16 15:52:56');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '职位名称',
  `employ_id` int DEFAULT NULL COMMENT '企业ID',
  `industry_id` int DEFAULT NULL COMMENT '行业ID',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '求职类型',
  `experience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工作经验',
  `salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '薪资待遇',
  `education` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '学历要求',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '职位标签',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '职位描述',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '职位状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='职位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'前端软件开发工程师',1,2,'全职','应届生','10-20k','本科','核心部门、待遇好、五险一金、节假日休息','<p>来吧，很牛逼的岗位！</p>','审核通过'),(2,'C++开发工程师',5,1,'全职','3到5年','20-50k','本科','福利待遇好、公积金5%、餐补房补交通补','<p>来吧，很牛逼的</p><p><br></p>','审核通过'),(3,'Java开发工程师',2,4,'全职','应届生','10-20k','本科','10点上班、弹性打卡、公积金12%','<p>来吧，很牛逼的啊！！！</p>','审核通过'),(4,'前端开发',4,1,'全职','1到3年','10-20k','本科','前端,CSS,JavaScript','<p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">关于我们:</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">我们是科大讯飞成都研发中心前端组，在这里我们通过在业务中的不断探索和实践，期望通过配置化的战略来提升中后台系统的前端研发效率，建立行业标准，成为行业标杆。</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">关于你:</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">期望你是一位对前端充满激情和富有经验的工程师，有永远向上的心态和积极努力的态度。我们在成都等你，春天去龙泉山看桃花，夏天去青城山消暑，秋天去四姑娘山看雪山红叶，冬天去吃最正宗的火锅。</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">岗位职责:</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">●负责美团外卖CRM相关业务的前端技术方案设计、需求把控、功能开发，将业务需求拆解细化并实施;</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">●探索和实践针对中后台系统的前端体系化研发方案，提升前端研发效率;</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">●促进团队与产品及相关团队的密切合作。</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">岗位要求:</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">1)岗位基本要求:</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">●3年及以上互联网研发工作经验;</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">●具有扎实的计算机科学功底，扎实的编程基础和数据结构算法基础，较强的编程能力和问题解决能力;对前端相关框架有深入研究，以及前端工程化经验，并在大中型项目中有过实际应用和调优经历;</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">●对前端的基础知识，CSS、 JavaScript、 性能优化、网络原理等有深入的理解;</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">●善于交流，有良好的团队合作精神和协调沟通能力，有与产品、后端、移动端等多方密切配合的经验和意识;</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">●全日制统招本科及以上学历。</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">2)具备以下者优先:</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">●热爱互联网和新技术，具有极强的快速学习能力，研究过优秀开源软件的源码并有心得者优先;</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">●有移动端或类似系统的研发经历;</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">●有“代码洁癖”、有极客精神。欢迎有想法的同学私聊</span></p>','审核通过'),(5,'Java后端开发',4,1,'全职','应届生','10-20k','本科','福利待遇好,晋升空间大','<p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">岗位职责：</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">1、负责到家站外广告系统的相关设计和研发，包括但不限于DSP平台、广告投放引擎等的搭建和开发</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">2、协同业务方探索到家商家广告在外部场景下的投放，支撑海量投放业务快速落地</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">3、支持广告投放在工程落地上的实践和调优，沉淀业务优秀实践，保障所有服务稳定运行</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">岗位基本要求：</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">1、计算机相关专业，本科及以上学历</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">2、三年以上的开发经验，精通Java后台服务研发</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">3、对技术有追求，具备较强的代码编写和问题解决能力</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">4、善于交流，有良好的团队合作精神和协调沟通能力，有强烈的责任心和主人翁意识</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">具备以下优先：</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">1、有广告系统、推荐系统相关的工程开发经验者优先</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">2、有海量分布式系统架构设计、优化经验者优先</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">3、熟悉hadoop， flink， storm， HBase， hive， spark， storm等分布式大数据处理技术优先</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">岗位亮点：</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">广告业务是互联网重要的变现方式之一 广告投放系统承载亿级用户、百亿级流量，有海量数据和高并发的技术挑战 广告业务结合了海量的系统架构和推荐算法（是AI落地产生价值的重要场景） 部门介绍： 美团的使命是“帮大家吃得更好，生活更好”。</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">作为一家生活服务电子商务平台，公司聚焦“Food +Platform”战略，以“吃”为核心，通过科技创新，和广大商户与各类合作伙伴一起，努力为消费者提供品质生活，推动生活服务业需求侧和供给侧数字化升级。2018年9月20日，美团正式在港交所挂牌上市。美团将始终坚持以客户为中心，不断加大在科技研发方面的投入，更好承担社会责任，更多创造社会价值，与广大合作伙伴一起发展共赢。</span></p><p style=\"text-align: start; line-height: 2;\"><br></p>','审核通过'),(6,'抖音直播内容运营',4,1,'全职','应届生','5-10k','本科','抖音直播,福利待遇好','<p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 15px;\">岗位职责：1、需要有抖音相关经验，其中直播投放相关经验者优先；2、能够完成短视频创意、内容策划，独立撰稿及制作分镜脚本，优化与迭代渠道投放素材内容的表达，提升素材整体的爆款率和转化率；3、负责短视频项目拍摄执行，跟进及反馈所负责项目制作进度，对产出结果负责；4、熟悉媒体环境，研究行业热门的各类短视频作品，收集和分析行业视频创意(不限于种草、日常、直播预热等视频)会总结与方法论辅助提升团队短视频能力；5、对项目有完善的策划能力，能独立完成短视频整体项目的方向把控和系列性内容策划。</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 15px;\">岗位要求：1、3年左右工作经验，本科及以上学历编导、传媒、广播电视、新闻学等相关专业优先，能自编自导自剪优先；2、对新媒体内容运营有一定认知，有较强的创造性、发散性思维能力，良好的策划能力、文案能力、沟通能力；3、具备用户运营以及产品运营思维，营销思维强，销售导向；4、有高度的责任心和自驱力执行力强能主动思考推动工作的优化。</span></p>','审核通过'),(7,'高级运营',2,4,'全职','3到5年','20-50k','本科','五险一金,福利待遇好','<p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">岗位职责：</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">1、社区团购-多多买菜业务，通过上门拜访，与商户（便利店、商铺等）谈判并达成合作；</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">2、负责区域内客情维护，引导团长完成分享与推广任务，提高团长经营收入。</span></p><p style=\"text-align: start; line-height: 2;\"><br></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">任职要求：</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">1、学历不限，工作区域可就近安排；</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">2、有销售经验，尤其有互联网、美团优选、淘菜菜，京喜拼拼、兴盛优选、十荟团、同程生活等社区团购经验者优先考虑；</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">3、适应互联网的快工作节奏，极致追求结果达成。目前岗位在招区域:陈村 北滘 伦教 大良 龙江</span></p><p style=\"text-align: start; line-height: 2;\"><br></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">岗位要求:</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">1.自备电动车 ，在家附近上班，不包吃住</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">2.名下没有营业执照</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">3.善于沟通，乐于沟通，敢陌拜</span></p><p style=\"text-align: start; line-height: 2;\"><br></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">工作内容：</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">维护区域内的团长，加团长微信，做好微信群运营，前期每天上门拜访20个，前期有师傅带</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">工作时间：</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); font-size: 14px;\">9点到6点，做六休一，外勤打卡 不用到公司报道 底薪3700+绩效12000，一个月平均8000-15000 如果满足以上条件，可以发简历和电话过来，进一步沟通</span></p>','审核通过'),(8,'华为云测试工程师',5,1,'全职','1到3年','10-20k','本科','自动化测试,福利待遇好','<p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 15px;\">华为云数据库相关岗位，此岗位为OD岗位，入职后满足条件可转华为。</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 15px;\">【岗位职责】1.负责华为云数据库的测试设计、测试验证与交付工作,保证产品高质量发布。2. 负责华为云数据库的测试架构设计和开发,支撑自动化测试,提升测试质量和效率。3. 支撑负责华为云数据库的性能/过载测试、可靠性/混沌测试、安全测试、客户化测试等。</span></p><p style=\"text-align: start; line-height: 2;\"><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-size: 15px;\">【技能要求】1.熟悉测试基本的技术和方法,包括测试设计、测试执行、测试分析、测试工具、测试仿真、故障注入、自动化等。2. 熟练掌握测试需求分析和设计方法,熟悉黑白盒测试流程,熟悉常见缺陷管理工具。3. 熟悉自动化脚本的开发,熟练使用常用的自动化测试框架,具备独立的问题定位分析能力。4. 有强烈的责任心和使命感,具备良好的沟通能力和团队合作意识。5. 至少熟悉一种编程语言C、C++、java、Python、Go、shell等。</span></p>','审核通过');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resume`
--

DROP TABLE IF EXISTS `resume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resume` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '简历名称',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '期望薪资',
  `education` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '学历',
  `experience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工作年限',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `edu_exps` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '教育经历',
  `work_exps` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '工作经历',
  `pro_exps` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '项目经验',
  `user_id` int DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='简历信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resume`
--

LOCK TABLES `resume` WRITE;
/*!40000 ALTER TABLE `resume` DISABLE KEYS */;
INSERT INTO `resume` VALUES (6,'软件测试','赵伟健','男','5-10k','本科','应届生',NULL,NULL,'[{\"school\":\"广东科技学院\",\"speciality\":\"软件工程\",\"education\":\"本科\"}]','[{\"employ\":\"YY\",\"project\":\"秒颜APP\",\"position\":\"软件测试\",\"type\":\"实习\"}]','[{\"name\":\"只能找SaaS\"}]',1),(7,'Java','赵伟健','男','5-10k','本科','应届生',NULL,NULL,'[{\"school\":\"广东科技学院\",\"speciality\":\"软件工程\",\"education\":\"本科\"}]','[{\"employ\":\"小马智行科技有限公司\",\"project\":\"Mapless\",\"position\":\"QA\",\"type\":\"实习\"}]','[]',2),(8,'软件测试','啧啧啧','男','5-10k','本科','应届生',NULL,NULL,'[]','[]','[]',2),(9,'C++开发','lmq','女','10-20k','本科','应届生',NULL,NULL,'[{\"school\":\"广东科技学院\",\"speciality\":\"软件工程\",\"education\":\"本科\"}]','[{\"employ\":\"宇视科技\",\"project\":\"SaaS\",\"position\":\"C++开发\",\"type\":\"实习\"}]','[]',2);
/*!40000 ALTER TABLE `resume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submit`
--

DROP TABLE IF EXISTS `submit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submit` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `employ_id` int DEFAULT NULL COMMENT '企业ID',
  `position_id` int DEFAULT NULL COMMENT '岗位ID',
  `user_id` int DEFAULT NULL COMMENT '用户ID',
  `resume_id` int DEFAULT NULL COMMENT '简历ID',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '投递时间',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '简历状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='简历投递表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submit`
--

LOCK TABLES `submit` WRITE;
/*!40000 ALTER TABLE `submit` DISABLE KEYS */;
INSERT INTO `submit` VALUES (1,5,2,1,6,'2025-08-23 17:46:30','已投递'),(2,4,5,2,7,'2025-08-23 21:01:12','已投递'),(3,5,2,2,9,'2025-08-24 17:22:20','已投递'),(4,5,8,2,8,'2025-08-24 17:23:24','已投递');
/*!40000 ALTER TABLE `submit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'zhangsan','123456','张三','http://localhost:9090/files/download/1747467396190-20250517153618.jpg','USER','18899000056','zhangsan@xm.com'),(2,'lisi','123456','李四','http://localhost:9090/files/download/1747467452196-20250517153608.jpg','USER','18888995236','lis@xm.com'),(3,'wangwu','123456','王五','http://localhost:9090/files/download/1747467489885-20250517153554.jpg','USER','15687988559','wangwu@xm.com'),(4,'zhaoliu','123456','赵六','http://localhost:9090/files/download/1752414710123-20250517153608.jpg','USER','13688899465',NULL);
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

-- Dump completed on 2025-09-07 22:04:07
