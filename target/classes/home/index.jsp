<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>create something</title>
<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script src="../javascript/mainmenu.js"></script>
<script src="../javascript/timer.js"></script>


<link rel="stylesheet" type="text/css" href="../cssmy/mainmenu.css">
<link rel="stylesheet" type="text/css" href="../cssmy/mainbody.css">
<link rel="stylesheet" type="text/css" href="../cssmy/mainfooter.css">

</head>
<body>
	<div class="top">
		<div class="top_menu">
			<ul class="login">
				<c:choose>
					<c:when test="${sessionScope.loginUser != null }">						
						<li><a href="../logout/index.html">로그아웃</a></li>	
					</c:when>
					<c:when test="${HEADER != null }">
						<jsp:include page="${HEADER }"/>
					</c:when>
					<c:otherwise>
						<li><a href="../login/login.html">로그인</a></li>
					</c:otherwise>
				</c:choose>
				
					<li><a href="#">출석체크</a></li>
			</ul>
		</div>
		
		<div class="top_title" align="center" >
			<p class="title">
				<a href="../home/index.jsp">일본어 공부해봅시다</a>
			</p>
			<p class="sub_title">
				잊어버리지 않게 열심히 합시다
			</p>
		</div>
		
		<div class="mainmenu_bar">
			<ul class="menu">
				<li><a href="../home/index.jsp">홈</a></li>
				<li>
					<a href="../home/bbs_word.html">단 어</a>
				</li>
				<li>
					<a href="../home/index.html?BODY=bbs_gram.jsp">문 법</a>
				</li>
				<li>
					<a href="#">방 언</a>
				</li>
				<li>
					<a href="#">자유게시판</a>
				</li>
			</ul>
		</div>
	</div>
	
	<div class="center">
		<div class="center_top">
				<span id="breadcrumb_line"> 일본어공부 </span>
		</div>
		
		<div id="content" class="center_body">
			<c:choose>
				<c:when test="${BODY != null }">
					<jsp:include page="${BODY }"/>
				</c:when>
				<c:otherwise>
					<img alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAACFlBMVEX////81o0jGBYUpzz/4RQBaLef2Pb4+PgAAADzmAHnGRn1sqL6+vq2trbrYTz/4AD/5RQVqjMAZroJf5HmAADqThkAoin/3JH+5UO0377Z7d3xnHcFpzcIAAASAAD81YkVrC0AABdbrG36wIDqXD/2phb3rRcFdKT/86//35PykQAXBgAAGBa8urZEfLf+nwDXzX4aDxH922X3tUb/6hTr6ur2rTr+9uj98doAYbnb2dnKyMdtaGejn5+Sjo2vrKxRSkkaGBbvy4fGqXFQQjAQAAz3vZz52Zv95Lf96cV1x4v6yHJCOjk2LSxgWll8d3bWGRklJSi0GRmvlGMvJB1JPCydlop6f4ixpIrUtnhkUjr6ypX2tqD95btYu2/UxKX+8JuW06TpSjDyoI345Fn15W1Bs12FgoA7MS4tGBZpGBfX7vu04Pc+UFt5GBiTxN/AGhhacH1qk6h/sctKWGI5PUNohZayvrSRe1J+aUnQ18S4196giVzLtYrBr4uIc074v2H4xJnwfFT2pW7ubFX2qHHwiGhosmGOuXXhkhlRMg9zrYeas6ChZQvRwa5KPhVwRxHRvBXAeAplWBWGVRCTghX+7IO3oxV5axZ1r4JSTRb6yA/J58+S0J7ugTT/8aWNspQkoFktmXDsXV5hp6/ocHb019Zmn8/vurxXgbCVvF64xnTuahkMiIEPlmcHdp/xjY3Z5MVHo/bdAAAZkElEQVR4nO1di3sT15WXZJkZg1TZrOMxRJqBQAi2cFIVy7IlWxICIckvObHMw8aGsH7l0TygSSAF4jQkWVKabLdb2jQkTcJCaLtt6X+49zUz987ckWbGGvlbfTkksubOzJnzu+fcc859zJUv5GtvAviEnZbBUxK0jzYlgfnThiSYvrQZCdyvbUSC5UGbkFD3sA3IhKjdIHLwtBdELpp2gmiBpX0gWiJpF4h1cLQHxLoo2gFiAwz//yE2RNBkiJm041uc30GTDfldQ0xm0klT4aw4nbUjci6sfgvFZreB0Zb0biEKIqRxtkwOBGRxc8IMnaH0tCiqlwyJcdE1Rpuyu4VYC0BiijIiKovJsxnr+5LjYiIQnyVHs/FAIC6OuxLC9k0uIVaBbAGRKcrKAUxxcWZCY2sYG0rG0Y1Yb2lUJ3LejQAO5HYHcSIGBWUMckZFCM9UcVkeGnN8NpvRgCZRHWAljsfRQQOz3r7UriAikxTpJiRMzM6IsThBSAyVYJDFWlbFkdbuxCoU69h0s2R2AzEJdRjLZSBpbjWUzo2LopzQ9bKh6TUm58hVOQBM3vAR+OKEi6c7ltgFRAGLLWLaoM6ks8A0p8lBlmO5vg1YOwJRZtb5s13J6/yWaV10oEv2XDKnFmRFGVGCscd8PBZI+vKgkKkbD6V1c9NsnNIOaFVCJpytVser2VyGcp/hanZiIput5sW4rkNfUtwI6cbqvazubkP2J4tiLBaTxeRGAHyT5XhcloHl8gLirDirHySTmTA01cCMHIvFN713jG5uzAEJ5YnMUDg3sVH1zVLtDQbEWWMESKoaTGYmxqdhfVAm4MSbbiOXdngr1IEuWlgMMBQ3BrkJnIsKIGWT4wn2YtmBO91WZ8HZzTAg6giFgIHi0/zbxuPGK8G1eY9k3N7t0NdTER9IHo8BdxKIEfMTw9zbMqqyE6ANx2cwQtkTCbfLIMkiHAL+JZdOCkIyV5PrKWYGQRLFfDacTiKNxvJ2n9uE/qyTdFZk8lIhq99LAgmfWViMAXSoapKbMp0INFO67TER0uFcLpwB0on8y5NYifyEWsirHch0AGVttkNik0YkGo98VGUYA2NiHTePldigy5BBDbblABuPXgXoyCeKVR5IhHCzPiPscnYAYCNWEzHi/khMk8WZnPEaFDpgQpbM0xkc6Hpk9W4iqqhYa9ugLWbI+8VnqhuzAGIiJoNDcdow0pJTe4BVUayN50DvKplMg1SmJupmnUd8Zo3sXcnknOqxg+koEqwaDyTyQ9nZAOw9MbEvCYWXq6QPGVd7WLAyEnlyDe781loYJmwzRKLFs0noSmXYtwslh0CHkG6N03B4KRCiu7+mFDQZqxNQnMjjluqwrMZQ60OGOKRdr9upkJfVtDQWMwKMaz36CZaBW2ncUx2meT3J5lyVrsGWmUeRIrQRi1FpKMjTxvWagBDtJaQeTT7UYbshYrF5IyyoWytrIxPJiXwAdSFBOwzk2bHiTC0WiNkYDfZsdqVeW5wFfkPmZFvpPEjJxCwDREhncjAFSptXE2SNo+YO5dgu1WMtZLIT5uoP58ernOI6bCZqjTq/ns6PtWTyrUFq57EMOz+/6LkEO70edaef/yP9SD+StxRSvRj+GwoJIW+bvfa8kPo8L/0oAIMQ4b/woQL4TgpC8HyomW4OVZ8g4IeCv+iRsBA9FH4lz20aCQJ6DPqHv8EnkkOh+coUtOdQ/zS0ISJBU58YUvnjCiT4QBWjByXTE9nsxHh1YyLjZnraTCEf9TwBPQ9+Jc+Dnz6huSZLKk1gqhMp0hfKVMenx8WZ6rQch5NMMncgyhmlQUVRzwuFNMWhZ6IGKTTVblBlojaAG6Ag+EhDAInydH52Mx/Pa7MPsjgzsa2nh8YD1Wk4UxVCOFAr92G9or/4s8kqtGKXBh26QCIRCNSqzMDEzHaWbs2KoLrkzfq11KIEWZtAO3FMPPHKKyeOHTtB+u4WkzA2KASZgjqLZT0ORnYoTQCeOPHqS3O7Ac299OoJglF0o8XQa6/v2vVzYu4v7tr1+ms7DJJMtxx7A8HDNPfGMTzAZHvcUyMID9CL6hDVm/Do9dc8ENw2YRWeeGs3Q29hLYqN72fotV2EZhiEgHYQI0J4zAAQQERajDlilXxdBbjrbTykGn9HK9nVnCDrmHKbcJ7ixBuqeb71lmqsb0AtJjZNkxfWtHFFh7PrHRlEVjnwpl5ydXYHxhbCcWKjCNZLrx5D9OpLCOwJ7E8D9kZ3fekZcRdNV999+92rTMmLrla6bYeS+hjwS4BeUaPEiWOvwGMtLppWmPAoLMYDu+rTL+KuloK5p5yoj1tD1dHRnjmOi41NNQsq650GCN+OB2yMozaNQuOGlTL1qKFgkFn8540RBmTbqxe2S8K0ef6oDsnTdQWrotp6saGVBloHMTnDWeBTj+IzdRrjBjYHuQHCd/BV+ZYADDgEWBdilti7fKUuwDeJ1cRa0RY3HQO0Xu7lG9IadH1X8wv1oS3wqOOO2qBKMr/ukzoz+d06AK/q13keFycceFGa+Cu385Q91LHTq3Stxrz1NmnTHDWgRJE9LiY4F8U4TZGtLvltC4DvMmZjYQ7Nory5ERbFxfkahbFYm18Ui6bLOJPXSdYeEmLiPQ6+96ZFtsY8tVPjmlior2uFAcl/PSYmEInFD/zSQOFa0YTRvAKBWVaaEBdPSopSev+Xeifj9V++X1aUgfPXGYyJBgurtkXTJrGvFyQ/IKkwf/3UwsKp6/Pq8XVjZSSM/jRNXyEunJfgnQogfwkTOkLczi8y1zroszikjEHqROLkgJ+QJA0AQlIiGjhpbI5G62IW9l/T7yQ4FerYL80zavQMoaEVFhcKtFgGkgqbrKUahjUoFdI1ZcmtpkN0P8rVgJKsIy2eaiCV/xQLUWbcaVX3kMXzdWpKpcKCBtHBGnBnlGMQJhYaS7XAGCr7Fo2uQtEOQACRMurtvUhrSbOMkSYKNoRiEMbpSKa7ZXHeFkDgb7RbZI9yN8bPiCdtyCWdZO+hmGmhonjdHkDgvG5oVu9NwGACdPGDRr4BC/UB3RSpRe4hvdAmPkia1YueDL4xsaJmV6gajVCPF5onLd6wq0LaJIwvxjWH6ITGlo0ioebpu/S0RvdaNpqzTqoSZdsrpZ0Q5UoTNVs2CmmAUiJV89W42gptc0L1RYzem8xtQkdIqVCRJMUsiV5GK5FCmCfKEM/TtymSyTQkP1OkMnM6ZWCLKB1SrfDmmTM3jVKxZboSY3ouMmPmBG7LZm+y1aWcP5OleQ0sqjXjhavRRxyK10i9KoWNs2fOnTnHAgQFZ85mC0RWSXen5tfaElSoOHP2zK1b51iI58+BorNndI2qAcOTmK/7UlH1DoWzt6BpGXWogKJbZ9WL9ECti5VUm6EW7aUzZwqSMeFGObjkP5fVSlVmnnQSBe0dOjVfU84VzG1QPVc4p57To5g2AKEO0OjNsHDL2jsrNzVDVbMkb7rBJiP11/P0inpSN9OaxkpD6ChWQGY1LxGqr0qIJ51JpcZpKptU26HoJFZAGiAG4W1S4yTPglRQ76O8A8niE44REmdq+w1TZzSNuTPhfkAyCymxhQMYINOrIwkSy6pQMPMyFErXkQwxjzoXWIm0hwf9UjFgzOCkkwHxVMEkFevgcW1tDtCXiWLtPMsK8hcXzQhdbX1ih9AsA50rFwKJQEJkxQL5MSis6RCla9DVGMbjyWtcOkLpBlxGUzO4HjhMUFzUH4gRejaMgWeKqB4rDsCJU4xxDZxCQuj1gLJJ02uTyE6L1J24rbLdYRz+KI+L2qGnkxfhgEglpaTdsxVfwD5kUR+GmwfmZ57RDxcTtC/F/qj4AY2QZNqU84bV52pvF9s0qswvzJsQMobFQbgw7x818zq/EBMpgxfZWEvqxohwIRY46SVAH+w3UBLciJmtVEJWGqN7tvAeTmX5b9ARH0U6Q6zFsOkhoeJ1v1L2EOCoIUvjeRrQeKCnYcv8SsrIq6T4pQLlj8BtCXGR9cvSNVhItU0cOzxEWGEQQhEXAwtqu1SzZunkZm2xIPnZa01mWlIYVnDsfuEGOZyamiK85k+dMo0nKB4ipHUoLZ2+cOF0STVb5fjIyHEVo78Ezy1RV3MQUjIDVnsArwGCZWsE8CKsBiR0bomC6SXCFCXzhT2ITvt1qUa2yMFpfO4CJZXJSpc1XsqH+PI9H5JjyGoEa1FZ2sM+B1DJQ4RUxRMQmlg0QlXiPacVYLvlMvgsaeuWBfSWAaktBdpnQb18D+GNEJIK0M4tWZtDM0k3U+3JF0jRcc2ylAvayVKp7F8ul0tKKuRDC+99eJU/XLNdIZNomgo1FMDij5OGuKSdO02eo3iqQghRQX7Bf8H4ZM3T+BVNvxcqpeVSpVQujcJF8AL1sgT8WinDc/5y2awnnehzaNbNy1iBKFUGeilRlcvpxGpmt7SsVCoV/6igvkNAXmQg+hQqlfJoqazVyGnzkAHdDpXKcnnZ1J69IWCsyhLS4gUIcIAm6PQK+NxSadmfYt7T0F+8CeFPXwhGIMTrAvS9hxiCzPFzPvTePFkqI1tdWkIGe6iXpstothqek4CTqaAXo5CXwW9Maa9NkD9CCKmK/C/9iuH1kUSdM7tjT4mO19JluGz28uXLcDEtloqY2HLDagco6RAEaguyun37MOLJ2KunLtRMKerZ0ke9c588jei2QSpb1U7nEQOHe29jVk8f7v2EDvMVryEZia75AVWop5/+5GM6x7JpVzTEwic6Lyqjbz1AqEVKro9VqQ5RNmoXoCGj1xDSxrADAEETotviISwUFTqUkoP3XZjqwrwOUaxa3QY1orsaUuHQIWqeSHFa62Wal79ATzk5qqsmU6pknGjQhHLs2lMlC1a88YEW0igHo6KUXAnF4aXsND5IqWWtX4dooOQ+s0ots2PCUrm1Ud6CMjOLJ/W+3slTM9uYNXk5+ikF8D+ik80T0z1lxUAidkft2tyJJRLuxzMn+zqiF7UuSrkj2rfSTFFdEX49KPFZF+rPTb3wGRoxy7sbdV/p6+iI/lob/LjbAw7Xd3i/mIyMJ5EO/uYF0L+f6vqvg3gWRnZhqaF1ABBAChMVfv5MFB537G++2Pbpc20G++CdruNbg136nP37Tnnt74CAAKS7yE6VUrgDH3fs80J0e3Sp+wt1BhvYaVfXC/+pHX7RfckRq9BkXwdB9EwYjgYp4W97SEnfyg5Zamo10v3bg5oSf/OCaqPw6LfdkVUHnv4+USCi8BAAeDH8jFYUje6IGo9GIsHg8O80uyze6dLW8RZ/NxwMRoJHbbLSFQip5274IrDRMFW0I2pcA/iCwe6gprbEZ/+towUnAEXWbLHa1xel0QAzDZeGwt+yhX0vewzISBggUOLvdYjaetmDvx/GZ21B3E8rEKEJQ1qJsqV99z0HRdMoAQioZliTD2dytZMRG21xMmpE+C1E2GMsXfceFkX3NITdfzhoRHjwD90awnsNWQlGgDAkhsO/NhX3tTQw6ioMDn9hUGLxi2H9bKQhq31GIwUQ3wuH183AW5mkHqUQUhFDixQUwob+1IQPYPky/J7RSGFxCzvC/RTC4PAfmfcqin+kVBiM9DdgZfIziMJfmlQIzLR1UbFCA6QjBhUpNIgNerAmPwOp567ZSFvqa9YYhHTEoCKFirB+wAjxNNjRsc4tbZmvSbEAgRb1UJgIdBtO1g8Y97lGakEti/pHTQj1iEFFClu+hmuk1tQihLqf6SY0/KeDhP40rJbZ8jUWRmqpxNaYqZbPdB8ZVOkFjbSir1SM9czUkZG2zEwv6UbaVYd0M71kzcuhkUZbM2xDGekRa4BHbJmpM4BAia3oRFFJd/CrQSuAg7SvsQyJ/HBfD2Ergv4lOmN71grhs3Tm9mcrXpyctD61JDdlMjYrJQ5+RevQ0kwdNkNALUhr2HDfbaVDNnOz8qZO8QEleh8v2HDfzVeiHiowQougLzg10pb09A05qUXAYK+x6gc7boZAh95HRANAfsA4Ykzd+LxedtwMWxARTVl3kGOmg8ZrLBqicbDJFnmN0Jx1cwKGSYUWDZHfR6pPfV4jvGfSodnXGPyMZUMUOEZoJDNCr53pqgkhJ2AYAQYjqzxenIzmGSOZ1Oy5MzXKDgOGEaBJhUG+qzEjhINsLJnHFD3O28yOBtBhA3Eu4boac7CAA/oMmQekol97i3CUg7D7zuGfUHT4DkeF3OSbFw4NSjT7Iq8zU5MrRWbKIuQZKdeZcsJh9EsG4F3zqKnXCP/Ms9LubyiIh7/hAOQj/JoXDlkVcurA45DPR0grkatCfgeKhzD67ZBOd3kXeIzwEotQnWKjrXSYA5A/ksFF+N3zOn3faoRCiAn4/f39q0SJz14GdPvfIR3nqdA+wo6e5/Z2Ytrb2cFcsN6xvu49QqjDyBoM+5H+1f7gmqpFuGT5AbqIC5CPkJt4R78fw/A6x/4H563R9UmQ20Q7JjvWJ0HS45GnwS9ICMKl1bV7/fdW4edq/1r/2upaP/r3zcMHD3sfhfjO1qod8jtPUYhu7w8//NA5uTK5vj45Cf7rAJ8dKyvroCS6D//IhYB+w6CJCOErEvAFibUIQBi8F0HYVvvBX2CtkbWPbx9+/PiRL5WyQsjzpdzB0ugzV/7SOdb5w96rV+72Ta58DYABjOv4v8m+lfX7PgHLEmrq7z+QX+4QRleDAGE/wBlc619dCwZX1yLgs1wuSZUUWm36My7ECG89LW+kLfqpX1L8555/r1ApLf8V6KwP4Or4OroCNbi+Ao7u4xdSfM0F6FNf6EmtrUH/cg+obnUVGmlwFTRI+HaTskxWwHIhcrM2Xt/iU7IAF74sVfbv6/h6EuKbhIa6DrQJgO7HPwnT9B+4UL/AkbZIMBKJQB9D/kzBV9DKZXX56xQHIH+0zRTQo39VlyWW8MLvv0U78OI29A86nD6TSE0mU/+wO4iBlZRKRV02GTReZDGw/zJrptHo3wiHwlX1NcCfshFDT9o8m/E2pt7DR+ZMWz0oKeNwlcUoBtsQezqey5leiL3Y+R2Tm7Zg0JsRvjv4v7t7PzaIBd+fQ0vCdIBW88DUQE30wPd793YaK2vgL3vH/k719Fsx0Z3STbC7+1n0OwFGsR7Dy9aoGUSLoTZKidGe754DkX5swvAu9y1Y+Pw/elSMrVgYFRoNYv10Dx95Cv3WQ+9hxk6V0d4n4LrHTx0ZxovbIkHrCcR9fWgs5sB3/xxDydoYs0+UUsLp29g//3EAtdO+l73//UPowS71A6m7jyB0vbt7H8z9BL3PTTaRHX3cC0vhO2igmxGJ9F+qx28/iOTRHoIPQrwoKXgnWr8i3ewkxXvHOg9E19dX7vta9SOdKV8/stDeJ096H/l8D3Z/5PcfOnz40EBp2SfoP1ZypLvf13hh2/6+A891ajR25WahACJ+qXDzyl69eO8Bzce06IdWEcJe0OIAQB/W2u7eOXg8xyJsTBAhjWVs7xj5r5MiHWGLfiwX65AcPEA2iYxW/eYeoQVRCFvzg8eaDtEJ4QENzHOELfnRaozwgerZHlMIdTV6hrAVPzyOEWplT3SEvQ/3XCbG6h3CFvx4PEb4CHuaJw8pFYKu/qMnWKkeImw+RCND7Gl2P3w4Bw5ogL14MMMHW6aXCJsN0cSOIATm+PDRHhrgw8foWuGyxzpsMkQzM4IQg6Tc5xw577mVcqVyTRxWOkIDqW+tPfTaSvlyuSMeI0uEcw/B5Y9xauM1wmZB5LKxRAgdbLJ3zutoUU82p8RnYo0QaFFNTR0gbEh8hM2AaMGiv/vIUw3JLsKev/9bQ+qxGL/YNkQrBv3a+uB61PBdBEigo9/TmCxHaLYJ0fL2fv7Ytr1RRJZsLsG0HIPaFkTrm/vtAGwNwu1ArHMrHA22QfYQqoSX0FgdWo8juoZY78ajgC79DNG9owa6h8svwe82HhPaT+hfP0X0L/XYcFhHHJcQG96mjksbhmLU7YccbzuGd+HTtivDO6fY2//KFcTGN+njh3SpvpuOwweGVHbkmMz02NuJyQXExrfo+yjREHWATvfmUne7IdxU9ja3oHMM0cYN5Sm/GSK1H9KUQzNVjZ7Ypba9j82tLh1CtHP58pZfh0j0Re+PteVslyHqVnSsbchjdwslRxBtXRzqoiYZiD+ghuSlLmcD8JUp/MsI4BNVl3Zke6dEBxBtXro0QilxGZboe5L6pZEl+w8klKrAzUDV5htaBugc7eZjG6LtC5/dUqamtqamFL+yNVLw+QpwF1pQBEg5PuJANEipUQhmGZhkBZplspLyjZZDsNz+Pko2Jbev7FTXcY1GgBLL+uHxLqf7H5UUrL9Rv3IRHH6Odwsrw62i7Etk60onDXZ0ZGRramsLIkIeT4HftkDRyIjjDazgni2KMgq31fwcHGbA3wraxk256KBB25DemdMd7eqaAv5magu7eGCtIIRIU11dznfoSqOdvhS4Iy/cvid9U/GTpMbRbj4N5XcaOFNbgyNTUqmEPU1ZKZX8UyODWy626AqFPy+hTWZL4SQ6vImPLuacydTgahfJT2VkcLBrkPiVO+Dr4HF3mxyGMrlceGgoF8bDdUImNzQUzuUyTmWqe727HD1V/lDDtPzhNrZYCyXT6aS+iZYAD5ubcO7wtlpNI0sc7QLQEkn7ALTA0k4AuWjaCyAHT7sBNCFqP4AGTO0IkEHVngApXO0KUEPWvgAJtnYGiNDt3FbZraHQ/wFPwXbNfsU4NAAAAABJRU5ErkJggg==">
				</c:otherwise>				
			</c:choose>
		</div>
		
	</div>
	<!-- 
	<div class="footer">
		<div class="footer_name">2019.Pyurumi.</div>
	</div>
 	-->
</body>
</html>