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
package me.zhengjie.modules.contract.service.dto;

import lombok.Data;
import java.sql.Timestamp;
import java.io.Serializable;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;

/**
* @website https://el-admin.vip
* @description /
* @author jianb-wang
* @date 2020-07-01
**/
@Data
public class BusDelInctrctdelDto implements Serializable {

    /** id */
    /** 防止精度丢失 */
    @JsonSerialize(using= ToStringSerializer.class)
    private Long id;

    /** 授信协议编号 */
    private String inctrctinfid;

    /** 信息记录类型 */
    private Integer infrectype;

    /** 待删除业务标识码 */
    private String delreccode;

    /** 待删除段段标 */
    private String delsgmtcode;

    /** 待删除起始日期 */
    private String delstartdate;

    /** 待删除结束日期 */
    private String delenddate;

    /** 上报状态 */
    private Integer uploadstatus;

    /** 上报标识 */
    private Integer uploadflag;

    /** create_time */
    private Timestamp createTime;
}