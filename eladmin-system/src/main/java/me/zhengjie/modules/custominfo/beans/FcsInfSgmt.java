package me.zhengjie.modules.custominfo.beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * 基本概况段
 * @author Administrator
 *
 */
@Data
@XmlAccessorType(XmlAccessType.FIELD)  
@XmlRootElement(name = "FcsInfSgmt")  
@XmlType(propOrder = { "Sex", "DOB", "Nation", "HouseAdd","HhDist","CellPhone","Email","FcsInfoUpDate" })  
public class FcsInfSgmt implements Serializable{
	  /**
	 * 
	 */
	private static final long serialVersionUID = -7362360734172611996L;

	@ApiModelProperty(value = "性别")
	    private Integer Sex;

	    @ApiModelProperty(value = "出生日期")
	    private String DOB;

	    @ApiModelProperty(value = "国籍")
	    private String Nation;

	    @ApiModelProperty(value = "户籍地址")
	    private String HouseAdd;

	    @ApiModelProperty(value = "户籍所在地行政区划")
	    private String HhDist;

	    @ApiModelProperty(value = "手机号码")
	    private String CellPhone;

	    @ApiModelProperty(value = "电子邮箱")
	    private String Email;

	    @ApiModelProperty(value = "信息更新日期")
	    private String FcsInfoUpDate;
}
