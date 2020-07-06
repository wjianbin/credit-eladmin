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
import me.zhengjie.modules.custominfo.domain.BusCustomerCardpipy;
import me.zhengjie.modules.custominfo.service.BusCustomerCardpipyService;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerCardpipyQueryCriteria;
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
@Api(tags = "/api/customercardpipy管理")
@RequestMapping("/api/busCustomerCardpipy")
public class BusCustomerCardpipyController {

    private final BusCustomerCardpipyService busCustomerCardpipyService;

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('busCustomerCardpipy:list')")
    public void download(HttpServletResponse response, BusCustomerCardpipyQueryCriteria criteria) throws IOException {
        busCustomerCardpipyService.download(busCustomerCardpipyService.queryAll(criteria), response);
    }

    @GetMapping
    @Log("查询/api/customercardpipy")
    @ApiOperation("查询/api/customercardpipy")
    @PreAuthorize("@el.check('busCustomerCardpipy:list')")
    public ResponseEntity<Object> query(BusCustomerCardpipyQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(busCustomerCardpipyService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增/api/customercardpipy")
    @ApiOperation("新增/api/customercardpipy")
    @PreAuthorize("@el.check('busCustomerCardpipy:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody BusCustomerCardpipy resources){
        return new ResponseEntity<>(busCustomerCardpipyService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改/api/customercardpipy")
    @ApiOperation("修改/api/customercardpipy")
    @PreAuthorize("@el.check('busCustomerCardpipy:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody BusCustomerCardpipy resources){
        busCustomerCardpipyService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除/api/customercardpipy")
    @ApiOperation("删除/api/customercardpipy")
    @PreAuthorize("@el.check('busCustomerCardpipy:del')")
    @DeleteMapping
    public ResponseEntity<Object> delete(@RequestBody Long[] ids) {
        busCustomerCardpipyService.deleteAll(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}