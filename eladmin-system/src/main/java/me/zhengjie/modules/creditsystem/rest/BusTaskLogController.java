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
package me.zhengjie.modules.creditsystem.rest;

import me.zhengjie.annotation.Log;
import me.zhengjie.modules.creditsystem.domain.BusTaskLog;
import me.zhengjie.modules.creditsystem.service.BusTaskLogService;
import me.zhengjie.modules.creditsystem.service.dto.BusTaskLogQueryCriteria;
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
* @date 2020-07-07
**/
@RestController
@RequiredArgsConstructor
@Api(tags = "/api/bus_task_log管理")
@RequestMapping("/api/busTaskLog")
public class BusTaskLogController {

    private final BusTaskLogService busTaskLogService;

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('busTaskLog:list')")
    public void download(HttpServletResponse response, BusTaskLogQueryCriteria criteria) throws IOException {
        busTaskLogService.download(busTaskLogService.queryAll(criteria), response);
    }

    @GetMapping
    @Log("查询/api/bus_task_log")
    @ApiOperation("查询/api/bus_task_log")
    @PreAuthorize("@el.check('busTaskLog:list')")
    public ResponseEntity<Object> query(BusTaskLogQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(busTaskLogService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增/api/bus_task_log")
    @ApiOperation("新增/api/bus_task_log")
    @PreAuthorize("@el.check('busTaskLog:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody BusTaskLog resources){
        return new ResponseEntity<>(busTaskLogService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改/api/bus_task_log")
    @ApiOperation("修改/api/bus_task_log")
    @PreAuthorize("@el.check('busTaskLog:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody BusTaskLog resources){
        busTaskLogService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除/api/bus_task_log")
    @ApiOperation("删除/api/bus_task_log")
    @PreAuthorize("@el.check('busTaskLog:del')")
    @DeleteMapping
    public ResponseEntity<Object> delete(@RequestBody Long[] ids) {
        busTaskLogService.deleteAll(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}