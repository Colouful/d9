/*
Navicat MySQL Data Transfer

Source Server         : jdbc
Source Server Version : 50018
Source Host           : localhost:3306
Source Database       : shuaiwei

Target Server Type    : MYSQL
Target Server Version : 50018
File Encoding         : 65001

Date: 2020-05-22 10:18:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `shouyintime` varchar(40) NOT NULL,
  `orderid` int(12) NOT NULL auto_increment,
  `carid` varchar(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `itemname` varchar(40) NOT NULL,
  `price` int(10) NOT NULL,
  `zhifutype` varchar(12) NOT NULL,
  PRIMARY KEY  (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('21:08:09', '1', '豫x666x', '李振威', '18438128038', '换轮胎', '440', '现金');
INSERT INTO `users` VALUES ('2020-05-21 21:09:16', '2', '豫x666x', '李振威', '18438128038', '换轮胎', '440', '现金');
INSERT INTO `users` VALUES ('2020-05-21 21:23:44', '3', '豫c9999c', '李甜乐', '18438128038', '换机油', '100', '转账');
INSERT INTO `users` VALUES ('2020-05-21 21:23:44', '4', '豫sb110', '晨曦', '13461314161', '换刹车片', '500', '转账');
INSERT INTO `users` VALUES ('2020-05-20 21:23:44', '5', '豫sb110', '晨曦', '13461314161', '换轮胎', '440', '挂账');
INSERT INTO `users` VALUES ('2020-04-21 21:23:44', '6', '豫c9999c', '李甜乐', '18438128038', '换刹车片', '500', '转账');
INSERT INTO `users` VALUES ('2019-05-21 21:23:44', '7', '豫sb110', '晨曦', '13461314161', '换机油', '100', '转账');
INSERT INTO `users` VALUES ('2020-05-21 23:40:37', '8', '豫c8888', '胖丁', '17836939676', '换轮胎', '300', '现金');
INSERT INTO `users` VALUES ('2020-05-22 00:39:46', '9', '豫c8888', '豫c8888', '13253776298', '换机油', '300', '转账');
INSERT INTO `users` VALUES ('2020-05-22 00:40:04', '10', '豫c7777', '豫c7777', '17836939676', '换机油', '80', '转账');
INSERT INTO `users` VALUES ('2020-05-22 00:40:24', '11', '豫c8888', '豫c8888', '13253776298', '换轮胎', '300', '挂账');
INSERT INTO `users` VALUES ('2020-05-22 01:24:26', '12', '豫c8888', '豫c8888', '13253776298', '换轮胎', '300', '现金');
INSERT INTO `users` VALUES ('2020-05-22 02:45:04', '13', '豫c655', '豫c655', '0', '换轮胎', '300', '转账');
INSERT INTO `users` VALUES ('2020-05-22 02:45:45', '14', '豫c8888', '豫c8888', '18438128038', '换轮胎', '30', '现金');
INSERT INTO `users` VALUES ('2020-05-22 10:17:55', '15', '豫c8888', '豫c8888', '18438128038', '换轮胎', '300', '转账');
