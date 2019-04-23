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

						<h1 id="h1">문의 리스트(전체)</h1>

						<hr id="hr">

						<table class="table table-striped table-advance table-hover">
							<thead>
								<tr>
									<th>No</th>
									<th>Title</th>
									<th>Content</th>
									<th>Writer</th>
									<th>Date</th>
									<th>Management</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${questionList}" var="questionList">
									<tr>
										<td>${questionList.quseq}</td>
										<td><a
											href="/question/questionInfo.do?quseq=${questionList.quseq}"
											id="td_title">${questionList.qutitle}</a></td>
										<td>${questionList.qucontent}</td>
										<td>${questionList.quemail}</td>
										<td>${questionList.qudate}</td>
										<td>
											<div class="btn-group">
												<a class="btn btn-warning"
													href="/manager/question/questionInfo.do?quseq=${questionList.quseq}">Info</a>
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
									<th>Content</th>
									<th>Name</th>
									<th>Date</th>
									<th>Management</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${answerList}" var="answerList">
									<tr>
										<td>${answerList.naseq}</td>
										<td><a
											href="/question/questionInfo.do?quseq=${answerList.naseq}"
											id="td_title">${answerList.nacontent}</a></td>
										<td>${answerList.naname}</td>
										<td>${answerList.nadate}</td>
										<td>
											<div class="btn-group">
												<a class="btn btn-warning"
													href="/manager/question/questionInfo.do?quseq=${answerList.quseq}">Info</a>
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
