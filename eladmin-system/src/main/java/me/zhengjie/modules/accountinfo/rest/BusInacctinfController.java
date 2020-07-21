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
package me.zhengjie.modules.accountinfo.rest;

import me.zhengjie.annotation.Log;
import me.zhengjie.modules.accountinfo.domain.BusInacctinf;
import me.zhengjie.modules.accountinfo.domain.BusInacctinfRltrepymtinf;
import me.zhengjie.modules.accountinfo.service.*;
import me.zhengjie.modules.accountinfo.service.dto.*;
import org.springframework.data.domain.Pageable;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.*;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
* @website https://el-admin.vip
* @author jianb-wang
* @date 2020-07-01
**/
@RestController
@RequiredArgsConstructor
@Api(tags = "/api/inacctinf管理")
@RequestMapping("/api/busInacctinf")
public class    BusInacctinfController {

    private final BusInacctinfService busInacctinfService;
    private final BusInacctinfAcctbssgmtService busInacctinfAcctbssgmtService;
    private final BusInacctinfAcctbsinfsgmtService busInacctinfAcctbsinfsgmtService;
    private final BusInacctinfRltrepymtinfsgmtService busInacctinfRltrepymtinfsgmtService;
    private final BusInacctinfRltrepymtinfService busInacctinfRltrepymtinfService;
    private final BusInacctinfGuarmotgacltalctrctinfsgmtService busInacctinfGuarmotgacltalctrctinfsgmtService;
    private final BusInacctinfCccinfService busInacctinfCccinfService;
    private final BusInacctinfAcctcredsgmtService busInacctinfAcctcredsgmtService;
    private final BusInacctinfOrigcreditorinfsgmtService busInacctinfOrigcreditorinfsgmtService;
    private final BusInacctinfAcctmthlyblginfsgmtService busInacctinfAcctmthlyblginfsgmtService;
    private final BusInacctinfAcctdbtinfsgmtService busInacctinfAcctdbtinfsgmtService;
    private final BusInacctinfAcctspectrstdspnsgmtService busInacctinfAcctspectrstdspnsgmtService;
    private final BusInacctinfCagoftrdinfService busInacctinfCagoftrdinfService;


    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('busInacctinf:list')")
    public void download(HttpServletRequest request,HttpServletResponse response, BusInacctinfQueryCriteria criteria) throws Exception {
        //busInacctinfService.download(busInacctinfService.queryAll(criteria), response);
        List<BusInacctinfDto>  busInacctinfDtos=busInacctinfService.queryAll(criteria);
        for(BusInacctinfDto bean:busInacctinfDtos){
            //基础段
            BusInacctinfAcctbssgmtQueryCriteria busInacctinfAcctbssgmtQueryCriteria=new BusInacctinfAcctbssgmtQueryCriteria();
            busInacctinfAcctbssgmtQueryCriteria.setBusId(bean.getId());
            List<BusInacctinfAcctbssgmtDto> busInacctinfAcctbssgmtDtos= busInacctinfAcctbssgmtService.queryAll(busInacctinfAcctbssgmtQueryCriteria);
            if(null!=busInacctinfAcctbssgmtDtos&&busInacctinfAcctbssgmtDtos.size()!=0){
                bean.setBusInacctinfAcctbssgmtDto(busInacctinfAcctbssgmtDtos.get(0));
            }
            //基本信息段
            BusInacctinfAcctbsinfsgmtQueryCriteria busInacctinfAcctbsinfsgmtQueryCriteria=new BusInacctinfAcctbsinfsgmtQueryCriteria();
            busInacctinfAcctbsinfsgmtQueryCriteria.setBusId(bean.getId());
            List<BusInacctinfAcctbsinfsgmtDto> BusInacctinfAcctbsinfsgmtDtos=busInacctinfAcctbsinfsgmtService.queryAll(busInacctinfAcctbsinfsgmtQueryCriteria);
            if(null!=BusInacctinfAcctbsinfsgmtDtos&&BusInacctinfAcctbsinfsgmtDtos.size()!=0){
                bean.setBusInacctinfAcctbsinfsgmtDto(BusInacctinfAcctbsinfsgmtDtos.get(0));
            }
            //责任人信息
            BusInacctinfRltrepymtinfsgmtQueryCriteria BusInacctinfRltrepymtinfsgmtQueryCriteria=new BusInacctinfRltrepymtinfsgmtQueryCriteria();
            List<BusInacctinfRltrepymtinfsgmtDto>  busInacctinfRltrepymtinfsgmtDtos=  busInacctinfRltrepymtinfsgmtService.queryAll(BusInacctinfRltrepymtinfsgmtQueryCriteria);
            if(null!=busInacctinfRltrepymtinfsgmtDtos&&busInacctinfRltrepymtinfsgmtDtos.size()!=0){
                BusInacctinfRltrepymtinfsgmtDto busInacctinfRltrepymtinfsgmtDto=busInacctinfRltrepymtinfsgmtDtos.get(0);
                BusInacctinfRltrepymtinfQueryCriteria busInacctinfRltrepymtinf=new BusInacctinfRltrepymtinfQueryCriteria();
                busInacctinfRltrepymtinf.setRitId(busInacctinfRltrepymtinfsgmtDto.getRitId());
                List<BusInacctinfRltrepymtinfDto>  busInacctinfRltrepymtinfDtos= busInacctinfRltrepymtinfService.queryAll(busInacctinfRltrepymtinf);
                busInacctinfRltrepymtinfsgmtDto.setBusInacctinfRltrepymtinfDto(busInacctinfRltrepymtinfDtos);
                bean.setBusInacctinfRltrepymtinfsgmtDto(busInacctinfRltrepymtinfsgmtDto);
            }
            //抵（质）押合同信息
            BusInacctinfGuarmotgacltalctrctinfsgmtQueryCriteria busInacctinfGuarmotgacltalctrctinfsgmtQueryCriteria=new BusInacctinfGuarmotgacltalctrctinfsgmtQueryCriteria();
            busInacctinfGuarmotgacltalctrctinfsgmtQueryCriteria.setBusId(bean.getId());
            List<BusInacctinfGuarmotgacltalctrctinfsgmtDto> busInacctinfGuarmotgacltalctrctinfsgmtDtos= busInacctinfGuarmotgacltalctrctinfsgmtService.queryAll(busInacctinfGuarmotgacltalctrctinfsgmtQueryCriteria);
            if(null!=busInacctinfGuarmotgacltalctrctinfsgmtDtos&&busInacctinfGuarmotgacltalctrctinfsgmtDtos.size()!=0){
                BusInacctinfGuarmotgacltalctrctinfsgmtDto busInacctinfGuarmotgacltalctrctinfsgmtDto=busInacctinfGuarmotgacltalctrctinfsgmtDtos.get(0);
                BusInacctinfCccinfQueryCriteria busInacctinfCccinfQueryCriteria=new BusInacctinfCccinfQueryCriteria();
                busInacctinfCccinfQueryCriteria.setGuaId(busInacctinfGuarmotgacltalctrctinfsgmtDto.getGuaId());
                List<BusInacctinfCccinfDto> busInacctinfCccinfDtos=busInacctinfCccinfService.queryAll(busInacctinfCccinfQueryCriteria);
                busInacctinfGuarmotgacltalctrctinfsgmtDto.setBusInacctinfCccinfDto(busInacctinfCccinfDtos);
                bean.setBusInacctinfGuarmotgacltalctrctinfsgmtDto(busInacctinfGuarmotgacltalctrctinfsgmtDto);
            }
            //授信额度信息段
            BusInacctinfAcctcredsgmtQueryCriteria busInacctinfAcctcredsgmtQueryCriteria=new BusInacctinfAcctcredsgmtQueryCriteria();
            busInacctinfAcctcredsgmtQueryCriteria.setBusId(bean.getId());
            List<BusInacctinfAcctcredsgmtDto> busInacctinfAcctcredsgmtDtos= busInacctinfAcctcredsgmtService.queryAll(busInacctinfAcctcredsgmtQueryCriteria);
            if(null!=busInacctinfAcctcredsgmtDtos&&busInacctinfAcctcredsgmtDtos.size()!=0){
                bean.setBusInacctinfAcctcredsgmtDto(busInacctinfAcctcredsgmtDtos.get(0));
            }
            //初始债权说明段
            BusInacctinfOrigcreditorinfsgmtQueryCriteria busInacctinfOrigcreditorinfsgmtQueryCriteria=new BusInacctinfOrigcreditorinfsgmtQueryCriteria();
            busInacctinfOrigcreditorinfsgmtQueryCriteria.setBusId(bean.getId());
            List<BusInacctinfOrigcreditorinfsgmtDto> busInacctinfOrigcreditorinfsgmtDtos=busInacctinfOrigcreditorinfsgmtService.queryAll(busInacctinfOrigcreditorinfsgmtQueryCriteria);
            if(null!=busInacctinfOrigcreditorinfsgmtDtos&&busInacctinfOrigcreditorinfsgmtDtos.size()!=0){
                bean.setBusInacctinfOrigcreditorinfsgmtDto(busInacctinfOrigcreditorinfsgmtDtos.get(0));
            }
            //月度表现信息段
            BusInacctinfAcctmthlyblginfsgmtQueryCriteria busInacctinfAcctmthlyblginfsgmtQueryCriteria=new BusInacctinfAcctmthlyblginfsgmtQueryCriteria();
            busInacctinfAcctmthlyblginfsgmtQueryCriteria.setBusId(bean.getId());
            List<BusInacctinfAcctmthlyblginfsgmtDto>  busInacctinfAcctmthlyblginfsgmtDtos =busInacctinfAcctmthlyblginfsgmtService.queryAll(busInacctinfAcctmthlyblginfsgmtQueryCriteria);
            if(null!=busInacctinfAcctmthlyblginfsgmtDtos&&busInacctinfAcctmthlyblginfsgmtDtos.size()!=0){
                bean.setBusInacctinfAcctmthlyblginfsgmtDto(busInacctinfAcctmthlyblginfsgmtDtos.get(0));
            }
            //账户非月度表现信息段
            BusInacctinfAcctdbtinfsgmtQueryCriteria busInacctinfAcctdbtinfsgmtQueryCriteria=new BusInacctinfAcctdbtinfsgmtQueryCriteria();
            busInacctinfAcctdbtinfsgmtQueryCriteria.setBusId(bean.getId());
            List<BusInacctinfAcctdbtinfsgmtDto> busInacctinfAcctdbtinfsgmtDtos= busInacctinfAcctdbtinfsgmtService.queryAll(busInacctinfAcctdbtinfsgmtQueryCriteria);
            if(null!=busInacctinfAcctdbtinfsgmtDtos&&busInacctinfAcctdbtinfsgmtDtos.size()!=0){
                bean.setBusInacctinfAcctdbtinfsgmtDto(busInacctinfAcctdbtinfsgmtDtos.get(0));
            }
            //特殊交易说明段
            BusInacctinfAcctspectrstdspnsgmtQueryCriteria busInacctinfAcctspectrstdspnsgmtQueryCriteria=new BusInacctinfAcctspectrstdspnsgmtQueryCriteria();
            busInacctinfAcctspectrstdspnsgmtQueryCriteria.setBusId(bean.getId());
            List<BusInacctinfAcctspectrstdspnsgmtDto> busInacctinfAcctspectrstdspnsgmtDtos= busInacctinfAcctspectrstdspnsgmtService.queryAll(busInacctinfAcctspectrstdspnsgmtQueryCriteria);
            if(null!=busInacctinfAcctspectrstdspnsgmtDtos&&busInacctinfAcctspectrstdspnsgmtDtos.size()!=0){
                BusInacctinfAcctspectrstdspnsgmtDto busInacctinfAcctspectrstdspnsgmtDto=busInacctinfAcctspectrstdspnsgmtDtos.get(0);
                BusInacctinfCagoftrdinfQueryCriteria busInacctinfCagoftrdinfQueryCriteria=new BusInacctinfCagoftrdinfQueryCriteria();
                busInacctinfCagoftrdinfQueryCriteria.setAccId(busInacctinfAcctspectrstdspnsgmtDto.getId());
                List<BusInacctinfCagoftrdinfDto> busInacctinfCagoftrdinfDtos= busInacctinfCagoftrdinfService.queryAll(busInacctinfCagoftrdinfQueryCriteria);
                busInacctinfAcctspectrstdspnsgmtDto.setBusInacctinfCagoftrdinfDto(busInacctinfCagoftrdinfDtos);
                bean.setBusInacctinfAcctspectrstdspnsgmtDto(busInacctinfAcctspectrstdspnsgmtDtos.get(0));
            }
        }
        busInacctinfService.downloadCreditFile(busInacctinfDtos,request,response);
    }

    @GetMapping
    @Log("查询/api/inacctinf")
    @ApiOperation("查询/api/inacctinf")
    @PreAuthorize("@el.check('busInacctinf:list')")
    public ResponseEntity<Object> query(BusInacctinfQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(busInacctinfService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增/api/inacctinf")
    @ApiOperation("新增/api/inacctinf")
    @PreAuthorize("@el.check('busInacctinf:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody BusInacctinf resources){
        return new ResponseEntity<>(busInacctinfService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改/api/inacctinf")
    @ApiOperation("修改/api/inacctinf")
    @PreAuthorize("@el.check('busInacctinf:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody BusInacctinf resources){
        busInacctinfService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除/api/inacctinf")
    @ApiOperation("删除/api/inacctinf")
    @PreAuthorize("@el.check('busInacctinf:del')")
    @DeleteMapping
    public ResponseEntity<Object> delete(@RequestBody Long[] ids) {
        busInacctinfService.deleteAll(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}