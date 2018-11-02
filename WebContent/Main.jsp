<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="kor" dir="ltr">
<head>
<link href="boot/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lobster"
	rel="stylesheet">
<link href="Main.css" rel="stylesheet" type="text/css">
<meta charset="utf-8">
<title>OBF.Dev</title>

<style>
/* 바디 */
body {
	background-color: #F2F2F2;
}
</style>
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

	<section id="banner" data-video="images/banner">
		<div class="inner">
			<h1>Of the developer. By the developer. For the developer</h1>
			<p id="blog">
				This is created for Developer<br />
				<!--링크를 팝업 창으로 바꾸다-->
				Created by Bit 6th' <a href="http://shrtorznzl.tistory.com/">SungUk
					Park, </a> <a href="http://winkitee.tistory.com/">SeungYeon Lee, </a><a
					href="http://payjay.tistory.com/">JongWon Lee and </a><a
					href="http://coalnam.tistory.com/">JongEok Park</a>
			</p>
			<a id="getstarted" href="#section_1" class="button special scrolly">Get
				Started</a>
		</div>
	</section>

	<!-- section_1 -->
	<section class="section_1" id="section_1">
		<div class="box">
			<div class="image fit">
				<img src="images/pic_1.jpg" alt="" />
			</div>
			<div class="content">
				<header class="align-center">
					<h2>" What is this? "</h2>
					<p>this app provides the fastest way you can be powerful
						developer</p>
				</header>
				<hr style="border: solid 0.5px black;">
				<p>This Web App is developed for person who want to be developer
					like you!</p>
			</div>
			<div id="blockquote_1">
				<p id="blockquote_p">What you can do</p>
				</br>
				<blockquote>
					<BIG><BIG>First.</BIG></BIG> You can make a plan in [Study
					Planning] menu. You can always see the schedule you planned on your
					computer.</BR> <BIG><BIG>Second.</BIG></BIG> You can ask questions and
					get feedback on you knowledge through bulletin boards or chat.</br> <BIG><BIG>Third.</BIG></BIG>
					Many people will help you study in a variety ways like recommending
					books, answer your questions.
				</blockquote>
			</div>
		</div>
	</section>

	<!-- section_2 -->
	<section class="section_2"
		style="background-image: url(images/pic01.jpg);">
		<div class="inner">
			<div id="flexgrid">
				<div>
					<header>
						<h3>Recent Post</h3>
					</header>
					<p>
						1. 프로그래밍 공부하려고 하는데 처음에 어떤 언어가 좋을까요? </br> 2. Web관련 3주 프로젝트로 뭐할지 고민인데
						아이디어 좀...
					</p>
					<a href="List.jsp" class="button alt">More</a>
				</div>

				<div>
					<header>
						<h3>Recent Recommended Book</h3>
					</header>
					<p>
						1. 이것이 자바다(신용권) - Basic and Bible</br> 2. efective Java - Advenced
						level
					</p>
					<a href="Book.jsp" class="button alt">More</a>
				</div>

				<div>
					<header>
						<h3>Recent Notice</h3>
					</header>
					<p>
						new. 저희 사이트를 많이 이용해 주세요~<br> new. 저희 사이트를 많이 이용해 주세요~
					</p>
					<a href="Study_planning.jsp" class="button alt">More</a>
				</div>
			</div>
		</div>
	</section>

	<!-- footer -->
	<footer class="footer">
		<h2></h2>
		<div class="footer_div">
			<p>©OBF.Dev All rights reserved</p>
			<p>developed by SungUk Park, SeungYeon Lee, JongWon Lee, JongEok
				Park</p>
		</div>
	</footer>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
</body>


</html>