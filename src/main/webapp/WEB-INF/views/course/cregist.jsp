<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.css"/>
</head>
<body>
<form action="/course/cregist" method="post" enctype="multipart/form-data">
<div class="form-group">
<label for="cname">코스명</label>
<input type="text" name="cname" id="cname"  class="form-control" placeholder="코스명을 등록해주세요">
</div >
<div class="form-group">
<label for="cinfo">코스소개</label>
<textarea name="cinfo" id="cinfo" placeholder="내용을 입력해주세요"  class="form-control"></textarea>
</div>
<div class="form-group">
<label for="cprice">가격</label>
<input type="text" name="cprice" id="cprice"   class="form-control"  placeholder="출발지점을 입력해주세요">
</div>
<div class="form-group">
<label for="cstart">출발점</label>
<input type="text" name="cstart" id="cstart"   class="form-control" placeholder="요금정보를 입력해주세요">
</div>
<div class="form-group">
<label for="imgfile">이미지</label>
<input type="file" name="imgfile" id="imgfile"  class="form-control-file">
</div>
<button type="submit" class="btn btn-primary">등록</button>
</form>
</body>
</html>