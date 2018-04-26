<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Webshop</title>
</head>
<body>
	<table style="width: 80%">
		<tr><td style="font-size: 20pt">Shoe shop</td></tr>
	</table>
	
<!-- include top page -->
	<%@ include file="guest_top.jsp" %>
	

	<table style="width: 80%">
	
		<!-- top page에서 memberid를 가져옴 -->
		<% if(memberid != null) { %>
			<tr style="text-align: center;">
				<td style="font-size: 20pt;">
					<%=memberid %>! Welcome
					<img title="Welcome" src="../images/member_index_picture.jpg">
				</td>
			</tr>
		<% } else { %>
			<tr style="text-align: center;">
				<td style="font-size: 20pt; background-image:url(../images/guest_index_picture.jpg); background-size: 100% 100%; background-repeat: no-repeat;">
					Welcome to Shoes-moa
					<br/><br/><br/>
					<br/><br/><br/>
					<br/><br/><br/>
					<br/><br/><br/>
					<br/><br/><br/>
				</td>
			</tr>
			<tr>
				<td>				
				 Use it After login <br/>
				</td>
			</tr>
		<% } %>
	
	</table>

<!-- include bottom page -->
	<%@ include file="guest_bottom.jsp" %>
	
</body>
</html>