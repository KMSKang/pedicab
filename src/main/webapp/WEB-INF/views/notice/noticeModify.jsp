<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<%@ include file="../commons/hdjs.jsp"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-theme.css"/>

<style>
#submit1 {
	position: absolute;
	margin-left: 582px;
	margin-top: -40px;
}
</style>

</head>
<body>
<%@ include file="../commons/Header.jsp" %>

	<h1>공지사항(수정)</h1>

	<table class="table table-hover">

		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>내용</th>
			<th>작성일</th>
		</tr>
		<form:form action="noticeModifyOK" modelAttribute="noticeVO" method="POST">
			<form:hidden path="noseq" />
			<tr>
				<td>${noticeVO.noseq}</td>
				<td><form:input path="notitle" /></td>
				<td><form:input path="nocontent" /></td>
				<td>${noticeVO.nodate}</td>
			</tr>

			<input type="submit" value="등록" id="submit1">
		</form:form>
	</table>

</body>
</html>
