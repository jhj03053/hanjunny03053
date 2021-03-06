<%@page import="product.ProductDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="productmanager" class="product.ProductManager"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/script.js?ver=1.0"></script>
</head>
<body>
	<h2>*** Enjoy your shopping ***</h2>
	<%@ include file="../guest/guest_top.jsp" %>
	<table style="width: 80%">
		<tr style="background-color: gold">
			<th>Product</th><th>Price</th><th>Total Stock</th><th>Detail</th>
		</tr>
	<%	
		ArrayList<ProductDto> list = productmanager.getProductAll(); 
		for(ProductDto dto : list){
	%>
			<tr>
				<td>
					<img src="../images/product/<%=dto.getImage() %>" width="100">☜<%=dto.getName() %>
				</td>
				<td><%=dto.getPrice() %></td>
				<td><%=dto.getStock() %></td>
				<td><a href="javascript:productDetail('<%=dto.getNo()%>')">More</a></td>
			</tr>
	<%	} %>
	</table>
	<%@ include file="../guest/guest_bottom.jsp" %>
	
	<!-- 제품번호를 상세보기로 넘기기 위한 form -->
	<form action="productdetail_guest.jsp" name="detailFrm" method="post">
		<input type="hidden" name="no">
	</form>
</body>
</html>