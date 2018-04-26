<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="membermanager" class="member.MemberManager"/>
<%
	String id = (String)request.getParameter("id");
	boolean b = membermanager.deleteData(id);
	if(b){
%>
		<script>
			alert("Delete Successfully");
			location.href = "membermanager.jsp";
		</script>	
<% } else { %>
		<script>
			alert("Fail to delete!\n");
			history.back();
		</script>	
<%
	}
%>