/*
 Navicat Premium Data Transfer

 Source Server         : liu
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : collectionmuseum

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 10/04/2021 18:43:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accident
-- ----------------------------
DROP TABLE IF EXISTS `accident`;
CREATE TABLE `accident`  (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `problem` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `solve` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of accident
-- ----------------------------
INSERT INTO `accident` VALUES (3, '魂坛', '1', '2021-02-21 00:04:57.913', '已处理 负责人:张三');
INSERT INTO `accident` VALUES (1, '民国青花瓷暖盘', '1', '2021-02-21 10:24:08.313', '已处理 负责人:李四');
INSERT INTO `accident` VALUES (13, '越王勾践剑', '111', '2021-02-21 15:51:59.946', '已处理 负责人:王五');
INSERT INTO `accident` VALUES (15, '迪迦奥特曼', '123', '2021-02-21 20:20:13.743', '已处理 负责人:刘欣');
INSERT INTO `accident` VALUES (11, '宝镜湾遗址石拍', '破损', '2021-02-24 13:48:02.132', '待解决');
INSERT INTO `accident` VALUES (16, '五彩西厢人物印盒', '破损', '2021-02-28 16:39:38.618', '已处理 负责人:刘欣雨');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('Mr.zou', '123456');

-- ----------------------------
-- Table structure for collections
-- ----------------------------
DROP TABLE IF EXISTS `collections`;
CREATE TABLE `collections`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `integrity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collections
-- ----------------------------
INSERT INTO `collections` VALUES (1, '民国青花瓷暖盘', '高5厘米，直径25.6厘米。', '盘体中空，一侧带流，可将热水注入，以作暖盘。装饰图案为欧洲风景，夕阳下城堡小屋，湖光山色，仿若童话世界。', 'http://www.zhmuseum.org.cn:8081/zhmuseum/uploadTest/exhibit/a694f6ba58004710960af5d4e9ff64f2.png', '2021-02-13 01:32:38', '民国', '陶瓷器类', '8');
INSERT INTO `collections` VALUES (2, '绿釉衔环铺首陶壶', '高42.2厘米，口径20厘米，腹径31.2厘米，底径19.7厘米', '盘口，假圈足，低温釉陶，腹部左右各有一铺首（衔环兽首），壶口和肩部有弦纹。口沿和底部有支烧痕迹。这种器形常见于秦汉时期，至西汉中期，出现筒状空心假圈足。西汉以后，低温铅釉技术得到发展，出现此类绿釉装饰陶器。这种低温铅釉陶壶流行于东汉时期，基本作为明器使用。', 'http://www.zhmuseum.org.cn:8081/zhmuseum/uploadTest/exhibit/6a637b71a5b04eeaa8047c0ff5f1efc0.png', '2021-02-20 20:13:05.925', '东汉', '陶瓷器类', '10');
INSERT INTO `collections` VALUES (3, '魂坛', '魂坛盖高17.3厘米，底径13.1厘米', '魂坛高47厘米，口径10.2厘米，底径14.6厘米，圈足直径13.9厘米 魂坛上部一周贴塑猛兽和吹奏人物形象，凡一十二对；下部贴塑五道花瓣状泥条，第三道、第四道之间刻划一周莲瓣纹。 魂瓶（魂坛），中国古代农耕文化特有的丧葬明器，为亡灵准备食物而设，用以表达对灵魂的敬畏和对生者平安的愿望。从汉代开始出现，历朝历代形态皆有变化。其名尚有五联罐、粮罂瓶、熟食瓶、堆塑瓶、日月瓶、魂魄瓶等。', 'http://www.zhmuseum.org.cn:8081/zhmuseum/uploadTest/exhibit/b3f817b7a91b469495a61e0168c1b8f7.png', '2021-02-20 20:15:18.738', '宋', '陶瓷器类', '9');
INSERT INTO `collections` VALUES (4, '宜兴紫砂通体加彩茶壶', '高18.6厘米，口径8.6x7.8、底径11.2厘米', '方钟形，敛口，鼓腹；盝顶盖，弧形钮。底部篆书四字款“澹然斋印”。除底部以外通体加彩，壶身有四方流和扁环形把手，两面绘绿竹，另两面一面绘牡丹，一面为书法，抄录杜甫诗《饮中八仙歌》节选：“李白斗酒诗百篇 长安市上酒家眠 天子呼来不上船 自称臣是酒中仙”，落款为“山人抄写”。', 'http://www.zhmuseum.org.cn:8081/zhmuseum/uploadTest/exhibit/6cad352973ae4fd68fa9d41021b69879.png', '2021-02-20 20:17:15.970', '民国', '陶瓷器类', '10');
INSERT INTO `collections` VALUES (5, '鎏金铜佛像', '高12.8厘米，底部长8.5厘米，宽5厘米，重340克。', '人物形象为藏传佛教中的绿度母，头戴小五佛宝冠，身披璎珞，双眼微睁，嘴角含笑，神态慈祥温和。 绿度母坐于莲花月轮上，双脚屈左展右，左腿单坐，右腿向下舒展，踏在莲花上表示随时准备起身救渡苦难众生，如慈母般拯救钟爱的孩子；', 'http://www.zhmuseum.org.cn:8081/zhmuseum/uploadTest/exhibit/af21d60794c14772b276b6d7bfe1c4ed.png', '2021-02-20 23:02:09.191', '清乾隆', '金属器类', '9');
INSERT INTO `collections` VALUES (6, '宝镜湾遗址玉玦', 'T1②：4 直径4.1厘米，孔径2.1厘米 T1②：8 直径4.1厘米，孔径2.1厘米', '玦口直，外壁直，内缘双面钻穿，玦口开于肉最宽处。玉珏是一种装饰用玉，多成对出自墓主人左右耳处，可能为耳饰。宝镜湾遗址一号探方玉玦成对出土，且相当完整，十分难得。发掘时曾在陶豆中发现玦，当为史前环珠江口地区禮的一种仪式。', 'http://www.zhmuseum.org.cn:8081/zhmuseum/uploadTest/exhibit/07f5319d5fe7404b88887ccd7b3b2d8c.jpg', '2021-02-21 11:16:08.238', '新石器时代晚期', '石器玉器类', '6');
INSERT INTO `collections` VALUES (7, '鲍俊行书册页蒋莲仕女图', '鲍俊书法26.2*21.6cm；仕女图20.7*20.3cm', '鲍俊(1797-1851)，字宗垣，号逸卿，自号石溪生，今珠海山场人。出身于书香世家。清道光二年(1822)中举人，次年中进士，授翰林院庶吉士，后调刑部山西司主事，候选员外郎、即用郎中。工诗词、书画，尤谙书法，擅小楷、大小行草和擘窠大字。与张维屏、黎简等齐名，为晚清岭南著名书画家之一。咸丰帝登基，闻其才，诏其入京补官。上任途中，突患痈疾，遂返里，不久病逝。', 'http://www.zhmuseum.org.cn:8081/zhmuseum/uploadTest/exhibit/58b250bb0d9941778d90016a111bce4a.png', '2021-02-21 11:17:46.432', '清', '书籍字画等纸质文物', '7');
INSERT INTO `collections` VALUES (9, '木字架', '长51厘米，宽67厘米，厚3.7厘米', '中国人的名字在人的一生中具有很重要的意义，它带有时代的信息，铭刻着文化观念，记录了家族血统的烙印，凝聚着父母对孩子的深情厚意和殷切希望，隐寓着不同的思想抱负、情意、爱好与目标追求。这跟随着人一生的两三个字，也可能对一个人的生命追求、自我期许，甚至个性与生活轨迹都发生影响。 字架似匾额，镶嵌于木框中，红底黑字，楷书“昌厚”二字。此字架制作于1952年，为上字架此风俗尾声之见证。此后新中国倡导新风俗，此俗成历史。', 'http://www.zhmuseum.org.cn:8081/zhmuseum/uploadTest/exhibit/5956bc5e2c414a20a091636b948ea9c6.png', '2021-02-21 11:22:08.133', '1952年', '杂项类文物', '9');
INSERT INTO `collections` VALUES (11, '宝镜湾遗址石拍', '高7.6厘米，厚度3.0厘米，槽深0.3厘米。', '石拍之用途，或用来拍印陶纹，或用来拍打树皮布。此款为宝境湾特色石拍，略呈半圆，侧面有凹槽，便于装藤条或有韧性的树枝，绑实，然后手持藤条或树枝拍打。宝镜湾还有一款，状似这款，但双面皆有多道同心半圆浮雕状凸棱，使树皮布突显水印纹效果。', 'http://www.zhmuseum.org.cn:8081/zhmuseum/uploadTest/exhibit/13f5b3d5a1434a989bdc12442a7fdf93.png', '2021-02-21 11:24:42.834', '新石器时代晚期', '石器玉器类', '9');
INSERT INTO `collections` VALUES (12, '鲍俊水墨扇面', '15x43cm', '鲍俊(1797-1851)，字宗垣，号逸卿，自号石溪生，今珠海山场人。出身于书香世家。清道光二年(1822)中举人，次年中进士，授翰林院庶吉士，后调刑部山西司主事，候选员外郎、即用郎中。', 'http://www.zhmuseum.org.cn:8081/zhmuseum/uploadTest/exhibit/1ff7004065ee4d08bb48286cf56de040.png', '2021-02-21 13:05:32.987', '清', '书籍字画等纸质文物', '6');
INSERT INTO `collections` VALUES (13, '越王勾践剑', '剑长55.6厘米，宽5厘米', '越王勾践剑制作精美，历经两千五百余年，仍然纹饰清晰精美，寒光闪闪，毫无锈蚀，被誉为“天下第一剑”。', 'http://file.hbww.org/WaterMark/门户网站多媒体文件/202012150351384ryKWW.jpg', '2021-02-21 13:10:11.523', '春秋', '金属器类', '8');
INSERT INTO `collections` VALUES (15, '迪迦奥特曼', '高52米,体重80吨', '身手敏捷的战士，蓝紫色的身体线条，动作迅速而富有美感。能在空中进行高速飞行。三形态中最擅长空战，与基里艾洛德人的战斗亦展现了其出色的格斗技巧。但是这个形态的迪迦奥特曼使用的可以说是少之又少，只有在对付一些复合型没法应付，强力型又不适合对付对手的时候，才会选择这个形态，因此登场次数较少，在TV版登场次数为11次，不过迪迦奥特曼空中形以压倒性的实力打倒了强力型不能对付的美尔巴', '../images/diga.jfif', '2021-02-21 16:12:17.458', '远古', '金属器类', '8');
INSERT INTO `collections` VALUES (16, '五彩西厢人物印盒', '直径10厘米，高5.5厘米。', '盒扁圆形，盒盖平顶微隆，子母口，圈足。 盒盖顶绘制《西厢记》人物，盖身和盒身为彩绘缠枝菊花。 五彩为釉上彩的一种。五彩常用的彩料有红、黄、绿、蓝、紫、黑、金等若干种。利用这几种颜色可以调配出各种不同浓淡和不同色调的彩色。红彩有矾红和金红两大类。黄彩有铁黄和锑黄两种。绿彩为从铜绿铅釉发展而成。蓝彩从钴蓝铅釉发展而来。黑彩主要着色元素是铁、锰、钴和铜，是用钴土矿和铜花片配置而成，同时用牛皮胶作为粘合剂。金彩使用金粉。', 'http://www.zhmuseum.org.cn:8081/zhmuseum/uploadTest/exhibit/450e417fabac4e2da91935152ba2b47e.png', '2021-02-28 16:37:49.289', '清光绪', '陶瓷器类', '9');

-- ----------------------------
-- Table structure for collectionsrecord
-- ----------------------------
DROP TABLE IF EXISTS `collectionsrecord`;
CREATE TABLE `collectionsrecord`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `infor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collectionsrecord
-- ----------------------------
INSERT INTO `collectionsrecord` VALUES ('1', '民国青花瓷暖盘', '2021-02-13 01:32:384', '入库');
INSERT INTO `collectionsrecord` VALUES ('2', '绿釉衔环铺首陶壶', '2021-02-20 20:13:05.925', '入库');
INSERT INTO `collectionsrecord` VALUES ('3', '魂坛', '2021-02-20 20:15:18.738', '入库');
INSERT INTO `collectionsrecord` VALUES ('4', '宜兴紫砂通体加彩茶壶', '2021-02-20 20:17:15.970', '入库');
INSERT INTO `collectionsrecord` VALUES ('5', '鎏金铜佛像', '2021-02-20 23:02:09.191', '入库');
INSERT INTO `collectionsrecord` VALUES ('6', '宝镜湾遗址玉玦', '2021-02-21 11:16:08.238', '入库');
INSERT INTO `collectionsrecord` VALUES ('7', '鲍俊行书册页蒋莲仕女图', '2021-02-21 11:17:46.432', '入库');
INSERT INTO `collectionsrecord` VALUES ('9', '木字架', '2021-02-21 11:22:08.133', '入库');
INSERT INTO `collectionsrecord` VALUES ('11', '宝镜湾遗址石拍', '2021-02-21 11:24:42.834', '入库');
INSERT INTO `collectionsrecord` VALUES ('12', '鲍俊水墨扇面', '2021-02-21 13:05:32.987', '入库');
INSERT INTO `collectionsrecord` VALUES ('13', '越王勾践剑', '2021-02-21 13:10:11.523', '入库');
INSERT INTO `collectionsrecord` VALUES ('14', '影青瓜棱瓶', '2021-02-21 15:49:16.044', '入库');
INSERT INTO `collectionsrecord` VALUES ('14', '影青瓜棱瓶', '2021-02-21 15:49:52.525', '出库');
INSERT INTO `collectionsrecord` VALUES ('15', '迪迦奥特曼', '2021-02-21 16:12:17.458', '入库');
INSERT INTO `collectionsrecord` VALUES ('16', '五彩西厢人物印盒', '2021-02-28 16:37:49.289', '入库');
INSERT INTO `collectionsrecord` VALUES ('17', '邹启航', '2021-03-01 17:48:31.373', '入库');
INSERT INTO `collectionsrecord` VALUES ('18', '睡美人', '2021-03-06 16:22:20.702', '入库');
INSERT INTO `collectionsrecord` VALUES ('19', '金肯F4', '2021-03-10 23:09:44.322', '入库');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('username', 'password');
INSERT INTO `user` VALUES ('xieke123', '123456');

SET FOREIGN_KEY_CHECKS = 1;
