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
public class BusCustomerCardpipyDto implements Serializable {

    /** id */
    /** 防止精度丢失 */
    @JsonSerialize(using= ToStringSerializer.class)
    private Long id1;

    /** 信息记录类型 */
    private String infrectype;

    /** 姓名 */
    private String name;

    /** 证件类型 */
    private String idtype;

    /** 证件号码 */
    private String idnum;

    /** 信息来源编码 */
    private String infsurccode;

    /** 证件有效期起始日期 */
    private Timestamp idefctdate;

    /** 证件有效期到期日期 */
    private Timestamp idduedate;

    /** 证件签发机关名称 */
    private String idorgname;

    /** ֤证件签发机关所在地行政区划 */
    private String iddist;

    /** 客户资料维护机构代码 */
    private String cimoc;

    /** 信息报告日期 */
    private Timestamp rptdate;

    /** 客户编码 */
    private String customerid;

    /** 上报日期 */
    private Integer uploaddate;

    /** 上报标识 */
    private Integer uploadflag;

    /** create_time */
    private Timestamp createTime;
}