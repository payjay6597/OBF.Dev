<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alfa+Slab+One" rel="stylesheet">
    <title>obf.dev</title>

      
  </head>

  <body>
<%
	if(session.getAttribute("login")==null){

%>
  
 	<!--비로그인시 로그인 버튼과 가입 버튼 -->
    <div class="top_label">
      <span><input type="button" value="Login" align="right" class="btn btn-default" onclick="location='Login.jsp'"></span>
      <span><input type="button" value="sign up" align="right" class="btn btn-default" onclick="location='join.jsp'"></span>
    </div>
<%
	}else{
%>
	<%=session.getAttribute("login") %>님 환영합니다.
	<!--로그인 시 로그아웃 버튼과 마이페이지 버튼 -->
    <div class="top_label">
      <span><input type="button" value="Logout" align="right" class="btn btn-default" onclick="location='Logout.jsp'"></span>
      <span><input type="button" value="my_Page" align="right" class="btn btn-default" onclick="location='MyPage.jsp'"></span>
    </div>
<%
	}
%>
    <!-- 페이지 가장 상단 -->
    <header id="header_1" class="header_1" text-align="center">
      <div class="logo" style="background-color:powderblue" ><a href="Main.jsp" class="a_logo"><span>OBF.DEV</span></a> </div>
    </header>

    <!-- 네비게이션 바 -->
       <nav style="background-color:lightgreen">
        <ul id="nav-bar" class="nav-bar">
          <li class="nav-item"><a href="main_page.jsp">HOME</a></li>
          <li class="nav-item"><a href="list.do">Community</a></li>
          <li class="nav-item"><a href="Book.jsp">BOOK</a></li>
          <li class="nav-item"><a href="study_planning.jsp">Study Planning</a></li>
          <li class="nav-item"><a href="java_api.jsp">API</a></li>
          <li class="nav-item"><a href="">Q&A</a></li>
        <ul>
      </nav>

<div align="center" style="margin-top: 200px;">
	<h1>회원정보 수정 완료!</h1>
	
</div>

</body>
</html>