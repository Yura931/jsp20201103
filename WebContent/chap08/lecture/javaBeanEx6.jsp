<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="car" class="chap08.Car" /> <!-- page에 attribute로 (자동)넣어놓음  -->
<jsp:setProperty name="car" property="speed" value="100" /> 
  <!--property의 name = bean의 id 값 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= car.getSpeed() %> <br />
<jsp:getProperty property="speed" name="car" />
<%-- name 어트리뷰트에 Bean의 아이디 값 --%>
<br />
<jsp:getProperty property="stop" name="car" /> 
<!-- 읽기전용 프로퍼티인 stop -->
</body>
</html>