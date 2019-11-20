<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style type="text/css">
#content {
	height: auto;
	width: 50%;
	border: 1px solid gray;
}
</style>
</head>
<body>
	<table>
		<tr>
			<td>[글번호]</td>
			<td>&nbsp;&nbsp;${BBS_WORDDETAIL.seqno }</td>
			<td>[글제목]</td>
			<td>&nbsp;&nbsp;${BBS_WORDDETAIL.title }</td>
			<td>[작성자]</td>
			<td>&nbsp;&nbsp;${BBS_WORDDETAIL.id }</td>
			<td>[작성일]</td>
			<td>&nbsp;&nbsp;${BBS_WORDDETAIL.bbs_date }</td>
		</tr>
	</table>

	<div id="content">${BBS_WORDDETAIL.content }</div>
</body>
</html>








