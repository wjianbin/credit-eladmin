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
import me.zhengjie.modules.contract.domain.BusDelInctrctdel;
import me.zhengjie.modules.contract.service.BusDelInctrctdelService;
import me.zhengjie.modules.contract.service.dto.BusDelInctrctdelQueryCriteria;
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
@Api(tags = "/api/del_inctrctdel管理")
@RequestMapping("/api/busDelInctrctdel")
public class BusDelInctrctdelController {

    private final BusDelInctrctdelService busDelInctrctdelService;

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('busDelInctrctdel:list')")
    public void download(HttpServletRequest request,HttpServletResponse response, BusDelInctrctdelQueryCriteria criteria) throws Exception {
       // busDelInctrctdelService.download(busDelInctrctdelService.queryAll(criteria), response);
        busDelInctrctdelService.downloadCreditFile(busDelInctrctdelService.queryAll(criteria),request,response);
    }

    @GetMapping
    @Log("查询/api/del_inctrctdel")
    @ApiOperation("查询/api/del_inctrctdel")
    @PreAuthorize("@el.check('busDelInctrctdel:list')")
    public ResponseEntity<Object> query(BusDelInctrctdelQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(busDelInctrctdelService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增/api/del_inctrctdel")
    @ApiOperation("新增/api/del_inctrctdel")
    @PreAuthorize("@el.check('busDelInctrctdel:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody BusDelInctrctdel resources){
        return new ResponseEntity<>(busDelInctrctdelService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改/api/del_inctrctdel")
    @ApiOperation("修改/api/del_inctrctdel")
    @PreAuthorize("@el.check('busDelInctrctdel:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody BusDelInctrctdel resources){
        busDelInctrctdelService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除/api/del_inctrctdel")
    @ApiOperation("删除/api/del_inctrctdel")
    @PreAuthorize("@el.check('busDelInctrctdel:del')")
    @DeleteMapping
    public ResponseEntity<Object> delete(@RequestBody Long[] ids) {
        busDelInctrctdelService.deleteAll(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}