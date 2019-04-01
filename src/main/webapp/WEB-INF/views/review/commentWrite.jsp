<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>답글 페이지</h3>
	<form:form method="post" action="commentWriteOK" modelAttribute="reviewInfo">
		<form:hidden path="reseq" />
		번호 : ${reviewInfo.reseq} <br>
		이메일 : ${reviewInfo.reemail} <br>
		<c:forEach items="${reviewList}" var="reviewList">
			<c:if test="${reviewInfo.reseq == reviewList.reseq}">
			사진 :<br><img src="uploadFile\memberPhoto/${reviewList.rephoto}" /><br>
			</c:if>
		</c:forEach>
	내용 : ${reviewInfo.recontent} <br>
	날짜 : ${reviewInfo.redate} <br>
		<div id="div1">
			<input type="text" id="text" name="cocontent">
			<input type="submit" value="등록" id="button1">
		</div>
	</form:form>
</body>
</html>