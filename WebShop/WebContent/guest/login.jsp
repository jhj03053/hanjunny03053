<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("idKey");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 로그인</title>
<script src="../js/script.js"></script>
<script type="text/javascript">
	window.onload = function() {
		document.getElementById("btnLogin").onclick = funcLogin;
		document.getElementById("btnHome").onclick = funcHome;
	}
</script>
</head>
<body>
	<form name="loginForm">
		<%if(id == null || id == ""){ %>
			<table>
				<tr>
					<td colspan="2">** User Login **</td>
				</tr>
				<tr>
					<td>ID :</td>
					<td><input type="text" name="id" />
				</tr>
				<tr>
					<td>Password :</td>
					<td><input type="text" name="passwd" />
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="Login" id="btnLogin" /> 
						<input type="button" value="HomePage" id="btnHome" />
					</td>
				</tr>
			</table>
		<%} else { %>
			<%=id %>'s login now<br/>
			<a href = "../index.jsp">Main</a>
			<a href = "login_out.jsp">LogOut</a>
		<%} %>
	</form>
</body>
</html>