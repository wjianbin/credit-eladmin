package me.zhengjie.modules.custominfo.beans;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.alibaba.fastjson.JSON;

import me.zhengjie.modules.custominfo.domain.BusCustomerRelationship;

public class Test {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		InBasInf inBasInf=new InBasInf();
		BsSgmt bsSgmt=new BsSgmt();
		bsSgmt.setIDType("100");
		bsSgmt.setName("张三");
		bsSgmt.setIDType("10");
		bsSgmt.setIDNum("110111198012011234");
		bsSgmt.setRptDate(new Timestamp(System.currentTimeMillis()).toString());
		bsSgmt.setRptDateCode("10");
		bsSgmt.setCimoc("B10111000H0001");
		bsSgmt.setCustomerType("11");
		inBasInf.setBsSgmt(bsSgmt);
		
		IDSgmt iDSgmt=new IDSgmt();
		iDSgmt.setIDNm("2");
		List<IDRec> IDRec=new ArrayList<>();
		IDRec IDRec1=new IDRec();
		IDRec1.setAlias("李四");
		IDRec1.setOthIDType("1");
		IDRec1.setOthIDNum("110111198012011234");
		IDRec IDRec2=new IDRec();
		IDRec2.setAlias("旺旺");
		IDRec2.setOthIDType("1");
		IDRec2.setOthIDNum("110111198012011234");
		IDRec.add(IDRec1);
		IDRec.add(IDRec2);
		iDSgmt.setIDRec(IDRec);
		iDSgmt.setIDInfoUpDate(new Timestamp(System.currentTimeMillis()).toString());
		inBasInf.setIDSgmt(iDSgmt);
		
		FcsInfSgmt FcsInfSgmt =new FcsInfSgmt();
		FcsInfSgmt.setSex(1);
		FcsInfSgmt.setDOB(new Timestamp(System.currentTimeMillis()).toString());
		FcsInfSgmt.setNation("CHN");
		FcsInfSgmt.setHouseAdd("地址详细信息");
		FcsInfSgmt.setHhDist("075100");
		FcsInfSgmt.setCellPhone("13876547890");
		FcsInfSgmt.setEmail("123@123.com");
		FcsInfSgmt.setFcsInfoUpDate(new Timestamp(System.currentTimeMillis()).toString());
		inBasInf.setFcsInfSgmt(FcsInfSgmt );
		
		/*ObjectMapper xmlMapper = new XmlMapper();
	    xmlMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false); 
	    xmlMapper.configure(SerializationFeature.WRAP_ROOT_VALUE, false);
	    xmlMapper.setSerializationInclusion(JsonInclude.Include.NON_NULL);
	    xmlMapper.setPropertyNamingStrategy(PropertyNamingStrategy.UPPER_CAMEL_CASE);
	    xmlMapper.enable(MapperFeature.USE_STD_BEAN_NAMING);
	    String xml = xmlMapper.writeValueAsString(inBasInf);
	    System.out.println(xml);*/
		//System.out.println(XMLUtil.convertToXml(inBasInf));
		
		/*List<BusCustomerBaseInfoDto> all=new ArrayList<>();
		BusCustomerBaseInfoDto e=new BusCustomerBaseInfoDto();
		BusCustomerBaseInfoDto e1=new BusCustomerBaseInfoDto();
		all.add(e);
		all.add(e1);
		System.out.println(CreditInfoUtil.downloadFile(all));*/
		
		BusCustomerRelationship busCustomerRelationship=new BusCustomerRelationship();
		busCustomerRelationship.setCreateTime(new Timestamp(System.currentTimeMillis()));
		busCustomerRelationship.setCustomerid("jj23232323");
		busCustomerRelationship.setFammemcertnum("222222222222222");
		busCustomerRelationship.setFammemcerttype("10");
		busCustomerRelationship.setFammemname("张三");
		busCustomerRelationship.setFamrel("test");
		busCustomerRelationship.setFamrelaassflag("1");
		busCustomerRelationship.setId(1001l);
		busCustomerRelationship.setIdnum("89898989898988");
		busCustomerRelationship.setIdtype("10");
		busCustomerRelationship.setInfrectype("20");
		busCustomerRelationship.setInfsurccode("110");
		busCustomerRelationship.setName("李四");
		busCustomerRelationship.setUploadflag(1);
		busCustomerRelationship.setUploadstatus(2);
		busCustomerRelationship.setRptdate("");
		
		String json=JSON.toJSONString(busCustomerRelationship);
		InFalMmbsInf inFalMmbsInf=JSON.parseObject(json, InFalMmbsInf.class);
		System.out.println(inFalMmbsInf.toString());
	}

}
