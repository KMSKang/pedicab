<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE htm>
<html>
<head>
<meta charset="UTF-8">
<title>라이더 상세 페이지</title>
<style>
	th,td{
		text-align: center;
		height: 30px;
	}
	table{
		margin-top: 20px;
	}
</style>
</head>
<body>
<%@ include file="../commons/Header.jsp" %>
<div class="container">
<h4>사원 상세보기</h4>
	<div class="row">
		<table class="table-hover table-bordered">
			<tr>
				<th class="col-md-1">이  름</th>
				<th class="col-md-1">폰번호</th>
				<th class="col-md-1">닉네임</th>
				<th class="col-md-1">이미지</th>
			</tr>
			<tr>
				<td>${staff.sname }</td>
				<td>${staff.sphone }</td>
				<td>${staff.snickname }</td>
				<td><img src="/uploadFile/staffphoto/${staff.simg }" style="widht:50px; height:50px;">
				</td>
			</tr>
		</table>
	</div>
<br>
<button class="btn-primary" onclick="location.href='smodify?sseq=${staff.sseq }'">수정</button>
<button class="btn-primary" onclick="location.href='sremove?sseq=${staff.sseq }'">삭제</button>
<button class="btn-primary" onclick="location.href='slistAll'">목록</button>

</div>
</body>
</html>