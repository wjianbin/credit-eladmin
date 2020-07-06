package me.zhengjie.modules.custominfo.beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * 教育信息段
 * @author Administrator
 *
 */
@Data
@XmlAccessorType(XmlAccessType.FIELD)  
@XmlRootElement(name = "EduInfSgmt")  
@XmlType(propOrder = { "EduLevel", "AcaDegree", "EduInfoUpDate"})  
public class EduInfSgmt implements Serializable{

	    /**
	 * 
	 */
	private static final long serialVersionUID = -136572910866906653L;

		@ApiModelProperty(value = "学历")
	    private String EduLevel;

	    @ApiModelProperty(value = "学位")
	    private String AcaDegree;

	    @ApiModelProperty(value = "信息更新日期")
	    private String EduInfoUpDate;
}
