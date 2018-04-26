<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function check() {
		if(frm.id.value == "" || frm.pass.value == "") {
			alert("자료를 입력하시오");
			return;
		} else {
			frm.submit();
		}
	}
</script>
</head>
<body>
	<form action="admin_login_action.jsp" name="frm" method="post">
		<table style = "width:100%">
		<%
			String admin = (String)session.getAttribute("adminOk");
			if(admin !=null){
		%>
			<tr>
				<td>
					<script>
						window.opener.location.href="admin_index.jsp";
					</script>
					Administrator is logging<br/>
					[<a href="admin_login_out.jsp">LogOut</a>]
					[<a href="javascript:window.close()">Close</a>]
				</td>				
			</tr>
		<%
			} else {
		%>
			<tr><td>ID  :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="id" style="width: 16.35%" /></td></tr>
			<tr><td>Password : <input type="text" name="pass" style="width: 16.2%" /></td></tr>
			<tr>
				<td>
					[<a href="#" onclick="check()">Login</a>]
					[<a href="javascript:window.close()">Close</a>]
				</td>
			</tr>
		<%
			}
		%>
		</table>
	</form>
</body>
</html>