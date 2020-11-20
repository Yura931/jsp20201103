<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%--
pageContext Map이아닌 어떤타입의 객체 -> pageContext타입을 가지고 있음 / pageContext타입의 pageContext 객체인 것이다.

-4개의 Scope Map 객체-
Attribute를 Map으로 가지고 있다.
pageScope : Map
reaquestScope : Map
sessionScope : Map
applicationScope : Map

param : Map
paramValues : Map
header : Map
headerValues : Map
cookie : Map
initParam : Map

11개에 해당되지 않을 경우에만 표현언어로 사용했을 때 영역순으로 그 객체를 찾음
pageContext 빼고는 다 map
 --%>
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
<!-- Attribute에 넣은 적 없지만 jsp에서 기본으로 제공해주는 객체이기 때문에 사용할 수 있음 -->
${pageContext } <br /> <!-- bean은 아니지만 bean처럼 get~~()로 프로퍼티가 결정 됨, ex) getErrorData() -> errorData프로퍼티가 있는 것, .연산자를 사용해 결과를 출력할 수 있다. --> 
${pageScope } <br />
${requestScope } <br />
${sessionScope } <br />
${applicationScope } <br />
${param } <br />
${header } <br />
${headerValues } <br />
${cookie } <br />
${initParam } <br />
</body>
</html>