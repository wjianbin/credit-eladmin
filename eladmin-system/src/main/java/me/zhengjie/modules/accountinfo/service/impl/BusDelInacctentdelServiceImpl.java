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

import me.zhengjie.modules.accountinfo.domain.BusDelInacctentdel;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.accountinfo.repository.BusDelInacctentdelRepository;
import me.zhengjie.modules.accountinfo.service.BusDelInacctentdelService;
import me.zhengjie.modules.accountinfo.service.dto.BusDelInacctentdelDto;
import me.zhengjie.modules.accountinfo.service.dto.BusDelInacctentdelQueryCriteria;
import me.zhengjie.modules.accountinfo.service.mapstruct.BusDelInacctentdelMapper;
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
public class BusDelInacctentdelServiceImpl implements BusDelInacctentdelService {

    private final BusDelInacctentdelRepository busDelInacctentdelRepository;
    private final BusDelInacctentdelMapper busDelInacctentdelMapper;

    @Override
    public Map<String,Object> queryAll(BusDelInacctentdelQueryCriteria criteria, Pageable pageable){
        Page<BusDelInacctentdel> page = busDelInacctentdelRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busDelInacctentdelMapper::toDto));
    }

    @Override
    public List<BusDelInacctentdelDto> queryAll(BusDelInacctentdelQueryCriteria criteria){
        return busDelInacctentdelMapper.toDto(busDelInacctentdelRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusDelInacctentdelDto findById(Long id) {
        BusDelInacctentdel busDelInacctentdel = busDelInacctentdelRepository.findById(id).orElseGet(BusDelInacctentdel::new);
        ValidationUtil.isNull(busDelInacctentdel.getId(),"BusDelInacctentdel","id",id);
        return busDelInacctentdelMapper.toDto(busDelInacctentdel);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusDelInacctentdelDto create(BusDelInacctentdel resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busDelInacctentdelMapper.toDto(busDelInacctentdelRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusDelInacctentdel resources) {
        BusDelInacctentdel busDelInacctentdel = busDelInacctentdelRepository.findById(resources.getId()).orElseGet(BusDelInacctentdel::new);
        ValidationUtil.isNull( busDelInacctentdel.getId(),"BusDelInacctentdel","id",resources.getId());
        busDelInacctentdel.copy(resources);
        busDelInacctentdelRepository.save(busDelInacctentdel);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busDelInacctentdelRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusDelInacctentdelDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusDelInacctentdelDto busDelInacctentdel : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("借据编号", busDelInacctentdel.getAccloanid());
            map.put("信息记录类型", busDelInacctentdel.getInfrectype());
            map.put("待删除业务标识码", busDelInacctentdel.getDelreccode());
            map.put("上报状态", busDelInacctentdel.getUploadstatus());
            map.put("上报标识", busDelInacctentdel.getUploadflag());
            map.put("create_time", busDelInacctentdel.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}