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
<title>HTML 문서를 생성하는 전형적인 JSP 코드</title>
</head>
<body>
<div class="container">
<%
	String bookTitle = "JSP 프로그래밍";
	String author = "최범균";
%>
<b><%= bookTitle %></b> (<%= author %>) 입니다.
<br />

<!-- 01-04행  설정 부분 : JSP 페이지에 대한 설정 정보  -->
<!-- 06-29행  생성 부분 : HTML 코드 및 JSP 스크립트-->

<div>일반적인 JSP 코드는[list3_1]과 같이 JSP 페이지에 대한 정보를 입력하는 설정 부분과 HTML 문서를 생성부분으로 나눌 수 있다.</div>
<div>JSP의 설정 부분에는 JSP 페이지에 대한 정보가 위치하며, 다음과 같은 정보를 입력한다.</div>

<br />

<ul>
	<li>JSP 페이지가 생성하는 문서의 타입(종류)</li>
	<li>JSP 페이지에서 사용할 커스텀 태그</li>
	<li>JSP 페이지에서 사용할 자바 클래스 지정</li>	
</ul>

<div>
이 세 가지 이외에도 많은 설정 정보를 입력할 수 있다. <br />
&#60;&#37;&#64; page contentType = "text/html"; charset=utf-8"&#37;&#62; 코드는 JSP 페이지가 생성할 문서가 HTML이며<br />
문서의 캐릭터 셋(character set)이 UTF-8인 것을 나타낸다.
</div>

<br />

<h3>용어 : 캐릭터 셋</h3>
<div>
캐릭터 셋(character set; 무낮 집합)과 캐릭터 인코딩에 대한 내용은 다음 사이트에 잘 정의되어 있다.
<ol>
	<li>한글 인코딩의 이해 1 편 : 한글 인코딩의 역사와 유니코드
		<a href="http://helloworld.naver.com/helloworld/19187">go</a>
	</li>
	<li>한글 인코딩의 이해 2편 : 유니코드와 Java를 이용한 한글 처리
		<a href="http://helloworld.naver.com/helloworld/76650">go</a>
	</li>
</ol>
&#60;&#37;&#64; page... &#37;&#62;를 page를 directive라고 하는데, JSP 페이지에 대한 정보를 설정할 때 page directive를 사용한다. <br />
page directive를 사용하면 JSP 페이지가 생성할 문서의 타입뿐만 아니라 다양한 정보를 지정할 수 있는데,<br />
page directive에 대한 자세한 내용은 뒤에서 살펴볼 것이다.

<br /><br />

JSP 페이지의 생성 부분에는 생성할 문서의 데이터와 문서를 생성하는데 필요한 스크립트 코드와 같은 것들이 위치한다. <br />
예를 들어, [list3_1]은 흔히 볼 수 있는 HTML 태그와 &#60;&#37;..&#37;&#62;형태의 스크립트 코드가 섞여 있다. <br />
스크립트 코드는 HTML 문서를 생성하는 데 필요한 데이터를 생성하고 출력하는 데 사용된다.
</div>
</div>

</body>
</html>





















