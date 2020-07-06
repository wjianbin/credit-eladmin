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

import me.zhengjie.modules.accountinfo.domain.BusUpdateInacctidcagsinf;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.accountinfo.repository.BusUpdateInacctidcagsinfRepository;
import me.zhengjie.modules.accountinfo.service.BusUpdateInacctidcagsinfService;
import me.zhengjie.modules.accountinfo.service.dto.BusUpdateInacctidcagsinfDto;
import me.zhengjie.modules.accountinfo.service.dto.BusUpdateInacctidcagsinfQueryCriteria;
import me.zhengjie.modules.accountinfo.service.mapstruct.BusUpdateInacctidcagsinfMapper;
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
public class BusUpdateInacctidcagsinfServiceImpl implements BusUpdateInacctidcagsinfService {

    private final BusUpdateInacctidcagsinfRepository busUpdateInacctidcagsinfRepository;
    private final BusUpdateInacctidcagsinfMapper busUpdateInacctidcagsinfMapper;

    @Override
    public Map<String,Object> queryAll(BusUpdateInacctidcagsinfQueryCriteria criteria, Pageable pageable){
        Page<BusUpdateInacctidcagsinf> page = busUpdateInacctidcagsinfRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busUpdateInacctidcagsinfMapper::toDto));
    }

    @Override
    public List<BusUpdateInacctidcagsinfDto> queryAll(BusUpdateInacctidcagsinfQueryCriteria criteria){
        return busUpdateInacctidcagsinfMapper.toDto(busUpdateInacctidcagsinfRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusUpdateInacctidcagsinfDto findById(Long id) {
        BusUpdateInacctidcagsinf busUpdateInacctidcagsinf = busUpdateInacctidcagsinfRepository.findById(id).orElseGet(BusUpdateInacctidcagsinf::new);
        ValidationUtil.isNull(busUpdateInacctidcagsinf.getId(),"BusUpdateInacctidcagsinf","id",id);
        return busUpdateInacctidcagsinfMapper.toDto(busUpdateInacctidcagsinf);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusUpdateInacctidcagsinfDto create(BusUpdateInacctidcagsinf resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busUpdateInacctidcagsinfMapper.toDto(busUpdateInacctidcagsinfRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusUpdateInacctidcagsinf resources) {
        BusUpdateInacctidcagsinf busUpdateInacctidcagsinf = busUpdateInacctidcagsinfRepository.findById(resources.getId()).orElseGet(BusUpdateInacctidcagsinf::new);
        ValidationUtil.isNull( busUpdateInacctidcagsinf.getId(),"BusUpdateInacctidcagsinf","id",resources.getId());
        busUpdateInacctidcagsinf.copy(resources);
        busUpdateInacctidcagsinfRepository.save(busUpdateInacctidcagsinf);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busUpdateInacctidcagsinfRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusUpdateInacctidcagsinfDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusUpdateInacctidcagsinfDto busUpdateInacctidcagsinf : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("借据编号", busUpdateInacctidcagsinf.getAccloanid());
            map.put("信息记录类型", busUpdateInacctidcagsinf.getInfrectype());
            map.put("原业务标识码", busUpdateInacctidcagsinf.getOdbnescode());
            map.put("新业务标识码-", busUpdateInacctidcagsinf.getNwbnescode());
            map.put("上报状态", busUpdateInacctidcagsinf.getUploadstatus());
            map.put("上报标识", busUpdateInacctidcagsinf.getUploadflag());
            map.put(" createTime",  busUpdateInacctidcagsinf.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}