<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
		prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test="${sessionScope.loginUser == null}">
		<img alt="" src="https://marisha39.com/wp-content/uploads/phrase250.png">
	</c:when>
	<c:otherwise>
	정상적으로 로그아웃되지 않았습니다.<br/>
	관리자에게 문의해 주세요.
	</c:otherwise>
</c:choose>
</body>
</html>





