/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : eladmin

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 02/07/2020 11:56:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_dict_detail
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_detail`;
CREATE TABLE `sys_dict_detail`  (
  `detail_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `dict_id` bigint(11) NULL DEFAULT NULL COMMENT '字典id',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典标签',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典值',
  `dict_sort` int(5) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`detail_id`) USING BTREE,
  INDEX `FK5tpkputc6d9nboxojdbgnpmyb`(`dict_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 330 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据字典详情' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict_detail
-- ----------------------------
INSERT INTO `sys_dict_detail` VALUES (1, 1, '激活', 'true', 1, NULL, NULL, '2019-10-27 20:31:36', NULL);
INSERT INTO `sys_dict_detail` VALUES (2, 1, '禁用', 'false', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict_detail` VALUES (3, 4, '启用', 'true', 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict_detail` VALUES (4, 4, '停用', 'false', 2, NULL, NULL, '2019-10-27 20:31:36', NULL);
INSERT INTO `sys_dict_detail` VALUES (5, 5, '启用', 'true', 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict_detail` VALUES (6, 5, '停用', 'false', 2, NULL, NULL, '2019-10-27 20:31:36', NULL);
INSERT INTO `sys_dict_detail` VALUES (17, 8, '户口簿', '1', 1, 'admin', 'admin', '2020-06-28 13:52:33', '2020-06-28 13:52:33');
INSERT INTO `sys_dict_detail` VALUES (18, 8, '护照', '2', 2, 'admin', 'admin', '2020-06-28 13:52:49', '2020-06-28 13:52:49');
INSERT INTO `sys_dict_detail` VALUES (19, 8, '港澳居民来往内地通行证', '5', 3, 'admin', 'admin', '2020-06-28 13:53:10', '2020-06-28 13:53:10');
INSERT INTO `sys_dict_detail` VALUES (20, 8, '台湾同胞来往内地通行证', '6', 4, 'admin', 'admin', '2020-06-28 13:53:25', '2020-06-28 13:53:25');
INSERT INTO `sys_dict_detail` VALUES (21, 8, '外国人居留证', '8', 5, 'admin', 'admin', '2020-06-28 13:53:41', '2020-06-28 13:53:41');
INSERT INTO `sys_dict_detail` VALUES (22, 8, '警官证', '9', 6, 'admin', 'admin', '2020-06-28 13:53:55', '2020-06-28 13:53:55');
INSERT INTO `sys_dict_detail` VALUES (23, 8, '香港身份证', 'A', 7, 'admin', 'admin', '2020-06-28 13:54:07', '2020-06-28 13:54:07');
INSERT INTO `sys_dict_detail` VALUES (24, 8, '澳门身份证', 'B', 9, 'admin', 'admin', '2020-06-28 13:54:22', '2020-06-28 13:54:22');
INSERT INTO `sys_dict_detail` VALUES (25, 8, '台湾身份证', 'C', 10, 'admin', 'admin', '2020-06-28 13:54:33', '2020-06-28 13:54:33');
INSERT INTO `sys_dict_detail` VALUES (26, 8, '其他证件', 'X', 11, 'admin', 'admin', '2020-06-28 13:54:47', '2020-06-28 13:54:47');
INSERT INTO `sys_dict_detail` VALUES (27, 8, '居民身份证及其他以公民身份证号码为标识的证件', '10', 12, 'admin', 'admin', '2020-06-28 13:54:58', '2020-06-28 13:54:58');
INSERT INTO `sys_dict_detail` VALUES (28, 8, '军人身份证件', '20', 13, 'admin', 'admin', '2020-06-28 13:55:12', '2020-06-28 13:55:12');
INSERT INTO `sys_dict_detail` VALUES (29, 9, '新增客户资料/首次上报', '10', 1, 'admin', 'admin', '2020-06-28 13:56:14', '2020-06-28 13:56:14');
INSERT INTO `sys_dict_detail` VALUES (30, 9, '更新客户资料', '20', 2, 'admin', 'admin', '2020-06-28 13:56:24', '2020-06-28 13:56:24');
INSERT INTO `sys_dict_detail` VALUES (31, 10, '贷款客户资料', '11', 1, 'admin', 'admin', '2020-06-28 13:57:12', '2020-06-28 13:57:12');
INSERT INTO `sys_dict_detail` VALUES (32, 10, '信用卡客户资料', '12', 2, 'admin', 'admin', '2020-06-28 13:57:24', '2020-06-28 13:57:24');
INSERT INTO `sys_dict_detail` VALUES (33, 10, '同时来自信用卡、贷款客户资料', '13', 3, 'admin', 'admin', '2020-06-28 13:57:37', '2020-06-28 13:57:37');
INSERT INTO `sys_dict_detail` VALUES (34, 10, '担保客户资料', '20', 4, 'admin', 'admin', '2020-06-28 13:57:56', '2020-06-28 13:57:56');
INSERT INTO `sys_dict_detail` VALUES (35, 10, '证券类融资客户资料', '30', 5, 'admin', 'admin', '2020-06-28 13:58:10', '2020-06-28 13:58:10');
INSERT INTO `sys_dict_detail` VALUES (36, 10, '融资租赁客户资料', '40', 6, 'admin', 'admin', '2020-06-28 13:58:19', '2020-06-28 13:58:19');
INSERT INTO `sys_dict_detail` VALUES (37, 10, '资产处置客户资料', '50', 7, 'admin', 'admin', '2020-06-28 13:58:34', '2020-06-28 13:58:34');
INSERT INTO `sys_dict_detail` VALUES (38, 10, '垫款业务客户资料', '60', 8, 'admin', 'admin', '2020-06-28 13:58:51', '2020-06-28 13:58:51');
INSERT INTO `sys_dict_detail` VALUES (39, 10, '无法区分 具体来源', '90', 9, 'admin', 'admin', '2020-06-28 13:59:20', '2020-06-28 14:04:53');
INSERT INTO `sys_dict_detail` VALUES (40, 11, '未知的性别', '0', 1, 'admin', 'admin', '2020-06-28 14:00:17', '2020-06-28 14:00:17');
INSERT INTO `sys_dict_detail` VALUES (41, 11, '男性', '1', 2, 'admin', 'admin', '2020-06-28 14:00:30', '2020-06-28 14:00:30');
INSERT INTO `sys_dict_detail` VALUES (42, 11, '女性', '2', 3, 'admin', 'admin', '2020-06-28 14:00:42', '2020-06-28 14:00:42');
INSERT INTO `sys_dict_detail` VALUES (43, 11, '未说明的性别', '9', 4, 'admin', 'admin', '2020-06-28 14:00:54', '2020-06-28 14:00:54');
INSERT INTO `sys_dict_detail` VALUES (44, 12, '研究生', '10', 1, 'admin', 'admin', '2020-06-28 14:02:37', '2020-06-28 14:02:37');
INSERT INTO `sys_dict_detail` VALUES (45, 12, '本科', '20', 2, 'admin', 'admin', '2020-06-28 14:02:48', '2020-06-28 14:02:48');
INSERT INTO `sys_dict_detail` VALUES (46, 12, '大专', '30', 3, 'admin', 'admin', '2020-06-28 14:02:58', '2020-06-28 14:02:58');
INSERT INTO `sys_dict_detail` VALUES (47, 12, '中专、职高、技校', '40', 4, 'admin', 'admin', '2020-06-28 14:03:09', '2020-06-28 14:03:09');
INSERT INTO `sys_dict_detail` VALUES (48, 12, '高中', '60', 5, 'admin', 'admin', '2020-06-28 14:03:21', '2020-06-28 14:03:21');
INSERT INTO `sys_dict_detail` VALUES (49, 12, '初中', '70', 6, 'admin', 'admin', '2020-06-28 14:03:31', '2020-06-28 14:03:31');
INSERT INTO `sys_dict_detail` VALUES (50, 12, '小学', '80', 7, 'admin', 'admin', '2020-06-28 14:03:41', '2020-06-28 14:03:41');
INSERT INTO `sys_dict_detail` VALUES (51, 12, '其他', '90', 8, 'admin', 'admin', '2020-06-28 14:03:51', '2020-06-28 14:03:51');
INSERT INTO `sys_dict_detail` VALUES (52, 12, '初中及以下', '91', 9, 'admin', 'admin', '2020-06-28 14:04:26', '2020-06-28 14:04:26');
INSERT INTO `sys_dict_detail` VALUES (53, 12, '未知', '99', 10, 'admin', 'admin', '2020-06-28 14:04:40', '2020-06-28 14:04:40');
INSERT INTO `sys_dict_detail` VALUES (54, 13, '名誉博士', '1', 1, 'admin', 'admin', '2020-06-28 14:05:32', '2020-06-28 14:05:32');
INSERT INTO `sys_dict_detail` VALUES (55, 13, '博士', '2', 2, 'admin', 'admin', '2020-06-28 14:05:42', '2020-06-28 14:05:42');
INSERT INTO `sys_dict_detail` VALUES (56, 13, '硕士', '3', 3, 'admin', 'admin', '2020-06-28 14:05:48', '2020-06-28 14:05:48');
INSERT INTO `sys_dict_detail` VALUES (57, 13, '学士', '4', 4, 'admin', 'admin', '2020-06-28 14:05:56', '2020-06-28 14:05:56');
INSERT INTO `sys_dict_detail` VALUES (58, 13, '无', '5', 5, 'admin', 'admin', '2020-06-28 14:06:12', '2020-06-28 14:06:12');
INSERT INTO `sys_dict_detail` VALUES (59, 13, '未知', '9', 6, 'admin', 'admin', '2020-06-28 14:06:23', '2020-06-28 14:06:23');
INSERT INTO `sys_dict_detail` VALUES (60, 14, '国家公务员', '11', 1, 'admin', 'admin', '2020-06-28 14:06:59', '2020-06-28 14:07:45');
INSERT INTO `sys_dict_detail` VALUES (61, 14, '专业技术人员', '13', 2, 'admin', 'admin', '2020-06-28 14:07:07', '2020-06-28 14:07:41');
INSERT INTO `sys_dict_detail` VALUES (62, 14, '职员', '17', 3, 'admin', 'admin', '2020-06-28 14:07:31', '2020-06-28 14:07:31');
INSERT INTO `sys_dict_detail` VALUES (63, 14, '企业管理人员', '21', 4, 'admin', 'admin', '2020-06-28 14:08:00', '2020-06-28 14:08:00');
INSERT INTO `sys_dict_detail` VALUES (64, 14, '工人', '24', 5, 'admin', 'admin', '2020-06-28 14:08:10', '2020-06-28 14:08:10');
INSERT INTO `sys_dict_detail` VALUES (65, 14, '农民', '27', 6, 'admin', 'admin', '2020-06-28 14:08:19', '2020-06-28 14:08:19');
INSERT INTO `sys_dict_detail` VALUES (66, 14, '学生', '31', 8, 'admin', 'admin', '2020-06-28 14:08:28', '2020-06-28 14:08:28');
INSERT INTO `sys_dict_detail` VALUES (67, 14, '现役军人', '37', 9, 'admin', 'admin', '2020-06-28 14:08:45', '2020-06-28 14:08:45');
INSERT INTO `sys_dict_detail` VALUES (68, 14, '自由职业者', '51', 10, 'admin', 'admin', '2020-06-28 14:08:54', '2020-06-28 14:08:54');
INSERT INTO `sys_dict_detail` VALUES (69, 14, '个体经营者', '54', 11, 'admin', 'admin', '2020-06-28 14:09:04', '2020-06-28 14:09:04');
INSERT INTO `sys_dict_detail` VALUES (70, 14, '无业人员', '70', 12, 'admin', 'admin', '2020-06-28 14:09:15', '2020-06-28 14:09:15');
INSERT INTO `sys_dict_detail` VALUES (71, 14, '退（离）休人员', '80', 13, 'admin', 'admin', '2020-06-28 14:09:33', '2020-06-28 14:09:33');
INSERT INTO `sys_dict_detail` VALUES (72, 14, '其他', '90', 14, 'admin', 'admin', '2020-06-28 14:09:44', '2020-06-28 14:09:44');
INSERT INTO `sys_dict_detail` VALUES (73, 14, '在职', '91', 15, 'admin', 'admin', '2020-06-28 14:09:55', '2020-06-28 14:10:27');
INSERT INTO `sys_dict_detail` VALUES (74, 14, '未知', '99', 16, 'admin', 'admin', '2020-06-28 14:10:06', '2020-06-28 14:10:18');
INSERT INTO `sys_dict_detail` VALUES (75, 15, '机关、事业单位', '10', 1, 'admin', 'admin', '2020-06-28 14:11:34', '2020-06-28 14:11:34');
INSERT INTO `sys_dict_detail` VALUES (76, 15, '国有企业', '20', 2, 'admin', 'admin', '2020-06-28 14:11:44', '2020-06-28 14:11:44');
INSERT INTO `sys_dict_detail` VALUES (77, 15, '外资企业', '30', 3, 'admin', 'admin', '2020-06-28 14:11:52', '2020-06-28 14:11:52');
INSERT INTO `sys_dict_detail` VALUES (78, 15, '个体、私营企业', '4', 4, 'admin', 'admin', '2020-06-28 14:12:00', '2020-06-28 14:12:00');
INSERT INTO `sys_dict_detail` VALUES (79, 15, '其他（包括三资企业、民营企业、民间团体等）', '50', 5, 'admin', 'admin', '2020-06-28 14:12:13', '2020-06-28 14:12:13');
INSERT INTO `sys_dict_detail` VALUES (80, 15, '未知', '99', 6, 'admin', 'admin', '2020-06-28 14:12:22', '2020-06-28 14:12:22');
INSERT INTO `sys_dict_detail` VALUES (81, 16, '农、林、牧、渔业', 'A', 1, 'admin', 'admin', '2020-06-28 14:25:49', '2020-06-28 14:25:49');
INSERT INTO `sys_dict_detail` VALUES (82, 16, '采矿业', 'B', 2, 'admin', 'admin', '2020-06-28 14:26:01', '2020-06-28 14:26:01');
INSERT INTO `sys_dict_detail` VALUES (83, 16, '制造业', 'C', 3, 'admin', 'admin', '2020-06-28 14:26:17', '2020-06-28 14:26:17');
INSERT INTO `sys_dict_detail` VALUES (84, 16, '电力、热力、燃气及水生产和供应业', 'D', 4, 'admin', 'admin', '2020-06-28 14:26:27', '2020-06-28 14:26:27');
INSERT INTO `sys_dict_detail` VALUES (85, 16, '建筑业', 'E', 5, 'admin', 'admin', '2020-06-28 14:26:52', '2020-06-28 14:26:52');
INSERT INTO `sys_dict_detail` VALUES (86, 16, '批发和零售业', 'F', 6, 'admin', 'admin', '2020-06-28 14:26:58', '2020-06-28 14:26:58');
INSERT INTO `sys_dict_detail` VALUES (87, 16, '交通运输、仓储和邮储业', 'G', 7, 'admin', 'admin', '2020-06-28 14:27:10', '2020-06-28 14:27:10');
INSERT INTO `sys_dict_detail` VALUES (88, 16, '住宿和餐饮业', 'H', 8, 'admin', 'admin', '2020-06-28 14:27:19', '2020-06-28 14:27:19');
INSERT INTO `sys_dict_detail` VALUES (89, 16, '信息传输、软件和信息技术服务', 'I', 9, 'admin', 'admin', '2020-06-28 14:27:28', '2020-06-28 14:27:28');
INSERT INTO `sys_dict_detail` VALUES (90, 16, '金融业', 'J', 10, 'admin', 'admin', '2020-06-28 14:27:40', '2020-06-28 14:27:40');
INSERT INTO `sys_dict_detail` VALUES (91, 16, '房地产业', 'K', 11, 'admin', 'admin', '2020-06-28 14:27:51', '2020-06-28 14:27:51');
INSERT INTO `sys_dict_detail` VALUES (92, 16, '租赁和商务服务业', 'L', 12, 'admin', 'admin', '2020-06-28 14:28:01', '2020-06-28 14:28:01');
INSERT INTO `sys_dict_detail` VALUES (93, 16, '科学研究和技术服务业', 'M', 13, 'admin', 'admin', '2020-06-28 14:28:09', '2020-06-28 14:28:09');
INSERT INTO `sys_dict_detail` VALUES (94, 16, '水利、环境和公共设施管理业', 'N', 14, 'admin', 'admin', '2020-06-28 14:28:28', '2020-06-28 14:28:28');
INSERT INTO `sys_dict_detail` VALUES (95, 16, '居民服务、修理和其他服务业', 'O', 15, 'admin', 'admin', '2020-06-28 14:28:37', '2020-06-28 14:28:37');
INSERT INTO `sys_dict_detail` VALUES (96, 16, '教育', 'P', 16, 'admin', 'admin', '2020-06-28 14:28:48', '2020-06-28 14:28:48');
INSERT INTO `sys_dict_detail` VALUES (97, 16, '卫生和社会工作', 'Q', 18, 'admin', 'admin', '2020-06-28 14:28:58', '2020-06-28 14:29:13');
INSERT INTO `sys_dict_detail` VALUES (98, 16, '文化、体育和娱乐业', 'R', 17, 'admin', 'admin', '2020-06-28 14:29:07', '2020-06-28 14:29:07');
INSERT INTO `sys_dict_detail` VALUES (99, 16, '公共管理、社会保障和社会组织', 'S', 19, 'admin', 'admin', '2020-06-28 14:29:22', '2020-06-28 14:29:22');
INSERT INTO `sys_dict_detail` VALUES (100, 16, '国际组织', 'T', 20, 'admin', 'admin', '2020-06-28 14:29:38', '2020-06-28 14:29:38');
INSERT INTO `sys_dict_detail` VALUES (101, 16, '未知', '9', 21, 'admin', 'admin', '2020-06-28 14:29:48', '2020-06-28 14:29:48');
INSERT INTO `sys_dict_detail` VALUES (102, 16, '未知', 'Z', 22, 'admin', 'admin', '2020-06-28 14:29:58', '2020-06-28 14:29:58');
INSERT INTO `sys_dict_detail` VALUES (103, 17, '国家机关、党群组织、企业、事业单位负责人', '0', 1, 'admin', 'admin', '2020-06-28 14:31:03', '2020-06-28 14:31:03');
INSERT INTO `sys_dict_detail` VALUES (104, 17, '专业技术人员', '1', 2, 'admin', 'admin', '2020-06-28 14:31:12', '2020-06-28 14:31:12');
INSERT INTO `sys_dict_detail` VALUES (105, 17, '办事人员和有关人员', '3', 3, 'admin', 'admin', '2020-06-28 14:31:22', '2020-06-28 14:31:41');
INSERT INTO `sys_dict_detail` VALUES (106, 17, '商业、服务业人员', '4', 4, 'admin', 'admin', '2020-06-28 14:31:33', '2020-06-28 14:31:33');
INSERT INTO `sys_dict_detail` VALUES (107, 17, '农、林、牧、渔、水利业生产人员', '5', 5, 'admin', 'admin', '2020-06-28 14:31:52', '2020-06-28 14:31:52');
INSERT INTO `sys_dict_detail` VALUES (108, 17, '生产、运输设备操作人员及有关人员', '6', 6, 'admin', 'admin', '2020-06-28 14:31:59', '2020-06-28 14:31:59');
INSERT INTO `sys_dict_detail` VALUES (109, 17, '军人', 'X', 7, 'admin', 'admin', '2020-06-28 14:32:13', '2020-06-28 14:32:13');
INSERT INTO `sys_dict_detail` VALUES (110, 17, '不便分类的其他从业人员', 'Y', 8, 'admin', 'admin', '2020-06-28 14:32:22', '2020-06-28 14:32:22');
INSERT INTO `sys_dict_detail` VALUES (111, 17, '未知', 'Z', 9, 'admin', 'admin', '2020-06-28 14:32:33', '2020-06-28 14:32:33');
INSERT INTO `sys_dict_detail` VALUES (112, 18, '高级领导（行政级别局级及以上领导或大公司高级管理 人员）', '1', 1, 'admin', 'admin', '2020-06-28 14:33:01', '2020-06-28 14:33:01');
INSERT INTO `sys_dict_detail` VALUES (113, 18, '中级领导（行政级别处级领导或大公司中级管理人员）', '2', 2, 'admin', 'admin', '2020-06-28 14:33:09', '2020-06-28 14:33:09');
INSERT INTO `sys_dict_detail` VALUES (114, 18, '一般员工', '3', 3, 'admin', 'admin', '2020-06-28 14:33:18', '2020-06-28 14:33:18');
INSERT INTO `sys_dict_detail` VALUES (115, 18, '未知', '4', 4, 'admin', 'admin', '2020-06-28 14:33:25', '2020-06-28 14:33:25');
INSERT INTO `sys_dict_detail` VALUES (116, 19, '高级', '1', 1, 'admin', 'admin', '2020-06-28 14:33:58', '2020-06-28 14:33:58');
INSERT INTO `sys_dict_detail` VALUES (117, 19, '中级', '2', 2, 'admin', 'admin', '2020-06-28 14:34:08', '2020-06-28 14:34:08');
INSERT INTO `sys_dict_detail` VALUES (118, 19, '初级', '3', 3, 'admin', 'admin', '2020-06-28 14:34:15', '2020-06-28 14:34:15');
INSERT INTO `sys_dict_detail` VALUES (119, 19, '无', '0', 4, 'admin', 'admin', '2020-06-28 14:34:26', '2020-06-28 14:34:26');
INSERT INTO `sys_dict_detail` VALUES (120, 19, '未知', '9', 5, 'admin', 'admin', '2020-06-28 14:34:39', '2020-06-28 14:34:39');
INSERT INTO `sys_dict_detail` VALUES (121, 20, '自置', '1', 1, 'admin', 'admin', '2020-06-28 14:35:17', '2020-06-28 14:35:17');
INSERT INTO `sys_dict_detail` VALUES (122, 20, '按揭', '2', 2, 'admin', 'admin', '2020-06-28 14:35:23', '2020-06-28 14:35:23');
INSERT INTO `sys_dict_detail` VALUES (123, 20, '亲属楼宇', '3', 3, 'admin', 'admin', '2020-06-28 14:35:31', '2020-06-28 14:35:31');
INSERT INTO `sys_dict_detail` VALUES (124, 20, '集体宿舍', '4', 4, 'admin', 'admin', '2020-06-28 14:35:39', '2020-06-28 14:35:39');
INSERT INTO `sys_dict_detail` VALUES (125, 20, '租房', '5', 5, 'admin', 'admin', '2020-06-28 14:35:49', '2020-06-28 14:35:49');
INSERT INTO `sys_dict_detail` VALUES (126, 20, '共有住宅', '6', 6, 'admin', 'admin', '2020-06-28 14:35:56', '2020-06-28 14:35:56');
INSERT INTO `sys_dict_detail` VALUES (127, 20, '其他', '7', 7, 'admin', 'admin', '2020-06-28 14:36:05', '2020-06-28 14:36:05');
INSERT INTO `sys_dict_detail` VALUES (128, 20, '自有', '11', 8, 'admin', 'admin', '2020-06-28 14:36:16', '2020-06-28 14:36:16');
INSERT INTO `sys_dict_detail` VALUES (129, 20, '借住', '12', 9, 'admin', 'admin', '2020-06-28 14:36:27', '2020-06-28 14:36:27');
INSERT INTO `sys_dict_detail` VALUES (130, 20, '未知', '9', 10, 'admin', 'admin', '2020-06-28 14:36:37', '2020-06-28 14:36:37');
INSERT INTO `sys_dict_detail` VALUES (131, 21, '未婚', '10', 1, 'admin', 'admin', '2020-06-28 14:38:37', '2020-06-28 14:38:37');
INSERT INTO `sys_dict_detail` VALUES (132, 21, '已婚', '20', 2, 'admin', 'admin', '2020-06-28 14:38:49', '2020-06-28 14:38:49');
INSERT INTO `sys_dict_detail` VALUES (133, 21, '初婚', '21', 3, 'admin', 'admin', '2020-06-28 14:38:58', '2020-06-28 14:38:58');
INSERT INTO `sys_dict_detail` VALUES (134, 21, '再婚', '22', 4, 'admin', 'admin', '2020-06-28 14:39:06', '2020-06-28 14:39:06');
INSERT INTO `sys_dict_detail` VALUES (135, 21, '复婚', '23', 5, 'admin', 'admin', '2020-06-28 14:39:16', '2020-06-28 14:39:16');
INSERT INTO `sys_dict_detail` VALUES (136, 21, '丧偶', '30', 6, 'admin', 'admin', '2020-06-28 14:39:24', '2020-06-28 14:39:24');
INSERT INTO `sys_dict_detail` VALUES (137, 21, '离婚', '40', 7, 'admin', 'admin', '2020-06-28 14:39:35', '2020-06-28 14:39:35');
INSERT INTO `sys_dict_detail` VALUES (138, 21, '未说明的婚姻状况', '90', 8, 'admin', 'admin', '2020-06-28 14:39:46', '2020-06-28 14:39:46');
INSERT INTO `sys_dict_detail` VALUES (139, 21, '单身', '91', 9, 'admin', 'admin', '2020-06-28 14:40:00', '2020-06-28 14:40:07');
INSERT INTO `sys_dict_detail` VALUES (140, 21, '未知', '99', 10, 'admin', 'admin', '2020-06-28 14:40:22', '2020-06-28 14:40:22');
INSERT INTO `sys_dict_detail` VALUES (141, 22, '配偶', '1', 1, 'admin', 'admin', '2020-06-28 14:42:05', '2020-06-28 14:42:05');
INSERT INTO `sys_dict_detail` VALUES (142, 22, '子', '2', 2, 'admin', 'admin', '2020-06-28 14:42:13', '2020-06-28 14:42:13');
INSERT INTO `sys_dict_detail` VALUES (143, 22, '女', '3', 3, 'admin', 'admin', '2020-06-28 14:42:19', '2020-06-28 14:42:19');
INSERT INTO `sys_dict_detail` VALUES (144, 22, '孙子、孙女（外孙子、外孙女）', '4', 4, 'admin', 'admin', '2020-06-28 14:42:28', '2020-06-28 14:42:28');
INSERT INTO `sys_dict_detail` VALUES (145, 22, '父母', '5', 5, 'admin', 'admin', '2020-06-28 14:42:37', '2020-06-28 14:42:37');
INSERT INTO `sys_dict_detail` VALUES (146, 22, '祖父母或外祖父母', '6', 6, 'admin', 'admin', '2020-06-28 14:42:44', '2020-06-28 14:42:44');
INSERT INTO `sys_dict_detail` VALUES (147, 22, '兄、弟、姐、妹', '7', 7, 'admin', 'admin', '2020-06-28 14:42:53', '2020-06-28 14:42:53');
INSERT INTO `sys_dict_detail` VALUES (148, 22, '其他', '8', 8, 'admin', 'admin', '2020-06-28 14:43:02', '2020-06-28 14:43:02');
INSERT INTO `sys_dict_detail` VALUES (149, 23, '无效', '0', 1, 'admin', 'admin', '2020-06-28 14:43:28', '2020-06-28 14:43:28');
INSERT INTO `sys_dict_detail` VALUES (150, 23, '有效', '1', 2, 'admin', 'admin', '2020-06-28 14:43:35', '2020-06-28 14:43:35');
INSERT INTO `sys_dict_detail` VALUES (151, 24, '个人基本信息记录', '110', 1, 'admin', 'admin', '2020-06-28 14:45:23', '2020-06-28 14:45:23');
INSERT INTO `sys_dict_detail` VALUES (152, 24, '个人基本信息整笔删除请求记录', '114', 2, 'admin', 'admin', '2020-06-28 14:45:34', '2020-06-28 14:45:34');
INSERT INTO `sys_dict_detail` VALUES (153, 24, '家族关系信息记录', '120', 3, 'admin', 'admin', '2020-06-28 14:45:43', '2020-06-28 14:45:43');
INSERT INTO `sys_dict_detail` VALUES (154, 24, '个人证件有效期信息记录', '130', 4, 'admin', 'admin', '2020-06-28 14:45:56', '2020-06-28 14:45:56');
INSERT INTO `sys_dict_detail` VALUES (155, 24, '个人证件有效期信息整笔删除请求记录', '134', 5, 'admin', 'admin', '2020-06-28 14:46:06', '2020-06-28 14:46:06');
INSERT INTO `sys_dict_detail` VALUES (156, 24, '个人证件整合信息记录', '140', 6, 'admin', 'admin', '2020-06-28 14:46:17', '2020-06-28 14:46:17');
INSERT INTO `sys_dict_detail` VALUES (157, 25, '210', '个人借贷账户信息记录', 1, 'admin', 'admin', '2020-07-02 10:30:43', '2020-07-02 10:30:43');
INSERT INTO `sys_dict_detail` VALUES (158, 25, '211', '个人借贷账户标识变更请求记录', 2, 'admin', 'admin', '2020-07-02 10:31:01', '2020-07-02 10:31:01');
INSERT INTO `sys_dict_detail` VALUES (159, 25, '212', '个人借贷账户按段更正请求记录', 3, 'admin', 'admin', '2020-07-02 10:31:18', '2020-07-02 10:31:18');
INSERT INTO `sys_dict_detail` VALUES (160, 25, '213', '个人借贷账户按段删除请求记录', 4, 'admin', 'admin', '2020-07-02 10:31:34', '2020-07-02 10:31:34');
INSERT INTO `sys_dict_detail` VALUES (161, 25, '214', '个人借贷账户整笔删除请求记录', 5, 'admin', 'admin', '2020-07-02 10:31:46', '2020-07-02 10:32:13');
INSERT INTO `sys_dict_detail` VALUES (162, 25, '215', '个人借贷账户特殊事件说明记录', 6, 'admin', 'admin', '2020-07-02 10:32:05', '2020-07-02 10:32:18');
INSERT INTO `sys_dict_detail` VALUES (163, 25, '220', '个人授信协议信息记录', 7, 'admin', 'admin', '2020-07-02 10:32:32', '2020-07-02 10:32:32');
INSERT INTO `sys_dict_detail` VALUES (164, 25, '221', '个人授信协议标识变更请求记录', 8, 'admin', 'admin', '2020-07-02 10:32:49', '2020-07-02 10:32:49');
INSERT INTO `sys_dict_detail` VALUES (165, 25, '222', '个人授信协议按段更正请求记录', 9, 'admin', 'admin', '2020-07-02 10:32:59', '2020-07-02 10:32:59');
INSERT INTO `sys_dict_detail` VALUES (166, 25, '223', '个人授信协议按段删除请求记录', 11, 'admin', 'admin', '2020-07-02 10:33:12', '2020-07-02 10:33:12');
INSERT INTO `sys_dict_detail` VALUES (167, 25, '224', '个人授信协议按段删除请求记录', 12, 'admin', 'admin', '2020-07-02 10:33:25', '2020-07-02 10:33:25');
INSERT INTO `sys_dict_detail` VALUES (168, 26, 'D1', '非循环贷账户', 1, 'admin', 'admin', '2020-07-02 10:34:28', '2020-07-02 10:34:28');
INSERT INTO `sys_dict_detail` VALUES (169, 26, 'R1', '循环贷账户', 2, 'admin', 'admin', '2020-07-02 10:34:40', '2020-07-02 10:34:40');
INSERT INTO `sys_dict_detail` VALUES (170, 26, 'R2', '贷记卡账户', 3, 'admin', 'admin', '2020-07-02 10:34:53', '2020-07-02 10:34:53');
INSERT INTO `sys_dict_detail` VALUES (171, 26, 'R3', '准贷记卡账户', 4, 'admin', 'admin', '2020-07-02 10:35:10', '2020-07-02 10:35:10');
INSERT INTO `sys_dict_detail` VALUES (172, 26, 'R4', '循环额度下分账户', 5, 'admin', 'admin', '2020-07-02 10:35:24', '2020-07-02 10:35:24');
INSERT INTO `sys_dict_detail` VALUES (173, 26, 'C1', '催收账户', 6, 'admin', 'admin', '2020-07-02 10:35:35', '2020-07-02 10:35:35');
INSERT INTO `sys_dict_detail` VALUES (174, 27, '10', '新开户', 1, 'admin', 'admin', '2020-07-02 10:36:30', '2020-07-02 10:36:30');
INSERT INTO `sys_dict_detail` VALUES (175, 27, '20', '账户关闭', 2, 'admin', 'admin', '2020-07-02 10:36:42', '2020-07-02 10:36:42');
INSERT INTO `sys_dict_detail` VALUES (176, 27, '30', '月度结算', 3, 'admin', 'admin', '2020-07-02 10:36:52', '2020-07-02 10:36:52');
INSERT INTO `sys_dict_detail` VALUES (177, 27, '31', '月结日首次上报存量账户', 4, 'admin', 'admin', '2020-07-02 10:37:01', '2020-07-02 10:37:01');
INSERT INTO `sys_dict_detail` VALUES (178, 27, '32', '月结日账户关闭', 5, 'admin', 'admin', '2020-07-02 10:37:11', '2020-07-02 10:37:11');
INSERT INTO `sys_dict_detail` VALUES (179, 27, '40', '收回逾期款项', 6, 'admin', 'admin', '2020-07-02 10:37:23', '2020-07-02 10:37:23');
INSERT INTO `sys_dict_detail` VALUES (180, 28, '1', '贷款', 1, 'admin', 'admin', '2020-07-02 10:39:02', '2020-07-02 10:39:02');
INSERT INTO `sys_dict_detail` VALUES (181, 28, '2', '信用卡', 2, 'admin', 'admin', '2020-07-02 10:39:16', '2020-07-02 10:39:16');
INSERT INTO `sys_dict_detail` VALUES (182, 28, '3', '证券类融资', 3, 'admin', 'admin', '2020-07-02 10:39:26', '2020-07-02 10:39:26');
INSERT INTO `sys_dict_detail` VALUES (183, 28, '4', '融资租赁', 4, 'admin', 'admin', '2020-07-02 10:39:34', '2020-07-02 10:39:34');
INSERT INTO `sys_dict_detail` VALUES (184, 28, '5', '资产处置', 5, 'admin', 'admin', '2020-07-02 10:39:44', '2020-07-02 10:39:44');
INSERT INTO `sys_dict_detail` VALUES (185, 28, '6', '垫款', 6, 'admin', 'admin', '2020-07-02 10:39:52', '2020-07-02 10:39:52');
INSERT INTO `sys_dict_detail` VALUES (186, 29, '11', '个人住房商业贷款', 5, 'admin', 'admin', '2020-07-02 10:40:55', '2020-07-02 10:41:50');
INSERT INTO `sys_dict_detail` VALUES (187, 29, '12', '个人商用房（含商住两用）贷款', 2, 'admin', 'admin', '2020-07-02 10:41:05', '2020-07-02 10:41:05');
INSERT INTO `sys_dict_detail` VALUES (188, 29, '13', '个人住房公积金贷款', 3, 'admin', 'admin', '2020-07-02 10:41:15', '2020-07-02 10:41:15');
INSERT INTO `sys_dict_detail` VALUES (189, 29, '21', '个人汽车消费贷款', 4, 'admin', 'admin', '2020-07-02 10:41:25', '2020-07-02 10:41:25');
INSERT INTO `sys_dict_detail` VALUES (190, 29, '31', '个人助学贷款', 6, 'admin', 'admin', '2020-07-02 10:41:45', '2020-07-02 10:41:45');
INSERT INTO `sys_dict_detail` VALUES (191, 29, '32', '国家助学贷款', 7, 'admin', 'admin', '2020-07-02 10:42:03', '2020-07-02 10:42:03');
INSERT INTO `sys_dict_detail` VALUES (192, 29, '33', '商业助学贷款', 8, 'admin', 'admin', '2020-07-02 10:42:14', '2020-07-02 10:42:14');
INSERT INTO `sys_dict_detail` VALUES (193, 29, '41', '个人经营性贷款', 9, 'admin', 'admin', '2020-07-02 10:42:31', '2020-07-02 10:42:31');
INSERT INTO `sys_dict_detail` VALUES (194, 29, '42', '个人创业担保贷款', 10, 'admin', 'admin', '2020-07-02 10:42:50', '2020-07-02 10:42:50');
INSERT INTO `sys_dict_detail` VALUES (195, 29, '51', '农户贷款', 11, 'admin', 'admin', '2020-07-02 10:43:02', '2020-07-02 10:43:02');
INSERT INTO `sys_dict_detail` VALUES (196, 29, '52', '经营性农户贷款', 12, 'admin', 'admin', '2020-07-02 10:43:14', '2020-07-02 10:43:14');
INSERT INTO `sys_dict_detail` VALUES (197, 29, '53', '消费性农户贷款', 14, 'admin', 'admin', '2020-07-02 10:43:30', '2020-07-02 10:43:30');
INSERT INTO `sys_dict_detail` VALUES (198, 29, '91', '其他个人消费贷款', 15, 'admin', 'admin', '2020-07-02 10:43:45', '2020-07-02 10:43:45');
INSERT INTO `sys_dict_detail` VALUES (199, 29, '99', '其他贷款', 16, 'admin', 'admin', '2020-07-02 10:43:59', '2020-07-02 10:43:59');
INSERT INTO `sys_dict_detail` VALUES (200, 29, '71', '准贷记卡', 17, 'admin', 'admin', '2020-07-02 10:44:11', '2020-07-02 10:44:11');
INSERT INTO `sys_dict_detail` VALUES (201, 29, '81', '贷记卡', 18, 'admin', 'admin', '2020-07-02 10:44:24', '2020-07-02 10:44:24');
INSERT INTO `sys_dict_detail` VALUES (202, 29, '82', '大额专项分期卡（专指仅用于大额专项分 期的贷记卡）', 19, 'admin', 'admin', '2020-07-02 10:44:34', '2020-07-02 10:44:34');
INSERT INTO `sys_dict_detail` VALUES (203, 29, '92', '约定购回式证券交易', 20, 'admin', 'admin', '2020-07-02 10:45:56', '2020-07-02 10:45:56');
INSERT INTO `sys_dict_detail` VALUES (204, 29, 'A1', '由资产处置机构处置的债务', 21, 'admin', 'admin', '2020-07-02 10:46:07', '2020-07-02 10:46:07');
INSERT INTO `sys_dict_detail` VALUES (205, 29, 'B2', '因代偿继承债权的债务', 22, 'admin', 'admin', '2020-07-02 10:46:22', '2020-07-02 10:46:22');
INSERT INTO `sys_dict_detail` VALUES (206, 30, '11', '分期等额本息', 1, 'admin', 'admin', '2020-07-02 10:47:38', '2020-07-02 10:47:38');
INSERT INTO `sys_dict_detail` VALUES (207, 30, '12', '分期等额本金', 2, 'admin', 'admin', '2020-07-02 10:47:50', '2020-07-02 10:47:50');
INSERT INTO `sys_dict_detail` VALUES (208, 30, '13', '到期还本分期结息', 3, 'admin', 'admin', '2020-07-02 10:48:01', '2020-07-02 10:48:01');
INSERT INTO `sys_dict_detail` VALUES (209, 30, '14', '等比累进分期还款', 4, 'admin', 'admin', '2020-07-02 10:48:11', '2020-07-02 10:48:11');
INSERT INTO `sys_dict_detail` VALUES (210, 30, '15', '等比累进分期还款', 5, 'admin', 'admin', '2020-07-02 10:48:20', '2020-07-02 10:48:20');
INSERT INTO `sys_dict_detail` VALUES (211, 30, '19', '其他类型分期还款', 6, 'admin', 'admin', '2020-07-02 10:48:30', '2020-07-02 10:48:30');
INSERT INTO `sys_dict_detail` VALUES (212, 30, '21', '到期一次还本付息', 7, 'admin', 'admin', '2020-07-02 10:48:44', '2020-07-02 10:48:44');
INSERT INTO `sys_dict_detail` VALUES (213, 30, '22', '预先付息到期还本', 8, 'admin', 'admin', '2020-07-02 10:48:58', '2020-07-02 10:48:58');
INSERT INTO `sys_dict_detail` VALUES (214, 30, '23', '随时还', 9, 'admin', 'admin', '2020-07-02 10:49:11', '2020-07-02 10:49:11');
INSERT INTO `sys_dict_detail` VALUES (215, 30, '29', '其他类型非分期还款', 10, 'admin', 'admin', '2020-07-02 10:49:20', '2020-07-02 10:49:20');
INSERT INTO `sys_dict_detail` VALUES (216, 30, '31', '按期结息，到期还本', 11, 'admin', 'admin', '2020-07-02 10:49:28', '2020-07-02 10:49:28');
INSERT INTO `sys_dict_detail` VALUES (217, 30, '32', '按期结息，自由还本', 12, 'admin', 'admin', '2020-07-02 10:49:36', '2020-07-02 10:49:36');
INSERT INTO `sys_dict_detail` VALUES (218, 30, '33', '按期计算还本付息', 13, 'admin', 'admin', '2020-07-02 10:49:47', '2020-07-02 10:49:47');
INSERT INTO `sys_dict_detail` VALUES (219, 30, '39', '循环贷款下其他还款方式', 14, 'admin', 'admin', '2020-07-02 10:49:57', '2020-07-02 10:49:57');
INSERT INTO `sys_dict_detail` VALUES (220, 30, '90', '汇总报送，不区分还款方式', 15, 'admin', 'admin', '2020-07-02 10:50:07', '2020-07-02 10:50:07');
INSERT INTO `sys_dict_detail` VALUES (221, 31, '01', '日', 1, 'admin', 'admin', '2020-07-02 10:50:55', '2020-07-02 10:50:55');
INSERT INTO `sys_dict_detail` VALUES (222, 31, '02', '周', 2, 'admin', 'admin', '2020-07-02 10:51:03', '2020-07-02 10:51:13');
INSERT INTO `sys_dict_detail` VALUES (223, 31, '03', '月', 3, 'admin', 'admin', '2020-07-02 10:51:21', '2020-07-02 10:51:21');
INSERT INTO `sys_dict_detail` VALUES (224, 31, '04', '季', 4, 'admin', 'admin', '2020-07-02 10:51:35', '2020-07-02 10:51:35');
INSERT INTO `sys_dict_detail` VALUES (225, 31, '05', '半年', 5, 'admin', 'admin', '2020-07-02 10:51:44', '2020-07-02 10:52:01');
INSERT INTO `sys_dict_detail` VALUES (226, 31, '06', '年', 6, 'admin', 'admin', '2020-07-02 10:52:17', '2020-07-02 10:52:17');
INSERT INTO `sys_dict_detail` VALUES (227, 31, '07', '一次性', 7, 'admin', 'admin', '2020-07-02 10:52:30', '2020-07-02 10:52:30');
INSERT INTO `sys_dict_detail` VALUES (228, 31, '08', '不定期', 8, 'admin', 'admin', '2020-07-02 10:52:45', '2020-07-02 10:52:45');
INSERT INTO `sys_dict_detail` VALUES (229, 31, '12', '旬', 9, 'admin', 'admin', '2020-07-02 10:52:59', '2020-07-02 10:52:59');
INSERT INTO `sys_dict_detail` VALUES (230, 31, '13', '双周', 10, 'admin', 'admin', '2020-07-02 10:53:11', '2020-07-02 10:53:11');
INSERT INTO `sys_dict_detail` VALUES (231, 31, '14', '双月', 11, 'admin', 'admin', '2020-07-02 10:53:21', '2020-07-02 10:53:21');
INSERT INTO `sys_dict_detail` VALUES (232, 31, '99', '其他', 12, 'admin', 'admin', '2020-07-02 10:53:31', '2020-07-02 10:53:31');
INSERT INTO `sys_dict_detail` VALUES (233, 32, '1', '质押', 1, 'admin', 'admin', '2020-07-02 11:14:57', '2020-07-02 11:14:57');
INSERT INTO `sys_dict_detail` VALUES (234, 32, '2', '抵押', 2, 'admin', 'admin', '2020-07-02 11:15:05', '2020-07-02 11:15:05');
INSERT INTO `sys_dict_detail` VALUES (235, 32, '3', '保证', 3, 'admin', 'admin', '2020-07-02 11:15:12', '2020-07-02 11:15:12');
INSERT INTO `sys_dict_detail` VALUES (236, 32, '4', '信用/免担保', 4, 'admin', 'admin', '2020-07-02 11:15:20', '2020-07-02 11:15:20');
INSERT INTO `sys_dict_detail` VALUES (237, 32, '5', '组合(含保证)', 5, 'admin', 'admin', '2020-07-02 11:15:29', '2020-07-02 11:15:29');
INSERT INTO `sys_dict_detail` VALUES (238, 32, '6', '组合（不含保证）', 6, 'admin', 'admin', '2020-07-02 11:15:46', '2020-07-02 11:15:46');
INSERT INTO `sys_dict_detail` VALUES (239, 32, '7', '农户联保', 7, 'admin', 'admin', '2020-07-02 11:15:54', '2020-07-02 11:15:54');
INSERT INTO `sys_dict_detail` VALUES (240, 33, '0', '无', 1, 'admin', 'admin', '2020-07-02 11:16:09', '2020-07-02 11:16:09');
INSERT INTO `sys_dict_detail` VALUES (241, 33, '1', '保证金', 2, 'admin', 'admin', '2020-07-02 11:16:17', '2020-07-02 11:16:17');
INSERT INTO `sys_dict_detail` VALUES (242, 33, '9', '其他', 3, 'admin', 'admin', '2020-07-02 11:16:25', '2020-07-02 11:16:25');
INSERT INTO `sys_dict_detail` VALUES (243, 34, '1', '自营', 1, 'admin', 'admin', '2020-07-02 11:18:15', '2020-07-02 11:18:15');
INSERT INTO `sys_dict_detail` VALUES (244, 34, '2', '委托', 2, 'admin', 'admin', '2020-07-02 11:18:23', '2020-07-02 11:18:23');
INSERT INTO `sys_dict_detail` VALUES (245, 34, '21', '政府部门委托', 3, 'admin', 'admin', '2020-07-02 11:18:42', '2020-07-02 11:18:42');
INSERT INTO `sys_dict_detail` VALUES (246, 34, '22', '企事业单位委托', 4, 'admin', 'admin', '2020-07-02 11:18:50', '2020-07-02 11:18:50');
INSERT INTO `sys_dict_detail` VALUES (247, 34, '23', '个人委托', 5, 'admin', 'admin', '2020-07-02 11:19:00', '2020-07-02 11:19:00');
INSERT INTO `sys_dict_detail` VALUES (248, 34, '24', '公积金管理中心的委托', 6, 'admin', 'admin', '2020-07-02 11:19:08', '2020-07-02 11:19:08');
INSERT INTO `sys_dict_detail` VALUES (249, 34, '4', '信托', 7, 'admin', 'admin', '2020-07-02 11:19:16', '2020-07-02 11:19:16');
INSERT INTO `sys_dict_detail` VALUES (250, 34, '8', '信托', 8, 'admin', 'admin', '2020-07-02 11:19:27', '2020-07-02 11:19:27');
INSERT INTO `sys_dict_detail` VALUES (251, 35, '1', '新增', 1, 'admin', 'admin', '2020-07-02 11:19:57', '2020-07-02 11:19:57');
INSERT INTO `sys_dict_detail` VALUES (252, 35, '5', '其他机构转入', 2, 'admin', 'admin', '2020-07-02 11:20:06', '2020-07-02 11:20:06');
INSERT INTO `sys_dict_detail` VALUES (253, 35, '9', '其他', 3, 'admin', 'admin', '2020-07-02 11:20:15', '2020-07-02 11:20:15');
INSERT INTO `sys_dict_detail` VALUES (254, 36, '01', '是', 1, 'admin', 'admin', '2020-07-02 11:20:48', '2020-07-02 11:20:48');
INSERT INTO `sys_dict_detail` VALUES (255, 36, '02', '否', 2, 'admin', 'admin', '2020-07-02 11:20:57', '2020-07-02 11:20:57');
INSERT INTO `sys_dict_detail` VALUES (256, 36, '03', '未知', 3, 'admin', 'admin', '2020-07-02 11:21:08', '2020-07-02 11:21:08');
INSERT INTO `sys_dict_detail` VALUES (257, 36, '04', '未发布差别化住房信贷政策', 4, 'admin', 'admin', '2020-07-02 11:21:19', '2020-07-02 11:21:19');
INSERT INTO `sys_dict_detail` VALUES (258, 37, '1', '共同借款人', 1, 'admin', 'admin', '2020-07-02 11:22:41', '2020-07-02 11:22:41');
INSERT INTO `sys_dict_detail` VALUES (259, 37, '2', '保证人', 2, 'admin', 'admin', '2020-07-02 11:22:53', '2020-07-02 11:22:53');
INSERT INTO `sys_dict_detail` VALUES (260, 37, '9', '其他', 3, 'admin', 'admin', '2020-07-02 11:23:00', '2020-07-02 11:23:00');
INSERT INTO `sys_dict_detail` VALUES (261, 38, '0', '单人保证/多人分保', 1, 'admin', 'admin', '2020-07-02 11:23:29', '2020-07-02 11:23:29');
INSERT INTO `sys_dict_detail` VALUES (262, 38, '1', '联保', 2, 'admin', 'admin', '2020-07-02 11:23:43', '2020-07-02 11:23:43');
INSERT INTO `sys_dict_detail` VALUES (263, 39, '1', '正常', 1, 'admin', 'admin', '2020-07-02 11:24:25', '2020-07-02 11:24:25');
INSERT INTO `sys_dict_detail` VALUES (264, 39, '2', '逾期', 2, 'admin', 'admin', '2020-07-02 11:24:33', '2020-07-02 11:24:33');
INSERT INTO `sys_dict_detail` VALUES (265, 39, '3', '关闭', 3, 'admin', 'admin', '2020-07-02 11:24:48', '2020-07-02 11:24:48');
INSERT INTO `sys_dict_detail` VALUES (266, 39, '41', '呆账（进入核销认定程序，等待核销）', 4, 'admin', 'admin', '2020-07-02 11:24:55', '2020-07-02 11:24:55');
INSERT INTO `sys_dict_detail` VALUES (267, 39, '42', '呆账（已核销）', 5, 'admin', 'admin', '2020-07-02 11:25:05', '2020-07-02 11:25:05');
INSERT INTO `sys_dict_detail` VALUES (268, 39, '6', '担保物不足', 6, 'admin', 'admin', '2020-07-02 11:25:14', '2020-07-02 11:25:14');
INSERT INTO `sys_dict_detail` VALUES (269, 39, '8', '司法追偿', 7, 'admin', 'admin', '2020-07-02 11:25:25', '2020-07-02 11:25:25');
INSERT INTO `sys_dict_detail` VALUES (270, 40, '1', '正常', 1, 'admin', 'admin', '2020-07-02 11:27:37', '2020-07-02 11:27:37');
INSERT INTO `sys_dict_detail` VALUES (271, 40, '2', '关注', 2, 'admin', 'admin', '2020-07-02 11:27:45', '2020-07-02 11:27:45');
INSERT INTO `sys_dict_detail` VALUES (272, 40, '3', '次级', 3, 'admin', 'admin', '2020-07-02 11:27:53', '2020-07-02 11:27:53');
INSERT INTO `sys_dict_detail` VALUES (273, 40, '4', '可疑', 4, 'admin', 'admin', '2020-07-02 11:28:02', '2020-07-02 11:28:02');
INSERT INTO `sys_dict_detail` VALUES (274, 40, '5', '损失', 5, 'admin', 'admin', '2020-07-02 11:28:13', '2020-07-02 11:28:13');
INSERT INTO `sys_dict_detail` VALUES (275, 40, '9', '未分类', 6, 'admin', 'admin', '2020-07-02 11:28:21', '2020-07-02 11:28:21');
INSERT INTO `sys_dict_detail` VALUES (276, 41, 'N', '正常还款', 1, 'admin', 'admin', '2020-07-02 11:29:45', '2020-07-02 11:29:45');
INSERT INTO `sys_dict_detail` VALUES (277, 41, 'D', '担保人代还', 2, 'admin', 'admin', '2020-07-02 11:29:53', '2020-07-02 11:29:53');
INSERT INTO `sys_dict_detail` VALUES (278, 41, '*', '当月不需要还款且之前没有拖欠', 0, 'admin', 'admin', '2020-07-02 11:30:07', '2020-07-02 11:30:07');
INSERT INTO `sys_dict_detail` VALUES (279, 41, 'Z', '以资抵债', 3, 'admin', 'admin', '2020-07-02 11:30:16', '2020-07-02 11:30:16');
INSERT INTO `sys_dict_detail` VALUES (280, 41, 'M', '约定还款日后月底前还款', 4, 'admin', 'admin', '2020-07-02 11:30:26', '2020-07-02 11:30:26');
INSERT INTO `sys_dict_detail` VALUES (281, 41, '1', '逾期 1-30 天', 5, 'admin', 'admin', '2020-07-02 11:30:38', '2020-07-02 11:30:38');
INSERT INTO `sys_dict_detail` VALUES (282, 41, '2', '逾期 31-60 天', 6, 'admin', 'admin', '2020-07-02 11:30:45', '2020-07-02 11:30:45');
INSERT INTO `sys_dict_detail` VALUES (283, 41, '3', '逾期 61-90 天', 7, 'admin', 'admin', '2020-07-02 11:30:54', '2020-07-02 11:30:54');
INSERT INTO `sys_dict_detail` VALUES (284, 41, '4', '逾期 91-120 天', 8, 'admin', 'admin', '2020-07-02 11:31:08', '2020-07-02 11:31:08');
INSERT INTO `sys_dict_detail` VALUES (285, 41, '5', '逾期 121-150 天', 9, 'admin', 'admin', '2020-07-02 11:31:25', '2020-07-02 11:31:25');
INSERT INTO `sys_dict_detail` VALUES (286, 41, '6', '逾期 121-150 天', 10, 'admin', 'admin', '2020-07-02 11:31:37', '2020-07-02 11:31:37');
INSERT INTO `sys_dict_detail` VALUES (287, 41, '7', '逾期 180 天以上', 11, 'admin', 'admin', '2020-07-02 11:31:46', '2020-07-02 11:31:46');
INSERT INTO `sys_dict_detail` VALUES (288, 41, 'B', '逾期 180 天以上', 12, 'admin', 'admin', '2020-07-02 11:31:55', '2020-07-02 11:31:55');
INSERT INTO `sys_dict_detail` VALUES (289, 41, 'C', '结清', 13, 'admin', 'admin', '2020-07-02 11:32:07', '2020-07-02 11:32:07');
INSERT INTO `sys_dict_detail` VALUES (290, 41, 'G', '结束', 14, 'admin', 'admin', '2020-07-02 11:32:15', '2020-07-02 11:32:15');
INSERT INTO `sys_dict_detail` VALUES (291, 41, '#', '未知', 15, 'admin', 'admin', '2020-07-02 11:32:25', '2020-07-02 11:32:25');
INSERT INTO `sys_dict_detail` VALUES (292, 42, '1', '展期', 1, 'admin', 'admin', '2020-07-02 11:34:44', '2020-07-02 11:34:44');
INSERT INTO `sys_dict_detail` VALUES (293, 42, '2', '担保人（第三方）代偿', 2, 'admin', 'admin', '2020-07-02 11:34:51', '2020-07-02 11:34:51');
INSERT INTO `sys_dict_detail` VALUES (294, 42, '3', '以资抵债', 3, 'admin', 'admin', '2020-07-02 11:35:01', '2020-07-02 11:35:01');
INSERT INTO `sys_dict_detail` VALUES (295, 42, '4', '提前还款', 4, 'admin', 'admin', '2020-07-02 11:35:12', '2020-07-02 11:35:12');
INSERT INTO `sys_dict_detail` VALUES (296, 42, '5', '提前结清', 5, 'admin', 'admin', '2020-07-02 11:35:20', '2020-07-02 11:35:20');
INSERT INTO `sys_dict_detail` VALUES (297, 42, '8', '司法追偿', 6, 'admin', 'admin', '2020-07-02 11:35:29', '2020-07-02 11:35:29');
INSERT INTO `sys_dict_detail` VALUES (298, 42, '11', '债务减免', 7, 'admin', 'admin', '2020-07-02 11:35:39', '2020-07-02 11:35:39');
INSERT INTO `sys_dict_detail` VALUES (299, 42, '12', '资产剥离', 8, 'admin', 'admin', '2020-07-02 11:35:47', '2020-07-02 11:35:47');
INSERT INTO `sys_dict_detail` VALUES (300, 42, '13', '资产转让', 9, 'admin', 'admin', '2020-07-02 11:35:56', '2020-07-02 11:36:04');
INSERT INTO `sys_dict_detail` VALUES (301, 42, '14', '信用卡个性化分期', 10, 'admin', 'admin', '2020-07-02 11:36:13', '2020-07-02 11:36:13');
INSERT INTO `sys_dict_detail` VALUES (302, 42, '15', '核销', 11, 'admin', 'admin', '2020-07-02 11:36:27', '2020-07-02 11:36:27');
INSERT INTO `sys_dict_detail` VALUES (303, 42, '16', '银行主动延期', 12, 'admin', 'admin', '2020-07-02 11:36:37', '2020-07-02 11:36:37');
INSERT INTO `sys_dict_detail` VALUES (304, 42, '17', '强制平仓', 13, 'admin', 'admin', '2020-07-02 11:36:48', '2020-07-02 11:36:48');
INSERT INTO `sys_dict_detail` VALUES (305, 43, '10', '授信开始', 1, 'admin', 'admin', '2020-07-02 11:39:55', '2020-07-02 11:39:55');
INSERT INTO `sys_dict_detail` VALUES (306, 43, '20', '授信到期/失效', 2, 'admin', 'admin', '2020-07-02 11:41:06', '2020-07-02 11:41:06');
INSERT INTO `sys_dict_detail` VALUES (307, 43, '30', '额度调整', 3, 'admin', 'admin', '2020-07-02 11:41:18', '2020-07-02 11:41:18');
INSERT INTO `sys_dict_detail` VALUES (308, 44, '10', '循环贷款额度', 1, 'admin', 'admin', '2020-07-02 11:41:51', '2020-07-02 11:41:51');
INSERT INTO `sys_dict_detail` VALUES (309, 44, '20', '非循环贷款额度', 2, 'admin', 'admin', '2020-07-02 11:41:59', '2020-07-02 11:41:59');
INSERT INTO `sys_dict_detail` VALUES (310, 44, '30', '信用卡共享额度', 3, 'admin', 'admin', '2020-07-02 11:42:08', '2020-07-02 11:42:08');
INSERT INTO `sys_dict_detail` VALUES (311, 44, '31', '信用卡独立额度', 4, 'admin', 'admin', '2020-07-02 11:42:16', '2020-07-02 11:42:16');
INSERT INTO `sys_dict_detail` VALUES (312, 45, '11', '信用卡因调整账单日本月不出单', 1, 'admin', 'admin', '2020-07-02 11:43:27', '2020-07-02 11:43:27');
INSERT INTO `sys_dict_detail` VALUES (313, 45, '12', '已注销信用卡账户重启', 2, 'admin', 'admin', '2020-07-02 11:43:35', '2020-07-02 11:43:35');
INSERT INTO `sys_dict_detail` VALUES (314, 45, '21', '转出', 3, 'admin', 'admin', '2020-07-02 11:43:48', '2020-07-02 11:43:48');
INSERT INTO `sys_dict_detail` VALUES (315, 46, '0', '无效', 1, 'admin', 'admin', '2020-07-02 11:44:20', '2020-07-02 11:44:20');
INSERT INTO `sys_dict_detail` VALUES (316, 46, '1', '有效', 2, 'admin', 'admin', '2020-07-02 11:44:29', '2020-07-02 11:44:29');
INSERT INTO `sys_dict_detail` VALUES (317, 47, 'B', '基础段', 1, 'admin', 'admin', '2020-07-02 11:45:37', '2020-07-02 11:45:37');
INSERT INTO `sys_dict_detail` VALUES (318, 47, 'C', '基本信息段', 2, 'admin', 'admin', '2020-07-02 11:45:44', '2020-07-02 11:45:44');
INSERT INTO `sys_dict_detail` VALUES (319, 47, 'D', '相关还款责任人段', 3, 'admin', 'admin', '2020-07-02 11:45:53', '2020-07-02 11:45:53');
INSERT INTO `sys_dict_detail` VALUES (320, 47, 'E', '抵质押物信息段', 4, 'admin', 'admin', '2020-07-02 11:46:04', '2020-07-02 11:46:04');
INSERT INTO `sys_dict_detail` VALUES (321, 47, 'F', '授信额度信息段', 5, 'admin', 'admin', '2020-07-02 11:46:13', '2020-07-02 11:46:13');
INSERT INTO `sys_dict_detail` VALUES (322, 47, 'G', '初始债权说明段', 6, 'admin', 'admin', '2020-07-02 11:46:23', '2020-07-02 11:46:23');
INSERT INTO `sys_dict_detail` VALUES (323, 47, 'H', '月度表现信息段', 7, 'admin', 'admin', '2020-07-02 11:46:30', '2020-07-02 11:46:30');
INSERT INTO `sys_dict_detail` VALUES (324, 47, 'I', '大额专项分期信息段', 8, 'admin', 'admin', '2020-07-02 11:46:37', '2020-07-02 11:46:37');
INSERT INTO `sys_dict_detail` VALUES (325, 47, 'J', '非月度表现信息段', 10, 'admin', 'admin', '2020-07-02 11:46:49', '2020-07-02 11:46:49');
INSERT INTO `sys_dict_detail` VALUES (326, 47, 'K', '特殊交易说明段', 11, 'admin', 'admin', '2020-07-02 11:47:02', '2020-07-02 11:47:02');
INSERT INTO `sys_dict_detail` VALUES (327, 48, 'B', '基础段', 1, 'admin', 'admin', '2020-07-02 11:48:18', '2020-07-02 11:48:18');
INSERT INTO `sys_dict_detail` VALUES (328, 48, 'C', '共同受信人信息段', 2, 'admin', 'admin', '2020-07-02 11:48:25', '2020-07-02 11:48:25');
INSERT INTO `sys_dict_detail` VALUES (329, 48, 'D', '额度信息段', 3, 'admin', 'admin', '2020-07-02 11:48:33', '2020-07-02 11:48:33');

SET FOREIGN_KEY_CHECKS = 1;
