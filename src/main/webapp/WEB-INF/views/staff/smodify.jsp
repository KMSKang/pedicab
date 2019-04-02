<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE htm>
<html>
<head>
<meta charset="UTF-8">
<title>라이더 수정 페이지</title>
<%@ include file="../commons/hdjs.jsp"%>
</head>
<body>
<%@ include file="../commons/Header.jsp" %>
<h2>라이더 수정 페이지</h2>
 <form:form method="post" action="smodify" modelAttribute="staff" enctype="multipart/form-data"> 
<form:hidden path="sseq" />
이름 ${staff.sname } <br>
번호<form:input path="sphone"/> <br>
닉네임 <form:input path="snickname"/><br>
사진 <input type="file" name="imgfile" id="imgfile" >
<p>
<input type="submit" value="[변경사항 적용]">
</form:form> 
</body>
</html>