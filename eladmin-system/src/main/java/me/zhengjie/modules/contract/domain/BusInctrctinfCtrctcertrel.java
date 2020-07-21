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
import java.io.Serializable;

/**
* @website https://el-admin.vip
* @description /
* @author jianb-wang
* @date 2020-07-01
**/
@Entity
@Data
@Table(name="bus_inctrctinf_ctrctcertrel")
public class BusInctrctinfCtrctcertrel implements Serializable {

    @Id
    @Column(name = "id")
    @ApiModelProperty(value = "id", hidden = true)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "Ctr_id")
    @ApiModelProperty(value = "共同受_id")
    private Long ctrId;

    @Column(name = "BrerType")
    @ApiModelProperty(value = "共同受信人身份类别")
    private Integer brertype;

    @Column(name = "CertRelName")
    @ApiModelProperty(value = "共同受信人名称")
    private String certrelname;

    @Column(name = "CertRelIDType")
    @ApiModelProperty(value = "共同受信人身份标识类型")
    private Integer certrelidtype;

    @Column(name = "CertRelIDNum")
    @ApiModelProperty(value = "共同受信人身份标识号码")
    private String certrelidnum;

    public void copy(BusInctrctinfCtrctcertrel source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}