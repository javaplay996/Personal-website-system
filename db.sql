/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm1l451
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm1l451` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm1l451`;

/*Table structure for table `boke` */

DROP TABLE IF EXISTS `boke`;

CREATE TABLE `boke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `fabuneirong` longtext COMMENT '发布内容',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='博客';

/*Data for the table `boke` */

insert  into `boke`(`id`,`addtime`,`biaoti`,`fabuneirong`,`faburen`,`fabushijian`,`tupian`,`thumbsupnum`,`crazilynum`) values (21,'2021-05-17 14:29:52','标题1','发布内容1','发布人1','2021-05-17 14:29:52','http://localhost:8080/ssm1l451/upload/boke_tupian1.jpg',1,1);
insert  into `boke`(`id`,`addtime`,`biaoti`,`fabuneirong`,`faburen`,`fabushijian`,`tupian`,`thumbsupnum`,`crazilynum`) values (22,'2021-05-17 14:29:52','标题2','发布内容2','发布人2','2021-05-17 14:29:52','http://localhost:8080/ssm1l451/upload/boke_tupian2.jpg',2,2);
insert  into `boke`(`id`,`addtime`,`biaoti`,`fabuneirong`,`faburen`,`fabushijian`,`tupian`,`thumbsupnum`,`crazilynum`) values (23,'2021-05-17 14:29:52','标题3','发布内容3','发布人3','2021-05-17 14:29:52','http://localhost:8080/ssm1l451/upload/boke_tupian3.jpg',3,3);
insert  into `boke`(`id`,`addtime`,`biaoti`,`fabuneirong`,`faburen`,`fabushijian`,`tupian`,`thumbsupnum`,`crazilynum`) values (24,'2021-05-17 14:29:52','标题4','发布内容4','发布人4','2021-05-17 14:29:52','http://localhost:8080/ssm1l451/upload/boke_tupian4.jpg',4,4);
insert  into `boke`(`id`,`addtime`,`biaoti`,`fabuneirong`,`faburen`,`fabushijian`,`tupian`,`thumbsupnum`,`crazilynum`) values (25,'2021-05-17 14:29:52','标题5','发布内容5','发布人5','2021-05-17 14:29:52','http://localhost:8080/ssm1l451/upload/boke_tupian5.jpg',5,5);
insert  into `boke`(`id`,`addtime`,`biaoti`,`fabuneirong`,`faburen`,`fabushijian`,`tupian`,`thumbsupnum`,`crazilynum`) values (26,'2021-05-17 14:29:52','标题6','发布内容6','发布人6','2021-05-17 14:29:52','http://localhost:8080/ssm1l451/upload/boke_tupian6.jpg',6,6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm1l451/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm1l451/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm1l451/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussboke` */

DROP TABLE IF EXISTS `discussboke`;

CREATE TABLE `discussboke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='博客评论表';

/*Data for the table `discussboke` */

insert  into `discussboke`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-05-17 14:29:52',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussboke`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (102,'2021-05-17 14:29:52',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussboke`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (103,'2021-05-17 14:29:52',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussboke`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (104,'2021-05-17 14:29:52',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussboke`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (105,'2021-05-17 14:29:52',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussboke`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (106,'2021-05-17 14:29:52',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (91,'2021-05-17 14:29:52',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (92,'2021-05-17 14:29:52',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (93,'2021-05-17 14:29:52',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (94,'2021-05-17 14:29:52',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (95,'2021-05-17 14:29:52',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (96,'2021-05-17 14:29:52',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `shipinku` */

DROP TABLE IF EXISTS `shipinku`;

CREATE TABLE `shipinku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `shipinxiangqing` longtext COMMENT '视频详情',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='视频库';

/*Data for the table `shipinku` */

insert  into `shipinku`(`id`,`addtime`,`biaoti`,`shipin`,`shipinxiangqing`,`faburen`,`fabushijian`,`fengmian`) values (71,'2021-05-17 14:29:52','标题1','','视频详情1','发布人1','2021-05-17 14:29:52','http://localhost:8080/ssm1l451/upload/shipinku_fengmian1.jpg');
insert  into `shipinku`(`id`,`addtime`,`biaoti`,`shipin`,`shipinxiangqing`,`faburen`,`fabushijian`,`fengmian`) values (72,'2021-05-17 14:29:52','标题2','','视频详情2','发布人2','2021-05-17 14:29:52','http://localhost:8080/ssm1l451/upload/shipinku_fengmian2.jpg');
insert  into `shipinku`(`id`,`addtime`,`biaoti`,`shipin`,`shipinxiangqing`,`faburen`,`fabushijian`,`fengmian`) values (73,'2021-05-17 14:29:52','标题3','','视频详情3','发布人3','2021-05-17 14:29:52','http://localhost:8080/ssm1l451/upload/shipinku_fengmian3.jpg');
insert  into `shipinku`(`id`,`addtime`,`biaoti`,`shipin`,`shipinxiangqing`,`faburen`,`fabushijian`,`fengmian`) values (74,'2021-05-17 14:29:52','标题4','','视频详情4','发布人4','2021-05-17 14:29:52','http://localhost:8080/ssm1l451/upload/shipinku_fengmian4.jpg');
insert  into `shipinku`(`id`,`addtime`,`biaoti`,`shipin`,`shipinxiangqing`,`faburen`,`fabushijian`,`fengmian`) values (75,'2021-05-17 14:29:52','标题5','','视频详情5','发布人5','2021-05-17 14:29:52','http://localhost:8080/ssm1l451/upload/shipinku_fengmian5.jpg');
insert  into `shipinku`(`id`,`addtime`,`biaoti`,`shipin`,`shipinxiangqing`,`faburen`,`fabushijian`,`fengmian`) values (76,'2021-05-17 14:29:52','标题6','','视频详情6','发布人6','2021-05-17 14:29:52','http://localhost:8080/ssm1l451/upload/shipinku_fengmian6.jpg');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','tf9b38lk7mlvcox1xk5g6nlzdt6od06e','2021-05-17 14:32:28','2021-05-17 15:45:08');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-17 14:29:52');

/*Table structure for table `xiangce` */

DROP TABLE IF EXISTS `xiangce`;

CREATE TABLE `xiangce` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  `chicun` varchar(200) DEFAULT NULL COMMENT '尺寸',
  `wenjiandaxiao` varchar(200) DEFAULT NULL COMMENT '文件大小',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='相册';

/*Data for the table `xiangce` */

insert  into `xiangce`(`id`,`addtime`,`biaoti`,`shijian`,`chicun`,`wenjiandaxiao`,`tupian`,`zhanghao`,`xingming`) values (31,'2021-05-17 14:29:52','标题1','2021-05-17 14:29:52','尺寸1','文件大小1','http://localhost:8080/ssm1l451/upload/xiangce_tupian1.jpg','账号1','姓名1');
insert  into `xiangce`(`id`,`addtime`,`biaoti`,`shijian`,`chicun`,`wenjiandaxiao`,`tupian`,`zhanghao`,`xingming`) values (32,'2021-05-17 14:29:52','标题2','2021-05-17 14:29:52','尺寸2','文件大小2','http://localhost:8080/ssm1l451/upload/xiangce_tupian2.jpg','账号2','姓名2');
insert  into `xiangce`(`id`,`addtime`,`biaoti`,`shijian`,`chicun`,`wenjiandaxiao`,`tupian`,`zhanghao`,`xingming`) values (33,'2021-05-17 14:29:52','标题3','2021-05-17 14:29:52','尺寸3','文件大小3','http://localhost:8080/ssm1l451/upload/xiangce_tupian3.jpg','账号3','姓名3');
insert  into `xiangce`(`id`,`addtime`,`biaoti`,`shijian`,`chicun`,`wenjiandaxiao`,`tupian`,`zhanghao`,`xingming`) values (34,'2021-05-17 14:29:52','标题4','2021-05-17 14:29:52','尺寸4','文件大小4','http://localhost:8080/ssm1l451/upload/xiangce_tupian4.jpg','账号4','姓名4');
insert  into `xiangce`(`id`,`addtime`,`biaoti`,`shijian`,`chicun`,`wenjiandaxiao`,`tupian`,`zhanghao`,`xingming`) values (35,'2021-05-17 14:29:52','标题5','2021-05-17 14:29:52','尺寸5','文件大小5','http://localhost:8080/ssm1l451/upload/xiangce_tupian5.jpg','账号5','姓名5');
insert  into `xiangce`(`id`,`addtime`,`biaoti`,`shijian`,`chicun`,`wenjiandaxiao`,`tupian`,`zhanghao`,`xingming`) values (36,'2021-05-17 14:29:52','标题6','2021-05-17 14:29:52','尺寸6','文件大小6','http://localhost:8080/ssm1l451/upload/xiangce_tupian6.jpg','账号6','姓名6');

/*Table structure for table `xiangcegongxiang` */

DROP TABLE IF EXISTS `xiangcegongxiang`;

CREATE TABLE `xiangcegongxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  `wenjiandaxiao` varchar(200) DEFAULT NULL COMMENT '文件大小',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621233592537 DEFAULT CHARSET=utf8 COMMENT='相册共享';

/*Data for the table `xiangcegongxiang` */

/*Table structure for table `xiazailiebiao` */

DROP TABLE IF EXISTS `xiazailiebiao`;

CREATE TABLE `xiazailiebiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `geshouming` varchar(200) DEFAULT NULL COMMENT '歌手名',
  `gequ` varchar(200) DEFAULT NULL COMMENT '歌曲',
  `wenjiandaxiao` varchar(200) DEFAULT NULL COMMENT '文件大小',
  `gequshizhang` datetime DEFAULT NULL COMMENT '歌曲时长',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='下载列表';

/*Data for the table `xiazailiebiao` */

insert  into `xiazailiebiao`(`id`,`addtime`,`geshouming`,`gequ`,`wenjiandaxiao`,`gequshizhang`,`zhaopian`) values (61,'2021-05-17 14:29:52','歌手名1','歌曲1','文件大小1','2021-05-17 14:29:52','http://localhost:8080/ssm1l451/upload/xiazailiebiao_zhaopian1.jpg');
insert  into `xiazailiebiao`(`id`,`addtime`,`geshouming`,`gequ`,`wenjiandaxiao`,`gequshizhang`,`zhaopian`) values (62,'2021-05-17 14:29:52','歌手名2','歌曲2','文件大小2','2021-05-17 14:29:52','http://localhost:8080/ssm1l451/upload/xiazailiebiao_zhaopian2.jpg');
insert  into `xiazailiebiao`(`id`,`addtime`,`geshouming`,`gequ`,`wenjiandaxiao`,`gequshizhang`,`zhaopian`) values (63,'2021-05-17 14:29:52','歌手名3','歌曲3','文件大小3','2021-05-17 14:29:52','http://localhost:8080/ssm1l451/upload/xiazailiebiao_zhaopian3.jpg');
insert  into `xiazailiebiao`(`id`,`addtime`,`geshouming`,`gequ`,`wenjiandaxiao`,`gequshizhang`,`zhaopian`) values (64,'2021-05-17 14:29:52','歌手名4','歌曲4','文件大小4','2021-05-17 14:29:52','http://localhost:8080/ssm1l451/upload/xiazailiebiao_zhaopian4.jpg');
insert  into `xiazailiebiao`(`id`,`addtime`,`geshouming`,`gequ`,`wenjiandaxiao`,`gequshizhang`,`zhaopian`) values (65,'2021-05-17 14:29:52','歌手名5','歌曲5','文件大小5','2021-05-17 14:29:52','http://localhost:8080/ssm1l451/upload/xiazailiebiao_zhaopian5.jpg');
insert  into `xiazailiebiao`(`id`,`addtime`,`geshouming`,`gequ`,`wenjiandaxiao`,`gequshizhang`,`zhaopian`) values (66,'2021-05-17 14:29:52','歌手名6','歌曲6','文件大小6','2021-05-17 14:29:52','http://localhost:8080/ssm1l451/upload/xiazailiebiao_zhaopian6.jpg');

/*Table structure for table `yinleku` */

DROP TABLE IF EXISTS `yinleku`;

CREATE TABLE `yinleku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `geshouming` varchar(200) DEFAULT NULL COMMENT '歌手名',
  `gequ` varchar(200) DEFAULT NULL COMMENT '歌曲',
  `gequleixing` varchar(200) DEFAULT NULL COMMENT '歌曲类型',
  `zhuanji` varchar(200) DEFAULT NULL COMMENT '专辑',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `wenjiandaxiao` varchar(200) DEFAULT NULL COMMENT '文件大小',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='音乐库';

/*Data for the table `yinleku` */

insert  into `yinleku`(`id`,`addtime`,`geshouming`,`gequ`,`gequleixing`,`zhuanji`,`fabushijian`,`wenjiandaxiao`,`zhaopian`) values (51,'2021-05-17 14:29:52','歌手名1','','歌曲类型1','专辑1','2021-05-17 14:29:52','文件大小1','http://localhost:8080/ssm1l451/upload/yinleku_zhaopian1.jpg');
insert  into `yinleku`(`id`,`addtime`,`geshouming`,`gequ`,`gequleixing`,`zhuanji`,`fabushijian`,`wenjiandaxiao`,`zhaopian`) values (52,'2021-05-17 14:29:52','歌手名2','','歌曲类型2','专辑2','2021-05-17 14:29:52','文件大小2','http://localhost:8080/ssm1l451/upload/yinleku_zhaopian2.jpg');
insert  into `yinleku`(`id`,`addtime`,`geshouming`,`gequ`,`gequleixing`,`zhuanji`,`fabushijian`,`wenjiandaxiao`,`zhaopian`) values (53,'2021-05-17 14:29:52','歌手名3','','歌曲类型3','专辑3','2021-05-17 14:29:52','文件大小3','http://localhost:8080/ssm1l451/upload/yinleku_zhaopian3.jpg');
insert  into `yinleku`(`id`,`addtime`,`geshouming`,`gequ`,`gequleixing`,`zhuanji`,`fabushijian`,`wenjiandaxiao`,`zhaopian`) values (54,'2021-05-17 14:29:52','歌手名4','','歌曲类型4','专辑4','2021-05-17 14:29:52','文件大小4','http://localhost:8080/ssm1l451/upload/yinleku_zhaopian4.jpg');
insert  into `yinleku`(`id`,`addtime`,`geshouming`,`gequ`,`gequleixing`,`zhuanji`,`fabushijian`,`wenjiandaxiao`,`zhaopian`) values (55,'2021-05-17 14:29:52','歌手名5','','歌曲类型5','专辑5','2021-05-17 14:29:52','文件大小5','http://localhost:8080/ssm1l451/upload/yinleku_zhaopian5.jpg');
insert  into `yinleku`(`id`,`addtime`,`geshouming`,`gequ`,`gequleixing`,`zhuanji`,`fabushijian`,`wenjiandaxiao`,`zhaopian`) values (56,'2021-05-17 14:29:52','歌手名6','','歌曲类型6','专辑6','2021-05-17 14:29:52','文件大小6','http://localhost:8080/ssm1l451/upload/yinleku_zhaopian6.jpg');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `yanzhengma` varchar(200) NOT NULL COMMENT '验证码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`yanzhengma`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (11,'2021-05-17 14:29:52','用户1','123456','姓名1','验证码1','男','13823888881','440300199101010001','http://localhost:8080/ssm1l451/upload/yonghu_zhaopian1.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`yanzhengma`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (12,'2021-05-17 14:29:52','用户2','123456','姓名2','验证码2','男','13823888882','440300199202020002','http://localhost:8080/ssm1l451/upload/yonghu_zhaopian2.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`yanzhengma`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (13,'2021-05-17 14:29:52','用户3','123456','姓名3','验证码3','男','13823888883','440300199303030003','http://localhost:8080/ssm1l451/upload/yonghu_zhaopian3.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`yanzhengma`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (14,'2021-05-17 14:29:52','用户4','123456','姓名4','验证码4','男','13823888884','440300199404040004','http://localhost:8080/ssm1l451/upload/yonghu_zhaopian4.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`yanzhengma`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (15,'2021-05-17 14:29:52','用户5','123456','姓名5','验证码5','男','13823888885','440300199505050005','http://localhost:8080/ssm1l451/upload/yonghu_zhaopian5.jpg');
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`yanzhengma`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`) values (16,'2021-05-17 14:29:52','用户6','123456','姓名6','验证码6','男','13823888886','440300199606060006','http://localhost:8080/ssm1l451/upload/yonghu_zhaopian6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
