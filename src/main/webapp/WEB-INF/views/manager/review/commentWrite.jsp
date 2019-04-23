<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="UTF-8">
<head>
<title>Manger</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$('#reseq').val('${reviewInfo.reseq}');
	});
</script>
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

						<h1 id="h1">리뷰 리스트</h1>

						<hr id="hr">

						<table class="table table-striped table-advance table-hover">
							<thead>
								<tr>
									<th>No</th>
									<th>Write</th>
									<th>Image</th>
									<th>Review</th>
									<th>Date</th>
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
								</tr>
							</tbody>
						</table>
						<br> <br> <br> <br>
						<h1 id="h1">답변 작성</h1>
						<hr id="hr">
						<section class="panel">
							<header class="panel-heading"> Answer Write </header>
							<div class="panel-body">
								<div class="form">
									<form action="/manager/review/commentWriteOK"
										class="form-validate form-horizontal" id="feedback_form"
										method="POST">

										<div class="form-group">
											<label for="ccomment" class="control-label col-lg-2">Content</label>
											<div class="col-lg-10">
												<textarea class="form-control " id="ccomment"
													name="cocomment" required style="height: 250px;" placeholder="답변을 작성해주세요"></textarea>
											</div>
										</div>

										<input type="hidden" id="reseq" name="reseq">

										<div class="form-group">
											<div class="col-lg-offset-2 col-lg-10">
												<button class="btn btn-primary" type="submit">Enrollment</button>
												<button class="btn btn-default" type="button">Cancel</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</section>

					</div>
				</div>
			</section>
		</section>
	</section>
	<%@include file="/WEB-INF/views/user/commons/mjs.jsp"%>
</body>
</html>
