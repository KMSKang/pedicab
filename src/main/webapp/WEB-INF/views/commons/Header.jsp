<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="/"><span>Team150</span></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="/" class="nav-link">Team150</a></li>
					<li class="nav-item"><a href="about.html" class="nav-link">about</a></li>
					<li class="nav-item"><a href="destination.html"	class="nav-link">course</a></li>
					<li class="nav-item"><a href="hotel-resto.html"
						class="nav-link">reserve</a></li>
					<li class="nav-item"><a href="blog.html" class="nav-link">blog</a></li>
					<li class="nav-item"><a href="contact.html" class="nav-link">contact</a></li>
					<c:choose>
					<c:when test="${sessionScope.uid==null }">
					<li class="nav-item cta"><a href="${path}/member/loginForm.do" class="nav-link">Login</a></li>					
					</c:when>
					<c:otherwise>
					<li class="nav-item cta"><a href="${path}/member/logOut.do" class="nav-link">Logout</a></li>	
					</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</nav>