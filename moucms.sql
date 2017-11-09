/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3300
Source Database       : moucms

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-11-09 18:34:38
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
INSERT INTO `moucms_admin_user` VALUES ('1', '23', 'admin', 'e49504be6c931321a08211580d3ac76d', '847382', '2017-10-25 14:34:04', '2017-11-09 01:21:08', '2017-11-08 03:48:00', '127.0.0.1', '127.0.0.1', '24', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moucms_error_log
-- ----------------------------
INSERT INTO `moucms_error_log` VALUES ('77', '[]', '[]', '8', 'Undefined index: username', 'F:\\xampp\\htdocs\\moucms\\application\\libraries\\Moucms.php', '14', '2017-10-25 08:44:15', '0', '[]', 'admin/home/index');
INSERT INTO `moucms_error_log` VALUES ('78', '[]', '[]', '8', 'Undefined index: username', 'F:\\xampp\\htdocs\\moucms\\application\\libraries\\Moucms.php', '14', '2017-10-25 08:44:45', '0', '[]', 'admin/home/index');
INSERT INTO `moucms_error_log` VALUES ('79', '[]', '[]', '8', 'Undefined index: username', 'F:\\xampp\\htdocs\\moucms\\application\\libraries\\Moucms.php', '14', '2017-10-25 08:44:53', '0', '[]', 'admin/home/index');
INSERT INTO `moucms_error_log` VALUES ('80', '{\"from_table_group\":\"0\",\"name\":\"3123213\",\"moudles\":\"213213\",\"main_moudle\":\"21321312\",\"row_setup_function\":\"\",\"uid\":\"21321312\",\"row_base_function\":[\"edit\",\"remove\"],\"table_base_function\":[\"search\",\"removeAll\",\"create\"]}', '[]', '0', 'F:\\xampp\\htdocs\\moucms\\application\\models/Table_model.php exists, but doesn\'t declare class Table_model', 'F:\\xampp\\htdocs\\moucms\\application\\system\\core\\Loader.php', '336', '2017-11-08 10:14:26', '2', '[{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\controllers\\\\api\\\\admin\\\\Table.php\",\"line\":6,\"function\":\"model\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\system\\\\core\\\\CodeIgniter.php\",\"line\":518,\"function\":\"__construct\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\index.php\",\"line\":321,\"function\":\"require_once\"}]', 'api/admin/table/create');
INSERT INTO `moucms_error_log` VALUES ('81', '{\"from_table_group\":\"0\",\"name\":\"3123213\",\"moudles\":\"213213\",\"main_moudle\":\"21321312\",\"row_setup_function\":\"\",\"uid\":\"21321312\",\"row_base_function\":[\"edit\",\"remove\"],\"table_base_function\":[\"search\",\"removeAll\",\"create\"]}', '[]', '0', 'F:\\xampp\\htdocs\\moucms\\application\\models/Table_model.php exists, but doesn\'t declare class Table_model', 'F:\\xampp\\htdocs\\moucms\\application\\system\\core\\Loader.php', '336', '2017-11-08 10:15:11', '2', '[{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\controllers\\\\api\\\\admin\\\\Table.php\",\"line\":6,\"function\":\"model\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\system\\\\core\\\\CodeIgniter.php\",\"line\":518,\"function\":\"__construct\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\index.php\",\"line\":321,\"function\":\"require_once\"}]', 'api/admin/table/create');
INSERT INTO `moucms_error_log` VALUES ('82', '{\"from_table_group\":\"0\",\"name\":\"3123213\",\"moudles\":\"213213\",\"main_moudle\":\"21321312\",\"row_setup_function\":\"\",\"uid\":\"21321312\",\"row_base_function\":[\"edit\",\"remove\"],\"table_base_function\":[\"search\",\"removeAll\",\"create\"]}', '[]', '64', 'Cannot redeclare class Table', 'F:\\xampp\\htdocs\\moucms\\application\\models\\Table_model.php', '10', '2017-11-08 10:15:54', '2', '[]', 'api/admin/table/create');
INSERT INTO `moucms_error_log` VALUES ('83', '{\"from_table_group\":\"0\",\"name\":\"3123213\",\"moudles\":\"213213\",\"main_moudle\":\"21321312\",\"row_setup_function\":\"\",\"uid\":\"321312\",\"row_base_function\":[\"edit\",\"remove\"],\"table_base_function\":[\"search\",\"removeAll\",\"create\"]}', '[]', '8', 'Undefined property: Table::$Table_group_model', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table.php', '17', '2017-11-08 10:19:46', '2', '[]', 'api/admin/table/create');
INSERT INTO `moucms_error_log` VALUES ('84', '{\"from_table_group\":\"0\",\"name\":\"3123213\",\"moudles\":\"213213\",\"main_moudle\":\"21321312\",\"row_setup_function\":\"\",\"uid\":\"321312\",\"row_base_function\":[\"edit\",\"remove\"],\"table_base_function\":[\"search\",\"removeAll\",\"create\"]}', '[]', '1', 'Call to a member function is_exist() on null', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table.php', '17', '2017-11-08 10:19:46', '2', '[]', 'api/admin/table/create');
INSERT INTO `moucms_error_log` VALUES ('85', '{\"name\":\"312321\"}', '[]', '8', 'Undefined property: stdClass::$from_table_group', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_group.php', '18', '2017-11-09 01:31:42', '3', '[]', 'api/admin/table_group/create');
INSERT INTO `moucms_error_log` VALUES ('86', '[]', '{\"id\":\"62\"}', '2', 'show_source() expects at least 1 parameter, 0 given', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '31', '2017-11-09 03:29:46', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('87', '[]', '{\"id\":\"62\"}', '2', 'show_source() expects at least 1 parameter, 0 given', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '31', '2017-11-09 03:29:48', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('88', '[]', '{\"id\":\"62\"}', '2', 'show_source(1): failed to open stream: No such file or directory', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '31', '2017-11-09 03:29:53', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('89', '[]', '{\"id\":\"62\"}', '2', 'show_source(): Failed opening \'1\' for highlighting', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '31', '2017-11-09 03:29:53', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('90', '[]', '{\"id\":\"6\"}', '8', 'Undefined index: moudles', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\table\\edit.php', '52', '2017-11-09 03:30:59', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('91', '[]', '{\"id\":\"6\"}', '8', 'Undefined index: main_moudle', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\table\\edit.php', '56', '2017-11-09 03:30:59', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('92', '[]', '{\"id\":\"6\"}', '8', 'Undefined index: row_count', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\table\\edit.php', '110', '2017-11-09 03:30:59', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('93', '[]', '{\"id\":\"6\"}', '8', 'Undefined index: moudles', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\table\\edit.php', '52', '2017-11-09 03:31:48', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('94', '[]', '{\"id\":\"6\"}', '8', 'Undefined index: main_moudle', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\table\\edit.php', '56', '2017-11-09 03:31:48', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('95', '[]', '{\"id\":\"6\"}', '8', 'Undefined index: moudles', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\table\\edit.php', '52', '2017-11-09 03:31:56', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('96', '[]', '{\"id\":\"6\"}', '8', 'Undefined index: main_moudle', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\table\\edit.php', '56', '2017-11-09 03:31:56', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('97', '[]', '{\"id\":\"6\"}', '2', 'implode(): Invalid arguments passed', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '24', '2017-11-09 03:35:47', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('98', '[]', '{\"id\":\"6\"}', '2', 'implode(): Invalid arguments passed', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '24', '2017-11-09 03:35:49', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('99', '[]', '{\"id\":\"6\"}', '2', 'implode(): Invalid arguments passed', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '24', '2017-11-09 03:36:04', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('100', '[]', '{\"id\":\"6\"}', '2', 'implode(): Invalid arguments passed', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '24', '2017-11-09 03:36:04', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('101', '[]', '{\"id\":\"6\"}', '2', 'implode(): Invalid arguments passed', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '24', '2017-11-09 03:36:08', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('102', '[]', '{\"id\":\"6\"}', '2', 'implode(): Invalid arguments passed', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '26', '2017-11-09 03:36:47', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('103', '[]', '{\"id\":\"6\"}', '2', 'implode(): Invalid arguments passed', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '26', '2017-11-09 03:36:49', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('104', '[]', '{\"id\":\"6\"}', '2', 'implode(): Invalid arguments passed', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '26', '2017-11-09 03:36:55', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('105', '[]', '{\"id\":\"6\"}', '2', 'implode(): Invalid arguments passed', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '26', '2017-11-09 03:39:28', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('106', '[]', '{\"id\":\"5\"}', '2', 'implode(): Invalid arguments passed', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '26', '2017-11-09 03:39:47', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('107', '[]', '{\"id\":\"7\"}', '8', 'Undefined variable: Title_data', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\table\\edit.php', '174', '2017-11-09 03:46:31', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('108', '[]', '{\"id\":\"7\"}', '8', 'Undefined variable: Title_data', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\table\\edit.php', '174', '2017-11-09 03:46:32', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('109', '[]', '{\"id\":\"7\"}', '8', 'Undefined variable: Title_data', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\table\\edit.php', '174', '2017-11-09 03:46:34', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('110', '[]', '{\"id\":\"7\"}', '8', 'Undefined variable: Title_data', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\table\\edit.php', '174', '2017-11-09 03:46:58', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('111', '[]', '{\"id\":\"7\"}', '8', 'Undefined variable: Title_data', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\table\\edit.php', '174', '2017-11-09 03:47:07', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('112', '{\"from_table_group\":\"15\",\"name\":\"\\u7528\\u6237\\u5217\\u88682\",\"moudles\":\"\",\"main_moudle\":\"user\",\"row_setup_function\":\"lock,eys\",\"uid\":\"user\",\"page_count\":\"\",\"id\":\"9\",\"row_base_function\":[\"edit\",\"remove\"],\"table_base_function\":[\"search\",\"removeAll\",\"create\"]}', '[]', '8', 'Undefined property: Table::$id', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table.php', '22', '2017-11-09 03:54:13', '4', '[]', 'api/admin/table/edit');
INSERT INTO `moucms_error_log` VALUES ('113', '{\"key\":\"312\",\"name\":\"312321\",\"create\":\"0\",\"edit\":\"0\",\"delete\":\"0\",\"view\":\"0\",\"from_table\":\"9\"}', '[]', '4', 'syntax error, unexpected \')\'', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table.php', '24', '2017-11-09 05:08:14', '6', '[]', 'api/admin/table/createfield');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moucms_interface
-- ----------------------------
INSERT INTO `moucms_interface` VALUES ('1', 'Admin_user.php', 'login', 'api/admin', 'api/admin/admin_user/login', null, '0', null, null, '0', '{\"username\":{\"max\":5,\"min\":16,\"name\":\"用户名\"},\"password\":{\"max\":5,\"min\":16,\"name\":\"用户名\"},\"verification\":{\"max\":4,\"min\":4,\"name\":\"验证码\"}}');
INSERT INTO `moucms_interface` VALUES ('2', 'Table.php', 'create', 'api/admin', 'api/admin/table/create', null, '0', null, null, '0', '{\"from_table_group\":{\"max\":1,\"min\":10,\"name\":\"所属表单组\"},\"name\":{\"max\":1,\"min\":32,\"name\":\"表单名称\"},\"moudles\":{\"max\":0,\"min\":512,\"name\":\"辅数据表名\"},\"main_moudle\":{\"max\":1,\"min\":10,\"name\":\"主数据表名\"},\"row_setup_function\":{\"max\":0,\"min\":512,\"name\":\"自设功能\"},\"uid\":{\"max\":3,\"min\":20,\"name\":\"表单标识符\"},\"uid\":{\"max\":3,\"min\":20,\"name\":\"表单标识符\"}}');
INSERT INTO `moucms_interface` VALUES ('3', 'Table_group.php', 'create', 'api/admin', 'api/admin/table_group/create', null, '0', null, null, '0', '{\"name\":{\"max\":16,\"main\":1}}');
INSERT INTO `moucms_interface` VALUES ('4', 'Table.php', 'edit', 'api/admin', 'api/admin/table/edit', '', '0', null, null, '0', '{\"id\" : {\"max\":11,\"min\":1} ,\"from_table_group\":{\"max\":1,\"min\":10,\"name\":\"所属表单组\"},\"name\":{\"max\":1,\"min\":32,\"name\":\"表单名称\"},\"moudles\":{\"max\":0,\"min\":512,\"name\":\"辅数据表名\"},\"main_moudle\":{\"max\":1,\"min\":10,\"name\":\"主数据表名\"},\"row_setup_function\":{\"max\":0,\"min\":512,\"name\":\"自设功能\"},\"uid\":{\"max\":3,\"min\":20,\"name\":\"表单标识符\"},\"uid\":{\"max\":3,\"min\":20,\"name\":\"表单标识符\"}}');
INSERT INTO `moucms_interface` VALUES ('5', 'Table.php', 'remove', 'api/admin', 'api/admin/table/remove', null, '0', null, null, '0', '{\"id\" : {\"max\":11,\"min\":1}}');
INSERT INTO `moucms_interface` VALUES ('6', 'Table.php', 'createfield', 'api/admin', 'api/admin/table/createfield', null, '0', null, null, '0', '{\"from_table\" : {\"max\" : 16 , \"min\" : 1} , \"key\" : {\"max\" : 26 , \"min\" : 1},\"name\" : {\"max\" : 16 , \"min\" : 1},\"create\" : {\"max\" : 1 , \"min\" : 1},\"edit\" : {\"max\" : 1 , \"min\" : 1},\"delete\" : {\"max\" : 1 , \"min\" : 1},\"view\" : {\"max\" : 1 , \"min\" : 1}}');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moucms_setting
-- ----------------------------
INSERT INTO `moucms_setting` VALUES ('1', 'defaultTitle', '默认标题', '测试', '0');
INSERT INTO `moucms_setting` VALUES ('2', 'adminDir', '后台地址', 'admin', '0');
INSERT INTO `moucms_setting` VALUES ('3', 'basePath', '基础地址', 'http://127.168.0.1/moucms/', '0');

-- ----------------------------
-- Table structure for moucms_table
-- ----------------------------
DROP TABLE IF EXISTS `moucms_table`;
CREATE TABLE `moucms_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_table_group` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `main_modle` varchar(20) DEFAULT NULL,
  `modles` varchar(2048) DEFAULT NULL,
  `uid` varchar(32) DEFAULT NULL,
  `row_base_function` varchar(1024) DEFAULT NULL,
  `table_base_function` varchar(1024) DEFAULT NULL,
  `row_setup_function` varchar(1024) DEFAULT NULL,
  `page_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moucms_table
-- ----------------------------
INSERT INTO `moucms_table` VALUES ('9', '15', '用户列表', 'user', '[\"\"]', 'user', '[\"edit\",\"remove\"]', '[\"search\",\"create\"]', '[\"lock\",\"eys\"]', null);

-- ----------------------------
-- Table structure for moucms_table_fieid
-- ----------------------------
DROP TABLE IF EXISTS `moucms_table_fieid`;
CREATE TABLE `moucms_table_fieid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_name` varchar(26) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `from_table` int(11) DEFAULT NULL,
  `create` int(1) DEFAULT NULL,
  `edit` int(1) DEFAULT NULL,
  `delete` int(1) DEFAULT NULL,
  `view` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moucms_table_fieid
-- ----------------------------
INSERT INTO `moucms_table_fieid` VALUES ('1', '312', '312321', '9', null, null, null, null);

-- ----------------------------
-- Table structure for moucms_table_group
-- ----------------------------
DROP TABLE IF EXISTS `moucms_table_group`;
CREATE TABLE `moucms_table_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moucms_table_group
-- ----------------------------
INSERT INTO `moucms_table_group` VALUES ('15', '管理用户');
INSERT INTO `moucms_table_group` VALUES ('16', '用户管理');
