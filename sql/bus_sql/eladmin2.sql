/*
Navicat MySQL Data Transfer

Source Server         : localMysql5.7
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : eladmin

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2020-07-07 17:21:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bus_customer_base_info
-- ----------------------------
DROP TABLE IF EXISTS `bus_customer_base_info`;
CREATE TABLE `bus_customer_base_info` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `CustomerId` varchar(64) DEFAULT NULL COMMENT '��ϵͳ����Ŀͻ����',
  `InfRecType` varchar(4) DEFAULT NULL COMMENT '��Ϣ��¼����',
  `Name` varchar(255) DEFAULT NULL COMMENT '����',
  `IDType` int(11) DEFAULT NULL COMMENT '֤������',
  `IDNum` varchar(64) DEFAULT NULL COMMENT '֤������',
  `InfSurcCode` varchar(64) DEFAULT NULL COMMENT '��Ϣ��Դ����',
  `RptDate` date DEFAULT NULL COMMENT '��Ϣ��������',
  `RptDateCode` varchar(64) DEFAULT NULL COMMENT '����ʱ��˵������',
  `Cimoc` varchar(64) DEFAULT NULL COMMENT '�ͻ�����ά����������',
  `CustomerType` varchar(64) DEFAULT NULL COMMENT '�ͻ���������',
  `Sex` int(11) DEFAULT NULL COMMENT '�Ա�',
  `DOB` date DEFAULT NULL COMMENT '��������',
  `Nation` varchar(4) DEFAULT NULL COMMENT '����',
  `HouseAdd` varchar(255) DEFAULT NULL COMMENT '������ַ',
  `HhDist` varchar(24) DEFAULT NULL COMMENT '�������ڵ���������',
  `CellPhone` varchar(14) DEFAULT NULL COMMENT '�ֻ�����',
  `Email` varchar(24) DEFAULT NULL COMMENT '��������',
  `FcsInfoUpDate` date DEFAULT NULL COMMENT '��Ϣ��������',
  `MariStatus` varchar(4) DEFAULT NULL COMMENT '����״��',
  `SpoName` varchar(255) DEFAULT NULL COMMENT '��ż����',
  `SpoIDType` int(11) DEFAULT NULL COMMENT '��ż֤������',
  `SpoIDNum` varchar(64) DEFAULT NULL COMMENT '��ż֤������',
  `SpoTel` varchar(14) DEFAULT NULL COMMENT '��ż��ϵ�绰',
  `SpsCmpyNm` varchar(255) DEFAULT NULL COMMENT '��ż������λ',
  `SpsInfoUpDate` date DEFAULT NULL COMMENT '��Ϣ��������',
  `EduLevel` varchar(4) DEFAULT NULL COMMENT 'ѧ��',
  `AcaDegree` varchar(4) DEFAULT NULL COMMENT 'ѧλ',
  `EduInfoUpDate` date DEFAULT NULL COMMENT '��Ϣ��������',
  `EmpStatus` varchar(4) DEFAULT NULL COMMENT '��ҵ״��',
  `CpnName` varchar(255) DEFAULT NULL COMMENT '��λ����',
  `CpnType` varchar(4) DEFAULT NULL COMMENT '��λ����',
  `Industry` varchar(64) DEFAULT NULL COMMENT '��λ������ҵ',
  `CpnAddr` varchar(255) DEFAULT NULL COMMENT '��λ��ϸ��ַ',
  `CpnPc` varchar(14) DEFAULT NULL COMMENT '��λ���ڵ��ʱ�',
  `CpnDist` varchar(14) DEFAULT NULL COMMENT '��λ���ڵ���������',
  `CpnTEL` varchar(14) DEFAULT NULL COMMENT '��λ�绰',
  `Occupation` varchar(14) DEFAULT NULL COMMENT 'ְҵ',
  `Title` varchar(14) DEFAULT NULL COMMENT 'ְ��',
  `TechTitle` varchar(14) DEFAULT NULL COMMENT 'ְ��',
  `WorkStartDate` date DEFAULT NULL COMMENT '����λ������ʼ���',
  `OctpnInfoUpDate` date DEFAULT NULL COMMENT '��Ϣ��������',
  `ResiStatus` varchar(4) DEFAULT NULL COMMENT '��ס״��',
  `ResiAddr` varchar(255) DEFAULT NULL COMMENT '��ס����ϸ��ַ',
  `ResiPc` varchar(14) DEFAULT NULL COMMENT '��ס���ʱ�',
  `ResiDist` varchar(14) DEFAULT NULL COMMENT '��ס����������',
  `HomeTel` varchar(14) DEFAULT NULL COMMENT 'סլ�绰',
  `ResiInfoUpDate` date DEFAULT NULL COMMENT '��Ϣ��������',
  `MailAddr` varchar(255) DEFAULT NULL COMMENT 'ͨѶ��ַ',
  `MailPc` varchar(14) DEFAULT NULL COMMENT 'ͨѶ���ʱ�',
  `MailDist` varchar(14) DEFAULT NULL COMMENT 'ͨѶ����������',
  `MlgInfoUpDate` date DEFAULT NULL COMMENT '��Ϣ��������',
  `AnnlInc` varchar(14) DEFAULT NULL COMMENT '�Ա�������',
  `TaxIncome` varchar(14) DEFAULT NULL COMMENT '��˰������',
  `IncInfoUpDate` date DEFAULT NULL COMMENT '��Ϣ��������',
  `InsertDate` date DEFAULT NULL COMMENT '����ʱ��',
  `UpdateDate` date DEFAULT NULL COMMENT '更新日期',
  `UploadDate` date DEFAULT NULL COMMENT '上报日期',
  `UploadStatus` int(11) DEFAULT NULL COMMENT '上报状态',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '上报标识',
  `Create_time` datetime DEFAULT NULL COMMENT 'create_time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='���˻�����Ϣ';

-- ----------------------------
-- Records of bus_customer_base_info
-- ----------------------------

-- ----------------------------
-- Table structure for bus_customer_cardinfos
-- ----------------------------
DROP TABLE IF EXISTS `bus_customer_cardinfos`;
CREATE TABLE `bus_customer_cardinfos` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `CustomerId` varchar(64) DEFAULT NULL COMMENT '�ͻ����',
  `InfRecType` varchar(4) DEFAULT NULL COMMENT '��Ϣ��¼����',
  `Name` varchar(120) DEFAULT NULL COMMENT '����',
  `IDType` varchar(4) DEFAULT NULL COMMENT '֤������',
  `IDNum` varchar(24) DEFAULT NULL COMMENT '֤������',
  `OthName` varchar(120) DEFAULT NULL COMMENT '��������',
  `OthIDType` varchar(4) DEFAULT NULL COMMENT '����֤������',
  `OthIDNum` varchar(24) DEFAULT NULL COMMENT '����֤������',
  `OthAssFlg` varchar(4) DEFAULT NULL COMMENT '֤��������ϵ��Ч��־',
  `InfSurcCode` varchar(24) DEFAULT NULL COMMENT '��Ϣ��Դ����',
  `RptDate` datetime DEFAULT NULL COMMENT '��Ϣ��������',
  `UploadStatus` int(11) DEFAULT NULL COMMENT '上报状态',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '上报标识',
  `Create_time` datetime DEFAULT NULL COMMENT 'create_time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bus_customer_cardinfos
-- ----------------------------

-- ----------------------------
-- Table structure for bus_customer_cardpipy
-- ----------------------------
DROP TABLE IF EXISTS `bus_customer_cardpipy`;
CREATE TABLE `bus_customer_cardpipy` (
  `id1` bigint(20) NOT NULL COMMENT 'id',
  `CustomerId` varchar(64) DEFAULT NULL COMMENT '�ͻ����',
  `InfRecType` varchar(4) DEFAULT NULL COMMENT '��Ϣ��¼����',
  `Name` varchar(120) DEFAULT NULL COMMENT '����',
  `IDType` varchar(4) DEFAULT NULL COMMENT '֤������',
  `IDNum` varchar(64) DEFAULT NULL COMMENT '֤������',
  `InfSurcCode` varchar(64) DEFAULT NULL COMMENT '��Ϣ��Դ����',
  `IDEfctDate` date DEFAULT NULL COMMENT '֤����Ч����ʼ����',
  `IDDueDate` date DEFAULT NULL COMMENT '֤����Ч�ڵ�������',
  `IDOrgName` varchar(120) DEFAULT NULL COMMENT '֤��ǩ����������',
  `IDDist` varchar(24) DEFAULT NULL COMMENT '֤��ǩ���������ڵ���������',
  `Cimoc` varchar(24) DEFAULT NULL COMMENT '�ͻ�����ά����������',
  `RptDate` date DEFAULT NULL COMMENT '��Ϣ��������',
  `UploadDate` int(11) DEFAULT NULL COMMENT '�ϱ�״̬�����ϱ���δ�ϱ���',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '�ϱ���ʶ(����������)',
  `Ureate_time` datetime DEFAULT NULL COMMENT 'create_time',
  PRIMARY KEY (`id1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bus_customer_cardpipy
-- ----------------------------

-- ----------------------------
-- Table structure for bus_customer_other_cardinfo
-- ----------------------------
DROP TABLE IF EXISTS `bus_customer_other_cardinfo`;
CREATE TABLE `bus_customer_other_cardinfo` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `CustomerId` varchar(64) DEFAULT NULL COMMENT 'customerId',
  `Alias` varchar(120) DEFAULT NULL COMMENT '����',
  `OthIDType` varchar(4) DEFAULT NULL COMMENT '֤������',
  `OthIDNum` varchar(64) DEFAULT NULL COMMENT '֤������',
  `IDInfoUpDate` date DEFAULT NULL COMMENT '��Ϣ��������',
  `Create_time` datetime DEFAULT NULL COMMENT 'create_time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bus_customer_other_cardinfo
-- ----------------------------

-- ----------------------------
-- Table structure for bus_customer_relationship
-- ----------------------------
DROP TABLE IF EXISTS `bus_customer_relationship`;
CREATE TABLE `bus_customer_relationship` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `CustomerId` varchar(64) DEFAULT NULL COMMENT '�ͻ����',
  `InfRecType` varchar(4) DEFAULT NULL COMMENT '��Ϣ��¼����',
  `Name` varchar(120) DEFAULT NULL COMMENT 'A����',
  `IDType` varchar(4) DEFAULT NULL COMMENT 'A֤������',
  `IDNum` varchar(24) DEFAULT NULL COMMENT 'A֤������',
  `FamMemName` varchar(120) DEFAULT NULL COMMENT 'B ����',
  `FamMemCertType` varchar(4) DEFAULT NULL COMMENT 'B ֤������',
  `FamMemCertNum` varchar(24) DEFAULT NULL COMMENT 'B ֤������',
  `FamRel` varchar(4) DEFAULT NULL COMMENT '�����ϵ',
  `FamRelaAssFlag` varchar(4) DEFAULT NULL COMMENT '�����ϵ��Ч��־',
  `InfSurcCode` varchar(24) DEFAULT NULL COMMENT '��Ϣ��Դ����',
  `RptDate` date DEFAULT NULL COMMENT '��Ϣ��������',
  `UploadStatus` int(11) DEFAULT NULL COMMENT '�ϱ�״̬',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '�ϱ���ʶ',
  `Create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bus_customer_relationship
-- ----------------------------

-- ----------------------------
-- Table structure for bus_del_customer_cardpipy
-- ----------------------------
DROP TABLE IF EXISTS `bus_del_customer_cardpipy`;
CREATE TABLE `bus_del_customer_cardpipy` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `CustomerId` varchar(64) DEFAULT NULL COMMENT '�ͻ����',
  `InfRecType` varchar(4) DEFAULT NULL COMMENT '��Ϣ��¼����',
  `Name` varchar(120) DEFAULT NULL COMMENT '����',
  `IDType` varchar(4) DEFAULT NULL COMMENT '֤������',
  `IDNum` varchar(24) DEFAULT NULL COMMENT '֤������',
  `InfSurcCode` varchar(24) DEFAULT NULL COMMENT '��Ϣ��Դ����',
  `UploadDate` date DEFAULT NULL COMMENT '�ϱ�����',
  `UploadStats` int(11) DEFAULT NULL COMMENT '�ϱ�״̬(�ϱ��ɹ���δ�ϱ�)',
  `Ureate_time` datetime DEFAULT NULL COMMENT 'create_time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bus_del_customer_cardpipy
-- ----------------------------

-- ----------------------------
-- Table structure for bus_del_customer_info
-- ----------------------------
DROP TABLE IF EXISTS `bus_del_customer_info`;
CREATE TABLE `bus_del_customer_info` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `CustomerId` varchar(64) DEFAULT NULL COMMENT '�ͻ����',
  `InfRecType` varchar(4) DEFAULT NULL COMMENT '��Ϣ��¼����',
  `Name` varchar(120) DEFAULT NULL COMMENT '����',
  `IDType` varchar(4) DEFAULT NULL COMMENT '֤������',
  `IDNum` varchar(24) DEFAULT NULL COMMENT '֤������',
  `InfSurcCode` varchar(24) DEFAULT NULL COMMENT '��Ϣ��Դ����',
  `Uploaddate` date DEFAULT NULL COMMENT '�ϱ�����',
  `Status` int(11) DEFAULT NULL COMMENT '�ϱ�״̬',
  `Create_time` datetime DEFAULT NULL COMMENT 'create_time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bus_del_customer_info
-- ----------------------------

-- ----------------------------
-- Table structure for bus_del_inacctdel
-- ----------------------------
DROP TABLE IF EXISTS `bus_del_inacctdel`;
CREATE TABLE `bus_del_inacctdel` (
  `id` varchar(64) NOT NULL,
  `AccLoanId` varchar(64) DEFAULT NULL COMMENT '借据编号',
  `InfRecType` int(11) DEFAULT NULL COMMENT '信息记录类型',
  `DelRecCode` varchar(120) DEFAULT NULL COMMENT '待删除业务标识码',
  `DelSgmtCode` varchar(64) DEFAULT NULL COMMENT '待删除段段标',
  `DelStartDate` varchar(64) DEFAULT NULL COMMENT '待删除起始日期',
  `DelEndDate` varchar(64) DEFAULT NULL COMMENT '待删除结束日期',
  `UploadStatus` int(11) DEFAULT NULL COMMENT '上报状态',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '上报标识',
  `create_time` datetime DEFAULT NULL COMMENT 'create_time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人借贷账户按段删除请求记录';

-- ----------------------------
-- Records of bus_del_inacctdel
-- ----------------------------

-- ----------------------------
-- Table structure for bus_del_inacctentdel
-- ----------------------------
DROP TABLE IF EXISTS `bus_del_inacctentdel`;
CREATE TABLE `bus_del_inacctentdel` (
  `id` bigint(20) NOT NULL,
  `AccLoanId` varchar(64) DEFAULT NULL COMMENT '借据编号',
  `InfRecType` int(11) DEFAULT NULL COMMENT '信息记录类型',
  `DelRecCode` varchar(64) DEFAULT NULL COMMENT '待删除业务标识码',
  `UploadStatus` int(11) DEFAULT NULL COMMENT '上报状态',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '上报标识',
  `create_time` datetime DEFAULT NULL COMMENT 'create_time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人借贷账户整笔删除请求记录';

-- ----------------------------
-- Records of bus_del_inacctentdel
-- ----------------------------

-- ----------------------------
-- Table structure for bus_del_inctrctdel
-- ----------------------------
DROP TABLE IF EXISTS `bus_del_inctrctdel`;
CREATE TABLE `bus_del_inctrctdel` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `InCtrctInfID` varchar(64) DEFAULT NULL COMMENT '授信协议编号',
  `InfRecType` int(11) DEFAULT NULL COMMENT '信息记录类型',
  `DelRecCode` varchar(120) DEFAULT NULL COMMENT '待删除业务标识码',
  `DelSgmtCode` varchar(4) DEFAULT NULL COMMENT '待删除段段标',
  `DelStartDate` varchar(64) DEFAULT NULL COMMENT '待删除起始日期',
  `DelEndDate` varchar(64) DEFAULT NULL COMMENT '待删除结束日期',
  `UploadStatus` int(11) DEFAULT NULL COMMENT '上报状态',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '上报标识',
  `create_time` datetime DEFAULT NULL COMMENT 'create_time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人授信协议按段删除请求记录';

-- ----------------------------
-- Records of bus_del_inctrctdel
-- ----------------------------

-- ----------------------------
-- Table structure for bus_del_inctrctentdel
-- ----------------------------
DROP TABLE IF EXISTS `bus_del_inctrctentdel`;
CREATE TABLE `bus_del_inctrctentdel` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `InCtrctInfID` varchar(64) DEFAULT NULL COMMENT '授信协议编号',
  `InfRecTpTp` int(11) DEFAULT NULL COMMENT '信息记录类型',
  `DelRecCode` varchar(120) DEFAULT NULL COMMENT '待删除业务标识码',
  `UploadStatus` int(11) DEFAULT NULL COMMENT '上报状态',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '上报标识',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人授信协议整笔删除请求记录';

-- ----------------------------
-- Records of bus_del_inctrctentdel
-- ----------------------------

-- ----------------------------
-- Table structure for bus_inacctinf
-- ----------------------------
DROP TABLE IF EXISTS `bus_inacctinf`;
CREATE TABLE `bus_inacctinf` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `AccLoanId` varchar(64) DEFAULT NULL COMMENT '借据编号',
  `status` int(11) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  `UploadTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人借贷账户记录';

-- ----------------------------
-- Records of bus_inacctinf
-- ----------------------------

-- ----------------------------
-- Table structure for bus_inacctinf_acctbsinfsgmt
-- ----------------------------
DROP TABLE IF EXISTS `bus_inacctinf_acctbsinfsgmt`;
CREATE TABLE `bus_inacctinf_acctbsinfsgmt` (
  `id` bigint(20) NOT NULL,
  `AccLoanId` varchar(64) DEFAULT NULL COMMENT '借据编号',
  `bus_id` bigint(20) DEFAULT NULL COMMENT '对应业务操作的主键',
  `BusiLines` int(11) DEFAULT NULL COMMENT '借贷业务大类',
  `BusiDtlLines` int(11) DEFAULT NULL COMMENT '借贷业务种类细分',
  `OpenDate` varchar(64) DEFAULT NULL COMMENT '开户日期',
  `Cy` varchar(18) DEFAULT NULL COMMENT '币种',
  `AcctCredLine` decimal(18,0) DEFAULT NULL COMMENT '信用额度',
  `LoanAmt` decimal(18,0) DEFAULT NULL COMMENT '借款金额',
  `Flag` int(11) DEFAULT NULL COMMENT '分次放款标志',
  `DueDate` varchar(64) DEFAULT NULL COMMENT '到期日期',
  `RepayMode` int(11) DEFAULT NULL COMMENT '还款方式',
  `RepayFreqcy` varchar(8) DEFAULT NULL COMMENT '还款频率',
  `RepayPrd` int(11) DEFAULT NULL COMMENT '还款期数',
  `ApplyBusiDist` varchar(15) DEFAULT NULL COMMENT '业务申请地行政区划代码',
  `GuarMode` int(11) DEFAULT NULL COMMENT '担保方式',
  `OthRepyGuarWay` int(11) DEFAULT NULL COMMENT '其他还款保证方式',
  `AssetTrandFlag` int(11) DEFAULT NULL COMMENT '资产转让标志',
  `FundSou` int(11) DEFAULT NULL COMMENT '业务经营类型',
  `LoanForm` int(11) DEFAULT NULL COMMENT '贷款发放形式',
  `CreditID` varchar(15) DEFAULT NULL COMMENT '卡片标识号',
  `LoanConCode` varchar(120) DEFAULT NULL COMMENT '贷款合同编号',
  `FirstHouLoanFlag` varchar(4) DEFAULT NULL COMMENT '是否为首套住房贷款',
  `UploadStatus` int(11) DEFAULT NULL COMMENT '上报状态',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '上报标识',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基本信息段-AcctBsInfSgmt';

-- ----------------------------
-- Records of bus_inacctinf_acctbsinfsgmt
-- ----------------------------

-- ----------------------------
-- Table structure for bus_inacctinf_acctbssgmt
-- ----------------------------
DROP TABLE IF EXISTS `bus_inacctinf_acctbssgmt`;
CREATE TABLE `bus_inacctinf_acctbssgmt` (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `AccLoanId` varchar(64) DEFAULT NULL COMMENT '借据编号',
  `bus_id` bigint(20) DEFAULT NULL COMMENT '对应业务操作的主键',
  `InfRecType` int(11) DEFAULT NULL COMMENT '信息记录类型',
  `AcctType` int(11) DEFAULT NULL COMMENT '账户类型',
  `AcctCode` varchar(120) DEFAULT NULL COMMENT '个人账户标识码',
  `RptDate` varchar(64) DEFAULT NULL COMMENT '信息报告日期',
  `RptDateCode` varchar(12) DEFAULT NULL COMMENT '报告时点说明代码',
  `Name` varchar(120) DEFAULT NULL COMMENT '姓名',
  `IDType` int(11) DEFAULT NULL COMMENT '证件类型',
  `IDNum` varchar(64) DEFAULT NULL COMMENT '证件号码',
  `MngmtOrgCode` varchar(64) DEFAULT NULL COMMENT '业务管理机构代码',
  `UploadStatus` int(11) DEFAULT NULL COMMENT '上报状态',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '上报标识',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础段';

-- ----------------------------
-- Records of bus_inacctinf_acctbssgmt
-- ----------------------------

-- ----------------------------
-- Table structure for bus_inacctinf_acctcredsgmt
-- ----------------------------
DROP TABLE IF EXISTS `bus_inacctinf_acctcredsgmt`;
CREATE TABLE `bus_inacctinf_acctcredsgmt` (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `AccLoanId` varchar(64) DEFAULT NULL COMMENT '借据编号',
  `bus_id` bigint(20) DEFAULT NULL COMMENT '对应业务操作的主键',
  `Mcc` varchar(120) DEFAULT NULL COMMENT '授信协议标识码',
  `UploadStatus` int(11) DEFAULT NULL COMMENT '上报状态',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '上报标识',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='授信额度信息段';

-- ----------------------------
-- Records of bus_inacctinf_acctcredsgmt
-- ----------------------------

-- ----------------------------
-- Table structure for bus_inacctinf_acctdbtinfsgmt
-- ----------------------------
DROP TABLE IF EXISTS `bus_inacctinf_acctdbtinfsgmt`;
CREATE TABLE `bus_inacctinf_acctdbtinfsgmt` (
  `id` bigint(20) NOT NULL,
  `AccLoanId` varchar(64) DEFAULT NULL COMMENT '借据编号',
  `bus_id` bigint(20) DEFAULT NULL COMMENT '对应业务操作的主键',
  `AcctStatus` int(11) DEFAULT NULL COMMENT '账户状态',
  `AcctBal` decimal(18,0) DEFAULT NULL COMMENT '余额',
  `FiveCate` int(11) DEFAULT NULL COMMENT '五级分类',
  `FiveCateAdjDate` varchar(64) DEFAULT NULL COMMENT '五级分类认定日期',
  `RemRepPrd` int(11) DEFAULT NULL COMMENT '剩余还款期数',
  `RpyStatus` varchar(4) DEFAULT NULL COMMENT '当前还款状态',
  `OverdPrd` int(11) DEFAULT NULL COMMENT '当前逾期期数',
  `TotOverd` decimal(18,0) DEFAULT NULL COMMENT '当前逾期总额',
  `LatRpyAmt` decimal(18,0) DEFAULT NULL COMMENT '最近一次实际还款金额',
  `LatRpyDate` varchar(64) DEFAULT NULL COMMENT '最近一次实际还款日期1',
  `CloseDate` varchar(64) DEFAULT NULL COMMENT '账户关闭日期',
  `UploadStatus` int(11) DEFAULT NULL COMMENT '上报状态',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '上报标识',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='非月度表现';

-- ----------------------------
-- Records of bus_inacctinf_acctdbtinfsgmt
-- ----------------------------

-- ----------------------------
-- Table structure for bus_inacctinf_acctmthlyblginfsgmt
-- ----------------------------
DROP TABLE IF EXISTS `bus_inacctinf_acctmthlyblginfsgmt`;
CREATE TABLE `bus_inacctinf_acctmthlyblginfsgmt` (
  `id` bigint(20) NOT NULL,
  `AccLoanId` varchar(64) DEFAULT NULL COMMENT '借据编号',
  `bus_id` bigint(20) DEFAULT NULL COMMENT '对应业务操作的主键',
  `Month` varchar(64) DEFAULT NULL COMMENT '月份',
  `SettDate` varchar(64) DEFAULT NULL COMMENT '结算/应还款日',
  `AcctStatus` int(11) DEFAULT NULL COMMENT '账户状态',
  `AcctBal` decimal(18,0) DEFAULT NULL COMMENT '余额',
  `NotIsuBal` decimal(18,0) DEFAULT NULL COMMENT '未出单的大额专项分期余额',
  `RemRepPrd` int(11) DEFAULT NULL COMMENT '剩余还款期数',
  `FiveCate` int(11) DEFAULT NULL COMMENT '五级分类',
  `FiveCateAdjDate` varchar(64) DEFAULT NULL COMMENT '五级分类认定日期',
  `RpyStatus` int(11) DEFAULT NULL COMMENT '当前还款状态',
  `RpyPrct` int(11) DEFAULT NULL COMMENT '实际还款百分比',
  `OverdPrd` int(11) DEFAULT NULL COMMENT '当前逾期期数',
  `TotOverd` decimal(18,0) DEFAULT NULL COMMENT '当前逾期总额',
  `Oved31_60Princ` decimal(18,0) DEFAULT NULL COMMENT '逾期31-60天未归还本金',
  `Oved61_90Princ` decimal(18,0) DEFAULT NULL COMMENT '逾期61-90天未归还本金',
  `Oved91_180Princ` decimal(18,0) DEFAULT NULL COMMENT '逾期91-180天未归还本金',
  `OvedPrinc180` decimal(18,0) DEFAULT NULL COMMENT '逾期180天以上未归还本金',
  `OvedrawBaOve180` decimal(18,0) DEFAULT NULL COMMENT '透支180天以上未还余额',
  `CurRpyAmt` decimal(18,0) DEFAULT NULL COMMENT '本月应还款金额',
  `ActRpyAmt` decimal(18,0) DEFAULT NULL COMMENT '本月实际还款金额',
  `LatRpyDate` varchar(64) DEFAULT NULL COMMENT '最近一次实际还款日期',
  `CloseDate` varchar(64) DEFAULT NULL COMMENT '账户关闭日期',
  `UploadStatus` int(11) DEFAULT NULL COMMENT '上报状态',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '上报标识',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='月度表现信息段';

-- ----------------------------
-- Records of bus_inacctinf_acctmthlyblginfsgmt
-- ----------------------------

-- ----------------------------
-- Table structure for bus_inacctinf_acctspectrstdspnsgmt
-- ----------------------------
DROP TABLE IF EXISTS `bus_inacctinf_acctspectrstdspnsgmt`;
CREATE TABLE `bus_inacctinf_acctspectrstdspnsgmt` (
  `id` bigint(20) NOT NULL,
  `AccLoanId` varchar(64) DEFAULT NULL COMMENT '借据编号',
  `bus_id` bigint(20) DEFAULT NULL COMMENT '对应业务操作的主键',
  `CagOfTrdNm` int(11) DEFAULT NULL COMMENT '交易个数',
  `UploadStatus` int(11) DEFAULT NULL COMMENT '上报状态',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '上报标识',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='特殊交易说明信息段';

-- ----------------------------
-- Records of bus_inacctinf_acctspectrstdspnsgmt
-- ----------------------------

-- ----------------------------
-- Table structure for bus_inacctinf_cagoftrdinf
-- ----------------------------
DROP TABLE IF EXISTS `bus_inacctinf_cagoftrdinf`;
CREATE TABLE `bus_inacctinf_cagoftrdinf` (
  `id` bigint(20) NOT NULL,
  `Acc_id` bigint(20) DEFAULT NULL,
  `ChanTranType` int(11) DEFAULT NULL,
  `TranDate` varchar(64) DEFAULT NULL,
  `TranAmt` decimal(18,0) DEFAULT NULL,
  `DueTranMon` int(11) DEFAULT NULL,
  `DetInfo` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_7` (`Acc_id`),
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`Acc_id`) REFERENCES `bus_inacctinf_acctspectrstdspnsgmt` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='交易信息';

-- ----------------------------
-- Records of bus_inacctinf_cagoftrdinf
-- ----------------------------

-- ----------------------------
-- Table structure for bus_inacctinf_cccinf
-- ----------------------------
DROP TABLE IF EXISTS `bus_inacctinf_cccinf`;
CREATE TABLE `bus_inacctinf_cccinf` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `Gua_id` bigint(20) DEFAULT NULL COMMENT 'id',
  `Ccc` varchar(120) DEFAULT NULL COMMENT '抵（质）押合同标识码',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_6` (`Gua_id`),
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`Gua_id`) REFERENCES `bus_inacctinf_guarmotgacltalctrctinfsgmt` (`Gua_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='抵质押合同信息';

-- ----------------------------
-- Records of bus_inacctinf_cccinf
-- ----------------------------

-- ----------------------------
-- Table structure for bus_inacctinf_guarmotgacltalctrctinfsgmt
-- ----------------------------
DROP TABLE IF EXISTS `bus_inacctinf_guarmotgacltalctrctinfsgmt`;
CREATE TABLE `bus_inacctinf_guarmotgacltalctrctinfsgmt` (
  `Gua_id` bigint(20) NOT NULL COMMENT 'id',
  `AccLoanId` varchar(64) DEFAULT NULL COMMENT '借据编号',
  `bus_id` bigint(20) DEFAULT NULL COMMENT '对应业务操作的主键',
  `CcNm` int(11) DEFAULT NULL COMMENT '抵质押合同个数',
  `UploadStatus` int(11) DEFAULT NULL COMMENT '上报状态',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '上报标识',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`Gua_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='抵质押物信息段';

-- ----------------------------
-- Records of bus_inacctinf_guarmotgacltalctrctinfsgmt
-- ----------------------------

-- ----------------------------
-- Table structure for bus_inacctinf_origcreditorinfsgmt
-- ----------------------------
DROP TABLE IF EXISTS `bus_inacctinf_origcreditorinfsgmt`;
CREATE TABLE `bus_inacctinf_origcreditorinfsgmt` (
  `id` bigint(20) NOT NULL,
  `AccLoanId` varchar(64) DEFAULT NULL COMMENT '借据编号',
  `bus_id` bigint(20) DEFAULT NULL COMMENT '对应业务操作的主键',
  `InitCredName` varchar(120) DEFAULT NULL COMMENT '初始债权人名称',
  `InitCredOrgNm` varchar(64) DEFAULT NULL COMMENT '初始债权人机构代码',
  `OrigDbtCate` int(11) DEFAULT NULL COMMENT '原债务种类',
  `InitRpySts` int(11) DEFAULT NULL COMMENT '债权转移时的还款状态',
  `uploadStatus` int(11) DEFAULT NULL COMMENT '上报状态',
  `uploadFlag` int(11) DEFAULT NULL COMMENT '上报标识',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='初始债权说明段';

-- ----------------------------
-- Records of bus_inacctinf_origcreditorinfsgmt
-- ----------------------------

-- ----------------------------
-- Table structure for bus_inacctinf_rltrepymtinf
-- ----------------------------
DROP TABLE IF EXISTS `bus_inacctinf_rltrepymtinf`;
CREATE TABLE `bus_inacctinf_rltrepymtinf` (
  `id` bigint(20) NOT NULL,
  `rit_id` bigint(20) DEFAULT NULL COMMENT 'rit_id',
  `ArlpName` varchar(120) DEFAULT NULL COMMENT '责任人名称',
  `InfoIDType` int(11) DEFAULT NULL COMMENT '身份类别',
  `ArlpCertType` int(11) DEFAULT NULL COMMENT '责任人身份标识类型',
  `ArlpCertNum` varchar(64) DEFAULT NULL COMMENT '责任人身份标识号码',
  `ArlpType` int(11) DEFAULT NULL COMMENT '还款责任人类型',
  `ArlpAmt` decimal(18,0) DEFAULT NULL COMMENT '还款责任金额',
  `WartySign` int(11) DEFAULT NULL COMMENT '联保标志',
  `MaxGuarMcc` varchar(120) DEFAULT NULL COMMENT '保证合同编号',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_5` (`rit_id`),
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`rit_id`) REFERENCES `bus_inacctinf_rltrepymtinfsgmt` (`rit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='责任人信息';

-- ----------------------------
-- Records of bus_inacctinf_rltrepymtinf
-- ----------------------------

-- ----------------------------
-- Table structure for bus_inacctinf_rltrepymtinfsgmt
-- ----------------------------
DROP TABLE IF EXISTS `bus_inacctinf_rltrepymtinfsgmt`;
CREATE TABLE `bus_inacctinf_rltrepymtinfsgmt` (
  `rit_id` bigint(20) NOT NULL COMMENT 'rit_id',
  `AccLoanId` varchar(64) DEFAULT NULL COMMENT '借据编号',
  `bus_id` bigint(20) DEFAULT NULL COMMENT '对应业务操作的主键',
  `RltRepymtNm` int(11) DEFAULT NULL COMMENT '责任人个数',
  `UploadStatus` int(11) DEFAULT NULL COMMENT '上报状态',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '上报标识',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`rit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='相关还款责任人段';

-- ----------------------------
-- Records of bus_inacctinf_rltrepymtinfsgmt
-- ----------------------------

-- ----------------------------
-- Table structure for bus_inacctinf_specprdsgmt
-- ----------------------------
DROP TABLE IF EXISTS `bus_inacctinf_specprdsgmt`;
CREATE TABLE `bus_inacctinf_specprdsgmt` (
  `id` bigint(20) NOT NULL,
  `AccLoanId` varchar(64) DEFAULT NULL COMMENT '借据编号',
  `bus_id` bigint(20) DEFAULT NULL COMMENT '对应业务操作的主键',
  `SpecLine` decimal(18,0) DEFAULT NULL COMMENT '大额专项分期额度',
  `SpecEfctDate` varchar(64) DEFAULT NULL COMMENT '专项分期生效日期',
  `SpecEndDate` varchar(64) DEFAULT NULL COMMENT '专项分期到期日期',
  `UsedInstAmt` decimal(18,0) DEFAULT NULL COMMENT '已用分期金额',
  `UploadStatus` int(11) DEFAULT NULL COMMENT '上报状态',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '上报标识',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='大额专项分期信息段';

-- ----------------------------
-- Records of bus_inacctinf_specprdsgmt
-- ----------------------------

-- ----------------------------
-- Table structure for bus_inctrctinf
-- ----------------------------
DROP TABLE IF EXISTS `bus_inctrctinf`;
CREATE TABLE `bus_inctrctinf` (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `InCtrctInfID` varchar(64) DEFAULT NULL COMMENT '授信协议编号',
  `status` int(11) DEFAULT NULL,
  `InAccInfid` int(11) DEFAULT NULL,
  `UploadTime` datetime DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `UpdateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人授信协议信息记录';

-- ----------------------------
-- Records of bus_inctrctinf
-- ----------------------------

-- ----------------------------
-- Table structure for bus_inctrctinf_creditlimsgmt
-- ----------------------------
DROP TABLE IF EXISTS `bus_inctrctinf_creditlimsgmt`;
CREATE TABLE `bus_inctrctinf_creditlimsgmt` (
  `id` bigint(20) NOT NULL,
  `InCtrctInfID` varchar(64) DEFAULT NULL COMMENT '授信协议编号',
  `bus_id` bigint(20) DEFAULT NULL COMMENT '对应业务操作的主键',
  `CreditLimType` int(11) DEFAULT NULL COMMENT '授信额度类型',
  `LimLoopFlg` int(11) DEFAULT NULL COMMENT '额度循环标志',
  `CreditLim` decimal(8,0) DEFAULT NULL COMMENT '授信额度',
  `Cy` varchar(4) DEFAULT NULL COMMENT '币种',
  `ConEffDate` varchar(64) DEFAULT NULL COMMENT '额度生效日期',
  `ConExpDate` varchar(64) DEFAULT NULL COMMENT '额度到期日期',
  `ConStatus` int(11) DEFAULT NULL COMMENT '额度状态',
  `CreditRest` decimal(8,0) DEFAULT NULL COMMENT '授信限额',
  `CreditRestCode` varchar(120) DEFAULT NULL COMMENT '授信限额编号',
  `UploadStatus` int(11) DEFAULT NULL COMMENT '上报状态',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '上报标识',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='额度信息段';

-- ----------------------------
-- Records of bus_inctrctinf_creditlimsgmt
-- ----------------------------

-- ----------------------------
-- Table structure for bus_inctrctinf_ctrctbssgmt
-- ----------------------------
DROP TABLE IF EXISTS `bus_inctrctinf_ctrctbssgmt`;
CREATE TABLE `bus_inctrctinf_ctrctbssgmt` (
  `id` bigint(20) NOT NULL,
  `InCtrctInfID` varchar(64) DEFAULT NULL COMMENT '授信协议编号',
  `bus_id` bigint(20) DEFAULT NULL COMMENT '对应业务操作的主键',
  `InfRecType` int(11) DEFAULT NULL COMMENT '信息记录类型',
  `ContractCode` varchar(255) DEFAULT NULL COMMENT '授信协议标识码',
  `RptDate` varchar(64) DEFAULT NULL COMMENT '信息报告日期',
  `RptDateCode` int(11) DEFAULT NULL COMMENT '报告时点说明代码',
  `Name` varchar(120) DEFAULT NULL COMMENT '姓名',
  `IDType` int(11) DEFAULT NULL COMMENT '证件类型',
  `IDNum` varchar(24) DEFAULT NULL COMMENT '证件号码',
  `MngmtOrgCode` varchar(24) DEFAULT NULL COMMENT '业务管理机构代码',
  `UploadStatus` int(11) DEFAULT NULL COMMENT '上报状态',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '上报标识',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人授信协议信息记录-基础段';

-- ----------------------------
-- Records of bus_inctrctinf_ctrctbssgmt
-- ----------------------------

-- ----------------------------
-- Table structure for bus_inctrctinf_ctrctcertrel
-- ----------------------------
DROP TABLE IF EXISTS `bus_inctrctinf_ctrctcertrel`;
CREATE TABLE `bus_inctrctinf_ctrctcertrel` (
  `id` bigint(20) NOT NULL,
  `Ctr_id` bigint(20) DEFAULT NULL COMMENT '共同受_id',
  `BrerType` int(11) DEFAULT NULL COMMENT '共同受信人身份类别',
  `CertRelName` varchar(120) DEFAULT NULL COMMENT '共同受信人名称',
  `CertRelIDType` int(11) DEFAULT NULL COMMENT '共同受信人身份标识类型',
  `CertRelIDNum` varchar(64) DEFAULT NULL COMMENT '共同受信人身份标识号码',
  PRIMARY KEY (`id`),
  KEY `FK_Reference_4` (`Ctr_id`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`Ctr_id`) REFERENCES `bus_inctrctinf_ctrctcertrelsgmt` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='共同受信人';

-- ----------------------------
-- Records of bus_inctrctinf_ctrctcertrel
-- ----------------------------

-- ----------------------------
-- Table structure for bus_inctrctinf_ctrctcertrelsgmt
-- ----------------------------
DROP TABLE IF EXISTS `bus_inctrctinf_ctrctcertrelsgmt`;
CREATE TABLE `bus_inctrctinf_ctrctcertrelsgmt` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `InCtrctInfID` varchar(64) DEFAULT NULL COMMENT '授信协议编号',
  `bus_id` bigint(20) DEFAULT NULL COMMENT '对应业务操作的主键',
  `BrerNm` int(11) DEFAULT NULL COMMENT '共同受信人个数',
  `UploadStatus` int(11) DEFAULT NULL COMMENT '上报状态',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '上报标识',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='共同受信人信息段';

-- ----------------------------
-- Records of bus_inctrctinf_ctrctcertrelsgmt
-- ----------------------------

-- ----------------------------
-- Table structure for bus_inspcevtdscinf
-- ----------------------------
DROP TABLE IF EXISTS `bus_inspcevtdscinf`;
CREATE TABLE `bus_inspcevtdscinf` (
  `id` bigint(20) NOT NULL,
  `AccLoanId` varchar(64) DEFAULT NULL COMMENT '借据编号',
  `InfRecType` int(11) DEFAULT NULL COMMENT '信息记录类型',
  `AcctCode` varchar(120) DEFAULT NULL COMMENT '账户标识码',
  `OpetnType` int(11) DEFAULT NULL COMMENT '事件类型',
  `Month` varchar(24) DEFAULT NULL COMMENT '发生月份',
  `Flag` int(11) DEFAULT NULL COMMENT '生效标志',
  `RptDate` varchar(24) DEFAULT NULL COMMENT '信息报告日期',
  `UploadStatus` int(11) DEFAULT NULL COMMENT '上报状态',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '上报标识',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人借贷账户特殊事件说明记录';

-- ----------------------------
-- Records of bus_inspcevtdscinf
-- ----------------------------

-- ----------------------------
-- Table structure for bus_system_setup
-- ----------------------------
DROP TABLE IF EXISTS `bus_system_setup`;
CREATE TABLE `bus_system_setup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `BUSINESSDATE` varchar(10) DEFAULT NULL COMMENT '实际日期',
  `BATCHDATE` varchar(10) DEFAULT NULL COMMENT '任务执行日期',
  `STATUS` varchar(10) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统处理日期记录表';

-- ----------------------------
-- Records of bus_system_setup
-- ----------------------------
INSERT INTO `bus_system_setup` VALUES ('1', '2020/07/08', '2020/07/08', '1');

-- ----------------------------
-- Table structure for bus_task_log
-- ----------------------------
DROP TABLE IF EXISTS `bus_task_log`;
CREATE TABLE `bus_task_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `BATCHDATE` varchar(10) DEFAULT NULL COMMENT '任务执行日期',
  `BUSINESSDATE` varchar(10) DEFAULT NULL COMMENT '实际日期',
  `TASKNAME` varchar(255) DEFAULT NULL COMMENT '任务名称',
  `TASKDESCRIBE` varchar(255) DEFAULT NULL COMMENT '任务名称描述',
  `TARGETNAME` varchar(255) DEFAULT NULL COMMENT '任务所属模块',
  `TARGETDESCRIBE` varchar(255) DEFAULT NULL COMMENT '任务所属模块描述',
  `BEGINTIME` varchar(20) DEFAULT NULL COMMENT '开始执行时间',
  `ENDTIME` varchar(20) DEFAULT NULL COMMENT '执行结束时间',
  `STATUS` varchar(10) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务日志表';

-- ----------------------------
-- Records of bus_task_log
-- ----------------------------

-- ----------------------------
-- Table structure for bus_update_acctinfbycode
-- ----------------------------
DROP TABLE IF EXISTS `bus_update_acctinfbycode`;
CREATE TABLE `bus_update_acctinfbycode` (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `AccLoanId` varchar(64) DEFAULT NULL COMMENT '借据编号',
  `InfRecType` varchar(4) DEFAULT NULL COMMENT '信息记录类型',
  `ModRecCode` varchar(240) DEFAULT NULL COMMENT '待更正业务标识码',
  `RptDate` varchar(64) DEFAULT NULL COMMENT '信息报告日期',
  `AcctType` varchar(4) DEFAULT NULL COMMENT '账户类型',
  `MdfcSgmtCode` varchar(4) DEFAULT NULL COMMENT '待更正段段标',
  `UploadStatus` int(11) DEFAULT NULL COMMENT '上报状态',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '上报标识',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人借贷账户按段更正请求记录';

-- ----------------------------
-- Records of bus_update_acctinfbycode
-- ----------------------------

-- ----------------------------
-- Table structure for bus_update_inacctidcagsinf
-- ----------------------------
DROP TABLE IF EXISTS `bus_update_inacctidcagsinf`;
CREATE TABLE `bus_update_inacctidcagsinf` (
  `id` bigint(20) NOT NULL,
  `AccLoanId` varchar(64) DEFAULT NULL COMMENT '借据编号',
  `InfRecType` int(11) DEFAULT NULL COMMENT '信息记录类型',
  `OdBnesCode` varchar(120) DEFAULT NULL COMMENT '原业务标识码',
  `NwBnesCode` varchar(120) DEFAULT NULL COMMENT '新业务标识码-',
  `UploadStatus` int(11) DEFAULT NULL COMMENT '上报状态',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '上报标识',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人借贷账户标识变更请求记录';

-- ----------------------------
-- Records of bus_update_inacctidcagsinf
-- ----------------------------

-- ----------------------------
-- Table structure for bus_update_inctrctidcagsinf
-- ----------------------------
DROP TABLE IF EXISTS `bus_update_inctrctidcagsinf`;
CREATE TABLE `bus_update_inctrctidcagsinf` (
  `id` bigint(20) NOT NULL,
  `InCtrctInfID` varchar(64) DEFAULT NULL COMMENT '授信协议编号',
  `InfRecType` int(11) DEFAULT NULL COMMENT '信息记录类型',
  `OdBnesCode` varchar(120) DEFAULT NULL COMMENT '原业务标识码',
  `NwBnesCode` varchar(120) DEFAULT NULL COMMENT '新业务标识码',
  `UploadStatus` int(11) DEFAULT NULL COMMENT '上报状态',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '上报标识',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人授信协议标识变更请求记录';

-- ----------------------------
-- Records of bus_update_inctrctidcagsinf
-- ----------------------------

-- ----------------------------
-- Table structure for bus_update_inctrctinfbycode
-- ----------------------------
DROP TABLE IF EXISTS `bus_update_inctrctinfbycode`;
CREATE TABLE `bus_update_inctrctinfbycode` (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `AccLoanId` varchar(64) DEFAULT NULL COMMENT '借据编号',
  `InfRecType` varchar(4) DEFAULT NULL COMMENT '信息记录类型',
  `ModRecCode` varchar(240) DEFAULT NULL COMMENT '待更正业务标识码',
  `RptDate` varchar(64) DEFAULT NULL COMMENT '信息报告日期',
  `MdfcSgmtCode` varchar(4) DEFAULT NULL COMMENT '待更正段段标',
  `UploadStatus` int(11) DEFAULT NULL COMMENT '上报状态',
  `UploadFlag` int(11) DEFAULT NULL COMMENT '上报标识',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人授信协议按段更正请求记录';

-- ----------------------------
-- Records of bus_update_inctrctinfbycode
-- ----------------------------

-- ----------------------------
-- Table structure for code_column_config
-- ----------------------------
DROP TABLE IF EXISTS `code_column_config`;
CREATE TABLE `code_column_config` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `table_name` varchar(255) DEFAULT NULL,
  `column_name` varchar(255) DEFAULT NULL,
  `column_type` varchar(255) DEFAULT NULL,
  `dict_name` varchar(255) DEFAULT NULL,
  `extra` varchar(255) DEFAULT NULL,
  `form_show` bit(1) DEFAULT NULL,
  `form_type` varchar(255) DEFAULT NULL,
  `key_type` varchar(255) DEFAULT NULL,
  `list_show` bit(1) DEFAULT NULL,
  `not_null` bit(1) DEFAULT NULL,
  `query_type` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `date_annotation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`column_id`) USING BTREE,
  KEY `idx_table_name` (`table_name`)
) ENGINE=InnoDB AUTO_INCREMENT=760 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='代码生成字段信息存储';

-- ----------------------------
-- Records of code_column_config
-- ----------------------------
INSERT INTO `code_column_config` VALUES ('187', 'tool_qiniu_content', 'content_id', 'bigint', null, 'auto_increment', '', null, 'PRI', '', '\0', null, 'ID', null);
INSERT INTO `code_column_config` VALUES ('188', 'tool_qiniu_content', 'bucket', 'varchar', null, '', '', null, '', '', '\0', null, 'Bucket 识别符', null);
INSERT INTO `code_column_config` VALUES ('189', 'tool_qiniu_content', 'name', 'varchar', null, '', '', null, 'UNI', '', '\0', null, '文件名称', null);
INSERT INTO `code_column_config` VALUES ('190', 'tool_qiniu_content', 'size', 'varchar', null, '', '', null, '', '', '\0', null, '文件大小', null);
INSERT INTO `code_column_config` VALUES ('191', 'tool_qiniu_content', 'type', 'varchar', null, '', '', null, '', '', '\0', null, '文件类型：私有或公开', null);
INSERT INTO `code_column_config` VALUES ('192', 'tool_qiniu_content', 'url', 'varchar', null, '', '', null, '', '', '\0', null, '文件url', null);
INSERT INTO `code_column_config` VALUES ('193', 'tool_qiniu_content', 'suffix', 'varchar', null, '', '', null, '', '', '\0', null, '文件后缀', null);
INSERT INTO `code_column_config` VALUES ('194', 'tool_qiniu_content', 'update_time', 'datetime', null, '', '', null, '', '', '\0', null, '上传或同步的时间', null);
INSERT INTO `code_column_config` VALUES ('195', 'bus_customer_info', 'id', 'int', null, '', '', null, 'PRI', '', '', null, '主键', null);
INSERT INTO `code_column_config` VALUES ('196', 'bus_customer_info', 'InBasInfID', 'varchar', null, '', '', null, '', '', '\0', null, '客户编号', null);
INSERT INTO `code_column_config` VALUES ('197', 'bus_customer_info', 'InfRecType', 'int', null, '', '', null, '', '', '\0', null, '上报类型', null);
INSERT INTO `code_column_config` VALUES ('198', 'bus_customer_info', 'Name', 'varchar', null, '', '', null, '', '', '\0', null, '姓名', null);
INSERT INTO `code_column_config` VALUES ('199', 'bus_customer_info', 'IDType', 'int', null, '', '', null, '', '', '\0', null, '证件类型', null);
INSERT INTO `code_column_config` VALUES ('200', 'bus_customer_info', 'IDNum', 'varchar', null, '', '', null, '', '', '\0', null, '证件号码', null);
INSERT INTO `code_column_config` VALUES ('201', 'bus_customer_info', 'InfSurcCode', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('202', 'bus_customer_info', 'RptDate', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('203', 'bus_customer_info', 'RptDateCode', 'int', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('204', 'bus_customer_info', 'Cimoc', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('205', 'bus_customer_info', 'CustomerType', 'int', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('206', 'bus_customer_info', 'Sex', 'int', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('207', 'bus_customer_info', 'DOB', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('208', 'bus_customer_info', 'Nation', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('209', 'bus_customer_info', 'HouseAdd', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('210', 'bus_customer_info', 'HhDist', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('211', 'bus_customer_info', 'CellPhone', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('212', 'bus_customer_info', 'Email', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('213', 'bus_customer_info', 'MariStatus', 'int', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('214', 'bus_customer_info', 'SpoName', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('215', 'bus_customer_info', 'SpoIDType', 'int', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('216', 'bus_customer_info', 'SpoIDNum', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('217', 'bus_customer_info', 'SpoTel', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('218', 'bus_customer_info', 'SpsCmpyNm', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('219', 'bus_customer_info', 'EduLevel', 'int', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('220', 'bus_customer_info', 'AcaDegree', 'int', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('221', 'bus_customer_info', 'EmpStatus', 'int', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('222', 'bus_customer_info', 'CpnName', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('223', 'bus_customer_info', 'CpnType', 'int', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('224', 'bus_customer_info', 'Industry', 'int', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('225', 'bus_customer_info', 'CpnAddr', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('226', 'bus_customer_info', 'CpnPc', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('227', 'bus_customer_info', 'CpnDist', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('228', 'bus_customer_info', 'CpnTEL', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('229', 'bus_customer_info', 'Occupation', 'int', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('230', 'bus_customer_info', 'Title', 'int', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('231', 'bus_customer_info', 'TechTitle', 'int', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('232', 'bus_customer_info', 'WorkStartDate', 'int', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('233', 'bus_customer_info', 'ResiStatus', 'int', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('234', 'bus_customer_info', 'ResiAddr', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('235', 'bus_customer_info', 'ResiPc', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('236', 'bus_customer_info', 'ResiDist', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('237', 'bus_customer_info', 'HomeTel', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('238', 'bus_customer_info', 'MailAddr', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('239', 'bus_customer_info', 'MailPc', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('240', 'bus_customer_info', 'MailDist', 'varchar', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('241', 'bus_customer_info', 'AnnlInc', 'decimal', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('242', 'bus_customer_info', 'TaxIncome', 'decimal', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('243', 'bus_customer_info', 'CREATETIME', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('244', 'bus_customer_info', 'UPDATEDATE', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('245', 'sys_user', 'user_id', 'bigint', null, 'auto_increment', '', null, 'PRI', '', '\0', null, 'ID', null);
INSERT INTO `code_column_config` VALUES ('246', 'sys_user', 'dept_id', 'bigint', null, '', '', null, 'MUL', '', '\0', null, '部门名称', null);
INSERT INTO `code_column_config` VALUES ('247', 'sys_user', 'username', 'varchar', null, '', '', null, 'UNI', '', '\0', null, '用户名', null);
INSERT INTO `code_column_config` VALUES ('248', 'sys_user', 'nick_name', 'varchar', null, '', '', null, '', '', '\0', null, '昵称', null);
INSERT INTO `code_column_config` VALUES ('249', 'sys_user', 'gender', 'varchar', null, '', '', null, '', '', '\0', null, '性别', null);
INSERT INTO `code_column_config` VALUES ('250', 'sys_user', 'phone', 'varchar', null, '', '', null, '', '', '\0', null, '手机号码', null);
INSERT INTO `code_column_config` VALUES ('251', 'sys_user', 'email', 'varchar', null, '', '', null, 'UNI', '', '\0', null, '邮箱', null);
INSERT INTO `code_column_config` VALUES ('252', 'sys_user', 'avatar_name', 'varchar', null, '', '', null, 'MUL', '', '\0', null, '头像地址', null);
INSERT INTO `code_column_config` VALUES ('253', 'sys_user', 'avatar_path', 'varchar', null, '', '', null, '', '', '\0', null, '头像真实路径', null);
INSERT INTO `code_column_config` VALUES ('254', 'sys_user', 'password', 'varchar', null, '', '', null, '', '', '\0', null, '密码', null);
INSERT INTO `code_column_config` VALUES ('255', 'sys_user', 'is_admin', 'bit', null, '', '', null, '', '', '\0', null, '是否为admin账号', null);
INSERT INTO `code_column_config` VALUES ('256', 'sys_user', 'enabled', 'bigint', null, '', '', null, 'MUL', '', '\0', null, '状态：1启用、0禁用', null);
INSERT INTO `code_column_config` VALUES ('257', 'sys_user', 'create_by', 'varchar', null, '', '', null, '', '', '\0', null, '创建者', null);
INSERT INTO `code_column_config` VALUES ('258', 'sys_user', 'update_by', 'varchar', null, '', '', null, '', '', '\0', null, '更新着', null);
INSERT INTO `code_column_config` VALUES ('259', 'sys_user', 'pwd_reset_time', 'datetime', null, '', '', null, '', '', '\0', null, '修改密码的时间', null);
INSERT INTO `code_column_config` VALUES ('260', 'sys_user', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, '创建日期', null);
INSERT INTO `code_column_config` VALUES ('261', 'sys_user', 'update_time', 'datetime', null, '', '', null, '', '', '\0', null, '更新时间', null);
INSERT INTO `code_column_config` VALUES ('262', 'sys_users_jobs', 'user_id', 'bigint', null, '', '', null, 'PRI', '', '', null, '用户ID', null);
INSERT INTO `code_column_config` VALUES ('263', 'sys_users_jobs', 'job_id', 'bigint', null, '', '', null, 'PRI', '', '', null, '岗位ID', null);
INSERT INTO `code_column_config` VALUES ('264', 'bus_test', 'id', 'int', null, 'auto_increment', '', null, 'PRI', '', '', null, '编号', null);
INSERT INTO `code_column_config` VALUES ('265', 'bus_test', 'name', 'varchar', null, '', '', null, '', '', '', null, '名字', null);
INSERT INTO `code_column_config` VALUES ('266', 'bus_test', 'age', 'int', null, '', '', null, '', '', '', null, '年龄', null);
INSERT INTO `code_column_config` VALUES ('267', 'bus_usertest', 'id', 'int', null, 'auto_increment', '', null, 'PRI', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('268', 'bus_usertest', 'name', 'varchar', null, '', '', null, '', '', '', null, '名字', null);
INSERT INTO `code_column_config` VALUES ('269', 'bus_usertest', 'age', 'int', null, '', '', null, '', '', '', null, '年龄', null);
INSERT INTO `code_column_config` VALUES ('270', 'bus_del_customer_info', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, 'id', null);
INSERT INTO `code_column_config` VALUES ('272', 'bus_del_customer_info', 'InfRecType', 'varchar', 'InfRecType', '', '', 'Select', '', '', '\0', null, '信息记录类型', null);
INSERT INTO `code_column_config` VALUES ('273', 'bus_del_customer_info', 'Name', 'varchar', null, '', '', null, '', '', '\0', null, '姓名', null);
INSERT INTO `code_column_config` VALUES ('274', 'bus_del_customer_info', 'IDType', 'varchar', 'IDType', '', '', 'Select', '', '', '\0', null, '证件类型', null);
INSERT INTO `code_column_config` VALUES ('275', 'bus_del_customer_info', 'IDNum', 'varchar', null, '', '', null, '', '', '\0', null, '证件号码', null);
INSERT INTO `code_column_config` VALUES ('276', 'bus_del_customer_info', 'InfSurcCode', 'varchar', null, '', '', null, '', '', '\0', null, '信息来源编码', null);
INSERT INTO `code_column_config` VALUES ('280', 'bus_customer_relationship', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, 'id', null);
INSERT INTO `code_column_config` VALUES ('282', 'bus_customer_relationship', 'InfRecType', 'varchar', 'InfRecType', '', '', 'Select', '', '', '\0', null, '信息记录类型', null);
INSERT INTO `code_column_config` VALUES ('283', 'bus_customer_relationship', 'Name', 'varchar', null, '', '', null, '', '', '\0', null, 'A姓名', null);
INSERT INTO `code_column_config` VALUES ('284', 'bus_customer_relationship', 'IDType', 'varchar', 'IDType', '', '', 'Select', '', '', '\0', null, 'A证件类型', null);
INSERT INTO `code_column_config` VALUES ('285', 'bus_customer_relationship', 'IDNum', 'varchar', null, '', '', null, '', '', '\0', null, 'A证件号码', null);
INSERT INTO `code_column_config` VALUES ('286', 'bus_customer_relationship', 'FamMemName', 'varchar', null, '', '', null, '', '', '\0', null, 'B姓名', null);
INSERT INTO `code_column_config` VALUES ('287', 'bus_customer_relationship', 'FamMemCertType', 'varchar', 'IDType', '', '', 'Select', '', '', '\0', null, 'B证件类型', null);
INSERT INTO `code_column_config` VALUES ('288', 'bus_customer_relationship', 'FamMemCertNum', 'varchar', null, '', '', null, '', '', '\0', null, 'B证件号码', null);
INSERT INTO `code_column_config` VALUES ('289', 'bus_customer_relationship', 'FamRel', 'varchar', 'FamRel', '', '', 'Select', '', '', '\0', null, '家族关系', null);
INSERT INTO `code_column_config` VALUES ('290', 'bus_customer_relationship', 'FamRelaAssFlag', 'varchar', 'FamRelaAssFlag', '', '', 'Select', '', '', '\0', null, '家族关系有效标志', null);
INSERT INTO `code_column_config` VALUES ('291', 'bus_customer_relationship', 'InfSurcCode', 'varchar', null, '', '', null, '', '', '\0', null, '信息来源编码', null);
INSERT INTO `code_column_config` VALUES ('292', 'bus_customer_relationship', 'RptDate', 'date', null, '', '', null, '', '', '\0', null, '信息报告日期', null);
INSERT INTO `code_column_config` VALUES ('296', 'bus_settlement', 'id', 'bigint', null, '', '', 'Input', 'PRI', '\0', '', null, '', null);
INSERT INTO `code_column_config` VALUES ('297', 'bus_settlement', 'org', 'varchar', null, '', '', 'Input', '', '', '\0', null, '商户名称', null);
INSERT INTO `code_column_config` VALUES ('298', 'bus_settlement', 'bankAccName', 'varchar', null, '', '', 'Input', '', '', '\0', 'Like', '收款人', null);
INSERT INTO `code_column_config` VALUES ('299', 'bus_settlement', 'bankAcc', 'varchar', null, '', '', 'Input', '', '', '\0', '=', '银行卡号', null);
INSERT INTO `code_column_config` VALUES ('300', 'bus_settlement', 'bank', 'varchar', null, '', '', 'Input', '', '', '\0', null, '收款人联行号', null);
INSERT INTO `code_column_config` VALUES ('301', 'bus_settlement', 'txAmount', 'decimal', null, '', '', 'Input', '', '', '\0', null, '结算金额', null);
INSERT INTO `code_column_config` VALUES ('302', 'bus_settlement', 'result', 'varchar', '结算状态', '', '', 'Select', '', '', '\0', '=', '结算状态', null);
INSERT INTO `code_column_config` VALUES ('303', 'bus_settlement', 'fileName', 'varchar', null, '', '', 'Input', '', '', '\0', 'Like', '文件名(订单号)', null);
INSERT INTO `code_column_config` VALUES ('304', 'bus_settlement', 'createTime', 'datetime', null, '', '', 'Date', '', '', '\0', 'BetWeen', '创建时间', '');
INSERT INTO `code_column_config` VALUES ('305', 'bus_settlement', 'remark', 'varchar', null, '', '', 'Input', '', '', '\0', null, '备注', null);
INSERT INTO `code_column_config` VALUES ('306', 'bus_settlement', 'txFee', 'varchar', null, '', '', 'Input', '', '', '\0', null, '手续费', null);
INSERT INTO `code_column_config` VALUES ('307', 'bus_settlement', 'sendTime', 'datetime', null, '', '', 'Date', '', '', '\0', null, '代付时间', null);
INSERT INTO `code_column_config` VALUES ('308', 'bus_customer_base_info', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, 'id', null);
INSERT INTO `code_column_config` VALUES ('310', 'bus_customer_base_info', 'InfRecType', 'varchar', 'InfRecType', '', '', 'Select', '', '', '\0', null, '信息记录类型', null);
INSERT INTO `code_column_config` VALUES ('311', 'bus_customer_base_info', 'Name', 'varchar', null, '', '', null, '', '', '\0', null, '姓名', null);
INSERT INTO `code_column_config` VALUES ('312', 'bus_customer_base_info', 'IDType', 'int', 'IDType', '', '', 'Select', '', '', '\0', null, '证件类型', null);
INSERT INTO `code_column_config` VALUES ('313', 'bus_customer_base_info', 'IDNum', 'varchar', null, '', '', null, '', '', '\0', null, '证件号码', null);
INSERT INTO `code_column_config` VALUES ('314', 'bus_customer_base_info', 'InfSurcCode', 'varchar', null, '', '', null, '', '', '\0', null, '信息来源编码', null);
INSERT INTO `code_column_config` VALUES ('315', 'bus_customer_base_info', 'RptDate', 'date', null, '', '', null, '', '', '\0', null, '信息报告日期', null);
INSERT INTO `code_column_config` VALUES ('316', 'bus_customer_base_info', 'RptDateCode', 'varchar', 'RptDateCode', '', '', 'Select', '', '', '\0', null, '报告时点说明代码', null);
INSERT INTO `code_column_config` VALUES ('317', 'bus_customer_base_info', 'Cimoc', 'varchar', null, '', '', null, '', '', '\0', null, '客户资料维护机构代码', null);
INSERT INTO `code_column_config` VALUES ('318', 'bus_customer_base_info', 'CustomerType', 'varchar', 'CustomerType', '', '', 'Select', '', '', '\0', null, '客户资料类型', null);
INSERT INTO `code_column_config` VALUES ('319', 'bus_customer_base_info', 'Sex', 'int', 'Sex', '', '', 'Select', '', '', '\0', null, '性别', null);
INSERT INTO `code_column_config` VALUES ('320', 'bus_customer_base_info', 'DOB', 'date', null, '', '', null, '', '', '\0', null, '出生日期', null);
INSERT INTO `code_column_config` VALUES ('321', 'bus_customer_base_info', 'Nation', 'varchar', null, '', '', null, '', '', '\0', null, '国籍', null);
INSERT INTO `code_column_config` VALUES ('322', 'bus_customer_base_info', 'HouseAdd', 'varchar', null, '', '', null, '', '', '\0', null, '户籍地址', null);
INSERT INTO `code_column_config` VALUES ('323', 'bus_customer_base_info', 'HhDist', 'varchar', null, '', '', null, '', '', '\0', null, '户籍所在地行政区划', null);
INSERT INTO `code_column_config` VALUES ('324', 'bus_customer_base_info', 'CellPhone', 'varchar', null, '', '', null, '', '', '\0', null, '手机号码', null);
INSERT INTO `code_column_config` VALUES ('325', 'bus_customer_base_info', 'Email', 'varchar', null, '', '', null, '', '', '\0', null, '电子邮箱', null);
INSERT INTO `code_column_config` VALUES ('326', 'bus_customer_base_info', 'FcsInfoUpDate', 'date', null, '', '', null, '', '', '\0', null, '信息更新日期', null);
INSERT INTO `code_column_config` VALUES ('327', 'bus_customer_base_info', 'MariStatus', 'varchar', 'MariStatus', '', '', 'Select', '', '', '\0', null, '婚姻状况', null);
INSERT INTO `code_column_config` VALUES ('328', 'bus_customer_base_info', 'SpoName', 'varchar', null, '', '', null, '', '', '\0', null, '配偶姓名', null);
INSERT INTO `code_column_config` VALUES ('329', 'bus_customer_base_info', 'SpoIDType', 'int', 'IDType', '', '', null, '', '', '\0', null, '配偶证件类型', null);
INSERT INTO `code_column_config` VALUES ('330', 'bus_customer_base_info', 'SpoIDNum', 'varchar', null, '', '', null, '', '', '\0', null, '配偶证件号码', null);
INSERT INTO `code_column_config` VALUES ('331', 'bus_customer_base_info', 'SpoTel', 'varchar', null, '', '', null, '', '', '\0', null, '配偶联系电话', null);
INSERT INTO `code_column_config` VALUES ('332', 'bus_customer_base_info', 'SpsCmpyNm', 'varchar', null, '', '', null, '', '', '\0', null, '配偶工作单位', null);
INSERT INTO `code_column_config` VALUES ('333', 'bus_customer_base_info', 'SpsInfoUpDate', 'date', null, '', '', null, '', '', '\0', null, '信息更新日期', null);
INSERT INTO `code_column_config` VALUES ('334', 'bus_customer_base_info', 'EduLevel', 'varchar', 'EduLevel', '', '', 'Select', '', '', '\0', null, '学历', null);
INSERT INTO `code_column_config` VALUES ('335', 'bus_customer_base_info', 'AcaDegree', 'varchar', 'AcaDegree', '', '', 'Select', '', '', '\0', null, '学位', null);
INSERT INTO `code_column_config` VALUES ('336', 'bus_customer_base_info', 'EduInfoUpDate', 'date', null, '', '', null, '', '', '\0', null, '信息更新日期', null);
INSERT INTO `code_column_config` VALUES ('337', 'bus_customer_base_info', 'EmpStatus', 'varchar', 'EmpStatus', '', '', 'Select', '', '', '\0', null, '就业状况', null);
INSERT INTO `code_column_config` VALUES ('338', 'bus_customer_base_info', 'CpnName', 'varchar', null, '', '', null, '', '', '\0', null, '单位名称', null);
INSERT INTO `code_column_config` VALUES ('339', 'bus_customer_base_info', 'CpnType', 'varchar', 'CpnType', '', '', 'Select', '', '', '\0', null, '单位性质', null);
INSERT INTO `code_column_config` VALUES ('340', 'bus_customer_base_info', 'Industry', 'varchar', 'Industry', '', '', 'Select', '', '', '\0', null, '单位所属行业', null);
INSERT INTO `code_column_config` VALUES ('341', 'bus_customer_base_info', 'CpnAddr', 'varchar', null, '', '', null, '', '', '\0', null, '单位详细地址', null);
INSERT INTO `code_column_config` VALUES ('342', 'bus_customer_base_info', 'CpnPc', 'varchar', null, '', '', null, '', '', '\0', null, '单位所在地邮编', null);
INSERT INTO `code_column_config` VALUES ('343', 'bus_customer_base_info', 'CpnDist', 'varchar', null, '', '', null, '', '', '\0', null, '单位所在地行政区划', null);
INSERT INTO `code_column_config` VALUES ('344', 'bus_customer_base_info', 'CpnTEL', 'varchar', null, '', '', null, '', '', '\0', null, '单位电话', null);
INSERT INTO `code_column_config` VALUES ('345', 'bus_customer_base_info', 'Occupation', 'varchar', 'Occupation', '', '', 'Select', '', '', '\0', null, '职业', null);
INSERT INTO `code_column_config` VALUES ('346', 'bus_customer_base_info', 'Title', 'varchar', 'Title', '', '', 'Select', '', '', '\0', null, '职务', null);
INSERT INTO `code_column_config` VALUES ('347', 'bus_customer_base_info', 'TechTitle', 'varchar', 'TechTitle', '', '', 'Select', '', '', '\0', null, '职称', null);
INSERT INTO `code_column_config` VALUES ('348', 'bus_customer_base_info', 'WorkStartDate', 'date', null, '', '', null, '', '', '\0', null, '本单位工作起始年份', null);
INSERT INTO `code_column_config` VALUES ('349', 'bus_customer_base_info', 'OctpnInfoUpDate', 'date', null, '', '', null, '', '', '\0', null, '信息更新日期', null);
INSERT INTO `code_column_config` VALUES ('350', 'bus_customer_base_info', 'ResiStatus', 'varchar', 'ResiStatus', '', '', 'Select', '', '', '\0', null, '居住状况', null);
INSERT INTO `code_column_config` VALUES ('351', 'bus_customer_base_info', 'ResiAddr', 'varchar', null, '', '', null, '', '', '\0', null, '居住地详细地址', null);
INSERT INTO `code_column_config` VALUES ('352', 'bus_customer_base_info', 'ResiPc', 'varchar', null, '', '', null, '', '', '\0', null, '居住地邮编', null);
INSERT INTO `code_column_config` VALUES ('353', 'bus_customer_base_info', 'ResiDist', 'varchar', null, '', '', null, '', '', '\0', null, '居住地行政区划', null);
INSERT INTO `code_column_config` VALUES ('354', 'bus_customer_base_info', 'HomeTel', 'varchar', null, '', '', null, '', '', '\0', null, '住宅电话', null);
INSERT INTO `code_column_config` VALUES ('355', 'bus_customer_base_info', 'ResiInfoUpDate', 'date', null, '', '', null, '', '', '\0', null, '信息更新日期', null);
INSERT INTO `code_column_config` VALUES ('356', 'bus_customer_base_info', 'MailAddr', 'varchar', null, '', '', null, '', '', '\0', null, '通讯地址', null);
INSERT INTO `code_column_config` VALUES ('357', 'bus_customer_base_info', 'MailPc', 'varchar', null, '', '', null, '', '', '\0', null, '通讯地邮编', null);
INSERT INTO `code_column_config` VALUES ('358', 'bus_customer_base_info', 'MailDist', 'varchar', null, '', '', null, '', '', '\0', null, '通讯地行政区划', null);
INSERT INTO `code_column_config` VALUES ('359', 'bus_customer_base_info', 'MlgInfoUpDate', 'date', null, '', '', null, '', '', '\0', null, '信息更新日期', null);
INSERT INTO `code_column_config` VALUES ('360', 'bus_customer_base_info', 'AnnlInc', 'varchar', null, '', '', null, '', '', '\0', null, '自报年收入', null);
INSERT INTO `code_column_config` VALUES ('361', 'bus_customer_base_info', 'TaxIncome', 'varchar', null, '', '', null, '', '', '\0', null, '纳税年收入', null);
INSERT INTO `code_column_config` VALUES ('362', 'bus_customer_base_info', 'IncInfoUpDate', 'date', null, '', '', null, '', '', '\0', null, '信息更新日期', null);
INSERT INTO `code_column_config` VALUES ('369', 'bus_customer_cardinfos', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, 'id', null);
INSERT INTO `code_column_config` VALUES ('371', 'bus_customer_cardinfos', 'InfRecType', 'varchar', 'InfRecType', '', '', 'Select', '', '', '\0', null, '信息记录类型', null);
INSERT INTO `code_column_config` VALUES ('372', 'bus_customer_cardinfos', 'Name', 'varchar', null, '', '', null, '', '', '\0', null, '姓名', null);
INSERT INTO `code_column_config` VALUES ('373', 'bus_customer_cardinfos', 'IDType', 'varchar', 'IDType', '', '', 'Select', '', '', '\0', null, '证件类型', null);
INSERT INTO `code_column_config` VALUES ('374', 'bus_customer_cardinfos', 'IDNum', 'varchar', null, '', '', null, '', '', '\0', null, '证件号码', null);
INSERT INTO `code_column_config` VALUES ('375', 'bus_customer_cardinfos', 'OthName', 'varchar', null, '', '', null, '', '', '\0', null, '其他姓名', null);
INSERT INTO `code_column_config` VALUES ('376', 'bus_customer_cardinfos', 'OthIDType', 'varchar', 'IDType', '', '', 'Select', '', '', '\0', null, '其他证件类型', null);
INSERT INTO `code_column_config` VALUES ('377', 'bus_customer_cardinfos', 'OthIDNum', 'varchar', null, '', '', null, '', '', '\0', null, '其他证件号码', null);
INSERT INTO `code_column_config` VALUES ('378', 'bus_customer_cardinfos', 'OthAssFlg', 'varchar', null, '', '', null, '', '', '\0', null, '证件关联关系有效标志', null);
INSERT INTO `code_column_config` VALUES ('379', 'bus_customer_cardinfos', 'InfSurcCode', 'varchar', null, '', '', null, '', '', '\0', null, '信息来源编码', null);
INSERT INTO `code_column_config` VALUES ('380', 'bus_customer_cardinfos', 'RptDate', 'datetime', null, '', '', null, '', '', '\0', null, '信息报告日期', null);
INSERT INTO `code_column_config` VALUES ('384', 'bus_customer_other_cardinfo', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, 'id', null);
INSERT INTO `code_column_config` VALUES ('386', 'bus_customer_other_cardinfo', 'Alias', 'varchar', null, '', '', null, '', '', '\0', null, '姓名', null);
INSERT INTO `code_column_config` VALUES ('387', 'bus_customer_other_cardinfo', 'OthIDType', 'varchar', 'IDType', '', '', 'Select', '', '', '\0', null, '证件类型', null);
INSERT INTO `code_column_config` VALUES ('388', 'bus_customer_other_cardinfo', 'OthIDNum', 'varchar', null, '', '', null, '', '', '\0', null, '证件号码', null);
INSERT INTO `code_column_config` VALUES ('389', 'bus_customer_other_cardinfo', 'IDInfoUpDate', 'date', null, '', '', null, '', '', '\0', null, '信息更新日期', null);
INSERT INTO `code_column_config` VALUES ('391', 'bus_customer_cardpipy', 'id1', 'bigint', null, '', '', null, 'PRI', '', '', null, 'id', null);
INSERT INTO `code_column_config` VALUES ('393', 'bus_customer_cardpipy', 'InfRecType', 'varchar', 'InfRecType', '', '', 'Select', '', '', '\0', null, '信息记录类型', null);
INSERT INTO `code_column_config` VALUES ('394', 'bus_customer_cardpipy', 'Name', 'varchar', null, '', '', null, '', '', '\0', null, '姓名', null);
INSERT INTO `code_column_config` VALUES ('395', 'bus_customer_cardpipy', 'IDType', 'varchar', 'IDType', '', '', 'Select', '', '', '\0', null, '证件类型', null);
INSERT INTO `code_column_config` VALUES ('396', 'bus_customer_cardpipy', 'IDNum', 'varchar', null, '', '', null, '', '', '\0', null, '证件号码', null);
INSERT INTO `code_column_config` VALUES ('397', 'bus_customer_cardpipy', 'InfSurcCode', 'varchar', null, '', '', null, '', '', '\0', null, '信息来源编码', null);
INSERT INTO `code_column_config` VALUES ('398', 'bus_customer_cardpipy', 'IDEfctDate', 'date', null, '', '', null, '', '', '\0', null, '证件有效期起始日期', null);
INSERT INTO `code_column_config` VALUES ('399', 'bus_customer_cardpipy', 'IDDueDate', 'date', null, '', '', null, '', '', '\0', null, '证件有效期到期日期', null);
INSERT INTO `code_column_config` VALUES ('400', 'bus_customer_cardpipy', 'IDOrgName', 'varchar', null, '', '', null, '', '', '\0', null, '证件签发机关名称', null);
INSERT INTO `code_column_config` VALUES ('401', 'bus_customer_cardpipy', 'IDDist', 'varchar', null, '', '', null, '', '', '\0', null, '֤证件签发机关所在地行政区划', null);
INSERT INTO `code_column_config` VALUES ('402', 'bus_customer_cardpipy', 'Cimoc', 'varchar', null, '', '', null, '', '', '\0', null, '客户资料维护机构代码', null);
INSERT INTO `code_column_config` VALUES ('403', 'bus_customer_cardpipy', 'RptDate', 'date', null, '', '', null, '', '', '\0', null, '信息报告日期', null);
INSERT INTO `code_column_config` VALUES ('407', 'bus_del_customer_cardpipy', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, 'id', null);
INSERT INTO `code_column_config` VALUES ('409', 'bus_del_customer_cardpipy', 'InfRecType', 'varchar', 'InfRecType', '', '', 'Select', '', '', '\0', null, '信息记录类型', null);
INSERT INTO `code_column_config` VALUES ('410', 'bus_del_customer_cardpipy', 'Name', 'varchar', null, '', '', null, '', '', '\0', null, '姓名', null);
INSERT INTO `code_column_config` VALUES ('411', 'bus_del_customer_cardpipy', 'IDType', 'varchar', 'IDType', '', '', null, '', '', '\0', null, '证件类型', null);
INSERT INTO `code_column_config` VALUES ('412', 'bus_del_customer_cardpipy', 'IDNum', 'varchar', null, '', '', null, '', '', '\0', null, '证件号码', null);
INSERT INTO `code_column_config` VALUES ('413', 'bus_del_customer_cardpipy', 'InfSurcCode', 'varchar', null, '', '', null, '', '', '\0', null, '信息来源编码', null);
INSERT INTO `code_column_config` VALUES ('417', 'bus_del_customer_cardpipy', 'CustomerId', 'varchar', null, '', '', null, '', '', '\0', null, '客户编码', null);
INSERT INTO `code_column_config` VALUES ('418', 'bus_customer_relationship', 'CustomerId', 'varchar', null, '', '', 'Input', '', '', '\0', '=', '客户编号', null);
INSERT INTO `code_column_config` VALUES ('419', 'bus_customer_cardinfos', 'CustomerId', 'varchar', null, '', '', 'Input', '', '', '\0', '=', '客户编码', null);
INSERT INTO `code_column_config` VALUES ('420', 'bus_customer_other_cardinfo', 'CustomerId', 'varchar', null, '', '', 'Input', '', '', '\0', '=', 'customerId', null);
INSERT INTO `code_column_config` VALUES ('421', 'bus_customer_cardpipy', 'CustomerId', 'varchar', null, '', '', 'Input', '', '', '\0', '=', '客户编码', null);
INSERT INTO `code_column_config` VALUES ('422', 'bus_del_customer_info', 'CustomerId', 'varchar', null, '', '', 'Input', '', '', '\0', '=', '客户编号', null);
INSERT INTO `code_column_config` VALUES ('423', 'bus_del_customer_cardpipy', 'UploadDate', 'date', null, '', '', null, '', '', '\0', null, '上报日期', null);
INSERT INTO `code_column_config` VALUES ('424', 'bus_customer_other_cardinfo', 'Create_time', 'datetime', null, '', '', null, '', '', '\0', null, 'create_time', null);
INSERT INTO `code_column_config` VALUES ('425', 'bus_customer_base_info', 'CustomerId', 'varchar', null, '', '', 'Input', '', '', '\0', '=', '客户编', null);
INSERT INTO `code_column_config` VALUES ('426', 'bus_del_customer_cardpipy', 'UploadStats', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('427', 'bus_del_customer_info', 'Uploaddate', 'date', null, '', '', null, '', '', '\0', null, '上传日期', null);
INSERT INTO `code_column_config` VALUES ('428', 'bus_customer_relationship', 'UploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('430', 'bus_del_customer_info', 'Status', 'int', null, '', '', null, '', '', '\0', null, '状态', null);
INSERT INTO `code_column_config` VALUES ('431', 'bus_del_customer_cardpipy', 'Ureate_time', 'datetime', null, '', '', null, '', '', '\0', null, 'create_time', null);
INSERT INTO `code_column_config` VALUES ('433', 'bus_customer_relationship', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('434', 'bus_del_customer_info', 'Create_time', 'datetime', null, '', '', null, '', '', '\0', null, 'create_time', null);
INSERT INTO `code_column_config` VALUES ('435', 'bus_customer_cardinfos', 'Create_time', 'datetime', null, '', '', null, '', '', '\0', null, 'create_time', null);
INSERT INTO `code_column_config` VALUES ('436', 'bus_customer_relationship', 'Create_time', 'datetime', null, '', '', null, '', '', '\0', null, '记录日期', null);
INSERT INTO `code_column_config` VALUES ('437', 'bus_customer_cardpipy', 'UploadDate', 'int', null, '', '', null, '', '', '\0', null, '上报日期', null);
INSERT INTO `code_column_config` VALUES ('438', 'bus_customer_cardpipy', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('439', 'bus_customer_base_info', 'InsertDate', 'date', null, '', '', null, '', '', '\0', null, '记录日期', null);
INSERT INTO `code_column_config` VALUES ('440', 'bus_customer_cardpipy', 'Ureate_time', 'datetime', null, '', '', null, '', '', '\0', null, 'create_time', null);
INSERT INTO `code_column_config` VALUES ('442', 'bus_customer_base_info', 'UploadDate', 'date', null, '', '', null, '', '', '\0', null, '上报日期', null);
INSERT INTO `code_column_config` VALUES ('443', 'bus_customer_base_info', 'UploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('444', 'bus_customer_base_info', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('445', 'bus_customer_base_info', 'Create_time', 'datetime', null, '', '', null, '', '', '\0', null, 'create_time', null);
INSERT INTO `code_column_config` VALUES ('446', 'bus_customer_cardinfos', 'UploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('447', 'bus_customer_cardinfos', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('448', 'bus_customer_base_info', 'UpdateDate', 'date', null, '', '', null, '', '', '\0', null, '更新日期', null);
INSERT INTO `code_column_config` VALUES ('449', 'bus_inctrctinf_ctrctcertrel', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, '', null);
INSERT INTO `code_column_config` VALUES ('450', 'bus_inctrctinf_ctrctcertrel', 'Ctr_id', 'bigint', null, '', '', null, 'MUL', '', '\0', null, '共同受_id', null);
INSERT INTO `code_column_config` VALUES ('451', 'bus_inctrctinf_ctrctcertrel', 'BrerType', 'int', null, '', '', null, '', '', '\0', null, '共同受信人身份类别', null);
INSERT INTO `code_column_config` VALUES ('452', 'bus_inctrctinf_ctrctcertrel', 'CertRelName', 'varchar', null, '', '', null, '', '', '\0', null, '共同受信人名称', null);
INSERT INTO `code_column_config` VALUES ('453', 'bus_inctrctinf_ctrctcertrel', 'CertRelIDType', 'int', null, '', '', null, '', '', '\0', null, '共同受信人身份标识类型', null);
INSERT INTO `code_column_config` VALUES ('454', 'bus_inctrctinf_ctrctcertrel', 'CertRelIDNum', 'varchar', null, '', '', null, '', '', '\0', null, '共同受信人身份标识号码', null);
INSERT INTO `code_column_config` VALUES ('455', 'bus_inacctinf_rltrepymtinf', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, '', null);
INSERT INTO `code_column_config` VALUES ('456', 'bus_inacctinf_rltrepymtinf', 'rit_id', 'bigint', null, '', '', null, 'MUL', '', '\0', null, 'rit_id', null);
INSERT INTO `code_column_config` VALUES ('457', 'bus_inacctinf_rltrepymtinf', 'ArlpName', 'varchar', null, '', '', null, '', '', '\0', null, '责任人名称', null);
INSERT INTO `code_column_config` VALUES ('458', 'bus_inacctinf_rltrepymtinf', 'InfoIDType', 'int', null, '', '', null, '', '', '\0', null, '身份类别', null);
INSERT INTO `code_column_config` VALUES ('459', 'bus_inacctinf_rltrepymtinf', 'ArlpCertType', 'int', null, '', '', null, '', '', '\0', null, '责任人身份标识类型', null);
INSERT INTO `code_column_config` VALUES ('460', 'bus_inacctinf_rltrepymtinf', 'ArlpCertNum', 'varchar', null, '', '', null, '', '', '\0', null, '责任人身份标识号码', null);
INSERT INTO `code_column_config` VALUES ('461', 'bus_inacctinf_rltrepymtinf', 'ArlpType', 'int', null, '', '', null, '', '', '\0', null, '还款责任人类型', null);
INSERT INTO `code_column_config` VALUES ('462', 'bus_inacctinf_rltrepymtinf', 'ArlpAmt', 'decimal', null, '', '', null, '', '', '\0', null, '还款责任金额', null);
INSERT INTO `code_column_config` VALUES ('463', 'bus_inacctinf_rltrepymtinf', 'WartySign', 'int', null, '', '', null, '', '', '\0', null, '联保标志', null);
INSERT INTO `code_column_config` VALUES ('464', 'bus_inacctinf_rltrepymtinf', 'MaxGuarMcc', 'varchar', null, '', '', null, '', '', '\0', null, '保证合同编号', null);
INSERT INTO `code_column_config` VALUES ('465', 'bus_inacctinf_cccinf', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, 'id', null);
INSERT INTO `code_column_config` VALUES ('466', 'bus_inacctinf_cccinf', 'Gua_id', 'bigint', null, '', '', null, 'MUL', '', '\0', null, 'id', null);
INSERT INTO `code_column_config` VALUES ('467', 'bus_inacctinf_cccinf', 'Ccc', 'varchar', null, '', '', null, '', '', '\0', null, '抵（质）押合同标识码', null);
INSERT INTO `code_column_config` VALUES ('468', 'bus_update_acctinfbycode', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, '编号', null);
INSERT INTO `code_column_config` VALUES ('469', 'bus_update_acctinfbycode', 'AccLoanId', 'varchar', null, '', '', null, '', '', '\0', null, '借据编号', null);
INSERT INTO `code_column_config` VALUES ('470', 'bus_update_acctinfbycode', 'InfRecType', 'varchar', null, '', '', null, '', '', '\0', null, '信息记录类型', null);
INSERT INTO `code_column_config` VALUES ('471', 'bus_update_acctinfbycode', 'ModRecCode', 'varchar', null, '', '', null, '', '', '\0', null, '待更正业务标识码', null);
INSERT INTO `code_column_config` VALUES ('472', 'bus_update_acctinfbycode', 'RptDate', 'varchar', null, '', '', null, '', '', '\0', null, '信息报告日期', null);
INSERT INTO `code_column_config` VALUES ('473', 'bus_update_acctinfbycode', 'AcctType', 'varchar', null, '', '', null, '', '', '\0', null, '账户类型', null);
INSERT INTO `code_column_config` VALUES ('474', 'bus_update_acctinfbycode', 'MdfcSgmtCode', 'varchar', null, '', '', null, '', '', '\0', null, '待更正段段标', null);
INSERT INTO `code_column_config` VALUES ('475', 'bus_update_acctinfbycode', 'UploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('476', 'bus_update_acctinfbycode', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('477', 'bus_update_acctinfbycode', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('478', 'bus_inacctinf_cagoftrdinf', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, '', null);
INSERT INTO `code_column_config` VALUES ('479', 'bus_inacctinf_cagoftrdinf', 'Acc_id', 'bigint', null, '', '', null, 'MUL', '', '\0', null, '特殊交_id', null);
INSERT INTO `code_column_config` VALUES ('480', 'bus_inacctinf_cagoftrdinf', 'ChanTranType', 'int', null, '', '', null, '', '', '\0', null, '交易类型', null);
INSERT INTO `code_column_config` VALUES ('481', 'bus_inacctinf_cagoftrdinf', 'TranDate', 'varchar', null, '', '', null, '', '', '\0', null, '交易日期', null);
INSERT INTO `code_column_config` VALUES ('482', 'bus_inacctinf_cagoftrdinf', 'TranAmt', 'decimal', null, '', '', null, '', '', '\0', null, '交易金额', null);
INSERT INTO `code_column_config` VALUES ('483', 'bus_inacctinf_cagoftrdinf', 'DueTranMon', 'int', null, '', '', null, '', '', '\0', null, '到期日期变更月数', null);
INSERT INTO `code_column_config` VALUES ('484', 'bus_inacctinf_cagoftrdinf', 'DetInfo', 'varchar', null, '', '', null, '', '', '\0', null, '交易明细信息', null);
INSERT INTO `code_column_config` VALUES ('485', 'bus_update_inctrctinfbycode', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, '编号', null);
INSERT INTO `code_column_config` VALUES ('486', 'bus_update_inctrctinfbycode', 'AccLoanId', 'varchar', null, '', '', null, '', '', '\0', null, '借据编号', null);
INSERT INTO `code_column_config` VALUES ('487', 'bus_update_inctrctinfbycode', 'InfRecType', 'varchar', null, '', '', null, '', '', '\0', null, '信息记录类型', null);
INSERT INTO `code_column_config` VALUES ('488', 'bus_update_inctrctinfbycode', 'ModRecCode', 'varchar', null, '', '', null, '', '', '\0', null, '待更正业务标识码', null);
INSERT INTO `code_column_config` VALUES ('489', 'bus_update_inctrctinfbycode', 'RptDate', 'varchar', null, '', '', null, '', '', '\0', null, '信息报告日期', null);
INSERT INTO `code_column_config` VALUES ('490', 'bus_update_inctrctinfbycode', 'MdfcSgmtCode', 'varchar', null, '', '', null, '', '', '\0', null, '待更正段段标', null);
INSERT INTO `code_column_config` VALUES ('491', 'bus_update_inctrctinfbycode', 'UploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('492', 'bus_update_inctrctinfbycode', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('493', 'bus_update_inctrctinfbycode', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('494', 'bus_update_inctrctidcagsinf', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, '', null);
INSERT INTO `code_column_config` VALUES ('495', 'bus_update_inctrctidcagsinf', 'InCtrctInfID', 'varchar', null, '', '', null, '', '', '\0', null, '授信协议编号', null);
INSERT INTO `code_column_config` VALUES ('496', 'bus_update_inctrctidcagsinf', 'InfRecType', 'int', null, '', '', null, '', '', '\0', null, '信息记录类型', null);
INSERT INTO `code_column_config` VALUES ('497', 'bus_update_inctrctidcagsinf', 'OdBnesCode', 'varchar', null, '', '', null, '', '', '\0', null, '原业务标识码', null);
INSERT INTO `code_column_config` VALUES ('498', 'bus_update_inctrctidcagsinf', 'NwBnesCode', 'varchar', null, '', '', null, '', '', '\0', null, '新业务标识码', null);
INSERT INTO `code_column_config` VALUES ('499', 'bus_update_inctrctidcagsinf', 'UploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('500', 'bus_update_inctrctidcagsinf', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('501', 'bus_update_inctrctidcagsinf', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('502', 'bus_del_inctrctentdel', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, 'id', null);
INSERT INTO `code_column_config` VALUES ('503', 'bus_del_inctrctentdel', 'InCtrctInfID', 'varchar', null, '', '', null, '', '', '\0', null, '授信协议编号', null);
INSERT INTO `code_column_config` VALUES ('504', 'bus_del_inctrctentdel', 'InfRecTpTp', 'int', null, '', '', null, '', '', '\0', null, '信息记录类型', null);
INSERT INTO `code_column_config` VALUES ('505', 'bus_del_inctrctentdel', 'DelRecCode', 'varchar', null, '', '', null, '', '', '\0', null, '待删除业务标识码', null);
INSERT INTO `code_column_config` VALUES ('506', 'bus_del_inctrctentdel', 'UploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('507', 'bus_del_inctrctentdel', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('508', 'bus_del_inctrctentdel', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('509', 'bus_del_inctrctdel', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, 'id', null);
INSERT INTO `code_column_config` VALUES ('510', 'bus_del_inctrctdel', 'InCtrctInfID', 'varchar', null, '', '', null, '', '', '\0', null, '授信协议编号', null);
INSERT INTO `code_column_config` VALUES ('511', 'bus_del_inctrctdel', 'InfRecType', 'int', null, '', '', null, '', '', '\0', null, '信息记录类型', null);
INSERT INTO `code_column_config` VALUES ('512', 'bus_del_inctrctdel', 'DelRecCode', 'varchar', null, '', '', null, '', '', '\0', null, '待删除业务标识码', null);
INSERT INTO `code_column_config` VALUES ('513', 'bus_del_inctrctdel', 'DelSgmtCode', 'varchar', null, '', '', null, '', '', '\0', null, '待删除段段标', null);
INSERT INTO `code_column_config` VALUES ('514', 'bus_del_inctrctdel', 'DelStartDate', 'varchar', null, '', '', null, '', '', '\0', null, '待删除起始日期', null);
INSERT INTO `code_column_config` VALUES ('515', 'bus_del_inctrctdel', 'DelEndDate', 'varchar', null, '', '', null, '', '', '\0', null, '待删除结束日期', null);
INSERT INTO `code_column_config` VALUES ('516', 'bus_del_inctrctdel', 'UploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('517', 'bus_del_inctrctdel', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('518', 'bus_del_inctrctdel', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, 'create_time', null);
INSERT INTO `code_column_config` VALUES ('519', 'bus_del_inacctentdel', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, '', null);
INSERT INTO `code_column_config` VALUES ('520', 'bus_del_inacctentdel', 'AccLoanId', 'varchar', null, '', '', null, '', '', '\0', null, '借据编号', null);
INSERT INTO `code_column_config` VALUES ('521', 'bus_del_inacctentdel', 'InfRecType', 'int', null, '', '', null, '', '', '\0', null, '信息记录类型', null);
INSERT INTO `code_column_config` VALUES ('522', 'bus_del_inacctentdel', 'DelRecCode', 'varchar', null, '', '', null, '', '', '\0', null, '待删除业务标识码', null);
INSERT INTO `code_column_config` VALUES ('523', 'bus_del_inacctentdel', 'UploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('524', 'bus_del_inacctentdel', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('525', 'bus_del_inacctentdel', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, 'create_time', null);
INSERT INTO `code_column_config` VALUES ('526', 'bus_del_inacctdel', 'id', 'varchar', null, '', '', null, 'PRI', '', '', null, '', null);
INSERT INTO `code_column_config` VALUES ('527', 'bus_del_inacctdel', 'AccLoanId', 'varchar', null, '', '', null, '', '', '\0', null, '借据编号', null);
INSERT INTO `code_column_config` VALUES ('528', 'bus_del_inacctdel', 'InfRecType', 'int', null, '', '', null, '', '', '\0', null, '信息记录类型', null);
INSERT INTO `code_column_config` VALUES ('529', 'bus_del_inacctdel', 'DelRecCode', 'varchar', null, '', '', null, '', '', '\0', null, '待删除业务标识码', null);
INSERT INTO `code_column_config` VALUES ('530', 'bus_del_inacctdel', 'DelSgmtCode', 'varchar', null, '', '', null, '', '', '\0', null, '待删除段段标', null);
INSERT INTO `code_column_config` VALUES ('531', 'bus_del_inacctdel', 'DelStartDate', 'varchar', null, '', '', null, '', '', '\0', null, '待删除起始日期', null);
INSERT INTO `code_column_config` VALUES ('532', 'bus_del_inacctdel', 'DelEndDate', 'varchar', null, '', '', null, '', '', '\0', null, '待删除结束日期', null);
INSERT INTO `code_column_config` VALUES ('533', 'bus_del_inacctdel', 'UploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('534', 'bus_del_inacctdel', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('535', 'bus_del_inacctdel', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, 'create_time', null);
INSERT INTO `code_column_config` VALUES ('536', 'bus_inspcevtdscinf', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, '', null);
INSERT INTO `code_column_config` VALUES ('537', 'bus_inspcevtdscinf', 'AccLoanId', 'varchar', null, '', '', null, '', '', '\0', null, '借据编号', null);
INSERT INTO `code_column_config` VALUES ('538', 'bus_inspcevtdscinf', 'InfRecType', 'int', null, '', '', null, '', '', '\0', null, '信息记录类型', null);
INSERT INTO `code_column_config` VALUES ('539', 'bus_inspcevtdscinf', 'AcctCode', 'varchar', null, '', '', null, '', '', '\0', null, '账户标识码', null);
INSERT INTO `code_column_config` VALUES ('540', 'bus_inspcevtdscinf', 'OpetnType', 'int', null, '', '', null, '', '', '\0', null, '事件类型', null);
INSERT INTO `code_column_config` VALUES ('541', 'bus_inspcevtdscinf', 'Month', 'varchar', null, '', '', null, '', '', '\0', null, '发生月份', null);
INSERT INTO `code_column_config` VALUES ('542', 'bus_inspcevtdscinf', 'Flag', 'int', null, '', '', null, '', '', '\0', null, '生效标志', null);
INSERT INTO `code_column_config` VALUES ('543', 'bus_inspcevtdscinf', 'RptDate', 'varchar', null, '', '', null, '', '', '\0', null, '信息报告日期', null);
INSERT INTO `code_column_config` VALUES ('544', 'bus_inspcevtdscinf', 'UploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('545', 'bus_inspcevtdscinf', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('546', 'bus_inspcevtdscinf', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('547', 'bus_inctrctinf_ctrctcertrelsgmt', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, 'id', null);
INSERT INTO `code_column_config` VALUES ('548', 'bus_inctrctinf_ctrctcertrelsgmt', 'InCtrctInfID', 'varchar', null, '', '', null, '', '', '\0', null, '授信协议编号', null);
INSERT INTO `code_column_config` VALUES ('549', 'bus_inctrctinf_ctrctcertrelsgmt', 'bus_id', 'bigint', null, '', '', null, '', '', '\0', null, '对应业务操作的主键', null);
INSERT INTO `code_column_config` VALUES ('550', 'bus_inctrctinf_ctrctcertrelsgmt', 'BrerNm', 'int', null, '', '', null, '', '', '\0', null, '共同受信人个数', null);
INSERT INTO `code_column_config` VALUES ('551', 'bus_inctrctinf_ctrctcertrelsgmt', 'UploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('552', 'bus_inctrctinf_ctrctcertrelsgmt', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('553', 'bus_inctrctinf_ctrctcertrelsgmt', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('554', 'bus_inctrctinf_ctrctbssgmt', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, '', null);
INSERT INTO `code_column_config` VALUES ('555', 'bus_inctrctinf_ctrctbssgmt', 'InCtrctInfID', 'varchar', null, '', '', null, '', '', '\0', null, '授信协议编号', null);
INSERT INTO `code_column_config` VALUES ('556', 'bus_inctrctinf_ctrctbssgmt', 'bus_id', 'bigint', null, '', '', null, '', '', '\0', null, '对应业务操作的主键', null);
INSERT INTO `code_column_config` VALUES ('557', 'bus_inctrctinf_ctrctbssgmt', 'InfRecType', 'int', null, '', '', null, '', '', '\0', null, '信息记录类型', null);
INSERT INTO `code_column_config` VALUES ('558', 'bus_inctrctinf_ctrctbssgmt', 'ContractCode', 'varchar', null, '', '', null, '', '', '\0', null, '授信协议标识码', null);
INSERT INTO `code_column_config` VALUES ('559', 'bus_inctrctinf_ctrctbssgmt', 'RptDate', 'varchar', null, '', '', null, '', '', '\0', null, '信息报告日期', null);
INSERT INTO `code_column_config` VALUES ('560', 'bus_inctrctinf_ctrctbssgmt', 'RptDateCode', 'int', null, '', '', null, '', '', '\0', null, '报告时点说明代码', null);
INSERT INTO `code_column_config` VALUES ('561', 'bus_inctrctinf_ctrctbssgmt', 'Name', 'varchar', null, '', '', null, '', '', '\0', null, '姓名', null);
INSERT INTO `code_column_config` VALUES ('562', 'bus_inctrctinf_ctrctbssgmt', 'IDType', 'int', null, '', '', null, '', '', '\0', null, '证件类型', null);
INSERT INTO `code_column_config` VALUES ('563', 'bus_inctrctinf_ctrctbssgmt', 'IDNum', 'varchar', null, '', '', null, '', '', '\0', null, '证件号码', null);
INSERT INTO `code_column_config` VALUES ('564', 'bus_inctrctinf_ctrctbssgmt', 'MngmtOrgCode', 'varchar', null, '', '', null, '', '', '\0', null, '业务管理机构代码', null);
INSERT INTO `code_column_config` VALUES ('565', 'bus_inctrctinf_ctrctbssgmt', 'UploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('566', 'bus_inctrctinf_ctrctbssgmt', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('567', 'bus_inctrctinf_ctrctbssgmt', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('568', 'bus_inctrctinf_creditlimsgmt', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, '', null);
INSERT INTO `code_column_config` VALUES ('569', 'bus_inctrctinf_creditlimsgmt', 'InCtrctInfID', 'varchar', null, '', '', null, '', '', '\0', null, '授信协议编号', null);
INSERT INTO `code_column_config` VALUES ('570', 'bus_inctrctinf_creditlimsgmt', 'bus_id', 'bigint', null, '', '', null, '', '', '\0', null, '对应业务操作的主键', null);
INSERT INTO `code_column_config` VALUES ('571', 'bus_inctrctinf_creditlimsgmt', 'CreditLimType', 'int', null, '', '', null, '', '', '\0', null, '授信额度类型', null);
INSERT INTO `code_column_config` VALUES ('572', 'bus_inctrctinf_creditlimsgmt', 'LimLoopFlg', 'int', null, '', '', null, '', '', '\0', null, '额度循环标志', null);
INSERT INTO `code_column_config` VALUES ('573', 'bus_inctrctinf_creditlimsgmt', 'CreditLim', 'decimal', null, '', '', null, '', '', '\0', null, '授信额度', null);
INSERT INTO `code_column_config` VALUES ('574', 'bus_inctrctinf_creditlimsgmt', 'Cy', 'varchar', null, '', '', null, '', '', '\0', null, '币种', null);
INSERT INTO `code_column_config` VALUES ('575', 'bus_inctrctinf_creditlimsgmt', 'ConEffDate', 'varchar', null, '', '', null, '', '', '\0', null, '额度生效日期', null);
INSERT INTO `code_column_config` VALUES ('576', 'bus_inctrctinf_creditlimsgmt', 'ConExpDate', 'varchar', null, '', '', null, '', '', '\0', null, '额度到期日期', null);
INSERT INTO `code_column_config` VALUES ('577', 'bus_inctrctinf_creditlimsgmt', 'ConStatus', 'int', null, '', '', null, '', '', '\0', null, '额度状态', null);
INSERT INTO `code_column_config` VALUES ('578', 'bus_inctrctinf_creditlimsgmt', 'CreditRest', 'decimal', null, '', '', null, '', '', '\0', null, '授信限额', null);
INSERT INTO `code_column_config` VALUES ('579', 'bus_inctrctinf_creditlimsgmt', 'CreditRestCode', 'varchar', null, '', '', null, '', '', '\0', null, '授信限额编号', null);
INSERT INTO `code_column_config` VALUES ('580', 'bus_inctrctinf_creditlimsgmt', 'UploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('581', 'bus_inctrctinf_creditlimsgmt', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('582', 'bus_inctrctinf_creditlimsgmt', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('583', 'bus_inctrctinf', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, '编号', null);
INSERT INTO `code_column_config` VALUES ('584', 'bus_inctrctinf', 'InCtrctInfID', 'varchar', null, '', '', null, '', '', '\0', null, '授信协议编号', null);
INSERT INTO `code_column_config` VALUES ('585', 'bus_inctrctinf', 'status', 'int', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('586', 'bus_inctrctinf', 'InAccInfid', 'int', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('587', 'bus_inctrctinf', 'UploadTime', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('588', 'bus_inctrctinf', 'CreateTime', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('589', 'bus_inctrctinf', 'UpdateTime', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('590', 'bus_inacctinf_specprdsgmt', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, '', null);
INSERT INTO `code_column_config` VALUES ('591', 'bus_inacctinf_specprdsgmt', 'AccLoanId', 'varchar', null, '', '', null, '', '', '\0', null, '借据编号', null);
INSERT INTO `code_column_config` VALUES ('592', 'bus_inacctinf_specprdsgmt', 'bus_id', 'bigint', null, '', '', null, '', '', '\0', null, '对应业务操作的主键', null);
INSERT INTO `code_column_config` VALUES ('593', 'bus_inacctinf_specprdsgmt', 'SpecLine', 'decimal', null, '', '', null, '', '', '\0', null, '大额专项分期额度', null);
INSERT INTO `code_column_config` VALUES ('594', 'bus_inacctinf_specprdsgmt', 'SpecEfctDate', 'varchar', null, '', '', null, '', '', '\0', null, '专项分期生效日期', null);
INSERT INTO `code_column_config` VALUES ('595', 'bus_inacctinf_specprdsgmt', 'SpecEndDate', 'varchar', null, '', '', null, '', '', '\0', null, '专项分期到期日期', null);
INSERT INTO `code_column_config` VALUES ('596', 'bus_inacctinf_specprdsgmt', 'UsedInstAmt', 'decimal', null, '', '', null, '', '', '\0', null, '已用分期金额', null);
INSERT INTO `code_column_config` VALUES ('597', 'bus_inacctinf_specprdsgmt', 'UploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('598', 'bus_inacctinf_specprdsgmt', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('599', 'bus_inacctinf_specprdsgmt', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('600', 'bus_inacctinf_rltrepymtinfsgmt', 'rit_id', 'bigint', null, '', '', null, 'PRI', '', '', null, 'rit_id', null);
INSERT INTO `code_column_config` VALUES ('601', 'bus_inacctinf_rltrepymtinfsgmt', 'AccLoanId', 'varchar', null, '', '', null, '', '', '\0', null, '借据编号', null);
INSERT INTO `code_column_config` VALUES ('602', 'bus_inacctinf_rltrepymtinfsgmt', 'bus_id', 'bigint', null, '', '', null, '', '', '\0', null, '对应业务操作的主键', null);
INSERT INTO `code_column_config` VALUES ('603', 'bus_inacctinf_rltrepymtinfsgmt', 'RltRepymtNm', 'int', null, '', '', null, '', '', '\0', null, '责任人个数', null);
INSERT INTO `code_column_config` VALUES ('604', 'bus_inacctinf_rltrepymtinfsgmt', 'UploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('605', 'bus_inacctinf_rltrepymtinfsgmt', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('606', 'bus_inacctinf_rltrepymtinfsgmt', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('607', 'bus_inacctinf_origcreditorinfsgmt', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, '', null);
INSERT INTO `code_column_config` VALUES ('608', 'bus_inacctinf_origcreditorinfsgmt', 'AccLoanId', 'varchar', null, '', '', null, '', '', '\0', null, '借据编号', null);
INSERT INTO `code_column_config` VALUES ('609', 'bus_inacctinf_origcreditorinfsgmt', 'bus_id', 'bigint', null, '', '', null, '', '', '\0', null, '对应业务操作的主键', null);
INSERT INTO `code_column_config` VALUES ('610', 'bus_inacctinf_origcreditorinfsgmt', 'InitCredName', 'varchar', null, '', '', null, '', '', '\0', null, '初始债权人名称', null);
INSERT INTO `code_column_config` VALUES ('611', 'bus_inacctinf_origcreditorinfsgmt', 'InitCredOrgNm', 'varchar', null, '', '', null, '', '', '\0', null, '初始债权人机构代码', null);
INSERT INTO `code_column_config` VALUES ('612', 'bus_inacctinf_origcreditorinfsgmt', 'OrigDbtCate', 'int', null, '', '', null, '', '', '\0', null, '原债务种类', null);
INSERT INTO `code_column_config` VALUES ('613', 'bus_inacctinf_origcreditorinfsgmt', 'InitRpySts', 'int', null, '', '', null, '', '', '\0', null, '债权转移时的还款状态', null);
INSERT INTO `code_column_config` VALUES ('614', 'bus_inacctinf_origcreditorinfsgmt', 'uploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('615', 'bus_inacctinf_origcreditorinfsgmt', 'uploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('616', 'bus_inacctinf_origcreditorinfsgmt', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('617', 'bus_inacctinf_guarmotgacltalctrctinfsgmt', 'Gua_id', 'bigint', null, '', '', null, 'PRI', '', '', null, 'id', null);
INSERT INTO `code_column_config` VALUES ('618', 'bus_inacctinf_guarmotgacltalctrctinfsgmt', 'AccLoanId', 'varchar', null, '', '', null, '', '', '\0', null, '借据编号', null);
INSERT INTO `code_column_config` VALUES ('619', 'bus_inacctinf_guarmotgacltalctrctinfsgmt', 'bus_id', 'bigint', null, '', '', null, '', '', '\0', null, '对应业务操作的主键', null);
INSERT INTO `code_column_config` VALUES ('620', 'bus_inacctinf_guarmotgacltalctrctinfsgmt', 'CcNm', 'int', null, '', '', null, '', '', '\0', null, '抵质押合同个数', null);
INSERT INTO `code_column_config` VALUES ('621', 'bus_inacctinf_guarmotgacltalctrctinfsgmt', 'UploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('622', 'bus_inacctinf_guarmotgacltalctrctinfsgmt', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('623', 'bus_inacctinf_guarmotgacltalctrctinfsgmt', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('624', 'bus_inacctinf_acctspectrstdspnsgmt', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, '', null);
INSERT INTO `code_column_config` VALUES ('625', 'bus_inacctinf_acctspectrstdspnsgmt', 'AccLoanId', 'varchar', null, '', '', null, '', '', '\0', null, '借据编号', null);
INSERT INTO `code_column_config` VALUES ('626', 'bus_inacctinf_acctspectrstdspnsgmt', 'bus_id', 'bigint', null, '', '', null, '', '', '\0', null, '对应业务操作的主键', null);
INSERT INTO `code_column_config` VALUES ('627', 'bus_inacctinf_acctspectrstdspnsgmt', 'CagOfTrdNm', 'int', null, '', '', null, '', '', '\0', null, '交易个数', null);
INSERT INTO `code_column_config` VALUES ('628', 'bus_inacctinf_acctspectrstdspnsgmt', 'UploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('629', 'bus_inacctinf_acctspectrstdspnsgmt', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('630', 'bus_inacctinf_acctspectrstdspnsgmt', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('631', 'bus_inacctinf_acctmthlyblginfsgmt', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, '', null);
INSERT INTO `code_column_config` VALUES ('632', 'bus_inacctinf_acctmthlyblginfsgmt', 'AccLoanId', 'varchar', null, '', '', null, '', '', '\0', null, '借据编号', null);
INSERT INTO `code_column_config` VALUES ('633', 'bus_inacctinf_acctmthlyblginfsgmt', 'bus_id', 'bigint', null, '', '', null, '', '', '\0', null, '对应业务操作的主键', null);
INSERT INTO `code_column_config` VALUES ('634', 'bus_inacctinf_acctmthlyblginfsgmt', 'Month', 'varchar', null, '', '', null, '', '', '\0', null, '月份', null);
INSERT INTO `code_column_config` VALUES ('635', 'bus_inacctinf_acctmthlyblginfsgmt', 'SettDate', 'varchar', null, '', '', null, '', '', '\0', null, '结算/应还款日', null);
INSERT INTO `code_column_config` VALUES ('636', 'bus_inacctinf_acctmthlyblginfsgmt', 'AcctStatus', 'int', null, '', '', null, '', '', '\0', null, '账户状态', null);
INSERT INTO `code_column_config` VALUES ('637', 'bus_inacctinf_acctmthlyblginfsgmt', 'AcctBal', 'decimal', null, '', '', null, '', '', '\0', null, '余额', null);
INSERT INTO `code_column_config` VALUES ('638', 'bus_inacctinf_acctmthlyblginfsgmt', 'NotIsuBal', 'decimal', null, '', '', null, '', '', '\0', null, '未出单的大额专项分期余额', null);
INSERT INTO `code_column_config` VALUES ('639', 'bus_inacctinf_acctmthlyblginfsgmt', 'RemRepPrd', 'int', null, '', '', null, '', '', '\0', null, '剩余还款期数', null);
INSERT INTO `code_column_config` VALUES ('640', 'bus_inacctinf_acctmthlyblginfsgmt', 'FiveCate', 'int', null, '', '', null, '', '', '\0', null, '五级分类', null);
INSERT INTO `code_column_config` VALUES ('641', 'bus_inacctinf_acctmthlyblginfsgmt', 'FiveCateAdjDate', 'varchar', null, '', '', null, '', '', '\0', null, '五级分类认定日期', null);
INSERT INTO `code_column_config` VALUES ('642', 'bus_inacctinf_acctmthlyblginfsgmt', 'RpyStatus', 'int', null, '', '', null, '', '', '\0', null, '当前还款状态', null);
INSERT INTO `code_column_config` VALUES ('643', 'bus_inacctinf_acctmthlyblginfsgmt', 'RpyPrct', 'int', null, '', '', null, '', '', '\0', null, '实际还款百分比', null);
INSERT INTO `code_column_config` VALUES ('644', 'bus_inacctinf_acctmthlyblginfsgmt', 'OverdPrd', 'int', null, '', '', null, '', '', '\0', null, '当前逾期期数', null);
INSERT INTO `code_column_config` VALUES ('645', 'bus_inacctinf_acctmthlyblginfsgmt', 'TotOverd', 'decimal', null, '', '', null, '', '', '\0', null, '当前逾期总额', null);
INSERT INTO `code_column_config` VALUES ('646', 'bus_inacctinf_acctmthlyblginfsgmt', 'Oved31_60Princ', 'decimal', null, '', '', null, '', '', '\0', null, '逾期31-60天未归还本金', null);
INSERT INTO `code_column_config` VALUES ('647', 'bus_inacctinf_acctmthlyblginfsgmt', 'Oved61_90Princ', 'decimal', null, '', '', null, '', '', '\0', null, '逾期61-90天未归还本金', null);
INSERT INTO `code_column_config` VALUES ('648', 'bus_inacctinf_acctmthlyblginfsgmt', 'Oved91_180Princ', 'decimal', null, '', '', null, '', '', '\0', null, '逾期91-180天未归还本金', null);
INSERT INTO `code_column_config` VALUES ('649', 'bus_inacctinf_acctmthlyblginfsgmt', 'OvedPrinc180', 'decimal', null, '', '', null, '', '', '\0', null, '逾期180天以上未归还本金', null);
INSERT INTO `code_column_config` VALUES ('650', 'bus_inacctinf_acctmthlyblginfsgmt', 'OvedrawBaOve180', 'decimal', null, '', '', null, '', '', '\0', null, '透支180天以上未还余额', null);
INSERT INTO `code_column_config` VALUES ('651', 'bus_inacctinf_acctmthlyblginfsgmt', 'CurRpyAmt', 'decimal', null, '', '', null, '', '', '\0', null, '本月应还款金额', null);
INSERT INTO `code_column_config` VALUES ('652', 'bus_inacctinf_acctmthlyblginfsgmt', 'ActRpyAmt', 'decimal', null, '', '', null, '', '', '\0', null, '本月实际还款金额', null);
INSERT INTO `code_column_config` VALUES ('653', 'bus_inacctinf_acctmthlyblginfsgmt', 'LatRpyDate', 'varchar', null, '', '', null, '', '', '\0', null, '最近一次实际还款日期', null);
INSERT INTO `code_column_config` VALUES ('654', 'bus_inacctinf_acctmthlyblginfsgmt', 'CloseDate', 'varchar', null, '', '', null, '', '', '\0', null, '账户关闭日期', null);
INSERT INTO `code_column_config` VALUES ('655', 'bus_inacctinf_acctmthlyblginfsgmt', 'UploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('656', 'bus_inacctinf_acctmthlyblginfsgmt', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('657', 'bus_inacctinf_acctmthlyblginfsgmt', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('658', 'bus_inacctinf_acctdbtinfsgmt', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, '', null);
INSERT INTO `code_column_config` VALUES ('659', 'bus_inacctinf_acctdbtinfsgmt', 'AccLoanId', 'varchar', null, '', '', null, '', '', '\0', null, '借据编号', null);
INSERT INTO `code_column_config` VALUES ('660', 'bus_inacctinf_acctdbtinfsgmt', 'bus_id', 'bigint', null, '', '', null, '', '', '\0', null, '对应业务操作的主键', null);
INSERT INTO `code_column_config` VALUES ('661', 'bus_inacctinf_acctdbtinfsgmt', 'AcctStatus', 'int', null, '', '', null, '', '', '\0', null, '账户状态', null);
INSERT INTO `code_column_config` VALUES ('662', 'bus_inacctinf_acctdbtinfsgmt', 'AcctBal', 'decimal', null, '', '', null, '', '', '\0', null, '余额', null);
INSERT INTO `code_column_config` VALUES ('663', 'bus_inacctinf_acctdbtinfsgmt', 'FiveCate', 'int', null, '', '', null, '', '', '\0', null, '五级分类', null);
INSERT INTO `code_column_config` VALUES ('664', 'bus_inacctinf_acctdbtinfsgmt', 'FiveCateAdjDate', 'varchar', null, '', '', null, '', '', '\0', null, '五级分类认定日期', null);
INSERT INTO `code_column_config` VALUES ('665', 'bus_inacctinf_acctdbtinfsgmt', 'RemRepPrd', 'int', null, '', '', null, '', '', '\0', null, '剩余还款期数', null);
INSERT INTO `code_column_config` VALUES ('666', 'bus_inacctinf_acctdbtinfsgmt', 'RpyStatus', 'varchar', null, '', '', null, '', '', '\0', null, '当前还款状态', null);
INSERT INTO `code_column_config` VALUES ('667', 'bus_inacctinf_acctdbtinfsgmt', 'OverdPrd', 'int', null, '', '', null, '', '', '\0', null, '当前逾期期数', null);
INSERT INTO `code_column_config` VALUES ('668', 'bus_inacctinf_acctdbtinfsgmt', 'TotOverd', 'decimal', null, '', '', null, '', '', '\0', null, '当前逾期总额', null);
INSERT INTO `code_column_config` VALUES ('669', 'bus_inacctinf_acctdbtinfsgmt', 'LatRpyAmt', 'decimal', null, '', '', null, '', '', '\0', null, '最近一次实际还款金额', null);
INSERT INTO `code_column_config` VALUES ('670', 'bus_inacctinf_acctdbtinfsgmt', 'LatRpyDate', 'varchar', null, '', '', null, '', '', '\0', null, '最近一次实际还款日期1', null);
INSERT INTO `code_column_config` VALUES ('671', 'bus_inacctinf_acctdbtinfsgmt', 'CloseDate', 'varchar', null, '', '', null, '', '', '\0', null, '账户关闭日期', null);
INSERT INTO `code_column_config` VALUES ('672', 'bus_inacctinf_acctdbtinfsgmt', 'UploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('673', 'bus_inacctinf_acctdbtinfsgmt', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('674', 'bus_inacctinf_acctdbtinfsgmt', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('675', 'bus_inacctinf_acctcredsgmt', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, '编号', null);
INSERT INTO `code_column_config` VALUES ('676', 'bus_inacctinf_acctcredsgmt', 'AccLoanId', 'varchar', null, '', '', null, '', '', '\0', null, '借据编号', null);
INSERT INTO `code_column_config` VALUES ('677', 'bus_inacctinf_acctcredsgmt', 'bus_id', 'bigint', null, '', '', null, '', '', '\0', null, '对应业务操作的主键', null);
INSERT INTO `code_column_config` VALUES ('678', 'bus_inacctinf_acctcredsgmt', 'Mcc', 'varchar', null, '', '', null, '', '', '\0', null, '授信协议标识码', null);
INSERT INTO `code_column_config` VALUES ('679', 'bus_inacctinf_acctcredsgmt', 'UploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('680', 'bus_inacctinf_acctcredsgmt', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('681', 'bus_inacctinf_acctcredsgmt', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('682', 'bus_inacctinf_acctbssgmt', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, '编号', null);
INSERT INTO `code_column_config` VALUES ('683', 'bus_inacctinf_acctbssgmt', 'AccLoanId', 'varchar', null, '', '', null, '', '', '\0', null, '借据编号', null);
INSERT INTO `code_column_config` VALUES ('684', 'bus_inacctinf_acctbssgmt', 'bus_id', 'bigint', null, '', '', null, '', '', '\0', null, '对应业务操作的主键', null);
INSERT INTO `code_column_config` VALUES ('685', 'bus_inacctinf_acctbssgmt', 'InfRecType', 'int', null, '', '', null, '', '', '\0', null, '信息记录类型', null);
INSERT INTO `code_column_config` VALUES ('686', 'bus_inacctinf_acctbssgmt', 'AcctType', 'int', null, '', '', null, '', '', '\0', null, '账户类型', null);
INSERT INTO `code_column_config` VALUES ('687', 'bus_inacctinf_acctbssgmt', 'AcctCode', 'varchar', null, '', '', null, '', '', '\0', null, '个人账户标识码', null);
INSERT INTO `code_column_config` VALUES ('688', 'bus_inacctinf_acctbssgmt', 'RptDate', 'varchar', null, '', '', null, '', '', '\0', null, '信息报告日期', null);
INSERT INTO `code_column_config` VALUES ('689', 'bus_inacctinf_acctbssgmt', 'RptDateCode', 'varchar', null, '', '', null, '', '', '\0', null, '报告时点说明代码', null);
INSERT INTO `code_column_config` VALUES ('690', 'bus_inacctinf_acctbssgmt', 'Name', 'varchar', null, '', '', null, '', '', '\0', null, '姓名', null);
INSERT INTO `code_column_config` VALUES ('691', 'bus_inacctinf_acctbssgmt', 'IDType', 'int', null, '', '', null, '', '', '\0', null, '证件类型', null);
INSERT INTO `code_column_config` VALUES ('692', 'bus_inacctinf_acctbssgmt', 'IDNum', 'varchar', null, '', '', null, '', '', '\0', null, '证件号码', null);
INSERT INTO `code_column_config` VALUES ('693', 'bus_inacctinf_acctbssgmt', 'MngmtOrgCode', 'varchar', null, '', '', null, '', '', '\0', null, '业务管理机构代码', null);
INSERT INTO `code_column_config` VALUES ('694', 'bus_inacctinf_acctbssgmt', 'UploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('695', 'bus_inacctinf_acctbssgmt', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('696', 'bus_inacctinf_acctbssgmt', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('697', 'bus_inacctinf_acctbsinfsgmt', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, '', null);
INSERT INTO `code_column_config` VALUES ('698', 'bus_inacctinf_acctbsinfsgmt', 'AccLoanId', 'varchar', null, '', '', null, '', '', '\0', null, '借据编号', null);
INSERT INTO `code_column_config` VALUES ('699', 'bus_inacctinf_acctbsinfsgmt', 'bus_id', 'bigint', null, '', '', null, '', '', '\0', null, '对应业务操作的主键', null);
INSERT INTO `code_column_config` VALUES ('700', 'bus_inacctinf_acctbsinfsgmt', 'BusiLines', 'int', null, '', '', null, '', '', '\0', null, '借贷业务大类', null);
INSERT INTO `code_column_config` VALUES ('701', 'bus_inacctinf_acctbsinfsgmt', 'BusiDtlLines', 'int', null, '', '', null, '', '', '\0', null, '借贷业务种类细分', null);
INSERT INTO `code_column_config` VALUES ('702', 'bus_inacctinf_acctbsinfsgmt', 'OpenDate', 'varchar', null, '', '', null, '', '', '\0', null, '开户日期', null);
INSERT INTO `code_column_config` VALUES ('703', 'bus_inacctinf_acctbsinfsgmt', 'Cy', 'varchar', null, '', '', null, '', '', '\0', null, '币种', null);
INSERT INTO `code_column_config` VALUES ('704', 'bus_inacctinf_acctbsinfsgmt', 'AcctCredLine', 'decimal', null, '', '', null, '', '', '\0', null, '信用额度', null);
INSERT INTO `code_column_config` VALUES ('705', 'bus_inacctinf_acctbsinfsgmt', 'LoanAmt', 'decimal', null, '', '', null, '', '', '\0', null, '借款金额', null);
INSERT INTO `code_column_config` VALUES ('706', 'bus_inacctinf_acctbsinfsgmt', 'Flag', 'int', null, '', '', null, '', '', '\0', null, '分次放款标志', null);
INSERT INTO `code_column_config` VALUES ('707', 'bus_inacctinf_acctbsinfsgmt', 'DueDate', 'varchar', null, '', '', null, '', '', '\0', null, '到期日期', null);
INSERT INTO `code_column_config` VALUES ('708', 'bus_inacctinf_acctbsinfsgmt', 'RepayMode', 'int', null, '', '', null, '', '', '\0', null, '还款方式', null);
INSERT INTO `code_column_config` VALUES ('709', 'bus_inacctinf_acctbsinfsgmt', 'RepayFreqcy', 'varchar', null, '', '', null, '', '', '\0', null, '还款频率', null);
INSERT INTO `code_column_config` VALUES ('710', 'bus_inacctinf_acctbsinfsgmt', 'RepayPrd', 'int', null, '', '', null, '', '', '\0', null, '还款期数', null);
INSERT INTO `code_column_config` VALUES ('711', 'bus_inacctinf_acctbsinfsgmt', 'ApplyBusiDist', 'varchar', null, '', '', null, '', '', '\0', null, '业务申请地行政区划代码', null);
INSERT INTO `code_column_config` VALUES ('712', 'bus_inacctinf_acctbsinfsgmt', 'GuarMode', 'int', null, '', '', null, '', '', '\0', null, '担保方式', null);
INSERT INTO `code_column_config` VALUES ('713', 'bus_inacctinf_acctbsinfsgmt', 'OthRepyGuarWay', 'int', null, '', '', null, '', '', '\0', null, '其他还款保证方式', null);
INSERT INTO `code_column_config` VALUES ('714', 'bus_inacctinf_acctbsinfsgmt', 'AssetTrandFlag', 'int', null, '', '', null, '', '', '\0', null, '资产转让标志', null);
INSERT INTO `code_column_config` VALUES ('715', 'bus_inacctinf_acctbsinfsgmt', 'FundSou', 'int', null, '', '', null, '', '', '\0', null, '业务经营类型', null);
INSERT INTO `code_column_config` VALUES ('716', 'bus_inacctinf_acctbsinfsgmt', 'LoanForm', 'int', null, '', '', null, '', '', '\0', null, '贷款发放形式', null);
INSERT INTO `code_column_config` VALUES ('717', 'bus_inacctinf_acctbsinfsgmt', 'CreditID', 'varchar', null, '', '', null, '', '', '\0', null, '卡片标识号', null);
INSERT INTO `code_column_config` VALUES ('718', 'bus_inacctinf_acctbsinfsgmt', 'LoanConCode', 'varchar', null, '', '', null, '', '', '\0', null, '贷款合同编号', null);
INSERT INTO `code_column_config` VALUES ('719', 'bus_inacctinf_acctbsinfsgmt', 'FirstHouLoanFlag', 'varchar', null, '', '', null, '', '', '\0', null, '是否为首套住房贷款', null);
INSERT INTO `code_column_config` VALUES ('720', 'bus_inacctinf_acctbsinfsgmt', 'UploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('721', 'bus_inacctinf_acctbsinfsgmt', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('722', 'bus_inacctinf_acctbsinfsgmt', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('723', 'bus_inacctinf', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, 'id', null);
INSERT INTO `code_column_config` VALUES ('724', 'bus_inacctinf', 'AccLoanId', 'varchar', null, '', '', null, '', '', '\0', null, '借据编号', null);
INSERT INTO `code_column_config` VALUES ('725', 'bus_inacctinf', 'status', 'int', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('726', 'bus_inacctinf', 'CreateTime', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('727', 'bus_inacctinf', 'UpdateTime', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('728', 'bus_inacctinf', 'UploadTime', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('729', 'bus_update_inacctidcagsinf', 'id', 'bigint', null, '', '', null, 'PRI', '', '', null, '', null);
INSERT INTO `code_column_config` VALUES ('730', 'bus_update_inacctidcagsinf', 'AccLoanId', 'varchar', null, '', '', null, '', '', '\0', null, '借据编号', null);
INSERT INTO `code_column_config` VALUES ('731', 'bus_update_inacctidcagsinf', 'InfRecType', 'int', null, '', '', null, '', '', '\0', null, '信息记录类型', null);
INSERT INTO `code_column_config` VALUES ('732', 'bus_update_inacctidcagsinf', 'OdBnesCode', 'varchar', null, '', '', null, '', '', '\0', null, '原业务标识码', null);
INSERT INTO `code_column_config` VALUES ('733', 'bus_update_inacctidcagsinf', 'NwBnesCode', 'varchar', null, '', '', null, '', '', '\0', null, '新业务标识码-', null);
INSERT INTO `code_column_config` VALUES ('734', 'bus_update_inacctidcagsinf', 'UploadStatus', 'int', null, '', '', null, '', '', '\0', null, '上报状态', null);
INSERT INTO `code_column_config` VALUES ('735', 'bus_update_inacctidcagsinf', 'UploadFlag', 'int', null, '', '', null, '', '', '\0', null, '上报标识', null);
INSERT INTO `code_column_config` VALUES ('736', 'bus_update_inacctidcagsinf', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('737', 'bus_task_log', 'id', 'bigint', null, 'auto_increment', '', null, 'PRI', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('738', 'bus_task_log', 'BATCHDATE', 'varchar', null, '', '', null, '', '', '\0', null, '任务执行日期', null);
INSERT INTO `code_column_config` VALUES ('739', 'bus_task_log', 'BUSINESSDATE', 'varchar', null, '', '', null, '', '', '\0', null, '实际日期', null);
INSERT INTO `code_column_config` VALUES ('740', 'bus_task_log', 'TASKNAME', 'varchar', null, '', '', 'Input', '', '', '\0', 'Like', '任务名称', null);
INSERT INTO `code_column_config` VALUES ('741', 'bus_task_log', 'TASKDESCRIBE', 'varchar', null, '', '', 'Input', '', '', '\0', 'Like', '任务名称描述', null);
INSERT INTO `code_column_config` VALUES ('742', 'bus_task_log', 'TARGETNAME', 'varchar', null, '', '', null, '', '', '\0', null, '任务所属模块', null);
INSERT INTO `code_column_config` VALUES ('743', 'bus_task_log', 'TARGETDESCRIBE', 'varchar', null, '', '', null, '', '', '\0', null, '任务所属模块描述', null);
INSERT INTO `code_column_config` VALUES ('744', 'bus_task_log', 'BEGINTIME', 'varchar', null, '', '', null, '', '', '\0', null, '开始执行时间', null);
INSERT INTO `code_column_config` VALUES ('745', 'bus_task_log', 'ENDTIME', 'varchar', null, '', '', null, '', '', '\0', null, '执行结束时间', null);
INSERT INTO `code_column_config` VALUES ('746', 'bus_task_log', 'STATUS', 'varchar', 'TaskStatus', '', '', 'Select', '', '', '\0', null, '状态', null);
INSERT INTO `code_column_config` VALUES ('747', 'sys_dict_detail', 'detail_id', 'bigint', null, 'auto_increment', '', null, 'PRI', '', '\0', null, 'ID', null);
INSERT INTO `code_column_config` VALUES ('748', 'sys_dict_detail', 'dict_id', 'bigint', null, '', '', null, 'MUL', '', '\0', null, '字典id', null);
INSERT INTO `code_column_config` VALUES ('749', 'sys_dict_detail', 'label', 'varchar', null, '', '', null, '', '', '', null, '字典标签', null);
INSERT INTO `code_column_config` VALUES ('750', 'sys_dict_detail', 'value', 'varchar', null, '', '', null, '', '', '', null, '字典值', null);
INSERT INTO `code_column_config` VALUES ('751', 'sys_dict_detail', 'dict_sort', 'int', null, '', '', null, '', '', '\0', null, '排序', null);
INSERT INTO `code_column_config` VALUES ('752', 'sys_dict_detail', 'create_by', 'varchar', null, '', '', null, '', '', '\0', null, '创建者', null);
INSERT INTO `code_column_config` VALUES ('753', 'sys_dict_detail', 'update_by', 'varchar', null, '', '', null, '', '', '\0', null, '更新者', null);
INSERT INTO `code_column_config` VALUES ('754', 'sys_dict_detail', 'create_time', 'datetime', null, '', '', null, '', '', '\0', null, '创建日期', null);
INSERT INTO `code_column_config` VALUES ('755', 'sys_dict_detail', 'update_time', 'datetime', null, '', '', null, '', '', '\0', null, '更新时间', null);
INSERT INTO `code_column_config` VALUES ('756', 'bus_system_setup', 'id', 'bigint', null, 'auto_increment', '', 'Input', 'PRI', '', '\0', null, '', null);
INSERT INTO `code_column_config` VALUES ('757', 'bus_system_setup', 'BUSINESSDATE', 'varchar', null, '', '', 'Input', '', '', '\0', null, '实际日期', null);
INSERT INTO `code_column_config` VALUES ('758', 'bus_system_setup', 'BATCHDATE', 'varchar', null, '', '', 'Input', '', '', '\0', null, '任务执行日期', null);
INSERT INTO `code_column_config` VALUES ('759', 'bus_system_setup', 'STATUS', 'varchar', null, '', '', null, '', '', '\0', null, '状态', null);

-- ----------------------------
-- Table structure for code_gen_config
-- ----------------------------
DROP TABLE IF EXISTS `code_gen_config`;
CREATE TABLE `code_gen_config` (
  `config_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `table_name` varchar(255) DEFAULT NULL COMMENT '表名',
  `author` varchar(255) DEFAULT NULL COMMENT '作者',
  `cover` bit(1) DEFAULT NULL COMMENT '是否覆盖',
  `module_name` varchar(255) DEFAULT NULL COMMENT '模块名称',
  `pack` varchar(255) DEFAULT NULL COMMENT '至于哪个包下',
  `path` varchar(255) DEFAULT NULL COMMENT '前端代码生成的路径',
  `api_path` varchar(255) DEFAULT NULL COMMENT '前端Api文件路径',
  `prefix` varchar(255) DEFAULT NULL COMMENT '表前缀',
  `api_alias` varchar(255) DEFAULT NULL COMMENT '接口名称',
  PRIMARY KEY (`config_id`) USING BTREE,
  KEY `idx_table_name` (`table_name`(100))
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='代码生成器配置';

-- ----------------------------
-- Records of code_gen_config
-- ----------------------------
INSERT INTO `code_gen_config` VALUES ('6', 'bus_customer_info', 'jianbin-wang', '', 'eladmin-system', 'me.zhengjie.modules.custominfo', 'D:\\workspace\\uploacredit\\eladmin-web\\src\\views\\creditupload\\customerinfo\\testcustomer', 'D:\\workspace\\easypay\\eladmin-web\\src\\api', null, '测试客户信息');
INSERT INTO `code_gen_config` VALUES ('7', 'bus_test', 'jianb', '', 'eladmin-system', 'me.zhengjie.modules.test', '\\creditupload\\customerinfo', 'D:\\workspace\\uploacredit\\eladmin-web\\src\\api', null, '测试');
INSERT INTO `code_gen_config` VALUES ('8', 'bus_usertest', 'ttt', '\0', 'eladmin-system', 'me.zhengjie.modules.customer', '\\creditupload\\customerinfo\\usertest', '\\creditupload\\customerinfo\\usertest\\', null, 'api/usertest');
INSERT INTO `code_gen_config` VALUES ('9', 'bus_settlement', 'jianb-wang', '\0', 'eadmin-system', 'com.ep.web.rest.cash', 'merchant/caseh/uqs_detail', 'merchant/caseh/uqs_detail\\', null, '/api/uqsdetail');
INSERT INTO `code_gen_config` VALUES ('10', 'bus_customer_base_info', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.custominfo', '/credit/customer', '/credit/customer\\', null, '/api/customerBaseInfo');
INSERT INTO `code_gen_config` VALUES ('11', 'bus_customer_cardinfos', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.custominfo', 'credit\\custominfo', 'credit\\custominfo\\', null, '/api/customercardinfo');
INSERT INTO `code_gen_config` VALUES ('12', 'bus_customer_other_cardinfo', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.custominfo', 'credit\\custominfo', 'credit\\custominfo\\', null, '/api/customerothercardinfo');
INSERT INTO `code_gen_config` VALUES ('13', 'bus_customer_cardpipy', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.custominfo', 'credit\\custominfo', 'credit\\custominfo\\', null, '/api/customercardpipy');
INSERT INTO `code_gen_config` VALUES ('14', 'bus_customer_relationship', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.custominfo', 'credit\\custominfo', 'credit\\custominfo\\', null, '/api/customerrelationship');
INSERT INTO `code_gen_config` VALUES ('15', 'bus_del_customer_cardpipy', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.custominfo', 'credit\\custominfo', 'credit\\custominfo\\', null, '/api/delcustomercardpipy');
INSERT INTO `code_gen_config` VALUES ('16', 'bus_del_customer_info', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.custominfo', 'credit\\custominfo', 'credit\\custominfo\\', null, '/api/delcustomerinfo');
INSERT INTO `code_gen_config` VALUES ('17', 'bus_inctrctinf_ctrctcertrel', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.contract', 'credit\\contract', 'credit\\accountinfo\\', null, '/api/ctrctcertrel');
INSERT INTO `code_gen_config` VALUES ('18', 'bus_inacctinf_rltrepymtinf', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.accountinfo', 'credit\\accountinfo', 'credit\\accountinfo\\', null, '/api/rltrepymtinf');
INSERT INTO `code_gen_config` VALUES ('19', 'bus_inacctinf_cccinf', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.accountinfo', 'credit\\accountinfo', 'credit\\accountinfo\\', null, '/api/cccinf');
INSERT INTO `code_gen_config` VALUES ('20', 'bus_update_acctinfbycode', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.accountinfo', 'credit\\accountinfo', 'credit\\accountinfo\\', null, '/api/updateacctinfbycode');
INSERT INTO `code_gen_config` VALUES ('21', 'bus_inacctinf_cagoftrdinf', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.accountinfo', 'credit\\accountinfo', 'credit\\accountinfo\\', null, '/api/cagoftrdinf');
INSERT INTO `code_gen_config` VALUES ('22', 'bus_update_inctrctinfbycode', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.contract', 'credit\\contract', 'credit\\accountinfo\\', null, '/api/update_inctrctinfbycode');
INSERT INTO `code_gen_config` VALUES ('23', 'bus_update_inctrctidcagsinf', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.contract', 'credit\\contract', 'credit\\accountinfo\\', null, '/api/update_inctrctidcagsinf');
INSERT INTO `code_gen_config` VALUES ('24', 'bus_del_inctrctentdel', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.contract', 'credit\\contract', 'credit\\accountinfo\\', null, '/api/del_inctrctentdel');
INSERT INTO `code_gen_config` VALUES ('25', 'bus_del_inctrctdel', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.contract', 'credit\\contract', 'credit\\accountinfo\\', null, '/api/del_inctrctdel');
INSERT INTO `code_gen_config` VALUES ('26', 'bus_del_inacctentdel', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.accountinfo', 'credit\\accountinfo', 'credit\\accountinfo\\', null, '/api/del_inacctentdel');
INSERT INTO `code_gen_config` VALUES ('27', 'bus_del_inacctdel', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.accountinfo', 'credit\\accountinfo', 'credit\\accountinfo\\', null, '/api/del_inacctdel');
INSERT INTO `code_gen_config` VALUES ('28', 'bus_inspcevtdscinf', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.accountinfo', 'credit\\accountinfo', 'credit\\accountinfo\\', null, '/api/inspcevtdscinf');
INSERT INTO `code_gen_config` VALUES ('29', 'bus_inctrctinf_ctrctcertrelsgmt', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.contract', 'credit\\contract', 'credit\\accountinfo\\', null, '/api/inctrctinf_ctrctcertrelsgmt');
INSERT INTO `code_gen_config` VALUES ('30', 'bus_inctrctinf_ctrctbssgmt', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.contract', 'credit\\contract', 'credit\\accountinfo\\', null, '/api/inctrctinf_ctrctbssgmt');
INSERT INTO `code_gen_config` VALUES ('31', 'bus_inctrctinf_creditlimsgmt', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.contract', 'credit\\contract', 'credit\\accountinfo\\', null, '/api/inctrctinf_creditlimsgmt');
INSERT INTO `code_gen_config` VALUES ('32', 'bus_inctrctinf', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.contract', 'credit\\contract', 'credit\\accountinfo\\', null, '/api/inctrctinf');
INSERT INTO `code_gen_config` VALUES ('33', 'bus_inacctinf_specprdsgmt', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.accountinfo', 'credit\\accountinfo', 'credit\\accountinfo\\', null, '/api/inacctinf_specprdsgmt');
INSERT INTO `code_gen_config` VALUES ('34', 'bus_inacctinf_rltrepymtinfsgmt', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.accountinfo', 'credit\\accountinfo', 'credit\\accountinfo\\', null, '/api/inacctinf_rltrepymtinfsgmt');
INSERT INTO `code_gen_config` VALUES ('35', 'bus_inacctinf_origcreditorinfsgmt', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.accountinfo', 'credit\\accountinfo', 'credit\\accountinfo\\', null, '/api/inacctinf_origcreditorinfsgmt');
INSERT INTO `code_gen_config` VALUES ('36', 'bus_inacctinf_guarmotgacltalctrctinfsgmt', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.accountinfo', 'credit\\accountinfo', 'credit\\accountinfo\\', null, '/api/inacctinf_guarmotgacltalctrctinfsgmt');
INSERT INTO `code_gen_config` VALUES ('37', 'bus_inacctinf_acctspectrstdspnsgmt', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.accountinfo', 'credit\\accountinfo', 'credit\\accountinfo\\', null, '/api/inacctinf_acctspectrstdspnsgmt');
INSERT INTO `code_gen_config` VALUES ('38', 'bus_inacctinf_acctmthlyblginfsgmt', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.accountinfo', 'credit\\accountinfo', 'credit\\accountinfo\\', null, '/api/inacctinf_acctmthlyblginfsgmt');
INSERT INTO `code_gen_config` VALUES ('39', 'bus_inacctinf_acctdbtinfsgmt', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.accountinfo', 'credit\\accountinfo', 'credit\\accountinfo\\', null, '/api/inacctinf_acctdbtinfsgmt');
INSERT INTO `code_gen_config` VALUES ('40', 'bus_inacctinf_acctcredsgmt', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.accountinfo', 'credit\\accountinfo', 'credit\\accountinfo\\', null, '/api/inacctinf_acctcredsgmt');
INSERT INTO `code_gen_config` VALUES ('41', 'bus_inacctinf_acctbssgmt', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.accountinfo', 'credit\\accountinfo', 'credit\\accountinfo\\', null, '/api/inacctinf_acctbssgmt');
INSERT INTO `code_gen_config` VALUES ('42', 'bus_inacctinf_acctbsinfsgmt', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.accountinfo', 'credit\\accountinfo', 'credit\\accountinfo\\', null, '/api/inacctinf_acctbsinfsgmt');
INSERT INTO `code_gen_config` VALUES ('43', 'bus_inacctinf', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.accountinfo', 'credit\\accountinfo', 'credit\\accountinfo\\', null, '/api/inacctinf');
INSERT INTO `code_gen_config` VALUES ('44', 'bus_update_inacctidcagsinf', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.accountinfo', 'credit\\accountinfo', 'credit\\accountinfo\\', null, '/api/update_inacctidcagsinf');
INSERT INTO `code_gen_config` VALUES ('45', 'bus_task_log', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.creditsystem', 'credit\\system', 'credit\\system\\', null, '/api/bus_task_log');
INSERT INTO `code_gen_config` VALUES ('46', 'bus_system_setup', 'jianb-wang', '\0', 'eladmin-system', 'me.zhengjie.modules.creditsystem', 'credit\\system', 'credit\\system\\', null, '/api/bus_system_setup');

-- ----------------------------
-- Table structure for mnt_app
-- ----------------------------
DROP TABLE IF EXISTS `mnt_app`;
CREATE TABLE `mnt_app` (
  `app_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) DEFAULT NULL COMMENT '应用名称',
  `upload_path` varchar(255) DEFAULT NULL COMMENT '上传目录',
  `deploy_path` varchar(255) DEFAULT NULL COMMENT '部署路径',
  `backup_path` varchar(255) DEFAULT NULL COMMENT '备份路径',
  `port` int(255) DEFAULT NULL COMMENT '应用端口',
  `start_script` varchar(4000) DEFAULT NULL COMMENT '启动脚本',
  `deploy_script` varchar(4000) DEFAULT NULL COMMENT '部署脚本',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`app_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='应用管理';

-- ----------------------------
-- Records of mnt_app
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_database
-- ----------------------------
DROP TABLE IF EXISTS `mnt_database`;
CREATE TABLE `mnt_database` (
  `db_id` varchar(50) NOT NULL COMMENT 'ID',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `jdbc_url` varchar(255) NOT NULL COMMENT 'jdbc连接',
  `user_name` varchar(255) NOT NULL COMMENT '账号',
  `pwd` varchar(255) NOT NULL COMMENT '密码',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`db_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='数据库管理';

-- ----------------------------
-- Records of mnt_database
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_deploy
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy`;
CREATE TABLE `mnt_deploy` (
  `deploy_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `app_id` bigint(20) DEFAULT NULL COMMENT '应用编号',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`deploy_id`) USING BTREE,
  KEY `FK6sy157pseoxx4fmcqr1vnvvhy` (`app_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='部署管理';

-- ----------------------------
-- Records of mnt_deploy
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_deploy_history
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy_history`;
CREATE TABLE `mnt_deploy_history` (
  `history_id` varchar(50) NOT NULL COMMENT 'ID',
  `app_name` varchar(255) NOT NULL COMMENT '应用名称',
  `deploy_date` datetime NOT NULL COMMENT '部署日期',
  `deploy_user` varchar(50) NOT NULL COMMENT '部署用户',
  `ip` varchar(20) NOT NULL COMMENT '服务器IP',
  `deploy_id` bigint(20) DEFAULT NULL COMMENT '部署编号',
  PRIMARY KEY (`history_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='部署历史管理';

-- ----------------------------
-- Records of mnt_deploy_history
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_deploy_server
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy_server`;
CREATE TABLE `mnt_deploy_server` (
  `deploy_id` bigint(20) NOT NULL COMMENT '部署ID',
  `server_id` bigint(20) NOT NULL COMMENT '服务ID',
  PRIMARY KEY (`deploy_id`,`server_id`) USING BTREE,
  KEY `FKeaaha7jew9a02b3bk9ghols53` (`server_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='应用与服务器关联';

-- ----------------------------
-- Records of mnt_deploy_server
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_server
-- ----------------------------
DROP TABLE IF EXISTS `mnt_server`;
CREATE TABLE `mnt_server` (
  `server_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `account` varchar(50) DEFAULT NULL COMMENT '账号',
  `ip` varchar(20) DEFAULT NULL COMMENT 'IP地址',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `port` int(11) DEFAULT NULL COMMENT '端口',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`server_id`) USING BTREE,
  KEY `idx_ip` (`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='服务器管理';

-- ----------------------------
-- Records of mnt_server
-- ----------------------------
INSERT INTO `mnt_server` VALUES ('1', 'root', '132.232.129.20', '腾讯云', 'Dqjdda1996.', '8013', null, null, '2019-11-24 20:35:02', null);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` bigint(20) DEFAULT NULL COMMENT '上级部门',
  `sub_count` int(5) DEFAULT '0' COMMENT '子部门数目',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `dept_sort` int(5) DEFAULT '999' COMMENT '排序',
  `enabled` bit(1) NOT NULL COMMENT '状态',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE,
  KEY `inx_pid` (`pid`),
  KEY `inx_enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='部门';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('18', null, '2', '易生小额贷款有限公司', '5', '', 'admin', 'admin', '2020-06-28 11:57:56', '2020-06-28 11:57:56');
INSERT INTO `sys_dept` VALUES ('19', '18', '0', 'IT技术部', '6', '', 'admin', 'admin', '2020-06-28 11:58:18', '2020-06-28 11:58:18');
INSERT INTO `sys_dept` VALUES ('20', '18', '0', '信贷部', '7', '', 'admin', 'admin', '2020-06-28 12:02:25', '2020-06-28 12:02:25');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) NOT NULL COMMENT '字典名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dict_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='数据字典';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', 'user_status', '用户状态', null, null, '2019-10-27 20:31:36', null);
INSERT INTO `sys_dict` VALUES ('4', 'dept_status', '部门状态', null, null, '2019-10-27 20:31:36', null);
INSERT INTO `sys_dict` VALUES ('5', 'job_status', '岗位状态', null, null, '2019-10-27 20:31:36', null);
INSERT INTO `sys_dict` VALUES ('8', 'IDType', '证件类型', 'admin', 'admin', '2020-06-28 13:49:25', '2020-06-28 13:52:11');
INSERT INTO `sys_dict` VALUES ('9', 'RptDateCode', '报告时点 说明代码', 'admin', 'admin', '2020-06-28 13:55:58', '2020-06-28 13:55:58');
INSERT INTO `sys_dict` VALUES ('10', 'CustomerType', '客户资料类型', 'admin', 'admin', '2020-06-28 13:56:48', '2020-06-28 13:56:48');
INSERT INTO `sys_dict` VALUES ('11', 'Sex', '性别', 'admin', 'admin', '2020-06-28 13:59:55', '2020-06-28 14:01:06');
INSERT INTO `sys_dict` VALUES ('12', 'EduLevel', '学历', 'admin', 'admin', '2020-06-28 14:02:23', '2020-06-28 14:02:23');
INSERT INTO `sys_dict` VALUES ('13', 'AcaDegree', '学位', 'admin', 'admin', '2020-06-28 14:05:21', '2020-06-28 14:05:21');
INSERT INTO `sys_dict` VALUES ('14', 'EmpStatus', '就业状况', 'admin', 'admin', '2020-06-28 14:06:48', '2020-06-28 14:06:48');
INSERT INTO `sys_dict` VALUES ('15', 'CpnType', '单位性质', 'admin', 'admin', '2020-06-28 14:11:15', '2020-06-28 14:11:15');
INSERT INTO `sys_dict` VALUES ('16', 'Industry', '所属行业', 'admin', 'admin', '2020-06-28 14:25:34', '2020-06-28 14:25:34');
INSERT INTO `sys_dict` VALUES ('17', 'Occupation', '职业', 'admin', 'admin', '2020-06-28 14:30:48', '2020-06-28 14:30:48');
INSERT INTO `sys_dict` VALUES ('18', 'Title', '职务', 'admin', 'admin', '2020-06-28 14:32:50', '2020-06-28 14:32:50');
INSERT INTO `sys_dict` VALUES ('19', 'TechTitle', '职称', 'admin', 'admin', '2020-06-28 14:33:43', '2020-06-28 14:33:43');
INSERT INTO `sys_dict` VALUES ('20', 'ResiStatus', '居住状况', 'admin', 'admin', '2020-06-28 14:35:05', '2020-06-28 14:35:05');
INSERT INTO `sys_dict` VALUES ('21', 'MariStatus', '婚姻状况', 'admin', 'admin', '2020-06-28 14:38:16', '2020-06-28 14:38:16');
INSERT INTO `sys_dict` VALUES ('22', 'FamRel', '家族关系', 'admin', 'admin', '2020-06-28 14:41:52', '2020-06-28 14:41:52');
INSERT INTO `sys_dict` VALUES ('23', 'FamRelaAssFlag', '家族关系 有效标志', 'admin', 'admin', '2020-06-28 14:43:18', '2020-06-28 14:43:18');
INSERT INTO `sys_dict` VALUES ('24', 'InfRecType', '信息记录类型', 'admin', 'admin', '2020-06-28 14:44:18', '2020-06-28 14:44:18');
INSERT INTO `sys_dict` VALUES ('25', 'acc-InfRecType', '个人借贷交易信息相关记录类型代码表', 'admin', 'admin', '2020-07-02 10:30:25', '2020-07-02 10:30:25');
INSERT INTO `sys_dict` VALUES ('26', 'AcctType', '个人借贷账户类型代码表', 'admin', 'admin', '2020-07-02 10:34:13', '2020-07-02 10:34:13');
INSERT INTO `sys_dict` VALUES ('27', 'acc-RptDateCode', '个人借贷账户报告时点说明代码表', 'admin', 'admin', '2020-07-02 10:36:15', '2020-07-02 10:36:15');
INSERT INTO `sys_dict` VALUES ('28', 'BusiLines', '个人借贷交易业务大类代码表', 'admin', 'admin', '2020-07-02 10:38:49', '2020-07-02 10:38:49');
INSERT INTO `sys_dict` VALUES ('29', 'BusiDtlLines ', '借贷业务种类细分', 'admin', 'admin', '2020-07-02 10:40:14', '2020-07-02 10:40:14');
INSERT INTO `sys_dict` VALUES ('30', 'RepayMode', '还款方式', 'admin', 'admin', '2020-07-02 10:47:21', '2020-07-02 10:47:21');
INSERT INTO `sys_dict` VALUES ('31', 'RepayFreqcy', '还款频率', 'admin', 'admin', '2020-07-02 10:50:39', '2020-07-02 10:50:39');
INSERT INTO `sys_dict` VALUES ('32', 'GuarMode', '担保方式', 'admin', 'admin', '2020-07-02 11:14:26', '2020-07-02 11:14:26');
INSERT INTO `sys_dict` VALUES ('33', 'OthRepyGuarWay', '其他还款保证方式', 'admin', 'admin', '2020-07-02 11:14:39', '2020-07-02 11:14:39');
INSERT INTO `sys_dict` VALUES ('34', 'FundSou', '业务经营类型', 'admin', 'admin', '2020-07-02 11:18:02', '2020-07-02 11:18:02');
INSERT INTO `sys_dict` VALUES ('35', 'LoanForm', '贷款发放形式', 'admin', 'admin', '2020-07-02 11:19:46', '2020-07-02 11:19:46');
INSERT INTO `sys_dict` VALUES ('36', 'FirstHouLoanFlag', '是否为首套住房贷款', 'admin', 'admin', '2020-07-02 11:20:32', '2020-07-02 11:20:32');
INSERT INTO `sys_dict` VALUES ('37', 'ArlpType', '还款责任人类型', 'admin', 'admin', '2020-07-02 11:21:53', '2020-07-02 11:21:53');
INSERT INTO `sys_dict` VALUES ('38', 'WartySign', '联保标志 ', 'admin', 'admin', '2020-07-02 11:23:18', '2020-07-02 11:23:18');
INSERT INTO `sys_dict` VALUES ('39', 'AcctStatus（D1/R4 账户）', '账户状态', 'admin', 'admin', '2020-07-02 11:24:10', '2020-07-02 11:26:04');
INSERT INTO `sys_dict` VALUES ('40', 'FiveCate', '五级分类', 'admin', 'admin', '2020-07-02 11:27:28', '2020-07-02 11:27:28');
INSERT INTO `sys_dict` VALUES ('41', 'RpyStatus(（D1/R4 账户)', '当前还款状态 ', 'admin', 'admin', '2020-07-02 11:29:30', '2020-07-02 11:32:47');
INSERT INTO `sys_dict` VALUES ('42', 'ChanTranType', '特殊交易交易类型', 'admin', 'admin', '2020-07-02 11:34:11', '2020-07-02 11:34:33');
INSERT INTO `sys_dict` VALUES ('43', 'InfRecType（个人授信协议）', '个人授信协议报告时点说明代码表', 'admin', 'admin', '2020-07-02 11:39:42', '2020-07-02 11:39:42');
INSERT INTO `sys_dict` VALUES ('44', 'ContractCode', '授信协议标识码', 'admin', 'admin', '2020-07-02 11:41:40', '2020-07-02 11:41:40');
INSERT INTO `sys_dict` VALUES ('45', 'OpetnType', ' 个人借贷账户特殊事件类型代码表', 'admin', 'admin', '2020-07-02 11:43:18', '2020-07-02 11:43:18');
INSERT INTO `sys_dict` VALUES ('46', 'Flag', '生效标志', 'admin', 'admin', '2020-07-02 11:44:10', '2020-07-02 11:44:10');
INSERT INTO `sys_dict` VALUES ('47', 'MdfcSgmtCode_acc', '个人借贷信息记录段标代码表', 'admin', 'admin', '2020-07-02 11:45:23', '2020-07-02 11:45:23');
INSERT INTO `sys_dict` VALUES ('48', 'MdfcSgmtCode_InfRec', '待更正段段标', 'admin', 'admin', '2020-07-02 11:48:02', '2020-07-02 11:48:02');
INSERT INTO `sys_dict` VALUES ('49', 'TaskStatus', '任务状态', 'admin', 'admin', '2020-07-07 16:38:25', '2020-07-07 16:38:25');

-- ----------------------------
-- Table structure for sys_dict_detail
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_detail`;
CREATE TABLE `sys_dict_detail` (
  `detail_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `dict_id` bigint(11) DEFAULT NULL COMMENT '字典id',
  `label` varchar(255) NOT NULL COMMENT '字典标签',
  `value` varchar(255) NOT NULL COMMENT '字典值',
  `dict_sort` int(5) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`detail_id`) USING BTREE,
  KEY `FK5tpkputc6d9nboxojdbgnpmyb` (`dict_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=332 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='数据字典详情';

-- ----------------------------
-- Records of sys_dict_detail
-- ----------------------------
INSERT INTO `sys_dict_detail` VALUES ('1', '1', '激活', 'true', '1', null, null, '2019-10-27 20:31:36', null);
INSERT INTO `sys_dict_detail` VALUES ('2', '1', '禁用', 'false', '2', null, null, null, null);
INSERT INTO `sys_dict_detail` VALUES ('3', '4', '启用', 'true', '1', null, null, null, null);
INSERT INTO `sys_dict_detail` VALUES ('4', '4', '停用', 'false', '2', null, null, '2019-10-27 20:31:36', null);
INSERT INTO `sys_dict_detail` VALUES ('5', '5', '启用', 'true', '1', null, null, null, null);
INSERT INTO `sys_dict_detail` VALUES ('6', '5', '停用', 'false', '2', null, null, '2019-10-27 20:31:36', null);
INSERT INTO `sys_dict_detail` VALUES ('17', '8', '户口簿', '1', '1', 'admin', 'admin', '2020-06-28 13:52:33', '2020-06-28 13:52:33');
INSERT INTO `sys_dict_detail` VALUES ('18', '8', '护照', '2', '2', 'admin', 'admin', '2020-06-28 13:52:49', '2020-06-28 13:52:49');
INSERT INTO `sys_dict_detail` VALUES ('19', '8', '港澳居民来往内地通行证', '5', '3', 'admin', 'admin', '2020-06-28 13:53:10', '2020-06-28 13:53:10');
INSERT INTO `sys_dict_detail` VALUES ('20', '8', '台湾同胞来往内地通行证', '6', '4', 'admin', 'admin', '2020-06-28 13:53:25', '2020-06-28 13:53:25');
INSERT INTO `sys_dict_detail` VALUES ('21', '8', '外国人居留证', '8', '5', 'admin', 'admin', '2020-06-28 13:53:41', '2020-06-28 13:53:41');
INSERT INTO `sys_dict_detail` VALUES ('22', '8', '警官证', '9', '6', 'admin', 'admin', '2020-06-28 13:53:55', '2020-06-28 13:53:55');
INSERT INTO `sys_dict_detail` VALUES ('23', '8', '香港身份证', 'A', '7', 'admin', 'admin', '2020-06-28 13:54:07', '2020-06-28 13:54:07');
INSERT INTO `sys_dict_detail` VALUES ('24', '8', '澳门身份证', 'B', '9', 'admin', 'admin', '2020-06-28 13:54:22', '2020-06-28 13:54:22');
INSERT INTO `sys_dict_detail` VALUES ('25', '8', '台湾身份证', 'C', '10', 'admin', 'admin', '2020-06-28 13:54:33', '2020-06-28 13:54:33');
INSERT INTO `sys_dict_detail` VALUES ('26', '8', '其他证件', 'X', '11', 'admin', 'admin', '2020-06-28 13:54:47', '2020-06-28 13:54:47');
INSERT INTO `sys_dict_detail` VALUES ('27', '8', '居民身份证及其他以公民身份证号码为标识的证件', '10', '12', 'admin', 'admin', '2020-06-28 13:54:58', '2020-06-28 13:54:58');
INSERT INTO `sys_dict_detail` VALUES ('28', '8', '军人身份证件', '20', '13', 'admin', 'admin', '2020-06-28 13:55:12', '2020-06-28 13:55:12');
INSERT INTO `sys_dict_detail` VALUES ('29', '9', '新增客户资料/首次上报', '10', '1', 'admin', 'admin', '2020-06-28 13:56:14', '2020-06-28 13:56:14');
INSERT INTO `sys_dict_detail` VALUES ('30', '9', '更新客户资料', '20', '2', 'admin', 'admin', '2020-06-28 13:56:24', '2020-06-28 13:56:24');
INSERT INTO `sys_dict_detail` VALUES ('31', '10', '贷款客户资料', '11', '1', 'admin', 'admin', '2020-06-28 13:57:12', '2020-06-28 13:57:12');
INSERT INTO `sys_dict_detail` VALUES ('32', '10', '信用卡客户资料', '12', '2', 'admin', 'admin', '2020-06-28 13:57:24', '2020-06-28 13:57:24');
INSERT INTO `sys_dict_detail` VALUES ('33', '10', '同时来自信用卡、贷款客户资料', '13', '3', 'admin', 'admin', '2020-06-28 13:57:37', '2020-06-28 13:57:37');
INSERT INTO `sys_dict_detail` VALUES ('34', '10', '担保客户资料', '20', '4', 'admin', 'admin', '2020-06-28 13:57:56', '2020-06-28 13:57:56');
INSERT INTO `sys_dict_detail` VALUES ('35', '10', '证券类融资客户资料', '30', '5', 'admin', 'admin', '2020-06-28 13:58:10', '2020-06-28 13:58:10');
INSERT INTO `sys_dict_detail` VALUES ('36', '10', '融资租赁客户资料', '40', '6', 'admin', 'admin', '2020-06-28 13:58:19', '2020-06-28 13:58:19');
INSERT INTO `sys_dict_detail` VALUES ('37', '10', '资产处置客户资料', '50', '7', 'admin', 'admin', '2020-06-28 13:58:34', '2020-06-28 13:58:34');
INSERT INTO `sys_dict_detail` VALUES ('38', '10', '垫款业务客户资料', '60', '8', 'admin', 'admin', '2020-06-28 13:58:51', '2020-06-28 13:58:51');
INSERT INTO `sys_dict_detail` VALUES ('39', '10', '无法区分 具体来源', '90', '9', 'admin', 'admin', '2020-06-28 13:59:20', '2020-06-28 14:04:53');
INSERT INTO `sys_dict_detail` VALUES ('40', '11', '未知的性别', '0', '1', 'admin', 'admin', '2020-06-28 14:00:17', '2020-06-28 14:00:17');
INSERT INTO `sys_dict_detail` VALUES ('41', '11', '男性', '1', '2', 'admin', 'admin', '2020-06-28 14:00:30', '2020-06-28 14:00:30');
INSERT INTO `sys_dict_detail` VALUES ('42', '11', '女性', '2', '3', 'admin', 'admin', '2020-06-28 14:00:42', '2020-06-28 14:00:42');
INSERT INTO `sys_dict_detail` VALUES ('43', '11', '未说明的性别', '9', '4', 'admin', 'admin', '2020-06-28 14:00:54', '2020-06-28 14:00:54');
INSERT INTO `sys_dict_detail` VALUES ('44', '12', '研究生', '10', '1', 'admin', 'admin', '2020-06-28 14:02:37', '2020-06-28 14:02:37');
INSERT INTO `sys_dict_detail` VALUES ('45', '12', '本科', '20', '2', 'admin', 'admin', '2020-06-28 14:02:48', '2020-06-28 14:02:48');
INSERT INTO `sys_dict_detail` VALUES ('46', '12', '大专', '30', '3', 'admin', 'admin', '2020-06-28 14:02:58', '2020-06-28 14:02:58');
INSERT INTO `sys_dict_detail` VALUES ('47', '12', '中专、职高、技校', '40', '4', 'admin', 'admin', '2020-06-28 14:03:09', '2020-06-28 14:03:09');
INSERT INTO `sys_dict_detail` VALUES ('48', '12', '高中', '60', '5', 'admin', 'admin', '2020-06-28 14:03:21', '2020-06-28 14:03:21');
INSERT INTO `sys_dict_detail` VALUES ('49', '12', '初中', '70', '6', 'admin', 'admin', '2020-06-28 14:03:31', '2020-06-28 14:03:31');
INSERT INTO `sys_dict_detail` VALUES ('50', '12', '小学', '80', '7', 'admin', 'admin', '2020-06-28 14:03:41', '2020-06-28 14:03:41');
INSERT INTO `sys_dict_detail` VALUES ('51', '12', '其他', '90', '8', 'admin', 'admin', '2020-06-28 14:03:51', '2020-06-28 14:03:51');
INSERT INTO `sys_dict_detail` VALUES ('52', '12', '初中及以下', '91', '9', 'admin', 'admin', '2020-06-28 14:04:26', '2020-06-28 14:04:26');
INSERT INTO `sys_dict_detail` VALUES ('53', '12', '未知', '99', '10', 'admin', 'admin', '2020-06-28 14:04:40', '2020-06-28 14:04:40');
INSERT INTO `sys_dict_detail` VALUES ('54', '13', '名誉博士', '1', '1', 'admin', 'admin', '2020-06-28 14:05:32', '2020-06-28 14:05:32');
INSERT INTO `sys_dict_detail` VALUES ('55', '13', '博士', '2', '2', 'admin', 'admin', '2020-06-28 14:05:42', '2020-06-28 14:05:42');
INSERT INTO `sys_dict_detail` VALUES ('56', '13', '硕士', '3', '3', 'admin', 'admin', '2020-06-28 14:05:48', '2020-06-28 14:05:48');
INSERT INTO `sys_dict_detail` VALUES ('57', '13', '学士', '4', '4', 'admin', 'admin', '2020-06-28 14:05:56', '2020-06-28 14:05:56');
INSERT INTO `sys_dict_detail` VALUES ('58', '13', '无', '5', '5', 'admin', 'admin', '2020-06-28 14:06:12', '2020-06-28 14:06:12');
INSERT INTO `sys_dict_detail` VALUES ('59', '13', '未知', '9', '6', 'admin', 'admin', '2020-06-28 14:06:23', '2020-06-28 14:06:23');
INSERT INTO `sys_dict_detail` VALUES ('60', '14', '国家公务员', '11', '1', 'admin', 'admin', '2020-06-28 14:06:59', '2020-06-28 14:07:45');
INSERT INTO `sys_dict_detail` VALUES ('61', '14', '专业技术人员', '13', '2', 'admin', 'admin', '2020-06-28 14:07:07', '2020-06-28 14:07:41');
INSERT INTO `sys_dict_detail` VALUES ('62', '14', '职员', '17', '3', 'admin', 'admin', '2020-06-28 14:07:31', '2020-06-28 14:07:31');
INSERT INTO `sys_dict_detail` VALUES ('63', '14', '企业管理人员', '21', '4', 'admin', 'admin', '2020-06-28 14:08:00', '2020-06-28 14:08:00');
INSERT INTO `sys_dict_detail` VALUES ('64', '14', '工人', '24', '5', 'admin', 'admin', '2020-06-28 14:08:10', '2020-06-28 14:08:10');
INSERT INTO `sys_dict_detail` VALUES ('65', '14', '农民', '27', '6', 'admin', 'admin', '2020-06-28 14:08:19', '2020-06-28 14:08:19');
INSERT INTO `sys_dict_detail` VALUES ('66', '14', '学生', '31', '8', 'admin', 'admin', '2020-06-28 14:08:28', '2020-06-28 14:08:28');
INSERT INTO `sys_dict_detail` VALUES ('67', '14', '现役军人', '37', '9', 'admin', 'admin', '2020-06-28 14:08:45', '2020-06-28 14:08:45');
INSERT INTO `sys_dict_detail` VALUES ('68', '14', '自由职业者', '51', '10', 'admin', 'admin', '2020-06-28 14:08:54', '2020-06-28 14:08:54');
INSERT INTO `sys_dict_detail` VALUES ('69', '14', '个体经营者', '54', '11', 'admin', 'admin', '2020-06-28 14:09:04', '2020-06-28 14:09:04');
INSERT INTO `sys_dict_detail` VALUES ('70', '14', '无业人员', '70', '12', 'admin', 'admin', '2020-06-28 14:09:15', '2020-06-28 14:09:15');
INSERT INTO `sys_dict_detail` VALUES ('71', '14', '退（离）休人员', '80', '13', 'admin', 'admin', '2020-06-28 14:09:33', '2020-06-28 14:09:33');
INSERT INTO `sys_dict_detail` VALUES ('72', '14', '其他', '90', '14', 'admin', 'admin', '2020-06-28 14:09:44', '2020-06-28 14:09:44');
INSERT INTO `sys_dict_detail` VALUES ('73', '14', '在职', '91', '15', 'admin', 'admin', '2020-06-28 14:09:55', '2020-06-28 14:10:27');
INSERT INTO `sys_dict_detail` VALUES ('74', '14', '未知', '99', '16', 'admin', 'admin', '2020-06-28 14:10:06', '2020-06-28 14:10:18');
INSERT INTO `sys_dict_detail` VALUES ('75', '15', '机关、事业单位', '10', '1', 'admin', 'admin', '2020-06-28 14:11:34', '2020-06-28 14:11:34');
INSERT INTO `sys_dict_detail` VALUES ('76', '15', '国有企业', '20', '2', 'admin', 'admin', '2020-06-28 14:11:44', '2020-06-28 14:11:44');
INSERT INTO `sys_dict_detail` VALUES ('77', '15', '外资企业', '30', '3', 'admin', 'admin', '2020-06-28 14:11:52', '2020-06-28 14:11:52');
INSERT INTO `sys_dict_detail` VALUES ('78', '15', '个体、私营企业', '4', '4', 'admin', 'admin', '2020-06-28 14:12:00', '2020-06-28 14:12:00');
INSERT INTO `sys_dict_detail` VALUES ('79', '15', '其他（包括三资企业、民营企业、民间团体等）', '50', '5', 'admin', 'admin', '2020-06-28 14:12:13', '2020-06-28 14:12:13');
INSERT INTO `sys_dict_detail` VALUES ('80', '15', '未知', '99', '6', 'admin', 'admin', '2020-06-28 14:12:22', '2020-06-28 14:12:22');
INSERT INTO `sys_dict_detail` VALUES ('81', '16', '农、林、牧、渔业', 'A', '1', 'admin', 'admin', '2020-06-28 14:25:49', '2020-06-28 14:25:49');
INSERT INTO `sys_dict_detail` VALUES ('82', '16', '采矿业', 'B', '2', 'admin', 'admin', '2020-06-28 14:26:01', '2020-06-28 14:26:01');
INSERT INTO `sys_dict_detail` VALUES ('83', '16', '制造业', 'C', '3', 'admin', 'admin', '2020-06-28 14:26:17', '2020-06-28 14:26:17');
INSERT INTO `sys_dict_detail` VALUES ('84', '16', '电力、热力、燃气及水生产和供应业', 'D', '4', 'admin', 'admin', '2020-06-28 14:26:27', '2020-06-28 14:26:27');
INSERT INTO `sys_dict_detail` VALUES ('85', '16', '建筑业', 'E', '5', 'admin', 'admin', '2020-06-28 14:26:52', '2020-06-28 14:26:52');
INSERT INTO `sys_dict_detail` VALUES ('86', '16', '批发和零售业', 'F', '6', 'admin', 'admin', '2020-06-28 14:26:58', '2020-06-28 14:26:58');
INSERT INTO `sys_dict_detail` VALUES ('87', '16', '交通运输、仓储和邮储业', 'G', '7', 'admin', 'admin', '2020-06-28 14:27:10', '2020-06-28 14:27:10');
INSERT INTO `sys_dict_detail` VALUES ('88', '16', '住宿和餐饮业', 'H', '8', 'admin', 'admin', '2020-06-28 14:27:19', '2020-06-28 14:27:19');
INSERT INTO `sys_dict_detail` VALUES ('89', '16', '信息传输、软件和信息技术服务', 'I', '9', 'admin', 'admin', '2020-06-28 14:27:28', '2020-06-28 14:27:28');
INSERT INTO `sys_dict_detail` VALUES ('90', '16', '金融业', 'J', '10', 'admin', 'admin', '2020-06-28 14:27:40', '2020-06-28 14:27:40');
INSERT INTO `sys_dict_detail` VALUES ('91', '16', '房地产业', 'K', '11', 'admin', 'admin', '2020-06-28 14:27:51', '2020-06-28 14:27:51');
INSERT INTO `sys_dict_detail` VALUES ('92', '16', '租赁和商务服务业', 'L', '12', 'admin', 'admin', '2020-06-28 14:28:01', '2020-06-28 14:28:01');
INSERT INTO `sys_dict_detail` VALUES ('93', '16', '科学研究和技术服务业', 'M', '13', 'admin', 'admin', '2020-06-28 14:28:09', '2020-06-28 14:28:09');
INSERT INTO `sys_dict_detail` VALUES ('94', '16', '水利、环境和公共设施管理业', 'N', '14', 'admin', 'admin', '2020-06-28 14:28:28', '2020-06-28 14:28:28');
INSERT INTO `sys_dict_detail` VALUES ('95', '16', '居民服务、修理和其他服务业', 'O', '15', 'admin', 'admin', '2020-06-28 14:28:37', '2020-06-28 14:28:37');
INSERT INTO `sys_dict_detail` VALUES ('96', '16', '教育', 'P', '16', 'admin', 'admin', '2020-06-28 14:28:48', '2020-06-28 14:28:48');
INSERT INTO `sys_dict_detail` VALUES ('97', '16', '卫生和社会工作', 'Q', '18', 'admin', 'admin', '2020-06-28 14:28:58', '2020-06-28 14:29:13');
INSERT INTO `sys_dict_detail` VALUES ('98', '16', '文化、体育和娱乐业', 'R', '17', 'admin', 'admin', '2020-06-28 14:29:07', '2020-06-28 14:29:07');
INSERT INTO `sys_dict_detail` VALUES ('99', '16', '公共管理、社会保障和社会组织', 'S', '19', 'admin', 'admin', '2020-06-28 14:29:22', '2020-06-28 14:29:22');
INSERT INTO `sys_dict_detail` VALUES ('100', '16', '国际组织', 'T', '20', 'admin', 'admin', '2020-06-28 14:29:38', '2020-06-28 14:29:38');
INSERT INTO `sys_dict_detail` VALUES ('101', '16', '未知', '9', '21', 'admin', 'admin', '2020-06-28 14:29:48', '2020-06-28 14:29:48');
INSERT INTO `sys_dict_detail` VALUES ('102', '16', '未知', 'Z', '22', 'admin', 'admin', '2020-06-28 14:29:58', '2020-06-28 14:29:58');
INSERT INTO `sys_dict_detail` VALUES ('103', '17', '国家机关、党群组织、企业、事业单位负责人', '0', '1', 'admin', 'admin', '2020-06-28 14:31:03', '2020-06-28 14:31:03');
INSERT INTO `sys_dict_detail` VALUES ('104', '17', '专业技术人员', '1', '2', 'admin', 'admin', '2020-06-28 14:31:12', '2020-06-28 14:31:12');
INSERT INTO `sys_dict_detail` VALUES ('105', '17', '办事人员和有关人员', '3', '3', 'admin', 'admin', '2020-06-28 14:31:22', '2020-06-28 14:31:41');
INSERT INTO `sys_dict_detail` VALUES ('106', '17', '商业、服务业人员', '4', '4', 'admin', 'admin', '2020-06-28 14:31:33', '2020-06-28 14:31:33');
INSERT INTO `sys_dict_detail` VALUES ('107', '17', '农、林、牧、渔、水利业生产人员', '5', '5', 'admin', 'admin', '2020-06-28 14:31:52', '2020-06-28 14:31:52');
INSERT INTO `sys_dict_detail` VALUES ('108', '17', '生产、运输设备操作人员及有关人员', '6', '6', 'admin', 'admin', '2020-06-28 14:31:59', '2020-06-28 14:31:59');
INSERT INTO `sys_dict_detail` VALUES ('109', '17', '军人', 'X', '7', 'admin', 'admin', '2020-06-28 14:32:13', '2020-06-28 14:32:13');
INSERT INTO `sys_dict_detail` VALUES ('110', '17', '不便分类的其他从业人员', 'Y', '8', 'admin', 'admin', '2020-06-28 14:32:22', '2020-06-28 14:32:22');
INSERT INTO `sys_dict_detail` VALUES ('111', '17', '未知', 'Z', '9', 'admin', 'admin', '2020-06-28 14:32:33', '2020-06-28 14:32:33');
INSERT INTO `sys_dict_detail` VALUES ('112', '18', '高级领导（行政级别局级及以上领导或大公司高级管理 人员）', '1', '1', 'admin', 'admin', '2020-06-28 14:33:01', '2020-06-28 14:33:01');
INSERT INTO `sys_dict_detail` VALUES ('113', '18', '中级领导（行政级别处级领导或大公司中级管理人员）', '2', '2', 'admin', 'admin', '2020-06-28 14:33:09', '2020-06-28 14:33:09');
INSERT INTO `sys_dict_detail` VALUES ('114', '18', '一般员工', '3', '3', 'admin', 'admin', '2020-06-28 14:33:18', '2020-06-28 14:33:18');
INSERT INTO `sys_dict_detail` VALUES ('115', '18', '未知', '4', '4', 'admin', 'admin', '2020-06-28 14:33:25', '2020-06-28 14:33:25');
INSERT INTO `sys_dict_detail` VALUES ('116', '19', '高级', '1', '1', 'admin', 'admin', '2020-06-28 14:33:58', '2020-06-28 14:33:58');
INSERT INTO `sys_dict_detail` VALUES ('117', '19', '中级', '2', '2', 'admin', 'admin', '2020-06-28 14:34:08', '2020-06-28 14:34:08');
INSERT INTO `sys_dict_detail` VALUES ('118', '19', '初级', '3', '3', 'admin', 'admin', '2020-06-28 14:34:15', '2020-06-28 14:34:15');
INSERT INTO `sys_dict_detail` VALUES ('119', '19', '无', '0', '4', 'admin', 'admin', '2020-06-28 14:34:26', '2020-06-28 14:34:26');
INSERT INTO `sys_dict_detail` VALUES ('120', '19', '未知', '9', '5', 'admin', 'admin', '2020-06-28 14:34:39', '2020-06-28 14:34:39');
INSERT INTO `sys_dict_detail` VALUES ('121', '20', '自置', '1', '1', 'admin', 'admin', '2020-06-28 14:35:17', '2020-06-28 14:35:17');
INSERT INTO `sys_dict_detail` VALUES ('122', '20', '按揭', '2', '2', 'admin', 'admin', '2020-06-28 14:35:23', '2020-06-28 14:35:23');
INSERT INTO `sys_dict_detail` VALUES ('123', '20', '亲属楼宇', '3', '3', 'admin', 'admin', '2020-06-28 14:35:31', '2020-06-28 14:35:31');
INSERT INTO `sys_dict_detail` VALUES ('124', '20', '集体宿舍', '4', '4', 'admin', 'admin', '2020-06-28 14:35:39', '2020-06-28 14:35:39');
INSERT INTO `sys_dict_detail` VALUES ('125', '20', '租房', '5', '5', 'admin', 'admin', '2020-06-28 14:35:49', '2020-06-28 14:35:49');
INSERT INTO `sys_dict_detail` VALUES ('126', '20', '共有住宅', '6', '6', 'admin', 'admin', '2020-06-28 14:35:56', '2020-06-28 14:35:56');
INSERT INTO `sys_dict_detail` VALUES ('127', '20', '其他', '7', '7', 'admin', 'admin', '2020-06-28 14:36:05', '2020-06-28 14:36:05');
INSERT INTO `sys_dict_detail` VALUES ('128', '20', '自有', '11', '8', 'admin', 'admin', '2020-06-28 14:36:16', '2020-06-28 14:36:16');
INSERT INTO `sys_dict_detail` VALUES ('129', '20', '借住', '12', '9', 'admin', 'admin', '2020-06-28 14:36:27', '2020-06-28 14:36:27');
INSERT INTO `sys_dict_detail` VALUES ('130', '20', '未知', '9', '10', 'admin', 'admin', '2020-06-28 14:36:37', '2020-06-28 14:36:37');
INSERT INTO `sys_dict_detail` VALUES ('131', '21', '未婚', '10', '1', 'admin', 'admin', '2020-06-28 14:38:37', '2020-06-28 14:38:37');
INSERT INTO `sys_dict_detail` VALUES ('132', '21', '已婚', '20', '2', 'admin', 'admin', '2020-06-28 14:38:49', '2020-06-28 14:38:49');
INSERT INTO `sys_dict_detail` VALUES ('133', '21', '初婚', '21', '3', 'admin', 'admin', '2020-06-28 14:38:58', '2020-06-28 14:38:58');
INSERT INTO `sys_dict_detail` VALUES ('134', '21', '再婚', '22', '4', 'admin', 'admin', '2020-06-28 14:39:06', '2020-06-28 14:39:06');
INSERT INTO `sys_dict_detail` VALUES ('135', '21', '复婚', '23', '5', 'admin', 'admin', '2020-06-28 14:39:16', '2020-06-28 14:39:16');
INSERT INTO `sys_dict_detail` VALUES ('136', '21', '丧偶', '30', '6', 'admin', 'admin', '2020-06-28 14:39:24', '2020-06-28 14:39:24');
INSERT INTO `sys_dict_detail` VALUES ('137', '21', '离婚', '40', '7', 'admin', 'admin', '2020-06-28 14:39:35', '2020-06-28 14:39:35');
INSERT INTO `sys_dict_detail` VALUES ('138', '21', '未说明的婚姻状况', '90', '8', 'admin', 'admin', '2020-06-28 14:39:46', '2020-06-28 14:39:46');
INSERT INTO `sys_dict_detail` VALUES ('139', '21', '单身', '91', '9', 'admin', 'admin', '2020-06-28 14:40:00', '2020-06-28 14:40:07');
INSERT INTO `sys_dict_detail` VALUES ('140', '21', '未知', '99', '10', 'admin', 'admin', '2020-06-28 14:40:22', '2020-06-28 14:40:22');
INSERT INTO `sys_dict_detail` VALUES ('141', '22', '配偶', '1', '1', 'admin', 'admin', '2020-06-28 14:42:05', '2020-06-28 14:42:05');
INSERT INTO `sys_dict_detail` VALUES ('142', '22', '子', '2', '2', 'admin', 'admin', '2020-06-28 14:42:13', '2020-06-28 14:42:13');
INSERT INTO `sys_dict_detail` VALUES ('143', '22', '女', '3', '3', 'admin', 'admin', '2020-06-28 14:42:19', '2020-06-28 14:42:19');
INSERT INTO `sys_dict_detail` VALUES ('144', '22', '孙子、孙女（外孙子、外孙女）', '4', '4', 'admin', 'admin', '2020-06-28 14:42:28', '2020-06-28 14:42:28');
INSERT INTO `sys_dict_detail` VALUES ('145', '22', '父母', '5', '5', 'admin', 'admin', '2020-06-28 14:42:37', '2020-06-28 14:42:37');
INSERT INTO `sys_dict_detail` VALUES ('146', '22', '祖父母或外祖父母', '6', '6', 'admin', 'admin', '2020-06-28 14:42:44', '2020-06-28 14:42:44');
INSERT INTO `sys_dict_detail` VALUES ('147', '22', '兄、弟、姐、妹', '7', '7', 'admin', 'admin', '2020-06-28 14:42:53', '2020-06-28 14:42:53');
INSERT INTO `sys_dict_detail` VALUES ('148', '22', '其他', '8', '8', 'admin', 'admin', '2020-06-28 14:43:02', '2020-06-28 14:43:02');
INSERT INTO `sys_dict_detail` VALUES ('149', '23', '无效', '0', '1', 'admin', 'admin', '2020-06-28 14:43:28', '2020-06-28 14:43:28');
INSERT INTO `sys_dict_detail` VALUES ('150', '23', '有效', '1', '2', 'admin', 'admin', '2020-06-28 14:43:35', '2020-06-28 14:43:35');
INSERT INTO `sys_dict_detail` VALUES ('151', '24', '个人基本信息记录', '110', '1', 'admin', 'admin', '2020-06-28 14:45:23', '2020-06-28 14:45:23');
INSERT INTO `sys_dict_detail` VALUES ('152', '24', '个人基本信息整笔删除请求记录', '114', '2', 'admin', 'admin', '2020-06-28 14:45:34', '2020-06-28 14:45:34');
INSERT INTO `sys_dict_detail` VALUES ('153', '24', '家族关系信息记录', '120', '3', 'admin', 'admin', '2020-06-28 14:45:43', '2020-06-28 14:45:43');
INSERT INTO `sys_dict_detail` VALUES ('154', '24', '个人证件有效期信息记录', '130', '4', 'admin', 'admin', '2020-06-28 14:45:56', '2020-06-28 14:45:56');
INSERT INTO `sys_dict_detail` VALUES ('155', '24', '个人证件有效期信息整笔删除请求记录', '134', '5', 'admin', 'admin', '2020-06-28 14:46:06', '2020-06-28 14:46:06');
INSERT INTO `sys_dict_detail` VALUES ('156', '24', '个人证件整合信息记录', '140', '6', 'admin', 'admin', '2020-06-28 14:46:17', '2020-06-28 14:46:17');
INSERT INTO `sys_dict_detail` VALUES ('157', '25', '210', '个人借贷账户信息记录', '1', 'admin', 'admin', '2020-07-02 10:30:43', '2020-07-02 10:30:43');
INSERT INTO `sys_dict_detail` VALUES ('158', '25', '211', '个人借贷账户标识变更请求记录', '2', 'admin', 'admin', '2020-07-02 10:31:01', '2020-07-02 10:31:01');
INSERT INTO `sys_dict_detail` VALUES ('159', '25', '212', '个人借贷账户按段更正请求记录', '3', 'admin', 'admin', '2020-07-02 10:31:18', '2020-07-02 10:31:18');
INSERT INTO `sys_dict_detail` VALUES ('160', '25', '213', '个人借贷账户按段删除请求记录', '4', 'admin', 'admin', '2020-07-02 10:31:34', '2020-07-02 10:31:34');
INSERT INTO `sys_dict_detail` VALUES ('161', '25', '214', '个人借贷账户整笔删除请求记录', '5', 'admin', 'admin', '2020-07-02 10:31:46', '2020-07-02 10:32:13');
INSERT INTO `sys_dict_detail` VALUES ('162', '25', '215', '个人借贷账户特殊事件说明记录', '6', 'admin', 'admin', '2020-07-02 10:32:05', '2020-07-02 10:32:18');
INSERT INTO `sys_dict_detail` VALUES ('163', '25', '220', '个人授信协议信息记录', '7', 'admin', 'admin', '2020-07-02 10:32:32', '2020-07-02 10:32:32');
INSERT INTO `sys_dict_detail` VALUES ('164', '25', '221', '个人授信协议标识变更请求记录', '8', 'admin', 'admin', '2020-07-02 10:32:49', '2020-07-02 10:32:49');
INSERT INTO `sys_dict_detail` VALUES ('165', '25', '222', '个人授信协议按段更正请求记录', '9', 'admin', 'admin', '2020-07-02 10:32:59', '2020-07-02 10:32:59');
INSERT INTO `sys_dict_detail` VALUES ('166', '25', '223', '个人授信协议按段删除请求记录', '11', 'admin', 'admin', '2020-07-02 10:33:12', '2020-07-02 10:33:12');
INSERT INTO `sys_dict_detail` VALUES ('167', '25', '224', '个人授信协议按段删除请求记录', '12', 'admin', 'admin', '2020-07-02 10:33:25', '2020-07-02 10:33:25');
INSERT INTO `sys_dict_detail` VALUES ('168', '26', 'D1', '非循环贷账户', '1', 'admin', 'admin', '2020-07-02 10:34:28', '2020-07-02 10:34:28');
INSERT INTO `sys_dict_detail` VALUES ('169', '26', 'R1', '循环贷账户', '2', 'admin', 'admin', '2020-07-02 10:34:40', '2020-07-02 10:34:40');
INSERT INTO `sys_dict_detail` VALUES ('170', '26', 'R2', '贷记卡账户', '3', 'admin', 'admin', '2020-07-02 10:34:53', '2020-07-02 10:34:53');
INSERT INTO `sys_dict_detail` VALUES ('171', '26', 'R3', '准贷记卡账户', '4', 'admin', 'admin', '2020-07-02 10:35:10', '2020-07-02 10:35:10');
INSERT INTO `sys_dict_detail` VALUES ('172', '26', 'R4', '循环额度下分账户', '5', 'admin', 'admin', '2020-07-02 10:35:24', '2020-07-02 10:35:24');
INSERT INTO `sys_dict_detail` VALUES ('173', '26', 'C1', '催收账户', '6', 'admin', 'admin', '2020-07-02 10:35:35', '2020-07-02 10:35:35');
INSERT INTO `sys_dict_detail` VALUES ('174', '27', '10', '新开户', '1', 'admin', 'admin', '2020-07-02 10:36:30', '2020-07-02 10:36:30');
INSERT INTO `sys_dict_detail` VALUES ('175', '27', '20', '账户关闭', '2', 'admin', 'admin', '2020-07-02 10:36:42', '2020-07-02 10:36:42');
INSERT INTO `sys_dict_detail` VALUES ('176', '27', '30', '月度结算', '3', 'admin', 'admin', '2020-07-02 10:36:52', '2020-07-02 10:36:52');
INSERT INTO `sys_dict_detail` VALUES ('177', '27', '31', '月结日首次上报存量账户', '4', 'admin', 'admin', '2020-07-02 10:37:01', '2020-07-02 10:37:01');
INSERT INTO `sys_dict_detail` VALUES ('178', '27', '32', '月结日账户关闭', '5', 'admin', 'admin', '2020-07-02 10:37:11', '2020-07-02 10:37:11');
INSERT INTO `sys_dict_detail` VALUES ('179', '27', '40', '收回逾期款项', '6', 'admin', 'admin', '2020-07-02 10:37:23', '2020-07-02 10:37:23');
INSERT INTO `sys_dict_detail` VALUES ('180', '28', '1', '贷款', '1', 'admin', 'admin', '2020-07-02 10:39:02', '2020-07-02 10:39:02');
INSERT INTO `sys_dict_detail` VALUES ('181', '28', '2', '信用卡', '2', 'admin', 'admin', '2020-07-02 10:39:16', '2020-07-02 10:39:16');
INSERT INTO `sys_dict_detail` VALUES ('182', '28', '3', '证券类融资', '3', 'admin', 'admin', '2020-07-02 10:39:26', '2020-07-02 10:39:26');
INSERT INTO `sys_dict_detail` VALUES ('183', '28', '4', '融资租赁', '4', 'admin', 'admin', '2020-07-02 10:39:34', '2020-07-02 10:39:34');
INSERT INTO `sys_dict_detail` VALUES ('184', '28', '5', '资产处置', '5', 'admin', 'admin', '2020-07-02 10:39:44', '2020-07-02 10:39:44');
INSERT INTO `sys_dict_detail` VALUES ('185', '28', '6', '垫款', '6', 'admin', 'admin', '2020-07-02 10:39:52', '2020-07-02 10:39:52');
INSERT INTO `sys_dict_detail` VALUES ('186', '29', '11', '个人住房商业贷款', '5', 'admin', 'admin', '2020-07-02 10:40:55', '2020-07-02 10:41:50');
INSERT INTO `sys_dict_detail` VALUES ('187', '29', '12', '个人商用房（含商住两用）贷款', '2', 'admin', 'admin', '2020-07-02 10:41:05', '2020-07-02 10:41:05');
INSERT INTO `sys_dict_detail` VALUES ('188', '29', '13', '个人住房公积金贷款', '3', 'admin', 'admin', '2020-07-02 10:41:15', '2020-07-02 10:41:15');
INSERT INTO `sys_dict_detail` VALUES ('189', '29', '21', '个人汽车消费贷款', '4', 'admin', 'admin', '2020-07-02 10:41:25', '2020-07-02 10:41:25');
INSERT INTO `sys_dict_detail` VALUES ('190', '29', '31', '个人助学贷款', '6', 'admin', 'admin', '2020-07-02 10:41:45', '2020-07-02 10:41:45');
INSERT INTO `sys_dict_detail` VALUES ('191', '29', '32', '国家助学贷款', '7', 'admin', 'admin', '2020-07-02 10:42:03', '2020-07-02 10:42:03');
INSERT INTO `sys_dict_detail` VALUES ('192', '29', '33', '商业助学贷款', '8', 'admin', 'admin', '2020-07-02 10:42:14', '2020-07-02 10:42:14');
INSERT INTO `sys_dict_detail` VALUES ('193', '29', '41', '个人经营性贷款', '9', 'admin', 'admin', '2020-07-02 10:42:31', '2020-07-02 10:42:31');
INSERT INTO `sys_dict_detail` VALUES ('194', '29', '42', '个人创业担保贷款', '10', 'admin', 'admin', '2020-07-02 10:42:50', '2020-07-02 10:42:50');
INSERT INTO `sys_dict_detail` VALUES ('195', '29', '51', '农户贷款', '11', 'admin', 'admin', '2020-07-02 10:43:02', '2020-07-02 10:43:02');
INSERT INTO `sys_dict_detail` VALUES ('196', '29', '52', '经营性农户贷款', '12', 'admin', 'admin', '2020-07-02 10:43:14', '2020-07-02 10:43:14');
INSERT INTO `sys_dict_detail` VALUES ('197', '29', '53', '消费性农户贷款', '14', 'admin', 'admin', '2020-07-02 10:43:30', '2020-07-02 10:43:30');
INSERT INTO `sys_dict_detail` VALUES ('198', '29', '91', '其他个人消费贷款', '15', 'admin', 'admin', '2020-07-02 10:43:45', '2020-07-02 10:43:45');
INSERT INTO `sys_dict_detail` VALUES ('199', '29', '99', '其他贷款', '16', 'admin', 'admin', '2020-07-02 10:43:59', '2020-07-02 10:43:59');
INSERT INTO `sys_dict_detail` VALUES ('200', '29', '71', '准贷记卡', '17', 'admin', 'admin', '2020-07-02 10:44:11', '2020-07-02 10:44:11');
INSERT INTO `sys_dict_detail` VALUES ('201', '29', '81', '贷记卡', '18', 'admin', 'admin', '2020-07-02 10:44:24', '2020-07-02 10:44:24');
INSERT INTO `sys_dict_detail` VALUES ('202', '29', '82', '大额专项分期卡（专指仅用于大额专项分 期的贷记卡）', '19', 'admin', 'admin', '2020-07-02 10:44:34', '2020-07-02 10:44:34');
INSERT INTO `sys_dict_detail` VALUES ('203', '29', '92', '约定购回式证券交易', '20', 'admin', 'admin', '2020-07-02 10:45:56', '2020-07-02 10:45:56');
INSERT INTO `sys_dict_detail` VALUES ('204', '29', 'A1', '由资产处置机构处置的债务', '21', 'admin', 'admin', '2020-07-02 10:46:07', '2020-07-02 10:46:07');
INSERT INTO `sys_dict_detail` VALUES ('205', '29', 'B2', '因代偿继承债权的债务', '22', 'admin', 'admin', '2020-07-02 10:46:22', '2020-07-02 10:46:22');
INSERT INTO `sys_dict_detail` VALUES ('206', '30', '11', '分期等额本息', '1', 'admin', 'admin', '2020-07-02 10:47:38', '2020-07-02 10:47:38');
INSERT INTO `sys_dict_detail` VALUES ('207', '30', '12', '分期等额本金', '2', 'admin', 'admin', '2020-07-02 10:47:50', '2020-07-02 10:47:50');
INSERT INTO `sys_dict_detail` VALUES ('208', '30', '13', '到期还本分期结息', '3', 'admin', 'admin', '2020-07-02 10:48:01', '2020-07-02 10:48:01');
INSERT INTO `sys_dict_detail` VALUES ('209', '30', '14', '等比累进分期还款', '4', 'admin', 'admin', '2020-07-02 10:48:11', '2020-07-02 10:48:11');
INSERT INTO `sys_dict_detail` VALUES ('210', '30', '15', '等比累进分期还款', '5', 'admin', 'admin', '2020-07-02 10:48:20', '2020-07-02 10:48:20');
INSERT INTO `sys_dict_detail` VALUES ('211', '30', '19', '其他类型分期还款', '6', 'admin', 'admin', '2020-07-02 10:48:30', '2020-07-02 10:48:30');
INSERT INTO `sys_dict_detail` VALUES ('212', '30', '21', '到期一次还本付息', '7', 'admin', 'admin', '2020-07-02 10:48:44', '2020-07-02 10:48:44');
INSERT INTO `sys_dict_detail` VALUES ('213', '30', '22', '预先付息到期还本', '8', 'admin', 'admin', '2020-07-02 10:48:58', '2020-07-02 10:48:58');
INSERT INTO `sys_dict_detail` VALUES ('214', '30', '23', '随时还', '9', 'admin', 'admin', '2020-07-02 10:49:11', '2020-07-02 10:49:11');
INSERT INTO `sys_dict_detail` VALUES ('215', '30', '29', '其他类型非分期还款', '10', 'admin', 'admin', '2020-07-02 10:49:20', '2020-07-02 10:49:20');
INSERT INTO `sys_dict_detail` VALUES ('216', '30', '31', '按期结息，到期还本', '11', 'admin', 'admin', '2020-07-02 10:49:28', '2020-07-02 10:49:28');
INSERT INTO `sys_dict_detail` VALUES ('217', '30', '32', '按期结息，自由还本', '12', 'admin', 'admin', '2020-07-02 10:49:36', '2020-07-02 10:49:36');
INSERT INTO `sys_dict_detail` VALUES ('218', '30', '33', '按期计算还本付息', '13', 'admin', 'admin', '2020-07-02 10:49:47', '2020-07-02 10:49:47');
INSERT INTO `sys_dict_detail` VALUES ('219', '30', '39', '循环贷款下其他还款方式', '14', 'admin', 'admin', '2020-07-02 10:49:57', '2020-07-02 10:49:57');
INSERT INTO `sys_dict_detail` VALUES ('220', '30', '90', '汇总报送，不区分还款方式', '15', 'admin', 'admin', '2020-07-02 10:50:07', '2020-07-02 10:50:07');
INSERT INTO `sys_dict_detail` VALUES ('221', '31', '01', '日', '1', 'admin', 'admin', '2020-07-02 10:50:55', '2020-07-02 10:50:55');
INSERT INTO `sys_dict_detail` VALUES ('222', '31', '02', '周', '2', 'admin', 'admin', '2020-07-02 10:51:03', '2020-07-02 10:51:13');
INSERT INTO `sys_dict_detail` VALUES ('223', '31', '03', '月', '3', 'admin', 'admin', '2020-07-02 10:51:21', '2020-07-02 10:51:21');
INSERT INTO `sys_dict_detail` VALUES ('224', '31', '04', '季', '4', 'admin', 'admin', '2020-07-02 10:51:35', '2020-07-02 10:51:35');
INSERT INTO `sys_dict_detail` VALUES ('225', '31', '05', '半年', '5', 'admin', 'admin', '2020-07-02 10:51:44', '2020-07-02 10:52:01');
INSERT INTO `sys_dict_detail` VALUES ('226', '31', '06', '年', '6', 'admin', 'admin', '2020-07-02 10:52:17', '2020-07-02 10:52:17');
INSERT INTO `sys_dict_detail` VALUES ('227', '31', '07', '一次性', '7', 'admin', 'admin', '2020-07-02 10:52:30', '2020-07-02 10:52:30');
INSERT INTO `sys_dict_detail` VALUES ('228', '31', '08', '不定期', '8', 'admin', 'admin', '2020-07-02 10:52:45', '2020-07-02 10:52:45');
INSERT INTO `sys_dict_detail` VALUES ('229', '31', '12', '旬', '9', 'admin', 'admin', '2020-07-02 10:52:59', '2020-07-02 10:52:59');
INSERT INTO `sys_dict_detail` VALUES ('230', '31', '13', '双周', '10', 'admin', 'admin', '2020-07-02 10:53:11', '2020-07-02 10:53:11');
INSERT INTO `sys_dict_detail` VALUES ('231', '31', '14', '双月', '11', 'admin', 'admin', '2020-07-02 10:53:21', '2020-07-02 10:53:21');
INSERT INTO `sys_dict_detail` VALUES ('232', '31', '99', '其他', '12', 'admin', 'admin', '2020-07-02 10:53:31', '2020-07-02 10:53:31');
INSERT INTO `sys_dict_detail` VALUES ('233', '32', '1', '质押', '1', 'admin', 'admin', '2020-07-02 11:14:57', '2020-07-02 11:14:57');
INSERT INTO `sys_dict_detail` VALUES ('234', '32', '2', '抵押', '2', 'admin', 'admin', '2020-07-02 11:15:05', '2020-07-02 11:15:05');
INSERT INTO `sys_dict_detail` VALUES ('235', '32', '3', '保证', '3', 'admin', 'admin', '2020-07-02 11:15:12', '2020-07-02 11:15:12');
INSERT INTO `sys_dict_detail` VALUES ('236', '32', '4', '信用/免担保', '4', 'admin', 'admin', '2020-07-02 11:15:20', '2020-07-02 11:15:20');
INSERT INTO `sys_dict_detail` VALUES ('237', '32', '5', '组合(含保证)', '5', 'admin', 'admin', '2020-07-02 11:15:29', '2020-07-02 11:15:29');
INSERT INTO `sys_dict_detail` VALUES ('238', '32', '6', '组合（不含保证）', '6', 'admin', 'admin', '2020-07-02 11:15:46', '2020-07-02 11:15:46');
INSERT INTO `sys_dict_detail` VALUES ('239', '32', '7', '农户联保', '7', 'admin', 'admin', '2020-07-02 11:15:54', '2020-07-02 11:15:54');
INSERT INTO `sys_dict_detail` VALUES ('240', '33', '0', '无', '1', 'admin', 'admin', '2020-07-02 11:16:09', '2020-07-02 11:16:09');
INSERT INTO `sys_dict_detail` VALUES ('241', '33', '1', '保证金', '2', 'admin', 'admin', '2020-07-02 11:16:17', '2020-07-02 11:16:17');
INSERT INTO `sys_dict_detail` VALUES ('242', '33', '9', '其他', '3', 'admin', 'admin', '2020-07-02 11:16:25', '2020-07-02 11:16:25');
INSERT INTO `sys_dict_detail` VALUES ('243', '34', '1', '自营', '1', 'admin', 'admin', '2020-07-02 11:18:15', '2020-07-02 11:18:15');
INSERT INTO `sys_dict_detail` VALUES ('244', '34', '2', '委托', '2', 'admin', 'admin', '2020-07-02 11:18:23', '2020-07-02 11:18:23');
INSERT INTO `sys_dict_detail` VALUES ('245', '34', '21', '政府部门委托', '3', 'admin', 'admin', '2020-07-02 11:18:42', '2020-07-02 11:18:42');
INSERT INTO `sys_dict_detail` VALUES ('246', '34', '22', '企事业单位委托', '4', 'admin', 'admin', '2020-07-02 11:18:50', '2020-07-02 11:18:50');
INSERT INTO `sys_dict_detail` VALUES ('247', '34', '23', '个人委托', '5', 'admin', 'admin', '2020-07-02 11:19:00', '2020-07-02 11:19:00');
INSERT INTO `sys_dict_detail` VALUES ('248', '34', '24', '公积金管理中心的委托', '6', 'admin', 'admin', '2020-07-02 11:19:08', '2020-07-02 11:19:08');
INSERT INTO `sys_dict_detail` VALUES ('249', '34', '4', '信托', '7', 'admin', 'admin', '2020-07-02 11:19:16', '2020-07-02 11:19:16');
INSERT INTO `sys_dict_detail` VALUES ('250', '34', '8', '信托', '8', 'admin', 'admin', '2020-07-02 11:19:27', '2020-07-02 11:19:27');
INSERT INTO `sys_dict_detail` VALUES ('251', '35', '1', '新增', '1', 'admin', 'admin', '2020-07-02 11:19:57', '2020-07-02 11:19:57');
INSERT INTO `sys_dict_detail` VALUES ('252', '35', '5', '其他机构转入', '2', 'admin', 'admin', '2020-07-02 11:20:06', '2020-07-02 11:20:06');
INSERT INTO `sys_dict_detail` VALUES ('253', '35', '9', '其他', '3', 'admin', 'admin', '2020-07-02 11:20:15', '2020-07-02 11:20:15');
INSERT INTO `sys_dict_detail` VALUES ('254', '36', '01', '是', '1', 'admin', 'admin', '2020-07-02 11:20:48', '2020-07-02 11:20:48');
INSERT INTO `sys_dict_detail` VALUES ('255', '36', '02', '否', '2', 'admin', 'admin', '2020-07-02 11:20:57', '2020-07-02 11:20:57');
INSERT INTO `sys_dict_detail` VALUES ('256', '36', '03', '未知', '3', 'admin', 'admin', '2020-07-02 11:21:08', '2020-07-02 11:21:08');
INSERT INTO `sys_dict_detail` VALUES ('257', '36', '04', '未发布差别化住房信贷政策', '4', 'admin', 'admin', '2020-07-02 11:21:19', '2020-07-02 11:21:19');
INSERT INTO `sys_dict_detail` VALUES ('258', '37', '1', '共同借款人', '1', 'admin', 'admin', '2020-07-02 11:22:41', '2020-07-02 11:22:41');
INSERT INTO `sys_dict_detail` VALUES ('259', '37', '2', '保证人', '2', 'admin', 'admin', '2020-07-02 11:22:53', '2020-07-02 11:22:53');
INSERT INTO `sys_dict_detail` VALUES ('260', '37', '9', '其他', '3', 'admin', 'admin', '2020-07-02 11:23:00', '2020-07-02 11:23:00');
INSERT INTO `sys_dict_detail` VALUES ('261', '38', '0', '单人保证/多人分保', '1', 'admin', 'admin', '2020-07-02 11:23:29', '2020-07-02 11:23:29');
INSERT INTO `sys_dict_detail` VALUES ('262', '38', '1', '联保', '2', 'admin', 'admin', '2020-07-02 11:23:43', '2020-07-02 11:23:43');
INSERT INTO `sys_dict_detail` VALUES ('263', '39', '1', '正常', '1', 'admin', 'admin', '2020-07-02 11:24:25', '2020-07-02 11:24:25');
INSERT INTO `sys_dict_detail` VALUES ('264', '39', '2', '逾期', '2', 'admin', 'admin', '2020-07-02 11:24:33', '2020-07-02 11:24:33');
INSERT INTO `sys_dict_detail` VALUES ('265', '39', '3', '关闭', '3', 'admin', 'admin', '2020-07-02 11:24:48', '2020-07-02 11:24:48');
INSERT INTO `sys_dict_detail` VALUES ('266', '39', '41', '呆账（进入核销认定程序，等待核销）', '4', 'admin', 'admin', '2020-07-02 11:24:55', '2020-07-02 11:24:55');
INSERT INTO `sys_dict_detail` VALUES ('267', '39', '42', '呆账（已核销）', '5', 'admin', 'admin', '2020-07-02 11:25:05', '2020-07-02 11:25:05');
INSERT INTO `sys_dict_detail` VALUES ('268', '39', '6', '担保物不足', '6', 'admin', 'admin', '2020-07-02 11:25:14', '2020-07-02 11:25:14');
INSERT INTO `sys_dict_detail` VALUES ('269', '39', '8', '司法追偿', '7', 'admin', 'admin', '2020-07-02 11:25:25', '2020-07-02 11:25:25');
INSERT INTO `sys_dict_detail` VALUES ('270', '40', '1', '正常', '1', 'admin', 'admin', '2020-07-02 11:27:37', '2020-07-02 11:27:37');
INSERT INTO `sys_dict_detail` VALUES ('271', '40', '2', '关注', '2', 'admin', 'admin', '2020-07-02 11:27:45', '2020-07-02 11:27:45');
INSERT INTO `sys_dict_detail` VALUES ('272', '40', '3', '次级', '3', 'admin', 'admin', '2020-07-02 11:27:53', '2020-07-02 11:27:53');
INSERT INTO `sys_dict_detail` VALUES ('273', '40', '4', '可疑', '4', 'admin', 'admin', '2020-07-02 11:28:02', '2020-07-02 11:28:02');
INSERT INTO `sys_dict_detail` VALUES ('274', '40', '5', '损失', '5', 'admin', 'admin', '2020-07-02 11:28:13', '2020-07-02 11:28:13');
INSERT INTO `sys_dict_detail` VALUES ('275', '40', '9', '未分类', '6', 'admin', 'admin', '2020-07-02 11:28:21', '2020-07-02 11:28:21');
INSERT INTO `sys_dict_detail` VALUES ('276', '41', 'N', '正常还款', '1', 'admin', 'admin', '2020-07-02 11:29:45', '2020-07-02 11:29:45');
INSERT INTO `sys_dict_detail` VALUES ('277', '41', 'D', '担保人代还', '2', 'admin', 'admin', '2020-07-02 11:29:53', '2020-07-02 11:29:53');
INSERT INTO `sys_dict_detail` VALUES ('278', '41', '*', '当月不需要还款且之前没有拖欠', '0', 'admin', 'admin', '2020-07-02 11:30:07', '2020-07-02 11:30:07');
INSERT INTO `sys_dict_detail` VALUES ('279', '41', 'Z', '以资抵债', '3', 'admin', 'admin', '2020-07-02 11:30:16', '2020-07-02 11:30:16');
INSERT INTO `sys_dict_detail` VALUES ('280', '41', 'M', '约定还款日后月底前还款', '4', 'admin', 'admin', '2020-07-02 11:30:26', '2020-07-02 11:30:26');
INSERT INTO `sys_dict_detail` VALUES ('281', '41', '1', '逾期 1-30 天', '5', 'admin', 'admin', '2020-07-02 11:30:38', '2020-07-02 11:30:38');
INSERT INTO `sys_dict_detail` VALUES ('282', '41', '2', '逾期 31-60 天', '6', 'admin', 'admin', '2020-07-02 11:30:45', '2020-07-02 11:30:45');
INSERT INTO `sys_dict_detail` VALUES ('283', '41', '3', '逾期 61-90 天', '7', 'admin', 'admin', '2020-07-02 11:30:54', '2020-07-02 11:30:54');
INSERT INTO `sys_dict_detail` VALUES ('284', '41', '4', '逾期 91-120 天', '8', 'admin', 'admin', '2020-07-02 11:31:08', '2020-07-02 11:31:08');
INSERT INTO `sys_dict_detail` VALUES ('285', '41', '5', '逾期 121-150 天', '9', 'admin', 'admin', '2020-07-02 11:31:25', '2020-07-02 11:31:25');
INSERT INTO `sys_dict_detail` VALUES ('286', '41', '6', '逾期 121-150 天', '10', 'admin', 'admin', '2020-07-02 11:31:37', '2020-07-02 11:31:37');
INSERT INTO `sys_dict_detail` VALUES ('287', '41', '7', '逾期 180 天以上', '11', 'admin', 'admin', '2020-07-02 11:31:46', '2020-07-02 11:31:46');
INSERT INTO `sys_dict_detail` VALUES ('288', '41', 'B', '逾期 180 天以上', '12', 'admin', 'admin', '2020-07-02 11:31:55', '2020-07-02 11:31:55');
INSERT INTO `sys_dict_detail` VALUES ('289', '41', 'C', '结清', '13', 'admin', 'admin', '2020-07-02 11:32:07', '2020-07-02 11:32:07');
INSERT INTO `sys_dict_detail` VALUES ('290', '41', 'G', '结束', '14', 'admin', 'admin', '2020-07-02 11:32:15', '2020-07-02 11:32:15');
INSERT INTO `sys_dict_detail` VALUES ('291', '41', '#', '未知', '15', 'admin', 'admin', '2020-07-02 11:32:25', '2020-07-02 11:32:25');
INSERT INTO `sys_dict_detail` VALUES ('292', '42', '1', '展期', '1', 'admin', 'admin', '2020-07-02 11:34:44', '2020-07-02 11:34:44');
INSERT INTO `sys_dict_detail` VALUES ('293', '42', '2', '担保人（第三方）代偿', '2', 'admin', 'admin', '2020-07-02 11:34:51', '2020-07-02 11:34:51');
INSERT INTO `sys_dict_detail` VALUES ('294', '42', '3', '以资抵债', '3', 'admin', 'admin', '2020-07-02 11:35:01', '2020-07-02 11:35:01');
INSERT INTO `sys_dict_detail` VALUES ('295', '42', '4', '提前还款', '4', 'admin', 'admin', '2020-07-02 11:35:12', '2020-07-02 11:35:12');
INSERT INTO `sys_dict_detail` VALUES ('296', '42', '5', '提前结清', '5', 'admin', 'admin', '2020-07-02 11:35:20', '2020-07-02 11:35:20');
INSERT INTO `sys_dict_detail` VALUES ('297', '42', '8', '司法追偿', '6', 'admin', 'admin', '2020-07-02 11:35:29', '2020-07-02 11:35:29');
INSERT INTO `sys_dict_detail` VALUES ('298', '42', '11', '债务减免', '7', 'admin', 'admin', '2020-07-02 11:35:39', '2020-07-02 11:35:39');
INSERT INTO `sys_dict_detail` VALUES ('299', '42', '12', '资产剥离', '8', 'admin', 'admin', '2020-07-02 11:35:47', '2020-07-02 11:35:47');
INSERT INTO `sys_dict_detail` VALUES ('300', '42', '13', '资产转让', '9', 'admin', 'admin', '2020-07-02 11:35:56', '2020-07-02 11:36:04');
INSERT INTO `sys_dict_detail` VALUES ('301', '42', '14', '信用卡个性化分期', '10', 'admin', 'admin', '2020-07-02 11:36:13', '2020-07-02 11:36:13');
INSERT INTO `sys_dict_detail` VALUES ('302', '42', '15', '核销', '11', 'admin', 'admin', '2020-07-02 11:36:27', '2020-07-02 11:36:27');
INSERT INTO `sys_dict_detail` VALUES ('303', '42', '16', '银行主动延期', '12', 'admin', 'admin', '2020-07-02 11:36:37', '2020-07-02 11:36:37');
INSERT INTO `sys_dict_detail` VALUES ('304', '42', '17', '强制平仓', '13', 'admin', 'admin', '2020-07-02 11:36:48', '2020-07-02 11:36:48');
INSERT INTO `sys_dict_detail` VALUES ('305', '43', '10', '授信开始', '1', 'admin', 'admin', '2020-07-02 11:39:55', '2020-07-02 11:39:55');
INSERT INTO `sys_dict_detail` VALUES ('306', '43', '20', '授信到期/失效', '2', 'admin', 'admin', '2020-07-02 11:41:06', '2020-07-02 11:41:06');
INSERT INTO `sys_dict_detail` VALUES ('307', '43', '30', '额度调整', '3', 'admin', 'admin', '2020-07-02 11:41:18', '2020-07-02 11:41:18');
INSERT INTO `sys_dict_detail` VALUES ('308', '44', '10', '循环贷款额度', '1', 'admin', 'admin', '2020-07-02 11:41:51', '2020-07-02 11:41:51');
INSERT INTO `sys_dict_detail` VALUES ('309', '44', '20', '非循环贷款额度', '2', 'admin', 'admin', '2020-07-02 11:41:59', '2020-07-02 11:41:59');
INSERT INTO `sys_dict_detail` VALUES ('310', '44', '30', '信用卡共享额度', '3', 'admin', 'admin', '2020-07-02 11:42:08', '2020-07-02 11:42:08');
INSERT INTO `sys_dict_detail` VALUES ('311', '44', '31', '信用卡独立额度', '4', 'admin', 'admin', '2020-07-02 11:42:16', '2020-07-02 11:42:16');
INSERT INTO `sys_dict_detail` VALUES ('312', '45', '11', '信用卡因调整账单日本月不出单', '1', 'admin', 'admin', '2020-07-02 11:43:27', '2020-07-02 11:43:27');
INSERT INTO `sys_dict_detail` VALUES ('313', '45', '12', '已注销信用卡账户重启', '2', 'admin', 'admin', '2020-07-02 11:43:35', '2020-07-02 11:43:35');
INSERT INTO `sys_dict_detail` VALUES ('314', '45', '21', '转出', '3', 'admin', 'admin', '2020-07-02 11:43:48', '2020-07-02 11:43:48');
INSERT INTO `sys_dict_detail` VALUES ('315', '46', '0', '无效', '1', 'admin', 'admin', '2020-07-02 11:44:20', '2020-07-02 11:44:20');
INSERT INTO `sys_dict_detail` VALUES ('316', '46', '1', '有效', '2', 'admin', 'admin', '2020-07-02 11:44:29', '2020-07-02 11:44:29');
INSERT INTO `sys_dict_detail` VALUES ('317', '47', 'B', '基础段', '1', 'admin', 'admin', '2020-07-02 11:45:37', '2020-07-02 11:45:37');
INSERT INTO `sys_dict_detail` VALUES ('318', '47', 'C', '基本信息段', '2', 'admin', 'admin', '2020-07-02 11:45:44', '2020-07-02 11:45:44');
INSERT INTO `sys_dict_detail` VALUES ('319', '47', 'D', '相关还款责任人段', '3', 'admin', 'admin', '2020-07-02 11:45:53', '2020-07-02 11:45:53');
INSERT INTO `sys_dict_detail` VALUES ('320', '47', 'E', '抵质押物信息段', '4', 'admin', 'admin', '2020-07-02 11:46:04', '2020-07-02 11:46:04');
INSERT INTO `sys_dict_detail` VALUES ('321', '47', 'F', '授信额度信息段', '5', 'admin', 'admin', '2020-07-02 11:46:13', '2020-07-02 11:46:13');
INSERT INTO `sys_dict_detail` VALUES ('322', '47', 'G', '初始债权说明段', '6', 'admin', 'admin', '2020-07-02 11:46:23', '2020-07-02 11:46:23');
INSERT INTO `sys_dict_detail` VALUES ('323', '47', 'H', '月度表现信息段', '7', 'admin', 'admin', '2020-07-02 11:46:30', '2020-07-02 11:46:30');
INSERT INTO `sys_dict_detail` VALUES ('324', '47', 'I', '大额专项分期信息段', '8', 'admin', 'admin', '2020-07-02 11:46:37', '2020-07-02 11:46:37');
INSERT INTO `sys_dict_detail` VALUES ('325', '47', 'J', '非月度表现信息段', '10', 'admin', 'admin', '2020-07-02 11:46:49', '2020-07-02 11:46:49');
INSERT INTO `sys_dict_detail` VALUES ('326', '47', 'K', '特殊交易说明段', '11', 'admin', 'admin', '2020-07-02 11:47:02', '2020-07-02 11:47:02');
INSERT INTO `sys_dict_detail` VALUES ('327', '48', 'B', '基础段', '1', 'admin', 'admin', '2020-07-02 11:48:18', '2020-07-02 11:48:18');
INSERT INTO `sys_dict_detail` VALUES ('328', '48', 'C', '共同受信人信息段', '2', 'admin', 'admin', '2020-07-02 11:48:25', '2020-07-02 11:48:25');
INSERT INTO `sys_dict_detail` VALUES ('329', '48', 'D', '额度信息段', '3', 'admin', 'admin', '2020-07-02 11:48:33', '2020-07-02 11:48:33');
INSERT INTO `sys_dict_detail` VALUES ('330', '49', '1', '成功', '1', 'admin', 'admin', '2020-07-07 16:38:43', '2020-07-07 16:38:43');
INSERT INTO `sys_dict_detail` VALUES ('331', '49', '2', '失败', '2', 'admin', 'admin', '2020-07-07 16:38:50', '2020-07-07 16:38:50');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) NOT NULL COMMENT '岗位名称',
  `enabled` bit(1) NOT NULL COMMENT '岗位状态',
  `job_sort` int(5) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`job_id`) USING BTREE,
  UNIQUE KEY `uniq_name` (`name`),
  KEY `inx_enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='岗位';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('14', '高级开发工程师', '', '1', 'admin', 'admin', '2020-06-28 11:59:49', '2020-06-28 12:00:20');
INSERT INTO `sys_job` VALUES ('15', '信贷高级经理', '', '2', 'admin', 'admin', '2020-06-28 12:02:48', '2020-06-28 12:02:48');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `description` varchar(255) DEFAULT NULL,
  `log_type` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `params` text,
  `request_ip` varchar(255) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `exception_detail` text,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE,
  KEY `log_create_time_index` (`create_time`),
  KEY `inx_log_type` (`log_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4445 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('4004', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=MariStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '195', 'admin', '', 'Firefox 7', null, '2020-06-29 11:06:42');
INSERT INTO `sys_log` VALUES ('4005', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '10', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:06:42');
INSERT INTO `sys_log` VALUES ('4006', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=RptDateCode) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '195', 'admin', '', 'Firefox 7', null, '2020-06-29 11:06:42');
INSERT INTO `sys_log` VALUES ('4007', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Sex) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '195', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:06:42');
INSERT INTO `sys_log` VALUES ('4008', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CustomerType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '195', 'admin', '', 'Firefox 7', null, '2020-06-29 11:06:42');
INSERT INTO `sys_log` VALUES ('4009', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EduLevel) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '13', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:06:42');
INSERT INTO `sys_log` VALUES ('4010', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=AcaDegree) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '8', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:06:42');
INSERT INTO `sys_log` VALUES ('4011', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '195', 'admin', '', 'Firefox 7', null, '2020-06-29 11:06:42');
INSERT INTO `sys_log` VALUES ('4012', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=InfRecType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '195', 'admin', '', 'Firefox 7', null, '2020-06-29 11:06:42');
INSERT INTO `sys_log` VALUES ('4013', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Occupation) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '11', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:06:42');
INSERT INTO `sys_log` VALUES ('4014', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Title) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '80', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:06:42');
INSERT INTO `sys_log` VALUES ('4015', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=TechTitle) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '64', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:06:42');
INSERT INTO `sys_log` VALUES ('4016', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CpnType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '90', 'admin', '', 'Firefox 7', null, '2020-06-29 11:06:42');
INSERT INTO `sys_log` VALUES ('4018', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Industry) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '98', 'admin', '', 'Firefox 7', null, '2020-06-29 11:06:43');
INSERT INTO `sys_log` VALUES ('4019', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EmpStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '384', 'admin', '', 'Firefox 7', null, '2020-06-29 11:06:43');
INSERT INTO `sys_log` VALUES ('4020', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=ResiStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '67', 'admin', '', 'Firefox 7', null, '2020-06-29 11:06:43');
INSERT INTO `sys_log` VALUES ('4021', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '67861', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:10:20');
INSERT INTO `sys_log` VALUES ('4022', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '2158', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:10:22');
INSERT INTO `sys_log` VALUES ('4023', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EduLevel) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '1613', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:10:24');
INSERT INTO `sys_log` VALUES ('4024', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=AcaDegree) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '1787', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:10:25');
INSERT INTO `sys_log` VALUES ('4025', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EmpStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '2005', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:10:27');
INSERT INTO `sys_log` VALUES ('4026', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CpnType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '2366', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:10:30');
INSERT INTO `sys_log` VALUES ('4027', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Industry) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '3649', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:10:34');
INSERT INTO `sys_log` VALUES ('4028', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Occupation) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '2920', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:10:37');
INSERT INTO `sys_log` VALUES ('4029', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Title) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '1883', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:10:39');
INSERT INTO `sys_log` VALUES ('4030', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=TechTitle) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '1906', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:10:40');
INSERT INTO `sys_log` VALUES ('4031', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=ResiStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '2153', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:10:43');
INSERT INTO `sys_log` VALUES ('4033', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=InfRecType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '252826', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:15:25');
INSERT INTO `sys_log` VALUES ('4034', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Sex) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '263610', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:15:35');
INSERT INTO `sys_log` VALUES ('4035', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CustomerType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '266591', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:15:38');
INSERT INTO `sys_log` VALUES ('4036', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=RptDateCode) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '274990', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:15:47');
INSERT INTO `sys_log` VALUES ('4037', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=MariStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '276036', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:15:48');
INSERT INTO `sys_log` VALUES ('4039', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=InfRecType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '158682', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:15:51');
INSERT INTO `sys_log` VALUES ('4040', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Sex) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '159145', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:15:51');
INSERT INTO `sys_log` VALUES ('4041', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CustomerType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '160106', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:15:52');
INSERT INTO `sys_log` VALUES ('4042', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=RptDateCode) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '164215', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:15:56');
INSERT INTO `sys_log` VALUES ('4043', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=MariStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '165951', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:15:58');
INSERT INTO `sys_log` VALUES ('4045', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=InfRecType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '52253', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:16:04');
INSERT INTO `sys_log` VALUES ('4046', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=MariStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '53202', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:16:05');
INSERT INTO `sys_log` VALUES ('4047', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=RptDateCode) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '53691', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:16:06');
INSERT INTO `sys_log` VALUES ('4048', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=InfRecType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:17:11');
INSERT INTO `sys_log` VALUES ('4049', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '5', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:17:11');
INSERT INTO `sys_log` VALUES ('4050', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=RptDateCode) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '8', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:17:11');
INSERT INTO `sys_log` VALUES ('4051', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CustomerType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '4', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:17:11');
INSERT INTO `sys_log` VALUES ('4052', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Sex) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '7', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:17:11');
INSERT INTO `sys_log` VALUES ('4053', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=MariStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '9', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:17:11');
INSERT INTO `sys_log` VALUES ('4054', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EmpStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '5', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:17:11');
INSERT INTO `sys_log` VALUES ('4055', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '5', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:17:11');
INSERT INTO `sys_log` VALUES ('4056', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EduLevel) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '5', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:17:11');
INSERT INTO `sys_log` VALUES ('4057', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=AcaDegree) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:17:11');
INSERT INTO `sys_log` VALUES ('4058', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CpnType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '8', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:17:11');
INSERT INTO `sys_log` VALUES ('4059', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Industry) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '8', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:17:11');
INSERT INTO `sys_log` VALUES ('4060', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Title) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '4', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:17:11');
INSERT INTO `sys_log` VALUES ('4061', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Occupation) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '5', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:17:11');
INSERT INTO `sys_log` VALUES ('4062', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=ResiStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '4', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:17:11');
INSERT INTO `sys_log` VALUES ('4063', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=TechTitle) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '3', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 11:17:11');
INSERT INTO `sys_log` VALUES ('4072', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CustomerType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '95', 'admin', '', 'Firefox 7', null, '2020-06-29 11:53:18');
INSERT INTO `sys_log` VALUES ('4073', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EduLevel) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '128', 'admin', '', 'Firefox 7', null, '2020-06-29 11:53:18');
INSERT INTO `sys_log` VALUES ('4074', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EmpStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '114', 'admin', '', 'Firefox 7', null, '2020-06-29 11:53:18');
INSERT INTO `sys_log` VALUES ('4075', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=AcaDegree) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '214', 'admin', '', 'Firefox 7', null, '2020-06-29 11:53:18');
INSERT INTO `sys_log` VALUES ('4076', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=MariStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '9', 'admin', '', 'Firefox 7', null, '2020-06-29 11:53:18');
INSERT INTO `sys_log` VALUES ('4077', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '343', 'admin', '', 'Firefox 7', null, '2020-06-29 11:53:18');
INSERT INTO `sys_log` VALUES ('4078', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=InfRecType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '95', 'admin', '', 'Firefox 7', null, '2020-06-29 11:53:18');
INSERT INTO `sys_log` VALUES ('4079', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '95', 'admin', '', 'Firefox 7', null, '2020-06-29 11:53:18');
INSERT INTO `sys_log` VALUES ('4080', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=RptDateCode) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '95', 'admin', '', 'Firefox 7', null, '2020-06-29 11:53:18');
INSERT INTO `sys_log` VALUES ('4081', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Sex) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '95', 'admin', '', 'Firefox 7', null, '2020-06-29 11:53:18');
INSERT INTO `sys_log` VALUES ('4082', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CpnType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '13', 'admin', '', 'Firefox 7', null, '2020-06-29 11:53:18');
INSERT INTO `sys_log` VALUES ('4083', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Industry) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '8', 'admin', '', 'Firefox 7', null, '2020-06-29 11:53:18');
INSERT INTO `sys_log` VALUES ('4084', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Occupation) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '13', 'admin', '', 'Firefox 7', null, '2020-06-29 11:53:18');
INSERT INTO `sys_log` VALUES ('4085', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Title) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '10', 'admin', '', 'Firefox 7', null, '2020-06-29 11:53:18');
INSERT INTO `sys_log` VALUES ('4086', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=TechTitle) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '', 'Firefox 7', null, '2020-06-29 11:53:18');
INSERT INTO `sys_log` VALUES ('4087', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=ResiStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '8', 'admin', '', 'Firefox 7', null, '2020-06-29 11:53:18');
INSERT INTO `sys_log` VALUES ('4089', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '123', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 13:46:31');
INSERT INTO `sys_log` VALUES ('4090', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=MariStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '33', 'admin', '', 'Firefox 7', null, '2020-06-29 13:46:31');
INSERT INTO `sys_log` VALUES ('4091', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Sex) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '23', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 13:46:31');
INSERT INTO `sys_log` VALUES ('4092', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=AcaDegree) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '90', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 13:46:31');
INSERT INTO `sys_log` VALUES ('4093', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CpnType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '77', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 13:46:31');
INSERT INTO `sys_log` VALUES ('4094', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EduLevel) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '148', 'admin', '', 'Firefox 7', null, '2020-06-29 13:46:31');
INSERT INTO `sys_log` VALUES ('4095', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EmpStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '42', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 13:46:31');
INSERT INTO `sys_log` VALUES ('4096', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Industry) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '121', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 13:46:32');
INSERT INTO `sys_log` VALUES ('4097', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Title) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '77', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 13:46:32');
INSERT INTO `sys_log` VALUES ('4098', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CustomerType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '25', 'admin', '', 'Firefox 7', null, '2020-06-29 13:46:32');
INSERT INTO `sys_log` VALUES ('4099', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '94', 'admin', '', 'Firefox 7', null, '2020-06-29 13:46:32');
INSERT INTO `sys_log` VALUES ('4100', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=RptDateCode) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '42', 'admin', '', 'Firefox 7', null, '2020-06-29 13:46:32');
INSERT INTO `sys_log` VALUES ('4101', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Occupation) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '39', 'admin', '', 'Firefox 7', null, '2020-06-29 13:46:32');
INSERT INTO `sys_log` VALUES ('4102', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=ResiStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '55', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 13:46:32');
INSERT INTO `sys_log` VALUES ('4104', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=InfRecType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '94', 'admin', '', 'Firefox 7', null, '2020-06-29 13:46:32');
INSERT INTO `sys_log` VALUES ('4105', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=TechTitle) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '8', 'admin', '', 'Firefox 7', null, '2020-06-29 13:46:32');
INSERT INTO `sys_log` VALUES ('4106', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CustomerType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '140', 'admin', '', 'Firefox 7', null, '2020-06-29 14:04:34');
INSERT INTO `sys_log` VALUES ('4107', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=InfRecType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '112', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:04:34');
INSERT INTO `sys_log` VALUES ('4108', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=RptDateCode) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '130', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:04:34');
INSERT INTO `sys_log` VALUES ('4109', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '13', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:04:34');
INSERT INTO `sys_log` VALUES ('4110', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Sex) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '139', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:04:34');
INSERT INTO `sys_log` VALUES ('4111', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '129', 'admin', '', 'Firefox 7', null, '2020-06-29 14:04:34');
INSERT INTO `sys_log` VALUES ('4112', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=MariStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '140', 'admin', '', 'Firefox 7', null, '2020-06-29 14:04:34');
INSERT INTO `sys_log` VALUES ('4113', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EduLevel) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '10', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:04:34');
INSERT INTO `sys_log` VALUES ('4114', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=AcaDegree) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '28', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:04:35');
INSERT INTO `sys_log` VALUES ('4115', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EmpStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '14', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:04:35');
INSERT INTO `sys_log` VALUES ('4116', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CpnType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '28', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:04:35');
INSERT INTO `sys_log` VALUES ('4117', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Occupation) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '17', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:04:35');
INSERT INTO `sys_log` VALUES ('4118', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Industry) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '8', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:04:35');
INSERT INTO `sys_log` VALUES ('4119', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Title) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '5', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:04:35');
INSERT INTO `sys_log` VALUES ('4120', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=TechTitle) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '5', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:04:35');
INSERT INTO `sys_log` VALUES ('4122', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=ResiStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:04:35');
INSERT INTO `sys_log` VALUES ('4123', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Sex) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '222', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:06:28');
INSERT INTO `sys_log` VALUES ('4124', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=MariStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '182', 'admin', '', 'Firefox 7', null, '2020-06-29 14:06:28');
INSERT INTO `sys_log` VALUES ('4125', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=RptDateCode) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '182', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:06:28');
INSERT INTO `sys_log` VALUES ('4126', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '182', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:06:28');
INSERT INTO `sys_log` VALUES ('4127', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=InfRecType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '182', 'admin', '', 'Firefox 7', null, '2020-06-29 14:06:28');
INSERT INTO `sys_log` VALUES ('4128', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CustomerType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '210', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:06:28');
INSERT INTO `sys_log` VALUES ('4129', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '64', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:06:28');
INSERT INTO `sys_log` VALUES ('4130', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EduLevel) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '48', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:06:28');
INSERT INTO `sys_log` VALUES ('4131', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=AcaDegree) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '62', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:06:28');
INSERT INTO `sys_log` VALUES ('4132', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CpnType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '47', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:06:28');
INSERT INTO `sys_log` VALUES ('4133', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Occupation) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:06:28');
INSERT INTO `sys_log` VALUES ('4134', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Industry) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '31', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:06:28');
INSERT INTO `sys_log` VALUES ('4135', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EmpStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '74', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:06:28');
INSERT INTO `sys_log` VALUES ('4136', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=TechTitle) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:06:28');
INSERT INTO `sys_log` VALUES ('4137', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Title) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:06:28');
INSERT INTO `sys_log` VALUES ('4138', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=ResiStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '26', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:06:28');
INSERT INTO `sys_log` VALUES ('4140', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Sex) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '144', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:14:48');
INSERT INTO `sys_log` VALUES ('4141', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CustomerType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '144', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:14:48');
INSERT INTO `sys_log` VALUES ('4142', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=RptDateCode) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '146', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:14:48');
INSERT INTO `sys_log` VALUES ('4143', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '144', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:14:48');
INSERT INTO `sys_log` VALUES ('4144', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=InfRecType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '146', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:14:48');
INSERT INTO `sys_log` VALUES ('4145', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=MariStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '144', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:14:48');
INSERT INTO `sys_log` VALUES ('4146', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '47', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:14:49');
INSERT INTO `sys_log` VALUES ('4147', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EmpStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '48', 'admin', '', 'Firefox 7', null, '2020-06-29 14:14:49');
INSERT INTO `sys_log` VALUES ('4148', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=TechTitle) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '8', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:14:49');
INSERT INTO `sys_log` VALUES ('4149', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Title) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '9', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:14:49');
INSERT INTO `sys_log` VALUES ('4150', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Industry) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '13', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:14:49');
INSERT INTO `sys_log` VALUES ('4151', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=AcaDegree) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '46', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:14:49');
INSERT INTO `sys_log` VALUES ('4152', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EduLevel) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '97', 'admin', '', 'Firefox 7', null, '2020-06-29 14:14:49');
INSERT INTO `sys_log` VALUES ('4153', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CpnType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '', 'Firefox 7', null, '2020-06-29 14:14:49');
INSERT INTO `sys_log` VALUES ('4154', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Occupation) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:14:49');
INSERT INTO `sys_log` VALUES ('4155', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=ResiStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '33', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:14:49');
INSERT INTO `sys_log` VALUES ('4157', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=MariStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '149', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:19:52');
INSERT INTO `sys_log` VALUES ('4158', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '151', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:19:52');
INSERT INTO `sys_log` VALUES ('4159', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=InfRecType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '152', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:19:52');
INSERT INTO `sys_log` VALUES ('4160', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=RptDateCode) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '149', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:19:52');
INSERT INTO `sys_log` VALUES ('4161', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Sex) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '150', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:19:52');
INSERT INTO `sys_log` VALUES ('4162', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CustomerType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '150', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:19:52');
INSERT INTO `sys_log` VALUES ('4163', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EduLevel) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '14', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:19:52');
INSERT INTO `sys_log` VALUES ('4164', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CpnType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '12', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:19:52');
INSERT INTO `sys_log` VALUES ('4165', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '27', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:19:52');
INSERT INTO `sys_log` VALUES ('4166', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Industry) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '28', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:19:53');
INSERT INTO `sys_log` VALUES ('4167', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EmpStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '15', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:19:53');
INSERT INTO `sys_log` VALUES ('4168', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=AcaDegree) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '', 'Firefox 7', null, '2020-06-29 14:19:53');
INSERT INTO `sys_log` VALUES ('4169', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Title) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '5', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:19:53');
INSERT INTO `sys_log` VALUES ('4170', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Occupation) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '4', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:19:53');
INSERT INTO `sys_log` VALUES ('4171', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=TechTitle) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '9', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:19:53');
INSERT INTO `sys_log` VALUES ('4172', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=ResiStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '12', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:19:53');
INSERT INTO `sys_log` VALUES ('4174', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=InfRecType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '195', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:32:19');
INSERT INTO `sys_log` VALUES ('4175', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Sex) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '194', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:32:19');
INSERT INTO `sys_log` VALUES ('4176', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=MariStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '195', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:32:19');
INSERT INTO `sys_log` VALUES ('4177', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=RptDateCode) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '195', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:32:19');
INSERT INTO `sys_log` VALUES ('4178', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CustomerType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '194', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:32:19');
INSERT INTO `sys_log` VALUES ('4179', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '195', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:32:19');
INSERT INTO `sys_log` VALUES ('4180', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '9', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:32:19');
INSERT INTO `sys_log` VALUES ('4181', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=AcaDegree) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '7', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:32:19');
INSERT INTO `sys_log` VALUES ('4182', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EduLevel) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '7', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:32:19');
INSERT INTO `sys_log` VALUES ('4183', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CpnType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:32:19');
INSERT INTO `sys_log` VALUES ('4184', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EmpStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '9', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:32:20');
INSERT INTO `sys_log` VALUES ('4185', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Occupation) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '17', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:32:20');
INSERT INTO `sys_log` VALUES ('4186', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Industry) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '8', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:32:20');
INSERT INTO `sys_log` VALUES ('4187', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=ResiStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:32:20');
INSERT INTO `sys_log` VALUES ('4188', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Title) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '44', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:32:20');
INSERT INTO `sys_log` VALUES ('4189', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=TechTitle) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '60', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 14:32:20');
INSERT INTO `sys_log` VALUES ('4191', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '12', 'admin', '', 'Firefox 7', null, '2020-06-29 14:43:59');
INSERT INTO `sys_log` VALUES ('4192', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CustomerType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '170', 'admin', '', 'Firefox 7', null, '2020-06-29 14:43:59');
INSERT INTO `sys_log` VALUES ('4193', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=MariStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '169', 'admin', '', 'Firefox 7', null, '2020-06-29 14:43:59');
INSERT INTO `sys_log` VALUES ('4194', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Sex) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '169', 'admin', '', 'Firefox 7', null, '2020-06-29 14:43:59');
INSERT INTO `sys_log` VALUES ('4195', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=RptDateCode) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '169', 'admin', '', 'Firefox 7', null, '2020-06-29 14:43:59');
INSERT INTO `sys_log` VALUES ('4196', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '171', 'admin', '', 'Firefox 7', null, '2020-06-29 14:43:59');
INSERT INTO `sys_log` VALUES ('4197', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=InfRecType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '170', 'admin', '', 'Firefox 7', null, '2020-06-29 14:44:00');
INSERT INTO `sys_log` VALUES ('4198', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EduLevel) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '165', 'admin', '', 'Firefox 7', null, '2020-06-29 14:44:00');
INSERT INTO `sys_log` VALUES ('4199', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=AcaDegree) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '120', 'admin', '', 'Firefox 7', null, '2020-06-29 14:44:00');
INSERT INTO `sys_log` VALUES ('4200', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Industry) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '104', 'admin', '', 'Firefox 7', null, '2020-06-29 14:44:00');
INSERT INTO `sys_log` VALUES ('4201', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CpnType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '', 'Firefox 7', null, '2020-06-29 14:44:00');
INSERT INTO `sys_log` VALUES ('4202', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Occupation) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '7', 'admin', '', 'Firefox 7', null, '2020-06-29 14:44:00');
INSERT INTO `sys_log` VALUES ('4203', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EmpStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '7', 'admin', '', 'Firefox 7', null, '2020-06-29 14:44:00');
INSERT INTO `sys_log` VALUES ('4204', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Title) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '', 'Firefox 7', null, '2020-06-29 14:44:00');
INSERT INTO `sys_log` VALUES ('4205', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=TechTitle) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '', 'Firefox 7', null, '2020-06-29 14:44:00');
INSERT INTO `sys_log` VALUES ('4206', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=ResiStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '8', 'admin', '', 'Firefox 7', null, '2020-06-29 14:44:00');
INSERT INTO `sys_log` VALUES ('4208', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{{username=admin, password= ******} SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@45616627]]  }', '169.254.102.84', '5221', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:18:36');
INSERT INTO `sys_log` VALUES ('4209', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '72', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:18:40');
INSERT INTO `sys_log` VALUES ('4210', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=InfRecType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '72', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:18:40');
INSERT INTO `sys_log` VALUES ('4211', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=RptDateCode) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '7', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:18:40');
INSERT INTO `sys_log` VALUES ('4212', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CustomerType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '209', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:18:40');
INSERT INTO `sys_log` VALUES ('4213', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Sex) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '349', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:18:40');
INSERT INTO `sys_log` VALUES ('4214', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=MariStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '436', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:18:40');
INSERT INTO `sys_log` VALUES ('4215', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '8', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:18:41');
INSERT INTO `sys_log` VALUES ('4216', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EmpStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '9', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:18:41');
INSERT INTO `sys_log` VALUES ('4217', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EduLevel) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '23', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:18:41');
INSERT INTO `sys_log` VALUES ('4218', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Industry) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '10', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:18:41');
INSERT INTO `sys_log` VALUES ('4219', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=AcaDegree) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '8', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:18:41');
INSERT INTO `sys_log` VALUES ('4220', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CpnType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '4', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:18:41');
INSERT INTO `sys_log` VALUES ('4221', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Occupation) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '24', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:18:41');
INSERT INTO `sys_log` VALUES ('4222', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=ResiStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '8', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:18:41');
INSERT INTO `sys_log` VALUES ('4223', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=TechTitle) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '44', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:18:41');
INSERT INTO `sys_log` VALUES ('4224', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Title) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '78', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:18:41');
INSERT INTO `sys_log` VALUES ('4226', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '9', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:19:57');
INSERT INTO `sys_log` VALUES ('4227', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=InfRecType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '8', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:19:57');
INSERT INTO `sys_log` VALUES ('4228', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=RptDateCode) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:19:57');
INSERT INTO `sys_log` VALUES ('4229', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CustomerType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '10', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:19:57');
INSERT INTO `sys_log` VALUES ('4230', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Sex) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '7', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:19:57');
INSERT INTO `sys_log` VALUES ('4231', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=MariStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '51', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:19:57');
INSERT INTO `sys_log` VALUES ('4232', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '19', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:19:57');
INSERT INTO `sys_log` VALUES ('4233', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EduLevel) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:19:57');
INSERT INTO `sys_log` VALUES ('4234', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EmpStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:19:57');
INSERT INTO `sys_log` VALUES ('4235', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=AcaDegree) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '8', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:19:57');
INSERT INTO `sys_log` VALUES ('4236', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Industry) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '51', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:19:57');
INSERT INTO `sys_log` VALUES ('4237', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CpnType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '22', 'admin', '��Gmy�\0\0�Gm��Gm\n�\0\0�G', 'Firefox 7', null, '2020-06-29 16:19:57');
INSERT INTO `sys_log` VALUES ('4238', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Occupation) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:19:57');
INSERT INTO `sys_log` VALUES ('4239', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Title) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '4', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:19:57');
INSERT INTO `sys_log` VALUES ('4240', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=TechTitle) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:19:57');
INSERT INTO `sys_log` VALUES ('4241', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=ResiStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '15', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 16:19:57');
INSERT INTO `sys_log` VALUES ('4243', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=AcaDegree) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '73', 'admin', '', 'Firefox 7', null, '2020-06-29 17:45:38');
INSERT INTO `sys_log` VALUES ('4244', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '9', 'admin', '', 'Firefox 7', null, '2020-06-29 17:45:38');
INSERT INTO `sys_log` VALUES ('4245', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CustomerType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '160', 'admin', '', 'Firefox 7', null, '2020-06-29 17:45:38');
INSERT INTO `sys_log` VALUES ('4246', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=InfRecType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '220', 'admin', '', 'Firefox 7', null, '2020-06-29 17:45:38');
INSERT INTO `sys_log` VALUES ('4247', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '221', 'admin', '', 'Firefox 7', null, '2020-06-29 17:45:38');
INSERT INTO `sys_log` VALUES ('4248', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=RptDateCode) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '209', 'admin', '', 'Firefox 7', null, '2020-06-29 17:45:38');
INSERT INTO `sys_log` VALUES ('4249', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Sex) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '138', 'admin', '', 'Firefox 7', null, '2020-06-29 17:45:38');
INSERT INTO `sys_log` VALUES ('4250', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=MariStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '74', 'admin', '', 'Firefox 7', null, '2020-06-29 17:45:38');
INSERT INTO `sys_log` VALUES ('4251', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EduLevel) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '35', 'admin', '', 'Firefox 7', null, '2020-06-29 17:45:38');
INSERT INTO `sys_log` VALUES ('4252', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CpnType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '18', 'admin', '', 'Firefox 7', null, '2020-06-29 17:45:38');
INSERT INTO `sys_log` VALUES ('4253', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Title) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '124', 'admin', '', 'Firefox 7', null, '2020-06-29 17:45:38');
INSERT INTO `sys_log` VALUES ('4254', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Occupation) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '152', 'admin', '', 'Firefox 7', null, '2020-06-29 17:45:38');
INSERT INTO `sys_log` VALUES ('4255', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Industry) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '164', 'admin', '', 'Firefox 7', null, '2020-06-29 17:45:38');
INSERT INTO `sys_log` VALUES ('4256', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=TechTitle) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '128', 'admin', '', 'Firefox 7', null, '2020-06-29 17:45:38');
INSERT INTO `sys_log` VALUES ('4257', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=ResiStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '116', 'admin', '', 'Firefox 7', null, '2020-06-29 17:45:38');
INSERT INTO `sys_log` VALUES ('4258', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EmpStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '164', 'admin', '', 'Firefox 7', null, '2020-06-29 17:45:38');
INSERT INTO `sys_log` VALUES ('4260', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{{username=admin, password= ******} SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@36c976df]]  }', '169.254.102.84', '2904', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 18:05:07');
INSERT INTO `sys_log` VALUES ('4261', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '295', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 18:05:24');
INSERT INTO `sys_log` VALUES ('4262', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '48', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 18:06:00');
INSERT INTO `sys_log` VALUES ('4263', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '57', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 18:06:24');
INSERT INTO `sys_log` VALUES ('4264', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '59', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 18:07:46');
INSERT INTO `sys_log` VALUES ('4265', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '50', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 18:09:01');
INSERT INTO `sys_log` VALUES ('4266', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '36', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 18:09:42');
INSERT INTO `sys_log` VALUES ('4267', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '52', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 18:10:30');
INSERT INTO `sys_log` VALUES ('4268', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '49', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 18:10:46');
INSERT INTO `sys_log` VALUES ('4269', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '35', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 18:11:16');
INSERT INTO `sys_log` VALUES ('4270', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '118', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 18:16:16');
INSERT INTO `sys_log` VALUES ('4271', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CustomerType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '280', 'admin', '', 'Firefox 7', null, '2020-06-29 18:29:36');
INSERT INTO `sys_log` VALUES ('4272', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=RptDateCode) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '288', 'admin', '', 'Firefox 7', null, '2020-06-29 18:29:36');
INSERT INTO `sys_log` VALUES ('4273', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Sex) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '198', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 18:29:36');
INSERT INTO `sys_log` VALUES ('4274', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=InfRecType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '260', 'admin', '', 'Firefox 7', null, '2020-06-29 18:29:36');
INSERT INTO `sys_log` VALUES ('4275', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '295', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 18:29:36');
INSERT INTO `sys_log` VALUES ('4276', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=MariStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '323', 'admin', '', 'Firefox 7', null, '2020-06-29 18:29:36');
INSERT INTO `sys_log` VALUES ('4277', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=AcaDegree) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '164', 'admin', '', 'Firefox 7', null, '2020-06-29 18:29:36');
INSERT INTO `sys_log` VALUES ('4278', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EduLevel) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '', 'Firefox 7', null, '2020-06-29 18:29:36');
INSERT INTO `sys_log` VALUES ('4279', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '416', 'admin', '', 'Firefox 7', null, '2020-06-29 18:29:36');
INSERT INTO `sys_log` VALUES ('4280', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CpnType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '7', 'admin', '', 'Firefox 7', null, '2020-06-29 18:29:36');
INSERT INTO `sys_log` VALUES ('4281', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EmpStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '', 'Firefox 7', null, '2020-06-29 18:29:36');
INSERT INTO `sys_log` VALUES ('4282', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Industry) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '7', 'admin', '', 'Firefox 7', null, '2020-06-29 18:29:36');
INSERT INTO `sys_log` VALUES ('4283', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Title) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '5', 'admin', '', 'Firefox 7', null, '2020-06-29 18:29:36');
INSERT INTO `sys_log` VALUES ('4284', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Occupation) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '', 'Firefox 7', null, '2020-06-29 18:29:37');
INSERT INTO `sys_log` VALUES ('4285', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=TechTitle) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '4', 'admin', '', 'Firefox 7', null, '2020-06-29 18:29:37');
INSERT INTO `sys_log` VALUES ('4286', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=ResiStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '', 'Firefox 7', null, '2020-06-29 18:29:37');
INSERT INTO `sys_log` VALUES ('4288', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=InfRecType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '7', 'admin', '', 'Firefox 7', null, '2020-06-29 18:31:25');
INSERT INTO `sys_log` VALUES ('4289', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '', 'Firefox 7', null, '2020-06-29 18:31:25');
INSERT INTO `sys_log` VALUES ('4290', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=RptDateCode) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '', 'Firefox 7', null, '2020-06-29 18:31:25');
INSERT INTO `sys_log` VALUES ('4291', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CustomerType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '', 'Firefox 7', null, '2020-06-29 18:31:25');
INSERT INTO `sys_log` VALUES ('4292', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Sex) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '7', 'admin', '', 'Firefox 7', null, '2020-06-29 18:31:25');
INSERT INTO `sys_log` VALUES ('4293', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=MariStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '5', 'admin', '', 'Firefox 7', null, '2020-06-29 18:31:25');
INSERT INTO `sys_log` VALUES ('4294', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '', 'Firefox 7', null, '2020-06-29 18:31:26');
INSERT INTO `sys_log` VALUES ('4295', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EduLevel) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '', 'Firefox 7', null, '2020-06-29 18:31:26');
INSERT INTO `sys_log` VALUES ('4296', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=AcaDegree) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '7', 'admin', '', 'Firefox 7', null, '2020-06-29 18:31:26');
INSERT INTO `sys_log` VALUES ('4297', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Industry) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '7', 'admin', '', 'Firefox 7', null, '2020-06-29 18:31:26');
INSERT INTO `sys_log` VALUES ('4298', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CpnType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '5', 'admin', '', 'Firefox 7', null, '2020-06-29 18:31:26');
INSERT INTO `sys_log` VALUES ('4299', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EmpStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '5', 'admin', '', 'Firefox 7', null, '2020-06-29 18:31:26');
INSERT INTO `sys_log` VALUES ('4300', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Occupation) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '7', 'admin', '', 'Firefox 7', null, '2020-06-29 18:31:26');
INSERT INTO `sys_log` VALUES ('4301', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Title) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '5', 'admin', '', 'Firefox 7', null, '2020-06-29 18:31:26');
INSERT INTO `sys_log` VALUES ('4302', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=ResiStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '5', 'admin', '', 'Firefox 7', null, '2020-06-29 18:31:26');
INSERT INTO `sys_log` VALUES ('4303', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=TechTitle) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '5', 'admin', '', 'Firefox 7', null, '2020-06-29 18:31:26');
INSERT INTO `sys_log` VALUES ('4305', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=InfRecType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '5', 'admin', '', 'Firefox 7', null, '2020-06-29 18:32:55');
INSERT INTO `sys_log` VALUES ('4306', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '8', 'admin', '', 'Firefox 7', null, '2020-06-29 18:32:55');
INSERT INTO `sys_log` VALUES ('4307', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=RptDateCode) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '4', 'admin', '', 'Firefox 7', null, '2020-06-29 18:32:55');
INSERT INTO `sys_log` VALUES ('4308', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CustomerType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '4', 'admin', '', 'Firefox 7', null, '2020-06-29 18:32:55');
INSERT INTO `sys_log` VALUES ('4309', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Sex) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '5', 'admin', '', 'Firefox 7', null, '2020-06-29 18:32:56');
INSERT INTO `sys_log` VALUES ('4310', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=MariStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '6', 'admin', '', 'Firefox 7', null, '2020-06-29 18:32:56');
INSERT INTO `sys_log` VALUES ('4311', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '5', 'admin', '', 'Firefox 7', null, '2020-06-29 18:32:56');
INSERT INTO `sys_log` VALUES ('4312', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EduLevel) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '8', 'admin', '', 'Firefox 7', null, '2020-06-29 18:32:56');
INSERT INTO `sys_log` VALUES ('4313', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CpnType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '8', 'admin', '', 'Firefox 7', null, '2020-06-29 18:32:56');
INSERT INTO `sys_log` VALUES ('4314', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EmpStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '5', 'admin', '', 'Firefox 7', null, '2020-06-29 18:32:56');
INSERT INTO `sys_log` VALUES ('4315', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=AcaDegree) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '5', 'admin', '', 'Firefox 7', null, '2020-06-29 18:32:56');
INSERT INTO `sys_log` VALUES ('4316', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Industry) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '5', 'admin', '', 'Firefox 7', null, '2020-06-29 18:32:56');
INSERT INTO `sys_log` VALUES ('4317', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Occupation) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '5', 'admin', '', 'Firefox 7', null, '2020-06-29 18:32:56');
INSERT INTO `sys_log` VALUES ('4318', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=TechTitle) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '4', 'admin', '', 'Firefox 7', null, '2020-06-29 18:32:56');
INSERT INTO `sys_log` VALUES ('4319', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Title) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '4', 'admin', '', 'Firefox 7', null, '2020-06-29 18:32:56');
INSERT INTO `sys_log` VALUES ('4320', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=ResiStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '5', 'admin', '', 'Firefox 7', null, '2020-06-29 18:32:56');
INSERT INTO `sys_log` VALUES ('4322', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '207', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 18:38:00');
INSERT INTO `sys_log` VALUES ('4323', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{{username=admin, password= ******} SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@182c84ef]]  }', '169.254.102.84', '779', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 18:44:43');
INSERT INTO `sys_log` VALUES ('4324', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '47', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 18:45:00');
INSERT INTO `sys_log` VALUES ('4325', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '47', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 18:52:52');
INSERT INTO `sys_log` VALUES ('4326', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=InfRecType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '111', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 19:01:26');
INSERT INTO `sys_log` VALUES ('4327', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=MariStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '33', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 19:01:26');
INSERT INTO `sys_log` VALUES ('4328', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CustomerType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '186', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 19:01:26');
INSERT INTO `sys_log` VALUES ('4329', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '147', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 19:01:26');
INSERT INTO `sys_log` VALUES ('4330', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EduLevel) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '136', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 19:01:26');
INSERT INTO `sys_log` VALUES ('4331', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=AcaDegree) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '110', 'admin', '内网IP', 'Firefox 7', null, '2020-06-29 19:01:26');
INSERT INTO `sys_log` VALUES ('4332', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=RptDateCode) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '95', 'admin', '', 'Firefox 7', null, '2020-06-29 19:01:27');
INSERT INTO `sys_log` VALUES ('4333', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '348', 'admin', '', 'Firefox 7', null, '2020-06-29 19:01:27');
INSERT INTO `sys_log` VALUES ('4334', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Sex) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '203', 'admin', '', 'Firefox 7', null, '2020-06-29 19:01:27');
INSERT INTO `sys_log` VALUES ('4335', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Industry) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '367', 'admin', '', 'Firefox 7', null, '2020-06-29 19:01:27');
INSERT INTO `sys_log` VALUES ('4336', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Occupation) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '345', 'admin', '', 'Firefox 7', null, '2020-06-29 19:01:27');
INSERT INTO `sys_log` VALUES ('4337', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Title) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '325', 'admin', '', 'Firefox 7', null, '2020-06-29 19:01:27');
INSERT INTO `sys_log` VALUES ('4338', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EmpStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '113', 'admin', '', 'Firefox 7', null, '2020-06-29 19:01:27');
INSERT INTO `sys_log` VALUES ('4339', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CpnType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '374', 'admin', '', 'Firefox 7', null, '2020-06-29 19:01:27');
INSERT INTO `sys_log` VALUES ('4340', '查询/api/customerBaseInfo', 'INFO', 'me.zhengjie.modules.custominfo.rest.BusCustomerBaseInfoController.query()', '{BusCustomerBaseInfoQueryCriteria(customerid=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.102.84', '342', 'admin', '', 'Firefox 7', null, '2020-06-29 19:01:27');
INSERT INTO `sys_log` VALUES ('4341', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=TechTitle) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '291', 'admin', '', 'Firefox 7', null, '2020-06-29 19:01:27');
INSERT INTO `sys_log` VALUES ('4342', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=ResiStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '245', 'admin', '', 'Firefox 7', null, '2020-06-29 19:01:27');
INSERT INTO `sys_log` VALUES ('4343', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{{username=admin, password= ******} SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@5ac9c244]]  }', '169.254.102.84', '4842', 'admin', '内网IP', 'Chrome', null, '2020-07-01 10:24:27');
INSERT INTO `sys_log` VALUES ('4344', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '927', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:09:07');
INSERT INTO `sys_log` VALUES ('4345', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '165', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:10:54');
INSERT INTO `sys_log` VALUES ('4346', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '80', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:13:03');
INSERT INTO `sys_log` VALUES ('4347', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '61', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:13:48');
INSERT INTO `sys_log` VALUES ('4348', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '52', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:14:40');
INSERT INTO `sys_log` VALUES ('4349', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '192', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:14:50');
INSERT INTO `sys_log` VALUES ('4350', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '62', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:15:25');
INSERT INTO `sys_log` VALUES ('4351', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '61', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:16:19');
INSERT INTO `sys_log` VALUES ('4352', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '48', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:19:54');
INSERT INTO `sys_log` VALUES ('4353', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '46', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:20:42');
INSERT INTO `sys_log` VALUES ('4354', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '50', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:21:25');
INSERT INTO `sys_log` VALUES ('4355', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '44', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:22:02');
INSERT INTO `sys_log` VALUES ('4356', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '50', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:22:44');
INSERT INTO `sys_log` VALUES ('4357', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '59', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:23:16');
INSERT INTO `sys_log` VALUES ('4358', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '42', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:23:50');
INSERT INTO `sys_log` VALUES ('4359', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '56', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:24:27');
INSERT INTO `sys_log` VALUES ('4360', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '40', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:25:08');
INSERT INTO `sys_log` VALUES ('4361', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '44', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:25:53');
INSERT INTO `sys_log` VALUES ('4362', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '43', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:26:38');
INSERT INTO `sys_log` VALUES ('4363', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '202', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:27:22');
INSERT INTO `sys_log` VALUES ('4364', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '289', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:28:01');
INSERT INTO `sys_log` VALUES ('4365', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '253', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:28:42');
INSERT INTO `sys_log` VALUES ('4366', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '124', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:29:23');
INSERT INTO `sys_log` VALUES ('4367', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '99', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:29:55');
INSERT INTO `sys_log` VALUES ('4368', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '68', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:30:28');
INSERT INTO `sys_log` VALUES ('4369', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '54', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:31:05');
INSERT INTO `sys_log` VALUES ('4370', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '152', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:31:37');
INSERT INTO `sys_log` VALUES ('4371', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '157', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:32:14');
INSERT INTO `sys_log` VALUES ('4372', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '60', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:32:47');
INSERT INTO `sys_log` VALUES ('4373', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '30', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:33:22');
INSERT INTO `sys_log` VALUES ('4374', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '28', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:40:44');
INSERT INTO `sys_log` VALUES ('4375', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '40', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:41:08');
INSERT INTO `sys_log` VALUES ('4376', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '28', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:41:23');
INSERT INTO `sys_log` VALUES ('4377', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '33', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:41:41');
INSERT INTO `sys_log` VALUES ('4378', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '39', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:42:00');
INSERT INTO `sys_log` VALUES ('4379', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '41', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:42:36');
INSERT INTO `sys_log` VALUES ('4380', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '33', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:43:18');
INSERT INTO `sys_log` VALUES ('4381', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '40', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:43:40');
INSERT INTO `sys_log` VALUES ('4382', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '32', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:44:01');
INSERT INTO `sys_log` VALUES ('4383', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '33', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:44:20');
INSERT INTO `sys_log` VALUES ('4384', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '26', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:46:03');
INSERT INTO `sys_log` VALUES ('4385', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '26', 'admin', '内网IP', 'Chrome', null, '2020-07-01 11:49:08');
INSERT INTO `sys_log` VALUES ('4386', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{{username=admin, password= ******} SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@6de0e6cc]]  }', '169.254.102.84', '3311', 'admin', '内网IP', 'Firefox 7', null, '2020-07-03 11:09:06');
INSERT INTO `sys_log` VALUES ('4387', '删除所有ERROR日志', 'INFO', 'me.zhengjie.rest.LogController.delAllErrorLog()', '{ }', '169.254.102.84', '868', 'admin', '内网IP', 'Firefox 7', null, '2020-07-03 11:10:30');
INSERT INTO `sys_log` VALUES ('4388', '查询定时任务', 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.query()', '{JobQueryCriteria(jobName=null, isSuccess=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.102.84', '53', 'admin', '内网IP', 'Firefox 7', null, '2020-07-03 11:10:44');
INSERT INTO `sys_log` VALUES ('4389', '执行定时任务', 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.execution()', '{3  }', '169.254.102.84', '83', 'admin', '内网IP', 'Firefox 7', null, '2020-07-03 11:15:31');
INSERT INTO `sys_log` VALUES ('4390', '更改定时任务状态', 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.update()', '{3  }', '169.254.102.84', '533', 'admin', '内网IP', 'Firefox 7', null, '2020-07-03 11:16:03');
INSERT INTO `sys_log` VALUES ('4391', '查询定时任务', 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.query()', '{JobQueryCriteria(jobName=null, isSuccess=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.102.84', '3', 'admin', '内网IP', 'Firefox 7', null, '2020-07-03 11:16:03');
INSERT INTO `sys_log` VALUES ('4392', '更改定时任务状态', 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.update()', '{3  }', '169.254.102.84', '117', 'admin', '内网IP', 'Firefox 7', null, '2020-07-03 11:16:06');
INSERT INTO `sys_log` VALUES ('4393', '查询定时任务', 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.query()', '{JobQueryCriteria(jobName=null, isSuccess=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.102.84', '4', 'admin', '内网IP', 'Firefox 7', null, '2020-07-03 11:16:06');
INSERT INTO `sys_log` VALUES ('4394', '查询定时任务', 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.query()', '{JobQueryCriteria(jobName=null, isSuccess=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.102.84', '892', 'admin', '内网IP', 'Firefox 7', null, '2020-07-03 11:38:52');
INSERT INTO `sys_log` VALUES ('4395', '新增定时任务', 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.create()', '{me.zhengjie.modules.quartz.domain.QuartzJob@39b6b03c[JOB_KEY=JOB_KEY,\n,id=7,\n,uuid=<null>,\n,jobName=测试征信报送任务,\n,beanName=TestCreditTask,\n,methodName=run,\n,params=<null>,\n,cronExpression=0/50 * * * * ?,\n,isPause=true,\n,personInCharge=ces,\n,email=<null>,\n,subTask=<null>,\n,pauseAfterFailure=true,\n,description=测试征信报送任务,\n]  }', '169.254.102.84', '66', 'admin', '内网IP', 'Firefox 7', null, '2020-07-03 11:41:32');
INSERT INTO `sys_log` VALUES ('4396', '查询定时任务', 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.query()', '{JobQueryCriteria(jobName=null, isSuccess=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.102.84', '10', 'admin', '内网IP', 'Firefox 7', null, '2020-07-03 11:41:33');
INSERT INTO `sys_log` VALUES ('4397', '执行定时任务', 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.execution()', '{7  }', '169.254.102.84', '97', 'admin', '内网IP', 'Firefox 7', null, '2020-07-03 11:45:15');
INSERT INTO `sys_log` VALUES ('4398', '修改定时任务', 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.update()', '{me.zhengjie.modules.quartz.domain.QuartzJob@634243b7[JOB_KEY=JOB_KEY,\n,id=7,\n,uuid=<null>,\n,jobName=测试征信报送任务,\n,beanName=testCreditTask,\n,methodName=run,\n,params=<null>,\n,cronExpression=0/50 * * * * ?,\n,isPause=true,\n,personInCharge=ces,\n,email=<null>,\n,subTask=<null>,\n,pauseAfterFailure=true,\n,description=测试征信报送任务,\n]  }', '169.254.102.84', '252', 'admin', '内网IP', 'Firefox 7', null, '2020-07-03 11:46:14');
INSERT INTO `sys_log` VALUES ('4399', '查询定时任务', 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.query()', '{JobQueryCriteria(jobName=null, isSuccess=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.102.84', '15', 'admin', '内网IP', 'Firefox 7', null, '2020-07-03 11:46:14');
INSERT INTO `sys_log` VALUES ('4400', '执行定时任务', 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.execution()', '{7  }', '169.254.102.84', '4', 'admin', '内网IP', 'Firefox 7', null, '2020-07-03 11:46:16');
INSERT INTO `sys_log` VALUES ('4401', '执行定时任务', 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.execution()', '{7  }', '169.254.102.84', '104', 'admin', '内网IP', 'Firefox 7', null, '2020-07-03 11:48:30');
INSERT INTO `sys_log` VALUES ('4402', '执行定时任务', 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.execution()', '{7  }', '169.254.102.84', '95', 'admin', '内网IP', 'Firefox 7', null, '2020-07-03 11:57:44');
INSERT INTO `sys_log` VALUES ('4403', '用户登录', 'INFO', 'me.zhengjie.modules.security.rest.AuthorizationController.login()', '{{username=admin, password= ******} SecurityContextHolderAwareRequestWrapper[ FirewalledRequest[ org.apache.catalina.connector.RequestFacade@15a05a47]]  }', '169.254.102.84', '7735', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:35:02');
INSERT INTO `sys_log` VALUES ('4404', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '621', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:35:24');
INSERT INTO `sys_log` VALUES ('4405', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '66', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:36:20');
INSERT INTO `sys_log` VALUES ('4406', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.query()', '{DictQueryCriteria(blurry=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.102.84', '67', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:36:25');
INSERT INTO `sys_log` VALUES ('4407', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.query()', '{DictQueryCriteria(blurry=null) Page request [number: 1, size 10, sort: id: DESC]  }', '169.254.102.84', '105', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:36:42');
INSERT INTO `sys_log` VALUES ('4408', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.query()', '{DictQueryCriteria(blurry=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.102.84', '24', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:36:44');
INSERT INTO `sys_log` VALUES ('4409', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.query()', '{DictQueryCriteria(blurry=null) Page request [number: 1, size 10, sort: id: DESC]  }', '169.254.102.84', '19', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:36:47');
INSERT INTO `sys_log` VALUES ('4410', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.query()', '{DictQueryCriteria(blurry=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.102.84', '139', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:38:01');
INSERT INTO `sys_log` VALUES ('4411', '新增字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.create()', '{me.zhengjie.modules.system.domain.Dict@1ceb3a0d[id=49,\n,dictDetails=[],\n,name=TaskStatus,\n,description=任务状态,\n]  }', '169.254.102.84', '163', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:38:25');
INSERT INTO `sys_log` VALUES ('4412', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.query()', '{DictQueryCriteria(blurry=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.102.84', '97', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:38:25');
INSERT INTO `sys_log` VALUES ('4413', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=TaskStatus) Page request [number: 0, size 10, sort: dictSort: ASC,id: DESC]  }', '169.254.102.84', '78', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:38:26');
INSERT INTO `sys_log` VALUES ('4414', '新增字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.create()', '{me.zhengjie.modules.system.domain.DictDetail@15951874[id=330,\n,dict=me.zhengjie.modules.system.domain.Dict@31683720[id=49,\n,dictDetails=<null>,\n,name=<null>,\n,description=<null>,\n],\n,label=1,\n,value=成功,\n,dictSort=1,\n]  }', '169.254.102.84', '52', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:38:43');
INSERT INTO `sys_log` VALUES ('4415', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=TaskStatus) Page request [number: 0, size 10, sort: dictSort: ASC,id: DESC]  }', '169.254.102.84', '74', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:38:43');
INSERT INTO `sys_log` VALUES ('4416', '新增字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.create()', '{me.zhengjie.modules.system.domain.DictDetail@483a5deb[id=331,\n,dict=me.zhengjie.modules.system.domain.Dict@31b8bd2e[id=49,\n,dictDetails=<null>,\n,name=<null>,\n,description=<null>,\n],\n,label=2,\n,value=失败,\n,dictSort=2,\n]  }', '169.254.102.84', '56', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:38:50');
INSERT INTO `sys_log` VALUES ('4417', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=TaskStatus) Page request [number: 0, size 10, sort: dictSort: ASC,id: DESC]  }', '169.254.102.84', '58', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:38:50');
INSERT INTO `sys_log` VALUES ('4418', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=InfRecType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '5', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:39:00');
INSERT INTO `sys_log` VALUES ('4419', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '79', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:39:00');
INSERT INTO `sys_log` VALUES ('4420', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CustomerType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '136', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:39:01');
INSERT INTO `sys_log` VALUES ('4421', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=RptDateCode) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '146', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:39:01');
INSERT INTO `sys_log` VALUES ('4422', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Sex) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '45', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:39:00');
INSERT INTO `sys_log` VALUES ('4423', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EduLevel) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '175', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:39:01');
INSERT INTO `sys_log` VALUES ('4424', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=MariStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '246', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:39:01');
INSERT INTO `sys_log` VALUES ('4425', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=AcaDegree) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '221', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:39:01');
INSERT INTO `sys_log` VALUES ('4426', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=IDType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '96', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:39:01');
INSERT INTO `sys_log` VALUES ('4427', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=EmpStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '161', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:39:01');
INSERT INTO `sys_log` VALUES ('4428', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Industry) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '172', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:39:01');
INSERT INTO `sys_log` VALUES ('4429', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=CpnType) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '161', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:39:01');
INSERT INTO `sys_log` VALUES ('4430', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Occupation) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '135', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:39:01');
INSERT INTO `sys_log` VALUES ('4431', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=TechTitle) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '267', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:39:01');
INSERT INTO `sys_log` VALUES ('4432', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=ResiStatus) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '446', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:39:01');
INSERT INTO `sys_log` VALUES ('4433', '查询字典详情', 'INFO', 'me.zhengjie.modules.system.rest.DictDetailController.query()', '{DictDetailQueryCriteria(label=null, dictName=Title) Page request [number: 0, size 2000, sort: dictSort: ASC]  }', '169.254.102.84', '1148', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:39:02');
INSERT INTO `sys_log` VALUES ('4434', '查询/api/customerBaseInfo', 'INFO', 'me.zhengjie.modules.custominfo.rest.BusCustomerBaseInfoController.query()', '{BusCustomerBaseInfoQueryCriteria(customerid=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.102.84', '1140', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:39:02');
INSERT INTO `sys_log` VALUES ('4435', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '161', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:39:21');
INSERT INTO `sys_log` VALUES ('4436', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '76', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:39:37');
INSERT INTO `sys_log` VALUES ('4437', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '99', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:39:47');
INSERT INTO `sys_log` VALUES ('4438', '查询字典', 'INFO', 'me.zhengjie.modules.system.rest.DictController.queryAll()', '{ }', '169.254.102.84', '57', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 16:42:35');
INSERT INTO `sys_log` VALUES ('4439', '查询定时任务', 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.query()', '{JobQueryCriteria(jobName=null, isSuccess=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.102.84', '49', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 17:00:17');
INSERT INTO `sys_log` VALUES ('4440', '查询定时任务', 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.query()', '{JobQueryCriteria(jobName=null, isSuccess=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.102.84', '80', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 17:00:50');
INSERT INTO `sys_log` VALUES ('4441', '查询定时任务', 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.query()', '{JobQueryCriteria(jobName=null, isSuccess=null, createTime=null) Page request [number: 0, size 10, sort: id: DESC]  }', '169.254.102.84', '4', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 17:02:39');
INSERT INTO `sys_log` VALUES ('4442', '新增定时任务', 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.create()', '{me.zhengjie.modules.quartz.domain.QuartzJob@37cec24e[JOB_KEY=JOB_KEY,\n,id=8,\n,uuid=<null>,\n,jobName=系统切日任务,\n,beanName=systemCommonTask,\n,methodName=run,\n,params=<null>,\n,cronExpression=0 0 0 */1 * ?,\n,isPause=false,\n,personInCharge=王,\n,email=<null>,\n,subTask=<null>,\n,pauseAfterFailure=true,\n,description=系统切日任务,\n]  }', '169.254.102.84', '163', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 17:02:39');
INSERT INTO `sys_log` VALUES ('4443', '执行定时任务', 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.execution()', '{8  }', '169.254.102.84', '51', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 17:02:42');
INSERT INTO `sys_log` VALUES ('4444', '执行定时任务', 'INFO', 'me.zhengjie.modules.quartz.rest.QuartzJobController.execution()', '{8  }', '169.254.102.84', '59', 'admin', '内网IP', 'Firefox 7', null, '2020-07-07 17:07:09');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` bigint(20) DEFAULT NULL COMMENT '上级菜单ID',
  `sub_count` int(5) DEFAULT '0' COMMENT '子菜单数目',
  `type` int(11) DEFAULT NULL COMMENT '菜单类型',
  `title` varchar(255) DEFAULT NULL COMMENT '菜单标题',
  `name` varchar(255) DEFAULT NULL COMMENT '组件名称',
  `component` varchar(255) DEFAULT NULL COMMENT '组件',
  `menu_sort` int(5) DEFAULT NULL COMMENT '排序',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `path` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `i_frame` bit(1) DEFAULT NULL COMMENT '是否外链',
  `cache` bit(1) DEFAULT b'0' COMMENT '缓存',
  `hidden` bit(1) DEFAULT b'0' COMMENT '隐藏',
  `permission` varchar(255) DEFAULT NULL COMMENT '权限',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`menu_id`) USING BTREE,
  UNIQUE KEY `uniq_title` (`title`),
  UNIQUE KEY `uniq_name` (`name`),
  KEY `inx_pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统菜单';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', null, '7', '0', '系统管理', null, null, '2', 'system', 'system', '\0', '\0', '\0', null, null, 'admin', '2018-12-18 15:11:29', '2020-06-12 16:54:00');
INSERT INTO `sys_menu` VALUES ('2', '1', '3', '1', '用户管理', 'User', 'system/user/index', '2', 'peoples', 'user', '\0', '\0', '\0', 'user:list', null, null, '2018-12-18 15:14:44', null);
INSERT INTO `sys_menu` VALUES ('3', '1', '3', '1', '角色管理', 'Role', 'system/role/index', '3', 'role', 'role', '\0', '\0', '\0', 'roles:list', null, null, '2018-12-18 15:16:07', null);
INSERT INTO `sys_menu` VALUES ('5', '1', '3', '1', '菜单管理', 'Menu', 'system/menu/index', '5', 'menu', 'menu', '\0', '\0', '\0', 'menu:list', null, null, '2018-12-18 15:17:28', null);
INSERT INTO `sys_menu` VALUES ('6', null, '5', '0', '系统监控', null, null, '10', 'monitor', 'monitor', '\0', '\0', '\0', null, null, null, '2018-12-18 15:17:48', null);
INSERT INTO `sys_menu` VALUES ('7', '6', '0', '1', '操作日志', 'Log', 'monitor/log/index', '11', 'log', 'logs', '\0', '\0', '\0', null, null, null, '2018-12-18 15:18:26', null);
INSERT INTO `sys_menu` VALUES ('9', '6', '0', '1', 'SQL监控', 'Sql', 'monitor/sql/index', '18', 'sqlMonitor', 'druid', '\0', '\0', '\0', null, null, null, '2018-12-18 15:19:34', null);
INSERT INTO `sys_menu` VALUES ('10', null, '5', '0', '组件管理', null, null, '50', 'zujian', 'components', '\0', '\0', '\0', null, null, null, '2018-12-19 13:38:16', null);
INSERT INTO `sys_menu` VALUES ('11', '10', '0', '1', '图标库', 'Icons', 'components/icons/index', '51', 'icon', 'icon', '\0', '\0', '\0', null, null, null, '2018-12-19 13:38:49', null);
INSERT INTO `sys_menu` VALUES ('14', '36', '0', '1', '邮件工具', 'Email', 'tools/email/index', '35', 'email', 'email', '\0', '\0', '\0', null, null, null, '2018-12-27 10:13:09', null);
INSERT INTO `sys_menu` VALUES ('15', '10', '0', '1', '富文本', 'Editor', 'components/Editor', '52', 'fwb', 'tinymce', '\0', '\0', '\0', null, null, null, '2018-12-27 11:58:25', null);
INSERT INTO `sys_menu` VALUES ('16', '36', '2', '1', '图床管理', 'Pictures', 'tools/picture/index', '33', 'image', 'pictures', '\0', '\0', '\0', 'pictures:list', null, null, '2018-12-28 09:36:53', null);
INSERT INTO `sys_menu` VALUES ('18', '36', '3', '1', '存储管理', 'Storage', 'tools/storage/index', '34', 'qiniu', 'storage', '\0', '\0', '\0', 'storage:list', null, null, '2018-12-31 11:12:15', null);
INSERT INTO `sys_menu` VALUES ('19', '36', '0', '1', '支付宝工具', 'AliPay', 'tools/aliPay/index', '37', 'alipay', 'aliPay', '\0', '\0', '\0', null, null, null, '2018-12-31 14:52:38', null);
INSERT INTO `sys_menu` VALUES ('21', null, '2', '0', '多级菜单', null, '', '900', 'menu', 'nested', '\0', '\0', '\0', null, null, 'admin', '2019-01-04 16:22:03', '2020-06-29 09:46:01');
INSERT INTO `sys_menu` VALUES ('22', '21', '2', '1', '二级菜单1', null, 'nested/menu1/index', '999', 'menu', 'menu1', '\0', '\0', '\0', null, null, null, '2019-01-04 16:23:29', null);
INSERT INTO `sys_menu` VALUES ('23', '21', '0', '1', '二级菜单2', null, 'nested/menu2/index', '999', 'menu', 'menu2', '\0', '\0', '\0', null, null, null, '2019-01-04 16:23:57', null);
INSERT INTO `sys_menu` VALUES ('24', '22', '0', '1', '三级菜单1', null, 'nested/menu1/menu1-1', '999', 'menu', 'menu1-1', '\0', '\0', '\0', null, null, null, '2019-01-04 16:24:48', null);
INSERT INTO `sys_menu` VALUES ('27', '22', '0', '1', '三级菜单2', null, 'nested/menu1/menu1-2', '999', 'menu', 'menu1-2', '\0', '\0', '\0', null, null, null, '2019-01-07 17:27:32', null);
INSERT INTO `sys_menu` VALUES ('28', '1', '3', '1', '任务调度', 'Timing', 'system/timing/index', '999', 'timing', 'timing', '\0', '\0', '\0', 'timing:list', null, null, '2019-01-07 20:34:40', null);
INSERT INTO `sys_menu` VALUES ('30', '36', '0', '1', '代码生成', 'GeneratorIndex', 'generator/index', '32', 'dev', 'generator', '\0', '', '\0', null, null, null, '2019-01-11 15:45:55', null);
INSERT INTO `sys_menu` VALUES ('32', '6', '0', '1', '异常日志', 'ErrorLog', 'monitor/log/errorLog', '12', 'error', 'errorLog', '\0', '\0', '\0', null, null, null, '2019-01-13 13:49:03', null);
INSERT INTO `sys_menu` VALUES ('33', '10', '0', '1', 'Markdown', 'Markdown', 'components/MarkDown', '53', 'markdown', 'markdown', '\0', '\0', '\0', null, null, null, '2019-03-08 13:46:44', null);
INSERT INTO `sys_menu` VALUES ('34', '10', '0', '1', 'Yaml编辑器', 'YamlEdit', 'components/YamlEdit', '54', 'dev', 'yaml', '\0', '\0', '\0', null, null, null, '2019-03-08 15:49:40', null);
INSERT INTO `sys_menu` VALUES ('35', '1', '3', '1', '部门管理', 'Dept', 'system/dept/index', '6', 'dept', 'dept', '\0', '\0', '\0', 'dept:list', null, null, '2019-03-25 09:46:00', null);
INSERT INTO `sys_menu` VALUES ('36', null, '8', '0', '系统工具', null, '', '30', 'sys-tools', 'sys-tools', '\0', '\0', '\0', null, null, null, '2019-03-29 10:57:35', null);
INSERT INTO `sys_menu` VALUES ('37', '1', '3', '1', '岗位管理', 'Job', 'system/job/index', '7', 'Steve-Jobs', 'job', '\0', '\0', '\0', 'job:list', null, null, '2019-03-29 13:51:18', null);
INSERT INTO `sys_menu` VALUES ('38', '36', '0', '1', '接口文档', 'Swagger', 'tools/swagger/index', '36', 'swagger', 'swagger2', '\0', '\0', '\0', null, null, null, '2019-03-29 19:57:53', null);
INSERT INTO `sys_menu` VALUES ('39', '1', '3', '1', '字典管理', 'Dict', 'system/dict/index', '8', 'dictionary', 'dict', '\0', '\0', '\0', 'dict:list', null, null, '2019-04-10 11:49:04', null);
INSERT INTO `sys_menu` VALUES ('41', '6', '0', '1', '在线用户', 'OnlineUser', 'monitor/online/index', '10', 'Steve-Jobs', 'online', '\0', '\0', '\0', null, null, null, '2019-10-26 22:08:43', null);
INSERT INTO `sys_menu` VALUES ('44', '2', '0', '2', '用户新增', null, '', '2', '', '', '\0', '\0', '\0', 'user:add', null, null, '2019-10-29 10:59:46', null);
INSERT INTO `sys_menu` VALUES ('45', '2', '0', '2', '用户编辑', null, '', '3', '', '', '\0', '\0', '\0', 'user:edit', null, null, '2019-10-29 11:00:08', null);
INSERT INTO `sys_menu` VALUES ('46', '2', '0', '2', '用户删除', null, '', '4', '', '', '\0', '\0', '\0', 'user:del', null, null, '2019-10-29 11:00:23', null);
INSERT INTO `sys_menu` VALUES ('48', '3', '0', '2', '角色创建', null, '', '2', '', '', '\0', '\0', '\0', 'roles:add', null, null, '2019-10-29 12:45:34', null);
INSERT INTO `sys_menu` VALUES ('49', '3', '0', '2', '角色修改', null, '', '3', '', '', '\0', '\0', '\0', 'roles:edit', null, null, '2019-10-29 12:46:16', null);
INSERT INTO `sys_menu` VALUES ('50', '3', '0', '2', '角色删除', null, '', '4', '', '', '\0', '\0', '\0', 'roles:del', null, null, '2019-10-29 12:46:51', null);
INSERT INTO `sys_menu` VALUES ('52', '5', '0', '2', '菜单新增', null, '', '2', '', '', '\0', '\0', '\0', 'menu:add', null, null, '2019-10-29 12:55:07', null);
INSERT INTO `sys_menu` VALUES ('53', '5', '0', '2', '菜单编辑', null, '', '3', '', '', '\0', '\0', '\0', 'menu:edit', null, null, '2019-10-29 12:55:40', null);
INSERT INTO `sys_menu` VALUES ('54', '5', '0', '2', '菜单删除', null, '', '4', '', '', '\0', '\0', '\0', 'menu:del', null, null, '2019-10-29 12:56:00', null);
INSERT INTO `sys_menu` VALUES ('56', '35', '0', '2', '部门新增', null, '', '2', '', '', '\0', '\0', '\0', 'dept:add', null, null, '2019-10-29 12:57:09', null);
INSERT INTO `sys_menu` VALUES ('57', '35', '0', '2', '部门编辑', null, '', '3', '', '', '\0', '\0', '\0', 'dept:edit', null, null, '2019-10-29 12:57:27', null);
INSERT INTO `sys_menu` VALUES ('58', '35', '0', '2', '部门删除', null, '', '4', '', '', '\0', '\0', '\0', 'dept:del', null, null, '2019-10-29 12:57:41', null);
INSERT INTO `sys_menu` VALUES ('60', '37', '0', '2', '岗位新增', null, '', '2', '', '', '\0', '\0', '\0', 'job:add', null, null, '2019-10-29 12:58:27', null);
INSERT INTO `sys_menu` VALUES ('61', '37', '0', '2', '岗位编辑', null, '', '3', '', '', '\0', '\0', '\0', 'job:edit', null, null, '2019-10-29 12:58:45', null);
INSERT INTO `sys_menu` VALUES ('62', '37', '0', '2', '岗位删除', null, '', '4', '', '', '\0', '\0', '\0', 'job:del', null, null, '2019-10-29 12:59:04', null);
INSERT INTO `sys_menu` VALUES ('64', '39', '0', '2', '字典新增', null, '', '2', '', '', '\0', '\0', '\0', 'dict:add', null, null, '2019-10-29 13:00:17', null);
INSERT INTO `sys_menu` VALUES ('65', '39', '0', '2', '字典编辑', null, '', '3', '', '', '\0', '\0', '\0', 'dict:edit', null, null, '2019-10-29 13:00:42', null);
INSERT INTO `sys_menu` VALUES ('66', '39', '0', '2', '字典删除', null, '', '4', '', '', '\0', '\0', '\0', 'dict:del', null, null, '2019-10-29 13:00:59', null);
INSERT INTO `sys_menu` VALUES ('70', '16', '0', '2', '图片上传', null, '', '2', '', '', '\0', '\0', '\0', 'pictures:add', null, null, '2019-10-29 13:05:34', null);
INSERT INTO `sys_menu` VALUES ('71', '16', '0', '2', '图片删除', null, '', '3', '', '', '\0', '\0', '\0', 'pictures:del', null, null, '2019-10-29 13:05:52', null);
INSERT INTO `sys_menu` VALUES ('73', '28', '0', '2', '任务新增', null, '', '2', '', '', '\0', '\0', '\0', 'timing:add', null, null, '2019-10-29 13:07:28', null);
INSERT INTO `sys_menu` VALUES ('74', '28', '0', '2', '任务编辑', null, '', '3', '', '', '\0', '\0', '\0', 'timing:edit', null, null, '2019-10-29 13:07:41', null);
INSERT INTO `sys_menu` VALUES ('75', '28', '0', '2', '任务删除', null, '', '4', '', '', '\0', '\0', '\0', 'timing:del', null, null, '2019-10-29 13:07:54', null);
INSERT INTO `sys_menu` VALUES ('77', '18', '0', '2', '上传文件', null, '', '2', '', '', '\0', '\0', '\0', 'storage:add', null, null, '2019-10-29 13:09:09', null);
INSERT INTO `sys_menu` VALUES ('78', '18', '0', '2', '文件编辑', null, '', '3', '', '', '\0', '\0', '\0', 'storage:edit', null, null, '2019-10-29 13:09:22', null);
INSERT INTO `sys_menu` VALUES ('79', '18', '0', '2', '文件删除', null, '', '4', '', '', '\0', '\0', '\0', 'storage:del', null, null, '2019-10-29 13:09:34', null);
INSERT INTO `sys_menu` VALUES ('80', '6', '0', '1', '服务监控', 'ServerMonitor', 'monitor/server/index', '14', 'codeConsole', 'server', '\0', '\0', '\0', 'monitor:list', null, 'admin', '2019-11-07 13:06:39', '2020-05-04 18:20:50');
INSERT INTO `sys_menu` VALUES ('82', '36', '0', '1', '生成配置', 'GeneratorConfig', 'generator/config', '33', 'dev', 'generator/config/:tableName', '\0', '', '', '', null, null, '2019-11-17 20:08:56', null);
INSERT INTO `sys_menu` VALUES ('83', '10', '0', '1', '图表库', 'Echarts', 'components/Echarts', '50', 'chart', 'echarts', '\0', '', '\0', '', null, null, '2019-11-21 09:04:32', null);
INSERT INTO `sys_menu` VALUES ('90', null, '5', '1', '运维管理', 'Mnt', '', '20', 'mnt', 'mnt', '\0', '\0', '\0', null, null, null, '2019-11-09 10:31:08', null);
INSERT INTO `sys_menu` VALUES ('92', '90', '3', '1', '服务器', 'ServerDeploy', 'mnt/server/index', '22', 'server', 'mnt/serverDeploy', '\0', '\0', '\0', 'serverDeploy:list', null, null, '2019-11-10 10:29:25', null);
INSERT INTO `sys_menu` VALUES ('93', '90', '3', '1', '应用管理', 'App', 'mnt/app/index', '23', 'app', 'mnt/app', '\0', '\0', '\0', 'app:list', null, null, '2019-11-10 11:05:16', null);
INSERT INTO `sys_menu` VALUES ('94', '90', '3', '1', '部署管理', 'Deploy', 'mnt/deploy/index', '24', 'deploy', 'mnt/deploy', '\0', '\0', '\0', 'deploy:list', null, null, '2019-11-10 15:56:55', null);
INSERT INTO `sys_menu` VALUES ('97', '90', '1', '1', '部署备份', 'DeployHistory', 'mnt/deployHistory/index', '25', 'backup', 'mnt/deployHistory', '\0', '\0', '\0', 'deployHistory:list', null, null, '2019-11-10 16:49:44', null);
INSERT INTO `sys_menu` VALUES ('98', '90', '3', '1', '数据库管理', 'Database', 'mnt/database/index', '26', 'database', 'mnt/database', '\0', '\0', '\0', 'database:list', null, null, '2019-11-10 20:40:04', null);
INSERT INTO `sys_menu` VALUES ('102', '97', '0', '2', '删除', null, '', '999', '', '', '\0', '\0', '\0', 'deployHistory:del', null, null, '2019-11-17 09:32:48', null);
INSERT INTO `sys_menu` VALUES ('103', '92', '0', '2', '服务器新增', null, '', '999', '', '', '\0', '\0', '\0', 'serverDeploy:add', null, null, '2019-11-17 11:08:33', null);
INSERT INTO `sys_menu` VALUES ('104', '92', '0', '2', '服务器编辑', null, '', '999', '', '', '\0', '\0', '\0', 'serverDeploy:edit', null, null, '2019-11-17 11:08:57', null);
INSERT INTO `sys_menu` VALUES ('105', '92', '0', '2', '服务器删除', null, '', '999', '', '', '\0', '\0', '\0', 'serverDeploy:del', null, null, '2019-11-17 11:09:15', null);
INSERT INTO `sys_menu` VALUES ('106', '93', '0', '2', '应用新增', null, '', '999', '', '', '\0', '\0', '\0', 'app:add', null, null, '2019-11-17 11:10:03', null);
INSERT INTO `sys_menu` VALUES ('107', '93', '0', '2', '应用编辑', null, '', '999', '', '', '\0', '\0', '\0', 'app:edit', null, null, '2019-11-17 11:10:28', null);
INSERT INTO `sys_menu` VALUES ('108', '93', '0', '2', '应用删除', null, '', '999', '', '', '\0', '\0', '\0', 'app:del', null, null, '2019-11-17 11:10:55', null);
INSERT INTO `sys_menu` VALUES ('109', '94', '0', '2', '部署新增', null, '', '999', '', '', '\0', '\0', '\0', 'deploy:add', null, null, '2019-11-17 11:11:22', null);
INSERT INTO `sys_menu` VALUES ('110', '94', '0', '2', '部署编辑', null, '', '999', '', '', '\0', '\0', '\0', 'deploy:edit', null, null, '2019-11-17 11:11:41', null);
INSERT INTO `sys_menu` VALUES ('111', '94', '0', '2', '部署删除', null, '', '999', '', '', '\0', '\0', '\0', 'deploy:del', null, null, '2019-11-17 11:12:01', null);
INSERT INTO `sys_menu` VALUES ('112', '98', '0', '2', '数据库新增', null, '', '999', '', '', '\0', '\0', '\0', 'database:add', null, null, '2019-11-17 11:12:43', null);
INSERT INTO `sys_menu` VALUES ('113', '98', '0', '2', '数据库编辑', null, '', '999', '', '', '\0', '\0', '\0', 'database:edit', null, null, '2019-11-17 11:12:58', null);
INSERT INTO `sys_menu` VALUES ('114', '98', '0', '2', '数据库删除', null, '', '999', '', '', '\0', '\0', '\0', 'database:del', null, null, '2019-11-17 11:13:14', null);
INSERT INTO `sys_menu` VALUES ('116', '36', '0', '1', '生成预览', 'Preview', 'generator/preview', '999', 'java', 'generator/preview/:tableName', '\0', '', '', null, null, null, '2019-11-26 14:54:36', null);
INSERT INTO `sys_menu` VALUES ('120', null, '1', '0', '征信报送管理', '', '', '1', 'anq', 'credit', '\0', '\0', '\0', null, 'admin', 'admin', '2020-06-12 16:51:41', '2020-06-29 09:44:09');
INSERT INTO `sys_menu` VALUES ('121', '120', '1', '1', '个人基本信息', null, 'credit/customerinfo/index', '1', 'menu', 'customerinfo', '\0', '\0', '\0', null, 'admin', 'admin', '2020-06-12 17:01:34', '2020-06-29 09:53:26');
INSERT INTO `sys_menu` VALUES ('129', '121', '0', '1', '基本信息', 'BusCustomerBaseInfo', 'credit/customerinfo/busCustomerBaseInfo', '2', 'user', 'busCustomerBaseInfo', '\0', '\0', '\0', 'busCustomerBaseInfo:list', 'admin', 'admin', '2020-06-28 15:15:16', '2020-06-29 09:50:19');

-- ----------------------------
-- Table structure for sys_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_quartz_job`;
CREATE TABLE `sys_quartz_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bean_name` varchar(255) DEFAULT NULL COMMENT 'Spring Bean名称',
  `cron_expression` varchar(255) DEFAULT NULL COMMENT 'cron 表达式',
  `is_pause` bit(1) DEFAULT NULL COMMENT '状态：1暂停、0启用',
  `job_name` varchar(255) DEFAULT NULL COMMENT '任务名称',
  `method_name` varchar(255) DEFAULT NULL COMMENT '方法名称',
  `params` varchar(255) DEFAULT NULL COMMENT '参数',
  `description` varchar(255) DEFAULT NULL COMMENT '备注',
  `person_in_charge` varchar(100) DEFAULT NULL COMMENT '负责人',
  `email` varchar(100) DEFAULT NULL COMMENT '报警邮箱',
  `sub_task` varchar(100) DEFAULT NULL COMMENT '子任务ID',
  `pause_after_failure` bit(1) DEFAULT NULL COMMENT '任务失败后是否暂停',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`job_id`) USING BTREE,
  KEY `inx_is_pause` (`is_pause`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='定时任务';

-- ----------------------------
-- Records of sys_quartz_job
-- ----------------------------
INSERT INTO `sys_quartz_job` VALUES ('2', 'testTask', '0/5 * * * * ?', '', '测试1', 'run1', 'test', '带参测试，多参使用json', '测试', null, null, null, null, 'admin', '2019-08-22 14:08:29', '2020-05-05 17:26:19');
INSERT INTO `sys_quartz_job` VALUES ('3', 'testTask', '0/5 * * * * ?', '', '测试', 'run', '', '不带参测试', 'Zheng Jie', '', '2,6', '', null, 'admin', '2019-09-26 16:44:39', '2020-07-03 11:16:06');
INSERT INTO `sys_quartz_job` VALUES ('5', 'Test', '0/5 * * * * ?', '', '任务告警测试', 'run', null, '测试', 'test', '', null, '', 'admin', 'admin', '2020-05-05 20:32:41', '2020-05-05 20:36:13');
INSERT INTO `sys_quartz_job` VALUES ('6', 'testTask', '0/5 * * * * ?', '', '测试3', 'run2', null, '测试3', 'Zheng Jie', '', null, '', 'admin', 'admin', '2020-05-05 20:35:41', '2020-05-05 20:36:07');
INSERT INTO `sys_quartz_job` VALUES ('7', 'testCreditTask', '0/50 * * * * ?', '', '测试征信报送任务', 'run', null, '测试征信报送任务', 'ces', null, null, '', 'admin', 'admin', '2020-07-03 11:41:32', '2020-07-03 11:46:14');
INSERT INTO `sys_quartz_job` VALUES ('8', 'systemCommonTask', '0 0 0 */1 * ?', '\0', '系统切日任务', 'run', null, '系统切日任务', '王', null, null, '', 'admin', 'admin', '2020-07-07 17:02:39', '2020-07-07 17:02:39');

-- ----------------------------
-- Table structure for sys_quartz_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_quartz_log`;
CREATE TABLE `sys_quartz_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bean_name` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `cron_expression` varchar(255) DEFAULT NULL,
  `exception_detail` text,
  `is_success` bit(1) DEFAULT NULL,
  `job_name` varchar(255) DEFAULT NULL,
  `method_name` varchar(255) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='定时任务日志';

-- ----------------------------
-- Records of sys_quartz_log
-- ----------------------------
INSERT INTO `sys_quartz_log` VALUES ('1', 'testTask', '2020-07-03 11:15:31', '0/5 * * * * ?', null, '', '测试1', 'run1', 'test', '1');
INSERT INTO `sys_quartz_log` VALUES ('2', 'testTask', '2020-07-03 11:15:31', '0/5 * * * * ?', null, '', '测试', 'run', '', '1');
INSERT INTO `sys_quartz_log` VALUES ('3', 'testTask', '2020-07-03 11:15:36', '0/5 * * * * ?', null, '', '测试3', 'run2', null, '1');
INSERT INTO `sys_quartz_log` VALUES ('4', 'testTask', '2020-07-03 11:16:02', '0/5 * * * * ?', null, '', '测试', 'run', '', '0');
INSERT INTO `sys_quartz_log` VALUES ('5', 'testTask', '2020-07-03 11:16:02', '0/5 * * * * ?', null, '', '测试1', 'run1', 'test', '0');
INSERT INTO `sys_quartz_log` VALUES ('6', 'testTask', '2020-07-03 11:16:05', '0/5 * * * * ?', null, '', '测试', 'run', '', '1');
INSERT INTO `sys_quartz_log` VALUES ('7', 'testTask', '2020-07-03 11:16:05', '0/5 * * * * ?', null, '', '测试1', 'run1', 'test', '0');
INSERT INTO `sys_quartz_log` VALUES ('8', 'testTask', '2020-07-03 11:16:07', '0/5 * * * * ?', null, '', '测试3', 'run2', null, '1');
INSERT INTO `sys_quartz_log` VALUES ('9', 'testTask', '2020-07-03 11:16:10', '0/5 * * * * ?', null, '', '测试3', 'run2', null, '1');
INSERT INTO `sys_quartz_log` VALUES ('10', 'TestCreditTask', '2020-07-03 11:45:15', '0/50 * * * * ?', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'TestCreditTask\' available\r\n	at org.springframework.beans.factory.support.DefaultListableBeanFactory.getBeanDefinition(DefaultListableBeanFactory.java:772)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getMergedLocalBeanDefinition(AbstractBeanFactory.java:1212)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:294)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:199)\r\n	at org.springframework.context.support.AbstractApplicationContext.getBean(AbstractApplicationContext.java:1083)\r\n	at me.zhengjie.utils.SpringContextHolder.getBean(SpringContextHolder.java:59)\r\n	at me.zhengjie.modules.quartz.utils.QuartzRunnable.<init>(QuartzRunnable.java:38)\r\n	at me.zhengjie.modules.quartz.utils.ExecutionJob.executeInternal(ExecutionJob.java:70)\r\n	at org.springframework.scheduling.quartz.QuartzJobBean.execute(QuartzJobBean.java:75)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '\0', '测试征信报送任务', 'run', null, '5');
INSERT INTO `sys_quartz_log` VALUES ('11', 'testCreditTask', '2020-07-03 11:46:16', '0/50 * * * * ?', 'java.util.concurrent.ExecutionException: java.lang.reflect.InvocationTargetException\r\n	at java.util.concurrent.FutureTask.report(FutureTask.java:122)\r\n	at java.util.concurrent.FutureTask.get(FutureTask.java:192)\r\n	at me.zhengjie.modules.quartz.utils.ExecutionJob.executeInternal(ExecutionJob.java:72)\r\n	at org.springframework.scheduling.quartz.QuartzJobBean.execute(QuartzJobBean.java:75)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at me.zhengjie.modules.quartz.utils.QuartzRunnable.call(QuartzRunnable.java:54)\r\n	at java.util.concurrent.FutureTask.run(FutureTask.java:266)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: java.lang.NullPointerException\r\n	at me.zhengjie.modules.custominfo.util.CreditInfoUtil.build(CreditInfoUtil.java:120)\r\n	at me.zhengjie.modules.custominfo.util.CreditInfoUtil.downloadFile(CreditInfoUtil.java:42)\r\n	at me.zhengjie.modules.custominfo.service.impl.BusCustomerBaseInfoServiceImpl.downloadCreditFile(BusCustomerBaseInfoServiceImpl.java:200)\r\n	at me.zhengjie.modules.custominfo.service.impl.BusCustomerBaseInfoServiceImpl$$FastClassBySpringCGLIB$$7cf71c67.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:684)\r\n	at me.zhengjie.modules.custominfo.service.impl.BusCustomerBaseInfoServiceImpl$$EnhancerBySpringCGLIB$$f085cfed.downloadCreditFile(<generated>)\r\n	at me.zhengjie.modules.quartz.task.TestCreditTask.run(TestCreditTask.java:28)\r\n	... 9 more\r\n', '\0', '测试征信报送任务', 'run', null, '13');
INSERT INTO `sys_quartz_log` VALUES ('12', 'testCreditTask', '2020-07-03 11:52:19', '0/50 * * * * ?', 'java.util.concurrent.ExecutionException: java.lang.reflect.InvocationTargetException\r\n	at java.util.concurrent.FutureTask.report(FutureTask.java:122)\r\n	at java.util.concurrent.FutureTask.get(FutureTask.java:192)\r\n	at me.zhengjie.modules.quartz.utils.ExecutionJob.executeInternal(ExecutionJob.java:72)\r\n	at org.springframework.scheduling.quartz.QuartzJobBean.execute(QuartzJobBean.java:75)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\nCaused by: java.lang.reflect.InvocationTargetException\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at me.zhengjie.modules.quartz.utils.QuartzRunnable.call(QuartzRunnable.java:54)\r\n	at java.util.concurrent.FutureTask.run(FutureTask.java:266)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at java.lang.Thread.run(Thread.java:748)\r\nCaused by: java.lang.NullPointerException\r\n	at me.zhengjie.modules.custominfo.util.CreditInfoUtil.build(CreditInfoUtil.java:120)\r\n	at me.zhengjie.modules.custominfo.util.CreditInfoUtil.downloadFile(CreditInfoUtil.java:42)\r\n	at me.zhengjie.modules.custominfo.service.impl.BusCustomerBaseInfoServiceImpl.downloadCreditFile(BusCustomerBaseInfoServiceImpl.java:200)\r\n	at me.zhengjie.modules.custominfo.service.impl.BusCustomerBaseInfoServiceImpl$$FastClassBySpringCGLIB$$7cf71c67.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:684)\r\n	at me.zhengjie.modules.custominfo.service.impl.BusCustomerBaseInfoServiceImpl$$EnhancerBySpringCGLIB$$f085cfed.downloadCreditFile(<generated>)\r\n	at me.zhengjie.modules.quartz.task.TestCreditTask.run(TestCreditTask.java:28)\r\n	... 9 more\r\n', '\0', '测试征信报送任务', 'run', null, '229034');
INSERT INTO `sys_quartz_log` VALUES ('13', 'testCreditTask', '2020-07-03 11:59:04', '0/50 * * * * ?', null, '', '测试征信报送任务', 'run', null, '79665');
INSERT INTO `sys_quartz_log` VALUES ('14', 'systemCommonTask', '2020-07-07 17:02:42', '0 0 0 */1 * ?', null, '', '系统切日任务', 'run', null, '4');
INSERT INTO `sys_quartz_log` VALUES ('15', 'systemCommonTask', '2020-07-07 17:08:00', '0 0 0 */1 * ?', null, '', '系统切日任务', 'run', null, '50742');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `level` int(255) DEFAULT NULL COMMENT '角色级别',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `data_scope` varchar(255) DEFAULT NULL COMMENT '数据权限',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`role_id`) USING BTREE,
  UNIQUE KEY `uniq_name` (`name`),
  KEY `role_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', '1', '-', '全部', null, 'admin', '2018-11-23 11:04:37', '2020-06-29 09:42:29');
INSERT INTO `sys_role` VALUES ('4', '征信报送负责人', '3', null, '自定义', 'admin', 'admin', '2020-06-28 12:03:36', '2020-06-28 12:03:59');

-- ----------------------------
-- Table structure for sys_roles_depts
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_depts`;
CREATE TABLE `sys_roles_depts` (
  `role_id` bigint(20) NOT NULL,
  `dept_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`dept_id`) USING BTREE,
  KEY `FK7qg6itn5ajdoa9h9o78v9ksur` (`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色部门关联';

-- ----------------------------
-- Records of sys_roles_depts
-- ----------------------------
INSERT INTO `sys_roles_depts` VALUES ('4', '20');

-- ----------------------------
-- Table structure for sys_roles_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_menus`;
CREATE TABLE `sys_roles_menus` (
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`menu_id`,`role_id`) USING BTREE,
  KEY `FKcngg2qadojhi3a651a5adkvbq` (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色菜单关联';

-- ----------------------------
-- Records of sys_roles_menus
-- ----------------------------
INSERT INTO `sys_roles_menus` VALUES ('1', '1');
INSERT INTO `sys_roles_menus` VALUES ('2', '1');
INSERT INTO `sys_roles_menus` VALUES ('3', '1');
INSERT INTO `sys_roles_menus` VALUES ('5', '1');
INSERT INTO `sys_roles_menus` VALUES ('6', '1');
INSERT INTO `sys_roles_menus` VALUES ('7', '1');
INSERT INTO `sys_roles_menus` VALUES ('9', '1');
INSERT INTO `sys_roles_menus` VALUES ('10', '1');
INSERT INTO `sys_roles_menus` VALUES ('11', '1');
INSERT INTO `sys_roles_menus` VALUES ('14', '1');
INSERT INTO `sys_roles_menus` VALUES ('15', '1');
INSERT INTO `sys_roles_menus` VALUES ('16', '1');
INSERT INTO `sys_roles_menus` VALUES ('18', '1');
INSERT INTO `sys_roles_menus` VALUES ('19', '1');
INSERT INTO `sys_roles_menus` VALUES ('21', '1');
INSERT INTO `sys_roles_menus` VALUES ('22', '1');
INSERT INTO `sys_roles_menus` VALUES ('23', '1');
INSERT INTO `sys_roles_menus` VALUES ('24', '1');
INSERT INTO `sys_roles_menus` VALUES ('27', '1');
INSERT INTO `sys_roles_menus` VALUES ('28', '1');
INSERT INTO `sys_roles_menus` VALUES ('30', '1');
INSERT INTO `sys_roles_menus` VALUES ('32', '1');
INSERT INTO `sys_roles_menus` VALUES ('33', '1');
INSERT INTO `sys_roles_menus` VALUES ('34', '1');
INSERT INTO `sys_roles_menus` VALUES ('35', '1');
INSERT INTO `sys_roles_menus` VALUES ('36', '1');
INSERT INTO `sys_roles_menus` VALUES ('37', '1');
INSERT INTO `sys_roles_menus` VALUES ('38', '1');
INSERT INTO `sys_roles_menus` VALUES ('39', '1');
INSERT INTO `sys_roles_menus` VALUES ('41', '1');
INSERT INTO `sys_roles_menus` VALUES ('80', '1');
INSERT INTO `sys_roles_menus` VALUES ('82', '1');
INSERT INTO `sys_roles_menus` VALUES ('83', '1');
INSERT INTO `sys_roles_menus` VALUES ('90', '1');
INSERT INTO `sys_roles_menus` VALUES ('92', '1');
INSERT INTO `sys_roles_menus` VALUES ('93', '1');
INSERT INTO `sys_roles_menus` VALUES ('94', '1');
INSERT INTO `sys_roles_menus` VALUES ('97', '1');
INSERT INTO `sys_roles_menus` VALUES ('98', '1');
INSERT INTO `sys_roles_menus` VALUES ('116', '1');
INSERT INTO `sys_roles_menus` VALUES ('120', '1');
INSERT INTO `sys_roles_menus` VALUES ('121', '1');
INSERT INTO `sys_roles_menus` VALUES ('129', '1');
INSERT INTO `sys_roles_menus` VALUES ('120', '4');
INSERT INTO `sys_roles_menus` VALUES ('121', '4');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门名称',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `nick_name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `gender` varchar(2) DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `avatar_name` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `avatar_path` varchar(255) DEFAULT NULL COMMENT '头像真实路径',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `is_admin` bit(1) DEFAULT b'0' COMMENT '是否为admin账号',
  `enabled` bigint(20) DEFAULT NULL COMMENT '状态：1启用、0禁用',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新着',
  `pwd_reset_time` datetime DEFAULT NULL COMMENT '修改密码的时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE KEY `UK_kpubos9gc2cvtkb0thktkbkes` (`email`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `uniq_username` (`username`),
  UNIQUE KEY `uniq_email` (`email`),
  KEY `FK5rwmryny6jthaaxkogownknqp` (`dept_id`) USING BTREE,
  KEY `FKpq2dhypk2qgt68nauh2by22jb` (`avatar_name`) USING BTREE,
  KEY `inx_enabled` (`enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '19', 'admin', '管理员', '男', '18515104115', '491785961@qq.com', null, null, '$2a$10$Egp1/gvFlt7zhlXVfEFw4OfWQCGPw0ClmMcc6FjTnvXNRVf9zdMRa', '', '1', null, 'admin', '2020-05-03 16:38:31', '2018-08-23 09:11:56', '2020-06-28 12:00:51');
INSERT INTO `sys_user` VALUES ('4', '20', 'test01', '征信报送员', '男', '18888888888', '77777@qq.com', null, null, '$2a$10$Egp1/gvFlt7zhlXVfEFw4OfWQCGPw0ClmMcc6FjTnvXNRVf9zdMRa', '\0', '1', 'admin', 'admin', null, '2020-06-28 12:04:55', '2020-06-28 12:07:12');

-- ----------------------------
-- Table structure for sys_users_jobs
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_jobs`;
CREATE TABLE `sys_users_jobs` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `job_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_users_jobs
-- ----------------------------
INSERT INTO `sys_users_jobs` VALUES ('1', '14');
INSERT INTO `sys_users_jobs` VALUES ('4', '15');

-- ----------------------------
-- Table structure for sys_users_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_roles`;
CREATE TABLE `sys_users_roles` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`) USING BTREE,
  KEY `FKq4eq273l04bpu4efj0jd0jb98` (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户角色关联';

-- ----------------------------
-- Records of sys_users_roles
-- ----------------------------
INSERT INTO `sys_users_roles` VALUES ('1', '1');
INSERT INTO `sys_users_roles` VALUES ('4', '4');

-- ----------------------------
-- Table structure for tool_alipay_config
-- ----------------------------
DROP TABLE IF EXISTS `tool_alipay_config`;
CREATE TABLE `tool_alipay_config` (
  `config_id` bigint(20) NOT NULL COMMENT 'ID',
  `app_id` varchar(255) DEFAULT NULL COMMENT '应用ID',
  `charset` varchar(255) DEFAULT NULL COMMENT '编码',
  `format` varchar(255) DEFAULT NULL COMMENT '类型 固定格式json',
  `gateway_url` varchar(255) DEFAULT NULL COMMENT '网关地址',
  `notify_url` varchar(255) DEFAULT NULL COMMENT '异步回调',
  `private_key` text COMMENT '私钥',
  `public_key` text COMMENT '公钥',
  `return_url` varchar(255) DEFAULT NULL COMMENT '回调地址',
  `sign_type` varchar(255) DEFAULT NULL COMMENT '签名方式',
  `sys_service_provider_id` varchar(255) DEFAULT NULL COMMENT '商户号',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='支付宝配置类';

-- ----------------------------
-- Records of tool_alipay_config
-- ----------------------------
INSERT INTO `tool_alipay_config` VALUES ('1', '2016091700532697', 'utf-8', 'JSON', 'https://openapi.alipaydev.com/gateway.do', 'http://api.auauz.net/api/aliPay/notify', 'MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQC5js8sInU10AJ0cAQ8UMMyXrQ+oHZEkVt5lBwsStmTJ7YikVYgbskx1YYEXTojRsWCb+SH/kDmDU4pK/u91SJ4KFCRMF2411piYuXU/jF96zKrADznYh/zAraqT6hvAIVtQAlMHN53nx16rLzZ/8jDEkaSwT7+HvHiS+7sxSojnu/3oV7BtgISoUNstmSe8WpWHOaWv19xyS+Mce9MY4BfseFhzTICUymUQdd/8hXA28/H6osUfAgsnxAKv7Wil3aJSgaJczWuflYOve0dJ3InZkhw5Cvr0atwpk8YKBQjy5CdkoHqvkOcIB+cYHXJKzOE5tqU7inSwVbHzOLQ3XbnAgMBAAECggEAVJp5eT0Ixg1eYSqFs9568WdetUNCSUchNxDBu6wxAbhUgfRUGZuJnnAll63OCTGGck+EGkFh48JjRcBpGoeoHLL88QXlZZbC/iLrea6gcDIhuvfzzOffe1RcZtDFEj9hlotg8dQj1tS0gy9pN9g4+EBH7zeu+fyv+qb2e/v1l6FkISXUjpkD7RLQr3ykjiiEw9BpeKb7j5s7Kdx1NNIzhkcQKNqlk8JrTGDNInbDM6inZfwwIO2R1DHinwdfKWkvOTODTYa2MoAvVMFT9Bec9FbLpoWp7ogv1JMV9svgrcF9XLzANZ/OQvkbe9TV9GWYvIbxN6qwQioKCWO4GPnCAQKBgQDgW5MgfhX8yjXqoaUy/d1VjI8dHeIyw8d+OBAYwaxRSlCfyQ+tieWcR2HdTzPca0T0GkWcKZm0ei5xRURgxt4DUDLXNh26HG0qObbtLJdu/AuBUuCqgOiLqJ2f1uIbrz6OZUHns+bT/jGW2Ws8+C13zTCZkZt9CaQsrp3QOGDx5wKBgQDTul39hp3ZPwGNFeZdkGoUoViOSd5Lhowd5wYMGAEXWRLlU8z+smT5v0POz9JnIbCRchIY2FAPKRdVTICzmPk2EPJFxYTcwaNbVqL6lN7J2IlXXMiit5QbiLauo55w7plwV6LQmKm9KV7JsZs5XwqF7CEovI7GevFzyD3w+uizAQKBgC3LY1eRhOlpWOIAhpjG6qOoohmeXOphvdmMlfSHq6WYFqbWwmV4rS5d/6LNpNdL6fItXqIGd8I34jzql49taCmi+A2nlR/E559j0mvM20gjGDIYeZUz5MOE8k+K6/IcrhcgofgqZ2ZED1ksHdB/E8DNWCswZl16V1FrfvjeWSNnAoGAMrBplCrIW5xz+J0Hm9rZKrs+AkK5D4fUv8vxbK/KgxZ2KaUYbNm0xv39c+PZUYuFRCz1HDGdaSPDTE6WeWjkMQd5mS6ikl9hhpqFRkyh0d0fdGToO9yLftQKOGE/q3XUEktI1XvXF0xyPwNgUCnq0QkpHyGVZPtGFxwXiDvpvgECgYA5PoB+nY8iDiRaJNko9w0hL4AeKogwf+4TbCw+KWVEn6jhuJa4LFTdSqp89PktQaoVpwv92el/AhYjWOl/jVCm122f9b7GyoelbjMNolToDwe5pF5RnSpEuDdLy9MfE8LnE3PlbE7E5BipQ3UjSebkgNboLHH/lNZA5qvEtvbfvQ==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAut9evKRuHJ/2QNfDlLwvN/S8l9hRAgPbb0u61bm4AtzaTGsLeMtScetxTWJnVvAVpMS9luhEJjt+Sbk5TNLArsgzzwARgaTKOLMT1TvWAK5EbHyI+eSrc3s7Awe1VYGwcubRFWDm16eQLv0k7iqiw+4mweHSz/wWyvBJVgwLoQ02btVtAQErCfSJCOmt0Q/oJQjj08YNRV4EKzB19+f5A+HQVAKy72dSybTzAK+3FPtTtNen/+b5wGeat7c32dhYHnGorPkPeXLtsqqUTp1su5fMfd4lElNdZaoCI7osZxWWUo17vBCZnyeXc9fk0qwD9mK6yRAxNbrY72Xx5VqIqwIDAQAB', 'http://api.auauz.net/api/aliPay/return', 'RSA2', '2088102176044281');

-- ----------------------------
-- Table structure for tool_email_config
-- ----------------------------
DROP TABLE IF EXISTS `tool_email_config`;
CREATE TABLE `tool_email_config` (
  `config_id` bigint(20) NOT NULL COMMENT 'ID',
  `from_user` varchar(255) DEFAULT NULL COMMENT '收件人',
  `host` varchar(255) DEFAULT NULL COMMENT '邮件服务器SMTP地址',
  `pass` varchar(255) DEFAULT NULL COMMENT '密码',
  `port` varchar(255) DEFAULT NULL COMMENT '端口',
  `user` varchar(255) DEFAULT NULL COMMENT '发件者用户名',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='邮箱配置';

-- ----------------------------
-- Records of tool_email_config
-- ----------------------------

-- ----------------------------
-- Table structure for tool_local_storage
-- ----------------------------
DROP TABLE IF EXISTS `tool_local_storage`;
CREATE TABLE `tool_local_storage` (
  `storage_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `real_name` varchar(255) DEFAULT NULL COMMENT '文件真实的名称',
  `name` varchar(255) DEFAULT NULL COMMENT '文件名',
  `suffix` varchar(255) DEFAULT NULL COMMENT '后缀',
  `path` varchar(255) DEFAULT NULL COMMENT '路径',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `size` varchar(100) DEFAULT NULL COMMENT '大小',
  `create_by` varchar(255) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`storage_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='本地存储';

-- ----------------------------
-- Records of tool_local_storage
-- ----------------------------

-- ----------------------------
-- Table structure for tool_picture
-- ----------------------------
DROP TABLE IF EXISTS `tool_picture`;
CREATE TABLE `tool_picture` (
  `picture_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `filename` varchar(255) DEFAULT NULL COMMENT '图片名称',
  `md5code` varchar(255) DEFAULT NULL COMMENT '文件的MD5值',
  `size` varchar(255) DEFAULT NULL COMMENT '图片大小',
  `url` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `delete_url` varchar(255) DEFAULT NULL COMMENT '删除的URL',
  `height` varchar(255) DEFAULT NULL COMMENT '图片高度',
  `width` varchar(255) DEFAULT NULL COMMENT '图片宽度',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名称',
  `create_time` datetime DEFAULT NULL COMMENT '上传日期',
  PRIMARY KEY (`picture_id`) USING BTREE,
  UNIQUE KEY `uniq_md5_code` (`md5code`),
  KEY `inx_url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Sm.Ms图床';

-- ----------------------------
-- Records of tool_picture
-- ----------------------------

-- ----------------------------
-- Table structure for tool_qiniu_config
-- ----------------------------
DROP TABLE IF EXISTS `tool_qiniu_config`;
CREATE TABLE `tool_qiniu_config` (
  `config_id` bigint(20) NOT NULL COMMENT 'ID',
  `access_key` text COMMENT 'accessKey',
  `bucket` varchar(255) DEFAULT NULL COMMENT 'Bucket 识别符',
  `host` varchar(255) NOT NULL COMMENT '外链域名',
  `secret_key` text COMMENT 'secretKey',
  `type` varchar(255) DEFAULT NULL COMMENT '空间类型',
  `zone` varchar(255) DEFAULT NULL COMMENT '机房',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='七牛云配置';

-- ----------------------------
-- Records of tool_qiniu_config
-- ----------------------------

-- ----------------------------
-- Table structure for tool_qiniu_content
-- ----------------------------
DROP TABLE IF EXISTS `tool_qiniu_content`;
CREATE TABLE `tool_qiniu_content` (
  `content_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bucket` varchar(255) DEFAULT NULL COMMENT 'Bucket 识别符',
  `name` varchar(255) DEFAULT NULL COMMENT '文件名称',
  `size` varchar(255) DEFAULT NULL COMMENT '文件大小',
  `type` varchar(255) DEFAULT NULL COMMENT '文件类型：私有或公开',
  `url` varchar(255) DEFAULT NULL COMMENT '文件url',
  `suffix` varchar(255) DEFAULT NULL COMMENT '文件后缀',
  `update_time` datetime DEFAULT NULL COMMENT '上传或同步的时间',
  PRIMARY KEY (`content_id`) USING BTREE,
  UNIQUE KEY `uniq_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='七牛云文件存储';

-- ----------------------------
-- Records of tool_qiniu_content
-- ----------------------------
