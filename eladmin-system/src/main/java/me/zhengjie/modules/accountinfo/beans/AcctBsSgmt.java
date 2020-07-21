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
@XmlRootElement(name = "AcctBsSgmt")  
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = {   
     "InfRecType",   
     "AcctType",   
     "AcctCode","RptDate","RptDateCode","Name","IDType","IDNum","MngmtOrgCode"
}) 
public class AcctBsSgmt implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = -5786284275725293827L;

    @ApiModelProperty(value = "信息记录类型")
    private Integer InfRecType;

    @ApiModelProperty(value = "账户类型")
    private String AcctType;

    @ApiModelProperty(value = "个人账户标识码")
    private String AcctCode;

    @ApiModelProperty(value = "信息报告日期")
    private String RptDate;

    @ApiModelProperty(value = "报告时点说明代码")
    private String RptDateCode;

    @ApiModelProperty(value = "姓名")
    private String Name;

    @ApiModelProperty(value = "证件类型")
    private Integer IDType;

    @ApiModelProperty(value = "证件号码")
    private String IDNum;

    @ApiModelProperty(value = "业务管理机构代码")
    private String MngmtOrgCode;
}
