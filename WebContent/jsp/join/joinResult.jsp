<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = domain.* %>
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
	m.setSsn(request.getParameter("SSN"));
	m.setName(request.getParameter("NAME"));
	%>
	이름<%=m.getName() %>
</body>
</html>