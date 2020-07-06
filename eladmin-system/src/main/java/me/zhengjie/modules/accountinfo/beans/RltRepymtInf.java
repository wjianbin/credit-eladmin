package me.zhengjie.modules.accountinfo.beans;

import java.io.Serializable;
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
@XmlRootElement(name = "RltRepymtInf")
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = { "InfoIDType", "ArlpName"
,"ArlpCertType","ArlpCertNum","ArlpType","ArlpAmt","WartySign","MaxGuarMcc"
})
public class RltRepymtInf implements Serializable{/**
	 * 
	 */
	private static final long serialVersionUID = -3973102811511909759L;
	    @ApiModelProperty(value = "责任人名称")
	    private String ArlpName;

	    @ApiModelProperty(value = "身份类别")
	    private Integer InfoIDType;

	    @ApiModelProperty(value = "责任人身份标识类型")
	    private Integer ArlpCertType;

	    @ApiModelProperty(value = "责任人身份标识号码")
	    private String ArlpCertNum;

	    @ApiModelProperty(value = "还款责任人类型")
	    private Integer ArlpType;

	    @ApiModelProperty(value = "还款责任金额")
	    private BigDecimal ArlpAmt;

	    @ApiModelProperty(value = "联保标志")
	    private Integer WartySign;

	    @ApiModelProperty(value = "保证合同编号")
	    private String MaxGuarMcc;
}
