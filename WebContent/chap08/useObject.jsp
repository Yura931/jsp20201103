<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" scope="request" class="chap08.MemberInfo" />
<!-- request Attribute에 없으면 생성되는 id , 존재하기 때문에 꺼내서 사용 -->

<!-- makeObject.jsp 파일에서 forward 해오지 않고 이 창에서 바로 실행시 member객체가 생성되어 있는 상태가 아니기 때문에 null이 나옴 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사말</title>
</head>
<body>

<%= member.getName() %> (<%= member.getId() %>) 회원님
안녕하세요
</body>
</html>