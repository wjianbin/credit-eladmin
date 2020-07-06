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
@XmlRootElement(name = "MotgaCltalCtrctInfSgmt")
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = { "CcNm", "CccInf"
})
public class MotgaCltalCtrctInfSgmt implements Serializable{/**
	 * 
	 */
	private static final long serialVersionUID = -1126798529930691365L;
	    @ApiModelProperty(value = "抵质押合同个数")
	    private Integer CcNm;
	    private CccInf CccInf;
}
