package me.zhengjie.modules.accountinfo.beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
/// 个人借贷账户特殊事件说明记录元素说明
@Data
@XmlAccessorType(XmlAccessType.FIELD)  
//XML文件中的根标识  
@XmlRootElement(name = "InSpcEvtDscInf")  
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = {   
     "InfRecType",   
     "AcctCode",   
     "OpetnType","Month","Flag","RptDate"
}) 
public class InSpcEvtDscInf implements Serializable{/**
	 * 
	 */
	private static final long serialVersionUID = 8617440958438040456L;
	    @ApiModelProperty(value = "信息记录类型")
	    private Integer InfRecType;

	    @ApiModelProperty(value = "账户标识码")
	    private String AcctCode;

	    @ApiModelProperty(value = "事件类型")
	    private Integer OpetnType;

	    @ApiModelProperty(value = "发生月份")
	    private String Month;

	    @ApiModelProperty(value = "生效标志")
	    private Integer Flag;

	    @ApiModelProperty(value = "信息报告日期")
	    private String RptDate;
}
