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
<%@include file="../../commons/mh.jsp"%>
</head>
<body>
	<section id="container" class="">
		<%@include file="../../commons/mhd.jsp"%>
		<%@include file="../../commons/mfj.jsp"%>
		<section id="main-content">
			<section class="wrapper">
				<div class="row">
					<div class="col-lg-12">
						<h3 class="page-header">Review</h3>

						<h1 id="h1">답글 리스트</h1>

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

								<tr>
									<td>${reviewInfo.reseq}</td>
									<td>${reviewInfo.reemail}</td>
									<td><img
										src="/uploadFile/reviewPhoto/${reviewInfo.rephoto}"
										id="reviewImg" style="width: 100px; height: 100px;"></td>
									<td>${reviewInfo.recontent}</td>
									<td>${reviewInfo.redate}</td>
									<td>
										<div class="btn-group">
											<a class="btn btn-primary"
												href="/manager/review/commentWrite.do?reseq=${reviewInfo.reseq}">answer</a>
											<a class="btn btn-danger"
												href="/manager/review/commentReviewDelete.do?reseq=${reviewInfo.reseq}">remove</a>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<br> <br> <br>

						<h1 id="h1">답변 수정</h1>

						<hr id="hr">
						<table class="table table-striped table-advance table-hover">
							<thead>
								<tr>
									<th>No</th>
									<th>Content</th>
									<th>Date</th>
									<th>Management</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${answerList}" var="answerList">
									<c:if test="${reviewInfo.reseq == answerList.reseq}">
										<tr>
											<td>${answerList.coseq}</td>
											<td>${answerList.cocomment}</td>
											<td>${answerList.codate}</td>
											<td>
												<div class="btn-group">
													<a class="btn btn-success"
														href="/manager/review/commentModify.do?coseq=${answerList.coseq}&reseq=${reviewInfo.reseq}">modify</a>
													<a class="btn btn-danger"
														href="/manager/review/commentDelete?coseq=${answerList.coseq}&reseq=${reviewInfo.reseq}">remove</a>
												</div>
											</td>
										</tr>
									</c:if>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</section>
		</section>
	</section>
	<%@include file="../../commons/mjs.jsp"%>
</body>
</html>
