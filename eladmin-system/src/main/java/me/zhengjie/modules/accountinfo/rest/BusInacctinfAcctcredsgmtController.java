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
import me.zhengjie.modules.accountinfo.domain.BusInacctinfAcctcredsgmt;
import me.zhengjie.modules.accountinfo.service.BusInacctinfAcctcredsgmtService;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfAcctcredsgmtQueryCriteria;
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
@Api(tags = "/api/inacctinf_acctcredsgmt管理")
@RequestMapping("/api/busInacctinfAcctcredsgmt")
public class BusInacctinfAcctcredsgmtController {

    private final BusInacctinfAcctcredsgmtService busInacctinfAcctcredsgmtService;

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('busInacctinfAcctcredsgmt:list')")
    public void download(HttpServletResponse response, BusInacctinfAcctcredsgmtQueryCriteria criteria) throws IOException {
        busInacctinfAcctcredsgmtService.download(busInacctinfAcctcredsgmtService.queryAll(criteria), response);
    }

    @GetMapping
    @Log("查询/api/inacctinf_acctcredsgmt")
    @ApiOperation("查询/api/inacctinf_acctcredsgmt")
    @PreAuthorize("@el.check('busInacctinfAcctcredsgmt:list')")
    public ResponseEntity<Object> query(BusInacctinfAcctcredsgmtQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(busInacctinfAcctcredsgmtService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增/api/inacctinf_acctcredsgmt")
    @ApiOperation("新增/api/inacctinf_acctcredsgmt")
    @PreAuthorize("@el.check('busInacctinfAcctcredsgmt:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody BusInacctinfAcctcredsgmt resources){
        return new ResponseEntity<>(busInacctinfAcctcredsgmtService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改/api/inacctinf_acctcredsgmt")
    @ApiOperation("修改/api/inacctinf_acctcredsgmt")
    @PreAuthorize("@el.check('busInacctinfAcctcredsgmt:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody BusInacctinfAcctcredsgmt resources){
        busInacctinfAcctcredsgmtService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除/api/inacctinf_acctcredsgmt")
    @ApiOperation("删除/api/inacctinf_acctcredsgmt")
    @PreAuthorize("@el.check('busInacctinfAcctcredsgmt:del')")
    @DeleteMapping
    public ResponseEntity<Object> delete(@RequestBody Long[] ids) {
        busInacctinfAcctcredsgmtService.deleteAll(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}