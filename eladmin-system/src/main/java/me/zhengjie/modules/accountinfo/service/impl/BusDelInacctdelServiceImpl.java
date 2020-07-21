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

import cn.hutool.core.lang.Snowflake;
import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.ZipUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.modules.accountinfo.domain.BusDelInacctdel;
import me.zhengjie.modules.accountinfo.repository.BusDelInacctdelRepository;
import me.zhengjie.modules.accountinfo.service.BusDelInacctdelService;
import me.zhengjie.modules.accountinfo.service.dto.BusDelInacctdelDto;
import me.zhengjie.modules.accountinfo.service.dto.BusDelInacctdelQueryCriteria;
import me.zhengjie.modules.accountinfo.service.mapstruct.BusDelInacctdelMapper;
import me.zhengjie.modules.custominfo.util.CreditInfoUtil;
import me.zhengjie.modules.quartz.constant.TaskConstants;
import me.zhengjie.utils.*;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

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
    public BusDelInacctdelDto findById(Long id) {
        BusDelInacctdel busDelInacctdel = busDelInacctdelRepository.findById(id).orElseGet(BusDelInacctdel::new);
        ValidationUtil.isNull(busDelInacctdel.getId(),"BusDelInacctdel","id",id);
        return busDelInacctdelMapper.toDto(busDelInacctdel);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusDelInacctdelDto create(BusDelInacctdel resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId());
        resources.setInfrectype(213);
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
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
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

    @Override
    public void downloadCreditFile(List<BusDelInacctdelDto> all, HttpServletRequest request, HttpServletResponse response) throws Exception {
        if (all == null) {
            throw new BadRequestException("请选择数据");
        }
        try {
            File file = new File(CreditInfoUtil.downloadDel_InacctdelFile(all, TaskConstants.Task_Bus_Del_Inacctdel+ DateHelper.getCurrentTimeNoSLong(),
                    TaskConstants.Bus_Del_Inacctdel));
            String zipPath = file.getPath() + ".zip";
            ZipUtil.zip(file.getPath(), zipPath);
            FileUtil.downloadFile(request, response, new File(zipPath), true);
        } catch (IOException e) {
            throw new BadRequestException("打包失败");
        }
    }

    @Override
    public void downloadCreditFile(List<BusDelInacctdelDto> all) throws Exception {
        if (all == null || all.size()==0) {
            throw new BadRequestException("请选择数据");
        }
        try {
            File file = new File(CreditInfoUtil.downloadDel_InacctdelFile(all, TaskConstants.Task_Bus_Del_Inacctdel+ DateHelper.getCurrentTimeNoSLong(),
                    TaskConstants.Bus_Del_Inacctdel ));
            String zipPath = file.getPath() + ".zip";
            System.out.println("zipPath:{}" + zipPath);
            ZipUtil.zip(file.getPath(), zipPath);
        } catch (IOException e) {
            throw new BadRequestException("打包失败");
        }
    }
}