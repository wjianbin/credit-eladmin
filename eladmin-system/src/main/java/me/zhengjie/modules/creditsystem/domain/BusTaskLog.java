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
package me.zhengjie.modules.creditsystem.domain;

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
* @date 2020-07-07
**/
@Entity
@Data
@Table(name="bus_task_log")
public class BusTaskLog implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    @ApiModelProperty(value = "id")
    private Long id;

    @Column(name = "BATCHDATE")
    @ApiModelProperty(value = "任务执行日期")
    private String batchdate;

    @Column(name = "BUSINESSDATE")
    @ApiModelProperty(value = "实际日期")
    private String businessdate;

    @Column(name = "TASKNAME")
    @ApiModelProperty(value = "任务名称")
    private String taskname;

    @Column(name = "TASKDESCRIBE")
    @ApiModelProperty(value = "任务名称描述")
    private String taskdescribe;

    @Column(name = "TARGETNAME")
    @ApiModelProperty(value = "任务所属模块")
    private String targetname;

    @Column(name = "TARGETDESCRIBE")
    @ApiModelProperty(value = "任务所属模块描述")
    private String targetdescribe;

    @Column(name = "BEGINTIME")
    @ApiModelProperty(value = "开始执行时间")
    private String begintime;

    @Column(name = "ENDTIME")
    @ApiModelProperty(value = "执行结束时间")
    private String endtime;

    @Column(name = "STATUS")
    @ApiModelProperty(value = "状态")
    private String status;

    public void copy(BusTaskLog source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}