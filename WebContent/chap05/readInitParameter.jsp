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
<title>초기화 파라미터 읽어오기</title>
</head>
<body>

초기화 파라미터 목록:
<ul>
<%
	Enumeration<String> initParamEnum = application.getInitParameterNames();
	while (initParamEnum.hasMoreElements()) {
		String initParamName = initParamEnum.nextElement();
%>
<li><%= initParamName %> =
	<%= application.getInitParameter(initParamName) %> <!-- getInitParameter = 웹 어플리케이션의 초기화 값 , 처음 로딩 될 때 필요한 정보를 읽는 값 - 설정파일 같은 .. , web.xml - 설정파일에 넣어주면 읽어내 줌, xml을 재설정하면 항상 톰캣 재시작 해 주어야 함 --> 
<%
	}
%>
</li>
</ul>

</body>
</html>