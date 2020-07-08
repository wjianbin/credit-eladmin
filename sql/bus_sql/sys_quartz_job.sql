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

 Date: 08/07/2020 17:09:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_quartz_job`;
CREATE TABLE `sys_quartz_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bean_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Spring Bean名称',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'cron 表达式',
  `is_pause` bit(1) NULL DEFAULT NULL COMMENT '状态：1暂停、0启用',
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `method_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方法名称',
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `person_in_charge` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报警邮箱',
  `sub_task` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子任务ID',
  `pause_after_failure` bit(1) NULL DEFAULT NULL COMMENT '任务失败后是否暂停',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`job_id`) USING BTREE,
  INDEX `inx_is_pause`(`is_pause`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_quartz_job
-- ----------------------------
INSERT INTO `sys_quartz_job` VALUES (2, 'testTask', '0/5 * * * * ?', b'1', '测试1', 'run1', 'test', '带参测试，多参使用json', '测试', NULL, NULL, NULL, NULL, 'admin', '2019-08-22 14:08:29', '2020-05-05 17:26:19');
INSERT INTO `sys_quartz_job` VALUES (3, 'testTask', '0/5 * * * * ?', b'1', '测试', 'run', '', '不带参测试', 'Zheng Jie', '', '2,6', b'1', NULL, 'admin', '2019-09-26 16:44:39', '2020-07-03 11:16:06');
INSERT INTO `sys_quartz_job` VALUES (5, 'Test', '0/5 * * * * ?', b'1', '任务告警测试', 'run', NULL, '测试', 'test', '', NULL, b'1', 'admin', 'admin', '2020-05-05 20:32:41', '2020-05-05 20:36:13');
INSERT INTO `sys_quartz_job` VALUES (6, 'testTask', '0/5 * * * * ?', b'1', '测试3', 'run2', NULL, '测试3', 'Zheng Jie', '', NULL, b'1', 'admin', 'admin', '2020-05-05 20:35:41', '2020-05-05 20:36:07');
INSERT INTO `sys_quartz_job` VALUES (7, 'customerBaseInfoTask', '0/50 * * * * ?', b'1', '测试新增个人用户基本信息', 'runNewData', NULL, '测试新增个人用户基本信息', '我', NULL, NULL, b'1', 'admin', 'admin', '2020-07-03 11:41:32', '2020-07-08 15:00:49');
INSERT INTO `sys_quartz_job` VALUES (8, 'systemCommonTask', '0 0 0 */1 * ?', b'0', '系统切日任务', 'run', NULL, '系统切日任务', '王', NULL, NULL, b'1', 'admin', 'admin', '2020-07-07 17:02:39', '2020-07-07 17:02:39');

-- ----------------------------
-- Table structure for sys_quartz_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_quartz_log`;
CREATE TABLE `sys_quartz_log`  (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bean_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exception_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_success` bit(1) NULL DEFAULT NULL,
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_quartz_log
-- ----------------------------
INSERT INTO `sys_quartz_log` VALUES (1, 'testTask', '2020-07-03 11:15:31', '0/5 * * * * ?', NULL, b'1', '测试1', 'run1', 'test', 1);
INSERT INTO `sys_quartz_log` VALUES (2, 'testTask', '2020-07-03 11:15:31', '0/5 * * * * ?', NULL, b'1', '测试', 'run', '', 1);
INSERT INTO `sys_quartz_log` VALUES (3, 'testTask', '2020-07-03 11:15:36', '0/5 * * * * ?', NULL, b'1', '测试3', 'run2', NULL, 1);
INSERT INTO `sys_quartz_log` VALUES (4, 'testTask', '2020-07-03 11:16:02', '0/5 * * * * ?', NULL, b'1', '测试', 'run', '', 0);
INSERT INTO `sys_quartz_log` VALUES (5, 'testTask', '2020-07-03 11:16:02', '0/5 * * * * ?', NULL, b'1', '测试1', 'run1', 'test', 0);
INSERT INTO `sys_quartz_log` VALUES (6, 'testTask', '2020-07-03 11:16:05', '0/5 * * * * ?', NULL, b'1', '测试', 'run', '', 1);
INSERT INTO `sys_quartz_log` VALUES (7, 'testTask', '2020-07-03 11:16:05', '0/5 * * * * ?', NULL, b'1', '测试1', 'run1', 'test', 0);
INSERT INTO `sys_quartz_log` VALUES (8, 'testTask', '2020-07-03 11:16:07', '0/5 * * * * ?', NULL, b'1', '测试3', 'run2', NULL, 1);
INSERT INTO `sys_quartz_log` VALUES (9, 'testTask', '2020-07-03 11:16:10', '0/5 * * * * ?', NULL, b'1', '测试3', 'run2', NULL, 1);
INSERT INTO `sys_quartz_log` VALUES (10, 'TestCreditTask', '2020-07-03 11:45:15', '0/50 * * * * ?', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'TestCreditTask\' available\r\n	at org.springframework.beans.factory.support.DefaultListableBeanFactory.getBeanDefinition(DefaultListableBeanFactory.java:772)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getMergedLocalBeanDefinition(AbstractBeanFactory.java:1212)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:294)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)\r\n	at org.springframework.context.support.AbstractApplicationContext.getBean(AbstractApplicationContext.java:1083)\r\n	at me.zhengjie.utils.SpringContextHolder.getBean(SpringContextHolder.java:59)\r\n	at me.zhengjie.modules.quartz.utils.QuartzRunnable.<init>(QuartzRunnable.java:38)\r\n	at me.zhengjie.modules.quartz.utils.ExecutionJob.executeInternal(ExecutionJob.java:70)\r\n	at org.springframework.scheduling.quartz.QuartzJobBean.execute(QuartzJobBean.java:75)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', b'0', '测试征信报送任务', 'run', NULL, 5);
INSERT INTO `sys_quartz_log` VALUES (11, 'testCreditTask', '2020-07-03 11:46:16', '0/50 * * * * ?', 'java.util.concurrent.ExecutionException: java.lang.reflect.InvocationTargetException\r\n	at java.util.concurrent.FutureTask.report(FutureTask.java:122)\r\n	at java.util.concurrent.FutureTask.get(FutureTask.java:192)\r\n	at me.zhengjie.modules.quartz.utils.ExecutionJob.executeInternal(ExecutionJob.java:72)\r\n	at org.springframework.scheduling.quartz.QuartzJobBean.execute(QuartzJobBean.java:75)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at me.zhengjie.modules.quartz.utils.QuartzRunnable.call(QuartzRunnable.java:54)\r\n	at java.util.concurrent.FutureTask.run(FutureTask.java:266)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: java.lang.NullPointerException\r\n	at me.zhengjie.modules.custominfo.util.CreditInfoUtil.build(CreditInfoUtil.java:120)\r\n	at me.zhengjie.modules.custominfo.util.CreditInfoUtil.downloadFile(CreditInfoUtil.java:42)\r\n	at me.zhengjie.modules.custominfo.service.impl.BusCustomerBaseInfoServiceImpl.downloadCreditFile(BusCustomerBaseInfoServiceImpl.java:200)\r\n	at me.zhengjie.modules.custominfo.service.impl.BusCustomerBaseInfoServiceImpl$$FastClassBySpringCGLIB$$7cf71c67.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:684)\r\n	at me.zhengjie.modules.custominfo.service.impl.BusCustomerBaseInfoServiceImpl$$EnhancerBySpringCGLIB$$f085cfed.downloadCreditFile(<generated>)\r\n	at me.zhengjie.modules.quartz.task.TestCreditTask.run(TestCreditTask.java:28)\r\n	... 9 more\r\n', b'0', '测试征信报送任务', 'run', NULL, 13);
INSERT INTO `sys_quartz_log` VALUES (12, 'testCreditTask', '2020-07-03 11:52:19', '0/50 * * * * ?', 'java.util.concurrent.ExecutionException: java.lang.reflect.InvocationTargetException\r\n	at java.util.concurrent.FutureTask.report(FutureTask.java:122)\r\n	at java.util.concurrent.FutureTask.get(FutureTask.java:192)\r\n	at me.zhengjie.modules.quartz.utils.ExecutionJob.executeInternal(ExecutionJob.java:72)\r\n	at org.springframework.scheduling.quartz.QuartzJobBean.execute(QuartzJobBean.java:75)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at me.zhengjie.modules.quartz.utils.QuartzRunnable.call(QuartzRunnable.java:54)\r\n	at java.util.concurrent.FutureTask.run(FutureTask.java:266)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: java.lang.NullPointerException\r\n	at me.zhengjie.modules.custominfo.util.CreditInfoUtil.build(CreditInfoUtil.java:120)\r\n	at me.zhengjie.modules.custominfo.util.CreditInfoUtil.downloadFile(CreditInfoUtil.java:42)\r\n	at me.zhengjie.modules.custominfo.service.impl.BusCustomerBaseInfoServiceImpl.downloadCreditFile(BusCustomerBaseInfoServiceImpl.java:200)\r\n	at me.zhengjie.modules.custominfo.service.impl.BusCustomerBaseInfoServiceImpl$$FastClassBySpringCGLIB$$7cf71c67.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:684)\r\n	at me.zhengjie.modules.custominfo.service.impl.BusCustomerBaseInfoServiceImpl$$EnhancerBySpringCGLIB$$f085cfed.downloadCreditFile(<generated>)\r\n	at me.zhengjie.modules.quartz.task.TestCreditTask.run(TestCreditTask.java:28)\r\n	... 9 more\r\n', b'0', '测试征信报送任务', 'run', NULL, 229034);
INSERT INTO `sys_quartz_log` VALUES (13, 'testCreditTask', '2020-07-03 11:59:04', '0/50 * * * * ?', NULL, b'1', '测试征信报送任务', 'run', NULL, 79665);
INSERT INTO `sys_quartz_log` VALUES (14, 'systemCommonTask', '2020-07-07 17:02:42', '0 0 0 */1 * ?', NULL, b'1', '系统切日任务', 'run', NULL, 4);
INSERT INTO `sys_quartz_log` VALUES (15, 'systemCommonTask', '2020-07-07 17:08:00', '0 0 0 */1 * ?', NULL, b'1', '系统切日任务', 'run', NULL, 50742);
INSERT INTO `sys_quartz_log` VALUES (16, 'customerBaseInfoTask', '2020-07-08 15:05:28', '0/50 * * * * ?', NULL, b'1', '测试新增个人用户基本信息', 'runNewData', NULL, 131631);

SET FOREIGN_KEY_CHECKS = 1;
