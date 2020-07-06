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

import me.zhengjie.modules.accountinfo.domain.BusInacctinfAcctdbtinfsgmt;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.accountinfo.repository.BusInacctinfAcctdbtinfsgmtRepository;
import me.zhengjie.modules.accountinfo.service.BusInacctinfAcctdbtinfsgmtService;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfAcctdbtinfsgmtDto;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfAcctdbtinfsgmtQueryCriteria;
import me.zhengjie.modules.accountinfo.service.mapstruct.BusInacctinfAcctdbtinfsgmtMapper;
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
public class BusInacctinfAcctdbtinfsgmtServiceImpl implements BusInacctinfAcctdbtinfsgmtService {

    private final BusInacctinfAcctdbtinfsgmtRepository busInacctinfAcctdbtinfsgmtRepository;
    private final BusInacctinfAcctdbtinfsgmtMapper busInacctinfAcctdbtinfsgmtMapper;

    @Override
    public Map<String,Object> queryAll(BusInacctinfAcctdbtinfsgmtQueryCriteria criteria, Pageable pageable){
        Page<BusInacctinfAcctdbtinfsgmt> page = busInacctinfAcctdbtinfsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busInacctinfAcctdbtinfsgmtMapper::toDto));
    }

    @Override
    public List<BusInacctinfAcctdbtinfsgmtDto> queryAll(BusInacctinfAcctdbtinfsgmtQueryCriteria criteria){
        return busInacctinfAcctdbtinfsgmtMapper.toDto(busInacctinfAcctdbtinfsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusInacctinfAcctdbtinfsgmtDto findById(Long id) {
        BusInacctinfAcctdbtinfsgmt busInacctinfAcctdbtinfsgmt = busInacctinfAcctdbtinfsgmtRepository.findById(id).orElseGet(BusInacctinfAcctdbtinfsgmt::new);
        ValidationUtil.isNull(busInacctinfAcctdbtinfsgmt.getId(),"BusInacctinfAcctdbtinfsgmt","id",id);
        return busInacctinfAcctdbtinfsgmtMapper.toDto(busInacctinfAcctdbtinfsgmt);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusInacctinfAcctdbtinfsgmtDto create(BusInacctinfAcctdbtinfsgmt resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busInacctinfAcctdbtinfsgmtMapper.toDto(busInacctinfAcctdbtinfsgmtRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusInacctinfAcctdbtinfsgmt resources) {
        BusInacctinfAcctdbtinfsgmt busInacctinfAcctdbtinfsgmt = busInacctinfAcctdbtinfsgmtRepository.findById(resources.getId()).orElseGet(BusInacctinfAcctdbtinfsgmt::new);
        ValidationUtil.isNull( busInacctinfAcctdbtinfsgmt.getId(),"BusInacctinfAcctdbtinfsgmt","id",resources.getId());
        busInacctinfAcctdbtinfsgmt.copy(resources);
        busInacctinfAcctdbtinfsgmtRepository.save(busInacctinfAcctdbtinfsgmt);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busInacctinfAcctdbtinfsgmtRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusInacctinfAcctdbtinfsgmtDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusInacctinfAcctdbtinfsgmtDto busInacctinfAcctdbtinfsgmt : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("借据编号", busInacctinfAcctdbtinfsgmt.getAccloanid());
            map.put("对应业务操作的主键", busInacctinfAcctdbtinfsgmt.getBusId());
            map.put("账户状态", busInacctinfAcctdbtinfsgmt.getAcctstatus());
            map.put("余额", busInacctinfAcctdbtinfsgmt.getAcctbal());
            map.put("五级分类", busInacctinfAcctdbtinfsgmt.getFivecate());
            map.put("五级分类认定日期", busInacctinfAcctdbtinfsgmt.getFivecateadjdate());
            map.put("剩余还款期数", busInacctinfAcctdbtinfsgmt.getRemrepprd());
            map.put("当前还款状态", busInacctinfAcctdbtinfsgmt.getRpystatus());
            map.put("当前逾期期数", busInacctinfAcctdbtinfsgmt.getOverdprd());
            map.put("当前逾期总额", busInacctinfAcctdbtinfsgmt.getTotoverd());
            map.put("最近一次实际还款金额", busInacctinfAcctdbtinfsgmt.getLatrpyamt());
            map.put("最近一次实际还款日期1", busInacctinfAcctdbtinfsgmt.getLatrpydate());
            map.put("账户关闭日期", busInacctinfAcctdbtinfsgmt.getClosedate());
            map.put("上报状态", busInacctinfAcctdbtinfsgmt.getUploadstatus());
            map.put("上报标识", busInacctinfAcctdbtinfsgmt.getUploadflag());
            map.put(" createTime",  busInacctinfAcctdbtinfsgmt.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}