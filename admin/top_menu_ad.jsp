<%@ page contentType = "text/html;charset=utf-8" %>
<%	%>
<nav class="navbar navbar-expand  navbar-white bg-white">
	<div class="dropdown">
  		<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    		카테고리
  		</button>
    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="#">모바일</a>
        <a class="dropdown-item" href="#">TV/가전</a>
        <a class="dropdown-item" href="#">주방가전</a>
        <a class="dropdown-item" href="#">리빙가전</a>
        <a class="dropdown-item" href="#">PC/주변기기</a>
        <a class="dropdown-item" href="#">소모품</a>
        <a class="dropdown-item" href="#">아울렛</a>
        <hr>
        <a class="dropdown-item" href="#">#Samsung Experience</a>
    </div>
	</div>
    <p>ㅤ</p>
    
    <div>
        <img src="/img/logo-gnb.svg" align="left" class="img-fluid" alt="배너이미지">
    </div>
    
	<div class="container">
    	<div class="navbar-header">
            <a class="navbar-brand" href="index_ad.jsp">메뉴바 : 홈페이지</a>
            <a class="navbar-brand" href="index_ad.jsp">상품 보기</a>
            <a class="navbar-brand" href="product_add.jsp">등록</a>
            <a class="navbar-brand" href="/BoardListAction.do?pageNum=1">게시판(고객센터)</a>
            <a class="navbar-brand" href="product_edit.jsp?edit=update">수정</a>
            <a class="navbar-brand" href="product_edit.jsp?edit=delete">삭제</a>            
            <a class="navbar-brand" href="../index.jsp">일반모드</a>
       </div>
    </div>
</nav>
