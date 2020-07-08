package me.zhengjie.modules.quartz.constant;

public interface TaskConstants {
	
	//数据提供机构区段码
	 public static final String AGENT_CODE  = "N101W1100H0017";
	 
	 
	
	 public static final String TASK_NAME_NEW_CUSTOMERBASEINFO  = "NEW_CUSTOMERBASEINFO_TASK";
	 public static final String TASK_NAME_NEW_CUSTOMERBASEINFO_DECRB  = "新增个人基础信息报文生成";
	 public static final String TASK_TYPE_CUSTOMERINFO  = "CUSTOMERINFO_TASK";
	 public static final String TASK_TYPE_CUSTOMERINFO_DECRB  = "个人信息";
	 public static final String TASK_SUSSES_STATUS  = "1";
	 public static final String TASK_FAIL_STATUS  = "2";
	 
	 public static final String TASK_NAME_NEW_CUSTOMER_RELATIONSHIP  = "NEW_CUSTOMER_RELATIONSHIP_TASK";
	 public static final String TASK_NAME_NEW_CUSTOMER_RELATIONSHIP_DECRB  = "新增家族关系信息记录";

	 public static final String TASK_NAME_NEW_CUSTOMER_CARDPIPY  = "NEW_CUSTOMER_CARDPIPY_TASK";
	 public static final String TASK_NAME_NEW_CUSTOMER_CARDPIPY_DECRB  = "个人证件有效期信息记录";

	 public static final String TASK_NAME_NEW_CUSTOMER_CARDINFOS  = "NEW_CUSTOMER_CARDINFOS_TASK";
	 public static final String TASK_NAME_NEW_CUSTOMER_CARDINFOS_DECRB  = "个人证件整合信息记录";

	 public static final String TASK_NAME_DEL_CUSTOMERINFO  = "DEL_CUSTOMERINFO_TASK";
	 public static final String TASK_NAME_DEL_CUSTOMERINFO_DECRB  = "个人基本信息整笔删除请求记录";

	 public static final String TASK_NAME_DEL_CUSTOMER_CARDPIPY  = "DEL_DEL_CUSTOMER_CARDPIPY";
	 public static final String TASK_NAME_DEL_CUSTOMER_CARDPIPY_DECRB  = "个人证件有效期信息整笔删除请求记录";

	 /**
	  * 个人基本信息
	  */
	 public static final String BUS_CUSTOMER_BASEINFO ="110";// 个人基本信息记录
	 public static final String BUS_DEL_CUSTOMERINFO ="114";// 个人基本信息整笔删除请求记录
	 public static final String BUS_CUSTOMER_RELATIONSHIP="120";// 家族关系信息记录
	 public static final String BUS_CUSTOMER_CARDPIPY="130";// 个人证件有效期信息记录
	 public static final String BUS_DEL_CUSTOMER_CARDPIPY="134";// 个人证件有效期信息整笔删除请求记录
	 public static final String BUS_CUSTOMER_CARDINFOS="140";// 个人证件整合信息记录
	 
	 /**
	  * 
	  */
	 public static final String  Bus_Inacctinf  ="210"; //个人借贷账户信息记录
	 public static final String  Bus_Update_Acctinfbycode  ="211"; //个人借贷账户标识变更请求记录
	 public static final String  Bus_Update_Inacctidcagsinfx  ="212";// 个人借贷账户按段更正请求记录
	 public static final String  Bus_Del_Inacctdel  ="213"; //个人借贷账户按段删除请求记录
	 public static final String  Bus_Del_Inacctentdel  ="214"; //个/人借贷账户整笔删除请求记录
	 public static final String  Bus_InacctinfSpecprdsgmt  ="215"; //个人借贷账户特殊事件说明记录
	 public static final String  Bus_Inctrctinf  ="220"; //个人授信协议信息记录
	 public static final String  Bus_Update_Inctrctinfbycode  ="221"; //个人授信协议标识变更请求记录
	 public static final String  Bus_Update_Inctrctidcagsinf  ="222"; //个人授信协议按段更正请求记录
	 public static final String  Bus_Del_Inctrctdel  ="223"; //个人授信协议按段删除请求记录
	 public static final String  Bus_Del_Inctrctentdel  ="224"; //个人授信协议整笔删除请求记录
}
