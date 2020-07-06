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

import me.zhengjie.modules.accountinfo.domain.BusDelInacctdel;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.accountinfo.repository.BusDelInacctdelRepository;
import me.zhengjie.modules.accountinfo.service.BusDelInacctdelService;
import me.zhengjie.modules.accountinfo.service.dto.BusDelInacctdelDto;
import me.zhengjie.modules.accountinfo.service.dto.BusDelInacctdelQueryCriteria;
import me.zhengjie.modules.accountinfo.service.mapstruct.BusDelInacctdelMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
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
public class BusDelInacctdelServiceImpl implements BusDelInacctdelService {

    private final BusDelInacctdelRepository busDelInacctdelRepository;
    private final BusDelInacctdelMapper busDelInacctdelMapper;

    @Override
    public Map<String,Object> queryAll(BusDelInacctdelQueryCriteria criteria, Pageable pageable){
        Page<BusDelInacctdel> page = busDelInacctdelRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busDelInacctdelMapper::toDto));
    }

    @Override
    public List<BusDelInacctdelDto> queryAll(BusDelInacctdelQueryCriteria criteria){
        return busDelInacctdelMapper.toDto(busDelInacctdelRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusDelInacctdelDto findById(String id) {
        BusDelInacctdel busDelInacctdel = busDelInacctdelRepository.findById(id).orElseGet(BusDelInacctdel::new);
        ValidationUtil.isNull(busDelInacctdel.getId(),"BusDelInacctdel","id",id);
        return busDelInacctdelMapper.toDto(busDelInacctdel);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusDelInacctdelDto create(BusDelInacctdel resources) {
        resources.setId(IdUtil.simpleUUID()); 
        return busDelInacctdelMapper.toDto(busDelInacctdelRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusDelInacctdel resources) {
        BusDelInacctdel busDelInacctdel = busDelInacctdelRepository.findById(resources.getId()).orElseGet(BusDelInacctdel::new);
        ValidationUtil.isNull( busDelInacctdel.getId(),"BusDelInacctdel","id",resources.getId());
        busDelInacctdel.copy(resources);
        busDelInacctdelRepository.save(busDelInacctdel);
    }

    @Override
    public void deleteAll(String[] ids) {
        for (String id : ids) {
            busDelInacctdelRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusDelInacctdelDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusDelInacctdelDto busDelInacctdel : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("借据编号", busDelInacctdel.getAccloanid());
            map.put("信息记录类型", busDelInacctdel.getInfrectype());
            map.put("待删除业务标识码", busDelInacctdel.getDelreccode());
            map.put("待删除段段标", busDelInacctdel.getDelsgmtcode());
            map.put("待删除起始日期", busDelInacctdel.getDelstartdate());
            map.put("待删除结束日期", busDelInacctdel.getDelenddate());
            map.put("上报状态", busDelInacctdel.getUploadstatus());
            map.put("上报标识", busDelInacctdel.getUploadflag());
            map.put("create_time", busDelInacctdel.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}