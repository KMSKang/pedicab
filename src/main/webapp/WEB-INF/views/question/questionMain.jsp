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
	margin-left: 260px;
	margin-top: -40px;
}

p {
	margin-left: 390px;
	margin-top: -40px;
	font-size: 30px;
}
</style>

</head>
<body>

	<div>
		<jsp:include page="/WEB-INF/views/category/contactUsCategory.jsp"
			flush="false" />
	</div>
	<br>
	<h1>나의 문의 리스트</h1>
	<a href="questionWrite.do?" id="a1">문의하기</a>
	<p>작성자 : kk920106@naver.com</p>
	<br>
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
		<%-- <c:set var="id" value="kk920106@naver.com" scope="session" />
		<c:if test="${questionList.quemail == id}"> --%>
			<tr>
				<td>${questionList.quseq}</td>
				<td><a href="questionInfo.do?quseq=${questionList.quseq}">${questionList.qutitle}</a></td>
				<td>${questionList.quemail}</td>
				<td>${questionList.qudate}</td>
			</tr>
			<%-- </c:if> --%>
		</c:forEach>
	</table>

<img id="kakaotalk" src="../resources/img/icon/kt.png">
	<a href="#">1:1 오픈 채팅방 문의<br>상담 가능 시간 10:00 ~ 18:00<br>
		(근무시간 외에는 챗봇을 이용하시면 24시간 상담이 가능합니다.)
	</a>
	
</body>
</html>