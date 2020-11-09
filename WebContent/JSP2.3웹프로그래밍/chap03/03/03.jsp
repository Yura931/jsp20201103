<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
<h1>page 디렉티브</h1>
<hr />
page 디렉티브는 JSP 페이지에 대한 정볼르 입력하기 위해서 사용된다.
page 디렉티브를 사용하면 JSP 페이지가 어떤 문서를 생성하는지, 
어떤 자바 클래스를 사용하는지, 세션(session)에 참여하는지, 출력버퍼의 존재여부와 같이 JSP 페이지를 실행하는 데 필요한 정볼르 입력할 수 있다.

다음 코드는 page 디렉티브의 작성 예를 보여주고 있다.
<br />
&#60;&#37;@ page contentType="text/html; charset=utf-8" &#37;&#62; <br />
&#60;&#37;@ page import="java.util.Date" &#37;&#62; <br />

위 코드는 두 개의 page 디렉티브를 보여주고 있는데, 각각 contentType 속성과
import 속성을 사용해서 JSP 페이지에서 필요한 정보를 설정하고 있다.
page 디렉티브는 이 두 속성 외에도 페이지 정보를 설정하는데 필요한 속성을 추가적으로 제공하고 있다.

<h>표 3.2 page 디렉티브의 주요 속성</h>
<table class="table">
  <thead>
    <tr>
      <th scope="col">속성</th>
      <th scope="col">설명</th>
      <th scope="col">기본값</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">contentType</th>
      <td>JSP가 생성할 문서의 MIME 타입과 캐릭터 인코딩을 지칭한다.</td>
      <td>Text/html</td>
    </tr>
    <tr>
      <th scope="row">import</th>
      <td>JSP 페이지에서 사용할 자바 클래스를 지정한다.</td>
      <td></td>     
    </tr>
    <tr>
      <th scope="row">session</th>
      <td>JSP 페이지가 세션을 사용할지의 여부를 지정한다<br /> 
 		"true"일 경우 세션을 사용하고 "false"일 경우 세션을 사용하지 않는다.
      </td>
      <td>true</td>
    </tr>
	<tr>
      <th scope="row">buffer</th>
      <td>JSP 페이지의 출력 버퍼 크기를 지정한다.<br /> 
      	  "none"일 경우 출력 버퍼를 사용하지 않으며, <br />
      	  "8kb"라고 입력한 경우 8킬로바이트 크기의 출력 버퍼를 사용한다.	
      </td>
      <td>최소 8kb</td>
    </tr>
    <tr>
      <th scope="row">autoFlush</th>
      <td>출력 버퍼가 다 찼을 경우 자동으로 버퍼에 있는 데이터를 출력 스트림에 보내고 비울지 여부를 나타낸다. <br />
      	  "true"인 경우 버퍼의 내용을 웹 브라우저에 보낸 후 버퍼를 비우며, "false"인 경우 에러를 발생시킨다.
      </td>
      <td>true</td>
    </tr>
    <tr>
      <th scope="row">info</th>
      <td>JSP 페이지에 대한 섦여을 입력한다.</td>
      <td></td>
    </tr>
    <tr>
      <th scope="row">errorPage</th>
      <td>JSP 페이지를 실행하는 도중에 에러가 발생할 때 보여 줄 페이지를 지정한다.</td>
      <td></td>
    </tr>
    <tr>
      <th scope="row">isErrorPage</th>
      <td>현재 페이지가 에러가 발생될 때 보여주는 페이지인지의 여부를 지정한다. <br />
		  "true"일 경우 에러 페이지이며, "false"일 경우 에러 페이지가 아니다.	      	
      </td>
      <td>false</td>
    </tr>
    <tr>
      <th scope="row">pageEncoding</th>
      <td>JSP 페이지 소스 코드의 캐릭터 인코딩을 지정한다.</td>
      <td></td>
    </tr>
    <tr>
      <th scope="row">isELIgnored</th>
      <td>"true"일 경우 표현 언어를 해석하지 않고 문자열로 처리하며, "false"일 경우 표현언어를 지원한다.</td>
      <td>false</td>
    </tr>
    <tr>
      <th scope="row">deferredSyntaxAllowedAsLiteral</th>
      <td># [문자가 문자열 값으로 사용되는 것을 허용할지의 여부를 지정한다.]</td>
      <td>false</td>
    </tr>
    <tr>
      <th scope="row">trimDirectiveWhitespaces</th>
      <td>출력 결과를 템플릿 텍스트의 공백 문자를 제거할지의 여부를 지정한다.</td>
      <td>false</td>
    </tr>
  </tbody>
</table>

</div>
</body>
</html>