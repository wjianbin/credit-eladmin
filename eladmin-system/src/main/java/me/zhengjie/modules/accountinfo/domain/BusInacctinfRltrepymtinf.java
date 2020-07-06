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
@Table(name="bus_inacctinf_rltrepymtinf")
public class BusInacctinfRltrepymtinf implements Serializable {

    @Id
    @Column(name = "id")
    @ApiModelProperty(value = "id")
    private Long id;

    @Column(name = "rit_id")
    @ApiModelProperty(value = "rit_id")
    private Long ritId;

    @Column(name = "ArlpName")
    @ApiModelProperty(value = "责任人名称")
    private String arlpname;

    @Column(name = "InfoIDType")
    @ApiModelProperty(value = "身份类别")
    private Integer infoidtype;

    @Column(name = "ArlpCertType")
    @ApiModelProperty(value = "责任人身份标识类型")
    private Integer arlpcerttype;

    @Column(name = "ArlpCertNum")
    @ApiModelProperty(value = "责任人身份标识号码")
    private String arlpcertnum;

    @Column(name = "ArlpType")
    @ApiModelProperty(value = "还款责任人类型")
    private Integer arlptype;

    @Column(name = "ArlpAmt")
    @ApiModelProperty(value = "还款责任金额")
    private BigDecimal arlpamt;

    @Column(name = "WartySign")
    @ApiModelProperty(value = "联保标志")
    private Integer wartysign;

    @Column(name = "MaxGuarMcc")
    @ApiModelProperty(value = "保证合同编号")
    private String maxguarmcc;

    public void copy(BusInacctinfRltrepymtinf source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}