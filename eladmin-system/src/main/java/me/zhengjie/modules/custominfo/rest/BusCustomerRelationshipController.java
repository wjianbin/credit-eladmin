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
import me.zhengjie.modules.custominfo.domain.BusCustomerRelationship;
import me.zhengjie.modules.custominfo.service.BusCustomerRelationshipService;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerRelationshipQueryCriteria;
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
@Api(tags = "/api/customerrelationship管理")
@RequestMapping("/api/busCustomerRelationship")
public class BusCustomerRelationshipController {

    private final BusCustomerRelationshipService busCustomerRelationshipService;

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('busCustomerRelationship:list')")
    public void download(HttpServletResponse response, BusCustomerRelationshipQueryCriteria criteria) throws IOException {
        busCustomerRelationshipService.download(busCustomerRelationshipService.queryAll(criteria), response);
    }

    @GetMapping
    @Log("查询/api/customerrelationship")
    @ApiOperation("查询/api/customerrelationship")
    @PreAuthorize("@el.check('busCustomerRelationship:list')")
    public ResponseEntity<Object> query(BusCustomerRelationshipQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(busCustomerRelationshipService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增/api/customerrelationship")
    @ApiOperation("新增/api/customerrelationship")
    @PreAuthorize("@el.check('busCustomerRelationship:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody BusCustomerRelationship resources){
        return new ResponseEntity<>(busCustomerRelationshipService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改/api/customerrelationship")
    @ApiOperation("修改/api/customerrelationship")
    @PreAuthorize("@el.check('busCustomerRelationship:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody BusCustomerRelationship resources){
        busCustomerRelationshipService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除/api/customerrelationship")
    @ApiOperation("删除/api/customerrelationship")
    @PreAuthorize("@el.check('busCustomerRelationship:del')")
    @DeleteMapping
    public ResponseEntity<Object> delete(@RequestBody Long[] ids) {
        busCustomerRelationshipService.deleteAll(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}