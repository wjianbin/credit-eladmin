package me.zhengjie.modules.custominfo.beans;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

import lombok.Data;

@Data
@XmlAccessorType(XmlAccessType.FIELD)  
//XML文件中的根标识  
@XmlRootElement(name = "InBasInf")  
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = {   
     "BsSgmt",   
     "IDSgmt",   
     "FcsInfSgmt",   
     "SpsInfSgmt",   
     "EduInfSgmt",   
     "OctpnInfSgmt",
     "RedncInfSgmt",
     "MlgInfSgmt",
     "IncInfSgmt"
})  
public class InBasInf implements Serializable{/**
	 * 
	 */
	private static final long serialVersionUID = 6506119231608258341L;
	private BsSgmt BsSgmt ;//基础段 BsSgmt 
	private IDSgmt IDSgmt;//其他标识段 IDSgmt 
	private FcsInfSgmt FcsInfSgmt;//基本概况段 FcsInfSgmt 
	private SpsInfSgmt SpsInfSgmt;//婚姻信息段 SpsInfSgmt 
	private EduInfSgmt EduInfSgmt;//教育信息段 EduInfSgmt 
	private OctpnInfSgmt OctpnInfSgmt;//职业信息段 OctpnInfSgmt 
	private RedncInfSgmt RedncInfSgmt;//居住地址段 RedncInfSgmt 
	private MlgInfSgmt MlgInfSgmt;//通讯地址段 MlgInfSgmt 
	private IncInfSgmt IncInfSgmt;//收入信息段 IncInfSgmt 
}
