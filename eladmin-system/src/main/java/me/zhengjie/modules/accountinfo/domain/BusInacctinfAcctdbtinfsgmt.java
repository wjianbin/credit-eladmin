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

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Timestamp;

import javax.persistence.*;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.bean.copier.CopyOptions;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
* @website https://el-admin.vip
* @description /
* @author jianb-wang
* @date 2020-07-01
**/
@Entity
@Data
@Table(name="bus_inacctinf_acctdbtinfsgmt")
public class BusInacctinfAcctdbtinfsgmt implements Serializable {

    /**
	 * 
	 */
	private static final long serialVersionUID = 6678509647052541291L;

	@Id
    @Column(name = "id")
    @ApiModelProperty(value = "id", hidden = true)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "AccLoanId")
    @ApiModelProperty(value = "借据编号")
    private String accloanid;

    @Column(name = "bus_id")
    @ApiModelProperty(value = "对应业务操作的主键")
    private Long busId;

    @Column(name = "AcctStatus")
    @ApiModelProperty(value = "账户状态")
    private Integer acctstatus;

    @Column(name = "AcctBal")
    @ApiModelProperty(value = "余额")
    private BigDecimal acctbal;

    @Column(name = "FiveCate")
    @ApiModelProperty(value = "五级分类")
    private Integer fivecate;

    @Column(name = "FiveCateAdjDate")
    @ApiModelProperty(value = "五级分类认定日期")
    private String fivecateadjdate;

    @Column(name = "RemRepPrd")
    @ApiModelProperty(value = "剩余还款期数")
    private Integer remrepprd;

    @Column(name = "RpyStatus")
    @ApiModelProperty(value = "当前还款状态")
    private String rpystatus;

    @Column(name = "OverdPrd")
    @ApiModelProperty(value = "当前逾期期数")
    private Integer overdprd;

    @Column(name = "TotOverd")
    @ApiModelProperty(value = "当前逾期总额")
    private BigDecimal totoverd;

    @Column(name = "LatRpyAmt")
    @ApiModelProperty(value = "最近一次实际还款金额")
    private BigDecimal latrpyamt;

    @Column(name = "LatRpyDate")
    @ApiModelProperty(value = "最近一次实际还款日期1")
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

    public void copy(BusInacctinfAcctdbtinfsgmt source){
        BeanUtil.copyProperties(source,this, CopyOptions.create().setIgnoreNullValue(true));
    }
}