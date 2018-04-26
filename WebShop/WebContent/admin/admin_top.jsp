<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String admin_id = (String)session.getAttribute("adminOk");
	
	if(admin_id == null) {
%>
	<script>
		alert("Administrator logout now.");
		location.href = "../guest/guest_index.jsp";
	</script>
<%
		return;
	}
%>
<table style="width: 80%">
	<tr style="background-color: #ccbbcc; text-align: center;" >
		<td><a href="../index.jsp">HomePage</a></td>
		<td><a href="admin_login_out.jsp">LogOut</a></td>
		<td><a href="membermanager.jsp">Member </a></td>
		<td><a href="productmanager.jsp">Merchandise Control</a></td>
		<td><a href="ordermanager.jsp">Order Management</a></td>
	</tr>
</table>