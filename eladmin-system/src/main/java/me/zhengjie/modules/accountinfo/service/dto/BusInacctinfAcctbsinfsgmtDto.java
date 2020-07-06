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
import java.math.BigDecimal;
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
public class BusInacctinfAcctbsinfsgmtDto implements Serializable {

    /** 防止精度丢失 */
    @JsonSerialize(using= ToStringSerializer.class)
    private Long id;

    /** 借据编号 */
    private String accloanid;

    /** 对应业务操作的主键 */
    private Long busId;

    /** 借贷业务大类 */
    private Integer busilines;

    /** 借贷业务种类细分 */
    private Integer busidtllines;

    /** 开户日期 */
    private String opendate;

    /** 币种 */
    private String cy;

    /** 信用额度 */
    private BigDecimal acctcredline;

    /** 借款金额 */
    private BigDecimal loanamt;

    /** 分次放款标志 */
    private Integer flag;

    /** 到期日期 */
    private String duedate;

    /** 还款方式 */
    private Integer repaymode;

    /** 还款频率 */
    private String repayfreqcy;

    /** 还款期数 */
    private Integer repayprd;

    /** 业务申请地行政区划代码 */
    private String applybusidist;

    /** 担保方式 */
    private Integer guarmode;

    /** 其他还款保证方式 */
    private Integer othrepyguarway;

    /** 资产转让标志 */
    private Integer assettrandflag;

    /** 业务经营类型 */
    private Integer fundsou;

    /** 贷款发放形式 */
    private Integer loanform;

    /** 卡片标识号 */
    private String creditid;

    /** 贷款合同编号 */
    private String loanconcode;

    /** 是否为首套住房贷款 */
    private String firsthouloanflag;

    /** 上报状态 */
    private Integer uploadstatus;

    /** 上报标识 */
    private Integer uploadflag;

    private Timestamp createTime;
}