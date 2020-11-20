<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<%@ page import= "chap08.Car" %>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="car" class="chap08.Car">
	<jsp:setProperty name="car" property="name" value="kia" /> 
</jsp:useBean>

<jsp:useBean id="car2" class="chap08.Car">
	<jsp:setProperty name="car2" property="name" value="vlovo"/>
</jsp:useBean>

<%
Car car3 = new Car();
car3.setName("benz");
request.setAttribute("car", car3); 
/*
page영역과 같은 이름으로 request영역에 넣어놓음 
7행의 코드와 같은 이름인 car로 객체Car()를 넣어둠, request영역에 setAttribute를 한 것이기 때문에  
36행에서 표현언어를 사용하여 "car" attribute를 찾게 되면 때 제일 처음 찾는 pageContext에 저장 된 car 객체가 먼저 나온다. */
%>
<%
/*
pageContext.setAttribute("car", car);
pageContext.setAttribute("car2", car2); */ /* 이 두줄의 일을 7행과 11행에서 한 것 */
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


${car } <br /> <%-- 각 영역의 "car" attribute를 찾음 , 찾는 순서 : page, request, session, application, car라는 string의 이름을 pageContext에서부터 찾는 것--%> 

${car.name }
<br /> 
${car2.name }
<br />
${requestScope["car"].name } <!-- 어떻게 표현할것인지를 결정하는 언어이기 때문에 exception발생이 거의 일어나지 않음, null이나 없는값은 아예 표현되지 않음 -->

</body>
</html>