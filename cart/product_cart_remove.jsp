<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("../product_detail.jsp");
		return;
	}

	ProductRepository dao = ProductRepository.getInstance();
	
	Product product = dao.getProductById(id);
	if (product == null) {
		response.sendRedirect("../exception/product_not_found.jsp");
		return;
	}

	ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
	if (cartList == null || cartList.isEmpty()) {
		response.sendRedirect("../cart/product_cart.jsp");
		return;
	}

	Product goodsQnt = new Product();
	for (int i = 0; i < cartList.size(); i++) {
		goodsQnt = cartList.get(i);
		if (goodsQnt.getProductId().equals(id)) {
			cartList.remove(goodsQnt);
			break;
		}
	}

	session.setAttribute("cartlist", cartList); // 변경된 장바구니 정보를 세션에 저장

	response.sendRedirect("product_cart.jsp");
%>