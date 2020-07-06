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
import me.zhengjie.modules.contract.domain.BusInctrctinfCtrctcertrelsgmt;
import me.zhengjie.modules.contract.service.BusInctrctinfCtrctcertrelsgmtService;
import me.zhengjie.modules.contract.service.dto.BusInctrctinfCtrctcertrelsgmtQueryCriteria;
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
@Api(tags = "/api/inctrctinf_ctrctcertrelsgmt管理")
@RequestMapping("/api/busInctrctinfCtrctcertrelsgmt")
public class BusInctrctinfCtrctcertrelsgmtController {

    private final BusInctrctinfCtrctcertrelsgmtService busInctrctinfCtrctcertrelsgmtService;

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('busInctrctinfCtrctcertrelsgmt:list')")
    public void download(HttpServletResponse response, BusInctrctinfCtrctcertrelsgmtQueryCriteria criteria) throws IOException {
        busInctrctinfCtrctcertrelsgmtService.download(busInctrctinfCtrctcertrelsgmtService.queryAll(criteria), response);
    }

    @GetMapping
    @Log("查询/api/inctrctinf_ctrctcertrelsgmt")
    @ApiOperation("查询/api/inctrctinf_ctrctcertrelsgmt")
    @PreAuthorize("@el.check('busInctrctinfCtrctcertrelsgmt:list')")
    public ResponseEntity<Object> query(BusInctrctinfCtrctcertrelsgmtQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(busInctrctinfCtrctcertrelsgmtService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增/api/inctrctinf_ctrctcertrelsgmt")
    @ApiOperation("新增/api/inctrctinf_ctrctcertrelsgmt")
    @PreAuthorize("@el.check('busInctrctinfCtrctcertrelsgmt:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody BusInctrctinfCtrctcertrelsgmt resources){
        return new ResponseEntity<>(busInctrctinfCtrctcertrelsgmtService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改/api/inctrctinf_ctrctcertrelsgmt")
    @ApiOperation("修改/api/inctrctinf_ctrctcertrelsgmt")
    @PreAuthorize("@el.check('busInctrctinfCtrctcertrelsgmt:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody BusInctrctinfCtrctcertrelsgmt resources){
        busInctrctinfCtrctcertrelsgmtService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除/api/inctrctinf_ctrctcertrelsgmt")
    @ApiOperation("删除/api/inctrctinf_ctrctcertrelsgmt")
    @PreAuthorize("@el.check('busInctrctinfCtrctcertrelsgmt:del')")
    @DeleteMapping
    public ResponseEntity<Object> delete(@RequestBody Long[] ids) {
        busInctrctinfCtrctcertrelsgmtService.deleteAll(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}