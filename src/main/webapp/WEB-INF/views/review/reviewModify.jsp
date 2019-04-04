<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
<%@ include file="../commons/Header.jsp" %>
	<h3>수정 페이지</h3>

	<form:form action="reviewModifyOK" modelAttribute="reviewVO" enctype="multipart/form-data" method="POST">
		<form:hidden path="reseq" />
		
			번호 : ${reviewVO.reseq} <br>
			이메일 : <form:input path="reemail" /> <br>
			사진 : <input type="file" name="photoFile"> <br>

		<c:forEach items="${reviewList}" var="reviewList">
			<c:if test="${reviewVO.reseq == reviewList.reseq}"> <br>
				<img src="uploadFile\memberPhoto/${reviewList.rephoto}" /> <br>
			</c:if>
		</c:forEach>
		
			내용 : <form:input path="recontent" /> <br>
			날짜 : ${reviewVO.redate} <br>

		<input type="submit" value="등록">

	</form:form>

</body>
</html>