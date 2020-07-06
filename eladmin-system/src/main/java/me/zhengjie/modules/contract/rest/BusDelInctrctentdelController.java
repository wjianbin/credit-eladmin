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
import me.zhengjie.modules.contract.domain.BusDelInctrctentdel;
import me.zhengjie.modules.contract.service.BusDelInctrctentdelService;
import me.zhengjie.modules.contract.service.dto.BusDelInctrctentdelQueryCriteria;
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
@Api(tags = "/api/del_inctrctentdel管理")
@RequestMapping("/api/busDelInctrctentdel")
public class BusDelInctrctentdelController {

    private final BusDelInctrctentdelService busDelInctrctentdelService;

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('busDelInctrctentdel:list')")
    public void download(HttpServletResponse response, BusDelInctrctentdelQueryCriteria criteria) throws IOException {
        busDelInctrctentdelService.download(busDelInctrctentdelService.queryAll(criteria), response);
    }

    @GetMapping
    @Log("查询/api/del_inctrctentdel")
    @ApiOperation("查询/api/del_inctrctentdel")
    @PreAuthorize("@el.check('busDelInctrctentdel:list')")
    public ResponseEntity<Object> query(BusDelInctrctentdelQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(busDelInctrctentdelService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增/api/del_inctrctentdel")
    @ApiOperation("新增/api/del_inctrctentdel")
    @PreAuthorize("@el.check('busDelInctrctentdel:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody BusDelInctrctentdel resources){
        return new ResponseEntity<>(busDelInctrctentdelService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改/api/del_inctrctentdel")
    @ApiOperation("修改/api/del_inctrctentdel")
    @PreAuthorize("@el.check('busDelInctrctentdel:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody BusDelInctrctentdel resources){
        busDelInctrctentdelService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除/api/del_inctrctentdel")
    @ApiOperation("删除/api/del_inctrctentdel")
    @PreAuthorize("@el.check('busDelInctrctentdel:del')")
    @DeleteMapping
    public ResponseEntity<Object> delete(@RequestBody Long[] ids) {
        busDelInctrctentdelService.deleteAll(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}