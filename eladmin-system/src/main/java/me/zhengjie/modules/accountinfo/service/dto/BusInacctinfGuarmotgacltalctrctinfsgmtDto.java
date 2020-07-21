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
package me.zhengjie.modules.accountinfo.service.dto;

import lombok.Data;
import java.sql.Timestamp;
import java.io.Serializable;
import java.util.List;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;

/**
* @website https://el-admin.vip
* @description /
* @author jianb-wang
* @date 2020-07-01
**/
@Data
public class BusInacctinfGuarmotgacltalctrctinfsgmtDto implements Serializable {

    /** id */
    /** 防止精度丢失 */
    @JsonSerialize(using= ToStringSerializer.class)
    private Long guaId;

    /** 借据编号 */
    private String accloanid;

    /** 对应业务操作的主键 */
    private Long busId;

    /** 抵质押合同个数 */
    private Integer ccnm;

    /** 上报状态 */
    private Integer uploadstatus;

    /** 上报标识 */
    private Integer uploadflag;

    private Timestamp createTime;

    private List<BusInacctinfCccinfDto> busInacctinfCccinfDto;
}