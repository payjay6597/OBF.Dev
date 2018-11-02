<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="Main.css" rel="stylesheet" type="text/css">
<title>OBF.Dev</title>


</head>
<body>
<!--페이지 최상단 -->
	<header id="header" text-align="center" class="alt">
		<div class="logo">
			<a href="Main.jsp" ><span>OBF.Dev</span></a>
		</div>
		<div class="loginout">
			<%
				if (session.getAttribute("login") == null) {
			%>
			<!--비로그인시 로그인 버튼과 가입 버튼 -->
			<div class="top_label" id="top_label">
				<span><input type="button" value="Login" align="right"
					class="btn btn-default" onclick="location='Login.jsp'"></span> <span><input
					type="button" value="sign up" align="right" class="btn btn-default"
					onclick="location='Join.jsp'"></span>
			</div>
			<%
				} else {
			%>
			<%=session.getAttribute("login")%>님 환영합니다.

			<!--로그인 시 로그아웃 버튼과 마이페이지 버튼 -->
			<div class="top_label">
				<span><input type="button" value="Logout" align="right"
					class="btn btn-default" onclick="location='Logout.jsp'"></span> <span><input
					type="button" value="Mypage" align="right" class="btn btn-default"
					onclick="location='MyPage.jsp'"></span>
			</div>
			<%
				}
			%>
		</div>

		<a href="#menu" class="me"><span>Menu</span></a>
	</header>

	<!-- 네비게이션 바 -->
	<nav id="menu">
		<ul class="nav-bar">

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
		<h1>Community - Create new post</h1>

	</div>
	</section>


	<form action="Write.do" method="post">

		<table width="1300" cellpadding="0" cellspacing="0" border="1"
			align="center">


			<tr>
				<td align="center">작성자</td>
				<td><input type="text" name="bName" size="50"
					style="width: 1225px;" value="<%=session.getAttribute("login")%>">
				</td>
			</tr>

			<tr>
				<td align="center">제목</td>
				<td><input type="text" name="bTitle" size="50"
					style="width: 1225px;"></td>
			</tr>

			<tr>
				<td align="center">내용</td>
				<td><textarea name="bContent" rows="20" style="width: 1225px;"></textarea>
				</td>
			</tr>




		</table>

		<div align="center">
			<input type="submit" value="작성 완료"> &nbsp;&nbsp;
			<button type="button" onclick="location.href='List.do'">목록으로</button>
		</div>

	</form>




</body>
</html>