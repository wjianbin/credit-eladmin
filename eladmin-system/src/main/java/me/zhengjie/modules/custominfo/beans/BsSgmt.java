package me.zhengjie.modules.custominfo.beans;


import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
@XmlAccessorType(XmlAccessType.FIELD)  
@XmlRootElement(name = "BsSgmt")  
@XmlType(propOrder = { "InfRecType", "Name", "IDType", "IDNum","InfSurcCode","RptDate","RptDateCode" ,"Cimoc","CustomerType"})  
public class BsSgmt implements Serializable{/**
	 * 
	 */
	private static final long serialVersionUID = 289889648101537472L;
	
    @ApiModelProperty(value = "信息记录类型")
    private String InfRecType;

    @ApiModelProperty(value = "姓名")
    private String Name;

    @ApiModelProperty(value = "证件类型")
    private String IDType;

    @ApiModelProperty(value = "证件号码")
    private String IDNum;

    @ApiModelProperty(value = "信息来源编码")
    private String InfSurcCode;

    @ApiModelProperty(value = "信息报告日期")
    private String RptDate;

    @ApiModelProperty(value = "报告时点说明代码")
    private String RptDateCode;

    @ApiModelProperty(value = "客户资料维护机构代码")
    private String Cimoc;

    @ApiModelProperty(value = "客户资料类型")
    private String CustomerType;
}
