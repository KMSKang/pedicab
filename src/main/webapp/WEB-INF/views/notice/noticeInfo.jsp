<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Home</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-theme.css"/>
<script src="/resources/js/bootstrap.min.js" ></script>

<style>
#a1 {
	text-decoration: none;
	color: black;
	border: 1px solid silver;
	margin-top: -60px;
	margin-left: 340px;
	border: 10px solid silver;
	position: absolute;
}

#a2 {
	text-decoration: none;
	color: black;
	border: 1px solid silver;
	margin-top: -60px;
	margin-left: 400px;
	border: 10px solid silver;
	position: absolute;
}
</style>

</head>
<body>
<%@ include file="../commons/Header.jsp" %>

	<h1>공지사항(상세)</h1>
	
	<a href="noticeModify.do?noseq=${Info.noseq}" id="a1">수정</a>
	<a href="noticeDelete.do?noseq=${Info.noseq}" id="a2">삭제</a>

	<table class="table table-hover">

		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>내용</th>
			<th>작성일</th>
		</tr>

		<tr>
			<td>${Info.noseq}</td>
			<td>${Info.notitle}</td>
			<td>${Info.nocontent}</td>
			<td>${Info.nodate}</td>
		</tr>
	</table>

</body>
</html>
