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
@Table(name="bus_inacctinf_acctmthlyblginfsgmt")
public class BusInacctinfAcctmthlyblginfsgmt implements Serializable {

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

    @Column(name = "Month")
    @ApiModelProperty(value = "月份")
    private String month;

    @Column(name = "SettDate")
    @ApiModelProperty(value = "结算/应还款日")
    private String settdate;

    @Column(name = "AcctStatus")
    @ApiModelProperty(value = "账户状态")
    private Integer acctstatus;

    @Column(name = "AcctBal")
    @ApiModelProperty(value = "余额")
    private BigDecimal acctbal;

    @Column(name = "NotIsuBal")
    @ApiModelProperty(value = "未出单的大额专项分期余额")
    private BigDecimal notisubal;

    @Column(name = "RemRepPrd")
    @ApiModelProperty(value = "剩余还款期数")
    private Integer remrepprd;

    @Column(name = "FiveCate")
    @ApiModelProperty(value = "五级分类")
    private Integer fivecate;

    @Column(name = "FiveCateAdjDate")
    @ApiModelProperty(value = "五级分类认定日期")
    private String fivecateadjdate;

    @Column(name = "RpyStatus")
    @ApiModelProperty(value = "当前还款状态")
    private Integer rpystatus;

    @Column(name = "RpyPrct")
    @ApiModelProperty(value = "实际还款百分比")
    private Integer rpyprct;

    @Column(name = "OverdPrd")
    @ApiModelProperty(value = "当前逾期期数")
    private Integer overdprd;

    @Column(name = "TotOverd")
    @ApiModelProperty(value = "当前逾期总额")
    private BigDecimal totoverd;

    @Column(name = "Oved31_60Princ")
    @ApiModelProperty(value = "逾期31-60天未归还本金")
    private BigDecimal oved3160princ;

    @Column(name = "Oved61_90Princ")
    @ApiModelProperty(value = "逾期61-90天未归还本金")
    private BigDecimal oved6190princ;

    @Column(name = "Oved91_180Princ")
    @ApiModelProperty(value = "逾期91-180天未归还本金")
    private BigDecimal oved91180princ;

    @Column(name = "OvedPrinc180")
    @ApiModelProperty(value = "逾期180天以上未归还本金")
    private BigDecimal ovedprinc180;

    @Column(name = "OvedrawBaOve180")
    @ApiModelProperty(value = "透支180天以上未还余额")
    private BigDecimal ovedrawbaove180;

    @Column(name = "CurRpyAmt")
    @ApiModelProperty(value = "本月应还款金额")
    private BigDecimal currpyamt;

    @Column(name = "ActRpyAmt")
    @ApiModelProperty(value = "本月实际还款金额")
    private BigDecimal actrpyamt;

    @Column(name = "LatRpyDate")
    @ApiModelProperty(value = "最近一次实际还款日期")
    private String latrpydate;

    @Column(name = "CloseDate")
    @ApiModelProperty(value = "账户关闭日期")
    private String closedate;

    @Column(name = "UploadStatus")
    @ApiModelProperty(value = "上报状态")
    private Integer uploadstatus;

    @Column(name = "UploadFlag")
    @ApiModelProperty(value = "上报标识")
    private Integer uploadflag;

    @Column(name = "create_time")
    @ApiModelProperty(value = "createTime")
    private Timestamp createTime;

    public void copy(BusInacctinfAcctmthlyblginfsgmt source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}