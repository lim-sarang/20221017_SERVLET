<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*" %>
<%
    String productId = request.getParameter("id");
    
    // DB 연결 및 객체 초기화
    Connection conn = null;
    PreparedStatement pstmt = null;
    
    try {
        String url = "jdbc:mysql://localhost:3306/ggouppang_20221017?characterEncoding=utf8";
        String user = "root";
        String password = "1234";
        
        // DB 연결
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);
        
        // 상품 삭제 쿼리 실행
        String deleteQuery = "DELETE FROM product WHERE p_id = ?";
        pstmt = conn.prepareStatement(deleteQuery);
        pstmt.setString(1, productId);
        int rowsAffected = pstmt.executeUpdate();
        
        if (rowsAffected > 0) {
            // 삭제 성공
            response.sendRedirect("product_edit.jsp?edit=delete");
        } else {
            // 삭제 실패
            response.sendRedirect("product_edit.jsp?edit=delete&error=true");
        }
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("product_edit.jsp?edit=delete&error=true");
    } finally {
        // DB 연결 및 객체 해제
        if (pstmt != null) {
            try {
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>