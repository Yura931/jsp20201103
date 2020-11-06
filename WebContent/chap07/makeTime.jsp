<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<%@ page import = "java.util.Calendar" %>
<%
	Calendar cal = Calendar.getInstance();
	request.setAttribute("time", cal);
%>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:forward page="viewTime.jsp"></jsp:forward>

<!-- 파라미터로 객체도 request 할 수 있다. -->