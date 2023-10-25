<%@ page contentType = "text/html; charset=utf-8" %>
<%	
    session.invalidate(); //현재 세션 객체 전체 삭제. 세션 내장 객체
    response.sendRedirect("../admin/product_add.jsp");
%>