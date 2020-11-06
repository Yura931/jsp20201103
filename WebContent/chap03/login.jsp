<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String id = request.getParameter("memberId");
	if (id != null && id.equals("madvirus")) {
		response.sendRedirect(request.getContextPath() + "/chap03/index.jsp"); 
		/* 절대경로 , contextPath경로는 바뀔수 있기 때문에 경로 앞에 + 연산자로 붙여준다.*/
		/* 상대경로 "index.jsp"로 사용하면 됨 */
	} else {	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>로그인에 실패</title>
</head>
<body>
잘못된 아이디입니다.
</body>
</html>
<%
	}
%>