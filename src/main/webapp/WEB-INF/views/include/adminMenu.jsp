<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 태그라이브러리 선언 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <!-- 코어태그 -->
<a href="${path}/member/list.do">회원 목록</a> |


<div style="text-align: right;">
	<a href="/">홈</a> |
	<c:choose>
		<c:when test="${sessionScope.admin_uid == null}">
			<a href="${path}/admin/login.do">관리자 로그인</a>
		</c:when>
	<c:otherwise>
		${sessionScope.admin_uname}님이 로그인중입니다.
		<a href="${path}/admin/logOut.do">로그아웃</a>
	</c:otherwise>
	</c:choose>
</div>
<hr>
