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

import me.zhengjie.modules.accountinfo.domain.BusInacctinfAcctmthlyblginfsgmt;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.modules.accountinfo.repository.BusInacctinfAcctmthlyblginfsgmtRepository;
import me.zhengjie.modules.accountinfo.service.BusInacctinfAcctmthlyblginfsgmtService;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfAcctmthlyblginfsgmtDto;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfAcctmthlyblginfsgmtQueryCriteria;
import me.zhengjie.modules.accountinfo.service.mapstruct.BusInacctinfAcctmthlyblginfsgmtMapper;
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
public class BusInacctinfAcctmthlyblginfsgmtServiceImpl implements BusInacctinfAcctmthlyblginfsgmtService {

    private final BusInacctinfAcctmthlyblginfsgmtRepository busInacctinfAcctmthlyblginfsgmtRepository;
    private final BusInacctinfAcctmthlyblginfsgmtMapper busInacctinfAcctmthlyblginfsgmtMapper;

    @Override
    public Map<String,Object> queryAll(BusInacctinfAcctmthlyblginfsgmtQueryCriteria criteria, Pageable pageable){
        Page<BusInacctinfAcctmthlyblginfsgmt> page = busInacctinfAcctmthlyblginfsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(busInacctinfAcctmthlyblginfsgmtMapper::toDto));
    }

    @Override
    public List<BusInacctinfAcctmthlyblginfsgmtDto> queryAll(BusInacctinfAcctmthlyblginfsgmtQueryCriteria criteria){
        return busInacctinfAcctmthlyblginfsgmtMapper.toDto(busInacctinfAcctmthlyblginfsgmtRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public BusInacctinfAcctmthlyblginfsgmtDto findById(Long id) {
        BusInacctinfAcctmthlyblginfsgmt busInacctinfAcctmthlyblginfsgmt = busInacctinfAcctmthlyblginfsgmtRepository.findById(id).orElseGet(BusInacctinfAcctmthlyblginfsgmt::new);
        ValidationUtil.isNull(busInacctinfAcctmthlyblginfsgmt.getId(),"BusInacctinfAcctmthlyblginfsgmt","id",id);
        return busInacctinfAcctmthlyblginfsgmtMapper.toDto(busInacctinfAcctmthlyblginfsgmt);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BusInacctinfAcctmthlyblginfsgmtDto create(BusInacctinfAcctmthlyblginfsgmt resources) {
        Snowflake snowflake = IdUtil.createSnowflake(1, 1);
        resources.setId(snowflake.nextId()); 
        return busInacctinfAcctmthlyblginfsgmtMapper.toDto(busInacctinfAcctmthlyblginfsgmtRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(BusInacctinfAcctmthlyblginfsgmt resources) {
        BusInacctinfAcctmthlyblginfsgmt busInacctinfAcctmthlyblginfsgmt = busInacctinfAcctmthlyblginfsgmtRepository.findById(resources.getId()).orElseGet(BusInacctinfAcctmthlyblginfsgmt::new);
        ValidationUtil.isNull( busInacctinfAcctmthlyblginfsgmt.getId(),"BusInacctinfAcctmthlyblginfsgmt","id",resources.getId());
        busInacctinfAcctmthlyblginfsgmt.copy(resources);
        busInacctinfAcctmthlyblginfsgmtRepository.save(busInacctinfAcctmthlyblginfsgmt);
    }

    @Override
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            busInacctinfAcctmthlyblginfsgmtRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<BusInacctinfAcctmthlyblginfsgmtDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (BusInacctinfAcctmthlyblginfsgmtDto busInacctinfAcctmthlyblginfsgmt : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("借据编号", busInacctinfAcctmthlyblginfsgmt.getAccloanid());
            map.put("对应业务操作的主键", busInacctinfAcctmthlyblginfsgmt.getBusId());
            map.put("月份", busInacctinfAcctmthlyblginfsgmt.getMonth());
            map.put("结算/应还款日", busInacctinfAcctmthlyblginfsgmt.getSettdate());
            map.put("账户状态", busInacctinfAcctmthlyblginfsgmt.getAcctstatus());
            map.put("余额", busInacctinfAcctmthlyblginfsgmt.getAcctbal());
            map.put("未出单的大额专项分期余额", busInacctinfAcctmthlyblginfsgmt.getNotisubal());
            map.put("剩余还款期数", busInacctinfAcctmthlyblginfsgmt.getRemrepprd());
            map.put("五级分类", busInacctinfAcctmthlyblginfsgmt.getFivecate());
            map.put("五级分类认定日期", busInacctinfAcctmthlyblginfsgmt.getFivecateadjdate());
            map.put("当前还款状态", busInacctinfAcctmthlyblginfsgmt.getRpystatus());
            map.put("实际还款百分比", busInacctinfAcctmthlyblginfsgmt.getRpyprct());
            map.put("当前逾期期数", busInacctinfAcctmthlyblginfsgmt.getOverdprd());
            map.put("当前逾期总额", busInacctinfAcctmthlyblginfsgmt.getTotoverd());
            map.put("逾期31-60天未归还本金", busInacctinfAcctmthlyblginfsgmt.getOved3160princ());
            map.put("逾期61-90天未归还本金", busInacctinfAcctmthlyblginfsgmt.getOved6190princ());
            map.put("逾期91-180天未归还本金", busInacctinfAcctmthlyblginfsgmt.getOved91180princ());
            map.put("逾期180天以上未归还本金", busInacctinfAcctmthlyblginfsgmt.getOvedprinc180());
            map.put("透支180天以上未还余额", busInacctinfAcctmthlyblginfsgmt.getOvedrawbaove180());
            map.put("本月应还款金额", busInacctinfAcctmthlyblginfsgmt.getCurrpyamt());
            map.put("本月实际还款金额", busInacctinfAcctmthlyblginfsgmt.getActrpyamt());
            map.put("最近一次实际还款日期", busInacctinfAcctmthlyblginfsgmt.getLatrpydate());
            map.put("账户关闭日期", busInacctinfAcctmthlyblginfsgmt.getClosedate());
            map.put("上报状态", busInacctinfAcctmthlyblginfsgmt.getUploadstatus());
            map.put("上报标识", busInacctinfAcctmthlyblginfsgmt.getUploadflag());
            map.put(" createTime",  busInacctinfAcctmthlyblginfsgmt.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}