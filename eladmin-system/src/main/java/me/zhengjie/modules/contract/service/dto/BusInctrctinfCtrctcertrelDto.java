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
public class BusInctrctinfCtrctcertrelDto implements Serializable {

    /** 防止精度丢失 */
    @JsonSerialize(using= ToStringSerializer.class)
    private Long id;

    /** 共同受_id */
    private Long ctrId;

    /** 共同受信人身份类别 */
    private Integer brertype;

    /** 共同受信人名称 */
    private String certrelname;

    /** 共同受信人身份标识类型 */
    private Integer certrelidtype;

    /** 共同受信人身份标识号码 */
    private String certrelidnum;
}