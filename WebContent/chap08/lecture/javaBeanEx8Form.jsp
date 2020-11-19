<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="javaBeanEx8View.jsp">
이름 : <input type="text" name="name" id="" /> <br /> <!-- 카 빈의 프로퍼티명과 같은 name을 사용 했을 경우, 이 경우가 많음, 만약 같다면 생략 해도 request parameter에서 알아서 값을 꺼내 사용해줌 -->
속도 : <input type="number" name="speed"  id="" /> <br />
<input type="submit" value="등록" />
</form>
</body>
</html>