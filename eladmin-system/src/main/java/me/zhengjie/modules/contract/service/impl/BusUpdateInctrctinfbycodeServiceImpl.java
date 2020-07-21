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
import me.zhengjie.modules.contract.domain.BusUpdateInctrctinfbycode;
import me.zhengjie.modules.contract.repository.BusInctrctinfCreditlimsgmtRepository;
import me.zhengjie.modules.contract.repository.BusInctrctinfCtrctbssgmtRepository;
import me.zhengjie.modules.contract.repository.BusInctrctinfCtrctcertrelsgmtRepository;
import me.zhengjie.modules.contract.service.dto.*;
import me.zhengjie.modules.contract.service.mapstruct.BusInctrctinfCreditlimsgmtMapper;
import me.zhengjie.modules.contract.service.mapstruct.BusInctrctinfCtrctbssgmtMapper;
import me.zhengjie.modules.contract.service.mapstruct.BusInctrctinfCtrctcertrelsgmtMapper;
import me.zhengjie.modules.custominfo.util.CreditInfoUtil;
import me.zhengjie.modules.quartz.constant.TaskConstants;
import me.zhengjie.utils.*;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.contract.repository.BusUpdateInctrctinfbycodeRepository;
import me.zhengjie.modules.contract.service.BusUpdateInctrctinfbycodeService;
import me.zhengjie.modules.contract.service.mapstruct.BusUpdateInctrctinfbycodeMapper;
import org.springframework.data.domain.Example;
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
public class BusUpdateInctrctinfbycodeServiceImpl implements BusUpdateInctrctinfbycodeService {

    private final BusUpdateInctrctinfbycodeRepository busUpdateInctrctinfbycodeRepository;
    private final BusUpdateInctrctinfbycodeMapper busUpdateInctrctinfbycodeMapper;
    private final BusInctrctinfCtrctbssgmtRepository busInctrctinfCtrctbssgmtRepository;
    private final BusInctrctinfCtrctbssgmtMapper busInctrctinfCtrctbssgmtMapper;
    private final BusInctrctinfCreditlimsgmtRepository busInctrctinfCreditlimsgmtRepository;
    private final BusInctrctinfCreditlimsgmtMapper busInctrctinfCreditlimsgmtMapper;
    private final BusInctrctinfCtrctcertrelsgmtRepository busInctrctinfCtrctcertrelsgmtRepository;
    private final BusInctrctinfCtrctcertrelsgmtMapper busInctrctinfCtrctcertrelsgmtMapper;
    @Override
    public Map<String,Object> queryAll(BusUpdateInctrctinfbycodeQueryCriteria criteria, Pageable pageable){
        Page<BusUpdateInctrctinfbycode> page = busUpdateInctrctinfbycodeRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busUpdateInctrctinfbycodeMapper::toDto));
    }

    @Override
    public List<BusUpdateInctrctinfbycodeDto> queryAll(BusUpdateInctrctinfbycodeQueryCriteria criteria){
        List<BusUpdateInctrctinfbycode> listBusUpdateInctrctinfbycodes= busUpdateInctrctinfbycodeRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder));
        List<BusUpdateInctrctinfbycodeDto> listBusUpdateInctrctinfbycodeDtos=busUpdateInctrctinfbycodeMapper.toDto(listBusUpdateInctrctinfbycodes);
        for(BusUpdateInctrctinfbycodeDto bean:listBusUpdateInctrctinfbycodeDtos){
            if(null == bean.getMdfcsgmtcode() || "".equals(bean.getMdfcsgmtcode())){
               continue;
            }
            if(bean.getMdfcsgmtcode().equals("B")){
                BusInctrctinfCtrctbssgmtQueryCriteria busInctrctinfCtrctbssgmtQueryCriteria = new BusInctrctinfCtrctbssgmtQueryCriteria();
                busInctrctinfCtrctbssgmtQueryCriteria.setBusId(bean.getId());
                bean.setBusInctrctinfCtrctbssgmtDto(busInctrctinfCtrctbssgmtMapper.toDto(busInctrctinfCtrctbssgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,busInctrctinfCtrctbssgmtQueryCriteria,criteriaBuilder))).get(0));
            }else if(bean.getMdfcsgmtcode().equals("D")){
                BusInctrctinfCreditlimsgmtQueryCriteria busInctrctinfCreditlimsgmtQueryCriteria=new BusInctrctinfCreditlimsgmtQueryCriteria();
                busInctrctinfCreditlimsgmtQueryCriteria.setBusId(bean.getId());
                bean.setBusInctrctinfCreditlimsgmtDto(busInctrctinfCreditlimsgmtMapper.toDto(busInctrctinfCreditlimsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,busInctrctinfCreditlimsgmtQueryCriteria,criteriaBuilder))).get(0));
            } else if(bean.getMdfcsgmtcode().equals("C")){
                BusInctrctinfCtrctcertrelsgmtQueryCriteria busInctrctinfCtrctcertrelsgmtQueryCriteria=new BusInctrctinfCtrctcertrelsgmtQueryCriteria();
                busInctrctinfCtrctcertrelsgmtQueryCriteria.setBusId(bean.getId());
                bean.setBusInctrctinfCtrctcertrelsgmtDto(busInctrctinfCtrctcertrelsgmtMapper.toDto(busInctrctinfCtrctcertrelsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,busInctrctinfCtrctcertrelsgmtQueryCriteria,criteriaBuilder))).get(0));
            }
        }
        return listBusUpdateInctrctinfbycodeDtos;
    }

    @Override
    @Transactional
    public BusUpdateInctrctinfbycodeDto findById(Long id) {
        BusUpdateInctrctinfbycode busUpdateInctrctinfbycode = busUpdateInctrctinfbycodeRepository.findById(id).orElseGet(BusUpdateInctrctinfbycode::new);
        ValidationUtil.isNull(busUpdateInctrctinfbycode.getId(),"BusUpdateInctrctinfbycode","id",id);
        return busUpdateInctrctinfbycodeMapper.toDto(busUpdateInctrctinfbycode);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusUpdateInctrctinfbycodeDto create(BusUpdateInctrctinfbycode resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busUpdateInctrctinfbycodeMapper.toDto(busUpdateInctrctinfbycodeRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusUpdateInctrctinfbycode resources) {
        BusUpdateInctrctinfbycode busUpdateInctrctinfbycode = busUpdateInctrctinfbycodeRepository.findById(resources.getId()).orElseGet(BusUpdateInctrctinfbycode::new);
        ValidationUtil.isNull( busUpdateInctrctinfbycode.getId(),"BusUpdateInctrctinfbycode","id",resources.getId());
        busUpdateInctrctinfbycode.copy(resources);
        busUpdateInctrctinfbycodeRepository.save(busUpdateInctrctinfbycode);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busUpdateInctrctinfbycodeRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusUpdateInctrctinfbycodeDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusUpdateInctrctinfbycodeDto busUpdateInctrctinfbycode : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("借据编号", busUpdateInctrctinfbycode.getAccloanid());
            map.put("信息记录类型", busUpdateInctrctinfbycode.getInfrectype());
            map.put("待更正业务标识码", busUpdateInctrctinfbycode.getModreccode());
            map.put("信息报告日期", busUpdateInctrctinfbycode.getRptdate());
            map.put("待更正段段标", busUpdateInctrctinfbycode.getMdfcsgmtcode());
            map.put("上报状态", busUpdateInctrctinfbycode.getUploadstatus());
            map.put("上报标识", busUpdateInctrctinfbycode.getUploadflag());
            map.put(" createTime",  busUpdateInctrctinfbycode.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }

    @Override
    public void downloadCreditFile(List<BusUpdateInctrctinfbycodeDto> all, HttpServletRequest request, HttpServletResponse response) throws Exception {
        if (all == null) {
            throw new BadRequestException("请选择数据");
        }
        try {
            File file = new File(CreditInfoUtil.downloadUUpdateInctrctinfbycodeFile(all, TaskConstants.Task_Bus_Update_Inctrctinfbycode+ DateHelper.getCurrentTimeNoSLong(),
                    TaskConstants.Bus_Update_Inctrctinfbycode));
            String zipPath = file.getPath() + ".zip";
            ZipUtil.zip(file.getPath(), zipPath);
            FileUtil.downloadFile(request, response, new File(zipPath), true);
        } catch (IOException e) {
            throw new BadRequestException("打包失败");
        }
    }

    @Override
    public void downloadCreditFile(List<BusUpdateInctrctinfbycodeDto> all) throws Exception {
        if (all == null) {
            throw new BadRequestException("请选择数据");
        }
        try {
            File file = new File(CreditInfoUtil.downloadUUpdateInctrctinfbycodeFile(all, TaskConstants.Task_Bus_Update_Inctrctinfbycode+ DateHelper.getCurrentTimeNoSLong(),
                    TaskConstants.Bus_Update_Inctrctinfbycode));
            String zipPath = file.getPath() + ".zip";
            ZipUtil.zip(file.getPath(), zipPath);
        } catch (IOException e) {
            throw new BadRequestException("打包失败");
        }
    }
}