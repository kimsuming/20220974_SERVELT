<head>
    <%@page import="example.*"%>
</head>
    <%@ page contentType = "text/html;charset=utf-8" session="false"%>
<footer class="container">
    <p style="text-align:center">
        <br> &copy; 쇼핑몰 대표: 김수민, 고유번호: 20220974, 연락처: marianne.gg53@gmail.com <br>
        <%
        ShopTime time = new ShopTime();
        %>
        
        오늘 날짜와 시간 : <%=time.timenow() %>

    </p>
    <hr>
    <br><br><br>
</footer>