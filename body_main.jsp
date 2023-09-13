<%@ page contentType = "text/html;charset=utf-8" %>
<%	%>
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