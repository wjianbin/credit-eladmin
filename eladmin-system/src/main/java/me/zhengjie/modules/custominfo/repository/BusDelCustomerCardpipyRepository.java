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
package me.zhengjie.modules.custominfo.repository;

import me.zhengjie.modules.custominfo.domain.BusDelCustomerCardpipy;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
* @website https://el-admin.vip
* @author jianb-wang
* @date 2020-06-29
**/
public interface BusDelCustomerCardpipyRepository extends JpaRepository<BusDelCustomerCardpipy, Long>, JpaSpecificationExecutor<BusDelCustomerCardpipy> {
}