package me.zhengjie.modules.custominfo.util;

import static me.zhengjie.utils.FileUtil.SYS_TEM_DIR;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.List;

import lombok.extern.slf4j.Slf4j;
import me.zhengjie.modules.custominfo.beans.BsSgmt;
import me.zhengjie.modules.custominfo.beans.EduInfSgmt;
import me.zhengjie.modules.custominfo.beans.FcsInfSgmt;
import me.zhengjie.modules.custominfo.beans.InBasInf;
import me.zhengjie.modules.custominfo.beans.IncInfSgmt;
import me.zhengjie.modules.custominfo.beans.MlgInfSgmt;
import me.zhengjie.modules.custominfo.beans.OctpnInfSgmt;
import me.zhengjie.modules.custominfo.beans.RedncInfSgmt;
import me.zhengjie.modules.custominfo.beans.SpsInfSgmt;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerBaseInfoDto;
import me.zhengjie.utils.FileUtil;
import me.zhengjie.utils.XMLUtil;

@Slf4j
@SuppressWarnings({ "unchecked", "all" })
public class CreditInfoUtil {

	/**
	 * 文件下载
	 * 
	 * @param all
	 * @return
	 * @throws IOException
	 */
	public static String downloadFile(List<BusCustomerBaseInfoDto> all) throws IOException {
		// TODO Auto-generated method stub
		String tempPath = SYS_TEM_DIR + "eladmin-gen-temp" + File.separator + "CUSTOMERINFO" + File.separator;
		String filePath = tempPath + File.separator + "test" + ".txt";
		StringBuffer sb = new StringBuffer();
		for (BusCustomerBaseInfoDto busCustomerBaseInfoDto : all) {
			InBasInf inBasInf = build(busCustomerBaseInfoDto);
			sb.append(XMLUtil.convertToXml(inBasInf));
			sb.append("\n");
		}
		sb.substring(0, sb.length() - 1);
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
	 * 
	 * @param busCustomerBaseInfoDto
	 * @return
	 */
//	private static InBasInf build(BusCustomerBaseInfoDto busCustomerBaseInfoDto) {
//		InBasInf inBasInf=new InBasInf();
//		BsSgmt bsSgmt=new BsSgmt();
//		bsSgmt.setIDType(100);
//		bsSgmt.setName("张三");
//		bsSgmt.setIDType(10);
//		bsSgmt.setIDNum("110111198012011234");
//		bsSgmt.setRptDate(new Timestamp(System.currentTimeMillis()).toString());
//		bsSgmt.setRptDateCode("10");
//		bsSgmt.setCimoc("B10111000H0001");
//		bsSgmt.setCustomerType("11");
//		inBasInf.setBsSgmt(bsSgmt);
//		
//		IDSgmt iDSgmt=new IDSgmt();
//		iDSgmt.setIDNm("2");
//		List<IDRec> IDRec=new ArrayList<>();
//		IDRec IDRec1=new IDRec();
//		IDRec1.setAlias("李四");
//		IDRec1.setOthIDType("1");
//		IDRec1.setOthIDNum("110111198012011234");
//		IDRec IDRec2=new IDRec();
//		IDRec2.setAlias("旺旺");
//		IDRec2.setOthIDType("1");
//		IDRec2.setOthIDNum("110111198012011234");
//		IDRec.add(IDRec1);
//		IDRec.add(IDRec2);
//		iDSgmt.setIDRec(IDRec);
//		iDSgmt.setIDInfoUpDate(new Timestamp(System.currentTimeMillis()).toString());
//		inBasInf.setIDSgmt(iDSgmt);
//		
//		FcsInfSgmt FcsInfSgmt =new FcsInfSgmt();
//		FcsInfSgmt.setSex(1);
//		FcsInfSgmt.setDOB(new Timestamp(System.currentTimeMillis()).toString());
//		FcsInfSgmt.setNation("CHN");
//		FcsInfSgmt.setHouseAdd("地址详细信息");
//		FcsInfSgmt.setHhDist("075100");
//		FcsInfSgmt.setCellPhone("13876547890");
//		FcsInfSgmt.setEmail("123@123.com");
//		FcsInfSgmt.setFcsInfoUpDate(new Timestamp(System.currentTimeMillis()).toString());
//		inBasInf.setFcsInfSgmt(FcsInfSgmt );
//		
//		return inBasInf;
//	}
	private static InBasInf build(BusCustomerBaseInfoDto busCustomerBaseInfoDto) {
		InBasInf inBasInf = new InBasInf();
		// 基本段
		BsSgmt bsSgmt = new BsSgmt();
		bsSgmt.setInfRecType(busCustomerBaseInfoDto.getInfrectype());
		bsSgmt.setName(busCustomerBaseInfoDto.getName());
		bsSgmt.setIDType(busCustomerBaseInfoDto.getIdtype());
		bsSgmt.setIDNum(busCustomerBaseInfoDto.getIdnum());
		bsSgmt.setRptDate(busCustomerBaseInfoDto.getRptdate().toString());
		bsSgmt.setRptDateCode(busCustomerBaseInfoDto.getRptdatecode());
		bsSgmt.setCimoc(busCustomerBaseInfoDto.getCimoc());
		bsSgmt.setCustomerType(busCustomerBaseInfoDto.getCustomertype());
		inBasInf.setBsSgmt(bsSgmt);

		// 基本概况段
		FcsInfSgmt FcsInfSgmt = new FcsInfSgmt();
		FcsInfSgmt.setSex(busCustomerBaseInfoDto.getSex());
		FcsInfSgmt.setDOB(busCustomerBaseInfoDto.getDob().toString());
		FcsInfSgmt.setNation(busCustomerBaseInfoDto.getNation());
		FcsInfSgmt.setHouseAdd(busCustomerBaseInfoDto.getHouseadd());
		FcsInfSgmt.setHhDist(busCustomerBaseInfoDto.getHhdist());
		FcsInfSgmt.setCellPhone(busCustomerBaseInfoDto.getCellphone());
		FcsInfSgmt.setEmail(busCustomerBaseInfoDto.getEmail());
		FcsInfSgmt.setFcsInfoUpDate(busCustomerBaseInfoDto.getFcsinfoupdate().toString());
		inBasInf.setFcsInfSgmt(FcsInfSgmt);

		// 婚姻信息段
		SpsInfSgmt dpsInfSgmt = new SpsInfSgmt();
		dpsInfSgmt.setMariStatus(busCustomerBaseInfoDto.getMaristatus());
		dpsInfSgmt.setSpoIDNum(busCustomerBaseInfoDto.getSpoidnum());
		dpsInfSgmt.setSpoIDType(busCustomerBaseInfoDto.getSpoidtype());
		dpsInfSgmt.setSpoName(busCustomerBaseInfoDto.getSponame());
		dpsInfSgmt.setSpoTel(busCustomerBaseInfoDto.getSpotel());
		dpsInfSgmt.setSpsCmpyNm(busCustomerBaseInfoDto.getSpscmpynm());
		dpsInfSgmt.setSpsInfoUpDate(busCustomerBaseInfoDto.getSpsinfoupdate().toString());
		inBasInf.setSpsInfSgmt(dpsInfSgmt);

		// 教育信息段
		EduInfSgmt eduInfSgmt = new EduInfSgmt();
		eduInfSgmt.setAcaDegree(busCustomerBaseInfoDto.getAcadegree());
		eduInfSgmt.setEduInfoUpDate(busCustomerBaseInfoDto.getEduinfoupdate().toString());
		eduInfSgmt.setEduLevel(busCustomerBaseInfoDto.getEdulevel());
		inBasInf.setEduInfSgmt(eduInfSgmt);

		// 职业信息段
		OctpnInfSgmt octpnInfSgmt = new OctpnInfSgmt();
		octpnInfSgmt.setCpnAddr(busCustomerBaseInfoDto.getCpnaddr());
		octpnInfSgmt.setCpnDist(busCustomerBaseInfoDto.getCpndist());
		octpnInfSgmt.setCpnPc(busCustomerBaseInfoDto.getCpnpc());
		octpnInfSgmt.setCpnName(busCustomerBaseInfoDto.getCpnname());
		octpnInfSgmt.setCpnTEL(busCustomerBaseInfoDto.getCpntel());
		octpnInfSgmt.setCpnType(busCustomerBaseInfoDto.getCpntype());
		octpnInfSgmt.setEmpStatus(busCustomerBaseInfoDto.getEmpstatus());
		octpnInfSgmt.setIndustry(busCustomerBaseInfoDto.getIndustry());
		octpnInfSgmt.setOccupation(busCustomerBaseInfoDto.getOccupation());
		octpnInfSgmt.setOctpnInfoUpDate(busCustomerBaseInfoDto.getOctpninfoupdate().toString());
		octpnInfSgmt.setTechTitle(busCustomerBaseInfoDto.getTechtitle());
		octpnInfSgmt.setTitle(busCustomerBaseInfoDto.getTitle());
		octpnInfSgmt.setWorkStartDate(busCustomerBaseInfoDto.getWorkstartdate().toString());
		inBasInf.setOctpnInfSgmt(octpnInfSgmt);

		// 居住地址段
		RedncInfSgmt redncInfSgmt = new RedncInfSgmt();
		redncInfSgmt.setHomeTel(busCustomerBaseInfoDto.getHometel());
		redncInfSgmt.setResiAddr(busCustomerBaseInfoDto.getResiaddr());
		redncInfSgmt.setResiDist(busCustomerBaseInfoDto.getResidist());
		redncInfSgmt.setResiInfoUpDate(busCustomerBaseInfoDto.getResiinfoupdate().toString());
		redncInfSgmt.setResiPc(busCustomerBaseInfoDto.getResipc());
		redncInfSgmt.setResiStatus(busCustomerBaseInfoDto.getResistatus());
		inBasInf.setRedncInfSgmt(redncInfSgmt);

		// 通讯地址段
		MlgInfSgmt mlgInfSgmt = new MlgInfSgmt();
		mlgInfSgmt.setMailAddr(busCustomerBaseInfoDto.getMailaddr());
		mlgInfSgmt.setMailDist(busCustomerBaseInfoDto.getMaildist());
		mlgInfSgmt.setMailPc(busCustomerBaseInfoDto.getMailpc());
		mlgInfSgmt.setMlgInfoUpDate(busCustomerBaseInfoDto.getMlginfoupdate().toString());
		inBasInf.setMlgInfSgmt(mlgInfSgmt);

		// 收入信息段
		IncInfSgmt incInfSgmt = new IncInfSgmt();
		incInfSgmt.setAnnlInc(busCustomerBaseInfoDto.getAnnlinc());
		incInfSgmt.setIncInfoUpDate(busCustomerBaseInfoDto.getIncinfoupdate().toString());
		incInfSgmt.setTaxIncome(busCustomerBaseInfoDto.getTaxincome());
		inBasInf.setIncInfSgmt(incInfSgmt);
		return inBasInf;
	}
}
