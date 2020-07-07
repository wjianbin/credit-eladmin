/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020/7/7 16:23:02                            */
/*==============================================================*/


drop table if exists bus_System_Setup;

drop table if exists bus_Task_Log;

/*==============================================================*/
/* Table: bus_System_Setup                                      */
/*==============================================================*/
create table bus_System_Setup
(
   id                   bigint not null,
   BUSINESSDATE         varchar(10) comment '实际日期',
   BATCHDATE            varchar(10) comment '任务执行日期',
   STATUS               varchar(10) comment '状态',
   primary key (id)
);

alter table bus_System_Setup comment '系统处理日期记录表';

/*==============================================================*/
/* Table: bus_Task_Log                                          */
/*==============================================================*/
create table bus_Task_Log
(
   id                   bigint not null,
   BATCHDATE            varchar(10) comment '任务执行日期',
   BUSINESSDATE         varchar(10) comment '实际日期',
   TASKNAME             varchar(255) comment '任务名称',
   TASKDESCRIBE         varchar(255) comment '任务名称描述',
   TARGETNAME           varchar(255) comment '任务所属模块',
   TARGETDESCRIBE       varchar(255) comment '任务所属模块描述',
   BEGINTIME            varchar(20) comment '开始执行时间',
   ENDTIME              varchar(20) comment '执行结束时间',
   STATUS               varchar(10) comment '状态',
   primary key (id)
);

alter table bus_Task_Log comment '任务日志表';

