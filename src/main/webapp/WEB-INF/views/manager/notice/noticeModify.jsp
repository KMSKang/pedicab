<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<title>Manger</title>
<style>
#td {
	width: 300px;
	word-break: break-all;
	wrap: hard;
}
</style>
<!--↓ 이부분은 managerpage에 적용될 css가 담겨있는 iclude 태그입니다. 포함하셔야 됩니다. -->
<%@include file="../../commons/mh.jsp"%>
</head>
<body>
	<!--↓아래에 있는 section id="container"는 꼭 만드서야 합니다 !  -->
	<section id="container" class="">
		<!--↓밑에 두개 include 파일은 복사 하셔서 만드시는 뷰단 페이지에다가 붙여넣기 하세요 꼭 이위치에 복사 하셔야 됩니다! -->
		<%@include file="../../commons/mhd.jsp"%>
		<%@include file="../../commons/mfj.jsp"%>
		<!-- ↓id="main-content" section은 작성하시는 코드가 들어가는 부분입니다. 만드셔야지 되요!  -->
		<section id="main-content">
			<!--      ↓여기있는 wrapper는 감싸주는거 같아요 저도 잘 모르겠어요 일단 만드셔야 됩니다. -->
			<section class="wrapper">
				<!-- ↓ 하나의 코드를 작성 하실떄 div class="row"는  하나의 행을 의미합니다.  -->
				<div class="row">
					<div class="col-lg-12">
						<h3 class="page-header">Notice</h3>
						<form:form action="/manager/notice/noticeModifyOK"
							modelAttribute="noticeVO" method="POST" id="form">

							<table class="table table-striped table-advance table-hover">
								<thead>
									<tr>
										<th>No</th>
										<th>title</th>
										<th>content</th>
										<th>Date</th>
									</tr>
								</thead>
								<tbody>
									<form:hidden path="noseq" />
									<tr>
										<td>${noticeVO.noseq}</td>
										<td id="td"><form:input path="notitle" /></td>
										<td id="td"><form:input path="nocontent" /></td>
										<td>${noticeVO.nodate}</td>
									</tr>
								</tbody>
							</table>
							<button type="submit" class="btn btn-default" id="Erollment">등록</button>
						</form:form>
					</div>
				</div>
			</section>
		</section>
	</section>
	<!-- ↓ 이부분은 자바스크립트가 작성된 include 태그입니다. 포함 하셔야됩니다 ! -->
	<%@include file="../../commons/mjs.jsp"%>
</body>
</html>
