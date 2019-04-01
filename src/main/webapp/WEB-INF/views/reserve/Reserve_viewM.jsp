<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#reservenum{
display:none;  
visibility: hidden;
}
</style>
</head>
<body>
<form>
<input name="rseq" id="reservenum" value="${reserve.rseq}">

<div>시간 : ${reserve.rtime }</div>
<div>은행 : ${reserve.rbank}</div>
<div>계좌 : ${reserve.raccount}</div>
<div>승인 : ${reserve.rok}</div>
<div>예약일자 : ${dto.rdate}</div>
<button type="submit" formaction="/reserve/rmodify" formmethod="get">수정</button>
<button type="submit" formaction="/reserve/Reserve_remove" formmethod="post">예약취소</button>
<button type="submit" formaction="/reserve/Reserve_listM" formmethod="get">리스트</button>
</form>
</body>
</html>