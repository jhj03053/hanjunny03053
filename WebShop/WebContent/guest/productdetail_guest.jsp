<%@page import="product.ProductDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="productmanager" class="product.ProductManager"/>
<% request.setCharacterEncoding("utf-8"); %>
<% 
	String no = request.getParameter("no");
	ProductDto dto = productmanager.getProduct(no);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세보기</title>
<script type="text/javascript" src="../js/script.js"></script>
</head>
<body>
	<h2>** Product Detail **</h2>
	<%@ include file = "guest_top.jsp" %>
	<form action="cartprocess.jsp">
		<table style="width: 80%">
			<tr>
				<td style="width: 20%">
					<img src="../images/product/<%=dto.getImage() %>" width="100%">
				</td>
				<td style="width: 50%; vertical-align: top;">
					<table style="width: 100%">
						<tr>
							<td>Phone : </td>
							<td>
								<%=dto.getNo() %>
								<input type="hidden" name="product_no" value="<%=dto.getNo() %>">
							</td>
						</tr>
						<tr>
							<td>Name of Product : </td>
							<td><%=dto.getName() %></td>
						</tr>
						<tr>
							<td>Price : </td>
							<td><%=dto.getPrice() %></td>
						</tr>
						<tr>
							<td> registration date: </td>
							<td><%=dto.getSdate() %></td>
						</tr>
						<tr>
							<td>Total Stock : </td>
							<td><%=dto.getStock() %></td>
						</tr>
						<tr>
							<td>Number of the order : </td>
							<td>
								<input type="text" name="quantity" value="1" size="5" style="text-align: center;">
							</td>
						</tr>
					</table>
				</td>
				<td style="width: 30%; vertical-align: top;">
					<b>* Explanation of product *</b><br/>
					<%=dto.getDetail() %>
				</td>
			</tr>
			<tr>
				<td colspan="3" style="text-align: center;">
					<input type="submit" value="ADD in the cart">
					<input type="button" value="Move to Before" onclick="history.back()">
				</td>
			</tr>
		</table>
	</form>
	<%@ include file = "guest_bottom.jsp" %>
	
</body>
</html>