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

import me.zhengjie.modules.contract.domain.BusInctrctinfCtrctbssgmt;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.contract.repository.BusInctrctinfCtrctbssgmtRepository;
import me.zhengjie.modules.contract.service.BusInctrctinfCtrctbssgmtService;
import me.zhengjie.modules.contract.service.dto.BusInctrctinfCtrctbssgmtDto;
import me.zhengjie.modules.contract.service.dto.BusInctrctinfCtrctbssgmtQueryCriteria;
import me.zhengjie.modules.contract.service.mapstruct.BusInctrctinfCtrctbssgmtMapper;
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
public class BusInctrctinfCtrctbssgmtServiceImpl implements BusInctrctinfCtrctbssgmtService {

    private final BusInctrctinfCtrctbssgmtRepository busInctrctinfCtrctbssgmtRepository;
    private final BusInctrctinfCtrctbssgmtMapper busInctrctinfCtrctbssgmtMapper;

    @Override
    public Map<String,Object> queryAll(BusInctrctinfCtrctbssgmtQueryCriteria criteria, Pageable pageable){
        Page<BusInctrctinfCtrctbssgmt> page = busInctrctinfCtrctbssgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busInctrctinfCtrctbssgmtMapper::toDto));
    }

    @Override
    public List<BusInctrctinfCtrctbssgmtDto> queryAll(BusInctrctinfCtrctbssgmtQueryCriteria criteria){
        return busInctrctinfCtrctbssgmtMapper.toDto(busInctrctinfCtrctbssgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusInctrctinfCtrctbssgmtDto findById(Long id) {
        BusInctrctinfCtrctbssgmt busInctrctinfCtrctbssgmt = busInctrctinfCtrctbssgmtRepository.findById(id).orElseGet(BusInctrctinfCtrctbssgmt::new);
        ValidationUtil.isNull(busInctrctinfCtrctbssgmt.getId(),"BusInctrctinfCtrctbssgmt","id",id);
        return busInctrctinfCtrctbssgmtMapper.toDto(busInctrctinfCtrctbssgmt);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusInctrctinfCtrctbssgmtDto create(BusInctrctinfCtrctbssgmt resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busInctrctinfCtrctbssgmtMapper.toDto(busInctrctinfCtrctbssgmtRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusInctrctinfCtrctbssgmt resources) {
        BusInctrctinfCtrctbssgmt busInctrctinfCtrctbssgmt = busInctrctinfCtrctbssgmtRepository.findById(resources.getId()).orElseGet(BusInctrctinfCtrctbssgmt::new);
        ValidationUtil.isNull( busInctrctinfCtrctbssgmt.getId(),"BusInctrctinfCtrctbssgmt","id",resources.getId());
        busInctrctinfCtrctbssgmt.copy(resources);
        busInctrctinfCtrctbssgmtRepository.save(busInctrctinfCtrctbssgmt);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busInctrctinfCtrctbssgmtRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusInctrctinfCtrctbssgmtDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusInctrctinfCtrctbssgmtDto busInctrctinfCtrctbssgmt : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("授信协议编号", busInctrctinfCtrctbssgmt.getInctrctinfid());
            map.put("对应业务操作的主键", busInctrctinfCtrctbssgmt.getBusId());
            map.put("信息记录类型", busInctrctinfCtrctbssgmt.getInfrectype());
            map.put("授信协议标识码", busInctrctinfCtrctbssgmt.getContractcode());
            map.put("信息报告日期", busInctrctinfCtrctbssgmt.getRptdate());
            map.put("报告时点说明代码", busInctrctinfCtrctbssgmt.getRptdatecode());
            map.put("姓名", busInctrctinfCtrctbssgmt.getName());
            map.put("证件类型", busInctrctinfCtrctbssgmt.getIdtype());
            map.put("证件号码", busInctrctinfCtrctbssgmt.getIdnum());
            map.put("业务管理机构代码", busInctrctinfCtrctbssgmt.getMngmtorgcode());
            map.put("上报状态", busInctrctinfCtrctbssgmt.getUploadstatus());
            map.put("上报标识", busInctrctinfCtrctbssgmt.getUploadflag());
            map.put(" createTime",  busInctrctinfCtrctbssgmt.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}