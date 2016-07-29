/*
Navicat MySQL Data Transfer

Source Server         : tinman-local
Source Server Version : 50613
Source Host           : 10.0.0.11:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50613
File Encoding         : 65001

Date: 2016-07-29 10:33:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tab_people
-- ----------------------------
DROP TABLE IF EXISTS `tab_people`;
CREATE TABLE `tab_people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_people
-- ----------------------------
INSERT INTO `tab_people` VALUES ('1', '10');
INSERT INTO `tab_people` VALUES ('2', '20');
