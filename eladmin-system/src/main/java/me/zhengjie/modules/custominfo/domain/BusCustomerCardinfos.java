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

import lombok.Data;
import cn.hutool.core.bean.BeanUtil;
import io.swagger.annotations.ApiModelProperty;
import cn.hutool.core.bean.copier.CopyOptions;
import javax.persistence.*;
import javax.validation.constraints.*;
import java.sql.Timestamp;
import java.io.Serializable;

/**
* @website https://el-admin.vip
* @description /
* @author jianb-wang
* @date 2020-06-29
**/
@Entity
@Data
@Table(name="bus_customer_cardinfos")
public class BusCustomerCardinfos implements Serializable {

    @Id
    @Column(name = "id")
    @ApiModelProperty(value = "id", hidden = true)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "InfRecType")
    @ApiModelProperty(value = "信息记录类型")
    private String infrectype;

    @Column(name = "Name")
    @ApiModelProperty(value = "姓名")
    private String name;

    @Column(name = "IDType")
    @ApiModelProperty(value = "证件类型")
    private String idtype;

    @Column(name = "IDNum")
    @ApiModelProperty(value = "证件号码")
    private String idnum;

    @Column(name = "OthName")
    @ApiModelProperty(value = "其他姓名")
    private String othname;

    @Column(name = "OthIDType")
    @ApiModelProperty(value = "其他证件类型")
    private String othidtype;

    @Column(name = "OthIDNum")
    @ApiModelProperty(value = "其他证件号码")
    private String othidnum;

    @Column(name = "OthAssFlg")
    @ApiModelProperty(value = "证件关联关系有效标志")
    private String othassflg;

    @Column(name = "InfSurcCode")
    @ApiModelProperty(value = "信息来源编码")
    private String infsurccode;

    @Column(name = "RptDate")
    @ApiModelProperty(value = "信息报告日期")
    private Timestamp rptdate;

    @Column(name = "CustomerId")
    @ApiModelProperty(value = "客户编码")
    private String customerid;

    @Column(name = "Create_time")
    @ApiModelProperty(value = "create_time")
    private Timestamp createTime;

    @Column(name = "UploadStatus")
    @ApiModelProperty(value = "上报状态")
    private Integer uploadstatus;

    @Column(name = "UploadFlag")
    @ApiModelProperty(value = "上报标识")
    private Integer uploadflag;

    public void copy(BusCustomerCardinfos source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}