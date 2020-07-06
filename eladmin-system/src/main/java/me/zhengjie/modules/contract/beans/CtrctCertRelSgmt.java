package me.zhengjie.modules.contract.beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
//共同受信人信息段
@Data
@XmlAccessorType(XmlAccessType.FIELD)  
//XML文件中的根标识  
@XmlRootElement(name = "InCtrctInf")  
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = {   
     "BrerNm",   
     "CtrctCertRel"
}) 
public class CtrctCertRelSgmt implements Serializable{
	    /**
	 * 
	 */
	private static final long serialVersionUID = 4462397797075683911L;
		@ApiModelProperty(value = "共同受信人个数")
	    private Integer BrerNm;
	    private CtrctCertRel CtrctCertRel;
}
