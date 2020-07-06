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

import me.zhengjie.modules.accountinfo.domain.BusInacctinfAcctcredsgmt;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.accountinfo.repository.BusInacctinfAcctcredsgmtRepository;
import me.zhengjie.modules.accountinfo.service.BusInacctinfAcctcredsgmtService;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfAcctcredsgmtDto;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfAcctcredsgmtQueryCriteria;
import me.zhengjie.modules.accountinfo.service.mapstruct.BusInacctinfAcctcredsgmtMapper;
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
public class BusInacctinfAcctcredsgmtServiceImpl implements BusInacctinfAcctcredsgmtService {

    private final BusInacctinfAcctcredsgmtRepository busInacctinfAcctcredsgmtRepository;
    private final BusInacctinfAcctcredsgmtMapper busInacctinfAcctcredsgmtMapper;

    @Override
    public Map<String,Object> queryAll(BusInacctinfAcctcredsgmtQueryCriteria criteria, Pageable pageable){
        Page<BusInacctinfAcctcredsgmt> page = busInacctinfAcctcredsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busInacctinfAcctcredsgmtMapper::toDto));
    }

    @Override
    public List<BusInacctinfAcctcredsgmtDto> queryAll(BusInacctinfAcctcredsgmtQueryCriteria criteria){
        return busInacctinfAcctcredsgmtMapper.toDto(busInacctinfAcctcredsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusInacctinfAcctcredsgmtDto findById(Long id) {
        BusInacctinfAcctcredsgmt busInacctinfAcctcredsgmt = busInacctinfAcctcredsgmtRepository.findById(id).orElseGet(BusInacctinfAcctcredsgmt::new);
        ValidationUtil.isNull(busInacctinfAcctcredsgmt.getId(),"BusInacctinfAcctcredsgmt","id",id);
        return busInacctinfAcctcredsgmtMapper.toDto(busInacctinfAcctcredsgmt);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusInacctinfAcctcredsgmtDto create(BusInacctinfAcctcredsgmt resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busInacctinfAcctcredsgmtMapper.toDto(busInacctinfAcctcredsgmtRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusInacctinfAcctcredsgmt resources) {
        BusInacctinfAcctcredsgmt busInacctinfAcctcredsgmt = busInacctinfAcctcredsgmtRepository.findById(resources.getId()).orElseGet(BusInacctinfAcctcredsgmt::new);
        ValidationUtil.isNull( busInacctinfAcctcredsgmt.getId(),"BusInacctinfAcctcredsgmt","id",resources.getId());
        busInacctinfAcctcredsgmt.copy(resources);
        busInacctinfAcctcredsgmtRepository.save(busInacctinfAcctcredsgmt);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busInacctinfAcctcredsgmtRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusInacctinfAcctcredsgmtDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusInacctinfAcctcredsgmtDto busInacctinfAcctcredsgmt : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("借据编号", busInacctinfAcctcredsgmt.getAccloanid());
            map.put("对应业务操作的主键", busInacctinfAcctcredsgmt.getBusId());
            map.put("授信协议标识码", busInacctinfAcctcredsgmt.getMcc());
            map.put("上报状态", busInacctinfAcctcredsgmt.getUploadstatus());
            map.put("上报标识", busInacctinfAcctcredsgmt.getUploadflag());
            map.put(" createTime",  busInacctinfAcctcredsgmt.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}