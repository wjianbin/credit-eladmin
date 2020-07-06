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
import java.math.BigDecimal;
import java.io.Serializable;

/**
* @website https://el-admin.vip
* @description /
* @author jianb-wang
* @date 2020-07-01
**/
@Entity
@Data
@Table(name="bus_inacctinf_acctbsinfsgmt")
public class BusInacctinfAcctbsinfsgmt implements Serializable {

    @Id
    @Column(name = "id")
    @ApiModelProperty(value = "id")
    private Long id;

    @Column(name = "AccLoanId")
    @ApiModelProperty(value = "借据编号")
    private String accloanid;

    @Column(name = "bus_id")
    @ApiModelProperty(value = "对应业务操作的主键")
    private Long busId;

    @Column(name = "BusiLines")
    @ApiModelProperty(value = "借贷业务大类")
    private Integer busilines;

    @Column(name = "BusiDtlLines")
    @ApiModelProperty(value = "借贷业务种类细分")
    private Integer busidtllines;

    @Column(name = "OpenDate")
    @ApiModelProperty(value = "开户日期")
    private String opendate;

    @Column(name = "Cy")
    @ApiModelProperty(value = "币种")
    private String cy;

    @Column(name = "AcctCredLine")
    @ApiModelProperty(value = "信用额度")
    private BigDecimal acctcredline;

    @Column(name = "LoanAmt")
    @ApiModelProperty(value = "借款金额")
    private BigDecimal loanamt;

    @Column(name = "Flag")
    @ApiModelProperty(value = "分次放款标志")
    private Integer flag;

    @Column(name = "DueDate")
    @ApiModelProperty(value = "到期日期")
    private String duedate;

    @Column(name = "RepayMode")
    @ApiModelProperty(value = "还款方式")
    private Integer repaymode;

    @Column(name = "RepayFreqcy")
    @ApiModelProperty(value = "还款频率")
    private String repayfreqcy;

    @Column(name = "RepayPrd")
    @ApiModelProperty(value = "还款期数")
    private Integer repayprd;

    @Column(name = "ApplyBusiDist")
    @ApiModelProperty(value = "业务申请地行政区划代码")
    private String applybusidist;

    @Column(name = "GuarMode")
    @ApiModelProperty(value = "担保方式")
    private Integer guarmode;

    @Column(name = "OthRepyGuarWay")
    @ApiModelProperty(value = "其他还款保证方式")
    private Integer othrepyguarway;

    @Column(name = "AssetTrandFlag")
    @ApiModelProperty(value = "资产转让标志")
    private Integer assettrandflag;

    @Column(name = "FundSou")
    @ApiModelProperty(value = "业务经营类型")
    private Integer fundsou;

    @Column(name = "LoanForm")
    @ApiModelProperty(value = "贷款发放形式")
    private Integer loanform;

    @Column(name = "CreditID")
    @ApiModelProperty(value = "卡片标识号")
    private String creditid;

    @Column(name = "LoanConCode")
    @ApiModelProperty(value = "贷款合同编号")
    private String loanconcode;

    @Column(name = "FirstHouLoanFlag")
    @ApiModelProperty(value = "是否为首套住房贷款")
    private String firsthouloanflag;

    @Column(name = "UploadStatus")
    @ApiModelProperty(value = "上报状态")
    private Integer uploadstatus;

    @Column(name = "UploadFlag")
    @ApiModelProperty(value = "上报标识")
    private Integer uploadflag;

    @Column(name = "create_time")
    @ApiModelProperty(value = "createTime")
    private Timestamp createTime;

    public void copy(BusInacctinfAcctbsinfsgmt source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}