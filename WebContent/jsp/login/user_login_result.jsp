<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="service.*" %>
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
	m.setPassword(request.getParameter("PASSWORD"));
	if(MemberServiceImpl.getInstance().login(m)){
		%><h3>로그인 성공!! </h3><%
	}else{
		%><h3>로그인 실패!! </h3><%
	}
%>
</body>
</html>