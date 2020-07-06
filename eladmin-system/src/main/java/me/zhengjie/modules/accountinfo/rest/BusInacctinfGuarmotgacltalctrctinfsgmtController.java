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
import me.zhengjie.modules.accountinfo.domain.BusInacctinfGuarmotgacltalctrctinfsgmt;
import me.zhengjie.modules.accountinfo.service.BusInacctinfGuarmotgacltalctrctinfsgmtService;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfGuarmotgacltalctrctinfsgmtQueryCriteria;
import org.springframework.data.domain.Pageable;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.*;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;

/**
* @website https://el-admin.vip
* @author jianb-wang
* @date 2020-07-01
**/
@RestController
@RequiredArgsConstructor
@Api(tags = "/api/inacctinf_guarmotgacltalctrctinfsgmt管理")
@RequestMapping("/api/busInacctinfGuarmotgacltalctrctinfsgmt")
public class BusInacctinfGuarmotgacltalctrctinfsgmtController {

    private final BusInacctinfGuarmotgacltalctrctinfsgmtService busInacctinfGuarmotgacltalctrctinfsgmtService;

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('busInacctinfGuarmotgacltalctrctinfsgmt:list')")
    public void download(HttpServletResponse response, BusInacctinfGuarmotgacltalctrctinfsgmtQueryCriteria criteria) throws IOException {
        busInacctinfGuarmotgacltalctrctinfsgmtService.download(busInacctinfGuarmotgacltalctrctinfsgmtService.queryAll(criteria), response);
    }

    @GetMapping
    @Log("查询/api/inacctinf_guarmotgacltalctrctinfsgmt")
    @ApiOperation("查询/api/inacctinf_guarmotgacltalctrctinfsgmt")
    @PreAuthorize("@el.check('busInacctinfGuarmotgacltalctrctinfsgmt:list')")
    public ResponseEntity<Object> query(BusInacctinfGuarmotgacltalctrctinfsgmtQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(busInacctinfGuarmotgacltalctrctinfsgmtService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增/api/inacctinf_guarmotgacltalctrctinfsgmt")
    @ApiOperation("新增/api/inacctinf_guarmotgacltalctrctinfsgmt")
    @PreAuthorize("@el.check('busInacctinfGuarmotgacltalctrctinfsgmt:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody BusInacctinfGuarmotgacltalctrctinfsgmt resources){
        return new ResponseEntity<>(busInacctinfGuarmotgacltalctrctinfsgmtService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改/api/inacctinf_guarmotgacltalctrctinfsgmt")
    @ApiOperation("修改/api/inacctinf_guarmotgacltalctrctinfsgmt")
    @PreAuthorize("@el.check('busInacctinfGuarmotgacltalctrctinfsgmt:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody BusInacctinfGuarmotgacltalctrctinfsgmt resources){
        busInacctinfGuarmotgacltalctrctinfsgmtService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除/api/inacctinf_guarmotgacltalctrctinfsgmt")
    @ApiOperation("删除/api/inacctinf_guarmotgacltalctrctinfsgmt")
    @PreAuthorize("@el.check('busInacctinfGuarmotgacltalctrctinfsgmt:del')")
    @DeleteMapping
    public ResponseEntity<Object> delete(@RequestBody Long[] ids) {
        busInacctinfGuarmotgacltalctrctinfsgmtService.deleteAll(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}