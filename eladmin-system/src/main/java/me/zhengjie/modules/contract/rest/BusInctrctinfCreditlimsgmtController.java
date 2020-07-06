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
package me.zhengjie.modules.contract.rest;

import me.zhengjie.annotation.Log;
import me.zhengjie.modules.contract.domain.BusInctrctinfCreditlimsgmt;
import me.zhengjie.modules.contract.service.BusInctrctinfCreditlimsgmtService;
import me.zhengjie.modules.contract.service.dto.BusInctrctinfCreditlimsgmtQueryCriteria;
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
@Api(tags = "/api/inctrctinf_creditlimsgmt管理")
@RequestMapping("/api/busInctrctinfCreditlimsgmt")
public class BusInctrctinfCreditlimsgmtController {

    private final BusInctrctinfCreditlimsgmtService busInctrctinfCreditlimsgmtService;

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('busInctrctinfCreditlimsgmt:list')")
    public void download(HttpServletResponse response, BusInctrctinfCreditlimsgmtQueryCriteria criteria) throws IOException {
        busInctrctinfCreditlimsgmtService.download(busInctrctinfCreditlimsgmtService.queryAll(criteria), response);
    }

    @GetMapping
    @Log("查询/api/inctrctinf_creditlimsgmt")
    @ApiOperation("查询/api/inctrctinf_creditlimsgmt")
    @PreAuthorize("@el.check('busInctrctinfCreditlimsgmt:list')")
    public ResponseEntity<Object> query(BusInctrctinfCreditlimsgmtQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(busInctrctinfCreditlimsgmtService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增/api/inctrctinf_creditlimsgmt")
    @ApiOperation("新增/api/inctrctinf_creditlimsgmt")
    @PreAuthorize("@el.check('busInctrctinfCreditlimsgmt:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody BusInctrctinfCreditlimsgmt resources){
        return new ResponseEntity<>(busInctrctinfCreditlimsgmtService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改/api/inctrctinf_creditlimsgmt")
    @ApiOperation("修改/api/inctrctinf_creditlimsgmt")
    @PreAuthorize("@el.check('busInctrctinfCreditlimsgmt:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody BusInctrctinfCreditlimsgmt resources){
        busInctrctinfCreditlimsgmtService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除/api/inctrctinf_creditlimsgmt")
    @ApiOperation("删除/api/inctrctinf_creditlimsgmt")
    @PreAuthorize("@el.check('busInctrctinfCreditlimsgmt:del')")
    @DeleteMapping
    public ResponseEntity<Object> delete(@RequestBody Long[] ids) {
        busInctrctinfCreditlimsgmtService.deleteAll(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}