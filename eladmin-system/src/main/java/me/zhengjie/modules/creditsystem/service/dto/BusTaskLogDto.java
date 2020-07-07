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
package me.zhengjie.modules.creditsystem.service.dto;

import lombok.Data;
import java.io.Serializable;

/**
* @website https://el-admin.vip
* @description /
* @author jianb-wang
* @date 2020-07-07
**/
@Data
public class BusTaskLogDto implements Serializable {

    private Long id;

    /** 任务执行日期 */
    private String batchdate;

    /** 实际日期 */
    private String businessdate;

    /** 任务名称 */
    private String taskname;

    /** 任务名称描述 */
    private String taskdescribe;

    /** 任务所属模块 */
    private String targetname;

    /** 任务所属模块描述 */
    private String targetdescribe;

    /** 开始执行时间 */
    private String begintime;

    /** 执行结束时间 */
    private String endtime;

    /** 状态 */
    private String status;
}