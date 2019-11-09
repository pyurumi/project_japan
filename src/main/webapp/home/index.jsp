<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>create something</title>
<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script src="../javascript/timer.js"></script>
<script src="../javascript/menu.js"></script>
<script src="../javascript/mainmenu.js"></script>

<link rel="stylesheet" type="text/css" href="../css/mainmenu.css">
</head>
<body onload="startClock()">
	<div style="background-color: gray">
	<div align="left" class="topnav">단어</div>
		<ul class="subnav">
			<li><a href="#">N5</a></li>
			<li><a href="#">N4</a></li>
			<li><a href="#">N3</a></li>
			<li><a href="#">N2</a></li>
			<li><a href="#">N1</a></li>
		</ul>
	<div>
		<div align="center">
			<h3>여기가 타이틀</h3>
		</div>
		<div align="center" class="mainmenu_bar">
			<ul class="menu">
				<li><a href="../home/index.jsp">HOME</a></li>
				<li><a href="#">WORD</a>
					<ul>
						<li><a href="#">N5</a></li>
						<li><a href="#">N4</a></li>
						<li><a href="#">N3</a></li>
						<li><a href="#">N2</a></li>
						<li><a href="#">N1</a></li>
					</ul></li>
				<li><a href="#">PHRASE</a>
					<ul>
						<li><a href="#">N5</a></li>
						<li><a href="#">N4</a></li>
						<li><a href="#">N3</a></li>
						<li><a href="#">N2</a></li>
						<li><a href="#">N1</a></li>
					</ul></li>
				<li><a href="#">PATOIS</a>
					<ul>
						<li><a href="#">大阪</a></li>
						<li><a href="#">沖縄</a></li>
						<li><a href="#">長崎</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	</div>
	<br/><br/>
	<div align="center">
		<h2>리스트를 만들 곳</h2>
	</div>
	<div align="center">
		<h2>컨텐츠 내용보는곳</h2>
	</div>
	<div align="right" id="clock"></div>
	<div align="right" style="font-size: 15px; background-color: white;">2019.Pyurumi.</div>



</body>
</html>