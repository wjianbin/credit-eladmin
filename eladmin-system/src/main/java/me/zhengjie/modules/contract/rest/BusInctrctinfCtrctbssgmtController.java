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
import me.zhengjie.modules.contract.domain.BusInctrctinfCtrctbssgmt;
import me.zhengjie.modules.contract.service.BusInctrctinfCtrctbssgmtService;
import me.zhengjie.modules.contract.service.dto.BusInctrctinfCtrctbssgmtQueryCriteria;
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
@Api(tags = "/api/inctrctinf_ctrctbssgmt管理")
@RequestMapping("/api/busInctrctinfCtrctbssgmt")
public class BusInctrctinfCtrctbssgmtController {

    private final BusInctrctinfCtrctbssgmtService busInctrctinfCtrctbssgmtService;

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('busInctrctinfCtrctbssgmt:list')")
    public void download(HttpServletResponse response, BusInctrctinfCtrctbssgmtQueryCriteria criteria) throws IOException {
        busInctrctinfCtrctbssgmtService.download(busInctrctinfCtrctbssgmtService.queryAll(criteria), response);
    }

    @GetMapping
    @Log("查询/api/inctrctinf_ctrctbssgmt")
    @ApiOperation("查询/api/inctrctinf_ctrctbssgmt")
    @PreAuthorize("@el.check('busInctrctinfCtrctbssgmt:list')")
    public ResponseEntity<Object> query(BusInctrctinfCtrctbssgmtQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(busInctrctinfCtrctbssgmtService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增/api/inctrctinf_ctrctbssgmt")
    @ApiOperation("新增/api/inctrctinf_ctrctbssgmt")
    @PreAuthorize("@el.check('busInctrctinfCtrctbssgmt:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody BusInctrctinfCtrctbssgmt resources){
        return new ResponseEntity<>(busInctrctinfCtrctbssgmtService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改/api/inctrctinf_ctrctbssgmt")
    @ApiOperation("修改/api/inctrctinf_ctrctbssgmt")
    @PreAuthorize("@el.check('busInctrctinfCtrctbssgmt:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody BusInctrctinfCtrctbssgmt resources){
        busInctrctinfCtrctbssgmtService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除/api/inctrctinf_ctrctbssgmt")
    @ApiOperation("删除/api/inctrctinf_ctrctbssgmt")
    @PreAuthorize("@el.check('busInctrctinfCtrctbssgmt:del')")
    @DeleteMapping
    public ResponseEntity<Object> delete(@RequestBody Long[] ids) {
        busInctrctinfCtrctbssgmtService.deleteAll(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}