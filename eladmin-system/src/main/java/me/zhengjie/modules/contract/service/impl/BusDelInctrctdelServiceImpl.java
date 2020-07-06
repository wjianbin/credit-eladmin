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

import me.zhengjie.modules.contract.domain.BusDelInctrctdel;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.contract.repository.BusDelInctrctdelRepository;
import me.zhengjie.modules.contract.service.BusDelInctrctdelService;
import me.zhengjie.modules.contract.service.dto.BusDelInctrctdelDto;
import me.zhengjie.modules.contract.service.dto.BusDelInctrctdelQueryCriteria;
import me.zhengjie.modules.contract.service.mapstruct.BusDelInctrctdelMapper;
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
public class BusDelInctrctdelServiceImpl implements BusDelInctrctdelService {

    private final BusDelInctrctdelRepository busDelInctrctdelRepository;
    private final BusDelInctrctdelMapper busDelInctrctdelMapper;

    @Override
    public Map<String,Object> queryAll(BusDelInctrctdelQueryCriteria criteria, Pageable pageable){
        Page<BusDelInctrctdel> page = busDelInctrctdelRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busDelInctrctdelMapper::toDto));
    }

    @Override
    public List<BusDelInctrctdelDto> queryAll(BusDelInctrctdelQueryCriteria criteria){
        return busDelInctrctdelMapper.toDto(busDelInctrctdelRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusDelInctrctdelDto findById(Long id) {
        BusDelInctrctdel busDelInctrctdel = busDelInctrctdelRepository.findById(id).orElseGet(BusDelInctrctdel::new);
        ValidationUtil.isNull(busDelInctrctdel.getId(),"BusDelInctrctdel","id",id);
        return busDelInctrctdelMapper.toDto(busDelInctrctdel);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusDelInctrctdelDto create(BusDelInctrctdel resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busDelInctrctdelMapper.toDto(busDelInctrctdelRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusDelInctrctdel resources) {
        BusDelInctrctdel busDelInctrctdel = busDelInctrctdelRepository.findById(resources.getId()).orElseGet(BusDelInctrctdel::new);
        ValidationUtil.isNull( busDelInctrctdel.getId(),"BusDelInctrctdel","id",resources.getId());
        busDelInctrctdel.copy(resources);
        busDelInctrctdelRepository.save(busDelInctrctdel);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busDelInctrctdelRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusDelInctrctdelDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusDelInctrctdelDto busDelInctrctdel : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("授信协议编号", busDelInctrctdel.getInctrctinfid());
            map.put("信息记录类型", busDelInctrctdel.getInfrectype());
            map.put("待删除业务标识码", busDelInctrctdel.getDelreccode());
            map.put("待删除段段标", busDelInctrctdel.getDelsgmtcode());
            map.put("待删除起始日期", busDelInctrctdel.getDelstartdate());
            map.put("待删除结束日期", busDelInctrctdel.getDelenddate());
            map.put("上报状态", busDelInctrctdel.getUploadstatus());
            map.put("上报标识", busDelInctrctdel.getUploadflag());
            map.put("create_time", busDelInctrctdel.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}