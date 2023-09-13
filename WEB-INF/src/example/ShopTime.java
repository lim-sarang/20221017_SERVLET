package example;
import java.text.SimpleDateFormat; // 날짜 포맷 지정을 위한 패키지 추가
import java.util.Date;
import java.util.TimeZone;

public class ShopTime {
    public String timenow() {
        // 한국 시간대 설정
        TimeZone koreanTimeZone = TimeZone.getTimeZone("Asia/Seoul");
        // 현재 시간을 한국 시간대로 설정
        Date day = new java.util.Date();
        day.setTime(day.getTime() + koreanTimeZone.getRawOffset() + koreanTimeZone.getDSTSavings());

        String am_pm;
        int hour = day.getHours(); // 시간
        int minute = day.getMinutes(); // 분
        int second = day.getSeconds(); // 초
        if (hour / 12 == 0) {
            am_pm = "AM"; // 오전 판단
        } else {
            am_pm = "PM"; // 오후 판단
            hour = hour - 12;
        }
        
        // AM/PM 형식으로 시간을 포맷
        SimpleDateFormat sdf = new SimpleDateFormat("hh:mm:ss a");
        String CT = sdf.format(day);
        
        return CT; // 문자열 리턴
    }
}
