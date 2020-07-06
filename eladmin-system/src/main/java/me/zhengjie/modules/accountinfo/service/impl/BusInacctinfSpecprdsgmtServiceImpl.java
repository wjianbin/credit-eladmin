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

import me.zhengjie.modules.accountinfo.domain.BusInacctinfSpecprdsgmt;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.accountinfo.repository.BusInacctinfSpecprdsgmtRepository;
import me.zhengjie.modules.accountinfo.service.BusInacctinfSpecprdsgmtService;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfSpecprdsgmtDto;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfSpecprdsgmtQueryCriteria;
import me.zhengjie.modules.accountinfo.service.mapstruct.BusInacctinfSpecprdsgmtMapper;
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
public class BusInacctinfSpecprdsgmtServiceImpl implements BusInacctinfSpecprdsgmtService {

    private final BusInacctinfSpecprdsgmtRepository busInacctinfSpecprdsgmtRepository;
    private final BusInacctinfSpecprdsgmtMapper busInacctinfSpecprdsgmtMapper;

    @Override
    public Map<String,Object> queryAll(BusInacctinfSpecprdsgmtQueryCriteria criteria, Pageable pageable){
        Page<BusInacctinfSpecprdsgmt> page = busInacctinfSpecprdsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busInacctinfSpecprdsgmtMapper::toDto));
    }

    @Override
    public List<BusInacctinfSpecprdsgmtDto> queryAll(BusInacctinfSpecprdsgmtQueryCriteria criteria){
        return busInacctinfSpecprdsgmtMapper.toDto(busInacctinfSpecprdsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusInacctinfSpecprdsgmtDto findById(Long id) {
        BusInacctinfSpecprdsgmt busInacctinfSpecprdsgmt = busInacctinfSpecprdsgmtRepository.findById(id).orElseGet(BusInacctinfSpecprdsgmt::new);
        ValidationUtil.isNull(busInacctinfSpecprdsgmt.getId(),"BusInacctinfSpecprdsgmt","id",id);
        return busInacctinfSpecprdsgmtMapper.toDto(busInacctinfSpecprdsgmt);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusInacctinfSpecprdsgmtDto create(BusInacctinfSpecprdsgmt resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busInacctinfSpecprdsgmtMapper.toDto(busInacctinfSpecprdsgmtRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusInacctinfSpecprdsgmt resources) {
        BusInacctinfSpecprdsgmt busInacctinfSpecprdsgmt = busInacctinfSpecprdsgmtRepository.findById(resources.getId()).orElseGet(BusInacctinfSpecprdsgmt::new);
        ValidationUtil.isNull( busInacctinfSpecprdsgmt.getId(),"BusInacctinfSpecprdsgmt","id",resources.getId());
        busInacctinfSpecprdsgmt.copy(resources);
        busInacctinfSpecprdsgmtRepository.save(busInacctinfSpecprdsgmt);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busInacctinfSpecprdsgmtRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusInacctinfSpecprdsgmtDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusInacctinfSpecprdsgmtDto busInacctinfSpecprdsgmt : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("借据编号", busInacctinfSpecprdsgmt.getAccloanid());
            map.put("对应业务操作的主键", busInacctinfSpecprdsgmt.getBusId());
            map.put("大额专项分期额度", busInacctinfSpecprdsgmt.getSpecline());
            map.put("专项分期生效日期", busInacctinfSpecprdsgmt.getSpecefctdate());
            map.put("专项分期到期日期", busInacctinfSpecprdsgmt.getSpecenddate());
            map.put("已用分期金额", busInacctinfSpecprdsgmt.getUsedinstamt());
            map.put("上报状态", busInacctinfSpecprdsgmt.getUploadstatus());
            map.put("上报标识", busInacctinfSpecprdsgmt.getUploadflag());
            map.put(" createTime",  busInacctinfSpecprdsgmt.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}