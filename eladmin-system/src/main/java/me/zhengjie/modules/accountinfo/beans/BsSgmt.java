package me.zhengjie.modules.accountinfo.beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import lombok.Data;

//基础段
@Data
@XmlAccessorType(XmlAccessType.FIELD)
//XML文件中的根标识  
@XmlRootElement(name = "BsSgmt")
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = { "InfRecType", "ModRecCode", "RptDate", "AcctType", "MdfcSgmtCode" })
public class BsSgmt implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -8710801968984529490L;
	private String InfRecType;
	private String ModRecCode;
	private String RptDate;
	private String AcctType;
	private String MdfcSgmtCode;
}
