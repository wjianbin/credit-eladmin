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

import me.zhengjie.modules.accountinfo.domain.BusInacctinfOrigcreditorinfsgmt;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.accountinfo.repository.BusInacctinfOrigcreditorinfsgmtRepository;
import me.zhengjie.modules.accountinfo.service.BusInacctinfOrigcreditorinfsgmtService;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfOrigcreditorinfsgmtDto;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfOrigcreditorinfsgmtQueryCriteria;
import me.zhengjie.modules.accountinfo.service.mapstruct.BusInacctinfOrigcreditorinfsgmtMapper;
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
public class BusInacctinfOrigcreditorinfsgmtServiceImpl implements BusInacctinfOrigcreditorinfsgmtService {

    private final BusInacctinfOrigcreditorinfsgmtRepository busInacctinfOrigcreditorinfsgmtRepository;
    private final BusInacctinfOrigcreditorinfsgmtMapper busInacctinfOrigcreditorinfsgmtMapper;

    @Override
    public Map<String,Object> queryAll(BusInacctinfOrigcreditorinfsgmtQueryCriteria criteria, Pageable pageable){
        Page<BusInacctinfOrigcreditorinfsgmt> page = busInacctinfOrigcreditorinfsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busInacctinfOrigcreditorinfsgmtMapper::toDto));
    }

    @Override
    public List<BusInacctinfOrigcreditorinfsgmtDto> queryAll(BusInacctinfOrigcreditorinfsgmtQueryCriteria criteria){
        return busInacctinfOrigcreditorinfsgmtMapper.toDto(busInacctinfOrigcreditorinfsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusInacctinfOrigcreditorinfsgmtDto findById(Long id) {
        BusInacctinfOrigcreditorinfsgmt busInacctinfOrigcreditorinfsgmt = busInacctinfOrigcreditorinfsgmtRepository.findById(id).orElseGet(BusInacctinfOrigcreditorinfsgmt::new);
        ValidationUtil.isNull(busInacctinfOrigcreditorinfsgmt.getId(),"BusInacctinfOrigcreditorinfsgmt","id",id);
        return busInacctinfOrigcreditorinfsgmtMapper.toDto(busInacctinfOrigcreditorinfsgmt);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusInacctinfOrigcreditorinfsgmtDto create(BusInacctinfOrigcreditorinfsgmt resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busInacctinfOrigcreditorinfsgmtMapper.toDto(busInacctinfOrigcreditorinfsgmtRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusInacctinfOrigcreditorinfsgmt resources) {
        BusInacctinfOrigcreditorinfsgmt busInacctinfOrigcreditorinfsgmt = busInacctinfOrigcreditorinfsgmtRepository.findById(resources.getId()).orElseGet(BusInacctinfOrigcreditorinfsgmt::new);
        ValidationUtil.isNull( busInacctinfOrigcreditorinfsgmt.getId(),"BusInacctinfOrigcreditorinfsgmt","id",resources.getId());
        busInacctinfOrigcreditorinfsgmt.copy(resources);
        busInacctinfOrigcreditorinfsgmtRepository.save(busInacctinfOrigcreditorinfsgmt);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busInacctinfOrigcreditorinfsgmtRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusInacctinfOrigcreditorinfsgmtDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusInacctinfOrigcreditorinfsgmtDto busInacctinfOrigcreditorinfsgmt : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("借据编号", busInacctinfOrigcreditorinfsgmt.getAccloanid());
            map.put("对应业务操作的主键", busInacctinfOrigcreditorinfsgmt.getBusId());
            map.put("初始债权人名称", busInacctinfOrigcreditorinfsgmt.getInitcredname());
            map.put("初始债权人机构代码", busInacctinfOrigcreditorinfsgmt.getInitcredorgnm());
            map.put("原债务种类", busInacctinfOrigcreditorinfsgmt.getOrigdbtcate());
            map.put("债权转移时的还款状态", busInacctinfOrigcreditorinfsgmt.getInitrpysts());
            map.put("上报状态", busInacctinfOrigcreditorinfsgmt.getUploadstatus());
            map.put("上报标识", busInacctinfOrigcreditorinfsgmt.getUploadflag());
            map.put(" createTime",  busInacctinfOrigcreditorinfsgmt.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}