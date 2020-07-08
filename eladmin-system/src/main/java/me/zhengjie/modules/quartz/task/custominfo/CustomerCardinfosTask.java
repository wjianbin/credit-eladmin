package me.zhengjie.modules.quartz.task.custominfo;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.stereotype.Component;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import me.zhengjie.modules.creditsystem.domain.BusTaskLog;
import me.zhengjie.modules.creditsystem.service.BusSystemSetupService;
import me.zhengjie.modules.creditsystem.service.BusTaskLogService;
import me.zhengjie.modules.creditsystem.service.dto.BusSystemSetupDto;
import me.zhengjie.modules.custominfo.service.BusCustomerCardinfosService;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerCardinfosDto;
import me.zhengjie.modules.custominfo.service.dto.BusCustomerCardinfosQueryCriteria;
import me.zhengjie.modules.quartz.constant.TaskConstants;
import me.zhengjie.utils.DateHelper;

/**
 * 自动任务生成息报文
 * 
 * @author jianbin-wang
 *
 */
@Slf4j
@Component
@RequiredArgsConstructor
public class CustomerCardinfosTask {

	private final BusCustomerCardinfosService busCustomerCardinfosService;
	private final BusSystemSetupService busSystemSetupService;
	private final BusTaskLogService busTaskLogService;

	/**
	 * 1,获取当前处理日期 2,在busCustomerBaseInfo表中查询当日新增的客户数据 3,在固定目录下生成报文并打包
	 * 4,后续可以做出邮件自动发送，并且短信提醒 报送后更新相应记录
	 * 
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
		BusTaskLog resources = init(businessDate);
		// 任务开始
		busTaskLogService.create(resources);
		try {
			BusCustomerCardinfosQueryCriteria criteria = new BusCustomerCardinfosQueryCriteria();
			businessDate = businessDate.replace("/", "-");
			businessDate = businessDate + " 00:00:00";
			criteria.setCreateTime(Timestamp.valueOf(businessDate));
			// TODO 按businessDate查询当日新增数据
			List<BusCustomerCardinfosDto> all = busCustomerCardinfosService.queryAll(criteria);
			// 在固定目录下生成报文并打包
			busCustomerCardinfosService.downloadCreditFile(all);
			// 更新任务状态
			resources.setEndtime(DateHelper.getCurrentTime());
			resources.setStatus(TaskConstants.TASK_SUSSES_STATUS);
			busTaskLogService.update(resources);
		} catch (Exception e2) {
			e2.printStackTrace();
		}

	}

	private BusTaskLog init(String businessDate) throws Exception {
		BusTaskLog resources = new BusTaskLog();
		resources.setBatchdate(businessDate);
		resources.setBegintime(DateHelper.getCurrentTime());
		resources.setBusinessdate(businessDate);
		resources.setStatus(TaskConstants.TASK_FAIL_STATUS);
		resources.setTargetdescribe(TaskConstants.TASK_TYPE_CUSTOMERINFO_DECRB);
		resources.setTargetname(TaskConstants.TASK_TYPE_CUSTOMERINFO);
		resources.setTaskdescribe(TaskConstants.TASK_NAME_NEW_CUSTOMER_CARDINFOS_DECRB);
		resources.setTaskname(TaskConstants.TASK_NAME_NEW_CUSTOMER_CARDINFOS);
		return resources;
	}
}