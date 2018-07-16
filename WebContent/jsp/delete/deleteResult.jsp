<%@page import="service.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="domain.*" %>
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
	m.setPassword(request.getParameter("PASSWORD"));
	MemberServiceImpl.getInstance().deleteMember(m);
	
	%>
	
	<h3>탈퇴성공</h3>
	
	
	
</body>
</html>