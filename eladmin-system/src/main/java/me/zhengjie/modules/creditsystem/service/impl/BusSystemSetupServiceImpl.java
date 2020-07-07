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
package me.zhengjie.modules.creditsystem.service.impl;

import me.zhengjie.modules.creditsystem.domain.BusSystemSetup;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.creditsystem.repository.BusSystemSetupRepository;
import me.zhengjie.modules.creditsystem.service.BusSystemSetupService;
import me.zhengjie.modules.creditsystem.service.dto.BusSystemSetupDto;
import me.zhengjie.modules.creditsystem.service.dto.BusSystemSetupQueryCriteria;
import me.zhengjie.modules.creditsystem.service.mapstruct.BusSystemSetupMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
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
* @date 2020-07-07
**/
@Service
@RequiredArgsConstructor
public class BusSystemSetupServiceImpl implements BusSystemSetupService {

    private final BusSystemSetupRepository busSystemSetupRepository;
    private final BusSystemSetupMapper busSystemSetupMapper;

    @Override
    public Map<String,Object> queryAll(BusSystemSetupQueryCriteria criteria, Pageable pageable){
        Page<BusSystemSetup> page = busSystemSetupRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busSystemSetupMapper::toDto));
    }

    @Override
    public List<BusSystemSetupDto> queryAll(BusSystemSetupQueryCriteria criteria){
        return busSystemSetupMapper.toDto(busSystemSetupRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusSystemSetupDto findById(Long id) {
        BusSystemSetup busSystemSetup = busSystemSetupRepository.findById(id).orElseGet(BusSystemSetup::new);
        ValidationUtil.isNull(busSystemSetup.getId(),"BusSystemSetup","id",id);
        return busSystemSetupMapper.toDto(busSystemSetup);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusSystemSetupDto create(BusSystemSetup resources) {
        return busSystemSetupMapper.toDto(busSystemSetupRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusSystemSetup resources) {
        BusSystemSetup busSystemSetup = busSystemSetupRepository.findById(resources.getId()).orElseGet(BusSystemSetup::new);
        ValidationUtil.isNull( busSystemSetup.getId(),"BusSystemSetup","id",resources.getId());
        busSystemSetup.copy(resources);
        busSystemSetupRepository.save(busSystemSetup);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busSystemSetupRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusSystemSetupDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusSystemSetupDto busSystemSetup : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("实际日期", busSystemSetup.getBusinessdate());
            map.put("任务执行日期", busSystemSetup.getBatchdate());
            map.put("状态", busSystemSetup.getStatus());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}