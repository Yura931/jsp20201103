<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
request.setAttribute("attr1", "value1");
session.setAttribute("attr2", "value2");

HttpSession sess = request.getSession(); // session을 request로부터 꺼내 쓸 수 있음.

System.out.println(session == sess);

response.sendRedirect("sessionEx3RedirectTarget.jsp");
%>