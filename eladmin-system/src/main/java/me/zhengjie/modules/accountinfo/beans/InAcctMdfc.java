package me.zhengjie.modules.accountinfo.beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import lombok.Data;

//个人借贷账户按段更正请求记录
@Data
@XmlAccessorType(XmlAccessType.FIELD)
//XML文件中的根标识  
@XmlRootElement(name = "InAcctMdfc")
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = { "BsSgmt", "MdfcSgmt" })
public class InAcctMdfc implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 632710698664832162L;
	private BsSgmt BsSgmt;
	private MdfcSgmt MdfcSgmt;
}
