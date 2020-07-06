package me.zhengjie.modules.custominfo.beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * 居住地址段
 * @author Administrator
 *
 */
@Data 
@XmlAccessorType(XmlAccessType.FIELD)  
@XmlRootElement(name = "RedncInfSgmt")  
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = {   
   "ResiStatus",   
   "ResiAddr",   
   "ResiPc",   
   "ResiDist",   
   "HomeTel",   
   "ResiInfoUpDate"
})  
public class RedncInfSgmt implements  Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -2451307312356085349L;
	    @ApiModelProperty(value = "居住状况")
	    private String ResiStatus;

	    @ApiModelProperty(value = "居住地详细地址")
	    private String ResiAddr;

	    @ApiModelProperty(value = "居住地邮编")
	    private String ResiPc;

	    @ApiModelProperty(value = "居住地行政区划")
	    private String ResiDist;

	    @ApiModelProperty(value = "住宅电话")
	    private String HomeTel;

	    @ApiModelProperty(value = "信息更新日期")
	    private String ResiInfoUpDate;
}
