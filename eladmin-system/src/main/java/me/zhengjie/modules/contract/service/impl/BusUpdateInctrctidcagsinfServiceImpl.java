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
package me.zhengjie.modules.contract.service.impl;

import me.zhengjie.modules.contract.domain.BusUpdateInctrctidcagsinf;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.contract.repository.BusUpdateInctrctidcagsinfRepository;
import me.zhengjie.modules.contract.service.BusUpdateInctrctidcagsinfService;
import me.zhengjie.modules.contract.service.dto.BusUpdateInctrctidcagsinfDto;
import me.zhengjie.modules.contract.service.dto.BusUpdateInctrctidcagsinfQueryCriteria;
import me.zhengjie.modules.contract.service.mapstruct.BusUpdateInctrctidcagsinfMapper;
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
public class BusUpdateInctrctidcagsinfServiceImpl implements BusUpdateInctrctidcagsinfService {

    private final BusUpdateInctrctidcagsinfRepository busUpdateInctrctidcagsinfRepository;
    private final BusUpdateInctrctidcagsinfMapper busUpdateInctrctidcagsinfMapper;

    @Override
    public Map<String,Object> queryAll(BusUpdateInctrctidcagsinfQueryCriteria criteria, Pageable pageable){
        Page<BusUpdateInctrctidcagsinf> page = busUpdateInctrctidcagsinfRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busUpdateInctrctidcagsinfMapper::toDto));
    }

    @Override
    public List<BusUpdateInctrctidcagsinfDto> queryAll(BusUpdateInctrctidcagsinfQueryCriteria criteria){
        return busUpdateInctrctidcagsinfMapper.toDto(busUpdateInctrctidcagsinfRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusUpdateInctrctidcagsinfDto findById(Long id) {
        BusUpdateInctrctidcagsinf busUpdateInctrctidcagsinf = busUpdateInctrctidcagsinfRepository.findById(id).orElseGet(BusUpdateInctrctidcagsinf::new);
        ValidationUtil.isNull(busUpdateInctrctidcagsinf.getId(),"BusUpdateInctrctidcagsinf","id",id);
        return busUpdateInctrctidcagsinfMapper.toDto(busUpdateInctrctidcagsinf);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusUpdateInctrctidcagsinfDto create(BusUpdateInctrctidcagsinf resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busUpdateInctrctidcagsinfMapper.toDto(busUpdateInctrctidcagsinfRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusUpdateInctrctidcagsinf resources) {
        BusUpdateInctrctidcagsinf busUpdateInctrctidcagsinf = busUpdateInctrctidcagsinfRepository.findById(resources.getId()).orElseGet(BusUpdateInctrctidcagsinf::new);
        ValidationUtil.isNull( busUpdateInctrctidcagsinf.getId(),"BusUpdateInctrctidcagsinf","id",resources.getId());
        busUpdateInctrctidcagsinf.copy(resources);
        busUpdateInctrctidcagsinfRepository.save(busUpdateInctrctidcagsinf);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busUpdateInctrctidcagsinfRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusUpdateInctrctidcagsinfDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusUpdateInctrctidcagsinfDto busUpdateInctrctidcagsinf : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("授信协议编号", busUpdateInctrctidcagsinf.getInctrctinfid());
            map.put("信息记录类型", busUpdateInctrctidcagsinf.getInfrectype());
            map.put("原业务标识码", busUpdateInctrctidcagsinf.getOdbnescode());
            map.put("新业务标识码", busUpdateInctrctidcagsinf.getNwbnescode());
            map.put("上报状态", busUpdateInctrctidcagsinf.getUploadstatus());
            map.put("上报标识", busUpdateInctrctidcagsinf.getUploadflag());
            map.put(" createTime",  busUpdateInctrctidcagsinf.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}