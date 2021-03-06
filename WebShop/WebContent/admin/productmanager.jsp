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
<script src="../js/script.js?ver=0.1"></script>
</head>
<body>
	<h2>Admin -The List of Products</h2>
	<%@ include file = "admin_top.jsp" %>
	<table style="width: 80%">
		<tr style="background-color: yellow">
			<th>No</th><th>Product Name</th><th>Price</th><th>Registration date</th><th>Total Stock</th><th>Detail</th>
		</tr>
	<%
		ArrayList<ProductDto> list = productmanager.getProductAll();
	
		if(list.size() == 0){
	%>
		<tr><td colspan="6">Noting in the list.</td></tr>
	<%		
		} else {
			for(ProductDto dto:list){
	%>
				<tr>
					<td><%=dto.getNo() %></td>
					<td><%=dto.getName() %></td>
					<td><%=dto.getPrice() %></td>
					<td><%=dto.getSdate() %></td>
					<td><%=dto.getStock() %></td>
					<td><a href="javascript:productDetail_admin('<%=dto.getNo() %>')">상세보기</a></td>
				</tr>
	<%
			}		
		}
	%>
		<tr>
			<td colspan="6"><a href="product_insert.jsp">[ ADD Products ]</a></td>
		</tr>
	</table>
	<%@ include file = "admin_bottom.jsp" %>
	<form action="productdetail_admin.jsp" name="detailFrm" method="post">
		<input type="hidden" name="no">
	</form>
</body>
</html>