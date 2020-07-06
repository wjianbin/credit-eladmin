package me.zhengjie.modules.accountinfo.beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
@XmlAccessorType(XmlAccessType.FIELD)
//XML文件中的根标识  
@XmlRootElement(name = "CccInf")
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = { "Ccc"})
public class CccInf implements Serializable{/**
	 * 
	 */
	private static final long serialVersionUID = 5684067607729021023L;
    @ApiModelProperty(value = "抵（质）押合同标识码")
    private String Ccc;
}
