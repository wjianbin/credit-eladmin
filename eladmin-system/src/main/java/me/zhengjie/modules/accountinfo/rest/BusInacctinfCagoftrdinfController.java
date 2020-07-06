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
import me.zhengjie.modules.accountinfo.domain.BusInacctinfCagoftrdinf;
import me.zhengjie.modules.accountinfo.service.BusInacctinfCagoftrdinfService;
import me.zhengjie.modules.accountinfo.service.dto.BusInacctinfCagoftrdinfQueryCriteria;
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
@Api(tags = "/api/cagoftrdinf管理")
@RequestMapping("/api/busInacctinfCagoftrdinf")
public class BusInacctinfCagoftrdinfController {

    private final BusInacctinfCagoftrdinfService busInacctinfCagoftrdinfService;

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('busInacctinfCagoftrdinf:list')")
    public void download(HttpServletResponse response, BusInacctinfCagoftrdinfQueryCriteria criteria) throws IOException {
        busInacctinfCagoftrdinfService.download(busInacctinfCagoftrdinfService.queryAll(criteria), response);
    }

    @GetMapping
    @Log("查询/api/cagoftrdinf")
    @ApiOperation("查询/api/cagoftrdinf")
    @PreAuthorize("@el.check('busInacctinfCagoftrdinf:list')")
    public ResponseEntity<Object> query(BusInacctinfCagoftrdinfQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(busInacctinfCagoftrdinfService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增/api/cagoftrdinf")
    @ApiOperation("新增/api/cagoftrdinf")
    @PreAuthorize("@el.check('busInacctinfCagoftrdinf:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody BusInacctinfCagoftrdinf resources){
        return new ResponseEntity<>(busInacctinfCagoftrdinfService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改/api/cagoftrdinf")
    @ApiOperation("修改/api/cagoftrdinf")
    @PreAuthorize("@el.check('busInacctinfCagoftrdinf:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody BusInacctinfCagoftrdinf resources){
        busInacctinfCagoftrdinfService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除/api/cagoftrdinf")
    @ApiOperation("删除/api/cagoftrdinf")
    @PreAuthorize("@el.check('busInacctinfCagoftrdinf:del')")
    @DeleteMapping
    public ResponseEntity<Object> delete(@RequestBody Long[] ids) {
        busInacctinfCagoftrdinfService.deleteAll(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}