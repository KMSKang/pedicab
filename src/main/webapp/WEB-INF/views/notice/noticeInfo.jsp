<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Home</title>

<<<<<<< HEAD
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-theme.css" />
<%@ include file="../commons/hdjs.jsp"%>
<script src="/resources/js/bootstrap.min.js"></script>
=======
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-theme.css"/>
<script src="/resources/js/bootstrap.min.js" ></script>
>>>>>>> branch 'master' of https://github.com/bitteam150/pedicab.git

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

#noticeP {
	margin-top: 30px;
	margin-left: 630px;
	font-weight: 900;
	color: black;
	font-size: 40px;
}

#hr {
	border: 0;
	height: 1px;
	background: #ccc;
}

form {
	margin-left: 375px;
	width: 55%;
}

#write {
	font: 16px/32px 'Nanum Gothic', sans-serif;
	margin: 0px;
}

#write1 {
	position: absolute;
	margin-top: -25px;
	margin-left: 970px;
}

#write2 {
	position: absolute;
	margin-top: -25px;
	margin-left: 1060px;
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

	<p id="noticeP">공지사항(상세)</p>

	<div id="write1">
		<a href="noticeModify.do?noseq=${Info.noseq}" class="btn btn-default "
			style="width: 80px; padding: 0;" id="write">수정</a>
	</div>

	<div id="write2">
		<a href="noticeDelete.do?noseq=${Info.noseq}" class="btn btn-default "
			style="width: 80px; padding: 0;" id="write">삭제</a>
	</div>

	<form>

		<hr id="hr">

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
	</form>
</body>
</html>
