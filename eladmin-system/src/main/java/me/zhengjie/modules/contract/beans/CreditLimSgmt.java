package me.zhengjie.modules.contract.beans;

import java.math.BigDecimal;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
@XmlAccessorType(XmlAccessType.FIELD)  
//XML文件中的根标识  
@XmlRootElement(name = "InCtrctInf")  
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = {   
     "CreditLimType",   
     "LimLoopFlg",   
     "CreditLim","Cy","ConEffDate","ConExpDate","ConStatus","CreditRest","CreditRestCode"
}) 
public class CreditLimSgmt {
	    @ApiModelProperty(value = "授信额度类型")
	    private Integer CreditLimType;

	    @ApiModelProperty(value = "额度循环标志")
	    private Integer LimLoopFlg;

	    @ApiModelProperty(value = "授信额度")
	    private BigDecimal CreditLim;

	    @ApiModelProperty(value = "币种")
	    private String Cy;

	    @ApiModelProperty(value = "额度生效日期")
	    private String ConEffDate;

	    @ApiModelProperty(value = "额度到期日期")
	    private String ConExpDate;

	    @ApiModelProperty(value = "额度状态")
	    private Integer ConStatus;

	    @ApiModelProperty(value = "授信限额")
	    private BigDecimal CreditRest;

	    @ApiModelProperty(value = "授信限额编号")
	    private String CreditRestCode;
}
