<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.TimeZone" %>
<footer class="container">
    <p>&copy; 쇼핑몰 대표 : 임사랑, 고유번호 : 20221017, 연락처 : sarang@sungkyul.ac.kr<br>
    <%
        // 한국 시간대 설정
        TimeZone koreanTimeZone = TimeZone.getTimeZone("Asia/Seoul");
        Date currentTime = new Date();

        // 한국 시간대로 시간 설정
        currentTime.setTime(currentTime.getTime() + koreanTimeZone.getRawOffset() + koreanTimeZone.getDSTSavings());

        String am_pm;
        int hour = currentTime.getHours();
        int minute = currentTime.getMinutes();
        int second = currentTime.getSeconds();

        if (hour / 12 == 0) {
            am_pm = "오전";
        } else {
            am_pm = "오후";
            hour = hour - 12;
        }

        String CT = am_pm + " " + hour + ":" + minute + ":" + second;
    %>
    <% out.println("현재 접속 시각: " + CT); %>
</footer>
