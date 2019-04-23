<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	.img{
		width: 220px; height: 220px;
		margin: 10px;
		border-radius: 50%;
	}
	.container p{
		text-align: center;	
	}

</style>
<title>사원 소개(유저)</title>
<%@ include file="../commons/indexbg.jsp" %>
</head>
<body>
<%@ include file="../commons/Header.jsp" %>
<div class="hero-wrap js-fullheight" style="background-image: url(&quot;/resources/imagesu/bg_1.jpg&quot;); height: 952px; background-position: 50% 300px;" data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div class="row no-gutters slider-text js-fullheight align-items-center justify-content-end" data-scrollax-parent="true" style="height: 952px;">
			<div class="col-md-7 ftco-animate mt-5 fadeInUp ftco-animated" data-scrollax=" properties: { translateY: '70%' }" style="transform: translateZ(0px) translateY(44.1176%);">
				<h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }" style="opacity: 0; transform: translateZ(0px) translateY(18.9076%);">
					We are best.</h1>
			</div>
		</div>
		</div>
</div>
<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center pb-5">
				<div class="col-md-12 heading-section text-center">
					<h2 class="mb-4">Riders Info</h2>
				</div>
			</div>
			<div class="row">
				<c:forEach var="staff" items="${list}">
				<div class="col-md-6 col-lg-3">
			        <img class="img" src="/uploadFile/staffPhoto/${staff.simg }" />
			        <p style="font-size:25px;color:black;">${staff.sname }</p>
				</div>
		        </c:forEach>
			</div>
		</div>
	</section>
<%@ include file="../commons/footer.jsp" %>
</body>
</html>