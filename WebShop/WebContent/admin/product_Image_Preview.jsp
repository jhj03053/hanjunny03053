<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="productmanager" class="product.ProductManager"/>

<%
	productmanager.deletePreviewImg(request);
	String imageName = productmanager.insertPreviewImg(request);
	out.println(imageName);
%>