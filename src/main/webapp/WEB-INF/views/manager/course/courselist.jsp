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
		<tbody>
		<tr>
		<td>Name</td>
		<td>Price</td>
		<td>Start</td>
		<td>Action</td>
		</tr>
		<tr>
		<td></td>
		<td></td>
		<td></td>
		<td><div class="btn-group">
		<a class="btn btn-primary" href="#">read</a>
		<a class="btn btn-success" href="#">modify</a>
		<a class="btn btn-danger" href="#">remove</a>
		</div></td>
		</tr>
		</tbody>
		</table>
		<a class="btn btn-default" href="/manager/course/coursewrite">write</a>
		</div>
		<div class="col-lg-12">
		</div>
		</section>
		</section>
	</section>
	<%@include file="../../commons/mjs.jsp"%>
</body>
</html>