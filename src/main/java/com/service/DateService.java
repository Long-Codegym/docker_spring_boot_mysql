    package com.service;

    import org.springframework.stereotype.Service;

    import java.text.SimpleDateFormat;
    import java.util.Date;
    @Service
    public class DateService {

        public  Date convertToDate(int year, int month, int day) {
            try {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
                return simpleDateFormat.parse(year + "-" + month + "-" + day);
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        public  Date convertToDate(int year, int month, int day, int hour, int minute, int second) {
            try {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
                return simpleDateFormat.parse(year + "-" + month + "-" + day + " " + hour + ":" + minute + ":" + second);
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        public String convertDateToDateSQL(Date date) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            return simpleDateFormat.format(date);
        }

        public  String convertDateToDateTimeSQL(Date date) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
            return simpleDateFormat.format(date);
        }

        public  Date convertDateSQLToDate(String date) {
            String[] parts = date.split("-");
            int year = Integer.parseInt(parts[0]);
            int month = Integer.parseInt(parts[1]);
            int day = Integer.parseInt(parts[2]);
            return convertToDate(year, month, day);
        }

        public  Date convertDateTimeSQLToDate(String date) {
            String[] fullDates = date.split(" ");

            String[] dates = fullDates[0].split("-");
            int year = Integer.parseInt(dates[0]);
            int month = Integer.parseInt(dates[1]);
            int day = Integer.parseInt(dates[2]);

            String[] times = fullDates[1].split(":");
            int hour = Integer.parseInt(times[0]);
            int minute = Integer.parseInt(times[1]);
            int second = Integer.parseInt(times[2]);

            return convertToDate(year, month, day, hour, minute, second);
        }
    }