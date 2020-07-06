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
package me.zhengjie.modules.custominfo.service.impl;

import me.zhengjie.modules.custominfo.domain.BusDelCustomerInfo;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.custominfo.repository.BusDelCustomerInfoRepository;
import me.zhengjie.modules.custominfo.service.BusDelCustomerInfoService;
import me.zhengjie.modules.custominfo.service.dto.BusDelCustomerInfoDto;
import me.zhengjie.modules.custominfo.service.dto.BusDelCustomerInfoQueryCriteria;
import me.zhengjie.modules.custominfo.service.mapstruct.BusDelCustomerInfoMapper;
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
* @date 2020-06-29
**/
@Service
@RequiredArgsConstructor
public class BusDelCustomerInfoServiceImpl implements BusDelCustomerInfoService {

    private final BusDelCustomerInfoRepository busDelCustomerInfoRepository;
    private final BusDelCustomerInfoMapper busDelCustomerInfoMapper;

    @Override
    public Map<String,Object> queryAll(BusDelCustomerInfoQueryCriteria criteria, Pageable pageable){
        Page<BusDelCustomerInfo> page = busDelCustomerInfoRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busDelCustomerInfoMapper::toDto));
    }

    @Override
    public List<BusDelCustomerInfoDto> queryAll(BusDelCustomerInfoQueryCriteria criteria){
        return busDelCustomerInfoMapper.toDto(busDelCustomerInfoRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusDelCustomerInfoDto findById(Long id) {
        BusDelCustomerInfo busDelCustomerInfo = busDelCustomerInfoRepository.findById(id).orElseGet(BusDelCustomerInfo::new);
        ValidationUtil.isNull(busDelCustomerInfo.getId(),"BusDelCustomerInfo","id",id);
        return busDelCustomerInfoMapper.toDto(busDelCustomerInfo);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusDelCustomerInfoDto create(BusDelCustomerInfo resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busDelCustomerInfoMapper.toDto(busDelCustomerInfoRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusDelCustomerInfo resources) {
        BusDelCustomerInfo busDelCustomerInfo = busDelCustomerInfoRepository.findById(resources.getId()).orElseGet(BusDelCustomerInfo::new);
        ValidationUtil.isNull( busDelCustomerInfo.getId(),"BusDelCustomerInfo","id",resources.getId());
        busDelCustomerInfo.copy(resources);
        busDelCustomerInfoRepository.save(busDelCustomerInfo);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busDelCustomerInfoRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusDelCustomerInfoDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusDelCustomerInfoDto busDelCustomerInfo : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("信息记录类型", busDelCustomerInfo.getInfrectype());
            map.put("姓名", busDelCustomerInfo.getName());
            map.put("证件类型", busDelCustomerInfo.getIdtype());
            map.put("证件号码", busDelCustomerInfo.getIdnum());
            map.put("信息来源编码", busDelCustomerInfo.getInfsurccode());
            map.put("客户编号", busDelCustomerInfo.getCustomerid());
            map.put("上传日期", busDelCustomerInfo.getUploaddate());
            map.put("状态", busDelCustomerInfo.getStatus());
            map.put("create_time", busDelCustomerInfo.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}