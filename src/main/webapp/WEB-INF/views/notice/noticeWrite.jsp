<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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

#text2{
height: 300px;
}

#Erollment{
margin-left: 110px;
}
</style>

</head>
<body>

	<div>
		<jsp:include page="/WEB-INF/views/category/contactUsCategory.jsp"
			flush="false" />
	</div>

	<h1>공지사항(쓰기)</h1>

	<form action="/notice/noticeWriteOK" method="POST">

		제목 : <input type="text" placeholder="제목을 입력해주세요" name="notitle"> <br>
		내용 : <input type="text" placeholder="내용을 입력해주세요" name="nocontent" id="text2"> <br>
		
		<input type="submit" value="등록" id="Erollment">

	</form>
</body>
</html>
