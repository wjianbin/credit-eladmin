package me.zhengjie.modules.contract.beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
//个人授信协议整笔删除请求记录
@Data
@XmlAccessorType(XmlAccessType.FIELD)  
//XML文件中的根标识  
@XmlRootElement(name = "InCtrctEntDel")  
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = {   
     "InfRecTpTp",   
     "DelRecCode"
}) 
public class InCtrctEntDel implements Serializable{/**
	 * 
	 */
	private static final long serialVersionUID = 2083939477713599842L;
	    @ApiModelProperty(value = "信息记录类型")
	    private Integer InfRecTpTp;

	    @ApiModelProperty(value = "待删除业务标识码")
	    private String DelRecCode;
}
