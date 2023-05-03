/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : db_bdm103wangluohua

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2021-03-16 12:00:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(255) DEFAULT NULL,
  `adminPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `t_buzhi`
-- ----------------------------
DROP TABLE IF EXISTS `t_buzhi`;
CREATE TABLE `t_buzhi` (
  `buzhiId` int(11) NOT NULL AUTO_INCREMENT,
  `buzhiName` varchar(255) DEFAULT NULL,
  `buzhiMark` varchar(255) DEFAULT NULL,
  `buzhiMark1` varchar(255) DEFAULT NULL,
  `buzhiMark2` varchar(255) DEFAULT NULL,
  `buzhiType` int(11) DEFAULT NULL,
  `buzhiType1` int(11) DEFAULT NULL,
  `buzhiType2` int(11) DEFAULT NULL,
  `buzhiDouble` double DEFAULT NULL,
  `buzhiDouble1` double DEFAULT NULL,
  `buzhiDouble2` double DEFAULT NULL,
  `buyuanId` int(11) DEFAULT NULL,
  `buyuanName` varchar(255) DEFAULT NULL,
  `bumenId` int(11) DEFAULT NULL,
  `bumenName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`buzhiId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_buzhi
-- ----------------------------
INSERT INTO `t_buzhi` VALUES ('1', '网格信1', '网格信', null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_jcbiaoti`
-- ----------------------------
DROP TABLE IF EXISTS `t_jcbiaoti`;
CREATE TABLE `t_jcbiaoti` (
  `jcbiaotiId` int(11) NOT NULL AUTO_INCREMENT,
  `jcbiaotiName` varchar(255) DEFAULT NULL COMMENT '汉字',
  `jcbiaotiNeirong` varchar(255) DEFAULT NULL COMMENT 'url',
  `jcbiaotiMark` varchar(255) DEFAULT NULL,
  `jcbiaotiMark1` varchar(255) DEFAULT NULL,
  `jcbiaotiMark2` varchar(255) DEFAULT NULL,
  `jcbiaotiPaixu` int(11) DEFAULT NULL,
  `jcbiaotiType` int(11) DEFAULT NULL COMMENT '0网页导航1admin导航2user导航3yonghu导航4juese导航',
  `jcbiaotiType1` int(11) DEFAULT NULL,
  `jcbiaotiType2` int(11) DEFAULT NULL,
  PRIMARY KEY (`jcbiaotiId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_jcbiaoti
-- ----------------------------
INSERT INTO `t_jcbiaoti` VALUES ('1', '网格信息', null, null, null, null, '1', '1', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('2', '网格长信息', null, null, null, null, '2', '1', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('3', '工作日志', null, null, null, null, '3', '1', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('4', '绩效评估', null, null, null, null, '4', '1', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('5', '居民信息', null, null, null, null, '5', '1', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('6', '服务场所', null, null, null, null, '6', '1', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('7', '纠纷信息', null, null, null, null, '7', '1', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('8', '工作日志', null, null, null, null, '1', '2', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('9', '绩效评估', null, null, null, null, '2', '2', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('10', '居民信息', null, null, null, null, '3', '2', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('11', '服务场所', null, null, null, null, '4', '2', '0', null);
INSERT INTO `t_jcbiaoti` VALUES ('12', '纠纷信息', null, null, null, null, '5', '2', '0', null);

-- ----------------------------
-- Table structure for `t_jcdaohang`
-- ----------------------------
DROP TABLE IF EXISTS `t_jcdaohang`;
CREATE TABLE `t_jcdaohang` (
  `jcdaohangId` int(11) NOT NULL AUTO_INCREMENT,
  `jcdaohangName` varchar(255) DEFAULT NULL COMMENT '汉字',
  `jcdaohangNeirong` varchar(255) DEFAULT NULL COMMENT 'url',
  `jcdaohangMark` varchar(255) DEFAULT NULL,
  `jcdaohangMark1` varchar(255) DEFAULT NULL,
  `jcdaohangMark2` varchar(255) DEFAULT NULL,
  `jcdaohangPaixu` int(11) DEFAULT NULL,
  `jcdaohangType` int(11) DEFAULT NULL COMMENT '0网页导航1admin导航2user导航3yonghu导航4juese导航',
  `jcdaohangType1` int(11) DEFAULT NULL,
  `jcdaohangType2` int(11) DEFAULT NULL,
  `jcbiaotiId` int(11) DEFAULT NULL,
  `jcbiaotiName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`jcdaohangId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_jcdaohang
-- ----------------------------
INSERT INTO `t_jcdaohang` VALUES ('1', '网格信息', 'buzhi.jsp', null, null, null, '1', '1', '0', null, '1', null);
INSERT INTO `t_jcdaohang` VALUES ('2', '网格长信息', 'user.jsp', null, null, null, '1', '1', '0', null, '2', null);
INSERT INTO `t_jcdaohang` VALUES ('3', '工作日志', 'uyijian.jsp', null, null, null, '1', '1', '0', null, '3', null);
INSERT INTO `t_jcdaohang` VALUES ('4', '绩效类型', 'uxtype.jsp', null, null, null, '1', '1', '0', null, '4', null);
INSERT INTO `t_jcdaohang` VALUES ('5', '绩效评估', 'uxinxi.jsp', null, null, null, '2', '1', '0', null, '4', null);
INSERT INTO `t_jcdaohang` VALUES ('6', '房屋信息', 'sjleixing.jsp', null, null, null, '1', '1', '0', null, '5', null);
INSERT INTO `t_jcdaohang` VALUES ('7', '居民信息', 'shuju.jsp', null, null, null, '2', '1', '0', null, '5', null);
INSERT INTO `t_jcdaohang` VALUES ('8', '服务场所', 'sjduochu.jsp', null, null, null, '1', '1', '0', null, '6', null);
INSERT INTO `t_jcdaohang` VALUES ('9', '纠纷信息', 'sjjianchu.jsp', null, null, null, '1', '1', '0', null, '7', null);
INSERT INTO `t_jcdaohang` VALUES ('10', '工作日志', 'uyijian.jsp', null, null, null, '1', '2', '0', null, '8', null);
INSERT INTO `t_jcdaohang` VALUES ('11', '绩效评估', 'uxinxi.jsp', null, null, null, '1', '2', '0', null, '9', null);
INSERT INTO `t_jcdaohang` VALUES ('12', '房屋信息', 'sjleixing.jsp', null, null, null, '1', '2', '0', null, '10', null);
INSERT INTO `t_jcdaohang` VALUES ('13', '居民信息', 'shuju.jsp', null, null, null, '1', '2', '0', null, '10', null);
INSERT INTO `t_jcdaohang` VALUES ('14', '服务场所', 'sjduochu.jsp', null, null, null, '1', '2', '0', null, '11', null);
INSERT INTO `t_jcdaohang` VALUES ('15', '纠纷信息', 'sjjianchu.jsp', null, null, null, '1', '2', '0', null, '12', null);

-- ----------------------------
-- Table structure for `t_jcpeizhi`
-- ----------------------------
DROP TABLE IF EXISTS `t_jcpeizhi`;
CREATE TABLE `t_jcpeizhi` (
  `jcpeizhiId` int(11) NOT NULL AUTO_INCREMENT,
  `jcpeizhiName` varchar(255) DEFAULT NULL,
  `jcpeizhiNeirong` varchar(255) DEFAULT NULL,
  `jcpeizhiMark` varchar(255) DEFAULT NULL,
  `bumenBieming` varchar(255) DEFAULT NULL,
  `buyuanBieming` varchar(255) DEFAULT NULL,
  `buzhiBieming` varchar(255) DEFAULT NULL,
  `userBieming` varchar(255) DEFAULT NULL COMMENT 'userBieming',
  `uxtypeBieming` varchar(255) DEFAULT NULL,
  `uxinxiBieming` varchar(255) DEFAULT NULL,
  `uyijianBieming` varchar(255) DEFAULT NULL,
  `roleBieming` varchar(255) DEFAULT NULL,
  `byumenBieming` varchar(255) DEFAULT NULL,
  `byuyuanBieming` varchar(255) DEFAULT NULL,
  `byuzhiBieming` varchar(255) DEFAULT NULL,
  `yonghuBieming` varchar(255) DEFAULT NULL COMMENT 'yonghuBieming',
  `yxtypeBieming` varchar(255) DEFAULT NULL,
  `yxinxiBieming` varchar(255) DEFAULT NULL,
  `yyijianBieming` varchar(255) DEFAULT NULL,
  `yhroleBieming` varchar(255) DEFAULT NULL,
  `ggtypeBieming` varchar(255) DEFAULT NULL,
  `gonggaoBieming` varchar(255) DEFAULT NULL,
  `ggpinglunBieming` varchar(255) DEFAULT NULL,
  `shujuBieming` varchar(255) DEFAULT NULL,
  `sjduochuBieming` varchar(255) DEFAULT NULL,
  `sjjianchuBieming` varchar(255) DEFAULT NULL,
  `sjlaiyuanBieming` varchar(255) DEFAULT NULL,
  `sjleixingBieming` varchar(255) DEFAULT NULL,
  `sjpinglunBieming` varchar(255) DEFAULT NULL,
  `sjqitaBieming` varchar(255) DEFAULT NULL,
  `sjshaochuBieming` varchar(255) DEFAULT NULL,
  `sjxingtaiBieming` varchar(255) DEFAULT NULL,
  `jcpeizhiType` int(11) DEFAULT NULL,
  `jcpeizhiType1` int(11) DEFAULT NULL,
  `jcpeizhiType2` int(11) DEFAULT NULL,
  PRIMARY KEY (`jcpeizhiId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_jcpeizhi
-- ----------------------------
INSERT INTO `t_jcpeizhi` VALUES ('1', '社区网格化', null, null, null, null, '网格', '网格长', '类型', '绩效', '日志', null, null, null, null, null, null, null, null, null, null, null, null, '居民', '场所', '纠纷', null, '房屋', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_rizhi`
-- ----------------------------
DROP TABLE IF EXISTS `t_rizhi`;
CREATE TABLE `t_rizhi` (
  `rizhiId` int(11) NOT NULL AUTO_INCREMENT,
  `rizhiName` varchar(255) NOT NULL,
  `dengluIp` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`rizhiId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_rizhi
-- ----------------------------
INSERT INTO `t_rizhi` VALUES ('1', 'admin', '127.0.0.1', '2021-03-16 11:56:11');
INSERT INTO `t_rizhi` VALUES ('2', 'yonghu1', '127.0.0.1', '2021-03-16 11:57:06');
INSERT INTO `t_rizhi` VALUES ('3', 'admin', '127.0.0.1', '2021-03-16 11:58:34');

-- ----------------------------
-- Table structure for `t_shuju`
-- ----------------------------
DROP TABLE IF EXISTS `t_shuju`;
CREATE TABLE `t_shuju` (
  `shujuId` int(11) NOT NULL AUTO_INCREMENT,
  `shujuName` varchar(255) DEFAULT NULL,
  `shujuMark` varchar(2550) DEFAULT NULL,
  `shujuMark1` varchar(2550) DEFAULT NULL,
  `shujuMark2` varchar(2550) DEFAULT NULL,
  `shujuMark3` varchar(2550) DEFAULT NULL,
  `shujuDate` datetime DEFAULT NULL,
  `shujuDate1` datetime DEFAULT NULL,
  `shujuZong` int(11) DEFAULT NULL,
  `shujuZong1` int(11) DEFAULT NULL,
  `shujuZong2` int(11) DEFAULT NULL,
  `shujuDouble` double DEFAULT NULL,
  `shujuDouble1` double DEFAULT NULL,
  `shujuDouble2` double DEFAULT NULL,
  `shujuDouble3` double DEFAULT NULL,
  `shujuDouble4` double DEFAULT NULL,
  `shujuType` int(11) DEFAULT NULL,
  `shujuType1` int(11) DEFAULT NULL,
  `shujuType2` int(11) DEFAULT NULL,
  `shujuImg` varchar(255) DEFAULT NULL,
  `shujuImgName` varchar(255) DEFAULT NULL,
  `sjleixingId` int(11) DEFAULT NULL,
  `sjleixingName` varchar(255) DEFAULT NULL,
  `sjxingtaiId` int(11) DEFAULT NULL,
  `sjxingtaiName` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `bumenId` int(11) DEFAULT NULL,
  `bumenName` varchar(255) DEFAULT NULL,
  `buyuanId` int(11) DEFAULT NULL,
  `buyuanName` varchar(255) DEFAULT NULL,
  `yonghuId` int(11) DEFAULT NULL,
  `yonghuName` varchar(255) DEFAULT NULL,
  `byumenId` int(11) DEFAULT NULL,
  `byumenName` varchar(255) DEFAULT NULL,
  `byuyuanId` int(11) DEFAULT NULL,
  `byuyuanName` varchar(255) DEFAULT NULL,
  `buzhiId` int(11) DEFAULT NULL,
  `buzhiName` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  `byuzhiId` int(11) DEFAULT NULL,
  `byuzhiName` varchar(255) DEFAULT NULL,
  `yhroleId` int(11) DEFAULT NULL,
  `yhroleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`shujuId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_shuju
-- ----------------------------
INSERT INTO `t_shuju` VALUES ('1', '居民1', '123456789123456780', '男', '居民居民居民居民', null, '2021-03-16 11:57:53', null, '20', null, null, null, null, null, null, null, '0', null, null, '/file/00.jpg', '00.jpg', '1', '房屋1', null, null, '1', 'yonghu1', null, null, null, null, null, null, null, null, null, null, '1', '网格信1', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_sjduochu`
-- ----------------------------
DROP TABLE IF EXISTS `t_sjduochu`;
CREATE TABLE `t_sjduochu` (
  `sjduochuId` int(11) NOT NULL AUTO_INCREMENT,
  `sjduochuName` varchar(255) DEFAULT NULL,
  `sjduochuMark` varchar(2550) DEFAULT NULL,
  `sjduochuMark1` varchar(2550) DEFAULT NULL,
  `sjduochuMark2` varchar(2550) DEFAULT NULL,
  `sjduochuMark3` varchar(2550) DEFAULT NULL,
  `sjduochuDate` datetime DEFAULT NULL,
  `sjduochuDate1` datetime DEFAULT NULL,
  `sjduochuZong` int(11) DEFAULT NULL,
  `sjduochuZong1` int(11) DEFAULT NULL,
  `sjduochuZong2` int(11) DEFAULT NULL,
  `sjduochuDouble` double DEFAULT NULL,
  `sjduochuDouble1` double DEFAULT NULL,
  `sjduochuDouble2` double DEFAULT NULL,
  `sjduochuType` int(11) DEFAULT NULL,
  `sjduochuType1` int(11) DEFAULT NULL,
  `sjduochuType2` int(11) DEFAULT NULL,
  `sjqitaId` int(11) DEFAULT NULL,
  `sjqitaName` varchar(255) DEFAULT NULL,
  `sjlaiyuanId` int(11) DEFAULT NULL,
  `sjlaiyuanName` varchar(255) DEFAULT NULL,
  `sjduochuImg` varchar(255) DEFAULT NULL,
  `sjduochuImgName` varchar(255) DEFAULT NULL,
  `shujuId` int(11) DEFAULT NULL,
  `shujuName` varchar(255) DEFAULT NULL,
  `sjleixingId` int(11) DEFAULT NULL,
  `sjleixingName` varchar(255) DEFAULT NULL,
  `sjxingtaiId` int(11) DEFAULT NULL,
  `sjxingtaiName` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `bumenId` int(11) DEFAULT NULL,
  `bumenName` varchar(255) DEFAULT NULL,
  `buyuanId` int(11) DEFAULT NULL,
  `buyuanName` varchar(255) DEFAULT NULL,
  `yonghuId` int(11) DEFAULT NULL,
  `yonghuName` varchar(255) DEFAULT NULL,
  `byumenId` int(11) DEFAULT NULL,
  `byumenName` varchar(255) DEFAULT NULL,
  `byuyuanId` int(11) DEFAULT NULL,
  `byuyuanName` varchar(255) DEFAULT NULL,
  `buzhiId` int(11) DEFAULT NULL,
  `buzhiName` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  `byuzhiId` int(11) DEFAULT NULL,
  `byuzhiName` varchar(255) DEFAULT NULL,
  `yhroleId` int(11) DEFAULT NULL,
  `yhroleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sjduochuId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sjduochu
-- ----------------------------
INSERT INTO `t_sjduochu` VALUES ('1', '场所信息1', '场所信息', '场所信息', '13012345678', null, '2021-03-16 11:58:09', null, null, null, null, null, null, null, '0', null, null, null, null, null, null, '/file/00.jpg', '00.jpg', null, null, null, null, null, null, '1', 'yonghu1', null, null, null, null, null, null, null, null, null, null, '1', '网格信1', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_sjjianchu`
-- ----------------------------
DROP TABLE IF EXISTS `t_sjjianchu`;
CREATE TABLE `t_sjjianchu` (
  `sjjianchuId` int(11) NOT NULL AUTO_INCREMENT,
  `sjjianchuName` varchar(255) DEFAULT NULL,
  `sjjianchuMark` varchar(2550) DEFAULT NULL,
  `sjjianchuMark1` varchar(2550) DEFAULT NULL,
  `sjjianchuMark2` varchar(2550) DEFAULT NULL,
  `sjjianchuMark3` varchar(2550) DEFAULT NULL,
  `sjjianchuDate` datetime DEFAULT NULL,
  `sjjianchuDate1` datetime DEFAULT NULL,
  `sjjianchuZong` int(11) DEFAULT NULL,
  `sjjianchuZong1` int(11) DEFAULT NULL,
  `sjjianchuZong2` int(11) DEFAULT NULL,
  `sjjianchuDouble` double DEFAULT NULL,
  `sjjianchuDouble1` double DEFAULT NULL,
  `sjjianchuDouble2` double DEFAULT NULL,
  `sjjianchuType` int(11) DEFAULT NULL,
  `sjjianchuType1` int(11) DEFAULT NULL,
  `sjjianchuType2` int(11) DEFAULT NULL,
  `sjqitaId` int(11) DEFAULT NULL,
  `sjqitaName` varchar(255) DEFAULT NULL,
  `sjlaiyuanId` int(11) DEFAULT NULL,
  `sjlaiyuanName` varchar(255) DEFAULT NULL,
  `sjjianchuImg` varchar(255) DEFAULT NULL,
  `sjjianchuImgName` varchar(255) DEFAULT NULL,
  `shujuId` int(11) DEFAULT NULL,
  `shujuName` varchar(255) DEFAULT NULL,
  `sjleixingId` int(11) DEFAULT NULL,
  `sjleixingName` varchar(255) DEFAULT NULL,
  `sjxingtaiId` int(11) DEFAULT NULL,
  `sjxingtaiName` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `bumenId` int(11) DEFAULT NULL,
  `bumenName` varchar(255) DEFAULT NULL,
  `buyuanId` int(11) DEFAULT NULL,
  `buyuanName` varchar(255) DEFAULT NULL,
  `yonghuId` int(11) DEFAULT NULL,
  `yonghuName` varchar(255) DEFAULT NULL,
  `byumenId` int(11) DEFAULT NULL,
  `byumenName` varchar(255) DEFAULT NULL,
  `byuyuanId` int(11) DEFAULT NULL,
  `byuyuanName` varchar(255) DEFAULT NULL,
  `buzhiId` int(11) DEFAULT NULL,
  `buzhiName` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  `byuzhiId` int(11) DEFAULT NULL,
  `byuzhiName` varchar(255) DEFAULT NULL,
  `yhroleId` int(11) DEFAULT NULL,
  `yhroleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sjjianchuId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sjjianchu
-- ----------------------------
INSERT INTO `t_sjjianchu` VALUES ('1', '纠纷信息1', '纠纷信息', '纠纷信息', '纠纷信息', '纠纷信息纠纷信息纠纷信息纠纷信息', '2021-03-16 11:58:21', null, null, null, null, null, null, null, '0', null, null, null, null, null, null, '/file/01.jpg', '01.jpg', null, null, null, null, null, null, '1', 'yonghu1', null, null, null, null, null, null, null, null, null, null, '1', '网格信1', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_sjleixing`
-- ----------------------------
DROP TABLE IF EXISTS `t_sjleixing`;
CREATE TABLE `t_sjleixing` (
  `sjleixingId` int(11) NOT NULL AUTO_INCREMENT,
  `sjleixingName` varchar(255) DEFAULT NULL,
  `sjleixingMark` varchar(255) DEFAULT NULL,
  `sjleixingMark1` varchar(255) DEFAULT NULL,
  `sjleixingMark2` varchar(255) DEFAULT NULL,
  `sjleixingPhone` varchar(255) DEFAULT NULL,
  `sjleixingDizhi` varchar(255) DEFAULT NULL,
  `sjleixingDate` datetime DEFAULT NULL,
  `sjleixingDate1` datetime DEFAULT NULL,
  `sjleixingType` int(11) DEFAULT NULL,
  `sjleixingType1` int(11) DEFAULT NULL,
  `sjleixingDouble` double DEFAULT NULL,
  `sjleixingDouble1` double DEFAULT NULL,
  PRIMARY KEY (`sjleixingId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sjleixing
-- ----------------------------
INSERT INTO `t_sjleixing` VALUES ('1', '房屋1', '房屋房屋房屋', '200', '房屋房屋', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `userPassword` varchar(255) DEFAULT NULL,
  `userXingming` varchar(255) DEFAULT NULL,
  `userSex` int(11) DEFAULT NULL,
  `userAge` int(11) DEFAULT NULL,
  `userMinzu` varchar(255) DEFAULT NULL,
  `userPhone` varchar(255) DEFAULT NULL,
  `userMark` varchar(2550) DEFAULT NULL,
  `userMark1` varchar(255) DEFAULT NULL,
  `userMark2` varchar(255) DEFAULT NULL,
  `userMark3` varchar(255) DEFAULT NULL,
  `userMark4` varchar(255) DEFAULT NULL,
  `userDate` datetime DEFAULT NULL,
  `userDate1` datetime DEFAULT NULL,
  `userDate2` datetime DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `userType1` int(11) DEFAULT NULL,
  `userType2` int(11) DEFAULT NULL,
  `userDouble` double DEFAULT NULL,
  `userDouble1` double DEFAULT NULL,
  `userDouble2` double DEFAULT NULL,
  `userZong` int(11) DEFAULT NULL,
  `userZong1` int(11) DEFAULT NULL,
  `userZong2` int(11) DEFAULT NULL,
  `userImg` varchar(255) DEFAULT NULL,
  `userImgName` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  `bumenId` int(11) DEFAULT NULL,
  `bumenName` varchar(255) DEFAULT NULL,
  `buyuanId` int(11) DEFAULT NULL,
  `buyuanName` varchar(255) DEFAULT NULL,
  `buzhiId` int(11) DEFAULT NULL,
  `buzhiName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'yonghu1', 'yonghu1', 'yonghu1', '1', '22', null, '13012345678', null, 'yonghu1', null, null, null, '2021-03-16 11:56:31', null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '网格信1');

-- ----------------------------
-- Table structure for `t_uxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `t_uxinxi`;
CREATE TABLE `t_uxinxi` (
  `uxinxiId` int(11) NOT NULL AUTO_INCREMENT,
  `uxinxiName` varchar(255) DEFAULT NULL,
  `uxinxiMark` varchar(2550) DEFAULT NULL,
  `uxinxiMark1` varchar(2550) DEFAULT NULL,
  `uxinxiMark2` varchar(2550) DEFAULT NULL,
  `uxinxiImg` varchar(255) DEFAULT NULL,
  `uxinxiImgName` varchar(255) DEFAULT NULL,
  `uxinxiDate` datetime DEFAULT NULL,
  `uxinxiZong` int(11) DEFAULT NULL,
  `uxinxiZong1` int(11) DEFAULT NULL,
  `uxinxiZong2` int(11) DEFAULT NULL,
  `uxinxiDouble` double DEFAULT NULL,
  `uxinxiDouble1` double DEFAULT NULL,
  `uxinxiDouble2` double DEFAULT NULL,
  `uxinxiType` int(11) DEFAULT NULL,
  `uxinxiType1` int(11) DEFAULT NULL,
  `uxinxiType2` int(11) DEFAULT NULL,
  `uxtypeId` int(11) DEFAULT NULL,
  `uxtypeName` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `bumenId` int(11) DEFAULT NULL,
  `bumenName` varchar(255) DEFAULT NULL,
  `buyuanId` int(11) DEFAULT NULL,
  `buyuanName` varchar(255) DEFAULT NULL,
  `buzhiId` int(11) DEFAULT NULL,
  `buzhiName` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uxinxiId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_uxinxi
-- ----------------------------
INSERT INTO `t_uxinxi` VALUES ('1', '网格长绩效1', '网格长绩效网格长绩效网格长绩效网格长绩效网格长绩效', null, null, null, null, '2021-03-16 11:56:53', '80', null, null, null, null, null, null, null, null, '1', '考勤', '1', 'yonghu1', null, null, null, null, '1', '网格信1', null, null);

-- ----------------------------
-- Table structure for `t_uxtype`
-- ----------------------------
DROP TABLE IF EXISTS `t_uxtype`;
CREATE TABLE `t_uxtype` (
  `uxtypeId` int(11) NOT NULL AUTO_INCREMENT,
  `uxtypeName` varchar(255) DEFAULT NULL,
  `uxtypeMark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uxtypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_uxtype
-- ----------------------------
INSERT INTO `t_uxtype` VALUES ('1', '考勤', '考勤考勤');

-- ----------------------------
-- Table structure for `t_uyijian`
-- ----------------------------
DROP TABLE IF EXISTS `t_uyijian`;
CREATE TABLE `t_uyijian` (
  `uyijianId` int(11) NOT NULL AUTO_INCREMENT,
  `uyijianName` varchar(255) DEFAULT NULL,
  `uyijianMark` varchar(2550) DEFAULT NULL,
  `uyijianMark1` varchar(2550) DEFAULT NULL,
  `uyijianMark2` varchar(2550) DEFAULT NULL,
  `uyijianImg` varchar(255) DEFAULT NULL,
  `uyijianImgName` varchar(255) DEFAULT NULL,
  `uyijianDate` datetime DEFAULT NULL,
  `uyijianZong` int(11) DEFAULT NULL,
  `uyijianZong1` int(11) DEFAULT NULL,
  `uyijianZong2` int(11) DEFAULT NULL,
  `uyijianDouble` double DEFAULT NULL,
  `uyijianDouble1` double DEFAULT NULL,
  `uyijianDouble2` double DEFAULT NULL,
  `uyijianType` int(11) DEFAULT NULL,
  `uyijianType1` int(11) DEFAULT NULL,
  `uyijianType2` int(11) DEFAULT NULL,
  `uxtypeId` int(11) DEFAULT NULL,
  `uxtypeName` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `bumenId` int(11) DEFAULT NULL,
  `bumenName` varchar(255) DEFAULT NULL,
  `buyuanId` int(11) DEFAULT NULL,
  `buyuanName` varchar(255) DEFAULT NULL,
  `buzhiId` int(11) DEFAULT NULL,
  `buzhiName` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uyijianId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_uyijian
-- ----------------------------
INSERT INTO `t_uyijian` VALUES ('1', '网格长日志1', '网格长日志网格长日志网格长日志', '撒旦法范德萨阿斯顿发达的说法发送到', null, '/file/shangchuan.docx', 'shangchuan.docx', '2021-03-16 11:57:15', null, null, null, null, null, null, null, null, null, null, null, '1', 'yonghu1', null, null, null, null, '1', '网格信1', null, null);
