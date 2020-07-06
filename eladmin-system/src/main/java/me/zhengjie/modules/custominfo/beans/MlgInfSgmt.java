package me.zhengjie.modules.custominfo.beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * 通讯地址段
 * @author Administrator
 *
 */
@Data
@XmlAccessorType(XmlAccessType.FIELD)  
@XmlRootElement(name = "MlgInfSgmt")  
@XmlType(propOrder = { "MailAddr", "MailPc", "MailDist", "MlgInfoUpDate" })  

public class MlgInfSgmt implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 6901253953238950083L;
	    @ApiModelProperty(value = "通讯地址")
	    private String MailAddr;

	    @ApiModelProperty(value = "通讯地邮编")
	    private String MailPc;

	    @ApiModelProperty(value = "通讯地行政区划")
	    private String MailDist;

	    @ApiModelProperty(value = "信息更新日期")
	    private String MlgInfoUpDate;
}
