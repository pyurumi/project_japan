<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script type="text/javascript">
		function check() {
			var frm = document.loginFrm;
			if (frm.ID.value == '') {
				alert("ID를 입력하세요.");
				frm.ID.focus();
				return false;
			}
			if (frm.PWD.value == '') {
				alert("암호를 입력하세요.");
				frm.PWD.focus();
				return false;
			}
		}
	</script>
</head>
<body>
	<table  style="width: 300px; border: 0px; solid silver; vertical-align:top;">
		<tr  style="height: 20px;">
			<td style="border: 1px solid silver;">
				<p style="font-size: 0.8em;">로그인 ></p>
			</td>
		</tr>
		<tr  style="height: 200px; ">
			<td style="border: 1px solid silver;">
					
						<form:form modelAttribute="guest" action="../login/login.html" method="post">
							아이디	: <form:input path="user_id" size="12"/>
							패스워드	: <form:input path="password" size="12"/>
							<hr/>
							<input type="submit" value="로그인"/>
						</form:form>
		
			</td>
		</tr>
		<tr  style="height: 30px;">
			<td style="border: 1px solid silver; text-align: center">
				<div style="font-size: 0.8em;">
					<a href="../home/userentry.html">회원가입</a>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>