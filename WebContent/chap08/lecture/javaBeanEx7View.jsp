<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id = "car" class="chap08.Car" />
<%
/*
car.setName(request.getParameter("carName"));
car.setSpeed(Integer.valueOf(request.getParameter("carSpeed")));
*/
%>
<jsp:setProperty name="car" property="name" param="carName" /> <!-- request parameter로부터 얻어오고 싶기 때문에 value에 직접 값을 입력하지 않고 param어트리뷰트를 사용해 파라미터 명을 넣어준다. value와 param 둘 중 하나만 사용해야 함-->
<jsp:setProperty name="car" property="speed" param="carSpeed" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:getProperty property="name" name="car" /> <br />
<jsp:getProperty property="speed" name="car" />
</body>
</html>