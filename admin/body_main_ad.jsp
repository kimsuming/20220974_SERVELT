<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp"%>

<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" /> <%-- Repository가 Product를 포함하기 때문에 Repository만 설치 --%>

<%	%>
	 <%-- CLASS는 스타일 적용시에 사용 되는 이름, 중첩 가능 --%>

<%! String greeting = "현재 페이지는 VGA 그래픽 카드 상품 목록입니다.";
	String tagline = "하단 페이지 : 확인";%>

    <div class="container">
	<div class="jumbotron">
		<div class="container">
			<h3 class="display-4">
				<%=greeting%>
            </h3>
		</div>
	</div>
<%
	ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%>
	<div class="container">
		<div class="row" align="center">
            <%
                String sql = "select * from product"; // 조회
    	        pstmt = conn.prepareStatement(sql); // 연결 생성
                rs = pstmt.executeQuery(); // 쿼리 실행
                while (rs.next()) { // 결과 ResultSet 객체 반복
	        %>
			<div class="col-md-4">
                <div class="card bg-dark text-white">
                    <img src="../img/product/<%=rs.getString("p_filename")%>" class="card-img" alt="...">
                    <div class="card-img-overlay">
                    <h5 class="card-title">iPhone 이미지 샘플</h5>
                    <p class="card-text">출처 : 구글 검색</p>
                    </div>
                </div>
                <h3><%=rs.getString("p_name")%></h3>
                <p><%=rs.getString("p_description")%>
                <p><%=rs.getString("p_unitPrice")%>원
                <p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
            </div>
            <%
            } // 반복문 끝난 이후 db 연결 종료	
            if (rs != null)
                rs.close();
            if (pstmt != null)
                pstmt.close();
            if (conn != null)
                conn.close();
	%>
		</div>
        <hr>
	</div>

    <div class="card bg-dark text-white">
        <img src="/img/main_img2.png" class="card-img" alt="카드이미지">
        <div class="card-img-overlay">
            <h5 class="card-title"><b>ㅤ삼성 BESPOKE</b></h5>
            <p class="card-text">ㅤ 출처 : 삼성</p>
        </div>
    </div>


    <div class="list-group">
        <a href="#" class="list-group-item list-group-item-action active" aria-current="true"><b>새로운 갤럭시</b></a>
        <a href="#" class="list-group-item list-group-item-action"><b>#YouMake</b></a>
        <a href="#" class="list-group-item list-group-item-action"><b>9월 특별 혜택</b></a>
        <a href="#" class="list-group-item list-group-item-action"><b>아울렛 인기상품</b></a>
    </div>
	
    <div class="container">
		<div class="text-center">
			<h3>
				<%=tagline%>
			</h3>
		</div>
		<hr>
	</div>