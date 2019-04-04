<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>
<head>
<title>Home</title>

<style>
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

#text2 {
	height: 300px;
}

#noticeP {
	margin-top: 30px;
	margin-left: 630px;
	font-weight: 900;
	color: black;
	font-size: 40px;
}

#hr {
	border: 0;
	height: 1px;
	background: #ccc;
}

form {
	width: 38%;
	margin-left: 470px;
}

label {
	margin-bottom: 10px;
}

#Erollment {
	width: 90px;
	background: none;
	font: 16px/22px 'Nanum Gothic', sans-serif;
}

#text4{
postion: absolute;
margin-left: 100px;
}


</style>

</head>
<body>
	<%@ include file="../commons/Header.jsp"%>

	<p id="noticeP">공지사항(쓰기)</p>

	<form action="/notice/noticeWriteOK" method="POST">

		<hr id="hr">

		<div class="form-group">
			<label for="title" id="label1">제목</label> <input type="text" class="form-control"
				placeholder="제목을 입력주세요" name="notitle">
		</div>

		<div class="form-group">
			<label for="title">내용</label> <input type="text" class="form-control"
				placeholder="내용을 입력주세요" name="nocontent" id="text2">
		</div>

		<button type="submit" class="btn btn-default" id="Erollment">등록</button>

	</form>
</body>
</html>
