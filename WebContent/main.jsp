<%@page import="service.MemberServiceImpl"%>
<%@page import="enums.MemberQuery"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.text.SimpleDateFormat"  %>
<%@ page import = "java.util.Date"  %>
<%! int count = MemberServiceImpl.getInstance().countMember() ; %>
  
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>MAIN</title>
	<link rel="stylesheet" href="css/style.css" />
	
</head>
<body id = "background">
	<%=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date())  %>
	<h3>현재 회원 수 <%=count %> 명</h3>
	<table class = "width-full height-full margin-auto ">
		<tr>
			<th colspan="2">GMS</th>
		
		</tr>
		<tr>
			<td>
			<a href="">
		<img src="img/home/login.png" alt="" />
		</a><br />
			</td>
			
			<td class = "width-30 "> 
			<ul>
				<li><a href="jsp/join/joinForm.jsp">회원가입</a></li>
				<li><a href="jsp/login/user_login_form.jsp">사용자로그인</a></li>
				<li><a href="jsp/login/admin_login.jsp">관리자로그인</a></li>
				<li><a href="jsp/update/updateForm.jsp">비밀번호 변경</a></li>
				<li><a href="jsp/delete/deleteForm.jsp">회원탈퇴</a></li>
				<li><a href="jsp/mypage/memberList.jsp">멤버전체목록</a></li>
				<li><a href="jsp/mypage/searchTeamForm.jsp">팀명으로 검색하기</a></li>
				<li><a href="jsp/mypage/searchByIdForm.jsp">ID로 검색하기</a></li>
			</ul> </td>
		</tr>
		<tr>
			<td colspan = "2">주소</td>
	
		</tr>
	</table>
</body>
</html>

