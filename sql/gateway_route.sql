/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : reform_auth

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2020-06-17 22:39:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gateway_route
-- ----------------------------
DROP TABLE IF EXISTS `gateway_route`;
CREATE TABLE `gateway_route` (
  `id` bigint(20) NOT NULL,
  `route_id` varchar(50) NOT NULL COMMENT '路由ID',
  `instance_id` varchar(50) NOT NULL COMMENT 'eureka中注册的id',
  `predicates` varchar(200) NOT NULL COMMENT '路由规则，多个的时候用逗号划分',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `create_time` datetime(6) NOT NULL COMMENT '创建时间',
  `modify_time` datetime(6) DEFAULT NULL COMMENT '修改时间',
  `regexp_url` varchar(50) NOT NULL COMMENT '网关请求过来的url前缀',
  `status` decimal(1,0) DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='网关路由规则配置';

-- ----------------------------
-- Records of gateway_route
-- ----------------------------
INSERT INTO `gateway_route` VALUES ('1', 'reform-pinpoint', 'lb://reform-pinpoint', '/app/pinpoint/**', 'pinpoint二次开发服务', '2019-12-02 15:56:11.000000', '2019-12-02 15:56:13.000000', '/app/pinpoint', '1');
INSERT INTO `gateway_route` VALUES ('2', 'reform-auth', 'lb://reform-auth', '/app/auth/user,/app/auth/user/test', '鉴权服务', '2019-10-17 11:35:21.000000', null, '/app/auth', '1');
INSERT INTO `gateway_route` VALUES ('3', 'fm-hhw-server', 'lb://fm-hhw-server', '/app/fmhhw/**', '调频服务', '2019-10-17 11:37:30.000000', null, '/app/fmhhw', '1');
INSERT INTO `gateway_route` VALUES ('4', 'race-user-server', 'lb://race-user-server', '/app/user/race/**', '竞赛用户中心', '2019-12-02 03:00:40.000000', null, '/app/user/race', '1');
INSERT INTO `gateway_route` VALUES ('5', 'reform-prophet-schedule', 'lb://reform-prophet-schedule', '/app/prophet/**', '出清调度中心', '2019-12-13 07:04:12.000000', null, '/app/prophet', '1');
INSERT INTO `gateway_route` VALUES ('11', 'contest-experts-server', 'lb://contest-experts-server', '/app/race/experts/**', '竞赛118', '2020-02-13 18:07:37.000000', null, '/app/race/experts', '1');
INSERT INTO `gateway_route` VALUES ('12', 'spot-daily-trade-bff', 'lb://spot-daily-trade-bff', '/app/daily/**', '现货日前交易辅助工具', '2020-03-26 15:00:47.201000', null, '/app/daily', '1');
INSERT INTO `gateway_route` VALUES ('13', 'file-server-bff', 'lb://file-server-bff', '/app/file/**', '文件上传下载辅助工具', '2020-03-26 15:01:16.709000', null, '/app/file', '1');
INSERT INTO `gateway_route` VALUES ('14', 'spot-trade-hd-bff', 'lb://spot-trade-hd-bff', '/app/trade/hd/**', '现货日前交易辅助工具', '2020-03-26 15:00:47.201000', null, '/app/trade/hd', '1');
