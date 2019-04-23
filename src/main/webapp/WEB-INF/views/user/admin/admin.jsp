<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- <%@ include file="../include/header.jsp"%> --%>


</head>
<body>
<%-- <%@ include file="../include/adminMenu.jsp"%> --%>
<c:if test="${message =='success'}">
	<h2>
	${sessionScope.admin_uname}(${sessionScope.admin_uid})님 환영합니다.
	</h2>

</c:if>
</body>
</html>