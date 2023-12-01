<head>
    <%@page import="example.*"%>
</head>
    <%@ page contentType = "text/html;charset=utf-8"%>
<footer class="container">
    <p>
        <br> &copy; 쇼핑몰 대표: 김수민, 고유번호: 20220974, 연락처: marianne.gg53@gmail.com <br>
        <%
        ShopTime time = new ShopTime();
        %>
        <%=time.timenow() %>
    </p>
    <hr>
    <br><br><br>
</footer>