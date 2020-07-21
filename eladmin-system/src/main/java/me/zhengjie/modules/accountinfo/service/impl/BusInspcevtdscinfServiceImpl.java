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

import cn.hutool.core.util.ZipUtil;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.modules.accountinfo.domain.BusInspcevtdscinf;
import me.zhengjie.modules.custominfo.util.CreditInfoUtil;
import me.zhengjie.modules.quartz.constant.TaskConstants;
import me.zhengjie.utils.*;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.accountinfo.repository.BusInspcevtdscinfRepository;
import me.zhengjie.modules.accountinfo.service.BusInspcevtdscinfService;
import me.zhengjie.modules.accountinfo.service.dto.BusInspcevtdscinfDto;
import me.zhengjie.modules.accountinfo.service.dto.BusInspcevtdscinfQueryCriteria;
import me.zhengjie.modules.accountinfo.service.mapstruct.BusInspcevtdscinfMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import cn.hutool.core.lang.Snowflake;
import cn.hutool.core.util.IdUtil;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.io.File;
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
public class BusInspcevtdscinfServiceImpl implements BusInspcevtdscinfService {

    private final BusInspcevtdscinfRepository busInspcevtdscinfRepository;
    private final BusInspcevtdscinfMapper busInspcevtdscinfMapper;

    @Override
    public Map<String,Object> queryAll(BusInspcevtdscinfQueryCriteria criteria, Pageable pageable){
        Page<BusInspcevtdscinf> page = busInspcevtdscinfRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busInspcevtdscinfMapper::toDto));
    }

    @Override
    public List<BusInspcevtdscinfDto> queryAll(BusInspcevtdscinfQueryCriteria criteria){
        return busInspcevtdscinfMapper.toDto(busInspcevtdscinfRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusInspcevtdscinfDto findById(Long id) {
        BusInspcevtdscinf busInspcevtdscinf = busInspcevtdscinfRepository.findById(id).orElseGet(BusInspcevtdscinf::new);
        ValidationUtil.isNull(busInspcevtdscinf.getId(),"BusInspcevtdscinf","id",id);
        return busInspcevtdscinfMapper.toDto(busInspcevtdscinf);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusInspcevtdscinfDto create(BusInspcevtdscinf resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busInspcevtdscinfMapper.toDto(busInspcevtdscinfRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusInspcevtdscinf resources) {
        BusInspcevtdscinf busInspcevtdscinf = busInspcevtdscinfRepository.findById(resources.getId()).orElseGet(BusInspcevtdscinf::new);
        ValidationUtil.isNull( busInspcevtdscinf.getId(),"BusInspcevtdscinf","id",resources.getId());
        busInspcevtdscinf.copy(resources);
        busInspcevtdscinfRepository.save(busInspcevtdscinf);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busInspcevtdscinfRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusInspcevtdscinfDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusInspcevtdscinfDto busInspcevtdscinf : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("借据编号", busInspcevtdscinf.getAccloanid());
            map.put("信息记录类型", busInspcevtdscinf.getInfrectype());
            map.put("账户标识码", busInspcevtdscinf.getAcctcode());
            map.put("事件类型", busInspcevtdscinf.getOpetntype());
            map.put("发生月份", busInspcevtdscinf.getMonth());
            map.put("生效标志", busInspcevtdscinf.getFlag());
            map.put("信息报告日期", busInspcevtdscinf.getRptdate());
            map.put("上报状态", busInspcevtdscinf.getUploadstatus());
            map.put("上报标识", busInspcevtdscinf.getUploadflag());
            map.put(" createTime",  busInspcevtdscinf.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }

    @Override
    public void downloadCreditFile(List<BusInspcevtdscinfDto> all, HttpServletRequest request, HttpServletResponse response) throws Exception {
        if (all == null) {
            throw new BadRequestException("请选择数据");
        }
        try {
            File file = new File(CreditInfoUtil.downloadInspcevtdscinfFile(all, TaskConstants.Task_Bus_InacctinfSpecprdsgmt+ DateHelper.getCurrentTimeNoSLong(),
                    TaskConstants.Bus_InacctinfSpecprdsgmt));
            String zipPath = file.getPath() + ".zip";
            ZipUtil.zip(file.getPath(), zipPath);
            FileUtil.downloadFile(request, response, new File(zipPath), true);
        } catch (IOException e) {
            throw new BadRequestException("打包失败");
        }
    }

    @Override
    public void downloadCreditFile(List<BusInspcevtdscinfDto> all) throws Exception {
        if (all == null) {
            throw new BadRequestException("请选择数据");
        }
        try {
            File file = new File(CreditInfoUtil.downloadInspcevtdscinfFile(all, TaskConstants.Task_Bus_InacctinfSpecprdsgmt+ DateHelper.getCurrentTimeNoSLong(),
                    TaskConstants.Bus_InacctinfSpecprdsgmt));
            String zipPath = file.getPath() + ".zip";
            ZipUtil.zip(file.getPath(), zipPath);
        } catch (IOException e) {
            throw new BadRequestException("打包失败");
        }
    }
}