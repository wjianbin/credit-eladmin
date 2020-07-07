package me.zhengjie.modules.quartz.task.custominfo;

import java.util.List;

import org.springframework.stereotype.Component;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import me.zhengjie.modules.creditsystem.service.BusSystemSetupService;
import me.zhengjie.modules.creditsystem.service.dto.BusSystemSetupDto;
import me.zhengjie.modules.custominfo.service.BusCustomerBaseInfoService;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerBaseInfoDto;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerBaseInfoQueryCriteria;

/**
 * 自动任务生成每日新增客户信息报文
 * 
 * @author jianbin-wang
 *
 */
@Slf4j
@Component
@RequiredArgsConstructor
public class CustomerBaseInfoTask {

	private final BusCustomerBaseInfoService busCustomerBaseInfoService;
	private final BusSystemSetupService busSystemSetupService;
	/**
	 * 1,获取当前处理日期 2,在busCustomerBaseInfo表中查询当日新增的客户数据 3,在固定目录下生成报文并打包
	 * 4,后续可以做出邮件自动发送，并且短信提醒 报送后更新相应记录
	 * @throws Exception 
	 */
	public void runNewData() throws Exception {
		// 查询数据库获取当前businessDate
		List<BusSystemSetupDto> busSystemSetupDtos = busSystemSetupService.queryAll(null);
		if (busSystemSetupDtos == null || busSystemSetupDtos.size() != 1) {
			throw new Exception();
		}
		BusSystemSetupDto busSystemSetupDto = busSystemSetupDtos.get(0);
		String businessDate = busSystemSetupDto.getBusinessdate();
		try {
			BusCustomerBaseInfoQueryCriteria criteria=new BusCustomerBaseInfoQueryCriteria();
			criteria.setCustomerid(businessDate);
			// TODO 按businessDate查询当日新增数据
			List<BusCustomerBaseInfoDto> all = busCustomerBaseInfoService.queryAll(criteria);
			// 在固定目录下生成报文并打包
			busCustomerBaseInfoService.downloadCreditFile(all);
			// 更新任务状态
		} catch (Exception e2) {
			e2.printStackTrace();
		}

	}
	/**
	 * 1,获取当前处理日期 2,在busCustomerBaseInfo表中查询当日更新的客户数据 3,在固定目录下生成报文并打包
	 * 4,后续可以做出邮件自动发送，并且短信提醒 报送后更新相应记录
	 * @throws Exception 
	 */
	public void runUpdateData() throws Exception {
		// 查询数据库获取当前businessDate
		List<BusSystemSetupDto> busSystemSetupDtos = busSystemSetupService.queryAll(null);
		if (busSystemSetupDtos == null || busSystemSetupDtos.size() != 1) {
			throw new Exception();
		}
		BusSystemSetupDto busSystemSetupDto = busSystemSetupDtos.get(0);
		String businessDate = busSystemSetupDto.getBusinessdate();
		try {
			BusCustomerBaseInfoQueryCriteria criteria=new BusCustomerBaseInfoQueryCriteria();
			criteria.setCustomerid(businessDate);
			// TODO 按businessDate查询当日新增数据
			List<BusCustomerBaseInfoDto> all = busCustomerBaseInfoService.queryAll(criteria);
			// 在固定目录下生成报文并打包
			busCustomerBaseInfoService.downloadCreditFile(all);
			// 更新任务状态
		} catch (Exception e2) {
			e2.printStackTrace();
		}

	}
}
