<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="UTF-8">
<head>
<title>Manger</title>
<style>
#td_title {
	color: black;
}

table {
	color: black;
	text-align: center;
}

table th {
	text-align: center;
}

table a {
	color: black;
}

#h1 {
	color: black;
}

#hr {
	border-top: 1px solid black;
}
</style>
<%@include file="/WEB-INF/views/user/commons/mh.jsp"%>
</head>
<body>
	<section id="container" class="">
		<%@include file="/WEB-INF/views/user/commons/mhd.jsp"%>
		<%@include file="/WEB-INF/views/user/commons/mfj.jsp"%>
		<section id="main-content">
			<section class="wrapper">
				<div class="row">
					<div class="col-lg-12">
						<h3 class="page-header">Review</h3>

						<h1 id="h1">리뷰 리스트(전체)</h1>

						<hr id="hr">

						<table class="table table-striped table-advance table-hover">
							<thead>
								<tr>
									<th>No</th>
									<th>Write</th>
									<th>Image</th>
									<th>Review</th>
									<th>Date</th>
									<th>Management</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${reviewList}" var="reviewList">
									<tr>
										<td>${reviewList.reseq}</td>
										<td>${reviewList.reemail}</td>
										<td><img
											src="/uploadFile/reviewPhoto/${reviewList.rephoto}"
											id="reviewImg" style="width: 100px; height: 100px;"></td>
										<td><a
											href="/review/reviewInfo.do?reseq=${reviewList.reseq}">${reviewList.recontent}<br>
												<c:forEach items="${commentList}" var="commentList">
													<c:if test="${commentList.reseq == reviewList.reseq}">
														<br>---------답글------------<br>${commentList.cocontent}<br>
													</c:if>
												</c:forEach>
										</a></td>
										<td>${reviewList.redate}</td>
										<td>
											<div class="btn-group">
												<a class="btn btn-warning"
													href="/manager/review/reviewInfo.do?reseq=${reviewList.reseq}">Info</a>
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<br> <br> <br> <br>
						<h1 id="h1">답변 리스트(전체)</h1>
						<hr id="hr">
						<table class="table table-striped table-advance table-hover">
							<thead>
								<tr>
									<th>No</th>
									<th>Coment</th>
									<th>Date</th>
									<th>reseq
									<th>Management</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${answerList}" var="answerList">
									<tr>
										<td>${answerList.coseq}</td>
										<td>${answerList.cocomment}</td>
										<td>${answerList.codate}</td>
										<td>${answerList.reseq}</td>
										<td>
											<div class="btn-group">
												<a class="btn btn-warning"
													href="/manager/review/reviewInfo.do?reseq=${answerList.reseq}">Info</a>
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</section>
		</section>
	</section>
	<%@include file="/WEB-INF/views/user/commons/mjs.jsp"%>
</body>
</html>
