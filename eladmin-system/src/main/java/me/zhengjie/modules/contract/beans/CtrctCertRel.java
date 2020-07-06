package me.zhengjie.modules.contract.beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

//共同受信人信息段--共同受信人信息
@Data
@XmlAccessorType(XmlAccessType.FIELD)  
//XML文件中的根标识  
@XmlRootElement(name = "InCtrctInf")  
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = {   
   "BrerType",   
   "CertRelName","CertRelIDType","CertRelIDNum"
})
public class CtrctCertRel implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = -1699122263028638384L;

	@ApiModelProperty(value = "共同受信人身份类别")
    private Integer BrerType;

    @ApiModelProperty(value = "共同受信人名称")
    private String CertRelName;

    @ApiModelProperty(value = "共同受信人身份标识类型")
    private Integer CertRelIDType;

    @ApiModelProperty(value = "共同受信人身份标识号码")
    private String CertRelIDNum;

}
