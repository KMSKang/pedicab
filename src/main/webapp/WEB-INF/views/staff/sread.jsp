<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE htm>
<html>
<head>
<meta charset="UTF-8">
<title>라이더 상세 페이지</title>
<%@ include file="../commons/hdjs.jsp"%>
</head>
<body>
<%@ include file="../commons/Header.jsp" %>
<h2>라이더 상세 페이지</h2>
	<table border="1">
	<tr>
		<th>이  름</th>
		<th>폰번호</th>
		<th>닉네임</th>
		<th>이미지</th>
	</tr>
	<tr>
		<td>${staff.sname }</td>
		<td>${staff.sphone }</td>
		<td>${staff.snickname }</td>
		<td><img style=whidth:50px; height=50px; 
		src="${pageContext.request.contextPath}/uploadfile/staffphoto/${staff.simg }">
		</td>
	</tr>
</table>
<br>
<button><a href="smodify?sseq=${staff.sseq}">사원정보 수정</a></button>
<button><a href="sremove?sseq=${staff.sseq}">사원정보 삭제</a></button>
</body>
</html>