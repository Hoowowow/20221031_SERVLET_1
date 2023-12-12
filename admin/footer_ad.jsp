<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.util.Date"%>
<%@ page import="example.*" %> 
    
    <footer class="container">
     <p> <br> &copy; 쇼핑몰 대표 : 홍길동, 고유번호 : 20111234, 연락처 : admin@nate.com <br> 
        <%
    	ShopTime time = new ShopTime();
         %>    
        오늘 날짜와 시간 : <%=time.timenow() %>
        </p>
	</footer>
<!-- <footer class="container">
		<p>&copy; 쇼핑몰 대표 : 한은정, 고유번호 : 20221031, 연락처 : hej1721@sungkyul.ac.kr<br> 
        <%
            // Date day = new java.util.Date();
            // String am_pm;
            // int hour = day.getHours();
            // int minute = day.getMinutes();
            // int second = day.getSeconds();
            // if (hour / 12 == 0) {
            //     am_pm = "AM";
            // } else {
            //     am_pm = "PM";
            //     hour = hour - 12;
            // }
            // String CT = hour + ":" + minute + ":" + second + " " + am_pm;
            // out.println("현재 접속  시각: " + CT + "\n");
        %>
	</footer> -->\\