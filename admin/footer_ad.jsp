<head>
    <%@page import="example.*"%>
</head>

<%@ page contentType = "text/html;charset=utf-8"%>
<footer class="container">
    <p>
        <br> &copy; 쇼핑몰 대표: 김이박, 고유번호: 20230924, 연락처: admin@nate.com <br>
        <%
        ShopTime time = new ShopTime();
        %>
        <%=time.timenow() %>
    </p>
    <hr>
    <br><br><br>
</footer>