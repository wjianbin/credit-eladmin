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
import me.zhengjie.modules.accountinfo.domain.BusUpdateAcctinfbycode;
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
@Api(tags = "/api/updateacctinfbycode管理")
@RequestMapping("/api/busUpdateAcctinfbycode")
public class BusUpdateAcctinfbycodeController {

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
    private final BusUpdateAcctinfbycodeService busUpdateAcctinfbycodeService;
    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('busUpdateAcctinfbycode:list')")
    public void download(HttpServletRequest request,HttpServletResponse response, BusUpdateAcctinfbycodeQueryCriteria criteria) throws Exception {
        List<BusUpdateAcctinfbycodeDto> busUpdateAcctinfbycodeDtos = busUpdateAcctinfbycodeService.queryAll(criteria);
        for (BusUpdateAcctinfbycodeDto bean : busUpdateAcctinfbycodeDtos) {
            //基础段
            if ("".equals(bean.getMdfcsgmtcode()) || null == bean.getMdfcsgmtcode())
                continue;
            if (bean.getMdfcsgmtcode().equals("B")) {
                BusInacctinfAcctbssgmtQueryCriteria busInacctinfAcctbssgmtQueryCriteria = new BusInacctinfAcctbssgmtQueryCriteria();
                busInacctinfAcctbssgmtQueryCriteria.setBusId(bean.getId());
                List<BusInacctinfAcctbssgmtDto> busInacctinfAcctbssgmtDtos = busInacctinfAcctbssgmtService.queryAll(busInacctinfAcctbssgmtQueryCriteria);
                if (null != busInacctinfAcctbssgmtDtos && busInacctinfAcctbssgmtDtos.size() != 0) {
                    bean.setBusInacctinfAcctbssgmtDto(busInacctinfAcctbssgmtDtos.get(0));
                }
            }
            if (bean.getMdfcsgmtcode().equals("C")) {
                //基本信息段
                BusInacctinfAcctbsinfsgmtQueryCriteria busInacctinfAcctbsinfsgmtQueryCriteria = new BusInacctinfAcctbsinfsgmtQueryCriteria();
                busInacctinfAcctbsinfsgmtQueryCriteria.setBusId(bean.getId());
                List<BusInacctinfAcctbsinfsgmtDto> BusInacctinfAcctbsinfsgmtDtos = busInacctinfAcctbsinfsgmtService.queryAll(busInacctinfAcctbsinfsgmtQueryCriteria);
                if (null != BusInacctinfAcctbsinfsgmtDtos && BusInacctinfAcctbsinfsgmtDtos.size() != 0) {
                    bean.setBusInacctinfAcctbsinfsgmtDto(BusInacctinfAcctbsinfsgmtDtos.get(0));
                }
            }
            if (bean.getMdfcsgmtcode().equals("D")) {
                //责任人信息
                BusInacctinfRltrepymtinfsgmtQueryCriteria BusInacctinfRltrepymtinfsgmtQueryCriteria = new BusInacctinfRltrepymtinfsgmtQueryCriteria();
                List<BusInacctinfRltrepymtinfsgmtDto> busInacctinfRltrepymtinfsgmtDtos = busInacctinfRltrepymtinfsgmtService.queryAll(BusInacctinfRltrepymtinfsgmtQueryCriteria);
                if (null != busInacctinfRltrepymtinfsgmtDtos && busInacctinfRltrepymtinfsgmtDtos.size() != 0) {
                    BusInacctinfRltrepymtinfsgmtDto busInacctinfRltrepymtinfsgmtDto = busInacctinfRltrepymtinfsgmtDtos.get(0);
                    BusInacctinfRltrepymtinfQueryCriteria busInacctinfRltrepymtinf = new BusInacctinfRltrepymtinfQueryCriteria();
                    busInacctinfRltrepymtinf.setRitId(busInacctinfRltrepymtinfsgmtDto.getRitId());
                    List<BusInacctinfRltrepymtinfDto> busInacctinfRltrepymtinfDtos = busInacctinfRltrepymtinfService.queryAll(busInacctinfRltrepymtinf);
                    busInacctinfRltrepymtinfsgmtDto.setBusInacctinfRltrepymtinfDto(busInacctinfRltrepymtinfDtos);
                    bean.setBusInacctinfRltrepymtinfsgmtDto(busInacctinfRltrepymtinfsgmtDto);
                }
            }
            if (bean.getMdfcsgmtcode().equals("E")) {
                //抵（质）押合同信息
                BusInacctinfGuarmotgacltalctrctinfsgmtQueryCriteria busInacctinfGuarmotgacltalctrctinfsgmtQueryCriteria = new BusInacctinfGuarmotgacltalctrctinfsgmtQueryCriteria();
                busInacctinfGuarmotgacltalctrctinfsgmtQueryCriteria.setBusId(bean.getId());
                List<BusInacctinfGuarmotgacltalctrctinfsgmtDto> busInacctinfGuarmotgacltalctrctinfsgmtDtos = busInacctinfGuarmotgacltalctrctinfsgmtService.queryAll(busInacctinfGuarmotgacltalctrctinfsgmtQueryCriteria);
                if (null != busInacctinfGuarmotgacltalctrctinfsgmtDtos && busInacctinfGuarmotgacltalctrctinfsgmtDtos.size() != 0) {
                    BusInacctinfGuarmotgacltalctrctinfsgmtDto busInacctinfGuarmotgacltalctrctinfsgmtDto = busInacctinfGuarmotgacltalctrctinfsgmtDtos.get(0);
                    BusInacctinfCccinfQueryCriteria busInacctinfCccinfQueryCriteria = new BusInacctinfCccinfQueryCriteria();
                    busInacctinfCccinfQueryCriteria.setGuaId(busInacctinfGuarmotgacltalctrctinfsgmtDto.getGuaId());
                    List<BusInacctinfCccinfDto> busInacctinfCccinfDtos = busInacctinfCccinfService.queryAll(busInacctinfCccinfQueryCriteria);
                    busInacctinfGuarmotgacltalctrctinfsgmtDto.setBusInacctinfCccinfDto(busInacctinfCccinfDtos);
                    bean.setBusInacctinfGuarmotgacltalctrctinfsgmtDto(busInacctinfGuarmotgacltalctrctinfsgmtDto);
                }
            }
            if (bean.getMdfcsgmtcode().equals("F")) {
                //授信额度信息段
                BusInacctinfAcctcredsgmtQueryCriteria busInacctinfAcctcredsgmtQueryCriteria = new BusInacctinfAcctcredsgmtQueryCriteria();
                busInacctinfAcctcredsgmtQueryCriteria.setBusId(bean.getId());
                List<BusInacctinfAcctcredsgmtDto> busInacctinfAcctcredsgmtDtos = busInacctinfAcctcredsgmtService.queryAll(busInacctinfAcctcredsgmtQueryCriteria);
                if (null != busInacctinfAcctcredsgmtDtos && busInacctinfAcctcredsgmtDtos.size() != 0) {
                    bean.setBusInacctinfAcctcredsgmtDto(busInacctinfAcctcredsgmtDtos.get(0));
                }
            }
            if (bean.getMdfcsgmtcode().equals("G")) {
                //初始债权说明段
                BusInacctinfOrigcreditorinfsgmtQueryCriteria busInacctinfOrigcreditorinfsgmtQueryCriteria = new BusInacctinfOrigcreditorinfsgmtQueryCriteria();
                busInacctinfOrigcreditorinfsgmtQueryCriteria.setBusId(bean.getId());
                List<BusInacctinfOrigcreditorinfsgmtDto> busInacctinfOrigcreditorinfsgmtDtos = busInacctinfOrigcreditorinfsgmtService.queryAll(busInacctinfOrigcreditorinfsgmtQueryCriteria);
                if (null != busInacctinfOrigcreditorinfsgmtDtos && busInacctinfOrigcreditorinfsgmtDtos.size() != 0) {
                    bean.setBusInacctinfOrigcreditorinfsgmtDto(busInacctinfOrigcreditorinfsgmtDtos.get(0));
                }
            }
            if (bean.getMdfcsgmtcode().equals("H")) {
                //月度表现信息段
                BusInacctinfAcctmthlyblginfsgmtQueryCriteria busInacctinfAcctmthlyblginfsgmtQueryCriteria = new BusInacctinfAcctmthlyblginfsgmtQueryCriteria();
                busInacctinfAcctmthlyblginfsgmtQueryCriteria.setBusId(bean.getId());
                List<BusInacctinfAcctmthlyblginfsgmtDto> busInacctinfAcctmthlyblginfsgmtDtos = busInacctinfAcctmthlyblginfsgmtService.queryAll(busInacctinfAcctmthlyblginfsgmtQueryCriteria);
                if (null != busInacctinfAcctmthlyblginfsgmtDtos && busInacctinfAcctmthlyblginfsgmtDtos.size() != 0) {
                    bean.setBusInacctinfAcctmthlyblginfsgmtDto(busInacctinfAcctmthlyblginfsgmtDtos.get(0));
                }
            }
            if (bean.getMdfcsgmtcode().equals("J")) {
                //账户非月度表现信息段
                BusInacctinfAcctdbtinfsgmtQueryCriteria busInacctinfAcctdbtinfsgmtQueryCriteria = new BusInacctinfAcctdbtinfsgmtQueryCriteria();
                busInacctinfAcctdbtinfsgmtQueryCriteria.setBusId(bean.getId());
                List<BusInacctinfAcctdbtinfsgmtDto> busInacctinfAcctdbtinfsgmtDtos = busInacctinfAcctdbtinfsgmtService.queryAll(busInacctinfAcctdbtinfsgmtQueryCriteria);
                if (null != busInacctinfAcctdbtinfsgmtDtos && busInacctinfAcctdbtinfsgmtDtos.size() != 0) {
                    bean.setBusInacctinfAcctdbtinfsgmtDto(busInacctinfAcctdbtinfsgmtDtos.get(0));
                }
            }
            if (bean.getMdfcsgmtcode().equals("K")) {
                //特殊交易说明段
                BusInacctinfAcctspectrstdspnsgmtQueryCriteria busInacctinfAcctspectrstdspnsgmtQueryCriteria = new BusInacctinfAcctspectrstdspnsgmtQueryCriteria();
                busInacctinfAcctspectrstdspnsgmtQueryCriteria.setBusId(bean.getId());
                List<BusInacctinfAcctspectrstdspnsgmtDto> busInacctinfAcctspectrstdspnsgmtDtos = busInacctinfAcctspectrstdspnsgmtService.queryAll(busInacctinfAcctspectrstdspnsgmtQueryCriteria);
                if (null != busInacctinfAcctspectrstdspnsgmtDtos && busInacctinfAcctspectrstdspnsgmtDtos.size() != 0) {
                    BusInacctinfAcctspectrstdspnsgmtDto busInacctinfAcctspectrstdspnsgmtDto = busInacctinfAcctspectrstdspnsgmtDtos.get(0);
                    BusInacctinfCagoftrdinfQueryCriteria busInacctinfCagoftrdinfQueryCriteria = new BusInacctinfCagoftrdinfQueryCriteria();
                    busInacctinfCagoftrdinfQueryCriteria.setAccId(busInacctinfAcctspectrstdspnsgmtDto.getId());
                    List<BusInacctinfCagoftrdinfDto> busInacctinfCagoftrdinfDtos = busInacctinfCagoftrdinfService.queryAll(busInacctinfCagoftrdinfQueryCriteria);
                    busInacctinfAcctspectrstdspnsgmtDto.setBusInacctinfCagoftrdinfDto(busInacctinfCagoftrdinfDtos);
                    bean.setBusInacctinfAcctspectrstdspnsgmtDto(busInacctinfAcctspectrstdspnsgmtDtos.get(0));
                }
            }
            busUpdateAcctinfbycodeService.downloadCreditFile(busUpdateAcctinfbycodeDtos, request, response);
        }
    }

    @GetMapping
    @Log("查询/api/updateacctinfbycode")
    @ApiOperation("查询/api/updateacctinfbycode")
    @PreAuthorize("@el.check('busUpdateAcctinfbycode:list')")
    public ResponseEntity<Object> query(BusUpdateAcctinfbycodeQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(busUpdateAcctinfbycodeService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增/api/updateacctinfbycode")
    @ApiOperation("新增/api/updateacctinfbycode")
    @PreAuthorize("@el.check('busUpdateAcctinfbycode:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody BusUpdateAcctinfbycode resources){
        return new ResponseEntity<>(busUpdateAcctinfbycodeService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改/api/updateacctinfbycode")
    @ApiOperation("修改/api/updateacctinfbycode")
    @PreAuthorize("@el.check('busUpdateAcctinfbycode:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody BusUpdateAcctinfbycode resources){
        busUpdateAcctinfbycodeService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除/api/updateacctinfbycode")
    @ApiOperation("删除/api/updateacctinfbycode")
    @PreAuthorize("@el.check('busUpdateAcctinfbycode:del')")
    @DeleteMapping
    public ResponseEntity<Object> delete(@RequestBody Long[] ids) {
        busUpdateAcctinfbycodeService.deleteAll(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}