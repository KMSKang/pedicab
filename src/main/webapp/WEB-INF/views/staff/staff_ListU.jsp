<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<c:forEach var="staff" items="${list}">

   <img src="${pageContext.request.contextPath}/uploadfile/staffphoto/${staff.simg }" style="widht:50px; height:50px;"/>

</c:forEach>

</body>
</html>