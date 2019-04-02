<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../commons/hdjs.jsp"%>
</head>
<body>
<%@ include file="../commons/Header.jsp" %>
<h1>코스리스트</h1>
<div class="card-group">
<c:forEach items="${list}" var="course">
<div class="card" style= "width: 18rem;">
  <img src="/uploadFile/coursePhoto/${course.cimg}" class="card-img-top" alt="..." style="width:12rem;heigth:10rem;">
  <div class="card-body">
    <h5 class="card-title">${course.cname}</h5>
    <p class="card-text">${course.cinfo }</p>
    <a href="/course/ucread?cseq=${course.cseq}" class="btn btn-primary">더보러가기</a>
  </div>
</div>
</c:forEach>
</div>
</body>
</html>