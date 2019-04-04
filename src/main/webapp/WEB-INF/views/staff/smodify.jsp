<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE htm>
<html>
<head>
<meta charset="UTF-8">
<title>사원정보 수정 페이지</title>
<%@ include file="../commons/hdjs.jsp"%>
<style>
	.center{
		margin-top: 30px;
	}
	div{
		margin-top: 15px;
	}
</style>
</head>
<body>
<%@ include file="../commons/Header.jsp" %>

<div class="container">
<div class="col-md-4">
</div>
<div class="col-md-4 center">
<form:form class="form-inline" method="post" action="smodify" modelAttribute="staff" enctype="multipart/form-data"> 
<h4>사원정보 수정</h4>
	<div class="form-group">
		<form:hidden path="sseq" />
		<p>${staff.sname } 님</p>
		<p></p>
	</div>
	<div>
		<p>전화번호</p>
		<form:input class="form-control" path="sphone"/>
	</div>
	<div class="form-group">
		<p>닉네임</p>
		<form:input class="form-control" path="snickname"/>
	</div>
	<div>
		<p>사진</p>
		 <input type="file" name="imgfile" id="imgfile" >
	</div>
	<div>
	<input class="btn-primary" type="submit" value="변경사항 적용">
	<button class="btn-primary" onclick="location.href='sread'">취소</button>
	</div>
</form:form>
</div>
<div class="col-md-4">
</div>
</div>
</body>
</html>