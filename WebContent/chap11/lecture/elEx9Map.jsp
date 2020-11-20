<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
Map<String, String> map = new HashMap<>();
map.put("a", "java");  // 맵의 키 이름이 메소드,프로퍼티명으로 쓸 수없는 이름을 사용했을 경우 -> .연산자를 사용할 수 없다.
map.put("b", "html");  // 맵의 키 "값" 을 프로퍼티라 생각하면 됨 표현식으로 ${map이름.키 } -> 키에 해당하는 value 출력
map.put("c", "css");
map.put("3", "servlet");
map.put("class", "spring");
map.put("my key", "my value");
request.setAttribute("mymap", map);

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
${mymap } 
<hr />
${mymap.a } <br /> <!-- Bean의 프로퍼티를 사용하는것과 비슷 -->
${mymap.b } <br />
${mymap.c } <br />
${mymap["3"] } <br />
${mymap["class"] } <br />
${mymap["my key"] } <br /> <%-- []안 문자열 "",와 '' 둘 다 사용 가능하다 --%>
<hr />
${mymap["a"] }
<%-- ${mymap[b] } -> 이렇게 사용하면 map의 key가 아닌 b라는 어트리뷰트를 page영역부터 찾게 되므로 map의 키를 찾는 식과 다른 결과가 나온다. --%>
<%-- ${mymap[c} } --%>
</body>
</html>