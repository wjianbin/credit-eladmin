package me.zhengjie.modules.accountinfo.beans;

import java.io.Serializable;
import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
//相关还款责任人段
@Data
@XmlAccessorType(XmlAccessType.FIELD)
//XML文件中的根标识  
@XmlRootElement(name = "RltRepymtInfSgm")
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = { "RltRepymtNm", "RltRepymtInf"})

public class RltRepymtInfSgm implements Serializable{
	    /**
	 * 
	 */
	private static final long serialVersionUID = -5503368108710408481L;

		@ApiModelProperty(value = "责任人个数")
	    private Integer RltRepymtNm;
	 
	    private List<RltRepymtInf> RltRepymtInf;

}
