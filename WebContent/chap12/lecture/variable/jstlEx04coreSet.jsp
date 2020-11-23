<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<h1>자바 코드와 같은 결과 출력하기</h1>
<%
pageContext.setAttribute("myvar1", "my value1");
String myVal3 = "hello"; 
%>

<h3>value를 넣는 방법</h3>
<c:set var="myvar2" value="my value2"></c:set> <!-- 값은 리터럴 한 문자열 이나, -->
<c:set var="myvar3" value="<%= myVal3 %>"></c:set> <!-- expression일 수도 있고, -->
<c:set var="myvar4" value="${myvar2 }"></c:set> <!-- el일 수도 있음 -->
<c:set var="myvar5">
	<h1>hello World!!!!!</h1>
</c:set>
<!-- 태그의 몸통이 값이 될 수도 있음 -->
<!-- var 어트리뷰트에 페이지영역에들어갈 변수 명, 값을 value어트리뷰트에 넣어주면 됨 ,
어떤 어트리뷰트 이름으로 어떤 값을 넣고 싶을 때 사용하는 set-->
<!-- 기본 값은 pageContext영역에 들어가게 되어있음 -->
<hr />

${myvar1 } <br />
${myvar2 } <br />
${myvar3 } <br />
${myvar4 } <br />
${myvar5 } <br />
</body>
</html>