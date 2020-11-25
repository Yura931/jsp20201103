<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="attr0" %> <!-- 다이나믹 어트리뷰트에 포함되지 않음 -->
<%@ tag dynamic-attributes="attr" %> <!-- page 영역 안에 이 이름을 가진 map으로 활용이 된다. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

${attr.attr1 } <!-- 맵의 내용물은 태그 안에 작성된 어트리뷰트 , 값 으로 채워지게 된다. -->

<br />

${attr["attr2"] }

<br />

모든 키 밸류 탐색
<ul>
<c:forEach items="${attr }" var="entry">
	<li>${entry.key } : ${entry.value }</li>
</c:forEach>
</ul>