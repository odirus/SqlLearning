/*
Navicat MySQL Data Transfer

Source Server         : tinman-local
Source Server Version : 50613
Source Host           : 10.0.0.11:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50613
File Encoding         : 65001

Date: 2016-07-29 10:33:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tab_nickname
-- ----------------------------
DROP TABLE IF EXISTS `tab_nickname`;
CREATE TABLE `tab_nickname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_nickname
-- ----------------------------
INSERT INTO `tab_nickname` VALUES ('1', 'huangjing');
INSERT INTO `tab_nickname` VALUES ('2', 'odirus');
