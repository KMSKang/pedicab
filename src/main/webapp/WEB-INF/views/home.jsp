<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<form >
<button type="submit" formaction="course/clistAll" formmethod="get">코스리스트(매니저)</button>
<button type="submit" formaction="course/uclistAll" formmethod="get">코스트리스트(유저)</button>
<button type="submit" formaction="/resrve/myreserve?useq=" formmethod="get">나의예약보기(유저)</button>
<button type="submit" formaction="reserve/rlistAll" formmethod="get">예약리스트(매니저)</button>
</form>
</body>
</html>
