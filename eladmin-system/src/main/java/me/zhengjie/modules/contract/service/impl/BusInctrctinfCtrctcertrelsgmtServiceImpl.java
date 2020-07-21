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

import me.zhengjie.modules.contract.domain.BusInctrctinfCtrctcertrelsgmt;
import me.zhengjie.modules.contract.repository.BusInctrctinfCtrctcertrelRepository;
import me.zhengjie.modules.contract.service.dto.BusInctrctinfCtrctcertrelQueryCriteria;
import me.zhengjie.modules.contract.service.mapstruct.BusInctrctinfCtrctcertrelMapper;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.contract.repository.BusInctrctinfCtrctcertrelsgmtRepository;
import me.zhengjie.modules.contract.service.BusInctrctinfCtrctcertrelsgmtService;
import me.zhengjie.modules.contract.service.dto.BusInctrctinfCtrctcertrelsgmtDto;
import me.zhengjie.modules.contract.service.dto.BusInctrctinfCtrctcertrelsgmtQueryCriteria;
import me.zhengjie.modules.contract.service.mapstruct.BusInctrctinfCtrctcertrelsgmtMapper;
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
import javax.servlet.http.HttpServletRequest;
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
public class BusInctrctinfCtrctcertrelsgmtServiceImpl implements BusInctrctinfCtrctcertrelsgmtService {

    private final BusInctrctinfCtrctcertrelsgmtRepository busInctrctinfCtrctcertrelsgmtRepository;
    private final BusInctrctinfCtrctcertrelsgmtMapper busInctrctinfCtrctcertrelsgmtMapper;
    private final BusInctrctinfCtrctcertrelRepository busInctrctinfCtrctcertrelRepository;
    private final BusInctrctinfCtrctcertrelMapper busInctrctinfCtrctcertrelMapper;

    @Override
    public Map<String,Object> queryAll(BusInctrctinfCtrctcertrelsgmtQueryCriteria criteria, Pageable pageable){
        Page<BusInctrctinfCtrctcertrelsgmt> page = busInctrctinfCtrctcertrelsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busInctrctinfCtrctcertrelsgmtMapper::toDto));
    }

    @Override
    public List<BusInctrctinfCtrctcertrelsgmtDto> queryAll(BusInctrctinfCtrctcertrelsgmtQueryCriteria criteria){
           List<BusInctrctinfCtrctcertrelsgmtDto>  busInctrctinfCtrctcertrelsgmtDtolis=busInctrctinfCtrctcertrelsgmtMapper.toDto(busInctrctinfCtrctcertrelsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
        for(BusInctrctinfCtrctcertrelsgmtDto bean:busInctrctinfCtrctcertrelsgmtDtolis){
            BusInctrctinfCtrctcertrelQueryCriteria busInctrctinfCtrctcertrelQueryCriteria=new BusInctrctinfCtrctcertrelQueryCriteria();
            busInctrctinfCtrctcertrelQueryCriteria.setCtrId(bean.getId());
            bean.setBusInctrctinfCtrctcertrelDto(busInctrctinfCtrctcertrelMapper.toDto(busInctrctinfCtrctcertrelRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,busInctrctinfCtrctcertrelQueryCriteria,criteriaBuilder))));
        }
        return busInctrctinfCtrctcertrelsgmtDtolis;
    }

    @Override
    @Transactional
    public BusInctrctinfCtrctcertrelsgmtDto findById(Long id) {
        BusInctrctinfCtrctcertrelsgmt busInctrctinfCtrctcertrelsgmt = busInctrctinfCtrctcertrelsgmtRepository.findById(id).orElseGet(BusInctrctinfCtrctcertrelsgmt::new);
        ValidationUtil.isNull(busInctrctinfCtrctcertrelsgmt.getId(),"BusInctrctinfCtrctcertrelsgmt","id",id);
        return busInctrctinfCtrctcertrelsgmtMapper.toDto(busInctrctinfCtrctcertrelsgmt);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusInctrctinfCtrctcertrelsgmtDto create(BusInctrctinfCtrctcertrelsgmt resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busInctrctinfCtrctcertrelsgmtMapper.toDto(busInctrctinfCtrctcertrelsgmtRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusInctrctinfCtrctcertrelsgmt resources) {
        BusInctrctinfCtrctcertrelsgmt busInctrctinfCtrctcertrelsgmt = busInctrctinfCtrctcertrelsgmtRepository.findById(resources.getId()).orElseGet(BusInctrctinfCtrctcertrelsgmt::new);
        ValidationUtil.isNull( busInctrctinfCtrctcertrelsgmt.getId(),"BusInctrctinfCtrctcertrelsgmt","id",resources.getId());
        busInctrctinfCtrctcertrelsgmt.copy(resources);
        busInctrctinfCtrctcertrelsgmtRepository.save(busInctrctinfCtrctcertrelsgmt);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busInctrctinfCtrctcertrelsgmtRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusInctrctinfCtrctcertrelsgmtDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusInctrctinfCtrctcertrelsgmtDto busInctrctinfCtrctcertrelsgmt : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("授信协议编号", busInctrctinfCtrctcertrelsgmt.getInctrctinfid());
            map.put("对应业务操作的主键", busInctrctinfCtrctcertrelsgmt.getBusId());
            map.put("共同受信人个数", busInctrctinfCtrctcertrelsgmt.getBrernm());
            map.put("上报状态", busInctrctinfCtrctcertrelsgmt.getUploadstatus());
            map.put("上报标识", busInctrctinfCtrctcertrelsgmt.getUploadflag());
            map.put(" createTime",  busInctrctinfCtrctcertrelsgmt.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }

    @Override
    public void downloadCreditFile(List<BusInctrctinfCtrctcertrelsgmtDto> all, HttpServletRequest request, HttpServletResponse response) throws Exception {

    }

    @Override
    public void downloadCreditFile(List<BusInctrctinfCtrctcertrelsgmtDto> all) throws Exception {

    }
}