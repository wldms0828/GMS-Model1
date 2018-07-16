<%@page import="service.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "domain.*" %>
<%@ page import = "java.util.* "%>

<% 
	List<MemberBean> list = MemberServiceImpl
	.getInstance()
	.listMember();
%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
	<style>
	.tbl{boarder: 1px solid black}
	</style>
</head>
<body>
		<table class = "tbl">
	<tr>
			<th>이름</th>
			<th>아이디</th>
			<th>팀아이디</th>
			<th>역할</th>
			
		</tr><%
	for(MemberBean m : list){
	%>
		
		<tr>
			<td><%=m.getName() %></td>
			<td><%=m.getUserId() %></td>
			<td><%=m.getTeamId() %></td>
			<td><%=m.getRoll() %></td>
					
		</tr>
	
		<% 
	}
		
%>
</table>

</body>
</html>
