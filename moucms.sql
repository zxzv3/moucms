/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : moucms

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-11-13 10:45:29
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
INSERT INTO `moucms_admin_user` VALUES ('1', '23', 'admin', 'e49504be6c931321a08211580d3ac76d', '847382', '2017-10-25 14:34:04', '2017-11-12 09:01:29', '2017-11-12 03:41:04', '127.0.0.1', '127.0.0.1', '29', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=362 DEFAULT CHARSET=utf8;

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
INSERT INTO `moucms_error_log` VALUES ('114', '[]', '{\"id\":\"9\"}', '0', 'Unable to locate the model you have specified: Table_field_model', 'F:\\xampp\\htdocs\\moucms\\application\\system\\core\\Loader.php', '344', '2017-11-10 07:04:09', '0', '[{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\controllers\\\\admin\\\\table\\\\Home.php\",\"line\":6,\"function\":\"model\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\system\\\\core\\\\CodeIgniter.php\",\"line\":518,\"function\":\"__construct\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\index.php\",\"line\":321,\"function\":\"require_once\"}]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('115', '[]', '{\"id\":\"9\"}', '8', 'Undefined property: Home::$9', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '40', '2017-11-10 07:07:10', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('116', '{\"key\":\"312\",\"name\":\"\\u6d4b\\u8bd5\",\"create\":\"0\",\"edit\":\"0\",\"delete\":\"1\",\"view\":\"0\",\"from_table\":\"9\"}', '[]', '0', 'Unable to locate the model you have specified: Table_fieid_model', 'F:\\xampp\\htdocs\\moucms\\application\\system\\core\\Loader.php', '344', '2017-11-10 07:38:24', '6', '[{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\controllers\\\\api\\\\admin\\\\Table.php\",\"line\":8,\"function\":\"model\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\system\\\\core\\\\CodeIgniter.php\",\"line\":518,\"function\":\"__construct\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\index.php\",\"line\":321,\"function\":\"require_once\"}]', 'api/admin/table/createfield');
INSERT INTO `moucms_error_log` VALUES ('117', '{\"key\":\"312\",\"name\":\"\\u6d4b\\u8bd5\",\"create\":\"0\",\"edit\":\"0\",\"delete\":\"1\",\"view\":\"0\",\"from_table\":\"9\"}', '[]', '0', 'Unable to locate the model you have specified: Table_fieid_model', 'F:\\xampp\\htdocs\\moucms\\application\\system\\core\\Loader.php', '344', '2017-11-10 07:38:28', '6', '[{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\controllers\\\\api\\\\admin\\\\Table.php\",\"line\":8,\"function\":\"model\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\system\\\\core\\\\CodeIgniter.php\",\"line\":518,\"function\":\"__construct\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\index.php\",\"line\":321,\"function\":\"require_once\"}]', 'api/admin/table/createfield');
INSERT INTO `moucms_error_log` VALUES ('118', '{\"id\":\"8\"}', '[]', '2', 'Invalid argument supplied for foreach()', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\interface.lib.php', '40', '2017-11-10 08:04:46', '7', '[]', 'api/admin/table_field/remove');
INSERT INTO `moucms_error_log` VALUES ('119', '{\"id\":\"8\"}', '[]', '2', 'Invalid argument supplied for foreach()', 'F:\\xampp\\htdocs\\moucms\\application\\libraries\\Standard.php', '14', '2017-11-10 08:04:47', '7', '[]', 'api/admin/table_field/remove');
INSERT INTO `moucms_error_log` VALUES ('120', '{\"id\":\"8\"}', '[]', '2', 'Invalid argument supplied for foreach()', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\interface.lib.php', '53', '2017-11-10 08:04:47', '7', '[]', 'api/admin/table_field/remove');
INSERT INTO `moucms_error_log` VALUES ('121', '{\"id\":\"8\"}', '[]', '8', 'Undefined property: stdClass::$id', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '18', '2017-11-10 08:04:47', '7', '[]', 'api/admin/table_field/remove');
INSERT INTO `moucms_error_log` VALUES ('122', '{\"id\":\"8\"}', '[]', '2', 'Invalid argument supplied for foreach()', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\interface.lib.php', '40', '2017-11-10 08:04:47', '7', '[]', 'api/admin/table_field/remove');
INSERT INTO `moucms_error_log` VALUES ('123', '{\"id\":\"8\"}', '[]', '2', 'Invalid argument supplied for foreach()', 'F:\\xampp\\htdocs\\moucms\\application\\libraries\\Standard.php', '14', '2017-11-10 08:04:47', '7', '[]', 'api/admin/table_field/remove');
INSERT INTO `moucms_error_log` VALUES ('124', '{\"id\":\"8\"}', '[]', '2', 'Invalid argument supplied for foreach()', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\interface.lib.php', '53', '2017-11-10 08:04:47', '7', '[]', 'api/admin/table_field/remove');
INSERT INTO `moucms_error_log` VALUES ('125', '{\"id\":\"8\"}', '[]', '8', 'Undefined property: stdClass::$id', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '18', '2017-11-10 08:04:47', '7', '[]', 'api/admin/table_field/remove');
INSERT INTO `moucms_error_log` VALUES ('126', '{\"index\":\"null\",\"key\":\"lost_time\",\"name\":\"\\u6700\\u540e\\u767b\\u5f55\\u65f6\\u95f4\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"view\":\"0\",\"id\":\"10\",\"from_table\":\"9\"}', '[]', '8', 'Undefined property: Table_field::$Table_group_model', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '57', '2017-11-10 08:33:45', '8', '[]', 'api/admin/table_field/edit');
INSERT INTO `moucms_error_log` VALUES ('127', '{\"index\":\"null\",\"key\":\"lost_time\",\"name\":\"\\u6700\\u540e\\u767b\\u5f55\\u65f6\\u95f4\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"view\":\"0\",\"id\":\"10\",\"from_table\":\"9\"}', '[]', '1', 'Call to a member function is_exist() on null', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '57', '2017-11-10 08:33:45', '8', '[]', 'api/admin/table_field/edit');
INSERT INTO `moucms_error_log` VALUES ('128', '{\"index\":\"null\",\"key\":\"lost_time\",\"name\":\"\\u6700\\u540e\\u767b\\u5f55\\u65f6\\u95f4\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"view\":\"0\",\"id\":\"10\",\"from_table\":\"9\"}', '[]', '8', 'Undefined property: Table_field::$Table_group_model', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '57', '2017-11-10 08:34:31', '8', '[]', 'api/admin/table_field/edit');
INSERT INTO `moucms_error_log` VALUES ('129', '{\"index\":\"null\",\"key\":\"lost_time\",\"name\":\"\\u6700\\u540e\\u767b\\u5f55\\u65f6\\u95f4\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"view\":\"0\",\"id\":\"10\",\"from_table\":\"9\"}', '[]', '1', 'Call to a member function is_exist() on null', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '57', '2017-11-10 08:34:31', '8', '[]', 'api/admin/table_field/edit');
INSERT INTO `moucms_error_log` VALUES ('130', '{\"index\":\"null\",\"key\":\"lost_time\",\"name\":\"\\u6700\\u540e\\u767b\\u5f55\\u65f6\\u95f4\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"view\":\"0\",\"id\":\"10\",\"from_table\":\"9\"}', '[]', '8', 'Undefined property: Table_field::$Table_group_model', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '57', '2017-11-10 08:34:41', '8', '[]', 'api/admin/table_field/edit');
INSERT INTO `moucms_error_log` VALUES ('131', '{\"index\":\"null\",\"key\":\"lost_time\",\"name\":\"\\u6700\\u540e\\u767b\\u5f55\\u65f6\\u95f4\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"view\":\"0\",\"id\":\"10\",\"from_table\":\"9\"}', '[]', '1', 'Call to a member function is_exist() on null', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '57', '2017-11-10 08:34:41', '8', '[]', 'api/admin/table_field/edit');
INSERT INTO `moucms_error_log` VALUES ('132', '{\"index\":\"null\",\"key\":\"lost_time\",\"name\":\"\\u6700\\u540e\\u767b\\u5f55\\u65f6\\u95f4\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"view\":\"0\",\"id\":\"10\",\"from_table\":\"9\"}', '[]', '8', 'Undefined property: stdClass::$index', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '72', '2017-11-10 08:36:18', '8', '[]', 'api/admin/table_field/edit');
INSERT INTO `moucms_error_log` VALUES ('133', '{\"index\":\"9\",\"key\":\"password\",\"name\":\"\\u5bc6\\u7801\",\"type\":\"password\",\"is_null\":\"0\",\"max\":\"16\",\"min\":\"5\",\"create\":\"0\",\"edit\":\"0\",\"delete\":\"1\",\"view\":\"1\",\"id\":\"17\",\"from_table\":\"9\"}', '[]', '8', 'Undefined property: stdClass::$max', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '78', '2017-11-10 10:07:20', '8', '[]', 'api/admin/table_field/edit');
INSERT INTO `moucms_error_log` VALUES ('134', '{\"index\":\"9\",\"key\":\"password\",\"name\":\"\\u5bc6\\u7801\",\"type\":\"password\",\"is_null\":\"0\",\"max\":\"16\",\"min\":\"5\",\"create\":\"0\",\"edit\":\"0\",\"delete\":\"1\",\"view\":\"1\",\"id\":\"17\",\"from_table\":\"9\"}', '[]', '8', 'Undefined property: stdClass::$min', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '79', '2017-11-10 10:07:20', '8', '[]', 'api/admin/table_field/edit');
INSERT INTO `moucms_error_log` VALUES ('135', '{\"index\":\"9\",\"key\":\"password\",\"name\":\"\\u5bc6\\u7801\",\"type\":\"password\",\"is_null\":\"0\",\"max\":\"16\",\"min\":\"5\",\"create\":\"0\",\"edit\":\"0\",\"delete\":\"1\",\"view\":\"1\",\"id\":\"17\",\"from_table\":\"9\"}', '[]', '8', 'Undefined property: stdClass::$is_null', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '80', '2017-11-10 10:07:20', '8', '[]', 'api/admin/table_field/edit');
INSERT INTO `moucms_error_log` VALUES ('136', '{\"index\":\"9\",\"key\":\"password\",\"name\":\"\\u5bc6\\u7801\",\"type\":\"password\",\"is_null\":\"0\",\"max\":\"16\",\"min\":\"5\",\"create\":\"0\",\"edit\":\"0\",\"delete\":\"1\",\"view\":\"1\",\"id\":\"17\",\"from_table\":\"9\"}', '[]', '8', 'Undefined property: stdClass::$type', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '81', '2017-11-10 10:07:20', '8', '[]', 'api/admin/table_field/edit');
INSERT INTO `moucms_error_log` VALUES ('137', '{\"index\":\"9\",\"key\":\"password\",\"name\":\"\\u5bc6\\u7801\",\"type\":\"password\",\"is_null\":\"0\",\"max\":\"16\",\"min\":\"5\",\"create\":\"0\",\"edit\":\"0\",\"delete\":\"1\",\"view\":\"1\",\"id\":\"17\",\"from_table\":\"9\"}', '[]', '8', 'Undefined property: stdClass::$max', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '78', '2017-11-10 10:07:23', '8', '[]', 'api/admin/table_field/edit');
INSERT INTO `moucms_error_log` VALUES ('138', '{\"index\":\"9\",\"key\":\"password\",\"name\":\"\\u5bc6\\u7801\",\"type\":\"password\",\"is_null\":\"0\",\"max\":\"16\",\"min\":\"5\",\"create\":\"0\",\"edit\":\"0\",\"delete\":\"1\",\"view\":\"1\",\"id\":\"17\",\"from_table\":\"9\"}', '[]', '8', 'Undefined property: stdClass::$min', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '79', '2017-11-10 10:07:24', '8', '[]', 'api/admin/table_field/edit');
INSERT INTO `moucms_error_log` VALUES ('139', '{\"index\":\"9\",\"key\":\"password\",\"name\":\"\\u5bc6\\u7801\",\"type\":\"password\",\"is_null\":\"0\",\"max\":\"16\",\"min\":\"5\",\"create\":\"0\",\"edit\":\"0\",\"delete\":\"1\",\"view\":\"1\",\"id\":\"17\",\"from_table\":\"9\"}', '[]', '8', 'Undefined property: stdClass::$is_null', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '80', '2017-11-10 10:07:24', '8', '[]', 'api/admin/table_field/edit');
INSERT INTO `moucms_error_log` VALUES ('140', '{\"index\":\"9\",\"key\":\"password\",\"name\":\"\\u5bc6\\u7801\",\"type\":\"password\",\"is_null\":\"0\",\"max\":\"16\",\"min\":\"5\",\"create\":\"0\",\"edit\":\"0\",\"delete\":\"1\",\"view\":\"1\",\"id\":\"17\",\"from_table\":\"9\"}', '[]', '8', 'Undefined property: stdClass::$type', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '81', '2017-11-10 10:07:24', '8', '[]', 'api/admin/table_field/edit');
INSERT INTO `moucms_error_log` VALUES ('141', '{\"from_table_group\":\"15\",\"name\":\"\\u7528\\u6237\\u5217\\u8868\",\"moudles\":\"\",\"main_moudle\":\"admin_user\",\"row_setup_function\":\"lock,eys\",\"uid\":\"admin_user\",\"page_count\":\"15\",\"id\":\"9\",\"row_base_function\":[\"edit\",\"remove\"],\"table_base_function\":[\"search\",\"removeAll\",\"create\"]}', '[]', '8', 'Undefined property: stdClass::$count', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table.php', '45', '2017-11-10 10:17:58', '4', '[]', 'api/admin/table/edit');
INSERT INTO `moucms_error_log` VALUES ('142', '{\"from_table_group\":\"15\",\"name\":\"\\u7528\\u6237\\u5217\\u8868\",\"moudles\":\"\",\"main_moudle\":\"admin_user\",\"row_setup_function\":\"lock,eys\",\"uid\":\"admin_user\",\"page_count\":\"15\",\"id\":\"9\",\"row_base_function\":[\"edit\",\"remove\"],\"table_base_function\":[\"search\",\"removeAll\",\"create\"]}', '[]', '8', 'Undefined property: stdClass::$count', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table.php', '45', '2017-11-10 10:18:02', '4', '[]', 'api/admin/table/edit');
INSERT INTO `moucms_error_log` VALUES ('143', '{\"from_table_group\":\"15\",\"name\":\"\\u7528\\u6237\\u5217\\u8868\",\"moudles\":\"\",\"main_moudle\":\"admin_user\",\"row_setup_function\":\"lock,eys\",\"uid\":\"admin_user\",\"page_count\":\"15\",\"id\":\"9\",\"row_base_function\":[\"edit\",\"remove\"],\"table_base_function\":[\"search\",\"removeAll\",\"create\"]}', '[]', '8', 'Undefined property: stdClass::$page_count', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table.php', '45', '2017-11-10 10:18:19', '4', '[]', 'api/admin/table/edit');
INSERT INTO `moucms_error_log` VALUES ('144', '[]', '[]', '8', 'Undefined variable: Table_data', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\table\\home.php', '107', '2017-11-10 10:20:18', '0', '[]', 'admin/table/home/index');
INSERT INTO `moucms_error_log` VALUES ('145', '{\"index\":\"99\",\"key\":\"id\",\"name\":\"\\u7d22\\u5f15\",\"type\":\"int\",\"is_null\":\"1\",\"max\":\"16\",\"min\":\"1\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"0\",\"view\":\"1\",\"from_table\":\"10\"}', '[]', '8', 'Undefined property: stdClass::$max', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '26', '2017-11-10 10:43:16', '6', '[]', 'api/admin/table_field/create');
INSERT INTO `moucms_error_log` VALUES ('146', '{\"index\":\"99\",\"key\":\"id\",\"name\":\"\\u7d22\\u5f15\",\"type\":\"int\",\"is_null\":\"1\",\"max\":\"16\",\"min\":\"1\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"0\",\"view\":\"1\",\"from_table\":\"10\"}', '[]', '8', 'Undefined property: stdClass::$min', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '27', '2017-11-10 10:43:16', '6', '[]', 'api/admin/table_field/create');
INSERT INTO `moucms_error_log` VALUES ('147', '{\"index\":\"99\",\"key\":\"id\",\"name\":\"\\u7d22\\u5f15\",\"type\":\"int\",\"is_null\":\"1\",\"max\":\"16\",\"min\":\"1\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"0\",\"view\":\"1\",\"from_table\":\"10\"}', '[]', '8', 'Undefined property: stdClass::$is_null', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '28', '2017-11-10 10:43:16', '6', '[]', 'api/admin/table_field/create');
INSERT INTO `moucms_error_log` VALUES ('148', '{\"index\":\"99\",\"key\":\"id\",\"name\":\"\\u7d22\\u5f15\",\"type\":\"int\",\"is_null\":\"1\",\"max\":\"16\",\"min\":\"1\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"0\",\"view\":\"1\",\"from_table\":\"10\"}', '[]', '8', 'Undefined property: stdClass::$type', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '29', '2017-11-10 10:43:16', '6', '[]', 'api/admin/table_field/create');
INSERT INTO `moucms_error_log` VALUES ('149', '[]', '{\"id\":\"10\"}', '8', 'Undefined index: ', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '48', '2017-11-10 10:43:22', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('150', '[]', '{\"id\":\"10\"}', '8', 'Undefined index: ', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '48', '2017-11-10 10:43:25', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('151', '{\"index\":\"98\",\"key\":\"name\",\"name\":\"\\u7ec4\\u540d\\u79f0\",\"type\":\"string\",\"is_null\":\"1\",\"max\":\"16\",\"min\":\"1\",\"create\":\"0\",\"edit\":\"0\",\"delete\":\"1\",\"view\":\"0\",\"from_table\":\"10\"}', '[]', '8', 'Undefined property: stdClass::$max', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '26', '2017-11-10 10:45:07', '6', '[]', 'api/admin/table_field/create');
INSERT INTO `moucms_error_log` VALUES ('152', '{\"index\":\"98\",\"key\":\"name\",\"name\":\"\\u7ec4\\u540d\\u79f0\",\"type\":\"string\",\"is_null\":\"1\",\"max\":\"16\",\"min\":\"1\",\"create\":\"0\",\"edit\":\"0\",\"delete\":\"1\",\"view\":\"0\",\"from_table\":\"10\"}', '[]', '8', 'Undefined property: stdClass::$min', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '27', '2017-11-10 10:45:07', '6', '[]', 'api/admin/table_field/create');
INSERT INTO `moucms_error_log` VALUES ('153', '{\"index\":\"98\",\"key\":\"name\",\"name\":\"\\u7ec4\\u540d\\u79f0\",\"type\":\"string\",\"is_null\":\"1\",\"max\":\"16\",\"min\":\"1\",\"create\":\"0\",\"edit\":\"0\",\"delete\":\"1\",\"view\":\"0\",\"from_table\":\"10\"}', '[]', '8', 'Undefined property: stdClass::$is_null', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '28', '2017-11-10 10:45:07', '6', '[]', 'api/admin/table_field/create');
INSERT INTO `moucms_error_log` VALUES ('154', '{\"index\":\"98\",\"key\":\"name\",\"name\":\"\\u7ec4\\u540d\\u79f0\",\"type\":\"string\",\"is_null\":\"1\",\"max\":\"16\",\"min\":\"1\",\"create\":\"0\",\"edit\":\"0\",\"delete\":\"1\",\"view\":\"0\",\"from_table\":\"10\"}', '[]', '8', 'Undefined property: stdClass::$type', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '29', '2017-11-10 10:45:07', '6', '[]', 'api/admin/table_field/create');
INSERT INTO `moucms_error_log` VALUES ('155', '[]', '{\"id\":\"10\"}', '8', 'Undefined index: ', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '48', '2017-11-10 10:45:12', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('156', '{\"index\":\"98\",\"key\":\"count\",\"name\":\"\\u6210\\u5458\\u6570\\u91cf\",\"type\":\"int\",\"is_null\":\"1\",\"max\":\"16\",\"min\":\"1\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"view\":\"0\",\"from_table\":\"10\"}', '[]', '8', 'Undefined property: stdClass::$max', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '26', '2017-11-10 10:45:50', '6', '[]', 'api/admin/table_field/create');
INSERT INTO `moucms_error_log` VALUES ('157', '{\"index\":\"98\",\"key\":\"count\",\"name\":\"\\u6210\\u5458\\u6570\\u91cf\",\"type\":\"int\",\"is_null\":\"1\",\"max\":\"16\",\"min\":\"1\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"view\":\"0\",\"from_table\":\"10\"}', '[]', '8', 'Undefined property: stdClass::$min', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '27', '2017-11-10 10:45:50', '6', '[]', 'api/admin/table_field/create');
INSERT INTO `moucms_error_log` VALUES ('158', '{\"index\":\"98\",\"key\":\"count\",\"name\":\"\\u6210\\u5458\\u6570\\u91cf\",\"type\":\"int\",\"is_null\":\"1\",\"max\":\"16\",\"min\":\"1\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"view\":\"0\",\"from_table\":\"10\"}', '[]', '8', 'Undefined property: stdClass::$is_null', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '28', '2017-11-10 10:45:50', '6', '[]', 'api/admin/table_field/create');
INSERT INTO `moucms_error_log` VALUES ('159', '{\"index\":\"98\",\"key\":\"count\",\"name\":\"\\u6210\\u5458\\u6570\\u91cf\",\"type\":\"int\",\"is_null\":\"1\",\"max\":\"16\",\"min\":\"1\",\"create\":\"1\",\"edit\":\"1\",\"delete\":\"1\",\"view\":\"0\",\"from_table\":\"10\"}', '[]', '8', 'Undefined property: stdClass::$type', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_field.php', '29', '2017-11-10 10:45:50', '6', '[]', 'api/admin/table_field/create');
INSERT INTO `moucms_error_log` VALUES ('160', '[]', '{\"id\":\"10\"}', '8', 'Undefined index: ', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '48', '2017-11-10 10:46:48', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('161', '[]', '{\"id\":\"10\"}', '8', 'Undefined index: ', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '48', '2017-11-10 10:46:48', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('162', '[]', '{\"id\":\"10\"}', '8', 'Undefined index: ', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '48', '2017-11-10 10:47:05', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('163', '[]', '{\"id\":\"10\"}', '8', 'Undefined index: ', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '48', '2017-11-10 10:47:05', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('164', '[]', '{\"id\":\"10\"}', '8', 'Undefined index: ', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '48', '2017-11-10 10:47:09', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('165', '[]', '{\"id\":\"10\"}', '8', 'Undefined index: ', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '48', '2017-11-10 10:47:09', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('166', '[]', '{\"id\":\"10\"}', '8', 'Undefined index: ', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\table\\Home.php', '48', '2017-11-10 10:47:16', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('167', '[]', '[]', '4', 'syntax error, unexpected \'\'Data_lists\'\' (T_CONSTANT_ENCAPSED_STRING), expecting \')\'', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\Form.php', '36', '2017-11-10 11:05:33', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('168', '[]', '[]', '8', 'Undefined variable: Title_data', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '45', '2017-11-10 11:12:43', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('169', '[]', '[]', '8', 'Undefined variable: Title_data', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '45', '2017-11-10 11:12:44', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('170', '[]', '[]', '8', 'Undefined variable: Title_data', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '45', '2017-11-10 11:12:45', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('171', '[]', '[]', '4', 'syntax error, unexpected \'print_r\' (T_STRING)', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\Form.php', '45', '2017-11-10 11:16:02', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('172', '[]', '[]', '2', 'array_merge(): Argument #1 is not an array', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\Form.php', '43', '2017-11-10 11:16:08', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('173', '[]', '[]', '2', 'array_merge(): Argument #1 is not an array', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\Form.php', '43', '2017-11-10 11:16:12', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('174', '[]', '[]', '2', 'array_merge(): Argument #1 is not an array', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '46', '2017-11-10 11:16:12', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('175', '[]', '[]', '2', 'array_merge(): Argument #1 is not an array', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\Form.php', '43', '2017-11-10 11:16:16', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('176', '[]', '[]', '2', 'array_merge(): Argument #1 is not an array', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '46', '2017-11-10 11:16:16', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('177', '[]', '[]', '4', 'syntax error, unexpected \')\'', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\Form.php', '46', '2017-11-10 11:18:43', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('178', '[]', '[]', '4', 'syntax error, unexpected \')\'', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\admin\\Form.php', '46', '2017-11-10 11:18:44', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('179', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:21', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('180', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:21', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('181', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:21', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('182', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:21', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('183', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:21', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('184', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:21', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('185', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:21', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('186', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:21', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('187', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:21', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('188', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:21', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('189', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:21', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('190', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:21', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('191', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:21', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('192', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:21', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('193', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:21', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('194', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:21', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('195', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('196', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('197', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('198', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('199', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('200', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('201', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('202', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('203', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('204', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('205', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('206', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('207', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('208', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('209', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('210', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('211', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('212', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('213', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('214', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('215', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('216', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('217', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('218', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('219', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:22', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('220', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:23', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('221', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:23', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('222', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:23', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('223', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:23', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('224', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:23', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('225', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:23', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('226', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:23', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('227', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:23', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('228', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:23', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('229', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:23', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('230', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:23', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('231', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:23', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('232', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:23', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('233', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:23', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('234', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:23', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('235', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:23', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('236', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:23', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('237', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:23', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('238', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:23', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('239', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:23', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('240', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:23', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('241', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:24', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('242', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:24', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('243', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:24', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('244', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:24', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('245', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:24', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('246', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:24', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('247', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:24', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('248', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:24', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('249', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:24', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('250', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:24', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('251', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:24', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('252', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:24', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('253', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:24', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('254', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:24', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('255', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:24', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('256', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:24', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('257', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:24', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('258', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:24', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('259', '[]', '[]', '8', 'Array to string conversion', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '62', '2017-11-10 11:22:24', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('260', '[]', '[]', '2', 'Illegal string offset \'id\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '65', '2017-11-10 11:25:50', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('261', '[]', '[]', '2', 'Illegal string offset \'username\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '65', '2017-11-10 11:25:50', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('262', '[]', '[]', '2', 'Illegal string offset \'password\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '65', '2017-11-10 11:25:50', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('263', '[]', '[]', '2', 'Illegal string offset \'now_ip\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '65', '2017-11-10 11:25:50', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('264', '[]', '[]', '2', 'Illegal string offset \'now_time\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '65', '2017-11-10 11:25:50', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('265', '[]', '[]', '2', 'Illegal string offset \'lost_ip\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '65', '2017-11-10 11:25:50', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('266', '[]', '[]', '2', 'Illegal string offset \'lost_time\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '65', '2017-11-10 11:25:50', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('267', '[]', '[]', '2', 'Illegal string offset \'count\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '65', '2017-11-10 11:25:50', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('268', '[]', '[]', '2', 'Illegal string offset \'state\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '65', '2017-11-10 11:25:50', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('269', '[]', '[]', '2', 'Illegal string offset \'id\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:26:02', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('270', '[]', '[]', '2', 'Illegal string offset \'username\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:26:02', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('271', '[]', '[]', '2', 'Illegal string offset \'password\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:26:02', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('272', '[]', '[]', '2', 'Illegal string offset \'now_ip\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:26:02', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('273', '[]', '[]', '2', 'Illegal string offset \'now_time\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:26:02', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('274', '[]', '[]', '2', 'Illegal string offset \'lost_ip\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:26:02', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('275', '[]', '[]', '2', 'Illegal string offset \'lost_time\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:26:02', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('276', '[]', '[]', '2', 'Illegal string offset \'count\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:26:02', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('277', '[]', '[]', '2', 'Illegal string offset \'state\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:26:02', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('278', '[]', '[]', '2', 'Illegal string offset \'id\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:26:05', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('279', '[]', '[]', '2', 'Illegal string offset \'username\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:26:05', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('280', '[]', '[]', '2', 'Illegal string offset \'password\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:26:05', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('281', '[]', '[]', '2', 'Illegal string offset \'now_ip\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:26:05', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('282', '[]', '[]', '2', 'Illegal string offset \'now_time\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:26:05', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('283', '[]', '[]', '2', 'Illegal string offset \'lost_ip\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:26:05', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('284', '[]', '[]', '2', 'Illegal string offset \'lost_time\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:26:05', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('285', '[]', '[]', '2', 'Illegal string offset \'count\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:26:05', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('286', '[]', '[]', '2', 'Illegal string offset \'state\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:26:05', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('287', '[]', '[]', '2', 'Illegal string offset \'id\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:27:12', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('288', '[]', '[]', '2', 'Illegal string offset \'username\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:27:12', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('289', '[]', '[]', '2', 'Illegal string offset \'password\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:27:12', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('290', '[]', '[]', '2', 'Illegal string offset \'now_ip\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:27:12', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('291', '[]', '[]', '2', 'Illegal string offset \'now_time\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:27:12', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('292', '[]', '[]', '2', 'Illegal string offset \'lost_ip\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:27:12', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('293', '[]', '[]', '2', 'Illegal string offset \'lost_time\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:27:12', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('294', '[]', '[]', '2', 'Illegal string offset \'count\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:27:12', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('295', '[]', '[]', '2', 'Illegal string offset \'state\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:27:12', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('296', '[]', '[]', '8', 'Undefined index: now_ip', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:27:46', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('297', '[]', '[]', '8', 'Undefined index: now_time', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:27:46', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('298', '[]', '[]', '8', 'Undefined index: count', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:27:46', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('299', '[]', '[]', '8', 'Undefined index: now_ip', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '65', '2017-11-10 11:27:54', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('300', '[]', '[]', '8', 'Undefined index: now_time', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '65', '2017-11-10 11:27:54', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('301', '[]', '[]', '8', 'Undefined index: count', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '65', '2017-11-10 11:27:54', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('302', '[]', '[]', '8', 'Undefined index: now_ip', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:27:57', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('303', '[]', '[]', '8', 'Undefined index: now_time', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:27:57', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('304', '[]', '[]', '8', 'Undefined index: count', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:27:57', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('305', '[]', '[]', '8', 'Undefined index: now_ip', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:28:04', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('306', '[]', '[]', '8', 'Undefined index: now_time', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:28:04', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('307', '[]', '[]', '8', 'Undefined index: count', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '66', '2017-11-10 11:28:04', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('308', '[]', '[]', '4', 'syntax error, unexpected \']\', expecting \',\' or \';\'', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '67', '2017-11-10 11:28:43', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('309', '[]', '[]', '8', 'Undefined index: now_ip', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '68', '2017-11-10 11:28:47', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('310', '[]', '[]', '8', 'Undefined index: now_time', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '68', '2017-11-10 11:28:47', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('311', '[]', '[]', '8', 'Undefined index: count', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '68', '2017-11-10 11:28:47', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('312', '[]', '[]', '8', 'Undefined index: now_ip', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '68', '2017-11-10 11:28:49', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('313', '[]', '[]', '8', 'Undefined index: now_time', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '68', '2017-11-10 11:28:50', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('314', '[]', '[]', '8', 'Undefined index: count', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '68', '2017-11-10 11:28:50', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('315', '[]', '[]', '8', 'Undefined index: now_ip', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '67', '2017-11-10 11:30:15', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('316', '[]', '[]', '8', 'Undefined index: now_time', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '67', '2017-11-10 11:30:15', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('317', '[]', '[]', '8', 'Undefined index: count', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '67', '2017-11-10 11:30:15', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('318', '[]', '[]', '8', 'Undefined index: now_ip', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '67', '2017-11-10 11:30:17', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('319', '[]', '[]', '8', 'Undefined index: now_time', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '67', '2017-11-10 11:30:17', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('320', '[]', '[]', '8', 'Undefined index: count', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '67', '2017-11-10 11:30:17', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('321', '[]', '[]', '8', 'Undefined index: now_ip', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '67', '2017-11-10 11:30:24', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('322', '[]', '[]', '8', 'Undefined index: now_time', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '67', '2017-11-10 11:30:24', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('323', '[]', '[]', '8', 'Undefined index: count', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '67', '2017-11-10 11:30:24', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('324', '[]', '[]', '4', 'syntax error, unexpected \'echo\' (T_ECHO)', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '67', '2017-11-10 11:30:27', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('325', '[]', '[]', '8', 'Undefined index: now_ip', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '67', '2017-11-10 11:30:29', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('326', '[]', '[]', '8', 'Undefined index: now_time', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '67', '2017-11-10 11:30:29', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('327', '[]', '[]', '8', 'Undefined index: count', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '67', '2017-11-10 11:30:29', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('328', '[]', '[]', '8', 'Undefined index: now_ip', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '68', '2017-11-10 11:30:58', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('329', '[]', '[]', '8', 'Undefined index: now_time', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '68', '2017-11-10 11:30:58', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('330', '[]', '[]', '8', 'Undefined index: count', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '68', '2017-11-10 11:30:58', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('331', '[]', '[]', '8', 'Undefined index: width', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '46', '2017-11-10 11:33:58', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('332', '[]', '[]', '8', 'Undefined index: width', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '46', '2017-11-10 11:33:58', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('333', '[]', '[]', '8', 'Undefined index: width', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '46', '2017-11-10 11:33:58', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('334', '[]', '[]', '8', 'Undefined index: width', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '46', '2017-11-10 11:33:58', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('335', '[]', '[]', '8', 'Undefined index: width', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '46', '2017-11-10 11:33:58', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('336', '[]', '[]', '8', 'Undefined index: width', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '46', '2017-11-10 11:33:59', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('337', '[]', '[]', '8', 'Undefined index: width', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '46', '2017-11-10 11:33:59', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('338', '[]', '[]', '4', 'syntax error, unexpected \'\' (T_ENCAPSED_AND_WHITESPACE), expecting identifier (T_STRING) or variable (T_VARIABLE) or number (T_NUM_STRING)', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '46', '2017-11-10 11:34:01', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('339', '[]', '[]', '8', 'Undefined index: width', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '46', '2017-11-10 11:34:09', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('340', '[]', '[]', '8', 'Undefined index: width', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '46', '2017-11-10 11:34:09', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('341', '[]', '[]', '8', 'Undefined index: width', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '46', '2017-11-10 11:34:09', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('342', '[]', '[]', '8', 'Undefined index: width', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '46', '2017-11-10 11:34:09', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('343', '[]', '[]', '8', 'Undefined index: width', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '46', '2017-11-10 11:34:09', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('344', '[]', '[]', '8', 'Undefined index: width', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '46', '2017-11-10 11:34:09', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('345', '[]', '[]', '8', 'Undefined index: width', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '46', '2017-11-10 11:34:09', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('346', '[]', '[]', '4', 'syntax error, unexpected \'echo\' (T_ECHO)', 'F:\\xampp\\htdocs\\moucms\\template\\admin\\form\\home.php', '46', '2017-11-10 11:34:13', '0', '[]', 'admin/form/admin_user');
INSERT INTO `moucms_error_log` VALUES ('347', '[]', '[]', '0', 'Unable to locate the model you have specified: Admin_user_group_model', 'F:\\xampp\\htdocs\\moucms\\application\\system\\core\\Loader.php', '344', '2017-11-11 11:45:36', '0', '[{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\controllers\\\\admin\\\\Form.php\",\"line\":24,\"function\":\"model\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\system\\\\core\\\\CodeIgniter.php\",\"line\":532,\"function\":\"call_user_func_array\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\index.php\",\"line\":321,\"function\":\"require_once\"}]', 'admin/form/admin_user_group');
INSERT INTO `moucms_error_log` VALUES ('348', '[]', '{\"id\":\"9\"}', '0', 'Unable to locate the model you have specified: Setting_model', 'F:\\xampp\\htdocs\\moucms\\application\\system\\core\\Loader.php', '344', '2017-11-11 14:52:37', '0', '[{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\system\\\\core\\\\Loader.php\",\"line\":244,\"function\":\"model\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\system\\\\core\\\\Loader.php\",\"line\":1361,\"function\":\"model\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\system\\\\core\\\\Loader.php\",\"line\":157,\"function\":\"_ci_autoloader\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\system\\\\core\\\\Controller.php\",\"line\":80,\"function\":\"initialize\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\controllers\\\\admin\\\\table\\\\Home.php\",\"line\":5,\"function\":\"__construct\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\system\\\\core\\\\CodeIgniter.php\",\"line\":518,\"function\":\"__construct\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\index.php\",\"line\":321,\"function\":\"require_once\"}]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('349', '[]', '{\"id\":\"9\"}', '0', 'Unable to locate the model you have specified: Setting_model', 'F:\\xampp\\htdocs\\moucms\\application\\system\\core\\Loader.php', '344', '2017-11-11 14:52:39', '0', '[{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\system\\\\core\\\\Loader.php\",\"line\":244,\"function\":\"model\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\system\\\\core\\\\Loader.php\",\"line\":1361,\"function\":\"model\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\system\\\\core\\\\Loader.php\",\"line\":157,\"function\":\"_ci_autoloader\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\system\\\\core\\\\Controller.php\",\"line\":80,\"function\":\"initialize\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\controllers\\\\admin\\\\table\\\\Home.php\",\"line\":5,\"function\":\"__construct\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\system\\\\core\\\\CodeIgniter.php\",\"line\":518,\"function\":\"__construct\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\index.php\",\"line\":321,\"function\":\"require_once\"}]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('350', '[]', '{\"id\":\"9\"}', '1', 'Call to undefined method Setting_model::all()', 'F:\\xampp\\htdocs\\moucms\\application\\libraries\\Loader.php', '28', '2017-11-11 14:53:06', '0', '[]', 'admin/table/home/edit');
INSERT INTO `moucms_error_log` VALUES ('351', '[]', '[]', '0', 'Unable to locate the model you have specified: Admin_user_group_model', 'F:\\xampp\\htdocs\\moucms\\application\\system\\core\\Loader.php', '344', '2017-11-12 03:43:49', '0', '[{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\controllers\\\\admin\\\\Form.php\",\"line\":24,\"function\":\"model\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\application\\\\system\\\\core\\\\CodeIgniter.php\",\"line\":532,\"function\":\"call_user_func_array\"},{\"file\":\"F:\\\\xampp\\\\htdocs\\\\moucms\\\\index.php\",\"line\":321,\"function\":\"require_once\"}]', 'admin/form/admin_user_group');
INSERT INTO `moucms_error_log` VALUES ('352', '[]', '[]', '2', 'scandir(./caxa/,./caxa/): ϵͳ�Ҳ���ָ�����ļ��� (code: 2)', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Databases.php', '15', '2017-11-12 03:52:43', '9', '[]', 'api/admin/databases/get');
INSERT INTO `moucms_error_log` VALUES ('353', '[]', '[]', '2', 'scandir(./caxa/): failed to open dir: No such file or directory', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Databases.php', '15', '2017-11-12 03:52:43', '9', '[]', 'api/admin/databases/get');
INSERT INTO `moucms_error_log` VALUES ('354', '[]', '[]', '2', 'scandir(): (errno 2): No such file or directory', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Databases.php', '15', '2017-11-12 03:52:43', '9', '[]', 'api/admin/databases/get');
INSERT INTO `moucms_error_log` VALUES ('355', '[]', '[]', '1', 'Class \'interface_lib\' not found', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_tool.php', '2', '2017-11-12 04:24:18', '0', '[]', 'api/admin/table_tool/create');
INSERT INTO `moucms_error_log` VALUES ('356', '{\"name\":\"12321312\",\"color\":\"\",\"uid\":\"312321\",\"index\":\"123123\",\"type\":\"button\",\"from_table\":\"9\"}', '[]', '8', 'Undefined property: stdClass::$tool_name', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_tool.php', '14', '2017-11-12 04:34:57', '10', '[]', 'api/admin/table_tool/create');
INSERT INTO `moucms_error_log` VALUES ('357', '{\"name\":\"12321\",\"color\":\"\",\"uid\":\"32132\",\"index\":\"13213\",\"type\":\"button\",\"from_table\":\"9\"}', '[]', '8', 'Undefined property: Table_tool::$Table_model', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_tool.php', '12', '2017-11-12 04:37:02', '10', '[]', 'api/admin/table_tool/create');
INSERT INTO `moucms_error_log` VALUES ('358', '{\"name\":\"12321\",\"color\":\"\",\"uid\":\"32132\",\"index\":\"13213\",\"type\":\"button\",\"from_table\":\"9\"}', '[]', '1', 'Call to a member function is_exist() on null', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_tool.php', '12', '2017-11-12 04:37:02', '10', '[]', 'api/admin/table_tool/create');
INSERT INTO `moucms_error_log` VALUES ('359', '{\"name\":\"12321\",\"color\":\"\",\"uid\":\"32132\",\"index\":\"13213\",\"type\":\"button\",\"from_table\":\"9\"}', '[]', '8', 'Undefined property: Table_tool::$Table_model', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_tool.php', '12', '2017-11-12 04:37:06', '10', '[]', 'api/admin/table_tool/create');
INSERT INTO `moucms_error_log` VALUES ('360', '{\"name\":\"12321\",\"color\":\"\",\"uid\":\"32132\",\"index\":\"13213\",\"type\":\"button\",\"from_table\":\"9\"}', '[]', '1', 'Call to a member function is_exist() on null', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_tool.php', '12', '2017-11-12 04:37:06', '10', '[]', 'api/admin/table_tool/create');
INSERT INTO `moucms_error_log` VALUES ('361', '{\"name\":\"\\u5220\\u9664\\u9009\\u4e2d\\u7528\\u6237\",\"icon\":\"trash-o\",\"color\":\"danger\",\"uid\":\"remove-all\",\"index\":\"999\",\"type\":\"button\",\"id\":\"8\",\"from_table\":\"9\"}', '[]', '1', 'Cannot use object of type stdClass as array', 'F:\\xampp\\htdocs\\moucms\\application\\controllers\\api\\admin\\Table_tool.php', '12', '2017-11-12 09:31:25', '11', '[]', 'api/admin/table_tool/edit');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moucms_interface
-- ----------------------------
INSERT INTO `moucms_interface` VALUES ('1', 'Admin_user.php', 'login', 'api/admin', 'api/admin/admin_user/login', null, '0', null, null, '0', '{\"username\":{\"max\":5,\"min\":16,\"name\":\"用户名\"},\"password\":{\"max\":5,\"min\":16,\"name\":\"用户名\"},\"verification\":{\"max\":4,\"min\":4,\"name\":\"验证码\"}}');
INSERT INTO `moucms_interface` VALUES ('2', 'Table.php', 'create', 'api/admin', 'api/admin/table/create', null, '0', null, null, '0', '{\"from_table_group\":{\"max\":1,\"min\":10,\"name\":\"所属表单组\"},\"name\":{\"max\":1,\"min\":32,\"name\":\"表单名称\"},\"moudles\":{\"max\":0,\"min\":512,\"name\":\"辅数据表名\"},\"main_moudle\":{\"max\":1,\"min\":10,\"name\":\"主数据表名\"},\"row_setup_function\":{\"max\":0,\"min\":512,\"name\":\"自设功能\"},\"uid\":{\"max\":3,\"min\":20,\"name\":\"表单标识符\"},\"uid\":{\"max\":3,\"min\":20,\"name\":\"表单标识符\"},\"page_count\":{\"max\":2,\"min\":2,\"name\":\"每页显示行数\"}}');
INSERT INTO `moucms_interface` VALUES ('3', 'Table_group.php', 'create', 'api/admin', 'api/admin/table_group/create', null, '0', null, null, '0', '{\"name\":{\"max\":16,\"main\":1}}');
INSERT INTO `moucms_interface` VALUES ('4', 'Table.php', 'edit', 'api/admin', 'api/admin/table/edit', '', '0', null, null, '0', '{\"id\" : {\"max\":11,\"min\":1} ,\"from_table_group\":{\"max\":1,\"min\":10,\"name\":\"所属表单组\"},\"name\":{\"max\":1,\"min\":32,\"name\":\"表单名称\"},\"moudles\":{\"max\":0,\"min\":512,\"name\":\"辅数据表名\"},\"main_moudle\":{\"max\":1,\"min\":10,\"name\":\"主数据表名\"},\"row_setup_function\":{\"max\":0,\"min\":512,\"name\":\"自设功能\"},\"page_count\":{\"max\":2,\"min\":2,\"name\":\"每页显示行数\"},\"uid\":{\"max\":20,\"min\":3,\"name\":\"表单标识符\"}}');
INSERT INTO `moucms_interface` VALUES ('5', 'Table.php', 'remove', 'api/admin', 'api/admin/table/remove', null, '0', null, null, '0', '{\"id\" : {\"max\":11,\"min\":1}}');
INSERT INTO `moucms_interface` VALUES ('6', 'Table_field.php', 'create', 'api/admin', 'api/admin/table_field/create', null, '0', null, null, '0', '{\"from_table\" : {\"max\" : 16 , \"min\" : 1} , \"key\" : {\"max\" : 26 , \"min\" : 1},\"name\" : {\"max\" : 16 , \"min\" : 1},\"create\" : {\"max\" : 1 , \"min\" : 1},\"max\":{\"max\":11,\"min\":1},\"min\":{\"max\":11,\"min\":1},\"type\":{\"max\":22,\"min\":1},\"is_null\":{\"max\":1,\"min\":1},\"edit\" : {\"max\" : 1 , \"min\" : 1},\"delete\" : {\"max\" : 1 , \"min\" : 1},\"index\":{\"max\":12,\"min\":1},\"view\" : {\"max\" : 1 , \"min\" : 1}}');
INSERT INTO `moucms_interface` VALUES ('7', 'Table_field.php', 'remove', 'api/admin', 'api/admin/table_field/remove', null, '0', null, null, '0', '{\"id\" : {\"max\":11,\"min\":1}}');
INSERT INTO `moucms_interface` VALUES ('8', 'Table_field.php', 'edit', 'api/admin', 'api/admin/table_field/edit', null, '0', null, null, '0', '{\"id\":{\"max\":11,\"min\":1},\"from_table\":{\"max\":16,\"min\":1},\"key\":{\"max\":26,\"min\":1},\"max\":{\"max\":11,\"min\":1},\"min\":{\"max\":11,\"min\":1},\"type\":{\"max\":22,\"min\":1},\"is_null\":{\"max\":1,\"min\":1},\"name\":{\"max\":16,\"min\":1},\"create\":{\"max\":1,\"min\":1},\"edit\":{\"max\":1,\"min\":1},\"delete\":{\"max\":1,\"min\":1},\"index\":{\"max\":12,\"min\":1},\"view\":{\"max\":1,\"min\":1}}');
INSERT INTO `moucms_interface` VALUES ('9', 'Databases.php', 'get', 'api/admin', 'api/admin/databases/get', null, '0', null, null, '0', null);
INSERT INTO `moucms_interface` VALUES ('10', 'Table_tool.php', 'create', 'api/admin', 'api/admin/table_tool/create', null, '0', null, null, '0', '{\"name\" : { \"max\" : 16 , \"min\" : 1} ,\r\n\"color\" : { \"max\" : 16 , \"min\" : 1} ,\r\n\"uid\" : { \"max\" : 16 , \"min\" : 1} ,\r\n\"index\" : { \"max\" : 16 , \"min\" : 1} ,\r\n\"icon\" : { \"max\" : 46 , \"min\" : 0} ,\r\n\"type\" : { \"max\" : 16 , \"min\" : 1} ,\r\n\"from_table\" : { \"max\" : 16 , \"min\" : 1}}');
INSERT INTO `moucms_interface` VALUES ('11', 'Table_tool.php', 'edit', 'api/admin', 'api/admin/table_tool/edit', null, '0', null, null, '0', '{\"name\" : { \"max\" : 16 , \"min\" : 1} ,\r\n\"color\" : { \"max\" : 16 , \"min\" : 1} ,\r\n\"uid\" : { \"max\" : 16 , \"min\" : 1} ,\r\n\"index\" : { \"max\" : 16 , \"min\" : 1} ,\r\n\"icon\" : { \"max\" : 46 , \"min\" : 0} ,\r\n\"type\" : { \"max\" : 16 , \"min\" : 1} ,\r\n\"from_table\" : { \"max\" : 16 , \"min\" : 1} , \"id\" : {\"max\":16 , \"min\":1}}');

-- ----------------------------
-- Table structure for moucms_interface_group
-- ----------------------------
DROP TABLE IF EXISTS `moucms_interface_group`;
CREATE TABLE `moucms_interface_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(22) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moucms_interface_group
-- ----------------------------

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
INSERT INTO `moucms_table` VALUES ('9', '15', '用户列表', 'admin_user', '[\"\"]', 'admin_user', '[\"edit\",\"trash-o\"]', '[\"search\",\"removeAll\",\"create\"]', '[\"lock\",\"eye\"]', '15');
INSERT INTO `moucms_table` VALUES ('10', '15', '管理权限', 'admin_user_group', '[\"\"]', 'admin_user_group', '[\"edit\",\"remove\"]', '[\"search\",\"removeAll\",\"create\"]', '[\"\"]', '10');

-- ----------------------------
-- Table structure for moucms_table_database
-- ----------------------------
DROP TABLE IF EXISTS `moucms_table_database`;
CREATE TABLE `moucms_table_database` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `key_name` varchar(25) DEFAULT NULL,
  `from_database_name` varchar(25) DEFAULT NULL,
  `is_tools` int(1) DEFAULT NULL COMMENT '0 tools 1 table',
  `type` int(1) DEFAULT NULL COMMENT '0 手动  1 数据库',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of moucms_table_database
-- ----------------------------

-- ----------------------------
-- Table structure for moucms_table_field
-- ----------------------------
DROP TABLE IF EXISTS `moucms_table_field`;
CREATE TABLE `moucms_table_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_name` varchar(26) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `from_table` int(11) DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  `max` int(11) DEFAULT '16',
  `min` int(11) DEFAULT '1',
  `is_null` int(1) DEFAULT '1',
  `type` varchar(100) DEFAULT 'string',
  `create` int(1) DEFAULT '0',
  `edit` int(1) DEFAULT '0',
  `delete` int(1) DEFAULT '0',
  `view` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moucms_table_field
-- ----------------------------
INSERT INTO `moucms_table_field` VALUES ('9', 'username', '用户名', '9', '10', '16', '5', '1', 'string', '0', '0', '1', '0');
INSERT INTO `moucms_table_field` VALUES ('10', 'lost_time', '最后登录时间', '9', '2', '16', '1', '1', 'string', '1', '1', '1', '0');
INSERT INTO `moucms_table_field` VALUES ('11', 'lost_ip', '最后登录IP', '9', '2', '16', '1', '1', 'string', '1', '1', '1', '0');
INSERT INTO `moucms_table_field` VALUES ('12', 'login_time', '上次登录时间', '9', '2', '16', '1', '1', 'string', '1', '1', '1', '0');
INSERT INTO `moucms_table_field` VALUES ('13', 'login_ip', '上次登录IP', '9', '2', '16', '1', '1', 'string', '1', '1', '1', '0');
INSERT INTO `moucms_table_field` VALUES ('14', 'login_count', '登录次数', '9', '1', '16', '1', '1', 'string', '1', '1', '1', '0');
INSERT INTO `moucms_table_field` VALUES ('15', 'state', '状态', '9', '0', '16', '1', '1', 'string', '0', '0', '1', '0');
INSERT INTO `moucms_table_field` VALUES ('16', 'id', '索引', '9', '999', '16', '1', '1', 'string', '1', '1', '0', '1');
INSERT INTO `moucms_table_field` VALUES ('17', 'password', '密码', '9', '9', '16', '5', '0', 'password', '0', '0', '1', '1');
INSERT INTO `moucms_table_field` VALUES ('18', 'id', '索引', '10', '101', '16', '1', '1', 'int', '1', '1', '0', '1');
INSERT INTO `moucms_table_field` VALUES ('19', 'name', '组名称', '10', '100', '0', '0', '1', 'string', '0', '0', '1', '0');
INSERT INTO `moucms_table_field` VALUES ('20', 'count', '成员数量', '10', '98', '16', '1', '1', 'int', '1', '1', '1', '0');
INSERT INTO `moucms_table_field` VALUES ('22', 'limit', '权限配置', '10', '99', '0', '0', '0', '自定义', '0', '0', '1', '0');

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

-- ----------------------------
-- Table structure for moucms_table_tool
-- ----------------------------
DROP TABLE IF EXISTS `moucms_table_tool`;
CREATE TABLE `moucms_table_tool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_table` int(11) DEFAULT NULL,
  `tool_name` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `color` varchar(25) DEFAULT NULL,
  `uid` varchar(25) DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `from_database` varchar(52) DEFAULT NULL,
  `field_key` varchar(52) DEFAULT NULL,
  `field_value` varchar(52) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of moucms_table_tool
-- ----------------------------
INSERT INTO `moucms_table_tool` VALUES ('8', '9', '删除选中用户', 'trash-o', 'danger', 'remove-all', '999', 'button', null, null, null);
INSERT INTO `moucms_table_tool` VALUES ('9', '9', '添加用户', 'user-plus', 'fezocms', 'create', '998', 'button', null, null, null);
INSERT INTO `moucms_table_tool` VALUES ('10', '9', '管理组', '', '', 'from_admin_group', '97', 'search-select-value', null, null, null);
INSERT INTO `moucms_table_tool` VALUES ('11', '9', '测试', '', '', 'test', '50', 'search-select-value', null, null, null);
INSERT INTO `moucms_table_tool` VALUES ('12', '9', 'das', 'asd', '', 'asd', '0', 'search-text-value', null, null, null);
