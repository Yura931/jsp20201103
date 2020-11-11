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
<title>기본 객체</title>
</head>
<body>
request(HttpServletRequest) : <%= request %> <br />  요청
response(HttpServletResponse) : <%= response %> <br />  응답
session(HttpSession) : <%= session %> <br /> 하나의 리퀘스트를 공유하는 여러 객체
out(JspWriter) : <%= out %> <br /> 출력 스트림 

pageContext(pageContext) : <%= pageContext %> <br />
application(ServletContext) : <%= application %> <br /> <!-- 클래스 이름이 일관성이 없음 -->
config(ServletConfig) : <%= config %> <br /> 거의사용 x
page(Object) : <%= page %> <br /> 거의 사용 x 페이지가 자바파일로 변경 될 때 this라는 키워드로 할당 받을 수 있음.

exception(Throwable) : <br /> <!-- exception페이지에만 있는 클래스 -->
</body>
</html>