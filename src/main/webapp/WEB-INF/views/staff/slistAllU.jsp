<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	img{
		width: 220px; height: 220px;
	}
</style>
<title>사원 소개(유저)</title>
<%@ include file="../commons/indexbg.jsp" %>
</head>
<body>
<%@ include file="../commons/Header.jsp"%>
<div class="hero-wrap js-fullheight"
		style="background-image: url('/resources/imagesu/bg_2.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-center justify-content-end"
				data-scrollax-parent="true">
				<div class="col-md-7 ftco-animate mt-5"
					data-scrollax=" properties: { translateY: '70%' }">
					<h1 class="mb-4"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">CourseList</h1>
				</div>
			</div>
		</div>
	</div>
        <c:forEach var="staff" items="${list}">
	      <img class="img-circle" src="/uploadFile/staffphoto/${staff.simg }" />
		  <p>${staff.sname }</p>
        </c:forEach>

<div>
<%@ include file="../commons/footer.jsp" %>
</div>
</body>
</html>