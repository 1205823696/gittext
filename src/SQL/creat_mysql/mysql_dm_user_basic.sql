/*
Navicat MySQL Data Transfer

Source Server         : spark
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : qfbap_dm

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-01-07 16:42:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dm_user_basic`
-- ----------------------------
DROP TABLE IF EXISTS `dm_user_basic`;
CREATE TABLE `dm_user_basic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_gender` varchar(255) DEFAULT NULL,
  `user_birthday` varchar(255) NOT NULL,
  `user_age` bigint(20) DEFAULT NULL,
  `constellation` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `city_level` tinyint(4) DEFAULT NULL,
  `e_mail` varchar(255) DEFAULT NULL,
  `op_mail` varchar(255) DEFAULT NULL,
  `mobile` bigint(255) DEFAULT NULL,
  `num_seg_mobile` int(11) DEFAULT NULL,
  `op_mobile` varchar(255) DEFAULT NULL,
  `register_time` datetime DEFAULT NULL,
  `login_ip` varchar(255) DEFAULT NULL,
  `login_source` varchar(255) DEFAULT NULL,
  `request_user` varchar(255) DEFAULT NULL,
  `total_score` decimal(18,2) DEFAULT NULL,
  `used_score` decimal(18,2) DEFAULT NULL,
  `is_blacklist` tinyint(4) DEFAULT NULL,
  `is_married` tinyint(4) DEFAULT NULL,
  `education` varchar(128) DEFAULT NULL,
  `monthly_income` decimal(18,2) DEFAULT NULL,
  `profession` varchar(128) DEFAULT NULL,
  `is_pregnant_woman` tinyint(4) NOT NULL,
  `is_have_children` tinyint(4) NOT NULL,
  `is_have_car` tinyint(4) NOT NULL,
  `phone_brand` varchar(64) NOT NULL,
  `phone_brand_level` varchar(255) NOT NULL,
  `phone_cnt` int(11) NOT NULL,
  `change_phone_cnt` int(11) NOT NULL,
  `is_maja` tinyint(4) NOT NULL,
  `majia_account_cnt` int(11) NOT NULL,
  `loyal_model` varchar(255) NOT NULL,
  `shopping_type_model` varchar(255) NOT NULL,
  `weight` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `dw_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=841 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dm_user_basic
-- ----------------------------
