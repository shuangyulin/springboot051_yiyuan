/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot3v5bn
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot3v5bn` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot3v5bn`;

/*Table structure for table `bingchuang` */

DROP TABLE IF EXISTS `bingchuang`;

CREATE TABLE `bingchuang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `suoshukeshi` varchar(200) DEFAULT NULL COMMENT '所属科室',
  `bingchuangleixing` varchar(200) DEFAULT NULL COMMENT '病床类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `bingchuanghao` varchar(200) DEFAULT NULL COMMENT '病床号',
  `shiyongzhuangtai` varchar(200) DEFAULT NULL COMMENT '使用状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618470967311 DEFAULT CHARSET=utf8 COMMENT='病床';

/*Data for the table `bingchuang` */

insert  into `bingchuang`(`id`,`addtime`,`suoshukeshi`,`bingchuangleixing`,`tupian`,`bingchuanghao`,`shiyongzhuangtai`) values (31,'2021-04-15 15:11:10','所属科室1','病床类型1','http://localhost:8080/springboot3v5bn/upload/bingchuang_tupian1.jpg','病床号1','空闲'),(32,'2021-04-15 15:11:10','所属科室2','病床类型2','http://localhost:8080/springboot3v5bn/upload/bingchuang_tupian2.jpg','病床号2','空闲'),(33,'2021-04-15 15:11:10','所属科室3','病床类型3','http://localhost:8080/springboot3v5bn/upload/bingchuang_tupian3.jpg','病床号3','空闲'),(34,'2021-04-15 15:11:10','所属科室4','病床类型4','http://localhost:8080/springboot3v5bn/upload/bingchuang_tupian4.jpg','病床号4','空闲'),(35,'2021-04-15 15:11:10','所属科室5','病床类型5','http://localhost:8080/springboot3v5bn/upload/bingchuang_tupian5.jpg','病床号5','空闲'),(36,'2021-04-15 15:11:10','所属科室6','病床类型6','http://localhost:8080/springboot3v5bn/upload/bingchuang_tupian6.jpg','病床号6','空闲');

/*Table structure for table `bingchuangleibie` */

DROP TABLE IF EXISTS `bingchuangleibie`;

CREATE TABLE `bingchuangleibie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bingchuangleibie` varchar(200) DEFAULT NULL COMMENT '病床类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618471306953 DEFAULT CHARSET=utf8 COMMENT='病床类别';

/*Data for the table `bingchuangleibie` */

insert  into `bingchuangleibie`(`id`,`addtime`,`bingchuangleibie`) values (51,'2021-04-15 15:11:10','病床类别1'),(53,'2021-04-15 15:11:10','病床类别3'),(54,'2021-04-15 15:11:10','病床类别4'),(55,'2021-04-15 15:11:10','病床类别5'),(56,'2021-04-15 15:11:10','病床类别6'),(1618471306952,'2021-04-15 15:21:46','单人病房');

/*Table structure for table `bingrenxinxi` */

DROP TABLE IF EXISTS `bingrenxinxi`;

CREATE TABLE `bingrenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bingrenbianhao` varchar(200) DEFAULT NULL COMMENT '病人编号',
  `bingrenxingming` varchar(200) DEFAULT NULL COMMENT '病人姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xuexing` varchar(200) DEFAULT NULL COMMENT '血型',
  `bingshi` longtext COMMENT '病史',
  `bingzheng` longtext COMMENT '病症',
  `bingchuanghao` varchar(200) DEFAULT NULL COMMENT '病床号',
  `ruyuanshijian` datetime DEFAULT NULL COMMENT '入院时间',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618471080692 DEFAULT CHARSET=utf8 COMMENT='病人信息';

/*Data for the table `bingrenxinxi` */

insert  into `bingrenxinxi`(`id`,`addtime`,`bingrenbianhao`,`bingrenxingming`,`xingbie`,`lianxidianhua`,`shenfenzhenghao`,`nianling`,`xuexing`,`bingshi`,`bingzheng`,`bingchuanghao`,`ruyuanshijian`,`zhaopian`) values (81,'2021-04-15 15:11:10','病人编号1','病人姓名1','性别1','13823888881','440300199101010001','年龄1','A','病史1','病症1','病床号1','2021-04-15 15:11:10','http://localhost:8080/springboot3v5bn/upload/bingrenxinxi_zhaopian1.jpg'),(82,'2021-04-15 15:11:10','病人编号2','病人姓名2','性别2','13823888882','440300199202020002','年龄2','A','病史2','病症2','病床号2','2021-04-15 15:11:10','http://localhost:8080/springboot3v5bn/upload/bingrenxinxi_zhaopian2.jpg'),(83,'2021-04-15 15:11:10','病人编号3','病人姓名3','性别3','13823888883','440300199303030003','年龄3','A','病史3','病症3','病床号3','2021-04-15 15:11:10','http://localhost:8080/springboot3v5bn/upload/bingrenxinxi_zhaopian3.jpg'),(84,'2021-04-15 15:11:10','病人编号4','病人姓名4','性别4','13823888884','440300199404040004','年龄4','A','病史4','病症4','病床号4','2021-04-15 15:11:10','http://localhost:8080/springboot3v5bn/upload/bingrenxinxi_zhaopian4.jpg'),(85,'2021-04-15 15:11:10','病人编号5','病人姓名5','性别5','13823888885','440300199505050005','年龄5','A','病史5','病症5','病床号5','2021-04-15 15:11:10','http://localhost:8080/springboot3v5bn/upload/bingrenxinxi_zhaopian5.jpg'),(86,'2021-04-15 15:11:10','病人编号6','病人姓名6','性别6','13823888886','440300199606060006','年龄6','A','病史6','病症6','病床号6','2021-04-15 15:11:10','http://localhost:8080/springboot3v5bn/upload/bingrenxinxi_zhaopian6.jpg'),(1618471080691,'2021-04-15 15:17:59','1213','213','12','13800138000','123456789012345678','12','B','1213131','1213','12','2021-04-09 00:00:00','http://localhost:8080/springboot3v5bn/upload/1618471071368.jpg');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot3v5bn/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot3v5bn/upload/1618471399348.jpg'),(3,'picture3','http://localhost:8080/springboot3v5bn/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618471473816 DEFAULT CHARSET=utf8 COMMENT='内部论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (101,'2021-04-15 15:11:10','帖子标题1','<p>1213</p>',1,1,'用户名1','关闭'),(103,'2021-04-15 15:11:10','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(104,'2021-04-15 15:11:10','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(105,'2021-04-15 15:11:10','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(106,'2021-04-15 15:11:10','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1618471473815,'2021-04-15 15:24:33',NULL,'12131',1618471464230,11,'医生1',NULL);

/*Table structure for table `hushi` */

DROP TABLE IF EXISTS `hushi`;

CREATE TABLE `hushi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `hushigonghao` varchar(200) NOT NULL COMMENT '护士工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `hushixingming` varchar(200) NOT NULL COMMENT '护士姓名',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `gongling` int(11) DEFAULT NULL COMMENT '工龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hushigonghao` (`hushigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618471265420 DEFAULT CHARSET=utf8 COMMENT='护士';

/*Data for the table `hushi` */

insert  into `hushi`(`id`,`addtime`,`hushigonghao`,`mima`,`hushixingming`,`keshi`,`xingbie`,`gongling`,`lianxidianhua`,`touxiang`) values (21,'2021-04-15 15:11:10','护士1','123456','护士姓名1','科室1','男',1,'13823888881','http://localhost:8080/springboot3v5bn/upload/1618471153701.png'),(22,'2021-04-15 15:11:10','护士2','123456','护士姓名2','科室2','男',2,'13823888882','http://localhost:8080/springboot3v5bn/upload/hushi_touxiang2.jpg'),(23,'2021-04-15 15:11:10','护士3','123456','护士姓名3','科室3','男',3,'13823888883','http://localhost:8080/springboot3v5bn/upload/hushi_touxiang3.jpg'),(24,'2021-04-15 15:11:10','护士4','123456','护士姓名4','科室4','男',4,'13823888884','http://localhost:8080/springboot3v5bn/upload/hushi_touxiang4.jpg'),(25,'2021-04-15 15:11:10','护士5','123456','护士姓名5','科室5','男',5,'13823888885','http://localhost:8080/springboot3v5bn/upload/hushi_touxiang5.jpg'),(26,'2021-04-15 15:11:10','护士6','123456','护士姓名6','科室6','男',6,'13823888886','http://localhost:8080/springboot3v5bn/upload/hushi_touxiang6.jpg');

/*Table structure for table `keshixinxi` */

DROP TABLE IF EXISTS `keshixinxi`;

CREATE TABLE `keshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshibianhao` varchar(200) DEFAULT NULL COMMENT '科室编号',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `shangbanshijian` varchar(200) DEFAULT NULL COMMENT '上班时间',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `keshifengmian` varchar(200) DEFAULT NULL COMMENT '科室封面',
  `keshichengyuan` longtext COMMENT '科室成员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='科室信息';

/*Data for the table `keshixinxi` */

insert  into `keshixinxi`(`id`,`addtime`,`keshibianhao`,`keshimingcheng`,`shangbanshijian`,`fuzeren`,`lianxidianhua`,`keshifengmian`,`keshichengyuan`) values (71,'2021-04-15 15:11:10','科室编号1','外科','上班时间1','负责人1','联系电话1','http://localhost:8080/springboot3v5bn/upload/keshixinxi_keshifengmian1.jpg','刘医生 王医生'),(72,'2021-04-15 15:11:10','科室编号2','科室名称2','上班时间2','负责人2','联系电话2','http://localhost:8080/springboot3v5bn/upload/keshixinxi_keshifengmian2.jpg','科室成员2'),(73,'2021-04-15 15:11:10','科室编号3','科室名称3','上班时间3','负责人3','联系电话3','http://localhost:8080/springboot3v5bn/upload/keshixinxi_keshifengmian3.jpg','科室成员3'),(74,'2021-04-15 15:11:10','科室编号4','科室名称4','上班时间4','负责人4','联系电话4','http://localhost:8080/springboot3v5bn/upload/keshixinxi_keshifengmian4.jpg','科室成员4'),(75,'2021-04-15 15:11:10','科室编号5','科室名称5','上班时间5','负责人5','联系电话5','http://localhost:8080/springboot3v5bn/upload/keshixinxi_keshifengmian5.jpg','科室成员5'),(76,'2021-04-15 15:11:10','科室编号6','科室名称6','上班时间6','负责人6','联系电话6','http://localhost:8080/springboot3v5bn/upload/keshixinxi_keshifengmian6.jpg','科室成员6');

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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='医院公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-04-15 15:11:10','标题1','1313','http://localhost:8080/springboot3v5bn/upload/news_picture1.jpg','<p>请到三楼接种疫苗</p>'),(112,'2021-04-15 15:11:10','标题2','简介2','http://localhost:8080/springboot3v5bn/upload/news_picture2.jpg','内容2'),(113,'2021-04-15 15:11:10','标题3','简介3','http://localhost:8080/springboot3v5bn/upload/news_picture3.jpg','内容3'),(114,'2021-04-15 15:11:10','标题4','简介4','http://localhost:8080/springboot3v5bn/upload/news_picture4.jpg','内容4'),(115,'2021-04-15 15:11:10','标题5','简介5','http://localhost:8080/springboot3v5bn/upload/news_picture5.jpg','内容5'),(116,'2021-04-15 15:11:10','标题6','简介6','http://localhost:8080/springboot3v5bn/upload/news_picture6.jpg','内容6');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'医生1','yisheng','医生','vuefmxiwztr9qqjmkr08av5yqunku78q','2021-04-15 15:15:12','2021-04-15 16:24:01'),(2,21,'护士1','hushi','护士','ven9hxt8jcpcw1okxknscdu5bnbsym7r','2021-04-15 15:18:52','2021-04-15 16:25:07'),(3,1,'abo','users','管理员','5v97kot5b7t7f53auvialvsjboxk4b2e','2021-04-15 15:19:47','2021-04-15 16:19:48');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-15 15:11:10');

/*Table structure for table `yaofang` */

DROP TABLE IF EXISTS `yaofang`;

CREATE TABLE `yaofang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinbianhao` varchar(200) NOT NULL COMMENT '药品编号',
  `yaopinmingcheng` varchar(200) NOT NULL COMMENT '药品名称',
  `yingwenmingcheng` varchar(200) DEFAULT NULL COMMENT '英文名称',
  `jixing` varchar(200) DEFAULT NULL COMMENT '剂型',
  `yaopinleibie` varchar(200) DEFAULT NULL COMMENT '药品类别',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shengchanriqi` date DEFAULT NULL COMMENT '生产日期',
  `changshangmingcheng` varchar(200) DEFAULT NULL COMMENT '厂商名称',
  `changshangdizhi` varchar(200) DEFAULT NULL COMMENT '厂商地址',
  `yaopintupian` varchar(200) DEFAULT NULL COMMENT '药品图片',
  `yaopinjiage` int(11) NOT NULL COMMENT '药品价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `jiliangdanwei` varchar(200) DEFAULT NULL COMMENT '计量单位',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yaopinbianhao` (`yaopinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618471008895 DEFAULT CHARSET=utf8 COMMENT='药房';

/*Data for the table `yaofang` */

insert  into `yaofang`(`id`,`addtime`,`yaopinbianhao`,`yaopinmingcheng`,`yingwenmingcheng`,`jixing`,`yaopinleibie`,`pinpai`,`shengchanriqi`,`changshangmingcheng`,`changshangdizhi`,`yaopintupian`,`yaopinjiage`,`shuliang`,`jiliangdanwei`,`gengxinshijian`) values (41,'2021-04-15 15:11:10','药品编号1','药品名称1','英文名称1','颗粒','药品类别1','品牌1','2021-04-15','厂商名称1','厂商地址1','http://localhost:8080/springboot3v5bn/upload/yaofang_yaopintupian1.jpg',1,1,'计量单位1','2021-04-15 15:11:10'),(42,'2021-04-15 15:11:10','药品编号2','药品名称2','英文名称2','颗粒','药品类别2','品牌2','2021-04-15','厂商名称2','厂商地址2','http://localhost:8080/springboot3v5bn/upload/yaofang_yaopintupian2.jpg',2,2,'计量单位2','2021-04-15 15:11:10'),(43,'2021-04-15 15:11:10','药品编号3','药品名称3','英文名称3','颗粒','药品类别3','品牌3','2021-04-15','厂商名称3','厂商地址3','http://localhost:8080/springboot3v5bn/upload/yaofang_yaopintupian3.jpg',3,3,'计量单位3','2021-04-15 15:11:10'),(44,'2021-04-15 15:11:10','药品编号4','药品名称4','英文名称4','颗粒','药品类别4','品牌4','2021-04-15','厂商名称4','厂商地址4','http://localhost:8080/springboot3v5bn/upload/yaofang_yaopintupian4.jpg',4,4,'计量单位4','2021-04-15 15:11:10'),(45,'2021-04-15 15:11:10','药品编号5','药品名称5','英文名称5','颗粒','药品类别5','品牌5','2021-04-15','厂商名称5','厂商地址5','http://localhost:8080/springboot3v5bn/upload/yaofang_yaopintupian5.jpg',5,5,'计量单位5','2021-04-15 15:11:10'),(46,'2021-04-15 15:11:10','药品编号6','药品名称6','英文名称6','颗粒','药品类别6','品牌6','2021-04-15','厂商名称6','厂商地址6','http://localhost:8080/springboot3v5bn/upload/yaofang_yaopintupian6.jpg',6,6,'计量单位6','2021-04-15 15:11:10');

/*Table structure for table `yaofangxinxi` */

DROP TABLE IF EXISTS `yaofangxinxi`;

CREATE TABLE `yaofangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bingrenbianhao` varchar(200) DEFAULT NULL COMMENT '病人编号',
  `bingrenxingming` varchar(200) DEFAULT NULL COMMENT '病人姓名',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `kaiyaoshijian` datetime DEFAULT NULL COMMENT '开药时间',
  `fuyongfangfa` longtext COMMENT '服用方法',
  `zhuyishixiang` longtext COMMENT '注意事项',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618471096826 DEFAULT CHARSET=utf8 COMMENT='药方信息';

/*Data for the table `yaofangxinxi` */

insert  into `yaofangxinxi`(`id`,`addtime`,`bingrenbianhao`,`bingrenxingming`,`shenfenzhenghao`,`yishenggonghao`,`yishengxingming`,`yaopinmingcheng`,`shuliang`,`kaiyaoshijian`,`fuyongfangfa`,`zhuyishixiang`) values (91,'2021-04-15 15:11:10','病人编号1','病人姓名1','身份证号1','医生工号1','医生姓名1','药品名称1',1,'2021-04-15 15:11:10','服用方法1','注意事项1'),(92,'2021-04-15 15:11:10','病人编号2','病人姓名2','身份证号2','医生工号2','医生姓名2','药品名称2',2,'2021-04-15 15:11:10','服用方法2','注意事项2'),(93,'2021-04-15 15:11:10','病人编号3','病人姓名3','身份证号3','医生工号3','医生姓名3','药品名称3',3,'2021-04-15 15:11:10','服用方法3','注意事项3'),(94,'2021-04-15 15:11:10','病人编号4','病人姓名4','身份证号4','医生工号4','医生姓名4','药品名称4',4,'2021-04-15 15:11:10','服用方法4','注意事项4'),(95,'2021-04-15 15:11:10','病人编号5','病人姓名5','身份证号5','医生工号5','医生姓名5','药品名称5',5,'2021-04-15 15:11:10','服用方法5','注意事项5'),(96,'2021-04-15 15:11:10','病人编号6','病人姓名6','身份证号6','医生工号6','医生姓名6','药品名称6',6,'2021-04-15 15:11:10','服用方法6','注意事项6');

/*Table structure for table `yaopinleibie` */

DROP TABLE IF EXISTS `yaopinleibie`;

CREATE TABLE `yaopinleibie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinleibie` varchar(200) DEFAULT NULL COMMENT '药品类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='药品类别';

/*Data for the table `yaopinleibie` */

insert  into `yaopinleibie`(`id`,`addtime`,`yaopinleibie`) values (61,'2021-04-15 15:11:10','药品类别1'),(62,'2021-04-15 15:11:10','药品类别2'),(63,'2021-04-15 15:11:10','药品类别3'),(64,'2021-04-15 15:11:10','药品类别4'),(65,'2021-04-15 15:11:10','药品类别5'),(66,'2021-04-15 15:11:10','药品类别6');

/*Table structure for table `yisheng` */

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) NOT NULL COMMENT '医生工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yiling` varchar(200) DEFAULT NULL COMMENT '医龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yishenggonghao` (`yishenggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618471231851 DEFAULT CHARSET=utf8 COMMENT='医生';

/*Data for the table `yisheng` */

insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`keshi`,`zhicheng`,`xingbie`,`yiling`,`lianxidianhua`,`touxiang`) values (11,'2021-04-15 15:11:10','医生1','123456','医生姓名11','科室2','职称3','女','11','13823888881','http://localhost:8080/springboot3v5bn/upload/yisheng_touxiang1.jpg'),(12,'2021-04-15 15:11:10','医生2','123456','医生姓名2','科室2','职称2','男','医龄2','13823888882','http://localhost:8080/springboot3v5bn/upload/yisheng_touxiang2.jpg'),(13,'2021-04-15 15:11:10','医生3','123456','医生姓名3','科室3','职称3','男','医龄3','13823888883','http://localhost:8080/springboot3v5bn/upload/yisheng_touxiang3.jpg'),(14,'2021-04-15 15:11:10','医生4','123456','医生姓名4','科室4','职称4','男','医龄4','13823888884','http://localhost:8080/springboot3v5bn/upload/yisheng_touxiang4.jpg'),(15,'2021-04-15 15:11:10','医生5','123456','医生姓名5','科室5','职称5','男','医龄5','13823888885','http://localhost:8080/springboot3v5bn/upload/yisheng_touxiang5.jpg'),(16,'2021-04-15 15:11:10','医生6','123456','医生姓名6','科室6','职称6','男','医龄6','13823888886','http://localhost:8080/springboot3v5bn/upload/yisheng_touxiang6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
