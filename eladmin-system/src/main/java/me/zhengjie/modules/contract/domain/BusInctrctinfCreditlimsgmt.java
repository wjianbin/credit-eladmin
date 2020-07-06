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
package me.zhengjie.modules.contract.domain;

import lombok.Data;
import cn.hutool.core.bean.BeanUtil;
import io.swagger.annotations.ApiModelProperty;
import cn.hutool.core.bean.copier.CopyOptions;
import javax.persistence.*;
import javax.validation.constraints.*;
import java.sql.Timestamp;
import java.math.BigDecimal;
import java.io.Serializable;

/**
* @website https://el-admin.vip
* @description /
* @author jianb-wang
* @date 2020-07-01
**/
@Entity
@Data
@Table(name="bus_inctrctinf_creditlimsgmt")
public class BusInctrctinfCreditlimsgmt implements Serializable {

    @Id
    @Column(name = "id")
    @ApiModelProperty(value = "id")
    private Long id;

    @Column(name = "InCtrctInfID")
    @ApiModelProperty(value = "授信协议编号")
    private String inctrctinfid;

    @Column(name = "bus_id")
    @ApiModelProperty(value = "对应业务操作的主键")
    private Long busId;

    @Column(name = "CreditLimType")
    @ApiModelProperty(value = "授信额度类型")
    private Integer creditlimtype;

    @Column(name = "LimLoopFlg")
    @ApiModelProperty(value = "额度循环标志")
    private Integer limloopflg;

    @Column(name = "CreditLim")
    @ApiModelProperty(value = "授信额度")
    private BigDecimal creditlim;

    @Column(name = "Cy")
    @ApiModelProperty(value = "币种")
    private String cy;

    @Column(name = "ConEffDate")
    @ApiModelProperty(value = "额度生效日期")
    private String coneffdate;

    @Column(name = "ConExpDate")
    @ApiModelProperty(value = "额度到期日期")
    private String conexpdate;

    @Column(name = "ConStatus")
    @ApiModelProperty(value = "额度状态")
    private Integer constatus;

    @Column(name = "CreditRest")
    @ApiModelProperty(value = "授信限额")
    private BigDecimal creditrest;

    @Column(name = "CreditRestCode")
    @ApiModelProperty(value = "授信限额编号")
    private String creditrestcode;

    @Column(name = "UploadStatus")
    @ApiModelProperty(value = "上报状态")
    private Integer uploadstatus;

    @Column(name = "UploadFlag")
    @ApiModelProperty(value = "上报标识")
    private Integer uploadflag;

    @Column(name = "create_time")
    @ApiModelProperty(value = "createTime")
    private Timestamp createTime;

    public void copy(BusInctrctinfCreditlimsgmt source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}