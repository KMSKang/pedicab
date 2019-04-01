<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<title>Home</title>
<style>
body {
	margin: 0;
}

nav ul {
	display: flex;
	list-style: none;
	margin: 0;
	padding: 20px 10px 0 10px;
}

nav li a {
	display: block;
	padding: 10px 20px;
	text-decoration: none;
	font-size: 25px;
	color: #000000;
	font-weight: bold;
}

nav li a:hover {
	color: red;
}

nav li {
	flex: auto;
}

.logo {
	margin: 50px auto;
	width: 240px;
	height: 200px;
	background:
		url(../pedicab/resources/img/icon/logo.png);
	font-size: 0px
}

a {
	font-size: 20px;
	font-weight: bold;
	text-decoration : none;
	color: black;
	text-decoration: none;
}
</style>
</head>
<body>

	<header>
		<a href="/pedicab/"><h1 class="logo">Team150</h1></a>
	</header>
	
	<nav>
		<ul>
			<li></li>
			<li><a href="/pedicab/companyIntroduce">about us</a></li>
			<li><a href="/pedicab/courseIntroduce">course</a></li>
			<li><a href="/pedicab/favorite">reservation</a></li>
			<li><a href="/pedicab/noticeMain">contact us</a></li>
			<li><a href="#">engilsh</a></li>
		</ul>
	</nav>

	<a href="/pedicab/noticeMain">공지사항</a>
	<br>
	<a href="/pedicab/frequentlyAskedQuestions">자주 묻는 질문</a>
	<br>
	<a href="/pedicab/questionMain">문의하기</a>
	<br>
	<a href="/pedicab/wayToCome">오시는길</a>



</body>
</html>
