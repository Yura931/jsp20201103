<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="myCar" class="chap08.Car"> <!-- 기본 scope에 생성 -->
	<jsp:setProperty name="myCar" property="name" value="kia" />
</jsp:useBean>
<%
Map<String, String> map = new HashMap<>();
map.put("myKey1", "my value1");
pageContext.setAttribute("myMap", map);
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
${myCar.name } <br />
<c:set target="${myCar }" property="name" value="새로 뽑은 차"/> <!-- target이라는 어트리뷰트로 변경해야하는 변수 el로 작성, 빈의 프로퍼티명, 맵일 경우 key -->
${myCar.name } <br />


${myMap.myKey1 } <br />
<c:set target="${myMap }" property="myKey1" value="변경된 값" />
${myMap.myKey1 } <br />

<c:set target="${myMap }" property="myKey2" value="추가된 값" /> <!-- Bean은 method가 정해져 있기때문에 property 새로 추가 불가, set은 map이기 때문에 property 추가시 값도 함께 추가 됨 -->
${myMap.myKey2 } <br />
</body>
</html>