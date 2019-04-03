<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.css" />
<link rel="icon" type="text/css"
	href="${pageContext.request.contextPath}/resources/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/grid.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/touchTouch.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/camera.css">

<!-- 자바스크립트 (Template) -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery-migrate-1.2.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/camera.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/touchTouch.jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery.stellar.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/script.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.cookie.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/TMForm.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/modal.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/device.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/tmstickup.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.ui.totop.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.mousewheel.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.simplr.smoothscroll.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/superfish.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.mobilemenu.js"></script>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.0/jquery.validate.min.js"></script>
<!--[if (gt IE 9)|!(IE)]><!-->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery.mobile.customized.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/wow.js"></script>
<script>
	$(document).ready(function() {
		if ($('html').hasClass('desktop')) {
			new WOW().init();
		}
		$('#sform').validate({
			messages : {
				sname:"이름을 쓰세요",
				sphone:"전화번호 쓰세요",
				snickname:"별명쓰세요",
				imgfile:"파일첨부하세요"
			}
		});
	});
</script>