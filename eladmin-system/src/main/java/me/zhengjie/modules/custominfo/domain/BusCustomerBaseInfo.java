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
package me.zhengjie.modules.custominfo.domain;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.bean.copier.CopyOptions;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
* @website https://el-admin.vip
* @description /
* @author jianb-wang
* @date 2020-06-29
**/
@Entity
@Data
@Table(name="bus_customer_base_info")
public class BusCustomerBaseInfo implements Serializable {

    @Id
    @Column(name = "id")
    @ApiModelProperty(value = "id")
    private Long id;

    @Column(name = "InfRecType")
    @ApiModelProperty(value = "信息记录类型")
    private String infrectype;

    @Column(name = "Name")
    @ApiModelProperty(value = "姓名")
    private String name;

    @Column(name = "IDType")
    @ApiModelProperty(value = "证件类型")
    private Integer idtype;

    @Column(name = "IDNum")
    @ApiModelProperty(value = "证件号码")
    private String idnum;

    @Column(name = "InfSurcCode")
    @ApiModelProperty(value = "信息来源编码")
    private String infsurccode;

    @Column(name = "RptDate")
    @ApiModelProperty(value = "信息报告日期")
    private Timestamp rptdate;

    @Column(name = "RptDateCode")
    @ApiModelProperty(value = "报告时点说明代码")
    private String rptdatecode;

    @Column(name = "Cimoc")
    @ApiModelProperty(value = "客户资料维护机构代码")
    private String cimoc;

    @Column(name = "CustomerType")
    @ApiModelProperty(value = "客户资料类型")
    private String customertype;

    @Column(name = "Sex")
    @ApiModelProperty(value = "性别")
    private Integer sex;

    @Column(name = "DOB")
    @ApiModelProperty(value = "出生日期")
    private Timestamp dob;

    @Column(name = "Nation")
    @ApiModelProperty(value = "国籍")
    private String nation;

    @Column(name = "HouseAdd")
    @ApiModelProperty(value = "户籍地址")
    private String houseadd;

    @Column(name = "HhDist")
    @ApiModelProperty(value = "户籍所在地行政区划")
    private String hhdist;

    @Column(name = "CellPhone")
    @ApiModelProperty(value = "手机号码")
    private String cellphone;

    @Column(name = "Email")
    @ApiModelProperty(value = "电子邮箱")
    private String email;

    @Column(name = "FcsInfoUpDate")
    @ApiModelProperty(value = "信息更新日期")
    private Timestamp fcsinfoupdate;

    @Column(name = "MariStatus")
    @ApiModelProperty(value = "婚姻状况")
    private String maristatus;

    @Column(name = "SpoName")
    @ApiModelProperty(value = "配偶姓名")
    private String sponame;

    @Column(name = "SpoIDType")
    @ApiModelProperty(value = "配偶证件类型")
    private Integer spoidtype;

    @Column(name = "SpoIDNum")
    @ApiModelProperty(value = "配偶证件号码")
    private String spoidnum;

    @Column(name = "SpoTel")
    @ApiModelProperty(value = "配偶联系电话")
    private String spotel;

    @Column(name = "SpsCmpyNm")
    @ApiModelProperty(value = "配偶工作单位")
    private String spscmpynm;

    @Column(name = "SpsInfoUpDate")
    @ApiModelProperty(value = "信息更新日期")
    private Timestamp spsinfoupdate;

    @Column(name = "EduLevel")
    @ApiModelProperty(value = "学历")
    private String edulevel;

    @Column(name = "AcaDegree")
    @ApiModelProperty(value = "学位")
    private String acadegree;

    @Column(name = "EduInfoUpDate")
    @ApiModelProperty(value = "信息更新日期")
    private Timestamp eduinfoupdate;

    @Column(name = "EmpStatus")
    @ApiModelProperty(value = "就业状况")
    private String empstatus;

    @Column(name = "CpnName")
    @ApiModelProperty(value = "单位名称")
    private String cpnname;

    @Column(name = "CpnType")
    @ApiModelProperty(value = "单位性质")
    private String cpntype;

    @Column(name = "Industry")
    @ApiModelProperty(value = "单位所属行业")
    private String industry;

    @Column(name = "CpnAddr")
    @ApiModelProperty(value = "单位详细地址")
    private String cpnaddr;

    @Column(name = "CpnPc")
    @ApiModelProperty(value = "单位所在地邮编")
    private String cpnpc;

    @Column(name = "CpnDist")
    @ApiModelProperty(value = "单位所在地行政区划")
    private String cpndist;

    @Column(name = "CpnTEL")
    @ApiModelProperty(value = "单位电话")
    private String cpntel;

    @Column(name = "Occupation")
    @ApiModelProperty(value = "职业")
    private String occupation;

    @Column(name = "Title")
    @ApiModelProperty(value = "职务")
    private String title;

    @Column(name = "TechTitle")
    @ApiModelProperty(value = "职称")
    private String techtitle;

    @Column(name = "WorkStartDate")
    @ApiModelProperty(value = "本单位工作起始年份")
    private Timestamp workstartdate;

    @Column(name = "OctpnInfoUpDate")
    @ApiModelProperty(value = "信息更新日期")
    private Timestamp octpninfoupdate;

    @Column(name = "ResiStatus")
    @ApiModelProperty(value = "居住状况")
    private String resistatus;

    @Column(name = "ResiAddr")
    @ApiModelProperty(value = "居住地详细地址")
    private String resiaddr;

    @Column(name = "ResiPc")
    @ApiModelProperty(value = "居住地邮编")
    private String resipc;

    @Column(name = "ResiDist")
    @ApiModelProperty(value = "居住地行政区划")
    private String residist;

    @Column(name = "HomeTel")
    @ApiModelProperty(value = "住宅电话")
    private String hometel;

    @Column(name = "ResiInfoUpDate")
    @ApiModelProperty(value = "信息更新日期")
    private Timestamp resiinfoupdate;

    @Column(name = "MailAddr")
    @ApiModelProperty(value = "通讯地址")
    private String mailaddr;

    @Column(name = "MailPc")
    @ApiModelProperty(value = "通讯地邮编")
    private String mailpc;

    @Column(name = "MailDist")
    @ApiModelProperty(value = "通讯地行政区划")
    private String maildist;

    @Column(name = "MlgInfoUpDate")
    @ApiModelProperty(value = "信息更新日期")
    private Timestamp mlginfoupdate;

    @Column(name = "AnnlInc")
    @ApiModelProperty(value = "自报年收入")
    private String annlinc;

    @Column(name = "TaxIncome")
    @ApiModelProperty(value = "纳税年收入")
    private String taxincome;

    @Column(name = "IncInfoUpDate")
    @ApiModelProperty(value = "信息更新日期")
    private Timestamp incinfoupdate;

    @Column(name = "CustomerId")
    @ApiModelProperty(value = "客户编")
    private String customerid;

    @Column(name = "InsertDate")
    @ApiModelProperty(value = "记录日期")
    private Timestamp insertdate;

    @Column(name = "UploadDate")
    @ApiModelProperty(value = "上报日期")
    private Timestamp uploaddate;

    @Column(name = "UploadStatus")
    @ApiModelProperty(value = "上报状态")
    private Integer uploadstatus;

    @Column(name = "UploadFlag")
    @ApiModelProperty(value = "上报标识")
    private Integer uploadflag;

    @Column(name = "Create_time")
    @ApiModelProperty(value = "create_time")
    private Timestamp createTime;

    @Column(name = "UpdateDate")
    @ApiModelProperty(value = "更新日期")
    private Timestamp updatedate;

    public void copy(BusCustomerBaseInfo source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}