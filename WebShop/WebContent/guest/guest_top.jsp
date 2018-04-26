<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String memberid = (String)session.getAttribute("idKey");
	String login_check = "";
	String member_register_check = "";
	
	if(memberid == null){  //로그인 중이면
		login_check = "<a href='login.jsp'>Login</a>";
		member_register_check = "<a href='../member/register_form.jsp'>Join</a>";
		
	} else {  //로그인이 되어있지 않으면
		login_check = "<a href='login_out.jsp'>LogOut</a>";
		member_register_check = "<a href='../member/modify_member_form.jsp'>Edit your info</a>";
	}
%>
<table style="width: 80%">
	<tr style="background-color: #ffbbcc; text-align: center;">
		<td><%=login_check %></td>
		<td><%=member_register_check %></td>
		<td><a href="productlist.jsp">Item List</a></td>
		<td><a href="cartlist.jsp">Cart List</a></td>
		<td><a href="orderlist.jsp">Purchase List</a></td>
		<td><a href="../board/boardlist.jsp">Board</a></td>
	</tr>
</table>