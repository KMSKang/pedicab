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
				<li class="nav-item"><a class="nav-link"
					href="staff/slistAll">라이더리스트[매니저]</a></li>
			</ul>
		</div>
	</nav>
</body>
</html>
