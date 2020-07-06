package me.zhengjie.modules.custominfo.beans;
/**
 * 个人证件整合信息记录
 *
 */

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
/**
 * 个人基本信息整笔删除请求记录
 *
 */
@Data
@XmlAccessorType(XmlAccessType.FIELD)  
@XmlRootElement(name = "InBsInfDlt")  
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = {   
   "InfRecType",   
   "Name",   
   "IDType",   
   "IDNum",   
   "InfSurcCode"
})  
public class InBsInfDlt implements Serializable{
	    /**
	 * 
	 */
	private static final long serialVersionUID = -6036047622285685753L;

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

}
