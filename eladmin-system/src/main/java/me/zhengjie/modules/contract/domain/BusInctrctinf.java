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
 * @date 2020-07-20
 **/
@Entity
@Data
@Table(name="bus_inctrctinf")
public class BusInctrctinf implements Serializable {

    @Id
    @Column(name = "id")
    @ApiModelProperty(value = "id", hidden = true)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "InCtrctInfID",nullable = false)
    @NotBlank
    @ApiModelProperty(value = "授信协议编号")
    private String inctrctinfid;

    @Column(name = "status")
    @ApiModelProperty(value = "状态")
    private Integer status;

    @Column(name = "InAccInfid",nullable = false)
    @NotBlank
    @ApiModelProperty(value = "账户编号")
    private String inaccinfid;

    @Column(name = "UploadTime")
    @ApiModelProperty(value = "上传时间")
    private Timestamp uploadtime;

    @Column(name = "CreateTime")
    @ApiModelProperty(value = "创建时间")
    private Timestamp createtime;

    @Column(name = "UpdateTime")
    @ApiModelProperty(value = "更新时间")
    private Timestamp updatetime;

    public void copy(BusInctrctinf source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}