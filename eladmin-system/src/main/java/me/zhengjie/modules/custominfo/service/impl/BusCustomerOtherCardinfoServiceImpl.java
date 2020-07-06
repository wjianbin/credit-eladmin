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

import me.zhengjie.modules.custominfo.domain.BusCustomerOtherCardinfo;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.custominfo.repository.BusCustomerOtherCardinfoRepository;
import me.zhengjie.modules.custominfo.service.BusCustomerOtherCardinfoService;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerOtherCardinfoDto;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerOtherCardinfoQueryCriteria;
import me.zhengjie.modules.custominfo.service.mapstruct.BusCustomerOtherCardinfoMapper;
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
public class BusCustomerOtherCardinfoServiceImpl implements BusCustomerOtherCardinfoService {

    private final BusCustomerOtherCardinfoRepository busCustomerOtherCardinfoRepository;
    private final BusCustomerOtherCardinfoMapper busCustomerOtherCardinfoMapper;

    @Override
    public Map<String,Object> queryAll(BusCustomerOtherCardinfoQueryCriteria criteria, Pageable pageable){
        Page<BusCustomerOtherCardinfo> page = busCustomerOtherCardinfoRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busCustomerOtherCardinfoMapper::toDto));
    }

    @Override
    public List<BusCustomerOtherCardinfoDto> queryAll(BusCustomerOtherCardinfoQueryCriteria criteria){
        return busCustomerOtherCardinfoMapper.toDto(busCustomerOtherCardinfoRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusCustomerOtherCardinfoDto findById(Long id) {
        BusCustomerOtherCardinfo busCustomerOtherCardinfo = busCustomerOtherCardinfoRepository.findById(id).orElseGet(BusCustomerOtherCardinfo::new);
        ValidationUtil.isNull(busCustomerOtherCardinfo.getId(),"BusCustomerOtherCardinfo","id",id);
        return busCustomerOtherCardinfoMapper.toDto(busCustomerOtherCardinfo);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusCustomerOtherCardinfoDto create(BusCustomerOtherCardinfo resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busCustomerOtherCardinfoMapper.toDto(busCustomerOtherCardinfoRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusCustomerOtherCardinfo resources) {
        BusCustomerOtherCardinfo busCustomerOtherCardinfo = busCustomerOtherCardinfoRepository.findById(resources.getId()).orElseGet(BusCustomerOtherCardinfo::new);
        ValidationUtil.isNull( busCustomerOtherCardinfo.getId(),"BusCustomerOtherCardinfo","id",resources.getId());
        busCustomerOtherCardinfo.copy(resources);
        busCustomerOtherCardinfoRepository.save(busCustomerOtherCardinfo);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busCustomerOtherCardinfoRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusCustomerOtherCardinfoDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusCustomerOtherCardinfoDto busCustomerOtherCardinfo : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("姓名", busCustomerOtherCardinfo.getAlias());
            map.put("证件类型", busCustomerOtherCardinfo.getOthidtype());
            map.put("证件号码", busCustomerOtherCardinfo.getOthidnum());
            map.put("信息更新日期", busCustomerOtherCardinfo.getIdinfoupdate());
            map.put("customerId", busCustomerOtherCardinfo.getCustomerid());
            map.put("create_time", busCustomerOtherCardinfo.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}