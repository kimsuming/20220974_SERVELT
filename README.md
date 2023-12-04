#JSP_TEST

# 9월 6일:     
프로젝트 환경 설정, HELLO WORLD 출력 확인 완료

# 9월 13일:
index.jsp -> top_menu.jsp, body_main.jsp, footer.jsp로 페이지 모듈화(분리)
삼성 쇼핑몰로 주제 선정
top_banner.jsp에 배너 업로드
추천 상품, 상품 목록 추가 포워딩으로 팝업 구현

# 9월 27일:
Product.java, ProductRepository.java 클래스에 상품 정보 저장 --> body_main.jsp에 출력함
img 폴더를 생성해 body_main.jsp에 상품 이미지 추가
상품 목록 6개로 추가

# 10월 4일:
Product_detail.jsp에 상품 상세 페이지 구현

# 10월 11일:
Product_add.jsp에 상품 등록 페이지 구현, 상품 정보를 직접 입력해 객체에 추가(product_add_process.jsp에서 처리)
cos.jar 라이브러리 추가해 이미지 등록 구현
Admin 모드 구현, 등록, 수정, 삭제 등 기능을 추가할 것임

# 10월 25일:
상품 등록 입력값 필터링 구현.
서버 내 goormService/tomcat7/conf/tomcat-users.xml, web.xml 파일 수정해 로그인 정보 추가함
로그인 페이지 구현
web.xml에서 Admin 페이지 접근 권한 부여
            
# 10월 32일:
상세 페이지에서 장바구니에 추가 버튼 생성
장바구니 추가, 삭제 페이지 구현
장바구니 페이지 - 이미지 경로 수정해 로고 제대로 나오게 수정 

# 11월 8일:
order 페이지 구현

# 11월 15일:
DB 연동 시작. root(password=1234) 계정에서 ggouppang_20220974 데이터베이스와 prodcut 테이블 생성
db_conn.jsp 생성하여 DB 연결
클래스 사용하던 top_menu.jsp, body_main.jsp, product_add_process.jsp -> DB 경로로 수정함
관리자 계정 marianne(password=1234)로 수정
            
**Insert문**
            
Insert into product(p_id,p_name,p_unitPrice,p_description,p_category,p_manufacturer,p_nuitsInStock,p_condition,p_filename)
values("P561426","갤럭시 북 3",2010000,"galaxy Book series 3, white color","laptop","SAMSUNG","5200","new","galaxy_S23.webp");

# 11월 22일:
상품 관리 페이지(수정, 삭제) 구현
탑 메뉴에 수정, 삭제 추가

# 11월 29일:
DB에 board 테이블 추가
탑 메뉴에 게시판 추가
Board 관련 web.xml servlet 등록
게시판 (글 목록, 글쓰기, 상세 보기) 페이지 구현
