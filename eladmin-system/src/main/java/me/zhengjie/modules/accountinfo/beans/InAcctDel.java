package me.zhengjie.modules.accountinfo.beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

//-个人借贷账户按段删除请求记录
@Data
@XmlAccessorType(XmlAccessType.FIELD)
//XML文件中的根标识  
@XmlRootElement(name = "AcctSpecTrstDspnSgmt")
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = { "InfRecType", "DelRecCode", "DelSgmtCode", "DelStartDate", "DelEndDate" })
public class InAcctDel implements Serializable {
	/**
	* 
	*/
	private static final long serialVersionUID = -5816361618676057989L;
	@ApiModelProperty(value = "信息记录类型")
	private Integer InfRecType;

	@ApiModelProperty(value = "待删除业务标识码")
	private String DelRecCode;

	@ApiModelProperty(value = "待删除段段标")
	private String DelSgmtCode;

	@ApiModelProperty(value = "待删除起始日期")
	private String DelStartDate;

	@ApiModelProperty(value = "待删除结束日期")
	private String DelEndDate;
}
