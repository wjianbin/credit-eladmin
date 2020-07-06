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
package me.zhengjie.modules.custominfo.rest;

import me.zhengjie.annotation.Log;
import me.zhengjie.modules.custominfo.domain.BusCustomerOtherCardinfo;
import me.zhengjie.modules.custominfo.service.BusCustomerOtherCardinfoService;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerOtherCardinfoQueryCriteria;
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
* @date 2020-06-29
**/
@RestController
@RequiredArgsConstructor
@Api(tags = "/api/customerothercardinfo管理")
@RequestMapping("/api/busCustomerOtherCardinfo")
public class BusCustomerOtherCardinfoController {

    private final BusCustomerOtherCardinfoService busCustomerOtherCardinfoService;

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('busCustomerOtherCardinfo:list')")
    public void download(HttpServletResponse response, BusCustomerOtherCardinfoQueryCriteria criteria) throws IOException {
        busCustomerOtherCardinfoService.download(busCustomerOtherCardinfoService.queryAll(criteria), response);
    }

    @GetMapping
    @Log("查询/api/customerothercardinfo")
    @ApiOperation("查询/api/customerothercardinfo")
    @PreAuthorize("@el.check('busCustomerOtherCardinfo:list')")
    public ResponseEntity<Object> query(BusCustomerOtherCardinfoQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(busCustomerOtherCardinfoService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增/api/customerothercardinfo")
    @ApiOperation("新增/api/customerothercardinfo")
    @PreAuthorize("@el.check('busCustomerOtherCardinfo:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody BusCustomerOtherCardinfo resources){
        return new ResponseEntity<>(busCustomerOtherCardinfoService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改/api/customerothercardinfo")
    @ApiOperation("修改/api/customerothercardinfo")
    @PreAuthorize("@el.check('busCustomerOtherCardinfo:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody BusCustomerOtherCardinfo resources){
        busCustomerOtherCardinfoService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除/api/customerothercardinfo")
    @ApiOperation("删除/api/customerothercardinfo")
    @PreAuthorize("@el.check('busCustomerOtherCardinfo:del')")
    @DeleteMapping
    public ResponseEntity<Object> delete(@RequestBody Long[] ids) {
        busCustomerOtherCardinfoService.deleteAll(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}