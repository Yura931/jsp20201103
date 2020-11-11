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
<title>5.1 클라이언트 정보 및 서버 정보 읽기</title>
</head>
<body>
<div class="container">
<h1>클라이언트 정보 및 서버 정보 읽기</h1>
<p>request 기본 객체는 웹 브라우저, 즉 클라이언트가 전소한 정보와 서버 정보를 구할 수 있는 메서드를 제공하고 있다.</p>
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">메서드</th>
      <th scope="col">리턴 타입</th>
      <th scope="col">설명</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">getRemoteAddr()</th>
      <td>String</td>
      <td>웹 서버에 연결한 클라이언트의 IP 주소를 구한다. <br />
      	  게시판이나 방명록 등에서 글 작성자의 IP 주소가 자동으로 입력되기도 하는데, <br />
      	  이때 입력되는 IP 주소가 바로 이 메서드를 사용하여 구한 것이다.</td>     
    </tr>
    <tr>
      <th scope="row">getContentLength()</th>
      <td>long</td>
      <td>클라이언트가 전송한 요청 정보의 길이를 구한다. <br />
      	  전송된 데이터의 길이를 알 수 없는 경우 -1을 리턴한다.
      </td>      
    </tr>
    <tr>
      <th scope="row">getCharacterEncoding()</th>
      <td>String</td>
      <td>클라이언트가 요청 정보를 전송할 때 사용한 캐릭터의 인코딩을 구한다.</td>     
    </tr>
     <tr>
      <th scope="row">getContentType()</th>
      <td>String</td>
      <td>클라이언트가 요청 정보를 전송할 때 사용한 컨텐츠의 타입을 구한다.</td>     
    </tr>
     <tr>
      <th scope="row">getProtocol()</th>
      <td>String</td>
      <td>클라이언트가 요청한 프로토콜을 구한다.</td>     
    </tr>
     <tr>
      <th scope="row">getMethod()</th>
      <td>String</td>
      <td>웹 브라우저가 정보를 전송할 때 사용한 방식을 구한다.</td>     
    </tr>
     <tr>
      <th scope="row">getRequestURI()</th>
      <td>String</td>
      <td>웹 브라우저가 요청한 URL에서 경로를 구한다.</td>     
    </tr>
     <tr>
      <th scope="row">getContextPath()</th>
      <td>String</td>
      <td>JSP 페이지가 속한 웹 어플리케이션의 컨텍스트 경로를 구한다.</td>     
    </tr>
     <tr>
      <th scope="row">getServerName()</th>
      <td>String</td>
      <td>연결할 때 사용한 서버 이름을 구한다.</td>     
    </tr>
     <tr>
      <th scope="row">getServerPort()</th>
      <td>int</td>
      <td>서버가 실행중인 포트 번호를 구한다.</td>     
    </tr>
  </tbody>
</table>
</div>

클라이언트IP = <%= request.getRemoteAddr() %> <br />
요청정보길이 = <%= request.getContentLength() %> <br />
요청정보 인코딩 = <%= request.getCharacterEncoding() %> <br />
요청정보 컨텐츠타입= <%= request.getContentType() %> <br />
요청정보 프로토콜 = <%= request.getProtocol() %> <br />
요청정보 전송방식 = <%= request.getMethod() %> <br />
요청 URI = <%= request.getRequestURI() %> <br />
컨텍스트 경로 = <%= request.getContextPath() %> <br />
서버이름 = <%= request.getServerName() %> <br />

<br />
출력 결과를 보면 몇 가지 정보는 웹 브라우저에 입력한 URL로부터 추출되는 것을 확인할 수 있다.

</body>
</html>