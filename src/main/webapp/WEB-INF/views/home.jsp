<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
	<title>Home</title>
	<%@ include file="include/header.jsp" %> <!-- include/header.jsp 가져옴 -->
</head>
<body>
<form >
<%@ include file="include/memberMenu.jsp" %> <!-- include/menu.jsp 가져옴 -->

<c:if test="${sessionScope.uid != null }"> <!-- sessionScope:service에 세션영역에 저장된 변수 -->
	<h2>${sessionScope.uname}(${sessionScope.uid})님의 방문을 환영합니다. </h2>
		<!-- 사용자이름(아이디) -->
</c:if>
</form>
</body>
</html>
