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

import me.zhengjie.modules.contract.domain.BusInctrctinfCtrctcertrel;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.contract.repository.BusInctrctinfCtrctcertrelRepository;
import me.zhengjie.modules.contract.service.BusInctrctinfCtrctcertrelService;
import me.zhengjie.modules.contract.service.dto.BusInctrctinfCtrctcertrelDto;
import me.zhengjie.modules.contract.service.dto.BusInctrctinfCtrctcertrelQueryCriteria;
import me.zhengjie.modules.contract.service.mapstruct.BusInctrctinfCtrctcertrelMapper;
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
public class BusInctrctinfCtrctcertrelServiceImpl implements BusInctrctinfCtrctcertrelService {

    private final BusInctrctinfCtrctcertrelRepository busInctrctinfCtrctcertrelRepository;
    private final BusInctrctinfCtrctcertrelMapper busInctrctinfCtrctcertrelMapper;

    @Override
    public Map<String,Object> queryAll(BusInctrctinfCtrctcertrelQueryCriteria criteria, Pageable pageable){
        Page<BusInctrctinfCtrctcertrel> page = busInctrctinfCtrctcertrelRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busInctrctinfCtrctcertrelMapper::toDto));
    }

    @Override
    public List<BusInctrctinfCtrctcertrelDto> queryAll(BusInctrctinfCtrctcertrelQueryCriteria criteria){
        return busInctrctinfCtrctcertrelMapper.toDto(busInctrctinfCtrctcertrelRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusInctrctinfCtrctcertrelDto findById(Long id) {
        BusInctrctinfCtrctcertrel busInctrctinfCtrctcertrel = busInctrctinfCtrctcertrelRepository.findById(id).orElseGet(BusInctrctinfCtrctcertrel::new);
        ValidationUtil.isNull(busInctrctinfCtrctcertrel.getId(),"BusInctrctinfCtrctcertrel","id",id);
        return busInctrctinfCtrctcertrelMapper.toDto(busInctrctinfCtrctcertrel);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusInctrctinfCtrctcertrelDto create(BusInctrctinfCtrctcertrel resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busInctrctinfCtrctcertrelMapper.toDto(busInctrctinfCtrctcertrelRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusInctrctinfCtrctcertrel resources) {
        BusInctrctinfCtrctcertrel busInctrctinfCtrctcertrel = busInctrctinfCtrctcertrelRepository.findById(resources.getId()).orElseGet(BusInctrctinfCtrctcertrel::new);
        ValidationUtil.isNull( busInctrctinfCtrctcertrel.getId(),"BusInctrctinfCtrctcertrel","id",resources.getId());
        busInctrctinfCtrctcertrel.copy(resources);
        busInctrctinfCtrctcertrelRepository.save(busInctrctinfCtrctcertrel);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busInctrctinfCtrctcertrelRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusInctrctinfCtrctcertrelDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusInctrctinfCtrctcertrelDto busInctrctinfCtrctcertrel : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("共同受_id", busInctrctinfCtrctcertrel.getCtrId());
            map.put("共同受信人身份类别", busInctrctinfCtrctcertrel.getBrertype());
            map.put("共同受信人名称", busInctrctinfCtrctcertrel.getCertrelname());
            map.put("共同受信人身份标识类型", busInctrctinfCtrctcertrel.getCertrelidtype());
            map.put("共同受信人身份标识号码", busInctrctinfCtrctcertrel.getCertrelidnum());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}