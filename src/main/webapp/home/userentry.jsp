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
	<script src="../javascript/user.js"></script>
	<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
</head>
<body>
	<table  style="width: 350px; vertical-align:top;" >
		<tr  style="height: 20px; text-align:left;">
			<td style="border: 1px solid silver;">
				<p style="font-size: 0.8em;">로그인 > 회원가입 ></p>
			</td>
		</tr>
		<tr style="height: auto; text-align:left;">
			<td style="border: 1px solid silver;">
				<form:form action="../entry/entry.html" modelAttribute="user" method="post" name="frm" onSubmit="return formCheck(this)">
					아이디&nbsp;: <form:input path="user_id"/>&nbsp;<input type="button" value="중복확인" onClick="idCheck()"><br/>
					암호&nbsp;&nbsp;: <form:password] path="password"/><br/>
					암호확인&nbsp;	: <input type="password" name="CONFIRM"/><br/>
					이름&nbsp;: <form:input path="user_name"/><br/>
					이메일&nbsp;: <form:input path="email"/><br/>
					<div style="height:auto; border:1px solid silver; text-align:center;">
						<input type="submit" value="확인" class="btn"/>
						<input type="reset" value="취소"/>
					</div>
				</form:form>
			</td>
		</tr>
	</table>
</body>
</html>