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
<h3>산술 연산자</h3>
${4 + 5 } <br />
${3 - 7 } <br />
${9 * 9 } <br />
${15 / 2 } <br />
${15 div 2 } <br /> <!-- 표현문법으로 프로그래머 연산자를 키워드로 사용 가능 -->
${31 % 3 } <br />
${31 mod 3 } <br />

<hr></hr>

${"10" + 5 } <br /> <!-- 자바에서는 문자열과 숫자 + 연산시 연결연산자가 되었지만, el문법은 숫자로 변경 될 수있는 문자는 자동변환되어 연산된다. -->
<!-- ${"ten" + 5 }수로 연산될 수 없는 것 사용 시 exception이 발생하거나 null이거나 -->
${abc + 5 } <br /> <!-- abc는 값이 없어서 0으로 계산 됨 -->
</body>
</html>