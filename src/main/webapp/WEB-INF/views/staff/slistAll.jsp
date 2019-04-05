<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>라이더 리스트</title>
<link rel="stylesheet" type="text/css"
   href="../../resources/css/cssu/css/style.css" />
<style>
	th,td{
		text-align: center;
		height:30px;
	}
	table{
		margin-top: 20px;
	}

</style>

</head>
<body>
<%@ include file="../commons/Header.jsp" %>
<h4>사원 목록</h4>
<div class="container">
	<div class="rows">
			<table class="table-hover table-bordered">
				
				<tr>
					<th class="col-md-1">번  호</th>
					<th class="col-md-1">이  름</th>
					<th class="col-md-1">폰번호</th>
					<th class="col-md-1">닉네임</th>
					<th class="col-md-1">이미지</th>
				</tr>
			<c:forEach var="staff" items="${list}">
				<tr class="active">
			    <td><a href="sread?sseq=${staff.sseq}">${staff.sseq}</a></td>
			    <td>${staff.sname }</td>
			    <td>${staff.sphone }</td>
			    <td>${staff.snickname }</td>
			    <td><img src="/uploadFile/staffphoto/${staff.simg }" style="widht:50px; height:50px;"/></td>
			    </tr>
			</c:forEach>
			</table>
	</div>
	<br>
	<p>
	<button class="btn-primary" onclick="location.href='sform'">사원 추가</button>
	</p>
</div>
</body>
</html>