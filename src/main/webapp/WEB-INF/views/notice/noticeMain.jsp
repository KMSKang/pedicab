<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<style>
table {
	border-collapse: collapse;
}

td, th {
	padding: 8px 20px;
	border: 1px solid #b7b7b7;
}

th {
	background-color: #2c8daa;
	color: #fff;
}

tr:hover {
	cursor: default;
	background-color: #ecfafc;
}

#a1 {
	position: absolute;
	margin-top: -150px;
	margin-left: 250px;
	border: 10px solid silver;
	color: red;
}
</style>

</head>
<body>

	<div>
		<jsp:include page="/WEB-INF/views/category/contactUsCategory.jsp"
			flush="false" />
	</div>

	<h1>공지사항(메인)</h1>

	<table>
	
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성일</th>
			<th>기타</th>
		</tr>
		
		<c:forEach items="${mimbers}" var="mimber">
			<tr>
				<td>${mimber.noseq}</td>
				<td>${mimber.notitle}</td>
				<td>${mimber.nodate}</td>
				<td><a href="noticeInfo.do?noseq=${mimber.noseq}">관리</a>
			</tr>
		
		</c:forEach>

	</table>
	
		<a href="noticeWrite.do" id="a1">글쓰기</a>

</body>
</html>
