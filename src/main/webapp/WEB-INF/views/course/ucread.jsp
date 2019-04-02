<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../commons/hdjs.jsp"%>
<style>
#coursenum{
display:none;
visibility: hidden;
}

</style>
</head>
<body>
<%@ include file="../commons/Header.jsp" %>
	<h1>${dto.cname}</h1>
	<h2>코스소개</h2>
	<div>${dto.cinfo}</div>
	<h2>출발지점</h2>
	<div>${dto.cstart}</div>
	<h2>요금</h2>
	<div>${dto.cprice }</div>
	<hr>
	<h3>예약하기</h3>
	<form action="/reserve/rregist" method="post">
		<div>
			시간선택 <select name="rtime">
				<option value="10:00">10:00~11:00</option>
				<option value="11:00">11:00~12:00</option>
				<option value="12:00">12:00~13:00</option>
				<option value="13:00">13:00~14:00</option>
				<option value="14:00">15:00~16:00</option>
				<option value="15:00">17:00~18:00</option>
			</select> 	
			환불은행 <input type="text" name="rbank"> 
			환불계좌번호 <input type="text" name="raccount">
			요청사항 <input type="text" name="rmemo">
			<input type="text" id="coursenum"name="cseq" value="${dto.cseq}">
			<input type="submit" value="예약하기">
		</div>
	</form>
</body>
</html>