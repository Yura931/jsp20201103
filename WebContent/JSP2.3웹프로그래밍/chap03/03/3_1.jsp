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
<title>contentType 속성과 캐릭터 셋</title>
</head>
<body>
<div class="container">
<h1>Type 속성과 캐릭터 셋</h1>
<hr />
page 디렉티브의 contentType 속성은 JSP 페이지가 생성할 문서의 타입을 지정한다.
contentType 속성의 값은 다음과 같이 구성된다.
<br />
TYPE
<br />
또는 
<br />
TYPE; charset = 캐릭터 셋
<br />
contentType은 JSP가 생성할 문서의 MIME 타입을 입력한다.
JSP에서 주로 사용하는 MIME 타입은 "text/html"이고 필요에 따라 "text/xml", "application/json" 등의 MIME 타입을 사용하기도 한다.

contentType 속성을 설정하지 않을 경우 기본값은 "text/html"이다.

<h4>용어 MIME</h4>
MIME은 Multipurpose Internet Mail Extensions의 약자로서 이메일의 내용을 설명하기 위해 정의되었다 <br />
하지만, 메일뿐만 아니라 HTTP 등의 프로토콜에서도 응답 데이터의 내용을 설명하기 위해서 MIME을 사용하고 있다. <br />
MIME에 대한 보다 자세한 내용은 <a href="http://en.wikipedia.org/wiki/MIME">http://en.wikipedia.org/wiki/MIME</a> 사이트에 확인할 수 있으며, <br />
등록된 MIME 타입의 목록은 <a href="http://www.iana.org/assignments/mediatypes/index.html">http://www.iana.org/assignments/mediatypes/index.html</a> 에서 확인할 수 있다. <br />

contentType 속성의 값 중에서 "; charset = 캐릭터 셋" 부분은 생략할 수 있다. <br />
캐릭터 셋 부분을 생략할 경우 기본 캐릭터 셋인 ISO-8859-1을 사용하게 된다. <br />
국내에서는 주로 한글을 포함하는 HTML 문서를 만들어야 하기 떄문에, 영어와 서유럽어의 문자만 포함하고 있는 ISO-8859-1로는 한글을 제대로 표현할 수 없다. <br />
한글을 표현하려면 EUC-KR이나 UTF-8과 같이 한국어를 포함하고 있는 캐릭터 셋을 사용해야 한다. <br />
캐릭터 셋을 입력할 때에는 대소문자를 구분하지 않으므로 취향에 따라 대문자나 소문자를 이용해서 입력하면 된다. <br />

</div>
</body>
</html>