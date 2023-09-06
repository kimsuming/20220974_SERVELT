<html>
<head>

<%@ page contentType="text/html; charset=utf-8"%> <%--페이지 지시자, 한글 깨짐 방지--%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<%@ page import="java.util.Date"%>
<title>Welcome</title>
</head>

<body>	<%-- JSP 주석 처리 --%>
	<nav class="navbar navbar-expand  navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="./index.jsp">메뉴 바</a>
			</div>
		</div>
	</nav>
	 <%-- CLASS는 스타일 적용시에 사용 되는 이름, 중첩 가능 --%>
<%! String greeting = "쇼핑몰 메인 화면";
      String tagline = "메인 화면 중간 부분";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>	
	<div class="container">
		<div class="text-center">
			<h3>
				<%=tagline%>
			</h3>
		</div>
		<hr>
	</div>	
	<footer class="container">
		<p>&copy; 하단부 텍스트</p>
        <%
	Date day = new java.util.Date();
	String am_pm;
	int hour = day.getHours();
	int minute = day.getMinutes();
	int second = day.getSeconds();
	if (hour / 12 == 0) {
		am_pm = "AM";
	} else {
		am_pm = "PM";
		hour = hour - 12;
	}
	String CT = hour + ":" + minute + ":" + second + " " + am_pm;
	out.println("현재 접속  시각: " + CT + "\n");
%>

	</footer>
</body>
</html>
