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

import me.zhengjie.modules.accountinfo.domain.BusInacctinfCagoftrdinf;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.accountinfo.repository.BusInacctinfCagoftrdinfRepository;
import me.zhengjie.modules.accountinfo.service.BusInacctinfCagoftrdinfService;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfCagoftrdinfDto;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfCagoftrdinfQueryCriteria;
import me.zhengjie.modules.accountinfo.service.mapstruct.BusInacctinfCagoftrdinfMapper;
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
public class BusInacctinfCagoftrdinfServiceImpl implements BusInacctinfCagoftrdinfService {

    private final BusInacctinfCagoftrdinfRepository busInacctinfCagoftrdinfRepository;
    private final BusInacctinfCagoftrdinfMapper busInacctinfCagoftrdinfMapper;

    @Override
    public Map<String,Object> queryAll(BusInacctinfCagoftrdinfQueryCriteria criteria, Pageable pageable){
        Page<BusInacctinfCagoftrdinf> page = busInacctinfCagoftrdinfRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busInacctinfCagoftrdinfMapper::toDto));
    }

    @Override
    public List<BusInacctinfCagoftrdinfDto> queryAll(BusInacctinfCagoftrdinfQueryCriteria criteria){
        return busInacctinfCagoftrdinfMapper.toDto(busInacctinfCagoftrdinfRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusInacctinfCagoftrdinfDto findById(Long id) {
        BusInacctinfCagoftrdinf busInacctinfCagoftrdinf = busInacctinfCagoftrdinfRepository.findById(id).orElseGet(BusInacctinfCagoftrdinf::new);
        ValidationUtil.isNull(busInacctinfCagoftrdinf.getId(),"BusInacctinfCagoftrdinf","id",id);
        return busInacctinfCagoftrdinfMapper.toDto(busInacctinfCagoftrdinf);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusInacctinfCagoftrdinfDto create(BusInacctinfCagoftrdinf resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busInacctinfCagoftrdinfMapper.toDto(busInacctinfCagoftrdinfRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusInacctinfCagoftrdinf resources) {
        BusInacctinfCagoftrdinf busInacctinfCagoftrdinf = busInacctinfCagoftrdinfRepository.findById(resources.getId()).orElseGet(BusInacctinfCagoftrdinf::new);
        ValidationUtil.isNull( busInacctinfCagoftrdinf.getId(),"BusInacctinfCagoftrdinf","id",resources.getId());
        busInacctinfCagoftrdinf.copy(resources);
        busInacctinfCagoftrdinfRepository.save(busInacctinfCagoftrdinf);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busInacctinfCagoftrdinfRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusInacctinfCagoftrdinfDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusInacctinfCagoftrdinfDto busInacctinfCagoftrdinf : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("特殊交_id", busInacctinfCagoftrdinf.getAccId());
            map.put("交易类型", busInacctinfCagoftrdinf.getChantrantype());
            map.put("交易日期", busInacctinfCagoftrdinf.getTrandate());
            map.put("交易金额", busInacctinfCagoftrdinf.getTranamt());
            map.put("到期日期变更月数", busInacctinfCagoftrdinf.getDuetranmon());
            map.put("交易明细信息", busInacctinfCagoftrdinf.getDetinfo());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}