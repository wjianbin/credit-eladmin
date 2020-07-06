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

import me.zhengjie.modules.contract.domain.BusInctrctinfCreditlimsgmt;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.contract.repository.BusInctrctinfCreditlimsgmtRepository;
import me.zhengjie.modules.contract.service.BusInctrctinfCreditlimsgmtService;
import me.zhengjie.modules.contract.service.dto.BusInctrctinfCreditlimsgmtDto;
import me.zhengjie.modules.contract.service.dto.BusInctrctinfCreditlimsgmtQueryCriteria;
import me.zhengjie.modules.contract.service.mapstruct.BusInctrctinfCreditlimsgmtMapper;
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
public class BusInctrctinfCreditlimsgmtServiceImpl implements BusInctrctinfCreditlimsgmtService {

    private final BusInctrctinfCreditlimsgmtRepository busInctrctinfCreditlimsgmtRepository;
    private final BusInctrctinfCreditlimsgmtMapper busInctrctinfCreditlimsgmtMapper;

    @Override
    public Map<String,Object> queryAll(BusInctrctinfCreditlimsgmtQueryCriteria criteria, Pageable pageable){
        Page<BusInctrctinfCreditlimsgmt> page = busInctrctinfCreditlimsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busInctrctinfCreditlimsgmtMapper::toDto));
    }

    @Override
    public List<BusInctrctinfCreditlimsgmtDto> queryAll(BusInctrctinfCreditlimsgmtQueryCriteria criteria){
        return busInctrctinfCreditlimsgmtMapper.toDto(busInctrctinfCreditlimsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusInctrctinfCreditlimsgmtDto findById(Long id) {
        BusInctrctinfCreditlimsgmt busInctrctinfCreditlimsgmt = busInctrctinfCreditlimsgmtRepository.findById(id).orElseGet(BusInctrctinfCreditlimsgmt::new);
        ValidationUtil.isNull(busInctrctinfCreditlimsgmt.getId(),"BusInctrctinfCreditlimsgmt","id",id);
        return busInctrctinfCreditlimsgmtMapper.toDto(busInctrctinfCreditlimsgmt);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusInctrctinfCreditlimsgmtDto create(BusInctrctinfCreditlimsgmt resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busInctrctinfCreditlimsgmtMapper.toDto(busInctrctinfCreditlimsgmtRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusInctrctinfCreditlimsgmt resources) {
        BusInctrctinfCreditlimsgmt busInctrctinfCreditlimsgmt = busInctrctinfCreditlimsgmtRepository.findById(resources.getId()).orElseGet(BusInctrctinfCreditlimsgmt::new);
        ValidationUtil.isNull( busInctrctinfCreditlimsgmt.getId(),"BusInctrctinfCreditlimsgmt","id",resources.getId());
        busInctrctinfCreditlimsgmt.copy(resources);
        busInctrctinfCreditlimsgmtRepository.save(busInctrctinfCreditlimsgmt);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busInctrctinfCreditlimsgmtRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusInctrctinfCreditlimsgmtDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusInctrctinfCreditlimsgmtDto busInctrctinfCreditlimsgmt : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("授信协议编号", busInctrctinfCreditlimsgmt.getInctrctinfid());
            map.put("对应业务操作的主键", busInctrctinfCreditlimsgmt.getBusId());
            map.put("授信额度类型", busInctrctinfCreditlimsgmt.getCreditlimtype());
            map.put("额度循环标志", busInctrctinfCreditlimsgmt.getLimloopflg());
            map.put("授信额度", busInctrctinfCreditlimsgmt.getCreditlim());
            map.put("币种", busInctrctinfCreditlimsgmt.getCy());
            map.put("额度生效日期", busInctrctinfCreditlimsgmt.getConeffdate());
            map.put("额度到期日期", busInctrctinfCreditlimsgmt.getConexpdate());
            map.put("额度状态", busInctrctinfCreditlimsgmt.getConstatus());
            map.put("授信限额", busInctrctinfCreditlimsgmt.getCreditrest());
            map.put("授信限额编号", busInctrctinfCreditlimsgmt.getCreditrestcode());
            map.put("上报状态", busInctrctinfCreditlimsgmt.getUploadstatus());
            map.put("上报标识", busInctrctinfCreditlimsgmt.getUploadflag());
            map.put(" createTime",  busInctrctinfCreditlimsgmt.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}