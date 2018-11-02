<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<link href="Main.css" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<title>OBF.Dev/Login</title>

<style type="text/css">
h2 {
	color: #FF4500;
	font-size: 70px;
}

body {
	background-color: #F2F2F2;
}

input {
	font-size: 20px;
	height: 50px;
}

td {
	height: 80px;
}

#login {
	color: #FF4500;
	background-color: black;
	width: inherit;
	height: inherit;
	font-size: 25px;
}

a {
	color: #00FFBF;
	font-size: 15px;
	text-decoration: none;
}

#jointd {
	color: #FF4500;
	background-color: black;
	width: 470px;
}
</style>
</head>

<body>
	<div align="center">
		<h2>OBF.Dev</h2>
		<form name="form1" action="Login.do" method="post">
			<table width=300>
				<tr align=center>
					<td><input type="text" NAME="userid" ID="userid" size="40"
						maxlength="20" placeholder="아이디"></td>
				</tr>
				<tr align=center>
					<td><input type="password" name="passwd" ID="passwd" size="40"
						maxlength=20 placeholder="비밀번호"></td>
				</tr>
				<tr>
					<td width="100%" align="center"><input type="submit"
						value="Login" id="login"></td>
				</tr>
				<tr>
					<td align="center" id="jointd"><a href="Join.jsp">회원가입 |</a> <a
						href="Search_id.jsp">아이디 찾기 |</a> <a href="Search_pw.jsp">비밀번호
							찾기</a></td>
				</tr>
			</table>
		</form>
		<br> <br> <br> <br> <br> <br> <br>
		<br> <br> <br> <br>
		
	</div>
	
	<!-- footer -->
	<footer class="footer">
		<h2></h2>
		<div class="footer_div">
			<p>©OBF.Dev All rights reserved</p>
			<p>developed by SungUk Park, SeungYeon Lee, JongWon Lee, JongEok
				Park</p>
		</div>
	</footer>
</body>
</html>
