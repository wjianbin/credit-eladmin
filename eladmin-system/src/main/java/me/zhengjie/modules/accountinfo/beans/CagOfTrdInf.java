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
@XmlRootElement(name = "AcctSpecTrstDspnSgmt")  
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = {   
     "ChanTranType",   
     "TranDate","TranAmt","DueTranMon","DetInfo"}) 
public class CagOfTrdInf implements Serializable{/**
	 * 
	 */
	private static final long serialVersionUID = -6585461242355785755L;
	    @ApiModelProperty(value = "交易类型")
	    private Integer ChanTranType;

	    @ApiModelProperty(value = "交易日期")
	    private String TranDate;

	    @ApiModelProperty(value = "交易金额")
	    private BigDecimal TranAmt;

	    @ApiModelProperty(value = "到期日期变更月数")
	    private Integer DueTranMon;

	    @ApiModelProperty(value = "交易明细信息")
	    private String DetInfo;
}
