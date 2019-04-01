<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>상세 페이지</h3>
	번호 : ${reviewInfo.reseq} <br>
	이메일 : ${reviewInfo.reemail} <br>
	<c:forEach items="${reviewList}" var="reviewList">
		<c:if test="${reviewInfo.reseq == reviewList.reseq}">
		사진 :<br><img src="uploadFile\memberPhoto/${reviewList.rephoto}" /> <br>
		</c:if>
	</c:forEach>
	내용 : ${reviewInfo.recontent} <br>
	날짜 : ${reviewInfo.redate} <br>

	<a href="commentWrite.do?reseq=${reviewInfo.reseq}">답글</a>
	<a href="reviewModify.do?reseq=${reviewInfo.reseq}">수정</a>
	<a href="reviewDelete.do?reseq=${reviewInfo.reseq}">삭제</a>
</body>
</html>