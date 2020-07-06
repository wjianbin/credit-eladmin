package me.zhengjie.modules.contract.beans;

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
@XmlRootElement(name = "BsSgmt")  
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = {   
     "InfRecType",   
     "ModRecCode","RptDate","MdfcSgmtCode"
})
public class InCtrctMdfcBsSgmt implements Serializable{
	    /**
	 * 
	 */
	private static final long serialVersionUID = 7723839561037417707L;

		@ApiModelProperty(value = "信息记录类型")
	    private String InfRecType;

	    @ApiModelProperty(value = "待更正业务标识码")
	    private String ModRecCode;

	    @ApiModelProperty(value = "信息报告日期")
	    private String RptDate;

	    @ApiModelProperty(value = "待更正段段标")
	    private String MdfcSgmtCode;
}
