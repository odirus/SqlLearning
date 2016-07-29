/*
Navicat MySQL Data Transfer

Source Server         : tinman-local
Source Server Version : 50613
Source Host           : 10.0.0.11:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50613
File Encoding         : 65001

Date: 2016-07-29 10:33:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tab_r_people_nickname
-- ----------------------------
DROP TABLE IF EXISTS `tab_r_people_nickname`;
CREATE TABLE `tab_r_people_nickname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `people_id` int(11) DEFAULT NULL,
  `nickname_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_r_people_nickname
-- ----------------------------
INSERT INTO `tab_r_people_nickname` VALUES ('1', '1', '1');
INSERT INTO `tab_r_people_nickname` VALUES ('2', '1', '2');
INSERT INTO `tab_r_people_nickname` VALUES ('3', '2', '1');
INSERT INTO `tab_r_people_nickname` VALUES ('4', '2', '2');
