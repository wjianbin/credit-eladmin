package me.zhengjie.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateHelper {

	// 日期格式
	public static final String AMR_NOMAL_TIME_FORMAT = "HH:mm:ss";
	public static final String AMR_NOMAL_DATE_FORMAT = "yyyy/MM/dd";
	public static final String AMR_NOMAL_DATETIME_FORMAT = "yyyy/MM/dd HH:mm:ss";
	public static final String AMR_NOMAL_FULLDATETIME_FORMAT = "yyyy/MM/dd HH:mm:ss.SSS";
	public static final String AMR_NOMAL_FULLTIME_FORMAT = "HH:mm:ss.SSS";
	public static final String AMR_NOMAL_DATE_FORMAT2 = "yyyyMMdd";
	public static final String AMR_NOMAL_DATE_FORMAT_LONG = "yyyyMMddHHmmss";

	public static final String TERM_UNIT_DAY = "D";// 期限天
	public static final String TERM_UNIT_MONTH = "M";// 期限月
	public static final String TERM_UNIT_YEAR = "Y";// 期限年

	public static String getRelativeDate(String date, String termUnit, String term) throws Exception {
		return DateHelper.getRelativeDate(date, date, termUnit, Integer.parseInt(term));
	}

	public static String getRelativeDate(String date, String termUnit, int term) throws Exception {
		return DateHelper.getRelativeDate(date, date, termUnit, term);
	}

	public static String getRelativeDate(String baseDate, boolean endOfMonth, String date, String termUnit, int term)
			throws Exception {
		if (term == 0) {
			return date;
		}

		if (!TERM_UNIT_DAY.equals(termUnit) && !TERM_UNIT_MONTH.equals(termUnit) && !TERM_UNIT_YEAR.equals(termUnit)) {
			throw new Exception();
		}

		Calendar cal = Calendar.getInstance();
		SimpleDateFormat formatter = new SimpleDateFormat(AMR_NOMAL_DATE_FORMAT);
		cal.setTime(formatter.parse(date));
		if (termUnit.equals(DateHelper.TERM_UNIT_DAY)) {
			cal.add(Calendar.DATE, term);
		} else if (termUnit.equals(DateHelper.TERM_UNIT_MONTH)) {
			cal.add(Calendar.MONTH, term);

			if (DateHelper.monthEnd(baseDate) && endOfMonth) {
				String s = formatter.format(cal.getTime());
				return DateHelper.getEndDateOfMonth(s);
			}

		} else if (termUnit.equals(DateHelper.TERM_UNIT_YEAR)) {
			cal.add(Calendar.YEAR, term);
		}

		return formatter.format(cal.getTime());
	}

	public static String getRelativeDate(String baseDate, String date, String termUnit, int step) throws Exception {
		return DateHelper.getRelativeDate(baseDate, false, date, termUnit, step);
	}

	public static boolean monthEnd(String date) throws ParseException {
		return date.equals(getEndDateOfMonth(date));
	}

	/**
	 * 得到月底
	 */
	public static String getEndDateOfMonth(String curDate) throws ParseException {
		if (curDate == null || curDate.length() != 10) {
			return null;
		}
		curDate = curDate.substring(0, 8) + "01";
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat formatter = new SimpleDateFormat(AMR_NOMAL_DATE_FORMAT);
		cal.setTime(formatter.parse(curDate));
		int maxDays = cal.getActualMaximum(Calendar.DATE);// 得到该月的最大天数
		cal.set(Calendar.DATE, maxDays);
		return formatter.format(cal.getTime());
	}

	public static Date getDate(String curDate) throws ParseException {
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat formatter = new SimpleDateFormat(AMR_NOMAL_DATE_FORMAT);
		cal.setTime(formatter.parse(curDate));
		return cal.getTime();
	}

	/**
	 * @param date yyyy/MM/dd
	 * @param type 1 返回数字 2 返回中文 3 返回英文 返回星期 1 星期一 、2 星期二 、3星期三、4 星期四、5 星期五、6 星期六、7
	 *             星期日
	 */
	public static String getWeekDay(String date, String format) throws ParseException {
		String[] sWeekDates = { "星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六" };
		String[] sWeekDatesE = { "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" };
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
		cal.setTime(formatter.parse(date));
		if (format.equals("2")) {
			return sWeekDates[cal.get(Calendar.DAY_OF_WEEK) - 1];
		} else if (format.equals("3")) {
			return sWeekDatesE[cal.get(Calendar.DAY_OF_WEEK) - 1];
		} else {
			return String.valueOf(cal.get(Calendar.DAY_OF_WEEK) - 1);
		}
	}

	/**
	 * @param beginDate
	 * @param endDate
	 * @return
	 * @throws ParseException 获取两个日期之间的天数
	 */
	public static int getDays(String sBeginDate, String sEndDate) {
		Date startDate = java.sql.Date.valueOf(sBeginDate.replace('/', '-'));
		Date endDate = java.sql.Date.valueOf(sEndDate.replace('/', '-'));

		int iDays = (int) ((endDate.getTime() - startDate.getTime()) / 86400000L);
		return iDays;
	}

	/**
	 * 获取两个日期之间的月数，采用小数表示。 用户可根据使用场景确定是向上、向下取整，取整时请注意正负数
	 * 
	 * @param beginDate
	 * @param endDate
	 * @return
	 * @throws ParseException
	 */
	public static double getMonths(String beginDate1, String endDate1) throws ParseException {
		Date beginDate = getDate(beginDate1);
		Date endDate = getDate(endDate1);
		Calendar former = Calendar.getInstance();
		Calendar latter = Calendar.getInstance();
		former.setTime(beginDate);
		latter.setTime(endDate);

		int monthCounter = (latter.get(Calendar.YEAR) - former.get(Calendar.YEAR)) * 12 + latter.get(Calendar.MONTH)
				- former.get(Calendar.MONTH);

		former.add(Calendar.MONTH, monthCounter);

		int dayCounter = latter.get(Calendar.DAY_OF_MONTH) - former.get(Calendar.DAY_OF_MONTH);
		int maxDays = latter.getActualMaximum(Calendar.DATE);

		return monthCounter * 1.0 + dayCounter * 1.0 / maxDays * 1.0;
	}

	/**
	 * 获取两个日期之间的年数
	 * 
	 * @param beginDate
	 * @param endDate
	 * @return
	 * @throws ParseException
	 * @throws ParseException
	 * 
	 */
	public static int getYears(String beginDate1, String endDate1) throws ParseException {
		Date beginDate = getDate(beginDate1);
		Date endDate = getDate(endDate1);
		Calendar former = Calendar.getInstance();
		Calendar latter = Calendar.getInstance();
		former.clear();
		latter.clear();
		boolean positive = true;
		if (beginDate.after(endDate)) {
			former.setTime(endDate);
			latter.setTime(beginDate);
			positive = false;
		} else {
			former.setTime(beginDate);
			latter.setTime(endDate);
		}

		int yearCounter = 0;
		while (former.get(Calendar.YEAR) != latter.get(Calendar.YEAR)) {
			former.add(Calendar.YEAR, 1);
			yearCounter++;
		}

		if (positive)
			return yearCounter;
		else
			return -yearCounter;
	}

	/**
	 * 判断是否为闰年
	 * 
	 * @param year (int)
	 * @return
	 */
	public static boolean isLeapYear(int year) {
		if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * 判断是否为闰年
	 * 
	 * @param date （String）yyyy/mm/dd
	 * @return
	 */
	public static boolean isLeapYear(String date) throws Exception {
		return isLeapYear(Integer.parseInt(date.split("/")[0]));
	}

	/**
	 * 按照是否周末判断工作日
	 * 
	 * @param date
	 * @return
	 * @throws Exception
	 */
	private static boolean isWorkingDate(String date) throws Exception {
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
		cal.setTime(formatter.parse(date));
		int i = cal.get(Calendar.DAY_OF_WEEK);
		if (i <= 5)// 1到5为工作日
			return true;
		else
			return false;
	}

	/**
	 * 计算任务处理时间 分秒
	 * 
	 * @param BeginTime
	 * @param EndTime
	 * @return
	 * @throws Exception
	 */
	public static String getDiffTime(String BeginTime, String EndTime) throws Exception {
		SimpleDateFormat formatter = new SimpleDateFormat(AMR_NOMAL_DATETIME_FORMAT);
		if (BeginTime == null || EndTime == null || "".equals(BeginTime) || "".equals(EndTime))
			return "";
		Date begin = formatter.parse(BeginTime);
		Date end = formatter.parse(EndTime);
		long minutediff = (int) ((end.getTime() - begin.getTime()) / (1000 * 60.00));
		long seconddiff = (int) ((end.getTime() - begin.getTime()) % (1000 * 60.00)) / 1000;
		String Return = minutediff + "分" + seconddiff + "秒";
		return Return;
	}

	/**
	 * 获取当前时间
	 * 
	 * @return
	 * @throws Exception
	 */
	public static String getCurrentTime() throws Exception {
		SimpleDateFormat formatter = new SimpleDateFormat(AMR_NOMAL_DATETIME_FORMAT);
		Date date = new Date();
		return formatter.format(date);
	}
	
	public static String getCurrentTimeNoS() throws Exception {
		SimpleDateFormat formatter = new SimpleDateFormat(AMR_NOMAL_DATE_FORMAT2);
		Date date = new Date();
		return formatter.format(date);
	}
	public static String getCurrentTimeNoSLong() throws Exception {
		SimpleDateFormat formatter = new SimpleDateFormat(AMR_NOMAL_DATE_FORMAT2);
		Date date = new Date();
		return formatter.format(date);
	}
	public static int getRandomNum(){
		int max=999,min=1;
		long randomNum = System.currentTimeMillis();  
		int ran3 = (int) (randomNum%(max-min)+min);  
		return ran3;
	}

	public static void main(String[] args) throws Exception {

		/*System.out.println(DateHelper.getMonths("2016/01/31", "2016/08/31"));

		for (int i = 0; i < 10000; i++) {
			System.out.println(DateHelper.getRelativeDate("2016/01/29", "D", i) + "--"
					+ DateHelper.isWorkingDate(DateHelper.getRelativeDate("2016/01/29", "D", i)));
		}*/
		for(int i=0 ;i<100;i++) {
		Thread.sleep(1);
		int max=999,min=1;
		long randomNum = System.currentTimeMillis();  
		int ran3 = (int) (randomNum%(max-min)+min);  
		System.out.println(ran3);
		}
	}

}
