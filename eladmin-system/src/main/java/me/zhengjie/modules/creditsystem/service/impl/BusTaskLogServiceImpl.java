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
package me.zhengjie.modules.creditsystem.service.impl;

import me.zhengjie.modules.creditsystem.domain.BusTaskLog;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.creditsystem.repository.BusTaskLogRepository;
import me.zhengjie.modules.creditsystem.service.BusTaskLogService;
import me.zhengjie.modules.creditsystem.service.dto.BusTaskLogDto;
import me.zhengjie.modules.creditsystem.service.dto.BusTaskLogQueryCriteria;
import me.zhengjie.modules.creditsystem.service.mapstruct.BusTaskLogMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
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
* @date 2020-07-07
**/
@Service
@RequiredArgsConstructor
public class BusTaskLogServiceImpl implements BusTaskLogService {

    private final BusTaskLogRepository busTaskLogRepository;
    private final BusTaskLogMapper busTaskLogMapper;

    @Override
    public Map<String,Object> queryAll(BusTaskLogQueryCriteria criteria, Pageable pageable){
        Page<BusTaskLog> page = busTaskLogRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busTaskLogMapper::toDto));
    }

    @Override
    public List<BusTaskLogDto> queryAll(BusTaskLogQueryCriteria criteria){
        return busTaskLogMapper.toDto(busTaskLogRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusTaskLogDto findById(Long id) {
        BusTaskLog busTaskLog = busTaskLogRepository.findById(id).orElseGet(BusTaskLog::new);
        ValidationUtil.isNull(busTaskLog.getId(),"BusTaskLog","id",id);
        return busTaskLogMapper.toDto(busTaskLog);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusTaskLogDto create(BusTaskLog resources) {
        return busTaskLogMapper.toDto(busTaskLogRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusTaskLog resources) {
        BusTaskLog busTaskLog = busTaskLogRepository.findById(resources.getId()).orElseGet(BusTaskLog::new);
        ValidationUtil.isNull( busTaskLog.getId(),"BusTaskLog","id",resources.getId());
        busTaskLog.copy(resources);
        busTaskLogRepository.save(busTaskLog);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busTaskLogRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusTaskLogDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusTaskLogDto busTaskLog : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("任务执行日期", busTaskLog.getBatchdate());
            map.put("实际日期", busTaskLog.getBusinessdate());
            map.put("任务名称", busTaskLog.getTaskname());
            map.put("任务名称描述", busTaskLog.getTaskdescribe());
            map.put("任务所属模块", busTaskLog.getTargetname());
            map.put("任务所属模块描述", busTaskLog.getTargetdescribe());
            map.put("开始执行时间", busTaskLog.getBegintime());
            map.put("执行结束时间", busTaskLog.getEndtime());
            map.put("状态", busTaskLog.getStatus());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}