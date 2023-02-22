/*
 Navicat Premium Data Transfer

 Source Server         : mysql8
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : baroque

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 22/02/2023 10:55:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for access
-- ----------------------------
DROP TABLE IF EXISTS `access`;
CREATE TABLE `access`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `type` tinyint(1) NULL DEFAULT NULL,
  `action_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `module_id` int NULL DEFAULT NULL,
  `sort` int NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `add_time` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 114 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of access
-- ----------------------------
INSERT INTO `access` VALUES (52, '管理员管理', 1, '', '', 0, 105, '管理员管理', 0, 1);
INSERT INTO `access` VALUES (53, '角色管理', 1, '', '', 0, 100, '角色管理', 0, 1);
INSERT INTO `access` VALUES (54, '管理员管理', 2, '管理员列表', 'manager', 52, 100, '管理员列表', 0, 1);
INSERT INTO `access` VALUES (55, '管理员管理', 2, '增加管理员', 'manager/add', 52, 101, '管理员列表', 0, 1);
INSERT INTO `access` VALUES (56, '管理员管理', 3, '编辑管理员', 'manager/edit', 52, 100, '编辑管理员', 0, 1);
INSERT INTO `access` VALUES (57, '管理员管理', 3, '删除管理员', 'manager/delete', 52, 100, '删除管理员', 0, 1);
INSERT INTO `access` VALUES (59, '角色管理', 2, '角色列表', 'role', 53, 100, '角色列表', 0, 1);
INSERT INTO `access` VALUES (60, '角色管理', 2, '增加角色', 'role/add', 53, 102, '增加角色', 0, 1);
INSERT INTO `access` VALUES (61, '角色管理', 3, '编辑角色', 'role/edit', 53, 100, '编辑角色', 0, 1);
INSERT INTO `access` VALUES (62, '角色管理', 3, '删除角色', 'role/delete', 53, 100, '删除角色', 0, 1);
INSERT INTO `access` VALUES (63, '权限管理', 1, '', '', 0, 100, '权限管理', 0, 1);
INSERT INTO `access` VALUES (64, '权限管理', 2, '权限列表', 'access', 63, 100, '', 0, 1);
INSERT INTO `access` VALUES (67, '权限管理', 2, '增加权限', 'access/add', 63, 100, '', 0, 1);
INSERT INTO `access` VALUES (69, '系统设置', 2, '轮播图列表', 'focus', 106, 101, '1111', 0, 1);
INSERT INTO `access` VALUES (70, '系统设置', 3, '增加轮播图', 'focus/add', 106, 100, '增加轮播图', 0, 1);
INSERT INTO `access` VALUES (71, '系统设置', 3, '编辑轮播图', 'focus/edit', 106, 100, '', 0, 1);
INSERT INTO `access` VALUES (75, '系统设置', 3, '删除轮播图', 'focus/delete', 106, 100, '', 0, 1);
INSERT INTO `access` VALUES (76, '管理员管理', 3, '执行增加管理员', 'manager/doAdd', 52, 100, '执行增加', 0, 1);
INSERT INTO `access` VALUES (77, '管理员管理', 3, '执行修改管理员', 'manager/doEdit', 52, 100, '执行修改', 0, 1);
INSERT INTO `access` VALUES (78, '角色管理', 3, '执行增加角色', 'role/doAdd', 53, 100, '执行增加', 0, 1);
INSERT INTO `access` VALUES (79, '角色管理', 3, '执行修改角色', 'role/doEdit', 53, 100, '执行修改', 0, 1);
INSERT INTO `access` VALUES (80, '角色管理', 3, '角色授权', 'role/auth', 53, 100, '', 0, 1);
INSERT INTO `access` VALUES (81, '角色管理', 3, '执行角色授权', 'role/doAuth', 53, 100, '执行授权', 0, 1);
INSERT INTO `access` VALUES (82, '权限管理', 3, '修改权限', 'access/edit', 63, 100, '执行修改', 0, 1);
INSERT INTO `access` VALUES (83, '权限管理', 3, '删除权限', 'access/delete', 63, 100, '', 0, 1);
INSERT INTO `access` VALUES (84, '权限管理', 3, '执行增加权限', 'access/doAdd', 63, 100, '', 0, 1);
INSERT INTO `access` VALUES (85, '权限管理', 3, '执行修改权限', 'access/doEdit', 63, 100, '执行修改\r\n', 0, 1);
INSERT INTO `access` VALUES (86, '系统设置', 3, '执行增加', 'focus/doAdd', 106, 100, '', 0, 1);
INSERT INTO `access` VALUES (87, '商品管理', 1, '', '', 0, 100, '', 0, 1);
INSERT INTO `access` VALUES (88, '商品管理', 2, '商品分类列表', 'goodsCate', 87, 100, '', 0, 1);
INSERT INTO `access` VALUES (89, '商品管理', 3, '增加商品分类', 'goodsCate/add', 87, 100, '', 0, 1);
INSERT INTO `access` VALUES (90, '商品管理', 3, '执行增加商品分类', 'goodsCate/doAdd', 87, 100, '', 0, 1);
INSERT INTO `access` VALUES (91, '商品管理', 3, '修改商品分类', 'goodsCate/edit', 87, 100, '', 0, 1);
INSERT INTO `access` VALUES (92, '商品管理', 3, '执行修改商品分类', 'goodsCate/doEdit', 87, 100, '', 0, 1);
INSERT INTO `access` VALUES (93, '商品管理', 3, '删除商品分类', 'goodsCate/delete', 87, 100, '', 0, 1);
INSERT INTO `access` VALUES (94, '商品管理', 2, '商品类型列表', 'goodsType', 87, 100, '', 0, 1);
INSERT INTO `access` VALUES (95, '商品管理', 3, '增加商品类型', 'goodsType/add', 87, 100, '', 0, 1);
INSERT INTO `access` VALUES (96, '商品管理', 3, '编辑商品类型', 'goodsType/edit', 87, 100, '', 0, 1);
INSERT INTO `access` VALUES (97, '商品管理', 3, '执行增加 商品类型', 'goodsType/doAdd', 87, 100, '', 0, 1);
INSERT INTO `access` VALUES (98, '商品管理', 3, '执行修改 商品类型', 'goodsType/doEdit', 87, 100, '', 0, 1);
INSERT INTO `access` VALUES (99, '商品管理', 3, '删除 商品类型', 'goodsType/delete', 87, 100, '', 0, 1);
INSERT INTO `access` VALUES (100, '商品管理', 2, '商品列表', 'goods', 87, 100, '商品列表', 0, 1);
INSERT INTO `access` VALUES (101, '商品管理', 3, '增加商品', 'goods/add', 87, 100, '', 0, 1);
INSERT INTO `access` VALUES (102, '商品管理', 3, '执行 增加商品', 'goods/doAdd', 87, 100, '', 0, 1);
INSERT INTO `access` VALUES (103, '商品管理', 3, '修改商品', 'goods/edit', 87, 100, '', 0, 1);
INSERT INTO `access` VALUES (104, '商品管理', 3, '执行 修改商品', 'goods/doEdit', 87, 100, '', 0, 1);
INSERT INTO `access` VALUES (105, '商品管理', 3, '删除商品', 'goods/delete', 87, 100, '', 0, 1);
INSERT INTO `access` VALUES (106, '系统设置', 1, '', '', 0, 100, '', 0, 1);
INSERT INTO `access` VALUES (107, '系统设置', 2, '导航管理', 'nav', 106, 100, '', 0, 1);
INSERT INTO `access` VALUES (108, '系统设置', 3, '增加导航', 'nav/add', 106, 100, '', 0, 1);
INSERT INTO `access` VALUES (109, '系统设置', 3, '编辑导航', 'nav/edit', 106, 100, '', 0, 1);
INSERT INTO `access` VALUES (110, '系统设置', 3, '删除导航', 'nav/delete', 106, 100, '', 0, 1);
INSERT INTO `access` VALUES (111, '系统设置', 3, '执行增加', 'nav/doAdd', 106, 100, '', 0, 1);
INSERT INTO `access` VALUES (112, '系统设置', 3, '执行修改', 'nav/doEdit', 106, 100, '', 0, 1);
INSERT INTO `access` VALUES (113, '系统设置', 2, '商店设置', 'setting', 106, 100, '', 0, 1);

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `default_address` tinyint(1) NULL DEFAULT NULL,
  `add_time` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (42, 12, '李四', '15201686411', '北京市 海淀区 西二旗 xxx好11', 1, 0);
INSERT INTO `address` VALUES (43, 12, '张三', '15201686412', '深圳市   宝安区  xxx 2222222', 0, 0);
INSERT INTO `address` VALUES (44, 12, '王五', '15201686412', '上海市 xxx11 222 111', 0, 0);
INSERT INTO `address` VALUES (45, 12, '尼龙 33333', '15201686412', '上海市 xxx 22', 0, 0);
INSERT INTO `address` VALUES (46, 19, 'aaaaa', '15201686411', 'aaaaa', 1, 0);

-- ----------------------------
-- Table structure for focus
-- ----------------------------
DROP TABLE IF EXISTS `focus`;
CREATE TABLE `focus`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `focus_type` tinyint(1) NULL DEFAULT NULL,
  `focus_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `add_time` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of focus
-- ----------------------------
INSERT INTO `focus` VALUES (14, '小米手机', 1, 'static/upload/20211101/1635757964474199700.jpg', 'http://www.itying.com', 1115, 1, 1631677671);
INSERT INTO `focus` VALUES (16, '小米电视1111', 1, 'static/upload/20211101/1635757979944161500.jpg', 'http://a.itying.com', 1222, 1, 1631679244);
INSERT INTO `focus` VALUES (17, 'ces', 1, 'static/upload/20211101/1635758018523031700.jpg', 'http://www.itying.com', 100, 1, 1635758011);
INSERT INTO `focus` VALUES (18, '啊啊啊', 1, 'static/upload/20211102/1635817134986870600.png', 'http://www.itying.com', 100, 1, 1635817134);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_sn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cate_id` int NULL DEFAULT NULL,
  `click_count` int NULL DEFAULT NULL,
  `goods_number` int NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `market_price` decimal(10, 2) NULL DEFAULT NULL,
  `relation_goods` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_attr` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_gift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_fitting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `is_delete` tinyint NULL DEFAULT NULL,
  `is_hot` tinyint NULL DEFAULT NULL,
  `is_best` tinyint NULL DEFAULT NULL,
  `is_new` tinyint NULL DEFAULT NULL,
  `goods_type_id` int NULL DEFAULT NULL,
  `sort` int NULL DEFAULT NULL,
  `status` tinyint NULL DEFAULT NULL,
  `add_time` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (19, '小米9-8GB+256GB', '火爆热卖中，6GB+64GB/6GB+128GB闪降100元，到手价1299元起', '', 38, 100, 1000, 999.00, 999.00, '19,53', '', '1,2,4,5', '8GB+256GB', 'static/upload/20200617/1592392307796676500.jpg', '1,2', '1,2', '', '', '<p>火爆热卖中，6GB+64GB/6GB+128GB闪降100元，到手价1299元起</p><p><br></p><p><img src=\"http://bee.apiying.com/static/upload/20211101/1635739607166546900.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><img src=\"http://bee.apiying.com/static/upload/20211101/1635740680831942900.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><br></p>', 0, 0, 1, 1, 1, 100, 1, 1592392307);
INSERT INTO `goods` VALUES (20, 'Redmi Note 11 5G手机 1亿像素 55W有线闪充 50W无线闪充  6G+128GB 手机', '购机赠价值897元善诊3人体检套餐；赠Keep会员7日体验卡；光大信用卡分期支付满1000元减80元，数量有限', '', 2, 100, 100, 3699.00, 4599.00, '20,54', '', '2,5,7,8', '6G+128GB', 'static/upload/20211117/1637139107685884400.jpg', '', '', '', '', '<p>火爆热卖中，6GB+64GB/6GB+128GB闪降100元，到手价1299元起</p>', 0, 1, 1, 0, 1, 0, 1, 1592392495);
INSERT INTO `goods` VALUES (21, '小米8年度旗舰', '火爆热卖中，6GB+64GB/6GB+128GB闪降100元，到手价1299元起', '', 36, 100, 1000, 1112.00, 1113.00, '1,2', '1,2', '2,3,4,5', '3GB+32GB', 'static/upload/20211102/1635849810407008900.png', '1,2', '1,2', '1,2', '1,2', '<p>火爆热卖中，6GB+64GB/6GB+128GB闪降100元，到手价1299元起</p><p><br></p><p><img src=\"http://bee.apiying.com/static/upload/20211101/1635736323217965200.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p>', 0, 0, 1, 1, 1, 11, 1, 1592392825);
INSERT INTO `goods` VALUES (22, 'Redmi 7A', '「3GB+32GB到手价仅549元」4000mAh超长续航 / 骁龙8核处理器 / 标配10W快充 / AI人脸解锁 / 大字体，大音量，无线收音机 / 整机生活防泼溅 / 极简模式，亲情守护', '', 2, 100, 1000, 549.00, 799.00, '', '', '3,4', '3GB+32GB', 'static/upload/20200622/1592820040.jpg', '', '', '', '', '<p><span style=\"color: rgb(51, 51, 51); font-family: F9ab65; font-size: 10.4922px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">小巧机身蕴藏4000mAh大电量，配合MIUI系统级省电优化，精细调控，从此告别电量焦虑，尽情尽欢！</span></p>', 0, 0, 1, 0, 1, 100, 1, 1592820016);
INSERT INTO `goods` VALUES (23, 'Redmi 智能电视 X65', '全金属边框/4K超高清/MEMC运动补偿/8单元重低音音响系统', '', 5, 100, 1000, 2999.00, 3299.00, '', '', '4', '56寸', 'static/upload/20200622/1592820111.jpg', '', '', '', '', '<p><span style=\'color: rgb(176, 176, 176); font-family: \"Helvetica Neue\", Helvetica, Arial, \"Microsoft Yahei\", \"Hiragino Sans GB\", \"Heiti SC\", \"WenQuanYi Micro Hei\", sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\'>全金属边框/4K超高清/MEMC运动补偿/8单元重低音音响系统</span></p>', 0, 0, 1, 0, 0, 100, 0, 1592820111);
INSERT INTO `goods` VALUES (24, 'RedmiBook 13 全面屏', '四窄边全面屏 / 全新十代酷睿™处理器 / 全金属超轻机身 / MX250 高性能独显 / 小米互传 / 专业「飓风」散热系统 / 11小时长续航', '', 39, 100, 1000, 4499.00, 4799.00, '', '', '4,5', '8G+128G', 'static/upload/20200622/1592820244.jpg', '', '', '', '', '<p><span style=\'color: rgb(176, 176, 176); font-family: \"Helvetica Neue\", Helvetica, Arial, \"Microsoft Yahei\", \"Hiragino Sans GB\", \"Heiti SC\", \"WenQuanYi Micro Hei\", sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\'>四窄边全面屏 / 全新十代酷睿&trade;处理器 / 全金属超轻机身 / MX250 高性能独显 / 小米互传 / 专业「飓风」散热系统 / 11小时长续航</span></p>', 0, 0, 1, 0, 0, 100, 1, 1592820244);
INSERT INTO `goods` VALUES (26, '黑鲨双向快充移动电源', '18W双向快充 / 铠甲机身 / 一入三出 / 炫酷灯效', '', 20, 100, 1000, 0.00, 0.00, '', '', '', '', 'static/upload/20200622/1592820494.jpg', '', '', '', '', '', 0, 0, 1, 0, 0, 100, 1, 1592820494);
INSERT INTO `goods` VALUES (39, 'Redmi k30', '6.53\"水滴大屏 | 5020mAh超长续航 | G80高性能处理器 | 全场景 AI 四摄 | 大功率扬声器 | 指纹识别 | 人脸解锁 | 红外遥控', '', 38, 100, 100, 899.00, 899.00, '', '', '', '', 'static/upload/20211116/1637026344085801400.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1635502706);
INSERT INTO `goods` VALUES (40, 'Xiaomi MIX 4', 'CUP全面屏 | 真彩原色 + 120Hz | 一体化轻量陶瓷机身 | 高通骁龙™888+ | WiFi 6 增强版 | 石墨烯「冰封」散热系统', '', 37, 100, 100, 0.00, 0.00, '', '', '', '', 'static/upload/20211116/1637026171480899500.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1635503000);
INSERT INTO `goods` VALUES (41, 'Xiaomi Civi', '轻薄潮流设计 | 丝绒AG工艺 | 原生美肌人像 | 像素级肌肤焕新技术 | 3200万高清质感自拍 | 双柔光灯+自动对焦 | 3D曲面OLED柔性屏 | 120Hz+Dolby Vision | 4500mAh 大电量 | 55W有线闪充 | 立体声双扬声器', '', 36, 100, 100, 1200.00, 1400.00, '', '', '', '', 'static/upload/20211116/1637026086634961500.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1635503077);
INSERT INTO `goods` VALUES (42, 'Redmi Note 10 5G', ' 5G小金刚｜旗舰长续航｜双5G待机｜5000mAh充电宝级大容量｜4800万高清相机｜天玑700八核高性能处理器', '', 35, 100, 100, 0.00, 0.00, '', '', '', '', 'static/upload/20211116/1637025991576339600.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1635503644);
INSERT INTO `goods` VALUES (43, 'Xiaomi 10S', '骁龙870 | 对称式双扬立体声 | 1亿像素 8K电影相机 | 33W有线快充 | 30W无线快充 | 10W反向充电 | 4780mAh超大电池 | LPDDR5+UFS3.0+Wi-Fi 6 | VC液冷散热 | 双模5G', '', 35, 100, 100, 2699.00, 3699.00, '', '', '1,2,3', '8GB+128GB', 'static/upload/20211102/1635841579767962200.jpg', '', '', '', '', '<p id=\"isPasted\"><br></p><p>高通骁龙&trade;870</p><p>哈曼卡顿｜对称式双扬立体声</p><p>4780mAh 大电量</p><p>三重快充 33W有线+30W无线+10W反向充电</p><p>小至尊经典外观</p><p>LPDDR5+UFS3.0+WiFi6</p><p>1 亿像素电影相机</p><p>8K 电影模式</p><p><br></p>', 0, 0, 1, 0, 1, 100, 1, 1635841578);
INSERT INTO `goods` VALUES (44, 'Xiaomi 11 Pro', '至高享24期免息，赠蓝牙耳机Air2 SE，+1元得30W立式无线充', '', 2, 100, 100, 0.00, 0.00, '', '', '2,3,4', '', 'static/upload/20211102/1635841908156579200.jpg', '', '', '', '', '<p><br></p><p id=\"isPasted\" style=\"text-align: center;\"><span style=\"font-size: 24px;\">联合研发18个月</span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\">2亿影像投入，打造超强规格主摄</span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\">这是颗&ldquo;巨型大底&rdquo;的面积，甚至可以媲美专业便携式相机，超大的进光量，</span></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\">带来了前所未有丰富的细节，&ldquo;夜视&rdquo;能力因此远超人眼，更能&ldquo;看懂&rdquo;夜色。</span></p><p><img src=\"/static/upload/20211102/1635841855622147000.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p><p><br></p>', 0, 0, 1, 0, 0, 100, 1, 1635841907);
INSERT INTO `goods` VALUES (45, '小米移动电源3 20000mAh USB-C双向快充版', '', '', 20, 100, 100, 100.00, 100.00, '', '', '', '', 'static/upload/20211102/1635844763742258900.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1635844763);
INSERT INTO `goods` VALUES (46, '小米移动电源3 10000mAh 超级闪充版 （50W）', '', '', 20, 100, 100, 125.00, 155.00, '', '', '', '', 'static/upload/20211102/1635844808324401400.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1635844808);
INSERT INTO `goods` VALUES (47, '小米6A Type-C快充数据线', '快速充电 | 快速传输 | 更强兼容 | 安全可靠', '', 9, 100, 100, 29.00, 29.00, '', '', '', '', 'static/upload/20211118/1637218054509467500.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1635845354);
INSERT INTO `goods` VALUES (48, '小米USB-C数据线 编织线版 100cm', '', '', 9, 100, 100, 0.00, 0.00, '', '', '', '', 'static/upload/20211102/1635845426055325800.jpg', '', '', '', '', '<p><img src=\"/static/upload/20211102/1635845418913722200.png\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p>', 0, 0, 0, 0, 0, 100, 1, 1635845425);
INSERT INTO `goods` VALUES (49, 'Redmi Note 11 Pro系列', '三星AMOLED高刷屏 | JBL 对称式立体声 | 一亿像素超清影像 | 天玑920液冷芯 | VC液冷立体散热', '', 2, 100, 100, 0.00, 0.00, '', '', '', '', 'static/upload/20211116/1637025826328576500.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1637025826);
INSERT INTO `goods` VALUES (50, '小米全面屏电视 55英寸PRO E55S', 'Amlogic T972超强悍处理器 / 4K超高清画质 细腻如真 / 支持8K视频解码 / 2G+32G超大存储 / 内置小爱同学 语音控制更方便 / 智能Patchwall汇聚海量好内容', '', 19, 100, 100, 2399.00, 2499.00, '', '', '', '', 'static/upload/20211116/1637049463471284100.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1637049463);
INSERT INTO `goods` VALUES (51, '米家互联网对开门冰箱 540L', '风冷无霜/环绕出风/纤薄箱体/电脑控温,持久保鲜/智能互联', '', 13, 100, 100, 2899.00, 2999.00, '23,24,39', '', '1,2,3,4', '', 'static/upload/20211116/1637049592911969300.jpg', '23,24,39', '23,24,39', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1637049592);
INSERT INTO `goods` VALUES (53, '小米9 6GB+128GB', '', '', 38, 100, 100, 1113.00, 1167.00, '19,53', '', '2,6,7', '6GB+128GB', 'static/upload/20211116/1637063708413624300.jpg', '', '', '', '', '<p id=\"isPasted\">火爆热卖中，6GB+64GB/6GB+128GB闪降100元，到手价1299元起</p><p><br></p><p><img src=\"http://bee.apiying.com/static/upload/20211101/1635739607166546900.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dii\"></p><p><img src=\"http://bee.apiying.com/static/upload/20211101/1635740680831942900.jpg\" style=\"width: 300px;\" class=\"fr-fic fr-dii\"></p>', 0, 0, 0, 0, 0, 100, 1, 1637063708);
INSERT INTO `goods` VALUES (54, 'Redmi Note 11 5G手机 1亿像素 55W有线闪充 50W无线闪充  8G+256GB 手机', '双卡双5G | X轴线性马达 | 5000mAh 大电量 | 33W快充 | 立体声双扬声器 | 天玑810处理器 | 90Hz变速高刷屏', '', 2, 100, 100, 4199.00, 4599.00, '20,54', '颜色:红色,白色,黄色 | 尺寸:41,42,43', '2,8', ' 8G+256GB', 'static/upload/20211118/1637219213943897000.jpg', '', '', '', '', '<p id=\"isPasted\" style=\'margin: 0px; font-weight: bolder; font-size: 18px; color: rgb(0, 0, 0); font-family: \"Helvetica Neue\", Helvetica, Arial, \"Microsoft Yahei\", \"Hiragino Sans GB\", \"Heiti SC\", \"WenQuanYi Micro Hei\", sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\'><br>8GB + 256GB 最高可选</p><p style=\'margin: 0px; color: rgb(0, 0, 0); font-family: \"Helvetica Neue\", Helvetica, Arial, \"Microsoft Yahei\", \"Hiragino Sans GB\", \"Heiti SC\", \"WenQuanYi Micro Hei\", sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\'>4GB + 128GB</p><p style=\'margin: 0px; color: rgb(0, 0, 0); font-family: \"Helvetica Neue\", Helvetica, Arial, \"Microsoft Yahei\", \"Hiragino Sans GB\", \"Heiti SC\", \"WenQuanYi Micro Hei\", sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\'>6GB + 128GB</p><p style=\'margin: 0px; color: rgb(0, 0, 0); font-family: \"Helvetica Neue\", Helvetica, Arial, \"Microsoft Yahei\", \"Hiragino Sans GB\", \"Heiti SC\", \"WenQuanYi Micro Hei\", sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\'>8GB + 128GB</p><p style=\'margin: 0px; color: rgb(0, 0, 0); font-family: \"Helvetica Neue\", Helvetica, Arial, \"Microsoft Yahei\", \"Hiragino Sans GB\", \"Heiti SC\", \"WenQuanYi Micro Hei\", sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\'>8GB + 256GB</p><p style=\'margin: 0px; color: rgb(0, 0, 0); font-family: \"Helvetica Neue\", Helvetica, Arial, \"Microsoft Yahei\", \"Hiragino Sans GB\", \"Heiti SC\", \"WenQuanYi Micro Hei\", sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\'>LPDDR4X 内存 +UFS2.2 闪存</p>', 0, 0, 0, 0, 1, 100, 1, 1637139500);
INSERT INTO `goods` VALUES (57, 'Remi12C', '', '', 1, 100, 100, 699.00, 0.00, '', '', '', '', 'static/upload/20230215/1676435786250985600.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676435786);
INSERT INTO `goods` VALUES (61, 'Note115G', '', '', 1, 100, 100, 1299.00, 0.00, '', '', '', '', 'static/upload/20230215/1676437606015855100.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676437606);
INSERT INTO `goods` VALUES (63, 'Note12Pro极速版', '', '', 1, 100, 100, 1699.00, 0.00, '', '', '', '', 'static/upload/20230215/1676437683145713300.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676437683);
INSERT INTO `goods` VALUES (64, 'Redmi10A', '', '', 1, 100, 100, 699.00, 0.00, '', '', '', '', 'static/upload/20230215/1676437725287511400.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676437725);
INSERT INTO `goods` VALUES (65, 'Xiaomi 12S', '', '', 1, 100, 100, 3999.00, 0.00, '', '', '', '', 'static/upload/20230215/1676437760369511400.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676437760);
INSERT INTO `goods` VALUES (66, 'Redmi X55 2022款', '', '', 4, 100, 100, 2899.00, 0.00, '', '', '', '', 'static/upload/20230215/1676437861927549400.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676437861);
INSERT INTO `goods` VALUES (67, 'Redmi X65 ', '', '', 4, 100, 100, 2199.00, 0.00, '', '', '', '', 'static/upload/20230215/1676437915649549900.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676437915);
INSERT INTO `goods` VALUES (68, '金属全面屏电视', '', '', 4, 100, 100, 2399.00, 0.00, '', '', '', '', 'static/upload/20230215/1676437947601089200.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676437947);
INSERT INTO `goods` VALUES (69, '米家激光投影仪', '', '', 4, 100, 100, 5399.00, 0.00, '', '', '', '', 'static/upload/20230215/1676437993169222600.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676437993);
INSERT INTO `goods` VALUES (70, '小米电视4A 60英寸', '', '', 4, 100, 100, 1599.00, 0.00, '', '', '', '', 'static/upload/20230215/1676438032935400100.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676438032);
INSERT INTO `goods` VALUES (71, '壁挂空调', '', '', 6, 100, 100, 2099.00, 0.00, '', '', '', '', 'static/upload/20230215/1676438078881086200.png', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676438078);
INSERT INTO `goods` VALUES (72, '滚筒洗衣机', '', '', 6, 100, 100, 0.00, 0.00, '', '', '', '', 'static/upload/20230215/1676438118706051200.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676438118);
INSERT INTO `goods` VALUES (73, '净水器', '', '', 6, 100, 100, 0.00, 0.00, '', '', '', '', 'static/upload/20230215/1676438135549321500.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676438135);
INSERT INTO `goods` VALUES (74, '扫地机器人', '', '', 6, 100, 100, 0.00, 0.00, '', '', '', '', 'static/upload/20230215/1676438153740409900.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676438153);
INSERT INTO `goods` VALUES (75, 'Air2 SE', '', '', 11, 100, 100, 99.00, 0.00, '', '', '', '', 'static/upload/20230215/1676438273067212500.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676438273);
INSERT INTO `goods` VALUES (76, 'Necklace.', '', '', 11, 100, 100, 499.00, 0.00, '', '', '', '', 'static/upload/20230215/1676438314128037900.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676438314);
INSERT INTO `goods` VALUES (77, 'Redmi Buds 3', '', '', 11, 100, 100, 159.00, 0.00, '', '', '', '', 'static/upload/20230215/1676438346616405700.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676438346);
INSERT INTO `goods` VALUES (78, 'Xiaomi Buds 4', '', '', 11, 100, 100, 669.00, 0.00, '', '', '', '', 'static/upload/20230215/1676438383599544400.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676438383);
INSERT INTO `goods` VALUES (79, 'Redmi 手表 2', '', '', 7, 100, 100, 349.00, 0.00, '', '', '', '', 'static/upload/20230215/1676438429345017800.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676438429);
INSERT INTO `goods` VALUES (80, 'Xiaomi Watch S1 ', '', '', 7, 100, 100, 1499.00, 0.00, '', '', '', '', 'static/upload/20230215/1676438462461183000.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676438462);
INSERT INTO `goods` VALUES (81, '米家电动滑板车1S', '', '', 7, 100, 100, 2199.00, 0.00, '', '', '', '', 'static/upload/20230215/1676438491607367100.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676438491);
INSERT INTO `goods` VALUES (82, '九号平衡车', '', '', 7, 100, 100, 2199.00, 0.00, '', '', '', '', 'static/upload/20230215/1676438526927124700.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676438526);
INSERT INTO `goods` VALUES (83, '小米平板5', '', '', 8, 100, 100, 1999.00, 0.00, '', '', '', '', 'static/upload/20230215/1676438581127399300.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676438581);
INSERT INTO `goods` VALUES (84, 'Redmi G 游戏本 ', '', '', 8, 100, 100, 5799.00, 0.00, '', '', '', '', 'static/upload/20230215/1676438611142846500.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676438611);
INSERT INTO `goods` VALUES (85, 'Xiaomi Book Air 13', '', '', 8, 100, 100, 4999.00, 0.00, '', '', '', '', 'static/upload/20230215/1676438643560861700.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676438643);
INSERT INTO `goods` VALUES (86, 'Redmi G  Intel版', '', '', 8, 100, 100, 6499.00, 0.00, '', '', '', '', 'static/upload/20230215/1676438696887980500.jpg', '', '', '', '', '', 0, 0, 0, 0, 0, 100, 1, 1676438696);

-- ----------------------------
-- Table structure for goods_attr
-- ----------------------------
DROP TABLE IF EXISTS `goods_attr`;
CREATE TABLE `goods_attr`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `goods_id` int NULL DEFAULT NULL,
  `attribute_cate_id` int NULL DEFAULT NULL,
  `attribute_id` int NULL DEFAULT NULL,
  `attribute_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `attribute_type` tinyint(1) NULL DEFAULT NULL,
  `attribute_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sort` int NULL DEFAULT NULL,
  `add_time` int NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 554 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods_attr
-- ----------------------------
INSERT INTO `goods_attr` VALUES (108, 37, 2, 2, '主体', 3, '111\r\n', 10, 1634722866, 1);
INSERT INTO `goods_attr` VALUES (109, 37, 2, 3, '内存', 1, '内存', 10, 1634722866, 1);
INSERT INTO `goods_attr` VALUES (110, 37, 2, 4, '硬盘', 1, '硬盘', 10, 1634722866, 1);
INSERT INTO `goods_attr` VALUES (111, 37, 2, 5, '显示器', 1, '显示器:', 10, 1634722866, 1);
INSERT INTO `goods_attr` VALUES (112, 37, 2, 6, '支持蓝牙', 3, '否', 10, 1634722866, 1);
INSERT INTO `goods_attr` VALUES (117, 43, 1, 1, '基本信息', 1, '高通骁龙™870', 10, 1637025929, 1);
INSERT INTO `goods_attr` VALUES (118, 43, 1, 7, '性能	', 2, '4780mAh 大电量', 10, 1637025929, 1);
INSERT INTO `goods_attr` VALUES (119, 43, 1, 8, '相机', 2, '4780mAh 大电量', 10, 1637025929, 1);
INSERT INTO `goods_attr` VALUES (120, 43, 1, 9, '支持蓝牙', 3, '是\r\n', 10, 1637025929, 1);
INSERT INTO `goods_attr` VALUES (157, 20, 1, 1, '基本信息', 1, '', 10, 1637139540, 1);
INSERT INTO `goods_attr` VALUES (158, 20, 1, 7, '性能	', 2, '', 10, 1637139540, 1);
INSERT INTO `goods_attr` VALUES (159, 20, 1, 8, '相机', 2, '', 10, 1637139541, 1);
INSERT INTO `goods_attr` VALUES (160, 20, 1, 9, '支持蓝牙', 3, '是\r\n', 10, 1637139541, 1);
INSERT INTO `goods_attr` VALUES (161, 38, 1, 1, '基本信息', 1, '124214', 10, 1637218460, 1);
INSERT INTO `goods_attr` VALUES (162, 38, 1, 7, '性能	', 2, '214214', 10, 1637218460, 1);
INSERT INTO `goods_attr` VALUES (163, 38, 1, 8, '相机', 2, '214214', 10, 1637218460, 1);
INSERT INTO `goods_attr` VALUES (164, 38, 1, 9, '支持蓝牙', 3, '是\r\n', 10, 1637218460, 1);
INSERT INTO `goods_attr` VALUES (165, 36, 2, 2, '主体', 3, '1111', 10, 1637218489, 1);
INSERT INTO `goods_attr` VALUES (166, 36, 2, 3, '内存', 1, 'aaaaaaa', 10, 1637218489, 1);
INSERT INTO `goods_attr` VALUES (167, 36, 2, 4, '硬盘', 1, 'bbbb', 10, 1637218489, 1);
INSERT INTO `goods_attr` VALUES (168, 36, 2, 5, '显示器', 1, 'cccc', 10, 1637218490, 1);
INSERT INTO `goods_attr` VALUES (169, 36, 2, 6, '支持蓝牙', 3, '是\r\n', 10, 1637218490, 1);
INSERT INTO `goods_attr` VALUES (536, 54, 1, 1, '基本信息', 1, '', 10, 1637294588, 1);
INSERT INTO `goods_attr` VALUES (537, 54, 1, 7, '性能	', 2, '### 天玑810\r\n\r\n* 6nm工艺制程\r\n\r\nCPU：八核处理器，最高主频2.4GHz\r\n\r\nGPU：Mali-G57', 10, 1637294588, 1);
INSERT INTO `goods_attr` VALUES (538, 54, 1, 8, '相机', 2, '5000万超清主摄\r\n\r\n\r\n50MP，f/1.8 ，4in1\r\n\r\n\r\n800万超广角相机\r\n\r\n\r\n8MP，IMX355，119°', 10, 1637294588, 1);
INSERT INTO `goods_attr` VALUES (539, 54, 1, 9, '支持蓝牙', 3, '是\r\n', 10, 1637294588, 1);
INSERT INTO `goods_attr` VALUES (540, 54, 1, 14, '内存与容量', 2, '8GB + 256GB 最高可选\r\n\r\n4GB + 128GB\r\n\r\n6GB + 128GB\r\n\r\n8GB + 128GB\r\n\r\n8GB + 256GB\r\n\r\nLPDDR4X 内存 +UFS2.2 闪存', 10, 1637294588, 1);
INSERT INTO `goods_attr` VALUES (541, 54, 1, 15, '外观尺寸', 2, '高度：163.56mm\r\n\r\n宽度：75.78mm\r\n\r\n厚度：8.75mm\r\n\r\n重量：195g', 10, 1637294588, 1);
INSERT INTO `goods_attr` VALUES (542, 54, 1, 16, '充电与电池', 2, '5000mAh电池（典型值）\r\n\r\n标配33W充电器\r\n\r\n充电接口：Type-C充电接口', 10, 1637294588, 1);
INSERT INTO `goods_attr` VALUES (543, 54, 1, 17, '影像系统', 1, '', 10, 1637294588, 1);
INSERT INTO `goods_attr` VALUES (544, 54, 1, 18, '传感器', 1, '', 10, 1637294588, 1);
INSERT INTO `goods_attr` VALUES (545, 19, 1, 1, '基本信息', 1, '', 10, 1637296719, 1);
INSERT INTO `goods_attr` VALUES (546, 19, 1, 7, '性能	', 2, '### 高通骁龙™888\r\n\r\n**CPU 架构工艺：Kryo 680 架构，5nm 工艺制程**\r\n\r\nCPU 主频：八核处理器，最高主频可达：2.84GHz\r\n\r\nGPU ：Adreno 660 图形处理器，最高频率可达 840MHz \r\n\r\nAI：第六代 AI 引擎\r\n\r\n![尺寸](https://cdn.cnbj1.fds.api.mi-img.com/product-images/mix4/specs_m.png)\r\n\r\n\r\n', 10, 1637296719, 1);
INSERT INTO `goods_attr` VALUES (547, 19, 1, 8, '相机', 2, '', 10, 1637296719, 1);
INSERT INTO `goods_attr` VALUES (548, 19, 1, 9, '支持蓝牙', 3, '是\r\n', 10, 1637296719, 1);
INSERT INTO `goods_attr` VALUES (549, 19, 1, 14, '内存与容量', 2, '12GB + 256GB 最高可选\r\n\r\n* 运行内存：8GB / 12GB LPDDR5 高速内存（6400Mbps）\r\n\r\n* 机身存储：128GB / 256GB UFS 3.1 高速存储', 10, 1637296719, 1);
INSERT INTO `goods_attr` VALUES (550, 19, 1, 15, '外观尺寸', 2, '', 10, 1637296719, 1);
INSERT INTO `goods_attr` VALUES (551, 19, 1, 16, '充电与电池', 2, '5000mAh（typ） / 4900mAh（min）\r\n\r\n内置锂离子聚合物电池，不可拆卸\r\n\r\nUSB Type-C 双面充电接口\r\n\r\n手机支持 QC4 / QC3+ / PD3.0 快充协议\r\n\r\n67W有线闪充/67W无线闪充/10W无线反充', 10, 1637296719, 1);
INSERT INTO `goods_attr` VALUES (552, 19, 1, 17, '影像系统', 1, '', 10, 1637296719, 1);
INSERT INTO `goods_attr` VALUES (553, 19, 1, 18, '传感器', 1, '', 10, 1637296719, 1);

-- ----------------------------
-- Table structure for goods_cate
-- ----------------------------
DROP TABLE IF EXISTS `goods_cate`;
CREATE TABLE `goods_cate`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cate_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `template` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` int NULL DEFAULT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `sort` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `add_time` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods_cate
-- ----------------------------
INSERT INTO `goods_cate` VALUES (1, '手机', '', '', '', 0, '手机', '手机', '手机', 1, '10', 1582461745);
INSERT INTO `goods_cate` VALUES (2, '小米11 Pro', 'static/upload/2020223/1582463294.png', '', 'itying/product/aaa.html', 1, '小米10 Pro', '小米10 Pro', '小米10 Pro', 1, '0', 1582463294);
INSERT INTO `goods_cate` VALUES (3, 'Redmi 8', 'static/upload/2020223/1582463357.png', 'http://www.itying.com', '11', 1, 'Redmi 8 11', 'Redmi 8 111', 'Redmi 8 111', 1, '11', 1582463357);
INSERT INTO `goods_cate` VALUES (4, '电视 ', '', '', '', 0, '电视 盒子', '电视 盒子', '电视 盒子', 1, '0', 1582463515);
INSERT INTO `goods_cate` VALUES (5, '小米电视5 55英寸', 'static/upload/2020223/1582464603.png', '', '', 4, '小米电视5 55英寸', '小米电视5 55英寸', '小米电视5 55英寸', 1, '0', 1582464603);
INSERT INTO `goods_cate` VALUES (6, '家电', '', '', 'itying/product/catetest.html', 0, '', '', '', 1, '0', 1582513219);
INSERT INTO `goods_cate` VALUES (7, '出行 穿戴', '', '', '', 0, '', '', '', 1, '0', 1582513235);
INSERT INTO `goods_cate` VALUES (8, '智能 路由器', '', '', '', 0, '', '', '', 1, '0', 1582513270);
INSERT INTO `goods_cate` VALUES (9, '电源 配件', '', '', '', 0, '', '', '', 1, '0', 1582513285);
INSERT INTO `goods_cate` VALUES (10, '健康 儿童', 'static/upload/20211028/1635413604527197900.jpg', '', '', 0, '', '', '', 1, '0', 1582513300);
INSERT INTO `goods_cate` VALUES (11, '耳机 音响', '', '', '', 0, '', '', '', 1, '0', 1582513338);
INSERT INTO `goods_cate` VALUES (12, '生活 箱包', '', '', '', 0, '', '', '', 1, '0', 1582513349);
INSERT INTO `goods_cate` VALUES (13, '冰箱', 'static/upload/2020224/1582513945.jpg', '', '', 6, '冰箱', '冰箱', '冰箱', 1, '0', 1582513945);
INSERT INTO `goods_cate` VALUES (14, '微波炉', 'static/upload/2020224/1582514001.jpg', '', '', 6, '', '', '', 1, '0', 1582513960);
INSERT INTO `goods_cate` VALUES (15, '小米手表', 'static/upload/2020224/1582514113.png', '', '', 7, '小米手表', '小米手表', '小米手表', 1, '0', 1582514113);
INSERT INTO `goods_cate` VALUES (16, '平衡车', 'static/upload/2020224/1582514151.jpg', '', '', 7, '平衡车', '平衡车', '平衡车', 1, '0', 1582514151);
INSERT INTO `goods_cate` VALUES (17, '路由器', 'static/upload/2020224/1582514289.png', '', '', 8, '路由器', '路由器', '路由器', 1, '0', 1582514289);
INSERT INTO `goods_cate` VALUES (18, '摄像机', 'static/upload/2020224/1582514318.jpg', '', '', 8, '摄像机', '摄像机', '摄像机', 1, '0', 1582514318);
INSERT INTO `goods_cate` VALUES (19, '全屏电视55寸', 'static/upload/2020224/1582514664.jpg', '', '', 4, '', '', '', 1, '0', 1582514664);
INSERT INTO `goods_cate` VALUES (20, '移动电源', 'static/upload/2020224/1582514810.png', '', '', 9, '移动电源', '移动电源', '移动电源', 1, '0', 1582514810);
INSERT INTO `goods_cate` VALUES (39, '笔记本', 'static/upload/20211118/1637218647770107500.jpg', '', '', 4, '', '', '', 1, '10', 1637218647);

-- ----------------------------
-- Table structure for goods_color
-- ----------------------------
DROP TABLE IF EXISTS `goods_color`;
CREATE TABLE `goods_color`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `color_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `color_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods_color
-- ----------------------------
INSERT INTO `goods_color` VALUES (1, '红色', 'red', 1);
INSERT INTO `goods_color` VALUES (2, '黑色', '#000', 1);
INSERT INTO `goods_color` VALUES (3, '黄色', 'yellow', 1);
INSERT INTO `goods_color` VALUES (4, '金色', '#ebf10f', 1);
INSERT INTO `goods_color` VALUES (5, '灰色', '#eee', 1);
INSERT INTO `goods_color` VALUES (6, '紫色', '#9932CD ', 1);
INSERT INTO `goods_color` VALUES (7, '淡绿色', '#90EE90', 1);
INSERT INTO `goods_color` VALUES (8, '蓝色', 'blue', NULL);

-- ----------------------------
-- Table structure for goods_image
-- ----------------------------
DROP TABLE IF EXISTS `goods_image`;
CREATE TABLE `goods_image`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `goods_id` int NULL DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `color_id` int NULL DEFAULT NULL,
  `sort` int NULL DEFAULT NULL,
  `add_time` int NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods_image
-- ----------------------------
INSERT INTO `goods_image` VALUES (5, 37, 'static/upload/20211009/1633755740718752300.png', 2, 10, 1633755741, 1);
INSERT INTO `goods_image` VALUES (6, 37, 'static/upload/20211009/1633755740714630100.jpg', 4, 10, 1633755741, 1);
INSERT INTO `goods_image` VALUES (19, 43, 'static/upload/20211102/1635841578192734800.png', 0, 10, 1635841580, 1);
INSERT INTO `goods_image` VALUES (20, 44, 'static/upload/20211102/1635841907018281600.jpg', 0, 10, 1635841908, 1);
INSERT INTO `goods_image` VALUES (21, 19, 'static/upload/20211116/1637052716813265400.jpg', 0, 10, 1637052718, 1);
INSERT INTO `goods_image` VALUES (22, 19, 'static/upload/20211116/1637052716850583600.jpg', 0, 10, 1637052718, 1);
INSERT INTO `goods_image` VALUES (23, 19, 'static/upload/20211116/1637052716884345200.jpg', 0, 10, 1637052718, 1);
INSERT INTO `goods_image` VALUES (27, 20, 'static/upload/20211116/1637063586126852600.jpg', 8, 10, 1637063587, 1);
INSERT INTO `goods_image` VALUES (28, 53, 'static/upload/20211116/1637063716307468700.jpg', 2, 10, 1637063716, 1);
INSERT INTO `goods_image` VALUES (29, 53, 'static/upload/20211116/1637063716342727800.jpg', 2, 10, 1637063716, 1);
INSERT INTO `goods_image` VALUES (30, 53, 'static/upload/20211117/1637138323678153500.jpg', 6, 10, 1637138326, 1);
INSERT INTO `goods_image` VALUES (31, 53, 'static/upload/20211117/1637138323703994500.jpg', 0, 10, 1637138326, 1);
INSERT INTO `goods_image` VALUES (32, 53, 'static/upload/20211117/1637138323728025100.jpg', 7, 10, 1637138326, 1);
INSERT INTO `goods_image` VALUES (33, 53, 'static/upload/20211117/1637138324148951200.jpg', 7, 10, 1637138326, 1);
INSERT INTO `goods_image` VALUES (34, 53, 'static/upload/20211117/1637138324173917100.jpg', 7, 10, 1637138326, 1);
INSERT INTO `goods_image` VALUES (35, 20, 'static/upload/20211117/1637139106080100100.jpg', 5, 10, 1637139108, 1);
INSERT INTO `goods_image` VALUES (36, 20, 'static/upload/20211117/1637139106095482200.jpg', 5, 10, 1637139108, 1);
INSERT INTO `goods_image` VALUES (37, 20, 'static/upload/20211117/1637139106121304700.jpg', 7, 10, 1637139108, 1);
INSERT INTO `goods_image` VALUES (38, 20, 'static/upload/20211117/1637139106142051100.jpg', 2, 10, 1637139108, 1);
INSERT INTO `goods_image` VALUES (39, 20, 'static/upload/20211117/1637139106176296000.jpg', 8, 10, 1637139108, 1);
INSERT INTO `goods_image` VALUES (40, 20, 'static/upload/20211117/1637139106213056300.jpg', 7, 10, 1637139108, 1);
INSERT INTO `goods_image` VALUES (41, 54, 'static/upload/20211117/1637139499477843800.jpg', 2, 10, 1637139501, 1);
INSERT INTO `goods_image` VALUES (42, 54, 'static/upload/20211117/1637139499510094900.jpg', 2, 10, 1637139501, 1);
INSERT INTO `goods_image` VALUES (43, 54, 'static/upload/20211117/1637139499528738400.jpg', 8, 10, 1637139501, 1);
INSERT INTO `goods_image` VALUES (44, 54, 'static/upload/20211117/1637139499755592600.jpg', 8, 10, 1637139501, 1);
INSERT INTO `goods_image` VALUES (47, 52, 'static/upload/20211118/1637217857219083500.jpg', 0, 10, 1637217858, 1);
INSERT INTO `goods_image` VALUES (48, 51, 'static/upload/20211118/1637217872435156200.jpg', 0, 10, 1637217873, 1);
INSERT INTO `goods_image` VALUES (49, 50, 'static/upload/20211118/1637217890454460200.jpg', 0, 10, 1637217895, 1);
INSERT INTO `goods_image` VALUES (50, 49, 'static/upload/20211118/1637217907397100400.jpg', 0, 10, 1637217908, 1);
INSERT INTO `goods_image` VALUES (51, 48, 'static/upload/20211118/1637217953241815700.jpg', 0, 10, 1637217954, 1);
INSERT INTO `goods_image` VALUES (52, 46, 'static/upload/20211118/1637218111418352100.jpg', 0, 10, 1637218112, 1);
INSERT INTO `goods_image` VALUES (53, 45, 'static/upload/20211118/1637218361128479400.jpg', 0, 10, 1637218361, 1);
INSERT INTO `goods_image` VALUES (54, 42, 'static/upload/20211118/1637218381814981600.jpg', 0, 10, 1637218382, 1);
INSERT INTO `goods_image` VALUES (55, 41, 'static/upload/20211118/1637218395623952700.jpg', 0, 10, 1637218396, 1);
INSERT INTO `goods_image` VALUES (56, 40, 'static/upload/20211118/1637218411828092500.png', 0, 10, 1637218412, 1);
INSERT INTO `goods_image` VALUES (57, 39, 'static/upload/20211118/1637218432993290700.jpg', 0, 10, 1637218433, 1);
INSERT INTO `goods_image` VALUES (58, 38, 'static/upload/20211118/1637218459159740500.jpg', 0, 10, 1637218459, 1);
INSERT INTO `goods_image` VALUES (59, 36, 'static/upload/20211118/1637218489222313500.jpg', 0, 10, 1637218489, 1);
INSERT INTO `goods_image` VALUES (60, 26, 'static/upload/20211118/1637218536145683500.jpg', 0, 10, 1637218536, 1);
INSERT INTO `goods_image` VALUES (61, 25, 'static/upload/20211118/1637218579047173100.jpg', 0, 10, 1637218579, 1);
INSERT INTO `goods_image` VALUES (62, 24, 'static/upload/20211118/1637218693021098600.jpg', 0, 10, 1637218693, 1);
INSERT INTO `goods_image` VALUES (63, 23, 'static/upload/20211118/1637218736074295700.jpg', 0, 10, 1637218736, 1);
INSERT INTO `goods_image` VALUES (64, 22, 'static/upload/20211118/1637218748569814100.jpg', 0, 10, 1637218749, 1);
INSERT INTO `goods_image` VALUES (65, 21, 'static/upload/20211118/1637218768855028300.jpg', 0, 10, 1637218769, 1);

-- ----------------------------
-- Table structure for goods_type
-- ----------------------------
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `add_time` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods_type
-- ----------------------------
INSERT INTO `goods_type` VALUES (1, '手机', '手机22', 1, 1632299505);
INSERT INTO `goods_type` VALUES (2, '电脑', '电脑', 0, 1632299512);
INSERT INTO `goods_type` VALUES (3, '笔记本', '笔记本', 1, 1632299526);
INSERT INTO `goods_type` VALUES (4, '路由器', '路由器', 0, 1632299535);
INSERT INTO `goods_type` VALUES (9, '衣服', '衣服', 1, 1632361292);

-- ----------------------------
-- Table structure for goods_type_attribute
-- ----------------------------
DROP TABLE IF EXISTS `goods_type_attribute`;
CREATE TABLE `goods_type_attribute`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `cate_id` int NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_value` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `sort` int NULL DEFAULT NULL,
  `add_time` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cate_id`(`cate_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods_type_attribute
-- ----------------------------
INSERT INTO `goods_type_attribute` VALUES (1, 1, '基本信息', '1', '', 1, 10, 1632299512);
INSERT INTO `goods_type_attribute` VALUES (2, 2, '主体', '3', '111\r\n1111', 1, 19, 1632299512);
INSERT INTO `goods_type_attribute` VALUES (3, 2, '内存', '1', '', 1, NULL, 1632299512);
INSERT INTO `goods_type_attribute` VALUES (4, 2, '硬盘', '1', '', 1, NULL, 1632299512);
INSERT INTO `goods_type_attribute` VALUES (5, 2, '显示器', '1', '', 1, 111, 1582361804);
INSERT INTO `goods_type_attribute` VALUES (6, 2, '支持蓝牙', '3', '是\r\n否', 1, 1011, 1582362691);
INSERT INTO `goods_type_attribute` VALUES (7, 1, '性能	', '2', '', 1, 111, 1632299512);
INSERT INTO `goods_type_attribute` VALUES (8, 1, '相机', '2', '', 1, 0, 1632299512);
INSERT INTO `goods_type_attribute` VALUES (9, 1, '支持蓝牙', '3', '是\r\n否', 1, 0, 1591844649);
INSERT INTO `goods_type_attribute` VALUES (10, 4, '是否支持蓝牙', '3', '是\r\n否', 1, 1022, 1632370943);
INSERT INTO `goods_type_attribute` VALUES (12, 3, '尺寸1', '1', '', 1, 10, 1632388221);
INSERT INTO `goods_type_attribute` VALUES (14, 1, '内存与容量', '2', '', 1, 10, 1637222859);
INSERT INTO `goods_type_attribute` VALUES (15, 1, '外观尺寸', '2', '', 1, 10, 1637222884);
INSERT INTO `goods_type_attribute` VALUES (16, 1, '充电与电池', '2', '', 1, 10, 1637222895);
INSERT INTO `goods_type_attribute` VALUES (17, 1, '影像系统', '1', '', 1, 10, 1637222910);
INSERT INTO `goods_type_attribute` VALUES (18, 1, '传感器', '1', '', 1, 10, 1637222921);
INSERT INTO `goods_type_attribute` VALUES (19, 3, '支持蓝牙', '3', '是\r\n否', 1, 10, 1637236161);

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `role_id` int NULL DEFAULT NULL,
  `add_time` int NULL DEFAULT NULL,
  `is_super` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`role_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '152016111', '5188611114@qq.com', 1, 9, 0, 1);
INSERT INTO `manager` VALUES (2, 'zhangsan', 'e10adc3949ba59abbe56e057f20f883e', '1520111122', '342338691122@qq.com', 1, 14, 1581661532, 0);
INSERT INTO `manager` VALUES (6, 'lisi', 'e10adc3949ba59abbe56e057f20f883e', '1520171111', '11114292@qq.com', 1, 16, 1631156378, 0);

-- ----------------------------
-- Table structure for nav
-- ----------------------------
DROP TABLE IF EXISTS `nav`;
CREATE TABLE `nav`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `position` tinyint(1) NULL DEFAULT NULL,
  `is_opennew` tinyint(1) NULL DEFAULT NULL,
  `relation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sort` int NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `add_time` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of nav
-- ----------------------------
INSERT INTO `nav` VALUES (1, '小米商城', 'http://www.itying.com', 2, 2, '19.20,22,23,24,53,36,38', 10, 1, 1592919226);
INSERT INTO `nav` VALUES (2, 'MIUI', 'http://www.itying.com', 1, 1, '1', 10, 1, 1592921999);
INSERT INTO `nav` VALUES (3, '小米手机', 'https://shouji.mi.com/', 2, 2, '19,20,53,54', 10, 1, 1592922081);
INSERT INTO `nav` VALUES (4, '小米电视', 'https://ds.mi.com/', 2, 2, '23,24', 10, 1, 1592922273);
INSERT INTO `nav` VALUES (5, '路由器', 'http://bbs.itying.com', 2, 1, '25', 10, 1, 1592922331);
INSERT INTO `nav` VALUES (8, '云服务', 'https://i.mi.com/', 1, 2, '2', 10, 1, 1593529309);
INSERT INTO `nav` VALUES (9, '金融', 'https://jr.mi.com/?from=micom', 1, 1, '1', 10, 1, 1593529329);
INSERT INTO `nav` VALUES (10, '有品', 'https://youpin.mi.com/', 1, 1, '1', 10, 1, 1593529346);
INSERT INTO `nav` VALUES (11, '家电', '', 2, 1, '1', 10, 1, 1593529451);
INSERT INTO `nav` VALUES (12, '智能电视', '', 2, 1, '23', 10, 1, 1593529470);
INSERT INTO `nav` VALUES (14, '小米帮助中心2', 'http://www.itying.com', 3, 2, '12,13,14', 10, 1, 1634788777);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NULL DEFAULT NULL,
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `all_price` decimal(10, 2) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `zipcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pay_status` tinyint(1) NULL DEFAULT NULL,
  `pay_type` tinyint(1) NULL DEFAULT NULL,
  `order_status` tinyint(1) NULL DEFAULT NULL,
  `add_time` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (55, 12, '202112171049159039', 4698.00, '李四', '15201686411', '北京市 海淀区 西二旗 xxx好11', NULL, 0, 0, 0, 1639709355);
INSERT INTO `order` VALUES (56, 12, '202112171049583915', 0.00, '李四', '15201686411', '北京市 海淀区 西二旗 xxx好11', NULL, 0, 0, 0, 1639709398);
INSERT INTO `order` VALUES (57, 12, '202112171051338776', 3699.00, '李四', '15201686411', '北京市 海淀区 西二旗 xxx好11', NULL, 0, 0, 0, 1639709493);
INSERT INTO `order` VALUES (58, 19, '202112171058466816', 2999.00, 'aaaaa', '15201686411', 'aaaaa', NULL, 0, 0, 0, 1639709926);
INSERT INTO `order` VALUES (59, 19, '202112171059390719', 3699.00, 'aaaaa', '15201686411', 'aaaaa', NULL, 0, 0, 0, 1639709979);
INSERT INTO `order` VALUES (60, 19, '202112171114292757', 999.00, 'aaaaa', '15201686411', 'aaaaa', NULL, 0, 0, 0, 1639710869);
INSERT INTO `order` VALUES (61, 19, '202112171122490808', 1113.00, 'aaaaa', '15201686411', 'aaaaa', NULL, 0, 0, 0, 1639711369);

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NULL DEFAULT NULL,
  `uid` int NULL DEFAULT NULL,
  `product_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `product_id` int NULL DEFAULT NULL,
  `product_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `product_price` decimal(10, 2) NULL DEFAULT NULL,
  `product_num` int NULL DEFAULT NULL,
  `goods_version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `add_time` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_item
-- ----------------------------
INSERT INTO `order_item` VALUES (76, 55, 12, 'Redmi Note 11 5G手机 1亿像素 55W有线闪充 50W无线闪充  6G+128GB 手机', 20, 'static/upload/20211117/1637139107685884400.jpg', 3699.00, 1, '6G+128GB', '黑色', 0);
INSERT INTO `order_item` VALUES (77, 55, 12, '小米9-8GB+256GB', 19, 'static/upload/20200617/1592392307796676500.jpg', 999.00, 1, '8GB+256GB', '红色', 0);
INSERT INTO `order_item` VALUES (78, 57, 12, 'Redmi Note 11 5G手机 1亿像素 55W有线闪充 50W无线闪充  6G+128GB 手机', 20, 'static/upload/20211117/1637139107685884400.jpg', 3699.00, 1, '6G+128GB', '黑色', 0);
INSERT INTO `order_item` VALUES (79, 58, 19, 'Redmi 智能电视 X65', 23, 'static/upload/20200622/1592820111.jpg', 2999.00, 1, '56寸', '', 0);
INSERT INTO `order_item` VALUES (80, 59, 19, 'Redmi Note 11 5G手机 1亿像素 55W有线闪充 50W无线闪充  6G+128GB 手机', 20, 'static/upload/20211117/1637139107685884400.jpg', 3699.00, 1, '6G+128GB', '黑色', 0);
INSERT INTO `order_item` VALUES (81, 60, 19, '小米9-8GB+256GB', 19, 'static/upload/20200617/1592392307796676500.jpg', 999.00, 1, '8GB+256GB', '红色', 0);
INSERT INTO `order_item` VALUES (82, 61, 19, '小米9 6GB+128GB', 53, 'static/upload/20211116/1637063708413624300.jpg', 1113.00, 1, '6GB+128GB', '黑色', 0);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `add_time` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (9, '超级管理员', '我是一个超级管理员', 1, 1631072961);
INSERT INTO `role` VALUES (14, '软件部门', '软件部门', 1, 1631075350);
INSERT INTO `role` VALUES (16, '销售部门', '销售部门', 1, 1631589828);

-- ----------------------------
-- Table structure for role_access
-- ----------------------------
DROP TABLE IF EXISTS `role_access`;
CREATE TABLE `role_access`  (
  `role_id` int NOT NULL,
  `access_id` int NOT NULL,
  INDEX `role_id`(`role_id` ASC) USING BTREE,
  INDEX `access_id`(`access_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_access
-- ----------------------------
INSERT INTO `role_access` VALUES (14, 52);
INSERT INTO `role_access` VALUES (14, 54);
INSERT INTO `role_access` VALUES (14, 55);
INSERT INTO `role_access` VALUES (14, 56);
INSERT INTO `role_access` VALUES (14, 57);
INSERT INTO `role_access` VALUES (14, 76);
INSERT INTO `role_access` VALUES (14, 53);
INSERT INTO `role_access` VALUES (14, 59);
INSERT INTO `role_access` VALUES (14, 60);
INSERT INTO `role_access` VALUES (14, 61);
INSERT INTO `role_access` VALUES (14, 62);
INSERT INTO `role_access` VALUES (14, 78);
INSERT INTO `role_access` VALUES (14, 79);
INSERT INTO `role_access` VALUES (14, 80);
INSERT INTO `role_access` VALUES (14, 81);
INSERT INTO `role_access` VALUES (9, 52);
INSERT INTO `role_access` VALUES (9, 54);
INSERT INTO `role_access` VALUES (9, 55);
INSERT INTO `role_access` VALUES (9, 53);
INSERT INTO `role_access` VALUES (9, 59);
INSERT INTO `role_access` VALUES (9, 60);
INSERT INTO `role_access` VALUES (9, 61);
INSERT INTO `role_access` VALUES (9, 62);
INSERT INTO `role_access` VALUES (9, 63);
INSERT INTO `role_access` VALUES (9, 64);
INSERT INTO `role_access` VALUES (9, 67);
INSERT INTO `role_access` VALUES (9, 82);
INSERT INTO `role_access` VALUES (9, 83);
INSERT INTO `role_access` VALUES (9, 84);
INSERT INTO `role_access` VALUES (9, 85);
INSERT INTO `role_access` VALUES (9, 70);
INSERT INTO `role_access` VALUES (9, 71);
INSERT INTO `role_access` VALUES (16, 53);
INSERT INTO `role_access` VALUES (16, 59);
INSERT INTO `role_access` VALUES (16, 60);
INSERT INTO `role_access` VALUES (16, 61);
INSERT INTO `role_access` VALUES (16, 62);
INSERT INTO `role_access` VALUES (16, 78);
INSERT INTO `role_access` VALUES (16, 79);
INSERT INTO `role_access` VALUES (16, 80);
INSERT INTO `role_access` VALUES (16, 81);
INSERT INTO `role_access` VALUES (16, 63);
INSERT INTO `role_access` VALUES (16, 64);
INSERT INTO `role_access` VALUES (16, 67);
INSERT INTO `role_access` VALUES (16, 82);
INSERT INTO `role_access` VALUES (16, 83);
INSERT INTO `role_access` VALUES (16, 84);
INSERT INTO `role_access` VALUES (16, 85);

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `site_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `site_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `site_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `site_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `no_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `site_icp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `site_tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `search_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tongji_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `appid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `app_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `end_point` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bucket_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `oss_status` tinyint(1) NULL DEFAULT NULL,
  `oss_domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `thumbnail_size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES (1, 'Gin仿小米商城项目3333333333', 'static/upload/20211029/1635492623215921000.jpg', '小米', '222222222', 'static/upload/20211029/1635472950579882800.jpg', '2422', '24', '24', '11111', 'GJoqWHXB2c9S9gwP', 'Lgf3weXuWITUUb17vDJfveg1jmKEe9', 'oss-cn-beijing.aliyuncs.com', 'itying', 0, 'http://bee.apiying.com/', '100,200,400');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `last_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `add_time` int NULL DEFAULT NULL,
  `status` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (11, 'e10adc3949ba59abbe56e057f20f883e', '15201226455', '192.168.0.10', '', 1638499939, 1);
INSERT INTO `user` VALUES (12, 'e10adc3949ba59abbe56e057f20f883e', '15201686411', '::1', '', 1638843450, 1);
INSERT INTO `user` VALUES (13, 'e10adc3949ba59abbe56e057f20f883e', '15201686412', '::1', '', 1638849416, 1);
INSERT INTO `user` VALUES (16, 'e10adc3949ba59abbe56e057f20f883e', '15201686422', '::1', '', 1638849656, 1);
INSERT INTO `user` VALUES (18, 'e10adc3949ba59abbe56e057f20f883e', '15201686666', '127.0.0.1', '', 1638851773, 1);
INSERT INTO `user` VALUES (19, 'e10adc3949ba59abbe56e057f20f883e', '15201686466', '::1', '', 1639708338, 1);
INSERT INTO `user` VALUES (20, 'e10adc3949ba59abbe56e057f20f883e', '12345678910', '::1', '', 1673230365, 1);
INSERT INTO `user` VALUES (25, '4297f44b13955235245b2497399d7a93', '15201226666', '', '', 1676623505, 0);
INSERT INTO `user` VALUES (26, 'e10adc3949ba59abbe56e057f20f883e', '18923114988', '', '', 1676990093, 0);
INSERT INTO `user` VALUES (28, 'e10adc3949ba59abbe56e057f20f883e', '15118583834', '', '', 1676990276, 0);
INSERT INTO `user` VALUES (30, 'e10adc3949ba59abbe56e057f20f883e', '13025355317', '', '', 1676990634, 0);

-- ----------------------------
-- Table structure for user_cart
-- ----------------------------
DROP TABLE IF EXISTS `user_cart`;
CREATE TABLE `user_cart`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `good_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `good_price` decimal(10, 2) NULL DEFAULT NULL,
  `good_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_cart
-- ----------------------------
INSERT INTO `user_cart` VALUES (1, '15201226455', 'Remi12C', 699.00, 'static/upload/20230215/1676435786250985600.jpg');
INSERT INTO `user_cart` VALUES (57, '', 'Remi12C', 699.00, 'static/upload/20230215/1676435786250985600.jpg');
INSERT INTO `user_cart` VALUES (61, '15201226455', 'Note115G', 1299.00, 'static/upload/20230215/1676437606015855100.jpg');
INSERT INTO `user_cart` VALUES (82, '', '', 0.00, '');
INSERT INTO `user_cart` VALUES (83, '', '', 0.00, '');
INSERT INTO `user_cart` VALUES (84, '15201226455', '', 0.00, '');

-- ----------------------------
-- Table structure for user_temp
-- ----------------------------
DROP TABLE IF EXISTS `user_temp`;
CREATE TABLE `user_temp`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `send_count` int NULL DEFAULT NULL,
  `add_day` int NULL DEFAULT NULL,
  `add_time` int NULL DEFAULT NULL,
  `sign` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_temp
-- ----------------------------
INSERT INTO `user_temp` VALUES (51, '192.168.0.10', '15201636455', 2, 20211202, 1638433815, '7777975c3e2a78b66f55df04166ac1ba');
INSERT INTO `user_temp` VALUES (52, '192.168.0.10', '15201686455', 2, 20211203, 1638495157, 'd1e1ea61e4f10c79e6da98ffd121659e');
INSERT INTO `user_temp` VALUES (53, '192.168.0.10', '15203686455', 1, 20211203, 1638496776, '78fb017c37e88c00deb3c380849c224c');
INSERT INTO `user_temp` VALUES (54, '192.168.0.10', '15201226455', 1, 20211203, 1638499888, '58f6c083c6de50552c3acdfed04a7743');
INSERT INTO `user_temp` VALUES (55, '::1', '15201686411', 1, 20211207, 1638843421, 'f5cc940bf60f94f84b46d7330d1d0177');
INSERT INTO `user_temp` VALUES (56, '::1', '15201686412', 1, 20211207, 1638849363, 'dfdeca96f812e436dd107ecf56587887');
INSERT INTO `user_temp` VALUES (57, '::1', '15201686415', 1, 20211207, 1638849510, '925e3e8d659c22e07b8bf9463451ebb7');
INSERT INTO `user_temp` VALUES (58, '::1', '15201686422', 1, 20211207, 1638849637, '9cdcbf8836d15fb391420b03215a8d7f');
INSERT INTO `user_temp` VALUES (59, '127.0.0.1', '15201686666', 1, 20211207, 1638851744, '2f1131004db0846ce6ded1cf4b3d7f4d');
INSERT INTO `user_temp` VALUES (60, '::1', '15201686466', 1, 20211217, 1639708317, '1beaf204e59e9414773d57f0092eb46d');
INSERT INTO `user_temp` VALUES (61, '::1', '12345678910', 1, 20230109, 1673230348, 'fd93c22b6d01b4ae7670de5a356b158f');

SET FOREIGN_KEY_CHECKS = 1;
