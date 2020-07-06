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

import me.zhengjie.modules.accountinfo.domain.BusInacctinfAcctspectrstdspnsgmt;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.accountinfo.repository.BusInacctinfAcctspectrstdspnsgmtRepository;
import me.zhengjie.modules.accountinfo.service.BusInacctinfAcctspectrstdspnsgmtService;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfAcctspectrstdspnsgmtDto;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfAcctspectrstdspnsgmtQueryCriteria;
import me.zhengjie.modules.accountinfo.service.mapstruct.BusInacctinfAcctspectrstdspnsgmtMapper;
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
public class BusInacctinfAcctspectrstdspnsgmtServiceImpl implements BusInacctinfAcctspectrstdspnsgmtService {

    private final BusInacctinfAcctspectrstdspnsgmtRepository busInacctinfAcctspectrstdspnsgmtRepository;
    private final BusInacctinfAcctspectrstdspnsgmtMapper busInacctinfAcctspectrstdspnsgmtMapper;

    @Override
    public Map<String,Object> queryAll(BusInacctinfAcctspectrstdspnsgmtQueryCriteria criteria, Pageable pageable){
        Page<BusInacctinfAcctspectrstdspnsgmt> page = busInacctinfAcctspectrstdspnsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busInacctinfAcctspectrstdspnsgmtMapper::toDto));
    }

    @Override
    public List<BusInacctinfAcctspectrstdspnsgmtDto> queryAll(BusInacctinfAcctspectrstdspnsgmtQueryCriteria criteria){
        return busInacctinfAcctspectrstdspnsgmtMapper.toDto(busInacctinfAcctspectrstdspnsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusInacctinfAcctspectrstdspnsgmtDto findById(Long id) {
        BusInacctinfAcctspectrstdspnsgmt busInacctinfAcctspectrstdspnsgmt = busInacctinfAcctspectrstdspnsgmtRepository.findById(id).orElseGet(BusInacctinfAcctspectrstdspnsgmt::new);
        ValidationUtil.isNull(busInacctinfAcctspectrstdspnsgmt.getId(),"BusInacctinfAcctspectrstdspnsgmt","id",id);
        return busInacctinfAcctspectrstdspnsgmtMapper.toDto(busInacctinfAcctspectrstdspnsgmt);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusInacctinfAcctspectrstdspnsgmtDto create(BusInacctinfAcctspectrstdspnsgmt resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busInacctinfAcctspectrstdspnsgmtMapper.toDto(busInacctinfAcctspectrstdspnsgmtRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusInacctinfAcctspectrstdspnsgmt resources) {
        BusInacctinfAcctspectrstdspnsgmt busInacctinfAcctspectrstdspnsgmt = busInacctinfAcctspectrstdspnsgmtRepository.findById(resources.getId()).orElseGet(BusInacctinfAcctspectrstdspnsgmt::new);
        ValidationUtil.isNull( busInacctinfAcctspectrstdspnsgmt.getId(),"BusInacctinfAcctspectrstdspnsgmt","id",resources.getId());
        busInacctinfAcctspectrstdspnsgmt.copy(resources);
        busInacctinfAcctspectrstdspnsgmtRepository.save(busInacctinfAcctspectrstdspnsgmt);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busInacctinfAcctspectrstdspnsgmtRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusInacctinfAcctspectrstdspnsgmtDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusInacctinfAcctspectrstdspnsgmtDto busInacctinfAcctspectrstdspnsgmt : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("借据编号", busInacctinfAcctspectrstdspnsgmt.getAccloanid());
            map.put("对应业务操作的主键", busInacctinfAcctspectrstdspnsgmt.getBusId());
            map.put("交易个数", busInacctinfAcctspectrstdspnsgmt.getCagoftrdnm());
            map.put("上报状态", busInacctinfAcctspectrstdspnsgmt.getUploadstatus());
            map.put("上报标识", busInacctinfAcctspectrstdspnsgmt.getUploadflag());
            map.put(" createTime",  busInacctinfAcctspectrstdspnsgmt.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}