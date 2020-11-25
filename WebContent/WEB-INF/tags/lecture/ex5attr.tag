<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="myAttr" %>
<%@ attribute name="myAttr2" required="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h3>attribute 사용 가능 태그</h3>
<h3>받은 myAttr : ${myAttr }</h3>
<h3>받은 myAttr2 : ${myAttr2 }</h3>
<!-- 태그영역과 페이지영역 같다고 생각하면 됨
저장해둔 어트리뷰트는 태그영역에 저장되어있다고 생각하면 된다.
 -->