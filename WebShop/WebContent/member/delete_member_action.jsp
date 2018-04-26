<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="membermanager" class="member.MemberManager"/>
<%
	String id = (String)request.getParameter("id");
	boolean b = membermanager.deleteData(id);
	if(b){
		session.removeAttribute("idKey");
%>
		<script>
			alert("Delete Successfully");
			location.href = "../index.jsp";
		</script>	
<% } else { %>
		<script>
			alert("Fail to Delete!\nContact Administrator");
			history.back();
		</script>	
<%
	}
%>