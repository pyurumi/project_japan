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
	<div align="center">
		<table style="width: 350px; vertical-align:top; border: 1px solid silver;" >
			<tr style="height: auto; text-align:left;">
				<td colspan="2" style="border: 1px solid silver;">
					<p style="font-size: 0.8em;">로그인 > 회원가입 ></p>
				</td>
			</tr>

			<form:form action="../entry/entry.html" modelAttribute="user" method="post" name="frm" onSubmit="return formCheck(this)">
						<tr style="height: 50px; border: 1px solid silver; text-align:left;">
							<td>아이디</td>
							<td><form:input path="user_id"/>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="중복확인" onClick="idCheck()"><td>
						</tr>
						<tr style="height: 50px; border: 1px solid silver; text-align:left;">
							<td>암호</td>
						 	<td><form:password path="password"/></td>
						</tr>
						<tr style="height: 50px; border: 1px solid silver; text-align:left;">
							<td>암호확인</td>
							<td> <input type="password" name="CONFIRM"/></td>
						</tr>
						<tr style="height: 50px; border: 1px solid silver; text-align:left;">
							<td>이름</td>
							<td> <form:input path="user_name"/></td>
						</tr>
						<tr style="height: 50px; border: 1px solid silver; text-align:left;">	
							<td>이메일</td>
							<td> <form:input path="email"/></td>
						</tr>
						<tr style="height: 50px; text-align:right;">
							<td colspan="2" style="border:1px solid silver;"><input type="submit" value="확인" class="btn"/>&nbsp;&nbsp;<input type="reset" value="취소"/></td>
						</tr>
			</form:form>
		</table>
	</div>
</body>
</html>