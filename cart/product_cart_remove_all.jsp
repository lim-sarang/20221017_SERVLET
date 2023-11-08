<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%
	String id = request.getParameter("cartId");
    ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
    if (cartList == null || cartList.isEmpty()) {
        response.sendRedirect("product_cart.jsp"); 
        return;
    }

	if (id == null || id.trim().equals("")) {
		response.sendRedirect("product_cart.jsp");
		return;
	}

	session.invalidate(); // 세션 초기화
	
	response.sendRedirect("product_cart.jsp");
%>
