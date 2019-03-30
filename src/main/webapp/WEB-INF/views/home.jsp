<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<form>
		<header>
			<a href="/"><img src=/resources/img/icon/logo.png></a>
		</header>
		<nav>
			<ul>
				<li></li>
				<li><a href="/pedicab/companyIntroduce">about us</a></li>
				<li><a href="/pedicab/courseIntroduce">course</a></li>
				<li><a href="/pedicab/reservationConfirm">reservation</a></li>
				<li><a href="/pedicab/notice">contact us</a></li>
				<li><a href="#">engilsh</a></li>
			</ul>
		</nav>

		<div class="main">
			<img src="/resources/img/etc/main.gif" alt="알파카">
		</div>

		<button type="submit" formaction="course/clistAll" formmethod="get">코스리스트(매니저)</button>
		<button type="submit" formaction="course/uclistAll" formmethod="get">코스트리스트(유저)</button>
		<button type="submit" formaction="/resrve/Reserve_viewU?useq=${useq}"
			formmethod="get">나의예약보기(유저)</button>
		<button type="submit" formaction="reserve/Reserve_listM"
			formmethod="get">예약리스트(매니저)</button>

	</form>
</body>
</html>
