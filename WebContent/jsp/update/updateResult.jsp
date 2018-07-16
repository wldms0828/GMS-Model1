<%@page import="service.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "domain.*" %>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
	<%
	MemberBean m = new MemberBean();
	m.setUserId(request.getParameter("USERID"));
	m.setPassword(String.format("%s/%s", 
			request.getParameter("PASSWORD"),
			request.getParameter("NEWPASSWORD")) );
	MemberServiceImpl.getInstance().updateMember(m);
	%>
	<h3>비밀번호 변경 성공</h3>
</body>
</html>