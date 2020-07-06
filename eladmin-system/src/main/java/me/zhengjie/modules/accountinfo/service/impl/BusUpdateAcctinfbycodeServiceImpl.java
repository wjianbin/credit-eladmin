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

import me.zhengjie.modules.accountinfo.domain.BusUpdateAcctinfbycode;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.accountinfo.repository.BusUpdateAcctinfbycodeRepository;
import me.zhengjie.modules.accountinfo.service.BusUpdateAcctinfbycodeService;
import me.zhengjie.modules.accountinfo.service.dto.BusUpdateAcctinfbycodeDto;
import me.zhengjie.modules.accountinfo.service.dto.BusUpdateAcctinfbycodeQueryCriteria;
import me.zhengjie.modules.accountinfo.service.mapstruct.BusUpdateAcctinfbycodeMapper;
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
public class BusUpdateAcctinfbycodeServiceImpl implements BusUpdateAcctinfbycodeService {

    private final BusUpdateAcctinfbycodeRepository busUpdateAcctinfbycodeRepository;
    private final BusUpdateAcctinfbycodeMapper busUpdateAcctinfbycodeMapper;

    @Override
    public Map<String,Object> queryAll(BusUpdateAcctinfbycodeQueryCriteria criteria, Pageable pageable){
        Page<BusUpdateAcctinfbycode> page = busUpdateAcctinfbycodeRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busUpdateAcctinfbycodeMapper::toDto));
    }

    @Override
    public List<BusUpdateAcctinfbycodeDto> queryAll(BusUpdateAcctinfbycodeQueryCriteria criteria){
        return busUpdateAcctinfbycodeMapper.toDto(busUpdateAcctinfbycodeRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusUpdateAcctinfbycodeDto findById(Long id) {
        BusUpdateAcctinfbycode busUpdateAcctinfbycode = busUpdateAcctinfbycodeRepository.findById(id).orElseGet(BusUpdateAcctinfbycode::new);
        ValidationUtil.isNull(busUpdateAcctinfbycode.getId(),"BusUpdateAcctinfbycode","id",id);
        return busUpdateAcctinfbycodeMapper.toDto(busUpdateAcctinfbycode);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusUpdateAcctinfbycodeDto create(BusUpdateAcctinfbycode resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busUpdateAcctinfbycodeMapper.toDto(busUpdateAcctinfbycodeRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusUpdateAcctinfbycode resources) {
        BusUpdateAcctinfbycode busUpdateAcctinfbycode = busUpdateAcctinfbycodeRepository.findById(resources.getId()).orElseGet(BusUpdateAcctinfbycode::new);
        ValidationUtil.isNull( busUpdateAcctinfbycode.getId(),"BusUpdateAcctinfbycode","id",resources.getId());
        busUpdateAcctinfbycode.copy(resources);
        busUpdateAcctinfbycodeRepository.save(busUpdateAcctinfbycode);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busUpdateAcctinfbycodeRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusUpdateAcctinfbycodeDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusUpdateAcctinfbycodeDto busUpdateAcctinfbycode : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("借据编号", busUpdateAcctinfbycode.getAccloanid());
            map.put("信息记录类型", busUpdateAcctinfbycode.getInfrectype());
            map.put("待更正业务标识码", busUpdateAcctinfbycode.getModreccode());
            map.put("信息报告日期", busUpdateAcctinfbycode.getRptdate());
            map.put("账户类型", busUpdateAcctinfbycode.getAccttype());
            map.put("待更正段段标", busUpdateAcctinfbycode.getMdfcsgmtcode());
            map.put("上报状态", busUpdateAcctinfbycode.getUploadstatus());
            map.put("上报标识", busUpdateAcctinfbycode.getUploadflag());
            map.put(" createTime",  busUpdateAcctinfbycode.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}