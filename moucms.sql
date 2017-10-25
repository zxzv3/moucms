/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3300
Source Database       : moucms

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-10-25 12:03:06
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moucms_admin_user
-- ----------------------------
INSERT INTO `moucms_admin_user` VALUES ('1', '23', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for moucms_error_log
-- ----------------------------
DROP TABLE IF EXISTS `moucms_error_log`;
CREATE TABLE `moucms_error_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_params` text,
  `get_params` text,
  `level` int(2) DEFAULT NULL,
  `message` varchar(512) DEFAULT NULL,
  `file` varchar(1024) DEFAULT NULL,
  `line` varchar(126) DEFAULT NULL,
  `error_time` datetime DEFAULT NULL,
  `from_interface` int(11) NOT NULL,
  `backtrace` text,
  `uri` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moucms_error_log
-- ----------------------------
INSERT INTO `moucms_error_log` VALUES ('1', null, null, '0', 'Unable to locate the model you have specified: Admin_user_2model', 'F:\\xampp\\htdocs\\moucms\\application\\system\\core\\Loader.php', '344', '2017-10-25 05:23:49', '1', '[{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\controllers\\\\api\\\\admin\\\\Admin_user.php\",\"line\":9,\"function\":\"model\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\controllers\\\\api\\\\interface.lib.php\",\"line\":54,\"function\":\"login\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\system\\\\core\\\\CodeIgniter.php\",\"line\":532,\"function\":\"call_user_func_array\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\index.php\",\"line\":321,\"function\":\"require_once\"}]', 'api/admin/admin_user/login');
INSERT INTO `moucms_error_log` VALUES ('2', null, null, '0', 'Unable to locate the model you have specified: Admin_user_2model', 'F:\\xampp\\htdocs\\moucms\\application\\system\\core\\Loader.php', '344', '2017-10-25 05:31:43', '1', '[{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\controllers\\\\api\\\\admin\\\\Admin_user.php\",\"line\":9,\"function\":\"model\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\controllers\\\\api\\\\interface.lib.php\",\"line\":54,\"function\":\"login\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\system\\\\core\\\\CodeIgniter.php\",\"line\":532,\"function\":\"call_user_func_array\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\index.php\",\"line\":321,\"function\":\"require_once\"}]', 'api/admin/admin_user/login');
INSERT INTO `moucms_error_log` VALUES ('3', '{\"username\":\"12312312\",\"password\":\"12312312\",\"verification\":\"3123\"}', '[]', '0', 'Unable to locate the model you have specified: Admin_user_2model', 'F:\\xampp\\htdocs\\moucms\\application\\system\\core\\Loader.php', '344', '2017-10-25 05:33:03', '1', '[{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\controllers\\\\api\\\\admin\\\\Admin_user.php\",\"line\":9,\"function\":\"model\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\controllers\\\\api\\\\interface.lib.php\",\"line\":54,\"function\":\"login\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\system\\\\core\\\\CodeIgniter.php\",\"line\":532,\"function\":\"call_user_func_array\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\index.php\",\"line\":321,\"function\":\"require_once\"}]', 'api/admin/admin_user/login');
INSERT INTO `moucms_error_log` VALUES ('4', '{\"username\":\"12312312\",\"password\":\"12312312\",\"verification\":\"3123\"}', '[]', '0', 'Unable to locate the model you have specified: Admin_user_2model', 'F:\\xampp\\htdocs\\moucms\\application\\system\\core\\Loader.php', '344', '2017-10-25 05:33:31', '1', '[{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\controllers\\\\api\\\\admin\\\\Admin_user.php\",\"line\":9,\"function\":\"model\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\controllers\\\\api\\\\interface.lib.php\",\"line\":54,\"function\":\"login\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\system\\\\core\\\\CodeIgniter.php\",\"line\":532,\"function\":\"call_user_func_array\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\index.php\",\"line\":321,\"function\":\"require_once\"}]', 'api/admin/admin_user/login');
INSERT INTO `moucms_error_log` VALUES ('5', '{\"username\":\"12312312\",\"password\":\"12312312\",\"verification\":\"3123\"}', '[]', '8', 'Undefined variable: _SESSION', 'F:\\xampp\\htdocs\\moucms\\application\\hooks\\AnomalyCapture.php', '56', '2017-10-25 05:33:31', '1', '[]', 'api/admin/admin_user/login');
INSERT INTO `moucms_error_log` VALUES ('6', '{\"username\":\"12312312\",\"password\":\"12312312\",\"verification\":\"3123\"}', '[]', '0', 'Unable to locate the model you have specified: Admin_user_2model', 'F:\\xampp\\htdocs\\moucms\\application\\system\\core\\Loader.php', '344', '2017-10-25 05:33:54', '1', '[{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\controllers\\\\api\\\\admin\\\\Admin_user.php\",\"line\":9,\"function\":\"model\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\controllers\\\\api\\\\interface.lib.php\",\"line\":54,\"function\":\"login\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\system\\\\core\\\\CodeIgniter.php\",\"line\":532,\"function\":\"call_user_func_array\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\index.php\",\"line\":321,\"function\":\"require_once\"}]', 'api/admin/admin_user/login');
INSERT INTO `moucms_error_log` VALUES ('7', '{\"username\":\"12312312\",\"password\":\"12312312\",\"verification\":\"3123\"}', '[]', '0', 'Unable to locate the model you have specified: Admin_user_2model', 'F:\\xampp\\htdocs\\moucms\\application\\system\\core\\Loader.php', '344', '2017-10-25 05:38:43', '1', '[{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\controllers\\\\api\\\\admin\\\\Admin_user.php\",\"line\":9,\"function\":\"model\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\controllers\\\\api\\\\interface.lib.php\",\"line\":54,\"function\":\"login\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\system\\\\core\\\\CodeIgniter.php\",\"line\":532,\"function\":\"call_user_func_array\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\index.php\",\"line\":321,\"function\":\"require_once\"}]', 'api/admin/admin_user/login');
INSERT INTO `moucms_error_log` VALUES ('8', '{\"username\":\"12312312\",\"password\":\"12312312\",\"verification\":\"3123\"}', '[]', '1', 'Class \'Mcoums\' not found', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Admin_user.php', '10', '2017-10-25 05:44:26', '1', '[]', 'api/admin/admin_user/login');
INSERT INTO `moucms_error_log` VALUES ('9', '{\"username\":\"12312312\",\"password\":\"12312312\",\"verification\":\"3123\"}', '[]', '8', 'Undefined property: stdClass::$verification', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Admin_user.php', '17', '2017-10-25 05:49:22', '1', '[]', 'api/admin/admin_user/login');
INSERT INTO `moucms_error_log` VALUES ('10', '{\"username\":\"12312312\",\"password\":\"12312312\",\"verification\":\"3123\"}', '[]', '8', 'Undefined variable: _SESSION', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Admin_user.php', '17', '2017-10-25 05:49:22', '1', '[]', 'api/admin/admin_user/login');
INSERT INTO `moucms_error_log` VALUES ('11', '{\"username\":\"12312312\",\"password\":\"12312312\",\"verification\":\"3123\"}', '[]', '8', 'Undefined property: stdClass::$verification', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Admin_user.php', '17', '2017-10-25 05:53:03', '1', '[]', 'api/admin/admin_user/login');
INSERT INTO `moucms_error_log` VALUES ('12', '{\"username\":\"12312312\",\"password\":\"12312312\",\"verification\":\"3123\"}', '[]', '8', 'Undefined variable: _SESSION', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Admin_user.php', '17', '2017-10-25 05:53:03', '1', '[]', 'api/admin/admin_user/login');
INSERT INTO `moucms_error_log` VALUES ('13', '{\"username\":\"12312312\",\"password\":\"12312312\",\"verification\":\"3123\"}', '[]', '8', 'Undefined property: stdClass::$verification', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Admin_user.php', '17', '2017-10-25 05:53:25', '1', '[]', 'api/admin/admin_user/login');
INSERT INTO `moucms_error_log` VALUES ('14', '{\"username\":\"12312312\",\"password\":\"12312312\",\"verification\":\"3123\"}', '[]', '8', 'Undefined index: verification', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Admin_user.php', '17', '2017-10-25 05:53:25', '1', '[]', 'api/admin/admin_user/login');

-- ----------------------------
-- Table structure for moucms_interface
-- ----------------------------
DROP TABLE IF EXISTS `moucms_interface`;
CREATE TABLE `moucms_interface` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `group` varchar(512) DEFAULT NULL,
  `uri` varchar(512) DEFAULT NULL,
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
INSERT INTO `moucms_interface` VALUES ('1', 'Admin_user.php', 'login', 'api/admin', 'api/admin/admin_user/login', null, '0', null, null, '0', '{\"username\":{\"max\":1,\"min\":10}}');

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
