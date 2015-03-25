/*
Navicat MySQL Data Transfer

Source Server         : css
Source Server Version : 50155
Source Host           : localhost:3306
Source Database       : beian

Target Server Type    : MYSQL
Target Server Version : 50155
File Encoding         : 65001

Date: 2014-11-05 11:35:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `b_document`
-- ----------------------------
DROP TABLE IF EXISTS `b_document`;
CREATE TABLE `b_document` (
  `_documentId` varchar(40) NOT NULL,
  `_documentTitle` varchar(45) DEFAULT NULL,
  `_documentContent` varchar(20000) DEFAULT NULL,
  `_documentSTime` varchar(20) DEFAULT NULL,
  `_documentETime` varchar(20) DEFAULT NULL,
  `_documentPublisher` varchar(45) DEFAULT NULL,
  `_documentProvince` varchar(45) DEFAULT NULL,
  `_documentPublishUserId` varchar(40) DEFAULT NULL,
  `_documentParentUnit` varchar(45) DEFAULT NULL,
  `_documentUTime` varchar(45) DEFAULT NULL,
  `_documentITime` varchar(45) DEFAULT NULL,
  `_documentNumber` varchar(45) DEFAULT NULL,
  `_documentField` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`_documentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_document
-- ----------------------------
INSERT INTO `b_document` VALUES ('120efc18-61dc-4f39-baf6-83374641a44e', '规范性文件1', '规范性文件1规范性文件1规范性文件1规范性文件1', '2014-05-26', '2014-05-26', '规范性文件1', '西青区办公室', '228dd564-5acd-4bd6-84cd-e45fcbbc74b8', '天津市', '2014/05/26', '2014-05-26', null, null);

-- ----------------------------
-- Table structure for `b_employee`
-- ----------------------------
DROP TABLE IF EXISTS `b_employee`;
CREATE TABLE `b_employee` (
  `_employeeId` varchar(40) NOT NULL,
  `_employeeName` varchar(45) DEFAULT NULL,
  `_employeeBirthday` varchar(45) DEFAULT NULL,
  `_employeeIssuedBy` varchar(45) DEFAULT NULL,
  `_employeePhone` varchar(14) DEFAULT NULL,
  `_employeeCell` varchar(14) DEFAULT NULL,
  `_employeeEmail` varchar(45) DEFAULT NULL,
  `_employeeProvince` varchar(45) DEFAULT NULL,
  `_employeePublishUserId` varchar(40) DEFAULT NULL,
  `_employeeNumber` varchar(45) DEFAULT NULL,
  `_employeeIssuedTime` varchar(45) DEFAULT NULL,
  `_employeeEffectiveDate` varchar(45) DEFAULT NULL,
  `_employeeFPTime` varchar(45) DEFAULT NULL,
  `_employeeParentUnit` varchar(45) DEFAULT NULL,
  `_employeeUTime` varchar(45) DEFAULT NULL,
  `_employeeJob` varchar(100) DEFAULT NULL COMMENT '所属单位',
  PRIMARY KEY (`_employeeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_employee
-- ----------------------------

-- ----------------------------
-- Table structure for `b_enforcement`
-- ----------------------------
DROP TABLE IF EXISTS `b_enforcement`;
CREATE TABLE `b_enforcement` (
  `_enforcementId` varchar(40) NOT NULL,
  `_enforcementName` varchar(45) DEFAULT NULL,
  `_enforcementProperty` varchar(45) DEFAULT NULL,
  `_enforcementIncharge` varchar(45) DEFAULT NULL,
  `_enforcementinchargeSex` varchar(45) DEFAULT NULL,
  `_enforcementInchargeEmail` varchar(45) DEFAULT NULL,
  `_enforcementInchargeEB` varchar(45) DEFAULT NULL,
  `_enforcementInchargePhone` varchar(45) DEFAULT NULL,
  `_enforcementPublishUserId` varchar(40) DEFAULT NULL,
  `_enforcementInchargeBirthday` varchar(45) DEFAULT NULL,
  `_enforcementUTime` varchar(45) DEFAULT NULL,
  `_enforcementProvince` varchar(45) DEFAULT NULL,
  `_enforcementParentUnit` varchar(45) DEFAULT NULL,
  `_enforcementInchargeLN` varchar(45) DEFAULT NULL,
  `_enforcementFPtime` varchar(45) DEFAULT NULL COMMENT '专职兼职',
  PRIMARY KEY (`_enforcementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_enforcement
-- ----------------------------
INSERT INTO `b_enforcement` VALUES ('1888dbd7-d477-46b3-9d0d-57faf6b96d6d', '11', '否', '456789', '女', '', '本科以下', '', '6598a2eb-f131-4db5-905e-365b10473444', '', '2014/05/29', '天津市', null, '是', null);


-- ----------------------------
-- Table structure for `b_lawagency`
-- ----------------------------
DROP TABLE IF EXISTS `b_lawagency`;
CREATE TABLE `b_lawagency` (
  `_lawagencyId` varchar(40) NOT NULL,
  `_lawagencyTitle` varchar(45) DEFAULT NULL,
  `_lawagencyUTime` varchar(45) DEFAULT NULL,
  `_lawagencyProvince` varchar(45) DEFAULT NULL,
  `_lawagencyPublishUserId` varchar(40) DEFAULT NULL,
  `_lawagencyAddress` varchar(45) DEFAULT NULL,
  `_lawagencyZip` varchar(10) DEFAULT NULL,
  `_lawagencyProperty` varchar(45) DEFAULT NULL,
  `_lawagencyNumber` varchar(45) DEFAULT NULL,
  `_lawagencyInchargeName` varchar(45) DEFAULT NULL,
  `_lawagencyInchargeTitle` varchar(45) DEFAULT NULL,
  `_lawagencyInchargeSex` varchar(45) DEFAULT NULL,
  `_lawagencyInchargeBirthday` varchar(45) DEFAULT NULL,
  `_lawagencyInchargeEB` varchar(45) DEFAULT NULL,
  `_lawagencyLeadershipName` varchar(45) DEFAULT NULL,
  `_lawagencyLeadershipTitle` varchar(45) DEFAULT NULL,
  `_lawagencyLeadershipPhone` varchar(45) DEFAULT NULL,
  `_lawagencyInchargeNumber` varchar(45) DEFAULT NULL,
  `_lawagencyInchargeLN` varchar(45) DEFAULT NULL,
  `_lawagencyInchargeEmail` varchar(45) DEFAULT NULL,
  `_lawagencyParentUnit` varchar(45) DEFAULT NULL,
  `_lawagencyPhone` varchar(45) DEFAULT NULL,
  `_lawagencyMobilePhone` varchar(45) DEFAULT NULL,
  `_lawagencyAddressProvince` varchar(45) DEFAULT NULL COMMENT '省',
  `_lawagencyAddressCity` varchar(45) DEFAULT NULL COMMENT '城市',
  `_lawagencyAdministrativeProvince` varchar(45) DEFAULT NULL COMMENT '行政区域 省',
  PRIMARY KEY (`_lawagencyId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_lawagency
-- ----------------------------
INSERT INTO `b_lawagency` VALUES ('a1945697-0198-4e29-adf9-c0c678316485', '天津市', '2013/11/24', '中国', '7e12abcf-f37b-42ea-981d-c0d16d49d57c', '天津市', '300201', '是', null, '', '', '男', '', '本科', '', '', '', '4', '是', '', '中国', null, null, null, null, null);

-- ----------------------------
-- Table structure for `b_laws`
-- ----------------------------
DROP TABLE IF EXISTS `b_laws`;
CREATE TABLE `b_laws` (
  `_lawsId` varchar(40) NOT NULL,
  `_lawsTitle` varchar(45) DEFAULT NULL,
  `_lawsContent` mediumtext,
  `_lawsSTime` varchar(45) DEFAULT NULL,
  `_lawsETime` varchar(45) DEFAULT NULL,
  `_lawsPublisher` varchar(45) DEFAULT NULL,
  `_lawsProvince` varchar(45) DEFAULT NULL,
  `_lawsPublishUserId` varchar(40) DEFAULT NULL,
  `_lawsUTime` varchar(45) DEFAULT NULL,
  `_lawsITime` varchar(45) DEFAULT NULL,
  `_lawsParentUint` varchar(45) DEFAULT NULL,
  `_lawsField` varchar(50) DEFAULT NULL COMMENT '领域类别',
  PRIMARY KEY (`_lawsId`),
  KEY `FK_b_laws_user` (`_lawsPublishUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_laws
-- ----------------------------
INSERT INTO `b_laws` VALUES ('3f256589-9aa8-4793-b07e-e559b65516f1', '1', '1', '2014-06-11', '', '', '西青区办公室', '228dd564-5acd-4bd6-84cd-e45fcbbc74b8', '2014/06/11', '', '天津市', null);

-- ----------------------------
-- Table structure for `b_lstandards`
-- ----------------------------
DROP TABLE IF EXISTS `b_lstandards`;
CREATE TABLE `b_lstandards` (
  `_lstandardsId` varchar(40) NOT NULL,
  `_lstandardsTitle` varchar(45) DEFAULT NULL,
  `_lstandardsContent` mediumtext,
  `_lstandardsSTime` varchar(45) DEFAULT NULL,
  `_lstandardsUTime` varchar(45) DEFAULT NULL,
  `_lstandardsParentUnit` varchar(45) DEFAULT NULL,
  `_lstandardsProvince` varchar(45) DEFAULT NULL,
  `_lstandardsPublishUserId` varchar(40) DEFAULT NULL,
  `_lstandardsPublishUser` varchar(45) DEFAULT NULL,
  `_lstandardsITime` varchar(45) DEFAULT NULL,
  `_lstandardsETime` varchar(45) DEFAULT NULL,
  `_lstandardsNumber` varchar(45) DEFAULT NULL,
  `_lstandardsETitle` varchar(45) DEFAULT NULL,
  `_lstandardsCategory` varchar(45) DEFAULT NULL COMMENT '标准类别',
  PRIMARY KEY (`_lstandardsId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_lstandards
-- ----------------------------
INSERT INTO `b_lstandards` VALUES ('ab8f0110-c75e-4fb5-be20-9af0ccb2f6db', '', '', '', '2014/05/26', '天津市', '西青区办公室', '228dd564-5acd-4bd6-84cd-e45fcbbc74b8', '', '', '', '001', null, null);

-- ----------------------------
-- Table structure for `b_news`
-- ----------------------------
DROP TABLE IF EXISTS `b_news`;
CREATE TABLE `b_news` (
  `_newsId` varchar(40) NOT NULL,
  `_newsTitle` varchar(45) DEFAULT NULL,
  `_newsContent` varchar(20000) DEFAULT NULL,
  `_newsUTime` varchar(45) DEFAULT NULL,
  `_newsPublishUserId` varchar(40) DEFAULT NULL,
  `_newsProvince` varchar(45) DEFAULT NULL,
  `_newsParentUnit` varchar(45) DEFAULT NULL,
  `_submitFlg` varchar(45) DEFAULT NULL,
  `_type` varchar(45) DEFAULT NULL,
  `_newsATime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`_newsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_news
-- ----------------------------
INSERT INTO `b_news` VALUES ('040318ff-1beb-485d-ad86-df3f68db90ef', '11', '11', '2014-05-29', '6598a2eb-f131-4db5-905e-365b10473444', null, null, '2', '1,2,3,4,5,6,7,8', '2014-05-29');

-- ----------------------------
-- Table structure for `b_policy`
-- ----------------------------
DROP TABLE IF EXISTS `b_policy`;
CREATE TABLE `b_policy` (
  `_policyId` varchar(40) NOT NULL,
  `_policyName` varchar(45) DEFAULT NULL,
  `_policyCategory` varchar(45) DEFAULT NULL,
  `_policyProvince` varchar(45) DEFAULT NULL,
  `_policyIncharger` varchar(45) DEFAULT NULL,
  `_policySDate` varchar(45) DEFAULT NULL,
  `_policyEDate` varchar(45) DEFAULT NULL,
  `_policyUDate` varchar(45) DEFAULT NULL,
  `_policyADate` varchar(45) DEFAULT NULL,
  `_policyThesis` varchar(45) DEFAULT NULL,
  `_policyPublishUserId` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`_policyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_policy
-- ----------------------------

-- ----------------------------
-- Table structure for `b_propaganda`
-- ----------------------------
DROP TABLE IF EXISTS `b_propaganda`;
CREATE TABLE `b_propaganda` (
  `_propagandaId` varchar(40) NOT NULL,
  `_propagandaTitle` varchar(45) DEFAULT NULL,
  `_propagandaSTime` varchar(45) DEFAULT NULL,
  `_propagandaLocation` varchar(45) DEFAULT NULL,
  `_propagandaContent` varchar(20000) DEFAULT NULL,
  `_propagandaPeople` varchar(45) DEFAULT NULL,
  `_propagandaProvince` varchar(45) DEFAULT NULL,
  `_propagandaUTime` varchar(45) DEFAULT NULL,
  `_propagandaPublishUserId` varchar(45) DEFAULT NULL,
  `_propagandaParentUnit` varchar(45) DEFAULT NULL,
  `_propagandaETime` varchar(45) DEFAULT NULL,
  `_propagandaOrgnizor` varchar(45) DEFAULT NULL,
  `_propagandaRange` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`_propagandaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_propaganda
-- ----------------------------
INSERT INTO `b_propaganda` VALUES ('70ae02c8-972e-48a7-8dd2-2cba57b6cdb6', '1', '2014-06-12', '1', '', '50人以下', '天津市', '2014/06/11', '6598a2eb-f131-4db5-905e-365b10473444', '中国', '', '', '');

-- ----------------------------
-- Table structure for `b_province`
-- ----------------------------
DROP TABLE IF EXISTS `b_province`;
CREATE TABLE `b_province` (
  `_provinceId` varchar(40) NOT NULL DEFAULT '',
  `_provinceName` varchar(45) DEFAULT NULL,
  `_parentUnit` varchar(45) DEFAULT NULL,
  `_priority` varchar(45) DEFAULT NULL,
  `_privilege` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`_provinceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_province
-- ----------------------------
INSERT INTO `b_province` VALUES ('289e977b-60ab-48f7-ad6f-85e77b20f6cb', '11', '555', '11', '1');
INSERT INTO `b_province` VALUES ('72eb9855-b594-4c35-9088-b4dc79c7d303', '天津市', '中国', '00200', '2');
INSERT INTO `b_province` VALUES ('daf22809-e881-481f-93dd-f10b7e9c5d80', '管理机构', '中国', '00000', '1');


-- ----------------------------
-- Table structure for `b_regular`
-- ----------------------------
DROP TABLE IF EXISTS `b_regular`;
CREATE TABLE `b_regular` (
  `_regularId` varchar(40) NOT NULL,
  `_regularTitle` varchar(45) DEFAULT NULL,
  `_regularContent` varchar(20000) DEFAULT NULL,
  `_regularSTime` varchar(45) DEFAULT NULL,
  `_regularEtime` varchar(20) DEFAULT NULL,
  `_regularPublisher` varchar(20) DEFAULT NULL,
  `_regularProvince` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `_regularPublishUserId` varchar(40) DEFAULT NULL,
  `_regularUTime` varchar(45) DEFAULT NULL,
  `_regularParentUnit` varchar(45) DEFAULT NULL,
  `_regularITime` varchar(45) DEFAULT NULL,
  `_regularNumber` varchar(45) DEFAULT NULL,
  `_regularField` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`_regularId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_regular
-- ----------------------------
INSERT INTO `b_regular` VALUES ('1641fb0d-00da-4297-95b5-c36395f010d8', '规章33', '规章', '2014-05-29', '2014-05-29', '123', '中国', '7c1f90d8-7b35-49d3-bc87-c2379be8c383', '2014/05/29', '中国', '2014-05-29', null, null);

-- ----------------------------
-- Table structure for `b_roles`
-- ----------------------------
DROP TABLE IF EXISTS `b_roles`;
CREATE TABLE `b_roles` (
  `_rolesId` varchar(40) NOT NULL,
  `_rolesName` varchar(10) DEFAULT NULL,
  `_rolesDescription` varchar(45) DEFAULT NULL,
  `_rolesCode` varchar(10) DEFAULT NULL,
  `_rolesStatus` varchar(42) DEFAULT NULL,
  PRIMARY KEY (`_rolesId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_roles
-- ----------------------------

-- ----------------------------
-- Table structure for `b_roles_user`
-- ----------------------------
DROP TABLE IF EXISTS `b_roles_user`;
CREATE TABLE `b_roles_user` (
  `_roles_user` varchar(40) NOT NULL,
  `_rolesId` varchar(40) NOT NULL,
  `_userId` varchar(40) NOT NULL,
  PRIMARY KEY (`_roles_user`),
  KEY `_userId` (`_userId`),
  KEY `_rolesId` (`_rolesId`),
  CONSTRAINT `_rolesId` FOREIGN KEY (`_rolesId`) REFERENCES `b_roles` (`_rolesId`),
  CONSTRAINT `_userId` FOREIGN KEY (`_userId`) REFERENCES `b_user` (`_userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_roles_user
-- ----------------------------

-- ----------------------------
-- Table structure for `b_specification`
-- ----------------------------
DROP TABLE IF EXISTS `b_specification`;
CREATE TABLE `b_specification` (
  `_specificationId` varchar(40) NOT NULL,
  `_specificationTitle` varchar(45) DEFAULT NULL,
  `_specificationContent` varchar(45) DEFAULT NULL,
  `_specificationSTime` varchar(45) DEFAULT NULL,
  `_specificationETime` varchar(45) DEFAULT NULL,
  `_specificationPublisher` varchar(45) DEFAULT NULL,
  `_specificationProvince` varchar(45) DEFAULT NULL,
  `_specificationPublishUserId` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`_specificationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_specification
-- ----------------------------

-- ----------------------------
-- Table structure for `b_train`
-- ----------------------------
DROP TABLE IF EXISTS `b_train`;
CREATE TABLE `b_train` (
  `_trainId` varchar(40) NOT NULL,
  `_trainTitle` varchar(45) DEFAULT NULL,
  `_trainSTime` varchar(45) DEFAULT NULL,
  `_trainHost` varchar(45) DEFAULT NULL,
  `_trainLocation` varchar(45) DEFAULT NULL,
  `_trainContent` varchar(20000) DEFAULT NULL,
  `_trainPeople` varchar(45) DEFAULT NULL,
  `_trainUTime` varchar(45) DEFAULT NULL,
  `_trainPublishUserId` varchar(45) DEFAULT NULL,
  `_trainETime` varchar(45) DEFAULT NULL,
  `_trainStatics` varchar(45) DEFAULT NULL,
  `_trainProvince` varchar(45) DEFAULT NULL,
  `_trainParentUnit` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`_trainId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_train
-- ----------------------------
INSERT INTO `b_train` VALUES ('06007990-0f09-43b2-bea6-8dc3bb812e09', '2233', '2014-05-29', '11', null, '22', '领导干部', '2014/05/29', '6598a2eb-f131-4db5-905e-365b10473444', '2014-05-29', '11', '天津市', '中国');

-- ----------------------------
-- Table structure for `b_user`
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user` (
  `_userId` varchar(40) NOT NULL,
  `_userName` varchar(45) DEFAULT NULL,
  `_passWord` varchar(45) DEFAULT NULL,
  `_privilege` varchar(4) DEFAULT NULL,
  `_inchargeMent` varchar(45) DEFAULT NULL,
  `_parentUnit` varchar(45) DEFAULT NULL,
  `_trueName` varchar(45) DEFAULT NULL,
  `_phone` varchar(45) DEFAULT NULL,
  `_address` varchar(45) DEFAULT NULL,
  `_zipcode` varchar(45) DEFAULT NULL,
  `_departmentId` varchar(45) DEFAULT NULL,
  `_userCode` varchar(45) DEFAULT NULL,
  `_proName` varchar(45) DEFAULT NULL,
  `_userSex` varchar(45) DEFAULT NULL,
  `_mobilePhone` varchar(45) DEFAULT NULL,
  `_mailBox` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`_userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES ('6598a2eb-f131-4db5-905e-365b10473444', null, '123', '2', '天津市', '中国', '测试', '', '天津市', null, null, '00200', '天津市', '男', '161163', '');
INSERT INTO `b_user` VALUES ('7c1f90d8-7b35-49d3-bc87-c2379be8c383', null, '123', '1', '中国', '中国', '管理员', '', '', null, null, '00000', '管理员', '女', '', '');
