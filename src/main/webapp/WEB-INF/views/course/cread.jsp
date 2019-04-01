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
	<form>
		<div class="form-group">
		<label for="cseq">번호</label>
			<input name="cseq" id="cseq" value="${dto.cseq}"
				placeholder="코스명을 등록해주세요" readonly="readonly" class="form-control">
		</div >
		<div class="form-group">
		<label for="cname">코스명</label>
			<input name="cname" id="cname" value="${dto.cname}"
				placeholder="코스명을 등록해주세요" readonly="readonly" class="form-control">
		</div>
		<div class="form-group">
			<label for="cinfo">코스소개</label>
			<textarea name="cinfo" id="cinfo" placeholder="내용을 입력해주세요"
				readonly="readonly" class="form-control">${dto.cinfo}</textarea>
		</div>
		<div class="form-group">
		<label for="cstart">출발지점</label>
			출발지점 <input name="cstart" id="cstart" value="${dto.cstart}"
				placeholder="출발지점을 입력해주세요" readonly="readonly" class="form-control">
		</div>
		<div class="form-group">
		<label for="cprice">요금</label>
			<input name="cprice" id="cprice" value="${dto.cprice}"
				placeholder="요금정보를 입력해주세요" readonly="readonly" class="form-control">
		</div>
		<div>
		 이미지 <img src="/uploadFile/coursePhoto/${dto.cimg}">
		</div>
	

		<button type="submit" formaction="/course/cmodify" formmethod="get"  class="btn btn-primary">수정</button>
		<button type="submit" formaction="/course/cremove" formmethod="post"  class="btn btn-primary">삭제</button>
		<button type="submit" formaction="/course/clistAll" formmethod="get"  class="btn btn-primary">목록</button>
	</form>
</body>
</html>