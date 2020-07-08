/*
*  Copyright 2019-2020 Zheng Jie
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*  http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*/
package me.zhengjie.modules.custominfo.service.impl;

import me.zhengjie.domain.ColumnInfo;
import me.zhengjie.domain.GenConfig;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.modules.custominfo.domain.BusCustomerBaseInfo;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.DateHelper;
import me.zhengjie.utils.FileUtil;
import me.zhengjie.utils.GenUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.custominfo.repository.BusCustomerBaseInfoRepository;
import me.zhengjie.modules.custominfo.service.BusCustomerBaseInfoService;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerBaseInfoDto;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerBaseInfoQueryCriteria;
import me.zhengjie.modules.custominfo.service.mapstruct.BusCustomerBaseInfoMapper;
import me.zhengjie.modules.custominfo.util.CreditInfoUtil;
import me.zhengjie.modules.quartz.constant.TaskConstants;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import cn.hutool.core.lang.Snowflake;
import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.ZipUtil;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import me.zhengjie.utils.PageUtil;
import me.zhengjie.utils.QueryHelp;
import java.util.List;
import java.util.Map;
import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/**
 * @website https://el-admin.vip
 * @description 服务实现
 * @author jianb-wang
 * @date 2020-06-29
 **/
@Service
@RequiredArgsConstructor
public class BusCustomerBaseInfoServiceImpl implements BusCustomerBaseInfoService {

	private final BusCustomerBaseInfoRepository busCustomerBaseInfoRepository;
	private final BusCustomerBaseInfoMapper busCustomerBaseInfoMapper;

	@Override
	public Map<String, Object> queryAll(BusCustomerBaseInfoQueryCriteria criteria, Pageable pageable) {
		Page<BusCustomerBaseInfo> page = busCustomerBaseInfoRepository.findAll(
				(root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root, criteria, criteriaBuilder),
				pageable);
		return PageUtil.toPage(page.map(busCustomerBaseInfoMapper::toDto));
	}

	@Override
	public List<BusCustomerBaseInfoDto> queryAll(BusCustomerBaseInfoQueryCriteria criteria) {
		return busCustomerBaseInfoMapper.toDto(busCustomerBaseInfoRepository.findAll(
				(root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root, criteria, criteriaBuilder)));
	}

	@Override
	@Transactional
	public BusCustomerBaseInfoDto findById(Long id) {
		BusCustomerBaseInfo busCustomerBaseInfo = busCustomerBaseInfoRepository.findById(id)
				.orElseGet(BusCustomerBaseInfo::new);
		ValidationUtil.isNull(busCustomerBaseInfo.getId(), "BusCustomerBaseInfo", "id", id);
		return busCustomerBaseInfoMapper.toDto(busCustomerBaseInfo);
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public BusCustomerBaseInfoDto create(BusCustomerBaseInfo resources) {
		Snowflake snowflake = IdUtil.createSnowflake(1, 1);
		resources.setId(snowflake.nextId());
		return busCustomerBaseInfoMapper.toDto(busCustomerBaseInfoRepository.save(resources));
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public void update(BusCustomerBaseInfo resources) {
		BusCustomerBaseInfo busCustomerBaseInfo = busCustomerBaseInfoRepository.findById(resources.getId())
				.orElseGet(BusCustomerBaseInfo::new);
		ValidationUtil.isNull(busCustomerBaseInfo.getId(), "BusCustomerBaseInfo", "id", resources.getId());
		busCustomerBaseInfo.copy(resources);
		busCustomerBaseInfoRepository.save(busCustomerBaseInfo);
	}

	@Override
	public void deleteAll(Long[] ids) {
		for (Long id : ids) {
			busCustomerBaseInfoRepository.deleteById(id);
		}
	}

	@Override
	public void download(List<BusCustomerBaseInfoDto> all, HttpServletResponse response) throws IOException {
		List<Map<String, Object>> list = new ArrayList<>();
		for (BusCustomerBaseInfoDto busCustomerBaseInfo : all) {
			Map<String, Object> map = new LinkedHashMap<>();
			map.put("信息记录类型", busCustomerBaseInfo.getInfrectype());
			map.put("姓名", busCustomerBaseInfo.getName());
			map.put("证件类型", busCustomerBaseInfo.getIdtype());
			map.put("证件号码", busCustomerBaseInfo.getIdnum());
			map.put("信息来源编码", busCustomerBaseInfo.getInfsurccode());
			map.put("信息报告日期", busCustomerBaseInfo.getRptdate());
			map.put("报告时点说明代码", busCustomerBaseInfo.getRptdatecode());
			map.put("客户资料维护机构代码", busCustomerBaseInfo.getCimoc());
			map.put("客户资料类型", busCustomerBaseInfo.getCustomertype());
			map.put("性别", busCustomerBaseInfo.getSex());
			map.put("出生日期", busCustomerBaseInfo.getDob());
			map.put("国籍", busCustomerBaseInfo.getNation());
			map.put("户籍地址", busCustomerBaseInfo.getHouseadd());
			map.put("户籍所在地行政区划", busCustomerBaseInfo.getHhdist());
			map.put("手机号码", busCustomerBaseInfo.getCellphone());
			map.put("电子邮箱", busCustomerBaseInfo.getEmail());
			map.put("信息更新日期", busCustomerBaseInfo.getFcsinfoupdate());
			map.put("婚姻状况", busCustomerBaseInfo.getMaristatus());
			map.put("配偶姓名", busCustomerBaseInfo.getSponame());
			map.put("配偶证件类型", busCustomerBaseInfo.getSpoidtype());
			map.put("配偶证件号码", busCustomerBaseInfo.getSpoidnum());
			map.put("配偶联系电话", busCustomerBaseInfo.getSpotel());
			map.put("配偶工作单位", busCustomerBaseInfo.getSpscmpynm());
			map.put("信息更新日期", busCustomerBaseInfo.getSpsinfoupdate());
			map.put("学历", busCustomerBaseInfo.getEdulevel());
			map.put("学位", busCustomerBaseInfo.getAcadegree());
			map.put("信息更新日期", busCustomerBaseInfo.getEduinfoupdate());
			map.put("就业状况", busCustomerBaseInfo.getEmpstatus());
			map.put("单位名称", busCustomerBaseInfo.getCpnname());
			map.put("单位性质", busCustomerBaseInfo.getCpntype());
			map.put("单位所属行业", busCustomerBaseInfo.getIndustry());
			map.put("单位详细地址", busCustomerBaseInfo.getCpnaddr());
			map.put("单位所在地邮编", busCustomerBaseInfo.getCpnpc());
			map.put("单位所在地行政区划", busCustomerBaseInfo.getCpndist());
			map.put("单位电话", busCustomerBaseInfo.getCpntel());
			map.put("职业", busCustomerBaseInfo.getOccupation());
			map.put("职务", busCustomerBaseInfo.getTitle());
			map.put("职称", busCustomerBaseInfo.getTechtitle());
			map.put("本单位工作起始年份", busCustomerBaseInfo.getWorkstartdate());
			map.put("信息更新日期", busCustomerBaseInfo.getOctpninfoupdate());
			map.put("居住状况", busCustomerBaseInfo.getResistatus());
			map.put("居住地详细地址", busCustomerBaseInfo.getResiaddr());
			map.put("居住地邮编", busCustomerBaseInfo.getResipc());
			map.put("居住地行政区划", busCustomerBaseInfo.getResidist());
			map.put("住宅电话", busCustomerBaseInfo.getHometel());
			map.put("信息更新日期", busCustomerBaseInfo.getResiinfoupdate());
			map.put("通讯地址", busCustomerBaseInfo.getMailaddr());
			map.put("通讯地邮编", busCustomerBaseInfo.getMailpc());
			map.put("通讯地行政区划", busCustomerBaseInfo.getMaildist());
			map.put("信息更新日期", busCustomerBaseInfo.getMlginfoupdate());
			map.put("自报年收入", busCustomerBaseInfo.getAnnlinc());
			map.put("纳税年收入", busCustomerBaseInfo.getTaxincome());
			map.put("信息更新日期", busCustomerBaseInfo.getIncinfoupdate());
			map.put("客户编", busCustomerBaseInfo.getCustomerid());
			map.put("记录日期", busCustomerBaseInfo.getInsertdate());
			map.put("上报日期", busCustomerBaseInfo.getUploaddate());
			map.put("上报状态", busCustomerBaseInfo.getUploadstatus());
			map.put("上报标识", busCustomerBaseInfo.getUploadflag());
			map.put("create_time", busCustomerBaseInfo.getCreateTime());
			map.put("更新日期", busCustomerBaseInfo.getUpdatedate());
			list.add(map);
		}
		FileUtil.downloadExcel(list, response);
	}

	@Override
	public void downloadCreditFile(List<BusCustomerBaseInfoDto> all, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		if (all == null) {
			throw new BadRequestException("请选择数据");
		}
		try {
			File file = new File(CreditInfoUtil.downloadFile(all, TaskConstants.TASK_NAME_NEW_CUSTOMERBASEINFO_DECRB,
					TaskConstants.BUS_CUSTOMER_BASEINFO+ DateHelper.getCurrentTimeNoSLong()));
			String zipPath = file.getPath() + ".zip";
			ZipUtil.zip(file.getPath(), zipPath);
			FileUtil.downloadFile(request, response, new File(zipPath), true);
		} catch (IOException e) {
			throw new BadRequestException("打包失败");
		}
	}

	@Override
	public void downloadCreditFile(List<BusCustomerBaseInfoDto> all) throws Exception {
		if (all == null) {
			throw new BadRequestException("请选择数据");
		}
		try {
			File file = new File(CreditInfoUtil.downloadFile(all, TaskConstants.TASK_NAME_NEW_CUSTOMERBASEINFO_DECRB,
					TaskConstants.BUS_CUSTOMER_BASEINFO + DateHelper.getCurrentTimeNoSLong()));
			String zipPath = file.getPath() + ".zip";
			System.out.println("zipPath:{}" + zipPath);
			ZipUtil.zip(file.getPath(), zipPath);
		} catch (IOException e) {
			throw new BadRequestException("打包失败");
		}

	}
}