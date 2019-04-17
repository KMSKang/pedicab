<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<td>Name</td>
		<td>Price</td>
		<td>Action</td>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${list}" var="Course">
		<tr>
		<td>${Course.cname }</td>
		<td>${Course.cprice }</td>
		<td><div class="btn-group">
		<a class="btn btn-primary" href="/manager/course/courseread?cseq=${Course.cseq}">read</a>
		<a class="btn btn-success" href='/manager/course/coursemodify?cseq=${Course.cseq}'>modify</a>
		<a class="btn btn-danger" href="/manager/course/courseremove?cseq=${Course.cseq}">remove</a>
		</div></td>
		</tr>
		</c:forEach>
		</tbody>
		</table>
		<a class="btn btn-default" href="/manager/course/coursewrite">write</a>
		<a class="btn btn-default" href="/manager/course/markerwrite">marker write</a>
		</div>
		<div class="col-lg-12">
		</div>
		</section>
		</section>
	</section>
	<%@include file="../../commons/mjs.jsp"%>
</body>
</html>