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

import me.zhengjie.exception.BadRequestException;
import me.zhengjie.modules.custominfo.domain.BusDelCustomerCardpipy;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.DateHelper;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.custominfo.repository.BusDelCustomerCardpipyRepository;
import me.zhengjie.modules.custominfo.service.BusDelCustomerCardpipyService;
import me.zhengjie.modules.custominfo.service.dto.BusDelCustomerCardpipyDto;
import me.zhengjie.modules.custominfo.service.dto.BusDelCustomerCardpipyQueryCriteria;
import me.zhengjie.modules.custominfo.service.mapstruct.BusDelCustomerCardpipyMapper;
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
public class BusDelCustomerCardpipyServiceImpl implements BusDelCustomerCardpipyService {

    private final BusDelCustomerCardpipyRepository busDelCustomerCardpipyRepository;
    private final BusDelCustomerCardpipyMapper busDelCustomerCardpipyMapper;

    @Override
    public Map<String,Object> queryAll(BusDelCustomerCardpipyQueryCriteria criteria, Pageable pageable){
        Page<BusDelCustomerCardpipy> page = busDelCustomerCardpipyRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busDelCustomerCardpipyMapper::toDto));
    }

    @Override
    public List<BusDelCustomerCardpipyDto> queryAll(BusDelCustomerCardpipyQueryCriteria criteria){
        return busDelCustomerCardpipyMapper.toDto(busDelCustomerCardpipyRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusDelCustomerCardpipyDto findById(Long id) {
        BusDelCustomerCardpipy busDelCustomerCardpipy = busDelCustomerCardpipyRepository.findById(id).orElseGet(BusDelCustomerCardpipy::new);
        ValidationUtil.isNull(busDelCustomerCardpipy.getId(),"BusDelCustomerCardpipy","id",id);
        return busDelCustomerCardpipyMapper.toDto(busDelCustomerCardpipy);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusDelCustomerCardpipyDto create(BusDelCustomerCardpipy resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busDelCustomerCardpipyMapper.toDto(busDelCustomerCardpipyRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusDelCustomerCardpipy resources) {
        BusDelCustomerCardpipy busDelCustomerCardpipy = busDelCustomerCardpipyRepository.findById(resources.getId()).orElseGet(BusDelCustomerCardpipy::new);
        ValidationUtil.isNull( busDelCustomerCardpipy.getId(),"BusDelCustomerCardpipy","id",resources.getId());
        busDelCustomerCardpipy.copy(resources);
        busDelCustomerCardpipyRepository.save(busDelCustomerCardpipy);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busDelCustomerCardpipyRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusDelCustomerCardpipyDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusDelCustomerCardpipyDto busDelCustomerCardpipy : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("信息记录类型", busDelCustomerCardpipy.getInfrectype());
            map.put("姓名", busDelCustomerCardpipy.getName());
            map.put("证件类型", busDelCustomerCardpipy.getIdtype());
            map.put("证件号码", busDelCustomerCardpipy.getIdnum());
            map.put("信息来源编码", busDelCustomerCardpipy.getInfsurccode());
            map.put("客户编码", busDelCustomerCardpipy.getCustomerid());
            map.put("上报日期", busDelCustomerCardpipy.getUploaddate());
            map.put("上报状态", busDelCustomerCardpipy.getUploadstats());
            map.put("create_time", busDelCustomerCardpipy.getUreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }

	@Override
	public void downloadCreditFile(List<BusDelCustomerCardpipyDto> all, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		if (all == null) {
			throw new BadRequestException("请选择数据");
		}
		try {
			File file = new File(CreditInfoUtil.downloadDelCustomerCardpipyFile(all, TaskConstants.TASK_NAME_DEL_CUSTOMER_CARDPIPY+ DateHelper.getCurrentTimeNoSLong(),
					TaskConstants.BUS_CUSTOMER_BASEINFO));
			String zipPath = file.getPath() + ".zip";
			ZipUtil.zip(file.getPath(), zipPath);
			FileUtil.downloadFile(request, response, new File(zipPath), true);
		} catch (IOException e) {
			throw new BadRequestException("打包失败");
		}
		
		
	}

	@Override
	public void downloadCreditFile(List<BusDelCustomerCardpipyDto> all) throws Exception {
		if (all == null) {
			throw new BadRequestException("请选择数据");
		}
		try {
			File file = new File(CreditInfoUtil.downloadDelCustomerCardpipyFile(all, TaskConstants.TASK_NAME_DEL_CUSTOMER_CARDPIPY+ DateHelper.getCurrentTimeNoSLong(),
					TaskConstants.BUS_CUSTOMER_BASEINFO));
			String zipPath = file.getPath() + ".zip";
			ZipUtil.zip(file.getPath(), zipPath);
		} catch (IOException e) {
			throw new BadRequestException("打包失败");
		}
		
	}
}