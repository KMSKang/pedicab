<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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

	<div>
		<jsp:include page="/WEB-INF/views/category/contactUsCategory.jsp"
			flush="false" />
	</div>
	
	<br>
	
	<h3>문의하기(작성)</h3>
	
	<br>
	<hr>
	<br>
	
	<form action="/questionWriteOK" method="POST">
	
		제목 : <input type="text" placeholder="제목을 입력해주세요" name="qutitle"> <br>
		작성자 : <input type="text" placeholder="성함를 입력해주세요" name="quemail"> <br>
		내용 : <input type="text" placeholder="내용을 입력해주세요." name="qucontent"> <br>
		
		<input type="submit" value="등록">
		
	</form>
	
</body>
</html>
<!-- <img id="kakaotalk" src="../pedicab/resources/img/icon/kt.png">
	<a href="#">1:1 오픈 채팅방 문의<br>상담 가능 시간 10:00 ~ 18:00<br>
		(근무시간 외에는 챗봇을 이용하시면 24시간 상담이 가능합니다.)
	</a> -->