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

import me.zhengjie.modules.accountinfo.domain.BusInacctinfRltrepymtinfsgmt;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.accountinfo.repository.BusInacctinfRltrepymtinfsgmtRepository;
import me.zhengjie.modules.accountinfo.service.BusInacctinfRltrepymtinfsgmtService;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfRltrepymtinfsgmtDto;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfRltrepymtinfsgmtQueryCriteria;
import me.zhengjie.modules.accountinfo.service.mapstruct.BusInacctinfRltrepymtinfsgmtMapper;
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
public class BusInacctinfRltrepymtinfsgmtServiceImpl implements BusInacctinfRltrepymtinfsgmtService {

    private final BusInacctinfRltrepymtinfsgmtRepository busInacctinfRltrepymtinfsgmtRepository;
    private final BusInacctinfRltrepymtinfsgmtMapper busInacctinfRltrepymtinfsgmtMapper;

    @Override
    public Map<String,Object> queryAll(BusInacctinfRltrepymtinfsgmtQueryCriteria criteria, Pageable pageable){
        Page<BusInacctinfRltrepymtinfsgmt> page = busInacctinfRltrepymtinfsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busInacctinfRltrepymtinfsgmtMapper::toDto));
    }

    @Override
    public List<BusInacctinfRltrepymtinfsgmtDto> queryAll(BusInacctinfRltrepymtinfsgmtQueryCriteria criteria){
        return busInacctinfRltrepymtinfsgmtMapper.toDto(busInacctinfRltrepymtinfsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusInacctinfRltrepymtinfsgmtDto findById(Long ritId) {
        BusInacctinfRltrepymtinfsgmt busInacctinfRltrepymtinfsgmt = busInacctinfRltrepymtinfsgmtRepository.findById(ritId).orElseGet(BusInacctinfRltrepymtinfsgmt::new);
        ValidationUtil.isNull(busInacctinfRltrepymtinfsgmt.getRitId(),"BusInacctinfRltrepymtinfsgmt","ritId",ritId);
        return busInacctinfRltrepymtinfsgmtMapper.toDto(busInacctinfRltrepymtinfsgmt);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusInacctinfRltrepymtinfsgmtDto create(BusInacctinfRltrepymtinfsgmt resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setRitId(snowflake.nextId()); 
        return busInacctinfRltrepymtinfsgmtMapper.toDto(busInacctinfRltrepymtinfsgmtRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusInacctinfRltrepymtinfsgmt resources) {
        BusInacctinfRltrepymtinfsgmt busInacctinfRltrepymtinfsgmt = busInacctinfRltrepymtinfsgmtRepository.findById(resources.getRitId()).orElseGet(BusInacctinfRltrepymtinfsgmt::new);
        ValidationUtil.isNull( busInacctinfRltrepymtinfsgmt.getRitId(),"BusInacctinfRltrepymtinfsgmt","id",resources.getRitId());
        busInacctinfRltrepymtinfsgmt.copy(resources);
        busInacctinfRltrepymtinfsgmtRepository.save(busInacctinfRltrepymtinfsgmt);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long ritId : ids) {
            busInacctinfRltrepymtinfsgmtRepository.deleteById(ritId);
        }
    }

    @Override
    public void download(List<BusInacctinfRltrepymtinfsgmtDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusInacctinfRltrepymtinfsgmtDto busInacctinfRltrepymtinfsgmt : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("借据编号", busInacctinfRltrepymtinfsgmt.getAccloanid());
            map.put("对应业务操作的主键", busInacctinfRltrepymtinfsgmt.getBusId());
            map.put("责任人个数", busInacctinfRltrepymtinfsgmt.getRltrepymtnm());
            map.put("上报状态", busInacctinfRltrepymtinfsgmt.getUploadstatus());
            map.put("上报标识", busInacctinfRltrepymtinfsgmt.getUploadflag());
            map.put(" createTime",  busInacctinfRltrepymtinfsgmt.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}