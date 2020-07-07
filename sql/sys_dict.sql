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

 Date: 02/07/2020 11:55:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dict_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据字典' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (1, 'user_status', '用户状态', NULL, NULL, '2019-10-27 20:31:36', NULL);
INSERT INTO `sys_dict` VALUES (4, 'dept_status', '部门状态', NULL, NULL, '2019-10-27 20:31:36', NULL);
INSERT INTO `sys_dict` VALUES (5, 'job_status', '岗位状态', NULL, NULL, '2019-10-27 20:31:36', NULL);
INSERT INTO `sys_dict` VALUES (8, 'IDType', '证件类型', 'admin', 'admin', '2020-06-28 13:49:25', '2020-06-28 13:52:11');
INSERT INTO `sys_dict` VALUES (9, 'RptDateCode', '报告时点 说明代码', 'admin', 'admin', '2020-06-28 13:55:58', '2020-06-28 13:55:58');
INSERT INTO `sys_dict` VALUES (10, 'CustomerType', '客户资料类型', 'admin', 'admin', '2020-06-28 13:56:48', '2020-06-28 13:56:48');
INSERT INTO `sys_dict` VALUES (11, 'Sex', '性别', 'admin', 'admin', '2020-06-28 13:59:55', '2020-06-28 14:01:06');
INSERT INTO `sys_dict` VALUES (12, 'EduLevel', '学历', 'admin', 'admin', '2020-06-28 14:02:23', '2020-06-28 14:02:23');
INSERT INTO `sys_dict` VALUES (13, 'AcaDegree', '学位', 'admin', 'admin', '2020-06-28 14:05:21', '2020-06-28 14:05:21');
INSERT INTO `sys_dict` VALUES (14, 'EmpStatus', '就业状况', 'admin', 'admin', '2020-06-28 14:06:48', '2020-06-28 14:06:48');
INSERT INTO `sys_dict` VALUES (15, 'CpnType', '单位性质', 'admin', 'admin', '2020-06-28 14:11:15', '2020-06-28 14:11:15');
INSERT INTO `sys_dict` VALUES (16, 'Industry', '所属行业', 'admin', 'admin', '2020-06-28 14:25:34', '2020-06-28 14:25:34');
INSERT INTO `sys_dict` VALUES (17, 'Occupation', '职业', 'admin', 'admin', '2020-06-28 14:30:48', '2020-06-28 14:30:48');
INSERT INTO `sys_dict` VALUES (18, 'Title', '职务', 'admin', 'admin', '2020-06-28 14:32:50', '2020-06-28 14:32:50');
INSERT INTO `sys_dict` VALUES (19, 'TechTitle', '职称', 'admin', 'admin', '2020-06-28 14:33:43', '2020-06-28 14:33:43');
INSERT INTO `sys_dict` VALUES (20, 'ResiStatus', '居住状况', 'admin', 'admin', '2020-06-28 14:35:05', '2020-06-28 14:35:05');
INSERT INTO `sys_dict` VALUES (21, 'MariStatus', '婚姻状况', 'admin', 'admin', '2020-06-28 14:38:16', '2020-06-28 14:38:16');
INSERT INTO `sys_dict` VALUES (22, 'FamRel', '家族关系', 'admin', 'admin', '2020-06-28 14:41:52', '2020-06-28 14:41:52');
INSERT INTO `sys_dict` VALUES (23, 'FamRelaAssFlag', '家族关系 有效标志', 'admin', 'admin', '2020-06-28 14:43:18', '2020-06-28 14:43:18');
INSERT INTO `sys_dict` VALUES (24, 'InfRecType', '信息记录类型', 'admin', 'admin', '2020-06-28 14:44:18', '2020-06-28 14:44:18');
INSERT INTO `sys_dict` VALUES (25, 'acc-InfRecType', '个人借贷交易信息相关记录类型代码表', 'admin', 'admin', '2020-07-02 10:30:25', '2020-07-02 10:30:25');
INSERT INTO `sys_dict` VALUES (26, 'AcctType', '个人借贷账户类型代码表', 'admin', 'admin', '2020-07-02 10:34:13', '2020-07-02 10:34:13');
INSERT INTO `sys_dict` VALUES (27, 'acc-RptDateCode', '个人借贷账户报告时点说明代码表', 'admin', 'admin', '2020-07-02 10:36:15', '2020-07-02 10:36:15');
INSERT INTO `sys_dict` VALUES (28, 'BusiLines', '个人借贷交易业务大类代码表', 'admin', 'admin', '2020-07-02 10:38:49', '2020-07-02 10:38:49');
INSERT INTO `sys_dict` VALUES (29, 'BusiDtlLines ', '借贷业务种类细分', 'admin', 'admin', '2020-07-02 10:40:14', '2020-07-02 10:40:14');
INSERT INTO `sys_dict` VALUES (30, 'RepayMode', '还款方式', 'admin', 'admin', '2020-07-02 10:47:21', '2020-07-02 10:47:21');
INSERT INTO `sys_dict` VALUES (31, 'RepayFreqcy', '还款频率', 'admin', 'admin', '2020-07-02 10:50:39', '2020-07-02 10:50:39');
INSERT INTO `sys_dict` VALUES (32, 'GuarMode', '担保方式', 'admin', 'admin', '2020-07-02 11:14:26', '2020-07-02 11:14:26');
INSERT INTO `sys_dict` VALUES (33, 'OthRepyGuarWay', '其他还款保证方式', 'admin', 'admin', '2020-07-02 11:14:39', '2020-07-02 11:14:39');
INSERT INTO `sys_dict` VALUES (34, 'FundSou', '业务经营类型', 'admin', 'admin', '2020-07-02 11:18:02', '2020-07-02 11:18:02');
INSERT INTO `sys_dict` VALUES (35, 'LoanForm', '贷款发放形式', 'admin', 'admin', '2020-07-02 11:19:46', '2020-07-02 11:19:46');
INSERT INTO `sys_dict` VALUES (36, 'FirstHouLoanFlag', '是否为首套住房贷款', 'admin', 'admin', '2020-07-02 11:20:32', '2020-07-02 11:20:32');
INSERT INTO `sys_dict` VALUES (37, 'ArlpType', '还款责任人类型', 'admin', 'admin', '2020-07-02 11:21:53', '2020-07-02 11:21:53');
INSERT INTO `sys_dict` VALUES (38, 'WartySign', '联保标志 ', 'admin', 'admin', '2020-07-02 11:23:18', '2020-07-02 11:23:18');
INSERT INTO `sys_dict` VALUES (39, 'AcctStatus（D1/R4 账户）', '账户状态', 'admin', 'admin', '2020-07-02 11:24:10', '2020-07-02 11:26:04');
INSERT INTO `sys_dict` VALUES (40, 'FiveCate', '五级分类', 'admin', 'admin', '2020-07-02 11:27:28', '2020-07-02 11:27:28');
INSERT INTO `sys_dict` VALUES (41, 'RpyStatus(（D1/R4 账户)', '当前还款状态 ', 'admin', 'admin', '2020-07-02 11:29:30', '2020-07-02 11:32:47');
INSERT INTO `sys_dict` VALUES (42, 'ChanTranType', '特殊交易交易类型', 'admin', 'admin', '2020-07-02 11:34:11', '2020-07-02 11:34:33');
INSERT INTO `sys_dict` VALUES (43, 'InfRecType（个人授信协议）', '个人授信协议报告时点说明代码表', 'admin', 'admin', '2020-07-02 11:39:42', '2020-07-02 11:39:42');
INSERT INTO `sys_dict` VALUES (44, 'ContractCode', '授信协议标识码', 'admin', 'admin', '2020-07-02 11:41:40', '2020-07-02 11:41:40');
INSERT INTO `sys_dict` VALUES (45, 'OpetnType', ' 个人借贷账户特殊事件类型代码表', 'admin', 'admin', '2020-07-02 11:43:18', '2020-07-02 11:43:18');
INSERT INTO `sys_dict` VALUES (46, 'Flag', '生效标志', 'admin', 'admin', '2020-07-02 11:44:10', '2020-07-02 11:44:10');
INSERT INTO `sys_dict` VALUES (47, 'MdfcSgmtCode_acc', '个人借贷信息记录段标代码表', 'admin', 'admin', '2020-07-02 11:45:23', '2020-07-02 11:45:23');
INSERT INTO `sys_dict` VALUES (48, 'MdfcSgmtCode_InfRec', '待更正段段标', 'admin', 'admin', '2020-07-02 11:48:02', '2020-07-02 11:48:02');

SET FOREIGN_KEY_CHECKS = 1;
