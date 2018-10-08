package com.treino.consciente.treinoconsciente.util;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Objects;
import java.util.TimeZone;

public class DateService {
	
    public static String dateTimeToString(Date date) {
        return date.toLocaleString();
    }

    public static Date getCurrentDate() {
        return Objects.requireNonNull(getCurrentDateWithTimeZone()).getTime();
    }

    private static Calendar getCurrentDateWithTimeZone() {
        Date currentDate = new Date();
        Calendar calendar = new GregorianCalendar();
        Calendar calendarResult = new GregorianCalendar();
        TimeZone timeZone = TimeZone.getTimeZone("America/Sao_Paulo");

        if (timeZone != null) {
            try {
                calendar.setTime(currentDate);
                calendar.setTimeZone(timeZone);

                calendarResult.set(calendar.get(Calendar.YEAR),
                        calendar.get(Calendar.MONTH),
                        calendar.get(Calendar.DAY_OF_MONTH),
                        calendar.get(Calendar.HOUR_OF_DAY),
                        calendar.get(Calendar.MINUTE));
            }catch(Exception ex) {
                System.out.println("Erro ao buscar TimeZone." + ex);
                return null;
            }
        }

        return calendarResult;
    }
}
