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
<title>표준 액션 태그와 태그 라이브러리</title>
</head>
<body>
<div class="container">
<h1>표준 액션 태그와 태그 라이브러리</h1>
<hr />
액션 태그는 JSP 페이지에서 특별한 기능을 제공한다.
예를 들어, 다음코드에서 사용한 ㅡjsp:include>가 액션 태그인데, 이 액션 태그는 특정한 페이지의 실행 결과를 현재 위치에 포함시킬 때 사용된다.
&#60;jsp:include page = "hedaer.jsp" flush="true"&#62;

액션 태그는 &#60;jsp:액션태그이름&#62; 의 형태를 ㄸ며 액션 태그 종류에 따라서 서로 다른 속성과 값을 갖는다.

커스텀 태그는 JSP를 확장시켜주는 기능으로서, 액션 태그와 마찬가지로 태그 형태로 기능을 제공한다.
액션 태그와 차이점이 있다면 커스텀 태그는 개발자가 직접 개발해주어야 한다는 것이다.
일반적으로 JSP 코드에서 중복되는 것을 모듈화하거나 스크립트 코드를 사용할 때 발새하는 소스 코드의 복잡함을 없애기 위해 커스텀 태그를 사용한다.

커스텀 태그 중에서 자주 사용하는 것들을 별도로 표준화한 태그 라이브러리가 있는데 이것이 바로 JSTL(JavaServer Pages Standard Tag Library) 이다.
JSTL은 if-else 조건문 그리고 for 구문과 같은 반복 처리를 커스텀 태그를 이용해서 구현할 수 있도록 해 준다.
또한, 커스텀 태그는 스크립트 코드보다 이해하기 쉽기 때문에 자바 언어에 익숙하지 않더라도 JSTL을 이용해서 어느 정도 논리적인 처리를 수행할 수 있다.
</div>
</body>
</html>