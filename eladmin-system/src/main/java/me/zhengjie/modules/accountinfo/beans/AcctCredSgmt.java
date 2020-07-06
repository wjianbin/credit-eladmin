package me.zhengjie.modules.accountinfo.beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
//授信额度信息段
@Data
@XmlAccessorType(XmlAccessType.FIELD)
//XML文件中的根标识  
@XmlRootElement(name = "AcctCredSgmt")
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = { "Mcc" })

public class AcctCredSgmt implements Serializable{/**
	 * 
	 */
	private static final long serialVersionUID = 4255267477224765516L;
    @ApiModelProperty(value = "授信协议标识码")
    private String Mcc;
}
