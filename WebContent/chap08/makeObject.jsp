<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="member" scope="request" class="chap08.MemberInfo" />
<!-- request에 member라는 request가 없으면 class를 만드는 것
member객체도 만들고 request 해줌 -->
<%
member.setId("madvirus");
member.setName("최범균");
%> 
<jsp:forward page="useObject.jsp" />  <!-- 같은 request 흐름에 있는 상태에서 useObject가 일을 하게 됨 -->
