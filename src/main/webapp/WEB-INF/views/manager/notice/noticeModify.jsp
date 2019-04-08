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
		$('#notitle').val('${noticeVO.notitle}')
		$('#nocontent').val('${noticeVO.nocontent}')
		$('#noseq').val('${noticeVO.noseq}');
	});
</script>
<style>
table {
	text-align: center;
	color: black;
}

table td {
	height: 50px;
}

table th {
	text-align: center;
}

#h1 {
	color: black;
}

#hr {
	border-top: 1px solid black;
}
</style>
<!--↓ 이부분은 managerpage에 적용될 css가 담겨있는 iclude 태그입니다. 포함하셔야 됩니다. -->
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
						<h3 class="page-header">Notice</h3>
						<table class="table table-striped table-advance table-hover">
							<thead>
								<tr>
									<th>No</th>
									<th>Title</th>
									<th>Content</th>
									<th>Date</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="td">${noticeVO.noseq}</td>
									<td class="td">${noticeVO.notitle}</td>
									<td class="td">${noticeVO.nocontent}</td>
									<td class="td">${noticeVO.nodate}</td>
								</tr>
							</tbody>
						</table>

						<br> <br> <br> <br>
						<h1 id="h1">공지사항 수정</h1>
						<hr id="hr">

						<section class="panel">
							<header class="panel-heading"> Modify Notice </header>
							<div class="panel-body">
								<div class="form">
									<form action="/manager/notice/noticeModifyOK"
										class="form-validate form-horizontal" id="feedback_form"
										method="POST">
										<div class="form-group">
											<label for="cname" class="control-label col-lg-2">Title
											</label>
											<div class="col-lg-10">
												<input class="form-control" id="notitle" name="notitle"
													minlength="5" type="text" required />
											</div>
										</div>

										<div class="form-group">
											<label for="ccomment" class="control-label col-lg-2">Content</label>
											<div class="col-lg-10">
												<textarea class="form-control " id="nocontent" name="nocontent"
													required style="height: 330px;"></textarea>
											</div>
										</div>

										<input type="hidden" id="noseq" name="noseq">

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
	<!-- ↓ 이부분은 자바스크립트가 작성된 include 태그입니다. 포함 하셔야됩니다 ! -->
	<%@include file="../../commons/mjs.jsp"%>
</body>
</html>
