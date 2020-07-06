package me.zhengjie.modules.accountinfo.beans;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
//大额专项分期信息段
@Data
@XmlAccessorType(XmlAccessType.FIELD)
//XML文件中的根标识  
@XmlRootElement(name = "SpecPrdSgmt")
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = { "SpecLine", "SpecEfctDate","SpecEndDate","UsedInstAmt"
})
public class SpecPrdSgmt implements Serializable{/**
	 * 
	 */
	private static final long serialVersionUID = -8065106248393893759L;
	    @ApiModelProperty(value = "大额专项分期额度")
	    private BigDecimal SpecLine;

	    @ApiModelProperty(value = "专项分期生效日期")
	    private String SpecEfctDate;

	    @ApiModelProperty(value = "专项分期到期日期")
	    private String SpecEndDate;

	    @ApiModelProperty(value = "已用分期金额")
	    private BigDecimal UsedInstAmt;
}
