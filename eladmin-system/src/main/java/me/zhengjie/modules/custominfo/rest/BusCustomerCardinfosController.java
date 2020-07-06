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
import me.zhengjie.modules.custominfo.domain.BusCustomerCardinfos;
import me.zhengjie.modules.custominfo.service.BusCustomerCardinfosService;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerCardinfosQueryCriteria;
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
@Api(tags = "/api/customercardinfo管理")
@RequestMapping("/api/busCustomerCardinfos")
public class BusCustomerCardinfosController {

    private final BusCustomerCardinfosService busCustomerCardinfosService;

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('busCustomerCardinfos:list')")
    public void download(HttpServletResponse response, BusCustomerCardinfosQueryCriteria criteria) throws IOException {
        busCustomerCardinfosService.download(busCustomerCardinfosService.queryAll(criteria), response);
    }

    @GetMapping
    @Log("查询/api/customercardinfo")
    @ApiOperation("查询/api/customercardinfo")
    @PreAuthorize("@el.check('busCustomerCardinfos:list')")
    public ResponseEntity<Object> query(BusCustomerCardinfosQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(busCustomerCardinfosService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增/api/customercardinfo")
    @ApiOperation("新增/api/customercardinfo")
    @PreAuthorize("@el.check('busCustomerCardinfos:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody BusCustomerCardinfos resources){
        return new ResponseEntity<>(busCustomerCardinfosService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改/api/customercardinfo")
    @ApiOperation("修改/api/customercardinfo")
    @PreAuthorize("@el.check('busCustomerCardinfos:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody BusCustomerCardinfos resources){
        busCustomerCardinfosService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除/api/customercardinfo")
    @ApiOperation("删除/api/customercardinfo")
    @PreAuthorize("@el.check('busCustomerCardinfos:del')")
    @DeleteMapping
    public ResponseEntity<Object> delete(@RequestBody Long[] ids) {
        busCustomerCardinfosService.deleteAll(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}