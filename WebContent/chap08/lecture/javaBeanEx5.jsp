<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="car" class="chap08.Car" />
<!-- Car라는 이름을 가진 car 어트리뷰트가 page영역에 들어가 있음 -->
<%
//car.setName("kia");
%>
<jsp:setProperty name="car" property="name" value="0.kia" /> 
<jsp:setProperty name="car" property="speed" value="90" /> 
<!-- value값은 jvm이 알아서 판단해 줌 -->

<%-- <jsp:setProperty name="car" property="stop" value="false" /> --%>
<!-- setStop property는 존재하지 않기 때문에 method를 찾지 못하고 오류가 남 -->
<!-- setProperty 액션태그에는 scope 어트리뷰트를 사용할 수 없음 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= car.getName()%>  
<br />
<%= car.getSpeed() %>
</body>
</html>