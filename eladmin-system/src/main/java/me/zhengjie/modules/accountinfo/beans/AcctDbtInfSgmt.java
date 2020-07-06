package me.zhengjie.modules.accountinfo.beans;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
@XmlAccessorType(XmlAccessType.FIELD)
//XML文件中的根标识  
@XmlRootElement(name = "AcctDbtInfSgmt")
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = { "AcctStatus", "AcctBal","FiveCate","FiveCateAdjDate","RemRepPrd","RpyStatus","OverdPrd"
		,"TotOverd","LatRpyAmt","LatRpyDate","CloseDate"
})
public class AcctDbtInfSgmt implements Serializable{/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	    @ApiModelProperty(value = "账户状态")
	    private Integer AcctStatus;

	    @ApiModelProperty(value = "余额")
	    private BigDecimal AcctBal;

	    @ApiModelProperty(value = "五级分类")
	    private Integer FiveCate;

	    @ApiModelProperty(value = "五级分类认定日期")
	    private String FiveCateAdjDate;

	    @ApiModelProperty(value = "剩余还款期数")
	    private Integer RemRepPrd;

	    @ApiModelProperty(value = "当前还款状态")
	    private String RpyStatus;

	    @ApiModelProperty(value = "当前逾期期数")
	    private Integer OverdPrd;

	    @ApiModelProperty(value = "当前逾期总额")
	    private BigDecimal TotOverd;

	    @ApiModelProperty(value = "最近一次实际还款金额")
	    private BigDecimal LatRpyAmt;

	    @ApiModelProperty(value = "最近一次实际还款日期1")
	    private String LatRpyDate;

	    @ApiModelProperty(value = "账户关闭日期")
	    private String CloseDate;

}
