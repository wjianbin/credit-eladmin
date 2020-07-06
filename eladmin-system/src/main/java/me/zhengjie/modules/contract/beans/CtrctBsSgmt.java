package me.zhengjie.modules.contract.beans;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
/**
 * 基础段
 *
 */
@Data
@XmlAccessorType(XmlAccessType.FIELD)  
//XML文件中的根标识  
@XmlRootElement(name = "InCtrctInf")  
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = {   
     "InfRecType",   
     "ContractCode",   
     "RptDate",
     "RptDateCode","Name","IDType","IDNum","MngmtOrgCode"
}) 
public class CtrctBsSgmt {
    @ApiModelProperty(value = "信息记录类型")
    private Integer InfRecType;

    @ApiModelProperty(value = "授信协议标识码")
    private String ContractCode;

    @ApiModelProperty(value = "信息报告日期")
    private String RptDate;

    @ApiModelProperty(value = "报告时点说明代码")
    private Integer RptDateCode;

    @ApiModelProperty(value = "姓名")
    private String Name;

    @ApiModelProperty(value = "证件类型")
    private Integer IDType;

    @ApiModelProperty(value = "证件号码")
    private String IDNum;

    @ApiModelProperty(value = "业务管理机构代码")
    private String MngmtOrgCode;
}
