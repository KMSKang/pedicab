<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../commons/hdjs.jsp"%>
</head>
<body>
<%@ include file="../commons/Header.jsp" %>
<form action="/course/cmodify" method="post">
        <div class="form-group">
			<label for="seq">번호</label>
			<input name="cseq" id="seq" value="${dto.cseq}"
				placeholder="코스명을 등록해주세요" readonly="readonly" class="form-control">
		</div>
		<div class="form-group">
			코스명 <input name="cname" id="title" value="${dto.cname}"
				placeholder="코스명을 등록해주세요" class="form-control">
		</div>
		<div class="form-group">
			코스소개
			<textarea name="cinfo" id="content" placeholder="내용을 입력해주세요" class="form-control">${dto.cinfo}</textarea>
		</div>
		<div class="form-group">
			출발지점 <input name="cstart" id="start" value="${dto.cstart}"
				placeholder="출발지점을 입력해주세요" class="form-control">
		</div>
		<div class="form-group">
			요금 <input name="cprice" id="charge" value="${dto.cprice}"
				placeholder="요금정보를 입력해주세요" class="form-control">
		</div>
	

		<button type="submit" class="btn">완료</button>
	</form>
</body>
</html>