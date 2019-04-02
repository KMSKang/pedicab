<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../commons/hdjs.jsp"%>
<meta charset="UTF-8">
<title>라이더 소개(유저)</title>
</head>
<body>
<%@ include file="../commons/Header.jsp" %>
<h1>라이더 소개</h1>

<c:forEach var="staff" items="${list}">

   <img src="${pageContext.request.contextPath}/uploadfile/staffphoto/${staff.simg }" style="widht:50px; height:50px;"/>

</c:forEach>

</body>
</html>