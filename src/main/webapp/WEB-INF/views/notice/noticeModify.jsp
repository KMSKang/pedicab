<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<style>
#noticeP {
	margin-top: 30px;
	margin-left: 630px;
	font-weight: 900;
	color: black;
	font-size: 40px;
}

#form {
	width: 55%;
}

#hr {
	border: 0;
	height: 1px;
	background: #ccc;
}

#Erollment {
	width: 90px;
	background: none;
	font: 16px/22px 'Nanum Gothic', sans-serif;
	margin-left: 1000px;
	margin-top: -50px;
}
</style>

</head>
<body>
	<%@ include file="../commons/Header.jsp"%>

	<p id="noticeP">공지사항(수정)</p>

	<form:form action="noticeModifyOK" modelAttribute="noticeVO"
		method="POST" id="form">

		<hr id="hr">

		<table class="table table-hover">

			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>내용</th>
				<th>작성일</th>
			</tr>
			<form:hidden path="noseq" />
			<tr>
				<td>${noticeVO.noseq}</td>
				<td><form:input path="notitle" /></td>
				<td><form:input path="nocontent" /></td>
				<td>${noticeVO.nodate}</td>
			</tr>

		</table>
		<button type="submit" class="btn btn-default" id="Erollment">등록</button>
	</form:form>
</body>
</html>
 --%>