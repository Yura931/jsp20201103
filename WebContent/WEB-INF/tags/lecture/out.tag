<%@ tag body-content="tagdependent" language="java" pageEncoding="UTF-8"%>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:doBody var="bodText"/>
<c:out value ="${bodyText}" escapeXml="true" />
<!-- c:out태그 사용으로 브라우저에 특수기호들이 그대로 보이게 됨 -->