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
	var link = document.location.href.split("&quseq=");
	console.log(link);

	$(document).ready(function() {
		$('#test').val('${answerVO.naseq}');
	});

	$(document).ready(function() {
		$('#test2').val(link[1]);
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

table tbody #td {
	line-height: 2.428571;
}

#h1 {
	color: black;
}

#hr {
	border-top: 1px solid black;
}

#test {
	visibility: hidden;
	position: absolute;
}

#test2 {
	visibility: hidden;
	position: absolute;
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

						<h1 id="h1">답변 리스트</h1>

						<hr id="hr">

						<table class="table table-striped table-advance table-hover">
							<thead>
								<tr>
									<th>No</th>
									<th>Content</th>
									<th>Writer</th>
									<th>Date</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td id="td">${answerVO.naseq}</td>
									<td id="td">${answerVO.nacontent}</td>
									<td id="td">${answerVO.naname}</td>
									<td id="td">${answerVO.nadate}</td>

								</tr>
							</tbody>
						</table>

						<br> <br> <br> <br>
						<h1 id="h1">답변 수정</h1>

						<hr id="hr">
						<section class="panel">
							<header class="panel-heading"> write </header>
							<div class="panel-body">
								<div class="form">
									<form action="/manager/question/answerModifyOK"
										class="form-validate form-horizontal" id="feedback_form"
										method="POST">

										<div class="form-group">
											<label for="ccomment" class="control-label col-lg-2">Content</label>
											<div class="col-lg-10">
												<textarea class="form-control " id="ccomment"
													name="nacontent" required style="height: 250px;"></textarea>
											</div>
										</div>

										<input type="text" id="test" name="naseq"> <input
											type="text" id="test2" name="quseq">

										<div class="form-group">
											<div class="col-lg-offset-2 col-lg-10">
												<button class="btn btn-primary" type="submit">Modify</button>
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
