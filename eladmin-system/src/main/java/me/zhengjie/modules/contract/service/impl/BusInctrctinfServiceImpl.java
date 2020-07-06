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

import me.zhengjie.modules.contract.domain.BusInctrctinf;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.contract.repository.BusInctrctinfRepository;
import me.zhengjie.modules.contract.service.BusInctrctinfService;
import me.zhengjie.modules.contract.service.dto.BusInctrctinfDto;
import me.zhengjie.modules.contract.service.dto.BusInctrctinfQueryCriteria;
import me.zhengjie.modules.contract.service.mapstruct.BusInctrctinfMapper;
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
public class BusInctrctinfServiceImpl implements BusInctrctinfService {

    private final BusInctrctinfRepository busInctrctinfRepository;
    private final BusInctrctinfMapper busInctrctinfMapper;

    @Override
    public Map<String,Object> queryAll(BusInctrctinfQueryCriteria criteria, Pageable pageable){
        Page<BusInctrctinf> page = busInctrctinfRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busInctrctinfMapper::toDto));
    }

    @Override
    public List<BusInctrctinfDto> queryAll(BusInctrctinfQueryCriteria criteria){
        return busInctrctinfMapper.toDto(busInctrctinfRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusInctrctinfDto findById(Long id) {
        BusInctrctinf busInctrctinf = busInctrctinfRepository.findById(id).orElseGet(BusInctrctinf::new);
        ValidationUtil.isNull(busInctrctinf.getId(),"BusInctrctinf","id",id);
        return busInctrctinfMapper.toDto(busInctrctinf);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusInctrctinfDto create(BusInctrctinf resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busInctrctinfMapper.toDto(busInctrctinfRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusInctrctinf resources) {
        BusInctrctinf busInctrctinf = busInctrctinfRepository.findById(resources.getId()).orElseGet(BusInctrctinf::new);
        ValidationUtil.isNull( busInctrctinf.getId(),"BusInctrctinf","id",resources.getId());
        busInctrctinf.copy(resources);
        busInctrctinfRepository.save(busInctrctinf);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busInctrctinfRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusInctrctinfDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusInctrctinfDto busInctrctinf : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("授信协议编号", busInctrctinf.getInctrctinfid());
            map.put(" status",  busInctrctinf.getStatus());
            map.put(" inaccinfid",  busInctrctinf.getInaccinfid());
            map.put(" uploadtime",  busInctrctinf.getUploadtime());
            map.put(" createtime",  busInctrctinf.getCreatetime());
            map.put(" updatetime",  busInctrctinf.getUpdatetime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}