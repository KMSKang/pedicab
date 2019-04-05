<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../commons/option.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <%@ include file="../commons/loginMenu.jsp"%> --%>
	<h2>회원 목록</h2>
	<%-- <input type="button" value="회원등록" onclick="location.href='${path}/member/write.do'"> --%>
				<input type="button" value="회원 정보수정" onclick="location.href='${path}/member/update.do'">
	<table border="1" width="1000px">
		<tr>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
			<td>이미지</td>
			<td>생년월일</td>
			<td>성별</td>
			<td>휴대폰 번호</td>
			<td>가입일자</td>
		</tr>
		<c:forEach var="row" items="${list}">
			<!-- 컨트롤러에서 넘어온 변수 -->
			<tr>
				<td>${row.uid}</td>
				<td>${row.upwd}</td>
				<td><a href="${path}/member/view.do?uid=${row.uid}">${row.uname}</a></td>
				<td>${row.uimg}</td>
				<td>${row.uymd}</td>
				<td>${row.ugender}</td>
				<td>${row.uphone}</td>
				<%-- <td><a href="${path}/member/view.do?userid=${row.userid}">${row.name}</a></td> --%>
			
				<td><fmt:formatDate value="${row.udate}"
						pattern="yyyy-MM-dd HH:mm:ss" /></td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>