package me.zhengjie.modules.custominfo.beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
/**
 * 个人证件有效期信息记录
 *
 */
@Data
@XmlAccessorType(XmlAccessType.FIELD)  
@XmlRootElement(name = "InIDEfctInf")  
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = {   
   "InfRecType",   
   "Name",   
   "IDType",   
   "IDNum",   
   "InfSurcCode",   
   "IDEfctDate",
   "IDDueDate",
   "IDOrgName",
   "IDDist",
   "Cimoc",
   "RptDate"
}) 
public class InIDEfctInf implements Serializable{/**
	 * 
	 */
	private static final long serialVersionUID = 4177383540981845760L;
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

	    @ApiModelProperty(value = "证件有效期起始日期")
	    private String IDEfctDate;

	    @ApiModelProperty(value = "证件有效期到期日期")
	    private String IDDueDate;

	    @ApiModelProperty(value = "证件签发机关名称")
	    private String IDOrgName;

	    @ApiModelProperty(value = "֤证件签发机关所在地行政区划")
	    private String IDDist;

	    @ApiModelProperty(value = "客户资料维护机构代码")
	    private String Cimoc;

	    @ApiModelProperty(value = "信息报告日期")
	    private String RptDate;
}
