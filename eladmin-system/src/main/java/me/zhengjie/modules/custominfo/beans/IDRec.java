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
@XmlRootElement(name = "IDRec")  
@XmlType(propOrder = { "Alias", "OthIDType", "OthIDNum" })  
public class IDRec implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 638551516834757822L;
	
	    @ApiModelProperty(value = "姓名")
	    private String Alias;

	    @ApiModelProperty(value = "证件类型")
	    private String OthIDType;

	    @ApiModelProperty(value = "证件号码")
	    private String OthIDNum;

}
