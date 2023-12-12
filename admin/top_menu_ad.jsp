<%@ page contentType = "text/html; charset=utf-8" %>

<nav class="navbar navbar-expand  navbar-white bg-white">
	<div class="dropdown">
  		<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    		카테고리
  		</button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="#">핸드폰 케이스</a>
            <a class="dropdown-item" href="#">이어폰 케이스</a>
             <a class="dropdown-item" href="#">스티커</a>
            <a class="dropdown-item" href="#">키링</a>
        </div>
	</div>

    <div>
        <img src="..\image\makehappylogo2.jpg" class="img-fluid" alt="main_image">
    </div>

    <div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="./index.jsp">메뉴바 : 홈페이지</a>
            <a class="navbar-brand" href="./index.jsp">회원 보기/추가/수정/삭제</a>
            <a class="navbar-brand" href="index_ad.jsp">상품 보기</a>
            <a class="navbar-brand" href="product_add.jsp">등록</a>
            <a class="navbar-brand" href="product_edit.jsp?edit=update">수정</a>
            <a class="navbar-brand" href="product_edit.jsp?edit=delete">삭제</a>
            <a class="navbar-brand" href="../index.jsp">일반메뉴</a>

		</div>
	</div>
</nav>


<!-- <nav class="navbar navbar-expand  navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="./index.jsp">메뉴바:홈페이지</a>
			</div>
		</div>
	</nav> -->
	 <%-- CLASS는 스타일 적용시에 사용 되는 이름, 중첩 가능 --%>