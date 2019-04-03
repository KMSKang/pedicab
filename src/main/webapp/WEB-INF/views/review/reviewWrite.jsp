<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

.all {
	width: 1500px;
	height: 500px;
	margin-top: 30px;
	margin-left: 200px;
	border: 1px solid silver;
}

img {
	position: absolute;
	margin-top: -450px;
	margin-left: 250px;
	width: 400px;
	height: 400px;
	margin-left: 250px;
}

.write {
	position: absolute;
	margin-top: -500px;
	margin-left: 900px;
}

#retitle {
	width: 400px;
	height: 400px;
}

#recontent {
	width: 400px;
	height: 400px;
}

#Enrollment {
	position: absolute;
	margin-top: 410px;
	margin-left: 1255px;
	width: 50px;
	height: 30px;
}

#noticeP {
	margin-top: 30px;
	margin-left: 750px;
	font-weight: 900;
	color: black;
	font-size: 40px;
}

#hr {
	border: 0;
	height: 1px;
	background: #ccc;
}

#form1 {
	width: 30%;
}
</style>

</head>
<body>

	<%@ include file="../commons/Header.jsp"%>

	<p id="noticeP">리뷰 작성</p>

	<hr id="hr">

	<form action="/review/reviewWriteOK" method="POST" enctype="multipart/form-data" id="form1">

		<div class="all"></div>

		<img src="../resources/img/course/course1.jpg" alt="경복궁사진">

		<div class="write">
			아이디 : <input type="text" placeholder="아이디를 입력주세요" name="reemail">
			<br> 사진 : <input type="file" name="photoFile"> <br>
			리뷰 : <input type="text" placeholder="댓글을 남겨주세요" name="recontent">
		</div>

		<input type="submit" value="등록" id="Enrollment">
		
	</form>

</body>
</html>