<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

Object o = request.getAttribute("member");
System.out.println("fw:" +o); // forward 당한 쪽 ,

%>
<jsp:useBean id= "member" class="chap08.MemberInfo" scope="request" /> request에 넣을 때 작성된 코드와 똑같음 , 넣는 것은 똑같지만 조건이 있음, request에 member라는 어트리뷰트가 있으면 새로 만들지 않고 꺼내 옴 , Ex4번 파일 코드는 없었기 때문에 만든것이고, Ex4Forward는 이미 있기 때문에 꺼내 사용 한 것

<%
/*
chap08.MemberInfo member
     =(chap08.MemberInfo) request.getAttribute("member");
*/
%>
<%
System.out.println("fw:" + member);
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