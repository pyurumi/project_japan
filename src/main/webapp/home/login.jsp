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
		<div align="center" style="border:1px solid silver; width: 350px;">
			<p style="font-size: 0.8em; text-align:left;text-align:left;">로그인 ></p>
		</div>
		<c:if test="${param.MSG1 == 'Y' }"> 게시글을 등록하려면, 로그인 해야 합니다.<br />
			<div style="border:1px solid silver; width: 350px;">
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
			</div>
		</c:if>
		
		
		<c:if test="${param.RESULT == 'nologin' }"> 구매하시려면, 로그인 해야 합니다.<br />
			<div style="border:1px solid green; width: 350px; text-align:left;">
				<form action="cartLogin.do" method="post" name="loginFrm" onSubmit="return check();">
					아이디 : <input type="text" name="ID" placeholder="아이디를 입력하세요." /><br />
					패스워드 : <input type="password" name="PWD" placeholder="암호를 입력하세요." /><br />
					<input type="submit" value="로그인" />
				</form>
			</div>
		</c:if>
		
		<c:if test="${param.RESULT == null && param.MSG1 != 'Y'}">
			<div style="border:1px solid silver; width: 350px; text-align:left;">
				<form:form modelAttribute="user" action="../login/frame.html" method="post">
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
						<div style="text-align:center;">
							<input type="submit" value="로그인" />
						</div>
				</form:form>
			</div>
		</c:if>
		
		<div align="center" style="border:1px solid silver; width: 350px;">
			<a href="../home/userentry.html"> 회원가입</a>
		</div>
</body>
</html>










