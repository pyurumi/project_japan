<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단어공부</title>
</head>
		<div class="bbs_wordlist" style="border: 1px solid silver; float: left; width: 10%;	padding: 0.5%;	margin-left: 5%; magin-right:5%">
			<table align="center">
				<tr>
					<td style="border:1px solid silver; width: 15%; text-align:center;"><p>목 록</p></td>
				</tr>
				<tr>
					<td><a href="#" style="text-decoration:none;"><p>n5</p></a></td>
				</tr>
				<tr>
					<td><a href="#" style="text-decoration:none;"><p>n4</p></a></td>
				</tr>
				<tr>
					<td><a href="#" style="text-decoration:none;"><p>n3</p></a></td>
				</tr>
				<tr>
					<td><a href="#" style="text-decoration:none;"><p>n2</p></a></td>
				</tr>
				<tr>
					<td><a href="#" style="text-decoration:none;"><p>n1</p></a></td>
				</tr>
			</table>
			<table align="center">			
				<tr>
					<td style="border:1px solid silver; text-align:center;">
						<a href="../write/bbs_wordTemplate.html" style="text-decoration:none;">
							<p>게시글 작성</p>
						</a>
					</td>
				</tr>
			</table>
		</div>
		
		<div class="bbs_wordcontent" style="float: right; width: 65%; padding:1%; margin-right:10%; margin-left:5%;">
			<p>단어 공부를 시작합시다</p>
			<hr/>	
			<c:choose>
				<c:when test="${WORD_BODY != null }">
					<jsp:include page="${WORD_BODY }" flush="false"/>
				</c:when>
				<c:otherwise>
					<p>코드확인점</p>
				</c:otherwise>
			</c:choose>
		</div>

</body>
</html>