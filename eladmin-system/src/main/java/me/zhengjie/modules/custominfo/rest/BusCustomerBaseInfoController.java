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
import me.zhengjie.modules.custominfo.domain.BusCustomerBaseInfo;
import me.zhengjie.modules.custominfo.service.BusCustomerBaseInfoService;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerBaseInfoDto;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerBaseInfoQueryCriteria;
import org.springframework.data.domain.Pageable;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
* @website https://el-admin.vip
* @author jianb-wang
* @date 2020-06-29
**/
@RestController
@RequiredArgsConstructor
@Api(tags = "/api/customerBaseInfo管理")
@RequestMapping("/api/busCustomerBaseInfo")
public class BusCustomerBaseInfoController {

    private final BusCustomerBaseInfoService busCustomerBaseInfoService;

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('busCustomerBaseInfo:list')")
    public void download(HttpServletRequest request, HttpServletResponse response, BusCustomerBaseInfoQueryCriteria criteria) throws Exception {
        List<BusCustomerBaseInfoDto> all= busCustomerBaseInfoService.queryAll(criteria);
        busCustomerBaseInfoService.downloadCreditFile(all,  request,  response);
        //busCustomerBaseInfoService.downloadCreditFile(busCustomerBaseInfoService.queryAll(criteria), HttpServletRequest request, HttpServletResponse response);
    }

    @GetMapping
    @Log("查询/api/customerBaseInfo")
    @ApiOperation("查询/api/customerBaseInfo")
    @PreAuthorize("@el.check('busCustomerBaseInfo:list')")
    public ResponseEntity<Object> query(BusCustomerBaseInfoQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(busCustomerBaseInfoService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增/api/customerBaseInfo")
    @ApiOperation("新增/api/customerBaseInfo")
    @PreAuthorize("@el.check('busCustomerBaseInfo:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody BusCustomerBaseInfo resources){
        return new ResponseEntity<>(busCustomerBaseInfoService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改/api/customerBaseInfo")
    @ApiOperation("修改/api/customerBaseInfo")
    @PreAuthorize("@el.check('busCustomerBaseInfo:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody BusCustomerBaseInfo resources){
        busCustomerBaseInfoService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除/api/customerBaseInfo")
    @ApiOperation("删除/api/customerBaseInfo")
    @PreAuthorize("@el.check('busCustomerBaseInfo:del')")
    @DeleteMapping
    public ResponseEntity<Object> delete(@RequestBody Long[] ids) {
        busCustomerBaseInfoService.deleteAll(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
    
    @Log("下载报文数据")
    @ApiOperation("下载报文数据")
    @GetMapping(value = "/downloadcreditfile")
    public ResponseEntity<Object> downloadcreditfile(HttpServletRequest request,HttpServletResponse response, BusCustomerBaseInfoQueryCriteria criteria) throws Exception {
        
    	List<BusCustomerBaseInfoDto> all=new ArrayList<>();
		BusCustomerBaseInfoDto e=new BusCustomerBaseInfoDto();
		BusCustomerBaseInfoDto e1=new BusCustomerBaseInfoDto();
		all.add(e);
		all.add(e1);
		busCustomerBaseInfoService.downloadCreditFile(all,  request,  response);
    	//busCustomerBaseInfoService.downloadCreditFile(busCustomerBaseInfoService.queryAll(criteria), HttpServletRequest request, HttpServletResponse response);
	  return new ResponseEntity<>(HttpStatus.OK);
    }
}