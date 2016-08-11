/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : bzs_shop

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-08-11 18:24:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for abon_category
-- ----------------------------
DROP TABLE IF EXISTS `abon_category`;
CREATE TABLE `abon_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL COMMENT '名称',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `preview` varchar(100) DEFAULT NULL COMMENT '预览图',
  `parent_id` int(11) DEFAULT NULL COMMENT '父组分类',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of abon_category
-- ----------------------------
INSERT INTO `abon_category` VALUES ('1', '潮流女装', null, null, null, '2016-08-10 16:29:30', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('2', '欧时力', null, null, '1', '2016-08-10 16:25:53', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('3', '雅莹', null, null, '1', '2016-08-10 16:26:11', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('4', 'MO&Co.', null, null, '1', '2016-08-10 16:26:33', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('5', 'ONLY', null, null, '1', '2016-08-10 16:26:47', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('6', '伊芙丽', null, null, '1', '2016-08-10 16:27:04', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('7', '品牌男装', null, null, null, '2016-08-10 16:32:18', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('8', '盖璞（GAP）', null, null, '7', '2016-08-10 16:33:24', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('9', '马克华菲（FAIRWHALE）', null, null, '7', '2016-08-10 16:33:37', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('10', '真维斯（Jeanswest）', null, null, '7', '2016-08-10 16:33:47', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('11', '战地吉普', null, null, '7', '2016-08-10 16:33:59', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('12', '美特斯邦威（Meters Bonwe）', null, null, '7', '2016-08-10 16:34:09', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('13', '电脑办公', null, null, null, '2016-08-10 17:07:54', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('14', '平板电脑', null, null, '13', '2016-08-10 17:08:06', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('15', '笔记本', null, null, '13', '2016-08-10 17:08:26', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('16', '游戏电脑', null, null, '13', '2016-08-10 17:08:37', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('17', '台式机', null, null, '13', '2016-08-10 17:08:48', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('18', '游戏本', null, null, '13', '2016-08-10 17:08:58', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('19', '平板电脑配件', null, null, '13', '2016-08-10 17:09:08', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('20', '图书', null, null, null, '2016-08-10 17:09:44', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('21', '英语读物', null, null, '20', '2016-08-10 17:09:59', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('22', '绘本', null, null, '20', '2016-08-10 17:10:16', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('23', '彩铅/铅笔画', null, null, '20', '2016-08-10 17:10:30', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('24', '儿童文学', null, null, '20', '2016-08-10 17:10:44', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('25', '中国当代小说', null, null, '20', '2016-08-10 17:10:53', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('26', '散文/随笔/书信', null, null, '20', '2016-08-10 17:11:03', '0000-00-00 00:00:00');
INSERT INTO `abon_category` VALUES ('27', '编程语言与程序设计', null, null, '20', '2016-08-10 17:11:13', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for abon_member
-- ----------------------------
DROP TABLE IF EXISTS `abon_member`;
CREATE TABLE `abon_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `phone` varchar(25) DEFAULT NULL COMMENT '电话号码',
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(40) NOT NULL COMMENT '密码',
  `password_salt` varchar(40) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0' COMMENT '是否激活 0，否  1，是',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '注册时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of abon_member
-- ----------------------------
INSERT INTO `abon_member` VALUES ('17', null, null, '460868361@qq.com', '1fd6ff439b02cca961995b8d2eb0d322', 'T0ylN', '1', '2016-08-10 10:32:52', '2016-08-10 10:32:52');
INSERT INTO `abon_member` VALUES ('18', null, '18708156629', null, '6bf4f7bcda66034eef9fa987c9cc82a1', 'r9XxU', '0', '2016-08-10 14:33:19', '2016-08-10 14:33:19');

-- ----------------------------
-- Table structure for abon_product
-- ----------------------------
DROP TABLE IF EXISTS `abon_product`;
CREATE TABLE `abon_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL COMMENT '商品名称',
  `price` decimal(10,2) NOT NULL COMMENT '商品价格',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `preview` varchar(225) DEFAULT NULL COMMENT '预览图',
  `category_id` int(11) NOT NULL COMMENT '商品分类id',
  `summary` varchar(225) DEFAULT NULL COMMENT '商品简介',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of abon_product
-- ----------------------------
INSERT INTO `abon_product` VALUES ('1', '欧时力女拼接收腰纯色夏装', '973.00', null, 'http://m.360buyimg.com/mobilecms/s357x458_jfs/t2701/111/2557514957/160074/b1f6bd94/576b9ec7Nbbdb6856.jpg!cc_357x458!q70.jpg', '2', ' 8月10日0点开抢，仅售973元，马上加入购物车', '2016-08-11 13:57:11', '0000-00-00 00:00:00');
INSERT INTO `abon_product` VALUES ('2', '欧时力女拼接收腰纯色夏装', '369.00', null, '//m.360buyimg.com/n12/jfs/t2149/191/2697850255/114302/b87a814a/5717226bN1bb6cec1.jpg!q70.jpg', '2', ' 吊牌价739元，现仅售369元，马上加入购物车', '2016-08-11 13:57:00', '0000-00-00 00:00:00');
INSERT INTO `abon_product` VALUES ('3', '雅莹春夏圆领收腰4连衣裙', '500.00', null, 'http://m.360buyimg.com/mobilecms/s357x458_jfs/t2386/246/1835816273/84111/dcd5388a/56df8a7bNf0deb45d.jpg!cc_357x458!q70.jpg', '3', '【白条支付】即享6期分期免息', '2016-08-11 14:12:24', '0000-00-00 00:00:00');
INSERT INTO `abon_product` VALUES ('4', '雅莹春夏小印花白色一步裙', '849.00', null, 'http://m.360buyimg.com/mobilecms/s357x458_jfs/t1876/174/2804095092/119824/84f26336/56f0a1d1Ndf5a0e28.jpg!cc_357x458!q70.jpg', '3', '购买1-3件时享受优惠，超出数量以结算价为准', '2016-08-11 14:12:38', '0000-00-00 00:00:00');
INSERT INTO `abon_product` VALUES ('5', 'Apple iPad Air 平板电脑 9.7英寸（16G WLAN版/A7芯片/Retina显示屏 MD788CH）银色', '2199.00', null, 'http://m.360buyimg.com/mobilecms/s357x357_jfs/t2347/202/831203560/128709/8e0d557e/562e041aNd9a24ceb.jpg!q70.jpg', '14', '【震撼促销】8月iPad疯狂特惠火热来袭，惊喜价买到手不容错过！！！', '2016-08-11 14:14:15', '0000-00-00 00:00:00');
INSERT INTO `abon_product` VALUES ('6', '【京东自营】小米（XIAOMI）平板电脑2 WIFI版 7.9英寸 （Intel Z8500 2G/16G  500W/800W）香槟金', '999.00', null, 'http://m.360buyimg.com/mobilecms/s357x357_jfs/t2065/353/1587730663/284208/3e34d308/5666cc37N5d13751e.jpg!q70.jpg', '14', '金属机身，性能与功耗平衡，精彩游戏适配。', '2016-08-11 14:15:09', '0000-00-00 00:00:00');
INSERT INTO `abon_product` VALUES ('7', '微软（Microsoft）Surface Pro 4 平板电脑 12.3英寸（Intel i5 4G内存 128G存储 触控笔 预装Win10） ', '6288.00', null, 'http://m.360buyimg.com/mobilecms/s357x357_jfs/t2257/177/1123017414/143066/52c5344a/5641e6e7Nc88a5347.jpg!q70.jpg', '14', '【裸机版】性能高效且功能多元 您的移动工作站', '2016-08-11 14:16:00', '0000-00-00 00:00:00');
INSERT INTO `abon_product` VALUES ('8', '美特斯邦威夏季男士上衣', '39.00', null, 'http://m.360buyimg.com/mobilecms/s357x458_jfs/t2836/342/2064808305/156803/c6aa2978/5756636cN71945f12.jpg!cc_357x458!q70.jpg', '12', '秋装上新，领券立减，千款夏装2件7.5折，精选99元3件，实付满199送一对李易峰枕套！', '2016-08-11 17:36:04', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for abon_product_content
-- ----------------------------
DROP TABLE IF EXISTS `abon_product_content`;
CREATE TABLE `abon_product_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(20000) DEFAULT NULL COMMENT '商品内容',
  `product_id` int(11) DEFAULT NULL COMMENT '商品id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of abon_product_content
-- ----------------------------
INSERT INTO `abon_product_content` VALUES ('1', '            <p>                <span></span></p><div><div><h3 style=\"text-align: center; background: #f5f5f5;\"></h3><div style=\"text-align:center;padding:24px 0;\"><img style=\"display: block;margin: 0 auto;\" src=\"//img10.360buyimg.com/imgzone/jfs/t2710/262/500652021/138690/55b1a800/5716f9eeNfd42d3f3.jpg\"><p style=\"padding: 12.0px 36.0px;text-align: left;color: #000;font-size: 14.0px;\">搭配:搭配清爽凉拖和同色手包，all white造型展现优雅大气特质<br></p><p style=\"padding: 12.0px 36.0px;text-align: left;color: #000;font-size: 14.0px;\"> Tips:1、本品采用纱支组织疏松型面料，在使用过程中，纱支因摩擦会有少量抽出，此为正常现象；<br>2、请注意避开尖利物品的勾刺、挂扯，使用网袋包裹洗涤，以防止纱支破损。<br></p></div><div style=\"text-align:center;padding:24px 0;\"><img style=\"display: block;margin: 0 auto;\" src=\"//img10.360buyimg.com/imgzone/jfs/t2050/247/2771107748/148761/fcfee470/5716fa1fNab2554dc.jpg\"><p style=\"padding: 12.0px 36.0px;text-align: left;color: #000;font-size: 14.0px;\">搭配:加入复古鞋包，摩登组合彰显大气雅致，魅力吸睛<br></p><p style=\"padding: 12.0px 36.0px;text-align: left;color: #000;font-size: 14.0px;\"> Tips:1、本品采用纱支组织疏松型面料，在使用过程中，纱支因摩擦会有少量抽出，此为正常现象；<br>2、请注意避开尖利物品的勾刺、挂扯，使用网袋包裹洗涤，以防止纱支破损。<br></p></div></div></div><!-- 商品细节图 --><div><div><h3 style=\"margin: 0;text-align: center;background: #f5f5f5;\"></h3><div style=\"margin:24px auto;\"><img src=\"//img10.360buyimg.com/imgzone/jfs/t2194/226/2804146855/67820/76df7979/5716fa1cN5dfaa835.jpg\" style=\"display: block;margin: 0 auto;\"><img src=\"//img10.360buyimg.com/imgzone/jfs/t2101/284/2771569495/72281/baa4e910/5716fa1cN335980f8.jpg\" style=\"display: block;margin: 0 auto;\"></div><div style=\"width: 722.0px;margin: 24.0px auto;\"><img src=\"//img10.360buyimg.com/imgzone/jfs/t2773/155/504265768/147158/49c5c05b/5716fa1dNf4fd4862.jpg\" style=\"display: block;margin: 0 auto;\"><div style=\"overflow: hidden;margin: 0 auto;width: 722.0px;\"><img style=\"display: block;float: left;width: 360.0px;\" src=\"//img10.360buyimg.com/imgzone/jfs/t2701/200/500902862/78355/92743dd7/5716fa20Ne2cd46e3.jpg\"><img style=\"display: block;float: left;width: 360.0px;\" src=\"//img10.360buyimg.com/imgzone/jfs/t2644/96/505140947/80547/40c08578/5716fa20N41dd7542.jpg\"></div><p style=\"padding: 20.0px 36.0px;text-align: center;color: #000;font-size: 14.0px;\">本店所有产品图片均为实物拍摄，并由专业设计师根据产品校正图片颜色；由于拍摄光线、角度或显示器对比度不同，会有稍许色差存在，请以实物为准。感谢您的谅解！</p></div></div></div><!-- 产品尺寸 --><div><div><h3 style=\"margin: 0 0 10px;text-align: center;\"></h3><table style=\"width: 100.0%;text-align: center;border-spacing: 0;border-collapse: collapse;table-layout: fixed;line-height: 26.0px;font-size: 14.0px;\"><tbody><tr style=\"color: #000000;font-weight: bold;line-height: 4; border-top: 1px solid #e5e5e5;\"><td>尺码</td><td>上身长/全长</td><td>肩宽</td><td>胸围</td><td>裤长/袖长</td><td>腰围</td><td>臀围</td><td>脚口围/摆围</td></tr><tr style=\"height: 34.0px; background-color: #f9f9f9;\"><td> XS </td><td> 83 </td><td> 37 </td><td> 82 </td><td> 17 </td><td> 65 </td><td> - </td><td> 166 </td></tr><tr style=\"height: 34.0px;\"><td> S </td><td> 85 </td><td> 38 </td><td> 85 </td><td> 18 </td><td> 68 </td><td> - </td><td> 169 </td></tr><tr style=\"height: 34.0px; background-color: #f9f9f9;\"><td> M </td><td> 86 </td><td> 39 </td><td> 88 </td><td> 18 </td><td> 71 </td><td> - </td><td> 172 </td></tr><tr style=\"height: 34.0px;\"><td> L </td><td> 88 </td><td> 40 </td><td> 91 </td><td> 18 </td><td> 74 </td><td> - </td><td> 175 </td></tr><tr style=\"height: 34.0px; background-color: #f9f9f9;\"><td> XL </td><td> 89 </td><td> 41 </td><td> 95 </td><td> 19 </td><td> 78 </td><td> - </td><td> 179 </td></tr></tbody></table><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t2635/168/2605315954/39100/bd806372/576b9ec4N2d95d83c.jpg\" style=\"margin:0 auto;display:block;\"></div></div><!-- 产品介绍 --><div><div style=\"margin: 0px 0px 80px;\"><h3 style=\"text-align: center;\"></h3><div style=\"padding: 3.0px 0.0px;font-size: 14.0px; border-top: 1px solid #e5e5e5;\"><p style=\"line-height: 25px; clear: both; padding-left: 92px;\"><em style=\"display: block; float: left; text-align: right; font-style: normal; background: rgb(222, 222, 222) none repeat scroll 0% 0%; margin: 0px 10px 20px -93px; padding-left: 15px;\">商品货号：</em>1HH2080040</p><p style=\"line-height: 25.0px;clear: both;padding-left: 92.0px;\"><em style=\"display: block; float: left; text-align: right; font-style: normal; background: rgb(222, 222, 222) none repeat scroll 0% 0%; margin: 0px 10px 20px -93px; padding-left: 15px;\">商品吊牌价：</em>1390元</p><p style=\"line-height: 25.0px;clear: both;padding-left: 92.0px;\"><em style=\"display: block; float: left; text-align: right; font-style: normal; background: rgb(222, 222, 222) none repeat scroll 0% 0%; margin: 0px 10px 20px -93px; padding-left: 15px;\">产品面料：</em> 面料: 上身面料:[波浪纹部位]棉71.5%锦纶28.5%[格子部位]棉80.3%锦纶19.7%下身面料:[格子部位]棉79.2%锦纶20.8%[条纹部位]棉71.7%锦纶28.3%里料:聚酯纤维95%氨纶5%</p><p style=\"line-height: 25px; clear: both; padding-left: 92px;\"><em style=\"display: block; float: left; text-align: right; font-style: normal; background: rgb(222, 222, 222) none repeat scroll 0% 0%; margin: 0px 10px 20px -93px; padding-left: 15px;\">纤维含量知识：</em>产品或产品的某一部分含有2种及以上的纤维时，除了许可不标注的纤维外，在标签上标明的每一种纤维含量允许偏差为5%，填充物的允许偏差为10%。</p><table style=\"line-height: 24px; border-spacing: 0px; border-collapse: collapse; table-layout: fixed; margin: 24px 0px 24px 88px;\"><tbody><tr><td style=\"color: #000;text-align: right;width: 78.0px;padding-right: 12.0px;font-weight: bold;\">长度：</td><td style=\"border: 1.0px solid #dddede;width: 100px; text-align: center;\"> 超短 </td><td style=\"border: 1.0px solid #dddede;width: 100px; text-align: center;\"> 短款 </td><td style=\"border: 1.0px solid #dddede;width: 100px; text-align: center;background: #ee3435;color:#fff;\"> 5-6分 </td><td style=\"border: 1.0px solid #dddede;width: 100px; text-align: center;\"> 7-8分 </td><td style=\"border: 1.0px solid #dddede;width: 100px; text-align: center;\"> 9分-长款 </td></tr></tbody></table><table style=\"line-height: 24px; border-spacing: 0px; border-collapse: collapse; table-layout: fixed; margin: 24px 0px 24px 88px;\"><tbody><tr><td style=\"color: #020202;text-align: right;width: 78.0px;padding-right: 12.0px;font-weight: bold;\">款型：</td><td style=\"border: 1.0px solid #dddede;width: 100px; text-align: center;\"> 宽松 </td><td style=\"border: 1.0px solid #dddede;width: 100px; text-align: center;background: #ee3435;color:#fff;\"> 合体 </td><td style=\"border: 1.0px solid #dddede;width: 100px; text-align: center;\"> 修身 </td><td style=\"border: 1.0px solid #dddede;width: 100px; text-align: center;\"> 贴身 </td></tr></tbody></table></div></div></div><div><div style=\"text-align:center;padding-bottom:20px;\"><h3 style=\"text-align: center;\"></h3><p style=\"padding: 10.0px 0;text-align: center;color: #ef0101; border-top: 1px solid #e5e5e5;\">特殊说明：请扣合好后与同类颜色衣物洗涤</p><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t2698/161/2586435335/3247/5c59c79c/576b9ec4Na37fd229.png\"><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t2986/175/867593326/2516/ff889328/576b9ec4N6e44b3f5.png\"><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t2626/254/2600575467/2492/ba0648fe/576b9ec4Nccb70e02.png\"><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t2938/119/892803079/2934/22c0ec98/576b9ec4N6a21f953.png\"><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t2974/89/908862685/3108/b89faa1c/576b9ec4N7834fbdb.png\"><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t2809/226/2625868180/2843/69ee92a0/576b9ec4N0ef4f01e.png\"><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t2734/81/2570402285/3618/b31e696d/576b9ec4N440ca498.png\"><img src=\"//img30.360buyimg.com/popWaterMark/jfs/t2728/156/2636523385/2819/16a6ac7d/576b9ec4Nb391ee0c.png\"></div></div><p></p>', '1', '2016-08-11 15:19:48', '0000-00-00 00:00:00');
INSERT INTO `abon_product_content` VALUES ('2', '            <p>                <span><img class=\"init_pic\" src=\"//img10.360buyimg.com/popWareDetail/jfs/t2581/206/2375253187/39312/40b1c5a3/576276f6Nf914fcef.jpg\"></span></p><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img10.360buyimg.com/popWareDetail/jfs/t2956/170/653588414/39170/7494891b/576276f7N282ceb9d.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img10.360buyimg.com/popWareDetail/jfs/t2917/78/647431599/37173/edf6186/576276f9N910fa142.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img10.360buyimg.com/popWareDetail/jfs/t2911/217/646738366/36293/fc3467c5/576276faN291a0583.jpg\"><div class=\"for_separator\"></div><p></p>', '2', '2016-08-11 15:28:49', '0000-00-00 00:00:00');
INSERT INTO `abon_product_content` VALUES ('3', '            <p>                <span><img class=\"init_pic\" src=\"//img12.360buyimg.com/imgzone/jfs/t2794/102/466142375/34581/6a03832b/5715c121Nbdf33e61.jpg\"></span></p><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img10.360buyimg.com/imgzone/jfs/t2605/308/468911646/49707/e298e026/5715c122N0ab573e9.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img10.360buyimg.com/imgzone/jfs/t2599/338/478774707/53877/71e87ea3/5715c123Nd1d1cd49.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img14.360buyimg.com/imgzone/jfs/t2665/306/485282345/32790/43b3c3ac/5715c123Nd6c92d0e.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img12.360buyimg.com/imgzone/jfs/t2011/106/2731800395/32125/c7b4f4ac/5715c123N812664f5.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img20.360buyimg.com/imgzone/jfs/t2143/86/2740265856/39790/606df2fc/5715c124N10a12088.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img12.360buyimg.com/imgzone/jfs/t2902/281/459834819/36157/72c020f5/5715c124N3bb4ce85.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img10.360buyimg.com/imgzone/jfs/t2842/317/492845749/44807/754c3e94/5715c125Nb0808cfd.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img13.360buyimg.com/imgzone/jfs/t2386/155/2716732190/37475/8dbc3290/5715c126N22af6edd.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img10.360buyimg.com/imgzone/jfs/t2653/118/465919586/45589/b3a85ecf/5715c126N29ab4fc2.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img14.360buyimg.com/imgzone/jfs/t2713/117/497300515/44334/6621332e/5715c127N004f4c5c.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img30.360buyimg.com/imgzone/jfs/t2584/101/476691164/34917/6f2129d0/5715c127Nbf1a575c.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img14.360buyimg.com/imgzone/jfs/t2653/120/455084471/44736/5d81ce5d/5715c127N26577abf.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img14.360buyimg.com/imgzone/jfs/t2710/277/463105072/40848/1c3fd08/5715c127Ncdc9d918.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img14.360buyimg.com/imgzone/jfs/t2437/101/2779328765/35398/7de86f83/5715c128N8f027352.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img13.360buyimg.com/imgzone/jfs/t2395/47/2744526635/46850/81461063/5715c128N1be435f6.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img11.360buyimg.com/imgzone/jfs/t2011/117/2653735108/52013/b2e77099/5715c129N601ad23b.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img11.360buyimg.com/imgzone/jfs/t2722/352/476445415/101970/9e2d302b/5715c12aNbdb3732f.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img30.360buyimg.com/imgzone/jfs/t2719/317/456026499/35874/6d8bab29/5715c12aN43e48150.jpg\"><div class=\"for_separator\"></div><p></p>', '3', '2016-08-11 15:44:37', '0000-00-00 00:00:00');
INSERT INTO `abon_product_content` VALUES ('4', '            <p>                <span></span></p><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img14.360buyimg.com/imgzone/jfs/t2875/90/475848741/42418/79391db3/5715c01fN1dddc5ce.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img30.360buyimg.com/imgzone/jfs/t2860/299/487145047/70983/750773a6/5715c020Nfcde8829.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img14.360buyimg.com/imgzone/jfs/t2299/232/2743924297/68724/621c8c25/5715c021Nb5ca2da1.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img30.360buyimg.com/imgzone/jfs/t2773/247/479223132/38816/1c35b7d1/5715c021Na22cb3e1.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img20.360buyimg.com/imgzone/jfs/t2845/56/474018840/37902/ed5e9387/5715c022N5606ca98.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img30.360buyimg.com/imgzone/jfs/t2734/167/465692173/59242/3d49550/5715c022N246d5d60.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img14.360buyimg.com/imgzone/jfs/t2740/5/486526873/63968/78d405e6/5715c023N551a2467.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img30.360buyimg.com/imgzone/jfs/t2707/200/471393398/101889/17376fff/5715c024Nf9223d54.jpg\"><div class=\"for_separator\"></div><img class=\"init_pic\" src=\"//img12.360buyimg.com/imgzone/jfs/t2806/234/474531703/10375/aed833a6/5715c024Nb06ed6ae.jpg\"><div class=\"for_separator\"></div><p></p>', '4', '2016-08-11 15:46:25', '0000-00-00 00:00:00');
INSERT INTO `abon_product_content` VALUES ('5', '            <p>                <span><img src=\"//img20.360buyimg.com/vc/jfs/t1969/20/1578939827/48568/196e13/5664e7d5Na8ff1dd8.jpg\"><br><img src=\"//img20.360buyimg.com/vc/jfs/t2380/354/1590332454/46681/ca15b3e8/5664e7d5Ne1c8aaf5.jpg\"><br></span></p>', '5', '2016-08-11 15:47:36', '0000-00-00 00:00:00');
INSERT INTO `abon_product_content` VALUES ('6', '            <p>                <span><img src=\"//img12.360buyimg.com/cms/jfs/t2296/99/2334833498/69529/b407ea3b/5704e766Nc04ee95f.jpg\"><br><img src=\"//img13.360buyimg.com/cms/jfs/t2869/109/1484143494/128441/431eee19/573ecea1N6273445d.jpg\"><br><img src=\"//img13.360buyimg.com/cms/jfs/t2101/110/2417948483/141121/e77529b7/5704e769Nf67dfdb6.jpg\"><br><img src=\"//img11.360buyimg.com/cms/jfs/t2482/76/2417831760/153612/4de1ba29/5704e769Nce02ed98.jpg\"><br><img src=\"//img14.360buyimg.com/cms/jfs/t1855/59/2411313470/258665/61a2feeb/5704e769N05e454dd.jpg\"><br><img src=\"//img10.360buyimg.com/cms/jfs/t2845/45/146063707/145933/826b2c74/570521ecN8aa91ab5.jpg\"><br><img src=\"//img14.360buyimg.com/cms/jfs/t2680/1/133861654/244030/8e84efa2/5704e76aN1cae4164.jpg\"><br><img src=\"//img13.360buyimg.com/cms/jfs/t2653/200/137947102/176116/bacfd04e/5704e768N2d56a515.jpg\"><br><img src=\"//img11.360buyimg.com/cms/jfs/t2656/158/131654658/114621/6e592691/5704e76aN40ee3d92.jpg\"><br><img src=\"//img12.360buyimg.com/cms/jfs/t2641/246/141623608/143343/60fc3377/5704e76aN9d6c3ecd.jpg\"><br><img src=\"//img12.360buyimg.com/cms/jfs/t2587/167/132842567/244016/93c84cba/5704e768Ndf41fd9d.jpg\"><br><img src=\"//img13.360buyimg.com/cms/jfs/t2605/163/1438070588/203691/8fac900/573ecadcN08517bc9.jpg\"><br><img src=\"//img12.360buyimg.com/cms/jfs/t2632/74/135487243/103543/a8bd9cc4/5704e76bN176db477.jpg\"><br><img src=\"//img14.360buyimg.com/cms/jfs/t2656/154/142131794/241248/9ce61c82/5704e769N7bb4e47f.jpg\"><br><img src=\"//img14.360buyimg.com/cms/jfs/t2668/47/127113491/223304/d4940fd2/5704e769Na475ebfc.jpg\"><br><img src=\"//img13.360buyimg.com/cms/jfs/t1858/81/2470095307/130027/e590bdeb/5704e769Nf8c992b8.jpg\"><br><img src=\"//img11.360buyimg.com/cms/jfs/t2395/167/2415186210/55209/f748e6e6/5704e76bN3acafa09.jpg\"><br></span></p>', '6', '2016-08-11 15:48:30', '0000-00-00 00:00:00');
INSERT INTO `abon_product_content` VALUES ('7', '            <p>                <span><img src=\"//img20.360buyimg.com/vc/jfs/t2599/132/2026668598/53046/b4c016e8/57561d10N26b36037.jpg\"><br><img src=\"//img20.360buyimg.com/vc/jfs/t2617/138/4075199213/17490/21684522/57a7e641Na5a0cbba.jpg\"><br><img src=\"//img20.360buyimg.com/vc/jfs/t2593/244/4039649849/155076/222847c6/57a7dea6N42c98aa6.jpg\"><br><img src=\"//img20.360buyimg.com/vc/jfs/t3142/239/141488121/113013/137de94f/57a7dea6Nf3428a4c.jpg\"><br><img src=\"//img20.360buyimg.com/vc/jfs/t2983/41/2347667145/172104/2a476d09/57a7dea6N9d0a3590.jpg\"><br><img src=\"//img20.360buyimg.com/vc/jfs/t2875/96/3995232090/123222/74785a38/57a7dea6Ncfa345ec.jpg\"><br><img src=\"//img20.360buyimg.com/vc/jfs/t2668/362/4016977027/84974/103ee41e/57a7dea7N904ff031.jpg\"><br><img src=\"//img20.360buyimg.com/vc/jfs/t2836/118/4019994237/140833/7a59689b/57a7dea7Nf449d99d.jpg\"><br><img src=\"//img20.360buyimg.com/vc/jfs/t3199/239/155603151/109024/843a1c2c/57a7dea7N364d260f.jpg\"><br></span></p>', '7', '2016-08-11 15:49:11', '0000-00-00 00:00:00');
INSERT INTO `abon_product_content` VALUES ('8', '            <p>                <span><img src=\"//img10.360buyimg.com/imgzone/jfs/t2974/198/1010892290/19320/62575393/5772372aN0fa5f2ef.jpg\"><img src=\"//img10.360buyimg.com/imgzone/jfs/t2902/301/2699131473/18189/cd911072/5772372bN1eb1619d.jpg\"><img src=\"//img10.360buyimg.com/imgzone/jfs/t2761/322/2756393891/45472/5909a774/57723731Neae47df8.jpg\"><img src=\"//img10.360buyimg.com/imgzone/jfs/t2803/352/2742336845/17298/5632b6cb/57723732N9b14484f.jpg\"><img src=\"//img10.360buyimg.com/imgzone/jfs/t2890/53/2752927891/34039/e2aee3d1/57723734Nd44638a8.jpg\"><img src=\"//img10.360buyimg.com/imgzone/jfs/t2974/217/1070062826/9489/ed7df2a6/57723735N3319fdb4.jpg\"><img src=\"//img10.360buyimg.com/imgzone/jfs/t2953/155/1056308354/26734/9c11d09f/57723736Nbe399cdb.jpg\"><img src=\"//img10.360buyimg.com/imgzone/jfs/t2785/49/2749698789/26065/d3df5fbf/57723738Nf65caefd.jpg\"><img src=\"//img10.360buyimg.com/imgzone/jfs/t2653/26/2811380281/16622/4ea12ac5/57723739N7eed014e.jpg\"><img src=\"//img10.360buyimg.com/imgzone/jfs/t2779/7/2753407769/98624/a57566a3/5772373eN140e5e4c.jpg\"><img src=\"//img10.360buyimg.com/imgzone/jfs/t2821/320/2773030559/101765/d5896685/57723741N9e09bff5.jpg\"><img src=\"//img10.360buyimg.com/imgzone/jfs/t2707/242/2736783780/52387/52d00643/57723744N91d805cd.jpg\"><img src=\"//img10.360buyimg.com/imgzone/jfs/t2938/298/1040943231/86801/772c1945/57723748Na23ea599.jpg\"></span></p><div class=\"for_separator\"></div><p></p>', '8', '2016-08-11 17:38:40', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for abon_product_images
-- ----------------------------
DROP TABLE IF EXISTS `abon_product_images`;
CREATE TABLE `abon_product_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_path` varchar(200) DEFAULT NULL COMMENT '图片路径',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `product_id` int(11) NOT NULL COMMENT '商品id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of abon_product_images
-- ----------------------------
INSERT INTO `abon_product_images` VALUES ('1', '//m.360buyimg.com/n12/jfs/t2701/111/2557514957/160074/b1f6bd94/576b9ec7Nbbdb6856.jpg!q70.jpg', null, '1', '2016-08-11 16:23:57', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('2', '//m.360buyimg.com/n12/jfs/t2803/227/2562580830/135146/9eeb2c8e/576b9ec7Nb4fd7565.jpg!q70.jpg', null, '1', '2016-08-11 16:24:42', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('3', '//m.360buyimg.com/n12/jfs/t2782/276/2643152482/226401/8fa14b3b/576b9eceNbb4ad86a.jpg!q70.jpg', null, '1', '2016-08-11 16:25:08', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('4', '//m.360buyimg.com/n12/jfs/t2983/152/886040177/199945/1ca935b3/576b9ecfNe85b6c9b.jpg!q70.jpg', null, '1', '2016-08-11 16:25:18', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('5', '//m.360buyimg.com/n12/jfs/t2149/191/2697850255/114302/b87a814a/5717226bN1bb6cec1.jpg!q70.jpg', null, '2', '2016-08-11 17:22:02', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('6', '//m.360buyimg.com/n12/jfs/t2842/91/519453904/137669/3aa749c/57172273Nd9462d3b.jpg!q70.jpg', null, '2', '2016-08-11 17:22:13', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('7', '//m.360buyimg.com/n12/jfs/t2731/261/532809376/153139/5594bb36/57172274Nb15c2914.jpg!q70.jpg', null, '2', '2016-08-11 17:22:50', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('8', '//m.360buyimg.com/n12/jfs/t2392/251/2751987590/388606/af1c601a/57172275N8b647a31.jpg!q70.jpg', null, '2', '2016-08-11 17:22:52', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('9', '//m.360buyimg.com/n12/jfs/t2635/84/490668556/469763/c0783884/57172277Nd8db2165.jpg!q70.jpg', null, '2', '2016-08-11 17:23:20', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('10', '//m.360buyimg.com/n12/jfs/t2386/246/1835816273/84111/dcd5388a/56df8a7bNf0deb45d.jpg!q70.jpg', null, '3', '2016-08-11 17:24:37', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('11', '//m.360buyimg.com/n12/jfs/t2005/196/1805237094/112824/29ad5053/56df8a7aN36077088.jpg!q70.jpg', null, '3', '2016-08-11 17:24:52', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('12', '//m.360buyimg.com/n12/jfs/t2338/259/1852575627/101048/ca0687d5/56df8a7bN049c7dd3.jpg!q70.jpg', null, '3', '2016-08-11 17:25:03', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('13', '//m.360buyimg.com/n12/jfs/t2446/337/1784821577/354757/802fe983/56df8a7cNed7e7aef.jpg!q70.jpg', null, '3', '2016-08-11 17:25:13', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('14', '//m.360buyimg.com/n12/jfs/t2164/146/2609520206/301867/73280ce6/56df8a7dN4cd87c1c.jpg!q70.jpg', null, '3', '2016-08-11 17:25:23', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('15', '//m.360buyimg.com/n12/jfs/t1876/174/2804095092/119824/84f26336/56f0a1d1Ndf5a0e28.jpg!q70.jpg', null, '4', '2016-08-11 17:26:21', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('16', '//m.360buyimg.com/n12/jfs/t2272/272/2707732039/113008/f7c8113f/56f0a1caN633c8328.jpg!q70.jpg', null, '4', '2016-08-11 17:26:32', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('17', '//m.360buyimg.com/n12/jfs/t2020/107/2802995120/121183/1c3d502e/56f0a1c9Nf21c30e8.jpg!q70.jpg', null, '4', '2016-08-11 17:26:41', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('18', '//m.360buyimg.com/n12/jfs/t2338/51/2084436739/280249/26d5ce7b/56f0a1caN930ca18b.jpg!q70.jpg', null, '4', '2016-08-11 17:27:55', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('19', '//m.360buyimg.com/n12/jfs/t2347/202/831203560/128709/8e0d557e/562e041aNd9a24ceb.jpg!q70.jpg', null, '5', '2016-08-11 17:27:58', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('20', '//m.360buyimg.com/n12/jfs/t2260/228/881485372/116680/673ff6f0/562e041bN9664f92e.jpg!q70.jpg', null, '5', '2016-08-11 17:28:09', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('21', '//m.360buyimg.com/n12/jfs/t2281/267/848244445/71534/5c908610/562e041cN9e4d4dbd.jpg!q70.jpg', null, '5', '2016-08-11 17:28:20', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('22', '//m.360buyimg.com/n12/jfs/t2065/353/1587730663/284208/3e34d308/5666cc37N5d13751e.jpg!q70.jpg', null, '6', '2016-08-11 17:28:54', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('23', '//m.360buyimg.com/n12/jfs/t2521/290/786137052/225679/ac04d27c/5666cc3eNf320538a.jpg!q70.jpg', null, '6', '2016-08-11 17:29:05', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('24', '//m.360buyimg.com/n12/jfs/t2311/54/1630871342/109311/72835167/5666cc43N65c6acfb.jpg!q70.jpg', null, '6', '2016-08-11 17:29:14', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('25', '//m.360buyimg.com/n12/jfs/t2308/82/1655062286/20980/42660b2a/5666cc4aN03f173a2.jpg!q70.jpg', null, '6', '2016-08-11 17:29:23', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('26', '//m.360buyimg.com/n12/jfs/t2257/177/1123017414/143066/52c5344a/5641e6e7Nc88a5347.jpg!q70.jpg', null, '7', '2016-08-11 17:29:51', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('27', '//m.360buyimg.com/n12/jfs/t2515/160/301101243/116874/9e76bc89/5641e6e7N0fe219b3.jpg!q70.jpg', null, '7', '2016-08-11 17:30:01', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('28', '//m.360buyimg.com/n12/jfs/t2305/105/1123752096/112236/d63f96c3/5641e6e8N8c940ffa.jpg!q70.jpg', null, '7', '2016-08-11 17:30:12', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('29', '//m.360buyimg.com/n12/jfs/t2566/211/302442311/45615/b099693f/5641e6e8Ne0c55800.jpg!q70.jpg', null, '7', '2016-08-11 17:30:19', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('30', '//m.360buyimg.com/n12/jfs/t2029/96/1045074476/21608/24ef9131/5641e6e8N8489a0c9.jpg!q70.jpg', null, '7', '2016-08-11 17:30:31', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('31', '//m.360buyimg.com/n12/jfs/t2044/98/1090386808/20450/24c3b6f9/5641e6e8Nf98bc96b.jpg!q70.jpg', null, '7', '2016-08-11 17:30:41', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('32', '//m.360buyimg.com/n12/jfs/t1972/274/1169668918/38778/5f2837d/5641e6e9Nf70cc93f.jpg!q70.jpg', null, '7', '2016-08-11 17:30:49', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('33', '//m.360buyimg.com/n12/jfs/t2836/342/2064808305/156803/c6aa2978/5756636cN71945f12.jpg!q70.jpg', null, '8', '2016-08-11 17:35:21', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('34', '//m.360buyimg.com/n12/jfs/t1999/207/1382325487/171237/96fa5095/5694a983Ne693d195.jpg!q70.jpg', null, '8', '2016-08-11 17:35:32', '0000-00-00 00:00:00');
INSERT INTO `abon_product_images` VALUES ('35', '//m.360buyimg.com/n12/jfs/t2281/131/1989089942/514098/52a21bb7/5694a983Nb6fcf446.jpg!q70.jpg', null, '8', '2016-08-11 17:35:42', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for abon_temp_email
-- ----------------------------
DROP TABLE IF EXISTS `abon_temp_email`;
CREATE TABLE `abon_temp_email` (
  `member_id` int(11) NOT NULL COMMENT '会员id',
  `code` varchar(32) NOT NULL,
  `deadline` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of abon_temp_email
-- ----------------------------
INSERT INTO `abon_temp_email` VALUES ('17', 'fffb130aa99020caa6c1c756d91f56f1', '2016-08-11 10:31:13');

-- ----------------------------
-- Table structure for abon_temp_phone
-- ----------------------------
DROP TABLE IF EXISTS `abon_temp_phone`;
CREATE TABLE `abon_temp_phone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) NOT NULL COMMENT '手机号码',
  `code` int(6) NOT NULL COMMENT '验证码',
  `deadline` timestamp NULL DEFAULT NULL COMMENT '有限期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of abon_temp_phone
-- ----------------------------
INSERT INTO `abon_temp_phone` VALUES ('1', '18708156628', '88229', '2016-08-08 00:00:00');
INSERT INTO `abon_temp_phone` VALUES ('3', '18711111111', '52911', '2016-08-08 00:00:00');
INSERT INTO `abon_temp_phone` VALUES ('4', '18708156629', '28335', '2016-08-10 15:36:39');
