<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="Main.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

<style>
.nav-bar {
	display: flex;
	flex-direction: row;
	width: 100%;
	margin: 0;
	padding: 0;
	background-color: darkslategrey;
	list-style-type: none;
}

.nav-item {
	padding: 15px;
	cursor: pointer;
}

.nav-item a {
	text-align: center;
	text-decoration: none;
	color: white;
}

.logo {
	padding: 105px 25px;
}

.header_1 div {
	height: 30px;
}

.a_logo {
	text-decoration: none;
	padding: 15px 25px;
	font-family:;
	font-weight: bolder;
	font-size: 50px;
	color: black;
}
</style>

</head>
<body>

	<!--페이지 최상단 -->
	<header id="header" text-align="center">

		<div class="logo" >
			<a href="Main.jsp"><span>OBF.Dev</span></a>
		</div>
		<a href="#menu" class="me"><span>Menu</span></a>
	</header>


	<!-- 네비게이션 바 -->
	<nav id="menu">
		<ul class="nav-bar">
			<li><a href="Main.jsp">HOME</a></li>
			<li><a href="List.do">Community</a></li>
			<!--.jsp로 할 경우 java로 넘어가지 않음  -->
			<li><a href="Book.jsp">BOOK</a></li>
			<li><a href="Study_planning.jsp">Study Planning</a></li>
			<li><a href="Java_api.jsp">API</a></li>
			<li><a href="QA.jsp">Q&A</a></li>
		</ul>
	</nav>

	<!-- 페이지 섹션 -->
	<section id="section_1" style="background-color:orange">
	<div class="inner">
		<h1>Community</h1>

	</div>
	</section>

	<c:set var="bName" value="${content_view.bName}"></c:set>
	<%
		String bName = (String) pageContext.getAttribute("bName");
		out.print(bName);
		if (session.getAttribute("login").equals(bName)) {
	%>
	<form action="Modify.do" method="post">
		<table width="1300" cellpadding="0" cellspacing="0" border="1"
			align="center">

			<input type="hidden" name="bId" value="${View_content.bId}">

			<tr>
				<td align="center">게시물번호</td>
				<td>${View_content.bId}</td>
			</tr>


			<tr>
				<td align="center">조회수</td>
				<td>${View_content.bHit}</td>
			</tr>


			<tr>
				<td align="center">이름</td>
				<td>${View_content.bName}</td>
			</tr>


			<tr>
				<td align="center">제목</td>
				<td><input type="text" name="bTitle"
					value="${View_content.bTitle}" style="width: 1225px;"></td>
			</tr>


			<tr>
				<td align="center">내용</td>
				<td><textarea rows="20" name="bContent" style="width: 1225px;">${View_content.bContent} </textarea></td>
			</tr>


		</table>

		<div align="center">
			<input type="submit" value="수정"> &nbsp;&nbsp;
			<button type="button" onclick="location.href='List.do' ">목록으로</button>
			&nbsp;&nbsp;
			<button type="button"
				onclick="location.href='Delete.do?bId=${View_content.bId}' ">삭제</button>
			&nbsp;&nbsp;
			<button type="button"
				onclick="location.href='View_replay.do?bId=${View_content.bId}' ">답변</button>
			&nbsp;&nbsp;
		</div>
		<%
			} else {
		%>
		<table width="1300" cellpadding="0" cellspacing="0" border="1"
			align="center">

			<input type="hidden" name="bId" value="${View_content.bId}">

			<tr>
				<td align="center">게시물번호</td>
				<td>${View_content.bId}</td>
			</tr>


			<tr>
				<td align="center">조회수</td>
				<td>${View_content.bHit}</td>
			</tr>


			<tr>
				<td align="center">이름</td>
				<td>${View_content.bName}</td>
			</tr>


			<tr>
				<td align="center">제목</td>
				<td>${View_content.bTitle}</td>
			</tr>


			<tr>
				<td align="center">내용</td>
				<td>${View_content.bContent}</td>
			</tr>

		</table>

		<div align="center">
			<button type="button" onclick="location.href='List.do' ">목록으로</button>
			&nbsp;&nbsp;
			<button type="button"
				onclick="location.href='View_replay.do?bId=${View_content.bId}' ">답변</button>
			&nbsp;&nbsp;
		</div>
		<%
			}
		%>
	</form>

</body>
</html>