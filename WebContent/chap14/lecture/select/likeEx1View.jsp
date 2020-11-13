<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<%@ page import= "chap14.EmployeeDao" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String name = request.getParameter("name"); // request로 name을 받아서
if (name == null) { // null일 경우 기본값을 갖게 함
	name = ""; 
}
name = name.toUpperCase(); // 다 대문자로 되어있다는 가정하에 메소드 사용 가능
List<String> list = EmployeeDao.getNameLike(name); // 넘겨줌

//목록을 가져야하므로 list를 리턴으로 가지는게 좋다
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<h1>검색된 이름</h1>
<%
if (list.size() > 0) {
%>
	<ul>
	<%
	for (String n : list) {
	%>
		<li><%= n %></li>
	<%
	}	
	%>
	</ul>
<%
} else {
%>
<h2>검색된 이름 없음</h2>
<% 
}
%>
</body>
</html>