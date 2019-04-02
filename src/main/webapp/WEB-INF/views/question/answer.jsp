<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../commons/hdjs.jsp"%>
<style>
* {
	margin: 0px;
	padding: 0px;
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
</style>

</head>
<body>
<%@ include file="../commons/Header.jsp" %>
	
	<br>
	
	<h1>문의하기(작성)</h1>
	<hr>
	<br>
	
	<form:form action="answerOK" modelAttribute="questionInfo" method="POST">
		<form:hidden path="quseq" />
		
		작성자 : <input type="text" placeholder="성함을 입력해주세요" name="naname"> <br>
		내용 : <input type="text" placeholder="내용을 입력해주세요." name="nacontent"> <br>
		
		<input type="submit" value="등록">
		
	</form:form>
	
</body>
</html>
<!-- <img id="kakaotalk" src="../pedicab/resources/img/icon/kt.png">
	<a href="#">1:1 오픈 채팅방 문의<br>상담 가능 시간 10:00 ~ 18:00<br>
		(근무시간 외에는 챗봇을 이용하시면 24시간 상담이 가능합니다.)
	</a> -->