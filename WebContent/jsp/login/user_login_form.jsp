<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>USER LOGIN</title>
<link rel="stylesheet" href="../../css/style.css" />
</head>

<body id = background>
<div id = "user-login-layout">
<h1>로그인</h1>
<form id = "user-login-layout" action="user_login_result.jsp" style = "border:1px solid black">
	ID : <br />
	<input type="text" name="USERID"  />
	<br />
	PASSWORD:
	<input type="text" name="PASSWORD" />
	<br />
	<input type="submit" value = "전송 "/>
</form>
</div>
</body>
</html>