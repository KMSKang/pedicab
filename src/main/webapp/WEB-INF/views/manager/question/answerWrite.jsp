<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="UTF-8">
<head>
<title>Manger</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$('#quseq').val('${questionInfo.quseq}');
	});
</script>
<style>
#td_title {
	color: black;
}

table {
	text-align: center;
	color: black;
}

table th {
	text-align: center;
}

table tbody #td {
	line-height: 2.428571;
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
						<h3 class="page-header">Q & A</h3>

						<h1 id="h1">문의 리스트</h1>

						<hr id="hr">

						<table class="table table-striped table-advance table-hover">
							<thead>
								<tr>
									<th>No</th>
									<th>Title</th>
									<th>Content</th>
									<th>Write</th>
									<th>Date</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td id="td">${questionInfo.quseq}</td>
									<td id="td"><a
										href="/question/questionInfo.do?quseq=${questionInfo.quseq}"
										id="td_title">${questionInfo.qutitle}</a></td>
									<td id="td">${questionInfo.qucontent}</td>
									<td id="td">${questionInfo.quemail}</td>
									<td id="td">${questionInfo.qudate}</td>

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
									<form action="/manager/question/answerWriteOK"
										class="form-validate form-horizontal" id="feedback_form"
										method="POST">
										<div class="form-group">
											<label for="cname" class="control-label col-lg-2">writer
											</label>
											<div class="col-lg-10">
												<input class="form-control" id="cname" name="naname"
													minlength="5" type="text" placeholder="작성자를 작성해주세요" required />
											</div>
										</div>

										<div class="form-group">
											<label for="ccomment" class="control-label col-lg-2">Content</label>
											<div class="col-lg-10">
												<textarea class="form-control " id="ccomment"
													name="nacontent" required style="height: 250px;" placeholder="답변을 작성해주세요"></textarea>
											</div>
										</div>

										<input type="hidden" id="quseq" name="quseq">

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
