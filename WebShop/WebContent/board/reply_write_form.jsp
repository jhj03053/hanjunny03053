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
	if (frm.name.value == "") {
		alert("Enter Your Name");
		frm.name.focus();
	} else if (frm.pass.value == "") {
		alert("Enter Your Password");
		frm.pass.focus();
	} else if (frm.mail.value == "") {
		alert("Enter Your Email");
		frm.mail.focus();
	} else if (frm.title.value == "") {
		alert("Enter Title");
		frm.title.focus();
	} else if (frm.cont.value == "") {
		alert("Type Your Content");
		frm.cont.focus();
	} else
		frm.submit();
}
</script>
<body>
	<h2 style="text-align:center;"> *** Reply *** </h2>
	<form name="frm" method="post" action = "reply_write_action.jsp">
	
		<!-- 댓글을 위한 그룹 번호 전달 -->
		<input type="hidden" name = "group_num" value = "${content.group_num}"/>
		
		<!-- 댓글 들여쓰기를 위한 단계 번호 전달 -->
		<input type="hidden" name = "nested" value = "${content.nested}"/>
		
		<!-- 페이지처리를 위한 페이지 번호 넘기기 -->
		<input type="hidden" name = "page" value = "${param.page}"/>
		
		<!-- 내용 저장을 위한 기본적인 데이터 전달 -->
		<input type="hidden" name = "num" value = "${content.num}"/>
		<table border="1">
			<tr>
				<td align="center" width="100">Name</td>
				<td width="430"><input name="name" size="15"></td>
			</tr>
			<tr>
				<td align="center">Password</td>
				<td><input type="password" name="pass" size="15"></td>
			</tr>
			<tr>
				<td align="center">Email</td>
				<td><input name="mail" size="25"></td>
			</tr>
			<tr>
				<td align="center">Title</td>
				<td><input name="title" size="50" value="[re]:${content.title}"></td>
			</tr>
			<tr>
				<td align="center">Content</td>
				<td><textarea name="cont" cols="50" rows="10">


--------------- main content -----------------
Title : ${content.cont } 
Writer : ${content.name}
${content.cont}
				</textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="center" height="30">
					<input type="button" value="Main" onClick="location.href='../index.jsp'">&nbsp;
					<input type="button" value="Create" onClick="check()">&nbsp;
					<input type="button" value="List" onClick="location.href='boardlist.jsp?page=${param.page}'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>