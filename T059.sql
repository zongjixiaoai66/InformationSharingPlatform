/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t059`;
CREATE DATABASE IF NOT EXISTS `t059` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t059`;

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618217193705 DEFAULT CHARSET=utf8mb3 COMMENT='在线客服';

DELETE FROM `chat`;
INSERT INTO `chat` (`id`, `addtime`, `userid`, `adminid`, `ask`, `reply`, `isreply`) VALUES
	(51, '2021-04-10 08:23:46', 1, 1, '提问1', '回复1', 1),
	(52, '2021-04-10 08:23:46', 2, 2, '提问2', '回复2', 2),
	(53, '2021-04-10 08:23:46', 3, 3, '提问3', '回复3', 3),
	(54, '2021-04-10 08:23:46', 4, 4, '提问4', '回复4', 4),
	(55, '2021-04-10 08:23:46', 5, 5, '提问5', '回复5', 5),
	(56, '2021-04-10 08:23:46', 6, 6, '提问6', '回复6', 6),
	(1618217193704, '2021-04-12 08:46:33', 11, NULL, '测试', NULL, 1);

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot2mc6m/upload/1618217049300.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot2mc6m/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot2mc6m/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `discussziliaofenxiang`;
CREATE TABLE IF NOT EXISTS `discussziliaofenxiang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618217186174 DEFAULT CHARSET=utf8mb3 COMMENT='资料分享评论表';

DELETE FROM `discussziliaofenxiang`;
INSERT INTO `discussziliaofenxiang` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(81, '2021-04-10 08:23:46', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(82, '2021-04-10 08:23:46', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(83, '2021-04-10 08:23:46', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(84, '2021-04-10 08:23:46', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(85, '2021-04-10 08:23:46', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(86, '2021-04-10 08:23:46', 6, 6, '用户名6', '评论内容6', '回复内容6'),
	(1618217186173, '2021-04-12 08:46:25', 21, 11, '学生1', '测试', NULL);

DROP TABLE IF EXISTS `jubaofankui`;
CREATE TABLE IF NOT EXISTS `jubaofankui` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziliaomingcheng` varchar(200) DEFAULT NULL COMMENT '资料名称',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `jubaoyuanyin` longtext COMMENT '举报原因',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618217271808 DEFAULT CHARSET=utf8mb3 COMMENT='举报反馈';

DELETE FROM `jubaofankui`;
INSERT INTO `jubaofankui` (`id`, `addtime`, `ziliaomingcheng`, `leibie`, `fengmian`, `jubaoyuanyin`, `sfsh`, `shhf`) VALUES
	(41, '2021-04-10 08:23:46', '资料名称1', '类别1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '举报原因1', '是', ''),
	(43, '2021-04-10 08:23:46', '资料名称3', '类别3', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '举报原因3', '是', ''),
	(44, '2021-04-10 08:23:46', '资料名称4', '类别4', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '举报原因4', '是', ''),
	(45, '2021-04-10 08:23:46', '资料名称5', '类别5', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '举报原因5', '是', ''),
	(46, '2021-04-10 08:23:46', '资料名称6', '类别6', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '举报原因6', '是', ''),
	(1618217271807, '2021-04-12 08:47:51', '测试', '课件', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '<p>请输入举报原因</p>', '是', '测试');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='公告资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(71, '2021-04-10 08:23:46', '标题1', '简介1', 'http://localhost:8080/springboot2mc6m/upload/news_picture1.jpg', '内容1'),
	(72, '2021-04-10 08:23:46', '标题2', '简介2', 'http://localhost:8080/springboot2mc6m/upload/news_picture2.jpg', '内容2'),
	(73, '2021-04-10 08:23:46', '测试', '测试', 'http://localhost:8080/springboot2mc6m/upload/news_picture3.jpg', '<h1>测试</h1>'),
	(74, '2021-04-10 08:23:46', '标题4', '简介4', 'http://localhost:8080/springboot2mc6m/upload/news_picture4.jpg', '内容4'),
	(75, '2021-04-10 08:23:46', '标题5', '简介5', 'http://localhost:8080/springboot2mc6m/upload/news_picture5.jpg', '内容5'),
	(76, '2021-04-10 08:23:46', '标题6', '简介6', 'http://localhost:8080/springboot2mc6m/upload/news_picture6.jpg', '内容6');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618217176683 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1618217176682, '2021-04-12 08:46:16', 11, 21, 'ziliaofenxiang', '资料名称1', 'http://localhost:8080/springboot2mc6m/upload/ziliaofenxiang_fengmian1.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 11, '学生1', 'xuesheng', '学生', '1cgo6eyen74c44wot1wuwb2fu3cql51q', '2021-04-10 08:26:36', '2024-01-20 12:46:00'),
	(2, 1, 'abo', 'users', '管理员', 'cc7t7ys9g8hb0fpx06l95ofd8v3jhxjh', '2021-04-10 08:27:46', '2024-01-20 12:44:04');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-10 08:23:46');

DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE IF NOT EXISTS `xuesheng` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhuceshijian` date DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618216849670 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `xuesheng`;
INSERT INTO `xuesheng` (`id`, `addtime`, `xuehao`, `mima`, `xingming`, `xingbie`, `shouji`, `youxiang`, `zhaopian`, `zhuceshijian`) VALUES
	(11, '2021-04-10 08:23:46', '学生1', '123456', '姓名1', '男', '13823888881', '773890001@qq.com', 'http://localhost:8080/springboot2mc6m/upload/xuesheng_zhaopian1.jpg', '2021-04-23'),
	(12, '2021-04-10 08:23:46', '学生2', '123456', '姓名2', '男', '13823888882', '773890002@qq.com', 'http://localhost:8080/springboot2mc6m/upload/xuesheng_zhaopian2.jpg', '2021-04-12'),
	(13, '2021-04-10 08:23:46', '学生3', '123456', '姓名3', '女', '13823888883', '773890003@qq.com', 'http://localhost:8080/springboot2mc6m/upload/xuesheng_zhaopian3.jpg', '2021-04-10'),
	(14, '2021-04-10 08:23:46', '学生4', '123456', '姓名4', '男', '13823888884', '773890004@qq.com', 'http://localhost:8080/springboot2mc6m/upload/xuesheng_zhaopian4.jpg', '2021-04-10'),
	(15, '2021-04-10 08:23:46', '学生5', '123456', '姓名5', '男', '13823888885', '773890005@qq.com', 'http://localhost:8080/springboot2mc6m/upload/xuesheng_zhaopian5.jpg', '2021-04-10'),
	(16, '2021-04-10 08:23:46', '学生6', '123456', '姓名6', '男', '13823888886', '773890006@qq.com', 'http://localhost:8080/springboot2mc6m/upload/xuesheng_zhaopian6.jpg', '2021-04-10'),
	(1618216673088, '2021-04-12 08:37:53', '01', '01', '01', '男', '13800138000', '01@qq.com', 'http://localhost:8080/springboot2mc6m/upload/1618216667860.jpg', '2021-04-12'),
	(1618216849669, '2021-04-12 08:40:49', '111', '111', '111', '女', '13800138111', '111@qq.com', 'http://localhost:8080/springboot2mc6m/upload/1618216845928.png', '2021-04-12');

DROP TABLE IF EXISTS `ziliaofenxiang`;
CREATE TABLE IF NOT EXISTS `ziliaofenxiang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziliaomingcheng` varchar(200) DEFAULT NULL COMMENT '资料名称',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `wenjian` varchar(200) DEFAULT NULL COMMENT '文件',
  `ziliaojieshao` longtext COMMENT '资料介绍',
  `shangchuanshijian` datetime DEFAULT NULL COMMENT '上传时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618217250745 DEFAULT CHARSET=utf8mb3 COMMENT='资料分享';

DELETE FROM `ziliaofenxiang`;
INSERT INTO `ziliaofenxiang` (`id`, `addtime`, `ziliaomingcheng`, `leibie`, `wenjian`, `ziliaojieshao`, `shangchuanshijian`, `fengmian`, `xuehao`, `xingming`, `thumbsupnum`, `crazilynum`) VALUES
	(21, '2021-04-10 08:23:46', '资料名称1', '类别1', 'http://localhost:8080/springboot2mc6m/upload/1618216741276.docx', '<p>资料介绍1</p>', '2021-04-10 16:23:46', 'http://localhost:8080/springboot2mc6m/upload/ziliaofenxiang_fengmian1.jpg', '学生1', '姓名1', 3, 1),
	(22, '2021-04-10 08:23:46', '资料名称2', '类别2', '', '<p>资料介绍2</p>', '2021-04-10 16:23:46', 'http://localhost:8080/springboot2mc6m/upload/ziliaofenxiang_fengmian2.jpg', '学生2', '姓名2', 2, 2),
	(23, '2021-04-10 08:23:46', '资料名称3', '类别3', '', '资料介绍3', '2021-04-10 16:23:46', 'http://localhost:8080/springboot2mc6m/upload/ziliaofenxiang_fengmian3.jpg', '学号3', '姓名3', 3, 3),
	(25, '2021-04-10 08:23:46', '资料名称5', '类别5', '', '资料介绍5', '2021-04-10 16:23:46', 'http://localhost:8080/springboot2mc6m/upload/ziliaofenxiang_fengmian5.jpg', '学号5', '姓名5', 5, 5),
	(26, '2021-04-10 08:23:46', '资料名称6', '类别6', '', '资料介绍6', '2021-04-10 16:23:46', 'http://localhost:8080/springboot2mc6m/upload/ziliaofenxiang_fengmian6.jpg', '学号6', '姓名6', 6, 6),
	(1618217250744, '2021-04-12 08:47:29', '测试', '课件', 'http://localhost:8080/springboot2mc6m/upload/1618217222958.docx', '<p>测试</p>', '2021-04-12 16:46:44', 'http://localhost:8080/springboot2mc6m/upload/1618217247983.jpg', '学生1', '姓名1', 0, 0);

DROP TABLE IF EXISTS `ziyuanfenlei`;
CREATE TABLE IF NOT EXISTS `ziyuanfenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618216982269 DEFAULT CHARSET=utf8mb3 COMMENT='资源分类';

DELETE FROM `ziyuanfenlei`;
INSERT INTO `ziyuanfenlei` (`id`, `addtime`, `fenlei`) VALUES
	(31, '2021-04-10 08:23:46', '课件'),
	(32, '2021-04-10 08:23:46', '学习资料'),
	(33, '2021-04-10 08:23:46', '报告'),
	(34, '2021-04-10 08:23:46', '软件安装包'),
	(1618216982268, '2021-04-12 08:43:02', '习题');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
