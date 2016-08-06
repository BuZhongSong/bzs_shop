CREATE TABLE `abon_member` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`nickname` varchar(255) NULL COMMENT '昵称',
`phone` varchar(25) NOT NULL COMMENT '电话号码',
`password` varchar(32) NOT NULL COMMENT '密码',
`created_at` timestamp NOT NULL COMMENT '注册时间',
`updated_at` timestamp NOT NULL COMMENT '修改时间',
PRIMARY KEY (`id`) 
);

CREATE TABLE `abon_category` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`name` varchar(45) NULL COMMENT '名称',
`sort` int(11) NULL COMMENT '排序',
`preview` varchar(100) NULL COMMENT '预览图',
`parent_id` int(11) NULL COMMENT '父组分类',
`created_at` timestamp NOT NULL COMMENT '创建时间',
`updated_at` timestamp NOT NULL COMMENT '修改时间',
PRIMARY KEY (`id`) 
);

CREATE TABLE `abon_product` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`name` varchar(45) NULL COMMENT '名称',
`sort` int(11) NULL COMMENT '排序',
`preview` varchar(100) NULL COMMENT '预览图',
`parent_id` int(11) NULL COMMENT '父组分类',
`created_at` timestamp NOT NULL COMMENT '创建时间',
`updated_at` timestamp NOT NULL COMMENT '修改时间',
PRIMARY KEY (`id`) 
);

CREATE TABLE `abon_product_content` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`content` varchar(20000) NULL COMMENT '商品内容',
`product_id` int(11) NULL COMMENT '商品id',
`created_at` timestamp NOT NULL,
`updated_at` timestamp NOT NULL,
PRIMARY KEY (`id`) 
);

CREATE TABLE `abon_product_images` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`image_path` varchar(200) NULL COMMENT '图片路径',
`sort` int(11) NULL COMMENT '排序',
`product_id` int(11) NOT NULL COMMENT '商品id',
`created_at` timestamp NOT NULL,
`updated_at` timestamp NOT NULL,
PRIMARY KEY (`id`) 
);

CREATE TABLE `abon_temp_phone` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`phone` varchar(11) NOT NULL COMMENT '手机号码',
`code` int(6) NOT NULL COMMENT '验证码',
`deadline` timestamp(255) NULL COMMENT '有限期',
PRIMARY KEY (`id`) 
);

