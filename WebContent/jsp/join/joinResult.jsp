<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "domain.*" %>
<%@ page import = "service.*" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>

	<%
	MemberBean m = new MemberBean();
	m.setName(request.getParameter("NAME"));
	m.setSsn(request.getParameter("SSN"));
	m.setUserId(request.getParameter("USERID"));
	m.setPassword(request.getParameter("PASSWORD"));
	MemberServiceImpl.getInstance().createMember(m);
	%>
	
	<h3>회원가입성공</h3>
	<a href="../login/user_login_form.jsp"><input type="submit" value = "로그인" /></a>
	
</body>
</html>