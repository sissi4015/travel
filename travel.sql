/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50528
 Source Host           : localhost:3306
 Source Schema         : travel

 Target Server Type    : MySQL
 Target Server Version : 50528
 File Encoding         : 65001

 Date: 30/04/2022 12:49:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_cms_car
-- ----------------------------
DROP TABLE IF EXISTS `t_cms_car`;
CREATE TABLE `t_cms_car`  (
                              `ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
                              `ADD_USER_ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人ID',
                              `ADD_TIME` datetime NULL DEFAULT NULL COMMENT '添加时间',
                              `DELETE_STATUS` int(1) NULL DEFAULT 0 COMMENT '删除标志',
                              `MODIFY_USER_ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人ID',
                              `MODIFY_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
                              `TITLE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车票标题',
                              `START_PLACE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出发地点',
                              `END_PLACE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '到达地点',
                              `START_DATE_AND_TIME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出发日期跟时间',
                              `NEED_TIME` double NULL DEFAULT NULL COMMENT '需要时间',
                              `GATHER_PLACE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上车集中地',
                              `TYPE` int(1) NULL DEFAULT NULL COMMENT '车的类型，0是飞机，1是火车，2是汽车',
                              `IMG_URL` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
                              `STATE` int(1) NULL DEFAULT NULL,
                              `REMARK` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
                              `PRICE` double NULL DEFAULT NULL,
                              PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_cms_car
-- ----------------------------
INSERT INTO `t_cms_car` VALUES ('184bbb8db4c74d2ba81f428a1b6031ad', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '新会——深圳', '新会', '深圳', '2021-03-15 00:00:00', 4, '新会客运站', 2, '/car/汽车票.jpg', 1, '请准时到达上车地点，过时不候，谢谢。', 80);
INSERT INTO `t_cms_car` VALUES ('25a230c1b5114b0a996bff7fdb70b926', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '北京——上海', '北京', '上海', '2021-03-15 00:00:00', 4, '公园', 2, '/car/汽车票.jpg', 1, '请准时到达上车地点，过时不候，谢谢。', 444);
INSERT INTO `t_cms_car` VALUES ('3269d0ccbe954a839fa6d9cab3bb9614', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '新会——广州', '新会', '广州', '2021-03-15 00:00:00', 2, '红歌会', 2, '/car/汽车票.jpg', 1, '请准时到达上车地点，过时不候，谢谢。', 55);
INSERT INTO `t_cms_car` VALUES ('38b2cf2f4ff74622b993b6111c926a10', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '广州——茂名', '广州', '茂名', '2021-03-15 00:00:00', 6.5, '广州南站', 1, '/car/火车票.jpg', 1, '请准时到达上车地点，过时不候，谢谢。', 65);
INSERT INTO `t_cms_car` VALUES ('4059961fbc7f41a1a02efa04f1ad0b12', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '广州——青岛', '广州', '青岛', '2021-03-15 00:00:00', 3.5, '白云机场', 0, '/car/机票.jpg', 1, '请准时到达上车地点，过时不候，谢谢。', 500);
INSERT INTO `t_cms_car` VALUES ('405b4dd3486a46ee91e599a8c4c4eeb9', NULL, '2021-03-14 00:00:00', 0, NULL, '2021-03-16 12:52:23', '深圳——北京', '深圳', '北京', '2021-03-15', 6, '深圳机场', 0, '/static/images/ftgpic1.png', 1, '请准时到达上车地点，过时不候，谢谢。', 1200);
INSERT INTO `t_cms_car` VALUES ('460b2890a7ae4364ae5c4258b14ecfb0', NULL, '2021-03-14 00:00:00', 0, NULL, '2021-03-16 12:52:42', '广州——上海', '广州', '上海', '2021-03-15', 2, '越秀公园', 2, '/static/images/ftgpic2.png', 1, '请准时到达上车地点，过时不候，谢谢。', 200);
INSERT INTO `t_cms_car` VALUES ('547eb570b4f34f00a41c0c55d9a7b3bb', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '是的', '是的', '上海', '2021-03-15 00:00:00', 0, '阿萨德啊', 0, '/car/1553070811(1).jpg', 1, '是的按时', 0);
INSERT INTO `t_cms_car` VALUES ('5997f155e60343259c7d2aba90d32800', NULL, '2021-03-14 00:00:00', 0, NULL, '2021-03-14 00:00:00', '北京——广州', '北京', '广州', '2021-03-15 00:00:00', 2, '北京机场', 0, '/static/images/ftgpic3.png', 1, '请准时到达上车地点，过时不候，谢谢。', 1000);
INSERT INTO `t_cms_car` VALUES ('67b8768090ab46828e03af835a381e7b', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '的', '的', '的', '2021-03-15 00:00:00', 0, '的', 0, NULL, 0, '的', 0);
INSERT INTO `t_cms_car` VALUES ('70841b69c5c04487988ff2e2681e890c', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '广州——新会', '广州', '新会', '2021-03-15 00:00:00', 1.5, '天河客运站', 2, '/car/汽车票.jpg', 0, '请准时到达上车地点，过时不候，谢谢。', 50);
INSERT INTO `t_cms_car` VALUES ('7da78ea8466840fb9a5d180b1e5c1f65', NULL, '2021-03-14 00:00:00', 0, NULL, '2021-03-14 00:00:00', '广州——长沙', '广州', '长沙', '2021-03-15 00:00:00', 555, '广州火车东站', 1, '/static/images/ftgpic4.png', 1, '请准时到达上车地点，过时不候，谢谢。', 300);
INSERT INTO `t_cms_car` VALUES ('a23cc624a0a9427dbb9d61f9e3168e31', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '广州——河源', '广州', '河源', '2021-03-15 00:00:00', 3.5, '从化汽车站', 2, '/car/汽车票.jpg', 2, '请准时到达上车地点，过时不候，谢谢。', 123);
INSERT INTO `t_cms_car` VALUES ('ae794e3e128249979f5c5b8460649f8c', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '桂林——广州', '桂林', '广州', '2021-03-15 00:00:00', 3.5, '阳朔火车站', 1, '/car/火车票.jpg', 1, '请准时到达上车地点，过时不候，谢谢。', 200);
INSERT INTO `t_cms_car` VALUES ('ffed110b8bba44868a37eaaddfb3222d', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '北京——江门', '北京', '江门', '2021-03-15 00:00:00', 0, '长城', 2, '/car/汽车票.jpg', 1, '请准时到达上车地点，过时不候，谢谢。', 1500);

-- ----------------------------
-- Table structure for t_cms_hotel
-- ----------------------------
DROP TABLE IF EXISTS `t_cms_hotel`;
CREATE TABLE `t_cms_hotel`  (
                                `ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
                                `ADD_USER_ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '添加人ID',
                                `ADD_TIME` datetime NULL DEFAULT NULL COMMENT '添加时间',
                                `DELETE_STATUS` int(1) NULL DEFAULT 0 COMMENT '删除标志',
                                `MODIFY_USER_ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '修改人ID',
                                `MODIFY_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
                                `HOTEL_NAME` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '酒店名称',
                                `HOTEL_INTRO` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '酒店简介',
                                `HOTEL_STAR` int(1) NULL DEFAULT NULL COMMENT '酒店星级',
                                `LINK_PHONE` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '联系方式',
                                `ADDRESS` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '地址',
                                `STATE` int(1) NULL DEFAULT NULL COMMENT '状态',
                                `IMG_URL` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
                                `PRICE` double NULL DEFAULT NULL,
                                PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_cms_hotel
-- ----------------------------
INSERT INTO `t_cms_hotel` VALUES ('062606e877ae4c408e33be35a133f2ac', NULL, '2020-11-25 00:30:58', 1, NULL, '2020-11-25 11:09:24', '洲际酒店', '洲际酒店集团InterContinental Hotels Group PLC (IHG)是一个全球化的酒店集团，在全球100多个国家和地区经营和特许经营着超过4,400家酒店，超过660,000间客房。\r\n“洲际”旗下的酒店品牌有洲际酒店及度假村（InterContinental Hotels & Resorts），假日酒店及假日度假酒店（Holiday Inn），皇冠假日酒店（Crowne Plaza Hotels），智选假日酒店（Holiday Inn Express），英迪格酒店(Indigo) 。\r\n洲际集团成立于1777年，是目前全球最大及网络分布最广的专业酒店管理集团，拥有洲际、皇冠假日、假日酒店等多个国际知名酒店品牌和超过60年国际酒店管理经验。同时洲际酒店集团也是世界上客房拥有量最大（高达650,000间）、跨国经营范围最广，分布将近100个国家，并且在中国接管酒店最多的超级酒店集团。包括中国大陆25个省、区、市。2018年12月，世界品牌实验室发布《2018世界品牌500强》榜单，洲际酒店排名第456。', 5, '0750-6699148', '英国', 1, '/static/images/fd01.jpg', 100);
INSERT INTO `t_cms_hotel` VALUES ('0e76ee3588f64b9eb4d6dfdcbe8fd58a', NULL, NULL, 1, NULL, NULL, '1', '1', 4, '1', '11', 0, '/static/images/fd01.jpg', 10);
INSERT INTO `t_cms_hotel` VALUES ('1b5e9f65339b481c821b642cd1200784', NULL, '2020-11-25 00:31:06', 1, NULL, '2020-11-25 02:15:26', '锦江之星', '锦江之星是国内知名的快捷酒店品牌，创立于1996年。\r\n创立至今，旗下各品牌酒店总数已超1000多家，分布在全国31个省、直辖市，200多个城市。客房总数超100000间。\r\n锦江之星提供便捷的酒店快速预订、会员特价预订、地图查询预订等特色服务。目前旗下品牌有锦江之星快捷酒店、金广快捷酒店、百时快捷酒店、白玉兰、锦江都城等。', 3, '0750-6699148', '上海', 1, '/static/images/fd01.jpg', 50);
INSERT INTO `t_cms_hotel` VALUES ('1edf97fcd7364bd7b1ffcd5e09e771b0', NULL, '2020-11-25 00:31:21', 1, NULL, '2020-11-25 02:15:32', '如家酒店', '如家酒店是如家酒店集团旗下3大品牌之一，。\r\n如家酒店在全国300个城市拥有近2000家酒店。如家酒店多年获得中国金枕头奖“中国最佳经济型连锁酒店品牌”殊荣。2014年，如家酒店以4.2亿美元的品牌价值入选中国品牌100强。\r\n2016年4月4日，首旅酒店集团对如家酒店的私有化购买交易已经完成交割。', 4, '0750-6699148', '北京', 1, '/static/images/fd01.jpg', 20);
INSERT INTO `t_cms_hotel` VALUES ('3c7b4f25de2d4c34b8ebe4620da875be', NULL, '2020-11-25 11:47:36', 1, NULL, '2020-11-25 09:25:14', '凤凰酒店', '酒店', 5, '0750-6699148', '美国', 1, '/static/images/fd01.jpg', 55);
INSERT INTO `t_cms_hotel` VALUES ('3e64e865412f4734ada9f2ff7749f6ca', NULL, '2020-11-25 00:31:10', 1, NULL, '2020-11-25 01:58:45', '4444', '4', 3, '4', '4', 0, '/static/images/fd01.jpg', 20);
INSERT INTO `t_cms_hotel` VALUES ('4cd18710a1ce4dbebb79ca90d94892ff', NULL, '2020-11-25 00:31:15', 0, NULL, '2021-03-16 12:50:39', '最佳西方财富酒店', '最佳西方财富酒店是全球最大酒店连锁机构——美国最佳西方国际集团在福州地区的连锁酒店，是一家新装修开业的商务型酒店。坐落于福州市商务中心繁华路段的五四路与华林路交叉处。毗邻省委、省政府机关，信步即到温泉公园和福州国际会展中心，交通十分便利。拥有各类风格的客房，配有国际化标准的设施；设有无烟客房，无障碍直通房、国际大使套房等各类个性房。', 4, '0750-6699148', '福州鼓楼区华林路220号', 1, '/static/images/fd03.jpg', 50);
INSERT INTO `t_cms_hotel` VALUES ('5dccfee2370245eca2e471de6f05d6bb', NULL, '2020-11-25 00:31:25', 1, NULL, '2020-11-25 04:27:02', '北京国际饭店', '精品国际饭店公司是世界排名第二的饭店特许经营公司。精品最早起源于信誉良好的品质客栈（Quality Inn）连锁集团，这是一家以中等价格一贯的高质量服务的饭店业先驱。1981年，随着舒适客栈（comfort Inns）的开设和发展，精品开始快速发展。在相继收购了Clarion、Rodeway Inn 和Econo Lodge 之后，精品又对Sleep Inn 和MainStay Suites进行了革命性的改造，使自身的业务范围得到全面拓展，从经济型消费到高消费，从基本服务到高档次的娱乐享受，各种服务无所不包，能够满足社会各阶层人士的需求。', 5, '0750-6699148', '北京', 2, '/static/images/fd01.jpg', 50);
INSERT INTO `t_cms_hotel` VALUES ('656a32f762344ec1a5780f6d31df5598', NULL, '2020-11-25 00:31:29', 1, NULL, '2020-11-25 02:15:59', '喜达屋国际酒店', '喜达屋集团是饭店及娱乐休闲集团之一。1998年，喜达屋收购了威斯汀饭店度假村国际集团（Westin Hotels&Resorts Worldwide,Inc)和它的几个分公司（包括威斯汀和威斯汀联合公司），还收购了美国国际电话电报公司，并取名为Sheraton Holding Corporation;喜达屋集团运用直接或间接由其子公司管理的方法来经营饭店和娱乐休闲业务。\r\n2018年12月，世界品牌实验室发布《2018世界品牌500强》榜单，喜达屋排名第354。', 4, '0750-6699148', '深圳', 1, '/static/images/fd01.jpg', 50);
INSERT INTO `t_cms_hotel` VALUES ('7aceaa11e96a40a5b485be13898c2ff6', NULL, '2020-11-25 00:31:34', 1, NULL, '2020-11-25 02:16:08', '7天连锁酒店', '7天连锁酒店集团（7 Days Group Holdings Limited），自2005年成立以来，经过快速发展，分店总数已经超过2000家，覆盖全国300座城市，成为中国经济型酒店行业的第一品牌。 \r\n2014年，7天品牌家族正式增加的两位新成员：7天优品和7天阳光。现7天品牌拥有：①定位于商务时尚的高端经济型酒店产品“7天优品”，②定位为都市时尚的经济型酒店产品“7天阳光”，③以方便快捷倍受消费者欢迎的“7天酒店”。三大酒店产品共同诠释“年轻的选择”这一核心价值主张。', 4, '0750-6699148', '新会', 1, '/static/images/fd01.jpg', 80);
INSERT INTO `t_cms_hotel` VALUES ('8ee4337371654daf9879ba74c2da2141', NULL, '2020-11-25 00:31:37', 0, NULL, '2021-03-16 12:50:34', '汉高精品酒店', '圣达特Cendant集团是世界最大的饭店特许经营者、世界最大的假期所有权组织、世界最大的汽车租赁经营者和全世界旅行信息处理服务的主要提供者之一。此外，圣达特集团还是全球最大的服务商、世界房地产业的佼佼者，是世界50强之一。', 5, '0750-6699148', '美国', 1, '/static/images/fd02.jpg', 90);
INSERT INTO `t_cms_hotel` VALUES ('a60f836fda0d44f1a3c6d04b650920cf', NULL, NULL, 1, NULL, NULL, '1', '1', 2, '1', '11', 0, '/static/images/fd01.jpg', 70);
INSERT INTO `t_cms_hotel` VALUES ('ad3678fe66a1429fb40d1aa3d1c5fed5', NULL, '2020-11-25 01:27:47', 1, NULL, NULL, 'd', 'd', 2, 'd', 'd', 0, '/static/images/fd01.jpg', 0);
INSERT INTO `t_cms_hotel` VALUES ('b6f0795613954bc2a2c1fd32d31de79d', NULL, '2020-11-25 00:31:42', 0, NULL, '2021-03-16 12:50:29', '杭州新延安饭店', '杭州新延安饭店位于杭城商业、文化、金融、交通中心--武林广场西南侧，毗邻杭州大厦、银泰等各大商场及特色街之一的“武林路女装一条街”， 距美丽的西湖步行仅10分钟的路程，距萧山国际机场30分钟车程，交通便利。饭店拥有商务房、标准房、标准大床房及无烟房等共 97 间，房间布置温馨、简洁，并配有宽带上网。饭店拥有多媒体会议室两间，设施齐全。饭店餐厅为百年老店知味观。', 3, '0898-00223373', '下城区延安路直戒坛寺巷20号', 1, '/static/images/fd04.jpg', 700);
INSERT INTO `t_cms_hotel` VALUES ('d3877179665c43c89df8e02fe5a992af', NULL, '2020-11-25 00:31:47', 1, NULL, '2020-11-25 02:16:36', '凯悦Hyatt酒店集团', '凯悦酒店集团（Hyatt Hotels Corporation），总部位于美国芝加哥，是一家酒店集团。凯悦集团拥有50多年的历史。\r\n凯悦酒店集团在世界各地管理、特许经营、拥有和开发凯悦品牌酒店、度假村、住宅和度假性产业。截至2013年9月30日为止，其在全球品牌产业已达535项。', 4, '0750-6699148', '美国', 1, '/static/images/fd05.jpg', 60);
INSERT INTO `t_cms_hotel` VALUES ('e7165d1676e84a5aabb77f6b6944182a', NULL, '2020-11-25 00:31:54', 1, NULL, '2020-11-25 02:16:47', '西安喜来登大酒店', '西安喜来登大酒店位于西安市西郊，靠近西高新开发区，酒店距市中心10分钟车程，属于喜来登集团酒店。面积达1200平方米的多功能大宴会厅可容纳10至1000位客人。', 3, '0750-6699148', '西安', 1, '/static/images/fd01.jpg', 680);
INSERT INTO `t_cms_hotel` VALUES ('f587e0f31172462a99626d8857974c04', NULL, '2020-11-25 00:31:59', 1, NULL, '2020-11-25 02:16:55', '广州嘉逸国际酒店', '广州嘉逸国际酒店是广州嘉裕集团旗下第二间连锁酒店，按五星级标准设计和管理的涉外商务型酒店。酒店位于天河区商住繁华路段：天河北路。 酒店楼高20层，拥有251间各类客房，包括行政楼层、女士楼层、非吸烟楼层均可随时任意感受宽带信息的快感；8间多功能宴会（会议）中心、裕景轩中餐厅让您品尝地道的高档粤菜。', 4, '0750-6699148', '广州', 1, '/static/images/fd01.jpg', 80);

-- ----------------------------
-- Table structure for t_cms_insurance
-- ----------------------------
DROP TABLE IF EXISTS `t_cms_insurance`;
CREATE TABLE `t_cms_insurance`  (
                                    `ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                    `ADD_USER_ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                    `ADD_TIME` datetime NULL DEFAULT NULL,
                                    `DELETE_STATUS` int(1) NULL DEFAULT 0,
                                    `MODIFY_USER_ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                    `MODIFY_TIME` datetime NULL DEFAULT NULL,
                                    `TITLE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保险公司',
                                    `INSURANCE_COMPANY` int(1) NULL DEFAULT NULL,
                                    `PRICE` double NULL DEFAULT NULL,
                                    `TYPE` int(1) NULL DEFAULT NULL,
                                    `RESUME` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                    `STATE` int(1) NULL DEFAULT NULL,
                                    `IMG_URL` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                    PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_cms_insurance
-- ----------------------------
INSERT INTO `t_cms_insurance` VALUES ('281cd2c481294affbf3e687140f92d0f', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '安抚', 0, 55, 3, ' 啊大', 2, '/insurance/banner01.jpg');
INSERT INTO `t_cms_insurance` VALUES ('2f889f65c6f24115abace4283f7b90ad', NULL, '2021-03-14 00:00:00', 0, NULL, '2021-03-16 12:53:06', '自驾旅游保险', 0, 100, 0, '提供意外伤害、意外医疗费用补偿等5项保障', 1, '/static/images/bx1.jpg');
INSERT INTO `t_cms_insurance` VALUES ('6cf0eefd7153459b9d0114995cf97a64', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '港澳台旅游保险', 0, 200, 2, '提供意外伤害、意外医疗费用补偿等5项保障1', 1, '/insurance/中国平安.jpg');
INSERT INTO `t_cms_insurance` VALUES ('8717579939444137a82f7cd4a1bd7653', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '的', 0, 0, 0, '但是', 0, NULL);
INSERT INTO `t_cms_insurance` VALUES ('9cd07d0d6876438b9912c012a92d3271', NULL, '2021-03-14 00:00:00', 0, NULL, '2021-03-16 12:53:17', '港澳台旅游保险', 0, 55, 2, '55', 0, '/static/images/bx1.jpg');
INSERT INTO `t_cms_insurance` VALUES ('b0b3ea244a2a44e2b8d135e4b700cc0d', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '高原旅游保险', 1, 100, 1, '提供意外伤害、意外医疗费用补偿等5项保障', 1, '/insurance/中国人寿.jpg');
INSERT INTO `t_cms_insurance` VALUES ('edd08f5dec134c6f9f2d8946573d5def', NULL, '2021-03-14 00:00:00', 0, NULL, '2021-03-16 12:53:28', '国内自助游保险', 0, 50, 3, '趁风使柁', 2, '/static/images/bx1.jpg');
INSERT INTO `t_cms_insurance` VALUES ('f0eca0167c474bd7a39e15d80714858f', NULL, '2021-03-14 00:00:00', 0, NULL, '2021-03-16 12:53:45', '国内自助游保险', 1, 55, 3, '提供意外伤害、意外医疗费用补偿等5项保障', 1, '/static/images/bx1.jpg');

-- ----------------------------
-- Table structure for t_cms_message
-- ----------------------------
DROP TABLE IF EXISTS `t_cms_message`;
CREATE TABLE `t_cms_message`  (
                                  `ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
                                  `ADD_USER_ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '添加人ID',
                                  `ADD_TIME` datetime NULL DEFAULT NULL COMMENT '添加时间',
                                  `DELETE_STATUS` int(1) NULL DEFAULT 0 COMMENT '删除标志',
                                  `MODIFY_USER_ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '修改人ID',
                                  `MODIFY_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
                                  `USER_ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '用户ID',
                                  `USER_NAME` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
                                  `NAME` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '真实姓名',
                                  `TITLE` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '标题',
                                  `CONTENT` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '内容',
                                  `STATE` int(1) NULL DEFAULT NULL COMMENT '状态',
                                  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_cms_message
-- ----------------------------
INSERT INTO `t_cms_message` VALUES ('d8b0402276e8487483a316f058f8aaf6', NULL, '2021-03-15 19:10:55', 0, NULL, NULL, 'f89648d5597d47acac133610d534c9e1', 'user', '哈哈哈', '疫情', 'aa', 1);

-- ----------------------------
-- Table structure for t_cms_pj_scenic
-- ----------------------------
DROP TABLE IF EXISTS `t_cms_pj_scenic`;
CREATE TABLE `t_cms_pj_scenic`  (
                                    `id` int(11) NOT NULL AUTO_INCREMENT,
                                    `pjyh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                    `pjcp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                    `pjdj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                    `pjnr` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
                                    `pjtime` datetime NULL DEFAULT NULL,
                                    `pjbz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                    `pjcpimgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                    `pjcpname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                    `pjcptype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
                                    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_cms_pj_scenic
-- ----------------------------
INSERT INTO `t_cms_pj_scenic` VALUES (10, '8f13fd561f584e6d9b8f223d478d521f', 'b6f0795613954bc2a2c1fd32d31de79d', '好评', '<p>点个赞&nbsp;<img src=\"http://img.baidu.com/hi/face/i_f48.gif\"/></p>', '2021-03-15 20:59:52', NULL, '/hotel/jd1.jpg', '杭州新延安饭店', '2');
INSERT INTO `t_cms_pj_scenic` VALUES (11, '8f13fd561f584e6d9b8f223d478d521f', '84002eeffef74cb991d7d58ab042509a', '好评', '<p>666<img src=\"http://img.baidu.com/hi/face/i_f48.gif\"/></p>', '2021-03-15 21:22:16', NULL, '/scenicSpot/tt1.jpg', '南京玄武湖', '1');
INSERT INTO `t_cms_pj_scenic` VALUES (12, '8f13fd561f584e6d9b8f223d478d521f', 'b6f0795613954bc2a2c1fd32d31de79d', '好评', '<p>这个酒店非常不错啊</p>', '2021-03-16 13:12:35', NULL, '/hotel/jd1.jpg', '杭州新延安饭店', '2');

-- ----------------------------
-- Table structure for t_cms_scenic_spot
-- ----------------------------
DROP TABLE IF EXISTS `t_cms_scenic_spot`;
CREATE TABLE `t_cms_scenic_spot`  (
                                      `ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
                                      `ADD_USER_ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '添加人ID',
                                      `ADD_TIME` datetime NULL DEFAULT NULL COMMENT '添加时间',
                                      `DELETE_STATUS` int(1) NULL DEFAULT 0 COMMENT '删除标志',
                                      `MODIFY_USER_ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '修改人ID',
                                      `MODIFY_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
                                      `SPOT_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '景点名称',
                                      `SPOT_INTRO` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '景点简介',
                                      `SPOT_STAR` int(1) NULL DEFAULT NULL COMMENT '景点星级',
                                      `SPOT_ADDRESS` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '景点地址',
                                      `OPEN_TIME` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '开放时间',
                                      `TICKETS_MESSAGE` double NULL DEFAULT NULL COMMENT '门票',
                                      `STATE` int(1) NULL DEFAULT NULL COMMENT '状态',
                                      `IMG_URL` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
                                      PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_cms_scenic_spot
-- ----------------------------
INSERT INTO `t_cms_scenic_spot` VALUES ('1b268ef85b39454bbb3659417f420d83', NULL, '2021-03-14 00:00:00', 0, NULL, '2021-03-16 12:49:32', '肇庆鼎湖山', '鼎湖山位于广东省肇庆市境东北部，距肇庆市区18公里，由10多座山组成，总面积11.33平方公里。主峰海拔1000米，是珠江三角洲地区的最高峰。鼎湖山以其是集风景旅游、科学研究、宗教朝拜于一体的胜地而被称为岭南四大名山之首  。\r\n鼎湖山的得名，众说纷纭，有说是因山顶有湖，四时不涸，故名顶湖；有说是因中峰圆秀，山麓诸峰三歧, 远望有如鼎峙，故名鼎湖；又有民间传说黄帝曾赐鼎于此，故习惯称作鼎湖山。 \r\n1979年鼎湖山是我国第一个国家级自然保护区，是我国首批世界 生物圈保护，是联合国教科文组织人与生物圈（MAB)定位研究站，被誉为\"活的自然博物馆\"。其负离子含量为全国之最享有\"天然氧吧\"之美称。', 4, '肇庆鼎湖', '8:00-17:00', 20, 1, '/static/images/jd_img01.jpg');
INSERT INTO `t_cms_scenic_spot` VALUES ('276cbd6545594ddcb22f3e129ba9bf12', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '新会古兜温泉', '新会古兜温泉小镇，位于新会西南端，靠近珠海、澳门，毗邻澳门、香港，距港珠澳大桥仅60分钟，距珠海机场仅45分钟，距广东西部沿海高速公路崖南出入口10分钟。\r\n古兜温泉小镇温泉谷，独有经专家评定古兜山温泉与我国古代名泉华清池同性一类的温泉水质，水体澄明清澈，美容养生效果毋容置疑。谷内飞瀑流泉，水木清华，碧翠嫣然。白天云蒸霞，夜晚星辉相映，恍似人间仙境，世外桃源。更有大唐宫殿、南欧风情、东瀛风吕等多种室内外汤池选择，各种康乐设施、餐饮住宿、会议办公设施等。甘泉泻玉，静影沉碧；竹林烧烤，东瀛洗浴，唐宫梦寝，法国美食；沙滩木屋，玫瑰别墅，晨起听泉，一川风月。处处有景，时时有花。', 5, '江门新会', '8:00-17:00', 10, 1, '/scenicSpot/古兜温泉.jpg');
INSERT INTO `t_cms_scenic_spot` VALUES ('2a90650529824d848f47ec283cff158b', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '1', '1', 3, '1', '1', 0, 1, NULL);
INSERT INTO `t_cms_scenic_spot` VALUES ('34fc91e8ba6b4c6ab19c1545ed41cde6', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '北京故宫', '北京故宫是中国明清两代的皇家宫殿，旧称为紫禁城，位于北京中轴线的中心，是中国古代宫廷建筑之精华。北京故宫以三大殿为中心，占地面积72万平方米，建筑面积约15万平方米，有大小宫殿七十多座，房屋九千余间。是世界上现存规模最大、保存最为完整的木质结构古建筑之一。\r\n北京故宫于明成祖永乐四年（1406年）开始建设，以南京故宫为蓝本营建，到永乐十八年（1420年）建成。它是一座长方形城池，南北长961米，东西宽753米，四面围有高10米的城墙，城外有宽52米的护城河。紫禁城内的建筑分为外朝和内廷两部分。外朝的中心为太和殿、中和殿、保和殿，统称三大殿，是国家举行大典礼的地方。内廷的中心是乾清宫、交泰殿、坤宁宫，统称后三宫，是皇帝和皇后居住的正宫。\r\n北京故宫被誉为世界五大宫之首（北京故宫、法国凡尔赛宫、英国白金汉宫、美国白宫、俄罗斯克里姆林宫），是国家AAAAA级旅游景区， 1961年被列为第一批全国重点文物保护单位，1987年被列为世界文化遗产。', 4, '北京', '8:00-17:00', 50, 1, '/scenicSpot/故宫.jpeg');
INSERT INTO `t_cms_scenic_spot` VALUES ('395615c530b34beda1873bd85f3d71a1', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', 'sd ', 'd ', 2, 'd ', 'd ', 0, 0, NULL);
INSERT INTO `t_cms_scenic_spot` VALUES ('42795044df9a4e58abdeb7f2c67b3acf', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '杭州西湖', '西湖，位于浙江省杭州市西湖区龙井路1号，位于杭州市区西面，景区总面积49平方公里，汇水面积为21.22平方公里，湖面面积为6.38平方公里。\r\n西湖南、西、北三面环山，东邻城区，南部和钱塘江隔山相邻，湖中白堤、苏堤、杨公堤、赵公堤将湖面分割成若干水面。西湖地处中国东南丘陵边缘和亚热带北缘，年均太阳总幅射量在100-110千卡/平方厘米之间，日照时数1800-2100小时。西湖景区有100多处景点，有“西湖十景”和“新西湖十景”“三评西湖十景”等。西湖有国家重点文物保护单位5处、省级文物保护单位35处、市级文物保护单位25处，39处文物保护点和各类专题博物馆。\r\n2007年，西湖被评为“国家AAAAA级旅游景区”。', 4, '杭州', '8:00-17:00', 60, 1, '/scenicSpot/西湖.jpg');
INSERT INTO `t_cms_scenic_spot` VALUES ('4bbe29bbc99d4ddb8a57565f3e1a1143', NULL, '2021-03-14 00:00:00', 0, NULL, '2021-03-16 12:49:43', '珠穆朗玛峰', '珠穆朗玛峰（珠峰）是喜马拉雅山脉的主峰，同时是世界海拔最高的山峰，它位于中国与尼泊尔边境线上，北部在中国西藏定日县境内（西坡在定日县扎西宗乡，东坡在定日县曲当乡，有珠峰大本营），南部在尼泊尔境内，顶峰位于中国境内，是世界最高峰，也是中国跨越四个县的珠穆朗玛峰自然保护区和尼泊尔国家公园的中心所在。\r\n藏语中“珠穆”是女神的意思，“朗玛”是第三的意思。因为在珠穆朗玛峰的附近还有四座山峰，珠峰位居第三，所以被称为珠穆朗玛峰。\r\n珠穆朗玛峰有两个高度：登山者登上的是总体高度，尼泊尔等使用登山者采用的雪盖高（总高）8848米（29029英尺），2005年中国国家测绘局测量的岩面高（裸高即地质高度）为8844.43米，2010年起承认两种高度的测量数据。除了是海拔最高的山峰之外，它也是距离地心第五远的高峰。', 5, '西藏', '9:00-17:00', 666, 1, '/static/images/jd_img02.jpg');
INSERT INTO `t_cms_scenic_spot` VALUES ('81d34403c5e347749046909a2917df0f', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '5', '5', NULL, '5', '5', 5, 0, NULL);
INSERT INTO `t_cms_scenic_spot` VALUES ('84002eeffef74cb991d7d58ab042509a', NULL, '2021-03-14 00:00:00', 0, NULL, '2021-03-16 12:49:56', '南京玄武湖', '玄武湖，位于南京市玄武区，东枕紫金山，西靠明城墙，北邻南京站，是江南地区最大的城内公园，也是中国最大的皇家园林湖泊、仅存的江南皇家园林，被誉为“金陵明珠”，现为国家重点公园、国家AAAA级旅游景区。 \r\n玄武湖古名桑泊、后湖、北湖，是金陵四十八景之一，玄武湖距今已有两千三百年的人文历史，最早可追溯至先秦时期，六朝时期辟为皇家园林，明朝时为黄册库，均系皇家禁地，直至清末举办南洋劝业会时，两江总督下令开辟丰润门（今玄武门），为玄武湖公园之滥觞。\r\n玄武湖方圆近五里，分作五洲（环洲、樱洲、菱洲、梁洲、翠洲），洲洲堤桥相通，浑然一体，处处有山有水。宋人欧阳修曾写道“金陵莫美于后湖；钱塘莫美于西湖”，玄武湖为风景园林，亦为文化胜地，历代文人骚客，政要名流都曾在此留下身影，皆为后人传为美谈。', 3, '南京', '8:00-17:00', 70, 1, '/static/images/jd_img04.jpg');
INSERT INTO `t_cms_scenic_spot` VALUES ('a25bdc0bfc2c4cf99aec4c9339a277fe', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '颐和园', '颐和园，中国清朝时期皇家园林，前身为清漪园，坐落在北京西郊，距城区15公里，占地约290公顷，与圆明园毗邻。它是以昆明湖、万寿山为基址，以杭州西湖为蓝本，汲取江南园林的设计手法而建成的一座大型山水园林，也是保存最完整的一座皇家行宫御苑，被誉为“皇家园林博物馆”，也是国家重点旅游景点。\r\n清朝乾隆皇帝继位以前，在北京西郊一带，建起了四座大型皇家园林。乾隆十五年（1750年），乾隆皇帝为孝敬其母孝圣皇后动用448万两白银在这里改建为清漪园，形成了从现清华园到香山长达二十公里的皇家园林区。咸丰十年（1860年），清漪园被英法联军焚毁。光绪十四年（1888年）重建，改称颐和园，作消夏游乐地。光绪二十六年（1900年），颐和园又遭“八国联军”的破坏，珍宝被劫掠一空。清朝灭亡后，颐和园在军阀混战和国民党统治时期，又遭破坏。\r\n1961年3月4日，颐和园被公布为第一批全国重点文物保护单位，与同时公布的承德避暑山庄、拙政园、留园并称为中国四大名园，1998年11月被列入《世界遗产名录》。2007年5月8日，颐和园经国家旅游局正式批准为国家5A级旅游景区。 2009年，颐和园入选中国世界纪录协会中国现存最大的皇家园林  。', 4, '北京', '9:00-17:00', 99, 1, '/scenicSpot/1.jpg');
INSERT INTO `t_cms_scenic_spot` VALUES ('b6f0795613954bc2a2c1fd32d31de79d', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '桂林山水', '桂林山水是对桂林旅游资源的总称。 国家AAAAA级旅游景区，中国十大风景名胜之一，桂林山水是中国山水的代表，典型的喀斯特地形构成别具一格的桂林山水，桂林山水所指范围很广，项目繁多。桂林山水“山青、水秀、洞奇、石美\"，包括山、水、喀斯特岩洞、石刻等等，其境内的山水风光举世闻名，千百年来享有“桂林山水甲天下”的美誉。\r\n桂林市是世界著名的风景游览城市和中国历史文化名城，是“万年智慧圣地”   ，是中国陶器起源地之一，是目前世界上唯一具有三处万年古陶遗址（甑皮岩、大岩、庙岩）的城市，桂林甑皮岩发现的\"陶雏器\"填补世界陶器起源空白点。 \r\n“万年智慧”是桂林重量级文化名片，甑皮岩国家考古遗址公园是桂林向世界展现中华民族“万年智慧”的历史文化名片。 \r\n桂林拥有世界自然遗产桂林山水、世界灌溉遗产灵渠两大世界遗产。 \r\n2014年6月，第38届世界遗产大会上以桂林为首的中国南方喀斯特第二期 [6]  项目申遗成功，成为世界自然遗产，桂林山水荣登世界自然遗产名录  。\r\n2016年9月，中国社会科学院考古研究所、广西考古所等考古机构认为：桂林甑皮岩先民是具有高智商的智慧人，双料混炼技术是万年前人类的发明，桂林是万年人类智慧圣地。\r\n2017年6月，中国社会科学院考古研究所在桂林举行“万年智慧圣地”揭牌仪式，国家文物局、中国社会科学院考古研究所、广西文化厅等联合为桂林成为“万年智慧圣地”进行了揭牌。 \r\n2018年8月，桂林市兴安灵渠列入世界灌溉工程遗产名录，成为“世界灌溉工程遗产”。', 5, '广西桂林', '8:00-17:00', 30, 1, '/scenicSpot/桂林.jpg');
INSERT INTO `t_cms_scenic_spot` VALUES ('be4dec7fa88442eea5bb65a0ca48064e', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', 'ds ', 'd ', 3, 'd', 'd', 0, 0, NULL);
INSERT INTO `t_cms_scenic_spot` VALUES ('f921fc9db3584dbb96bd9686ff1136a0', NULL, '2021-03-14 00:00:00', 0, NULL, '2021-03-16 12:50:10', '西安兵马俑', '兵马俑，即秦始皇兵马俑，亦简称秦兵马俑或秦俑，第一批全国重点文物保护单位，第一批中国世界遗产，位于今陕西省西安市临潼区秦始皇陵以东1.5千米处的兵马俑坑内。 \r\n兵马俑是古代墓葬雕塑的一个类别。古代实行人殉，奴隶是奴隶主生前的附属品，奴隶主死后奴隶要作为殉葬品为奴隶主陪葬。兵马俑即制成兵马（战车、战马、士兵）形状的殉葬品。\r\n1961年3月4日，秦始皇陵被国务院公布为第一批全国重点文物保护单位 。1974年3月，兵马俑被发现；1987年，秦始皇陵及兵马俑坑被联合国教科文组织批准列入《世界遗产名录》，并被誉为“世界第八大奇迹”  ，先后有200多位外国元首和政府首脑参观访问，成为中国古代辉煌文明的一张金字名片，被誉为世界十大古墓稀世珍宝之一。', 4, '西安', '8:00-17:00', 100, 1, '/static/images/jd_img03.jpg');

-- ----------------------------
-- Table structure for t_cms_strategy
-- ----------------------------
DROP TABLE IF EXISTS `t_cms_strategy`;
CREATE TABLE `t_cms_strategy`  (
                                   `ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
                                   `ADD_USER_ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '添加人ID',
                                   `ADD_TIME` datetime NULL DEFAULT NULL COMMENT '添加时间',
                                   `DELETE_STATUS` int(1) NULL DEFAULT 0 COMMENT '删除标志',
                                   `MODIFY_USER_ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人ID',
                                   `MODIFY_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
                                   `IMG_URL` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'logo图片地址',
                                   `TITLE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主题',
                                   `RATING` int(1) NULL DEFAULT NULL COMMENT '等级',
                                   `SUMMARY` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
                                   `INTRO_URL` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容图片地址',
                                   `STATE` int(1) NULL DEFAULT NULL,
                                   PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_cms_strategy
-- ----------------------------
INSERT INTO `t_cms_strategy` VALUES ('0b3c5376085b44eda68db16940da6c08', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '/strategy/1.jpg', '测试', 2, '啊啊', NULL, 1);
INSERT INTO `t_cms_strategy` VALUES ('334730a5440849cb8602c13261084212', NULL, '2021-03-14 00:00:00', 0, NULL, '2021-03-16 12:55:46', '/static/images/l_img01.jpg', '从化一天游攻略', 4, '从化温泉走一波~~', '/static/images/l_img01.jpg', 1);
INSERT INTO `t_cms_strategy` VALUES ('4af22ebf1cff4fdaa44dcb3324c56113', NULL, '2021-03-14 00:00:00', 0, NULL, '2021-03-16 12:56:10', '/static/images/l_img02.jpg', '桂林攻略', 5, '桂林山水甲天下', '/static/images/l_img02.jpg', 1);
INSERT INTO `t_cms_strategy` VALUES ('4e4c797088a44c1f8cfa7ed0867dec5a', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '/strategy/攻略1.jpg', '海南四天游攻略', 5, '把三亚市区和热带雨林、海岛等主要景点全都玩遍', '/strategy/海南四天游.jpg', 1);
INSERT INTO `t_cms_strategy` VALUES ('76ae3bdf804b4021bd52e6b5fd20157d', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '/strategy/攻略2.jpg', '重庆三天游攻略', 3, '和你去山城重庆走一走~', '/strategy/重庆三天游.jpg', 1);
INSERT INTO `t_cms_strategy` VALUES ('797daa44515d4999bc7b34a8735c4061', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', NULL, '订单', 2, '的', NULL, 0);
INSERT INTO `t_cms_strategy` VALUES ('7f1b5f98005148f395ce50e24d88f2f5', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '/strategy/攻略3.jpg', '深圳西冲攻略', 2, '西冲冲浪~', '/strategy/深圳西冲.jpg', 1);
INSERT INTO `t_cms_strategy` VALUES ('a2a1f8254c7344e3a7c934b1ae5f86b9', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '/strategy/攻略3.jpg', '卢浮宫攻略', 3, '世界非物质遗产之一', '/strategy/1.jpg', 0);
INSERT INTO `t_cms_strategy` VALUES ('c08c04af6a1e4413925c1aef2c1c0c38', NULL, '2021-03-14 00:00:00', 0, NULL, '2021-03-16 12:56:24', '/static/images/l_img03.jpg', '莽山国家森林公园', 2, '一起去国家公园走走也不错~', '/static/images/l_img03.jpg', 1);
INSERT INTO `t_cms_strategy` VALUES ('d5d0cd70bd724b5fae4efdbdc8e29a14', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '/strategy/1.jpg', '1', 2, '啊啊', NULL, 1);
INSERT INTO `t_cms_strategy` VALUES ('f6c02458fed748b0b66dcbecd3bf5a86', NULL, '2021-03-14 00:00:00', 0, NULL, '2021-03-16 12:51:42', '/strategy/jd2.jpg', '杭州西湖攻略', 2, '著名景点', '/strategy/l2.jpg', 2);

-- ----------------------------
-- Table structure for t_cms_travel_route
-- ----------------------------
DROP TABLE IF EXISTS `t_cms_travel_route`;
CREATE TABLE `t_cms_travel_route`  (
                                       `ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
                                       `ADD_USER_ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '添加人ID',
                                       `ADD_TIME` datetime NULL DEFAULT NULL COMMENT '添加时间',
                                       `DELETE_STATUS` int(1) NULL DEFAULT 0 COMMENT '删除标志',
                                       `MODIFY_USER_ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '修改人ID',
                                       `MODIFY_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
                                       `TITLE` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '标题',
                                       `START_SITE` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '出发地点',
                                       `END_SITE` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '结束地点',
                                       `END_TIME` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '结束日期',
                                       `START_TIME` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '出团日期',
                                       `DAY` int(16) NULL DEFAULT NULL COMMENT '持续天数',
                                       `PRODUCT_CODE` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '产品编号',
                                       `PRICE` double NULL DEFAULT NULL COMMENT '价格',
                                       `STATE` int(1) NULL DEFAULT NULL COMMENT '状态',
                                       `IMG_URL` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
                                       `INTRO` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
                                       PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_cms_travel_route
-- ----------------------------
INSERT INTO `t_cms_travel_route` VALUES ('01f0dc62404348cf9d287a91323858bf', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '1', '2021-03-15 00:00:00', '12', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 0, '1', 0, 0, NULL, NULL);
INSERT INTO `t_cms_travel_route` VALUES ('0fb3b4353664436a8a73fe7d371781db', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '1', '2021-03-15 00:00:00', '1', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 1, '1', 0, 1, NULL, NULL);
INSERT INTO `t_cms_travel_route` VALUES ('138faf735e86402cb462b2ad119d7787', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '5', '2021-03-15 00:00:00', '5', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 5, '5', 0, 1, NULL, NULL);
INSERT INTO `t_cms_travel_route` VALUES ('1a62336920284485a0db9d9482163c92', NULL, '2021-03-14 00:00:00', 0, NULL, '2021-03-16 12:45:21', '厦门——江门', '厦门', '江门', '2021-03-18', '2021-03-15', NULL, NULL, 300, 1, '/static/images/ftgpic1.png', '白沙祠——圭峰山——开平碉楼');
INSERT INTO `t_cms_travel_route` VALUES ('1dc74d21b238445292e398b18d385719', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '1', '2021-03-15 00:00:00', '1', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 1, '2', 0, 0, NULL, NULL);
INSERT INTO `t_cms_travel_route` VALUES ('1ff6b91735604f81827e453c27e1edfc', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '啊', '2021-03-15 00:00:00', '1', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 1, '1', 0, 1, NULL, NULL);
INSERT INTO `t_cms_travel_route` VALUES ('29fa99c479784119a413ca354912a5a0', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '5', '2021-03-15 00:00:00', '5', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 5, '5', 0, 2, NULL, NULL);
INSERT INTO `t_cms_travel_route` VALUES ('2ff749165ad44d6f9075726e29e7c261', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '1', '2021-03-15 00:00:00', '1222', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 1, '1', 0, 1, NULL, NULL);
INSERT INTO `t_cms_travel_route` VALUES ('3d0599a6c6cb4ef7a360ed8ec4bac94b', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '北京——广州', '北京', '广州', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 5, '5', 999, 1, '/travelRoute/北京_广州.jpg', '珠江新城——珠江夜游——越秀公园');
INSERT INTO `t_cms_travel_route` VALUES ('45391d81c5c2485ca1e564b804a0891f', NULL, '2021-03-14 00:00:00', 0, NULL, '2021-03-16 12:45:56', '北京——江门', '北京', '江门', '2021-03-18', '2021-03-15', 14, NULL, 500, 1, '/static/images/ftgpic2.png', '圭峰山——开平碉楼——古兜温泉——崖门古炮台');
INSERT INTO `t_cms_travel_route` VALUES ('46fea4c3e5254bbc8d9803514eb123ac', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '1', '2021-03-15 00:00:00', '1', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 1, '1', 0, 0, NULL, NULL);
INSERT INTO `t_cms_travel_route` VALUES ('4e271f0831da4f018c49be8ee811812f', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '1', '2021-03-15 00:00:00', '1', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 1, '2', 0, 0, NULL, NULL);
INSERT INTO `t_cms_travel_route` VALUES ('4e2a4ddd9cd94da180483c983db2ee18', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '1', '2021-03-15 00:00:00', '1', '2021-03-18 00:00:00', '2021-03-15 00:00:00', -1, '1', 0, 0, NULL, NULL);
INSERT INTO `t_cms_travel_route` VALUES ('5003087d562f4f4088ce9a4fcd711f06', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '厦门——江门', '厦门', '江门', '2021-03-18 00:00:00', '2021-03-15 00:00:00', NULL, NULL, 300, 1, '/travelRoute/厦门_江门.jpg', '白沙祠——圭峰山——开平碉楼');
INSERT INTO `t_cms_travel_route` VALUES ('5503098c088846bd898352df84afd9c0', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '5', '2021-03-15 00:00:00', '5', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 5, '5', 0, 0, NULL, NULL);
INSERT INTO `t_cms_travel_route` VALUES ('5582d41629a34ebb8fb9ae6727f060f6', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '5', '2021-03-15 00:00:00', '5', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 5, '5', 0, 1, NULL, NULL);
INSERT INTO `t_cms_travel_route` VALUES ('71691d8a8ae34ae082a95946893eedf8', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '广州——桂林', '广州', '广西桂林', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 10, '1', 728, 1, '/travelRoute/广州_桂林.jpg', '龙脊梯田——银子岩——阳朔西街');
INSERT INTO `t_cms_travel_route` VALUES ('722e37f4f2ec4ef2984a0d9d34af81c7', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '测试', '2021-03-15 00:00:00', NULL, '2021-03-18 00:00:00', '2021-03-15 00:00:00', NULL, NULL, 55, 1, '/travelRoute/1.jpg', NULL);
INSERT INTO `t_cms_travel_route` VALUES ('74de6d5d268949428fed14badc68efad', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '广州——上海', '广州', '上海', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 5, '55', 588, 1, '/travelRoute/广州_上海.jpg', '东方明珠——静安寺——陆家嘴中央绿地');
INSERT INTO `t_cms_travel_route` VALUES ('75631eeb0dcb41b1aaec70f9b9902740', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '北京——新会', '北京', '新会', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 5, '5', 888, 2, NULL, '古兜温泉——崖门大桥——陈皮村');
INSERT INTO `t_cms_travel_route` VALUES ('76391321c3ba46c99e55d0162f89e976', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '5', '2021-03-15 00:00:00', '5', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 5, '5', 0, 0, NULL, NULL);
INSERT INTO `t_cms_travel_route` VALUES ('7dedbc78d5ac4ef5bf01215ac6008867', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '1', '2021-03-15 00:00:00', '1', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 1, '2', 0, 0, NULL, NULL);
INSERT INTO `t_cms_travel_route` VALUES ('7ea94e1a33c84f83b14fa23edf42e0da', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '1', '2021-03-15 00:00:00', '1', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 1, '2', 0, 0, NULL, NULL);
INSERT INTO `t_cms_travel_route` VALUES ('828be729ff864d36870820b012e3db6b', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '测试', '2021-03-15 00:00:00', '上广', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 15, '2', 0, 1, NULL, NULL);
INSERT INTO `t_cms_travel_route` VALUES ('8a7e4bb8bf7c4baa9e4b02dbebd18357', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '5', '2021-03-15 00:00:00', '5', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 5, '5', 0, 1, NULL, NULL);
INSERT INTO `t_cms_travel_route` VALUES ('9550cc8ef93e4d8e975ecc2b11cea9f0', NULL, '2021-03-14 00:00:00', 0, NULL, '2021-03-16 12:47:10', '广州——长沙', '广州', '长沙', '2021-03-18', '2021-03-15', NULL, NULL, 600, 1, '/static/images/ftgpic3.png', '橘子洲——岳麓山——凤凰古城');
INSERT INTO `t_cms_travel_route` VALUES ('95a5a2854c1640e0a87359f3c82a14da', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '1', '2021-03-15 00:00:00', '1', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 1, '2', 0, 0, NULL, NULL);
INSERT INTO `t_cms_travel_route` VALUES ('96f0b3169fb34b67b83c199083e0ab20', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '1', '2021-03-15 00:00:00', '1', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 1, '2', 0, 0, NULL, NULL);
INSERT INTO `t_cms_travel_route` VALUES ('98f92d6752964f7ca59dddee61a0c1a2', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '北京——上海', '北京', '上海', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 5, '5', 666, 1, '/travelRoute/北京_上海.jpg', '东方明珠——静安寺——陆家嘴中央绿地');
INSERT INTO `t_cms_travel_route` VALUES ('abfc2fd821e44f72a36962d0f6b3409f', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '1', '2021-03-15 00:00:00', '1', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 1, '2', 0, 0, NULL, NULL);
INSERT INTO `t_cms_travel_route` VALUES ('acc185f4abc44b128fe9e3af6c4d1f4a', NULL, '2021-03-14 00:00:00', 0, NULL, '2021-03-16 12:47:54', '大理——肇庆', '大理', '肇庆', '2021-03-18', '2021-03-15', NULL, NULL, 500, 1, '/static/images/ftgpic4.png', '鼎湖山——七星岩——盘龙峡——六祖寺');
INSERT INTO `t_cms_travel_route` VALUES ('c2eb944dfabf4367bcc6fee92fb0f3b0', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '11', '2021-03-15 00:00:00', '2', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 2, '2', 0, 0, NULL, NULL);
INSERT INTO `t_cms_travel_route` VALUES ('d35fdd7a1df84fecbb46702a795db4f5', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '1', '2021-03-15 00:00:00', '1', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 1, '2', 0, 0, NULL, NULL);
INSERT INTO `t_cms_travel_route` VALUES ('d6d509adbe8c46189da24b94661a512a', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '广州——重庆', '广州', '重庆', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 1, '1', 777, 1, '/travelRoute/广州_重庆.jpg', '洪崖洞——磁器口古镇——金佛山');
INSERT INTO `t_cms_travel_route` VALUES ('ddd715a1222c4da5ae475e61ee241b7a', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '5', '2021-03-15 00:00:00', '5', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 5, '5', 0, 1, NULL, NULL);
INSERT INTO `t_cms_travel_route` VALUES ('e4a84a651294478086e512f642490cbd', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '东莞——上海', '东莞', '上海', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 1, '1', 921, 1, '/travelRoute/东莞_上海.jpg', '东方明珠——静安寺——陆家嘴中央绿地');
INSERT INTO `t_cms_travel_route` VALUES ('e4de315fcf6d451eb1396e77d4a4c41f', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '上海——重庆', '上海', '重庆', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 1, '1', 222, 1, '/travelRoute/上海_重庆.jpg', '洪崖洞——磁器口古镇——金佛山');
INSERT INTO `t_cms_travel_route` VALUES ('f28a4996fa2d411ca1b13c152c5642a5', NULL, '2021-03-14 00:00:00', 1, NULL, '2021-03-14 00:00:00', '广州——肇庆', '广州', '肇庆', '2021-03-18 00:00:00', '2021-03-15 00:00:00', 5, '2', 168, 1, '/travelRoute/广州_肇庆.jpg', '鼎湖山——七星岩——盘龙峡——六祖寺');

-- ----------------------------
-- Table structure for t_pz_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `t_pz_admin_user`;
CREATE TABLE `t_pz_admin_user`  (
                                    `ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
                                    `ADD_USER_ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '添加人ID',
                                    `ADD_TIME` datetime NULL DEFAULT NULL COMMENT '添加时间',
                                    `DELETE_STATUS` int(1) NULL DEFAULT 0 COMMENT '删除标志',
                                    `MODIFY_USER_ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '修改人ID',
                                    `MODIFY_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
                                    `USER_NAME` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
                                    `PASSWORD` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
                                    `LINK_TEL` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '手机号码',
                                    `NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '真实姓名',
                                    `STATE` int(1) NULL DEFAULT NULL COMMENT '状态',
                                    PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_pz_admin_user
-- ----------------------------
INSERT INTO `t_pz_admin_user` VALUES ('b496894b89754a848e9b74ff66a05d44', NULL, '2021-03-15 13:55:36', 0, NULL, NULL, 'root', '123456', '18811111234', '王超', 1);
INSERT INTO `t_pz_admin_user` VALUES ('c1d378c40984457cac33d9f39a23afb0', NULL, '2021-03-15 21:00:52', 0, NULL, NULL, 'dada', '123456', '18236958452', '哒哒', 1);

-- ----------------------------
-- Table structure for t_pz_province
-- ----------------------------
DROP TABLE IF EXISTS `t_pz_province`;
CREATE TABLE `t_pz_province`  (
                                  `id` bigint(16) NOT NULL AUTO_INCREMENT COMMENT 'ID',
                                  `province` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '省份',
                                  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_pz_province
-- ----------------------------
INSERT INTO `t_pz_province` VALUES (1, '北京');
INSERT INTO `t_pz_province` VALUES (2, '天津');
INSERT INTO `t_pz_province` VALUES (3, '上海');
INSERT INTO `t_pz_province` VALUES (4, '重庆');
INSERT INTO `t_pz_province` VALUES (5, '河北');
INSERT INTO `t_pz_province` VALUES (6, '河南');
INSERT INTO `t_pz_province` VALUES (7, '云南');
INSERT INTO `t_pz_province` VALUES (8, '辽宁');
INSERT INTO `t_pz_province` VALUES (9, '黑龙江');
INSERT INTO `t_pz_province` VALUES (10, '湖南');
INSERT INTO `t_pz_province` VALUES (11, '安徽');
INSERT INTO `t_pz_province` VALUES (12, '山东');
INSERT INTO `t_pz_province` VALUES (13, '新疆');
INSERT INTO `t_pz_province` VALUES (14, '江苏');
INSERT INTO `t_pz_province` VALUES (15, '浙江');
INSERT INTO `t_pz_province` VALUES (16, '江西');
INSERT INTO `t_pz_province` VALUES (17, '湖北');
INSERT INTO `t_pz_province` VALUES (18, '广西');
INSERT INTO `t_pz_province` VALUES (19, '甘肃');
INSERT INTO `t_pz_province` VALUES (20, '山西');
INSERT INTO `t_pz_province` VALUES (21, '内蒙古');
INSERT INTO `t_pz_province` VALUES (22, '陕西');
INSERT INTO `t_pz_province` VALUES (23, '吉林');
INSERT INTO `t_pz_province` VALUES (24, '福建');
INSERT INTO `t_pz_province` VALUES (25, '贵州');
INSERT INTO `t_pz_province` VALUES (26, '广东');
INSERT INTO `t_pz_province` VALUES (27, '青海');
INSERT INTO `t_pz_province` VALUES (28, '西藏');
INSERT INTO `t_pz_province` VALUES (29, '四川');
INSERT INTO `t_pz_province` VALUES (30, '宁夏');
INSERT INTO `t_pz_province` VALUES (31, '海南');
INSERT INTO `t_pz_province` VALUES (32, '台湾');
INSERT INTO `t_pz_province` VALUES (33, '香港');
INSERT INTO `t_pz_province` VALUES (34, '澳门');

-- ----------------------------
-- Table structure for t_pz_user
-- ----------------------------
DROP TABLE IF EXISTS `t_pz_user`;
CREATE TABLE `t_pz_user`  (
                              `ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
                              `ADD_USER_ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '添加人ID',
                              `ADD_TIME` datetime NULL DEFAULT NULL COMMENT '添加时间',
                              `DELETE_STATUS` int(1) NULL DEFAULT 0 COMMENT '删除标志',
                              `MODIFY_USER_ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '修改人ID',
                              `MODIFY_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
                              `USER_NAME` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户名',
                              `PASSWORD` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
                              `LINK_TEL` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '手机号码',
                              `NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '真实姓名',
                              `IC_CODE` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '身份证',
                              `STATE` int(1) NULL DEFAULT 1 COMMENT '状态',
                              `PROVINCE` int(16) NULL DEFAULT NULL COMMENT '省份',
                              PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_pz_user
-- ----------------------------
INSERT INTO `t_pz_user` VALUES ('8f13fd561f584e6d9b8f223d478d521f', NULL, '2020-11-25 21:51:02', 0, NULL, '2021-03-15 17:03:12', 'dada', '123456', '18236984125', '哒哒', '410185196525847412', 1, 12);
INSERT INTO `t_pz_user` VALUES ('e0a9ae2253034bc2997eb1491e5790b6', NULL, '2020-11-28 19:13:10', 0, NULL, NULL, 'tfzg', '123456', '18236957412', '李虎', '410185199604230519', 1, 7);
INSERT INTO `t_pz_user` VALUES ('f89648d5597d47acac133610d534c9e1', NULL, '2019-03-15 10:09:06', 0, NULL, '2021-03-15 11:45:02', 'user', '123456', '13589403330', '哈哈哈', '44078219961001801X', 1, 26);

-- ----------------------------
-- Table structure for t_yw_order
-- ----------------------------
DROP TABLE IF EXISTS `t_yw_order`;
CREATE TABLE `t_yw_order`  (
                               `ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
                               `ADD_USER_ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '添加人ID',
                               `ADD_TIME` datetime NULL DEFAULT NULL COMMENT '添加时间',
                               `DELETE_STATUS` int(1) NULL DEFAULT 0 COMMENT '删除标志',
                               `MODIFY_USER_ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '修改人ID',
                               `MODIFY_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
                               `USER_ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '用户ID',
                               `USER_NAME` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
                               `PRODUCT_ID` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '产品ID',
                               `PRODUCT_NAME` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '产品名称',
                               `FEE` double NULL DEFAULT NULL COMMENT '订单费用',
                               `PRODUCT_TYPE` int(1) NULL DEFAULT NULL COMMENT '产品类型1：旅游2：酒店',
                               `STATE` int(1) NULL DEFAULT NULL COMMENT '状态',
                               `ORDER_CODE` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '订单编号',
                               `ORDER_TIME` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '订单日期',
                               `SETOFF_TIME` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '预定日期',
                               `LINK_TEL` varchar(46) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '联系电话',
                               `PEOPLE_COUNT` int(10) NULL DEFAULT NULL COMMENT '人数',
                               `REQUIREMENT` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '特殊要求',
                               `IC_CODE` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '身份证号码',
                               `IMG_URL` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
                               PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_yw_order
-- ----------------------------
INSERT INTO `t_yw_order` VALUES ('016f49f17f3343c6969c33ab6db4edeb', NULL, '2021-03-16 00:00:00', 0, NULL, '2021-03-16 00:00:00', '8f13fd561f584e6d9b8f223d478d521f', 'dada', '84002eeffef74cb991d7d58ab042509a', '南京玄武湖', 70, 1, 3, 'SCDAC7E', '2020-12-02', '8:00-17:00', '18236984125', NULL, '无', '410185196525847412', '/scenicSpot/tt1.jpg');
INSERT INTO `t_yw_order` VALUES ('2bf49a4a7fdc4613bce2ccc2d74ea91f', NULL, '2021-03-16 00:00:00', 0, NULL, '2021-03-16 00:00:00', '8f13fd561f584e6d9b8f223d478d521f', 'dada', '4cd18710a1ce4dbebb79ca90d94892ff', '最佳西方财富酒店', 50, 2, 3, 'O726278', '2020-12-02', '2020-12-02', '18236984125', 3, '无', '410185196525847412', '/hotel/jd1.jpg');
INSERT INTO `t_yw_order` VALUES ('37359099de664d3485bb7725330d144b', NULL, '2021-03-16 00:00:00', 0, NULL, '2021-03-16 00:00:00', 'e0a9ae2253034bc2997eb1491e5790b6', 'tfzg', '1b268ef85b39454bbb3659417f420d83', '肇庆鼎湖山', 20, 1, 1, 'S5D8F8B', '2020-11-28', '8:00-17:00', '18236957412', NULL, '无', '410185199604230519', '/scenicSpot/tt1.jpg');
INSERT INTO `t_yw_order` VALUES ('40627e9421ad45babb9a1c59996a2fd0', NULL, '2021-03-16 13:01:24', 0, NULL, NULL, '8f13fd561f584e6d9b8f223d478d521f', 'dada', '1b268ef85b39454bbb3659417f420d83', '肇庆鼎湖山', 20, 1, 0, 'SACA1E0', '2021-03-16', '8:00-17:00', '18236984125', NULL, '无', '410185196525847412', '/scenicSpot/jd1.jpg');
INSERT INTO `t_yw_order` VALUES ('4e50d398f39d4ac4ad0139fee029afcd', NULL, '2021-03-16 00:00:00', 0, NULL, '2021-03-16 00:00:00', '8f13fd561f584e6d9b8f223d478d521f', 'dada', '7da78ea8466840fb9a5d180b1e5c1f65', '广州——长沙', 300, 3, 1, 'O84C331', '2020-12-02', '2020-11-25', '18236984125', NULL, '无', '410185196525847412', '/car/jt2.jpg');
INSERT INTO `t_yw_order` VALUES ('4ed30c9b1fe44b9199a0c25b443409be', NULL, '2021-03-16 13:11:23', 0, NULL, '2021-03-16 13:12:35', '8f13fd561f584e6d9b8f223d478d521f', 'dada', 'b6f0795613954bc2a2c1fd32d31de79d', '杭州新延安饭店', 700, 2, 3, 'O913295', '2021-03-16', '2021-03-16', '18236984125', 2, '酒店卫生要干净', '410185196525847412', '/hotel/jd1.jpg');
INSERT INTO `t_yw_order` VALUES ('608c19ba9084476a818ecd0214ad34b4', NULL, '2021-03-16 00:00:00', 0, NULL, '2021-03-16 00:00:00', '8f13fd561f584e6d9b8f223d478d521f', 'dada', '8ee4337371654daf9879ba74c2da2141', '圣达特集团酒店', 90, 2, 1, 'O92A47E', '2020-12-02', '2020-12-02', '18236984125', 1, '无', '410185196525847412', '/hotel/jd1.jpg');
INSERT INTO `t_yw_order` VALUES ('657e8183f3a84510ba9729a0cb4c981c', NULL, '2021-03-16 00:00:00', 0, NULL, '2021-03-16 00:00:00', '8f13fd561f584e6d9b8f223d478d521f', 'dada', '4bbe29bbc99d4ddb8a57565f3e1a1143', '珠穆朗玛峰', 666, 1, 1, 'S4AA6F4', '2020-11-25', '9:00-17:00', '18236984125', NULL, '无', '410185196525847412', '/scenicSpot/1.jpg');
INSERT INTO `t_yw_order` VALUES ('78305cf51c714f9f8731ce4617023569', NULL, '2021-03-16 00:00:00', 0, NULL, '2021-03-16 00:00:00', '8f13fd561f584e6d9b8f223d478d521f', 'dada', '405b4dd3486a46ee91e599a8c4c4eeb9', '深圳——北京', 1200, 3, 2, 'O019AFA', '2020-12-02', '2020-11-25', '18236984125', NULL, '无', '410185196525847412', '/car/jt1.jpg');
INSERT INTO `t_yw_order` VALUES ('95e10ffe30dd4f8485f2abf1ddfabb79', NULL, '2021-03-16 00:00:00', 0, NULL, '2021-03-16 00:00:00', '8f13fd561f584e6d9b8f223d478d521f', 'dada', '7da78ea8466840fb9a5d180b1e5c1f65', '广州——长沙', 300, 3, 1, 'O7E44BD', '2020-11-30', '2020-11-25', '18236984125', NULL, '无', '410185196525847412', '/car/jt2.jpg');
INSERT INTO `t_yw_order` VALUES ('c3e84a77740a4e789a7bc3cb6963abe0', NULL, '2021-03-16 00:00:00', 0, NULL, '2021-03-16 00:00:00', '8f13fd561f584e6d9b8f223d478d521f', 'dada', 'f0eca0167c474bd7a39e15d80714858f', '国内自助游保险', 55, 4, 0, 'OAC2845', '2020-12-03', '2020-12-03', '18236984125', NULL, '无', '410185196525847412', '/insurance/lvbx1.png');
INSERT INTO `t_yw_order` VALUES ('de8e9b2e3c4b42d3878a77389e8ca8f3', NULL, '2021-03-16 00:00:00', 0, NULL, '2021-03-16 00:00:00', 'f89648d5597d47acac133610d534c9e1', 'user', '1a62336920284485a0db9d9482163c92', '厦门——江门', 300, 0, 1, 'OB70B1C', '2020-11-23', '2019-04-30', '13589403330', NULL, '无', '44078219961001801X', '/travelRoute/厦门_江门.jpg');
INSERT INTO `t_yw_order` VALUES ('fba3e5ad593f416e99f1d42fdce71686', NULL, '2021-03-16 00:00:00', 0, NULL, '2021-03-16 00:00:00', '8f13fd561f584e6d9b8f223d478d521f', 'dada', 'b6f0795613954bc2a2c1fd32d31de79d', '杭州新延安饭店', 700, 2, 3, 'OFA1008', '2020-12-02', '2020-12-02', '18236984125', 2, '暂无', '410185196525847412', '/hotel/jd1.jpg');

SET FOREIGN_KEY_CHECKS = 1;
