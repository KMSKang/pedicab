<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라이더 리스트</title>
</head>
<body>

<h2>라이더 정보 리스트</h2>

<table border="1">
	<tr>
		<th>번  호</th>
		<th>이  름</th>
		<th>폰번호</th>
		<th>닉네임</th>
		<th>이미지</th>
	</tr>

<c:forEach var="staff" items="${list}">
	<tr>
    <td><a href="sread?sseq=${staff.sseq}">${staff.sseq}</a></td>
    <td>${staff.sname }</td>
    <td>${staff.sphone }</td>
    <td>${staff.snickname }</td>
    <td><img src="${pageContext.request.contextPath}/resources/uploadfile/staffphoto/${staff.simg }" style="widht:50px; height:50px;"/></td>
    </tr>
</c:forEach>
</table>
<p>
<a href="sform">사원정보 추가</a>
</body>
</html>