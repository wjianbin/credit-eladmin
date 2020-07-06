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

import me.zhengjie.modules.accountinfo.domain.BusInacctinfAcctbssgmt;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.accountinfo.repository.BusInacctinfAcctbssgmtRepository;
import me.zhengjie.modules.accountinfo.service.BusInacctinfAcctbssgmtService;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfAcctbssgmtDto;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfAcctbssgmtQueryCriteria;
import me.zhengjie.modules.accountinfo.service.mapstruct.BusInacctinfAcctbssgmtMapper;
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
public class BusInacctinfAcctbssgmtServiceImpl implements BusInacctinfAcctbssgmtService {

    private final BusInacctinfAcctbssgmtRepository busInacctinfAcctbssgmtRepository;
    private final BusInacctinfAcctbssgmtMapper busInacctinfAcctbssgmtMapper;

    @Override
    public Map<String,Object> queryAll(BusInacctinfAcctbssgmtQueryCriteria criteria, Pageable pageable){
        Page<BusInacctinfAcctbssgmt> page = busInacctinfAcctbssgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busInacctinfAcctbssgmtMapper::toDto));
    }

    @Override
    public List<BusInacctinfAcctbssgmtDto> queryAll(BusInacctinfAcctbssgmtQueryCriteria criteria){
        return busInacctinfAcctbssgmtMapper.toDto(busInacctinfAcctbssgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusInacctinfAcctbssgmtDto findById(Long id) {
        BusInacctinfAcctbssgmt busInacctinfAcctbssgmt = busInacctinfAcctbssgmtRepository.findById(id).orElseGet(BusInacctinfAcctbssgmt::new);
        ValidationUtil.isNull(busInacctinfAcctbssgmt.getId(),"BusInacctinfAcctbssgmt","id",id);
        return busInacctinfAcctbssgmtMapper.toDto(busInacctinfAcctbssgmt);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusInacctinfAcctbssgmtDto create(BusInacctinfAcctbssgmt resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busInacctinfAcctbssgmtMapper.toDto(busInacctinfAcctbssgmtRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusInacctinfAcctbssgmt resources) {
        BusInacctinfAcctbssgmt busInacctinfAcctbssgmt = busInacctinfAcctbssgmtRepository.findById(resources.getId()).orElseGet(BusInacctinfAcctbssgmt::new);
        ValidationUtil.isNull( busInacctinfAcctbssgmt.getId(),"BusInacctinfAcctbssgmt","id",resources.getId());
        busInacctinfAcctbssgmt.copy(resources);
        busInacctinfAcctbssgmtRepository.save(busInacctinfAcctbssgmt);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busInacctinfAcctbssgmtRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusInacctinfAcctbssgmtDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusInacctinfAcctbssgmtDto busInacctinfAcctbssgmt : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("借据编号", busInacctinfAcctbssgmt.getAccloanid());
            map.put("对应业务操作的主键", busInacctinfAcctbssgmt.getBusId());
            map.put("信息记录类型", busInacctinfAcctbssgmt.getInfrectype());
            map.put("账户类型", busInacctinfAcctbssgmt.getAccttype());
            map.put("个人账户标识码", busInacctinfAcctbssgmt.getAcctcode());
            map.put("信息报告日期", busInacctinfAcctbssgmt.getRptdate());
            map.put("报告时点说明代码", busInacctinfAcctbssgmt.getRptdatecode());
            map.put("姓名", busInacctinfAcctbssgmt.getName());
            map.put("证件类型", busInacctinfAcctbssgmt.getIdtype());
            map.put("证件号码", busInacctinfAcctbssgmt.getIdnum());
            map.put("业务管理机构代码", busInacctinfAcctbssgmt.getMngmtorgcode());
            map.put("上报状态", busInacctinfAcctbssgmt.getUploadstatus());
            map.put("上报标识", busInacctinfAcctbssgmt.getUploadflag());
            map.put(" createTime",  busInacctinfAcctbssgmt.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}