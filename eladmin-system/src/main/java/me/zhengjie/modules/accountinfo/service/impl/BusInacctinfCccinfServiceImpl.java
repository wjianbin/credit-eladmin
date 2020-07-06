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
package me.zhengjie.modules.accountinfo.service.impl;

import me.zhengjie.modules.accountinfo.domain.BusInacctinfCccinf;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.accountinfo.repository.BusInacctinfCccinfRepository;
import me.zhengjie.modules.accountinfo.service.BusInacctinfCccinfService;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfCccinfDto;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfCccinfQueryCriteria;
import me.zhengjie.modules.accountinfo.service.mapstruct.BusInacctinfCccinfMapper;
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
* @date 2020-07-01
**/
@Service
@RequiredArgsConstructor
public class BusInacctinfCccinfServiceImpl implements BusInacctinfCccinfService {

    private final BusInacctinfCccinfRepository busInacctinfCccinfRepository;
    private final BusInacctinfCccinfMapper busInacctinfCccinfMapper;

    @Override
    public Map<String,Object> queryAll(BusInacctinfCccinfQueryCriteria criteria, Pageable pageable){
        Page<BusInacctinfCccinf> page = busInacctinfCccinfRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busInacctinfCccinfMapper::toDto));
    }

    @Override
    public List<BusInacctinfCccinfDto> queryAll(BusInacctinfCccinfQueryCriteria criteria){
        return busInacctinfCccinfMapper.toDto(busInacctinfCccinfRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusInacctinfCccinfDto findById(Long id) {
        BusInacctinfCccinf busInacctinfCccinf = busInacctinfCccinfRepository.findById(id).orElseGet(BusInacctinfCccinf::new);
        ValidationUtil.isNull(busInacctinfCccinf.getId(),"BusInacctinfCccinf","id",id);
        return busInacctinfCccinfMapper.toDto(busInacctinfCccinf);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusInacctinfCccinfDto create(BusInacctinfCccinf resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busInacctinfCccinfMapper.toDto(busInacctinfCccinfRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusInacctinfCccinf resources) {
        BusInacctinfCccinf busInacctinfCccinf = busInacctinfCccinfRepository.findById(resources.getId()).orElseGet(BusInacctinfCccinf::new);
        ValidationUtil.isNull( busInacctinfCccinf.getId(),"BusInacctinfCccinf","id",resources.getId());
        busInacctinfCccinf.copy(resources);
        busInacctinfCccinfRepository.save(busInacctinfCccinf);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busInacctinfCccinfRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusInacctinfCccinfDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusInacctinfCccinfDto busInacctinfCccinf : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("id", busInacctinfCccinf.getGuaId());
            map.put("抵（质）押合同标识码", busInacctinfCccinf.getCcc());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}