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
package me.zhengjie.modules.accountinfo.domain;

import lombok.Data;
import cn.hutool.core.bean.BeanUtil;
import io.swagger.annotations.ApiModelProperty;
import cn.hutool.core.bean.copier.CopyOptions;
import javax.persistence.*;
import javax.validation.constraints.*;
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
@Table(name="bus_inacctinf_cagoftrdinf")
public class BusInacctinfCagoftrdinf implements Serializable {

    @Id
    @Column(name = "id")
    @ApiModelProperty(value = "id")
    private Long id;

    @Column(name = "Acc_id")
    @ApiModelProperty(value = "特殊交_id")
    private Long accId;

    @Column(name = "ChanTranType")
    @ApiModelProperty(value = "交易类型")
    private Integer chantrantype;

    @Column(name = "TranDate")
    @ApiModelProperty(value = "交易日期")
    private String trandate;

    @Column(name = "TranAmt")
    @ApiModelProperty(value = "交易金额")
    private BigDecimal tranamt;

    @Column(name = "DueTranMon")
    @ApiModelProperty(value = "到期日期变更月数")
    private Integer duetranmon;

    @Column(name = "DetInfo")
    @ApiModelProperty(value = "交易明细信息")
    private String detinfo;

    public void copy(BusInacctinfCagoftrdinf source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}