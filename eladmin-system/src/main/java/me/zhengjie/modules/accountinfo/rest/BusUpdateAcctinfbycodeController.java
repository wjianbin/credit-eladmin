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
import me.zhengjie.modules.accountinfo.service.BusUpdateAcctinfbycodeService;
import me.zhengjie.modules.accountinfo.service.dto.BusUpdateAcctinfbycodeQueryCriteria;
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
@Api(tags = "/api/updateacctinfbycode管理")
@RequestMapping("/api/busUpdateAcctinfbycode")
public class BusUpdateAcctinfbycodeController {

    private final BusUpdateAcctinfbycodeService busUpdateAcctinfbycodeService;

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('busUpdateAcctinfbycode:list')")
    public void download(HttpServletRequest request,HttpServletResponse response, BusUpdateAcctinfbycodeQueryCriteria criteria) throws Exception {
        //busUpdateAcctinfbycodeService.download(busUpdateAcctinfbycodeService.queryAll(criteria), response);
        busUpdateAcctinfbycodeService.downloadCreditFile(busUpdateAcctinfbycodeService.queryAll(criteria),request,response);
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