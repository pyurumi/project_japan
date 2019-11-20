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
</head>
<body>
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
	<div align="center">
		<table cellpadding="2" cellspacing="2" style="width: 350px; vertical-align:top; border: 1px solid silver;">
			<tr style="height: auto; text-align:left;">
				<td colspan="2" style="border: 1px solid silver;">
					<p style="font-size: 0.8em;">로그인 ></p>
				</td>
			</tr>
			
		<c:if test="${param.MSG1 == 'Y' }"> 게시글을 등록하려면, 로그인 해야 합니다.<br />
			<form:form modelAttribute="user" action="../login/imageLogin.html" method="post">
				아이디 : <form:input path="user_id" size="12" placeholder="아이디를 입력하세요." />
					<font color="red">
						<form:errors path="user_id" /> 
					</font>
				<br />
				패스워드 : <form:password path="password" size="12" placeholder="암호를 입력하세요." />
					<font color="red">
						<form:errors path="password" /> 
					</font>
				<br />
				<input type="submit" value="로그인" />
			</form:form>
		</c:if>
		
		
		<c:if test="${param.RESULT == 'nologin' }"> 구매하시려면, 로그인 해야 합니다.<br />
				<form action="cartLogin.do" method="post" name="loginFrm" onSubmit="return check();">
					아이디 : <input type="text" name="ID" placeholder="아이디를 입력하세요." /><br />
					패스워드 : <input type="password" name="PWD" placeholder="암호를 입력하세요." /><br />
					<input type="submit" value="로그인" />
				</form>
		</c:if>
		
		<c:if test="${param.RESULT == null && param.MSG1 != 'Y'}">
			<form:form modelAttribute="guest" action="../login/index.html" method="post">
					<tr style="height:50px; border: 1px solid silver; text-align:left;">
						<td>아이디 </td> 
						<td><form:input path="user_id" placeholder="아이디를 입력하세요." />
							<font color="red">
								<form:errors path="user_id" />
							</font>
						</td>
					</tr>
					<tr style="height:50px; border: 1px solid silver; text-align:left;">
						<td>패스워드</td> 
						<td><form:password path="password" placeholder="암호를 입력하세요." />
							<font color="red">
								<form:errors path="password" /> 
							</font>
						</td>
					</tr>					
					<tr style="height:50px; border: 1px solid silver; text-align:right;">
						<td colspan="2" >
							<input type="submit" value="로그인" />
						</td>
				</form:form>
		</c:if>
		
			<tr style="height:50px; border: 1px solid silver; text-align:right;">
				<td colspan="2" style="border:1px solid silver;"> 	
					<a href="../home/userentry.html" style="text-decoration:none;"> 회원가입</a>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>










