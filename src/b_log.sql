/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : beian

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2015-03-25 16:55:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `b_log`
-- ----------------------------
DROP TABLE IF EXISTS `b_log`;
CREATE TABLE `b_log` (
  `id` int(10) NOT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `operation` varchar(100) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_log
-- ----------------------------
