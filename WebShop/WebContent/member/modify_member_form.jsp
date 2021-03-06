<%@page import="member.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="membermanager" class="member.MemberManager"/>
<%
	String idkey =  (String)session.getAttribute("idKey");
	MemberDto dto = membermanager.getData(idkey);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/script.js?ver=2"></script>
<script type="text/javascript">
window.onload = function(){
	//직업 가저오기
	var job = document.getElementsByName("job")[0];
	for(var i = 0;i<job.length;i++){
		if(job[i].value ==="<%=dto.getJob()%>"){
			job[i].selected = true;
		}
	}
	document.getElementById("btnZip").onclick = checkzip;
	document.getElementById("btnModify").onclick = memberModify;
	document.getElementById("btnModifyCancel").onclick = memberModifyCancel;
	document.getElementById("btnDelete").onclick = function(){
		memberDelete("<%=dto.getId()%>");
	}
}
</script>
</head>
<body>
<br>
<table class="table">
<tr>
	<td align="center" valign="middle" style="background-color: #FFFFCC">
		<form name="regForm" method="post" action="modify_member_action.jsp">
			<table border="1">
				<tr align="center" style="background-color: #8899aa">
					<td colspan="2"><b style="color: #FFFFFF">Member info Edit</b></td>
				</tr>
				<tr>
					<td width="16%">ID</td>
					<td width="57%">
						<input type="text" name="id" size="15" style="background-color: lightgray" readonly="readonly" value = "<%=dto.getId()%>"> 
					</td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="pass" size="15" value="<%=dto.getPass() %>"></td>
				</tr>
				<tr>
					<td>Password Confirm</td>
					<td><input type="password" name="repass" size="15"></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name" size="15" value="<%=dto.getName() %>"></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="mail" size="27" value="<%=dto.getMail() %>"></td>
				</tr>
				<tr>
					<td>Phone</td>
					<td><input type="text" name="phone" size="20" value="<%=dto.getPhone() %>"></td>
				</tr>
				<tr>
					<td>Zipcode</td>
					<td>
						<input type="text" name="zipcode" size="7" value="<%=dto.getZipcode()%>"> 
						<input type="button" value="우편번호찾기" id="btnZip" >
					</td>
				</tr>
				<tr>
					<td>Address</td>
					<td><input type="text" name="address" size="60" value="<%=dto.getAddress()%>"></td>
				</tr>
				<tr>
					<td>Job</td>
					<td>
						<select name="job" onselect="기타" onshow="기타" >
							<option value="0">Select
							<option value="회사원">Salaried Employee
							<option value="학생">Student
							<option value="자영업">Self-Employee
							<option value="주부">Housewife
							<option value="기타">Other
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="button" value="Complete" id="btnModify" />
						&nbsp;&nbsp;
						<input type="button" value="Cancel" id="btnModifyCancel" />
						<input type="button" value="Delete the account" id="btnDelete" />
					</td>
				</tr>
			</table>
		</form>
	</td>
</tr>
</table>
</body>
</html>