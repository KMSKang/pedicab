<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
   href="../../resources/css/bootstrap.css" />
<style>
	img{
		width: 220px; height: 220px;
	}
</style>
<title>사원 소개(유저)</title>
</head>
<body>
<%@ include file="../commons/Header.jsp" %>
<h4 class="text-center">사원 소개</h4>
<div class="container">
<c:forEach var="staff" items="${list}">
	<div class="col-md-3 col-sm-4 col-xs-6">
	<img class="img-circle" src="/uploadFile/staffphoto/${staff.simg }" />
	<h4 class="text-center">${staff.sname }</h4>
	</div>
</c:forEach>
</div>
</body>
</html>