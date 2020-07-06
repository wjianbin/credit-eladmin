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
package me.zhengjie.modules.custominfo.domain;

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
* @date 2020-06-29
**/
@Entity
@Data
@Table(name="bus_customer_other_cardinfo")
public class BusCustomerOtherCardinfo implements Serializable {

    @Id
    @Column(name = "id")
    @ApiModelProperty(value = "id")
    private Long id;

    @Column(name = "Alias")
    @ApiModelProperty(value = "姓名")
    private String alias;

    @Column(name = "OthIDType")
    @ApiModelProperty(value = "证件类型")
    private String othidtype;

    @Column(name = "OthIDNum")
    @ApiModelProperty(value = "证件号码")
    private String othidnum;

    @Column(name = "IDInfoUpDate")
    @ApiModelProperty(value = "信息更新日期")
    private Timestamp idinfoupdate;

    @Column(name = "CustomerId")
    @ApiModelProperty(value = "customerId")
    private String customerid;

    @Column(name = "Create_time")
    @ApiModelProperty(value = "create_time")
    private Timestamp createTime;

    public void copy(BusCustomerOtherCardinfo source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}