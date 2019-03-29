<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.img{
width:250px;
heigth:100px;
}
</style>
</head>
<body>
<h1>코스리스트</h1>
<c:forEach items="${list}" var="course">

<a href="/course/ucread?cseq=${course.cseq}"><img src="/uploadFile/coursePhoto/${course.cimg}" class="img"></a>

</c:forEach>
</body>
</html>