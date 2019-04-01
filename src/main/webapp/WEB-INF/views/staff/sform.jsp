<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.css">
<meta charset="UTF-8">
<title>라이더 등록</title>
</head>
<body>
	<h2>라이더 등록</h2>
	<form  action="sregist" method="post" enctype="multipart/form-data" >
	<div class="form-group">
		<label for="sname">이름:<br>
		<input class="form-control" type="text" name="sname" id="sname">
		</label>
	</div>
	<div class="form-group">
		<label for="sphone">폰번호:<br>
		<input class="form-control" type="text" name="sphone" id="sphone">
		</label>
	</div>
	<div class="form-group">
		<label for="snickname">닉네임:<br>
		<input class="form-control" type="text" name="snickname" id="snickname">
		</label>
	</div>
	<div class="form-group">
		<input type="file" name="imgfile" id="imgfile">
	</div>
	<button type="submit" class="btn btn-primary">라이더 가입</button>
	</form>

	<a href="slistAll">[라이더 정보 리스트]</a>	
</body>
</html>