/*
Navicat MySQL Data Transfer

Source Server         : spark
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : qfbap_dm

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-01-09 11:58:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dm_user_visit`
-- ----------------------------
DROP TABLE IF EXISTS `dm_user_visit`;
CREATE TABLE `dm_user_visit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `latest_pc_visit_date` varchar(255) DEFAULT NULL,
  `latest_pc_visit_session` varchar(255) DEFAULT NULL,
  `latest_pc_cookies` varchar(255) DEFAULT NULL,
  `latest_pc_pv` bigint(20) DEFAULT NULL,
  `latest_pc_browser_name` varchar(255) DEFAULT NULL,
  `latest_pc_visit_os` varchar(255) DEFAULT NULL,
  `first_pc_visit_date` varchar(255) DEFAULT NULL,
  `first_pc_visit_session` varchar(255) DEFAULT NULL,
  `first_pc_cookies` varchar(255) DEFAULT NULL,
  `first_pc_pv` bigint(20) DEFAULT NULL,
  `first_pc_browser_name` varchar(255) DEFAULT NULL,
  `first_pc_visit_os` varchar(255) DEFAULT NULL,
  `day7_pc_cnt` bigint(20) DEFAULT NULL,
  `day15_pc_cnt` bigint(20) DEFAULT NULL,
  `month1_pc_cnt` bigint(20) DEFAULT NULL,
  `month2_pc_cnt` bigint(20) DEFAULT NULL,
  `month3_pc_cnt` bigint(20) DEFAULT NULL,
  `month1_pc_days` bigint(20) DEFAULT NULL,
  `month1_pc_pv` bigint(20) DEFAULT NULL,
  `month1_pc_avg_pv` bigint(20) DEFAULT NULL,
  `month1_pc_hour025_cnt` bigint(20) DEFAULT NULL,
  `month1_pc_hour627_cnt` bigint(20) DEFAULT NULL,
  `month1_pc_hour829_cnt` bigint(20) DEFAULT NULL,
  `month1_pc_hour10211_cnt` bigint(20) DEFAULT NULL,
  `month1_pc_hour12213_cnt` bigint(20) DEFAULT NULL,
  `month1_pc_hour14216_cnt` bigint(20) DEFAULT NULL,
  `month1_pc_hour17219_cnt` bigint(20) DEFAULT NULL,
  `month1_pc_hour18219_cnt` bigint(20) DEFAULT NULL,
  `month1_pc_hour20221_cnt` bigint(20) DEFAULT NULL,
  `month1_pc_hour22223_cnt` bigint(20) DEFAULT NULL,
  `month1_pc_diff_ip_cnt` bigint(20) DEFAULT NULL,
  `month1_pc_common_ip` varchar(20) DEFAULT NULL,
  `month1_pc_diff_cookie_cnt` bigint(20) DEFAULT NULL,
  `month1_pc_common_cookie` varchar(255) DEFAULT NULL,
  `month1_pc_common_browser_name` varchar(255) DEFAULT NULL,
  `month1_pc_common_os` varchar(255) DEFAULT NULL,
  `latest_app_visit_date` varchar(255) DEFAULT NULL,
  `latest_app_name` varchar(255) DEFAULT NULL,
  `latest_app_visit_os` varchar(255) DEFAULT NULL,
  `first_app_visit_date` varchar(255) DEFAULT NULL,
  `first_app_name` varchar(255) DEFAULT NULL,
  `first_app_visit_os` varchar(255) DEFAULT NULL,
  `day7_app_cnt` bigint(20) DEFAULT NULL,
  `day15_app_cnt` bigint(20) DEFAULT NULL,
  `month1_app_cnt` bigint(20) DEFAULT NULL,
  `month2_app_cnt` bigint(20) DEFAULT NULL,
  `month3_app_cnt` bigint(20) DEFAULT NULL,
  `month1_app_hour025_cnt` bigint(20) DEFAULT NULL,
  `month1_app_hour627_cnt` bigint(20) DEFAULT NULL,
  `month1_app_hour829_cnt` bigint(20) DEFAULT NULL,
  `month1_app_hour10211_cnt` bigint(20) DEFAULT NULL,
  `month1_app_hour12213_cnt` bigint(20) DEFAULT NULL,
  `month1_app_hour14215_cnt` bigint(20) DEFAULT NULL,
  `month1_app_hour16217_cnt` bigint(20) DEFAULT NULL,
  `month1_app_hour18219_cnt` bigint(20) DEFAULT NULL,
  `month1_app_hour20221_cnt` bigint(20) DEFAULT NULL,
  `month1_app_hour22223_cnt` bigint(20) DEFAULT NULL,
  `latest_visit_ip` varchar(20) DEFAULT NULL,
  `latest_city` varchar(255) DEFAULT NULL,
  `latest_province` varchar(255) DEFAULT NULL,
  `first_visit_ip` varchar(20) DEFAULT NULL,
  `first_city` varchar(255) DEFAULT NULL,
  `first_province` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4201 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dm_user_visit
-- ----------------------------
