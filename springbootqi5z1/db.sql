/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootqi5z1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootqi5z1` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootqi5z1`;

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
) ENGINE=InnoDB AUTO_INCREMENT=1619347031190 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-25 18:28:31',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-04-25 18:28:31',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-04-25 18:28:31',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-04-25 18:28:31',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-04-25 18:28:31',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-04-25 18:28:31',6,'宇宙银河系月球1号','月某','13823888886','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1619347031189,'2021-04-25 18:37:10',1619346981043,'广东省梅州市梅江区江南街道作新小学','陈一','12312312312','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619347246074 DEFAULT CHARSET=utf8 COMMENT='购物车表';

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
) ENGINE=InnoDB AUTO_INCREMENT=1619347198496 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (51,'2021-04-25 18:28:31',1,1,'提问1','回复1',1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (52,'2021-04-25 18:28:31',2,2,'提问2','回复2',2);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (53,'2021-04-25 18:28:31',3,3,'提问3','回复3',3);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (54,'2021-04-25 18:28:31',4,4,'提问4','回复4',4);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (55,'2021-04-25 18:28:31',5,5,'提问5','回复5',5);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (56,'2021-04-25 18:28:31',6,6,'提问6','回复6',6);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1619347146028,'2021-04-25 18:39:05',1619346981043,NULL,'请问现在下单什么时候发货',NULL,0);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1619347198495,'2021-04-25 18:39:58',1619346981043,1,NULL,'明天',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootqi5z1/upload/1619346920033.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbootqi5z1/upload/1619346927760.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbootqi5z1/upload/1619346935111.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619347235038 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-04-25 18:28:31',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (112,'2021-04-25 18:28:31',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (113,'2021-04-25 18:28:31',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (114,'2021-04-25 18:28:31',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (115,'2021-04-25 18:28:31',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (116,'2021-04-25 18:28:31',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1619347235037,'2021-04-25 18:40:34',1619346874913,1619346981043,'1','商品不错','111');

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
) ENGINE=InnoDB AUTO_INCREMENT=1619346909473 DEFAULT CHARSET=utf8 COMMENT='商品资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (101,'2021-04-25 18:28:31','标题1','简介1','http://localhost:8080/springbootqi5z1/upload/1619346723914.jpg','<p>内容1</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (102,'2021-04-25 18:28:31','标题2','简介2','http://localhost:8080/springbootqi5z1/upload/1619346731763.jpg','<p>内容2</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (103,'2021-04-25 18:28:31','标题3','简介3','http://localhost:8080/springbootqi5z1/upload/1619346739259.jpg','<p>内容3</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (104,'2021-04-25 18:28:31','标题4','简介4','http://localhost:8080/springbootqi5z1/upload/1619346746992.jpg','<p>内容4</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (105,'2021-04-25 18:28:31','标题5','简介5','http://localhost:8080/springbootqi5z1/upload/1619346754803.jpg','<p>内容5</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (106,'2021-04-25 18:28:31','标题6','简介6','http://localhost:8080/springbootqi5z1/upload/1619346762664.jpg','<p>内容6</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1619346909472,'2021-04-25 18:35:09','宠物用品优惠资讯','宠物用品优惠','http://localhost:8080/springbootqi5z1/upload/1619346887432.jpg','<p>全场商品参与618优惠活动，具体详见商品详情页</p><p><img src=\"http://localhost:8080/springbootqi5z1/upload/1619346908150.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
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
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1619347252940 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619347155801,'2021-04-25 18:39:15','202142518391424299856','shangpinxinxi',1619346981043,1619346874913,'皇家K36幼猫粮','http://localhost:8080/springbootqi5z1/upload/1619346855314.jpg',3,148,148,444,444,1,'已完成','广东省梅州市梅江区江南街道作新小学','12312312312','陈一');
insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619347252939,'2021-04-25 18:40:52','202142518405112940205','shangpinxinxi',1619346981043,43,'商品名称3','http://localhost:8080/springbootqi5z1/upload/1619346667804.jpg',2,99.9,99.9,199.8,199.8,1,'已支付','广东省梅州市梅江区江南街道作新小学','12312312312','陈一');

/*Table structure for table `pinpai` */

DROP TABLE IF EXISTS `pinpai`;

CREATE TABLE `pinpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pinpai` varchar(200) NOT NULL COMMENT '品牌',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pinpai` (`pinpai`)
) ENGINE=InnoDB AUTO_INCREMENT=1619346838819 DEFAULT CHARSET=utf8 COMMENT='品牌';

/*Data for the table `pinpai` */

insert  into `pinpai`(`id`,`addtime`,`pinpai`) values (31,'2021-04-25 18:28:31','品牌1');
insert  into `pinpai`(`id`,`addtime`,`pinpai`) values (32,'2021-04-25 18:28:31','品牌2');
insert  into `pinpai`(`id`,`addtime`,`pinpai`) values (33,'2021-04-25 18:28:31','品牌3');
insert  into `pinpai`(`id`,`addtime`,`pinpai`) values (34,'2021-04-25 18:28:31','品牌4');
insert  into `pinpai`(`id`,`addtime`,`pinpai`) values (35,'2021-04-25 18:28:31','品牌5');
insert  into `pinpai`(`id`,`addtime`,`pinpai`) values (36,'2021-04-25 18:28:31','品牌6');
insert  into `pinpai`(`id`,`addtime`,`pinpai`) values (1619346838818,'2021-04-25 18:33:58','皇家');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1619346832140 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (21,'2021-04-25 18:28:31','宠物粮食');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (22,'2021-04-25 18:28:31','清洁用品');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (23,'2021-04-25 18:28:31','宠物服饰');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (24,'2021-04-25 18:28:31','宠物玩具');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (25,'2021-04-25 18:28:31','营养保健');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (26,'2021-04-25 18:28:31','宠物药品');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (1619346832139,'2021-04-25 18:33:51','宠物零食');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `shiyongchongwu` varchar(200) DEFAULT NULL COMMENT '适用宠物',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `yuexiaoliang` int(11) DEFAULT NULL COMMENT '月销量',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619346874914 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`shiyongchongwu`,`pinpai`,`guige`,`yuexiaoliang`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (41,'2021-04-25 18:28:31','商品名称1','宠物服饰','http://localhost:8080/springbootqi5z1/upload/1619346648236.jpg','宠物狗','品牌1','规格1',1,'<p>商品详情1</p>','2021-04-25 18:30:42',2,99.9,1,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`shiyongchongwu`,`pinpai`,`guige`,`yuexiaoliang`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (42,'2021-04-25 18:28:31','商品名称2','宠物玩具','http://localhost:8080/springbootqi5z1/upload/1619346657193.jpg','宠物狗','品牌2','规格2',2,'<p>商品详情2</p>','2021-04-25 18:32:47',5,99.9,2,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`shiyongchongwu`,`pinpai`,`guige`,`yuexiaoliang`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (43,'2021-04-25 18:28:31','商品名称3','宠物粮食','http://localhost:8080/springbootqi5z1/upload/1619346667804.jpg','宠物狗','品牌3','规格3',3,'<p>商品详情3</p>','2021-04-25 18:41:01',13,99.9,6,0);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`shiyongchongwu`,`pinpai`,`guige`,`yuexiaoliang`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (44,'2021-04-25 18:28:31','商品名称4','宠物药品','http://localhost:8080/springbootqi5z1/upload/1619346688796.jpg','宠物狗','品牌4','规格4',4,'<p>商品详情4</p>','2021-04-25 18:31:11',5,99.9,4,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`shiyongchongwu`,`pinpai`,`guige`,`yuexiaoliang`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (45,'2021-04-25 18:28:31','商品名称5','清洁用品','http://localhost:8080/springbootqi5z1/upload/1619346704387.jpg','宠物狗','品牌5','规格5',5,'<p>商品详情5</p>','2021-04-25 18:37:26',12,99.9,5,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`shiyongchongwu`,`pinpai`,`guige`,`yuexiaoliang`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (46,'2021-04-25 18:28:31','商品名称6','营养保健','http://localhost:8080/springbootqi5z1/upload/1619346715555.jpg','宠物狗','品牌6','规格6',6,'<p>商品详情6</p>','2021-04-25 18:31:48',7,99.9,6,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`shiyongchongwu`,`pinpai`,`guige`,`yuexiaoliang`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (1619346874913,'2021-04-25 18:34:34','皇家K36幼猫粮','宠物粮食','http://localhost:8080/springbootqi5z1/upload/1619346855314.jpg','宠物猫','皇家','2kg',200,'<p>商品介绍</p><p><img src=\"http://localhost:8080/springbootqi5z1/upload/1619346873227.jpg\"></p>','2021-04-25 18:40:37',10,148,5,47);

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
) ENGINE=InnoDB AUTO_INCREMENT=1619347122998 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619347112873,'2021-04-25 18:38:32',1619346981043,1619346874913,'shangpinxinxi','皇家K36幼猫粮','http://localhost:8080/springbootqi5z1/upload/1619346855314.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','u20o7t09tbqkmbqo4pe3h2icv6rgqvlp','2021-04-25 18:29:52','2021-04-25 19:41:27');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1619346981043,'1','yonghu','用户','d5mrj42iyptsv2rhb24x21vd0xt2fvab','2021-04-25 18:36:28','2021-04-25 19:40:13');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-25 18:28:31');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1619346981044 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (11,'2021-04-25 18:28:31','用户1','123456','姓名1','http://localhost:8080/springbootqi5z1/upload/yonghu_touxiang1.jpg','男','13823888881',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (12,'2021-04-25 18:28:31','用户2','123456','姓名2','http://localhost:8080/springbootqi5z1/upload/yonghu_touxiang2.jpg','男','13823888882',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (13,'2021-04-25 18:28:31','用户3','123456','姓名3','http://localhost:8080/springbootqi5z1/upload/yonghu_touxiang3.jpg','男','13823888883',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (14,'2021-04-25 18:28:31','用户4','123456','姓名4','http://localhost:8080/springbootqi5z1/upload/yonghu_touxiang4.jpg','男','13823888884',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (15,'2021-04-25 18:28:31','用户5','123456','姓名5','http://localhost:8080/springbootqi5z1/upload/yonghu_touxiang5.jpg','男','13823888885',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (16,'2021-04-25 18:28:31','用户6','123456','姓名6','http://localhost:8080/springbootqi5z1/upload/yonghu_touxiang6.jpg','男','13823888886',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (1619346981043,'2021-04-25 18:36:21','1','1','陈一','http://localhost:8080/springbootqi5z1/upload/1619347005352.jpg','女','12312312312',1356.2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
