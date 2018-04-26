<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="boardmanager" class="board.BoardManager"/>

<jsp:useBean id="dto" class="board.BoardDto"/>



<c:set var="content" value = "${boardmanager.getData(param.num)}"/>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

</head>

<script type="text/javascript">

//입력 자료 검사
	
	function check() {
		if (modify_form.name.value == "") {
			alert("Enter Your Name");
			modify_form.name.focus();
		} else if (modify_form.pass.value == "") {
			alert("Enter Your Password");
			modify_form.pass.focus();
		} else if (modify_form.mail.value == "") {
			alert("Enter Your Email");
			modify_form.mail.focus();
		} else if (modify_form.title.value == "") {
			alert("Enter Title");
			modify_form.title.focus();
		} else if (modify_form.cont.value == "") {
			alert("Type Cotent");
			modify_form.cont.focus();
		} else
			modify_form.submit();
	}

</script>

	<body>
	
		<h2 style="text-align:center;"> *** Editing *** </h2>
	
		<form name="modify_form" method="post" action = "modify_action.jsp">
	
			<input type="hidden" name = "num" value = "${content.num}"/>
	
			<table border="1">
	
				<tr>
	
					<td align="center" width="100">Name</td>
	
					<td width="430"><input name="name" size="15" readonly="readonly" value="${content.name}"></td>
	
				</tr>
	
				<tr>
	
					<td align="center">Password</td>
	
					<td><input type="password" name="pass" size="15"></td>
	
				</tr>
	
				<tr>
	
					<td align="center">Email</td>
	
					<td><input name="mail" size="25" readonly="readonly" value="${content.mail}"></td>
	
				</tr>
	
				<tr>
	
					<td align="center">Title</td>
	
					<td><input name="title" size="50" value="${content.title}"></td>
	
				</tr>
	
				<tr>
	
					<td align="center">Content</td>
	
					<td><textarea name="cont" cols="50" rows="10">${content.cont }</textarea></td>
	
				</tr>
	
				<tr>
	
					<td colspan="2" align="center" height="30">
	
						<input type="button" value="Main" onClick="location.href='../index.jsp'">&nbsp;
	
						<input type="button" value="Write" onClick="check()">&nbsp;
	
						<input type="button" value="Create" onClick="location.href='boardlist.jsp'">
	
					</td>
	
				</tr>
	
			</table>
	
		</form>
	
	</body>

</html>


