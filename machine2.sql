/*
Navicat MySQL Data Transfer

Source Server         : web
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : info

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2021-01-03 15:27:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `machine2`
-- ----------------------------
DROP TABLE IF EXISTS `machine2`;
CREATE TABLE `machine2` (
  `name` varchar(255) NOT NULL,
  `busy` int(255) NOT NULL,
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `location` int(255) DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of machine2
-- ----------------------------
INSERT INTO `machine2` VALUES ('1', '1', '1', '1', '使用中');
INSERT INTO `machine2` VALUES ('2', '1', '2', '1', '使用中');
INSERT INTO `machine2` VALUES ('3', '1', '3', '1', '空闲中');
