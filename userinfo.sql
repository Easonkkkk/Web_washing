/*
Navicat MySQL Data Transfer

Source Server         : web
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : info

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2021-01-03 15:28:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'mojunjie', '2354');
INSERT INTO `userinfo` VALUES ('2', 'mjj', '111');
INSERT INTO `userinfo` VALUES ('3', '莫俊杰', '123');
INSERT INTO `userinfo` VALUES ('4', 'wdwd', '1111');
INSERT INTO `userinfo` VALUES ('5', 'mkl', '123');
INSERT INTO `userinfo` VALUES ('6', 'tyt', '123');
INSERT INTO `userinfo` VALUES ('7', 'coco', '123');
INSERT INTO `userinfo` VALUES ('8', 'mxp', '123456');
INSERT INTO `userinfo` VALUES ('9', 'da', '12345');
INSERT INTO `userinfo` VALUES ('10', 'eason', '1111');
INSERT INTO `userinfo` VALUES ('11', 'mkk', '111');
INSERT INTO `userinfo` VALUES ('12', 'mll', '1111');
