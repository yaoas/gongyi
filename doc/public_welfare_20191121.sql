/*
Navicat MySQL Data Transfer

Source Server         : 39.97.237.246(公益生产)
Source Server Version : 50727
Source Host           : 39.97.237.246:3306
Source Database       : public_welfare

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-11-21 13:39:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activechat
-- ----------------------------
DROP TABLE IF EXISTS `activechat`;
CREATE TABLE `activechat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activeId` bigint(20) DEFAULT NULL,
  `content` text,
  `createTime` datetime DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `imagePictrue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activechat
-- ----------------------------
INSERT INTO `activechat` VALUES ('18', '1164727852903153665', '我也要帮助他们', '2019-08-26 14:51:08', '李小鵬', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `activechat` VALUES ('19', '1167256503658962946', '不想要秃顶', '2019-08-30 10:06:43', '(^_^)', 'https://wx.qlogo.cn/mmopen/vi_32/ounbbCtiatmFERLRIFhtNZ45hSO5ECiciaUMqSgCkDpibiaAgefanbKSsUKLMyjeialF7q7CEom26rjhC9PWFic359zFA/132');
INSERT INTO `activechat` VALUES ('20', '1167307085618839553', '哦咯', '2019-08-30 13:59:34', '(^_^)', 'https://wx.qlogo.cn/mmopen/vi_32/ounbbCtiatmFERLRIFhtNZ45hSO5ECiciaUMqSgCkDpibiaAgefanbKSsUKLMyjeialF7q7CEom26rjhC9PWFic359zFA/132');
INSERT INTO `activechat` VALUES ('21', '1164733478374965250', '在我看来普通', '2019-08-30 14:44:18', 'Mumutianxin', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKIw7PnDUED8DVia9SEyxickbm5MeWdnhT2OOUib19om8rvYJEiciaCMDFH9vR2gibMC8krjb1bTJ3jfAXA/132');
INSERT INTO `activechat` VALUES ('22', '1167271258301890562', '大家好', '2019-08-30 15:20:40', 'Mumutianxin', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKIw7PnDUED8DVia9SEyxickbm5MeWdnhT2OOUib19om8rvYJEiciaCMDFH9vR2gibMC8krjb1bTJ3jfAXA/132');
INSERT INTO `activechat` VALUES ('23', '1164732908838813697', '商务洽谈\n', '2019-08-30 16:07:59', '硿白', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `activechat` VALUES ('24', '1164731782307479554', '哈哈哈', '2019-08-30 17:34:05', '硿白', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `activechat` VALUES ('25', '1164731782307479554', '哈哈哈哈', '2019-08-30 17:34:17', '硿白', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `activechat` VALUES ('26', '1164732908838813697', '献爱心', '2019-08-30 17:34:52', '硿白', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `activechat` VALUES ('27', '1164732908838813697', '圣诞节的内牛满面吗', '2019-08-30 17:37:01', '硿白', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `activechat` VALUES ('28', '1167271258301890562', '你好', '2019-08-30 17:37:57', '李小鵬', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `activechat` VALUES ('29', '1167282393742802945', '呼呼', '2019-08-30 17:38:13', '硿白', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `activechat` VALUES ('30', '1164732908838813697', '好的', '2019-08-30 17:38:18', '李小鵬', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `activechat` VALUES ('31', '1167281924467294210', '北京经济', '2019-08-30 17:38:49', '硿白', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `activechat` VALUES ('32', '1164732908838813697', 'shi de ', '2019-08-30 17:39:35', '李小鵬', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `activechat` VALUES ('33', '1164732908838813697', '记载', '2019-08-30 17:40:42', '李小鵬', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `activechat` VALUES ('34', '1164732908838813697', 'jzia ', '2019-08-30 17:42:25', '李小鵬', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `activechat` VALUES ('35', '1164732908838813697', '111', '2019-08-30 17:42:55', '李小鵬', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `activechat` VALUES ('36', '1164733478374965250', ' xing ', '2019-08-30 17:43:46', '李小鵬', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `activechat` VALUES ('37', '1164732908838813697', '11112233', '2019-08-30 17:44:02', '李小鵬', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `activechat` VALUES ('38', '1164732908838813697', 'as ', '2019-08-30 17:44:15', '李小鵬', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `activechat` VALUES ('39', '1164732908838813697', '787878', '2019-08-30 17:44:46', '李小鵬', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `activechat` VALUES ('40', '1164732908838813697', 'weef', '2019-08-30 17:47:20', '李小鵬', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `activechat` VALUES ('41', '1164732908838813697', 'sdadasdasd', '2019-08-30 17:47:33', '李小鵬', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `activechat` VALUES ('42', '1167271258301890562', '我购买了', '2019-08-30 17:55:35', 'Mumutianxin', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKIw7PnDUED8DVia9SEyxickbm5MeWdnhT2OOUib19om8rvYJEiciaCMDFH9vR2gibMC8krjb1bTJ3jfAXA/132');
INSERT INTO `activechat` VALUES ('43', '1164732908838813697', '献爱心', '2019-08-30 18:16:05', 'Judy', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoS13IbLGe2BRE9WibtEETRBpqmz6CicOzIAqiaeldN4KvPfLHQeIRLWlQIQ18Cw9NNJYL4ER883O8ibg/132');
INSERT INTO `activechat` VALUES ('44', '1167607744196919298', '红心猕猴桃', '2019-08-31 09:19:52', '硿白', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `activechat` VALUES ('45', '1167633918130274305', '为你点赞', '2019-08-31 15:41:57', 'Mumutianxin', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKIw7PnDUED8DVia9SEyxickbm5MeWdnhT2OOUib19om8rvYJEiciaCMDFH9vR2gibMC8krjb1bTJ3jfAXA/132');
INSERT INTO `activechat` VALUES ('46', '1167633918130274305', '感谢每一提供帮助的人，谢谢你们 ｸﾞｯ!(๑•̀ㅂ•́)و✧ \n\n\n\nthank you very much！！！！', '2019-08-31 15:44:51', 'Mumutianxin', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKIw7PnDUED8DVia9SEyxickbm5MeWdnhT2OOUib19om8rvYJEiciaCMDFH9vR2gibMC8krjb1bTJ3jfAXA/132');
INSERT INTO `activechat` VALUES ('47', '1167633918130274305', '456123', '2019-08-31 15:45:32', 'Mumutianxin', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKIw7PnDUED8DVia9SEyxickbm5MeWdnhT2OOUib19om8rvYJEiciaCMDFH9vR2gibMC8krjb1bTJ3jfAXA/132');
INSERT INTO `activechat` VALUES ('48', '1167379069933338626', '新华网济南9月28日电（冯孔）9月28日，由新华网主办，山东省商务厅、农业厅支持，山东省电子商务促进会承办的全国农产品电商发展研讨会在济南开幕。国务院扶贫办《中国扶贫》杂志社总编辑杨永纯在会上表示，农村电商发展规模不容置疑，发展潜力突出，但发展结构仍然粗放，应该继续推进农村电商体', '2019-08-31 16:10:08', '硿白', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `activechat` VALUES ('49', '1167713212659593217', '呵呵', '2019-08-31 17:11:14', '(^_^)', 'https://wx.qlogo.cn/mmopen/vi_32/ounbbCtiatmFERLRIFhtNZ45hSO5ECiciaUMqSgCkDpibiaAgefanbKSsUKLMyjeialF7q7CEom26rjhC9PWFic359zFA/132');
INSERT INTO `activechat` VALUES ('50', '1168350557138251778', '积极参与', '2019-09-02 10:32:46', '硿白', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `activechat` VALUES ('51', '1167713212659593217', '45', '2019-09-04 14:48:45', '李小鵬', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `activechat` VALUES ('52', '1168424705780805634', '好文章', '2019-09-11 16:39:12', '李小鵬', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `activechat` VALUES ('53', '1168350557138251778', '感谢每一位的帮助', '2019-09-12 14:14:53', 'Mumutianxin', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKIw7PnDUED8DVia9SEyxickbm5MeWdnhT2OOUib19om8rvYJEiciaCMDFH9vR2gibMC8krjb1bTJ3jfAXA/132');
INSERT INTO `activechat` VALUES ('54', '1164727852903153665', '孩子的教育是头等大事，', '2019-09-12 15:04:55', 'Mumutianxin', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKIw7PnDUED8DVia9SEyxickbm5MeWdnhT2OOUib19om8rvYJEiciaCMDFH9vR2gibMC8krjb1bTJ3jfAXA/132');
INSERT INTO `activechat` VALUES ('55', '1168424705780805634', '你好', '2019-09-17 18:54:27', '罗宝龙', 'https://wx.qlogo.cn/mmopen/vi_32/n2U9hYUJweP4R0s7ZIbiaz1FbLSqlmETKic4tEN7Lf6GHn17xYjCgSQibjgtMj7Par17zeEibAtfUjanxSd4iabZTEg/132');
INSERT INTO `activechat` VALUES ('56', '1168369853440651266', '我想要帮助', '2019-09-18 16:53:01', '李小鵬', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `activechat` VALUES ('57', '1168369853440651266', '测试', '2019-10-30 10:43:18', '壁虎漫步', 'https://wx.qlogo.cn/mmopen/vi_32/mRLrz56MhC9JhDibmwt1McZNgH6J7Y1IXjZQkqfIf5jJnyM7vGJaGS5ibg56tQcVuiajvV7FzaAriagCmS6L4oZA7Q/132');
INSERT INTO `activechat` VALUES ('58', '1192692464785985537', '还白', '2019-11-12 16:41:47', '(^_^)', 'https://wx.qlogo.cn/mmopen/vi_32/ounbbCtiatmFERLRIFhtNZ45hSO5ECiciaUMqSgCkDpibiaAgefanbKSsUKLMyjeialF7q7CEom26rjhC9PWFic359zFA/132');

-- ----------------------------
-- Table structure for activefabulous
-- ----------------------------
DROP TABLE IF EXISTS `activefabulous`;
CREATE TABLE `activefabulous` (
  `userId` bigint(20) DEFAULT NULL,
  `activeId` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of activefabulous
-- ----------------------------
INSERT INTO `activefabulous` VALUES ('1168438254745874434', '1168424705780805634');
INSERT INTO `activefabulous` VALUES ('1174248938993762306', '1164732908838813697');

-- ----------------------------
-- Table structure for active_info
-- ----------------------------
DROP TABLE IF EXISTS `active_info`;
CREATE TABLE `active_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `type` varchar(10) DEFAULT NULL COMMENT '活动类型',
  `content` longtext COMMENT '活动内容',
  `create_time` datetime DEFAULT NULL COMMENT '活动创建日期',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `update_time` datetime DEFAULT NULL COMMENT '发布日期',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新发布者',
  `del_flag` varchar(50) DEFAULT NULL COMMENT '状态',
  `typeName` varchar(255) DEFAULT NULL,
  `topStatus` varchar(255) DEFAULT NULL COMMENT '置顶状态',
  `activePosition` varchar(255) DEFAULT NULL COMMENT '活动发布位置',
  `status` varchar(255) DEFAULT '' COMMENT '是否审批',
  `createByName` varchar(255) DEFAULT NULL,
  `topStatusName` varchar(255) DEFAULT NULL,
  `statusName` varchar(255) DEFAULT NULL,
  `bindingStatus` varchar(10) DEFAULT NULL,
  `imageAddress` varchar(255) DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `signUpStatus` varchar(255) DEFAULT NULL COMMENT '报名状态（0立即报名1审核中2立即参与）',
  `activeFabulous` int(255) DEFAULT NULL COMMENT '活动点赞数',
  `locationPosition` varchar(255) DEFAULT NULL COMMENT '定位坐标',
  `longitude` varchar(255) DEFAULT NULL COMMENT '经度',
  `dimension` varchar(255) DEFAULT NULL COMMENT '维度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1192692464785985538 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of active_info
-- ----------------------------
INSERT INTO `active_info` VALUES ('1164727852903153665', '村企联盟 助学圆梦 夏令营', '40', '<p>在桥东区政府、教育局、农村农业局、东望山乡政府的支持下，张家口慈善义工联合会辐射爱心公益团队联合中国农业大学、北京师范大学发起“村企联盟助学圆梦夏令营”公益活动！课程从7月13日至8月7日，共计26天，通过夏令营让孩子体验和学习人文科学、趣味英语、卫生常识、读书会、手工制作、民俗风情、自然科学、篮球训练、美丽乡村摄影、媒体采访报道等知识，以及如何让孩子安静下来读书，减少与父母的代沟，懂得感恩，树立正确的人生三观，有社会责任感等素质教育。</p><p><br></p><p>   孩子们的夏令营之旅已经开始。希望通过这一次的葛峪堡之旅让农村的孩子拥有和城市孩子一样的童年，享受塞外山城的自然风光，与此同时参与活动的来自中国农业大学及北京师范大学的学生，也将在这里完成他们的假期乡村调研，为人生增添一段难忘的记忆，为伟大祖国的教育事业做出贡献。<img src=\"https://fdfs.baodingjl.com/group1/M00/00/0A/PM2i9F1fUN2AMniYAAehE9LsSrM530.jpg\" data-custom=\"id=abcd&amp;role=god\"></p>', '2019-08-23 10:35:34', null, '2019-08-23 10:35:34', '1164086985523675138', null, '0', '公益活动', '55', null, '1', '李小鵬', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/0A/PM2i9F1fUMWAB3c6AAehE9LsSrM975.jpg', '2019-08-23 11:00:00', '2019-08-24 02:00:00', null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1164729074716475393', '辐射爱之旅助学圆梦夏令营', '42', '<p>大自然里的色彩、声音和万千物种，永远会让孩子们吸入清醇的气息，萌生新的渴望。</p><p>在童年的记忆里，有花草的颜色，有鸟儿的鸣啭，有虫儿的蜕变，是大自然给孩子们的另一种精神财富和乐趣。</p><p><br></p><p>暑假是属于孩子的季节，是山林间聆听鸟虫啾鸣的时候，也是陪伴孩子迈出成长中许多“第一步”的时候。</p><p><br></p><p>离开学校生活，走向大自然。</p><p>去真实地经历非凡的人、事、物，去学习跟大自然深度沟通和对话。体验丰富的未知世界，充满着无尽的奇妙。</p><p>夏令营将通过非凡的真实体验去引领孩子成长，不单调，不灌输，润物无声地培养孩子们主动探索，挑战困难，走向远方的能力。<img src=\"https://fdfs.baodingjl.com/group1/M00/00/0B/PM2i9F1fUhWALWdnAAMChgt6duA133.jpg\" data-custom=\"id=abcd&amp;role=god\"><img src=\"http://b.hiphotos.baidu.com/baike/s%3D220/sign=abc7aa384a90f60300b09b450912b370/503d269759ee3d6d74bea1c243166d224f4adeba.jpg\" data-custom=\"id=abcd&amp;role=god\"></p>', '2019-08-23 10:40:26', null, '2019-08-23 10:40:26', '1164086985523675138', null, '0', '帮扶活动', '54', '57', '1', '李小鵬', '置顶', '审核通过', null, 'http://b.hiphotos.baidu.com/baike/s%3D220/sign=abc7aa384a90f60300b09b450912b370/503d269759ee3d6d74bea1c243166d224f4adeba.jpg', null, null, null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1164730351613607938', 'DAY 3 | 相教相知', '74', '<p><img src=\"http://b.hiphotos.baidu.com/baike/s%3D220/sign=c32a701e62d0f703e2b292de38fa5148/37d3d539b6003af373befa69352ac65c1038b6b6.jpg\" data-custom=\"id=abcd&amp;role=god\"></p>', '2019-08-23 10:45:30', null, '2019-08-23 10:45:30', '1164086985523675138', null, '0', '帮扶活动', '54', '57', '1', '李小鵬', '置顶', '审核通过', null, 'http://b.hiphotos.baidu.com/baike/s%3D220/sign=c32a701e62d0f703e2b292de38fa5148/37d3d539b6003af373befa69352ac65c1038b6b6.jpg', null, null, null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1164731513070911489', 'Day 4 | 听听童声', '42', '<p>前几日我们也多次在礼堂活动，有些孩子把发到手的讲义和空水瓶丢在了椅子、舞台上，本来干净整洁的屋子被弄得稍显脏乱，我们只好每次去做后续的清理工作。令我们感到欣慰的是，这次几个年龄稍大大孩子主动帮忙去清洁。几个男孩拿着大扫帚将散乱的纸屑扫成一堆，女孩们捡起塑料瓶扔到屋外的垃圾桶。看着他们忙碌着的小小身影，我们非常感动，孩子们身上正萌发着责任心与担当意识，令人不禁期待他们长大后的模样。<img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567138771836&di=387ec90c711eec3e33ce9bd30453c243&imgtype=0&src=http%3A%2F%2Fthumb.takefoto.cn%2Fwp-content%2Fuploads%2F2014%2F09%2F201409250552094395.jpg\" data-custom=\"id=abcd&amp;role=god\"></p>', '2019-08-23 10:50:07', null, '2019-08-23 10:50:07', '1164086985523675138', null, '0', '帮扶活动', '54', '57', '1', '李小鵬', '置顶', '审核通过', null, 'http://static.unicef.cn/public_static_pc/images/loop1.jpg', null, null, null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1164731782307479554', 'Day 5 | 心中的你和我', '42', '<p>眨眼之间，大通铺小队的10个成员已经在葛峪堡度过了5天，我们的支教之旅走过了一半，在这5天里，我们每一个人都分别给小朋友们带去有特色且有趣的课程，体会到身为人师的快乐和责任。</p><p>在这5天里，我们既有美好欢乐的回忆，但也遇到了挑战，但在所有成员的自我反思和共同努力之下，我们用自己的实力和方法消除了他人的误解，也克服了自己的缺点,相信在未来的日子里，我们会做得更加优秀！<img src=\"https://fdfs.baodingjl.com/group1/M00/00/0B/PM2i9F1fVJ6ANWeAAAAhmAS6Fls941.jpg\" data-custom=\"id=abcd&amp;role=god\"></p>', '2019-08-23 10:51:11', null, '2019-08-23 10:51:11', '1164086985523675138', null, '0', '帮扶活动', '54', '57', '1', '李小鵬', '置顶', '审核通过', null, 'https://fdfs.baodingjl.com/group1/M00/00/0B/PM2i9F1fVIeAYTYzAAITl7VSdAE204.jpg', null, null, null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1164732908838813697', '倡导无私奉献新风尚 谱写文明城市的新篇章', '42', '<p>   传承中华民族传统美德，张家口《辐射爱心公益团队》携社会各界爱心人士爱心接力，传递真情，特此建立爱心平台——爱心驿站</p><p><br></p><p>   4月1日起，各区县乡政村，建立70多个爱心驿站，80多个爱心车。爱心驿站服务如下：迷路儿童失联老人联络站，收集被助人信息和实地考察，免费为需要帮助的人，提供热水，热饭，无线网，雨伞，充电，临休，公厕，电话医疗应急，传递正能量信息等……<img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567138699232&di=5ad9e0c80de2d91d21bae0f5ada79c24&imgtype=0&src=http%3A%2F%2Fthumb.takefoto.cn%2Fwp-content%2Fuploads%2F2014%2F09%2F201409250552094395.jpg\" data-custom=\"id=abcd&amp;role=god\">爱心驿站总站点</p><p>爱心驿站总站长：梁泽宇</p><p>驿站编号：1号</p><p>驿站名称：辐射酒庄</p><p>驿站地址：经济开发区站前东大街龙兴润城小区南门7号底商</p><p>联系人：梁泽宇</p><p>联系电话：13833313077<img src=\"https://fdfs.baodingjl.com/group1/M00/00/0B/PM2i9F1fVauASFQUAAWCyPJ7NPE363.jpg\" data-custom=\"id=abcd&amp;role=god\"></p>', '2019-08-23 10:55:40', null, '2019-08-23 10:55:40', '1164086985523675138', null, '0', '帮扶活动', '54', '57', '1', '李小鵬', '置顶', '审核通过', null, 'https://fdfs.baodingjl.com/group1/M00/00/0B/PM2i9F1fVYeAAqzcAAFE45uJlFs173.jpg', null, null, null, '1', null, null, null);
INSERT INTO `active_info` VALUES ('1167276960533676034', '节能减排', '40', '<p>节能减排，绿色出行</p>', '2019-08-30 11:24:49', null, '2019-08-31 09:42:52', '1164074152454934530', '1164074152454934530', '0', '公益活动', '55', null, '1', '硿白', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/12/PM2i9F1oltmAeP_RAANrRK1HOF0038.jpg', '2019-08-30 11:30:00', '2019-08-31 10:00:00', null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1167281924467294210', '最美家园', '40', '<p>               保护环境 <img src=\"https://fdfs.baodingjl.com/group1/M00/00/12/PM2i9F1om3aASaCkAADQi9AmnpA433.jpg\" data-custom=\"id=abcd&amp;role=god\" width=\"246\" style=\"\"></p>', '2019-08-30 11:44:33', null, '2019-08-30 11:44:33', '1167246694075215873', null, '0', '公益活动', '55', null, '1', 'Mumutianxin', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/12/PM2i9F1om1KAWt4rAAC3zNv5-eA646.jpg', '2019-08-30 11:42:00', '2019-09-30 11:42:00', null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1167315227501101058', '为孩子课外生活扶贫', '42', '<p>这一代的孩子成长在屏幕下，电子产品成了必需品。目前中国儿童中心和社会科学文献出版社发布儿童发展报告指出电子产品已位居儿童周末及上学日的校外必需品</p>', '2019-08-30 13:56:53', null, '2019-08-30 13:56:53', '1164074152454934530', null, '0', '帮扶活动', '55', null, '0', '硿白', '未置顶', '审核不通过', null, 'https://fdfs.baodingjl.com/group1/M00/00/12/PM2i9F1ouZiANDRDAASr3Zhy_88451.jpg', null, null, null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1167629333386903553', '月饼 华美月饼礼盒中秋月饼大礼包蛋黄白莲蓉金秋月圆795g（十饼十味）', '41', '<p><img src=\"https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qPkSAYA6hAAOzTGU31u0275.jpg\"><img src=\"https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qPluADk9KAAPejROWQd8185.jpg\"><img src=\"https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qPneAe17GAA2vAjc5Ga8343.png\"><img src=\"https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qPpeABjuEAAyC05sDgFU837.png\"><img src=\"https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qPsWATaNwAAvzbp0_t4o418.png\"><img src=\"https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qPsmAN1g7AA51xeIadSg350.png\"></p>', '2019-08-31 10:45:01', '数量有限', '2019-08-31 17:33:06', '1', '1', '0', '惠民活动', '55', null, '1', 'admin', '未置顶', null, '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567254741975&di=448461e677324b7a17d766aed40a15d4&imgtype=0&src=http%3A%2F%2Fimg005.hc360.cn%2Fg8%2FM09%2F9A%2FAB%2FwKhQtlNx4kWEcnivAAAAAL3QUEI838.jpg', null, null, null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1167633918130274305', '帮助留守老人收割粮食', '42', '<p>新华网济南9月28日电（冯孔）9月28日，由新华网主办，山东省商务厅、农业厅支持，山东省电子商务促进会承办的全国农产品电商发展研讨会在济南开幕。国务院扶贫办《中国扶贫》杂志社总编辑杨永纯在会上表示，农村电商发展规模不容置疑，发展潜力突出，但发展结构仍然粗放，应该继续推进农村电商体系尤其是流通体系的发展</p>', '2019-08-31 11:03:14', null, '2019-08-31 11:03:14', '1164074152454934530', null, '0', '帮扶活动', '54', '57', '1', '硿白', '置顶', '审核通过', null, 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1p4uaAVIJCAANXLRO12h8575.jpg', null, null, null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1167712004901367809', '【动态】春日暖阳送温暖 辐射爱心在路上', '42', '<p class=\"ql-align-justify\"><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">春日暖阳送温暖&nbsp;&nbsp;辐射爱心在路上。因为有我们，雷锋城里有了永远的花季；因为有我们，充满爱的希望；我们因对生命的希望聚在一起，这一路并不孤寂；因为有我们，人生道路的脚步才不停的向前延伸坚定不移；因为有我们，生命之光才如此闪耀，花开的世界才如此光彩照人；正因为有我们，他们看到了生活的希望。</span><img src=\"https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qK-GALDrJAAKHnHzRaKw819.jpg\"><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">2019年4月28日上午，沐浴着春日的暖阳，踏着刚刚萌芽的春色，辐射爱心公益团队梁泽宇队长与赵晓晨、张煋淼、王志全、张英雨、王月梅、杨文芳、李翠英、武富强、张爱林10位爱心志愿者一起走进张家口市宣化区赵川镇大化家营村走访慰问贫困户郭伟家，看望68岁的失明老奶奶与正在上学的小朋友郭伟，志愿者们亲切的与老人交谈，问候了老人的身体状况和困难，并送上我们的慰问金。队长梁泽宇鼓励老人保重身体，积极面对生活，要相信党和政府，日子一定会越过越好。</span><img src=\"https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qLACAaeTtAAE8tv8qqps667.jpg\">随后辐射爱心志愿者们来到了郭伟所在的小学进行慰问，见到了郭伟同学的校长以及班主任深切询问孩子的学习状况，并见到了郭伟小朋友本人，鼓励孩子好好学习，有无数个爱心人士尽全力帮助你。要坚持对生活的希望，努力学习，将来成为祖国栋梁之才。</p><p class=\"ql-align-justify\">此次组织活动开展送温暖献爱心与贫困户的亲切慰问，旨在弘扬辐射爱心公益团队以及来自社会各界爱心人士的关怀和温暖，是他们的慷慨解囊才拉进了志愿者与贫困户的距离，给与他们精神上的鼓励，物质上的支撑，增强他们战胜困难、创造幸福美好生活的信心，用辐射爱心公益团队的实际行动传递春天的温暖和祝福，弘扬互帮互助、乐善好施的传统美德。<img src=\"https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qLCmAX9wnAAJ7dtlB3dQ890.jpg\"></p><p><br></p>', '2019-08-31 16:13:32', '', '2019-08-31 16:13:32', '1', null, '0', '帮扶活动', '54', null, '1', 'admin', '置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qLCmAX9wnAAJ7dtlB3dQ890.jpg', null, null, null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1167713212659593217', '不忘初心助学献爱心 牢记使命送教促发展', '42', '<p><span style=\"color: rgb(87, 107, 149);\">张家口桥东区东望山乡常峪口小学</span>&nbsp;<em style=\"color: rgba(0, 0, 0, 0.298);\">5月16日</em></p><h3 class=\"ql-align-justify\">为了加快城乡教育水平的均衡发展，缩小城乡教育水平的差距，5月16日下午，在区政府、教育局领导和青年商会的支持下，辐射爱心团队到常峪口小学开展帮扶送教献爱心活动。<img src=\"https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qLQGAa2_sAAEfKSuWETw972.jpg\">老师们带来的音乐、体育、美术等课程采用了现代化教学手段,构建多样化的高效课堂模式，赢得了师生的一致好评。</h3><h3 class=\"ql-align-justify\"><img src=\"https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qLQ6ADaWyAAJKt728Ln0275.jpg\"><img src=\"https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qLTOALytBAAKqGQuDEuY466.jpg\"><img src=\"https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qLTqAVE8AAAHJGh8guRQ992.jpg\">此次送教献爱心活动，为城乡教师搭建了一个相互交流的平台，充分发挥了教师优质资源共享的效应，切实推进了农村小学课程发展，实现了“资源共享、优势互补、共同提高” 的教育理念，为城乡教育均衡发展做出积极贡献。</h3><h3 class=\"ql-align-justify\">教师们纷纷表示感谢区政府、教育局领导和青年商会以及辐射爱心团队助教老师们为常峪口小学的教育做出的贡献，成功搭建了一个良好的教育平台，成功为常峪口小学注入了新鲜血液，让孩子们的生活过得充实而又有意义！</h3><h3 class=\"ql-align-justify\"><br></h3><p><br></p>', '2019-08-31 16:18:20', '', '2019-08-31 16:18:20', '1', null, '0', '帮扶活动', '55', null, '1', 'admin', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qLTqAVE8AAAHJGh8guRQ992.jpg', null, null, null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1168361245407637505', '雄安新区启动“益暖童心”项目', '40', '<p>关爱儿童，筑梦起航。为贯彻10部委《关于进一步健全农村留守儿童和困境儿童关爱服务体系的意见》，落实《河北雄安新区规划纲要》关于“建立健全未成年人关爱保护体系”决策部署，河北雄安新区启动“益暖童心”公益项目。该项目面向三县乡村学校开展“暖流文体包行动”“暖流多功能教室行动”“写好中国字水滴文化行动”“残疾学生关爱行动”“扶贫慰问温暖行动”“新区干部职工助力未成年人关爱保护行动”和“雄安新区校园净水计划”，首批为三县17所学校捐赠50万元设备设施，为残疾儿童及相关群体捐赠200套轮椅，为贫困生家庭提供300套慰问包，并将组织慈善组织、志愿服务组织开展农村留守儿童和困境儿童关爱行动。</p><p>雄安新区管委会公共服务局相关负责人表示，新区高度重视教育事业和未成年人健康成长，秉持公开透明原则，科学制定和完善教育规划，认真落实教育扶贫政策、儿童福利政策，不断规范政府引导、社会参与模式，充分动员社会力量参与新区扶贫事业和教育事业，切实为更多新区儿童，特别是寒门学子、困境儿童解决实际困难、助力奋发向上，为新区的孩子们、未来的主人翁撑起梦想的天空。下一步，新区将通过政府委托、项目合作、重点推介、孵化扶持等多种方式，积极培育儿童服务类的社会工作服务机构、公益慈善组织和志愿服务组织，欢迎社会组织、爱心力量、专业人士参与未成年人关爱保护事业，为开展农村留守儿童、困境儿童等工作提供专业化、精细化、精准化的服务。</p><p>据了解，雄安新区现有在校未成年学生18.3万人，教育质量、未成年人身心素质呈逐年上升趋势；建档留守儿童、困境儿童924人，建档立卡贫困户中未成年人438人，呈逐年下降趋势。“益暖童心”项目树立以儿童为中心导向，重在动员社会组织参与儿童保护，依托互联网搭建对接平台，发动包括文艺界的爱心人士参与资源筹措、服务提供、互动交流，进一步提升帮扶质量。该项目在支持乡村学校开展未成年人教育与照护的同时，将着力面向三类困境儿童开展爱心公益服务：因家庭贫困导致生活、就医、就学等困难的儿童，因自身残疾导致康复、照料、护理和社会融入等困难的儿童，因家庭监护缺失或监护不当遭受虐待、遗弃、意外伤害、不法侵害等导致人身安全受到威胁或侵害的儿童。</p><p>&nbsp;</p><p>“益暖童心”项目由雄安新区公共服务局发起，由中国社会福利基金会、北京新民社会组织能力建设促进中心、北京支持雄安产业发展促进会、深圳壹基金公益基金会、天恩蒙特梭利教育研究院、安新县慈善协会、雄县公益志愿者协会、容城县爱心志愿者协会等社会组织会同雄县、安新县、容城县教育局、民政局等部门共同实施，由腾讯公益、阿里巴巴公益、蚂蚁金服公益、新浪微公益、公益宝、新华公益、轻松公益、美团公益、善源公益、水滴公益等互联网募捐信息平台提供支持，由新华网、中国雄安官网、腾讯新闻、新浪公益、今日头条、腾讯公益基金会、青岛市众绘爱心慈善基金会、北京微爱公益基金会、水滴汇聚公益基金会、颜丹晨工作室、爱心筹、轻松筹、水滴筹、猫眼娱乐等媒体机构助力，助推雄安新区未成年人关爱保护体系建设与发展。仪式结束后，颜丹晨工作室团队与项目执行团队走进雄县双堂村，看望行动不便的困难人员。在项目执行过程中，工作人员特别注重保护儿童隐私和自尊心，恪守平等互信、尊重孩子、禁贴标签的原则，为孩子们营造一个宽松快乐的节日环境。<img src=\"https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1siM2ACNQYAAEmGOnpHJw617.jpg\" data-custom=\"id=abcd&amp;role=god\"></p>', '2019-09-02 11:13:23', null, '2019-09-02 11:19:12', '1164074152454934530', '1164074152454934530', '0', '公益活动', '55', null, '1', '硿白', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1siLiAEkXmAAEmGOnpHJw979.jpg', '2019-09-02 13:00:00', '2019-09-02 16:00:00', null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1168369853440651266', '消除婴幼儿贫血行动', '42', '<p>由于我国经济发展不平衡，加之地理环境、文化习俗、饮食习惯、膳食结构等因素，贫困地区儿童、特别是0-3岁婴幼儿存在一定程度的营养不良，导致贫血、生长迟缓等问题。根据中国疾病预防控制中心2009-2010年的调查，我国2岁以下婴幼儿贫血率为24-28%，西部贫困地区6-24月龄婴幼儿贫血率高达60%。在西南地区一些贫困县，12-24月龄婴幼儿生长迟缓率高达35.7%，为同期全国农村平均水平的2倍以上。</p><p><br></p><p>0-3岁是人的大脑发育的黄金时期。此阶段儿童营养缺乏导致的健康问题具有不可逆性，导致生长发育、学习能力和成年后的劳动生产能力等不良影响是终生的。相关研究证明，幼儿未来的潜力有一半是在4岁以前形成的，如果以17岁少年的智力发育水平为100，那么4岁时儿童就已达到其50%的智力水平，这个时期所形成的语言、认知和社会交往的能力将对孩子的终身带来影响。</p><p><br></p><p>针对贫困家庭婴幼儿发放的婴幼儿辅食营养补充品，能补充婴幼儿缺失的铁、锌、叶酸和维生素等营养物质，不但能促进大脑和神经细胞的发育，还能促进骨骼的生长发育，提高身体的免疫能力，有效的改善婴幼儿贫血状况。为此，全国妇联、卫生部、中国儿童少年基金会共同推出了“消除婴幼儿贫血行动”。通过向社会募集爱心善款，面向我国贫困地区6-36个月婴幼儿实施。2011-2013年，项目首批选择在西部11个省的70个国家扶贫开发工作重点县发放营养包，覆盖约46万名6-24个月的婴幼儿。今后根据项目资金情况将进一步覆盖至全国贫困地区婴幼儿。实施开展消除婴幼儿贫血行动，对于改善婴幼儿的营养状况，预防缺铁性贫血等问题，引导贫困家庭形成正确的饮食习惯和科学的营养观念，具有十分重要的意义。<img src=\"https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1skLiAeJrcAACyVHroXHw450.jpg\" data-custom=\"id=abcd&amp;role=god\"></p><p><br></p><p>善款说明</p><p><br></p><p>每月10元，通过发放“爱心营养包”和开展健康教育活动，改善婴幼儿的营养状况，预防缺铁性贫血等问题，引导贫困家庭形成正确的饮食习惯和科学的营养观念。</p><p><br></p><p>资费标准</p><p><br></p><p>每100元人民币的捐赠，就可为1名6-36个月贫困家庭婴幼儿提供三年的“爱心营养包”。“消除婴幼儿贫血行动”通过发放“爱心营养包”和开展健康教育活动，改善婴幼儿的营养状况，预防缺铁性贫血等问题，引导贫困家庭形成正确的饮食习惯和科学的营养观念。</p><p><br></p><p>爱心营养包介绍</p><p><br></p><p>“爱心营养包”即婴幼儿辅食营养补充品，它的营养成分配方内容是根据国家《辅食营养补充品通用标准》（GB/T22570-2008）所列营养素种类、含量及其来源的要求，具体包含铁、锌、维生素A、维生素D、维生素B1、B2、B12、维生素C和叶酸等微量营养素。发放对象为项目地区6-24个月婴幼儿，服用至婴幼儿满36个月。每盒营养包可为贫血儿童提供两个月的营养补充。</p><p><br></p><p>项目故事</p><p><br></p><p>甘肃省秦安县莲花乡上河村1岁半男孩王志豪，在5个月和10个月因病住院时，均检查出患有贫血。2012年2月，志豪奶奶从妇代会主任和村医那里领到“爱心营养包”，开始给孙子服用。孩子开始不喜欢吃，志豪奶奶想办法坚持喂，20多天后，小志豪食欲明显增加、面色也红润起来。现在已服用66天，志豪奶奶反映孙子生病减少了，睡眠好了，人也长胖了。经检测，小志豪的血红蛋白值已上升到正常范围。<img src=\"https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1skMqAP5lRAAB3q5wxink080.jpg\" data-custom=\"id=abcd&amp;role=god\"></p>', '2019-09-02 11:47:35', null, '2019-09-02 11:47:35', '1164074152454934530', null, '0', '帮扶活动', '54', '57', '1', '硿白', '置顶', '审核通过', null, 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1skJyAe9RiAABtVc-mOus677.jpg', null, null, null, '12', null, null, null);
INSERT INTO `active_info` VALUES ('1168424705780805634', '青少年打游戏不能等到成瘾再干预', '40', '<p>“未成年人的行为养成，与大人的观念和行为有直接关系，网瘾的形成同样如此。在谈及儿童对手游迷恋时，不必过于纠结于网瘾或者沉迷这个概念。首先还是得立规矩，从形成一种良好的行为引导习惯开始。”“现在，青少年游戏成瘾问题对于全世界来说都是一个很大的问题，在我国的发生率也在逐渐增加。”近日，国家卫生健康委员会召开的新闻发布会上，中国科学院院士、北京大学第六医院院长陆林指出，造成我国青少年游戏成瘾的原因主要是电子游戏可及性比较高，即很容易接触到；另外，一些青少年花在课外活动、体育活动、人际交往方面的时间在不断减少；家长、老师和孩子的沟通交流方式不够完善，也会让孩子想在游戏中寻求自我。</p><p><br></p><p>　　眼下正值中小学暑假期间，正是不少孩子“解放天性”——可以随心所欲玩游戏的时候。客观地讲，自网络游戏诞生之日起，有关沉溺游戏的危害、如何防止玩游戏成瘾等话题和争议就没有停过。尤其是近几年随着手机游戏的兴起，人们对青少年网瘾越来越关注。</p><p><br></p><p>　　其实，这些年，从监管部门到游戏平台再到教育层面，并非没有采取行动。但是，在智能手机被广泛使用的年代，防范游戏沉迷已经进入了一个新的阶段。人们的社会心态也在发生微妙变化。比较突出的一点便是，不少家长对于孩子沉迷于手游表示忧心忡忡却又无可奈何。一则，无论是游戏平台推出的防沉迷机制，还是家长的干预，都往往无济于事、防不胜防；二则，“手机保姆”现象已经具备一定的现实合理性，即手机和游戏成了一部分家长安抚和陪伴孩子的利器。在这种语境下讨论青少年游戏成瘾的话题，注定显得更复杂。而在思考对策上，也必须要更接地气。</p><p><br></p><p>　　未成年人的行为养成，与大人的观念和行为有直接关系，网瘾的形成同样如此。事实上，当我们在谈论儿童对手游的迷恋时，其实不必过于纠结于网瘾或者沉迷这个概念。首先还是得立规矩，从形成一种良好的行为引导习惯开始。比如，学校层面，小学生到底能不能带手机到学校，一定要有更明确的态度。去年，法国以立法的方式规定15岁以下的小学生在学校期间不能使用手机。当前，中国不少学校也有这样的规定，但是，到底该如何执行、家庭和学校又如何统一认识，这些都需要进一步沟通解决。</p><p><br></p><p>　　另外就是游戏平台的社会责任问题。近年来，一些游戏平台迫于监管和社会压力，在防沉迷机制建设上有一定的跟进。整体看来，游戏行业在社会当中仍存在着两种极端化的认知，一种是将之视为洪水猛兽，一种是将其看作一个“朝阳产业”，片面强调其背后的经济价值。特别是近年来游戏竞技的兴起，在一定程度上进一步弱化了对游戏行业社会责任的反思。这样一种社会认知，必然会削弱游戏开发商的社会责任履行意识。</p><p><br></p><p>　　某种程度上而言，游戏行业快速发展并在短时间内吸引庞大的玩家群体，大大影响了社会对其的理性认知和合理接受的空间。包括成人和未成年人，都有被裹挟的一面。而留守儿童群体的存在，家庭教育的缺失，又进一步助长了其在现实中的“合理性”。预防游戏沉迷，遏制网瘾，必须考虑到这种大的社会背景，否则效果注定难以高估。</p><p><br></p><p>　　今年5月，世界卫生大会把游戏障碍纳入《国际疾病分类第十一次修订本》，游戏障碍作为新增疾病，纳入“成瘾行为所致障碍”疾病单元中。这确实是对游戏成瘾的一种警示，但预防成瘾，还是要从日常的习惯引导和观念的变更开始，不能等到成瘾了再来干预。（朱昌俊）</p>', '2019-09-02 15:25:33', '', '2019-09-06 14:07:18', '1164074152454934530', '1', '0', '公益活动', '55', null, '1', '硿白', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1sw-SAE_9SAABycA3fS64889.jpg', '2019-09-02 16:00:00', '2019-09-02 17:00:00', null, '1', null, null, null);
INSERT INTO `active_info` VALUES ('1168445654957748225', '健康扶贫义诊活动', '42', '<p>早晨4点，河北省赤城县申沟村村民王登瑞就匆匆起床了，简单洗漱之后，便与老伴儿一起赶往村口，两辆前往北京回民医院免费体检的大巴车正在等待着他们。一周前，经济日报社派驻申沟村第一书记魏冠军通知，回民医院将对村民进行免费体检，呼吁大家积极参加，包括王登瑞一家在内村里共报名了100多人。</p><p><br></p><p>　　体检分组 回民医院里，在副院长兼体检科主任张娜的统一部署下，护士长王莹7点就到岗就位了，作为此次体检活动的工作组成员，她的主要职责是保障体检项目顺利完成、流程顺畅，给村民一个良好的体检感受。为此她反复踩点确认，来到体检科时她发现，该科室已经提前开诊，为的是错过日常检查高峰，在村民到达前完成已预约的及院内检查。</p><p><br></p><p>　　9点左右，两辆大巴车缓缓驶入回民医院，头戴“精准扶贫”标志帽子的村民依次下车，开始分组体检。</p><p><br></p><p>　　只要有需求，几个人都要进行</p><p><br></p><p>　　这是56岁的王登瑞第一次做全面体检，看得出来他很兴奋。 体检现场 “之前都是有不舒服了再去医院看，没有做过这些检查。”体检表上，他已经完成了外科、内科、抽血等项目检查，而他最关注的就是自己的血压情况。十年前，王登瑞就是高血压患者，“那时总感觉头疼，但是没当回事，直到说话费劲，脑袋疼得厉害才去就医，医生说是高血压。”之后他就一直靠药物维持血压稳定，此次参加体检，除了询问血压情况，他还想看看身体有没有其他隐疾。 体检现场 据回民医院医务科科长杨婧介绍，此次检查项目较为齐全，主要包括肝肾功能、血脂、肝胆胰脾B超、甲状腺B超、胸片、心电图等多发病、慢性病检查。作为协调负责人，杨婧前后准备了近一年。早在去年8月，她就带队前往申沟村义诊，但是受当地设备和条件所限，只能做一些常规检查，无法深入诊疗。回来后杨婧将这一情况向主管院长穆静等院领导进行了汇报，回民医院领导班子及院党委书记朱钢尤为重视，在朱钢看来，防远比治病重要，防病的成本也远低于治病的成本，“但是现在最大的问题是村民根本不知道自己有没有病，即使已经处在亚健康状态也会被忽视，直到发生重大疾病才会就医问诊，这样既浪费诊疗资源，又增加了政府和家庭的负担，产生因病致贫、因病返贫情况。” 体检现场 为此，回民医院与申沟村进行反复沟通，制定了多套方案，最终决定先通过体检摸查情况，建立医院、村民、村委会共享的健康档案，待分析报告出来之后，回民医院再根据村民健康情况和病情入村义诊，因人施策，并定期免费赠药、指导健康饮食，达到有病治病、无病防病的预期效果。与此同时，针对有老人看护需求的家庭，回民医院还将安排具备护理员资质的护士长进行培训，“只要有需求，哪怕只有几个人也要进行。”杨婧说。 体检现场 为了保障此次义诊活动的顺利进行，回民医院抽调了包括体检科、临床科、辅助科、检验科、诊断科、B超室在内的近30名骨干组成工作组，并临时增加了多个窗口，内科、急诊科主要负责人也随时待诊，以防检查过程中出现紧急情况。考虑到部分村民需要完成全部检查都后才能用餐，工作组成员还随身携带糖块，以防体力不支、低血糖等情况发生。</p><p><br></p><p>　　健康是第一保障 体检现场 “我们将对申沟村进行几年甚至十几年的持续性追踪诊疗，通过严格的健康管理干预，对比其与邻村在重大特病、恶性肿瘤的发生率是否有切实降低，以此撬动健康管理理念，做到防病第一。”朱钢告诉《经济》记者，近年来，回民医院一直都在周边社区服务中心进行入户疾病健康管理，在辖区内牛街社区持续追踪管理100多位居民，探索智慧型医院-社区-居家康复护理服务模式，建立智慧型医院-社区-居家互动式工作机制，组建老年康复照护服务团队，制定老年综合评估、康复护理、长期照护、慢病风险评估与管理等操作规范。 体检现场 同时，在大数据时代来临、数字化中国建设发展趋势明显的背景下，回民医院还将联通公司5G技术首次应用于健康管理工作，探索“互联网+”、5G通信网络在医院、社区和居家养老服务中各种有效应用模式，通过无线生命体征传感器，如健康监测手环、生命体征监测床垫、物联血糖测试仪、物联血氧测试仪、动态心电监测仪等，将生命体征数据由无线网络直接接入到智慧养老管理系统，进行健康管理数据采集，“让数据多跑路，群众少跑腿”，实现家庭医生和社区护士对老年人生命体征的实时监护和预警，及时全面掌握居民个人健康状况，提高患者自我管理能力，使辖区内老年患者享受医疗机构提供的连续、闭环式专业康复护理服务。</p><p><br></p><p>　　“我们还希望通过此次义诊活动为政府提供健康管理费用决策参考，该项目从启动到入村义诊预算费用10万元左右，据此可测算出该地区居民基本健康人均支出，并按照人口数测算出该区域的总体费用，进而探讨从疾病防控中分流多少费用用于健康管理，才能降低发病率，让农村居民享受到健康红利。”朱钢表示，不管从卫生经济学总费用测算层面，还是在大健康层面，健康都是第一保障。</p>', '2019-09-02 16:48:47', null, '2019-09-02 16:48:47', '1167359208637218817', null, '0', '帮扶活动', '55', null, '0', 'Judy', '未置顶', '审核不通过', null, 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1s1zqAPd6dAAC3vpxxoLo321.jpg', null, null, null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1171622626009415681', '献礼教师节', '42', '<p><img src=\"https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F14ZiiAbhTwAAH6BjnJdYU736.jpg\" data-custom=\"id=abcd&amp;role=god\">献礼教师节</p>', '2019-09-11 11:12:56', null, '2019-09-11 11:12:56', '1168438254745874434', null, '0', '帮扶活动', '55', null, '0', '罗宝龙', '未置顶', '审核不通过', null, 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F14Zh2ASYJQAAH6BjnJdYU287.jpg', null, null, null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1171626646010724354', '中秋月饼促销', '41', '<p><br></p><h1 class=\"ql-align-center\"><strong><u>待中秋佳节来临之际推出月饼促销活动！</u></strong><img src=\"https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F14ab6AIZW8AADk8uI8nA0532.jpg\"></h1><p><br></p>', '2019-09-11 11:28:55', '商品测试', '2019-09-11 11:28:55', '1', null, '0', '惠民活动', '55', null, '1', 'admin', '未置顶', null, '1', 'https://fdfs.baodingjl.com/group1/M00/00/12/PM2i9F1ouXKABK1bAAYLiW0fslY892.jpg', null, null, null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1172045256825917442', '活动详情', '42', '<p><br></p>', '2019-09-12 15:12:19', null, '2019-09-12 15:12:19', '1164086985523675138', null, '0', '帮扶活动', '55', null, '2', '李小鵬', '未置顶', '未审核', null, 'https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F15766AaENsAAVD95xrNpE373.png', null, null, null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1174563443455995906', '一键创城', '74', '<p wx:nodeid=\"62\">封面css<img src=\"https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F2DGQmATzXRAAHxS-bdvAo437.jpg\" data-custom=\"id=abcd&amp;role=god\" wx:nodeid=\"87\"></p>', '2019-09-19 13:58:42', null, '2019-09-19 13:58:42', '1164086985523675138', null, '0', '创城活动', '55', null, '1', '李小鵬', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F2DGRCAEVmRAAQ3nRzf_lc642.png', null, null, null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1176783044621312001', '学习国家制度和法律制度的形成及发展', '40', '<p>新华社北京9月24日电 中共中央政治局9月24日下午就“新中国国家制度和法律制度的形成和发展”举行第十七次集体学习。中共中央总书记习近平在主持学习时强调，新中国成立70年来，我们党领导人民不断探索实践，逐步形成了中国特色社会主义国家制度和法律制度，为当代中国发展进步提供了根本保障，也为新时代推进国家制度和法律制度建设提供了重要经验。全党要坚定道路自信、理论自信、制度自信、文化自信，继续沿着党和人民开辟的正确道路前进，不断推进国家治理体系和治理能力现代化。</p><p><br></p><p>全国人大常委会委员、宪法和法律委员会委员于志刚同志就这个问题进行了讲解，提出了意见和建议。</p><p><br></p><p>习近平在主持学习时发表了讲话。他指出，再过几天，我们将迎来中华人民共和国成立70周年。安排这次中央政治局集体学习，目的是回顾新中国成立70年来党领导人民推进国家制度和法律制度建设的历程，总结成就和经验，深入思考坚持和完善中国特色社会主义制度、推进国家治理体系和治理能力现代化的重大问题。</p><p><br></p><p>习近平强调，我们党自成立之日起就致力于建设人民当家作主的新社会，提出了关于未来国家制度的主张，并领导人民为之进行斗争。新中国成立后，我们党创造性地运用马克思主义国家学说，为建设社会主义国家制度进行了不懈努力，逐步确立并巩固了我们国家的国体、政体、根本政治制度、基本政治制度、基本经济制度和各方面的重要制度，中国特色社会主义制度不断完善，中国特色社会主义法律体系也不断健全。党的十八大以来，我们推进全面深化改革，中国特色社会主义制度日趋成熟定型，中国特色社会主义法治体系不断完善，为推动党和国家事业取得历史性成就、发生历史性变革发挥了重大作用。</p><p><br></p><p>习近平指出，中国特色社会主义国家制度和法律制度是在长期实践探索中形成的，是人类制度文明史上的伟大创造。建立什么样的国家制度，是近代以来中国人民面临的一个历史性课题。实践证明，我们党把马克思主义基本原理同中国具体实际结合起来，在古老的东方大国建立起保证亿万人民当家作主的新型国家制度，使中国特色社会主义制度成为具有显著优越性和强大生命力的制度，保障我国创造出经济快速发展、社会长期稳定的奇迹，也为发展中国家走向现代化提供了全新选择，为人类探索建设更好社会制度贡献了中国智慧和中国方案。</p><p><br></p><p>习近平强调，中国特色社会主义国家制度和法律制度，植根于中华民族5000多年文明史所积淀的深厚历史文化传统，吸收借鉴了人类制度文明有益成果，经过了长期实践检验。一是坚持党的领导的优势。70年来，正是因为始终在党的领导下，集中力量办大事，国家统一有效组织各项事业、开展各项工作，才能成功应对一系列重大风险挑战、克服无数艰难险阻，始终沿着正确方向稳步前进。二是保证人民当家作主的优势。我国国家制度深深植根于人民之中，能够有效体现人民意志、保障人民权益、激发人民创造力。三是坚持全面依法治国的优势。坚持依法治国，坚持法治国家、法治政府、法治社会一体建设，为解放和增强社会活力、促进社会公平正义、维护社会和谐稳定、确保党和国家长治久安发挥了重要作用。四是实行民主集中制的优势。在党的领导下，各国家机关是一个统一整体，既合理分工，又密切协作，既充分发扬民主，又有效进行集中。</p><p><br></p><p>习近平指出，中国特色社会主义国家制度和法律制度是一套行得通、真管用、有效率的制度体系，这是我们坚定“四个自信”的一个基本依据。中国特色社会主义国家制度和法律制度需要坚持好、实施好，也需要不断完善和发展。我们要在坚持好、巩固好已经建立起来并经过实践检验的根本制度、基本制度、重要制度的前提下，坚持从我国国情出发，继续加强制度创新，加快建立健全国家治理急需的制度、满足人民日益增长的美好生活需要必备的制度。要及时总结实践中的好经验好做法，成熟的经验和做法可以上升为制度、转化为法律。</p><p><br></p><p>习近平强调，制度的生命力在于执行。要强化制度执行力，加强制度执行的监督，切实把我国制度优势转化为治理效能。各级党委和政府以及领导干部要增强制度意识，善于在制度的轨道上推进各项事业。广大党员、干部要做制度执行的表率，引领全社会增强制度意识，自觉维护制度权威。</p><p><br></p><p>习近平指出，要加强对中国特色社会主义国家制度和法律制度的理论研究，总结70年来我国制度建设的成功经验，构筑中国制度建设理论的学术体系、理论体系、话语体系，为坚定制度自信提供理论支撑。要加强制度宣传教育，特别是要加强对青少年的制度教育，讲好中国制度故事，引导人们充分认识我们已经走出了建设中国特色社会主义制度的成功之路，只要我们沿着这条道路继续前进，就一定能够实现国家治理体系和治理能力现代化。</p><p><br></p><p><br></p>', '2019-09-25 16:58:36', null, '2019-09-25 16:58:36', '1171357319181238274', null, '0', '公益活动', '54', null, '1', '硿白', '置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F2LK26AWNBuAABksIBoes4716.jpg', '2019-09-25 17:00:00', '2019-09-25 18:00:00', null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1176794337344430081', '“不忘初心，牢记使命”主题教育', '74', '<p>近日，河北省“不忘初心、牢记使命”主题教育第一批总结暨第二批部署会议在石家庄举行，省委负责同志要求，强化实践标准，坚持把践行初心使命落实到岗位职责上，“办好一批民生实事、化解一批信访积案、整改一批安全隐患”，增强工作实效及群众获得感、幸福感和安全感。</p><p><br></p><p>日前，雄安新区启动第三批征迁安置，涉及94个村。新区同步召集容城县、雄县、安新县举行“不忘初心、牢记使命”和谐征迁动员大会，把主题教育大课堂搬到征迁一线，区县乡村组五级联动，3000多名党员、干部坚守一线。三县党员干部代表，部分乡镇、村的干部群众代表等千余人观看了《初心》宣传片和雄安新区规划建设宣传片，重温党的初心和设立雄安新区的初心。</p><p><br></p><p>“建设新区是为了让群众共享美好生活，容城农村土地征收、村庄整体搬迁等在三县中任务最重。征迁安置工作本质上是群众工作，党员干部走到群众的地头、坐到群众的炕头、进入群众的心头，征迁安置就能圆满完成。”容城县委负责同志说。</p>', '2019-09-25 17:43:28', null, '2019-09-25 17:43:28', '1171357319181238274', null, '0', '创城活动', '55', null, '1', '硿白', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F2LNr-ALxWCAADx5rK6GLQ301.jpg', null, null, null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1176798374093594626', '陕西徐香猕猴桃尝鲜价', '41', '<p><img src=\"https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F2LOmWAXDp_AAas4ajA50E622.png\"><img src=\"https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F2LOmyAMkyeAAYvAOCOmTk121.png\"><img src=\"https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F2LOm-AAir4AAFrrCrurhI539.png\"><img src=\"https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F2LOniAcqh_AAVPIF6Lgy0175.png\"></p>', '2019-09-25 17:59:31', '商品测试', '2019-09-25 17:59:44', '1', '1', '0', '惠民活动', '55', null, '1', 'admin', '未置顶', null, '1', 'https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F2LOSGAWmc5AADRAqmWvzw412.png', null, null, null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1177116292387905537', '爱国是本分也是职责', '40', '<p>1984年央视春晚，香港歌手张明敏演唱的一曲《我的中国心》，让所有炎黄子孙心潮澎湃、永久难忘。然而，近一段时间，香港部分激进示威者涂污国徽、扯下国旗丢入海中等恶劣行径，激起了包括绝大多数香港市民在内的全体中华儿女的极大愤慨，同时也从反面进一步激发了全体国人的爱国热情，许多爱国爱港民众自发组织“守护国旗行动”，升国旗、唱国歌，纷纷表达爱国之心。这充分表明，对每一个中国人来说，爱国是本分，也是职责，是心之所系、情之所归。</p><p><br></p><p>国家是人们生存繁衍之所、栖身安命之地，是人们生存发展风险的最终承担者。荀悦的“爱国如家”，贾谊的“国而忘家”，陆游的“位卑未敢忘忧国”，陶行知的“国家是大家的，爱国是每个人的本分”，我们常说的“国是千万家，有国才有家”等等至理名言，讲的都是爱国是本分、是职责的道理。在国家危难之际，许许多多中华儿女，表现出可歌可泣、感人至深的爱国壮举，就是因为他们明白覆巢之下岂有完卵的朴素道理。“天下大乱，无有安国；一国尽乱，无有安家。”祖国这个“大家”不存在了，千千万万的“小家”都将无所依归、风雨飘摇。欲安其家，必先安于国。因此，古往今来无数仁人志士所表现出来的爱国壮举，是爱国主义精神的自然流露和真情表达，充分诠释了“爱国是本分也是职责”的本质内涵。</p><p><br></p><p>爱国，是人世间最深沉、最持久的情感。爱国主义精神自古以来就流淌在中华民族的血脉之中，是我们民族精神的核心，是中华民族团结奋斗、自强不息的精神纽带。回眸历史，爱国主义始终是推动社会发展的巨大力量。近代以来，无数热血儿女立下爱国报国之志、胸怀忧国忧民之心，以国事为己任前仆后继。周恩来年少誓言“为中华之崛起而读书”，把毕生精力奉献给了祖国和人民；钱学森毅然放弃优厚待遇，克服重重困难回国锻造大国重器，铸就了国家安全盾牌；黄旭华几十年隐姓埋名，带领团队为我国核潜艇事业实现跨越式发展作出重要贡献……正是在爱国主义精神的感召激励下，一代代仁人志士上下求索、不懈奋斗，一代代青年官兵把自己的小我融入祖国的大我中，担起时代责任，在国家需要时挺身而出、誓死捍卫、不懈奋斗，为中华民族屹立于世界民族之林作出了自己应有的贡献。</p><p><br></p><p>在当代中国，热爱祖国是道德要求，也是法律义务。作为社会主义核心价值观的重要内容，爱国是我们每个人的基本道德规范；作为国家根本大法《宪法》的重要内容，爱国是我们每个公民应有的法律义务。从这个意义上讲，爱国是我们每个人的本分。一个人不爱国，甚至背叛祖国，在自己的国家、在世界上都是很丢脸的。“苟利国家生死以，岂因祸福避趋之。”我军是党领导下的人民军队，秉持爱国主义是军人的天性，巩固国防、保卫祖国是军人的天职。对新时代青年官兵而言，唯有让人生的天平始终向国家倾斜，以“无我”的选择成就“大我”的人生，才能拓展生命的价值，护佑“中华号”巨轮破浪前进、行稳致远。</p><p><br></p><p>爱国从来不是空洞的口号，更不是一时的冲动，而是一种实实在在的行动。进入新时代，复兴之路在脚下延伸，百年未有之大变局摆在眼前。今天，我国正处在由大向强发展的关键阶段，前景十分光明，挑战也十分严峻。应对重大挑战、抵御重大风险、克服重大阻力、解决重大矛盾，更加需要青年官兵高举爱国主义伟大旗帜。我们只有把爱国之情、强国之志，转化为舍我其谁的报国之行，把自己的人生理想同国家前途、民族命运紧密联系在一起，把爱国职责与本职工作有机结合起来，把爱国的本分体现在一岗一哨里，落实在一举一动中，坚定理想信念、练就过硬本领，才能在实现中国梦强军梦的时代洪流中真正担起家国大义，有效履行党和人民赋予我军的新时代使命任务，奋力谱写新时代革命军人的爱国奉献之歌。</p>', '2019-09-26 15:02:49', null, '2019-09-26 15:02:49', '1171357319181238274', null, '0', '公益活动', '55', null, '1', '硿白', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F2MYkSAPxOtAABIdUEmLOs177.jpg', '2019-09-27 09:00:00', '2019-09-27 11:30:00', null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1177120129689526274', '脱贫攻坚走进张北，怀安', '42', '<p>为贯彻党中央、国务院关于脱贫攻坚的决策部署，进一步加大对河北省张北县、怀安县旅游扶贫帮扶力度，帮助当地对接旅游企业、旅游机构等，促进旅游资源科学合理开发，助力两县脱贫攻坚和乡村振兴，9月24日至25日，文化和旅游部分别在张北、怀安两县举办旅游扶贫对接活动。</p><p><br></p><p>本次对接活动组织了金融部门、旅游机构代表，专家学者，以及17家国内知名旅游企业代表，与张北县、怀安县进行对接。中国农业银行张家口分行分别为张北县、怀安县制定《旅游扶贫综合金融服务方案》；浙江省湖州市文化广电旅游局分别与张北县、怀安县人民政府签订旅游培训合作协议，为两县提供旅游培训服务，加强旅游人才培养；中国旅游车船协会自驾游与露营房车分会分别与张北县、怀安县人民政府签订《推进自驾游精品旅游线路建设助力旅游扶贫合作意向书》；携程启动张北县、怀安县城市馆上线，帮助两县宣传推广旅游产品；中国旅游协会民宿客栈与精品酒店分会分别与张北县、怀安县人民政府签订《关于共同推动乡村民宿产业发展的合作协议》，组织协会会员与张北县、怀安县对接洽谈；文化和旅游部还帮助张北县、怀安县选聘3名理论知识深厚、实践经验丰富的旅游规划专家为旅游发展顾问，指导两县做好旅游发展规划策划。对接活动期间，旅游机构、旅游企业代表听取了张北县、怀安县旅游资源推介，实地考察了两县重点旅游项目，与有关方面进行合作洽谈。</p><p><br></p><p>据了解，近年来，文化和旅游部将旅游扶贫工作提升到事关全局的战略高度来推进，主动谋划乡村旅游扶贫工作，以更实的作风、更硬的举措、更优的模式攻坚克难，切实加大对贫困地区的旅游扶贫支持力度，推出了务实举措、取得了切实成效。</p>', '2019-09-26 15:18:03', null, '2019-09-26 15:18:03', '1171357319181238274', null, '0', '帮扶活动', '54', '57', '1', '硿白', '置顶', '审核通过', null, 'https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F2MZeSAYCZsAAEvcrEfFP4418.jpg', null, null, null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1177122358836273153', '绿水青山新画卷！湖南走上生态良好发展之路', '74', '<p><img src=\"https://boot-source.xuexi.cn/qgh/imgs/gonggao/hunan-2.png\"></p><p class=\"ql-align-justify\"><strong>走上生态良好发展之路</strong></p><p class=\"ql-align-justify\"><strong>湖南省水质达标率94.5%，空气质量优良率85.4%</strong></p><p class=\"ql-align-justify\">9月24日，湖南省政府新闻办召开湖南省庆祝新中国成立70周年系列新闻发布会第10场，湖南省生态环境厅发布新中国成立70年来湖南省生态文明建设成就。</p><p class=\"ql-align-justify\">70年来，在党中央的正确指引下，特别是党的十八大将生态文明建设纳入“五位一体”总体布局和“四个全面”战略布局以来，湖南省认真践行习近平生态文明思想，牢固树立生态优先、绿色发展的理念，加快实行绿色生产生活方式，走上了生产发展、生活富裕、生态良好的健康发展之路。</p><p class=\"ql-align-justify\">70年来，湖南省上下生态环境保护认识跨越式提升，生态环境保护事业从无到有，生态环境保护工作力度空前，生态环境保护法律制度日臻完善，生态环境质量实现根本性提升。与湖南省环境质量最差的1996年相比，2018年湖南省GDP由2540亿元跃升至3.64万亿元，但工业废水排放量由14.49亿吨降至3.27亿吨;水环境监测断面由81个增至345个，其中达标的Ⅰ至Ⅲ类水质占比由27.1%提升至94.5%;湖南省空气质量优良率达到85.4%，5个城市的空气环境质量达到国家二级标准。</p><p class=\"ql-align-justify\"><strong>绿水青山新画卷</strong></p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-justify\">9月24日，湖南省政府新闻办召开湖南省庆祝新中国成立70周年系列新闻发布会第10场，湖南省生态环境厅党组书记、厅长邓立佳，副巡视员向建福发布新中国成立70年来湖南省生态文明建设成就。</p><p class=\"ql-align-justify\">70年来，在中国共产党的领导下，特别在习近平生态文明思想指引下，湖南省恢复和改善了环境质量，走上了生产发展、生活富裕、生态良好的健康发展之路。</p><p class=\"ql-align-justify\"><strong>生态环境保护认识跨越式提升</strong></p><p class=\"ql-align-justify\">新中国成立的70年间，人与自然关系的改变，超过以往历史时期的总和，我国经历了从农耕文明到工业文明再到生态文明三个阶段的历史跨越。</p><p class=\"ql-align-justify\">回望新中国成立之初，湖南省以农业生产为主，在相当长一段时间对自然资源产生过度依赖，这也导致了围湖造田和毁林开山等事件的发生。</p><p class=\"ql-align-justify\">工业生产快速发展，“靠山吃山，有水快流”成为上世纪80年代典型的认识和做法。乡镇企业雨后春笋般兴起，湖南省各地“村村点火、户户冒烟”，粗放式发展带来一系列资源破坏和环境污染问题。至上世纪90年代中期，湖南省主要河流断面水质达标率低至30%以下，湘江成为全国重金属污染最为严重的河流。</p><p class=\"ql-align-justify\">面对层出不穷的环境问题，湖南省上下开始思考人与自然的关系。1992年，环境保护工作首次纳入湖南国民经济和社会发展年度计划;1996年，湖南省政府印发《关于进一步加强环境保护工作的决定》，当年关闭乡镇企业1287家;1999年，部分长沙市民自发组织护卫“白沙井”行动，这是湖南省首例环保公益重大行动。</p><p class=\"ql-align-justify\">上世纪90年代以来，在党中央的正确指引下，可持续发展观、科学发展观逐渐树立，特别是党的十八大将生态文明建设纳入“五位一体”总体布局和“四个全面”战略布局以来，湖南省认真践行习近平生态文明思想，牢固树立生态优先、绿色发展的理念，加快实行绿色生产生活方式，形成了尊重自然、顺应自然和保护自然的新认识。</p><p class=\"ql-align-justify\"><strong>生态环境保护事业从无到有</strong></p><p class=\"ql-align-justify\">上世纪70年代，生态环境问题摆上湖南省经济社会议事日程。1972年8月，湖南省成立第一个生态环境保护机构——省基本建设领导小组办公室所属“三废”治理组。</p><p class=\"ql-align-justify\">此后，省级环保机构经历了湖南省环境保护办公室(1979年)、湖南省环境保护局(1984年)、湖南省环境保护厅(2009年)、湖南省生态环境厅(2018年)4次“升级”，从一个仅3个人的“三废”治理组发展成为湖南省政府组成机构，如今湖南省生态环境系统干部职工达1万多人。</p><p class=\"ql-align-justify\">通过历次机构改革，生态环境部门主要职能从过去的环保行政审批和环境执法，逐渐变成统一监管部门，对生态环境保护统一行使规划、政策、标准、监测、执法、督察等职能，监管范围从工业企业向统筹山水林田湖草系统治理全面拓展，从行政审批、环境执法向环保督察等监管、监测、执法各方面全面延伸。</p><p class=\"ql-align-justify\">党的十八大以来，湖南省加快推进环境保护责任的“一岗双责”和“党政同责”。2015年，湖南省在全国率先出台环境保护工作责任制度，实施党委、人大、政府、政协及(纪检)监察、审判、检察机关等各级各部门环境保护责任的全覆盖，同时加快落实企业环境责任和公民社会责任，全社会共同参与生态环境保护工作的基本格局和氛围逐渐形成。</p><p class=\"ql-align-justify\"><strong>生态环境保护工作力度空前</strong></p><p class=\"ql-align-justify\">党中央、国务院始终关怀湖南生态环境治理工作。</p><p class=\"ql-align-justify\">1978年，中共中央提出“治理水域污染，湘江要先行一步”;1980年，《湘江污染综合防治的研究》列入当年全国重大科研课题，湖南省环境基础工作走在全国前列。</p><p class=\"ql-align-justify\">从1988年起往后10年里，在国家部委支持下，湖南省争取1亿美金日元贷款，完成22个水污染治理项目;2011年国务院批复同意《湘江流域重金属污染治理方案》，湘江流域为全国重金属污染治理作出了示范。</p><p class=\"ql-align-justify\">党的十八大以来，湖南省第十一次党代会提出“生态强省”发展目标，在习近平生态文明思想的指引下，贯彻新发展理念，坚持系统治理，实施全方位、全地域和全过程整治。</p><p class=\"ql-align-justify\">持续推进湘江保护和治理“一号重点工程”。在改革开放以来治理湘江流域水污染的基础上，从2013年起实施湘江保护与治理“一号重点工程”，通过三个“三年行动计划”，全流域推进治矿、治砂、治污，全面推进农村面源污染整治和畜禽养殖退养。目前，湘江流域实施重点治理项目3068个，株洲清水塘区域261家企业和湘潭竹埠港区域28家企业全部关停，三十六湾、锡矿山等一度沦为濯濯童山的百年老矿变得绿意盎然。</p><p class=\"ql-align-justify\">保护好“长江之肾”洞庭湖。近几年大力实施洞庭湖水环境综合治理，推动黑臭水体治理、畜禽养殖粪污处理、沟渠塘坝清淤、湿地功能修复等“四个全覆盖”，在饮用水水源地保护、污水处理、采砂等方面出台“十条禁止性措施”。在洞庭湖全部拆除矮围网围，全面清理自然保护区核心区欧美黑杨。2018年4月，习近平总书记到岳阳考察时，看到了白鹭翱翔、麋鹿嬉戏、江豚腾跃的美丽画面。</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-justify\">7月30日，长沙西湖公园，蓝天白云倒映在湖水中，相映成趣</p><p class=\"ql-align-justify\">加大湖南境内163公里长江岸线的保护力度。严格清理非法侵占水域岸线建设项目，关闭了42个非法砂石码头，开展排污口、化工污染、固体废物等专项治理。</p><p class=\"ql-align-justify\">致力长株潭大气污染联防联控。近年来，湖南省大力推进蓝天保卫战，减少工业源大气污染物排放，淘汰完成区域内黄标车和老旧车辆，加快推进餐厨油烟治理，积极应对重污染天气等。2018年，长株潭区域PM2.5、PM10平均浓度分别较2015年下降17.9%、20.3%;优良天数比例较2015年上升3个百分点。</p><p class=\"ql-align-justify\">打好污染防治攻坚战“夏季攻势”。自2017年以来，每年发起污染防治攻坚战“夏季攻势”，紧盯中央生态环保督察及“回头看”等问题整改，紧盯百姓反映强烈的环境污染问题解决。2019年“夏季攻势”正在推进的治理项目有1300多个。</p><p class=\"ql-align-justify\"><strong>生态环境保护法律制度日臻完善</strong></p><p class=\"ql-align-justify\">湖南省生态环境保护事业，始终坚持法律制度引领。</p><p class=\"ql-align-justify\">1981年，湖南省出台第一部生态环境地方立法——《湖南省环境保护暂行条例》，1994年修订为《湖南省环境保护条例》。</p><p class=\"ql-align-justify\">此后，大气污染防治实施办法、湘江流域水污染防治条例、机动车排气污染防治条例等一系列相关地方性法律法规陆续出台。</p><p class=\"ql-align-justify\">党的十八大以来，湖南省生态环境立法进程加快，质量提高，修订和出台了《湖南省湘江保护条例》《湖南省实施〈中华人民共和国固体废物污染环境防治法〉办法》《湖南省大气污染防治条例》《湖南省饮用水水源保护条例》等。</p><p class=\"ql-align-justify\">法治的力量在于执行。湖南省持续组织《水污染防治法》《大气污染防治法》等执法检查，形成由湖南省人大牵头的“三湘环保世纪行”等集环境执法、普法、宣传于一体的品牌执法行动。</p><p class=\"ql-align-justify\">湖南省环境立法和执法实践，为完善健全国家生态环境法律制度作出了贡献。如，写进2014年版《环保法》的各级人民政府向人大汇报生态环保工作制度，湖南省早在上个世纪90年代就在张家界市开始实施。</p><p class=\"ql-align-justify\"><strong>生态环境质量实现根本性提升</strong></p><p class=\"ql-align-justify\">70年来，湖南省生态环境质量呈现由好变坏、再由坏到好的过程。</p><p class=\"ql-align-center\"><br></p><p class=\"ql-align-justify\">2018年5月28日，湘潭市岳塘区竹埠港，搬迁后的厂区披上了绿装</p><p class=\"ql-align-justify\">数据是最好证明。通过选取1996年(环境质量最差)、2000年(新世纪之始)和2018年这3个时间节点，湖南省环境质量的显著变化一目了然。</p><p class=\"ql-align-justify\">1996年，湖南省GDP为2540亿元，工业废水排放量14.49亿吨。湖南省水环境监测断面81个，达标的Ⅰ至Ⅲ类水质占比27.1%;不达标的Ⅳ类、Ⅴ类占比超过72%。</p><p class=\"ql-align-justify\">2000年，湖南省GDP为3551.49亿元，工业废水排放量11.26亿吨。湖南省水环境监测断面79个，Ⅰ至Ⅲ类水质占比39.69%;不达标率持续下降，Ⅳ类、Ⅴ类降至6成左右。全省14个市州中，空气环境质量二级优良以上城市比例为17.7%。</p><p class=\"ql-align-justify\">2018年，湖南省GDP跨上3.64万亿元新台阶，通过绿色生产与环保设施不断完善，工业废水排放量降至3.27亿吨。湖南省水环境监测断面增至345个，Ⅰ至Ⅲ类水质达94.5%;Ⅴ类水质降到0.5%。湖南省空气环境质量达到国家二级标准的城市达5个，占35.7%。</p><p class=\"ql-align-justify\"><strong>◎答记者问</strong></p><p class=\"ql-align-justify\"><strong>水更清 天更蓝 地更净</strong></p><p class=\"ql-align-justify\"><strong>——湖南省生态环境厅负责人答记者问</strong></p><p class=\"ql-align-justify\">9月24日，在湖南省政府新闻办召开的第10场湖南省庆祝新中国成立70周年系列新闻发布会上，湖南省生态环境厅负责人回答了记者提问。</p><p class=\"ql-align-justify\">问：湖南省如何守护好一江碧水、重新实现“鱼翔浅底”“水清岸绿”?</p><p class=\"ql-align-justify\">答：上个世纪末，湖南省经济发展居全国中游，但废水排放总量和重金属排放量均居全国第三。2018年，湖南省控断面Ⅰ-Ⅲ类水质断面占94.5%;今年上半年湖南省4个市州进入全国地表水考核前30名。湖南省水环境质量发生的巨大变化，源自以下几个方面的努力。</p><p class=\"ql-align-justify\">党的十八大以来，湖南省坚持“绿水青山就是金山银山”的发展理念，积极推动产业结构调整和转型升级。明确湘江干流两岸各20公里范围内不得新建化学制浆、造纸、制革和外排水污染物涉及重金属的项目。持续推进污染物减排，2018年湖南省化学需氧量、氨氮排放量同比2015年分别下降7.88%、12.9%。</p><p class=\"ql-align-justify\">历届湖南省委、省政府始终以“一湖四水”为重点，把治理水污染、保障水生态安全作为环境保护的头等大事。尤其是对湘江与洞庭湖保护，湖南省专门立法，出台行政规章和专项计划，成立高规格的湘江保护和治理委员会。湖南省委书记杜家毫、省长许达哲多次实地调研督导，15位省级领导分别担任“一湖四水”及主要支流省级河长。</p><p class=\"ql-align-justify\">清还环保旧账，加快补齐治理短板。2000年前，湖南省仅有4家污水处理厂，治污设施严重不足。近年来，湖南省加快推进城乡环境治理基础设施建设，建成县以上城市生活污水处理厂157座，地级城市污水处理率达到95.53%，县级城市污水处理率达到92.67%;建成乡镇污水处理厂309座。此外，湖南省建成城镇生活垃圾无害化处理场109座，126个县市区全部启动农村环境连片整治，144处省级工业园区全部建成或配套污水集中处理设施。</p><p class=\"ql-align-justify\">完善制度建设，夯实支撑保障。湖南省在“一湖四水”全面实施流域生态补偿机制，加快推进生态环境损害赔偿、排污权交易改革，加大水环境治理产业支撑等。</p><p class=\"ql-align-justify\">问：湖南省如何改善大气环境质量，让繁星闪烁、蓝天重现?</p><p class=\"ql-align-justify\">答：湖南省大气环境质量问题从1958年起开始出现，主要是工业废气和粉尘。到2010年前后全国性雾霾出现，湖南省大气环境质量降至历史最低点。与之相对应，湖南省大气环境治理也是从工业污染的初期治理，到废气综合利用，并逐步过渡到目前重点污染物治理和区域环境综合整治。</p><p class=\"ql-align-justify\">抓住“四个重点”——重点行业综合整治、重点因子精细监管、重点区域联防联控、重点时段有效应对。强力推进水泥、火电、钢铁等涉气重点行业清洁生产和实施特别排放限值;严控工程建设扬尘、道路扬尘;2013年以来共淘汰黄标车和老旧车辆51.1万辆。</p><p class=\"ql-align-justify\">优化“四大结构”——优化产业结构、调整能源结构、改进运输结构、改善用地结构，全面推进绿色发展。2018年湖南省二氧化硫和氮氧化物排放量较2010年累计削减了38%、30.7%。</p><p class=\"ql-align-justify\">强化“四项支撑”——加大执法督察、强化联防联控、提升科技创新、大力宣传引导。排污许可、信息公开、黑名单、资金奖补等制度更加健全，源头严控、过程严管、后果严惩的全过程管理更加规范。</p><p class=\"ql-align-justify\">实现“四个明显”——相比2015年，2018年湖南省PM2.5、PM10平均浓度分别下降24.1%、20.5%;空气优良天数比例增加7.6个百分点，优良天数累计增加433天，重污染天数累计减少20天，实现了PM2.5浓度明显降低、重污染天数明显减少、大气环境质量明显改善、蓝天幸福感明显增强的目标。</p><p class=\"ql-align-justify\">问：新中国成立以来，湖南省如何保护土壤环境?</p><p class=\"ql-align-justify\">答：湖南是“有色金属之乡”和农业大省，历史遗留的土壤重金属污染整治任务繁重，湖南省把土壤环境质量作为“米袋子”和“菜篮子”的关键要素，开展了大量卓有成效的工作。</p><p class=\"ql-align-justify\">强化思想引领，切实提高认识。湖南省认真落实“土十条”、《土壤污染防治法》，湖南省委书记大力推动以重金属及土壤污染治理为重点的湘江保护和治理“一号重点工程”;省长挂帅负责省生态环境保护委员会，指挥土壤污染防治等环境治理工作。</p><p class=\"ql-align-justify\">紧抓机遇，完善机制体制。湖南省把三十六湾、水口山、清水塘、锡矿山和竹埠港重点工业区域土壤环境污染治理纳入“一号重点工程”，并带动其他矿山和污染农田治理。实施湖南省土壤污染治理与修复、重点区域整治重大工程，将土壤污染防治纳入市州政府绩效考核内容。</p><p class=\"ql-align-justify\">坚持问题导向，综合施策。聚焦问题，对污染严重的常德石门雄黄矿区、花垣县等地区实施整治;关注重点，建立883个涉重金属行业企业的全口径统计清单、1325家企业的涉镉污染源排查清单和365家企业的整治清单;严格准入，建立疑似污染地块名单和污染地块名录，即将发布建设用地土壤污染风险管控和修复治理名录;强化管理，动态更新土壤重点监管企业名单;先行先试，常德成为全国6个土壤污染综合防治先行区之一，湘潭等4市开展湖南省级试点。2018年湖南省受污染耕地安全利用面积新增100万亩;完成1.1万个行政村农村环境综合整治任务，占总任务数的84.6%。</p><p class=\"ql-align-justify\">作者单位：湖南日报社</p><p class=\"ql-align-justify\">责任编辑：王小卫</p><p><br></p>', '2019-09-26 15:26:55', '', '2019-09-26 15:26:55', '1', null, '0', '惠民活动', '55', null, '1', 'admin', '未置顶', null, null, 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1622937473,3614891355&fm=26&gp=0.jpg', null, null, null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1177125158056042498', '河北枣强扶贫谷子富农家', '42', '<p>9月19日，枣强县马屯镇桑家庄村的村民在谷子地里劳作。 近年来，河北省枣强县在实施精准扶贫工程中，引入“托管式订单种植”模式，发展谷子规模种植。由托管公司统一指导技术、统一播种、统一收割、统一收购，实现了从种到收“一条龙服务”。目前，该县已发展“扶贫谷子”3500亩，带动1000余名农民增收。</p><p><img src=\"https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F2MatCAAxL3AAP6KDITZks311.jpg\" data-custom=\"id=abcd&amp;role=god\"></p><p><br></p>', '2019-09-26 15:38:02', null, '2019-09-26 15:38:02', '1171357319181238274', null, '0', '帮扶活动', '54', '57', '1', '硿白', '置顶', '审核通过', null, 'https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F2MataAU-WhAALKHBAkMQQ694.jpg', null, null, null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1177125379985055745', '国庆游行联欢活动亮点纷呈', '74', '<p class=\"ql-align-justify\">记者25日从庆祝新中国成立70周年活动新闻中心举行的第二场专题集体采访中获悉：庆祝新中国成立70周年群众游行活动以“同心共筑中国梦”为主题，由约10万名群众、70组彩车组成36个方阵和3个情境式行进；联欢活动将于10月1日晚8时在天安门广场举行，总时长90分钟，由主题表演、中心联欢表演、群众联欢、烟花表演4个功能表演区组成。</p><p class=\"ql-align-justify\">庆祝大会服务保障和群众游行指挥部执行指挥张革介绍，群众游行以时间为轴线分为“建国创业”“改革开放”“伟大复兴”3个部分，沿长安街由东向西通过天安门核心区，与人民一道共同回顾中华人民共和国成立、推进改革开放和中国特色社会主义事业、中国特色社会主义事业进入新时代的历史进程。参加游行的群众涵盖各族各界、各行各业，游行方阵融入了具有鲜明时代特色的音乐编配、舞蹈编排、道具设计及雕塑创作等元素。“这次群众游行整体设计是叙事性和主题性相结合。”群众游行总导演肖向荣介绍，将通过小故事、小画面和音乐的串联，展现70年中国人民建设奋斗的壮美画卷。</p><p class=\"ql-align-justify\">联欢活动指挥部联欢演出部常务副部长庞微介绍，此次联欢活动呈现主题表演、中心联欢表演、群众联欢、烟花表演、表演台表演、大型装置和光艺七大看点。主题表演主要承载重大主题呈现，是联欢活动的核心呈现、重要亮点和创新之处，分《红旗颂》《我们走在大路上》《在希望的田野上》《领航新时代》4个章节。中心联欢表演以各地特色群众文化展示为主，精选《我和我的祖国》等16首歌曲由全场联欢群众合唱。在主题表演区东西两侧共设立10个群众联欢区块，编排各具风格的歌舞，形成盛大的联欢场面。烟花表演通过高空、中空、低空烟花燃放和特殊烟花装置表演，分拨次、多新意地展现烟花艺术的魅力，并配合联欢活动，形成地空一体的绚丽场景。千人交响乐团和千人合唱团将亮相表演台表演。在联欢活动开场时，还将通过大型装置配合主题表演。天安门城楼、人民大会堂、国家博物馆等广场周围建筑的亮化工程，也将运用高新技术设备，营造大气磅礴、动感十足、色彩绚丽的联欢场面。</p><p class=\"ql-align-justify\">庆祝活动前期已招募和培训16万余名志愿者。（作者系人民日报记者）</p><p class=\"ql-align-justify\">责任编辑：侯海英</p><p><br></p>', '2019-09-26 15:38:55', '', '2019-09-26 15:38:55', '1', null, '0', '惠民活动', '54', null, '1', 'admin', '置顶', null, null, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2204789148,2093768974&fm=26&gp=0.jpg', null, null, null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1183297805273997313', '测试活动', '40', '<p>测试</p>', '2019-10-13 16:25:56', null, '2019-10-13 16:25:56', '1167042162204594177', null, '0', '公益活动', '55', null, '1', '(^_^)', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/19/PM2i9F2i346AOlxzAAPpyuquenU640.jpg', '2019-10-12 16:25:00', '2019-10-14 16:24:00', null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1183313710217371650', '公益一小时', '40', '<p>2019年10月13日，下午五点再商务街做维护交通秩序志愿者</p>', '2019-10-13 17:29:08', null, '2019-10-13 17:29:08', '1176766226590478338', null, '0', '公益活动', '55', null, '1', '小茉莉', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/19/PM2i9F2i7gqAFinoAACy4wHzdyg216.jpg', '2019-10-13 17:22:00', '2019-10-13 17:30:00', null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1183665821471940610', '捡烟头', '40', '<p><br></p>', '2019-10-14 16:48:18', null, '2019-10-14 16:48:18', '1176766226590478338', null, '0', '公益活动', '55', null, '1', '小茉莉', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/1B/PM2i9F2kNlGAMJe1AAEajimSimQ480.jpg', '2019-10-14 16:47:00', '2019-10-14 18:48:00', null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1183962649895575553', '测试活动', '40', '<p>测试活动<img src=\"https://fdfs.baodingjl.com/group1/M00/00/1B/PM2i9F2lSryAbIbkAAFQGZTfnDA606.jpg\" data-custom=\"id=abcd&amp;role=god\"></p><p><br></p>', '2019-10-15 12:27:47', null, '2019-10-15 12:27:47', '1167042162204594177', null, '0', '公益活动', '55', null, '1', '(^_^)', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/1B/PM2i9F2lSp6AEf0ZAAHmrlp8ZPk669.jpg', '2019-10-14 12:26:00', '2019-10-14 12:28:00', null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1184001648215400449', '紧密结合教育实际 着力解决突出问题', '40', '<p wx:nodeid=\"86\">6月21日，教育部党组理论学习中心组召开“不忘初心、牢记使命”主题教育集中学习研讨扩大会。教育部党组书记、部长、部主题教育领导小组组长陈宝生主持会议并作总结讲话。中央“不忘初心、牢记使命”主题教育第十九指导组组长裘援平出席会议并讲话。</p><p wx:nodeid=\"129\"><br wx:nodeid=\"130\"></p><p wx:nodeid=\"127\">　　陈宝生指出，教育部认真学习贯彻习近平总书记在中央主题教育工作会议上的重要讲话和中央主题教育《意见》精神，在中央主题教育领导小组的领导及第十九指导组的指导下，紧密结合教育实际，着力突出教育特色，扎实推进直属机关主题教育各项工作。坚持在读原著上用心、在重研讨上强化、在广泛学上聚力，深入推动学习贯彻习近平新时代中国特色社会主义思想特别是习近平总书记关于教育的重要论述往深里走、往心里走、往实里走，自觉做到用“四个意识”导航、用“四个自信”强基，用“两个维护”铸魂；坚持“奔着问题去”，“把‘改’字贯穿始终”，强力推动解决中央关心、群众关切、社会关注的教育热点难点问题；坚持以好的作风开展主题教育，坚决防止形式主义，主题教育实现了起好头、开好局、迈好步。</p><p wx:nodeid=\"133\"><br wx:nodeid=\"134\"></p><p wx:nodeid=\"131\">　　陈宝生强调，安排“教育报国守初心，走好新的长征路”“立德树人担使命，发展更加公平更有质量的教育”“落实全面从严治党要求，建强基层党组织”三个集中研讨学习专题，目的就是结合教育实际、结合教育部直属机关工作实际，深化认识、推动解决教育改革发展中的三个主要问题。“教育报国”回答的是“为什么办教育、为谁办教育”的问题，“立德树人”回答的是“培养什么人、怎样培养人、为谁培养人”的问题，“党的全面领导”回答的是“谁是领导力量、靠谁保障”的问题。</p><p wx:nodeid=\"137\"><br wx:nodeid=\"138\"></p><p wx:nodeid=\"135\">　　陈宝生要求，教育战线要全面完成主题教育各项任务，着力解决几个关键性问题，持续推进主题教育走向深入，取得实实在在的效果。一是学习教育防止大而空。要聚焦初心和使命，读原著、学原文、悟原理，用习近平新时代中国特色社会主义思想武装头脑、指导实践、推动工作，解决教育改革发展面临的突出问题。二是调查研究防止乱而庸。要优化调研内容，改进调研方式，善用身边资源，抓住关键问题，务求取得实效，避免调研主题一窝蜂、调研题目平庸化、调研活动打乱仗。三是检视问题防止轻而偏。要把自己摆进去，检视党性修养的关键问题、教育改革发展的突出问题、触及灵魂的根本问题，紧紧围绕初心和使命，不能轻描淡写，不能偏离方向。四是整改落实防止小而散。要聚焦主要矛盾和矛盾的主要方面，围绕落实使命的热点难点问题，集中精力抓整改，集中力量打攻坚战。五是加强领导防止软而虚。领导干部要把初心、使命、责任立起来，把思想范畴和工作范畴的整改有机结合起来，认清自身在主题教育中担负的职责和使命，敢于动真碰硬，力戒形式主义。六是宣传报道防止假而平。要实实在在反映主题教育进展的情况、取得的经验、进行的探索，少点“水分”，少点“添加剂”，为主题教育营造良好的氛围和环境。</p><p wx:nodeid=\"141\"><br wx:nodeid=\"142\"></p><p wx:nodeid=\"139\">　　裘援平指出，初心和使命贯穿于我们党的全部理论和实践之中，贯穿于实现中华民族伟大复兴的进程之中，贯穿于习近平新时代中国特色社会主义思想之中，贯穿于中国共产党人的成长历程之中，贯穿于我们现在正在做的事情之中。要坚持读原著、学原文、悟原理，进一步深入学习领会习近平新时代中国特色社会主义思想，知其然并知其所以然，树牢“四个意识”，坚定“四个自信”，做到“两个维护”；要联系实际，深入思考，带着真情实感学，带着使命任务学，带着问题难题学，做到入脑入心入行；要对照初心和使命，审视入党的动机和工作的动力，坚守为人民服务和为远大目标奋斗的价值追求，把对初心和使命的认识转化为内心的信念和外在的行动；要深化对新时代初心和使命的理解，结合当前形势，找准问题，攻坚克难，扎实做好社会关注度高、人民群众热切期盼的事情，把学习的成果转化为办好人民满意教育的决心和意志，升华为建设教育强国的使命担当。</p><p wx:nodeid=\"145\"><br wx:nodeid=\"146\"></p><p wx:nodeid=\"143\">　　会上，教育部党组成员结合分管工作实际和个人思想实际，围绕三个专题作交流发言。中央“不忘初心、牢记使命”主题教育第十九指导组成员，在京部党组全体成员出席会议。机关司局级干部、直属单位主要负责同志列席会议。</p><p wx:nodeid=\"147\"><br wx:nodeid=\"148\"></p>', '2019-10-15 15:02:45', null, '2019-10-15 15:02:45', '1164086985523675138', null, '0', '公益活动', '55', null, '1', '李小鵬', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/1B/PM2i9F2lbxCAQnSHAAG58Zp4Gpo523.jpg', '2019-10-15 02:00:00', '2019-11-15 03:03:00', null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1186826714430013442', '测试打卡定位', '40', '<p>测试打卡定位</p>', '2019-10-23 10:08:34', null, '2019-10-23 10:08:34', '1164086985523675138', null, '0', '公益活动', '55', null, '1', '李小鵬', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2vth-ASyBeAAAhGDja1d4317.jpg', '2019-10-23 10:00:00', '2019-10-23 18:00:00', null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1186828591116812289', '测试打卡定位活动', '40', '<p>测试打卡定位活动</p>', '2019-10-23 10:16:01', null, '2019-10-23 10:16:01', '1164086985523675138', null, '0', '公益活动', '55', null, '1', '李小鵬', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2vt8-ALlAdAAWludScgkQ396.png', '2019-10-23 10:00:00', '2019-10-23 18:00:00', null, '0', null, '115.55833', '38.88012');
INSERT INTO `active_info` VALUES ('1186832752780738562', '111111111', '40', '<p>21111111111111</p>', '2019-10-23 10:32:33', null, '2019-10-23 10:32:33', '1164086985523675138', null, '0', '公益活动', '55', null, '1', '李小鵬', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2vu7CAPKmOAAzbMfxPlfA745.png', '2019-10-23 11:00:00', '2019-10-23 17:00:00', null, '0', null, '115.55833', '38.88012');
INSERT INTO `active_info` VALUES ('1186851322378027010', '1111', '40', '<p>呜呜呜呜</p>', '2019-10-23 11:46:21', null, '2019-10-23 11:46:21', '1186850996728070145', null, '0', '公益活动', '55', null, '1', 'Nirvana', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2vzPyAYE-dAACeasgfvlU172.jpg', '2019-10-23 11:45:00', '2019-10-23 18:45:00', null, '0', null, '115.56526184082034', '38.875560760498054');
INSERT INTO `active_info` VALUES ('1186853666016690178', '位置', '40', '<p>去</p>', '2019-10-23 11:55:39', null, '2019-10-23 11:55:39', '1186850996728070145', null, '0', '公益活动', '55', null, '1', 'Nirvana', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2vzy6ADAqGAACeasgfvlU950.jpg', '2019-10-23 11:54:00', '2019-10-23 18:50:00', null, '0', null, '115.55794348158938', '38.879737776995164');
INSERT INTO `active_info` VALUES ('1186883604354662401', '1111', '40', '<p>1111</p>', '2019-10-23 13:54:37', null, '2019-10-23 13:54:37', '1186850996728070145', null, '0', '公益活动', '55', null, '1', 'Nirvana', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2v6xuAA6_KAACVdEEyW2w936.jpg', '2019-10-23 13:53:00', '2019-10-23 17:53:00', null, '0', null, '115.55901336669922', '38.879398345947266');
INSERT INTO `active_info` VALUES ('1186886546054938626', '凄凄切切群群群群群群群群', '40', '<p>呜呜呜呜呜呜呜呜</p>', '2019-10-23 14:06:19', null, '2019-10-23 14:06:19', '1186850996728070145', null, '0', '公益活动', '55', null, '1', 'Nirvana', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2v7dmAR8LkAAzbMfxPlfA205.png', '2019-10-23 18:00:00', '2019-10-23 23:00:00', null, '0', null, '115.49709', '38.88256');
INSERT INTO `active_info` VALUES ('1186897162257793026', '1', '40', '<p>1</p>', '2019-10-23 14:48:30', null, '2019-10-23 14:48:30', '1186850996728070145', null, '0', '公益活动', '55', null, '1', 'Nirvana', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2v97iAL1i3AAWludScgkQ666.png', '2019-10-23 17:03:00', '2019-10-23 23:04:00', null, '0', null, '115.49715', '38.88353');
INSERT INTO `active_info` VALUES ('1186897439056691201', '1', '40', '<p>1</p>', '2019-10-23 14:49:36', null, '2019-10-23 14:49:36', '1186850996728070145', null, '0', '公益活动', '55', null, '1', 'Nirvana', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2v9_6ARam-AAzbMfxPlfA755.png', '2019-10-23 12:00:00', '2019-10-23 13:49:00', null, '0', null, '115.49709', '38.88256');
INSERT INTO `active_info` VALUES ('1186898154684645377', '2', '40', '<p>2</p>', '2019-10-23 14:52:26', null, '2019-10-23 14:52:26', '1186850996728070145', null, '0', '公益活动', '55', null, '1', 'Nirvana', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2v-KmAHjU7AAWludScgkQ699.png', '2019-10-23 12:00:00', '2019-10-23 14:50:00', null, '0', null, '115.49715', '38.88353');
INSERT INTO `active_info` VALUES ('1186898464777928706', '555', '40', '<p>2</p>', '2019-10-23 14:53:40', null, '2019-10-23 14:53:40', '1186850996728070145', null, '0', '公益活动', '55', null, '1', 'Nirvana', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2v-POAAwrUAAAhGDja1d4081.jpg', '2019-10-23 12:00:00', '2019-10-23 14:00:00', null, '0', null, '115.49715', '38.88353');
INSERT INTO `active_info` VALUES ('1187555141886824449', '测试数据', '40', '<p>北京健健康康姐姐你能在你身边是不是少男少女你是不是奈史密斯是你</p>', '2019-10-25 10:23:04', null, '2019-10-25 10:23:04', '1171357319181238274', null, '0', '公益活动', '55', null, '1', '硿白', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2yXIWAQXT2AAFhdti7SwM873.jpg', '2019-10-25 10:20:00', '2019-10-25 12:59:00', null, '0', null, '115.48712921142578', '38.85456848144531');
INSERT INTO `active_info` VALUES ('1187575262890053633', '北包包b', '40', '<p>好</p>', '2019-10-25 11:43:01', null, '2019-10-25 11:43:01', '1171357319181238274', null, '0', '公益活动', '55', null, '1', '硿白', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2yb0GAMZHlAAbZ5TiLqqE372.jpg', '2019-10-25 11:37:00', '2019-10-25 12:00:00', null, '0', null, '115.55798801676688', '38.879836436452216');
INSERT INTO `active_info` VALUES ('1187577490979835906', '我', '40', '<p>我</p>', '2019-10-25 11:51:53', null, '2019-10-25 11:51:53', '1164086985523675138', null, '0', '公益活动', '55', null, '1', '李小鵬', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2ycViAGFRuAAO8EUzWJGA531.jpg', '2019-10-25 11:51:00', '2019-10-25 18:51:00', null, '0', null, '115.50059509277344', '38.87654113769531');
INSERT INTO `active_info` VALUES ('1187596928772886530', '2', '40', '<p>1</p>', '2019-10-25 13:09:07', null, '2019-10-25 13:09:07', '1167042162204594177', null, '0', '公益活动', '55', null, '1', '(^_^)', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2yg0-Adw7pAAzbMfxPlfA327.png', '2019-10-25 13:00:00', '2019-10-25 21:00:00', null, '0', null, '115.55833', '38.88012');
INSERT INTO `active_info` VALUES ('1187597629590753281', '去', '40', '<p>去</p>', '2019-10-25 13:11:54', null, '2019-10-25 13:11:54', '1186850996728070145', null, '0', '公益活动', '55', null, '1', 'Nirvana', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2yhBmAUy1GAACVdEEyW2w824.jpg', '2019-10-25 13:11:00', '2019-10-25 17:11:00', null, '0', null, '115.50059509277344', '38.87654113769531');
INSERT INTO `active_info` VALUES ('1187598288360722434', '哈哈', '40', '<p>堆垛车疯疯癫癫</p>', '2019-10-25 13:14:31', null, '2019-10-25 13:14:31', '1171357319181238274', null, '0', '公益活动', '55', null, '1', '硿白', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2yhKuAVQtQAADFATh7F0A999.jpg', '2019-10-25 13:13:00', '2019-10-25 19:30:00', null, '0', null, '115.5590133666992', '38.879398345947294');
INSERT INTO `active_info` VALUES ('1187598704574091266', '去', '40', '<p>去</p>', '2019-10-25 13:16:10', null, '2019-10-25 13:16:10', '1186850996728070145', null, '0', '公益活动', '55', null, '1', 'Nirvana', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2yhReAQ0FfAACVdEEyW2w095.jpg', '2019-10-25 13:15:00', '2019-10-25 14:15:00', null, '0', null, '115.55800686273837', '38.87972377697925');
INSERT INTO `active_info` VALUES ('1187617975798747137', '拟南芥k', '40', '<p>你叫你那么累</p>', '2019-10-25 14:32:45', null, '2019-10-25 14:32:45', '1171357319181238274', null, '0', '公益活动', '55', null, '1', '硿白', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2ylvmAU3CcAAOsAE-vXIo914.jpg', '2019-10-25 10:30:00', '2019-10-25 14:31:00', null, '0', null, '115.55795805696569', '38.87983245468764');
INSERT INTO `active_info` VALUES ('1187622411610771457', '锻炼身体', '40', '<p>强身健体</p>', '2019-10-25 14:50:23', null, '2019-10-25 14:50:23', '1187574749654044673', null, '0', '公益活动', '55', null, '1', 'Judy', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2ymxGAO6jIAACKsHPzHDE099.jpg', '2019-10-25 14:50:00', '2019-10-25 15:50:00', null, '0', null, '115.48825', '38.85798');
INSERT INTO `active_info` VALUES ('1187628772541222913', '赚取积分', '40', '<p>赚取积分，一积分一小时</p>', '2019-10-25 15:15:39', null, '2019-10-25 15:15:39', '1171357319181238274', null, '0', '公益活动', '55', null, '1', '硿白', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2yoRmAAkMmAAOsAE-vXIo803.jpg', '2019-10-25 15:20:00', '2019-10-25 21:00:00', null, '0', null, '115.55796471244504', '38.879811997780656');
INSERT INTO `active_info` VALUES ('1188631706544513025', '秋风扫落叶', '40', '<p><img src=\"https://fdfs.baodingjl.com/group1/M00/00/22/PM2i9F22RwuANlGyAAbZ5TiLqqE882.jpg\" data-custom=\"id=abcd&amp;role=god\"></p><p><br></p>', '2019-10-28 09:40:57', null, '2019-10-28 09:40:57', '1171357319181238274', null, '0', '公益活动', '55', null, '1', '硿白', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/22/PM2i9F22Rx-ANnyEAADjC5R439s083.jpg', '2019-10-28 09:40:00', '2019-10-28 13:30:00', null, '0', null, '115.5590133666992', '38.879398345947294');
INSERT INTO `active_info` VALUES ('1192669292137226242', '吃饭', '40', '<p>吃饭</p>', '2019-11-08 13:04:53', null, '2019-11-08 13:04:53', '1177420241355612162', null, '0', '公益活动', '55', null, '1', '繁华都市', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/23/PM2i9F3E93SAUaEYAAFe7YCP8Fo892.jpg', '2019-12-08 13:04:00', '2019-12-08 14:15:00', null, '0', null, '114.99303', '38.74503');
INSERT INTO `active_info` VALUES ('1192692063898603521', '创维', '42', '<p>活动</p>', '2019-11-08 14:35:22', null, '2019-11-08 14:35:22', '1177420241355612162', null, '0', '帮扶活动', '54', '57', '1', '繁华都市', '置顶', '审核通过', null, 'https://fdfs.baodingjl.com/group1/M00/00/23/PM2i9F3FDKiANcpCAAZS74Yn_a4474.jpg', null, null, null, '0', null, null, null);
INSERT INTO `active_info` VALUES ('1192692464785985537', '创城', '74', '<p>活动</p>', '2019-11-08 14:36:57', null, '2019-11-08 14:36:57', '1177420241355612162', null, '0', '创城活动', '55', null, '1', '繁华都市', '未置顶', null, null, 'https://fdfs.baodingjl.com/group1/M00/00/23/PM2i9F3FDQiAUNMIAAGsPlFR28Q602.jpg', null, null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for beam_user
-- ----------------------------
DROP TABLE IF EXISTS `beam_user`;
CREATE TABLE `beam_user` (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `account` varchar(45) DEFAULT NULL COMMENT '账号',
  `password` varchar(45) DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) DEFAULT NULL COMMENT 'md5密码盐',
  `name` varchar(45) DEFAULT NULL COMMENT '名字',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `sex` int(11) DEFAULT NULL COMMENT '性别（1：男 2：女）',
  `email` varchar(45) DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(45) DEFAULT NULL COMMENT '电话',
  `status` int(11) DEFAULT NULL COMMENT '状态(1：启用  2：冻结  3：删除）',
  `version` int(11) DEFAULT NULL COMMENT '保留字段',
  `remarks` varchar(255) DEFAULT NULL,
  `create_by` bigint(20) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of beam_user
-- ----------------------------
INSERT INTO `beam_user` VALUES ('1', 'girl.gif', 'admin', 'ecfadcde9305f8891bcfe5a1e28c253e', '8pgby', '张三', '2017-05-05 00:00:00', '2', 'sn93@qq.com', '18200000000', '1', '25', null, null, null, null, null, '0');
INSERT INTO `beam_user` VALUES ('44', null, 'test', '45abb7879f6a8268f1ef600e6038ac73', 'ssts3', 'test', '2017-05-01 00:00:00', '1', 'abc@123.com', '', '3', null, null, null, null, null, null, '0');
INSERT INTO `beam_user` VALUES ('45', null, 'boss', '71887a5ad666a18f709e1d4e693d5a35', '1f7bf', '老板', '2017-12-04 00:00:00', '1', '', '', '1', null, null, null, null, null, null, '0');
INSERT INTO `beam_user` VALUES ('46', null, 'manager', 'b53cac62e7175637d4beb3b16b2f7915', 'j3cs9', '经理', '2017-12-04 00:00:00', '1', '', '', '1', null, null, null, null, null, null, '1');
INSERT INTO `beam_user` VALUES ('1046317597227974658', 'string', 'string', 'string', 'string', 'string', '2018-09-29 07:20:50', '0', 'string', 'string', '0', '0', 'string', '1', '2018-09-30 08:35:29', '1', '2018-09-30 09:05:55', '1');

-- ----------------------------
-- Table structure for binding_commodity
-- ----------------------------
DROP TABLE IF EXISTS `binding_commodity`;
CREATE TABLE `binding_commodity` (
  `activeId` bigint(20) DEFAULT NULL COMMENT '活动ID',
  `commodityId` bigint(20) DEFAULT NULL COMMENT '商品ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of binding_commodity
-- ----------------------------
INSERT INTO `binding_commodity` VALUES ('1167629333386903553', '1167700668377133057');
INSERT INTO `binding_commodity` VALUES ('1171626646010724354', '1167314057810378754');
INSERT INTO `binding_commodity` VALUES ('1176798374093594626', '1176797945569943554');

-- ----------------------------
-- Table structure for buttshop
-- ----------------------------
DROP TABLE IF EXISTS `buttshop`;
CREATE TABLE `buttshop` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '商品标题',
  `detail` longtext COMMENT '商品详情',
  `img_cover` varchar(255) DEFAULT NULL COMMENT '商品图',
  `img_detail` longtext COMMENT '商品详情图',
  `description_list` longtext COMMENT '商品描述图',
  `original_price` varchar(255) DEFAULT NULL COMMENT '天猫价',
  `goods_price` varchar(255) DEFAULT NULL COMMENT '普通购买价',
  `min_price` varchar(255) DEFAULT NULL COMMENT '最低价',
  `tb_link` varchar(255) DEFAULT NULL COMMENT '淘宝链接',
  `end_time` varchar(255) DEFAULT '' COMMENT '商品下线剩余时间(s）',
  `create_by` bigint(20) DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` tinyint(20) DEFAULT NULL,
  `integral` varchar(255) DEFAULT NULL COMMENT '积分',
  `premium` varchar(255) DEFAULT NULL COMMENT '溢价比例（%）',
  `status` varchar(255) DEFAULT NULL COMMENT '1本平台2商家平台',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buttshop
-- ----------------------------
INSERT INTO `buttshop` VALUES ('53', ' 潘达海藻胶原蛋白修护眼膜60片', '00后妹子的罐装保湿眼膜', 'http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016115228_8tbBslAuNo', '[\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016120339_4geabK8wox\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016120401_eqdmgAwpur\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016120410_pGanADqhRF\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016120417_Vpr658zTKD\"]', '[\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016120436_jv5gMIfeKP\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016120446_8pI4lLUWiF\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016120454_Nz9SRLqpCU\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016120501_7USqoprvHl\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016120509_SaOhn29q1x\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016120519_KfbMHVCSd2\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016120527_RtPgrUEVXY\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016120534_9be4zUpyOF\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016120543_FlmnLx5NTP\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016120551_KYrOguyNJx\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016120600_Wt81Mmg7nQ\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016120609_lNLXjnQPuy\"]', '150.0', '6900', '4500', '', '29774234', null, null, '2019-10-28 16:01:46', '2019-11-13 09:22:47', '0', '5', '0', '1');
INSERT INTO `buttshop` VALUES ('54', 'PANDAW潘达熬夜护理眼部精华霜15g', '彭昱畅同款眼霜', 'http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016154758_kpz9G3OJSU', '[\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155020_LHKYPMkOdz\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155027_PhQvY9bH4U\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155032_c4uStHD7Gx\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155040_DCycYLWs1R\"]', '[\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155100_TNERHVD5ZC\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155108_KFoWVkSfAD\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155114_s1YhTlNjIW\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155120_Ejhg7eiu3I\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155125_YxNK9EXgTd\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155131_X4jY1M5WuF\"]', '139.0', '13900', '8800', '', '29774234', null, null, '2019-10-28 16:01:46', '2019-11-13 09:22:47', '0', '5', '0', '1');
INSERT INTO `buttshop` VALUES ('55', '潘达熬夜水光护理凝胶眼膜60片', '00后妹子的罐装保湿眼膜 熬夜专用系列', 'http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155446_sMXqi73Rw1', '[\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155501_rczKfvndhp\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155511_2flGjHn598\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155521_qfJ7vXl35k\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155531_xlrZj9AwmV\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155539_RrWTlVh8zd\"]', '[\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155632_aHFKQ4LxcW\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155639_7t8k2jgBXv\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155643_NFdQVhM0w8\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155651_NUnIJv8ACZ\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155656_wa1mhXEzdR\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155701_rWsgwflquI\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155710_8kAqDmHTI4\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155719_GN1Reu3aSK\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155726_QG5tJ7pYdv\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155731_SHYx5i0Lk8\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155738_2ptcOLaeTf\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155743_JjarcG3ziy\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016155748_eTc83FlJCO\"]', '69.0', '6900', '4900', '', '29774234', null, null, '2019-10-28 16:01:45', '2019-11-13 09:22:47', '0', '5', '0', '1');
INSERT INTO `buttshop` VALUES ('56', '潘达水光保湿精华面膜5片', '今晨推荐秋季保湿面膜', 'http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160042_gJCthd3B5o', '[\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160059_jYqbtkgeG4\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160108_B2GzTQirdY\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160113_hemqrAIxZ2\"]', '[\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160143_7apPWfCgIx\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160148_0tEUYDn3hi\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160155_IdjLyDkHtK\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160202_B09vmZ5cat\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160208_owKn4UXk3B\"]', '89.0', '8900', '5900', '', '29774234', null, null, '2019-10-28 16:01:45', '2019-11-13 09:22:47', '0', '5', '0', '1');
INSERT INTO `buttshop` VALUES ('57', '潘达炫彩定妆喷雾 100ml', '养肤彩妆抖音爆款', 'http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160425_jVDXYnGvFK', '[\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160450_1Ulb4AtEXj\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160458_vyaK04Nn7r\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160503_fs87DmncSd\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160508_WayOoxZvUs\"]', '[\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160546_HCNQ8GKU1j\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160552_xRoOWr2aIq\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160616_4JWSKvwLro\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160623_kF7Y0cU59p\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160629_tTCfmUi4Rp\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160634_OuIUN5pMRx\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160645_1Mrh6vtm3H\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160655_1zXc3jn50P\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160703_8aLNYsZmbC\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160708_WNhIqHkfov\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160714_FaDg8Opo0j\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160719_Xfb0ge8yo4\"]', '149.0', '11900', '8800', 'https://detail.tmall.com/item.htm?spm=a230r.1.14.11.5082999dNIu7mP&id=596717005994&ns=1&abbucket=14&skuId=4152025665586', '29774234', null, null, '2019-10-28 16:01:45', '2019-11-13 09:22:47', '0', '5', '0', '1');
INSERT INTO `buttshop` VALUES ('59', '测试', '测试', 'http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160425_jVDXYnGvFK', '[\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160450_1Ulb4AtEXj\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160458_vyaK04Nn7r\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160503_fs87DmncSd\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160508_WayOoxZvUs\"]', '[\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160546_HCNQ8GKU1j\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160552_xRoOWr2aIq\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160616_4JWSKvwLro\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160623_kF7Y0cU59p\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160629_tTCfmUi4Rp\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160634_OuIUN5pMRx\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160645_1Mrh6vtm3H\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160655_1zXc3jn50P\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160703_8aLNYsZmbC\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160708_WNhIqHkfov\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160714_FaDg8Opo0j\",\"http://img.fenfenriji.com/kemeng/admin/2019-10-16/20191016160719_Xfb0ge8yo4\"]', '1.0', '1', '1', 'https://detail.tmall.com/item.htm?spm=a230r.1.14.11.5082999dNIu7mP&id=596717005994&ns=1&abbucket=14&skuId=4152025665586', '29774234', null, null, '2019-10-28 16:01:45', '2019-11-13 09:22:47', '0', '5', '0', '1');

-- ----------------------------
-- Table structure for commodityspecification
-- ----------------------------
DROP TABLE IF EXISTS `commodityspecification`;
CREATE TABLE `commodityspecification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `specificationPicture` varchar(255) DEFAULT NULL COMMENT '规格图片',
  `specification` varchar(255) DEFAULT NULL COMMENT '规格',
  `unitPrice` varchar(255) DEFAULT NULL COMMENT '成本价',
  `create_time` datetime DEFAULT NULL COMMENT '活动创建日期',
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  `update_time` datetime DEFAULT NULL COMMENT '发布日期',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新发布者',
  `del_flag` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '状态',
  `platformCommodityId` varchar(255) DEFAULT NULL COMMENT '商品id',
  `preperPrice` varchar(255) DEFAULT NULL COMMENT '参考价',
  `premium` varchar(255) DEFAULT NULL COMMENT '溢价比例（%）',
  `integral` varchar(255) DEFAULT NULL COMMENT '积分',
  `min_price` varchar(255) DEFAULT NULL COMMENT '购买价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1197089439698575363 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of commodityspecification
-- ----------------------------
INSERT INTO `commodityspecification` VALUES ('1197082785288478723', 'https://fdfs.baodingjl.com/group1/M00/00/35/PM2i9F3VBReATxuIAALjNABCCgc493.jpg', '一盒', '0.01', '2019-11-21 10:55:26', null, '2019-11-21 10:55:26', null, null, '0', '1197082785288478722', '20', '20', '1', '0.01');
INSERT INTO `commodityspecification` VALUES ('1197082785326227457', '', '二盒', '0.02', '2019-11-21 10:55:26', null, '2019-11-21 10:55:26', null, null, '0', '1197082785288478722', '35', '50', '1', '0.03');
INSERT INTO `commodityspecification` VALUES ('1197082785334616065', '', '三盒', '0.03', '2019-11-21 10:55:26', null, '2019-11-21 10:55:26', null, null, '0', '1197082785288478722', '40', '50', '1', '0.04');
INSERT INTO `commodityspecification` VALUES ('1197089439602106370', 'https://fdfs.baodingjl.com/group1/M00/00/35/PM2i9F3VC9OAOyqlAABXWoSsfnY220.jpg', '苹果一箱', '0.01', '2019-11-21 10:55:01', null, '2019-11-21 10:55:01', null, null, '0', '1197089439585329153', '10', '0', '2', '0.01');
INSERT INTO `commodityspecification` VALUES ('1197089439698575362', '', '苹果精包', '0.02', '2019-11-21 10:55:01', null, '2019-11-21 10:55:01', null, null, '0', '1197089439585329153', '20', '0', '0', '0.02');

-- ----------------------------
-- Table structure for commodityspecifications
-- ----------------------------
DROP TABLE IF EXISTS `commodityspecifications`;
CREATE TABLE `commodityspecifications` (
  `id` bigint(20) DEFAULT NULL,
  `specificationsName` varchar(255) DEFAULT NULL,
  `commodityTypeId` bigint(20) DEFAULT NULL COMMENT '种类',
  `commodityTypeName` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commodityspecifications
-- ----------------------------
INSERT INTO `commodityspecifications` VALUES ('1164733774509604865', '29*26', '1164089777009127426', '家电', '2019-08-23 10:59:06', '2019-08-23 10:59:06');
INSERT INTO `commodityspecifications` VALUES ('1164733804431769602', '50*52', '1164089777009127426', '家电', '2019-08-23 10:59:13', '2019-08-23 10:59:13');
INSERT INTO `commodityspecifications` VALUES ('1167263505311293441', '32', '1167263455264858113', '液晶电视', '2019-08-30 10:31:21', '2019-08-30 10:31:21');
INSERT INTO `commodityspecifications` VALUES ('1167318487779737602', '3L', '1167257896985780225', '破壁机', '2019-08-30 14:09:50', '2019-08-30 14:09:50');
INSERT INTO `commodityspecifications` VALUES ('1167340997564891138', '大型', '1164089777009127426', '家电', '2019-08-30 15:39:17', '2019-08-30 15:42:00');
INSERT INTO `commodityspecifications` VALUES ('1167341745627398145', '高清屏', '1167263455264858113', '液晶电视', '2019-08-30 15:42:15', '2019-08-30 15:42:15');
INSERT INTO `commodityspecifications` VALUES ('1167381123078701057', '35cm*30cm', '1167381021513629697', '月饼规格', '2019-08-30 18:18:43', '2019-08-31 17:42:04');
INSERT INTO `commodityspecifications` VALUES ('1167621861519540226', '50', '1167263455264858113', '液晶电视', '2019-08-31 10:15:20', '2019-08-31 10:15:20');
INSERT INTO `commodityspecifications` VALUES ('1167628667700527106', '200*180', '1167628556484362241', '衣柜', '2019-08-31 10:42:23', '2019-08-31 10:42:23');
INSERT INTO `commodityspecifications` VALUES ('1167699791415275521', 'typeC', '1167699628932132865', '数据线', '2019-08-31 15:25:00', '2019-08-31 15:25:00');
INSERT INTO `commodityspecifications` VALUES ('1167700051596341250', 'typemicroB', '1167699628932132865', '数据线', '2019-08-31 15:26:02', '2019-08-31 15:26:02');
INSERT INTO `commodityspecifications` VALUES ('1167733638475476994', '30cm*30cm', '1167381021513629697', '月饼规格', '2019-08-31 17:39:30', '2019-08-31 17:41:51');
INSERT INTO `commodityspecifications` VALUES ('1167733670796783617', '20cm*20cm', '1167381021513629697', '月饼规格', '2019-08-31 17:39:37', '2019-08-31 17:41:42');
INSERT INTO `commodityspecifications` VALUES ('1168407705998258177', '5斤', '1168407658468405250', '凯特芒', '2019-09-02 14:18:00', '2019-09-02 14:18:00');
INSERT INTO `commodityspecifications` VALUES ('1176796548862517250', '24粒', '1176796415550758913', '徐香猕猴桃', '2019-09-25 17:52:16', '2019-09-25 17:52:16');

-- ----------------------------
-- Table structure for commoditytype
-- ----------------------------
DROP TABLE IF EXISTS `commoditytype`;
CREATE TABLE `commoditytype` (
  `id` bigint(20) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `commodityTypename` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commoditytype
-- ----------------------------
INSERT INTO `commoditytype` VALUES ('1', '0', '全部种类', '0', '2019-08-21 16:19:38', '2019-08-21 16:19:42');
INSERT INTO `commoditytype` VALUES ('1164089777009127426', '1', '家电', '0', '2019-08-21 16:20:05', '2019-08-21 16:20:05');
INSERT INTO `commoditytype` VALUES ('1164089824979382274', '1', '家具', '0', '2019-08-21 16:20:17', '2019-08-21 16:20:17');
INSERT INTO `commoditytype` VALUES ('1164089872832196610', '1', '电子券', '0', '2019-08-21 16:20:28', '2019-08-21 16:20:28');
INSERT INTO `commoditytype` VALUES ('1167257896985780225', '1164089777009127426', '破壁机', '0', '2019-08-30 10:09:04', '2019-08-30 10:09:04');
INSERT INTO `commoditytype` VALUES ('1167263455264858113', '1164089777009127426', '液晶电视', '0', '2019-08-30 10:31:09', '2019-08-30 10:31:09');
INSERT INTO `commoditytype` VALUES ('1167284832994820097', '1164089777009127426', '收音机', '0', '2019-08-30 11:56:06', '2019-08-30 11:56:06');
INSERT INTO `commoditytype` VALUES ('1167381021513629697', '1', '月饼规格', '0', '2019-08-30 18:18:19', '2019-08-31 17:38:37');
INSERT INTO `commoditytype` VALUES ('1167628556484362241', '1164089824979382274', '衣柜', '0', '2019-08-31 10:41:56', '2019-08-31 10:41:56');
INSERT INTO `commoditytype` VALUES ('1167699593108582401', '1', '电脑或电子周边设备', '0', '2019-08-31 15:24:12', '2019-08-31 15:24:39');
INSERT INTO `commoditytype` VALUES ('1167699628932132865', '1167699593108582401', '数据线', '0', '2019-08-31 15:24:21', '2019-08-31 15:24:21');
INSERT INTO `commoditytype` VALUES ('1168407609143390210', '1', '水果', '0', '2019-09-02 14:17:37', '2019-09-02 14:17:37');
INSERT INTO `commoditytype` VALUES ('1168407658468405250', '1168407609143390210', '凯特芒', '0', '2019-09-02 14:17:48', '2019-09-02 14:17:48');
INSERT INTO `commoditytype` VALUES ('1176796415550758913', '1168407609143390210', '徐香猕猴桃', '0', '2019-09-25 17:51:44', '2019-09-25 17:51:44');

-- ----------------------------
-- Table structure for community
-- ----------------------------
DROP TABLE IF EXISTS `community`;
CREATE TABLE `community` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `communityName` varchar(255) DEFAULT NULL COMMENT '社区名称',
  `peopleNumber` int(20) DEFAULT NULL,
  `create_by` bigint(20) DEFAULT NULL,
  `createName` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` int(20) DEFAULT NULL,
  `communityContent` text,
  `if_other_user` varchar(255) DEFAULT NULL,
  `imagePicture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1192669001379684355 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of community
-- ----------------------------
INSERT INTO `community` VALUES ('1167680683000918017', '未来石', '2', '1164074152454934530', '硿白', '2019-08-31 14:09:04', null, '2019-08-31 14:09:04', '0', '户口本白金卡少男少女', null, 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qDv-AbhjNAANutThFccc613.jpg');
INSERT INTO `community` VALUES ('1167684369232097282', '邀请好友', '1', '1164086985523675138', '李小鵬', '2019-08-31 14:23:43', null, '2019-08-31 14:23:43', '0', '邀请好友来参加活动', null, 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qEmOAZwiKAAXA3zcq_X0484.png');
INSERT INTO `community` VALUES ('1168405937398673410', '健康生活', '1', '1164074152454934530', '硿白', '2019-09-02 14:10:58', null, '2019-09-02 14:10:58', '0', '世界卫生组织对影响健康的因素进行过如下总结：\n健康 = 60%生活方式 + 15%遗传因素 + 10%社会因素 + 8%医疗因素 + 7%气候因素\n由此可见生活方式管理是新兴起的个人健康管理中最重要的一个策略。健康生活方式是需要培养的，培养的主动性在人们自己。', null, 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1ssnCACIsOAAOBPlGvTjE839.jpg');
INSERT INTO `community` VALUES ('1173913865425666049', '领秀城公益团体', '2', '1168438254745874434', '罗宝龙', '2019-09-17 18:57:30', null, '2019-09-17 18:57:30', '0', '为冬奥奉献一份力量', null, 'https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F2AvBmAYya3AAFKnAqx9uc288.jpg');
INSERT INTO `community` VALUES ('1183961076440178690', '工业路小区', '1', '1171608879786229762', '壁虎漫步', '2019-10-15 12:21:32', null, '2019-10-15 12:21:32', '0', '参与创建城市文明', null, 'https://fdfs.baodingjl.com/group1/M00/00/1B/PM2i9F2lSUmAUhgTAACWAra2Fd0001.jpg');
INSERT INTO `community` VALUES ('1192669001379684354', '111', '1', '1177420241355612162', '繁华都市', '2019-11-08 13:03:43', null, '2019-11-08 13:03:43', '0', '111', null, 'https://fdfs.baodingjl.com/group1/M00/00/23/PM2i9F3E9y2AcgfwAADd598feac820.jpg');

-- ----------------------------
-- Table structure for communitychat
-- ----------------------------
DROP TABLE IF EXISTS `communitychat`;
CREATE TABLE `communitychat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `userName` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `communityId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of communitychat
-- ----------------------------
INSERT INTO `communitychat` VALUES ('2', '1167246694075215873', '呵呵', 'Mumutianxin', '2019-08-31 15:51:18', '1167706357661102082');
INSERT INTO `communitychat` VALUES ('3', '1167042162204594177', '古', '(^_^)', '2019-09-11 17:56:53', '1167680683000918017');
INSERT INTO `communitychat` VALUES ('4', '1168438254745874434', '你好', '罗宝龙', '2019-09-17 18:57:43', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('5', '1168438254745874434', '今天有什么活动吗', '罗宝龙', '2019-09-17 18:57:59', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('6', '1164086985523675138', '打篮球', '李小鵬', '2019-09-17 18:58:44', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('7', '1168438254745874434', '呵呵', '罗宝龙', '2019-09-17 18:58:45', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('8', '1168438254745874434', '可以啊', '罗宝龙', '2019-09-17 18:58:50', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('9', '1164086985523675138', '来不来', '李小鵬', '2019-09-17 18:58:57', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('10', '1168438254745874434', '什么？', '罗宝龙', '2019-09-17 18:59:10', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('11', '1164086985523675138', '打篮球啊  ', '李小鵬', '2019-09-17 18:59:30', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('12', '1168438254745874434', '刷新', '罗宝龙', '2019-09-17 19:01:14', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('13', '1168438254745874434', '我也不知道打什么', '罗宝龙', '2019-09-17 19:01:51', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('14', '1164086985523675138', '可以', '李小鵬', '2019-09-18 15:40:11', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('15', '1164086985523675138', '刷新啊', '李小鵬', '2019-09-18 15:41:13', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('16', '1164086985523675138', '還行啊', '李小鵬', '2019-09-18 15:41:23', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('17', '1164086985523675138', '清流店', '李小鵬', '2019-09-18 15:41:32', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('18', '1164086985523675138', '1111', '李小鵬', '2019-09-18 15:41:35', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('19', '1164086985523675138', '22222', '李小鵬', '2019-09-18 15:41:37', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('20', '1164086985523675138', '3333', '李小鵬', '2019-09-18 15:41:39', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('21', '1164086985523675138', '3333', '李小鵬', '2019-09-18 15:41:47', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('22', '1164086985523675138', '5555', '李小鵬', '2019-09-18 15:41:52', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('23', '1164086985523675138', '5555', '李小鵬', '2019-09-18 15:41:58', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('24', '1164086985523675138', '6666', '李小鵬', '2019-09-18 15:42:02', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('25', '1164086985523675138', '不見了', '李小鵬', '2019-09-18 15:42:34', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('26', '1164086985523675138', '111', '李小鵬', '2019-09-18 15:42:49', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('27', '1164086985523675138', '定下', '李小鵬', '2019-09-18 15:43:32', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('28', '1168438254745874434', '你好', '罗宝龙', '2019-09-24 13:01:53', '1173913865425666049');
INSERT INTO `communitychat` VALUES ('29', '1177420241355612162', '111', '繁华都市', '2019-11-08 13:03:51', '1192669001379684354');

-- ----------------------------
-- Table structure for community_invited
-- ----------------------------
DROP TABLE IF EXISTS `community_invited`;
CREATE TABLE `community_invited` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) DEFAULT NULL COMMENT '被邀请人',
  `communityId` bigint(20) DEFAULT NULL COMMENT '社区ID',
  `communityName` varchar(255) DEFAULT NULL COMMENT '社区名',
  `createUserName` varchar(255) DEFAULT NULL COMMENT '社区创建人',
  `create_time` datetime DEFAULT NULL,
  `createUserId` bigint(20) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `imageAddress` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `update_time` datetime DEFAULT NULL COMMENT '发布日期',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新发布者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of community_invited
-- ----------------------------
INSERT INTO `community_invited` VALUES ('12', '1167246694075215873', '1167684369232097282', '邀请好友', '李小鵬', '2019-08-31 15:52:31', '1164086985523675138', 'Mumutianxin', null, null, null, null, null);
INSERT INTO `community_invited` VALUES ('13', '1167246694075215873', '1167680683000918017', '未来石', '硿白', '2019-08-31 15:52:38', '1164074152454934530', 'Mumutianxin', null, null, null, null, null);
INSERT INTO `community_invited` VALUES ('14', '1167246694075215873', '1168405937398673410', '健康生活', '硿白', '2019-09-12 14:53:35', '1164074152454934530', 'Mumutianxin', null, null, null, null, null);
INSERT INTO `community_invited` VALUES ('15', '1168438254745874434', '1168405937398673410', '健康生活', '硿白', '2019-09-17 18:55:05', '1164074152454934530', '罗宝龙', null, null, null, null, null);
INSERT INTO `community_invited` VALUES ('17', '1167042162204594177', '1168405937398673410', '健康生活', '硿白', '2019-10-06 09:45:50', '1164074152454934530', '(^_^)', null, null, null, null, null);
INSERT INTO `community_invited` VALUES ('18', '1177420241355612162', '1173913865425666049', '领秀城公益团体', '罗宝龙', '2019-11-08 13:16:08', '1168438254745874434', '繁华都市', null, null, null, null, null);

-- ----------------------------
-- Table structure for community_user
-- ----------------------------
DROP TABLE IF EXISTS `community_user`;
CREATE TABLE `community_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `communityId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of community_user
-- ----------------------------
INSERT INTO `community_user` VALUES ('49', '1167680683000918017', '1164074152454934530');
INSERT INTO `community_user` VALUES ('52', '1167680683000918017', '1164086985523675138');
INSERT INTO `community_user` VALUES ('53', '1167684369232097282', '1164086985523675138');
INSERT INTO `community_user` VALUES ('62', '1168405937398673410', '1164074152454934530');
INSERT INTO `community_user` VALUES ('63', '1173913865425666049', '1168438254745874434');
INSERT INTO `community_user` VALUES ('64', '1173913865425666049', '1164086985523675138');
INSERT INTO `community_user` VALUES ('65', '1183961076440178690', '1171608879786229762');
INSERT INTO `community_user` VALUES ('66', '1192669001379684354', '1177420241355612162');

-- ----------------------------
-- Table structure for deductionratio
-- ----------------------------
DROP TABLE IF EXISTS `deductionratio`;
CREATE TABLE `deductionratio` (
  `id` bigint(20) DEFAULT NULL,
  `ratio` varchar(255) DEFAULT NULL COMMENT '抵扣比例',
  `create_time` datetime DEFAULT NULL COMMENT '活动创建日期',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `update_time` datetime DEFAULT NULL COMMENT '发布日期',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新发布者',
  `del_flag` varchar(50) DEFAULT NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deductionratio
-- ----------------------------
INSERT INTO `deductionratio` VALUES ('1167378714876157953', '2', '2019-08-30 18:09:09', null, '2019-08-30 18:12:07', '1', null, '0');
INSERT INTO `deductionratio` VALUES ('1167613520419368961', '1', '2019-08-31 09:42:11', null, '2019-08-31 09:42:11', '1', null, '0');
INSERT INTO `deductionratio` VALUES ('1167699123161985026', '0', '2019-08-31 15:22:20', null, '2019-08-31 15:22:20', '1', null, '0');
INSERT INTO `deductionratio` VALUES ('1167707175902703617', '2.3', '2019-08-31 15:54:20', null, '2019-08-31 15:54:20', '1', null, '0');

-- ----------------------------
-- Table structure for enterprisecertification
-- ----------------------------
DROP TABLE IF EXISTS `enterprisecertification`;
CREATE TABLE `enterprisecertification` (
  `id` bigint(20) NOT NULL,
  `enterpriseName` varchar(255) DEFAULT NULL COMMENT '企业名',
  `busLicenseNumber` varchar(255) DEFAULT NULL COMMENT '营业执照编号',
  `corporateLegalPerson` varchar(255) DEFAULT NULL COMMENT '公司法人',
  `legalPersonTelephone` varchar(255) DEFAULT NULL COMMENT '法人联系方式',
  `busLicensePicture` varchar(255) DEFAULT NULL COMMENT '营业执照',
  `create_by` bigint(20) DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enterprisecertification
-- ----------------------------
INSERT INTO `enterprisecertification` VALUES ('1167362246215090177', '测试企业认证', '98536612345678b', '张晓', '13051993772', 'https://fdfs.baodingjl.com/group1/M00/00/12/PM2i9F1o5m2APl4kAACIQLgasa0888.jpg', null, null, '2019-08-30 17:03:43', '2019-08-30 17:03:43', '0');
INSERT INTO `enterprisecertification` VALUES ('1167377327736897538', '健康的美女', '123778976543123', '乐观', '13013123454', 'https://fdfs.baodingjl.com/group1/M00/00/12/PM2i9F1o9GKAQkJGAASr3Zhy_88384.jpg', null, null, '2019-08-30 18:03:38', '2019-08-30 18:03:38', '0');

-- ----------------------------
-- Table structure for event_trace
-- ----------------------------
DROP TABLE IF EXISTS `event_trace`;
CREATE TABLE `event_trace` (
  `id` bigint(64) NOT NULL,
  `name` varchar(64) NOT NULL COMMENT '事件单位',
  `title` varchar(255) DEFAULT NULL COMMENT '项目标题',
  `event` varchar(1024) NOT NULL COMMENT '事件描述',
  `create_time` datetime NOT NULL,
  `create_by` bigint(64) NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_by` bigint(64) DEFAULT NULL,
  `del_flag` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_trace
-- ----------------------------
INSERT INTO `event_trace` VALUES ('1139492929768595458', 'a', '测试', '提交', '2019-06-14 19:21:00', '1', '2019-06-14 19:21:00', '2', '18');
INSERT INTO `event_trace` VALUES ('1139492979898916865', 'a', '测试', '提交', '2019-06-14 19:21:12', '1', '2019-06-14 19:21:12', '2', '18');
INSERT INTO `event_trace` VALUES ('1139494340849909762', 'a', '测试', '提交', '2019-06-14 19:26:36', '1', '2019-06-14 19:26:36', '2', '18');
INSERT INTO `event_trace` VALUES ('1139705779275517953', 'a', '测试', '提交', '2019-06-15 09:26:47', '1', '2019-06-15 09:26:47', '2', '18');

-- ----------------------------
-- Table structure for failout
-- ----------------------------
DROP TABLE IF EXISTS `failout`;
CREATE TABLE `failout` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` longtext COMMENT '失败原因',
  `orderId` varchar(255) DEFAULT NULL COMMENT '订单号',
  `userId` varchar(255) DEFAULT NULL COMMENT '退款人',
  `create_time` datetime DEFAULT NULL COMMENT '活动创建日期',
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  `update_time` datetime DEFAULT NULL COMMENT '发布日期',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新发布者',
  `del_flag` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1188646142243110915 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of failout
-- ----------------------------
INSERT INTO `failout` VALUES ('1188646142243110914', '失败', '12312', '123123', '2019-10-28 10:38:19', null, '2019-10-28 10:38:19', null, null, '0');

-- ----------------------------
-- Table structure for integralmall
-- ----------------------------
DROP TABLE IF EXISTS `integralmall`;
CREATE TABLE `integralmall` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '积分商城',
  `imageAddress` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `integral` int(255) DEFAULT NULL,
  `popularType` varchar(255) DEFAULT '' COMMENT '商品类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of integralmall
-- ----------------------------

-- ----------------------------
-- Table structure for integraltable
-- ----------------------------
DROP TABLE IF EXISTS `integraltable`;
CREATE TABLE `integraltable` (
  `userId` bigint(20) DEFAULT NULL,
  `userIntegral` float(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of integraltable
-- ----------------------------
INSERT INTO `integraltable` VALUES ('1164074152454934530', '142.53');
INSERT INTO `integraltable` VALUES ('1164074507439853570', '0.00');
INSERT INTO `integraltable` VALUES ('1164086985523675138', '0.00');
INSERT INTO `integraltable` VALUES ('1166242128432197634', '0.00');
INSERT INTO `integraltable` VALUES ('1167042162204594177', '98.01');
INSERT INTO `integraltable` VALUES ('1167065506266206209', '0.00');
INSERT INTO `integraltable` VALUES ('1167246694075215873', '1.04');
INSERT INTO `integraltable` VALUES ('1167297782778396673', '0.00');
INSERT INTO `integraltable` VALUES ('1', '0.00');
INSERT INTO `integraltable` VALUES ('1140878407161942018', '0.00');
INSERT INTO `integraltable` VALUES ('1140878407161942018', '0.00');
INSERT INTO `integraltable` VALUES ('1167337506196881409', '0.00');
INSERT INTO `integraltable` VALUES ('1167359208637218817', '0.00');
INSERT INTO `integraltable` VALUES ('1167379810223800322', '0.00');
INSERT INTO `integraltable` VALUES ('1168395532311916546', '0.00');
INSERT INTO `integraltable` VALUES ('1168399283357675521', '0.00');
INSERT INTO `integraltable` VALUES ('1168438254745874434', '0.00');
INSERT INTO `integraltable` VALUES ('1168442655715815426', '0.00');
INSERT INTO `integraltable` VALUES ('1168730630181810177', '0.00');
INSERT INTO `integraltable` VALUES ('1169145617874350081', '0.00');
INSERT INTO `integraltable` VALUES ('1171357319181238274', '1.24');
INSERT INTO `integraltable` VALUES ('1171357660719218689', '0.00');
INSERT INTO `integraltable` VALUES ('1171366338880995329', '0.00');
INSERT INTO `integraltable` VALUES ('1171606128335388674', '0.00');
INSERT INTO `integraltable` VALUES ('1171607181340573697', '0.00');
INSERT INTO `integraltable` VALUES ('1171608879786229762', '0.00');
INSERT INTO `integraltable` VALUES ('1171609644323962882', '0.00');
INSERT INTO `integraltable` VALUES ('1171613446343098369', '0.00');
INSERT INTO `integraltable` VALUES ('1171613932815253506', '0.00');
INSERT INTO `integraltable` VALUES ('1171697029195890690', '0.00');
INSERT INTO `integraltable` VALUES ('1172715430387318786', '0.00');
INSERT INTO `integraltable` VALUES ('1172828684291866625', '0.00');
INSERT INTO `integraltable` VALUES ('1173479928496848897', '0.00');
INSERT INTO `integraltable` VALUES ('1173522544865247234', '0.00');
INSERT INTO `integraltable` VALUES ('1173813499384262658', '0.00');
INSERT INTO `integraltable` VALUES ('1173864515123245058', '0.00');
INSERT INTO `integraltable` VALUES ('1174195696268099586', '0.00');
INSERT INTO `integraltable` VALUES ('1174248938993762306', '0.00');
INSERT INTO `integraltable` VALUES ('1174250256852467714', '0.00');
INSERT INTO `integraltable` VALUES ('1174275094153441282', '0.00');
INSERT INTO `integraltable` VALUES ('1175600102410731522', '0.00');
INSERT INTO `integraltable` VALUES ('1175600276369489921', '0.00');
INSERT INTO `integraltable` VALUES ('1176078978190589954', '0.00');
INSERT INTO `integraltable` VALUES ('1176084031978782721', '0.00');
INSERT INTO `integraltable` VALUES ('1176084722717736961', '0.00');
INSERT INTO `integraltable` VALUES ('1176357985767309314', '0.00');
INSERT INTO `integraltable` VALUES ('1176398445705613313', '0.00');
INSERT INTO `integraltable` VALUES ('1176766226590478338', '-0.06');
INSERT INTO `integraltable` VALUES ('1176819844798685186', '0.00');
INSERT INTO `integraltable` VALUES ('1177157551034933249', '0.00');
INSERT INTO `integraltable` VALUES ('1177418826663010305', '0.00');
INSERT INTO `integraltable` VALUES ('1177419640383152129', '0.00');
INSERT INTO `integraltable` VALUES ('1177420241355612162', '0.00');
INSERT INTO `integraltable` VALUES ('1178217873065844738', '0.00');
INSERT INTO `integraltable` VALUES ('1178515755480326145', '0.00');
INSERT INTO `integraltable` VALUES ('1179231645037436929', '0.00');
INSERT INTO `integraltable` VALUES ('1184645976730312705', '0.00');
INSERT INTO `integraltable` VALUES ('1184710570299564033', '0.00');
INSERT INTO `integraltable` VALUES ('1186849825813635074', '0.00');
INSERT INTO `integraltable` VALUES ('1186881463704559617', '0.00');
INSERT INTO `integraltable` VALUES ('1186850996728070145', '100.00');
INSERT INTO `integraltable` VALUES ('1187540996114239490', '0.00');
INSERT INTO `integraltable` VALUES ('1187574749654044673', '100.00');
INSERT INTO `integraltable` VALUES ('1187605705744076801', '0.00');
INSERT INTO `integraltable` VALUES ('1188704505703337985', '0.00');
INSERT INTO `integraltable` VALUES ('1189373213727764481', '0.00');
INSERT INTO `integraltable` VALUES ('1189774705869602818', '0.00');
INSERT INTO `integraltable` VALUES ('1189789563025506305', '0.00');
INSERT INTO `integraltable` VALUES ('1189800246291087362', '0.00');
INSERT INTO `integraltable` VALUES ('1189832991104974849', '0.00');
INSERT INTO `integraltable` VALUES ('1190018627384524801', '0.00');
INSERT INTO `integraltable` VALUES ('1190527217308418049', '0.00');
INSERT INTO `integraltable` VALUES ('1190527217308418049', '0.00');
INSERT INTO `integraltable` VALUES ('1191555855726297089', '0.00');
INSERT INTO `integraltable` VALUES ('1191654190751563777', '0.00');
INSERT INTO `integraltable` VALUES ('1192275760721313794', '0.00');
INSERT INTO `integraltable` VALUES ('1192771939892629506', '0.00');
INSERT INTO `integraltable` VALUES ('1193087598614712322', '0.00');
INSERT INTO `integraltable` VALUES ('1194115437669621762', '0.00');
INSERT INTO `integraltable` VALUES ('1194408782761533441', '0.00');
INSERT INTO `integraltable` VALUES ('1194434015727951873', '0.00');
INSERT INTO `integraltable` VALUES ('1194434015727951873', '0.00');
INSERT INTO `integraltable` VALUES ('1194453416720179201', '0.00');
INSERT INTO `integraltable` VALUES ('1194592657542455297', '0.00');
INSERT INTO `integraltable` VALUES ('1194806418638319617', '0.00');
INSERT INTO `integraltable` VALUES ('1190527217308418049', '0.00');
INSERT INTO `integraltable` VALUES (null, '0.00');
INSERT INTO `integraltable` VALUES ('1190527217308418049', '0.00');
INSERT INTO `integraltable` VALUES ('1194434015727951873', '0.00');
INSERT INTO `integraltable` VALUES ('1194434015727951873', '0.00');
INSERT INTO `integraltable` VALUES ('1196666270260060161', '0.00');
INSERT INTO `integraltable` VALUES ('1196666270260060161', '0.00');
INSERT INTO `integraltable` VALUES ('1197064023118114817', '0.00');
INSERT INTO `integraltable` VALUES ('1197064023118114817', '0.00');
INSERT INTO `integraltable` VALUES ('1196666270260060161', '0.00');
INSERT INTO `integraltable` VALUES ('1197082469667102721', '0.00');

-- ----------------------------
-- Table structure for myecoupon
-- ----------------------------
DROP TABLE IF EXISTS `myecoupon`;
CREATE TABLE `myecoupon` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `unitPrice` int(20) DEFAULT NULL,
  `useStatus` varchar(255) DEFAULT NULL COMMENT '使用状态（1已使用2未使用）',
  `userId` bigint(20) DEFAULT NULL,
  `codeAddress` varchar(255) DEFAULT NULL,
  `payStatus` varchar(255) DEFAULT NULL COMMENT '支付状态（1已支付2未支付）',
  `orderId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myecoupon
-- ----------------------------
INSERT INTO `myecoupon` VALUES ('135', '测试电子券', '20', '2', '1167246694075215873', 'https://fdfs.baodingjl.com/group1/M00/00/12/PM2i9F1ouY2ARHVtAAAghe1MDIU498.jpg', '1', '1172031973055262722');

-- ----------------------------
-- Table structure for myfriends
-- ----------------------------
DROP TABLE IF EXISTS `myfriends`;
CREATE TABLE `myfriends` (
  `id` bigint(20) DEFAULT NULL,
  `myId` bigint(20) DEFAULT NULL,
  `myFriendId` bigint(20) DEFAULT NULL,
  `myFriendPicture` varchar(255) DEFAULT NULL,
  `myFriendName` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '活动创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '发布日期',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新发布者',
  `del_flag` varchar(50) DEFAULT NULL COMMENT '状态',
  `ifAgree` varchar(10) DEFAULT NULL COMMENT '是否同意为好友（1同意2不同意）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of myfriends
-- ----------------------------
INSERT INTO `myfriends` VALUES ('1167680744745267202', '1164074152454934530', '1167042162204594177', 'https://wx.qlogo.cn/mmopen/vi_32/ounbbCtiatmFERLRIFhtNZ45hSO5ECiciaUMqSgCkDpibiaAgefanbKSsUKLMyjeialF7q7CEom26rjhC9PWFic359zFA/132', '(^_^)', '2019-08-31 14:09:19', '2019-08-31 14:09:19', null, null, '0', '1');
INSERT INTO `myfriends` VALUES ('1167680756434792449', '1167042162204594177', '1164074152454934530', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132', '硿白', '2019-08-31 14:09:21', '2019-08-31 14:09:21', null, null, '0', '1');
INSERT INTO `myfriends` VALUES ('1167683707891019777', '1167042162204594177', '1164086985523675138', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132', '李小鵬', '2019-08-31 14:21:05', '2019-08-31 14:21:05', null, null, '0', '1');
INSERT INTO `myfriends` VALUES ('1167683827860697090', '1164086985523675138', '1167042162204594177', 'https://wx.qlogo.cn/mmopen/vi_32/ounbbCtiatmFERLRIFhtNZ45hSO5ECiciaUMqSgCkDpibiaAgefanbKSsUKLMyjeialF7q7CEom26rjhC9PWFic359zFA/132', '(^_^)', '2019-08-31 14:21:34', '2019-08-31 14:21:34', null, null, '0', '1');
INSERT INTO `myfriends` VALUES ('1167684018911244290', '1164074152454934530', '1164086985523675138', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132', '李小鵬', '2019-08-31 14:22:19', '2019-08-31 14:22:19', null, null, '0', '1');
INSERT INTO `myfriends` VALUES ('1167684995718508545', '1164086985523675138', '1164074152454934530', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132', '硿白', '2019-08-31 14:26:12', '2019-08-31 14:26:12', null, null, '0', '1');
INSERT INTO `myfriends` VALUES ('1167706633440784386', '1164086985523675138', '1167246694075215873', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKIw7PnDUED8DVia9SEyxickbm5MeWdnhT2OOUib19om8rvYJEiciaCMDFH9vR2gibMC8krjb1bTJ3jfAXA/132', 'Mumutianxin', '2019-08-31 15:52:11', '2019-08-31 15:52:11', null, null, '0', '2');
INSERT INTO `myfriends` VALUES ('1172031455125827586', '1171357319181238274', '1167246694075215873', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKIw7PnDUED8DVia9SEyxickbm5MeWdnhT2OOUib19om8rvYJEiciaCMDFH9vR2gibMC8krjb1bTJ3jfAXA/132', 'Mumutianxin', '2019-09-12 14:17:29', '2019-09-12 14:17:29', null, null, '0', '2');

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` bigint(64) NOT NULL,
  `product_id` bigint(64) NOT NULL,
  `product_count` int(11) NOT NULL COMMENT '商品数量',
  `receive_info_id` bigint(64) DEFAULT NULL COMMENT '联系信息ID',
  `total_price` double(11,2) DEFAULT NULL COMMENT '总价',
  `create_by` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(1024) DEFAULT NULL,
  `del_flag` varchar(255) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL COMMENT '商品名',
  `paymentMethod` varchar(255) DEFAULT NULL COMMENT '支付方式（1积分还是2现金，还是3混合）',
  `orderType` varchar(255) DEFAULT NULL COMMENT '订单类型（48电子券，47实物）',
  `useStatus` varchar(255) DEFAULT NULL COMMENT '使用状态（1已经使用，2未使用）',
  `costIntegral` float(255,4) DEFAULT NULL COMMENT '花费积分',
  `payType` varchar(255) DEFAULT NULL COMMENT '支付类型（44免费，45付费，46现金抵扣免费）',
  `costCash` float(255,2) DEFAULT NULL COMMENT '花费购买现金',
  `paymentStatus` varchar(255) DEFAULT NULL COMMENT '付款状态（1已付款2未付款3退款成功）',
  `paymentStatusName` varchar(255) DEFAULT NULL,
  `specificationsName` varchar(255) DEFAULT NULL COMMENT '商品规格',
  `outTradeNo` varchar(255) DEFAULT NULL,
  `unitPrice` varchar(255) DEFAULT NULL COMMENT '商品购买单价',
  `ifIsPlatformCommodity` varchar(255) DEFAULT NULL COMMENT '订单是否为自营订单 1商家2自营',
  `sentGoodsStatus` varchar(255) DEFAULT NULL COMMENT '发货状态（0未发货1已发货2确认收货）',
  `sentGoodsStatusName` varchar(255) DEFAULT NULL COMMENT '是否发货名',
  `logisticsNumber` varchar(255) DEFAULT NULL COMMENT '物流号',
  `returnMoneyStatus` varchar(255) DEFAULT NULL COMMENT '退款状态0退款申请中1确认退款2拒接退款',
  `orderProductPicture` varchar(255) DEFAULT NULL COMMENT '订单商品图',
  `productUserId` varchar(255) DEFAULT NULL COMMENT '供货商id',
  `preperPriceAll` varchar(255) DEFAULT NULL COMMENT '成本价',
  `productUserName` varchar(255) DEFAULT NULL COMMENT '供应商姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES ('1197085976298184705', '1197082785288478722', '2', '1167243998387646466', '0.06', '1167042162204594177', '2019-11-20 17:35:12', null, '2019-11-20 17:39:14', null, '0', '牙刷', null, '47', null, '2.0000', '45', '0.06', '1', '已付款', '二盒', 'Wbo5D3nGhpcdlJkbJJe9rddZfL64XZOo', '0.03', '2', '2', '已收货', '124523', null, 'https://fdfs.baodingjl.com/group1/M00/00/35/PM2i9F3VBcyAH45lAAEVqLD74G4252.jpg', '1196666270260060161', '0.04', 'gonghuoshang');
INSERT INTO `order_info` VALUES ('1197092272409862145', '1197089439585329153', '1', '1167323015723843585', '0.01', '1167246694075215873', '2019-11-19 18:00:13', null, '2019-11-19 18:02:01', null, '0', '水果', null, '47', null, '0.3000', '45', '0.01', '1', '已付款', '苹果一箱', 'fimI1o6X8MomK3ZMfpYtDA9ixSFjBBYV', '0.01', '2', '1', '已发货', '测试', null, 'https://fdfs.baodingjl.com/group1/M00/00/35/PM2i9F3VC9iAZuCPAABXWoSsfnY530.jpg', '1196666270260060161', '0.01', 'gonghuoshang');

-- ----------------------------
-- Table structure for platformcommodity
-- ----------------------------
DROP TABLE IF EXISTS `platformcommodity`;
CREATE TABLE `platformcommodity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '商品标题',
  `status` varchar(255) DEFAULT NULL COMMENT '上架状态0未上架1上架2下架',
  `statusName` varchar(255) DEFAULT NULL,
  `detail` longtext CHARACTER SET utf8 COMMENT '商品详情',
  `img_cover` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品图',
  `img_detail` longtext CHARACTER SET utf8 COMMENT '商品详情图',
  `description_list` longtext CHARACTER SET utf8 COMMENT '商品描述图',
  `original_price` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '成本价（元）',
  `goods_price` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '成本（分）',
  `min_price` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '购买价',
  `tb_link` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '淘宝链接',
  `end_time` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '商品下线剩余时间(s）',
  `create_by` bigint(20) DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` tinyint(20) DEFAULT NULL,
  `integral` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '积分',
  `premium` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '溢价比例（%）',
  `preperPrice` varchar(255) DEFAULT NULL COMMENT '参考价',
  `createByName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1197089439585329154 DEFAULT CHARSET=utf8mb4 COMMENT='平台自营商品';

-- ----------------------------
-- Records of platformcommodity
-- ----------------------------
INSERT INTO `platformcommodity` VALUES ('1197082785288478722', '牙刷', '2', '已下架', '牙刷', 'https://fdfs.baodingjl.com/group1/M00/00/35/PM2i9F3VBcyAH45lAAEVqLD74G4252.jpg', null, '[\"https://fdfs.baodingjl.com/group1/M00/00/35/PM2i9F3VBdSAPuYkAALjNABCCgc888.jpg\"]', null, null, null, null, '', '1196666270260060161', null, '2019-11-20 17:22:31', '2019-11-20 18:01:43', '0', '0', '0', null, 'gonghuoshang');
INSERT INTO `platformcommodity` VALUES ('1197089439585329153', '水果', '1', '已上架', '苹果', 'https://fdfs.baodingjl.com/group1/M00/00/35/PM2i9F3VC9iAZuCPAABXWoSsfnY530.jpg', null, '[\"https://fdfs.baodingjl.com/group1/M00/00/35/PM2i9F3VDAeAdbtfAACNmSyK16Q264.jpg\"]', null, null, null, null, '', '1196666270260060161', null, '2019-11-20 17:48:58', '2019-11-21 10:55:02', '0', '0', '0', null, 'gonghuoshang');

-- ----------------------------
-- Table structure for product_info
-- ----------------------------
DROP TABLE IF EXISTS `product_info`;
CREATE TABLE `product_info` (
  `id` bigint(64) NOT NULL,
  `product_name` varchar(64) NOT NULL COMMENT '商品名称',
  `product_price` double(11,0) NOT NULL COMMENT '商品单价',
  `picture_path` varchar(64) DEFAULT NULL COMMENT '商品图片地址',
  `product_type` int(2) DEFAULT NULL COMMENT '商品类别（实物、电子券）',
  `create_by` bigint(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` bigint(64) DEFAULT NULL,
  `remark` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_info
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RenrenScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RenrenScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RenrenScheduler', 'iZ2ze08k4ia8rud37ypzjoZ1574306038157', '1574314776365', '15000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for realnameauthentication
-- ----------------------------
DROP TABLE IF EXISTS `realnameauthentication`;
CREATE TABLE `realnameauthentication` (
  `id` bigint(20) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `idCard` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `positivePicture` varchar(255) DEFAULT NULL,
  `backPicture` varchar(255) DEFAULT NULL,
  `create_by` bigint(20) DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `certificationType` varchar(255) DEFAULT NULL COMMENT '认证类型（志愿者或者实名认证）',
  `ifAgree` varchar(255) DEFAULT NULL COMMENT '0未审核1通过2不通过',
  `ifAgreeName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of realnameauthentication
-- ----------------------------
INSERT INTO `realnameauthentication` VALUES ('1164078705455812610', '谢绍金', '320827198005304017', '15030169163', 'https://fdfs.baodingjl.com/group1/M00/00/0A/PM2i9F1c9GKAdHlJAAJcz8JLTXE260.jpg', 'https://fdfs.baodingjl.com/group1/M00/00/0A/PM2i9F1c9GKAdHlJAAJcz8JLTXE260.jpg', null, null, '2019-08-21 15:36:06', '2019-08-21 15:36:06', '0', '2', '1', '通过');
INSERT INTO `realnameauthentication` VALUES ('1165925918226141185', '123', '13063719930202213x', '18333287874', 'https://fdfs.baodingjl.com/group1/M00/00/0C/PM2i9F1jrL-AYDkPAAFbX-nBuiU528.jpg', 'https://fdfs.baodingjl.com/group1/M00/00/0C/PM2i9F1jrL-AYDkPAAFbX-nBuiU528.jpg', '1164086985523675138', null, '2019-08-26 17:56:15', '2019-08-26 17:56:15', '0', '2', '1', '通过');
INSERT INTO `realnameauthentication` VALUES ('1167272944672145409', 'test', '13062119901211181x', '13051993772', 'https://fdfs.baodingjl.com/group1/M00/00/11/PM2i9F1okymAG4fVAAC95MeW604419.jpg', 'https://fdfs.baodingjl.com/group1/M00/00/11/PM2i9F1ok0GAdk_NAABjX045_GA284.jpg', '1167246694075215873', null, '2019-08-30 11:08:52', '2019-08-30 11:08:52', '0', '2', '1', '通过');
INSERT INTO `realnameauthentication` VALUES ('1168441678690447362', '刘鹰', '420601196910021722', '13016852458', 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1s07eAZjMFAAElP3vHdYY730.jpg', 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1s07mAfDbnAAA3mTOKRd8623.jpg', '1167359208637218817', null, '2019-09-02 16:32:59', '2019-09-02 16:32:59', '0', '2', '1', '通过');
INSERT INTO `realnameauthentication` VALUES ('1171610438620282881', '罗宝龙', '130725198906011170', '18201316544', 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F14WtaAWazeAAH6BjnJdYU363.jpg', 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F14Wt2AB3yTAAH6BjnJdYU648.jpg', '1168438254745874434', null, '2019-09-11 10:24:31', '2019-09-11 10:24:31', '0', '2', '1', '通过');
INSERT INTO `realnameauthentication` VALUES ('1173136328596586497', '马威', '130702198009120954', '15203330000', 'https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F1958-ATjx3AADF04yDbpI903.jpg', 'https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F19592AJm5lAADFsTdmHJw083.jpg', '1171609644323962882', null, '2019-09-15 15:27:51', '2019-09-15 15:27:51', '0', '2', '1', '通过');
INSERT INTO `realnameauthentication` VALUES ('1176779644877873154', '李多多', '130181198902287326', '15210924356', 'https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F2LKQqAZI9gAAOk_tP6O1I133.jpg', 'https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F2LKRCAA5_BAAK7XSpB1cI005.jpg', '1171357319181238274', null, '2019-09-25 16:45:06', '2019-09-25 16:45:06', '0', '2', '1', '通过');
INSERT INTO `realnameauthentication` VALUES ('1179231784749703170', '哈哈嗝', '123456789123456789', '18888888888', 'https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F2UFLyAcWxzAAQKY6qABXQ911.jpg', 'https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F2UFL-AKBJnAASSYoB7Djg971.jpg', '1179231645037436929', null, '2019-10-02 11:09:01', '2019-10-02 11:09:01', '0', '2', '0', '未审核');
INSERT INTO `realnameauthentication` VALUES ('1183310394234183681', '王斐', '130703198808010029', '13603136553', 'https://fdfs.baodingjl.com/group1/M00/00/19/PM2i9F2i6z6AaI72AADmzfRZG2U804.jpg', 'https://fdfs.baodingjl.com/group1/M00/00/19/PM2i9F2i60uAHibMAAEAWjNnReo070.jpg', '1176766226590478338', null, '2019-10-13 17:15:57', '2019-10-13 17:15:57', '0', '2', '1', '通过');
INSERT INTO `realnameauthentication` VALUES ('1183960235482226689', '徐军', '130703198303311512', '15028513455', 'https://fdfs.baodingjl.com/group1/M00/00/1B/PM2i9F2lSHGAX0WQAAELcElL7S4964.jpg', 'https://fdfs.baodingjl.com/group1/M00/00/1B/PM2i9F2lSIKAMBZ3AAGHgY1y8so021.jpg', '1171608879786229762', null, '2019-10-15 12:18:12', '2019-10-15 12:18:12', '0', '2', '1', '通过');
INSERT INTO `realnameauthentication` VALUES ('1187575032387883010', 'Judy', '130181198601253547', '15210924356', 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2ybv6AEmkCAADXqbIC0BQ172.jpg', 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2ybwyAXPsPAACKsHPzHDE035.jpg', '1187574749654044673', null, '2019-10-25 11:42:06', '2019-10-25 11:42:06', '0', '2', '1', '通过');
INSERT INTO `realnameauthentication` VALUES ('1192615330071650306', '刘春响', '130622199202095636', '18201334413', 'https://fdfs.baodingjl.com/group1/M00/00/23/PM2i9F3ExSaAMwORAADAB6lqxmM628.jpg', 'https://fdfs.baodingjl.com/group1/M00/00/23/PM2i9F3ExTGAes3tAAGGe1spBNI138.jpg', '1177420241355612162', null, '2019-11-08 09:30:27', '2019-11-08 09:30:27', '0', '2', '1', '通过');

-- ----------------------------
-- Table structure for receiving_info
-- ----------------------------
DROP TABLE IF EXISTS `receiving_info`;
CREATE TABLE `receiving_info` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `name` varchar(64) NOT NULL COMMENT '收货人姓名',
  `address` varchar(255) NOT NULL COMMENT '地址',
  `phoneNum` varchar(11) NOT NULL COMMENT '手机号',
  `create_by` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(1024) DEFAULT NULL,
  `del_flag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1194227251191455747 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of receiving_info
-- ----------------------------
INSERT INTO `receiving_info` VALUES ('1164710745515667458', '李小鹏', '河北省保定市', '18333287871', '1164086985523675138', '2019-08-23 09:27:36', null, '2019-09-19 11:28:35', null, '0');
INSERT INTO `receiving_info` VALUES ('1167243998387646466', '要不要', '河北省保定', '18333287871', '1167042162204594177', '2019-08-30 09:13:50', null, '2019-08-30 09:13:50', null, '0');
INSERT INTO `receiving_info` VALUES ('1167308165866029058', '滴滴', '健康聪明的娜娜可开发量的大男大女上课', '15210924356', '1164074152454934530', '2019-08-30 13:28:49', null, '2019-08-30 13:38:41', null, '0');
INSERT INTO `receiving_info` VALUES ('1167323015723843585', '测试', '乐凯大街与创业路路口', '13051993772', '1167246694075215873', '2019-08-30 14:27:49', null, '2019-11-20 15:27:47', null, '0');
INSERT INTO `receiving_info` VALUES ('1168440340757803009', '罗宝龙', '河北省保定市莲池区未来石1-2706', '18201316544', '1168438254745874434', '2019-09-02 16:27:40', null, '2019-09-02 16:27:40', null, '0');
INSERT INTO `receiving_info` VALUES ('1172032529572294657', '嘟嘟', '未来石', '15210924356', '1171357319181238274', '2019-09-12 14:21:45', null, '2019-09-12 14:21:45', null, '0');
INSERT INTO `receiving_info` VALUES ('1172144171156963329', '马威', '张家口市经开区财富中心B10', '15203330000', '1171609644323962882', '2019-09-12 21:45:22', null, '2019-09-12 21:45:22', null, '0');
INSERT INTO `receiving_info` VALUES ('1184711151932088322', '1', '1', '13164976431', '1184710570299564033', '2019-10-17 14:02:04', null, '2019-10-17 14:02:04', null, '0');
INSERT INTO `receiving_info` VALUES ('1187299160161427458', '1', '1', '13588888888', '1186850996728070145', '2019-10-24 17:25:53', null, '2019-10-24 17:25:53', null, '0');
INSERT INTO `receiving_info` VALUES ('1192671443760652289', '111', '1111', '13000000000', '1177420241355612162', '2019-11-08 13:13:26', null, '2019-11-08 13:13:26', null, '0');
INSERT INTO `receiving_info` VALUES ('1194227251191455746', '徐军', '河北张家口市桥西区金鼎公馆', '13323233088', '1171608879786229762', '2019-11-12 20:15:39', null, '2019-11-12 20:15:39', null, '0');

-- ----------------------------
-- Table structure for rotary_image
-- ----------------------------
DROP TABLE IF EXISTS `rotary_image`;
CREATE TABLE `rotary_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `imageAddress` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `create_by` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` varchar(255) DEFAULT NULL,
  `activeId` bigint(20) DEFAULT NULL COMMENT '活动ID',
  `activeName` varchar(255) DEFAULT NULL COMMENT '活动名',
  `status` varchar(255) DEFAULT NULL COMMENT '是否展示',
  `statusName` varchar(255) DEFAULT NULL COMMENT '启/禁用名称',
  `colour` varchar(255) DEFAULT NULL COMMENT '颜色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1189459439239540738 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rotary_image
-- ----------------------------
INSERT INTO `rotary_image` VALUES ('1164732423641726977', 'https://fdfs.baodingjl.com/group1/M00/00/0B/PM2i9F1fVTKAQi7rAADFPAYOhb4479.jpg', null, '2019-08-23 10:53:44', null, '2019-08-23 10:53:44', '0', '1164731513070911489', 'Day 4 | 听听童声', '17', '启用', null);
INSERT INTO `rotary_image` VALUES ('1164733280135380994', 'https://fdfs.baodingjl.com/group1/M00/00/0B/PM2i9F1fVgKAaOMYAAbTXv4rSag849.png', null, '2019-08-23 10:57:08', null, '2019-08-23 10:57:08', '0', '1164732908838813697', '倡导无私奉献新风尚 谱写文明城市的新篇章', '17', '启用', null);
INSERT INTO `rotary_image` VALUES ('1167712523707412482', 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qLKOAEo6UAAJ7dtlB3dQ873.jpg', null, '2019-08-31 16:15:35', null, '2019-08-31 16:15:35', '0', '1167712004901367809', '【动态】春日暖阳送温暖 辐射爱心在路上', '17', '启用', null);
INSERT INTO `rotary_image` VALUES ('1189459439239540737', 'https://fdfs.baodingjl.com/group1/M00/00/22/PM2i9F25SguACJ8UAACRrmQ55ew961.png', null, '2019-10-30 16:30:04', null, '2019-10-30 16:30:04', '0', '1187628772541222913', '赚取积分', '18', '禁用', null);

-- ----------------------------
-- Table structure for schedule_job
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job`;
CREATE TABLE `schedule_job` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `cron_expression` varchar(100) DEFAULT NULL COMMENT 'cron表达式',
  `status` tinyint(4) DEFAULT NULL COMMENT '任务状态  0：正常  1：暂停',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务';

-- ----------------------------
-- Records of schedule_job
-- ----------------------------

-- ----------------------------
-- Table structure for schedule_job_log
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job_log`;
CREATE TABLE `schedule_job_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `job_id` bigint(20) NOT NULL COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `status` tinyint(4) NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `error` varchar(2000) DEFAULT NULL COMMENT '失败信息',
  `times` int(11) NOT NULL COMMENT '耗时(单位：毫秒)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务日志';

-- ----------------------------
-- Records of schedule_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for score_info
-- ----------------------------
DROP TABLE IF EXISTS `score_info`;
CREATE TABLE `score_info` (
  `id` bigint(64) NOT NULL,
  `user_id` bigint(64) NOT NULL COMMENT '用户id',
  `score` int(11) NOT NULL COMMENT '总积分',
  `total_hours` int(11) NOT NULL COMMENT '总工时',
  `create_by` bigint(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` bigint(64) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score_info
-- ----------------------------

-- ----------------------------
-- Table structure for seckill
-- ----------------------------
DROP TABLE IF EXISTS `seckill`;
CREATE TABLE `seckill` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品库存id',
  `name` varchar(120) NOT NULL COMMENT '商品名称',
  `number` int(11) NOT NULL COMMENT '库存数量',
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '秒杀开启时间',
  `end_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '秒杀结束时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `version` int(11) NOT NULL COMMENT '版本号',
  PRIMARY KEY (`id`),
  KEY `idx_start_time` (`start_time`),
  KEY `idx_end_time` (`end_time`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8 COMMENT='秒杀库存表';

-- ----------------------------
-- Records of seckill
-- ----------------------------
INSERT INTO `seckill` VALUES ('1000', '1000元秒杀iphone8', '0', '2018-05-10 15:31:53', '2018-05-10 15:31:53', '2018-05-10 15:31:53', '21');
INSERT INTO `seckill` VALUES ('1001', '500元秒杀ipad2', '100', '2018-05-10 15:31:53', '2018-05-10 15:31:53', '2018-05-10 15:31:53', '2');
INSERT INTO `seckill` VALUES ('1002', '300元秒杀小米4', '100', '2018-05-10 15:31:53', '2018-05-10 15:31:53', '2018-05-10 15:31:53', '1');
INSERT INTO `seckill` VALUES ('1003', '200元秒杀红米note', '100', '2018-05-10 15:31:53', '2018-05-10 15:31:53', '2018-05-10 15:31:53', '0');

-- ----------------------------
-- Table structure for sign_info
-- ----------------------------
DROP TABLE IF EXISTS `sign_info`;
CREATE TABLE `sign_info` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `active_id` bigint(64) DEFAULT NULL COMMENT '活动id',
  `user_id` bigint(64) DEFAULT NULL COMMENT '参与人',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `active_hour` float(11,2) DEFAULT NULL COMMENT '活动时长',
  `create_by` bigint(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` bigint(64) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `del_flag` varchar(255) DEFAULT NULL,
  `activeName` varchar(255) DEFAULT NULL COMMENT '活动名',
  `userName` varchar(255) DEFAULT NULL COMMENT '参与人',
  `approvalStatus` varchar(10) DEFAULT NULL COMMENT '审批状态（0未审批1通过2未通过）',
  `activeCreateUserId` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `activeCreateUserName` varchar(255) DEFAULT NULL COMMENT '创建人',
  `approvalStatusName` varchar(255) DEFAULT NULL COMMENT '审批状态名',
  `clockStatus` varchar(10) DEFAULT NULL COMMENT '打卡状态（0未打卡，1打卡中，2结束打卡）',
  `imagePicture` varchar(255) DEFAULT NULL COMMENT '打卡人照片',
  `signUpStatus` varchar(255) DEFAULT NULL COMMENT '报名状态（0立即报名1审核中2立即参与）',
  `imageEndPicture` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sign_info
-- ----------------------------
INSERT INTO `sign_info` VALUES ('68', '1164448810127794177', '1164074507439853570', '2019-08-22 16:08:55', null, null, null, '2019-08-22 16:06:45', null, null, null, null, '互动百科', 'Judy', '1', '1164074507439853570', null, '审批通过', '1', 'https://fdfs.baodingjl.com/group1/M00/00/0A/PM2i9F1eTZaAHcD6AAKEC4x6vQw172.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoS13IbLGe2BRE9WibtEETRBpqmz6CicOzIAqiaeldN4KvPfLHQeIRLWlQIQ18Cw9NNJYL4ER883O8ibg/132');
INSERT INTO `sign_info` VALUES ('69', '1164448810127794177', '1164074152454934530', '2019-08-22 16:12:49', null, null, null, '2019-08-22 16:10:43', null, null, null, null, '互动百科', '硿白', '1', '1164074507439853570', null, '通过', '1', 'https://fdfs.baodingjl.com/group1/M00/00/0A/PM2i9F1eTn-AK-m6AAStT0OQkX8336.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `sign_info` VALUES ('70', '1164727852903153665', '1164086985523675138', null, null, null, null, '2019-08-23 10:35:34', null, null, null, null, '村企联盟 助学圆梦 夏令营', '李小鵬', '1', '1164086985523675138', null, '审批通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `sign_info` VALUES ('71', '1167256503658962946', '1164074152454934530', '2019-08-30 10:03:57', null, null, null, '2019-08-30 10:03:32', null, null, null, null, '“秃如其来”的危机，杜绝亚健康e', '硿白', '1', '1164074152454934530', null, '审批通过', '1', 'https://fdfs.baodingjl.com/group1/M00/00/11/PM2i9F1ohAuAWRwIAAQETsYv98I452.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `sign_info` VALUES ('72', '1167276960533676034', '1164074152454934530', '2019-08-30 11:25:12', '2019-08-31 09:39:22', '22.16', null, '2019-08-30 11:24:49', null, null, null, null, '节能减排', '硿白', '1', '1164074152454934530', null, '审批通过', '2', 'https://fdfs.baodingjl.com/group1/M00/00/12/PM2i9F1olxeAQ_xHAAP60HwGCqQ375.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `sign_info` VALUES ('73', '1167276960533676034', '1164074507439853570', '2019-08-30 11:52:15', null, null, null, '2019-08-30 11:26:23', null, null, null, null, '节能减排', 'Judy', '1', '1164074152454934530', null, '通过', '1', 'https://fdfs.baodingjl.com/group1/M00/00/12/PM2i9F1onW2AVuhPAAHlE_eJgws929.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoS13IbLGe2BRE9WibtEETRBpqmz6CicOzIAqiaeldN4KvPfLHQeIRLWlQIQ18Cw9NNJYL4ER883O8ibg/132');
INSERT INTO `sign_info` VALUES ('74', '1167281924467294210', '1167246694075215873', '2019-08-30 11:47:20', '2019-08-30 17:06:22', '5.32', null, '2019-08-30 11:44:33', null, null, null, null, '最美家园', 'Mumutianxin', '1', '1167246694075215873', null, '审批通过', '2', 'https://fdfs.baodingjl.com/group1/M00/00/12/PM2i9F1onEaAMChjAABxqRi27Iw228.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKIw7PnDUED8DVia9SEyxickbm5MeWdnhT2OOUib19om8rvYJEiciaCMDFH9vR2gibMC8krjb1bTJ3jfAXA/132');
INSERT INTO `sign_info` VALUES ('75', '1167282393742802945', '1164074152454934530', '2019-08-30 11:46:49', '2019-08-30 11:47:03', '0.00', null, '2019-08-30 11:46:24', null, null, null, null, '在养老院制造家的感觉', '硿白', '1', '1164074152454934530', null, '审批通过', '2', 'https://fdfs.baodingjl.com/group1/M00/00/12/PM2i9F1onCeALr2BAAORHGIVGug658.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `sign_info` VALUES ('76', '1167282393742802945', '1164074507439853570', '2019-08-30 11:51:32', null, null, null, '2019-08-30 11:48:59', null, null, null, null, '在养老院制造家的感觉', 'Judy', '1', '1164074152454934530', null, '通过', '1', 'https://fdfs.baodingjl.com/group1/M00/00/12/PM2i9F1onUOABJwJAAN5URP03qk888.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoS13IbLGe2BRE9WibtEETRBpqmz6CicOzIAqiaeldN4KvPfLHQeIRLWlQIQ18Cw9NNJYL4ER883O8ibg/132');
INSERT INTO `sign_info` VALUES ('77', '1167282393742802945', '1167246694075215873', null, null, null, null, '2019-08-30 11:51:30', null, null, null, null, '在养老院制造家的感觉', 'Mumutianxin', '2', '1164074152454934530', null, '不通过', '0', null, '0', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKIw7PnDUED8DVia9SEyxickbm5MeWdnhT2OOUib19om8rvYJEiciaCMDFH9vR2gibMC8krjb1bTJ3jfAXA/132');
INSERT INTO `sign_info` VALUES ('78', '1167307085618839553', '1164086985523675138', '2019-08-30 13:34:56', null, null, null, '2019-08-30 13:24:31', null, null, null, null, '轰动测111', '李小鵬', '1', '1164086985523675138', null, '审批通过', '1', 'https://fdfs.baodingjl.com/group1/M00/00/12/PM2i9F1otX2ALHQ0AAXS1cGpfw0758.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `sign_info` VALUES ('80', '1167281924467294210', '1164074152454934530', null, null, null, null, '2019-08-30 17:39:12', null, null, null, null, '最美家园', '硿白', '1', '1167246694075215873', null, '通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `sign_info` VALUES ('81', '1167307085618839553', '1164074152454934530', null, null, null, null, '2019-08-30 17:49:34', null, null, null, null, '轰动测111', '硿白', '1', '1164086985523675138', null, '通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `sign_info` VALUES ('82', '1167276960533676034', '1167246694075215873', null, null, null, null, '2019-08-30 18:03:40', null, null, null, null, '节能减排', 'Mumutianxin', '1', '1164074152454934530', null, '通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKIw7PnDUED8DVia9SEyxickbm5MeWdnhT2OOUib19om8rvYJEiciaCMDFH9vR2gibMC8krjb1bTJ3jfAXA/132');
INSERT INTO `sign_info` VALUES ('83', '1167381080888197122', '1167246694075215873', null, null, null, null, '2019-08-30 18:18:33', null, null, null, null, '唯美', 'Mumutianxin', '1', '1167246694075215873', null, '审批通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKIw7PnDUED8DVia9SEyxickbm5MeWdnhT2OOUib19om8rvYJEiciaCMDFH9vR2gibMC8krjb1bTJ3jfAXA/132');
INSERT INTO `sign_info` VALUES ('84', '1167307085618839553', '1167246694075215873', null, null, null, null, '2019-08-31 10:43:33', null, null, null, null, '轰动测111', 'Mumutianxin', '1', '1164086985523675138', null, '通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKIw7PnDUED8DVia9SEyxickbm5MeWdnhT2OOUib19om8rvYJEiciaCMDFH9vR2gibMC8krjb1bTJ3jfAXA/132');
INSERT INTO `sign_info` VALUES ('85', '1167680388124569601', '1167246694075215873', '2019-08-31 14:08:39', '2019-08-31 14:09:34', '0.02', null, '2019-08-31 14:07:54', null, null, null, null, '+$-……', 'Mumutianxin', '1', '1167246694075215873', null, '审批通过', '2', 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qDuSAVz71AAB1u17jnJ4406.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKIw7PnDUED8DVia9SEyxickbm5MeWdnhT2OOUib19om8rvYJEiciaCMDFH9vR2gibMC8krjb1bTJ3jfAXA/132');
INSERT INTO `sign_info` VALUES ('86', '1167307085618839553', '1167042162204594177', '2019-08-31 14:23:27', '2019-08-31 14:23:47', '0.01', null, '2019-08-31 14:22:18', null, null, null, null, '轰动测111', '(^_^)', '1', '1164086985523675138', null, '通过', '2', 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qEl2ATxtPAABj1BFzZEo166.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/ounbbCtiatmFERLRIFhtNZ45hSO5ECiciaUMqSgCkDpibiaAgefanbKSsUKLMyjeialF7q7CEom26rjhC9PWFic359zFA/132');
INSERT INTO `sign_info` VALUES ('87', '1168350557138251778', '1164074152454934530', '2019-09-02 11:22:18', '2019-09-07 09:37:13', '118.25', null, '2019-09-02 10:30:54', null, null, null, null, '闲暇时间公益！给孩子一个希望！', '硿白', '1', '1164074152454934530', null, '审批通过', '2', 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1siuiAYrFfAASfZ5_tKAE179.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `sign_info` VALUES ('88', '1168361245407637505', '1164074152454934530', '2019-09-02 11:23:02', null, null, null, '2019-09-02 11:13:23', null, null, null, null, '雄安新区启动“益暖童心”项目', '硿白', '1', '1164074152454934530', null, '审批通过', '1', 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1sixOAeAi0AAZF3Z0jSds812.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `sign_info` VALUES ('89', '1168424705780805634', '1164074152454934530', null, null, null, null, '2019-09-02 15:25:33', null, null, null, null, '青少年打游戏不能等到成瘾再干预', '硿白', '1', '1164074152454934530', null, '审批通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `sign_info` VALUES ('90', '1167281924467294210', '1164086985523675138', null, null, null, null, '2019-09-12 16:02:12', null, null, null, null, '最美家园', '李小鵬', '1', '1167246694075215873', null, '通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `sign_info` VALUES ('91', '1176783044621312001', '1171357319181238274', null, null, null, null, '2019-09-25 16:58:36', null, null, null, null, '学习国家制度和法律制度的形成及发展', '硿白', '1', '1171357319181238274', null, '审批通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `sign_info` VALUES ('92', '1177116292387905537', '1171357319181238274', null, null, null, null, '2019-09-26 15:02:49', null, null, null, null, '爱国是本分也是职责', '硿白', '1', '1171357319181238274', null, '审批通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `sign_info` VALUES ('93', '1183297805273997313', '1167042162204594177', '2019-10-13 16:26:47', '2019-10-13 16:27:02', '0.00', null, '2019-10-13 16:25:56', null, null, null, null, '测试活动', '(^_^)', '1', '1167042162204594177', null, '审批通过', '2', 'https://fdfs.baodingjl.com/group1/M00/00/19/PM2i9F2i38GASnLcAAA9gOW0EE0416.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/ounbbCtiatmFERLRIFhtNZ45hSO5ECiciaUMqSgCkDpibiaAgefanbKSsUKLMyjeialF7q7CEom26rjhC9PWFic359zFA/132');
INSERT INTO `sign_info` VALUES ('94', '1183313710217371650', '1176766226590478338', '2019-10-13 17:33:46', '2019-10-13 17:34:12', '0.00', null, '2019-10-13 17:29:08', null, null, null, null, '公益一小时', '小茉莉', '1', '1176766226590478338', null, '审批通过', '2', 'https://fdfs.baodingjl.com/group1/M00/00/19/PM2i9F2i73CABwOLAAEajimSimQ612.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKI5qWDJ4Stt31ibZnyYeMlicrnf2V53FUibeyicQibkOXmll0Da7E1XhoV1mic5ds6PVAsbEueGSotZFyA/132');
INSERT INTO `sign_info` VALUES ('95', '1183665821471940610', '1176766226590478338', null, null, null, null, '2019-10-14 16:48:18', null, null, null, null, '捡烟头', '小茉莉', '1', '1176766226590478338', null, '审批通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKI5qWDJ4Stt31ibZnyYeMlicrnf2V53FUibeyicQibkOXmll0Da7E1XhoV1mic5ds6PVAsbEueGSotZFyA/132');
INSERT INTO `sign_info` VALUES ('96', '1183962649895575553', '1167042162204594177', null, null, null, null, '2019-10-15 12:27:47', null, null, null, null, '测试活动', '(^_^)', '1', '1167042162204594177', null, '审批通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/ounbbCtiatmFERLRIFhtNZ45hSO5ECiciaUMqSgCkDpibiaAgefanbKSsUKLMyjeialF7q7CEom26rjhC9PWFic359zFA/132');
INSERT INTO `sign_info` VALUES ('97', '1184001648215400449', '1164086985523675138', null, null, null, null, '2019-10-15 15:02:45', null, null, null, null, '紧密结合教育实际 着力解决突出问题', '李小鵬', '1', '1164086985523675138', null, '审批通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `sign_info` VALUES ('98', '1184001648215400449', '1167042162204594177', null, null, null, null, '2019-10-17 15:30:15', null, null, null, null, '紧密结合教育实际 着力解决突出问题', '(^_^)', '0', '1164086985523675138', null, '未审批', '0', null, '1', null, 'https://wx.qlogo.cn/mmopen/vi_32/ounbbCtiatmFERLRIFhtNZ45hSO5ECiciaUMqSgCkDpibiaAgefanbKSsUKLMyjeialF7q7CEom26rjhC9PWFic359zFA/132');
INSERT INTO `sign_info` VALUES ('99', '1186826714430013442', '1164086985523675138', null, null, null, null, '2019-10-23 10:08:34', null, null, null, null, '测试打卡定位', '李小鵬', '1', '1164086985523675138', null, '审批通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `sign_info` VALUES ('100', '1186828591116812289', '1164086985523675138', '2019-10-23 10:19:42', '2019-10-23 10:19:59', '0.00', null, '2019-10-23 10:16:01', null, null, null, null, '测试打卡定位活动', '李小鵬', '1', '1164086985523675138', null, '审批通过', '2', 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2vuKiANi7YAAzbMfxPlfA488.png', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `sign_info` VALUES ('101', '1186832752780738562', '1164086985523675138', null, null, null, null, '2019-10-23 10:32:33', null, null, null, null, '111111111', '李小鵬', '1', '1164086985523675138', null, '审批通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `sign_info` VALUES ('102', '1186832752780738562', '1186850996728070145', null, null, null, null, '2019-10-23 11:45:25', null, null, null, null, '111111111', 'Nirvana', '0', '1164086985523675138', null, '未审批', '0', null, '1', null, 'https://wx.qlogo.cn/mmopen/vi_32/MfOBO14QOwvLC3wyya0jUZXe33QFHWZmmicOezawnXmN27St3k8Eia2w2K3Io0UJrAXtNibblTcEEmICEQW5htdMQ/132');
INSERT INTO `sign_info` VALUES ('103', '1186851322378027010', '1186850996728070145', null, null, null, null, '2019-10-23 11:46:21', null, null, null, null, '1111', 'Nirvana', '1', '1186850996728070145', null, '审批通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/MfOBO14QOwvLC3wyya0jUZXe33QFHWZmmicOezawnXmN27St3k8Eia2w2K3Io0UJrAXtNibblTcEEmICEQW5htdMQ/132');
INSERT INTO `sign_info` VALUES ('104', '1186853666016690178', '1186850996728070145', null, null, null, null, '2019-10-23 11:55:39', null, null, null, null, '位置', 'Nirvana', '1', '1186850996728070145', null, '审批通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/MfOBO14QOwvLC3wyya0jUZXe33QFHWZmmicOezawnXmN27St3k8Eia2w2K3Io0UJrAXtNibblTcEEmICEQW5htdMQ/132');
INSERT INTO `sign_info` VALUES ('105', '1186883604354662401', '1186850996728070145', '2019-10-23 14:33:42', '2019-10-23 14:47:16', '0.23', null, '2019-10-23 13:54:37', null, null, null, null, '1111', 'Nirvana', '1', '1186850996728070145', null, '审批通过', '2', 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2v9ESAUo0TAAAhGDja1d4126.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/MfOBO14QOwvLC3wyya0jUZXe33QFHWZmmicOezawnXmN27St3k8Eia2w2K3Io0UJrAXtNibblTcEEmICEQW5htdMQ/132');
INSERT INTO `sign_info` VALUES ('106', '1186886546054938626', '1186850996728070145', '2019-10-23 14:06:30', '2019-10-23 14:06:40', '0.00', null, '2019-10-23 14:06:19', null, null, null, null, '凄凄切切群群群群群群群群', 'Nirvana', '1', '1186850996728070145', null, '审批通过', '2', 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2v7eSAJLRRAAzbMfxPlfA399.png', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/MfOBO14QOwvLC3wyya0jUZXe33QFHWZmmicOezawnXmN27St3k8Eia2w2K3Io0UJrAXtNibblTcEEmICEQW5htdMQ/132');
INSERT INTO `sign_info` VALUES ('107', '1186897162257793026', '1186850996728070145', null, null, null, null, '2019-10-23 14:48:30', null, null, null, null, '1', 'Nirvana', '1', '1186850996728070145', null, '审批通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/MfOBO14QOwvLC3wyya0jUZXe33QFHWZmmicOezawnXmN27St3k8Eia2w2K3Io0UJrAXtNibblTcEEmICEQW5htdMQ/132');
INSERT INTO `sign_info` VALUES ('108', '1186897439056691201', '1186850996728070145', '2019-10-23 14:50:03', null, null, null, '2019-10-23 14:49:36', null, null, null, null, '1', 'Nirvana', '1', '1186850996728070145', null, '审批通过', '1', 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2v-BaAA2vvAAzbMfxPlfA110.png', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/MfOBO14QOwvLC3wyya0jUZXe33QFHWZmmicOezawnXmN27St3k8Eia2w2K3Io0UJrAXtNibblTcEEmICEQW5htdMQ/132');
INSERT INTO `sign_info` VALUES ('109', '1186898154684645377', '1186850996728070145', '2019-10-23 14:52:37', null, null, null, '2019-10-23 14:52:26', null, null, null, null, '2', 'Nirvana', '1', '1186850996728070145', null, '审批通过', '1', 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2v-LOAK8xBAAWludScgkQ393.png', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/MfOBO14QOwvLC3wyya0jUZXe33QFHWZmmicOezawnXmN27St3k8Eia2w2K3Io0UJrAXtNibblTcEEmICEQW5htdMQ/132');
INSERT INTO `sign_info` VALUES ('110', '1186898464777928706', '1186850996728070145', null, null, null, null, '2019-10-23 14:53:40', null, null, null, null, '555', 'Nirvana', '1', '1186850996728070145', null, '审批通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/MfOBO14QOwvLC3wyya0jUZXe33QFHWZmmicOezawnXmN27St3k8Eia2w2K3Io0UJrAXtNibblTcEEmICEQW5htdMQ/132');
INSERT INTO `sign_info` VALUES ('111', '1187555141886824449', '1171357319181238274', '2019-10-25 10:28:59', '2019-10-25 10:29:21', '0.01', null, '2019-10-25 10:23:04', null, null, null, null, '测试数据', '硿白', '1', '1171357319181238274', null, '审批通过', '2', 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2yXeiAC943AAMrndpePVQ492.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `sign_info` VALUES ('112', '1187555141886824449', '1164086985523675138', '2019-10-25 11:49:47', null, null, null, '2019-10-25 10:26:29', null, null, null, null, '测试数据', '李小鵬', '1', '1171357319181238274', null, '通过', '1', 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2ycM6ACrK6AASSGVioO6w358.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `sign_info` VALUES ('113', '1187575262890053633', '1171357319181238274', null, null, null, null, '2019-10-25 11:43:01', null, null, null, null, '北包包b', '硿白', '1', '1171357319181238274', null, '审批通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `sign_info` VALUES ('114', '1187575262890053633', '1187574749654044673', null, null, null, null, '2019-10-25 11:44:28', null, null, null, null, '北包包b', 'Judy', '2', '1171357319181238274', null, '不通过', '0', null, '0', null, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoS13IbLGe2BRE9WibtEETRBpqmz6CicOzIAqiaeldN4KvPfLHQeIRLWlQIQ18Cw9NNJYL4ER883O8ibg/132');
INSERT INTO `sign_info` VALUES ('115', '1187575262890053633', '1187574749654044673', '2019-10-25 11:46:07', null, null, null, '2019-10-25 11:44:30', null, null, null, null, '北包包b', 'Judy', '1', '1171357319181238274', null, '通过', '1', 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2yb_GAHIXJAADeUhzN8ds729.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoS13IbLGe2BRE9WibtEETRBpqmz6CicOzIAqiaeldN4KvPfLHQeIRLWlQIQ18Cw9NNJYL4ER883O8ibg/132');
INSERT INTO `sign_info` VALUES ('116', '1187577490979835906', '1164086985523675138', '2019-10-25 11:52:06', null, null, null, '2019-10-25 11:51:53', null, null, null, null, '我', '李小鵬', '1', '1164086985523675138', null, '审批通过', '1', 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2ycWSAV19oAAQg6-_q5s8697.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `sign_info` VALUES ('117', '1187577490979835906', '1171357319181238274', null, null, null, null, '2019-10-25 13:02:06', null, null, null, null, '我', '硿白', '0', '1164086985523675138', null, '未审批', '0', null, '1', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `sign_info` VALUES ('118', '1187596928772886530', '1167042162204594177', null, null, null, null, '2019-10-25 13:09:07', null, null, null, null, '2', '(^_^)', '1', '1167042162204594177', null, '审批通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/ounbbCtiatmFERLRIFhtNZ45hSO5ECiciaUMqSgCkDpibiaAgefanbKSsUKLMyjeialF7q7CEom26rjhC9PWFic359zFA/132');
INSERT INTO `sign_info` VALUES ('119', '1187597629590753281', '1186850996728070145', null, null, null, null, '2019-10-25 13:11:54', null, null, null, null, '去', 'Nirvana', '1', '1186850996728070145', null, '审批通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/MfOBO14QOwvLC3wyya0jUZXe33QFHWZmmicOezawnXmN27St3k8Eia2w2K3Io0UJrAXtNibblTcEEmICEQW5htdMQ/132');
INSERT INTO `sign_info` VALUES ('120', '1187598288360722434', '1171357319181238274', '2019-10-25 13:14:50', null, null, null, '2019-10-25 13:14:31', null, null, null, null, '哈哈', '硿白', '1', '1171357319181238274', null, '审批通过', '1', 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2yhMiAYI5LAAW7JC7-r8s279.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `sign_info` VALUES ('121', '1187598704574091266', '1186850996728070145', null, null, null, null, '2019-10-25 13:16:10', null, null, null, null, '去', 'Nirvana', '1', '1186850996728070145', null, '审批通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/MfOBO14QOwvLC3wyya0jUZXe33QFHWZmmicOezawnXmN27St3k8Eia2w2K3Io0UJrAXtNibblTcEEmICEQW5htdMQ/132');
INSERT INTO `sign_info` VALUES ('122', '1187598704574091266', '1167042162204594177', null, null, null, null, '2019-10-25 13:26:57', null, null, null, null, '去', '(^_^)', '1', '1186850996728070145', null, '通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/ounbbCtiatmFERLRIFhtNZ45hSO5ECiciaUMqSgCkDpibiaAgefanbKSsUKLMyjeialF7q7CEom26rjhC9PWFic359zFA/132');
INSERT INTO `sign_info` VALUES ('123', '1187598704574091266', '1164086985523675138', null, null, null, null, '2019-10-25 13:31:21', null, null, null, null, '去', '李小鵬', '1', '1186850996728070145', null, '通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132');
INSERT INTO `sign_info` VALUES ('124', '1187617975798747137', '1171357319181238274', null, null, null, null, '2019-10-25 14:32:45', null, null, null, null, '拟南芥k', '硿白', '1', '1171357319181238274', null, '审批通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `sign_info` VALUES ('125', '1187617975798747137', '1187574749654044673', null, null, null, null, '2019-10-25 14:45:34', null, null, null, null, '拟南芥k', 'Judy', '1', '1171357319181238274', null, '通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoS13IbLGe2BRE9WibtEETRBpqmz6CicOzIAqiaeldN4KvPfLHQeIRLWlQIQ18Cw9NNJYL4ER883O8ibg/132');
INSERT INTO `sign_info` VALUES ('126', '1187598704574091266', '1187574749654044673', null, null, null, null, '2019-10-25 14:47:26', null, null, null, null, '去', 'Judy', '0', '1186850996728070145', null, '未审批', '0', null, '1', null, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoS13IbLGe2BRE9WibtEETRBpqmz6CicOzIAqiaeldN4KvPfLHQeIRLWlQIQ18Cw9NNJYL4ER883O8ibg/132');
INSERT INTO `sign_info` VALUES ('127', '1187622411610771457', '1187574749654044673', '2019-10-25 14:50:59', null, null, null, '2019-10-25 14:50:23', null, null, null, null, '锻炼身体', 'Judy', '1', '1187574749654044673', null, '审批通过', '1', 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2ym1CAG26rAADag0BGdzg960.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoS13IbLGe2BRE9WibtEETRBpqmz6CicOzIAqiaeldN4KvPfLHQeIRLWlQIQ18Cw9NNJYL4ER883O8ibg/132');
INSERT INTO `sign_info` VALUES ('128', '1187622411610771457', '1171357319181238274', null, null, null, null, '2019-10-25 14:50:52', null, null, null, null, '锻炼身体', '硿白', '1', '1187574749654044673', null, '通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `sign_info` VALUES ('129', '1187598704574091266', '1171357319181238274', null, null, null, null, '2019-10-25 15:11:03', null, null, null, null, '去', '硿白', '0', '1186850996728070145', null, '未审批', '0', null, '1', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `sign_info` VALUES ('130', '1187628772541222913', '1171357319181238274', '2019-10-25 15:20:46', '2019-10-25 16:34:39', '1.23', null, '2019-10-25 15:15:39', null, null, null, null, '赚取积分', '硿白', '1', '1171357319181238274', null, '审批通过', '2', 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2yokyAfFqTAAReh-js564200.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `sign_info` VALUES ('131', '1187628772541222913', '1187574749654044673', '2019-10-25 15:20:12', null, null, null, '2019-10-25 15:16:25', null, null, null, null, '赚取积分', 'Judy', '1', '1171357319181238274', null, '通过', '1', 'https://fdfs.baodingjl.com/group1/M00/00/21/PM2i9F2yoWyAcDo0AADap5ig45E457.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoS13IbLGe2BRE9WibtEETRBpqmz6CicOzIAqiaeldN4KvPfLHQeIRLWlQIQ18Cw9NNJYL4ER883O8ibg/132');
INSERT INTO `sign_info` VALUES ('132', '1188631706544513025', '1171357319181238274', '2019-10-28 09:41:21', null, null, null, '2019-10-28 09:40:57', null, null, null, null, '秋风扫落叶', '硿白', '1', '1171357319181238274', null, '审批通过', '1', 'https://fdfs.baodingjl.com/group1/M00/00/22/PM2i9F22Rz6AVELCAASzWLyQpoc995.jpg', '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132');
INSERT INTO `sign_info` VALUES ('133', '1192669292137226242', '1177420241355612162', null, null, null, null, '2019-11-08 13:04:53', null, null, null, null, '吃饭', '繁华都市', '1', '1177420241355612162', null, '审批通过', '0', null, '2', null, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLVJnl7nwO0rKmEXGzlHQYnYBYic7rMo61ffhgFib1FhO7ztHWnIppGU7BMjYZd3eWzSq0WEk6oSrqQ/132');

-- ----------------------------
-- Table structure for success_killed
-- ----------------------------
DROP TABLE IF EXISTS `success_killed`;
CREATE TABLE `success_killed` (
  `id` bigint(20) NOT NULL COMMENT '秒杀商品id',
  `seckill_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL COMMENT '用户Id',
  `state` tinyint(4) NOT NULL COMMENT '状态标示：-1指无效，0指成功，1指已付款',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`,`user_id`),
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='秒杀成功明细表';

-- ----------------------------
-- Records of success_killed
-- ----------------------------
INSERT INTO `success_killed` VALUES ('1095202741703188482', '1000', '0', '0', '2019-02-12 14:07:36');
INSERT INTO `success_killed` VALUES ('1095202743292829698', '1000', '1', '0', '2019-02-12 14:07:37');
INSERT INTO `success_killed` VALUES ('1095202744823750658', '1000', '2', '0', '2019-02-12 14:07:37');
INSERT INTO `success_killed` VALUES ('1095202746350477314', '1000', '3', '0', '2019-02-12 14:07:37');
INSERT INTO `success_killed` VALUES ('1095202747906564098', '1000', '4', '0', '2019-02-12 14:07:38');
INSERT INTO `success_killed` VALUES ('1095202749441679362', '1000', '5', '0', '2019-02-12 14:07:38');
INSERT INTO `success_killed` VALUES ('1095202750985183234', '1000', '6', '0', '2019-02-12 14:07:38');
INSERT INTO `success_killed` VALUES ('1095202752516104194', '1000', '7', '0', '2019-02-12 14:07:39');
INSERT INTO `success_killed` VALUES ('1095202754047025154', '1000', '8', '0', '2019-02-12 14:07:39');
INSERT INTO `success_killed` VALUES ('1095202755577946113', '1000', '9', '0', '2019-02-12 14:07:39');
INSERT INTO `success_killed` VALUES ('1095202757129838594', '1000', '10', '0', '2019-02-12 14:07:40');
INSERT INTO `success_killed` VALUES ('1095202758656565250', '1000', '11', '0', '2019-02-12 14:07:40');
INSERT INTO `success_killed` VALUES ('1095202760200069122', '1000', '12', '0', '2019-02-12 14:07:41');
INSERT INTO `success_killed` VALUES ('1095202761730990082', '1000', '13', '0', '2019-02-12 14:07:41');
INSERT INTO `success_killed` VALUES ('1095202763282882561', '1000', '14', '0', '2019-02-12 14:07:41');
INSERT INTO `success_killed` VALUES ('1095202764822192130', '1000', '15', '0', '2019-02-12 14:07:42');
INSERT INTO `success_killed` VALUES ('1095202766353113090', '1000', '16', '0', '2019-02-12 14:07:42');
INSERT INTO `success_killed` VALUES ('1095202767905005570', '1000', '17', '0', '2019-02-12 14:07:42');
INSERT INTO `success_killed` VALUES ('1095202769427537922', '1000', '18', '0', '2019-02-12 14:07:43');
INSERT INTO `success_killed` VALUES ('1095202770945875970', '1000', '19', '0', '2019-02-12 14:07:43');
INSERT INTO `success_killed` VALUES ('1095202772476796930', '1000', '20', '0', '2019-02-12 14:07:44');
INSERT INTO `success_killed` VALUES ('1095202774024495106', '1000', '21', '0', '2019-02-12 14:07:44');
INSERT INTO `success_killed` VALUES ('1095202775542833153', '1000', '22', '0', '2019-02-12 14:07:44');
INSERT INTO `success_killed` VALUES ('1095202777069559810', '1000', '23', '0', '2019-02-12 14:07:45');
INSERT INTO `success_killed` VALUES ('1095202778604675073', '1000', '24', '0', '2019-02-12 14:07:45');
INSERT INTO `success_killed` VALUES ('1095202780139790338', '1000', '25', '0', '2019-02-12 14:07:45');
INSERT INTO `success_killed` VALUES ('1095202781666516993', '1000', '26', '0', '2019-02-12 14:07:46');
INSERT INTO `success_killed` VALUES ('1095202783251963905', '1000', '27', '0', '2019-02-12 14:07:46');
INSERT INTO `success_killed` VALUES ('1095202784845799425', '1000', '28', '0', '2019-02-12 14:07:46');
INSERT INTO `success_killed` VALUES ('1095202786364137473', '1000', '29', '0', '2019-02-12 14:07:47');
INSERT INTO `success_killed` VALUES ('1095202787911835649', '1000', '30', '0', '2019-02-12 14:07:47');
INSERT INTO `success_killed` VALUES ('1095202789446950913', '1000', '31', '0', '2019-02-12 14:07:48');
INSERT INTO `success_killed` VALUES ('1095202790986260482', '1000', '32', '0', '2019-02-12 14:07:48');
INSERT INTO `success_killed` VALUES ('1095202792504598530', '1000', '33', '0', '2019-02-12 14:07:48');
INSERT INTO `success_killed` VALUES ('1095202794027130881', '1000', '34', '0', '2019-02-12 14:07:49');
INSERT INTO `success_killed` VALUES ('1095202795570634754', '1000', '35', '0', '2019-02-12 14:07:49');
INSERT INTO `success_killed` VALUES ('1095202797097361409', '1000', '36', '0', '2019-02-12 14:07:49');
INSERT INTO `success_killed` VALUES ('1095202798628282369', '1000', '37', '0', '2019-02-12 14:07:50');
INSERT INTO `success_killed` VALUES ('1095202800146620417', '1000', '38', '0', '2019-02-12 14:07:50');
INSERT INTO `success_killed` VALUES ('1095202801681735681', '1000', '39', '0', '2019-02-12 14:07:50');
INSERT INTO `success_killed` VALUES ('1095202803212656641', '1000', '40', '0', '2019-02-12 14:07:51');
INSERT INTO `success_killed` VALUES ('1095202804747771906', '1000', '41', '0', '2019-02-12 14:07:51');
INSERT INTO `success_killed` VALUES ('1095202806270304258', '1000', '42', '0', '2019-02-12 14:07:52');
INSERT INTO `success_killed` VALUES ('1095202807801225218', '1000', '43', '0', '2019-02-12 14:07:52');
INSERT INTO `success_killed` VALUES ('1095202809353117697', '1000', '44', '0', '2019-02-12 14:07:52');
INSERT INTO `success_killed` VALUES ('1095202810884038657', '1000', '45', '0', '2019-02-12 14:07:53');
INSERT INTO `success_killed` VALUES ('1095202812402376706', '1000', '46', '0', '2019-02-12 14:07:53');
INSERT INTO `success_killed` VALUES ('1095202813920714753', '1000', '47', '0', '2019-02-12 14:07:53');
INSERT INTO `success_killed` VALUES ('1095202815451635714', '1000', '48', '0', '2019-02-12 14:07:54');
INSERT INTO `success_killed` VALUES ('1095202816974168066', '1000', '49', '0', '2019-02-12 14:07:54');
INSERT INTO `success_killed` VALUES ('1095202818505089025', '1000', '50', '0', '2019-02-12 14:07:54');
INSERT INTO `success_killed` VALUES ('1095202820023427073', '1000', '51', '0', '2019-02-12 14:07:55');
INSERT INTO `success_killed` VALUES ('1095202821558542338', '1000', '52', '0', '2019-02-12 14:07:55');
INSERT INTO `success_killed` VALUES ('1095202823081074689', '1000', '53', '0', '2019-02-12 14:07:56');
INSERT INTO `success_killed` VALUES ('1095202824607801346', '1000', '54', '0', '2019-02-12 14:07:56');
INSERT INTO `success_killed` VALUES ('1095202826126139393', '1000', '55', '0', '2019-02-12 14:07:56');
INSERT INTO `success_killed` VALUES ('1095202827648671745', '1000', '56', '0', '2019-02-12 14:07:57');
INSERT INTO `success_killed` VALUES ('1095202829208952833', '1000', '57', '0', '2019-02-12 14:07:57');
INSERT INTO `success_killed` VALUES ('1095202830723096578', '1000', '58', '0', '2019-02-12 14:07:57');
INSERT INTO `success_killed` VALUES ('1095202832258211841', '1000', '59', '0', '2019-02-12 14:07:58');
INSERT INTO `success_killed` VALUES ('1095202833776549890', '1000', '60', '0', '2019-02-12 14:07:58');
INSERT INTO `success_killed` VALUES ('1095202835290693634', '1000', '61', '0', '2019-02-12 14:07:58');
INSERT INTO `success_killed` VALUES ('1095202836817420290', '1000', '62', '0', '2019-02-12 14:07:59');
INSERT INTO `success_killed` VALUES ('1095202839183007745', '1000', '63', '0', '2019-02-12 14:07:59');
INSERT INTO `success_killed` VALUES ('1095202840709734401', '1000', '64', '0', '2019-02-12 14:08:00');
INSERT INTO `success_killed` VALUES ('1095202842228072449', '1000', '65', '0', '2019-02-12 14:08:00');
INSERT INTO `success_killed` VALUES ('1095202843750604802', '1000', '66', '0', '2019-02-12 14:08:00');
INSERT INTO `success_killed` VALUES ('1095202845268942850', '1000', '67', '0', '2019-02-12 14:08:01');
INSERT INTO `success_killed` VALUES ('1095202846795669505', '1000', '68', '0', '2019-02-12 14:08:01');
INSERT INTO `success_killed` VALUES ('1095202848318201857', '1000', '69', '0', '2019-02-12 14:08:02');
INSERT INTO `success_killed` VALUES ('1095202849853317122', '1000', '70', '0', '2019-02-12 14:08:02');
INSERT INTO `success_killed` VALUES ('1095202851401015297', '1000', '71', '0', '2019-02-12 14:08:02');
INSERT INTO `success_killed` VALUES ('1095202852923547650', '1000', '72', '0', '2019-02-12 14:08:03');
INSERT INTO `success_killed` VALUES ('1095202854454468609', '1000', '73', '0', '2019-02-12 14:08:03');
INSERT INTO `success_killed` VALUES ('1095202855977000961', '1000', '74', '0', '2019-02-12 14:08:03');
INSERT INTO `success_killed` VALUES ('1095202857520504833', '1000', '75', '0', '2019-02-12 14:08:04');
INSERT INTO `success_killed` VALUES ('1095202859043037186', '1000', '76', '0', '2019-02-12 14:08:04');
INSERT INTO `success_killed` VALUES ('1095202860557180929', '1000', '77', '0', '2019-02-12 14:08:05');
INSERT INTO `success_killed` VALUES ('1095202862079713281', '1000', '78', '0', '2019-02-12 14:08:05');
INSERT INTO `success_killed` VALUES ('1095202864453689346', '1000', '79', '0', '2019-02-12 14:08:05');
INSERT INTO `success_killed` VALUES ('1095202866810888193', '1000', '80', '0', '2019-02-12 14:08:06');
INSERT INTO `success_killed` VALUES ('1095202869335859202', '1000', '81', '0', '2019-02-12 14:08:07');
INSERT INTO `success_killed` VALUES ('1095202870854197250', '1000', '82', '0', '2019-02-12 14:08:07');
INSERT INTO `success_killed` VALUES ('1095202872380923906', '1000', '83', '0', '2019-02-12 14:08:07');
INSERT INTO `success_killed` VALUES ('1095202873907650562', '1000', '84', '0', '2019-02-12 14:08:08');
INSERT INTO `success_killed` VALUES ('1095202875438571522', '1000', '85', '0', '2019-02-12 14:08:08');
INSERT INTO `success_killed` VALUES ('1095202876994658305', '1000', '86', '0', '2019-02-12 14:08:08');
INSERT INTO `success_killed` VALUES ('1095202878517190658', '1000', '87', '0', '2019-02-12 14:08:09');
INSERT INTO `success_killed` VALUES ('1095202880031334401', '1000', '88', '0', '2019-02-12 14:08:09');
INSERT INTO `success_killed` VALUES ('1095202881641947137', '1000', '89', '0', '2019-02-12 14:08:10');
INSERT INTO `success_killed` VALUES ('1095202883172868098', '1000', '90', '0', '2019-02-12 14:08:10');
INSERT INTO `success_killed` VALUES ('1095202884699594753', '1000', '91', '0', '2019-02-12 14:08:10');
INSERT INTO `success_killed` VALUES ('1095202887216177153', '1000', '92', '0', '2019-02-12 14:08:11');
INSERT INTO `success_killed` VALUES ('1095202888738709506', '1000', '93', '0', '2019-02-12 14:08:11');
INSERT INTO `success_killed` VALUES ('1095202890257047554', '1000', '94', '0', '2019-02-12 14:08:12');
INSERT INTO `success_killed` VALUES ('1095202891771191298', '1000', '95', '0', '2019-02-12 14:08:12');
INSERT INTO `success_killed` VALUES ('1095202893310500866', '1000', '96', '0', '2019-02-12 14:08:12');
INSERT INTO `success_killed` VALUES ('1095202894828838914', '1000', '97', '0', '2019-02-12 14:08:13');
INSERT INTO `success_killed` VALUES ('1095202897358004225', '1000', '98', '0', '2019-02-12 14:08:13');
INSERT INTO `success_killed` VALUES ('1095202898876342273', '1000', '99', '0', '2019-02-12 14:08:14');

-- ----------------------------
-- Table structure for sys_commodity
-- ----------------------------
DROP TABLE IF EXISTS `sys_commodity`;
CREATE TABLE `sys_commodity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `description` longtext COMMENT '商品说明',
  `unitPrice` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `number` int(11) DEFAULT NULL COMMENT '数量',
  `address` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `type` int(20) DEFAULT NULL COMMENT '商品类型（实物或者电子券）',
  `payType` varchar(20) DEFAULT NULL COMMENT '支付类型（免费或者付费）',
  `status` varchar(10) DEFAULT NULL COMMENT '50上架/51未上架（）',
  `base64` longblob,
  `imageType` varchar(255) DEFAULT NULL,
  `typeName` varchar(255) DEFAULT NULL,
  `payTypeName` varchar(255) DEFAULT NULL,
  `statusName` varchar(255) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `codeAddress` varchar(255) DEFAULT NULL COMMENT '二维码地址',
  `bindingStatus` varchar(255) DEFAULT NULL COMMENT '1被绑定2未被绑定',
  `freight` int(255) DEFAULT NULL COMMENT '运费',
  `cationRatioId` bigint(20) DEFAULT NULL COMMENT '抵扣比例id',
  `maxIntegral` float(255,4) DEFAULT NULL COMMENT '最高比对积分',
  `cationRatio` varchar(255) DEFAULT NULL COMMENT '积分比例',
  `commoditySpecifications` varchar(255) DEFAULT NULL COMMENT '商品规格',
  `commodityTypeId` bigint(20) DEFAULT NULL,
  `commodityTypename` varchar(255) DEFAULT NULL,
  `commoditySpecificationsArray` text,
  `commoditySpecificationsJson` varchar(255) DEFAULT NULL,
  `commoditySpecificationsArrayJson` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `update_time` datetime DEFAULT NULL COMMENT '发布日期',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新发布者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1176797945569943555 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_commodity
-- ----------------------------
INSERT INTO `sys_commodity` VALUES ('1164734344746205185', '电视机', '<ul><li>品牌：&nbsp;<a href=\"https://list.jd.com/list.html?cat=737,794,798&amp;tid=798&amp;ev=exbrand_7888\" target=\"_blank\" style=\"color: rgb(94, 105, 173);\">海信（Hisense）</a> 商品名称：海信HZ70E3D</li><li>商品编号：100003405867</li><li>商品毛重：35.8kg</li><li>商品产地：中国大陆</li><li>观看距离：3.5m以上（70英寸以上）</li><li>分辨率：4k超高清（3840×2160）</li><li>电视类型：人工智能，大屏，4K超清</li><li>能效等级：2级</li><li>屏幕尺寸：70-75英寸</li><li>选购指数：10.0-8.0</li></ul><p><img src=\"https://fdfs.baodingjl.com/group1/M00/00/0B/PM2i9F1fVvCAJ31FAACgZHi6wLQ919.jpg\"></p>', '10.00', '3', 'https://fdfs.baodingjl.com/group1/M00/00/0B/PM2i9F1fVvCAJ31FAACgZHi6wLQ919.jpg', '2019-08-23 11:01:22', '48', '45', '50', null, null, '电子券', '付费', '上架', '1', 'https://fdfs.baodingjl.com/group1/M00/00/12/PM2i9F1o0AqAErq7AAAghe1MDIU249.jpg', '2', '200', '60', '50.0000', '1', '', '1164734344746205185', '家电', '29*26,50*52', null, null, null, null, null, null);
INSERT INTO `sys_commodity` VALUES ('1165910643514785794', '阿萨德', null, '100.00', '100', '', '2019-08-26 16:55:34', '47', '45', '52', null, null, '实物', '付费', '未上架', '1', null, '2', '10', '60', '10.0000', '1', '1164733804431769602,1164733774509604865', '1164089872832196610', '电子券', '50*52,29*26', '[\"1164733804431769602\",\"1164733774509604865\"]', '[\"50*52\",\"29*26\"]', null, null, null, null);
INSERT INTO `sys_commodity` VALUES ('1167271963762851841', '小米液晶电视', null, '729.00', '500', 'https://fdfs.baodingjl.com/group1/M00/00/11/PM2i9F1okk-AajThAAXd-QptwfQ326.jpg', '2019-08-30 11:04:58', '47', '45', '50', null, null, '实物', '付费', '上架', '1', null, '2', '20', '60', '100.0000', '1', '1167263505311293441', '1167263455264858113', '液晶电视', '32', '[\"1167263505311293441\"]', '[\"32\"]', null, null, null, null);
INSERT INTO `sys_commodity` VALUES ('1167314057810378754', '测试电子券', '<p>商品结算<img src=\"https://fdfs.baodingjl.com/group1/M00/00/12/PM2i9F1ouYaAaZgiAAjaZRGiXis666.bmp\"></p>', '20.00', '9', 'https://fdfs.baodingjl.com/group1/M00/00/12/PM2i9F1ouXKABK1bAAYLiW0fslY892.jpg', '2019-08-30 13:52:14', '48', '44', '50', null, null, '电子券', '免费', '上架', '1', 'https://fdfs.baodingjl.com/group1/M00/00/12/PM2i9F1ouY2ARHVtAAAghe1MDIU498.jpg', '1', '0', '60', '15.0000', '1', '1164733774509604865', '1164089777009127426', '家电', '29*26', '[\"1164733774509604865\"]', '[\"29*26\"]', null, null, null, null);
INSERT INTO `sys_commodity` VALUES ('1167335830647963650', '新商品', '<p>1</p>', '0.02', '22', 'https://fdfs.baodingjl.com/group1/M00/00/12/PM2i9F1ozbmAR0lQAAS9tW4nOu0862.jpg', '2019-08-30 15:18:45', '48', '45', '50', null, null, '电子券', '付费', '上架', '1', 'https://fdfs.baodingjl.com/group1/M00/00/12/PM2i9F1o7neAPdYkAAAghe1MDIU012.jpg', '2', '0', '61', '21.0000', '1.5', '1164733804431769602,1164733774509604865', '1167335830647963650', '家电', '50*52,29*26', '[\"1164733804431769602\",\"1164733774509604865\"]', '[\"50*52\",\"29*26\"]', null, null, null, null);
INSERT INTO `sys_commodity` VALUES ('1167372422775193602', '789', '<p>商品内容</p><p><br></p>', '0.50', '2', 'https://fdfs.baodingjl.com/group1/M00/00/12/PM2i9F1o77SAA8DfAAL-tklfAwY087.jpg', '2019-08-30 17:44:09', '48', '45', '50', null, null, '电子券', '付费', '上架', '1', 'https://fdfs.baodingjl.com/group1/M00/00/12/PM2i9F1o8G-AMLouAAAghe1MDIU665.jpg', '2', '0', '73', '8.0000', '0.5', '1167340997564891138,1164733804431769602,1164733774509604865', '1167372422775193602', '家电', '大型,50*52,29*26', '[\"1167340997564891138\",\"1164733804431769602\",\"1164733774509604865\"]', '[\"大型\",\"50*52\",\"29*26\"]', null, null, null, null);
INSERT INTO `sys_commodity` VALUES ('1167382272770981889', 'usb彩灯', '', '0.00', '2', '', '2019-08-30 18:23:17', '47', '45', '52', null, null, '实物', '付费', '未上架', '1', null, '2', '0', '1167378714876157953', '0.0000', '2', '1164733774509604865', '1167382272770981889', '家电', '29*26', '[\"1164733774509604865\"]', '[\"29*26\"]', null, null, null, null);
INSERT INTO `sys_commodity` VALUES ('1167607463975469058', 'usb风扇', null, '9.90', '20', '', '2019-08-31 09:18:07', '47', '45', '50', null, null, '实物', '付费', '上架', '1', null, '2', '0', '60', '0.0000', '1', '1164733774509604865', '1164089777009127426', '家电', '29*26', '[\"1164733774509604865\"]', '[\"29*26\"]', null, null, null, null);
INSERT INTO `sys_commodity` VALUES ('1167608220103622658', '测试小数', '<p>0</p>', '4.00', '4', '', '2019-08-31 09:21:07', '47', '45', '52', null, null, '实物', '付费', '未上架', '1', 'https://fdfs.baodingjl.com/group1/M00/00/14/PM2i9F1p1PyAaeN9AAAghe1MDIU628.jpg', '2', '1', '1167378714876157953', '1.6000', '2', '1167381123078701057', '1167608220103622658', '家具', '200', '[\"1167381123078701057\"]', '[\"200\"]', null, null, null, null);
INSERT INTO `sys_commodity` VALUES ('1167629136745349121', '衣柜清仓处理', '', '2500.00', '50', '', '2019-08-31 10:44:14', '47', '45', '50', null, null, '实物', '付费', '上架', '1', null, '2', '100', '60', '200.0000', '1', '1167628667700527106', '1167629136745349121', '衣柜', '200*180', '[\"1167628667700527106\"]', '[\"200*180\"]', null, null, null, null);
INSERT INTO `sys_commodity` VALUES ('1167700668377133057', '月饼', '<p>月饼好吃又好看</p>', '12.00', '8', 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qPxiARm49AA51xeIadSg631.png', '2019-08-31 15:28:29', '47', '45', '50', null, null, '实物', '付费', '上架', '1', 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qI9KAJ2ElAAAghe1MDIU842.jpg', '1', '0', '1167613520419368961', '6.0000', '1', '1167381123078701057,1167733638475476994,1167733670796783617', '1167381021513629697', '月饼规格', '35cm*30cm,30cm*30cm,20cm*20cm', '[\"1167381123078701057\",\"1167733638475476994\",\"1167733670796783617\"]', '[\"35cm*30cm\",\"30cm*30cm\",\"20cm*20cm\"]', null, null, null, null);
INSERT INTO `sys_commodity` VALUES ('1168408233654284290', '凯特芒促销', '', '29.90', '100', 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1stHWAOoOeAACH5JKjyJQ891.jpg', '2019-09-02 14:20:06', '47', '45', '50', null, null, '实物', '付费', '上架', '1', null, '2', '10', '1167613520419368961', '10.0000', '1', '1168407705998258177', '1168408233654284290', '凯特芒', '5斤', '[\"1168407705998258177\"]', '[\"5斤\"]', null, null, null, null);
INSERT INTO `sys_commodity` VALUES ('1176797945569943554', '陕西徐香猕猴桃', '<p><img src=\"https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F2LOfiAW1pBAAas4ajA50E141.png\"><img src=\"https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F2LOgGAWQK4AAYvAOCOmTk483.png\"><img src=\"https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F2LOgmATp3QAAFrrCrurhI253.png\"><img src=\"https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F2LOhOASi0jAAVPIF6Lgy0661.png\"></p>', '19.90', '500', 'https://fdfs.baodingjl.com/group1/M00/00/16/PM2i9F2LOSGAWmc5AADRAqmWvzw412.png', '2019-09-25 17:57:49', '47', '45', '50', null, null, '实物', '付费', '上架', '1', null, '1', '5', '1167613520419368961', '5.0000', '1', '1176796548862517250', '1176796415550758913', '徐香猕猴桃', '24粒', '[\"1176796548862517250\"]', '[\"24粒\"]', null, null, null, null);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `param_key` varchar(50) DEFAULT NULL COMMENT 'key',
  `param_value` varchar(2000) DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `param_key` (`param_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统配置信息表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', 'CLOUD_STORAGE_CONFIG_KEY', '{\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"aliyunDomain\":\"\",\"aliyunEndPoint\":\"\",\"aliyunPrefix\":\"\",\"qcloudBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qiniuAccessKey\":\"uTUUJ1fidpo5Hc6b7qJXd2i5SyVUzsBvQJgKn_N6\",\"qiniuBucketName\":\"hsshy\",\"qiniuDomain\":\"http://img.hsshy.cn\",\"qiniuPrefix\":\"upload\",\"qiniuSecretKey\":\"_XKtAamyCjnQN_rW-cqjSOb5X5bmDONgfDBknzbR\",\"type\":1}', '1', '云存储配置信息', null, null);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` bigint(20) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `organ_type` varchar(32) DEFAULT NULL COMMENT '机构类型',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门管理';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('1', '0', '全部', null, '', '0', '2019-06-14 17:45:16', '2019-06-14 17:45:16');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `num` int(11) DEFAULT NULL COMMENT '排序',
  `pid` bigint(20) DEFAULT NULL COMMENT '父级字典',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `tips` varchar(255) DEFAULT NULL COMMENT '提示',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('16', '0', '0', '状态', null, null, null);
INSERT INTO `sys_dict` VALUES ('17', '1', '16', '启用', null, null, null);
INSERT INTO `sys_dict` VALUES ('18', '2', '16', '禁用', null, null, null);
INSERT INTO `sys_dict` VALUES ('29', '0', '0', '性别', null, null, null);
INSERT INTO `sys_dict` VALUES ('30', '1', '29', '男', null, null, null);
INSERT INTO `sys_dict` VALUES ('31', '2', '29', '女', null, null, null);
INSERT INTO `sys_dict` VALUES ('35', '0', '0', '账号状态', null, null, null);
INSERT INTO `sys_dict` VALUES ('36', '1', '35', '启用', null, null, null);
INSERT INTO `sys_dict` VALUES ('37', '2', '35', '冻结', null, null, null);
INSERT INTO `sys_dict` VALUES ('38', '3', '35', '已删除', null, null, null);
INSERT INTO `sys_dict` VALUES ('39', '0', '0', '活动类型', null, null, null);
INSERT INTO `sys_dict` VALUES ('40', '1', '39', '公益活动', null, null, null);
INSERT INTO `sys_dict` VALUES ('41', '2', '39', '惠民活动', null, null, null);
INSERT INTO `sys_dict` VALUES ('42', '3', '39', '帮扶活动', null, null, null);
INSERT INTO `sys_dict` VALUES ('43', '0', '0', '商品支付类型', null, null, null);
INSERT INTO `sys_dict` VALUES ('44', '1', '43', '免费', null, null, null);
INSERT INTO `sys_dict` VALUES ('45', '2', '43', '付费', null, null, null);
INSERT INTO `sys_dict` VALUES ('46', '0', '0', '商品类型', null, null, null);
INSERT INTO `sys_dict` VALUES ('47', '1', '46', '实物', null, null, null);
INSERT INTO `sys_dict` VALUES ('48', '2', '46', '电子券', null, null, null);
INSERT INTO `sys_dict` VALUES ('49', '0', '0', '商品状态', null, null, null);
INSERT INTO `sys_dict` VALUES ('50', '1', '49', '上架', null, null, null);
INSERT INTO `sys_dict` VALUES ('51', '2', '49', '下架', null, null, null);
INSERT INTO `sys_dict` VALUES ('52', '3', '49', '未上架', null, null, null);
INSERT INTO `sys_dict` VALUES ('53', '0', '0', '置顶状态', null, null, null);
INSERT INTO `sys_dict` VALUES ('54', '1', '53', '置顶', null, null, null);
INSERT INTO `sys_dict` VALUES ('55', '2', '53', '未置顶', null, null, null);
INSERT INTO `sys_dict` VALUES ('56', '0', '0', '活动发布位置', null, null, null);
INSERT INTO `sys_dict` VALUES ('57', '1', '56', '首页', null, null, null);
INSERT INTO `sys_dict` VALUES ('58', '2', '56', '公益', null, null, null);
INSERT INTO `sys_dict` VALUES ('59', '0', '0', '积分比例', null, null, null);
INSERT INTO `sys_dict` VALUES ('60', '1', '59', '1', null, null, null);
INSERT INTO `sys_dict` VALUES ('61', '2', '59', '1.5', null, null, null);
INSERT INTO `sys_dict` VALUES ('62', '0', '0', '服务时段', null, null, null);
INSERT INTO `sys_dict` VALUES ('63', '1', '62', '工作时段', null, null, null);
INSERT INTO `sys_dict` VALUES ('64', '2', '62', '双休时段', null, null, null);
INSERT INTO `sys_dict` VALUES ('65', '0', '0', '首选服务', null, null, null);
INSERT INTO `sys_dict` VALUES ('66', '1', '65', '公共服务', null, null, null);
INSERT INTO `sys_dict` VALUES ('67', '2', '65', '心理服务', null, null, null);
INSERT INTO `sys_dict` VALUES ('68', '3', '65', '为小服务', null, null, null);
INSERT INTO `sys_dict` VALUES ('69', '4', '65', '为老服务', null, null, null);
INSERT INTO `sys_dict` VALUES ('70', '5', '65', '法律服务', null, null, null);
INSERT INTO `sys_dict` VALUES ('71', '6', '65', '环保服务', null, null, null);
INSERT INTO `sys_dict` VALUES ('72', '7', '65', '其他服务', null, null, null);
INSERT INTO `sys_dict` VALUES ('73', '3', '59', '0.5', null, null, null);
INSERT INTO `sys_dict` VALUES ('74', '4', '39', '创城活动', null, null, null);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint(20) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` bigint(20) DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '系统首页', 'dashboard', 'sys:dashboard:info', '1', 'el-icon-lx-home', '1', '1', '1', '2018-12-06 14:54:07', '2019-07-18 10:55:31', '0');
INSERT INTO `sys_menu` VALUES ('15', '0', '权限管理', 'sys', null, '0', 'el-icon-lx-settings', '2', '1', '1', '2018-12-10 17:52:34', '2019-07-09 10:25:03', '0');
INSERT INTO `sys_menu` VALUES ('16', '15', '用户管理', 'sysuser', 'sys:user:list', '1', null, '16', '1', '1', '2018-12-10 18:28:59', '2019-01-02 10:38:09', '0');
INSERT INTO `sys_menu` VALUES ('17', '15', '角色管理', 'sysrole', 'sys:role:list', '1', null, '17', '1', '1', '2018-12-10 18:35:34', '2019-01-03 01:33:09', '0');
INSERT INTO `sys_menu` VALUES ('18', '15', '菜单管理', 'sysmenu', 'sys:menu:tree', '1', null, '18', '1', '1', '2018-12-10 18:36:16', '2019-01-03 01:39:01', '0');
INSERT INTO `sys_menu` VALUES ('19', '15', '部门管理', 'sysdept', 'sys:dept:tree', '1', null, '19', '1', '1', '2018-12-10 18:37:20', '2019-01-03 01:41:49', '0');
INSERT INTO `sys_menu` VALUES ('21', '15', '定时任务', 'schedulejob', 'sys:schedule:list', '1', null, '21', '1', '1', '2018-12-10 18:39:14', '2019-01-03 01:42:33', '0');
INSERT INTO `sys_menu` VALUES ('1080412372541181953', '16', '新增/编辑', 'sysuser/save', 'sys:user:save', '2', null, '1', null, null, '2019-01-02 10:35:57', '2019-01-02 10:37:26', '0');
INSERT INTO `sys_menu` VALUES ('1080413095496585218', '16', '删除', 'sysuser/del', 'sys:user:del', '2', null, '2', null, null, '2019-01-02 10:38:50', '2019-01-02 10:38:50', '0');
INSERT INTO `sys_menu` VALUES ('1080636440926232577', '16', '重置密码', 'sysuser/reset/password', 'sys:user:resetPassword', '2', null, '3', null, null, '2019-01-03 01:26:19', '2019-01-03 01:29:49', '0');
INSERT INTO `sys_menu` VALUES ('1080636634896015362', '16', '修改密码', 'sysuser/change/password', 'sys:user:changePassword', '2', null, '4', null, null, '2019-01-03 01:27:06', '2019-01-03 01:30:05', '0');
INSERT INTO `sys_menu` VALUES ('1080637598663188481', '17', '新增/编辑', 'sysrole/save', 'sys:role:save', '2', null, '1', null, null, '2019-01-03 01:30:55', '2019-01-03 01:30:55', '0');
INSERT INTO `sys_menu` VALUES ('1080637823859564545', '17', '删除', 'sysrole/del', 'sys:role:del', '2', null, '2', null, null, '2019-01-03 01:31:49', '2019-01-03 01:31:49', '0');
INSERT INTO `sys_menu` VALUES ('1080638043456544769', '17', '权限配置', 'sysrole/save/menu/perm', 'sys:role:saveMenuPerm', '2', null, '3', null, null, '2019-01-03 01:32:42', '2019-01-03 01:32:42', '0');
INSERT INTO `sys_menu` VALUES ('1080639293405274114', '18', '保存', 'sysmenu/save', 'sys:menu:save', '2', null, '1', null, null, '2019-01-03 01:37:40', '2019-01-03 01:37:40', '0');
INSERT INTO `sys_menu` VALUES ('1080639432148656130', '18', '删除', 'sysmenu/del', 'sys:menu:delete', '2', null, '2', null, null, '2019-01-03 01:38:13', '2019-01-03 01:38:13', '0');
INSERT INTO `sys_menu` VALUES ('1080639575438663681', '18', '详情', 'sysmenu/info', 'sys:menu:info', '2', null, '3', null, null, '2019-01-03 01:38:47', '2019-01-03 01:38:47', '0');
INSERT INTO `sys_menu` VALUES ('1080639863587348482', '19', '保存', 'sysdept/save', 'sys:dept:save', '2', null, '1', null, null, '2019-01-03 01:39:55', '2019-01-03 01:39:55', '0');
INSERT INTO `sys_menu` VALUES ('1080640119691550722', '19', '删除', 'sysdept/del', 'sys:dept:del', '2', null, '2', null, null, '2019-01-03 01:40:57', '2019-01-03 01:40:57', '0');
INSERT INTO `sys_menu` VALUES ('1080640228772814849', '19', '详情', 'sysdept/info', 'sys:dept:info', '2', null, '3', null, null, '2019-01-03 01:41:23', '2019-01-03 01:41:23', '0');
INSERT INTO `sys_menu` VALUES ('1080640763785650177', '21', '新增', 'schedule/save', 'sys:schedule:save', '2', null, '1', null, null, '2019-01-03 01:43:30', '2019-01-03 01:43:30', '0');
INSERT INTO `sys_menu` VALUES ('1080640900176027650', '21', '修改', 'schedule/update', 'sys:schedule:update', '2', null, '2', null, null, '2019-01-03 01:44:03', '2019-01-03 01:44:03', '0');
INSERT INTO `sys_menu` VALUES ('1080641066287243266', '21', '删除', 'schedule/del', 'sys:schedule:del', '2', null, '3', null, null, '2019-01-03 01:44:42', '2019-01-03 01:44:42', '0');
INSERT INTO `sys_menu` VALUES ('1140870311976845313', '16', '啊啊啊', 'base', null, '0', '的是', '50', null, null, '2019-06-18 14:34:13', '2019-06-18 14:34:13', '0');
INSERT INTO `sys_menu` VALUES ('1140895881139916802', '0', '活动管理', 'town', null, '0', 'fa fa-codiepie', '3', null, null, '2019-06-18 16:15:50', '2019-09-12 17:33:12', '0');
INSERT INTO `sys_menu` VALUES ('1140896775285837825', '0', '轮播管理', 'slide', null, '0', 'fa fa-file-image-o', '6', null, null, '2019-06-18 16:19:23', '2019-07-18 11:08:39', '0');
INSERT INTO `sys_menu` VALUES ('1148498306554208257', '1140896775285837825', '轮播图管理', 'slide', null, '1', null, '1', null, null, '2019-07-09 15:45:09', '2019-07-09 16:18:05', '0');
INSERT INTO `sys_menu` VALUES ('1151686416857513985', '0', '订单管理', 'manage', null, '0', 'el-icon-s-shop', '4', null, null, '2019-07-18 10:53:34', '2019-07-18 11:05:27', '0');
INSERT INTO `sys_menu` VALUES ('1151687455170052098', '1151686416857513985', '订单列表', 'management', null, '1', null, '1', null, null, '2019-07-18 10:57:41', '2019-07-18 10:57:41', '0');
INSERT INTO `sys_menu` VALUES ('1151690186291085313', '0', '商品管理', 'activity', null, '0', 'el-icon-s-release', '5', null, null, '2019-07-18 11:08:32', '2019-07-18 11:10:12', '0');
INSERT INTO `sys_menu` VALUES ('1151738365384527873', '0', '社区管理', 'community', null, '0', 'el-icon-office-building', '6', null, null, '2019-07-18 14:19:59', '2019-07-18 14:20:23', '0');
INSERT INTO `sys_menu` VALUES ('1151738634688204802', '1151738365384527873', '社区列表', 'community', null, '1', null, '1', null, null, '2019-07-18 14:21:03', '2019-07-18 14:21:03', '0');
INSERT INTO `sys_menu` VALUES ('1159747446927671297', '0', '认证管理', null, null, '0', 'fa el-icon-s-flag', '3', null, null, '2019-08-09 16:45:13', '2019-08-09 17:21:02', '0');
INSERT INTO `sys_menu` VALUES ('1159757647143649282', '1159747446927671297', '实名认证', 'autonym', null, '1', null, '1', null, null, '2019-08-09 17:25:45', '2019-08-09 17:26:07', '0');
INSERT INTO `sys_menu` VALUES ('1159757930410164226', '1159747446927671297', '企业认证', 'enterprise', null, '1', null, '2', null, null, '2019-08-09 17:26:53', '2019-08-09 17:26:53', '0');
INSERT INTO `sys_menu` VALUES ('1159758027856429057', '1159747446927671297', '志愿者认证', 'volunteer', null, '1', null, '3', null, null, '2019-08-09 17:27:16', '2019-08-09 17:27:16', '0');
INSERT INTO `sys_menu` VALUES ('1172081010788679681', '1140895881139916802', '公益活动管理', 'pulicounty', null, '0', null, '1', null, null, '2019-09-12 17:34:24', '2019-09-12 17:35:51', '0');
INSERT INTO `sys_menu` VALUES ('1172081120813662209', '1140895881139916802', '帮扶活动管理', 'assistcounty', null, '0', null, '2', null, null, '2019-09-12 17:34:50', '2019-09-12 17:35:59', '0');
INSERT INTO `sys_menu` VALUES ('1172082159914729474', '1172081010788679681', '公益活动列表', 'pulicounty', null, '1', null, '1', null, null, '2019-09-12 17:38:58', '2019-09-12 17:38:58', '0');
INSERT INTO `sys_menu` VALUES ('1172082313409478657', '1172081010788679681', '公益打卡列表', 'insert', null, '1', null, '2', null, null, '2019-09-12 17:39:34', '2019-09-12 17:44:47', '0');
INSERT INTO `sys_menu` VALUES ('1172082499582050306', '1172081120813662209', '帮扶活动列表', 'assistcounty', null, '1', null, '1', null, null, '2019-09-12 17:40:19', '2019-09-12 17:40:19', '0');
INSERT INTO `sys_menu` VALUES ('1172082647649370114', '1172081120813662209', '帮扶审核列表', 'townList', null, '1', null, '2', null, null, '2019-09-12 17:40:54', '2019-09-12 17:44:14', '0');
INSERT INTO `sys_menu` VALUES ('1174510157709357057', '1140895881139916802', '创城活动管理', 'gencity', null, '0', null, '4', null, null, '2019-09-19 10:26:58', '2019-09-19 10:29:20', '0');
INSERT INTO `sys_menu` VALUES ('1174510319827595265', '1174510157709357057', '创城活动列表', 'gencity', null, '1', null, '1', null, null, '2019-09-19 10:27:36', '2019-09-19 10:27:36', '0');
INSERT INTO `sys_menu` VALUES ('1184281781627199490', '1151690186291085313', '惠民商品供应商', 'supplier', null, '1', null, '2', null, null, '2019-10-16 09:35:54', '2019-10-25 09:45:27', '0');
INSERT INTO `sys_menu` VALUES ('1191594990658797569', '1151690186291085313', '商品管理', 'supplierMy', null, '1', null, '2', null, null, '2019-11-05 13:55:59', '2019-11-14 10:39:27', '0');
INSERT INTO `sys_menu` VALUES ('1194801588058402818', '1151690186291085313', '供货商商品', 'supplierAdd', null, '1', null, null, null, null, '2019-11-14 10:17:52', '2019-11-14 10:17:52', '0');
INSERT INTO `sys_menu` VALUES ('1195161789039058946', '1151686416857513985', '订单汇总', 'orderSum', null, '1', null, null, null, null, '2019-11-15 10:09:10', '2019-11-15 10:09:10', '0');
INSERT INTO `sys_menu` VALUES ('1195166598999777281', '1151686416857513985', '总订单', 'orderSumMain', null, '1', null, null, null, null, '2019-11-15 10:28:17', '2019-11-15 10:28:17', '0');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', '超级管理员', '2018-10-10 22:39:38', '2018-12-23 11:45:49');
INSERT INTO `sys_role` VALUES ('2', '队长', '队长', '2019-07-22 11:31:50', '2019-07-22 11:31:52');
INSERT INTO `sys_role` VALUES ('3', '普通管理员', '测试', '2018-12-23 03:45:15', '2019-06-14 15:09:11');
INSERT INTO `sys_role` VALUES ('1196665603874279426', '供货商', '供货商', '2019-11-19 13:44:48', '2019-11-19 13:44:48');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('363', '1', '1');
INSERT INTO `sys_role_menu` VALUES ('364', '1', '15');
INSERT INTO `sys_role_menu` VALUES ('365', '1', '16');
INSERT INTO `sys_role_menu` VALUES ('366', '1', '1080412372541181953');
INSERT INTO `sys_role_menu` VALUES ('367', '1', '1080413095496585218');
INSERT INTO `sys_role_menu` VALUES ('368', '1', '1080636440926232577');
INSERT INTO `sys_role_menu` VALUES ('369', '1', '1080636634896015362');
INSERT INTO `sys_role_menu` VALUES ('370', '1', '1140870311976845313');
INSERT INTO `sys_role_menu` VALUES ('371', '1', '17');
INSERT INTO `sys_role_menu` VALUES ('372', '1', '1080637598663188481');
INSERT INTO `sys_role_menu` VALUES ('373', '1', '1080637823859564545');
INSERT INTO `sys_role_menu` VALUES ('374', '1', '1080638043456544769');
INSERT INTO `sys_role_menu` VALUES ('375', '1', '18');
INSERT INTO `sys_role_menu` VALUES ('376', '1', '1080639293405274114');
INSERT INTO `sys_role_menu` VALUES ('377', '1', '1080639432148656130');
INSERT INTO `sys_role_menu` VALUES ('378', '1', '1080639575438663681');
INSERT INTO `sys_role_menu` VALUES ('379', '1', '19');
INSERT INTO `sys_role_menu` VALUES ('380', '1', '1080639863587348482');
INSERT INTO `sys_role_menu` VALUES ('381', '1', '1080640119691550722');
INSERT INTO `sys_role_menu` VALUES ('382', '1', '1080640228772814849');
INSERT INTO `sys_role_menu` VALUES ('383', '1', '21');
INSERT INTO `sys_role_menu` VALUES ('384', '1', '1080640763785650177');
INSERT INTO `sys_role_menu` VALUES ('385', '1', '1080640900176027650');
INSERT INTO `sys_role_menu` VALUES ('386', '1', '1080641066287243266');
INSERT INTO `sys_role_menu` VALUES ('387', '1', '1140895074688503810');
INSERT INTO `sys_role_menu` VALUES ('484', '1196665603874279426', '1195161789039058946');
INSERT INTO `sys_role_menu` VALUES ('485', '1196665603874279426', '1151687455170052098');
INSERT INTO `sys_role_menu` VALUES ('486', '1196665603874279426', '1194801588058402818');
INSERT INTO `sys_role_menu` VALUES ('487', '1196665603874279426', '1151686416857513985');
INSERT INTO `sys_role_menu` VALUES ('488', '1196665603874279426', '1151690186291085313');
INSERT INTO `sys_role_menu` VALUES ('500', '3', '16');
INSERT INTO `sys_role_menu` VALUES ('501', '3', '1080412372541181953');
INSERT INTO `sys_role_menu` VALUES ('502', '3', '1080413095496585218');
INSERT INTO `sys_role_menu` VALUES ('503', '3', '1080636440926232577');
INSERT INTO `sys_role_menu` VALUES ('504', '3', '1080636634896015362');
INSERT INTO `sys_role_menu` VALUES ('505', '3', '1140870311976845313');
INSERT INTO `sys_role_menu` VALUES ('506', '3', '1195166598999777281');
INSERT INTO `sys_role_menu` VALUES ('507', '3', '1151687455170052098');
INSERT INTO `sys_role_menu` VALUES ('508', '3', '1191594990658797569');
INSERT INTO `sys_role_menu` VALUES ('509', '3', '15');
INSERT INTO `sys_role_menu` VALUES ('510', '3', '1151686416857513985');
INSERT INTO `sys_role_menu` VALUES ('511', '3', '1151690186291085313');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `account` varchar(45) DEFAULT NULL COMMENT '账号',
  `password` varchar(128) DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) DEFAULT NULL COMMENT 'md5密码盐',
  `name` varchar(45) DEFAULT NULL COMMENT '名字',
  `dept_id` bigint(20) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `sex` int(11) DEFAULT NULL COMMENT '性别（1：男 2：女）',
  `email` varchar(45) DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(45) DEFAULT NULL COMMENT '电话',
  `status` int(11) DEFAULT NULL COMMENT '状态(1：启用  2：冻结  3：删除）',
  `level` bigint(64) DEFAULT NULL COMMENT '用户级别',
  `level_name` varchar(64) DEFAULT NULL,
  `version` int(11) DEFAULT NULL COMMENT '保留字段',
  `create_by` bigint(20) DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` tinyint(1) DEFAULT NULL,
  `realNameCertification` varchar(20) DEFAULT NULL COMMENT '实名认证',
  `volunteerCertification` varchar(20) DEFAULT NULL COMMENT '志愿者认证',
  `enterpriseCertification` varchar(20) DEFAULT NULL COMMENT '企业认证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'https://wx.qlogo.cn/mmopen/vi_32/WgSOjJRaQq8FbBHGAr5gLHdaVia7SrnOwRZ9TL8lcDicXuMgqSR8rVgebFa9uIRiaLzYrPdtIia3jqjzkHVVOS38sw/132', 'admin', 'aa0d7f0f4fc75910c2cab9a3547d4ec5fdfea6095c27fd2d13e17dc216df3581', 'BFDze8hBJwwhOw3BDvhg', 'admin', '1139468839261356034', '2018-10-08 16:05:42', '1', '457030599@qq.com', '1', '1', '56', '县办公室', null, null, null, '2018-10-31 17:48:40', '2019-08-30 14:29:22', '0', '1', '2', '1');
INSERT INTO `sys_user` VALUES ('1164086985523675138', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83ertTLMOdDhcFXxjo2GmMNtFPictARFUxTVBQYILhAnc9BJZP2Kdon6hVgof2srX1LLiczd6mllpCCKg/132', 'oLvfc4owq-wYTx7c_iSi6XrWvVVg', '30d77773c7442394f8a621744752a98a23001466b051b88d67edc41df92cf93e', 'vKzqfeIQqzqfqm1w2JFv', '李小鵬', null, null, null, null, null, '1', null, null, null, null, null, '2019-08-21 16:09:00', '2019-08-21 16:09:00', '0', '1', null, null);
INSERT INTO `sys_user` VALUES ('1167042162204594177', 'https://wx.qlogo.cn/mmopen/vi_32/ounbbCtiatmFERLRIFhtNZ45hSO5ECiciaUMqSgCkDpibiaAgefanbKSsUKLMyjeialF7q7CEom26rjhC9PWFic359zFA/132', 'oLvfc4tsz-ijWqg-uSRbM5gYJNCY', '38666477dad9451b72270f219c905a5d8c3bc36b56d339cf8705246397713b27', 'QvsBFUcOVo7frDjcPryA', '(^_^)', null, null, null, null, null, '1', null, null, null, null, null, '2019-08-29 19:51:49', '2019-08-29 19:51:49', '0', '1', null, null);
INSERT INTO `sys_user` VALUES ('1167246694075215873', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKIw7PnDUED8DVia9SEyxickbm5MeWdnhT2OOUib19om8rvYJEiciaCMDFH9vR2gibMC8krjb1bTJ3jfAXA/132', 'oLvfc4mAYuezeLlL8b2Q3EJC_On8', 'b98f9c39f0388b39b8a3ca7eedecc4f2d1b0e1b2751d9d337ed51ee87f29e3a4', 'o1b9eNUcJ6jwDMdLhthL', 'Mumutianxin', null, null, null, null, null, '1', null, null, null, null, null, '2019-08-30 09:24:33', '2019-08-30 09:24:33', '0', '1', null, '1');
INSERT INTO `sys_user` VALUES ('1167297782778396673', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoXicZ0lNtVh2oN3Ls3mxV1SYF9Nc8P9AAQbOkRne12wUMF49OG2tyWIRicmn9j0Kpreibp2E17errkA/132', 'oLvfc4oWQJGXJI1ebysEAQiMysBY', 'f5a13955fbcd24aa87c5ddb95a5938936e562a31498e0b1d8cbb0a244ab6c28a', 'cuGjJSACuERhOmofHuOR', '江越线缆', null, null, null, null, null, '1', null, null, null, null, null, '2019-08-30 12:47:33', '2019-08-30 12:47:33', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1167337506196881409', 'https://wx.qlogo.cn/mmhead/zB34mkOxrkPSjKghibAX0ZPoQ93Z2ZRR7z6b3mVhB7O4/132', 'oLvfc4pCnjFG_MhR5yp4JPINHC90', '0616ae4add9272b7f6f0531f23ea75aef39d712f5848f3016dd322ab72aee54b', 'DTl6fbUcIuj1LmcUu5xS', '白柏宇', null, null, null, null, null, '1', null, null, null, null, null, '2019-08-30 15:25:24', '2019-08-30 15:25:24', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1167379810223800322', 'https://wx.qlogo.cn/mmhead/F2e8RTbP02YibrwNk4NUPS3D1rqgUKIU1CZ4vMazSDkw/132', 'oLvfc4s18Rz5FcV7VoVQnXb8SfvA', '430022356880c69d91698fbd067df554cdecc5c3f3cf4b087d4ceea369be4193', 'b82tP6FBWWwPvZtK0r9O', '赖秉竹', null, null, null, null, null, '1', null, null, null, null, null, '2019-08-30 18:13:30', '2019-08-30 18:13:30', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1168395532311916546', 'https://wx.qlogo.cn/mmhead/ic22bh7KxFTQjGU1XBc6rqaibDGhfecNABuPF4T0Aofn0/132', 'oLvfc4guRBT4UFO893K9XfA-qh-g', '8bad6eff9a31632ccbc4731e5ff773071c4baaadb5a0d9e881e7d853943b07b3', 'XzmSTEbGhMEmZVJDH2gq', '郭子扬', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-02 13:29:37', '2019-09-02 13:29:37', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1168399283357675521', 'https://wx.qlogo.cn/mmhead/hlWiaH7hoNuklTibXkACmMyHsBH7vXPcnxZV2R0z3A2Q0/132', 'oLvfc4mjVR8RV6sARqQc-c55INCI', '7da6fd89d0e8e4b3de16dacd0d420057a446a3fd40dbed50823114ba735ce486', 'NPhSXciiwXYuj9kfqSIJ', '谢台念', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-02 13:44:32', '2019-09-02 13:44:32', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1168438254745874434', 'https://wx.qlogo.cn/mmopen/vi_32/n2U9hYUJweP4R0s7ZIbiaz1FbLSqlmETKic4tEN7Lf6GHn17xYjCgSQibjgtMj7Par17zeEibAtfUjanxSd4iabZTEg/132', 'oLvfc4kKYL_GqEm8xh4gqxKlklUM', 'e7d91a734cb6ee8da5576bfea7532f9391177d0d5e9ce55f380c4dc94e1dbc21', 'mp6ehQdM0saoueTvK9Iq', '罗宝龙', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-02 16:19:23', '2019-09-02 16:19:23', '0', '1', null, null);
INSERT INTO `sys_user` VALUES ('1168442655715815426', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKFKviaKXibF3XEZZohUEkcUVH6iaZpgLJnibU0yYQ8v7wVW8vt4qxG8RfO3icksrlqIaSQ3iahm6u6UyxA/132', 'oLvfc4oREIfqjaXWZg-fBti2ZUyI', 'a6572452198b8cd1bd4ebaeee629c4432f3b063909665589814b9c4cff4cf3a0', 'vmfGtDh7fLVMnEJ4d78L', '保定市点动软件科技有限公司', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-02 16:36:52', '2019-09-02 16:36:52', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1168730630181810177', 'https://wx.qlogo.cn/mmhead/JmAsjxBk9WmcJNG0ibosYHqic2Wzg3ouKsibkG3QficMb2M/132', 'oLvfc4pjjkcoL55h5LY6b4ZAydG4', '6a09a5bccfa1acb6ca7a4051557000d8ba4c41f3b1b442975167dd41033fc9a7', 'sGP9jvXTThChtGQpx5CS', '袁俊宏', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-03 11:41:11', '2019-09-03 11:41:11', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1169145617874350081', 'https://wx.qlogo.cn/mmhead/ZntQK9CjbcHrJId7iaQicQfmvkoo5Y0HX0CliaJurGqy7A/132', 'oLvfc4uDlKUX1qg0K7YgBmCrQchs', '9589e86842e8ab70bb0435809d4ae5355d0679c18724d652f76c02e12a55e7c3', 'G2NHLhxUWTT1M159kq6x', '林威宇', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-04 15:10:12', '2019-09-04 15:10:12', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1171357319181238274', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKvUKGyfKjvrgWENdxINdV8wEgcOicMP2bH7vDphRQMZr1f8xB4GI0iaVACHzty4zZWYc7qAGD1SCMA/132', 'oLvfc4orkt6euJxvMP7PMa_Ok3-s', '901dc60ce4c3f16c8bfc319578d9dc7a94e2473e305a4e8bdd6b9f94dd5505ac', '5StG0vpxiKC7TLkcgXdj', '硿白', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-10 17:38:42', '2019-09-10 17:38:42', '0', '1', null, null);
INSERT INTO `sys_user` VALUES ('1171357660719218689', 'https://wx.qlogo.cn/mmopen/vi_32/lGmpt34icnSh2LJUz7rLde2iaiayibzkdxeroztxf1HVtXJGTa1hklI35qESCMg04lYrtzyh0swJSJ8Tz0HGD6diaBA/132', 'oLvfc4qyDlq88n9hFQsgg8ZREAyY', '40918a8ecd22abb7fbfc9e8253210dedc78bffc081defc9a40893f0f5008b2de', 'VvW2FLRbqvnq3vBL8Np2', 'yy', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-10 17:40:04', '2019-09-10 17:40:04', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1171366338880995329', 'https://wx.qlogo.cn/mmhead/CsicRlgnXvRMUj1OVU18UNS1icickfmWMgFrXu74xqmuRw/132', 'oLvfc4hKG3fbNn6OHFRX6yzODxgY', '7c878539b251d49a617e4bb09fb618f7ef4ee005a3df8982bca979f255f51418', 'eNVKrjdP1U9q3DWobR3q', '刘雅琪', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-10 18:14:33', '2019-09-10 18:14:33', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1171606128335388674', 'https://wx.qlogo.cn/mmopen/vi_32/g0O40hHKK5uJflZVxWmPMSZZUwc5E9J68hqgX8T2Cic0pCiaibaD46ZTtnAKECBzhm8Ee7FJ9oZ0HXv4TRMKaoxnw/132', 'oLvfc4ilwvLAsHJ1LI9oD3McuSEI', 'e4e3dc3fba76c462476e18e71c73097049e1644309eeac14de4456569c594233', 'VdjQJHHt76oZpqG4QGUE', '徐军', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-11 10:07:23', '2019-09-11 10:07:23', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1171607181340573697', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIh0wxjWY9qd6miadggDXzV2lGwibdkL9WS0xw5PlagCOrE6qBFOicvVfJlxqQ4iabnY9jbfXFNdpKOjg/132', 'oLvfc4isXuiDfcEqhoHfW3eXZoMg', 'c7f42369627524dcbe6cf596d614a2815211f52654ca55d400f8f2ac4ba986a1', '4PEbTFtXTDmgkVKsOfb1', '赤那', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-11 10:11:34', '2019-09-11 10:11:34', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1171608879786229762', 'https://wx.qlogo.cn/mmopen/vi_32/mRLrz56MhC9JhDibmwt1McZNgH6J7Y1IXjZQkqfIf5jJnyM7vGJaGS5ibg56tQcVuiajvV7FzaAriagCmS6L4oZA7Q/132', 'oLvfc4gfiLWeS-hK57FNyF1uvhAg', 'cb45ddb98abd5130d9d9e8db53f4c5f25a46e1df40e5d43f87116bd4d74305c7', 'Ds6xQHtFYGKai6iNcSCm', '壁虎漫步', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-11 10:18:19', '2019-09-11 10:18:19', '0', '1', null, null);
INSERT INTO `sys_user` VALUES ('1171609644323962882', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKAWr5qia3EibrQgYRwJ4xFFj0nVGzIK8H8sj8ggpRGaeHn0nMpzUAWXj91XDghCK9lE2QicAGrxw7EQ/132', 'oLvfc4gvpfRF3DjqZ-BI0FDzdCmI', 'cb42656a1cd8fa6ce7b85ef556aea974a6db50131667c36eca7d010bbd32db1a', '4sKKy4xNVoqSgyjy7OUF', '菩提树', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-11 10:21:21', '2019-09-11 10:21:21', '0', '1', null, null);
INSERT INTO `sys_user` VALUES ('1171613446343098369', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIo4vA3JFO6CqF6Qh71ic3iaxI10iaOxbhSbY2bgXIgfF8H1ibztmia6icMP7AAFs5PpA6HoWZtdib22Lzog/132', 'oLvfc4gcg2nE3f6om88702oegn9Y', 'bea3afc48a05fd0cff560572b9daeefca081afd3384be1efa4cbdf8ced9491da', 'RceeR4V18RacZLmCan2F', 'zyx', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-11 10:36:28', '2019-09-11 10:36:28', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1171613932815253506', 'https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaELPvc5DwPCVU0kwMQAkofPoXNdoibTunbk3QBcU8NelQrdIdWtAZm8tMPINlyjSFQHap1xwemH1gVg/132', 'oLvfc4npT4-TInUcTaaw8OIGZ24M', 'c1092e4445588db0bed505cbad03aa3c320a83094140599d41876fc09222c6aa', 'H8VXe5XhdmafYxgcKDXC', '强哥  实体企业营销专家号', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-11 10:38:24', '2019-09-11 10:38:24', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1171697029195890690', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eohLUwyRvL154JK9AjzTVHfrH1CeqRwabsqRZN0UsIibdCwjcUCBWanYDwRIA6nd8jicCl7OIA72Olw/132', 'oLvfc4oxr6X8uDK92oqiuDNZ78NM', '56c1d7fbb450f894bc245672b3f6bd025dad16eec0907d551c8af3a28fdd069a', '0Di28Dwa3Oz09efcP1uF', '༻༺', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-11 16:08:35', '2019-09-11 16:08:35', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1172715430387318786', 'https://wx.qlogo.cn/mmhead/IvqF0OPGgYHWjNSOIhU2GnvcK59145UXhVzicZ47tKCI/132', 'oLvfc4iaQ0dl7c7R0uZXHJWucmKU', '44012a34c2f2db95add816ca8e5350666d59617cf8f3775c06a870b5479ce21a', 'gBsWzoTn91c4aJX4eIwR', '杜得齐', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-14 11:35:21', '2019-09-14 11:35:21', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1172828684291866625', 'https://wx.qlogo.cn/mmhead/5ca7ISt3K7z4icEHqyzPMvm3tFWfAnicAE8dUkIh3DibCA/132', 'oLvfc4mtk5BKEOplwjzVeO-Efm28', '0568cbc10eef77bc3cc8f7b2ed77d328b9845e0178216f1f880a9852bd8fe766', 'NolKFeCnqlstqEeCzn4W', '白柏宇', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-14 19:05:23', '2019-09-14 19:05:23', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1173479928496848897', 'https://wx.qlogo.cn/mmhead/7Ip0PDvM9e2OLxTiccxrkJMPMPzicejHmiczzDAoH6iaSmo/132', 'oLvfc4ggvYEK1M-AM1Cz-P_RB3XE', '7e906ccae1f5ae89933be26cee6a8e4c02f37824aba4a296b928f4d5d68fc759', 'z5rrWzZkODJyQwG6vaLB', '袁富毓', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-16 14:13:12', '2019-09-16 14:13:12', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1173522544865247234', 'https://wx.qlogo.cn/mmhead/fluB4FcGoCn3QtibEZ4tFxdgNiayaGia1dJEtjH8y8Ygia0/132', 'oLvfc4qWOZGmDDJbuwUowWQB-Etc', 'd0d128a99b46ea1fc9043ab2a71a5e03e4a797906239fcc37698e5afffc4192b', '8EcIAFqK2rHIGlnChYoD', '王建仪', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-16 17:02:32', '2019-09-16 17:02:32', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1173813499384262658', 'https://wx.qlogo.cn/mmhead/Mt4vwd2ZhPFWhfN7I7ibETa3859RtKibpho5xL6I01Cns/132', 'oLvfc4mXgZDM4-Q18JSIDg7nu5lk', '34b803ad941649126630057e103325eda6396a6ab5ab6fb76f1b24149f143309', '5Pn48GmxhmZh4Ou2nsoF', '吴彦文', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-17 12:18:41', '2019-09-17 12:18:41', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1173864515123245058', 'https://wx.qlogo.cn/mmhead/hgchiak4r24YVTmzJ9Pey6kh3xTCxWFgibBIR4jWPmCNw/132', 'oLvfc4iX9aot5QZAeD1M5xgqs2Vs', 'b316f9c3fe73ea625b839d0a13a6702d0b9c15b1275e01cd4eba8b8e8f862fca', '9vup6B9uVpb629ZCbutS', '何信希', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-17 15:41:24', '2019-09-17 15:41:24', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1174195696268099586', 'https://wx.qlogo.cn/mmhead/nibib01HNmKTRm9GgtHYymIlGDC7XIiaQH2Y450pKVy6D0/132', 'oLvfc4q0vlJEk2JDawuRKjYd1Lcc', '15c48427004f4dae9831f082ae468a725c1d7590f77d1ff5062238466aac134c', 'O6kg58C6cLsXPi8xQaaF', '张珮瑜', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-18 13:37:24', '2019-09-18 13:37:24', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1174248938993762306', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epibHrTiaAl405pOFteLdzLfhzicF6mlBdInLlf2SaZ91GoYjEv6gCxLcEPTOl5wt2LiareIMCAqF8YTQ/132', 'oLvfc4nrCFOHLxT_Cc2kOQRHkFcM', 'cbf313a5ad3eaab3592d05291bc61beb13c5d3c89bb97205940fbc5a6a5743fa', 'jqBEzofyoo23mwFGo4Br', '田思', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-18 17:08:58', '2019-09-18 17:08:58', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1174250256852467714', 'https://wx.qlogo.cn/mmhead/swE9oSNibMZcvCCx9bf8ZdiaQZPQMcf8PI7DxBFSOZeCk/132', 'oLvfc4rfc8f2-XcY4K2HaO6pn1mg', '4a27eaad01cc68a5ad118a2a9b6a45bf004cd119cfd1c1fe31b6edbcf8295b95', 'DFjPJs44DZxx2QmyTN9d', '许欣怡', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-18 17:14:12', '2019-09-18 17:14:12', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1174275094153441282', 'https://wx.qlogo.cn/mmhead/yc7Lfic8q0I4sMibvyaK3j8ia4fmq0yvf1vDicxtD6G4fXs/132', 'oLvfc4ogFj3Yd4KAI_F1NKSKEVOw', '68deec533b96f03cb4e9f78dbd66ba770c38731ffa51d524b53c41fba9b9c9bb', 'CzRBIXP289YUWaeXtTh5', '黄介桂', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-18 18:52:54', '2019-09-18 18:52:54', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1175600102410731522', 'https://wx.qlogo.cn/mmhead/4uiby0y8MJaVh3QgBt6F3DpVrXBRTJeVDe0tPKnrf3Ds/132', 'oLvfc4mAQmege43S6tN4yg1MP6h8', 'a8535abb1fe16d5fd78c30fc919efc1b3c85281e30ac113a17df2d396c5f0d03', 'fDsum96v3CPyw9QIpEdQ', '许文菱', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-22 10:38:01', '2019-09-22 10:38:01', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1175600276369489921', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKIfHQjDm1sLu4Mu9hsgnlLsojpV2YXGiajayAMAJ3ibESCU3oSMpPXEU8htAqSK7aIlhPtibsYTllCA/132', 'oLvfc4j80f8SDNGibPbp-tziDiWI', 'e77b56b0f13bb8cbc7602d70c44f7072470af836abaae4c65c0dbe219e40ce51', 'wIh1uPcrRIrGFCjXNULv', '米米', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-22 10:38:42', '2019-09-22 10:38:42', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1176078978190589954', 'https://wx.qlogo.cn/mmhead/e7ZsDmcUN4mF89Jm2UAuhmiaGXOvYXbrrzOtuK92NbBM/132', 'oLvfc4tpfl9ixNW2dol8DO9AaC_I', '4792c7632b074ec9c03d573554e7bf58584a4e98f81ebdba408a9adb1bc8988b', 'MOadCuuvOKvzdk8rVyGQ', '陈家杰', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-23 18:20:54', '2019-09-23 18:20:54', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1176084031978782721', 'https://wx.qlogo.cn/mmhead/GE7jibiaxo3ibliau4NHfVhXrLRicn38Zg3ud1lyWsGMeJbQ/132', 'oLvfc4hTgK75_tXd8fZIX_VNjnXQ', 'a9f4369ae3ee83997f82e53c080238ca1c3aa35694ef27e83428fd45ce7cbe58', 'QMzyfWgqBOU3mf05aq0O', '卫启欢', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-23 18:40:58', '2019-09-23 18:40:58', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1176084722717736961', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLwSoTjHPX5tgNnElvaV3alK9rybroHSyG0KkgSNtvH9quAFsW6ian9DS3x4JbMnwFDepUPt3EAyvQ/132', 'oLvfc4rNJStV_Di14-NRT_XhJHKM', 'f8e6206744a2ac22542c94e1cdbd3698e3111cc95976027b89d637f9ddee5ff0', 'SDXW5AaBNsyQ0omqBxbg', '手毛', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-23 18:43:43', '2019-09-23 18:43:43', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1176357985767309314', 'https://wx.qlogo.cn/mmhead/vFjzeJF23PfticYKH5QBP9OQK63HpWqbicsmb0NE5DnQ4/132', 'oLvfc4rmoy-QmBtIvF6pZa24INRI', '874cc37c5534f9a3fde4d5fb7174c5ede0fd02e694cb56a6afc877cf622cdc15', 'AXBAFz9xw7wjGn7BRXxt', '陈伯白', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-24 12:49:34', '2019-09-24 12:49:34', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1176398445705613313', 'https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEIibSRbMumPV34icicLVl4ZTepR5GLG4h53CiaEHDAWx3uZ3ibQxIcGhqsmJ5wicKU6efCCJkXMnib8KFC1Q/132', 'oLvfc4sO3b_c4iw7jrt4TscWZOHM', '987e23575d8ccbcff8ef50338e6ad25640d368f2111bc48b9dfe5273776cf914', 'OLxkzYRgYdwqcdy10oCG', '李国俊', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-24 15:30:21', '2019-09-24 15:30:21', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1176766226590478338', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKI5qWDJ4Stt31ibZnyYeMlicrnf2V53FUibeyicQibkOXmll0Da7E1XhoV1mic5ds6PVAsbEueGSotZFyA/132', 'oLvfc4sLP3n_FnXPL2Bx541Hn8xg', '1e0fa09a459bb9a1ae3fee501a7a1eff5e3e8a7b357c1a4fa11d66067361eef1', 'IaTW59Gk9YoZJ1Awk8PY', '小茉莉', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-25 15:51:46', '2019-09-25 15:51:46', '0', '1', null, null);
INSERT INTO `sys_user` VALUES ('1176819844798685186', 'https://wx.qlogo.cn/mmhead/r6UlBX94vTTia1j3RTe3MSDusb6NVrFiaCOo5guRGcLT0/132', 'oLvfc4ox0rEL3JB9DHdIJMePFocg', 'adc1ec940d0bfa9fd2049807010759c95361616ec6b6ffa0f5d4a7608bdb8f1a', 'xQC6Mv2POgnjtTOjZW6w', '杨俊霖', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-25 19:24:50', '2019-09-25 19:24:50', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1177157551034933249', 'https://wx.qlogo.cn/mmhead/jB6iaw44YtuxSX2ia97yMUaN7hQHXW9Lsf01qiak17r5tc/132', 'oLvfc4vanrcqqVcm-wDr5wyDwQ6w', '01918d48585fea2dc07df955beeaba67b10fd184eb49208f140a45d301a77182', 'jbSzw0LVxkwaytuMdADU', '陈彦正', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-26 17:46:45', '2019-09-26 17:46:45', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1177418826663010305', 'https://wx.qlogo.cn/mmopen/vi_32/jb3aVMnyzP8ibnPjIsH7qtRXE3z37N2pqqrdune2jibQdRhSkboeIUicuxTZryeMGVLaPyvNtFf1iaub4zO5rhm6bg/132', 'oLvfc4jeUxuKxr8fvu5dQKQQkMWE', 'bafa766387537275493cdd2ccbabb9cf3c4b9d9dab7c1c3736abce44b3187e09', 'bLX7aivYExpQGlD1zHos', 'administrator', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-27 11:04:58', '2019-09-27 11:04:58', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1177419640383152129', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIDOD2iajW6ajAUnWSsmIRfzibJ7mOYSiaXOUj1wSKrXfmWLZHuGwunMBDl99hIbYhffGsmaGA6IFwXQ/132', 'oLvfc4oq2fbpY-Oaetl6rS-YrwxU', '78025fa49ab012700d3fb5570f3bdb9616bb6e51ac7795eded557624c3fccdc3', 'Jg9RCiuGQ5vT7u6hRfl7', '风影software', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-27 11:08:12', '2019-09-27 11:08:12', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1177420241355612162', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLVJnl7nwO0rKmEXGzlHQYnYBYic7rMo61ffhgFib1FhO7ztHWnIppGU7BMjYZd3eWzSq0WEk6oSrqQ/132', 'oLvfc4sytd1zueCPxduC3_ncZ1kE', 'd37e66a583594cbde9e9b4df295e21259860b52595553747dba471142aea9fa1', 'BAzb4uRE0hT15ZHpyZrt', '繁华都市', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-27 11:10:36', '2019-09-27 11:10:36', '0', '1', null, null);
INSERT INTO `sys_user` VALUES ('1178217873065844738', 'https://wx.qlogo.cn/mmhead/pF8X1cZhx9mqBm72VN6OQdxhwJh7LnftlTKLJRKUFL8/132', 'oLvfc4vO5PnVD0eezfanqfFc4VJM', 'b2941edaf942f3ccfa013e7f7bf971bd877a3fc00f2449da8bdc5c6ed596793c', 'daYmh39x3wJkxunlVYDd', '李淑和', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-29 16:00:06', '2019-09-29 16:00:06', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1178515755480326145', 'https://wx.qlogo.cn/mmopen/vi_32/cK9VnhBrRaE8eAfHyWq72PhSglptiaWgT7jnRibawVw1VzyRejccT9d4CSajwPjznyIncjmoecYbhmc1j0X2xHsA/132', 'oLvfc4l1BIONf1pBkUqiZMABunQE', 'efe45d5ffa7ff7d03af4adf0eb6ee7c9be5ba418cd6750db3a57347581a92d8d', 'wbX2QSrV4ImmvhkawV4v', '吾贤卿淑', null, null, null, null, null, '1', null, null, null, null, null, '2019-09-30 11:43:47', '2019-09-30 11:43:47', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1179231645037436929', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTK5e5kjt5JauGRbibjl97vYSPGic0nXCVEAcbcjaefkSnQm50wibtTU4KWVedpdTaQCLMYPm49BNECTA/132', 'oLvfc4pS7tDzMU0AyRrJfIAwk8JM', '229870e642566eb746d84fab9bf307233851fe96a027f93b115db9779913af02', 'xiuXTxTfxebupcrXw2ND', 'TRUE', null, null, null, null, null, '1', null, null, null, null, null, '2019-10-02 11:08:28', '2019-10-02 11:08:28', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1184645976730312705', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIshad0wtryUs0tR6nsNbjDMjP3LOrEOJ3iccibBfoIshCpnB3C56ice9SaiaRqKvChibbYcibqrN2Eujww/132', 'oLvfc4p9Pg2FCpwCn0_zI0ciD4dA', 'dda0208f575c59b0464fc8351f029a82c9d86797ca31dbd7db25e7817a6bc573', 'TT1G77v1dJt4N1ZDJVTg', 'to', null, null, null, null, null, '1', null, null, null, null, null, '2019-10-17 09:43:05', '2019-10-17 09:43:05', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1186850996728070145', 'https://wx.qlogo.cn/mmopen/vi_32/MfOBO14QOwvLC3wyya0jUZXe33QFHWZmmicOezawnXmN27St3k8Eia2w2K3Io0UJrAXtNibblTcEEmICEQW5htdMQ/132', 'oLvfc4qiY1KZtqIzYiyJbWSBoaJE', '620142ab931aa193ff5b3bf876a465a095cf8e3aa0366bb1b30180a2b4c25400', 'nKyzVYYw6pKrrjeSYHrs', 'Nirvana', null, null, null, null, null, '1', null, null, null, null, null, '2019-10-23 11:45:03', '2019-10-23 11:45:03', '0', '1', null, null);
INSERT INTO `sys_user` VALUES ('1186881463704559617', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83er0Zlp91fDicbMW3z0iaJlq5DpC5O6icicb03EBw0c8xH07rI1C98QtlL8OMINYSlxphVTAvzhEf8cmsQ/132', 'oLvfc4mPZt6KDLhW7dToybc7miJ8', 'd697326db3165b1276e0d72e19ca3040c6950b0f3aa91861cdbcf2fdb1ae371d', 'QT4LJwhJ4G9jVEeIVi8J', 'ZB', null, null, null, null, null, '1', null, null, null, null, null, '2019-10-23 13:46:07', '2019-10-23 13:46:07', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1187540996114239490', 'https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaELR9NJ4KL9ticp2NbKFI10KNq2gw9gJGW031qdLwlZ8qic70LYh4AictwibHl9VGrZHm1OCicoJ5KWguicA/132', 'oLvfc4nXLo7UVeG1Mm5yvPPPwmc0', 'cea8826d30118b153179ab05cc53cacfd3725de81ff7c7c721ba89736302fb63', 'eDfyTRQbrisMP7ppxZDP', '满天星', null, null, null, null, null, '1', null, null, null, null, null, '2019-10-25 09:26:52', '2019-10-25 09:26:52', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1187574749654044673', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoS13IbLGe2BRE9WibtEETRBpqmz6CicOzIAqiaeldN4KvPfLHQeIRLWlQIQ18Cw9NNJYL4ER883O8ibg/132', 'oLvfc4ruJLhK3s7WlD-d391IokUs', 'c61037a0061a12c3e8129c25375ad794d8c89fb6eadcfcba858e90868126bf8a', 'CQfo6gNTazUR9540u6T5', 'Judy', null, null, null, null, null, '1', null, null, null, null, null, '2019-10-25 11:40:59', '2019-10-25 11:40:59', '0', '1', null, null);
INSERT INTO `sys_user` VALUES ('1187605705744076801', 'https://wx.qlogo.cn/mmhead/miaMMgUFXwCTvsUeC1694n0zibRRcBUopYQRVKxrtWK5w/132', 'oLvfc4oH_zOdWkvyrZrybDwIwqpA', 'dc4c7e66f5b39d888e57c8edf7767f1541817c0240cbc204829c4997e8de7367', 'i5rTK7ZMmFCoSkCSmzFg', '王翔顺', null, null, null, null, null, '1', null, null, null, null, null, '2019-10-25 13:44:00', '2019-10-25 13:44:00', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1188704505703337985', 'https://wx.qlogo.cn/mmopen/vi_32/QnnDUhl3iat9hJ9JqnSl4HNt8JCINy7F5fyVd6b1QMFINnFPYPRM4YjXnh84SRBUKlrUZIao6K5rnUwibibiaraWCA/132', 'oLvfc4i04nU0SSLZ1ich9XqtYl7w', '7e226b3ad5fb9d45a3023420aec749f437f443fb7a48a400740a778b0f70b500', '4119d6d2LDlYw0Qz40KH', '超_越梦想', null, null, null, null, null, '1', null, null, null, null, null, '2019-10-28 14:30:14', '2019-10-28 14:30:14', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1189373213727764481', 'https://wx.qlogo.cn/mmhead/LfzQuia77veeojJpycDYPicflevWiaHwpKOzgx6E4bnNok/132', 'oLvfc4h-4o8qTpAIKyxeVfi_MDj4', '61f7e428fed465af9920c91314034ad8d7fa167d48cf4ab678b7955e37073e6b', 'POQay06FHOGrHVeBtJZI', '吴彦文', null, null, null, null, null, '1', null, null, null, null, null, '2019-10-30 10:47:26', '2019-10-30 10:47:26', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1189774705869602818', 'https://wx.qlogo.cn/mmhead/MlVJUgoB1WoDyHeYLweDdAGZK1rVxibvER8RMNBz1m1Q/132', 'oLvfc4g7zzxvyoxTFjIUAlnGgv3c', '924b6b4b7f4f94664c75cc22b004d0040c0ff9072fc9e02050b6a7248f9646e2', 'pydddGRl6pFMWv71lvaa', '林家青', null, null, null, null, null, '1', null, null, null, null, null, '2019-10-31 13:22:49', '2019-10-31 13:22:49', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1189789563025506305', 'https://wx.qlogo.cn/mmhead/IDAskZdpwFxQiaKjPG0v4mCJSlUT5ln3zbP4TGqDk6po/132', 'oLvfc4pOv_XF9w_Luov4L-7DXxa0', '917b6aa8503f2287f0a330310a93359c057aa826d73fbe3a620c21817de13e1c', '7bVrylLKPeir5sjUAyrt', '林欣淳', null, null, null, null, null, '1', null, null, null, null, null, '2019-10-31 14:21:52', '2019-10-31 14:21:52', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1189800246291087362', 'https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEJWZBZ1FmnJrzYKNbEJfpgBJbgvestO7FaAPl2jplujlicr2ib2DczY8SeFHIxSbzecz2mFmYicDNOsQ/132', 'oLvfc4hRgv9T8KF3GaOVzuGZGAHM', '699ff143e036f32ce59b1ee67931d9cae2b2243860080d2b08032ba630cfe704', 'exteLOs7wkgijY1JDAId', 'nick', null, null, null, null, null, '1', null, null, null, null, null, '2019-10-31 15:04:19', '2019-10-31 15:04:19', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1189832991104974849', 'https://wx.qlogo.cn/mmhead/e9FicR67bDbriaEicWGrKDgyluM70iawFibWgEWurnA1gvJU/132', 'oLvfc4u_RUJ22wBVWjH8uciBFvhI', '06b41054342a413bc31756d492ffdfb89175ba9d94417b3bbf103a572c96cfef', '4vwVD1Ts0zOj6h7uHOW5', '郭美慧', null, null, null, null, null, '1', null, null, null, null, null, '2019-10-31 17:14:26', '2019-10-31 17:14:26', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1190018627384524801', 'https://wx.qlogo.cn/mmhead/AV7HfW2bsiauQBVOicrlfrXdWlegDsGNtAqvMnEic3CPia4/132', 'oLvfc4lp2tXWx-ufYuOHjY6ip8Qs', 'a3bf75e735812cb652761d81a09c6796b4b36bdbb46340533a64dda138532af3', 't0XUgWkjQ6lKDP6vM1Wf', '陈佳信', null, null, null, null, null, '1', null, null, null, null, null, '2019-11-01 05:32:05', '2019-11-01 05:32:05', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1190527217308418049', 'https://fdfs.baodingjl.com/group1/M00/00/31/PM2i9F3NCkOALByVAAAhGDja1d4443.jpg', 'yaoaosai', 'edda274620ebe77e3f9bafea3cf08199ee36bc8973d8106bdfbb6c6b587f92db', '16rOF71vos2FRH9wKvsF', '姚傲赛', '1139468839261356034', '2019-11-09 00:00:00', null, '787663136@qq.com', '18333287871', '1', null, null, null, null, null, '2019-11-02 15:13:02', '2019-11-14 16:03:18', '0', '', null, null);
INSERT INTO `sys_user` VALUES ('1191555855726297089', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKLezMU1buicGaJOqUhwMp8BicZicOafRVT9icoLdr9MogQS28PmGYXeeqNMqvDSrjANqyNKCjdFiaDb5w/132', 'oLvfc4rs4vPYGguif-lhIAGQhSUI', '7c7e1df6bcbfbfc1ce70ab5fc4e417bc4a347ff8ad9d46c76bdaebef10761325', '8yQav9IJmXTm5njHuCc8', '亚杰', null, null, null, null, null, '1', null, null, null, null, null, '2019-11-05 11:20:29', '2019-11-05 11:20:29', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1191654190751563777', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJWSh8ibBBLAZ1pQWDPNXZotWIWciaib0wYRichaicpAEkQ2SwTFrYdkXsNmY84UDYKVYWM6gzJC1cYqQg/132', 'oLvfc4kEAVN8GNItkCLtl1cIqpig', 'cd63feacd07ed92e68e744c2d46d80be7e4ec2f4afb505c38e5a18cdfde688c2', 'WxWsA9MWT1eP9UPPQtST', '十二', null, null, null, null, null, '1', null, null, null, null, null, '2019-11-05 17:51:14', '2019-11-05 17:51:14', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1192275760721313794', 'https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEIsTGiarmjGRwxkDEwcfDzI9Mqp01tBzcKibzcdXAwyvMdhq9GPcZEqssZuicKia0NYJibibDNibS8PUqLMA/132', 'oLvfc4i1JUwbFLLelQ5TG9eqerzE', 'de54e39d0982232a8da09691569ce26e689dc6efb09092a71faa4682adccb05c', 'loLbcmfqofis6OvbTyxx', '金鑫', null, null, null, null, null, '1', null, null, null, null, null, '2019-11-07 11:01:07', '2019-11-07 11:01:07', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1192771939892629506', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJA4gBsWBPibUNmkHZvyR7WTqMwWhC9bAepMnAlmWSCia9TLssOAZRsAKG3d2T61EFOgAT08vicOSHkQ/132', 'oLvfc4srQ8geftYJCjZ0_kpKG30w', '64a3274ea72c76dacbaf1bbf8c7b35a51056c19784d8f0901bf610a672a44554', 'ZZjymxqpuCuk83cyFskC', '思无邪', null, null, null, null, null, '1', null, null, null, null, null, '2019-11-08 19:52:46', '2019-11-08 19:52:46', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1193087598614712322', 'https://wx.qlogo.cn/mmhead/LFr7EJOdSzeA7j8Umz0gtf8n41d9aRkciars7EXnjvxo/132', 'oLvfc4vm5t4jITQGw26VTusfgb0Q', 'c7ff5e6f9a3cadd5ddbeffde6b89da114b03c68e1d22119ab69358b3225ab672', 'tQQw6HSTji5xMVg6HyO0', '谢惠雯', null, null, null, null, null, '1', null, null, null, null, null, '2019-11-09 16:47:05', '2019-11-09 16:47:05', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1194115437669621762', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJhbmWeU9tykgpDShiboThr6GfNK0tOdO7UFGhKclE5Vt8dv9c4TS8b6hSJiccqMuWXRtfJoXgygdPQ/132', 'oLvfc4j-fYxsmVcZ-EojvWBsaASU', 'ff69f10b69325ef1e5190512312ce8cbd6a6e2447445a9e827ecd5848b4c807a', 'AQoVDICtvm6uHXqkQklx', '爱.悦读齐亚坤13931279302', null, null, null, null, null, '1', null, null, null, null, null, '2019-11-12 12:51:21', '2019-11-12 12:51:21', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1194408782761533441', 'https://wx.qlogo.cn/mmopen/vi_32/vkicsiaqEiaSOJlnRbDlict0arzicb3yVBC9N57o2TXWPB433U6OnEt0uAQrUTicaRoz26mTUGBTzSicJtXAZxXiaRy0kA/132', 'oLvfc4sqDVY7GXQdCzH_FglSdYd0', 'e9cb89da2e8da5e167e77fcf8a5d72e45cdebfb55e82edc824c45759d511449d', '7CltvS5l4rJxbJXmXb9a', '敏', null, null, null, null, null, '1', null, null, null, null, null, '2019-11-13 08:17:00', '2019-11-13 08:17:00', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1194434015727951873', 'https://fdfs.baodingjl.com/group1/M00/00/31/PM2i9F3NCkuAPPdTAAAhGDja1d4098.jpg', 'superAdmin', 'ae2b5d92a3a0bdc37900fc80e4f1448f7b20374c682da0567a98eb3adc8bbe51', 'RSOmDQmG131ucO72aD4J', '后台管理员', '1139468839261356034', '2019-11-13 00:00:00', null, '787663136@qq.com', '18333287871', '1', null, null, null, null, null, '2019-11-13 09:57:16', '2019-11-19 13:43:09', '0', '', null, null);
INSERT INTO `sys_user` VALUES ('1194592657542455297', 'https://wx.qlogo.cn/mmopen/vi_32/icCibFWRkOmXtxKAU3N3ElOgbwve0ENQZxicic2mhX2hGZJwVLCk8yQxvciaze9qb37RAeQTMefnIhWic0bPjBXMTJww/132', 'oLvfc4nCZxRkj3vcAf9zaL0ked2Q', '905968f8728b0c738aa04e992348820479003ebd0bee5da262274199f2c3d52b', 'PZl1NujRxuhRbVFNjCMr', '蓝天', null, null, null, null, null, '1', null, null, null, null, null, '2019-11-13 20:27:39', '2019-11-13 20:27:39', '0', null, null, null);
INSERT INTO `sys_user` VALUES ('1196666270260060161', 'https://fdfs.baodingjl.com/group1/M00/00/33/PM2i9F3TgceAGhnYAAAhGDja1d4118.jpg', 'gonghuoshang', '51d0dc72e0c103e4e3a85762ba1032830eb3e57ac6aa95dcd5a5c166fa08b2c7', '8IG1mbMhuaumMKR4k2UZ', '供货商', null, null, null, '7988@qq.com', '1833328', '1', null, null, null, null, null, '2019-11-19 13:47:26', '2019-11-20 17:16:59', '0', '', null, null);
INSERT INTO `sys_user` VALUES ('1197064023118114817', null, 'shangjia002', '86ec66949727cfe34b9b8307ac6c3dfb2fb9beb2d9260ea391b4d3a43a32b9f4', 'EopyFK4tJP6BF055LHdc', 'shangjia002', '1', null, null, 'shangjia002@qq.com', '166666666', '1', null, null, null, null, null, '2019-11-20 16:07:58', '2019-11-20 16:30:43', '0', '', null, null);
INSERT INTO `sys_user` VALUES ('1197082469667102721', 'https://wx.qlogo.cn/mmhead/0gxXBzNfaYfxj1ia3g2lz7ZdAx2Fazreu97bSs2TY8vQ/132', 'oLvfc4nH9uMwgo2WBmhGDu5K5o-o', 'a38625afeea01611c8622728d56963acc1fecc2a69ce4aa07d66653bd58ec622', '47mbkYfKCyrAMqNmmHbl', '蔡嘉梅', null, null, null, null, null, '1', null, null, null, null, null, '2019-11-20 17:21:16', '2019-11-20 17:21:16', '0', null, null, null);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('2', '1058283224922398721', '1');
INSERT INTO `sys_user_role` VALUES ('50', '1156108999805534210', '2');
INSERT INTO `sys_user_role` VALUES ('51', '1156108999805534210', '2');
INSERT INTO `sys_user_role` VALUES ('52', '2', '2');
INSERT INTO `sys_user_role` VALUES ('53', '1159392142935371778', '2');
INSERT INTO `sys_user_role` VALUES ('54', '1162540654451707905', '2');
INSERT INTO `sys_user_role` VALUES ('55', '1162540654451707905', '2');
INSERT INTO `sys_user_role` VALUES ('56', '1164086985523675138', '2');
INSERT INTO `sys_user_role` VALUES ('57', '1167246694075215873', '2');
INSERT INTO `sys_user_role` VALUES ('58', '1', '1');
INSERT INTO `sys_user_role` VALUES ('61', '1164086985523675138', '2');
INSERT INTO `sys_user_role` VALUES ('62', '1164074507439853570', '2');
INSERT INTO `sys_user_role` VALUES ('63', '1164074507439853570', '2');
INSERT INTO `sys_user_role` VALUES ('64', '1164074507439853570', '2');
INSERT INTO `sys_user_role` VALUES ('65', '1164074507439853570', '2');
INSERT INTO `sys_user_role` VALUES ('66', '1164086985523675138', '2');
INSERT INTO `sys_user_role` VALUES ('67', '1164086985523675138', '2');
INSERT INTO `sys_user_role` VALUES ('68', '1164086985523675138', '2');
INSERT INTO `sys_user_role` VALUES ('69', '1167042162204594177', '2');
INSERT INTO `sys_user_role` VALUES ('70', '1164074152454934530', '2');
INSERT INTO `sys_user_role` VALUES ('71', '1164074152454934530', '2');
INSERT INTO `sys_user_role` VALUES ('72', '1167359208637218817', '2');
INSERT INTO `sys_user_role` VALUES ('73', '1167042162204594177', '2');
INSERT INTO `sys_user_role` VALUES ('74', '1167042162204594177', '2');
INSERT INTO `sys_user_role` VALUES ('75', '1167042162204594177', '2');
INSERT INTO `sys_user_role` VALUES ('76', '1164086985523675138', '2');
INSERT INTO `sys_user_role` VALUES ('77', '1167042162204594177', '2');
INSERT INTO `sys_user_role` VALUES ('78', '1167042162204594177', '2');
INSERT INTO `sys_user_role` VALUES ('79', '1167042162204594177', '2');
INSERT INTO `sys_user_role` VALUES ('80', '1167042162204594177', '2');
INSERT INTO `sys_user_role` VALUES ('81', '1167042162204594177', '2');
INSERT INTO `sys_user_role` VALUES ('82', '1167042162204594177', '2');
INSERT INTO `sys_user_role` VALUES ('83', '1164074152454934530', '2');
INSERT INTO `sys_user_role` VALUES ('86', '1190527217308418049', '3');
INSERT INTO `sys_user_role` VALUES ('87', '1194434015727951873', '3');
INSERT INTO `sys_user_role` VALUES ('89', '1197064023118114817', '1196665603874279426');
INSERT INTO `sys_user_role` VALUES ('90', '1196666270260060161', '1196665603874279426');

-- ----------------------------
-- Table structure for usercertification
-- ----------------------------
DROP TABLE IF EXISTS `usercertification`;
CREATE TABLE `usercertification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) DEFAULT NULL,
  `realNameCertification` varchar(20) DEFAULT NULL COMMENT '实名认证',
  `volunteerCertification` varchar(20) DEFAULT NULL COMMENT '志愿者认证',
  `enterpriseCertification` varchar(255) DEFAULT NULL COMMENT '企业认证',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usercertification
-- ----------------------------

-- ----------------------------
-- Table structure for userfeedback
-- ----------------------------
DROP TABLE IF EXISTS `userfeedback`;
CREATE TABLE `userfeedback` (
  `id` bigint(20) DEFAULT NULL,
  `content` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userfeedback
-- ----------------------------
INSERT INTO `userfeedback` VALUES (null, null);
INSERT INTO `userfeedback` VALUES (null, null);
INSERT INTO `userfeedback` VALUES (null, null);
INSERT INTO `userfeedback` VALUES (null, null);
INSERT INTO `userfeedback` VALUES (null, null);
INSERT INTO `userfeedback` VALUES (null, null);
INSERT INTO `userfeedback` VALUES (null, null);

-- ----------------------------
-- Table structure for user_t
-- ----------------------------
DROP TABLE IF EXISTS `user_t`;
CREATE TABLE `user_t` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_t
-- ----------------------------
INSERT INTO `user_t` VALUES ('1', '测试', '345', '24');
INSERT INTO `user_t` VALUES ('2', 'javen', '123', '10');

-- ----------------------------
-- Table structure for volunteerauthentication
-- ----------------------------
DROP TABLE IF EXISTS `volunteerauthentication`;
CREATE TABLE `volunteerauthentication` (
  `id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `birthDate` varchar(255) DEFAULT NULL COMMENT '出生年月',
  `nationality` varchar(255) DEFAULT NULL COMMENT '户籍地',
  `politicalIdentity` varchar(255) DEFAULT '' COMMENT '政治面貌',
  `belief` varchar(255) DEFAULT NULL COMMENT '宗教信仰',
  `educationDegree` varchar(255) DEFAULT NULL COMMENT '文化程度',
  `nation` varchar(255) DEFAULT NULL COMMENT '民族',
  `maritalStatus` varchar(255) DEFAULT NULL COMMENT '婚姻状态',
  `workUnity` varchar(255) DEFAULT NULL COMMENT '工作单位',
  `position` varchar(255) DEFAULT NULL COMMENT '职称',
  `certificate` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `qq` varchar(255) DEFAULT NULL,
  `weChat` varchar(255) DEFAULT NULL COMMENT '微信',
  `cellPhone` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `telNumber` varchar(255) DEFAULT NULL COMMENT '座机电话',
  `nowAddress` varchar(255) DEFAULT NULL COMMENT '现住地址',
  `organization` varchar(255) DEFAULT NULL COMMENT '加入的社团',
  `spareTimeName` varchar(255) DEFAULT NULL,
  `spareTime` varchar(255) DEFAULT NULL COMMENT '可能服务时间段',
  `hobby` varchar(255) DEFAULT NULL COMMENT '爱好',
  `programChooseName` varchar(255) DEFAULT NULL,
  `programChoose` varchar(255) DEFAULT NULL COMMENT '首选的服务',
  `idCardPositive` varchar(255) DEFAULT NULL COMMENT '身份证正面',
  `idCardBack` varchar(255) DEFAULT NULL COMMENT '身份证反面',
  `remarks` varchar(255) DEFAULT NULL,
  `create_by` bigint(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` varchar(255) DEFAULT NULL,
  `ifAgree` varchar(255) DEFAULT NULL,
  `ifAgreeName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of volunteerauthentication
-- ----------------------------
INSERT INTO `volunteerauthentication` VALUES ('1163635811582394369', '12312', '男', '2019-08-20', '12312', '123', '231', '123', '12312', '3123123', '1', '132', '123123', '231231', '1231231', '12312', '1231231', '123123', '123', '12eq2', '双休时段', '64', '312qwee', '公共服务', '66', 'https://fdfs.baodingjl.com/group1/M00/00/09/PM2i9F1bV1KALoEoAAVD95xrNpE205.png', 'https://fdfs.baodingjl.com/group1/M00/00/09/PM2i9F1bV1aAIay3AAXA3zcq_X0150.png', null, null, '2019-08-20 10:16:11', null, '2019-08-20 10:16:11', '0', '1', '通过');
INSERT INTO `volunteerauthentication` VALUES ('1167358494733123585', '朱', '男', '2019-08-30', '河北省', '团员', '无', '', '汉族', '婚姻', '哦哟哟', '', '130519931122345678', '', '791359019', 'zs791359019', '13051993772', '02111111445', '大街乐凯北大街', '大团队', '双休时段', '64', '', '公共服务', '66', 'https://fdfs.baodingjl.com/group1/M00/00/12/PM2i9F1o4tCAOf0QAABoZidV1kg813.jpg', 'https://fdfs.baodingjl.com/group1/M00/00/12/PM2i9F1o4uOAdbPMAACGlvH1g1M563.jpg', null, null, '2019-08-30 16:48:48', null, '2019-08-30 16:48:48', '0', '0', '未审核');
INSERT INTO `volunteerauthentication` VALUES ('1167686654263750658', '志愿者1号', '女', '2019-08-31', '保定', '9998', '12563', '大学', '汉族', '未婚', '', '', '130621199012091212', '', '7946315092', 'zs13463', '13051993372', '7033555', '哦哦哦', '大队长', '工作时段', '63', '', '公共服务', '66', 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qFGiAF0liAACnBvSP8BY189.jpg', 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qFHSAPR1NAACGlvH1g1M385.jpg', null, null, '2019-08-31 14:32:48', null, '2019-08-31 14:32:48', '0', '0', '未审核');
INSERT INTO `volunteerauthentication` VALUES ('1167740115915304962', 'li', '男', '2019-08-31', 'qwe', 'qwe', 'eqw', 'weq', 'eqw', 'eqw', 'qeqw', 'wewq', '130625199303042014', '', '206441549', 'wslsda123', '19933586536', '51565', 'qwe', 'qweqweq', '工作时段', '63', '', '公共服务', '66', 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qRkmAAjivAAVD95xrNpE540.png', 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1qRk-ADVkTAAgjVFEDkQk907.png', null, null, '2019-08-31 18:05:14', null, '2019-08-31 18:05:14', '0', '0', '未审核');
INSERT INTO `volunteerauthentication` VALUES ('1168409510857601025', '胡向堇', '男', '1970-01-01', '河北', '党员', 'i', '', '汉', '未婚', '', '', '130189197001012341', '', '123456789', 'xiaoyu_judy', '13015615245', '031236524589', '未来石', '健康生活', '工作时段', '63', '', '公共服务', '66', 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1stbiAC1h4AABtVc-mOus973.jpg', 'https://fdfs.baodingjl.com/group1/M00/00/15/PM2i9F1stbuAaeI6AABtVc-mOus812.jpg', null, null, '2019-09-02 14:25:10', null, '2019-09-02 14:25:10', '0', '1', '通过');
