<%@page import="product.ProductDto"%>
<%@page import="product.ProductBean"%>
<%@page import="order.OrderBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="ordermanager" class="order.OrderManager"/>
<jsp:useBean id="productmanager" class="product.ProductManager"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/script.js"></script>
</head>
<body>
	<h2>** Completed order list **</h2>
	<%@ include file="guest_top.jsp" %>
	<table style="width: 80%">
		<tr>
			<th>Product Num</th><th>Product Name</th><th>Number of Order</th><th>Order Date</th><th>Deliver Statue</th>
		</tr>
	<%	
		String id = (String)session.getAttribute("idKey");
		ArrayList<OrderBean> list = ordermanager.getOrder(id);
		if(list.size()==0) {
	%>
		<tr>
			<td colspan="5"> Empty</td>
		</tr>
	<%
		} else {
			for(OrderBean order:list){
				ProductDto product = productmanager.getProduct(order.getProduct_no());
	%>
				<tr>
					<td><%=order.getNo() %></td>
					<td><%=product.getName() %></td>
					<td><%=order.getQuantity() %></td>
					<td><%=order.getSdate() %></td>
					<td>
					<%
						switch(Integer.parseInt(order.getState())){
							case 1: out.println("Order Receive");break;
							case 2: out.println("Deposit confirmation");break;
							case 3: out.println("Ready to Ship");break;
							case 4: out.println("Shipping");break;
							default : out.println("Complete");break;
						}
					%>
					</td>
				</tr>			
	<%
			}
		}
	%>
	</table>
	<%@ include file="guest_bottom.jsp" %>
</body>
</html>