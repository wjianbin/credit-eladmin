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
import me.zhengjie.modules.contract.domain.BusUpdateInctrctinfbycode;
import me.zhengjie.modules.contract.service.BusUpdateInctrctinfbycodeService;
import me.zhengjie.modules.contract.service.dto.BusUpdateInctrctinfbycodeQueryCriteria;
import org.springframework.data.domain.Pageable;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.*;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
* @website https://el-admin.vip
* @author jianb-wang
* @date 2020-07-01
**/
@RestController
@RequiredArgsConstructor
@Api(tags = "/api/update_inctrctinfbycode管理")
@RequestMapping("/api/busUpdateInctrctinfbycode")
public class BusUpdateInctrctinfbycodeController {

    private final BusUpdateInctrctinfbycodeService busUpdateInctrctinfbycodeService;

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('busUpdateInctrctinfbycode:list')")
    public void download(HttpServletRequest request,HttpServletResponse response, BusUpdateInctrctinfbycodeQueryCriteria criteria) throws Exception {
        //busUpdateInctrctinfbycodeService.download(busUpdateInctrctinfbycodeService.queryAll(criteria), response);
        busUpdateInctrctinfbycodeService.downloadCreditFile(busUpdateInctrctinfbycodeService.queryAll(criteria), request,response);
    }

    @GetMapping
    @Log("查询/api/update_inctrctinfbycode")
    @ApiOperation("查询/api/update_inctrctinfbycode")
    @PreAuthorize("@el.check('busUpdateInctrctinfbycode:list')")
    public ResponseEntity<Object> query(BusUpdateInctrctinfbycodeQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(busUpdateInctrctinfbycodeService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增/api/update_inctrctinfbycode")
    @ApiOperation("新增/api/update_inctrctinfbycode")
    @PreAuthorize("@el.check('busUpdateInctrctinfbycode:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody BusUpdateInctrctinfbycode resources){
        return new ResponseEntity<>(busUpdateInctrctinfbycodeService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改/api/update_inctrctinfbycode")
    @ApiOperation("修改/api/update_inctrctinfbycode")
    @PreAuthorize("@el.check('busUpdateInctrctinfbycode:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody BusUpdateInctrctinfbycode resources){
        busUpdateInctrctinfbycodeService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除/api/update_inctrctinfbycode")
    @ApiOperation("删除/api/update_inctrctinfbycode")
    @PreAuthorize("@el.check('busUpdateInctrctinfbycode:del')")
    @DeleteMapping
    public ResponseEntity<Object> delete(@RequestBody Long[] ids) {
        busUpdateInctrctinfbycodeService.deleteAll(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}