<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<!-- 자바빈즈 정의, 식별자와 클래스/범위 지정 /  ProductRepository  test=new  ProductRepository(); 와 동일한 액션태그-->


<%! String greeting = "현재 페이지는 문구 상품 목록입니다.";
	String tagline = "하단 페이지 : 확인";%>

    <div class="container">
        <div class="jumbotron">
            <div class="container">
                <h3 class="display-4">
                    <%=greeting%>
                </h3>
            </div>
        </div>
    </div>
    <%
        ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
    %> 	


    <div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
                
            <!-- <div class="card bg-dark text-white">
                        <img src="image/bear.jpeg" class="card-img" alt="...">
                            <div class="card-img-overlay">
                                <h5 class="card-title">뽀글이 곰돌이 키링</h5>
                                <p class="card-text">출처 : 디어바스켓</p>
                            </div>
            </div> -->
                
                <div class="card bg-dark text-white">
                        <img src="image/product/<%=product.getProductId()%>.jpg" class="card-img" alt="...">
                        <div class="card-img-overlay">
                        <h5 class="card-title">키링 이미지</h5>
                        <p class="card-text">출처 : 구글 검색</p>
                        </div>
                        </div>

                <br> <br>
                
				<h3><%=product.getPname()%></h3> <!-- 상품 이름 -->
				<p><%=product.getDescription()%> <!-- 상품 정보 -->
				<p><%=product.getUnitPrice()%>원 <!-- 상품 가격 -->
                <p><a href="product_detail.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>
			</div>
			<%
				}
			%>
		</div>
		<hr>
	</div>
    

    <div class="list-group">
      <a href="#" class="list-group-item list-group-item-action active" aria-current="true">인형 키링</a>
      <a href="#" class="list-group-item list-group-item-action">아크릴 키링</a>
      <a href="#" class="list-group-item list-group-item-action">패브릭 키링</a>

    </div>
