/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : jja1901javaweb_mls

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-05-09 10:26:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `addressId` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`addressId`),
  KEY `customerId` (`customerId`),
  CONSTRAINT `customerId` FOREIGN KEY (`customerId`) REFERENCES `customerinfo` (`customerId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('2', '5', '厦门市思明区望海路13号楼1309');
INSERT INTO `address` VALUES ('3', '6', '厦门市湖里区阳光路15号楼');
INSERT INTO `address` VALUES ('4', '6', '厦门市思明区望海路16号楼1309');
INSERT INTO `address` VALUES ('6', '4', '厦门市同安区祥平街道15号楼');
INSERT INTO `address` VALUES ('7', '5', '厦门市翔安区希望路69号楼');
INSERT INTO `address` VALUES ('10', '4', '龙岩市新罗区平安街999');
INSERT INTO `address` VALUES ('14', '7', '厦门市湖里区前埔路56');
INSERT INTO `address` VALUES ('15', '7', '厦门市思明区望海路16号楼1862');
INSERT INTO `address` VALUES ('16', '8', '厦门市思明区望海路15号楼');
INSERT INTO `address` VALUES ('17', '9', '厦门市思明区望海路14号楼1309');
INSERT INTO `address` VALUES ('18', '9', '厦门市湖里区望海路15号楼');
INSERT INTO `address` VALUES ('19', '10', '厦门市思明区开心路15号楼');
INSERT INTO `address` VALUES ('20', '11', '厦门市思明区祥和路15号楼');
INSERT INTO `address` VALUES ('21', '11', '厦门市海沧区西斯路15号楼');
INSERT INTO `address` VALUES ('22', '12', '厦门市思明区望海路15号楼');
INSERT INTO `address` VALUES ('23', '12', '厦门市思明区金尚路15号楼');
INSERT INTO `address` VALUES ('24', '13', '厦门市同安区阳翟村26号');
INSERT INTO `address` VALUES ('25', '14', '厦门市思明区莲花路15号楼');
INSERT INTO `address` VALUES ('26', '15', '厦门市思明区望海路15号楼');
INSERT INTO `address` VALUES ('27', '15', '厦门市思明区莲花路15号楼');
INSERT INTO `address` VALUES ('28', '16', '厦门市同安区祥平街道15号楼');
INSERT INTO `address` VALUES ('29', '17', '厦门市同安区祥平街道69号楼');
INSERT INTO `address` VALUES ('33', '4', '厦门市翔安区东亭街道45');
INSERT INTO `address` VALUES ('41', '10', '厦门市同安区金安88');
INSERT INTO `address` VALUES ('42', '10', '龙岩市新罗区西安街99');

-- ----------------------------
-- Table structure for admininfo
-- ----------------------------
DROP TABLE IF EXISTS `admininfo`;
CREATE TABLE `admininfo` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(50) NOT NULL,
  `adminPass` varchar(50) NOT NULL,
  `adminStyle` int(50) NOT NULL COMMENT '用户类型',
  `adminEmail` varchar(50) NOT NULL,
  PRIMARY KEY (`adminId`),
  KEY `adminStyle` (`adminStyle`),
  CONSTRAINT `admininfo_ibfk_1` FOREIGN KEY (`adminStyle`) REFERENCES `adminstyle` (`adminStyleId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admininfo
-- ----------------------------
INSERT INTO `admininfo` VALUES ('1', '张三', '123123', '1', '111qq.com');
INSERT INTO `admininfo` VALUES ('2', '李四', '123123', '2', '333qq.ocm');
INSERT INTO `admininfo` VALUES ('3', '赵六', '123123', '1', '22@qq.com');
INSERT INTO `admininfo` VALUES ('9', '赵11', '123123', '1', '22@qq.com');
INSERT INTO `admininfo` VALUES ('10', '赵12', '123123', '1', '22@qq.com');
INSERT INTO `admininfo` VALUES ('12', '张20', '123123', '1', '222@qq.com');
INSERT INTO `admininfo` VALUES ('13', '张三', '123123', '1', '111@qq.com');
INSERT INTO `admininfo` VALUES ('14', 'cns', '123123', '2', '1073089657@qq.com');
INSERT INTO `admininfo` VALUES ('15', 'ydx', '123123', '1', '111ha@qq.com');
INSERT INTO `admininfo` VALUES ('16', 'llh', '123123', '1', 'wahaha@qq.com');
INSERT INTO `admininfo` VALUES ('17', 'hxl', '123123', '1', 'lulu@qq.com');
INSERT INTO `admininfo` VALUES ('18', 'cyp', '123123', '2', 'cyp@qq.com');
INSERT INTO `admininfo` VALUES ('19', 'xjq', '123123', '1', 'ahaha@qq.com');
INSERT INTO `admininfo` VALUES ('20', 'hdf', '123123', '1', 'hsf@qq.com');

-- ----------------------------
-- Table structure for adminstyle
-- ----------------------------
DROP TABLE IF EXISTS `adminstyle`;
CREATE TABLE `adminstyle` (
  `adminStyleId` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户类型id',
  `adminName` varchar(255) NOT NULL COMMENT '用户类型名',
  PRIMARY KEY (`adminStyleId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminstyle
-- ----------------------------
INSERT INTO `adminstyle` VALUES ('1', '前台服务员');
INSERT INTO `adminstyle` VALUES ('2', '系统管理员');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cartId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `foodId` int(11) NOT NULL,
  `foodCount` int(11) NOT NULL COMMENT '数量',
  PRIMARY KEY (`cartId`),
  KEY `userId` (`userId`),
  KEY `foodId` (`foodId`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `customerinfo` (`customerId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`foodId`) REFERENCES `food` (`foodId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('25', '4', '35', '3');
INSERT INTO `cart` VALUES ('26', '4', '1', '2');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `commentId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `customerComment` varchar(255) NOT NULL COMMENT '客户评论',
  `commentTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  `adminComment` varchar(255) NOT NULL COMMENT '管理员回复',
  PRIMARY KEY (`commentId`),
  KEY `ordID` (`orderId`),
  KEY `customerId` (`customerId`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `customerinfo` (`customerId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '1', '4', '好的', '2015-01-20 10:24:20', '好的');
INSERT INTO `comment` VALUES ('2', '2', '5', '味道不错！！！', '2015-01-01 10:26:40', '谢谢光临');
INSERT INTO `comment` VALUES ('3', '3', '8', '味道不错！！！', '2015-01-01 10:28:14', '谢谢光临');

-- ----------------------------
-- Table structure for customerinfo
-- ----------------------------
DROP TABLE IF EXISTS `customerinfo`;
CREATE TABLE `customerinfo` (
  `customerId` int(11) NOT NULL AUTO_INCREMENT,
  `customerName` varchar(255) NOT NULL,
  `customerPass` varchar(255) NOT NULL,
  `customerSex` varchar(50) DEFAULT NULL,
  `customerBirthday` varchar(50) DEFAULT NULL COMMENT '生日',
  `customerEmail` varchar(255) NOT NULL COMMENT '邮箱',
  `customerPhone` varchar(255) DEFAULT NULL COMMENT '电话',
  `customerCredit` int(11) NOT NULL DEFAULT '10' COMMENT '信誉度',
  `realName` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  PRIMARY KEY (`customerId`),
  KEY `customerId` (`customerId`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customerinfo
-- ----------------------------
INSERT INTO `customerinfo` VALUES ('4', 'McDonald1103', '123123', '男', '1950-02-08', '1073089657@qq.com', '13502598444', '10', '陈能燊');
INSERT INTO `customerinfo` VALUES ('5', 'McDonald1104', '123123', '女', '1983-02-09', '8975638@qq.com', '15816948237', '10', '张四喜');
INSERT INTO `customerinfo` VALUES ('6', 'McDonald1105', '123123', '女', '1980-02-10', '625538@qq.com', '18094041111', '10', '张五羊');
INSERT INTO `customerinfo` VALUES ('7', 'McDonald1106', '123123', '女', '2000-11-13', 'ty128@qq.com', '18094042222', '10', '张六顺');
INSERT INTO `customerinfo` VALUES ('8', 'McDonald1107', '123123', '女', '1990-05-11', '31138@qq.com', '18094043333', '10', '张七夕');
INSERT INTO `customerinfo` VALUES ('9', 'McDonald1108', '123123', '女', '1999-02-05', '3238@163.com', '18094044444', '10', '张八仙');
INSERT INTO `customerinfo` VALUES ('10', 'McDonald1109', '123123', '女', '1990-12-04', '5237738@qq.com', '18094055555', '10', '张九牛');
INSERT INTO `customerinfo` VALUES ('11', 'McDonald1110', '123123', '女', '1995-07-07', '322238@sina.com', '18094046666', '10', '李大仙');
INSERT INTO `customerinfo` VALUES ('12', 'McDonald1111', '123123', '女', '1901-07-09', '30038@qq.com', '18094047777', '10', '李小妖');
INSERT INTO `customerinfo` VALUES ('13', 'McDonald1112', '123123', '女', '1987-08-11', '111738@qq.com', '18094048888', '10', '李中神');
INSERT INTO `customerinfo` VALUES ('14', 'McDonald1113', '123123', '男', '1993-03-18', '544422@qq.com', '18094048885', '10', '詹思喜');
INSERT INTO `customerinfo` VALUES ('15', 'McDonald1114', '123123', '男', '1987-08-11', '444@qq.com', '15280380580', '10', '喜洋洋');
INSERT INTO `customerinfo` VALUES ('16', 'yukaillh', '123123', '男', '1987-08-11', '307963694@qq.com', '15280359326', '10', '林玲玲');
INSERT INTO `customerinfo` VALUES ('17', 'yukaillh', '123123', '女', '1987-08-11', '307963694@qq.com', '15280359323', '10', '林哥哥');

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `foodId` int(11) NOT NULL AUTO_INCREMENT,
  `foodName` varchar(255) NOT NULL COMMENT '食物名称',
  `foodIntroduce` varchar(255) DEFAULT NULL COMMENT '食物介绍',
  `foodPrice` double(40,2) NOT NULL COMMENT '食物价格',
  `foodStyleId` int(11) NOT NULL COMMENT '食物类型',
  `foodCount` int(11) NOT NULL COMMENT '判断有无货',
  `lunchId` int(11) NOT NULL COMMENT '判断正餐早餐',
  `imagesPath` varchar(100) DEFAULT NULL COMMENT '图片路径',
  PRIMARY KEY (`foodId`),
  KEY `foodStyleId` (`foodStyleId`),
  KEY `lunchid` (`lunchId`),
  CONSTRAINT `foodStyleId` FOREIGN KEY (`foodStyleId`) REFERENCES `foodstyle` (`foodStyleId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `food_ibfk_1` FOREIGN KEY (`lunchId`) REFERENCES `lunchtime` (`lunchId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES ('1', '特享早晨套餐', '无', '24.00', '1', '100', '1', 'images/1184.png');
INSERT INTO `food` VALUES ('2', '培根油条蛋卷', '无', '12.00', '2', '100', '1', 'images/8015.png');
INSERT INTO `food` VALUES ('3', '火腿扒油条蛋卷', '无', '12.00', '2', '100', '1', 'images/8048.png');
INSERT INTO `food` VALUES ('5', '猪柳蛋堡', '无', '14.50', '2', '100', '1', 'images/5023.png');
INSERT INTO `food` VALUES ('10', '脆香油条', '无', '5.50', '3', '100', '1', 'images/2631.png');
INSERT INTO `food` VALUES ('11', '脆薯饼', '无', '5.50', '3', '100', '1', 'images/4825.png');
INSERT INTO `food` VALUES ('20', '红枣优品豆浆', '无', '10.00', '5', '100', '1', 'images/2722.png');
INSERT INTO `food` VALUES ('21', '优品豆浆', '无', '9.00', '5', '100', '1', 'images/1088.png');
INSERT INTO `food` VALUES ('22', '特级浓滑奶茶', '无', '9.50', '5', '100', '1', 'images/3510.png');
INSERT INTO `food` VALUES ('33', '早晨开心乐园餐(吉士蛋堡)', '无', '18.50', '6', '100', '1', 'images/1715.png');
INSERT INTO `food` VALUES ('34', '麦趣鸡盒升级岩烧风味鸡翅', '无', '72.00', '1', '100', '2', 'images/8350.png');
INSERT INTO `food` VALUES ('35', '麦趣鸡盒', '无', '69.00', '1', '100', '2', 'images/1121.png');
INSERT INTO `food` VALUES ('36', '豪情派对聚享餐', '无', '98.00', '1', '100', '2', 'images/8615.png');
INSERT INTO `food` VALUES ('37', '麦乐家庭餐', '无', '81.50', '1', '100', '2', 'images/8616.png');
INSERT INTO `food` VALUES ('38', '阿狸钥匙包1个（款式随机）', '无', '18.00', '1', '100', '2', 'images/7097.png');
INSERT INTO `food` VALUES ('39', '不素之霸双层牛堡', '无', '20.50', '2', '100', '2', 'images/4648.png');
INSERT INTO `food` VALUES ('40', '经典麦辣鸡腿汉堡', '无', '15.50', '2', '100', '2', 'images/1440.png');
INSERT INTO `food` VALUES ('41', '原味板烧鸡腿堡', '无', '17.00', '2', '100', '2', 'images/1406.png');
INSERT INTO `food` VALUES ('42', '巨无霸', '无', '17.50', '2', '100', '2', 'images/1100.png');
INSERT INTO `food` VALUES ('43', '培根蔬萃双层牛堡', '无', '19.50', '2', '100', '2', 'images/1106.png');
INSERT INTO `food` VALUES ('44', '双层吉士汉堡', '无', '16.50', '2', '100', '2', 'images/1120.png');
INSERT INTO `food` VALUES ('45', '麦香鱼', '无', '16.50', '2', '100', '2', 'images/1600.png');
INSERT INTO `food` VALUES ('46', '麦香鸡', '无', '9.50', '2', '100', '2', 'images/1450.png');
INSERT INTO `food` VALUES ('47', '吉士汉堡包', '无', '9.50', '2', '100', '2', 'images/1010.png');
INSERT INTO `food` VALUES ('48', '汉堡包', '无', '7.00', '2', '100', '2', 'images/1000.png');
INSERT INTO `food` VALUES ('49', '岩烧风味鸡翅', '无', '10.00', '3', '100', '2', 'images/8346.png');
INSERT INTO `food` VALUES ('50', '香骨鸡腿', '无', '12.50', '3', '100', '2', 'images/1119.png');
INSERT INTO `food` VALUES ('51', '麦辣鸡翅', '无', '9.00', '3', '100', '2', 'images/1700.png');
INSERT INTO `food` VALUES ('52', '麦乐鸡', '无', '9.50', '3', '100', '2', 'images/1401.png');
INSERT INTO `food` VALUES ('53', '薯条', '无', '7.50', '3', '100', '2', 'images/4800.png');
INSERT INTO `food` VALUES ('54', '玉米杯', '无', '7.50', '3', '100', '2', 'images/4437.png');
INSERT INTO `food` VALUES ('55', '苹果派', '无', '7.00', '4', '100', '2', 'images/5088.png');
INSERT INTO `food` VALUES ('56', '香芋派', '无', '6.00', '4', '100', '2', 'images/4106.png');
INSERT INTO `food` VALUES ('57', '菠萝派', '无', '6.00', '4', '100', '2', 'images/4105.png');
INSERT INTO `food` VALUES ('59', '麦旋风草莓口味', '无', '11.50', '4', '100', '2', 'images/4900.png');
INSERT INTO `food` VALUES ('60', '巧克力新地', '无', '8.50', '4', '100', '2', 'images/4410.png');
INSERT INTO `food` VALUES ('61', '草莓新地', '无', '8.50', '4', '100', '2', 'images/4416.png');
INSERT INTO `food` VALUES ('62', '柑橘姜饮', '无', '10.50', '5', '100', '2', 'images/2949.png');
INSERT INTO `food` VALUES ('63', '黑芝麻珍珠奶茶', '无', '11.00', '5', '100', '2', 'images/6868.png');
INSERT INTO `food` VALUES ('64', '鲜煮咖啡', '无', '9.00', '5', '100', '2', 'images/3518.png');
INSERT INTO `food` VALUES ('65', '热朱古力', '无', '10.50', '5', '100', '2', 'images/3605.png');
INSERT INTO `food` VALUES ('66', '红茶', '无', '10.50', '5', '100', '2', 'images/3505.png');
INSERT INTO `food` VALUES ('67', '美汁源阳光橙', '无', '10.50', '5', '100', '2', 'images/2430.png');
INSERT INTO `food` VALUES ('68', '美汁源100%橙汁', '无', '10.50', '5', '100', '2', 'images/3705.png');
INSERT INTO `food` VALUES ('69', '可口可乐', '无', '7.00', '5', '100', '2', 'images/3000.png');
INSERT INTO `food` VALUES ('70', '零度可口可乐', '无', '7.00', '5', '100', '2', 'images/3021.png');
INSERT INTO `food` VALUES ('71', '雪碧', '无', '7.00', '5', '100', '2', 'images/3010.png');
INSERT INTO `food` VALUES ('72', '纯牛奶', '无', '9.00', '5', '100', '2', 'images/3755.png');
INSERT INTO `food` VALUES ('73', '冰露矿物质水', '无', '6.00', '5', '100', '2', 'images/3757.png');
INSERT INTO `food` VALUES ('74', '开心乐园餐（汉堡包）', '无', '19.00', '6', '100', '2', 'images/3469.png');
INSERT INTO `food` VALUES ('75', '开心乐园餐（吉士汉堡包）', '无', '21.00', '6', '100', '2', 'images/3470.png');
INSERT INTO `food` VALUES ('76', '开心乐园餐（麦乐鸡）', '无', '18.50', '6', '100', '2', 'images/3471.png');
INSERT INTO `food` VALUES ('83', '麦旋风奥利奥原味', '无', '11.50', '4', '100', '2', 'images/1217.png');
INSERT INTO `food` VALUES ('85', '悠享早晨全餐', '无', '18.00', '2', '100', '1', 'images/5010.png');
INSERT INTO `food` VALUES ('86', '烟肉蛋麦满分', '无', '12.50', '2', '100', '1', 'images/5021.png');
INSERT INTO `food` VALUES ('87', '猪柳蛋麦满分', '无', '14.50', '2', '100', '1', 'images/5022.png');
INSERT INTO `food` VALUES ('88', '猪柳麦满分', '无', '10.50', '2', '100', '1', 'images/5024.png');
INSERT INTO `food` VALUES ('89', '原味板烧鸡腿麦满分', '无', '11.00', '2', '100', '1', 'images/6800.png');

-- ----------------------------
-- Table structure for foodstyle
-- ----------------------------
DROP TABLE IF EXISTS `foodstyle`;
CREATE TABLE `foodstyle` (
  `foodStyleId` int(11) NOT NULL AUTO_INCREMENT,
  `foodStyleName` varchar(255) NOT NULL COMMENT '食物类型',
  PRIMARY KEY (`foodStyleId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of foodstyle
-- ----------------------------
INSERT INTO `foodstyle` VALUES ('1', '促销产品和热卖产品');
INSERT INTO `foodstyle` VALUES ('2', '主食和超值套餐');
INSERT INTO `foodstyle` VALUES ('3', '小食');
INSERT INTO `foodstyle` VALUES ('4', '甜食');
INSERT INTO `foodstyle` VALUES ('5', '饮品');
INSERT INTO `foodstyle` VALUES ('6', '开心乐园餐');

-- ----------------------------
-- Table structure for lunchtime
-- ----------------------------
DROP TABLE IF EXISTS `lunchtime`;
CREATE TABLE `lunchtime` (
  `lunchId` int(11) NOT NULL AUTO_INCREMENT,
  `lunchName` varchar(255) NOT NULL COMMENT '食物可加入购物车的时间段，分早餐，午餐',
  PRIMARY KEY (`lunchId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lunchtime
-- ----------------------------
INSERT INTO `lunchtime` VALUES ('1', '早餐菜单');
INSERT INTO `lunchtime` VALUES ('2', '正餐菜单');

-- ----------------------------
-- Table structure for orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `orderinfo`;
CREATE TABLE `orderinfo` (
  `ordId` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `customerId` int(11) NOT NULL COMMENT '客户ID',
  `orderTime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单生成时间',
  `addressId` int(11) NOT NULL COMMENT '地址ID',
  `orderPriceSum` double(50,2) NOT NULL COMMENT '订单里的食物总价',
  `orderPayMent` varchar(20) NOT NULL COMMENT '是否已付款',
  `orderDelivery` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否配送',
  `ordNumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单号（叫号）',
  PRIMARY KEY (`ordId`),
  KEY `customerid` (`customerId`),
  KEY `addressId` (`addressId`),
  KEY `ordNumber` (`ordNumber`),
  CONSTRAINT `orderinfo_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customerinfo` (`customerId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orderinfo_ibfk_2` FOREIGN KEY (`addressId`) REFERENCES `address` (`addressId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderinfo
-- ----------------------------
INSERT INTO `orderinfo` VALUES ('2', '5', '2015-01-04 10:30:20', '2', '40.00', '否', '是', '201501041030202318');
INSERT INTO `orderinfo` VALUES ('3', '5', '2015-01-07', '7', '213.00', '否', '否', '201501070855253102');
INSERT INTO `orderinfo` VALUES ('4', '5', '2015-01-07', '7', '194.00', '否', '否', '201501071055445391');
INSERT INTO `orderinfo` VALUES ('5', '4', '2015-01-07', '33', '315.00', '否', '否', '201501071239262854');
INSERT INTO `orderinfo` VALUES ('6', '4', '2015-01-07', '6', '387.00', '否', '否', '201501070101418722');
INSERT INTO `orderinfo` VALUES ('7', '4', '2015-01-07', '33', '186.00', '否', '否', '201501070221572152');
INSERT INTO `orderinfo` VALUES ('8', '4', '2015-01-07', '33', '204.00', '否', '否', '201501070225093967');
INSERT INTO `orderinfo` VALUES ('9', '4', '2015-01-07', '33', '168.00', '否', '否', '201501070235199176');
INSERT INTO `orderinfo` VALUES ('10', '4', '2015-01-07', '33', '207.00', '否', '否', '201501070251565526');

-- ----------------------------
-- Table structure for orderinfodesc
-- ----------------------------
DROP TABLE IF EXISTS `orderinfodesc`;
CREATE TABLE `orderinfodesc` (
  `ordDTLId` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单详情自增',
  `ordId` int(11) NOT NULL COMMENT '定单Id(程序生成,多人高并发)',
  `foodId` int(11) NOT NULL COMMENT '产品ID',
  `foodCount` int(11) NOT NULL COMMENT '订单里某项食物的数量',
  PRIMARY KEY (`ordDTLId`),
  KEY `ordId` (`ordId`),
  KEY `foodId` (`foodId`),
  CONSTRAINT `orderinfodesc_ibfk_2` FOREIGN KEY (`foodId`) REFERENCES `food` (`foodId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orderinfodesc_ibfk_3` FOREIGN KEY (`ordId`) REFERENCES `orderinfo` (`ordId`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderinfodesc
-- ----------------------------
INSERT INTO `orderinfodesc` VALUES ('38', '3', '5', '10');
INSERT INTO `orderinfodesc` VALUES ('39', '2', '3', '10');
