<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Home</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-theme.css"/>

<style>
#a1 {
	position: absolute;
	margin-top: -58px;
	margin-left: 260px;
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

		<a href="noticeWrite.do" id="a1">글쓰기</a>
		
	<table class="table table-hover">
	
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성일</th>
			<th>기타</th>
		</tr>
		
		<c:forEach items="${List}" var="List">
			<tr>
				<td>${List.noseq}</td>
				<td>${List.notitle}</td>
				<td>${List.nodate}</td>
				<td><a href="noticeInfo.do?noseq=${List.noseq}">관리</a>
			</tr>
		
		</c:forEach>

	</table>
	

</body>
</html>
