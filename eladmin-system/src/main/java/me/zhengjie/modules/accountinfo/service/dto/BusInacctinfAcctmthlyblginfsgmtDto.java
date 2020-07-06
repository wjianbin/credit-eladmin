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
public class BusInacctinfAcctmthlyblginfsgmtDto implements Serializable {

    /** 防止精度丢失 */
    @JsonSerialize(using= ToStringSerializer.class)
    private Long id;

    /** 借据编号 */
    private String accloanid;

    /** 对应业务操作的主键 */
    private Long busId;

    /** 月份 */
    private String month;

    /** 结算/应还款日 */
    private String settdate;

    /** 账户状态 */
    private Integer acctstatus;

    /** 余额 */
    private BigDecimal acctbal;

    /** 未出单的大额专项分期余额 */
    private BigDecimal notisubal;

    /** 剩余还款期数 */
    private Integer remrepprd;

    /** 五级分类 */
    private Integer fivecate;

    /** 五级分类认定日期 */
    private String fivecateadjdate;

    /** 当前还款状态 */
    private Integer rpystatus;

    /** 实际还款百分比 */
    private Integer rpyprct;

    /** 当前逾期期数 */
    private Integer overdprd;

    /** 当前逾期总额 */
    private BigDecimal totoverd;

    /** 逾期31-60天未归还本金 */
    private BigDecimal oved3160princ;

    /** 逾期61-90天未归还本金 */
    private BigDecimal oved6190princ;

    /** 逾期91-180天未归还本金 */
    private BigDecimal oved91180princ;

    /** 逾期180天以上未归还本金 */
    private BigDecimal ovedprinc180;

    /** 透支180天以上未还余额 */
    private BigDecimal ovedrawbaove180;

    /** 本月应还款金额 */
    private BigDecimal currpyamt;

    /** 本月实际还款金额 */
    private BigDecimal actrpyamt;

    /** 最近一次实际还款日期 */
    private String latrpydate;

    /** 账户关闭日期 */
    private String closedate;

    /** 上报状态 */
    private Integer uploadstatus;

    /** 上报标识 */
    private Integer uploadflag;

    private Timestamp createTime;
}