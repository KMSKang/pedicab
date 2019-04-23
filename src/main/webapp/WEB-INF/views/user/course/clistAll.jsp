<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
	<%@ include file="../commons/Header.jsp"%>
	<section id="content" style="text-algin: center;">
		<form action="/course/cregist" method="get"
			style="text-align: center;">
			<h3 align="center">코스</h3>
			<br>
			<c:forEach items="${list}" var="course">
               <div>
				<p><a href='/course/cread?cseq=${course.cseq}'>${course.cname}</a></p><br>
               </div>
			</c:forEach>

			<button type="submit">글쓰기</button>
		</form>
	</section>

</body>
</html>