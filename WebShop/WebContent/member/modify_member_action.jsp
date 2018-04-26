<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="membermanager" class="member.MemberManager"/>
<jsp:useBean id="bean" class="member.MemberBean"/>
<jsp:setProperty property="*" name="bean"/>
<%
	boolean b = membermanager.modifyData(bean);
	if(b){
%>
	<script>
		alert("Edit Your info Successfully");
		location.href = "../index.jsp";
	</script>	
<% } else { %>
	<script>
		alert("Fail to edit!\nContact Administrator");
		history.back();
	</script>	
<%
	}
%>