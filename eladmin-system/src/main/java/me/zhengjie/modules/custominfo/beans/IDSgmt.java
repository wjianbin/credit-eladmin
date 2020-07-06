package me.zhengjie.modules.custominfo.beans;

import java.io.Serializable;
import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
@XmlAccessorType(XmlAccessType.FIELD)  
@XmlRootElement(name = "IDSgmt")  
@XmlType(propOrder = { "IDNm", "IDRec", "IDInfoUpDate" })  
public class IDSgmt implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -1395043083271405688L;
	
	    @ApiModelProperty(value = "证件数量")
	    private String IDNm;
	    private List<IDRec> IDRec;
	    @ApiModelProperty(value = "信息更新日期")
	    private String IDInfoUpDate;
}
