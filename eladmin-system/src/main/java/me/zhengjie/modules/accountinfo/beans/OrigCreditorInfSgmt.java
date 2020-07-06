package me.zhengjie.modules.accountinfo.beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

@Data
@XmlAccessorType(XmlAccessType.FIELD)
//XML文件中的根标识  
@XmlRootElement(name = "OrigCreditorInfSgmt")
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = { "InitCredName", "InitCredOrgNm","OrigDbtCate","InitRpySts"
})
public class OrigCreditorInfSgmt implements Serializable{/**
	 * 
	 */
	private static final long serialVersionUID = 1829842100142005875L;
	    @ApiModelProperty(value = "初始债权人名称")
	    private String InitCredName;

	    @ApiModelProperty(value = "初始债权人机构代码")
	    private String InitCredOrgNm;

	    @ApiModelProperty(value = "原债务种类")
	    private Integer OrigDbtCate;

	    @ApiModelProperty(value = "债权转移时的还款状态")
	    private Integer InitRpySts;
}
