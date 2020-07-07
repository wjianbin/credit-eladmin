/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020/6/29 18:01:50                           */
/*==============================================================*/


drop table if exists bus_customer_base_info;

drop table if exists bus_customer_cardinfos;

drop table if exists bus_customer_cardpipy;

drop table if exists bus_customer_other_cardinfo;

drop table if exists bus_customer_relationship;

drop table if exists bus_del_customer_cardpipy;

drop table if exists bus_del_customer_info;

/*==============================================================*/
/* Table: bus_customer_base_info                                */
/*==============================================================*/
create table bus_customer_base_info
(
   id                   bigint not null comment 'id',
   CustomerId           varchar(64) comment '老系统里面的客户编号',
   InfRecType           varchar(4) comment '信息记录类型',
   Name                 varchar(255) comment '姓名',
   IDType               int comment '证件类型',
   IDNum                varchar(64) comment '证件号码',
   InfSurcCode          varchar(64) comment '信息来源编码',
   RptDate              date comment '信息报告日期',
   RptDateCode          varchar(64) comment '报告时点说明代码',
   Cimoc                varchar(64) comment '客户资料维护机构代码',
   CustomerType         varchar(64) comment '客户资料类型',
   Sex                  int comment '性别',
   DOB                  date comment '出生日期',
   Nation               varchar(4) comment '国籍',
   HouseAdd             varchar(255) comment '户籍地址',
   HhDist               varchar(24) comment '户籍所在地行政区划',
   CellPhone            varchar(14) comment '手机号码',
   Email                varchar(24) comment '电子邮箱',
   FcsInfoUpDate        date comment '信息更新日期',
   MariStatus           varchar(4) comment '婚姻状况',
   SpoName              varchar(255) comment '配偶姓名',
   SpoIDType            int comment '配偶证件类型',
   SpoIDNum             varchar(64) comment '配偶证件号码',
   SpoTel               varchar(14) comment '配偶联系电话',
   SpsCmpyNm            varchar(255) comment '配偶工作单位',
   SpsInfoUpDate        date comment '信息更新日期',
   EduLevel             varchar(4) comment '学历',
   AcaDegree            varchar(4) comment '学位',
   EduInfoUpDate        date comment '信息更新日期',
   EmpStatus            varchar(4) comment '就业状况',
   CpnName              varchar(255) comment '单位名称',
   CpnType              varchar(4) comment '单位性质',
   Industry             varchar(64) comment '单位所属行业',
   CpnAddr              varchar(255) comment '单位详细地址',
   CpnPc                varchar(14) comment '单位所在地邮编',
   CpnDist              varchar(14) comment '单位所在地行政区划',
   CpnTEL               varchar(14) comment '单位电话',
   Occupation           varchar(14) comment '职业',
   Title                varchar(14) comment '职务',
   TechTitle            varchar(14) comment '职称',
   WorkStartDate        date comment '本单位工作起始年份',
   OctpnInfoUpDate      date comment '信息更新日期',
   ResiStatus           varchar(4) comment '居住状况',
   ResiAddr             varchar(255) comment '居住地详细地址',
   ResiPc               varchar(14) comment '居住地邮编',
   ResiDist             varchar(14) comment '居住地行政区划',
   HomeTel              varchar(14) comment '住宅电话',
   ResiInfoUpDate       date comment '信息更新日期',
   MailAddr             varchar(255) comment '通讯地址',
   MailPc               varchar(14) comment '通讯地邮编',
   MailDist             varchar(14) comment '通讯地行政区划',
   MlgInfoUpDate        date comment '信息更新日期',
   AnnlInc              varchar(14) comment '自报年收入',
   TaxIncome            varchar(14) comment '纳税年收入',
   IncInfoUpDate        date comment '信息更新日期',
   InsertDate           date comment '创建时间',
   UupdateDate          date comment '更新时间',
   UploadDate           date comment '上报时间',
   UploadStatus         int comment '上报状态（已上报，未上报）',
   UploadFlag           int comment '上报标识(新增，更新)',
   Create_time          datetime comment 'create_time',
   primary key (id)
);

alter table bus_customer_base_info comment '个人基本信息';

/*==============================================================*/
/* Table: bus_customer_cardinfos                                */
/*==============================================================*/
create table bus_customer_cardinfos
(
   id                   bigint not null comment 'id',
   CustomerId           varchar(64) comment '客户编号',
   InfRecType           varchar(4) comment '信息记录类型',
   Name                 varchar(120) comment '姓名',
   IDType               varchar(4) comment '证件类型',
   IDNum                varchar(24) comment '证件号码',
   OthName              varchar(120) comment '其他姓名',
   OthIDType            varchar(4) comment '其他证件类型',
   OthIDNum             varchar(24) comment '其他证件号码',
   OthAssFlg            varchar(4) comment '证件关联关系有效标志',
   InfSurcCode          varchar(24) comment '信息来源编码',
   RptDate              datetime comment '信息报告日期',
   CploadStatus         int comment '上报状态',
   CploadFlag           int comment '上报标识',
   Create_time          datetime comment 'create_time',
   primary key (id)
);

/*==============================================================*/
/* Table: bus_customer_cardpipy                                 */
/*==============================================================*/
create table bus_customer_cardpipy
(
   id1                  bigint not null comment 'id',
   CustomerId           varchar(64) comment '客户编号',
   InfRecType           varchar(4) comment '信息记录类型',
   Name                 varchar(120) comment '姓名',
   IDType               varchar(4) comment '证件类型',
   IDNum                varchar(64) comment '证件号码',
   InfSurcCode          varchar(64) comment '信息来源编码',
   IDEfctDate           date comment '证件有效期起始日期',
   IDDueDate            date comment '证件有效期到期日期',
   IDOrgName            varchar(120) comment '证件签发机关名称',
   IDDist               varchar(24) comment '证件签发机关所在地行政区划',
   Cimoc                varchar(24) comment '客户资料维护机构代码',
   RptDate              date comment '信息报告日期',
   UploadDate           int comment '上报状态（已上报，未上报）',
   UploadFlag           int comment '上报标识(新增，更新)',
   Ureate_time          datetime comment 'create_time',
   primary key (id1)
);

/*==============================================================*/
/* Table: bus_customer_other_cardinfo                           */
/*==============================================================*/
create table bus_customer_other_cardinfo
(
   id                   bigint not null comment 'id',
   CustomerId           varchar(64) comment 'customerId',
   Alias                varchar(120) comment '姓名',
   OthIDType            varchar(4) comment '证件类型',
   OthIDNum             varchar(64) comment '证件号码',
   IDInfoUpDate         date comment '信息更新日期',
   Create_time          datetime comment 'create_time',
   primary key (id)
);

/*==============================================================*/
/* Table: bus_customer_relationship                             */
/*==============================================================*/
create table bus_customer_relationship
(
   id                   bigint not null comment 'id',
   CustomerId           varchar(64) comment '客户编号',
   InfRecType           varchar(4) comment '信息记录类型',
   Name                 varchar(120) comment 'A姓名',
   IDType               varchar(4) comment 'A证件类型',
   IDNum                varchar(24) comment 'A证件号码',
   FamMemName           varchar(120) comment 'B 姓名',
   FamMemCertType       varchar(4) comment 'B 证件类型',
   FamMemCertNum        varchar(24) comment 'B 证件号码',
   FamRel               varchar(4) comment '家族关系',
   FamRelaAssFlag       varchar(4) comment '家族关系有效标志',
   InfSurcCode          varchar(24) comment '信息来源编码',
   RptDate              date comment '信息报告日期',
   UploadStatus         int comment '上报状态',
   UploadFlag           int comment '上报标识',
   Create_time          datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: bus_del_customer_cardpipy                             */
/*==============================================================*/
create table bus_del_customer_cardpipy
(
   id                   bigint not null comment 'id',
   CustomerId           varchar(64) comment '客户编号',
   InfRecType           varchar(4) comment '信息记录类型',
   Name                 varchar(120) comment '姓名',
   IDType               varchar(4) comment '证件类型',
   IDNum                varchar(24) comment '证件号码',
   InfSurcCode          varchar(24) comment '信息来源编码',
   UploadDate           date comment '上报日期',
   UploadStats          int comment '上报状态(上报成功，未上报)',
   Ureate_time          datetime comment 'create_time',
   primary key (id)
);

/*==============================================================*/
/* Table: bus_del_customer_info                                 */
/*==============================================================*/
create table bus_del_customer_info
(
   id                   bigint not null comment 'id',
   CustomerId           varchar(64) comment '客户编号',
   InfRecType           varchar(4) comment '信息记录类型',
   Name                 varchar(120) comment '姓名',
   IDType               varchar(4) comment '证件类型',
   IDNum                varchar(24) comment '证件号码',
   InfSurcCode          varchar(24) comment '信息来源编码',
   Uploaddate           date comment '上报日期',
   Status               int comment '上报状态',
   Create_time          datetime comment 'create_time',
   primary key (id)
);

