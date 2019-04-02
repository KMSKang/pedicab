<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }"/> 
<!-- contextPath:사이트 식별자(하나의 서버에 여러개의 사이트가 돌아갈 떄 필요) -->
<!-- 자바코드: String path=request.getContextPath(); -->


<div style="text-align: right;">

	<a href="/">홈</a> |
	<c:choose>
		<c:when test="${sessionScope.uid == null}">
			<a href="${path}/member/loginForm.do">로그인</a> |
			<a href="${path}/admin/login.do">관리자 로그인</a>
		</c:when>
	<c:otherwise>
			${sessionScope.uname}님이 로그인중입니다. |
			<a href="${path}/member/logOut.do">로그아웃</a>
	</c:otherwise>
	</c:choose>
</div>
<hr>

<button type="submit" formaction="${path}/course/clistAll" formmethod="get">코스리스트(매니저)</button>
<button type="submit" formaction="${path}/course/uclistAll" formmethod="get">코스트리스트(유저)</button>
<button type="submit" formaction="${path}/resrve/myreserve?useq=" formmethod="get">나의예약보기(유저)</button>
<button type="submit" formaction="${path}/reserve/rlistAll" formmethod="get">예약리스트(매니저)</button>