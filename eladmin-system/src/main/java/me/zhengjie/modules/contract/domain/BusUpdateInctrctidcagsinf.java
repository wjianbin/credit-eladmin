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
import java.io.Serializable;

/**
* @website https://el-admin.vip
* @description /
* @author jianb-wang
* @date 2020-07-01
**/
@Entity
@Data
@Table(name="bus_update_inctrctidcagsinf")
public class BusUpdateInctrctidcagsinf implements Serializable {

    @Id
    @Column(name = "id")
    @ApiModelProperty(value = "id")
    private Long id;

    @Column(name = "InCtrctInfID")
    @ApiModelProperty(value = "授信协议编号")
    private String inctrctinfid;

    @Column(name = "InfRecType")
    @ApiModelProperty(value = "信息记录类型")
    private Integer infrectype;

    @Column(name = "OdBnesCode")
    @ApiModelProperty(value = "原业务标识码")
    private String odbnescode;

    @Column(name = "NwBnesCode")
    @ApiModelProperty(value = "新业务标识码")
    private String nwbnescode;

    @Column(name = "UploadStatus")
    @ApiModelProperty(value = "上报状态")
    private Integer uploadstatus;

    @Column(name = "UploadFlag")
    @ApiModelProperty(value = "上报标识")
    private Integer uploadflag;

    @Column(name = "create_time")
    @ApiModelProperty(value = "createTime")
    private Timestamp createTime;

    public void copy(BusUpdateInctrctidcagsinf source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}