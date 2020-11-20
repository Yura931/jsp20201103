<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!-- forward 해줄 때에는 html코드 필요 없다. -->
<%
pageContext.setAttribute("pageAttr1", "pageValue1"); /* forward 된 페이지는 같은 페이지영역이 아니기 때문에 읽을 수 없다. */

request.setAttribute("req Attr1", "req Value1");
request.setAttribute("reqAttr2", "req Value2");

session.setAttribute("sesAttr2", "sesAttr2");
session.setAttribute("reqAttr2", "ses Value2");

application.setAttribute("reqAttr2", "app value2");
application.setAttribute("appAttr1", "app value1");
application.setAttribute("app Attr3", "app value3");

%>

<jsp:forward page="elEx15To.jsp" /> <!-- 요청 주고받는 태그 , 같은 request객체를 공유함-->