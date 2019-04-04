<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
* {
	margin: 0px;
	padding: 0px;
}

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

#kakaotalk {
	width: 55px;
	height: 55px;
}

#a1 {
	position: absolute;
	border: 10px solid silver;
	color: red;
	margin-left: 150px;
	margin-top: -35px;
}

p {
	margin-left: 280px;
	margin-top: -35px;
	font-size: 30px;
}
</style>

</head>
<body>
<%@ include file="../commons/Header.jsp" %>

	<br>
	<h3>모든 문의 리스트</h3>
	
	<hr>
	<br>
	<table>

		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>

		<c:forEach items="${questionList}" var="questionList">
			<tr>
				<td>${questionList.quseq}</td>
				<td><a href="questionInfo.do?quseq=${questionList.quseq}">${questionList.qutitle}</a></td>
				<td>${questionList.quemail}</td>
				<td>${questionList.qudate}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>
<!-- <img id="kakaotalk" src="../pedicab/resources/img/icon/kt.png">
	<a href="#">1:1 오픈 채팅방 문의<br>상담 가능 시간 10:00 ~ 18:00<br>
		(근무시간 외에는 챗봇을 이용하시면 24시간 상담이 가능합니다.)
	</a> -->