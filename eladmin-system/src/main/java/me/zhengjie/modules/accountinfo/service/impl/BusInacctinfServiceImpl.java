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

import me.zhengjie.modules.accountinfo.domain.BusInacctinf;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.accountinfo.repository.BusInacctinfRepository;
import me.zhengjie.modules.accountinfo.service.BusInacctinfService;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfDto;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfQueryCriteria;
import me.zhengjie.modules.accountinfo.service.mapstruct.BusInacctinfMapper;
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
public class BusInacctinfServiceImpl implements BusInacctinfService {

    private final BusInacctinfRepository busInacctinfRepository;
    private final BusInacctinfMapper busInacctinfMapper;

    @Override
    public Map<String,Object> queryAll(BusInacctinfQueryCriteria criteria, Pageable pageable){
        Page<BusInacctinf> page = busInacctinfRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busInacctinfMapper::toDto));
    }

    @Override
    public List<BusInacctinfDto> queryAll(BusInacctinfQueryCriteria criteria){
        return busInacctinfMapper.toDto(busInacctinfRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusInacctinfDto findById(Long id) {
        BusInacctinf busInacctinf = busInacctinfRepository.findById(id).orElseGet(BusInacctinf::new);
        ValidationUtil.isNull(busInacctinf.getId(),"BusInacctinf","id",id);
        return busInacctinfMapper.toDto(busInacctinf);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusInacctinfDto create(BusInacctinf resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busInacctinfMapper.toDto(busInacctinfRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusInacctinf resources) {
        BusInacctinf busInacctinf = busInacctinfRepository.findById(resources.getId()).orElseGet(BusInacctinf::new);
        ValidationUtil.isNull( busInacctinf.getId(),"BusInacctinf","id",resources.getId());
        busInacctinf.copy(resources);
        busInacctinfRepository.save(busInacctinf);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busInacctinfRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusInacctinfDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusInacctinfDto busInacctinf : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("借据编号", busInacctinf.getAccloanid());
            map.put(" status",  busInacctinf.getStatus());
            map.put(" createtime",  busInacctinf.getCreatetime());
            map.put(" updatetime",  busInacctinf.getUpdatetime());
            map.put(" uploadtime",  busInacctinf.getUploadtime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}