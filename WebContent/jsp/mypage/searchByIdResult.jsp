<%@page import="service.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="domain.*" %>

<%
// 	String id = request.getParameter("USERID");
	MemberBean m = MemberServiceImpl.getInstance().findMemberById(request.getParameter("USERID"));
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
	<table>
		<tr>
			<th>아이디</th>
			<th>팀 아이디</th>
			<th>이름</th>
			<th>생년월일</th>
			<th>직책</th>
			<th>비밀번호</th>
		</tr>
		<tr>
			<td><%=m.getUserId() %></td>
			<td><%=m.getTeamId() %></td>
			<td><%=m.getName() %></td>
			<td><%=m.getSsn() %></td>
			<td><%=m.getRoll() %></td>
			<td><%=m.getPassword() %></td>
		</tr>
	</table>
	
</body>
</html>