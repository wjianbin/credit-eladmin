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

import me.zhengjie.modules.accountinfo.domain.BusInacctinfRltrepymtinf;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.accountinfo.repository.BusInacctinfRltrepymtinfRepository;
import me.zhengjie.modules.accountinfo.service.BusInacctinfRltrepymtinfService;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfRltrepymtinfDto;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfRltrepymtinfQueryCriteria;
import me.zhengjie.modules.accountinfo.service.mapstruct.BusInacctinfRltrepymtinfMapper;
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
public class BusInacctinfRltrepymtinfServiceImpl implements BusInacctinfRltrepymtinfService {

    private final BusInacctinfRltrepymtinfRepository busInacctinfRltrepymtinfRepository;
    private final BusInacctinfRltrepymtinfMapper busInacctinfRltrepymtinfMapper;

    @Override
    public Map<String,Object> queryAll(BusInacctinfRltrepymtinfQueryCriteria criteria, Pageable pageable){
        Page<BusInacctinfRltrepymtinf> page = busInacctinfRltrepymtinfRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busInacctinfRltrepymtinfMapper::toDto));
    }

    @Override
    public List<BusInacctinfRltrepymtinfDto> queryAll(BusInacctinfRltrepymtinfQueryCriteria criteria){
        return busInacctinfRltrepymtinfMapper.toDto(busInacctinfRltrepymtinfRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusInacctinfRltrepymtinfDto findById(Long id) {
        BusInacctinfRltrepymtinf busInacctinfRltrepymtinf = busInacctinfRltrepymtinfRepository.findById(id).orElseGet(BusInacctinfRltrepymtinf::new);
        ValidationUtil.isNull(busInacctinfRltrepymtinf.getId(),"BusInacctinfRltrepymtinf","id",id);
        return busInacctinfRltrepymtinfMapper.toDto(busInacctinfRltrepymtinf);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusInacctinfRltrepymtinfDto create(BusInacctinfRltrepymtinf resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busInacctinfRltrepymtinfMapper.toDto(busInacctinfRltrepymtinfRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusInacctinfRltrepymtinf resources) {
        BusInacctinfRltrepymtinf busInacctinfRltrepymtinf = busInacctinfRltrepymtinfRepository.findById(resources.getId()).orElseGet(BusInacctinfRltrepymtinf::new);
        ValidationUtil.isNull( busInacctinfRltrepymtinf.getId(),"BusInacctinfRltrepymtinf","id",resources.getId());
        busInacctinfRltrepymtinf.copy(resources);
        busInacctinfRltrepymtinfRepository.save(busInacctinfRltrepymtinf);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busInacctinfRltrepymtinfRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusInacctinfRltrepymtinfDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusInacctinfRltrepymtinfDto busInacctinfRltrepymtinf : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("rit_id", busInacctinfRltrepymtinf.getRitId());
            map.put("责任人名称", busInacctinfRltrepymtinf.getArlpname());
            map.put("身份类别", busInacctinfRltrepymtinf.getInfoidtype());
            map.put("责任人身份标识类型", busInacctinfRltrepymtinf.getArlpcerttype());
            map.put("责任人身份标识号码", busInacctinfRltrepymtinf.getArlpcertnum());
            map.put("还款责任人类型", busInacctinfRltrepymtinf.getArlptype());
            map.put("还款责任金额", busInacctinfRltrepymtinf.getArlpamt());
            map.put("联保标志", busInacctinfRltrepymtinf.getWartysign());
            map.put("保证合同编号", busInacctinfRltrepymtinf.getMaxguarmcc());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}