<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="UTF-8">
<head>
<title>Manger</title>
<style>
table {
	text-align: center;
	color: black;
}
table th {
	text-align: center;
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
						<h3 class="page-header">Notice</h3>
						<table class="table table-striped table-advance table-hover">
							<thead>
								<tr>
									<th>No</th>
									<th>title</th>
									<th>content</th>
									<th>Date</th>
									<th>management</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${List}" var="List">
									<tr>
										<td>${List.noseq}</td>
										<td>${List.notitle}</td>
										<td>${List.nocontent}</td>
										<td>${List.nodate}</td>
										<td>
											<div class="btn-group">

												<a class="btn btn-success"
													href="noticeModify.do?noseq=${List.noseq}">modify</a> <a
													class="btn btn-danger"
													href="noticeDelete.do?noseq=${List.noseq}">remove</a>
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<a class="btn btn-default" href="noticeWrite.do">write</a>
					</div>
				</div>
			</section>
		</section>
	</section>
	<%@include file="/WEB-INF/views/user/commons/mjs.jsp"%>
</body>
</html>
