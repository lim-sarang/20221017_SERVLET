<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.DataSource"%>
<%@ page import="javax.naming.InitialContext"%>
<%@ page import="javax.naming.NamingException"%>
<%@ include file="../db/db_conn.jsp" %>

<%

// 회원가입 처리
if (request.getMethod().equals("POST")) {
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String birth = request.getParameter("birth");
    String mail = request.getParameter("mail");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");

    // 현재 날짜 및 시간 설정
    String registDay = null;
    try {
        java.text.SimpleDateFormat dateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        registDay = dateFormat.format(new java.util.Date());
    } catch (Exception e) {
        e.printStackTrace();
    }

    try {
        String sql = "INSERT INTO member VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, id);
        pstmt.setString(2, password);
        pstmt.setString(3, name);
        pstmt.setString(4, gender);
        pstmt.setString(5, birth);
        pstmt.setString(6, mail);
        pstmt.setString(7, phone);
        pstmt.setString(8, address);
        pstmt.setString(9, registDay);
        pstmt.executeUpdate();

    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        try {
            if (pstmt != null)
                pstmt.close();
            if (conn != null)
                conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    // 회원가입 성공 시 메인 페이지로 이동
    response.sendRedirect("../admin/index_ad.jsp");
}
%>