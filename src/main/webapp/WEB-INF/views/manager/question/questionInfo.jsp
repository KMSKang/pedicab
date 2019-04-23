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
									<th>Management</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>${questionInfo.quseq}</td>
									<td><a
										href="/question/questionInfo.do?quseq=${questionInfo.quseq}"
										id="td_title">${questionInfo.qutitle}</a></td>
									<td>${questionInfo.qucontent}</td>
									<td>${questionInfo.quemail}</td>
									<td>${questionInfo.qudate}</td>
									<td>
										<div class="btn-group">
											<a class="btn btn-primary"
												href="/manager/question/answerWrite.do?quseq=${questionInfo.quseq}">answer</a>
											<a class="btn btn-danger"
												href="/question/questionDeleteManager.do?quseq=${questionInfo.quseq}">remove</a>
										</div>
									</td>
								</tr>
							</tbody>
						</table>

						<br> <br> <br> <br>
						<h1 id="h1">답변 리스트</h1>
						<hr id="hr">

						<table class="table table-striped table-advance table-hover">
							<thead>
								<tr>
									<th>No</th>
									<th>Content</th>
									<th>Writer</th>
									<th>Date</th>
									<th>Management</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${answerList}" var="answerList">
									<c:if test="${answerList.quseq == questionInfo.quseq}">
										<tr>
											<td>${answerList.naseq}</td>
											<td>${answerList.nacontent}</td>
											<td>${answerList.naname}</td>
											<td>${answerList.nadate}</td>
											<td>
												<div class="btn-group">
													<a class="btn btn-success"
														href="/manager/question/answerModify.do?naseq=${answerList.naseq}&quseq=${questionInfo.quseq}">modify</a>
													<a class="btn btn-danger"
														href="/manager/question/answerDeleteOK?naseq=${answerList.naseq}&quseq=${questionInfo.quseq}">remove</a>
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
	<%@include file="/WEB-INF/views/user/commons/mjs.jsp"%>
</body>
</html>
