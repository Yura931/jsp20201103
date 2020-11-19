<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.sql.*" %>
<%@ page import= "java.util.* %>
<%@ page import= "chap08.MemberInfo" %>
<%  request.setCharacterEncoding("utf-8");%>
<%
	String sql = "SELECT id, password, name, registerDate, email FROM...";
 ResultSet rs = null;
 
 MemberInfo m = new MemberInfo();
 if (rs.next()) {
	 int col = 1;
	 m.setId(rs.getString(col++));
	 m.setPassword(rs.getString(col++));
 }
 
 //객체를 사용하기위해 일어나는 일들
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
<%-- 현재 페이지 --%>
id : <%= m.getId() %> <br />
pw : <%= m.getPassword() %> <br />

<%-- 같은 request 영역의 다른 페이지에서 쓰도록 --%>
<%
request.setAttribute("memeber", m);
%>
<jsp:forward page="otherPage.jsp"></jsp:forward>

<%-- 같은 session 사용 다른 페이지에서 쓰도록 --%>
<%
session.setAttribute("member", m); // m 인스턴스 사용 가능
%>

<!-- 객체를 만들어서, 영역 어트리뷰트에 붙여 사용 -->

</body>
</html>




