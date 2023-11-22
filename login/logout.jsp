<%@ page contentType = "text/html;charset=utf-8" %>
<%	
    ssion.invalidate(); // 현재 세션 객체 전체 삭제
	response.sendRedirect("../admin/product_add.jsp");
%>