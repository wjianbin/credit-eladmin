package me.zhengjie.modules.custominfo.beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * -收入信息段
 * @author Administrator
 *
 */
@Data
@XmlAccessorType(XmlAccessType.FIELD)  
@XmlRootElement(name = "IncInfSgmt")  
@XmlType(propOrder = { "AnnlInc", "TaxIncome", "IncInfoUpDate" })  

public class IncInfSgmt implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 5531717492605381617L;
	    @ApiModelProperty(value = "自报年收入")
	    private String AnnlInc;

	    @ApiModelProperty(value = "纳税年收入")
	    private String TaxIncome;

	    @ApiModelProperty(value = "信息更新日期")
	    private String IncInfoUpDate;

}
