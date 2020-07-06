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

import me.zhengjie.modules.accountinfo.domain.BusInacctinfGuarmotgacltalctrctinfsgmt;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.accountinfo.repository.BusInacctinfGuarmotgacltalctrctinfsgmtRepository;
import me.zhengjie.modules.accountinfo.service.BusInacctinfGuarmotgacltalctrctinfsgmtService;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfGuarmotgacltalctrctinfsgmtDto;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfGuarmotgacltalctrctinfsgmtQueryCriteria;
import me.zhengjie.modules.accountinfo.service.mapstruct.BusInacctinfGuarmotgacltalctrctinfsgmtMapper;
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
public class BusInacctinfGuarmotgacltalctrctinfsgmtServiceImpl implements BusInacctinfGuarmotgacltalctrctinfsgmtService {

    private final BusInacctinfGuarmotgacltalctrctinfsgmtRepository busInacctinfGuarmotgacltalctrctinfsgmtRepository;
    private final BusInacctinfGuarmotgacltalctrctinfsgmtMapper busInacctinfGuarmotgacltalctrctinfsgmtMapper;

    @Override
    public Map<String,Object> queryAll(BusInacctinfGuarmotgacltalctrctinfsgmtQueryCriteria criteria, Pageable pageable){
        Page<BusInacctinfGuarmotgacltalctrctinfsgmt> page = busInacctinfGuarmotgacltalctrctinfsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busInacctinfGuarmotgacltalctrctinfsgmtMapper::toDto));
    }

    @Override
    public List<BusInacctinfGuarmotgacltalctrctinfsgmtDto> queryAll(BusInacctinfGuarmotgacltalctrctinfsgmtQueryCriteria criteria){
        return busInacctinfGuarmotgacltalctrctinfsgmtMapper.toDto(busInacctinfGuarmotgacltalctrctinfsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusInacctinfGuarmotgacltalctrctinfsgmtDto findById(Long guaId) {
        BusInacctinfGuarmotgacltalctrctinfsgmt busInacctinfGuarmotgacltalctrctinfsgmt = busInacctinfGuarmotgacltalctrctinfsgmtRepository.findById(guaId).orElseGet(BusInacctinfGuarmotgacltalctrctinfsgmt::new);
        ValidationUtil.isNull(busInacctinfGuarmotgacltalctrctinfsgmt.getGuaId(),"BusInacctinfGuarmotgacltalctrctinfsgmt","guaId",guaId);
        return busInacctinfGuarmotgacltalctrctinfsgmtMapper.toDto(busInacctinfGuarmotgacltalctrctinfsgmt);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusInacctinfGuarmotgacltalctrctinfsgmtDto create(BusInacctinfGuarmotgacltalctrctinfsgmt resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setGuaId(snowflake.nextId()); 
        return busInacctinfGuarmotgacltalctrctinfsgmtMapper.toDto(busInacctinfGuarmotgacltalctrctinfsgmtRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusInacctinfGuarmotgacltalctrctinfsgmt resources) {
        BusInacctinfGuarmotgacltalctrctinfsgmt busInacctinfGuarmotgacltalctrctinfsgmt = busInacctinfGuarmotgacltalctrctinfsgmtRepository.findById(resources.getGuaId()).orElseGet(BusInacctinfGuarmotgacltalctrctinfsgmt::new);
        ValidationUtil.isNull( busInacctinfGuarmotgacltalctrctinfsgmt.getGuaId(),"BusInacctinfGuarmotgacltalctrctinfsgmt","id",resources.getGuaId());
        busInacctinfGuarmotgacltalctrctinfsgmt.copy(resources);
        busInacctinfGuarmotgacltalctrctinfsgmtRepository.save(busInacctinfGuarmotgacltalctrctinfsgmt);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long guaId : ids) {
            busInacctinfGuarmotgacltalctrctinfsgmtRepository.deleteById(guaId);
        }
    }

    @Override
    public void download(List<BusInacctinfGuarmotgacltalctrctinfsgmtDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusInacctinfGuarmotgacltalctrctinfsgmtDto busInacctinfGuarmotgacltalctrctinfsgmt : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("借据编号", busInacctinfGuarmotgacltalctrctinfsgmt.getAccloanid());
            map.put("对应业务操作的主键", busInacctinfGuarmotgacltalctrctinfsgmt.getBusId());
            map.put("抵质押合同个数", busInacctinfGuarmotgacltalctrctinfsgmt.getCcnm());
            map.put("上报状态", busInacctinfGuarmotgacltalctrctinfsgmt.getUploadstatus());
            map.put("上报标识", busInacctinfGuarmotgacltalctrctinfsgmt.getUploadflag());
            map.put(" createTime",  busInacctinfGuarmotgacltalctrctinfsgmt.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}