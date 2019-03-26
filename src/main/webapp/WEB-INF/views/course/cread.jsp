<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
		<div>
			번호<input name="cseq" id="cseq" value="${dto.cseq}"
				placeholder="코스명을 등록해주세요" readonly="readonly">
		</div>
		<div>
			코스명 <input name="cname" id="cname" value="${dto.cname}"
				placeholder="코스명을 등록해주세요" readonly="readonly">
		</div>
		<div>
			코스소개
			<textarea name="cinfo" id="cinfo" placeholder="내용을 입력해주세요"
				readonly="readonly">${dto.cinfo}</textarea>
		</div>
		<div>
			출발지점 <input name="cstart" id="cstart" value="${dto.cstart}"
				placeholder="출발지점을 입력해주세요" readonly="readonly">
		</div>
		<div>
			요금 <input name="cprice" id="cprice" value="${dto.cprice}"
				placeholder="요금정보를 입력해주세요" readonly="readonly">
		</div>
	

		<button type="submit" formaction="/course/cmodify" formmethod="get">수정</button>
		<button type="submit" formaction="/course/cremove" formmethod="post">삭제</button>
		<button type="submit" formaction="/course/clistAll" formmethod="get">목록</button>
	</form>
</body>
</html>