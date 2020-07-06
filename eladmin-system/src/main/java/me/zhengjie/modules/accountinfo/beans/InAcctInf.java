package me.zhengjie.modules.accountinfo.beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import lombok.Data;

@Data
@XmlAccessorType(XmlAccessType.FIELD)
//XML文件中的根标识  
@XmlRootElement(name = "InAcctInf")
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = { "AcctBsInfSgmt", "AcctBsInfSgmt", "RltRepymtInfSgm", "MotgaCltalCtrctInfSgmt", "AcctCredSgmt",
		"OrigCreditorInfSgmt", "AcctMthlyBlgInfSgmt", "SpecPrdSgmt", "AcctDbtInfSgmt", "AcctSpecTrstDspnSgmt" })
public class InAcctInf implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7863024405296903600L;
	private AcctBsSgmt AcctBsSgmt;// >基础段</AcctBsSgmt>
	private AcctBsInfSgmt AcctBsInfSgmt;// >基本信息段</AcctBsInfSgmt>
	private RltRepymtInfSgm RltRepymtInfSgm;// >相关还款责任人信息段</RltRepymtInfSgm>
	private MotgaCltalCtrctInfSgmt MotgaCltalCtrctInfSgmt;// >抵质押物信息段</MotgaCltalCtrctInfSgmt>
	private AcctCredSgmt AcctCredSgmt;// >授信额度信息段</AcctCredSgmt>
	private OrigCreditorInfSgmt OrigCreditorInfSgmt;// >初始债权说明段</OrigCreditorInfSgmt>
	private AcctMthlyBlgInfSgmt AcctMthlyBlgInfSgmt;// >月度表现信息段</AcctMthlyBlgInfSgmt>
	private SpecPrdSgmt SpecPrdSgmt;// >大额专项分期信息段</SpecPrdSgmt>
	private AcctDbtInfSgmt AcctDbtInfSgmt;// >非月度表现信息段</AcctDbtInfSgmt>
	private AcctSpecTrstDspnSgmt AcctSpecTrstDspnSgmt;// >特殊交易说明段</AcctSpecTrstDspnSgmt>

}
