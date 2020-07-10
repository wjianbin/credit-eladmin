package me.zhengjie.modules.custominfo.beans;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
/**
 * 个人证件整合信息记录
 *
 */
@Data
@XmlAccessorType(XmlAccessType.FIELD)  
@XmlRootElement(name = "InCtfItgInf")  
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = {   
   "InfRecType",   
   "Name",   
   "IDType",   
   "IDNum",   
   "OthName",   
   "OthIDType",
   "OthIDNum",
   "OthAssFlg",
   "InfSurcCode",
   "RptDate"
})  
public class InCtfItgInf implements Serializable{/**
	 * 
	 */
	private static final long serialVersionUID = 5662520099489995269L;
	    @ApiModelProperty(value = "信息记录类型")
	    private String InfRecType;

	    @ApiModelProperty(value = "姓名")
	    private String Name;

	    @ApiModelProperty(value = "证件类型")
	    private String IDType;

	    @ApiModelProperty(value = "证件号码")
	    private String IDNum;

	    @ApiModelProperty(value = "其他姓名")
	    private String OthName;

	    @ApiModelProperty(value = "其他证件类型")
	    private String OthIDType;

	    @ApiModelProperty(value = "其他证件号码")
	    private String OthIDNum;

	    @ApiModelProperty(value = "证件关联关系有效标志")
	    private String OthAssFlg;

	    @ApiModelProperty(value = "信息来源编码")
	    private String InfSurcCode;

	    @ApiModelProperty(value = "信息报告日期")
	    private String RptDate;

}
