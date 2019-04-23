<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.course {
	list-style: none;
	display: flex;
	flex-flow: row wrap;
	justify-content: space-between;
}

.course li {
	flex: 0 0 19%;
	margin-bottom: 10px;
}

img {
	width: 500px;
	height: 300px;
}
</style>

</head>
<body>

<%@ include file="../commons/Header.jsp" %>


	<c:forEach items="${favorite}" var="favorite">
		<ul class="course">
			<li>
				<div>${favorite.falink}</div>
			</li>

			<li>
				<div></div>
			</li>

			<li>
				<div></div>
			</li>

			<li>
				<div></div>
			</li>

			<li>
				<div></div>
			</li>

			<li>
				<div></div>
			</li>
		</ul>
	</c:forEach>
</body>
</html>