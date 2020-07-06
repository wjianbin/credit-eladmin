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
package me.zhengjie.modules.accountinfo.domain;

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
@Table(name="bus_inacctinf_acctbssgmt")
public class BusInacctinfAcctbssgmt implements Serializable {

    @Id
    @Column(name = "id")
    @ApiModelProperty(value = "编号")
    private Long id;

    @Column(name = "AccLoanId")
    @ApiModelProperty(value = "借据编号")
    private String accloanid;

    @Column(name = "bus_id")
    @ApiModelProperty(value = "对应业务操作的主键")
    private Long busId;

    @Column(name = "InfRecType")
    @ApiModelProperty(value = "信息记录类型")
    private Integer infrectype;

    @Column(name = "AcctType")
    @ApiModelProperty(value = "账户类型")
    private Integer accttype;

    @Column(name = "AcctCode")
    @ApiModelProperty(value = "个人账户标识码")
    private String acctcode;

    @Column(name = "RptDate")
    @ApiModelProperty(value = "信息报告日期")
    private String rptdate;

    @Column(name = "RptDateCode")
    @ApiModelProperty(value = "报告时点说明代码")
    private String rptdatecode;

    @Column(name = "Name")
    @ApiModelProperty(value = "姓名")
    private String name;

    @Column(name = "IDType")
    @ApiModelProperty(value = "证件类型")
    private Integer idtype;

    @Column(name = "IDNum")
    @ApiModelProperty(value = "证件号码")
    private String idnum;

    @Column(name = "MngmtOrgCode")
    @ApiModelProperty(value = "业务管理机构代码")
    private String mngmtorgcode;

    @Column(name = "UploadStatus")
    @ApiModelProperty(value = "上报状态")
    private Integer uploadstatus;

    @Column(name = "UploadFlag")
    @ApiModelProperty(value = "上报标识")
    private Integer uploadflag;

    @Column(name = "create_time")
    @ApiModelProperty(value = "createTime")
    private Timestamp createTime;

    public void copy(BusInacctinfAcctbssgmt source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}