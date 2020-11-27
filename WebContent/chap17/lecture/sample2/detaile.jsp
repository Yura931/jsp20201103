<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/lecture" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<script>
$(function() {
	$("#modify-btn").click(function() {
		$("#title-input").removeAttr("readonly");
		$("#body-textarea").removeAttr("readonly");
		$(this).hide();
		$("#submit-btn").removeAttr("hidden");
	});
	$("#remove-btn").click(function() {
		var c = confirm("삭제하시겠습니까?");
		if (c) {
			location.href="remove?idx=${param.idx}"; /* remove경로로 get방식으로 보냄, 인덱스에 해당하는 놈을 어트리뷰트에 들어있는 list에서 삭제해보자 */		

		}
	});
});

</script>
</head>
<body>

<!-- 글 제목과 내용 수정하기 -->
<c:url value="/sample2/modify" var="modifyUrl"> <!-- url사용시 앞에 / 사용하면 contextPath가 붙게 됨 -->
	<c:param name="idx">${param.idx }</c:param> <!-- 파라미터가 필요할 때 네임과 벨류쌍으로 붙여줄 수 있음 -->
</c:url>

<div class="container">
<h1>글 보기</h1>
<%-- <form action="<%= request.getContextPath() %> /sample2/modify?idx="${param.idx }" method="post"> --%> <!-- 인덱스를 담아놓았기 때문에 idx를 사용해주어야 함, list의 인덱스 번호를 알아야 삭제할 수 있음 -->
<form action="${modifyUrl }" method="post">
제목 : <input id="title-input" name="title" type="text" value="${post.title }" readonly />  <!-- post객체의 getTitle메소드를 사용한 것 -->
<br />
<textarea id="body-textarea" name="body" cols="30" rows="10" readonly>${post.body }</textarea>  <!-- post객체의 getBody메소드를 사용한 것 --> 
<!-- readonly로 설정해놓았기 때문에 수정 불가능, 수정 버튼을 누르면 수정이 가능하도록 만들어보자 -->
<br />

<!-- input:submit.btn.btn-secondary[value="등록"] -->
<input type="submit" id="submit-btn" hidden value="등록" class="btn btn-secondary" /> <!-- 처음에는 안보이게 하는 속성 hidden -->
</form>

<!-- button.btn.btn-secondary#modify-btn{수정} -->
<button class="btn btn-secondary" id="modify-btn">수정</button>

<br />
<!-- button.btn.btn-danger#remove-btn{삭제} -->
<button class="btn btn-danger" id="remove-btn">삭제</button>
</div>
</body>
</html>

















