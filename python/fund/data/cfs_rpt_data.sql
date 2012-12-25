/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50522
Source Host           : 192.168.1.7:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50522
File Encoding         : 65001

Date: 2012-11-15 11:44:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cfs_rpt_data`
-- ----------------------------
DROP TABLE IF EXISTS `cfs_rpt_data`;
CREATE TABLE `cfs_rpt_data` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `usr_id` int(11) DEFAULT NULL,
  `fiscal_year` int(11) DEFAULT NULL,
  `line_no` int(11) DEFAULT NULL,
  `code` varchar(8) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_reduce_item` varchar(1) DEFAULT NULL,
  `formular` varchar(128) DEFAULT NULL,
  `comments` varchar(128) DEFAULT NULL,
  `column_id` int(11) DEFAULT NULL,
  `version` varchar(8) DEFAULT NULL,
  `cfs_rpt_prop_id` int(11) DEFAULT NULL,
  `cfs_rpt_prop_code` varchar(4) DEFAULT NULL,
  `cfs_rpt_type_id` int(11) DEFAULT NULL,
  `cfs_rpt_type_code` varchar(4) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `province_code` varchar(8) DEFAULT NULL,
  `province_name` varchar(255) DEFAULT NULL,
  `created_by` varchar(32) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `last_modified_by` varchar(255) DEFAULT NULL,
  `last_modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cfs_rpt_data
-- ----------------------------

-- ----------------------------
-- Table structure for `cfs_rpt_item`
-- ----------------------------
DROP TABLE IF EXISTS `cfs_rpt_item`;
CREATE TABLE `cfs_rpt_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `line_no` int(11) DEFAULT NULL,
  `code` varchar(8) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_reduce_item` varchar(1) DEFAULT NULL,
  `formular` varchar(128) DEFAULT NULL,
  `cfs_rpt_prop_id` int(11) DEFAULT NULL,
  `cfs_rpt_prop_code` varchar(4) DEFAULT NULL,
  `cfs_rpt_prop_name` varchar(32) DEFAULT NULL,
  `cfs_rpt_type_id` int(11) DEFAULT NULL,
  `cfs_rpt_type_code` varchar(4) DEFAULT NULL,
  `cfs_rpt_type_name` varchar(32) DEFAULT NULL,
  `column_id` int(11) DEFAULT NULL,
  `version` varchar(8) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `province_name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cfs_rpt_item
-- ----------------------------
INSERT INTO `cfs_rpt_item` VALUES ('1', '1', '11', '流动资产：', '0', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('2', '2', '1101', '货币资金', '1', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('3', '3', '1102', '短期投资', '1', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('4', '4', '1103', '应收票据', '1', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('5', '5', '1104', '应收股利', '1', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('6', '6', '1105', '应收利息', '1', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('7', '7', '1106', '应收帐款', '1', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('8', '8', '1107', '其他应收款', '1', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('9', '9', '1108', '预付帐款', '1', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('10', '10', '1109', '应收补贴款', '1', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('11', '11', '1110', '存货', '1', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('12', '12', '1111', '待摊费用', '1', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('13', '13', '1112', '一年内到期的长期债券投资', '1', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('14', '14', '1113', '其他流动资产', '1', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('15', '15', '1199', '流动资产合计', '1', '1', '2,14', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('16', '16', '12', '长期投资：', '0', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('17', '17', '1201', '长期股权投资', '16', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('18', '18', '1202', '长期债权投资', '16', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('19', '19', '1299', '长期投资合计', '16', '1', '17,18', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('20', '20', '13', '固定资产：', '0', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('21', '21', '1301', '固定资产原价', '20', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('22', '22', '1302', '减：累计折旧', '20', '-', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('23', '23', '1303', '固定资产净值', '20', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('24', '24', '1304', '减：固定资产减值准备', '20', '-', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('25', '25', '1305', '固定资产净额', '20', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('26', '26', '1306', '工程物资', '20', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('27', '27', '1307', '在建工程', '20', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('28', '28', '1308', '固定资产清理', '20', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('29', '29', '1399', '固定资产合计', '20', '1', '21,28', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('30', '30', '14', '无形资产及其他资产：', '0', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('31', '31', '1401', '无形资产', '30', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('32', '32', '1402', '长期待摊费用', '30', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('33', '33', '1403', '其他长期资产', '30', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('34', '34', '1499', '无形资产及其他资产合计', '30', '1', '31,33', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('35', '35', '15', '递延税项：', '0', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('36', '36', '1501', '递延税款借项', '35', '1', '', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('37', '37', '1999', '资产总额', '0', '1', '15+19+29+34+36', '1', '0101', '资产', '1', '01', '会企01', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('38', '38', '21', '流动负债：', '0', '1', '', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('39', '39', '2101', '短期借款', '38', '1', '', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('40', '40', '2102', '应付票据', '38', '1', '', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('41', '41', '2103', '应付帐款', '38', '1', '', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('42', '42', '2104', '预收帐款', '38', '1', '', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('43', '43', '2105', '应付工资', '38', '1', '', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('44', '44', '2106', '应付福利费', '38', '1', '', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('45', '45', '2107', '应付股利', '38', '1', '', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('46', '46', '2108', '应交税金', '38', '1', '', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('47', '47', '2109', '其他应交款', '38', '1', '', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('48', '48', '2110', '其他应付款', '38', '1', '', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('49', '49', '2111', '预提费用', '38', '1', '', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('50', '50', '2112', '预计负债', '38', '1', '', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('51', '51', '2113', '一年内到期的长期负债', '38', '1', '', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('52', '52', '2114', '其他流动负债', '38', '1', '', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('53', '53', '2199', '流动负债合计', '38', '1', '39,52', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('54', '54', '22', '长期负债：', '0', '1', '', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('55', '55', '2201', '长期借款', '54', '1', '', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('56', '56', '2202', '应付债券', '54', '1', '', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('57', '57', '2203', '长期应付款', '54', '1', '', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('58', '58', '2204', '专项应付款', '54', '1', '', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('59', '59', '2205', '其他长期负债', '54', '1', '', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('60', '60', '2299', '长期负债合计', '54', '1', '55,59', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('61', '61', '23', '递延税项：', '0', '1', '', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('62', '62', '2301', '递延税项贷项', '61', '1', '', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('63', '63', '2999', '负债总计', '0', '1', '53+60+62', '2', '0102', '负债', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('64', '64', '3100', '少数股东权益', '0', '1', '', '3', '0103', '所有者权益', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('65', '65', '3200', '所有者权益：', '0', '1', '', '3', '0103', '所有者权益', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('66', '66', '3201', '实收资本', '65', '1', '', '3', '0103', '所有者权益', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('67', '67', '3202', '减：已归还投资', '65', '-', '', '3', '0103', '所有者权益', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('68', '68', '3203', '实收资本净额', '65', '1', '66+67', '3', '0103', '所有者权益', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('69', '69', '3204', '资本公积', '65', '1', '', '3', '0103', '所有者权益', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('70', '70', '3205', '盈余公积', '65', '1', '', '3', '0103', '所有者权益', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('71', '71', '3206', '其中：法定公益金', '70', '1', '', '3', '0103', '所有者权益', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('72', '72', '3207', '未分配利润', '65', '1', '', '3', '0103', '所有者权益', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('73', '73', '3299', '所有者权益合计', '0', '1', '69,72', '3', '0103', '所有者权益', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('74', '74', '4000', '负债和所有者权益总计', '0', '1', '63+73', null, '', '所有者权益', '1', '01', '会企01', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('75', '1', '1', '一、主营业务收入', '0', '1', '', '4', '0201', '收入', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('76', '2', '11', '减：主营业务成本', '1', '-', '', '4', '0201', '收入', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('77', '3', '12', '主营业务税金及附加', '1', '-', '', '4', '0201', '收入', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('78', '4', '2', '二、主营业务利润（亏损以“－”号填列）', '0', '1', '1,3', '5', '0202', '费用', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('79', '5', '21', '加：其他业务利润（亏损以“－”号填列）', '4', '1', '', '5', '0202', '费用', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('80', '6', '22', '减：销售费用 ', '4', '-', '', '5', '0202', '费用', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('81', '7', '23', '管理费用', '4', '-', '', '5', '0202', '费用', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('82', '8', '24', '财务费用', '4', '-', '', '5', '0202', '费用', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('83', '9', '3', '三、营业利润（亏损以“－”号填列）', '0', '1', '4,8', '6', '0203', '利润', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('84', '10', '31', '加：投资收益（损失以“－”号填列）', '9', '1', '', '6', '0203', '利润', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('85', '11', '32', '补贴收入', '9', '1', '', '6', '0203', '利润', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('86', '12', '33', '营业外收入', '9', '1', '', '6', '0203', '利润', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('87', '13', '34', '减：营业外支出    ', '9', '-', '', '6', '0203', '利润', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('88', '14', '5', '四、利润总额（亏损以“－”号填列）', '0', '1', '9,13', '6', '0203', '利润', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('89', '15', '51', '减：所得税', '14', '-', '', '6', '0203', '利润', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('90', '16', '52', '少数股东权益', '14', '-', '', '6', '0203', '利润', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('91', '17', '53', '五、净利润（亏损以“－”号填列）', '0', '1', '14,16', '6', '0203', '利润', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('92', '18', '54', '加：年初未分配利润', '17', '1', '', '6', '0203', '利润', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('93', '19', '55', '其他转入', '17', '1', '', '6', '0203', '利润', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('94', '20', '6', '六、可供分配的利润', '0', '1', '17,19', '6', '0203', '利润', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('95', '21', '61', '减：提取法定盈余公积', '20', '-', '', '6', '0203', '利润', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('96', '22', '62', '提取法定公益金', '20', '-', '', '6', '0203', '利润', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('97', '23', '63', '提取职工奖励及福利基金', '20', '-', '', '6', '0203', '利润', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('98', '24', '64', '提取储备基金', '20', '-', '', '6', '0203', '利润', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('99', '25', '65', '提取企业发展基金', '20', '-', '', '6', '0203', '利润', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('100', '26', '66', '利润归还投资', '20', '-', '', '6', '0203', '利润', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('101', '27', '7', '七、可供投资者分配的利润', '0', '1', '20,26', '6', '0203', '利润', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('102', '28', '71', '减：应付优先股股利', '27', '-', '', '6', '0203', '利润', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('103', '29', '72', '提取任意盈余公积', '27', '-', '', '6', '0203', '利润', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('104', '30', '73', '应付普通股股利', '27', '-', '', '6', '0203', '利润', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('105', '31', '74', '转作资本（或股本）的普通股股利', '27', '-', '', '6', '0203', '利润', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('106', '32', '8', '八、未分配利润', '0', '1', '27,31', '6', '0203', '利润', '2', '02', '会企02', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('107', '1', '11', '一、经营活动产生的现金流量：', '0', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('108', '2', '1101', '销售商品、提供劳务收到的现金', '1', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('109', '3', '1102', '收到的税费返还', '1', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('110', '4', '1103', '收到的其他与经营活动有关的现金', '1', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('111', '5', '1120', '现金流入小计', '1', '1', '2,4', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('112', '6', '1121', '购买商品、接受劳务支付的现金', '1', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('113', '7', '1122', '支付给职工以及为职工支付的现金', '1', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('114', '8', '1123', '支付的各项税费', '1', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('115', '9', '1124', '支付的其他与经营活动有关的现金', '1', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('116', '10', '1140', '现金流出小计', '1', '-', '6,9', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('117', '11', '1199', '经营活动产生的现金流量净额', '1', '1', '5+10', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('118', '12', '12', '二、投资活动产生的现金流量：', '0', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('119', '13', '1201', '收回投资所收到的现金', '12', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('120', '14', '1202', '取得投资收益所收到的现金', '12', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('121', '15', '1203', '处置固定资产、无形资产和其他长期资产所收回的现金净额', '12', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('122', '16', '1204', '收到的其他与投资活动有关的现金', '12', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('123', '17', '1220', '现金流入小计', '12', '1', '13,16', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('124', '18', '1221', '购建固定资产、无形资产和其他长期资产所支付的现金', '12', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('125', '19', '1222', '投资所支付的现金', '12', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('126', '20', '1223', '支付的其他与投资活动有关的现金', '12', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('127', '21', '1240', '现金流出小计', '12', '-', '18,20', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('128', '22', '1299', '投资活动产生的现金流量净额', '12', '1', '17+21', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('129', '23', '13', '三、筹资活动产生的现金流量：', '0', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('130', '24', '1301', '吸收投资所收到的现金', '23', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('131', '25', '1302', '借款所收到的现金', '23', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('132', '26', '1303', '收到的其他与筹资活动有关的现金', '23', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('133', '27', '1320', '现金流入小计', '23', '1', '24,26', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('134', '28', '1321', '偿还债务所支付的现金', '23', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('135', '29', '1322', '分配股利、利润或偿付利息所支付的现金', '23', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('136', '30', '1323', '支付的其他与筹资活动有关的现金', '23', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('137', '31', '1340', '现金流出小计', '23', '-', '28,30', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('138', '32', '1399', '筹资活动产生的现金流量净额', '23', '1', '27+31', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('139', '33', '14', '四、汇率变动对现金的影响', '-1', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('140', '34', '15', '五、现金及现金等价物净增加额', '-1', '1', '', '7', '0301', '项目', '3', '03', '会企03', '1', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('141', '35', '21', '1、将净利润调节为经营活动现金流量：', '0', '1', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('142', '36', '2101', '净利润', '35', '1', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('143', '37', '2102', '加：计提的资产减值准备', '35', '1', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('144', '38', '2103', '固定资产折旧', '35', '1', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('145', '39', '2104', '无形资产摊销', '35', '1', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('146', '40', '2105', '长期待摊费用摊销', '35', '1', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('147', '41', '2106', '待摊费用减少（减：增加）', '35', '1', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('148', '42', '2107', '预提费用增加（减：减少）', '35', '1', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('149', '43', '2108', '处置固定资产、无形资产和其他长期资产的损失（减：收益）', '35', '1', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('150', '44', '2109', '固定资产报废损失', '35', '1', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('151', '45', '2110', '财务费用', '35', '1', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('152', '46', '2111', '投资损失（减：收益）', '35', '1', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('153', '47', '2112', '递延税款贷项（减：借项）', '35', '1', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('154', '48', '2113', '存货的减少（减：增加）', '35', '1', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('155', '49', '2114', '经营性应收项目的减少（减：增加）', '35', '1', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('156', '50', '2115', '经营性应付项目的增加（减：减少）', '35', '1', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('157', '51', '2116', '其他', '35', '1', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('158', '52', '2199', '经营活动产生的现金流量净额', '35', '1', '36,51', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('159', '53', '22', '2、不涉及现金收支的投资和筹资活动：', '0', '1', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('160', '54', '2201', '债务转为资本', '53', '1', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('161', '55', '2202', '一年内到期的可转换公司债券', '53', '1', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('162', '56', '2203', '融资租入固定资产', '53', '1', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('163', '57', '23', '3、现金及现金等价物净增加情况：', '0', '1', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('164', '58', '2301', '现金的期末余额', '57', '1', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('165', '59', '2302', '减：现金的期初余额', '57', '-', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('166', '60', '2303', '加：现金等价物的期末余额', '57', '1', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('167', '61', '2304', '减：现金等价物的期初余额', '57', '-', '', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');
INSERT INTO `cfs_rpt_item` VALUES ('168', '62', '2399', '现金及现金等价物净增加额', '57', '1', '58,61', '8', '0302', '补充资料', '3', '03', '会企03', '2', '2012', null, '上海市');

-- ----------------------------
-- Table structure for `cfs_rpt_params`
-- ----------------------------
DROP TABLE IF EXISTS `cfs_rpt_params`;
CREATE TABLE `cfs_rpt_params` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `min_years` int(11) DEFAULT NULL COMMENT ' 最小录入年数',
  `versions` varchar(38) DEFAULT NULL COMMENT '各报表可用版本',
  `curr_verersion` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cfs_rpt_params
-- ----------------------------
INSERT INTO `cfs_rpt_params` VALUES ('1', '3', '2012,2013', '2012');

-- ----------------------------
-- Table structure for `cfs_rpt_prop`
-- ----------------------------
DROP TABLE IF EXISTS `cfs_rpt_prop`;
CREATE TABLE `cfs_rpt_prop` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(4) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `cfs_rpt_type_id` int(11) DEFAULT NULL,
  `cfs_rpt_type_code` varchar(4) DEFAULT NULL,
  `cfs_rpt_name` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cfs_rpt_prop
-- ----------------------------
INSERT INTO `cfs_rpt_prop` VALUES ('1', '0101', '资产', '1', '01', '会企01');
INSERT INTO `cfs_rpt_prop` VALUES ('2', '0102', '负债', '1', '01', '会企01');
INSERT INTO `cfs_rpt_prop` VALUES ('3', '0103', '所有者权益', '1', '01', '会企01');
INSERT INTO `cfs_rpt_prop` VALUES ('4', '0201', '收入', '2', '02', '会企02');
INSERT INTO `cfs_rpt_prop` VALUES ('5', '0202', '费用', '2', '02', '会企02');
INSERT INTO `cfs_rpt_prop` VALUES ('6', '0203', '利润', '2', '02', '会企02');
INSERT INTO `cfs_rpt_prop` VALUES ('7', '0301', '项目', '3', '03', '会企03');
INSERT INTO `cfs_rpt_prop` VALUES ('8', '0302', '补充', '3', '03', '会企03');

-- ----------------------------
-- Table structure for `cfs_rpt_type`
-- ----------------------------
DROP TABLE IF EXISTS `cfs_rpt_type`;
CREATE TABLE `cfs_rpt_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(4) DEFAULT NULL,
  `short_name` varchar(16) DEFAULT NULL,
  `full_name` varchar(64) DEFAULT NULL,
  `columns` int(36) DEFAULT NULL COMMENT '报表列数',
  `interal_validation` varchar(256) DEFAULT NULL,
  `external_validation` varchar(256) DEFAULT NULL COMMENT '表间检查公式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cfs_rpt_type
-- ----------------------------
INSERT INTO `cfs_rpt_type` VALUES ('1', '01', '会企01', '资产负债表', '2', null, null);
INSERT INTO `cfs_rpt_type` VALUES ('2', '02', '会企02', '利润及利润分配表', '1', null, null);
INSERT INTO `cfs_rpt_type` VALUES ('3', '03', '会企03', '现金流量表', '2', null, null);

-- ----------------------------
-- Table structure for `cfs_usr_rpt`
-- ----------------------------
DROP TABLE IF EXISTS `cfs_usr_rpt`;
CREATE TABLE `cfs_usr_rpt` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `usr_id` int(11) DEFAULT NULL,
  `usr_name` varchar(32) DEFAULT NULL,
  `fiscal_years` varchar(64) DEFAULT NULL,
  `fiscal_year_status` varchar(64) DEFAULT NULL COMMENT '各年度报表的状态, 0:空白 1:未完成 8:表内检查完成 9:表间检查完成',
  `version` varchar(255) DEFAULT NULL COMMENT '用户选择的报表版本',
  `last_modified_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cfs_usr_rpt
-- ----------------------------
