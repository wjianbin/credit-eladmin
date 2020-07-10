package me.zhengjie.modules.custominfo.util;

import static me.zhengjie.utils.FileUtil.SYS_TEM_DIR;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;

import com.alibaba.fastjson.JSON;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import me.zhengjie.modules.creditsystem.domain.BusSystemSetup;
import me.zhengjie.modules.custominfo.beans.BsSgmt;
import me.zhengjie.modules.custominfo.beans.EduInfSgmt;
import me.zhengjie.modules.custominfo.beans.FcsInfSgmt;
import me.zhengjie.modules.custominfo.beans.IDRec;
import me.zhengjie.modules.custominfo.beans.IDSgmt;
import me.zhengjie.modules.custominfo.beans.InBasInf;
import me.zhengjie.modules.custominfo.beans.InBsInfDlt;
import me.zhengjie.modules.custominfo.beans.InCtfItgInf;
import me.zhengjie.modules.custominfo.beans.InFalMmbsInf;
import me.zhengjie.modules.custominfo.beans.InIDEfctInf;
import me.zhengjie.modules.custominfo.beans.InIDEfctInfDlt;
import me.zhengjie.modules.custominfo.beans.IncInfSgmt;
import me.zhengjie.modules.custominfo.beans.MlgInfSgmt;
import me.zhengjie.modules.custominfo.beans.OctpnInfSgmt;
import me.zhengjie.modules.custominfo.beans.RedncInfSgmt;
import me.zhengjie.modules.custominfo.beans.SpsInfSgmt;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerBaseInfoDto;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerCardinfosDto;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerCardpipyDto;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerRelationshipDto;
import me.zhengjie.modules.custominfo.service.dto.BusDelCustomerCardpipyDto;
import me.zhengjie.modules.custominfo.service.dto.BusDelCustomerInfoDto;
import me.zhengjie.modules.quartz.constant.TaskConstants;
import me.zhengjie.modules.security.config.bean.SecurityProperties;
import me.zhengjie.modules.security.security.TokenProvider;
import me.zhengjie.modules.security.service.OnlineUserService;
import me.zhengjie.utils.DateHelper;
import me.zhengjie.utils.FileUtil;
import me.zhengjie.utils.RedisUtils;
import me.zhengjie.utils.XMLUtil;

/**
 * 
 * @author jianb-wang
 *
 */
@Slf4j
@SuppressWarnings({ "unchecked", "all" })
public class CreditInfoUtil {

	/**
	 * 文件下载
	 * 
	 * @param all
	 * @return
	 * @throws Exception
	 */
	public static String downloadFile(List<BusCustomerBaseInfoDto> all, String pagName, String busType)
			throws Exception {
		// TODO Auto-generated method stub
		String tempPath = SYS_TEM_DIR + "eladmin-gen-temp" + File.separator + pagName + File.separator;
		String fileName = createFileName(busType);
		log.info("fileName:{}" + fileName);
		String filePath = tempPath + File.separator + fileName + ".txt";
		log.info("filePath:{}" + filePath);
		StringBuffer sb = new StringBuffer();
		// 文件头
		String fileTitle=createFileTitle(busType, all.size());
		log.info("fileTitle:{}" + fileTitle);
		sb.append(fileTitle);
		sb.append("\n");
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
	 * 
	 * @param busType
	 * @return
	 * @throws Exception
	 */
	private static String createFileTitle(String busType, int size) throws Exception {
		// TODO Auto-generated method stub
		StringBuffer sb = new StringBuffer();
		// 1-1 文件头起始标识填“A”表示文件头开始。
		sb.append("A");
		// 2-4 文件头长度 说明文件头所含字节数（含“文件头起始标识”和“文件头长度”）的十进制数字串。不足 3 位的，左侧用“0”补齐。
		sb.append("050");
		// 5-7所含记录类型
		sb.append(busType);
		// 8-12信息记录版本号用于标识数据报送机构生成文件体中信息记录依据的是哪个版本的规格定义。格式为 N.N.N
		sb.append("2.0.0");
		// 13-14信息记录模板类型 信息记录采用的模板类型代码。对于基本信息，填写其模板类型代码；对于其他信息，填写空值（即，两个空格）。
		sb.append("10");
		// 15-28数据提供机构区段码
		sb.append(TaskConstants.AGENT_CODE);
		// 29-42文件生成时间
		sb.append(DateHelper.getCurrentTimeNoSLong());
		// 43-43预留位对应文件名中的第 26 位。目前统一填“0”。
		sb.append("0");
		// 44-50 信息记录数 说明文件中所含信息记录数的十进制数字串。不足 7 位的，左侧用“0”补齐。
		sb.append(String.format("%07d", size));
		return sb.toString();
	}

	/**
	 * * 文件名为 34 位的字符串，其中文件名前缀 30 位、文件名后缀 3 位、前缀与后缀的分隔 * 符“.”占 1 位。 *
	 * 为了保证数据传输的安全及减少网络传输的压力，征信系统要求数据报送文件与数据反 *
	 * 馈文件在交换前进行加密加压。加密加压后的文件名后缀统一为“enc”，加密加压前的文 件后缀统一为“txt”。
	 * 
	 * @param busType
	 * @return
	 * @throws Exception
	 */
	private static String createFileName(String busType) throws Exception {
		// TODO Auto-generated method stub
		StringBuffer sb = new StringBuffer();
		sb.append(TaskConstants.AGENT_CODE);// 1-14数据提供机构区段码
		sb.append(DateHelper.getCurrentTimeNoS());// 文件生成日期格式为“YYYYMMDD”。
		sb.append(busType);// 所含信息记录类型
		sb.append("0");// 预留位目前统一填“0”。
		sb.append(DateHelper.getRandomNum());// 流水号当文件名前 26 位相同时，用于区分不同文件的编号，以保证数据报送文件命名的唯一性。
		sb.append("0");// 反馈标识 //对于数据报送文件，统一填“0”。
		return sb.toString();
	}

	/**
	 * 数据转换
	 * 
	 * @param busCustomerBaseInfoDto
	 * @return
	 */
	private static InBasInf build2(BusCustomerBaseInfoDto busCustomerBaseInfoDto) {
		InBasInf inBasInf = new InBasInf();
		BsSgmt bsSgmt = new BsSgmt();
		bsSgmt.setIDType("100");
		bsSgmt.setName("张三");
		bsSgmt.setIDType("10");
		bsSgmt.setIDNum("110111198012011234");
		bsSgmt.setRptDate(new Timestamp(System.currentTimeMillis()).toString());
		bsSgmt.setRptDateCode("10");
		bsSgmt.setCimoc("B10111000H0001");
		bsSgmt.setCustomerType("11");
		inBasInf.setBsSgmt(bsSgmt);

		IDSgmt iDSgmt = new IDSgmt();
		iDSgmt.setIDNm("2");
		List<IDRec> IDRec = new ArrayList<>();
		IDRec IDRec1 = new IDRec();
		IDRec1.setAlias("李四");
		IDRec1.setOthIDType("1");
		IDRec1.setOthIDNum("110111198012011234");
		IDRec IDRec2 = new IDRec();
		IDRec2.setAlias("旺旺");
		IDRec2.setOthIDType("1");
		IDRec2.setOthIDNum("110111198012011234");
		IDRec.add(IDRec1);
		IDRec.add(IDRec2);
		iDSgmt.setIDRec(IDRec);
		iDSgmt.setIDInfoUpDate(new Timestamp(System.currentTimeMillis()).toString());
		inBasInf.setIDSgmt(iDSgmt);

		FcsInfSgmt FcsInfSgmt = new FcsInfSgmt();
		FcsInfSgmt.setSex(1);
		FcsInfSgmt.setDOB(new Timestamp(System.currentTimeMillis()).toString());
		FcsInfSgmt.setNation("CHN");
		FcsInfSgmt.setHouseAdd("地址详细信息");
		FcsInfSgmt.setHhDist("075100");
		FcsInfSgmt.setCellPhone("13876547890");
		FcsInfSgmt.setEmail("123@123.com");
		FcsInfSgmt.setFcsInfoUpDate(new Timestamp(System.currentTimeMillis()).toString());
		inBasInf.setFcsInfSgmt(FcsInfSgmt);

		return inBasInf;
	}

	private static InBasInf build(BusCustomerBaseInfoDto busCustomerBaseInfoDto) {
		InBasInf inBasInf = new InBasInf();
		// 基本段
		BsSgmt bsSgmt = new BsSgmt();
		bsSgmt.setInfRecType(busCustomerBaseInfoDto.getInfrectype());
		bsSgmt.setName(busCustomerBaseInfoDto.getName());
		bsSgmt.setIDType(busCustomerBaseInfoDto.getIdtype());
		bsSgmt.setIDNum(busCustomerBaseInfoDto.getIdnum());
		bsSgmt.setRptDate(busCustomerBaseInfoDto.getRptdate() != null ? busCustomerBaseInfoDto.getRptdate().toString():"");
		bsSgmt.setRptDateCode(busCustomerBaseInfoDto.getRptdatecode());
		bsSgmt.setCimoc(busCustomerBaseInfoDto.getCimoc());
		bsSgmt.setCustomerType(busCustomerBaseInfoDto.getCustomertype());
		inBasInf.setBsSgmt(bsSgmt);

		// 基本概况段
		FcsInfSgmt FcsInfSgmt = new FcsInfSgmt();
		FcsInfSgmt.setSex(busCustomerBaseInfoDto.getSex());
		FcsInfSgmt.setDOB(busCustomerBaseInfoDto.getDob() !=null ?busCustomerBaseInfoDto.getDob().toString() : "");
		FcsInfSgmt.setNation(busCustomerBaseInfoDto.getNation());
		FcsInfSgmt.setHouseAdd(busCustomerBaseInfoDto.getHouseadd());
		FcsInfSgmt.setHhDist(busCustomerBaseInfoDto.getHhdist());
		FcsInfSgmt.setCellPhone(busCustomerBaseInfoDto.getCellphone());
		FcsInfSgmt.setEmail(busCustomerBaseInfoDto.getEmail());
		FcsInfSgmt.setFcsInfoUpDate(busCustomerBaseInfoDto.getFcsinfoupdate() != null ? busCustomerBaseInfoDto.getFcsinfoupdate().toString() : "");
		inBasInf.setFcsInfSgmt(FcsInfSgmt);

		// 婚姻信息段
		SpsInfSgmt dpsInfSgmt = new SpsInfSgmt();
		dpsInfSgmt.setMariStatus(busCustomerBaseInfoDto.getMaristatus());
		dpsInfSgmt.setSpoIDNum(busCustomerBaseInfoDto.getSpoidnum());
		dpsInfSgmt.setSpoIDType(busCustomerBaseInfoDto.getSpoidtype());
		dpsInfSgmt.setSpoName(busCustomerBaseInfoDto.getSponame());
		dpsInfSgmt.setSpoTel(busCustomerBaseInfoDto.getSpotel());
		dpsInfSgmt.setSpsCmpyNm(busCustomerBaseInfoDto.getSpscmpynm());
		dpsInfSgmt.setSpsInfoUpDate(busCustomerBaseInfoDto.getSpsinfoupdate() !=null ?busCustomerBaseInfoDto.getSpsinfoupdate().toString() : "");
		inBasInf.setSpsInfSgmt(dpsInfSgmt);

		// 教育信息段
		EduInfSgmt eduInfSgmt = new EduInfSgmt();
		eduInfSgmt.setAcaDegree(busCustomerBaseInfoDto.getAcadegree());
		eduInfSgmt.setEduInfoUpDate(busCustomerBaseInfoDto.getEduinfoupdate() !=null ?busCustomerBaseInfoDto.getEduinfoupdate().toString(): "");
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
		octpnInfSgmt.setOctpnInfoUpDate(busCustomerBaseInfoDto.getOctpninfoupdate() !=null ?busCustomerBaseInfoDto.getOctpninfoupdate().toString() : "");
		octpnInfSgmt.setTechTitle(busCustomerBaseInfoDto.getTechtitle());
		octpnInfSgmt.setTitle(busCustomerBaseInfoDto.getTitle());
		octpnInfSgmt.setWorkStartDate(busCustomerBaseInfoDto.getWorkstartdate()!=null ?busCustomerBaseInfoDto.getWorkstartdate().toString():"");
		inBasInf.setOctpnInfSgmt(octpnInfSgmt);

		// 居住地址段
		RedncInfSgmt redncInfSgmt = new RedncInfSgmt();
		redncInfSgmt.setHomeTel(busCustomerBaseInfoDto.getHometel());
		redncInfSgmt.setResiAddr(busCustomerBaseInfoDto.getResiaddr());
		redncInfSgmt.setResiDist(busCustomerBaseInfoDto.getResidist());
		redncInfSgmt.setResiInfoUpDate(busCustomerBaseInfoDto.getResiinfoupdate()!=null ?busCustomerBaseInfoDto.getResiinfoupdate().toString():"");
		redncInfSgmt.setResiPc(busCustomerBaseInfoDto.getResipc());
		redncInfSgmt.setResiStatus(busCustomerBaseInfoDto.getResistatus());
		inBasInf.setRedncInfSgmt(redncInfSgmt);

		// 通讯地址段
		MlgInfSgmt mlgInfSgmt = new MlgInfSgmt();
		mlgInfSgmt.setMailAddr(busCustomerBaseInfoDto.getMailaddr());
		mlgInfSgmt.setMailDist(busCustomerBaseInfoDto.getMaildist());
		mlgInfSgmt.setMailPc(busCustomerBaseInfoDto.getMailpc());
		mlgInfSgmt.setMlgInfoUpDate(busCustomerBaseInfoDto.getMlginfoupdate()!=null ?busCustomerBaseInfoDto.getMlginfoupdate().toString():"");
		inBasInf.setMlgInfSgmt(mlgInfSgmt);

		// 收入信息段
		IncInfSgmt incInfSgmt = new IncInfSgmt();
		incInfSgmt.setAnnlInc(busCustomerBaseInfoDto.getAnnlinc());
		incInfSgmt.setIncInfoUpDate(busCustomerBaseInfoDto.getIncinfoupdate()!=null?busCustomerBaseInfoDto.getIncinfoupdate().toString():"");
		incInfSgmt.setTaxIncome(busCustomerBaseInfoDto.getTaxincome());
		inBasInf.setIncInfSgmt(incInfSgmt);
		return inBasInf;
	}

	public static String downloadCustomerCardinfosFile(List<BusCustomerCardinfosDto> all,
			String pagName, String busType) throws Exception {
		String tempPath = SYS_TEM_DIR + "eladmin-gen-temp" + File.separator + pagName + File.separator;
		String fileName = createFileName(busType);
		log.info("fileName:{}" + fileName);
		String filePath = tempPath + File.separator + fileName + ".txt";
		log.info("filePath:{}" + filePath);
		StringBuffer sb = new StringBuffer();
		// 文件头
		String fileTitle=createFileTitle(busType, all.size());
		log.info("fileTitle:{}" + fileTitle);
		sb.append(fileTitle);
		sb.append("\n");
		for (BusCustomerCardinfosDto busCustomerCardinfosDto : all) {
			String json=JSON.toJSONString(busCustomerCardinfosDto);
			InCtfItgInf inCtfItgInf=JSON.parseObject(json, InCtfItgInf.class);
			sb.append(XMLUtil.convertToXml(inCtfItgInf));
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

	public static String downloadCustomerCardpipyFile(List<BusCustomerCardpipyDto> all,
			String pagName, String busType) throws Exception {
		String tempPath = SYS_TEM_DIR + "eladmin-gen-temp" + File.separator + pagName + File.separator;
		String fileName = createFileName(busType);
		log.info("fileName:{}" + fileName);
		String filePath = tempPath + File.separator + fileName + ".txt";
		log.info("filePath:{}" + filePath);
		StringBuffer sb = new StringBuffer();
		// 文件头
		String fileTitle=createFileTitle(busType, all.size());
		log.info("fileTitle:{}" + fileTitle);
		sb.append(fileTitle);
		sb.append("\n");
		for (BusCustomerCardpipyDto busCustomerCardpipyDto : all) {
			String json=JSON.toJSONString(busCustomerCardpipyDto);
			InIDEfctInf inIDEfctInf=JSON.parseObject(json, InIDEfctInf.class);
			sb.append(XMLUtil.convertToXml(inIDEfctInf));
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

	public static String downloadRelationshipFile(List<BusCustomerRelationshipDto> all,
			String pagName, String busType) throws Exception {
		// TODO Auto-generated method stub
		String tempPath = SYS_TEM_DIR + "eladmin-gen-temp" + File.separator + pagName + File.separator;
		String fileName = createFileName(busType);
		log.info("fileName:{}" + fileName);
		String filePath = tempPath + File.separator + fileName + ".txt";
		log.info("filePath:{}" + filePath);
		StringBuffer sb = new StringBuffer();
		// 文件头
		String fileTitle=createFileTitle(busType, all.size());
		log.info("fileTitle:{}" + fileTitle);
		sb.append(fileTitle);
		sb.append("\n");
		for (BusCustomerRelationshipDto busCustomerRelationshipDto : all) {
			String json=JSON.toJSONString(busCustomerRelationshipDto);
			InFalMmbsInf inFalMmbsInf=JSON.parseObject(json, InFalMmbsInf.class);
			sb.append(XMLUtil.convertToXml(inFalMmbsInf));
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

	public static String downloadDelCustomerCardpipyFile(List<BusDelCustomerCardpipyDto> all,
			String pagName, String busType) throws Exception {
		String tempPath = SYS_TEM_DIR + "eladmin-gen-temp" + File.separator + pagName + File.separator;
		String fileName = createFileName(busType);
		log.info("fileName:{}" + fileName);
		String filePath = tempPath + File.separator + fileName + ".txt";
		log.info("filePath:{}" + filePath);
		StringBuffer sb = new StringBuffer();
		// 文件头
		String fileTitle=createFileTitle(busType, all.size());
		log.info("fileTitle:{}" + fileTitle);
		sb.append(fileTitle);
		sb.append("\n");
		for (BusDelCustomerCardpipyDto busDelCustomerCardpipyDto : all) {
			String json=JSON.toJSONString(busDelCustomerCardpipyDto);
			InIDEfctInfDlt inIDEfctInfDlt=JSON.parseObject(json, InIDEfctInfDlt.class);
			sb.append(XMLUtil.convertToXml(inIDEfctInfDlt));
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

	public static String downloadDelCustomerInfoFile(List<BusDelCustomerInfoDto> all,
			String pagName, String busType) throws Exception {
		String tempPath = SYS_TEM_DIR + "eladmin-gen-temp" + File.separator + pagName + File.separator;
		String fileName = createFileName(busType);
		log.info("fileName:{}" + fileName);
		String filePath = tempPath + File.separator + fileName + ".txt";
		log.info("filePath:{}" + filePath);
		StringBuffer sb = new StringBuffer();
		// 文件头
		String fileTitle=createFileTitle(busType, all.size());
		log.info("fileTitle:{}" + fileTitle);
		sb.append(fileTitle);
		sb.append("\n");
		for (BusDelCustomerInfoDto busDelCustomerInfoDto : all) {
			String json=JSON.toJSONString(busDelCustomerInfoDto);
			InBsInfDlt inBsInfDlt=JSON.parseObject(json, InBsInfDlt.class);
			sb.append(XMLUtil.convertToXml(inBsInfDlt));
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
}
