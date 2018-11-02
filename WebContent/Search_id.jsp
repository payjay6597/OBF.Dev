<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
h1 {
	color: #00FFBF;
	font-size: 70px;
}

input {
	font-size: 20px;
	height: 50px;
}

td {
	height: 80px;
}

body {
	background-color: #F2F2F2;
}

#id_search {
	color: #00FFBF;
	background-color: black;
	width: inherit;
	height: inherit;
	font-size: 25px;
}
</style>
<%
	String resultId = (String) request.getAttribute("name");
%>

<meta charset="UTF-8">
<title>OBF.Dev</title>
</head>
<body>
	<div align="center">
		<h1>아이디 찾기</h1>
		<form name="form2" action="Search_id.do" method="post">
			<table>
				<tr>
					<td><input type="text" name="name" id="name"
						placeholder="이름을 입력해주세요." size="40" maxlength="20"></td>
				</tr>
				<tr>
					<td><input type="text" name="email" id="email"
						placeholder="이메일을 입력해주세요." size="40" maxlength="50"></td>
				</tr>
				<tr>
					<td width="100%" align="center"><input type="submit"
						value="아이디 찾기" id="id_search"></td>
				</tr>
				<tr>
					<td><input type="text" name="sid" id="sid"
						placeholder="찾은 아이디 = <%=resultId%>" size="40" maxlength="50"
						disabled="disabled"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>