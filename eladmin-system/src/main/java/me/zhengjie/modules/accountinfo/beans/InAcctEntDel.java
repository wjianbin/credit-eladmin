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
@XmlRootElement(name = "InAcctEntDel")
//控制JAXB 绑定类中属性和字段的排序  
@XmlType(propOrder = { "InfRecType","DelRecCode" })
public class InAcctEntDel implements Serializable{
	    /**
	 * 
	 */
	private static final long serialVersionUID = -794472325211655608L;

		private Integer InfRecType;

	    private String DelRecCode;

}
