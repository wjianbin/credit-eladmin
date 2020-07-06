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

import me.zhengjie.modules.custominfo.domain.BusCustomerRelationship;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.custominfo.repository.BusCustomerRelationshipRepository;
import me.zhengjie.modules.custominfo.service.BusCustomerRelationshipService;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerRelationshipDto;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerRelationshipQueryCriteria;
import me.zhengjie.modules.custominfo.service.mapstruct.BusCustomerRelationshipMapper;
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
public class BusCustomerRelationshipServiceImpl implements BusCustomerRelationshipService {

    private final BusCustomerRelationshipRepository busCustomerRelationshipRepository;
    private final BusCustomerRelationshipMapper busCustomerRelationshipMapper;

    @Override
    public Map<String,Object> queryAll(BusCustomerRelationshipQueryCriteria criteria, Pageable pageable){
        Page<BusCustomerRelationship> page = busCustomerRelationshipRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busCustomerRelationshipMapper::toDto));
    }

    @Override
    public List<BusCustomerRelationshipDto> queryAll(BusCustomerRelationshipQueryCriteria criteria){
        return busCustomerRelationshipMapper.toDto(busCustomerRelationshipRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusCustomerRelationshipDto findById(Long id) {
        BusCustomerRelationship busCustomerRelationship = busCustomerRelationshipRepository.findById(id).orElseGet(BusCustomerRelationship::new);
        ValidationUtil.isNull(busCustomerRelationship.getId(),"BusCustomerRelationship","id",id);
        return busCustomerRelationshipMapper.toDto(busCustomerRelationship);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusCustomerRelationshipDto create(BusCustomerRelationship resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busCustomerRelationshipMapper.toDto(busCustomerRelationshipRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusCustomerRelationship resources) {
        BusCustomerRelationship busCustomerRelationship = busCustomerRelationshipRepository.findById(resources.getId()).orElseGet(BusCustomerRelationship::new);
        ValidationUtil.isNull( busCustomerRelationship.getId(),"BusCustomerRelationship","id",resources.getId());
        busCustomerRelationship.copy(resources);
        busCustomerRelationshipRepository.save(busCustomerRelationship);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busCustomerRelationshipRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusCustomerRelationshipDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusCustomerRelationshipDto busCustomerRelationship : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("信息记录类型", busCustomerRelationship.getInfrectype());
            map.put("A姓名", busCustomerRelationship.getName());
            map.put("A证件类型", busCustomerRelationship.getIdtype());
            map.put("A证件号码", busCustomerRelationship.getIdnum());
            map.put("B姓名", busCustomerRelationship.getFammemname());
            map.put("B证件类型", busCustomerRelationship.getFammemcerttype());
            map.put("B证件号码", busCustomerRelationship.getFammemcertnum());
            map.put("家族关系", busCustomerRelationship.getFamrel());
            map.put("家族关系有效标志", busCustomerRelationship.getFamrelaassflag());
            map.put("信息来源编码", busCustomerRelationship.getInfsurccode());
            map.put("信息报告日期", busCustomerRelationship.getRptdate());
            map.put("客户编号", busCustomerRelationship.getCustomerid());
            map.put("上报状态", busCustomerRelationship.getUploadstatus());
            map.put("上报标识", busCustomerRelationship.getUploadflag());
            map.put("记录日期", busCustomerRelationship.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}