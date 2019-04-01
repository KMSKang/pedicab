<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../commons/hdjs.jsp"%>
<title>Insert title here</title>
</head>
<body>
<%@ include file="../commons/Header.jsp" %>
<section id="content">
	<form action="/course/cregist" method="get">
		<table>
			<tr>
				<td width="77">
					<p align="center">코스명</p>
				</td>
			</tr>
			<c:forEach items="${list}" var="course">
				<tr>
					<td><a href='/course/cread?cseq=${course.cseq}'>${course.cname}</a></td>
				</tr>
			</c:forEach>
		</table>
		<button type="submit">글쓰기</button>
	</form>
</section>

</body>
</html>