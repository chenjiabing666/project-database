/*
Navicat MySQL Data Transfer

Source Server         : lifecrystal
Source Server Version : 50724
Source Host           : 139.196.90.124:3306
Source Database       : lifecrystal

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-01-07 13:45:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_about
-- ----------------------------
DROP TABLE IF EXISTS `t_about`;
CREATE TABLE `t_about` (
  `about_id` int(1) NOT NULL AUTO_INCREMENT,
  `web_address` varchar(128) DEFAULT NULL,
  `service_phone` varchar(20) DEFAULT NULL,
  `weixin` varchar(128) DEFAULT NULL,
  `mail` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_about
-- ----------------------------
INSERT INTO `t_about` VALUES ('1', 'www.lifecrystal.org', '4008-123-331', '安善延爱', 'asya2016@yeah.net');

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(32) DEFAULT NULL,
  `account` varchar(128) DEFAULT NULL COMMENT '账号',
  `password` varchar(32) DEFAULT NULL,
  `role_id` int(11) DEFAULT '2' COMMENT '角色',
  `activated` int(1) DEFAULT '2' COMMENT '登录状态  1 表示登录  2 未登录',
  `deleted` int(1) DEFAULT '1' COMMENT '是否删除  1 未删除  2 已删除或者注销',
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('51', '陈加兵', 'chenjiabing', '12345678', '2', '1', '1', '2018-11-02 09:57:26', '2018-11-02 09:57:02', '全能王');
INSERT INTO `t_admin` VALUES ('54', '韩张', 'qson780012', '123456', '2', '1', '1', '2018-11-09 10:10:31', '2018-11-09 10:10:45', '管理员');
INSERT INTO `t_admin` VALUES ('57', '张三', 'test04', '123456', '2', '1', '1', '2018-11-12 15:37:03', '2018-11-12 15:53:56', '墓地管理员');
INSERT INTO `t_admin` VALUES ('58', '范捷', 'fanjie', '12345678', '2', '1', '1', '2018-11-12 16:55:13', '2018-11-12 16:55:23', '超级管理员');
INSERT INTO `t_admin` VALUES ('59', '差', 'test01', '123456', '2', '1', '1', '2018-11-12 17:02:37', '2018-11-12 17:02:47', '墓地参数的管理员');
INSERT INTO `t_admin` VALUES ('60', 'han', 'test02', '123456', '2', '2', '1', '2018-11-14 18:35:49', null, '管理员');
INSERT INTO `t_admin` VALUES ('61', '张三', 'zhangsan', '12345678', '2', '1', '1', '2018-11-14 21:46:30', '2018-11-14 21:46:48', '墓地苏州园林的管理员');
INSERT INTO `t_admin` VALUES ('62', '审核员', 'examiner', '123456', '2', '1', '1', '2018-11-28 11:04:14', '2018-11-28 11:06:00', '审核员');
INSERT INTO `t_admin` VALUES ('63', '海阔天空', 'xuejiawei', '12345678', '2', '1', '1', '2019-01-07 13:30:29', '2019-01-07 13:30:40', '超级管理员');

-- ----------------------------
-- Table structure for t_admin_authority
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_authority`;
CREATE TABLE `t_admin_authority` (
  `admin_id` int(11) NOT NULL COMMENT '管理员id',
  `anthoritys` varchar(255) DEFAULT NULL COMMENT '权限：多个权限用英文分号隔开',
  `create_id` int(11) DEFAULT NULL COMMENT '创建者管理员id',
  `update_id` int(11) DEFAULT NULL COMMENT '更新者管理员id',
  `activated` int(1) DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin_authority
-- ----------------------------
INSERT INTO `t_admin_authority` VALUES ('1', '1,2,3,36,37,38,39,40,41,42,43,44,45,46,47,48,48,49', '1', null, null, null, '2018-07-13 10:20:40', null);
INSERT INTO `t_admin_authority` VALUES ('11', '1,2,3,4,5,13,19,20,21,22,', '1', null, null, null, '2018-04-14 14:44:58', null);
INSERT INTO `t_admin_authority` VALUES ('12', '3,4,5,9,10,11,12,14,15,16,17,18,19,20,21,22,24,25,', '1', null, null, null, '2018-04-23 15:48:47', null);
INSERT INTO `t_admin_authority` VALUES ('13', '1,2,3,4,5,6,7,8,23,9,10,11,12,13,26,14,15,16,17,18,19,20,21,22,24,25,', '1', null, null, null, null, null);
INSERT INTO `t_admin_authority` VALUES ('14', '3,4,5,9,10,11,12,14,15,16,17,18,19,20,21,22,24,25,', '1', null, null, null, null, null);
INSERT INTO `t_admin_authority` VALUES ('15', '1,2,3,4,5,6,7,8,23,9,10,11,12,13,26,14,16,17,18,19,20,21,22,24,25,', '1', null, null, null, '2018-04-23 16:25:32', null);
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
INSERT INTO `t_admin_authority` VALUES ('44', '47,48,55,56,57,58,59,60,61,62,', null, null, null, null, null, null);
INSERT INTO `t_admin_authority` VALUES ('45', '1,2,3,36,49,50,37,38,51,39,40,41,42,43,44,45,46,52,47,48,55,56,57,58,59,60,61,62,', null, null, null, null, null, null);
INSERT INTO `t_admin_authority` VALUES ('46', '59,60,61,', null, null, null, null, null, '2018-09-29 17:25:59');
INSERT INTO `t_admin_authority` VALUES ('47', '39,40,41,42,', null, null, null, null, null, null);
INSERT INTO `t_admin_authority` VALUES ('48', '1,2,3,36,49,50,37,38,51,39,40,41,42,43,44,45,46,52,47,48,55,56,', null, null, null, null, null, null);
INSERT INTO `t_admin_authority` VALUES ('49', '1,2,3,36,49,50,37,38,51,39,40,41,42,43,44,45,46,52,47,48,55,56,57,58,59,60,61,62,', null, null, null, null, null, null);
INSERT INTO `t_admin_authority` VALUES ('50', '1,2,3,36,49,50,37,38,51,39,40,41,42,43,44,45,46,52,47,48,55,56,57,58,59,60,61,62,63,64,', null, null, null, null, null, null);
INSERT INTO `t_admin_authority` VALUES ('51', '1,2,3,36,49,50,37,38,51,39,40,41,42,43,44,45,46,52,47,48,55,56,57,58,59,60,61,62,63,64,', null, null, null, null, null, null);
INSERT INTO `t_admin_authority` VALUES ('52', '59,60,61,', null, null, null, null, null, '2018-11-02 14:36:25');
INSERT INTO `t_admin_authority` VALUES ('53', '59,60,61,', null, null, null, null, null, '2018-11-02 14:40:22');
INSERT INTO `t_admin_authority` VALUES ('54', '1,2,3,36,49,50,37,38,51,39,40,41,42,43,44,45,46,52,47,48,55,56,57,58,59,60,61,62,63,64,', null, null, null, null, null, null);
INSERT INTO `t_admin_authority` VALUES ('55', '1,2,', null, null, null, null, null, null);
INSERT INTO `t_admin_authority` VALUES ('56', '1,2,3,36,49,50,', null, null, null, null, null, null);
INSERT INTO `t_admin_authority` VALUES ('57', '59,60,61,', null, null, null, null, null, '2018-11-12 15:37:03');
INSERT INTO `t_admin_authority` VALUES ('58', '1,2,3,36,49,50,37,38,51,39,40,41,42,43,44,45,46,52,47,48,55,56,57,58,59,60,61,62,63,64,', null, null, null, null, null, null);
INSERT INTO `t_admin_authority` VALUES ('59', '59,60,61,', null, null, null, null, null, '2018-11-12 17:02:37');
INSERT INTO `t_admin_authority` VALUES ('60', '1,2,3,36,49,50,37,38,51,39,40,41,42,43,44,45,46,52,47,48,55,56,57,58,59,60,61,62,63,64,', null, null, null, null, null, null);
INSERT INTO `t_admin_authority` VALUES ('61', '59,60,61,', null, null, null, null, null, '2018-11-14 21:46:30');
INSERT INTO `t_admin_authority` VALUES ('62', '39,40,41,42,43,44,45,46,', null, null, null, null, null, null);
INSERT INTO `t_admin_authority` VALUES ('63', '1,2,3,36,49,50,37,38,51,39,40,41,42,43,44,45,46,52,47,48,55,56,57,58,59,60,61,62,63,64,', null, null, null, null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_apk_version
-- ----------------------------
INSERT INTO `t_apk_version` VALUES ('1', '1', 'V1.0.0', '1', 'http://www.lifecrystal.cn/app-release.apk', '0');
INSERT INTO `t_apk_version` VALUES ('2', '1', 'V1.1', '2', 'https://itunes.apple.com/cn/app/%E7%94%9F%E5%91%BD%E6%99%B6%E7%9F%B3/id1441078811?mt=8', '1');
INSERT INTO `t_apk_version` VALUES ('3', '2', 'V1.1', '1', 'http://www.lifecrystal.cn/app-release.apk', '0');
INSERT INTO `t_apk_version` VALUES ('4', '2', 'V1.1.0', '1', 'http://www.lifecrystal.cn/app-release.apk', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_authority
-- ----------------------------
INSERT INTO `t_authority` VALUES ('1', '管理员列表', 'admin-list', '1', '2', '管理员模块', null, null, '2018-04-12 15:08:48', null);
INSERT INTO `t_authority` VALUES ('2', '添加管理员', 'admin-add', '1', '2', '管理员模块', null, null, '2018-04-12 15:08:50', null);
INSERT INTO `t_authority` VALUES ('3', '用户列表', 'user-list', '2', null, '用户模块', null, null, '2018-04-12 15:08:56', null);
INSERT INTO `t_authority` VALUES ('36', '添加用户', 'user-add', null, null, '添加用户', null, null, '2018-07-13 10:07:38', '2018-07-13 10:07:24');
INSERT INTO `t_authority` VALUES ('37', '逝者列表', 'decedent-list', null, null, '逝者列表', null, null, '2018-07-13 10:08:28', null);
INSERT INTO `t_authority` VALUES ('38', '添加逝者', 'decedent-add', null, null, '添加逝者', null, null, null, null);
INSERT INTO `t_authority` VALUES ('39', '全部照片', 'image-all', null, null, '显示全部列表', null, null, null, null);
INSERT INTO `t_authority` VALUES ('40', '待审核照片', 'image-wait', null, null, '待审核照片', null, null, null, null);
INSERT INTO `t_authority` VALUES ('41', '已通过照片', 'image-pass', null, null, '已通过照片', null, null, null, null);
INSERT INTO `t_authority` VALUES ('42', '已拒绝照片', 'image-refuse', null, null, '已拒绝照片', null, null, '2018-07-13 10:13:01', null);
INSERT INTO `t_authority` VALUES ('43', '全部视频', 'video-all', null, null, '全部视频', null, null, '2018-07-13 10:14:12', null);
INSERT INTO `t_authority` VALUES ('44', '待审核视频', 'video-wait', null, null, '待审核视频', null, null, null, null);
INSERT INTO `t_authority` VALUES ('45', '已通过视频', 'video-pass', null, null, '已通过视频', null, null, null, null);
INSERT INTO `t_authority` VALUES ('46', '已拒绝视频', 'video-refuse', null, null, '已拒绝视频', null, null, '2018-07-13 10:15:56', null);
INSERT INTO `t_authority` VALUES ('47', '广告列表', 'banner-list', null, null, '广告列表', null, null, null, null);
INSERT INTO `t_authority` VALUES ('48', '添加广告', 'banner-add', null, null, '添加广告', null, null, '2018-07-13 10:16:47', null);
INSERT INTO `t_authority` VALUES ('49', '用户详情', 'user-detail', null, null, '用户详情', null, null, null, null);
INSERT INTO `t_authority` VALUES ('50', '重置密码', 'user-restPassword', null, null, '重置密码', null, null, null, null);
INSERT INTO `t_authority` VALUES ('51', '逝者详情', 'decedent-detail', null, null, '逝者详情', null, null, null, null);
INSERT INTO `t_authority` VALUES ('52', '系统参数设置', 'setting-change', null, null, '系统参数设置', null, null, null, null);
INSERT INTO `t_authority` VALUES ('53', '墓地列表', 'taskKind-list', null, null, null, null, null, null, null);
INSERT INTO `t_authority` VALUES ('54', '添加墓地', 'taskKind-add', null, null, null, null, null, '2018-09-14 16:36:35', null);
INSERT INTO `t_authority` VALUES ('55', '大屏广告列表', 'screen-list', null, null, null, null, null, null, null);
INSERT INTO `t_authority` VALUES ('56', '新增大屏广告', 'scceen_add', null, null, null, null, null, null, null);
INSERT INTO `t_authority` VALUES ('57', '墓地列表', 'cemetery-list', null, null, null, null, null, null, null);
INSERT INTO `t_authority` VALUES ('58', '新建墓地', 'cemetery-new', null, null, null, null, null, null, null);
INSERT INTO `t_authority` VALUES ('59', '商品列表', 'goods-list', null, null, null, null, null, null, null);
INSERT INTO `t_authority` VALUES ('60', '新增商品', 'goods-add', null, null, null, null, null, null, null);
INSERT INTO `t_authority` VALUES ('61', '订单列表', 'indent-list', null, null, null, null, null, null, null);
INSERT INTO `t_authority` VALUES ('62', '对账单列表', 'bill-list', null, null, null, null, null, null, null);
INSERT INTO `t_authority` VALUES ('63', '板子列表', 'report-list', null, null, null, null, null, null, null);
INSERT INTO `t_authority` VALUES ('64', '新增板子', 'report-add', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for t_banner
-- ----------------------------
DROP TABLE IF EXISTS `t_banner`;
CREATE TABLE `t_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_type` int(1) DEFAULT '1' COMMENT '类型：2视频，1 图片',
  `banner_name` varchar(128) DEFAULT NULL COMMENT '广告名称',
  `banner_location` int(1) DEFAULT NULL COMMENT '广告位置 1表示app首页轮播',
  `image_url` varchar(255) DEFAULT '' COMMENT '图片URL',
  `start_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '开始时间',
  `end_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '结束时间',
  `sort_index` int(11) DEFAULT NULL COMMENT '排序',
  `video_url` varchar(255) DEFAULT '' COMMENT '视频地址',
  `click_count` int(8) DEFAULT '0' COMMENT '点击次数',
  `link_url` varchar(255) DEFAULT NULL COMMENT '链接  ',
  `top` int(1) DEFAULT NULL COMMENT '1 置顶',
  `top_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `description` varchar(255) DEFAULT NULL COMMENT '介绍',
  `activated` int(1) DEFAULT '1' COMMENT '1 上线 2 下线',
  `deleted` int(1) DEFAULT '1' COMMENT '1 未删除 2 已删除',
  `created_date` datetime DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_banner
-- ----------------------------
INSERT INTO `t_banner` VALUES ('119', '1', '生命晶石', '1', 'http://www.lifecrystal.cn/lifecrystal-upload/banner-image/1541668857127微信图片_20181108172040.jpg', '2018-12-04 13:41:56', null, null, '', '0', 'http://www.lifecrystal.org/', null, '2018-12-04 13:41:56', null, '1', '1', '2018-11-08 17:20:57', '2018-12-04 13:41:56');
INSERT INTO `t_banner` VALUES ('120', '1', '生命晶石', '1', 'http://www.lifecrystal.cn/lifecrystal-upload/banner-image/1541668864664微信图片_20181108172046.jpg', '2018-12-04 13:43:49', null, null, '', '0', 'http://www.lifecrystal.org/', '1', '2018-12-04 13:43:49', null, '1', '1', '2018-11-08 17:21:05', '2018-12-04 13:43:49');
INSERT INTO `t_banner` VALUES ('121', '1', '生命晶石', '1', 'http://www.lifecrystal.cn/lifecrystal-upload/banner-image/1541668870255微信图片_20181108172050.jpg', '2018-12-04 13:41:56', null, null, '', '0', 'http://www.lifecrystal.org/', null, '2018-12-04 13:41:56', null, '1', '1', '2018-11-08 17:21:10', '2018-12-04 13:41:56');

-- ----------------------------
-- Table structure for t_board
-- ----------------------------
DROP TABLE IF EXISTS `t_board`;
CREATE TABLE `t_board` (
  `board_id` int(11) NOT NULL AUTO_INCREMENT,
  `board_number` varchar(255) DEFAULT NULL COMMENT '设备Id',
  `number` varchar(255) DEFAULT NULL COMMENT '板子的编号',
  `sort_index` int(11) DEFAULT NULL COMMENT '排序编号',
  `domain_id` int(11) DEFAULT NULL COMMENT '区域Id',
  `light_status` varchar(1000) DEFAULT NULL COMMENT '板子上全部灯的状态',
  `activated` int(1) DEFAULT '0',
  `deleted` int(1) DEFAULT '1',
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`board_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_board
-- ----------------------------
INSERT INTO `t_board` VALUES ('41', '0067-0074-0089-0050', 'C0506', '4', '11', '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', '0', '1', '2018-10-20 14:15:00', '2018-10-23 14:11:58');
INSERT INTO `t_board` VALUES ('45', '0067-0074-0089-0040', 'c0203', '2', '11', '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', '0', '1', '2018-10-25 12:54:26', '2018-11-17 13:35:10');
INSERT INTO `t_board` VALUES ('46', '0067-0074-0089-0010', 'c0809', '3', '11', '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', '0', '1', '2018-10-25 12:58:33', '2018-10-25 13:02:02');
INSERT INTO `t_board` VALUES ('47', '0067-0074-0089-0020', 'c1112', '1', '11', '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', '0', '1', '2018-10-25 13:02:38', '2018-10-25 13:15:51');
INSERT INTO `t_board` VALUES ('54', 'D300-1200-E015-5303', 'C0102', '1', '12', '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', '0', '1', '2018-11-12 22:04:39', '2018-11-12 22:07:12');
INSERT INTO `t_board` VALUES ('55', 'A100-2200-5074-3333', 'C0304', '2', '12', '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', '0', '1', '2018-11-12 22:04:56', '2018-11-17 13:41:13');
INSERT INTO `t_board` VALUES ('56', '1200-5300-4115-4323', 'C0506', '3', '12', '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', '0', '1', '2018-11-12 22:05:15', '2018-11-17 14:03:49');
INSERT INTO `t_board` VALUES ('57', '5200-C400-3015-3333', 'C0708', '4', '12', '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', '0', '1', '2018-11-12 22:05:32', '2018-11-17 13:41:19');
INSERT INTO `t_board` VALUES ('58', '4200-9300-C015-5303', 'C0910', '5', '12', '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', '0', '1', '2018-11-12 22:05:46', '2018-11-12 22:16:37');
INSERT INTO `t_board` VALUES ('60', '9100-9200-6074-3333', 'C1112', '6', '12', '0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0', '0', '1', '2018-12-20 15:53:20', '2018-12-21 09:49:34');

-- ----------------------------
-- Table structure for t_cemetery
-- ----------------------------
DROP TABLE IF EXISTS `t_cemetery`;
CREATE TABLE `t_cemetery` (
  `cemetery_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '墓地Id',
  `cemetery_name` varchar(30) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL COMMENT '管理员Id',
  `contact_name` varchar(50) DEFAULT NULL,
  `contact_mobile` varchar(50) DEFAULT NULL,
  `total` int(4) DEFAULT '0' COMMENT '墓地区域的总数',
  `activated` int(1) DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cemetery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cemetery
-- ----------------------------
INSERT INTO `t_cemetery` VALUES ('3', '上海汇龙园园陵有限公司', '57', '张三', '18459191', '1', null, null, '2018-08-20 13:19:01', '2018-11-12 15:37:03');

-- ----------------------------
-- Table structure for t_cemetery_domain
-- ----------------------------
DROP TABLE IF EXISTS `t_cemetery_domain`;
CREATE TABLE `t_cemetery_domain` (
  `cemetery_domain_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '墓地的区域',
  `cemetery_id` int(11) DEFAULT NULL COMMENT ' 墓地Id',
  `domain_name` varchar(50) DEFAULT NULL COMMENT '名称',
  `screen_num` varchar(128) DEFAULT NULL COMMENT '大屏的设备号',
  `camera_num` varchar(128) DEFAULT NULL COMMENT '摄像头的设备号',
  `push_url` varchar(255) DEFAULT NULL COMMENT '摄像头账号',
  `signalling_account` varchar(255) DEFAULT NULL COMMENT '大屏的url',
  `total` int(5) DEFAULT NULL COMMENT '格子的总数',
  `create_date` datetime DEFAULT NULL,
  `activated` int(1) DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cemetery_domain_id`),
  KEY `index` (`cemetery_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cemetery_domain
-- ----------------------------
INSERT INTO `t_cemetery_domain` VALUES ('12', '3', 'C柜', 'lfsa000011', 'rtmp://play.lifecrystal.cn/live/35857_9999999', 'rtmp://play.lifecrystal.cn/live/35857_9999999', 'lfsa000011', '240', '2018-11-01 16:28:59', null, null, '2018-12-14 13:55:37');
INSERT INTO `t_cemetery_domain` VALUES ('19', '3', '藏晶苑_2', 'lfsa000012', 'rtmp://play.lifecrystal.cn/live/35857_6666666', 'rtmp://play.lifecrystal.cn/live/35857_6666666', 'lfsa000012', '40', '2018-11-07 13:13:49', null, null, '2018-12-14 13:57:17');

-- ----------------------------
-- Table structure for t_decedent
-- ----------------------------
DROP TABLE IF EXISTS `t_decedent`;
CREATE TABLE `t_decedent` (
  `decedent_id` int(11) NOT NULL AUTO_INCREMENT,
  `decedent_name` varchar(32) DEFAULT NULL COMMENT '逝者姓名',
  `id_card` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `icon` varchar(255) DEFAULT NULL COMMENT '逝者头像',
  `background` varchar(255) DEFAULT NULL COMMENT '背景照片',
  `decedent_gender` int(1) DEFAULT '3' COMMENT '性别:1男，2女 3 保密',
  `birth_day` varchar(32) DEFAULT NULL COMMENT '生日：“yyyy-MM-dd”',
  `death_date` varchar(32) DEFAULT NULL COMMENT '忌日',
  `introduction` text COMMENT '生平简介',
  `activated` int(1) DEFAULT NULL,
  `deleted` int(1) DEFAULT '1' COMMENT '0 表示已删除  1 表示未删除',
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`decedent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_decedent
-- ----------------------------
INSERT INTO `t_decedent` VALUES ('30', '风中g', '165165165', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-icon/154449149610220181211092455.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-background/154444079327020181210191951.jpg', '3', '1946-07-29', '2018-11-29', '牵挂是一根线，思念是一张网。牵挂是一根线，思念是一张网。牵挂是一根线，思念是一张网。牵挂是一根线，思念是一张网。牵挂是一根线，思念是一张网。牵挂是一根线，思念是一张网。牵挂是一根线，思念是一张网。牵挂是一根线，思念是一张网。牵挂是一根线，思念是一张网。牵挂是一根线，思念是一张网。牵挂是一根线，思念是一张网。牵挂是一根线，思念是一张网', null, '1', '2018-12-11 09:24:56', '2018-11-01 20:45:20');
INSERT INTO `t_decedent` VALUES ('31', 'dhdjdj！', '16516516516516', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-icon/154442531659220181210150151.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-background/154442528865320181210150128.jpg', '1', '2000-01-01', '2010-01-01', '1425hxjxnfnfnfnfnfncnfnfn决定减肥减肥减肥小惊喜经济学家大家春节放假放假休假匠心独具绝对经典小惊喜决定减肥就减肥小姐姐放假放假放假放假放假放假放假放假放假才能你春节放假仿佛就减肥春节放假放假放假放假才减肥减肥就减肥减肥春节放假放假放假放假春节放假放假放假放假春节放假放假的姐姐放假春节放假减肥减肥减肥减肥方能放假放假放假放假减肥放假放假放假放假减肥', null, '1', '2018-12-10 15:01:57', '2018-11-01 20:48:29');
INSERT INTO `t_decedent` VALUES ('32', '王二麻子', '23244245542', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-icon/154417634444920181207175223.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-background/1543043792243B612Kaji_20181024_140109_572.jpg', '1', '2017-03-06', '2018-10-24', null, null, '1', '2018-12-07 17:52:24', '2018-11-03 00:18:36');
INSERT INTO `t_decedent` VALUES ('33', '苟富贵', '324252324', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-icon/154449555966520181211103239.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-background/154449695964520181211105558.jpg', '1', '1951-07-10', '2018-08-07', '啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦', null, '1', '2018-12-11 10:56:00', '2018-11-03 00:19:09');
INSERT INTO `t_decedent` VALUES ('34', '李明', '051651234116541', null, null, '1', '2013-09-09', '2018-08-13', null, null, '1', '2018-12-10 14:18:31', '2018-11-07 13:15:03');
INSERT INTO `t_decedent` VALUES ('35', '哈哈', '320829199508012258', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-icon/154415073544020181207104535.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-background/154415101724820181207105017.jpg', '1', '2018-01-04', '2018-12-04', 'Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test Test', null, '1', '2018-12-07 10:50:17', '2018-11-12 22:01:33');
INSERT INTO `t_decedent` VALUES ('45', '杨鸿翔', null, null, null, '1', '', '', null, null, '1', '2018-11-24 12:24:29', '2018-11-13 15:38:56');
INSERT INTO `t_decedent` VALUES ('46', '董宝康', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 15:40:37');
INSERT INTO `t_decedent` VALUES ('47', '陆慧宝', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 15:41:11');
INSERT INTO `t_decedent` VALUES ('48', '袁茂荣', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 15:42:30');
INSERT INTO `t_decedent` VALUES ('49', '陈瑞生', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 15:43:00');
INSERT INTO `t_decedent` VALUES ('50', '邹志华', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 15:44:05');
INSERT INTO `t_decedent` VALUES ('51', '秦益未', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 15:45:52');
INSERT INTO `t_decedent` VALUES ('52', '李菁', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 15:46:12');
INSERT INTO `t_decedent` VALUES ('53', '张莉', null, null, null, '2', '1960-06-30', '2018-07-17', null, null, '1', '2018-12-28 06:53:52', '2018-11-13 15:46:49');
INSERT INTO `t_decedent` VALUES ('54', '吴远', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 15:47:13');
INSERT INTO `t_decedent` VALUES ('55', '朱东宣', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-background/1544324265714MYXJ_20160807064415_fast.jpg', '1', '', '', null, null, '1', '2018-12-09 10:57:46', '2018-11-13 15:47:33');
INSERT INTO `t_decedent` VALUES ('56', '朱龙标', null, null, null, '1', '1952-09-09', '2018-09-29', null, null, '1', '2018-12-22 10:08:24', '2018-11-13 15:47:51');
INSERT INTO `t_decedent` VALUES ('57', '王学留', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 15:48:24');
INSERT INTO `t_decedent` VALUES ('58', '邢和发', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 15:48:47');
INSERT INTO `t_decedent` VALUES ('59', '李合璧', null, null, null, '2', '', '', null, null, '1', '2018-11-25 10:15:18', '2018-11-13 15:49:17');
INSERT INTO `t_decedent` VALUES ('60', '谈伟安', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 15:49:40');
INSERT INTO `t_decedent` VALUES ('61', '管庆平', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 15:50:34');
INSERT INTO `t_decedent` VALUES ('62', '夏菊屏', null, null, null, '2', '', '2018-08-02', null, null, '1', '2018-12-25 22:38:45', '2018-11-13 15:50:57');
INSERT INTO `t_decedent` VALUES ('63', '严雄杰', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:03:22');
INSERT INTO `t_decedent` VALUES ('64', '齐孝龙', null, null, null, '1', '1949-08-16', '2018-06-27', null, null, '1', '2018-12-22 14:44:35', '2018-11-13 17:03:45');
INSERT INTO `t_decedent` VALUES ('65', '孙伟洁', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-background/1544926806107IMG_20170812_162818.jpg', '2', '1977-01-28', '2018-09-28', null, null, '1', '2018-12-16 10:20:12', '2018-11-13 17:04:11');
INSERT INTO `t_decedent` VALUES ('66', '陈福高', null, null, null, '1', '1931-01-20', '2018-01-10', '先父陈福高于1931年1月20日出生于上海漕河泾一个职员家庭。1947年毕业于上海光明中学后与祖父一起经商。1950年1月-1958年12月任原宝山县供销合作社干事组导股长职务。1959年1月-1983年12日任原宝山县百货公司总经理职务。1984年1月-1991年6月任杨浦区五角场综合贸易公司总经理职务。1991年7月1日退休。2018年1月10日,陈福高经医治无效,与世长辞,享年86岁。\n父亲一生忠厚善良,勤俭节约,谦虚谨慎,为人和蔼,与人为善。在他41年的工作期间,他都是兢兢业业,勤勤恳恳,任劳任怨。无论在什么岗位,他总是一心扑在工作上。敢于坚持原则,始终把党的工作放在第一位,尽心尽责,为社会做出了应有的贡献。\n在儿女们的心中,父亲的人格是那么的优秀。熟知的人都说父亲是个好人,是个一生问心无愧的好人,是一个实实在在、和善的大好人,他一生凡事都替别人着想,无论是对同事,还是对亲友、街坊邻里,他都是以一颗包容的心和一份宽广的胸怀去对待,从不与人争执,从不计较个人得失。父亲一生对别人慷慨大方,对自己却是那么吝啬。在生活上,始终是低标准,低要求,从不奢侈浪费!对待生活穷困的人,他又极尽同情,常常给他们以力所能及的帮助。他的性格和为人,深深地影响着和教育着我们。\n父亲一生养育了我们4个儿女,他用全部的生命撑起一个家,一个有着深爱着他的母亲与4个子女,一个融合着至爱亲朋又无限温馨的家。他是我们见到的最温柔、最和蔼的父亲,从我们有记忆开始,他从来没有打骂过我们,他善于从细微处关爱子女。我们在日常生活中有什么困难和要求,只要他知道,必定会尽心尽力地帮助我们,他乐意为我们做一切细碎的事情,一丝不苟,不怕麻烦。在我们成长的全部过程中,他总用慈父的心态默默地注视着支持着,言传身教,以他自己的表率作用牵引和启迪着我们的成长,教我们正直,教我们善良,赋予我们健全的人格和不断进取的精神,使我们在各自不同的工作岗位上都能兢兢业业,在为人处世上真诚无愧。\n父亲即使到了八十高龄视力模糊,他仍然坚持每日收听新闻,他的思维十分清晰、敏捷,对他自己一生所阅读的书籍是记忆犹新,一点儿也不逊色于年轻人。我们最亲爱的父亲!您和亲爱的母亲不但给了我们生命,还给了我们一个幸福的童年,给了我们温暖的家。今后我们会更好地照顾好母亲,使她健康长寿,安静祥和地欢度晚年生活。', null, '1', '2018-11-24 20:55:54', '2018-11-13 17:04:34');
INSERT INTO `t_decedent` VALUES ('67', '邓纯琪', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-background/154538019319320181221161633.jpg', '2', '1935-09-01', '2018-09-17', null, null, '1', '2018-12-21 16:18:08', '2018-11-13 17:04:52');
INSERT INTO `t_decedent` VALUES ('68', '潘文忠', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:05:22');
INSERT INTO `t_decedent` VALUES ('69', '生红宝', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:05:50');
INSERT INTO `t_decedent` VALUES ('70', '李秋芹', null, null, null, '2', '1941-12-24', '2018-06-18', null, null, '1', '2018-12-24 16:32:55', '2018-11-13 17:06:08');
INSERT INTO `t_decedent` VALUES ('71', '朱兴德', null, 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-icon/154544796719720181222110601.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-background/154544767091420181222110101.jpg', '1', '1946-04-19', '2018-12-22', null, null, '1', '2018-12-22 14:05:34', '2018-11-13 17:06:46');
INSERT INTO `t_decedent` VALUES ('72', '平关雄', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:07:15');
INSERT INTO `t_decedent` VALUES ('73', '蒋凤英', null, null, null, '2', '1934-06-30', '2010-06-19', null, null, '1', '2018-11-20 09:42:54', '2018-11-13 17:07:36');
INSERT INTO `t_decedent` VALUES ('74', '钱敏康', null, null, null, '1', '1954-07-15', '2016-08-28', null, null, '1', '2018-11-20 09:43:31', '2018-11-13 17:07:58');
INSERT INTO `t_decedent` VALUES ('76', '朱端成', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:08:44');
INSERT INTO `t_decedent` VALUES ('77', '胡魁群', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:09:22');
INSERT INTO `t_decedent` VALUES ('78', '沈春连', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:10:00');
INSERT INTO `t_decedent` VALUES ('79', '祝爱月', null, null, null, '2', '', '', null, null, '1', '2018-11-20 10:56:29', '2018-11-13 17:10:26');
INSERT INTO `t_decedent` VALUES ('80', '李琴梅', null, null, null, '2', '1932-12-08', '2018-10-04', null, null, '1', '2018-11-25 10:50:12', '2018-11-13 17:11:01');
INSERT INTO `t_decedent` VALUES ('81', '缪仁达', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:34:45');
INSERT INTO `t_decedent` VALUES ('82', '边萍珍', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:35:02');
INSERT INTO `t_decedent` VALUES ('83', '钱斐宏', null, 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-icon/1545711193056decedent_head.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-background/1545731023549wxid_4bb0v0mx19g622bg_.jpg', '2', '1947-12-17', '2017-07-22', null, null, '1', '2019-01-06 12:11:43', '2018-11-13 17:36:00');
INSERT INTO `t_decedent` VALUES ('84', '庄银财', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:36:18');
INSERT INTO `t_decedent` VALUES ('85', '李长富', null, null, null, '1', '1949-08-08', '2018-03-12', null, null, '1', '2018-11-20 10:10:13', '2018-11-13 17:36:39');
INSERT INTO `t_decedent` VALUES ('86', '蒋友芳', null, null, null, '1', '', '', null, null, '1', '2018-12-02 13:04:28', '2018-11-13 17:36:56');
INSERT INTO `t_decedent` VALUES ('87', '张梅芳', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:37:08');
INSERT INTO `t_decedent` VALUES ('89', '庄昌正', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:37:44');
INSERT INTO `t_decedent` VALUES ('90', '石顺利', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:38:30');
INSERT INTO `t_decedent` VALUES ('91', '俞品夫', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:38:45');
INSERT INTO `t_decedent` VALUES ('92', '戴贵宝', null, null, null, '2', '', '', null, null, '1', '2018-11-25 18:51:54', '2018-11-13 17:39:02');
INSERT INTO `t_decedent` VALUES ('93', '李金娣', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:39:23');
INSERT INTO `t_decedent` VALUES ('94', '叶建钟', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:39:43');
INSERT INTO `t_decedent` VALUES ('95', '吴小凡', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:40:02');
INSERT INTO `t_decedent` VALUES ('96', '胡翠香', null, null, null, '2', '', '', null, null, '1', '2018-12-09 09:39:51', '2018-11-13 17:40:42');
INSERT INTO `t_decedent` VALUES ('97', '马忠林', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:41:04');
INSERT INTO `t_decedent` VALUES ('98', '张元祥', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:41:26');
INSERT INTO `t_decedent` VALUES ('99', '茅汉生', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:41:57');
INSERT INTO `t_decedent` VALUES ('100', '周祥奎', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:43:09');
INSERT INTO `t_decedent` VALUES ('101', '车国珍', null, null, null, '2', '1929-01-29', '2013-09-12', null, null, '1', '2018-11-20 10:18:27', '2018-11-13 17:43:37');
INSERT INTO `t_decedent` VALUES ('102', '李志宏', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:44:14');
INSERT INTO `t_decedent` VALUES ('103', '陆卫平', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:47:18');
INSERT INTO `t_decedent` VALUES ('104', '赵长弟', null, null, null, '1', '1951-08-07', '2007-05-04', null, null, '1', '2019-01-05 14:25:28', '2018-11-13 17:47:57');
INSERT INTO `t_decedent` VALUES ('105', '周建华', null, null, null, '1', '1954-02-22', '2017-08-13', '父爱如山，爸爸，希望你能在此安好，长眠，你永远在我心中❤️', null, '1', '2018-11-21 00:07:55', '2018-11-13 17:48:32');
INSERT INTO `t_decedent` VALUES ('106', '瞿有容', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:48:53');
INSERT INTO `t_decedent` VALUES ('107', '李文芳', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:49:21');
INSERT INTO `t_decedent` VALUES ('108', '徐忠平', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:49:51');
INSERT INTO `t_decedent` VALUES ('109', '陆纯连', null, null, null, '1', '', '', null, null, '1', null, '2018-11-13 17:50:09');
INSERT INTO `t_decedent` VALUES ('110', '王锡根', null, null, null, '1', '', '', null, null, '1', null, '2018-11-14 16:27:56');
INSERT INTO `t_decedent` VALUES ('111', '俞小仙', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-background/1543644169542mmexport1538967585023.jpg', '2', '1946-07-02', '1980-09-22', null, null, '1', '2018-12-01 14:02:50', '2018-11-14 16:28:14');
INSERT INTO `t_decedent` VALUES ('112', '于海武', null, null, null, '1', '', '', null, null, '1', null, '2018-11-14 16:28:30');
INSERT INTO `t_decedent` VALUES ('113', '许金顺', null, null, null, '1', '1959-05-03', '2018-02-16', null, null, '1', '2018-12-31 12:01:04', '2018-11-14 16:28:55');
INSERT INTO `t_decedent` VALUES ('114', '俞神蛇', null, null, null, '1', '', '', null, null, '1', null, '2018-11-14 16:29:14');
INSERT INTO `t_decedent` VALUES ('115', '黄鸿琪', null, null, null, '1', '', '', null, null, '1', null, '2018-11-14 16:29:32');
INSERT INTO `t_decedent` VALUES ('116', '谢建军', null, null, null, '1', '', '', null, null, '1', null, '2018-11-14 16:30:03');
INSERT INTO `t_decedent` VALUES ('117', '陆瑞庆', null, null, null, '1', '', '', null, null, '1', '2018-12-09 09:36:10', '2018-11-14 16:30:43');
INSERT INTO `t_decedent` VALUES ('118', '侯德顺', null, null, null, '1', '', '', null, null, '1', null, '2018-11-14 16:31:02');
INSERT INTO `t_decedent` VALUES ('119', '孔禈', null, null, null, '2', '', '', null, null, '1', '2018-12-24 22:04:45', '2018-11-14 16:31:31');
INSERT INTO `t_decedent` VALUES ('120', '郭永樑', null, null, null, '1', '1949-06-29', '2018-05-28', null, null, '1', '2018-12-13 15:17:37', '2018-11-14 16:31:58');
INSERT INTO `t_decedent` VALUES ('121', '蒋天一', null, null, null, '1', '', '', null, null, '1', null, '2018-11-14 16:32:37');
INSERT INTO `t_decedent` VALUES ('122', '丁惠然', null, null, null, '1', '', '', null, null, '1', null, '2018-11-14 16:32:57');
INSERT INTO `t_decedent` VALUES ('123', '孙云五', null, null, null, '1', '1949-12-22', '2018-11-21', null, null, '1', '2018-11-21 10:56:20', '2018-11-14 16:33:17');
INSERT INTO `t_decedent` VALUES ('124', '孙鸿运', null, null, null, '1', '', '', null, null, '1', null, '2018-11-14 16:33:42');
INSERT INTO `t_decedent` VALUES ('125', '朱和平', null, null, null, '1', '', '', null, null, '1', null, '2018-11-14 16:34:05');
INSERT INTO `t_decedent` VALUES ('126', '庞苏海', null, null, null, '1', '', '', null, null, '1', null, '2018-11-14 16:35:22');
INSERT INTO `t_decedent` VALUES ('127', '冯学文', null, null, null, '1', '', '', null, null, '1', null, '2018-11-14 16:35:38');
INSERT INTO `t_decedent` VALUES ('128', '张美琴', null, null, null, '1', '', '', null, null, '1', null, '2018-11-14 16:35:54');
INSERT INTO `t_decedent` VALUES ('129', '陈万朝', null, null, null, '1', '', '', null, null, '1', null, '2018-11-14 16:36:14');
INSERT INTO `t_decedent` VALUES ('131', '吴爱凤', null, null, null, '2', '', '', null, null, '1', '2018-12-08 14:56:47', '2018-11-14 16:37:08');
INSERT INTO `t_decedent` VALUES ('132', '严伟霖', null, null, null, '1', '', '', null, null, '1', null, '2018-11-14 16:37:26');
INSERT INTO `t_decedent` VALUES ('133', '谢元璋', null, null, null, '1', '1950-02-03', '2018-04-09', null, null, '1', '2018-11-17 10:05:07', '2018-11-14 16:37:50');
INSERT INTO `t_decedent` VALUES ('134', '董约瑟', null, null, null, '1', '1948-03-12', '2018-04-30', null, null, '1', '2018-12-02 10:14:36', '2018-11-14 16:38:09');
INSERT INTO `t_decedent` VALUES ('135', '滕金岭', null, null, null, '1', '', '', null, null, '1', null, '2018-11-14 16:38:28');
INSERT INTO `t_decedent` VALUES ('136', '谭向明', null, null, null, '1', '1954-02-08', '2016-12-23', '爸爸，我们爱你！', null, '1', '2018-12-23 07:48:31', '2018-11-14 16:40:04');
INSERT INTO `t_decedent` VALUES ('137', '杜笔策', null, null, null, '1', '', '', null, null, '1', null, '2018-11-14 16:41:00');
INSERT INTO `t_decedent` VALUES ('140', '霍国祥', null, null, null, '1', '1971-07-17', '2018-04-08', null, null, '1', '2018-12-22 10:45:06', '2018-11-15 16:26:30');
INSERT INTO `t_decedent` VALUES ('141', '沃争祥', null, null, null, '1', '', '', null, null, '1', '2018-12-09 09:35:16', '2018-11-15 16:26:55');
INSERT INTO `t_decedent` VALUES ('142', '傅友龙', null, null, null, '1', '1962-02-17', '2016-07-07', null, null, '1', '2018-12-02 10:31:07', '2018-11-15 16:27:13');
INSERT INTO `t_decedent` VALUES ('143', '张荣才', null, null, null, '1', '', '', null, null, '1', null, '2018-11-15 16:27:36');
INSERT INTO `t_decedent` VALUES ('144', '刘梅花', null, null, null, '1', '', '', null, null, '1', null, '2018-11-15 16:27:54');
INSERT INTO `t_decedent` VALUES ('145', '吴建华', null, null, null, '1', '', '', null, null, '1', null, '2018-11-15 16:28:22');
INSERT INTO `t_decedent` VALUES ('146', '戴龙根', null, null, null, '1', '1953-08-30', '2018-09-12', null, null, '1', '2018-11-25 10:56:08', '2018-11-15 16:29:37');
INSERT INTO `t_decedent` VALUES ('147', '朱金富', null, null, null, '1', '', '', null, null, '1', null, '2018-11-15 16:29:55');
INSERT INTO `t_decedent` VALUES ('148', '王家明', null, null, null, '1', '1951-09-13', '2017-10-19', null, null, '1', '2018-12-23 11:02:32', '2018-11-15 16:30:11');
INSERT INTO `t_decedent` VALUES ('149', '宋祖铭', null, null, null, '1', '', '', null, null, '1', null, '2018-11-15 16:30:28');
INSERT INTO `t_decedent` VALUES ('151', '余荣声', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-background/1543645913277IMG_20181201_070743.jpg', '1', '', '', null, null, '1', '2018-12-01 14:31:53', '2018-11-15 16:31:02');
INSERT INTO `t_decedent` VALUES ('153', '樊沛芳', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-background/154546727662020181222162756.jpg', '2', '1938-11-08', '2018-07-31', null, null, '1', '2018-12-22 16:27:57', '2018-11-15 16:31:53');
INSERT INTO `t_decedent` VALUES ('154', '宋丽霞', null, null, null, '1', '', '', null, null, '1', null, '2018-11-15 16:32:13');
INSERT INTO `t_decedent` VALUES ('155', '李志山', null, null, null, '1', '', '', null, null, '1', null, '2018-11-15 16:32:31');
INSERT INTO `t_decedent` VALUES ('156', '谷昭国', null, null, null, '1', '', '', null, null, '1', null, '2018-11-15 16:32:47');
INSERT INTO `t_decedent` VALUES ('157', '徐文浩', null, null, null, '1', '1941-05-30', '2013-10-08', null, null, '1', '2018-12-09 17:05:52', '2018-11-15 16:33:03');
INSERT INTO `t_decedent` VALUES ('158', '周志江', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-background/1543645672681IMG_20150321_130920.jpg', '1', '1954-08-06', '2018-08-27', null, null, '1', '2018-12-01 14:27:56', '2018-11-15 16:33:41');
INSERT INTO `t_decedent` VALUES ('159', '孙兆震', null, null, null, '1', '1949-02-11', '2018-09-12', null, null, '1', '2018-11-24 14:07:08', '2018-11-15 16:33:57');
INSERT INTO `t_decedent` VALUES ('160', '朱高峰', null, null, null, '1', '1962-05-12', '2018-05-08', null, null, '1', '2018-12-09 09:44:16', '2018-11-15 16:34:25');
INSERT INTO `t_decedent` VALUES ('161', '郁虹', null, null, null, '1', '', '', null, null, '1', null, '2018-11-15 16:34:46');
INSERT INTO `t_decedent` VALUES ('162', '曾毅', null, null, null, '1', '', '', null, null, '1', null, '2018-11-15 16:35:09');
INSERT INTO `t_decedent` VALUES ('163', '陶凤英', null, null, null, '1', '', '', null, null, '1', null, '2018-11-15 16:35:33');
INSERT INTO `t_decedent` VALUES ('164', '黄荣芳', null, null, null, '1', '', '', null, null, '1', null, '2018-11-15 16:35:52');
INSERT INTO `t_decedent` VALUES ('165', '张颖文', null, null, null, '1', '', '', null, null, '1', null, '2018-11-15 16:36:14');
INSERT INTO `t_decedent` VALUES ('166', '周照英', null, null, null, '2', '', '', null, null, '1', '2018-11-24 14:43:31', '2018-11-15 16:36:34');
INSERT INTO `t_decedent` VALUES ('167', '陈爱素', null, null, null, '2', '1965-12-09', '2017-12-09', null, null, '1', '2018-12-09 09:41:13', '2018-11-15 16:36:51');
INSERT INTO `t_decedent` VALUES ('168', '陆小平', null, null, null, '1', '', '', null, null, '1', null, '2018-11-15 16:37:09');
INSERT INTO `t_decedent` VALUES ('169', '钱晓霞', null, null, null, '2', '', '', null, null, '1', '2018-12-08 14:45:31', '2018-11-15 17:04:18');
INSERT INTO `t_decedent` VALUES ('170', '周雯', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-background/154520573186420181219154851.jpg', '2', '1983-06-12', '2016-12-02', null, null, '1', '2018-12-19 15:48:52', '2018-11-15 17:04:31');
INSERT INTO `t_decedent` VALUES ('172', '王国强', null, null, null, '1', '', '', null, null, '1', null, '2018-11-15 17:05:03');
INSERT INTO `t_decedent` VALUES ('173', '朱金生', null, null, null, '1', '', '', null, null, '1', null, '2018-11-15 17:05:18');
INSERT INTO `t_decedent` VALUES ('174', '盛闰深', null, null, null, '1', '', '', null, null, '1', '2018-11-25 17:33:48', '2018-11-15 17:05:35');
INSERT INTO `t_decedent` VALUES ('175', '顾慧华', null, null, null, '2', '', '', null, null, '1', '2018-12-03 13:29:38', '2018-11-15 17:05:51');
INSERT INTO `t_decedent` VALUES ('176', '罗淑贤', null, null, null, '1', '', '', null, null, '1', null, '2018-11-15 17:06:14');
INSERT INTO `t_decedent` VALUES ('177', '王正堂', null, null, null, '1', '', '', null, null, '1', null, '2018-11-15 17:09:48');
INSERT INTO `t_decedent` VALUES ('178', '顾赟灵', null, null, null, '1', '', '', '白狐', null, '1', '2018-12-01 15:47:00', '2018-11-16 16:37:30');
INSERT INTO `t_decedent` VALUES ('179', '朱美华', null, null, null, '1', '', '', null, null, '1', null, '2018-11-16 16:37:49');
INSERT INTO `t_decedent` VALUES ('180', '杨又献', null, null, null, '1', '', '', null, null, '1', null, '2018-11-16 16:38:05');
INSERT INTO `t_decedent` VALUES ('181', '刘倬恒', null, null, null, '1', '', '', null, null, '1', null, '2018-11-17 02:56:28');
INSERT INTO `t_decedent` VALUES ('182', '刘应国', null, null, null, '1', '', '', null, null, '1', null, '2018-11-17 21:42:29');
INSERT INTO `t_decedent` VALUES ('183', '李华生', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-background/154639864575220190102111045.jpg', '1', '1936-04-01', '2018-06-12', null, null, '1', '2019-01-02 11:10:46', '2018-11-17 21:42:50');
INSERT INTO `t_decedent` VALUES ('184', '王莉妹', null, null, null, '2', '1944-12-22', '2018-06-19', null, null, '1', '2018-12-01 14:32:17', '2018-11-17 21:43:06');
INSERT INTO `t_decedent` VALUES ('185', '高建', null, null, null, '1', '', '', null, null, '1', null, '2018-11-17 21:43:23');
INSERT INTO `t_decedent` VALUES ('186', '丁尚毅', null, null, null, '1', '', '', null, null, '1', null, '2018-11-17 21:43:38');
INSERT INTO `t_decedent` VALUES ('187', '张敏伟', null, null, null, '1', '', '', null, null, '1', null, '2018-11-17 21:43:52');
INSERT INTO `t_decedent` VALUES ('188', '俞梅川', null, null, null, '2', '1942-03-05', '2018-07-15', null, null, '1', '2018-12-22 11:13:29', '2018-11-17 21:44:08');
INSERT INTO `t_decedent` VALUES ('189', '何鸿泉', null, null, null, '1', '', '', null, null, '1', null, '2018-11-17 21:44:23');
INSERT INTO `t_decedent` VALUES ('190', '何明', null, null, null, '1', '', '', null, null, '1', null, '2018-11-17 21:44:40');
INSERT INTO `t_decedent` VALUES ('191', '徐正源', null, null, null, '1', '', '', null, null, '1', null, '2018-11-17 21:44:55');
INSERT INTO `t_decedent` VALUES ('192', '张锦明', null, null, null, '1', '', '', null, null, '1', null, '2018-11-17 21:45:17');
INSERT INTO `t_decedent` VALUES ('193', '陈怡秋', null, null, null, '1', '', '', null, null, '1', null, '2018-11-17 21:45:33');
INSERT INTO `t_decedent` VALUES ('194', '张雪纯', null, null, null, '1', '', '', null, null, '1', null, '2018-11-19 10:59:40');
INSERT INTO `t_decedent` VALUES ('195', '王卫东', null, null, null, '1', '', '', null, null, '1', null, '2018-11-19 10:59:53');
INSERT INTO `t_decedent` VALUES ('196', '朱述庆', null, null, null, '1', '', '', null, null, '1', null, '2018-11-19 11:00:08');
INSERT INTO `t_decedent` VALUES ('197', '罗根南', null, null, null, '2', '', '', null, null, '1', '2018-12-01 14:02:10', '2018-11-19 11:00:26');
INSERT INTO `t_decedent` VALUES ('198', '徐能智', null, null, null, '1', '1937-08-01', '2018-04-08', null, null, '1', '2018-12-08 13:39:15', '2018-11-19 11:00:41');
INSERT INTO `t_decedent` VALUES ('199', '汤增明', null, null, null, '1', '', '', null, null, '1', null, '2018-11-19 11:00:58');
INSERT INTO `t_decedent` VALUES ('200', '陈淑珍', null, null, null, '1', '', '', null, null, '1', null, '2018-11-19 11:01:16');
INSERT INTO `t_decedent` VALUES ('201', '王遵彤', null, null, null, '1', '', '', null, null, '1', null, '2018-11-19 11:01:32');
INSERT INTO `t_decedent` VALUES ('202', '李一鸣', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-background/1543127370027IMG_20181125_141503.jpg', '1', '', '', null, null, '1', '2018-11-25 14:29:30', '2018-11-19 11:01:59');
INSERT INTO `t_decedent` VALUES ('203', '韩占元', null, null, null, '1', '', '', null, null, '1', null, '2018-11-19 11:02:18');
INSERT INTO `t_decedent` VALUES ('204', '曾敏', null, null, null, '1', '', '', null, null, '1', null, '2018-11-19 11:02:39');
INSERT INTO `t_decedent` VALUES ('205', '彭运华', null, null, null, '1', '', '', null, null, '1', null, '2018-11-19 11:03:00');
INSERT INTO `t_decedent` VALUES ('206', '吴柏长', null, null, null, '1', '', '', null, null, '1', null, '2018-11-19 11:06:39');
INSERT INTO `t_decedent` VALUES ('208', '陈小曼', null, null, null, '2', '', '', null, null, '1', '2018-11-28 20:56:06', '2018-11-19 13:33:16');
INSERT INTO `t_decedent` VALUES ('209', '王豪雄', null, null, null, '1', '', '', null, null, '1', null, '2018-11-19 16:51:24');
INSERT INTO `t_decedent` VALUES ('210', '周畏', null, null, null, '1', '1967-12-09', '2018-11-09', null, null, '1', '2018-12-09 09:38:11', '2018-11-19 16:51:47');
INSERT INTO `t_decedent` VALUES ('211', '朱根生', null, null, null, '1', '1950-05-14', '2018-12-21', null, null, '1', '2018-12-21 10:21:45', '2018-11-19 16:54:39');
INSERT INTO `t_decedent` VALUES ('213', '李菊宝', null, null, null, '1', '', '', null, null, '1', null, '2018-11-19 17:03:04');
INSERT INTO `t_decedent` VALUES ('214', '陈复兴', null, null, null, '1', '', '', null, null, '1', null, '2018-11-20 23:38:49');
INSERT INTO `t_decedent` VALUES ('215', '郑枫', null, null, null, '1', '', '', null, null, '1', null, '2018-11-20 23:39:07');
INSERT INTO `t_decedent` VALUES ('216', '诸国雯', null, null, null, '1', '', '', null, null, '1', null, '2018-11-20 23:39:22');
INSERT INTO `t_decedent` VALUES ('217', '沈金观', null, null, null, '1', '', '', null, null, '1', null, '2018-11-21 15:35:01');
INSERT INTO `t_decedent` VALUES ('219', '周长林', null, null, null, '1', '', '', null, null, '1', null, '2018-11-22 17:38:41');
INSERT INTO `t_decedent` VALUES ('221', '魏璎珞', null, 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-icon/1545190873042decedent_head.jpg', null, '2', '', '', null, null, '1', '2018-12-19 11:41:13', '2018-11-26 13:37:32');
INSERT INTO `t_decedent` VALUES ('222', '杨建霞', null, null, null, '2', '1956-08-31', '2018-04-23', null, null, '1', '2018-12-04 11:52:57', '2018-11-29 16:22:24');
INSERT INTO `t_decedent` VALUES ('223', '林旭日', null, null, null, '1', '', '', null, null, '1', null, '2018-11-29 16:36:28');
INSERT INTO `t_decedent` VALUES ('224', '李兔麟', null, null, null, '1', '', '', null, null, '1', null, '2018-11-29 16:38:54');
INSERT INTO `t_decedent` VALUES ('225', '陈伟', null, null, null, '1', '', '', null, null, '1', null, '2018-11-29 16:41:11');
INSERT INTO `t_decedent` VALUES ('226', '郁建华', null, null, null, '1', '', '', null, null, '1', null, '2018-11-29 16:45:20');
INSERT INTO `t_decedent` VALUES ('227', '金健民', null, null, null, '1', '', '', null, null, '1', null, '2018-11-30 17:01:55');
INSERT INTO `t_decedent` VALUES ('228', '黄友军', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-background/154424202108817539583400879767469.JPG', '1', '', '', null, null, '1', '2018-12-08 12:07:01', '2018-11-30 17:02:17');
INSERT INTO `t_decedent` VALUES ('229', '郁建华', null, null, null, '1', '', '', null, null, '1', null, '2018-12-09 10:14:56');
INSERT INTO `t_decedent` VALUES ('230', '蒋新生', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-background/154579592016720181226114519.jpg', '1', '1949-09-15', '2018-09-15', null, null, '1', '2018-12-26 11:45:20', '2018-12-12 16:46:36');
INSERT INTO `t_decedent` VALUES ('231', '施文妹', null, null, null, '2', '', '', null, null, '1', '2018-12-17 12:37:59', '2018-12-17 11:12:05');
INSERT INTO `t_decedent` VALUES ('232', '金照龙', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-background/1545022004468IMG_20181025_102951.jpg', '1', '', '', null, null, '1', '2018-12-17 12:46:44', '2018-12-17 11:13:01');
INSERT INTO `t_decedent` VALUES ('233', '汪忠朝', null, null, null, '1', '', '', null, null, '1', null, '2018-12-17 11:13:58');
INSERT INTO `t_decedent` VALUES ('234', '黄祖德', null, null, null, '1', '', '', null, null, '1', null, '2018-12-17 13:41:52');
INSERT INTO `t_decedent` VALUES ('235', '娄英鹏', null, null, null, '2', '', '', null, null, '1', '2018-12-23 23:00:27', '2018-12-17 13:42:48');
INSERT INTO `t_decedent` VALUES ('236', '王子豪', null, null, null, '1', '', '', null, null, '1', null, '2018-12-19 16:06:48');
INSERT INTO `t_decedent` VALUES ('237', '励杏桃', null, 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-icon/1545388795738decedent_head.jpg', null, '1', '1938-04-13', '2018-06-28', null, null, '1', '2018-12-21 18:39:56', '2018-12-19 16:07:05');
INSERT INTO `t_decedent` VALUES ('238', '陈金生', null, null, null, '1', '', '', null, null, '1', null, '2018-12-21 12:09:44');
INSERT INTO `t_decedent` VALUES ('239', '陶齐才', null, null, null, '1', '', '', null, null, '1', null, '2018-12-21 12:10:27');
INSERT INTO `t_decedent` VALUES ('240', '何亚平', null, null, null, '1', '', '', null, null, '1', null, '2018-12-24 15:29:41');
INSERT INTO `t_decedent` VALUES ('241', '经国海', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-background/1545924295670img-771a415b2511ee9b86be031007de9212.jpg', '1', '1949-02-21', '2018-08-12', null, null, '1', '2018-12-27 23:25:11', '2018-12-24 15:30:29');
INSERT INTO `t_decedent` VALUES ('242', '王佩青', null, 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-icon/1546678271655decedent_head.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-background/1546678391821IMG_20170405_152906.jpg', '2', '1941-10-09', '2017-02-06', null, null, '1', '2019-01-05 16:53:37', '2019-01-02 04:54:34');

-- ----------------------------
-- Table structure for t_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '商品标题',
  `child_title` varchar(255) DEFAULT NULL COMMENT '副标题',
  `price` double(11,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL COMMENT '库存',
  `cemetery_id` int(11) DEFAULT NULL COMMENT '墓地的Id',
  `sale` int(11) DEFAULT '0' COMMENT '销量',
  `ground_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '上架时间',
  `ground_status` int(1) DEFAULT '1' COMMENT '状态  1 下架  2 出售中（上架）',
  `service_mobile` varchar(60) DEFAULT NULL COMMENT '客服电话',
  `plat_mobile` varchar(60) DEFAULT NULL COMMENT '平台电话',
  `activated` int(1) DEFAULT '2',
  `deleted` int(1) DEFAULT '1' COMMENT '是否删除  1 未删除  2 已删除或者注销',
  `created_date` datetime DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('18', '白百合', '什么花', '0.01', '106', '3', '0', '2018-11-24 14:50:19', '1', '18459191', null, '2', '1', '2018-11-12 12:45:16', null);
INSERT INTO `t_goods` VALUES ('19', '马蹄莲', '什么花', '30.90', '50', '3', '0', '2018-11-24 14:50:19', '1', '18459191', null, '2', '1', '2018-10-10 15:07:06', null);
INSERT INTO `t_goods` VALUES ('20', '白菊花', '真是一朵好花', '110.00', '29', '3', '0', '2018-11-24 14:50:19', '1', '18459191', null, '2', '1', '2018-10-10 15:09:16', null);
INSERT INTO `t_goods` VALUES ('22', '野菊花', '这是什么花', '99.30', '219', '3', '0', '2018-11-24 14:50:19', '1', '18459191', null, '2', '1', '2018-10-10 15:15:26', null);
INSERT INTO `t_goods` VALUES ('23', '鲜花', '真新鲜', '0.10', '22', '3', '0', '2018-11-24 14:50:19', '1', '18459191', null, '2', '1', '2018-10-16 10:25:55', null);
INSERT INTO `t_goods` VALUES ('24', '玫瑰花', '什么玫瑰', '33.60', '100', '3', '0', '2018-11-24 14:50:19', '1', '18459191', null, '2', '1', '2018-10-10 16:40:19', null);
INSERT INTO `t_goods` VALUES ('25', '康乃馨', '花语是什么', '0.01', '100', '3', '0', '2018-11-24 14:50:19', '1', '18459191', null, '2', '1', '2018-11-12 12:45:36', null);
INSERT INTO `t_goods` VALUES ('26', '桃花', '桃花什么颜色', '0.01', '86', '3', '0', '2018-11-24 14:50:19', '1', '18459191', null, '2', '1', '2018-11-12 12:45:25', null);

-- ----------------------------
-- Table structure for t_goods_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_detail`;
CREATE TABLE `t_goods_detail` (
  `detail_image_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '详情图Id',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品Id',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `image_url` varchar(255) DEFAULT NULL,
  `top` int(1) DEFAULT NULL,
  `top_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `activated` int(1) DEFAULT '2' COMMENT '状态  1 上架  2 下架 ',
  `deleted` int(1) DEFAULT '1' COMMENT '是否删除  1 未删除  2 已删除或者注销',
  `created_date` datetime DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  `width` varchar(60) DEFAULT NULL,
  `height` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`detail_image_id`),
  KEY `index_goo` (`goods_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=342 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods_detail
-- ----------------------------
INSERT INTO `t_goods_detail` VALUES ('1', '1', null, 'http://www.baidu.com', null, '2018-10-08 16:30:22', '2', '1', null, null, '400', '800');
INSERT INTO `t_goods_detail` VALUES ('2', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376077115121533695573666 - 副本 (2).png', null, '2018-10-08 16:47:59', '2', '1', '2018-09-22 17:15:12', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('3', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376077115191533695573666 - 副本.png', null, '2018-10-08 16:48:22', '2', '1', '2018-09-22 17:15:12', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('4', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376077115281533695573666.png', null, '2018-10-08 16:48:23', '2', '1', '2018-09-22 17:15:12', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('5', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376077115361533695590390 - 副本 - 副本.jpeg', null, '2018-10-08 16:48:23', '2', '1', '2018-09-22 17:15:12', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('6', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376077467551533695573666 - 副本 (2).png', null, '2018-10-08 16:48:24', '2', '1', '2018-09-22 17:15:47', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('7', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376077467631533695573666 - 副本.png', null, '2018-10-08 16:48:24', '2', '1', '2018-09-22 17:15:47', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('8', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376077467721533695573666.png', null, '2018-10-08 16:48:25', '2', '1', '2018-09-22 17:15:47', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('9', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376077467811533695590390 - 副本 - 副本.jpeg', null, '2018-10-08 16:48:25', '2', '1', '2018-09-22 17:15:47', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('10', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376078184331533695573666.png', null, '2018-10-08 16:48:26', '2', '1', '2018-09-22 17:16:58', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('11', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376078184411533695590390 - 副本 - 副本.jpeg', null, '2018-10-08 16:48:26', '2', '1', '2018-09-22 17:16:58', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('12', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376095452541533695590390 - 副本 - 副本.jpeg', null, '2018-10-08 16:48:27', '2', '1', '2018-09-22 17:45:45', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('13', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376095993891533695590390 - 副本 - 副本.jpeg', null, '2018-10-08 16:48:38', '2', '1', '2018-09-22 17:46:39', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('14', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376096940591533695573666.png', null, '2018-10-08 16:48:39', '2', '1', '2018-09-22 17:48:14', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('19', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376109796771533695573666 - 副本 (2).png', null, '2018-10-08 16:48:40', '2', '1', '2018-09-22 18:09:40', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('20', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376109796811533695573666.png', null, '2018-10-08 16:48:41', '2', '1', '2018-09-22 18:09:40', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('21', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376109796891533695590390 - 副本 - 副本.jpeg', null, '2018-10-08 16:48:42', '2', '1', '2018-09-22 18:09:40', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('22', '4', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376117002221533695573666 - 副本.png', null, '2018-10-08 16:48:42', '2', '1', '2018-09-22 18:21:40', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('23', '4', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376117002281533695573666.png', null, '2018-10-08 16:48:43', '2', '1', '2018-09-22 18:21:40', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('24', '4', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376117002371533695590390 - 副本 - 副本.jpeg', null, '2018-10-08 16:48:44', '2', '1', '2018-09-22 18:21:40', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('25', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376118331851533695573666.png', null, '2018-10-08 16:48:44', '2', '1', '2018-09-22 18:23:53', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('26', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376118331931533695590390 - 副本 - 副本.jpeg', null, '2018-10-08 16:48:45', '2', '1', '2018-09-22 18:23:53', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('27', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376118389341533695573666 - 副本.png', null, '2018-10-08 16:48:45', '2', '1', '2018-09-22 18:23:59', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('28', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376118389381533695573666.png', null, '2018-10-08 16:48:46', '2', '1', '2018-09-22 18:23:59', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('29', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376118389391533695590390 - 副本 - 副本.jpeg', null, '2018-10-08 16:48:47', '2', '1', '2018-09-22 18:23:59', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('30', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376121535851533695573666.png', null, '2018-10-08 16:48:47', '2', '1', '2018-09-22 18:29:14', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('31', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376121535931533695590390 - 副本 - 副本.jpeg', null, '2018-10-08 16:48:49', '2', '1', '2018-09-22 18:29:14', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('39', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376135045041533695573666 - 副本 (2).png', '1', '2018-10-08 16:48:50', '2', '1', '2018-09-22 18:51:45', null, '249', '189');
INSERT INTO `t_goods_detail` VALUES ('40', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376135045131533695573666 - 副本.png', '1', '2018-09-22 18:51:54', '2', '1', '2018-09-22 18:51:45', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('41', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376135045191533695573666.png', '1', '2018-09-22 18:51:50', '2', '1', '2018-09-22 18:51:45', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('42', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376135045201533695590390 - 副本 - 副本.jpeg', '1', '2018-09-22 18:52:02', '2', '1', '2018-09-22 18:51:45', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('43', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376136454721533695573666 - 副本 (2).png', '1', '2018-09-22 18:54:40', '2', '1', '2018-09-22 18:54:05', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('44', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376136454801533695573666 - 副本.png', '1', '2018-09-22 18:54:39', '2', '1', '2018-09-22 18:54:05', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('45', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376136454881533695573666.png', '1', '2018-09-22 18:54:40', '2', '1', '2018-09-22 18:54:05', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('46', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15376136454971533695590390 - 副本 - 副本.jpeg', '1', '2018-09-22 18:54:38', '2', '1', '2018-09-22 18:54:05', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('59', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15378429921601533695573666 - 副本.png', '1', '2018-09-25 10:36:37', '2', '1', '2018-09-25 10:36:32', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('60', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15378429921671533695573666.png', '1', '2018-09-25 10:36:38', '2', '1', '2018-09-25 10:36:32', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('61', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15378429921741533695590390 - 副本 - 副本.jpeg', '1', '2018-09-25 10:36:38', '2', '1', '2018-09-25 10:36:32', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('62', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15378431267191533695573666 - 副本.png', null, null, '2', '1', '2018-09-25 10:38:47', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('63', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15378431267271533695590390 - 副本 - 副本.jpeg', null, null, '2', '1', '2018-09-25 10:38:47', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('64', '7', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15379537648161533697015274.jpg', null, '2018-09-26 17:22:49', '2', '1', '2018-09-26 17:22:45', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('65', '7', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15379537648191533698707125 - 副本 - 副本.jpg', null, '2018-09-26 17:22:49', '2', '1', '2018-09-26 17:22:45', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('66', '7', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15379537648251533698707125 - 副本 (2).jpg', null, '2018-09-26 17:22:49', '2', '1', '2018-09-26 17:22:45', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('67', '7', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15379537648291533698707125 - 副本.jpg', null, '2018-09-26 17:22:49', '2', '1', '2018-09-26 17:22:45', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('68', '7', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15379537648341533698707125.jpg', null, '2018-09-26 17:22:49', '2', '1', '2018-09-26 17:22:45', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('112', '8', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15379550314411533697015274.jpg', '6', '2018-09-26 18:41:50', '2', '1', '2018-09-26 17:43:51', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('113', '8', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15379550314461533698707125 - 副本 - 副本.jpg', '1', '2018-09-26 18:41:50', '2', '1', '2018-09-26 17:43:51', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('115', '8', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15379550314521533698707125 - 副本.jpg', '4', '2018-09-26 18:41:50', '2', '1', '2018-09-26 17:43:51', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('116', '8', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15379550314601533698707125.jpg', '7', '2018-09-26 18:41:50', '2', '1', '2018-09-26 17:43:51', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('117', '8', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1537955031463chen - 副本.jpg', '2', '2018-09-26 18:38:16', '2', '1', '2018-09-26 17:43:51', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('118', '8', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1537955031471chen.jpg', '3', '2018-09-26 18:41:50', '2', '1', '2018-09-26 17:43:51', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('119', '8', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1537955031477timg.jpeg', '5', '2018-09-26 18:41:50', '2', '1', '2018-09-26 17:43:51', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('120', '8', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15379550378091533695590390 - 副本 - 副本.jpeg', '11', '2018-09-26 18:41:50', '2', '1', '2018-09-26 17:43:58', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('121', '8', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15379550378151533695590390 - 副本.jpeg', '10', '2018-09-26 18:41:50', '2', '1', '2018-09-26 17:43:58', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('123', '8', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15379550378271533698707125.jpg', '8', '2018-09-26 18:41:50', '2', '1', '2018-09-26 17:43:58', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('124', '8', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1537955037829chen - 副本.jpg', '9', '2018-09-26 18:41:50', '2', '1', '2018-09-26 17:43:58', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('125', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15379572817311533698707125.jpg', null, null, '2', '1', '2018-09-26 18:21:22', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('141', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15382089136961533698707125.jpg', null, null, '2', '1', '2018-09-29 16:15:14', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('142', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538208913696chen - 副本.jpg', null, null, '2', '1', '2018-09-29 16:15:14', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('143', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538208913696timg.jpeg', null, null, '2', '1', '2018-09-29 16:15:14', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('144', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538208924981chen - 副本.jpg', null, null, '2', '1', '2018-09-29 16:15:25', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('145', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538208924981chen.jpg', null, null, '2', '1', '2018-09-29 16:15:25', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('146', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538208924981timg.jpeg', null, null, '2', '1', '2018-09-29 16:15:25', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('147', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15382843415591533695590390 - 副本.jpeg', null, null, '2', '1', '2018-09-30 13:12:22', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('149', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15382843415601533698707125 - 副本.jpg', null, null, '2', '1', '2018-09-30 13:12:22', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('150', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538284341560chen - 副本.jpg', null, null, '2', '1', '2018-09-30 13:12:22', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('151', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538284341560timg.jpeg', null, null, '2', '1', '2018-09-30 13:12:22', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('152', '11', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15387065794131533695573666 - 副本 (2).png', '2', '2018-10-05 10:30:10', '2', '1', '2018-10-05 10:29:39', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('153', '11', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15387065794141533695590390 - 副本 - 副本.jpeg', '3', '2018-10-05 10:30:10', '2', '1', '2018-10-05 10:29:39', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('154', '11', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15387065794141533697015274 - 副本.jpg', '4', '2018-10-05 10:30:10', '2', '1', '2018-10-05 10:29:39', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('155', '11', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15387065794141533698707125 - 副本 - 副本.jpg', '5', '2018-10-05 10:30:10', '2', '1', '2018-10-05 10:29:39', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('156', '11', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15387065794141533698707125 - 副本 (2).jpg', '6', '2018-10-05 10:30:10', '2', '1', '2018-10-05 10:29:39', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('157', '11', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15387065794141533698707125 - 副本.jpg', '7', '2018-10-05 10:30:10', '2', '1', '2018-10-05 10:29:39', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('158', '11', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538706579414chen.jpg', '8', '2018-10-05 10:30:10', '2', '1', '2018-10-05 10:29:39', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('159', '11', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538706579414timg.jpeg', '1', '2018-10-05 10:30:10', '2', '1', '2018-10-05 10:29:39', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('160', '12', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15387066793431533695590390 - 副本 - 副本.jpeg', '2', '2018-10-05 10:31:30', '2', '1', '2018-10-05 10:31:19', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('161', '12', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15387066793451533695590390 - 副本.jpeg', '3', '2018-10-05 10:31:30', '2', '1', '2018-10-05 10:31:19', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('162', '12', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15387066793451533695590390.jpeg', '4', '2018-10-05 10:31:30', '2', '1', '2018-10-05 10:31:19', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('163', '12', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15387066793451533697015274 - 副本.jpg', '5', '2018-10-05 10:31:30', '2', '1', '2018-10-05 10:31:19', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('164', '12', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538706679345chen - 副本.jpg', '6', '2018-10-05 10:31:30', '2', '1', '2018-10-05 10:31:19', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('165', '12', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538706679345chen.jpg', '7', '2018-10-05 10:31:30', '2', '1', '2018-10-05 10:31:19', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('166', '12', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538706679345timg.jpeg', '1', '2018-10-05 10:31:30', '2', '1', '2018-10-05 10:31:19', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('167', '13', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538706956536th (1).jpeg', '1', '2018-10-05 10:36:39', '2', '1', '2018-10-05 10:35:57', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('168', '13', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538706956536th (2).jpeg', '3', '2018-10-05 10:36:39', '2', '1', '2018-10-05 10:35:57', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('169', '13', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538706956537th (3).jpeg', '5', '2018-10-05 10:36:39', '2', '1', '2018-10-05 10:35:57', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('170', '13', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538706956537th (4).jpeg', '4', '2018-10-05 10:36:39', '2', '1', '2018-10-05 10:35:57', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('171', '13', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538706956537th (5).jpeg', '6', '2018-10-05 10:36:39', '2', '1', '2018-10-05 10:35:57', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('172', '13', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538706956537th.jpeg', '7', '2018-10-05 10:36:39', '2', '1', '2018-10-05 10:35:57', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('173', '13', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538706956537timg.jpeg', '8', '2018-10-05 10:36:39', '2', '1', '2018-10-05 10:35:57', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('174', '13', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538706956537下载.jpeg', '2', '2018-10-05 10:36:39', '2', '1', '2018-10-05 10:35:57', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('175', '14', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538707226542th (1).jpeg', '3', '2018-10-05 10:40:48', '2', '1', '2018-10-05 10:40:27', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('176', '14', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538707226542th (2).jpeg', '4', '2018-10-05 10:40:48', '2', '1', '2018-10-05 10:40:27', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('177', '14', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538707226542th (3).jpeg', '5', '2018-10-05 10:40:48', '2', '1', '2018-10-05 10:40:27', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('178', '14', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538707226542th (4).jpeg', '2', '2018-10-05 10:40:48', '2', '1', '2018-10-05 10:40:27', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('179', '14', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538707226542th (5).jpeg', '1', '2018-10-05 10:40:48', '2', '1', '2018-10-05 10:40:27', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('180', '14', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538707226542th.jpeg', '6', '2018-10-05 10:40:48', '2', '1', '2018-10-05 10:40:27', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('181', '14', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538707226542timg.jpeg', '7', '2018-10-05 10:40:48', '2', '1', '2018-10-05 10:40:27', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('182', '14', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538707226542下载.jpeg', '8', '2018-10-05 10:40:48', '2', '1', '2018-10-05 10:40:27', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('183', '15', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538964133239th (1).jpeg', '3', '2018-10-08 10:02:34', '2', '1', '2018-10-08 10:02:13', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('184', '15', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538964133239th (2).jpeg', '1', '2018-10-08 10:02:34', '2', '1', '2018-10-08 10:02:13', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('185', '15', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538964133240th (3).jpeg', '5', '2018-10-08 10:02:34', '2', '1', '2018-10-08 10:02:13', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('186', '15', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538964133240th (4).jpeg', '6', '2018-10-08 10:02:34', '2', '1', '2018-10-08 10:02:13', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('187', '15', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538964133240th (5).jpeg', '7', '2018-10-08 10:02:34', '2', '1', '2018-10-08 10:02:13', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('188', '15', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538964133240th.jpeg', '8', '2018-10-08 10:02:34', '2', '1', '2018-10-08 10:02:13', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('189', '15', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538964133240timg.jpeg', '4', '2018-10-08 10:02:34', '2', '1', '2018-10-08 10:02:13', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('190', '15', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538964133240下载.jpeg', '2', '2018-10-08 10:02:34', '2', '1', '2018-10-08 10:02:13', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('191', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538986935312th (1).jpeg', null, null, '2', '1', '2018-10-08 16:22:16', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('192', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538986935643th (2).jpeg', null, null, '2', '1', '2018-10-08 16:22:16', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('193', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538986935656th (3).jpeg', null, null, '2', '1', '2018-10-08 16:22:16', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('194', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538986935664th (4).jpeg', null, null, '2', '1', '2018-10-08 16:22:16', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('195', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538986935671th (5).jpeg', null, null, '2', '1', '2018-10-08 16:22:16', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('196', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538986935683th.jpeg', null, null, '2', '1', '2018-10-08 16:22:16', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('197', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538986935692timg.jpeg', null, null, '2', '1', '2018-10-08 16:22:16', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('198', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538986935746下载.jpeg', null, null, '2', '1', '2018-10-08 16:22:16', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('199', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538987171182th (1).jpeg', null, null, '2', '1', '2018-10-08 16:26:11', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('200', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538987171197th (2).jpeg', null, null, '2', '1', '2018-10-08 16:26:11', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('201', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538987171200th (3).jpeg', null, null, '2', '1', '2018-10-08 16:26:11', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('202', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538987171203th (4).jpeg', null, null, '2', '1', '2018-10-08 16:26:11', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('203', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538987171204th (5).jpeg', null, null, '2', '1', '2018-10-08 16:26:11', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('204', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538987171210th.jpeg', null, null, '2', '1', '2018-10-08 16:26:11', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('205', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538987171211timg.jpeg', null, null, '2', '1', '2018-10-08 16:26:11', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('206', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538987171245下载.jpeg', null, null, '2', '1', '2018-10-08 16:26:11', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('207', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538987249151th (1).jpeg', null, null, '2', '1', '2018-10-08 16:27:29', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('208', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538987249156th (2).jpeg', null, null, '2', '1', '2018-10-08 16:27:29', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('209', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538987249159th (3).jpeg', null, null, '2', '1', '2018-10-08 16:27:29', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('210', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538987249163th (4).jpeg', null, null, '2', '1', '2018-10-08 16:27:29', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('211', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538987713383th (1).jpeg', null, null, '2', '1', '2018-10-08 16:35:14', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('212', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538987713537th (2).jpeg', null, null, '2', '1', '2018-10-08 16:35:14', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('213', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538987713545th (3).jpeg', null, null, '2', '1', '2018-10-08 16:35:14', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('214', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538987713551th (4).jpeg', null, null, '2', '1', '2018-10-08 16:35:14', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('215', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538987713558下载.jpeg', null, null, '2', '1', '2018-10-08 16:35:14', null, null, null);
INSERT INTO `t_goods_detail` VALUES ('216', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538988095182th (1).jpeg', null, null, '2', '1', '2018-10-08 16:41:35', null, '249', '185');
INSERT INTO `t_goods_detail` VALUES ('217', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538988095254th (2).jpeg', null, null, '2', '1', '2018-10-08 16:41:35', null, '238', '195');
INSERT INTO `t_goods_detail` VALUES ('218', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538988095262th (3).jpeg', null, null, '2', '1', '2018-10-08 16:41:35', null, '204', '193');
INSERT INTO `t_goods_detail` VALUES ('219', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538988095271th (4).jpeg', null, null, '2', '1', '2018-10-08 16:41:35', null, '131', '168');
INSERT INTO `t_goods_detail` VALUES ('220', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538991240843th (1).jpeg', null, null, '2', '1', '2018-10-08 17:34:01', null, '249', '185');
INSERT INTO `t_goods_detail` VALUES ('221', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538991241149th (2).jpeg', null, null, '2', '1', '2018-10-08 17:34:01', null, '238', '195');
INSERT INTO `t_goods_detail` VALUES ('222', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538991241153th (3).jpeg', null, null, '2', '1', '2018-10-08 17:34:01', null, '204', '193');
INSERT INTO `t_goods_detail` VALUES ('223', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538991241157th (4).jpeg', null, null, '2', '1', '2018-10-08 17:34:01', null, '131', '168');
INSERT INTO `t_goods_detail` VALUES ('224', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538991241159下载.jpeg', null, null, '2', '1', '2018-10-08 17:34:01', null, '300', '168');
INSERT INTO `t_goods_detail` VALUES ('225', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538991371920th (1).jpeg', null, null, '2', '1', '2018-10-08 17:36:12', null, '249', '185');
INSERT INTO `t_goods_detail` VALUES ('226', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538991371929th (2).jpeg', null, null, '2', '1', '2018-10-08 17:36:12', null, '238', '195');
INSERT INTO `t_goods_detail` VALUES ('227', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538991371933th (3).jpeg', null, null, '2', '1', '2018-10-08 17:36:12', null, '204', '193');
INSERT INTO `t_goods_detail` VALUES ('228', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538991371936th (4).jpeg', null, null, '2', '1', '2018-10-08 17:36:12', null, '131', '168');
INSERT INTO `t_goods_detail` VALUES ('229', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539005648060图片1.png', null, null, '2', '1', '2018-10-08 21:34:08', null, '299', '368');
INSERT INTO `t_goods_detail` VALUES ('230', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539048192302th (1).jpeg', null, null, '2', '1', '2018-10-09 09:23:12', null, '249', '185');
INSERT INTO `t_goods_detail` VALUES ('231', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539048192306th (2).jpeg', null, null, '2', '1', '2018-10-09 09:23:12', null, '238', '195');
INSERT INTO `t_goods_detail` VALUES ('232', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539048192308th (3).jpeg', null, null, '2', '1', '2018-10-09 09:23:12', null, '204', '193');
INSERT INTO `t_goods_detail` VALUES ('233', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539048192310th (4).jpeg', null, null, '2', '1', '2018-10-09 09:23:12', null, '131', '168');
INSERT INTO `t_goods_detail` VALUES ('234', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539048192311th (5).jpeg', null, null, '2', '1', '2018-10-09 09:23:12', null, '262', '195');
INSERT INTO `t_goods_detail` VALUES ('235', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539048192313th.jpeg', null, null, '2', '1', '2018-10-09 09:23:12', null, '128', '181');
INSERT INTO `t_goods_detail` VALUES ('236', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539048192315timg.jpeg', null, null, '2', '1', '2018-10-09 09:23:12', null, '1250', '668');
INSERT INTO `t_goods_detail` VALUES ('237', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539048192334下载.jpeg', null, null, '2', '1', '2018-10-09 09:23:12', null, '300', '168');
INSERT INTO `t_goods_detail` VALUES ('238', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539154794507白菊花.png', null, null, '2', '1', '2018-10-10 14:59:55', null, '270', '213');
INSERT INTO `t_goods_detail` VALUES ('239', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539154794517百合.png', null, null, '2', '1', '2018-10-10 14:59:55', null, '261', '359');
INSERT INTO `t_goods_detail` VALUES ('240', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539154794529黄菊花.png', null, null, '2', '1', '2018-10-10 14:59:55', null, '285', '301');
INSERT INTO `t_goods_detail` VALUES ('241', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539154794542马蹄莲.png', null, null, '2', '1', '2018-10-10 14:59:55', null, '299', '259');
INSERT INTO `t_goods_detail` VALUES ('242', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539154921026白菊花.png', null, null, '2', '1', '2018-10-10 15:02:01', null, '270', '213');
INSERT INTO `t_goods_detail` VALUES ('243', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539154921036百合.png', null, null, '2', '1', '2018-10-10 15:02:01', null, '261', '359');
INSERT INTO `t_goods_detail` VALUES ('244', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539154921050黄菊花.png', null, null, '2', '1', '2018-10-10 15:02:01', null, '285', '301');
INSERT INTO `t_goods_detail` VALUES ('245', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539154921071马蹄莲.png', null, null, '2', '1', '2018-10-10 15:02:01', null, '299', '259');
INSERT INTO `t_goods_detail` VALUES ('246', '18', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155134371白菊花.png', '3', '2018-11-07 00:02:38', '2', '1', '2018-10-10 15:05:34', null, '270', '213');
INSERT INTO `t_goods_detail` VALUES ('247', '18', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155134381百合.png', '2', '2018-11-07 00:02:38', '2', '1', '2018-10-10 15:05:34', null, '261', '359');
INSERT INTO `t_goods_detail` VALUES ('248', '18', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155134389黄菊花.png', '4', '2018-11-07 00:02:38', '2', '1', '2018-10-10 15:05:34', null, '285', '301');
INSERT INTO `t_goods_detail` VALUES ('249', '18', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155134402马蹄莲.png', '1', '2018-11-07 00:02:38', '2', '1', '2018-10-10 15:05:34', null, '299', '259');
INSERT INTO `t_goods_detail` VALUES ('250', '19', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155192904白菊花.png', '2', '2018-10-10 15:07:05', '2', '1', '2018-10-10 15:06:33', null, '270', '213');
INSERT INTO `t_goods_detail` VALUES ('251', '19', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155192916百合.png', '3', '2018-10-10 15:07:05', '2', '1', '2018-10-10 15:06:33', null, '261', '359');
INSERT INTO `t_goods_detail` VALUES ('252', '19', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155192927黄菊花.png', '4', '2018-10-10 15:07:05', '2', '1', '2018-10-10 15:06:33', null, '285', '301');
INSERT INTO `t_goods_detail` VALUES ('253', '19', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155192939马蹄莲.png', '1', '2018-10-10 15:07:05', '2', '1', '2018-10-10 15:06:33', null, '299', '259');
INSERT INTO `t_goods_detail` VALUES ('254', '19', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155211943th (1).jpeg', '5', '2018-10-10 15:07:05', '2', '1', '2018-10-10 15:06:52', null, '249', '185');
INSERT INTO `t_goods_detail` VALUES ('255', '19', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155211981th (2).jpeg', '6', '2018-10-10 15:07:05', '2', '1', '2018-10-10 15:06:52', null, '238', '195');
INSERT INTO `t_goods_detail` VALUES ('256', '19', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155211984th (3).jpeg', '8', '2018-10-10 15:07:05', '2', '1', '2018-10-10 15:06:52', null, '204', '193');
INSERT INTO `t_goods_detail` VALUES ('257', '19', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155211986th (4).jpeg', '9', '2018-10-10 15:07:05', '2', '1', '2018-10-10 15:06:52', null, '131', '168');
INSERT INTO `t_goods_detail` VALUES ('258', '19', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155211988th (5).jpeg', '10', '2018-10-10 15:07:05', '2', '1', '2018-10-10 15:06:52', null, '262', '195');
INSERT INTO `t_goods_detail` VALUES ('259', '19', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155211990th.jpeg', '11', '2018-10-10 15:07:05', '2', '1', '2018-10-10 15:06:52', null, '128', '181');
INSERT INTO `t_goods_detail` VALUES ('260', '19', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155211992timg.jpeg', '12', '2018-10-10 15:07:05', '2', '1', '2018-10-10 15:06:52', null, '1250', '668');
INSERT INTO `t_goods_detail` VALUES ('261', '19', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155212025下载.jpeg', '7', '2018-10-10 15:07:05', '2', '1', '2018-10-10 15:06:52', null, '300', '168');
INSERT INTO `t_goods_detail` VALUES ('262', '20', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155351836白菊花.png', '1', '2018-10-10 15:09:16', '2', '1', '2018-10-10 15:09:12', null, '270', '213');
INSERT INTO `t_goods_detail` VALUES ('263', '20', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155351846百合.png', '2', '2018-10-10 15:09:16', '2', '1', '2018-10-10 15:09:12', null, '261', '359');
INSERT INTO `t_goods_detail` VALUES ('264', '20', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155351854黄菊花.png', '3', '2018-10-10 15:09:16', '2', '1', '2018-10-10 15:09:12', null, '285', '301');
INSERT INTO `t_goods_detail` VALUES ('265', '20', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155351867马蹄莲.png', '4', '2018-10-10 15:09:16', '2', '1', '2018-10-10 15:09:12', null, '299', '259');
INSERT INTO `t_goods_detail` VALUES ('266', '21', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155395881白菊花.png', '1', '2018-10-10 15:10:00', '2', '1', '2018-10-10 15:09:56', null, '270', '213');
INSERT INTO `t_goods_detail` VALUES ('267', '21', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155395893百合.png', '2', '2018-10-10 15:10:00', '2', '1', '2018-10-10 15:09:56', null, '261', '359');
INSERT INTO `t_goods_detail` VALUES ('268', '21', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155395902黄菊花.png', '3', '2018-10-10 15:10:00', '2', '1', '2018-10-10 15:09:56', null, '285', '301');
INSERT INTO `t_goods_detail` VALUES ('269', '21', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155395916马蹄莲.png', '4', '2018-10-10 15:10:00', '2', '1', '2018-10-10 15:09:56', null, '299', '259');
INSERT INTO `t_goods_detail` VALUES ('270', '22', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155719633白菊花.png', '2', '2018-10-10 15:15:25', '2', '1', '2018-10-10 15:15:20', null, '270', '213');
INSERT INTO `t_goods_detail` VALUES ('271', '22', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155719643百合.png', '1', '2018-10-10 15:15:25', '2', '1', '2018-10-10 15:15:20', null, '261', '359');
INSERT INTO `t_goods_detail` VALUES ('272', '22', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155719653黄菊花.png', '3', '2018-10-10 15:15:25', '2', '1', '2018-10-10 15:15:20', null, '285', '301');
INSERT INTO `t_goods_detail` VALUES ('273', '22', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155719666马蹄莲.png', '4', '2018-10-10 15:15:25', '2', '1', '2018-10-10 15:15:20', null, '299', '259');
INSERT INTO `t_goods_detail` VALUES ('277', '23', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160746251.jpeg', '2', '2018-10-16 10:25:54', '2', '1', '2018-10-10 16:39:06', null, '262', '195');
INSERT INTO `t_goods_detail` VALUES ('278', '23', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160746261.jpeg', '3', '2018-10-16 10:25:54', '2', '1', '2018-10-10 16:39:06', null, '204', '193');
INSERT INTO `t_goods_detail` VALUES ('279', '23', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160746264.jpeg', '4', '2018-10-16 10:25:54', '2', '1', '2018-10-10 16:39:06', null, '128', '181');
INSERT INTO `t_goods_detail` VALUES ('281', '23', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160746291.png', '5', '2018-10-16 10:25:54', '2', '1', '2018-10-10 16:39:06', null, '270', '213');
INSERT INTO `t_goods_detail` VALUES ('282', '23', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160746301.png', '6', '2018-10-16 10:25:54', '2', '1', '2018-10-10 16:39:06', null, '261', '359');
INSERT INTO `t_goods_detail` VALUES ('283', '23', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160746313.png', '7', '2018-10-16 10:25:54', '2', '1', '2018-10-10 16:39:06', null, '285', '301');
INSERT INTO `t_goods_detail` VALUES ('284', '23', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160746327.png', '8', '2018-10-16 10:25:54', '2', '1', '2018-10-10 16:39:06', null, '299', '259');
INSERT INTO `t_goods_detail` VALUES ('285', '23', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160746336.jpeg', '1', '2018-10-16 10:25:54', '2', '1', '2018-10-10 16:39:06', null, '300', '168');
INSERT INTO `t_goods_detail` VALUES ('286', '24', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160812477.jpeg', '1', '2018-10-10 16:40:19', '2', '1', '2018-10-10 16:40:12', null, '238', '195');
INSERT INTO `t_goods_detail` VALUES ('287', '24', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160812480.jpeg', '2', '2018-10-10 16:40:19', '2', '1', '2018-10-10 16:40:12', null, '131', '168');
INSERT INTO `t_goods_detail` VALUES ('288', '24', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160812481.jpeg', '3', '2018-10-10 16:40:19', '2', '1', '2018-10-10 16:40:12', null, '249', '185');
INSERT INTO `t_goods_detail` VALUES ('289', '24', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160812484.jpeg', '4', '2018-10-10 16:40:19', '2', '1', '2018-10-10 16:40:12', null, '262', '195');
INSERT INTO `t_goods_detail` VALUES ('290', '24', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160812491.jpeg', '5', '2018-10-10 16:40:19', '2', '1', '2018-10-10 16:40:12', null, '204', '193');
INSERT INTO `t_goods_detail` VALUES ('291', '24', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160812493.jpeg', '6', '2018-10-10 16:40:19', '2', '1', '2018-10-10 16:40:12', null, '128', '181');
INSERT INTO `t_goods_detail` VALUES ('292', '24', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160812494.jpeg', '7', '2018-10-10 16:40:19', '2', '1', '2018-10-10 16:40:13', null, '1250', '668');
INSERT INTO `t_goods_detail` VALUES ('293', '24', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160812515.png', '8', '2018-10-10 16:40:19', '2', '1', '2018-10-10 16:40:13', null, '270', '213');
INSERT INTO `t_goods_detail` VALUES ('294', '24', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160812524.png', '9', '2018-10-10 16:40:19', '2', '1', '2018-10-10 16:40:13', null, '261', '359');
INSERT INTO `t_goods_detail` VALUES ('295', '24', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160812533.png', '10', '2018-10-10 16:40:19', '2', '1', '2018-10-10 16:40:13', null, '285', '301');
INSERT INTO `t_goods_detail` VALUES ('296', '24', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160812544.png', '11', '2018-10-10 16:40:19', '2', '1', '2018-10-10 16:40:13', null, '299', '259');
INSERT INTO `t_goods_detail` VALUES ('297', '24', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160812553.jpeg', '12', '2018-10-10 16:40:19', '2', '1', '2018-10-10 16:40:13', null, '300', '168');
INSERT INTO `t_goods_detail` VALUES ('302', '25', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160870653.jpeg', '1', '2018-10-10 17:16:10', '2', '1', '2018-10-10 16:41:11', null, '204', '193');
INSERT INTO `t_goods_detail` VALUES ('303', '25', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160870656.jpeg', '2', '2018-10-10 17:16:10', '2', '1', '2018-10-10 16:41:11', null, '128', '181');
INSERT INTO `t_goods_detail` VALUES ('304', '25', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160870658.jpeg', '3', '2018-10-10 17:16:10', '2', '1', '2018-10-10 16:41:11', null, '1250', '668');
INSERT INTO `t_goods_detail` VALUES ('305', '25', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160870684.png', '4', '2018-10-10 17:16:10', '2', '1', '2018-10-10 16:41:11', null, '270', '213');
INSERT INTO `t_goods_detail` VALUES ('306', '25', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160870694.png', '5', '2018-10-10 17:16:10', '2', '1', '2018-10-10 16:41:11', null, '261', '359');
INSERT INTO `t_goods_detail` VALUES ('307', '25', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160870701.png', '6', '2018-10-10 17:16:10', '2', '1', '2018-10-10 16:41:11', null, '285', '301');
INSERT INTO `t_goods_detail` VALUES ('308', '25', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160870715.png', '7', '2018-10-10 17:16:10', '2', '1', '2018-10-10 16:41:11', null, '299', '259');
INSERT INTO `t_goods_detail` VALUES ('309', '25', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160870723.jpeg', '8', '2018-10-10 17:16:10', '2', '1', '2018-10-10 16:41:11', null, '300', '168');
INSERT INTO `t_goods_detail` VALUES ('314', '26', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160948964.jpeg', '1', '2018-10-10 17:14:50', '2', '1', '2018-10-10 16:42:29', null, '204', '193');
INSERT INTO `t_goods_detail` VALUES ('315', '26', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160948966.jpeg', '2', '2018-10-10 17:14:50', '2', '1', '2018-10-10 16:42:29', null, '128', '181');
INSERT INTO `t_goods_detail` VALUES ('316', '26', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160948968.jpeg', '3', '2018-10-10 17:14:50', '2', '1', '2018-10-10 16:42:29', null, '1250', '668');
INSERT INTO `t_goods_detail` VALUES ('317', '26', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160948987.png', '4', '2018-10-10 17:14:50', '2', '1', '2018-10-10 16:42:29', null, '270', '213');
INSERT INTO `t_goods_detail` VALUES ('318', '26', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160948995.png', '5', '2018-10-10 17:14:50', '2', '1', '2018-10-10 16:42:29', null, '261', '359');
INSERT INTO `t_goods_detail` VALUES ('319', '26', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160949007.png', '6', '2018-10-10 17:14:50', '2', '1', '2018-10-10 16:42:29', null, '285', '301');
INSERT INTO `t_goods_detail` VALUES ('320', '26', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160949018.png', '7', '2018-10-10 17:14:50', '2', '1', '2018-10-10 16:42:29', null, '299', '259');
INSERT INTO `t_goods_detail` VALUES ('321', '26', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160949026.jpeg', '8', '2018-10-10 17:14:50', '2', '1', '2018-10-10 16:42:29', null, '300', '168');
INSERT INTO `t_goods_detail` VALUES ('322', '26', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539162885109.png', '9', '2018-10-10 17:14:50', '2', '1', '2018-10-10 17:14:45', null, '270', '213');
INSERT INTO `t_goods_detail` VALUES ('323', '26', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539162885120.png', '10', '2018-10-10 17:14:50', '2', '1', '2018-10-10 17:14:45', null, '261', '359');
INSERT INTO `t_goods_detail` VALUES ('324', '26', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539162885128.png', '11', '2018-10-10 17:14:50', '2', '1', '2018-10-10 17:14:45', null, '285', '301');
INSERT INTO `t_goods_detail` VALUES ('325', '26', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539162885138.png', '12', '2018-10-10 17:14:50', '2', '1', '2018-10-10 17:14:45', null, '299', '259');
INSERT INTO `t_goods_detail` VALUES ('326', '25', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539162966866.png', '9', '2018-10-10 17:16:10', '2', '1', '2018-10-10 17:16:07', null, '270', '213');
INSERT INTO `t_goods_detail` VALUES ('327', '25', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539162966874.png', '10', '2018-10-10 17:16:10', '2', '1', '2018-10-10 17:16:07', null, '261', '359');
INSERT INTO `t_goods_detail` VALUES ('328', '25', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539162966883.png', '11', '2018-10-10 17:16:10', '2', '1', '2018-10-10 17:16:07', null, '285', '301');
INSERT INTO `t_goods_detail` VALUES ('329', '25', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539162966894.png', '12', '2018-10-10 17:16:10', '2', '1', '2018-10-10 17:16:07', null, '299', '259');
INSERT INTO `t_goods_detail` VALUES ('330', '23', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539162998530.png', '9', '2018-10-16 10:25:54', '2', '1', '2018-10-10 17:16:39', null, '270', '213');
INSERT INTO `t_goods_detail` VALUES ('331', '23', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539162998538.png', '10', '2018-10-16 10:25:54', '2', '1', '2018-10-10 17:16:39', null, '261', '359');
INSERT INTO `t_goods_detail` VALUES ('332', '23', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539162998545.png', '11', '2018-10-16 10:25:54', '2', '1', '2018-10-10 17:16:39', null, '285', '301');
INSERT INTO `t_goods_detail` VALUES ('333', '23', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539162998555.png', '12', '2018-10-16 10:25:54', '2', '1', '2018-10-10 17:16:39', null, '299', '259');
INSERT INTO `t_goods_detail` VALUES ('334', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/goods-image/1542012272377.png', null, null, '2', '1', '2018-11-12 16:44:33', null, '750', '1334');
INSERT INTO `t_goods_detail` VALUES ('335', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/goods-image/1542012272559.png', null, null, '2', '1', '2018-11-12 16:44:33', null, '750', '1334');
INSERT INTO `t_goods_detail` VALUES ('336', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/goods-image/1542012272623.jpg', null, null, '2', '1', '2018-11-12 16:44:33', null, '750', '1334');
INSERT INTO `t_goods_detail` VALUES ('337', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/goods-image/1542012272640.jpg', null, null, '2', '1', '2018-11-12 16:44:33', null, '1334', '750');
INSERT INTO `t_goods_detail` VALUES ('338', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/goods-image/1542012272656.jpg', null, null, '2', '1', '2018-11-12 16:44:33', null, '750', '1334');
INSERT INTO `t_goods_detail` VALUES ('339', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/goods-image/1542012272671.png', null, null, '2', '1', '2018-11-12 16:44:33', null, '1334', '750');
INSERT INTO `t_goods_detail` VALUES ('340', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/goods-image/1542012272767.jpg', null, null, '2', '1', '2018-11-12 16:44:33', null, '750', '1334');
INSERT INTO `t_goods_detail` VALUES ('341', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/goods-image/1542012272783.jpg', null, null, '2', '1', '2018-11-12 16:44:33', null, '750', '1334');

-- ----------------------------
-- Table structure for t_goods_primary
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_primary`;
CREATE TABLE `t_goods_primary` (
  `primary_image_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主图Id',
  `goods_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `width` varchar(60) DEFAULT NULL,
  `height` varchar(60) DEFAULT NULL,
  `activated` int(1) DEFAULT '0' COMMENT '1 选中 0 否',
  `deleted` int(1) DEFAULT '1' COMMENT '是否删除  1 未删除  2 已删除或者注销',
  `created_date` datetime DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`primary_image_id`),
  KEY `index_goods` (`goods_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods_primary
-- ----------------------------
INSERT INTO `t_goods_primary` VALUES ('1', '1', null, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1537858938440&di=9821b9edba2d1c14ed43da5611ba0f3e&imgtype=0&src=http%3A%2F%2Fpic.90sjimg.com%2Fdesign%2F00%2F09%2F72%2F14%2F58d88876dfa57.png', '1250', '668', '0', '1', null, null);
INSERT INTO `t_goods_primary` VALUES ('2', '1', null, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1537858938440&di=9821b9edba2d1c14ed43da5611ba0f3e&imgtype=0&src=http%3A%2F%2Fpic.90sjimg.com%2Fdesign%2F00%2F09%2F72%2F14%2F58d88876dfa57.png', '1250', '668', '1', '1', null, null);
INSERT INTO `t_goods_primary` VALUES ('3', '2', null, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1537858938440&di=9821b9edba2d1c14ed43da5611ba0f3e&imgtype=0&src=http%3A%2F%2Fpic.90sjimg.com%2Fdesign%2F00%2F09%2F72%2F14%2F58d88876dfa57.png', '1250', '668', '1', '1', null, null);
INSERT INTO `t_goods_primary` VALUES ('5', '4', null, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1537858938440&di=9821b9edba2d1c14ed43da5611ba0f3e&imgtype=0&src=http%3A%2F%2Fpic.90sjimg.com%2Fdesign%2F00%2F09%2F72%2F14%2F58d88876dfa57.png', '1250', '668', '1', '1', null, null);
INSERT INTO `t_goods_primary` VALUES ('95', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15378663975041533695590390 - 副本 - 副本.jpeg', '800', '800', '0', '1', '2018-09-25 17:06:38', null);
INSERT INTO `t_goods_primary` VALUES ('96', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15378663976321533697015274 - 副本.jpg', '410', '429', '0', '1', '2018-09-25 17:06:38', null);
INSERT INTO `t_goods_primary` VALUES ('97', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15378664293661533695573666 - 副本.png', '800', '800', '0', '1', '2018-09-25 17:07:10', null);
INSERT INTO `t_goods_primary` VALUES ('98', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15378664295031533695573666.png', '800', '800', '0', '1', '2018-09-25 17:07:10', null);
INSERT INTO `t_goods_primary` VALUES ('99', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15378664296321533695590390 - 副本 - 副本.jpeg', '800', '800', '0', '1', '2018-09-25 17:07:10', null);
INSERT INTO `t_goods_primary` VALUES ('100', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15378664297621533697015274 - 副本.jpg', '410', '429', '0', '1', '2018-09-25 17:07:10', null);
INSERT INTO `t_goods_primary` VALUES ('101', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15378664297961533697015274.jpg', '410', '429', '0', '1', '2018-09-25 17:07:10', null);
INSERT INTO `t_goods_primary` VALUES ('102', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15378666666111533695590390 - 副本.jpeg', '800', '800', '1', '1', '2018-09-25 17:11:07', null);
INSERT INTO `t_goods_primary` VALUES ('103', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15378666668431533695590390.jpeg', '800', '800', '0', '1', '2018-09-25 17:11:07', null);
INSERT INTO `t_goods_primary` VALUES ('104', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15378666669681533697015274 - 副本.jpg', '410', '429', '0', '1', '2018-09-25 17:11:07', null);
INSERT INTO `t_goods_primary` VALUES ('105', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15378666670001533697015274.jpg', '410', '429', '0', '1', '2018-09-25 17:11:07', null);
INSERT INTO `t_goods_primary` VALUES ('106', '7', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15379537539851533698707125 - 副本 (2).jpg', '410', '429', '0', '1', '2018-09-26 17:22:34', null);
INSERT INTO `t_goods_primary` VALUES ('107', '7', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15379537541981533698707125 - 副本.jpg', '410', '429', '1', '1', '2018-09-26 17:22:34', null);
INSERT INTO `t_goods_primary` VALUES ('108', '7', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15379537542341533698707125.jpg', '410', '429', '0', '1', '2018-09-26 17:22:34', null);
INSERT INTO `t_goods_primary` VALUES ('109', '8', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15379550240391533697015274.jpg', '410', '429', '0', '1', '2018-09-26 17:43:44', null);
INSERT INTO `t_goods_primary` VALUES ('110', '8', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15379550241901533698707125 - 副本 - 副本.jpg', '410', '429', '0', '1', '2018-09-26 17:43:44', null);
INSERT INTO `t_goods_primary` VALUES ('111', '8', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15379550242281533698707125 - 副本 (2).jpg', '410', '429', '1', '1', '2018-09-26 17:43:44', null);
INSERT INTO `t_goods_primary` VALUES ('112', '8', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15379550242621533698707125 - 副本.jpg', '410', '429', '0', '1', '2018-09-26 17:43:44', null);
INSERT INTO `t_goods_primary` VALUES ('113', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15379572941831533698707125.jpg', '410', '429', '0', '1', '2018-09-26 18:21:34', null);
INSERT INTO `t_goods_primary` VALUES ('117', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15382843166511533698707125 - 副本 (2).jpg', '410', '429', '0', '1', '2018-09-30 13:11:57', null);
INSERT INTO `t_goods_primary` VALUES ('118', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15382843167391533698707125.jpg', '410', '429', '0', '1', '2018-09-30 13:11:57', null);
INSERT INTO `t_goods_primary` VALUES ('119', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538284316771chen.jpg', '800', '800', '0', '1', '2018-09-30 13:11:57', null);
INSERT INTO `t_goods_primary` VALUES ('120', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538284316951timg.jpeg', '1250', '668', '1', '1', '2018-09-30 13:11:57', null);
INSERT INTO `t_goods_primary` VALUES ('121', '11', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15387065528501533698707125 - 副本.jpg', '410', '429', '0', '1', '2018-10-05 10:29:13', null);
INSERT INTO `t_goods_primary` VALUES ('122', '11', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15387065531761533698707125.jpg', '410', '429', '0', '1', '2018-10-05 10:29:13', null);
INSERT INTO `t_goods_primary` VALUES ('123', '11', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538706553228chen - 副本.jpg', '800', '800', '0', '1', '2018-10-05 10:29:13', null);
INSERT INTO `t_goods_primary` VALUES ('124', '11', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538706553370chen.jpg', '800', '800', '0', '1', '2018-10-05 10:29:14', null);
INSERT INTO `t_goods_primary` VALUES ('125', '11', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538706553526timg.jpeg', '1250', '668', '1', '1', '2018-10-05 10:29:14', null);
INSERT INTO `t_goods_primary` VALUES ('126', '12', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/15387066671911533698707125.jpg', '410', '429', '0', '1', '2018-10-05 10:31:07', null);
INSERT INTO `t_goods_primary` VALUES ('127', '12', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538706667223chen - 副本.jpg', '800', '800', '0', '1', '2018-10-05 10:31:07', null);
INSERT INTO `t_goods_primary` VALUES ('128', '12', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538706667353chen.jpg', '800', '800', '0', '1', '2018-10-05 10:31:08', null);
INSERT INTO `t_goods_primary` VALUES ('129', '12', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538706667502timg.jpeg', '1250', '668', '1', '1', '2018-10-05 10:31:08', null);
INSERT INTO `t_goods_primary` VALUES ('130', '13', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538706944360th (1).jpeg', '249', '185', '0', '1', '2018-10-05 10:35:44', null);
INSERT INTO `t_goods_primary` VALUES ('131', '13', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538706944363th (2).jpeg', '238', '195', '0', '1', '2018-10-05 10:35:44', null);
INSERT INTO `t_goods_primary` VALUES ('132', '13', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538706944365th (3).jpeg', '204', '193', '0', '1', '2018-10-05 10:35:44', null);
INSERT INTO `t_goods_primary` VALUES ('133', '13', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538706944367th (4).jpeg', '131', '168', '1', '1', '2018-10-05 10:35:44', null);
INSERT INTO `t_goods_primary` VALUES ('134', '13', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538706944368th (5).jpeg', '262', '195', '0', '1', '2018-10-05 10:35:44', null);
INSERT INTO `t_goods_primary` VALUES ('135', '14', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538707207759th (1).jpeg', '249', '185', '0', '1', '2018-10-05 10:40:08', null);
INSERT INTO `t_goods_primary` VALUES ('136', '14', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538707207761th (5).jpeg', '262', '195', '1', '1', '2018-10-05 10:40:08', null);
INSERT INTO `t_goods_primary` VALUES ('137', '14', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538707207764th.jpeg', '128', '181', '0', '1', '2018-10-05 10:40:08', null);
INSERT INTO `t_goods_primary` VALUES ('138', '14', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538707207765timg.jpeg', '1250', '668', '0', '1', '2018-10-05 10:40:08', null);
INSERT INTO `t_goods_primary` VALUES ('139', '14', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538707207785下载.jpeg', '300', '168', '0', '1', '2018-10-05 10:40:08', null);
INSERT INTO `t_goods_primary` VALUES ('140', '15', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538964110593th (1).jpeg', '249', '185', '1', '1', '2018-10-08 10:01:51', null);
INSERT INTO `t_goods_primary` VALUES ('141', '15', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538964110692th (2).jpeg', '238', '195', '0', '1', '2018-10-08 10:01:51', null);
INSERT INTO `t_goods_primary` VALUES ('142', '15', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538964110694th (3).jpeg', '204', '193', '0', '1', '2018-10-08 10:01:51', null);
INSERT INTO `t_goods_primary` VALUES ('143', '15', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538964110696th (4).jpeg', '131', '168', '0', '1', '2018-10-08 10:01:51', null);
INSERT INTO `t_goods_primary` VALUES ('144', '15', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538964110698th.jpeg', '128', '181', '0', '1', '2018-10-08 10:01:51', null);
INSERT INTO `t_goods_primary` VALUES ('145', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538987195850th (4).jpeg', '131', '168', '0', '1', '2018-10-08 16:26:36', null);
INSERT INTO `t_goods_primary` VALUES ('146', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538987195853th (5).jpeg', '262', '195', '0', '1', '2018-10-08 16:26:36', null);
INSERT INTO `t_goods_primary` VALUES ('147', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538987195863th.jpeg', '128', '181', '0', '1', '2018-10-08 16:26:36', null);
INSERT INTO `t_goods_primary` VALUES ('148', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538987195866timg.jpeg', '1250', '668', '0', '1', '2018-10-08 16:26:36', null);
INSERT INTO `t_goods_primary` VALUES ('149', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1538987195896下载.jpeg', '300', '168', '0', '1', '2018-10-08 16:26:36', null);
INSERT INTO `t_goods_primary` VALUES ('155', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539154907897白菊花.png', '270', '213', '0', '1', '2018-10-10 15:01:48', null);
INSERT INTO `t_goods_primary` VALUES ('156', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539154907909百合.png', '261', '359', '0', '1', '2018-10-10 15:01:48', null);
INSERT INTO `t_goods_primary` VALUES ('157', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539154907919黄菊花.png', '285', '301', '0', '1', '2018-10-10 15:01:48', null);
INSERT INTO `t_goods_primary` VALUES ('158', null, null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539154907931马蹄莲.png', '299', '259', '0', '1', '2018-10-10 15:01:48', null);
INSERT INTO `t_goods_primary` VALUES ('159', '18', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155125242白菊花.png', '270', '213', '1', '1', '2018-10-10 15:05:25', null);
INSERT INTO `t_goods_primary` VALUES ('160', '18', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155125255百合.png', '261', '359', '0', '1', '2018-10-10 15:05:25', null);
INSERT INTO `t_goods_primary` VALUES ('161', '18', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155125264黄菊花.png', '285', '301', '0', '1', '2018-10-10 15:05:25', null);
INSERT INTO `t_goods_primary` VALUES ('162', '18', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155125275马蹄莲.png', '299', '259', '0', '1', '2018-10-10 15:05:25', null);
INSERT INTO `t_goods_primary` VALUES ('163', '19', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155181372白菊花.png', '270', '213', '0', '1', '2018-10-10 15:06:21', null);
INSERT INTO `t_goods_primary` VALUES ('164', '19', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155181381百合.png', '261', '359', '0', '1', '2018-10-10 15:06:21', null);
INSERT INTO `t_goods_primary` VALUES ('165', '19', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155181392黄菊花.png', '285', '301', '0', '1', '2018-10-10 15:06:21', null);
INSERT INTO `t_goods_primary` VALUES ('166', '19', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155181407马蹄莲.png', '299', '259', '1', '1', '2018-10-10 15:06:21', null);
INSERT INTO `t_goods_primary` VALUES ('167', '20', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155339624白菊花.png', '270', '213', '1', '1', '2018-10-10 15:09:00', null);
INSERT INTO `t_goods_primary` VALUES ('168', '20', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155339633百合.png', '261', '359', '0', '1', '2018-10-10 15:09:00', null);
INSERT INTO `t_goods_primary` VALUES ('169', '20', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155339643黄菊花.png', '285', '301', '0', '1', '2018-10-10 15:09:00', null);
INSERT INTO `t_goods_primary` VALUES ('170', '20', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155339655马蹄莲.png', '299', '259', '0', '1', '2018-10-10 15:09:00', null);
INSERT INTO `t_goods_primary` VALUES ('171', '21', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155389317白菊花.png', '270', '213', '0', '1', '2018-10-10 15:09:49', null);
INSERT INTO `t_goods_primary` VALUES ('172', '21', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155389325百合.png', '261', '359', '0', '1', '2018-10-10 15:09:49', null);
INSERT INTO `t_goods_primary` VALUES ('173', '21', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155389333黄菊花.png', '285', '301', '0', '1', '2018-10-10 15:09:49', null);
INSERT INTO `t_goods_primary` VALUES ('174', '21', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155389343马蹄莲.png', '299', '259', '0', '1', '2018-10-10 15:09:49', null);
INSERT INTO `t_goods_primary` VALUES ('175', '22', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155710502白菊花.png', '270', '213', '1', '1', '2018-10-10 15:15:11', null);
INSERT INTO `t_goods_primary` VALUES ('176', '22', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155710511百合.png', '261', '359', '0', '1', '2018-10-10 15:15:11', null);
INSERT INTO `t_goods_primary` VALUES ('177', '22', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155710519黄菊花.png', '285', '301', '0', '1', '2018-10-10 15:15:11', null);
INSERT INTO `t_goods_primary` VALUES ('178', '22', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155710531马蹄莲.png', '299', '259', '0', '1', '2018-10-10 15:15:11', null);
INSERT INTO `t_goods_primary` VALUES ('179', '23', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160692881.jpeg', '1250', '668', '1', '1', '2018-10-10 16:38:13', null);
INSERT INTO `t_goods_primary` VALUES ('180', '23', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160693063.png', '261', '359', '0', '1', '2018-10-10 16:38:13', null);
INSERT INTO `t_goods_primary` VALUES ('181', '23', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160693143.png', '285', '301', '0', '1', '2018-10-10 16:38:13', null);
INSERT INTO `t_goods_primary` VALUES ('182', '23', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160693166.png', '299', '259', '0', '1', '2018-10-10 16:38:13', null);
INSERT INTO `t_goods_primary` VALUES ('183', '23', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160693181.jpeg', '300', '168', '0', '1', '2018-10-10 16:38:13', null);
INSERT INTO `t_goods_primary` VALUES ('184', '24', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160791331.png', '270', '213', '0', '1', '2018-10-10 16:39:51', null);
INSERT INTO `t_goods_primary` VALUES ('185', '24', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160791346.png', '261', '359', '0', '1', '2018-10-10 16:39:51', null);
INSERT INTO `t_goods_primary` VALUES ('186', '24', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160791360.png', '285', '301', '0', '1', '2018-10-10 16:39:51', null);
INSERT INTO `t_goods_primary` VALUES ('187', '24', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160791376.png', '299', '259', '0', '1', '2018-10-10 16:39:51', null);
INSERT INTO `t_goods_primary` VALUES ('188', '24', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160801341.jpeg', '249', '185', '1', '1', '2018-10-10 16:40:01', null);
INSERT INTO `t_goods_primary` VALUES ('189', '25', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160856085.jpeg', '128', '181', '1', '1', '2018-10-10 16:40:56', null);
INSERT INTO `t_goods_primary` VALUES ('190', '25', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160856088.png', '270', '213', '0', '1', '2018-10-10 16:40:56', null);
INSERT INTO `t_goods_primary` VALUES ('191', '25', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160856097.png', '261', '359', '0', '1', '2018-10-10 16:40:56', null);
INSERT INTO `t_goods_primary` VALUES ('192', '25', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160856106.png', '285', '301', '0', '1', '2018-10-10 16:40:56', null);
INSERT INTO `t_goods_primary` VALUES ('193', '25', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160856118.png', '299', '259', '0', '1', '2018-10-10 16:40:56', null);
INSERT INTO `t_goods_primary` VALUES ('194', '26', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160929894.jpeg', '1250', '668', '0', '1', '2018-10-10 16:42:10', null);
INSERT INTO `t_goods_primary` VALUES ('195', '26', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160929916.png', '270', '213', '0', '1', '2018-10-10 16:42:10', null);
INSERT INTO `t_goods_primary` VALUES ('196', '26', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160929925.png', '261', '359', '0', '1', '2018-10-10 16:42:10', null);
INSERT INTO `t_goods_primary` VALUES ('197', '26', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160929935.png', '285', '301', '0', '1', '2018-10-10 16:42:10', null);
INSERT INTO `t_goods_primary` VALUES ('198', '26', null, 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539160929945.png', '299', '259', '1', '1', '2018-10-10 16:42:10', null);
INSERT INTO `t_goods_primary` VALUES ('199', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/goods-image/1540983733242.jpeg', '1250', '668', '0', '1', '2018-10-31 19:02:13', null);
INSERT INTO `t_goods_primary` VALUES ('200', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/goods-image/1540983890706.jpeg', '128', '181', '0', '1', '2018-10-31 19:04:51', null);
INSERT INTO `t_goods_primary` VALUES ('201', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/goods-image/1540983903518.jpeg', '262', '195', '0', '1', '2018-10-31 19:05:04', null);
INSERT INTO `t_goods_primary` VALUES ('202', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/goods-image/1540983903520.jpeg', '204', '193', '0', '1', '2018-10-31 19:05:04', null);
INSERT INTO `t_goods_primary` VALUES ('203', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/goods-image/1540983903522.jpeg', '1250', '668', '0', '1', '2018-10-31 19:05:04', null);
INSERT INTO `t_goods_primary` VALUES ('204', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/goods-image/1540983903536.jpeg', '128', '181', '0', '1', '2018-10-31 19:05:04', null);
INSERT INTO `t_goods_primary` VALUES ('205', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/goods-image/1540983903537.png', '270', '213', '0', '1', '2018-10-31 19:05:04', null);
INSERT INTO `t_goods_primary` VALUES ('207', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/goods-image/1542012207379.jpg', '1600', '900', '0', '1', '2018-11-12 16:43:27', null);
INSERT INTO `t_goods_primary` VALUES ('208', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/goods-image/1542012207402.jpg', '800', '373', '0', '1', '2018-11-12 16:43:27', null);
INSERT INTO `t_goods_primary` VALUES ('209', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/goods-image/1542012207408.jpg', '800', '373', '1', '1', '2018-11-12 16:43:27', null);
INSERT INTO `t_goods_primary` VALUES ('210', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/goods-image/1542012207414.jpg', '800', '373', '0', '1', '2018-11-12 16:43:27', null);
INSERT INTO `t_goods_primary` VALUES ('211', null, null, 'http://www.lifecrystal.cn/lifecrystal-upload/goods-image/1542012245905.jpg', '1920', '1200', '0', '1', '2018-11-12 16:44:06', null);

-- ----------------------------
-- Table structure for t_grid
-- ----------------------------
DROP TABLE IF EXISTS `t_grid`;
CREATE TABLE `t_grid` (
  `grid_id` int(11) NOT NULL AUTO_INCREMENT,
  `domain_id` int(11) DEFAULT NULL COMMENT '区域的Id',
  `decedent_id` int(11) DEFAULT NULL COMMENT '逝者id，可以多个，用逗号分隔',
  `number` varchar(20) DEFAULT NULL COMMENT '格子的号码',
  `code` varchar(255) DEFAULT NULL COMMENT '格子的编号',
  `light_open` datetime DEFAULT NULL COMMENT '点灯的时间',
  `light_time` varchar(255) DEFAULT NULL COMMENT '点灯多长时间关闭',
  `activated` int(1) DEFAULT '0' COMMENT '灯是否开启的状态 1 开启 0 关闭',
  `deleted` int(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`grid_id`),
  KEY `index_d` (`domain_id`) USING BTREE,
  KEY `index_dece` (`decedent_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1506 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_grid
-- ----------------------------
INSERT INTO `t_grid` VALUES ('1216', '12', null, '1', 'C1-1', '2018-12-10 15:03:56', '5', '0', null, null, '2018-11-17 19:51:56');
INSERT INTO `t_grid` VALUES ('1217', '12', null, '2', 'C1-2', '2018-12-22 10:59:00', '5', '0', null, null, '2018-11-12 21:43:02');
INSERT INTO `t_grid` VALUES ('1218', '12', null, '3', 'C1-3', '2018-11-12 22:08:31', '3', '0', null, null, '2018-11-12 21:43:02');
INSERT INTO `t_grid` VALUES ('1219', '12', null, '4', 'C1-4', '2018-11-24 14:48:23', '5', '0', null, null, '2018-11-12 21:43:03');
INSERT INTO `t_grid` VALUES ('1220', '12', null, '5', 'C1-5', '2018-12-15 11:25:33', '5', '0', null, null, '2018-11-12 21:43:03');
INSERT INTO `t_grid` VALUES ('1221', '12', null, '6', 'C1-6', '2019-01-07 12:48:37', '15', '0', null, null, '2018-11-12 21:43:03');
INSERT INTO `t_grid` VALUES ('1222', '12', null, '7', 'C1-7', '2018-11-14 16:29:21', '5', '0', null, null, '2018-11-12 21:43:03');
INSERT INTO `t_grid` VALUES ('1223', '12', null, '8', 'C1-8', null, null, '0', null, null, '2018-11-12 21:43:03');
INSERT INTO `t_grid` VALUES ('1224', '12', null, '9', 'C1-9', '2018-12-22 10:14:21', '5', '0', null, null, '2018-11-12 21:44:37');
INSERT INTO `t_grid` VALUES ('1225', '12', null, '10', 'C1-10', '2018-12-13 22:06:36', '5', '0', null, null, '2018-11-12 21:44:37');
INSERT INTO `t_grid` VALUES ('1226', '12', null, '11', 'C1-11', '2019-01-02 11:56:10', '5', '0', null, null, '2018-11-12 21:44:37');
INSERT INTO `t_grid` VALUES ('1227', '12', null, '12', 'C1-12', '2018-12-02 09:04:23', '5', '0', null, null, '2018-11-12 21:44:37');
INSERT INTO `t_grid` VALUES ('1228', '12', null, '13', 'C1-13', null, null, '0', null, null, '2018-11-12 21:44:37');
INSERT INTO `t_grid` VALUES ('1229', '12', null, '14', 'C1-14', null, null, '0', null, null, '2018-11-12 21:44:37');
INSERT INTO `t_grid` VALUES ('1230', '12', null, '15', 'C1-15', null, null, '0', null, null, '2018-11-12 21:44:37');
INSERT INTO `t_grid` VALUES ('1231', '12', null, '16', 'C1-16', '2019-01-06 11:29:26', '5', '0', null, null, '2018-11-12 21:44:37');
INSERT INTO `t_grid` VALUES ('1232', '12', null, '17', 'C1-17', '2018-12-21 12:58:42', '5', '0', null, null, '2018-11-12 21:44:37');
INSERT INTO `t_grid` VALUES ('1233', '12', null, '18', 'C1-18', '2018-11-13 15:57:24', '5', '0', null, null, '2018-11-12 21:44:37');
INSERT INTO `t_grid` VALUES ('1234', '12', null, '19', 'C1-19', null, null, '0', null, null, '2018-11-12 21:44:37');
INSERT INTO `t_grid` VALUES ('1235', '12', null, '20', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1236', '12', null, '21', 'C2-1', null, null, '0', null, null, '2018-11-12 21:45:36');
INSERT INTO `t_grid` VALUES ('1237', '12', null, '22', 'C2-2', '2018-11-26 10:39:06', '5', '0', null, null, '2018-11-12 21:45:36');
INSERT INTO `t_grid` VALUES ('1238', '12', null, '23', 'C2-3', '2018-12-01 14:30:35', '5', '0', null, null, '2018-11-12 21:45:36');
INSERT INTO `t_grid` VALUES ('1239', '12', null, '24', 'C2-4', '2019-01-06 14:00:45', '5', '0', null, null, '2018-11-12 21:45:36');
INSERT INTO `t_grid` VALUES ('1240', '12', null, '25', 'C2-5', '2019-01-04 10:17:42', '5', '0', null, null, '2018-11-12 21:45:36');
INSERT INTO `t_grid` VALUES ('1241', '12', null, '26', 'C2-6', null, null, '0', null, null, '2018-11-12 21:45:36');
INSERT INTO `t_grid` VALUES ('1242', '12', null, '27', 'C2-7', '2018-12-01 14:30:30', '5', '0', null, null, '2018-11-12 21:45:36');
INSERT INTO `t_grid` VALUES ('1243', '12', null, '28', 'C2-8', '2018-11-24 14:47:54', '5', '0', null, null, '2018-11-12 21:45:36');
INSERT INTO `t_grid` VALUES ('1244', '12', null, '29', 'C2-9', '2018-12-22 14:58:29', '5', '0', null, null, '2018-11-12 21:45:36');
INSERT INTO `t_grid` VALUES ('1245', '12', null, '30', 'C2-10', '2018-12-22 10:31:08', '5', '0', null, null, '2018-11-12 21:45:36');
INSERT INTO `t_grid` VALUES ('1246', '12', null, '31', 'C2-11', '2018-12-01 13:48:06', '5', '0', null, null, '2018-11-12 21:45:36');
INSERT INTO `t_grid` VALUES ('1247', '12', null, '32', 'C2-12', '2018-12-25 16:26:41', '5', '0', null, null, '2018-11-12 21:45:36');
INSERT INTO `t_grid` VALUES ('1248', '12', null, '33', 'C2-13', '2018-12-22 16:50:34', '5', '0', null, null, '2018-11-12 21:45:36');
INSERT INTO `t_grid` VALUES ('1249', '12', null, '34', 'C2-14', '2018-12-26 15:49:53', '5', '0', null, null, '2018-11-12 21:45:36');
INSERT INTO `t_grid` VALUES ('1250', '12', null, '35', 'C2-15', '2019-01-07 11:37:43', '15', '0', null, null, '2018-11-12 21:45:36');
INSERT INTO `t_grid` VALUES ('1251', '12', null, '36', 'C2-16', null, null, '0', null, null, '2018-11-12 21:45:36');
INSERT INTO `t_grid` VALUES ('1252', '12', null, '37', 'C2-17', '2018-12-01 12:00:57', '5', '0', null, null, '2018-11-12 21:45:36');
INSERT INTO `t_grid` VALUES ('1253', '12', null, '38', 'C2-18', '2019-01-03 10:47:33', '5', '0', null, null, '2018-11-12 21:45:36');
INSERT INTO `t_grid` VALUES ('1254', '12', null, '39', 'C2-19', null, null, '0', null, null, '2018-11-12 21:45:36');
INSERT INTO `t_grid` VALUES ('1255', '12', null, '40', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1256', '12', null, '41', 'C3-1', '2018-11-17 12:55:23', '5', '0', null, null, '2018-11-17 13:12:16');
INSERT INTO `t_grid` VALUES ('1257', '12', null, '42', 'C3-2', null, null, '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1258', '12', null, '43', 'C3-3', '2019-01-02 10:23:16', '5', '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1259', '12', null, '44', 'C3-4', '2018-12-26 16:13:19', '5', '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1260', '12', null, '45', 'C3-5', '2018-12-08 10:28:19', '5', '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1261', '12', null, '46', 'C3-6', '2018-12-27 09:14:51', '5', '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1262', '12', null, '47', 'C3-7', '2018-11-24 09:15:24', '5', '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1263', '12', null, '48', 'C3-8', null, null, '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1264', '12', null, '49', 'C3-9', '2018-12-22 11:43:44', '5', '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1265', '12', null, '50', 'C3-10', '2018-12-22 18:12:44', '5', '0', null, null, '2018-11-17 13:41:01');
INSERT INTO `t_grid` VALUES ('1266', '12', null, '51', 'C3-11', '2018-12-22 14:36:32', '5', '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1267', '12', null, '52', 'C3-12', '2019-01-06 12:11:14', '5', '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1268', '12', null, '53', 'C3-13', null, null, '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1269', '12', null, '54', 'C3-14', null, null, '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1270', '12', null, '55', 'C3-15', '2018-12-08 16:19:17', '5', '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1271', '12', null, '56', 'C3-16', '2018-12-22 13:47:08', '5', '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1272', '12', null, '57', 'C3-17', null, null, '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1273', '12', null, '58', 'C3-18', '2018-12-01 14:31:16', '5', '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1274', '12', null, '59', 'C3-19', null, null, '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1275', '12', null, '60', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1276', '12', null, '61', 'C4-1', '2018-11-17 12:55:39', '5', '0', null, null, '2018-11-17 13:13:12');
INSERT INTO `t_grid` VALUES ('1277', '12', null, '62', 'C4-2', '2018-12-22 11:16:38', '5', '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1278', '12', null, '63', 'C4-3', '2018-11-26 14:42:05', '5', '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1279', '12', null, '64', 'C4-4', '2018-12-29 14:16:50', '5', '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1280', '12', null, '65', 'C4-5', '2018-12-23 09:58:07', '5', '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1281', '12', null, '66', 'C4-6', null, null, '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1282', '12', null, '67', 'C4-7', '2018-12-24 16:30:56', '5', '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1283', '12', null, '68', 'C4-8', '2018-12-18 11:55:50', '5', '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1284', '12', null, '69', 'C4-9', null, null, '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1285', '12', null, '70', 'C4-10', null, null, '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1286', '12', null, '71', 'C4-11', '2018-11-20 10:20:59', '5', '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1287', '12', null, '72', 'C4-12', '2018-12-22 10:40:58', '5', '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1288', '12', null, '73', 'C4-13', '2018-11-20 10:50:36', '5', '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1289', '12', null, '74', 'C4-14', '2018-12-20 23:23:28', '5', '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1290', '12', null, '75', 'C4-15', '2018-12-08 14:18:29', '5', '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1291', '12', null, '76', 'C4-16', '2018-11-25 15:43:48', '5', '0', null, null, '2018-11-12 21:47:41');
INSERT INTO `t_grid` VALUES ('1292', '12', null, '77', 'C4-17', '2018-11-25 16:23:44', '5', '0', null, null, '2018-11-12 21:47:42');
INSERT INTO `t_grid` VALUES ('1293', '12', null, '78', 'C4-18', '2018-12-10 16:40:40', '5', '0', null, null, '2018-11-12 21:47:42');
INSERT INTO `t_grid` VALUES ('1294', '12', null, '79', 'C4-19', null, null, '0', null, null, '2018-11-12 21:47:42');
INSERT INTO `t_grid` VALUES ('1295', '12', null, '80', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1296', '12', null, '81', 'C5-1', '2018-11-17 20:30:19', '5', '0', null, null, '2018-11-12 21:50:21');
INSERT INTO `t_grid` VALUES ('1297', '12', null, '82', 'C5-2', '2018-12-03 18:15:43', '5', '0', null, null, '2018-11-12 21:50:21');
INSERT INTO `t_grid` VALUES ('1298', '12', null, '83', 'C5-3', '2018-12-22 10:44:55', '5', '0', null, null, '2018-11-12 21:50:21');
INSERT INTO `t_grid` VALUES ('1299', '12', null, '84', 'C5-4', '2019-01-03 19:30:09', '5', '0', null, null, '2018-11-12 21:50:21');
INSERT INTO `t_grid` VALUES ('1300', '12', null, '85', 'C5-5', '2018-12-08 13:29:42', '5', '0', null, null, '2018-11-12 21:50:21');
INSERT INTO `t_grid` VALUES ('1301', '12', null, '86', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1302', '12', null, '87', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1303', '12', null, '88', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1304', '12', null, '89', 'C5-9', null, null, '0', null, null, '2018-11-12 21:50:21');
INSERT INTO `t_grid` VALUES ('1305', '12', null, '90', 'C5-10', null, null, '0', null, null, '2018-11-12 21:50:21');
INSERT INTO `t_grid` VALUES ('1306', '12', null, '91', 'C5-11', '2018-12-27 21:35:57', '5', '0', null, null, '2018-11-12 21:50:21');
INSERT INTO `t_grid` VALUES ('1307', '12', null, '92', 'C5-12', '2019-01-03 14:44:05', '5', '0', null, null, '2018-11-12 21:50:21');
INSERT INTO `t_grid` VALUES ('1308', '12', null, '93', 'C5-13', '2018-12-08 10:21:23', '5', '0', null, null, '2018-11-12 21:50:21');
INSERT INTO `t_grid` VALUES ('1309', '12', null, '94', 'C5-14', '2018-12-25 13:43:35', '5', '0', null, null, '2018-11-12 21:50:21');
INSERT INTO `t_grid` VALUES ('1310', '12', null, '95', 'C5-15', '2018-12-22 14:27:22', '5', '0', null, null, '2018-11-12 21:50:21');
INSERT INTO `t_grid` VALUES ('1311', '12', null, '96', 'C5-16', null, null, '0', null, null, '2018-11-12 21:50:21');
INSERT INTO `t_grid` VALUES ('1312', '12', null, '97', 'C5-17', null, null, '0', null, null, '2018-11-12 21:50:21');
INSERT INTO `t_grid` VALUES ('1313', '12', null, '98', 'C5-18', '2018-11-25 10:36:34', '5', '0', null, null, '2018-11-12 21:50:21');
INSERT INTO `t_grid` VALUES ('1314', '12', null, '99', '', null, null, '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1315', '12', null, '100', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1316', '12', null, '101', 'C6-1', '2018-12-07 13:28:20', '5', '0', null, null, '2018-11-17 14:03:40');
INSERT INTO `t_grid` VALUES ('1317', '12', null, '102', 'C6-2', null, null, '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1318', '12', null, '103', 'C6-3', null, null, '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1319', '12', null, '104', 'C6-4', '2018-12-29 20:55:00', '5', '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1320', '12', null, '105', 'C6-5', '2018-12-28 09:32:54', '5', '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1321', '12', null, '106', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1322', '12', null, '107', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1323', '12', null, '108', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1324', '12', null, '109', 'C6-9', '2018-11-23 09:14:07', '5', '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1325', '12', null, '110', 'C6-10', null, null, '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1326', '12', null, '111', 'C6-11', '2019-01-02 15:54:08', '5', '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1327', '12', null, '112', 'C6-12', '2018-12-22 09:50:24', '5', '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1328', '12', null, '113', 'C6-13', '2018-12-13 10:29:17', '5', '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1329', '12', null, '114', 'C6-14', null, null, '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1330', '12', null, '115', 'C6-15', null, null, '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1331', '12', null, '116', 'C6-16', '2018-11-24 14:46:08', '5', '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1332', '12', null, '117', 'C6-17', '2018-12-22 10:38:12', '5', '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1333', '12', null, '118', 'C6-18', '2018-12-09 14:12:40', '5', '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1334', '12', null, '119', 'C6-19', null, null, '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1335', '12', null, '120', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1336', '12', null, '121', 'C7-1', null, null, '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1337', '12', null, '122', 'C7-2', null, null, '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1338', '12', null, '123', 'C7-3', '2018-12-08 14:26:08', '5', '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1339', '12', null, '124', 'C7-4', '2018-11-21 15:15:18', '5', '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1340', '12', null, '125', 'C7-5', null, null, '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1341', '12', null, '126', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1342', '12', null, '127', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1343', '12', null, '128', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1344', '12', null, '129', 'C7-9', '2018-12-26 07:28:58', '5', '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1345', '12', null, '130', 'C7-10', '2018-12-08 10:11:42', '5', '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1346', '12', null, '131', 'C7-11', '2019-01-06 16:09:29', '5', '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1347', '12', null, '132', 'C7-12', '2018-11-24 13:28:42', '5', '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1348', '12', null, '133', 'C7-13', '2018-11-24 14:41:27', '5', '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1349', '12', null, '134', 'C7-14', '2019-01-01 10:52:09', '5', '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1350', '12', null, '135', 'C7-15', null, null, '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1351', '12', null, '136', 'C7-16', '2018-12-05 20:53:49', '5', '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1352', '12', null, '137', 'C7-17', null, null, '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1353', '12', null, '138', 'C7-18', null, null, '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1354', '12', null, '139', 'C7-19', null, null, '0', null, null, '2018-11-12 21:52:20');
INSERT INTO `t_grid` VALUES ('1355', '12', null, '140', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1356', '12', null, '141', 'C8-1', '2019-01-02 12:54:03', '5', '0', null, null, '2018-11-17 13:41:31');
INSERT INTO `t_grid` VALUES ('1357', '12', null, '142', 'C8-2', null, null, '0', null, null, '2018-11-12 21:53:24');
INSERT INTO `t_grid` VALUES ('1358', '12', null, '143', 'C8-3', '2018-11-25 10:17:51', '5', '0', null, null, '2018-11-12 21:53:24');
INSERT INTO `t_grid` VALUES ('1359', '12', null, '144', 'C8-4', null, null, '0', null, null, '2018-11-12 21:53:24');
INSERT INTO `t_grid` VALUES ('1360', '12', null, '145', 'C8-5', null, null, '0', null, null, '2018-11-12 21:53:24');
INSERT INTO `t_grid` VALUES ('1361', '12', null, '146', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1362', '12', null, '147', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1363', '12', null, '148', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1364', '12', null, '149', 'C8-9', '2018-12-31 20:24:59', '5', '0', null, null, '2018-11-12 21:53:24');
INSERT INTO `t_grid` VALUES ('1365', '12', null, '150', 'C8-10', '2018-12-18 10:21:23', '5', '0', null, null, '2018-11-12 21:53:24');
INSERT INTO `t_grid` VALUES ('1366', '12', null, '151', 'C8-11', '2018-12-22 08:34:58', '5', '0', null, null, '2018-11-12 21:53:24');
INSERT INTO `t_grid` VALUES ('1367', '12', null, '152', 'C8-12', '2018-12-09 10:09:33', '5', '0', null, null, '2018-11-12 21:53:24');
INSERT INTO `t_grid` VALUES ('1368', '12', null, '153', 'C8-13', null, null, '0', null, null, '2018-11-12 21:53:24');
INSERT INTO `t_grid` VALUES ('1369', '12', null, '154', 'C8-14', '2019-01-02 13:48:58', '5', '0', null, null, '2018-11-12 21:53:24');
INSERT INTO `t_grid` VALUES ('1370', '12', null, '155', 'C8-15', null, null, '0', null, null, '2018-11-12 21:53:24');
INSERT INTO `t_grid` VALUES ('1371', '12', null, '156', 'C8-16', null, null, '0', null, null, '2018-11-12 21:53:24');
INSERT INTO `t_grid` VALUES ('1372', '12', null, '157', 'C8-17', '2018-12-23 10:14:46', '5', '0', null, null, '2018-11-12 21:53:24');
INSERT INTO `t_grid` VALUES ('1373', '12', null, '158', 'C8-18', '2018-12-26 21:01:31', '5', '0', null, null, '2018-11-12 21:53:24');
INSERT INTO `t_grid` VALUES ('1374', '12', null, '159', 'C8-19', null, null, '0', null, null, '2018-11-12 21:53:24');
INSERT INTO `t_grid` VALUES ('1375', '12', null, '160', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1376', '19', null, '1', '2', null, null, '0', null, null, '2018-11-12 21:58:45');
INSERT INTO `t_grid` VALUES ('1377', '19', null, '2', '2', null, null, '0', null, null, '2018-11-12 21:58:45');
INSERT INTO `t_grid` VALUES ('1378', '19', null, '3', '2', null, null, '0', null, null, '2018-11-12 21:58:45');
INSERT INTO `t_grid` VALUES ('1379', '19', null, '4', 'E', null, null, '0', null, null, '2018-11-12 21:58:45');
INSERT INTO `t_grid` VALUES ('1380', '19', null, '5', 'C', null, null, '0', null, null, '2018-11-12 21:58:45');
INSERT INTO `t_grid` VALUES ('1381', '19', null, '6', 'CD', null, null, '0', null, null, '2018-11-12 21:58:45');
INSERT INTO `t_grid` VALUES ('1382', '19', null, '7', 'CDS', null, null, '0', null, null, '2018-11-12 21:58:45');
INSERT INTO `t_grid` VALUES ('1383', '19', null, '8', 'CD', null, null, '0', null, null, '2018-11-12 21:58:45');
INSERT INTO `t_grid` VALUES ('1384', '19', null, '9', 'CD', null, null, '0', null, null, '2018-11-12 21:58:45');
INSERT INTO `t_grid` VALUES ('1385', '12', null, '161', 'C9-1', null, null, '0', null, null, '2018-11-12 21:54:49');
INSERT INTO `t_grid` VALUES ('1386', '12', null, '162', 'C9-2', '2018-12-16 14:02:23', '5', '0', null, null, '2018-11-12 21:54:49');
INSERT INTO `t_grid` VALUES ('1387', '12', null, '163', 'C9-3', '2018-12-10 12:56:46', '5', '0', null, null, '2018-11-12 21:54:49');
INSERT INTO `t_grid` VALUES ('1388', '12', null, '164', 'C9-4', null, null, '0', null, null, '2018-11-12 21:54:49');
INSERT INTO `t_grid` VALUES ('1389', '12', null, '165', 'C9-5', '2018-12-09 08:33:21', '5', '0', null, null, '2018-11-12 21:54:49');
INSERT INTO `t_grid` VALUES ('1390', '12', null, '166', 'C9-6', null, null, '0', null, null, '2018-11-12 21:54:49');
INSERT INTO `t_grid` VALUES ('1391', '12', null, '167', 'C9-7', '2018-12-03 12:32:30', '5', '0', null, null, '2018-11-12 21:54:49');
INSERT INTO `t_grid` VALUES ('1392', '12', null, '168', 'C9-8', '2019-01-03 09:34:35', '5', '0', null, null, '2018-11-12 21:54:49');
INSERT INTO `t_grid` VALUES ('1393', '12', null, '169', 'C9-9', null, null, '0', null, null, '2018-11-12 21:54:49');
INSERT INTO `t_grid` VALUES ('1394', '12', null, '170', 'C9-10', '2019-01-04 14:16:25', '5', '0', null, null, '2018-11-12 21:54:49');
INSERT INTO `t_grid` VALUES ('1395', '12', null, '171', 'C9-11', '2018-12-22 10:34:58', '5', '0', null, null, '2018-11-12 21:54:49');
INSERT INTO `t_grid` VALUES ('1396', '12', null, '172', 'C9-12', '2019-01-01 22:05:07', '5', '0', null, null, '2018-11-12 21:54:50');
INSERT INTO `t_grid` VALUES ('1397', '12', null, '173', 'C9-13', '2018-12-31 11:10:40', '5', '0', null, null, '2018-11-12 21:54:50');
INSERT INTO `t_grid` VALUES ('1398', '12', null, '174', 'C9-14', '2018-12-16 10:56:09', '5', '0', null, null, '2018-11-12 21:54:50');
INSERT INTO `t_grid` VALUES ('1399', '12', null, '175', 'C9-15', '2018-12-09 14:11:30', '5', '0', null, null, '2018-11-12 21:54:50');
INSERT INTO `t_grid` VALUES ('1400', '12', null, '176', 'C9-16', '2018-12-23 08:49:51', '5', '0', null, null, '2018-11-12 21:54:50');
INSERT INTO `t_grid` VALUES ('1401', '12', null, '177', 'C9-17', '2018-12-22 13:16:34', '5', '0', null, null, '2018-11-12 21:54:50');
INSERT INTO `t_grid` VALUES ('1402', '12', null, '178', 'C9-18', '2018-12-22 15:55:54', '5', '0', null, null, '2018-11-12 21:54:50');
INSERT INTO `t_grid` VALUES ('1403', '12', null, '179', 'C9-19', null, null, '0', null, null, '2018-11-12 21:54:50');
INSERT INTO `t_grid` VALUES ('1404', '12', null, '180', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1405', '12', null, '181', 'C10-1', null, null, '0', null, null, '2018-11-12 21:55:45');
INSERT INTO `t_grid` VALUES ('1406', '12', null, '182', 'C10-2', '2018-12-24 16:59:54', '5', '0', null, null, '2018-11-12 21:55:45');
INSERT INTO `t_grid` VALUES ('1407', '12', null, '183', 'C10-3', '2018-12-23 09:09:17', '5', '0', null, null, '2018-11-12 21:55:45');
INSERT INTO `t_grid` VALUES ('1408', '12', null, '184', 'C10-4', '2018-12-22 10:30:24', '5', '0', null, null, '2018-11-12 21:55:45');
INSERT INTO `t_grid` VALUES ('1409', '12', null, '185', 'C10-5', '2018-12-02 10:29:52', '5', '0', null, null, '2018-11-12 21:55:45');
INSERT INTO `t_grid` VALUES ('1410', '12', null, '186', 'C10-6', null, null, '0', null, null, '2018-11-12 21:55:45');
INSERT INTO `t_grid` VALUES ('1411', '12', null, '187', 'C10-7', null, null, '0', null, null, '2018-11-12 21:55:45');
INSERT INTO `t_grid` VALUES ('1412', '12', null, '188', 'C10-8', '2018-12-22 10:22:30', '5', '0', null, null, '2018-11-12 21:55:45');
INSERT INTO `t_grid` VALUES ('1413', '12', null, '189', 'C10-9', '2019-01-02 10:19:30', '5', '0', null, null, '2018-11-12 21:55:45');
INSERT INTO `t_grid` VALUES ('1414', '12', null, '190', 'C10-10', '2018-12-21 15:24:01', '5', '0', null, null, '2018-11-12 21:55:45');
INSERT INTO `t_grid` VALUES ('1415', '12', null, '191', 'C10-11', '2018-12-10 09:38:01', '5', '0', null, null, '2018-11-12 21:55:45');
INSERT INTO `t_grid` VALUES ('1416', '12', null, '192', 'C10-12', '2018-12-08 10:11:30', '5', '0', null, null, '2018-11-12 21:55:45');
INSERT INTO `t_grid` VALUES ('1417', '12', null, '193', 'C10-13', '2019-01-05 19:22:45', '5', '0', null, null, '2018-11-12 21:55:45');
INSERT INTO `t_grid` VALUES ('1418', '12', null, '194', 'C10-14', '2018-12-08 10:20:20', '5', '0', null, null, '2018-11-12 21:55:45');
INSERT INTO `t_grid` VALUES ('1419', '12', null, '195', 'C10-15', null, null, '0', null, null, '2018-11-12 21:55:45');
INSERT INTO `t_grid` VALUES ('1420', '12', null, '196', 'C10-16', null, null, '0', null, null, '2018-11-12 21:55:45');
INSERT INTO `t_grid` VALUES ('1421', '12', null, '197', 'C10-17', '2018-11-17 12:23:58', '5', '0', null, null, '2018-11-12 21:55:45');
INSERT INTO `t_grid` VALUES ('1422', '12', null, '198', 'C10-18', null, null, '0', null, null, '2018-11-12 21:55:45');
INSERT INTO `t_grid` VALUES ('1423', '12', null, '199', 'C10-19', null, null, '0', null, null, '2018-11-12 21:55:45');
INSERT INTO `t_grid` VALUES ('1424', '12', null, '200', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1425', '12', null, '201', 'C11-1', null, null, '0', null, null, '2018-11-12 21:57:19');
INSERT INTO `t_grid` VALUES ('1426', '12', null, '202', 'C11-2', '2018-11-26 17:52:01', '5', '0', null, null, '2018-11-12 21:57:19');
INSERT INTO `t_grid` VALUES ('1427', '12', null, '203', 'C11-3', '2018-12-22 11:09:41', '5', '0', null, null, '2018-11-12 21:57:19');
INSERT INTO `t_grid` VALUES ('1428', '12', null, '204', 'C11-4', '2018-12-23 10:48:15', '5', '0', null, null, '2018-11-12 21:57:19');
INSERT INTO `t_grid` VALUES ('1429', '12', null, '205', 'C11-5', '2018-11-13 20:14:50', '5', '0', null, null, '2018-11-12 21:57:19');
INSERT INTO `t_grid` VALUES ('1430', '12', null, '206', 'C11-6', '2018-12-09 10:20:31', '5', '0', null, null, '2018-11-12 21:57:19');
INSERT INTO `t_grid` VALUES ('1431', '12', null, '207', 'C11-7', '2018-12-07 19:03:52', '5', '0', null, null, '2018-11-12 21:57:19');
INSERT INTO `t_grid` VALUES ('1432', '12', null, '208', 'C11-8', '2018-11-24 14:46:47', '5', '0', null, null, '2018-11-12 21:57:19');
INSERT INTO `t_grid` VALUES ('1433', '12', null, '209', 'C11-9', null, null, '0', null, null, '2018-11-12 21:57:19');
INSERT INTO `t_grid` VALUES ('1434', '12', null, '210', 'C11-10', '2018-12-25 23:59:42', '5', '0', null, null, '2018-11-12 21:57:19');
INSERT INTO `t_grid` VALUES ('1435', '12', null, '211', 'C11-11', '2018-11-24 14:46:02', '5', '0', null, null, '2018-11-12 21:57:19');
INSERT INTO `t_grid` VALUES ('1436', '12', null, '212', 'C11-12', '2019-01-03 15:50:51', '5', '0', null, null, '2018-11-12 21:57:19');
INSERT INTO `t_grid` VALUES ('1437', '12', null, '213', 'C11-13', '2018-12-09 21:51:59', '5', '0', null, null, '2018-11-12 21:57:19');
INSERT INTO `t_grid` VALUES ('1438', '12', null, '214', 'C11-14', '2018-11-14 10:04:25', '5', '0', null, null, '2018-11-12 21:57:19');
INSERT INTO `t_grid` VALUES ('1439', '12', null, '215', 'C11-15', '2018-12-02 10:04:14', '5', '0', null, null, '2018-11-12 21:57:19');
INSERT INTO `t_grid` VALUES ('1440', '12', null, '216', 'C11-16', '2018-11-23 00:18:51', '5', '0', null, null, '2018-11-12 21:57:19');
INSERT INTO `t_grid` VALUES ('1441', '12', null, '217', 'C11-17', '2018-11-28 17:10:46', '5', '0', null, null, '2018-11-12 21:57:19');
INSERT INTO `t_grid` VALUES ('1442', '12', null, '218', 'C11-18', null, null, '0', null, null, '2018-11-12 21:57:19');
INSERT INTO `t_grid` VALUES ('1443', '12', null, '219', 'C11-19', null, null, '0', null, null, '2018-11-12 21:57:19');
INSERT INTO `t_grid` VALUES ('1444', '12', null, '220', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1445', '12', null, '221', 'C12-1', null, null, '0', null, null, '2018-11-12 21:58:20');
INSERT INTO `t_grid` VALUES ('1446', '12', null, '222', 'C12-2', '2018-11-17 12:12:35', '5', '0', null, null, '2018-11-12 21:58:20');
INSERT INTO `t_grid` VALUES ('1447', '12', null, '223', 'C12-3', '2018-12-02 09:04:16', '5', '0', null, null, '2018-11-12 21:58:20');
INSERT INTO `t_grid` VALUES ('1448', '12', null, '224', 'C12-4', '2018-12-09 14:08:52', '5', '0', null, null, '2018-11-12 21:58:20');
INSERT INTO `t_grid` VALUES ('1449', '12', null, '225', 'C12-5', '2018-11-25 10:24:38', '5', '0', null, null, '2018-11-12 21:58:20');
INSERT INTO `t_grid` VALUES ('1450', '12', null, '226', 'C12-6', '2018-12-26 16:29:01', '5', '0', null, null, '2018-11-12 21:58:20');
INSERT INTO `t_grid` VALUES ('1451', '12', null, '227', 'C12-7', null, null, '0', null, null, '2018-11-12 21:58:20');
INSERT INTO `t_grid` VALUES ('1452', '12', null, '228', 'C12-8', null, null, '0', null, null, '2018-11-12 21:58:20');
INSERT INTO `t_grid` VALUES ('1453', '12', null, '229', 'C12-9', '2018-12-22 10:43:00', '5', '0', null, null, '2018-11-12 21:58:20');
INSERT INTO `t_grid` VALUES ('1454', '12', null, '230', 'C12-10', '2018-12-02 16:05:55', '5', '0', null, null, '2018-11-12 21:58:20');
INSERT INTO `t_grid` VALUES ('1455', '12', null, '231', 'C12-11', null, null, '0', null, null, '2018-11-12 21:58:20');
INSERT INTO `t_grid` VALUES ('1456', '12', null, '232', 'C12-12', null, null, '0', null, null, '2018-11-12 21:58:20');
INSERT INTO `t_grid` VALUES ('1457', '12', null, '233', 'C12-13', '2018-12-29 09:31:04', '5', '0', null, null, '2018-11-12 21:58:20');
INSERT INTO `t_grid` VALUES ('1458', '12', null, '234', 'C12-14', '2019-01-02 14:43:56', '5', '0', null, null, '2018-11-12 21:58:20');
INSERT INTO `t_grid` VALUES ('1459', '12', null, '235', 'C12-15', null, null, '0', null, null, '2018-11-12 21:58:20');
INSERT INTO `t_grid` VALUES ('1460', '12', null, '236', 'C12-16', '2018-11-25 11:31:20', '5', '0', null, null, '2018-11-12 21:58:20');
INSERT INTO `t_grid` VALUES ('1461', '12', null, '237', 'C12-17', '2018-11-26 13:45:07', '5', '0', null, null, '2018-11-12 21:58:20');
INSERT INTO `t_grid` VALUES ('1462', '12', null, '238', 'C12-18', '2018-12-09 10:18:02', '5', '0', null, null, '2018-11-12 21:58:20');
INSERT INTO `t_grid` VALUES ('1463', '12', null, '239', 'C12-19', null, null, '0', null, null, '2018-11-12 21:58:20');
INSERT INTO `t_grid` VALUES ('1464', '12', null, '240', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1465', '19', null, '10', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1466', '19', null, '11', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1467', '19', null, '12', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1468', '19', null, '13', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1469', '19', null, '14', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1470', '19', null, '15', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1471', '19', null, '16', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1472', '19', null, '17', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1473', '19', null, '18', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1474', '19', null, '19', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1475', '19', null, '20', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1476', '19', null, '21', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1477', '19', null, '22', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1478', '19', null, '23', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1479', '19', null, '24', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1480', '19', null, '25', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1481', '19', null, '26', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1482', '19', null, '27', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1483', '19', null, '28', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1484', '19', null, '29', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1485', '19', null, '30', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1486', '19', null, '31', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1487', '19', null, '22', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1488', '19', null, '23', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1489', '19', null, '24', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1490', '19', null, '25', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1491', '19', null, '26', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1492', '19', null, '27', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1493', '19', null, '28', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1494', '19', null, '29', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1495', '19', null, '30', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1496', '19', null, '31', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1497', '19', null, '32', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1498', '19', null, '33', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1499', '19', null, '34', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1500', '19', null, '35', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1501', '19', null, '36', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1502', '19', null, '37', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1503', '19', null, '38', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1504', '19', null, '39', '', null, null, '0', null, null, null);
INSERT INTO `t_grid` VALUES ('1505', '19', null, '40', '', null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for t_grid_decedent
-- ----------------------------
DROP TABLE IF EXISTS `t_grid_decedent`;
CREATE TABLE `t_grid_decedent` (
  `grid_id` int(11) NOT NULL COMMENT '格子id',
  `decedent_id` int(11) NOT NULL COMMENT '逝者Id',
  `activated` int(1) DEFAULT '0',
  `deleted` int(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`grid_id`,`decedent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_grid_decedent
-- ----------------------------
INSERT INTO `t_grid_decedent` VALUES ('474', '29', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1216', '31', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1217', '63', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1219', '182', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1220', '110', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1221', '140', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1222', '141', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1223', '142', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1224', '206', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1225', '90', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1225', '91', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1226', '183', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1227', '194', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1228', '111', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1230', '239', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1231', '112', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1232', '40', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1232', '169', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1233', '38', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1233', '46', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1237', '214', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1238', '195', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1239', '196', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1240', '215', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1241', '238', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1242', '217', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1243', '143', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1243', '144', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1244', '64', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1245', '170', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1246', '113', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1247', '101', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1248', '184', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1249', '114', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1250', '104', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1251', '145', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1252', '146', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1253', '223', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1258', '86', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1258', '87', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1259', '230', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1260', '115', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1261', '116', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1262', '147', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1263', '52', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1264', '81', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1265', '72', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1266', '237', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1267', '148', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1268', '236', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1269', '222', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1270', '149', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1271', '185', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1273', '197', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1277', '186', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1278', '187', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1279', '117', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1280', '136', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1280', '150', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1281', '82', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1282', '70', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1283', '54', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1284', '212', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1284', '224', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1285', '207', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1285', '225', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1286', '118', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1287', '198', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1288', '99', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1289', '151', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1290', '119', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1291', '89', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1292', '108', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1293', '210', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1296', '34', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1297', '103', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1298', '73', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1299', '152', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1299', '153', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1300', '171', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1300', '181', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1306', '199', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1307', '74', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1308', '120', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1309', '200', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1310', '172', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1312', '59', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1313', '60', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1316', '30', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1317', '121', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1318', '42', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1318', '49', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1319', '84', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1320', '122', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1324', '37', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1324', '45', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1325', '241', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1326', '178', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1327', '123', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1328', '124', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1329', '242', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1330', '233', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1331', '154', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1332', '188', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1333', '125', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1337', '240', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1338', '126', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1339', '127', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1340', '128', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1344', '211', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1345', '219', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1346', '44', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1346', '51', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1347', '36', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1347', '83', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1348', '97', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1349', '55', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1350', '88', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1351', '94', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1352', '53', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1356', '32', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1357', '106', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1358', '100', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1359', '234', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1359', '235', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1360', '179', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1364', '208', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1365', '213', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1366', '189', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1367', '201', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1368', '129', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1368', '130', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1369', '96', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1370', '155', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1372', '156', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1373', '202', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1376', '218', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1385', '33', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1386', '190', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1387', '157', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1388', '68', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1389', '78', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1390', '131', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1391', '191', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1392', '137', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1394', '220', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1394', '221', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1395', '43', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1395', '50', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1396', '98', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1397', '158', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1398', '173', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1399', '227', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1400', '71', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1401', '109', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1402', '132', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1406', '92', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1407', '133', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1407', '138', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1408', '76', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1409', '134', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1411', '203', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1412', '65', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1413', '174', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1413', '175', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1414', '159', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1415', '160', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1416', '161', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1417', '192', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1418', '93', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1419', '162', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1420', '176', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1420', '177', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1421', '163', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1422', '107', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1426', '102', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1427', '69', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1428', '228', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1429', '164', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1430', '135', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1431', '180', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1432', '165', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1434', '35', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1434', '66', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1435', '166', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1436', '80', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1437', '226', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1437', '229', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1438', '58', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1439', '216', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1440', '85', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1441', '105', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1442', '204', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1446', '67', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1446', '139', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1447', '205', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1448', '167', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1448', '168', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1449', '57', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1450', '61', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1451', '77', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1452', '62', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1453', '56', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1454', '39', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1454', '47', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1455', '75', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1456', '209', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1457', '231', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1458', '79', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1459', '232', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1460', '41', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1460', '48', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1461', '95', '0', null, null, null);
INSERT INTO `t_grid_decedent` VALUES ('1462', '193', '0', null, null, null);

-- ----------------------------
-- Table structure for t_guide
-- ----------------------------
DROP TABLE IF EXISTS `t_guide`;
CREATE TABLE `t_guide` (
  `guide_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text,
  `answer` text,
  `deleted` int(1) DEFAULT '1' COMMENT '1 未删除 0 已删除',
  `activated` int(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`guide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_guide
-- ----------------------------
INSERT INTO `t_guide` VALUES ('2', '什么是预约祭祀？', '所选预约时段内在现场的显示屏上播放用户上传的照片或视频。', '1', null, '2018-11-29 15:30:50', '2018-11-29 15:30:50');
INSERT INTO `t_guide` VALUES ('3', '如何预约祭祀？', '在主界面的右上角，点击“祭祀逝者”，然后选择“预约祭祀”，点击“新增预约”，根据您的要求选择相应的信息后提交，即可完成预约祭祀。', '1', null, '2018-11-29 15:31:08', '2018-11-29 15:31:08');
INSERT INTO `t_guide` VALUES ('4', '如何远程祭祀', '在主界面的右上角，点击“祭祀逝者”， 然后选择“实时观看”即可进入远程祭祀。', '1', null, '2018-11-29 15:31:26', '2018-11-29 15:31:26');
INSERT INTO `t_guide` VALUES ('5', '如何点亮阁位', '在主界面的右上角，点击“祭祀逝者”，然后点击界面香炉上的香，点击后香被点燃，选择“实时观看”即可看到已被点亮的阁位，结束后返回再次点击界面香炉上的香阁位即结束点亮。', '1', null, '2018-11-29 15:31:49', '2018-11-29 15:31:49');
INSERT INTO `t_guide` VALUES ('6', '如何上传照片与视频？', '点击主界面下方“相册”，选择“添加照片”，然后选择您需要上传的照片或视频，选择完毕后点击右下角的“完成”即可。', '1', null, '2018-11-29 15:32:22', '2018-11-29 15:32:22');
INSERT INTO `t_guide` VALUES ('7', '如何更换背景样式？', '在主界面的右上角，点击“祭祀逝者”，然后点击右上角的箭头即可完成背景样式的更换。', '1', null, '2018-11-29 15:32:38', '2018-11-29 15:32:38');

-- ----------------------------
-- Table structure for t_image
-- ----------------------------
DROP TABLE IF EXISTS `t_image`;
CREATE TABLE `t_image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户Id',
  `admin_name` varchar(30) DEFAULT NULL COMMENT '审核的管理员姓名',
  `decedent_id` int(11) DEFAULT NULL COMMENT '逝者Id',
  `image_url` varchar(255) DEFAULT NULL,
  `show_image` varchar(128) DEFAULT NULL COMMENT '展示图片  ',
  `image_type` int(1) DEFAULT NULL COMMENT '图片类型',
  `matrix` text COMMENT '判断图片是否相同',
  `activated` int(1) DEFAULT '1' COMMENT '图片状态：1待审核，2通过，3拒绝',
  `deleted` int(1) DEFAULT '1' COMMENT '标记是否删除 1 未删除  2 删除',
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=726 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_image
-- ----------------------------
INSERT INTO `t_image` VALUES ('372', '114', '陈加兵', '11', 'http://www.emoonbow.com/lifecrystal-upload/decedent-image/1540900918232.jpg', 'http://www.emoonbow.com/lifecrystal-upload/thum/1540900623199.jpg', null, '0000000000000000000000000000000000000000000000000000000000000000000000000000000010111111111111111000001111111111100000111111111111111111111111111111111111111111100000000000000010000000000000001000000000000000100000000000000011111111111111111111111111111111', '2', '1', '2018-11-12 16:33:01', '2018-10-30 20:01:58');
INSERT INTO `t_image` VALUES ('373', '114', '韩张', '26', 'http://www.emoonbow.com/lifecrystal-upload/decedent-image/1540901054503.jpg', 'http://www.emoonbow.com/lifecrystal-upload/thum/1540901054503.jpg', null, '0000000000000000000000000000000000000000000000000000000000000000000000000000000010111111111111111000001111111111100000111111111111111111111111111111111111111111100000000000000010000000000000001000000000000000100000000000000011111111111111111111111111111111', '2', '1', '2018-11-09 10:25:25', '2018-10-30 20:04:15');
INSERT INTO `t_image` VALUES ('374', '114', '陈加兵', '27', 'http://www.emoonbow.com/lifecrystal-upload/decedent-image/1540951570733.png', 'http://www.emoonbow.com/lifecrystal-upload/thum/1540951570733.png', null, '0000000000000000000000000000000011101111001110011101011100111001110001111111111111100111001110011110011100111001111111111111111111111111111111111111111110111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '3', '1', '2018-11-02 13:38:49', '2018-10-31 10:06:12');
INSERT INTO `t_image` VALUES ('375', '114', '测试', '25', 'http://www.emoonbow.com/lifecrystal-upload/decedent-image/1540953809561.jpg', 'http://www.emoonbow.com/lifecrystal-upload/thum/1540953809561.jpg', null, '0000000000000100000011111111111100000111111111110000011111111111100011111111111111111111111111111111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111', '2', '1', '2018-11-02 13:33:32', '2018-10-31 10:43:30');
INSERT INTO `t_image` VALUES ('376', '114', '测试', '28', 'http://www.emoonbow.com/lifecrystal-upload/decedent-image/1540955903630.png', 'http://www.emoonbow.com/lifecrystal-upload/thum/1540955903630.png', null, '1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100011111000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-10-31 11:20:28', '2018-10-31 11:18:24');
INSERT INTO `t_image` VALUES ('377', '114', '测试', '28', 'http://www.emoonbow.com/lifecrystal-upload/decedent-image/1540955903755.png', 'http://www.emoonbow.com/lifecrystal-upload/thum/1540955903755.png', null, '1111111111111111111111111111111111111111111111111111110111111111111110011111111111111000000000001111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000000000', '3', '1', '2018-11-02 13:37:30', '2018-10-31 11:18:24');
INSERT INTO `t_image` VALUES ('378', '114', '测试', '28', 'http://www.emoonbow.com/lifecrystal-upload/decedent-image/1540955903758.png', 'http://www.emoonbow.com/lifecrystal-upload/thum/1540955903758.png', null, '1111111111100111111111111110011110111111111111111111111111111111111111111111111111111111111111110000001111111111000000000000001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-11-02 13:37:27', '2018-10-31 11:18:24');
INSERT INTO `t_image` VALUES ('379', '201', '测试', '28', 'http://www.emoonbow.com/lifecrystal-upload/decedent-image/1540970483390.png', 'http://www.emoonbow.com/lifecrystal-upload/thum/1540970483390.png', null, '0000000000000000000000000000000010000000000000001110000000000000111000000000000001111111111111110111111111111100000001110111000000001111111111100001111111111111000111111111111100011100000111110001110010111111000000000100000100000000010000010000000000010111', '2', '1', '2018-10-31 15:21:41', '2018-10-31 15:21:24');
INSERT INTO `t_image` VALUES ('380', '201', '测试', '28', 'http://www.emoonbow.com/lifecrystal-upload/decedent-image/1540970483439.png', 'http://www.emoonbow.com/lifecrystal-upload/thum/1540970483439.png', null, '1111001000000000111100000000000011100000000000001110000000000000111000000000000011100000000000001110000000000000111111100000000011111111000000001111100100000000111110110000000011110000001110001111000001111100111111000101110011111111111111101111110111111110', '2', '1', '2018-10-31 15:21:41', '2018-10-31 15:21:24');
INSERT INTO `t_image` VALUES ('381', '201', '测试', '28', 'http://www.emoonbow.com/lifecrystal-upload/decedent-image/1540970483385.png', 'http://www.emoonbow.com/lifecrystal-upload/thum/1540970483385.png', null, '0000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111110101111111101111111111110111111111111111111001000000000000000000000000000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-11-02 13:33:27', '2018-10-31 15:21:24');
INSERT INTO `t_image` VALUES ('382', '201', '测试', '28', 'http://www.emoonbow.com/lifecrystal-upload/decedent-image/1540970483350.png', 'http://www.emoonbow.com/lifecrystal-upload/thum/1540970483350.png', null, '0000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111001111111111111100111111111111110001111111111111100011100011111111111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-11-02 13:33:25', '2018-10-31 15:21:24');
INSERT INTO `t_image` VALUES ('385', '192', '韩张', '12', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1540983990540.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1540983990540.jpg', null, '0000000000000000000000000000000000000000000000000000000000000000000000111100000000000111111000000000111111100000000011111110000000001111111000000000111111100000000001111100000000000111000000000000000000000000000000000000000000000000000000000000000000000000', '3', '1', '2018-11-09 10:29:11', '2018-10-31 19:06:31');
INSERT INTO `t_image` VALUES ('386', '114', '测试', '11', 'http://www.emoonbow.com/lifecrystal-upload/decedent-image/1541040328478.jpg', 'http://www.emoonbow.com/lifecrystal-upload/thum/1541040328478.jpg', null, '0110001100000000000000111000110000100011101110000010001110111000001111111111000001111111111100000111110111100000111100110100000011111111011111101110110000011111111110000000111111100000000001111100000000000011100000000000001111000000000000111000000000000001', '2', '1', '2018-11-02 13:33:23', '2018-11-01 10:45:30');
INSERT INTO `t_image` VALUES ('388', '114', '测试', '12', 'http://www.emoonbow.com/lifecrystal-upload/decedent-image/1541050054931.png', 'http://www.emoonbow.com/lifecrystal-upload/thum/1541050054931.png', null, '1111111111000101111000000000000011100000000000001100100000110110101111000001000000000010000100000100111100000100000110000001110010000100010000100000000000001001000010000000000000000000010010000000010000000001000001000000000000001110000000000000000000011110', '2', '1', '2018-11-02 13:33:23', '2018-11-01 13:27:36');
INSERT INTO `t_image` VALUES ('389', '114', '测试', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1541136000161.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1541136000161.png', null, '1110000001111111111000001111111111100000111111111110000111111111110000011111111111000110011111111100011111111111110000111111111111000011011111111100000011111111110000000111111111000000001111111100000000011111110000000001111110000000000001111000000000000111', '2', '1', '2018-11-02 13:21:31', '2018-11-02 13:20:00');
INSERT INTO `t_image` VALUES ('390', '204', '陈加兵', '31', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1541137187941.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1541137187941.jpg', null, '0110001100000000000000111000110000100011101110000010001110111000001111111111000001111111111100000111110111100000111100110100000011111111011111101110110000011111111110000000111111100000000001111100000000000011100000000000001111000000000000111000000000000001', '2', '1', '2018-11-02 15:15:59', '2018-11-02 13:39:48');
INSERT INTO `t_image` VALUES ('391', '204', '陈加兵', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1541139044029.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1541139044029.jpg', null, '1111000000010000111101000000000011110000000000000001000001000000011111111110000000011111111000000111111111111111000011111111111100000010001111110000000000010001000000000001000000000000001000000000000000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-11-02 15:15:58', '2018-11-02 14:10:44');
INSERT INTO `t_image` VALUES ('392', '114', '陈加兵', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1541145322513.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1541145322513.png', null, '1111111111101111111111111110001111111111111000001111111111001101111111111000011011111110000001011111111000000110111111000000010011111100000000000100000000000000000000000000000000000000000000000000000000000000000000001010100000000000111001110000000011111011', '2', '1', '2018-11-12 16:32:32', '2018-11-02 15:55:23');
INSERT INTO `t_image` VALUES ('393', '114', '测试', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1541145322561.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1541145322561.png', null, '1110111111111111100000111111111100000001111111110000000001111011000000000000000011111111111100001111111111111000111111110001000011111110000000001011100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-11-02 16:00:09', '2018-11-02 15:55:23');
INSERT INTO `t_image` VALUES ('394', '114', '范捷', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1541159480601.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1541159480601.png', null, '1100111101111111110011111111111111111111111111111110000010111111110000011111111111000000000111111000001111111111110000111111111111000000111111111100000111111111110000000000111110000111111111111100011111111111111000000001111111000011111111111100001000000011', '3', '1', '2018-11-22 17:44:18', '2018-11-02 19:51:21');
INSERT INTO `t_image` VALUES ('395', '114', '陈加兵', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1541159500931.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1541159500931.jpg', null, '1111111100000000111111111000000011111111100000001111111111000000111111111100000011111111110010000011111111100100000001111100000100011111110000010000111000000000000000000000000000000000000000100000000010000010000000011000000001000001100000000001000000000000', '2', '1', '2018-11-04 20:51:46', '2018-11-02 19:51:41');
INSERT INTO `t_image` VALUES ('399', '192', '陈加兵', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1541168704010.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1541168704010.jpg', null, '0000000111111111000000011111111100000001111111110000000111111111000000000111111100000000000111110000000010011011000000000000001100000000000010110000000000000011000000000000001100000000000000010000000000000000000000000000000000000000000000000000001000000000', '2', '1', '2018-11-03 10:48:57', '2018-11-02 22:25:05');
INSERT INTO `t_image` VALUES ('400', '114', '陈加兵', '31', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1541175797167.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1541175797167.jpg', null, '1111111100000000111111111000000011111111100000001111111111000000111111111100000011111111110010000011111111100100000001111100000100011111110000010000111000000000000000000000000000000000000000100000000010000010000000011000000001000001100000000001000000000000', '2', '1', '2018-11-03 00:24:12', '2018-11-03 00:23:17');
INSERT INTO `t_image` VALUES ('401', '114', '陈加兵', '31', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1541175883084.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1541175883084.jpg', null, '1000000011000000100011011110000011001111111100000000111111111000000111111111100000011111011110000001111101111000000111110111100000000111011100000000110101000001000111010000000110000011110100011000000011000000100110001100000010111001000000001011100000100000', '2', '1', '2018-11-03 00:25:20', '2018-11-03 00:24:43');
INSERT INTO `t_image` VALUES ('402', '114', '陈加兵', '31', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1541175911712.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1541175883084.jpg', null, '1000000011000000100011011110000011001111111100000000111111111000000111111111100000011111011110000001111101111000000111110111100000000111011100000000110101000001000111010000000110000011110100011000000011000000100110001100000010111001000000001011100000100000', '2', '1', '2018-11-03 00:25:18', '2018-11-03 00:25:12');
INSERT INTO `t_image` VALUES ('409', '114', '陈加兵', '31', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1541317019912.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1541317019912.png', null, '0000000101000000000000111110000000000111111000000000011111100000000001111111000000000111111100000000011101110000000001010111000000001011111100000000111111110000000011111111000000000111111100000000111111111110000000111111110000000011110000000000000000000000', '2', '1', '2018-11-04 20:51:43', '2018-11-04 15:37:00');
INSERT INTO `t_image` VALUES ('410', '114', '陈加兵', '31', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1541317033978.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1541317033978.png', null, '0000000000000000111111111111111111111000000000001111110000000000111111000011101100000000000000001111100000000000100110000000000000000000111000000000000000000000000000000000000100000000000111110000000000111111100011111111111111111111111111111111111111111111', '2', '1', '2018-11-04 20:51:42', '2018-11-04 15:37:14');
INSERT INTO `t_image` VALUES ('411', '192', '范捷', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1541410483984.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1541410483984.jpg', null, '0000000000000000000000000000000011111110000000000011110000000000110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '3', '1', '2018-11-21 22:25:28', '2018-11-05 17:34:44');
INSERT INTO `t_image` VALUES ('412', '192', '范捷', '31', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1541520965351.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1541520965351.jpg', null, '1111111100000000111111111000000011111111100000001111111111000000111111111100000011111111110010000011111111100100000001111100000100011111110000010000111000000000000000000000000000000000000000100000000010000010000000011000000001000001100000000001000000000000', '3', '1', '2018-11-21 22:25:34', '2018-11-07 00:16:06');
INSERT INTO `t_image` VALUES ('413', '192', '陈加兵', '31', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1541520986453.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1541520986453.jpg', null, '1100011111111111110001101111111111100011111111111100000010111111110000111111111110000011111111111100001111111111110000000111111111000011111011111100001111111111100000111111111111000011111111111100011111111111110000010111111111000011111111111100001000000011', '2', '1', '2018-11-19 14:40:59', '2018-11-07 00:16:28');
INSERT INTO `t_image` VALUES ('414', '192', '陈加兵', '34', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1542033267942.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1542033267942.png', null, '0000000000000000000000000000000000000000000000000000011000000111000011001111111101011111001111110111111111111100111111111111100011111111011111111111111111111100111110000001000011111000000111001111000000111111010100000111111101100111111111110000001100011110', '2', '1', '2018-11-12 23:37:28', '2018-11-12 22:34:28');
INSERT INTO `t_image` VALUES ('415', '192', '陈加兵', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1542468709215.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1542468709215.png', null, '1010000000011111101100000011111110000000000111110011000000001110100000000000110000000000000000000110000101100000011100110001011100000000000000000110000000000000011100000000000000000000000000000001101111111011001110111111111100000000011111110000000001111111', '2', '1', '2018-11-18 20:33:42', '2018-11-17 23:31:50');
INSERT INTO `t_image` VALUES ('416', '192', '陈加兵', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1542469040966.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1542469040966.png', null, '1101100111111111110110011100111111100001110001101100100111000100111000010000000011100001000000010010011111000111011111111111111100000101111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-11-18 20:33:38', '2018-11-17 23:37:21');
INSERT INTO `t_image` VALUES ('417', '192', '陈加兵', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1542469041064.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1542469041064.png', null, '0001111111111111001011111111111101111111111111110111100001111111010100000000011000000000000000100000000000010001100000110000000000000000100000000000000001110000000000001101000000000000010000000000000000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-11-18 20:33:37', '2018-11-17 23:37:21');
INSERT INTO `t_image` VALUES ('418', '192', '陈加兵', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1542469041113.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1542469041113.png', null, '0000000000000000111111111111111111111111111111111111111111111111110000000000001110000000000000011000000000000001100000000000000111000000000000011000000000000001100000000000000110000000000000011100000000000011111111111111111111111111111111111111111111111111', '2', '1', '2018-11-18 20:33:37', '2018-11-17 23:37:21');
INSERT INTO `t_image` VALUES ('419', '192', '陈加兵', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1542543568362.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1542543568362.jpg', null, '1111111111111111111110000011111111110000000011111110011100001111111001110000011111100111000001111110000000000111111001010000011111100111000001111111000000001111111100000000111111111000000001111111000000000000110000001000000000000000000000000000001000000000', '2', '1', '2018-11-18 20:33:31', '2018-11-18 20:19:28');
INSERT INTO `t_image` VALUES ('420', '192', '陈加兵', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1542543584912.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1542543568362.jpg', null, '1111111111111111111110000011111111110000000011111110011100001111111001110000011111100111000001111110000000000111111001010000011111100111000001111111000000001111111100000000111111111000000001111111000000000000110000001000000000000000000000000000001000000000', '2', '1', '2018-11-18 20:33:34', '2018-11-18 20:19:45');
INSERT INTO `t_image` VALUES ('421', '192', '陈加兵', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1542543593994.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1542543593994.jpg', null, '0000000000000000000000011110000000000001111100000000001111110000000000111111000000000001100111000000010011111100000001001111110000000000111110000000000011110000000000001111000000000000111000000000000001100000000000000100000000000000000000000000000000000000', '2', '1', '2018-11-18 20:33:33', '2018-11-18 20:19:54');
INSERT INTO `t_image` VALUES ('422', '210', '陈加兵', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1542608785470.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1542608785470.jpg', null, '1111111110111110101111111011111101011111011111110101111000010011111111000000111111100000001111110000000011111111000000011111111100000011111111110000000011111111000000001111111100000000111111110000000011111111000000011111111100000001111111100000000011110000', '2', '1', '2018-11-19 14:40:54', '2018-11-19 14:26:25');
INSERT INTO `t_image` VALUES ('423', '271', '范捷', '105', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1542703929857.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1542703929857.png', null, '0000111111111111000000000000000000000000000000000000011111100000000000111110000011000111111100001110011111111001111100111111111110011001101111110000111110000001000001001000000000000000100000000000000000100000000000110000000111111111111111111111111111111111', '2', '1', '2018-11-20 23:40:54', '2018-11-20 16:52:10');
INSERT INTO `t_image` VALUES ('424', '271', '范捷', '105', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1542705345392.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1542705345392.png', null, '0000000000000000000000000000000000000000000000001111111111111111111101111111111111110001111111111111110011111111111111111111111111111111111111111111111111111111111010000000000011100000000000000000000000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-11-20 23:41:01', '2018-11-20 17:15:45');
INSERT INTO `t_image` VALUES ('425', '243', '范捷', '74', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1542727278907.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1542727278907.png', null, '0000000000000000000000000000000000000010000000000010010000000001010011111100000100011111111000001001111111100000101000011110000011111111111000111111000011100011111110001110001111111000111111011111100011111111110000001111111100001100111111110011111111111111', '2', '1', '2018-11-20 23:40:57', '2018-11-20 23:21:19');
INSERT INTO `t_image` VALUES ('426', '243', '范捷', '74', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1542727279015.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1542727279015.png', null, '0000000000000000111110000000000011111111100000001111110000000000111111000000000011100110000000000000111111000000000000111000000000000001000000000000001110000000111111111110100011001111111110111111110000001111001111111111000100111111000001011111111111111100', '2', '1', '2018-11-20 23:41:05', '2018-11-20 23:21:19');
INSERT INTO `t_image` VALUES ('427', '243', '范捷', '74', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1542727279080.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1542727279080.png', null, '0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000111111111111111111111111111111110011111111111011011111111111111111111111110111110110011111111111', '2', '1', '2018-11-20 23:41:04', '2018-11-20 23:21:19');
INSERT INTO `t_image` VALUES ('428', '271', '范捷', '105', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1542730247135.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1542730247135.png', null, '0000000000000000000000000000000000000000000000000000000100000000111000010000000011100000000000000000000000000000011110000000011111111110000000001111111000000000111111100000000011111111100000000111111111100000111111111111000011111111111110001111111111111000', '2', '1', '2018-11-21 12:50:41', '2018-11-21 00:10:47');
INSERT INTO `t_image` VALUES ('429', '271', '范捷', '105', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1542730247188.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1542730247188.png', null, '1111111111111111111111111111111111111111111111111111111111111111000000001111111111010000100000000000000000000000000000000000000000000000000000000000000000000000000000001110111111100000000111110000000000000000000000001100000000110000011111001100000000001111', '2', '1', '2018-11-21 12:50:25', '2018-11-21 00:10:47');
INSERT INTO `t_image` VALUES ('430', '271', '范捷', '105', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1542730247221.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1542730247221.png', null, '1111111111111111111111111111111111111111111111111111111111111111000001011000000000000000000000000000000000000000000000000000000000000010000000000011111000000010011111000000000000111000100111110011001000000000000001000000000000001100000000000000100000000100', '2', '1', '2018-11-21 12:50:28', '2018-11-21 00:10:47');
INSERT INTO `t_image` VALUES ('431', '271', '范捷', '105', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1542730247530.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1542730247135.png', null, '0000000000000000000000000000000000000000000000000000000100000000111000010000000011100000000000000000000000000000011110000000011111111110000000001111111000000000111111100000000011111111100000000111111111100000111111111111000011111111111110001111111111111000', '2', '1', '2018-11-21 12:50:33', '2018-11-21 00:10:48');
INSERT INTO `t_image` VALUES ('439', '192', '范捷', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543025369176.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543025369176.jpg', null, '0001111111111111000101111111111100010111111111110000011111111111000001111111111100110001111100010000000011100111000000001110000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-11-25 11:12:33', '2018-11-24 10:09:30');
INSERT INTO `t_image` VALUES ('440', '326', null, '170', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543025484017.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543025484017.png', null, '1110111111000010111011111100001111001111100000011110111000000000111111111100000111100111100000011100100001111001100001101110011111100011100000111111000100000011111100000000001111100000000000111100000000000011000000000000011100010000000101110000000011100000', '1', '1', null, '2018-11-24 10:11:24');
INSERT INTO `t_image` VALUES ('441', '326', null, '170', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543025554846.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543025554846.png', null, '0100011111100000100000000010001011000000000000101110011000000010111000100000000011101000000001101110011111000111111001111000011111111011100001111111001100001111111010010000111111000000000111111110111000001111111111110000011111111111100001111111111110001111', '1', '1', null, '2018-11-24 10:12:35');
INSERT INTO `t_image` VALUES ('444', '235', '范捷', '66', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543047144011.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543047144011.jpg', null, '0001111111111111011111111111111101111111111111110011111111111111001111111111111100110000001001110000000000100111000000000010011100000100000000110000000000000011000001000000001100000000000000000001100000100000001100001111000000111111111100000000000011110000', '2', '1', '2018-11-25 11:10:28', '2018-11-24 16:12:26');
INSERT INTO `t_image` VALUES ('445', '235', '范捷', '66', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543049093002.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543049093002.jpg', null, '0001111111111111111111111111111111111111110000111111100000000111111110000000001111110000000000001100000011000000110000100000100010000001000110000100000000001100000000000001111011000000000111001100100010011000000010010010000011111100000000001111111111111111', '2', '1', '2018-11-25 11:10:32', '2018-11-24 16:44:55');
INSERT INTO `t_image` VALUES ('446', '235', '范捷', '66', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543049152732.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543049152732.jpg', null, '1111111111111110111111111111110011111111111111001110101100111100000001111100100000000111110010000000000000000000000001111000000000000011100000000000001100000000000001110000000000000110000000000000011000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-11-25 11:10:31', '2018-11-24 16:45:55');
INSERT INTO `t_image` VALUES ('447', '235', '范捷', '66', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543049199804.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543049199804.jpg', null, '1111100000000000111111110110000011111111010000001111110011000000111110000100000011111000000000001110000000000000111000000000000011111000000000001111110000000000111111100000000011111110000000001111111000000000111111000000000011111111000000001111111100000000', '2', '1', '2018-11-25 11:10:33', '2018-11-24 16:46:42');
INSERT INTO `t_image` VALUES ('448', '235', '范捷', '66', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543049234724.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543049234724.jpg', null, '1000000000000000100000000000000011000111100000001110111110000000111011111011000011111111000000001111111110000000111000111000100000000000101000000000000010110111000000001100111000000000111111000000000111100000000000000100001010000000011000101000000001111111', '2', '1', '2018-11-25 11:10:29', '2018-11-24 16:47:17');
INSERT INTO `t_image` VALUES ('449', '235', '范捷', '66', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543049253880.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543049253880.jpg', null, '1111111111111001110000000000000110000000000000011000000000000001111100000000000111110000000000011101000010000001111100011100000100110001111011110000000011001111000000001111111100000000011111110000000001111111000000000010011100000000000000010000000000111001', '2', '1', '2018-11-25 11:11:56', '2018-11-24 16:47:36');
INSERT INTO `t_image` VALUES ('450', '235', '范捷', '66', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543049273690.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543049273690.jpg', null, '1111100000000000111111111111111111111111111111111111111000000010111111000000000011000000010000101100000000000010010000100000001011000110000000001100001001111001100000011111111111000001111100010000000100100000000000011110000000000001111000001100000000000000', '2', '1', '2018-11-25 11:11:57', '2018-11-24 16:47:56');
INSERT INTO `t_image` VALUES ('451', '235', '范捷', '66', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543049288599.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543049288599.jpg', null, '0001101111111111000110111111111100011001111111110001100111111111000110011111111100011001110111110000000010001111000000001000111000000000000101110000000000011111000000000011110000000000100000100000000010000000000000000000000000000000000000000000000000000000', '2', '1', '2018-11-25 11:11:58', '2018-11-24 16:48:11');
INSERT INTO `t_image` VALUES ('452', '235', '范捷', '66', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543049333078.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543049333078.jpg', null, '1111000000001111111000000100001111000110010000111100111001100001100111111111000010011111111110011001110000101000100011000011100010001111000100001000011001010000100000000111000010000000010100011100000001010001110000000101001111110000000001111111100000011100', '2', '1', '2018-11-25 11:11:59', '2018-11-24 16:48:55');
INSERT INTO `t_image` VALUES ('453', '235', '范捷', '66', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543049359216.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543049359216.jpg', null, '0000011000001001001111100000000100011110000000110011111000000001000111101100001100011110110000110011111111100001000111111100000100011110010100010000000100010001000000011010000100000001001000010000000100100001000000010010000100000000000000110000000000000011', '2', '1', '2018-11-25 11:11:54', '2018-11-24 16:49:21');
INSERT INTO `t_image` VALUES ('455', '235', '范捷', '66', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543049407560.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543049407560.jpg', null, '1111111111111111111111111000111111111111100001111111000100110111111000000011011111100110001101111100011000111111110011101001111111100010100101111110001110000011100000000000000110000000000000011000000000000000100000000000000010000000000000011111111111111111', '2', '1', '2018-11-25 11:11:53', '2018-11-24 16:50:10');
INSERT INTO `t_image` VALUES ('457', '280', '范捷', '123', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543067298226.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543067298226.png', null, '0001000000000000000000000000000000000000000000001100000000000000010000010000000011010010000101111111100000011111111111001010011101111000000001110111000000000111011110000001111101110000000010110111111000000001011111110000000100111111001000010000111111100001', '2', '1', '2018-11-25 11:10:50', '2018-11-24 21:48:18');
INSERT INTO `t_image` VALUES ('458', '280', '范捷', '123', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543067734816.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543067734816.png', null, '0000000000000000000000000000000000000000000000000000000000000000000000000000000000001110000000000000111000000000000011100001010001111111000001110111111101000011011111100000011111111110000001111111111000111111111111111111111111111111111111111111111111111111', '2', '1', '2018-11-25 11:10:49', '2018-11-24 21:55:35');
INSERT INTO `t_image` VALUES ('459', '280', '范捷', '123', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543067734814.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543067734814.png', null, '0000000111111111000000011111111100001111111111110000011111111111000001111011100000000000000000000000000000000000000000000000000001000000100001111100000100000111110000100000111111000001000000000000000100000000100010000010011110111111111111111011111111111111', '2', '1', '2018-11-25 11:10:52', '2018-11-24 21:55:35');
INSERT INTO `t_image` VALUES ('460', '280', '范捷', '123', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543067734816.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543067734816.png', null, '0000000111111111000000011111111100000001111111110000111111111111000001111111111100000111101110000000000000000000000000000000000000000000000000000000000001011111110000010001111111000000000111111100000100000000000000010000000010000000011111111101111111111111', '2', '1', '2018-11-25 11:10:43', '2018-11-24 21:55:35');
INSERT INTO `t_image` VALUES ('461', '280', '范捷', '123', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543067734852.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543067734852.png', null, '1111111111111000111111111111100011111111111010000000000000000000000000000000000000000001110000000000000000000000011100000000000011110000000000000000000000001000000000000001111000010000000111111111000000001111111100000100011111111111111111111111111111111111', '2', '1', '2018-11-25 11:10:43', '2018-11-24 21:55:35');
INSERT INTO `t_image` VALUES ('462', '280', '范捷', '123', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543067734887.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543067734887.png', null, '0000000111111111000000011111111100000001111111110000011111111111000001111111110000000111100100000000000000000000000000000000000000001000000000001100000001011111110000110001111111100000000011110000000100000000000000010000011111001100011111111101111111111111', '2', '1', '2018-11-25 11:10:44', '2018-11-24 21:55:35');
INSERT INTO `t_image` VALUES ('463', '280', '范捷', '123', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543067734897.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543067734897.png', null, '1111111111111111111111111111100011111111111100001111011111110000000000000000000000000101000000000000000110000000000000000000000011100000000000001110000000000000000000000001000100000000000100010000000000010001111000000001100111000000000001001111111011010110', '2', '1', '2018-11-25 11:10:45', '2018-11-24 21:55:35');
INSERT INTO `t_image` VALUES ('464', '280', '范捷', '123', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543067734863.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543067734863.png', null, '0001011111101000000001111100000000000111100000000000000100000000000000000000000000000000000000000000000000000000110000000000000011111100000011111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '2', '1', '2018-11-25 11:10:46', '2018-11-24 21:55:35');
INSERT INTO `t_image` VALUES ('465', '280', '范捷', '123', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543067734954.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543067734954.png', null, '0000000000000000000000000000000000000000000000000000000000000000000000000000000000001110000000000000111000000000000011100000110001111110000001110111111101000111011111100000011111111110000001111111111000111111111111111111111111111111111111111111111111111111', '2', '1', '2018-11-25 11:10:47', '2018-11-24 21:55:35');
INSERT INTO `t_image` VALUES ('466', '280', '范捷', '123', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543067735159.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543067735159.png', null, '0000000000000000000000000000000000000000000000000000000000000000000000000000000000001110000000000000111000000000000011100000010001111111000001110111111101000111011111100000011111111110000001111111111100111111111111111111111111111111111111111111111111111111', '2', '1', '2018-11-25 11:10:47', '2018-11-24 21:55:35');
INSERT INTO `t_image` VALUES ('467', '280', '范捷', '123', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543067763972.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543067763972.png', null, '0001000000000000000000000000000000000000000000000000000000000000000000000000000011110010000101111111100000011111111111001010011101111000000001110111000000000111011110000001111101110000000010110111111000000001011111110000000101111111001000010001111111100001', '2', '1', '2018-11-25 11:10:48', '2018-11-24 21:56:04');
INSERT INTO `t_image` VALUES ('468', '280', '范捷', '123', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543067764254.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543067764254.png', null, '1111111111111100111111111111010011110111111001000000000000000000000000000000000000001111110000000000000000000000111000000000000011110000000000000000000000001000000000000000111100000000000111110110000000011111111000000000011111100000000000111111111111111011', '2', '1', '2018-11-25 11:12:24', '2018-11-24 21:56:04');
INSERT INTO `t_image` VALUES ('469', '235', '范捷', '66', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543077296162.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543047144011.jpg', null, '0001111111111111011111111111111101111111111111110011111111111111001111111111111100110000001001110000000000100111000000000010011100000100000000110000000000000011000001000000001100000000000000000001100000100000001100001111000000111111111100000000000011110000', '2', '1', '2018-11-25 11:12:26', '2018-11-25 00:34:57');
INSERT INTO `t_image` VALUES ('471', '235', '范捷', '66', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543079419358.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543079419358.jpg', null, '1110000000000000111111000000001011111100000000111111110000000001111110000000011111111000000001111111110000000011101110000000001111111000000001111100000000000111111111111000011111101011110011111101110001011111110111100001111111111100000111111111110001111111', '2', '1', '2018-11-25 11:12:27', '2018-11-25 01:10:21');
INSERT INTO `t_image` VALUES ('472', '235', '范捷', '66', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543079526791.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543049152732.jpg', null, '1111111111111110111111111111110011111111111111001110101100111100000001111100100000000111110010000000000000000000000001111000000000000011100000000000001100000000000001110000000000000110000000000000011000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-11-25 11:12:27', '2018-11-25 01:12:08');
INSERT INTO `t_image` VALUES ('473', '235', '范捷', '66', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543079592781.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543049199804.jpg', null, '1111100000000000111111110110000011111111010000001111110011000000111110000100000011111000000000001110000000000000111000000000000011111000000000001111110000000000111111100000000011111110000000001111111000000000111111000000000011111111000000001111111100000000', '2', '1', '2018-11-25 11:12:28', '2018-11-25 01:13:14');
INSERT INTO `t_image` VALUES ('474', '220', '范捷', '51', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543108508377.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543108508377.png', null, '0000000000000000000000000000000000000000000000001100000000000000110000001000011100000000100001110000000110001111000000000001111100000001101111110000010111111111000011111110000000001111110001000000110000000000000011000000000000000000000000000000000000000000', '2', '1', '2018-11-25 11:12:28', '2018-11-25 09:15:09');
INSERT INTO `t_image` VALUES ('475', '220', '范捷', '51', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543108508367.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543108508367.png', null, '1111111111111111111111111111111111111111111111111111110110011111111111001000111111110000000011111111000000111111111000000000011111110000000001111000000000000000110110000100001011011000011000101100100000100000111100000000000011110000000011101111000000011100', '2', '1', '2018-11-25 11:12:16', '2018-11-25 09:15:09');
INSERT INTO `t_image` VALUES ('476', '220', '范捷', '51', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543108508409.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543108508409.png', null, '0000000000000000000000000000001100000000000000110000000000001111000000011111111100000000111111110000010111111111000000111111111100000011111111110000011111100000000001111111000000000111111100000000011111101000000001110000110000000111000000000000011100000000', '2', '1', '2018-11-25 11:12:13', '2018-11-25 09:15:09');
INSERT INTO `t_image` VALUES ('477', '220', '范捷', '51', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543108508410.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543108508410.png', null, '1111111111111111000111111111111000001111110011100000111111001110000001111000111100000001000011110000000000001111000000000000010100000000000000010011000000000111000000000000111100000000000010110000000010000010000010001011000000011111111100001111111101110000', '2', '1', '2018-11-25 11:12:14', '2018-11-25 09:15:09');
INSERT INTO `t_image` VALUES ('478', '220', '范捷', '51', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543108508440.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543108508440.png', null, '0011111111100000000000111111111100000000001111110000011111111111000001111111100000000111111000000000001111110000000000011111110000000000001111000000000011100000000000001111111100000001111111110000001111111111000011110000001000111001000000000010000000000000', '2', '1', '2018-11-25 11:12:15', '2018-11-25 09:15:09');
INSERT INTO `t_image` VALUES ('479', '220', '范捷', '51', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543108508402.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543108508402.png', null, '1111111111111111111111111111111111111111111111111111100000111111000000000000111100000000000000000000000011000000000000001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000110000', '2', '1', '2018-11-25 11:12:10', '2018-11-25 09:15:09');
INSERT INTO `t_image` VALUES ('480', '225', '范捷', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109147095.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109147095.jpg', null, '0000111111111111000000111111111100000001111111110000000001101111000000000000011100000011000000110000111111100011000011111111110100000000000111110001100010010010000000000000001000011000000000000001110000000000001111110000000000111000000000000000110000000000', '2', '1', '2018-11-25 11:12:05', '2018-11-25 09:25:47');
INSERT INTO `t_image` VALUES ('481', '225', '范捷', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109157698.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109157698.jpg', null, '1111111111111111111111111111111111111111111111111111100011111111100010000000011110000000000001111000000000000110111100000000111100110000000010110010110001001011000000110000011100000011000000110000000000000011000000100000001100001110000000110000000000000011', '2', '1', '2018-11-25 11:11:04', '2018-11-25 09:25:58');
INSERT INTO `t_image` VALUES ('482', '225', '范捷', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109163899.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109163899.jpg', null, '1011111111111111100011111111111111000000111111110000000000001111000000000000111100001000000001110000100001000010000110000100000000010010010011100001001001011001000100000011100000010000000111000001001000011111111111100001111111111110000111110111111100011111', '2', '1', '2018-11-25 11:11:04', '2018-11-25 09:26:04');
INSERT INTO `t_image` VALUES ('483', '225', '范捷', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109171142.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109171142.jpg', null, '1111111111111111111111111111111111111111111111111111111111111110111111111111000000000011100000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000001110000000000000011', '2', '1', '2018-11-25 11:11:05', '2018-11-25 09:26:11');
INSERT INTO `t_image` VALUES ('484', '225', '范捷', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109184777.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109184777.jpg', null, '1111111111111111111111111111111111111101111111111111111111111111111111101111111111111110011111110111111001111111001101100111111100000000000000000000000000000000000000000000000011111110000000001111111000000000111100000000000000000000000000000000000000000000', '2', '1', '2018-11-25 11:11:06', '2018-11-25 09:26:25');
INSERT INTO `t_image` VALUES ('485', '225', '范捷', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109200856.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109200856.jpg', null, '1111111111111111111111111111111111111111111111111111111111111111001101111111111100111101111111110010000011111111000000000011000100000000000000000000000000000000000011100000000000000000000001000000000000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-11-25 11:10:56', '2018-11-25 09:26:41');
INSERT INTO `t_image` VALUES ('486', '225', '范捷', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109211158.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109211158.jpg', null, '0000000100111111000000110011111100000011111111110000011110011111000001111101111100000011111111110001000001111111000000000111111100000000101111010000000011110011000000001111001100000000111100010000000001000001000000000010000101001000000000010000000000000001', '2', '1', '2018-11-25 11:10:57', '2018-11-25 09:26:51');
INSERT INTO `t_image` VALUES ('487', '225', '范捷', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109215824.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109215824.jpg', null, '1111111111111111111111111111111111111111111111111111111111111111001001111111111101100001001100001011000110000000001000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-11-25 11:10:58', '2018-11-25 09:26:56');
INSERT INTO `t_image` VALUES ('488', '225', '范捷', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109222217.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109222217.jpg', null, '0000000000000000000000000000000000000000000000000011011110001111011111011111111111110001111111110110011010111111011100010011111101110001000111000001011100011111000100000001111100000001000111110001011100001111101111111000111101111111110111111111111111111111', '2', '1', '2018-11-25 11:10:58', '2018-11-25 09:27:02');
INSERT INTO `t_image` VALUES ('489', '225', '范捷', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109226514.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109226514.jpg', null, '0000000000000000000000000000000000000000000000000000000000000000000000100000000000000111000000000000000110000000000011111000010000011111110000000011111111000001111111111100110111111111100000101111111100000011111111110000001111111111000000011111111000000001', '2', '1', '2018-11-25 11:11:02', '2018-11-25 09:27:07');
INSERT INTO `t_image` VALUES ('490', '225', '范捷', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109231303.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109231303.jpg', null, '1111111111110011111111111111001111101111111101111111111110010111111011111110011111101111111101111110111111100011111011111110001111100100111000111101100000000000000011000000000000001100000000000000110011000000111010000010000011111000001111001111100000111100', '2', '1', '2018-11-25 11:11:02', '2018-11-25 09:27:11');
INSERT INTO `t_image` VALUES ('491', '225', '范捷', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109235603.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109235603.jpg', null, '1111111111111111111111111111111111101111111111111100001100111111110000110011111100000001000111110000000000011110000000000000111000000000000011100000000000011110000000000000001100000000000000000000000000010000000000000000000000000000000000000000000000000000', '2', '1', '2018-11-25 11:11:00', '2018-11-25 09:27:16');
INSERT INTO `t_image` VALUES ('492', '225', '范捷', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109240756.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109240756.jpg', null, '1111111111111111111111111111111111111111111111111111111111111111111111111111111100000011111100000000001111000000111101111101000011110000000000001110000000000000111000000000000011100000000000000000000000001000000000000000111111110000000001111111111100000111', '2', '1', '2018-11-25 11:10:59', '2018-11-25 09:27:21');
INSERT INTO `t_image` VALUES ('493', '225', '范捷', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109246148.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109246148.jpg', null, '1111111111111111111111111111111111111111111111101111111111111100111111111111000011111111111000001111111110000000000000000000000000000000000000000000000000000000000000000110001000000001000111010000000010111000000000001001111100111000011111110111100000111111', '2', '1', '2018-11-25 11:12:06', '2018-11-25 09:27:26');
INSERT INTO `t_image` VALUES ('494', '225', '范捷', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109252990.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109252990.jpg', null, '0000000000000000000000000000000000000000000000000000000000000000111111100000000011111111111111111111111111111111111111111001111111111111100011111111111110011111100000010011000000000000000110000000000000011100000000000110010000000000011011100000000000100110', '2', '1', '2018-11-25 11:12:07', '2018-11-25 09:27:33');
INSERT INTO `t_image` VALUES ('495', '225', '范捷', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109340381.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109340381.jpg', null, '0000000000000000000000111100000000000010110000000000001000000000000001000000000000000000010000001111110001111110111111100001111001111110111111110011111110001111000111111001111100000000101011110110111100100001111011100010000111111111110000111111111111101111', '2', '1', '2018-11-25 11:12:10', '2018-11-25 09:29:00');
INSERT INTO `t_image` VALUES ('496', '225', '范捷', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109352198.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109222217.jpg', null, '0000000000000000000000000000000000000000000000000011011110001111011111011111111111110001111111110110011010111111011100010011111101110001000111000001011100011111000100000001111100000001000111110001011100001111101111111000111101111111110111111111111111111111', '2', '1', '2018-11-25 11:12:09', '2018-11-25 09:29:12');
INSERT INTO `t_image` VALUES ('497', '225', '范捷', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109372916.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109235603.jpg', null, '1111111111111111111111111111111111101111111111111100001100111111110000110011111100000001000111110000000000011110000000000000111000000000000011100000000000011110000000000000001100000000000000000000000000010000000000000000000000000000000000000000000000000000', '2', '1', '2018-11-25 11:12:08', '2018-11-25 09:29:33');
INSERT INTO `t_image` VALUES ('499', '225', '范捷', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109427541.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109427541.jpg', null, '1000111011111011110000101110100000100100111000000011000001100000001100000100000000110000110000000001000011010100001000000001101000100000000011100000000000000010000100000100000000111000000111110010000000011111111000000000111111100000000001111110000000000111', '2', '1', '2018-11-25 11:12:08', '2018-11-25 09:30:28');
INSERT INTO `t_image` VALUES ('500', '225', '范捷', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109432742.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109432742.jpg', null, '1111111111111111111111111100000011100000000000001000000000000000000000000000000000000000000000000111000000011111111100000000111100110000000011101111000000001111000000000001111100100000000111111110000000011111111000000001111110000000000011111110000000001111', '2', '1', '2018-11-25 11:12:32', '2018-11-25 09:30:33');
INSERT INTO `t_image` VALUES ('501', '225', '范捷', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109441833.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109441833.jpg', null, '1111111111100000111111111110000011111111111000001111111111000000011111111100000001111100111000000000011001110000000000000111100000000000010000010000000000010010001100000011000000110000000001000000000000001100001000001000000000000000100000001111010011001010', '2', '1', '2018-11-25 11:12:32', '2018-11-25 09:30:42');
INSERT INTO `t_image` VALUES ('502', '224', '范捷', '55', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109751346.jpeg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109751346.jpeg', null, '0000001000000100000000111000011000000000000001000000000000000110000000000000011000000000010001000000000000001110110010000010111000001101110011100001011111111110000000111101111000000000100010100001000000000010001100000000001001110000000000001110000000000001', '2', '1', '2018-11-25 11:12:34', '2018-11-25 09:35:51');
INSERT INTO `t_image` VALUES ('504', '224', '范捷', '55', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109868311.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109868311.jpg', null, '0000000000000001000000000000000110000000000000011000000000000011100000000000001111100010000000111110001000000011111100100100001100000000011110110000000000000011000000011110101111000011111111011111111111111111011011111111111101011111111111110111111111111111', '2', '1', '2018-11-25 11:12:36', '2018-11-25 09:37:49');
INSERT INTO `t_image` VALUES ('505', '224', '范捷', '55', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109906411.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109906411.jpg', null, '1111111111111110111101111111001100011111111111110010001111111111100001011100110000001101111111110000110111111111000000000111111100000000110110000001000000000000000000000000000000000000000000000000000011100000000000001111100000001000111110000000010001111000', '2', '1', '2018-11-25 11:12:37', '2018-11-25 09:38:27');
INSERT INTO `t_image` VALUES ('506', '224', '范捷', '55', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543109943441.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109943441.jpg', null, '0111110001111111001110000011111100011000101110000000100010111111000000001111111100000000111111110000000001111111000000000000111100000000000001111100000000001111110000000000011110000000000001111000000000000111100000000000011110000000000001111000000000000011', '2', '1', '2018-11-25 11:11:23', '2018-11-25 09:39:04');
INSERT INTO `t_image` VALUES ('507', '224', '范捷', '55', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543110004496.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543110004496.jpg', null, '1111111111111111111111100111111101111110111111111111111011111111101100000001111100001000000110011110000000001000100010000001000100000000000001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-11-25 11:11:23', '2018-11-25 09:40:05');
INSERT INTO `t_image` VALUES ('508', '218', '范捷', '49', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543111504941.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543111504941.png', null, '1111111000001111111111000000111111111000000011111111100010001111111110001000110011111000000001001111100111000100111111000000010011111100000011001111100000000100111100000000000011110000000000001111000000000000111000000000000011100000000000001110000000000000', '2', '1', '2018-11-25 11:11:25', '2018-11-25 10:05:05');
INSERT INTO `t_image` VALUES ('509', '218', '范捷', '49', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543111505136.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543111505136.png', null, '0000000001111010011100011111100001100110111100000110111111000000011011111000000001100011100000000000001100111100000000110011111000010011100111000001111110000000000011100000000000010000000000000001000000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-11-25 11:11:26', '2018-11-25 10:05:05');
INSERT INTO `t_image` VALUES ('510', '218', '范捷', '49', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543111505501.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543111505501.png', null, '0000100000011100000100000000111000111000000011000010111111101111011001111101111101000111110111110100011100011110010001110001111001001100000111000101100000011110110000000010000011100000011000001111110000100000100111000001110000000000000000000000000000000000', '2', '1', '2018-11-25 11:11:22', '2018-11-25 10:05:06');
INSERT INTO `t_image` VALUES ('511', '218', '范捷', '49', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543111505706.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543111505706.png', null, '1111111111111111111111111111111111111111111111111111000001111111111100000011111111000111111111111100001111101111100000010111111111001001111111111000000111111111000000011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-11-25 11:11:18', '2018-11-25 10:05:06');
INSERT INTO `t_image` VALUES ('512', '218', '范捷', '49', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543111505781.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543111505781.png', null, '0000000000011111000010000001111100010000000011110011100000011111001011100101111101100110100111110100011110011111010001100001111001001000000111100101100000001110010101111110010011000000000011101110010000111100111111000011111011111100000111001100000000000000', '2', '1', '2018-11-25 11:11:18', '2018-11-25 10:05:06');
INSERT INTO `t_image` VALUES ('513', '218', '范捷', '49', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543111505841.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543111505841.png', null, '1111111111100111111101001100001111110000011001111010000010000001000000000000100100000000000110010000000000000000101100000000000111110001110000011011000000000001100000001000000110000000100000001111110111000111111111111111111111111111111111111111111111111111', '2', '1', '2018-11-25 11:11:19', '2018-11-25 10:05:06');
INSERT INTO `t_image` VALUES ('514', '218', '范捷', '49', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543111505906.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543111505906.png', null, '0000010000001111000111000000000000000000000001000000110000011011000111111111111100001010111111110000001111111111000100111011111100010011101110100001011100111010000111100000111000111000110000100000000000000001000000000000000011111110000100001111111100011100', '2', '1', '2018-11-25 11:11:21', '2018-11-25 10:05:06');
INSERT INTO `t_image` VALUES ('517', '248', '范捷', '80', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543114160256.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543114160256.jpg', null, '1111111110000001111111110000000011111111000000001111111110000000111111111000000011111111100000001111100000000000111100010000000011110000000000001111011000000000111000000000000011100000000000000110000000000000010000000000000000000000000000000000000000000000', '2', '1', '2018-11-25 11:11:20', '2018-11-25 10:49:20');
INSERT INTO `t_image` VALUES ('520', '192', '范捷', '221', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543211447765.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543211447765.jpg', null, '1111110001111111111000000000011111000000000000111000000000000001000000000000000100000000000000000000000111000000000000011000000000111111111110001011111111111000110111110011000111011111001100111110111111100011110011111100001111001111110000001111111111000000', '2', '1', '2018-11-26 14:02:05', '2018-11-26 13:50:48');
INSERT INTO `t_image` VALUES ('521', '192', '范捷', '221', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543211465432.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543211465432.jpg', null, '0000000000000000000000011110000000000001111100000000001111110000000000111111000000000001100111000000010011111100000001001111110000000000111110000000000011110000000000001111000000000000111000000000000001100000000000000100000000000000000000000000000000000000', '2', '1', '2018-11-26 14:02:05', '2018-11-26 13:51:06');
INSERT INTO `t_image` VALUES ('522', '192', '范捷', '221', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543211486176.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543211486176.jpg', null, '1111111111111111111110000011111111110000000011111110011100001111111001110000011111100111000001111110000000000111111001010000011111100111000001111111000000001111111100000000111111111000000001111111000000000000110000001000000000000000000000000000001000000000', '2', '1', '2018-11-26 14:02:06', '2018-11-26 13:51:26');
INSERT INTO `t_image` VALUES ('524', '235', '范捷', '66', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543239165202.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543239165202.jpg', null, '0000000011111111010000000011111101000000001111110100000010111111001100000111111110010000111111111000000011110001100000001111000100100000111111111010000011111111101000000111111110000000001111110101000000011111111100000011111111100000111010100110000011111111', '2', '1', '2018-11-27 17:16:47', '2018-11-26 21:32:48');
INSERT INTO `t_image` VALUES ('525', '235', '范捷', '66', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543239249607.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543239249607.jpg', null, '0000011100011111000011100011111100000000001111110000000000011111000000010001111100000001001111110000000001111111000000001011111100000000000000100100000000000110000000000000111100000010000011110000010000000000000001000011100000000010000100000000000000000000', '2', '1', '2018-11-27 17:16:48', '2018-11-26 21:34:12');
INSERT INTO `t_image` VALUES ('528', '235', '范捷', '66', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543239491626.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543239491626.jpg', null, '1111111111111111001100001111111100011000111111111101110010011110011110001000110011111100000011111111110000001111111111000000111111111100000011101111110000001100111000001000000011100000101000001110000000000000100000000000000000000000000000001100000000000000', '2', '1', '2018-11-27 17:16:49', '2018-11-26 21:38:14');
INSERT INTO `t_image` VALUES ('529', '235', '范捷', '66', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543239813708.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543049234724.jpg', null, '1000000000000000100000000000000011000111100000001110111110000000111011111011000011111111000000001111111110000000111000111000100000000000101000000000000010110111000000001100111000000000111111000000000111100000000000000100001010000000011000101000000001111111', '2', '1', '2018-11-27 17:16:51', '2018-11-26 21:43:35');
INSERT INTO `t_image` VALUES ('530', '235', '范捷', '66', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543239861025.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543049273690.jpg', null, '1111100000000000111111111111111111111111111111111111111000000010111111000000000011000000010000101100000000000010010000100000001011000110000000001100001001111001100000011111111111000001111100010000000100100000000000011110000000000001111000001100000000000000', '2', '1', '2018-11-27 17:16:51', '2018-11-26 21:44:22');
INSERT INTO `t_image` VALUES ('531', '314', '范捷', '156', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543298448592.JPG', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543298448592.JPG', null, '0111111111111111111111111111111111111111111111110100011111111111000000110111111100000001000111000000100100000100000000010000000000000001101000000000001110111101001000000000000111001100000010001111100000000111111111000011110000000000001110000100000000010000', '2', '1', '2018-11-27 17:16:52', '2018-11-27 14:00:50');
INSERT INTO `t_image` VALUES ('532', '314', '范捷', '156', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543298468952.JPG', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543298468952.JPG', null, '1111111111101000111111111110000011111111111000000011111111100000000011111110000000000011111000000000000110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000001100000000011100101000011111110001110011111111', '2', '1', '2018-11-27 17:16:53', '2018-11-27 14:01:10');
INSERT INTO `t_image` VALUES ('533', '314', '范捷', '156', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543298487556.JPG', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543298487556.JPG', null, '1111111111111111111111111000111111111111100011111111111111001111111111111100111111111100110011111111111100000011111111100000000111111110000000011111111000000001111111100000000111110000000000000000000000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-11-27 17:16:56', '2018-11-27 14:01:29');
INSERT INTO `t_image` VALUES ('534', '314', '范捷', '156', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543298499602.JPG', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543298499602.JPG', null, '1111111111111111111111111111111111111111111111111111111110001111111111111000011111111111000001111111111100000111111111100000000001001111000001111100000000000000111111100000001111111000000000011111100000000000101100000000000011110000000000000000000000000000', '2', '1', '2018-11-27 17:16:55', '2018-11-27 14:01:40');
INSERT INTO `t_image` VALUES ('535', '193', '审核员', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543408913604.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543408913604.jpg', null, '0000011111110000000111111111110000011111111111100001111111111100000111111111110000000111111111100000111111111100011100011110000000000001111100000000111111111000011111111110000000011111111000000000111111110000000011111110100000011111111000000000111111110000', '3', '1', '2018-11-29 10:47:58', '2018-11-28 20:41:55');
INSERT INTO `t_image` VALUES ('536', '193', '审核员', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543408928350.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543408928350.jpg', null, '0000000000000000000000000000000000000000000000000000000000000000000000010010000000011111110000000001111111110000001111111111100000011111111111000011111111111100001111111111100000011111111110000000011111001000000000100100000000000000010000000000000000000000', '3', '1', '2018-11-29 10:48:01', '2018-11-28 20:42:10');
INSERT INTO `t_image` VALUES ('568', '283', '审核员', '111', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543644076907.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543644076907.jpg', null, '0000000000000000000000000000000000000000001110000000000000000010000000011110000110000011111111001100001111111100110000111111100000000000111100110000000000111111000000111111111000000001111111110000000111111100111111111111111100000011111111110000000000000000', '2', '1', '2018-12-03 11:15:09', '2018-12-01 14:01:17');
INSERT INTO `t_image` VALUES ('569', '283', '审核员', '111', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543644107783.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543644107783.jpg', null, '1111111111110000000000000000000000000000000000001100010000000000000011111110000000011111111100000001111111110000100110111111000011101011111000001111100000000000111100000000111111100000000001111111110000010111110000001111111111111100000000001110110111111111', '2', '1', '2018-12-03 11:15:11', '2018-12-01 14:01:48');
INSERT INTO `t_image` VALUES ('571', '368', '审核员', '217', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543646175901.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543646175901.jpg', null, '0000001111111111000000111111111100000000111111110000001111111111000000100111111100000000000111110000000001011111000000000100111100000000010111110000000000011111000000111111111100000011111111110000000011111111001111111111111100011111111111110000011111111111', '2', '1', '2018-12-03 11:15:12', '2018-12-01 14:36:17');
INSERT INTO `t_image` VALUES ('572', '368', '审核员', '217', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543646202141.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543646202141.jpg', null, '0001111111111000000111111111100000011111111110000001111111111000000111111111100000010000011110000001000010111000000100001011100000010000011110000001001111111000000110111111100000011111111110000011111111111000001111111111100000111111111110000001111111111000', '2', '1', '2018-12-03 11:15:13', '2018-12-01 14:36:44');
INSERT INTO `t_image` VALUES ('573', '316', '审核员', '158', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543646833630.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543646833630.jpg', null, '0000111111111110000011111111111100111111011111110011111001111101000001010011100000000000001110000000000000011000000000000001110000000000000111000000100000001010000110000000101000110100000110100000110000011111100011000001111100111100000000100001110000001111', '2', '1', '2018-12-03 11:15:15', '2018-12-01 14:47:14');
INSERT INTO `t_image` VALUES ('574', '316', '审核员', '158', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543646850800.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543646850800.jpg', null, '0000000000111111000000000011111100000000001111110000000000011111000000001001111100000000000111110000000000001111000000000000111100000000000001110000000000001111000001000000111100011100000011111111110000000111111110000000000111001100000001000011100000000100', '2', '1', '2018-12-03 11:15:16', '2018-12-01 14:47:31');
INSERT INTO `t_image` VALUES ('575', '310', '审核员', '151', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543663242295.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543663242295.jpg', null, '0000000000000000000000000000000011111111111111111111111111111111111111110001111111111100000011111111100000000111111110000000111111111100000011111111111000001111111111000000111111110000000000111111000000000011111100000000001111110000010000111111111111111111', '2', '1', '2018-12-03 11:15:17', '2018-12-01 19:20:44');
INSERT INTO `t_image` VALUES ('576', '337', '审核员', '184', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543716297121.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543716297121.jpg', null, '1111111111111111111111111111111111111100000111111111100000001111111100000000111111111000000111111111100000111111110000000011111100000000000111110000000000001111000000000000000100000000010000000000000000000000000000000000100000000000000000000000000000000000', '2', '1', '2018-12-03 11:15:18', '2018-12-02 10:04:58');
INSERT INTO `t_image` VALUES ('577', '303', '审核员', '142', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543717552132.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543717552132.jpg', null, '1111111111111000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111011000111110000100000011111000010000001111100001000000111110001100000011110000000000001111000000000000111111100000000011111100000000001100000000000000', '2', '1', '2018-12-03 11:15:21', '2018-12-02 10:25:54');
INSERT INTO `t_image` VALUES ('578', '303', '审核员', '142', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543717589212.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543717552132.jpg', null, '1111111111111000111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111011000111110000100000011111000010000001111100001000000111110001100000011110000000000001111000000000000111111100000000011111100000000001100000000000000', '2', '1', '2018-12-03 11:15:21', '2018-12-02 10:26:31');
INSERT INTO `t_image` VALUES ('579', '303', '审核员', '142', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543717606612.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543717606612.jpg', null, '1111111110011111111111111111110011111111111111001111111111111111111111111111111111111110000011111111000000001101111100000000111111110000000011101111001000001110111100000000111011110000000011101111000000001111111111111111111011111111111111101111111111111110', '2', '1', '2018-12-03 11:15:20', '2018-12-02 10:26:49');
INSERT INTO `t_image` VALUES ('580', '303', '审核员', '142', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543717635367.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543717635367.jpg', null, '1000100001111111100010000111111110001000111111111000000001111011100000000011001110000000011101111001110011111111100101011111011110000101111111111100000111101110010111111110111100000011110011100000000000000010000000000000000000000000000000000000000000000000', '2', '1', '2018-12-03 11:22:39', '2018-12-02 10:27:17');
INSERT INTO `t_image` VALUES ('581', '303', '审核员', '142', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543717653222.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543717653222.jpg', null, '0000000000000000110000000000000000001110000000110000000000000010000000000000000000000000000000000000000000000000000000000000000000111111111111010011111111111101000111111111110100011000111111010001100000111101000111000011110100111101111111110001111111111111', '2', '1', '2018-12-03 11:22:41', '2018-12-02 10:27:35');
INSERT INTO `t_image` VALUES ('582', '358', '范捷', '205', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543730979470.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543730979470.png', null, '1111111111111111111111111111111100000000011111110000000000000111000010000000011100001000000100110001100000001001001010000000000000101000000001000100100000000010010010000000000111001001100000001111111100000000111111110000000011111111000000001111110000000000', '3', '1', '2018-12-03 16:48:26', '2018-12-02 14:09:40');
INSERT INTO `t_image` VALUES ('583', '358', '审核员', '205', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543731009156.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543731009156.png', null, '1111111111111000111111111111100011111111111111111111100111111111101100111110000100000000100000010000000000001100000000000000000000000000110000000000000000000000000000000000000000000000000001110000000000000111000000000001111100000000001111110000000000001111', '2', '1', '2018-12-03 11:22:44', '2018-12-02 14:10:09');
INSERT INTO `t_image` VALUES ('584', '292', '范捷', '122', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543731574052.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543731574052.png', null, '1111100000000001111000000000000111000111000000011100011111000001110001111000000111011001100000011101100000000001110000000000000111000000000000011100000000000001111000000000000111000000000000011110000101111011110000110111111111000000000001111000100000000111', '3', '1', '2018-12-03 16:48:28', '2018-12-02 14:19:34');
INSERT INTO `t_image` VALUES ('585', '269', '审核员', '103', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543831134404.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543831134404.jpg', null, '1111111111110111111001111000011101111100000101110110010100000111000000000011111101100010111011110000011111000111000001001000011100000000000001111100000000000111110000000000111110010000000001111111000100000111111111110000000111111110000000011111111100000000', '2', '1', '2018-12-04 12:34:57', '2018-12-03 17:58:57');
INSERT INTO `t_image` VALUES ('586', '269', '范捷', '103', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543831161353.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543831161353.jpg', null, '0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000100000000000000010000000000000001000000000000000100000000000001010111000000110101011100000001000101110000000000111111111111000111111111111110001', '2', '1', '2018-12-05 12:00:47', '2018-12-03 17:59:23');
INSERT INTO `t_image` VALUES ('588', '193', '范捷', '31', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543840268757.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543840268757.png', null, '0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111110011111111111111001111111111111100111111111111110000000011111110000000000000000000000000000000000000000000000000000000000000000000000000000000000', '3', '1', '2018-12-05 12:00:51', '2018-12-03 20:31:09');
INSERT INTO `t_image` VALUES ('590', '193', '范捷', '31', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543841751079.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543841751079.jpg', null, '0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001001000000001111111000000000111111100000000111111111000000011111111111110001111111111000001111111111100000011111111110000000011111101000000000100100000000', '3', '1', '2018-12-05 12:01:01', '2018-12-03 20:55:53');
INSERT INTO `t_image` VALUES ('591', '238', '审核员', '69', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543886287215.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543886287215.jpg', null, '1111111111111111111110000000111111100000000001111100001111100011110000111111001111100001110000111100001111011011110011111111101111101111111101111111110011111111111111111111111111110000011011111100001100100011000000011000000000000000000000000000000000000000', '2', '1', '2018-12-04 12:35:03', '2018-12-04 09:18:08');
INSERT INTO `t_image` VALUES ('602', '193', '审核员', '31', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1543991042804.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543991042804.png', null, '0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111100111111111001', '3', '1', '2018-12-10 11:46:45', '2018-12-05 14:24:03');
INSERT INTO `t_image` VALUES ('603', '360', '审核员', '72', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1544100479693.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1544100479693.jpg', null, '1111000011111111111100011111111111111011111111111111111111111111111111101111111111111100011111111111110001111111111111000000111101110000000001110000000000000011000000000000001100000000000000010000000000000001000000000000000000000000000000000000000000000001', '2', '1', '2018-12-07 17:08:55', '2018-12-06 20:48:02');
INSERT INTO `t_image` VALUES ('604', '360', '审核员', '72', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1544100539541.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1544100539541.jpg', null, '1111111111111111111111111111111111111111111111111111110001111111111110000011111111111000001111111111100010111111111100000011111110000000010000110000000000000001000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-12-07 17:08:57', '2018-12-06 20:49:02');
INSERT INTO `t_image` VALUES ('605', '210', '审核员', '33', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1544150777011.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1544150777011.png', null, '0000000011111111000000000000111100000000000001110000000011000110000000011110000000000001111100000000100111111000000011111111100100001101111111010000000111100111000000011111111110001110111111111001111111111111000011011111000000000000110010000011111111111100', '3', '1', '2018-12-10 11:47:00', '2018-12-07 10:46:17');
INSERT INTO `t_image` VALUES ('606', '210', '审核员', '33', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1544150777015.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1544150777015.png', null, '1111111111111111111000000011111111000000000011111000000000000110000000000011011000000000001101110000000000000100000000000000011100001100010011110000011111111111000001110001111100110000000111111111100000001111111111000001111110010000000000010000000000000000', '3', '1', '2018-12-10 11:47:02', '2018-12-07 10:46:17');
INSERT INTO `t_image` VALUES ('607', '210', '审核员', '33', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1544150777015.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1544150777015.png', null, '1110000000111111110000000001111111000000000011111000000000011111100000001111111110000000011111111000011111111111110001100110111111000111111111111100001111111111110000011011011111000000101100011100000001000000000000000000000000000000000000001000000000000000', '3', '1', '2018-12-10 11:47:04', '2018-12-07 10:46:17');
INSERT INTO `t_image` VALUES ('608', '210', '审核员', '35', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1544150994855.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1544150994855.png', null, '1111000000000000100100011100000000000001100000000000000110000000000000110000011111111111111111111001111011111111100100001110000100010000000000001001001011110001000100000011000010010000111111110000000000100000100101001111001100000000000000001100000000000000', '3', '1', '2018-12-10 11:47:41', '2018-12-07 10:49:55');
INSERT INTO `t_image` VALUES ('609', '210', '审核员', '35', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1544150994916.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1544150994916.png', null, '1111011111100000100100111110000000000001100000000000000110000000000000110000011111111111111111111001011011111011100100001000000100010000000000001001000010111001000100000000000010010110101100010000000000100000100101001110100100000000000000001000000000000000', '3', '1', '2018-12-10 11:47:39', '2018-12-07 10:49:55');
INSERT INTO `t_image` VALUES ('610', '377', '审核员', '228', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1544242035351.JPG', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1544242035351.JPG', null, '1010000111111111100000010011111110000010010011110000010011001110000001001100000000000100110000000000000000000001000000000000000100000011000000010000000011100000000001101110001000000110101000100000000010100010000100001000001000010000010000100000000000000000', '2', '1', '2018-12-10 11:40:17', '2018-12-08 12:07:16');
INSERT INTO `t_image` VALUES ('611', '377', '审核员', '228', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1544242049906.JPG', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1544242049906.JPG', null, '0000010111111100000001111110010010000111111000000000011111100000000001111110010000000111111001000000011111100100000001111100010000000111111111000000011111111000000001110000000000000110000000001100110000000000111111110000000011111111111111111111111111111111', '2', '1', '2018-12-10 11:40:16', '2018-12-08 12:07:31');
INSERT INTO `t_image` VALUES ('612', '377', '审核员', '228', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1544242071776.JPG', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1544242071776.JPG', null, '1111111111111111111101110111111010000010011111011001000001110011110100000111001111010010011110111101000001110011110100000000001111110000100000111111111110000000011110000000000000111000000000000000100000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-12-10 11:40:09', '2018-12-08 12:07:52');
INSERT INTO `t_image` VALUES ('613', '341', '审核员', '188', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1544247697863.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1544247697863.png', null, '0011111111111000001111111111100000011111111110000001111111000000000101111100000000011000011000000000011111110000000011101111100000111110111110000010011111110000000010111110000000011010010000000001111011000000000011101000000000001111100000000000111100000000', '2', '1', '2018-12-10 11:40:11', '2018-12-08 13:41:38');
INSERT INTO `t_image` VALUES ('614', '341', '审核员', '188', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1544247858397.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1544247858397.png', null, '1111111111110000111110111111100011111000001110001111000000011100011100000001111011110000000000111111000000000011111101011100011011111111110010001111110011110000111111001100000001011000100000000010100000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-12-10 11:40:12', '2018-12-08 13:44:18');
INSERT INTO `t_image` VALUES ('615', '224', '审核员', '55', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1544323900493.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1544323900493.jpg', null, '0000000000000000000000000000000000000001111111110001111111111111000111111111111100011111111111110000000001111111000000010011101100000001000110110000000000000011000000000000000000000000000010000000000000001100000000000000110000000000000000000000000000000000', '2', '1', '2018-12-10 11:40:13', '2018-12-09 10:51:43');
INSERT INTO `t_image` VALUES ('616', '224', '审核员', '55', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1544323977608.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1544323977608.jpg', null, '0100111111111111010001111111111100000111111000111000011110000001101001110000000011110111001010001110001000101101111111000011111011111100000111001111100100000100111100111000110011000111110100010000001111010011000000111111111100000011101111110000000101111111', '2', '1', '2018-12-10 11:45:06', '2018-12-09 10:53:00');
INSERT INTO `t_image` VALUES ('618', '315', '审核员', '157', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1544336278060.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1544336278060.jpg', null, '0011111111111111001111111111111101111111111111110111111111111110001111111111100000111111100000000000011100000000000001000000000000000111000000000000000001100000001000000000000000100000000000000000000000000000000100000000000000000000000000000000000000000000', '2', '1', '2018-12-17 11:55:40', '2018-12-09 14:18:00');
INSERT INTO `t_image` VALUES ('621', '210', '审核员', '31', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1544425345158.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1544425345158.png', null, '0000000000000000000000000000000000000000000000001111110011111011111111111111111111111111111110111111111111111111111111111111111111111111111111111111111111111101000000000000000011111111111111110111111111111110001111111111110000111111111110000000111111110000', '3', '1', '2018-12-17 11:50:09', '2018-12-10 15:02:25');
INSERT INTO `t_image` VALUES ('622', '210', '审核员', '31', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1544425345203.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1544425345203.png', null, '1111111111111111000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111110011111111111111001111111111111100111111111111110000000000000000011000000000000110111111111111111000000111111110100000001100000011111111111111111', '3', '1', '2018-12-17 11:50:11', '2018-12-10 15:02:25');
INSERT INTO `t_image` VALUES ('631', '370', '审核员', '206', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1544835006167.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1544835006167.jpg', null, '1111111111111111111111111111111111111111111111111111000000000111111100000000011110110001110001110010001111100111001000111110011100100011110001110010000000000110001000000000011000100000000001100010000000000010001000000001011000111111111111100000000000000000', '2', '1', '2018-12-17 11:34:19', '2018-12-15 08:50:08');
INSERT INTO `t_image` VALUES ('636', '337', '审核员', '184', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1544925756873.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1544925756873.jpg', null, '0000011111111100000111111111111101111111111111111111111111111110001100111100000000000000000000000000000000000000000000000011111000100000001111111110000000111111111100000011111111110000000001111110000000000011010000000000000000000000000000000000000000000000', '2', '1', '2018-12-17 11:34:22', '2018-12-16 10:02:37');
INSERT INTO `t_image` VALUES ('637', '234', '审核员', '65', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1544927009395.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1544927009395.jpg', null, '1111111111110000011100000000000000010000000100001111001000100000101100110011000010110011101010000000001010100000000000101010111000000000000111110000000000111111010000000111110100000111111110110001111111110111000011111100111100001111100110100000111001111110', '2', '1', '2018-12-17 11:54:32', '2018-12-16 10:23:30');
INSERT INTO `t_image` VALUES ('640', '371', '审核员', '170', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545019856755.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545019856755.png', null, '0100011111100000100000000010001011000000000000101110011000000010111000100000000011101000000001101110011111000111111001111000011111111011100001111111001100001111111010010000111111000000000111111110111000001111111111110000011111111111100001111111111110001111', '2', '1', '2018-12-19 11:01:48', '2018-12-17 12:10:57');
INSERT INTO `t_image` VALUES ('641', '371', '审核员', '170', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545024227871.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545024227871.png', null, '0000011111111111000001111111111100001111110111110000111111101111000011111110011100010000000001110011001010000111001110111100011101110000000011110111000000001101001111000001110000110100101110000011111011111000000101111111100010001111111100000000011111110000', '2', '1', '2018-12-19 11:01:49', '2018-12-17 13:23:48');
INSERT INTO `t_image` VALUES ('642', '336', '范捷', '183', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545197651989.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545197651989.png', null, '1111111111111111111111000001111111110000000011111111000000000111111100110000011111110001000000001110000000000000000000010000000000001000000000000000000000000000000001000000000000111100000111100111111111011111111111111111111111111111111111111111111111111111', '2', '1', '2018-12-20 14:40:11', '2018-12-19 13:34:12');
INSERT INTO `t_image` VALUES ('643', '363', '审核员', '211', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545357509522.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545357509522.jpg', null, '0000000000111100000000000111111000000000011111110000000001111111000111111111000010011100011100001111100110110000001110111111000011111111111101111111111111110111001111111111000000010011110100000001000000010000000100111111000000000000000000000000000000000000', '2', '1', '2018-12-21 16:25:00', '2018-12-21 09:58:33');
INSERT INTO `t_image` VALUES ('644', '236', '陈加兵', '67', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545380089095.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545380089095.png', null, '0111000011111000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111000001111111111111110111111111111111111111111111111111111111111111111', '2', '1', '2018-12-23 17:14:23', '2018-12-21 16:14:49');
INSERT INTO `t_image` VALUES ('645', '236', '陈加兵', '67', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545380089110.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545380089110.png', null, '1100011111111111110000111111111111000111111111111110000001111111100000000011111110000000001111111000000001111111100000001111111111000000011111111000000001111110100000000011111000001011001111100000111100011110000011100001010000000110000000000000011000000000', '2', '1', '2018-12-23 17:14:24', '2018-12-21 16:14:49');
INSERT INTO `t_image` VALUES ('646', '236', '陈加兵', '67', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545380089102.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545380089102.png', null, '1111111111111111111111000111111111111000001111111111100001111111111000000111111111100000000111111000000000001111001000000000011111100000001111111110001111111111111100111111100011000001100000000000000000000000000000000000000100000001001111110000001111111111', '2', '1', '2018-12-23 17:14:25', '2018-12-21 16:14:49');
INSERT INTO `t_image` VALUES ('647', '236', '陈加兵', '67', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545380089102.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545380089102.png', null, '1111111111111111111110001111111111111000111111111011100001111111100100000011111110000000000111111000000000001111100000000001111100010000000111110000000000011111000000000001111100000000000111110000000000011111000000000000000000000000000000000000000000011100', '2', '1', '2018-12-23 17:14:25', '2018-12-21 16:14:49');
INSERT INTO `t_image` VALUES ('648', '236', '陈加兵', '67', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545380089111.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545380089111.png', null, '1110000001101001111100010100010011110001111000000000011101100001000000000010000000000000001000000000000001000000000000000000000000000000000000000010000000000011011101111110111101100011111111101111000011111111011100000111110101000011111110110100011111111011', '2', '1', '2018-12-23 17:14:27', '2018-12-21 16:14:49');
INSERT INTO `t_image` VALUES ('650', '389', '陈加兵', '237', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545388538774.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545388538774.jpg', null, '1111111111111111111111111111111111111111111111111111101111111111111100011111111111100001111000000000000001100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-12-23 17:14:28', '2018-12-21 18:35:39');
INSERT INTO `t_image` VALUES ('651', '389', '陈加兵', '237', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545392309681.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545392309681.jpg', null, '0011000000011111101100000000111110100000010001001111111110010000111111011001000000111101100100000001110110000000011111110000000011111101100000000111110010000110001110001000011100111000100001110001100000000000100000001011111111111100111111101111110011111111', '2', '1', '2018-12-23 17:14:28', '2018-12-21 19:38:30');
INSERT INTO `t_image` VALUES ('652', '389', '陈加兵', '237', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545392309748.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545392309748.jpg', null, '1111111111111111111111111111111101111101111111110000000000001001000000000000100000000000000000000000000000000000000000011100111000000000000011110000000000000111000000000000011100011000000001110001100000000011001110000000000000110001100000000111000110000000', '2', '1', '2018-12-23 17:14:29', '2018-12-21 19:38:30');
INSERT INTO `t_image` VALUES ('653', '389', '陈加兵', '237', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545392309812.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545392309812.jpg', null, '0101111111100000001111000111100011110000000110000111001110011000001001111100110011100111010010001111011101001001011101110000101111100100000011001110010000001100111000000000110011000000000011100100000000000110000000000000010100000000000101100000000000011110', '2', '1', '2018-12-23 17:14:30', '2018-12-21 19:38:30');
INSERT INTO `t_image` VALUES ('654', '234', '陈加兵', '65', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545408646945.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545408646945.jpg', null, '0111111111111111111111111111111111111100011111111111111101111111011111100111111100001110011111110000011000000000000000100000000000000000000000000000000100000000100000000000000010001000000000001100010000000000111000000000000011000000000000001100000000000000', '2', '1', '2018-12-23 17:14:32', '2018-12-22 00:10:48');
INSERT INTO `t_image` VALUES ('655', '234', '陈加兵', '65', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545408648066.JPG', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545408648066.JPG', null, '0001011111000000000011111100110000001111110111100110111110011110000011101001111100000100000111110000000000101111001000000110001011111100011111001111110001111100111111000001111111010000011011101001100001111110111110000111101011110000000000001101000000000000', '2', '1', '2018-12-23 17:14:32', '2018-12-22 00:10:50');
INSERT INTO `t_image` VALUES ('656', '234', '陈加兵', '65', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545408649805.JPG', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545408649805.JPG', null, '0000000000000000000000000000011000011100000011000011111100110000001111000000000000110011110000000000111100100000000111111000000000000111111100000000000011111100000000000111111000011100011101000011111001111000011111111011000001111111111100000111111111111100', '2', '1', '2018-12-23 17:14:33', '2018-12-22 00:10:51');
INSERT INTO `t_image` VALUES ('657', '225', '陈加兵', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545438567655.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109211158.jpg', null, '0000000100111111000000110011111100000011111111110000011110011111000001111101111100000011111111110001000001111111000000000111111100000000101111010000000011110011000000001111001100000000111100010000000001000001000000000010000101001000000000010000000000000001', '2', '1', '2018-12-23 17:14:44', '2018-12-22 08:29:28');
INSERT INTO `t_image` VALUES ('658', '225', '陈加兵', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545438597303.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545438597303.jpg', null, '0000000001001100000000000000000000000000000000000000000100101100000000001111100000001110111111110001110011111011000111100000011100011110000111110001110001011111011111001101111110111100100111000000000000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-12-23 17:14:44', '2018-12-22 08:29:57');
INSERT INTO `t_image` VALUES ('659', '225', '陈加兵', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545438608062.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545438608062.jpg', null, '0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000111000000011100011110000000001001111000000000011111100000000001111100011000000111111100000000001111111100000001111110110000000111111011000000011', '2', '1', '2018-12-23 17:14:45', '2018-12-22 08:30:08');
INSERT INTO `t_image` VALUES ('660', '225', '陈加兵', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545438618958.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545438618958.jpg', null, '1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000010011011010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-12-23 17:14:46', '2018-12-22 08:30:19');
INSERT INTO `t_image` VALUES ('661', '225', '陈加兵', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545438629588.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545438597303.jpg', null, '0000000001001100000000000000000000000000000000000000000100101100000000001111100000001110111111110001110011111011000111100000011100011110000111110001110001011111011111001101111110111100100111000000000000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-12-23 17:14:47', '2018-12-22 08:30:30');
INSERT INTO `t_image` VALUES ('662', '225', '陈加兵', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545438636157.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545438636157.jpg', null, '1111111111110000110000001111000111110001101110110111001011111001110110011111110111011011011110111001001101100011000000100000001000000011000000000000001111000000111000100000000111100000000000000010000000000001001000000000000100111100000000001011100000000000', '2', '1', '2018-12-23 17:14:47', '2018-12-22 08:30:36');
INSERT INTO `t_image` VALUES ('663', '225', '陈加兵', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545438643359.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545438643359.jpg', null, '1111111111111111111111111111111111111111111000111111111111100000111111111000000011110100000000000000000000000000010000000000000000000000000000001101000000000001111110000000000000000000000000000000000000000000000000000001111000000000001111110000000110111111', '2', '1', '2018-12-23 17:14:48', '2018-12-22 08:30:43');
INSERT INTO `t_image` VALUES ('664', '225', '陈加兵', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545438651042.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545438651042.jpg', null, '1111111111111111111111111111111111111111111111111111111111111000111110010000000011111100000000001100000000000011000000000001011100000000000111110000000000111111000000000011111100110000001111111110000000111111111100000000111111110000000011111111100000000001', '2', '1', '2018-12-23 17:14:49', '2018-12-22 08:30:51');
INSERT INTO `t_image` VALUES ('665', '225', '陈加兵', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545438655697.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109246148.jpg', null, '1111111111111111111111111111111111111111111111101111111111111100111111111111000011111111111000001111111110000000000000000000000000000000000000000000000000000000000000000110001000000001000111010000000010111000000000001001111100111000011111110111100000111111', '2', '1', '2018-12-23 17:14:52', '2018-12-22 08:30:56');
INSERT INTO `t_image` VALUES ('666', '225', '陈加兵', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545438660364.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109252990.jpg', null, '0000000000000000000000000000000000000000000000000000000000000000111111100000000011111111111111111111111111111111111111111001111111111111100011111111111110011111100000010011000000000000000110000000000000011100000000000110010000000000011011100000000000100110', '2', '1', '2018-12-23 17:14:51', '2018-12-22 08:31:00');
INSERT INTO `t_image` VALUES ('667', '225', '陈加兵', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545438670910.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545438670910.jpg', null, '0000000011111110000010001110111000001001111101100011101111111000001111011111100001110000111111000110111011011100011011110001110001101110000111000100011000000100110001100000000010000011000000100000011000000000000001000000000000010000000000000000000000000000', '2', '1', '2018-12-23 17:14:51', '2018-12-22 08:31:11');
INSERT INTO `t_image` VALUES ('668', '225', '陈加兵', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545438680031.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545438680031.jpg', null, '0100000000000001001000000000000111000000000000110000001100000000000000000000000000000000100000000000000000000000000000000000000000000000000000000001111111110000111111111111111111111111111111111111111111111111111111011111111111111000001111111111000111111111', '2', '1', '2018-12-23 17:14:50', '2018-12-22 08:31:20');
INSERT INTO `t_image` VALUES ('669', '225', '陈加兵', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545438688172.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545438688172.jpg', null, '1111111111111111000000000000000000001000001000010100000000000000011000011000010000000000000000001110011111100110110101111000000000000000000100001111011100110111111111100011111111111110001111111111111100111111111111110011111111111110000111110111100000000110', '2', '1', '2018-12-23 17:14:55', '2018-12-22 08:31:28');
INSERT INTO `t_image` VALUES ('670', '225', '陈加兵', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545438697898.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545438697898.jpg', null, '0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000111111000000000011111100000111111111110000111111111111000111111111111100001111111111110001111111111111100111111111111110011111111111111111111111', '2', '1', '2018-12-23 17:14:56', '2018-12-22 08:31:38');
INSERT INTO `t_image` VALUES ('671', '225', '陈加兵', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545438706747.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109147095.jpg', null, '0000111111111111000000111111111100000001111111110000000001101111000000000000011100000011000000110000111111100011000011111111110100000000000111110001100010010010000000000000001000011000000000000001110000000000001111110000000000111000000000000000110000000000', '2', '1', '2018-12-23 17:14:57', '2018-12-22 08:31:47');
INSERT INTO `t_image` VALUES ('672', '225', '陈加兵', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545438717095.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109157698.jpg', null, '1111111111111111111111111111111111111111111111111111100011111111100010000000011110000000000001111000000000000110111100000000111100110000000010110010110001001011000000110000011100000011000000110000000000000011000000100000001100001110000000110000000000000011', '2', '1', '2018-12-23 17:14:57', '2018-12-22 08:31:57');
INSERT INTO `t_image` VALUES ('673', '225', '陈加兵', '56', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545438728142.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1543109235603.jpg', null, '1111111111111111111111111111111111101111111111111100001100111111110000110011111100000001000111110000000000011110000000000000111000000000000011100000000000011110000000000000001100000000000000000000000000010000000000000000000000000000000000000000000000000000', '2', '1', '2018-12-23 17:14:36', '2018-12-22 08:32:08');
INSERT INTO `t_image` VALUES ('674', '308', '陈加兵', '148', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545441115160.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545441115160.jpg', null, '1111111111111110111111111111111111011000011111001111000000111111100000000000000010001111011100010000111111110001000011101110000011001111111000001000011011100000010001110100010011101111110000010000000011000011011000000110000010000000001001110000000000111111', '2', '1', '2018-12-23 17:14:37', '2018-12-22 09:11:57');
INSERT INTO `t_image` VALUES ('675', '219', '陈加兵', '50', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545444216497.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545444216497.jpg', null, '1111000000011111111000000000011111000011111000111100011111110011110011111111001110001111111110111000000110111111100000011000111111000001111111111100010111111111000000011100001100000000110000000000000000000000000000000100000000000001100000000000000110000000', '2', '1', '2018-12-23 17:14:37', '2018-12-22 10:03:39');
INSERT INTO `t_image` VALUES ('676', '240', '陈加兵', '71', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545446201795.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545446201795.png', null, '1111111111111111111110000001111111110000000011111111000000000111111100001000011111110000000011111111000000001111111100000000111111110000000011111111000000001100111110000000100011110000000010001100000000000010100000000000001110000000000000001000000000000000', '2', '1', '2018-12-23 17:14:38', '2018-12-22 10:36:42');
INSERT INTO `t_image` VALUES ('677', '240', '陈加兵', '71', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545447288674.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545447288674.png', null, '1111111111111111111111111111111111111111111111110000000000000000000111000000000000001000000000000001110010000000000111111100000000011111110000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-12-23 17:14:39', '2018-12-22 10:54:49');
INSERT INTO `t_image` VALUES ('678', '240', '陈加兵', '71', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545447288991.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545447288991.png', null, '0000000000001111000000011000111100000001100001000000001011100000000000111111000000000001111001100000000111110111000000011111111100000001111110010000000111011000000000111101000000000001111100000000000111101110000000010100111000001101110101110000011010000011', '2', '1', '2018-12-23 17:14:40', '2018-12-22 10:54:49');
INSERT INTO `t_image` VALUES ('679', '240', '陈加兵', '71', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545447289045.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545447289045.png', null, '1111111111111111000111111111111100000100111111110000000000011111000000000000001100000100010000001100100000100000111010000010000011001111000000001100011100000000110000000000000010000000000000001110000000000000111000000000000011100000000000001111100000000000', '2', '1', '2018-12-23 17:14:41', '2018-12-22 10:54:49');
INSERT INTO `t_image` VALUES ('680', '240', '陈加兵', '71', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545447289562.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545447289562.png', null, '1111111111111111111111111111111111111100000100111111000000000011000000000000000110000000000000011000000000000000100000000000000010000000000000001000000000000000100000000100000010000001000000011000000000000001100000000000001111111111000001111111111111111111', '2', '1', '2018-12-23 17:14:41', '2018-12-22 10:54:50');
INSERT INTO `t_image` VALUES ('681', '301', '陈加兵', '140', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545447468058.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545447468058.jpg', null, '0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011000100000000011110110000000001111111101111111111101111111111111010101111111111001110111111111110011011111111101001101111111110111101111111111111110111111', '2', '1', '2018-12-23 17:15:00', '2018-12-22 10:57:49');
INSERT INTO `t_image` VALUES ('682', '286', '陈加兵', '114', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545454646799.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545454646799.jpg', null, '0000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000001000000000000000000000000000000000000000001111011011100001111111111111000111111111111110011111111111111011111111111111101111111111111110', '2', '1', '2018-12-23 17:15:01', '2018-12-22 12:57:27');
INSERT INTO `t_image` VALUES ('689', '373', '陈加兵', '223', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545487731282.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545487731282.jpg', null, '1111110011111111111100000001111111100000000011111100000000000111110000000000011111000000000011111100000000001111110000000000111111100000000011111111000000001111111100000000111111110000000011111100000000000111000000000000000000000100000000000000010111110000', '2', '1', '2018-12-23 17:15:02', '2018-12-22 22:08:51');
INSERT INTO `t_image` VALUES ('691', '314', '陈加兵', '156', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545530789190.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545530789190.jpg', null, '1111111111110111111111111110111111101111111011111111111100011111111111100001111111111100000111111111100110001111111010000000011111111000010000111111100001000001111100000100000011111000000000000001110000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-12-23 17:15:04', '2018-12-23 10:06:30');
INSERT INTO `t_image` VALUES ('692', '314', '陈加兵', '156', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545530837966.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545530837966.jpg', null, '0000111111111100000000000101000011000000000000001100000000011000000000111000000000000011000000000000011110011100000000111001110000000001111111111110000011111000011100001111110011111001111111001111111111111110111011111111110001111111111111000111011111111000', '2', '1', '2018-12-23 17:15:04', '2018-12-23 10:07:20');
INSERT INTO `t_image` VALUES ('693', '314', '陈加兵', '156', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545531086158.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545531086158.jpg', null, '0000000000000011000000000000101100000000000100110000000000011111000000000001111100000000001111010000001000111111000011111011111100001111111111110000111111111111000011111111111100001111111111110000111111111111000001110011111100000000001111110000000000111111', '2', '1', '2018-12-23 17:15:05', '2018-12-23 10:11:28');
INSERT INTO `t_image` VALUES ('701', '381', '范捷', '230', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1545795870125.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1545795870125.png', null, '0000111000011110000001101111111100000111111111110111111111111111111111101111111111111110111111111111110000111111000011000011111100000000011111110000000000111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '2', '1', '2018-12-27 05:29:53', '2018-12-26 11:44:30');
INSERT INTO `t_image` VALUES ('702', '285', '审核员', '113', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1546229410283.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1546229410283.png', null, '0000111111110000000000111000000000000000000000000010000000000000000000000000000000111000000000001111000000000000111100000000000011110000000000001111000000000000111100011000000011110000110000001111011111111111111111111111111111111111111111111111111111111111', '2', '1', '2019-01-02 10:42:55', '2018-12-31 12:10:11');
INSERT INTO `t_image` VALUES ('703', '285', '审核员', '113', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1546229410305.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1546229410305.png', null, '0000000000000000000000000001100100000000000110000100010111100000000111111100000000111111110000000111111111100000000011111110000000001000111000010000000000000000000010100000000010000001000000001000000000000000100000000000000011000111110000001111111111100000', '2', '1', '2019-01-02 10:42:56', '2018-12-31 12:10:11');
INSERT INTO `t_image` VALUES ('704', '285', '审核员', '113', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1546229410294.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1546229410294.png', null, '1111111111111111111111111111111111111111111111111111111111111111111111111111111100000111111111110000000111111111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000', '2', '1', '2019-01-02 10:42:57', '2018-12-31 12:10:11');
INSERT INTO `t_image` VALUES ('705', '285', '审核员', '113', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1546229410324.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1546229410324.png', null, '0000001111111111000001111111111100001111111111110001111111111111000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111000010000000011100001111111111110001111111111000000111111111101110011111111111111111111111111', '2', '1', '2019-01-02 10:42:59', '2018-12-31 12:10:11');
INSERT INTO `t_image` VALUES ('706', '285', '审核员', '113', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1546229410352.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1546229410352.png', null, '1111110000000000111111110000000011111111100000000011111111100000000000111110000000000011111100000000001111111000100110011111111100000001111111110000000111110000000000000001000000000001111111100000001111111100000001111111100000000111011110000000011111111000', '2', '1', '2019-01-02 10:43:01', '2018-12-31 12:10:11');
INSERT INTO `t_image` VALUES ('707', '285', '审核员', '113', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1546229410243.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1546229410243.png', null, '0000111111110000000000111000000000000000000000000010000000000000000000000000000000111000000000001111000000000000111100000000000011110000000000001111000000000000111100011000000011110000110000001111011111111111111111111111111111111111111111111111111111111111', '2', '1', '2019-01-02 10:43:02', '2018-12-31 12:10:11');
INSERT INTO `t_image` VALUES ('708', '285', '审核员', '113', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1546229410365.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1546229410365.png', null, '1111111111111111111111111111111111101111111111101110001111101100111001100000001011111110000000000000001110000000000000000000000000000000000000000001000000000000001000000000000001000000000000001100000000000000100000000000000000000000000000000000000000000000', '2', '1', '2019-01-02 10:43:03', '2018-12-31 12:10:11');
INSERT INTO `t_image` VALUES ('709', '285', '审核员', '113', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1546229410274.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1546229410274.png', null, '1111110001111111000000000001111100000000000001110000000001111000110000000000000000000000000000000000000000000000000000001000000000000100100000000100010011000000000000001100000000000001110000000000001111111100000001111111111100000111111111100011111111111111', '2', '1', '2019-01-02 10:43:04', '2018-12-31 12:10:11');
INSERT INTO `t_image` VALUES ('710', '285', '审核员', '113', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1546229410354.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1546229410354.png', null, '0000000000000000000001000000000000000100000000000000000000000000000000000000000000110000001000000001100000000000000100000000000000000000000000000000110000000000000110000000110000010000000000000001111110000000111111111111011111111111110111111111111111111111', '2', '1', '2019-01-02 10:43:07', '2018-12-31 12:10:11');
INSERT INTO `t_image` VALUES ('711', '285', '审核员', '113', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1546229536881.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1546229536881.png', null, '1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110000000001111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '2', '1', '2019-01-02 10:43:09', '2018-12-31 12:12:17');
INSERT INTO `t_image` VALUES ('712', '254', null, '87', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1546395607877.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1546395607877.jpg', null, '0000001111111010100000001111110000000010110110000000000010011000111111110001100011111111000110000011111100110000111111100000000000111011011000000011100000000000011110110000000001111111000000000111111111100000011111110010000001111111111000001111111110011000', '1', '1', null, '2019-01-02 10:20:10');
INSERT INTO `t_image` VALUES ('713', '254', '审核员', '87', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1546395723438.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1546395723438.jpg', null, '0000000011111111000000000000000000000000000000000011111111111111001111111111111100111100000011110011110000001111001110000001111100111010011111110011100000011111001101111111011101110011111111110111111111111111011111111111111111111011111011100000000000000000', '2', '1', '2019-01-04 11:24:43', '2019-01-02 10:22:04');
INSERT INTO `t_image` VALUES ('715', '336', '审核员', '183', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1546515432602.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1546515432602.jpg', null, '1111111110000000111111110000000011111110000000001111110000011000100110000000000000111100000000000111110000000000000111000000000000111100000000000111110000000000011110000000000011111100000000001111111000000000111111100000111011111110000001111111110000000011', '2', '1', '2019-01-04 11:24:37', '2019-01-03 19:37:13');
INSERT INTO `t_image` VALUES ('716', '394', '审核员', '242', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1546678583217.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1546678583217.jpg', null, '1111111111111111011111111111111100111111111111110000000100111111000000000001110100000000000000000000000000000000000000000000000000010000010000000001100000000000000110000000000000001100000000000000000000000000000000000000000000000000000000000000000000010000', '2', '1', '2019-01-07 11:33:27', '2019-01-05 16:56:25');
INSERT INTO `t_image` VALUES ('717', '394', '审核员', '242', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1546678584840.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1546678584840.jpg', null, '1111111111111111111111111111111111111111111111111111111111111111111111111111111101111111111110000000010000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '2', '1', '2019-01-07 11:33:27', '2019-01-05 16:56:27');
INSERT INTO `t_image` VALUES ('721', '336', '审核员', '183', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1546742574416.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1546742574416.jpg', null, '1111001111111111111111011111111111101110011100011111111101110001111100111010000011100001100000001100000010000000110000000000000011000000000000001100000000000000110000000000000011000000010000011110000010000000111000001000000011100000100000001110000010000000', '2', '1', '2019-01-07 11:33:30', '2019-01-06 10:42:54');
INSERT INTO `t_image` VALUES ('722', '336', '审核员', '183', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1546746280074.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1546746280074.jpg', null, '1100001111111111110111111100111110111111100000000111111110000000001111110000000000100000000000000000000000000000000000000000000000000000000000000000000000000000100010000011111111111110000000011101100000111111010111000011111111011110001111111101111000111111', '2', '1', '2019-01-07 11:33:33', '2019-01-06 11:44:42');
INSERT INTO `t_image` VALUES ('723', '336', '审核员', '183', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1546746399765.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1546746399765.jpg', null, '1111111111111111111111111111111111111111111111111111111111111111111111111111111111100000000000110110000000000011011011111000100000000110000000000000000000000000110000000000010011000000000011111100000000001110100000000000011100000000000000110000000000000001', '2', '1', '2019-01-07 11:33:34', '2019-01-06 11:46:40');
INSERT INTO `t_image` VALUES ('724', '336', '审核员', '183', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1546746476117.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1546746476117.jpg', null, '1111111111011111111111111110001111111111111110111111111111111111011111111111111110111101100111110000111000000001000000000000000000000000000000000000000000000000000000000000000100000000000001100000000000100110000000000000001100110000001111111111000001111111', '2', '1', '2019-01-07 11:33:35', '2019-01-06 11:47:57');
INSERT INTO `t_image` VALUES ('725', '336', '审核员', '183', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-image/1546781156071.png', 'http://www.lifecrystal.cn/lifecrystal-upload/thum/1546781156071.png', null, '1111111111111111111111111111111111111111111110110111111111111001000111111111000000001111111100000000000111110000000011101110000000001101000000000000111111000000000111110000000000111110000000000001111000000000000111000000000000000100000000000000010000000000', '2', '1', '2019-01-07 11:33:36', '2019-01-06 21:25:56');

-- ----------------------------
-- Table structure for t_indent
-- ----------------------------
DROP TABLE IF EXISTS `t_indent`;
CREATE TABLE `t_indent` (
  `indent_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单Id',
  `number` varchar(40) DEFAULT NULL COMMENT '订单号',
  `user_id` int(11) DEFAULT NULL COMMENT '用户姓名',
  `decedent_id` int(11) DEFAULT NULL COMMENT '逝者Id',
  `cemetery_id` int(11) DEFAULT NULL COMMENT '墓地Id',
  `out_trade_no` varchar(255) DEFAULT NULL COMMENT '支付的唯一凭证，需要根据其获取指定的订单信息',
  `money` double(11,6) DEFAULT NULL COMMENT '交易金额',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `send_time` datetime DEFAULT NULL COMMENT '客户预订的送花时间',
  `pay_type` int(1) DEFAULT NULL COMMENT '支付的种类 1 微信 2 支付宝',
  `confirm_send` datetime DEFAULT NULL COMMENT '确认发货时间',
  `month` varchar(20) DEFAULT NULL COMMENT '存储订单的月份',
  `yearMonth` varchar(60) DEFAULT NULL COMMENT '订单的年月',
  `activated` int(1) DEFAULT '1' COMMENT '订单状态  1 未支付  2 待发货 3 已发货 4 已取消',
  `deleted` int(1) DEFAULT '1' COMMENT '是否删除  1 未删除  2 已删除或者注销',
  `created_date` datetime DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`indent_id`),
  KEY `index_createDate` (`created_date`) USING BTREE,
  KEY `index_user` (`user_id`) USING BTREE,
  KEY `index_year_month` (`yearMonth`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_indent
-- ----------------------------
INSERT INTO `t_indent` VALUES ('278', '1542338284074', '210', '30', '3', null, '0.010000', '2018-11-16 11:18:11', '2018-11-16 23:17:00', '2', null, '11', '2018-11', '2', '1', '2018-11-16 11:17:52', null);
INSERT INTO `t_indent` VALUES ('279', '1542695444672', '210', '30', '3', null, '0.010000', '2018-11-20 14:30:50', '2018-10-21 08:00:00', '2', null, '11', '2018-11', '2', '1', '2018-11-20 14:30:45', null);
INSERT INTO `t_indent` VALUES ('280', '1542696077757', '210', '30', '3', null, '0.010000', '2018-11-20 14:41:22', '2018-10-21 08:00:00', '2', null, '11', '2018-11', '2', '1', '2018-11-20 14:41:18', null);
INSERT INTO `t_indent` VALUES ('281', '1542696406722', '210', '30', '3', null, '0.010000', '2018-11-20 14:46:51', '2018-10-21 08:00:00', '2', null, '11', '2018-11', '2', '1', '2018-11-20 14:46:47', null);
INSERT INTO `t_indent` VALUES ('282', '1542696873214', '210', '30', '3', null, '0.010000', '2018-11-20 14:54:37', '2018-10-21 08:00:00', '2', null, '11', '2018-11', '2', '1', '2018-11-20 14:54:33', null);
INSERT INTO `t_indent` VALUES ('283', '1542698753666', '210', '30', '3', null, '0.010000', '2018-11-20 15:25:58', '2018-10-21 08:00:00', '2', null, '11', '2018-11', '2', '1', '2018-11-20 15:25:54', null);
INSERT INTO `t_indent` VALUES ('284', '1542699504926', '210', '30', '3', null, '0.010000', '2018-11-20 15:38:29', '2018-10-21 08:00:00', '2', '2018-12-01 17:10:38', '11', '2018-11', '3', '1', '2018-11-20 15:38:25', null);
INSERT INTO `t_indent` VALUES ('285', '1542699608252', '210', '30', '3', null, '0.010000', '2018-11-20 15:40:13', '2018-10-21 08:00:00', '2', '2018-12-01 17:10:38', '11', '2018-11', '3', '1', '2018-11-20 15:40:08', null);
INSERT INTO `t_indent` VALUES ('286', '1542699963173', '210', '30', '3', null, '0.010000', '2018-11-20 15:46:07', '2018-10-21 08:00:00', '2', '2018-12-01 17:10:38', '11', '2018-11', '3', '1', '2018-11-20 15:46:03', null);

-- ----------------------------
-- Table structure for t_indent_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_indent_goods`;
CREATE TABLE `t_indent_goods` (
  `indent_goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `indent_id` int(11) DEFAULT NULL COMMENT '订单Id',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品Id',
  `num` int(11) DEFAULT '0' COMMENT '购买的商品的数量',
  `image_url` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `price` double(10,2) DEFAULT NULL COMMENT '商品价格',
  `title` varchar(255) DEFAULT NULL COMMENT '商品标题',
  `service_mobile` varchar(255) DEFAULT NULL COMMENT '商家服务电话',
  `remark` varchar(600) DEFAULT NULL COMMENT '备注',
  `activated` int(1) DEFAULT '1',
  `deleted` int(1) DEFAULT '1' COMMENT '是否删除  1 未删除  2 已删除或者注销',
  `created_date` datetime DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`indent_goods_id`),
  KEY `index_indent` (`indent_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_indent_goods
-- ----------------------------
INSERT INTO `t_indent_goods` VALUES ('277', '278', '18', '1', 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155125242白菊花.png', '0.01', '白百合', '18459191', '', '1', '1', '2018-11-16 11:17:52', null);
INSERT INTO `t_indent_goods` VALUES ('278', '279', '18', '1', 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155125242白菊花.png', '0.01', '白百合', '18459191', '', '1', '1', '2018-11-20 14:30:45', null);
INSERT INTO `t_indent_goods` VALUES ('279', '280', '18', '1', 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155125242白菊花.png', '0.01', '白百合', '18459191', '准时送达', '1', '1', '2018-11-20 14:41:18', null);
INSERT INTO `t_indent_goods` VALUES ('280', '281', '18', '1', 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155125242白菊花.png', '0.01', '白百合', '18459191', '', '1', '1', '2018-11-20 14:46:47', null);
INSERT INTO `t_indent_goods` VALUES ('281', '282', '18', '1', 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155125242白菊花.png', '0.01', '白百合', '18459191', '', '1', '1', '2018-11-20 14:54:33', null);
INSERT INTO `t_indent_goods` VALUES ('282', '283', '18', '1', 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155125242白菊花.png', '0.01', '白百合', '18459191', '', '1', '1', '2018-11-20 15:25:54', null);
INSERT INTO `t_indent_goods` VALUES ('283', '284', '18', '1', 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155125242白菊花.png', '0.01', '白百合', '18459191', '', '1', '1', '2018-11-20 15:38:25', null);
INSERT INTO `t_indent_goods` VALUES ('284', '285', '18', '1', 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155125242白菊花.png', '0.01', '白百合', '18459191', '', '1', '1', '2018-11-20 15:40:08', null);
INSERT INTO `t_indent_goods` VALUES ('285', '286', '18', '1', 'http://www.emoonbow.com/lifecrystal-upload/goods-image/1539155125242白菊花.png', '0.01', '白百合', '18459191', '', '1', '1', '2018-11-20 15:46:03', null);

-- ----------------------------
-- Table structure for t_month_bill
-- ----------------------------
DROP TABLE IF EXISTS `t_month_bill`;
CREATE TABLE `t_month_bill` (
  `month_bill_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '月对账单Id',
  `yearMonth` varchar(60) DEFAULT NULL COMMENT '年月',
  `number` varchar(255) DEFAULT NULL COMMENT '对账单号',
  `cemetery_id` int(11) DEFAULT NULL COMMENT '墓地Id',
  `total_money` double(11,6) DEFAULT '0.000000' COMMENT '订单总金额',
  `num` int(11) DEFAULT NULL COMMENT '订单次数',
  `activated` int(1) DEFAULT '2' COMMENT '1 已支付 2 未支付',
  `deleted` int(1) DEFAULT '1' COMMENT '是否删除  1 未删除  2 已删除或者注销',
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`month_bill_id`),
  KEY `index_year_month` (`yearMonth`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_month_bill
-- ----------------------------
INSERT INTO `t_month_bill` VALUES ('1', '2018-09', '11561561', '3', '200.000000', '10', '2', '1', '2018-08-17 14:29:16', '2018-10-17 14:33:07');
INSERT INTO `t_month_bill` VALUES ('15', '2018-10', '1539758539713', '3', '0.600000', '3', '2', '1', '2018-10-17 14:42:20', '2018-10-17 14:42:06');
INSERT INTO `t_month_bill` VALUES ('16', '2018-12', '1543655437683', '3', '0.030000', '3', '2', '1', '2018-12-01 17:10:38', '2018-12-01 17:10:37');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(128) DEFAULT NULL COMMENT '订单号',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `decedent_id` int(11) DEFAULT NULL COMMENT '逝者id',
  `start_date` datetime DEFAULT NULL COMMENT '预约开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '预约结束时间',
  `created_date` datetime DEFAULT NULL COMMENT '创建订单的时间',
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=319 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('2', '1532539812275', '114', '11', '2018-07-27 17:30:55', '2018-07-26 18:00:00', '2018-07-26 18:44:09', '2018-07-26 18:44:09');
INSERT INTO `t_order` VALUES ('15', '1532663721962', '114', '11', '2018-08-03 15:07:28', '2018-07-03 15:07:25', '2018-08-03 15:07:28', '2018-08-03 15:07:28');
INSERT INTO `t_order` VALUES ('17', '1535255248216', '114', '15', '1965-01-08 17:56:00', '2018-10-11 17:56:00', '2018-08-26 11:47:28', '2018-10-16 15:05:04');
INSERT INTO `t_order` VALUES ('18', '1539662918774', '114', '12', '2018-10-16 12:11:00', '2018-10-19 12:51:00', '2018-10-16 12:08:39', '2018-10-19 13:32:26');
INSERT INTO `t_order` VALUES ('20', '1539917889828', '192', '25', '2018-10-19 10:55:00', '2018-10-19 11:00:00', '2018-10-19 10:58:10', null);
INSERT INTO `t_order` VALUES ('21', '1539918145014', '192', '27', '2018-10-19 11:00:00', '2018-10-19 11:05:00', '2018-10-19 11:02:25', null);
INSERT INTO `t_order` VALUES ('22', '1539918427545', '192', '27', '2018-10-19 11:05:00', '2018-10-19 11:10:00', '2018-10-19 11:07:08', null);
INSERT INTO `t_order` VALUES ('47', '1540006544843', '192', '27', '2018-10-20 11:35:00', '2018-10-20 11:40:00', '2018-10-20 11:35:45', null);
INSERT INTO `t_order` VALUES ('48', '1540258548315', '192', '27', '2018-10-23 11:50:00', '2018-10-23 11:55:00', '2018-10-23 09:35:48', null);
INSERT INTO `t_order` VALUES ('49', '1540272258672', '192', '27', '2018-10-23 13:20:00', '2018-10-23 13:25:00', '2018-10-23 13:24:19', null);
INSERT INTO `t_order` VALUES ('50', '1540272321949', '192', '27', '2018-10-23 13:25:00', '2018-10-23 13:30:00', '2018-10-23 13:25:22', null);
INSERT INTO `t_order` VALUES ('52', '1540352817248', '192', '27', '2018-10-24 13:00:00', '2018-10-24 13:05:00', '2018-10-24 11:46:57', null);
INSERT INTO `t_order` VALUES ('53', '1540520470088', '114', '12', '2018-10-26 10:20:00', '2018-10-26 10:25:00', '2018-10-26 10:21:10', null);
INSERT INTO `t_order` VALUES ('55', '1540520978292', '114', '12', '2018-10-26 10:25:00', '2018-10-26 10:30:00', '2018-10-26 10:29:38', null);
INSERT INTO `t_order` VALUES ('56', '1540521085094', '114', '12', '2018-10-26 10:30:00', '2018-10-26 10:35:00', '2018-10-26 10:31:25', null);
INSERT INTO `t_order` VALUES ('57', '1540530775656', '114', '12', '2018-10-26 13:10:00', '2018-10-26 13:15:00', '2018-10-26 13:12:56', null);
INSERT INTO `t_order` VALUES ('59', '1540782393881', '114', '12', '2018-10-29 11:05:00', '2018-10-29 11:10:00', '2018-10-29 11:06:34', null);
INSERT INTO `t_order` VALUES ('60', '1540785722056', '114', '12', '2018-10-29 12:00:00', '2018-10-29 12:05:00', '2018-10-29 12:02:02', null);
INSERT INTO `t_order` VALUES ('61', '1540786374416', '114', '12', '2018-10-29 12:10:00', '2018-10-29 12:15:00', '2018-10-29 12:12:54', null);
INSERT INTO `t_order` VALUES ('62', '1540786673854', '114', '12', '2018-10-29 12:15:00', '2018-10-29 12:20:00', '2018-10-29 12:17:54', null);
INSERT INTO `t_order` VALUES ('63', '1540787071820', '114', '12', '2018-10-29 12:20:00', '2018-10-29 12:25:00', '2018-10-29 12:24:32', null);
INSERT INTO `t_order` VALUES ('64', '1540787828966', '114', '12', '2018-10-29 12:35:00', '2018-10-29 12:40:00', '2018-10-29 12:37:09', null);
INSERT INTO `t_order` VALUES ('65', '1540788097971', '114', '12', '2018-10-29 12:40:00', '2018-10-29 12:45:00', '2018-10-29 12:41:38', null);
INSERT INTO `t_order` VALUES ('66', '1540788371571', '114', '12', '2018-10-29 12:45:00', '2018-10-29 12:50:00', '2018-10-29 12:46:12', null);
INSERT INTO `t_order` VALUES ('67', '1540788954071', '114', '12', '2018-10-29 12:55:00', '2018-10-29 13:00:00', '2018-10-29 12:55:54', null);
INSERT INTO `t_order` VALUES ('68', '1540789350479', '114', '12', '2018-10-29 13:00:00', '2018-10-29 13:05:00', '2018-10-29 13:02:30', null);
INSERT INTO `t_order` VALUES ('69', '1540789913041', '114', '12', '2018-10-29 13:10:00', '2018-10-29 13:15:00', '2018-10-29 13:11:53', null);
INSERT INTO `t_order` VALUES ('70', '1540791544272', '114', '12', '2018-10-29 13:35:00', '2018-10-29 13:40:00', '2018-10-29 13:39:04', null);
INSERT INTO `t_order` VALUES ('71', '1540791561845', '115', '26', '2018-10-29 13:40:00', '2018-10-29 13:45:00', '2018-10-29 13:39:22', null);
INSERT INTO `t_order` VALUES ('72', '1540791637605', '114', '12', '2018-10-29 13:45:00', '2018-10-29 13:50:00', '2018-10-29 13:40:38', null);
INSERT INTO `t_order` VALUES ('73', '1540792084847', '115', '26', '2018-10-29 13:50:00', '2018-10-29 13:55:00', '2018-10-29 13:48:05', null);
INSERT INTO `t_order` VALUES ('74', '1540792405014', '114', '12', '2018-10-29 13:55:00', '2018-10-29 14:00:00', '2018-10-29 13:53:25', null);
INSERT INTO `t_order` VALUES ('76', '1540792722602', '115', '26', '2018-10-29 14:00:00', '2018-10-29 14:05:00', '2018-10-29 13:58:43', null);
INSERT INTO `t_order` VALUES ('77', '1540792884474', '114', '12', '2018-10-29 14:05:00', '2018-10-29 14:10:00', '2018-10-29 14:01:24', null);
INSERT INTO `t_order` VALUES ('79', '1540793467330', '114', '12', '2018-10-29 14:10:00', '2018-10-29 14:12:00', '2018-10-29 14:11:07', null);
INSERT INTO `t_order` VALUES ('80', '1540793567088', '114', '12', '2018-10-29 14:12:00', '2018-10-29 14:14:00', '2018-10-29 14:12:47', null);
INSERT INTO `t_order` VALUES ('81', '1540793757787', '114', '12', '2018-10-29 14:14:00', '2018-10-29 14:16:00', '2018-10-29 14:15:58', null);
INSERT INTO `t_order` VALUES ('82', '1540793795910', '114', '12', '2018-10-29 16:00:00', '2018-10-29 16:05:00', '2018-10-29 14:16:36', null);
INSERT INTO `t_order` VALUES ('83', '1540793832912', '114', '12', '2018-10-29 16:03:00', '2018-10-29 16:06:00', '2018-10-29 14:17:13', null);
INSERT INTO `t_order` VALUES ('84', '1540794374465', '115', '27', '2018-10-29 14:24:00', '2018-10-29 14:27:00', '2018-10-29 14:26:14', null);
INSERT INTO `t_order` VALUES ('85', '1540801179809', '114', '12', '2018-10-29 16:20:00', '2018-10-29 16:25:00', '2018-10-29 16:19:40', null);
INSERT INTO `t_order` VALUES ('86', '1540801910778', '114', '12', '2018-10-29 16:30:00', '2018-10-29 16:35:00', '2018-10-29 16:31:51', null);
INSERT INTO `t_order` VALUES ('87', '1540802320021', '114', '12', '2018-10-29 16:35:00', '2018-10-29 16:40:00', '2018-10-29 16:38:40', null);
INSERT INTO `t_order` VALUES ('88', '1540882606127', '114', '12', '2018-10-30 14:55:00', '2018-10-30 15:00:00', '2018-10-30 14:56:46', null);
INSERT INTO `t_order` VALUES ('89', '1540884572985', '114', '12', '2018-10-30 15:30:00', '2018-10-30 15:35:00', '2018-10-30 15:29:33', null);
INSERT INTO `t_order` VALUES ('90', '1540884590609', '114', '12', '2018-10-30 15:40:00', '2018-10-30 15:45:00', '2018-10-30 15:29:51', null);
INSERT INTO `t_order` VALUES ('94', '1540964416376', '192', '25', '2018-10-31 13:40:00', '2018-10-31 13:45:00', '2018-10-31 13:40:16', null);
INSERT INTO `t_order` VALUES ('95', '1540972017501', '201', '28', '2018-10-31 15:50:00', '2018-10-31 15:55:00', '2018-10-31 15:46:58', null);
INSERT INTO `t_order` VALUES ('96', '1540972053916', '201', '28', '2018-10-31 15:55:00', '2018-10-31 16:00:00', '2018-10-31 15:47:34', null);
INSERT INTO `t_order` VALUES ('97', '1540975465383', '114', '11', '2018-10-31 16:45:00', '2018-10-31 16:50:00', '2018-10-31 16:44:25', null);
INSERT INTO `t_order` VALUES ('98', '1540975859652', '114', '11', '2018-10-31 16:50:00', '2018-10-31 16:55:00', '2018-10-31 16:51:00', null);
INSERT INTO `t_order` VALUES ('99', '1540976739563', '114', '12', '2018-10-31 17:05:00', '2018-10-31 17:10:00', '2018-10-31 17:05:40', null);
INSERT INTO `t_order` VALUES ('100', '1540977100997', '201', '28', '2018-10-31 17:10:00', '2018-10-31 17:15:00', '2018-10-31 17:11:41', null);
INSERT INTO `t_order` VALUES ('101', '1540977489933', '114', '12', '2018-10-31 17:15:00', '2018-10-31 17:20:00', '2018-10-31 17:18:10', null);
INSERT INTO `t_order` VALUES ('102', '1540977622535', '201', '28', '2018-10-31 17:20:00', '2018-10-31 17:25:00', '2018-10-31 17:20:23', null);
INSERT INTO `t_order` VALUES ('103', '1540977955653', '201', '28', '2018-10-31 17:25:00', '2018-10-31 17:30:00', '2018-10-31 17:25:56', null);
INSERT INTO `t_order` VALUES ('104', '1540978344883', '201', '28', '2018-10-31 17:30:00', '2018-10-31 17:35:00', '2018-10-31 17:32:25', null);
INSERT INTO `t_order` VALUES ('105', '1540978707724', '114', '11', '2018-10-31 17:35:00', '2018-10-31 17:40:00', '2018-10-31 17:38:28', null);
INSERT INTO `t_order` VALUES ('108', '1540979002592', '114', '12', '2018-10-31 17:40:00', '2018-10-31 17:45:00', '2018-10-31 17:43:23', null);
INSERT INTO `t_order` VALUES ('115', '1541040571931', '114', '26', '2049-12-01 08:00:00', '2049-12-01 08:05:00', '2018-11-01 10:49:32', null);
INSERT INTO `t_order` VALUES ('116', '1541040592034', '114', '26', '2049-12-01 08:10:00', '2049-12-01 08:15:00', '2018-11-01 10:49:52', null);
INSERT INTO `t_order` VALUES ('117', '1541040611746', '114', '27', '2050-12-01 08:20:00', '2050-12-01 08:25:00', '2018-11-01 10:50:12', null);
INSERT INTO `t_order` VALUES ('118', '1541051558495', '192', '27', '2018-11-01 15:10:00', '2018-11-01 15:15:00', '2018-11-01 13:52:38', null);
INSERT INTO `t_order` VALUES ('119', '1541052140672', '114', '12', '2018-11-01 14:00:00', '2018-11-01 14:05:00', '2018-11-01 14:02:21', null);
INSERT INTO `t_order` VALUES ('120', '1541061245611', '114', '12', '2018-11-01 16:30:00', '2018-11-01 16:35:00', '2018-11-01 16:34:06', null);
INSERT INTO `t_order` VALUES ('121', '1541061663385', '114', '30', '2018-11-01 16:40:00', '2018-11-01 23:45:00', '2018-11-01 16:41:03', '2018-11-01 20:56:25');
INSERT INTO `t_order` VALUES ('122', '1541136119833', '114', '30', '2018-11-02 13:20:00', '2018-11-02 13:25:00', '2018-11-02 13:22:00', null);
INSERT INTO `t_order` VALUES ('123', '1541136397447', '114', '30', '2018-11-02 13:25:00', '2018-11-02 13:30:00', '2018-11-02 13:26:37', null);
INSERT INTO `t_order` VALUES ('124', '1541136618970', '114', '30', '2018-11-02 13:30:00', '2018-11-02 13:35:00', '2018-11-02 13:30:19', null);
INSERT INTO `t_order` VALUES ('125', '1541137459559', '114', '30', '2018-11-02 13:45:00', '2018-11-02 13:50:00', '2018-11-02 13:44:20', null);
INSERT INTO `t_order` VALUES ('126', '1541137827029', '206', '31', '2018-11-02 13:50:00', '2018-11-02 13:55:00', '2018-11-02 13:50:27', null);
INSERT INTO `t_order` VALUES ('129', '1541139366361', '114', '30', '2018-11-02 14:15:00', '2018-11-02 14:40:00', '2018-11-02 14:16:06', '2018-11-02 14:27:04');
INSERT INTO `t_order` VALUES ('131', '1541159997986', '114', '30', '2018-11-03 08:00:00', '2018-11-03 08:05:00', '2018-11-02 19:59:58', null);
INSERT INTO `t_order` VALUES ('132', '1541160023976', '114', '30', '2018-11-03 08:05:00', '2018-11-03 08:10:00', '2018-11-02 20:00:24', null);
INSERT INTO `t_order` VALUES ('139', '1541390516097', '192', '30', '2018-11-05 12:55:00', '2018-11-05 13:00:00', '2018-11-05 12:01:56', null);
INSERT INTO `t_order` VALUES ('140', '1541390534234', '192', '30', '2018-11-05 12:50:00', '2018-11-05 12:55:00', '2018-11-05 12:02:14', null);
INSERT INTO `t_order` VALUES ('142', '1541394777398', '192', '30', '2018-11-05 13:15:00', '2018-11-05 13:20:00', '2018-11-05 13:12:57', null);
INSERT INTO `t_order` VALUES ('143', '1541412627214', '192', '30', '2018-11-05 18:10:00', '2018-11-05 18:15:00', '2018-11-05 18:10:27', null);
INSERT INTO `t_order` VALUES ('144', '1541489454355', '192', '30', '2018-11-06 18:00:00', '2018-11-06 18:05:00', '2018-11-06 15:30:54', null);
INSERT INTO `t_order` VALUES ('145', '1541645414274', '192', '30', '2018-11-08 12:15:00', '2018-11-08 12:20:00', '2018-11-08 10:50:14', null);
INSERT INTO `t_order` VALUES ('147', '1541906915647', '192', '30', '2018-11-11 13:10:00', '2018-11-11 13:15:00', '2018-11-11 11:28:36', null);
INSERT INTO `t_order` VALUES ('148', '1541914171265', '192', '30', '2018-11-11 14:15:00', '2018-11-11 14:20:00', '2018-11-11 13:29:31', null);
INSERT INTO `t_order` VALUES ('154', '1542096967826', '210', '30', '2018-11-13 16:15:00', '2018-11-13 16:20:00', '2018-11-13 16:16:08', null);
INSERT INTO `t_order` VALUES ('155', '1542100424945', '210', '30', '2018-11-13 17:10:00', '2018-11-13 17:15:00', '2018-11-13 17:13:45', null);
INSERT INTO `t_order` VALUES ('156', '1542164138946', '210', '30', '2018-11-14 11:55:00', '2018-11-14 12:00:00', '2018-11-14 10:55:39', null);
INSERT INTO `t_order` VALUES ('157', '1542164238502', '210', '30', '2018-11-14 10:55:00', '2018-11-14 11:00:00', '2018-11-14 10:57:19', null);
INSERT INTO `t_order` VALUES ('158', '1542165129594', '192', '30', '2018-11-14 11:10:00', '2018-11-14 11:15:00', '2018-11-14 11:12:10', null);
INSERT INTO `t_order` VALUES ('159', '1542168687173', '210', '30', '2018-11-14 12:10:00', '2018-11-14 12:15:00', '2018-11-14 12:11:27', null);
INSERT INTO `t_order` VALUES ('160', '1542175028180', '192', '30', '2018-11-14 13:55:00', '2018-11-14 14:00:00', '2018-11-14 13:57:08', null);
INSERT INTO `t_order` VALUES ('161', '1542176214017', '192', '30', '2018-11-14 14:15:00', '2018-11-14 14:20:00', '2018-11-14 14:16:54', null);
INSERT INTO `t_order` VALUES ('164', '1542510707383', '192', '30', '2018-11-18 11:10:00', '2018-11-18 11:15:00', '2018-11-18 11:11:47', null);
INSERT INTO `t_order` VALUES ('165', '1542603482051', '192', '30', '2018-11-19 12:55:00', '2018-11-19 13:00:00', '2018-11-19 12:58:02', null);
INSERT INTO `t_order` VALUES ('166', '1542603645645', '192', '30', '2018-11-19 13:00:00', '2018-11-19 13:05:00', '2018-11-19 13:00:46', null);
INSERT INTO `t_order` VALUES ('167', '1542603969414', '192', '30', '2018-11-19 13:05:00', '2018-11-19 13:10:00', '2018-11-19 13:06:09', null);
INSERT INTO `t_order` VALUES ('168', '1542606444107', '192', '30', '2018-11-19 13:45:00', '2018-11-19 13:50:00', '2018-11-19 13:47:24', null);
INSERT INTO `t_order` VALUES ('169', '1542606720794', '210', '30', '2018-11-19 13:50:00', '2018-11-19 13:55:00', '2018-11-19 13:52:01', null);
INSERT INTO `t_order` VALUES ('170', '1542607027640', '192', '30', '2018-11-19 13:55:00', '2018-11-19 14:00:00', '2018-11-19 13:57:08', null);
INSERT INTO `t_order` VALUES ('171', '1542607144082', '210', '30', '2018-11-19 14:00:00', '2018-11-19 14:05:00', '2018-11-19 13:59:04', null);
INSERT INTO `t_order` VALUES ('172', '1542608447760', '192', '30', '2018-11-19 14:20:00', '2018-11-19 14:25:00', '2018-11-19 14:20:48', null);
INSERT INTO `t_order` VALUES ('173', '1542608560827', '210', '30', '2018-11-19 14:25:00', '2018-11-19 14:30:00', '2018-11-19 14:22:41', null);
INSERT INTO `t_order` VALUES ('177', '1542609924895', '192', '30', '2018-11-19 14:45:00', '2018-11-19 14:50:00', '2018-11-19 14:45:25', null);
INSERT INTO `t_order` VALUES ('178', '1542610388145', '192', '30', '2018-11-19 14:50:00', '2018-11-19 14:55:00', '2018-11-19 14:53:08', null);
INSERT INTO `t_order` VALUES ('179', '1542610671361', '210', '30', '2018-11-19 14:55:00', '2018-11-19 15:00:00', '2018-11-19 14:57:51', null);
INSERT INTO `t_order` VALUES ('180', '1542611007614', '210', '30', '2018-11-19 15:00:00', '2018-11-19 15:05:00', '2018-11-19 15:03:28', null);
INSERT INTO `t_order` VALUES ('181', '1542611156078', '210', '30', '2018-11-19 15:05:00', '2018-11-19 15:10:00', '2018-11-19 15:05:56', null);
INSERT INTO `t_order` VALUES ('182', '1542611519755', '210', '30', '2018-11-19 15:10:00', '2018-11-19 15:15:00', '2018-11-19 15:12:00', null);
INSERT INTO `t_order` VALUES ('184', '1542611922750', '192', '30', '2018-11-19 15:15:00', '2018-11-19 15:20:00', '2018-11-19 15:18:43', null);
INSERT INTO `t_order` VALUES ('185', '1542612084215', '192', '30', '2018-11-19 15:20:00', '2018-11-19 15:25:00', '2018-11-19 15:21:24', null);
INSERT INTO `t_order` VALUES ('186', '1542612410765', '192', '30', '2018-11-19 15:25:00', '2018-11-19 15:30:00', '2018-11-19 15:26:51', null);
INSERT INTO `t_order` VALUES ('187', '1542612825844', '210', '30', '2018-11-19 15:30:00', '2018-11-19 15:35:00', '2018-11-19 15:33:46', null);
INSERT INTO `t_order` VALUES ('188', '1542612946237', '210', '30', '2018-11-19 15:35:00', '2018-11-19 15:40:00', '2018-11-19 15:35:46', null);
INSERT INTO `t_order` VALUES ('189', '1542613296840', '192', '30', '2018-11-19 15:40:00', '2018-11-19 15:45:00', '2018-11-19 15:41:37', null);
INSERT INTO `t_order` VALUES ('190', '1542613630362', '192', '30', '2018-11-19 15:45:00', '2018-11-19 15:50:00', '2018-11-19 15:47:10', null);
INSERT INTO `t_order` VALUES ('191', '1542673679183', '192', '30', '2018-11-20 08:25:00', '2018-11-20 08:30:00', '2018-11-20 08:27:59', null);
INSERT INTO `t_order` VALUES ('193', '1542673871040', '192', '30', '2018-11-20 08:30:00', '2018-11-20 08:35:00', '2018-11-20 08:31:11', null);
INSERT INTO `t_order` VALUES ('194', '1542674388106', '192', '30', '2018-11-20 08:35:00', '2018-11-20 08:40:00', '2018-11-20 08:39:48', null);
INSERT INTO `t_order` VALUES ('195', '1542674727811', '192', '30', '2018-11-20 08:45:00', '2018-11-20 08:50:00', '2018-11-20 08:45:28', null);
INSERT INTO `t_order` VALUES ('196', '1542677112040', '192', '30', '2018-11-20 09:25:00', '2018-11-20 09:30:00', '2018-11-20 09:25:12', null);
INSERT INTO `t_order` VALUES ('197', '1542678956666', '192', '30', '2018-11-20 09:55:00', '2018-11-20 10:00:00', '2018-11-20 09:55:57', null);
INSERT INTO `t_order` VALUES ('198', '1542778449736', '210', '30', '2018-11-21 13:35:00', '2018-11-21 13:40:00', '2018-11-21 13:34:10', null);
INSERT INTO `t_order` VALUES ('200', '1542981084282', '235', '66', '2018-12-01 13:30:00', '2018-12-01 13:35:00', '2018-11-23 21:51:24', null);
INSERT INTO `t_order` VALUES ('201', '1543020582548', '192', '30', '2018-11-24 08:50:00', '2018-11-24 08:55:00', '2018-11-24 08:49:43', null);
INSERT INTO `t_order` VALUES ('202', '1543021789408', '233', '64', '2018-11-24 09:10:00', '2018-11-24 09:15:00', '2018-11-24 09:09:49', null);
INSERT INTO `t_order` VALUES ('203', '1543025308793', '192', '30', '2018-11-24 10:05:00', '2018-11-24 10:10:00', '2018-11-24 10:08:29', null);
INSERT INTO `t_order` VALUES ('204', '1543025551835', '192', '30', '2018-11-24 10:10:00', '2018-11-24 10:15:00', '2018-11-24 10:12:32', null);
INSERT INTO `t_order` VALUES ('205', '1543025756823', '192', '30', '2018-11-24 10:15:00', '2018-11-24 10:20:00', '2018-11-24 10:15:57', null);
INSERT INTO `t_order` VALUES ('208', '1543041823466', '335', '182', '2018-11-24 14:45:00', '2018-11-24 14:50:00', '2018-11-24 14:43:43', null);
INSERT INTO `t_order` VALUES ('209', '1543044123795', '192', '30', '2018-11-24 15:20:00', '2018-11-24 15:25:00', '2018-11-24 15:22:04', null);
INSERT INTO `t_order` VALUES ('210', '1543049228019', '210', '30', '2018-11-24 16:45:00', '2018-11-24 16:50:00', '2018-11-24 16:47:08', null);
INSERT INTO `t_order` VALUES ('211', '1543108051335', '192', '30', '2018-11-25 09:10:00', '2018-11-25 09:15:00', '2018-11-25 09:07:31', null);
INSERT INTO `t_order` VALUES ('212', '1543111261015', '218', '49', '2018-11-25 18:15:00', '2018-11-25 18:20:00', '2018-11-25 10:01:01', null);
INSERT INTO `t_order` VALUES ('213', '1543126749444', '269', '103', '2018-12-03 18:15:00', '2018-12-03 18:20:00', '2018-11-25 14:19:09', null);
INSERT INTO `t_order` VALUES ('214', '1543208640766', '192', '30', '2018-11-26 13:00:00', '2018-11-26 13:05:00', '2018-11-26 13:04:01', null);
INSERT INTO `t_order` VALUES ('215', '1543209938240', '192', '30', '2018-11-26 13:25:00', '2018-11-26 13:30:00', '2018-11-26 13:25:38', null);
INSERT INTO `t_order` VALUES ('216', '1543212498811', '192', '221', '2018-11-26 14:05:00', '2018-11-26 14:10:00', '2018-11-26 14:08:19', null);
INSERT INTO `t_order` VALUES ('218', '1543219422571', '192', '221', '2018-11-26 16:00:00', '2018-11-26 16:05:00', '2018-11-26 16:03:43', null);
INSERT INTO `t_order` VALUES ('219', '1543280123923', '192', '221', '2018-11-27 08:55:00', '2018-11-27 09:00:00', '2018-11-27 08:55:24', null);
INSERT INTO `t_order` VALUES ('220', '1543287223158', '192', '221', '2018-11-27 10:50:00', '2018-11-27 10:55:00', '2018-11-27 10:53:43', null);
INSERT INTO `t_order` VALUES ('221', '1543291525640', '192', '221', '2018-11-27 12:05:00', '2018-11-27 12:10:00', '2018-11-27 12:05:26', null);
INSERT INTO `t_order` VALUES ('222', '1543379224270', '210', '30', '2018-11-28 12:25:00', '2018-11-28 12:30:00', '2018-11-28 12:27:04', null);
INSERT INTO `t_order` VALUES ('224', '1543458434800', '210', '30', '2018-11-29 10:30:00', '2018-11-29 10:35:00', '2018-11-29 10:27:15', null);
INSERT INTO `t_order` VALUES ('225', '1543464348354', '192', '221', '2018-11-29 12:05:00', '2018-11-29 12:10:00', '2018-11-29 12:05:48', null);
INSERT INTO `t_order` VALUES ('226', '1543467479265', '192', '221', '2018-11-29 12:55:00', '2018-11-29 13:00:00', '2018-11-29 12:57:59', null);
INSERT INTO `t_order` VALUES ('227', '1543472231412', '192', '221', '2018-11-29 14:15:00', '2018-11-29 14:20:00', '2018-11-29 14:17:11', null);
INSERT INTO `t_order` VALUES ('228', '1543488134205', '192', '221', '2018-11-29 18:40:00', '2018-11-29 18:45:00', '2018-11-29 18:42:14', null);
INSERT INTO `t_order` VALUES ('229', '1543541410025', '192', '221', '2018-11-30 09:30:00', '2018-11-30 09:35:00', '2018-11-30 09:30:10', null);
INSERT INTO `t_order` VALUES ('230', '1543545346753', '192', '221', '2018-11-30 10:35:00', '2018-11-30 10:40:00', '2018-11-30 10:35:47', null);
INSERT INTO `t_order` VALUES ('231', '1543647072116', '330', '174', '2018-12-22 10:00:00', '2018-12-22 10:05:00', '2018-12-01 14:51:12', null);
INSERT INTO `t_order` VALUES ('232', '1543647101355', '330', '175', '2018-12-22 10:05:00', '2018-12-22 10:10:00', '2018-12-01 14:51:41', null);
INSERT INTO `t_order` VALUES ('233', '1543723353418', '344', '191', '2018-12-02 12:00:00', '2018-12-02 12:05:00', '2018-12-02 12:02:33', null);
INSERT INTO `t_order` VALUES ('234', '1543723406181', '344', '191', '2018-12-02 12:05:00', '2018-12-02 12:10:00', '2018-12-02 12:03:26', null);
INSERT INTO `t_order` VALUES ('235', '1543811544461', '344', '191', '2018-12-03 12:30:00', '2018-12-03 12:35:00', '2018-12-03 12:32:24', null);
INSERT INTO `t_order` VALUES ('236', '1543825411096', '192', '221', '2018-12-03 16:25:00', '2018-12-03 16:30:00', '2018-12-03 16:23:31', null);
INSERT INTO `t_order` VALUES ('245', '1544078052873', '192', '221', '2018-12-06 14:35:00', '2018-12-06 14:40:00', '2018-12-06 14:34:13', null);
INSERT INTO `t_order` VALUES ('246', '1544144135603', '192', '221', '2018-12-07 08:55:00', '2018-12-07 09:00:00', '2018-12-07 08:55:36', null);
INSERT INTO `t_order` VALUES ('247', '1544149408835', '193', '31', '2018-12-29 10:20:00', '2018-12-29 10:25:00', '2018-12-07 10:23:29', null);
INSERT INTO `t_order` VALUES ('252', '1544151454110', '210', '32', '2018-12-07 11:35:00', '2018-12-07 11:40:00', '2018-12-07 10:57:34', null);
INSERT INTO `t_order` VALUES ('253', '1544151474628', '210', '33', '2018-12-07 12:00:00', '2018-12-07 12:05:00', '2018-12-07 10:57:55', null);
INSERT INTO `t_order` VALUES ('254', '1544152724124', '192', '221', '2018-12-07 11:15:00', '2018-12-07 11:20:00', '2018-12-07 11:18:44', null);
INSERT INTO `t_order` VALUES ('257', '1544249861383', '192', '221', '2018-12-08 14:15:00', '2018-12-08 14:20:00', '2018-12-08 14:17:41', null);
INSERT INTO `t_order` VALUES ('258', '1544321044746', '354', '201', '2018-12-09 10:05:00', '2018-12-09 10:10:00', '2018-12-09 10:04:05', null);
INSERT INTO `t_order` VALUES ('259', '1544321066021', '354', '201', '2018-12-09 10:10:00', '2018-12-09 10:15:00', '2018-12-09 10:04:26', null);
INSERT INTO `t_order` VALUES ('260', '1544424597271', '210', '35', '2018-12-10 14:50:00', '2018-12-10 14:55:00', '2018-12-10 14:49:57', null);
INSERT INTO `t_order` VALUES ('266', '1544426395466', '210', '35', '2018-12-10 18:50:00', '2018-12-10 18:55:00', '2018-12-10 15:19:55', null);
INSERT INTO `t_order` VALUES ('267', '1544426487812', '210', '32', '2018-12-10 15:45:00', '2018-12-10 15:50:00', '2018-12-10 15:21:28', null);
INSERT INTO `t_order` VALUES ('268', '1544426515672', '210', '35', '2018-12-10 15:20:00', '2018-12-10 15:25:00', '2018-12-10 15:21:56', null);
INSERT INTO `t_order` VALUES ('269', '1544439884794', '210', '30', '2018-12-11 08:25:00', '2018-12-11 08:30:00', '2018-12-10 19:04:45', null);
INSERT INTO `t_order` VALUES ('271', '1544491414563', '210', '33', '2018-12-14 20:35:00', '2018-12-14 20:40:00', '2018-12-11 09:23:35', null);
INSERT INTO `t_order` VALUES ('272', '1544497196957', '210', '32', '2018-12-11 11:50:00', '2018-12-11 11:55:00', '2018-12-11 10:59:57', null);
INSERT INTO `t_order` VALUES ('276', '1544581837230', '192', '221', '2018-12-12 10:30:00', '2018-12-12 10:35:00', '2018-12-12 10:30:37', null);
INSERT INTO `t_order` VALUES ('279', '1544668852576', '193', '30', '2018-12-29 08:00:00', '2018-12-29 08:05:00', '2018-12-13 10:40:53', null);
INSERT INTO `t_order` VALUES ('280', '1544671662016', '210', '32', '2018-12-13 11:40:00', '2018-12-13 11:45:00', '2018-12-13 11:27:42', null);
INSERT INTO `t_order` VALUES ('282', '1544837244676', '370', '206', '2018-12-15 09:30:00', '2018-12-15 09:35:00', '2018-12-15 09:27:25', null);
INSERT INTO `t_order` VALUES ('284', '1544894082097', '286', '114', '2018-12-16 12:00:00', '2018-12-16 12:05:00', '2018-12-16 01:14:42', null);
INSERT INTO `t_order` VALUES ('287', '1544933263442', '286', '114', '2018-12-16 12:10:00', '2018-12-16 12:15:00', '2018-12-16 12:07:43', null);
INSERT INTO `t_order` VALUES ('288', '1544963659007', '336', '183', '2018-12-22 15:00:00', '2018-12-22 15:05:00', '2018-12-16 20:34:19', null);
INSERT INTO `t_order` VALUES ('289', '1545003034556', '286', '114', '2018-12-22 13:00:00', '2018-12-22 13:05:00', '2018-12-17 07:30:35', null);
INSERT INTO `t_order` VALUES ('290', '1545030392413', '192', '221', '2018-12-17 15:05:00', '2018-12-17 15:10:00', '2018-12-17 15:06:32', null);
INSERT INTO `t_order` VALUES ('291', '1545120101532', '192', '221', '2018-12-18 16:00:00', '2018-12-18 16:05:00', '2018-12-18 16:01:42', null);
INSERT INTO `t_order` VALUES ('292', '1545122460551', '192', '221', '2018-12-18 16:40:00', '2018-12-18 16:45:00', '2018-12-18 16:41:01', null);
INSERT INTO `t_order` VALUES ('293', '1545126757901', '192', '221', '2018-12-18 17:50:00', '2018-12-18 17:55:00', '2018-12-18 17:52:38', null);
INSERT INTO `t_order` VALUES ('294', '1545140773112', '342', '189', '2018-12-22 08:30:00', '2018-12-22 08:35:00', '2018-12-18 21:46:13', null);
INSERT INTO `t_order` VALUES ('295', '1545192563738', '371', '170', '2018-12-22 09:55:00', '2018-12-22 10:00:00', '2018-12-19 12:09:24', null);
INSERT INTO `t_order` VALUES ('296', '1545232282415', '267', '101', '2018-12-20 09:00:00', '2018-12-20 09:05:00', '2018-12-19 23:11:22', null);
INSERT INTO `t_order` VALUES ('297', '1545268466407', '267', '101', '2018-12-22 09:30:00', '2018-12-22 09:35:00', '2018-12-20 09:14:26', null);
INSERT INTO `t_order` VALUES ('298', '1545351935999', '243', '74', '2018-12-21 08:25:00', '2018-12-21 08:30:00', '2018-12-21 08:25:36', null);
INSERT INTO `t_order` VALUES ('299', '1545380397286', '236', '67', '2018-12-22 08:00:00', '2018-12-22 08:05:00', '2018-12-21 16:19:57', null);
INSERT INTO `t_order` VALUES ('300', '1545386759972', '314', '156', '2018-12-22 12:00:00', '2018-12-22 12:05:00', '2018-12-21 18:06:00', null);
INSERT INTO `t_order` VALUES ('302', '1545388091176', '389', '237', '2018-12-22 14:30:00', '2018-12-22 14:35:00', '2018-12-21 18:28:11', null);
INSERT INTO `t_order` VALUES ('303', '1545441935669', '276', '118', '2018-12-22 10:10:00', '2018-12-22 10:15:00', '2018-12-22 09:25:36', null);
INSERT INTO `t_order` VALUES ('304', '1545442570446', '308', '148', '2018-12-22 10:20:00', '2018-12-22 10:25:00', '2018-12-22 09:36:10', null);
INSERT INTO `t_order` VALUES ('305', '1545448444686', '360', '72', '2018-12-22 11:25:00', '2018-12-22 11:30:00', '2018-12-22 11:14:05', null);
INSERT INTO `t_order` VALUES ('306', '1545451952425', '314', '156', '2018-12-22 12:15:00', '2018-12-22 12:20:00', '2018-12-22 12:12:32', null);
INSERT INTO `t_order` VALUES ('307', '1545452483944', '314', '156', '2018-12-22 12:20:00', '2018-12-22 12:25:00', '2018-12-22 12:21:24', null);
INSERT INTO `t_order` VALUES ('308', '1545454016176', '314', '156', '2018-12-22 12:50:00', '2018-12-22 12:55:00', '2018-12-22 12:46:56', null);
INSERT INTO `t_order` VALUES ('310', '1545463772864', '330', '174', '2018-12-22 15:30:00', '2018-12-22 15:35:00', '2018-12-22 15:29:33', null);
INSERT INTO `t_order` VALUES ('311', '1545530322557', '277', '136', '2018-12-23 09:55:00', '2018-12-23 10:00:00', '2018-12-23 09:58:43', null);
INSERT INTO `t_order` VALUES ('312', '1545530408187', '277', '136', '2018-12-23 10:00:00', '2018-12-23 10:05:00', '2018-12-23 10:00:08', null);
INSERT INTO `t_order` VALUES ('313', '1545621346651', '210', '35', '2018-12-24 11:15:00', '2018-12-24 11:20:00', '2018-12-24 11:15:47', null);
INSERT INTO `t_order` VALUES ('314', '1545810052914', '286', '114', '2018-12-26 15:45:00', '2018-12-26 15:50:00', '2018-12-26 15:40:53', null);
INSERT INTO `t_order` VALUES ('315', '1546226532643', '192', '221', '2018-12-31 11:25:00', '2018-12-31 11:30:00', '2018-12-31 11:22:13', null);
INSERT INTO `t_order` VALUES ('316', '1546227151722', '192', '221', '2018-12-31 11:30:00', '2018-12-31 11:35:00', '2018-12-31 11:32:32', null);
INSERT INTO `t_order` VALUES ('317', '1546309450524', '192', '221', '2019-01-01 10:20:00', '2019-01-01 10:25:00', '2019-01-01 10:24:11', null);
INSERT INTO `t_order` VALUES ('318', '1546585327852', '192', '221', '2019-01-05 08:00:00', '2019-01-05 08:05:00', '2019-01-04 15:02:08', null);

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
-- Table structure for t_screen_banner
-- ----------------------------
DROP TABLE IF EXISTS `t_screen_banner`;
CREATE TABLE `t_screen_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '大屏广告',
  `banner_type` int(1) DEFAULT '1' COMMENT '类型：2视频，1 图片',
  `banner_name` varchar(128) DEFAULT NULL COMMENT '广告名称',
  `banner_location` varchar(40) DEFAULT NULL COMMENT '广告墓地的id，多个用逗号分割',
  `image_url` varchar(255) DEFAULT '' COMMENT '图片URL',
  `start_date` datetime DEFAULT NULL COMMENT '开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '结束时间',
  `sort_index` int(11) DEFAULT NULL COMMENT '排序',
  `video_url` varchar(255) DEFAULT '' COMMENT '视频地址',
  `click_count` int(8) DEFAULT '0' COMMENT '点击次数',
  `link_url` varchar(255) DEFAULT NULL COMMENT '链接  ',
  `show_time` int(11) DEFAULT NULL COMMENT '广告显示的时间',
  `top` int(1) DEFAULT NULL COMMENT '1 置顶',
  `top_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `description` varchar(255) DEFAULT NULL COMMENT '介绍',
  `activated` int(1) DEFAULT '1' COMMENT '1 上线 2 下线',
  `deleted` int(1) DEFAULT '1' COMMENT '1 未删除 2 已删除',
  `created_date` datetime DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_screen_banner
-- ----------------------------
INSERT INTO `t_screen_banner` VALUES ('126', '1', '图片一', '3,', 'http://www.lifecrystal.cn/lifecrystal-upload/screen-image/154141031869201fef0a50a777898391eed8c310e088f.jpg', '2018-11-05 17:31:59', null, '1', '', '0', null, '5', null, null, null, '1', '1', '2018-11-05 17:31:59', null);
INSERT INTO `t_screen_banner` VALUES ('128', '1', '图片三', '3,', 'http://www.lifecrystal.cn/lifecrystal-upload/screen-image/15414103375414f193b87b612fd9d5caba978517c18ce.jpg', '2018-11-05 17:32:18', null, '1', '', '0', null, '5', null, null, null, '1', '1', '2018-11-05 17:32:18', null);
INSERT INTO `t_screen_banner` VALUES ('129', '1', '图片四', '3,', 'http://www.lifecrystal.cn/lifecrystal-upload/screen-image/15414103470865b2408e118c1e2378cbe32fd75a47c94.jpg', '2018-11-05 00:00:00', null, '1', '', '0', null, '10', null, '2019-01-06 21:25:33', null, '1', '1', '2019-01-06 21:25:33', '2019-01-06 21:25:33');
INSERT INTO `t_screen_banner` VALUES ('130', '1', '图片五', '3,', 'http://www.lifecrystal.cn/lifecrystal-upload/screen-image/15414103559578a665979cad38acee4b88e38089b4cfb.jpg', '2018-11-05 00:00:00', null, '1', '', '0', null, '10', null, '2019-01-06 21:25:26', null, '1', '1', '2019-01-06 21:25:26', '2019-01-06 21:25:26');
INSERT INTO `t_screen_banner` VALUES ('131', '1', '图片六', '3,', 'http://www.lifecrystal.cn/lifecrystal-upload/screen-image/154141037005648eaee2688759a517c851282fa0b8dd3.jpg', '2018-11-05 00:00:00', null, '1', '', '0', null, '10', null, '2019-01-06 21:25:19', null, '1', '1', '2019-01-06 21:25:19', '2019-01-06 21:25:19');
INSERT INTO `t_screen_banner` VALUES ('132', '1', '图片七', '3,', 'http://www.lifecrystal.cn/lifecrystal-upload/screen-image/154141038017290dff1b51c3ae462c15e1347e035dd5d.jpg', '2018-11-05 00:00:00', null, '1', '', '0', null, '10', null, '2019-01-06 21:25:12', null, '1', '1', '2019-01-06 21:25:13', '2019-01-06 21:25:12');
INSERT INTO `t_screen_banner` VALUES ('135', '1', '图片十', '3,', 'http://www.lifecrystal.cn/lifecrystal-upload/screen-image/15414104230486121805c834a49286fdce0296d1eaa01.jpg', '2018-11-05 00:00:00', null, '1', '', '0', null, '10', null, '2019-01-06 21:25:06', null, '1', '1', '2019-01-06 21:25:06', '2019-01-06 21:25:06');
INSERT INTO `t_screen_banner` VALUES ('136', '1', '图片十一', '3,', 'http://www.lifecrystal.cn/lifecrystal-upload/screen-image/1541410431620a372f1228130ed86292119b86a8ffe25.jpg', '2018-11-05 00:00:00', null, '1', '', '0', null, '10', null, '2019-01-06 21:24:59', null, '1', '1', '2019-01-06 21:24:59', '2019-01-06 21:24:59');
INSERT INTO `t_screen_banner` VALUES ('138', '1', '图片十三', '3,', 'http://www.lifecrystal.cn/lifecrystal-upload/screen-image/1541410467572b51fc0bfaba6440ea1e34cab40eeb908.jpg', '2018-11-05 00:00:00', null, '1', '', '0', null, '10', null, '2019-01-06 21:24:52', null, '1', '1', '2019-01-06 21:24:53', '2019-01-06 21:24:52');
INSERT INTO `t_screen_banner` VALUES ('139', '1', '图片十四', '3,', 'http://www.lifecrystal.cn/lifecrystal-upload/screen-image/1541410475004b67c50fc5e2059574bd2d633c8cc94d9.jpg', '2018-11-05 00:00:00', null, '1', '', '0', null, '10', null, '2019-01-06 21:24:45', null, '1', '1', '2019-01-06 21:24:46', '2019-01-06 21:24:45');
INSERT INTO `t_screen_banner` VALUES ('142', '1', '图片十七', '3,', 'http://www.lifecrystal.cn/lifecrystal-upload/screen-image/1541410503417ddb93ec394cdc3ebdbd5ef079e7f3e80.jpg', '2018-11-05 00:00:00', null, '1', '', '0', null, '10', null, '2019-01-06 21:24:38', null, '1', '1', '2019-01-06 21:24:39', '2019-01-06 21:24:38');
INSERT INTO `t_screen_banner` VALUES ('143', '1', '图片十八', '3,', 'http://www.lifecrystal.cn/lifecrystal-upload/screen-image/1541410511961e024c409d433e447881fec4221a6d434.jpg', '2018-11-05 00:00:00', null, '1', '', '0', null, '10', null, '2019-01-06 21:24:25', null, '1', '1', '2019-01-06 21:24:26', '2019-01-06 21:24:25');

-- ----------------------------
-- Table structure for t_setting
-- ----------------------------
DROP TABLE IF EXISTS `t_setting`;
CREATE TABLE `t_setting` (
  `setting_id` int(1) NOT NULL,
  `sacrifice_start_time` varchar(32) DEFAULT NULL COMMENT '祭祀开始时间',
  `sacrifice_end_time` varchar(32) DEFAULT NULL COMMENT '祭祀结束时间',
  `time_interval` int(4) DEFAULT NULL COMMENT '时间间隔',
  `light_duration` int(4) DEFAULT NULL COMMENT '点灯超时时长',
  `download_url` varchar(255) DEFAULT NULL COMMENT '下载链接',
  `activated` int(1) DEFAULT '1' COMMENT '生效1；失效2',
  `deleted` int(1) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_setting
-- ----------------------------
INSERT INTO `t_setting` VALUES ('1', '08:00', '21:00', '5', '15', 'http://www.baidu.com', '1', '1', null, '2019-01-06 21:25:55');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `vip_type` int(1) DEFAULT '1' COMMENT 'vip类型：1普通，2藏晶苑会员',
  `jm_username` varchar(32) DEFAULT '' COMMENT '极光用户名',
  `jm_password` varchar(64) DEFAULT '' COMMENT '极光密码',
  `nick_name` varchar(32) DEFAULT '' COMMENT '昵称',
  `real_name` varchar(32) DEFAULT '' COMMENT '真实姓名',
  `sex` int(1) DEFAULT '3' COMMENT '性别：1男，2女，3保密',
  `age` int(3) DEFAULT NULL,
  `user_icon` varchar(128) DEFAULT 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg' COMMENT '头像',
  `height` int(4) DEFAULT NULL COMMENT '身高',
  `weight` int(4) DEFAULT NULL COMMENT '体重',
  `address` varchar(128) DEFAULT '' COMMENT '地址',
  `signature` varchar(128) DEFAULT '' COMMENT '签名',
  `mobile` varchar(16) NOT NULL DEFAULT '' COMMENT '联系电话',
  `email` varchar(32) DEFAULT '' COMMENT '邮箱',
  `level` int(4) DEFAULT '1' COMMENT '等级',
  `integral` int(11) DEFAULT '0' COMMENT '积分',
  `login_integral` int(11) DEFAULT '0' COMMENT '登录累积积分',
  `balance` double(16,2) DEFAULT '0.00' COMMENT '账户余额',
  `laugitude` double(16,6) DEFAULT '0.000000' COMMENT '经度',
  `latitude` double(16,6) DEFAULT '0.000000' COMMENT '纬度',
  `login_status` int(1) DEFAULT '0' COMMENT '登录状态，1表示登录中，2标志未登录',
  `registration_id` varchar(64) DEFAULT NULL COMMENT '登录设备id',
  `auth_code` varchar(255) DEFAULT NULL COMMENT '验证码',
  `auth_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '发送验证码的时间',
  `activated` int(1) DEFAULT '0' COMMENT '登录状态标记，1表示登录中，2表示退出登录',
  `deleted` int(1) DEFAULT '1' COMMENT '1 表示没有被删除  0表示被删除了',
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `last_login_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '最近一次登录的时间',
  PRIMARY KEY (`user_id`),
  KEY `index_mobile` (`mobile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=395 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('114', '15612341234', '729296', '2', 'yy15612341234', 'yy12345678', 'Tonghualide', '童话', '1', '33', 'http://www.emoonbow.com/lifecrystal-upload/user-image/1541066735557.jpg', null, null, '上海市', '', '15612341234', '', '1', '5', '5', '10000.00', '121.000000', '31.000000', '0', '1114a89792fbec444b5', '331354', '2018-11-01 18:05:35', '1', '1', '2018-05-09 14:10:14', '2018-11-01 18:05:36', '2018-12-17 11:50:43');
INSERT INTO `t_user` VALUES ('192', '乾隆', '2134', '2', '', '', '魏璎珞', '', '1', null, 'http://www.emoonbow.com/lifecrystal-upload/user-image/1539918840016.jpg', null, null, '', '', '13801863737', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '346868', '2018-12-01 13:43:41', '1', '1', '2018-10-18 11:26:38', '2018-12-01 13:43:42', '2019-01-07 10:07:27');
INSERT INTO `t_user` VALUES ('193', '韩张', '123456', '2', '', '', '李三', '', '1', null, 'http://www.lifecrystal.cn/lifecrystal-upload/user-image/1544149247400.jpg', null, null, '', '', '15921538591', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '968722', '2018-12-13 10:39:20', '1', '1', '2018-10-23 17:02:10', '2018-12-13 10:39:20', '2018-12-13 10:39:41');
INSERT INTO `t_user` VALUES ('194', '茅茅', '344297', '2', '', '', '', '', '2', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '15601632127', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-11 17:41:19', '1', '1', '2018-10-25 14:12:07', '2018-12-11 17:41:19', '2018-12-18 04:19:09');
INSERT INTO `t_user` VALUES ('201', '测试D', '923818', '2', '', '', '测试', '', '2', null, 'http://www.emoonbow.com/lifecrystal-upload/user-image/1540969696812.jpg', null, null, '', '', '15881026047', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '525733', '2018-11-01 12:19:22', '1', '1', '2018-10-31 10:37:09', '2018-10-31 17:10:36', '2018-10-31 17:39:32');
INSERT INTO `t_user` VALUES ('204', 'victor', '123321', '2', '', '', '风中g', '', '1', null, 'http://www.lifecrystal.cn/lifecrystal-upload/user-image/1541137467059.jpg', null, null, '', '', '13661990032', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '935272', '2018-12-08 13:35:25', '1', '1', '2018-11-02 11:11:09', '2018-12-08 13:35:26', '2018-12-23 17:14:34');
INSERT INTO `t_user` VALUES ('205', '韩方', '123456', '2', '', '', '', '', '2', null, 'http://www.lifecrystal.cn/lifecrystal-upload/user-image/1541151159207.jpg', null, null, '', '', '15738519625', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '544485', '2018-11-02 17:50:15', '1', '1', '2018-11-02 11:14:14', '2018-11-02 17:50:25', '2018-12-11 18:26:34');
INSERT INTO `t_user` VALUES ('210', 'jackC', '666666', '2', '', '', '张三', '', '1', null, 'http://www.lifecrystal.cn/lifecrystal-upload/user-image/1544150813380.jpg', null, null, '', '', '18796327106', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-10 14:57:11', '1', '1', '2018-11-12 18:15:14', '2018-12-10 14:57:12', '2019-01-06 17:24:54');
INSERT INTO `t_user` VALUES ('212', '程亮', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13062606662', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-13 15:37:46', '1', '1', '2018-11-13 15:37:25', '2018-11-13 15:37:46', '2018-11-21 19:47:08');
INSERT INTO `t_user` VALUES ('214', '杨睿', '666666', '2', '', '', '杨鸿翔', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18930016888', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-24 12:24:28', '1', '1', '2018-11-13 15:51:25', '2018-11-24 12:24:29', '2018-12-22 17:40:22');
INSERT INTO `t_user` VALUES ('215', '董桂芳', '666666', '2', '', '', '', '', '2', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13916430446', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-13 15:57:14', '1', '1', '2018-11-13 15:56:25', '2018-11-13 15:57:14', '2018-11-22 10:50:07');
INSERT INTO `t_user` VALUES ('216', '陆建星', '913498', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13661471800', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '175275', '2018-12-02 16:03:58', '1', '1', '2018-11-13 16:05:16', '2018-12-02 16:59:30', '2018-12-02 16:05:35');
INSERT INTO `t_user` VALUES ('217', '袁博', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13818162510', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-22 10:58:11', '1', '1', '2018-11-13 16:43:03', '2018-11-22 10:58:11', '2018-11-25 11:31:13');
INSERT INTO `t_user` VALUES ('218', '陈婷婷', '20180629', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13917938673', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '499252', '2018-11-25 09:37:45', '1', '1', '2018-11-13 16:44:22', '2018-11-25 09:37:45', '2018-11-25 09:38:25');
INSERT INTO `t_user` VALUES ('219', '邹勇', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13917593809', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-08 13:20:42', '1', '1', '2018-11-13 16:45:19', '2018-12-08 13:20:42', '2018-12-22 10:03:08');
INSERT INTO `t_user` VALUES ('220', '秦克勤', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13311660602', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-25 09:13:03', '1', '1', '2018-11-13 16:46:15', '2018-11-25 09:13:03', '2018-11-27 22:25:03');
INSERT INTO `t_user` VALUES ('221', '李耀宗', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '15221804816', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, null, '0', '1', '2018-11-13 16:47:10', null, null);
INSERT INTO `t_user` VALUES ('222', '戴华', '666666', '2', '', '', '张莉', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13564220441', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-25 09:32:29', '1', '1', '2018-11-13 16:47:45', '2018-11-25 09:32:29', '2018-12-28 06:52:23');
INSERT INTO `t_user` VALUES ('223', '刘淑芳', '675565', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18330675565', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '961137', '2018-11-25 07:47:17', '1', '1', '2018-11-13 16:48:18', '2018-11-25 07:47:16', '2018-12-18 11:55:40');
INSERT INTO `t_user` VALUES ('224', '鹿红', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18321022965', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-25 09:18:38', '1', '1', '2018-11-13 16:48:50', '2018-11-25 09:18:38', '2019-01-01 10:51:08');
INSERT INTO `t_user` VALUES ('225', '朱麟', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13761852613', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-25 09:18:17', '1', '1', '2018-11-13 16:49:27', '2018-11-25 09:18:17', '2018-12-22 10:41:11');
INSERT INTO `t_user` VALUES ('226', '高秀红', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '15221079108', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-25 08:44:26', '1', '1', '2018-11-13 16:50:13', '2018-11-25 08:44:26', '2018-11-25 18:15:29');
INSERT INTO `t_user` VALUES ('227', '邢杏珍', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '17317828314', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-13 22:44:31', '1', '1', '2018-11-13 16:50:51', '2018-11-13 22:44:31', '2018-11-25 16:48:31');
INSERT INTO `t_user` VALUES ('228', '卢家兴', '20180807', '2', '', '', '李合璧', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '17612160858', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '262996', '2018-11-25 11:56:23', '1', '1', '2018-11-13 16:52:00', '2018-11-25 11:56:39', '2018-12-08 21:12:12');
INSERT INTO `t_user` VALUES ('229', '谈程晓', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13761943915', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-25 09:18:12', '1', '1', '2018-11-13 16:53:03', '2018-11-25 09:18:12', '2018-11-25 10:39:47');
INSERT INTO `t_user` VALUES ('230', '谢敏敏', 'xmm338338', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13764720090', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '834916', '2019-01-03 08:04:43', '1', '1', '2018-11-13 16:53:35', '2018-11-25 09:14:30', '2019-01-03 08:05:07');
INSERT INTO `t_user` VALUES ('231', '胥传宝', '697676', '2', '', '', '夏菊屏', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18221131668', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '697676', '2018-12-25 22:36:58', '1', '1', '2018-11-13 16:54:11', '2018-12-25 22:36:59', '2018-12-25 22:36:58');
INSERT INTO `t_user` VALUES ('232', '严岳富', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13901875250', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-22 10:01:45', '1', '1', '2018-11-13 17:50:45', '2018-12-22 10:01:45', '2018-12-24 13:25:09');
INSERT INTO `t_user` VALUES ('233', '唐凤云', 'iloveyou', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13816075332', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '357218', '2018-12-09 16:01:06', '1', '1', '2018-11-13 17:51:27', '2018-11-24 09:07:58', '2018-12-09 16:01:33');
INSERT INTO `t_user` VALUES ('234', '曹轶伦', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '15921992370', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-16 10:17:31', '1', '1', '2018-11-13 17:52:22', '2018-12-16 10:17:31', '2019-01-01 19:29:00');
INSERT INTO `t_user` VALUES ('235', '陈曙芬', 'csfdezss2018', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13917332807', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '385562', '2018-11-23 21:11:50', '1', '1', '2018-11-13 17:52:58', '2018-11-23 21:11:49', '2018-12-25 08:14:45');
INSERT INTO `t_user` VALUES ('236', '徐钢', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13816780835', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-14 16:54:32', '1', '1', '2018-11-13 17:53:29', '2018-11-14 16:54:32', '2018-12-21 16:08:21');
INSERT INTO `t_user` VALUES ('237', '杨素梅', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13917190955', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, null, '0', '1', '2018-11-13 17:54:05', null, null);
INSERT INTO `t_user` VALUES ('238', '生斌', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13585752813', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-02 10:03:52', '1', '1', '2018-11-13 17:54:31', '2018-12-02 10:03:52', '2018-12-22 11:05:35');
INSERT INTO `t_user` VALUES ('239', '于洪波', '666666', '2', '', '', '李秋芹', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13801884918', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-24 16:32:01', '1', '1', '2018-11-13 17:55:04', '2018-12-24 16:32:02', '2018-12-24 16:32:01');
INSERT INTO `t_user` VALUES ('240', '朱晓岑', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13661912209', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-09 09:17:35', '1', '1', '2018-11-13 17:55:42', '2018-12-09 09:17:35', '2018-12-23 08:49:45');
INSERT INTO `t_user` VALUES ('242', '蒋晓凤', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13621942191', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-17 14:50:28', '1', '1', '2018-11-13 17:56:59', '2018-11-17 14:50:28', '2018-11-20 09:40:46');
INSERT INTO `t_user` VALUES ('243', '滕燕君', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13641743060', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-17 12:45:21', '1', '1', '2018-11-13 17:57:43', '2018-11-17 12:45:21', '2019-01-03 14:44:00');
INSERT INTO `t_user` VALUES ('244', '师文娟', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13817789933', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-24 14:44:34', '1', '1', '2018-11-13 17:59:01', '2018-11-24 14:44:34', '2018-12-22 10:29:09');
INSERT INTO `t_user` VALUES ('245', '胡剑锋', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13701697976', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, null, '0', '1', '2018-11-13 17:59:33', null, null);
INSERT INTO `t_user` VALUES ('246', '沈红妹', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13795248757', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-08 09:41:48', '1', '1', '2018-11-13 18:00:08', '2018-12-08 09:41:48', '2018-12-22 16:33:27');
INSERT INTO `t_user` VALUES ('247', '陈卉', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18964177399', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-17 12:14:41', '1', '1', '2018-11-13 18:00:39', '2018-11-17 12:14:41', '2019-01-02 14:43:34');
INSERT INTO `t_user` VALUES ('248', '陈赛珍', '666666', '2', '', '', '李琴梅', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13764022865', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-25 10:28:38', '1', '1', '2018-11-13 18:01:09', '2018-11-25 10:28:39', '2019-01-03 15:50:41');
INSERT INTO `t_user` VALUES ('249', '缪仁莲', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13918657485', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-17 14:06:02', '1', '1', '2018-11-13 18:01:46', '2018-11-17 14:06:02', '2018-12-22 11:34:08');
INSERT INTO `t_user` VALUES ('250', '张崇仕', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13761871670', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, null, '0', '1', '2018-11-13 18:02:18', null, null);
INSERT INTO `t_user` VALUES ('251', '吴鸿庭', '666666', '2', '', '', '钱斐宏', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13917066048', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '146289', '2019-01-07 13:41:39', '1', '1', '2018-11-13 18:02:49', '2018-12-24 21:24:52', '2019-01-07 13:42:10');
INSERT INTO `t_user` VALUES ('252', '庄德民', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18721924237', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-24 09:12:40', '1', '1', '2018-11-13 18:03:26', '2018-11-24 09:12:40', '2018-12-29 21:28:30');
INSERT INTO `t_user` VALUES ('253', '李卫敏', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13262263969', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-17 12:13:19', '1', '1', '2018-11-13 18:03:53', '2018-11-17 12:13:19', '2018-11-23 00:18:13');
INSERT INTO `t_user` VALUES ('254', '蒋炳辉', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13761037128', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-25 08:58:34', '1', '1', '2018-11-13 18:04:22', '2018-11-25 08:58:34', '2019-01-02 10:17:17');
INSERT INTO `t_user` VALUES ('255', '顾震宇', '666666', '2', '', '', '陈小曼', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13611629872', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '181751', '2018-11-28 20:56:06', '1', '1', '2018-11-13 18:05:31', '2018-11-28 20:56:06', '2018-12-31 20:24:37');
INSERT INTO `t_user` VALUES ('256', '庄昌德', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13918127301', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-24 13:32:38', '1', '1', '2018-11-13 18:05:57', '2018-11-24 13:32:38', '2018-11-25 15:43:44');
INSERT INTO `t_user` VALUES ('257', '石国光', 'shihui', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13761253498', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '425446', '2019-01-02 18:19:07', '1', '1', '2018-11-13 18:06:28', '2018-12-09 10:15:44', '2019-01-02 22:17:47');
INSERT INTO `t_user` VALUES ('258', '陆叶琳', '666666', '2', '', '', '戴贵宝', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13918936964', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-25 18:51:54', '1', '1', '2018-11-13 18:07:09', '2018-11-25 18:51:54', '2018-12-24 16:59:18');
INSERT INTO `t_user` VALUES ('259', '韩幸美', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13701916075', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-08 10:19:44', '1', '1', '2018-11-13 18:07:37', '2018-12-08 10:19:44', '2018-12-08 14:28:53');
INSERT INTO `t_user` VALUES ('260', '叶君', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13761973887', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-02 13:51:10', '1', '1', '2018-11-13 18:08:14', '2018-12-02 13:51:10', '2018-12-02 13:51:10');
INSERT INTO `t_user` VALUES ('261', '朱柏华', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '15821430649', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-17 12:15:07', '1', '1', '2018-11-13 18:08:36', '2018-11-17 12:15:07', '2018-12-01 13:39:35');
INSERT INTO `t_user` VALUES ('262', '范兵', '666666', '2', '', '', '胡翠香', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13501970929', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-09 09:39:51', '1', '1', '2018-11-13 18:09:02', '2018-12-09 09:39:51', '2019-01-02 13:48:45');
INSERT INTO `t_user` VALUES ('263', '吴吉海', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18616776182', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-24 13:56:29', '1', '1', '2018-11-13 18:09:27', '2018-11-24 13:56:29', '2018-11-24 14:41:18');
INSERT INTO `t_user` VALUES ('264', '张钧', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13901808809', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-01 13:33:12', '1', '1', '2018-11-13 18:10:00', '2018-12-01 13:33:12', '2018-12-01 13:33:13');
INSERT INTO `t_user` VALUES ('265', '凌荣娟', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13003157537', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-18 10:29:45', '1', '1', '2018-11-13 18:10:33', '2018-11-18 10:29:45', '2018-11-20 18:29:46');
INSERT INTO `t_user` VALUES ('266', '周淳燕', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13918095192', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-17 12:27:56', '1', '1', '2018-11-13 18:11:15', '2018-11-17 12:27:56', '2018-11-22 09:47:39');
INSERT INTO `t_user` VALUES ('267', '曹慧芳', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '15000752057', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-17 12:48:22', '1', '1', '2018-11-13 18:11:48', '2018-11-17 12:48:22', '2018-12-19 23:07:42');
INSERT INTO `t_user` VALUES ('268', '李光炯', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18930646345', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-25 09:17:58', '1', '1', '2018-11-13 18:12:11', '2018-11-25 09:17:58', '2018-11-26 17:51:54');
INSERT INTO `t_user` VALUES ('269', '陆文倩', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18930977606', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-25 13:34:09', '1', '1', '2018-11-13 18:12:35', '2018-11-25 13:34:09', '2018-12-03 18:15:26');
INSERT INTO `t_user` VALUES ('270', '赵敏', '070504', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13611985129', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '753292', '2019-01-05 14:23:25', '1', '1', '2018-11-13 18:13:02', '2018-11-25 13:36:36', '2019-01-07 11:35:01');
INSERT INTO `t_user` VALUES ('271', '陈颖', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18918319382', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-14 14:34:58', '1', '1', '2018-11-13 18:13:29', '2018-11-14 14:34:58', '2018-11-22 13:25:10');
INSERT INTO `t_user` VALUES ('272', '吕月华', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13611881379', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, null, '0', '1', '2018-11-13 18:13:56', null, null);
INSERT INTO `t_user` VALUES ('273', '李俊', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13818065992', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, null, '0', '1', '2018-11-13 18:14:19', null, null);
INSERT INTO `t_user` VALUES ('274', '徐竟', '666666', '2', '', '', '', '', '1', null, 'http://www.lifecrystal.cn/lifecrystal-upload/user-image/1543039061222.jpg', null, null, '', '', '13761637789', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-24 13:57:41', '1', '1', '2018-11-13 18:15:00', '2018-11-24 13:57:41', '2018-11-25 12:23:40');
INSERT INTO `t_user` VALUES ('275', '陆新舫', '970730', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13701972788', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '881949', '2018-12-22 12:55:47', '1', '1', '2018-11-13 18:15:28', '2018-11-24 13:59:14', '2018-12-22 12:56:25');
INSERT INTO `t_user` VALUES ('276', '侯程鸣', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13564413820', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-17 11:13:31', '1', '1', '2018-11-14 16:41:45', '2018-11-17 11:13:31', '2018-11-20 09:37:58');
INSERT INTO `t_user` VALUES ('277', '谭琪儿', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13501947006', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-17 14:49:31', '1', '1', '2018-11-14 16:42:12', '2018-11-17 14:49:31', '2018-11-20 10:48:50');
INSERT INTO `t_user` VALUES ('278', '冯晓刚', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13901626302', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-17 11:13:15', '1', '1', '2018-11-14 16:42:41', '2018-11-17 11:13:15', '2018-11-20 13:14:54');
INSERT INTO `t_user` VALUES ('279', '杜大为', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13916473504', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-17 11:12:14', '1', '1', '2018-11-14 16:43:09', '2018-11-17 11:12:14', '2019-01-03 09:34:31');
INSERT INTO `t_user` VALUES ('280', '孙琪凤', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '15800951501', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-17 11:13:44', '1', '1', '2018-11-14 16:43:39', '2018-11-17 11:13:44', '2018-11-24 21:47:39');
INSERT INTO `t_user` VALUES ('281', '谢晓欢', 'yz180409', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13524173529', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '431897', '2018-12-22 06:37:21', '1', '1', '2018-11-14 16:49:16', '2018-11-14 16:57:31', '2018-12-23 09:07:02');
INSERT INTO `t_user` VALUES ('282', '徐素萍', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '17802166351', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-08 13:27:15', '1', '1', '2018-11-14 16:58:29', '2018-12-08 13:27:15', '2018-12-15 11:24:58');
INSERT INTO `t_user` VALUES ('283', '黄漫玲', '666666', '2', '', '', '俞小仙', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13916382896', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-01 13:32:57', '1', '1', '2018-11-14 16:58:55', '2018-12-01 13:32:58', '2018-12-26 15:09:46');
INSERT INTO `t_user` VALUES ('284', '薛冰冰', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18916707236', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-24 09:04:27', '1', '1', '2018-11-14 16:59:47', '2018-11-24 09:04:27', '2018-11-26 18:32:19');
INSERT INTO `t_user` VALUES ('285', '许丽丽', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18622371406', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-01 13:31:10', '1', '1', '2018-11-14 17:00:08', '2018-12-01 13:31:10', '2018-12-14 12:28:49');
INSERT INTO `t_user` VALUES ('286', '俞震', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '15821752141', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-24 13:53:56', '1', '1', '2018-11-14 17:00:34', '2018-11-24 13:53:56', '2018-12-29 17:12:25');
INSERT INTO `t_user` VALUES ('287', '黄欣媛', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13524690870', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-08 10:27:14', '1', '1', '2018-11-14 17:00:58', '2018-12-08 10:27:14', '2018-12-08 10:27:14');
INSERT INTO `t_user` VALUES ('288', '王健', 'wj053861WJ', '2', '', '', '', '', '1', null, 'http://www.lifecrystal.cn/lifecrystal-upload/user-image/1543125951790.jpg', null, null, '', '', '13917679301', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '286193', '2018-11-25 14:05:51', '1', '1', '2018-11-14 17:01:25', '2018-11-25 14:05:52', '2018-11-25 14:10:10');
INSERT INTO `t_user` VALUES ('289', '陆艺', '666666', '2', '', '', '陆瑞庆', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13651935370', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '982198', '2018-12-19 12:01:58', '1', '1', '2018-11-14 17:02:29', '2018-12-09 09:36:10', '2018-12-29 14:16:42');
INSERT INTO `t_user` VALUES ('290', '王祯', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13818583918', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-08 13:47:39', '1', '1', '2018-11-14 17:03:32', '2018-12-08 13:47:39', '2018-12-08 13:47:40');
INSERT INTO `t_user` VALUES ('291', '董晓轶', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13501908817', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-08 09:11:58', '1', '1', '2018-11-14 17:04:00', '2018-12-08 09:11:58', '2018-12-13 23:18:06');
INSERT INTO `t_user` VALUES ('292', '丁杰伟', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13916609511', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-02 13:52:07', '1', '1', '2018-11-14 17:05:32', '2018-12-02 13:52:07', '2018-12-07 18:04:17');
INSERT INTO `t_user` VALUES ('293', '余上蕙', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18019355986', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-25 08:57:53', '1', '1', '2018-11-14 17:06:19', '2018-11-25 08:57:53', '2018-12-31 08:51:42');
INSERT INTO `t_user` VALUES ('294', '罗慧晨', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18616910212', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-09 09:38:45', '1', '1', '2018-11-14 17:06:53', '2018-12-09 09:38:45', '2018-12-09 14:08:47');
INSERT INTO `t_user` VALUES ('295', '张贵英', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13564101515', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-08 14:23:01', '1', '1', '2018-11-14 17:08:01', '2018-12-08 14:23:01', '2018-12-08 14:23:02');
INSERT INTO `t_user` VALUES ('296', '肖慧', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13661798772', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, null, '0', '1', '2018-11-14 17:08:42', null, null);
INSERT INTO `t_user` VALUES ('297', '陈志刚', '666666', '2', '', '', '', '', '1', null, 'http://www.lifecrystal.cn/lifecrystal-upload/user-image/1543278605397.jpg', null, null, '', '', '18016411967', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-27 08:30:05', '1', '1', '2018-11-14 17:09:12', '2018-11-27 08:30:05', '2018-11-29 13:17:00');
INSERT INTO `t_user` VALUES ('298', '严萍华', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '15121137771', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-24 13:57:16', '1', '1', '2018-11-14 17:09:51', '2018-11-24 13:57:16', '2018-11-24 16:37:13');
INSERT INTO `t_user` VALUES ('299', '董斐', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '15900871494', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-02 10:11:29', '1', '1', '2018-11-14 17:10:29', '2018-12-02 10:11:29', '2018-12-02 10:28:10');
INSERT INTO `t_user` VALUES ('300', '滕昕', '351114', '2', '', '', '爸爸', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18301891993', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '521687', '2018-12-09 18:34:53', '1', '1', '2018-11-14 17:10:53', '2018-12-09 18:34:54', '2018-12-13 15:53:23');
INSERT INTO `t_user` VALUES ('301', '栾天', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13611662396', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-01 13:55:02', '1', '1', '2018-11-15 16:37:25', '2018-12-01 13:55:02', '2018-12-22 10:57:35');
INSERT INTO `t_user` VALUES ('302', '沃清华', '666666', '2', '', '', '沃争祥', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18101791843', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-09 09:35:15', '1', '1', '2018-11-15 16:37:50', '2018-12-09 09:35:15', '2018-12-09 09:35:15');
INSERT INTO `t_user` VALUES ('303', '浦雅琴', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13774417153', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-02 09:18:35', '1', '1', '2018-11-15 16:38:15', '2018-12-02 09:18:35', '2018-12-06 20:29:57');
INSERT INTO `t_user` VALUES ('304', '张执政', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13918433522', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-24 14:46:13', '1', '1', '2018-11-15 16:38:39', '2018-11-24 14:46:13', '2018-11-24 14:46:13');
INSERT INTO `t_user` VALUES ('305', '付国雁', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '15821928276', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, null, '0', '1', '2018-11-15 16:39:09', null, null);
INSERT INTO `t_user` VALUES ('306', '戴敏', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13020160083', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-25 08:59:41', '1', '1', '2018-11-15 16:39:38', '2018-11-25 08:59:41', '2018-12-01 12:00:46');
INSERT INTO `t_user` VALUES ('307', '朱金妹', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '15800401216', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-24 09:15:14', '1', '1', '2018-11-15 16:40:18', '2018-11-24 09:15:14', '2018-11-25 15:26:06');
INSERT INTO `t_user` VALUES ('308', '殷群', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '15821059021', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-24 09:11:42', '1', '1', '2018-11-15 16:40:44', '2018-11-24 09:11:42', '2019-01-06 12:11:03');
INSERT INTO `t_user` VALUES ('309', '宋烈元', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13621974387', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-08 09:21:57', '1', '1', '2018-11-15 16:41:08', '2018-12-08 09:21:57', '2018-12-22 12:07:05');
INSERT INTO `t_user` VALUES ('310', '余丰', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13916998564', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-01 13:55:48', '1', '1', '2018-11-15 16:51:06', '2018-12-01 13:55:48', '2018-12-20 23:23:08');
INSERT INTO `t_user` VALUES ('311', '陈淑萍', '881012', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13916108831', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '265475', '2018-12-22 16:13:59', '1', '1', '2018-11-15 16:51:34', '2018-12-02 09:09:08', '2018-12-22 16:37:09');
INSERT INTO `t_user` VALUES ('312', '黄建强', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13761211094', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-24 14:02:32', '1', '1', '2018-11-15 16:52:03', '2018-11-24 14:02:32', '2018-11-24 14:44:15');
INSERT INTO `t_user` VALUES ('313', '李慧', '666666', '2', '', '', '', '', '1', null, 'http://www.lifecrystal.cn/lifecrystal-upload/user-image/1545015550153.jpg', null, null, '', '', '13621721459', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-17 10:59:10', '1', '1', '2018-11-15 16:52:50', '2018-12-17 10:59:10', '2018-12-17 10:59:10');
INSERT INTO `t_user` VALUES ('314', '谷鸿涓', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13764198199', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '695153', '2018-11-25 14:35:10', '1', '1', '2018-11-15 16:53:14', '2018-11-25 13:35:19', '2019-01-03 17:59:42');
INSERT INTO `t_user` VALUES ('315', '徐晶', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13818551899', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-09 09:40:16', '1', '1', '2018-11-15 16:53:43', '2018-12-09 09:40:16', '2018-12-11 12:25:53');
INSERT INTO `t_user` VALUES ('316', '周乾亮', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13817042062', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-01 14:25:55', '1', '1', '2018-11-15 16:54:27', '2018-12-01 14:25:55', '2018-12-31 11:10:10');
INSERT INTO `t_user` VALUES ('317', '毛羽蒨', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13564065075', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-24 09:16:53', '1', '1', '2018-11-15 16:55:07', '2018-11-24 09:16:53', '2018-12-21 15:23:26');
INSERT INTO `t_user` VALUES ('318', '马叶青', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13901968578', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-09 09:15:26', '1', '1', '2018-11-15 16:55:33', '2018-12-09 09:15:26', '2018-12-10 16:38:07');
INSERT INTO `t_user` VALUES ('319', '郁佳', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18018507311', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-08 08:56:46', '1', '1', '2018-11-15 16:55:55', '2018-12-08 08:56:46', '2018-12-08 08:56:46');
INSERT INTO `t_user` VALUES ('320', '曾林', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13167204356', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-02 08:38:27', '1', '1', '2018-11-15 16:56:24', '2018-12-02 08:38:27', '2018-12-03 08:53:46');
INSERT INTO `t_user` VALUES ('321', '纪剑萍', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13761960328', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, null, '0', '1', '2018-11-15 16:56:45', null, null);
INSERT INTO `t_user` VALUES ('322', '王桂英', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13661433968', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-02 09:04:03', '1', '1', '2018-11-15 16:57:19', '2018-12-02 09:04:03', '2018-12-02 09:04:03');
INSERT INTO `t_user` VALUES ('323', '周懿蕾', '666666', '2', '', '', '周照英', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13918206329', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-24 14:43:31', '1', '1', '2018-11-15 17:02:20', '2018-11-24 14:43:31', '2019-01-01 14:40:15');
INSERT INTO `t_user` VALUES ('324', '陆小微', '666666', '2', '', '', '陈爱素', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13564013928', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-09 09:40:49', '1', '1', '2018-11-15 17:03:18', '2018-12-09 09:40:50', '2018-12-09 13:43:52');
INSERT INTO `t_user` VALUES ('325', '茆立群', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13621814481', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-08 13:48:45', '1', '1', '2018-11-15 17:06:29', '2018-12-08 13:48:45', '2018-12-08 20:37:21');
INSERT INTO `t_user` VALUES ('327', '刘瑜', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18917552119', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-08 13:29:29', '1', '1', '2018-11-15 17:07:14', '2018-12-08 13:29:29', '2018-12-08 13:29:29');
INSERT INTO `t_user` VALUES ('328', '王志坚', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13651812143', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-02 11:17:04', '1', '1', '2018-11-15 17:07:34', '2018-12-02 11:17:04', '2018-12-22 13:58:16');
INSERT INTO `t_user` VALUES ('329', '朱双跃', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13381993338', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-16 10:54:54', '1', '1', '2018-11-15 17:07:58', '2018-12-16 10:54:54', '2018-12-16 10:54:54');
INSERT INTO `t_user` VALUES ('330', '盛昌祖', '666666', '2', '', '', '顾慧华', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13301952053', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-03 13:29:38', '1', '1', '2018-11-15 17:08:19', '2018-12-03 13:29:38', '2018-12-22 15:33:26');
INSERT INTO `t_user` VALUES ('331', '史文珊', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18916005573', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, null, '0', '1', '2018-11-15 17:08:58', null, null);
INSERT INTO `t_user` VALUES ('332', '宦前进', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '15000253190', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-22 12:06:22', '1', '1', '2018-11-16 16:38:18', '2018-11-22 12:06:22', '2019-01-02 15:53:59');
INSERT INTO `t_user` VALUES ('333', '马立冬', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '15877946434', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, null, '0', '1', '2018-11-16 16:38:40', null, null);
INSERT INTO `t_user` VALUES ('334', '杨鸿玲', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13166267409', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-02 13:35:15', '1', '1', '2018-11-16 16:39:01', '2018-12-02 13:35:15', '2018-12-02 13:35:16');
INSERT INTO `t_user` VALUES ('335', '齐毓兰', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18001917187', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-24 13:55:21', '1', '1', '2018-11-17 21:45:57', '2018-11-24 13:55:21', '2018-11-24 17:59:01');
INSERT INTO `t_user` VALUES ('336', '范裕林', '146300', '2', '', '', '', '', '1', null, 'http://www.lifecrystal.cn/lifecrystal-upload/user-image/1546001486083.jpg', null, null, '', '', '13761250521', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '744525', '2019-01-02 11:50:34', '1', '1', '2018-11-17 21:46:20', '2019-01-02 11:50:56', '2019-01-06 21:21:09');
INSERT INTO `t_user` VALUES ('337', '陈蓉', 'abbott', '2', '', '', '王莉妹', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13916103735', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '887645', '2018-12-01 14:31:39', '1', '1', '2018-11-17 21:46:44', '2018-12-01 14:31:40', '2018-12-30 10:34:24');
INSERT INTO `t_user` VALUES ('338', '高小艺', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13761836635', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-02 09:06:36', '1', '1', '2018-11-17 21:47:07', '2018-12-02 09:06:36', '2019-01-06 11:41:26');
INSERT INTO `t_user` VALUES ('339', '丁旻', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13817676182', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-08 13:50:05', '1', '1', '2018-11-17 21:47:30', '2018-12-08 13:50:05', '2018-12-08 13:50:05');
INSERT INTO `t_user` VALUES ('340', '舒瀛', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13817942549', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-24 09:04:07', '1', '1', '2018-11-17 21:47:51', '2018-11-24 09:04:07', '2018-12-22 15:47:15');
INSERT INTO `t_user` VALUES ('341', '徐佳玥', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18602119130', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-08 13:26:53', '1', '1', '2018-11-17 21:48:20', '2018-12-08 13:26:53', '2018-12-22 10:28:26');
INSERT INTO `t_user` VALUES ('342', '何炯', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13564591466', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-24 09:06:12', '1', '1', '2018-11-17 21:48:44', '2018-11-24 09:06:12', '2018-12-22 06:53:12');
INSERT INTO `t_user` VALUES ('343', '何玉祺', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13761022642', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-02 13:22:46', '1', '1', '2018-11-17 21:49:07', '2018-12-02 13:22:46', '2018-12-02 13:22:46');
INSERT INTO `t_user` VALUES ('344', '徐颖', 'ooo117', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '15800798936', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '175632', '2018-12-02 11:56:58', '1', '1', '2018-11-17 21:49:32', '2018-12-02 11:56:57', '2018-12-02 11:58:56');
INSERT INTO `t_user` VALUES ('345', '张少华', 'zsh217', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18918329844', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '945482', '2018-12-08 12:12:32', '1', '1', '2018-11-17 21:49:56', '2018-12-08 10:15:31', '2019-01-05 19:22:35');
INSERT INTO `t_user` VALUES ('346', '钱麟', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13817038806', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-09 09:13:53', '1', '1', '2018-11-17 21:50:20', '2018-12-09 09:13:53', '2018-12-25 16:40:10');
INSERT INTO `t_user` VALUES ('347', '张雪丹', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13524587121', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-24 08:52:31', '1', '1', '2018-11-19 11:07:13', '2018-11-24 08:52:31', '2018-12-02 09:04:08');
INSERT INTO `t_user` VALUES ('348', '王曦玛', 'm19900812', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13564757441', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '643917', '2018-12-01 13:53:03', '1', '1', '2018-11-19 11:07:36', '2018-12-01 13:53:02', '2018-12-01 13:53:52');
INSERT INTO `t_user` VALUES ('349', '朱述广', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13761171909', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-25 14:02:47', '1', '1', '2018-11-19 11:08:00', '2018-11-25 14:02:47', '2019-01-06 14:00:31');
INSERT INTO `t_user` VALUES ('350', '杨元兆', '666666', '2', '', '', '罗根南', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18800333193', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-01 14:02:10', '1', '1', '2018-11-19 11:08:23', '2018-12-01 14:02:10', '2018-12-16 21:34:30');
INSERT INTO `t_user` VALUES ('352', '吴依煦', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13651617069', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-01 13:53:37', '1', '1', '2018-11-19 11:09:33', '2018-12-01 13:53:37', '2018-12-01 13:53:37');
INSERT INTO `t_user` VALUES ('353', '杨湧', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13701724103', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-19 12:15:57', '1', '1', '2018-11-19 11:09:56', '2018-11-19 12:15:57', '2018-12-25 13:43:16');
INSERT INTO `t_user` VALUES ('354', '赵文萍', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13817104156', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-09 09:24:27', '1', '1', '2018-11-19 11:10:28', '2018-12-09 09:24:27', '2018-12-09 09:25:52');
INSERT INTO `t_user` VALUES ('355', '李沁', 'helen520184', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13918031109', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '728876', '2018-12-04 11:19:41', '1', '1', '2018-11-19 11:10:55', '2018-11-25 13:40:32', '2018-12-26 21:01:22');
INSERT INTO `t_user` VALUES ('356', '金瑞', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13564021750', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, null, '0', '1', '2018-11-19 11:11:17', null, null);
INSERT INTO `t_user` VALUES ('357', '沈志清', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13381871709', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, null, '0', '1', '2018-11-19 11:11:50', null, null);
INSERT INTO `t_user` VALUES ('358', '许伟民', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '15901625518', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-02 09:04:07', '1', '1', '2018-11-19 11:12:18', '2018-12-02 09:04:07', '2018-12-02 09:17:56');
INSERT INTO `t_user` VALUES ('359', '李雯', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13816732217', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-29 11:33:50', '1', '1', '2018-11-19 11:12:42', '2018-11-29 11:33:50', '2018-12-28 13:28:23');
INSERT INTO `t_user` VALUES ('360', '平关生', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13681917543', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-19 14:55:21', '1', '1', '2018-11-19 14:55:15', '2018-11-19 14:55:21', '2018-12-28 11:39:13');
INSERT INTO `t_user` VALUES ('361', '王俊良', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13816784710', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, null, '0', '1', '2018-11-19 16:52:14', null, null);
INSERT INTO `t_user` VALUES ('362', '周晨', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13601801550', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-09 09:37:10', '1', '1', '2018-11-19 16:52:59', '2018-12-09 09:37:10', '2018-12-10 16:40:29');
INSERT INTO `t_user` VALUES ('363', '朱美华', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18019388517', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-24 09:13:29', '1', '1', '2018-11-19 16:55:13', '2018-11-24 09:13:29', '2019-01-04 14:59:49');
INSERT INTO `t_user` VALUES ('364', '秦博君', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13301766608', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, null, '0', '1', '2018-11-19 16:57:12', null, null);
INSERT INTO `t_user` VALUES ('365', '陈曼丽', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '15001727220', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-25 14:09:57', '1', '1', '2018-11-20 23:39:37', '2018-11-25 14:09:57', '2018-12-14 10:44:00');
INSERT INTO `t_user` VALUES ('366', '郑凌敏', '19480624', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13916774305', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '983411', '2018-12-12 13:04:16', '1', '1', '2018-11-20 23:40:03', '2018-12-08 10:09:27', '2018-12-12 22:13:24');
INSERT INTO `t_user` VALUES ('367', '刘斌', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18917871458', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-02 09:31:42', '1', '1', '2018-11-20 23:40:22', '2018-12-02 09:31:42', '2018-12-02 10:03:57');
INSERT INTO `t_user` VALUES ('368', '沈奇峰', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13816823995', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-01 13:52:38', '1', '1', '2018-11-21 15:35:16', '2018-12-01 13:52:38', '2018-12-02 19:11:11');
INSERT INTO `t_user` VALUES ('369', '周治华', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13661508128', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-08 09:43:56', '1', '1', '2018-11-22 17:38:16', '2018-12-08 09:43:56', '2018-12-10 12:22:12');
INSERT INTO `t_user` VALUES ('370', '俞照娣', '666666', '2', '', '', '', '', '2', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13918829928', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-11-26 07:38:03', '1', '1', '2018-11-25 10:23:39', '2018-11-26 07:38:03', '2018-12-22 10:13:50');
INSERT INTO `t_user` VALUES ('371', '周凌云', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13611667170', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-17 11:57:30', '1', '1', '2018-11-25 10:29:18', '2018-12-17 11:57:30', '2018-12-22 11:06:22');
INSERT INTO `t_user` VALUES ('372', '李建华', '560831', '2', '', '', '杨建霞', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18217195478', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '471186', '2018-12-04 11:22:09', '1', '1', '2018-11-29 16:22:41', '2018-12-04 11:22:09', '2018-12-10 20:29:58');
INSERT INTO `t_user` VALUES ('373', '王晓文', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13916777662', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-02 14:09:57', '1', '1', '2018-11-29 16:36:46', '2018-12-02 14:09:57', '2019-01-03 10:47:26');
INSERT INTO `t_user` VALUES ('374', '陈子骏', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '15921011515', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-04 09:57:08', '1', '1', '2018-11-29 16:41:26', '2018-12-04 09:57:08', '2018-12-31 21:40:06');
INSERT INTO `t_user` VALUES ('375', '郁璐', '802374', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13774228721', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '857197', '2018-12-09 10:18:26', '1', '1', '2018-11-29 16:44:25', '2018-12-09 09:16:04', '2018-12-09 21:51:46');
INSERT INTO `t_user` VALUES ('376', '金洁', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '18701775937', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-09 09:41:34', '1', '1', '2018-11-30 17:02:29', '2018-12-09 09:41:34', '2018-12-10 19:19:38');
INSERT INTO `t_user` VALUES ('377', '刘伟君', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13818899454', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-08 10:15:23', '1', '1', '2018-11-30 17:02:52', '2018-12-08 10:15:23', '2018-12-27 11:52:03');
INSERT INTO `t_user` VALUES ('378', '徐文倩', '666666', '2', '', '', '', '', '2', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13524605277', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-08 13:32:24', '1', '1', '2018-12-08 13:30:46', '2018-12-08 13:32:24', '2018-12-22 10:40:13');
INSERT INTO `t_user` VALUES ('380', '吴树来', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13611966837', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-08 14:58:02', '1', '1', '2018-12-08 14:56:10', '2018-12-08 14:58:02', '2019-01-04 13:40:45');
INSERT INTO `t_user` VALUES ('381', '罗绮菱', '666666', '2', '', '', '', '', '2', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13701801716', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-17 12:50:50', '1', '1', '2018-12-12 16:46:10', '2018-12-17 12:50:50', '2018-12-18 11:15:03');
INSERT INTO `t_user` VALUES ('382', '邹明芳', '666666', '2', '', '', '施文妹', '', '2', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '15800612246', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-17 12:37:58', '1', '1', '2018-12-17 11:10:21', '2018-12-17 12:37:59', '2019-01-06 10:08:54');
INSERT INTO `t_user` VALUES ('383', '金林根', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13816055375', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-17 12:32:51', '1', '1', '2018-12-17 11:11:01', '2018-12-17 12:32:51', '2018-12-22 08:32:13');
INSERT INTO `t_user` VALUES ('384', '张爱华', '666666', '2', '', '', '', '', '2', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '15821810311', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, null, '0', '1', '2018-12-17 11:11:24', null, null);
INSERT INTO `t_user` VALUES ('385', '黄成毅', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13482149741', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-21 21:24:06', '1', '1', '2018-12-17 13:43:05', '2018-12-21 21:24:06', '2019-01-04 09:05:04');
INSERT INTO `t_user` VALUES ('386', '李雅杰', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '15821507882', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '948344', '2018-12-18 07:56:36', '1', '1', '2018-12-17 15:37:18', '2018-12-18 07:56:36', '2018-12-18 10:19:21');
INSERT INTO `t_user` VALUES ('387', '魏璎珞', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13901888694', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2018-12-19 11:36:19', '1', '1', '2018-12-19 11:35:51', '2018-12-19 11:36:19', '2018-12-30 10:18:06');
INSERT INTO `t_user` VALUES ('388', '王飞荣', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13816707290', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, null, '0', '1', '2018-12-19 16:07:17', null, null);
INSERT INTO `t_user` VALUES ('389', '励歆', '790108', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13916875837', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '316345', '2018-12-21 18:40:08', '1', '1', '2018-12-19 16:07:51', '2018-12-21 18:40:49', '2019-01-01 13:56:35');
INSERT INTO `t_user` VALUES ('390', '杨秀瑞', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '15021606740', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, null, '0', '1', '2018-12-21 12:11:01', null, null);
INSERT INTO `t_user` VALUES ('391', '陶剑平', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13370268970', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, null, '0', '1', '2018-12-21 12:12:18', null, null);
INSERT INTO `t_user` VALUES ('392', '经峥嵘', '20180812', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13817782653', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, '521433', '2018-12-27 23:22:13', '1', '1', '2018-12-24 15:31:01', '2018-12-27 23:22:59', '2019-01-03 22:20:05');
INSERT INTO `t_user` VALUES ('393', '蔡越', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13651777977', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, null, '0', '1', '2018-12-24 15:31:41', null, null);
INSERT INTO `t_user` VALUES ('394', '蒉英姿', '666666', '2', '', '', '', '', '1', null, 'http://localhost:81/yoyo-upload/gift-image/15197171348535.jpg', null, null, '', '', '13024109380', '', '1', '0', '0', '0.00', '0.000000', '0.000000', '0', null, null, '2019-01-05 16:48:11', '1', '1', '2019-01-02 04:55:40', '2019-01-05 16:48:11', '2019-01-05 16:48:11');

-- ----------------------------
-- Table structure for t_user_decedent
-- ----------------------------
DROP TABLE IF EXISTS `t_user_decedent`;
CREATE TABLE `t_user_decedent` (
  `user_id` int(11) NOT NULL,
  `decedent_id` int(11) NOT NULL,
  `activated` int(1) DEFAULT '1' COMMENT '生效1；失效2',
  `is_default` int(1) DEFAULT '0' COMMENT ' 1 表示这个是默认逝者,默认为0',
  `deleted` int(1) DEFAULT '1' COMMENT '1 表示未删除  2 表示删除  ',
  `created_date` datetime DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`decedent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_decedent
-- ----------------------------
INSERT INTO `t_user_decedent` VALUES ('114', '30', '1', '0', '1', '2018-11-22 09:40:13', null);
INSERT INTO `t_user_decedent` VALUES ('114', '31', '1', '1', '1', '2018-11-22 09:40:19', '2018-11-30 13:01:09');
INSERT INTO `t_user_decedent` VALUES ('192', '30', '1', '0', '1', '2018-11-02 12:45:40', '2018-11-19 22:15:32');
INSERT INTO `t_user_decedent` VALUES ('192', '31', '1', '0', '1', '2018-11-02 12:45:35', '2018-11-12 22:41:28');
INSERT INTO `t_user_decedent` VALUES ('192', '32', '1', '0', '1', '2018-11-12 22:16:21', '2018-11-13 16:08:20');
INSERT INTO `t_user_decedent` VALUES ('192', '33', '1', '0', '1', '2018-11-12 22:16:17', '2018-11-13 16:08:12');
INSERT INTO `t_user_decedent` VALUES ('192', '34', '1', '0', '1', '2018-11-07 13:16:12', '2018-11-12 22:40:28');
INSERT INTO `t_user_decedent` VALUES ('192', '221', '1', '1', '1', '2018-11-26 13:38:17', '2018-11-27 23:51:57');
INSERT INTO `t_user_decedent` VALUES ('193', '30', '1', '0', '1', '2018-11-02 12:46:03', '2018-12-03 20:27:10');
INSERT INTO `t_user_decedent` VALUES ('193', '31', '1', '1', '1', '2018-11-02 12:46:06', '2018-12-11 11:16:43');
INSERT INTO `t_user_decedent` VALUES ('194', '30', '1', '0', '1', '2018-12-11 17:46:20', null);
INSERT INTO `t_user_decedent` VALUES ('204', '30', '1', '1', '1', '2018-11-02 11:11:47', '2018-11-29 14:03:09');
INSERT INTO `t_user_decedent` VALUES ('204', '31', '1', '0', '1', '2018-11-02 11:11:43', '2018-11-29 14:00:44');
INSERT INTO `t_user_decedent` VALUES ('210', '30', '1', '0', '1', '2018-11-12 21:17:17', '2018-12-11 18:09:08');
INSERT INTO `t_user_decedent` VALUES ('210', '31', '1', '0', '1', '2018-11-12 23:45:44', '2018-12-10 15:04:40');
INSERT INTO `t_user_decedent` VALUES ('210', '32', '1', '1', '1', '2018-11-12 23:45:52', '2018-12-12 09:38:50');
INSERT INTO `t_user_decedent` VALUES ('210', '33', '1', '0', '1', '2018-11-12 23:45:48', '2018-12-11 18:09:00');
INSERT INTO `t_user_decedent` VALUES ('210', '34', '1', '0', '1', '2018-11-12 23:45:40', '2018-12-11 18:09:06');
INSERT INTO `t_user_decedent` VALUES ('210', '35', '1', '0', '1', '2018-11-14 11:19:45', '2018-12-12 09:38:48');
INSERT INTO `t_user_decedent` VALUES ('212', '30', '1', '1', '1', '2018-11-13 15:38:00', '2018-11-13 15:40:17');
INSERT INTO `t_user_decedent` VALUES ('214', '45', '1', '0', '1', '2018-11-13 15:51:40', null);
INSERT INTO `t_user_decedent` VALUES ('215', '46', '1', '0', '1', '2018-11-13 15:56:40', null);
INSERT INTO `t_user_decedent` VALUES ('216', '47', '1', '0', '1', '2018-11-13 16:05:31', null);
INSERT INTO `t_user_decedent` VALUES ('217', '48', '1', '0', '1', '2018-11-13 16:43:20', null);
INSERT INTO `t_user_decedent` VALUES ('218', '49', '1', '1', '1', '2018-11-13 16:44:46', '2018-11-25 10:05:35');
INSERT INTO `t_user_decedent` VALUES ('219', '50', '1', '0', '1', '2018-11-13 16:45:47', null);
INSERT INTO `t_user_decedent` VALUES ('220', '51', '1', '1', '1', '2018-11-13 16:46:31', '2018-11-30 21:24:02');
INSERT INTO `t_user_decedent` VALUES ('221', '52', '1', '0', '1', '2018-11-13 16:47:27', null);
INSERT INTO `t_user_decedent` VALUES ('222', '53', '1', '0', '1', '2018-11-13 16:47:59', null);
INSERT INTO `t_user_decedent` VALUES ('223', '54', '1', '0', '1', '2018-11-13 16:48:32', null);
INSERT INTO `t_user_decedent` VALUES ('224', '55', '1', '0', '1', '2018-11-13 16:49:08', null);
INSERT INTO `t_user_decedent` VALUES ('225', '56', '1', '0', '1', '2018-11-13 16:49:42', null);
INSERT INTO `t_user_decedent` VALUES ('226', '57', '1', '1', '1', '2018-11-13 16:50:28', '2018-11-25 08:46:05');
INSERT INTO `t_user_decedent` VALUES ('227', '58', '1', '0', '1', '2018-11-13 16:51:06', null);
INSERT INTO `t_user_decedent` VALUES ('228', '59', '1', '0', '1', '2018-11-13 16:52:16', null);
INSERT INTO `t_user_decedent` VALUES ('229', '60', '1', '0', '1', '2018-11-13 16:53:17', null);
INSERT INTO `t_user_decedent` VALUES ('230', '61', '1', '1', '1', '2018-11-13 16:53:50', '2018-12-19 15:56:11');
INSERT INTO `t_user_decedent` VALUES ('231', '62', '1', '0', '1', '2018-11-13 16:54:25', null);
INSERT INTO `t_user_decedent` VALUES ('232', '63', '1', '0', '1', '2018-11-13 17:51:09', null);
INSERT INTO `t_user_decedent` VALUES ('233', '64', '1', '1', '1', '2018-11-13 17:51:44', '2018-12-22 14:57:05');
INSERT INTO `t_user_decedent` VALUES ('234', '65', '1', '0', '1', '2018-11-13 17:52:36', null);
INSERT INTO `t_user_decedent` VALUES ('235', '66', '1', '0', '1', '2018-11-13 17:53:10', null);
INSERT INTO `t_user_decedent` VALUES ('236', '67', '1', '0', '1', '2018-11-13 17:53:45', null);
INSERT INTO `t_user_decedent` VALUES ('237', '68', '1', '0', '1', '2018-11-13 17:54:14', null);
INSERT INTO `t_user_decedent` VALUES ('238', '69', '1', '0', '1', '2018-11-13 17:54:46', null);
INSERT INTO `t_user_decedent` VALUES ('239', '70', '1', '1', '1', '2018-11-13 17:55:20', '2018-12-08 14:56:47');
INSERT INTO `t_user_decedent` VALUES ('240', '71', '1', '1', '1', '2018-11-13 17:55:57', '2018-12-22 10:35:15');
INSERT INTO `t_user_decedent` VALUES ('242', '73', '1', '0', '1', '2018-11-13 17:57:19', null);
INSERT INTO `t_user_decedent` VALUES ('243', '74', '1', '1', '1', '2018-11-13 17:57:58', '2018-11-20 11:04:23');
INSERT INTO `t_user_decedent` VALUES ('244', '76', '1', '0', '1', '2018-11-13 17:59:10', null);
INSERT INTO `t_user_decedent` VALUES ('245', '77', '1', '0', '1', '2018-11-13 17:59:43', null);
INSERT INTO `t_user_decedent` VALUES ('246', '78', '1', '0', '1', '2018-11-13 18:00:21', null);
INSERT INTO `t_user_decedent` VALUES ('247', '79', '1', '0', '1', '2018-11-13 18:00:52', null);
INSERT INTO `t_user_decedent` VALUES ('248', '80', '1', '0', '1', '2018-11-13 18:01:29', null);
INSERT INTO `t_user_decedent` VALUES ('249', '81', '1', '1', '1', '2018-11-13 18:02:00', '2018-12-22 11:46:25');
INSERT INTO `t_user_decedent` VALUES ('250', '82', '1', '0', '1', '2018-11-13 18:02:32', null);
INSERT INTO `t_user_decedent` VALUES ('251', '83', '1', '0', '1', '2018-11-13 18:03:00', null);
INSERT INTO `t_user_decedent` VALUES ('252', '84', '1', '0', '1', '2018-11-13 18:03:37', null);
INSERT INTO `t_user_decedent` VALUES ('253', '85', '1', '0', '1', '2018-11-13 18:04:05', null);
INSERT INTO `t_user_decedent` VALUES ('254', '86', '1', '0', '1', '2018-11-13 18:04:35', null);
INSERT INTO `t_user_decedent` VALUES ('254', '87', '1', '0', '1', '2018-11-13 18:04:41', null);
INSERT INTO `t_user_decedent` VALUES ('255', '208', '1', '0', '1', '2018-11-19 13:34:49', null);
INSERT INTO `t_user_decedent` VALUES ('256', '89', '1', '0', '1', '2018-11-13 18:06:09', null);
INSERT INTO `t_user_decedent` VALUES ('257', '90', '1', '0', '1', '2018-11-13 18:06:43', null);
INSERT INTO `t_user_decedent` VALUES ('257', '91', '1', '0', '1', '2018-11-13 18:06:50', null);
INSERT INTO `t_user_decedent` VALUES ('258', '92', '1', '0', '1', '2018-11-13 18:07:22', null);
INSERT INTO `t_user_decedent` VALUES ('259', '93', '1', '1', '1', '2018-11-13 18:07:51', '2018-12-08 21:28:51');
INSERT INTO `t_user_decedent` VALUES ('260', '94', '1', '0', '1', '2018-11-13 18:08:21', null);
INSERT INTO `t_user_decedent` VALUES ('261', '95', '1', '1', '1', '2018-11-13 18:08:47', '2018-11-20 10:12:02');
INSERT INTO `t_user_decedent` VALUES ('262', '96', '1', '0', '1', '2018-11-13 18:09:14', null);
INSERT INTO `t_user_decedent` VALUES ('263', '97', '1', '0', '1', '2018-11-13 18:09:39', null);
INSERT INTO `t_user_decedent` VALUES ('264', '98', '1', '0', '1', '2018-11-13 18:10:11', null);
INSERT INTO `t_user_decedent` VALUES ('265', '99', '1', '0', '1', '2018-11-13 18:11:00', null);
INSERT INTO `t_user_decedent` VALUES ('266', '100', '1', '0', '1', '2018-11-13 18:11:28', null);
INSERT INTO `t_user_decedent` VALUES ('267', '101', '1', '1', '1', '2018-11-13 18:11:56', '2018-11-20 18:40:00');
INSERT INTO `t_user_decedent` VALUES ('268', '102', '1', '0', '1', '2018-11-13 18:12:22', null);
INSERT INTO `t_user_decedent` VALUES ('269', '103', '1', '0', '1', '2018-11-13 18:12:47', null);
INSERT INTO `t_user_decedent` VALUES ('270', '104', '1', '0', '1', '2018-11-13 18:13:13', null);
INSERT INTO `t_user_decedent` VALUES ('271', '105', '1', '1', '1', '2018-11-13 18:13:43', '2018-11-20 16:52:57');
INSERT INTO `t_user_decedent` VALUES ('272', '106', '1', '0', '1', '2018-11-13 18:14:08', null);
INSERT INTO `t_user_decedent` VALUES ('273', '107', '1', '0', '1', '2018-11-13 18:14:30', null);
INSERT INTO `t_user_decedent` VALUES ('274', '108', '1', '0', '1', '2018-11-13 18:15:11', null);
INSERT INTO `t_user_decedent` VALUES ('275', '109', '1', '0', '1', '2018-11-13 18:15:40', null);
INSERT INTO `t_user_decedent` VALUES ('276', '118', '1', '1', '1', '2018-11-14 16:41:57', '2019-01-05 14:10:42');
INSERT INTO `t_user_decedent` VALUES ('277', '136', '1', '0', '1', '2018-11-14 16:42:23', null);
INSERT INTO `t_user_decedent` VALUES ('278', '127', '1', '0', '1', '2018-11-14 16:42:50', null);
INSERT INTO `t_user_decedent` VALUES ('279', '137', '1', '0', '1', '2018-11-14 16:43:20', null);
INSERT INTO `t_user_decedent` VALUES ('280', '123', '1', '0', '1', '2018-11-14 16:43:49', null);
INSERT INTO `t_user_decedent` VALUES ('281', '133', '1', '0', '1', '2018-11-14 16:50:43', null);
INSERT INTO `t_user_decedent` VALUES ('282', '110', '1', '0', '1', '2018-11-14 16:58:40', null);
INSERT INTO `t_user_decedent` VALUES ('283', '111', '1', '0', '1', '2018-11-14 16:59:08', null);
INSERT INTO `t_user_decedent` VALUES ('284', '112', '1', '1', '1', '2018-11-14 16:59:54', '2018-11-24 17:42:32');
INSERT INTO `t_user_decedent` VALUES ('285', '113', '1', '0', '1', '2018-11-14 17:00:19', null);
INSERT INTO `t_user_decedent` VALUES ('286', '114', '1', '0', '1', '2018-11-14 17:00:45', null);
INSERT INTO `t_user_decedent` VALUES ('287', '115', '1', '0', '1', '2018-11-14 17:01:09', null);
INSERT INTO `t_user_decedent` VALUES ('288', '116', '1', '0', '1', '2018-11-14 17:01:37', null);
INSERT INTO `t_user_decedent` VALUES ('289', '117', '1', '0', '1', '2018-11-14 17:02:44', null);
INSERT INTO `t_user_decedent` VALUES ('290', '119', '1', '1', '1', '2018-11-14 17:03:45', '2018-12-24 22:04:35');
INSERT INTO `t_user_decedent` VALUES ('291', '120', '1', '0', '1', '2018-11-14 17:04:13', null);
INSERT INTO `t_user_decedent` VALUES ('292', '122', '1', '0', '1', '2018-11-14 17:05:46', null);
INSERT INTO `t_user_decedent` VALUES ('293', '124', '1', '0', '1', '2018-11-14 17:06:31', null);
INSERT INTO `t_user_decedent` VALUES ('294', '125', '1', '0', '1', '2018-11-14 17:07:07', null);
INSERT INTO `t_user_decedent` VALUES ('295', '126', '1', '0', '1', '2018-11-14 17:08:16', null);
INSERT INTO `t_user_decedent` VALUES ('296', '128', '1', '0', '1', '2018-11-14 17:08:54', null);
INSERT INTO `t_user_decedent` VALUES ('297', '129', '1', '0', '1', '2018-11-14 17:09:25', null);
INSERT INTO `t_user_decedent` VALUES ('298', '132', '1', '1', '1', '2018-11-14 17:10:03', '2018-11-26 07:33:52');
INSERT INTO `t_user_decedent` VALUES ('299', '134', '1', '0', '1', '2018-11-14 17:10:37', null);
INSERT INTO `t_user_decedent` VALUES ('300', '135', '1', '1', '1', '2018-11-14 17:11:04', '2018-12-09 10:14:13');
INSERT INTO `t_user_decedent` VALUES ('301', '140', '1', '1', '1', '2018-11-15 16:37:36', '2018-12-02 15:06:41');
INSERT INTO `t_user_decedent` VALUES ('302', '141', '1', '0', '1', '2018-11-15 16:38:01', null);
INSERT INTO `t_user_decedent` VALUES ('303', '142', '1', '0', '1', '2018-11-15 16:38:25', null);
INSERT INTO `t_user_decedent` VALUES ('304', '143', '1', '0', '1', '2018-11-15 16:38:50', null);
INSERT INTO `t_user_decedent` VALUES ('304', '144', '1', '0', '1', '2018-11-15 16:38:57', null);
INSERT INTO `t_user_decedent` VALUES ('304', '165', '1', '0', '1', '2018-11-15 17:01:17', null);
INSERT INTO `t_user_decedent` VALUES ('305', '145', '1', '0', '1', '2018-11-15 16:39:19', null);
INSERT INTO `t_user_decedent` VALUES ('306', '146', '1', '0', '1', '2018-11-15 16:39:50', null);
INSERT INTO `t_user_decedent` VALUES ('307', '147', '1', '0', '1', '2018-11-15 16:40:31', null);
INSERT INTO `t_user_decedent` VALUES ('308', '148', '1', '0', '1', '2018-11-15 16:40:56', null);
INSERT INTO `t_user_decedent` VALUES ('309', '149', '1', '0', '1', '2018-11-15 16:41:22', null);
INSERT INTO `t_user_decedent` VALUES ('310', '151', '1', '0', '1', '2018-11-15 16:51:22', null);
INSERT INTO `t_user_decedent` VALUES ('311', '153', '1', '1', '1', '2018-11-15 16:51:47', '2018-12-22 16:34:52');
INSERT INTO `t_user_decedent` VALUES ('312', '154', '1', '0', '1', '2018-11-15 16:52:13', null);
INSERT INTO `t_user_decedent` VALUES ('313', '155', '1', '0', '1', '2018-11-15 16:52:57', null);
INSERT INTO `t_user_decedent` VALUES ('314', '156', '1', '0', '1', '2018-11-15 16:53:24', null);
INSERT INTO `t_user_decedent` VALUES ('315', '157', '1', '0', '1', '2018-11-15 16:53:52', null);
INSERT INTO `t_user_decedent` VALUES ('316', '158', '1', '0', '1', '2018-11-15 16:54:33', null);
INSERT INTO `t_user_decedent` VALUES ('317', '159', '1', '0', '1', '2018-11-15 16:55:19', null);
INSERT INTO `t_user_decedent` VALUES ('318', '160', '1', '0', '1', '2018-11-15 16:55:43', null);
INSERT INTO `t_user_decedent` VALUES ('319', '161', '1', '0', '1', '2018-11-15 16:56:07', null);
INSERT INTO `t_user_decedent` VALUES ('320', '162', '1', '0', '1', '2018-11-15 16:56:33', null);
INSERT INTO `t_user_decedent` VALUES ('321', '163', '1', '0', '1', '2018-11-15 16:57:02', null);
INSERT INTO `t_user_decedent` VALUES ('322', '164', '1', '0', '1', '2018-11-15 16:57:30', null);
INSERT INTO `t_user_decedent` VALUES ('323', '166', '1', '0', '1', '2018-11-15 17:02:42', null);
INSERT INTO `t_user_decedent` VALUES ('324', '167', '1', '1', '1', '2018-11-15 17:03:28', '2018-12-09 13:46:52');
INSERT INTO `t_user_decedent` VALUES ('324', '168', '1', '0', '1', '2018-11-15 17:03:41', '2018-12-09 13:46:49');
INSERT INTO `t_user_decedent` VALUES ('325', '169', '1', '0', '1', '2018-11-15 17:06:38', null);
INSERT INTO `t_user_decedent` VALUES ('327', '181', '1', '1', '1', '2018-11-17 02:57:17', '2018-12-10 16:47:37');
INSERT INTO `t_user_decedent` VALUES ('328', '172', '1', '0', '1', '2018-11-15 17:07:45', null);
INSERT INTO `t_user_decedent` VALUES ('329', '173', '1', '0', '1', '2018-11-15 17:08:08', null);
INSERT INTO `t_user_decedent` VALUES ('330', '174', '1', '0', '1', '2018-11-15 17:08:30', '2019-01-01 14:38:29');
INSERT INTO `t_user_decedent` VALUES ('330', '175', '1', '1', '1', '2018-11-15 17:08:43', '2019-01-02 10:19:19');
INSERT INTO `t_user_decedent` VALUES ('331', '176', '1', '0', '1', '2018-11-15 17:09:09', null);
INSERT INTO `t_user_decedent` VALUES ('331', '177', '1', '0', '1', '2018-11-15 17:10:03', null);
INSERT INTO `t_user_decedent` VALUES ('332', '178', '1', '0', '1', '2018-11-16 16:38:28', null);
INSERT INTO `t_user_decedent` VALUES ('333', '179', '1', '0', '1', '2018-11-16 16:38:51', null);
INSERT INTO `t_user_decedent` VALUES ('334', '180', '1', '1', '1', '2018-11-16 16:39:12', '2018-12-07 19:04:20');
INSERT INTO `t_user_decedent` VALUES ('335', '182', '1', '0', '1', '2018-11-17 21:46:05', null);
INSERT INTO `t_user_decedent` VALUES ('336', '183', '1', '1', '1', '2018-11-17 21:46:30', '2019-01-04 04:40:12');
INSERT INTO `t_user_decedent` VALUES ('337', '184', '1', '0', '1', '2018-11-17 21:46:55', null);
INSERT INTO `t_user_decedent` VALUES ('338', '185', '1', '0', '1', '2018-11-17 21:47:18', null);
INSERT INTO `t_user_decedent` VALUES ('339', '186', '1', '0', '1', '2018-11-17 21:47:40', null);
INSERT INTO `t_user_decedent` VALUES ('340', '187', '1', '0', '1', '2018-11-17 21:48:02', null);
INSERT INTO `t_user_decedent` VALUES ('341', '188', '1', '1', '1', '2018-11-17 21:48:32', '2018-12-08 13:30:18');
INSERT INTO `t_user_decedent` VALUES ('342', '189', '1', '0', '1', '2018-11-17 21:48:54', null);
INSERT INTO `t_user_decedent` VALUES ('343', '190', '1', '0', '1', '2018-11-17 21:49:18', null);
INSERT INTO `t_user_decedent` VALUES ('344', '191', '1', '0', '1', '2018-11-17 21:49:44', null);
INSERT INTO `t_user_decedent` VALUES ('345', '192', '1', '0', '1', '2018-11-17 21:50:06', null);
INSERT INTO `t_user_decedent` VALUES ('346', '193', '1', '0', '1', '2018-11-17 21:50:30', null);
INSERT INTO `t_user_decedent` VALUES ('347', '194', '1', '1', '1', '2018-11-19 11:07:23', '2018-11-24 15:09:45');
INSERT INTO `t_user_decedent` VALUES ('348', '195', '1', '1', '1', '2018-11-19 11:07:48', '2018-12-02 22:09:26');
INSERT INTO `t_user_decedent` VALUES ('349', '196', '1', '0', '1', '2018-11-19 11:08:10', null);
INSERT INTO `t_user_decedent` VALUES ('350', '197', '1', '0', '1', '2018-11-19 11:08:35', null);
INSERT INTO `t_user_decedent` VALUES ('352', '199', '1', '0', '1', '2018-11-19 11:09:44', null);
INSERT INTO `t_user_decedent` VALUES ('353', '200', '1', '0', '1', '2018-11-19 11:10:07', null);
INSERT INTO `t_user_decedent` VALUES ('354', '201', '1', '0', '1', '2018-11-19 11:10:41', null);
INSERT INTO `t_user_decedent` VALUES ('355', '202', '1', '0', '1', '2018-11-19 11:11:04', null);
INSERT INTO `t_user_decedent` VALUES ('356', '203', '1', '0', '1', '2018-11-19 11:11:36', null);
INSERT INTO `t_user_decedent` VALUES ('357', '204', '1', '0', '1', '2018-11-19 11:12:01', null);
INSERT INTO `t_user_decedent` VALUES ('358', '205', '1', '0', '1', '2018-11-19 11:12:28', null);
INSERT INTO `t_user_decedent` VALUES ('359', '224', '1', '0', '1', '2018-12-28 13:26:03', null);
INSERT INTO `t_user_decedent` VALUES ('360', '72', '1', '0', '1', '2018-11-19 14:55:41', null);
INSERT INTO `t_user_decedent` VALUES ('361', '209', '1', '0', '1', '2018-11-19 16:52:35', null);
INSERT INTO `t_user_decedent` VALUES ('362', '210', '1', '0', '1', '2018-11-19 16:53:18', null);
INSERT INTO `t_user_decedent` VALUES ('363', '211', '1', '0', '1', '2018-11-19 16:55:24', null);
INSERT INTO `t_user_decedent` VALUES ('365', '214', '1', '0', '1', '2018-11-20 23:39:49', null);
INSERT INTO `t_user_decedent` VALUES ('366', '215', '1', '1', '1', '2018-11-20 23:40:12', '2018-12-12 22:15:03');
INSERT INTO `t_user_decedent` VALUES ('367', '216', '1', '0', '1', '2018-11-20 23:40:32', null);
INSERT INTO `t_user_decedent` VALUES ('368', '217', '1', '0', '1', '2018-11-21 15:35:30', null);
INSERT INTO `t_user_decedent` VALUES ('369', '219', '1', '0', '1', '2018-11-22 17:39:21', null);
INSERT INTO `t_user_decedent` VALUES ('370', '206', '1', '0', '1', '2018-11-25 10:24:00', null);
INSERT INTO `t_user_decedent` VALUES ('371', '170', '1', '0', '1', '2018-11-25 10:29:31', null);
INSERT INTO `t_user_decedent` VALUES ('372', '222', '1', '0', '1', '2018-11-29 16:22:55', null);
INSERT INTO `t_user_decedent` VALUES ('373', '223', '1', '0', '1', '2018-11-29 16:37:04', null);
INSERT INTO `t_user_decedent` VALUES ('374', '225', '1', '0', '1', '2018-11-29 16:41:49', null);
INSERT INTO `t_user_decedent` VALUES ('375', '226', '1', '0', '1', '2018-12-09 10:06:25', null);
INSERT INTO `t_user_decedent` VALUES ('376', '227', '1', '0', '1', '2018-11-30 17:02:39', null);
INSERT INTO `t_user_decedent` VALUES ('377', '228', '1', '0', '1', '2018-11-30 17:03:01', null);
INSERT INTO `t_user_decedent` VALUES ('378', '198', '1', '0', '1', '2018-12-08 13:31:14', null);
INSERT INTO `t_user_decedent` VALUES ('380', '131', '1', '0', '1', '2018-12-08 14:56:22', null);
INSERT INTO `t_user_decedent` VALUES ('381', '230', '1', '1', '1', '2018-12-12 16:46:51', '2018-12-26 11:45:36');
INSERT INTO `t_user_decedent` VALUES ('382', '231', '1', '0', '1', '2018-12-17 11:12:31', null);
INSERT INTO `t_user_decedent` VALUES ('383', '232', '1', '0', '1', '2018-12-17 11:13:17', null);
INSERT INTO `t_user_decedent` VALUES ('384', '233', '1', '0', '1', '2018-12-17 11:14:10', null);
INSERT INTO `t_user_decedent` VALUES ('385', '234', '1', '0', '1', '2018-12-17 13:43:35', null);
INSERT INTO `t_user_decedent` VALUES ('385', '235', '1', '0', '1', '2018-12-17 13:43:44', null);
INSERT INTO `t_user_decedent` VALUES ('386', '213', '1', '0', '1', '2018-12-17 15:37:35', null);
INSERT INTO `t_user_decedent` VALUES ('387', '221', '1', '0', '1', '2018-12-19 11:36:09', null);
INSERT INTO `t_user_decedent` VALUES ('388', '236', '1', '0', '1', '2018-12-19 16:07:36', null);
INSERT INTO `t_user_decedent` VALUES ('389', '237', '1', '0', '1', '2018-12-19 16:08:03', null);
INSERT INTO `t_user_decedent` VALUES ('390', '238', '1', '0', '1', '2018-12-21 12:11:16', null);
INSERT INTO `t_user_decedent` VALUES ('391', '239', '1', '0', '1', '2018-12-21 12:12:30', null);
INSERT INTO `t_user_decedent` VALUES ('392', '241', '1', '0', '1', '2018-12-24 15:31:12', null);
INSERT INTO `t_user_decedent` VALUES ('393', '240', '1', '0', '1', '2018-12-24 15:31:55', null);
INSERT INTO `t_user_decedent` VALUES ('394', '242', '1', '0', '1', '2019-01-02 04:56:02', null);

-- ----------------------------
-- Table structure for t_video
-- ----------------------------
DROP TABLE IF EXISTS `t_video`;
CREATE TABLE `t_video` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户Id',
  `admin_name` varchar(128) DEFAULT NULL COMMENT '管理员姓名',
  `video_length` varchar(128) DEFAULT NULL COMMENT '视频时长',
  `decedent_id` int(11) DEFAULT NULL COMMENT '逝者Id',
  `video_url` varchar(128) DEFAULT NULL,
  `first_frame` varchar(128) DEFAULT NULL COMMENT '视频第一帧',
  `video_type` int(1) DEFAULT NULL COMMENT '视频类型',
  `md5` text COMMENT 'md5的值，用于文件校验',
  `activated` int(1) DEFAULT '1' COMMENT '视频状态：1待审核，2通过，3拒绝',
  `deleted` int(1) DEFAULT '1' COMMENT '1 未删除  2 删除了',
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_video
-- ----------------------------
INSERT INTO `t_video` VALUES ('234', '114', '测试', '0:0:16', '28', 'http://lifecrystal.test.upcdn.net/decedent-video/1540956175610.mp4', 'http://lifecrystal.test.upcdn.net/decedent-video/1540956175610.jpg', null, '45751ec775f7489c6a1ad2875dcfdf17', '2', '1', '2018-10-31 11:24:40', '2018-10-31 11:22:57');
INSERT INTO `t_video` VALUES ('235', '201', '陈加兵', '0:0:17', '28', 'http://lifecrystal.test.upcdn.net/decedent-video/1540970710523.mp4', 'http://lifecrystal.test.upcdn.net/decedent-video/1540970710523.jpg', null, '5839a82aedc3fec5b961ca276fe9598b', '3', '1', '2018-11-09 10:51:24', '2018-10-31 15:25:13');
INSERT INTO `t_video` VALUES ('236', '201', '测试', '0:0:33', '28', 'http://lifecrystal.test.upcdn.net/decedent-video/1540970745590.mp4', 'http://lifecrystal.test.upcdn.net/decedent-video/1540970745590.jpg', null, '44d7997276ff627dd585030aaada886f', '3', '1', '2018-10-31 15:34:59', '2018-10-31 15:25:50');
INSERT INTO `t_video` VALUES ('237', '201', '陈加兵', '0:0:3', '28', 'http://lifecrystal.test.upcdn.net/decedent-video/1540970918838.3gp', 'http://lifecrystal.test.upcdn.net/decedent-video/1540970918838.jpg', null, 'e5caf8bfef403e71f75bdcfa7306d216', '3', '1', '2018-11-09 10:51:40', '2018-10-31 15:28:39');
INSERT INTO `t_video` VALUES ('238', '201', '测试', '0:0:9', '28', 'http://lifecrystal.test.upcdn.net/decedent-video/1540971210965.mp4', 'http://lifecrystal.test.upcdn.net/decedent-video/1540971210965.jpg', null, '18ab747f3ca3db1d906ce84563af0c75', '2', '1', '2018-10-31 15:34:47', '2018-10-31 15:33:32');
INSERT INTO `t_video` VALUES ('239', '201', '测试', '0:0:16', '28', 'http://lifecrystal.test.upcdn.net/decedent-video/1540971257032.mp4', 'http://lifecrystal.test.upcdn.net/decedent-video/1540971257032.jpg', null, '45751ec775f7489c6a1ad2875dcfdf17', '2', '1', '2018-10-31 15:34:46', '2018-10-31 15:34:19');
INSERT INTO `t_video` VALUES ('240', '201', '范捷', '0:0:33', '28', 'http://lifecrystal.test.upcdn.net/decedent-video/1540971290082.mp4', 'http://lifecrystal.test.upcdn.net/decedent-video/1540971290082.jpg', null, '44d7997276ff627dd585030aaada886f', '3', '1', '2018-11-21 22:25:56', '2018-10-31 15:34:55');
INSERT INTO `t_video` VALUES ('241', '114', '陈加兵', '0:0:3', '12', 'http://lifecrystal.test.upcdn.net/decedent-video/1540979110724.3gp', 'http://lifecrystal.test.upcdn.net/decedent-video/1540979110724.jpg', null, 'e5caf8bfef403e71f75bdcfa7306d216', '2', '1', '2018-11-02 15:17:02', '2018-10-31 17:45:12');
INSERT INTO `t_video` VALUES ('242', '192', '陈加兵', '0:0:11', '12', 'http://lifecrystal.test.upcdn.net/decedent-video/1540984001243.mp4', 'http://lifecrystal.test.upcdn.net/decedent-video/1540984001243.jpg', null, 'c824784f75edc40525bf8776d5a1275d', '2', '1', '2018-11-02 15:17:00', '2018-10-31 19:06:42');
INSERT INTO `t_video` VALUES ('244', '114', '测试', '0:0:23', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541136008617.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541136008617.jpg', null, '8bea08838627d19ffee5ee534fcd59bd', '2', '1', '2018-11-02 13:22:55', '2018-11-02 13:20:09');
INSERT INTO `t_video` VALUES ('249', '204', '陈加兵', '0:0:5', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541139073693.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541139073693.jpg', null, '0f991250f1b979338410b0df123e7a80', '2', '1', '2018-11-02 15:16:57', '2018-11-02 14:11:14');
INSERT INTO `t_video` VALUES ('250', '204', '陈加兵', '0:0:4', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541139561341.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541139561341.jpg', null, '11e00728205dfd1f08e98c8d160ae085', '2', '1', '2018-11-03 00:20:21', '2018-11-02 14:19:21');
INSERT INTO `t_video` VALUES ('251', '114', '测试', '0:0:12', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541145351676.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541145351676.jpg', null, '76315b351d71bad98736023f2f2f0b8c', '2', '1', '2018-11-02 16:00:19', '2018-11-02 15:55:52');
INSERT INTO `t_video` VALUES ('253', '114', '陈加兵', '0:0:10', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541145795402.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541145795402.jpg', null, 'ceafe8a51c9b7b69c85dcfbd4bbd5c6a', '2', '1', '2018-11-03 00:20:15', '2018-11-02 16:03:15');
INSERT INTO `t_video` VALUES ('257', '114', '陈加兵', '0:0:3', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541160998595.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541160998595.jpg', null, 'f8b3a18487999e9f0781db16d68e91a1', '2', '1', '2018-11-03 00:20:13', '2018-11-02 20:16:39');
INSERT INTO `t_video` VALUES ('259', '114', '陈加兵', '0:0:18', '31', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541169377217.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541169377217.jpg', null, '182d3f2b925e0a249849eedf9c25c341', '2', '1', '2018-11-03 00:20:07', '2018-11-02 22:36:17');
INSERT INTO `t_video` VALUES ('260', '114', '韩张', '0:0:0', '31', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541175952712.jpg', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541175952712.jpg', null, 'eacaa59751986bda3a677e8b7cffda89', '2', '1', '2018-11-09 10:29:45', '2018-11-03 00:25:53');
INSERT INTO `t_video` VALUES ('261', '114', '范捷', '0:0:4', '33', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541179457963.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541179457963.jpg', null, '11b4c9c4ef484424da7886dc2dcbca51', '3', '1', '2018-11-22 17:44:04', '2018-11-03 01:24:18');
INSERT INTO `t_video` VALUES ('263', '114', '陈加兵', '0:0:12', '31', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541210738435.3gp', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541210738435.jpg', null, 'a4f37cd45cea389d2466d50dfbc76fb9', '2', '1', '2018-11-04 20:51:52', '2018-11-03 10:05:38');
INSERT INTO `t_video` VALUES ('269', '192', '陈加兵', '0:0:11', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541213104086.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541213104086.jpg', null, 'd02b84086ca35cb6fc651c7b413974c5', '2', '1', '2018-11-03 10:48:49', '2018-11-03 10:45:04');
INSERT INTO `t_video` VALUES ('270', '193', '范捷', '0:0:19', '31', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541343777494.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541343777494.jpg', null, 'c62741ef96c31538680a85f9d0fbfae2', '3', '1', '2018-11-21 22:25:53', '2018-11-04 23:02:58');
INSERT INTO `t_video` VALUES ('271', '192', '范捷', '0:0:5', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541345385126.3gp', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541345385126.jpg', null, '658361b8a17367c600959744a8f7bcd7', '3', '1', '2018-11-21 22:25:51', '2018-11-04 23:29:45');
INSERT INTO `t_video` VALUES ('272', '192', '陈加兵', '0:0:10', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541390754686.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1541390754686.jpg', null, '4cad69af56ed35f9971bd913a596c231', '2', '1', '2018-11-05 12:10:57', '2018-11-05 12:05:55');
INSERT INTO `t_video` VALUES ('273', '192', '陈加兵', '0:0:11', '34', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1542033293688.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1542033293688.jpg', null, 'd02b84086ca35cb6fc651c7b413974c5', '2', '1', '2018-11-12 23:37:47', '2018-11-12 22:34:54');
INSERT INTO `t_video` VALUES ('274', '192', '陈加兵', '0:0:11', '31', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1542033332122.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1542033332122.jpg', null, 'd02b84086ca35cb6fc651c7b413974c5', '2', '1', '2018-11-12 23:37:46', '2018-11-12 22:35:32');
INSERT INTO `t_video` VALUES ('275', '210', '陈加兵', '0:0:10', '30', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1542096992523.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1542096992523.jpg', null, '38e7ca80f23563ec825c305f204a4906', '2', '1', '2018-11-13 16:16:44', '2018-11-13 16:16:33');
INSERT INTO `t_video` VALUES ('276', '218', '范捷', '0:0:10', '49', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1543111564691.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1543111564691.jpg', null, 'a6fe53a60bb8d1a47f491021547523c3', '2', '1', '2018-11-25 11:11:32', '2018-11-25 10:06:05');
INSERT INTO `t_video` VALUES ('277', '248', '范捷', '0:1:25', '80', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1543116956804.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1543116956804.jpg', null, '1f22a50c2ed949cb0686abfc749816ee', '2', '1', '2018-11-26 13:30:48', '2018-11-25 11:35:58');
INSERT INTO `t_video` VALUES ('279', '192', '范捷', '0:0:11', '221', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1543211608405.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1543211608405.jpg', null, '1a65421fb28b850e4312ac1501291d27', '2', '1', '2018-11-26 14:02:00', '2018-11-26 13:53:28');
INSERT INTO `t_video` VALUES ('280', '192', '范捷', '0:0:9', '221', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1543332053754.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1543332053754.jpg', null, '84111dd98eecd8c871158d99e6a04044', '2', '1', '2018-11-27 23:35:23', '2018-11-27 23:20:54');
INSERT INTO `t_video` VALUES ('283', '358', '审核员', '0:0:6', '205', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1543731056160.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1543731056160.jpg', null, 'a22779edc4b0828f2333df13af3af3d9', '2', '1', '2018-12-03 13:56:57', '2018-12-02 14:10:56');
INSERT INTO `t_video` VALUES ('284', '358', '审核员', '0:0:9', '205', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1543736828744.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1543736828744.jpg', null, '2dc075371ba89ce0da5371b04ddc5d6b', '2', '1', '2018-12-03 13:57:02', '2018-12-02 15:47:09');
INSERT INTO `t_video` VALUES ('285', '210', '陈加兵', '0:0:13', '35', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1543986963050.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1543986963050.jpg', null, 'f8fb789b11ea714edaef25a2212d1af3', '2', '1', '2018-12-23 17:15:20', '2018-12-05 13:16:03');
INSERT INTO `t_video` VALUES ('287', '210', '陈加兵', '0:0:10', '33', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1544150767492.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1544150767492.jpg', null, 'c05fe71b1e7c35aac13ade730bc0fd57', '2', '1', '2018-12-23 17:15:23', '2018-12-07 10:46:08');
INSERT INTO `t_video` VALUES ('288', '210', '范捷', '0:0:30', '31', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1544424891326.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1544424891326.jpg', null, '5e17c825b5385c9f708cd46a3df323a2', '3', '1', '2018-12-27 05:30:09', '2018-12-10 14:54:51');
INSERT INTO `t_video` VALUES ('289', '210', '范捷', '0:0:7', '31', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1544424913363.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1544424913363.jpg', null, 'fdc28d03c10f80d779ba92fedc77f768', '3', '1', '2018-12-27 05:30:13', '2018-12-10 14:55:13');
INSERT INTO `t_video` VALUES ('291', '243', '陈加兵', '0:0:16', '74', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1545351988382.mp4', 'http://www.lifecrystal.cn/lifecrystal-upload/decedent-video/1545351988382.jpg', null, '96a27868b5073816e5a4c8d587e1a59c', '2', '1', '2018-12-23 17:15:34', '2018-12-21 08:26:28');
