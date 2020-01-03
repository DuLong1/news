/*
Navicat MySQL Data Transfer

Source Server         : news
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : news

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2020-01-03 08:37:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for authority
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `roleId` (`roleId`) USING BTREE,
  KEY `menuId` (`menuId`) USING BTREE,
  CONSTRAINT `authority_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`),
  CONSTRAINT `authority_ibfk_2` FOREIGN KEY (`menuId`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES ('210', '1', '1');
INSERT INTO `authority` VALUES ('211', '1', '5');
INSERT INTO `authority` VALUES ('212', '1', '17');
INSERT INTO `authority` VALUES ('213', '1', '18');
INSERT INTO `authority` VALUES ('214', '1', '19');
INSERT INTO `authority` VALUES ('215', '1', '20');
INSERT INTO `authority` VALUES ('216', '1', '13');
INSERT INTO `authority` VALUES ('217', '1', '21');
INSERT INTO `authority` VALUES ('218', '1', '22');
INSERT INTO `authority` VALUES ('219', '1', '23');
INSERT INTO `authority` VALUES ('220', '1', '35');
INSERT INTO `authority` VALUES ('221', '1', '36');
INSERT INTO `authority` VALUES ('222', '1', '14');
INSERT INTO `authority` VALUES ('223', '1', '15');
INSERT INTO `authority` VALUES ('224', '1', '24');
INSERT INTO `authority` VALUES ('225', '1', '25');
INSERT INTO `authority` VALUES ('226', '1', '26');
INSERT INTO `authority` VALUES ('227', '1', '31');
INSERT INTO `authority` VALUES ('228', '1', '32');
INSERT INTO `authority` VALUES ('229', '1', '33');
INSERT INTO `authority` VALUES ('230', '1', '34');
INSERT INTO `authority` VALUES ('231', '1', '37');
INSERT INTO `authority` VALUES ('232', '1', '38');
INSERT INTO `authority` VALUES ('233', '1', '39');
INSERT INTO `authority` VALUES ('234', '1', '40');
INSERT INTO `authority` VALUES ('235', '1', '41');
INSERT INTO `authority` VALUES ('236', '1', '42');
INSERT INTO `authority` VALUES ('237', '1', '43');
INSERT INTO `authority` VALUES ('238', '1', '44');
INSERT INTO `authority` VALUES ('239', '1', '45');
INSERT INTO `authority` VALUES ('240', '2', '37');
INSERT INTO `authority` VALUES ('241', '2', '38');
INSERT INTO `authority` VALUES ('242', '2', '39');
INSERT INTO `authority` VALUES ('243', '2', '40');
INSERT INTO `authority` VALUES ('244', '2', '41');
INSERT INTO `authority` VALUES ('245', '2', '42');
INSERT INTO `authority` VALUES ('246', '2', '43');
INSERT INTO `authority` VALUES ('247', '2', '44');
INSERT INTO `authority` VALUES ('248', '2', '45');

-- ----------------------------
-- Table structure for c3p0testtable
-- ----------------------------
DROP TABLE IF EXISTS `c3p0testtable`;
CREATE TABLE `c3p0testtable` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of c3p0testtable
-- ----------------------------

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('13', '用户名为admin的用户登录时输入验证码错误!', '2018-12-16 18:17:30');
INSERT INTO `log` VALUES ('14', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-16 18:22:56');
INSERT INTO `log` VALUES ('15', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-16 18:37:15');
INSERT INTO `log` VALUES ('16', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-16 18:40:21');
INSERT INTO `log` VALUES ('17', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-16 19:11:49');
INSERT INTO `log` VALUES ('18', '用户名为{admin}，的用户成功修改密码!', '2018-12-16 19:13:32');
INSERT INTO `log` VALUES ('19', '用户名为{admin}，的用户成功修改密码!', '2018-12-16 19:14:01');
INSERT INTO `log` VALUES ('20', '用户名为{猿来入此}，角色为{普通用户}的用户登录成功!', '2018-12-16 19:17:46');
INSERT INTO `log` VALUES ('21', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-20 21:51:57');
INSERT INTO `log` VALUES ('22', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-20 21:58:51');
INSERT INTO `log` VALUES ('23', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 20:14:49');
INSERT INTO `log` VALUES ('24', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 20:22:49');
INSERT INTO `log` VALUES ('25', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 20:23:43');
INSERT INTO `log` VALUES ('26', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 21:07:39');
INSERT INTO `log` VALUES ('27', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 21:18:38');
INSERT INTO `log` VALUES ('28', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 22:03:27');
INSERT INTO `log` VALUES ('29', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 22:31:49');
INSERT INTO `log` VALUES ('30', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 22:32:58');
INSERT INTO `log` VALUES ('31', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 22:38:50');
INSERT INTO `log` VALUES ('32', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 10:26:00');
INSERT INTO `log` VALUES ('33', '用户名为admin的用户登录时输入验证码错误!', '2018-12-22 10:36:53');
INSERT INTO `log` VALUES ('34', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 10:37:04');
INSERT INTO `log` VALUES ('35', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 11:08:04');
INSERT INTO `log` VALUES ('36', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 11:59:39');
INSERT INTO `log` VALUES ('37', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 12:06:29');
INSERT INTO `log` VALUES ('38', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 12:17:20');
INSERT INTO `log` VALUES ('39', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 12:21:20');
INSERT INTO `log` VALUES ('40', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 13:05:44');
INSERT INTO `log` VALUES ('41', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 13:07:30');
INSERT INTO `log` VALUES ('42', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 13:16:00');
INSERT INTO `log` VALUES ('43', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 14:28:56');
INSERT INTO `log` VALUES ('44', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 14:33:41');
INSERT INTO `log` VALUES ('45', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 15:31:07');
INSERT INTO `log` VALUES ('46', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 15:35:02');
INSERT INTO `log` VALUES ('47', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 15:36:32');
INSERT INTO `log` VALUES ('48', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 16:06:20');
INSERT INTO `log` VALUES ('49', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 16:09:48');
INSERT INTO `log` VALUES ('50', '用户名为admin的用户登录时输入验证码错误!', '2018-12-22 16:19:05');
INSERT INTO `log` VALUES ('51', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 16:19:20');
INSERT INTO `log` VALUES ('52', '用户名为admin的用户登录时输入验证码错误!', '2018-12-22 16:20:47');
INSERT INTO `log` VALUES ('53', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-22 16:20:59');
INSERT INTO `log` VALUES ('54', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-23 11:10:10');
INSERT INTO `log` VALUES ('55', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-23 12:38:51');
INSERT INTO `log` VALUES ('56', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-23 14:39:48');
INSERT INTO `log` VALUES ('57', '用户名为admin的用户登录时输入验证码错误!', '2018-12-23 21:29:13');
INSERT INTO `log` VALUES ('58', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-23 21:29:23');
INSERT INTO `log` VALUES ('59', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-23 21:39:25');
INSERT INTO `log` VALUES ('60', '用户名为{1}，角色为{普通用户}的用户登录成功!', '2019-01-05 23:19:39');
INSERT INTO `log` VALUES ('61', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-05 23:20:26');
INSERT INTO `log` VALUES ('62', '用户名为{1}，角色为{普通用户}的用户登录成功!', '2019-01-06 10:33:58');
INSERT INTO `log` VALUES ('63', '用户名为admin的用户登录时输入密码错误!', '2019-01-06 10:34:33');
INSERT INTO `log` VALUES ('64', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-06 10:34:47');
INSERT INTO `log` VALUES ('65', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-06 13:45:09');
INSERT INTO `log` VALUES ('66', '用户名为admin的用户登录时输入密码错误!', '2019-01-07 08:53:38');
INSERT INTO `log` VALUES ('67', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-07 08:53:54');
INSERT INTO `log` VALUES ('68', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-07 11:12:39');
INSERT INTO `log` VALUES ('69', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-07 11:46:04');
INSERT INTO `log` VALUES ('70', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-07 16:08:50');
INSERT INTO `log` VALUES ('71', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-07 17:37:31');
INSERT INTO `log` VALUES ('72', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-07 22:21:10');
INSERT INTO `log` VALUES ('73', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-08 08:32:56');
INSERT INTO `log` VALUES ('74', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-08 10:02:19');
INSERT INTO `log` VALUES ('75', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-08 10:39:17');
INSERT INTO `log` VALUES ('76', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-08 11:04:09');
INSERT INTO `log` VALUES ('77', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-08 11:26:24');
INSERT INTO `log` VALUES ('78', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-08 11:57:13');
INSERT INTO `log` VALUES ('79', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-08 15:19:26');
INSERT INTO `log` VALUES ('80', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-08 16:03:13');
INSERT INTO `log` VALUES ('81', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-08 16:23:14');
INSERT INTO `log` VALUES ('82', '用户名为admin的用户登录时输入验证码错误!', '2019-01-08 16:32:15');
INSERT INTO `log` VALUES ('83', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-08 16:32:26');
INSERT INTO `log` VALUES ('84', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-08 16:40:07');
INSERT INTO `log` VALUES ('85', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-08 16:51:21');
INSERT INTO `log` VALUES ('86', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-08 16:58:54');
INSERT INTO `log` VALUES ('87', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-08 18:05:34');
INSERT INTO `log` VALUES ('88', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-08 18:11:00');
INSERT INTO `log` VALUES ('89', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-08 21:20:05');
INSERT INTO `log` VALUES ('90', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-08 21:48:31');
INSERT INTO `log` VALUES ('91', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-08 22:07:03');
INSERT INTO `log` VALUES ('101', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-10 17:27:44');
INSERT INTO `log` VALUES ('102', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-10 19:19:03');
INSERT INTO `log` VALUES ('103', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-15 17:04:03');
INSERT INTO `log` VALUES ('104', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-15 17:39:53');
INSERT INTO `log` VALUES ('105', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-16 08:59:11');
INSERT INTO `log` VALUES ('106', '用户名为admin的用户登录时输入验证码错误!', '2019-01-16 10:59:15');
INSERT INTO `log` VALUES ('107', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-16 10:59:26');
INSERT INTO `log` VALUES ('108', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-16 17:43:15');
INSERT INTO `log` VALUES ('109', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-17 09:43:51');
INSERT INTO `log` VALUES ('110', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-17 10:05:31');
INSERT INTO `log` VALUES ('111', '用户名为admin的用户登录时输入验证码错误!', '2019-01-17 10:57:15');
INSERT INTO `log` VALUES ('112', '用户名为admin的用户登录时输入验证码错误!', '2019-01-17 10:57:26');
INSERT INTO `log` VALUES ('115', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-17 16:24:32');
INSERT INTO `log` VALUES ('116', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-21 11:24:50');
INSERT INTO `log` VALUES ('117', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-22 17:19:26');
INSERT INTO `log` VALUES ('118', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-22 17:37:38');
INSERT INTO `log` VALUES ('119', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-23 08:44:21');
INSERT INTO `log` VALUES ('120', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-23 21:10:29');
INSERT INTO `log` VALUES ('121', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-24 08:58:49');
INSERT INTO `log` VALUES ('122', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-01-28 15:56:23');
INSERT INTO `log` VALUES ('123', '用户名为admin的用户登录时输入密码错误!', '2019-03-01 09:05:59');
INSERT INTO `log` VALUES ('124', '用户名为admin的用户登录时输入验证码错误!', '2019-03-01 09:06:15');
INSERT INTO `log` VALUES ('125', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-03-01 09:06:39');
INSERT INTO `log` VALUES ('126', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-03-01 09:46:36');
INSERT INTO `log` VALUES ('127', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-03-01 10:31:38');
INSERT INTO `log` VALUES ('128', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-03-04 16:29:19');
INSERT INTO `log` VALUES ('129', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-03-04 16:32:14');
INSERT INTO `log` VALUES ('130', '用户名为admin的用户登录时输入密码错误!', '2019-03-05 10:54:48');
INSERT INTO `log` VALUES ('131', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-03-05 10:55:03');
INSERT INTO `log` VALUES ('132', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-03-12 09:51:23');
INSERT INTO `log` VALUES ('133', '????admin????????????!', '2019-03-14 16:46:14');
INSERT INTO `log` VALUES ('134', '????admin????????????!', '2019-03-14 16:46:35');
INSERT INTO `log` VALUES ('135', '????admin????????????!', '2019-03-14 16:46:56');
INSERT INTO `log` VALUES ('136', '????{admin}????{?????}???????!', '2019-03-14 16:47:21');
INSERT INTO `log` VALUES ('137', '????{admin}????{?????}???????!', '2019-03-14 17:29:55');
INSERT INTO `log` VALUES ('138', '????{2019}????{????}???????!', '2019-03-14 17:32:12');
INSERT INTO `log` VALUES ('139', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-03-18 08:33:13');
INSERT INTO `log` VALUES ('140', '用户名为{du}，角色为{普通用户}的用户登录成功!', '2019-03-18 08:36:50');
INSERT INTO `log` VALUES ('141', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-03-19 16:44:48');
INSERT INTO `log` VALUES ('142', '用户名为admin的用户登录时输入密码错误!', '2019-06-18 16:56:59');
INSERT INTO `log` VALUES ('143', '用户名为admin的用户登录时输入密码错误!', '2019-06-18 16:57:13');
INSERT INTO `log` VALUES ('144', '用户名为admin的用户登录时输入验证码错误!', '2019-06-18 16:57:35');
INSERT INTO `log` VALUES ('145', '用户名为admin的用户登录时输入验证码错误!', '2019-06-18 16:57:39');
INSERT INTO `log` VALUES ('146', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-06-18 16:58:02');
INSERT INTO `log` VALUES ('147', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-06-19 08:56:58');
INSERT INTO `log` VALUES ('148', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-06-27 21:00:35');
INSERT INTO `log` VALUES ('149', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-07-02 15:52:44');
INSERT INTO `log` VALUES ('150', '用户名为{wlxing}，角色为{普通用户}的用户登录成功!', '2019-07-02 15:55:27');
INSERT INTO `log` VALUES ('151', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-07-05 13:20:17');
INSERT INTO `log` VALUES ('152', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-07-05 15:54:38');
INSERT INTO `log` VALUES ('153', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-07-11 09:02:27');
INSERT INTO `log` VALUES ('154', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-07-11 09:35:55');
INSERT INTO `log` VALUES ('155', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-07-11 15:17:45');
INSERT INTO `log` VALUES ('156', '用户名为{dulong}，角色为{超级管理员}的用户登录成功!', '2019-07-11 15:20:41');
INSERT INTO `log` VALUES ('157', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-07-11 15:50:42');
INSERT INTO `log` VALUES ('158', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-07-18 09:07:50');
INSERT INTO `log` VALUES ('159', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-07-18 09:28:17');
INSERT INTO `log` VALUES ('160', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-07-18 09:37:48');
INSERT INTO `log` VALUES ('161', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-07-18 10:02:55');
INSERT INTO `log` VALUES ('162', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-07-18 10:07:53');
INSERT INTO `log` VALUES ('163', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-07-18 10:11:59');
INSERT INTO `log` VALUES ('164', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-07-18 10:15:33');
INSERT INTO `log` VALUES ('165', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-07-18 11:30:40');
INSERT INTO `log` VALUES ('166', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-07-18 11:36:25');
INSERT INTO `log` VALUES ('167', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-07-18 12:54:39');
INSERT INTO `log` VALUES ('168', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-07-18 14:36:31');
INSERT INTO `log` VALUES ('169', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-07-18 15:28:33');
INSERT INTO `log` VALUES ('170', '用户名为admin的用户登录时输入密码错误!', '2019-08-14 15:51:44');
INSERT INTO `log` VALUES ('171', '用户名为admin的用户登录时输入密码错误!', '2019-08-14 15:51:49');
INSERT INTO `log` VALUES ('172', '用户名为admin的用户登录时输入密码错误!', '2019-08-14 15:51:54');
INSERT INTO `log` VALUES ('173', '用户名为admin的用户登录时输入密码错误!', '2019-08-14 15:52:05');
INSERT INTO `log` VALUES ('174', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-08-14 15:52:11');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL DEFAULT '-1',
  `name` varchar(32) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `icon` varchar(32) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '0', '系统设置', '', 'icon-advancedsettings');
INSERT INTO `menu` VALUES ('5', '1', '菜单管理', '../admin/menu/list', 'icon-chart-organisation');
INSERT INTO `menu` VALUES ('13', '1', '角色管理', '../admin/role/list', 'icon-group-key');
INSERT INTO `menu` VALUES ('14', '0', '用户管理', '', 'icon-group-gear');
INSERT INTO `menu` VALUES ('15', '14', '用户列表', '../admin/user/list', 'icon-group');
INSERT INTO `menu` VALUES ('17', '5', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('18', '5', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('19', '5', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('20', '5', '添加按钮', 'openAddMenu()', 'icon-add');
INSERT INTO `menu` VALUES ('21', '13', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('22', '13', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('23', '13', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('24', '15', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('25', '15', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('26', '15', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('31', '0', '系统日志', '', 'icon-table-cell');
INSERT INTO `menu` VALUES ('32', '31', '日志列表', '../admin/log/list', 'icon-page-white-text');
INSERT INTO `menu` VALUES ('33', '32', '添加日志', 'openAdd()', 'icon-add1');
INSERT INTO `menu` VALUES ('34', '32', '删除', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES ('35', '1', '修改密码', 'edit_password', 'icon-lock-edit');
INSERT INTO `menu` VALUES ('36', '35', '修改密码', 'openAdd()', 'icon-lock-edit');
INSERT INTO `menu` VALUES ('37', '0', '内容管理', '', 'icon-feed');
INSERT INTO `menu` VALUES ('38', '37', '分类管理', '../admin/news_category/list', 'icon-feed-star');
INSERT INTO `menu` VALUES ('39', '38', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('40', '38', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('41', '38', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('42', '37', ' 内容管理', '../admin/news/list', 'icon-feed-edit');
INSERT INTO `menu` VALUES ('43', '42', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('44', '42', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('45', '42', '删除', 'remove()', 'icon-cross');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryId` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `tags` varchar(128) NOT NULL,
  `photo` varchar(64) NOT NULL,
  `author` varchar(32) NOT NULL,
  `content` longtext NOT NULL,
  `viewNumber` int(8) NOT NULL DEFAULT '0',
  `cover` int(3) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `categoryId` (`categoryId`) USING BTREE,
  CONSTRAINT `news_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `news_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('65', '19', '2013年人才安居房通知', '三亚晨报', '../resources/upload/news-pic.jpg', '张婷', '<p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811512792018515.jpg\" title=\"1562811512792018515.jpg\" alt=\"img6.jpg\" width=\"860\" height=\"2239\"/></p>', '2', '1', '2019-06-27 21:04:29');
INSERT INTO `news` VALUES ('67', '17', '三亚市限价商品住房管理暂行办法', '三亚市政府', '/news_war_exploded/resources/upload/1562811375372.jpg', '张婷', '<p><br/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811384950059257.jpg\" title=\"1562811384950059257.jpg\" width=\"869\" height=\"1249\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811385044027318.jpg\" title=\"1562811385044027318.jpg\" width=\"870\" height=\"1567\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811385200082110.jpg\" title=\"1562811385200082110.jpg\" width=\"880\" height=\"1547\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811385309069780.jpg\" title=\"1562811385309069780.jpg\" width=\"899\" height=\"1517\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811385481076301.jpg\" title=\"1562811385481076301.jpg\" width=\"869\" height=\"1523\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811385153088682.jpg\" title=\"1562811385153088682.jpg\" width=\"886\" height=\"1558\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811385371004313.jpg\" title=\"1562811385371004313.jpg\" width=\"872\" height=\"1526\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811385699036460.jpg\" title=\"1562811385699036460.jpg\" width=\"862\" height=\"1541\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811385761032952.jpg\" title=\"1562811385761032952.jpg\" width=\"904\" height=\"1535\"/></p><p><br/></p>', '3', '1', '2019-06-27 21:08:37');
INSERT INTO `news` VALUES ('68', '17', '三亚市企事业单位自建保障性住房管理办法', '三亚市政府', '/news_war_exploded/resources/upload/1562831480886.jpg', '张婷', '<p style=\"text-align:center\"><strong><span style=\"font-family: 宋体;font-size: 29px\"><span style=\"font-family:宋体\">企事业单位自建保障性住房管理办法</span> </span></strong></p><p style=\"text-align:center\"><strong><span style=\"font-family: 宋体;font-size: 29px\"><span style=\"font-family:宋体\">（试行）</span></span></strong><span style=\";font-family:仿宋_GB2312;font-size:21px\"><span style=\"font-family:仿宋_GB2312\">三府</span></span><span style=\";font-family:仿宋_GB2312;font-size:21px\">[2012]</span><span style=\";font-family:仿宋_GB2312;font-size:21px\">105号</span></p><p style=\"text-align:center\"><strong><span style=\"font-family: 宋体;font-size: 29px\">&nbsp;</span></strong></p><p style=\"margin-left:115px;text-align:center\"><span style=\"font-family:黑体;font-size:21px\">第一章&nbsp;</span><span style=\";font-family:黑体;font-size:21px\"><span style=\"font-family:黑体\">总</span> &nbsp;&nbsp;<span style=\"font-family:黑体\">则</span></span></p><p style=\"text-indent:32px\"><span style=\";font-family:仿宋_GB2312;font-size:16px\">&nbsp;</span></p><p style=\"text-indent:43px\"><strong><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">第一条</span> &nbsp;</span></strong><span style=\";font-family:仿宋_GB2312;font-size:21px\"><span style=\"font-family:仿宋_GB2312\">为加快推进保障性安居工程建设，多渠道筹集保障性住房房源，规范企事业单位自建保障性住房的管理，</span></span><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">让</span></span><span style=\";font-family:仿宋_GB2312;font-size:21px\"><span style=\"font-family:仿宋_GB2312\">符合条件</span></span><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">的居民享受到保障性住房，</span></span><span style=\";font-family:仿宋_GB2312;font-size:21px\"><span style=\"font-family:仿宋_GB2312\">根据《海南省人民政府关于加快发展保障性住房</span></span><span style=\"font-size: 21px; font-family: 仿宋_GB2312;\">的意见》（琼府[2010]64号）、《海南省经济适用住房管理实施办法》、《海南省限价商品住房管理办法（试行）》、《海南省人民政府办公厅贯彻国务院办公厅关于促进房地产市场平稳健康发展通知的实施意见》（琼府[2010]19号）文件的精神，结合我市实际情况，制订本办法。</span></p><p style=\"text-indent:43px\"><strong><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">第二条</span> </span></strong><span style=\"font-family: 黑体;font-size: 21px\">&nbsp;</span><span style=\";font-family:仿宋_GB2312;font-size:21px\"><span style=\"font-family:仿宋_GB2312\">本办法所称企事业单位自建保障性住房，是指危旧住房较多、住房困难职工较多的企事业单位，在符合城市规划的前提下，经市人民政府批准，通过整合现有土地资源、危旧房改造等方式建设一定规模的保障性住房。企事业单位自建保障性住房</span><span style=\"font-family:仿宋_GB2312\">，以限价商品住房、经济适用住房和公共租赁住房为主</span><span style=\"font-family:仿宋_GB2312\">。</span></span></p><p style=\"text-indent:43px\"><span style=\";font-family:仿宋_GB2312;font-size:21px\">&nbsp;</span></p><p style=\"margin-left:115px;text-align:center\"><span style=\"font-family:黑体;font-size:21px\">第二章&nbsp;</span><span style=\";font-family:黑体;font-size:21px\"><span style=\"font-family:黑体\">企业自建保障性住房条件</span></span></p><p style=\"text-indent:29px\"><span style=\";font-family:黑体;font-size:15px\">&nbsp;</span></p><p style=\"text-indent:43px\"><strong><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">第三条</span> &nbsp;</span></strong><span style=\";font-family:仿宋_GB2312;font-size:21px\"><span style=\"font-family:仿宋_GB2312\">企事业单位自建保障性住房应符合以下条件：</span></span></p><p style=\"text-indent:42px\"><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">（一）</span></span><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">符合土地利用总体规划和城市规划的要求</span><span style=\"font-family:仿宋_GB2312\">；</span></span></p><p style=\"text-indent:42px\"><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">（二）符合保障性住房建设规划的要求；</span></span></p><p style=\"text-indent:42px\"><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">（三）供给对象符合保障性住房条件；</span></span></p><p style=\"text-indent:42px\"><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">（四）</span></span><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">建设分配方案经市保障办审核，报市人民政府批准；</span></span></p><p style=\"text-indent:42px\"><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">（五）</span></span><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">依法办理完毕规划审批、用地性质变更或土地出让手续；</span></span></p><p style=\"text-indent:42px\"><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">（六）工程建设、质量、进度等接受保障性住房主管部门的监管。</span></span></p><p style=\"text-indent:42px\"><span style=\";font-family:黑体;font-size:21px\">&nbsp;</span></p><p style=\"text-indent:42px;text-align:center\"><span style=\"font-family: 黑体;font-size: 21px\"><span style=\"font-family:黑体\">第三章</span> &nbsp;<span style=\"font-family:黑体\">建设程序</span></span></p><p style=\"text-indent:42px;text-align:center\"><span style=\"font-family: 黑体;font-size: 13px\">&nbsp;</span></p><p style=\"text-indent:42px\"><strong><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">第四条</span> &nbsp;</span></strong><span style=\";font-family:仿宋_GB2312;font-size:21px\"><span style=\"font-family:仿宋_GB2312\">提出申请。建设单位制定建设方案包括：项目选址、</span></span><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">建设主体、建设模式、测算指标、项目建设情况、供给对象、资金来源、后续管理等内容，提出现变更用途的申请，包含说明变更的原因与情况。</span></span></p><p style=\"text-indent:43px\"><strong><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">第五条</span> &nbsp;</span></strong><span style=\";font-family:仿宋_GB2312;font-size:21px\"><span style=\"font-family:仿宋_GB2312\">征求意见。由市保障办就土地性质等相关用地指标征求规划、国土、住建等部门意见。</span></span></p><p style=\"text-indent:43px\"><strong><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">第六条</span> &nbsp;</span></strong><span style=\";font-family:仿宋_GB2312;font-size:21px\"><span style=\"font-family:仿宋_GB2312\">建设方案。市保障办按照各相关单位提出的意见修改建设方案，确定保障性住房的建设住房类型、套数、建筑面积等。</span></span></p><p style=\"text-indent:43px\"><strong><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">第七条</span> &nbsp;</span></strong><span style=\";font-family:仿宋_GB2312;font-size:21px\"><span style=\"font-family:仿宋_GB2312\">公示建设方案。市保障办将建设方案报市政府批准后，公示建设方案，包括土地位置、面积、用途、容积率、供地方式、供给对象、单位法人等内容，公示期限为</span>15日。</span></p><p style=\"text-indent: 43px\"><strong><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">第八条</span></span></strong><strong><span style=\"font-family: 仿宋_GB2312;color: rgb(255, 0, 0);font-size: 21px\">&nbsp;&nbsp;</span></strong><span style=\";font-family:仿宋_GB2312;font-size:21px\"><span style=\"font-family:仿宋_GB2312\">办理规划、土地手续。规划行政主管部门依据控规出具建设用地的规划条件后，</span><span style=\"font-family:仿宋_GB2312\">企事业</span><span style=\"font-family:仿宋_GB2312\">应到国土局相关部门办理有关产权变更登记，重新签订变更土地合同，企事业单位法人按照变更土地合同约定付清全部国有土地使用权出让金，依法申请办理土地变更登记手续，取得土地使用权。</span></span></p><p style=\"text-indent: 43px\"><strong><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">第九条</span> </span></strong><span style=\";font-family:仿宋_GB2312;font-size:21px\">&nbsp;<span style=\"font-family:仿宋_GB2312\">按基本建设程序实施。</span></span><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">保障性住房项目必须严格按照有关规划建设管理的规定程序报批、建设，不得变更批准的项目规模、套型结构和用途。必须严格执行施工图审查、工程招标、施工许可、质量监督、工程监理、竣工验收备案等建设程序，严格执行国家有关保障性住房建设的技术标准和强制性规定。</span></span></p><p style=\"text-indent: 43px\"><strong><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">第十条</span></span></strong><span style=\"font-family: 仿宋_GB2312;font-size: 21px\">&nbsp;&nbsp;<span style=\"font-family:仿宋_GB2312\">企事业单位自建保障性住房应享受保障性住房的相关优惠政策。</span></span></p><p style=\"text-indent: 43px\"><span style=\"font-family: 仿宋_GB2312;font-size: 21px\">&nbsp;</span></p><p style=\"text-indent:43px;text-align:center\"><span style=\"font-family: 黑体;font-size: 21px\"><span style=\"font-family:黑体\">第四章</span> &nbsp;<span style=\"font-family:黑体\">分配管理</span></span></p><p style=\"text-indent:29px;text-align:center\"><span style=\"font-family: 黑体;font-size: 15px\">&nbsp;</span></p><p style=\"text-indent:43px\"><strong><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">第十一条</span></span></strong><span style=\";font-family:黑体;font-size:21px\">&nbsp;</span><span style=\";font-family:仿宋_GB2312;font-size:21px\"><span style=\"font-family:仿宋_GB2312\">企事业单位自建保障性住房</span></span><span style=\"font-size: 21px; font-family: 仿宋_GB2312;\">（公共租赁住房），可优先解决本单位职工住房困难家庭，单位职工须与单位签订劳动合同2年以上（含2年）可申请租赁保障性住房。</span></p><p style=\"text-indent:43px\"><strong><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">第十二条</span></span></strong><span style=\";font-family:仿宋_GB2312;font-size:21px\">&nbsp;&nbsp;<span style=\"font-family:仿宋_GB2312\">企事业单位自建保障性住房</span><span style=\"font-family:仿宋_GB2312\">（限价商品住房、经济适用住房），可优先解决本单位职工的住房需求，在本单位交纳社会保险满</span>3年以上（含三年）的单位职工可申请购买保障性住房。</span></p><p style=\"text-indent:43px\"><strong><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">第十三条</span></span></strong><span style=\";font-family:仿宋_GB2312;font-size:21px\">&nbsp;&nbsp;<span style=\"font-family:仿宋_GB2312\">在优先满足本单位符合住房保障条件的职工需求的基础上，剩余住房由市政府统筹安排，向符合保障条件的其他居民家庭供应。企事业单位职工及其他居民申购条件参照《三亚市经济适用住房管理办法》、《三亚市限价商品住房管理办法》、《三亚市公共租赁住房管理办法》。</span></span></p><p style=\"text-indent:43px\"><span style=\";font-family:仿宋_GB2312;font-size:21px\">&nbsp;</span></p><p style=\"text-indent:43px;text-align:center\"><span style=\"font-family: 黑体;font-size: 21px\"><span style=\"font-family:黑体\">第五章</span> &nbsp;<span style=\"font-family:黑体\">监督管理</span></span></p><p style=\"text-indent:29px\"><span style=\"font-family: 黑体;font-size: 15px\">&nbsp;</span></p><p style=\"text-indent:43px\"><strong><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">第十四条</span></span></strong><span style=\"font-family: 仿宋_GB2312;font-size: 21px\">&nbsp;&nbsp;<span style=\"font-family:仿宋_GB2312\">企事业单位自建的保障性住房由建设单位负总责，由建设主体实施项目建设，建设主体严格按照方案确定的要求组织实施；市保障性住房建设工作领导小组办公室负责协调、监督企事业单位自建保障性住房的情况。</span></span></p><p style=\"text-indent:43px\"><strong><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">第十五条</span></span></strong><span style=\"font-family: 仿宋_GB2312;font-size: 21px\">&nbsp;&nbsp;<span style=\"font-family:仿宋_GB2312\">市保障办严格审核企事业单位职工申请住房情况，职工应当主动向负责审查单位提供材料，配合做好调查工作。</span></span></p><p style=\"text-indent:43px\"><strong><span style=\"font-family: 仿宋_GB2312;font-size: 21px\"><span style=\"font-family:仿宋_GB2312\">第十六条</span></span></strong><span style=\"font-family: 仿宋_GB2312;font-size: 21px\">&nbsp;&nbsp;<span style=\"font-family:仿宋_GB2312\">保障办应</span><span style=\"font-family:仿宋_GB2312\">加强对企事业单位自建保障性住房分配房源、分配方案、分配结构及使用情况的监督管理，定期或不定期对保障性住房进行监督检查，检查结果应及时向社会公布。市政府相关单位应当设立并公布举报电话、信箱、电子邮箱等，畅通信访举报渠道，采取多种方式接受社会监督。</span></span></p><p><span style=\";font-family:Calibri;font-size:14px\">&nbsp;</span></p><p><br/></p>', '11', '1', '2019-06-27 21:15:26');
INSERT INTO `news` VALUES ('69', '19', '关于印发三亚市新建住宅项目配建保障性住房管理办法的通知', '三亚市政府', '/news_war_exploded/resources/upload/1562811182977.jpg', '张婷', '<p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811193507080186.jpg\" title=\"1562811193507080186.jpg\" width=\"850\" height=\"1601\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811193631097440.jpg\" title=\"1562811193631097440.jpg\" width=\"862\" height=\"1519\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811193803071890.jpg\" title=\"1562811193803071890.jpg\" width=\"903\" height=\"1548\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811193990027144.jpg\" title=\"1562811193990027144.jpg\" width=\"878\" height=\"1566\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811193694012845.jpg\" title=\"1562811193694012845.jpg\" width=\"889\" height=\"1520\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811194177036245.jpg\" title=\"1562811194177036245.jpg\" width=\"865\" height=\"1577\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811193850076778.jpg\" title=\"1562811193850076778.jpg\" width=\"863\" height=\"1462\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811194427070756.jpg\" title=\"1562811194427070756.jpg\" width=\"885\" height=\"1506\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811194318036113.jpg\" title=\"1562811194318036113.jpg\" width=\"884\" height=\"1516\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811194630025508.jpg\" title=\"1562811194630025508.jpg\" width=\"897\" height=\"1359\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811194708090588.jpg\" title=\"1562811194708090588.jpg\" width=\"1\" height=\"1\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811194755022043.jpg\" title=\"1562811194755022043.jpg\" width=\"834\" height=\"1055\"/></p><p><br/></p>', '5', '0', '2019-06-27 21:21:46');
INSERT INTO `news` VALUES ('70', '19', '三亚市公共租赁住房和廉租住房并轨管理暂行办法', '三亚市政府', '/news_war_exploded/resources/upload/1562810997399.jpg', '张婷', '<p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811009551051049.jpg\" title=\"1562811009551051049.jpg\" width=\"858\" height=\"1580\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811009707088068.jpg\" title=\"1562811009707088068.jpg\" width=\"919\" height=\"1569\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811009894053334.jpg\" title=\"1562811009894053334.jpg\" width=\"892\" height=\"1550\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811009660078956.jpg\" title=\"1562811009660078956.jpg\" width=\"917\" height=\"1588\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811010082054767.jpg\" title=\"1562811010082054767.jpg\" width=\"905\" height=\"1548\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811010160048670.jpg\" title=\"1562811010160048670.jpg\" width=\"890\" height=\"1600\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811009785042178.jpg\" title=\"1562811009785042178.jpg\" width=\"895\" height=\"1600\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811010238063269.jpg\" title=\"1562811010238063269.jpg\" width=\"862\" height=\"1510\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811010362024638.jpg\" title=\"1562811010362024638.jpg\" width=\"877\" height=\"1565\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811010440095728.jpg\" title=\"1562811010440095728.jpg\" width=\"861\" height=\"1522\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811010518048951.jpg\" title=\"1562811010518048951.jpg\" width=\"867\" height=\"1510\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811010612036610.jpg\" title=\"1562811010612036610.jpg\" width=\"852\" height=\"1506\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811010674074322.jpg\" title=\"1562811010674074322.jpg\" width=\"884\" height=\"1501\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562811010721001839.jpg\" title=\"1562811010721001839.jpg\" width=\"853\" height=\"3014\"/></p><p><br/></p>', '2', '1', '2019-06-27 21:26:23');
INSERT INTO `news` VALUES ('71', '5', '2010年三亚市保障性住房申报审核工作方案', '三亚市政府', '/news_war_exploded/resources/upload/1562810706536.jpg', '张婷', '<p><br/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810715647044365.jpg\" title=\"1562810715647044365.jpg\" width=\"923\" height=\"1563\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810715771092625.jpg\" title=\"1562810715771092625.jpg\" width=\"881\" height=\"1539\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810715865005878.jpg\" title=\"1562810715865005878.jpg\" width=\"911\" height=\"1549\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810715990016875.jpg\" title=\"1562810715990016875.jpg\" width=\"893\" height=\"1600\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810716115069848.jpg\" title=\"1562810716115069848.jpg\" width=\"899\" height=\"1527\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810716286025219.jpg\" title=\"1562810716286025219.jpg\" width=\"854\" height=\"1549\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810715818021942.jpg\" title=\"1562810715818021942.jpg\" width=\"854\" height=\"1592\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810716645019592.jpg\" title=\"1562810716645019592.jpg\" width=\"887\" height=\"1559\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810716551048955.jpg\" title=\"1562810716551048955.jpg\" width=\"870\" height=\"1522\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810716193064689.jpg\" title=\"1562810716193064689.jpg\" width=\"918\" height=\"1577\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810716926072133.jpg\" title=\"1562810716926072133.jpg\" width=\"862\" height=\"1574\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810717035066840.jpg\" title=\"1562810717035066840.jpg\" width=\"909\" height=\"1534\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810717004070467.jpg\" title=\"1562810717004070467.jpg\" width=\"887\" height=\"1540\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810717113071487.jpg\" title=\"1562810717113071487.jpg\" width=\"907\" height=\"3401\"/></p><p><br/></p>', '7', '1', '2019-06-27 21:31:16');
INSERT INTO `news` VALUES ('72', '17', '2011年公租房申报审核工作方案', '三亚市政府', '/news_war_exploded/resources/upload/1562810950302.jpg', '张婷', '<p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810881225004828.jpg\" title=\"1562810881225004828.jpg\" width=\"873\" height=\"1605\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810881335021582.jpg\" title=\"1562810881335021582.jpg\" width=\"850\" height=\"1571\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810881803047338.jpg\" title=\"1562810881803047338.jpg\" width=\"845\" height=\"1565\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810881397050151.jpg\" title=\"1562810881397050151.jpg\" width=\"853\" height=\"1568\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810882255057780.jpg\" title=\"1562810882255057780.jpg\" width=\"870\" height=\"1543\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810882177020247.jpg\" title=\"1562810882177020247.jpg\" width=\"848\" height=\"1530\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810882458017739.jpg\" title=\"1562810882458017739.jpg\" width=\"875\" height=\"1566\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810882349064125.jpg\" title=\"1562810882349064125.jpg\" width=\"867\" height=\"1515\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810882536040313.jpg\" title=\"1562810882536040313.jpg\" width=\"851\" height=\"1477\"/></p><p><br/></p>', '3', '1', '2019-06-27 21:32:24');
INSERT INTO `news` VALUES ('73', '5', '2012年三亚市限价商品住房申报审核工作方案', '三亚市政府', '/news_war_exploded/resources/upload/1562810633185.jpg', '张婷', '<p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810643231027336.jpg\" title=\"1562810643231027336.jpg\" width=\"888\" height=\"1544\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810643294062686.jpg\" title=\"1562810643294062686.jpg\" width=\"873\" height=\"1595\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810643450013507.jpg\" title=\"1562810643450013507.jpg\" width=\"881\" height=\"1557\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810643590009605.jpg\" title=\"1562810643590009605.jpg\" width=\"881\" height=\"1570\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810643403059957.jpg\" title=\"1562810643403059957.jpg\" width=\"883\" height=\"1535\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810643528069957.jpg\" title=\"1562810643528069957.jpg\" width=\"879\" height=\"1501\"/></p><p><br/></p>', '15', '0', '2019-06-27 21:34:22');
INSERT INTO `news` VALUES ('74', '5', '三亚市廉租住房管理办法', '三亚市政府', '/news_war_exploded/resources/upload/1562810479899.jpg', '张婷', '<p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810492176005191.jpg\" title=\"1562810492176005191.jpg\" width=\"899\" height=\"1595\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810492270093104.jpg\" title=\"1562810492270093104.jpg\" width=\"910\" height=\"1563\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810492410056534.jpg\" title=\"1562810492410056534.jpg\" width=\"888\" height=\"1557\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810492519008676.jpg\" title=\"1562810492519008676.jpg\" width=\"919\" height=\"1576\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810492348054181.jpg\" title=\"1562810492348054181.jpg\" width=\"914\" height=\"1533\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810492738095579.jpg\" title=\"1562810492738095579.jpg\" width=\"887\" height=\"1556\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810492597010176.jpg\" title=\"1562810492597010176.jpg\" width=\"878\" height=\"1547\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810492972045407.jpg\" title=\"1562810492972045407.jpg\" width=\"889\" height=\"1543\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810493190083699.jpg\" title=\"1562810493190083699.jpg\" width=\"874\" height=\"1501\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810493284090454.jpg\" title=\"1562810493284090454.jpg\" width=\"899\" height=\"1519\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810493362011338.jpg\" title=\"1562810493362011338.jpg\" width=\"887\" height=\"1566\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810492894053185.jpg\" title=\"1562810492894053185.jpg\" width=\"899\" height=\"1498\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810493705011182.jpg\" title=\"1562810493705011182.jpg\" width=\"929\" height=\"1539\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810493533074385.jpg\" title=\"1562810493533074385.jpg\" width=\"934\" height=\"1554\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810493627053402.jpg\" title=\"1562810493627053402.jpg\" width=\"902\" height=\"1486\"/></p><p><br/></p>', '6', '0', '2019-06-27 21:35:46');
INSERT INTO `news` VALUES ('75', '19', '三亚市促进总部经济发展暂行办法的通知', '三亚市政府', '/news_war_exploded/resources/upload/1562810259642.jpg', '张婷', '<p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810282543049756.jpg\" title=\"1562810282543049756.jpg\" width=\"886\" height=\"1585\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810282949061470.jpg\" title=\"1562810282949061470.jpg\" width=\"864\" height=\"1326\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810282995083520.jpg\" title=\"1562810282995083520.jpg\" width=\"930\" height=\"1501\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810283011074481.jpg\" title=\"1562810283011074481.jpg\" width=\"908\" height=\"1331\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810283245022675.jpg\" title=\"1562810283245022675.jpg\" width=\"897\" height=\"1570\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810283385035341.jpg\" title=\"1562810283385035341.jpg\" width=\"891\" height=\"1495\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810283448066974.jpg\" title=\"1562810283448066974.jpg\" width=\"947\" height=\"1497\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562810283573058112.jpg\" title=\"1562810283573058112.jpg\" width=\"866\" height=\"1364\"/></p><p><br/></p>', '5', '0', '2019-06-27 21:47:44');
INSERT INTO `news` VALUES ('76', '19', '三亚市人才住房租赁补贴和购房补贴申请发放规程（试行）的通知', '三亚市政府', '/news_war_exploded/resources/upload/1562810013146.jpg', '张婷', '<p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562809996064084680.jpg\" title=\"1562809996064084680.jpg\" width=\"912\" height=\"1586\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562809996142025650.jpg\" title=\"1562809996142025650.jpg\" width=\"914\" height=\"1583\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562809996205057661.jpg\" title=\"1562809996205057661.jpg\" width=\"923\" height=\"1594\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562809996485017966.jpg\" title=\"1562809996485017966.jpg\" width=\"912\" height=\"1529\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562809996579072463.jpg\" title=\"1562809996579072463.jpg\" width=\"965\" height=\"1542\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562809996657074112.jpg\" title=\"1562809996657074112.jpg\" width=\"892\" height=\"1577\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562809996626006680.jpg\" title=\"1562809996626006680.jpg\" width=\"915\" height=\"3248\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562809996735097479.jpg\" title=\"1562809996735097479.jpg\" width=\"895\" height=\"1572\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562809996813023420.jpg\" title=\"1562809996813023420.jpg\" width=\"880\" height=\"1586\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562809996922055942.jpg\" title=\"1562809996922055942.jpg\" width=\"896\" height=\"1130\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562809997031029270.jpg\" title=\"1562809997031029270.jpg\" width=\"903\" height=\"916\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562809997078043930.jpg\" title=\"1562809997078043930.jpg\" width=\"942\" height=\"3411\"/></p><p><br/></p>', '9', '0', '2019-06-27 21:58:51');
INSERT INTO `news` VALUES ('77', '5', '保障性住房分类表+申请条件+申请资料', '三亚市政府', '/news_war_exploded/resources/upload/1562811831891.jpg', '张婷', '<p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562809014542043821.jpg\" title=\"1562809014542043821.jpg\" width=\"1\" height=\"1\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562809014635050529.jpg\" title=\"1562809014635050529.jpg\" width=\"891\" height=\"1168\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562809014854042880.jpg\" title=\"1562809014854042880.jpg\" width=\"826\" height=\"1060\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562809015072011531.jpg\" title=\"1562809015072011531.jpg\" width=\"831\" height=\"1081\"/></p><p><img src=\"/news_war_exploded/resources/upload/image/20190711/1562809015275071218.jpg\" title=\"1562809015275071218.jpg\" width=\"831\" height=\"1193\"/></p><p style=\"text-align:center\"><img src=\"/news_war_exploded/resources/upload/image/20190711/1562809014557018279.jpg\" title=\"1562809014557018279.jpg\" width=\"963\" height=\"1154\"/></p><p><br/></p>', '29', '0', '2019-06-27 22:04:20');

-- ----------------------------
-- Table structure for news_category
-- ----------------------------
DROP TABLE IF EXISTS `news_category`;
CREATE TABLE `news_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `sort` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of news_category
-- ----------------------------
INSERT INTO `news_category` VALUES ('5', '新闻', '0');
INSERT INTO `news_category` VALUES ('10', '法律法规', '3');
INSERT INTO `news_category` VALUES ('17', '政策', '2');
INSERT INTO `news_category` VALUES ('19', '公告', '1');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员', '超级管理员拥有一切权限！');
INSERT INTO `role` VALUES ('2', '普通用户', '普通用户，请自由授权！');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `roleId` int(11) NOT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `sex` int(1) NOT NULL DEFAULT '0',
  `age` int(3) NOT NULL DEFAULT '0',
  `address` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `roleId` (`roleId`) USING BTREE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123', '1', '../resources/upload/1545572488494.jpg', '1', '1', '上海市浦东新区浦东南路1835号');
INSERT INTO `user` VALUES ('15', 'du', '123', '2', '/BaseProjectSSM/resources/admin/easyui/images/user_photo.jpg', '0', '22', '南昌航空大学');
INSERT INTO `user` VALUES ('16', 'wlxing', 'wlxing910711', '2', '/BaseProjectSSM/resources/admin/easyui/images/user_photo.jpg', '2', '22', '');
INSERT INTO `user` VALUES ('17', 'dulong', '5isgld', '1', '/news_war_exploded/resources/upload/1562829598849.png', '0', '1', '');
