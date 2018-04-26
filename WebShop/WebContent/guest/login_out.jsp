<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IT350</title>
</head>
<body>
	<% session.removeAttribute("idKey");%>
	<script type="text/javascript">
		alert("Logout successfully");
		location.href="../index.jsp";
	</script>
</body>
</html>