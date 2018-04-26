<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="membermanager" class="member.MemberManager"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/script.js"></script>
</head>
<body>
<%
	String id = (String)request.getParameter("id");
	String pass = (String)request.getParameter("pass");

	boolean deleteConfirm = membermanager.deleteConfirm(id, pass);
	if(deleteConfirm){
%>
		<script type="text/javascript">
			var confirmResult = confirm("Do you really want to delete it?");
			if(confirmResult == true){
				var deleteId = "<%=id%>";
				post_to_url("delete_member_action.jsp",{'id':deleteId});
			} else {
				history.back();
			}
		
		</script>
<%
	} else {
%>
		<script>
			alert("Password is incorrect");
			history.back();
		</script>	
<%
	}
%>
</body>
</html>