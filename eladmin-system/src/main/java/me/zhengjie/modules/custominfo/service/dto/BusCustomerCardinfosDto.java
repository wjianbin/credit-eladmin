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
package me.zhengjie.modules.custominfo.service.dto;

import lombok.Data;
import java.sql.Timestamp;
import java.io.Serializable;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;

/**
* @website https://el-admin.vip
* @description /
* @author jianb-wang
* @date 2020-06-29
**/
@Data
public class BusCustomerCardinfosDto implements Serializable {

    /** id */
    /** 防止精度丢失 */
    @JsonSerialize(using= ToStringSerializer.class)
    private Long id;

    /** 信息记录类型 */
    private String infrectype;

    /** 姓名 */
    private String name;

    /** 证件类型 */
    private String idtype;

    /** 证件号码 */
    private String idnum;

    /** 其他姓名 */
    private String othname;

    /** 其他证件类型 */
    private String othidtype;

    /** 其他证件号码 */
    private String othidnum;

    /** 证件关联关系有效标志 */
    private String othassflg;

    /** 信息来源编码 */
    private String infsurccode;

    /** 信息报告日期 */
    private Timestamp rptdate;

    /** 客户编码 */
    private String customerid;

    /** create_time */
    private Timestamp createTime;

    /** 上报状态 */
    private Integer uploadstatus;

    /** 上报标识 */
    private Integer uploadflag;
}