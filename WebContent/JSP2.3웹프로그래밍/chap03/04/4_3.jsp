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
<div class="container">
<h1>선언부</h1>
<hr />
JSP 페이지의 스크립트릿이나 표현식에서 사용할 수 있는 메서드를 작성할 때에는 선언부(declaration)를 사용한다. <br />
선언부는 다음과 같은 문법 구조를 갖는다 <br />
&#60;&#37;! <br />
	public 리턴타입 메서드이름(파라미터목록) { <br />
		자바코드1; <br />
		자바코드2; <br />
		... <br />
		자바코드n; <br />
		return 값; <br />
	} <br />
&#37;&#62; <br />

<h4>용어 : 호출(call)</h4>
<p>정의한 메서드를 호출하여 사용하는 것을 '메서를 호출(call)' 한다고 표현한다.</p>
<p>선언부에 정의한 메서드의 리턴 타입은 메서드의 결과값이 어떤 타입인지를 지정한다. 
자바에서는 모든 값을 타입으로 분류한다.</p>

메서드 이름은 메서드를 구분하기 위해서 사용도니다.
메서드 이름을 아무렇게나 작성할 수는 없으며, 정해진 규칙에 따라 메서드 이름을 지어야 한다.
<br />
<h4>규칙</h4>
<ul>
	<li>메서드 이름의 첫 글자는 문자(알파벳, 한글 등) 또는 밑즐('_')로 시작해야 한다.</li>
	<li>첫 글자를 제외한 나머지는 문자와 숫자 그리고 밑줄의 조합이어야 한다.</li>
	<li>메서드 이름은 대소문자를 구분한다.</li>
</ul>

파라미터는 메서드 내부에서 변수로 사용된다. 메서드를 호출할 때에 전달하는 값이 파라미터에 전달된다.
메서드를 호출할 때 지정한 값의 순서에 따라 메서드의 선언 부분에 나열한 파라미터의 값이 결정된다.
<br />

표현식뿐만 아니라 스크립트릿에서도 선언부에서 정의한 메서드를 사용할 수 있다.


</div>
</body>
</html>