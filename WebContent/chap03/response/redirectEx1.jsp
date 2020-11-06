<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%

response.sendRedirect("redirectEx1target.jsp"); /* Forward와 비슷하지만 다름.-> 같은요청을 건내준 것  redirect->응답이 끝나는것이기 때문에 응답이 끝나면 사라짐. 응답 == 다른대로 가라 다시 요청 */

%>

<!-- Ex1로 요청을 보내면 서버가 받아서 response 해준 것 , response.sendRedirect의 응답은 ("파라미터")로 다시 보내라 --> 