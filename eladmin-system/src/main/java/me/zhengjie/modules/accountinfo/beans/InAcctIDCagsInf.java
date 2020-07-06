package me.zhengjie.modules.accountinfo.beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

//个人借贷账户标识变更请求记录
@Data
@XmlAccessorType(XmlAccessType.FIELD)  
//XML文件中的根标识  
@XmlRootElement(name = "InAcctIDCagsInf")  
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = {   
     "InfRecType",   
     "OdBnesCode","NwBnesCode"}) 
public class InAcctIDCagsInf implements Serializable{/**
	 * 
	 */
	private static final long serialVersionUID = 745114219578926870L;
	    @ApiModelProperty(value = "信息记录类型")
	    private Integer InfRecType;

	    @ApiModelProperty(value = "原业务标识码")
	    private String OdBnesCode;

	    @ApiModelProperty(value = "新业务标识码-")
	    private String NwBnesCode;
}
