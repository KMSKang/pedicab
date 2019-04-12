<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../../commons/mh.jsp"%>
</head>
<body>
	<section id="container" class="">
		<%@include file="../../commons/mhd.jsp"%>
		<%@include file="../../commons/mfj.jsp"%>
		<section id="main-content">
			<section class="wrapper">
				<div class="row">
					<h3 class="page-header">Course</h3>
					<table class="table table-striped table-advance table-hover">
						<thead>
							<tr>
								<td>요구사항</td>
								<td>시간</td>
								<td>Action</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list}" var="Reserve">
								<tr>
									<td>${Reserve.rmemo}</td>
									<td>${Reserve.rtime }</td>
									<td><div class="btn-group">
											<a class="btn btn-primary"
												href="/manager/course/reserve/reserveview">read</a>
											<a class="btn btn-danger"
												href="/manager/reserve/reserveremove?rseq=${Reserve.rseq}" method="post">remove</a>
										</div></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<a class="btn btn-default" href="/manager/course/coursewrite">write</a>
				</div>
				<div class="col-lg-12"></div>
			</section>
		</section>
	</section>
	<%@include file="../../commons/mjs.jsp"%>
</body>
</html>