<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
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
동일한 객체
<%= pageContext %> <br />  <!-- pageContext에 attribute를 하거나, 8개의 기본객체를 꺼내거나 할 때 사용함, 표현식으로 나타낸 자바코드를 표현언어로 같은 결과를 가져오는 식을 만들 수 있다. -->

8개의 기본객체를 pageContext를 통해 얻을 수 있었음

<!-- 
pageContext의 getRequest메소드를 사용
자바빈에서 get~~프로퍼티 사용시 get을 제외한 이름을 사용한 것처럼 사용이 가능하다. 
-->
<hr />
<h4>표현언어로 기본객체 뽑아보기</h4>
${pageContext.request } <br />
${pageContext.session } <br />
${pageContext.servletConfig } <br />
${pageContext.servletContext } <!-- application의 다른 이름 -->
${pageContext.response }

<hr />

<%= request.getContextPath() %> <br />
${pageContext.request  } request는 el에서 제공하는 기본객체가 아니기 때문에 pageContext로부터 꺼내야 함 <br />
${request.contextPath } <br />
${pageContext.request.cookies[0].name } request에 있는 cookies메소드 <br />
${pageContext.request.cookies[0].value } <br />
<!-- 타입(Class PageContext)
pageContext는 pageContext 타입
pageContext의 메소드 사용이 가능하다.

get~~ 메소드를 자바빈 인 것 처럼 사용이 가능하다. -->



</body>
</html>