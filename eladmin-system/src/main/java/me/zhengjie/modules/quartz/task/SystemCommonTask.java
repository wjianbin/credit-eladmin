package me.zhengjie.modules.quartz.task;

import java.util.List;

import org.springframework.stereotype.Component;

import com.alibaba.fastjson.JSON;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import me.zhengjie.modules.creditsystem.domain.BusSystemSetup;
import me.zhengjie.modules.creditsystem.service.BusSystemSetupService;
import me.zhengjie.modules.creditsystem.service.dto.BusSystemSetupDto;
import me.zhengjie.utils.DateHelper;

@Slf4j
@Component
@RequiredArgsConstructor
public class SystemCommonTask {
	private final BusSystemSetupService busSystemSetupService;

	/**
	 * 1,获取当前处理日期 2,切日 3,零点执行
	 * 
	 * @throws Exception
	 */

	public void run() throws Exception {

		// 查询数据库获取当前businessDate
		List<BusSystemSetupDto> busSystemSetupDtos = busSystemSetupService.queryAll(null);
		if (busSystemSetupDtos == null || busSystemSetupDtos.size() != 1) {
			throw new Exception();
		}
		BusSystemSetupDto busSystemSetupDto = busSystemSetupDtos.get(0);
		String businessDate = busSystemSetupDto.getBusinessdate();
		try {
			String nextDate = DateHelper.getRelativeDate(businessDate, DateHelper.TERM_UNIT_DAY, 1);
			// 更新businessDate
			busSystemSetupDto.setBusinessdate(nextDate);
			busSystemSetupDto.setBatchdate(nextDate);
			BusSystemSetup busSystemSetup = JSON.parseObject(JSON.toJSONString(busSystemSetupDto),
					BusSystemSetup.class);
			busSystemSetupService.update(busSystemSetup);
		} catch (Exception e2) {
			e2.printStackTrace();
		}

	}
}
