/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssma4m74
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssma4m74` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssma4m74`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616220173883 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-20 10:07:58',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-20 10:07:58',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-20 10:07:58',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-20 10:07:58',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-20 10:07:58',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-20 10:07:58',6,'宇宙银河系月球1号','月某','13823888886','是'),(1616206897052,'2021-03-20 10:21:36',41,'时空网咖(百花路店)','测试','13666666666','是'),(1616207752449,'2021-03-20 10:35:52',1616207574801,'云顶音乐餐吧(梅州店)','张三','12300000000','是'),(1616220173882,'2021-03-20 14:02:53',1616220028099,'江北梅州市梅江区人民政府东北(梅州大道)','11','12345678900','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'waimaixinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616220212635 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616207786707 DEFAULT CHARSET=utf8 COMMENT='客服中心';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (61,'2021-03-20 10:07:58',1,1,'提问1','回复1',1),(62,'2021-03-20 10:07:58',2,2,'提问2','回复2',2),(63,'2021-03-20 10:07:58',3,3,'提问3','回复3',3),(64,'2021-03-20 10:07:58',4,4,'提问4','回复4',4),(65,'2021-03-20 10:07:58',5,5,'提问5','回复5',5),(66,'2021-03-20 10:07:58',6,6,'提问6','回复6',6),(1616207786706,'2021-03-20 10:36:26',1616207574801,NULL,'cs',NULL,1);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssma4m74/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssma4m74/upload/1616207398182.jpg'),(3,'picture3','http://localhost:8080/ssma4m74/upload/picture3.jpg');

/*Table structure for table `discussshanghuxinxi` */

DROP TABLE IF EXISTS `discussshanghuxinxi`;

CREATE TABLE `discussshanghuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616207613069 DEFAULT CHARSET=utf8 COMMENT='商户信息评论表';

/*Data for the table `discussshanghuxinxi` */

insert  into `discussshanghuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-03-20 10:07:58',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-03-20 10:07:58',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-03-20 10:07:58',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-03-20 10:07:58',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-03-20 10:07:58',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-03-20 10:07:58',6,6,'用户名6','评论内容6','回复内容6'),(1616206742536,'2021-03-20 10:19:02',1616206712343,41,'1','测试','测试'),(1616207613068,'2021-03-20 10:33:32',1616206712343,1616207574801,'123','测试','');

/*Table structure for table `discusswaimaixinxi` */

DROP TABLE IF EXISTS `discusswaimaixinxi`;

CREATE TABLE `discusswaimaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616207650719 DEFAULT CHARSET=utf8 COMMENT='外卖信息评论表';

/*Data for the table `discusswaimaixinxi` */

insert  into `discusswaimaixinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-03-20 10:07:58',1,1,'用户名1','评论内容1','回复内容1'),(132,'2021-03-20 10:07:58',2,2,'用户名2','评论内容2','回复内容2'),(133,'2021-03-20 10:07:58',3,3,'用户名3','评论内容3','回复内容3'),(134,'2021-03-20 10:07:58',4,4,'用户名4','评论内容4','回复内容4'),(135,'2021-03-20 10:07:58',5,5,'用户名5','评论内容5','回复内容5'),(136,'2021-03-20 10:07:58',6,6,'用户名6','评论内容6','回复内容6'),(1616206847996,'2021-03-20 10:20:47',1616206822309,41,'1','测试','测试'),(1616207650382,'2021-03-20 10:34:09',1616206822309,1616207574801,'123','测试',''),(1616207650718,'2021-03-20 10:34:10',1616206822309,1616207574801,'123','测试','');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='外卖资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-03-20 10:07:58','标题1','简介1','http://localhost:8080/ssma4m74/upload/news_picture1.jpg','内容1'),(112,'2021-03-20 10:07:58','标题2','简介2','http://localhost:8080/ssma4m74/upload/news_picture2.jpg','内容2'),(113,'2021-03-20 10:07:58','标题3','简介3','http://localhost:8080/ssma4m74/upload/news_picture3.jpg','内容3'),(114,'2021-03-20 10:07:58','标题4','简介4','http://localhost:8080/ssma4m74/upload/news_picture4.jpg','内容4'),(115,'2021-03-20 10:07:58','标题5','简介5','http://localhost:8080/ssma4m74/upload/news_picture5.jpg','内容5'),(116,'2021-03-20 10:07:58','标题6','简介6','http://localhost:8080/ssma4m74/upload/news_picture6.jpg','内容6');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'waimaixinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1616220226827 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1616206918061,'2021-03-20 10:21:57','202132010215727489595','waimaixinxi',41,1616206822309,'测试','http://localhost:8080/ssma4m74/upload/1616206814178.jpg',1,111,111,111,111,1,'已完成','时空网咖(百花路店)'),(1616207759615,'2021-03-20 10:35:59','202132010355937950982','waimaixinxi',1616207574801,1616206822309,'测试','http://localhost:8080/ssma4m74/upload/1616206814178.jpg',4,111,111,444,444,1,'已取消','云顶音乐餐吧(梅州店)'),(1616220226826,'2021-03-20 14:03:45','20213201434584251689','waimaixinxi',1616220028099,1616206822309,'测试','http://localhost:8080/ssma4m74/upload/1616206814178.jpg',1,111,111,111,111,1,'已支付','江北梅州市梅江区人民政府东北(梅州大道)');

/*Table structure for table `shanghuxinxi` */

DROP TABLE IF EXISTS `shanghuxinxi`;

CREATE TABLE `shanghuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiaxingming` varchar(200) DEFAULT NULL COMMENT '商家姓名',
  `dianpumingcheng` varchar(200) DEFAULT NULL COMMENT '店铺名称',
  `mendianzhaopian` varchar(200) DEFAULT NULL COMMENT '门店照片',
  `peisongshijian` varchar(200) DEFAULT NULL COMMENT '配送时间',
  `dianpudizhi` varchar(200) DEFAULT NULL COMMENT '店铺地址',
  `dianpuxiangqing` longtext COMMENT '店铺详情',
  `peisongjiage` int(11) DEFAULT NULL COMMENT '配送价格',
  `qisongjiage` int(11) DEFAULT NULL COMMENT '起送价格',
  `yueshoushuliang` varchar(200) DEFAULT NULL COMMENT '月售数量',
  `kaiyeshijian` datetime DEFAULT NULL COMMENT '开业时间',
  `xiuyeshijian` datetime DEFAULT NULL COMMENT '休业时间',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616206712344 DEFAULT CHARSET=utf8 COMMENT='商户信息';

/*Data for the table `shanghuxinxi` */

insert  into `shanghuxinxi`(`id`,`addtime`,`shangjiazhanghao`,`shangjiaxingming`,`dianpumingcheng`,`mendianzhaopian`,`peisongshijian`,`dianpudizhi`,`dianpuxiangqing`,`peisongjiage`,`qisongjiage`,`yueshoushuliang`,`kaiyeshijian`,`xiuyeshijian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (21,'2021-03-20 10:07:58','商家账号1','商家姓名1','店铺名称1','http://localhost:8080/ssma4m74/upload/shanghuxinxi_mendianzhaopian1.jpg','配送时间1','店铺地址1','店铺详情1',1,1,'月售数量1','2021-03-20 10:07:58','2021-03-20 10:07:58',1,1,'2021-03-20 10:07:58',1),(22,'2021-03-20 10:07:58','商家账号2','商家姓名2','店铺名称2','http://localhost:8080/ssma4m74/upload/shanghuxinxi_mendianzhaopian2.jpg','配送时间2','店铺地址2','店铺详情2',2,2,'月售数量2','2021-03-20 10:07:58','2021-03-20 10:07:58',2,2,'2021-03-20 10:07:58',2),(23,'2021-03-20 10:07:58','商家账号3','商家姓名3','店铺名称3','http://localhost:8080/ssma4m74/upload/shanghuxinxi_mendianzhaopian3.jpg','配送时间3','店铺地址3','店铺详情3',3,3,'月售数量3','2021-03-20 10:07:58','2021-03-20 10:07:58',3,3,'2021-03-20 10:07:58',3),(24,'2021-03-20 10:07:58','商家账号4','商家姓名4','店铺名称4','http://localhost:8080/ssma4m74/upload/shanghuxinxi_mendianzhaopian4.jpg','配送时间4','店铺地址4','店铺详情4',4,4,'月售数量4','2021-03-20 10:07:58','2021-03-20 10:07:58',4,4,'2021-03-20 10:07:58',4),(25,'2021-03-20 10:07:58','商家账号5','商家姓名5','店铺名称5','http://localhost:8080/ssma4m74/upload/shanghuxinxi_mendianzhaopian5.jpg','配送时间5','店铺地址5','店铺详情5',5,5,'月售数量5','2021-03-20 10:07:58','2021-03-20 10:07:58',5,5,'2021-03-20 10:07:58',5),(26,'2021-03-20 10:07:58','商家账号6','商家姓名6','店铺名称6','http://localhost:8080/ssma4m74/upload/shanghuxinxi_mendianzhaopian6.jpg','配送时间6','店铺地址6','店铺详情6',6,6,'月售数量6','2021-03-20 10:07:58','2021-03-20 10:07:58',6,6,'2021-03-20 14:05:53',8),(1616206712343,'2021-03-20 10:18:32','135','李四','测试','http://localhost:8080/ssma4m74/upload/1616206721791.jpg','150','测试','<p>可输入文字，插入图片和视频</p><p><img style=\"width:100%;\" src=\"http://localhost:8080/ssma4m74/upload/1616206711322.jpg\"></p>',15,15,'110','2021-03-20 10:18:16','2021-03-20 10:18:20',1,1,'2021-03-20 14:02:18',10);

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiaxingming` varchar(200) NOT NULL COMMENT '商家姓名',
  `dianpumingcheng` varchar(200) DEFAULT NULL COMMENT '店铺名称',
  `shangjiaxingbie` varchar(200) DEFAULT NULL COMMENT '商家性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shangjiayouxiang` varchar(200) DEFAULT NULL COMMENT '商家邮箱',
  `dianpudizhi` varchar(200) DEFAULT NULL COMMENT '店铺地址',
  `shangjiazhaopian` varchar(200) DEFAULT NULL COMMENT '商家照片',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiazhanghao` (`shangjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616206662357 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiaxingming`,`dianpumingcheng`,`shangjiaxingbie`,`lianxidianhua`,`shangjiayouxiang`,`dianpudizhi`,`shangjiazhaopian`,`clicknum`,`money`) values (51,'2021-03-20 10:07:58','商家1','123456','商家姓名1','店铺名称1','男','13823888881','773890001@qq.com','店铺地址1','http://localhost:8080/ssma4m74/upload/shangjia_shangjiazhaopian1.jpg',1,100),(52,'2021-03-20 10:07:58','商家2','123456','商家姓名2','店铺名称2','男','13823888882','773890002@qq.com','店铺地址2','http://localhost:8080/ssma4m74/upload/shangjia_shangjiazhaopian2.jpg',2,100),(53,'2021-03-20 10:07:58','商家3','123456','商家姓名3','店铺名称3','男','13823888883','773890003@qq.com','店铺地址3','http://localhost:8080/ssma4m74/upload/shangjia_shangjiazhaopian3.jpg',3,100),(54,'2021-03-20 10:07:58','商家4','123456','商家姓名4','店铺名称4','男','13823888884','773890004@qq.com','店铺地址4','http://localhost:8080/ssma4m74/upload/shangjia_shangjiazhaopian4.jpg',4,100),(55,'2021-03-20 10:07:58','商家5','123456','商家姓名5','店铺名称5','男','13823888885','773890005@qq.com','店铺地址5','http://localhost:8080/ssma4m74/upload/shangjia_shangjiazhaopian5.jpg',5,100),(56,'2021-03-20 10:07:58','商家6','123456','商家姓名6','店铺名称6','男','13823888886','773890006@qq.com','店铺地址6','http://localhost:8080/ssma4m74/upload/shangjia_shangjiazhaopian6.jpg',6,100),(1616206662356,'2021-03-20 10:17:42','135','135','李四','测试','男','13500000000','135@qq.com','测试','http://localhost:8080/ssma4m74/upload/1616206679991.jpg',0,0);

/*Table structure for table `shipinfenlei` */

DROP TABLE IF EXISTS `shipinfenlei`;

CREATE TABLE `shipinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616206955260 DEFAULT CHARSET=utf8 COMMENT='食品分类';

/*Data for the table `shipinfenlei` */

insert  into `shipinfenlei`(`id`,`addtime`,`fenlei`) values (11,'2021-03-20 10:07:58','分类1'),(12,'2021-03-20 10:07:58','分类2'),(13,'2021-03-20 10:07:58','分类3'),(14,'2021-03-20 10:07:58','分类4'),(16,'2021-03-20 10:07:58','米粉'),(1616206955259,'2021-03-20 10:22:34','面');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616207659480 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1616207627466,'2021-03-20 10:33:47',1616207574801,1616206712343,'shanghuxinxi','李四','http://localhost:8080/ssma4m74/upload/1616206721791.jpg'),(1616207659479,'2021-03-20 10:34:18',1616207574801,1616206822309,'waimaixinxi','测试','http://localhost:8080/ssma4m74/upload/1616206814178.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','jh8u5ix7qbfoi6u8ceipkyzurn4aa2g1','2021-03-20 10:16:25','2021-03-20 11:27:09'),(2,41,'1','yonghu','用户','6029z2xmp41f3xuyl0iwqli7vqrisife','2021-03-20 10:17:03','2021-03-20 11:36:49'),(3,1616206662356,'135','shangjia','商家','ahpnwlhw65dxxv89b0zlk402t2mvpisk','2021-03-20 10:17:47','2021-03-20 11:23:32'),(4,1616207574801,'123','yonghu','用户','ss3wghxrupvea4eux1mww9zvw3apvy6r','2021-03-20 10:33:01','2021-03-20 11:33:01'),(5,1616220028099,'11','yonghu','用户','ahvn09etemplrdi9l77wb6aeztluuk82','2021-03-20 14:00:40','2021-03-20 15:05:52'),(6,56,'商家6','shangjia','商家','f04z7pruo37fyqi6roljv8p16d0qs094','2021-03-20 14:05:23','2021-03-20 15:05:24');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-20 10:07:58');

/*Table structure for table `waimaixinxi` */

DROP TABLE IF EXISTS `waimaixinxi`;

CREATE TABLE `waimaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiaxingming` varchar(200) DEFAULT NULL COMMENT '商家姓名',
  `dianpumingcheng` varchar(200) DEFAULT NULL COMMENT '店铺名称',
  `waimaimingcheng` varchar(200) DEFAULT NULL COMMENT '外卖名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `waimaifengmian` varchar(200) DEFAULT NULL COMMENT '外卖封面',
  `waimaifenliang` varchar(200) DEFAULT NULL COMMENT '外卖分量',
  `waimaizhuliao` longtext COMMENT '外卖主料',
  `waimaixiangqing` longtext COMMENT '外卖详情',
  `yueshoushuliang` varchar(200) DEFAULT NULL COMMENT '月售数量',
  `peisongjiage` int(11) DEFAULT NULL COMMENT '配送价格',
  `qisongjiage` int(11) DEFAULT NULL COMMENT '起送价格',
  `peisongshijian` varchar(200) NOT NULL COMMENT '配送时间',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616206822310 DEFAULT CHARSET=utf8 COMMENT='外卖信息';

/*Data for the table `waimaixinxi` */

insert  into `waimaixinxi`(`id`,`addtime`,`shangjiazhanghao`,`shangjiaxingming`,`dianpumingcheng`,`waimaimingcheng`,`fenlei`,`waimaifengmian`,`waimaifenliang`,`waimaizhuliao`,`waimaixiangqing`,`yueshoushuliang`,`peisongjiage`,`qisongjiage`,`peisongshijian`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (31,'2021-03-20 10:07:58','商家账号1','商家姓名1','店铺名称1','外卖名称1','分类1','http://localhost:8080/ssma4m74/upload/waimaixinxi_waimaifengmian1.jpg','外卖分量1','外卖主料1','外卖详情1','月售数量1',1,1,'配送时间1',1,1,'2021-03-20 10:07:58',1,99.9),(32,'2021-03-20 10:07:58','商家账号2','商家姓名2','店铺名称2','外卖名称2','分类2','http://localhost:8080/ssma4m74/upload/waimaixinxi_waimaifengmian2.jpg','外卖分量2','外卖主料2','外卖详情2','月售数量2',2,2,'配送时间2',2,2,'2021-03-20 10:07:58',2,99.9),(33,'2021-03-20 10:07:58','商家账号3','商家姓名3','店铺名称3','外卖名称3','分类3','http://localhost:8080/ssma4m74/upload/waimaixinxi_waimaifengmian3.jpg','外卖分量3','外卖主料3','外卖详情3','月售数量3',3,3,'配送时间3',3,3,'2021-03-20 10:07:58',3,99.9),(34,'2021-03-20 10:07:58','商家账号4','商家姓名4','店铺名称4','外卖名称4','分类4','http://localhost:8080/ssma4m74/upload/waimaixinxi_waimaifengmian4.jpg','外卖分量4','外卖主料4','外卖详情4','月售数量4',4,4,'配送时间4',4,4,'2021-03-20 10:07:58',4,99.9),(35,'2021-03-20 10:07:58','商家账号5','商家姓名5','店铺名称5','外卖名称5','分类5','http://localhost:8080/ssma4m74/upload/waimaixinxi_waimaifengmian5.jpg','外卖分量5','外卖主料5','外卖详情5','月售数量5',5,5,'配送时间5',5,5,'2021-03-20 10:07:58',5,99.9),(36,'2021-03-20 10:07:58','商家账号6','商家姓名6','店铺名称6','外卖名称6','分类6','http://localhost:8080/ssma4m74/upload/waimaixinxi_waimaifengmian6.jpg','外卖分量6','外卖主料6','外卖详情6','月售数量6',6,6,'配送时间6',6,6,'2021-03-20 10:07:58',6,99.9),(1616206822309,'2021-03-20 10:20:21','135','李四','测试','测试','分类5','http://localhost:8080/ssma4m74/upload/1616206814178.jpg','150','测试','测试','110',15,15,'15',1,1,'2021-03-20 14:07:37',24,111);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616220028100 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`dizhi`,`zhaopian`,`money`) values (41,'2021-03-20 10:07:58','1','1','姓名1','女',1,'13823888881','773890001@qq.com','地址1','http://localhost:8080/ssma4m74/upload/yonghu_zhaopian1.jpg',55544),(42,'2021-03-20 10:07:58','用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','地址2','http://localhost:8080/ssma4m74/upload/yonghu_zhaopian2.jpg',100),(43,'2021-03-20 10:07:58','用户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','地址3','http://localhost:8080/ssma4m74/upload/yonghu_zhaopian3.jpg',100),(44,'2021-03-20 10:07:58','用户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','地址4','http://localhost:8080/ssma4m74/upload/yonghu_zhaopian4.jpg',100),(45,'2021-03-20 10:07:58','用户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','地址5','http://localhost:8080/ssma4m74/upload/yonghu_zhaopian5.jpg',100),(46,'2021-03-20 10:07:58','用户6','123456','姓名6','男',6,'13823888886','773890006@qq.com','地址6','http://localhost:8080/ssma4m74/upload/yonghu_zhaopian6.jpg',100),(1616207574801,'2021-03-20 10:32:54','123','123','张三','男',18,'12300000000','123@qq.com','测试','http://localhost:8080/ssma4m74/upload/1616207682033.jpg',500000),(1616220028099,'2021-03-20 14:00:28','11','11','111','男',1,'11111111111','11@qq.com','111',NULL,11000);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
