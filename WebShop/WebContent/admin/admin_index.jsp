<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰</title>
</head>
<body>
	<table style="width: 80%">
		<tr><td style="font-size: 20pt">Shoe's Mall</td></tr>
	</table>
	
<!-- include top page -->
	<%@ include file="admin_top.jsp" %>
	<table style="width: 80%">
			<tr style="text-align: center; width=100%;">
				<td style="font-size: 20pt;">
					Administrator's login mode
					<img title="관리자" width="100%" src="../images/admin_index_picture.jpg">
				</td>
			</tr>	
	</table>

<!-- include bottom page -->
	<%@ include file="admin_bottom.jsp" %>
	
</body>
</html>