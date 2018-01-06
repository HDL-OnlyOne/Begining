-- MySQL dump 10.13  Distrib 5.7.15, for osx10.11 (x86_64)
--
-- Host: localhost    Database: bis_cms
-- ------------------------------------------------------
-- Server version	5.7.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `o2o_admin`
--

DROP TABLE IF EXISTS `o2o_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2o_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `last_login_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2o_admin`
--

LOCK TABLES `o2o_admin` WRITE;
/*!40000 ALTER TABLE `o2o_admin` DISABLE KEYS */;
INSERT INTO `o2o_admin` VALUES (1,'admin','admin',0,1495108805,1495108805,1),(2,'liming','123456',756472,54326357,74374,1),(3,'adi','b59c67bf196a4758191e42f76670ceba',1510708732,1510708732,1510708732,1);
/*!40000 ALTER TABLE `o2o_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2o_area`
--

DROP TABLE IF EXISTS `o2o_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2o_area` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `city_id` int(11) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `city_id` (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2o_area`
--

LOCK TABLES `o2o_area` WRITE;
/*!40000 ALTER TABLE `o2o_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `o2o_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2o_bis`
--

DROP TABLE IF EXISTS `o2o_bis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2o_bis` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `licence_logo` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `city_id` int(11) unsigned NOT NULL DEFAULT '0',
  `city_path` varchar(50) NOT NULL DEFAULT '',
  `bank_info` varchar(50) NOT NULL DEFAULT '',
  `money` decimal(20,2) NOT NULL DEFAULT '0.00',
  `bank_name` varchar(50) NOT NULL DEFAULT '',
  `bank_user` varchar(50) NOT NULL DEFAULT '',
  `faren` varchar(20) NOT NULL DEFAULT '',
  `faren_tel` varchar(20) NOT NULL DEFAULT '',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2o_bis`
--

LOCK TABLES `o2o_bis` WRITE;
/*!40000 ALTER TABLE `o2o_bis` DISABLE KEYS */;
INSERT INTO `o2o_bis` VALUES (13,'小华商户','578464694@qq.com','\\upload\\20170415\\35177232adce03e47b5ae49771541d8f.jpg','\\upload\\20170415\\c0e3fd9844a26c029d13b20b4fb8724a.jpg','这里是商铺介绍',0,'0,0','88885555',0.00,'农业银行','小明','小明','15075652703',0,1,1492243992,1492515313),(14,'小刚商户','578464694@qq.com','\\upload\\20170415\\68609fe5e22d8dbcfafe72f4cb7f7329.jpg','\\upload\\20170415\\0661b02442501e57de81b54231b5284b.jpg','这里是商铺介绍',1,'1,2','7676655',0.00,'农业银行','小明','小明','15075652703',0,1,1492248598,1492515248),(15,'小红商户','578464694@qq.com','\\upload\\20170415\\3d219b9a50fd2cb98ee301fd96a4bf26.jpg','\\upload\\20170415\\51fc7807e7c00c1b161223ecbbdf8ec9.jpg','<p>店铺介绍</p>',8,'8,9','8888888',0.00,'农业银行','小红','小红','13931644281',0,1,1492266832,1492515216),(19,'柯南商户','578464694@qq.com','\\upload\\20170415\\aefec9b158b10e2e92a4274863b59a7e.jpg','\\upload\\20170415\\5477609d1236acef16120f6e8c2ea55d.jpg','店铺介绍',8,'8,9','8888',0.00,'农业','柯南','柯南','15075652703',0,1,1492268752,1492318901),(20,'柯北商户','578464694@qq.com','\\upload\\20170415\\fc075f60c4c92233ada22cd10426830f.jpg','\\upload\\20170415\\d437f9eecc2b470c5912e2b9a07896ce.jpg','店铺介绍',3,'3,7','8888',0.00,'农业','柯北','柯北','15075652703',0,2,1492268859,1492515529),(21,'柯西商户','578464694@qq.com','\\upload\\20170416\\fd728f8aaf8759b2141bac428601b400.jpg','\\upload\\20170416\\8c32a1e588dfa06afc0643891f14c058.jpg','<p>dddfd</p>',8,'8,9','344444',0.00,'农业','柯西','柯西','15075652703',0,2,1492310543,1492515505),(22,'在下坂本，有何贵干','578464694@qq.com','\\upload\\20170416\\4e77f4385ef2cc205e3e30418ac1efd4.jpg','\\upload\\20170416\\41ce37aa038387fd955cf091ef72afa9.jpg','<p>我是王宇&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>',8,'8,9','6228481006486106160',0.00,'中国农业银行','坂本','坂本','15075652703',0,2,1492328612,1492515482),(23,'王小明','578464694@qq.com','\\upload\\20170422\\b112890b0df2e5fc4abc8f59e23007dd.jpg','\\upload\\20170422\\87b952f1b3d01e675577e2d9f7eec2b2.jpg','&lt;p&gt;介绍&lt;/p&gt;',8,'8,9','6228481006486106160',0.00,'中国农业银行','王宇','王宇','15075652703',0,1,1492862012,1492862065),(24,'好伦哥团购','578464694@qq.com','\\upload\\20170423\\f88080c3dfe0829b3ff3b6c5dc8d214b.jpg','\\upload\\20170423\\8d6753f94a42d933b052f8bb5eef04e3.jpg','&lt;p&gt;好伦哥西餐&lt;br/&gt;&lt;/p&gt;',8,'8,9','6228481006486106160',0.00,'中国农业银行','王宇','王宇','15075652703',0,1,1492961325,1492961400),(25,'柏尔森烤肉自助餐厅','1259865838@qq.com','\\upload\\20170423\\56ef8c3c9118617fc171f9f821d55917.jpg','\\upload\\20170423\\fbbe63a3e69b661508f44cca3bb0926f.jpg','&lt;p&gt;烤肉自助餐厅&lt;br/&gt;&lt;/p&gt;',8,'8,9','6228481006486106160',0.00,'中国农业银行','王宇','王宇','15075652703',0,1,1492961881,1492961908),(26,'丁丁洋回转自助火锅','578464694@qq.com','\\upload\\20170423\\af2aa997eb31f30a8d2c61bb863bca7e.jpg','\\upload\\20170423\\c498a8c005f2fde65f098f0c353f2fbb.jpg','&lt;p&gt;自助火锅&lt;/p&gt;',8,'8,9','6228481006486106160',0.00,'中国农业银行','王宇','王宇','15075652703',0,1,1492962196,1492962992),(27,'春园烤肉','578464694@qq.com','\\upload\\20170423\\b13f0862a1bc077b56a23eba56fdabfe.jpg','\\upload\\20170423\\a151f7481fb15ff0be06bf8113365730.jpg','&lt;p&gt;春园烤肉&lt;/p&gt;',8,'8,9','6228481006486106160',0.00,'中国农业银行','王宇','王宇','15075652703',0,0,1492962467,1510880487),(28,'布拉丝卡南美烤肉','578464694@qq.com','\\upload\\20170423\\c59f29555ade5aa91212786aeed41abc.jpg','\\upload\\20170423\\b92fad767b81463fd6b66c1de523c5b6.jpg','&lt;p&gt;布拉丝卡南美烤肉&lt;/p&gt;',8,'8,9','6228481006486106160',0.00,'中国农业银行','王宇','王宇','15075652703',0,1,1492962770,1492962800),(29,'伊尔曼都烤肉','1259865838@qq.com','\\upload\\20170423\\505d2e1eda7d4dfcc0688c0f89abeb0c.jpg','\\upload\\20170423\\83643ff55a012c13d9c4b21640101135.jpg','&lt;h2 style=&quot;font-size: 24px; margin: 8px 0px 2px; padding: 0px; border: 0px; outline: 0px; font-weight: 500; font-family: &amp;#39;Microsoft Yahei&amp;#39;; vertical-align: baseline; line-height: 36px; color: rgb(51, 51, 51); white-space: normal;&quot;&gt;伊尔曼都烤肉&lt;/h2&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',8,'8,9','6228481006486106160',0.00,'中国农业银行','王宇','王宇','15075652703',0,0,1492963188,1510880110),(30,'虾吃虾涮','578464694@qq.com','\\upload\\20170424\\76166986c7a6444d9667b8d44e410e2d.jpg','\\upload\\20170424\\5e1a984fe16a240d63c59e815e6206c2.jpg','&lt;h2 style=&quot;font-size: 24px; margin: 8px 0px 2px; padding: 0px; border: 0px; outline: 0px; font-weight: 500; font-family: &amp;#39;Microsoft Yahei&amp;#39;; vertical-align: baseline; line-height: 36px; color: rgb(51, 51, 51); white-space: normal;&quot;&gt;虾吃虾涮(二大街店)&lt;/h2&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',8,'8,9','6228481006486106160',0.00,'中国农业银行','王宇','王宇','15075652703',0,1,1492963617,1510880481),(31,'testqueue','578464694@qq.com','\\upload\\20170506\\a5016c1d83145aced1c4003cc5981115.jpg','\\upload\\20170506\\3aa075f4b6e39835835e7cec5619ae81.jpg','&lt;p&gt;测试邮件队列&lt;/p&gt;',8,'8,9','6228481006486106160',0.00,'中国农业银行','王宇','王宇','15075652703',0,0,1494065718,1494065718),(32,'华彩集团','123456@qq.com','/upload/20170711/3d9acb03ccff1a97381a2f7898735914.png','/upload/20170711/3b919c4ee3d31446b3d9c5a470453cc9.png','&lt;p&gt;地方按时啊都是&lt;br/&gt;&lt;/p&gt;',3,'3,4','123456789077',0.00,'中国农业银行','George','George','13330016296',0,-1,1499735385,1510880131),(33,'阿迪饺子馆','jinping@qq.com','/upload/20171109/7667c89935a7174b21a3c710e3f0bdef.jpg','/upload/20171109/972a5864325921cd0e778aa1403087f1.jpg','<p>fdsgfhg</p>',10,'10,0','63241985999903944',0.00,'中国银行','无敌','习惯近身平a','134567548458',0,1,1510231544,1510231544),(34,'adasda','123@qq.com','/upload/20171109/6e06201b5f7b1e12274845d8ff451709.jpg','/upload/20171109/4ec1a736af9b25136348b6c097696365.jpg','<p>123123</p>',3,'3,7','123',0.00,'1231','23','123','123',0,1,1510232772,1510232772);
/*!40000 ALTER TABLE `o2o_bis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2o_bis_account`
--

DROP TABLE IF EXISTS `o2o_bis_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2o_bis_account` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `code` varchar(10) NOT NULL DEFAULT '',
  `bis_id` int(11) unsigned NOT NULL DEFAULT '0',
  `last_login_ip` varchar(20) NOT NULL DEFAULT '',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0',
  `is_main` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2o_bis_account`
--

LOCK TABLES `o2o_bis_account` WRITE;
/*!40000 ALTER TABLE `o2o_bis_account` DISABLE KEYS */;
INSERT INTO `o2o_bis_account` VALUES (1,'wangyu','123456','',0,'',0,0,0,0,0,0),(2,'wy7452525','54a518ce54e8684f02d8bde81c6236c3','2486',13,'',0,1,0,2,1492243992,1492515313),(3,'admin2','19687420fc5d27865b4c864005181e11','9944',14,'',0,1,0,2,1492248598,1492515248),(4,'wang7452525','d8aeb59d8350d805d6b625af69ed2bb9','4305',15,'',0,1,0,2,1492266832,1492515216),(5,'aaaaaa','f732e7f6395ff855048bf80debc753f2','8391',19,'',0,1,0,2,1492268752,1492318901),(6,'eeeeeee','9ccb947335722b6443447400ea5d5890','3340',20,'',0,1,0,2,1492268859,1492515529),(7,'jjuuuuuu','8553d20dd98c633a5c08b3df01173334','502',21,'',0,1,0,2,1492310543,1492515505),(8,'7452525','a413fb6676a7ae4dc0427efe93dc8c31','8946',21,'',1492440526,1,0,2,1492328612,1492515505),(9,'wangwang','ae6a5d68d052adc8db0fb4c02d5dcc95','1122',23,'',1492862082,1,0,1,1492862012,1492862082),(10,'haolunge','1dda7e1dc8e48d2992be2f718308e7e6','9203',24,'',1494079534,1,0,1,1492961325,1494079534),(11,'boersen','fdda33d0613401f135695a6189543070','583',25,'',1492963742,1,0,1,1492961881,1492963742),(12,'dingdingyang','329a11a6a1b509db5ae5e391dae685a2','9352',26,'',1494850249,1,0,1,1492962196,1494850249),(13,'chunyuan','546deea80011293f311d69b588853dfc','1333',27,'',1494730790,1,0,1,1492962467,1494730790),(14,'bulasika','ff1518c1f484e76fec789a1f97e8f18b','6569',28,'',0,1,0,1,1492962770,1492962800),(15,'yiermandu','315aaa4d43a9ae450b13850914da3448','2989',29,'',1493995181,1,0,1,1492963188,1493995181),(16,'xiachi','98bfcb35944d9bf9efb0d97df920f448','882',30,'',1492964088,1,0,1,1492963617,1492964088),(17,'testqueue','8c6d18246af8921056740afe71796dc7','8543',31,'',0,1,0,0,1494065718,1494065718),(18,'admin','a9d79754002792230a8ed999b7946036','1605',32,'',1499825443,1,0,1,1499735385,1499825443),(19,'bis_01','227cee183f9b009e2f81f2f8339e281b','1010',30,'127.0.0.1',1510044150,1,0,1,1510044150,1510044150),(20,'adi_01','4eaf7df20cbcaa7b9ed636ed6566ca03','3506',34,'',0,1,0,1,1510232772,1510232772);
/*!40000 ALTER TABLE `o2o_bis_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2o_bis_location`
--

DROP TABLE IF EXISTS `o2o_bis_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2o_bis_location` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `tel` varchar(20) NOT NULL DEFAULT '',
  `contact` varchar(20) NOT NULL DEFAULT '',
  `xpoint` varchar(20) NOT NULL DEFAULT '',
  `ypoint` varchar(20) NOT NULL DEFAULT '',
  `bis_id` int(11) unsigned NOT NULL DEFAULT '0',
  `open_time` varchar(50) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `is_main` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `api_address` varchar(255) NOT NULL DEFAULT '',
  `city_id` int(11) unsigned NOT NULL DEFAULT '0',
  `city_path` varchar(50) NOT NULL DEFAULT '',
  `category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `category_path` varchar(50) NOT NULL DEFAULT '',
  `bank_info` varchar(50) NOT NULL DEFAULT '',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  KEY `bis_id` (`bis_id`),
  KEY `category_id` (`category_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=852 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2o_bis_location`
--

LOCK TABLES `o2o_bis_location` WRITE;
/*!40000 ALTER TABLE `o2o_bis_location` DISABLE KEYS */;
INSERT INTO `o2o_bis_location` VALUES (3,'柯南的分店','\\upload\\20170415\\cea5f9408699fed2814d4598bc4d0e9d.jpg','河北省霸州市信安镇','15075652703','王宇','116.65313694621','39.158729930098',19,'','这里是店铺介绍',1,'',8,'8,9',2,'2,3','',0,1,1492240685,1492471905),(4,'坂本的分店','\\upload\\20170415\\059924dc3f4e4c800cd9d403d0a5f252.jpg','河北省廊坊市广阳区新华路199号','15075652703','王宇','116.71203300041','39.551346099335',22,'7:00-8:00','这里是店铺介绍',1,'',8,'8,9',11,'11,12','',0,2,1492243718,1492515482),(6,'有家客栈','\\upload\\20170415\\234a5e4500a8b9f48ca0f37286d986a2.jpg','河北省廊坊市广阳区新华路199号','15075652703','王宇','116.71203300041','39.551346099335',12,'7:00-8:00','这里是店铺介绍',1,'',3,'3,7',11,'11,','',0,-1,1492243935,1494509522),(9,'大米店铺','\\upload\\20170415\\3d219b9a50fd2cb98ee301fd96a4bf26.jpg','河北省霸州市信安镇爱国街','15075652703','王宇','116.65313694621','39.158729930098',15,'08:00-22:00','<p>扛把子</p>',1,'河北省霸州市信安镇爱国街',8,'8,9',9,'9,','',0,2,1492266832,1492515216),(10,'bilibili','\\upload\\20170415\\aefec9b158b10e2e92a4274863b59a7e.jpg','河北省廊坊市广阳区新华路199号','15075652703','王宇','116.71203300041','39.551346099335',19,'09:00-22:00','门店介绍',1,'河北省廊坊市广阳区新华路199号',8,'8,9',9,'9,14|10','',0,1,1492268752,1492318901),(11,'智能姬','\\upload\\20170415\\fc075f60c4c92233ada22cd10426830f.jpg','河北省廊坊市广阳区新华路199号','15075652703','王宇','116.71203300041','39.551346099335',20,'09:00-22:00','门店介绍',1,'河北省廊坊市广阳区新华路199号',3,'3,7',9,'9,14|10','',0,2,1492268859,1492515529),(12,'bilibili的修改分店','\\upload\\20170416\\fd728f8aaf8759b2141bac428601b400.jpg','河北省霸州市信安镇爱国街','15075652703','王宇','116.65313694621','39.158729930098',21,'08:00-09:00','<p>水电费</p>',0,'河北省霸州市信安镇爱国街',8,'8,0',9,'9,on','',0,-1,1492310543,1492444383),(13,'小明店铺3','\\upload\\20170416\\96aae8af9ffdad4e5d562b0d5d54e5b4.jpg','河北省廊坊市广阳区新华路199号','15075652703','王宇','116.71203300041','39.551346099335',22,'08:00-22:00','<p>王宇的店铺&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>',0,'河北省廊坊市广阳区新华路199号',8,'8,0',1,'1,on','',0,1,1492328612,1492350787),(14,'小明的店铺','\\upload\\20170416\\d258d7d2271fe30a5da68dfa4150e949.jpg','河北省霸州市信安镇爱国街','15075652703','王宇','116.65313694621','39.158729930098',22,'08:00-22:00','<p>王小明的门店介绍</p>',0,'河北省霸州市信安镇爱国街',8,'8,9',1,'1,6','',0,1,1492342526,1492437190),(16,'小明的分店','\\upload\\20170417\\2fc496aacc8c8342fb2019607b78ecd2.gif','河北省霸州市信安镇爱国街','15075652703','王宇','116.65313694621','39.158729930098',21,'08:00-22:00','<p>王小明分店介绍</p>',0,'河北省霸州市信安镇爱国街',8,'8,9',2,'2,3','',0,-1,1492435204,1492438420),(17,'我的门店','\\upload\\20170417\\a2fdd2eca1ef5e5dc182faba7cf0fe8f.jpg','河北省廊坊市新华路199号','18855522445','小明','116.71203300041','39.551346099335',21,'08:00-22:00','<p>这是门店介绍</p>',0,'河北省廊坊市新华路199号',8,'8,9',1,'1,6','',0,-1,1492440405,1492445041),(18,'bilibili的另一个门店','\\upload\\20170417\\425149654da4dab16695c504fc82c75a.gif','河北省廊坊市广阳区新华路199号','15075652703','王宇','116.71203300041','39.551346099335',21,'06:00-22:00','<p>bilibili的另一个门店介绍</p>',0,'河北省廊坊市广阳区新华路199号',3,'3,7',2,'2,3','',0,1,1492444317,1492471896),(19,'bilibili的另一个门店','\\upload\\20170418\\7cda152b0845cf3e8071b1cccccaf253.jpg','河北省霸州市信安镇爱国街','15075652703','王宇','116.65313694621','39.158729930098',21,'08:00-22:00','<p>bilibili的另一个门店</p>',0,'河北省霸州市信安镇爱国街',8,'8,9',2,'2,3','',0,1,1492472197,1492472207),(20,'bilibili的新加门店','\\upload\\20170418\\c66ca528b6efee7bde8b4bfb966cb5f4.jpg','河北省廊坊市安次区爱民东道14号','15075652703','王宇','116.70194823648','39.532415835593',21,'07:00-23:00','<p>bilibili的新加门店</p>',0,'河北省廊坊市安次区爱民东道14号',3,'3,7',2,'2,3','',0,1,1492472323,1492472370),(21,'王小明','\\upload\\20170422\\b112890b0df2e5fc4abc8f59e23007dd.jpg','河北省廊坊市广阳区新华路199号','15075652703','王宇','116.71203300041','39.551346099335',23,'09:00-22:00','&lt;p&gt;门店&lt;/p&gt;',1,'河北省廊坊市广阳区新华路199号',8,'8,9',1,'1,','',0,1,1492862012,1492862065),(22,'wangwang的门店','\\upload\\20170422\\90e69f82caed9b9797964df32121afea.jpg','河北省廊坊市广阳区新华路199号','15075652703','王宇','116.71203300041','39.551346099335',23,'08:00-22:00','&lt;p&gt;介绍&lt;/p&gt;',0,'河北省廊坊市广阳区新华路199号',8,'8,9',1,'1,8|6','',0,1,1492862163,1492862181),(23,'好伦哥团购','\\upload\\20170423\\f88080c3dfe0829b3ff3b6c5dc8d214b.jpg','廊坊市燕郊天洋广场A馆1层F1A-04号','15075652703','王宇','116.82766516915','39.971231993239',24,'11:00-21:00','&lt;p&gt;提供免费停车位，提供免费WiFi&lt;/p&gt;',1,'廊坊市燕郊天洋广场A馆1层F1A-04号',8,'8,9',1,'1,18','',0,1,1492961325,1492961400),(24,'柏尔森烤肉自助餐厅','\\upload\\20170423\\56ef8c3c9118617fc171f9f821d55917.jpg','廊坊市广阳区银河北路119号乐都新天地6楼','15075652703','王宇','116.70498264872','39.538246682078',25,'18:00-21:30','&lt;p&gt;&lt;span class=&quot;text-main&quot;&gt;免费停车，免费WiFi！&lt;/span&gt;&lt;/p&gt;',1,'廊坊市广阳区银河北路119号乐都新天地6楼',8,'8,9',1,'1,19','',0,1,1492961881,1492961908),(25,'丁丁洋回转自助火锅','\\upload\\20170423\\af2aa997eb31f30a8d2c61bb863bca7e.jpg','廊坊市广阳区万达广场F座家乐福超市地下一层','15075652703','王宇','116.71410446597','39.528431526829',26,'11:00-21:00','&lt;p&gt;&lt;span class=&quot;text-main&quot;&gt;万达店单人自助火锅&lt;/span&gt;&lt;/p&gt;',1,'廊坊市广阳区万达广场F座家乐福超市地下一层',8,'8,9',1,'1,20','',0,1,1492962196,1492962992),(26,'春园烤肉','\\upload\\20170423\\b13f0862a1bc077b56a23eba56fdabfe.jpg','廊坊市广阳区第四大街肯德基4楼','15075652703','王宇','116.73145463413','39.534755473004',27,'10:30-21:30','&lt;h2&gt;春园烤肉(四大街店)&lt;/h2&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',1,'廊坊市广阳区第四大街肯德基4楼',8,'8,9',1,'1,','',0,1,1492962467,1492962822),(27,'布拉丝卡南美烤肉','\\upload\\20170423\\c59f29555ade5aa91212786aeed41abc.jpg','廊坊市广阳区新华路57号月色广场3楼东侧','15075652703','王宇','116.71504276045','39.527328713462',28,'11:00-14:00','&lt;p&gt;提供免费停车位，提供免费WiFi&lt;/p&gt;',1,'廊坊市广阳区新华路57号月色广场3楼东侧',8,'8,9',1,'1,19','',0,1,1492962770,1492962800),(28,'伊尔曼都烤肉','\\upload\\20170423\\505d2e1eda7d4dfcc0688c0f89abeb0c.jpg','廊坊市广阳区新华路50号万达广场六楼','15075652703','王宇','116.71281826585','39.526693586707',29,'11:00-21:00','&lt;p&gt;提供免费停车位，提供免费WiFi&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',1,'廊坊市广阳区新华路50号万达广场六楼',8,'8,9',1,'1,19','',0,1,1492963188,1492963637),(29,'虾吃虾涮','\\upload\\20170424\\76166986c7a6444d9667b8d44e410e2d.jpg','廊坊市广阳区二大街北外街中段','15075652703','王宇','116.72938960942','39.540571622006',30,'11:00-21:30','&lt;p&gt;&lt;span style=&quot;color: rgb(88, 88, 88); font-family: &amp;#39;Hiragino Sans GB&amp;#39;, arial, Verdana, tahoma, 宋体, sans-serif; font-size: 14px; line-height: 25px;&quot;&gt;店内免费提供应季新鲜水果，另店内提供南瓜粥自助、小凉菜自助&lt;/span&gt;&lt;/p&gt;',1,'廊坊市广阳区二大街北外街中段',8,'8,9',1,'1,20','',0,1,1492963617,1492963630),(30,'testqueue','\\upload\\20170506\\a5016c1d83145aced1c4003cc5981115.jpg','河北省廊坊市广阳区新华路199号','15075652703','王宇','116.71203300041','39.551346099335',31,'08:00-22:00','&lt;p&gt;测试邮件队列的介绍&lt;/p&gt;',1,'河北省廊坊市广阳区新华路199号',8,'8,9',1,'1,20','',0,0,1494065718,1494065718),(843,'小米店铺','\\upload\\20170415\\68609fe5e22d8dbcfafe72f4cb7f7329.jpg','河北省廊坊市广阳区新华路199号','15075652703','王宇','116.71203300041','39.551346099335',14,'09:00-22:00','这里是店铺介绍',1,'河北省廊坊市广阳区新华路199号',1,'1,2',9,'9,','',0,2,1492248598,1492515248),(844,'新加的丁丁洋自助火锅','\\upload\\20170511\\1f371b331b59d32e2b8e6f8c8f1fbdc7.jpg','景德镇市珠山区浙江路与广场南路交汇处东20米路南','15075652703','王宇','117.22107434143','29.29152538553',26,'08:00-21:00','&lt;p&gt;一个新加的丁丁洋自助火锅&lt;/p&gt;',0,'景德镇市珠山区浙江路与广场南路交汇处东20米路南',3,'3,7',1,'1,20','',0,1,1494508960,1494509491),(845,'华彩集团','/upload/20170711/3d9acb03ccff1a97381a2f7898735914.png','','13330016296','George','115.89728003744','28.654426839742',32,'8:00-12:00','&lt;p&gt;阿道夫收到&lt;br/&gt;&lt;/p&gt;',1,'江西省南昌市西湖区洪城客运站',3,'',1,'1,20','',0,1,1499735385,1499735550),(846,'adasda','/upload/20171109/6e06201b5f7b1e12274845d8ff451709.jpg','大连市沙河口区软件园路3号','1231','123','121.54610035743','38.893178779642',34,'6:00-20:00','<p>34568</p>',1,'大连市沙河口区软件园路3号',3,'3,7',1,'1,20|19|18','123',0,1,1510232772,1510538699),(847,'safgbfgf','/upload/20171110/bd0b60a5e902c2500e6ba8b5c0d7e38f.jpg','辽宁省大连市沙河口区软件园路3号','13546577656','ad','121.54610035743','38.893178779642',34,'12345','<p>sfadagdfgdfg</p>',0,'辽宁省大连市沙河口区软件园路3号',3,'3,0',5,'5,21','',0,-1,1510285014,1510538686),(848,'safgbfgf','/upload/20171110/bd0b60a5e902c2500e6ba8b5c0d7e38f.jpg','辽宁省大连市沙河口区软件园路3号','13546577656','ad','121.54610035743','38.893178779642',34,'12345','<p>sfadagdfgdfg</p>',0,'辽宁省大连市沙河口区软件园路3号',3,'3,0',5,'5,21','',0,1,1510285014,1510907536),(849,'safgbfgf','/upload/20171110/bd0b60a5e902c2500e6ba8b5c0d7e38f.jpg','辽宁省大连市沙河口区软件园路3号','13546577656','ad','121.54610035743','38.893178779642',34,'12345','<p>sfadagdfgdfg</p>',0,'辽宁省大连市沙河口区软件园路3号',3,'3,0',5,'5,21','',0,-1,1510285014,1510299052),(850,'safgbfgf','/upload/20171110/bd0b60a5e902c2500e6ba8b5c0d7e38f.jpg','辽宁省大连市沙河口区软件园路3号','13546577656','ad','121.54610035743','38.893178779642',34,'12345','<p>sfadagdfgdfg</p>',0,'辽宁省大连市沙河口区软件园路3号',3,'3,0',5,'5,21','',0,1,1510285014,1510296206),(851,'多撒奥防不胜防','/upload/20171110/18026769c083a53657c0323add6a3b72.jpg','辽宁省大连市沙河口区软件园路3号','13546577656','adf','121.54610035743','38.893178779642',34,'4675','<p>jghdgbvn</p>',0,'辽宁省大连市沙河口区软件园路3号',10,'10,11',5,'5,21','',0,1,1510299341,1510907542);
/*!40000 ALTER TABLE `o2o_bis_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2o_category`
--

DROP TABLE IF EXISTS `o2o_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2o_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2o_category`
--

LOCK TABLES `o2o_category` WRITE;
/*!40000 ALTER TABLE `o2o_category` DISABLE KEYS */;
INSERT INTO `o2o_category` VALUES (1,'美食',0,10,1,1491992020,1492652898),(2,'旅游',0,12,1,1491992054,1510907587),(3,'飞机',2,0,1,1491992107,0),(5,'阅读',0,23,1,1491992493,1510880520),(6,'麻辣烫',1,0,1,1491995365,1491995365),(8,'拉面',1,0,1,1491995777,1491995777),(9,'电影',0,15,1,1492060639,1510880552),(10,'文艺电影',9,6,1,1492060659,1492071287),(11,'汽车',0,9,1,1492075333,1510907593),(12,'宝马',11,0,1,1492075357,1492075357),(13,'文学名著',5,0,1,1492078888,1492078888),(14,'哈利波特',9,0,1,1492079999,1492079999),(15,'休闲',0,3,1,1492777548,1510036817),(16,'娱乐',0,0,1,1492777558,1510907598),(17,'酒店',0,5,1,1492777621,1492777633),(18,'西餐',1,0,1,1492961252,1492961252),(19,'自助烤肉',1,0,1,1492961810,1492961810),(20,'火锅',1,0,1,1492962070,1492962070),(21,'小说',5,0,0,1510023966,1510023966),(22,'教育',5,0,0,1510024333,1510026549),(23,'科学',5,0,0,1510024351,1510024351),(24,'杂志',5,0,0,1510024363,1510024363),(25,'汉庭',17,0,0,1510024546,1510024546),(26,'密室逃脱',16,0,0,1510024588,1510024588);
/*!40000 ALTER TABLE `o2o_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2o_city`
--

DROP TABLE IF EXISTS `o2o_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2o_city` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `uname` varchar(50) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uname` (`uname`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2o_city`
--

LOCK TABLES `o2o_city` WRITE;
/*!40000 ALTER TABLE `o2o_city` DISABLE KEYS */;
INSERT INTO `o2o_city` VALUES (1,'北京','beijing',0,0,0,1,1474013959,0),(2,'朝阳','chaoyang',1,0,0,1,1492132250,0),(3,'江西','jiangxi',0,0,0,1,1492132287,0),(4,'南昌','nanchang',3,1,0,1,1492132318,0),(5,'上饶','shangrao',3,0,0,1,1492132347,0),(6,'抚州','fuzhou',3,0,0,1,1492132369,0),(7,'景德镇','jingdezhen',3,0,0,1,1492132394,0),(8,'河北','hebei',0,0,0,1,1492132500,0),(9,'廊坊','langfang',8,0,0,1,1492132600,0),(10,'辽宁','liaoning',0,0,0,1,0,0),(11,'大连','dalian',10,0,0,1,0,0),(12,'沈阳','shenyang',10,0,0,1,0,0),(13,'鞍山','anshan',10,0,0,1,0,0),(14,'营口','yingkou',10,0,0,1,0,0),(15,'盘锦','panjin',10,0,0,1,0,0),(16,'本溪','benxi',10,0,0,1,0,0),(17,'丹东','dandong',10,0,0,1,0,0),(18,'锦州','jinzhou',10,0,0,1,0,0),(19,'黑龙江','heilongjiang',0,0,0,1,0,0),(20,'哈尔滨','haerbin',19,0,0,1,0,0),(21,'齐齐哈尔','qiqihaer',19,0,0,1,0,0),(22,'大庆','daqing',19,0,0,1,0,0),(23,'牡丹江','mudanjiang',19,0,0,1,0,0),(24,'鸡西','jixi',19,0,0,1,0,0),(25,'鹤岗','hegang',19,0,0,1,0,0),(26,'漠河','mohe',19,0,0,1,0,0),(27,'吉林','jilin',0,0,0,1,0,0),(28,'长春','changchun',27,0,0,1,0,0),(29,'四平','siping',27,0,0,1,0,0),(30,'延边','yanbian',27,0,0,1,0,0),(31,'辽源','liaoyuan',27,0,0,1,0,0),(32,'白城','baicheng',27,0,0,1,0,0);
/*!40000 ALTER TABLE `o2o_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2o_comment`
--

DROP TABLE IF EXISTS `o2o_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2o_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `deal_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0为删除，1 为正常 ',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `comment_class` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0为好评，1为中评，2为差评',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2o_comment`
--

LOCK TABLES `o2o_comment` WRITE;
/*!40000 ALTER TABLE `o2o_comment` DISABLE KEYS */;
INSERT INTO `o2o_comment` VALUES (27,'wangyu',16,'第四次评论',19,1,1494329205,1,1494329205),(26,'wangyu',16,'第三次评论',19,1,1494329190,2,1494329190),(25,'wangyu',16,'第二次评论',19,1,1494329179,1,1494329179),(24,'wangyu',16,'我在测试我的评论',19,1,1494329147,0,1494329147),(28,'wangyu',16,'我在测试铁木真的评论',15,1,1494684824,2,1494684824);
/*!40000 ALTER TABLE `o2o_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2o_coupons`
--

DROP TABLE IF EXISTS `o2o_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2o_coupons` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sn` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `deal_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0:生成未发送给用户 \r\n		1:已经发送给用户 2：用户已经使用 3 禁用',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `deal_count` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sn` (`sn`),
  KEY `user_id` (`user_id`),
  KEY `deal_id` (`deal_id`),
  KEY `create_time` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2o_coupons`
--

LOCK TABLES `o2o_coupons` WRITE;
/*!40000 ALTER TABLE `o2o_coupons` DISABLE KEYS */;
INSERT INTO `o2o_coupons` VALUES (102,'1494127003133162325','50207',16,19,94,2,1494127003,1494127003,1),(103,'1494129026908310540','62209',16,19,95,2,1494129026,1494129026,1),(104,'1494129132231921359','88367',16,19,96,2,1494129132,1494129132,1),(105,'1494129315884357750','64259',16,19,97,2,1494129315,1494129315,1),(106,'1494129415712112751','81903',18,19,98,0,1494129415,1494129415,1),(107,'1494129596451540987','74237',18,19,99,0,1494129596,1494129596,1),(108,'1494129612923431988','55073',18,19,100,1,1494129613,1494129613,1),(109,'1494406228693463802','84587',18,24,107,1,1494406228,1494406228,10),(110,'1494406434695196656','47025',17,24,108,1,1494406434,1494406434,99),(111,'1494410232238701100','12949',17,24,115,1,1494410232,1494410232,15),(112,'1494638511962430779','10821',16,15,116,1,1494638512,1494638512,10);
/*!40000 ALTER TABLE `o2o_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2o_deal`
--

DROP TABLE IF EXISTS `o2o_deal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2o_deal` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `se_category_id` varchar(50) NOT NULL,
  `category_path` varchar(50) NOT NULL DEFAULT '0',
  `bis_id` int(11) NOT NULL DEFAULT '0',
  `location_ids` varchar(100) NOT NULL DEFAULT '',
  `image` varchar(200) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `origin_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `current_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `city_id` int(11) NOT NULL DEFAULT '0',
  `buy_count` int(11) NOT NULL DEFAULT '0',
  `total_count` int(11) NOT NULL DEFAULT '0',
  `coupons_begin_time` int(11) NOT NULL DEFAULT '0',
  `coupons_end_time` int(11) NOT NULL DEFAULT '0',
  `bis_account_id` int(10) NOT NULL DEFAULT '0',
  `xpoint` varchar(20) NOT NULL DEFAULT '',
  `ypoint` varchar(20) NOT NULL DEFAULT '',
  `balance_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `notes` text NOT NULL,
  `listorder` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `city_path` varchar(50) NOT NULL,
  `se_city_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `se_category_id` (`category_path`),
  KEY `city_id` (`city_id`),
  KEY `start_time` (`start_time`),
  KEY `end_time` (`end_time`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2o_deal`
--

LOCK TABLES `o2o_deal` WRITE;
/*!40000 ALTER TABLE `o2o_deal` DISABLE KEYS */;
INSERT INTO `o2o_deal` VALUES (26,'精品酒店',17,'','0',32,'845','/upload/20170712/213137f671eaff15ba91e41d43898d30.jpg','&lt;p&gt;大法师&lt;br/&gt;&lt;/p&gt;',1498874880,1501466880,112.00,110.00,4,0,0,1498874880,1501466880,18,'115.89728003744','28.654426839742',0.00,'&lt;p&gt;sad房&lt;br/&gt;&lt;/p&gt;',0,-1,1499825523,1510541875,'',0),(27,'饼干',17,'','0',32,'845','/upload/20170712/b196c357973994b14885ba90dcc48400.jpg','&lt;p&gt;撒地方&lt;br/&gt;&lt;/p&gt;',1498877520,1501469520,140.00,120.00,4,0,0,1498877520,1501469520,18,'115.89728003744','28.654426839742',0.00,'&lt;p&gt;撒地方&lt;br/&gt;&lt;/p&gt;',0,0,1499828125,1510900768,'',0),(28,'手表',17,'','0',32,'845','/upload/20170712/dbb53a9c30b9468abc51b89a4f38ff43.jpg','&lt;p&gt;沙发&lt;br/&gt;&lt;/p&gt;',1499918640,1501473840,111.00,23.00,4,0,0,1500005100,1501473900,18,'115.89728003744','28.654426839742',0.00,'&lt;p&gt;&amp;nbsp;阿斯蒂芬&lt;br/&gt;&lt;/p&gt;',0,0,1499832498,1510900736,'',0),(29,'nbnfgn',17,'25','17,25',34,'850','/upload/20171113/c3ec644f716cafed6256966e1191c235.jpg','<p>vxcnf</p>',1510732260,1511941860,123.00,234.00,10,23,123,1510905120,1512028320,20,'','',0.00,'<p>sgdfg</p>',0,0,1510559544,1510899597,'1013',13),(30,'mldso',11,'12','11,12',34,'849','/upload/20171113/f074a68999addba8f491f2cdce409fc8.jpg','<p>x</p>',1509698100,1510302900,3.00,1.00,27,6,21,1509698160,1509698160,20,'','',0.00,'<p>n</p>',0,0,1510562183,1510900732,'2729',29),(31,'poiu',1,'18,6','1,18|6',34,'851,849','/upload/20171113/006445a73adbc89eb228ca4e7a539a5b.jpg','<p>z</p>',1509615540,1510220340,3.00,2.00,3,4,12,1509615540,1510220340,20,'','',0.00,'<p>p</p>',0,0,1510565980,1510900728,'34',4),(32,'奶茶',1,'20,18','1,20|18',34,'851,850','/upload/20171117/c21892251342c56c5a86673937f9c3ac.jpg','<p>dsasfsbbb</p>',1509517320,1510122120,28.00,12.00,10,1234,2345,1509603720,1510208520,20,'','',0.00,'<p>是否需要预约: 请于消费前24小时进行预约</p><p>预约逾期保留: 预约位逾期不保留，请准时</p><p>是否可以享受其他优惠: 团购用户暂不享受店内其他优惠</p><p>停车位收费标准: 提供免费停车位，数量40个</p><p>使用规则:&nbsp;</p><p>每张糯米券限1人使用，超出收费标准：每张百度糯米券最多1位成人使用，身高1.3米以上儿童计入人数</p><p>每次消费不限使用糯米券张数</p><p>本单仅限堂食</p><p>其他补充:</p><p>1.3米（不含）以下儿童可享受优惠价130元/位</p><p><br/></p>',0,1,1510899825,1510900723,'1011',11),(33,'鸡汤',1,'19','1,19',34,'848,846','/upload/20171117/c9971cde98b90d5baa94969e6e90c6fc.jpg','<p>ty</p>',1509776640,1510381440,45.00,23.00,10,432,456,1509517440,1510122240,20,'','',0.00,'<p>是否需要预约: 请于消费前24小时进行预约</p><p>预约逾期保留: 预约位逾期不保留，请准时</p><p>是否可以享受其他优惠: 团购用户暂不享受店内其他优惠</p><p>停车位收费标准: 提供免费停车位，数量40个</p><p>使用规则:&nbsp;</p><p>每张糯米券限1人使用，超出收费标准：每张百度糯米券最多1位成人使用，身高1.3米以上儿童计入人数</p><p>每次消费不限使用糯米券张数</p><p>本单仅限堂食</p><p>其他补充:</p><p>1.3米（不含）以下儿童可享受优惠价130元/位</p><p><br/></p>',0,1,1510899911,1510900715,'1011',11),(34,'牛排',1,'19','1,19',34,'849,848','/upload/20171117/16bff3510e2bd368030703da5e93998d.jpg','<p>inll</p>',1510640700,1510727100,876.00,457.00,10,1,5,1510640760,1510727160,20,'','',0.00,'<p>是否需要预约: 请于消费前24小时进行预约</p><p>预约逾期保留: 预约位逾期不保留，请准时</p><p>是否可以享受其他优惠: 团购用户暂不享受店内其他优惠</p><p>停车位收费标准: 提供免费停车位，数量40个</p><p>使用规则:&nbsp;</p><p>每张糯米券限1人使用，超出收费标准：每张百度糯米券最多1位成人使用，身高1.3米以上儿童计入人数</p><p>每次消费不限使用糯米券张数</p><p>本单仅限堂食</p><p>其他补充:</p><p>1.3米（不含）以下儿童可享受优惠价130元/位</p><p><br/></p>',0,1,1510899987,1510900719,'1011',11),(35,'大玩家',1,'6','1,6',34,'851,847','/upload/20171117/b9164f50a85f9fcb34de509629f4ab3e.jpg','<p>mm</p>',1510295220,1510986420,98.00,77.00,10,312,456,1510122420,1511418420,20,'','',0.00,'<p>是否需要预约: 请于消费前24小时进行预约</p><p>预约逾期保留: 预约位逾期不保留，请准时</p><p>是否可以享受其他优惠: 团购用户暂不享受店内其他优惠</p><p>停车位收费标准: 提供免费停车位，数量40个</p><p>使用规则:&nbsp;</p><p>每张糯米券限1人使用，超出收费标准：每张百度糯米券最多1位成人使用，身高1.3米以上儿童计入人数</p><p>每次消费不限使用糯米券张数</p><p>本单仅限堂食</p><p>其他补充:</p><p>1.3米（不含）以下儿童可享受优惠价130元/位</p><p><br/></p>',0,1,1510900057,1510900713,'1011',11),(36,'牛排蘸酱',1,'19','1,19',34,'850,849,846','/upload/20171117/72fdb45b88ccdf0813b282785685fc22.jpg','<p>hj</p>',1511159280,1511936880,765.00,345.00,10,36,65,1511332140,1511850540,20,'','',0.00,'<p>是否需要预约: 请于消费前24小时进行预约</p><p>预约逾期保留: 预约位逾期不保留，请准时</p><p>是否可以享受其他优惠: 团购用户暂不享受店内其他优惠</p><p>停车位收费标准: 提供免费停车位，数量40个</p><p>使用规则:&nbsp;</p><p>每张糯米券限1人使用，超出收费标准：每张百度糯米券最多1位成人使用，身高1.3米以上儿童计入人数</p><p>每次消费不限使用糯米券张数</p><p>本单仅限堂食</p><p>其他补充:</p><p>1.3米（不含）以下儿童可享受优惠价130元/位</p><p><br/></p>',0,1,1510900154,1510900710,'1011',11),(37,'串串',1,'6','1,6',34,'848,847','/upload/20171117/ff0bd7018e21ce845ca833b2adca45c2.jpg','<p>g</p>',1509690540,1510900140,6.00,3.00,10,5643,8765,1510209000,1511245800,20,'','',0.00,'<p>是否需要预约: 请于消费前24小时进行预约</p><p>预约逾期保留: 预约位逾期不保留，请准时</p><p>是否可以享受其他优惠: 团购用户暂不享受店内其他优惠</p><p>停车位收费标准: 提供免费停车位，数量40个</p><p>使用规则:&nbsp;</p><p>每张糯米券限1人使用，超出收费标准：每张百度糯米券最多1位成人使用，身高1.3米以上儿童计入人数</p><p>每次消费不限使用糯米券张数</p><p>本单仅限堂食</p><p>其他补充:</p><p>1.3米（不含）以下儿童可享受优惠价130元/位</p><p><br/></p>',0,1,1510900222,1510900708,'1011',11),(38,'圣亚',1,'20','1,20',34,'851,846','/upload/20171117/e293627b2e25a6b50f00befe8fa8abcb.jpg','<p>lkgd</p>',1510209060,1512023460,785.00,463.00,10,23,98,1510209060,1511332260,20,'','',0.00,'<p>是否需要预约: 请于消费前24小时进行预约</p><p>预约逾期保留: 预约位逾期不保留，请准时</p><p>是否可以享受其他优惠: 团购用户暂不享受店内其他优惠</p><p>停车位收费标准: 提供免费停车位，数量40个</p><p>使用规则:&nbsp;</p><p>每张糯米券限1人使用，超出收费标准：每张百度糯米券最多1位成人使用，身高1.3米以上儿童计入人数</p><p>每次消费不限使用糯米券张数</p><p>本单仅限堂食</p><p>其他补充:</p><p>1.3米（不含）以下儿童可享受优惠价130元/位</p><p><br/></p>',0,1,1510900309,1510900705,'1011',11),(39,'秋林里道斯',1,'','1',34,'851,849,848','/upload/20171117/5ab335d40b8d2fb15c8f31685d43b831.jpg','<p>sdf</p>',1510727520,1511332320,88.00,77.00,10,545,567,1510813920,1511418720,20,'','',0.00,'<p>是否需要预约: 请于消费前24小时进行预约</p><p>预约逾期保留: 预约位逾期不保留，请准时</p><p>是否可以享受其他优惠: 团购用户暂不享受店内其他优惠</p><p>停车位收费标准: 提供免费停车位，数量40个</p><p>使用规则:&nbsp;</p><p>每张糯米券限1人使用，超出收费标准：每张百度糯米券最多1位成人使用，身高1.3米以上儿童计入人数</p><p>每次消费不限使用糯米券张数</p><p>本单仅限堂食</p><p>其他补充:</p><p>1.3米（不含）以下儿童可享受优惠价130元/位</p><p><br/></p>',0,1,1510900476,1510900703,'1011',11),(40,'唱吧',1,'8,6','1,8|6',34,'849,847,846','/upload/20171117/1966f1c5a993fc29291016d9a283764d.jpg','<p>rt</p>',1510468500,1510641300,78.00,66.00,10,20,54,1510727700,1511332500,20,'','',0.00,'<p>是否需要预约: 请于消费前24小时进行预约</p><p>预约逾期保留: 预约位逾期不保留，请准时</p><p>是否可以享受其他优惠: 团购用户暂不享受店内其他优惠</p><p>停车位收费标准: 提供免费停车位，数量40个</p><p>使用规则:&nbsp;</p><p>每张糯米券限1人使用，超出收费标准：每张百度糯米券最多1位成人使用，身高1.3米以上儿童计入人数</p><p>每次消费不限使用糯米券张数</p><p>本单仅限堂食</p><p>其他补充:</p><p>1.3米（不含）以下儿童可享受优惠价130元/位</p><p><br/></p>',0,1,1510900556,1510900701,'1011',11),(41,'蛋糕',1,'19,6','1,19|6',34,'851,850','/upload/20171117/06b275c853fdff6c5809a588aaec8376.jpg','<p>gfgfh</p>',1510122960,1511505360,789.00,565.00,10,55,68,1510209360,1511418960,20,'','',0.00,'<p>是否需要预约: 请于消费前24小时进行预约</p><p>预约逾期保留: 预约位逾期不保留，请准时</p><p>是否可以享受其他优惠: 团购用户暂不享受店内其他优惠</p><p>停车位收费标准: 提供免费停车位，数量40个</p><p>使用规则:&nbsp;</p><p>每张糯米券限1人使用，超出收费标准：每张百度糯米券最多1位成人使用，身高1.3米以上儿童计入人数</p><p>每次消费不限使用糯米券张数</p><p>本单仅限堂食</p><p>其他补充:</p><p>1.3米（不含）以下儿童可享受优惠价130元/位</p><p><br/></p>',0,1,1510900618,1510900698,'1011',11),(42,'宝岛',1,'18,8','1,18|8',34,'847,846','/upload/20171117/3525f107f536cd08b3c5f9591156a495.jpg','<p>h</p>',1509518220,1510123020,897.00,765.00,10,31,34,1509518220,1510123020,20,'','',0.00,'<p>是否需要预约: 请于消费前24小时进行预约</p><p>预约逾期保留: 预约位逾期不保留，请准时</p><p>是否可以享受其他优惠: 团购用户暂不享受店内其他优惠</p><p>停车位收费标准: 提供免费停车位，数量40个</p><p>使用规则:&nbsp;</p><p>每张糯米券限1人使用，超出收费标准：每张百度糯米券最多1位成人使用，身高1.3米以上儿童计入人数</p><p>每次消费不限使用糯米券张数</p><p>本单仅限堂食</p><p>其他补充:</p><p>1.3米（不含）以下儿童可享受优惠价130元/位</p><p><br/></p>',0,1,1510900683,1510900696,'1011',11);
/*!40000 ALTER TABLE `o2o_deal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2o_featured`
--

DROP TABLE IF EXISTS `o2o_featured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2o_featured` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2o_featured`
--

LOCK TABLES `o2o_featured` WRITE;
/*!40000 ALTER TABLE `o2o_featured` DISABLE KEYS */;
INSERT INTO `o2o_featured` VALUES (8,0,'精品火锅','/upload/20170712/05e982cbf20b3651ce00b61a4b5a9de6.png','对对对','地方',0,0,1499824171,1499824171),(9,0,'四川火锅','/upload/20170712/493a089e141edc0d5ae788a2c3439a02.jpg','','',0,0,1499824445,1499824445),(10,1,'饼干','/upload/20170712/c82429d8834efc6402a3b7847cbd81b5.jpg','第三方','撒的',0,-1,1499824575,1510816839),(11,0,'lkiop','/upload/20171116/c47446f212552285db17185921b9f194.jpg','z','z',0,-1,1510816554,1510818014),(12,0,'三只松鼠','/upload/20171116/49e905122b3cf89b283378ed88317e2e.jpg','asd','as',0,1,1510817933,1510890652),(13,0,'niunai','/upload/20171116/9948bc47ba1a5d6a38e56d684db92091.jpg','sad','qwe',0,1,1510817980,1510890648),(14,0,'xiari','/upload/20171116/e7d5589991b057fbceed684915509a2e.jpg','iu','ui',0,1,1510818001,1510890645),(15,1,'reshuiq','/upload/20171116/2fed87cb45d6b8d511ddc9c777f28ca4.jpg','zx','m',0,1,1510819561,1510890654),(16,1,'xiyiy','/upload/20171116/aac0e65452f46b93bf3caea189706443.jpg','h','j',0,1,1510819588,1510890656);
/*!40000 ALTER TABLE `o2o_featured` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2o_order`
--

DROP TABLE IF EXISTS `o2o_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2o_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `trade_id` varchar(100) NOT NULL DEFAULT '',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `deal_id` int(11) NOT NULL DEFAULT '0',
  `description` varchar(100) NOT NULL DEFAULT '',
  `last_ip` varchar(40) NOT NULL DEFAULT '',
  `bis_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `buy_count` int(11) NOT NULL DEFAULT '0',
  `total_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `pay_method` tinyint(4) NOT NULL DEFAULT '0',
  `device_type` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `trade_id` (`trade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2o_order`
--

LOCK TABLES `o2o_order` WRITE;
/*!40000 ALTER TABLE `o2o_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `o2o_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o2o_user`
--

DROP TABLE IF EXISTS `o2o_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o2o_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `code` varchar(10) NOT NULL DEFAULT '',
  `last_login_ip` varchar(20) NOT NULL DEFAULT '',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0',
  `email` varchar(30) NOT NULL DEFAULT '',
  `mobile` varchar(20) NOT NULL DEFAULT '',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o2o_user`
--

LOCK TABLES `o2o_user` WRITE;
/*!40000 ALTER TABLE `o2o_user` DISABLE KEYS */;
INSERT INTO `o2o_user` VALUES (2,'wangyu2','09d03004b3964d2bef78920148b44373','3128','',0,'1259865838@qq.com','15075652703',0,1,1492676268,1492676268),(3,'wangyu3','3001c9168bb9978b59ff55f5143875e8','9211','',0,'12598658381@qq.com','15075652702',0,1,1492676374,1492676374),(5,'wangyu4','ca88f4dd12757a7ac290ca8cf8f48840','4578','',0,'9699587@qq.com','15075652701',0,1,1492676462,1492676462),(10,'wangyudd','c508a86a73da590e9a9429d2ddb6c4f4','5097','',0,'585888@qq.com','15075652700',0,1,1492683421,1492683421),(11,'wangyudee','fce971560ed71172568bdda3f97c58c9','7587','',0,'5871e@qq.com','15075652710',0,1,1492684773,1492684773),(14,'sdfser','1c92213e27caad744a861481a081d4af','1265','',0,'5fgf8e@qq.com','15075652705',0,1,1492684997,1494518525),(15,'deee','02a8239687c6d3be8ba22fa09cd00cdc','6212','',0,'efgd@qq.com','15075652711',0,-1,1492685112,1494517510),(16,'wangyu','c08b9a1e323b8d76f2273898d41dbf74','6463','127.0.0.1',1494899308,'578464694@qq.com','15075652788',0,1,1492758321,1494899308),(17,'qianxukang','80669370dfd641f1841899122ac4f882','8976','127.0.0.1',1494406277,'565238711@qq.com','15075652799',0,1,1494079875,1494406276),(18,'qianxukang2','f2988c9c6aab598b6f2c89e999c235ae','2144','127.0.0.1',1494406172,'1229594507@qq.com','15175652703',0,1,1494080377,1494406172),(19,'geroge','11e826f922ba3feaad3958899339ed35','2794','',0,'2351460538@qq.com','',0,1,1499756504,1499756504),(21,'geroge1','813f9b97b91e1ca467efdde3bb47bb98','8560','',0,'12351460538@qq.com','',0,1,1499756853,1499756853),(22,'george','4ba6b9c925b6d051ad29c11898249976','5374','',0,'123456@qq.com','',0,1,1499759940,1499759940),(23,'adi','7f865a1ab794c3cb3f64a20d0df9344c','8265','',0,'213@qq.com','',0,0,1510739945,1510739945);
/*!40000 ALTER TABLE `o2o_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-05 22:05:21
