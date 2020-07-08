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

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.hutool.core.lang.Snowflake;
import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.ZipUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.modules.custominfo.domain.BusCustomerCardinfos;
import me.zhengjie.modules.custominfo.repository.BusCustomerCardinfosRepository;
import me.zhengjie.modules.custominfo.service.BusCustomerCardinfosService;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerCardinfosDto;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerCardinfosQueryCriteria;
import me.zhengjie.modules.custominfo.service.mapstruct.BusCustomerCardinfosMapper;
import me.zhengjie.modules.custominfo.util.CreditInfoUtil;
import me.zhengjie.modules.quartz.constant.TaskConstants;
import me.zhengjie.utils.DateHelper;
import me.zhengjie.utils.FileUtil;
import me.zhengjie.utils.PageUtil;
import me.zhengjie.utils.QueryHelp;
import me.zhengjie.utils.ValidationUtil;

/**
* @website https://el-admin.vip
* @description 服务实现
* @author jianb-wang
* @date 2020-06-29
**/
@Service
@RequiredArgsConstructor
public class BusCustomerCardinfosServiceImpl implements BusCustomerCardinfosService {

    private final BusCustomerCardinfosRepository busCustomerCardinfosRepository;
    private final BusCustomerCardinfosMapper busCustomerCardinfosMapper;

    @Override
    public Map<String,Object> queryAll(BusCustomerCardinfosQueryCriteria criteria, Pageable pageable){
        Page<BusCustomerCardinfos> page = busCustomerCardinfosRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busCustomerCardinfosMapper::toDto));
    }

    @Override
    public List<BusCustomerCardinfosDto> queryAll(BusCustomerCardinfosQueryCriteria criteria){
        return busCustomerCardinfosMapper.toDto(busCustomerCardinfosRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusCustomerCardinfosDto findById(Long id) {
        BusCustomerCardinfos busCustomerCardinfos = busCustomerCardinfosRepository.findById(id).orElseGet(BusCustomerCardinfos::new);
        ValidationUtil.isNull(busCustomerCardinfos.getId(),"BusCustomerCardinfos","id",id);
        return busCustomerCardinfosMapper.toDto(busCustomerCardinfos);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusCustomerCardinfosDto create(BusCustomerCardinfos resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busCustomerCardinfosMapper.toDto(busCustomerCardinfosRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusCustomerCardinfos resources) {
        BusCustomerCardinfos busCustomerCardinfos = busCustomerCardinfosRepository.findById(resources.getId()).orElseGet(BusCustomerCardinfos::new);
        ValidationUtil.isNull( busCustomerCardinfos.getId(),"BusCustomerCardinfos","id",resources.getId());
        busCustomerCardinfos.copy(resources);
        busCustomerCardinfosRepository.save(busCustomerCardinfos);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busCustomerCardinfosRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusCustomerCardinfosDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusCustomerCardinfosDto busCustomerCardinfos : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("信息记录类型", busCustomerCardinfos.getInfrectype());
            map.put("姓名", busCustomerCardinfos.getName());
            map.put("证件类型", busCustomerCardinfos.getIdtype());
            map.put("证件号码", busCustomerCardinfos.getIdnum());
            map.put("其他姓名", busCustomerCardinfos.getOthname());
            map.put("其他证件类型", busCustomerCardinfos.getOthidtype());
            map.put("其他证件号码", busCustomerCardinfos.getOthidnum());
            map.put("证件关联关系有效标志", busCustomerCardinfos.getOthassflg());
            map.put("信息来源编码", busCustomerCardinfos.getInfsurccode());
            map.put("信息报告日期", busCustomerCardinfos.getRptdate());
            map.put("客户编码", busCustomerCardinfos.getCustomerid());
            map.put("create_time", busCustomerCardinfos.getCreateTime());
            map.put("上报状态", busCustomerCardinfos.getUploadstatus());
            map.put("上报标识", busCustomerCardinfos.getUploadflag());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
    @Override
    public void downloadCreditFile(List<BusCustomerCardinfosDto> all, HttpServletRequest request, HttpServletResponse response) throws Exception {
    	if (all == null) {
			throw new BadRequestException("请选择数据");
		}
		try {
			File file = new File(CreditInfoUtil.downloadCustomerCardinfosFile(all, TaskConstants.TASK_NAME_NEW_CUSTOMER_CARDINFOS_DECRB,
					TaskConstants.BUS_CUSTOMER_BASEINFO+ DateHelper.getCurrentTimeNoSLong()));
			String zipPath = file.getPath() + ".zip";
			ZipUtil.zip(file.getPath(), zipPath);
			FileUtil.downloadFile(request, response, new File(zipPath), true);
		} catch (IOException e) {
			throw new BadRequestException("打包失败");
		}
    }
	@Override
	public void downloadCreditFile(List<BusCustomerCardinfosDto> all) throws Exception {
		if (all == null) {
			throw new BadRequestException("请选择数据");
		}
		try {
			File file = new File(CreditInfoUtil.downloadCustomerCardinfosFile(all, TaskConstants.TASK_NAME_NEW_CUSTOMER_CARDINFOS_DECRB,
					TaskConstants.BUS_CUSTOMER_BASEINFO+ DateHelper.getCurrentTimeNoSLong()));
			String zipPath = file.getPath() + ".zip";
			ZipUtil.zip(file.getPath(), zipPath);
		} catch (IOException e) {
			throw new BadRequestException("打包失败");
		}
		
	}
}