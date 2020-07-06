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

import me.zhengjie.modules.contract.domain.BusUpdateInctrctinfbycode;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.contract.repository.BusUpdateInctrctinfbycodeRepository;
import me.zhengjie.modules.contract.service.BusUpdateInctrctinfbycodeService;
import me.zhengjie.modules.contract.service.dto.BusUpdateInctrctinfbycodeDto;
import me.zhengjie.modules.contract.service.dto.BusUpdateInctrctinfbycodeQueryCriteria;
import me.zhengjie.modules.contract.service.mapstruct.BusUpdateInctrctinfbycodeMapper;
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
public class BusUpdateInctrctinfbycodeServiceImpl implements BusUpdateInctrctinfbycodeService {

    private final BusUpdateInctrctinfbycodeRepository busUpdateInctrctinfbycodeRepository;
    private final BusUpdateInctrctinfbycodeMapper busUpdateInctrctinfbycodeMapper;

    @Override
    public Map<String,Object> queryAll(BusUpdateInctrctinfbycodeQueryCriteria criteria, Pageable pageable){
        Page<BusUpdateInctrctinfbycode> page = busUpdateInctrctinfbycodeRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busUpdateInctrctinfbycodeMapper::toDto));
    }

    @Override
    public List<BusUpdateInctrctinfbycodeDto> queryAll(BusUpdateInctrctinfbycodeQueryCriteria criteria){
        return busUpdateInctrctinfbycodeMapper.toDto(busUpdateInctrctinfbycodeRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusUpdateInctrctinfbycodeDto findById(Long id) {
        BusUpdateInctrctinfbycode busUpdateInctrctinfbycode = busUpdateInctrctinfbycodeRepository.findById(id).orElseGet(BusUpdateInctrctinfbycode::new);
        ValidationUtil.isNull(busUpdateInctrctinfbycode.getId(),"BusUpdateInctrctinfbycode","id",id);
        return busUpdateInctrctinfbycodeMapper.toDto(busUpdateInctrctinfbycode);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusUpdateInctrctinfbycodeDto create(BusUpdateInctrctinfbycode resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busUpdateInctrctinfbycodeMapper.toDto(busUpdateInctrctinfbycodeRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusUpdateInctrctinfbycode resources) {
        BusUpdateInctrctinfbycode busUpdateInctrctinfbycode = busUpdateInctrctinfbycodeRepository.findById(resources.getId()).orElseGet(BusUpdateInctrctinfbycode::new);
        ValidationUtil.isNull( busUpdateInctrctinfbycode.getId(),"BusUpdateInctrctinfbycode","id",resources.getId());
        busUpdateInctrctinfbycode.copy(resources);
        busUpdateInctrctinfbycodeRepository.save(busUpdateInctrctinfbycode);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busUpdateInctrctinfbycodeRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusUpdateInctrctinfbycodeDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusUpdateInctrctinfbycodeDto busUpdateInctrctinfbycode : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("借据编号", busUpdateInctrctinfbycode.getAccloanid());
            map.put("信息记录类型", busUpdateInctrctinfbycode.getInfrectype());
            map.put("待更正业务标识码", busUpdateInctrctinfbycode.getModreccode());
            map.put("信息报告日期", busUpdateInctrctinfbycode.getRptdate());
            map.put("待更正段段标", busUpdateInctrctinfbycode.getMdfcsgmtcode());
            map.put("上报状态", busUpdateInctrctinfbycode.getUploadstatus());
            map.put("上报标识", busUpdateInctrctinfbycode.getUploadflag());
            map.put(" createTime",  busUpdateInctrctinfbycode.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}