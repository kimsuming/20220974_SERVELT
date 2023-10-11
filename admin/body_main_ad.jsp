<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

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
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>

	<div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
                <div class="card bg-dark text-white">
                    <img src="../img/product/<%=product.getFilename()%>" class="card-img" alt="...">
                    <div class="card-img-overlay">
                    <h5 class="card-title">iPhone 이미지 샘플</h5>
                    <p class="card-text">출처 : 구글 검색</p>
                    </div>
                </div>
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p><%=product.getUnitPrice()%>원
                <p>><a href="product_detail_ad.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>
			</div>
			<%
				}
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