<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<html>
<head>
<title>Home</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.css" />
</head>
<body>

	<nav class="navbar navbar-light bg-light">
		<div class="collapse navbar-collapse">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="course/clistAll">코스리스트(매니저)</a></li>
				<li class="nav-item"><a class="nav-link"
					href="course/uclistAll">코스리스트(유저)</a></li>
				<li class="nav-item"><a class="nav-link"
					href="reserve/Reserve_viewU?useq=${useq }">예약보기(유저)</a></li>
				<li class="nav-item"><a class="nav-link"
					href="reserve/Reserve_listM">예약리스트(매니저)</a></li>
			</ul>
		</div>
	</nav>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="/">Home</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
				<a class="nav-item nav-link active" href="">Home <span
					class="sr-only">(current)</span></a> <a class="nav-item nav-link"
					href="#">Features</a> <a class="nav-item nav-link" href="#">Pricing</a>
				<a class="nav-item nav-link disabled" href="#" tabindex="-1"
					aria-disabled="true">Disabled</a>
			</div>
		</div>
	</nav>
</body>
</html>
