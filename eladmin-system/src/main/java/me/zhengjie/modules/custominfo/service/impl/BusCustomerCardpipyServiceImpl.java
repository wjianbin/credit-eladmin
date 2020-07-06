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

import me.zhengjie.modules.custominfo.domain.BusCustomerCardpipy;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.custominfo.repository.BusCustomerCardpipyRepository;
import me.zhengjie.modules.custominfo.service.BusCustomerCardpipyService;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerCardpipyDto;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerCardpipyQueryCriteria;
import me.zhengjie.modules.custominfo.service.mapstruct.BusCustomerCardpipyMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import cn.hutool.core.lang.Snowflake;
import cn.hutool.core.util.IdUtil;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import me.zhengjie.utils.PageUtil;
import me.zhengjie.utils.QueryHelp;
import java.util.List;
import java.util.Map;
import java.io.IOException;
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
public class BusCustomerCardpipyServiceImpl implements BusCustomerCardpipyService {

    private final BusCustomerCardpipyRepository busCustomerCardpipyRepository;
    private final BusCustomerCardpipyMapper busCustomerCardpipyMapper;

    @Override
    public Map<String,Object> queryAll(BusCustomerCardpipyQueryCriteria criteria, Pageable pageable){
        Page<BusCustomerCardpipy> page = busCustomerCardpipyRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busCustomerCardpipyMapper::toDto));
    }

    @Override
    public List<BusCustomerCardpipyDto> queryAll(BusCustomerCardpipyQueryCriteria criteria){
        return busCustomerCardpipyMapper.toDto(busCustomerCardpipyRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusCustomerCardpipyDto findById(Long id1) {
        BusCustomerCardpipy busCustomerCardpipy = busCustomerCardpipyRepository.findById(id1).orElseGet(BusCustomerCardpipy::new);
        ValidationUtil.isNull(busCustomerCardpipy.getId1(),"BusCustomerCardpipy","id1",id1);
        return busCustomerCardpipyMapper.toDto(busCustomerCardpipy);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusCustomerCardpipyDto create(BusCustomerCardpipy resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId1(snowflake.nextId()); 
        return busCustomerCardpipyMapper.toDto(busCustomerCardpipyRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusCustomerCardpipy resources) {
        BusCustomerCardpipy busCustomerCardpipy = busCustomerCardpipyRepository.findById(resources.getId1()).orElseGet(BusCustomerCardpipy::new);
        ValidationUtil.isNull( busCustomerCardpipy.getId1(),"BusCustomerCardpipy","id",resources.getId1());
        busCustomerCardpipy.copy(resources);
        busCustomerCardpipyRepository.save(busCustomerCardpipy);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id1 : ids) {
            busCustomerCardpipyRepository.deleteById(id1);
        }
    }

    @Override
    public void download(List<BusCustomerCardpipyDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusCustomerCardpipyDto busCustomerCardpipy : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("信息记录类型", busCustomerCardpipy.getInfrectype());
            map.put("姓名", busCustomerCardpipy.getName());
            map.put("证件类型", busCustomerCardpipy.getIdtype());
            map.put("证件号码", busCustomerCardpipy.getIdnum());
            map.put("信息来源编码", busCustomerCardpipy.getInfsurccode());
            map.put("证件有效期起始日期", busCustomerCardpipy.getIdefctdate());
            map.put("证件有效期到期日期", busCustomerCardpipy.getIdduedate());
            map.put("证件签发机关名称", busCustomerCardpipy.getIdorgname());
            map.put("֤证件签发机关所在地行政区划", busCustomerCardpipy.getIddist());
            map.put("客户资料维护机构代码", busCustomerCardpipy.getCimoc());
            map.put("信息报告日期", busCustomerCardpipy.getRptdate());
            map.put("客户编码", busCustomerCardpipy.getCustomerid());
            map.put("上报日期", busCustomerCardpipy.getUploaddate());
            map.put("上报标识", busCustomerCardpipy.getUploadflag());
            map.put("create_time", busCustomerCardpipy.getUreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}