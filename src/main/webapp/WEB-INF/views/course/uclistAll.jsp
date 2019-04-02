<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../commons/hdjs.jsp"%>
</head>
<body class="index-1">
<%@ include file="../commons/Header.jsp" %>
<section id="content">
	<div class="full-width-container block-1">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<header>
						<h2><span>코스소개</span></h2>
					</header>
				</div>
				<c:forEach items="${list}" var="course">
				
				<div>
					<div class="grid_4">
						<div class="img_block"><img src="/uploadFile/CoursePhoto/${course.cimg }" alt="코스사진"><i>+</i></div>
						<article>
							<h4>${course.cname }</h4>
							<p>${course.cinfo }</p>
							<a href="/course/ucread?cseq=${course.cseq}" class="btn btn-primary">더 알아보기</a>
						</article>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
	</div>
</section>
<script>
	$(function(){
		$('#touch_gallery a').touchTouch();
	});
</script>

</body>
</html>