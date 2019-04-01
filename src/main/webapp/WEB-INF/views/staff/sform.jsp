<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../commons/hdjs.jsp"%>
<meta charset="UTF-8">
<title>라이더 등록</title>
</head>
<body>
<%@ include file="../commons/Header.jsp" %>
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
		<label for="imgfile">이미지:<br>
		<input type="file" name="imgfile" id="imgfile">
		</label>
	</div>
	<button type="submit" class="btn btn-primary">라이더 가입</button>
	</form>

	<a href="slistAll">[라이더 정보 리스트]</a>	
</body>
</html>