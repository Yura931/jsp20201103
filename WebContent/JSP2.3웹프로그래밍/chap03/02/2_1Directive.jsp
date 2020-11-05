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
<title>Directive</title>
</head>
<body>
<div class="container">
<h1>2_1 Directive</h1>

<br />

<p>디렉티브(Directive)는 JSP 페이지에 대한 설정 정보를 지정할 때 사용되며, 다음과 같은 구문을 통해서 디렉티브를 선언할 수 있다.</p>
&#60;&#37; 디렉티브이름 속성1="값1" 속성2="값2"... &#37;&#62; <br />

<p>디렉티브는 &#60;&#37;으로 시작하고 그 뒤에 디렉티브 이름이 위치한다.
사용하려는 디렉티브에 따라서 알맞은 속성이 위치하며,'&#62;'로 디렉티브 선언이 끝난다.</p>
&#60;&#37; page contentType = "text/html; charset=utf-8" &#37;&#62; <br />

여기서 디렉티브 이름은 "page" 가 되고, contentType이라는 속성을 사용했으며, contentType 속성의 값은 "text/html; charset=utf-8"이 된다.

<b>표3.1 JSP가 제공하는 디렉티브</b>
<br />
<table>
	<tr>
		<td>디렉티브</td>
		<td>설명</td>
	</tr>
	<tr>
		<td>page</td>
		<td>JSP페이지에 대한 정보를 지정한다. JSP가 생성하는 문서의 타입, 출력 버퍼의 크기, 에러 페이지 등 JSP 페이지에서 필요로 하는 정보를 설정한다.</td>
	</tr>
	<tr>
		<td>taglib</td>
		<td>JSP 페이지에서 사용할 태그 라이브러리를 지정한다.</td>
	</tr>
	<tr>
		<td>include</td>
		<td>JSP 페이지의 특정 영역에 다른 문서를 포함시킨다.</td>
	</tr>
</table>

</div>
</body>
</html>