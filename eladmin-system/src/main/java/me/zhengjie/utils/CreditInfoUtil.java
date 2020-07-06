package me.zhengjie.utils;

import static me.zhengjie.utils.FileUtil.SYS_TEM_DIR;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import cn.hutool.extra.template.TemplateException;
import lombok.extern.slf4j.Slf4j;
import me.zhengjie.modules.custominfo.beans.BsSgmt;
import me.zhengjie.modules.custominfo.beans.FcsInfSgmt;
import me.zhengjie.modules.custominfo.beans.IDRec;
import me.zhengjie.modules.custominfo.beans.IDSgmt;
import me.zhengjie.modules.custominfo.beans.InBasInf;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerBaseInfoDto;

@Slf4j
@SuppressWarnings({"unchecked", "all"})
public class CreditInfoUtil {
	
	/**
	 * 文件下载
	 * @param all
	 * @return
	 * @throws IOException
	 */
	public static String downloadFile(List<BusCustomerBaseInfoDto> all) throws IOException {
		// TODO Auto-generated method stub
		 String tempPath = SYS_TEM_DIR + "eladmin-gen-temp" + File.separator + "CUSTOMERINFO" + File.separator;
		 String filePath =  tempPath+ File.separator+ "test"+ ".txt";
		StringBuffer sb=new StringBuffer();
		for(BusCustomerBaseInfoDto busCustomerBaseInfoDto:all) {
			InBasInf inBasInf=build(busCustomerBaseInfoDto);
			sb.append(XMLUtil.convertToXml(inBasInf));
			sb.append("\n");
		}
		sb.substring(0, sb.length()-1);
		File file = new File(filePath);
		// 生成目标文件
        Writer writer = null;
        try {
            FileUtil.touch(file);
            writer = new FileWriter(file);
            writer.write(sb.toString());
        } catch (IOException e) {
            throw new RuntimeException(e);
        } finally {
            assert writer != null;
            writer.close();
        }
		return tempPath;
	}
    /**
     * 数据转换
     * @param busCustomerBaseInfoDto
     * @return
     */
	private static InBasInf build(BusCustomerBaseInfoDto busCustomerBaseInfoDto) {
		InBasInf inBasInf=new InBasInf();
		BsSgmt bsSgmt=new BsSgmt();
		bsSgmt.setIDType(100);
		bsSgmt.setName("张三");
		bsSgmt.setIDType(10);
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
		
		return inBasInf;
	}
}
