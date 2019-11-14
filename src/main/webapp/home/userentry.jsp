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
	<table  style="width: 300px; border: 0px; solid silver; vertical-align:top;">
		<tr  style="height: 20px;">
			<td style="border: 1px solid silver;">
				<p style="font-size: 0.8em;">회원가입 ></p>
			</td>
		</tr>
		<tr  style="height: auto; ">
			<td style="border: 1px solid silver;">
				<form:form action="../entry/entry.html" modelAttribute="user" method="post" name="frm" onSubmit="return formCheck(this)">
					아이디	: <form:input path="user_id"/><input type="button" value="중복확인" onClick="idCheck()"><br/>
					암호		: <form:input path="password"/><br/>
					암호확인	: <input type="password" name="CONFIRM"/><br/>
					이름		: <form:input path="user_name"/><br/>
					이메일	: <form:input path="email"/><br/><hr/><br/>
					<input type="submit" value="확인" class="btn"/>
					<input type="reset" value="취소"/>
				</form:form>
					
			</td>
		</tr>
	</table>
</body>
</html>