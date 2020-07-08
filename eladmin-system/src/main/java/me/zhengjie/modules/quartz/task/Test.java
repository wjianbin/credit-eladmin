package me.zhengjie.modules.quartz.task;
import java.sql.Timestamp;

public class Test
{
	
	public static void main(String[] args) {
		String businessDate ="2020-07-08";
		businessDate=businessDate.replace("/", "-");
		businessDate=businessDate+" 00:00:00";
		System.out.println(Timestamp.valueOf(businessDate));
	}
}