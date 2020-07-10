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
@Table(name="bus_del_customer_cardpipy")
public class BusDelCustomerCardpipy implements Serializable {

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

    @Column(name = "InfSurcCode")
    @ApiModelProperty(value = "信息来源编码")
    private String infsurccode;

    @Column(name = "CustomerId")
    @ApiModelProperty(value = "客户编码")
    private String customerid;

    @Column(name = "UploadDate")
    @ApiModelProperty(value = "上报日期")
    private String uploaddate;

    @Column(name = "UploadStats")
    @ApiModelProperty(value = "上报状态")
    private Integer uploadstats;

    @Column(name = "Ureate_time")
    @ApiModelProperty(value = "create_time")
    private Timestamp createTime;

    public void copy(BusDelCustomerCardpipy source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}