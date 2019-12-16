/*
Navicat MySQL Data Transfer

Source Server         : 123
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : tedu_store

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2019-12-16 17:00:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_cart
-- ----------------------------
DROP TABLE IF EXISTS `t_cart`;
CREATE TABLE `t_cart` (
  `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT '数据id',
  `uid` int(11) NOT NULL COMMENT '归属用户的id',
  `gid` bigint(20) NOT NULL COMMENT '商品的id',
  `num` int(11) NOT NULL COMMENT '商品的数量',
  `created_user` varchar(20) DEFAULT NULL COMMENT '创建执行人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改执行人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cart
-- ----------------------------

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `oid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uid` int(11) DEFAULT NULL COMMENT '归属哪个用户',
  `name` varchar(20) DEFAULT NULL COMMENT '收货人',
  `phone` varchar(20) DEFAULT NULL COMMENT '收货电话',
  `address` varchar(100) DEFAULT NULL COMMENT '收货地址',
  `status` int(11) DEFAULT NULL COMMENT '订单状态：0-未支付，1-已支付，2-已取消…………',
  `price` bigint(20) DEFAULT NULL COMMENT '商品总价',
  `order_time` datetime DEFAULT NULL COMMENT '下单时间',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `created_user` varchar(20) DEFAULT NULL COMMENT '创建执行人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改执行人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------

-- ----------------------------
-- Table structure for t_order_item
-- ----------------------------
DROP TABLE IF EXISTS `t_order_item`;
CREATE TABLE `t_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `oid` int(11) DEFAULT NULL COMMENT '归属的订单id',
  `gid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `title` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `image` varchar(500) DEFAULT NULL COMMENT '商品图片',
  `price` bigint(20) DEFAULT NULL COMMENT '商品单价',
  `num` int(11) DEFAULT NULL COMMENT '购买数量',
  `created_user` varchar(20) DEFAULT NULL COMMENT '创建执行人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改执行人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order_item
-- ----------------------------
INSERT INTO `t_order_item` VALUES ('1', '1', '0', '威尼斯超甜香蕉一斤（500g）', '/images/portal/33/', '10', null, null, null, null, null);
INSERT INTO `t_order_item` VALUES ('2', '2', '1', '日本纯种新鲜红富士一斤（500g）', '/images/portal/11/', '8', null, null, null, null, null);
INSERT INTO `t_order_item` VALUES ('3', '3', '2', '国产冰糖雪梨一斤（500g）', '/images/portal/22/', '7', null, null, null, null, null);
INSERT INTO `t_order_item` VALUES ('4', '4', '3', '妃子笑荔枝一斤（500g）', '/images/portal/44/', '15', null, null, null, null, null);
INSERT INTO `t_order_item` VALUES ('5', '5', '4', '江西脐橙一斤（500g）', '/images/portal/55/', '20', null, null, null, null, null);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '密码',
  `salt` char(36) DEFAULT NULL COMMENT '盐值',
  `gender` int(11) DEFAULT NULL COMMENT '性别，0-女性，1-男性',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `avatar` varchar(50) DEFAULT NULL COMMENT '头像',
  `is_delete` int(11) DEFAULT NULL COMMENT '是否删除，0-未删除，1-已删除',
  `created_user` varchar(20) DEFAULT NULL COMMENT '创建执行人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_user` varchar(20) DEFAULT NULL COMMENT '修改执行人',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('5', 'test', '55F982AD3DD6C7CE7C145B5C708540D2', 'F5FD5C60-2EA4-42B3-B258-1EC1241D0771', null, null, null, null, '0', 'test', '2019-12-06 07:37:26', 'test', '2019-12-06 07:37:26');
