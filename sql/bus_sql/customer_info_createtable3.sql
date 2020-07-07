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
   CustomerId           varchar(64) comment '��ϵͳ����Ŀͻ����',
   InfRecType           varchar(4) comment '��Ϣ��¼����',
   Name                 varchar(255) comment '����',
   IDType               int comment '֤������',
   IDNum                varchar(64) comment '֤������',
   InfSurcCode          varchar(64) comment '��Ϣ��Դ����',
   RptDate              date comment '��Ϣ��������',
   RptDateCode          varchar(64) comment '����ʱ��˵������',
   Cimoc                varchar(64) comment '�ͻ�����ά����������',
   CustomerType         varchar(64) comment '�ͻ���������',
   Sex                  int comment '�Ա�',
   DOB                  date comment '��������',
   Nation               varchar(4) comment '����',
   HouseAdd             varchar(255) comment '������ַ',
   HhDist               varchar(24) comment '�������ڵ���������',
   CellPhone            varchar(14) comment '�ֻ�����',
   Email                varchar(24) comment '��������',
   FcsInfoUpDate        date comment '��Ϣ��������',
   MariStatus           varchar(4) comment '����״��',
   SpoName              varchar(255) comment '��ż����',
   SpoIDType            int comment '��ż֤������',
   SpoIDNum             varchar(64) comment '��ż֤������',
   SpoTel               varchar(14) comment '��ż��ϵ�绰',
   SpsCmpyNm            varchar(255) comment '��ż������λ',
   SpsInfoUpDate        date comment '��Ϣ��������',
   EduLevel             varchar(4) comment 'ѧ��',
   AcaDegree            varchar(4) comment 'ѧλ',
   EduInfoUpDate        date comment '��Ϣ��������',
   EmpStatus            varchar(4) comment '��ҵ״��',
   CpnName              varchar(255) comment '��λ����',
   CpnType              varchar(4) comment '��λ����',
   Industry             varchar(64) comment '��λ������ҵ',
   CpnAddr              varchar(255) comment '��λ��ϸ��ַ',
   CpnPc                varchar(14) comment '��λ���ڵ��ʱ�',
   CpnDist              varchar(14) comment '��λ���ڵ���������',
   CpnTEL               varchar(14) comment '��λ�绰',
   Occupation           varchar(14) comment 'ְҵ',
   Title                varchar(14) comment 'ְ��',
   TechTitle            varchar(14) comment 'ְ��',
   WorkStartDate        date comment '����λ������ʼ���',
   OctpnInfoUpDate      date comment '��Ϣ��������',
   ResiStatus           varchar(4) comment '��ס״��',
   ResiAddr             varchar(255) comment '��ס����ϸ��ַ',
   ResiPc               varchar(14) comment '��ס���ʱ�',
   ResiDist             varchar(14) comment '��ס����������',
   HomeTel              varchar(14) comment 'סլ�绰',
   ResiInfoUpDate       date comment '��Ϣ��������',
   MailAddr             varchar(255) comment 'ͨѶ��ַ',
   MailPc               varchar(14) comment 'ͨѶ���ʱ�',
   MailDist             varchar(14) comment 'ͨѶ����������',
   MlgInfoUpDate        date comment '��Ϣ��������',
   AnnlInc              varchar(14) comment '�Ա�������',
   TaxIncome            varchar(14) comment '��˰������',
   IncInfoUpDate        date comment '��Ϣ��������',
   InsertDate           date comment '����ʱ��',
   UupdateDate          date comment '����ʱ��',
   UploadDate           date comment '�ϱ�ʱ��',
   UploadStatus         int comment '�ϱ�״̬�����ϱ���δ�ϱ���',
   UploadFlag           int comment '�ϱ���ʶ(����������)',
   Create_time          datetime comment 'create_time',
   primary key (id)
);

alter table bus_customer_base_info comment '���˻�����Ϣ';

/*==============================================================*/
/* Table: bus_customer_cardinfos                                */
/*==============================================================*/
create table bus_customer_cardinfos
(
   id                   bigint not null comment 'id',
   CustomerId           varchar(64) comment '�ͻ����',
   InfRecType           varchar(4) comment '��Ϣ��¼����',
   Name                 varchar(120) comment '����',
   IDType               varchar(4) comment '֤������',
   IDNum                varchar(24) comment '֤������',
   OthName              varchar(120) comment '��������',
   OthIDType            varchar(4) comment '����֤������',
   OthIDNum             varchar(24) comment '����֤������',
   OthAssFlg            varchar(4) comment '֤��������ϵ��Ч��־',
   InfSurcCode          varchar(24) comment '��Ϣ��Դ����',
   RptDate              datetime comment '��Ϣ��������',
   CploadStatus         int comment '�ϱ�״̬',
   CploadFlag           int comment '�ϱ���ʶ',
   Create_time          datetime comment 'create_time',
   primary key (id)
);

/*==============================================================*/
/* Table: bus_customer_cardpipy                                 */
/*==============================================================*/
create table bus_customer_cardpipy
(
   id1                  bigint not null comment 'id',
   CustomerId           varchar(64) comment '�ͻ����',
   InfRecType           varchar(4) comment '��Ϣ��¼����',
   Name                 varchar(120) comment '����',
   IDType               varchar(4) comment '֤������',
   IDNum                varchar(64) comment '֤������',
   InfSurcCode          varchar(64) comment '��Ϣ��Դ����',
   IDEfctDate           date comment '֤����Ч����ʼ����',
   IDDueDate            date comment '֤����Ч�ڵ�������',
   IDOrgName            varchar(120) comment '֤��ǩ����������',
   IDDist               varchar(24) comment '֤��ǩ���������ڵ���������',
   Cimoc                varchar(24) comment '�ͻ�����ά����������',
   RptDate              date comment '��Ϣ��������',
   UploadDate           int comment '�ϱ�״̬�����ϱ���δ�ϱ���',
   UploadFlag           int comment '�ϱ���ʶ(����������)',
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
   Alias                varchar(120) comment '����',
   OthIDType            varchar(4) comment '֤������',
   OthIDNum             varchar(64) comment '֤������',
   IDInfoUpDate         date comment '��Ϣ��������',
   Create_time          datetime comment 'create_time',
   primary key (id)
);

/*==============================================================*/
/* Table: bus_customer_relationship                             */
/*==============================================================*/
create table bus_customer_relationship
(
   id                   bigint not null comment 'id',
   CustomerId           varchar(64) comment '�ͻ����',
   InfRecType           varchar(4) comment '��Ϣ��¼����',
   Name                 varchar(120) comment 'A����',
   IDType               varchar(4) comment 'A֤������',
   IDNum                varchar(24) comment 'A֤������',
   FamMemName           varchar(120) comment 'B ����',
   FamMemCertType       varchar(4) comment 'B ֤������',
   FamMemCertNum        varchar(24) comment 'B ֤������',
   FamRel               varchar(4) comment '�����ϵ',
   FamRelaAssFlag       varchar(4) comment '�����ϵ��Ч��־',
   InfSurcCode          varchar(24) comment '��Ϣ��Դ����',
   RptDate              date comment '��Ϣ��������',
   UploadStatus         int comment '�ϱ�״̬',
   UploadFlag           int comment '�ϱ���ʶ',
   Create_time          datetime,
   primary key (id)
);

/*==============================================================*/
/* Table: bus_del_customer_cardpipy                             */
/*==============================================================*/
create table bus_del_customer_cardpipy
(
   id                   bigint not null comment 'id',
   CustomerId           varchar(64) comment '�ͻ����',
   InfRecType           varchar(4) comment '��Ϣ��¼����',
   Name                 varchar(120) comment '����',
   IDType               varchar(4) comment '֤������',
   IDNum                varchar(24) comment '֤������',
   InfSurcCode          varchar(24) comment '��Ϣ��Դ����',
   UploadDate           date comment '�ϱ�����',
   UploadStats          int comment '�ϱ�״̬(�ϱ��ɹ���δ�ϱ�)',
   Ureate_time          datetime comment 'create_time',
   primary key (id)
);

/*==============================================================*/
/* Table: bus_del_customer_info                                 */
/*==============================================================*/
create table bus_del_customer_info
(
   id                   bigint not null comment 'id',
   CustomerId           varchar(64) comment '�ͻ����',
   InfRecType           varchar(4) comment '��Ϣ��¼����',
   Name                 varchar(120) comment '����',
   IDType               varchar(4) comment '֤������',
   IDNum                varchar(24) comment '֤������',
   InfSurcCode          varchar(24) comment '��Ϣ��Դ����',
   Uploaddate           date comment '�ϱ�����',
   Status               int comment '�ϱ�״̬',
   Create_time          datetime comment 'create_time',
   primary key (id)
);

