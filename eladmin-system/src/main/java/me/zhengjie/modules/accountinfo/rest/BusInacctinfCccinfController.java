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
import me.zhengjie.modules.accountinfo.domain.BusInacctinfCccinf;
import me.zhengjie.modules.accountinfo.service.BusInacctinfCccinfService;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfCccinfQueryCriteria;
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
@Api(tags = "/api/cccinf管理")
@RequestMapping("/api/busInacctinfCccinf")
public class BusInacctinfCccinfController {

    private final BusInacctinfCccinfService busInacctinfCccinfService;

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('busInacctinfCccinf:list')")
    public void download(HttpServletResponse response, BusInacctinfCccinfQueryCriteria criteria) throws IOException {
        busInacctinfCccinfService.download(busInacctinfCccinfService.queryAll(criteria), response);
    }

    @GetMapping
    @Log("查询/api/cccinf")
    @ApiOperation("查询/api/cccinf")
    @PreAuthorize("@el.check('busInacctinfCccinf:list')")
    public ResponseEntity<Object> query(BusInacctinfCccinfQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(busInacctinfCccinfService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增/api/cccinf")
    @ApiOperation("新增/api/cccinf")
    @PreAuthorize("@el.check('busInacctinfCccinf:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody BusInacctinfCccinf resources){
        return new ResponseEntity<>(busInacctinfCccinfService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改/api/cccinf")
    @ApiOperation("修改/api/cccinf")
    @PreAuthorize("@el.check('busInacctinfCccinf:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody BusInacctinfCccinf resources){
        busInacctinfCccinfService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除/api/cccinf")
    @ApiOperation("删除/api/cccinf")
    @PreAuthorize("@el.check('busInacctinfCccinf:del')")
    @DeleteMapping
    public ResponseEntity<Object> delete(@RequestBody Long[] ids) {
        busInacctinfCccinfService.deleteAll(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}