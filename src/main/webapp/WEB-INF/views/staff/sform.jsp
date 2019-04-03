<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../commons/hdjs.jsp"%>
<meta charset="UTF-8">
<title>라이더 등록</title>
<style>
</style>
</head>
<body>
<%@ include file="../commons/Header.jsp" %>

<div class="container">
	<h3>라이더 등록</h3>
	<form action="sregist" method="post" enctype="multipart/form-data" id="sform">
	<div class="form-group">
		<label for="sname">이름:<br>
		<input class="form-control required" type="text" name="sname" id="sname">
		</label>
	</div>
	<div class="form-group">
		<label for="sphone">폰번호:<br>
		<input class="form-control required" type="text" name="sphone" id="sphone">
		</label>
	</div>
	<div class="form-group">
		<label for="snickname">닉네임:<br>
		<input class="form-control required" type="text" name="snickname" id="snickname">
		</label>
	</div>
	<div class="form-group">
		<input type="file" name="imgfile" id="imgfile" class="required">
	</div>
	<button type="submit" class="btn-primary">라이더 가입</button>
	</form>

	<a href="slistAll">[라이더 정보 리스트]</a>
</div>
</body>
</html>