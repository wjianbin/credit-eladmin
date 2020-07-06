package me.zhengjie.modules.accountinfo.beans;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
//个人借贷账户信息记录基本信息段元素说明
@Data
@XmlAccessorType(XmlAccessType.FIELD)  
//XML文件中的根标识  
@XmlRootElement(name = "AcctBsInfSgmt")  
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = {   
     "BusiLines",   
     "BusiDtlLines",   
     "OpenDate","Cy","AcctCredLine","LoanAmt","Flag","DueDate","RepayMode",
     "RepayFreqcy","RepayPrd","ApplyBusiDist","GuarMode","OthRepyGuarWay","AssetTrandFlag","FundSou"
     ,"LoanForm","CreditID","LoanConCode","FirstHouLoanFlag"
}) 
public class AcctBsInfSgmt implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -2255763322954616994L;

    @ApiModelProperty(value = "借贷业务大类")
    private Integer BusiLines;

    @ApiModelProperty(value = "借贷业务种类细分")
    private Integer BusiDtlLines;

    @ApiModelProperty(value = "开户日期")
    private String OpenDate;

    @ApiModelProperty(value = "币种")
    private String Cy;

    @ApiModelProperty(value = "信用额度")
    private BigDecimal AcctCredLine;

    @ApiModelProperty(value = "借款金额")
    private BigDecimal LoanAmt;

    @ApiModelProperty(value = "分次放款标志")
    private Integer Flag;

    @ApiModelProperty(value = "到期日期")
    private String DueDate;

    @ApiModelProperty(value = "还款方式")
    private Integer RepayMode;

    @ApiModelProperty(value = "还款频率")
    private String RepayFreqcy;

    @ApiModelProperty(value = "还款期数")
    private Integer RepayPrd;

    @ApiModelProperty(value = "业务申请地行政区划代码")
    private String ApplyBusiDist;

    @ApiModelProperty(value = "担保方式")
    private Integer GuarMode;

    @ApiModelProperty(value = "其他还款保证方式")
    private Integer OthRepyGuarWay;

    @ApiModelProperty(value = "资产转让标志")
    private Integer AssetTrandFlag;

    @ApiModelProperty(value = "业务经营类型")
    private Integer FundSou;

    @ApiModelProperty(value = "贷款发放形式")
    private Integer LoanForm;

    @ApiModelProperty(value = "卡片标识号")
    private String CreditID;

    @ApiModelProperty(value = "贷款合同编号")
    private String LoanConCode;

    @ApiModelProperty(value = "是否为首套住房贷款")
    private String FirstHouLoanFlag;
}
