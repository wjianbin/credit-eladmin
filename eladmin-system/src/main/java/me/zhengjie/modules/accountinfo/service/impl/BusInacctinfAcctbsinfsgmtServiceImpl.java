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

import me.zhengjie.modules.accountinfo.domain.BusInacctinfAcctbsinfsgmt;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.accountinfo.repository.BusInacctinfAcctbsinfsgmtRepository;
import me.zhengjie.modules.accountinfo.service.BusInacctinfAcctbsinfsgmtService;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfAcctbsinfsgmtDto;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfAcctbsinfsgmtQueryCriteria;
import me.zhengjie.modules.accountinfo.service.mapstruct.BusInacctinfAcctbsinfsgmtMapper;
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
public class BusInacctinfAcctbsinfsgmtServiceImpl implements BusInacctinfAcctbsinfsgmtService {

    private final BusInacctinfAcctbsinfsgmtRepository busInacctinfAcctbsinfsgmtRepository;
    private final BusInacctinfAcctbsinfsgmtMapper busInacctinfAcctbsinfsgmtMapper;

    @Override
    public Map<String,Object> queryAll(BusInacctinfAcctbsinfsgmtQueryCriteria criteria, Pageable pageable){
        Page<BusInacctinfAcctbsinfsgmt> page = busInacctinfAcctbsinfsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busInacctinfAcctbsinfsgmtMapper::toDto));
    }

    @Override
    public List<BusInacctinfAcctbsinfsgmtDto> queryAll(BusInacctinfAcctbsinfsgmtQueryCriteria criteria){
        return busInacctinfAcctbsinfsgmtMapper.toDto(busInacctinfAcctbsinfsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusInacctinfAcctbsinfsgmtDto findById(Long id) {
        BusInacctinfAcctbsinfsgmt busInacctinfAcctbsinfsgmt = busInacctinfAcctbsinfsgmtRepository.findById(id).orElseGet(BusInacctinfAcctbsinfsgmt::new);
        ValidationUtil.isNull(busInacctinfAcctbsinfsgmt.getId(),"BusInacctinfAcctbsinfsgmt","id",id);
        return busInacctinfAcctbsinfsgmtMapper.toDto(busInacctinfAcctbsinfsgmt);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusInacctinfAcctbsinfsgmtDto create(BusInacctinfAcctbsinfsgmt resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busInacctinfAcctbsinfsgmtMapper.toDto(busInacctinfAcctbsinfsgmtRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusInacctinfAcctbsinfsgmt resources) {
        BusInacctinfAcctbsinfsgmt busInacctinfAcctbsinfsgmt = busInacctinfAcctbsinfsgmtRepository.findById(resources.getId()).orElseGet(BusInacctinfAcctbsinfsgmt::new);
        ValidationUtil.isNull( busInacctinfAcctbsinfsgmt.getId(),"BusInacctinfAcctbsinfsgmt","id",resources.getId());
        busInacctinfAcctbsinfsgmt.copy(resources);
        busInacctinfAcctbsinfsgmtRepository.save(busInacctinfAcctbsinfsgmt);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busInacctinfAcctbsinfsgmtRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusInacctinfAcctbsinfsgmtDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusInacctinfAcctbsinfsgmtDto busInacctinfAcctbsinfsgmt : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("借据编号", busInacctinfAcctbsinfsgmt.getAccloanid());
            map.put("对应业务操作的主键", busInacctinfAcctbsinfsgmt.getBusId());
            map.put("借贷业务大类", busInacctinfAcctbsinfsgmt.getBusilines());
            map.put("借贷业务种类细分", busInacctinfAcctbsinfsgmt.getBusidtllines());
            map.put("开户日期", busInacctinfAcctbsinfsgmt.getOpendate());
            map.put("币种", busInacctinfAcctbsinfsgmt.getCy());
            map.put("信用额度", busInacctinfAcctbsinfsgmt.getAcctcredline());
            map.put("借款金额", busInacctinfAcctbsinfsgmt.getLoanamt());
            map.put("分次放款标志", busInacctinfAcctbsinfsgmt.getFlag());
            map.put("到期日期", busInacctinfAcctbsinfsgmt.getDuedate());
            map.put("还款方式", busInacctinfAcctbsinfsgmt.getRepaymode());
            map.put("还款频率", busInacctinfAcctbsinfsgmt.getRepayfreqcy());
            map.put("还款期数", busInacctinfAcctbsinfsgmt.getRepayprd());
            map.put("业务申请地行政区划代码", busInacctinfAcctbsinfsgmt.getApplybusidist());
            map.put("担保方式", busInacctinfAcctbsinfsgmt.getGuarmode());
            map.put("其他还款保证方式", busInacctinfAcctbsinfsgmt.getOthrepyguarway());
            map.put("资产转让标志", busInacctinfAcctbsinfsgmt.getAssettrandflag());
            map.put("业务经营类型", busInacctinfAcctbsinfsgmt.getFundsou());
            map.put("贷款发放形式", busInacctinfAcctbsinfsgmt.getLoanform());
            map.put("卡片标识号", busInacctinfAcctbsinfsgmt.getCreditid());
            map.put("贷款合同编号", busInacctinfAcctbsinfsgmt.getLoanconcode());
            map.put("是否为首套住房贷款", busInacctinfAcctbsinfsgmt.getFirsthouloanflag());
            map.put("上报状态", busInacctinfAcctbsinfsgmt.getUploadstatus());
            map.put("上报标识", busInacctinfAcctbsinfsgmt.getUploadflag());
            map.put(" createTime",  busInacctinfAcctbsinfsgmt.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}