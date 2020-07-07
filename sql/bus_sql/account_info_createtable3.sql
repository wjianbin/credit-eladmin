/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020/7/1 11:01:37                            */
/*==============================================================*/


drop table if exists bus_InAcctInf;

drop table if exists bus_InAcctInf_AcctBsInfSgmt;

drop table if exists bus_InAcctInf_AcctBsSgmt;

drop table if exists bus_InAcctInf_AcctCredSgmt;

drop table if exists bus_InAcctInf_AcctDbtInfSgmt;

drop table if exists bus_InAcctInf_AcctMthlyBlgInfSgmt;

drop table if exists bus_InAcctInf_AcctSpecTrstDspnSgmt;

drop table if exists bus_InAcctInf_CagOfTrdInf;

drop table if exists bus_InAcctInf_CccInf;

drop table if exists bus_InAcctInf_GuarMotgaCltalCtrctInfSgmt;

drop table if exists bus_InAcctInf_OrigCreditorInfSgmt;

drop table if exists bus_InAcctInf_RltRepymtInf;

drop table if exists bus_InAcctInf_RltRepymtInfSgmt;

drop table if exists bus_InAcctInf_SpecPrdSgmt;

drop table if exists bus_InCtrctInf;

drop table if exists bus_InCtrctInf_CreditLimSgmt;

drop table if exists bus_InCtrctInf_CtrctBsSgmt;

drop table if exists bus_InCtrctInf_CtrctCertRel;

drop table if exists bus_InCtrctInf_CtrctCertRelSgmt;

drop table if exists bus_InSpcEvtDscInf;

drop table if exists bus_del_InAcctDel;

drop table if exists bus_del_InAcctEntDel;

drop table if exists bus_del_InCtrctDel;

drop table if exists bus_del_InCtrctEntDel;

drop table if exists bus_update_InAcctIDCagsInf;

drop table if exists bus_update_InCtrctIDCagsInf;

drop table if exists bus_update_InCtrctInfByCode;

drop table if exists bus_update_acctinfbycode;

/*==============================================================*/
/* Table: bus_InAcctInf                                         */
/*==============================================================*/
create table bus_InAcctInf
(
   id                   bigint not null comment 'id',
   AccLoanId            varchar(64) comment '借据编号',
   status               int,
   CreateTime           datetime,
   UpdateTime           datetime,
   UploadTime           datetime,
   primary key (id)
);

alter table bus_InAcctInf comment '个人借贷账户记录';

/*==============================================================*/
/* Table: bus_InAcctInf_AcctBsInfSgmt                           */
/*==============================================================*/
create table bus_InAcctInf_AcctBsInfSgmt
(
   id                   bigint not null,
   AccLoanId            varchar(64) comment '借据编号',
   bus_id               bigint comment '对应业务操作的主键',
   BusiLines            int comment '借贷业务大类',
   BusiDtlLines         int comment '借贷业务种类细分',
   OpenDate             varchar(64) comment '开户日期',
   Cy                   varchar(18) comment '币种',
   AcctCredLine         numeric(18,0) comment '信用额度',
   LoanAmt              numeric(18,0) comment '借款金额',
   Flag                 int comment '分次放款标志',
   DueDate              varchar(64) comment '到期日期',
   RepayMode            int comment '还款方式',
   RepayFreqcy          varchar(8) comment '还款频率',
   RepayPrd             int comment '还款期数',
   ApplyBusiDist        varchar(15) comment '业务申请地行政区划代码',
   GuarMode             int comment '担保方式',
   OthRepyGuarWay       int comment '其他还款保证方式',
   AssetTrandFlag       int comment '资产转让标志',
   FundSou              int comment '业务经营类型',
   LoanForm             int comment '贷款发放形式',
   CreditID             varchar(15) comment '卡片标识号',
   LoanConCode          varchar(120) comment '贷款合同编号',
   FirstHouLoanFlag     varchar(4) comment '是否为首套住房贷款',
   UploadStatus         int comment '上报状态',
   UploadFlag           int comment '上报标识',
   create_time          datetime,
   primary key (id)
);

alter table bus_InAcctInf_AcctBsInfSgmt comment '基本信息段-AcctBsInfSgmt';

/*==============================================================*/
/* Table: bus_InAcctInf_AcctBsSgmt                              */
/*==============================================================*/
create table bus_InAcctInf_AcctBsSgmt
(
   id                   bigint not null comment '编号',
   AccLoanId            varchar(64) comment '借据编号',
   bus_id               bigint comment '对应业务操作的主键',
   InfRecType           int comment '信息记录类型',
   AcctType             int comment '账户类型',
   AcctCode             varchar(120) comment '个人账户标识码',
   RptDate              varchar(64) comment '信息报告日期',
   RptDateCode          varchar(12) comment '报告时点说明代码',
   Name                 varchar(120) comment '姓名',
   IDType               int comment '证件类型',
   IDNum                varchar(64) comment '证件号码',
   MngmtOrgCode         varchar(64) comment '业务管理机构代码',
   UploadStatus         int comment '上报状态',
   UploadFlag           int comment '上报标识',
   create_time          datetime,
   primary key (id)
);

alter table bus_InAcctInf_AcctBsSgmt comment '基础段';

/*==============================================================*/
/* Table: bus_InAcctInf_AcctCredSgmt                            */
/*==============================================================*/
create table bus_InAcctInf_AcctCredSgmt
(
   id                   bigint not null comment '编号',
   AccLoanId            varchar(64) comment '借据编号',
   bus_id               bigint comment '对应业务操作的主键',
   Mcc                  varchar(120) comment '授信协议标识码',
   UploadStatus         int comment '上报状态',
   UploadFlag           int comment '上报标识',
   create_time          datetime,
   primary key (id)
);

alter table bus_InAcctInf_AcctCredSgmt comment '授信额度信息段';

/*==============================================================*/
/* Table: bus_InAcctInf_AcctDbtInfSgmt                          */
/*==============================================================*/
create table bus_InAcctInf_AcctDbtInfSgmt
(
   id                   bigint not null,
   AccLoanId            varchar(64) comment '借据编号',
   bus_id               bigint comment '对应业务操作的主键',
   AcctStatus           int comment '账户状态',
   AcctBal              numeric(18,0) comment '余额',
   FiveCate             int comment '五级分类',
   FiveCateAdjDate      varchar(64) comment '五级分类认定日期',
   RemRepPrd            int comment '剩余还款期数',
   RpyStatus            varchar(4) comment '当前还款状态',
   OverdPrd             int comment '当前逾期期数',
   TotOverd             numeric(18,0) comment '当前逾期总额',
   LatRpyAmt            numeric(18,0) comment '最近一次实际还款金额',
   LatRpyDate           varchar(64) comment '最近一次实际还款日期1',
   CloseDate            varchar(64) comment '账户关闭日期',
   UploadStatus         int comment '上报状态',
   UploadFlag           int comment '上报标识',
   create_time          datetime,
   primary key (id)
);

alter table bus_InAcctInf_AcctDbtInfSgmt comment '非月度表现';

/*==============================================================*/
/* Table: bus_InAcctInf_AcctMthlyBlgInfSgmt                     */
/*==============================================================*/
create table bus_InAcctInf_AcctMthlyBlgInfSgmt
(
   id                   bigint not null,
   AccLoanId            varchar(64) comment '借据编号',
   bus_id               bigint comment '对应业务操作的主键',
   Month                varchar(64) comment '月份',
   SettDate             varchar(64) comment '结算/应还款日',
   AcctStatus           int comment '账户状态',
   AcctBal              numeric(18,0) comment '余额',
   NotIsuBal            numeric(18,0) comment '未出单的大额专项分期余额',
   RemRepPrd            int comment '剩余还款期数',
   FiveCate             int comment '五级分类',
   FiveCateAdjDate      varchar(64) comment '五级分类认定日期',
   RpyStatus            int comment '当前还款状态',
   RpyPrct              int comment '实际还款百分比',
   OverdPrd             int comment '当前逾期期数',
   TotOverd             numeric(18,0) comment '当前逾期总额',
   Oved31_60Princ       numeric(18,0) comment '逾期31-60天未归还本金',
   Oved61_90Princ       numeric(18,0) comment '逾期61-90天未归还本金',
   Oved91_180Princ      numeric(18,0) comment '逾期91-180天未归还本金',
   OvedPrinc180         numeric(18,0) comment '逾期180天以上未归还本金',
   OvedrawBaOve180      numeric(18,0) comment '透支180天以上未还余额',
   CurRpyAmt            numeric(18,0) comment '本月应还款金额',
   ActRpyAmt            numeric(18,0) comment '本月实际还款金额',
   LatRpyDate           varchar(64) comment '最近一次实际还款日期',
   CloseDate            varchar(64) comment '账户关闭日期',
   UploadStatus         int comment '上报状态',
   UploadFlag           int comment '上报标识',
   create_time          datetime,
   primary key (id)
);

alter table bus_InAcctInf_AcctMthlyBlgInfSgmt comment '月度表现信息段';

/*==============================================================*/
/* Table: bus_InAcctInf_AcctSpecTrstDspnSgmt                    */
/*==============================================================*/
create table bus_InAcctInf_AcctSpecTrstDspnSgmt
(
   id                   bigint not null,
   AccLoanId            varchar(64) comment '借据编号',
   bus_id               bigint comment '对应业务操作的主键',
   CagOfTrdNm           int comment '交易个数',
   UploadStatus         int comment '上报状态',
   UploadFlag           int comment '上报标识',
   create_time          datetime,
   primary key (id)
);

alter table bus_InAcctInf_AcctSpecTrstDspnSgmt comment '特殊交易说明信息段';

/*==============================================================*/
/* Table: bus_InAcctInf_CagOfTrdInf                             */
/*==============================================================*/
create table bus_InAcctInf_CagOfTrdInf
(
   id                   bigint not null,
   Acc_id               bigint,
   ChanTranType         int,
   TranDate             varchar(64),
   TranAmt              numeric(18,0),
   DueTranMon           int,
   DetInfo              varchar(500),
   primary key (id)
);

alter table bus_InAcctInf_CagOfTrdInf comment '交易信息';

/*==============================================================*/
/* Table: bus_InAcctInf_CccInf                                  */
/*==============================================================*/
create table bus_InAcctInf_CccInf
(
   id                   bigint not null comment 'id',
   Gua_id               bigint comment 'id',
   Ccc                  varchar(120) comment '抵（质）押合同标识码',
   primary key (id)
);

alter table bus_InAcctInf_CccInf comment '抵质押合同信息';

/*==============================================================*/
/* Table: bus_InAcctInf_GuarMotgaCltalCtrctInfSgmt              */
/*==============================================================*/
create table bus_InAcctInf_GuarMotgaCltalCtrctInfSgmt
(
   Gua_id               bigint not null comment 'id',
   AccLoanId            varchar(64) comment '借据编号',
   bus_id               bigint comment '对应业务操作的主键',
   CcNm                 int comment '抵质押合同个数',
   UploadStatus         int comment '上报状态',
   UploadFlag           int comment '上报标识',
   create_time          datetime,
   primary key (Gua_id)
);

alter table bus_InAcctInf_GuarMotgaCltalCtrctInfSgmt comment '抵质押物信息段';

/*==============================================================*/
/* Table: bus_InAcctInf_OrigCreditorInfSgmt                     */
/*==============================================================*/
create table bus_InAcctInf_OrigCreditorInfSgmt
(
   id                   bigint not null,
   AccLoanId            varchar(64) comment '借据编号',
   bus_id               bigint comment '对应业务操作的主键',
   InitCredName         varchar(120) comment '初始债权人名称',
   InitCredOrgNm        varchar(64) comment '初始债权人机构代码',
   OrigDbtCate          int comment '原债务种类',
   InitRpySts           int comment '债权转移时的还款状态',
   uploadStatus         int comment '上报状态',
   uploadFlag           int comment '上报标识',
   create_time          datetime,
   primary key (id)
);

alter table bus_InAcctInf_OrigCreditorInfSgmt comment '初始债权说明段';

/*==============================================================*/
/* Table: bus_InAcctInf_RltRepymtInf                            */
/*==============================================================*/
create table bus_InAcctInf_RltRepymtInf
(
   id                   bigint not null,
   rit_id               bigint comment 'rit_id',
   ArlpName             varchar(120) comment '责任人名称',
   InfoIDType           int comment '身份类别',
   ArlpCertType         int comment '责任人身份标识类型',
   ArlpCertNum          varchar(64) comment '责任人身份标识号码',
   ArlpType             int comment '还款责任人类型',
   ArlpAmt              numeric(18,0) comment '还款责任金额',
   WartySign            int comment '联保标志',
   MaxGuarMcc           varchar(120) comment '保证合同编号',
   primary key (id)
);

alter table bus_InAcctInf_RltRepymtInf comment '责任人信息';

/*==============================================================*/
/* Table: bus_InAcctInf_RltRepymtInfSgmt                        */
/*==============================================================*/
create table bus_InAcctInf_RltRepymtInfSgmt
(
   rit_id               bigint not null comment 'rit_id',
   AccLoanId            varchar(64) comment '借据编号',
   bus_id               bigint comment '对应业务操作的主键',
   RltRepymtNm          int comment '责任人个数',
   UploadStatus         int comment '上报状态',
   UploadFlag           int comment '上报标识',
   create_time          datetime,
   primary key (rit_id)
);

alter table bus_InAcctInf_RltRepymtInfSgmt comment '相关还款责任人段';

/*==============================================================*/
/* Table: bus_InAcctInf_SpecPrdSgmt                             */
/*==============================================================*/
create table bus_InAcctInf_SpecPrdSgmt
(
   id                   bigint not null,
   AccLoanId            varchar(64) comment '借据编号',
   bus_id               bigint comment '对应业务操作的主键',
   SpecLine             numeric(18,0) comment '大额专项分期额度',
   SpecEfctDate         varchar(64) comment '专项分期生效日期',
   SpecEndDate          varchar(64) comment '专项分期到期日期',
   UsedInstAmt          numeric(18,0) comment '已用分期金额',
   UploadStatus         int comment '上报状态',
   UploadFlag           int comment '上报标识',
   create_time          datetime,
   primary key (id)
);

alter table bus_InAcctInf_SpecPrdSgmt comment '大额专项分期信息段';

/*==============================================================*/
/* Table: bus_InCtrctInf                                        */
/*==============================================================*/
create table bus_InCtrctInf
(
   id                   bigint not null comment '编号',
   InCtrctInfID         varchar(64) comment '授信协议编号',
   status               int,
   InAccInfid           int,
   UploadTime           datetime,
   CreateTime           datetime,
   UpdateTime           datetime,
   primary key (id)
);

alter table bus_InCtrctInf comment '个人授信协议信息记录';

/*==============================================================*/
/* Table: bus_InCtrctInf_CreditLimSgmt                          */
/*==============================================================*/
create table bus_InCtrctInf_CreditLimSgmt
(
   id                   bigint not null,
   InCtrctInfID         varchar(64) comment '授信协议编号',
   bus_id               bigint comment '对应业务操作的主键',
   CreditLimType        int comment '授信额度类型',
   LimLoopFlg           int comment '额度循环标志',
   CreditLim            numeric(8,0) comment '授信额度',
   Cy                   varchar(4) comment '币种',
   ConEffDate           varchar(64) comment '额度生效日期',
   ConExpDate           varchar(64) comment '额度到期日期',
   ConStatus            int comment '额度状态',
   CreditRest           numeric(8,0) comment '授信限额',
   CreditRestCode       varchar(120) comment '授信限额编号',
   UploadStatus         int comment '上报状态',
   UploadFlag           int comment '上报标识',
   create_time          datetime,
   primary key (id)
);

alter table bus_InCtrctInf_CreditLimSgmt comment '额度信息段';

/*==============================================================*/
/* Table: bus_InCtrctInf_CtrctBsSgmt                            */
/*==============================================================*/
create table bus_InCtrctInf_CtrctBsSgmt
(
   id                   bigint not null,
   InCtrctInfID         varchar(64) comment '授信协议编号',
   bus_id               bigint comment '对应业务操作的主键',
   InfRecType           int comment '信息记录类型',
   ContractCode         varchar(255) comment '授信协议标识码',
   RptDate              varchar(64) comment '信息报告日期',
   RptDateCode          int comment '报告时点说明代码',
   Name                 varchar(120) comment '姓名',
   IDType               int comment '证件类型',
   IDNum                varchar(24) comment '证件号码',
   MngmtOrgCode         varchar(24) comment '业务管理机构代码',
   UploadStatus         int comment '上报状态',
   UploadFlag           int comment '上报标识',
   create_time          datetime,
   primary key (id)
);

alter table bus_InCtrctInf_CtrctBsSgmt comment '个人授信协议信息记录-基础段';

/*==============================================================*/
/* Table: bus_InCtrctInf_CtrctCertRel                           */
/*==============================================================*/
create table bus_InCtrctInf_CtrctCertRel
(
   id                   bigint not null,
   Ctr_id               bigint comment '共同受_id',
   BrerType             int comment '共同受信人身份类别',
   CertRelName          varchar(120) comment '共同受信人名称',
   CertRelIDType        int comment '共同受信人身份标识类型',
   CertRelIDNum         varchar(64) comment '共同受信人身份标识号码',
   primary key (id)
);

alter table bus_InCtrctInf_CtrctCertRel comment '共同受信人';

/*==============================================================*/
/* Table: bus_InCtrctInf_CtrctCertRelSgmt                       */
/*==============================================================*/
create table bus_InCtrctInf_CtrctCertRelSgmt
(
   id                   bigint not null comment 'id',
   InCtrctInfID         varchar(64) comment '授信协议编号',
   bus_id               bigint comment '对应业务操作的主键',
   BrerNm               int comment '共同受信人个数',
   UploadStatus         int comment '上报状态',
   UploadFlag           int comment '上报标识',
   create_time          datetime,
   primary key (id)
);

alter table bus_InCtrctInf_CtrctCertRelSgmt comment '共同受信人信息段';

/*==============================================================*/
/* Table: bus_InSpcEvtDscInf                                    */
/*==============================================================*/
create table bus_InSpcEvtDscInf
(
   id                   bigint not null,
   AccLoanId            varchar(64) comment '借据编号',
   InfRecType           int comment '信息记录类型',
   AcctCode             varchar(120) comment '账户标识码',
   OpetnType            int comment '事件类型',
   Month                varchar(24) comment '发生月份',
   Flag                 int comment '生效标志',
   RptDate              varchar(24) comment '信息报告日期',
   UploadStatus         int comment '上报状态',
   UploadFlag           int comment '上报标识',
   create_time          datetime,
   primary key (id)
);

alter table bus_InSpcEvtDscInf comment '个人借贷账户特殊事件说明记录';

/*==============================================================*/
/* Table: bus_del_InAcctDel                                     */
/*==============================================================*/
create table bus_del_InAcctDel
(
   id                   varchar(64) not null,
   AccLoanId            varchar(64) comment '借据编号',
   InfRecType           int comment '信息记录类型',
   DelRecCode           varchar(120) comment '待删除业务标识码',
   DelSgmtCode          varchar(64) comment '待删除段段标',
   DelStartDate         varchar(64) comment '待删除起始日期',
   DelEndDate           varchar(64) comment '待删除结束日期',
   UploadStatus         int comment '上报状态',
   UploadFlag           int comment '上报标识',
   create_time          datetime comment 'create_time',
   primary key (id)
);

alter table bus_del_InAcctDel comment '个人借贷账户按段删除请求记录';

/*==============================================================*/
/* Table: bus_del_InAcctEntDel                                  */
/*==============================================================*/
create table bus_del_InAcctEntDel
(
   id                   bigint not null,
   AccLoanId            varchar(64) comment '借据编号',
   InfRecType           int comment '信息记录类型',
   DelRecCode           varchar(64) comment '待删除业务标识码',
   UploadStatus         int comment '上报状态',
   UploadFlag           int comment '上报标识',
   create_time          datetime comment 'create_time',
   primary key (id)
);

alter table bus_del_InAcctEntDel comment '个人借贷账户整笔删除请求记录';

/*==============================================================*/
/* Table: bus_del_InCtrctDel                                    */
/*==============================================================*/
create table bus_del_InCtrctDel
(
   id                   bigint not null comment 'id',
   InCtrctInfID         varchar(64) comment '授信协议编号',
   InfRecType           int comment '信息记录类型',
   DelRecCode           varchar(120) comment '待删除业务标识码',
   DelSgmtCode          varchar(4) comment '待删除段段标',
   DelStartDate         varchar(64) comment '待删除起始日期',
   DelEndDate           varchar(64) comment '待删除结束日期',
   UploadStatus         int comment '上报状态',
   UploadFlag           int comment '上报标识',
   create_time          datetime comment 'create_time',
   primary key (id)
);

alter table bus_del_InCtrctDel comment '个人授信协议按段删除请求记录';

/*==============================================================*/
/* Table: bus_del_InCtrctEntDel                                 */
/*==============================================================*/
create table bus_del_InCtrctEntDel
(
   id                   bigint not null comment 'id',
   InCtrctInfID         varchar(64) comment '授信协议编号',
   InfRecTpTp           int comment '信息记录类型',
   DelRecCode           varchar(120) comment '待删除业务标识码',
   UploadStatus         int comment '上报状态',
   UploadFlag           int comment '上报标识',
   create_time          datetime,
   primary key (id)
);

alter table bus_del_InCtrctEntDel comment '个人授信协议整笔删除请求记录';

/*==============================================================*/
/* Table: bus_update_InAcctIDCagsInf                            */
/*==============================================================*/
create table bus_update_InAcctIDCagsInf
(
   id                   bigint not null,
   AccLoanId            varchar(64) comment '借据编号',
   InfRecType           int comment '信息记录类型',
   OdBnesCode           varchar(120) comment '原业务标识码',
   NwBnesCode           varchar(120) comment '新业务标识码-',
   UploadStatus         int comment '上报状态',
   UploadFlag           int comment '上报标识',
   create_time          datetime,
   primary key (id)
);

alter table bus_update_InAcctIDCagsInf comment '个人借贷账户标识变更请求记录';

/*==============================================================*/
/* Table: bus_update_InCtrctIDCagsInf                           */
/*==============================================================*/
create table bus_update_InCtrctIDCagsInf
(
   id                   bigint not null,
   InCtrctInfID         varchar(64) comment '授信协议编号',
   InfRecType           int comment '信息记录类型',
   OdBnesCode           varchar(120) comment '原业务标识码',
   NwBnesCode           varchar(120) comment '新业务标识码',
   UploadStatus         int comment '上报状态',
   UploadFlag           int comment '上报标识',
   create_time          datetime,
   primary key (id)
);

alter table bus_update_InCtrctIDCagsInf comment '个人授信协议标识变更请求记录';

/*==============================================================*/
/* Table: bus_update_InCtrctInfByCode                           */
/*==============================================================*/
create table bus_update_InCtrctInfByCode
(
   id                   bigint not null comment '编号',
   AccLoanId            varchar(64) comment '借据编号',
   InfRecType           varchar(4) comment '信息记录类型',
   ModRecCode           varchar(240) comment '待更正业务标识码',
   RptDate              varchar(64) comment '信息报告日期',
   MdfcSgmtCode         varchar(4) comment '待更正段段标',
   UploadStatus         int comment '上报状态',
   UploadFlag           int comment '上报标识',
   create_time          datetime,
   primary key (id)
);

alter table bus_update_InCtrctInfByCode comment '个人授信协议按段更正请求记录';

/*==============================================================*/
/* Table: bus_update_acctinfbycode                              */
/*==============================================================*/
create table bus_update_acctinfbycode
(
   id                   bigint not null comment '编号',
   AccLoanId            varchar(64) comment '借据编号',
   InfRecType           varchar(4) comment '信息记录类型',
   ModRecCode           varchar(240) comment '待更正业务标识码',
   RptDate              varchar(64) comment '信息报告日期',
   AcctType             varchar(4) comment '账户类型',
   MdfcSgmtCode         varchar(4) comment '待更正段段标',
   UploadStatus         int comment '上报状态',
   UploadFlag           int comment '上报标识',
   create_time          datetime,
   primary key (id)
);

alter table bus_update_acctinfbycode comment '个人借贷账户按段更正请求记录';

alter table bus_InAcctInf_CagOfTrdInf add constraint FK_Reference_7 foreign key (Acc_id)
      references bus_InAcctInf_AcctSpecTrstDspnSgmt (id) on delete restrict on update restrict;

alter table bus_InAcctInf_CccInf add constraint FK_Reference_6 foreign key (Gua_id)
      references bus_InAcctInf_GuarMotgaCltalCtrctInfSgmt (Gua_id) on delete restrict on update restrict;

alter table bus_InAcctInf_RltRepymtInf add constraint FK_Reference_5 foreign key (rit_id)
      references bus_InAcctInf_RltRepymtInfSgmt (rit_id) on delete restrict on update restrict;

alter table bus_InCtrctInf_CtrctCertRel add constraint FK_Reference_4 foreign key (Ctr_id)
      references bus_InCtrctInf_CtrctCertRelSgmt (id) on delete restrict on update restrict;

