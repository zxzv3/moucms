/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3300
Source Database       : moucms

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-10-23 18:05:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for moucms_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `moucms_admin_user`;
CREATE TABLE `moucms_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_group` int(11) NOT NULL,
  `username` varchar(16) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `slat` int(6) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `lost_time` datetime DEFAULT NULL,
  `login_ip` varchar(16) DEFAULT NULL,
  `lost_ip` varchar(16) DEFAULT NULL,
  `login_count` int(11) DEFAULT NULL,
  `state` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moucms_admin_user
-- ----------------------------

-- ----------------------------
-- Table structure for moucms_interface
-- ----------------------------
DROP TABLE IF EXISTS `moucms_interface`;
CREATE TABLE `moucms_interface` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) DEFAULT NULL,
  `description` varchar(64) DEFAULT NULL,
  `open` tinyint(1) DEFAULT NULL COMMENT '0 开放\r\n1 关闭',
  `type` int(2) DEFAULT NULL COMMENT '0 不做验证\r\n1 密码\r\n2 用户名\r\n3 手机号\r\n4 身份证\r\n5 邮箱号码\r\n6 图片\r\n7 验证码\r\n8 数字\r\n9 字母\r\n10 汉字\r\n11 英文',
  `from_group` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT '0',
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moucms_interface
-- ----------------------------
INSERT INTO `moucms_interface` VALUES ('1', 'api/admin/Admin_user/login', null, '0', null, null, '0', '{\"username\":{\"max\":1,\"min\":10}}');

-- ----------------------------
-- Table structure for moucms_setting
-- ----------------------------
DROP TABLE IF EXISTS `moucms_setting`;
CREATE TABLE `moucms_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `description` varchar(62) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `type` int(1) DEFAULT '0' COMMENT '0 text\r\n1 radio\r\n2 select\r\n3 image\r\n4 checkbox\r\n5 switch',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moucms_setting
-- ----------------------------
INSERT INTO `moucms_setting` VALUES ('1', 'defaultTitle', '默认标题', '测试', '0');
