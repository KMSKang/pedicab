<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!-- contextPath:사이트 식별자(하나의 서버에 여러개의 사이트가 돌아갈 떄 필요) -->
<!-- 자바코드: String path=request.getContextPath(); -->


<div style="text-align: right;">

	<c:choose>
		<c:when test="${sessionScope.uid == null && sessionScope.admin_uid == null}">
			<a href="${path}/member/loginForm.do" style="color:white">로그인</a> |
			<a href="${path}/admin/login.do" style="color:white">관리자 로그인</a>
		</c:when>
		
		<c:when test="${sessionScope.admin_uid != null}">
				<span style="color:white">${sessionScope.admin_uname}님이 로그인중입니다. |</span>
				<a href="${path}/member/list.do" style="color:white">회원목록  |</a>
				<a href="${path}/admin/logOut.do" style="color:white">로그아웃 </a>
		</c:when>
		<c:otherwise>
				<span style="color:white"> ${sessionScope.uname}님이 로그인중입니다. | </span>
				<a href="${path}/member/logOut.do" style="color:white">로그아웃</a>
		</c:otherwise>
	</c:choose>
</div>
