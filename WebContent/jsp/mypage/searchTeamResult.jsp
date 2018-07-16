<%@ page import="service.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "domain.*" %>
<%@ page import = "java.util.*" %>


<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>팀명으로 검색하기</title>
</head>
<body>
	<%
	List<MemberBean> list = MemberServiceImpl.getInstance().findMemberByName(request.getParameter("TEAMID"));
	%>
	<table>
		<tr>
			<th>팀명</th>
			<th>이름</th>
		</tr>
		<% for(MemberBean m : list){
			%>
		
		<tr>
			<td><%=m.getTeamId() %></td>
			<td><%=m.getName() %></td>
		</tr>
		<% }
		%>
	</table>
</body>
</html>