/*
Navicat MySQL Data Transfer

Source Server         : myself
Source Server Version : 50724
Source Host           : 39.105.123.197 :3307
Source Database       : applicationMarket

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-01-10 19:58:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(32) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `dept_id` int(3) DEFAULT NULL COMMENT '部门Id',
  `nickName` varchar(60) DEFAULT NULL,
  `account` varchar(128) DEFAULT NULL COMMENT '账号',
  `password` varchar(32) DEFAULT NULL,
  `role_id` int(11) DEFAULT '2' COMMENT '角色',
  `activated` int(1) DEFAULT '2' COMMENT '账号状态  1 启用 0 禁用',
  `deleted` int(1) DEFAULT '1' COMMENT '是否删除  1 未删除  2 已删除或者注销',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `created_date` datetime DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`admin_id`),
  KEY `index_account` (`account`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'wangdan', '18796329208@163.com', '18796327100', null, null, 'lucy', '123456', '2', '0', '1', '普通管理员', '2018-04-23 16:02:56', '2018-08-23 09:39:57');
INSERT INTO `t_admin` VALUES ('17', 'caiyuanhao', '18796327106@163.com', '18796327100', null, null, 'cd', 'caiyuanhao', '2', '1', '1', '普通管理员', '2018-04-23 16:03:31', '2018-08-20 17:53:44');
INSERT INTO `t_admin` VALUES ('18', 'shixiaoli', '18796327106@163.com', '18796327100', null, null, 'd', 'shixiaoli', '2', '1', '1', '普通管理员', '2018-04-23 16:03:58', '2018-08-20 17:53:45');
INSERT INTO `t_admin` VALUES ('19', 'huqiaoyun', '18796327106@163.com', '18796327100', null, null, 'c', 'huqiaoyun', '2', '1', '1', '普通管理员', '2018-04-23 16:04:23', '2018-08-20 17:53:46');
INSERT INTO `t_admin` VALUES ('20', 'yuchunyan', '18796327106@163.com', '18796327100', null, null, 'ccd', 'yuchunyan', '2', '1', '2', '普通管理员', '2018-04-23 16:04:45', '2018-08-20 17:53:48');
INSERT INTO `t_admin` VALUES ('21', 'zhangguo', '18796327106@163.com', '18796327100', null, null, 'admin1', '123456', '2', '1', '1', '普通管理员', '2018-05-02 10:46:57', '2018-08-20 17:53:04');
INSERT INTO `t_admin` VALUES ('31', 'admin1', '18796327106@163.com', '18796327100', null, null, '12345678', '88d5e65a159502a5ffaea3bd17759a5a', '2', '0', '1', '普通管理员', '2018-07-12 13:34:52', '2018-08-21 10:02:30');
INSERT INTO `t_admin` VALUES ('32', null, '18796327106@163.com', '18796327100', null, null, null, null, '2', '0', '2', '普通管理员', null, '2018-08-21 10:02:33');
INSERT INTO `t_admin` VALUES ('33', 'admin2', '18796327106@163.com', '18796327100', null, null, 'admin2', '12345678', '2', '1', '1', '超级管理员', '2018-07-12 19:11:10', '2018-08-20 17:53:05');
INSERT INTO `t_admin` VALUES ('34', 'admin3', '18796327106@163.com', '18796327100', null, null, 'admin3', '123456', '2', '1', '1', null, '2018-07-12 19:11:10', '2018-08-20 17:53:06');
INSERT INTO `t_admin` VALUES ('36', null, '18796327106@163.com', '18796327100', null, null, null, null, '2', '1', '1', null, null, '2018-08-20 17:53:51');
INSERT INTO `t_admin` VALUES ('37', 'Tom', '18796327106@163.com', '18796327100', null, null, 'tom123456', '123456', '2', '1', '1', '用户管理', '2018-08-06 17:16:59', '2018-08-20 17:53:07');
INSERT INTO `t_admin` VALUES ('38', 'Jakc', '18796327106@163.com', '18796327100', null, null, 'jack123456', '123456', '2', '1', '1', '用户，逝者，广告列表', '2018-08-06 17:35:46', '2018-08-20 17:53:08');
INSERT INTO `t_admin` VALUES ('39', '陈加兵', '18796327106@163.com', '18796327100', null, null, 'chenjiabing', '12345678', '2', '1', '1', '管理用户', '2018-08-14 11:01:52', '2018-08-20 17:53:52');
INSERT INTO `t_admin` VALUES ('40', null, '18796329208@163.com', '18796329208', null, null, 'zhengyuanmei', '12345678', '2', '1', '1', 'q', '2019-01-03 10:56:17', null);
INSERT INTO `t_admin` VALUES ('41', null, '18796327016@163.com', '18796327016', null, null, 'jack', '12345678', '2', '1', '1', 'cadcad', '2019-01-03 11:11:48', null);
INSERT INTO `t_admin` VALUES ('42', null, '184685465@163.com', '18748151', null, null, 'admin4', '12345678', '2', '1', '1', 'cdcda', '2019-01-03 11:21:37', null);
INSERT INTO `t_admin` VALUES ('43', null, '184615561', '184615561', null, null, 'admin5', '123456', '2', '1', '1', 'cdscds', '2019-01-03 12:38:31', null);
INSERT INTO `t_admin` VALUES ('44', null, '1874654@163', '26+21652', null, null, 'admin6', '123456', '2', '1', '1', 'cdscd', '2019-01-03 13:17:18', null);

-- ----------------------------
-- Table structure for t_admin_authority
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_authority`;
CREATE TABLE `t_admin_authority` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `authoritys` varchar(255) DEFAULT NULL COMMENT '权限：多个权限用英文分号隔开',
  `create_id` int(11) DEFAULT NULL COMMENT '创建者管理员id',
  `update_id` int(11) DEFAULT NULL COMMENT '更新者管理员id',
  `activated` int(1) DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin_authority
-- ----------------------------
INSERT INTO `t_admin_authority` VALUES ('11', '1,2,3,4,5,13,19,20,21,22,', '1', null, null, null, '2018-04-14 14:44:58', null);
INSERT INTO `t_admin_authority` VALUES ('13', '1,2,3,4,5,6,7,8,23,9,10,11,12,13,26,14,15,16,17,18,19,20,21,22,24,25,', '1', null, null, null, null, null);
INSERT INTO `t_admin_authority` VALUES ('16', '3,10,27,28,15,18,', '1', null, null, null, '2018-04-25 10:05:27', null);
INSERT INTO `t_admin_authority` VALUES ('17', '3,10,27,28,15,18,', '1', null, null, null, '2018-04-25 10:05:48', null);
INSERT INTO `t_admin_authority` VALUES ('18', '3,10,27,28,15,18,', '1', null, null, null, '2018-04-25 10:06:12', null);
INSERT INTO `t_admin_authority` VALUES ('19', '3,10,27,28,15,18,', '1', null, null, null, '2018-04-25 10:06:25', null);
INSERT INTO `t_admin_authority` VALUES ('20', '3,10,27,28,15,18,', '1', null, null, null, '2018-04-25 10:06:36', null);
INSERT INTO `t_admin_authority` VALUES ('21', '3,6,7,8,23,15,', '1', null, null, null, '2018-05-02 11:09:14', null);
INSERT INTO `t_admin_authority` VALUES ('33', '1,2,3,36,37,38,39,40,41,42,43,44,45,46,47,48,48,49,50,51,52', '1', null, null, null, '2018-07-18 09:48:28', null);
INSERT INTO `t_admin_authority` VALUES ('34', '1,2,3,36,37,38,39,40,41,42,43,44,45,46,47,48,48,49,50,51,52', '1', null, null, null, '2018-07-19 09:39:08', null);
INSERT INTO `t_admin_authority` VALUES ('37', '3,36,49,', null, null, null, null, null, null);
INSERT INTO `t_admin_authority` VALUES ('38', '3,36,49,37,38,51,47,48,', null, null, null, null, null, null);
INSERT INTO `t_admin_authority` VALUES ('39', '3,36,49,50,', null, null, null, null, null, null);
INSERT INTO `t_admin_authority` VALUES ('40', '41,', null, null, null, null, null, null);
INSERT INTO `t_admin_authority` VALUES ('41', '1,37,40,', null, null, null, null, null, null);
INSERT INTO `t_admin_authority` VALUES ('42', '53,54,', null, null, null, null, null, null);
INSERT INTO `t_admin_authority` VALUES ('43', '1,2,3,36,49,50,37,38,39,40,41,42,53,54,43,44,45,46,47,48,49,50,51,', null, null, null, null, null, null);
INSERT INTO `t_admin_authority` VALUES ('44', '41,', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for t_apk_version
-- ----------------------------
DROP TABLE IF EXISTS `t_apk_version`;
CREATE TABLE `t_apk_version` (
  `version_id` int(11) NOT NULL AUTO_INCREMENT,
  `version_code` varchar(255) DEFAULT NULL,
  `version_number` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '类型 1安卓 2 ios',
  `download_url` varchar(255) DEFAULT NULL,
  `is_last` int(11) DEFAULT NULL COMMENT '是否是最新的 1 是 0 否',
  PRIMARY KEY (`version_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_apk_version
-- ----------------------------
INSERT INTO `t_apk_version` VALUES ('1', '1', 'V1.0.0', '1', null, '1');
INSERT INTO `t_apk_version` VALUES ('2', '1', 'V1.0.0', '2', null, '1');

-- ----------------------------
-- Table structure for t_app
-- ----------------------------
DROP TABLE IF EXISTS `t_app`;
CREATE TABLE `t_app` (
  `app_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL COMMENT '分类Id',
  `user_id` int(11) DEFAULT NULL COMMENT '添加认证的人Id',
  `privacy` varchar(500) DEFAULT NULL COMMENT '隐私权限说明，中文分号隔离',
  `name` varchar(128) DEFAULT NULL COMMENT '应用名称',
  `logo` varchar(225) DEFAULT NULL COMMENT '应用图标',
  `plateform` int(1) DEFAULT NULL COMMENT '平台 1 安卓 2 IOS、',
  `examine__status` int(1) DEFAULT '2' COMMENT '审核状态  1 审核通过 2 未审核 3 审核失败',
  `examin_date` datetime DEFAULT NULL COMMENT '审核时间',
  `examin_person_name` varchar(50) DEFAULT NULL COMMENT '审核人的',
  `examine_explain` varchar(500) DEFAULT NULL,
  `publish_type` int(1) DEFAULT NULL COMMENT '1 审核后立即发布 2定时发布',
  `publish_date` datetime DEFAULT NULL COMMENT '发布时间',
  `publish_day` varchar(10) DEFAULT NULL COMMENT '定时发布的天数',
  `publish_hour` varchar(10) DEFAULT NULL COMMENT '定时发布的时间',
  `ground_status` int(1) DEFAULT '2' COMMENT '上架状态  1 上架 2 下架 3 不限',
  `ground_time` datetime DEFAULT NULL COMMENT '上架时间',
  `is_recommend` int(1) DEFAULT '0' COMMENT '推荐状态 1 推荐 0 不推荐',
  `recommend_type_id` int(2) DEFAULT NULL COMMENT '推荐类别的Id',
  `personal_recommend` varchar(255) DEFAULT NULL COMMENT '个性推荐语',
  `license` varchar(128) DEFAULT NULL COMMENT '许可证明,这个是许可文件的url',
  `introduction` varchar(5000) DEFAULT NULL COMMENT '简介',
  `support_language` int(1) DEFAULT NULL COMMENT '1 简体中文  3英语  2繁体中文',
  `tariff_type` int(1) DEFAULT NULL COMMENT '资费类型 ',
  `download_money` double(60,5) DEFAULT NULL COMMENT '下载需要的钱',
  `download_count` bigint(20) DEFAULT '0' COMMENT '下载次数',
  `download_count_add` bigint(20) DEFAULT '0' COMMENT '24小时增加的下载次数',
  `develop_company` varchar(128) DEFAULT NULL COMMENT '开发商',
  `money_name` int(1) DEFAULT NULL COMMENT '代币名称  1 墨客币  2 井通',
  `score` double(6,2) DEFAULT NULL,
  `top` int(1) DEFAULT NULL,
  `top_time` datetime DEFAULT NULL,
  `leve` int(2) DEFAULT NULL COMMENT '等级，用来评分的',
  `is_must` int(1) DEFAULT '0' COMMENT '是否是必备应用 1 是 0 否',
  `deleted` int(1) DEFAULT NULL,
  `activated` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`app_id`),
  KEY `index_appName` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_app
-- ----------------------------
INSERT INTO `t_app` VALUES ('9', '1', null, '差点a', '滴滴单车', 'http://www.emoonbow.com/applicationMarket-upload/app/1533695590390.jpeg', '1', '1', '2018-10-13 18:01:40', null, '', '1', '2018-10-13 18:01:40', null, null, '1', '2018-10-13 18:01:40', '0', null, '传达室', 'app/滴滴单车/1539422156088马蹄莲.png', '传达室', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '0', null, null, '2018-10-13 17:15:56', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('10', '1', null, '传达室', '滴滴单车', 'http://www.emoonbow.com/applicationMarket-upload/app/1533695590390.jpeg', '1', '1', '2018-10-13 18:01:40', null, '对对对', '1', '2018-10-13 18:01:40', null, null, '1', '2018-10-13 18:01:40', '0', null, '差', 'app/滴滴单车/1539422217858马蹄莲.png', '扯犊子', '1', '1', null, '1', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '0', null, null, '2018-10-13 17:16:58', '2018-12-17 14:00:00');
INSERT INTO `t_app` VALUES ('21', '8', '1', '定位；\n手机短信；', '火币', 'http://www.emoonbow.com/applicationMarket-upload/app/huobi/1539828145942LOGO.png', '1', '1', '2018-10-18 13:37:54', null, '', '1', '2018-10-18 13:37:54', null, null, '1', '2018-10-18 13:37:54', '0', null, '火币全球专业站(www.huobi.pro)是火币旗下面向全球专业用户的创新的数字资产交易所，提供多种数字资产之间的交易及投资服务。火币全球专业站依托火币本身各方面的优势，由火币境外团队打造。', 'app/huobi/15398281459414.png', '火币全球专业站(www.huobi.pro)是火币旗下面向全球专业用户的创新的数字资产交易所，提供多种数字资产之间的交易及投资服务。火币全球专业站依托火币本身各方面的优势，由火币境外团队打造。\n    火币是一家全球性质的数字资产交易所，在中国、香港、韩国、新加坡、美国等国家和地区均有独立的交易业务和运营中心。依托四年积累与稳健发展，火币已成长为具有全球竞争力与影响力的企业。在技术平台、产品支线、风控体系、运营及客户服务体系等方面都很完善。', '1', '2', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-18 10:02:26', '2019-01-04 11:04:01');
INSERT INTO `t_app` VALUES ('22', '2', '1', '允许读取短信；\r\n允许读取通讯录。', '火币', 'http://www.emoonbow.com/applicationMarket-upload/app/huobi/1539828885948LOGO.png', '1', '1', '2018-10-18 13:37:54', null, '', '1', '2018-10-18 13:37:54', null, null, '1', '2018-10-18 13:37:54', '0', null, '全球领先的数字资产交易平台，支持C2C交易杠杆交易', 'app/huobi/1539828885948LOGO.png', '火币全球专业站(www.huobi.pro)是火币旗下面向全球专业用户的创新的数字资产交易所，提供多种数字资产之间的交易及投资服务。火币全球专业站依托火币本身各方面的优势，由火币境外团队打造。\r\n火币是一家全球性质的数字资产交易所，在中国、香港、韩国、新加坡、美国等国家和地区均有独立的交易业务和运营中心。依托四年积累与稳健发展，火币已成长为具有全球竞争力与影响力的企业。在技术平台、产品支线、风控体系、运营及客户服务体系等方面都很完善。', '1', '1', null, '11', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-18 10:14:46', '2018-12-17 15:00:00');
INSERT INTO `t_app` VALUES ('23', '2', '1', '读取短信；\r\n读取相册。', '币安', 'http://www.emoonbow.com/applicationMarket-upload/app/bian/1539830034386LOGO.png', '1', '1', '2018-10-18 13:37:54', null, '', '1', '2018-10-18 13:37:54', null, null, '1', '2018-10-18 13:37:54', '0', null, '币种多，交易深度好，百余种数字资产安全稳定交易平台。', 'app/bian/1539830034386LOGO.png', '币安网交易平台是一群数字资产爱好者创建而成的一个专注区块链资产的交易平台。\r\n　　币安app为用户提供更加安全、便捷的区块链资产兑换服务，聚合全球优质区块链资产。\r\n　　币安网交易所致力于打造世界级的区块链资产交易平台。\r\n\r\n【软件特色】\r\n　　1.行情查询：实时了解比特币、莱特币、以太坊（ETH）价格波动。\r\n　　2.K线图查看：提供多种专业的比特币、莱特币、以太坊（ETH）走势图。\r\n　　3.价格预警：自定义价格预警，实时关注市场价格变动，自动触发预警。\r\n　　4.通知栏行情：无需开启App，下拉就能看行情。\r\n　　5.矿池份额：实时掌握算力分布。\r\n　　6.区块数据：实时查看比特币网络状态。', '1', '1', null, '1', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-18 10:33:54', '2018-11-24 23:00:00');
INSERT INTO `t_app` VALUES ('24', '2', '1', '读取短信；\r\n读取相册。', 'OKEx', 'http://www.emoonbow.com/applicationMarket-upload/app/OKEx/1539832604570LOGO.jpg', '1', '1', '2018-10-18 13:37:54', null, '', '1', '2018-10-18 13:37:54', null, null, '1', '2018-10-18 13:37:54', '0', null, '世界领先的数字资产交易平台，安全、稳定、可信。', 'app/OKEx/1539832604570LOGO.jpg', 'OKEx 是全球著名的数字资产交易平台之一，主要面向全球用户提供比特币、莱特币、以太币等数字资产的币币和衍生品交易服务，隶属于 OKEx Technology Company Limited。 OKEx 创立时，获得了世界领先投资人 Tim Draper 参与设立的创业工场百万美金的天使投资，Tim Draper 同时也是 Hotmail、百度、特斯拉等世界领先企业的投资人。\r\n2014 年初，OKEx 获得了中国著名的风险投资基金策源创投、香港上市公司美图 (01357.HK) 创始人旗下的隆领投资千万美元的A轮投资。\r\nOKEx 采用 GSLB、分布式服务器集群、分布式存储、多机互备的高速内存交易引擎、冷钱包、私钥离线化的热钱包等先进的技术，以 Web 端、手机端、PC 端等多终端为客户提供安全、稳定、可信的数字资交易服务。', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-18 11:16:45', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('25', '2', '1', '读取短信；\r\n读取相册。', 'CoinTiger', 'http://www.emoonbow.com/applicationMarket-upload/app/CoinTiger/1539833127683LOGO.png', '1', '1', '2018-10-18 13:37:54', null, '', '1', '2018-10-18 13:37:54', null, null, '1', '2018-10-18 13:37:54', '0', null, '提供现货交易、合约交易、保证金交易，并支持多币种交易，以及完整的法币交易。体验较好。', 'app/CoinTiger/1539833127682LOGO.png', 'CoinTiger平台是一家面向全球的创新数字资产交易平台，为全球的区块链爱好者提供多币种、多语言的现货币对交易服务。\r\n\r\nCoinTiger平台的交易系统获得了国际顶尖的交易撮合技术团队的支持，能够为用户提供堪比国内外成熟券商水平的稳定系统。\r\n\r\nCoinTiger的管理团队是由一批互联网金融行业的创业老兵，同时也是区块链行业的早期爱好者组成的多样化团队，拥有丰富的国际金融市场社群、游戏的创业经验，带领实力雄厚的产品研发团队、丰富海外推广经验的运营、市场推广团队，致力于打造体验一流的数字资产交易平台。\r\n\r\n除了数字货币交易服务，CoinTiger还另外开辟了CoinTiger labs，致力于拓展区块链上游企业，主动发现优质数字货币资产，为区块链行业做出贡献，为广大投资者提供更多优质的交易资产。', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-18 11:25:28', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('26', '2', '1', '读取短信；\r\n读取相册。', '火币OTC', 'http://www.emoonbow.com/applicationMarket-upload/app/huobiOTC/1539833665341LOGO.png', '1', '1', '2018-10-18 13:37:54', null, '', '1', '2018-10-18 13:37:54', null, null, '1', '2018-10-18 13:37:54', '0', null, '火币旗下面向全球用户的创新的数字资产场外交易平台，提供多种数字资产与法币的交易与投资服务。', 'app/huobiOTC/1539833665341LOGO.png', '火币全球法币交易区（otc.huobi.pro）是火币旗下面向全球用户的创新的数字资产场外交易平台，提供多种数字资产与法币的交易与投资服务。火币全球OTC业务依托火币本身各方面的优势，由火币境外团队打造。\r\n火币是一家全球性质的数字资产交易所，在中国、香港、韩国、新加坡、美国等国家和地区均有独立的交易业务和运营中心。依托四年积累与稳健发展，火币已成长为具有全球竞争力与影响力的企业。在技术平台、产品支线、风控体系、运营及客户服务体系等方面都很完善。', '1', '1', null, '1', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-18 11:34:25', '2018-12-17 15:00:00');
INSERT INTO `t_app` VALUES ('27', '2', '1', '读取短信；\r\n读取相册。', 'LOOIS', 'http://www.emoonbow.com/applicationMarket-upload/app/LOOIS/1539841329501LOGO.png', '1', '1', '2018-10-18 16:38:17', null, '', '1', '2018-10-18 16:38:17', null, null, '1', '2018-10-18 16:38:17', '0', null, 'Loois是去中心化钱包交易所，全球首家支持双挖矿，最高返利200%！', 'app/LOOIS/1539841329501LOGO.png', 'Loois是全球首家支持交易挖矿与转账挖矿双激励模式的去中心化钱包交易所。Loois 旨在打造新一代去中心化数字资产生态圈，为个人和机构投资者提供更便捷、更透明、更安全的一站式数字资产服务。Loois已接入路印协议。', '1', '1', null, '1', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-18 13:42:10', '2018-11-19 20:00:00');
INSERT INTO `t_app` VALUES ('28', '2', '1', '读取短信；\r\n读取相册。', 'SZ.COM', 'http://www.emoonbow.com/applicationMarket-upload/app/SZ.COM/1539841678385LOGO.jpg', '1', '1', '2018-10-18 16:38:17', null, '', '1', '2018-10-18 16:38:17', null, null, '1', '2018-10-18 16:38:17', '0', null, '全球化创新型数字资产交易平台。交易即挖矿、人性化服务、贴心高效率。', 'app/SZ.COM/1539841678385LOGO.jpg', 'SZ.COM是一个放眼全球基于创新型社区自治的数字资产交易平台。 SZ.COM平台给交易用户和投资者创建了一个公正、透明、安全的交易环境和高并发系统，保证交易的稳定性。同时，SZ.COM创新性的提出了数字资产交易平台社区化的规划，基于Token经济模型打造了SZ.COM超级社区，让每个SZ持有者都有权利参与社区的业务决策等各类社区活动。交易即挖矿，持币享分红。交易手续费100%返还，持有SZ再享平台100%收益。', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-18 13:47:58', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('29', '2', '1', '读取短信；\r\n读取相册。', 'ThinkBit Pro', 'http://www.emoonbow.com/applicationMarket-upload/app/ThinkBit Pro/1539841911077LOGO.png', '1', '1', '2018-10-18 16:38:17', null, '', '1', '2018-10-18 16:38:17', null, null, '1', '2018-10-18 16:38:17', '0', null, '率先使用100%冷钱包技术，保障您的数字资产安全。', 'app/ThinkBit Pro/1539841911076LOGO.png', 'ThinkBit Pro 是下一代的数字资产交易所，为专业交易用户提供高流动性交易环境、全资产冷储存、多种订单类型、高性能 API。\r\n此应用为 ThinkBit Pro (thinkbit.com) 官方应用，提供简单、安全、快捷的交易体验。', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-18 13:51:51', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('30', '2', '1', '读取短信；\r\n读取相册。', '满币网', 'http://www.emoonbow.com/applicationMarket-upload/app/manbiwang/1539842107302LOGO.png', '1', '1', '2018-10-18 16:38:18', null, '', '1', '2018-10-18 16:38:18', null, null, '1', '2018-10-18 16:38:18', '0', null, '支持法币交易和币币交易，安全，值得信赖的数字资产交易平台。', 'app/manbiwang/1539842107302LOGO.png', '满币App是便捷专业、安全稳定、可信赖的全球数字资产交易软件，提供比特币BTC、莱特币LTC、以太坊ETH等币币交易实时行情。\n满币旨在为全球所有优质数字资产，例比特币、莱特币、以太坊、以太经典等主流数字资产提供一个交易、兑换的平台。同时快速支持新发行的数字资产上线交易,多重安全措施确保投资用户的资产安全,方便价值投资者分享资产增值的红利。\n　　满币旨在为全球所有优质数字资产，例比特币、莱特币、以太坊、以太经典等主流数字资产提供一个交易、兑换的平台。同时快速支持新发行的数字资产上线交易,多重安全措施确保投资用户的资产安全,方便价值投资者分享资产增值的红利。\n\n软件特色\n　　1. 多币种的币币交易：BTC/USDT, ETH/USDT, LTC/USDT, BCH/USDT; ETH/BTC, LTC/BTC\n　　2.专业K线图，提供专业走势图\n　　3.交易操作便捷，支持比特币BTC、莱特币LTC、以太坊ETH等实时交易\n　　4.充币提币到账速度快\n　　5.快速客服服务响应：7*24*365服务，保证用户体验\n　　6.安全稳定：用户数据加密、谷歌验证、冷热钱包多重签名等技术保证稳定性\n\n功能介绍\n\n　　1.币种最优\n　　只上线优质数字品种\n　　永不上线垃圾品种\n\n　　2.上币最快\n　　最快上线最新的优质数字\n\n　　3.玩法最多\n　　法币兑换数字币交易\n　　币兑币交易\n　　提供量化交易平台\n\n　　4. 体验最佳\n　　7*24小时在线的专属一对一客服\n　　出入金，出入币，均能在10分钟内完成\n\n　　5.安全稳定\n　　冷热钱包，多重签名，多层次加密，保证用户资产安全\n　　分布式计算以及负载均衡技术，保证系统稳定性\n　　全球化的优质数字资产交易平台\n\n　　满币网由中国三大交易平台(OKCoin、火币、比特币中国)精英倾力打造的全球化的优质数字资产交易平台，旨在为全球所有优质数字资产，例比特币、莱特币、以太坊、以太经典等主流数字资产提供一个交易、兑换的平台。同时快速支持新发行的数字资产上线交易,多重安全措施确保投资用户的资产安全,方便价值投资者分享资产增值的红利。\n\n　　同时，满币网具备产品、技术、运营、资源等多重优势，团队成员均来自国内顶尖数字货币交易所或百度、美团等一线互联网公司，拥有扎实和丰富的专业知识与行业资源，可消除用户的各种安全顾虑。\n\n　　面对区块链技术在全球范围内的逐渐熟知，数字货币早已成为了全球最为火爆投资市场，此次满币网公募的圆满成功，表明数字货币已越来越像向成熟的交易市场趋近，未来前景无限。', '1', '1', null, '1', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-18 13:55:07', '2018-11-23 22:00:00');
INSERT INTO `t_app` VALUES ('31', '2', '1', '读取短信；\r\n读取相册。', '币管家bgj.io', 'http://www.emoonbow.com/applicationMarket-upload/app/biguanjiabgj.io/1539842354379LOGO.jpg', '1', '1', '2018-10-18 16:41:24', null, '', '1', '2018-10-18 16:41:24', null, null, '1', '2018-10-18 16:41:24', '0', null, '区块链资产交易平台。', 'app/biguanjiabgj.io/1539842354378LOGO.jpg', '币管家bgj.io区块链资产交易所注册在塞舌尔共和国，总部位于新加坡，已在全球范围内进行区块链商业运营，交易量排名前20。', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-18 13:59:14', '2019-01-04 11:34:29');
INSERT INTO `t_app` VALUES ('32', '2', '1', '读取短信；\r\n读取相册。', 'Bi.top', 'http://www.emoonbow.com/applicationMarket-upload/app/Bi.top/1539842514774LOGO.jpg', '1', '1', '2018-10-18 16:41:24', null, '', '1', '2018-10-18 16:41:24', null, null, '1', '2018-10-18 16:41:24', '1', '6', '具有全生态的交易所', 'app/Bi.top/1539842514774LOGO.jpg', 'Bi.top（上币）是全球首家全生态数字交易平台，多家基金千万美元领投。总部位于新加坡，将在全球多个国家和地区设立交易服务中心。公司自研矿机，矿场遍布全球，提供占全网3%算力的矿池服务，旨在为全球用户提供专业、安全、可靠、便捷的数字货币交易综合服务。\r\n\r\nBi.top汇聚了全球顶尖的区块链开发工程师，创始人为前满币CTO，在系统安全、高频交易领域都拥有近10年的实战经验。app的用户体现在同类产品排名前列。', '1', '1', null, '9', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '0', null, null, '2018-10-18 14:01:55', '2018-12-17 15:00:00');
INSERT INTO `t_app` VALUES ('33', '2', '1', '读取短信；\r\n读取相册。', '币客', 'http://www.emoonbow.com/applicationMarket-upload/app/bike/1539842729120LOGO.jpg', '1', '1', '2018-10-18 16:41:25', null, '', '1', '2018-10-18 16:41:25', null, null, '1', '2018-10-18 16:41:25', '1', '6', 'OTC交易、币币交易、合约交易，交易挖矿100%返还平台币', 'app/bike/1539842729120LOGO.jpg', '币客BITKER (www.bitker.com)2017年12月成立于新加坡，由全球顶尖金融从业人员与技术极客组成的团队，致力于提供“一站式数字资产交易平台”。\r\n\r\n未来，您仅需要登录币客BITKER客户端，就可以轻松管理包括OTC交易、币币交易、合约交易、杠杆交易、创新理财等全部数字资产。币客BITKER,让数字资产投资化繁为简，触手可及。\r\n\r\n币客初心：赋能投资者共建“安全、透明、共有”交易型社区\r\nBKB积分：积分通证串起币客生态，重构共治共赢的关系\r\n社区投票：手续费收益重新分配，分配权回归大众', '1', '1', null, '7', '0', '上海泰闻信息技术有限公司', null, null, '1', '2018-11-15 10:22:19', null, '1', null, null, '2018-10-18 14:05:29', '2018-12-17 15:00:00');
INSERT INTO `t_app` VALUES ('34', '2', '1', '读取短信；\r\n读取相册。', 'CHAOEX', 'http://www.emoonbow.com/applicationMarket-upload/app/CHAOEX/1539842903973LOGO.png', '1', '1', '2018-10-18 16:41:25', null, '', '1', '2018-10-18 16:41:25', null, null, '1', '2018-10-18 16:41:25', '0', null, '一家香港交易所，支持币币交易和OTC交易', 'app/CHAOEX/1539842903973LOGO.png', 'CHAOEX（CHAOEX.IO）由唯一网络科技（香港）有限公司于2017年9月创立，是一家服务于全球交易者的区块链资产交易服务平台。\r\n\r\n【币种推荐 TOP 5】\r\n通过综合考量与评估，CHAOEX为您甄选出目前全网热度最高的五大数字货币，您可以将此作为投资参考\r\n\r\n【交易中心】\r\n呈现K线、折线与深度分析图，使用户对平台当前币种的交易行情一目了然。收藏功能可方便用户随时调取某一币种的行情信息，以作为投资参考\r\n\r\n【个人中心】\r\n清晰可见用户目前的KYC级别，账户安全状态、资产明细及交易状况，方便用户进行身份认证、资产管理与账户设置', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '0', null, null, '2018-10-18 14:08:24', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('35', '2', '1', '读取短信；\r\n读取相册。', '币包', 'http://www.emoonbow.com/applicationMarket-upload/app/bibao/1539843089713LOGO.png', '1', '1', '2018-10-18 16:41:25', null, '', '1', '2018-10-18 16:41:25', null, null, '1', '2018-10-18 16:41:25', '0', null, '香港比特币交易平台，支持C2C、币币交易。', 'app/bibao/1539843089712LOGO.png', '币包交易站是一款多功能的收付款平台软件，这款软件对数据信息进行安全加密，用户可以放心进行收付款，全方位的服务，为客户带来最优质的服务，便捷的操作方式，注册十分简单，转账资金动向清晰。\r\n\r\n币包交易站APP，是深圳市天之雨科技有限公司旗下的一款转账兼社交聊天的多功能应用，支持收发数字货币、图片、文字等，全方位服务体系，享受高效、规范，有温度的服务，随时随地可进行交易，让您享受不一样的体验。\r\n\r\n【软件特色】\r\n1、数据安全：采用多级加密技术，冷钱包存储，密码使用Salted SHA-512-PBKDF2 加密技术;\r\n2、服务专业：全方位服务体系，享受高效、规范，有温度的服务，一切只为客户满意;\r\n3、操作便捷：简化操作难度，只需手机号即可完成注册，简单一步、轻点鼠标，随时随地可进行交易;\r\n4、费率低、转账快：超低费率，转账交易速度快，实时看到，资产流动去向，让您享受不一样的体验。', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '0', null, null, '2018-10-18 14:11:30', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('36', '2', '1', '读取短信；\r\n读取相册。', 'EtherFlyer', 'http://www.emoonbow.com/applicationMarket-upload/app/EtherFlyer/1539843255017LOGO.png', '1', '1', '2018-10-18 16:41:25', null, '', '1', '2018-10-18 16:41:25', null, null, '1', '2018-10-18 16:41:25', '0', null, '一个基于以太坊的去中心化交易所，安全，稳定。', 'app/EtherFlyer/1539843255017LOGO.png', 'EtherFlyer以飞交易所是一个2018年1月上线的去中心化交易所。采用了硬件加速和高效记忆匹配技术，可以使订单匹配速率峰值达到2,000,000+/秒，订单处理速率峰值达到1,000,000+/秒。平台将持续跟进开发，逐步实现不同种类的数字货币跨链交易。TCASH持有者可享受平台50%收益的分红，以及交易费用梯度减免优惠。', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '0', null, null, '2018-10-18 14:14:15', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('37', '2', '1', '读取短信；\r\n读取相册。', 'CoinEx', 'http://www.emoonbow.com/applicationMarket-upload/app/CoinEx/1539843453389LOGO.png', '1', '1', '2018-10-18 16:41:25', null, '', '1', '2018-10-18 16:41:25', null, null, '1', '2018-10-18 16:41:25', '0', null, '支持币币交易、法币交易，交易挖矿和投票上币，体验很不错的交易所', 'app/CoinEx/1539843453389LOGO.png', 'CoinEx成立于2017年12月，是一家面向全球的专业数字货币交易服务商。CoinEx核心团队来自全球知名互联网及金融企业，包括多名数字货币行业最早期从业者及投资者，在数字货币领域具有丰富的技术研发及全球运营经验。\r\n\r\n凭借自主开发的核心交易撮合系统及极速流畅的用户体验，CoinEx致力于为全球用户打造最安全、稳定、高效的数字货币交易平台。目前CoinEx已经支持中、英等多国语言，服务近百个国家及地区的全球用户。', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '0', null, null, '2018-10-18 14:17:33', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('38', '1', '1', 'cdscdscds', 'cds', 'http://www.emoonbow.com/applicationMarket-upload/app/cds/1539843631742LOGO.png', '1', '1', '2018-10-18 16:41:25', null, '', '1', '2018-10-18 16:41:25', null, null, '1', '2018-10-18 16:41:25', '0', null, 'cds', 'app/cds/1539843631741火币.docx', 'cdas', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '0', null, null, '2018-10-18 14:20:32', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('39', '2', '1', '读取短信；\r\n读取相册。', 'LinkCoin', 'http://www.emoonbow.com/applicationMarket-upload/app/LinkCoin/1539843743123LOGO.jpg', '1', '1', '2018-10-18 16:41:25', null, '', '1', '2018-10-18 16:41:25', null, null, '1', '2018-10-18 16:41:25', '0', null, '一款方便好用的OTC交易平台', 'app/LinkCoin/1539843743119LOGO.jpg', 'LinkCoin手机客户端由专业的国际化团队研发与运营，旨在为全球用户提供便捷，可信赖的区块链资产交换服务，汇聚全球用户，致力于打造世界级的区块链资产交换平台。', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-18 14:22:23', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('41', '2', '1', '读取短信；\r\n读取相册。', 'ALLCoin', 'http://www.emoonbow.com/applicationMarket-upload/app/ALLCoin/1539845128633LOGO.jpg', '1', '1', '2018-10-18 16:38:18', null, '', '1', '2018-10-18 16:38:18', null, null, '1', '2018-10-18 16:38:18', '0', null, '流畅的交易平台，体验很不错。官方暂时还没有出安卓版本哦。', 'app/ALLCoin/1539845128632LOGO.jpg', 'Allcoin是Cascadia Fintech Corp. 旗下的全球数字货币交易平台，总部位于加拿大温哥华。\r\nAllcoin致力于打造一个专业的代币售卖平台，以及支持多种类代币交易数字资产平台。Allcoin拥有行业领先的技术实力，致力于数字货币行业的发展，为广大数字货币爱好者提供更优质、更满意的服务。', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-18 14:45:29', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('42', '2', '1', '读取短信；\r\n读取相册。', 'MGCEx.NZ', 'http://www.emoonbow.com/applicationMarket-upload/app/MGCEx.NZ/1539845409269LOGO.png', '1', '1', '2018-10-18 16:38:18', null, '', '1', '2018-10-18 16:38:18', null, null, '1', '2018-10-18 16:38:18', '0', null, '安全、便捷，支持多币种交易，为客户提供优质的交易体验。', 'app/MGCEx.NZ/1539845409269LOGO.png', 'MGCEX.NZ隶属MGC GROUP旗下服务于全球专业交易用户的加密数字资产交易所, 提供多种数字资产品类的交易和代理服务，由MGC GROUP国际站专业团队运营。平台拥有众多独有特性，在行业内独树一帜。MGCEX.NZ交易平台是全球权威的加密数字资产交易所之一，旨在为全球用户提供安全、便捷的交易渠道服务。平台支持英文、简繁中文等多国语言，提供国际行情实时对接，支持各大主流加密数字货币充币、提币功能，提供场内、场外的币币交易、担保交易等多种交易方式和渠道，支持多币种上架。MGCEX.NZ以“打造全球最权威加密数字资产交易所”为目标，旨在为用户提供一个最权威、最专业的数字资产投资交易平台。', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-18 14:50:09', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('43', '2', '1', '读取短信；\r\n读取相册。', 'BitPortal', 'http://www.emoonbow.com/applicationMarket-upload/app/BitPortal/1539845708784LOGO.jpg', '1', '1', '2018-10-18 16:38:18', null, '', '1', '2018-10-18 16:38:18', null, null, '1', '2018-10-18 16:38:18', '0', null, '简单的EOS钱包，实时的交易数据', 'app/BitPortal/1539845708784LOGO.jpg', 'BitPortal（币通）是一款设计良好的移动端EOS钱包，支持iOS和Android。其由用户保管私钥，旨在成为您便携，安全，可靠的资产管理工具。\r\n【专业的EOS的资产管理】\r\n- 币通支持EOS的账户和资产管理，以及超级节点的投票\r\n- 币通不会保留用户的私钥，由您自己掌握自己的资产\r\n- 币通通过多层嵌套的安全措施，为您的资产保驾护航\r\n【实用的市场数据】\r\n- 实时的交易数据，让您把握每次投资机遇\r\n- 全面的项目信息，未战敌而先知敌\r\n- 简约的成本计算，风险控制心细如丝', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-18 14:55:09', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('44', '1', '1', '读取短信；\r\n读取相册。', 'imToken', 'http://www.emoonbow.com/applicationMarket-upload/app/imToken/1539845946022LOGO.png', '1', '1', '2018-10-18 16:38:18', null, '', '1', '2018-10-18 16:38:18', null, null, '1', '2018-10-18 16:38:18', '0', null, '当下最流行的以太坊系加密货币钱包。', 'app/imToken/1539845946022LOGO.png', 'imToken是一个以太坊移动轻便钱包，致力于为用户提供简单，安全和强大的数字资产管理工具。\r\n\r\n用户可以在创建/导入钱包，安全数字资产管理，便利的交易执行，实时市场更新方面体验自由，并通过imToken探索以太坊DApps的潜力。\r\n\r\n【主要特点】\r\n**独立私钥，增强安全性**\r\n- 加密私钥将被安全地存储在设备的本地沙箱系统中。\r\n- 提供多个钱包备份选项，以防止资产丢失或被盗。\r\n\r\n**使用简单，便于交易**\r\n- 无需与区块链同步即可执行交易。\r\n- 用户友好的界面。\r\n\r\n**一站式数字资产管理**\r\n- 可定制资产列表，包含ETH等资产。\r\n- 实时更新市场和资产价值。\r\n\r\n**市场跟踪和警报**\r\n- 通过与coinbase / Bittrex / Kraken / Poloniex / Binance不断同步支持的全球市场数据监控。\r\n- 灵活的价格警报设置，绝对不会错过重要的市场走势。\r\n\r\n**强大的DApp浏览器**\r\n- 使用智能合约技术构建的分散/分布式应用程序浏览器。\r\n- 支持像Candy Bar / ENS / HyperDragon / Maker / Digix / Gnosis / Augur等DApp。', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-18 14:59:06', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('45', '1', '1', '读取短信；\r\n读取相册。', '比特派', 'http://www.emoonbow.com/applicationMarket-upload/app/bitepai/1539846198331LOGO.jpg', '1', '1', '2018-10-18 16:38:18', null, '', '1', '2018-10-18 16:38:18', null, null, '1', '2018-10-18 16:38:18', '0', null, '安全方便的管理和交易多种区块链资产。', 'app/bitepai/1539846198330LOGO.jpg', '比特派钱包是由比太团队研发的新一代区块链资产综合服务平台，立足于HD钱包技术，您可以在比特派上轻松发送和接收数字货币，还能方便的进行各类交易。更提供 Dapp 接口，免去企业重复开发困扰、大大节省开发资源。使用派钱包，用户可以方便的进行交易，在使用应用服务的同时确保资产100%由自己掌控。', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-18 15:03:18', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('46', '1', '1', '读取短信；\r\n读取相册。', 'TokenPocket', 'http://www.emoonbow.com/applicationMarket-upload/app/TokenPocket/1539846392910LOGO.png', '1', '1', '2018-10-18 16:38:18', null, '', '1', '2018-10-18 16:38:18', null, null, '1', '2018-10-18 16:38:18', '0', null, 'TokenPocket支持ETH、EOS和MOAC等四个体系钱包，是一款集资产管理资产交易及应用生态于一身的钱包应用。', 'app/TokenPocket/1539846392909LOGO.png', 'TokenPocket是数字货币便捷管理和交易辅助平台。平台方便用户绑定自己的数字货币平台，在线查看货币行情信息等。\r\n【资产更放心】\r\n私钥本地安全保存，支持多种类型钱包\r\n助记词备份防止用户丢失\r\n【一键添加】\r\n一键添加多种数字资产\r\n实时跟踪交易动向，关注资产余额变化\r\n【关注行情】\r\n关注全球各大交易所行情\r\n价格提醒，把握投资机会\r\n【发现精彩】\r\n推送行业资讯、技术进展\r\n多维度数据信息，发现投资机会', '1', '1', null, '4', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-18 15:06:33', '2018-12-29 12:00:00');
INSERT INTO `t_app` VALUES ('47', '1', '1', '读取短信；\r\n读取相册。', 'Kcash', 'http://www.emoonbow.com/applicationMarket-upload/app/Kcash/1539846576549LOGO.png', '1', '1', '2018-10-18 16:38:18', null, '', '1', '2018-10-18 16:38:18', null, null, '1', '2018-10-18 16:38:18', '0', null, 'Kcash通过对多种区块链资产类型的支持，提供了安全便捷、去中心化的一站式管理方案，可以刷卡的数字货币钱包。', 'app/Kcash/1539846576548LOGO.png', 'Kcash致力于为大众提供一个安全、高效、便捷的数字资产平台，通过打通数字货币与实体世界的连接，让每一个人随时随地便捷的使用你的数字资产，丰富区块链技术和数字资产的应用场景，推动其服务于商业进步和社会发展。', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-18 15:09:37', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('48', '1', '1', '读取短信；\r\n读取相册。', 'Bpal钱包', 'http://www.emoonbow.com/applicationMarket-upload/app/Bpalqianbao/1539846927054LOGO.png', '1', '1', '2018-10-18 16:38:18', null, '', '1', '2018-10-18 16:38:18', null, null, '1', '2018-10-18 16:38:18', '0', null, '一款比特币的增值软件，持币囤币值得拥有', 'app/Bpalqianbao/1539846927054LOGO.png', 'Bpal钱包是一款数字资产增值钱包，可称作“数字货币银行”，旨在为用户提供安全、专业、便捷的数字货币管理、增值服务。使用Bpal钱包，可以自由的创建或导入钱包。Bpal钱包拥有三大特性：每日计息、随存随取、BTC本位。\r\n\r\n1、每日计息：每天一觉醒来都能看到利息入账，年化收益率高达8.8%。\r\n2、随存随取：随时存币、提币，安全便捷。\r\n3、BTC本位：存入比特币，利息支付也是比特币。\r\n\r\nBpal钱包理财最大的特点是安全稳定、风险系数低，尤其适合追求稳健型投资者。“囤币”作为币圈最稳健的投资方式，Bpal钱包提供的理财类似于余额宝，但收益率比余额宝高。\r\n\r\n【主要功能】\r\n私钥自持，安全管理数字资产。私钥被加密后，安全存储在手机设备里，确保资产万无一失。\r\n转账收款，便捷好用。轻钱包无需同步完整区块链数据，转账操作指尖完成。\r\n资产增值，Bpal钱包类似于数字钱包的余额宝，但收益比余额宝高。', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-18 15:15:27', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('49', '1', '1', '读取短信；\r\n读取相册。', 'WeCredit钱包', 'http://www.emoonbow.com/applicationMarket-upload/app/WeCreditqianbao/1539847243122LOGO.jpg', '1', '1', '2018-10-18 16:38:18', null, '', '1', '2018-10-18 16:38:18', null, null, '1', '2018-10-18 16:38:18', '0', null, 'WeCredit钱包中有【矿场】，通过挖矿和丰富的任务都可以为你获取收益。', 'app/WeCreditqianbao/1539847243122LOGO.jpg', 'WeCredit是一款基于区块链的数字货币钱包，简单易用、安全专业。通过WeCredit，您可以创建和导入钱包，安全的管理数字资产，便捷的转账收款，体验有趣的挖矿游戏，发现更多区块链的DApp。', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-18 15:20:43', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('50', '1', '1', '读取短信；\r\n读取相册。', 'TrustNote', 'http://www.emoonbow.com/applicationMarket-upload/app/TrustNote/1539847424866LOGO.png', '1', '1', '2018-10-18 16:38:18', null, '', '1', '2018-10-18 16:38:18', null, null, '1', '2018-10-18 16:38:18', '0', null, '钱包+社交+交易，可以发口令红包，用户间可以互加好友，进行P2P加密聊天和交易；可以支持其生态内的多种个人专属Token，好玩又好用。', 'app/TrustNote/1539847424866LOGO.png', 'TrustNote超级钱包，代码开源，具备六大特性。\r\na. 内置冷钱包功能实现离线交易，多重签名防盗；\r\nb. 智能合约可验证条件支付，支持Token发行；\r\nc. 高性能，交易确认速度快，15秒即时到账；\r\nd. 支持P2P聊天和交易，实现信息和数字资产的点对点去中心化加密传输；\r\ne. 未来将支持BTC、ETH等主流数字加密资产的一站式管理；\r\nf. 可扩展性，未来将内置T生态交易平台和应用平台，形成闭环生态。', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '0', null, null, '2018-10-18 15:23:45', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('51', '1', '1', '读取短信；\r\n读取相册。', 'Cobo', 'http://www.emoonbow.com/applicationMarket-upload/app/Cobo/1539847694984LOGO.png', '1', '1', '2018-10-18 16:38:18', null, '', '1', '2018-10-18 16:38:18', null, null, '1', '2018-10-18 16:38:18', '0', null, 'Cobo是专业的数字资产管理钱包，帮您安全储存资产，独有 POS 增益助您资产增值。', 'app/Cobo/1539847694983LOGO.png', '资产管理：\r\n* 安全的管理数字资产\r\n* 智能费率估算，低成本发送交易\r\n* Cobo用户间转账秒到账，无手续费\r\n* 地址簿帮助安全便捷的转账\r\n \r\n市场行情：\r\n* 10+交易所，全交易对数据支持\r\n* 自定义交易对种类和排序\r\n* 智能提醒让你时刻掌控市场行情\r\n \r\n安全\r\n* 支持双重验证\r\n* 指纹/PIN解锁打开APP\r\n* 支付密码保证安全\r\n* 安全等级决定提币额度\r\n \r\n国际化支持：\r\n* 支持币种显示：美元，日元，韩元，欧元，人民币\r\n* 语言：中文，英文', '1', '1', null, '1', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '0', null, null, '2018-10-18 15:28:15', '2018-11-26 09:59:04');
INSERT INTO `t_app` VALUES ('52', '1', '1', '读取短信；\r\n读取相册。', 'SerWallet', 'http://www.emoonbow.com/applicationMarket-upload/app/SerWallet/1539847849963LOGO.png', '1', '1', '2018-10-18 16:38:18', null, '', '1', '2018-10-18 16:38:18', null, null, '1', '2018-10-18 16:38:18', '0', null, '简单好用 功能强大的数字钱包，支持多种类型。', 'app/SerWallet/1539847849962LOGO.png', '【资产管理】\r\n私钥本地安全保存，资产一目了然 \r\n支持多种钱包类型，轻松导入导出 \r\n助记词备份防丢，多重签名防盗', '1', '1', null, '115', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '0', null, null, '2018-10-18 15:30:50', '2018-12-17 14:00:00');
INSERT INTO `t_app` VALUES ('53', '1', '1', '读取短信；\r\n读取相册。', 'SEA钱包', 'http://www.emoonbow.com/applicationMarket-upload/app/SEAqianbao/1539847993259LOGO.png', '1', '1', '2018-10-18 16:38:18', null, '', '1', '2018-10-18 16:38:18', null, null, '1', '2018-10-18 16:38:18', '1', '6', '蓝鲸淘钱包，支持本体（ONT）映射、空投，ONG分红，NEO代币。', 'app/SEAqianbao/1539847993254LOGO.png', 'NEO生态的钱包项目（未来集成智能交易功能）\r\n1、安全无忧的去中心化钱包。\r\n2、完美支持NEP2、NEP5、NEP6等标准\r\n3、转账全免手续费\r\n4、支持ONT的真币映射、ONG分红以及ONT空投。', '1', '1', null, '8', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '0', null, null, '2018-10-18 15:33:13', '2018-12-17 14:00:00');
INSERT INTO `t_app` VALUES ('54', '1', '1', '读取短信；\r\n读取相册。', '摩尔钱包', 'http://www.emoonbow.com/applicationMarket-upload/app/moerqianbao/1539849516015LOGO.png', '1', '1', '2018-10-18 16:38:18', null, '', '1', '2018-10-18 16:38:18', null, null, '1', '2018-10-18 16:38:18', '0', null, '手机挖矿必备APP，转账秒到！', 'app/moerqianbao/1539849516014LOGO.png', '摩尔钱包是摩尔链主网钱包，支持手机挖矿,支持新用户领取摩尔红包！\r\n摩尔链-及时免交易费的DAG公有链。\r\n \r\n用户可以创建/导入钱包，安全的进行数字资产管理与流通。\r\n摩尔钱包支持秒内到账、还免交易手续费。\r\n摩尔钱包还支持手机挖矿，睡觉、工作不使用手机时，打开APP就能挖矿赚钱。', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '0', null, null, '2018-10-18 15:58:36', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('55', '1', '1', '读取短信；\r\n读取相册。', 'HaloWallet', 'http://www.emoonbow.com/applicationMarket-upload/app/HaloWallet/1539849846710LOGO.png', '1', '1', '2018-10-18 16:38:18', null, '', '1', '2018-10-18 16:38:18', null, null, '1', '2018-10-18 16:38:18', '0', null, 'EOS引力区出品，同时支持EOS和ETH。', 'app/HaloWallet/1539849846710LOGO.png', 'HaloWallet（网页版蚂蚁钱包的App），一款为EOS量身定制的数字钱包，支持EOS一键映射，实时为您更新EOS的最新动向资讯，并支持各类的糖果消息推送。\r\nIOS版会在近期上线，请耐心等待，注册糖果中心即可领取500个Halo积分', '1', '1', null, '34', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '0', null, null, '2018-10-18 16:04:07', '2018-12-05 14:00:00');
INSERT INTO `t_app` VALUES ('56', '1', '1', '读取短信；\r\n读取相册。', 'Anybit', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/1539850032564LOGO.png', '1', '1', '2018-10-18 16:38:18', null, '', '1', '2018-10-18 16:38:18', null, null, '1', '2018-10-18 16:38:18', '1', '6', '数字货币智能管家。', 'app/Antbit/1539850032564LOGO.png', '资产管理 安全可靠\r\n私钥本地安全保存，种子密码备份防丢，\r\n支持多种数字货币，资产信息一目了然，\r\n支持钱包及时恢复，查询钱包历史数据\r\n交易操作 高效便捷\r\n默认货币设置，\r\n一键交易更便捷。\r\n联系人设置，\r\n轻松完成收付款。\r\n交易状态跟踪，\r\n随时查看历史记录。', '1', '1', null, '3', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '0', null, null, '2018-10-18 16:07:13', '2018-11-30 16:00:00');
INSERT INTO `t_app` VALUES ('57', '1', '1', '读取短信；\r\n读取相册。', '鼓鼓钱包', 'http://www.emoonbow.com/applicationMarket-upload/app/guguqianbao/1539850183855LOGO.png', '1', '1', '2018-10-18 16:38:18', null, '', '1', '2018-10-18 16:38:18', null, null, '1', '2018-10-18 16:38:18', '0', null, '支持兑换交易所的BITCNY，方便出入金', 'app/guguqianbao/1539850183854LOGO.png', '区块链技术安全解决方案和数字资产安全解决方案；\r\n区块链公有链和私有链的行业应用级开发和技术服务；\r\n数字货币交易系统开发，点对点交易，场外交易，币币交易，高频撮合交易等。\r\n鼓鼓团队拥有丰富的技术经验和对行业的深刻理解，代表作品为新加坡Magictime Technology PTE.LTD提供的MagicWallet钱包技术服务。\r\n国内第一款基于Bitshares区块链的移动端平台。', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '0', null, null, '2018-10-18 16:09:44', '2018-11-16 10:19:33');
INSERT INTO `t_app` VALUES ('58', '1', '1', '读取短信；\r\n读取相册。', '币信', 'http://www.emoonbow.com/applicationMarket-upload/app/bixin/1539850361706LOGO.png', '1', '1', '2018-10-18 16:38:18', null, '', '1', '2018-10-18 16:38:18', null, null, '1', '2018-10-18 16:38:18', '0', null, '集合了比特币钱包、行情、聊天、otc等功能。', 'app/bixin/1539850361706LOGO.png', '币信app是一款集钱包、社交聊天功能于一体的应用，支持发送图片、文字和比特币，亦可群聊。  同时币信app还首创的比特币快捷支付功能，让一切变得更高效。', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '0', null, null, '2018-10-18 16:12:42', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('59', '1', '1', '读取短信；\r\n读取相册。', 'ONE', 'http://www.emoonbow.com/applicationMarket-upload/app/ONE/1539850603810LOGO.png', '1', '1', '2018-10-18 16:38:18', null, '', '1', '2018-10-18 16:38:18', null, null, '1', '2018-10-18 16:38:18', '1', '6', '万能钱包+闪电转账+去中心化交易所+去中心化聊天', 'app/ONE/1539850603810LOGO.png', '万能钱包支持700种数字货币；\r\n所有数字资产5 秒闪电转账；\r\n去中心化交易所保障交易安全；\r\n世界首个去中心化社交网络；\r\n稳定数字资产USDA方便充值提现；\r\n群红包、社交红包一应俱全；\r\n跨链技术连接所有区块链。', '1', '1', null, '591', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-18 16:16:44', '2018-12-05 15:00:00');
INSERT INTO `t_app` VALUES ('60', '1', '1', '读取短信；\r\n读取相册。', '库神钱包', 'http://www.emoonbow.com/applicationMarket-upload/app/kushenqianbao/1539850800838LOGO.png', '1', '1', '2018-10-18 16:38:18', null, '', '1', '2018-10-18 16:38:18', null, null, '1', '2018-10-18 16:38:18', '1', '6', '库神冷钱包的配套APP', 'app/kushenqianbao/1539850800837LOGO.png', 'Coldlar是一个区块链资产安全解决方案，它可以保证数字资产的基于数字签名的私有密钥永远不会连接到互联网。\r\n这种机制消除了黑客窃取私钥的风险。\r\nColdlar配备了硬件钱包和APP，硬件钱包从未连接到互联网，他们通过二维码传输数据。\r\n这是应用程序，与私钥无关，可以随时随地连接互联网。\r\nAPP的核心功能是查看每枚硬币的余额，并将在钱包上创建的交易信息发送到区块链网络。', '1', '1', null, '1', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-18 16:20:01', '2018-11-25 20:00:00');
INSERT INTO `t_app` VALUES ('62', '1', '1', 'cdacda', 'xhu', 'http://www.emoonbow.com/applicationMarket-upload/app/xhu/1539854147497LOGO.png', '1', '1', '2018-10-19 12:02:17', null, 'cdacdac', '1', '2018-10-19 12:02:17', null, null, '1', '2018-10-19 12:02:17', '0', null, 'cadcda', 'app/xhu/15398541474954.png', 'cdacdaca', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-18 17:15:48', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('63', '8', '1', '短信读取；\n定位；', '火币-1', 'http://www.emoonbow.com/applicationMarket-upload/app/huobi-1/1539921684660LOGO.png', '1', '1', '2018-10-19 12:03:40', null, '', '1', '2018-10-19 12:03:40', null, null, '1', '2018-10-19 12:03:40', '0', null, '火币全球专业站(www.huobi.pro)是火币旗下面向全球专业用户的创新的数字资产交易所，提供多种数字资产之间的交易及投资服务。火币全球专业站依托火币本身各方面的优势，由火币境外团队打造。', 'app/huobi-1/1539921684654LOGO.png', '火币全球专业站(www.huobi.pro)是火币旗下面向全球专业用户的创新的数字资产交易所，提供多种数字资产之间的交易及投资服务。火币全球专业站依托火币本身各方面的优势，由火币境外团队打造。\n    火币是一家全球性质的数字资产交易所，在中国、香港、韩国、新加坡、美国等国家和地区均有独立的交易业务和运营中心。依托四年积累与稳健发展，火币已成长为具有全球竞争力与影响力的企业。在技术平台、产品支线、风控体系、运营及客户服务体系等方面都很完善。', '1', '3', null, '1', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-19 12:01:25', '2019-01-02 10:00:00');
INSERT INTO `t_app` VALUES ('66', '1', '1', 'cdacdas', '猪八戒', 'http://www.emoonbow.com/applicationMarket-upload/app/zhubajie/1539928313588LOGO.png', '2', '1', '2018-10-19 14:57:41', null, 'cdacdas', '1', '2018-10-19 14:57:41', null, null, '1', '2018-10-19 14:57:41', '0', null, 'cdacdas', 'app/zhubajie/1539928313474火币.docx', 'cdacdas', '1', '1', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '0', null, null, '2018-10-19 13:51:54', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('67', '3', '1', '读取短信；\r\n读取相册。', 'MyToken', 'http://www.emoonbow.com/applicationMarket-upload/app/AICoin/1539933999194LOGO.png', '2', '1', '2018-10-19 14:57:41', null, '', '1', '2018-10-19 14:57:41', null, null, '1', '2018-10-19 14:57:41', '0', null, '最流行的行情工具，国内使用人数最多，使用体验流畅，用户口碑好。', 'app/MyToken/1539928640344LOGO.png', '币行情：支持90+全球主流交易所实时价格跟踪；\r\n币资产：帮你记账，随时了解总资产变化；\r\n币资料：众筹成本、流通量、总量，项目介绍等；\r\n币资讯：交易所公告、Twitter、币聊、各种教程，千种数字货币市值、涨跌幅排名查询，各种新币价格及交易市场查询，国内外多个交易市场价格对比；\r\n币资产：让你更清楚查看和记录资产变动，支持添加 Widget，查看自选行情更方便， 支持 k 线，深度、近期交易。', '1', '2', null, '1', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-19 13:57:20', '2019-01-03 11:00:00');
INSERT INTO `t_app` VALUES ('68', '3', '1', '读取短信；\r\n读取相册。', '非小号', 'http://www.emoonbow.com/applicationMarket-upload/app/AICoin/1539933999194LOGO.png', '2', '1', '2018-10-19 14:57:41', null, '', '1', '2018-10-19 14:57:41', null, null, '1', '2018-10-19 14:57:41', '0', null, '非小号app是一款投资数字货币的必备软件，轻松了解行情，看各类排行榜。', 'app/feixiaohao/1539929842695LOGO.png', '非小号是国内首家最专业的数字货币行业大数据平台，中文版的coinmARketcap，专注于为数字货币用户提供数据分析，数据挖掘服务。我们拥有全球1000多个数字货币，170多家交易平台，5千多个交易对的数据资源，提供最专业的数字货币趋势分析，行情分析等多维度，全方位的分析服务。 未来发展的主要方向是数字货币行业大数据挖掘，数字货币相关工具应用。', '1', '2', null, '2', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-19 14:17:23', '2019-01-08 00:00:00');
INSERT INTO `t_app` VALUES ('69', '3', '1', '读取短信；\r\n读取相册。', '币动', 'http://www.emoonbow.com/applicationMarket-upload/app/AICoin/1539933999194LOGO.png', '2', '1', '2018-10-19 14:57:41', null, '', '1', '2018-10-19 14:57:41', null, null, '1', '2018-10-19 14:57:41', '0', null, '实时行情、大户数据、资产管理', 'app/bidong/1539930000767LOGO.png', '币动致力于成为全球第一数字货币综合服务商，提供全面、专业、及时的数字资产综合服务。\r\n\r\n【实时行情 专业呈现】\r\n专业数字资产行情数据综合服务\r\n详尽币种信息·毫秒级K线响应·委单深度·资金流向\r\n\r\n【链上数据 密切追踪】\r\n链上价值信息整合与分析\r\n币种追踪·大户持币·预警大额进出·钱包监控\r\n\r\n【舆情分析 占得先机】\r\n搜索榜 · 媒体榜 · 社群榜 · 开发榜\r\n掌握数字货币网络热度和舆情动态\r\n\r\n【资产管理 尽在掌握】\r\n安全省心的资产管家\r\n多交易所资产管理·钱包资产·ICO项目·人性化记账', '1', '2', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-19 14:20:01', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('70', '3', '1', '读取短信；\r\n使用位置信息。', '金塔Quintar', 'http://www.emoonbow.com/applicationMarket-upload/app/AICoin/1539933999194LOGO.png', '2', '1', '2018-10-19 14:57:41', null, '', '1', '2018-10-19 14:57:41', null, null, '1', '2018-10-19 14:57:41', '0', null, '专业级行情K线、集资讯和圈子交流为一体的业内一站式服务平台', 'app/jintaQuintar/1539930164480LOGO.png', '金塔Quintar是全球领先的区块链及数字货币行情软件，服务包括行情数据、k线图表和及时的行业资讯。旨在帮助投资者了解行业并做出更好的投资决策。\r\n\r\n----特色----\r\n【数据】\r\n对接全球各大交易所，收录全面的数字货币行情信息，免费的预警提醒，能帮助您快速掌握市场波动；\r\n【图表】\r\n稳定流畅的k线图表，支持多指标和时间周期的设定，操作流畅，易上手；\r\n【分析】\r\n最专业的数据统计分析，买盘和卖盘持仓数据，深度图表，成交记录，一目了然；\r\n【操作】\r\n动态的价格变化，丰富的界面变化效果，尽情享受操作乐趣 ；\r\n【新闻】\r\n收集全球区块链及数字货币重要新闻，最新的平台公告以及实时的政策走向', '1', '2', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-19 14:22:44', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('71', '3', '1', '读取短信；\r\n读取相册。', 'BlockCC', 'http://www.emoonbow.com/applicationMarket-upload/app/AICoin/1539933999194LOGO.png', '2', '1', '2018-10-19 14:57:41', null, '', '1', '2018-10-19 14:57:41', null, null, '1', '2018-10-19 14:57:41', '0', null, 'block.cc 是区块链产业信息服务平台，提供数字货币行情，数据，ICO项目，资讯等一站式服务', 'app/BlockCC/1539930328937LOGO.png', 'BlockCC 致力于打造顶尖的区块链新币大数据平台，支持298家交易所行情， 3387个币种查询，34家交易所的K线数据，并凭借数据的可靠、及时、全面，一举跻身行业领先地位。\r\n【新币动态】架建全方位、多维度媒体矩阵，新币介绍、上线预告、充提时间提醒、开售提醒、开盘延期等众多新币资讯抢鲜看。\r\n【新币评测】深度挖掘与分析数据， 通过与其它权威评级机构合作，引用多方评级数据，为用户提供最全面的新币研报。\r\n【新币行情】每日汇总当日新币上线预告和行情点评；新币双向比较，分析新币表现与趋势；新币价格自动预警。\r\n【新币糖果附加值】智能合约批量精准空投，用户可以直接交易糖果。', '1', '2', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-19 14:25:29', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('72', '3', '1', '读取短信；\r\n使用位置信息。', '币观', 'http://www.emoonbow.com/applicationMarket-upload/app/AICoin/1539933999194LOGO.png', '2', '1', '2018-10-19 14:57:41', null, '', '1', '2018-10-19 14:57:41', null, null, '1', '2018-10-19 14:57:41', '1', '6', '支持通过各家交易所的API管理追踪并统计用户的资产，还支持Fcoin和BigONE自动交易挖矿', 'app/biguan/1539930490454LOGO.png', '币观(CoinView)是专业的比特币(Bitcoin)/以太坊(Ethereum)/莱特币(Litecoin)等100多个虚拟货币行情分析软件，无需登录即可把握货币行情，了解最新行业资讯，统计资产变化情况。超过十万虚拟货币用户好评认可的虚拟货币行情软件。\r\n\r\n目前已支持火币、OKCoin、聚币网、币安、Bitfinex、BitTrex、Coincheck、Bitflyer、Kraken、Poloniex等20余所世界各大交易所，以及上百种ICO token的行情显示\r\n\r\n-功能亮点-\r\n【自选行情】将关注的货币加入列表，价格波动尽收眼底', '1', '2', null, '1', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-19 14:28:10', '2018-12-17 15:00:00');
INSERT INTO `t_app` VALUES ('73', '3', '1', '读取短信；\r\n读取相册。', '贝数区块链', 'http://www.emoonbow.com/applicationMarket-upload/app/AICoin/1539933999194LOGO.png', '2', '1', '2018-10-19 14:57:41', null, '', '1', '2018-10-19 14:57:41', null, null, '1', '2018-10-19 14:57:41', '1', '6', '专注区块链行业，通过大数据+人工智能技术深度挖掘区块链信息价值，为用户提供全面、优质、热门的区块链报道和行情信息。', 'app/beishuqukuailian/1539930603631LOGO.png', '【贝数区块链】专注区块链行业，通过大数据+人工智能技术深度挖掘区块链信息价值，为用户提供全面、优质、热门的区块链报道和行情信息。智能翻译英文、日语、韩语等各类语言，全球化区块链无障碍掌握，7*24h快讯播报，AI智能深度学习交互，实时汇总分析信息。私人定制化的区块链项目和糖果信息，帮助用户更快更好地追踪区块链新项目。', '1', '2', null, '1', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-19 14:30:04', '2018-12-17 15:00:00');
INSERT INTO `t_app` VALUES ('74', '3', '1', '读取短信；\r\n读取相册。', '币优-BitUniverse', 'http://www.emoonbow.com/applicationMarket-upload/app/niuyanxingqing/1539934109461LOGO.jpg', '2', '1', '2018-10-19 14:57:41', null, '', '1', '2018-10-19 14:57:41', null, null, '1', '2018-10-19 14:57:41', '1', '6', '币行情，币信息，实时追踪资产变化，炒币，用一个币优就够了！', 'app/biyou-BitUniverse/1539930748062LOGO.jpg', '币优-BitUniverse是最近在市面上非常火爆的一款虚拟货币平台，这里支持多种虚拟货币交易，比如最常用的比特币、莱特币、以太狗等等，还有其他一些货币也是支持的。这里是全球性的数字货币交易平台，全天24小时的为您监控数字货币的市场行情，帮您推送最新的市场资讯，行业内容的动态随时掌握。\r\n\r\n软件特色\r\n　　1. 操作简单，手机在线轻松计算出盈利与亏损；\r\n　　2. 全天24小时全方位的监控虚拟货币行情动态，价格趋势一目了然；\r\n　　3.及时更新多维度币排行榜，用户在这里轻松发现价值币；\r\n　　4. 支持250+交易所5000+数字货币；\r\n　　5. 自动导入api，个人资产一目了然，轻松管理账户信息。\r\n\r\n软件优势\r\n　　1.支持多币种的币币交易：LTC/BTC、ETH/BTC、BCC/BTC、ETC/BTC、BTC/USDT、LTC/USDT、ETH/ USDT、BCC/ USDT、ETC/ USDT\r\n　　2.实时价格\r\n　　3.专业K线图\r\n　　4.灵活交易方式：现价交易、市价交易\r\n　　5.提币充币快速到账\r\n　　6.价格提醒\r\n　　7.7*24小时多语言服务\r\n　　8.便捷的资产查询', '1', '2', null, '1', '0', '上海泰闻信息技术有限公司', null, null, '1', '2018-10-23 16:03:59', null, '1', null, null, '2018-10-19 14:32:28', '2018-12-17 15:00:00');
INSERT INTO `t_app` VALUES ('75', '3', '1', '读取短信；\r\n读取相册。', '链助理', 'http://www.emoonbow.com/applicationMarket-upload/app/AICoin/1539933999194LOGO.png', '2', '1', '2018-10-19 14:57:41', null, '', '1', '2018-10-19 14:57:41', null, null, '1', '2018-10-19 14:57:41', '1', '6', '新出的一款全球数字交易所实时币价，一站式查询的APP', 'app/lianzhuli/1539930904418LOGO.png', '链助理是专业的数字货币行情、资讯、导航平台，拥有各大热门平台优质的数字货币资源，致力于为用户提供实时行情、专业K线、精准数据，及时的资讯等、精选币圈资讯及行业观点交流等多元化服务。', '1', '2', null, '3', '0', '上海泰闻信息技术有限公司', null, null, '1', '2018-10-23 16:03:57', null, '1', null, null, '2018-10-19 14:35:05', '2018-12-17 15:00:00');
INSERT INTO `t_app` VALUES ('76', '3', '1', '读取短信；\r\n读取相册。', 'AICoin', 'http://www.emoonbow.com/applicationMarket-upload/app/AICoin/1539933999194LOGO.png', '2', '1', '2018-10-19 15:33:19', null, '', '1', '2018-10-19 15:33:19', null, null, '1', '2018-10-19 15:33:19', '0', null, '全球数字资产（比特币&竞争币）实时行情、专业K线、精准数据分析', 'app/AICoin/1539933999193LOGO.png', 'AICoin为您提供全球数字资产（比特币&竞争币）实时行情、专业K线、精准数据分析、精选行业资讯以及投资者交流社群等多元化便捷一站式服务。\r\n\r\n功能亮点\r\n【实时行情】提供全球数字资产价格行情，汇总各大主流交易平台实时交易数据。\r\n【极速预警】即时推送价格预警，极速掌握币种价格波动。\r\n【专业K线】流畅稳定的价格K线，提供多指标、自定义周期设置。\r\n【市场数据】提供专业全面的市场数据，把握币种成交量、买卖深度与盘口数据。\r\n【精准分析】分析数字资产交易市场，提供涨幅分布、成交量榜、大单买卖、涨跌幅榜等，市场趋势一览无余。\r\n【币友动态】实时掌握币圈动态，关注币友与专家讨论热点与独特见解，把握市场热点。\r\n【全球资讯】汇聚全球数字资产市场要闻、各平台最新公告，实时获悉政策动向。', '1', '2', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-19 15:26:39', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('77', '3', '1', '读取短信；\r\n读取相册。', '牛眼行情', 'http://www.emoonbow.com/applicationMarket-upload/app/niuyanxingqing/1539934109461LOGO.jpg', '2', '1', '2018-10-19 15:33:19', null, '', '1', '2018-10-19 15:33:19', null, null, '1', '2018-10-19 15:33:19', '0', null, '秒级实时的行情数据更新，掌握行情，快人一步！', 'app/niuyanxingqing/1539934109459LOGO.jpg', '牛眼行情 (niuyan.com) 是全球领先的加密货币行情应用。\r\n为您提供秒级实时的行情数据，支持全球2000+数字货币，200+交易平台，上万个交易对的实时数据资源。\r\n包含实时价格、涨跌和成交量等关键指标。\r\n「10倍」于coinmarketcap的数据全面与准确度，让您快人一步掌握行情。', '1', '2', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-19 15:28:29', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('78', '3', '1', '读取短信；\r\n读取相册。', '币牛牛', 'http://www.emoonbow.com/applicationMarket-upload/app/biniuniu/1539934229987LOGO.jpg', '2', '1', '2018-10-19 15:33:19', null, '', '1', '2018-10-19 15:33:19', null, null, '1', '2018-10-19 15:33:19', '0', null, '全球250+交易所数据24小时更新。24小时监控行情，捕捉异动，帮助投资者抓住机会。', 'app/biniuniu/1539934229987LOGO.jpg', '币牛牛-币圈同花顺\r\n币牛牛，让数据说话，炒币2.0时代的引领者！除了行情 ，更有资金流向，社区活跃，代码进度等深度解析！', '1', '2', null, '0', '0', '上海泰闻信息技术有限公司', null, null, null, null, null, '1', null, null, '2018-10-19 15:30:30', '2018-10-20 17:40:25');
INSERT INTO `t_app` VALUES ('79', '3', '1', '读取相册', 'MyToken', 'http://www.emoonbow.com/applicationMarket-upload/app/MyToken/1543213306468LOGO.png', '1', '1', '2018-11-26 15:32:01', null, '', '1', '2018-11-26 15:32:01', null, null, '1', '2018-11-26 15:32:01', '0', null, '最流行的行情工具，国内使用人数最多，使用体验流畅，用户口碑好。', 'app/MyToken/1543213306468LOGO.png', '币行情：支持90+全球主流交易所实时价格跟踪；\r\n币资产：帮你记账，随时了解总资产变化；\r\n币资料：众筹成本、流通量、总量，项目介绍等；\r\n币资讯：交易所公告、Twitter、币聊、各种教程，千种数字货币市值、涨跌幅排名查询，各种新币价格及交易市场查询，国内外多个交易市场价格对比；\r\n币资产：让你更清楚查看和记录资产变动，支持添加 Widget，查看自选行情更方便， 支持 k 线，深度、近期交易。', '1', '1', null, '0', '0', 'MyToken', null, null, null, null, null, '0', null, null, '2018-11-26 14:21:46', '2018-11-26 15:32:01');
INSERT INTO `t_app` VALUES ('80', '3', '1', '使用相册；\r\n读取短信。', '非小号', 'http://www.emoonbow.com/applicationMarket-upload/app/feixiaohao/1543214279609LOGO.png', '1', '1', '2018-11-26 15:32:01', null, '', '1', '2018-11-26 15:32:01', null, null, '1', '2018-11-26 15:32:01', '0', null, '非小号app是一款投资数字货币的必备软件，轻松了解行情，看各类排行榜。', 'app/feixiaohao/1543214279608LOGO.png', '非小号是国内首家最专业的数字货币行业大数据平台，中文版的coinmARketcap，专注于为数字货币用户提供数据分析，数据挖掘服务。我们拥有全球1000多个数字货币，170多家交易平台，5千多个交易对的数据资源，提供最专业的数字货币趋势分析，行情分析等多维度，全方位的分析服务。 未来发展的主要方向是数字货币行业大数据挖掘，数字货币相关工具应用。', '1', '2', null, '0', '0', '非小号', null, null, null, null, null, '0', null, null, '2018-11-26 14:38:00', '2018-11-26 15:32:01');
INSERT INTO `t_app` VALUES ('81', '3', '1', '读取短信', '币发', 'http://www.emoonbow.com/applicationMarket-upload/app/bifa/15432145820961.jpg', '1', '1', '2018-11-26 15:32:01', null, '', '1', '2018-11-26 15:32:01', null, null, '1', '2018-11-26 15:32:01', '0', null, '实用的行情工具', 'app/bifa/1543214582096LOGO.png', '行情、资讯、选币、预警功能一应俱全，币圈实用行情工具。', '1', '2', null, '0', '0', '币发', null, null, null, null, null, '0', null, null, '2018-11-26 14:43:02', '2018-11-26 15:32:01');
INSERT INTO `t_app` VALUES ('82', '3', '1', '使用相册', '币动', 'http://www.emoonbow.com/applicationMarket-upload/app/bidong/1543214805195LOGO.png', '1', '1', '2018-11-26 15:32:01', null, '', '1', '2018-11-26 15:32:01', null, null, '1', '2018-11-26 15:32:01', '0', null, '实时行情、大户数据、资产管理', 'app/bidong/1543214805195LOGO.png', '币动致力于成为全球第一数字货币综合服务商，提供全面、专业、及时的数字资产综合服务。', '1', '2', null, '0', '0', '币动', null, null, null, null, null, '0', null, null, '2018-11-26 14:46:45', '2018-11-26 15:32:01');
INSERT INTO `t_app` VALUES ('83', '3', '1', '使用相册', 'Quintar', 'http://www.emoonbow.com/applicationMarket-upload/app/Quintar/1543215111638LOGO.png', '1', '1', '2018-11-26 15:32:01', null, '', '1', '2018-11-26 15:32:01', null, null, '1', '2018-11-26 15:32:01', '0', null, '专业级行情K线、集资讯和圈子交流为一体的业内一站式服务平台', 'app/Quintar/1543215111637LOGO.png', '金塔Quintar是全球领先的区块链及数字货币行情软件，服务包括行情数据、k线图表和及时的行业资讯。旨在帮助投资者了解行业并做出更好的投资决策。', '1', '2', null, '0', '0', 'Quintar', null, null, null, null, null, '0', null, null, '2018-11-26 14:51:52', '2018-11-26 15:32:01');
INSERT INTO `t_app` VALUES ('84', '3', '1', '使用相册', 'BlockCC', 'http://www.emoonbow.com/applicationMarket-upload/app/BlockCC/1543215574169LOGO.png', '1', '1', '2018-11-26 15:32:02', null, '', '1', '2018-11-26 15:32:02', null, null, '1', '2018-11-26 15:32:02', '0', null, 'block.cc 是区块链产业信息服务平台，提供数字货币行情，数据，ICO项目，资讯等一站式服务', 'app/BlockCC/1543215574169LOGO.png', 'BlockCC 致力于打造顶尖的区块链新币大数据平台，支持298家交易所行情， 3387个币种查询，34家交易所的K线数据，并凭借数据的可靠、及时、全面，一举跻身行业领先地位。\r\n【新币动态】架建全方位、多维度媒体矩阵，新币介绍、上线预告、充提时间提醒、开售提醒、开盘延期等众多新币资讯抢鲜看。\r\n【新币评测】深度挖掘与分析数据， 通过与其它权威评级机构合作，引用多方评级数据，为用户提供最全面的新币研报。\r\n【新币行情】每日汇总当日新币上线预告和行情点评；新币双向比较，分析新币表现与趋势；新币价格自动预警。\r\n【新币糖果附加值】智能合约批量精准空投，用户可以直接交易糖果。\r\n 联系我们\r\n官方网站：https://block.cc\r\n微信客服号：blockcc-xiaokeai\r\nTelgream 机器人：https://t.me/joinchat/Iwls-BFsZeO--yK8S6mUzQ', '1', '2', null, '0', '0', 'BlockCC', null, null, null, null, null, '0', null, null, '2018-11-26 14:59:34', '2018-11-26 15:32:01');
INSERT INTO `t_app` VALUES ('85', '3', '1', '使用相册', '币观', 'http://www.emoonbow.com/applicationMarket-upload/app/biguan/1543215864815LOGO.png', '1', '1', '2018-11-26 15:32:02', null, '', '1', '2018-11-26 15:32:02', null, null, '1', '2018-11-26 15:32:02', '0', null, '支持通过各家交易所的API管理追踪并统计用户的资产，还支持Fcoin和BigONE自动交易挖矿', 'app/biguan/1543215864815LOGO.png', '币观(CoinView)是专业的比特币(Bitcoin)/以太坊(Ethereum)/莱特币(Litecoin)等100多个虚拟货币行情分析软件，无需登录即可把握货币行情，了解最新行业资讯，统计资产变化情况。超过十万虚拟货币用户好评认可的虚拟货币行情软件。\r\n\r\n目前已支持火币、OKCoin、聚币网、币安、Bitfinex、BitTrex、Coincheck、Bitflyer、Kraken、Poloniex等20余所世界各大交易所，以及上百种ICO token的行情显示', '1', '2', null, '0', '0', '币观', null, null, null, null, null, '0', null, null, '2018-11-26 15:04:25', '2018-11-26 15:32:01');
INSERT INTO `t_app` VALUES ('86', '3', '1', '使用相册', '贝数区块链', 'http://www.emoonbow.com/applicationMarket-upload/app/beishuqukuailian/1543216111739LOGO.png', '1', '1', '2018-11-26 15:32:02', null, '', '1', '2018-11-26 15:32:02', null, null, '1', '2018-11-26 15:32:02', '0', null, '专注区块链行业，通过大数据+人工智能技术深度挖掘区块链信息价值，为用户提供全面、优质、热门的区块链报道和行情信息。', 'app/beishuqukuailian/1543216111738LOGO.png', '【贝数区块链】专注区块链行业，通过大数据+人工智能技术深度挖掘区块链信息价值，为用户提供全面、优质、热门的区块链报道和行情信息。智能翻译英文、日语、韩语等各类语言，全球化区块链无障碍掌握，7*24h快讯播报，AI智能深度学习交互，实时汇总分析信息。私人定制化的区块链项目和糖果信息，帮助用户更快更好地追踪区块链新项目。', '1', '2', null, '0', '0', '贝数区块链', null, null, null, null, null, '0', null, null, '2018-11-26 15:08:32', '2018-11-26 15:32:01');
INSERT INTO `t_app` VALUES ('87', '3', '1', '使用相册', 'BitUniverse', 'http://www.emoonbow.com/applicationMarket-upload/app/BitUniverse/1543216581280LOGO.jpg', '1', '1', '2018-11-26 15:32:02', null, '', '1', '2018-11-26 15:32:02', null, null, '1', '2018-11-26 15:32:02', '0', null, '币行情，币信息，实时追踪资产变化，炒币，用一个币优就够了！', 'app/BitUniverse/1543216581280LOGO.jpg', '币优-BitUniverse是最近在市面上非常火爆的一款虚拟货币平台，这里支持多种虚拟货币交易，比如最常用的比特币、莱特币、以太狗等等，还有其他一些货币也是支持的。这里是全球性的数字货币交易平台，全天24小时的为您监控数字货币的市场行情，帮您推送最新的市场资讯，行业内容的动态随时掌握。', '1', '2', null, '0', '0', 'BitUniverse', null, null, null, null, null, '0', null, null, '2018-11-26 15:16:21', '2018-11-26 15:32:01');
INSERT INTO `t_app` VALUES ('88', '3', '1', '使用相册', '链助理', 'http://www.emoonbow.com/applicationMarket-upload/app/lianzhuli/1543216744328LOGO.png', '1', '1', '2018-11-26 15:32:02', null, '', '1', '2018-11-26 15:32:02', null, null, '1', '2018-11-26 15:32:02', '0', null, '新出的一款全球数字交易所实时币价，一站式查询的APP', 'app/lianzhuli/1543216744328LOGO.png', '链助理是专业的数字货币行情、资讯、导航平台，拥有各大热门平台优质的数字货币资源，致力于为用户提供实时行情、专业K线、精准数据，及时的资讯等、精选币圈资讯及行业观点交流等多元化服务。', '1', '2', null, '1', '0', '链助理', null, null, null, null, null, '0', null, null, '2018-11-26 15:19:04', '2018-11-26 17:00:00');
INSERT INTO `t_app` VALUES ('89', '3', '1', '使用相册', '有令', 'http://www.emoonbow.com/applicationMarket-upload/app/youling/1543217462266LOGO.png', '1', '1', '2018-11-26 15:32:02', null, '', '1', '2018-11-26 15:32:02', null, null, '1', '2018-11-26 15:32:02', '0', null, '有令，可以制作你人生第一件区块链纪念品，YOU已上线Fcoin交易所。', 'app/youling/1543217462266LOGO.png', '有令是一款以个人为中心的社交应用，为个人（未来会包含企业等组织）搭建以自己为中心的价值网络，每个用户在这儿都能提供服务、交换资产。', '1', '2', null, '1', '0', '有令', null, null, null, null, null, '0', null, null, '2018-11-26 15:31:02', '2018-12-17 15:00:00');
INSERT INTO `t_app` VALUES ('90', '3', '1', '使用相册', '币coin', 'http://www.emoonbow.com/applicationMarket-upload/app/bicoin/1543217720054LOGO.png', '1', '1', '2018-11-30 15:22:16', null, '', '1', '2018-11-30 15:22:16', null, null, '1', '2018-11-30 15:22:16', '0', null, '精准命中圈内十万主流活跃用户，微信端稳居币圈产品微信搜索指数第一。', 'app/bicoin/1543217720054LOGO.png', '专注链上数据监控实施提醒，全网转账、大额爆仓、链上异动、主力动向。', '1', '2', null, '1', '0', '币coin', null, null, null, null, null, '0', null, null, '2018-11-26 15:35:20', '2018-12-07 11:00:00');
INSERT INTO `t_app` VALUES ('91', '4', '1', '使用相册', '币用', 'http://www.emoonbow.com/applicationMarket-upload/app/biyong/1543221757041LOGO.jpg', '1', '1', '2018-11-30 15:22:16', null, '', '1', '2018-11-30 15:22:16', null, null, '1', '2018-11-30 15:22:16', '0', null, '链接用户与区块链世界的社交网络，超强用户体验。', 'app/biyong/1543221757040LOGO.jpg', 'BiYong是一个链接用户与区块链世界的社交网络。通过链接区块链用户、社区、媒体、资产、应用等打造完整的区块链社交网络，帮助用户轻松进入区块链世界。BiYong是区块链世界的“微信”，使用可以解决所有区块链世界中的需求。', '1', '2', null, '0', '0', '币用', null, null, null, null, null, '0', null, null, '2018-11-26 16:42:37', '2018-11-30 15:22:15');
INSERT INTO `t_app` VALUES ('92', '1', '1', 'cdacdas', 'cdacda', 'http://www.emoonbow.com/applicationMarket-upload/app/cdacda/15457941581671428044_231250831000_2.png', '2', '2', null, null, 'cdacda', '1', null, null, null, '2', null, '0', null, 'cadcda', 'app/cdacda/1545794157989yesu1.jpg', 'cdacda', '1', '2', null, '0', '0', 'cdacd', null, null, null, null, null, '0', null, null, '2018-12-26 11:15:58', null);
INSERT INTO `t_app` VALUES ('93', '4', '1', 'dfgdhfdgd', '火币', 'http://admin.dpstore.pro/applicationMarket-upload/app/huobi/1545825463014VisualElements_70.png', '1', '2', null, null, 'qwerqew', '1', null, null, null, '2', null, '0', null, 'adsf', 'app/huobi/1545825463013QQ浏览器截图_20170614184443_E3A9FC2F735C47848E0807FDF5B1E14A.jpg', 'asdf', '1', '1', null, '0', '0', 'dsafdas', null, null, null, null, null, '0', null, null, '2018-12-26 11:57:43', null);
INSERT INTO `t_app` VALUES ('94', '1', '1', 'cdacda', 'vfsvf', 'http://www.emoonbow.com/applicationMarket-upload/app/vfsvf/15460617652761428044_231250831000_2.png', '1', '2', null, null, 'cdscdsa', '1', null, null, null, '2', null, '0', null, 'cdazdcd', 'app/vfsvf/15460617652762.0.0分类', 'cdascsad', '2', '1', null, '0', '0', 'vfsvf', null, null, null, null, null, '0', null, null, '2018-12-29 13:36:07', null);

-- ----------------------------
-- Table structure for t_app_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_app_comment`;
CREATE TABLE `t_app_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(5000) DEFAULT NULL COMMENT '内容',
  `app_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `score` int(1) DEFAULT NULL COMMENT '评分',
  `deleted` int(1) DEFAULT NULL,
  `activated` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_app_comment
-- ----------------------------
INSERT INTO `t_app_comment` VALUES ('1', '这个应用不错', '72', '1', '1', null, null, '2018-08-30 14:07:58', '2018-10-22 14:43:25');
INSERT INTO `t_app_comment` VALUES ('2', '这个应用不错', '72', '2', '2', null, null, '2018-08-30 14:07:58', '2018-10-22 14:43:27');
INSERT INTO `t_app_comment` VALUES ('3', '这个应用不错', '72', '3', '3', null, null, null, '2018-10-22 14:43:29');
INSERT INTO `t_app_comment` VALUES ('4', '这个应用不错', '72', '4', '2', null, null, null, '2018-10-22 14:44:21');
INSERT INTO `t_app_comment` VALUES ('5', '这个应用不错', '72', '3', '1', null, null, null, '2018-10-22 14:43:31');
INSERT INTO `t_app_comment` VALUES ('6', '41552566', '59', '7', '1', null, null, '2018-10-24 15:28:13', null);
INSERT INTO `t_app_comment` VALUES ('7', '123', '52', '7', '1', null, null, '2018-11-06 16:22:34', null);
INSERT INTO `t_app_comment` VALUES ('8', '～～～', '55', '7', '2', null, null, '2018-11-16 11:33:34', null);
INSERT INTO `t_app_comment` VALUES ('9', 'fffghq', '27', '7', '3', null, null, '2018-11-17 10:00:46', null);
INSERT INTO `t_app_comment` VALUES ('10', '还不错', '53', '7', '4', null, null, '2018-11-23 16:46:11', null);
INSERT INTO `t_app_comment` VALUES ('11', '什么鬼', '30', '1', '1', null, null, '2018-11-23 21:55:07', null);
INSERT INTO `t_app_comment` VALUES ('12', '可以', '56', '26', '4', null, null, '2018-11-30 15:49:40', null);

-- ----------------------------
-- Table structure for t_app_image
-- ----------------------------
DROP TABLE IF EXISTS `t_app_image`;
CREATE TABLE `t_app_image` (
  `app_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_url` varchar(250) DEFAULT NULL,
  `app_id` int(11) DEFAULT NULL COMMENT '应用Id',
  `image_md5` varchar(255) DEFAULT NULL COMMENT '图片Md5的值',
  `deleted` int(1) DEFAULT NULL,
  `activated` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`app_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=372 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_app_image
-- ----------------------------
INSERT INTO `t_app_image` VALUES ('1', 'https://tse3-mm.cn.bing.net/th?q=%e6%9d%af%e5%ad%90%e5%9b%be%e6%a0%87&w=120&h=120&c=1&rs=1&qlt=90&pid=InlineBlock&mkt=zh-CN&adlt=strict&t=1&mw=247', '4', null, null, null, '2018-08-27 16:12:39', '2018-09-03 15:46:37');
INSERT INTO `t_app_image` VALUES ('2', 'https://tse3-mm.cn.bing.net/th?q=%e6%9d%af%e5%ad%90%e5%9b%be%e6%a0%87&w=120&h=120&c=1&rs=1&qlt=90&pid=InlineBlock&mkt=zh-CN&adlt=strict&t=1&mw=247', '4', null, null, null, '2018-08-27 16:12:39', '2018-09-03 15:46:40');
INSERT INTO `t_app_image` VALUES ('3', 'https://tse3-mm.cn.bing.net/th?q=%e6%9d%af%e5%ad%90%e5%9b%be%e6%a0%87&w=120&h=120&c=1&rs=1&qlt=90&pid=InlineBlock&mkt=zh-CN&adlt=strict&t=1&mw=247', '4', null, null, null, '2018-08-27 16:12:39', '2018-09-03 15:46:42');
INSERT INTO `t_app_image` VALUES ('4', 'https://tse3-mm.cn.bing.net/th?q=%e6%9d%af%e5%ad%90%e5%9b%be%e6%a0%87&w=120&h=120&c=1&rs=1&qlt=90&pid=InlineBlock&mkt=zh-CN&adlt=strict&t=1&mw=247', '4', null, null, null, '2018-08-27 16:12:39', '2018-09-03 15:46:45');
INSERT INTO `t_app_image` VALUES ('5', 'https://tse3-mm.cn.bing.net/th?q=%e6%9d%af%e5%ad%90%e5%9b%be%e6%a0%87&w=120&h=120&c=1&rs=1&qlt=90&pid=InlineBlock&mkt=zh-CN&adlt=strict&t=1&mw=247', '4', null, null, null, '2018-08-27 16:23:40', '2018-09-03 15:47:25');
INSERT INTO `t_app_image` VALUES ('6', 'https://tse3-mm.cn.bing.net/th?q=%e6%9d%af%e5%ad%90%e5%9b%be%e6%a0%87&w=120&h=120&c=1&rs=1&qlt=90&pid=InlineBlock&mkt=zh-CN&adlt=strict&t=1&mw=247', '5', null, null, null, '2018-08-27 16:23:40', '2018-09-20 15:53:39');
INSERT INTO `t_app_image` VALUES ('7', 'https://tse3-mm.cn.bing.net/th?q=%e6%9d%af%e5%ad%90%e5%9b%be%e6%a0%87&w=120&h=120&c=1&rs=1&qlt=90&pid=InlineBlock&mkt=zh-CN&adlt=strict&t=1&mw=247', '5', null, null, null, '2018-08-27 16:23:40', '2018-09-20 15:53:41');
INSERT INTO `t_app_image` VALUES ('8', 'https://tse3-mm.cn.bing.net/th?q=%e6%9d%af%e5%ad%90%e5%9b%be%e6%a0%87&w=120&h=120&c=1&rs=1&qlt=90&pid=InlineBlock&mkt=zh-CN&adlt=strict&t=1&mw=247', '5', null, null, null, '2018-08-27 16:23:40', '2018-09-20 15:53:42');
INSERT INTO `t_app_image` VALUES ('9', 'https://tse3-mm.cn.bing.net/th?q=%e6%9d%af%e5%ad%90%e5%9b%be%e6%a0%87&w=120&h=120&c=1&rs=1&qlt=90&pid=InlineBlock&mkt=zh-CN&adlt=strict&t=1&mw=247', '5', null, null, null, '2018-08-27 16:23:40', '2018-09-20 15:53:43');
INSERT INTO `t_app_image` VALUES ('11', 'http://www.emoonbow.com/applicationMarket-upload/app/猪八戒/1.jpg', '7', null, null, null, null, null);
INSERT INTO `t_app_image` VALUES ('12', 'http://www.emoonbow.com/applicationMarket-upload/app/猪八戒/1539420259800白菊花.png', '8', null, null, null, '2018-10-13 16:44:20', null);
INSERT INTO `t_app_image` VALUES ('13', 'http://www.emoonbow.com/applicationMarket-upload/app/猪八戒/1539420259801百合.png', '8', null, null, null, '2018-10-13 16:44:20', null);
INSERT INTO `t_app_image` VALUES ('14', 'http://www.emoonbow.com/applicationMarket-upload/app/猪八戒/1539420259802黄菊花.png', '8', null, null, null, '2018-10-13 16:44:20', null);
INSERT INTO `t_app_image` VALUES ('15', 'http://www.emoonbow.com/applicationMarket-upload/app/猪八戒/1539420259832马蹄莲.png', '8', null, null, null, '2018-10-13 16:44:20', null);
INSERT INTO `t_app_image` VALUES ('16', 'http://www.emoonbow.com/applicationMarket-upload/app/滴滴单车/1539422156092白菊花.png', '9', null, null, null, '2018-10-13 17:15:56', null);
INSERT INTO `t_app_image` VALUES ('17', 'http://www.emoonbow.com/applicationMarket-upload/app/滴滴单车/1539422156094百合.png', '9', null, null, null, '2018-10-13 17:15:56', null);
INSERT INTO `t_app_image` VALUES ('18', 'http://www.emoonbow.com/applicationMarket-upload/app/滴滴单车/1539422156095黄菊花.png', '9', null, null, null, '2018-10-13 17:15:56', null);
INSERT INTO `t_app_image` VALUES ('19', 'http://www.emoonbow.com/applicationMarket-upload/app/滴滴单车/1539422156096马蹄莲.png', '9', null, null, null, '2018-10-13 17:15:56', null);
INSERT INTO `t_app_image` VALUES ('20', 'http://www.emoonbow.com/applicationMarket-upload/app/滴滴单车/1539422217863白菊花.png', '10', null, null, null, '2018-10-13 17:16:58', null);
INSERT INTO `t_app_image` VALUES ('21', 'http://www.emoonbow.com/applicationMarket-upload/app/滴滴单车/1539422217865百合.png', '10', null, null, null, '2018-10-13 17:16:58', null);
INSERT INTO `t_app_image` VALUES ('22', 'http://www.emoonbow.com/applicationMarket-upload/app/滴滴单车/1539422217868黄菊花.png', '10', null, null, null, '2018-10-13 17:16:58', null);
INSERT INTO `t_app_image` VALUES ('23', 'http://www.emoonbow.com/applicationMarket-upload/app/滴滴单车/1539422217871马蹄莲.png', '10', null, null, null, '2018-10-13 17:16:58', null);
INSERT INTO `t_app_image` VALUES ('24', 'http://www.emoonbow.com/applicationMarket-upload/app/猪八戒/1.jpg', '11', null, null, null, null, null);
INSERT INTO `t_app_image` VALUES ('25', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜单车/15397637306581533698707125 - 副本 (2).jpg', '12', null, null, null, '2018-10-17 16:08:51', null);
INSERT INTO `t_app_image` VALUES ('26', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜单车/15397637306591533698707125 - 副本.jpg', '12', null, null, null, '2018-10-17 16:08:51', null);
INSERT INTO `t_app_image` VALUES ('27', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜单车/15397637306641539420259799马蹄莲.png', '12', null, null, null, '2018-10-17 16:08:51', null);
INSERT INTO `t_app_image` VALUES ('28', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜单车/1539763730667chen - 副本.jpg', '12', null, null, null, '2018-10-17 16:08:51', null);
INSERT INTO `t_app_image` VALUES ('29', 'http://www.emoonbow.com/applicationMarket-upload/app/猪八戒/1.jpg', '13', null, null, null, null, null);
INSERT INTO `t_app_image` VALUES ('30', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜单车/15397650439931533698707125 - 副本 (2).jpg', '14', null, null, null, '2018-10-17 16:30:44', null);
INSERT INTO `t_app_image` VALUES ('31', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜单车/15397650439931533698707125 - 副本.jpg', '14', null, null, null, '2018-10-17 16:30:44', null);
INSERT INTO `t_app_image` VALUES ('32', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜单车/15397650439931539420259799马蹄莲.png', '14', null, null, null, '2018-10-17 16:30:44', null);
INSERT INTO `t_app_image` VALUES ('33', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜单车/1539765043994chen - 副本.jpg', '14', null, null, null, '2018-10-17 16:30:44', null);
INSERT INTO `t_app_image` VALUES ('34', 'http://www.emoonbow.com/applicationMarket-upload/app/日本幽灵疾步/15397663006281539420259799马蹄莲.png', '15', null, null, null, '2018-10-17 16:51:41', null);
INSERT INTO `t_app_image` VALUES ('35', 'http://www.emoonbow.com/applicationMarket-upload/app/日本幽灵疾步/1539766300629chen - 副本.jpg', '15', null, null, null, '2018-10-17 16:51:41', null);
INSERT INTO `t_app_image` VALUES ('36', 'http://www.emoonbow.com/applicationMarket-upload/app/日本幽灵疾步/1539766300629chen.jpg', '15', null, null, null, '2018-10-17 16:51:41', null);
INSERT INTO `t_app_image` VALUES ('37', 'http://www.emoonbow.com/applicationMarket-upload/app/日本幽灵疾步/1539766300629th (2).jpeg', '15', null, null, null, '2018-10-17 16:51:41', null);
INSERT INTO `t_app_image` VALUES ('38', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜/15397671410971533698707125 - 副本 - 副本.jpg', '16', null, null, null, '2018-10-17 17:05:41', null);
INSERT INTO `t_app_image` VALUES ('39', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜/15397671410971533698707125 - 副本 (2).jpg', '16', null, null, null, '2018-10-17 17:05:41', null);
INSERT INTO `t_app_image` VALUES ('40', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜/15397671410981533698707125 - 副本.jpg', '16', null, null, null, '2018-10-17 17:05:41', null);
INSERT INTO `t_app_image` VALUES ('41', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜/15397671410981539420259799马蹄莲.png', '16', null, null, null, '2018-10-17 17:05:41', null);
INSERT INTO `t_app_image` VALUES ('42', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜/15397672468921533698707125 - 副本 - 副本.jpg', '17', null, null, null, '2018-10-17 17:07:27', null);
INSERT INTO `t_app_image` VALUES ('43', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜/15397672468921533698707125 - 副本 (2).jpg', '17', null, null, null, '2018-10-17 17:07:27', null);
INSERT INTO `t_app_image` VALUES ('44', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜/15397672468921533698707125 - 副本.jpg', '17', null, null, null, '2018-10-17 17:07:27', null);
INSERT INTO `t_app_image` VALUES ('45', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜/15397672468931539420259799马蹄莲.png', '17', null, null, null, '2018-10-17 17:07:27', null);
INSERT INTO `t_app_image` VALUES ('46', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜/15397672676721533698707125 - 副本 - 副本.jpg', '18', null, null, null, '2018-10-17 17:07:48', null);
INSERT INTO `t_app_image` VALUES ('47', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜/15397672676721533698707125 - 副本 (2).jpg', '18', null, null, null, '2018-10-17 17:07:48', null);
INSERT INTO `t_app_image` VALUES ('48', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜/15397672676721533698707125 - 副本.jpg', '18', null, null, null, '2018-10-17 17:07:48', null);
INSERT INTO `t_app_image` VALUES ('49', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜/15397672676721539420259799马蹄莲.png', '18', null, null, null, '2018-10-17 17:07:48', null);
INSERT INTO `t_app_image` VALUES ('50', 'http://www.emoonbow.com/applicationMarket-upload/app/火币/15397709841411.png', '19', null, null, null, '2018-10-17 18:09:44', null);
INSERT INTO `t_app_image` VALUES ('51', 'http://www.emoonbow.com/applicationMarket-upload/app/火币/15397709841412.png', '19', null, null, null, '2018-10-17 18:09:44', null);
INSERT INTO `t_app_image` VALUES ('52', 'http://www.emoonbow.com/applicationMarket-upload/app/火币/15397709841423.png', '19', null, null, null, '2018-10-17 18:09:44', null);
INSERT INTO `t_app_image` VALUES ('53', 'http://www.emoonbow.com/applicationMarket-upload/app/火币/15397709841434.png', '19', null, null, null, '2018-10-17 18:09:44', null);
INSERT INTO `t_app_image` VALUES ('54', 'http://www.emoonbow.com/applicationMarket-upload/app/huobi/15398267750581.png', '20', null, null, null, '2018-10-18 09:39:35', null);
INSERT INTO `t_app_image` VALUES ('55', 'http://www.emoonbow.com/applicationMarket-upload/app/huobi/15398267750602.png', '20', null, null, null, '2018-10-18 09:39:35', null);
INSERT INTO `t_app_image` VALUES ('56', 'http://www.emoonbow.com/applicationMarket-upload/app/huobi/15398267750623.png', '20', null, null, null, '2018-10-18 09:39:35', null);
INSERT INTO `t_app_image` VALUES ('57', 'http://www.emoonbow.com/applicationMarket-upload/app/huobi/15398267750654.png', '20', null, null, null, '2018-10-18 09:39:35', null);
INSERT INTO `t_app_image` VALUES ('58', 'http://www.emoonbow.com/applicationMarket-upload/app/huobi/15398281459421.png', '21', null, null, null, '2018-10-18 10:02:26', null);
INSERT INTO `t_app_image` VALUES ('59', 'http://www.emoonbow.com/applicationMarket-upload/app/huobi/15398281459432.png', '21', null, null, null, '2018-10-18 10:02:26', null);
INSERT INTO `t_app_image` VALUES ('60', 'http://www.emoonbow.com/applicationMarket-upload/app/huobi/15398281459443.png', '21', null, null, null, '2018-10-18 10:02:26', null);
INSERT INTO `t_app_image` VALUES ('61', 'http://www.emoonbow.com/applicationMarket-upload/app/huobi/15398281459444.png', '21', null, null, null, '2018-10-18 10:02:26', null);
INSERT INTO `t_app_image` VALUES ('62', 'http://www.emoonbow.com/applicationMarket-upload/app/huobi/15398288859491.png', '22', null, null, null, '2018-10-18 10:14:46', null);
INSERT INTO `t_app_image` VALUES ('63', 'http://www.emoonbow.com/applicationMarket-upload/app/huobi/15398288859492.png', '22', null, null, null, '2018-10-18 10:14:46', null);
INSERT INTO `t_app_image` VALUES ('64', 'http://www.emoonbow.com/applicationMarket-upload/app/huobi/15398288859503.png', '22', null, null, null, '2018-10-18 10:14:46', null);
INSERT INTO `t_app_image` VALUES ('65', 'http://www.emoonbow.com/applicationMarket-upload/app/huobi/15398288859504.png', '22', null, null, null, '2018-10-18 10:14:46', null);
INSERT INTO `t_app_image` VALUES ('66', 'http://www.emoonbow.com/applicationMarket-upload/app/bian/15398300343861.png', '23', null, null, null, '2018-10-18 10:33:54', null);
INSERT INTO `t_app_image` VALUES ('67', 'http://www.emoonbow.com/applicationMarket-upload/app/bian/15398300343862.png', '23', null, null, null, '2018-10-18 10:33:54', null);
INSERT INTO `t_app_image` VALUES ('68', 'http://www.emoonbow.com/applicationMarket-upload/app/bian/15398300343873.png', '23', null, null, null, '2018-10-18 10:33:54', null);
INSERT INTO `t_app_image` VALUES ('69', 'http://www.emoonbow.com/applicationMarket-upload/app/bian/15398300343874.png', '23', null, null, null, '2018-10-18 10:33:54', null);
INSERT INTO `t_app_image` VALUES ('70', 'http://www.emoonbow.com/applicationMarket-upload/app/OKEx/15398326045711.png', '24', null, null, null, '2018-10-18 11:16:45', null);
INSERT INTO `t_app_image` VALUES ('71', 'http://www.emoonbow.com/applicationMarket-upload/app/OKEx/15398326045722.png', '24', null, null, null, '2018-10-18 11:16:45', null);
INSERT INTO `t_app_image` VALUES ('72', 'http://www.emoonbow.com/applicationMarket-upload/app/OKEx/15398326045723.png', '24', null, null, null, '2018-10-18 11:16:45', null);
INSERT INTO `t_app_image` VALUES ('73', 'http://www.emoonbow.com/applicationMarket-upload/app/OKEx/15398326045734.png', '24', null, null, null, '2018-10-18 11:16:45', null);
INSERT INTO `t_app_image` VALUES ('74', 'http://www.emoonbow.com/applicationMarket-upload/app/CoinTiger/15398331276831.png', '25', null, null, null, '2018-10-18 11:25:28', null);
INSERT INTO `t_app_image` VALUES ('75', 'http://www.emoonbow.com/applicationMarket-upload/app/CoinTiger/15398331276832.png', '25', null, null, null, '2018-10-18 11:25:28', null);
INSERT INTO `t_app_image` VALUES ('76', 'http://www.emoonbow.com/applicationMarket-upload/app/CoinTiger/15398331276843.png', '25', null, null, null, '2018-10-18 11:25:28', null);
INSERT INTO `t_app_image` VALUES ('77', 'http://www.emoonbow.com/applicationMarket-upload/app/CoinTiger/15398331276854.png', '25', null, null, null, '2018-10-18 11:25:28', null);
INSERT INTO `t_app_image` VALUES ('78', 'http://www.emoonbow.com/applicationMarket-upload/app/huobiOTC/15398336653421.png', '26', null, null, null, '2018-10-18 11:34:25', null);
INSERT INTO `t_app_image` VALUES ('79', 'http://www.emoonbow.com/applicationMarket-upload/app/huobiOTC/15398336653452.png', '26', null, null, null, '2018-10-18 11:34:25', null);
INSERT INTO `t_app_image` VALUES ('80', 'http://www.emoonbow.com/applicationMarket-upload/app/huobiOTC/15398336653463.png', '26', null, null, null, '2018-10-18 11:34:25', null);
INSERT INTO `t_app_image` VALUES ('81', 'http://www.emoonbow.com/applicationMarket-upload/app/huobiOTC/15398336653464.png', '26', null, null, null, '2018-10-18 11:34:25', null);
INSERT INTO `t_app_image` VALUES ('82', 'http://www.emoonbow.com/applicationMarket-upload/app/LOOIS/15398413295021.png', '27', null, null, null, '2018-10-18 13:42:10', null);
INSERT INTO `t_app_image` VALUES ('83', 'http://www.emoonbow.com/applicationMarket-upload/app/LOOIS/15398413295022.png', '27', null, null, null, '2018-10-18 13:42:10', null);
INSERT INTO `t_app_image` VALUES ('84', 'http://www.emoonbow.com/applicationMarket-upload/app/LOOIS/15398413295023.png', '27', null, null, null, '2018-10-18 13:42:10', null);
INSERT INTO `t_app_image` VALUES ('85', 'http://www.emoonbow.com/applicationMarket-upload/app/LOOIS/15398413295024.png', '27', null, null, null, '2018-10-18 13:42:10', null);
INSERT INTO `t_app_image` VALUES ('86', 'http://www.emoonbow.com/applicationMarket-upload/app/SZ.COM/15398416783851.jpg', '28', null, null, null, '2018-10-18 13:47:58', null);
INSERT INTO `t_app_image` VALUES ('87', 'http://www.emoonbow.com/applicationMarket-upload/app/SZ.COM/15398416783852.jpg', '28', null, null, null, '2018-10-18 13:47:58', null);
INSERT INTO `t_app_image` VALUES ('88', 'http://www.emoonbow.com/applicationMarket-upload/app/SZ.COM/15398416783863 - 副本.jpg', '28', null, null, null, '2018-10-18 13:47:58', null);
INSERT INTO `t_app_image` VALUES ('89', 'http://www.emoonbow.com/applicationMarket-upload/app/SZ.COM/15398416783863.jpg', '28', null, null, null, '2018-10-18 13:47:58', null);
INSERT INTO `t_app_image` VALUES ('90', 'http://www.emoonbow.com/applicationMarket-upload/app/ThinkBit Pro/15398419110771.png', '29', null, null, null, '2018-10-18 13:51:51', null);
INSERT INTO `t_app_image` VALUES ('91', 'http://www.emoonbow.com/applicationMarket-upload/app/ThinkBit Pro/15398419110772.png', '29', null, null, null, '2018-10-18 13:51:51', null);
INSERT INTO `t_app_image` VALUES ('92', 'http://www.emoonbow.com/applicationMarket-upload/app/ThinkBit Pro/15398419110783.png', '29', null, null, null, '2018-10-18 13:51:51', null);
INSERT INTO `t_app_image` VALUES ('93', 'http://www.emoonbow.com/applicationMarket-upload/app/ThinkBit Pro/15398419110784.png', '29', null, null, null, '2018-10-18 13:51:51', null);
INSERT INTO `t_app_image` VALUES ('94', 'http://www.emoonbow.com/applicationMarket-upload/app/ThinkBit Pro/15398419110785.png', '29', null, null, null, '2018-10-18 13:51:51', null);
INSERT INTO `t_app_image` VALUES ('95', 'http://www.emoonbow.com/applicationMarket-upload/app/manbiwang/15398421073031.png', '30', null, null, null, '2018-10-18 13:55:07', null);
INSERT INTO `t_app_image` VALUES ('96', 'http://www.emoonbow.com/applicationMarket-upload/app/manbiwang/15398421073042.png', '30', null, null, null, '2018-10-18 13:55:07', null);
INSERT INTO `t_app_image` VALUES ('97', 'http://www.emoonbow.com/applicationMarket-upload/app/manbiwang/15398421073053 - 副本.png', '30', null, null, null, '2018-10-18 13:55:07', null);
INSERT INTO `t_app_image` VALUES ('98', 'http://www.emoonbow.com/applicationMarket-upload/app/manbiwang/15398421073063.png', '30', null, null, null, '2018-10-18 13:55:07', null);
INSERT INTO `t_app_image` VALUES ('99', 'http://www.emoonbow.com/applicationMarket-upload/app/biguanjiabgj.io/15398423543791.png', '31', null, null, null, '2018-10-18 13:59:14', null);
INSERT INTO `t_app_image` VALUES ('100', 'http://www.emoonbow.com/applicationMarket-upload/app/biguanjiabgj.io/15398423543802.png', '31', null, null, null, '2018-10-18 13:59:14', null);
INSERT INTO `t_app_image` VALUES ('101', 'http://www.emoonbow.com/applicationMarket-upload/app/biguanjiabgj.io/15398423543803.png', '31', null, null, null, '2018-10-18 13:59:14', null);
INSERT INTO `t_app_image` VALUES ('102', 'http://www.emoonbow.com/applicationMarket-upload/app/biguanjiabgj.io/15398423543804.png', '31', null, null, null, '2018-10-18 13:59:14', null);
INSERT INTO `t_app_image` VALUES ('103', 'http://www.emoonbow.com/applicationMarket-upload/app/biguanjiabgj.io/15398423543815.png', '31', null, null, null, '2018-10-18 13:59:14', null);
INSERT INTO `t_app_image` VALUES ('104', 'http://www.emoonbow.com/applicationMarket-upload/app/Bi.top/15398425147741.jpg', '32', null, null, null, '2018-10-18 14:01:55', null);
INSERT INTO `t_app_image` VALUES ('105', 'http://www.emoonbow.com/applicationMarket-upload/app/Bi.top/15398425147742.jpg', '32', null, null, null, '2018-10-18 14:01:55', null);
INSERT INTO `t_app_image` VALUES ('106', 'http://www.emoonbow.com/applicationMarket-upload/app/Bi.top/15398425147743 - 副本.jpg', '32', null, null, null, '2018-10-18 14:01:55', null);
INSERT INTO `t_app_image` VALUES ('107', 'http://www.emoonbow.com/applicationMarket-upload/app/Bi.top/15398425147753.jpg', '32', null, null, null, '2018-10-18 14:01:55', null);
INSERT INTO `t_app_image` VALUES ('108', 'http://www.emoonbow.com/applicationMarket-upload/app/bike/15398427291201.jpg', '33', null, null, null, '2018-10-18 14:05:29', null);
INSERT INTO `t_app_image` VALUES ('109', 'http://www.emoonbow.com/applicationMarket-upload/app/bike/15398427291202.jpg', '33', null, null, null, '2018-10-18 14:05:29', null);
INSERT INTO `t_app_image` VALUES ('110', 'http://www.emoonbow.com/applicationMarket-upload/app/bike/15398427291213 - 副本.jpg', '33', null, null, null, '2018-10-18 14:05:29', null);
INSERT INTO `t_app_image` VALUES ('111', 'http://www.emoonbow.com/applicationMarket-upload/app/bike/15398427291213.jpg', '33', null, null, null, '2018-10-18 14:05:29', null);
INSERT INTO `t_app_image` VALUES ('112', 'http://www.emoonbow.com/applicationMarket-upload/app/CHAOEX/15398429039741.jpg', '34', null, null, null, '2018-10-18 14:08:24', null);
INSERT INTO `t_app_image` VALUES ('113', 'http://www.emoonbow.com/applicationMarket-upload/app/CHAOEX/15398429039742.jpg', '34', null, null, null, '2018-10-18 14:08:24', null);
INSERT INTO `t_app_image` VALUES ('114', 'http://www.emoonbow.com/applicationMarket-upload/app/CHAOEX/15398429039753.jpg', '34', null, null, null, '2018-10-18 14:08:24', null);
INSERT INTO `t_app_image` VALUES ('115', 'http://www.emoonbow.com/applicationMarket-upload/app/CHAOEX/15398429039754.jpg', '34', null, null, null, '2018-10-18 14:08:24', null);
INSERT INTO `t_app_image` VALUES ('116', 'http://www.emoonbow.com/applicationMarket-upload/app/bibao/15398430897141.png', '35', null, null, null, '2018-10-18 14:11:30', null);
INSERT INTO `t_app_image` VALUES ('117', 'http://www.emoonbow.com/applicationMarket-upload/app/bibao/15398430897142.png', '35', null, null, null, '2018-10-18 14:11:30', null);
INSERT INTO `t_app_image` VALUES ('118', 'http://www.emoonbow.com/applicationMarket-upload/app/bibao/15398430897153.png', '35', null, null, null, '2018-10-18 14:11:30', null);
INSERT INTO `t_app_image` VALUES ('119', 'http://www.emoonbow.com/applicationMarket-upload/app/bibao/15398430897154.png', '35', null, null, null, '2018-10-18 14:11:30', null);
INSERT INTO `t_app_image` VALUES ('120', 'http://www.emoonbow.com/applicationMarket-upload/app/EtherFlyer/15398432550171.png', '36', null, null, null, '2018-10-18 14:14:15', null);
INSERT INTO `t_app_image` VALUES ('121', 'http://www.emoonbow.com/applicationMarket-upload/app/EtherFlyer/15398432550182.jpg', '36', null, null, null, '2018-10-18 14:14:15', null);
INSERT INTO `t_app_image` VALUES ('122', 'http://www.emoonbow.com/applicationMarket-upload/app/EtherFlyer/15398432550183.jpg', '36', null, null, null, '2018-10-18 14:14:15', null);
INSERT INTO `t_app_image` VALUES ('123', 'http://www.emoonbow.com/applicationMarket-upload/app/EtherFlyer/15398432550184.jpg', '36', null, null, null, '2018-10-18 14:14:15', null);
INSERT INTO `t_app_image` VALUES ('124', 'http://www.emoonbow.com/applicationMarket-upload/app/CoinEx/15398434533891.jpg', '37', null, null, null, '2018-10-18 14:17:33', null);
INSERT INTO `t_app_image` VALUES ('125', 'http://www.emoonbow.com/applicationMarket-upload/app/CoinEx/15398434533892.png', '37', null, null, null, '2018-10-18 14:17:33', null);
INSERT INTO `t_app_image` VALUES ('126', 'http://www.emoonbow.com/applicationMarket-upload/app/CoinEx/15398434533903.png', '37', null, null, null, '2018-10-18 14:17:33', null);
INSERT INTO `t_app_image` VALUES ('127', 'http://www.emoonbow.com/applicationMarket-upload/app/CoinEx/15398434533904.png', '37', null, null, null, '2018-10-18 14:17:33', null);
INSERT INTO `t_app_image` VALUES ('128', 'http://www.emoonbow.com/applicationMarket-upload/app/CoinEx/15398434533915.png', '37', null, null, null, '2018-10-18 14:17:33', null);
INSERT INTO `t_app_image` VALUES ('129', 'http://www.emoonbow.com/applicationMarket-upload/app/cds/15398436317441.png', '38', null, null, null, '2018-10-18 14:20:32', null);
INSERT INTO `t_app_image` VALUES ('130', 'http://www.emoonbow.com/applicationMarket-upload/app/cds/15398436317452.png', '38', null, null, null, '2018-10-18 14:20:32', null);
INSERT INTO `t_app_image` VALUES ('131', 'http://www.emoonbow.com/applicationMarket-upload/app/cds/15398436317463.png', '38', null, null, null, '2018-10-18 14:20:32', null);
INSERT INTO `t_app_image` VALUES ('132', 'http://www.emoonbow.com/applicationMarket-upload/app/cds/15398436317484.png', '38', null, null, null, '2018-10-18 14:20:32', null);
INSERT INTO `t_app_image` VALUES ('133', 'http://www.emoonbow.com/applicationMarket-upload/app/LinkCoin/15398437431241.png', '39', null, null, null, '2018-10-18 14:22:23', null);
INSERT INTO `t_app_image` VALUES ('134', 'http://www.emoonbow.com/applicationMarket-upload/app/LinkCoin/15398437431242.png', '39', null, null, null, '2018-10-18 14:22:23', null);
INSERT INTO `t_app_image` VALUES ('135', 'http://www.emoonbow.com/applicationMarket-upload/app/LinkCoin/15398437431263.png', '39', null, null, null, '2018-10-18 14:22:23', null);
INSERT INTO `t_app_image` VALUES ('136', 'http://www.emoonbow.com/applicationMarket-upload/app/LinkCoin/15398437431264.png', '39', null, null, null, '2018-10-18 14:22:23', null);
INSERT INTO `t_app_image` VALUES ('137', 'http://www.emoonbow.com/applicationMarket-upload/app/cds/15398438827461.png', '40', null, null, null, '2018-10-18 14:24:43', null);
INSERT INTO `t_app_image` VALUES ('138', 'http://www.emoonbow.com/applicationMarket-upload/app/cds/15398438827482.png', '40', null, null, null, '2018-10-18 14:24:43', null);
INSERT INTO `t_app_image` VALUES ('139', 'http://www.emoonbow.com/applicationMarket-upload/app/cds/15398438827513.png', '40', null, null, null, '2018-10-18 14:24:43', null);
INSERT INTO `t_app_image` VALUES ('140', 'http://www.emoonbow.com/applicationMarket-upload/app/cds/15398438827544.png', '40', null, null, null, '2018-10-18 14:24:43', null);
INSERT INTO `t_app_image` VALUES ('141', 'http://www.emoonbow.com/applicationMarket-upload/app/ALLCoin/15398451286331.jpg', '41', null, null, null, '2018-10-18 14:45:29', null);
INSERT INTO `t_app_image` VALUES ('142', 'http://www.emoonbow.com/applicationMarket-upload/app/ALLCoin/15398451286332.jpg', '41', null, null, null, '2018-10-18 14:45:29', null);
INSERT INTO `t_app_image` VALUES ('143', 'http://www.emoonbow.com/applicationMarket-upload/app/ALLCoin/15398451286343 - 副本.jpg', '41', null, null, null, '2018-10-18 14:45:29', null);
INSERT INTO `t_app_image` VALUES ('144', 'http://www.emoonbow.com/applicationMarket-upload/app/ALLCoin/15398451286343.jpg', '41', null, null, null, '2018-10-18 14:45:29', null);
INSERT INTO `t_app_image` VALUES ('145', 'http://www.emoonbow.com/applicationMarket-upload/app/MGCEx.NZ/15398454092691.png', '42', null, null, null, '2018-10-18 14:50:09', null);
INSERT INTO `t_app_image` VALUES ('146', 'http://www.emoonbow.com/applicationMarket-upload/app/MGCEx.NZ/15398454092702.png', '42', null, null, null, '2018-10-18 14:50:09', null);
INSERT INTO `t_app_image` VALUES ('147', 'http://www.emoonbow.com/applicationMarket-upload/app/MGCEx.NZ/15398454092703.png', '42', null, null, null, '2018-10-18 14:50:09', null);
INSERT INTO `t_app_image` VALUES ('148', 'http://www.emoonbow.com/applicationMarket-upload/app/MGCEx.NZ/15398454092714.png', '42', null, null, null, '2018-10-18 14:50:09', null);
INSERT INTO `t_app_image` VALUES ('149', 'http://www.emoonbow.com/applicationMarket-upload/app/BitPortal/15398457087841.jpg', '43', null, null, null, '2018-10-18 14:55:09', null);
INSERT INTO `t_app_image` VALUES ('150', 'http://www.emoonbow.com/applicationMarket-upload/app/BitPortal/15398457087842.jpg', '43', null, null, null, '2018-10-18 14:55:09', null);
INSERT INTO `t_app_image` VALUES ('151', 'http://www.emoonbow.com/applicationMarket-upload/app/BitPortal/15398457087853.jpg', '43', null, null, null, '2018-10-18 14:55:09', null);
INSERT INTO `t_app_image` VALUES ('152', 'http://www.emoonbow.com/applicationMarket-upload/app/BitPortal/15398457087854.jpg', '43', null, null, null, '2018-10-18 14:55:09', null);
INSERT INTO `t_app_image` VALUES ('153', 'http://www.emoonbow.com/applicationMarket-upload/app/BitPortal/15398457087855.jpg', '43', null, null, null, '2018-10-18 14:55:09', null);
INSERT INTO `t_app_image` VALUES ('154', 'http://www.emoonbow.com/applicationMarket-upload/app/imToken/15398459460221.jpg', '44', null, null, null, '2018-10-18 14:59:06', null);
INSERT INTO `t_app_image` VALUES ('155', 'http://www.emoonbow.com/applicationMarket-upload/app/imToken/15398459460232.jpg', '44', null, null, null, '2018-10-18 14:59:06', null);
INSERT INTO `t_app_image` VALUES ('156', 'http://www.emoonbow.com/applicationMarket-upload/app/imToken/15398459460233.jpg', '44', null, null, null, '2018-10-18 14:59:06', null);
INSERT INTO `t_app_image` VALUES ('157', 'http://www.emoonbow.com/applicationMarket-upload/app/imToken/15398459460244.jpg', '44', null, null, null, '2018-10-18 14:59:06', null);
INSERT INTO `t_app_image` VALUES ('158', 'http://www.emoonbow.com/applicationMarket-upload/app/bitepai/15398461983311.jpg', '45', null, null, null, '2018-10-18 15:03:18', null);
INSERT INTO `t_app_image` VALUES ('159', 'http://www.emoonbow.com/applicationMarket-upload/app/bitepai/15398461983312.jpg', '45', null, null, null, '2018-10-18 15:03:18', null);
INSERT INTO `t_app_image` VALUES ('160', 'http://www.emoonbow.com/applicationMarket-upload/app/bitepai/15398461983313.jpg', '45', null, null, null, '2018-10-18 15:03:18', null);
INSERT INTO `t_app_image` VALUES ('161', 'http://www.emoonbow.com/applicationMarket-upload/app/bitepai/15398461983324.jpg', '45', null, null, null, '2018-10-18 15:03:18', null);
INSERT INTO `t_app_image` VALUES ('162', 'http://www.emoonbow.com/applicationMarket-upload/app/bitepai/15398461983325.jpg', '45', null, null, null, '2018-10-18 15:03:18', null);
INSERT INTO `t_app_image` VALUES ('163', 'http://www.emoonbow.com/applicationMarket-upload/app/TokenPocket/15398463929101.png', '46', null, null, null, '2018-10-18 15:06:33', null);
INSERT INTO `t_app_image` VALUES ('164', 'http://www.emoonbow.com/applicationMarket-upload/app/TokenPocket/15398463929102.png', '46', null, null, null, '2018-10-18 15:06:33', null);
INSERT INTO `t_app_image` VALUES ('165', 'http://www.emoonbow.com/applicationMarket-upload/app/TokenPocket/15398463929103.png', '46', null, null, null, '2018-10-18 15:06:33', null);
INSERT INTO `t_app_image` VALUES ('166', 'http://www.emoonbow.com/applicationMarket-upload/app/TokenPocket/15398463929104.png', '46', null, null, null, '2018-10-18 15:06:33', null);
INSERT INTO `t_app_image` VALUES ('167', 'http://www.emoonbow.com/applicationMarket-upload/app/Kcash/15398465765491.png', '47', null, null, null, '2018-10-18 15:09:37', null);
INSERT INTO `t_app_image` VALUES ('168', 'http://www.emoonbow.com/applicationMarket-upload/app/Kcash/15398465765492.png', '47', null, null, null, '2018-10-18 15:09:37', null);
INSERT INTO `t_app_image` VALUES ('169', 'http://www.emoonbow.com/applicationMarket-upload/app/Kcash/15398465765503.png', '47', null, null, null, '2018-10-18 15:09:37', null);
INSERT INTO `t_app_image` VALUES ('170', 'http://www.emoonbow.com/applicationMarket-upload/app/Kcash/15398465765504.png', '47', null, null, null, '2018-10-18 15:09:37', null);
INSERT INTO `t_app_image` VALUES ('171', 'http://www.emoonbow.com/applicationMarket-upload/app/Kcash/15398465765515.png', '47', null, null, null, '2018-10-18 15:09:37', null);
INSERT INTO `t_app_image` VALUES ('172', 'http://www.emoonbow.com/applicationMarket-upload/app/Bpalqianbao/15398469270541.png', '48', null, null, null, '2018-10-18 15:15:27', null);
INSERT INTO `t_app_image` VALUES ('173', 'http://www.emoonbow.com/applicationMarket-upload/app/Bpalqianbao/15398469270552.png', '48', null, null, null, '2018-10-18 15:15:27', null);
INSERT INTO `t_app_image` VALUES ('174', 'http://www.emoonbow.com/applicationMarket-upload/app/Bpalqianbao/15398469270553.png', '48', null, null, null, '2018-10-18 15:15:27', null);
INSERT INTO `t_app_image` VALUES ('175', 'http://www.emoonbow.com/applicationMarket-upload/app/Bpalqianbao/15398469270554.png', '48', null, null, null, '2018-10-18 15:15:27', null);
INSERT INTO `t_app_image` VALUES ('176', 'http://www.emoonbow.com/applicationMarket-upload/app/Bpalqianbao/15398469270565.png', '48', null, null, null, '2018-10-18 15:15:27', null);
INSERT INTO `t_app_image` VALUES ('177', 'http://www.emoonbow.com/applicationMarket-upload/app/WeCreditqianbao/15398472431221.jpg', '49', null, null, null, '2018-10-18 15:20:43', null);
INSERT INTO `t_app_image` VALUES ('178', 'http://www.emoonbow.com/applicationMarket-upload/app/WeCreditqianbao/15398472431222.jpg', '49', null, null, null, '2018-10-18 15:20:43', null);
INSERT INTO `t_app_image` VALUES ('179', 'http://www.emoonbow.com/applicationMarket-upload/app/WeCreditqianbao/15398472431233.jpg', '49', null, null, null, '2018-10-18 15:20:43', null);
INSERT INTO `t_app_image` VALUES ('180', 'http://www.emoonbow.com/applicationMarket-upload/app/WeCreditqianbao/15398472431234.jpg', '49', null, null, null, '2018-10-18 15:20:43', null);
INSERT INTO `t_app_image` VALUES ('181', 'http://www.emoonbow.com/applicationMarket-upload/app/WeCreditqianbao/15398472431235.jpg', '49', null, null, null, '2018-10-18 15:20:43', null);
INSERT INTO `t_app_image` VALUES ('182', 'http://www.emoonbow.com/applicationMarket-upload/app/TrustNote/15398474248671.jpg', '50', null, null, null, '2018-10-18 15:23:45', null);
INSERT INTO `t_app_image` VALUES ('183', 'http://www.emoonbow.com/applicationMarket-upload/app/TrustNote/15398474248672.jpg', '50', null, null, null, '2018-10-18 15:23:45', null);
INSERT INTO `t_app_image` VALUES ('184', 'http://www.emoonbow.com/applicationMarket-upload/app/TrustNote/15398474248673.jpg', '50', null, null, null, '2018-10-18 15:23:45', null);
INSERT INTO `t_app_image` VALUES ('185', 'http://www.emoonbow.com/applicationMarket-upload/app/TrustNote/15398474248674.jpg', '50', null, null, null, '2018-10-18 15:23:45', null);
INSERT INTO `t_app_image` VALUES ('186', 'http://www.emoonbow.com/applicationMarket-upload/app/Cobo/15398476949841.jpg', '51', null, null, null, '2018-10-18 15:28:15', null);
INSERT INTO `t_app_image` VALUES ('187', 'http://www.emoonbow.com/applicationMarket-upload/app/Cobo/15398476949842.jpg', '51', null, null, null, '2018-10-18 15:28:15', null);
INSERT INTO `t_app_image` VALUES ('188', 'http://www.emoonbow.com/applicationMarket-upload/app/Cobo/15398476949843.jpg', '51', null, null, null, '2018-10-18 15:28:15', null);
INSERT INTO `t_app_image` VALUES ('189', 'http://www.emoonbow.com/applicationMarket-upload/app/Cobo/15398476949854.jpg', '51', null, null, null, '2018-10-18 15:28:15', null);
INSERT INTO `t_app_image` VALUES ('190', 'http://www.emoonbow.com/applicationMarket-upload/app/Cobo/15398476949855.jpg', '51', null, null, null, '2018-10-18 15:28:15', null);
INSERT INTO `t_app_image` VALUES ('191', 'http://www.emoonbow.com/applicationMarket-upload/app/SerWallet/15398478499631.png', '52', null, null, null, '2018-10-18 15:30:50', null);
INSERT INTO `t_app_image` VALUES ('192', 'http://www.emoonbow.com/applicationMarket-upload/app/SerWallet/15398478499632.png', '52', null, null, null, '2018-10-18 15:30:50', null);
INSERT INTO `t_app_image` VALUES ('193', 'http://www.emoonbow.com/applicationMarket-upload/app/SerWallet/15398478499643.png', '52', null, null, null, '2018-10-18 15:30:50', null);
INSERT INTO `t_app_image` VALUES ('194', 'http://www.emoonbow.com/applicationMarket-upload/app/SerWallet/15398478499664.png', '52', null, null, null, '2018-10-18 15:30:50', null);
INSERT INTO `t_app_image` VALUES ('195', 'http://www.emoonbow.com/applicationMarket-upload/app/SEAqianbao/15398479932591.jpg', '53', null, null, null, '2018-10-18 15:33:13', null);
INSERT INTO `t_app_image` VALUES ('196', 'http://www.emoonbow.com/applicationMarket-upload/app/SEAqianbao/15398479932602.jpg', '53', null, null, null, '2018-10-18 15:33:13', null);
INSERT INTO `t_app_image` VALUES ('197', 'http://www.emoonbow.com/applicationMarket-upload/app/SEAqianbao/15398479932603.jpg', '53', null, null, null, '2018-10-18 15:33:13', null);
INSERT INTO `t_app_image` VALUES ('198', 'http://www.emoonbow.com/applicationMarket-upload/app/SEAqianbao/15398479932604.jpg', '53', null, null, null, '2018-10-18 15:33:13', null);
INSERT INTO `t_app_image` VALUES ('199', 'http://www.emoonbow.com/applicationMarket-upload/app/moerqianbao/15398495160151.png', '54', null, null, null, '2018-10-18 15:58:36', null);
INSERT INTO `t_app_image` VALUES ('200', 'http://www.emoonbow.com/applicationMarket-upload/app/moerqianbao/15398495160172.png', '54', null, null, null, '2018-10-18 15:58:36', null);
INSERT INTO `t_app_image` VALUES ('201', 'http://www.emoonbow.com/applicationMarket-upload/app/moerqianbao/15398495160173.png', '54', null, null, null, '2018-10-18 15:58:36', null);
INSERT INTO `t_app_image` VALUES ('202', 'http://www.emoonbow.com/applicationMarket-upload/app/moerqianbao/15398495160184.png', '54', null, null, null, '2018-10-18 15:58:36', null);
INSERT INTO `t_app_image` VALUES ('203', 'http://www.emoonbow.com/applicationMarket-upload/app/HaloWallet/15398498467111.png', '55', null, null, null, '2018-10-18 16:04:07', null);
INSERT INTO `t_app_image` VALUES ('204', 'http://www.emoonbow.com/applicationMarket-upload/app/HaloWallet/15398498467112.png', '55', null, null, null, '2018-10-18 16:04:07', null);
INSERT INTO `t_app_image` VALUES ('205', 'http://www.emoonbow.com/applicationMarket-upload/app/HaloWallet/15398498467113.png', '55', null, null, null, '2018-10-18 16:04:07', null);
INSERT INTO `t_app_image` VALUES ('206', 'http://www.emoonbow.com/applicationMarket-upload/app/HaloWallet/15398498467124.png', '55', null, null, null, '2018-10-18 16:04:07', null);
INSERT INTO `t_app_image` VALUES ('207', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641 - 副本.jpg', '56', null, null, null, '2018-10-18 16:07:13', null);
INSERT INTO `t_app_image` VALUES ('208', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '56', null, null, null, '2018-10-18 16:07:13', null);
INSERT INTO `t_app_image` VALUES ('209', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '56', null, null, null, '2018-10-18 16:07:13', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('210', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '56', null, null, null, '2018-10-18 16:07:13', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('211', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '57', null, null, null, '2018-10-18 16:09:44', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('212', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '57', null, null, null, '2018-10-18 16:09:44', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('213', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '57', null, null, null, '2018-10-18 16:09:44', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('214', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '57', null, null, null, '2018-10-18 16:09:44', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('215', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '58', null, null, null, '2018-10-18 16:12:42', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('216', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '58', null, null, null, '2018-10-18 16:12:42', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('217', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '58', null, null, null, '2018-10-18 16:12:42', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('218', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '58', null, null, null, '2018-10-18 16:12:42', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('219', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '59', null, null, null, '2018-10-18 16:16:44', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('220', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '59', null, null, null, '2018-10-18 16:16:44', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('221', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '59', null, null, null, '2018-10-18 16:16:44', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('222', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '59', null, null, null, '2018-10-18 16:16:44', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('223', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '60', null, null, null, '2018-10-18 16:20:01', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('224', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '60', null, null, null, '2018-10-18 16:20:01', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('225', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '60', null, null, null, '2018-10-18 16:20:01', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('226', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '60', null, null, null, '2018-10-18 16:20:01', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('227', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '61', null, null, null, '2018-10-18 17:13:33', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('228', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '61', null, null, null, '2018-10-18 17:13:33', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('229', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '61', null, null, null, '2018-10-18 17:13:33', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('230', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '61', null, null, null, '2018-10-18 17:13:33', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('231', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '62', null, null, null, '2018-10-18 17:15:47', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('232', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '62', null, null, null, '2018-10-18 17:15:48', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('233', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '62', null, null, null, '2018-10-18 17:15:48', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('234', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '62', null, null, null, '2018-10-18 17:15:48', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('235', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '63', null, null, null, '2018-10-19 12:01:25', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('236', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '63', null, null, null, '2018-10-19 12:01:25', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('237', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '63', null, null, null, '2018-10-19 12:01:25', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('238', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '63', null, null, null, '2018-10-19 12:01:25', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('239', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '64', null, null, null, '2018-10-19 13:47:04', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('240', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '64', null, null, null, '2018-10-19 13:47:09', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('241', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '64', null, null, null, '2018-10-19 13:47:12', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('242', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '64', null, null, null, '2018-10-19 13:47:14', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('243', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '65', null, null, null, '2018-10-19 13:48:54', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('244', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '65', null, null, null, '2018-10-19 13:48:54', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('245', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '65', null, null, null, '2018-10-19 13:48:54', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('246', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '65', null, null, null, '2018-10-19 13:48:54', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('247', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '66', null, null, null, '2018-10-19 13:51:54', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('248', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '66', null, null, null, '2018-10-19 13:51:54', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('249', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '66', null, null, null, '2018-10-19 13:51:54', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('250', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '66', null, null, null, '2018-10-19 13:51:54', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('251', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '67', null, null, null, '2018-10-19 13:57:20', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('252', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '67', null, null, null, '2018-10-19 13:57:20', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('253', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '67', null, null, null, '2018-10-19 13:57:20', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('254', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '67', null, null, null, '2018-10-19 13:57:20', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('255', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '68', null, null, null, '2018-10-19 14:17:23', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('256', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '68', null, null, null, '2018-10-19 14:17:23', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('257', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '68', null, null, null, '2018-10-19 14:17:23', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('258', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '68', null, null, null, '2018-10-19 14:17:23', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('259', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '69', null, null, null, '2018-10-19 14:20:01', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('260', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '69', null, null, null, '2018-10-19 14:20:01', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('261', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '69', null, null, null, '2018-10-19 14:20:01', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('262', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '69', null, null, null, '2018-10-19 14:20:01', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('263', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '69', null, null, null, '2018-10-19 14:20:01', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('264', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '70', null, null, null, '2018-10-19 14:22:44', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('265', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '70', null, null, null, '2018-10-19 14:22:44', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('266', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '70', null, null, null, '2018-10-19 14:22:44', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('267', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '70', null, null, null, '2018-10-19 14:22:44', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('268', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '71', null, null, null, '2018-10-19 14:25:29', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('269', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '71', null, null, null, '2018-10-19 14:25:29', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('270', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '71', null, null, null, '2018-10-19 14:25:29', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('271', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '71', null, null, null, '2018-10-19 14:25:29', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('272', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '71', null, null, null, '2018-10-19 14:25:29', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('273', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '72', null, null, null, '2018-10-19 14:28:10', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('274', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '72', null, null, null, '2018-10-19 14:28:10', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('275', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '72', null, null, null, '2018-10-19 14:28:10', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('276', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '72', null, null, null, '2018-10-19 14:28:10', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('277', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '73', null, null, null, '2018-10-19 14:30:04', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('278', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '73', null, null, null, '2018-10-19 14:30:04', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('279', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '73', null, null, null, '2018-10-19 14:30:04', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('280', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '73', null, null, null, '2018-10-19 14:30:04', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('281', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '73', null, null, null, '2018-10-19 14:30:04', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('282', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '74', null, null, null, '2018-10-19 14:32:28', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('283', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '74', null, null, null, '2018-10-19 14:32:28', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('284', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '74', null, null, null, '2018-10-19 14:32:28', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('285', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '74', null, null, null, '2018-10-19 14:32:28', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('286', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '75', null, null, null, '2018-10-19 14:35:05', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('287', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '75', null, null, null, '2018-10-19 14:35:05', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('288', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '75', null, null, null, '2018-10-19 14:35:05', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('289', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '75', null, null, null, '2018-10-19 14:35:05', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('290', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '76', null, null, null, '2018-10-19 15:26:39', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('291', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '76', null, null, null, '2018-10-19 15:26:39', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('292', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '76', null, null, null, '2018-10-19 15:26:39', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('293', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '76', null, null, null, '2018-10-19 15:26:39', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('294', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '77', null, null, null, '2018-10-19 15:28:29', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('295', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '77', null, null, null, '2018-10-19 15:28:29', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('296', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '77', null, null, null, '2018-10-19 15:28:29', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('297', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '77', null, null, null, '2018-10-19 15:28:29', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('298', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '78', null, null, null, '2018-10-19 15:30:30', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('299', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '78', null, null, null, '2018-10-19 15:30:30', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('300', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '78', null, null, null, '2018-10-19 15:30:30', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('301', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/15398500325641.jpg', '78', null, null, null, '2018-10-19 15:30:30', '2018-10-20 17:15:55');
INSERT INTO `t_app_image` VALUES ('302', 'http://www.emoonbow.com/applicationMarket-upload/app/MyToken/15432133064681.png', '79', null, null, null, '2018-11-26 14:21:46', null);
INSERT INTO `t_app_image` VALUES ('303', 'http://www.emoonbow.com/applicationMarket-upload/app/MyToken/15432133064692.png', '79', null, null, null, '2018-11-26 14:21:46', null);
INSERT INTO `t_app_image` VALUES ('304', 'http://www.emoonbow.com/applicationMarket-upload/app/MyToken/15432133064703.png', '79', null, null, null, '2018-11-26 14:21:46', null);
INSERT INTO `t_app_image` VALUES ('305', 'http://www.emoonbow.com/applicationMarket-upload/app/MyToken/15432133064704.png', '79', null, null, null, '2018-11-26 14:21:46', null);
INSERT INTO `t_app_image` VALUES ('306', 'http://www.emoonbow.com/applicationMarket-upload/app/feixiaohao/15432142796091.png', '80', null, null, null, '2018-11-26 14:38:00', null);
INSERT INTO `t_app_image` VALUES ('307', 'http://www.emoonbow.com/applicationMarket-upload/app/feixiaohao/15432142796092.png', '80', null, null, null, '2018-11-26 14:38:00', null);
INSERT INTO `t_app_image` VALUES ('308', 'http://www.emoonbow.com/applicationMarket-upload/app/feixiaohao/15432142796103.png', '80', null, null, null, '2018-11-26 14:38:00', null);
INSERT INTO `t_app_image` VALUES ('309', 'http://www.emoonbow.com/applicationMarket-upload/app/feixiaohao/15432142796104.png', '80', null, null, null, '2018-11-26 14:38:00', null);
INSERT INTO `t_app_image` VALUES ('310', 'http://www.emoonbow.com/applicationMarket-upload/app/bifa/15432145820961.jpg', '81', null, null, null, '2018-11-26 14:43:02', null);
INSERT INTO `t_app_image` VALUES ('311', 'http://www.emoonbow.com/applicationMarket-upload/app/bifa/15432145820962.jpg', '81', null, null, null, '2018-11-26 14:43:02', null);
INSERT INTO `t_app_image` VALUES ('312', 'http://www.emoonbow.com/applicationMarket-upload/app/bifa/15432145820963.jpg', '81', null, null, null, '2018-11-26 14:43:02', null);
INSERT INTO `t_app_image` VALUES ('313', 'http://www.emoonbow.com/applicationMarket-upload/app/bifa/15432145820974.jpg', '81', null, null, null, '2018-11-26 14:43:02', null);
INSERT INTO `t_app_image` VALUES ('314', 'http://www.emoonbow.com/applicationMarket-upload/app/bidong/15432148051951.png', '82', null, null, null, '2018-11-26 14:46:45', null);
INSERT INTO `t_app_image` VALUES ('315', 'http://www.emoonbow.com/applicationMarket-upload/app/bidong/15432148051962.png', '82', null, null, null, '2018-11-26 14:46:45', null);
INSERT INTO `t_app_image` VALUES ('316', 'http://www.emoonbow.com/applicationMarket-upload/app/bidong/15432148051963.jpg', '82', null, null, null, '2018-11-26 14:46:45', null);
INSERT INTO `t_app_image` VALUES ('317', 'http://www.emoonbow.com/applicationMarket-upload/app/bidong/15432148051964.jpg', '82', null, null, null, '2018-11-26 14:46:45', null);
INSERT INTO `t_app_image` VALUES ('318', 'http://www.emoonbow.com/applicationMarket-upload/app/bidong/15432148051965.jpg', '82', null, null, null, '2018-11-26 14:46:45', null);
INSERT INTO `t_app_image` VALUES ('319', 'http://www.emoonbow.com/applicationMarket-upload/app/Quintar/15432151116381.jpg', '83', null, null, null, '2018-11-26 14:51:52', null);
INSERT INTO `t_app_image` VALUES ('320', 'http://www.emoonbow.com/applicationMarket-upload/app/Quintar/15432151116382.jpg', '83', null, null, null, '2018-11-26 14:51:52', null);
INSERT INTO `t_app_image` VALUES ('321', 'http://www.emoonbow.com/applicationMarket-upload/app/Quintar/15432151116393.jpg', '83', null, null, null, '2018-11-26 14:51:52', null);
INSERT INTO `t_app_image` VALUES ('322', 'http://www.emoonbow.com/applicationMarket-upload/app/Quintar/15432151116394.png', '83', null, null, null, '2018-11-26 14:51:52', null);
INSERT INTO `t_app_image` VALUES ('323', 'http://www.emoonbow.com/applicationMarket-upload/app/BlockCC/15432155741691.png', '84', null, null, null, '2018-11-26 14:59:34', null);
INSERT INTO `t_app_image` VALUES ('324', 'http://www.emoonbow.com/applicationMarket-upload/app/BlockCC/15432155741702.png', '84', null, null, null, '2018-11-26 14:59:34', null);
INSERT INTO `t_app_image` VALUES ('325', 'http://www.emoonbow.com/applicationMarket-upload/app/BlockCC/15432155741703.png', '84', null, null, null, '2018-11-26 14:59:34', null);
INSERT INTO `t_app_image` VALUES ('326', 'http://www.emoonbow.com/applicationMarket-upload/app/BlockCC/15432155741704.png', '84', null, null, null, '2018-11-26 14:59:34', null);
INSERT INTO `t_app_image` VALUES ('327', 'http://www.emoonbow.com/applicationMarket-upload/app/BlockCC/15432155741705.png', '84', null, null, null, '2018-11-26 14:59:34', null);
INSERT INTO `t_app_image` VALUES ('328', 'http://www.emoonbow.com/applicationMarket-upload/app/biguan/15432158648151.png', '85', null, null, null, '2018-11-26 15:04:25', null);
INSERT INTO `t_app_image` VALUES ('329', 'http://www.emoonbow.com/applicationMarket-upload/app/biguan/15432158648182.png', '85', null, null, null, '2018-11-26 15:04:25', null);
INSERT INTO `t_app_image` VALUES ('330', 'http://www.emoonbow.com/applicationMarket-upload/app/biguan/15432158648203.png', '85', null, null, null, '2018-11-26 15:04:25', null);
INSERT INTO `t_app_image` VALUES ('331', 'http://www.emoonbow.com/applicationMarket-upload/app/biguan/15432158648224.png', '85', null, null, null, '2018-11-26 15:04:25', null);
INSERT INTO `t_app_image` VALUES ('332', 'http://www.emoonbow.com/applicationMarket-upload/app/beishuqukuailian/15432161117391.jpg', '86', null, null, null, '2018-11-26 15:08:32', null);
INSERT INTO `t_app_image` VALUES ('333', 'http://www.emoonbow.com/applicationMarket-upload/app/beishuqukuailian/15432161117392.jpg', '86', null, null, null, '2018-11-26 15:08:32', null);
INSERT INTO `t_app_image` VALUES ('334', 'http://www.emoonbow.com/applicationMarket-upload/app/beishuqukuailian/15432161117393.jpg', '86', null, null, null, '2018-11-26 15:08:32', null);
INSERT INTO `t_app_image` VALUES ('335', 'http://www.emoonbow.com/applicationMarket-upload/app/beishuqukuailian/15432161117404.jpg', '86', null, null, null, '2018-11-26 15:08:32', null);
INSERT INTO `t_app_image` VALUES ('336', 'http://www.emoonbow.com/applicationMarket-upload/app/beishuqukuailian/15432161117405.jpg', '86', null, null, null, '2018-11-26 15:08:32', null);
INSERT INTO `t_app_image` VALUES ('337', 'http://www.emoonbow.com/applicationMarket-upload/app/BitUniverse/15432165812811.jpg', '87', null, null, null, '2018-11-26 15:16:21', null);
INSERT INTO `t_app_image` VALUES ('338', 'http://www.emoonbow.com/applicationMarket-upload/app/BitUniverse/15432165812812.jpg', '87', null, null, null, '2018-11-26 15:16:21', null);
INSERT INTO `t_app_image` VALUES ('339', 'http://www.emoonbow.com/applicationMarket-upload/app/BitUniverse/15432165812813.jpg', '87', null, null, null, '2018-11-26 15:16:21', null);
INSERT INTO `t_app_image` VALUES ('340', 'http://www.emoonbow.com/applicationMarket-upload/app/BitUniverse/15432165812814.jpg', '87', null, null, null, '2018-11-26 15:16:21', null);
INSERT INTO `t_app_image` VALUES ('341', 'http://www.emoonbow.com/applicationMarket-upload/app/lianzhuli/15432167443281.jpg', '88', null, null, null, '2018-11-26 15:19:04', null);
INSERT INTO `t_app_image` VALUES ('342', 'http://www.emoonbow.com/applicationMarket-upload/app/lianzhuli/15432167443292.jpg', '88', null, null, null, '2018-11-26 15:19:04', null);
INSERT INTO `t_app_image` VALUES ('343', 'http://www.emoonbow.com/applicationMarket-upload/app/lianzhuli/15432167443293.jpg', '88', null, null, null, '2018-11-26 15:19:04', null);
INSERT INTO `t_app_image` VALUES ('344', 'http://www.emoonbow.com/applicationMarket-upload/app/lianzhuli/15432167443304.jpg', '88', null, null, null, '2018-11-26 15:19:04', null);
INSERT INTO `t_app_image` VALUES ('345', 'http://www.emoonbow.com/applicationMarket-upload/app/youling/15432174622661.png', '89', null, null, null, '2018-11-26 15:31:02', null);
INSERT INTO `t_app_image` VALUES ('346', 'http://www.emoonbow.com/applicationMarket-upload/app/youling/15432174622662.png', '89', null, null, null, '2018-11-26 15:31:02', null);
INSERT INTO `t_app_image` VALUES ('347', 'http://www.emoonbow.com/applicationMarket-upload/app/youling/15432174622673.png', '89', null, null, null, '2018-11-26 15:31:02', null);
INSERT INTO `t_app_image` VALUES ('348', 'http://www.emoonbow.com/applicationMarket-upload/app/youling/15432174622674.png', '89', null, null, null, '2018-11-26 15:31:02', null);
INSERT INTO `t_app_image` VALUES ('349', 'http://www.emoonbow.com/applicationMarket-upload/app/youling/15432174622675.png', '89', null, null, null, '2018-11-26 15:31:02', null);
INSERT INTO `t_app_image` VALUES ('350', 'http://www.emoonbow.com/applicationMarket-upload/app/bicoin/15432177200541.png', '90', null, null, null, '2018-11-26 15:35:20', null);
INSERT INTO `t_app_image` VALUES ('351', 'http://www.emoonbow.com/applicationMarket-upload/app/bicoin/15432177200552.png', '90', null, null, null, '2018-11-26 15:35:20', null);
INSERT INTO `t_app_image` VALUES ('352', 'http://www.emoonbow.com/applicationMarket-upload/app/bicoin/15432177200553.png', '90', null, null, null, '2018-11-26 15:35:20', null);
INSERT INTO `t_app_image` VALUES ('353', 'http://www.emoonbow.com/applicationMarket-upload/app/bicoin/15432177200554.png', '90', null, null, null, '2018-11-26 15:35:20', null);
INSERT INTO `t_app_image` VALUES ('354', 'http://www.emoonbow.com/applicationMarket-upload/app/bicoin/15432177200555.png', '90', null, null, null, '2018-11-26 15:35:20', null);
INSERT INTO `t_app_image` VALUES ('355', 'http://www.emoonbow.com/applicationMarket-upload/app/biyong/15432217570411.jpg', '91', null, null, null, '2018-11-26 16:42:37', null);
INSERT INTO `t_app_image` VALUES ('356', 'http://www.emoonbow.com/applicationMarket-upload/app/biyong/15432217570412.jpg', '91', null, null, null, '2018-11-26 16:42:37', null);
INSERT INTO `t_app_image` VALUES ('357', 'http://www.emoonbow.com/applicationMarket-upload/app/biyong/15432217570413 - 副本.jpg', '91', null, null, null, '2018-11-26 16:42:37', null);
INSERT INTO `t_app_image` VALUES ('358', 'http://www.emoonbow.com/applicationMarket-upload/app/biyong/15432217570423.jpg', '91', null, null, null, '2018-11-26 16:42:37', null);
INSERT INTO `t_app_image` VALUES ('359', 'http://www.emoonbow.com/applicationMarket-upload/app/cdacda/1545794158172timg1.jpg', '92', null, null, null, '2018-12-26 11:15:58', null);
INSERT INTO `t_app_image` VALUES ('360', 'http://www.emoonbow.com/applicationMarket-upload/app/cdacda/1545794158173yesu.jpg', '92', null, null, null, '2018-12-26 11:15:58', null);
INSERT INTO `t_app_image` VALUES ('361', 'http://www.emoonbow.com/applicationMarket-upload/app/cdacda/1545794158173yesu1.jpg', '92', null, null, null, '2018-12-26 11:15:58', null);
INSERT INTO `t_app_image` VALUES ('362', 'http://www.emoonbow.com/applicationMarket-upload/app/cdacda/1545794158173yesu2.jpg', '92', null, null, null, '2018-12-26 11:15:58', null);
INSERT INTO `t_app_image` VALUES ('363', 'http://admin.dpstore.pro/applicationMarket-upload/app/huobi/15458254630141.jpg', '93', null, null, null, '2018-12-26 11:57:43', null);
INSERT INTO `t_app_image` VALUES ('364', 'http://admin.dpstore.pro/applicationMarket-upload/app/huobi/15458254630142.jpg', '93', null, null, null, '2018-12-26 11:57:43', null);
INSERT INTO `t_app_image` VALUES ('365', 'http://admin.dpstore.pro/applicationMarket-upload/app/huobi/15458254630153.jpg', '93', null, null, null, '2018-12-26 11:57:43', null);
INSERT INTO `t_app_image` VALUES ('366', 'http://admin.dpstore.pro/applicationMarket-upload/app/huobi/15458254630154.jpg', '93', null, null, null, '2018-12-26 11:57:43', null);
INSERT INTO `t_app_image` VALUES ('367', 'http://www.emoonbow.com/applicationMarket-upload/app/vfsvf/154606176681114.jpg', '94', null, null, null, '2018-12-29 13:36:07', null);
INSERT INTO `t_app_image` VALUES ('368', 'http://www.emoonbow.com/applicationMarket-upload/app/vfsvf/15460617668131428044_231250831000_2.png', '94', null, null, null, '2018-12-29 13:36:07', null);
INSERT INTO `t_app_image` VALUES ('369', 'http://www.emoonbow.com/applicationMarket-upload/app/vfsvf/15460617668160016097865216831_b.jpg', '94', null, null, null, '2018-12-29 13:36:07', null);
INSERT INTO `t_app_image` VALUES ('370', 'http://www.emoonbow.com/applicationMarket-upload/app/vfsvf/1546061766817yesu1.jpg', '94', null, null, null, '2018-12-29 13:36:07', null);
INSERT INTO `t_app_image` VALUES ('371', 'http://www.emoonbow.com/applicationMarket-upload/app/vfsvf/1546061766817微信图片_20181108172040.jpg', '94', null, null, null, '2018-12-29 13:36:07', null);

-- ----------------------------
-- Table structure for t_app_recommend_type
-- ----------------------------
DROP TABLE IF EXISTS `t_app_recommend_type`;
CREATE TABLE `t_app_recommend_type` (
  `recommend_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL COMMENT '推荐的类别名称',
  `count` int(11) DEFAULT '0' COMMENT '数量',
  `sort` int(5) DEFAULT NULL,
  `top` int(1) DEFAULT NULL,
  `top_time` datetime DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  `activated` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`recommend_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_app_recommend_type
-- ----------------------------
INSERT INTO `t_app_recommend_type` VALUES ('4', '游戏', '1', '3', null, null, null, null, '2018-09-03 14:32:15', '2018-10-19 14:17:17');
INSERT INTO `t_app_recommend_type` VALUES ('5', '必备应用', '0', '2', null, null, null, null, '2018-09-03 14:33:52', '2018-09-04 18:37:02');
INSERT INTO `t_app_recommend_type` VALUES ('6', 'Dapp', '8', '1', null, null, null, null, '2018-10-18 16:55:43', '2018-10-19 14:17:15');

-- ----------------------------
-- Table structure for t_app_report
-- ----------------------------
DROP TABLE IF EXISTS `t_app_report`;
CREATE TABLE `t_app_report` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(600) DEFAULT NULL COMMENT '举报描述',
  `report_reason_id` varchar(50) DEFAULT NULL COMMENT '举报原因的Id,逗号分割',
  `deleted` int(1) DEFAULT NULL,
  `activated` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_app_report
-- ----------------------------
INSERT INTO `t_app_report` VALUES ('1', '222', '1', null, null, '2018-11-05 14:34:43', null);
INSERT INTO `t_app_report` VALUES ('2', '1', '1', null, null, '2018-11-10 10:50:42', null);
INSERT INTO `t_app_report` VALUES ('3', 'test', '1,2', null, null, '2018-11-10 13:43:31', null);
INSERT INTO `t_app_report` VALUES ('4', 'test', '1/2', null, null, '2018-11-10 13:43:42', null);
INSERT INTO `t_app_report` VALUES ('5', '1221', '1', null, null, '2018-11-10 17:16:35', null);
INSERT INTO `t_app_report` VALUES ('6', '123123test', '(\n    1,\n    2\n)', null, null, '2018-11-10 17:31:26', null);
INSERT INTO `t_app_report` VALUES ('7', 'Test', '(\n    2\n)', null, null, '2018-11-10 17:31:58', null);
INSERT INTO `t_app_report` VALUES ('8', 'Test', '(\n    1\n)', null, null, '2018-11-10 17:32:29', null);
INSERT INTO `t_app_report` VALUES ('9', 'To', '(\n    1,\n    2\n)', null, null, '2018-11-10 17:33:16', null);
INSERT INTO `t_app_report` VALUES ('10', 'To', '(\n    1,\n    2\n)', null, null, '2018-11-10 17:33:33', null);
INSERT INTO `t_app_report` VALUES ('11', '32323', '(\n)', null, null, '2018-11-12 09:40:02', null);
INSERT INTO `t_app_report` VALUES ('12', '垃圾', '1,2', null, null, '2018-11-23 16:12:35', null);
INSERT INTO `t_app_report` VALUES ('15', '垃圾', '1,2', null, null, '2018-11-23 16:14:50', null);
INSERT INTO `t_app_report` VALUES ('16', '垃圾', '1,2', null, null, '2018-11-23 16:15:19', null);
INSERT INTO `t_app_report` VALUES ('19', '垃圾', '1', null, null, '2018-11-23 16:24:15', null);
INSERT INTO `t_app_report` VALUES ('22', '1?', '1', null, null, '2018-11-23 16:26:56', null);
INSERT INTO `t_app_report` VALUES ('23', '??', '1', null, null, '2018-11-23 17:50:27', null);
INSERT INTO `t_app_report` VALUES ('24', '??', '4', null, null, '2018-11-23 17:51:31', null);

-- ----------------------------
-- Table structure for t_app_report_image
-- ----------------------------
DROP TABLE IF EXISTS `t_app_report_image`;
CREATE TABLE `t_app_report_image` (
  `report_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_url` varchar(600) DEFAULT NULL,
  `report_id` int(11) DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  `activated` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`report_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_app_report_image
-- ----------------------------
INSERT INTO `t_app_report_image` VALUES ('1', 'http://www.emoonbow.com/applicationMarket-upload/report-image/154296075497014.jpg', '12', null, null, '2018-11-23 16:12:35', null);
INSERT INTO `t_app_report_image` VALUES ('2', 'http://www.emoonbow.com/applicationMarket-upload/report-image/154296088975514.jpg', '15', null, null, '2018-11-23 16:14:50', null);
INSERT INTO `t_app_report_image` VALUES ('3', 'http://www.emoonbow.com/applicationMarket-upload/report-image/154296091884614.jpg', '16', null, null, '2018-11-23 16:15:19', null);
INSERT INTO `t_app_report_image` VALUES ('4', 'http://www.emoonbow.com/applicationMarket-upload/report-image/1542960918847timg.jpg', '16', null, null, '2018-11-23 16:15:19', null);
INSERT INTO `t_app_report_image` VALUES ('5', 'http://www.emoonbow.com/applicationMarket-upload/report-image/154296145535014.jpg', '19', null, null, '2018-11-23 16:24:15', null);
INSERT INTO `t_app_report_image` VALUES ('6', 'http://www.emoonbow.com/applicationMarket-upload/report-image/1542961455352timg.jpg', '19', null, null, '2018-11-23 16:24:15', null);
INSERT INTO `t_app_report_image` VALUES ('7', 'http://www.emoonbow.com/applicationMarket-upload/report-image/1542961616273magazine-unlock-01-2.3.1173-_E597D2C369CE2A9EA06B2E30323DCE47.jpg', '22', null, null, '2018-11-23 16:26:56', null);
INSERT INTO `t_app_report_image` VALUES ('8', 'http://www.emoonbow.com/applicationMarket-upload/report-image/154296662669103.png', '23', null, null, '2018-11-23 17:50:27', null);
INSERT INTO `t_app_report_image` VALUES ('9', 'http://www.emoonbow.com/applicationMarket-upload/report-image/154296669054015.png', '24', null, null, '2018-11-23 17:51:31', null);
INSERT INTO `t_app_report_image` VALUES ('10', 'http://www.emoonbow.com/applicationMarket-upload/report-image/154296669054004.png', '24', null, null, '2018-11-23 17:51:31', null);
INSERT INTO `t_app_report_image` VALUES ('11', 'http://www.emoonbow.com/applicationMarket-upload/report-image/154296669054003.png', '24', null, null, '2018-11-23 17:51:31', null);

-- ----------------------------
-- Table structure for t_app_report_reason
-- ----------------------------
DROP TABLE IF EXISTS `t_app_report_reason`;
CREATE TABLE `t_app_report_reason` (
  `report_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  `activated` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`report_reason_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_app_report_reason
-- ----------------------------
INSERT INTO `t_app_report_reason` VALUES ('1', '软件太垃圾了', null, null, null, '2018-08-30 17:07:18');
INSERT INTO `t_app_report_reason` VALUES ('2', '软件太垃圾了', null, null, null, '2018-08-30 17:07:33');
INSERT INTO `t_app_report_reason` VALUES ('3', '软件太垃圾了', null, null, null, null);
INSERT INTO `t_app_report_reason` VALUES ('4', '软件太垃圾了', null, null, null, null);

-- ----------------------------
-- Table structure for t_app_type
-- ----------------------------
DROP TABLE IF EXISTS `t_app_type`;
CREATE TABLE `t_app_type` (
  `app_type_id` int(2) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(128) DEFAULT NULL COMMENT '分类的名称',
  `app_count` int(11) DEFAULT '0' COMMENT '该分类下的app数量',
  `logo` varchar(255) DEFAULT NULL COMMENT '图标的链接',
  `small_icon` varchar(255) DEFAULT NULL COMMENT '小图标',
  `is_hot` int(1) DEFAULT '0' COMMENT '是否是热门分类 1 是 0 否',
  `top` int(11) DEFAULT NULL COMMENT '置顶',
  `top_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `font` varchar(60) DEFAULT NULL COMMENT '字体',
  `color` varchar(60) DEFAULT NULL COMMENT '颜色',
  `deleted` int(1) DEFAULT '1',
  `activated` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`app_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_app_type
-- ----------------------------
INSERT INTO `t_app_type` VALUES ('1', '钱包', '31', 'http://www.emoonbow.com/applicationMarket-upload/appType/qianbao.png', 'http://www.emoonbow.com/applicationMarket-upload/appType/qianbao_1.png', '1', null, '2018-11-07 11:26:26', '24px', '#FFB3E324', null, null, null, '2018-11-07 11:26:26');
INSERT INTO `t_app_type` VALUES ('2', '交易所', '20', 'http://www.emoonbow.com/applicationMarket-upload/appType/jiaoyisuo.png', 'http://www.emoonbow.com/applicationMarket-upload/appType/jiaoyi_1.png', '1', null, '2018-11-07 11:19:36', '24px', '#FFE9476E', null, null, null, '2018-11-07 11:19:36');
INSERT INTO `t_app_type` VALUES ('3', '行情', '24', 'http://www.emoonbow.com/applicationMarket-upload/appType/hangqing.png', 'http://www.emoonbow.com/applicationMarket-upload/appType/hangqing_1.png', '0', null, '2018-11-07 11:17:25', '24px', '#FFD22A71', null, null, null, '2018-11-07 11:17:25');
INSERT INTO `t_app_type` VALUES ('4', '工具', '2', 'http://www.emoonbow.com/applicationMarket-upload/appType/gongju.png', 'http://www.emoonbow.com/applicationMarket-upload/appType/gongju_1.png', '0', null, '2018-11-07 11:16:29', '24px', '#FFF1A14D', null, null, null, '2018-11-07 11:16:29');
INSERT INTO `t_app_type` VALUES ('5', '资讯', '0', 'http://www.emoonbow.com/applicationMarket-upload/appType/zhixun.png', 'http://www.emoonbow.com/applicationMarket-upload/appType/zixun_1.png', '1', null, '2018-11-07 11:30:22', '24px', '#FF67DAE8', null, null, null, '2018-11-07 11:30:22');
INSERT INTO `t_app_type` VALUES ('6', '社交', '0', 'http://www.emoonbow.com/applicationMarket-upload/appType/shejiao.png', 'http://www.emoonbow.com/applicationMarket-upload/appType/shenjiao_1.png', '0', null, '2018-11-15 10:13:05', '24px', '#FF29CB66', null, null, null, '2018-11-15 10:13:05');
INSERT INTO `t_app_type` VALUES ('7', '游戏', '1', 'http://www.emoonbow.com/applicationMarket-upload/appType/youxi.png', 'http://www.emoonbow.com/applicationMarket-upload/appType/youxi_1.png', '1', null, '2018-11-07 11:28:29', '24px', '#FF8A56FD', null, null, null, '2018-11-07 11:28:29');
INSERT INTO `t_app_type` VALUES ('8', 'dapp', '4', 'http://www.emoonbow.com/applicationMarket-upload/appType/Dapp.png', 'http://www.emoonbow.com/applicationMarket-upload/appType/Dapp_1.png', '0', null, '2018-11-07 11:15:05', '24px', '#FFF56025', null, null, null, '2018-11-07 11:15:05');
INSERT INTO `t_app_type` VALUES ('9', '其他', '3', 'http://www.emoonbow.com/applicationMarket-upload/appType/qianbao.png', 'http://www.emoonbow.com/applicationMarket-upload/appType/qita_1.png', '0', null, '2018-11-07 11:20:30', '24px', '#FF5595F4', '1', null, null, '2018-11-07 11:20:30');

-- ----------------------------
-- Table structure for t_app_version
-- ----------------------------
DROP TABLE IF EXISTS `t_app_version`;
CREATE TABLE `t_app_version` (
  `app_version_id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(225) DEFAULT NULL COMMENT '安装包的logo',
  `app_id` int(11) DEFAULT NULL COMMENT '应用的Id',
  `package_name` varchar(30) DEFAULT NULL COMMENT '包名',
  `version_name` varchar(30) DEFAULT NULL COMMENT '版本名称',
  `version_number` varchar(10) DEFAULT NULL COMMENT '版本号',
  `version_features` varchar(600) DEFAULT NULL COMMENT '版本特性，使用中文分号隔离',
  `support_sys` varchar(50) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL COMMENT '安装包的大小',
  `is_history_version` int(1) DEFAULT '0' COMMENT '是否是历史版本  1 是 0 不是',
  `introduction` varchar(5000) DEFAULT NULL COMMENT '当前版本介绍',
  `download_url` varchar(255) DEFAULT NULL COMMENT '下载地址',
  `deleted` int(1) DEFAULT NULL,
  `activated` int(1) DEFAULT '2' COMMENT '审核状态 1 失败 2 未审核  3 审核通过',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`app_version_id`),
  KEY `index_package_name` (`package_name`),
  KEY `index_is_history_version` (`is_history_version`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_app_version
-- ----------------------------
INSERT INTO `t_app_version` VALUES ('1', 'https://tse3-mm.cn.bing.net/th?q=%e6%9d%af%e5%ad%90%e5%9b%be%e6%a0%87&w=120&h=120&c=1&rs=1&qlt=90&pid=InlineBlock&mkt=zh-CN&adlt=strict&t=1&mw=247', '4', '猪八戒.apk', 'cdcdscsdc', 'v1.0', null, 'cdacda', '10M', '0', 'cdacdas', 'http://www.emoonbow.com/applicationMarket-upload/app/1535357559259chen.jpg', null, '3', '2018-08-27 16:12:39', '2018-10-15 09:50:51');
INSERT INTO `t_app_version` VALUES ('2', 'https://tse3-mm.cn.bing.net/th?q=%e6%9d%af%e5%ad%90%e5%9b%be%e6%a0%87&w=120&h=120&c=1&rs=1&qlt=90&pid=InlineBlock&mkt=zh-CN&adlt=strict&t=1&mw=247', '3', '滴滴单车', '滴滴', 'v2.0', '第一条；第二条；第三条', '安卓', '123M', '0', '这是一款软件；\r\n必须使用微信；\r\n手机定位功能；\r\n微信支付功能', 'http://www.emoonbow.com/applicationMarket-upload/app/15353582201901533698707125 - 副本.jpg', null, '3', '2018-08-27 16:23:40', '2018-10-08 17:06:31');
INSERT INTO `t_app_version` VALUES ('3', 'https://tse3-mm.cn.bing.net/th?q=%e6%9d%af%e5%ad%90%e5%9b%be%e6%a0%87&w=120&h=120&c=1&rs=1&qlt=90&pid=InlineBlock&mkt=zh-CN&adlt=strict&t=1&mw=247', '4', '滴滴单车', '滴滴', 'v1.0', '读取短信；\r\n读取相册。', '安卓', '123M', '1', '这是一款软件；\r\n必须使用微信；\r\n手机定位功能；\r\n微信支付功能', 'http://www.emoonbow.com/applicationMarket-upload/app/15353582201901533698707125 - 副本.jpg', null, '3', '2018-08-27 16:23:40', '2018-10-18 14:04:28');
INSERT INTO `t_app_version` VALUES ('5', 'http://www.emoonbow.com/applicationMarket-upload/app/猪八戒/1.jpg', '5', 'app.apk', '更新版本', '1.123', '第一条；第二条', null, '13M', '0', '这是版本介绍', null, null, '3', '2018-09-25 15:31:25', '2018-10-09 15:53:10');
INSERT INTO `t_app_version` VALUES ('6', 'http://www.emoonbow.com/applicationMarket-upload/logo/15387240969311533695573666 - 副本.png', '2', '1533698707125.jpg', '滴滴', 'v1.2', '读取短信；\r\n读取相册。', 'IOS', '13M', '0', '当前版本介绍', 'app/null/15387240969241533698707125.jpg', null, '2', '2018-10-05 15:21:37', '2018-12-04 17:10:53');
INSERT INTO `t_app_version` VALUES ('7', 'http://www.emoonbow.com/applicationMarket-upload/app/猪八戒/1539420259799马蹄莲.png', '8', '马蹄莲.png', '猪八戒', 'v1.2', '读取短信；\r\n读取相册。', 'Andrio', '13M', '1', 'CADa', 'app/猪八戒/1539420259760马蹄莲.png', null, '3', '2018-10-13 16:44:20', '2018-12-04 17:10:57');
INSERT INTO `t_app_version` VALUES ('8', 'http://www.emoonbow.com/applicationMarket-upload/logo/1539421322525马蹄莲.png', '8', '马蹄莲.png', '猪八戒', 'v1.5', '读取短信；\r\n读取相册。', null, '13M', '0', '差点', 'app/猪八戒/马蹄莲.png', null, '2', '2018-10-13 17:02:03', '2018-12-04 17:11:16');
INSERT INTO `t_app_version` VALUES ('9', 'http://www.emoonbow.com/applicationMarket-upload/app/滴滴单车/1539422156089马蹄莲.png', '9', '马蹄莲.png', '吃的撒', 'v1.5', '读取短信；\r\n读取相册。', '差', '13M', '0', '差', 'app/滴滴单车/1539422156082马蹄莲.png', null, '3', '2018-10-13 17:15:56', '2018-12-04 17:11:20');
INSERT INTO `t_app_version` VALUES ('10', 'http://www.emoonbow.com/applicationMarket-upload/app/滴滴单车/1539422217860马蹄莲.png', '10', '黄菊花.png', '传达室', 'v1.5', '读取短信；\r\n读取相册。', '差', '30M', '0', '发地方大', 'app/滴滴单车/1539422217855黄菊花.png', null, '3', '2018-10-13 17:16:58', '2018-12-04 17:11:27');
INSERT INTO `t_app_version` VALUES ('11', 'http://www.emoonbow.com/applicationMarket-upload/app/猪八戒/1.jpg', '11', 'app.apk', '版本名称', '1.123', '版本特性', null, '130M', '0', '这是版本介绍', null, null, '3', '2018-10-17 15:28:45', null);
INSERT INTO `t_app_version` VALUES ('12', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜单车/1539763730657微信图片_20180824142317.png', '12', '微信图片_20180824142317.png', '1.2', '1.2', '读取短信；\r\n读取相册。', '安卓', '20M', '0', '版本接受', 'app/摩拜单车/微信图片_20180824142317.png', null, '3', '2018-10-17 16:08:51', '2018-12-04 17:11:31');
INSERT INTO `t_app_version` VALUES ('13', 'http://www.emoonbow.com/applicationMarket-upload/app/猪八戒/1.jpg', '13', 'app.apk', 'V1.123', 'V1.123', '当前的版本特性', null, '130M', '0', '这是版本介绍', 'http://www.emoonbow.com/applicationMarket-upload/app/猪八戒/app.apk', null, '3', '2018-10-17 16:22:26', null);
INSERT INTO `t_app_version` VALUES ('14', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜单车/1539765043993微信图片_20180824142317.png', '14', '微信图片_20180824142317.png', '1.2', '1.2', '读取短信；\r\n读取相册。', '差', '21M', '0', '据诶时候啊', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜单车/微信图片_20180824142317.png', null, '3', '2018-10-17 16:30:44', '2018-12-04 17:11:36');
INSERT INTO `t_app_version` VALUES ('15', 'http://www.emoonbow.com/applicationMarket-upload/app/日本幽灵疾步/15397663006281533695573666 - 副本.png', '15', '1533697015274.jpg', 'V1.2', 'V1.2', '读取短信；\r\n读取相册。', 'Android4.5', '21M', '0', '直接填写应用版本的介绍', 'http://www.emoonbow.com/applicationMarket-upload/app/日本幽灵疾步/1533697015274.jpg', null, '3', '2018-10-17 16:51:41', '2018-12-04 17:11:37');
INSERT INTO `t_app_version` VALUES ('16', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜/15397671410971533695573666.png', '16', '1533698707125 - 副本.jpg', '102', '23', '读取短信；\r\n读取相册。', '差', '21M', '0', '差', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜/1533698707125 - 副本.jpg', null, '3', '2018-10-17 17:05:41', '2018-12-04 17:11:38');
INSERT INTO `t_app_version` VALUES ('17', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜/15397672468921533695573666.png', '17', '1533698707125 - 副本.jpg', '102', '23', '读取短信；\r\n读取相册。', '差', '21M', '0', '差', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜/1533698707125 - 副本.jpg', null, '3', '2018-10-17 17:07:27', '2018-12-04 17:11:38');
INSERT INTO `t_app_version` VALUES ('18', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜/15397672676711533695573666.png', '18', '1533698707125 - 副本.jpg', '102', '23', '读取短信；\r\n读取相册。', '差', '21M', '0', '差', 'http://www.emoonbow.com/applicationMarket-upload/app/摩拜/1533698707125 - 副本.jpg', null, '3', '2018-10-17 17:07:48', '2018-12-04 17:11:40');
INSERT INTO `t_app_version` VALUES ('21', 'http://www.emoonbow.com/applicationMarket-upload/app/huobi/1539828145942LOGO.png', '21', 'pro.huobi', '3.5.2', '3.5.2', '读取短信；\r\n读取相册。', 'Android4.2', '21M', '0', '定位：致力为全球用户提供专业、透明的数字资产一站式交易服务。\n    规模：全球100多个国家数百万用户，累计交易金额超过294亿美元。\n    稳定：全球大牛技术团队，分布式并行技术，高速撮合引擎。\n    专业：超过10年金融风控团队，支持API交易。', 'http://www.emoonbow.com/applicationMarket-upload/app/huobi/火币Pro-3.5.2.apk', null, '3', '2018-10-18 10:02:26', '2018-12-04 17:11:41');
INSERT INTO `t_app_version` VALUES ('22', 'http://www.emoonbow.com/applicationMarket-upload/app/huobi/1539828885948LOGO.png', '22', 'pro.huobi', 'V3.5.2', 'V3.5.2', '读取短信；\r\n读取相册。', 'Android 4.0', '25M', '0', '优化体验，修复bug', 'http://www.emoonbow.com/applicationMarket-upload/app/huobi/火币Pro-3.5.2.apk', null, '3', '2018-10-18 10:14:46', '2018-12-04 17:11:45');
INSERT INTO `t_app_version` VALUES ('23', 'http://www.emoonbow.com/applicationMarket-upload/app/bian/1539830034386LOGO.png', '23', 'com.binance.dev', 'V1.4.7.2', 'V1.4.7.2', '读取短信；\r\n读取相册。', 'Android', '25M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/bian/币安-1.4.7.2.apk', null, '3', '2018-10-18 10:33:54', '2018-12-04 17:11:58');
INSERT INTO `t_app_version` VALUES ('24', 'http://www.emoonbow.com/applicationMarket-upload/app/OKEx/1539832604570LOGO.jpg', '24', 'com.okinc.okex', 'V2.0.8', 'V2.0.8', '读取短信；\r\n读取相册。', 'Android', '25M', '0', '1、全球法币交易\r\n    使用法币交易数字资产平台担保、极速安全\r\n2、币币/杠杆交易\r\n    24小时交易100+种数字货币支持杠杆、放大收益\r\n3、合约交易\r\n    套期保值、防御风险保证金小资本撬动大收益\r\n4、ETT组合交易\r\n    指数追踪、智能调整组合成分 收益稳定、长线投资\r\n5、OK投行\r\n    为区块链创业团队和项目提供全方位保驾护航', 'http://www.emoonbow.com/applicationMarket-upload/app/OKEx/OKEx-2.0.8.apk', null, '3', '2018-10-18 11:16:45', '2018-12-04 17:11:59');
INSERT INTO `t_app_version` VALUES ('25', 'http://www.emoonbow.com/applicationMarket-upload/app/CoinTiger/1539833127683LOGO.png', '25', 'com.cointiger.exchange', 'V1.6.1', 'V1.6.1', '读取短信；\r\n读取相册。', 'Android', '25M', '0', 'CoinTiger 的平台币被称为 Tiger Cash，简称 TCH，它是 CoinTiger 基于以太坊ERC-20标准发⾏的数字货币交易所代币，于2017年11月正式上线。据其白皮书透露，总共发行10.5亿个TCH，之后，将通过回购并销毁的方式消耗大约4.5亿个TCH，最终总流通量会控制在6亿。', 'http://www.emoonbow.com/applicationMarket-upload/app/CoinTiger/CoinTiger-1.6.1.apk', null, '3', '2018-10-18 11:25:28', '2018-12-04 17:11:59');
INSERT INTO `t_app_version` VALUES ('26', 'http://www.emoonbow.com/applicationMarket-upload/app/huobiOTC/1539833665341LOGO.png', '26', 'com.huobi.otc', 'V1.2.9', 'V1.2.9', '读取短信；\r\n读取相册。', 'Android', '25M', '0', '定位：致力为全球用户提供专业、透明的数字资产一站式交易服务。\r\n规模：全球100多个国家数百万用户，累计交易金额超过294亿美元。\r\n稳定：全球大牛技术团队，分布式并行技术，高速撮合引擎。\r\n专业：超过10年金融风控团队，支持API交易', 'http://www.emoonbow.com/applicationMarket-upload/app/huobiOTC/火币OTC-1.2.9.apk', null, '3', '2018-10-18 11:34:25', '2018-12-04 17:12:00');
INSERT INTO `t_app_version` VALUES ('27', 'http://www.emoonbow.com/applicationMarket-upload/app/LOOIS/1539841329501LOGO.png', '27', 'com.hotlink.loois', 'V1.2.3', 'V1.2.3', '读取短信；\r\n读取相册。', 'Android', '25M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/LOOIS/Loois-1.2.3.apk', null, '3', '2018-10-18 13:42:10', '2018-12-04 17:12:00');
INSERT INTO `t_app_version` VALUES ('28', 'http://www.emoonbow.com/applicationMarket-upload/app/SZ.COM/1539841678385LOGO.jpg', '28', 'com.sz.exchange', 'V1.0.1', 'V1.0.1', null, 'Android', '25M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/SZ.COM/SZ.COM-1.0.1.apk', null, '3', '2018-10-18 13:47:58', '2018-12-04 17:12:01');
INSERT INTO `t_app_version` VALUES ('29', 'http://www.emoonbow.com/applicationMarket-upload/app/ThinkBit Pro/1539841911077LOGO.png', '29', 'com.imtb.tb', 'V2.2.1', 'V2.2.1', null, 'Android', '25M', '0', '100% 冷储存，保证你的数字资产安全；\r\n实时了解比特币、以太坊、柚子价格波动；\r\n在手机就可以完成身份认证操作；\r\n快速充提币；\r\n7 x 24 小时客服。', 'http://www.emoonbow.com/applicationMarket-upload/app/ThinkBit Pro/ThinkBit Pro-2.1.1.apk', null, '3', '2018-10-18 13:51:51', '2018-12-04 17:12:01');
INSERT INTO `t_app_version` VALUES ('30', 'http://www.emoonbow.com/applicationMarket-upload/app/manbiwang/1539842107302LOGO.png', '30', 'com.left.add', 'V1.0.0', 'V1.0.0', null, 'Android', '25M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/manbiwang/满币-1.0.apk', null, '3', '2018-10-18 13:55:07', '2018-12-04 17:12:02');
INSERT INTO `t_app_version` VALUES ('31', 'http://www.emoonbow.com/applicationMarket-upload/app/biguanjiabgj.io/1539842354379LOGO.jpg', '31', 'com.hicreat.coin', 'V1.0.3', 'V1.0.3', null, 'Android', '25M', '0', '修复bug', 'http://www.emoonbow.com/applicationMarket-upload/app/biguanjiabgj.io/币管家bgj.io-1.0.3.apk', null, '3', '2018-10-18 13:59:14', '2018-12-04 17:12:04');
INSERT INTO `t_app_version` VALUES ('32', 'http://www.emoonbow.com/applicationMarket-upload/app/Bi.top/1539842514774LOGO.jpg', '32', 'com.bi.top', 'V1.1.5', 'V1.1.5', null, 'Android', '25M', '0', '修复体验', 'http://www.emoonbow.com/applicationMarket-upload/app/Bi.top/Bi.top-1.1.5.apk', null, '3', '2018-10-18 14:01:55', '2018-12-04 17:12:06');
INSERT INTO `t_app_version` VALUES ('33', 'http://www.emoonbow.com/applicationMarket-upload/app/bike/1539842729120LOGO.jpg', '33', 'com.bitker.coin', 'V1.1.0', 'V1.1.0', null, 'Android', '25M', '0', '优化体验。', 'http://www.emoonbow.com/applicationMarket-upload/app/bike/币客-1.1.0.apk', null, '3', '2018-10-18 14:05:29', '2018-12-04 17:12:07');
INSERT INTO `t_app_version` VALUES ('34', 'http://www.emoonbow.com/applicationMarket-upload/app/CHAOEX/1539842903973LOGO.png', '34', 'com.chaoex.android', 'V5.5.5', 'V5.5.5', null, 'Android', '25M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/CHAOEX/CHAOEX-5.5.5.apk', null, '3', '2018-10-18 14:08:24', '2018-12-04 17:12:10');
INSERT INTO `t_app_version` VALUES ('35', 'http://www.emoonbow.com/applicationMarket-upload/app/bibao/1539843089713LOGO.png', '35', 'com.bibao8.bitcoin', 'V2.8.1', 'V2.8.1', null, 'Android', '25M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/bibao/币包-2.8.1.apk', null, '3', '2018-10-18 14:11:30', '2018-12-04 17:12:11');
INSERT INTO `t_app_version` VALUES ('36', 'http://www.emoonbow.com/applicationMarket-upload/app/EtherFlyer/1539843255017LOGO.png', '36', 'com.meetime.etherflyer', 'V1.0.5', 'V1.0.5', null, 'Android', '30M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/EtherFlyer/EtherFlyer-1.0.4.apk', null, '3', '2018-10-18 14:14:15', '2018-12-04 17:12:16');
INSERT INTO `t_app_version` VALUES ('37', 'http://www.emoonbow.com/applicationMarket-upload/app/CoinEx/1539843453389LOGO.png', '37', 'com.coinex.trade', 'V 1.1.6', 'V 1.1.6', null, 'Android', '30M', '0', '优化体验。', 'http://www.emoonbow.com/applicationMarket-upload/app/CoinEx/CoinEx-1.1.6.apk', null, '3', '2018-10-18 14:17:33', '2018-12-04 17:12:20');
INSERT INTO `t_app_version` VALUES ('38', 'http://www.emoonbow.com/applicationMarket-upload/app/cds/1539843631742LOGO.png', '38', '火币Pro-3.5.2.apk', '1.23.', '1.2', null, 'cdsc ds', '30M', '0', 'cds sd', 'http://www.emoonbow.com/applicationMarket-upload/app/cds/火币Pro-3.5.2.apk', null, '3', '2018-10-18 14:20:32', '2018-12-04 17:12:22');
INSERT INTO `t_app_version` VALUES ('39', 'http://www.emoonbow.com/applicationMarket-upload/app/LinkCoin/1539843743123LOGO.jpg', '39', 'pro.linkcoin.www.linkcoin', 'V1.1.4', 'V1.1.4', null, 'Android', '30M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/LinkCoin/LinkCoin-1.1.4.apk', null, '3', '2018-10-18 14:22:23', '2018-12-04 17:12:23');
INSERT INTO `t_app_version` VALUES ('40', 'http://www.emoonbow.com/applicationMarket-upload/app/cds/1539843882744LOGO.png', '40', '火币Pro-3.5.2.apk', '1.23.', '1.2', null, 'cdsc ds', '30M', '0', 'cds sd', 'http://www.emoonbow.com/applicationMarket-upload/app/cds/火币Pro-3.5.2.apk', null, '3', '2018-10-18 14:24:43', '2018-12-04 17:12:24');
INSERT INTO `t_app_version` VALUES ('41', 'http://www.emoonbow.com/applicationMarket-upload/app/ALLCoin/1539845128633LOGO.jpg', '41', 'com.yitaiyun.allcoin', 'V1.2.2', 'V1.2.2', null, 'Android', '30M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/ALLCoin/ALLCOIN-1.2.2.apk', null, '3', '2018-10-18 14:45:29', '2018-12-04 17:12:26');
INSERT INTO `t_app_version` VALUES ('42', 'http://www.emoonbow.com/applicationMarket-upload/app/MGCEx.NZ/1539845409269LOGO.png', '42', 'com.cnmgcoin.mgcex', 'V2.1.0', 'V2.1.0', null, 'Android', '33M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/MGCEx.NZ/MGCEX.NZ-2.1.0.apk', null, '3', '2018-10-18 14:50:09', '2018-12-04 17:12:31');
INSERT INTO `t_app_version` VALUES ('43', 'http://www.emoonbow.com/applicationMarket-upload/app/BitPortal/1539845708784LOGO.jpg', '43', 'com.bitportal', 'V0.1.4', 'V0.1.4', null, 'Android', '33M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/BitPortal/BitPortal-0.1.4.apk', null, '3', '2018-10-18 14:55:09', '2018-12-04 17:12:32');
INSERT INTO `t_app_version` VALUES ('44', 'http://www.emoonbow.com/applicationMarket-upload/app/imToken/1539845946022LOGO.png', '44', 'im.token.app', 'V2.0.4', 'V2.0.4', null, 'Android', '33M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/imToken/imToken-2.0.4.apk', null, '3', '2018-10-18 14:59:06', '2018-12-04 17:12:33');
INSERT INTO `t_app_version` VALUES ('45', 'http://www.emoonbow.com/applicationMarket-upload/app/bitepai/1539846198331LOGO.jpg', '45', 'com.bitpie', 'V3.5.3', 'V3.5.3', null, 'Android', '33M', '0', '【应用特色】\r\n* 多区块链资产钱包 — 便捷的收发数字资产，支持比特币、以太坊及 ERC20 全Token等 99% 的数字货币资产\r\n* HD（分层确定性钱包）架构 - BIP32/44\r\n* 通过 12 个单词轻松的完成备份和恢复操作 - BIP39\r\n* 拥有 PIN 码保护机制\r\n* 内置钱包内交易所 — 让您足不出户完成交易功能', 'http://www.emoonbow.com/applicationMarket-upload/app/bitepai/比特派-3.5.3.apk', null, '3', '2018-10-18 15:03:18', '2018-12-04 17:12:34');
INSERT INTO `t_app_version` VALUES ('46', 'http://www.emoonbow.com/applicationMarket-upload/app/TokenPocket/1539846392910LOGO.png', '46', 'vip.mytokenpocket', 'V0.4.6', 'V0.4.6', null, 'Android', '33M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/TokenPocket/TokenPocket-0.4.6.apk', null, '3', '2018-10-18 15:06:33', '2018-12-04 17:12:35');
INSERT INTO `t_app_version` VALUES ('47', 'http://www.emoonbow.com/applicationMarket-upload/app/Kcash/1539846576549LOGO.png', '47', 'com.kcashpro.wallet', 'V2.3.1', 'V2.3.1', null, 'Android', '33M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/Kcash/Kcash-2.3.1.apk', null, '3', '2018-10-18 15:09:37', '2018-12-04 17:12:35');
INSERT INTO `t_app_version` VALUES ('48', 'http://www.emoonbow.com/applicationMarket-upload/app/Bpalqianbao/1539846927054LOGO.png', '48', 'io.bpal.bpal', 'V1.3.1.0', 'V1.3.1.0', null, 'Android', '33M', '0', '【活动介绍】\r\n下载Bpal钱包，即可免费获得1万聪比特币；每邀请一名好友注册，也将获得1万-10万聪比特币。更丰富的活动等你参与哦。', 'http://www.emoonbow.com/applicationMarket-upload/app/Bpalqianbao/Bpal钱包-1.3.1.0.apk', null, '3', '2018-10-18 15:15:27', '2018-12-04 17:12:36');
INSERT INTO `t_app_version` VALUES ('49', 'http://www.emoonbow.com/applicationMarket-upload/app/WeCreditqianbao/1539847243122LOGO.jpg', '49', 'io.app.wecredit', 'V1.1.4', 'V1.1.4', null, 'Android', '33M', '0', '【产品特点】\r\n安全无虞，最高标准的安全技术保护您的钱包；\r\n私钥永不触网，保障您的每笔交易都是安全的。', 'http://www.emoonbow.com/applicationMarket-upload/app/WeCreditqianbao/WeCredit-1.1.4.apk', null, '3', '2018-10-18 15:20:43', '2018-12-04 17:12:37');
INSERT INTO `t_app_version` VALUES ('50', 'http://www.emoonbow.com/applicationMarket-upload/app/TrustNote/1539847424866LOGO.png', '50', 'org.trustnote.smartwallet', 'V1.2.2', 'V1.2.2', null, 'Android', '33M', '0', '优化体验。', 'http://www.emoonbow.com/applicationMarket-upload/app/TrustNote/TrustNote-1.2.2.apk', null, '3', '2018-10-18 15:23:45', '2018-12-04 17:12:39');
INSERT INTO `t_app_version` VALUES ('51', 'http://www.emoonbow.com/applicationMarket-upload/app/Cobo/1539847694984LOGO.png', '51', 'cobo.wallet', 'V2.7.0', 'V2.7.0', null, 'Android', '33M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/Cobo/Cobo Wallet-2.7.apk', null, '3', '2018-10-18 15:28:15', '2018-12-04 17:12:39');
INSERT INTO `t_app_version` VALUES ('52', 'http://www.emoonbow.com/applicationMarket-upload/app/SerWallet/1539847849963LOGO.png', '52', 'io.serc.wallet', 'V1.0.2', 'V1.0.2', null, 'Android', '33M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/SerWallet/ser wallet-1.0.2.apk', null, '3', '2018-10-18 15:30:50', '2018-12-04 17:12:40');
INSERT INTO `t_app_version` VALUES ('53', 'http://www.emoonbow.com/applicationMarket-upload/app/SEAqianbao/1539847993259LOGO.png', '53', 'one.sea.app', 'V1.3.1', 'V1.3.1', null, 'Android', '33M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/SEAqianbao/SEA-1.3.0.apk', null, '3', '2018-10-18 15:33:13', '2018-12-04 17:12:41');
INSERT INTO `t_app_version` VALUES ('54', 'http://www.emoonbow.com/applicationMarket-upload/app/moerqianbao/1539849516015LOGO.png', '54', 'com.asmile.android.wallet', 'V1.1.1', 'V1.1.1', null, 'Android', '0M', '0', '1、秒内到账、免交易手续费；\r\n2、手机挖矿-打开APP就可以挖矿；\r\n3、摩尔红包：人人红包、新人红包领不停。', 'http://www.emoonbow.com/applicationMarket-upload/app/moerqianbao/摩尔钱包-1.1.1.apk', null, '3', '2018-10-18 15:58:36', '2018-10-31 09:31:39');
INSERT INTO `t_app_version` VALUES ('55', 'http://www.emoonbow.com/applicationMarket-upload/app/HaloWallet/1539849846710LOGO.png', '55', 'com.mz.ecwallet', 'V3.0.1.882', 'V3.0.1.882', null, 'Android', '0M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/HaloWallet/HaloWallet-3.0.1.882.apk', null, '3', '2018-10-18 16:04:07', '2018-10-31 09:32:08');
INSERT INTO `t_app_version` VALUES ('56', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/1539850032564LOGO.png', '56', 'kualian.dc.deal.application', 'V1.4.2', 'V1.4.2', null, 'Android', '29M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/Antbit/AnyBit-1.5.0.apk', null, '3', '2018-10-18 16:07:13', '2018-12-04 17:13:22');
INSERT INTO `t_app_version` VALUES ('57', 'http://www.emoonbow.com/applicationMarket-upload/app/guguqianbao/1539850183855LOGO.png', '57', 'com.icowtteam.icowallet', 'V1.5.18', 'V1.5.18', null, 'Android', '29M', '0', '充值\r\n也就是将法币换成数字货币，比特股上1BITCNY等于1RMB，BITCNY可以在数字货币交易所使用，目前支持BITCNY的交易所有BigONE和aex，所谓充值也就是用法币去兑换BITCNY', 'http://www.emoonbow.com/applicationMarket-upload/app/guguqianbao/鼓鼓钱包-1.5.18.apk', null, '3', '2018-10-18 16:09:44', '2018-12-04 17:13:21');
INSERT INTO `t_app_version` VALUES ('58', 'http://www.emoonbow.com/applicationMarket-upload/app/bixin/1539850361706LOGO.png', '58', 'com.bixin.bixin_android', 'V3.2.3', 'V3.2.3', null, 'Android', '29M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/bixin/币信-3.2.3.apk', null, '3', '2018-10-18 16:12:42', '2018-12-04 17:13:21');
INSERT INTO `t_app_version` VALUES ('59', 'http://www.emoonbow.com/applicationMarket-upload/app/ONE/1539850603810LOGO.png', '59', 'oneapp.onechain.androidapp', 'V2.3.9', 'V2.3.9', null, 'Android', '29M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/ONE/ONE-v2.3.9.apk', null, '3', '2018-10-18 16:16:44', '2018-12-04 17:13:20');
INSERT INTO `t_app_version` VALUES ('60', 'http://www.emoonbow.com/applicationMarket-upload/app/kushenqianbao/1539850800838LOGO.png', '60', 'com.coldlar.hotwallet', 'V2.5.0', 'V2.5.0', null, 'Android', '29M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/kushenqianbao/库神-2.5.0.apk', null, '3', '2018-10-18 16:20:01', '2018-12-04 17:13:19');
INSERT INTO `t_app_version` VALUES ('61', 'http://www.emoonbow.com/applicationMarket-upload/app/xhu/1539854012979LOGO.png', '61', null, 'cdacda', 'cdacda', 'cdacdaca', 'cdacda', '29M', '0', 'cdacdacd', 'undefined', null, '3', '2018-10-18 17:13:33', '2018-12-04 17:13:18');
INSERT INTO `t_app_version` VALUES ('62', 'http://www.emoonbow.com/applicationMarket-upload/app/xhu/1539854147497LOGO.png', '62', null, 'cdacda', 'cdacda', 'cdacdaca', 'cdacda', '29M', '0', 'cdacdacd', 'undefined', null, '3', '2018-10-18 17:15:48', '2018-12-04 17:13:15');
INSERT INTO `t_app_version` VALUES ('63', 'http://www.emoonbow.com/applicationMarket-upload/app/huobi-1/1539921684660LOGO.png', '63', 'pro.huobi', '3.5.2', '3.5.2', null, 'Android', '29M', '0', '火币全球专业站(www.huobi.pro)是火币旗下面向全球专业用户的创新的数字资产交易所，提供多种数字资产之间的交易及投资服务。火币全球专业站依托火币本身各方面的优势，由火币境外团队打造。\n    火币是一家全球性质的数字资产交易所，在中国、香港、韩国、新加坡、美国等国家和地区均有独立的交易业务和运营中心。依托四年积累与稳健发展，火币已成长为具有全球竞争力与影响力的企业。在技术平台、产品支线、风控体系、运营及客户服务体系等方面都很完善。', 'http://www.emoonbow.com/applicationMarket-upload/app/huobi-1/火币Pro-3.5.2.apk', null, '3', '2018-10-19 12:01:25', '2018-12-04 17:13:14');
INSERT INTO `t_app_version` VALUES ('64', 'http://www.emoonbow.com/applicationMarket-upload/app/cdascdsa/1539928012261LOGO.png', '64', null, 'cdascda', 'cdascdas', 'cdacdacdas', 'cdacdas', '29M', '0', 'cdacdacdas', 'cdacdas', null, '3', '2018-10-19 13:47:18', '2018-12-04 17:13:14');
INSERT INTO `t_app_version` VALUES ('65', 'http://www.emoonbow.com/applicationMarket-upload/app/cdascdsa/1539928134325LOGO.png', '65', null, 'cdascda', 'cdascdas', 'cdacdacdas', 'cdacdas', '29M', '0', 'cdacdacdas', 'cdacdas', null, '3', '2018-10-19 13:48:54', '2018-12-04 17:13:13');
INSERT INTO `t_app_version` VALUES ('66', 'http://www.emoonbow.com/applicationMarket-upload/app/zhubajie/1539928313588LOGO.png', '66', null, 'cdacda', 'cdacdas', 'cdacdas', 'cdacda', '29M', '0', 'cdacda', 'cdcad', null, '3', '2018-10-19 13:51:54', '2018-12-04 17:13:12');
INSERT INTO `t_app_version` VALUES ('67', 'http://www.emoonbow.com/applicationMarket-upload/app/MyToken/1539928640344LOGO.png', '67', null, 'V2.0.2', 'V2.0.2', '优化体验', 'iOS', '29M', '0', '优化体验', 'https://itunes.apple.com/cn/app/mytoken/id1271352380', null, '3', '2018-10-19 13:57:20', '2018-12-04 17:13:10');
INSERT INTO `t_app_version` VALUES ('68', 'http://www.emoonbow.com/applicationMarket-upload/app/feixiaohao/1539929842783LOGO.png', '68', null, 'V1.4.0', 'V1.4.0', '优化体验', 'iOS', '29M', '0', '1.APP内收录了现在市面上几乎所有虚拟货币行情，非小号快速收录新上市货币，实时更新行情。\r\n2.用户自定功能允许将行情添加到‘自定’界面，并支持行情拖动排序动能。\r\n3.收录全球各个国家的交易所行情，支持国家，类型以及交易对筛选。\r\n4.包含分析市值排行，成交量排行，涨跌幅排行等分析功能。\r\n5.业内首创虚拟币概念分类功能。', 'https://m.feixiaohao.com/download/ios/', null, '3', '2018-10-19 14:17:23', '2018-12-04 17:13:09');
INSERT INTO `t_app_version` VALUES ('69', 'http://www.emoonbow.com/applicationMarket-upload/app/bidong/1539930000772LOGO.png', '69', null, 'V1.1.8', 'V1.1.8', '优化体验', 'iOS', '29M', '0', '修复bug', 'https://fir.im/bitbeat', null, '3', '2018-10-19 14:20:01', '2018-12-04 17:13:08');
INSERT INTO `t_app_version` VALUES ('70', 'http://www.emoonbow.com/applicationMarket-upload/app/jintaQuintar/1539930164481LOGO.png', '70', null, 'V2.1.2', 'V2.1.2', '修复bug', 'iOS', '29M', '0', '优化体验', 'https://itunes.apple.com/cn/app/%E9%87%91%E5%A1%94quintar-%E6%AF%94%E7%89%B9%E5%B8%81%E4%BB%A5%E5%A4%AA%E5%9D%8A%E5%8C%BA%E5%9D%97%E9%93%BE%E8%A1%8C%E6%83%85%E8%B5%84%E8%AE%AF%E6%9C%8D%E5%8A%A1%E5%95%86/id1294955567?mt=8', null, '3', '2018-10-19 14:22:44', '2018-12-04 17:13:07');
INSERT INTO `t_app_version` VALUES ('71', 'http://www.emoonbow.com/applicationMarket-upload/app/BlockCC/1539930328938LOGO.png', '71', null, 'V0.0.70', 'V0.0.70', '1、资讯升级改版，数据行情更直观；\r\n2、UI优化，用户体验更流畅；\r\n3、修复部分bug。', 'iOS', '6M', '0', '官方网站：https://block.cc\r\n微信客服号：blockcc-xiaokeai\r\nTelgream 机器人：https://t.me/joinchat/Iwls-BFsZeO--yK8S6mUzQ', 'https://itunes.apple.com/cn/app/blockcc/id1385041261?mt=8', null, '3', '2018-10-19 14:25:29', '2018-12-04 17:12:59');
INSERT INTO `t_app_version` VALUES ('72', 'http://www.emoonbow.com/applicationMarket-upload/app/biguan/1539930490454LOGO.png', '72', null, 'V2.6.8', 'V2.6.8', '【图表分析】行情走势图、资金流动走势图、盘口图等多种专业分析图表，多种指标周期自定义\r\n【支持扩展】支持iOS扩展和Apple Watch，方便快捷把握行情\r\n【价格预警】价格阈值设置，一定时段内涨跌幅度预警，及时推送，不错过任何机会\r\n【资产统计】API获取交易所账户余额和变动，精确统计资产变动，安全快捷\r\n【市场总览】提供虚拟货币市场涨跌排行，把握大盘总体变化情况', 'iOS', '6M', '0', '专业ICO信息检索网站COINJINJA荣誉出品，全功能免费，无需交易所账号密码，快捷安全。', 'https://itunes.apple.com/cn/app/%E5%B8%81%E8%A7%82-%E6%9C%80%E4%B8%93%E4%B8%9A%E7%9A%84%E8%99%9A%E6%8B%9F%E8%B4%A7%E5%B8%81%E8%A1%8C%E6%83%85/id1335330312?mt=8', null, '3', '2018-10-19 14:28:10', '2018-12-04 17:12:58');
INSERT INTO `t_app_version` VALUES ('73', 'http://www.emoonbow.com/applicationMarket-upload/app/beishuqukuailian/1539930603632LOGO.png', '73', null, 'V1.2.1', 'V1.2.1', '修复bug', 'iOS', '6M', '0', '优化体验，使用更流畅', 'https://fir.im/4g5s', null, '3', '2018-10-19 14:30:04', '2018-12-04 17:12:58');
INSERT INTO `t_app_version` VALUES ('74', 'http://www.emoonbow.com/applicationMarket-upload/app/biyou-BitUniverse/1539930748063LOGO.jpg', '74', null, 'V2.1.1.0', 'V2.1.1.0', '修复bug', 'iOS', '6M', '0', '功能介绍\r\n　　查看实时行情:\r\n　　1.在首页把你想要的数字货币添加为自选\r\n　　2.有K线图功能，简单查看数位货币走势与成交量\r\n　　3.自带币市值与排名(coinmarketcap、非小号)\r\n　　4.拥有币板块、排行榜功能，轻松选币\r\n　　我们已经支持的货币: BTC (比特币), ETH (以太币), BCC (比特币现金), STEEM, DASH, Ripple (XRP), BTS (比特股)等5000多种\r\n　　已经支持的交易所：币安(Binance), B站(Bitfinex), B网 (Bittrex), GDAX(CoiNBAse), Hitbtc, Kraken, P网 (Poloniex), BitStamp ,Liqui, bitFlyer, 火币(Huobi.pro),COSS交易所,Quoine, AEX,Bitshare DEX,Yobit,CEX,Coincheck,CoinSecure.in ,bitHumb,Korbit,Coinone,BigOne(Big.one),biBox，gate.io等100+个交易所\r\n　　币安追踪器：\r\n　　自动追踪币安的持仓盈亏，查看币安交易所的所有币种的实时价格\r\n　　价格提醒：\r\n　　价格达到指定价格,会即时提醒', 'https://itunes.apple.com/cn/app/bituniverse/id1329338902', null, '3', '2018-10-19 14:32:28', '2018-12-04 17:12:57');
INSERT INTO `t_app_version` VALUES ('75', 'http://www.emoonbow.com/applicationMarket-upload/app/lianzhuli/1539930904533LOGO.png', '75', null, 'V1.2.5', 'V1.2.5', '优化体验', 'iOS', '6M', '0', '1、全面的平台、币种数据。让您清晰的了解涨幅走势\r\n2、实时行情走势。多种K线走势图，和官网同步更新\r\n3、资讯&快讯。更快一步，随时掌握重要的资讯信息', 'https://itunes.apple.com/cn/app/%E9%9D%9E%E5%B0%8F%E5%8F%B7%E9%93%BE%E5%8A%A9%E7%90%86-%E4%B8%93%E4%B8%9Ak%E7%BA%BF%E8%A1%8C%E6%83%85/id1383236895?mt=8', null, '3', '2018-10-19 14:35:05', '2018-12-04 17:12:55');
INSERT INTO `t_app_version` VALUES ('76', 'http://www.emoonbow.com/applicationMarket-upload/app/AICoin/1539933999194LOGO.png', '76', null, 'V2.0.2', 'V2.0.2', '修复bug', 'iOS', '6M', '0', '优化体验', 'https://www.aicoin.net.cn/app', null, '3', '2018-10-19 15:26:39', '2018-12-04 17:12:54');
INSERT INTO `t_app_version` VALUES ('77', 'http://www.emoonbow.com/applicationMarket-upload/app/niuyanxingqing/1539934109461LOGO.jpg', '77', null, 'V1.4.4', 'V1.4.4', '优化体验', 'iOS', '6M', '0', '【功能特色】\r\n-「实时行情」提供全球加密货币行情，汇总各大交易平台实时交易数据。快人一步，掌握行情。\r\n-「数据分析」市场行情早知道，提供涨幅分布、成交量榜、涨跌幅榜等，市场趋势一览无余。\r\n-「专业图表」全网K线图表，支持时间周期设定，专业高效。\r\n-「持仓监控」实时监控钱包和交易所持仓盈亏。', 'https://dl.niuyan.com/', null, '3', '2018-10-19 15:28:29', '2018-12-04 17:12:53');
INSERT INTO `t_app_version` VALUES ('78', 'http://www.emoonbow.com/applicationMarket-upload/app/biniuniu/1539934229987LOGO.jpg', '78', null, 'V2.4.0', 'V2.4.0', '优化体验', 'iOS', '6M', '0', '「深度挖掘」全方位视角，从项目、资金、社区活跃度、代码等进行深度解析。  \r\n「短线精灵」24小时监控行情，捕捉异动，帮助投资者抓住机会。  \r\n「资金流向」为您提供币种和交易所实时资金流向， 辅助投资。  \r\n「智能选币」多维度数据挖掘，智能分析，轻松找到价值币。  \r\n「舆情挖掘」基于海量币圈资讯深度挖掘，传递直达交易的情报  \r\n「全球快讯」为你提供及时全面准确的资讯与行情服务，帮你做出正确的投资抉择  \r\n「实时行情」全球250+交易所数据24小时更新。  自选币种，实时价格异动推送', 'https://itunes.apple.com/cn/app/%E5%B8%81%E7%89%9B%E7%89%9B-%E8%AE%A9%E6%95%B0%E6%8D%AE%E4%BC%9A%E8%AF%B4%E8%AF%9D/id1341266467?mt=8', null, '3', '2018-10-19 15:30:30', '2018-12-04 17:12:51');
INSERT INTO `t_app_version` VALUES ('79', 'http://www.emoonbow.com/applicationMarket-upload/app/AICoin/1539933999194LOGO.png', '78', null, 'V2.0.2', 'V2.0.2', '修复bug', 'iOS', '6M', '1', '优化体验', 'https://www.aicoin.net.cn/app', null, '3', '2018-10-19 15:26:39', '2018-12-04 17:12:48');
INSERT INTO `t_app_version` VALUES ('80', 'http://www.emoonbow.com/applicationMarket-upload/app/ONE/1539850603810LOGO.png', '59', 'oneapp.onechain.androidapp', 'V2.4.0', 'V2.4.0', null, 'Android', '6M', '1', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/ONE/ONE-v2.3.9.apk', null, '3', '2018-10-18 16:16:44', '2018-12-04 17:12:50');
INSERT INTO `t_app_version` VALUES ('81', 'http://www.emoonbow.com/applicationMarket-upload/app/MyToken/1543213306468LOGO.png', '79', 'com.hash.mytoken', 'V2.0.2', 'V2.0.2', '修复bug', 'Android', '6M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/MyToken/MyToken-2.0.2.apk', null, '3', '2018-11-26 14:21:46', null);
INSERT INTO `t_app_version` VALUES ('82', 'http://www.emoonbow.com/applicationMarket-upload/app/feixiaohao/1543214279609LOGO.png', '80', 'com.feixiaohao', 'V1.4.0', 'V1.4.0', '优化体验', 'Android', '10M', '0', '1.APP内收录了现在市面上几乎所有虚拟货币行情，非小号快速收录新上市货币，实时更新行情。\r\n2.用户自定功能允许将行情添加到‘自定’界面，并支持行情拖动排序动能。\r\n3.收录全球各个国家的交易所行情，支持国家，类型以及交易对筛选。\r\n4.包含分析市值排行，成交量排行，涨跌幅排行等分析功能。\r\n5.业内首创虚拟币概念分类功能。', 'http://www.emoonbow.com/applicationMarket-upload/app/feixiaohao/feixiaohao-1.4.0.apk', null, '3', '2018-11-26 14:38:00', null);
INSERT INTO `t_app_version` VALUES ('83', 'http://www.emoonbow.com/applicationMarket-upload/app/bifa/15432145820961.jpg', '81', 'com.coin.b8', 'V 1.1.1', 'V 1.1.1', '优化体验', 'Android', '14M', '0', '【行情】对接国内外各大数据源和交易所，AI智能数据清洗、高并发系统实时更新，保证最全面精准快速的的行情数据呈现。\r\n【资讯】全网海量数据爬取，大数据人工智能深度挖掘价值资讯，帮你全面把握市场脉搏。\r\n【选币】专业分析师多维度、多主题挑选价值币、过滤空气币，助力价值投资。\r\n【预警】7x24小时免费预警服务，专业系统盯盘，价格异动实时提醒。', 'http://www.emoonbow.com/applicationMarket-upload/app/bifa/bifa-1.1.1.apk', null, '3', '2018-11-26 14:43:02', null);
INSERT INTO `t_app_version` VALUES ('84', 'http://www.emoonbow.com/applicationMarket-upload/app/bidong/1543214805195LOGO.png', '82', 'com.kudai.bidong', 'V1.1.8', 'V1.1.8', '优化体验', 'Android', '9M', '0', '【实时行情 专业呈现】\r\n专业数字资产行情数据综合服务\r\n详尽币种信息·毫秒级K线响应·委单深度·资金流向\r\n\r\n【链上数据 密切追踪】\r\n链上价值信息整合与分析\r\n币种追踪·大户持币·预警大额进出·钱包监控\r\n\r\n【舆情分析 占得先机】\r\n搜索榜 · 媒体榜 · 社群榜 · 开发榜\r\n掌握数字货币网络热度和舆情动态\r\n\r\n【资产管理 尽在掌握】\r\n安全省心的资产管家\r\n多交易所资产管理·钱包资产·ICO项目·人性化记账', 'http://www.emoonbow.com/applicationMarket-upload/app/bidong/bidong-1.1.8.apk', null, '3', '2018-11-26 14:46:45', null);
INSERT INTO `t_app_version` VALUES ('85', 'http://www.emoonbow.com/applicationMarket-upload/app/Quintar/1543215111638LOGO.png', '83', 'com.quintar', 'V2.1.2', 'V2.1.2', '优化体验', 'Android', '20M', '0', '【数据】\r\n对接全球各大交易所，收录全面的数字货币行情信息，免费的预警提醒，能帮助您快速掌握市场波动；\r\n【图表】\r\n稳定流畅的k线图表，支持多指标和时间周期的设定，操作流畅，易上手；\r\n【分析】\r\n最专业的数据统计分析，买盘和卖盘持仓数据，深度图表，成交记录，一目了然；\r\n【操作】\r\n动态的价格变化，丰富的界面变化效果，尽情享受操作乐趣 ；\r\n【新闻】\r\n收集全球区块链及数字货币重要新闻，最新的平台公告以及实时的政策走向', 'http://www.emoonbow.com/applicationMarket-upload/app/Quintar/Quintar-2.1.2.apk', null, '3', '2018-11-26 14:51:52', null);
INSERT INTO `t_app_version` VALUES ('86', 'http://www.emoonbow.com/applicationMarket-upload/app/BlockCC/1543215574169LOGO.png', '84', 'cc.block.one', 'V0.0.70', 'V0.0.70', '优化体验', 'Android', '29M', '0', '1、资讯升级改版，数据行情更直观；\r\n2、UI优化，用户体验更流畅；\r\n3、修复部分bug。', 'http://www.emoonbow.com/applicationMarket-upload/app/BlockCC/BlockCC-0.0.70.apk', null, '3', '2018-11-26 14:59:34', null);
INSERT INTO `t_app_version` VALUES ('87', 'http://www.emoonbow.com/applicationMarket-upload/app/biguan/1543215864815LOGO.png', '85', 'cn.com.coinmarket.android', 'V2.6.8', 'V2.6.8', '【图表分析】行情走势图、资金流动走势图、盘口图等多种专业分析图表，多种指标周期自定义\r\n【支持扩展】支持iOS扩展和Apple Watch，方便快捷把握行情\r\n【价格预警】价格阈值设置，一定时段内涨跌幅度预警，及时推送，不错过任何机会\r\n【资产统计】API获取交易所账户余额和变动，精确统计资产变动，安全快捷\r\n【市场总览】提供虚拟货币市场涨跌排行，把握大盘总体变化情况', 'Android', '29M', '0', '【自选行情】将关注的货币加入列表，价格波动尽收眼底', 'http://www.emoonbow.com/applicationMarket-upload/app/biguan/biguan-2.6.4.apk', null, '3', '2018-11-26 15:04:25', null);
INSERT INTO `t_app_version` VALUES ('88', 'http://www.emoonbow.com/applicationMarket-upload/app/beishuqukuailian/1543216111739LOGO.png', '86', 'com.beishu.bsqkl', 'V 1.2.1', 'V 1.2.1', '优化体验', 'Android', '13M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/beishuqukuailian/beishu-1.2.1.apk', null, '3', '2018-11-26 15:08:32', null);
INSERT INTO `t_app_version` VALUES ('89', 'http://www.emoonbow.com/applicationMarket-upload/app/BitUniverse/1543216581280LOGO.jpg', '87', 'com.bituniverse.portfolio', 'V2.1.1.0', 'V2.1.1.0', '优化体验', 'Android', '22M', '0', '1. 操作简单，手机在线轻松计算出盈利与亏损；\r\n2. 全天24小时全方位的监控虚拟货币行情动态，价格趋势一目了然；\r\n3.及时更新多维度币排行榜，用户在这里轻松发现价值币；\r\n4. 支持250+交易所5000+数字货币；\r\n5. 自动导入api，个人资产一目了然，轻松管理账户信息。', 'http://www.emoonbow.com/applicationMarket-upload/app/BitUniverse/biyou-2.1.1.0.apk', null, '3', '2018-11-26 15:16:21', null);
INSERT INTO `t_app_version` VALUES ('90', 'http://www.emoonbow.com/applicationMarket-upload/app/lianzhuli/1543216744328LOGO.png', '88', 'com.manyou.lianzhuli', 'V1.2.5', 'V1.2.5', '优化体验', 'Android', '5M', '0', '1、全面的平台、币种数据。让您清晰的了解涨幅走势\r\n2、实时行情走势。多种K线走势图，和官网同步更新\r\n3、资讯&快讯。更快一步，随时掌握重要的资讯信息', 'http://www.emoonbow.com/applicationMarket-upload/app/lianzhuli/lianzhuli-1.2.5.apk', null, '3', '2018-11-26 15:19:04', null);
INSERT INTO `t_app_version` VALUES ('91', 'http://www.emoonbow.com/applicationMarket-upload/app/youling/1543217462266LOGO.png', '89', 'im.uchain.mobile', 'V1.2.7', 'V1.2.7', '优化体验', 'Android', '58M', '0', '修复bug', 'http://www.emoonbow.com/applicationMarket-upload/app/youling/5b7faed5f1ac6.apk', null, '3', '2018-11-26 15:31:02', null);
INSERT INTO `t_app_version` VALUES ('92', 'http://www.emoonbow.com/applicationMarket-upload/app/bicoin/1543217720054LOGO.png', '90', 'com.temperaturecoin', 'V1.1.0', 'V1.1.0', '优化体验', 'Android', '17M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/bicoin/5b88b3530db72.apk', null, '3', '2018-11-26 15:35:20', null);
INSERT INTO `t_app_version` VALUES ('93', 'http://www.emoonbow.com/applicationMarket-upload/app/biyong/1543221757041LOGO.jpg', '91', 'org.telegram.btcchat', 'V1.7.1', 'V1.7.1', '优化体验', 'Android', '32M', '0', '优化体验', 'http://www.emoonbow.com/applicationMarket-upload/app/biyong/5b8402d420a15.apk', null, '3', '2018-11-26 16:42:37', null);
INSERT INTO `t_app_version` VALUES ('94', 'http://www.emoonbow.com/applicationMarket-upload/app/cdacda/15457941581671428044_231250831000_2.png', '92', null, 'cdacda', 'cdacda', 'cdacdsa', 'cdacdsa', '11M', '0', 'cdacdsa', 'cdacda', null, '3', '2018-12-26 11:15:58', null);
INSERT INTO `t_app_version` VALUES ('95', 'http://admin.dpstore.pro/applicationMarket-upload/app/huobi/1545825463014VisualElements_70.png', '93', 'asdf', 'adsf', 'adsf', 'fgjhjhfg', 'dfghdfgh', '21M', '0', 'asdggfh', 'http://admin.dpstore.pro/applicationMarket-upload/app/huobi/火币Pro-4.1.1.apk.1', null, '3', '2018-12-26 11:57:43', null);
INSERT INTO `t_app_version` VALUES ('96', 'http://www.emoonbow.com/applicationMarket-upload/app/vfsvf/15460617652761428044_231250831000_2.png', '94', 'cdsa', 'cda', 'cda', 'cda', 'cdsacda', '207M', '0', 'cdsacdsa', 'http://www.emoonbow.com/applicationMarket-upload/app/vfsvf/jdk-8u191-windows-x64.exe', null, '3', '2018-12-29 13:36:07', null);

-- ----------------------------
-- Table structure for t_authority
-- ----------------------------
DROP TABLE IF EXISTS `t_authority`;
CREATE TABLE `t_authority` (
  `authority_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(32) DEFAULT NULL,
  `page_url` varchar(256) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `level` int(1) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `activated` int(1) DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`authority_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_authority
-- ----------------------------
INSERT INTO `t_authority` VALUES ('1', '管理员列表', 'admin-list', '1', '2', '管理员模块', null, null, '2018-04-12 15:08:48', null);
INSERT INTO `t_authority` VALUES ('2', '添加管理员', 'admin-add', '1', '2', '管理员模块', null, null, '2018-04-12 15:08:50', null);
INSERT INTO `t_authority` VALUES ('3', '用户列表', 'user-list', '2', null, '用户模块', null, null, '2018-04-12 15:08:56', null);
INSERT INTO `t_authority` VALUES ('36', '添加用户', 'user-add', null, null, '添加用户', null, null, '2018-07-13 10:07:38', '2018-07-13 10:07:24');
INSERT INTO `t_authority` VALUES ('37', '配置列表', 'setting-list', null, null, '配置列表', null, null, '2018-11-06 13:36:57', null);
INSERT INTO `t_authority` VALUES ('38', '反馈列表', 'feedback-list', null, null, '反馈列表', null, null, '2018-11-06 13:37:04', null);
INSERT INTO `t_authority` VALUES ('39', '反馈回复', 'feedback-reply', null, null, '回复', null, null, '2018-11-06 13:37:26', null);
INSERT INTO `t_authority` VALUES ('40', '应用列表', 'app-list', null, null, '应用列表', null, null, '2018-11-06 13:38:19', null);
INSERT INTO `t_authority` VALUES ('41', '添加应用', 'app-add', null, null, '添加应用', null, null, '2018-11-06 13:38:48', null);
INSERT INTO `t_authority` VALUES ('42', '更新安装包', 'app-update', null, null, '更新安装包', null, null, '2018-11-06 13:39:53', null);
INSERT INTO `t_authority` VALUES ('43', '推荐分类列表', 'recommend-list', null, null, '推荐分类列表', null, null, '2018-11-06 13:40:25', null);
INSERT INTO `t_authority` VALUES ('44', '添加推荐分类', 'recommend-add', null, null, '添加推荐分类', null, null, '2018-11-06 13:40:54', null);
INSERT INTO `t_authority` VALUES ('45', '任务列表', 'task-list', null, null, '已通过视频', null, null, '2018-11-06 13:41:49', null);
INSERT INTO `t_authority` VALUES ('46', '添加任务', 'task-add', null, null, '添加任务', null, null, '2018-11-06 13:42:13', null);
INSERT INTO `t_authority` VALUES ('47', '开发者认证审核', 'ver-user', null, null, '开发者认证审核', null, null, '2018-11-06 13:42:51', null);
INSERT INTO `t_authority` VALUES ('48', '认证开发者', 'ver-add-user', null, null, '认证开发者', null, null, '2018-11-06 13:43:17', null);
INSERT INTO `t_authority` VALUES ('49', '应用认证审核', 'app-ver', null, null, '应用认证审核', null, null, '2018-11-06 13:43:47', null);
INSERT INTO `t_authority` VALUES ('50', '广告列表', 'banner-list', null, null, '广告列表', null, null, '2018-11-06 13:44:21', null);
INSERT INTO `t_authority` VALUES ('51', '添加广告', 'banner-add', null, null, '添加广告', null, null, '2018-11-06 13:44:44', null);
INSERT INTO `t_authority` VALUES ('52', '系统参数设置', 'setting-change', null, null, '系统参数设置', null, null, null, null);
INSERT INTO `t_authority` VALUES ('53', '消息列表', 'notice-list', null, null, '消息列表', null, null, '2018-11-06 13:36:57', null);
INSERT INTO `t_authority` VALUES ('54', '消息发布', 'notice-add', null, null, '消息发布', null, null, '2018-11-06 13:36:57', null);

-- ----------------------------
-- Table structure for t_banner
-- ----------------------------
DROP TABLE IF EXISTS `t_banner`;
CREATE TABLE `t_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_type` int(1) DEFAULT '1' COMMENT '类型：2视频，1 图片',
  `app_id` int(11) DEFAULT NULL COMMENT '应用Id',
  `banner_name` varchar(128) DEFAULT NULL COMMENT '广告名称',
  `banner_page_location` int(1) DEFAULT NULL COMMENT '广告页面上的位置 1表示首页  2专题页',
  `banner_location` int(2) DEFAULT NULL COMMENT 'banner的位置  轮播的顺序',
  `image_url` varchar(255) DEFAULT '' COMMENT '图片URL',
  `start_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '开始时间',
  `end_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '结束时间',
  `sort_index` int(11) DEFAULT NULL COMMENT '排序',
  `video_url` varchar(255) DEFAULT '' COMMENT '视频地址',
  `click_count` int(8) DEFAULT '0' COMMENT '点击次数',
  `link_url` varchar(255) DEFAULT NULL COMMENT '跳转链接  ',
  `top` int(1) DEFAULT NULL COMMENT '1 置顶',
  `top_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `description` varchar(255) DEFAULT NULL COMMENT '介绍',
  `activated` int(1) DEFAULT '1' COMMENT '1 启用 2 禁用',
  `deleted` int(1) DEFAULT '1' COMMENT '1 未删除 2 已删除',
  `created_date` datetime DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_banner
-- ----------------------------
INSERT INTO `t_banner` VALUES ('45', '1', '80', null, null, '2', 'http://www.emoonbow.com/applicationMarket-upload/banner-image/1545097995930feixiaohao.jpg', '2018-12-18 09:53:15', '2018-12-18 09:53:15', null, '', '0', null, null, '2018-12-18 09:53:15', null, '1', '1', '2018-10-20 16:33:52', '2018-12-18 09:53:15');
INSERT INTO `t_banner` VALUES ('46', '1', '79', null, null, '3', 'http://www.emoonbow.com/applicationMarket-upload/banner-image/1545098027314MyToken.jpg', '2018-12-18 09:53:47', '2018-12-18 09:53:47', null, '', '0', null, null, '2018-12-18 09:53:47', null, '1', '1', '2018-10-20 16:34:20', '2018-12-18 09:53:47');
INSERT INTO `t_banner` VALUES ('47', '1', '68', null, null, '1', 'http://www.emoonbow.com/applicationMarket-upload/banner-image/1545098119593feixiaohao.jpg', '2018-12-18 09:55:19', '2018-12-18 09:55:19', null, '', '0', null, null, '2018-12-18 09:55:19', null, '1', '1', '2018-10-20 16:34:42', '2018-12-18 09:55:19');
INSERT INTO `t_banner` VALUES ('48', '1', '67', null, null, '2', 'http://www.emoonbow.com/applicationMarket-upload/banner-image/1545098144935MyToken.jpg', '2018-12-18 09:55:45', '2018-12-18 09:55:45', null, '', '0', null, null, '2018-12-18 09:55:45', null, '1', '1', '2018-10-20 16:34:57', '2018-12-18 09:55:45');

-- ----------------------------
-- Table structure for t_dept
-- ----------------------------
DROP TABLE IF EXISTS `t_dept`;
CREATE TABLE `t_dept` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) DEFAULT NULL COMMENT '部门名称',
  `description` varchar(255) DEFAULT NULL COMMENT '职责描述',
  `activated` int(1) DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dept
-- ----------------------------
INSERT INTO `t_dept` VALUES ('1', '后勤部门', '', null, null, '2018-11-12 00:00:00', '2018-08-20 10:29:11');
INSERT INTO `t_dept` VALUES ('2', '会计部门', null, null, null, null, null);
INSERT INTO `t_dept` VALUES ('3', '设计部门', null, null, null, null, null);
INSERT INTO `t_dept` VALUES ('4', '', null, null, null, null, '2018-08-20 10:33:20');

-- ----------------------------
-- Table structure for t_dict_areas
-- ----------------------------
DROP TABLE IF EXISTS `t_dict_areas`;
CREATE TABLE `t_dict_areas` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_code` varchar(6) DEFAULT NULL,
  `area_code` varchar(6) DEFAULT NULL,
  `area_name` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3145 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dict_areas
-- ----------------------------
INSERT INTO `t_dict_areas` VALUES ('1', '110100', '110101', '东城区');
INSERT INTO `t_dict_areas` VALUES ('2', '110100', '110102', '西城区');
INSERT INTO `t_dict_areas` VALUES ('3', '110100', '110103', '崇文区');
INSERT INTO `t_dict_areas` VALUES ('4', '110100', '110104', '宣武区');
INSERT INTO `t_dict_areas` VALUES ('5', '110100', '110105', '朝阳区');
INSERT INTO `t_dict_areas` VALUES ('6', '110100', '110106', '丰台区');
INSERT INTO `t_dict_areas` VALUES ('7', '110100', '110107', '石景山区');
INSERT INTO `t_dict_areas` VALUES ('8', '110100', '110108', '海淀区');
INSERT INTO `t_dict_areas` VALUES ('9', '110100', '110109', '门头沟区');
INSERT INTO `t_dict_areas` VALUES ('10', '110100', '110111', '房山区');
INSERT INTO `t_dict_areas` VALUES ('11', '110100', '110112', '通州区');
INSERT INTO `t_dict_areas` VALUES ('12', '110100', '110113', '顺义区');
INSERT INTO `t_dict_areas` VALUES ('13', '110100', '110114', '昌平区');
INSERT INTO `t_dict_areas` VALUES ('14', '110100', '110115', '大兴区');
INSERT INTO `t_dict_areas` VALUES ('15', '110100', '110116', '怀柔区');
INSERT INTO `t_dict_areas` VALUES ('16', '110100', '110117', '平谷区');
INSERT INTO `t_dict_areas` VALUES ('17', '110200', '110228', '密云县');
INSERT INTO `t_dict_areas` VALUES ('18', '110200', '110229', '延庆县');
INSERT INTO `t_dict_areas` VALUES ('19', '120100', '120101', '和平区');
INSERT INTO `t_dict_areas` VALUES ('20', '120100', '120102', '河东区');
INSERT INTO `t_dict_areas` VALUES ('21', '120100', '120103', '河西区');
INSERT INTO `t_dict_areas` VALUES ('22', '120100', '120104', '南开区');
INSERT INTO `t_dict_areas` VALUES ('23', '120100', '120105', '河北区');
INSERT INTO `t_dict_areas` VALUES ('24', '120100', '120106', '红桥区');
INSERT INTO `t_dict_areas` VALUES ('25', '120100', '120107', '塘沽区');
INSERT INTO `t_dict_areas` VALUES ('26', '120100', '120108', '汉沽区');
INSERT INTO `t_dict_areas` VALUES ('27', '120100', '120109', '大港区');
INSERT INTO `t_dict_areas` VALUES ('28', '120100', '120110', '东丽区');
INSERT INTO `t_dict_areas` VALUES ('29', '120100', '120111', '西青区');
INSERT INTO `t_dict_areas` VALUES ('30', '120100', '120112', '津南区');
INSERT INTO `t_dict_areas` VALUES ('31', '120100', '120113', '北辰区');
INSERT INTO `t_dict_areas` VALUES ('32', '120100', '120114', '武清区');
INSERT INTO `t_dict_areas` VALUES ('33', '120100', '120115', '宝坻区');
INSERT INTO `t_dict_areas` VALUES ('34', '120200', '120221', '宁河县');
INSERT INTO `t_dict_areas` VALUES ('35', '120200', '120223', '静海县');
INSERT INTO `t_dict_areas` VALUES ('36', '120200', '120225', '蓟　县');
INSERT INTO `t_dict_areas` VALUES ('37', '130100', '130101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('38', '130100', '130102', '长安区');
INSERT INTO `t_dict_areas` VALUES ('39', '130100', '130103', '桥东区');
INSERT INTO `t_dict_areas` VALUES ('40', '130100', '130104', '桥西区');
INSERT INTO `t_dict_areas` VALUES ('41', '130100', '130105', '新华区');
INSERT INTO `t_dict_areas` VALUES ('42', '130100', '130107', '井陉矿区');
INSERT INTO `t_dict_areas` VALUES ('43', '130100', '130108', '裕华区');
INSERT INTO `t_dict_areas` VALUES ('44', '130100', '130121', '井陉县');
INSERT INTO `t_dict_areas` VALUES ('45', '130100', '130123', '正定县');
INSERT INTO `t_dict_areas` VALUES ('46', '130100', '130124', '栾城县');
INSERT INTO `t_dict_areas` VALUES ('47', '130100', '130125', '行唐县');
INSERT INTO `t_dict_areas` VALUES ('48', '130100', '130126', '灵寿县');
INSERT INTO `t_dict_areas` VALUES ('49', '130100', '130127', '高邑县');
INSERT INTO `t_dict_areas` VALUES ('50', '130100', '130128', '深泽县');
INSERT INTO `t_dict_areas` VALUES ('51', '130100', '130129', '赞皇县');
INSERT INTO `t_dict_areas` VALUES ('52', '130100', '130130', '无极县');
INSERT INTO `t_dict_areas` VALUES ('53', '130100', '130131', '平山县');
INSERT INTO `t_dict_areas` VALUES ('54', '130100', '130132', '元氏县');
INSERT INTO `t_dict_areas` VALUES ('55', '130100', '130133', '赵　县');
INSERT INTO `t_dict_areas` VALUES ('56', '130100', '130181', '辛集市');
INSERT INTO `t_dict_areas` VALUES ('57', '130100', '130182', '藁城市');
INSERT INTO `t_dict_areas` VALUES ('58', '130100', '130183', '晋州市');
INSERT INTO `t_dict_areas` VALUES ('59', '130100', '130184', '新乐市');
INSERT INTO `t_dict_areas` VALUES ('60', '130100', '130185', '鹿泉市');
INSERT INTO `t_dict_areas` VALUES ('61', '130200', '130201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('62', '130200', '130202', '路南区');
INSERT INTO `t_dict_areas` VALUES ('63', '130200', '130203', '路北区');
INSERT INTO `t_dict_areas` VALUES ('64', '130200', '130204', '古冶区');
INSERT INTO `t_dict_areas` VALUES ('65', '130200', '130205', '开平区');
INSERT INTO `t_dict_areas` VALUES ('66', '130200', '130207', '丰南区');
INSERT INTO `t_dict_areas` VALUES ('67', '130200', '130208', '丰润区');
INSERT INTO `t_dict_areas` VALUES ('68', '130200', '130223', '滦　县');
INSERT INTO `t_dict_areas` VALUES ('69', '130200', '130224', '滦南县');
INSERT INTO `t_dict_areas` VALUES ('70', '130200', '130225', '乐亭县');
INSERT INTO `t_dict_areas` VALUES ('71', '130200', '130227', '迁西县');
INSERT INTO `t_dict_areas` VALUES ('72', '130200', '130229', '玉田县');
INSERT INTO `t_dict_areas` VALUES ('73', '130200', '130230', '唐海县');
INSERT INTO `t_dict_areas` VALUES ('74', '130200', '130281', '遵化市');
INSERT INTO `t_dict_areas` VALUES ('75', '130200', '130283', '迁安市');
INSERT INTO `t_dict_areas` VALUES ('76', '130300', '130301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('77', '130300', '130302', '海港区');
INSERT INTO `t_dict_areas` VALUES ('78', '130300', '130303', '山海关区');
INSERT INTO `t_dict_areas` VALUES ('79', '130300', '130304', '北戴河区');
INSERT INTO `t_dict_areas` VALUES ('80', '130300', '130321', '青龙满族自治县');
INSERT INTO `t_dict_areas` VALUES ('81', '130300', '130322', '昌黎县');
INSERT INTO `t_dict_areas` VALUES ('82', '130300', '130323', '抚宁县');
INSERT INTO `t_dict_areas` VALUES ('83', '130300', '130324', '卢龙县');
INSERT INTO `t_dict_areas` VALUES ('84', '130400', '130401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('85', '130400', '130402', '邯山区');
INSERT INTO `t_dict_areas` VALUES ('86', '130400', '130403', '丛台区');
INSERT INTO `t_dict_areas` VALUES ('87', '130400', '130404', '复兴区');
INSERT INTO `t_dict_areas` VALUES ('88', '130400', '130406', '峰峰矿区');
INSERT INTO `t_dict_areas` VALUES ('89', '130400', '130421', '邯郸县');
INSERT INTO `t_dict_areas` VALUES ('90', '130400', '130423', '临漳县');
INSERT INTO `t_dict_areas` VALUES ('91', '130400', '130424', '成安县');
INSERT INTO `t_dict_areas` VALUES ('92', '130400', '130425', '大名县');
INSERT INTO `t_dict_areas` VALUES ('93', '130400', '130426', '涉　县');
INSERT INTO `t_dict_areas` VALUES ('94', '130400', '130427', '磁　县');
INSERT INTO `t_dict_areas` VALUES ('95', '130400', '130428', '肥乡县');
INSERT INTO `t_dict_areas` VALUES ('96', '130400', '130429', '永年县');
INSERT INTO `t_dict_areas` VALUES ('97', '130400', '130430', '邱　县');
INSERT INTO `t_dict_areas` VALUES ('98', '130400', '130431', '鸡泽县');
INSERT INTO `t_dict_areas` VALUES ('99', '130400', '130432', '广平县');
INSERT INTO `t_dict_areas` VALUES ('100', '130400', '130433', '馆陶县');
INSERT INTO `t_dict_areas` VALUES ('101', '130400', '130434', '魏　县');
INSERT INTO `t_dict_areas` VALUES ('102', '130400', '130435', '曲周县');
INSERT INTO `t_dict_areas` VALUES ('103', '130400', '130481', '武安市');
INSERT INTO `t_dict_areas` VALUES ('104', '130500', '130501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('105', '130500', '130502', '桥东区');
INSERT INTO `t_dict_areas` VALUES ('106', '130500', '130503', '桥西区');
INSERT INTO `t_dict_areas` VALUES ('107', '130500', '130521', '邢台县');
INSERT INTO `t_dict_areas` VALUES ('108', '130500', '130522', '临城县');
INSERT INTO `t_dict_areas` VALUES ('109', '130500', '130523', '内丘县');
INSERT INTO `t_dict_areas` VALUES ('110', '130500', '130524', '柏乡县');
INSERT INTO `t_dict_areas` VALUES ('111', '130500', '130525', '隆尧县');
INSERT INTO `t_dict_areas` VALUES ('112', '130500', '130526', '任　县');
INSERT INTO `t_dict_areas` VALUES ('113', '130500', '130527', '南和县');
INSERT INTO `t_dict_areas` VALUES ('114', '130500', '130528', '宁晋县');
INSERT INTO `t_dict_areas` VALUES ('115', '130500', '130529', '巨鹿县');
INSERT INTO `t_dict_areas` VALUES ('116', '130500', '130530', '新河县');
INSERT INTO `t_dict_areas` VALUES ('117', '130500', '130531', '广宗县');
INSERT INTO `t_dict_areas` VALUES ('118', '130500', '130532', '平乡县');
INSERT INTO `t_dict_areas` VALUES ('119', '130500', '130533', '威　县');
INSERT INTO `t_dict_areas` VALUES ('120', '130500', '130534', '清河县');
INSERT INTO `t_dict_areas` VALUES ('121', '130500', '130535', '临西县');
INSERT INTO `t_dict_areas` VALUES ('122', '130500', '130581', '南宫市');
INSERT INTO `t_dict_areas` VALUES ('123', '130500', '130582', '沙河市');
INSERT INTO `t_dict_areas` VALUES ('124', '130600', '130601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('125', '130600', '130602', '新市区');
INSERT INTO `t_dict_areas` VALUES ('126', '130600', '130603', '北市区');
INSERT INTO `t_dict_areas` VALUES ('127', '130600', '130604', '南市区');
INSERT INTO `t_dict_areas` VALUES ('128', '130600', '130621', '满城县');
INSERT INTO `t_dict_areas` VALUES ('129', '130600', '130622', '清苑县');
INSERT INTO `t_dict_areas` VALUES ('130', '130600', '130623', '涞水县');
INSERT INTO `t_dict_areas` VALUES ('131', '130600', '130624', '阜平县');
INSERT INTO `t_dict_areas` VALUES ('132', '130600', '130625', '徐水县');
INSERT INTO `t_dict_areas` VALUES ('133', '130600', '130626', '定兴县');
INSERT INTO `t_dict_areas` VALUES ('134', '130600', '130627', '唐　县');
INSERT INTO `t_dict_areas` VALUES ('135', '130600', '130628', '高阳县');
INSERT INTO `t_dict_areas` VALUES ('136', '130600', '130629', '容城县');
INSERT INTO `t_dict_areas` VALUES ('137', '130600', '130630', '涞源县');
INSERT INTO `t_dict_areas` VALUES ('138', '130600', '130631', '望都县');
INSERT INTO `t_dict_areas` VALUES ('139', '130600', '130632', '安新县');
INSERT INTO `t_dict_areas` VALUES ('140', '130600', '130633', '易　县');
INSERT INTO `t_dict_areas` VALUES ('141', '130600', '130634', '曲阳县');
INSERT INTO `t_dict_areas` VALUES ('142', '130600', '130635', '蠡　县');
INSERT INTO `t_dict_areas` VALUES ('143', '130600', '130636', '顺平县');
INSERT INTO `t_dict_areas` VALUES ('144', '130600', '130637', '博野县');
INSERT INTO `t_dict_areas` VALUES ('145', '130600', '130638', '雄　县');
INSERT INTO `t_dict_areas` VALUES ('146', '130600', '130681', '涿州市');
INSERT INTO `t_dict_areas` VALUES ('147', '130600', '130682', '定州市');
INSERT INTO `t_dict_areas` VALUES ('148', '130600', '130683', '安国市');
INSERT INTO `t_dict_areas` VALUES ('149', '130600', '130684', '高碑店市');
INSERT INTO `t_dict_areas` VALUES ('150', '130700', '130701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('151', '130700', '130702', '桥东区');
INSERT INTO `t_dict_areas` VALUES ('152', '130700', '130703', '桥西区');
INSERT INTO `t_dict_areas` VALUES ('153', '130700', '130705', '宣化区');
INSERT INTO `t_dict_areas` VALUES ('154', '130700', '130706', '下花园区');
INSERT INTO `t_dict_areas` VALUES ('155', '130700', '130721', '宣化县');
INSERT INTO `t_dict_areas` VALUES ('156', '130700', '130722', '张北县');
INSERT INTO `t_dict_areas` VALUES ('157', '130700', '130723', '康保县');
INSERT INTO `t_dict_areas` VALUES ('158', '130700', '130724', '沽源县');
INSERT INTO `t_dict_areas` VALUES ('159', '130700', '130725', '尚义县');
INSERT INTO `t_dict_areas` VALUES ('160', '130700', '130726', '蔚　县');
INSERT INTO `t_dict_areas` VALUES ('161', '130700', '130727', '阳原县');
INSERT INTO `t_dict_areas` VALUES ('162', '130700', '130728', '怀安县');
INSERT INTO `t_dict_areas` VALUES ('163', '130700', '130729', '万全县');
INSERT INTO `t_dict_areas` VALUES ('164', '130700', '130730', '怀来县');
INSERT INTO `t_dict_areas` VALUES ('165', '130700', '130731', '涿鹿县');
INSERT INTO `t_dict_areas` VALUES ('166', '130700', '130732', '赤城县');
INSERT INTO `t_dict_areas` VALUES ('167', '130700', '130733', '崇礼县');
INSERT INTO `t_dict_areas` VALUES ('168', '130800', '130801', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('169', '130800', '130802', '双桥区');
INSERT INTO `t_dict_areas` VALUES ('170', '130800', '130803', '双滦区');
INSERT INTO `t_dict_areas` VALUES ('171', '130800', '130804', '鹰手营子矿区');
INSERT INTO `t_dict_areas` VALUES ('172', '130800', '130821', '承德县');
INSERT INTO `t_dict_areas` VALUES ('173', '130800', '130822', '兴隆县');
INSERT INTO `t_dict_areas` VALUES ('174', '130800', '130823', '平泉县');
INSERT INTO `t_dict_areas` VALUES ('175', '130800', '130824', '滦平县');
INSERT INTO `t_dict_areas` VALUES ('176', '130800', '130825', '隆化县');
INSERT INTO `t_dict_areas` VALUES ('177', '130800', '130826', '丰宁满族自治县');
INSERT INTO `t_dict_areas` VALUES ('178', '130800', '130827', '宽城满族自治县');
INSERT INTO `t_dict_areas` VALUES ('179', '130800', '130828', '围场满族蒙古族自治县');
INSERT INTO `t_dict_areas` VALUES ('180', '130900', '130901', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('181', '130900', '130902', '新华区');
INSERT INTO `t_dict_areas` VALUES ('182', '130900', '130903', '运河区');
INSERT INTO `t_dict_areas` VALUES ('183', '130900', '130921', '沧　县');
INSERT INTO `t_dict_areas` VALUES ('184', '130900', '130922', '青　县');
INSERT INTO `t_dict_areas` VALUES ('185', '130900', '130923', '东光县');
INSERT INTO `t_dict_areas` VALUES ('186', '130900', '130924', '海兴县');
INSERT INTO `t_dict_areas` VALUES ('187', '130900', '130925', '盐山县');
INSERT INTO `t_dict_areas` VALUES ('188', '130900', '130926', '肃宁县');
INSERT INTO `t_dict_areas` VALUES ('189', '130900', '130927', '南皮县');
INSERT INTO `t_dict_areas` VALUES ('190', '130900', '130928', '吴桥县');
INSERT INTO `t_dict_areas` VALUES ('191', '130900', '130929', '献　县');
INSERT INTO `t_dict_areas` VALUES ('192', '130900', '130930', '孟村回族自治县');
INSERT INTO `t_dict_areas` VALUES ('193', '130900', '130981', '泊头市');
INSERT INTO `t_dict_areas` VALUES ('194', '130900', '130982', '任丘市');
INSERT INTO `t_dict_areas` VALUES ('195', '130900', '130983', '黄骅市');
INSERT INTO `t_dict_areas` VALUES ('196', '130900', '130984', '河间市');
INSERT INTO `t_dict_areas` VALUES ('197', '131000', '131001', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('198', '131000', '131002', '安次区');
INSERT INTO `t_dict_areas` VALUES ('199', '131000', '131003', '广阳区');
INSERT INTO `t_dict_areas` VALUES ('200', '131000', '131022', '固安县');
INSERT INTO `t_dict_areas` VALUES ('201', '131000', '131023', '永清县');
INSERT INTO `t_dict_areas` VALUES ('202', '131000', '131024', '香河县');
INSERT INTO `t_dict_areas` VALUES ('203', '131000', '131025', '大城县');
INSERT INTO `t_dict_areas` VALUES ('204', '131000', '131026', '文安县');
INSERT INTO `t_dict_areas` VALUES ('205', '131000', '131028', '大厂回族自治县');
INSERT INTO `t_dict_areas` VALUES ('206', '131000', '131081', '霸州市');
INSERT INTO `t_dict_areas` VALUES ('207', '131000', '131082', '三河市');
INSERT INTO `t_dict_areas` VALUES ('208', '131100', '131101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('209', '131100', '131102', '桃城区');
INSERT INTO `t_dict_areas` VALUES ('210', '131100', '131121', '枣强县');
INSERT INTO `t_dict_areas` VALUES ('211', '131100', '131122', '武邑县');
INSERT INTO `t_dict_areas` VALUES ('212', '131100', '131123', '武强县');
INSERT INTO `t_dict_areas` VALUES ('213', '131100', '131124', '饶阳县');
INSERT INTO `t_dict_areas` VALUES ('214', '131100', '131125', '安平县');
INSERT INTO `t_dict_areas` VALUES ('215', '131100', '131126', '故城县');
INSERT INTO `t_dict_areas` VALUES ('216', '131100', '131127', '景　县');
INSERT INTO `t_dict_areas` VALUES ('217', '131100', '131128', '阜城县');
INSERT INTO `t_dict_areas` VALUES ('218', '131100', '131181', '冀州市');
INSERT INTO `t_dict_areas` VALUES ('219', '131100', '131182', '深州市');
INSERT INTO `t_dict_areas` VALUES ('220', '140100', '140101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('221', '140100', '140105', '小店区');
INSERT INTO `t_dict_areas` VALUES ('222', '140100', '140106', '迎泽区');
INSERT INTO `t_dict_areas` VALUES ('223', '140100', '140107', '杏花岭区');
INSERT INTO `t_dict_areas` VALUES ('224', '140100', '140108', '尖草坪区');
INSERT INTO `t_dict_areas` VALUES ('225', '140100', '140109', '万柏林区');
INSERT INTO `t_dict_areas` VALUES ('226', '140100', '140110', '晋源区');
INSERT INTO `t_dict_areas` VALUES ('227', '140100', '140121', '清徐县');
INSERT INTO `t_dict_areas` VALUES ('228', '140100', '140122', '阳曲县');
INSERT INTO `t_dict_areas` VALUES ('229', '140100', '140123', '娄烦县');
INSERT INTO `t_dict_areas` VALUES ('230', '140100', '140181', '古交市');
INSERT INTO `t_dict_areas` VALUES ('231', '140200', '140201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('232', '140200', '140202', '城　区');
INSERT INTO `t_dict_areas` VALUES ('233', '140200', '140203', '矿　区');
INSERT INTO `t_dict_areas` VALUES ('234', '140200', '140211', '南郊区');
INSERT INTO `t_dict_areas` VALUES ('235', '140200', '140212', '新荣区');
INSERT INTO `t_dict_areas` VALUES ('236', '140200', '140221', '阳高县');
INSERT INTO `t_dict_areas` VALUES ('237', '140200', '140222', '天镇县');
INSERT INTO `t_dict_areas` VALUES ('238', '140200', '140223', '广灵县');
INSERT INTO `t_dict_areas` VALUES ('239', '140200', '140224', '灵丘县');
INSERT INTO `t_dict_areas` VALUES ('240', '140200', '140225', '浑源县');
INSERT INTO `t_dict_areas` VALUES ('241', '140200', '140226', '左云县');
INSERT INTO `t_dict_areas` VALUES ('242', '140200', '140227', '大同县');
INSERT INTO `t_dict_areas` VALUES ('243', '140300', '140301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('244', '140300', '140302', '城　区');
INSERT INTO `t_dict_areas` VALUES ('245', '140300', '140303', '矿　区');
INSERT INTO `t_dict_areas` VALUES ('246', '140300', '140311', '郊　区');
INSERT INTO `t_dict_areas` VALUES ('247', '140300', '140321', '平定县');
INSERT INTO `t_dict_areas` VALUES ('248', '140300', '140322', '盂　县');
INSERT INTO `t_dict_areas` VALUES ('249', '140400', '140401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('250', '140400', '140402', '城　区');
INSERT INTO `t_dict_areas` VALUES ('251', '140400', '140411', '郊　区');
INSERT INTO `t_dict_areas` VALUES ('252', '140400', '140421', '长治县');
INSERT INTO `t_dict_areas` VALUES ('253', '140400', '140423', '襄垣县');
INSERT INTO `t_dict_areas` VALUES ('254', '140400', '140424', '屯留县');
INSERT INTO `t_dict_areas` VALUES ('255', '140400', '140425', '平顺县');
INSERT INTO `t_dict_areas` VALUES ('256', '140400', '140426', '黎城县');
INSERT INTO `t_dict_areas` VALUES ('257', '140400', '140427', '壶关县');
INSERT INTO `t_dict_areas` VALUES ('258', '140400', '140428', '长子县');
INSERT INTO `t_dict_areas` VALUES ('259', '140400', '140429', '武乡县');
INSERT INTO `t_dict_areas` VALUES ('260', '140400', '140430', '沁　县');
INSERT INTO `t_dict_areas` VALUES ('261', '140400', '140431', '沁源县');
INSERT INTO `t_dict_areas` VALUES ('262', '140400', '140481', '潞城市');
INSERT INTO `t_dict_areas` VALUES ('263', '140500', '140501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('264', '140500', '140502', '城　区');
INSERT INTO `t_dict_areas` VALUES ('265', '140500', '140521', '沁水县');
INSERT INTO `t_dict_areas` VALUES ('266', '140500', '140522', '阳城县');
INSERT INTO `t_dict_areas` VALUES ('267', '140500', '140524', '陵川县');
INSERT INTO `t_dict_areas` VALUES ('268', '140500', '140525', '泽州县');
INSERT INTO `t_dict_areas` VALUES ('269', '140500', '140581', '高平市');
INSERT INTO `t_dict_areas` VALUES ('270', '140600', '140601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('271', '140600', '140602', '朔城区');
INSERT INTO `t_dict_areas` VALUES ('272', '140600', '140603', '平鲁区');
INSERT INTO `t_dict_areas` VALUES ('273', '140600', '140621', '山阴县');
INSERT INTO `t_dict_areas` VALUES ('274', '140600', '140622', '应　县');
INSERT INTO `t_dict_areas` VALUES ('275', '140600', '140623', '右玉县');
INSERT INTO `t_dict_areas` VALUES ('276', '140600', '140624', '怀仁县');
INSERT INTO `t_dict_areas` VALUES ('277', '140700', '140701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('278', '140700', '140702', '榆次区');
INSERT INTO `t_dict_areas` VALUES ('279', '140700', '140721', '榆社县');
INSERT INTO `t_dict_areas` VALUES ('280', '140700', '140722', '左权县');
INSERT INTO `t_dict_areas` VALUES ('281', '140700', '140723', '和顺县');
INSERT INTO `t_dict_areas` VALUES ('282', '140700', '140724', '昔阳县');
INSERT INTO `t_dict_areas` VALUES ('283', '140700', '140725', '寿阳县');
INSERT INTO `t_dict_areas` VALUES ('284', '140700', '140726', '太谷县');
INSERT INTO `t_dict_areas` VALUES ('285', '140700', '140727', '祁　县');
INSERT INTO `t_dict_areas` VALUES ('286', '140700', '140728', '平遥县');
INSERT INTO `t_dict_areas` VALUES ('287', '140700', '140729', '灵石县');
INSERT INTO `t_dict_areas` VALUES ('288', '140700', '140781', '介休市');
INSERT INTO `t_dict_areas` VALUES ('289', '140800', '140801', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('290', '140800', '140802', '盐湖区');
INSERT INTO `t_dict_areas` VALUES ('291', '140800', '140821', '临猗县');
INSERT INTO `t_dict_areas` VALUES ('292', '140800', '140822', '万荣县');
INSERT INTO `t_dict_areas` VALUES ('293', '140800', '140823', '闻喜县');
INSERT INTO `t_dict_areas` VALUES ('294', '140800', '140824', '稷山县');
INSERT INTO `t_dict_areas` VALUES ('295', '140800', '140825', '新绛县');
INSERT INTO `t_dict_areas` VALUES ('296', '140800', '140826', '绛　县');
INSERT INTO `t_dict_areas` VALUES ('297', '140800', '140827', '垣曲县');
INSERT INTO `t_dict_areas` VALUES ('298', '140800', '140828', '夏　县');
INSERT INTO `t_dict_areas` VALUES ('299', '140800', '140829', '平陆县');
INSERT INTO `t_dict_areas` VALUES ('300', '140800', '140830', '芮城县');
INSERT INTO `t_dict_areas` VALUES ('301', '140800', '140881', '永济市');
INSERT INTO `t_dict_areas` VALUES ('302', '140800', '140882', '河津市');
INSERT INTO `t_dict_areas` VALUES ('303', '140900', '140901', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('304', '140900', '140902', '忻府区');
INSERT INTO `t_dict_areas` VALUES ('305', '140900', '140921', '定襄县');
INSERT INTO `t_dict_areas` VALUES ('306', '140900', '140922', '五台县');
INSERT INTO `t_dict_areas` VALUES ('307', '140900', '140923', '代　县');
INSERT INTO `t_dict_areas` VALUES ('308', '140900', '140924', '繁峙县');
INSERT INTO `t_dict_areas` VALUES ('309', '140900', '140925', '宁武县');
INSERT INTO `t_dict_areas` VALUES ('310', '140900', '140926', '静乐县');
INSERT INTO `t_dict_areas` VALUES ('311', '140900', '140927', '神池县');
INSERT INTO `t_dict_areas` VALUES ('312', '140900', '140928', '五寨县');
INSERT INTO `t_dict_areas` VALUES ('313', '140900', '140929', '岢岚县');
INSERT INTO `t_dict_areas` VALUES ('314', '140900', '140930', '河曲县');
INSERT INTO `t_dict_areas` VALUES ('315', '140900', '140931', '保德县');
INSERT INTO `t_dict_areas` VALUES ('316', '140900', '140932', '偏关县');
INSERT INTO `t_dict_areas` VALUES ('317', '140900', '140981', '原平市');
INSERT INTO `t_dict_areas` VALUES ('318', '141000', '141001', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('319', '141000', '141002', '尧都区');
INSERT INTO `t_dict_areas` VALUES ('320', '141000', '141021', '曲沃县');
INSERT INTO `t_dict_areas` VALUES ('321', '141000', '141022', '翼城县');
INSERT INTO `t_dict_areas` VALUES ('322', '141000', '141023', '襄汾县');
INSERT INTO `t_dict_areas` VALUES ('323', '141000', '141024', '洪洞县');
INSERT INTO `t_dict_areas` VALUES ('324', '141000', '141025', '古　县');
INSERT INTO `t_dict_areas` VALUES ('325', '141000', '141026', '安泽县');
INSERT INTO `t_dict_areas` VALUES ('326', '141000', '141027', '浮山县');
INSERT INTO `t_dict_areas` VALUES ('327', '141000', '141028', '吉　县');
INSERT INTO `t_dict_areas` VALUES ('328', '141000', '141029', '乡宁县');
INSERT INTO `t_dict_areas` VALUES ('329', '141000', '141030', '大宁县');
INSERT INTO `t_dict_areas` VALUES ('330', '141000', '141031', '隰　县');
INSERT INTO `t_dict_areas` VALUES ('331', '141000', '141032', '永和县');
INSERT INTO `t_dict_areas` VALUES ('332', '141000', '141033', '蒲　县');
INSERT INTO `t_dict_areas` VALUES ('333', '141000', '141034', '汾西县');
INSERT INTO `t_dict_areas` VALUES ('334', '141000', '141081', '侯马市');
INSERT INTO `t_dict_areas` VALUES ('335', '141000', '141082', '霍州市');
INSERT INTO `t_dict_areas` VALUES ('336', '141100', '141101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('337', '141100', '141102', '离石区');
INSERT INTO `t_dict_areas` VALUES ('338', '141100', '141121', '文水县');
INSERT INTO `t_dict_areas` VALUES ('339', '141100', '141122', '交城县');
INSERT INTO `t_dict_areas` VALUES ('340', '141100', '141123', '兴　县');
INSERT INTO `t_dict_areas` VALUES ('341', '141100', '141124', '临　县');
INSERT INTO `t_dict_areas` VALUES ('342', '141100', '141125', '柳林县');
INSERT INTO `t_dict_areas` VALUES ('343', '141100', '141126', '石楼县');
INSERT INTO `t_dict_areas` VALUES ('344', '141100', '141127', '岚　县');
INSERT INTO `t_dict_areas` VALUES ('345', '141100', '141128', '方山县');
INSERT INTO `t_dict_areas` VALUES ('346', '141100', '141129', '中阳县');
INSERT INTO `t_dict_areas` VALUES ('347', '141100', '141130', '交口县');
INSERT INTO `t_dict_areas` VALUES ('348', '141100', '141181', '孝义市');
INSERT INTO `t_dict_areas` VALUES ('349', '141100', '141182', '汾阳市');
INSERT INTO `t_dict_areas` VALUES ('350', '150100', '150101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('351', '150100', '150102', '新城区');
INSERT INTO `t_dict_areas` VALUES ('352', '150100', '150103', '回民区');
INSERT INTO `t_dict_areas` VALUES ('353', '150100', '150104', '玉泉区');
INSERT INTO `t_dict_areas` VALUES ('354', '150100', '150105', '赛罕区');
INSERT INTO `t_dict_areas` VALUES ('355', '150100', '150121', '土默特左旗');
INSERT INTO `t_dict_areas` VALUES ('356', '150100', '150122', '托克托县');
INSERT INTO `t_dict_areas` VALUES ('357', '150100', '150123', '和林格尔县');
INSERT INTO `t_dict_areas` VALUES ('358', '150100', '150124', '清水河县');
INSERT INTO `t_dict_areas` VALUES ('359', '150100', '150125', '武川县');
INSERT INTO `t_dict_areas` VALUES ('360', '150200', '150201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('361', '150200', '150202', '东河区');
INSERT INTO `t_dict_areas` VALUES ('362', '150200', '150203', '昆都仑区');
INSERT INTO `t_dict_areas` VALUES ('363', '150200', '150204', '青山区');
INSERT INTO `t_dict_areas` VALUES ('364', '150200', '150205', '石拐区');
INSERT INTO `t_dict_areas` VALUES ('365', '150200', '150206', '白云矿区');
INSERT INTO `t_dict_areas` VALUES ('366', '150200', '150207', '九原区');
INSERT INTO `t_dict_areas` VALUES ('367', '150200', '150221', '土默特右旗');
INSERT INTO `t_dict_areas` VALUES ('368', '150200', '150222', '固阳县');
INSERT INTO `t_dict_areas` VALUES ('369', '150200', '150223', '达尔罕茂明安联合旗');
INSERT INTO `t_dict_areas` VALUES ('370', '150300', '150301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('371', '150300', '150302', '海勃湾区');
INSERT INTO `t_dict_areas` VALUES ('372', '150300', '150303', '海南区');
INSERT INTO `t_dict_areas` VALUES ('373', '150300', '150304', '乌达区');
INSERT INTO `t_dict_areas` VALUES ('374', '150400', '150401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('375', '150400', '150402', '红山区');
INSERT INTO `t_dict_areas` VALUES ('376', '150400', '150403', '元宝山区');
INSERT INTO `t_dict_areas` VALUES ('377', '150400', '150404', '松山区');
INSERT INTO `t_dict_areas` VALUES ('378', '150400', '150421', '阿鲁科尔沁旗');
INSERT INTO `t_dict_areas` VALUES ('379', '150400', '150422', '巴林左旗');
INSERT INTO `t_dict_areas` VALUES ('380', '150400', '150423', '巴林右旗');
INSERT INTO `t_dict_areas` VALUES ('381', '150400', '150424', '林西县');
INSERT INTO `t_dict_areas` VALUES ('382', '150400', '150425', '克什克腾旗');
INSERT INTO `t_dict_areas` VALUES ('383', '150400', '150426', '翁牛特旗');
INSERT INTO `t_dict_areas` VALUES ('384', '150400', '150428', '喀喇沁旗');
INSERT INTO `t_dict_areas` VALUES ('385', '150400', '150429', '宁城县');
INSERT INTO `t_dict_areas` VALUES ('386', '150400', '150430', '敖汉旗');
INSERT INTO `t_dict_areas` VALUES ('387', '150500', '150501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('388', '150500', '150502', '科尔沁区');
INSERT INTO `t_dict_areas` VALUES ('389', '150500', '150521', '科尔沁左翼中旗');
INSERT INTO `t_dict_areas` VALUES ('390', '150500', '150522', '科尔沁左翼后旗');
INSERT INTO `t_dict_areas` VALUES ('391', '150500', '150523', '开鲁县');
INSERT INTO `t_dict_areas` VALUES ('392', '150500', '150524', '库伦旗');
INSERT INTO `t_dict_areas` VALUES ('393', '150500', '150525', '奈曼旗');
INSERT INTO `t_dict_areas` VALUES ('394', '150500', '150526', '扎鲁特旗');
INSERT INTO `t_dict_areas` VALUES ('395', '150500', '150581', '霍林郭勒市');
INSERT INTO `t_dict_areas` VALUES ('396', '150600', '150602', '东胜区');
INSERT INTO `t_dict_areas` VALUES ('397', '150600', '150621', '达拉特旗');
INSERT INTO `t_dict_areas` VALUES ('398', '150600', '150622', '准格尔旗');
INSERT INTO `t_dict_areas` VALUES ('399', '150600', '150623', '鄂托克前旗');
INSERT INTO `t_dict_areas` VALUES ('400', '150600', '150624', '鄂托克旗');
INSERT INTO `t_dict_areas` VALUES ('401', '150600', '150625', '杭锦旗');
INSERT INTO `t_dict_areas` VALUES ('402', '150600', '150626', '乌审旗');
INSERT INTO `t_dict_areas` VALUES ('403', '150600', '150627', '伊金霍洛旗');
INSERT INTO `t_dict_areas` VALUES ('404', '150700', '150701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('405', '150700', '150702', '海拉尔区');
INSERT INTO `t_dict_areas` VALUES ('406', '150700', '150721', '阿荣旗');
INSERT INTO `t_dict_areas` VALUES ('407', '150700', '150722', '莫力达瓦达斡尔族自治旗');
INSERT INTO `t_dict_areas` VALUES ('408', '150700', '150723', '鄂伦春自治旗');
INSERT INTO `t_dict_areas` VALUES ('409', '150700', '150724', '鄂温克族自治旗');
INSERT INTO `t_dict_areas` VALUES ('410', '150700', '150725', '陈巴尔虎旗');
INSERT INTO `t_dict_areas` VALUES ('411', '150700', '150726', '新巴尔虎左旗');
INSERT INTO `t_dict_areas` VALUES ('412', '150700', '150727', '新巴尔虎右旗');
INSERT INTO `t_dict_areas` VALUES ('413', '150700', '150781', '满洲里市');
INSERT INTO `t_dict_areas` VALUES ('414', '150700', '150782', '牙克石市');
INSERT INTO `t_dict_areas` VALUES ('415', '150700', '150783', '扎兰屯市');
INSERT INTO `t_dict_areas` VALUES ('416', '150700', '150784', '额尔古纳市');
INSERT INTO `t_dict_areas` VALUES ('417', '150700', '150785', '根河市');
INSERT INTO `t_dict_areas` VALUES ('418', '150800', '150801', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('419', '150800', '150802', '临河区');
INSERT INTO `t_dict_areas` VALUES ('420', '150800', '150821', '五原县');
INSERT INTO `t_dict_areas` VALUES ('421', '150800', '150822', '磴口县');
INSERT INTO `t_dict_areas` VALUES ('422', '150800', '150823', '乌拉特前旗');
INSERT INTO `t_dict_areas` VALUES ('423', '150800', '150824', '乌拉特中旗');
INSERT INTO `t_dict_areas` VALUES ('424', '150800', '150825', '乌拉特后旗');
INSERT INTO `t_dict_areas` VALUES ('425', '150800', '150826', '杭锦后旗');
INSERT INTO `t_dict_areas` VALUES ('426', '150900', '150901', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('427', '150900', '150902', '集宁区');
INSERT INTO `t_dict_areas` VALUES ('428', '150900', '150921', '卓资县');
INSERT INTO `t_dict_areas` VALUES ('429', '150900', '150922', '化德县');
INSERT INTO `t_dict_areas` VALUES ('430', '150900', '150923', '商都县');
INSERT INTO `t_dict_areas` VALUES ('431', '150900', '150924', '兴和县');
INSERT INTO `t_dict_areas` VALUES ('432', '150900', '150925', '凉城县');
INSERT INTO `t_dict_areas` VALUES ('433', '150900', '150926', '察哈尔右翼前旗');
INSERT INTO `t_dict_areas` VALUES ('434', '150900', '150927', '察哈尔右翼中旗');
INSERT INTO `t_dict_areas` VALUES ('435', '150900', '150928', '察哈尔右翼后旗');
INSERT INTO `t_dict_areas` VALUES ('436', '150900', '150929', '四子王旗');
INSERT INTO `t_dict_areas` VALUES ('437', '150900', '150981', '丰镇市');
INSERT INTO `t_dict_areas` VALUES ('438', '152200', '152201', '乌兰浩特市');
INSERT INTO `t_dict_areas` VALUES ('439', '152200', '152202', '阿尔山市');
INSERT INTO `t_dict_areas` VALUES ('440', '152200', '152221', '科尔沁右翼前旗');
INSERT INTO `t_dict_areas` VALUES ('441', '152200', '152222', '科尔沁右翼中旗');
INSERT INTO `t_dict_areas` VALUES ('442', '152200', '152223', '扎赉特旗');
INSERT INTO `t_dict_areas` VALUES ('443', '152200', '152224', '突泉县');
INSERT INTO `t_dict_areas` VALUES ('444', '152500', '152501', '二连浩特市');
INSERT INTO `t_dict_areas` VALUES ('445', '152500', '152502', '锡林浩特市');
INSERT INTO `t_dict_areas` VALUES ('446', '152500', '152522', '阿巴嘎旗');
INSERT INTO `t_dict_areas` VALUES ('447', '152500', '152523', '苏尼特左旗');
INSERT INTO `t_dict_areas` VALUES ('448', '152500', '152524', '苏尼特右旗');
INSERT INTO `t_dict_areas` VALUES ('449', '152500', '152525', '东乌珠穆沁旗');
INSERT INTO `t_dict_areas` VALUES ('450', '152500', '152526', '西乌珠穆沁旗');
INSERT INTO `t_dict_areas` VALUES ('451', '152500', '152527', '太仆寺旗');
INSERT INTO `t_dict_areas` VALUES ('452', '152500', '152528', '镶黄旗');
INSERT INTO `t_dict_areas` VALUES ('453', '152500', '152529', '正镶白旗');
INSERT INTO `t_dict_areas` VALUES ('454', '152500', '152530', '正蓝旗');
INSERT INTO `t_dict_areas` VALUES ('455', '152500', '152531', '多伦县');
INSERT INTO `t_dict_areas` VALUES ('456', '152900', '152921', '阿拉善左旗');
INSERT INTO `t_dict_areas` VALUES ('457', '152900', '152922', '阿拉善右旗');
INSERT INTO `t_dict_areas` VALUES ('458', '152900', '152923', '额济纳旗');
INSERT INTO `t_dict_areas` VALUES ('459', '210100', '210101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('460', '210100', '210102', '和平区');
INSERT INTO `t_dict_areas` VALUES ('461', '210100', '210103', '沈河区');
INSERT INTO `t_dict_areas` VALUES ('462', '210100', '210104', '大东区');
INSERT INTO `t_dict_areas` VALUES ('463', '210100', '210105', '皇姑区');
INSERT INTO `t_dict_areas` VALUES ('464', '210100', '210106', '铁西区');
INSERT INTO `t_dict_areas` VALUES ('465', '210100', '210111', '苏家屯区');
INSERT INTO `t_dict_areas` VALUES ('466', '210100', '210112', '东陵区');
INSERT INTO `t_dict_areas` VALUES ('467', '210100', '210113', '新城子区');
INSERT INTO `t_dict_areas` VALUES ('468', '210100', '210114', '于洪区');
INSERT INTO `t_dict_areas` VALUES ('469', '210100', '210122', '辽中县');
INSERT INTO `t_dict_areas` VALUES ('470', '210100', '210123', '康平县');
INSERT INTO `t_dict_areas` VALUES ('471', '210100', '210124', '法库县');
INSERT INTO `t_dict_areas` VALUES ('472', '210100', '210181', '新民市');
INSERT INTO `t_dict_areas` VALUES ('473', '210200', '210201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('474', '210200', '210202', '中山区');
INSERT INTO `t_dict_areas` VALUES ('475', '210200', '210203', '西岗区');
INSERT INTO `t_dict_areas` VALUES ('476', '210200', '210204', '沙河口区');
INSERT INTO `t_dict_areas` VALUES ('477', '210200', '210211', '甘井子区');
INSERT INTO `t_dict_areas` VALUES ('478', '210200', '210212', '旅顺口区');
INSERT INTO `t_dict_areas` VALUES ('479', '210200', '210213', '金州区');
INSERT INTO `t_dict_areas` VALUES ('480', '210200', '210224', '长海县');
INSERT INTO `t_dict_areas` VALUES ('481', '210200', '210281', '瓦房店市');
INSERT INTO `t_dict_areas` VALUES ('482', '210200', '210282', '普兰店市');
INSERT INTO `t_dict_areas` VALUES ('483', '210200', '210283', '庄河市');
INSERT INTO `t_dict_areas` VALUES ('484', '210300', '210301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('485', '210300', '210302', '铁东区');
INSERT INTO `t_dict_areas` VALUES ('486', '210300', '210303', '铁西区');
INSERT INTO `t_dict_areas` VALUES ('487', '210300', '210304', '立山区');
INSERT INTO `t_dict_areas` VALUES ('488', '210300', '210311', '千山区');
INSERT INTO `t_dict_areas` VALUES ('489', '210300', '210321', '台安县');
INSERT INTO `t_dict_areas` VALUES ('490', '210300', '210323', '岫岩满族自治县');
INSERT INTO `t_dict_areas` VALUES ('491', '210300', '210381', '海城市');
INSERT INTO `t_dict_areas` VALUES ('492', '210400', '210401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('493', '210400', '210402', '新抚区');
INSERT INTO `t_dict_areas` VALUES ('494', '210400', '210403', '东洲区');
INSERT INTO `t_dict_areas` VALUES ('495', '210400', '210404', '望花区');
INSERT INTO `t_dict_areas` VALUES ('496', '210400', '210411', '顺城区');
INSERT INTO `t_dict_areas` VALUES ('497', '210400', '210421', '抚顺县');
INSERT INTO `t_dict_areas` VALUES ('498', '210400', '210422', '新宾满族自治县');
INSERT INTO `t_dict_areas` VALUES ('499', '210400', '210423', '清原满族自治县');
INSERT INTO `t_dict_areas` VALUES ('500', '210500', '210501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('501', '210500', '210502', '平山区');
INSERT INTO `t_dict_areas` VALUES ('502', '210500', '210503', '溪湖区');
INSERT INTO `t_dict_areas` VALUES ('503', '210500', '210504', '明山区');
INSERT INTO `t_dict_areas` VALUES ('504', '210500', '210505', '南芬区');
INSERT INTO `t_dict_areas` VALUES ('505', '210500', '210521', '本溪满族自治县');
INSERT INTO `t_dict_areas` VALUES ('506', '210500', '210522', '桓仁满族自治县');
INSERT INTO `t_dict_areas` VALUES ('507', '210600', '210601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('508', '210600', '210602', '元宝区');
INSERT INTO `t_dict_areas` VALUES ('509', '210600', '210603', '振兴区');
INSERT INTO `t_dict_areas` VALUES ('510', '210600', '210604', '振安区');
INSERT INTO `t_dict_areas` VALUES ('511', '210600', '210624', '宽甸满族自治县');
INSERT INTO `t_dict_areas` VALUES ('512', '210600', '210681', '东港市');
INSERT INTO `t_dict_areas` VALUES ('513', '210600', '210682', '凤城市');
INSERT INTO `t_dict_areas` VALUES ('514', '210700', '210701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('515', '210700', '210702', '古塔区');
INSERT INTO `t_dict_areas` VALUES ('516', '210700', '210703', '凌河区');
INSERT INTO `t_dict_areas` VALUES ('517', '210700', '210711', '太和区');
INSERT INTO `t_dict_areas` VALUES ('518', '210700', '210726', '黑山县');
INSERT INTO `t_dict_areas` VALUES ('519', '210700', '210727', '义　县');
INSERT INTO `t_dict_areas` VALUES ('520', '210700', '210781', '凌海市');
INSERT INTO `t_dict_areas` VALUES ('521', '210700', '210782', '北宁市');
INSERT INTO `t_dict_areas` VALUES ('522', '210800', '210801', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('523', '210800', '210802', '站前区');
INSERT INTO `t_dict_areas` VALUES ('524', '210800', '210803', '西市区');
INSERT INTO `t_dict_areas` VALUES ('525', '210800', '210804', '鲅鱼圈区');
INSERT INTO `t_dict_areas` VALUES ('526', '210800', '210811', '老边区');
INSERT INTO `t_dict_areas` VALUES ('527', '210800', '210881', '盖州市');
INSERT INTO `t_dict_areas` VALUES ('528', '210800', '210882', '大石桥市');
INSERT INTO `t_dict_areas` VALUES ('529', '210900', '210901', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('530', '210900', '210902', '海州区');
INSERT INTO `t_dict_areas` VALUES ('531', '210900', '210903', '新邱区');
INSERT INTO `t_dict_areas` VALUES ('532', '210900', '210904', '太平区');
INSERT INTO `t_dict_areas` VALUES ('533', '210900', '210905', '清河门区');
INSERT INTO `t_dict_areas` VALUES ('534', '210900', '210911', '细河区');
INSERT INTO `t_dict_areas` VALUES ('535', '210900', '210921', '阜新蒙古族自治县');
INSERT INTO `t_dict_areas` VALUES ('536', '210900', '210922', '彰武县');
INSERT INTO `t_dict_areas` VALUES ('537', '211000', '211001', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('538', '211000', '211002', '白塔区');
INSERT INTO `t_dict_areas` VALUES ('539', '211000', '211003', '文圣区');
INSERT INTO `t_dict_areas` VALUES ('540', '211000', '211004', '宏伟区');
INSERT INTO `t_dict_areas` VALUES ('541', '211000', '211005', '弓长岭区');
INSERT INTO `t_dict_areas` VALUES ('542', '211000', '211011', '太子河区');
INSERT INTO `t_dict_areas` VALUES ('543', '211000', '211021', '辽阳县');
INSERT INTO `t_dict_areas` VALUES ('544', '211000', '211081', '灯塔市');
INSERT INTO `t_dict_areas` VALUES ('545', '211100', '211101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('546', '211100', '211102', '双台子区');
INSERT INTO `t_dict_areas` VALUES ('547', '211100', '211103', '兴隆台区');
INSERT INTO `t_dict_areas` VALUES ('548', '211100', '211121', '大洼县');
INSERT INTO `t_dict_areas` VALUES ('549', '211100', '211122', '盘山县');
INSERT INTO `t_dict_areas` VALUES ('550', '211200', '211201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('551', '211200', '211202', '银州区');
INSERT INTO `t_dict_areas` VALUES ('552', '211200', '211204', '清河区');
INSERT INTO `t_dict_areas` VALUES ('553', '211200', '211221', '铁岭县');
INSERT INTO `t_dict_areas` VALUES ('554', '211200', '211223', '西丰县');
INSERT INTO `t_dict_areas` VALUES ('555', '211200', '211224', '昌图县');
INSERT INTO `t_dict_areas` VALUES ('556', '211200', '211281', '调兵山市');
INSERT INTO `t_dict_areas` VALUES ('557', '211200', '211282', '开原市');
INSERT INTO `t_dict_areas` VALUES ('558', '211300', '211301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('559', '211300', '211302', '双塔区');
INSERT INTO `t_dict_areas` VALUES ('560', '211300', '211303', '龙城区');
INSERT INTO `t_dict_areas` VALUES ('561', '211300', '211321', '朝阳县');
INSERT INTO `t_dict_areas` VALUES ('562', '211300', '211322', '建平县');
INSERT INTO `t_dict_areas` VALUES ('563', '211300', '211324', '喀喇沁左翼蒙古族自治县');
INSERT INTO `t_dict_areas` VALUES ('564', '211300', '211381', '北票市');
INSERT INTO `t_dict_areas` VALUES ('565', '211300', '211382', '凌源市');
INSERT INTO `t_dict_areas` VALUES ('566', '211400', '211401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('567', '211400', '211402', '连山区');
INSERT INTO `t_dict_areas` VALUES ('568', '211400', '211403', '龙港区');
INSERT INTO `t_dict_areas` VALUES ('569', '211400', '211404', '南票区');
INSERT INTO `t_dict_areas` VALUES ('570', '211400', '211421', '绥中县');
INSERT INTO `t_dict_areas` VALUES ('571', '211400', '211422', '建昌县');
INSERT INTO `t_dict_areas` VALUES ('572', '211400', '211481', '兴城市');
INSERT INTO `t_dict_areas` VALUES ('573', '220100', '220101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('574', '220100', '220102', '南关区');
INSERT INTO `t_dict_areas` VALUES ('575', '220100', '220103', '宽城区');
INSERT INTO `t_dict_areas` VALUES ('576', '220100', '220104', '朝阳区');
INSERT INTO `t_dict_areas` VALUES ('577', '220100', '220105', '二道区');
INSERT INTO `t_dict_areas` VALUES ('578', '220100', '220106', '绿园区');
INSERT INTO `t_dict_areas` VALUES ('579', '220100', '220112', '双阳区');
INSERT INTO `t_dict_areas` VALUES ('580', '220100', '220122', '农安县');
INSERT INTO `t_dict_areas` VALUES ('581', '220100', '220181', '九台市');
INSERT INTO `t_dict_areas` VALUES ('582', '220100', '220182', '榆树市');
INSERT INTO `t_dict_areas` VALUES ('583', '220100', '220183', '德惠市');
INSERT INTO `t_dict_areas` VALUES ('584', '220200', '220201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('585', '220200', '220202', '昌邑区');
INSERT INTO `t_dict_areas` VALUES ('586', '220200', '220203', '龙潭区');
INSERT INTO `t_dict_areas` VALUES ('587', '220200', '220204', '船营区');
INSERT INTO `t_dict_areas` VALUES ('588', '220200', '220211', '丰满区');
INSERT INTO `t_dict_areas` VALUES ('589', '220200', '220221', '永吉县');
INSERT INTO `t_dict_areas` VALUES ('590', '220200', '220281', '蛟河市');
INSERT INTO `t_dict_areas` VALUES ('591', '220200', '220282', '桦甸市');
INSERT INTO `t_dict_areas` VALUES ('592', '220200', '220283', '舒兰市');
INSERT INTO `t_dict_areas` VALUES ('593', '220200', '220284', '磐石市');
INSERT INTO `t_dict_areas` VALUES ('594', '220300', '220301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('595', '220300', '220302', '铁西区');
INSERT INTO `t_dict_areas` VALUES ('596', '220300', '220303', '铁东区');
INSERT INTO `t_dict_areas` VALUES ('597', '220300', '220322', '梨树县');
INSERT INTO `t_dict_areas` VALUES ('598', '220300', '220323', '伊通满族自治县');
INSERT INTO `t_dict_areas` VALUES ('599', '220300', '220381', '公主岭市');
INSERT INTO `t_dict_areas` VALUES ('600', '220300', '220382', '双辽市');
INSERT INTO `t_dict_areas` VALUES ('601', '220400', '220401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('602', '220400', '220402', '龙山区');
INSERT INTO `t_dict_areas` VALUES ('603', '220400', '220403', '西安区');
INSERT INTO `t_dict_areas` VALUES ('604', '220400', '220421', '东丰县');
INSERT INTO `t_dict_areas` VALUES ('605', '220400', '220422', '东辽县');
INSERT INTO `t_dict_areas` VALUES ('606', '220500', '220501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('607', '220500', '220502', '东昌区');
INSERT INTO `t_dict_areas` VALUES ('608', '220500', '220503', '二道江区');
INSERT INTO `t_dict_areas` VALUES ('609', '220500', '220521', '通化县');
INSERT INTO `t_dict_areas` VALUES ('610', '220500', '220523', '辉南县');
INSERT INTO `t_dict_areas` VALUES ('611', '220500', '220524', '柳河县');
INSERT INTO `t_dict_areas` VALUES ('612', '220500', '220581', '梅河口市');
INSERT INTO `t_dict_areas` VALUES ('613', '220500', '220582', '集安市');
INSERT INTO `t_dict_areas` VALUES ('614', '220600', '220601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('615', '220600', '220602', '八道江区');
INSERT INTO `t_dict_areas` VALUES ('616', '220600', '220621', '抚松县');
INSERT INTO `t_dict_areas` VALUES ('617', '220600', '220622', '靖宇县');
INSERT INTO `t_dict_areas` VALUES ('618', '220600', '220623', '长白朝鲜族自治县');
INSERT INTO `t_dict_areas` VALUES ('619', '220600', '220625', '江源县');
INSERT INTO `t_dict_areas` VALUES ('620', '220600', '220681', '临江市');
INSERT INTO `t_dict_areas` VALUES ('621', '220700', '220701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('622', '220700', '220702', '宁江区');
INSERT INTO `t_dict_areas` VALUES ('623', '220700', '220721', '前郭尔罗斯蒙古族自治县');
INSERT INTO `t_dict_areas` VALUES ('624', '220700', '220722', '长岭县');
INSERT INTO `t_dict_areas` VALUES ('625', '220700', '220723', '乾安县');
INSERT INTO `t_dict_areas` VALUES ('626', '220700', '220724', '扶余县');
INSERT INTO `t_dict_areas` VALUES ('627', '220800', '220801', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('628', '220800', '220802', '洮北区');
INSERT INTO `t_dict_areas` VALUES ('629', '220800', '220821', '镇赉县');
INSERT INTO `t_dict_areas` VALUES ('630', '220800', '220822', '通榆县');
INSERT INTO `t_dict_areas` VALUES ('631', '220800', '220881', '洮南市');
INSERT INTO `t_dict_areas` VALUES ('632', '220800', '220882', '大安市');
INSERT INTO `t_dict_areas` VALUES ('633', '222400', '222401', '延吉市');
INSERT INTO `t_dict_areas` VALUES ('634', '222400', '222402', '图们市');
INSERT INTO `t_dict_areas` VALUES ('635', '222400', '222403', '敦化市');
INSERT INTO `t_dict_areas` VALUES ('636', '222400', '222404', '珲春市');
INSERT INTO `t_dict_areas` VALUES ('637', '222400', '222405', '龙井市');
INSERT INTO `t_dict_areas` VALUES ('638', '222400', '222406', '和龙市');
INSERT INTO `t_dict_areas` VALUES ('639', '222400', '222424', '汪清县');
INSERT INTO `t_dict_areas` VALUES ('640', '222400', '222426', '安图县');
INSERT INTO `t_dict_areas` VALUES ('641', '230100', '230101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('642', '230100', '230102', '道里区');
INSERT INTO `t_dict_areas` VALUES ('643', '230100', '230103', '南岗区');
INSERT INTO `t_dict_areas` VALUES ('644', '230100', '230104', '道外区');
INSERT INTO `t_dict_areas` VALUES ('645', '230100', '230106', '香坊区');
INSERT INTO `t_dict_areas` VALUES ('646', '230100', '230107', '动力区');
INSERT INTO `t_dict_areas` VALUES ('647', '230100', '230108', '平房区');
INSERT INTO `t_dict_areas` VALUES ('648', '230100', '230109', '松北区');
INSERT INTO `t_dict_areas` VALUES ('649', '230100', '230111', '呼兰区');
INSERT INTO `t_dict_areas` VALUES ('650', '230100', '230123', '依兰县');
INSERT INTO `t_dict_areas` VALUES ('651', '230100', '230124', '方正县');
INSERT INTO `t_dict_areas` VALUES ('652', '230100', '230125', '宾　县');
INSERT INTO `t_dict_areas` VALUES ('653', '230100', '230126', '巴彦县');
INSERT INTO `t_dict_areas` VALUES ('654', '230100', '230127', '木兰县');
INSERT INTO `t_dict_areas` VALUES ('655', '230100', '230128', '通河县');
INSERT INTO `t_dict_areas` VALUES ('656', '230100', '230129', '延寿县');
INSERT INTO `t_dict_areas` VALUES ('657', '230100', '230181', '阿城市');
INSERT INTO `t_dict_areas` VALUES ('658', '230100', '230182', '双城市');
INSERT INTO `t_dict_areas` VALUES ('659', '230100', '230183', '尚志市');
INSERT INTO `t_dict_areas` VALUES ('660', '230100', '230184', '五常市');
INSERT INTO `t_dict_areas` VALUES ('661', '230200', '230201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('662', '230200', '230202', '龙沙区');
INSERT INTO `t_dict_areas` VALUES ('663', '230200', '230203', '建华区');
INSERT INTO `t_dict_areas` VALUES ('664', '230200', '230204', '铁锋区');
INSERT INTO `t_dict_areas` VALUES ('665', '230200', '230205', '昂昂溪区');
INSERT INTO `t_dict_areas` VALUES ('666', '230200', '230206', '富拉尔基区');
INSERT INTO `t_dict_areas` VALUES ('667', '230200', '230207', '碾子山区');
INSERT INTO `t_dict_areas` VALUES ('668', '230200', '230208', '梅里斯达斡尔族区');
INSERT INTO `t_dict_areas` VALUES ('669', '230200', '230221', '龙江县');
INSERT INTO `t_dict_areas` VALUES ('670', '230200', '230223', '依安县');
INSERT INTO `t_dict_areas` VALUES ('671', '230200', '230224', '泰来县');
INSERT INTO `t_dict_areas` VALUES ('672', '230200', '230225', '甘南县');
INSERT INTO `t_dict_areas` VALUES ('673', '230200', '230227', '富裕县');
INSERT INTO `t_dict_areas` VALUES ('674', '230200', '230229', '克山县');
INSERT INTO `t_dict_areas` VALUES ('675', '230200', '230230', '克东县');
INSERT INTO `t_dict_areas` VALUES ('676', '230200', '230231', '拜泉县');
INSERT INTO `t_dict_areas` VALUES ('677', '230200', '230281', '讷河市');
INSERT INTO `t_dict_areas` VALUES ('678', '230300', '230301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('679', '230300', '230302', '鸡冠区');
INSERT INTO `t_dict_areas` VALUES ('680', '230300', '230303', '恒山区');
INSERT INTO `t_dict_areas` VALUES ('681', '230300', '230304', '滴道区');
INSERT INTO `t_dict_areas` VALUES ('682', '230300', '230305', '梨树区');
INSERT INTO `t_dict_areas` VALUES ('683', '230300', '230306', '城子河区');
INSERT INTO `t_dict_areas` VALUES ('684', '230300', '230307', '麻山区');
INSERT INTO `t_dict_areas` VALUES ('685', '230300', '230321', '鸡东县');
INSERT INTO `t_dict_areas` VALUES ('686', '230300', '230381', '虎林市');
INSERT INTO `t_dict_areas` VALUES ('687', '230300', '230382', '密山市');
INSERT INTO `t_dict_areas` VALUES ('688', '230400', '230401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('689', '230400', '230402', '向阳区');
INSERT INTO `t_dict_areas` VALUES ('690', '230400', '230403', '工农区');
INSERT INTO `t_dict_areas` VALUES ('691', '230400', '230404', '南山区');
INSERT INTO `t_dict_areas` VALUES ('692', '230400', '230405', '兴安区');
INSERT INTO `t_dict_areas` VALUES ('693', '230400', '230406', '东山区');
INSERT INTO `t_dict_areas` VALUES ('694', '230400', '230407', '兴山区');
INSERT INTO `t_dict_areas` VALUES ('695', '230400', '230421', '萝北县');
INSERT INTO `t_dict_areas` VALUES ('696', '230400', '230422', '绥滨县');
INSERT INTO `t_dict_areas` VALUES ('697', '230500', '230501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('698', '230500', '230502', '尖山区');
INSERT INTO `t_dict_areas` VALUES ('699', '230500', '230503', '岭东区');
INSERT INTO `t_dict_areas` VALUES ('700', '230500', '230505', '四方台区');
INSERT INTO `t_dict_areas` VALUES ('701', '230500', '230506', '宝山区');
INSERT INTO `t_dict_areas` VALUES ('702', '230500', '230521', '集贤县');
INSERT INTO `t_dict_areas` VALUES ('703', '230500', '230522', '友谊县');
INSERT INTO `t_dict_areas` VALUES ('704', '230500', '230523', '宝清县');
INSERT INTO `t_dict_areas` VALUES ('705', '230500', '230524', '饶河县');
INSERT INTO `t_dict_areas` VALUES ('706', '230600', '230601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('707', '230600', '230602', '萨尔图区');
INSERT INTO `t_dict_areas` VALUES ('708', '230600', '230603', '龙凤区');
INSERT INTO `t_dict_areas` VALUES ('709', '230600', '230604', '让胡路区');
INSERT INTO `t_dict_areas` VALUES ('710', '230600', '230605', '红岗区');
INSERT INTO `t_dict_areas` VALUES ('711', '230600', '230606', '大同区');
INSERT INTO `t_dict_areas` VALUES ('712', '230600', '230621', '肇州县');
INSERT INTO `t_dict_areas` VALUES ('713', '230600', '230622', '肇源县');
INSERT INTO `t_dict_areas` VALUES ('714', '230600', '230623', '林甸县');
INSERT INTO `t_dict_areas` VALUES ('715', '230600', '230624', '杜尔伯特蒙古族自治县');
INSERT INTO `t_dict_areas` VALUES ('716', '230700', '230701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('717', '230700', '230702', '伊春区');
INSERT INTO `t_dict_areas` VALUES ('718', '230700', '230703', '南岔区');
INSERT INTO `t_dict_areas` VALUES ('719', '230700', '230704', '友好区');
INSERT INTO `t_dict_areas` VALUES ('720', '230700', '230705', '西林区');
INSERT INTO `t_dict_areas` VALUES ('721', '230700', '230706', '翠峦区');
INSERT INTO `t_dict_areas` VALUES ('722', '230700', '230707', '新青区');
INSERT INTO `t_dict_areas` VALUES ('723', '230700', '230708', '美溪区');
INSERT INTO `t_dict_areas` VALUES ('724', '230700', '230709', '金山屯区');
INSERT INTO `t_dict_areas` VALUES ('725', '230700', '230710', '五营区');
INSERT INTO `t_dict_areas` VALUES ('726', '230700', '230711', '乌马河区');
INSERT INTO `t_dict_areas` VALUES ('727', '230700', '230712', '汤旺河区');
INSERT INTO `t_dict_areas` VALUES ('728', '230700', '230713', '带岭区');
INSERT INTO `t_dict_areas` VALUES ('729', '230700', '230714', '乌伊岭区');
INSERT INTO `t_dict_areas` VALUES ('730', '230700', '230715', '红星区');
INSERT INTO `t_dict_areas` VALUES ('731', '230700', '230716', '上甘岭区');
INSERT INTO `t_dict_areas` VALUES ('732', '230700', '230722', '嘉荫县');
INSERT INTO `t_dict_areas` VALUES ('733', '230700', '230781', '铁力市');
INSERT INTO `t_dict_areas` VALUES ('734', '230800', '230801', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('735', '230800', '230802', '永红区');
INSERT INTO `t_dict_areas` VALUES ('736', '230800', '230803', '向阳区');
INSERT INTO `t_dict_areas` VALUES ('737', '230800', '230804', '前进区');
INSERT INTO `t_dict_areas` VALUES ('738', '230800', '230805', '东风区');
INSERT INTO `t_dict_areas` VALUES ('739', '230800', '230811', '郊　区');
INSERT INTO `t_dict_areas` VALUES ('740', '230800', '230822', '桦南县');
INSERT INTO `t_dict_areas` VALUES ('741', '230800', '230826', '桦川县');
INSERT INTO `t_dict_areas` VALUES ('742', '230800', '230828', '汤原县');
INSERT INTO `t_dict_areas` VALUES ('743', '230800', '230833', '抚远县');
INSERT INTO `t_dict_areas` VALUES ('744', '230800', '230881', '同江市');
INSERT INTO `t_dict_areas` VALUES ('745', '230800', '230882', '富锦市');
INSERT INTO `t_dict_areas` VALUES ('746', '230900', '230901', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('747', '230900', '230902', '新兴区');
INSERT INTO `t_dict_areas` VALUES ('748', '230900', '230903', '桃山区');
INSERT INTO `t_dict_areas` VALUES ('749', '230900', '230904', '茄子河区');
INSERT INTO `t_dict_areas` VALUES ('750', '230900', '230921', '勃利县');
INSERT INTO `t_dict_areas` VALUES ('751', '231000', '231001', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('752', '231000', '231002', '东安区');
INSERT INTO `t_dict_areas` VALUES ('753', '231000', '231003', '阳明区');
INSERT INTO `t_dict_areas` VALUES ('754', '231000', '231004', '爱民区');
INSERT INTO `t_dict_areas` VALUES ('755', '231000', '231005', '西安区');
INSERT INTO `t_dict_areas` VALUES ('756', '231000', '231024', '东宁县');
INSERT INTO `t_dict_areas` VALUES ('757', '231000', '231025', '林口县');
INSERT INTO `t_dict_areas` VALUES ('758', '231000', '231081', '绥芬河市');
INSERT INTO `t_dict_areas` VALUES ('759', '231000', '231083', '海林市');
INSERT INTO `t_dict_areas` VALUES ('760', '231000', '231084', '宁安市');
INSERT INTO `t_dict_areas` VALUES ('761', '231000', '231085', '穆棱市');
INSERT INTO `t_dict_areas` VALUES ('762', '231100', '231101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('763', '231100', '231102', '爱辉区');
INSERT INTO `t_dict_areas` VALUES ('764', '231100', '231121', '嫩江县');
INSERT INTO `t_dict_areas` VALUES ('765', '231100', '231123', '逊克县');
INSERT INTO `t_dict_areas` VALUES ('766', '231100', '231124', '孙吴县');
INSERT INTO `t_dict_areas` VALUES ('767', '231100', '231181', '北安市');
INSERT INTO `t_dict_areas` VALUES ('768', '231100', '231182', '五大连池市');
INSERT INTO `t_dict_areas` VALUES ('769', '231200', '231201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('770', '231200', '231202', '北林区');
INSERT INTO `t_dict_areas` VALUES ('771', '231200', '231221', '望奎县');
INSERT INTO `t_dict_areas` VALUES ('772', '231200', '231222', '兰西县');
INSERT INTO `t_dict_areas` VALUES ('773', '231200', '231223', '青冈县');
INSERT INTO `t_dict_areas` VALUES ('774', '231200', '231224', '庆安县');
INSERT INTO `t_dict_areas` VALUES ('775', '231200', '231225', '明水县');
INSERT INTO `t_dict_areas` VALUES ('776', '231200', '231226', '绥棱县');
INSERT INTO `t_dict_areas` VALUES ('777', '231200', '231281', '安达市');
INSERT INTO `t_dict_areas` VALUES ('778', '231200', '231282', '肇东市');
INSERT INTO `t_dict_areas` VALUES ('779', '231200', '231283', '海伦市');
INSERT INTO `t_dict_areas` VALUES ('780', '232700', '232721', '呼玛县');
INSERT INTO `t_dict_areas` VALUES ('781', '232700', '232722', '塔河县');
INSERT INTO `t_dict_areas` VALUES ('782', '232700', '232723', '漠河县');
INSERT INTO `t_dict_areas` VALUES ('783', '310100', '310101', '黄浦区');
INSERT INTO `t_dict_areas` VALUES ('784', '310100', '310103', '卢湾区');
INSERT INTO `t_dict_areas` VALUES ('785', '310100', '310104', '徐汇区');
INSERT INTO `t_dict_areas` VALUES ('786', '310100', '310105', '长宁区');
INSERT INTO `t_dict_areas` VALUES ('787', '310100', '310106', '静安区');
INSERT INTO `t_dict_areas` VALUES ('788', '310100', '310107', '普陀区');
INSERT INTO `t_dict_areas` VALUES ('789', '310100', '310108', '闸北区');
INSERT INTO `t_dict_areas` VALUES ('790', '310100', '310109', '虹口区');
INSERT INTO `t_dict_areas` VALUES ('791', '310100', '310110', '杨浦区');
INSERT INTO `t_dict_areas` VALUES ('792', '310100', '310112', '闵行区');
INSERT INTO `t_dict_areas` VALUES ('793', '310100', '310113', '宝山区');
INSERT INTO `t_dict_areas` VALUES ('794', '310100', '310114', '嘉定区');
INSERT INTO `t_dict_areas` VALUES ('795', '310100', '310115', '浦东新区');
INSERT INTO `t_dict_areas` VALUES ('796', '310100', '310116', '金山区');
INSERT INTO `t_dict_areas` VALUES ('797', '310100', '310117', '松江区');
INSERT INTO `t_dict_areas` VALUES ('798', '310100', '310118', '青浦区');
INSERT INTO `t_dict_areas` VALUES ('799', '310100', '310119', '南汇区');
INSERT INTO `t_dict_areas` VALUES ('800', '310100', '310120', '奉贤区');
INSERT INTO `t_dict_areas` VALUES ('801', '310200', '310230', '崇明县');
INSERT INTO `t_dict_areas` VALUES ('802', '320100', '320101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('803', '320100', '320102', '玄武区');
INSERT INTO `t_dict_areas` VALUES ('804', '320100', '320103', '白下区');
INSERT INTO `t_dict_areas` VALUES ('805', '320100', '320104', '秦淮区');
INSERT INTO `t_dict_areas` VALUES ('806', '320100', '320105', '建邺区');
INSERT INTO `t_dict_areas` VALUES ('807', '320100', '320106', '鼓楼区');
INSERT INTO `t_dict_areas` VALUES ('808', '320100', '320107', '下关区');
INSERT INTO `t_dict_areas` VALUES ('809', '320100', '320111', '浦口区');
INSERT INTO `t_dict_areas` VALUES ('810', '320100', '320113', '栖霞区');
INSERT INTO `t_dict_areas` VALUES ('811', '320100', '320114', '雨花台区');
INSERT INTO `t_dict_areas` VALUES ('812', '320100', '320115', '江宁区');
INSERT INTO `t_dict_areas` VALUES ('813', '320100', '320116', '六合区');
INSERT INTO `t_dict_areas` VALUES ('814', '320100', '320124', '溧水县');
INSERT INTO `t_dict_areas` VALUES ('815', '320100', '320125', '高淳县');
INSERT INTO `t_dict_areas` VALUES ('816', '320200', '320201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('817', '320200', '320202', '崇安区');
INSERT INTO `t_dict_areas` VALUES ('818', '320200', '320203', '南长区');
INSERT INTO `t_dict_areas` VALUES ('819', '320200', '320204', '北塘区');
INSERT INTO `t_dict_areas` VALUES ('820', '320200', '320205', '锡山区');
INSERT INTO `t_dict_areas` VALUES ('821', '320200', '320206', '惠山区');
INSERT INTO `t_dict_areas` VALUES ('822', '320200', '320211', '滨湖区');
INSERT INTO `t_dict_areas` VALUES ('823', '320200', '320281', '江阴市');
INSERT INTO `t_dict_areas` VALUES ('824', '320200', '320282', '宜兴市');
INSERT INTO `t_dict_areas` VALUES ('825', '320300', '320301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('826', '320300', '320302', '鼓楼区');
INSERT INTO `t_dict_areas` VALUES ('827', '320300', '320303', '云龙区');
INSERT INTO `t_dict_areas` VALUES ('828', '320300', '320304', '九里区');
INSERT INTO `t_dict_areas` VALUES ('829', '320300', '320305', '贾汪区');
INSERT INTO `t_dict_areas` VALUES ('830', '320300', '320311', '泉山区');
INSERT INTO `t_dict_areas` VALUES ('831', '320300', '320321', '丰　县');
INSERT INTO `t_dict_areas` VALUES ('832', '320300', '320322', '沛　县');
INSERT INTO `t_dict_areas` VALUES ('833', '320300', '320323', '铜山县');
INSERT INTO `t_dict_areas` VALUES ('834', '320300', '320324', '睢宁县');
INSERT INTO `t_dict_areas` VALUES ('835', '320300', '320381', '新沂市');
INSERT INTO `t_dict_areas` VALUES ('836', '320300', '320382', '邳州市');
INSERT INTO `t_dict_areas` VALUES ('837', '320400', '320401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('838', '320400', '320402', '天宁区');
INSERT INTO `t_dict_areas` VALUES ('839', '320400', '320404', '钟楼区');
INSERT INTO `t_dict_areas` VALUES ('840', '320400', '320405', '戚墅堰区');
INSERT INTO `t_dict_areas` VALUES ('841', '320400', '320411', '新北区');
INSERT INTO `t_dict_areas` VALUES ('842', '320400', '320412', '武进区');
INSERT INTO `t_dict_areas` VALUES ('843', '320400', '320481', '溧阳市');
INSERT INTO `t_dict_areas` VALUES ('844', '320400', '320482', '金坛市');
INSERT INTO `t_dict_areas` VALUES ('845', '320500', '320501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('846', '320500', '320502', '沧浪区');
INSERT INTO `t_dict_areas` VALUES ('847', '320500', '320503', '平江区');
INSERT INTO `t_dict_areas` VALUES ('848', '320500', '320504', '金阊区');
INSERT INTO `t_dict_areas` VALUES ('849', '320500', '320505', '虎丘区');
INSERT INTO `t_dict_areas` VALUES ('850', '320500', '320506', '吴中区');
INSERT INTO `t_dict_areas` VALUES ('851', '320500', '320507', '相城区');
INSERT INTO `t_dict_areas` VALUES ('852', '320500', '320581', '常熟市');
INSERT INTO `t_dict_areas` VALUES ('853', '320500', '320582', '张家港市');
INSERT INTO `t_dict_areas` VALUES ('854', '320500', '320583', '昆山市');
INSERT INTO `t_dict_areas` VALUES ('855', '320500', '320584', '吴江市');
INSERT INTO `t_dict_areas` VALUES ('856', '320500', '320585', '太仓市');
INSERT INTO `t_dict_areas` VALUES ('857', '320600', '320601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('858', '320600', '320602', '崇川区');
INSERT INTO `t_dict_areas` VALUES ('859', '320600', '320611', '港闸区');
INSERT INTO `t_dict_areas` VALUES ('860', '320600', '320621', '海安县');
INSERT INTO `t_dict_areas` VALUES ('861', '320600', '320623', '如东县');
INSERT INTO `t_dict_areas` VALUES ('862', '320600', '320681', '启东市');
INSERT INTO `t_dict_areas` VALUES ('863', '320600', '320682', '如皋市');
INSERT INTO `t_dict_areas` VALUES ('864', '320600', '320683', '通州市');
INSERT INTO `t_dict_areas` VALUES ('865', '320600', '320684', '海门市');
INSERT INTO `t_dict_areas` VALUES ('866', '320700', '320701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('867', '320700', '320703', '连云区');
INSERT INTO `t_dict_areas` VALUES ('868', '320700', '320705', '新浦区');
INSERT INTO `t_dict_areas` VALUES ('869', '320700', '320706', '海州区');
INSERT INTO `t_dict_areas` VALUES ('870', '320700', '320721', '赣榆县');
INSERT INTO `t_dict_areas` VALUES ('871', '320700', '320722', '东海县');
INSERT INTO `t_dict_areas` VALUES ('872', '320700', '320723', '灌云县');
INSERT INTO `t_dict_areas` VALUES ('873', '320700', '320724', '灌南县');
INSERT INTO `t_dict_areas` VALUES ('874', '320800', '320801', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('875', '320800', '320802', '清河区');
INSERT INTO `t_dict_areas` VALUES ('876', '320800', '320803', '楚州区');
INSERT INTO `t_dict_areas` VALUES ('877', '320800', '320804', '淮阴区');
INSERT INTO `t_dict_areas` VALUES ('878', '320800', '320811', '清浦区');
INSERT INTO `t_dict_areas` VALUES ('879', '320800', '320826', '涟水县');
INSERT INTO `t_dict_areas` VALUES ('880', '320800', '320829', '洪泽县');
INSERT INTO `t_dict_areas` VALUES ('881', '320800', '320830', '盱眙县');
INSERT INTO `t_dict_areas` VALUES ('882', '320800', '320831', '金湖县');
INSERT INTO `t_dict_areas` VALUES ('883', '320900', '320901', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('884', '320900', '320902', '亭湖区');
INSERT INTO `t_dict_areas` VALUES ('885', '320900', '320903', '盐都区');
INSERT INTO `t_dict_areas` VALUES ('886', '320900', '320921', '响水县');
INSERT INTO `t_dict_areas` VALUES ('887', '320900', '320922', '滨海县');
INSERT INTO `t_dict_areas` VALUES ('888', '320900', '320923', '阜宁县');
INSERT INTO `t_dict_areas` VALUES ('889', '320900', '320924', '射阳县');
INSERT INTO `t_dict_areas` VALUES ('890', '320900', '320925', '建湖县');
INSERT INTO `t_dict_areas` VALUES ('891', '320900', '320981', '东台市');
INSERT INTO `t_dict_areas` VALUES ('892', '320900', '320982', '大丰市');
INSERT INTO `t_dict_areas` VALUES ('893', '321000', '321001', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('894', '321000', '321002', '广陵区');
INSERT INTO `t_dict_areas` VALUES ('895', '321000', '321003', '邗江区');
INSERT INTO `t_dict_areas` VALUES ('896', '321000', '321011', '郊　区');
INSERT INTO `t_dict_areas` VALUES ('897', '321000', '321023', '宝应县');
INSERT INTO `t_dict_areas` VALUES ('898', '321000', '321081', '仪征市');
INSERT INTO `t_dict_areas` VALUES ('899', '321000', '321084', '高邮市');
INSERT INTO `t_dict_areas` VALUES ('900', '321000', '321088', '江都市');
INSERT INTO `t_dict_areas` VALUES ('901', '321100', '321101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('902', '321100', '321102', '京口区');
INSERT INTO `t_dict_areas` VALUES ('903', '321100', '321111', '润州区');
INSERT INTO `t_dict_areas` VALUES ('904', '321100', '321112', '丹徒区');
INSERT INTO `t_dict_areas` VALUES ('905', '321100', '321181', '丹阳市');
INSERT INTO `t_dict_areas` VALUES ('906', '321100', '321182', '扬中市');
INSERT INTO `t_dict_areas` VALUES ('907', '321100', '321183', '句容市');
INSERT INTO `t_dict_areas` VALUES ('908', '321200', '321201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('909', '321200', '321202', '海陵区');
INSERT INTO `t_dict_areas` VALUES ('910', '321200', '321203', '高港区');
INSERT INTO `t_dict_areas` VALUES ('911', '321200', '321281', '兴化市');
INSERT INTO `t_dict_areas` VALUES ('912', '321200', '321282', '靖江市');
INSERT INTO `t_dict_areas` VALUES ('913', '321200', '321283', '泰兴市');
INSERT INTO `t_dict_areas` VALUES ('914', '321200', '321284', '姜堰市');
INSERT INTO `t_dict_areas` VALUES ('915', '321300', '321301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('916', '321300', '321302', '宿城区');
INSERT INTO `t_dict_areas` VALUES ('917', '321300', '321311', '宿豫区');
INSERT INTO `t_dict_areas` VALUES ('918', '321300', '321322', '沭阳县');
INSERT INTO `t_dict_areas` VALUES ('919', '321300', '321323', '泗阳县');
INSERT INTO `t_dict_areas` VALUES ('920', '321300', '321324', '泗洪县');
INSERT INTO `t_dict_areas` VALUES ('921', '330100', '330101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('922', '330100', '330102', '上城区');
INSERT INTO `t_dict_areas` VALUES ('923', '330100', '330103', '下城区');
INSERT INTO `t_dict_areas` VALUES ('924', '330100', '330104', '江干区');
INSERT INTO `t_dict_areas` VALUES ('925', '330100', '330105', '拱墅区');
INSERT INTO `t_dict_areas` VALUES ('926', '330100', '330106', '西湖区');
INSERT INTO `t_dict_areas` VALUES ('927', '330100', '330108', '滨江区');
INSERT INTO `t_dict_areas` VALUES ('928', '330100', '330109', '萧山区');
INSERT INTO `t_dict_areas` VALUES ('929', '330100', '330110', '余杭区');
INSERT INTO `t_dict_areas` VALUES ('930', '330100', '330122', '桐庐县');
INSERT INTO `t_dict_areas` VALUES ('931', '330100', '330127', '淳安县');
INSERT INTO `t_dict_areas` VALUES ('932', '330100', '330182', '建德市');
INSERT INTO `t_dict_areas` VALUES ('933', '330100', '330183', '富阳市');
INSERT INTO `t_dict_areas` VALUES ('934', '330100', '330185', '临安市');
INSERT INTO `t_dict_areas` VALUES ('935', '330200', '330201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('936', '330200', '330203', '海曙区');
INSERT INTO `t_dict_areas` VALUES ('937', '330200', '330204', '江东区');
INSERT INTO `t_dict_areas` VALUES ('938', '330200', '330205', '江北区');
INSERT INTO `t_dict_areas` VALUES ('939', '330200', '330206', '北仑区');
INSERT INTO `t_dict_areas` VALUES ('940', '330200', '330211', '镇海区');
INSERT INTO `t_dict_areas` VALUES ('941', '330200', '330212', '鄞州区');
INSERT INTO `t_dict_areas` VALUES ('942', '330200', '330225', '象山县');
INSERT INTO `t_dict_areas` VALUES ('943', '330200', '330226', '宁海县');
INSERT INTO `t_dict_areas` VALUES ('944', '330200', '330281', '余姚市');
INSERT INTO `t_dict_areas` VALUES ('945', '330200', '330282', '慈溪市');
INSERT INTO `t_dict_areas` VALUES ('946', '330200', '330283', '奉化市');
INSERT INTO `t_dict_areas` VALUES ('947', '330300', '330301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('948', '330300', '330302', '鹿城区');
INSERT INTO `t_dict_areas` VALUES ('949', '330300', '330303', '龙湾区');
INSERT INTO `t_dict_areas` VALUES ('950', '330300', '330304', '瓯海区');
INSERT INTO `t_dict_areas` VALUES ('951', '330300', '330322', '洞头县');
INSERT INTO `t_dict_areas` VALUES ('952', '330300', '330324', '永嘉县');
INSERT INTO `t_dict_areas` VALUES ('953', '330300', '330326', '平阳县');
INSERT INTO `t_dict_areas` VALUES ('954', '330300', '330327', '苍南县');
INSERT INTO `t_dict_areas` VALUES ('955', '330300', '330328', '文成县');
INSERT INTO `t_dict_areas` VALUES ('956', '330300', '330329', '泰顺县');
INSERT INTO `t_dict_areas` VALUES ('957', '330300', '330381', '瑞安市');
INSERT INTO `t_dict_areas` VALUES ('958', '330300', '330382', '乐清市');
INSERT INTO `t_dict_areas` VALUES ('959', '330400', '330401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('960', '330400', '330402', '秀城区');
INSERT INTO `t_dict_areas` VALUES ('961', '330400', '330411', '秀洲区');
INSERT INTO `t_dict_areas` VALUES ('962', '330400', '330421', '嘉善县');
INSERT INTO `t_dict_areas` VALUES ('963', '330400', '330424', '海盐县');
INSERT INTO `t_dict_areas` VALUES ('964', '330400', '330481', '海宁市');
INSERT INTO `t_dict_areas` VALUES ('965', '330400', '330482', '平湖市');
INSERT INTO `t_dict_areas` VALUES ('966', '330400', '330483', '桐乡市');
INSERT INTO `t_dict_areas` VALUES ('967', '330500', '330501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('968', '330500', '330502', '吴兴区');
INSERT INTO `t_dict_areas` VALUES ('969', '330500', '330503', '南浔区');
INSERT INTO `t_dict_areas` VALUES ('970', '330500', '330521', '德清县');
INSERT INTO `t_dict_areas` VALUES ('971', '330500', '330522', '长兴县');
INSERT INTO `t_dict_areas` VALUES ('972', '330500', '330523', '安吉县');
INSERT INTO `t_dict_areas` VALUES ('973', '330600', '330601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('974', '330600', '330602', '越城区');
INSERT INTO `t_dict_areas` VALUES ('975', '330600', '330621', '绍兴县');
INSERT INTO `t_dict_areas` VALUES ('976', '330600', '330624', '新昌县');
INSERT INTO `t_dict_areas` VALUES ('977', '330600', '330681', '诸暨市');
INSERT INTO `t_dict_areas` VALUES ('978', '330600', '330682', '上虞市');
INSERT INTO `t_dict_areas` VALUES ('979', '330600', '330683', '嵊州市');
INSERT INTO `t_dict_areas` VALUES ('980', '330700', '330701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('981', '330700', '330702', '婺城区');
INSERT INTO `t_dict_areas` VALUES ('982', '330700', '330703', '金东区');
INSERT INTO `t_dict_areas` VALUES ('983', '330700', '330723', '武义县');
INSERT INTO `t_dict_areas` VALUES ('984', '330700', '330726', '浦江县');
INSERT INTO `t_dict_areas` VALUES ('985', '330700', '330727', '磐安县');
INSERT INTO `t_dict_areas` VALUES ('986', '330700', '330781', '兰溪市');
INSERT INTO `t_dict_areas` VALUES ('987', '330700', '330782', '义乌市');
INSERT INTO `t_dict_areas` VALUES ('988', '330700', '330783', '东阳市');
INSERT INTO `t_dict_areas` VALUES ('989', '330700', '330784', '永康市');
INSERT INTO `t_dict_areas` VALUES ('990', '330800', '330801', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('991', '330800', '330802', '柯城区');
INSERT INTO `t_dict_areas` VALUES ('992', '330800', '330803', '衢江区');
INSERT INTO `t_dict_areas` VALUES ('993', '330800', '330822', '常山县');
INSERT INTO `t_dict_areas` VALUES ('994', '330800', '330824', '开化县');
INSERT INTO `t_dict_areas` VALUES ('995', '330800', '330825', '龙游县');
INSERT INTO `t_dict_areas` VALUES ('996', '330800', '330881', '江山市');
INSERT INTO `t_dict_areas` VALUES ('997', '330900', '330901', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('998', '330900', '330902', '定海区');
INSERT INTO `t_dict_areas` VALUES ('999', '330900', '330903', '普陀区');
INSERT INTO `t_dict_areas` VALUES ('1000', '330900', '330921', '岱山县');
INSERT INTO `t_dict_areas` VALUES ('1001', '330900', '330922', '嵊泗县');
INSERT INTO `t_dict_areas` VALUES ('1002', '331000', '331001', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1003', '331000', '331002', '椒江区');
INSERT INTO `t_dict_areas` VALUES ('1004', '331000', '331003', '黄岩区');
INSERT INTO `t_dict_areas` VALUES ('1005', '331000', '331004', '路桥区');
INSERT INTO `t_dict_areas` VALUES ('1006', '331000', '331021', '玉环县');
INSERT INTO `t_dict_areas` VALUES ('1007', '331000', '331022', '三门县');
INSERT INTO `t_dict_areas` VALUES ('1008', '331000', '331023', '天台县');
INSERT INTO `t_dict_areas` VALUES ('1009', '331000', '331024', '仙居县');
INSERT INTO `t_dict_areas` VALUES ('1010', '331000', '331081', '温岭市');
INSERT INTO `t_dict_areas` VALUES ('1011', '331000', '331082', '临海市');
INSERT INTO `t_dict_areas` VALUES ('1012', '331100', '331101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1013', '331100', '331102', '莲都区');
INSERT INTO `t_dict_areas` VALUES ('1014', '331100', '331121', '青田县');
INSERT INTO `t_dict_areas` VALUES ('1015', '331100', '331122', '缙云县');
INSERT INTO `t_dict_areas` VALUES ('1016', '331100', '331123', '遂昌县');
INSERT INTO `t_dict_areas` VALUES ('1017', '331100', '331124', '松阳县');
INSERT INTO `t_dict_areas` VALUES ('1018', '331100', '331125', '云和县');
INSERT INTO `t_dict_areas` VALUES ('1019', '331100', '331126', '庆元县');
INSERT INTO `t_dict_areas` VALUES ('1020', '331100', '331127', '景宁畲族自治县');
INSERT INTO `t_dict_areas` VALUES ('1021', '331100', '331181', '龙泉市');
INSERT INTO `t_dict_areas` VALUES ('1022', '340100', '340101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1023', '340100', '340102', '瑶海区');
INSERT INTO `t_dict_areas` VALUES ('1024', '340100', '340103', '庐阳区');
INSERT INTO `t_dict_areas` VALUES ('1025', '340100', '340104', '蜀山区');
INSERT INTO `t_dict_areas` VALUES ('1026', '340100', '340111', '包河区');
INSERT INTO `t_dict_areas` VALUES ('1027', '340100', '340121', '长丰县');
INSERT INTO `t_dict_areas` VALUES ('1028', '340100', '340122', '肥东县');
INSERT INTO `t_dict_areas` VALUES ('1029', '340100', '340123', '肥西县');
INSERT INTO `t_dict_areas` VALUES ('1030', '340200', '340201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1031', '340200', '340202', '镜湖区');
INSERT INTO `t_dict_areas` VALUES ('1032', '340200', '340203', '马塘区');
INSERT INTO `t_dict_areas` VALUES ('1033', '340200', '340204', '新芜区');
INSERT INTO `t_dict_areas` VALUES ('1034', '340200', '340207', '鸠江区');
INSERT INTO `t_dict_areas` VALUES ('1035', '340200', '340221', '芜湖县');
INSERT INTO `t_dict_areas` VALUES ('1036', '340200', '340222', '繁昌县');
INSERT INTO `t_dict_areas` VALUES ('1037', '340200', '340223', '南陵县');
INSERT INTO `t_dict_areas` VALUES ('1038', '340300', '340301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1039', '340300', '340302', '龙子湖区');
INSERT INTO `t_dict_areas` VALUES ('1040', '340300', '340303', '蚌山区');
INSERT INTO `t_dict_areas` VALUES ('1041', '340300', '340304', '禹会区');
INSERT INTO `t_dict_areas` VALUES ('1042', '340300', '340311', '淮上区');
INSERT INTO `t_dict_areas` VALUES ('1043', '340300', '340321', '怀远县');
INSERT INTO `t_dict_areas` VALUES ('1044', '340300', '340322', '五河县');
INSERT INTO `t_dict_areas` VALUES ('1045', '340300', '340323', '固镇县');
INSERT INTO `t_dict_areas` VALUES ('1046', '340400', '340401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1047', '340400', '340402', '大通区');
INSERT INTO `t_dict_areas` VALUES ('1048', '340400', '340403', '田家庵区');
INSERT INTO `t_dict_areas` VALUES ('1049', '340400', '340404', '谢家集区');
INSERT INTO `t_dict_areas` VALUES ('1050', '340400', '340405', '八公山区');
INSERT INTO `t_dict_areas` VALUES ('1051', '340400', '340406', '潘集区');
INSERT INTO `t_dict_areas` VALUES ('1052', '340400', '340421', '凤台县');
INSERT INTO `t_dict_areas` VALUES ('1053', '340500', '340501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1054', '340500', '340502', '金家庄区');
INSERT INTO `t_dict_areas` VALUES ('1055', '340500', '340503', '花山区');
INSERT INTO `t_dict_areas` VALUES ('1056', '340500', '340504', '雨山区');
INSERT INTO `t_dict_areas` VALUES ('1057', '340500', '340521', '当涂县');
INSERT INTO `t_dict_areas` VALUES ('1058', '340600', '340601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1059', '340600', '340602', '杜集区');
INSERT INTO `t_dict_areas` VALUES ('1060', '340600', '340603', '相山区');
INSERT INTO `t_dict_areas` VALUES ('1061', '340600', '340604', '烈山区');
INSERT INTO `t_dict_areas` VALUES ('1062', '340600', '340621', '濉溪县');
INSERT INTO `t_dict_areas` VALUES ('1063', '340700', '340701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1064', '340700', '340702', '铜官山区');
INSERT INTO `t_dict_areas` VALUES ('1065', '340700', '340703', '狮子山区');
INSERT INTO `t_dict_areas` VALUES ('1066', '340700', '340711', '郊　区');
INSERT INTO `t_dict_areas` VALUES ('1067', '340700', '340721', '铜陵县');
INSERT INTO `t_dict_areas` VALUES ('1068', '340800', '340801', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1069', '340800', '340802', '迎江区');
INSERT INTO `t_dict_areas` VALUES ('1070', '340800', '340803', '大观区');
INSERT INTO `t_dict_areas` VALUES ('1071', '340800', '340811', '郊　区');
INSERT INTO `t_dict_areas` VALUES ('1072', '340800', '340822', '怀宁县');
INSERT INTO `t_dict_areas` VALUES ('1073', '340800', '340823', '枞阳县');
INSERT INTO `t_dict_areas` VALUES ('1074', '340800', '340824', '潜山县');
INSERT INTO `t_dict_areas` VALUES ('1075', '340800', '340825', '太湖县');
INSERT INTO `t_dict_areas` VALUES ('1076', '340800', '340826', '宿松县');
INSERT INTO `t_dict_areas` VALUES ('1077', '340800', '340827', '望江县');
INSERT INTO `t_dict_areas` VALUES ('1078', '340800', '340828', '岳西县');
INSERT INTO `t_dict_areas` VALUES ('1079', '340800', '340881', '桐城市');
INSERT INTO `t_dict_areas` VALUES ('1080', '341000', '341001', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1081', '341000', '341002', '屯溪区');
INSERT INTO `t_dict_areas` VALUES ('1082', '341000', '341003', '黄山区');
INSERT INTO `t_dict_areas` VALUES ('1083', '341000', '341004', '徽州区');
INSERT INTO `t_dict_areas` VALUES ('1084', '341000', '341021', '歙　县');
INSERT INTO `t_dict_areas` VALUES ('1085', '341000', '341022', '休宁县');
INSERT INTO `t_dict_areas` VALUES ('1086', '341000', '341023', '黟　县');
INSERT INTO `t_dict_areas` VALUES ('1087', '341000', '341024', '祁门县');
INSERT INTO `t_dict_areas` VALUES ('1088', '341100', '341101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1089', '341100', '341102', '琅琊区');
INSERT INTO `t_dict_areas` VALUES ('1090', '341100', '341103', '南谯区');
INSERT INTO `t_dict_areas` VALUES ('1091', '341100', '341122', '来安县');
INSERT INTO `t_dict_areas` VALUES ('1092', '341100', '341124', '全椒县');
INSERT INTO `t_dict_areas` VALUES ('1093', '341100', '341125', '定远县');
INSERT INTO `t_dict_areas` VALUES ('1094', '341100', '341126', '凤阳县');
INSERT INTO `t_dict_areas` VALUES ('1095', '341100', '341181', '天长市');
INSERT INTO `t_dict_areas` VALUES ('1096', '341100', '341182', '明光市');
INSERT INTO `t_dict_areas` VALUES ('1097', '341200', '341201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1098', '341200', '341202', '颍州区');
INSERT INTO `t_dict_areas` VALUES ('1099', '341200', '341203', '颍东区');
INSERT INTO `t_dict_areas` VALUES ('1100', '341200', '341204', '颍泉区');
INSERT INTO `t_dict_areas` VALUES ('1101', '341200', '341221', '临泉县');
INSERT INTO `t_dict_areas` VALUES ('1102', '341200', '341222', '太和县');
INSERT INTO `t_dict_areas` VALUES ('1103', '341200', '341225', '阜南县');
INSERT INTO `t_dict_areas` VALUES ('1104', '341200', '341226', '颍上县');
INSERT INTO `t_dict_areas` VALUES ('1105', '341200', '341282', '界首市');
INSERT INTO `t_dict_areas` VALUES ('1106', '341300', '341301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1107', '341300', '341302', '墉桥区');
INSERT INTO `t_dict_areas` VALUES ('1108', '341300', '341321', '砀山县');
INSERT INTO `t_dict_areas` VALUES ('1109', '341300', '341322', '萧　县');
INSERT INTO `t_dict_areas` VALUES ('1110', '341300', '341323', '灵璧县');
INSERT INTO `t_dict_areas` VALUES ('1111', '341300', '341324', '泗　县');
INSERT INTO `t_dict_areas` VALUES ('1112', '341400', '341401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1113', '341400', '341402', '居巢区');
INSERT INTO `t_dict_areas` VALUES ('1114', '341400', '341421', '庐江县');
INSERT INTO `t_dict_areas` VALUES ('1115', '341400', '341422', '无为县');
INSERT INTO `t_dict_areas` VALUES ('1116', '341400', '341423', '含山县');
INSERT INTO `t_dict_areas` VALUES ('1117', '341400', '341424', '和　县');
INSERT INTO `t_dict_areas` VALUES ('1118', '341500', '341501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1119', '341500', '341502', '金安区');
INSERT INTO `t_dict_areas` VALUES ('1120', '341500', '341503', '裕安区');
INSERT INTO `t_dict_areas` VALUES ('1121', '341500', '341521', '寿　县');
INSERT INTO `t_dict_areas` VALUES ('1122', '341500', '341522', '霍邱县');
INSERT INTO `t_dict_areas` VALUES ('1123', '341500', '341523', '舒城县');
INSERT INTO `t_dict_areas` VALUES ('1124', '341500', '341524', '金寨县');
INSERT INTO `t_dict_areas` VALUES ('1125', '341500', '341525', '霍山县');
INSERT INTO `t_dict_areas` VALUES ('1126', '341600', '341601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1127', '341600', '341602', '谯城区');
INSERT INTO `t_dict_areas` VALUES ('1128', '341600', '341621', '涡阳县');
INSERT INTO `t_dict_areas` VALUES ('1129', '341600', '341622', '蒙城县');
INSERT INTO `t_dict_areas` VALUES ('1130', '341600', '341623', '利辛县');
INSERT INTO `t_dict_areas` VALUES ('1131', '341700', '341701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1132', '341700', '341702', '贵池区');
INSERT INTO `t_dict_areas` VALUES ('1133', '341700', '341721', '东至县');
INSERT INTO `t_dict_areas` VALUES ('1134', '341700', '341722', '石台县');
INSERT INTO `t_dict_areas` VALUES ('1135', '341700', '341723', '青阳县');
INSERT INTO `t_dict_areas` VALUES ('1136', '341800', '341801', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1137', '341800', '341802', '宣州区');
INSERT INTO `t_dict_areas` VALUES ('1138', '341800', '341821', '郎溪县');
INSERT INTO `t_dict_areas` VALUES ('1139', '341800', '341822', '广德县');
INSERT INTO `t_dict_areas` VALUES ('1140', '341800', '341823', '泾　县');
INSERT INTO `t_dict_areas` VALUES ('1141', '341800', '341824', '绩溪县');
INSERT INTO `t_dict_areas` VALUES ('1142', '341800', '341825', '旌德县');
INSERT INTO `t_dict_areas` VALUES ('1143', '341800', '341881', '宁国市');
INSERT INTO `t_dict_areas` VALUES ('1144', '350100', '350101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1145', '350100', '350102', '鼓楼区');
INSERT INTO `t_dict_areas` VALUES ('1146', '350100', '350103', '台江区');
INSERT INTO `t_dict_areas` VALUES ('1147', '350100', '350104', '仓山区');
INSERT INTO `t_dict_areas` VALUES ('1148', '350100', '350105', '马尾区');
INSERT INTO `t_dict_areas` VALUES ('1149', '350100', '350111', '晋安区');
INSERT INTO `t_dict_areas` VALUES ('1150', '350100', '350121', '闽侯县');
INSERT INTO `t_dict_areas` VALUES ('1151', '350100', '350122', '连江县');
INSERT INTO `t_dict_areas` VALUES ('1152', '350100', '350123', '罗源县');
INSERT INTO `t_dict_areas` VALUES ('1153', '350100', '350124', '闽清县');
INSERT INTO `t_dict_areas` VALUES ('1154', '350100', '350125', '永泰县');
INSERT INTO `t_dict_areas` VALUES ('1155', '350100', '350128', '平潭县');
INSERT INTO `t_dict_areas` VALUES ('1156', '350100', '350181', '福清市');
INSERT INTO `t_dict_areas` VALUES ('1157', '350100', '350182', '长乐市');
INSERT INTO `t_dict_areas` VALUES ('1158', '350200', '350201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1159', '350200', '350203', '思明区');
INSERT INTO `t_dict_areas` VALUES ('1160', '350200', '350205', '海沧区');
INSERT INTO `t_dict_areas` VALUES ('1161', '350200', '350206', '湖里区');
INSERT INTO `t_dict_areas` VALUES ('1162', '350200', '350211', '集美区');
INSERT INTO `t_dict_areas` VALUES ('1163', '350200', '350212', '同安区');
INSERT INTO `t_dict_areas` VALUES ('1164', '350200', '350213', '翔安区');
INSERT INTO `t_dict_areas` VALUES ('1165', '350300', '350301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1166', '350300', '350302', '城厢区');
INSERT INTO `t_dict_areas` VALUES ('1167', '350300', '350303', '涵江区');
INSERT INTO `t_dict_areas` VALUES ('1168', '350300', '350304', '荔城区');
INSERT INTO `t_dict_areas` VALUES ('1169', '350300', '350305', '秀屿区');
INSERT INTO `t_dict_areas` VALUES ('1170', '350300', '350322', '仙游县');
INSERT INTO `t_dict_areas` VALUES ('1171', '350400', '350401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1172', '350400', '350402', '梅列区');
INSERT INTO `t_dict_areas` VALUES ('1173', '350400', '350403', '三元区');
INSERT INTO `t_dict_areas` VALUES ('1174', '350400', '350421', '明溪县');
INSERT INTO `t_dict_areas` VALUES ('1175', '350400', '350423', '清流县');
INSERT INTO `t_dict_areas` VALUES ('1176', '350400', '350424', '宁化县');
INSERT INTO `t_dict_areas` VALUES ('1177', '350400', '350425', '大田县');
INSERT INTO `t_dict_areas` VALUES ('1178', '350400', '350426', '尤溪县');
INSERT INTO `t_dict_areas` VALUES ('1179', '350400', '350427', '沙　县');
INSERT INTO `t_dict_areas` VALUES ('1180', '350400', '350428', '将乐县');
INSERT INTO `t_dict_areas` VALUES ('1181', '350400', '350429', '泰宁县');
INSERT INTO `t_dict_areas` VALUES ('1182', '350400', '350430', '建宁县');
INSERT INTO `t_dict_areas` VALUES ('1183', '350400', '350481', '永安市');
INSERT INTO `t_dict_areas` VALUES ('1184', '350500', '350501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1185', '350500', '350502', '鲤城区');
INSERT INTO `t_dict_areas` VALUES ('1186', '350500', '350503', '丰泽区');
INSERT INTO `t_dict_areas` VALUES ('1187', '350500', '350504', '洛江区');
INSERT INTO `t_dict_areas` VALUES ('1188', '350500', '350505', '泉港区');
INSERT INTO `t_dict_areas` VALUES ('1189', '350500', '350521', '惠安县');
INSERT INTO `t_dict_areas` VALUES ('1190', '350500', '350524', '安溪县');
INSERT INTO `t_dict_areas` VALUES ('1191', '350500', '350525', '永春县');
INSERT INTO `t_dict_areas` VALUES ('1192', '350500', '350526', '德化县');
INSERT INTO `t_dict_areas` VALUES ('1193', '350500', '350527', '金门县');
INSERT INTO `t_dict_areas` VALUES ('1194', '350500', '350581', '石狮市');
INSERT INTO `t_dict_areas` VALUES ('1195', '350500', '350582', '晋江市');
INSERT INTO `t_dict_areas` VALUES ('1196', '350500', '350583', '南安市');
INSERT INTO `t_dict_areas` VALUES ('1197', '350600', '350601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1198', '350600', '350602', '芗城区');
INSERT INTO `t_dict_areas` VALUES ('1199', '350600', '350603', '龙文区');
INSERT INTO `t_dict_areas` VALUES ('1200', '350600', '350622', '云霄县');
INSERT INTO `t_dict_areas` VALUES ('1201', '350600', '350623', '漳浦县');
INSERT INTO `t_dict_areas` VALUES ('1202', '350600', '350624', '诏安县');
INSERT INTO `t_dict_areas` VALUES ('1203', '350600', '350625', '长泰县');
INSERT INTO `t_dict_areas` VALUES ('1204', '350600', '350626', '东山县');
INSERT INTO `t_dict_areas` VALUES ('1205', '350600', '350627', '南靖县');
INSERT INTO `t_dict_areas` VALUES ('1206', '350600', '350628', '平和县');
INSERT INTO `t_dict_areas` VALUES ('1207', '350600', '350629', '华安县');
INSERT INTO `t_dict_areas` VALUES ('1208', '350600', '350681', '龙海市');
INSERT INTO `t_dict_areas` VALUES ('1209', '350700', '350701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1210', '350700', '350702', '延平区');
INSERT INTO `t_dict_areas` VALUES ('1211', '350700', '350721', '顺昌县');
INSERT INTO `t_dict_areas` VALUES ('1212', '350700', '350722', '浦城县');
INSERT INTO `t_dict_areas` VALUES ('1213', '350700', '350723', '光泽县');
INSERT INTO `t_dict_areas` VALUES ('1214', '350700', '350724', '松溪县');
INSERT INTO `t_dict_areas` VALUES ('1215', '350700', '350725', '政和县');
INSERT INTO `t_dict_areas` VALUES ('1216', '350700', '350781', '邵武市');
INSERT INTO `t_dict_areas` VALUES ('1217', '350700', '350782', '武夷山市');
INSERT INTO `t_dict_areas` VALUES ('1218', '350700', '350783', '建瓯市');
INSERT INTO `t_dict_areas` VALUES ('1219', '350700', '350784', '建阳市');
INSERT INTO `t_dict_areas` VALUES ('1220', '350800', '350801', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1221', '350800', '350802', '新罗区');
INSERT INTO `t_dict_areas` VALUES ('1222', '350800', '350821', '长汀县');
INSERT INTO `t_dict_areas` VALUES ('1223', '350800', '350822', '永定县');
INSERT INTO `t_dict_areas` VALUES ('1224', '350800', '350823', '上杭县');
INSERT INTO `t_dict_areas` VALUES ('1225', '350800', '350824', '武平县');
INSERT INTO `t_dict_areas` VALUES ('1226', '350800', '350825', '连城县');
INSERT INTO `t_dict_areas` VALUES ('1227', '350800', '350881', '漳平市');
INSERT INTO `t_dict_areas` VALUES ('1228', '350900', '350901', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1229', '350900', '350902', '蕉城区');
INSERT INTO `t_dict_areas` VALUES ('1230', '350900', '350921', '霞浦县');
INSERT INTO `t_dict_areas` VALUES ('1231', '350900', '350922', '古田县');
INSERT INTO `t_dict_areas` VALUES ('1232', '350900', '350923', '屏南县');
INSERT INTO `t_dict_areas` VALUES ('1233', '350900', '350924', '寿宁县');
INSERT INTO `t_dict_areas` VALUES ('1234', '350900', '350925', '周宁县');
INSERT INTO `t_dict_areas` VALUES ('1235', '350900', '350926', '柘荣县');
INSERT INTO `t_dict_areas` VALUES ('1236', '350900', '350981', '福安市');
INSERT INTO `t_dict_areas` VALUES ('1237', '350900', '350982', '福鼎市');
INSERT INTO `t_dict_areas` VALUES ('1238', '360100', '360101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1239', '360100', '360102', '东湖区');
INSERT INTO `t_dict_areas` VALUES ('1240', '360100', '360103', '西湖区');
INSERT INTO `t_dict_areas` VALUES ('1241', '360100', '360104', '青云谱区');
INSERT INTO `t_dict_areas` VALUES ('1242', '360100', '360105', '湾里区');
INSERT INTO `t_dict_areas` VALUES ('1243', '360100', '360111', '青山湖区');
INSERT INTO `t_dict_areas` VALUES ('1244', '360100', '360121', '南昌县');
INSERT INTO `t_dict_areas` VALUES ('1245', '360100', '360122', '新建县');
INSERT INTO `t_dict_areas` VALUES ('1246', '360100', '360123', '安义县');
INSERT INTO `t_dict_areas` VALUES ('1247', '360100', '360124', '进贤县');
INSERT INTO `t_dict_areas` VALUES ('1248', '360200', '360201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1249', '360200', '360202', '昌江区');
INSERT INTO `t_dict_areas` VALUES ('1250', '360200', '360203', '珠山区');
INSERT INTO `t_dict_areas` VALUES ('1251', '360200', '360222', '浮梁县');
INSERT INTO `t_dict_areas` VALUES ('1252', '360200', '360281', '乐平市');
INSERT INTO `t_dict_areas` VALUES ('1253', '360300', '360301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1254', '360300', '360302', '安源区');
INSERT INTO `t_dict_areas` VALUES ('1255', '360300', '360313', '湘东区');
INSERT INTO `t_dict_areas` VALUES ('1256', '360300', '360321', '莲花县');
INSERT INTO `t_dict_areas` VALUES ('1257', '360300', '360322', '上栗县');
INSERT INTO `t_dict_areas` VALUES ('1258', '360300', '360323', '芦溪县');
INSERT INTO `t_dict_areas` VALUES ('1259', '360400', '360401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1260', '360400', '360402', '庐山区');
INSERT INTO `t_dict_areas` VALUES ('1261', '360400', '360403', '浔阳区');
INSERT INTO `t_dict_areas` VALUES ('1262', '360400', '360421', '九江县');
INSERT INTO `t_dict_areas` VALUES ('1263', '360400', '360423', '武宁县');
INSERT INTO `t_dict_areas` VALUES ('1264', '360400', '360424', '修水县');
INSERT INTO `t_dict_areas` VALUES ('1265', '360400', '360425', '永修县');
INSERT INTO `t_dict_areas` VALUES ('1266', '360400', '360426', '德安县');
INSERT INTO `t_dict_areas` VALUES ('1267', '360400', '360427', '星子县');
INSERT INTO `t_dict_areas` VALUES ('1268', '360400', '360428', '都昌县');
INSERT INTO `t_dict_areas` VALUES ('1269', '360400', '360429', '湖口县');
INSERT INTO `t_dict_areas` VALUES ('1270', '360400', '360430', '彭泽县');
INSERT INTO `t_dict_areas` VALUES ('1271', '360400', '360481', '瑞昌市');
INSERT INTO `t_dict_areas` VALUES ('1272', '360500', '360501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1273', '360500', '360502', '渝水区');
INSERT INTO `t_dict_areas` VALUES ('1274', '360500', '360521', '分宜县');
INSERT INTO `t_dict_areas` VALUES ('1275', '360600', '360601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1276', '360600', '360602', '月湖区');
INSERT INTO `t_dict_areas` VALUES ('1277', '360600', '360622', '余江县');
INSERT INTO `t_dict_areas` VALUES ('1278', '360600', '360681', '贵溪市');
INSERT INTO `t_dict_areas` VALUES ('1279', '360700', '360701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1280', '360700', '360702', '章贡区');
INSERT INTO `t_dict_areas` VALUES ('1281', '360700', '360721', '赣　县');
INSERT INTO `t_dict_areas` VALUES ('1282', '360700', '360722', '信丰县');
INSERT INTO `t_dict_areas` VALUES ('1283', '360700', '360723', '大余县');
INSERT INTO `t_dict_areas` VALUES ('1284', '360700', '360724', '上犹县');
INSERT INTO `t_dict_areas` VALUES ('1285', '360700', '360725', '崇义县');
INSERT INTO `t_dict_areas` VALUES ('1286', '360700', '360726', '安远县');
INSERT INTO `t_dict_areas` VALUES ('1287', '360700', '360727', '龙南县');
INSERT INTO `t_dict_areas` VALUES ('1288', '360700', '360728', '定南县');
INSERT INTO `t_dict_areas` VALUES ('1289', '360700', '360729', '全南县');
INSERT INTO `t_dict_areas` VALUES ('1290', '360700', '360730', '宁都县');
INSERT INTO `t_dict_areas` VALUES ('1291', '360700', '360731', '于都县');
INSERT INTO `t_dict_areas` VALUES ('1292', '360700', '360732', '兴国县');
INSERT INTO `t_dict_areas` VALUES ('1293', '360700', '360733', '会昌县');
INSERT INTO `t_dict_areas` VALUES ('1294', '360700', '360734', '寻乌县');
INSERT INTO `t_dict_areas` VALUES ('1295', '360700', '360735', '石城县');
INSERT INTO `t_dict_areas` VALUES ('1296', '360700', '360781', '瑞金市');
INSERT INTO `t_dict_areas` VALUES ('1297', '360700', '360782', '南康市');
INSERT INTO `t_dict_areas` VALUES ('1298', '360800', '360801', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1299', '360800', '360802', '吉州区');
INSERT INTO `t_dict_areas` VALUES ('1300', '360800', '360803', '青原区');
INSERT INTO `t_dict_areas` VALUES ('1301', '360800', '360821', '吉安县');
INSERT INTO `t_dict_areas` VALUES ('1302', '360800', '360822', '吉水县');
INSERT INTO `t_dict_areas` VALUES ('1303', '360800', '360823', '峡江县');
INSERT INTO `t_dict_areas` VALUES ('1304', '360800', '360824', '新干县');
INSERT INTO `t_dict_areas` VALUES ('1305', '360800', '360825', '永丰县');
INSERT INTO `t_dict_areas` VALUES ('1306', '360800', '360826', '泰和县');
INSERT INTO `t_dict_areas` VALUES ('1307', '360800', '360827', '遂川县');
INSERT INTO `t_dict_areas` VALUES ('1308', '360800', '360828', '万安县');
INSERT INTO `t_dict_areas` VALUES ('1309', '360800', '360829', '安福县');
INSERT INTO `t_dict_areas` VALUES ('1310', '360800', '360830', '永新县');
INSERT INTO `t_dict_areas` VALUES ('1311', '360800', '360881', '井冈山市');
INSERT INTO `t_dict_areas` VALUES ('1312', '360900', '360901', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1313', '360900', '360902', '袁州区');
INSERT INTO `t_dict_areas` VALUES ('1314', '360900', '360921', '奉新县');
INSERT INTO `t_dict_areas` VALUES ('1315', '360900', '360922', '万载县');
INSERT INTO `t_dict_areas` VALUES ('1316', '360900', '360923', '上高县');
INSERT INTO `t_dict_areas` VALUES ('1317', '360900', '360924', '宜丰县');
INSERT INTO `t_dict_areas` VALUES ('1318', '360900', '360925', '靖安县');
INSERT INTO `t_dict_areas` VALUES ('1319', '360900', '360926', '铜鼓县');
INSERT INTO `t_dict_areas` VALUES ('1320', '360900', '360981', '丰城市');
INSERT INTO `t_dict_areas` VALUES ('1321', '360900', '360982', '樟树市');
INSERT INTO `t_dict_areas` VALUES ('1322', '360900', '360983', '高安市');
INSERT INTO `t_dict_areas` VALUES ('1323', '361000', '361001', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1324', '361000', '361002', '临川区');
INSERT INTO `t_dict_areas` VALUES ('1325', '361000', '361021', '南城县');
INSERT INTO `t_dict_areas` VALUES ('1326', '361000', '361022', '黎川县');
INSERT INTO `t_dict_areas` VALUES ('1327', '361000', '361023', '南丰县');
INSERT INTO `t_dict_areas` VALUES ('1328', '361000', '361024', '崇仁县');
INSERT INTO `t_dict_areas` VALUES ('1329', '361000', '361025', '乐安县');
INSERT INTO `t_dict_areas` VALUES ('1330', '361000', '361026', '宜黄县');
INSERT INTO `t_dict_areas` VALUES ('1331', '361000', '361027', '金溪县');
INSERT INTO `t_dict_areas` VALUES ('1332', '361000', '361028', '资溪县');
INSERT INTO `t_dict_areas` VALUES ('1333', '361000', '361029', '东乡县');
INSERT INTO `t_dict_areas` VALUES ('1334', '361000', '361030', '广昌县');
INSERT INTO `t_dict_areas` VALUES ('1335', '361100', '361101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1336', '361100', '361102', '信州区');
INSERT INTO `t_dict_areas` VALUES ('1337', '361100', '361121', '上饶县');
INSERT INTO `t_dict_areas` VALUES ('1338', '361100', '361122', '广丰县');
INSERT INTO `t_dict_areas` VALUES ('1339', '361100', '361123', '玉山县');
INSERT INTO `t_dict_areas` VALUES ('1340', '361100', '361124', '铅山县');
INSERT INTO `t_dict_areas` VALUES ('1341', '361100', '361125', '横峰县');
INSERT INTO `t_dict_areas` VALUES ('1342', '361100', '361126', '弋阳县');
INSERT INTO `t_dict_areas` VALUES ('1343', '361100', '361127', '余干县');
INSERT INTO `t_dict_areas` VALUES ('1344', '361100', '361128', '鄱阳县');
INSERT INTO `t_dict_areas` VALUES ('1345', '361100', '361129', '万年县');
INSERT INTO `t_dict_areas` VALUES ('1346', '361100', '361130', '婺源县');
INSERT INTO `t_dict_areas` VALUES ('1347', '361100', '361181', '德兴市');
INSERT INTO `t_dict_areas` VALUES ('1348', '370100', '370101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1349', '370100', '370102', '历下区');
INSERT INTO `t_dict_areas` VALUES ('1350', '370100', '370103', '市中区');
INSERT INTO `t_dict_areas` VALUES ('1351', '370100', '370104', '槐荫区');
INSERT INTO `t_dict_areas` VALUES ('1352', '370100', '370105', '天桥区');
INSERT INTO `t_dict_areas` VALUES ('1353', '370100', '370112', '历城区');
INSERT INTO `t_dict_areas` VALUES ('1354', '370100', '370113', '长清区');
INSERT INTO `t_dict_areas` VALUES ('1355', '370100', '370124', '平阴县');
INSERT INTO `t_dict_areas` VALUES ('1356', '370100', '370125', '济阳县');
INSERT INTO `t_dict_areas` VALUES ('1357', '370100', '370126', '商河县');
INSERT INTO `t_dict_areas` VALUES ('1358', '370100', '370181', '章丘市');
INSERT INTO `t_dict_areas` VALUES ('1359', '370200', '370201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1360', '370200', '370202', '市南区');
INSERT INTO `t_dict_areas` VALUES ('1361', '370200', '370203', '市北区');
INSERT INTO `t_dict_areas` VALUES ('1362', '370200', '370205', '四方区');
INSERT INTO `t_dict_areas` VALUES ('1363', '370200', '370211', '黄岛区');
INSERT INTO `t_dict_areas` VALUES ('1364', '370200', '370212', '崂山区');
INSERT INTO `t_dict_areas` VALUES ('1365', '370200', '370213', '李沧区');
INSERT INTO `t_dict_areas` VALUES ('1366', '370200', '370214', '城阳区');
INSERT INTO `t_dict_areas` VALUES ('1367', '370200', '370281', '胶州市');
INSERT INTO `t_dict_areas` VALUES ('1368', '370200', '370282', '即墨市');
INSERT INTO `t_dict_areas` VALUES ('1369', '370200', '370283', '平度市');
INSERT INTO `t_dict_areas` VALUES ('1370', '370200', '370284', '胶南市');
INSERT INTO `t_dict_areas` VALUES ('1371', '370200', '370285', '莱西市');
INSERT INTO `t_dict_areas` VALUES ('1372', '370300', '370301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1373', '370300', '370302', '淄川区');
INSERT INTO `t_dict_areas` VALUES ('1374', '370300', '370303', '张店区');
INSERT INTO `t_dict_areas` VALUES ('1375', '370300', '370304', '博山区');
INSERT INTO `t_dict_areas` VALUES ('1376', '370300', '370305', '临淄区');
INSERT INTO `t_dict_areas` VALUES ('1377', '370300', '370306', '周村区');
INSERT INTO `t_dict_areas` VALUES ('1378', '370300', '370321', '桓台县');
INSERT INTO `t_dict_areas` VALUES ('1379', '370300', '370322', '高青县');
INSERT INTO `t_dict_areas` VALUES ('1380', '370300', '370323', '沂源县');
INSERT INTO `t_dict_areas` VALUES ('1381', '370400', '370401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1382', '370400', '370402', '市中区');
INSERT INTO `t_dict_areas` VALUES ('1383', '370400', '370403', '薛城区');
INSERT INTO `t_dict_areas` VALUES ('1384', '370400', '370404', '峄城区');
INSERT INTO `t_dict_areas` VALUES ('1385', '370400', '370405', '台儿庄区');
INSERT INTO `t_dict_areas` VALUES ('1386', '370400', '370406', '山亭区');
INSERT INTO `t_dict_areas` VALUES ('1387', '370400', '370481', '滕州市');
INSERT INTO `t_dict_areas` VALUES ('1388', '370500', '370501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1389', '370500', '370502', '东营区');
INSERT INTO `t_dict_areas` VALUES ('1390', '370500', '370503', '河口区');
INSERT INTO `t_dict_areas` VALUES ('1391', '370500', '370521', '垦利县');
INSERT INTO `t_dict_areas` VALUES ('1392', '370500', '370522', '利津县');
INSERT INTO `t_dict_areas` VALUES ('1393', '370500', '370523', '广饶县');
INSERT INTO `t_dict_areas` VALUES ('1394', '370600', '370601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1395', '370600', '370602', '芝罘区');
INSERT INTO `t_dict_areas` VALUES ('1396', '370600', '370611', '福山区');
INSERT INTO `t_dict_areas` VALUES ('1397', '370600', '370612', '牟平区');
INSERT INTO `t_dict_areas` VALUES ('1398', '370600', '370613', '莱山区');
INSERT INTO `t_dict_areas` VALUES ('1399', '370600', '370634', '长岛县');
INSERT INTO `t_dict_areas` VALUES ('1400', '370600', '370681', '龙口市');
INSERT INTO `t_dict_areas` VALUES ('1401', '370600', '370682', '莱阳市');
INSERT INTO `t_dict_areas` VALUES ('1402', '370600', '370683', '莱州市');
INSERT INTO `t_dict_areas` VALUES ('1403', '370600', '370684', '蓬莱市');
INSERT INTO `t_dict_areas` VALUES ('1404', '370600', '370685', '招远市');
INSERT INTO `t_dict_areas` VALUES ('1405', '370600', '370686', '栖霞市');
INSERT INTO `t_dict_areas` VALUES ('1406', '370600', '370687', '海阳市');
INSERT INTO `t_dict_areas` VALUES ('1407', '370700', '370701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1408', '370700', '370702', '潍城区');
INSERT INTO `t_dict_areas` VALUES ('1409', '370700', '370703', '寒亭区');
INSERT INTO `t_dict_areas` VALUES ('1410', '370700', '370704', '坊子区');
INSERT INTO `t_dict_areas` VALUES ('1411', '370700', '370705', '奎文区');
INSERT INTO `t_dict_areas` VALUES ('1412', '370700', '370724', '临朐县');
INSERT INTO `t_dict_areas` VALUES ('1413', '370700', '370725', '昌乐县');
INSERT INTO `t_dict_areas` VALUES ('1414', '370700', '370781', '青州市');
INSERT INTO `t_dict_areas` VALUES ('1415', '370700', '370782', '诸城市');
INSERT INTO `t_dict_areas` VALUES ('1416', '370700', '370783', '寿光市');
INSERT INTO `t_dict_areas` VALUES ('1417', '370700', '370784', '安丘市');
INSERT INTO `t_dict_areas` VALUES ('1418', '370700', '370785', '高密市');
INSERT INTO `t_dict_areas` VALUES ('1419', '370700', '370786', '昌邑市');
INSERT INTO `t_dict_areas` VALUES ('1420', '370800', '370801', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1421', '370800', '370802', '市中区');
INSERT INTO `t_dict_areas` VALUES ('1422', '370800', '370811', '任城区');
INSERT INTO `t_dict_areas` VALUES ('1423', '370800', '370826', '微山县');
INSERT INTO `t_dict_areas` VALUES ('1424', '370800', '370827', '鱼台县');
INSERT INTO `t_dict_areas` VALUES ('1425', '370800', '370828', '金乡县');
INSERT INTO `t_dict_areas` VALUES ('1426', '370800', '370829', '嘉祥县');
INSERT INTO `t_dict_areas` VALUES ('1427', '370800', '370830', '汶上县');
INSERT INTO `t_dict_areas` VALUES ('1428', '370800', '370831', '泗水县');
INSERT INTO `t_dict_areas` VALUES ('1429', '370800', '370832', '梁山县');
INSERT INTO `t_dict_areas` VALUES ('1430', '370800', '370881', '曲阜市');
INSERT INTO `t_dict_areas` VALUES ('1431', '370800', '370882', '兖州市');
INSERT INTO `t_dict_areas` VALUES ('1432', '370800', '370883', '邹城市');
INSERT INTO `t_dict_areas` VALUES ('1433', '370900', '370901', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1434', '370900', '370902', '泰山区');
INSERT INTO `t_dict_areas` VALUES ('1435', '370900', '370903', '岱岳区');
INSERT INTO `t_dict_areas` VALUES ('1436', '370900', '370921', '宁阳县');
INSERT INTO `t_dict_areas` VALUES ('1437', '370900', '370923', '东平县');
INSERT INTO `t_dict_areas` VALUES ('1438', '370900', '370982', '新泰市');
INSERT INTO `t_dict_areas` VALUES ('1439', '370900', '370983', '肥城市');
INSERT INTO `t_dict_areas` VALUES ('1440', '371000', '371001', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1441', '371000', '371002', '环翠区');
INSERT INTO `t_dict_areas` VALUES ('1442', '371000', '371081', '文登市');
INSERT INTO `t_dict_areas` VALUES ('1443', '371000', '371082', '荣成市');
INSERT INTO `t_dict_areas` VALUES ('1444', '371000', '371083', '乳山市');
INSERT INTO `t_dict_areas` VALUES ('1445', '371100', '371101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1446', '371100', '371102', '东港区');
INSERT INTO `t_dict_areas` VALUES ('1447', '371100', '371103', '岚山区');
INSERT INTO `t_dict_areas` VALUES ('1448', '371100', '371121', '五莲县');
INSERT INTO `t_dict_areas` VALUES ('1449', '371100', '371122', '莒　县');
INSERT INTO `t_dict_areas` VALUES ('1450', '371200', '371201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1451', '371200', '371202', '莱城区');
INSERT INTO `t_dict_areas` VALUES ('1452', '371200', '371203', '钢城区');
INSERT INTO `t_dict_areas` VALUES ('1453', '371300', '371301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1454', '371300', '371302', '兰山区');
INSERT INTO `t_dict_areas` VALUES ('1455', '371300', '371311', '罗庄区');
INSERT INTO `t_dict_areas` VALUES ('1456', '371300', '371312', '河东区');
INSERT INTO `t_dict_areas` VALUES ('1457', '371300', '371321', '沂南县');
INSERT INTO `t_dict_areas` VALUES ('1458', '371300', '371322', '郯城县');
INSERT INTO `t_dict_areas` VALUES ('1459', '371300', '371323', '沂水县');
INSERT INTO `t_dict_areas` VALUES ('1460', '371300', '371324', '苍山县');
INSERT INTO `t_dict_areas` VALUES ('1461', '371300', '371325', '费　县');
INSERT INTO `t_dict_areas` VALUES ('1462', '371300', '371326', '平邑县');
INSERT INTO `t_dict_areas` VALUES ('1463', '371300', '371327', '莒南县');
INSERT INTO `t_dict_areas` VALUES ('1464', '371300', '371328', '蒙阴县');
INSERT INTO `t_dict_areas` VALUES ('1465', '371300', '371329', '临沭县');
INSERT INTO `t_dict_areas` VALUES ('1466', '371400', '371401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1467', '371400', '371402', '德城区');
INSERT INTO `t_dict_areas` VALUES ('1468', '371400', '371421', '陵　县');
INSERT INTO `t_dict_areas` VALUES ('1469', '371400', '371422', '宁津县');
INSERT INTO `t_dict_areas` VALUES ('1470', '371400', '371423', '庆云县');
INSERT INTO `t_dict_areas` VALUES ('1471', '371400', '371424', '临邑县');
INSERT INTO `t_dict_areas` VALUES ('1472', '371400', '371425', '齐河县');
INSERT INTO `t_dict_areas` VALUES ('1473', '371400', '371426', '平原县');
INSERT INTO `t_dict_areas` VALUES ('1474', '371400', '371427', '夏津县');
INSERT INTO `t_dict_areas` VALUES ('1475', '371400', '371428', '武城县');
INSERT INTO `t_dict_areas` VALUES ('1476', '371400', '371481', '乐陵市');
INSERT INTO `t_dict_areas` VALUES ('1477', '371400', '371482', '禹城市');
INSERT INTO `t_dict_areas` VALUES ('1478', '371500', '371501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1479', '371500', '371502', '东昌府区');
INSERT INTO `t_dict_areas` VALUES ('1480', '371500', '371521', '阳谷县');
INSERT INTO `t_dict_areas` VALUES ('1481', '371500', '371522', '莘　县');
INSERT INTO `t_dict_areas` VALUES ('1482', '371500', '371523', '茌平县');
INSERT INTO `t_dict_areas` VALUES ('1483', '371500', '371524', '东阿县');
INSERT INTO `t_dict_areas` VALUES ('1484', '371500', '371525', '冠　县');
INSERT INTO `t_dict_areas` VALUES ('1485', '371500', '371526', '高唐县');
INSERT INTO `t_dict_areas` VALUES ('1486', '371500', '371581', '临清市');
INSERT INTO `t_dict_areas` VALUES ('1487', '371600', '371601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1488', '371600', '371602', '滨城区');
INSERT INTO `t_dict_areas` VALUES ('1489', '371600', '371621', '惠民县');
INSERT INTO `t_dict_areas` VALUES ('1490', '371600', '371622', '阳信县');
INSERT INTO `t_dict_areas` VALUES ('1491', '371600', '371623', '无棣县');
INSERT INTO `t_dict_areas` VALUES ('1492', '371600', '371624', '沾化县');
INSERT INTO `t_dict_areas` VALUES ('1493', '371600', '371625', '博兴县');
INSERT INTO `t_dict_areas` VALUES ('1494', '371600', '371626', '邹平县');
INSERT INTO `t_dict_areas` VALUES ('1495', '371700', '371701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1496', '371700', '371702', '牡丹区');
INSERT INTO `t_dict_areas` VALUES ('1497', '371700', '371721', '曹　县');
INSERT INTO `t_dict_areas` VALUES ('1498', '371700', '371722', '单　县');
INSERT INTO `t_dict_areas` VALUES ('1499', '371700', '371723', '成武县');
INSERT INTO `t_dict_areas` VALUES ('1500', '371700', '371724', '巨野县');
INSERT INTO `t_dict_areas` VALUES ('1501', '371700', '371725', '郓城县');
INSERT INTO `t_dict_areas` VALUES ('1502', '371700', '371726', '鄄城县');
INSERT INTO `t_dict_areas` VALUES ('1503', '371700', '371727', '定陶县');
INSERT INTO `t_dict_areas` VALUES ('1504', '371700', '371728', '东明县');
INSERT INTO `t_dict_areas` VALUES ('1505', '410100', '410101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1506', '410100', '410102', '中原区');
INSERT INTO `t_dict_areas` VALUES ('1507', '410100', '410103', '二七区');
INSERT INTO `t_dict_areas` VALUES ('1508', '410100', '410104', '管城回族区');
INSERT INTO `t_dict_areas` VALUES ('1509', '410100', '410105', '金水区');
INSERT INTO `t_dict_areas` VALUES ('1510', '410100', '410106', '上街区');
INSERT INTO `t_dict_areas` VALUES ('1511', '410100', '410108', '邙山区');
INSERT INTO `t_dict_areas` VALUES ('1512', '410100', '410122', '中牟县');
INSERT INTO `t_dict_areas` VALUES ('1513', '410100', '410181', '巩义市');
INSERT INTO `t_dict_areas` VALUES ('1514', '410100', '410182', '荥阳市');
INSERT INTO `t_dict_areas` VALUES ('1515', '410100', '410183', '新密市');
INSERT INTO `t_dict_areas` VALUES ('1516', '410100', '410184', '新郑市');
INSERT INTO `t_dict_areas` VALUES ('1517', '410100', '410185', '登封市');
INSERT INTO `t_dict_areas` VALUES ('1518', '410200', '410201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1519', '410200', '410202', '龙亭区');
INSERT INTO `t_dict_areas` VALUES ('1520', '410200', '410203', '顺河回族区');
INSERT INTO `t_dict_areas` VALUES ('1521', '410200', '410204', '鼓楼区');
INSERT INTO `t_dict_areas` VALUES ('1522', '410200', '410205', '南关区');
INSERT INTO `t_dict_areas` VALUES ('1523', '410200', '410211', '郊　区');
INSERT INTO `t_dict_areas` VALUES ('1524', '410200', '410221', '杞　县');
INSERT INTO `t_dict_areas` VALUES ('1525', '410200', '410222', '通许县');
INSERT INTO `t_dict_areas` VALUES ('1526', '410200', '410223', '尉氏县');
INSERT INTO `t_dict_areas` VALUES ('1527', '410200', '410224', '开封县');
INSERT INTO `t_dict_areas` VALUES ('1528', '410200', '410225', '兰考县');
INSERT INTO `t_dict_areas` VALUES ('1529', '410300', '410301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1530', '410300', '410302', '老城区');
INSERT INTO `t_dict_areas` VALUES ('1531', '410300', '410303', '西工区');
INSERT INTO `t_dict_areas` VALUES ('1532', '410300', '410304', '廛河回族区');
INSERT INTO `t_dict_areas` VALUES ('1533', '410300', '410305', '涧西区');
INSERT INTO `t_dict_areas` VALUES ('1534', '410300', '410306', '吉利区');
INSERT INTO `t_dict_areas` VALUES ('1535', '410300', '410307', '洛龙区');
INSERT INTO `t_dict_areas` VALUES ('1536', '410300', '410322', '孟津县');
INSERT INTO `t_dict_areas` VALUES ('1537', '410300', '410323', '新安县');
INSERT INTO `t_dict_areas` VALUES ('1538', '410300', '410324', '栾川县');
INSERT INTO `t_dict_areas` VALUES ('1539', '410300', '410325', '嵩　县');
INSERT INTO `t_dict_areas` VALUES ('1540', '410300', '410326', '汝阳县');
INSERT INTO `t_dict_areas` VALUES ('1541', '410300', '410327', '宜阳县');
INSERT INTO `t_dict_areas` VALUES ('1542', '410300', '410328', '洛宁县');
INSERT INTO `t_dict_areas` VALUES ('1543', '410300', '410329', '伊川县');
INSERT INTO `t_dict_areas` VALUES ('1544', '410300', '410381', '偃师市');
INSERT INTO `t_dict_areas` VALUES ('1545', '410400', '410401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1546', '410400', '410402', '新华区');
INSERT INTO `t_dict_areas` VALUES ('1547', '410400', '410403', '卫东区');
INSERT INTO `t_dict_areas` VALUES ('1548', '410400', '410404', '石龙区');
INSERT INTO `t_dict_areas` VALUES ('1549', '410400', '410411', '湛河区');
INSERT INTO `t_dict_areas` VALUES ('1550', '410400', '410421', '宝丰县');
INSERT INTO `t_dict_areas` VALUES ('1551', '410400', '410422', '叶　县');
INSERT INTO `t_dict_areas` VALUES ('1552', '410400', '410423', '鲁山县');
INSERT INTO `t_dict_areas` VALUES ('1553', '410400', '410425', '郏　县');
INSERT INTO `t_dict_areas` VALUES ('1554', '410400', '410481', '舞钢市');
INSERT INTO `t_dict_areas` VALUES ('1555', '410400', '410482', '汝州市');
INSERT INTO `t_dict_areas` VALUES ('1556', '410500', '410501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1557', '410500', '410502', '文峰区');
INSERT INTO `t_dict_areas` VALUES ('1558', '410500', '410503', '北关区');
INSERT INTO `t_dict_areas` VALUES ('1559', '410500', '410505', '殷都区');
INSERT INTO `t_dict_areas` VALUES ('1560', '410500', '410506', '龙安区');
INSERT INTO `t_dict_areas` VALUES ('1561', '410500', '410522', '安阳县');
INSERT INTO `t_dict_areas` VALUES ('1562', '410500', '410523', '汤阴县');
INSERT INTO `t_dict_areas` VALUES ('1563', '410500', '410526', '滑　县');
INSERT INTO `t_dict_areas` VALUES ('1564', '410500', '410527', '内黄县');
INSERT INTO `t_dict_areas` VALUES ('1565', '410500', '410581', '林州市');
INSERT INTO `t_dict_areas` VALUES ('1566', '410600', '410601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1567', '410600', '410602', '鹤山区');
INSERT INTO `t_dict_areas` VALUES ('1568', '410600', '410603', '山城区');
INSERT INTO `t_dict_areas` VALUES ('1569', '410600', '410611', '淇滨区');
INSERT INTO `t_dict_areas` VALUES ('1570', '410600', '410621', '浚　县');
INSERT INTO `t_dict_areas` VALUES ('1571', '410600', '410622', '淇　县');
INSERT INTO `t_dict_areas` VALUES ('1572', '410700', '410701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1573', '410700', '410702', '红旗区');
INSERT INTO `t_dict_areas` VALUES ('1574', '410700', '410703', '卫滨区');
INSERT INTO `t_dict_areas` VALUES ('1575', '410700', '410704', '凤泉区');
INSERT INTO `t_dict_areas` VALUES ('1576', '410700', '410711', '牧野区');
INSERT INTO `t_dict_areas` VALUES ('1577', '410700', '410721', '新乡县');
INSERT INTO `t_dict_areas` VALUES ('1578', '410700', '410724', '获嘉县');
INSERT INTO `t_dict_areas` VALUES ('1579', '410700', '410725', '原阳县');
INSERT INTO `t_dict_areas` VALUES ('1580', '410700', '410726', '延津县');
INSERT INTO `t_dict_areas` VALUES ('1581', '410700', '410727', '封丘县');
INSERT INTO `t_dict_areas` VALUES ('1582', '410700', '410728', '长垣县');
INSERT INTO `t_dict_areas` VALUES ('1583', '410700', '410781', '卫辉市');
INSERT INTO `t_dict_areas` VALUES ('1584', '410700', '410782', '辉县市');
INSERT INTO `t_dict_areas` VALUES ('1585', '410800', '410801', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1586', '410800', '410802', '解放区');
INSERT INTO `t_dict_areas` VALUES ('1587', '410800', '410803', '中站区');
INSERT INTO `t_dict_areas` VALUES ('1588', '410800', '410804', '马村区');
INSERT INTO `t_dict_areas` VALUES ('1589', '410800', '410811', '山阳区');
INSERT INTO `t_dict_areas` VALUES ('1590', '410800', '410821', '修武县');
INSERT INTO `t_dict_areas` VALUES ('1591', '410800', '410822', '博爱县');
INSERT INTO `t_dict_areas` VALUES ('1592', '410800', '410823', '武陟县');
INSERT INTO `t_dict_areas` VALUES ('1593', '410800', '410825', '温　县');
INSERT INTO `t_dict_areas` VALUES ('1594', '410800', '410881', '济源市');
INSERT INTO `t_dict_areas` VALUES ('1595', '410800', '410882', '沁阳市');
INSERT INTO `t_dict_areas` VALUES ('1596', '410800', '410883', '孟州市');
INSERT INTO `t_dict_areas` VALUES ('1597', '410900', '410901', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1598', '410900', '410902', '华龙区');
INSERT INTO `t_dict_areas` VALUES ('1599', '410900', '410922', '清丰县');
INSERT INTO `t_dict_areas` VALUES ('1600', '410900', '410923', '南乐县');
INSERT INTO `t_dict_areas` VALUES ('1601', '410900', '410926', '范　县');
INSERT INTO `t_dict_areas` VALUES ('1602', '410900', '410927', '台前县');
INSERT INTO `t_dict_areas` VALUES ('1603', '410900', '410928', '濮阳县');
INSERT INTO `t_dict_areas` VALUES ('1604', '411000', '411001', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1605', '411000', '411002', '魏都区');
INSERT INTO `t_dict_areas` VALUES ('1606', '411000', '411023', '许昌县');
INSERT INTO `t_dict_areas` VALUES ('1607', '411000', '411024', '鄢陵县');
INSERT INTO `t_dict_areas` VALUES ('1608', '411000', '411025', '襄城县');
INSERT INTO `t_dict_areas` VALUES ('1609', '411000', '411081', '禹州市');
INSERT INTO `t_dict_areas` VALUES ('1610', '411000', '411082', '长葛市');
INSERT INTO `t_dict_areas` VALUES ('1611', '411100', '411101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1612', '411100', '411102', '源汇区');
INSERT INTO `t_dict_areas` VALUES ('1613', '411100', '411103', '郾城区');
INSERT INTO `t_dict_areas` VALUES ('1614', '411100', '411104', '召陵区');
INSERT INTO `t_dict_areas` VALUES ('1615', '411100', '411121', '舞阳县');
INSERT INTO `t_dict_areas` VALUES ('1616', '411100', '411122', '临颍县');
INSERT INTO `t_dict_areas` VALUES ('1617', '411200', '411201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1618', '411200', '411202', '湖滨区');
INSERT INTO `t_dict_areas` VALUES ('1619', '411200', '411221', '渑池县');
INSERT INTO `t_dict_areas` VALUES ('1620', '411200', '411222', '陕　县');
INSERT INTO `t_dict_areas` VALUES ('1621', '411200', '411224', '卢氏县');
INSERT INTO `t_dict_areas` VALUES ('1622', '411200', '411281', '义马市');
INSERT INTO `t_dict_areas` VALUES ('1623', '411200', '411282', '灵宝市');
INSERT INTO `t_dict_areas` VALUES ('1624', '411300', '411301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1625', '411300', '411302', '宛城区');
INSERT INTO `t_dict_areas` VALUES ('1626', '411300', '411303', '卧龙区');
INSERT INTO `t_dict_areas` VALUES ('1627', '411300', '411321', '南召县');
INSERT INTO `t_dict_areas` VALUES ('1628', '411300', '411322', '方城县');
INSERT INTO `t_dict_areas` VALUES ('1629', '411300', '411323', '西峡县');
INSERT INTO `t_dict_areas` VALUES ('1630', '411300', '411324', '镇平县');
INSERT INTO `t_dict_areas` VALUES ('1631', '411300', '411325', '内乡县');
INSERT INTO `t_dict_areas` VALUES ('1632', '411300', '411326', '淅川县');
INSERT INTO `t_dict_areas` VALUES ('1633', '411300', '411327', '社旗县');
INSERT INTO `t_dict_areas` VALUES ('1634', '411300', '411328', '唐河县');
INSERT INTO `t_dict_areas` VALUES ('1635', '411300', '411329', '新野县');
INSERT INTO `t_dict_areas` VALUES ('1636', '411300', '411330', '桐柏县');
INSERT INTO `t_dict_areas` VALUES ('1637', '411300', '411381', '邓州市');
INSERT INTO `t_dict_areas` VALUES ('1638', '411400', '411401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1639', '411400', '411402', '梁园区');
INSERT INTO `t_dict_areas` VALUES ('1640', '411400', '411403', '睢阳区');
INSERT INTO `t_dict_areas` VALUES ('1641', '411400', '411421', '民权县');
INSERT INTO `t_dict_areas` VALUES ('1642', '411400', '411422', '睢　县');
INSERT INTO `t_dict_areas` VALUES ('1643', '411400', '411423', '宁陵县');
INSERT INTO `t_dict_areas` VALUES ('1644', '411400', '411424', '柘城县');
INSERT INTO `t_dict_areas` VALUES ('1645', '411400', '411425', '虞城县');
INSERT INTO `t_dict_areas` VALUES ('1646', '411400', '411426', '夏邑县');
INSERT INTO `t_dict_areas` VALUES ('1647', '411400', '411481', '永城市');
INSERT INTO `t_dict_areas` VALUES ('1648', '411500', '411501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1649', '411500', '411502', '师河区');
INSERT INTO `t_dict_areas` VALUES ('1650', '411500', '411503', '平桥区');
INSERT INTO `t_dict_areas` VALUES ('1651', '411500', '411521', '罗山县');
INSERT INTO `t_dict_areas` VALUES ('1652', '411500', '411522', '光山县');
INSERT INTO `t_dict_areas` VALUES ('1653', '411500', '411523', '新　县');
INSERT INTO `t_dict_areas` VALUES ('1654', '411500', '411524', '商城县');
INSERT INTO `t_dict_areas` VALUES ('1655', '411500', '411525', '固始县');
INSERT INTO `t_dict_areas` VALUES ('1656', '411500', '411526', '潢川县');
INSERT INTO `t_dict_areas` VALUES ('1657', '411500', '411527', '淮滨县');
INSERT INTO `t_dict_areas` VALUES ('1658', '411500', '411528', '息　县');
INSERT INTO `t_dict_areas` VALUES ('1659', '411600', '411601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1660', '411600', '411602', '川汇区');
INSERT INTO `t_dict_areas` VALUES ('1661', '411600', '411621', '扶沟县');
INSERT INTO `t_dict_areas` VALUES ('1662', '411600', '411622', '西华县');
INSERT INTO `t_dict_areas` VALUES ('1663', '411600', '411623', '商水县');
INSERT INTO `t_dict_areas` VALUES ('1664', '411600', '411624', '沈丘县');
INSERT INTO `t_dict_areas` VALUES ('1665', '411600', '411625', '郸城县');
INSERT INTO `t_dict_areas` VALUES ('1666', '411600', '411626', '淮阳县');
INSERT INTO `t_dict_areas` VALUES ('1667', '411600', '411627', '太康县');
INSERT INTO `t_dict_areas` VALUES ('1668', '411600', '411628', '鹿邑县');
INSERT INTO `t_dict_areas` VALUES ('1669', '411600', '411681', '项城市');
INSERT INTO `t_dict_areas` VALUES ('1670', '411700', '411701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1671', '411700', '411702', '驿城区');
INSERT INTO `t_dict_areas` VALUES ('1672', '411700', '411721', '西平县');
INSERT INTO `t_dict_areas` VALUES ('1673', '411700', '411722', '上蔡县');
INSERT INTO `t_dict_areas` VALUES ('1674', '411700', '411723', '平舆县');
INSERT INTO `t_dict_areas` VALUES ('1675', '411700', '411724', '正阳县');
INSERT INTO `t_dict_areas` VALUES ('1676', '411700', '411725', '确山县');
INSERT INTO `t_dict_areas` VALUES ('1677', '411700', '411726', '泌阳县');
INSERT INTO `t_dict_areas` VALUES ('1678', '411700', '411727', '汝南县');
INSERT INTO `t_dict_areas` VALUES ('1679', '411700', '411728', '遂平县');
INSERT INTO `t_dict_areas` VALUES ('1680', '411700', '411729', '新蔡县');
INSERT INTO `t_dict_areas` VALUES ('1681', '420100', '420101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1682', '420100', '420102', '江岸区');
INSERT INTO `t_dict_areas` VALUES ('1683', '420100', '420103', '江汉区');
INSERT INTO `t_dict_areas` VALUES ('1684', '420100', '420104', '乔口区');
INSERT INTO `t_dict_areas` VALUES ('1685', '420100', '420105', '汉阳区');
INSERT INTO `t_dict_areas` VALUES ('1686', '420100', '420106', '武昌区');
INSERT INTO `t_dict_areas` VALUES ('1687', '420100', '420107', '青山区');
INSERT INTO `t_dict_areas` VALUES ('1688', '420100', '420111', '洪山区');
INSERT INTO `t_dict_areas` VALUES ('1689', '420100', '420112', '东西湖区');
INSERT INTO `t_dict_areas` VALUES ('1690', '420100', '420113', '汉南区');
INSERT INTO `t_dict_areas` VALUES ('1691', '420100', '420114', '蔡甸区');
INSERT INTO `t_dict_areas` VALUES ('1692', '420100', '420115', '江夏区');
INSERT INTO `t_dict_areas` VALUES ('1693', '420100', '420116', '黄陂区');
INSERT INTO `t_dict_areas` VALUES ('1694', '420100', '420117', '新洲区');
INSERT INTO `t_dict_areas` VALUES ('1695', '420200', '420201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1696', '420200', '420202', '黄石港区');
INSERT INTO `t_dict_areas` VALUES ('1697', '420200', '420203', '西塞山区');
INSERT INTO `t_dict_areas` VALUES ('1698', '420200', '420204', '下陆区');
INSERT INTO `t_dict_areas` VALUES ('1699', '420200', '420205', '铁山区');
INSERT INTO `t_dict_areas` VALUES ('1700', '420200', '420222', '阳新县');
INSERT INTO `t_dict_areas` VALUES ('1701', '420200', '420281', '大冶市');
INSERT INTO `t_dict_areas` VALUES ('1702', '420300', '420301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1703', '420300', '420302', '茅箭区');
INSERT INTO `t_dict_areas` VALUES ('1704', '420300', '420303', '张湾区');
INSERT INTO `t_dict_areas` VALUES ('1705', '420300', '420321', '郧　县');
INSERT INTO `t_dict_areas` VALUES ('1706', '420300', '420322', '郧西县');
INSERT INTO `t_dict_areas` VALUES ('1707', '420300', '420323', '竹山县');
INSERT INTO `t_dict_areas` VALUES ('1708', '420300', '420324', '竹溪县');
INSERT INTO `t_dict_areas` VALUES ('1709', '420300', '420325', '房　县');
INSERT INTO `t_dict_areas` VALUES ('1710', '420300', '420381', '丹江口市');
INSERT INTO `t_dict_areas` VALUES ('1711', '420500', '420501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1712', '420500', '420502', '西陵区');
INSERT INTO `t_dict_areas` VALUES ('1713', '420500', '420503', '伍家岗区');
INSERT INTO `t_dict_areas` VALUES ('1714', '420500', '420504', '点军区');
INSERT INTO `t_dict_areas` VALUES ('1715', '420500', '420505', '猇亭区');
INSERT INTO `t_dict_areas` VALUES ('1716', '420500', '420506', '夷陵区');
INSERT INTO `t_dict_areas` VALUES ('1717', '420500', '420525', '远安县');
INSERT INTO `t_dict_areas` VALUES ('1718', '420500', '420526', '兴山县');
INSERT INTO `t_dict_areas` VALUES ('1719', '420500', '420527', '秭归县');
INSERT INTO `t_dict_areas` VALUES ('1720', '420500', '420528', '长阳土家族自治县');
INSERT INTO `t_dict_areas` VALUES ('1721', '420500', '420529', '五峰土家族自治县');
INSERT INTO `t_dict_areas` VALUES ('1722', '420500', '420581', '宜都市');
INSERT INTO `t_dict_areas` VALUES ('1723', '420500', '420582', '当阳市');
INSERT INTO `t_dict_areas` VALUES ('1724', '420500', '420583', '枝江市');
INSERT INTO `t_dict_areas` VALUES ('1725', '420600', '420601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1726', '420600', '420602', '襄城区');
INSERT INTO `t_dict_areas` VALUES ('1727', '420600', '420606', '樊城区');
INSERT INTO `t_dict_areas` VALUES ('1728', '420600', '420607', '襄阳区');
INSERT INTO `t_dict_areas` VALUES ('1729', '420600', '420624', '南漳县');
INSERT INTO `t_dict_areas` VALUES ('1730', '420600', '420625', '谷城县');
INSERT INTO `t_dict_areas` VALUES ('1731', '420600', '420626', '保康县');
INSERT INTO `t_dict_areas` VALUES ('1732', '420600', '420682', '老河口市');
INSERT INTO `t_dict_areas` VALUES ('1733', '420600', '420683', '枣阳市');
INSERT INTO `t_dict_areas` VALUES ('1734', '420600', '420684', '宜城市');
INSERT INTO `t_dict_areas` VALUES ('1735', '420700', '420701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1736', '420700', '420702', '梁子湖区');
INSERT INTO `t_dict_areas` VALUES ('1737', '420700', '420703', '华容区');
INSERT INTO `t_dict_areas` VALUES ('1738', '420700', '420704', '鄂城区');
INSERT INTO `t_dict_areas` VALUES ('1739', '420800', '420801', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1740', '420800', '420802', '东宝区');
INSERT INTO `t_dict_areas` VALUES ('1741', '420800', '420804', '掇刀区');
INSERT INTO `t_dict_areas` VALUES ('1742', '420800', '420821', '京山县');
INSERT INTO `t_dict_areas` VALUES ('1743', '420800', '420822', '沙洋县');
INSERT INTO `t_dict_areas` VALUES ('1744', '420800', '420881', '钟祥市');
INSERT INTO `t_dict_areas` VALUES ('1745', '420900', '420901', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1746', '420900', '420902', '孝南区');
INSERT INTO `t_dict_areas` VALUES ('1747', '420900', '420921', '孝昌县');
INSERT INTO `t_dict_areas` VALUES ('1748', '420900', '420922', '大悟县');
INSERT INTO `t_dict_areas` VALUES ('1749', '420900', '420923', '云梦县');
INSERT INTO `t_dict_areas` VALUES ('1750', '420900', '420981', '应城市');
INSERT INTO `t_dict_areas` VALUES ('1751', '420900', '420982', '安陆市');
INSERT INTO `t_dict_areas` VALUES ('1752', '420900', '420984', '汉川市');
INSERT INTO `t_dict_areas` VALUES ('1753', '421000', '421001', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1754', '421000', '421002', '沙市区');
INSERT INTO `t_dict_areas` VALUES ('1755', '421000', '421003', '荆州区');
INSERT INTO `t_dict_areas` VALUES ('1756', '421000', '421022', '公安县');
INSERT INTO `t_dict_areas` VALUES ('1757', '421000', '421023', '监利县');
INSERT INTO `t_dict_areas` VALUES ('1758', '421000', '421024', '江陵县');
INSERT INTO `t_dict_areas` VALUES ('1759', '421000', '421081', '石首市');
INSERT INTO `t_dict_areas` VALUES ('1760', '421000', '421083', '洪湖市');
INSERT INTO `t_dict_areas` VALUES ('1761', '421000', '421087', '松滋市');
INSERT INTO `t_dict_areas` VALUES ('1762', '421100', '421101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1763', '421100', '421102', '黄州区');
INSERT INTO `t_dict_areas` VALUES ('1764', '421100', '421121', '团风县');
INSERT INTO `t_dict_areas` VALUES ('1765', '421100', '421122', '红安县');
INSERT INTO `t_dict_areas` VALUES ('1766', '421100', '421123', '罗田县');
INSERT INTO `t_dict_areas` VALUES ('1767', '421100', '421124', '英山县');
INSERT INTO `t_dict_areas` VALUES ('1768', '421100', '421125', '浠水县');
INSERT INTO `t_dict_areas` VALUES ('1769', '421100', '421126', '蕲春县');
INSERT INTO `t_dict_areas` VALUES ('1770', '421100', '421127', '黄梅县');
INSERT INTO `t_dict_areas` VALUES ('1771', '421100', '421181', '麻城市');
INSERT INTO `t_dict_areas` VALUES ('1772', '421100', '421182', '武穴市');
INSERT INTO `t_dict_areas` VALUES ('1773', '421200', '421201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1774', '421200', '421202', '咸安区');
INSERT INTO `t_dict_areas` VALUES ('1775', '421200', '421221', '嘉鱼县');
INSERT INTO `t_dict_areas` VALUES ('1776', '421200', '421222', '通城县');
INSERT INTO `t_dict_areas` VALUES ('1777', '421200', '421223', '崇阳县');
INSERT INTO `t_dict_areas` VALUES ('1778', '421200', '421224', '通山县');
INSERT INTO `t_dict_areas` VALUES ('1779', '421200', '421281', '赤壁市');
INSERT INTO `t_dict_areas` VALUES ('1780', '421300', '421301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1781', '421300', '421302', '曾都区');
INSERT INTO `t_dict_areas` VALUES ('1782', '421300', '421381', '广水市');
INSERT INTO `t_dict_areas` VALUES ('1783', '422800', '422801', '恩施市');
INSERT INTO `t_dict_areas` VALUES ('1784', '422800', '422802', '利川市');
INSERT INTO `t_dict_areas` VALUES ('1785', '422800', '422822', '建始县');
INSERT INTO `t_dict_areas` VALUES ('1786', '422800', '422823', '巴东县');
INSERT INTO `t_dict_areas` VALUES ('1787', '422800', '422825', '宣恩县');
INSERT INTO `t_dict_areas` VALUES ('1788', '422800', '422826', '咸丰县');
INSERT INTO `t_dict_areas` VALUES ('1789', '422800', '422827', '来凤县');
INSERT INTO `t_dict_areas` VALUES ('1790', '422800', '422828', '鹤峰县');
INSERT INTO `t_dict_areas` VALUES ('1791', '429000', '429004', '仙桃市');
INSERT INTO `t_dict_areas` VALUES ('1792', '429000', '429005', '潜江市');
INSERT INTO `t_dict_areas` VALUES ('1793', '429000', '429006', '天门市');
INSERT INTO `t_dict_areas` VALUES ('1794', '429000', '429021', '神农架林区');
INSERT INTO `t_dict_areas` VALUES ('1795', '430100', '430101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1796', '430100', '430102', '芙蓉区');
INSERT INTO `t_dict_areas` VALUES ('1797', '430100', '430103', '天心区');
INSERT INTO `t_dict_areas` VALUES ('1798', '430100', '430104', '岳麓区');
INSERT INTO `t_dict_areas` VALUES ('1799', '430100', '430105', '开福区');
INSERT INTO `t_dict_areas` VALUES ('1800', '430100', '430111', '雨花区');
INSERT INTO `t_dict_areas` VALUES ('1801', '430100', '430121', '长沙县');
INSERT INTO `t_dict_areas` VALUES ('1802', '430100', '430122', '望城县');
INSERT INTO `t_dict_areas` VALUES ('1803', '430100', '430124', '宁乡县');
INSERT INTO `t_dict_areas` VALUES ('1804', '430100', '430181', '浏阳市');
INSERT INTO `t_dict_areas` VALUES ('1805', '430200', '430201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1806', '430200', '430202', '荷塘区');
INSERT INTO `t_dict_areas` VALUES ('1807', '430200', '430203', '芦淞区');
INSERT INTO `t_dict_areas` VALUES ('1808', '430200', '430204', '石峰区');
INSERT INTO `t_dict_areas` VALUES ('1809', '430200', '430211', '天元区');
INSERT INTO `t_dict_areas` VALUES ('1810', '430200', '430221', '株洲县');
INSERT INTO `t_dict_areas` VALUES ('1811', '430200', '430223', '攸　县');
INSERT INTO `t_dict_areas` VALUES ('1812', '430200', '430224', '茶陵县');
INSERT INTO `t_dict_areas` VALUES ('1813', '430200', '430225', '炎陵县');
INSERT INTO `t_dict_areas` VALUES ('1814', '430200', '430281', '醴陵市');
INSERT INTO `t_dict_areas` VALUES ('1815', '430300', '430301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1816', '430300', '430302', '雨湖区');
INSERT INTO `t_dict_areas` VALUES ('1817', '430300', '430304', '岳塘区');
INSERT INTO `t_dict_areas` VALUES ('1818', '430300', '430321', '湘潭县');
INSERT INTO `t_dict_areas` VALUES ('1819', '430300', '430381', '湘乡市');
INSERT INTO `t_dict_areas` VALUES ('1820', '430300', '430382', '韶山市');
INSERT INTO `t_dict_areas` VALUES ('1821', '430400', '430401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1822', '430400', '430405', '珠晖区');
INSERT INTO `t_dict_areas` VALUES ('1823', '430400', '430406', '雁峰区');
INSERT INTO `t_dict_areas` VALUES ('1824', '430400', '430407', '石鼓区');
INSERT INTO `t_dict_areas` VALUES ('1825', '430400', '430408', '蒸湘区');
INSERT INTO `t_dict_areas` VALUES ('1826', '430400', '430412', '南岳区');
INSERT INTO `t_dict_areas` VALUES ('1827', '430400', '430421', '衡阳县');
INSERT INTO `t_dict_areas` VALUES ('1828', '430400', '430422', '衡南县');
INSERT INTO `t_dict_areas` VALUES ('1829', '430400', '430423', '衡山县');
INSERT INTO `t_dict_areas` VALUES ('1830', '430400', '430424', '衡东县');
INSERT INTO `t_dict_areas` VALUES ('1831', '430400', '430426', '祁东县');
INSERT INTO `t_dict_areas` VALUES ('1832', '430400', '430481', '耒阳市');
INSERT INTO `t_dict_areas` VALUES ('1833', '430400', '430482', '常宁市');
INSERT INTO `t_dict_areas` VALUES ('1834', '430500', '430501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1835', '430500', '430502', '双清区');
INSERT INTO `t_dict_areas` VALUES ('1836', '430500', '430503', '大祥区');
INSERT INTO `t_dict_areas` VALUES ('1837', '430500', '430511', '北塔区');
INSERT INTO `t_dict_areas` VALUES ('1838', '430500', '430521', '邵东县');
INSERT INTO `t_dict_areas` VALUES ('1839', '430500', '430522', '新邵县');
INSERT INTO `t_dict_areas` VALUES ('1840', '430500', '430523', '邵阳县');
INSERT INTO `t_dict_areas` VALUES ('1841', '430500', '430524', '隆回县');
INSERT INTO `t_dict_areas` VALUES ('1842', '430500', '430525', '洞口县');
INSERT INTO `t_dict_areas` VALUES ('1843', '430500', '430527', '绥宁县');
INSERT INTO `t_dict_areas` VALUES ('1844', '430500', '430528', '新宁县');
INSERT INTO `t_dict_areas` VALUES ('1845', '430500', '430529', '城步苗族自治县');
INSERT INTO `t_dict_areas` VALUES ('1846', '430500', '430581', '武冈市');
INSERT INTO `t_dict_areas` VALUES ('1847', '430600', '430601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1848', '430600', '430602', '岳阳楼区');
INSERT INTO `t_dict_areas` VALUES ('1849', '430600', '430603', '云溪区');
INSERT INTO `t_dict_areas` VALUES ('1850', '430600', '430611', '君山区');
INSERT INTO `t_dict_areas` VALUES ('1851', '430600', '430621', '岳阳县');
INSERT INTO `t_dict_areas` VALUES ('1852', '430600', '430623', '华容县');
INSERT INTO `t_dict_areas` VALUES ('1853', '430600', '430624', '湘阴县');
INSERT INTO `t_dict_areas` VALUES ('1854', '430600', '430626', '平江县');
INSERT INTO `t_dict_areas` VALUES ('1855', '430600', '430681', '汨罗市');
INSERT INTO `t_dict_areas` VALUES ('1856', '430600', '430682', '临湘市');
INSERT INTO `t_dict_areas` VALUES ('1857', '430700', '430701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1858', '430700', '430702', '武陵区');
INSERT INTO `t_dict_areas` VALUES ('1859', '430700', '430703', '鼎城区');
INSERT INTO `t_dict_areas` VALUES ('1860', '430700', '430721', '安乡县');
INSERT INTO `t_dict_areas` VALUES ('1861', '430700', '430722', '汉寿县');
INSERT INTO `t_dict_areas` VALUES ('1862', '430700', '430723', '澧　县');
INSERT INTO `t_dict_areas` VALUES ('1863', '430700', '430724', '临澧县');
INSERT INTO `t_dict_areas` VALUES ('1864', '430700', '430725', '桃源县');
INSERT INTO `t_dict_areas` VALUES ('1865', '430700', '430726', '石门县');
INSERT INTO `t_dict_areas` VALUES ('1866', '430700', '430781', '津市市');
INSERT INTO `t_dict_areas` VALUES ('1867', '430800', '430801', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1868', '430800', '430802', '永定区');
INSERT INTO `t_dict_areas` VALUES ('1869', '430800', '430811', '武陵源区');
INSERT INTO `t_dict_areas` VALUES ('1870', '430800', '430821', '慈利县');
INSERT INTO `t_dict_areas` VALUES ('1871', '430800', '430822', '桑植县');
INSERT INTO `t_dict_areas` VALUES ('1872', '430900', '430901', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1873', '430900', '430902', '资阳区');
INSERT INTO `t_dict_areas` VALUES ('1874', '430900', '430903', '赫山区');
INSERT INTO `t_dict_areas` VALUES ('1875', '430900', '430921', '南　县');
INSERT INTO `t_dict_areas` VALUES ('1876', '430900', '430922', '桃江县');
INSERT INTO `t_dict_areas` VALUES ('1877', '430900', '430923', '安化县');
INSERT INTO `t_dict_areas` VALUES ('1878', '430900', '430981', '沅江市');
INSERT INTO `t_dict_areas` VALUES ('1879', '431000', '431001', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1880', '431000', '431002', '北湖区');
INSERT INTO `t_dict_areas` VALUES ('1881', '431000', '431003', '苏仙区');
INSERT INTO `t_dict_areas` VALUES ('1882', '431000', '431021', '桂阳县');
INSERT INTO `t_dict_areas` VALUES ('1883', '431000', '431022', '宜章县');
INSERT INTO `t_dict_areas` VALUES ('1884', '431000', '431023', '永兴县');
INSERT INTO `t_dict_areas` VALUES ('1885', '431000', '431024', '嘉禾县');
INSERT INTO `t_dict_areas` VALUES ('1886', '431000', '431025', '临武县');
INSERT INTO `t_dict_areas` VALUES ('1887', '431000', '431026', '汝城县');
INSERT INTO `t_dict_areas` VALUES ('1888', '431000', '431027', '桂东县');
INSERT INTO `t_dict_areas` VALUES ('1889', '431000', '431028', '安仁县');
INSERT INTO `t_dict_areas` VALUES ('1890', '431000', '431081', '资兴市');
INSERT INTO `t_dict_areas` VALUES ('1891', '431100', '431101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1892', '431100', '431102', '芝山区');
INSERT INTO `t_dict_areas` VALUES ('1893', '431100', '431103', '冷水滩区');
INSERT INTO `t_dict_areas` VALUES ('1894', '431100', '431121', '祁阳县');
INSERT INTO `t_dict_areas` VALUES ('1895', '431100', '431122', '东安县');
INSERT INTO `t_dict_areas` VALUES ('1896', '431100', '431123', '双牌县');
INSERT INTO `t_dict_areas` VALUES ('1897', '431100', '431124', '道　县');
INSERT INTO `t_dict_areas` VALUES ('1898', '431100', '431125', '江永县');
INSERT INTO `t_dict_areas` VALUES ('1899', '431100', '431126', '宁远县');
INSERT INTO `t_dict_areas` VALUES ('1900', '431100', '431127', '蓝山县');
INSERT INTO `t_dict_areas` VALUES ('1901', '431100', '431128', '新田县');
INSERT INTO `t_dict_areas` VALUES ('1902', '431100', '431129', '江华瑶族自治县');
INSERT INTO `t_dict_areas` VALUES ('1903', '431200', '431201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1904', '431200', '431202', '鹤城区');
INSERT INTO `t_dict_areas` VALUES ('1905', '431200', '431221', '中方县');
INSERT INTO `t_dict_areas` VALUES ('1906', '431200', '431222', '沅陵县');
INSERT INTO `t_dict_areas` VALUES ('1907', '431200', '431223', '辰溪县');
INSERT INTO `t_dict_areas` VALUES ('1908', '431200', '431224', '溆浦县');
INSERT INTO `t_dict_areas` VALUES ('1909', '431200', '431225', '会同县');
INSERT INTO `t_dict_areas` VALUES ('1910', '431200', '431226', '麻阳苗族自治县');
INSERT INTO `t_dict_areas` VALUES ('1911', '431200', '431227', '新晃侗族自治县');
INSERT INTO `t_dict_areas` VALUES ('1912', '431200', '431228', '芷江侗族自治县');
INSERT INTO `t_dict_areas` VALUES ('1913', '431200', '431229', '靖州苗族侗族自治县');
INSERT INTO `t_dict_areas` VALUES ('1914', '431200', '431230', '通道侗族自治县');
INSERT INTO `t_dict_areas` VALUES ('1915', '431200', '431281', '洪江市');
INSERT INTO `t_dict_areas` VALUES ('1916', '431300', '431301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1917', '431300', '431302', '娄星区');
INSERT INTO `t_dict_areas` VALUES ('1918', '431300', '431321', '双峰县');
INSERT INTO `t_dict_areas` VALUES ('1919', '431300', '431322', '新化县');
INSERT INTO `t_dict_areas` VALUES ('1920', '431300', '431381', '冷水江市');
INSERT INTO `t_dict_areas` VALUES ('1921', '431300', '431382', '涟源市');
INSERT INTO `t_dict_areas` VALUES ('1922', '433100', '433101', '吉首市');
INSERT INTO `t_dict_areas` VALUES ('1923', '433100', '433122', '泸溪县');
INSERT INTO `t_dict_areas` VALUES ('1924', '433100', '433123', '凤凰县');
INSERT INTO `t_dict_areas` VALUES ('1925', '433100', '433124', '花垣县');
INSERT INTO `t_dict_areas` VALUES ('1926', '433100', '433125', '保靖县');
INSERT INTO `t_dict_areas` VALUES ('1927', '433100', '433126', '古丈县');
INSERT INTO `t_dict_areas` VALUES ('1928', '433100', '433127', '永顺县');
INSERT INTO `t_dict_areas` VALUES ('1929', '433100', '433130', '龙山县');
INSERT INTO `t_dict_areas` VALUES ('1930', '440100', '440101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1931', '440100', '440102', '东山区');
INSERT INTO `t_dict_areas` VALUES ('1932', '440100', '440103', '荔湾区');
INSERT INTO `t_dict_areas` VALUES ('1933', '440100', '440104', '越秀区');
INSERT INTO `t_dict_areas` VALUES ('1934', '440100', '440105', '海珠区');
INSERT INTO `t_dict_areas` VALUES ('1935', '440100', '440106', '天河区');
INSERT INTO `t_dict_areas` VALUES ('1936', '440100', '440107', '芳村区');
INSERT INTO `t_dict_areas` VALUES ('1937', '440100', '440111', '白云区');
INSERT INTO `t_dict_areas` VALUES ('1938', '440100', '440112', '黄埔区');
INSERT INTO `t_dict_areas` VALUES ('1939', '440100', '440113', '番禺区');
INSERT INTO `t_dict_areas` VALUES ('1940', '440100', '440114', '花都区');
INSERT INTO `t_dict_areas` VALUES ('1941', '440100', '440183', '增城市');
INSERT INTO `t_dict_areas` VALUES ('1942', '440100', '440184', '从化市');
INSERT INTO `t_dict_areas` VALUES ('1943', '440200', '440201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1944', '440200', '440203', '武江区');
INSERT INTO `t_dict_areas` VALUES ('1945', '440200', '440204', '浈江区');
INSERT INTO `t_dict_areas` VALUES ('1946', '440200', '440205', '曲江区');
INSERT INTO `t_dict_areas` VALUES ('1947', '440200', '440222', '始兴县');
INSERT INTO `t_dict_areas` VALUES ('1948', '440200', '440224', '仁化县');
INSERT INTO `t_dict_areas` VALUES ('1949', '440200', '440229', '翁源县');
INSERT INTO `t_dict_areas` VALUES ('1950', '440200', '440232', '乳源瑶族自治县');
INSERT INTO `t_dict_areas` VALUES ('1951', '440200', '440233', '新丰县');
INSERT INTO `t_dict_areas` VALUES ('1952', '440200', '440281', '乐昌市');
INSERT INTO `t_dict_areas` VALUES ('1953', '440200', '440282', '南雄市');
INSERT INTO `t_dict_areas` VALUES ('1954', '440300', '440301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1955', '440300', '440303', '罗湖区');
INSERT INTO `t_dict_areas` VALUES ('1956', '440300', '440304', '福田区');
INSERT INTO `t_dict_areas` VALUES ('1957', '440300', '440305', '南山区');
INSERT INTO `t_dict_areas` VALUES ('1958', '440300', '440306', '宝安区');
INSERT INTO `t_dict_areas` VALUES ('1959', '440300', '440307', '龙岗区');
INSERT INTO `t_dict_areas` VALUES ('1960', '440300', '440308', '盐田区');
INSERT INTO `t_dict_areas` VALUES ('1961', '440400', '440401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1962', '440400', '440402', '香洲区');
INSERT INTO `t_dict_areas` VALUES ('1963', '440400', '440403', '斗门区');
INSERT INTO `t_dict_areas` VALUES ('1964', '440400', '440404', '金湾区');
INSERT INTO `t_dict_areas` VALUES ('1965', '440500', '440501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1966', '440500', '440507', '龙湖区');
INSERT INTO `t_dict_areas` VALUES ('1967', '440500', '440511', '金平区');
INSERT INTO `t_dict_areas` VALUES ('1968', '440500', '440512', '濠江区');
INSERT INTO `t_dict_areas` VALUES ('1969', '440500', '440513', '潮阳区');
INSERT INTO `t_dict_areas` VALUES ('1970', '440500', '440514', '潮南区');
INSERT INTO `t_dict_areas` VALUES ('1971', '440500', '440515', '澄海区');
INSERT INTO `t_dict_areas` VALUES ('1972', '440500', '440523', '南澳县');
INSERT INTO `t_dict_areas` VALUES ('1973', '440600', '440601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1974', '440600', '440604', '禅城区');
INSERT INTO `t_dict_areas` VALUES ('1975', '440600', '440605', '南海区');
INSERT INTO `t_dict_areas` VALUES ('1976', '440600', '440606', '顺德区');
INSERT INTO `t_dict_areas` VALUES ('1977', '440600', '440607', '三水区');
INSERT INTO `t_dict_areas` VALUES ('1978', '440600', '440608', '高明区');
INSERT INTO `t_dict_areas` VALUES ('1979', '440700', '440701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1980', '440700', '440703', '蓬江区');
INSERT INTO `t_dict_areas` VALUES ('1981', '440700', '440704', '江海区');
INSERT INTO `t_dict_areas` VALUES ('1982', '440700', '440705', '新会区');
INSERT INTO `t_dict_areas` VALUES ('1983', '440700', '440781', '台山市');
INSERT INTO `t_dict_areas` VALUES ('1984', '440700', '440783', '开平市');
INSERT INTO `t_dict_areas` VALUES ('1985', '440700', '440784', '鹤山市');
INSERT INTO `t_dict_areas` VALUES ('1986', '440700', '440785', '恩平市');
INSERT INTO `t_dict_areas` VALUES ('1987', '440800', '440801', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1988', '440800', '440802', '赤坎区');
INSERT INTO `t_dict_areas` VALUES ('1989', '440800', '440803', '霞山区');
INSERT INTO `t_dict_areas` VALUES ('1990', '440800', '440804', '坡头区');
INSERT INTO `t_dict_areas` VALUES ('1991', '440800', '440811', '麻章区');
INSERT INTO `t_dict_areas` VALUES ('1992', '440800', '440823', '遂溪县');
INSERT INTO `t_dict_areas` VALUES ('1993', '440800', '440825', '徐闻县');
INSERT INTO `t_dict_areas` VALUES ('1994', '440800', '440881', '廉江市');
INSERT INTO `t_dict_areas` VALUES ('1995', '440800', '440882', '雷州市');
INSERT INTO `t_dict_areas` VALUES ('1996', '440800', '440883', '吴川市');
INSERT INTO `t_dict_areas` VALUES ('1997', '440900', '440901', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('1998', '440900', '440902', '茂南区');
INSERT INTO `t_dict_areas` VALUES ('1999', '440900', '440903', '茂港区');
INSERT INTO `t_dict_areas` VALUES ('2000', '440900', '440923', '电白县');
INSERT INTO `t_dict_areas` VALUES ('2001', '440900', '440981', '高州市');
INSERT INTO `t_dict_areas` VALUES ('2002', '440900', '440982', '化州市');
INSERT INTO `t_dict_areas` VALUES ('2003', '440900', '440983', '信宜市');
INSERT INTO `t_dict_areas` VALUES ('2004', '441200', '441201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2005', '441200', '441202', '端州区');
INSERT INTO `t_dict_areas` VALUES ('2006', '441200', '441203', '鼎湖区');
INSERT INTO `t_dict_areas` VALUES ('2007', '441200', '441223', '广宁县');
INSERT INTO `t_dict_areas` VALUES ('2008', '441200', '441224', '怀集县');
INSERT INTO `t_dict_areas` VALUES ('2009', '441200', '441225', '封开县');
INSERT INTO `t_dict_areas` VALUES ('2010', '441200', '441226', '德庆县');
INSERT INTO `t_dict_areas` VALUES ('2011', '441200', '441283', '高要市');
INSERT INTO `t_dict_areas` VALUES ('2012', '441200', '441284', '四会市');
INSERT INTO `t_dict_areas` VALUES ('2013', '441300', '441301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2014', '441300', '441302', '惠城区');
INSERT INTO `t_dict_areas` VALUES ('2015', '441300', '441303', '惠阳区');
INSERT INTO `t_dict_areas` VALUES ('2016', '441300', '441322', '博罗县');
INSERT INTO `t_dict_areas` VALUES ('2017', '441300', '441323', '惠东县');
INSERT INTO `t_dict_areas` VALUES ('2018', '441300', '441324', '龙门县');
INSERT INTO `t_dict_areas` VALUES ('2019', '441400', '441401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2020', '441400', '441402', '梅江区');
INSERT INTO `t_dict_areas` VALUES ('2021', '441400', '441421', '梅　县');
INSERT INTO `t_dict_areas` VALUES ('2022', '441400', '441422', '大埔县');
INSERT INTO `t_dict_areas` VALUES ('2023', '441400', '441423', '丰顺县');
INSERT INTO `t_dict_areas` VALUES ('2024', '441400', '441424', '五华县');
INSERT INTO `t_dict_areas` VALUES ('2025', '441400', '441426', '平远县');
INSERT INTO `t_dict_areas` VALUES ('2026', '441400', '441427', '蕉岭县');
INSERT INTO `t_dict_areas` VALUES ('2027', '441400', '441481', '兴宁市');
INSERT INTO `t_dict_areas` VALUES ('2028', '441500', '441501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2029', '441500', '441502', '城　区');
INSERT INTO `t_dict_areas` VALUES ('2030', '441500', '441521', '海丰县');
INSERT INTO `t_dict_areas` VALUES ('2031', '441500', '441523', '陆河县');
INSERT INTO `t_dict_areas` VALUES ('2032', '441500', '441581', '陆丰市');
INSERT INTO `t_dict_areas` VALUES ('2033', '441600', '441601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2034', '441600', '441602', '源城区');
INSERT INTO `t_dict_areas` VALUES ('2035', '441600', '441621', '紫金县');
INSERT INTO `t_dict_areas` VALUES ('2036', '441600', '441622', '龙川县');
INSERT INTO `t_dict_areas` VALUES ('2037', '441600', '441623', '连平县');
INSERT INTO `t_dict_areas` VALUES ('2038', '441600', '441624', '和平县');
INSERT INTO `t_dict_areas` VALUES ('2039', '441600', '441625', '东源县');
INSERT INTO `t_dict_areas` VALUES ('2040', '441700', '441701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2041', '441700', '441702', '江城区');
INSERT INTO `t_dict_areas` VALUES ('2042', '441700', '441721', '阳西县');
INSERT INTO `t_dict_areas` VALUES ('2043', '441700', '441723', '阳东县');
INSERT INTO `t_dict_areas` VALUES ('2044', '441700', '441781', '阳春市');
INSERT INTO `t_dict_areas` VALUES ('2045', '441800', '441801', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2046', '441800', '441802', '清城区');
INSERT INTO `t_dict_areas` VALUES ('2047', '441800', '441821', '佛冈县');
INSERT INTO `t_dict_areas` VALUES ('2048', '441800', '441823', '阳山县');
INSERT INTO `t_dict_areas` VALUES ('2049', '441800', '441825', '连山壮族瑶族自治县');
INSERT INTO `t_dict_areas` VALUES ('2050', '441800', '441826', '连南瑶族自治县');
INSERT INTO `t_dict_areas` VALUES ('2051', '441800', '441827', '清新县');
INSERT INTO `t_dict_areas` VALUES ('2052', '441800', '441881', '英德市');
INSERT INTO `t_dict_areas` VALUES ('2053', '441800', '441882', '连州市');
INSERT INTO `t_dict_areas` VALUES ('2054', '445100', '445101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2055', '445100', '445102', '湘桥区');
INSERT INTO `t_dict_areas` VALUES ('2056', '445100', '445121', '潮安县');
INSERT INTO `t_dict_areas` VALUES ('2057', '445100', '445122', '饶平县');
INSERT INTO `t_dict_areas` VALUES ('2058', '445200', '445201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2059', '445200', '445202', '榕城区');
INSERT INTO `t_dict_areas` VALUES ('2060', '445200', '445221', '揭东县');
INSERT INTO `t_dict_areas` VALUES ('2061', '445200', '445222', '揭西县');
INSERT INTO `t_dict_areas` VALUES ('2062', '445200', '445224', '惠来县');
INSERT INTO `t_dict_areas` VALUES ('2063', '445200', '445281', '普宁市');
INSERT INTO `t_dict_areas` VALUES ('2064', '445300', '445301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2065', '445300', '445302', '云城区');
INSERT INTO `t_dict_areas` VALUES ('2066', '445300', '445321', '新兴县');
INSERT INTO `t_dict_areas` VALUES ('2067', '445300', '445322', '郁南县');
INSERT INTO `t_dict_areas` VALUES ('2068', '445300', '445323', '云安县');
INSERT INTO `t_dict_areas` VALUES ('2069', '445300', '445381', '罗定市');
INSERT INTO `t_dict_areas` VALUES ('2070', '450100', '450101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2071', '450100', '450102', '兴宁区');
INSERT INTO `t_dict_areas` VALUES ('2072', '450100', '450103', '青秀区');
INSERT INTO `t_dict_areas` VALUES ('2073', '450100', '450105', '江南区');
INSERT INTO `t_dict_areas` VALUES ('2074', '450100', '450107', '西乡塘区');
INSERT INTO `t_dict_areas` VALUES ('2075', '450100', '450108', '良庆区');
INSERT INTO `t_dict_areas` VALUES ('2076', '450100', '450109', '邕宁区');
INSERT INTO `t_dict_areas` VALUES ('2077', '450100', '450122', '武鸣县');
INSERT INTO `t_dict_areas` VALUES ('2078', '450100', '450123', '隆安县');
INSERT INTO `t_dict_areas` VALUES ('2079', '450100', '450124', '马山县');
INSERT INTO `t_dict_areas` VALUES ('2080', '450100', '450125', '上林县');
INSERT INTO `t_dict_areas` VALUES ('2081', '450100', '450126', '宾阳县');
INSERT INTO `t_dict_areas` VALUES ('2082', '450100', '450127', '横　县');
INSERT INTO `t_dict_areas` VALUES ('2083', '450200', '450201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2084', '450200', '450202', '城中区');
INSERT INTO `t_dict_areas` VALUES ('2085', '450200', '450203', '鱼峰区');
INSERT INTO `t_dict_areas` VALUES ('2086', '450200', '450204', '柳南区');
INSERT INTO `t_dict_areas` VALUES ('2087', '450200', '450205', '柳北区');
INSERT INTO `t_dict_areas` VALUES ('2088', '450200', '450221', '柳江县');
INSERT INTO `t_dict_areas` VALUES ('2089', '450200', '450222', '柳城县');
INSERT INTO `t_dict_areas` VALUES ('2090', '450200', '450223', '鹿寨县');
INSERT INTO `t_dict_areas` VALUES ('2091', '450200', '450224', '融安县');
INSERT INTO `t_dict_areas` VALUES ('2092', '450200', '450225', '融水苗族自治县');
INSERT INTO `t_dict_areas` VALUES ('2093', '450200', '450226', '三江侗族自治县');
INSERT INTO `t_dict_areas` VALUES ('2094', '450300', '450301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2095', '450300', '450302', '秀峰区');
INSERT INTO `t_dict_areas` VALUES ('2096', '450300', '450303', '叠彩区');
INSERT INTO `t_dict_areas` VALUES ('2097', '450300', '450304', '象山区');
INSERT INTO `t_dict_areas` VALUES ('2098', '450300', '450305', '七星区');
INSERT INTO `t_dict_areas` VALUES ('2099', '450300', '450311', '雁山区');
INSERT INTO `t_dict_areas` VALUES ('2100', '450300', '450321', '阳朔县');
INSERT INTO `t_dict_areas` VALUES ('2101', '450300', '450322', '临桂县');
INSERT INTO `t_dict_areas` VALUES ('2102', '450300', '450323', '灵川县');
INSERT INTO `t_dict_areas` VALUES ('2103', '450300', '450324', '全州县');
INSERT INTO `t_dict_areas` VALUES ('2104', '450300', '450325', '兴安县');
INSERT INTO `t_dict_areas` VALUES ('2105', '450300', '450326', '永福县');
INSERT INTO `t_dict_areas` VALUES ('2106', '450300', '450327', '灌阳县');
INSERT INTO `t_dict_areas` VALUES ('2107', '450300', '450328', '龙胜各族自治县');
INSERT INTO `t_dict_areas` VALUES ('2108', '450300', '450329', '资源县');
INSERT INTO `t_dict_areas` VALUES ('2109', '450300', '450330', '平乐县');
INSERT INTO `t_dict_areas` VALUES ('2110', '450300', '450331', '荔蒲县');
INSERT INTO `t_dict_areas` VALUES ('2111', '450300', '450332', '恭城瑶族自治县');
INSERT INTO `t_dict_areas` VALUES ('2112', '450400', '450401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2113', '450400', '450403', '万秀区');
INSERT INTO `t_dict_areas` VALUES ('2114', '450400', '450404', '蝶山区');
INSERT INTO `t_dict_areas` VALUES ('2115', '450400', '450405', '长洲区');
INSERT INTO `t_dict_areas` VALUES ('2116', '450400', '450421', '苍梧县');
INSERT INTO `t_dict_areas` VALUES ('2117', '450400', '450422', '藤　县');
INSERT INTO `t_dict_areas` VALUES ('2118', '450400', '450423', '蒙山县');
INSERT INTO `t_dict_areas` VALUES ('2119', '450400', '450481', '岑溪市');
INSERT INTO `t_dict_areas` VALUES ('2120', '450500', '450501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2121', '450500', '450502', '海城区');
INSERT INTO `t_dict_areas` VALUES ('2122', '450500', '450503', '银海区');
INSERT INTO `t_dict_areas` VALUES ('2123', '450500', '450512', '铁山港区');
INSERT INTO `t_dict_areas` VALUES ('2124', '450500', '450521', '合浦县');
INSERT INTO `t_dict_areas` VALUES ('2125', '450600', '450601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2126', '450600', '450602', '港口区');
INSERT INTO `t_dict_areas` VALUES ('2127', '450600', '450603', '防城区');
INSERT INTO `t_dict_areas` VALUES ('2128', '450600', '450621', '上思县');
INSERT INTO `t_dict_areas` VALUES ('2129', '450600', '450681', '东兴市');
INSERT INTO `t_dict_areas` VALUES ('2130', '450700', '450701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2131', '450700', '450702', '钦南区');
INSERT INTO `t_dict_areas` VALUES ('2132', '450700', '450703', '钦北区');
INSERT INTO `t_dict_areas` VALUES ('2133', '450700', '450721', '灵山县');
INSERT INTO `t_dict_areas` VALUES ('2134', '450700', '450722', '浦北县');
INSERT INTO `t_dict_areas` VALUES ('2135', '450800', '450801', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2136', '450800', '450802', '港北区');
INSERT INTO `t_dict_areas` VALUES ('2137', '450800', '450803', '港南区');
INSERT INTO `t_dict_areas` VALUES ('2138', '450800', '450804', '覃塘区');
INSERT INTO `t_dict_areas` VALUES ('2139', '450800', '450821', '平南县');
INSERT INTO `t_dict_areas` VALUES ('2140', '450800', '450881', '桂平市');
INSERT INTO `t_dict_areas` VALUES ('2141', '450900', '450901', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2142', '450900', '450902', '玉州区');
INSERT INTO `t_dict_areas` VALUES ('2143', '450900', '450921', '容　县');
INSERT INTO `t_dict_areas` VALUES ('2144', '450900', '450922', '陆川县');
INSERT INTO `t_dict_areas` VALUES ('2145', '450900', '450923', '博白县');
INSERT INTO `t_dict_areas` VALUES ('2146', '450900', '450924', '兴业县');
INSERT INTO `t_dict_areas` VALUES ('2147', '450900', '450981', '北流市');
INSERT INTO `t_dict_areas` VALUES ('2148', '451000', '451001', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2149', '451000', '451002', '右江区');
INSERT INTO `t_dict_areas` VALUES ('2150', '451000', '451021', '田阳县');
INSERT INTO `t_dict_areas` VALUES ('2151', '451000', '451022', '田东县');
INSERT INTO `t_dict_areas` VALUES ('2152', '451000', '451023', '平果县');
INSERT INTO `t_dict_areas` VALUES ('2153', '451000', '451024', '德保县');
INSERT INTO `t_dict_areas` VALUES ('2154', '451000', '451025', '靖西县');
INSERT INTO `t_dict_areas` VALUES ('2155', '451000', '451026', '那坡县');
INSERT INTO `t_dict_areas` VALUES ('2156', '451000', '451027', '凌云县');
INSERT INTO `t_dict_areas` VALUES ('2157', '451000', '451028', '乐业县');
INSERT INTO `t_dict_areas` VALUES ('2158', '451000', '451029', '田林县');
INSERT INTO `t_dict_areas` VALUES ('2159', '451000', '451030', '西林县');
INSERT INTO `t_dict_areas` VALUES ('2160', '451000', '451031', '隆林各族自治县');
INSERT INTO `t_dict_areas` VALUES ('2161', '451100', '451101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2162', '451100', '451102', '八步区');
INSERT INTO `t_dict_areas` VALUES ('2163', '451100', '451121', '昭平县');
INSERT INTO `t_dict_areas` VALUES ('2164', '451100', '451122', '钟山县');
INSERT INTO `t_dict_areas` VALUES ('2165', '451100', '451123', '富川瑶族自治县');
INSERT INTO `t_dict_areas` VALUES ('2166', '451200', '451201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2167', '451200', '451202', '金城江区');
INSERT INTO `t_dict_areas` VALUES ('2168', '451200', '451221', '南丹县');
INSERT INTO `t_dict_areas` VALUES ('2169', '451200', '451222', '天峨县');
INSERT INTO `t_dict_areas` VALUES ('2170', '451200', '451223', '凤山县');
INSERT INTO `t_dict_areas` VALUES ('2171', '451200', '451224', '东兰县');
INSERT INTO `t_dict_areas` VALUES ('2172', '451200', '451225', '罗城仫佬族自治县');
INSERT INTO `t_dict_areas` VALUES ('2173', '451200', '451226', '环江毛南族自治县');
INSERT INTO `t_dict_areas` VALUES ('2174', '451200', '451227', '巴马瑶族自治县');
INSERT INTO `t_dict_areas` VALUES ('2175', '451200', '451228', '都安瑶族自治县');
INSERT INTO `t_dict_areas` VALUES ('2176', '451200', '451229', '大化瑶族自治县');
INSERT INTO `t_dict_areas` VALUES ('2177', '451200', '451281', '宜州市');
INSERT INTO `t_dict_areas` VALUES ('2178', '451300', '451301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2179', '451300', '451302', '兴宾区');
INSERT INTO `t_dict_areas` VALUES ('2180', '451300', '451321', '忻城县');
INSERT INTO `t_dict_areas` VALUES ('2181', '451300', '451322', '象州县');
INSERT INTO `t_dict_areas` VALUES ('2182', '451300', '451323', '武宣县');
INSERT INTO `t_dict_areas` VALUES ('2183', '451300', '451324', '金秀瑶族自治县');
INSERT INTO `t_dict_areas` VALUES ('2184', '451300', '451381', '合山市');
INSERT INTO `t_dict_areas` VALUES ('2185', '451400', '451401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2186', '451400', '451402', '江洲区');
INSERT INTO `t_dict_areas` VALUES ('2187', '451400', '451421', '扶绥县');
INSERT INTO `t_dict_areas` VALUES ('2188', '451400', '451422', '宁明县');
INSERT INTO `t_dict_areas` VALUES ('2189', '451400', '451423', '龙州县');
INSERT INTO `t_dict_areas` VALUES ('2190', '451400', '451424', '大新县');
INSERT INTO `t_dict_areas` VALUES ('2191', '451400', '451425', '天等县');
INSERT INTO `t_dict_areas` VALUES ('2192', '451400', '451481', '凭祥市');
INSERT INTO `t_dict_areas` VALUES ('2193', '460100', '460101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2194', '460100', '460105', '秀英区');
INSERT INTO `t_dict_areas` VALUES ('2195', '460100', '460106', '龙华区');
INSERT INTO `t_dict_areas` VALUES ('2196', '460100', '460107', '琼山区');
INSERT INTO `t_dict_areas` VALUES ('2197', '460100', '460108', '美兰区');
INSERT INTO `t_dict_areas` VALUES ('2198', '460200', '460201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2199', '469000', '469001', '五指山市');
INSERT INTO `t_dict_areas` VALUES ('2200', '469000', '469002', '琼海市');
INSERT INTO `t_dict_areas` VALUES ('2201', '469000', '469003', '儋州市');
INSERT INTO `t_dict_areas` VALUES ('2202', '469000', '469005', '文昌市');
INSERT INTO `t_dict_areas` VALUES ('2203', '469000', '469006', '万宁市');
INSERT INTO `t_dict_areas` VALUES ('2204', '469000', '469007', '东方市');
INSERT INTO `t_dict_areas` VALUES ('2205', '469000', '469025', '定安县');
INSERT INTO `t_dict_areas` VALUES ('2206', '469000', '469026', '屯昌县');
INSERT INTO `t_dict_areas` VALUES ('2207', '469000', '469027', '澄迈县');
INSERT INTO `t_dict_areas` VALUES ('2208', '469000', '469028', '临高县');
INSERT INTO `t_dict_areas` VALUES ('2209', '469000', '469030', '白沙黎族自治县');
INSERT INTO `t_dict_areas` VALUES ('2210', '469000', '469031', '昌江黎族自治县');
INSERT INTO `t_dict_areas` VALUES ('2211', '469000', '469033', '乐东黎族自治县');
INSERT INTO `t_dict_areas` VALUES ('2212', '469000', '469034', '陵水黎族自治县');
INSERT INTO `t_dict_areas` VALUES ('2213', '469000', '469035', '保亭黎族苗族自治县');
INSERT INTO `t_dict_areas` VALUES ('2214', '469000', '469036', '琼中黎族苗族自治县');
INSERT INTO `t_dict_areas` VALUES ('2215', '469000', '469037', '西沙群岛');
INSERT INTO `t_dict_areas` VALUES ('2216', '469000', '469038', '南沙群岛');
INSERT INTO `t_dict_areas` VALUES ('2217', '469000', '469039', '中沙群岛的岛礁及其海域');
INSERT INTO `t_dict_areas` VALUES ('2218', '500100', '500101', '万州区');
INSERT INTO `t_dict_areas` VALUES ('2219', '500100', '500102', '涪陵区');
INSERT INTO `t_dict_areas` VALUES ('2220', '500100', '500103', '渝中区');
INSERT INTO `t_dict_areas` VALUES ('2221', '500100', '500104', '大渡口区');
INSERT INTO `t_dict_areas` VALUES ('2222', '500100', '500105', '江北区');
INSERT INTO `t_dict_areas` VALUES ('2223', '500100', '500106', '沙坪坝区');
INSERT INTO `t_dict_areas` VALUES ('2224', '500100', '500107', '九龙坡区');
INSERT INTO `t_dict_areas` VALUES ('2225', '500100', '500108', '南岸区');
INSERT INTO `t_dict_areas` VALUES ('2226', '500100', '500109', '北碚区');
INSERT INTO `t_dict_areas` VALUES ('2227', '500100', '500110', '万盛区');
INSERT INTO `t_dict_areas` VALUES ('2228', '500100', '500111', '双桥区');
INSERT INTO `t_dict_areas` VALUES ('2229', '500100', '500112', '渝北区');
INSERT INTO `t_dict_areas` VALUES ('2230', '500100', '500113', '巴南区');
INSERT INTO `t_dict_areas` VALUES ('2231', '500100', '500114', '黔江区');
INSERT INTO `t_dict_areas` VALUES ('2232', '500100', '500115', '长寿区');
INSERT INTO `t_dict_areas` VALUES ('2233', '500200', '500222', '綦江县');
INSERT INTO `t_dict_areas` VALUES ('2234', '500200', '500223', '潼南县');
INSERT INTO `t_dict_areas` VALUES ('2235', '500200', '500224', '铜梁县');
INSERT INTO `t_dict_areas` VALUES ('2236', '500200', '500225', '大足县');
INSERT INTO `t_dict_areas` VALUES ('2237', '500200', '500226', '荣昌县');
INSERT INTO `t_dict_areas` VALUES ('2238', '500200', '500227', '璧山县');
INSERT INTO `t_dict_areas` VALUES ('2239', '500200', '500228', '梁平县');
INSERT INTO `t_dict_areas` VALUES ('2240', '500200', '500229', '城口县');
INSERT INTO `t_dict_areas` VALUES ('2241', '500200', '500230', '丰都县');
INSERT INTO `t_dict_areas` VALUES ('2242', '500200', '500231', '垫江县');
INSERT INTO `t_dict_areas` VALUES ('2243', '500200', '500232', '武隆县');
INSERT INTO `t_dict_areas` VALUES ('2244', '500200', '500233', '忠　县');
INSERT INTO `t_dict_areas` VALUES ('2245', '500200', '500234', '开　县');
INSERT INTO `t_dict_areas` VALUES ('2246', '500200', '500235', '云阳县');
INSERT INTO `t_dict_areas` VALUES ('2247', '500200', '500236', '奉节县');
INSERT INTO `t_dict_areas` VALUES ('2248', '500200', '500237', '巫山县');
INSERT INTO `t_dict_areas` VALUES ('2249', '500200', '500238', '巫溪县');
INSERT INTO `t_dict_areas` VALUES ('2250', '500200', '500240', '石柱土家族自治县');
INSERT INTO `t_dict_areas` VALUES ('2251', '500200', '500241', '秀山土家族苗族自治县');
INSERT INTO `t_dict_areas` VALUES ('2252', '500200', '500242', '酉阳土家族苗族自治县');
INSERT INTO `t_dict_areas` VALUES ('2253', '500200', '500243', '彭水苗族土家族自治县');
INSERT INTO `t_dict_areas` VALUES ('2254', '500300', '500381', '江津市');
INSERT INTO `t_dict_areas` VALUES ('2255', '500300', '500382', '合川市');
INSERT INTO `t_dict_areas` VALUES ('2256', '500300', '500383', '永川市');
INSERT INTO `t_dict_areas` VALUES ('2257', '500300', '500384', '南川市');
INSERT INTO `t_dict_areas` VALUES ('2258', '510100', '510101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2259', '510100', '510104', '锦江区');
INSERT INTO `t_dict_areas` VALUES ('2260', '510100', '510105', '青羊区');
INSERT INTO `t_dict_areas` VALUES ('2261', '510100', '510106', '金牛区');
INSERT INTO `t_dict_areas` VALUES ('2262', '510100', '510107', '武侯区');
INSERT INTO `t_dict_areas` VALUES ('2263', '510100', '510108', '成华区');
INSERT INTO `t_dict_areas` VALUES ('2264', '510100', '510112', '龙泉驿区');
INSERT INTO `t_dict_areas` VALUES ('2265', '510100', '510113', '青白江区');
INSERT INTO `t_dict_areas` VALUES ('2266', '510100', '510114', '新都区');
INSERT INTO `t_dict_areas` VALUES ('2267', '510100', '510115', '温江县');
INSERT INTO `t_dict_areas` VALUES ('2268', '510100', '510121', '金堂县');
INSERT INTO `t_dict_areas` VALUES ('2269', '510100', '510122', '双流县');
INSERT INTO `t_dict_areas` VALUES ('2270', '510100', '510124', '郫　县');
INSERT INTO `t_dict_areas` VALUES ('2271', '510100', '510129', '大邑县');
INSERT INTO `t_dict_areas` VALUES ('2272', '510100', '510131', '蒲江县');
INSERT INTO `t_dict_areas` VALUES ('2273', '510100', '510132', '新津县');
INSERT INTO `t_dict_areas` VALUES ('2274', '510100', '510181', '都江堰市');
INSERT INTO `t_dict_areas` VALUES ('2275', '510100', '510182', '彭州市');
INSERT INTO `t_dict_areas` VALUES ('2276', '510100', '510183', '邛崃市');
INSERT INTO `t_dict_areas` VALUES ('2277', '510100', '510184', '崇州市');
INSERT INTO `t_dict_areas` VALUES ('2278', '510300', '510301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2279', '510300', '510302', '自流井区');
INSERT INTO `t_dict_areas` VALUES ('2280', '510300', '510303', '贡井区');
INSERT INTO `t_dict_areas` VALUES ('2281', '510300', '510304', '大安区');
INSERT INTO `t_dict_areas` VALUES ('2282', '510300', '510311', '沿滩区');
INSERT INTO `t_dict_areas` VALUES ('2283', '510300', '510321', '荣　县');
INSERT INTO `t_dict_areas` VALUES ('2284', '510300', '510322', '富顺县');
INSERT INTO `t_dict_areas` VALUES ('2285', '510400', '510401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2286', '510400', '510402', '东　区');
INSERT INTO `t_dict_areas` VALUES ('2287', '510400', '510403', '西　区');
INSERT INTO `t_dict_areas` VALUES ('2288', '510400', '510411', '仁和区');
INSERT INTO `t_dict_areas` VALUES ('2289', '510400', '510421', '米易县');
INSERT INTO `t_dict_areas` VALUES ('2290', '510400', '510422', '盐边县');
INSERT INTO `t_dict_areas` VALUES ('2291', '510500', '510501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2292', '510500', '510502', '江阳区');
INSERT INTO `t_dict_areas` VALUES ('2293', '510500', '510503', '纳溪区');
INSERT INTO `t_dict_areas` VALUES ('2294', '510500', '510504', '龙马潭区');
INSERT INTO `t_dict_areas` VALUES ('2295', '510500', '510521', '泸　县');
INSERT INTO `t_dict_areas` VALUES ('2296', '510500', '510522', '合江县');
INSERT INTO `t_dict_areas` VALUES ('2297', '510500', '510524', '叙永县');
INSERT INTO `t_dict_areas` VALUES ('2298', '510500', '510525', '古蔺县');
INSERT INTO `t_dict_areas` VALUES ('2299', '510600', '510601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2300', '510600', '510603', '旌阳区');
INSERT INTO `t_dict_areas` VALUES ('2301', '510600', '510623', '中江县');
INSERT INTO `t_dict_areas` VALUES ('2302', '510600', '510626', '罗江县');
INSERT INTO `t_dict_areas` VALUES ('2303', '510600', '510681', '广汉市');
INSERT INTO `t_dict_areas` VALUES ('2304', '510600', '510682', '什邡市');
INSERT INTO `t_dict_areas` VALUES ('2305', '510600', '510683', '绵竹市');
INSERT INTO `t_dict_areas` VALUES ('2306', '510700', '510701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2307', '510700', '510703', '涪城区');
INSERT INTO `t_dict_areas` VALUES ('2308', '510700', '510704', '游仙区');
INSERT INTO `t_dict_areas` VALUES ('2309', '510700', '510722', '三台县');
INSERT INTO `t_dict_areas` VALUES ('2310', '510700', '510723', '盐亭县');
INSERT INTO `t_dict_areas` VALUES ('2311', '510700', '510724', '安　县');
INSERT INTO `t_dict_areas` VALUES ('2312', '510700', '510725', '梓潼县');
INSERT INTO `t_dict_areas` VALUES ('2313', '510700', '510726', '北川羌族自治县');
INSERT INTO `t_dict_areas` VALUES ('2314', '510700', '510727', '平武县');
INSERT INTO `t_dict_areas` VALUES ('2315', '510700', '510781', '江油市');
INSERT INTO `t_dict_areas` VALUES ('2316', '510800', '510801', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2317', '510800', '510802', '市中区');
INSERT INTO `t_dict_areas` VALUES ('2318', '510800', '510811', '元坝区');
INSERT INTO `t_dict_areas` VALUES ('2319', '510800', '510812', '朝天区');
INSERT INTO `t_dict_areas` VALUES ('2320', '510800', '510821', '旺苍县');
INSERT INTO `t_dict_areas` VALUES ('2321', '510800', '510822', '青川县');
INSERT INTO `t_dict_areas` VALUES ('2322', '510800', '510823', '剑阁县');
INSERT INTO `t_dict_areas` VALUES ('2323', '510800', '510824', '苍溪县');
INSERT INTO `t_dict_areas` VALUES ('2324', '510900', '510901', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2325', '510900', '510903', '船山区');
INSERT INTO `t_dict_areas` VALUES ('2326', '510900', '510904', '安居区');
INSERT INTO `t_dict_areas` VALUES ('2327', '510900', '510921', '蓬溪县');
INSERT INTO `t_dict_areas` VALUES ('2328', '510900', '510922', '射洪县');
INSERT INTO `t_dict_areas` VALUES ('2329', '510900', '510923', '大英县');
INSERT INTO `t_dict_areas` VALUES ('2330', '511000', '511001', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2331', '511000', '511002', '市中区');
INSERT INTO `t_dict_areas` VALUES ('2332', '511000', '511011', '东兴区');
INSERT INTO `t_dict_areas` VALUES ('2333', '511000', '511024', '威远县');
INSERT INTO `t_dict_areas` VALUES ('2334', '511000', '511025', '资中县');
INSERT INTO `t_dict_areas` VALUES ('2335', '511000', '511028', '隆昌县');
INSERT INTO `t_dict_areas` VALUES ('2336', '511100', '511101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2337', '511100', '511102', '市中区');
INSERT INTO `t_dict_areas` VALUES ('2338', '511100', '511111', '沙湾区');
INSERT INTO `t_dict_areas` VALUES ('2339', '511100', '511112', '五通桥区');
INSERT INTO `t_dict_areas` VALUES ('2340', '511100', '511113', '金口河区');
INSERT INTO `t_dict_areas` VALUES ('2341', '511100', '511123', '犍为县');
INSERT INTO `t_dict_areas` VALUES ('2342', '511100', '511124', '井研县');
INSERT INTO `t_dict_areas` VALUES ('2343', '511100', '511126', '夹江县');
INSERT INTO `t_dict_areas` VALUES ('2344', '511100', '511129', '沐川县');
INSERT INTO `t_dict_areas` VALUES ('2345', '511100', '511132', '峨边彝族自治县');
INSERT INTO `t_dict_areas` VALUES ('2346', '511100', '511133', '马边彝族自治县');
INSERT INTO `t_dict_areas` VALUES ('2347', '511100', '511181', '峨眉山市');
INSERT INTO `t_dict_areas` VALUES ('2348', '511300', '511301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2349', '511300', '511302', '顺庆区');
INSERT INTO `t_dict_areas` VALUES ('2350', '511300', '511303', '高坪区');
INSERT INTO `t_dict_areas` VALUES ('2351', '511300', '511304', '嘉陵区');
INSERT INTO `t_dict_areas` VALUES ('2352', '511300', '511321', '南部县');
INSERT INTO `t_dict_areas` VALUES ('2353', '511300', '511322', '营山县');
INSERT INTO `t_dict_areas` VALUES ('2354', '511300', '511323', '蓬安县');
INSERT INTO `t_dict_areas` VALUES ('2355', '511300', '511324', '仪陇县');
INSERT INTO `t_dict_areas` VALUES ('2356', '511300', '511325', '西充县');
INSERT INTO `t_dict_areas` VALUES ('2357', '511300', '511381', '阆中市');
INSERT INTO `t_dict_areas` VALUES ('2358', '511400', '511401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2359', '511400', '511402', '东坡区');
INSERT INTO `t_dict_areas` VALUES ('2360', '511400', '511421', '仁寿县');
INSERT INTO `t_dict_areas` VALUES ('2361', '511400', '511422', '彭山县');
INSERT INTO `t_dict_areas` VALUES ('2362', '511400', '511423', '洪雅县');
INSERT INTO `t_dict_areas` VALUES ('2363', '511400', '511424', '丹棱县');
INSERT INTO `t_dict_areas` VALUES ('2364', '511400', '511425', '青神县');
INSERT INTO `t_dict_areas` VALUES ('2365', '511500', '511501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2366', '511500', '511502', '翠屏区');
INSERT INTO `t_dict_areas` VALUES ('2367', '511500', '511521', '宜宾县');
INSERT INTO `t_dict_areas` VALUES ('2368', '511500', '511522', '南溪县');
INSERT INTO `t_dict_areas` VALUES ('2369', '511500', '511523', '江安县');
INSERT INTO `t_dict_areas` VALUES ('2370', '511500', '511524', '长宁县');
INSERT INTO `t_dict_areas` VALUES ('2371', '511500', '511525', '高　县');
INSERT INTO `t_dict_areas` VALUES ('2372', '511500', '511526', '珙　县');
INSERT INTO `t_dict_areas` VALUES ('2373', '511500', '511527', '筠连县');
INSERT INTO `t_dict_areas` VALUES ('2374', '511500', '511528', '兴文县');
INSERT INTO `t_dict_areas` VALUES ('2375', '511500', '511529', '屏山县');
INSERT INTO `t_dict_areas` VALUES ('2376', '511600', '511601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2377', '511600', '511602', '广安区');
INSERT INTO `t_dict_areas` VALUES ('2378', '511600', '511621', '岳池县');
INSERT INTO `t_dict_areas` VALUES ('2379', '511600', '511622', '武胜县');
INSERT INTO `t_dict_areas` VALUES ('2380', '511600', '511623', '邻水县');
INSERT INTO `t_dict_areas` VALUES ('2381', '511600', '511681', '华莹市');
INSERT INTO `t_dict_areas` VALUES ('2382', '511700', '511701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2383', '511700', '511702', '通川区');
INSERT INTO `t_dict_areas` VALUES ('2384', '511700', '511721', '达　县');
INSERT INTO `t_dict_areas` VALUES ('2385', '511700', '511722', '宣汉县');
INSERT INTO `t_dict_areas` VALUES ('2386', '511700', '511723', '开江县');
INSERT INTO `t_dict_areas` VALUES ('2387', '511700', '511724', '大竹县');
INSERT INTO `t_dict_areas` VALUES ('2388', '511700', '511725', '渠　县');
INSERT INTO `t_dict_areas` VALUES ('2389', '511700', '511781', '万源市');
INSERT INTO `t_dict_areas` VALUES ('2390', '511800', '511801', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2391', '511800', '511802', '雨城区');
INSERT INTO `t_dict_areas` VALUES ('2392', '511800', '511821', '名山县');
INSERT INTO `t_dict_areas` VALUES ('2393', '511800', '511822', '荥经县');
INSERT INTO `t_dict_areas` VALUES ('2394', '511800', '511823', '汉源县');
INSERT INTO `t_dict_areas` VALUES ('2395', '511800', '511824', '石棉县');
INSERT INTO `t_dict_areas` VALUES ('2396', '511800', '511825', '天全县');
INSERT INTO `t_dict_areas` VALUES ('2397', '511800', '511826', '芦山县');
INSERT INTO `t_dict_areas` VALUES ('2398', '511800', '511827', '宝兴县');
INSERT INTO `t_dict_areas` VALUES ('2399', '511900', '511901', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2400', '511900', '511902', '巴州区');
INSERT INTO `t_dict_areas` VALUES ('2401', '511900', '511921', '通江县');
INSERT INTO `t_dict_areas` VALUES ('2402', '511900', '511922', '南江县');
INSERT INTO `t_dict_areas` VALUES ('2403', '511900', '511923', '平昌县');
INSERT INTO `t_dict_areas` VALUES ('2404', '512000', '512001', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2405', '512000', '512002', '雁江区');
INSERT INTO `t_dict_areas` VALUES ('2406', '512000', '512021', '安岳县');
INSERT INTO `t_dict_areas` VALUES ('2407', '512000', '512022', '乐至县');
INSERT INTO `t_dict_areas` VALUES ('2408', '512000', '512081', '简阳市');
INSERT INTO `t_dict_areas` VALUES ('2409', '513200', '513221', '汶川县');
INSERT INTO `t_dict_areas` VALUES ('2410', '513200', '513222', '理　县');
INSERT INTO `t_dict_areas` VALUES ('2411', '513200', '513223', '茂　县');
INSERT INTO `t_dict_areas` VALUES ('2412', '513200', '513224', '松潘县');
INSERT INTO `t_dict_areas` VALUES ('2413', '513200', '513225', '九寨沟县');
INSERT INTO `t_dict_areas` VALUES ('2414', '513200', '513226', '金川县');
INSERT INTO `t_dict_areas` VALUES ('2415', '513200', '513227', '小金县');
INSERT INTO `t_dict_areas` VALUES ('2416', '513200', '513228', '黑水县');
INSERT INTO `t_dict_areas` VALUES ('2417', '513200', '513229', '马尔康县');
INSERT INTO `t_dict_areas` VALUES ('2418', '513200', '513230', '壤塘县');
INSERT INTO `t_dict_areas` VALUES ('2419', '513200', '513231', '阿坝县');
INSERT INTO `t_dict_areas` VALUES ('2420', '513200', '513232', '若尔盖县');
INSERT INTO `t_dict_areas` VALUES ('2421', '513200', '513233', '红原县');
INSERT INTO `t_dict_areas` VALUES ('2422', '513300', '513321', '康定县');
INSERT INTO `t_dict_areas` VALUES ('2423', '513300', '513322', '泸定县');
INSERT INTO `t_dict_areas` VALUES ('2424', '513300', '513323', '丹巴县');
INSERT INTO `t_dict_areas` VALUES ('2425', '513300', '513324', '九龙县');
INSERT INTO `t_dict_areas` VALUES ('2426', '513300', '513325', '雅江县');
INSERT INTO `t_dict_areas` VALUES ('2427', '513300', '513326', '道孚县');
INSERT INTO `t_dict_areas` VALUES ('2428', '513300', '513327', '炉霍县');
INSERT INTO `t_dict_areas` VALUES ('2429', '513300', '513328', '甘孜县');
INSERT INTO `t_dict_areas` VALUES ('2430', '513300', '513329', '新龙县');
INSERT INTO `t_dict_areas` VALUES ('2431', '513300', '513330', '德格县');
INSERT INTO `t_dict_areas` VALUES ('2432', '513300', '513331', '白玉县');
INSERT INTO `t_dict_areas` VALUES ('2433', '513300', '513332', '石渠县');
INSERT INTO `t_dict_areas` VALUES ('2434', '513300', '513333', '色达县');
INSERT INTO `t_dict_areas` VALUES ('2435', '513300', '513334', '理塘县');
INSERT INTO `t_dict_areas` VALUES ('2436', '513300', '513335', '巴塘县');
INSERT INTO `t_dict_areas` VALUES ('2437', '513300', '513336', '乡城县');
INSERT INTO `t_dict_areas` VALUES ('2438', '513300', '513337', '稻城县');
INSERT INTO `t_dict_areas` VALUES ('2439', '513300', '513338', '得荣县');
INSERT INTO `t_dict_areas` VALUES ('2440', '513400', '513401', '西昌市');
INSERT INTO `t_dict_areas` VALUES ('2441', '513400', '513422', '木里藏族自治县');
INSERT INTO `t_dict_areas` VALUES ('2442', '513400', '513423', '盐源县');
INSERT INTO `t_dict_areas` VALUES ('2443', '513400', '513424', '德昌县');
INSERT INTO `t_dict_areas` VALUES ('2444', '513400', '513425', '会理县');
INSERT INTO `t_dict_areas` VALUES ('2445', '513400', '513426', '会东县');
INSERT INTO `t_dict_areas` VALUES ('2446', '513400', '513427', '宁南县');
INSERT INTO `t_dict_areas` VALUES ('2447', '513400', '513428', '普格县');
INSERT INTO `t_dict_areas` VALUES ('2448', '513400', '513429', '布拖县');
INSERT INTO `t_dict_areas` VALUES ('2449', '513400', '513430', '金阳县');
INSERT INTO `t_dict_areas` VALUES ('2450', '513400', '513431', '昭觉县');
INSERT INTO `t_dict_areas` VALUES ('2451', '513400', '513432', '喜德县');
INSERT INTO `t_dict_areas` VALUES ('2452', '513400', '513433', '冕宁县');
INSERT INTO `t_dict_areas` VALUES ('2453', '513400', '513434', '越西县');
INSERT INTO `t_dict_areas` VALUES ('2454', '513400', '513435', '甘洛县');
INSERT INTO `t_dict_areas` VALUES ('2455', '513400', '513436', '美姑县');
INSERT INTO `t_dict_areas` VALUES ('2456', '513400', '513437', '雷波县');
INSERT INTO `t_dict_areas` VALUES ('2457', '520100', '520101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2458', '520100', '520102', '南明区');
INSERT INTO `t_dict_areas` VALUES ('2459', '520100', '520103', '云岩区');
INSERT INTO `t_dict_areas` VALUES ('2460', '520100', '520111', '花溪区');
INSERT INTO `t_dict_areas` VALUES ('2461', '520100', '520112', '乌当区');
INSERT INTO `t_dict_areas` VALUES ('2462', '520100', '520113', '白云区');
INSERT INTO `t_dict_areas` VALUES ('2463', '520100', '520114', '小河区');
INSERT INTO `t_dict_areas` VALUES ('2464', '520100', '520121', '开阳县');
INSERT INTO `t_dict_areas` VALUES ('2465', '520100', '520122', '息烽县');
INSERT INTO `t_dict_areas` VALUES ('2466', '520100', '520123', '修文县');
INSERT INTO `t_dict_areas` VALUES ('2467', '520100', '520181', '清镇市');
INSERT INTO `t_dict_areas` VALUES ('2468', '520200', '520201', '钟山区');
INSERT INTO `t_dict_areas` VALUES ('2469', '520200', '520203', '六枝特区');
INSERT INTO `t_dict_areas` VALUES ('2470', '520200', '520221', '水城县');
INSERT INTO `t_dict_areas` VALUES ('2471', '520200', '520222', '盘　县');
INSERT INTO `t_dict_areas` VALUES ('2472', '520300', '520301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2473', '520300', '520302', '红花岗区');
INSERT INTO `t_dict_areas` VALUES ('2474', '520300', '520303', '汇川区');
INSERT INTO `t_dict_areas` VALUES ('2475', '520300', '520321', '遵义县');
INSERT INTO `t_dict_areas` VALUES ('2476', '520300', '520322', '桐梓县');
INSERT INTO `t_dict_areas` VALUES ('2477', '520300', '520323', '绥阳县');
INSERT INTO `t_dict_areas` VALUES ('2478', '520300', '520324', '正安县');
INSERT INTO `t_dict_areas` VALUES ('2479', '520300', '520325', '道真仡佬族苗族自治县');
INSERT INTO `t_dict_areas` VALUES ('2480', '520300', '520326', '务川仡佬族苗族自治县');
INSERT INTO `t_dict_areas` VALUES ('2481', '520300', '520327', '凤冈县');
INSERT INTO `t_dict_areas` VALUES ('2482', '520300', '520328', '湄潭县');
INSERT INTO `t_dict_areas` VALUES ('2483', '520300', '520329', '余庆县');
INSERT INTO `t_dict_areas` VALUES ('2484', '520300', '520330', '习水县');
INSERT INTO `t_dict_areas` VALUES ('2485', '520300', '520381', '赤水市');
INSERT INTO `t_dict_areas` VALUES ('2486', '520300', '520382', '仁怀市');
INSERT INTO `t_dict_areas` VALUES ('2487', '520400', '520401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2488', '520400', '520402', '西秀区');
INSERT INTO `t_dict_areas` VALUES ('2489', '520400', '520421', '平坝县');
INSERT INTO `t_dict_areas` VALUES ('2490', '520400', '520422', '普定县');
INSERT INTO `t_dict_areas` VALUES ('2491', '520400', '520423', '镇宁布依族苗族自治县');
INSERT INTO `t_dict_areas` VALUES ('2492', '520400', '520424', '关岭布依族苗族自治县');
INSERT INTO `t_dict_areas` VALUES ('2493', '520400', '520425', '紫云苗族布依族自治县');
INSERT INTO `t_dict_areas` VALUES ('2494', '522200', '522201', '铜仁市');
INSERT INTO `t_dict_areas` VALUES ('2495', '522200', '522222', '江口县');
INSERT INTO `t_dict_areas` VALUES ('2496', '522200', '522223', '玉屏侗族自治县');
INSERT INTO `t_dict_areas` VALUES ('2497', '522200', '522224', '石阡县');
INSERT INTO `t_dict_areas` VALUES ('2498', '522200', '522225', '思南县');
INSERT INTO `t_dict_areas` VALUES ('2499', '522200', '522226', '印江土家族苗族自治县');
INSERT INTO `t_dict_areas` VALUES ('2500', '522200', '522227', '德江县');
INSERT INTO `t_dict_areas` VALUES ('2501', '522200', '522228', '沿河土家族自治县');
INSERT INTO `t_dict_areas` VALUES ('2502', '522200', '522229', '松桃苗族自治县');
INSERT INTO `t_dict_areas` VALUES ('2503', '522200', '522230', '万山特区');
INSERT INTO `t_dict_areas` VALUES ('2504', '522300', '522301', '兴义市');
INSERT INTO `t_dict_areas` VALUES ('2505', '522300', '522322', '兴仁县');
INSERT INTO `t_dict_areas` VALUES ('2506', '522300', '522323', '普安县');
INSERT INTO `t_dict_areas` VALUES ('2507', '522300', '522324', '晴隆县');
INSERT INTO `t_dict_areas` VALUES ('2508', '522300', '522325', '贞丰县');
INSERT INTO `t_dict_areas` VALUES ('2509', '522300', '522326', '望谟县');
INSERT INTO `t_dict_areas` VALUES ('2510', '522300', '522327', '册亨县');
INSERT INTO `t_dict_areas` VALUES ('2511', '522300', '522328', '安龙县');
INSERT INTO `t_dict_areas` VALUES ('2512', '522400', '522401', '毕节市');
INSERT INTO `t_dict_areas` VALUES ('2513', '522400', '522422', '大方县');
INSERT INTO `t_dict_areas` VALUES ('2514', '522400', '522423', '黔西县');
INSERT INTO `t_dict_areas` VALUES ('2515', '522400', '522424', '金沙县');
INSERT INTO `t_dict_areas` VALUES ('2516', '522400', '522425', '织金县');
INSERT INTO `t_dict_areas` VALUES ('2517', '522400', '522426', '纳雍县');
INSERT INTO `t_dict_areas` VALUES ('2518', '522400', '522427', '威宁彝族回族苗族自治县');
INSERT INTO `t_dict_areas` VALUES ('2519', '522400', '522428', '赫章县');
INSERT INTO `t_dict_areas` VALUES ('2520', '522600', '522601', '凯里市');
INSERT INTO `t_dict_areas` VALUES ('2521', '522600', '522622', '黄平县');
INSERT INTO `t_dict_areas` VALUES ('2522', '522600', '522623', '施秉县');
INSERT INTO `t_dict_areas` VALUES ('2523', '522600', '522624', '三穗县');
INSERT INTO `t_dict_areas` VALUES ('2524', '522600', '522625', '镇远县');
INSERT INTO `t_dict_areas` VALUES ('2525', '522600', '522626', '岑巩县');
INSERT INTO `t_dict_areas` VALUES ('2526', '522600', '522627', '天柱县');
INSERT INTO `t_dict_areas` VALUES ('2527', '522600', '522628', '锦屏县');
INSERT INTO `t_dict_areas` VALUES ('2528', '522600', '522629', '剑河县');
INSERT INTO `t_dict_areas` VALUES ('2529', '522600', '522630', '台江县');
INSERT INTO `t_dict_areas` VALUES ('2530', '522600', '522631', '黎平县');
INSERT INTO `t_dict_areas` VALUES ('2531', '522600', '522632', '榕江县');
INSERT INTO `t_dict_areas` VALUES ('2532', '522600', '522633', '从江县');
INSERT INTO `t_dict_areas` VALUES ('2533', '522600', '522634', '雷山县');
INSERT INTO `t_dict_areas` VALUES ('2534', '522600', '522635', '麻江县');
INSERT INTO `t_dict_areas` VALUES ('2535', '522600', '522636', '丹寨县');
INSERT INTO `t_dict_areas` VALUES ('2536', '522700', '522701', '都匀市');
INSERT INTO `t_dict_areas` VALUES ('2537', '522700', '522702', '福泉市');
INSERT INTO `t_dict_areas` VALUES ('2538', '522700', '522722', '荔波县');
INSERT INTO `t_dict_areas` VALUES ('2539', '522700', '522723', '贵定县');
INSERT INTO `t_dict_areas` VALUES ('2540', '522700', '522725', '瓮安县');
INSERT INTO `t_dict_areas` VALUES ('2541', '522700', '522726', '独山县');
INSERT INTO `t_dict_areas` VALUES ('2542', '522700', '522727', '平塘县');
INSERT INTO `t_dict_areas` VALUES ('2543', '522700', '522728', '罗甸县');
INSERT INTO `t_dict_areas` VALUES ('2544', '522700', '522729', '长顺县');
INSERT INTO `t_dict_areas` VALUES ('2545', '522700', '522730', '龙里县');
INSERT INTO `t_dict_areas` VALUES ('2546', '522700', '522731', '惠水县');
INSERT INTO `t_dict_areas` VALUES ('2547', '522700', '522732', '三都水族自治县');
INSERT INTO `t_dict_areas` VALUES ('2548', '530100', '530101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2549', '530100', '530102', '五华区');
INSERT INTO `t_dict_areas` VALUES ('2550', '530100', '530103', '盘龙区');
INSERT INTO `t_dict_areas` VALUES ('2551', '530100', '530111', '官渡区');
INSERT INTO `t_dict_areas` VALUES ('2552', '530100', '530112', '西山区');
INSERT INTO `t_dict_areas` VALUES ('2553', '530100', '530113', '东川区');
INSERT INTO `t_dict_areas` VALUES ('2554', '530100', '530121', '呈贡县');
INSERT INTO `t_dict_areas` VALUES ('2555', '530100', '530122', '晋宁县');
INSERT INTO `t_dict_areas` VALUES ('2556', '530100', '530124', '富民县');
INSERT INTO `t_dict_areas` VALUES ('2557', '530100', '530125', '宜良县');
INSERT INTO `t_dict_areas` VALUES ('2558', '530100', '530126', '石林彝族自治县');
INSERT INTO `t_dict_areas` VALUES ('2559', '530100', '530127', '嵩明县');
INSERT INTO `t_dict_areas` VALUES ('2560', '530100', '530128', '禄劝彝族苗族自治县');
INSERT INTO `t_dict_areas` VALUES ('2561', '530100', '530129', '寻甸回族彝族自治县');
INSERT INTO `t_dict_areas` VALUES ('2562', '530100', '530181', '安宁市');
INSERT INTO `t_dict_areas` VALUES ('2563', '530300', '530301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2564', '530300', '530302', '麒麟区');
INSERT INTO `t_dict_areas` VALUES ('2565', '530300', '530321', '马龙县');
INSERT INTO `t_dict_areas` VALUES ('2566', '530300', '530322', '陆良县');
INSERT INTO `t_dict_areas` VALUES ('2567', '530300', '530323', '师宗县');
INSERT INTO `t_dict_areas` VALUES ('2568', '530300', '530324', '罗平县');
INSERT INTO `t_dict_areas` VALUES ('2569', '530300', '530325', '富源县');
INSERT INTO `t_dict_areas` VALUES ('2570', '530300', '530326', '会泽县');
INSERT INTO `t_dict_areas` VALUES ('2571', '530300', '530328', '沾益县');
INSERT INTO `t_dict_areas` VALUES ('2572', '530300', '530381', '宣威市');
INSERT INTO `t_dict_areas` VALUES ('2573', '530400', '530401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2574', '530400', '530402', '红塔区');
INSERT INTO `t_dict_areas` VALUES ('2575', '530400', '530421', '江川县');
INSERT INTO `t_dict_areas` VALUES ('2576', '530400', '530422', '澄江县');
INSERT INTO `t_dict_areas` VALUES ('2577', '530400', '530423', '通海县');
INSERT INTO `t_dict_areas` VALUES ('2578', '530400', '530424', '华宁县');
INSERT INTO `t_dict_areas` VALUES ('2579', '530400', '530425', '易门县');
INSERT INTO `t_dict_areas` VALUES ('2580', '530400', '530426', '峨山彝族自治县');
INSERT INTO `t_dict_areas` VALUES ('2581', '530400', '530427', '新平彝族傣族自治县');
INSERT INTO `t_dict_areas` VALUES ('2582', '530400', '530428', '元江哈尼族彝族傣族自治县');
INSERT INTO `t_dict_areas` VALUES ('2583', '530500', '530501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2584', '530500', '530502', '隆阳区');
INSERT INTO `t_dict_areas` VALUES ('2585', '530500', '530521', '施甸县');
INSERT INTO `t_dict_areas` VALUES ('2586', '530500', '530522', '腾冲县');
INSERT INTO `t_dict_areas` VALUES ('2587', '530500', '530523', '龙陵县');
INSERT INTO `t_dict_areas` VALUES ('2588', '530500', '530524', '昌宁县');
INSERT INTO `t_dict_areas` VALUES ('2589', '530600', '530601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2590', '530600', '530602', '昭阳区');
INSERT INTO `t_dict_areas` VALUES ('2591', '530600', '530621', '鲁甸县');
INSERT INTO `t_dict_areas` VALUES ('2592', '530600', '530622', '巧家县');
INSERT INTO `t_dict_areas` VALUES ('2593', '530600', '530623', '盐津县');
INSERT INTO `t_dict_areas` VALUES ('2594', '530600', '530624', '大关县');
INSERT INTO `t_dict_areas` VALUES ('2595', '530600', '530625', '永善县');
INSERT INTO `t_dict_areas` VALUES ('2596', '530600', '530626', '绥江县');
INSERT INTO `t_dict_areas` VALUES ('2597', '530600', '530627', '镇雄县');
INSERT INTO `t_dict_areas` VALUES ('2598', '530600', '530628', '彝良县');
INSERT INTO `t_dict_areas` VALUES ('2599', '530600', '530629', '威信县');
INSERT INTO `t_dict_areas` VALUES ('2600', '530600', '530630', '水富县');
INSERT INTO `t_dict_areas` VALUES ('2601', '530700', '530701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2602', '530700', '530702', '古城区');
INSERT INTO `t_dict_areas` VALUES ('2603', '530700', '530721', '玉龙纳西族自治县');
INSERT INTO `t_dict_areas` VALUES ('2604', '530700', '530722', '永胜县');
INSERT INTO `t_dict_areas` VALUES ('2605', '530700', '530723', '华坪县');
INSERT INTO `t_dict_areas` VALUES ('2606', '530700', '530724', '宁蒗彝族自治县');
INSERT INTO `t_dict_areas` VALUES ('2607', '530800', '530801', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2608', '530800', '530802', '翠云区');
INSERT INTO `t_dict_areas` VALUES ('2609', '530800', '530821', '普洱哈尼族彝族自治县');
INSERT INTO `t_dict_areas` VALUES ('2610', '530800', '530822', '墨江哈尼族自治县');
INSERT INTO `t_dict_areas` VALUES ('2611', '530800', '530823', '景东彝族自治县');
INSERT INTO `t_dict_areas` VALUES ('2612', '530800', '530824', '景谷傣族彝族自治县');
INSERT INTO `t_dict_areas` VALUES ('2613', '530800', '530825', '镇沅彝族哈尼族拉祜族自治县');
INSERT INTO `t_dict_areas` VALUES ('2614', '530800', '530826', '江城哈尼族彝族自治县');
INSERT INTO `t_dict_areas` VALUES ('2615', '530800', '530827', '孟连傣族拉祜族佤族自治县');
INSERT INTO `t_dict_areas` VALUES ('2616', '530800', '530828', '澜沧拉祜族自治县');
INSERT INTO `t_dict_areas` VALUES ('2617', '530800', '530829', '西盟佤族自治县');
INSERT INTO `t_dict_areas` VALUES ('2618', '530900', '530901', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2619', '530900', '530902', '临翔区');
INSERT INTO `t_dict_areas` VALUES ('2620', '530900', '530921', '凤庆县');
INSERT INTO `t_dict_areas` VALUES ('2621', '530900', '530922', '云　县');
INSERT INTO `t_dict_areas` VALUES ('2622', '530900', '530923', '永德县');
INSERT INTO `t_dict_areas` VALUES ('2623', '530900', '530924', '镇康县');
INSERT INTO `t_dict_areas` VALUES ('2624', '530900', '530925', '双江拉祜族佤族布朗族傣族自治县');
INSERT INTO `t_dict_areas` VALUES ('2625', '530900', '530926', '耿马傣族佤族自治县');
INSERT INTO `t_dict_areas` VALUES ('2626', '530900', '530927', '沧源佤族自治县');
INSERT INTO `t_dict_areas` VALUES ('2627', '532300', '532301', '楚雄市');
INSERT INTO `t_dict_areas` VALUES ('2628', '532300', '532322', '双柏县');
INSERT INTO `t_dict_areas` VALUES ('2629', '532300', '532323', '牟定县');
INSERT INTO `t_dict_areas` VALUES ('2630', '532300', '532324', '南华县');
INSERT INTO `t_dict_areas` VALUES ('2631', '532300', '532325', '姚安县');
INSERT INTO `t_dict_areas` VALUES ('2632', '532300', '532326', '大姚县');
INSERT INTO `t_dict_areas` VALUES ('2633', '532300', '532327', '永仁县');
INSERT INTO `t_dict_areas` VALUES ('2634', '532300', '532328', '元谋县');
INSERT INTO `t_dict_areas` VALUES ('2635', '532300', '532329', '武定县');
INSERT INTO `t_dict_areas` VALUES ('2636', '532300', '532331', '禄丰县');
INSERT INTO `t_dict_areas` VALUES ('2637', '532500', '532501', '个旧市');
INSERT INTO `t_dict_areas` VALUES ('2638', '532500', '532502', '开远市');
INSERT INTO `t_dict_areas` VALUES ('2639', '532500', '532522', '蒙自县');
INSERT INTO `t_dict_areas` VALUES ('2640', '532500', '532523', '屏边苗族自治县');
INSERT INTO `t_dict_areas` VALUES ('2641', '532500', '532524', '建水县');
INSERT INTO `t_dict_areas` VALUES ('2642', '532500', '532525', '石屏县');
INSERT INTO `t_dict_areas` VALUES ('2643', '532500', '532526', '弥勒县');
INSERT INTO `t_dict_areas` VALUES ('2644', '532500', '532527', '泸西县');
INSERT INTO `t_dict_areas` VALUES ('2645', '532500', '532528', '元阳县');
INSERT INTO `t_dict_areas` VALUES ('2646', '532500', '532529', '红河县');
INSERT INTO `t_dict_areas` VALUES ('2647', '532500', '532530', '金平苗族瑶族傣族自治县');
INSERT INTO `t_dict_areas` VALUES ('2648', '532500', '532531', '绿春县');
INSERT INTO `t_dict_areas` VALUES ('2649', '532500', '532532', '河口瑶族自治县');
INSERT INTO `t_dict_areas` VALUES ('2650', '532600', '532621', '文山县');
INSERT INTO `t_dict_areas` VALUES ('2651', '532600', '532622', '砚山县');
INSERT INTO `t_dict_areas` VALUES ('2652', '532600', '532623', '西畴县');
INSERT INTO `t_dict_areas` VALUES ('2653', '532600', '532624', '麻栗坡县');
INSERT INTO `t_dict_areas` VALUES ('2654', '532600', '532625', '马关县');
INSERT INTO `t_dict_areas` VALUES ('2655', '532600', '532626', '丘北县');
INSERT INTO `t_dict_areas` VALUES ('2656', '532600', '532627', '广南县');
INSERT INTO `t_dict_areas` VALUES ('2657', '532600', '532628', '富宁县');
INSERT INTO `t_dict_areas` VALUES ('2658', '532800', '532801', '景洪市');
INSERT INTO `t_dict_areas` VALUES ('2659', '532800', '532822', '勐海县');
INSERT INTO `t_dict_areas` VALUES ('2660', '532800', '532823', '勐腊县');
INSERT INTO `t_dict_areas` VALUES ('2661', '532900', '532901', '大理市');
INSERT INTO `t_dict_areas` VALUES ('2662', '532900', '532922', '漾濞彝族自治县');
INSERT INTO `t_dict_areas` VALUES ('2663', '532900', '532923', '祥云县');
INSERT INTO `t_dict_areas` VALUES ('2664', '532900', '532924', '宾川县');
INSERT INTO `t_dict_areas` VALUES ('2665', '532900', '532925', '弥渡县');
INSERT INTO `t_dict_areas` VALUES ('2666', '532900', '532926', '南涧彝族自治县');
INSERT INTO `t_dict_areas` VALUES ('2667', '532900', '532927', '巍山彝族回族自治县');
INSERT INTO `t_dict_areas` VALUES ('2668', '532900', '532928', '永平县');
INSERT INTO `t_dict_areas` VALUES ('2669', '532900', '532929', '云龙县');
INSERT INTO `t_dict_areas` VALUES ('2670', '532900', '532930', '洱源县');
INSERT INTO `t_dict_areas` VALUES ('2671', '532900', '532931', '剑川县');
INSERT INTO `t_dict_areas` VALUES ('2672', '532900', '532932', '鹤庆县');
INSERT INTO `t_dict_areas` VALUES ('2673', '533100', '533102', '瑞丽市');
INSERT INTO `t_dict_areas` VALUES ('2674', '533100', '533103', '潞西市');
INSERT INTO `t_dict_areas` VALUES ('2675', '533100', '533122', '梁河县');
INSERT INTO `t_dict_areas` VALUES ('2676', '533100', '533123', '盈江县');
INSERT INTO `t_dict_areas` VALUES ('2677', '533100', '533124', '陇川县');
INSERT INTO `t_dict_areas` VALUES ('2678', '533300', '533321', '泸水县');
INSERT INTO `t_dict_areas` VALUES ('2679', '533300', '533323', '福贡县');
INSERT INTO `t_dict_areas` VALUES ('2680', '533300', '533324', '贡山独龙族怒族自治县');
INSERT INTO `t_dict_areas` VALUES ('2681', '533300', '533325', '兰坪白族普米族自治县');
INSERT INTO `t_dict_areas` VALUES ('2682', '533400', '533421', '香格里拉县');
INSERT INTO `t_dict_areas` VALUES ('2683', '533400', '533422', '德钦县');
INSERT INTO `t_dict_areas` VALUES ('2684', '533400', '533423', '维西傈僳族自治县');
INSERT INTO `t_dict_areas` VALUES ('2685', '540100', '540101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2686', '540100', '540102', '城关区');
INSERT INTO `t_dict_areas` VALUES ('2687', '540100', '540121', '林周县');
INSERT INTO `t_dict_areas` VALUES ('2688', '540100', '540122', '当雄县');
INSERT INTO `t_dict_areas` VALUES ('2689', '540100', '540123', '尼木县');
INSERT INTO `t_dict_areas` VALUES ('2690', '540100', '540124', '曲水县');
INSERT INTO `t_dict_areas` VALUES ('2691', '540100', '540125', '堆龙德庆县');
INSERT INTO `t_dict_areas` VALUES ('2692', '540100', '540126', '达孜县');
INSERT INTO `t_dict_areas` VALUES ('2693', '540100', '540127', '墨竹工卡县');
INSERT INTO `t_dict_areas` VALUES ('2694', '542100', '542121', '昌都县');
INSERT INTO `t_dict_areas` VALUES ('2695', '542100', '542122', '江达县');
INSERT INTO `t_dict_areas` VALUES ('2696', '542100', '542123', '贡觉县');
INSERT INTO `t_dict_areas` VALUES ('2697', '542100', '542124', '类乌齐县');
INSERT INTO `t_dict_areas` VALUES ('2698', '542100', '542125', '丁青县');
INSERT INTO `t_dict_areas` VALUES ('2699', '542100', '542126', '察雅县');
INSERT INTO `t_dict_areas` VALUES ('2700', '542100', '542127', '八宿县');
INSERT INTO `t_dict_areas` VALUES ('2701', '542100', '542128', '左贡县');
INSERT INTO `t_dict_areas` VALUES ('2702', '542100', '542129', '芒康县');
INSERT INTO `t_dict_areas` VALUES ('2703', '542100', '542132', '洛隆县');
INSERT INTO `t_dict_areas` VALUES ('2704', '542100', '542133', '边坝县');
INSERT INTO `t_dict_areas` VALUES ('2705', '542200', '542221', '乃东县');
INSERT INTO `t_dict_areas` VALUES ('2706', '542200', '542222', '扎囊县');
INSERT INTO `t_dict_areas` VALUES ('2707', '542200', '542223', '贡嘎县');
INSERT INTO `t_dict_areas` VALUES ('2708', '542200', '542224', '桑日县');
INSERT INTO `t_dict_areas` VALUES ('2709', '542200', '542225', '琼结县');
INSERT INTO `t_dict_areas` VALUES ('2710', '542200', '542226', '曲松县');
INSERT INTO `t_dict_areas` VALUES ('2711', '542200', '542227', '措美县');
INSERT INTO `t_dict_areas` VALUES ('2712', '542200', '542228', '洛扎县');
INSERT INTO `t_dict_areas` VALUES ('2713', '542200', '542229', '加查县');
INSERT INTO `t_dict_areas` VALUES ('2714', '542200', '542231', '隆子县');
INSERT INTO `t_dict_areas` VALUES ('2715', '542200', '542232', '错那县');
INSERT INTO `t_dict_areas` VALUES ('2716', '542200', '542233', '浪卡子县');
INSERT INTO `t_dict_areas` VALUES ('2717', '542300', '542301', '日喀则市');
INSERT INTO `t_dict_areas` VALUES ('2718', '542300', '542322', '南木林县');
INSERT INTO `t_dict_areas` VALUES ('2719', '542300', '542323', '江孜县');
INSERT INTO `t_dict_areas` VALUES ('2720', '542300', '542324', '定日县');
INSERT INTO `t_dict_areas` VALUES ('2721', '542300', '542325', '萨迦县');
INSERT INTO `t_dict_areas` VALUES ('2722', '542300', '542326', '拉孜县');
INSERT INTO `t_dict_areas` VALUES ('2723', '542300', '542327', '昂仁县');
INSERT INTO `t_dict_areas` VALUES ('2724', '542300', '542328', '谢通门县');
INSERT INTO `t_dict_areas` VALUES ('2725', '542300', '542329', '白朗县');
INSERT INTO `t_dict_areas` VALUES ('2726', '542300', '542330', '仁布县');
INSERT INTO `t_dict_areas` VALUES ('2727', '542300', '542331', '康马县');
INSERT INTO `t_dict_areas` VALUES ('2728', '542300', '542332', '定结县');
INSERT INTO `t_dict_areas` VALUES ('2729', '542300', '542333', '仲巴县');
INSERT INTO `t_dict_areas` VALUES ('2730', '542300', '542334', '亚东县');
INSERT INTO `t_dict_areas` VALUES ('2731', '542300', '542335', '吉隆县');
INSERT INTO `t_dict_areas` VALUES ('2732', '542300', '542336', '聂拉木县');
INSERT INTO `t_dict_areas` VALUES ('2733', '542300', '542337', '萨嘎县');
INSERT INTO `t_dict_areas` VALUES ('2734', '542300', '542338', '岗巴县');
INSERT INTO `t_dict_areas` VALUES ('2735', '542400', '542421', '那曲县');
INSERT INTO `t_dict_areas` VALUES ('2736', '542400', '542422', '嘉黎县');
INSERT INTO `t_dict_areas` VALUES ('2737', '542400', '542423', '比如县');
INSERT INTO `t_dict_areas` VALUES ('2738', '542400', '542424', '聂荣县');
INSERT INTO `t_dict_areas` VALUES ('2739', '542400', '542425', '安多县');
INSERT INTO `t_dict_areas` VALUES ('2740', '542400', '542426', '申扎县');
INSERT INTO `t_dict_areas` VALUES ('2741', '542400', '542427', '索　县');
INSERT INTO `t_dict_areas` VALUES ('2742', '542400', '542428', '班戈县');
INSERT INTO `t_dict_areas` VALUES ('2743', '542400', '542429', '巴青县');
INSERT INTO `t_dict_areas` VALUES ('2744', '542400', '542430', '尼玛县');
INSERT INTO `t_dict_areas` VALUES ('2745', '542500', '542521', '普兰县');
INSERT INTO `t_dict_areas` VALUES ('2746', '542500', '542522', '札达县');
INSERT INTO `t_dict_areas` VALUES ('2747', '542500', '542523', '噶尔县');
INSERT INTO `t_dict_areas` VALUES ('2748', '542500', '542524', '日土县');
INSERT INTO `t_dict_areas` VALUES ('2749', '542500', '542525', '革吉县');
INSERT INTO `t_dict_areas` VALUES ('2750', '542500', '542526', '改则县');
INSERT INTO `t_dict_areas` VALUES ('2751', '542500', '542527', '措勤县');
INSERT INTO `t_dict_areas` VALUES ('2752', '542600', '542621', '林芝县');
INSERT INTO `t_dict_areas` VALUES ('2753', '542600', '542622', '工布江达县');
INSERT INTO `t_dict_areas` VALUES ('2754', '542600', '542623', '米林县');
INSERT INTO `t_dict_areas` VALUES ('2755', '542600', '542624', '墨脱县');
INSERT INTO `t_dict_areas` VALUES ('2756', '542600', '542625', '波密县');
INSERT INTO `t_dict_areas` VALUES ('2757', '542600', '542626', '察隅县');
INSERT INTO `t_dict_areas` VALUES ('2758', '542600', '542627', '朗　县');
INSERT INTO `t_dict_areas` VALUES ('2759', '610100', '610101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2760', '610100', '610102', '新城区');
INSERT INTO `t_dict_areas` VALUES ('2761', '610100', '610103', '碑林区');
INSERT INTO `t_dict_areas` VALUES ('2762', '610100', '610104', '莲湖区');
INSERT INTO `t_dict_areas` VALUES ('2763', '610100', '610111', '灞桥区');
INSERT INTO `t_dict_areas` VALUES ('2764', '610100', '610112', '未央区');
INSERT INTO `t_dict_areas` VALUES ('2765', '610100', '610113', '雁塔区');
INSERT INTO `t_dict_areas` VALUES ('2766', '610100', '610114', '阎良区');
INSERT INTO `t_dict_areas` VALUES ('2767', '610100', '610115', '临潼区');
INSERT INTO `t_dict_areas` VALUES ('2768', '610100', '610116', '长安区');
INSERT INTO `t_dict_areas` VALUES ('2769', '610100', '610122', '蓝田县');
INSERT INTO `t_dict_areas` VALUES ('2770', '610100', '610124', '周至县');
INSERT INTO `t_dict_areas` VALUES ('2771', '610100', '610125', '户　县');
INSERT INTO `t_dict_areas` VALUES ('2772', '610100', '610126', '高陵县');
INSERT INTO `t_dict_areas` VALUES ('2773', '610200', '610201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2774', '610200', '610202', '王益区');
INSERT INTO `t_dict_areas` VALUES ('2775', '610200', '610203', '印台区');
INSERT INTO `t_dict_areas` VALUES ('2776', '610200', '610204', '耀州区');
INSERT INTO `t_dict_areas` VALUES ('2777', '610200', '610222', '宜君县');
INSERT INTO `t_dict_areas` VALUES ('2778', '610300', '610301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2779', '610300', '610302', '渭滨区');
INSERT INTO `t_dict_areas` VALUES ('2780', '610300', '610303', '金台区');
INSERT INTO `t_dict_areas` VALUES ('2781', '610300', '610304', '陈仓区');
INSERT INTO `t_dict_areas` VALUES ('2782', '610300', '610322', '凤翔县');
INSERT INTO `t_dict_areas` VALUES ('2783', '610300', '610323', '岐山县');
INSERT INTO `t_dict_areas` VALUES ('2784', '610300', '610324', '扶风县');
INSERT INTO `t_dict_areas` VALUES ('2785', '610300', '610326', '眉　县');
INSERT INTO `t_dict_areas` VALUES ('2786', '610300', '610327', '陇　县');
INSERT INTO `t_dict_areas` VALUES ('2787', '610300', '610328', '千阳县');
INSERT INTO `t_dict_areas` VALUES ('2788', '610300', '610329', '麟游县');
INSERT INTO `t_dict_areas` VALUES ('2789', '610300', '610330', '凤　县');
INSERT INTO `t_dict_areas` VALUES ('2790', '610300', '610331', '太白县');
INSERT INTO `t_dict_areas` VALUES ('2791', '610400', '610401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2792', '610400', '610402', '秦都区');
INSERT INTO `t_dict_areas` VALUES ('2793', '610400', '610403', '杨凌区');
INSERT INTO `t_dict_areas` VALUES ('2794', '610400', '610404', '渭城区');
INSERT INTO `t_dict_areas` VALUES ('2795', '610400', '610422', '三原县');
INSERT INTO `t_dict_areas` VALUES ('2796', '610400', '610423', '泾阳县');
INSERT INTO `t_dict_areas` VALUES ('2797', '610400', '610424', '乾　县');
INSERT INTO `t_dict_areas` VALUES ('2798', '610400', '610425', '礼泉县');
INSERT INTO `t_dict_areas` VALUES ('2799', '610400', '610426', '永寿县');
INSERT INTO `t_dict_areas` VALUES ('2800', '610400', '610427', '彬　县');
INSERT INTO `t_dict_areas` VALUES ('2801', '610400', '610428', '长武县');
INSERT INTO `t_dict_areas` VALUES ('2802', '610400', '610429', '旬邑县');
INSERT INTO `t_dict_areas` VALUES ('2803', '610400', '610430', '淳化县');
INSERT INTO `t_dict_areas` VALUES ('2804', '610400', '610431', '武功县');
INSERT INTO `t_dict_areas` VALUES ('2805', '610400', '610481', '兴平市');
INSERT INTO `t_dict_areas` VALUES ('2806', '610500', '610501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2807', '610500', '610502', '临渭区');
INSERT INTO `t_dict_areas` VALUES ('2808', '610500', '610521', '华　县');
INSERT INTO `t_dict_areas` VALUES ('2809', '610500', '610522', '潼关县');
INSERT INTO `t_dict_areas` VALUES ('2810', '610500', '610523', '大荔县');
INSERT INTO `t_dict_areas` VALUES ('2811', '610500', '610524', '合阳县');
INSERT INTO `t_dict_areas` VALUES ('2812', '610500', '610525', '澄城县');
INSERT INTO `t_dict_areas` VALUES ('2813', '610500', '610526', '蒲城县');
INSERT INTO `t_dict_areas` VALUES ('2814', '610500', '610527', '白水县');
INSERT INTO `t_dict_areas` VALUES ('2815', '610500', '610528', '富平县');
INSERT INTO `t_dict_areas` VALUES ('2816', '610500', '610581', '韩城市');
INSERT INTO `t_dict_areas` VALUES ('2817', '610500', '610582', '华阴市');
INSERT INTO `t_dict_areas` VALUES ('2818', '610600', '610601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2819', '610600', '610602', '宝塔区');
INSERT INTO `t_dict_areas` VALUES ('2820', '610600', '610621', '延长县');
INSERT INTO `t_dict_areas` VALUES ('2821', '610600', '610622', '延川县');
INSERT INTO `t_dict_areas` VALUES ('2822', '610600', '610623', '子长县');
INSERT INTO `t_dict_areas` VALUES ('2823', '610600', '610624', '安塞县');
INSERT INTO `t_dict_areas` VALUES ('2824', '610600', '610625', '志丹县');
INSERT INTO `t_dict_areas` VALUES ('2825', '610600', '610626', '吴旗县');
INSERT INTO `t_dict_areas` VALUES ('2826', '610600', '610627', '甘泉县');
INSERT INTO `t_dict_areas` VALUES ('2827', '610600', '610628', '富　县');
INSERT INTO `t_dict_areas` VALUES ('2828', '610600', '610629', '洛川县');
INSERT INTO `t_dict_areas` VALUES ('2829', '610600', '610630', '宜川县');
INSERT INTO `t_dict_areas` VALUES ('2830', '610600', '610631', '黄龙县');
INSERT INTO `t_dict_areas` VALUES ('2831', '610600', '610632', '黄陵县');
INSERT INTO `t_dict_areas` VALUES ('2832', '610700', '610701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2833', '610700', '610702', '汉台区');
INSERT INTO `t_dict_areas` VALUES ('2834', '610700', '610721', '南郑县');
INSERT INTO `t_dict_areas` VALUES ('2835', '610700', '610722', '城固县');
INSERT INTO `t_dict_areas` VALUES ('2836', '610700', '610723', '洋　县');
INSERT INTO `t_dict_areas` VALUES ('2837', '610700', '610724', '西乡县');
INSERT INTO `t_dict_areas` VALUES ('2838', '610700', '610725', '勉　县');
INSERT INTO `t_dict_areas` VALUES ('2839', '610700', '610726', '宁强县');
INSERT INTO `t_dict_areas` VALUES ('2840', '610700', '610727', '略阳县');
INSERT INTO `t_dict_areas` VALUES ('2841', '610700', '610728', '镇巴县');
INSERT INTO `t_dict_areas` VALUES ('2842', '610700', '610729', '留坝县');
INSERT INTO `t_dict_areas` VALUES ('2843', '610700', '610730', '佛坪县');
INSERT INTO `t_dict_areas` VALUES ('2844', '610800', '610801', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2845', '610800', '610802', '榆阳区');
INSERT INTO `t_dict_areas` VALUES ('2846', '610800', '610821', '神木县');
INSERT INTO `t_dict_areas` VALUES ('2847', '610800', '610822', '府谷县');
INSERT INTO `t_dict_areas` VALUES ('2848', '610800', '610823', '横山县');
INSERT INTO `t_dict_areas` VALUES ('2849', '610800', '610824', '靖边县');
INSERT INTO `t_dict_areas` VALUES ('2850', '610800', '610825', '定边县');
INSERT INTO `t_dict_areas` VALUES ('2851', '610800', '610826', '绥德县');
INSERT INTO `t_dict_areas` VALUES ('2852', '610800', '610827', '米脂县');
INSERT INTO `t_dict_areas` VALUES ('2853', '610800', '610828', '佳　县');
INSERT INTO `t_dict_areas` VALUES ('2854', '610800', '610829', '吴堡县');
INSERT INTO `t_dict_areas` VALUES ('2855', '610800', '610830', '清涧县');
INSERT INTO `t_dict_areas` VALUES ('2856', '610800', '610831', '子洲县');
INSERT INTO `t_dict_areas` VALUES ('2857', '610900', '610901', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2858', '610900', '610902', '汉滨区');
INSERT INTO `t_dict_areas` VALUES ('2859', '610900', '610921', '汉阴县');
INSERT INTO `t_dict_areas` VALUES ('2860', '610900', '610922', '石泉县');
INSERT INTO `t_dict_areas` VALUES ('2861', '610900', '610923', '宁陕县');
INSERT INTO `t_dict_areas` VALUES ('2862', '610900', '610924', '紫阳县');
INSERT INTO `t_dict_areas` VALUES ('2863', '610900', '610925', '岚皋县');
INSERT INTO `t_dict_areas` VALUES ('2864', '610900', '610926', '平利县');
INSERT INTO `t_dict_areas` VALUES ('2865', '610900', '610927', '镇坪县');
INSERT INTO `t_dict_areas` VALUES ('2866', '610900', '610928', '旬阳县');
INSERT INTO `t_dict_areas` VALUES ('2867', '610900', '610929', '白河县');
INSERT INTO `t_dict_areas` VALUES ('2868', '611000', '611001', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2869', '611000', '611002', '商州区');
INSERT INTO `t_dict_areas` VALUES ('2870', '611000', '611021', '洛南县');
INSERT INTO `t_dict_areas` VALUES ('2871', '611000', '611022', '丹凤县');
INSERT INTO `t_dict_areas` VALUES ('2872', '611000', '611023', '商南县');
INSERT INTO `t_dict_areas` VALUES ('2873', '611000', '611024', '山阳县');
INSERT INTO `t_dict_areas` VALUES ('2874', '611000', '611025', '镇安县');
INSERT INTO `t_dict_areas` VALUES ('2875', '611000', '611026', '柞水县');
INSERT INTO `t_dict_areas` VALUES ('2876', '620100', '620101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2877', '620100', '620102', '城关区');
INSERT INTO `t_dict_areas` VALUES ('2878', '620100', '620103', '七里河区');
INSERT INTO `t_dict_areas` VALUES ('2879', '620100', '620104', '西固区');
INSERT INTO `t_dict_areas` VALUES ('2880', '620100', '620105', '安宁区');
INSERT INTO `t_dict_areas` VALUES ('2881', '620100', '620111', '红古区');
INSERT INTO `t_dict_areas` VALUES ('2882', '620100', '620121', '永登县');
INSERT INTO `t_dict_areas` VALUES ('2883', '620100', '620122', '皋兰县');
INSERT INTO `t_dict_areas` VALUES ('2884', '620100', '620123', '榆中县');
INSERT INTO `t_dict_areas` VALUES ('2885', '620200', '620201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2886', '620300', '620301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2887', '620300', '620302', '金川区');
INSERT INTO `t_dict_areas` VALUES ('2888', '620300', '620321', '永昌县');
INSERT INTO `t_dict_areas` VALUES ('2889', '620400', '620401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2890', '620400', '620402', '白银区');
INSERT INTO `t_dict_areas` VALUES ('2891', '620400', '620403', '平川区');
INSERT INTO `t_dict_areas` VALUES ('2892', '620400', '620421', '靖远县');
INSERT INTO `t_dict_areas` VALUES ('2893', '620400', '620422', '会宁县');
INSERT INTO `t_dict_areas` VALUES ('2894', '620400', '620423', '景泰县');
INSERT INTO `t_dict_areas` VALUES ('2895', '620500', '620501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2896', '620500', '620502', '秦城区');
INSERT INTO `t_dict_areas` VALUES ('2897', '620500', '620503', '北道区');
INSERT INTO `t_dict_areas` VALUES ('2898', '620500', '620521', '清水县');
INSERT INTO `t_dict_areas` VALUES ('2899', '620500', '620522', '秦安县');
INSERT INTO `t_dict_areas` VALUES ('2900', '620500', '620523', '甘谷县');
INSERT INTO `t_dict_areas` VALUES ('2901', '620500', '620524', '武山县');
INSERT INTO `t_dict_areas` VALUES ('2902', '620500', '620525', '张家川回族自治县');
INSERT INTO `t_dict_areas` VALUES ('2903', '620600', '620601', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2904', '620600', '620602', '凉州区');
INSERT INTO `t_dict_areas` VALUES ('2905', '620600', '620621', '民勤县');
INSERT INTO `t_dict_areas` VALUES ('2906', '620600', '620622', '古浪县');
INSERT INTO `t_dict_areas` VALUES ('2907', '620600', '620623', '天祝藏族自治县');
INSERT INTO `t_dict_areas` VALUES ('2908', '620700', '620701', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2909', '620700', '620702', '甘州区');
INSERT INTO `t_dict_areas` VALUES ('2910', '620700', '620721', '肃南裕固族自治县');
INSERT INTO `t_dict_areas` VALUES ('2911', '620700', '620722', '民乐县');
INSERT INTO `t_dict_areas` VALUES ('2912', '620700', '620723', '临泽县');
INSERT INTO `t_dict_areas` VALUES ('2913', '620700', '620724', '高台县');
INSERT INTO `t_dict_areas` VALUES ('2914', '620700', '620725', '山丹县');
INSERT INTO `t_dict_areas` VALUES ('2915', '620800', '620801', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2916', '620800', '620802', '崆峒区');
INSERT INTO `t_dict_areas` VALUES ('2917', '620800', '620821', '泾川县');
INSERT INTO `t_dict_areas` VALUES ('2918', '620800', '620822', '灵台县');
INSERT INTO `t_dict_areas` VALUES ('2919', '620800', '620823', '崇信县');
INSERT INTO `t_dict_areas` VALUES ('2920', '620800', '620824', '华亭县');
INSERT INTO `t_dict_areas` VALUES ('2921', '620800', '620825', '庄浪县');
INSERT INTO `t_dict_areas` VALUES ('2922', '620800', '620826', '静宁县');
INSERT INTO `t_dict_areas` VALUES ('2923', '620900', '620901', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2924', '620900', '620902', '肃州区');
INSERT INTO `t_dict_areas` VALUES ('2925', '620900', '620921', '金塔县');
INSERT INTO `t_dict_areas` VALUES ('2926', '620900', '620922', '安西县');
INSERT INTO `t_dict_areas` VALUES ('2927', '620900', '620923', '肃北蒙古族自治县');
INSERT INTO `t_dict_areas` VALUES ('2928', '620900', '620924', '阿克塞哈萨克族自治县');
INSERT INTO `t_dict_areas` VALUES ('2929', '620900', '620981', '玉门市');
INSERT INTO `t_dict_areas` VALUES ('2930', '620900', '620982', '敦煌市');
INSERT INTO `t_dict_areas` VALUES ('2931', '621000', '621001', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2932', '621000', '621002', '西峰区');
INSERT INTO `t_dict_areas` VALUES ('2933', '621000', '621021', '庆城县');
INSERT INTO `t_dict_areas` VALUES ('2934', '621000', '621022', '环　县');
INSERT INTO `t_dict_areas` VALUES ('2935', '621000', '621023', '华池县');
INSERT INTO `t_dict_areas` VALUES ('2936', '621000', '621024', '合水县');
INSERT INTO `t_dict_areas` VALUES ('2937', '621000', '621025', '正宁县');
INSERT INTO `t_dict_areas` VALUES ('2938', '621000', '621026', '宁　县');
INSERT INTO `t_dict_areas` VALUES ('2939', '621000', '621027', '镇原县');
INSERT INTO `t_dict_areas` VALUES ('2940', '621100', '621101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2941', '621100', '621102', '安定区');
INSERT INTO `t_dict_areas` VALUES ('2942', '621100', '621121', '通渭县');
INSERT INTO `t_dict_areas` VALUES ('2943', '621100', '621122', '陇西县');
INSERT INTO `t_dict_areas` VALUES ('2944', '621100', '621123', '渭源县');
INSERT INTO `t_dict_areas` VALUES ('2945', '621100', '621124', '临洮县');
INSERT INTO `t_dict_areas` VALUES ('2946', '621100', '621125', '漳　县');
INSERT INTO `t_dict_areas` VALUES ('2947', '621100', '621126', '岷　县');
INSERT INTO `t_dict_areas` VALUES ('2948', '621200', '621201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2949', '621200', '621202', '武都区');
INSERT INTO `t_dict_areas` VALUES ('2950', '621200', '621221', '成　县');
INSERT INTO `t_dict_areas` VALUES ('2951', '621200', '621222', '文　县');
INSERT INTO `t_dict_areas` VALUES ('2952', '621200', '621223', '宕昌县');
INSERT INTO `t_dict_areas` VALUES ('2953', '621200', '621224', '康　县');
INSERT INTO `t_dict_areas` VALUES ('2954', '621200', '621225', '西和县');
INSERT INTO `t_dict_areas` VALUES ('2955', '621200', '621226', '礼　县');
INSERT INTO `t_dict_areas` VALUES ('2956', '621200', '621227', '徽　县');
INSERT INTO `t_dict_areas` VALUES ('2957', '621200', '621228', '两当县');
INSERT INTO `t_dict_areas` VALUES ('2958', '622900', '622901', '临夏市');
INSERT INTO `t_dict_areas` VALUES ('2959', '622900', '622921', '临夏县');
INSERT INTO `t_dict_areas` VALUES ('2960', '622900', '622922', '康乐县');
INSERT INTO `t_dict_areas` VALUES ('2961', '622900', '622923', '永靖县');
INSERT INTO `t_dict_areas` VALUES ('2962', '622900', '622924', '广河县');
INSERT INTO `t_dict_areas` VALUES ('2963', '622900', '622925', '和政县');
INSERT INTO `t_dict_areas` VALUES ('2964', '622900', '622926', '东乡族自治县');
INSERT INTO `t_dict_areas` VALUES ('2965', '622900', '622927', '积石山保安族东乡族撒拉族自治县');
INSERT INTO `t_dict_areas` VALUES ('2966', '623000', '623001', '合作市');
INSERT INTO `t_dict_areas` VALUES ('2967', '623000', '623021', '临潭县');
INSERT INTO `t_dict_areas` VALUES ('2968', '623000', '623022', '卓尼县');
INSERT INTO `t_dict_areas` VALUES ('2969', '623000', '623023', '舟曲县');
INSERT INTO `t_dict_areas` VALUES ('2970', '623000', '623024', '迭部县');
INSERT INTO `t_dict_areas` VALUES ('2971', '623000', '623025', '玛曲县');
INSERT INTO `t_dict_areas` VALUES ('2972', '623000', '623026', '碌曲县');
INSERT INTO `t_dict_areas` VALUES ('2973', '623000', '623027', '夏河县');
INSERT INTO `t_dict_areas` VALUES ('2974', '630100', '630101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('2975', '630100', '630102', '城东区');
INSERT INTO `t_dict_areas` VALUES ('2976', '630100', '630103', '城中区');
INSERT INTO `t_dict_areas` VALUES ('2977', '630100', '630104', '城西区');
INSERT INTO `t_dict_areas` VALUES ('2978', '630100', '630105', '城北区');
INSERT INTO `t_dict_areas` VALUES ('2979', '630100', '630121', '大通回族土族自治县');
INSERT INTO `t_dict_areas` VALUES ('2980', '630100', '630122', '湟中县');
INSERT INTO `t_dict_areas` VALUES ('2981', '630100', '630123', '湟源县');
INSERT INTO `t_dict_areas` VALUES ('2982', '632100', '632121', '平安县');
INSERT INTO `t_dict_areas` VALUES ('2983', '632100', '632122', '民和回族土族自治县');
INSERT INTO `t_dict_areas` VALUES ('2984', '632100', '632123', '乐都县');
INSERT INTO `t_dict_areas` VALUES ('2985', '632100', '632126', '互助土族自治县');
INSERT INTO `t_dict_areas` VALUES ('2986', '632100', '632127', '化隆回族自治县');
INSERT INTO `t_dict_areas` VALUES ('2987', '632100', '632128', '循化撒拉族自治县');
INSERT INTO `t_dict_areas` VALUES ('2988', '632200', '632221', '门源回族自治县');
INSERT INTO `t_dict_areas` VALUES ('2989', '632200', '632222', '祁连县');
INSERT INTO `t_dict_areas` VALUES ('2990', '632200', '632223', '海晏县');
INSERT INTO `t_dict_areas` VALUES ('2991', '632200', '632224', '刚察县');
INSERT INTO `t_dict_areas` VALUES ('2992', '632300', '632321', '同仁县');
INSERT INTO `t_dict_areas` VALUES ('2993', '632300', '632322', '尖扎县');
INSERT INTO `t_dict_areas` VALUES ('2994', '632300', '632323', '泽库县');
INSERT INTO `t_dict_areas` VALUES ('2995', '632300', '632324', '河南蒙古族自治县');
INSERT INTO `t_dict_areas` VALUES ('2996', '632500', '632521', '共和县');
INSERT INTO `t_dict_areas` VALUES ('2997', '632500', '632522', '同德县');
INSERT INTO `t_dict_areas` VALUES ('2998', '632500', '632523', '贵德县');
INSERT INTO `t_dict_areas` VALUES ('2999', '632500', '632524', '兴海县');
INSERT INTO `t_dict_areas` VALUES ('3000', '632500', '632525', '贵南县');
INSERT INTO `t_dict_areas` VALUES ('3001', '632600', '632621', '玛沁县');
INSERT INTO `t_dict_areas` VALUES ('3002', '632600', '632622', '班玛县');
INSERT INTO `t_dict_areas` VALUES ('3003', '632600', '632623', '甘德县');
INSERT INTO `t_dict_areas` VALUES ('3004', '632600', '632624', '达日县');
INSERT INTO `t_dict_areas` VALUES ('3005', '632600', '632625', '久治县');
INSERT INTO `t_dict_areas` VALUES ('3006', '632600', '632626', '玛多县');
INSERT INTO `t_dict_areas` VALUES ('3007', '632700', '632721', '玉树县');
INSERT INTO `t_dict_areas` VALUES ('3008', '632700', '632722', '杂多县');
INSERT INTO `t_dict_areas` VALUES ('3009', '632700', '632723', '称多县');
INSERT INTO `t_dict_areas` VALUES ('3010', '632700', '632724', '治多县');
INSERT INTO `t_dict_areas` VALUES ('3011', '632700', '632725', '囊谦县');
INSERT INTO `t_dict_areas` VALUES ('3012', '632700', '632726', '曲麻莱县');
INSERT INTO `t_dict_areas` VALUES ('3013', '632800', '632801', '格尔木市');
INSERT INTO `t_dict_areas` VALUES ('3014', '632800', '632802', '德令哈市');
INSERT INTO `t_dict_areas` VALUES ('3015', '632800', '632821', '乌兰县');
INSERT INTO `t_dict_areas` VALUES ('3016', '632800', '632822', '都兰县');
INSERT INTO `t_dict_areas` VALUES ('3017', '632800', '632823', '天峻县');
INSERT INTO `t_dict_areas` VALUES ('3018', '640100', '640101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('3019', '640100', '640104', '兴庆区');
INSERT INTO `t_dict_areas` VALUES ('3020', '640100', '640105', '西夏区');
INSERT INTO `t_dict_areas` VALUES ('3021', '640100', '640106', '金凤区');
INSERT INTO `t_dict_areas` VALUES ('3022', '640100', '640121', '永宁县');
INSERT INTO `t_dict_areas` VALUES ('3023', '640100', '640122', '贺兰县');
INSERT INTO `t_dict_areas` VALUES ('3024', '640100', '640181', '灵武市');
INSERT INTO `t_dict_areas` VALUES ('3025', '640200', '640201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('3026', '640200', '640202', '大武口区');
INSERT INTO `t_dict_areas` VALUES ('3027', '640200', '640205', '惠农区');
INSERT INTO `t_dict_areas` VALUES ('3028', '640200', '640221', '平罗县');
INSERT INTO `t_dict_areas` VALUES ('3029', '640300', '640301', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('3030', '640300', '640302', '利通区');
INSERT INTO `t_dict_areas` VALUES ('3031', '640300', '640323', '盐池县');
INSERT INTO `t_dict_areas` VALUES ('3032', '640300', '640324', '同心县');
INSERT INTO `t_dict_areas` VALUES ('3033', '640300', '640381', '青铜峡市');
INSERT INTO `t_dict_areas` VALUES ('3034', '640400', '640401', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('3035', '640400', '640402', '原州区');
INSERT INTO `t_dict_areas` VALUES ('3036', '640400', '640422', '西吉县');
INSERT INTO `t_dict_areas` VALUES ('3037', '640400', '640423', '隆德县');
INSERT INTO `t_dict_areas` VALUES ('3038', '640400', '640424', '泾源县');
INSERT INTO `t_dict_areas` VALUES ('3039', '640400', '640425', '彭阳县');
INSERT INTO `t_dict_areas` VALUES ('3040', '640500', '640501', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('3041', '640500', '640502', '沙坡头区');
INSERT INTO `t_dict_areas` VALUES ('3042', '640500', '640521', '中宁县');
INSERT INTO `t_dict_areas` VALUES ('3043', '640400', '640522', '海原县');
INSERT INTO `t_dict_areas` VALUES ('3044', '650100', '650101', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('3045', '650100', '650102', '天山区');
INSERT INTO `t_dict_areas` VALUES ('3046', '650100', '650103', '沙依巴克区');
INSERT INTO `t_dict_areas` VALUES ('3047', '650100', '650104', '新市区');
INSERT INTO `t_dict_areas` VALUES ('3048', '650100', '650105', '水磨沟区');
INSERT INTO `t_dict_areas` VALUES ('3049', '650100', '650106', '头屯河区');
INSERT INTO `t_dict_areas` VALUES ('3050', '650100', '650107', '达坂城区');
INSERT INTO `t_dict_areas` VALUES ('3051', '650100', '650108', '东山区');
INSERT INTO `t_dict_areas` VALUES ('3052', '650100', '650121', '乌鲁木齐县');
INSERT INTO `t_dict_areas` VALUES ('3053', '650200', '650201', '市辖区');
INSERT INTO `t_dict_areas` VALUES ('3054', '650200', '650202', '独山子区');
INSERT INTO `t_dict_areas` VALUES ('3055', '650200', '650203', '克拉玛依区');
INSERT INTO `t_dict_areas` VALUES ('3056', '650200', '650204', '白碱滩区');
INSERT INTO `t_dict_areas` VALUES ('3057', '650200', '650205', '乌尔禾区');
INSERT INTO `t_dict_areas` VALUES ('3058', '652100', '652101', '吐鲁番市');
INSERT INTO `t_dict_areas` VALUES ('3059', '652100', '652122', '鄯善县');
INSERT INTO `t_dict_areas` VALUES ('3060', '652100', '652123', '托克逊县');
INSERT INTO `t_dict_areas` VALUES ('3061', '652200', '652201', '哈密市');
INSERT INTO `t_dict_areas` VALUES ('3062', '652200', '652222', '巴里坤哈萨克自治县');
INSERT INTO `t_dict_areas` VALUES ('3063', '652200', '652223', '伊吾县');
INSERT INTO `t_dict_areas` VALUES ('3064', '652300', '652301', '昌吉市');
INSERT INTO `t_dict_areas` VALUES ('3065', '652300', '652302', '阜康市');
INSERT INTO `t_dict_areas` VALUES ('3066', '652300', '652303', '米泉市');
INSERT INTO `t_dict_areas` VALUES ('3067', '652300', '652323', '呼图壁县');
INSERT INTO `t_dict_areas` VALUES ('3068', '652300', '652324', '玛纳斯县');
INSERT INTO `t_dict_areas` VALUES ('3069', '652300', '652325', '奇台县');
INSERT INTO `t_dict_areas` VALUES ('3070', '652300', '652327', '吉木萨尔县');
INSERT INTO `t_dict_areas` VALUES ('3071', '652300', '652328', '木垒哈萨克自治县');
INSERT INTO `t_dict_areas` VALUES ('3072', '652700', '652701', '博乐市');
INSERT INTO `t_dict_areas` VALUES ('3073', '652700', '652722', '精河县');
INSERT INTO `t_dict_areas` VALUES ('3074', '652700', '652723', '温泉县');
INSERT INTO `t_dict_areas` VALUES ('3075', '652800', '652801', '库尔勒市');
INSERT INTO `t_dict_areas` VALUES ('3076', '652800', '652822', '轮台县');
INSERT INTO `t_dict_areas` VALUES ('3077', '652800', '652823', '尉犁县');
INSERT INTO `t_dict_areas` VALUES ('3078', '652800', '652824', '若羌县');
INSERT INTO `t_dict_areas` VALUES ('3079', '652800', '652825', '且末县');
INSERT INTO `t_dict_areas` VALUES ('3080', '652800', '652826', '焉耆回族自治县');
INSERT INTO `t_dict_areas` VALUES ('3081', '652800', '652827', '和静县');
INSERT INTO `t_dict_areas` VALUES ('3082', '652800', '652828', '和硕县');
INSERT INTO `t_dict_areas` VALUES ('3083', '652800', '652829', '博湖县');
INSERT INTO `t_dict_areas` VALUES ('3084', '652900', '652901', '阿克苏市');
INSERT INTO `t_dict_areas` VALUES ('3085', '652900', '652922', '温宿县');
INSERT INTO `t_dict_areas` VALUES ('3086', '652900', '652923', '库车县');
INSERT INTO `t_dict_areas` VALUES ('3087', '652900', '652924', '沙雅县');
INSERT INTO `t_dict_areas` VALUES ('3088', '652900', '652925', '新和县');
INSERT INTO `t_dict_areas` VALUES ('3089', '652900', '652926', '拜城县');
INSERT INTO `t_dict_areas` VALUES ('3090', '652900', '652927', '乌什县');
INSERT INTO `t_dict_areas` VALUES ('3091', '652900', '652928', '阿瓦提县');
INSERT INTO `t_dict_areas` VALUES ('3092', '652900', '652929', '柯坪县');
INSERT INTO `t_dict_areas` VALUES ('3093', '653000', '653001', '阿图什市');
INSERT INTO `t_dict_areas` VALUES ('3094', '653000', '653022', '阿克陶县');
INSERT INTO `t_dict_areas` VALUES ('3095', '653000', '653023', '阿合奇县');
INSERT INTO `t_dict_areas` VALUES ('3096', '653000', '653024', '乌恰县');
INSERT INTO `t_dict_areas` VALUES ('3097', '653100', '653101', '喀什市');
INSERT INTO `t_dict_areas` VALUES ('3098', '653100', '653121', '疏附县');
INSERT INTO `t_dict_areas` VALUES ('3099', '653100', '653122', '疏勒县');
INSERT INTO `t_dict_areas` VALUES ('3100', '653100', '653123', '英吉沙县');
INSERT INTO `t_dict_areas` VALUES ('3101', '653100', '653124', '泽普县');
INSERT INTO `t_dict_areas` VALUES ('3102', '653100', '653125', '莎车县');
INSERT INTO `t_dict_areas` VALUES ('3103', '653100', '653126', '叶城县');
INSERT INTO `t_dict_areas` VALUES ('3104', '653100', '653127', '麦盖提县');
INSERT INTO `t_dict_areas` VALUES ('3105', '653100', '653128', '岳普湖县');
INSERT INTO `t_dict_areas` VALUES ('3106', '653100', '653129', '伽师县');
INSERT INTO `t_dict_areas` VALUES ('3107', '653100', '653130', '巴楚县');
INSERT INTO `t_dict_areas` VALUES ('3108', '653100', '653131', '塔什库尔干塔吉克自治县');
INSERT INTO `t_dict_areas` VALUES ('3109', '653200', '653201', '和田市');
INSERT INTO `t_dict_areas` VALUES ('3110', '653200', '653221', '和田县');
INSERT INTO `t_dict_areas` VALUES ('3111', '653200', '653222', '墨玉县');
INSERT INTO `t_dict_areas` VALUES ('3112', '653200', '653223', '皮山县');
INSERT INTO `t_dict_areas` VALUES ('3113', '653200', '653224', '洛浦县');
INSERT INTO `t_dict_areas` VALUES ('3114', '653200', '653225', '策勒县');
INSERT INTO `t_dict_areas` VALUES ('3115', '653200', '653226', '于田县');
INSERT INTO `t_dict_areas` VALUES ('3116', '653200', '653227', '民丰县');
INSERT INTO `t_dict_areas` VALUES ('3117', '654000', '654002', '伊宁市');
INSERT INTO `t_dict_areas` VALUES ('3118', '654000', '654003', '奎屯市');
INSERT INTO `t_dict_areas` VALUES ('3119', '654000', '654021', '伊宁县');
INSERT INTO `t_dict_areas` VALUES ('3120', '654000', '654022', '察布查尔锡伯自治县');
INSERT INTO `t_dict_areas` VALUES ('3121', '654000', '654023', '霍城县');
INSERT INTO `t_dict_areas` VALUES ('3122', '654000', '654024', '巩留县');
INSERT INTO `t_dict_areas` VALUES ('3123', '654000', '654025', '新源县');
INSERT INTO `t_dict_areas` VALUES ('3124', '654000', '654026', '昭苏县');
INSERT INTO `t_dict_areas` VALUES ('3125', '654000', '654027', '特克斯县');
INSERT INTO `t_dict_areas` VALUES ('3126', '654000', '654028', '尼勒克县');
INSERT INTO `t_dict_areas` VALUES ('3127', '654200', '654201', '塔城市');
INSERT INTO `t_dict_areas` VALUES ('3128', '654200', '654202', '乌苏市');
INSERT INTO `t_dict_areas` VALUES ('3129', '654200', '654221', '额敏县');
INSERT INTO `t_dict_areas` VALUES ('3130', '654200', '654223', '沙湾县');
INSERT INTO `t_dict_areas` VALUES ('3131', '654200', '654224', '托里县');
INSERT INTO `t_dict_areas` VALUES ('3132', '654200', '654225', '裕民县');
INSERT INTO `t_dict_areas` VALUES ('3133', '654200', '654226', '和布克赛尔蒙古自治县');
INSERT INTO `t_dict_areas` VALUES ('3134', '654300', '654301', '阿勒泰市');
INSERT INTO `t_dict_areas` VALUES ('3135', '654300', '654321', '布尔津县');
INSERT INTO `t_dict_areas` VALUES ('3136', '654300', '654322', '富蕴县');
INSERT INTO `t_dict_areas` VALUES ('3137', '654300', '654323', '福海县');
INSERT INTO `t_dict_areas` VALUES ('3138', '654300', '654324', '哈巴河县');
INSERT INTO `t_dict_areas` VALUES ('3139', '654300', '654325', '青河县');
INSERT INTO `t_dict_areas` VALUES ('3140', '654300', '654326', '吉木乃县');
INSERT INTO `t_dict_areas` VALUES ('3141', '659000', '659001', '石河子市');
INSERT INTO `t_dict_areas` VALUES ('3142', '659000', '659002', '阿拉尔市');
INSERT INTO `t_dict_areas` VALUES ('3143', '659000', '659003', '图木舒克市');
INSERT INTO `t_dict_areas` VALUES ('3144', '659000', '659004', '五家渠市');

-- ----------------------------
-- Table structure for t_dict_cities
-- ----------------------------
DROP TABLE IF EXISTS `t_dict_cities`;
CREATE TABLE `t_dict_cities` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_code` varchar(6) DEFAULT NULL,
  `city_code` varchar(6) DEFAULT NULL,
  `city_name` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dict_cities
-- ----------------------------
INSERT INTO `t_dict_cities` VALUES ('1', '110000', '110100', '市辖区');
INSERT INTO `t_dict_cities` VALUES ('2', '110000', '110200', '县');
INSERT INTO `t_dict_cities` VALUES ('3', '120000', '120100', '市辖区');
INSERT INTO `t_dict_cities` VALUES ('4', '120000', '120200', '县');
INSERT INTO `t_dict_cities` VALUES ('5', '130000', '130100', '石家庄市');
INSERT INTO `t_dict_cities` VALUES ('6', '130000', '130200', '唐山市');
INSERT INTO `t_dict_cities` VALUES ('7', '130000', '130300', '秦皇岛市');
INSERT INTO `t_dict_cities` VALUES ('8', '130000', '130400', '邯郸市');
INSERT INTO `t_dict_cities` VALUES ('9', '130000', '130500', '邢台市');
INSERT INTO `t_dict_cities` VALUES ('10', '130000', '130600', '保定市');
INSERT INTO `t_dict_cities` VALUES ('11', '130000', '130700', '张家口市');
INSERT INTO `t_dict_cities` VALUES ('12', '130000', '130800', '承德市');
INSERT INTO `t_dict_cities` VALUES ('13', '130000', '130900', '沧州市');
INSERT INTO `t_dict_cities` VALUES ('14', '130000', '131000', '廊坊市');
INSERT INTO `t_dict_cities` VALUES ('15', '130000', '131100', '衡水市');
INSERT INTO `t_dict_cities` VALUES ('16', '140000', '140100', '太原市');
INSERT INTO `t_dict_cities` VALUES ('17', '140000', '140200', '大同市');
INSERT INTO `t_dict_cities` VALUES ('18', '140000', '140300', '阳泉市');
INSERT INTO `t_dict_cities` VALUES ('19', '140000', '140400', '长治市');
INSERT INTO `t_dict_cities` VALUES ('20', '140000', '140500', '晋城市');
INSERT INTO `t_dict_cities` VALUES ('21', '140000', '140600', '朔州市');
INSERT INTO `t_dict_cities` VALUES ('22', '140000', '140700', '晋中市');
INSERT INTO `t_dict_cities` VALUES ('23', '140000', '140800', '运城市');
INSERT INTO `t_dict_cities` VALUES ('24', '140000', '140900', '忻州市');
INSERT INTO `t_dict_cities` VALUES ('25', '140000', '141000', '临汾市');
INSERT INTO `t_dict_cities` VALUES ('26', '140000', '141100', '吕梁市');
INSERT INTO `t_dict_cities` VALUES ('27', '150000', '150100', '呼和浩特市');
INSERT INTO `t_dict_cities` VALUES ('28', '150000', '150200', '包头市');
INSERT INTO `t_dict_cities` VALUES ('29', '150000', '150300', '乌海市');
INSERT INTO `t_dict_cities` VALUES ('30', '150000', '150400', '赤峰市');
INSERT INTO `t_dict_cities` VALUES ('31', '150000', '150500', '通辽市');
INSERT INTO `t_dict_cities` VALUES ('32', '150000', '150600', '鄂尔多斯市');
INSERT INTO `t_dict_cities` VALUES ('33', '150000', '150700', '呼伦贝尔市');
INSERT INTO `t_dict_cities` VALUES ('34', '150000', '150800', '巴彦淖尔市');
INSERT INTO `t_dict_cities` VALUES ('35', '150000', '150900', '乌兰察布市');
INSERT INTO `t_dict_cities` VALUES ('36', '150000', '152200', '兴安盟');
INSERT INTO `t_dict_cities` VALUES ('37', '150000', '152500', '锡林郭勒盟');
INSERT INTO `t_dict_cities` VALUES ('38', '150000', '152900', '阿拉善盟');
INSERT INTO `t_dict_cities` VALUES ('39', '210000', '210100', '沈阳市');
INSERT INTO `t_dict_cities` VALUES ('40', '210000', '210200', '大连市');
INSERT INTO `t_dict_cities` VALUES ('41', '210000', '210300', '鞍山市');
INSERT INTO `t_dict_cities` VALUES ('42', '210000', '210400', '抚顺市');
INSERT INTO `t_dict_cities` VALUES ('43', '210000', '210500', '本溪市');
INSERT INTO `t_dict_cities` VALUES ('44', '210000', '210600', '丹东市');
INSERT INTO `t_dict_cities` VALUES ('45', '210000', '210700', '锦州市');
INSERT INTO `t_dict_cities` VALUES ('46', '210000', '210800', '营口市');
INSERT INTO `t_dict_cities` VALUES ('47', '210000', '210900', '阜新市');
INSERT INTO `t_dict_cities` VALUES ('48', '210000', '211000', '辽阳市');
INSERT INTO `t_dict_cities` VALUES ('49', '210000', '211100', '盘锦市');
INSERT INTO `t_dict_cities` VALUES ('50', '210000', '211200', '铁岭市');
INSERT INTO `t_dict_cities` VALUES ('51', '210000', '211300', '朝阳市');
INSERT INTO `t_dict_cities` VALUES ('52', '210000', '211400', '葫芦岛市');
INSERT INTO `t_dict_cities` VALUES ('53', '220000', '220100', '长春市');
INSERT INTO `t_dict_cities` VALUES ('54', '220000', '220200', '吉林市');
INSERT INTO `t_dict_cities` VALUES ('55', '220000', '220300', '四平市');
INSERT INTO `t_dict_cities` VALUES ('56', '220000', '220400', '辽源市');
INSERT INTO `t_dict_cities` VALUES ('57', '220000', '220500', '通化市');
INSERT INTO `t_dict_cities` VALUES ('58', '220000', '220600', '白山市');
INSERT INTO `t_dict_cities` VALUES ('59', '220000', '220700', '松原市');
INSERT INTO `t_dict_cities` VALUES ('60', '220000', '220800', '白城市');
INSERT INTO `t_dict_cities` VALUES ('61', '220000', '222400', '延边朝鲜族自治州');
INSERT INTO `t_dict_cities` VALUES ('62', '230000', '230100', '哈尔滨市');
INSERT INTO `t_dict_cities` VALUES ('63', '230000', '230200', '齐齐哈尔市');
INSERT INTO `t_dict_cities` VALUES ('64', '230000', '230300', '鸡西市');
INSERT INTO `t_dict_cities` VALUES ('65', '230000', '230400', '鹤岗市');
INSERT INTO `t_dict_cities` VALUES ('66', '230000', '230500', '双鸭山市');
INSERT INTO `t_dict_cities` VALUES ('67', '230000', '230600', '大庆市');
INSERT INTO `t_dict_cities` VALUES ('68', '230000', '230700', '伊春市');
INSERT INTO `t_dict_cities` VALUES ('69', '230000', '230800', '佳木斯市');
INSERT INTO `t_dict_cities` VALUES ('70', '230000', '230900', '七台河市');
INSERT INTO `t_dict_cities` VALUES ('71', '230000', '231000', '牡丹江市');
INSERT INTO `t_dict_cities` VALUES ('72', '230000', '231100', '黑河市');
INSERT INTO `t_dict_cities` VALUES ('73', '230000', '231200', '绥化市');
INSERT INTO `t_dict_cities` VALUES ('74', '230000', '232700', '大兴安岭地区');
INSERT INTO `t_dict_cities` VALUES ('75', '310000', '310100', '市辖区');
INSERT INTO `t_dict_cities` VALUES ('76', '310000', '310200', '县');
INSERT INTO `t_dict_cities` VALUES ('77', '320000', '320100', '南京市');
INSERT INTO `t_dict_cities` VALUES ('78', '320000', '320200', '无锡市');
INSERT INTO `t_dict_cities` VALUES ('79', '320000', '320300', '徐州市');
INSERT INTO `t_dict_cities` VALUES ('80', '320000', '320400', '常州市');
INSERT INTO `t_dict_cities` VALUES ('81', '320000', '320500', '苏州市');
INSERT INTO `t_dict_cities` VALUES ('82', '320000', '320600', '南通市');
INSERT INTO `t_dict_cities` VALUES ('83', '320000', '320700', '连云港市');
INSERT INTO `t_dict_cities` VALUES ('84', '320000', '320800', '淮安市');
INSERT INTO `t_dict_cities` VALUES ('85', '320000', '320900', '盐城市');
INSERT INTO `t_dict_cities` VALUES ('86', '320000', '321000', '扬州市');
INSERT INTO `t_dict_cities` VALUES ('87', '320000', '321100', '镇江市');
INSERT INTO `t_dict_cities` VALUES ('88', '320000', '321200', '泰州市');
INSERT INTO `t_dict_cities` VALUES ('89', '320000', '321300', '宿迁市');
INSERT INTO `t_dict_cities` VALUES ('90', '330000', '330100', '杭州市');
INSERT INTO `t_dict_cities` VALUES ('91', '330000', '330200', '宁波市');
INSERT INTO `t_dict_cities` VALUES ('92', '330000', '330300', '温州市');
INSERT INTO `t_dict_cities` VALUES ('93', '330000', '330400', '嘉兴市');
INSERT INTO `t_dict_cities` VALUES ('94', '330000', '330500', '湖州市');
INSERT INTO `t_dict_cities` VALUES ('95', '330000', '330600', '绍兴市');
INSERT INTO `t_dict_cities` VALUES ('96', '330000', '330700', '金华市');
INSERT INTO `t_dict_cities` VALUES ('97', '330000', '330800', '衢州市');
INSERT INTO `t_dict_cities` VALUES ('98', '330000', '330900', '舟山市');
INSERT INTO `t_dict_cities` VALUES ('99', '330000', '331000', '台州市');
INSERT INTO `t_dict_cities` VALUES ('100', '330000', '331100', '丽水市');
INSERT INTO `t_dict_cities` VALUES ('101', '340000', '340100', '合肥市');
INSERT INTO `t_dict_cities` VALUES ('102', '340000', '340200', '芜湖市');
INSERT INTO `t_dict_cities` VALUES ('103', '340000', '340300', '蚌埠市');
INSERT INTO `t_dict_cities` VALUES ('104', '340000', '340400', '淮南市');
INSERT INTO `t_dict_cities` VALUES ('105', '340000', '340500', '马鞍山市');
INSERT INTO `t_dict_cities` VALUES ('106', '340000', '340600', '淮北市');
INSERT INTO `t_dict_cities` VALUES ('107', '340000', '340700', '铜陵市');
INSERT INTO `t_dict_cities` VALUES ('108', '340000', '340800', '安庆市');
INSERT INTO `t_dict_cities` VALUES ('109', '340000', '341000', '黄山市');
INSERT INTO `t_dict_cities` VALUES ('110', '340000', '341100', '滁州市');
INSERT INTO `t_dict_cities` VALUES ('111', '340000', '341200', '阜阳市');
INSERT INTO `t_dict_cities` VALUES ('112', '340000', '341300', '宿州市');
INSERT INTO `t_dict_cities` VALUES ('113', '340000', '341400', '巢湖市');
INSERT INTO `t_dict_cities` VALUES ('114', '340000', '341500', '六安市');
INSERT INTO `t_dict_cities` VALUES ('115', '340000', '341600', '亳州市');
INSERT INTO `t_dict_cities` VALUES ('116', '340000', '341700', '池州市');
INSERT INTO `t_dict_cities` VALUES ('117', '340000', '341800', '宣城市');
INSERT INTO `t_dict_cities` VALUES ('118', '350000', '350100', '福州市');
INSERT INTO `t_dict_cities` VALUES ('119', '350000', '350200', '厦门市');
INSERT INTO `t_dict_cities` VALUES ('120', '350000', '350300', '莆田市');
INSERT INTO `t_dict_cities` VALUES ('121', '350000', '350400', '三明市');
INSERT INTO `t_dict_cities` VALUES ('122', '350000', '350500', '泉州市');
INSERT INTO `t_dict_cities` VALUES ('123', '350000', '350600', '漳州市');
INSERT INTO `t_dict_cities` VALUES ('124', '350000', '350700', '南平市');
INSERT INTO `t_dict_cities` VALUES ('125', '350000', '350800', '龙岩市');
INSERT INTO `t_dict_cities` VALUES ('126', '350000', '350900', '宁德市');
INSERT INTO `t_dict_cities` VALUES ('127', '360000', '360100', '南昌市');
INSERT INTO `t_dict_cities` VALUES ('128', '360000', '360200', '景德镇市');
INSERT INTO `t_dict_cities` VALUES ('129', '360000', '360300', '萍乡市');
INSERT INTO `t_dict_cities` VALUES ('130', '360000', '360400', '九江市');
INSERT INTO `t_dict_cities` VALUES ('131', '360000', '360500', '新余市');
INSERT INTO `t_dict_cities` VALUES ('132', '360000', '360600', '鹰潭市');
INSERT INTO `t_dict_cities` VALUES ('133', '360000', '360700', '赣州市');
INSERT INTO `t_dict_cities` VALUES ('134', '360000', '360800', '吉安市');
INSERT INTO `t_dict_cities` VALUES ('135', '360000', '360900', '宜春市');
INSERT INTO `t_dict_cities` VALUES ('136', '360000', '361000', '抚州市');
INSERT INTO `t_dict_cities` VALUES ('137', '360000', '361100', '上饶市');
INSERT INTO `t_dict_cities` VALUES ('138', '370000', '370100', '济南市');
INSERT INTO `t_dict_cities` VALUES ('139', '370000', '370200', '青岛市');
INSERT INTO `t_dict_cities` VALUES ('140', '370000', '370300', '淄博市');
INSERT INTO `t_dict_cities` VALUES ('141', '370000', '370400', '枣庄市');
INSERT INTO `t_dict_cities` VALUES ('142', '370000', '370500', '东营市');
INSERT INTO `t_dict_cities` VALUES ('143', '370000', '370600', '烟台市');
INSERT INTO `t_dict_cities` VALUES ('144', '370000', '370700', '潍坊市');
INSERT INTO `t_dict_cities` VALUES ('145', '370000', '370800', '济宁市');
INSERT INTO `t_dict_cities` VALUES ('146', '370000', '370900', '泰安市');
INSERT INTO `t_dict_cities` VALUES ('147', '370000', '371000', '威海市');
INSERT INTO `t_dict_cities` VALUES ('148', '370000', '371100', '日照市');
INSERT INTO `t_dict_cities` VALUES ('149', '370000', '371200', '莱芜市');
INSERT INTO `t_dict_cities` VALUES ('150', '370000', '371300', '临沂市');
INSERT INTO `t_dict_cities` VALUES ('151', '370000', '371400', '德州市');
INSERT INTO `t_dict_cities` VALUES ('152', '370000', '371500', '聊城市');
INSERT INTO `t_dict_cities` VALUES ('153', '370000', '371600', '滨州市');
INSERT INTO `t_dict_cities` VALUES ('154', '370000', '371700', '荷泽市');
INSERT INTO `t_dict_cities` VALUES ('155', '410000', '410100', '郑州市');
INSERT INTO `t_dict_cities` VALUES ('156', '410000', '410200', '开封市');
INSERT INTO `t_dict_cities` VALUES ('157', '410000', '410300', '洛阳市');
INSERT INTO `t_dict_cities` VALUES ('158', '410000', '410400', '平顶山市');
INSERT INTO `t_dict_cities` VALUES ('159', '410000', '410500', '安阳市');
INSERT INTO `t_dict_cities` VALUES ('160', '410000', '410600', '鹤壁市');
INSERT INTO `t_dict_cities` VALUES ('161', '410000', '410700', '新乡市');
INSERT INTO `t_dict_cities` VALUES ('162', '410000', '410800', '焦作市');
INSERT INTO `t_dict_cities` VALUES ('163', '410000', '410900', '濮阳市');
INSERT INTO `t_dict_cities` VALUES ('164', '410000', '411000', '许昌市');
INSERT INTO `t_dict_cities` VALUES ('165', '410000', '411100', '漯河市');
INSERT INTO `t_dict_cities` VALUES ('166', '410000', '411200', '三门峡市');
INSERT INTO `t_dict_cities` VALUES ('167', '410000', '411300', '南阳市');
INSERT INTO `t_dict_cities` VALUES ('168', '410000', '411400', '商丘市');
INSERT INTO `t_dict_cities` VALUES ('169', '410000', '411500', '信阳市');
INSERT INTO `t_dict_cities` VALUES ('170', '410000', '411600', '周口市');
INSERT INTO `t_dict_cities` VALUES ('171', '410000', '411700', '驻马店市');
INSERT INTO `t_dict_cities` VALUES ('172', '420000', '420100', '武汉市');
INSERT INTO `t_dict_cities` VALUES ('173', '420000', '420200', '黄石市');
INSERT INTO `t_dict_cities` VALUES ('174', '420000', '420300', '十堰市');
INSERT INTO `t_dict_cities` VALUES ('175', '420000', '420500', '宜昌市');
INSERT INTO `t_dict_cities` VALUES ('176', '420000', '420600', '襄樊市');
INSERT INTO `t_dict_cities` VALUES ('177', '420000', '420700', '鄂州市');
INSERT INTO `t_dict_cities` VALUES ('178', '420000', '420800', '荆门市');
INSERT INTO `t_dict_cities` VALUES ('179', '420000', '420900', '孝感市');
INSERT INTO `t_dict_cities` VALUES ('180', '420000', '421000', '荆州市');
INSERT INTO `t_dict_cities` VALUES ('181', '420000', '421100', '黄冈市');
INSERT INTO `t_dict_cities` VALUES ('182', '420000', '421200', '咸宁市');
INSERT INTO `t_dict_cities` VALUES ('183', '420000', '421300', '随州市');
INSERT INTO `t_dict_cities` VALUES ('184', '420000', '422800', '恩施土家族苗族自治州');
INSERT INTO `t_dict_cities` VALUES ('185', '420000', '429000', '省直辖行政单位');
INSERT INTO `t_dict_cities` VALUES ('186', '430000', '430100', '长沙市');
INSERT INTO `t_dict_cities` VALUES ('187', '430000', '430200', '株洲市');
INSERT INTO `t_dict_cities` VALUES ('188', '430000', '430300', '湘潭市');
INSERT INTO `t_dict_cities` VALUES ('189', '430000', '430400', '衡阳市');
INSERT INTO `t_dict_cities` VALUES ('190', '430000', '430500', '邵阳市');
INSERT INTO `t_dict_cities` VALUES ('191', '430000', '430600', '岳阳市');
INSERT INTO `t_dict_cities` VALUES ('192', '430000', '430700', '常德市');
INSERT INTO `t_dict_cities` VALUES ('193', '430000', '430800', '张家界市');
INSERT INTO `t_dict_cities` VALUES ('194', '430000', '430900', '益阳市');
INSERT INTO `t_dict_cities` VALUES ('195', '430000', '431000', '郴州市');
INSERT INTO `t_dict_cities` VALUES ('196', '430000', '431100', '永州市');
INSERT INTO `t_dict_cities` VALUES ('197', '430000', '431200', '怀化市');
INSERT INTO `t_dict_cities` VALUES ('198', '430000', '431300', '娄底市');
INSERT INTO `t_dict_cities` VALUES ('199', '430000', '433100', '湘西土家族苗族自治州');
INSERT INTO `t_dict_cities` VALUES ('200', '440000', '440100', '广州市');
INSERT INTO `t_dict_cities` VALUES ('201', '440000', '440200', '韶关市');
INSERT INTO `t_dict_cities` VALUES ('202', '440000', '440300', '深圳市');
INSERT INTO `t_dict_cities` VALUES ('203', '440000', '440400', '珠海市');
INSERT INTO `t_dict_cities` VALUES ('204', '440000', '440500', '汕头市');
INSERT INTO `t_dict_cities` VALUES ('205', '440000', '440600', '佛山市');
INSERT INTO `t_dict_cities` VALUES ('206', '440000', '440700', '江门市');
INSERT INTO `t_dict_cities` VALUES ('207', '440000', '440800', '湛江市');
INSERT INTO `t_dict_cities` VALUES ('208', '440000', '440900', '茂名市');
INSERT INTO `t_dict_cities` VALUES ('209', '440000', '441200', '肇庆市');
INSERT INTO `t_dict_cities` VALUES ('210', '440000', '441300', '惠州市');
INSERT INTO `t_dict_cities` VALUES ('211', '440000', '441400', '梅州市');
INSERT INTO `t_dict_cities` VALUES ('212', '440000', '441500', '汕尾市');
INSERT INTO `t_dict_cities` VALUES ('213', '440000', '441600', '河源市');
INSERT INTO `t_dict_cities` VALUES ('214', '440000', '441700', '阳江市');
INSERT INTO `t_dict_cities` VALUES ('215', '440000', '441800', '清远市');
INSERT INTO `t_dict_cities` VALUES ('216', '440000', '441900', '东莞市');
INSERT INTO `t_dict_cities` VALUES ('217', '440000', '442000', '中山市');
INSERT INTO `t_dict_cities` VALUES ('218', '440000', '445100', '潮州市');
INSERT INTO `t_dict_cities` VALUES ('219', '440000', '445200', '揭阳市');
INSERT INTO `t_dict_cities` VALUES ('220', '440000', '445300', '云浮市');
INSERT INTO `t_dict_cities` VALUES ('221', '450000', '450100', '南宁市');
INSERT INTO `t_dict_cities` VALUES ('222', '450000', '450200', '柳州市');
INSERT INTO `t_dict_cities` VALUES ('223', '450000', '450300', '桂林市');
INSERT INTO `t_dict_cities` VALUES ('224', '450000', '450400', '梧州市');
INSERT INTO `t_dict_cities` VALUES ('225', '450000', '450500', '北海市');
INSERT INTO `t_dict_cities` VALUES ('226', '450000', '450600', '防城港市');
INSERT INTO `t_dict_cities` VALUES ('227', '450000', '450700', '钦州市');
INSERT INTO `t_dict_cities` VALUES ('228', '450000', '450800', '贵港市');
INSERT INTO `t_dict_cities` VALUES ('229', '450000', '450900', '玉林市');
INSERT INTO `t_dict_cities` VALUES ('230', '450000', '451000', '百色市');
INSERT INTO `t_dict_cities` VALUES ('231', '450000', '451100', '贺州市');
INSERT INTO `t_dict_cities` VALUES ('232', '450000', '451200', '河池市');
INSERT INTO `t_dict_cities` VALUES ('233', '450000', '451300', '来宾市');
INSERT INTO `t_dict_cities` VALUES ('234', '450000', '451400', '崇左市');
INSERT INTO `t_dict_cities` VALUES ('235', '460000', '460100', '海口市');
INSERT INTO `t_dict_cities` VALUES ('236', '460000', '460200', '三亚市');
INSERT INTO `t_dict_cities` VALUES ('237', '460000', '469000', '省直辖县级行政单位');
INSERT INTO `t_dict_cities` VALUES ('238', '500000', '500100', '市辖区');
INSERT INTO `t_dict_cities` VALUES ('239', '500000', '500200', '县');
INSERT INTO `t_dict_cities` VALUES ('240', '500000', '500300', '市');
INSERT INTO `t_dict_cities` VALUES ('241', '510000', '510100', '成都市');
INSERT INTO `t_dict_cities` VALUES ('242', '510000', '510300', '自贡市');
INSERT INTO `t_dict_cities` VALUES ('243', '510000', '510400', '攀枝花市');
INSERT INTO `t_dict_cities` VALUES ('244', '510000', '510500', '泸州市');
INSERT INTO `t_dict_cities` VALUES ('245', '510000', '510600', '德阳市');
INSERT INTO `t_dict_cities` VALUES ('246', '510000', '510700', '绵阳市');
INSERT INTO `t_dict_cities` VALUES ('247', '510000', '510800', '广元市');
INSERT INTO `t_dict_cities` VALUES ('248', '510000', '510900', '遂宁市');
INSERT INTO `t_dict_cities` VALUES ('249', '510000', '511000', '内江市');
INSERT INTO `t_dict_cities` VALUES ('250', '510000', '511100', '乐山市');
INSERT INTO `t_dict_cities` VALUES ('251', '510000', '511300', '南充市');
INSERT INTO `t_dict_cities` VALUES ('252', '510000', '511400', '眉山市');
INSERT INTO `t_dict_cities` VALUES ('253', '510000', '511500', '宜宾市');
INSERT INTO `t_dict_cities` VALUES ('254', '510000', '511600', '广安市');
INSERT INTO `t_dict_cities` VALUES ('255', '510000', '511700', '达州市');
INSERT INTO `t_dict_cities` VALUES ('256', '510000', '511800', '雅安市');
INSERT INTO `t_dict_cities` VALUES ('257', '510000', '511900', '巴中市');
INSERT INTO `t_dict_cities` VALUES ('258', '510000', '512000', '资阳市');
INSERT INTO `t_dict_cities` VALUES ('259', '510000', '513200', '阿坝藏族羌族自治州');
INSERT INTO `t_dict_cities` VALUES ('260', '510000', '513300', '甘孜藏族自治州');
INSERT INTO `t_dict_cities` VALUES ('261', '510000', '513400', '凉山彝族自治州');
INSERT INTO `t_dict_cities` VALUES ('262', '520000', '520100', '贵阳市');
INSERT INTO `t_dict_cities` VALUES ('263', '520000', '520200', '六盘水市');
INSERT INTO `t_dict_cities` VALUES ('264', '520000', '520300', '遵义市');
INSERT INTO `t_dict_cities` VALUES ('265', '520000', '520400', '安顺市');
INSERT INTO `t_dict_cities` VALUES ('266', '520000', '522200', '铜仁地区');
INSERT INTO `t_dict_cities` VALUES ('267', '520000', '522300', '黔西南布依族苗族自治州');
INSERT INTO `t_dict_cities` VALUES ('268', '520000', '522400', '毕节地区');
INSERT INTO `t_dict_cities` VALUES ('269', '520000', '522600', '黔东南苗族侗族自治州');
INSERT INTO `t_dict_cities` VALUES ('270', '520000', '522700', '黔南布依族苗族自治州');
INSERT INTO `t_dict_cities` VALUES ('271', '530000', '530100', '昆明市');
INSERT INTO `t_dict_cities` VALUES ('272', '530000', '530300', '曲靖市');
INSERT INTO `t_dict_cities` VALUES ('273', '530000', '530400', '玉溪市');
INSERT INTO `t_dict_cities` VALUES ('274', '530000', '530500', '保山市');
INSERT INTO `t_dict_cities` VALUES ('275', '530000', '530600', '昭通市');
INSERT INTO `t_dict_cities` VALUES ('276', '530000', '530700', '丽江市');
INSERT INTO `t_dict_cities` VALUES ('277', '530000', '530800', '思茅市');
INSERT INTO `t_dict_cities` VALUES ('278', '530000', '530900', '临沧市');
INSERT INTO `t_dict_cities` VALUES ('279', '530000', '532300', '楚雄彝族自治州');
INSERT INTO `t_dict_cities` VALUES ('280', '530000', '532500', '红河哈尼族彝族自治州');
INSERT INTO `t_dict_cities` VALUES ('281', '530000', '532600', '文山壮族苗族自治州');
INSERT INTO `t_dict_cities` VALUES ('282', '530000', '532800', '西双版纳傣族自治州');
INSERT INTO `t_dict_cities` VALUES ('283', '530000', '532900', '大理白族自治州');
INSERT INTO `t_dict_cities` VALUES ('284', '530000', '533100', '德宏傣族景颇族自治州');
INSERT INTO `t_dict_cities` VALUES ('285', '530000', '533300', '怒江傈僳族自治州');
INSERT INTO `t_dict_cities` VALUES ('286', '530000', '533400', '迪庆藏族自治州');
INSERT INTO `t_dict_cities` VALUES ('287', '540000', '540100', '拉萨市');
INSERT INTO `t_dict_cities` VALUES ('288', '540000', '542100', '昌都地区');
INSERT INTO `t_dict_cities` VALUES ('289', '540000', '542200', '山南地区');
INSERT INTO `t_dict_cities` VALUES ('290', '540000', '542300', '日喀则地区');
INSERT INTO `t_dict_cities` VALUES ('291', '540000', '542400', '那曲地区');
INSERT INTO `t_dict_cities` VALUES ('292', '540000', '542500', '阿里地区');
INSERT INTO `t_dict_cities` VALUES ('293', '540000', '542600', '林芝地区');
INSERT INTO `t_dict_cities` VALUES ('294', '610000', '610100', '西安市');
INSERT INTO `t_dict_cities` VALUES ('295', '610000', '610200', '铜川市');
INSERT INTO `t_dict_cities` VALUES ('296', '610000', '610300', '宝鸡市');
INSERT INTO `t_dict_cities` VALUES ('297', '610000', '610400', '咸阳市');
INSERT INTO `t_dict_cities` VALUES ('298', '610000', '610500', '渭南市');
INSERT INTO `t_dict_cities` VALUES ('299', '610000', '610600', '延安市');
INSERT INTO `t_dict_cities` VALUES ('300', '610000', '610700', '汉中市');
INSERT INTO `t_dict_cities` VALUES ('301', '610000', '610800', '榆林市');
INSERT INTO `t_dict_cities` VALUES ('302', '610000', '610900', '安康市');
INSERT INTO `t_dict_cities` VALUES ('303', '610000', '611000', '商洛市');
INSERT INTO `t_dict_cities` VALUES ('304', '620000', '620100', '兰州市');
INSERT INTO `t_dict_cities` VALUES ('305', '620000', '620200', '嘉峪关市');
INSERT INTO `t_dict_cities` VALUES ('306', '620000', '620300', '金昌市');
INSERT INTO `t_dict_cities` VALUES ('307', '620000', '620400', '白银市');
INSERT INTO `t_dict_cities` VALUES ('308', '620000', '620500', '天水市');
INSERT INTO `t_dict_cities` VALUES ('309', '620000', '620600', '武威市');
INSERT INTO `t_dict_cities` VALUES ('310', '620000', '620700', '张掖市');
INSERT INTO `t_dict_cities` VALUES ('311', '620000', '620800', '平凉市');
INSERT INTO `t_dict_cities` VALUES ('312', '620000', '620900', '酒泉市');
INSERT INTO `t_dict_cities` VALUES ('313', '620000', '621000', '庆阳市');
INSERT INTO `t_dict_cities` VALUES ('314', '620000', '621100', '定西市');
INSERT INTO `t_dict_cities` VALUES ('315', '620000', '621200', '陇南市');
INSERT INTO `t_dict_cities` VALUES ('316', '620000', '622900', '临夏回族自治州');
INSERT INTO `t_dict_cities` VALUES ('317', '620000', '623000', '甘南藏族自治州');
INSERT INTO `t_dict_cities` VALUES ('318', '630000', '630100', '西宁市');
INSERT INTO `t_dict_cities` VALUES ('319', '630000', '632100', '海东地区');
INSERT INTO `t_dict_cities` VALUES ('320', '630000', '632200', '海北藏族自治州');
INSERT INTO `t_dict_cities` VALUES ('321', '630000', '632300', '黄南藏族自治州');
INSERT INTO `t_dict_cities` VALUES ('322', '630000', '632500', '海南藏族自治州');
INSERT INTO `t_dict_cities` VALUES ('323', '630000', '632600', '果洛藏族自治州');
INSERT INTO `t_dict_cities` VALUES ('324', '630000', '632700', '玉树藏族自治州');
INSERT INTO `t_dict_cities` VALUES ('325', '630000', '632800', '海西蒙古族藏族自治州');
INSERT INTO `t_dict_cities` VALUES ('326', '640000', '640100', '银川市');
INSERT INTO `t_dict_cities` VALUES ('327', '640000', '640200', '石嘴山市');
INSERT INTO `t_dict_cities` VALUES ('328', '640000', '640300', '吴忠市');
INSERT INTO `t_dict_cities` VALUES ('329', '640000', '640400', '固原市');
INSERT INTO `t_dict_cities` VALUES ('330', '640000', '640500', '中卫市');
INSERT INTO `t_dict_cities` VALUES ('331', '650000', '650100', '乌鲁木齐市');
INSERT INTO `t_dict_cities` VALUES ('332', '650000', '650200', '克拉玛依市');
INSERT INTO `t_dict_cities` VALUES ('333', '650000', '652100', '吐鲁番地区');
INSERT INTO `t_dict_cities` VALUES ('334', '650000', '652200', '哈密地区');
INSERT INTO `t_dict_cities` VALUES ('335', '650000', '652300', '昌吉回族自治州');
INSERT INTO `t_dict_cities` VALUES ('336', '650000', '652700', '博尔塔拉蒙古自治州');
INSERT INTO `t_dict_cities` VALUES ('337', '650000', '652800', '巴音郭楞蒙古自治州');
INSERT INTO `t_dict_cities` VALUES ('338', '650000', '652900', '阿克苏地区');
INSERT INTO `t_dict_cities` VALUES ('339', '650000', '653000', '克孜勒苏柯尔克孜自治州');
INSERT INTO `t_dict_cities` VALUES ('340', '650000', '653100', '喀什地区');
INSERT INTO `t_dict_cities` VALUES ('341', '650000', '653200', '和田地区');
INSERT INTO `t_dict_cities` VALUES ('342', '650000', '654000', '伊犁哈萨克自治州');
INSERT INTO `t_dict_cities` VALUES ('343', '650000', '654200', '塔城地区');
INSERT INTO `t_dict_cities` VALUES ('344', '650000', '654300', '阿勒泰地区');
INSERT INTO `t_dict_cities` VALUES ('345', '650000', '659000', '省直辖行政单位');

-- ----------------------------
-- Table structure for t_dict_provinces
-- ----------------------------
DROP TABLE IF EXISTS `t_dict_provinces`;
CREATE TABLE `t_dict_provinces` (
  `province_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_code` varchar(6) DEFAULT NULL,
  `province_name` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`province_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dict_provinces
-- ----------------------------
INSERT INTO `t_dict_provinces` VALUES ('1', '110000', '北京市');
INSERT INTO `t_dict_provinces` VALUES ('2', '120000', '天津市');
INSERT INTO `t_dict_provinces` VALUES ('3', '130000', '河北省');
INSERT INTO `t_dict_provinces` VALUES ('4', '140000', '山西省');
INSERT INTO `t_dict_provinces` VALUES ('5', '150000', '内蒙古自治区');
INSERT INTO `t_dict_provinces` VALUES ('6', '210000', '辽宁省');
INSERT INTO `t_dict_provinces` VALUES ('7', '220000', '吉林省');
INSERT INTO `t_dict_provinces` VALUES ('8', '230000', '黑龙江省');
INSERT INTO `t_dict_provinces` VALUES ('9', '310000', '上海市');
INSERT INTO `t_dict_provinces` VALUES ('10', '320000', '江苏省');
INSERT INTO `t_dict_provinces` VALUES ('11', '330000', '浙江省');
INSERT INTO `t_dict_provinces` VALUES ('12', '340000', '安徽省');
INSERT INTO `t_dict_provinces` VALUES ('13', '350000', '福建省');
INSERT INTO `t_dict_provinces` VALUES ('14', '360000', '江西省');
INSERT INTO `t_dict_provinces` VALUES ('15', '370000', '山东省');
INSERT INTO `t_dict_provinces` VALUES ('16', '410000', '河南省');
INSERT INTO `t_dict_provinces` VALUES ('17', '420000', '湖北省');
INSERT INTO `t_dict_provinces` VALUES ('18', '430000', '湖南省');
INSERT INTO `t_dict_provinces` VALUES ('19', '440000', '广东省');
INSERT INTO `t_dict_provinces` VALUES ('20', '450000', '广西壮族自治区');
INSERT INTO `t_dict_provinces` VALUES ('21', '460000', '海南省');
INSERT INTO `t_dict_provinces` VALUES ('22', '500000', '重庆市');
INSERT INTO `t_dict_provinces` VALUES ('23', '510000', '四川省');
INSERT INTO `t_dict_provinces` VALUES ('24', '520000', '贵州省');
INSERT INTO `t_dict_provinces` VALUES ('25', '530000', '云南省');
INSERT INTO `t_dict_provinces` VALUES ('26', '540000', '西藏自治区');
INSERT INTO `t_dict_provinces` VALUES ('27', '610000', '陕西省');
INSERT INTO `t_dict_provinces` VALUES ('28', '620000', '甘肃省');
INSERT INTO `t_dict_provinces` VALUES ('29', '630000', '青海省');
INSERT INTO `t_dict_provinces` VALUES ('30', '640000', '宁夏回族自治区');
INSERT INTO `t_dict_provinces` VALUES ('31', '650000', '新疆维吾尔自治区');
INSERT INTO `t_dict_provinces` VALUES ('32', '710000', '台湾省');
INSERT INTO `t_dict_provinces` VALUES ('33', '810000', '香港特别行政区');
INSERT INTO `t_dict_provinces` VALUES ('34', '820000', '澳门特别行政区');

-- ----------------------------
-- Table structure for t_examine
-- ----------------------------
DROP TABLE IF EXISTS `t_examine`;
CREATE TABLE `t_examine` (
  `examine_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '审核Id',
  `app_id` int(11) DEFAULT NULL,
  `developer_id` int(11) DEFAULT NULL,
  `exmain_type` int(1) DEFAULT NULL COMMENT '审核认证的类型 1 应用类 2开发者 3 全部',
  `explain` text COMMENT '审核辅助说明',
  `publish_date` datetime DEFAULT NULL COMMENT '发布时间',
  `exmain_status` int(1) DEFAULT NULL COMMENT '审核状态',
  `deleted` int(1) DEFAULT NULL,
  `activated` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`examine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_examine
-- ----------------------------

-- ----------------------------
-- Table structure for t_feedback
-- ----------------------------
DROP TABLE IF EXISTS `t_feedback`;
CREATE TABLE `t_feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(225) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `reply_content` varchar(255) DEFAULT NULL COMMENT '后台回复的内容',
  `admin_id` int(11) DEFAULT NULL COMMENT '回复人的管理员Id',
  `deleted` int(1) DEFAULT NULL,
  `activated` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_feedback
-- ----------------------------
INSERT INTO `t_feedback` VALUES ('6', '1452', '7', null, null, null, null, null, null);
INSERT INTO `t_feedback` VALUES ('7', '1452', '7', null, null, null, null, null, null);
INSERT INTO `t_feedback` VALUES ('8', '1452', '7', null, null, null, null, null, null);
INSERT INTO `t_feedback` VALUES ('9', '1452', '7', null, null, null, null, null, null);
INSERT INTO `t_feedback` VALUES ('10', '1452', '7', null, null, null, null, null, null);
INSERT INTO `t_feedback` VALUES ('11', '415298', '7', null, null, null, null, null, null);
INSERT INTO `t_feedback` VALUES ('12', '14?', '7', null, null, null, null, null, null);
INSERT INTO `t_feedback` VALUES ('13', '123', '7', null, null, null, null, null, null);
INSERT INTO `t_feedback` VALUES ('14', '??', '7', null, null, null, null, null, null);
INSERT INTO `t_feedback` VALUES ('15', '1??', '7', null, null, null, null, null, null);
INSERT INTO `t_feedback` VALUES ('16', '???', '7', null, null, null, null, null, null);
INSERT INTO `t_feedback` VALUES ('21', 'yg', '7', null, null, null, null, null, null);
INSERT INTO `t_feedback` VALUES ('22', 'bjj', '7', null, null, null, null, null, null);
INSERT INTO `t_feedback` VALUES ('23', null, '10', null, null, null, null, null, null);
INSERT INTO `t_feedback` VALUES ('24', 'test', '10', null, null, null, null, null, null);
INSERT INTO `t_feedback` VALUES ('25', 'test', '10', null, null, null, null, null, null);
INSERT INTO `t_feedback` VALUES ('26', null, '10', null, null, null, null, null, null);
INSERT INTO `t_feedback` VALUES ('27', 'Gig', '10', null, null, null, null, null, null);
INSERT INTO `t_feedback` VALUES ('28', 'Greg', '10', null, null, null, null, null, null);
INSERT INTO `t_feedback` VALUES ('29', 'Test', '10', null, null, null, null, null, null);
INSERT INTO `t_feedback` VALUES ('30', '11111111', '7', null, null, null, null, null, null);
INSERT INTO `t_feedback` VALUES ('31', '1111', '7', null, null, null, null, '2018-11-23 15:11:56', null);
INSERT INTO `t_feedback` VALUES ('36', '????', '7', null, null, null, null, '2018-11-23 16:27:38', null);
INSERT INTO `t_feedback` VALUES ('37', '1', '17', null, null, null, null, '2018-11-23 18:02:15', null);
INSERT INTO `t_feedback` VALUES ('38', '????', '24', null, null, null, null, '2018-11-26 13:43:19', null);
INSERT INTO `t_feedback` VALUES ('39', '???????', '27', null, null, null, null, '2018-11-26 13:45:08', null);
INSERT INTO `t_feedback` VALUES ('40', '142536', '7', null, null, null, null, '2018-11-26 17:27:57', null);
INSERT INTO `t_feedback` VALUES ('41', 'Hhhjjjffddddd', '31', null, null, null, null, '2018-11-29 17:01:08', null);
INSERT INTO `t_feedback` VALUES ('42', 'Shfbrjj', '31', null, null, null, null, '2018-11-29 17:01:21', null);
INSERT INTO `t_feedback` VALUES ('43', '?\n??????', '24', null, null, null, null, '2018-12-04 16:04:24', null);
INSERT INTO `t_feedback` VALUES ('44', '哈哈哈规划', '24', null, null, null, null, '2019-01-03 11:20:52', null);
INSERT INTO `t_feedback` VALUES ('45', '愚夫愚妇又一次', '24', null, null, null, null, '2019-01-03 11:21:18', null);

-- ----------------------------
-- Table structure for t_feedback_image
-- ----------------------------
DROP TABLE IF EXISTS `t_feedback_image`;
CREATE TABLE `t_feedback_image` (
  `feedback_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_url` varchar(500) DEFAULT NULL,
  `feedback_id` int(11) DEFAULT NULL,
  `md5` varchar(60) DEFAULT NULL COMMENT '存储md5的值',
  `deleted` int(1) DEFAULT NULL,
  `activated` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`feedback_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_feedback_image
-- ----------------------------
INSERT INTO `t_feedback_image` VALUES ('14', 'http://www.emoonbow.com/applicationMarket-upload/feedBack-image/15396619367409-1601201A434c5.png', '21', null, null, null, '2018-10-16 11:52:17', null);
INSERT INTO `t_feedback_image` VALUES ('15', 'http://www.emoonbow.com/applicationMarket-upload/feedBack-image/15396619480189-1601201A434c5.png', '22', null, null, null, '2018-10-16 11:52:28', null);
INSERT INTO `t_feedback_image` VALUES ('16', 'http://www.emoonbow.com/applicationMarket-upload/feedBack-image/15396619480189-1FG91F613633.png', '22', null, null, null, '2018-10-16 11:52:28', null);
INSERT INTO `t_feedback_image` VALUES ('17', 'http://www.emoonbow.com/applicationMarket-upload/feedBack-image/1542510082797IMG_20181117_220010.jpg', '30', null, null, null, '2018-11-18 11:01:23', null);
INSERT INTO `t_feedback_image` VALUES ('18', 'http://www.emoonbow.com/applicationMarket-upload/feedBack-image/1542510082797IMG_20181117_220119.jpg', '30', null, null, null, '2018-11-18 11:01:23', null);
INSERT INTO `t_feedback_image` VALUES ('19', 'http://www.emoonbow.com/applicationMarket-upload/feedBack-image/1542957115522IMG_20181123_021153.jpg', '31', null, null, null, '2018-11-23 15:11:56', null);
INSERT INTO `t_feedback_image` VALUES ('20', 'http://www.emoonbow.com/applicationMarket-upload/feedBack-image/1542961657964magazine-unlock-01-2.3.1173-_E597D2C369CE2A9EA06B2E30323DCE47.jpg', '36', null, null, null, '2018-11-23 16:27:38', null);
INSERT INTO `t_feedback_image` VALUES ('21', 'http://www.emoonbow.com/applicationMarket-upload/feedBack-image/1542961657965magazine-unlock-01-2.3.1173-_693D863FBBAD249AB99DE3DADF216CC5.jpg', '36', null, null, null, '2018-11-23 16:27:38', null);
INSERT INTO `t_feedback_image` VALUES ('22', 'http://www.emoonbow.com/applicationMarket-upload/feedBack-image/154296733513703.png', '37', null, null, null, '2018-11-23 18:02:15', null);
INSERT INTO `t_feedback_image` VALUES ('23', 'http://www.emoonbow.com/applicationMarket-upload/feedBack-image/154296733513704.png', '37', null, null, null, '2018-11-23 18:02:15', null);
INSERT INTO `t_feedback_image` VALUES ('24', 'http://www.emoonbow.com/applicationMarket-upload/feedBack-image/154296733513707.png', '37', null, null, null, '2018-11-23 18:02:15', null);
INSERT INTO `t_feedback_image` VALUES ('25', 'http://www.emoonbow.com/applicationMarket-upload/feedBack-image/1543210998980Screenshot_2018-11-26-09-50-34-26.png', '38', null, null, null, '2018-11-26 13:43:19', null);
INSERT INTO `t_feedback_image` VALUES ('26', 'http://www.emoonbow.com/applicationMarket-upload/feedBack-image/1543211108366mmexport1543044141798.jpg', '39', null, null, null, '2018-11-26 13:45:08', null);

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(5000) DEFAULT NULL COMMENT '消息内容',
  `deleted` int(1) DEFAULT '1',
  `activated` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES ('7', '放假啦', '放假啦', '1', null, '2018-12-03 21:21:29', null);

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `content` text COMMENT '纯文本的内容',
  `html_content` text COMMENT 'html的内容',
  `top` int(1) DEFAULT NULL,
  `top_time` datetime DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  `activated` int(1) DEFAULT NULL,
  `publish_id` int(11) DEFAULT NULL COMMENT '发布人Id',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_notice
-- ----------------------------
INSERT INTO `t_notice` VALUES ('2', '明天不用上班', '欢迎Code scaffoldingRun&nbsp;ng generate component component-name&nbsp;to generate a new component. You can also use&nbsp;ng generate directive/pipe/service/class/module.BuildRun&nbsp;ng build&nbsp;to build the project. The build artifacts will be stored in the&nbsp;dist/&nbsp;directory. Use the&nbsp;-prod&nbsp;flag for a production build.Running unit testsRun&nbsp;ng test&nbsp;to execute the unit tests via&nbsp;Karma.Running end-to-end testsRun&nbsp;ng e2e&nbsp;to execute the end-to-end tests via&nbsp;Protractor. Before running the tests make sure you are serving the app via&nbsp;ng serve.Deploying to GitHub PagesRun&nbsp;ng github-pages:deploy&nbsp;to deploy to GitHub Pages.Further help', '<p>欢迎</p><h2>Code scaffolding</h2><p>Run&nbsp;<code>ng generate component component-name</code>&nbsp;to generate a new component. You can also use&nbsp;<code>ng generate directive/pipe/service/class/module</code>.</p><h2><a id=\"user-content-build\" aria-hidden=\"true\" href=\"https://github.com/fengnovo/wangEditor/tree/master/example/demo/in-ng2#build\"><svg viewBox=\"0 0 16 16\" version=\"1.1\" width=\"16\" height=\"16\" aria-hidden=\"true\"><path fill-rule=\"evenodd\" d=\"M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z\"></path></svg></a>Build</h2><p>Run&nbsp;<code>ng build</code>&nbsp;to build the project. The build artifacts will be stored in the&nbsp;<code>dist/</code>&nbsp;directory. Use the&nbsp;<code>-prod</code>&nbsp;flag for a production build.</p><h2><a id=\"user-content-running-unit-tests\" aria-hidden=\"true\" href=\"https://github.com/fengnovo/wangEditor/tree/master/example/demo/in-ng2#running-unit-tests\"><svg viewBox=\"0 0 16 16\" version=\"1.1\" width=\"16\" height=\"16\" aria-hidden=\"true\"><path fill-rule=\"evenodd\" d=\"M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z\"></path></svg></a>Running unit tests</h2><p>Run&nbsp;<code>ng test</code>&nbsp;to execute the unit tests via&nbsp;<a href=\"https://karma-runner.github.io/\" rel=\"nofollow\">Karma</a>.</p><h2><a id=\"user-content-running-end-to-end-tests\" aria-hidden=\"true\" href=\"https://github.com/fengnovo/wangEditor/tree/master/example/demo/in-ng2#running-end-to-end-tests\"><svg viewBox=\"0 0 16 16\" version=\"1.1\" width=\"16\" height=\"16\" aria-hidden=\"true\"><path fill-rule=\"evenodd\" d=\"M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z\"></path></svg></a>Running end-to-end tests</h2><p>Run&nbsp;<code>ng e2e</code>&nbsp;to execute the end-to-end tests via&nbsp;<a href=\"http://www.protractortest.org/\" rel=\"nofollow\">Protractor</a>. Before running the tests make sure you are serving the app via&nbsp;<code>ng serve</code>.</p><h2><a id=\"user-content-deploying-to-github-pages\" aria-hidden=\"true\" href=\"https://github.com/fengnovo/wangEditor/tree/master/example/demo/in-ng2#deploying-to-github-pages\"><svg viewBox=\"0 0 16 16\" version=\"1.1\" width=\"16\" height=\"16\" aria-hidden=\"true\"><path fill-rule=\"evenodd\" d=\"M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z\"></path></svg></a>Deploying to GitHub Pages</h2><p>Run&nbsp;<code>ng github-pages:deploy</code>&nbsp;to deploy to GitHub Pages.</p><h2><a id=\"user-content-further-help\" aria-hidden=\"true\" href=\"https://github.com/fengnovo/wangEditor/tree/master/example/demo/in-ng2#further-help\"><svg viewBox=\"0 0 16 16\" version=\"1.1\" width=\"16\" height=\"16\" aria-hidden=\"true\"><path fill-rule=\"evenodd\" d=\"M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z\"></path></svg></a>Further help</h2><p><br></p>', '1', '2018-08-22 18:07:26', null, null, '33', '2018-08-22 15:26:38', '2018-08-22 18:07:18');
INSERT INTO `t_notice` VALUES ('3', '放假啦', '避免视图数据污染(with check option)我们在创建的视图的时候加上with check option&nbsp;即可create view v_emp_30 as(select * from EMP where deptno=30) with check option;现在我们在往v_emp_30的视图中插入数据，其中字段deptno不等于30，那么就会报错，因为不符合创建视图时的子查询条件但是如果我们没有使用with check option，那么我们就会插入成功，虽然不会在视图中显示，但是插入到原表中了，造成了视图数据污染修改视图', '<h3 id=\"避免视图数据污染-with-check-option\">避免视图数据污染(with check option)</h3><ul><li>我们在创建的视图的时候加上<code>with check option</code>&nbsp;即可<ul><li><code>create view v_emp_30 as(select * from EMP where deptno=30) with check option;</code></li><li>现在我们在往v_emp_30的视图中插入数据，其中字段deptno不等于30，那么就会报错，因为不符合创建视图时的子查询条件</li><li>但是如果我们没有使用<code>with check option</code>，那么我们就会插入成功，虽然不会在视图中显示，但是插入到原表中了，造成了视图数据污染</li></ul></li></ul><h3 id=\"修改视图\"><a href=\"https://chenjiabing666.github.io/2018/03/28/SQL%E6%93%8D%E4%BD%9C%E5%85%AD/#%E4%BF%AE%E6%94%B9%E8%A7%86%E5%9B%BE\" title=\"修改视图\"></a>修改视图</h3><ul><li><p><br></p></li></ul>', '1', '2018-08-23 09:45:07', null, null, '1', '2018-08-22 15:44:12', '2018-08-23 09:44:56');
INSERT INTO `t_notice` VALUES ('4', '放假啦', '避免视图数据污染(with check option)我们在创建的视图的时候加上with check option&nbsp;即可create view v_emp_30 as(select * from EMP where deptno=30) with check option;现在我们在往v_emp_30的视图中插入数据，其中字段deptno不等于30，那么就会报错，因为不符合创建视图时的子查询条件但是如果我们没有使用with check option，那么我们就会插入成功，虽然不会在视图中显示，但是插入到原表中了，造成了视图数据污染修改视图我们创建一个视图create view view_emp_10 as(select * from emp where deptno=10);现在我们需要为子查询加上一个条件 工资大于3000的，即是 创建一张视图，里面数据是部门号为10，工资大于3000的全部员工信息，那么我们就需要在原有的view_emp_10的基础上修改create or replace view view_emp_10 as(select * from EMP where deptno=10 and sal&gt;3000);直接在create后面加上or replace即可，有就替换删除视图格式 ：drop view 视图名称drop view_emp_10; 删除视图view_emp_10，如果存在就删除，不存在就报错加上关键字&nbsp;if exists&nbsp;如果存在就删除，不存在也不报错drop view if exists view_emp_10;如果创建视图的时候对视图中的字段使用了别名，那么以后对视图的操作只能使用别名来操作create view view_1 as(select ename name from emp where deptno=10);&nbsp;这里面的子查询将字段ename起了别名，那么我们在以后操作的时候只能使用别名对这个字段操作案例创建视图显示每个部门对应的员工的名字`create view view_emp_dept as(select d.dname,e.ename from EMP e join Dept d on d.deptno=e.deptno);修改上面的视图在上面题的前提下只显示工资在3000以内的create or replace view view_emp_dept as(select d.dname,e.ename from EMP e join Dept d on d.deptno=e.deptno where e.sal&lt;3000);删除上面的视图drop view if exists v_emp_dept;索引原理索引概述什么是索引：索引是用来提高查询速度的技术，类似于一个目录，查询数据时会从索引中对数据进行定位，然后直接找到数据所在的位置为什么使用索引&nbsp;：因为不使用索引的话，查询数据会按照磁盘块一块一块的去查，如果数据量很大，效率很低索引分为聚集索引和非聚集索引在mysql中数据库会为主键自动创建聚集索引，聚集索引中数据是有序保存索引内部实现原理 ：B+tree数据库中创建索引的过程是数据库内部自己控制，然后使用索引的过程也是数据库自己操作的，不需要程序猿干涉创建索引格式：&nbsp;create index 索引名 on 表名(字段名([长度]));创建索引之前先查询title=’100’的数据，看看查询时间select * from item2 where title=’100’;创建title索引create index index_title on item2(title);再次查询，查看时间select * from item2 where title=’100’;查看索引格式:&nbsp;show index from 表名其中包含主键的索引，这个是自动创建的删除索引格式：drop index 索引名 on 表名drop index index_title on item2;索引是越多越好吗？有索引就一定好吗？因为索引会占用磁盘空间，所以创建索引需谨慎，只创建查询需求的索引索引要建立在大量的数据的表中，如果数据量不够大，可能会降低查询效率复合索引', '<h3 id=\"避免视图数据污染-with-check-option\">避免视图数据污染(with check option)</h3><ul><li>我们在创建的视图的时候加上<code>with check option</code>&nbsp;即可<ul><li><code>create view v_emp_30 as(select * from EMP where deptno=30) with check option;</code></li><li>现在我们在往v_emp_30的视图中插入数据，其中字段deptno不等于30，那么就会报错，因为不符合创建视图时的子查询条件</li><li>但是如果我们没有使用<code>with check option</code>，那么我们就会插入成功，虽然不会在视图中显示，但是插入到原表中了，造成了视图数据污染</li></ul></li></ul><h3 id=\"修改视图\"><a href=\"https://chenjiabing666.github.io/2018/03/28/SQL%E6%93%8D%E4%BD%9C%E5%85%AD/#%E4%BF%AE%E6%94%B9%E8%A7%86%E5%9B%BE\" title=\"修改视图\"></a>修改视图</h3><ul><li><p>我们创建一个视图</p><ul><li><code>create view view_emp_10 as(select * from emp where deptno=10);</code></li></ul></li><li><p>现在我们需要为子查询加上一个条件 工资大于3000的，即是 创建一张视图，里面数据是部门号为10，工资大于3000的全部员工信息，那么我们就需要在原有的view_emp_10的基础上修改</p><ul><li><code>create or replace view view_emp_10 as(select * from EMP where deptno=10 and sal&gt;3000);</code>直接在create后面加上<code>or replace</code>即可，有就替换</li></ul></li></ul><h3 id=\"删除视图\"><a href=\"https://chenjiabing666.github.io/2018/03/28/SQL%E6%93%8D%E4%BD%9C%E5%85%AD/#%E5%88%A0%E9%99%A4%E8%A7%86%E5%9B%BE\" title=\"删除视图\"></a>删除视图</h3><ul><li>格式 ：drop view 视图名称</li><li><p>drop view_emp_10; 删除视图view_emp_10，如果存在就删除，不存在就报错</p></li><li><p>加上关键字&nbsp;<code>if exists</code>&nbsp;如果存在就删除，不存在也不报错</p><ul><li><code>drop view if exists view_emp_10;</code></li></ul></li><li><p><strong>如果创建视图的时候对视图中的字段使用了别名，那么以后对视图的操作只能使用别名来操作</strong></p><ul><li><code>create view view_1 as(select ename name from emp where deptno=10);</code>&nbsp;这里面的子查询将字段ename起了别名，那么我们在以后操作的时候只能使用别名对这个字段操作</li></ul></li></ul><h2 id=\"案例\"><a href=\"https://chenjiabing666.github.io/2018/03/28/SQL%E6%93%8D%E4%BD%9C%E5%85%AD/#%E6%A1%88%E4%BE%8B\" title=\"案例\"></a>案例</h2><ul><li><p>创建视图显示每个部门对应的员工的名字</p><ul><li>`create view view_emp_dept as(select d.dname,e.ename from EMP e join Dept d on d.deptno=e.deptno);</li></ul></li><li><p>修改上面的视图在上面题的前提下只显示工资在3000以内的</p><ul><li><code>create or replace view view_emp_dept as(select d.dname,e.ename from EMP e join Dept d on d.deptno=e.deptno where e.sal&lt;3000);</code></li></ul></li><li><p>删除上面的视图</p><ul><li><code>drop view if exists v_emp_dept;</code></li></ul></li></ul><h2 id=\"索引原理\"><a href=\"https://chenjiabing666.github.io/2018/03/28/SQL%E6%93%8D%E4%BD%9C%E5%85%AD/#%E7%B4%A2%E5%BC%95%E5%8E%9F%E7%90%86\" title=\"索引原理\"></a>索引原理</h2><h3 id=\"索引概述\"><a href=\"https://chenjiabing666.github.io/2018/03/28/SQL%E6%93%8D%E4%BD%9C%E5%85%AD/#%E7%B4%A2%E5%BC%95%E6%A6%82%E8%BF%B0\" title=\"索引概述\"></a>索引概述</h3><ul><li><p><strong>什么是索引</strong>：</p><ul><li>索引是用来提高查询速度的技术，类似于一个目录，查询数据时会从索引中对数据进行定位，然后直接找到数据所在的位置</li></ul></li><li><p><strong>为什么使用索引</strong>&nbsp;：</p><ul><li>因为不使用索引的话，查询数据会按照磁盘块一块一块的去查，如果数据量很大，效率很低</li></ul></li><li><p>索引分为聚集索引和非聚集索引</p><ul><li>在mysql中数据库会为主键自动创建聚集索引，聚集索引中数据是有序保存</li></ul></li></ul><ul><li><p>索引内部实现原理 ：</p><ul><li>B+tree</li></ul></li><li><p>数据库中创建索引的过程是数据库内部自己控制，然后使用索引的过程也是数据库自己操作的，不需要程序猿干涉</p></li></ul><h3 id=\"创建索引\"><a href=\"https://chenjiabing666.github.io/2018/03/28/SQL%E6%93%8D%E4%BD%9C%E5%85%AD/#%E5%88%9B%E5%BB%BA%E7%B4%A2%E5%BC%95\" title=\"创建索引\"></a>创建索引</h3><ul><li><p>格式：&nbsp;<code>create index 索引名 on 表名(字段名([长度]));</code></p></li><li><p>创建索引之前先查询title=’100’的数据，看看查询时间</p><ul><li>select * from item2 where title=’100’;</li></ul></li><li><p>创建title索引</p><ul><li>create index index_title on item2(title);</li></ul></li><li><p>再次查询，查看时间</p><ul><li>select * from item2 where title=’100’;</li></ul></li></ul><h3 id=\"查看索引\"><a href=\"https://chenjiabing666.github.io/2018/03/28/SQL%E6%93%8D%E4%BD%9C%E5%85%AD/#%E6%9F%A5%E7%9C%8B%E7%B4%A2%E5%BC%95\" title=\"查看索引\"></a>查看索引</h3><ul><li>格式:&nbsp;<code>show index from 表名</code></li><li>其中包含主键的索引，这个是自动创建的</li></ul><h3 id=\"删除索引\"><a href=\"https://chenjiabing666.github.io/2018/03/28/SQL%E6%93%8D%E4%BD%9C%E5%85%AD/#%E5%88%A0%E9%99%A4%E7%B4%A2%E5%BC%95\" title=\"删除索引\"></a>删除索引</h3><ul><li>格式：<code>drop index 索引名 on 表名</code></li><li>drop index index_title on item2;</li></ul><h3 id=\"索引是越多越好吗？有索引就一定好吗？\"><a href=\"https://chenjiabing666.github.io/2018/03/28/SQL%E6%93%8D%E4%BD%9C%E5%85%AD/#%E7%B4%A2%E5%BC%95%E6%98%AF%E8%B6%8A%E5%A4%9A%E8%B6%8A%E5%A5%BD%E5%90%97%EF%BC%9F%E6%9C%89%E7%B4%A2%E5%BC%95%E5%B0%B1%E4%B8%80%E5%AE%9A%E5%A5%BD%E5%90%97%EF%BC%9F\" title=\"索引是越多越好吗？有索引就一定好吗？\"></a>索引是越多越好吗？有索引就一定好吗？</h3><ul><li>因为索引会占用磁盘空间，所以创建索引需谨慎，只创建查询需求的索引</li><li>索引要建立在大量的数据的表中，如果数据量不够大，可能会降低查询效率</li></ul><h3 id=\"复合索引\"><a href=\"https://chenjiabing666.github.io/2018/03/28/SQL%E6%93%8D%E4%BD%9C%E5%85%AD/#%E5%A4%8D%E5%90%88%E7%B4%A2%E5%BC%95\" title=\"复合索引\"></a>复合索引</h3>', null, null, null, null, '33', '2018-08-22 16:00:26', null);
INSERT INTO `t_notice` VALUES ('5', '明天放假', 'StringUtilsspring封装的字符串工具类源码解析isEmpty(Object str)&nbsp;：判断当前字符串为空，如果为空返回true如果字符串为空或者是个空字符串，那么返回true123public static boolean isEmpty(Object str) {		return (str == null || \"\".equals(str));	}hasLength(CharSequence str)&nbsp;： 如果字符串的长度大于0，返回true123public static boolean hasLength(CharSequence str) {		return (str != null &amp;&amp; str.length() &gt; 0);	}hasText(String str)&nbsp;： 判断字符串str是否存在文本内容(不包含空字符)1234567891011121314151617181920212223/**	 * StringUtils.hasText(null) = false	 * StringUtils.hasText(\"\") = false	 * StringUtils.hasText(\" \") = false	 * StringUtils.hasText(\"12345\") = true	 * StringUtils.hasText(\" 12345 \") = true*/public static boolean hasText(String str) {    	//不为空并且包含指定的str返回true		return (hasLength(str) &amp;&amp; containsText(str));	}//判断当前字符串str是否存在文本内容private static boolean containsText(CharSequence str) {		int strLen = str.length();   //长度		for (int i = 0; i &lt; strLen; i++) {            //如果不是空白字符，说明其中有文本内容，返回true即可			if (!Character.isWhitespace(str.charAt(i))) {				return true;			}		}		return false;	}public static boolean containsWhitespace(String str)&nbsp;： 判断当前字符串str是否包含空白字符123456789101112131415public static boolean containsWhitespace(String str) {    	//如果长度为0直接返回false		if (!hasLength(str)) {			return false;		}		int strLen = str.length();		for (int i = 0; i &lt; strLen; i++) {            //遍历字符串，查看是否存在空白字符，存在即返回true			if (Character.isWhitespace(str.charAt(i))) {				return true;			}		}		return false;	}public static String trimWhitespace(String str)&nbsp;： 去除字符串str中的空白字符12345678910111213141516public static String trimWhitespace(String str) {		if (!hasLength(str)) {			return str;		}		StringBuilder sb = new StringBuilder(str);    	//去除字符串前面的空白字符		while (sb.length() &gt; 0 &amp;&amp; Character.isWhitespace(sb.charAt(0))) {			sb.deleteCharAt(0);		}    	//去除字符串末尾的空白字符		while (sb.length() &gt; 0 &amp;&amp; Character.isWhitespace(sb.charAt(sb.length() - 1))) {			sb.deleteCharAt(sb.length() - 1);		}		return sb.toString();	}public static String trimAllWhitespace(String str)&nbsp;：去除字符串中所有的空白字符1234567891011121314151617public static String trimAllWhitespace(String str) {		if (!hasLength(str)) {			return str;		}		int len = str.length();    	//使用stringBuilder存储非空白字符		StringBuilder sb = new StringBuilder(str.length());    	//遍历字符串，如果不是空白字符，那么直接添加到sb中		for (int i = 0; i &lt; len; i++) {			char c = str.charAt(i);			if (!Character.isWhitespace(c)) {				sb.append(c);			}		}		return sb.toString();	}public static String trimLeadingWhitespace(String str)&nbsp;：去除字符串前面的空白字符123456789101112public static String trimLeadingWhitespace(String str) {		if (!hasLength(str)) {			return str;		}		StringBuilder sb = new StringBuilder(str);    	//只是去除前面的空白字符		while (sb.length() &gt; 0 &amp;&amp; Character.isWhitespace(sb.charAt(0))) {			sb.deleteCharAt(0);		}		return sb.toString();	}public static String trimTrailingWhitespace(String str)&nbsp;：去除末尾的空白字符123456789101112public static String trimTrailingWhitespace(String str) {		if (!hasLength(str)) {			return str;		}		StringBuilder sb = new StringBuilder(str);    	//去除末尾的		while (sb.length() &gt; 0 &amp;&amp; Character.isWhitespace(sb.charAt(sb.length() - 1))) {			sb.deleteCharAt(sb.length() - 1);		}		return sb.toString();	}public static String trimLeadingCharacter(String str, char leadingCharacter)&nbsp;：去除字符串str前面的指定字符leadingCharacter1234567891011public static String trimLeadingCharacter(String str, char leadingCharacter) {		if (!hasLength(str)) {			return str;		}		StringBuilder sb = new StringBuilder(str);		while (sb.length() &gt; 0 &amp;&amp; sb.charAt(0) == leadingCharacter) {			sb.deleteCharAt(0);		}		return sb.toString();	}public static String trimTrailingCharacter(String str, char trailingCharacter)&nbsp;：去除字符串尾部的指定字符 trailingCharacter1234567891011public static String trimTrailingCharacter(String str, char trailingCharacter) {		if (!hasLength(str)) {			return str;		}		StringBuilder sb = new StringBuilder(str);		while (sb.length() &gt; 0 &amp;&amp; sb.charAt(sb.length() - 1) == trailingCharacter) {			sb.deleteCharAt(sb.length() - 1);		}		return sb.toString();	}public static boolean startsWithIgnoreCase(String str, String prefix)&nbsp;： 测试字符串str是否是以prefix开头的，忽略大小写1234public static boolean startsWithIgnoreCase(String str, String prefix) {		return (str != null &amp;&amp; prefix != null &amp;&amp; str.length() &gt;= prefix.length() &amp;&amp;				str.regionMatches(true, 0, prefix, 0, prefix.length()));	}public static boolean endsWithIgnoreCase(String str, String suffix)：测试字符串str是否是以suffix结尾的，忽略大小写1234public static boolean endsWithIgnoreCase(String str, String suffix) {	return (str != null &amp;&amp; suffix != null &amp;&amp; str.length() &gt;= suffix.length() &amp;&amp;			str.regionMatches(true, str.length() - suffix.length(), suffix, 0, suffix.length()));}public static boolean substringMatch(CharSequence str, int index, CharSequence substring)&nbsp;： 判断字符串str从index开始到结尾，是否与给定的substring相同12345678910111213public static boolean substringMatch(CharSequence str, int index, CharSequence substring) {    	//如果开始的索引加上匹配的子串大小大于原本的字符串的大小，表明不匹配，返回false		if (index + substring.length() &gt; str.length()) {			return false;		}    	//逐个字符比较，一旦遇到不同的，直接返回false即可		for (int i = 0; i &lt; substring.length(); i++) {			if (str.charAt(index + i) != substring.charAt(i)) {				return false;			}		}		return true;	}public static int countOccurrencesOf(String str, String sub)&nbsp;： 返回子串sub在str中出现的次数123456789101112131415public static int countOccurrencesOf(String str, String sub) {		if (!hasLength(str) || !hasLength(sub)) {			return 0;		}		int count = 0;  //数量  		int pos = 0;   //索引，从0开始统计		int idx;   		// str.indexOf(sub, pos) : 返回子串sub在str中从pos索引开始的下标		while ((idx = str.indexOf(sub, pos)) != -1) {			++count;			pos = idx + sub.length();  		}		return count;	}123456789101112131415161718192021222324252627282930public static String replace(String inString, String oldPattern, String newPattern) {		if (!hasLength(inString) || !hasLength(oldPattern) || newPattern == null) {			return inString;		}    	//index		int index = inString.indexOf(oldPattern);		if (index == -1) {			// no occurrence -&gt; can return input as-is			return inString;		}		int capacity = inString.length();		if (newPattern.length() &gt; oldPattern.length()) {			capacity += 16;		}		StringBuilder sb = new StringBuilder(capacity);		int pos = 0;  // our position in the old string		int patLen = oldPattern.length();		while (index &gt;= 0) {			sb.append(inString.substring(pos, index));			sb.append(newPattern);			pos = index + patLen;			index = inString.indexOf(oldPattern, pos);		}		// append any characters to the right of a match		sb.append(inString.substring(pos));		return sb.toString();	}public static String replace(String inString, String oldPattern, String newPattern)&nbsp;：将字符串inString中的oldPattern全部替换成newPattern1234567891011121314151617181920public static String replace(String inString, String oldPattern, String newPattern) {		if (!hasLength(inString) || !hasLength(oldPattern) || newPattern == null) {			return inString;		}		StringBuilder sb = new StringBuilder();		int pos = 0; // our position in the old string		int index = inString.indexOf(oldPattern);   //获取oldpattern在instring中的开始索引		// the index of an occurrence we\'ve found, or -1		int patLen = oldPattern.length();     	//遍历字符串，替换		while (index &gt;= 0) {			sb.append(inString.substring(pos, index));			sb.append(newPattern);			pos = index + patLen;			index = inString.indexOf(oldPattern, pos);		}		sb.append(inString.substring(pos));		// remember to append any characters to the right of a match		return sb.toString();	}public static String delete(String inString, String pattern)&nbsp;： 删除字符串inString中指定的pattern内容1234public static String delete(String inString, String pattern) {    	//使用空字符替换删除的pattern		return replace(inString, pattern, \"\");	}public static String deleteAny(String inString, String charsToDelete)&nbsp;：删除字符串inString中指定的charsToDelete所有字符123456789101112131415public static String deleteAny(String inString, String charsToDelete) {		if (!hasLength(inString) || !hasLength(charsToDelete)) {			return inString;		}		StringBuilder sb = new StringBuilder();    	//遍历字符串		for (int i = 0; i &lt; inString.length(); i++) {			char c = inString.charAt(i);   //获取当前的字符            //如果当前的字符不在需要删除的charsToDelete中，那么添加到sb中			if (charsToDelete.indexOf(c) == -1) {				sb.append(c);			}		}		return sb.toString();	}public static String quote(String str)&nbsp;：将字符串用单引号括起来123public static String quote(String str) {		return (str != null ? \"\'\" + str + \"\'\" : null);	}public static String uncapitalize(String str)&nbsp;：首字母小写123456789101112131415161718public static String uncapitalize(String str) {		return changeFirstCharacterCase(str, false);	}	private static String changeFirstCharacterCase(String str, boolean capitalize) {		if (str == null || str.length() == 0) {			return str;		}		StringBuilder sb = new StringBuilder(str.length());		if (capitalize) {			sb.append(Character.toUpperCase(str.charAt(0)));		}		else {			sb.append(Character.toLowerCase(str.charAt(0)));		}		sb.append(str.substring(1));		return sb.toString();	}public static String capitalize(String str)&nbsp;： 首字母大写123public static String capitalize(String str) {		return changeFirstCharacterCase(str, true);	}public static String getFilename(String path)&nbsp;： 取出给定的路径path中的文件名，比如/tmp/file.txt，那么取出的文件名为file.txt1234567public static String getFilename(String path) {		if (path == null) {			return null;		}		int separatorIndex = path.lastIndexOf(FOLDER_SEPARATOR);		return (separatorIndex != -1 ? path.substring(separatorIndex + 1) : path);	}public static String getFilenameExtension(String path)&nbsp;：获取给定路径的文件扩展名，比如/tmp/file.txt，那么返回的扩展名为txt1234567891011121314public static String getFilenameExtension(String path) {		if (path == null) {			return null;		}		int extIndex = path.lastIndexOf(EXTENSION_SEPARATOR);   //获取最后一个.的索引		if (extIndex == -1) {			return null;		}		int folderIndex = path.lastIndexOf(FOLDER_SEPARATOR);  //获取最后一个/的索引		if (folderIndex &gt; extIndex) {			return null;		}		return path.substring(extIndex + 1);	}public static String stripFilenameExtension(String path)：去掉给定路径的文件扩展名，比如：\"mypath/myfile.txt\" -&gt; \"mypath/myfile\".123456789101112131415161718192021/**	 * Strip the filename extension from the given path,	 * e.g. \"mypath/myfile.txt\" -&gt; \"mypath/myfile\".	 * @param path the file path (may be {@code null})	 * @return the path with stripped filename extension,	 * or {@code null} if none	 */	public static String stripFilenameExtension(String path) {		if (path == null) {			return null;		}		int extIndex = path.lastIndexOf(EXTENSION_SEPARATOR);		if (extIndex == -1) {			return path;		}		int folderIndex = path.lastIndexOf(FOLDER_SEPARATOR);		if (folderIndex &gt; extIndex) {			return path;		}		return path.substring(0, extIndex);	}public static String[] delimitedListToStringArray(String str, String delimiter)&nbsp;：已指定的分隔符将字符串str分割成一个字符串数组，比如String[] strs=StringUtils.delimitedListToStringArray(\"chenjia,bing\", \",\");123public static String[] delimitedListToStringArray(String str, String delimiter) {		return delimitedListToStringArray(str, delimiter, null);	}public static String[] delimitedListToStringArray(String str, String delimiter, String charsToDelete)&nbsp;： 不但使用分割符将字符串分割成数组，并且还去掉了字符串中的指定的字符，比如：String[] strs=StringUtils.delimitedListToStringArray(\"chenjia,bing\", \",\",\"n\");1234567891011121314151617181920212223242526272829303132public static String[] delimitedListToStringArray(String str, String delimiter, String charsToDelete) {		if (str == null) {			return new String[0];		}    	//没有分隔符直接返回原来字符串		if (delimiter == null) {			return new String[] {str};		}		List&lt;String&gt; result = new ArrayList&lt;String&gt;();    	//如果分隔符为空，那么每一个字符都要分割		if (\"\".equals(delimiter)) {			for (int i = 0; i &lt; str.length(); i++) {                //删除指定的字符，并且添加到restult中				result.add(deleteAny(str.substring(i, i + 1), charsToDelete));			}		}		else {  //分割符不为空，并且不是空字符串			int pos = 0;  			int delPos;   //定义需要进行删除的字符串的最后一个index            //str.indexOf(delimiter, pos) : 从pos位置开始，获取分割符的索引，此时的 [pos,delpos]就是一个分割的字符串，那么我们需要对其删除指定的字符			while ((delPos = str.indexOf(delimiter, pos)) != -1) {                //删除一个子串中的指定字符，并且添加到result中				result.add(deleteAny(str.substring(pos, delPos), charsToDelete));				pos = delPos + delimiter.length();  //pos后移，移到下一个需要分割的字符串，也就是剩下的字符串			}			if (str.length() &gt; 0 &amp;&amp; pos &lt;= str.length()) {				// Add rest of String, but not in case of empty input.				result.add(deleteAny(str.substring(pos), charsToDelete));			}		}		return toStringArray(result);   //将List转换成字符串数组	}public static String[] toStringArray(Collection&lt;String&gt; collection)&nbsp;： 将指定的String类型的集合转换成String[]1234567public static String[] toStringArray(Collection&lt;String&gt; collection) {		if (collection == null) {			return null;		}    	//调用Collection中的toArray(T[] a)方法,需要指定数组的容量		return collection.toArray(new String[collection.size()]);	}public static String[] sortStringArray(String[] array)&nbsp;：对String[] 数组进行排序12345678public static String[] sortStringArray(String[] array) {    	//判断数组是否为空，这里的 org.springframework.util.ObjectUtils，也是一个工具类		if (ObjectUtils.isEmpty(array)) {			return new String[0];		}		Arrays.sort(array);   //使用Arrays的排序，升序		return array;	}public static String[] trimArrayElements(String[] array)&nbsp;： 将给定的字符串数组中的每一个字符串都去掉前后空格123456789101112public static String[] trimArrayElements(String[] array) {		if (ObjectUtils.isEmpty(array)) {			return new String[0];		}    	//创建一个新数组保存		String[] result = new String[array.length];		for (int i = 0; i &lt; array.length; i++) {			String element = array[i];			result[i] = (element != null ? element.trim() : null);		}		return result;	}public static String[] removeDuplicateStrings(String[] array)&nbsp;： 去掉字符串数组中重复的字符串123456789101112public static String[] removeDuplicateStrings(String[] array) {		if (ObjectUtils.isEmpty(array)) {			return array;		}    	//使用集合set来去掉重复的元素		Set&lt;String&gt; set = new TreeSet&lt;String&gt;();		for (String element : array) {			set.add(element);		}    	//将集合转换成String[]		return toStringArray(set);	}public static String[] split(String toSplit, String delimiter)&nbsp;： 以分隔符分割字符串成两个数组，但是这个只是分割第一个分割符123456789101112public static String[] split(String toSplit, String delimiter) {		if (!hasLength(toSplit) || !hasLength(delimiter)) {			return null;		}		int offset = toSplit.indexOf(delimiter);		if (offset &lt; 0) {			return null;		}		String beforeDelimiter = toSplit.substring(0, offset);		String afterDelimiter = toSplit.substring(offset + delimiter.length());		return new String[] {beforeDelimiter, afterDelimiter};	}public static String arrayToDelimitedString(Object[] arr, String delim)&nbsp;： 将数组中的每一元素以分割符组成对应的字符串12345678910111213141516public static String arrayToDelimitedString(Object[] arr, String delim) {		if (ObjectUtils.isEmpty(arr)) {			return \"\";		}		if (arr.length == 1) {			return ObjectUtils.nullSafeToString(arr[0]);		}		StringBuilder sb = new StringBuilder();		for (int i = 0; i &lt; arr.length; i++) {			if (i &gt; 0) {				sb.append(delim);			}			sb.append(arr[i]);		}		return sb.toString();	}123456789101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657public static String cleanPath(String path) {		if (path == null) {			return null;		}    	//将path中的\\\\全部替换成/    //如果这个路径是在windows下，如 c:\\\\image\\\\file.jpg,那么经过replace，将会变成 c://image//file.jpg		String pathToUse = replace(path, WINDOWS_FOLDER_SEPARATOR, FOLDER_SEPARATOR);    	//获取pathToUse中:的索引		int prefixIndex = pathToUse.indexOf(\":\");		String prefix = \"\";   //前缀，比如  c: 或者 /    //如果这个路径是在windows下，如 c:\\\\image\\\\file.jpg,那么经过replace，将会变成 c://image//file.jpg		if (prefixIndex != -1) {			prefix = pathToUse.substring(0, prefixIndex + 1);  //前缀变成 `c:`			pathToUse = pathToUse.substring(prefixIndex + 1);  //去掉前面的前缀		}    	//如果pathToUse是以/开头，表示是linux下的路径		if (pathToUse.startsWith(FOLDER_SEPARATOR)) {			prefix = prefix + FOLDER_SEPARATOR;   //前缀就是  /			pathToUse = pathToUse.substring(1);   //pathToUse就变成了去掉/之后的字符串		}		//将pathToUse使用/分割成一个字符串数组，比如pathToUse=home/chenjiabinbg/file.txt，那么数组为 [\"home\",\"chenjiabing\",\"file.txt\"]		String[] pathArray = delimitedListToStringArray(pathToUse, FOLDER_SEPARATOR);    		List&lt;String&gt; pathElements = new LinkedList&lt;String&gt;();		int tops = 0;		    	//遍历数组		for (int i = pathArray.length - 1; i &gt;= 0; i--) {			String element = pathArray[i];            //如果这个元素是表示当前路径的   .表示当前路径，..表示上一级路径			if (CURRENT_PATH.equals(element)) {				// Points to current directory - drop it.			}            //如果是上一级路径，tops+1			else if (TOP_PATH.equals(element)) {				// Registering top path found.				tops++;			}			else {				if (tops &gt; 0) {					// Merging path element with element corresponding to top path.					tops--;				}				else {					// Normal path element found.					pathElements.add(0, element);				}			}		}		// Remaining top paths need to be retained.		for (int i = 0; i &lt; tops; i++) {			pathElements.add(0, TOP_PATH);		}				return prefix + collectionToDelimitedString(pathElements, FOLDER_SEPARATOR);	}', '<h1 id=\"StringUtils\">StringUtils</h1><ul><li>spring封装的字符串工具类</li></ul><h2 id=\"源码解析\"><a href=\"https://chenjiabing666.github.io/2018/08/04/StringUtils%E7%9A%84%E6%BA%90%E7%A0%81%E8%A7%A3%E6%9E%90/#%E6%BA%90%E7%A0%81%E8%A7%A3%E6%9E%90\" title=\"源码解析\"></a>源码解析</h2><ol><li><code>isEmpty(Object str)</code>&nbsp;：判断当前字符串为空，如果为空返回true<ol><li>如果字符串为空或者是个空字符串，那么返回true</li></ol></li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div></pre></td><td><pre><div>public static boolean isEmpty(Object str) {</div><div>		return (str == null || \"\".equals(str));</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>hasLength(CharSequence str)</code>&nbsp;： 如果字符串的长度大于0，返回true</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div></pre></td><td><pre><div>public static boolean hasLength(CharSequence str) {</div><div>		return (str != null &amp;&amp; str.length() &gt; 0);</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>hasText(String str)</code>&nbsp;： 判断字符串str是否存在文本内容(不包含空字符)</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div><div>8</div><div>9</div><div>10</div><div>11</div><div>12</div><div>13</div><div>14</div><div>15</div><div>16</div><div>17</div><div>18</div><div>19</div><div>20</div><div>21</div><div>22</div><div>23</div></pre></td><td><pre><div>/**</div><div>	 * StringUtils.hasText(null) = false</div><div>	 * StringUtils.hasText(\"\") = false</div><div>	 * StringUtils.hasText(\" \") = false</div><div>	 * StringUtils.hasText(\"12345\") = true</div><div>	 * StringUtils.hasText(\" 12345 \") = true</div><div>*/</div><div>public static boolean hasText(String str) {</div><div>    	//不为空并且包含指定的str返回true</div><div>		return (hasLength(str) &amp;&amp; containsText(str));</div><div>	}</div><div></div><div>//判断当前字符串str是否存在文本内容</div><div>private static boolean containsText(CharSequence str) {</div><div>		int strLen = str.length();   //长度</div><div>		for (int i = 0; i &lt; strLen; i++) {</div><div>            //如果不是空白字符，说明其中有文本内容，返回true即可</div><div>			if (!Character.isWhitespace(str.charAt(i))) {</div><div>				return true;</div><div>			}</div><div>		}</div><div>		return false;</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static boolean containsWhitespace(String str)</code>&nbsp;： 判断当前字符串str是否包含空白字符</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div><div>8</div><div>9</div><div>10</div><div>11</div><div>12</div><div>13</div><div>14</div><div>15</div></pre></td><td><pre><div>public static boolean containsWhitespace(String str) {</div><div>    	//如果长度为0直接返回false</div><div>		if (!hasLength(str)) {</div><div>			return false;</div><div>		}</div><div></div><div>		int strLen = str.length();</div><div>		for (int i = 0; i &lt; strLen; i++) {</div><div>            //遍历字符串，查看是否存在空白字符，存在即返回true</div><div>			if (Character.isWhitespace(str.charAt(i))) {</div><div>				return true;</div><div>			}</div><div>		}</div><div>		return false;</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static String trimWhitespace(String str)</code>&nbsp;： 去除字符串str中的空白字符</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div><div>8</div><div>9</div><div>10</div><div>11</div><div>12</div><div>13</div><div>14</div><div>15</div><div>16</div></pre></td><td><pre><div>public static String trimWhitespace(String str) {</div><div>		if (!hasLength(str)) {</div><div>			return str;</div><div>		}</div><div></div><div>		StringBuilder sb = new StringBuilder(str);</div><div>    	//去除字符串前面的空白字符</div><div>		while (sb.length() &gt; 0 &amp;&amp; Character.isWhitespace(sb.charAt(0))) {</div><div>			sb.deleteCharAt(0);</div><div>		}</div><div>    	//去除字符串末尾的空白字符</div><div>		while (sb.length() &gt; 0 &amp;&amp; Character.isWhitespace(sb.charAt(sb.length() - 1))) {</div><div>			sb.deleteCharAt(sb.length() - 1);</div><div>		}</div><div>		return sb.toString();</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static String trimAllWhitespace(String str)</code>&nbsp;：去除字符串中所有的空白字符</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div><div>8</div><div>9</div><div>10</div><div>11</div><div>12</div><div>13</div><div>14</div><div>15</div><div>16</div><div>17</div></pre></td><td><pre><div>public static String trimAllWhitespace(String str) {</div><div>		if (!hasLength(str)) {</div><div>			return str;</div><div>		}</div><div></div><div>		int len = str.length();</div><div>    	//使用stringBuilder存储非空白字符</div><div>		StringBuilder sb = new StringBuilder(str.length());</div><div>    	//遍历字符串，如果不是空白字符，那么直接添加到sb中</div><div>		for (int i = 0; i &lt; len; i++) {</div><div>			char c = str.charAt(i);</div><div>			if (!Character.isWhitespace(c)) {</div><div>				sb.append(c);</div><div>			}</div><div>		}</div><div>		return sb.toString();</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static String trimLeadingWhitespace(String str)</code>&nbsp;：去除字符串前面的空白字符</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div><div>8</div><div>9</div><div>10</div><div>11</div><div>12</div></pre></td><td><pre><div>public static String trimLeadingWhitespace(String str) {</div><div>		if (!hasLength(str)) {</div><div>			return str;</div><div>		}</div><div></div><div>		StringBuilder sb = new StringBuilder(str);</div><div>    	//只是去除前面的空白字符</div><div>		while (sb.length() &gt; 0 &amp;&amp; Character.isWhitespace(sb.charAt(0))) {</div><div>			sb.deleteCharAt(0);</div><div>		}</div><div>		return sb.toString();</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static String trimTrailingWhitespace(String str)</code>&nbsp;：去除末尾的空白字符</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div><div>8</div><div>9</div><div>10</div><div>11</div><div>12</div></pre></td><td><pre><div>public static String trimTrailingWhitespace(String str) {</div><div>		if (!hasLength(str)) {</div><div>			return str;</div><div>		}</div><div></div><div>		StringBuilder sb = new StringBuilder(str);</div><div>    	//去除末尾的</div><div>		while (sb.length() &gt; 0 &amp;&amp; Character.isWhitespace(sb.charAt(sb.length() - 1))) {</div><div>			sb.deleteCharAt(sb.length() - 1);</div><div>		}</div><div>		return sb.toString();</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static String trimLeadingCharacter(String str, char leadingCharacter)</code>&nbsp;：去除字符串str前面的指定字符leadingCharacter</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div><div>8</div><div>9</div><div>10</div><div>11</div></pre></td><td><pre><div>public static String trimLeadingCharacter(String str, char leadingCharacter) {</div><div>		if (!hasLength(str)) {</div><div>			return str;</div><div>		}</div><div></div><div>		StringBuilder sb = new StringBuilder(str);</div><div>		while (sb.length() &gt; 0 &amp;&amp; sb.charAt(0) == leadingCharacter) {</div><div>			sb.deleteCharAt(0);</div><div>		}</div><div>		return sb.toString();</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static String trimTrailingCharacter(String str, char trailingCharacter)</code>&nbsp;：去除字符串尾部的指定字符 trailingCharacter</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div><div>8</div><div>9</div><div>10</div><div>11</div></pre></td><td><pre><div>public static String trimTrailingCharacter(String str, char trailingCharacter) {</div><div>		if (!hasLength(str)) {</div><div>			return str;</div><div>		}</div><div></div><div>		StringBuilder sb = new StringBuilder(str);</div><div>		while (sb.length() &gt; 0 &amp;&amp; sb.charAt(sb.length() - 1) == trailingCharacter) {</div><div>			sb.deleteCharAt(sb.length() - 1);</div><div>		}</div><div>		return sb.toString();</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static boolean startsWithIgnoreCase(String str, String prefix)</code>&nbsp;： 测试字符串str是否是以prefix开头的，忽略大小写</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div></pre></td><td><pre><div>public static boolean startsWithIgnoreCase(String str, String prefix) {</div><div>		return (str != null &amp;&amp; prefix != null &amp;&amp; str.length() &gt;= prefix.length() &amp;&amp;</div><div>				str.regionMatches(true, 0, prefix, 0, prefix.length()));</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static boolean endsWithIgnoreCase(String str, String suffix)</code>：测试字符串str是否是以suffix结尾的，忽略大小写</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div></pre></td><td><pre><div>public static boolean endsWithIgnoreCase(String str, String suffix) {</div><div>	return (str != null &amp;&amp; suffix != null &amp;&amp; str.length() &gt;= suffix.length() &amp;&amp;</div><div>			str.regionMatches(true, str.length() - suffix.length(), suffix, 0, suffix.length()));</div><div>}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static boolean substringMatch(CharSequence str, int index, CharSequence substring)</code>&nbsp;： 判断字符串str从index开始到结尾，是否与给定的substring相同</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div><div>8</div><div>9</div><div>10</div><div>11</div><div>12</div><div>13</div></pre></td><td><pre><div>public static boolean substringMatch(CharSequence str, int index, CharSequence substring) {</div><div>    	//如果开始的索引加上匹配的子串大小大于原本的字符串的大小，表明不匹配，返回false</div><div>		if (index + substring.length() &gt; str.length()) {</div><div>			return false;</div><div>		}</div><div>    	//逐个字符比较，一旦遇到不同的，直接返回false即可</div><div>		for (int i = 0; i &lt; substring.length(); i++) {</div><div>			if (str.charAt(index + i) != substring.charAt(i)) {</div><div>				return false;</div><div>			}</div><div>		}</div><div>		return true;</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static int countOccurrencesOf(String str, String sub)</code>&nbsp;： 返回子串sub在str中出现的次数</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div><div>8</div><div>9</div><div>10</div><div>11</div><div>12</div><div>13</div><div>14</div><div>15</div></pre></td><td><pre><div>public static int countOccurrencesOf(String str, String sub) {</div><div>		if (!hasLength(str) || !hasLength(sub)) {</div><div>			return 0;</div><div>		}</div><div></div><div>		int count = 0;  //数量</div><div>  		int pos = 0;   //索引，从0开始统计</div><div>		int idx;</div><div>   		// str.indexOf(sub, pos) : 返回子串sub在str中从pos索引开始的下标</div><div>		while ((idx = str.indexOf(sub, pos)) != -1) {</div><div>			++count;</div><div>			pos = idx + sub.length();  </div><div>		}</div><div>		return count;</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div><div>8</div><div>9</div><div>10</div><div>11</div><div>12</div><div>13</div><div>14</div><div>15</div><div>16</div><div>17</div><div>18</div><div>19</div><div>20</div><div>21</div><div>22</div><div>23</div><div>24</div><div>25</div><div>26</div><div>27</div><div>28</div><div>29</div><div>30</div></pre></td><td><pre><div>public static String replace(String inString, String oldPattern, String newPattern) {</div><div>		if (!hasLength(inString) || !hasLength(oldPattern) || newPattern == null) {</div><div>			return inString;</div><div>		}</div><div>    	//index</div><div>		int index = inString.indexOf(oldPattern);</div><div>		if (index == -1) {</div><div>			// no occurrence -&gt; can return input as-is</div><div>			return inString;</div><div>		}</div><div></div><div>		int capacity = inString.length();</div><div>		if (newPattern.length() &gt; oldPattern.length()) {</div><div>			capacity += 16;</div><div>		}</div><div>		StringBuilder sb = new StringBuilder(capacity);</div><div></div><div>		int pos = 0;  // our position in the old string</div><div>		int patLen = oldPattern.length();</div><div>		while (index &gt;= 0) {</div><div>			sb.append(inString.substring(pos, index));</div><div>			sb.append(newPattern);</div><div>			pos = index + patLen;</div><div>			index = inString.indexOf(oldPattern, pos);</div><div>		}</div><div></div><div>		// append any characters to the right of a match</div><div>		sb.append(inString.substring(pos));</div><div>		return sb.toString();</div><div>	}</div></pre></td></tr></tbody></table></figure></li><li><p><code>public static String replace(String inString, String oldPattern, String newPattern)</code>&nbsp;：将字符串inString中的oldPattern全部替换成newPattern</p></li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div><div>8</div><div>9</div><div>10</div><div>11</div><div>12</div><div>13</div><div>14</div><div>15</div><div>16</div><div>17</div><div>18</div><div>19</div><div>20</div></pre></td><td><pre><div>public static String replace(String inString, String oldPattern, String newPattern) {</div><div>		if (!hasLength(inString) || !hasLength(oldPattern) || newPattern == null) {</div><div>			return inString;</div><div>		}</div><div>		StringBuilder sb = new StringBuilder();</div><div>		int pos = 0; // our position in the old string</div><div>		int index = inString.indexOf(oldPattern);   //获取oldpattern在instring中的开始索引</div><div>		// the index of an occurrence we\'ve found, or -1</div><div>		int patLen = oldPattern.length(); </div><div>    	//遍历字符串，替换</div><div>		while (index &gt;= 0) {</div><div>			sb.append(inString.substring(pos, index));</div><div>			sb.append(newPattern);</div><div>			pos = index + patLen;</div><div>			index = inString.indexOf(oldPattern, pos);</div><div>		}</div><div>		sb.append(inString.substring(pos));</div><div>		// remember to append any characters to the right of a match</div><div>		return sb.toString();</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static String delete(String inString, String pattern)</code>&nbsp;： 删除字符串inString中指定的pattern内容</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div></pre></td><td><pre><div>public static String delete(String inString, String pattern) {</div><div>    	//使用空字符替换删除的pattern</div><div>		return replace(inString, pattern, \"\");</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static String deleteAny(String inString, String charsToDelete)</code>&nbsp;：删除字符串inString中指定的charsToDelete所有字符</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div><div>8</div><div>9</div><div>10</div><div>11</div><div>12</div><div>13</div><div>14</div><div>15</div></pre></td><td><pre><div>public static String deleteAny(String inString, String charsToDelete) {</div><div>		if (!hasLength(inString) || !hasLength(charsToDelete)) {</div><div>			return inString;</div><div>		}</div><div>		StringBuilder sb = new StringBuilder();</div><div>    	//遍历字符串</div><div>		for (int i = 0; i &lt; inString.length(); i++) {</div><div>			char c = inString.charAt(i);   //获取当前的字符</div><div>            //如果当前的字符不在需要删除的charsToDelete中，那么添加到sb中</div><div>			if (charsToDelete.indexOf(c) == -1) {</div><div>				sb.append(c);</div><div>			}</div><div>		}</div><div>		return sb.toString();</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static String quote(String str)</code>&nbsp;：将字符串用单引号括起来</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div></pre></td><td><pre><div>public static String quote(String str) {</div><div>		return (str != null ? \"\'\" + str + \"\'\" : null);</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static String uncapitalize(String str)</code>&nbsp;：首字母小写</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div><div>8</div><div>9</div><div>10</div><div>11</div><div>12</div><div>13</div><div>14</div><div>15</div><div>16</div><div>17</div><div>18</div></pre></td><td><pre><div>public static String uncapitalize(String str) {</div><div>		return changeFirstCharacterCase(str, false);</div><div>	}</div><div></div><div>	private static String changeFirstCharacterCase(String str, boolean capitalize) {</div><div>		if (str == null || str.length() == 0) {</div><div>			return str;</div><div>		}</div><div>		StringBuilder sb = new StringBuilder(str.length());</div><div>		if (capitalize) {</div><div>			sb.append(Character.toUpperCase(str.charAt(0)));</div><div>		}</div><div>		else {</div><div>			sb.append(Character.toLowerCase(str.charAt(0)));</div><div>		}</div><div>		sb.append(str.substring(1));</div><div>		return sb.toString();</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static String capitalize(String str)</code>&nbsp;： 首字母大写</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div></pre></td><td><pre><div>public static String capitalize(String str) {</div><div>		return changeFirstCharacterCase(str, true);</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static String getFilename(String path)</code>&nbsp;： 取出给定的路径path中的文件名，比如<code>/tmp/file.txt</code>，那么取出的文件名为file.txt</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div></pre></td><td><pre><div>public static String getFilename(String path) {</div><div>		if (path == null) {</div><div>			return null;</div><div>		}</div><div>		int separatorIndex = path.lastIndexOf(FOLDER_SEPARATOR);</div><div>		return (separatorIndex != -1 ? path.substring(separatorIndex + 1) : path);</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static String getFilenameExtension(String path)</code>&nbsp;：获取给定路径的文件扩展名，比如<code>/tmp/file.txt</code>，那么返回的扩展名为txt</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div><div>8</div><div>9</div><div>10</div><div>11</div><div>12</div><div>13</div><div>14</div></pre></td><td><pre><div>public static String getFilenameExtension(String path) {</div><div>		if (path == null) {</div><div>			return null;</div><div>		}</div><div>		int extIndex = path.lastIndexOf(EXTENSION_SEPARATOR);   //获取最后一个.的索引</div><div>		if (extIndex == -1) {</div><div>			return null;</div><div>		}</div><div>		int folderIndex = path.lastIndexOf(FOLDER_SEPARATOR);  //获取最后一个/的索引</div><div>		if (folderIndex &gt; extIndex) {</div><div>			return null;</div><div>		}</div><div>		return path.substring(extIndex + 1);</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static String stripFilenameExtension(String path)</code>：去掉给定路径的文件扩展名，比如：<code>\"mypath/myfile.txt\" -&gt; \"mypath/myfile\".</code></li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div><div>8</div><div>9</div><div>10</div><div>11</div><div>12</div><div>13</div><div>14</div><div>15</div><div>16</div><div>17</div><div>18</div><div>19</div><div>20</div><div>21</div></pre></td><td><pre><div>/**</div><div>	 * Strip the filename extension from the given path,</div><div>	 * e.g. \"mypath/myfile.txt\" -&gt; \"mypath/myfile\".</div><div>	 * @param path the file path (may be {@code null})</div><div>	 * @return the path with stripped filename extension,</div><div>	 * or {@code null} if none</div><div>	 */</div><div>	public static String stripFilenameExtension(String path) {</div><div>		if (path == null) {</div><div>			return null;</div><div>		}</div><div>		int extIndex = path.lastIndexOf(EXTENSION_SEPARATOR);</div><div>		if (extIndex == -1) {</div><div>			return path;</div><div>		}</div><div>		int folderIndex = path.lastIndexOf(FOLDER_SEPARATOR);</div><div>		if (folderIndex &gt; extIndex) {</div><div>			return path;</div><div>		}</div><div>		return path.substring(0, extIndex);</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static String[] delimitedListToStringArray(String str, String delimiter)</code>&nbsp;：已指定的分隔符将字符串str分割成一个字符串数组，比如<code>String[] strs=StringUtils.delimitedListToStringArray(\"chenjia,bing\", \",\");</code></li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div></pre></td><td><pre><div>public static String[] delimitedListToStringArray(String str, String delimiter) {</div><div>		return delimitedListToStringArray(str, delimiter, null);</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static String[] delimitedListToStringArray(String str, String delimiter, String charsToDelete)</code>&nbsp;： 不但使用分割符将字符串分割成数组，并且还去掉了字符串中的指定的字符，比如：<code>String[] strs=StringUtils.delimitedListToStringArray(\"chenjia,bing\", \",\",\"n\");</code></li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div><div>8</div><div>9</div><div>10</div><div>11</div><div>12</div><div>13</div><div>14</div><div>15</div><div>16</div><div>17</div><div>18</div><div>19</div><div>20</div><div>21</div><div>22</div><div>23</div><div>24</div><div>25</div><div>26</div><div>27</div><div>28</div><div>29</div><div>30</div><div>31</div><div>32</div></pre></td><td><pre><div>public static String[] delimitedListToStringArray(String str, String delimiter, String charsToDelete) {</div><div>		if (str == null) {</div><div>			return new String[0];</div><div>		}</div><div>    	//没有分隔符直接返回原来字符串</div><div>		if (delimiter == null) {</div><div>			return new String[] {str};</div><div>		}</div><div>		List&lt;String&gt; result = new ArrayList&lt;String&gt;();</div><div>    	//如果分隔符为空，那么每一个字符都要分割</div><div>		if (\"\".equals(delimiter)) {</div><div>			for (int i = 0; i &lt; str.length(); i++) {</div><div>                //删除指定的字符，并且添加到restult中</div><div>				result.add(deleteAny(str.substring(i, i + 1), charsToDelete));</div><div>			}</div><div>		}</div><div>		else {  //分割符不为空，并且不是空字符串</div><div>			int pos = 0;  </div><div>			int delPos;   //定义需要进行删除的字符串的最后一个index</div><div>            //str.indexOf(delimiter, pos) : 从pos位置开始，获取分割符的索引，此时的 [pos,delpos]就是一个分割的字符串，那么我们需要对其删除指定的字符</div><div>			while ((delPos = str.indexOf(delimiter, pos)) != -1) {</div><div>                //删除一个子串中的指定字符，并且添加到result中</div><div>				result.add(deleteAny(str.substring(pos, delPos), charsToDelete));</div><div>				pos = delPos + delimiter.length();  //pos后移，移到下一个需要分割的字符串，也就是剩下的字符串</div><div>			}</div><div>			if (str.length() &gt; 0 &amp;&amp; pos &lt;= str.length()) {</div><div>				// Add rest of String, but not in case of empty input.</div><div>				result.add(deleteAny(str.substring(pos), charsToDelete));</div><div>			}</div><div>		}</div><div>		return toStringArray(result);   //将List转换成字符串数组</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static String[] toStringArray(Collection&lt;String&gt; collection)</code>&nbsp;： 将指定的String类型的集合转换成String[]</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div></pre></td><td><pre><div>public static String[] toStringArray(Collection&lt;String&gt; collection) {</div><div>		if (collection == null) {</div><div>			return null;</div><div>		}</div><div>    	//调用Collection中的toArray(T[] a)方法,需要指定数组的容量</div><div>		return collection.toArray(new String[collection.size()]);</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static String[] sortStringArray(String[] array)</code>&nbsp;：对String[] 数组进行排序</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div><div>8</div></pre></td><td><pre><div>public static String[] sortStringArray(String[] array) {</div><div>    	//判断数组是否为空，这里的 org.springframework.util.ObjectUtils，也是一个工具类</div><div>		if (ObjectUtils.isEmpty(array)) {</div><div>			return new String[0];</div><div>		}</div><div>		Arrays.sort(array);   //使用Arrays的排序，升序</div><div>		return array;</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static String[] trimArrayElements(String[] array)</code>&nbsp;： 将给定的字符串数组中的每一个字符串都去掉前后空格</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div><div>8</div><div>9</div><div>10</div><div>11</div><div>12</div></pre></td><td><pre><div>public static String[] trimArrayElements(String[] array) {</div><div>		if (ObjectUtils.isEmpty(array)) {</div><div>			return new String[0];</div><div>		}</div><div>    	//创建一个新数组保存</div><div>		String[] result = new String[array.length];</div><div>		for (int i = 0; i &lt; array.length; i++) {</div><div>			String element = array[i];</div><div>			result[i] = (element != null ? element.trim() : null);</div><div>		}</div><div>		return result;</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static String[] removeDuplicateStrings(String[] array)</code>&nbsp;： 去掉字符串数组中重复的字符串</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div><div>8</div><div>9</div><div>10</div><div>11</div><div>12</div></pre></td><td><pre><div>public static String[] removeDuplicateStrings(String[] array) {</div><div>		if (ObjectUtils.isEmpty(array)) {</div><div>			return array;</div><div>		}</div><div>    	//使用集合set来去掉重复的元素</div><div>		Set&lt;String&gt; set = new TreeSet&lt;String&gt;();</div><div>		for (String element : array) {</div><div>			set.add(element);</div><div>		}</div><div>    	//将集合转换成String[]</div><div>		return toStringArray(set);</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static String[] split(String toSplit, String delimiter)</code>&nbsp;： 以分隔符分割字符串成两个数组，但是这个只是分割第一个分割符</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div><div>8</div><div>9</div><div>10</div><div>11</div><div>12</div></pre></td><td><pre><div>public static String[] split(String toSplit, String delimiter) {</div><div>		if (!hasLength(toSplit) || !hasLength(delimiter)) {</div><div>			return null;</div><div>		}</div><div>		int offset = toSplit.indexOf(delimiter);</div><div>		if (offset &lt; 0) {</div><div>			return null;</div><div>		}</div><div>		String beforeDelimiter = toSplit.substring(0, offset);</div><div>		String afterDelimiter = toSplit.substring(offset + delimiter.length());</div><div>		return new String[] {beforeDelimiter, afterDelimiter};</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><code>public static String arrayToDelimitedString(Object[] arr, String delim)</code>&nbsp;： 将数组中的每一元素以分割符组成对应的字符串</li></ol><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div><div>8</div><div>9</div><div>10</div><div>11</div><div>12</div><div>13</div><div>14</div><div>15</div><div>16</div></pre></td><td><pre><div>public static String arrayToDelimitedString(Object[] arr, String delim) {</div><div>		if (ObjectUtils.isEmpty(arr)) {</div><div>			return \"\";</div><div>		}</div><div>		if (arr.length == 1) {</div><div>			return ObjectUtils.nullSafeToString(arr[0]);</div><div>		}</div><div>		StringBuilder sb = new StringBuilder();</div><div>		for (int i = 0; i &lt; arr.length; i++) {</div><div>			if (i &gt; 0) {</div><div>				sb.append(delim);</div><div>			}</div><div>			sb.append(arr[i]);</div><div>		}</div><div>		return sb.toString();</div><div>	}</div></pre></td></tr></tbody></table></figure><ol><li><figure><table><tbody><tr><td><pre><div>1</div><div>2</div><div>3</div><div>4</div><div>5</div><div>6</div><div>7</div><div>8</div><div>9</div><div>10</div><div>11</div><div>12</div><div>13</div><div>14</div><div>15</div><div>16</div><div>17</div><div>18</div><div>19</div><div>20</div><div>21</div><div>22</div><div>23</div><div>24</div><div>25</div><div>26</div><div>27</div><div>28</div><div>29</div><div>30</div><div>31</div><div>32</div><div>33</div><div>34</div><div>35</div><div>36</div><div>37</div><div>38</div><div>39</div><div>40</div><div>41</div><div>42</div><div>43</div><div>44</div><div>45</div><div>46</div><div>47</div><div>48</div><div>49</div><div>50</div><div>51</div><div>52</div><div>53</div><div>54</div><div>55</div><div>56</div><div>57</div></pre></td><td><pre><div>public static String cleanPath(String path) {</div><div>		if (path == null) {</div><div>			return null;</div><div>		}</div><div>    	//将path中的\\\\全部替换成/</div><div>    //如果这个路径是在windows下，如 c:\\\\image\\\\file.jpg,那么经过replace，将会变成 c://image//file.jpg</div><div>		String pathToUse = replace(path, WINDOWS_FOLDER_SEPARATOR, FOLDER_SEPARATOR);</div><div>    	//获取pathToUse中:的索引</div><div>		int prefixIndex = pathToUse.indexOf(\":\");</div><div>		String prefix = \"\";   //前缀，比如  c: 或者 /</div><div>    //如果这个路径是在windows下，如 c:\\\\image\\\\file.jpg,那么经过replace，将会变成 c://image//file.jpg</div><div>		if (prefixIndex != -1) {</div><div>			prefix = pathToUse.substring(0, prefixIndex + 1);  //前缀变成 `c:`</div><div>			pathToUse = pathToUse.substring(prefixIndex + 1);  //去掉前面的前缀</div><div>		}</div><div>    	//如果pathToUse是以/开头，表示是linux下的路径</div><div>		if (pathToUse.startsWith(FOLDER_SEPARATOR)) {</div><div>			prefix = prefix + FOLDER_SEPARATOR;   //前缀就是  /</div><div>			pathToUse = pathToUse.substring(1);   //pathToUse就变成了去掉/之后的字符串</div><div>		}</div><div>		//将pathToUse使用/分割成一个字符串数组，比如pathToUse=home/chenjiabinbg/file.txt，那么数组为 [\"home\",\"chenjiabing\",\"file.txt\"]</div><div>		String[] pathArray = delimitedListToStringArray(pathToUse, FOLDER_SEPARATOR);</div><div>    </div><div>		List&lt;String&gt; pathElements = new LinkedList&lt;String&gt;();</div><div>		int tops = 0;</div><div>		</div><div>    	//遍历数组</div><div>		for (int i = pathArray.length - 1; i &gt;= 0; i--) {</div><div>			String element = pathArray[i];</div><div>            //如果这个元素是表示当前路径的   .表示当前路径，..表示上一级路径</div><div>			if (CURRENT_PATH.equals(element)) {</div><div>				// Points to current directory - drop it.</div><div>			}</div><div>            //如果是上一级路径，tops+1</div><div>			else if (TOP_PATH.equals(element)) {</div><div>				// Registering top path found.</div><div>				tops++;</div><div>			}</div><div>			else {</div><div>				if (tops &gt; 0) {</div><div>					// Merging path element with element corresponding to top path.</div><div>					tops--;</div><div>				}</div><div>				else {</div><div>					// Normal path element found.</div><div>					pathElements.add(0, element);</div><div>				}</div><div>			}</div><div>		}</div><div></div><div>		// Remaining top paths need to be retained.</div><div>		for (int i = 0; i &lt; tops; i++) {</div><div>			pathElements.add(0, TOP_PATH);</div><div>		}</div><div>		</div><div>		return prefix + collectionToDelimitedString(pathElements, FOLDER_SEPARATOR);</div><div>	}</div></pre></td></tr></tbody></table></figure></li></ol>', '1', '2018-08-22 18:04:27', null, null, '33', '2018-08-22 17:29:56', '2018-08-22 18:04:19');

-- ----------------------------
-- Table structure for t_notice_image
-- ----------------------------
DROP TABLE IF EXISTS `t_notice_image`;
CREATE TABLE `t_notice_image` (
  `notice_image_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告的Id',
  `notice_id` int(11) DEFAULT NULL,
  `image_url` varchar(250) DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  `activated` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`notice_image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_notice_image
-- ----------------------------

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色表',
  `role_name` varchar(32) NOT NULL COMMENT '角色名称',
  `description` varchar(512) DEFAULT NULL COMMENT '描述',
  `activated` int(1) DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '超级管理员', '全部权限', null, null, null, null);
INSERT INTO `t_role` VALUES ('2', '普通管理员', '财务模块权限', null, null, '2018-07-12 10:51:16', null);

-- ----------------------------
-- Table structure for t_score
-- ----------------------------
DROP TABLE IF EXISTS `t_score`;
CREATE TABLE `t_score` (
  `score_id` int(1) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`score_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_score
-- ----------------------------
INSERT INTO `t_score` VALUES ('1');
INSERT INTO `t_score` VALUES ('2');
INSERT INTO `t_score` VALUES ('3');
INSERT INTO `t_score` VALUES ('4');
INSERT INTO `t_score` VALUES ('5');

-- ----------------------------
-- Table structure for t_sys_config
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_config`;
CREATE TABLE `t_sys_config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT,
  `is_ransfer` int(1) DEFAULT '1' COMMENT '用户是否可以转账 1 可以 2 不可以',
  `is_need_secret` int(1) DEFAULT '1' COMMENT '用户是否需要导入密钥 1 是 2否',
  `is_need_pwd` int(1) DEFAULT '1' COMMENT '用户是否需要输入支付密码 1 需要 2不需要',
  `about_us` text,
  `copy_right` varchar(255) DEFAULT NULL COMMENT '版权声明',
  `company_phone` varchar(30) DEFAULT NULL COMMENT '公司电话',
  `company_address` varchar(255) DEFAULT NULL COMMENT '公司地址',
  `moac_address` varchar(255) DEFAULT NULL COMMENT '墨客钱包的地址',
  `moac_secret` varchar(255) DEFAULT NULL COMMENT '墨客钱包的私钥',
  `swtc_address` varchar(255) DEFAULT NULL COMMENT '井通钱包的地址',
  `swtc_secret` varchar(255) DEFAULT NULL COMMENT '井通钱包的私钥',
  `web_site` varchar(255) DEFAULT NULL COMMENT '官网地址',
  `activated` int(1) DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_config
-- ----------------------------
INSERT INTO `t_sys_config` VALUES ('1', '1', '1', '1', '东方孤思子 沧海成尘等闲事，云雨巫山枉断肠；多情自…\n230 人赞同\n请使用 github 账户，登陆 gitbook。成千上万本高质量开源书籍等你拜读。（多为IT书籍）\n还支持多种格式下载。比如epub，epub，还有epub！重要的事情说三遍！\n\nPDF党别不服了，人家也提供 PDF 和 mobi 格式呢。\n可是 mobi 非 kindle 用不了。\nPDF 又大又慢，不支持响应式排版，手机上还卡。\n我实在不知道你们喜欢它什么……', '东方孤思子 沧海成尘等闲事，云雨巫山枉断肠；多情自…\n230 人赞同\n请使用 github 账户，登陆 gitbook。成千上万本高质量开源书籍等你拜读。（多为IT书籍）\n还支持多种格式下载。比如epub，epub，还有epub！重要的事情说三遍！\n\nPDF党别不服了，人家也提供 PDF 和 mobi 格式呢。\n可是 mobi 非 kindle 用不了。\nPDF 又大又慢，不支持响应式排版，手机上还卡。\n我实在不知道你们喜欢它什么……', '18796327106', '上海市松江区', '0x842979507ca3dbb94392fb076f2555c7ff483d78', 'NTY1ZjY5ZDMxNDI4NWIyOGFjZjg1YmM2ODA0YmNmY2QxZDY1Y2VjYjNiNTQxODRlOThiZjMzYWI3\r\nZjQ3YjIzMA==', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'c2gxVVFvWHNLdkgxdDd1Y0FxdTNQTm1CRmdtV3k=', 'http://www2.dpstore.pro', null, null, null, '2019-01-10 16:34:05');

-- ----------------------------
-- Table structure for t_task
-- ----------------------------
DROP TABLE IF EXISTS `t_task`;
CREATE TABLE `t_task` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(50) DEFAULT NULL,
  `introduction` varchar(600) DEFAULT NULL,
  `task_type_id` int(1) DEFAULT NULL COMMENT '任务分类Id',
  `app_id` int(11) DEFAULT NULL COMMENT '应用Id',
  `publish_id` int(11) DEFAULT NULL COMMENT '发布人的Id',
  `link` varchar(128) DEFAULT NULL,
  `reward_money` double(40,4) NOT NULL DEFAULT '0.0000' COMMENT '奖励的钱',
  `allow_number` int(11) DEFAULT '0' COMMENT '允许的次数',
  `poup_leve` int(1) DEFAULT NULL COMMENT '弹窗级别  5 不弹窗',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` int(1) DEFAULT '1' COMMENT '1 正常 0 失效',
  `deleted` int(1) DEFAULT NULL,
  `activated` int(1) DEFAULT NULL COMMENT '奖励的钱的类型  1 墨客币 2 井通',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_task
-- ----------------------------
INSERT INTO `t_task` VALUES ('6', '下载币观', '简单的任务简介', '1', '74', '33', '', '10.0000', '20', '1', '2018-10-13 18:05:45', '2019-11-29 15:49:25', '1', null, '2', '2018-10-13 18:05:55', '2018-12-10 11:02:32');
INSERT INTO `t_task` VALUES ('7', '下载安装火币', '下载安装', '1', '22', '33', '', '10.0000', '10', '1', '2018-10-25 13:20:21', '2019-11-29 15:49:25', '1', null, '2', '2018-10-25 13:20:10', '2018-12-10 11:02:29');
INSERT INTO `t_task` VALUES ('9', '下载安装币牛牛', '下载安装币牛牛', '1', '78', '33', '', '10.0000', '1', '1', '2018-10-25 13:44:06', '2019-11-29 15:49:25', '1', null, '2', '2018-10-25 13:43:50', '2018-12-10 11:02:27');
INSERT INTO `t_task` VALUES ('10', '每日签到', '登录签到', '6', null, '43', 'http://www.emoonbow.com', '1.0000', '1', '2', '2018-11-07 13:57:37', '2019-11-29 15:49:25', '1', null, '2', '2018-11-07 13:57:05', '2018-12-25 10:53:24');
INSERT INTO `t_task` VALUES ('12', '分享DP', '任务清单中的分享App', '4', null, '33', '', '0.0100', '10', '1', '2018-11-29 15:49:16', '2019-11-29 15:49:25', '1', null, '1', '2018-11-29 15:49:31', '2018-12-25 11:22:15');

-- ----------------------------
-- Table structure for t_task_type
-- ----------------------------
DROP TABLE IF EXISTS `t_task_type`;
CREATE TABLE `t_task_type` (
  `task_type_id` int(1) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(128) DEFAULT NULL COMMENT '种类名称',
  `create_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`task_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_task_type
-- ----------------------------
INSERT INTO `t_task_type` VALUES ('1', '下载安装类', null, null);
INSERT INTO `t_task_type` VALUES ('3', '查看类', null, null);
INSERT INTO `t_task_type` VALUES ('4', '分享类', null, null);
INSERT INTO `t_task_type` VALUES ('5', '邀请类', null, null);
INSERT INTO `t_task_type` VALUES ('6', '签到类', null, '2018-10-09 10:05:42');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户的账号，一般是手机号码',
  `password` varchar(60) DEFAULT NULL COMMENT '密码',
  `email_login` varchar(255) DEFAULT NULL COMMENT '登录的邮箱账号',
  `mobile` varchar(60) DEFAULT NULL,
  `user_icon` varchar(250) DEFAULT NULL COMMENT '用户头像',
  `gender` int(1) DEFAULT NULL COMMENT '性别 1男 2 女 3 保密',
  `address` varchar(255) DEFAULT NULL COMMENT '详细的地址',
  `province_code` varchar(10) DEFAULT NULL COMMENT '省份的编码',
  `is_developer` int(1) DEFAULT '0' COMMENT '是否是开发者 0 不是开发者 1 是个人开发者 2 企业开发者',
  `real_name` varchar(50) DEFAULT NULL COMMENT '用户的真实姓名',
  `role_id` int(1) DEFAULT NULL COMMENT '角色Id',
  `activated` int(1) DEFAULT '0' COMMENT '登录的状态 1 已登录 0 未 登录',
  `deleted` int(1) DEFAULT '1' COMMENT '1  未删除  0 已删除',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录的时间',
  `enterprise_name` varchar(50) DEFAULT NULL COMMENT '企业名称',
  `publisher_name` varchar(50) DEFAULT NULL COMMENT '出品人',
  `id_card_image` varchar(250) DEFAULT NULL COMMENT '身份证照片地址',
  `business_license` varchar(250) DEFAULT NULL COMMENT '营业执照地址',
  `business_license_number` varchar(250) DEFAULT NULL COMMENT '营业执照注册号码',
  `registed_address` varchar(128) DEFAULT NULL COMMENT '注册地址',
  `contact_name` varchar(60) DEFAULT NULL,
  `contact_mobile` varchar(60) DEFAULT NULL,
  `contact_address` varchar(50) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `qq` varchar(60) DEFAULT NULL,
  `web_address` varchar(128) DEFAULT NULL COMMENT '官网地址',
  `examin_status` int(1) DEFAULT '0' COMMENT '审核状态 0 未审核 1 审核通过 2 审核失败',
  `auth_date` datetime DEFAULT NULL COMMENT '请求认证时间',
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  KEY `username_index` (`user_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '18796327106', '12345678', null, '18796327106', 'http://www.emoonbow.com/applicationMarket-upload/user-image/1543044058173head.jpg', '1', '上海市松江大道', '310000', '1', '陈加兵', null, '1', '1', '2019-01-10 14:47:07', null, null, null, null, null, null, null, null, null, null, null, null, '1', '2012-11-12 00:00:00', '2018-08-16 16:29:42', '2019-01-03 15:10:36');
INSERT INTO `t_user` VALUES ('2', '18796327108', '123456', null, '18796327108', 'http://www.emoonbow.com/applicationMarket-upload/user-image/1540176902942crop_file.jpg', '1', '上海市松江大道', '310000', '1', 'Jack', null, '1', '1', '2018-08-16 16:28:33', null, null, null, null, null, null, null, null, null, null, null, null, '1', '2012-11-12 00:00:00', '2018-08-16 16:29:42', '2018-10-22 14:45:36');
INSERT INTO `t_user` VALUES ('4', '187963271', '123456', null, '18796327109', 'http://www.emoonbow.com/applicationMarket-upload/user-image/1540176902942crop_file.jpg', null, '上海市松江大道', null, '1', null, null, '0', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '2012-11-12 00:00:00', null, '2018-12-05 10:30:11');
INSERT INTO `t_user` VALUES ('5', '1879655888', '1131', null, null, 'http://www.emoonbow.com/applicationMarket-upload/user-image/1540176902942crop_file.jpg', null, '上海市松江大道', null, '0', null, null, '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '2012-11-12 00:00:00', null, '2018-10-22 14:45:38');
INSERT INTO `t_user` VALUES ('7', '15738519625', '123123', null, '15738519625', 'http://www.emoonbow.com/applicationMarket-upload/user-image/1542964586969head.jpg', '2', '澳门特别行政区', '820000', '1', 'diudiu', null, '1', '1', '2018-12-17 16:42:49', null, null, null, null, null, null, null, null, null, null, null, null, '1', '2012-11-12 00:00:00', '2018-09-26 10:43:35', '2018-12-18 10:09:12');
INSERT INTO `t_user` VALUES ('8', '13700962212', '222222', null, '13700962212', 'http://www.emoonbow.com/applicationMarket-upload/user-image/153967471871120181016152518.jpg', '1', '澳门特别行政区澳门半岛圣安多尼堂区', '820000', '0', 'Z1u2w', null, '1', '1', '2018-11-15 15:35:09', null, null, null, null, null, null, null, null, null, null, null, null, '0', '2012-11-12 00:00:00', '2018-09-26 11:09:01', '2018-10-24 14:50:22');
INSERT INTO `t_user` VALUES ('9', '18796211168', '123456', null, '18796211168', 'http://www.emoonbow.com/applicationMarket-upload/user-image/1540176902942crop_file.jpg', null, null, '310000', '2', null, null, '0', '1', null, '泰文信息科技', '张利军', null, 'user-businessLicense/15388132923751533698707125.jpg', '16165156', '山西省', '张利军', '1879632', '上海市松江区', '1813189', '161516', 'www.baidu.com', '1', null, null, '2018-10-22 14:45:38');
INSERT INTO `t_user` VALUES ('10', '18958800672', '111111', null, '18958800672', 'http://www.emoonbow.com/applicationMarket-upload/user-image/154692343069120190108125710.jpg', '2', '湖南省湘潭市雨湖区', '430000', '0', 'H', null, '1', '1', '2019-01-08 13:35:57', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '2018-10-11 13:43:35', '2019-01-08 13:35:56');
INSERT INTO `t_user` VALUES ('16', '17628049457', '111111', null, '17628049457', null, null, null, null, '0', null, null, '1', '1', '2018-10-24 11:20:08', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '2018-10-24 09:34:53', '2018-10-24 10:58:45');
INSERT INTO `t_user` VALUES ('17', '15983020570', 'asd123', null, '15983020570', null, '1', '四川省 成都市 市辖区', '510000', '0', null, null, '1', '1', '2018-11-23 17:57:48', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '2018-11-23 17:07:21', '2018-11-23 17:47:32');
INSERT INTO `t_user` VALUES ('18', '13847631060', '123123', null, '13847631060', null, null, null, null, '0', null, null, '0', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '2018-11-23 18:40:26', null);
INSERT INTO `t_user` VALUES ('19', '13817631030', '123123', null, '13817631030', null, null, null, null, '0', null, null, '0', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '2018-11-23 18:41:13', null);
INSERT INTO `t_user` VALUES ('20', '13817631060', '12345678', null, '13817631060', null, null, null, null, '0', null, null, '1', '1', '2018-11-23 18:44:37', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '2018-11-23 18:44:25', '2018-11-23 18:44:37');
INSERT INTO `t_user` VALUES ('21', '13176707529', 'wang13176707529', null, '13176707529', null, null, null, null, '0', null, null, '1', '1', '2018-12-05 10:09:56', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '2018-11-23 18:51:35', '2018-11-23 18:51:58');
INSERT INTO `t_user` VALUES ('22', '15689218121', 'dpcheng810117', null, '15689218121', null, null, null, null, '0', null, null, '1', '1', '2018-11-23 19:06:21', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '2018-11-23 19:06:00', '2018-11-23 19:06:20');
INSERT INTO `t_user` VALUES ('23', '13530517887', 'xiaohua901105', null, '13530517887', null, null, null, null, '0', null, null, '1', '1', '2018-12-29 10:26:00', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '2018-11-24 19:30:09', '2018-11-24 19:30:26');
INSERT INTO `t_user` VALUES ('24', '13026257031', 'zsb123', null, '13026257031', 'http://www.emoonbow.com/applicationMarket-upload/user-image/154692262848620190108124348.jpg', '2', '广东省 深圳市 龙岗区', '440000', '0', 'h', null, '1', '1', '2019-01-08 13:36:37', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '2018-11-24 20:59:53', '2019-01-08 13:36:36');
INSERT INTO `t_user` VALUES ('25', '13824551752', '605586', null, '13824551752', 'http://www.emoonbow.com/applicationMarket-upload/user-image/1543202416056head.jpg', null, '广东省 深圳市 宝安区', '440000', '0', '你好', null, '1', '1', '2018-11-26 08:45:31', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '2018-11-26 08:45:07', '2018-11-26 11:21:30');
INSERT INTO `t_user` VALUES ('26', '13424385295', 'xiaohua901105', null, '13424385295', null, null, null, null, '0', null, null, '1', '1', '2019-01-03 10:53:02', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '2018-11-26 09:36:39', '2018-11-26 09:36:57');
INSERT INTO `t_user` VALUES ('27', '15626920206', '123456789', null, '15626920206', null, null, null, null, '0', '青木', null, '1', '1', '2018-11-26 13:28:16', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '2018-11-26 13:25:36', '2018-11-30 15:56:17');
INSERT INTO `t_user` VALUES ('28', null, '12345678', null, null, null, null, null, null, '0', null, null, '0', '1', null, null, null, null, null, null, null, null, null, null, '18796327106@163.com', null, null, '0', null, '2018-11-26 17:08:27', null);
INSERT INTO `t_user` VALUES ('29', null, '12345678', '18796327106@163.com', null, null, null, null, null, '0', '陈加兵', null, '1', '1', '2018-11-27 11:23:24', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '2018-11-26 17:11:07', '2018-11-26 17:16:35');
INSERT INTO `t_user` VALUES ('30', '18390711096', 'xiaohua901105', null, '18390711096', 'http://www.emoonbow.com/applicationMarket-upload/user-image/154657080767320190104110007.jpg', null, null, null, '0', null, null, '1', '1', '2019-01-07 11:24:10', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '2018-11-29 15:07:20', '2019-01-04 11:00:07');
INSERT INTO `t_user` VALUES ('31', '17688546758', 'xuke19900114', null, '17688546758', 'http://www.emoonbow.com/applicationMarket-upload/user-image/154691819076920190108112950.jpg', null, null, null, '0', null, null, '1', '1', '2019-01-08 11:29:51', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '2018-11-29 15:11:25', '2019-01-08 11:29:50');
INSERT INTO `t_user` VALUES ('32', '15013624343', 'Kccbp1421267', null, '15013624343', 'http://www.emoonbow.com/applicationMarket-upload/user-image/154347631217520181129152511.jpg', null, '湖南省湘西土家族苗族自治州泸溪县', '430000', '0', null, null, '1', '1', '2019-01-03 10:07:06', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '2018-11-29 15:15:19', '2018-11-29 16:34:38');
INSERT INTO `t_user` VALUES ('33', null, '123456', 'diudiuhf@163.com', null, null, null, null, null, '0', null, null, '1', '1', '2018-12-05 10:23:14', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '2018-11-29 15:30:41', '2018-11-29 15:30:52');
INSERT INTO `t_user` VALUES ('34', null, '123321', '348462645@qq.com', null, null, null, null, null, '0', null, null, '1', '1', '2018-12-04 16:37:52', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '2018-12-04 16:37:30', '2018-12-04 16:37:51');
INSERT INTO `t_user` VALUES ('35', '13302913595', 'cjm0405425', null, '13302913595', null, null, null, null, '0', null, null, '1', '1', '2018-12-25 11:24:55', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '2018-12-25 11:24:36', '2018-12-25 11:24:55');
INSERT INTO `t_user` VALUES ('36', '15712952291', 'zxl.940911', null, '15712952291', null, '1', null, null, '0', null, null, '1', '1', '2018-12-29 10:41:53', null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '2018-12-29 10:40:52', '2018-12-29 11:12:33');

-- ----------------------------
-- Table structure for t_user_app
-- ----------------------------
DROP TABLE IF EXISTS `t_user_app`;
CREATE TABLE `t_user_app` (
  `app_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `version_id` int(11) DEFAULT NULL COMMENT '安装包的版本id,用于版本升级',
  `is_uninstall` int(1) DEFAULT '0' COMMENT '是否卸载  1 已卸载 0 未卸载',
  `deleted` int(1) DEFAULT NULL,
  `activated` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`app_id`,`user_id`),
  KEY `index_version_id` (`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_app
-- ----------------------------
INSERT INTO `t_user_app` VALUES ('10', '10', '10', '0', null, null, '2018-12-17 13:51:49', null);
INSERT INTO `t_user_app` VALUES ('16', '7', '16', '0', null, null, '2018-10-13 13:10:05', '2018-11-15 10:55:54');
INSERT INTO `t_user_app` VALUES ('22', '24', '22', '0', null, null, '2018-11-26 15:25:08', null);
INSERT INTO `t_user_app` VALUES ('22', '25', '22', '0', null, null, '2018-11-26 15:26:10', null);
INSERT INTO `t_user_app` VALUES ('23', '23', '23', '0', null, null, '2018-11-24 22:41:01', null);
INSERT INTO `t_user_app` VALUES ('30', '1', '30', '0', null, null, '2018-11-23 21:52:23', null);
INSERT INTO `t_user_app` VALUES ('32', '17', '32', '0', null, null, '2018-11-23 17:21:41', '2018-11-23 17:46:14');
INSERT INTO `t_user_app` VALUES ('32', '23', '32', '0', null, null, '2018-11-25 10:08:37', null);
INSERT INTO `t_user_app` VALUES ('32', '24', '32', '0', null, null, '2018-12-04 16:08:59', null);
INSERT INTO `t_user_app` VALUES ('33', '17', '33', '0', null, null, '2018-11-23 17:55:38', null);
INSERT INTO `t_user_app` VALUES ('33', '23', '33', '0', null, null, '2018-11-25 11:34:19', null);
INSERT INTO `t_user_app` VALUES ('33', '24', '33', '0', null, null, '2018-11-26 16:33:54', null);
INSERT INTO `t_user_app` VALUES ('46', '23', '46', '0', null, null, '2018-11-26 09:18:42', null);
INSERT INTO `t_user_app` VALUES ('46', '24', '46', '0', null, null, '2018-11-26 09:16:57', null);
INSERT INTO `t_user_app` VALUES ('46', '25', '46', '0', null, null, '2018-11-26 08:49:22', null);
INSERT INTO `t_user_app` VALUES ('46', '36', '46', '0', null, null, '2018-12-29 11:14:20', null);
INSERT INTO `t_user_app` VALUES ('51', '24', '51', '0', null, null, '2018-11-26 09:24:29', null);
INSERT INTO `t_user_app` VALUES ('52', '7', '52', '0', null, null, '2018-12-17 13:51:11', null);
INSERT INTO `t_user_app` VALUES ('52', '24', '52', '0', null, null, '2018-12-04 16:19:32', null);
INSERT INTO `t_user_app` VALUES ('52', '33', '52', '0', null, null, '2018-12-05 15:23:12', null);
INSERT INTO `t_user_app` VALUES ('53', '7', '53', '0', null, null, '2018-12-17 13:48:11', null);
INSERT INTO `t_user_app` VALUES ('53', '17', '53', '0', null, null, '2018-11-23 17:55:10', null);
INSERT INTO `t_user_app` VALUES ('53', '23', '53', '0', null, null, '2018-11-25 18:59:01', null);
INSERT INTO `t_user_app` VALUES ('53', '24', '53', '0', null, null, '2018-11-25 19:39:40', null);
INSERT INTO `t_user_app` VALUES ('55', '33', '55', '0', null, null, '2018-12-05 13:46:08', null);
INSERT INTO `t_user_app` VALUES ('56', '17', '56', '0', null, null, '2018-11-23 17:56:38', null);
INSERT INTO `t_user_app` VALUES ('59', '27', '59', '0', null, null, '2018-11-30 15:51:04', null);
INSERT INTO `t_user_app` VALUES ('60', '24', '60', '0', null, null, '2018-11-25 19:42:16', null);
INSERT INTO `t_user_app` VALUES ('63', '23', '63', '0', null, null, '2019-01-02 09:59:27', null);
INSERT INTO `t_user_app` VALUES ('67', '24', '67', '0', null, null, '2019-01-03 10:53:04', null);
INSERT INTO `t_user_app` VALUES ('68', '24', '68', '0', null, null, '2019-01-03 10:53:22', null);
INSERT INTO `t_user_app` VALUES ('72', '10', '72', '0', null, null, '2018-12-17 14:09:14', null);
INSERT INTO `t_user_app` VALUES ('73', '10', '73', '0', null, null, '2018-12-17 14:14:51', null);
INSERT INTO `t_user_app` VALUES ('74', '1', '74', '0', null, null, '2018-12-17 14:04:20', null);
INSERT INTO `t_user_app` VALUES ('75', '1', '75', '0', null, null, '2018-12-17 14:05:29', null);
INSERT INTO `t_user_app` VALUES ('75', '10', '75', '0', null, null, '2018-12-17 14:08:35', null);
INSERT INTO `t_user_app` VALUES ('88', '24', '90', '0', null, null, '2018-11-26 16:32:52', null);
INSERT INTO `t_user_app` VALUES ('90', '24', '92', '0', null, null, '2018-12-07 10:02:17', null);

-- ----------------------------
-- Table structure for t_user_code
-- ----------------------------
DROP TABLE IF EXISTS `t_user_code`;
CREATE TABLE `t_user_code` (
  `code_id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机号码',
  `code` varchar(255) DEFAULT NULL COMMENT '验证码',
  PRIMARY KEY (`code_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_code
-- ----------------------------
INSERT INTO `t_user_code` VALUES ('1', '18796327106', '649591');
INSERT INTO `t_user_code` VALUES ('2', '15626920206', '887376');
INSERT INTO `t_user_code` VALUES ('3', '13026257031', '341471');
INSERT INTO `t_user_code` VALUES ('4', '18796327106@163.com', '117894');
INSERT INTO `t_user_code` VALUES ('5', '1655378771@qq.com', '549973');
INSERT INTO `t_user_code` VALUES ('6', '18390711096', '951847');
INSERT INTO `t_user_code` VALUES ('7', '17688546758', '661962');
INSERT INTO `t_user_code` VALUES ('8', '15013624343', '325465');
INSERT INTO `t_user_code` VALUES ('9', 'diudiuhf@163.com', '433255');
INSERT INTO `t_user_code` VALUES ('10', '15738519625', '132173');
INSERT INTO `t_user_code` VALUES ('11', '13424385295', '487849');
INSERT INTO `t_user_code` VALUES ('12', '13530517887', '996146');
INSERT INTO `t_user_code` VALUES ('13', '348462645@qq.com', '358865');
INSERT INTO `t_user_code` VALUES ('14', '18796327016@163.com', '398745');
INSERT INTO `t_user_code` VALUES ('15', '13302913595', '595669');
INSERT INTO `t_user_code` VALUES ('16', '15712952291', '713197');
INSERT INTO `t_user_code` VALUES ('17', 'diudiuhf123@123.com', '492335');
INSERT INTO `t_user_code` VALUES ('18', '2385914758@qq.com', '554537');
INSERT INTO `t_user_code` VALUES ('19', 'diudiuhf123@163.com', '392172');

-- ----------------------------
-- Table structure for t_user_task
-- ----------------------------
DROP TABLE IF EXISTS `t_user_task`;
CREATE TABLE `t_user_task` (
  `user_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `count` int(11) DEFAULT '0' COMMENT '完成的次数',
  `deleted` int(11) DEFAULT NULL,
  `activated` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_task
-- ----------------------------
INSERT INTO `t_user_task` VALUES ('0', '12', '0', null, null, null, '2019-01-08 00:00:00');
INSERT INTO `t_user_task` VALUES ('1', '10', '1', null, null, null, null);
INSERT INTO `t_user_task` VALUES ('1', '12', '0', null, null, null, '2019-01-10 00:00:00');
INSERT INTO `t_user_task` VALUES ('7', '10', '0', null, null, null, '2018-12-26 11:00:00');
INSERT INTO `t_user_task` VALUES ('7', '12', '0', null, null, null, '2019-01-05 00:00:00');
INSERT INTO `t_user_task` VALUES ('10', '6', '0', null, null, null, '2019-01-04 16:00:00');
INSERT INTO `t_user_task` VALUES ('10', '9', '0', null, null, null, '2019-01-08 00:00:00');
INSERT INTO `t_user_task` VALUES ('10', '10', '0', null, null, null, '2019-01-04 16:00:00');
INSERT INTO `t_user_task` VALUES ('10', '12', '0', null, null, null, '2019-01-09 00:00:00');
INSERT INTO `t_user_task` VALUES ('24', '7', '0', null, null, null, '2018-12-17 15:00:00');
INSERT INTO `t_user_task` VALUES ('24', '8', '0', null, null, null, '2018-12-14 16:00:00');
INSERT INTO `t_user_task` VALUES ('24', '10', '0', null, null, null, '2019-01-08 00:00:00');
INSERT INTO `t_user_task` VALUES ('24', '12', '0', null, null, null, '2019-01-02 10:00:00');
INSERT INTO `t_user_task` VALUES ('26', '10', '0', null, null, null, '2019-01-03 15:00:00');
INSERT INTO `t_user_task` VALUES ('26', '12', '0', null, null, null, '2018-12-17 17:00:00');
INSERT INTO `t_user_task` VALUES ('30', '10', '0', null, null, null, '2019-01-08 00:00:00');
INSERT INTO `t_user_task` VALUES ('31', '10', '0', null, null, null, '2019-01-03 16:00:00');
INSERT INTO `t_user_task` VALUES ('32', '10', '0', null, null, null, '2019-01-03 11:00:00');
INSERT INTO `t_user_task` VALUES ('35', '12', '0', null, null, null, '2018-12-26 16:00:00');
INSERT INTO `t_user_task` VALUES ('36', '10', '0', null, null, null, '2018-12-29 11:00:00');
INSERT INTO `t_user_task` VALUES ('36', '12', '0', null, null, null, '2018-12-29 11:00:00');

-- ----------------------------
-- Table structure for t_user_task_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_user_task_detail`;
CREATE TABLE `t_user_task_detail` (
  `task_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户Id',
  `task_id` int(11) DEFAULT NULL COMMENT '任务Id',
  `content` varchar(250) DEFAULT NULL COMMENT '完成任务时的内容',
  `status` int(1) DEFAULT '2' COMMENT '任务完成的状态 1 已发放 2 待发放  ',
  `activated` int(1) DEFAULT NULL COMMENT '奖励的钱的类型  1 墨客币 2 井通',
  `money` double(20,4) DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`task_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_task_detail
-- ----------------------------
INSERT INTO `t_user_task_detail` VALUES ('2', '1', '9', '下载安装币牛牛领取井通', '2', '2', '10.0000', null, '2018-11-09 15:58:26', '2018-11-18 16:44:22');
INSERT INTO `t_user_task_detail` VALUES ('20', '17', '11', '查看泰闻官网领取井通', '2', '2', '0.1000', null, '2018-11-23 17:07:38', null);
INSERT INTO `t_user_task_detail` VALUES ('21', '17', '11', '查看泰闻官网领取井通', '2', '2', '0.1000', null, '2018-11-23 17:20:40', null);
INSERT INTO `t_user_task_detail` VALUES ('22', '17', '11', '查看泰闻官网领取井通', '2', '2', '0.1000', null, '2018-11-23 17:25:57', null);
INSERT INTO `t_user_task_detail` VALUES ('23', '17', '11', '查看泰闻官网领取井通', '2', '2', '0.1000', null, '2018-11-23 17:29:44', null);
INSERT INTO `t_user_task_detail` VALUES ('24', '1', '11', '查看泰闻官网领取井通', '2', '2', '0.1000', null, '2018-11-23 18:37:18', null);
INSERT INTO `t_user_task_detail` VALUES ('25', '20', '11', '查看泰闻官网领取井通', '2', '2', '0.1000', null, '2018-11-23 18:44:50', null);
INSERT INTO `t_user_task_detail` VALUES ('26', '20', '10', '签到领取井通', '2', '2', '1.0000', null, '2018-11-23 18:48:12', null);
INSERT INTO `t_user_task_detail` VALUES ('27', '21', '11', '查看泰闻官网领取井通', '2', '2', '0.1000', null, '2018-11-23 18:52:14', null);
INSERT INTO `t_user_task_detail` VALUES ('28', '22', '11', '查看泰闻官网领取井通', '2', '2', '0.1000', null, '2018-11-23 19:06:36', null);
INSERT INTO `t_user_task_detail` VALUES ('29', '1', '8', '查看百度领取墨客币', '2', '1', '10.0000', null, '2018-11-23 21:58:01', '2018-12-17 17:13:12');
INSERT INTO `t_user_task_detail` VALUES ('30', '1', '10', '签到领取井通', '2', '2', '1.0000', null, '2018-11-23 21:58:06', null);
INSERT INTO `t_user_task_detail` VALUES ('31', '1', '10', '签到领取井通', '2', '2', '1.0000', null, '2018-11-23 21:58:10', null);
INSERT INTO `t_user_task_detail` VALUES ('32', '21', '11', '查看泰闻官网领取井通', '2', '2', '0.1000', null, '2018-11-24 11:25:04', null);
INSERT INTO `t_user_task_detail` VALUES ('33', '21', '11', '查看泰闻官网领取井通', '2', '2', '0.1000', null, '2018-11-24 17:14:35', null);
INSERT INTO `t_user_task_detail` VALUES ('34', '23', '11', '查看泰闻官网领取井通', '2', '2', '0.1000', null, '2018-11-24 22:39:13', null);
INSERT INTO `t_user_task_detail` VALUES ('35', '23', '11', '查看泰闻官网领取井通', '2', '2', '0.1000', null, '2018-11-24 22:50:02', null);
INSERT INTO `t_user_task_detail` VALUES ('36', '21', '11', '查看泰闻官网领取井通', '2', '2', '0.1000', null, '2018-11-25 09:48:56', null);
INSERT INTO `t_user_task_detail` VALUES ('37', '23', '11', '查看泰闻官网领取井通', '2', '2', '0.1000', null, '2018-11-25 18:54:58', null);
INSERT INTO `t_user_task_detail` VALUES ('38', '25', '11', '查看泰闻官网领取井通', '1', '2', '0.1000', null, '2018-11-26 08:46:01', '2018-11-26 15:20:15');
INSERT INTO `t_user_task_detail` VALUES ('39', '21', '11', '查看泰闻官网领取井通', '2', '2', '0.1000', null, '2018-11-26 09:30:54', null);
INSERT INTO `t_user_task_detail` VALUES ('41', '25', '11', '查看泰闻官网领取井通', '1', '2', '0.1000', null, '2018-11-26 10:17:29', '2018-11-26 15:20:16');
INSERT INTO `t_user_task_detail` VALUES ('43', '25', '11', '查看泰闻官网领取井通', '1', '2', '0.1000', null, '2018-11-26 10:53:19', '2018-11-26 15:20:17');
INSERT INTO `t_user_task_detail` VALUES ('44', '25', '11', '查看泰闻官网领取井通', '1', '2', '0.1000', null, '2018-11-26 10:53:59', '2018-11-26 15:20:18');
INSERT INTO `t_user_task_detail` VALUES ('50', '26', '11', '查看泰闻官网领取井通', '1', '2', '0.1000', null, '2018-11-26 11:34:01', '2018-11-26 11:36:08');
INSERT INTO `t_user_task_detail` VALUES ('51', '26', '11', '查看泰闻官网领取井通', '1', '2', '0.1000', null, '2018-11-26 11:34:04', '2018-11-26 11:36:08');
INSERT INTO `t_user_task_detail` VALUES ('53', '21', '11', '查看泰闻官网领取井通', '2', '2', '0.1000', null, '2018-11-26 11:34:52', null);
INSERT INTO `t_user_task_detail` VALUES ('56', '26', '10', '签到领取井通', '1', '2', '1.0000', null, '2018-11-26 11:35:50', '2018-11-26 11:36:09');
INSERT INTO `t_user_task_detail` VALUES ('57', '26', '10', '签到领取井通', '1', '2', '1.0000', null, '2018-11-26 11:35:54', '2018-11-26 11:36:11');
INSERT INTO `t_user_task_detail` VALUES ('60', '26', '10', '签到领取井通', '1', '2', '1.0000', null, '2018-11-26 11:35:57', '2018-11-26 11:36:13');
INSERT INTO `t_user_task_detail` VALUES ('61', '26', '10', '签到领取井通', '1', '2', '1.0000', null, '2018-11-26 11:35:58', '2018-11-26 11:36:15');
INSERT INTO `t_user_task_detail` VALUES ('62', '26', '10', '签到领取井通', '1', '2', '1.0000', null, '2018-11-26 11:35:59', '2018-11-26 11:36:16');
INSERT INTO `t_user_task_detail` VALUES ('64', '26', '10', '签到领取井通', '1', '2', '1.0000', null, '2018-11-26 11:36:01', '2018-11-26 11:36:16');
INSERT INTO `t_user_task_detail` VALUES ('65', '21', '11', '查看泰闻官网领取井通', '2', '2', '0.1000', null, '2018-11-26 11:36:48', null);
INSERT INTO `t_user_task_detail` VALUES ('66', '21', '11', '查看泰闻官网领取井通', '2', '2', '0.1000', null, '2018-11-26 11:37:12', null);
INSERT INTO `t_user_task_detail` VALUES ('67', '26', '10', '签到领取井通', '1', '2', '1.0000', null, '2018-11-26 11:37:18', '2018-11-26 11:37:51');
INSERT INTO `t_user_task_detail` VALUES ('68', '26', '10', '签到领取井通', '1', '2', '1.0000', null, '2018-11-26 11:37:19', '2018-11-26 11:37:52');
INSERT INTO `t_user_task_detail` VALUES ('69', '26', '10', '签到领取井通', '1', '2', '1.0000', null, '2018-11-26 11:37:19', '2018-11-26 11:37:53');
INSERT INTO `t_user_task_detail` VALUES ('72', '21', '11', '查看泰闻官网领取井通', '2', '2', '0.1000', null, '2018-11-26 11:38:17', null);
INSERT INTO `t_user_task_detail` VALUES ('73', '26', '11', '查看泰闻官网领取井通', '1', '2', '0.1000', null, '2018-11-26 11:38:25', '2018-11-26 11:39:17');
INSERT INTO `t_user_task_detail` VALUES ('74', '26', '11', '查看泰闻官网领取井通', '1', '2', '0.1000', null, '2018-11-26 11:38:30', '2018-11-26 11:39:18');
INSERT INTO `t_user_task_detail` VALUES ('75', '26', '11', '查看泰闻官网领取井通', '1', '2', '0.1000', null, '2018-11-26 11:38:49', '2018-11-26 11:39:19');
INSERT INTO `t_user_task_detail` VALUES ('77', '26', '11', '查看泰闻官网领取井通', '1', '2', '0.1000', null, '2018-11-26 11:40:13', '2018-11-26 11:41:11');
INSERT INTO `t_user_task_detail` VALUES ('85', '26', '11', '查看泰闻官网领取井通', '1', '2', '0.1000', null, '2018-11-26 11:41:01', '2018-11-26 11:41:12');
INSERT INTO `t_user_task_detail` VALUES ('96', '27', '11', '查看泰闻官网领取井通', '2', '2', '0.1000', null, '2018-11-26 13:25:54', null);
INSERT INTO `t_user_task_detail` VALUES ('97', '23', '10', '签到领取井通', '2', '2', '1.0000', null, '2018-11-26 13:36:42', null);
INSERT INTO `t_user_task_detail` VALUES ('98', '23', '10', '签到领取井通', '2', '2', '1.0000', null, '2018-11-26 13:37:46', null);
INSERT INTO `t_user_task_detail` VALUES ('99', '26', '7', '下载安装火币领取井通', '1', '2', '10.0000', null, '2018-11-26 13:47:24', '2018-11-26 13:47:36');
INSERT INTO `t_user_task_detail` VALUES ('101', '27', '11', '查看泰闻官网领取井通', '2', '2', '0.1000', null, '2018-11-26 13:55:23', null);
INSERT INTO `t_user_task_detail` VALUES ('102', '27', '10', '签到领取井通', '2', '2', '1.0000', null, '2018-11-26 13:55:32', null);
INSERT INTO `t_user_task_detail` VALUES ('103', '22', '11', '查看泰闻官网领取井通', '2', '2', '0.1000', null, '2018-11-26 14:14:49', null);
INSERT INTO `t_user_task_detail` VALUES ('104', '23', '10', '签到领取井通', '2', '2', '1.0000', null, '2018-11-26 15:15:55', null);
INSERT INTO `t_user_task_detail` VALUES ('105', '23', '10', '签到领取井通', '2', '2', '1.0000', null, '2018-11-26 15:15:56', null);
INSERT INTO `t_user_task_detail` VALUES ('106', '23', '10', '签到领取井通', '2', '2', '1.0000', null, '2018-11-26 15:15:57', null);
INSERT INTO `t_user_task_detail` VALUES ('107', '23', '10', '签到领取井通', '2', '2', '1.0000', null, '2018-11-26 15:15:58', null);
INSERT INTO `t_user_task_detail` VALUES ('108', '23', '10', '签到领取井通', '2', '2', '1.0000', null, '2018-11-26 15:15:59', null);
INSERT INTO `t_user_task_detail` VALUES ('109', '23', '10', '签到领取井通', '2', '2', '1.0000', null, '2018-11-26 15:16:00', null);
INSERT INTO `t_user_task_detail` VALUES ('110', '23', '10', '签到领取井通', '2', '2', '1.0000', null, '2018-11-26 15:16:01', null);
INSERT INTO `t_user_task_detail` VALUES ('111', '23', '10', '签到领取井通', '2', '2', '1.0000', null, '2018-11-26 15:16:02', null);
INSERT INTO `t_user_task_detail` VALUES ('112', '23', '8', '查看百度领取墨客币', '2', '1', '10.0000', null, '2018-11-26 15:16:07', null);
INSERT INTO `t_user_task_detail` VALUES ('113', '25', '11', '查看泰闻官网领取井通', '1', '2', '0.1000', null, '2018-11-26 15:18:22', '2018-11-26 15:20:21');
INSERT INTO `t_user_task_detail` VALUES ('114', '25', '11', '查看泰闻官网领取井通', '1', '2', '0.1000', null, '2018-11-26 15:18:35', '2018-11-26 15:20:22');
INSERT INTO `t_user_task_detail` VALUES ('115', '25', '11', '查看泰闻官网领取井通', '1', '2', '0.1000', null, '2018-11-26 15:19:26', '2018-11-26 15:20:23');
INSERT INTO `t_user_task_detail` VALUES ('116', '25', '10', '签到领取井通', '1', '2', '1.0000', null, '2018-11-26 15:21:00', '2018-11-26 15:27:09');
INSERT INTO `t_user_task_detail` VALUES ('117', '25', '10', '签到领取井通', '1', '2', '1.0000', null, '2018-11-26 15:21:03', '2018-11-26 15:27:10');
INSERT INTO `t_user_task_detail` VALUES ('118', '25', '10', '签到领取井通', '1', '2', '1.0000', null, '2018-11-26 15:21:05', '2018-11-26 15:27:11');
INSERT INTO `t_user_task_detail` VALUES ('119', '25', '10', '签到领取井通', '1', '2', '1.0000', null, '2018-11-26 15:21:25', '2018-11-26 15:27:15');
INSERT INTO `t_user_task_detail` VALUES ('120', '25', '10', '签到领取井通', '1', '2', '1.0000', null, '2018-11-26 15:21:27', '2018-11-26 15:27:15');
INSERT INTO `t_user_task_detail` VALUES ('121', '25', '7', '下载安装火币领取井通', '1', '2', '10.0000', null, '2018-11-26 15:27:01', '2018-11-26 15:27:18');
INSERT INTO `t_user_task_detail` VALUES ('123', '25', '10', '签到领取井通', '1', '2', '1.0000', null, '2018-11-26 15:27:28', '2018-11-26 15:28:13');
INSERT INTO `t_user_task_detail` VALUES ('124', '25', '10', '签到领取井通', '1', '2', '1.0000', null, '2018-11-26 15:27:28', '2018-11-26 15:28:12');
INSERT INTO `t_user_task_detail` VALUES ('125', '25', '10', '签到领取井通', '1', '2', '1.0000', null, '2018-11-26 15:27:29', '2018-11-26 15:28:10');
INSERT INTO `t_user_task_detail` VALUES ('126', '25', '10', '签到领取井通', '1', '2', '1.0000', null, '2018-11-26 15:27:31', '2018-11-26 15:28:05');
INSERT INTO `t_user_task_detail` VALUES ('127', '25', '8', '查看百度领取墨客币', '1', '1', '10.0000', null, '2018-11-26 15:27:36', '2018-11-26 15:27:59');
INSERT INTO `t_user_task_detail` VALUES ('128', '25', '8', '查看百度领取墨客币', '1', '1', '10.0000', null, '2018-11-26 15:27:46', '2018-11-26 15:29:45');
INSERT INTO `t_user_task_detail` VALUES ('129', '25', '8', '查看百度领取墨客币', '1', '1', '10.0000', null, '2018-11-26 15:29:28', '2018-11-26 15:33:08');
INSERT INTO `t_user_task_detail` VALUES ('130', '25', '10', '签到领取井通', '1', '2', '1.0000', null, '2018-11-26 15:32:57', '2018-11-26 15:33:10');
INSERT INTO `t_user_task_detail` VALUES ('131', '25', '8', '查看百度领取墨客币', '1', '1', '10.0000', null, '2018-11-26 15:33:00', '2018-12-04 16:23:54');
INSERT INTO `t_user_task_detail` VALUES ('133', '21', '11', '查看泰闻官网领取井通', '2', '2', '0.1000', null, '2018-11-26 17:58:41', null);
INSERT INTO `t_user_task_detail` VALUES ('134', '26', '8', '查看百度领取墨客币', '2', '1', '10.0000', null, '2018-11-27 08:58:00', null);
INSERT INTO `t_user_task_detail` VALUES ('135', '26', '8', '查看百度领取墨客币', '2', '1', '10.0000', null, '2018-11-27 09:03:28', null);
INSERT INTO `t_user_task_detail` VALUES ('137', '25', '11', '查看泰闻官网领取井通', '2', '2', '0.1000', null, '2018-11-29 15:33:38', null);
INSERT INTO `t_user_task_detail` VALUES ('138', '33', '12', '分享App领取墨客币', '2', '1', '0.1000', null, '2018-11-29 16:18:57', null);
INSERT INTO `t_user_task_detail` VALUES ('146', '10', '12', '分享App领取墨客币', '1', '1', '0.1000', null, '2018-11-30 11:32:42', '2018-12-26 09:33:27');
INSERT INTO `t_user_task_detail` VALUES ('151', '10', '10', '签到领取井通', '1', '2', '1.0000', null, '2018-11-30 11:56:40', '2018-12-14 10:26:41');
INSERT INTO `t_user_task_detail` VALUES ('154', '24', '12', '分享App领取墨客币', '1', '1', '0.1000', null, '2018-12-04 14:46:15', '2018-12-20 14:03:36');
INSERT INTO `t_user_task_detail` VALUES ('155', '24', '12', '分享App领取墨客币', '1', '1', '0.1000', null, '2018-12-04 14:46:18', '2019-01-03 10:03:59');
INSERT INTO `t_user_task_detail` VALUES ('156', '26', '12', '分享App领取墨客币', '2', '1', '0.1000', null, '2018-12-04 15:20:27', null);
INSERT INTO `t_user_task_detail` VALUES ('157', '26', '12', '分享App领取墨客币', '2', '1', '0.1000', null, '2018-12-04 15:20:30', null);
INSERT INTO `t_user_task_detail` VALUES ('158', '26', '12', '分享App领取墨客币', '2', '1', '0.1000', null, '2018-12-04 15:20:31', null);
INSERT INTO `t_user_task_detail` VALUES ('159', '26', '12', '分享App领取墨客币', '2', '1', '0.1000', null, '2018-12-04 15:20:32', null);
INSERT INTO `t_user_task_detail` VALUES ('160', '26', '12', '分享App领取墨客币', '2', '1', '0.1000', null, '2018-12-04 15:20:36', null);
INSERT INTO `t_user_task_detail` VALUES ('161', '24', '12', '分享App领取墨客币', '2', '1', '0.1000', null, '2018-12-04 16:16:08', null);
INSERT INTO `t_user_task_detail` VALUES ('162', '24', '12', '分享App领取墨客币', '2', '1', '0.1000', null, '2018-12-04 16:16:12', null);
INSERT INTO `t_user_task_detail` VALUES ('163', '34', '12', '分享App领取墨客币', '2', '1', '0.1000', null, '2018-12-04 16:38:36', null);
INSERT INTO `t_user_task_detail` VALUES ('164', '34', '12', '分享App领取墨客币', '2', '1', '0.1000', null, '2018-12-04 16:41:49', null);
INSERT INTO `t_user_task_detail` VALUES ('165', '34', '12', '分享App领取墨客币', '2', '1', '0.1000', null, '2018-12-04 16:42:11', null);
INSERT INTO `t_user_task_detail` VALUES ('166', '7', '12', '分享App领取墨客币', '1', '1', '0.1000', null, '2018-12-04 17:47:33', '2018-12-17 17:13:18');
INSERT INTO `t_user_task_detail` VALUES ('167', '33', '12', '分享App领取墨客币', '2', '1', '0.1000', null, '2018-12-04 17:58:04', null);
INSERT INTO `t_user_task_detail` VALUES ('168', '24', '12', '分享App领取墨客币', '1', '1', '0.1000', null, '2018-12-04 18:01:33', '2019-01-07 11:16:30');
INSERT INTO `t_user_task_detail` VALUES ('172', '10', '10', '签到领取井通', '1', '2', '1.0000', null, '2018-12-14 10:26:57', '2018-12-19 10:21:06');
INSERT INTO `t_user_task_detail` VALUES ('173', '24', '12', '分享App领取墨客币', '2', '1', '0.1000', null, '2018-12-14 13:38:46', null);
INSERT INTO `t_user_task_detail` VALUES ('174', '24', '12', '分享App领取墨客币', '2', '1', '0.1000', null, '2018-12-14 13:39:01', null);
INSERT INTO `t_user_task_detail` VALUES ('175', '24', '12', '分享App领取墨客币', '2', '1', '0.1000', null, '2018-12-14 13:39:16', null);
INSERT INTO `t_user_task_detail` VALUES ('176', '24', '12', '分享App领取墨客币', '1', '1', '0.1000', null, '2018-12-14 13:40:10', '2019-01-07 11:16:24');
INSERT INTO `t_user_task_detail` VALUES ('177', '24', '8', '查看百度领取墨客币', '1', '1', '10.0000', null, '2018-12-14 13:40:59', '2018-12-25 10:50:07');
INSERT INTO `t_user_task_detail` VALUES ('178', '24', '12', '分享App领取墨客币', '1', '1', '0.1000', null, '2018-12-14 14:52:04', '2018-12-17 17:02:23');
INSERT INTO `t_user_task_detail` VALUES ('179', '24', '12', '分享App领取墨客币', '1', '1', '0.1000', null, '2018-12-14 14:52:10', '2018-12-17 16:41:45');
INSERT INTO `t_user_task_detail` VALUES ('187', '24', '12', '分享DP领取墨客币', '1', '1', '0.1000', null, '2018-12-17 09:04:11', '2018-12-17 16:35:09');
INSERT INTO `t_user_task_detail` VALUES ('188', '26', '12', '分享DP领取墨客币', '2', '1', '0.1000', null, '2018-12-17 09:05:17', null);
INSERT INTO `t_user_task_detail` VALUES ('192', '26', '12', '分享DP领取墨客币', '2', '1', '0.1000', null, '2018-12-17 13:58:01', null);
INSERT INTO `t_user_task_detail` VALUES ('193', '24', '10', '每日签到领取井通', '1', '2', '1.0000', null, '2018-12-17 14:00:27', '2018-12-17 14:24:05');
INSERT INTO `t_user_task_detail` VALUES ('195', '26', '12', '分享DP领取墨客币', '2', '1', '0.1000', null, '2018-12-17 14:01:58', null);
INSERT INTO `t_user_task_detail` VALUES ('196', '26', '10', '每日签到领取井通', '2', '2', '1.0000', null, '2018-12-17 14:02:04', null);
INSERT INTO `t_user_task_detail` VALUES ('197', '26', '12', '分享DP领取墨客币', '2', '1', '0.1000', null, '2018-12-17 14:02:22', null);
INSERT INTO `t_user_task_detail` VALUES ('200', '24', '7', '下载安装火币领取井通', '1', '2', '10.0000', null, '2018-12-17 14:04:24', '2018-12-17 14:22:45');
INSERT INTO `t_user_task_detail` VALUES ('201', '24', '12', '分享DP领取墨客币', '1', '1', '0.1000', null, '2018-12-17 14:05:29', '2018-12-17 16:35:46');
INSERT INTO `t_user_task_detail` VALUES ('202', '26', '12', '分享DP领取墨客币', '2', '1', '0.1000', null, '2018-12-17 14:10:32', null);
INSERT INTO `t_user_task_detail` VALUES ('203', '26', '12', '分享DP领取墨客币', '2', '1', '0.1000', null, '2018-12-17 14:18:17', null);
INSERT INTO `t_user_task_detail` VALUES ('204', '24', '12', '分享DP领取墨客币', '1', '1', '0.1000', null, '2018-12-17 14:25:31', '2018-12-17 14:32:06');
INSERT INTO `t_user_task_detail` VALUES ('205', '26', '12', '分享DP领取墨客币', '1', '1', '0.1000', null, '2018-12-17 16:37:00', '2018-12-17 16:37:26');
INSERT INTO `t_user_task_detail` VALUES ('206', '7', '10', '每日签到领取井通', '1', '2', '1.0000', null, '2018-12-17 17:07:07', '2018-12-26 10:39:52');
INSERT INTO `t_user_task_detail` VALUES ('207', '24', '12', '分享DP领取墨客币', '1', '1', '0.1000', null, '2018-12-18 09:46:13', '2018-12-18 09:48:19');
INSERT INTO `t_user_task_detail` VALUES ('208', '24', '12', '分享DP领取墨客币', '1', '1', '0.1000', null, '2018-12-18 09:48:51', '2018-12-18 09:48:56');
INSERT INTO `t_user_task_detail` VALUES ('209', '0', '12', '分享DP领取墨客币', '2', '1', '0.1000', null, '2018-12-18 11:42:20', null);
INSERT INTO `t_user_task_detail` VALUES ('210', '10', '10', '每日签到领取井通', '1', '2', '1.0000', null, '2018-12-18 11:49:28', '2018-12-18 17:14:20');
INSERT INTO `t_user_task_detail` VALUES ('211', '0', '12', '分享DP领取墨客币', '2', '1', '0.1000', null, '2018-12-18 14:27:18', null);
INSERT INTO `t_user_task_detail` VALUES ('213', '26', '10', '每日签到领取井通', '1', '2', '1.0000', null, '2018-12-18 14:49:17', '2019-01-03 10:16:12');
INSERT INTO `t_user_task_detail` VALUES ('214', '0', '12', '分享DP领取墨客币', '2', '1', '0.1000', null, '2018-12-18 17:02:42', null);
INSERT INTO `t_user_task_detail` VALUES ('215', '0', '12', '分享DP领取墨客币', '2', '1', '0.1000', null, '2018-12-18 17:06:12', null);
INSERT INTO `t_user_task_detail` VALUES ('216', '0', '12', '分享DP领取墨客币', '2', '1', '0.1000', null, '2018-12-18 17:06:37', null);
INSERT INTO `t_user_task_detail` VALUES ('217', '0', '12', '分享DP领取墨客币', '2', '1', '0.1000', null, '2018-12-18 17:13:44', null);
INSERT INTO `t_user_task_detail` VALUES ('218', '10', '10', '每日签到领取井通', '1', '2', '1.0000', null, '2018-12-18 17:13:50', '2018-12-19 10:26:20');
INSERT INTO `t_user_task_detail` VALUES ('219', '10', '10', '每日签到领取井通', '1', '2', '1.0000', null, '2018-12-20 09:33:01', '2018-12-26 09:25:39');
INSERT INTO `t_user_task_detail` VALUES ('220', '24', '10', '每日签到领取井通', '1', '2', '1.0000', null, '2018-12-20 14:03:39', '2018-12-25 10:50:02');
INSERT INTO `t_user_task_detail` VALUES ('221', '24', '12', '分享DP领取墨客币', '1', '1', '0.3000', null, '2018-12-25 10:45:10', '2018-12-25 10:45:24');
INSERT INTO `t_user_task_detail` VALUES ('222', '24', '10', '每日签到领取井通', '1', '2', '2.0000', null, '2018-12-25 10:48:18', '2018-12-25 10:48:39');
INSERT INTO `t_user_task_detail` VALUES ('223', '24', '10', '每日签到领取井通', '1', '2', '30.0000', null, '2018-12-25 10:49:37', '2018-12-25 17:04:31');
INSERT INTO `t_user_task_detail` VALUES ('224', '24', '10', '每日签到领取井通', '1', '2', '30.0000', null, '2018-12-25 10:49:39', '2018-12-25 17:04:33');
INSERT INTO `t_user_task_detail` VALUES ('225', '26', '10', '每日签到领取井通', '1', '2', '3.0000', null, '2018-12-25 10:52:32', '2018-12-25 10:53:03');
INSERT INTO `t_user_task_detail` VALUES ('226', '26', '10', '每日签到领取井通', '1', '2', '3.0000', null, '2018-12-25 10:52:36', '2018-12-25 10:53:01');
INSERT INTO `t_user_task_detail` VALUES ('227', '26', '10', '每日签到领取井通', '1', '2', '3.0000', null, '2018-12-25 10:52:38', '2018-12-25 10:52:59');
INSERT INTO `t_user_task_detail` VALUES ('228', '24', '12', '分享DP领取墨客币', '1', '1', '0.2000', null, '2018-12-25 10:54:49', '2018-12-25 10:55:07');
INSERT INTO `t_user_task_detail` VALUES ('229', '24', '12', '分享DP领取墨客币', '1', '1', '0.2000', null, '2018-12-25 10:56:30', '2018-12-25 10:56:54');
INSERT INTO `t_user_task_detail` VALUES ('230', '24', '12', '分享DP领取墨客币', '2', '1', '0.2000', null, '2018-12-25 10:57:13', null);
INSERT INTO `t_user_task_detail` VALUES ('231', '24', '12', '分享DP领取墨客币', '2', '1', '0.2000', null, '2018-12-25 11:15:04', null);
INSERT INTO `t_user_task_detail` VALUES ('232', '24', '12', '分享DP领取墨客币', '1', '1', '0.1000', null, '2018-12-25 11:16:38', '2019-01-01 12:23:07');
INSERT INTO `t_user_task_detail` VALUES ('233', '24', '12', '分享DP领取墨客币', '1', '1', '0.0100', null, '2018-12-25 11:22:42', '2018-12-25 11:22:53');
INSERT INTO `t_user_task_detail` VALUES ('234', '35', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2018-12-25 11:25:33', null);
INSERT INTO `t_user_task_detail` VALUES ('235', '24', '10', '每日签到领取井通', '1', '2', '1.0000', null, '2018-12-25 11:53:32', '2018-12-25 14:33:30');
INSERT INTO `t_user_task_detail` VALUES ('236', '24', '10', '每日签到领取井通', '1', '2', '1.0000', null, '2018-12-25 14:33:23', '2018-12-25 14:33:28');
INSERT INTO `t_user_task_detail` VALUES ('237', '0', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2018-12-26 09:21:08', null);
INSERT INTO `t_user_task_detail` VALUES ('238', '0', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2018-12-26 09:21:10', null);
INSERT INTO `t_user_task_detail` VALUES ('239', '10', '10', '每日签到领取井通', '1', '2', '1.0000', null, '2018-12-26 09:25:31', '2018-12-26 09:31:28');
INSERT INTO `t_user_task_detail` VALUES ('240', '7', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2018-12-26 10:39:12', null);
INSERT INTO `t_user_task_detail` VALUES ('241', '7', '10', '每日签到领取井通', '1', '2', '1.0000', null, '2018-12-26 10:39:24', '2018-12-26 10:39:46');
INSERT INTO `t_user_task_detail` VALUES ('242', '35', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2018-12-26 15:38:25', null);
INSERT INTO `t_user_task_detail` VALUES ('243', '36', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2018-12-29 10:42:06', null);
INSERT INTO `t_user_task_detail` VALUES ('244', '36', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2018-12-29 10:42:23', null);
INSERT INTO `t_user_task_detail` VALUES ('245', '36', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2018-12-29 10:43:04', null);
INSERT INTO `t_user_task_detail` VALUES ('246', '36', '10', '每日签到领取井通', '2', '2', '1.0000', null, '2018-12-29 10:43:16', null);
INSERT INTO `t_user_task_detail` VALUES ('247', '24', '12', '分享DP领取墨客币', '1', '1', '0.0100', null, '2019-01-02 09:35:15', '2019-01-02 09:38:35');
INSERT INTO `t_user_task_detail` VALUES ('248', '32', '10', '每日签到领取井通', '2', '2', '1.0000', null, '2019-01-03 10:07:41', null);
INSERT INTO `t_user_task_detail` VALUES ('249', '26', '10', '每日签到领取井通', '1', '2', '1.0000', null, '2019-01-03 10:14:51', '2019-01-03 11:16:05');
INSERT INTO `t_user_task_detail` VALUES ('250', '24', '10', '每日签到领取井通', '1', '2', '1.0000', null, '2019-01-03 10:42:05', '2019-01-03 11:09:43');
INSERT INTO `t_user_task_detail` VALUES ('251', '0', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-03 11:10:48', null);
INSERT INTO `t_user_task_detail` VALUES ('252', '0', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-03 11:14:55', null);
INSERT INTO `t_user_task_detail` VALUES ('253', '0', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-03 11:18:58', null);
INSERT INTO `t_user_task_detail` VALUES ('254', '0', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-03 11:19:23', null);
INSERT INTO `t_user_task_detail` VALUES ('255', '0', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-03 11:19:31', null);
INSERT INTO `t_user_task_detail` VALUES ('256', '0', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-03 11:20:44', null);
INSERT INTO `t_user_task_detail` VALUES ('257', '26', '10', '每日签到领取井通', '2', '2', '1.0000', null, '2019-01-03 14:02:36', null);
INSERT INTO `t_user_task_detail` VALUES ('258', '31', '10', '每日签到领取井通', '2', '2', '1.0000', null, '2019-01-03 15:06:07', null);
INSERT INTO `t_user_task_detail` VALUES ('259', '10', '10', '每日签到领取井通', '2', '2', '1.0000', null, '2019-01-04 14:43:57', null);
INSERT INTO `t_user_task_detail` VALUES ('260', '0', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-04 14:44:01', null);
INSERT INTO `t_user_task_detail` VALUES ('261', '0', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-04 14:44:02', null);
INSERT INTO `t_user_task_detail` VALUES ('262', '0', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-04 14:49:52', null);
INSERT INTO `t_user_task_detail` VALUES ('263', '0', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-04 14:53:09', null);
INSERT INTO `t_user_task_detail` VALUES ('264', '0', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-04 15:00:31', null);
INSERT INTO `t_user_task_detail` VALUES ('265', '10', '10', '每日签到领取井通', '2', '2', '1.0000', null, '2019-01-04 15:08:51', null);
INSERT INTO `t_user_task_detail` VALUES ('266', '10', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-04 15:13:52', null);
INSERT INTO `t_user_task_detail` VALUES ('267', '10', '6', '下载币观领取井通', '2', '2', '10.0000', null, '2019-01-04 15:16:35', null);
INSERT INTO `t_user_task_detail` VALUES ('268', '10', '9', '下载安装币牛牛领取井通', '1', '2', '10.0000', null, '2019-01-04 15:16:47', '2019-01-08 11:21:45');
INSERT INTO `t_user_task_detail` VALUES ('269', '10', '6', '下载币观领取井通', '1', '2', '10.0000', null, '2019-01-04 15:17:20', '2019-01-08 11:21:41');
INSERT INTO `t_user_task_detail` VALUES ('270', '10', '6', '下载币观领取井通', '1', '2', '10.0000', null, '2019-01-04 15:17:46', '2019-01-08 12:48:04');
INSERT INTO `t_user_task_detail` VALUES ('271', '10', '6', '下载币观领取井通', '2', '2', '10.0000', null, '2019-01-04 15:18:55', null);
INSERT INTO `t_user_task_detail` VALUES ('272', '10', '6', '下载币观领取井通', '2', '2', '10.0000', null, '2019-01-04 15:19:17', null);
INSERT INTO `t_user_task_detail` VALUES ('273', '0', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-04 15:21:10', null);
INSERT INTO `t_user_task_detail` VALUES ('274', '10', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-04 15:21:37', null);
INSERT INTO `t_user_task_detail` VALUES ('275', '0', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-04 15:23:01', null);
INSERT INTO `t_user_task_detail` VALUES ('276', '0', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-04 15:39:27', null);
INSERT INTO `t_user_task_detail` VALUES ('277', '7', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-04 16:42:33', null);
INSERT INTO `t_user_task_detail` VALUES ('278', '7', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-04 16:43:07', null);
INSERT INTO `t_user_task_detail` VALUES ('279', '7', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-04 16:43:08', null);
INSERT INTO `t_user_task_detail` VALUES ('280', '7', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-04 16:43:09', null);
INSERT INTO `t_user_task_detail` VALUES ('281', '7', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-04 16:43:09', null);
INSERT INTO `t_user_task_detail` VALUES ('282', '7', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-04 16:43:10', null);
INSERT INTO `t_user_task_detail` VALUES ('283', '7', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-04 16:43:13', null);
INSERT INTO `t_user_task_detail` VALUES ('284', '7', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-04 16:43:14', null);
INSERT INTO `t_user_task_detail` VALUES ('285', '7', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-04 16:43:14', null);
INSERT INTO `t_user_task_detail` VALUES ('286', '7', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-04 16:43:16', null);
INSERT INTO `t_user_task_detail` VALUES ('287', '0', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-07 10:38:48', null);
INSERT INTO `t_user_task_detail` VALUES ('288', '0', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-07 10:38:54', null);
INSERT INTO `t_user_task_detail` VALUES ('289', '0', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-07 10:39:50', null);
INSERT INTO `t_user_task_detail` VALUES ('290', '24', '10', '每日签到领取井通', '2', '2', '1.0000', null, '2019-01-07 10:44:54', null);
INSERT INTO `t_user_task_detail` VALUES ('291', '10', '9', '下载安装币牛牛领取井通', '2', '2', '10.0000', null, '2019-01-07 11:01:38', null);
INSERT INTO `t_user_task_detail` VALUES ('292', '30', '10', '每日签到领取井通', '2', '2', '1.0000', null, '2019-01-07 11:38:33', null);
INSERT INTO `t_user_task_detail` VALUES ('293', '0', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-07 11:38:38', null);
INSERT INTO `t_user_task_detail` VALUES ('294', '0', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-07 11:40:34', null);
INSERT INTO `t_user_task_detail` VALUES ('295', '10', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-08 10:26:04', null);
INSERT INTO `t_user_task_detail` VALUES ('296', '1', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-09 10:13:20', null);
INSERT INTO `t_user_task_detail` VALUES ('297', '1', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-09 10:13:48', null);
INSERT INTO `t_user_task_detail` VALUES ('298', '1', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-09 10:13:53', null);
INSERT INTO `t_user_task_detail` VALUES ('299', '1', '12', '分享DP领取墨客币', '2', '1', '0.0100', null, '2019-01-09 14:02:15', null);
INSERT INTO `t_user_task_detail` VALUES ('300', '1', '10', '每日签到领取井通', '2', '2', '1.0000', null, '2019-01-10 14:47:31', null);

-- ----------------------------
-- Table structure for t_wallet
-- ----------------------------
DROP TABLE IF EXISTS `t_wallet`;
CREATE TABLE `t_wallet` (
  `wallet_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) DEFAULT NULL COMMENT '钱包类型  1 moac 2 井通',
  `user_id` int(11) DEFAULT NULL COMMENT '用户Id',
  `address` varchar(255) DEFAULT NULL COMMENT '钱包地址',
  `secret` varchar(255) DEFAULT NULL COMMENT '密钥',
  `password` varchar(255) DEFAULT NULL,
  `balance` varchar(60) DEFAULT '0' COMMENT '钱包余额',
  `qrcode` varchar(255) DEFAULT NULL COMMENT '二维码图片的地址',
  `keystore_url` varchar(255) DEFAULT NULL,
  `deleted` int(255) DEFAULT NULL,
  `activated` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`wallet_id`),
  KEY `index_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_wallet
-- ----------------------------
INSERT INTO `t_wallet` VALUES ('52', '1', '20', '0x339044a1684ff0ec71fc62e71c1d7d29bb4d32a6', null, '123123', '0.0', 'http://www.emoonbow.com/applicationMarket-upload/wallet/1542970029810.png', 'http://www.emoonbow.com/applicationMarket-upload/keystore/1542970029810keyStore.json', null, null, null, null);
INSERT INTO `t_wallet` VALUES ('54', '1', '8', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', 'YmJlZWVjM2NlNTI3OWIxOTdlZmMyYTZhZTI1OThkZjBiYjQ2MWJmZjZlZTQzZTcwMmU1YzhkMTM0\nMmZkZWU5YQ==', '111111', '0.75214928', 'http://www.emoonbow.com/applicationMarket-upload/wallet/1543135114475.png', 'http://www.emoonbow.com/applicationMarket-upload/keystore/154313511442120181125163834keystore.json', null, null, null, '2018-11-26 19:05:19');
INSERT INTO `t_wallet` VALUES ('55', '2', '25', 'jMWWsYwBF9dJ6Bc4RYMfqdQLyC1NQmCMMj', 'c3B1YkpTUW5zRWtSeWVBcFVWb0UxdFI0SFFlaUY=', '605586', '85.69', 'http://www.emoonbow.com/applicationMarket-upload/wallet/1543196914258.png', null, null, null, null, '2018-11-26 09:57:04');
INSERT INTO `t_wallet` VALUES ('57', '1', '25', '0xac8befdef14bb3d81a0a215d611d72594836ba03', null, '605586', '1.03', 'http://www.emoonbow.com/applicationMarket-upload/wallet/1543197592535.png', 'http://www.emoonbow.com/applicationMarket-upload/keystore/1543197592534keyStore.json', null, null, null, '2018-11-26 10:19:35');
INSERT INTO `t_wallet` VALUES ('60', '1', '24', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', null, '123321', '1.119282936', 'http://www.emoonbow.com/applicationMarket-upload/wallet/1543916427651.png', 'http://www.emoonbow.com/applicationMarket-upload/keystore/1543916427650keyStore.json', null, null, null, '2018-11-26 11:48:55');
INSERT INTO `t_wallet` VALUES ('70', '1', '27', '0xc2af4e2f5c5c625731a29364558866364678a80d', null, '123456', '0.1', 'http://www.emoonbow.com/applicationMarket-upload/wallet/1543211589244.png', 'http://www.emoonbow.com/applicationMarket-upload/keystore/1543211589244keyStore.json', null, null, null, '2018-11-26 13:57:58');
INSERT INTO `t_wallet` VALUES ('83', '2', '7', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', 'c3B4a2lXTmltNDd1UDNqZWNCamNmMnd3SFZDRGU=', '123456', '101.27996', 'http://www.emoonbow.com/applicationMarket-upload/wallet/1543915570915.png', null, null, null, null, '2018-11-29 15:37:24');
INSERT INTO `t_wallet` VALUES ('86', '1', '32', '0xac8befdef14bb3d81a0a215d611d72594836ba03', 'YWM4YmVmZGVmMTRiYjNkODFhMGEyMTVkNjExZDcyNTk0ODM2YmEwMw==', '123456789', '1.03', 'http://www.emoonbow.com/applicationMarket-upload/wallet/1543476707008.png', 'http://www.emoonbow.com/applicationMarket-upload/keystore/154347670700820181129153146keystore.json', null, null, null, null);
INSERT INTO `t_wallet` VALUES ('87', '2', '33', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', 'c3B4a2lXTmltNDd1UDNqZWNCamNmMnd3SFZDRGU=', '123456', '113.86998', 'http://www.emoonbow.com/applicationMarket-upload/wallet/1543477381262.png', null, null, null, null, null);
INSERT INTO `t_wallet` VALUES ('90', '2', '30', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', 'c25tcE51ZU1rd1UzS1FodUg1ZFdVZDN4c2JrVFA=', '201988', '199.29', 'http://www.emoonbow.com/applicationMarket-upload/wallet/1543542946184.png', null, null, null, null, '2018-11-30 09:55:46');
INSERT INTO `t_wallet` VALUES ('91', '1', '7', '0x842979507ca3dbb94392fb076f2555c7ff483d78', null, '123456', '89.520186992', 'http://www.emoonbow.com/applicationMarket-upload/wallet/1546063148115.png', 'http://www.emoonbow.com/applicationMarket-upload/keystore/1546063148114yesu2.jpg', null, null, null, '2018-12-05 13:55:20');
INSERT INTO `t_wallet` VALUES ('93', '1', '10', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', 'MHhiYmVlZWMzY2U1Mjc5YjE5N2VmYzJhNmFlMjU5OGRmMGJiNDYxYmZmNmVlNDNlNzAyZTVjOGQx\nMzQyZmRlZTlh', '123456', '1.019282936', 'http://www.emoonbow.com/applicationMarket-upload/wallet/1544753843412.png', 'http://www.emoonbow.com/applicationMarket-upload/keystore/154475384341120181214101723keystore.json', null, null, null, '2018-12-18 10:05:52');
INSERT INTO `t_wallet` VALUES ('98', '1', '30', '0x00aa2eb685aec01833ac43227df5fceed81fdda1', 'MHggMzQ3MjA3YTc0OTMzM2U3OTRmZTJhZTY4ZGU4MzY0ZGQ0NWQxY2RmNGRhZTBkMWQ5NDlmZjMy\nYjc5YjFjYmEzZA==', '201888', '0.219993976', 'http://www.emoonbow.com/applicationMarket-upload/wallet/1546497705646.png', 'http://www.emoonbow.com/applicationMarket-upload/keystore/154649770564420190103144145keystore.json', null, null, null, '2019-01-04 10:49:36');
INSERT INTO `t_wallet` VALUES ('101', '1', '1', '0x842979507ca3dbb94392fb076f2555c7ff483d78', null, '123456', '55.620110648', 'http://www.emoonbow.com/applicationMarket-upload/wallet/1546500156045.png', 'http://www.emoonbow.com/applicationMarket-upload/keystore/1546500156044keyStore.json', null, null, null, '2019-01-10 15:08:35');
INSERT INTO `t_wallet` VALUES ('104', '2', '1', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'c2gxVVFvWHNLdkgxdDd1Y0FxdTNQTm1CRmdtV3k=', '123456', '405.92004', 'http://admin.dpstore.pro/applicationMarket-upload/wallet/1546590720792.png', null, null, null, null, '2019-01-10 15:08:35');
INSERT INTO `t_wallet` VALUES ('105', '2', '10', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', 'c3B4a2lXTmltNDd1UDNqZWNCamNmMnd3SFZDRGU=', '123456', '127.22996', 'http://www.emoonbow.com/applicationMarket-upload/wallet/1546925546825.png', null, null, null, null, '2019-01-08 11:21:49');
INSERT INTO `t_wallet` VALUES ('107', '2', '24', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', 'c3B4a2lXTmltNDd1UDNqZWNCamNmMnd3SFZDRGU=', '123456', '127.22996', 'http://www.emoonbow.com/applicationMarket-upload/wallet/1546926002115.png', null, null, null, null, null);

-- ----------------------------
-- Table structure for t_wallet_type
-- ----------------------------
DROP TABLE IF EXISTS `t_wallet_type`;
CREATE TABLE `t_wallet_type` (
  `wallet_type_id` int(1) NOT NULL AUTO_INCREMENT COMMENT '钱包类型 id',
  `type_name` varchar(50) DEFAULT NULL COMMENT '钱包类型的名称',
  `deleted` int(1) DEFAULT NULL,
  `activated` int(1) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`wallet_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_wallet_type
-- ----------------------------

-- ----------------------------
-- Table structure for t_wallt_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_wallt_detail`;
CREATE TABLE `t_wallt_detail` (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(255) DEFAULT NULL COMMENT '交易号 交易的hash值',
  `number` varchar(255) DEFAULT NULL COMMENT '交易号',
  `wallet_id` int(11) DEFAULT NULL COMMENT '钱包Id',
  `from_address` varchar(200) DEFAULT NULL COMMENT '发款方',
  `to_address` varchar(255) DEFAULT NULL COMMENT '收款方',
  `money` varchar(60) DEFAULT NULL COMMENT '金额',
  `fee` double(20,6) DEFAULT NULL COMMENT '矿工费用 费率',
  `block` varchar(20) DEFAULT '' COMMENT '区块高度',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注 1 转账 2 任务奖励',
  `url` varchar(255) DEFAULT NULL COMMENT '链接  就是根据hash查询交易记录的',
  `transaction_date` varchar(60) DEFAULT NULL COMMENT '交易时间',
  `create_date` datetime DEFAULT NULL COMMENT '交易时间',
  `deleted` int(1) DEFAULT NULL,
  `activated` int(1) DEFAULT NULL COMMENT '类型 1 moca 2 井通',
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`detail_id`),
  KEY `index_block_activated` (`block`,`activated`),
  KEY `index_number_activated` (`number`,`activated`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_wallt_detail
-- ----------------------------
INSERT INTO `t_wallt_detail` VALUES ('14', '0xe953d6bbccab1977ae7dff6a4094f3dbbd774fb60c6b214a294c17a8c5c56156', '1542101502714', '11', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '-0.1', '0.010000', '1280194', '转账', null, '2018-11-13 17:31:42', '2018-11-13 17:31:43', null, '1', null);
INSERT INTO `t_wallt_detail` VALUES ('16', '9F61C9945194F7975C2DF19EF65E5942A5463B639CF33E13D98C57645611721B', '1542618347709', '38', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '-1.0', '0.010000', '11277575', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-19 17:05:48', '2018-11-19 17:05:48', null, '2', '2018-11-19 19:14:29');
INSERT INTO `t_wallt_detail` VALUES ('17', '0xe953d6bbccab1977ae7dff6a4094f3dbbd774fb60c6b214a294c17a8c5c56156', '1542618991731', '36', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '-0.1', '0.010000', '1280194', '任务奖励发放', null, '2018-11-19 17:16:31', '2018-11-19 17:16:32', null, '1', null);
INSERT INTO `t_wallt_detail` VALUES ('19', '47D4411C01305F7C8387E72CB0231C20E3ABA22FC78E639E56C0193583EA877E', '1542619562674', '13', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '-10.0', '0.010000', '11277701', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-19 17:26:03', '2018-11-19 17:26:03', null, '2', '2018-11-19 19:14:31');
INSERT INTO `t_wallt_detail` VALUES ('20', 'E9D5A8ACED8905B7ED9AC4C83704809462AD5D6BCA8DCA6D73E8823BF73A01C1', '1542619566080', '13', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '-10.0', '0.010000', '11277702', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-19 17:26:03', '2018-11-19 17:26:06', null, '2', '2018-11-19 19:14:33');
INSERT INTO `t_wallt_detail` VALUES ('21', '0x4bc42985b7ef79bb06e0428cbcc441ae5b672cc10d4c700e74644b5924b42c45', '1542620753574', '36', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '-0.01', '0.010000', '1320893', '任务奖励发放', null, '2018-11-19 17:26:03', '2018-11-19 17:45:54', null, '1', null);
INSERT INTO `t_wallt_detail` VALUES ('22', '0xd77a8ac2b0e0df3f972d01b0bd064ef01f0cb59841e9c4e37ac97074cb87d366', '1542621127990', '36', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '-0.01', '0.010000', '1320921', '任务奖励发放', null, '2018-11-19 17:26:03', '2018-11-19 17:52:08', null, '1', null);
INSERT INTO `t_wallt_detail` VALUES ('23', '0x64e6cc1b0d73882be7bd75439c1b3dae7ca88d687e5656c3daa5c31dab76f909', '1542621474636', '36', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '-0.01', '0.010000', '1320938', '任务奖励发放', null, '2018-11-19 17:57:54', '2018-11-19 17:57:55', null, '1', null);
INSERT INTO `t_wallt_detail` VALUES ('24', '0x64e6cc1b0d73882be7bd75439c1b3dae7ca88d687e5656c3daa5c31dab76f909', '1542621637951', '36', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '-0.01', '0.010000', '1320938', '任务奖励发放', null, '2018-11-19 18:00:37', '2018-11-19 18:00:38', null, '1', null);
INSERT INTO `t_wallt_detail` VALUES ('25', '0x64e6cc1b0d73882be7bd75439c1b3dae7ca88d687e5656c3daa5c31dab76f909', '1542622419884', '36', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '-0.01', '0.010000', '1320938', '任务奖励发放', null, '2018-11-19 18:13:39', '2018-11-19 18:13:40', null, '1', null);
INSERT INTO `t_wallt_detail` VALUES ('26', '0xe4e17b4c0d214023cf0707193d5e57e940b095ae1fdec4ca7ca9a139734cdb68', '1542622475436', '36', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '-0.01', '0.010000', '1321008', '任务奖励发放', null, '2018-11-19 18:13:39', '2018-11-19 18:14:35', null, '1', null);
INSERT INTO `t_wallt_detail` VALUES ('27', '0xe4e17b4c0d214023cf0707193d5e57e940b095ae1fdec4ca7ca9a139734cdb68', '1542622537014', '36', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '-0.01', '0.010000', '1321008', '任务奖励发放', null, '2018-11-19 18:13:39', '2018-11-19 18:15:37', null, '1', null);
INSERT INTO `t_wallt_detail` VALUES ('32', '05FB40E7B35B4A577FA19EA20BB11F5A650C5C4D5F79434A14184F98D989E80D', '1542623349652', '38', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '-10.0', '0.010000', '11278080', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-19 18:29:10', '2018-11-19 18:29:10', null, '2', '2018-11-19 19:14:35');
INSERT INTO `t_wallt_detail` VALUES ('33', '421D5D23273698291649BBD9B2801C5831CA711E7E4AD62670A2E7D0E9582934', '1542955787483', '50', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', '-0.01', '0.010000', '11311324', '转账', 'https://api.jingtum.com/v2/transactions/421D5D23273698291649BBD9B2801C5831CA711E7E4AD62670A2E7D0E9582934', '2018-11-23 14:49:47', '2018-11-23 14:49:48', null, '2', '2018-11-23 14:49:59');
INSERT INTO `t_wallt_detail` VALUES ('34', '0xc82276a70b79a55aa230676641e69e29132aa34cb12291470875f33d9d0312f5', '1542956633426', '51', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '-1.0E-5', '0.010000', '1345756', '转账', null, '2018-11-23 15:03:53', '2018-11-23 15:03:53', null, '1', null);
INSERT INTO `t_wallt_detail` VALUES ('35', '950A0B483C2A2AC1DF507837ABE3F91308EB7465F71AA91D4176567B11173D6C', '1542956724136', '50', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', '-0.00001', '0.010000', '11311417', '转账', 'https://api.jingtum.com/v2/transactions/950A0B483C2A2AC1DF507837ABE3F91308EB7465F71AA91D4176567B11173D6C', '2018-11-23 15:03:53', '2018-11-23 15:05:25', null, '2', '2018-11-23 15:05:28');
INSERT INTO `t_wallt_detail` VALUES ('36', 'D3279A172324D0D6848ACEA81D08B194B7E16364D09B364CDA880A6E54AFEC34', '1542956831939', '50', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', '-0.00001', '0.010000', '11311428', '转账', 'https://api.jingtum.com/v2/transactions/D3279A172324D0D6848ACEA81D08B194B7E16364D09B364CDA880A6E54AFEC34', '2018-11-23 15:03:53', '2018-11-23 15:07:12', null, '2', '2018-11-23 15:07:18');
INSERT INTO `t_wallt_detail` VALUES ('37', 'F2D920471F7636676020F672344C5A9F08880588B66FD985A35F3A04CAA79EE8', '1542956975925', '50', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', '-0.00001', '0.010000', '11311443', '转账', 'https://api.jingtum.com/v2/transactions/F2D920471F7636676020F672344C5A9F08880588B66FD985A35F3A04CAA79EE8', '2018-11-23 15:03:53', '2018-11-23 15:09:36', null, '2', '2018-11-23 15:09:48');
INSERT INTO `t_wallt_detail` VALUES ('38', '0xaba7ed02fd4214dc4893c90a346bd315845662109bf0b99b1aef87c0bf1cc436', '1542957229041', '51', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '-1.0E-5', '0.010000', '1345806', '转账', null, '2018-11-23 15:13:49', '2018-11-23 15:13:49', null, '1', '2018-11-23 15:22:10');
INSERT INTO `t_wallt_detail` VALUES ('39', '0x13b3653f7b6ac9bd2a07217b95aa8331b4b6c39fb12cbf7222536513d1048bfb', '1542957649240', '51', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '-1.0E-5', '0.010000', '1345826', '任务奖励发放', null, '2018-11-23 15:20:36', '2018-11-23 15:20:49', null, '1', '2018-11-23 15:20:49');
INSERT INTO `t_wallt_detail` VALUES ('40', '4A6B45B30227B1594C2B7E7EB873CBA79B3226F990778BF2DFB4515ABCB736B7', '1542957635657', '50', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', '-0.00001', '0.010000', '11311509', '转账', 'https://api.jingtum.com/v2/transactions/4A6B45B30227B1594C2B7E7EB873CBA79B3226F990778BF2DFB4515ABCB736B7', '2018-11-23 15:20:36', '2018-11-23 15:20:36', null, '2', '2018-11-23 15:20:48');
INSERT INTO `t_wallt_detail` VALUES ('41', '0x5347fb2073ad2fbb634a7fcdc298b19849ae5cc34258a36bc11d4b66772d5654', '1542960107037', '51', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '-0.00001', '0.010000', '1345996', '转账', null, '2018-11-23 16:01:47', '2018-11-23 16:01:47', null, '1', '2018-11-23 16:01:47');
INSERT INTO `t_wallt_detail` VALUES ('43', '1393F7959ABDF7464A11567169D2D0AB94F47F9FB3F7347BC44C215D5B6D85A9', '1543202712910', '56', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+0.1', '0.010000', '11336016', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:25:13', null, '2', '2018-11-26 11:25:18');
INSERT INTO `t_wallt_detail` VALUES ('44', 'BC4E1759ECD74B6C152DC0FC1A1BB89141598D9868E7DE44832E6B7FFEC612A4', '1543202714458', '56', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+0.1', '0.010000', '11336016', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:25:15', null, '2', '2018-11-26 11:25:18');
INSERT INTO `t_wallt_detail` VALUES ('45', 'CDC04D16F4AC73B1065414C2FF0408E0AC7F58BFE6688C1590F1536B17CAAD9A', '1543202979925', '58', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+0.1', '0.010000', '11336043', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:29:40', null, '2', '2018-11-26 11:29:48');
INSERT INTO `t_wallt_detail` VALUES ('46', '877EF879E382605ED37873B6D6F251AD3D6277D2B371E6F009C2B949822F9FBC', '1543202982284', '58', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+0.1', '0.010000', '11336043', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:29:42', null, '2', '2018-11-26 11:29:51');
INSERT INTO `t_wallt_detail` VALUES ('47', '48FF507CA02B799532515B703A3504542C021BEADC61A9D9EA616DC5948587D1', '1543203338757', '58', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+1.0', '0.010000', '11336079', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:35:39', null, '2', '2018-11-26 11:35:49');
INSERT INTO `t_wallt_detail` VALUES ('48', '0x4ff7e5a9ba0ecadd9b5483844212445695ddb93891e421d429c716c75a767c8e', '1543203391768', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x880429f63f85ad2315cc58b625838883d1ebf659', '+10.0', '0.010000', '1364123', '任务奖励发放', null, '2018-11-26 11:25:13', '2018-11-26 11:36:32', null, '1', '2018-11-26 11:36:31');
INSERT INTO `t_wallt_detail` VALUES ('49', '33D9E973191E3350CCB7CFFDFB48C1007C15BA15AABD0C45CA7A3D9CC7159384', '1543203345403', '58', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+0.1', '0.010000', '11336080', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:35:46', null, '2', '2018-11-26 11:35:59');
INSERT INTO `t_wallt_detail` VALUES ('50', 'EEADB7BE10A13C75CD31A9F9435AD7089CD04A311BC00C9B18F72FA1A266BA44', '1543203348695', '58', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+1.0', '0.010000', '11336080', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:35:49', null, '2', '2018-11-26 11:36:10');
INSERT INTO `t_wallt_detail` VALUES ('51', '427278D36F221F4D7D02145B3730821F4E10C56E995FD0FAB02C348881277F70', '1543203349819', '58', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+0.1', '0.010000', '11336080', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:35:50', null, '2', '2018-11-26 11:36:12');
INSERT INTO `t_wallt_detail` VALUES ('52', '3D6ABA37D1983D80AAB0A7D515FC6E7F7FB4040FB1EA94BA7A20C2D87C20C9B5', '1543203358421', '58', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+1.0', '0.010000', '11336081', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:35:59', null, '2', '2018-11-26 11:36:14');
INSERT INTO `t_wallt_detail` VALUES ('53', '527ADA6EFB0B75837DA5F553DA282A2CF62FC410FBA6C1BD3A4A8FE7A3B83A3F', '1543203362962', '58', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+1.0', '0.010000', '11336081', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:36:03', null, '2', '2018-11-26 11:36:16');
INSERT INTO `t_wallt_detail` VALUES ('54', '57092BE884E6B5A931E1F5843DF7E5772C51EBC516BB029039F19C36B201C9A5', '1543203366828', '56', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+0.1', '0.010000', '11336082', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:36:07', null, '2', '2018-11-26 11:36:18');
INSERT INTO `t_wallt_detail` VALUES ('55', 'A4C28C95B01546EB0B9DEC0B84DCEC09A2AF009932E3593481920C52CEA9FABC', '1543203367929', '56', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+0.1', '0.010000', '11336082', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:36:08', null, '2', '2018-11-26 11:36:20');
INSERT INTO `t_wallt_detail` VALUES ('56', 'C3B084A7600303796D07E96C5623D71A9E7328498DCFDD3A5D54A4338E3DF4C8', '1543203368419', '56', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+0.1', '0.010000', '11336082', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:36:09', null, '2', '2018-11-26 11:36:23');
INSERT INTO `t_wallt_detail` VALUES ('57', '4C43B95EA5BB5E96F0C5B24185F2AD31AB28E0E1C800DD7C62523D3495E26E8E', '1543203369671', '56', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+1.0', '0.010000', '11336082', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:36:10', null, '2', '2018-11-26 11:36:25');
INSERT INTO `t_wallt_detail` VALUES ('58', '915C094493A57EF0A890747439927712A25682C8A17BB181216074B213F665A8', '1543203371063', '56', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+1.0', '0.010000', '11336082', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:36:11', null, '2', '2018-11-26 11:36:27');
INSERT INTO `t_wallt_detail` VALUES ('59', '3F3C90CAD80A86E52555154AAD6DCEF9BA6266A900179422ED31135F56036972', '1543203371512', '56', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+1.0', '0.010000', '11336082', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:36:12', null, '2', '2018-11-26 11:36:29');
INSERT INTO `t_wallt_detail` VALUES ('60', 'CC232103B904EE8C3313EE92108A8F0EB5A2D311B9159D14AC605BA714E044F3', '1543203373054', '56', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+1.0', '0.010000', '11336082', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:36:13', null, '2', '2018-11-26 11:36:31');
INSERT INTO `t_wallt_detail` VALUES ('61', 'E76D05DD6AD46AC9BCA930EC1F6921B0FEBF341611E9C0453D0833501CAF31B3', '1543203375465', '56', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+1.0', '0.010000', '11336083', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:36:16', null, '2', '2018-11-26 11:36:34');
INSERT INTO `t_wallt_detail` VALUES ('62', '5507B5AFF4FB71A4E0B0179F0C1E8BD852A2C891950DD371D95881CC7AF91737', '1543203376327', '56', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+1.0', '0.010000', '11336083', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:36:16', null, '2', '2018-11-26 11:36:36');
INSERT INTO `t_wallt_detail` VALUES ('63', 'C901C009432524E60C2BB82AA8122512F38C594057AFC7B298E6F760E7F90F19', '1543203376814', '56', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+1.0', '0.010000', '11336083', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:36:17', null, '2', '2018-11-26 11:36:38');
INSERT INTO `t_wallt_detail` VALUES ('64', 'DCBC72A343878AF4860EE9CEE8C8799CA694D082B9C6435F48F55DF154AF6D3C', '1543203449480', '58', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+0.1', '0.010000', '11336090', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:37:30', null, '2', '2018-11-26 11:37:38');
INSERT INTO `t_wallt_detail` VALUES ('65', 'A4BA418090824BE38C1C7C2A404FDAEB7908AB3E72628229A71450AE927FB9AF', '1543203454060', '58', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+1.0', '0.010000', '11336090', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:37:34', null, '2', '2018-11-26 11:37:42');
INSERT INTO `t_wallt_detail` VALUES ('66', 'C70EF7A7FDD82DA2D88BA5434514009AD3933F63D2B148389C0AE213EA1AB3ED', '1543203471627', '56', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+1.0', '0.010000', '11336092', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:37:52', null, '2', '2018-11-26 11:38:01');
INSERT INTO `t_wallt_detail` VALUES ('67', 'A7F86F7BB9962E00AF5E615B0C800B763CC44A77E088D4C314739B19337DD2CB', '1543203472467', '56', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+1.0', '0.010000', '11336092', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:37:53', null, '2', '2018-11-26 11:37:59');
INSERT INTO `t_wallt_detail` VALUES ('68', '419D15047A3F63B27A2DB5A2C0FFAE4EC5D0002E8F7B45467ADC3916488FFF53', '1543203473232', '56', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+1.0', '0.010000', '11336092', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:37:53', null, '2', '2018-11-26 11:38:01');
INSERT INTO `t_wallt_detail` VALUES ('69', '53EBC9851DD2170444BF817C518B5AC5E05373C62875B32BD7CDB470B34B674B', '1543203557605', '56', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+0.1', '0.010000', '11336101', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:39:18', null, '2', '2018-11-26 11:39:28');
INSERT INTO `t_wallt_detail` VALUES ('70', '381E9C5D96639339EA7B697BA78622CD8A054D62DA5BC3C25D8BD3F67DFB4CC6', '1543203558462', '56', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+0.1', '0.010000', '11336101', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:39:19', null, '2', '2018-11-26 11:39:32');
INSERT INTO `t_wallt_detail` VALUES ('71', 'F4D250A2647731609AD8424139A7C7C980CF872E0FFED2BC671F13F49395942B', '1543203559227', '56', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+0.1', '0.010000', '11336101', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:39:19', null, '2', '2018-11-26 11:39:28');
INSERT INTO `t_wallt_detail` VALUES ('72', '9D0799F84C3FF0AA435B87F2D5897C235F85683FF41BD7910654829E5AB8E433', '1543203607374', '58', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+1.0', '0.010000', '11336106', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:40:07', null, '2', '2018-11-26 11:40:21');
INSERT INTO `t_wallt_detail` VALUES ('73', '1D0E6C2E5422D50F08AF191FB54A1BAB058BB5FF15A98BF52B4B0BDE1D470317', '1543203625643', '58', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+1.0', '0.010000', '11336108', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:40:26', null, '2', '2018-11-26 11:40:38');
INSERT INTO `t_wallt_detail` VALUES ('74', 'C018F2F0F7CE757EA65D89C7A1C1980795D971654409D1E1466471C77B23F208', '1543203630171', '58', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+1.0', '0.010000', '11336108', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:40:30', null, '2', '2018-11-26 11:40:38');
INSERT INTO `t_wallt_detail` VALUES ('75', '42E6DA270B9908F95D0090F816A4AA27EE8D265BFF2F06DE5E44AE19C581B818', '1543203633655', '58', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+1.0', '0.010000', '11336108', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:40:34', null, '2', '2018-11-26 11:40:53');
INSERT INTO `t_wallt_detail` VALUES ('76', '95761BBC03CD7AD840658146C0342EC1447196C774FB5D5B8616C385BE415562', '1543203638815', '58', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+1.0', '0.010000', '11336109', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:40:39', null, '2', '2018-11-26 11:41:20');
INSERT INTO `t_wallt_detail` VALUES ('77', '650DF08362682E431D21C2F06E4531806F5A11ECA0E93232253CC1072DC840EB', '1543203651140', '58', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+0.1', '0.010000', '11336110', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:40:51', null, '2', '2018-11-26 11:41:22');
INSERT INTO `t_wallt_detail` VALUES ('78', '21CEA91EBD803F9B411E284EC65BC1FDF34104910FD36BC131DCED6947AB4B87', '1543203656278', '58', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+0.1', '0.010000', '11336111', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:40:56', null, '2', '2018-11-26 11:41:24');
INSERT INTO `t_wallt_detail` VALUES ('79', 'C08B3C32E1F935AF5DFFAB2CA13FB0257A1F3C72D998303CF1597EC0558E8477', '1543203662657', '58', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+0.1', '0.010000', '11336111', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:41:03', null, '2', '2018-11-26 11:41:27');
INSERT INTO `t_wallt_detail` VALUES ('80', '4B2ED57024A4BC82AABF189840743E29DFB2F6385CF78C4734B28629AE1557F6', '1543203671821', '56', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+0.1', '0.010000', '11336112', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:41:12', null, '2', '2018-11-26 11:41:29');
INSERT INTO `t_wallt_detail` VALUES ('81', 'D8A90973CD862244D7922DB5EC4F5B38DD8C7204FEDFF929231488AA76A32306', '1543203672632', '56', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+0.1', '0.010000', '11336112', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:41:13', null, '2', '2018-11-26 11:41:31');
INSERT INTO `t_wallt_detail` VALUES ('82', 'ECF3BD0BB02607273030132AEBC7D9969926C63AB6C488ADAF6BDF4C553D3E08', '1543203777554', '58', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+0.1', '0.010000', '11336123', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:42:58', null, '2', '2018-11-26 11:43:08');
INSERT INTO `t_wallt_detail` VALUES ('83', '2A973399193A9C8EC4C442491F54E06916402259390651D6EDF91DFAA0880028', '1543203778709', '58', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+0.1', '0.010000', '11336123', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 11:25:13', '2018-11-26 11:42:59', null, '2', '2018-11-26 11:43:10');
INSERT INTO `t_wallt_detail` VALUES ('84', '0x9057c8bd46b4f317147645b79be7a9966a859b38e0ebb7ed31da0b65c240188f', '1543203869034', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x880429f63f85ad2315cc58b625838883d1ebf659', '+10.0', '0.010000', '1364145', '任务奖励发放', null, '2018-11-26 11:25:13', '2018-11-26 11:44:29', null, '1', '2018-11-26 11:44:29');
INSERT INTO `t_wallt_detail` VALUES ('85', '0xa2ee327d164631e83891998a14f5d46e1af66848e85dfa2b1c3e7ee32d176b15', '1543203901044', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x880429f63f85ad2315cc58b625838883d1ebf659', '+10.0', '0.010000', '1364148', '任务奖励发放', null, '2018-11-26 11:25:13', '2018-11-26 11:45:01', null, '1', '2018-11-26 11:45:01');
INSERT INTO `t_wallt_detail` VALUES ('86', '0x3003ea9bcce79141abde9393bae44cf449714239b1c65d1c90be93d44e33b689', '1543203982042', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x880429f63f85ad2315cc58b625838883d1ebf659', '+10.0', '0.010000', '1364151', '任务奖励发放', null, '2018-11-26 11:25:13', '2018-11-26 11:46:22', null, '1', '2018-11-26 11:46:22');
INSERT INTO `t_wallt_detail` VALUES ('87', '0xb4b85f53d9a0de17b0efa8dc72990c1907d73411d3cc8f933a64ea8e2f75407c', '1543204157036', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x880429f63f85ad2315cc58b625838883d1ebf659', '+10.0', '0.010000', '1364160', '任务奖励发放', null, '2018-11-26 11:25:13', '2018-11-26 11:49:17', null, '1', '2018-11-26 11:49:17');
INSERT INTO `t_wallt_detail` VALUES ('88', '0x12034b9e220cff35bf8c22e6a7a279d8c5348c78629e6b453cbe8e409dbd1efd', '1543204180035', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x880429f63f85ad2315cc58b625838883d1ebf659', '+10.0', '0.010000', '1364163', '任务奖励发放', null, '2018-11-26 11:25:13', '2018-11-26 11:49:40', null, '1', '2018-11-26 11:49:40');
INSERT INTO `t_wallt_detail` VALUES ('89', '0x84a96394114040d85428a91b19023a6c0289ffe2b25413133e97cac259d325f1', '1543204279039', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x880429f63f85ad2315cc58b625838883d1ebf659', '+10.0', '0.010000', '1364167', '任务奖励发放', null, '2018-11-26 11:25:13', '2018-11-26 11:51:19', null, '1', '2018-11-26 11:51:19');
INSERT INTO `t_wallt_detail` VALUES ('90', '0x8d2fc0ca46383646a1c5b22c6c6027e119dd018b4b22f1705955b9645d9cbc54', '1543207428034', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x880429f63f85ad2315cc58b625838883d1ebf659', '+10.0', '0.010000', '1364372', '任务奖励发放', null, '2018-11-26 11:25:13', '2018-11-26 12:43:48', null, '1', '2018-11-26 12:43:48');
INSERT INTO `t_wallt_detail` VALUES ('91', '0x6181ef39eb4d9835a64d9dc3d91af60e7e5034120602c60c303aab1018f6ee98', '1543207450033', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x880429f63f85ad2315cc58b625838883d1ebf659', '+10.0', '0.010000', '1364374', '任务奖励发放', null, '2018-11-26 11:25:13', '2018-11-26 12:44:10', null, '1', '2018-11-26 12:44:10');
INSERT INTO `t_wallt_detail` VALUES ('92', 'EB852AB87C557F5EC55FECC7925E5E29BE22D2CA72AD9FF17DE0073E00A6D75C', '1543211256133', '56', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+10.0', '0.010000', '11336871', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 13:47:36', '2018-11-26 13:47:36', null, '2', '2018-11-26 13:47:48');
INSERT INTO `t_wallt_detail` VALUES ('93', '0x4ee7e85d3a87c812d2d0f1e9db64c9ef89ccecb3d6d8ca6587af2438aca43bbe', '1543215106039', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x880429f63f85ad2315cc58b625838883d1ebf659', '+10.0', '0.010000', '1364964', '任务奖励发放', null, '2018-11-26 13:47:36', '2018-11-26 14:51:46', null, '1', '2018-11-26 14:51:46');
INSERT INTO `t_wallt_detail` VALUES ('94', '19948DC990332448E76087B72C8B74796335C2929A7DACE12D2247E9224863EA', '1543216815514', '55', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jMWWsYwBF9dJ6Bc4RYMfqdQLyC1NQmCMMj', '+0.1', '0.010000', '11337427', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 13:47:36', '2018-11-26 15:20:16', null, '2', '2018-11-26 15:20:45');
INSERT INTO `t_wallt_detail` VALUES ('95', '01CE50AD0043E325731AD62368F3E0ED0B212544E9EF180E2D46BAC624785AB4', '1543216816687', '55', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jMWWsYwBF9dJ6Bc4RYMfqdQLyC1NQmCMMj', '+0.1', '0.010000', '11337427', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 13:47:36', '2018-11-26 15:20:17', null, '2', '2018-11-26 15:20:30');
INSERT INTO `t_wallt_detail` VALUES ('96', '1194AB826F0B4182A8AEB86CC9C2FE16EFB85F9D053D5312FE9694C6DFE351A1', '1543216817552', '55', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jMWWsYwBF9dJ6Bc4RYMfqdQLyC1NQmCMMj', '+0.1', '0.010000', '11337427', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 13:47:36', '2018-11-26 15:20:18', null, '2', '2018-11-26 15:20:33');
INSERT INTO `t_wallt_detail` VALUES ('97', '58F843ED3972108C448889189ADE8F0F339E3B406A766741E49CD1EF4CB3FA21', '1543216818293', '55', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jMWWsYwBF9dJ6Bc4RYMfqdQLyC1NQmCMMj', '+0.1', '0.010000', '11337427', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 13:47:36', '2018-11-26 15:20:18', null, '2', '2018-11-26 15:20:35');
INSERT INTO `t_wallt_detail` VALUES ('98', 'FC4093D91BF62CF92076F284C360CB12887F5123BA119A783D44211F4AF220BF', '1543216821200', '55', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jMWWsYwBF9dJ6Bc4RYMfqdQLyC1NQmCMMj', '+0.1', '0.010000', '11337427', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 13:47:36', '2018-11-26 15:20:21', null, '2', '2018-11-26 15:21:02');
INSERT INTO `t_wallt_detail` VALUES ('99', '55628D3B2370B7ECDD9B0FD45D7EA792365E5CBDCFB866619DD4F01A3AF4D5F7', '1543216822128', '55', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jMWWsYwBF9dJ6Bc4RYMfqdQLyC1NQmCMMj', '+0.1', '0.010000', '11337427', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 13:47:36', '2018-11-26 15:20:22', null, '2', '2018-11-26 15:21:15');
INSERT INTO `t_wallt_detail` VALUES ('100', '89FF426E1FD2039EACFAB3C303ADD3480F82C222A6A31B96712C10524E3E2027', '1543216823076', '55', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jMWWsYwBF9dJ6Bc4RYMfqdQLyC1NQmCMMj', '+0.1', '0.010000', '11337427', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 13:47:36', '2018-11-26 15:20:23', null, '2', '2018-11-26 15:21:30');
INSERT INTO `t_wallt_detail` VALUES ('101', 'A623A8C96F6CE210303ED5445BC1516E28C4DFAF6B9C31237D7BA8D3F4F437E2', '1543217229732', '55', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jMWWsYwBF9dJ6Bc4RYMfqdQLyC1NQmCMMj', '+1.0', '0.010000', '11337468', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 13:47:36', '2018-11-26 15:27:10', null, '2', '2018-11-26 15:27:18');
INSERT INTO `t_wallt_detail` VALUES ('102', 'E664BBCD556DBD7B996B5995FDE4266D2641267F663C718D63B99E1A0FC212CC', '1543217230770', '55', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jMWWsYwBF9dJ6Bc4RYMfqdQLyC1NQmCMMj', '+1.0', '0.010000', '11337468', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 13:47:36', '2018-11-26 15:27:11', null, '2', '2018-11-26 15:27:18');
INSERT INTO `t_wallt_detail` VALUES ('103', 'FD346A8C3590B751E681E13A524F847DE3E99F1BBF04C165DA4FDE1063F194D2', '1543217231637', '55', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jMWWsYwBF9dJ6Bc4RYMfqdQLyC1NQmCMMj', '+1.0', '0.010000', '11337468', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 13:47:36', '2018-11-26 15:27:12', null, '2', '2018-11-26 15:27:20');
INSERT INTO `t_wallt_detail` VALUES ('104', 'F3B3ED450ED552BEFE518151FC394CBCDD4CC40C014CB5FADEDB85216CD0B028', '1543217235096', '55', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jMWWsYwBF9dJ6Bc4RYMfqdQLyC1NQmCMMj', '+1.0', '0.010000', '11337469', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 13:47:36', '2018-11-26 15:27:15', null, '2', '2018-11-26 15:27:48');
INSERT INTO `t_wallt_detail` VALUES ('105', 'C2C3742374F2650FD5646662584527EAA92A50D9BFBF5A3A3A3554EB9A4D2B72', '1543217235637', '55', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jMWWsYwBF9dJ6Bc4RYMfqdQLyC1NQmCMMj', '+1.0', '0.010000', '11337469', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 13:47:36', '2018-11-26 15:27:16', null, '2', '2018-11-26 15:27:50');
INSERT INTO `t_wallt_detail` VALUES ('106', '22504CFC25EE9908C4C460D251DBBF80082136E18E3E47DF60F92E18FBB65644', '1543217238153', '55', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jMWWsYwBF9dJ6Bc4RYMfqdQLyC1NQmCMMj', '+10.0', '0.010000', '11337469', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 13:47:36', '2018-11-26 15:27:18', null, '2', '2018-11-26 15:28:14');
INSERT INTO `t_wallt_detail` VALUES ('107', '0x067b431614818a7d613225e86d1d42aa7469aad97f5288aeffe3e4fdd082b963', '1543217312042', '57', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0xac8befdef14bb3d81a0a215d611d72594836ba03', '+10.0', '0.010000', '1365097', '任务奖励发放', null, '2018-11-26 13:47:36', '2018-11-26 15:28:32', null, '1', '2018-11-26 15:28:32');
INSERT INTO `t_wallt_detail` VALUES ('108', '9A514DFBCA69A35BDD0458C85E421F1EABAD0C2BDE9A61A7DF4A43F99E5E7248', '1543217284873', '55', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jMWWsYwBF9dJ6Bc4RYMfqdQLyC1NQmCMMj', '+1.0', '0.010000', '11337473', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 13:47:36', '2018-11-26 15:28:05', null, '2', '2018-11-26 15:28:16');
INSERT INTO `t_wallt_detail` VALUES ('109', '4883B70DFC0B26DA2A0406DE1F6F8A1088B92A8C2403D54E58C736BCE5CE14D2', '1543217289805', '55', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jMWWsYwBF9dJ6Bc4RYMfqdQLyC1NQmCMMj', '+1.0', '0.010000', '11337474', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 13:47:36', '2018-11-26 15:28:10', null, '2', '2018-11-26 15:28:18');
INSERT INTO `t_wallt_detail` VALUES ('110', '3717F6B2653B3A457DBA4EACB48850165AE50327A76039757F76B4C638F69CD7', '1543217291985', '55', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jMWWsYwBF9dJ6Bc4RYMfqdQLyC1NQmCMMj', '+1.0', '0.010000', '11337474', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 13:47:36', '2018-11-26 15:28:12', null, '2', '2018-11-26 15:28:20');
INSERT INTO `t_wallt_detail` VALUES ('111', '45390FB428D857B70C08D618F2A92228A3AD15E05DA6F625C32455EE1ECDBB07', '1543217293394', '55', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jMWWsYwBF9dJ6Bc4RYMfqdQLyC1NQmCMMj', '+1.0', '0.010000', '11337474', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 13:47:36', '2018-11-26 15:28:14', null, '2', '2018-11-26 15:28:23');
INSERT INTO `t_wallt_detail` VALUES ('112', '0x5d34d3e3d912940ce2434f1ea7b0eaba732972fdce8600c495c5cc6b026ceda4', '1543217392039', '57', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0xac8befdef14bb3d81a0a215d611d72594836ba03', '+10.0', '0.010000', '1365103', '任务奖励发放', null, '2018-11-26 13:47:36', '2018-11-26 15:29:52', null, '1', '2018-11-26 15:29:52');
INSERT INTO `t_wallt_detail` VALUES ('113', '0xc8bd5b1ce7bf14767b976b760a9bd9c42e1f61d8ebaa6b7554a09fa75db3c2cb', '1543217613228', '57', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0xac8befdef14bb3d81a0a215d611d72594836ba03', '+10.0', '0.010000', '1365120', '任务奖励发放', null, '2018-11-26 13:47:36', '2018-11-26 15:33:33', null, '1', '2018-11-26 15:33:33');
INSERT INTO `t_wallt_detail` VALUES ('114', '9DFD7D7779CD7325B25CBBD820337A70D8046543CE3A565FC7F70230870B6CD9', '1543217590114', '55', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jMWWsYwBF9dJ6Bc4RYMfqdQLyC1NQmCMMj', '+1.0', '0.010000', '11337504', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-26 13:47:36', '2018-11-26 15:33:10', null, '2', '2018-11-26 15:33:19');
INSERT INTO `t_wallt_detail` VALUES ('115', '794F84597E3D4F05DC51BD3AB8D9DD68185B9113664E380F28DBD2D3A13B0CE2', '1543288045465', '58', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+10.0', '0.010000', '11344550', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-27 11:07:25', '2018-11-27 11:07:26', null, '2', '2018-11-27 11:07:38');
INSERT INTO `t_wallt_detail` VALUES ('130', '0x47d039d4aa9a053282104140b85a5c2d6053b710b25a8020003aa801c6711e41', '1543307952424', '79', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '-0', '0.010000', '1371827', '转账', null, '2018-11-27 16:39:12', '2018-11-27 16:39:12', null, '1', '2018-11-27 16:39:12');
INSERT INTO `t_wallt_detail` VALUES ('131', '0xc7ee89a11dff4f5ee66875e3ca5fed7fb9fd9fe42d74541a8a6d25bdd0a3612f', '1543309654671', '79', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '-0', '0.010000', '1371944', '转账', null, '2018-11-27 16:39:12', '2018-11-27 17:07:35', null, '1', '2018-11-27 17:07:34');
INSERT INTO `t_wallt_detail` VALUES ('132', '0x2b492594e3b2fe95077c4a552053507511951f01ef533fd060b7b4243c4ef5bb', '1543310909428', '79', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '-0', '0.010000', '1372051', '转账', null, '2018-11-27 16:39:12', '2018-11-27 17:28:29', null, '1', '2018-11-27 17:28:29');
INSERT INTO `t_wallt_detail` VALUES ('133', '0xb462301926382eda53c92310cb3d4d18dbca92322039520eaabae7795217447a', '1543368841417', '79', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '-0', '0.010000', '1376539', '转账', null, '2018-11-27 16:39:12', '2018-11-28 09:34:01', null, '1', '2018-11-28 09:34:01');
INSERT INTO `t_wallt_detail` VALUES ('134', '0xadc0bfdb3d5d31baa073dedfc7ec9d3ec718c74d9c10a660c1460e1a66bb9802', '1543383321414', '72', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '-0.00001', '0.010000', '1377505', '转账', null, '2018-11-27 16:39:12', '2018-11-28 13:35:21', null, '1', '2018-11-28 13:35:21');
INSERT INTO `t_wallt_detail` VALUES ('135', '0x6408e7462cf8e0f3a070e31c103f7e8aaa7963e1f55251da463aae39a0dd6085', '1543474082126', '79', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '-0', '0.010000', '1383938', '转账', null, '2018-11-29 06:48:02', '2018-11-29 06:48:02', null, '1', '2018-11-29 14:48:02');
INSERT INTO `t_wallt_detail` VALUES ('136', '0x106f27e1389db7c53942d5ee94990361e2863a2fa2ec3d045a8e6c13ff1207b7', '1543475082228', '72', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '+10.0', '0.010000', '1384287', '任务奖励发放', null, '2018-11-29 07:04:42', '2018-11-29 07:04:42', null, '1', '2018-11-29 15:04:42');
INSERT INTO `t_wallt_detail` VALUES ('137', '46EB8482E20732363BF08E2C62AEBB7B812B5FC08E7AEFC88E0DC056B0B3E986', '1543475901576', '83', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '-0.00001', '0.010000', '11363329', '转账', 'https://api.jingtum.com/v2/transactions/46EB8482E20732363BF08E2C62AEBB7B812B5FC08E7AEFC88E0DC056B0B3E986', '2018-11-29 15:18:22', '2018-11-29 15:18:22', null, '2', '2018-11-29 15:17:28');
INSERT INTO `t_wallt_detail` VALUES ('138', '948720639ED1A73D03366C7597117812F8960E064DC78AC74F72DD1F1FAB394E', '1543476115115', '83', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '-0.00001', '0.010000', '11363356', '转账', 'https://api.jingtum.com/v2/transactions/948720639ED1A73D03366C7597117812F8960E064DC78AC74F72DD1F1FAB394E', '2018-11-29 15:21:55', '2018-11-29 15:21:56', null, '2', '2018-11-29 15:21:58');
INSERT INTO `t_wallt_detail` VALUES ('139', 'A232B7C1546AA12AF30FD0CA3B36DECEC242320BCB992C5EF3321DCEA6A8E7A7', '1543477403509', '87', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', '-0.00001', '0.010000', '11363485', '转账', 'https://api.jingtum.com/v2/transactions/A232B7C1546AA12AF30FD0CA3B36DECEC242320BCB992C5EF3321DCEA6A8E7A7', '2018-11-29 15:21:55', '2018-11-29 15:43:24', null, '2', '2018-11-29 15:43:28');
INSERT INTO `t_wallt_detail` VALUES ('141', '43045501E3C0146793E5D7346692F06D5A420DDF790EF1AC499B0887880FD81D', '1543484908055', '82', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+1.0', '0.010000', '11364236', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-29 17:48:28', '2018-11-29 17:48:28', null, '2', '2018-11-29 17:48:39');
INSERT INTO `t_wallt_detail` VALUES ('142', '53ED4BBD9E8D3659546D7AB20CD5BD8542D9AA226BC5F39AF696B82C994DC0D2', '1543485027578', '82', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+1.0', '0.010000', '11364248', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-29 17:48:28', '2018-11-29 17:50:28', null, '2', '2018-11-29 17:50:38');
INSERT INTO `t_wallt_detail` VALUES ('143', '5AC4A928B09285B794618D2D988E8DDAEEAC7550950AB62BC734D557FFC548C1', '1543548836904', '82', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+1.0', '0.010000', '11370629', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-30 11:33:57', '2018-11-30 11:33:57', null, '2', '2018-11-30 11:34:08');
INSERT INTO `t_wallt_detail` VALUES ('144', '7CD5E038246BD8D915ED247D8CDD2D3F280B3A12A11A2AE9E65E1F4145792B86', '1543549063980', '82', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+1.0', '0.010000', '11370651', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-30 11:33:57', '2018-11-30 11:37:44', null, '2', '2018-11-30 11:37:48');
INSERT INTO `t_wallt_detail` VALUES ('145', '0A196B07E52AE318204F7E7284F26CB6C28422E8F1FA9250C1E3E832DFA2248E', '1543549070934', '82', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+1.0', '0.010000', '11370652', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-11-30 11:33:57', '2018-11-30 11:37:51', null, '2', '2018-11-30 11:37:59');
INSERT INTO `t_wallt_detail` VALUES ('146', '0x4df79886f3efa270bf2dad85a726f626db156f3f4e50cd61843d2d2a392918b0', '1543549818121', '79', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0', '0.010000', 'null', '转账', null, '2018-11-30 11:33:57', '2018-11-30 11:50:18', null, '1', '2018-11-30 11:50:18');
INSERT INTO `t_wallt_detail` VALUES ('147', '0x92866867684356eb5dbbc8285554c412ec257ba1cbdc38bb8eae2e14932a692d', '1543550069098', '79', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-11-30 11:33:57', '2018-11-30 11:54:29', null, '1', '2018-11-30 11:54:29');
INSERT INTO `t_wallt_detail` VALUES ('148', '0x71223f94673e806b54449dfe0c9fef25c1a7b6f86ab87607174adc9632aa98fe', '1543843710121', '72', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-03 21:24:54', '2018-12-03 21:28:30', null, '1', '2018-12-03 21:28:30');
INSERT INTO `t_wallt_detail` VALUES ('149', '0x0e55f93ba27d844c3775603ba084f2133e25c1a70c9cc7411d8750f02841adf9', '1543845689067', '72', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '+10.0', '0.010000', 'null', '任务奖励发放', null, '2018-12-03 21:24:54', '2018-12-03 22:01:29', null, '1', '2018-12-03 22:01:29');
INSERT INTO `t_wallt_detail` VALUES ('150', '0x7e9861a15d5cdc3fcc4f47ede8a745590b33f2a74e13dadb363191fde725f9e4', '1543895397048', '72', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0.00001', '0.010000', 'null', '转账', null, '2018-12-03 21:24:54', '2018-12-04 11:49:57', null, '1', '2018-12-04 11:49:57');
INSERT INTO `t_wallt_detail` VALUES ('151', '0x39d28dd3ed6ca4459058717d42ff9cfda78d1f76e16fba19a3eb3318043ff31b', '1543911835120', '57', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0xac8befdef14bb3d81a0a215d611d72594836ba03', '+10.0', '0.010000', 'null', '任务奖励发放', null, '2018-12-04 16:23:55', '2018-12-04 16:23:55', null, '1', '2018-12-04 16:23:55');
INSERT INTO `t_wallt_detail` VALUES ('152', '0x115a5aa0b5221ad3750492b6ce727f6580a8bc89c3923ddaf401396976cc9dfb', '1543913704079', '79', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0', '0.010000', 'null', '转账', null, '2018-12-04 16:23:55', '2018-12-04 16:55:04', null, '1', '2018-12-04 16:55:04');
INSERT INTO `t_wallt_detail` VALUES ('153', '0x6c1ff20c7f5372d0ea97ef635e137c1d728105e93f298638d16e32374931af0d', '1543914193065', '79', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0', '0.010000', 'null', '转账', null, '2018-12-04 16:23:55', '2018-12-04 17:03:13', null, '1', '2018-12-04 17:03:13');
INSERT INTO `t_wallt_detail` VALUES ('154', '40B5F862A15F394FE6006104CBD43048E01242E4447A79893E35DF8FC612DF60', '1543915536501', '83', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '-0.00001', '0.010000', '11407299', '转账', 'https://api.jingtum.com/v2/transactions/40B5F862A15F394FE6006104CBD43048E01242E4447A79893E35DF8FC612DF60', '2018-12-04 16:23:55', '2018-12-04 17:25:37', null, '2', '2018-12-04 17:25:47');
INSERT INTO `t_wallt_detail` VALUES ('155', '06FA88D05D3D1CC883279B7C351A23A6C44F5BEA5B5C49C301D6BA3F29A1B752', '1543915595046', '83', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', '-0.00001', '0.010000', '11407304', '转账', 'https://api.jingtum.com/v2/transactions/06FA88D05D3D1CC883279B7C351A23A6C44F5BEA5B5C49C301D6BA3F29A1B752', '2018-12-04 16:23:55', '2018-12-04 17:26:35', null, '2', '2018-12-04 17:26:38');
INSERT INTO `t_wallt_detail` VALUES ('156', 'B8D725F713E10BBA73AD8008D1B72AF00D86D2F576E67D26E5CBC1689EBEF601', '1543915664792', '83', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', '-0.00001', '0.010000', '11407311', '转账', 'https://api.jingtum.com/v2/transactions/B8D725F713E10BBA73AD8008D1B72AF00D86D2F576E67D26E5CBC1689EBEF601', '2018-12-04 16:23:55', '2018-12-04 17:27:45', null, '2', '2018-12-04 17:27:48');
INSERT INTO `t_wallt_detail` VALUES ('157', '0x69fad342f66dbeaea999d8223e6c8a8b7f59baa031e15069e2b5755f79974c8d', '1543915923040', '72', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0.0001', '0.010000', 'null', '转账', null, '2018-12-04 16:23:55', '2018-12-04 17:32:03', null, '1', '2018-12-04 17:32:03');
INSERT INTO `t_wallt_detail` VALUES ('158', 'CAAD914BD2FB069125D7886EEEC97DECEE98B635FFA1381EF24A9E9B12CC0818', '1543916131494', '58', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '-56', '0.010000', '11407358', '转账', 'https://api.jingtum.com/v2/transactions/CAAD914BD2FB069125D7886EEEC97DECEE98B635FFA1381EF24A9E9B12CC0818', '2018-12-04 16:23:55', '2018-12-04 17:35:32', null, '2', '2018-12-04 17:35:38');
INSERT INTO `t_wallt_detail` VALUES ('159', '0xe44a08ddfa0dc28c3cae110b34ca15a095d67b68d77fb3f35f022867e4f5e308', '1543916626052', '72', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0.00001', '0.010000', 'null', '转账', null, '2018-12-04 16:23:55', '2018-12-04 17:43:46', null, '1', '2018-12-04 17:43:46');
INSERT INTO `t_wallt_detail` VALUES ('160', '0x69ead24de2d30a2735f68aeabafa33bbff88963d7d240296c75b2fc700e3275c', '1543916801041', '91', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0.00001', '0.010000', 'null', '转账', null, '2018-12-04 16:23:55', '2018-12-04 17:46:41', null, '1', '2018-12-04 17:46:41');
INSERT INTO `t_wallt_detail` VALUES ('161', '0x68efd4c7e7a54754614944f3bc211c3c84264d1884db54814442e39ccc69f2f2', '1543917164039', '60', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0.1', '0.010000', 'null', '转账', null, '2018-12-04 16:23:55', '2018-12-04 17:52:44', null, '1', '2018-12-04 17:52:44');
INSERT INTO `t_wallt_detail` VALUES ('162', '0BBF73019136CB61B140230B95DB848C329AA681C137CB9CF482FBD36B7879C1', '1543976724262', '83', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+0.1', '0.010000', '11413417', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-04 16:23:55', '2018-12-05 10:25:25', null, '2', '2018-12-05 10:25:27');
INSERT INTO `t_wallt_detail` VALUES ('163', '0xee2fdef3b1f0d0ca52bbe2fa95729dd2c102445ad101d713d6ef08f4735f554e', '1544409475289', '79', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0', '0.010000', 'null', '转账', null, '2018-12-06 12:56:03', '2018-12-10 10:37:55', null, '1', '2018-12-10 10:37:55');
INSERT INTO `t_wallt_detail` VALUES ('164', '9FD6DADB8E544A57CAFE42CBD28C6A63F3D052EEF573D627178EFCC52D3D81E8', '1544751064061', '82', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+1.0', '0.010000', '11490851', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-14 09:31:04', '2018-12-14 09:31:04', null, '2', '2018-12-14 09:31:08');
INSERT INTO `t_wallt_detail` VALUES ('165', '0x45c08cb5a7be9013f7f5f671be9e8188bddafa38f5f2aac3011c316d587fd6b2', '1544751198343', '79', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '-0', '0.010000', '1480444', '转账', null, '2018-12-14 09:31:04', '2018-12-14 09:33:18', null, '1', '2018-12-14 09:33:18');
INSERT INTO `t_wallt_detail` VALUES ('166', '0x6bb1fde245e9910593cdb588c8547a48049aec3cfc91231a6cfc7c7ce25b18ad', '1544753430291', '92', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '-0', '0.010000', '1480602', '转账', null, '2018-12-14 09:31:04', '2018-12-14 10:10:30', null, '1', '2018-12-14 10:10:30');
INSERT INTO `t_wallt_detail` VALUES ('167', 'DBB35A0F09640AE2A7942779050E5A7A0247D6EC10F48D8CD0CB957D849A01D0', '1544754400847', '82', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+1.0', '0.010000', '11491185', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-14 09:31:04', '2018-12-14 10:26:41', null, '2', '2018-12-14 10:26:48');
INSERT INTO `t_wallt_detail` VALUES ('168', '6154BB9B687E5D993B05478515A58CCBD08EA70E13216E3B4B96EECEE202BBDC', '1544851712805', '83', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+0.1', '0.010000', '11500916', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-14 09:31:04', '2018-12-15 13:28:33', null, '2', '2018-12-15 13:28:39');
INSERT INTO `t_wallt_detail` VALUES ('169', '2FDAB12BCE332086820D59F448F992FE2BB17CE4BAD403637261E14FB7C955A0', '1544851715360', '83', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+10.0', '0.010000', '11500917', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-14 09:31:04', '2018-12-15 13:28:35', null, '2', '2018-12-15 13:28:48');
INSERT INTO `t_wallt_detail` VALUES ('170', '8447A390BF045B60A0F32D434582E2446D71E2DAB8322E7F769ECBD5F19B556E', '1545024489877', '83', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+10.0', '0.010000', '11518194', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-14 09:31:04', '2018-12-17 13:28:10', null, '2', '2018-12-17 13:28:18');
INSERT INTO `t_wallt_detail` VALUES ('171', '0xdb5b4a467284f7047f564bd1a7306b482bd433e82f89e43ca8673f76bee86fcc', '1545024507751', '91', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-14 09:31:04', '2018-12-17 13:28:28', null, '1', '2018-12-17 13:28:27');
INSERT INTO `t_wallt_detail` VALUES ('172', 'ACC8765EB28D79EC423E4270A4029D77B9B2B33986C3B4F500D6D50E0FA4AC4C', '1545025061666', '82', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+1.0', '0.010000', '11518251', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-14 09:31:04', '2018-12-17 13:37:42', null, '2', '2018-12-17 13:37:48');
INSERT INTO `t_wallt_detail` VALUES ('173', '0x06c5354e35f5a0320e05c53f29921ccfd418a34a69999b74025c1a4fbc0b1e2e', '1545026400290', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+10.0', '0.010000', 'null', '任务奖励发放', null, '2018-12-14 09:31:04', '2018-12-17 14:00:00', null, '1', '2018-12-17 14:00:00');
INSERT INTO `t_wallt_detail` VALUES ('174', '0x487d56e4d549208b7e160db2a210719d8754228793dae90f8fe36f3f783c77e3', '1545026524275', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-14 09:31:04', '2018-12-17 14:02:04', null, '1', '2018-12-17 14:02:04');
INSERT INTO `t_wallt_detail` VALUES ('175', '0x20b3189088c5610bee6aaec0b449f84210923ac8a5ff1ddf8f58eb85f9cc0458', '1545026591299', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-14 09:31:04', '2018-12-17 14:03:11', null, '1', '2018-12-17 14:03:11');
INSERT INTO `t_wallt_detail` VALUES ('176', '0x10cf72d39bc2db4e3039fe43b9e812328fbec7170d3e136f20549bb631ce5ad1', '1545026625297', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-14 09:31:04', '2018-12-17 14:03:45', null, '1', '2018-12-17 14:03:45');
INSERT INTO `t_wallt_detail` VALUES ('177', '15025629DA463C48552C06A9525677C9A02AA34FC78576A33D840BE5CE5B02D4', '1545027764975', '94', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+10.0', '0.010000', '11518521', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-14 09:31:04', '2018-12-17 14:22:45', null, '2', '2018-12-17 14:22:48');
INSERT INTO `t_wallt_detail` VALUES ('178', '9B0A6936398715571AA29B5017461A22404AD60F69625E8E4186D6710E35C861', '1545027841183', '94', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+1.0', '0.010000', '11518529', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-14 09:31:04', '2018-12-17 14:24:01', null, '2', '2018-12-17 14:24:08');
INSERT INTO `t_wallt_detail` VALUES ('179', '1E92896A6CA18EF8229E2CF9E5F9C9AB4092DC361257380275699BA7CEE02E89', '1545027843104', '94', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+1.0', '0.010000', '11518529', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-14 09:31:04', '2018-12-17 14:24:03', null, '2', '2018-12-17 14:24:08');
INSERT INTO `t_wallt_detail` VALUES ('180', 'AEA5DA253E9217DA7FDCFAF5C419333DDCE4CFEFA0DA93233FA17BFADCC24DE5', '1545027845729', '94', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+1.0', '0.010000', '11518530', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-14 09:31:04', '2018-12-17 14:24:06', null, '2', '2018-12-17 14:24:19');
INSERT INTO `t_wallt_detail` VALUES ('181', 'F5ABA1CBF27B9A5260C3E63F1C5584768FF275489E430FFC5B773DAE176BF092', '1545028050692', '94', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '-35', '0.010000', '11518550', '转账', 'https://api.jingtum.com/v2/transactions/F5ABA1CBF27B9A5260C3E63F1C5584768FF275489E430FFC5B773DAE176BF092', '2018-12-14 09:31:04', '2018-12-17 14:27:31', null, '2', '2018-12-17 14:27:39');
INSERT INTO `t_wallt_detail` VALUES ('182', '0x63c1314e9c21770a3b672db9ac22ba80b9ca06d02d8c181dd4922ba7f596bb04', '1545028112268', '60', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '-0.1', '0.010000', 'null', '转账', null, '2018-12-14 09:31:04', '2018-12-17 14:28:32', null, '1', '2018-12-17 14:28:32');
INSERT INTO `t_wallt_detail` VALUES ('183', '0x6016fbc01d9d53cdc22777f438dc9bb902173201906b7ad2f6fbd6e6c7ab443e', '1545028327301', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-14 09:31:04', '2018-12-17 14:32:07', null, '1', '2018-12-17 14:32:07');
INSERT INTO `t_wallt_detail` VALUES ('184', '0xbb67e8ca50223b1a4601a2accac33964193599a49a34b94f2acfc29eac80f8de', '1545035709273', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-14 09:31:04', '2018-12-17 16:35:09', null, '1', '2018-12-17 16:35:09');
INSERT INTO `t_wallt_detail` VALUES ('185', '0x96e0293569411e0a783e79b1d01273383be6ab1ea1e7ea8173ccac8ee5be7a7a', '1545035746276', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-14 09:31:04', '2018-12-17 16:35:46', null, '1', '2018-12-17 16:35:46');
INSERT INTO `t_wallt_detail` VALUES ('186', '0x2efcfb9d337784d86f8655bf487f40abedbb21f529719018c3afb3a3ed710d70', '1545035847308', '59', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-14 09:31:04', '2018-12-17 16:37:27', null, '1', '2018-12-17 16:37:27');
INSERT INTO `t_wallt_detail` VALUES ('187', '0x292beaee0a5c35667b9ce4c330c9e1bf1c12995a9b5c6a102e8d4fec3414892b', '1545036106271', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-14 09:31:04', '2018-12-17 16:41:46', null, '1', '2018-12-17 16:41:46');
INSERT INTO `t_wallt_detail` VALUES ('188', 'E7F1C42586F0ACA4B6561D8FCCF2909D9E585E11705847033486A458DF44AF11', '1545036198723', '83', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+0.1', '0.010000', '11519365', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-14 09:31:04', '2018-12-17 16:43:19', null, '2', '2018-12-17 16:43:28');
INSERT INTO `t_wallt_detail` VALUES ('189', '0x1a1efad749c8bfb2d7bc3b851f440ed30c02094f28f213a7e2e90cd9d03cd507', '1545036223262', '91', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-14 09:31:04', '2018-12-17 16:43:43', null, '1', '2018-12-17 16:43:43');
INSERT INTO `t_wallt_detail` VALUES ('190', '0x52ddd1d6e4551c85f3f4c436464ff6ec91ee2f059f1b57c9682000be047fe3b7', '1545036278267', '91', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-14 09:31:04', '2018-12-17 16:44:38', null, '1', '2018-12-17 16:44:38');
INSERT INTO `t_wallt_detail` VALUES ('191', '0xc2d46073b32e25bcac4c863696bdb60635cdb6be3cdebfc435b936fba94daef8', '1545036355263', '91', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-14 09:31:04', '2018-12-17 16:45:55', null, '1', '2018-12-17 16:45:55');
INSERT INTO `t_wallt_detail` VALUES ('192', '0x0aae9b4aaae66c4021fdf62a3ce2e3661272cbad1336323119ee75a1619210c6', '1545036470264', '91', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-14 09:31:04', '2018-12-17 16:47:50', null, '1', '2018-12-17 16:47:50');
INSERT INTO `t_wallt_detail` VALUES ('193', '0x0e2b1dae73f075087b83e2482fae6dbb0d5ba0d73510ce77e702609006ede719', '1545036844279', '91', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-14 09:31:04', '2018-12-17 16:54:04', null, '1', '2018-12-17 16:54:04');
INSERT INTO `t_wallt_detail` VALUES ('194', '0x80beab1875c1d000f4c24b82ce7b84a11fc7f198527dfe37db9e42a7aa80730b', '1545037173290', '91', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-14 09:31:04', '2018-12-17 16:59:33', null, '1', '2018-12-17 16:59:33');
INSERT INTO `t_wallt_detail` VALUES ('195', '0xa35c0a4e39c9b29d161fab076e049d80d123d81dfbdcbcc3fe264cd0713f4fb4', '1545037344262', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-14 09:31:04', '2018-12-17 17:02:24', null, '1', '2018-12-17 17:02:24');
INSERT INTO `t_wallt_detail` VALUES ('196', '51C6F720A10AA0D2D189D5E5260C02DD1E9E3BD91FA096702A5ADAF5F620DE49', '1545037389538', '83', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+1.0', '0.010000', '11519484', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-14 09:31:04', '2018-12-17 17:03:10', null, '2', '2018-12-17 17:03:18');
INSERT INTO `t_wallt_detail` VALUES ('197', '0x475fcfb1dd0f21b07e81d575ae37dcb77cf3a680a7b87f3ef75fe685e3c6a119', '1545037420265', '91', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-14 09:31:04', '2018-12-17 17:03:40', null, '1', '2018-12-17 17:03:40');
INSERT INTO `t_wallt_detail` VALUES ('198', 'C4C8F9E2F6DC3587885A6685EEAB9DFF78AADA0D7CE141431E9C06690A3BBFCB', '1545037526330', '83', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+1.0', '0.010000', '11519498', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-14 09:31:04', '2018-12-17 17:05:26', null, '2', '2018-12-17 17:05:38');
INSERT INTO `t_wallt_detail` VALUES ('199', '0780357D776D96D6002EF40F4BD48AAB10786100F3607F1D659BC49FDF633345', '1545037540344', '83', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+1.0', '0.010000', '11519499', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-14 09:31:04', '2018-12-17 17:05:40', null, '2', '2018-12-17 17:05:51');
INSERT INTO `t_wallt_detail` VALUES ('200', '0xca26101413879408a5f1e3d23e45bd8156e5a308adb60cb484b93bc40d99eb95', '1545038070287', '91', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-14 09:31:04', '2018-12-17 17:14:30', null, '1', '2018-12-17 17:14:30');
INSERT INTO `t_wallt_detail` VALUES ('201', '0xff24e8681118ed61625b3e752598676ec89610e2f0d75d941d02b12513acd15f', '1545097419251', '91', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '-0.4', '0.010000', 'null', '转账', null, '2018-12-14 09:31:04', '2018-12-18 09:43:39', null, '1', '2018-12-18 09:43:39');
INSERT INTO `t_wallt_detail` VALUES ('202', '7314EDC42C42A7E608A5328445793AB40C2D9333FA6CABF9133B1C470DE72908', '1545097431815', '83', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+0.1', '0.010000', '11525488', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-14 09:31:04', '2018-12-18 09:43:52', null, '2', '2018-12-18 09:43:58');
INSERT INTO `t_wallt_detail` VALUES ('203', '0xedca3935968973181997d64d9addf227d9c378dc6aac7c7da8e9b0c0f11c9c17', '1545097437558', '91', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-14 09:31:04', '2018-12-18 09:43:58', null, '1', '2018-12-18 09:43:57');
INSERT INTO `t_wallt_detail` VALUES ('204', '0x659844a57f22a20df6ae4f7d18a3b604e3257accfd54b4af8c7dbd9ca6146c4d', '1545097700304', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-14 09:31:04', '2018-12-18 09:48:20', null, '1', '2018-12-18 09:48:20');
INSERT INTO `t_wallt_detail` VALUES ('205', '0xc8d74491ede0db630fdd017854ce452d2fe2384986b8ef575c66ebb73d1a5276', '1545097736278', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-14 09:31:04', '2018-12-18 09:48:56', null, '1', '2018-12-18 09:48:56');
INSERT INTO `t_wallt_detail` VALUES ('206', '0xc698057ccbd36e22fe1b402bff0ae89ce20237227467cfc337f9b3284930c2ee', '1545097804321', '91', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-14 09:31:04', '2018-12-18 09:50:04', null, '1', '2018-12-18 09:50:04');
INSERT INTO `t_wallt_detail` VALUES ('207', 'E77525203AE5B033E63ECD836F90A4925482609FF1D8AFA40839BA3C35236956', '1545124459845', '82', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+1.0', '0.010000', '11528191', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-14 09:31:04', '2018-12-18 17:14:20', null, '2', '2018-12-18 17:14:28');
INSERT INTO `t_wallt_detail` VALUES ('208', 'C4A71D1DFEBECD533FC2B879BD2480C0A9C3CD4777437E67B75D2D6FBA93C786', '1545124459823', '82', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+1.0', '0.010000', '11528191', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-14 09:31:04', '2018-12-18 17:14:20', null, '2', '2018-12-18 17:14:27');
INSERT INTO `t_wallt_detail` VALUES ('209', '0245F8463B24584D6E3851E4CBA97376DE93CEE7FEB12CF9724A0AAD8496FD84', '1545186065562', '82', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+1.0', '0.010000', '11534352', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-19 10:21:05', '2018-12-19 10:21:06', null, '2', '2018-12-19 10:21:18');
INSERT INTO `t_wallt_detail` VALUES ('210', '6A945DBE6D273D17225ACC00D955D06B3E00C2C9F6EA20F078FB252A4CE8DD99', '1545186155867', '82', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+1.0', '0.010000', '11534361', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-19 10:21:05', '2018-12-19 10:22:36', null, '2', '2018-12-19 10:22:48');
INSERT INTO `t_wallt_detail` VALUES ('211', '0x90a485c7e6fd8f8a3525a496350ba0ceed042dc792f7310fdf5fb992a0b1d737', '1545186198068', '93', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-19 10:21:05', '2018-12-19 10:23:18', null, '1', '2018-12-19 10:23:18');
INSERT INTO `t_wallt_detail` VALUES ('212', '11AC59CC6D8C9B9D2D1AA1DAA305C73763B39209496BCBA016E94454E70457B5', '1545186380011', '82', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+1.0', '0.010000', '11534383', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-19 10:21:05', '2018-12-19 10:26:20', null, '2', '2018-12-19 10:26:28');
INSERT INTO `t_wallt_detail` VALUES ('213', '0xc5e4c2bf7a6bc1681d7a7c6b6285be043092e7fbfa59936fd75776d0788b6ef0', '1545285817295', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-19 10:21:05', '2018-12-20 14:03:37', null, '1', '2018-12-20 14:03:37');
INSERT INTO `t_wallt_detail` VALUES ('214', '0x1f1c6db1ed998e1c61f7d19f943bdc4a417f78182a50f20e069ad577d19ca89a', '1545705925379', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.3', '0.010000', 'null', '任务奖励发放', null, '2018-12-25 10:43:58', '2018-12-25 10:45:25', null, '1', '2018-12-25 10:45:25');
INSERT INTO `t_wallt_detail` VALUES ('215', '6021D51E275AC7AEFAFC9C41EDF8872BDBE1B958ADC008F2A7A4BEED620D8722', '1545706119127', '94', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+2.0', '0.010000', '11586357', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-25 10:43:58', '2018-12-25 10:48:39', null, '2', '2018-12-25 10:48:48');
INSERT INTO `t_wallt_detail` VALUES ('216', '893C33764CF77B5D08C89402C752F1E695B851A4E47BB4513D1EF1EB66ED58E2', '1545706201982', '94', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+1.0', '0.010000', '11586365', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-25 10:43:58', '2018-12-25 10:50:02', null, '2', '2018-12-25 10:50:08');
INSERT INTO `t_wallt_detail` VALUES ('217', '0xb8a0a01ceab1dc63ae54a312cc8847410ac60f9041e4a353e682b49de7393f32', '1545706207575', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+10.0', '0.010000', 'null', '任务奖励发放', null, '2018-12-25 10:43:58', '2018-12-25 10:50:08', null, '1', '2018-12-25 10:50:07');
INSERT INTO `t_wallt_detail` VALUES ('218', '2D2C95C23D7ADE2FDB14E17BFE8F9A13CD3346494011D63A2A212387D2CE152C', '1545706379226', '56', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+3.0', '0.010000', '11586383', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-25 10:43:58', '2018-12-25 10:52:59', null, '2', '2018-12-25 10:53:08');
INSERT INTO `t_wallt_detail` VALUES ('219', '070B9A9D58B84CA965DE6572B43FF0362516244CA3A445976F19DBC12AA29693', '1545706381432', '56', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+3.0', '0.010000', '11586383', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-25 10:43:58', '2018-12-25 10:53:02', null, '2', '2018-12-25 10:53:10');
INSERT INTO `t_wallt_detail` VALUES ('220', 'C49FAB304897964CEC09192832FED02DB8B080854A866E2AEE8E4192B368BD6D', '1545706382888', '56', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+3.0', '0.010000', '11586383', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-25 10:43:58', '2018-12-25 10:53:03', null, '2', '2018-12-25 10:53:17');
INSERT INTO `t_wallt_detail` VALUES ('221', '0x0975049c724fdef869b3b4ba226326ce820474b5759058a97daf71a8fa3f8e11', '1545706507300', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.2', '0.010000', 'null', '任务奖励发放', null, '2018-12-25 10:43:58', '2018-12-25 10:55:07', null, '1', '2018-12-25 10:55:07');
INSERT INTO `t_wallt_detail` VALUES ('222', '0x9186e0055cef422f7b49e92e92a5dd412f9c34e584a64716c45f6a45156905b2', '1545706615283', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.2', '0.010000', 'null', '任务奖励发放', null, '2018-12-25 10:43:58', '2018-12-25 10:56:55', null, '1', '2018-12-25 10:56:55');
INSERT INTO `t_wallt_detail` VALUES ('223', '0x5525e1a15abeb4353bbc440cffa486e9f8b2553777aa21dde324cc400f1e9626', '1545708174285', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.01', '0.010000', 'null', '任务奖励发放', null, '2018-12-25 10:43:58', '2018-12-25 11:22:54', null, '1', '2018-12-25 11:22:54');
INSERT INTO `t_wallt_detail` VALUES ('224', '996EF61F6E12A9D3B57FB972896324049A2B04A3ACB24C736B7C2ADDF69C2CB7', '1545719608283', '94', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+1.0', '0.010000', '11587706', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-25 10:43:58', '2018-12-25 14:33:28', null, '2', '2018-12-25 14:33:37');
INSERT INTO `t_wallt_detail` VALUES ('225', '3F5BDFED2EA7169E9D7C55848A1646213EBF611F556A9FAE54D5D518F267B087', '1545719610087', '94', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+1.0', '0.010000', '11587706', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-25 10:43:58', '2018-12-25 14:33:30', null, '2', '2018-12-25 14:33:39');
INSERT INTO `t_wallt_detail` VALUES ('226', '873A9F1AFCE71B0EE11E9BDF071ABC1729349AA9D6FD38464260BEA275B15116', '1545728670638', '94', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+30.0', '0.010000', '11588612', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-25 17:04:31', '2018-12-25 17:04:31', null, '2', '2018-12-25 17:04:38');
INSERT INTO `t_wallt_detail` VALUES ('227', 'DF81BE0B58023ED3BFF280172F26B40A0DF49B157EB9664380985AA8FD83F544', '1545728672870', '94', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+30.0', '0.010000', '11588612', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-25 17:04:31', '2018-12-25 17:04:33', null, '2', '2018-12-25 17:04:38');
INSERT INTO `t_wallt_detail` VALUES ('228', 'CB49C5744E2C03417A519CF385A10A8A9E828412699090AF116DE9F254AAA3E9', '1545787538982', '82', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+1.0', '0.010000', '11594499', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-25 17:04:31', '2018-12-26 09:25:39', null, '2', '2018-12-26 09:25:48');
INSERT INTO `t_wallt_detail` VALUES ('229', '86FB08517F9DA9214FE873DD35BCB5754279FF8A9067D8D464900E6A6060F363', '1545787848662', '82', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+1.0', '0.010000', '11594530', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-25 17:04:31', '2018-12-26 09:30:49', null, '2', '2018-12-26 09:30:58');
INSERT INTO `t_wallt_detail` VALUES ('230', 'EB8D2DC628481027947C85E8C1FEFFA4B60F458CD9D5C3AC10069E49ACFF155C', '1545787887755', '82', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+1.0', '0.010000', '11594534', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-25 17:04:31', '2018-12-26 09:31:28', null, '2', '2018-12-26 09:31:38');
INSERT INTO `t_wallt_detail` VALUES ('231', '0x084a6c8fab7915745e51ae46901fe08b3d6325bdd234589978e1b0867d6ffc06', '1545788008775', '93', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-25 17:04:31', '2018-12-26 09:33:29', null, '1', '2018-12-26 09:33:28');
INSERT INTO `t_wallt_detail` VALUES ('232', '96A68F3359CC055E6CB2E8A2AB1D81F01A6FAB976E53C00616CD5B05531874CD', '1545791985807', '83', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+1.0', '0.010000', '11594944', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-25 17:04:31', '2018-12-26 10:39:46', null, '2', '2018-12-26 10:39:58');
INSERT INTO `t_wallt_detail` VALUES ('233', '441000FE716B303A37A36E9E5E2AF81F6E65897F48DF77B9702642A44BB79ED4', '1545791991909', '83', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+1.0', '0.010000', '11594944', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2018-12-25 17:04:31', '2018-12-26 10:39:52', null, '2', '2018-12-26 10:40:02');
INSERT INTO `t_wallt_detail` VALUES ('234', '0x7fe57208607882a639753b790efc3d8d5874bca813d2fc60674906499f834126', '1545791996653', '91', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2018-12-25 17:04:31', '2018-12-26 10:39:57', null, '1', '2018-12-26 10:39:56');
INSERT INTO `t_wallt_detail` VALUES ('235', '0x1768d2e4f65de0ce05943810f1f6ff01419962ce87a9c786e5ab54452a1f643d', '1546316588362', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2019-01-01 12:23:08', '2019-01-01 12:23:08', null, '1', '2019-01-01 12:23:08');
INSERT INTO `t_wallt_detail` VALUES ('236', '0x5d62cea8700feb5c50ae85ffa78c9ee2c16b43ff94318aa15e2e48286201eb31', '1546393116290', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.01', '0.010000', 'null', '任务奖励发放', null, '2019-01-01 12:23:08', '2019-01-02 09:38:36', null, '1', '2019-01-02 09:38:36');
INSERT INTO `t_wallt_detail` VALUES ('237', '0x72fab847a96fc34e31d39e506f4042ba5c95894abcef4451499e772abb9df666', '1546481040301', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2019-01-01 12:23:08', '2019-01-03 10:04:00', null, '1', '2019-01-03 10:04:00');
INSERT INTO `t_wallt_detail` VALUES ('238', '07799CE9D6D5F032FF8AED5D43E6A99C0771B71CBED5165508C0C81EC809F670', '1546481771927', '95', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+1.0', '0.010000', '11663922', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2019-01-01 12:23:08', '2019-01-03 10:16:12', null, '2', '2019-01-03 10:16:19');
INSERT INTO `t_wallt_detail` VALUES ('239', 'C919FF3A79852A080FD53E2BEC9C7936A947FA9099D4D469DC7F39736761A967', '1546484983429', '94', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jfLAgAexM4zSno78cZCkPWWBxip1Guv69F', '+1.0', '0.010000', '11664243', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2019-01-01 12:23:08', '2019-01-03 11:09:44', null, '2', '2019-01-03 11:09:48');
INSERT INTO `t_wallt_detail` VALUES ('240', '159E1A71A2B3E38EF67594AAA9D6D40B51C8AB41298D75B6F0421F1D94051C38', '1546485364891', '95', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jHy4uAmfeyqpRowMCab8yYp2o92jykLiMo', '+1.0', '0.010000', '11664281', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2019-01-01 12:23:08', '2019-01-03 11:16:05', null, '2', '2019-01-03 11:16:08');
INSERT INTO `t_wallt_detail` VALUES ('241', '0xd48bb35e96dd54b0a52f44dea7cb030a48cbcf9637989bb0d90993c79d940ad4', '1546830986222', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2019-01-07 11:16:26', '2019-01-07 11:16:26', null, '1', '2019-01-07 11:16:26');
INSERT INTO `t_wallt_detail` VALUES ('242', '0x25092ba4b00257c9e02bc14741fc2aa9fb5af84374ebf2baa7eee2e8d1fb7904', '1546830991269', '60', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '+0.1', '0.010000', 'null', '任务奖励发放', null, '2019-01-07 11:16:25', '2019-01-07 11:16:31', null, '1', '2019-01-07 11:16:31');
INSERT INTO `t_wallt_detail` VALUES ('243', 'D7B97F1364FF65A41BB30F9D907265BB2A884E855DED92E7D35E771D6637A85F', '1546917701560', '105', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+10.0', '0.010000', '11707515', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2019-01-08 11:21:41', '2019-01-08 11:21:42', null, '2', '2019-01-08 11:21:48');
INSERT INTO `t_wallt_detail` VALUES ('244', '43C1AD458280BFF7FBE82A4CE77744D6F0BD87E54D7DA69D60D05070F4577795', '1546917704821', '105', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+10.0', '0.010000', '11707515', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2019-01-08 11:21:41', '2019-01-08 11:21:45', null, '2', '2019-01-08 11:21:52');
INSERT INTO `t_wallt_detail` VALUES ('245', '0xdd7f048f4443794e744fd98225c65afaddefe556be9d2bc6586d560cbd62de6b', '1546917793336', '93', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '-0.1', '0.010000', 'null', '转账', null, '2019-01-08 11:21:41', '2019-01-08 11:23:13', null, '1', '2019-01-08 11:23:13');
INSERT INTO `t_wallt_detail` VALUES ('246', '0x4a239bfe220b0d19420044e36cf7157d8bc62a1c703aaf949148f4fb01bf96c7', '1546922830296', '93', '0x4a1a050e9e657c19e9a2678df202fc72a12f6afb', '0x842979507ca3dbb94392fb076f2555c7ff483d78', '-0', '0.010000', 'null', '转账', null, '2019-01-08 11:21:41', '2019-01-08 12:47:10', null, '1', '2019-01-08 12:47:10');
INSERT INTO `t_wallt_detail` VALUES ('247', 'EC423E4F30DAB58445D55136C7A25222D8C75CB5FF27B1C4E4726D8BD86CE160', '1546922884500', '105', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', '+10.0', '0.010000', '11708033', '任务奖励发放', 'https://api.jingtum.com/v2/transactions/null', '2019-01-08 11:21:41', '2019-01-08 12:48:05', null, '2', '2019-01-08 12:48:08');
INSERT INTO `t_wallt_detail` VALUES ('248', 'A8AF2FBA9B34C40AA67F915DB0334232C607DFBFD8B43504C3A8EF576FB75364', '1546925162792', '105', 'jNtuYEfWLVB2PfSjhvSur5Asq1yTsXkBge', 'jp2uU9VMjeYSNBp3ggJg2Zxw59twBrvAF2', '-1', '0.010000', '11708253', '转账', 'https://api.jingtum.com/v2/transactions/A8AF2FBA9B34C40AA67F915DB0334232C607DFBFD8B43504C3A8EF576FB75364', '2019-01-08 13:26:03', '2019-01-08 13:26:04', null, '2', '2019-01-08 13:24:48');

-- ----------------------------
-- View structure for t_view_notice_admin
-- ----------------------------
DROP VIEW IF EXISTS `t_view_notice_admin`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `t_view_notice_admin` AS (select `n`.`notice_id` AS `notice_id`,`n`.`title` AS `title`,`n`.`top` AS `top`,`n`.`top_time` AS `top_time`,`n`.`deleted` AS `deleted`,`n`.`activated` AS `activated`,`n`.`publish_id` AS `publish_id`,`n`.`create_date` AS `create_date`,`n`.`update_date` AS `update_date`,`a`.`account` AS `account` from (`t_notice` `n` join `t_admin` `a`) where (`a`.`admin_id` = `n`.`publish_id`)) ;

-- ----------------------------
-- Procedure structure for selectFeedBackImageUserProvinceVos
-- ----------------------------
DROP PROCEDURE IF EXISTS `selectFeedBackImageUserProvinceVos`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `selectFeedBackImageUserProvinceVos`(IN `startNum` int,IN `pageSize` int,IN `account` varchar(50),IN `realName` varchar(50),IN `mobile` varchar(50),IN `provinceCode` varchar(50),IN `feedBackDate` varchar(50))
BEGIN
	DECLARE sqlstring VARCHAR(100);

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for t_user_d
-- ----------------------------
DROP PROCEDURE IF EXISTS `t_user_d`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `t_user_d`(IN `userId` int)
BEGIN
	DECLARE age int DEFAULT 0;
	DECLARE name varchar(50);
	select name+"ce";
END
;;
DELIMITER ;
