package com.sunland.nbjj.common.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

/**
 * @author 徐董波
 * @create 2017-11-03 15:43
 */
public class DateUtil {

    public static final String ISO_DATE_FORMAT = "yyyyMMdd";
    public static final String ISO_TIME_FORMAT = "HHmmss";
    public static final String ISO_DATETIME_FORMAT = "yyyyMMddHHmmss";
    public static final String ISO_DATETIME_FORMAT_LONG = "yyyyMMddHHmmssSSS";
    public static final String CHN_DATE_FORMAT = "yyyy-MM-dd";
    public static final String CHN_TIME_FORMAT = "HH:mm:ss";
    public static final String CHN_TIME_FORMAT_SHORT = "MM-dd HH:mm";
    public static final String CHN_DATETIME_FORMAT = "yyyy-MM-dd HH:mm:ss";
    public static final String CHN_DATETIME_FORMAT_LONG = "yyyy-MM-dd HH:mm:ss.SSS";
    public static final String CHN_DATETIME_FORMAT_SHORT = "yyyy-MM-dd HH:mm";
    public static final String DB_DATETIME_FORMAT = "yyyy-mm-dd hh24:mi:ss";

    public static final String DB_ISO_DATE_FORMAT = "yyyyMMdd";
    public static final String DB_ISO_DATETIME_FORMAT = "yyyyMMddHH24miss";
    public static final String DB_CHN_DATE_FORMAT = "yyyy-MM-dd";
    public static final String DB_CHN_DATETIME_FORMAT = "yyyy-MM-dd HH24:mi:ss";
    public static final String DB_CHN_DATETIME_FORMAT_SHORT = "yyyy-MM-dd HH24:mi";

    public static String getSysdateString(){
        return toString(new Date());
    }

    public static String getSysDatetime(){
        return toString(new Date(), CHN_DATETIME_FORMAT);
    }

    /**
     * 字符串转换为日期java.util.Date
     * @param dateText 字符串
     * @param format 日期格式
     * @return
     */
    public static Date toDate(String dateText, String format) {
        if (dateText == null) {
            return null;
        }
        SimpleDateFormat df = null;
        try {
            if (format == null) {
                df = new SimpleDateFormat();
            }
            else {
                df = new SimpleDateFormat(format);
            }

            // setLenient false to avoids allowing dates like 9/32/2001
            // and true to allowing, which would otherwise parse to 10/2/2001
            df.setLenient(false);

            return df.parse(dateText);
        }
        catch (ParseException e) {

            return null;
        }
    }

    /**
     * 日期增加
     * @param isoString 日期字符串
     * @param fmt 格式
     * @param field 年/月/日 Calendar.YEAR/Calendar.MONTH/Calendar.DATE
     * @param amount 增加数量
     * @return
     * @throws ParseException
     */
    public static final String dateIncrease(String isoString, String fmt, int field, int amount) {

        try {
            Calendar cal = GregorianCalendar.getInstance(TimeZone.getTimeZone(
                    "GMT"));
            cal.setTime(toDate(isoString, fmt));
            cal.add(field, amount);

            return toString(cal.getTime(), fmt);
        }
        catch (Exception ex) {
            return null;
        }
    }

    /**
     * 日期增加-按日增加
     * @param date
     * @param days
     * @return java.util.Date
     */
    public static Date dateIncreaseByDay(Date date, int days) {

        Calendar cal = GregorianCalendar.getInstance(TimeZone.getTimeZone(
                "GMT"));
        cal.setTime(date);
        cal.add(Calendar.DATE, days);

        return cal.getTime();
    }

    /**
     * 日期增加-按日增加
     * @param date
     * @param days
     * @return java.util.Date
     */
    public static Date dateIncreaseByDay(Date date, double days) {

        long l = date.getTime();
        long interval = Double.valueOf(days*24*60*60*1000).longValue();
        return new Date(l+interval);
    }
    /**
     * 日期增加-按月增加
     * @param date
     * @param months
     * @return java.util.Date
     */
    public static Date dateIncreaseByMonth(Date date, int months) {

        Calendar cal = GregorianCalendar.getInstance(TimeZone.getTimeZone(
                "GMT"));
        cal.setTime(date);
        cal.add(Calendar.MONTH, months);

        return cal.getTime();
    }

    /**
     * 日期增加
     * @param date 日期字符串 yyyy-MM-dd
     * @param days
     * @return 日期字符串 yyyy-MM-dd
     */
    public static String dateIncreaseByDay(String date, int days) {
        return dateIncreaseByDay(date, ISO_DATE_FORMAT, days);
    }

    /**
     * 日期增加
     * @param date 日期字符串
     * @param fmt 日期格式
     * @param days
     * @return
     */
    public static String dateIncreaseByDay(String date, String fmt, int days) {
        return dateIncrease(date, fmt, Calendar.DATE, days);
    }


    /** 根据时间变量返回时间字符串
     * @return 返回时间字符串
     * @param pattern 时间字符串样式
     * @param date 时间变量
     */
    public static String toString(Date date, String pattern) {

        if (date == null) {
            return null;
        }
        try {
            SimpleDateFormat sfDate = new SimpleDateFormat(pattern);
            sfDate.setLenient(false);
            return sfDate.format(date);
        }
        catch (Exception e) {
            return null;
        }
    }

    /**
     * 根据时间变量返回时间字符串 yyyy-MM-dd
     * @param date
     * @return
     */
    public static String toString(Date date)
    {
        return toString(date, CHN_DATE_FORMAT);
    }

    public static String datetimeToString(Date date)
    {
        return toString(date, CHN_DATETIME_FORMAT);
    }

    /**
     * Returns the days between two dates. Positive values indicate that
     * the second date is after the first, and negative values indicate, well,
     * the opposite. Relying on specific times is problematic.
     *
     * @param early the "first date"
     * @param late the "second date"
     * @return the days between the two dates
     */
    public static final int daysBetween(Date early, Date late) {

        Calendar c1 = Calendar.getInstance();
        Calendar c2 = Calendar.getInstance();
        c1.setTime(early);
        c2.setTime(late);

        return daysBetween(c1, c2);
    }

    /**
     * Returns the days between two dates. Positive values indicate that
     * the second date is after the first, and negative values indicate, well,
     * the opposite.
     *
     * @param early
     * @param late
     * @return the days between two dates.
     */
    public static final int daysBetween(Calendar early, Calendar late) {

        //return (int) (toJulian(late) - toJulian(early));
        int betweenDays=0;
        betweenDays = late.get(Calendar.DAY_OF_YEAR)-early.get(Calendar.DAY_OF_YEAR);
        int betweenYears = late.get(Calendar.YEAR)-early.get(Calendar.YEAR);
        betweenDays = late.get(Calendar.DAY_OF_YEAR)-early.get(Calendar.DAY_OF_YEAR);
        for(int i=0;i<betweenYears;i++) {
            early.set(Calendar.YEAR, (early.get(Calendar.YEAR)+1));
            betweenDays = betweenDays+early.getActualMaximum(Calendar.DAY_OF_YEAR);
        }
        return betweenDays;
    }

    public static String getFormatDate(String dateTime,int kind) {
        Date date = null;
        String format = getDateFormat(1);
        SimpleDateFormat sdf = new SimpleDateFormat(format);
        if (!(dateTime == null || "".equals(dateTime.trim()))) {
            try {
                date = sdf.parse(dateTime);
            } catch (ParseException e) {

            }
        }
        return getDate(date,kind);
    }

    public static String getDate(Date date,int kind) {
        String res = "";
        if (date != null) {
            String format = getDateFormat(kind);
            SimpleDateFormat sdf = new SimpleDateFormat(format);
            res = sdf.format(date);
        }
        return res;
    }

    /**
     *
     * @param kind
     * 0-14
     * @return
     */
    private static String getDateFormat(int kind) {
        String[] format = {
                "yyyy-MM-dd",
                "yyyy-MM-dd HH:mm:ss",
                "yyyy",
                "M",
                "dd",
                "yyyy年M月d日H点m分",
                "yyyy年M月d日",
                "H点m分",
                "yyyy/MM/dd HH:mm",
                "HH",
                "mm",
                "yyyyMMdd",
                "yyyyMMddHHmmss",
                "yyyy-MM-dd 23:59:59",
                "yyyy年MM月dd日HH时mm分"
        };
        return format[kind];
    }

    /**
     * 时间转换
     * @param datetime
     * @param kind
     * @return
     */
    public static Date parseDate(String datetime,int kind) {
        Date date = null;
        String format = getDateFormat(kind);
        SimpleDateFormat sdf = new SimpleDateFormat(format);
        if (!(datetime == null || "".equals(datetime.trim()))) {
            try {
                date = sdf.parse(datetime);
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        return date;
    }

    public static Date parseShortDate(String datetime){
        return parseDate(datetime,0);
    }

    public static String getDateTime(Date date) {
        return getDate(date,1);
    }

    public static String getDateFormat(String dateText) {

        if (StringUtil.isEmpty(dateText)) {
            return null;
        }

        Date date = DateUtil.toDate(dateText, DateUtil.CHN_DATETIME_FORMAT);
        if (date != null) {
            return DateUtil.DB_CHN_DATETIME_FORMAT;
        }

        date = DateUtil.toDate(dateText, DateUtil.CHN_DATE_FORMAT);
        if (date != null) {
            return DateUtil.DB_CHN_DATE_FORMAT;
        }

        date = DateUtil.toDate(dateText, DateUtil.ISO_DATETIME_FORMAT);
        if (date != null) {
            return DateUtil.DB_ISO_DATETIME_FORMAT;
        }

        date = DateUtil.toDate(dateText, DateUtil.ISO_DATE_FORMAT);
        if (date != null) {
            return DateUtil.DB_ISO_DATE_FORMAT;
        }

        return null;
    }

    /** 获取上一周星期一的日期 */
    public static String getBeforeMonday() {
        Calendar cal = Calendar.getInstance();
        int n=-1;
        cal.add(Calendar.DATE, n*7);
        cal.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);
        String monday = new SimpleDateFormat("yyyy-MM-dd").format(cal.getTime());
        return monday;
    }
    /** 获取前一天的日期 */
    public static String getNextMonday() {
        Date dNow = new Date();
        Calendar cal = Calendar.getInstance();
        cal.setTime(dNow);
        cal.add(Calendar.DAY_OF_MONTH, -1);
        String monday = new SimpleDateFormat("yyyy-MM-dd").format(cal.getTime());
        return monday;
    }


    /** 获取上一周星期日的日期 */
    public static String getBeforeSunday() {
        Calendar cal = Calendar.getInstance();
        int n=0;
        cal.add(Calendar.DATE, n*7);
        cal.set(Calendar.DAY_OF_WEEK, Calendar.SUNDAY);
        String sunday = new SimpleDateFormat("yyyy-MM-dd").format(cal.getTime());
        return sunday;
    }

    public static Date addDay(Date date, int num) {
        Calendar startDT = Calendar.getInstance();
        startDT.setTime(date);
        startDT.add(Calendar.DAY_OF_MONTH, num);
        return startDT.getTime();
    }
    public static Date parseDate(String datetime){
        if(datetime.length()<1){
            return parseDate(datetime,0);
        }
        return parseDate(datetime,1);
    }

    public static Date formatDateTime2(Date date, int kind){
        if(date!=null){
            String format = getDateFormat(kind);
            SimpleDateFormat sdf = new SimpleDateFormat(format);
            return parseDate(sdf.format(date));
        }else{
            return null;
        }
    }

    /**
     * 获取过期时间
     * @param date,minutes
     */
    public static Date addMinutes(Date date, int minutes){
        if (date != null){
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            calendar.add(Calendar.MINUTE,minutes);
            return  calendar.getTime();
        }else {
            return null;
        }

    }
    public static void main(String[] args) {

    }


}
