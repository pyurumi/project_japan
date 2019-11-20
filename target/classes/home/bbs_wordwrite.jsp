<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 글쓰기</title>
</head>
<body>
	<h3 align="center">단어 게시글 작성</h3>
	<form:form modelAttribute="bbs_word" action="../home/bbs_wordwrite.html" method="post">
		<p>제 목 <form:input path="title" placeholder="제목을 작성해주세요"/></p>
		<br/><br/>
		<form:textarea rows="10" cols="40" path="content" placeholder="입력하세요"></form:textarea>
		<br/>
		<input type="submit" value="작성"/>&nbsp;&nbsp;<input type="reset" value="취소"/>
	</form:form>
</body>
</html>