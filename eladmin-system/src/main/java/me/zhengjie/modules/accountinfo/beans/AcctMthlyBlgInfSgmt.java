package me.zhengjie.modules.accountinfo.beans;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
//月度表现信息段
@Data
@XmlAccessorType(XmlAccessType.FIELD)
//XML文件中的根标识  
@XmlRootElement(name = "AcctMthlyBlgInfSgmt")
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = { "Month", "SettDate",
		"AcctStatus", "AcctBal",
		"NotIsuBal", "RemRepPrd",
		"FiveCate", "FiveCateAdjDate",
		"RpyStatus", "RpyPrct",
		"OverdPrd", "TotOverd",
		"Oved31_60Princ", "Oved61_90Princ",
		"Oved91_180Princ", "OvedPrinc180",
		"OvedrawBaOve180", "CurRpyAmt",
		"ActRpyAmt", "LatRpyDate",
		"CloseDate"
})
public class AcctMthlyBlgInfSgmt implements Serializable{
	 /**
	 * 
	 */
	private static final long serialVersionUID = -7223420501556082174L;

	    @ApiModelProperty(value = "月份")
	    private String Month;

	    @ApiModelProperty(value = "结算/应还款日")
	    private String SettDate;

	    @ApiModelProperty(value = "账户状态")
	    private Integer AcctStatus;

	    @ApiModelProperty(value = "余额")
	    private BigDecimal AcctBal;

	    @ApiModelProperty(value = "未出单的大额专项分期余额")
	    private BigDecimal NotIsuBal;

	    @ApiModelProperty(value = "剩余还款期数")
	    private Integer RemRepPrd;

	    @ApiModelProperty(value = "五级分类")
	    private Integer FiveCate;

	    @ApiModelProperty(value = "五级分类认定日期")
	    private String FiveCateAdjDate;

	    @ApiModelProperty(value = "当前还款状态")
	    private Integer RpyStatus;

	    @ApiModelProperty(value = "实际还款百分比")
	    private Integer RpyPrct;

	    @ApiModelProperty(value = "当前逾期期数")
	    private Integer OverdPrd;

	    @ApiModelProperty(value = "当前逾期总额")
	    private BigDecimal TotOverd;

	    @ApiModelProperty(value = "逾期31-60天未归还本金")
	    private BigDecimal Oved31_60Princ;

	    @ApiModelProperty(value = "逾期61-90天未归还本金")
	    private BigDecimal Oved61_90Princ;

	    @ApiModelProperty(value = "逾期91-180天未归还本金")
	    private BigDecimal Oved91_180Princ;

	    @ApiModelProperty(value = "逾期180天以上未归还本金")
	    private BigDecimal OvedPrinc180;

	    @ApiModelProperty(value = "透支180天以上未还余额")
	    private BigDecimal OvedrawBaOve180;

	    @ApiModelProperty(value = "本月应还款金额")
	    private BigDecimal CurRpyAmt;

	    @ApiModelProperty(value = "本月实际还款金额")
	    private BigDecimal ActRpyAmt;

	    @ApiModelProperty(value = "最近一次实际还款日期")
	    private String LatRpyDate;

	    @ApiModelProperty(value = "账户关闭日期")
	    private String CloseDate;
}
