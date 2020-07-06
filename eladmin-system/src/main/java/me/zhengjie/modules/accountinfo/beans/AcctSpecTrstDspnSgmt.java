package me.zhengjie.modules.accountinfo.beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import lombok.Data;

@Data
@XmlAccessorType(XmlAccessType.FIELD)  
//XML文件中的根标识  
@XmlRootElement(name = "AcctSpecTrstDspnSgmt")  
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = {   
     "CagOfTrdNm",   
     "CagOfTrdInf"}) 
public class AcctSpecTrstDspnSgmt implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = -6429094871095615923L;
	private String CagOfTrdNm;
    private CagOfTrdInf CagOfTrdInf;
}
