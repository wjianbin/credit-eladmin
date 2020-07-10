/*
*  Copyright 2019-2020 Zheng Jie
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*  http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*/
package me.zhengjie.modules.custominfo.service.dto;

import lombok.Data;
import java.sql.Timestamp;
import java.io.Serializable;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;

/**
* @website https://el-admin.vip
* @description /
* @author jianb-wang
* @date 2020-06-29
**/
@Data
public class BusCustomerBaseInfoDto implements Serializable {

    /** id */
    /** 防止精度丢失 */
    @JsonSerialize(using= ToStringSerializer.class)
    private Long id;

    /** 信息记录类型 */
    private String infrectype;

    /** 姓名 */
    private String name;

    /** 证件类型 */
    private String idtype;

    /** 证件号码 */
    private String idnum;

    /** 信息来源编码 */
    private String infsurccode;

    /** 信息报告日期 */
    private String rptdate;

    /** 报告时点说明代码 */
    private String rptdatecode;

    /** 客户资料维护机构代码 */
    private String cimoc;

    /** 客户资料类型 */
    private String customertype;

    /** 性别 */
    private Integer sex;

    /** 出生日期 */
    private String dob;

    /** 国籍 */
    private String nation;

    /** 户籍地址 */
    private String houseadd;

    /** 户籍所在地行政区划 */
    private String hhdist;

    /** 手机号码 */
    private String cellphone;

    /** 电子邮箱 */
    private String email;

    /** 信息更新日期 */
    private String fcsinfoupdate;

    /** 婚姻状况 */
    private String maristatus;

    /** 配偶姓名 */
    private String sponame;

    /** 配偶证件类型 */
    private String spoidtype;

    /** 配偶证件号码 */
    private String spoidnum;

    /** 配偶联系电话 */
    private String spotel;

    /** 配偶工作单位 */
    private String spscmpynm;

    /** 信息更新日期 */
    private String spsinfoupdate;

    /** 学历 */
    private String edulevel;

    /** 学位 */
    private String acadegree;

    /** 信息更新日期 */
    private String eduinfoupdate;

    /** 就业状况 */
    private String empstatus;

    /** 单位名称 */
    private String cpnname;

    /** 单位性质 */
    private String cpntype;

    /** 单位所属行业 */
    private String industry;

    /** 单位详细地址 */
    private String cpnaddr;

    /** 单位所在地邮编 */
    private String cpnpc;

    /** 单位所在地行政区划 */
    private String cpndist;

    /** 单位电话 */
    private String cpntel;

    /** 职业 */
    private String occupation;

    /** 职务 */
    private String title;

    /** 职称 */
    private String techtitle;

    /** 本单位工作起始年份 */
    private String workstartdate;

    /** 信息更新日期 */
    private String octpninfoupdate;

    /** 居住状况 */
    private String resistatus;

    /** 居住地详细地址 */
    private String resiaddr;

    /** 居住地邮编 */
    private String resipc;

    /** 居住地行政区划 */
    private String residist;

    /** 住宅电话 */
    private String hometel;

    /** 信息更新日期 */
    private String resiinfoupdate;

    /** 通讯地址 */
    private String mailaddr;

    /** 通讯地邮编 */
    private String mailpc;

    /** 通讯地行政区划 */
    private String maildist;

    /** 信息更新日期 */
    private String mlginfoupdate;

    /** 自报年收入 */
    private String annlinc;

    /** 纳税年收入 */
    private String taxincome;

    /** 信息更新日期 */
    private String incinfoupdate;

    /** 客户编 */
    private String customerid;

    /** 记录日期 */
    private String insertdate;

    /** 上报日期 */
    private Timestamp uploaddate;

    /** 上报状态 */
    private Integer uploadstatus;

    /** 上报标识 */
    private Integer uploadflag;

    /** create_time */
    private Timestamp createTime;

    /** 更新日期 */
    private String updatedate;
}