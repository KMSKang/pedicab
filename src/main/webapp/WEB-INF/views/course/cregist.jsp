<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/course/cregist" method="post" enctype="multipart/form-data">
<div>
코스명
<input type="text" name="cname" id="cname" placeholder="코스명을 등록해주세요">
</div>
<div>
코스소개
<textarea name="cinfo" id="cinfo" placeholder="내용을 입력해주세요"></textarea>
</div>
<div>
요금
<input type="text" name="cprice" id="cinfo" placeholder="출발지점을 입력해주세요">
</div>
<div>
출발지점
<input type="text" name="cstart" id="cstart" placeholder="요금정보를 입력해주세요">
</div>
<div>
이미지
<input type="file" name="imgfile" id="imgfile">
</div>
<button type="submit">등록</button>
</form>
</body>
</html>