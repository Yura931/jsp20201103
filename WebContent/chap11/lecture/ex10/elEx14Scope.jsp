<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%--
각 영역의 attribute를 <name, object> 쌍으로 가지고 있는 map
pageScope
requestScope
sessionScope
applicationScope
 --%>
 
 <%
 pageContext.setAttribute("myAttr1", "my Value1!!!!" );
 pageContext.setAttribute("my attr1", "my value");
 
 request.setAttribute("myAttr1" , "my request Value1!!!"); // pageContext와 request에 같은 이름으로 값을 넣게 됨
 request.setAttribute("myAttr2", "my Value2!!!!"); 
 %>
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
14행을 el로 꺼내 읽으려면
14행의 key 문자열 안에 띄어쓰기가 있어 유효하는 el 명 형식이 아니다.
그럴 때 map객체인 pageScope를 사용해서 명을 넣어준다.
${pageScope["my attr1"] } <br /> 


${myAttr1 } <br /> -> page영역에서 찾기 때문에 pageContext영역인 14행의 value 값인 "my value1!!!!" 값을 출력하게 된다.


${myAttr2 } 17행 코드의 attribute를 page영역붙어 찾아 읽어 줌 , 유효하는 el 명 형식이기 때문에 기본 형식으로 값을 읽는것이 가능하다.

request에 있는 myAttr1의 값을 꺼내고 싶다면
${requestScope.myAttri } <br />  map객체 명.객체 <- 이러한 형식으로 꺼내어주면 된다.

</body>
</html>