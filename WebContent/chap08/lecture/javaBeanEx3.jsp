<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "chap08.MemberInfo" %>
<%
	// MemberInfo m = new MemberInfo(); -> 기존에 객체를 만들던 방식
	//pageContext.setAttribute("mamber", member);
%>
<jsp:useBean id="member" class="chap08.MemberInfo" scope="page"></jsp:useBean>  <!-- id= 변수명 , class= javabean을 사용하고있는 클래스 --> 클래스를 이용해 객체를 만든것과 같은 효과를 가짐

<%
Object o = pageContext.getAttribute("member");
System.out.println(o);
System.out.println(member);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>