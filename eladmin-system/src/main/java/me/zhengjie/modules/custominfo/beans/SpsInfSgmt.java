package me.zhengjie.modules.custominfo.beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * 
 * 婚姻段
 * @author Administrator
 *
 */
@Data
@XmlAccessorType(XmlAccessType.FIELD)  
@XmlRootElement(name = "SpsInfSgmt")  
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = {   
   "MariStatus",   
   "SpoName",   
   "SpoIDType",   
   "SpoIDNum",   
   "SpoTel",   
   "SpsCmpyNm",
   "SpsInfoUpDate"
})  
public class SpsInfSgmt implements Serializable{/**
	 * 
	 */
	private static final long serialVersionUID = 4916811161400228523L;
	  

	    @ApiModelProperty(value = "婚姻状况")
	    private String MariStatus;

	    @ApiModelProperty(value = "配偶姓名")
	    private String SpoName;

	    @ApiModelProperty(value = "配偶证件类型")
	    private String SpoIDType;

	    @ApiModelProperty(value = "配偶证件号码")
	    private String SpoIDNum;

	    @ApiModelProperty(value = "配偶联系电话")
	    private String SpoTel;

	    @ApiModelProperty(value = "配偶工作单位")
	    private String SpsCmpyNm;

	    @ApiModelProperty(value = "信息更新日期")
	    private String SpsInfoUpDate;
}
