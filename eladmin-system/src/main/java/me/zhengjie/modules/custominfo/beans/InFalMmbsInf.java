package me.zhengjie.modules.custominfo.beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * 家族关系信息记录
 * @author jiab-wang
 *
 */
@Data
@XmlAccessorType(XmlAccessType.FIELD)  
@XmlRootElement(name = "InFalMmbsInf")  
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = {   
   "InfRecType",   
   "Name",   
   "IDType",   
   "IDNum",   
   "FamMemName",   
   "FamMemCertType",
   "FamMemCertNum",
   "FamRel",
   "FamRelaAssFlag",
   "InfSurcCode",
   "RptDate"
})  
public class InFalMmbsInf implements Serializable{/**
	 * 
	 */
	private static final long serialVersionUID = 4042649430751901794L;

	    @ApiModelProperty(value = "信息记录类型")
	    private String InfRecType;

	    @ApiModelProperty(value = "A姓名")
	    private String Name;

	    @ApiModelProperty(value = "A证件类型")
	    private String IDType;

	    @ApiModelProperty(value = "A证件号码")
	    private String IDNum;

	    @ApiModelProperty(value = "B姓名")
	    private String FamMemName;

	    @ApiModelProperty(value = "B证件类型")
	    private String FamMemCertType;

	    @ApiModelProperty(value = "B证件号码")
	    private String FamMemCertNum;

	    @ApiModelProperty(value = "家族关系")
	    private String FamRel;

	    @ApiModelProperty(value = "家族关系有效标志")
	    private String FamRelaAssFlag;

	    @ApiModelProperty(value = "信息来源编码")
	    private String InfSurcCode;

	    @ApiModelProperty(value = "信息报告日期")
	    private String RptDate;
}
