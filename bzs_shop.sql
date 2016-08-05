/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : bzs_shop

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-08-05 18:38:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for abon_category
-- ----------------------------
DROP TABLE IF EXISTS `abon_category`;
CREATE TABLE `abon_category` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL COMMENT '名称',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `preview` varchar(100) DEFAULT NULL COMMENT '预览图',
  `parent_id` int(11) DEFAULT NULL COMMENT '父组分类',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of abon_category
-- ----------------------------

-- ----------------------------
-- Table structure for abon_member
-- ----------------------------
DROP TABLE IF EXISTS `abon_member`;
CREATE TABLE `abon_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `phone` varchar(25) NOT NULL COMMENT '电话号码',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '注册时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of abon_member
-- ----------------------------
INSERT INTO `abon_member` VALUES ('1', '补中松', '18708156629', '', '2016-08-05 17:48:50', '2016-08-05 17:50:29');
INSERT INTO `abon_member` VALUES ('2', '党的接班人', '18708152298', '', '2016-08-05 17:52:27', '2016-08-05 17:50:29');
INSERT INTO `abon_member` VALUES ('3', '好奇怪哦', '', '', '2016-08-05 17:49:07', '2016-08-05 17:50:29');

-- ----------------------------
-- Table structure for abon_product
-- ----------------------------
DROP TABLE IF EXISTS `abon_product`;
CREATE TABLE `abon_product` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL COMMENT '名称',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `preview` varchar(100) DEFAULT NULL COMMENT '预览图',
  `parent_id` int(11) DEFAULT NULL COMMENT '父组分类',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of abon_product
-- ----------------------------

-- ----------------------------
-- Table structure for abon_product_content
-- ----------------------------
DROP TABLE IF EXISTS `abon_product_content`;
CREATE TABLE `abon_product_content` (
  `id` int(11) NOT NULL,
  `content` varchar(20000) DEFAULT NULL COMMENT '商品内容',
  `product_id` int(11) DEFAULT NULL COMMENT '商品id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of abon_product_content
-- ----------------------------

-- ----------------------------
-- Table structure for abon_product_images
-- ----------------------------
DROP TABLE IF EXISTS `abon_product_images`;
CREATE TABLE `abon_product_images` (
  `id` int(11) NOT NULL,
  `image_path` varchar(200) DEFAULT NULL COMMENT '图片路径',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `product_id` int(11) NOT NULL COMMENT '商品id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of abon_product_images
-- ----------------------------
