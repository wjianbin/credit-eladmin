package me.zhengjie.modules.custominfo.beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * 职业信息段
 * @author Administrator
 *
 */
@Data
@XmlAccessorType(XmlAccessType.FIELD)  
@XmlRootElement(name = "OctpnInfSgmt")  
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = {   
   "EmpStatus",   
   "CpnName",   
   "CpnType",   
   "Industry",   
   "CpnAddr",   
   "CpnPc",
   "CpnDist",
   "CpnTEL",
   "Occupation",
   "Title",
   "TechTitle",
   "WorkStartDate",
   "OctpnInfoUpDate"
})  
public class OctpnInfSgmt implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 4637426058669279424L;
	    @ApiModelProperty(value = "就业状况")
	    private String EmpStatus;

	    @ApiModelProperty(value = "单位名称")
	    private String CpnName;

	    @ApiModelProperty(value = "单位性质")
	    private String CpnType;

	    @ApiModelProperty(value = "单位所属行业")
	    private String Industry;

	    @ApiModelProperty(value = "单位详细地址")
	    private String CpnAddr;

	    @ApiModelProperty(value = "单位所在地邮编")
	    private String CpnPc;

	    @ApiModelProperty(value = "单位所在地行政区划")
	    private String CpnDist;

	    @ApiModelProperty(value = "单位电话")
	    private String CpnTEL;

	    @ApiModelProperty(value = "职业")
	    private String Occupation;

	    @ApiModelProperty(value = "职务")
	    private String Title;

	    @ApiModelProperty(value = "职称")
	    private String TechTitle;

	    @ApiModelProperty(value = "本单位工作起始年份")
	    private String WorkStartDate;

	    @ApiModelProperty(value = "信息更新日期")
	    private String OctpnInfoUpDate;

	 
}
