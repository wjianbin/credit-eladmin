package me.zhengjie.modules.contract.beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import lombok.Data;

@Data
@XmlAccessorType(XmlAccessType.FIELD)  
//XML文件中的根标识  
@XmlRootElement(name = "MdfcSgmt")  
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = {   
     "CtrctBsSgmt",   
     "CtrctCertRelSgmt",   
     "CreditLimSgmt"
}) 
public class MdfcSgmt implements Serializable{/**
	 * 
	 */
	private static final long serialVersionUID = 356720833312102495L;
	private CtrctBsSgmt CtrctBsSgmt;
	private CtrctCertRelSgmt CtrctCertRelSgmt;
	private CreditLimSgmt CreditLimSgmt;
}
