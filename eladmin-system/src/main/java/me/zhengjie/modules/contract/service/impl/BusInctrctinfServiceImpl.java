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

import cn.hutool.core.util.ZipUtil;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.modules.contract.domain.BusInctrctinf;
import me.zhengjie.modules.contract.repository.BusInctrctinfCreditlimsgmtRepository;
import me.zhengjie.modules.contract.repository.BusInctrctinfCtrctbssgmtRepository;
import me.zhengjie.modules.contract.repository.BusInctrctinfCtrctcertrelsgmtRepository;
import me.zhengjie.modules.contract.service.BusInctrctinfCtrctcertrelsgmtService;
import me.zhengjie.modules.contract.service.dto.*;
import me.zhengjie.modules.contract.service.mapstruct.BusInctrctinfCreditlimsgmtMapper;
import me.zhengjie.modules.contract.service.mapstruct.BusInctrctinfCtrctbssgmtMapper;
import me.zhengjie.modules.contract.service.mapstruct.BusInctrctinfCtrctcertrelsgmtMapper;
import me.zhengjie.modules.custominfo.util.CreditInfoUtil;
import me.zhengjie.modules.quartz.constant.TaskConstants;
import me.zhengjie.utils.*;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.contract.repository.BusInctrctinfRepository;
import me.zhengjie.modules.contract.service.BusInctrctinfService;
import me.zhengjie.modules.contract.service.mapstruct.BusInctrctinfMapper;
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
public class BusInctrctinfServiceImpl implements BusInctrctinfService {

    private final BusInctrctinfRepository busInctrctinfRepository;
    private final BusInctrctinfMapper busInctrctinfMapper;
    private final BusInctrctinfCtrctbssgmtRepository busInctrctinfCtrctbssgmtRepository;
    private final BusInctrctinfCtrctbssgmtMapper busInctrctinfCtrctbssgmtMapper;
    private final BusInctrctinfCreditlimsgmtRepository busInctrctinfCreditlimsgmtRepository;
    private final BusInctrctinfCreditlimsgmtMapper busInctrctinfCreditlimsgmtMapper;
    private final BusInctrctinfCtrctcertrelsgmtRepository busInctrctinfCtrctcertrelsgmtRepository;
    private final BusInctrctinfCtrctcertrelsgmtMapper busInctrctinfCtrctcertrelsgmtMapper;
    private final BusInctrctinfCtrctcertrelsgmtService busInctrctinfCtrctcertrelsgmtService;
    @Override
    public Map<String,Object> queryAll(BusInctrctinfQueryCriteria criteria, Pageable pageable){
        Page<BusInctrctinf> page = busInctrctinfRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busInctrctinfMapper::toDto));
    }

    @Override
    public List<BusInctrctinfDto> queryAll(BusInctrctinfQueryCriteria criteria){
        List<BusInctrctinfDto>  list=busInctrctinfMapper.toDto(busInctrctinfRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
        for(BusInctrctinfDto bean:list){
           //基本信息
            BusInctrctinfCtrctbssgmtQueryCriteria busInctrctinfCtrctbssgmtQueryCriteria=new BusInctrctinfCtrctbssgmtQueryCriteria();
            busInctrctinfCtrctbssgmtQueryCriteria.setBusId(bean.getId());
            bean.setBusInctrctinfCtrctbssgmtDto(busInctrctinfCtrctbssgmtMapper.toDto(busInctrctinfCtrctbssgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,busInctrctinfCtrctbssgmtQueryCriteria,criteriaBuilder))).get(0));
            //限额
            BusInctrctinfCreditlimsgmtQueryCriteria busInctrctinfCreditlimsgmtQueryCriteria=new BusInctrctinfCreditlimsgmtQueryCriteria();
            busInctrctinfCreditlimsgmtQueryCriteria.setBusId(bean.getId());
            bean.setBusInctrctinfCreditlimsgmtDto(busInctrctinfCreditlimsgmtMapper.toDto(busInctrctinfCreditlimsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder))).get(0));
            //相关责任人
            BusInctrctinfCtrctcertrelsgmtQueryCriteria cBusInctrctinfCtrctcertrelsgmtQueryCriteria=new BusInctrctinfCtrctcertrelsgmtQueryCriteria();
            cBusInctrctinfCtrctcertrelsgmtQueryCriteria.setBusId(bean.getId());
            List<BusInctrctinfCtrctcertrelsgmtDto> lis=busInctrctinfCtrctcertrelsgmtService.queryAll(cBusInctrctinfCtrctcertrelsgmtQueryCriteria);
            bean.setBusInctrctinfCtrctcertrelsgmtDto(lis.get(0));
        }
        return list;
    }

    @Override
    @Transactional
    public BusInctrctinfDto findById(Long id) {
        BusInctrctinf busInctrctinf = busInctrctinfRepository.findById(id).orElseGet(BusInctrctinf::new);
        ValidationUtil.isNull(busInctrctinf.getId(),"BusInctrctinf","id",id);
        return busInctrctinfMapper.toDto(busInctrctinf);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusInctrctinfDto create(BusInctrctinf resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busInctrctinfMapper.toDto(busInctrctinfRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusInctrctinf resources) {
        BusInctrctinf busInctrctinf = busInctrctinfRepository.findById(resources.getId()).orElseGet(BusInctrctinf::new);
        ValidationUtil.isNull( busInctrctinf.getId(),"BusInctrctinf","id",resources.getId());
        busInctrctinf.copy(resources);
        busInctrctinfRepository.save(busInctrctinf);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busInctrctinfRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusInctrctinfDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusInctrctinfDto busInctrctinf : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("授信协议编号", busInctrctinf.getInctrctinfid());
            map.put(" status",  busInctrctinf.getStatus());
            map.put(" inaccinfid",  busInctrctinf.getInaccinfid());
            map.put(" uploadtime",  busInctrctinf.getUploadtime());
            map.put(" createtime",  busInctrctinf.getCreatetime());
            map.put(" updatetime",  busInctrctinf.getUpdatetime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }

    @Override
    public void downloadCreditFile(List<BusInctrctinfDto> all, HttpServletRequest request, HttpServletResponse response) throws Exception {
        if (all == null) {
            throw new BadRequestException("请选择数据");
        }
        try {
            File file = new File(CreditInfoUtil.downloadBusInctrctinfFile(all, TaskConstants.Task_Bus_Inctrctinf+ DateHelper.getCurrentTimeNoSLong(),
                    TaskConstants.Bus_Inctrctinf));
            String zipPath = file.getPath() + ".zip";
            ZipUtil.zip(file.getPath(), zipPath);
            FileUtil.downloadFile(request, response, new File(zipPath), true);
        } catch (IOException e) {
            throw new BadRequestException("打包失败");
        }
    }

    @Override
    public void downloadCreditFile(List<BusInctrctinfDto> all) throws Exception {
        if (all == null) {
            throw new BadRequestException("请选择数据");
        }
        try {
            File file = new File(CreditInfoUtil.downloadBusInctrctinfFile(all, TaskConstants.Task_Bus_Inctrctinf+ DateHelper.getCurrentTimeNoSLong(),
                    TaskConstants.Bus_Inctrctinf));
            String zipPath = file.getPath() + ".zip";
            ZipUtil.zip(file.getPath(), zipPath);
        } catch (IOException e) {
            throw new BadRequestException("打包失败");
        }
    }
}