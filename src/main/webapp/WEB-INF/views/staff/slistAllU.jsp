<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
   href="../../resources/css/cssu/css/style.css" />
<style>
	img{
		width: 220px; height: 220px;
	}
</style>
<title>사원 소개(유저)</title>
<%@ include file="../commons/indexbg.jsp" %>
</head>
<body>
<div>
<%@ include file="../commons/Header.jsp"%>
</div>
<div class="container">
  <div class="row">
    <div class="col-md-2">
    </div>
    <div class="col-md-8">
      <c:forEach var="staff" items="${list}">
	    <img class="img-circle" src="/uploadFile/staffphoto/${staff.simg }" />
		<p>${staff.sname }</p>
      </c:forEach>
    </div>
    <div class="col-md-2">
    </div>
  </div>
</div>
<div>
<%@ include file="../commons/footer.jsp" %>
</div>
</body>
</html>