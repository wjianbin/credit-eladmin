package me.zhengjie.modules.quartz.task;

import java.util.ArrayList;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import me.zhengjie.modules.custominfo.service.BusCustomerBaseInfoService;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerBaseInfoDto;

@Slf4j
@Component
@RequiredArgsConstructor
public class TestCreditTask {
	
	   private final BusCustomerBaseInfoService busCustomerBaseInfoService;
	   
	   public void run(){
		   List<BusCustomerBaseInfoDto> all=new ArrayList<>();
			BusCustomerBaseInfoDto e=new BusCustomerBaseInfoDto();
			BusCustomerBaseInfoDto e1=new BusCustomerBaseInfoDto();
			all.add(e);
			all.add(e1);
			busCustomerBaseInfoService.downloadCreditFile(all);
	    }
}
