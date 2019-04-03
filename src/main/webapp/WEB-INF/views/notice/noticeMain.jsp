<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<%@ include file="../commons/hdjs.jsp"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-theme.css" />

<style>
#a1 {
	position: absolute;
	margin-top: -58px;
	margin-left: 260px;
	border: 10px solid silver;
	color: red;
}

#hr {
	border: 0;
	height: 1px;
	background: #ccc;
}

#noticeP {
	margin-top: 30px;
	margin-left: 630px;
	font-weight: 900;
	color: black;
	font-size: 40px;
}

#write {
	font: 16px/32px 'Nanum Gothic', sans-serif;
	margin: 0px;
}

#write1 {
	position: absolute;
	margin-top: -65px;
	margin-left: 680px;
}

form {
	margin-left: 375px;
	width: 50%;
}

table {
	margin-top: 30px;
	text-align: center;
}

table tr th {
	text-align: center;
}
</style>

</head>
<body>
	<%@ include file="../commons/Header.jsp"%>

	<p id="noticeP">공지사항(메인)</p>


	<form>
	
	<hr id="hr">

		<div id="write1">
			<a href="noticeWrite.do" class="btn btn-default "
				style="width: 80px; padding: 0;" id="write">글쓰기</a>
		</div>

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
	</form>

</body>
</html>
