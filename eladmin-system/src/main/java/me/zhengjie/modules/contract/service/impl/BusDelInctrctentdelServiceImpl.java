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

import me.zhengjie.modules.contract.domain.BusDelInctrctentdel;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.contract.repository.BusDelInctrctentdelRepository;
import me.zhengjie.modules.contract.service.BusDelInctrctentdelService;
import me.zhengjie.modules.contract.service.dto.BusDelInctrctentdelDto;
import me.zhengjie.modules.contract.service.dto.BusDelInctrctentdelQueryCriteria;
import me.zhengjie.modules.contract.service.mapstruct.BusDelInctrctentdelMapper;
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
public class BusDelInctrctentdelServiceImpl implements BusDelInctrctentdelService {

    private final BusDelInctrctentdelRepository busDelInctrctentdelRepository;
    private final BusDelInctrctentdelMapper busDelInctrctentdelMapper;

    @Override
    public Map<String,Object> queryAll(BusDelInctrctentdelQueryCriteria criteria, Pageable pageable){
        Page<BusDelInctrctentdel> page = busDelInctrctentdelRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busDelInctrctentdelMapper::toDto));
    }

    @Override
    public List<BusDelInctrctentdelDto> queryAll(BusDelInctrctentdelQueryCriteria criteria){
        return busDelInctrctentdelMapper.toDto(busDelInctrctentdelRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusDelInctrctentdelDto findById(Long id) {
        BusDelInctrctentdel busDelInctrctentdel = busDelInctrctentdelRepository.findById(id).orElseGet(BusDelInctrctentdel::new);
        ValidationUtil.isNull(busDelInctrctentdel.getId(),"BusDelInctrctentdel","id",id);
        return busDelInctrctentdelMapper.toDto(busDelInctrctentdel);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusDelInctrctentdelDto create(BusDelInctrctentdel resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busDelInctrctentdelMapper.toDto(busDelInctrctentdelRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusDelInctrctentdel resources) {
        BusDelInctrctentdel busDelInctrctentdel = busDelInctrctentdelRepository.findById(resources.getId()).orElseGet(BusDelInctrctentdel::new);
        ValidationUtil.isNull( busDelInctrctentdel.getId(),"BusDelInctrctentdel","id",resources.getId());
        busDelInctrctentdel.copy(resources);
        busDelInctrctentdelRepository.save(busDelInctrctentdel);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busDelInctrctentdelRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusDelInctrctentdelDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusDelInctrctentdelDto busDelInctrctentdel : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("授信协议编号", busDelInctrctentdel.getInctrctinfid());
            map.put("信息记录类型", busDelInctrctentdel.getInfrectptp());
            map.put("待删除业务标识码", busDelInctrctentdel.getDelreccode());
            map.put("上报状态", busDelInctrctentdel.getUploadstatus());
            map.put("上报标识", busDelInctrctentdel.getUploadflag());
            map.put(" createTime",  busDelInctrctentdel.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}