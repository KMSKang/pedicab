<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<%@ include file="../commons/Header.jsp" %>
<form>
<table>
			<tr>
				<td width="77">
					<p align="center">예약리스트</p>
				</td>
			</tr>
			<c:forEach items="${list}" var="reserve">
				<tr>
					<td><a href='/reserve/Reserve_viewM?rseq=${reserve.rseq }'>${reserve.rmemo}</a></td>
				</tr>
			</c:forEach>
		</table>
</form>
</body>
</html>