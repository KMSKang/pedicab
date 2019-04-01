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

#a2 {
	position: absolute;
	margin-left: 200px;
	margin-top: -48px;
	border: 10px solid silver;
}
</style>

</head>
<body>

	<div>
		<jsp:include page="/WEB-INF/views/category/contactUsCategory.jsp"
			flush="false" />
	</div>

	<br>

	<h3>문의하기(상세)</h3>
	<hr>
	<br>
	
		번호   : ${questionInfo.quseq} <br><br>
		제목   : ${questionInfo.qutitle} <br><br>
		작성자 : ${questionInfo.quemail} <br> <br>
		작성일 : ${questionInfo.qudate} <br><br>
		내용   : ${questionInfo.qucontent} <br><br>

	<br>

	<h1>관리자 답변</h1>
	<a href="answer.do?quseq=${questionInfo.quseq}" id="a2">답변하기</a>
	<hr>
	<br>
	
	<table>
	
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>내용</th>
			<th>날짜</th>
			<th>reseq</th>
		</tr>
		
		<c:forEach items="${answerList}" var="answerList">
		<c:if test="${answerList.quseq == questionInfo.quseq}">
			<tr>
				<td>${answerList.naseq}</td>
				<td>${answerList.naname}</td>
				<td>${answerList.nacontent}</td>
				<td>${answerList.nadate}</td>
				<td>${answerList.quseq}</td>
			</tr>
			</c:if>
		</c:forEach>
		
	</table>
	
</body>
</html>